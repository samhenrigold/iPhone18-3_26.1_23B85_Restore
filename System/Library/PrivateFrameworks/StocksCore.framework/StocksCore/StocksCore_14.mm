uint64_t sub_1DAB9FC64()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAB9FCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1DAAFF1F4;

  return sub_1DAB9F1A8(a2, a3);
}

unint64_t sub_1DAB9FD7C()
{
  result = qword_1EE11E5C8;
  if (!qword_1EE11E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5C8);
  }

  return result;
}

unint64_t sub_1DAB9FDD4()
{
  result = qword_1EE11E5C0;
  if (!qword_1EE11E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5C0);
  }

  return result;
}

unint64_t sub_1DAB9FE30()
{
  result = qword_1EE11E5D0;
  if (!qword_1EE11E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5D0);
  }

  return result;
}

unint64_t sub_1DAB9FE88()
{
  result = qword_1ECBE82D8;
  if (!qword_1ECBE82D8)
  {
    sub_1DAA488A4(255, &qword_1ECBE82E0, &type metadata for WatchlistWidgetEntity);
    sub_1DAB97104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE82D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore16SDSQuoteResponseV0cD9ChartItemV14TimeZoneOffsetVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DAB9FF78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1DAB9FFC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore16SDSQuoteResponseV0cD9ChartItemVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10StocksCore16SDSQuoteResponseV18SDSFundCompositionVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10StocksCore16SDSQuoteResponseV0cD9QuoteItemVSg(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DABA0080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 776))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 728);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DABA00C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 760) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 776) = 1;
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
      *(result + 728) = (a2 - 1);
      return result;
    }

    *(result + 776) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DABA01F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646174654D736473;
  }

  else
  {
    v3 = 0x7365746F7571;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000617461;
  }

  if (*a2)
  {
    v5 = 0x646174654D736473;
  }

  else
  {
    v5 = 0x7365746F7571;
  }

  if (*a2)
  {
    v6 = 0xEB00000000617461;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DABA029C()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA0324(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DABA0398(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DABA0428(uint64_t *a1@<X8>)
{
  v2 = 0x7365746F7571;
  if (*v1)
  {
    v2 = 0x646174654D736473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000617461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DABA046C()
{
  if (*v0)
  {
    return 0x646174654D736473;
  }

  else
  {
    return 0x7365746F7571;
  }
}

uint64_t sub_1DABA04B8(uint64_t a1)
{
  v2 = sub_1DABA6A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA04F4(uint64_t a1)
{
  v2 = sub_1DABA6A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA0530(void *a1)
{
  v3 = v1;
  sub_1DABAC418(0, &qword_1ECBE8358, sub_1DABA6A70, &type metadata for SDSQuoteResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA6A70();
  sub_1DACBA304();
  *&v12[0] = *v3;
  v14 = 0;
  sub_1DABABE00(0, &qword_1EE11FB38, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem, MEMORY[0x1E69E62F8]);
  sub_1DABA86B4();
  sub_1DACBA0E4();
  if (!v2)
  {
    v10 = *(v3 + 24);
    v12[0] = *(v3 + 8);
    v12[1] = v10;
    v13 = *(v3 + 40);
    v14 = 1;
    sub_1DAA6EF04();
    sub_1DACBA074();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DABA073C()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA081C(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DABA08E8(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DABA09C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABA6BB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DABA09F4(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = 0x676E615265746164;
  v4 = 0xEE00656E6F5A656DLL;
  v5 = 0x695474656B72616DLL;
  if (*v1 != 2)
  {
    v5 = 0x73756F6976657270;
    v4 = 0xED000065736F6C43;
  }

  if (*v1)
  {
    v3 = 0x73656972746E65;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DABA0A90()
{
  v1 = 0x676E615265746164;
  v2 = 0x695474656B72616DLL;
  if (*v0 != 2)
  {
    v2 = 0x73756F6976657270;
  }

  if (*v0)
  {
    v1 = 0x73656972746E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DABA0B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABA6BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABA0B50(uint64_t a1)
{
  v2 = sub_1DABA6F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA0B8C(uint64_t a1)
{
  v2 = sub_1DABA6F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA0BC8(void *a1)
{
  v3 = v1;
  sub_1DABAC418(0, &qword_1ECBE82E8, sub_1DABA6F74, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA6F74();
  sub_1DACBA304();
  v11[0] = *v3;
  v12 = 0;
  sub_1DABA7160();
  sub_1DACBA0E4();
  if (!v2)
  {
    *&v11[0] = *(v3 + 16);
    v12 = 1;
    sub_1DABABE00(0, &qword_1EE11D188, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem, MEMORY[0x1E69E62F8]);
    sub_1DABA71B4();
    sub_1DACBA0E4();
    v11[0] = *(v3 + 24);
    *(v11 + 9) = *(v3 + 33);
    v12 = 2;
    sub_1DABABE00(0, &qword_1ECBE8308, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.TimeZoneOffset, MEMORY[0x1E69E6720]);
    sub_1DABA72A4();
    sub_1DACBA0E4();
    LOBYTE(v11[0]) = 3;
    sub_1DACBA044();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DABA0E5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74657366666FLL;
  }

  else
  {
    v3 = 1701080931;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x74657366666FLL;
  }

  else
  {
    v5 = 1701080931;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DABA0EF8()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA0F70(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DABA0FD4(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DABA1054(uint64_t *a1@<X8>)
{
  v2 = 1701080931;
  if (*v1)
  {
    v2 = 0x74657366666FLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DABA1088()
{
  if (*v0)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_1DABA10C4(uint64_t a1)
{
  v2 = sub_1DABA9064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA1100(uint64_t a1)
{
  v2 = sub_1DABA9064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA113C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v17[0] = a4;
  v20 = a5;
  sub_1DABAC418(0, &qword_1ECBE83A0, sub_1DABA9064, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.TimeZoneOffset.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA9064();
  sub_1DACBA304();
  v18 = a2;
  v19 = a3;
  v21 = 0;
  v13 = MEMORY[0x1E69E6158];
  sub_1DABABE00(0, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1DABA90B8(&qword_1ECBE8330, &qword_1EE123FD0, v13);
  v14 = v17[1];
  sub_1DACBA0E4();
  if (!v14)
  {
    v18 = v17[0];
    LOBYTE(v19) = v20 & 1;
    v21 = 1;
    v15 = MEMORY[0x1E69E6530];
    sub_1DABABE00(0, &unk_1EE11F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1DABA90B8(&qword_1ECBE83A8, &unk_1EE11F970, v15);
    sub_1DACBA0E4();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1DABA13AC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABA7394(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1DABA1408(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1DACBA174() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

__n128 sub_1DABA1464@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DABA6C00(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1DABA14D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DABA54D4(v7, v9) & 1;
}

uint64_t sub_1DABA152C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7461447472617473;
  }

  else
  {
    v3 = 0x65746144646E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x7461447472617473;
  }

  else
  {
    v5 = 0x65746144646E65;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DABA15D8()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA1660(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DABA16D4(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DABA1764(uint64_t *a1@<X8>)
{
  v2 = 0x65746144646E65;
  if (*v1)
  {
    v2 = 0x7461447472617473;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DABA17A8()
{
  if (*v0)
  {
    return 0x7461447472617473;
  }

  else
  {
    return 0x65746144646E65;
  }
}

uint64_t sub_1DABA17F4(uint64_t a1)
{
  v2 = sub_1DABA8FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA1830(uint64_t a1)
{
  v2 = sub_1DABA8FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA186C(void *a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a3;
  sub_1DABAC418(0, &qword_1ECBE8390, sub_1DABA8FBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseDateRange.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA8FBC();
  sub_1DACBA304();
  v13 = 0;
  sub_1DACBA0C4();
  if (!v3)
  {
    v12 = 1;
    sub_1DACBA0C4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DABA1A00@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABA75A0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1DABA1A74(uint64_t a1)
{
  sub_1DACB9404();
}

unint64_t sub_1DABA1B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABA7778(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DABA1B88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x65736F6C63;
  v5 = 0xE400000000000000;
  v6 = 1852141679;
  v7 = 0xED00006574614465;
  v8 = 0x636E657265666572;
  if (v2 != 4)
  {
    v8 = 0x656D756C6F76;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1751607656;
  if (v2 != 1)
  {
    v10 = 7827308;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DABA1C34()
{
  v1 = *v0;
  v2 = 0x65736F6C63;
  v3 = 1852141679;
  v4 = 0x636E657265666572;
  if (v1 != 4)
  {
    v4 = 0x656D756C6F76;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1751607656;
  if (v1 != 1)
  {
    v5 = 7827308;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DABA1CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABA7778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABA1D04(uint64_t a1)
{
  v2 = sub_1DABA9010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA1D40(uint64_t a1)
{
  v2 = sub_1DABA9010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA1D7C(void *a1)
{
  sub_1DABAC418(0, &qword_1ECBE8398, sub_1DABA9010, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA9010();
  sub_1DACBA304();
  v15 = 0;
  sub_1DACBA044();
  if (!v1)
  {
    v14 = 1;
    sub_1DACBA044();
    v13 = 2;
    sub_1DACBA044();
    v12 = 3;
    sub_1DACBA044();
    v11 = 4;
    sub_1DACBA0C4();
    v10 = 5;
    sub_1DACBA044();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DABA1F9C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x79546C6F626D7973;
    v6 = 0x4164657461657263;
    if (a1 != 8)
    {
      v6 = 0x7243656372756F73;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x4E746361706D6F63;
    if (a1 != 5)
    {
      v7 = 0x6C6F626D7973;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7472616863;
    v2 = 1701667182;
    v3 = 0x74654465746F7571;
    if (a1 != 3)
    {
      v3 = 0x6D614E74726F6873;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x65676E6168637865;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

double sub_1DABA20F4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DABA77C4(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DABA2168(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DABA64F4(v7, v9) & 1;
}

uint64_t sub_1DABA21D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DABA1F9C(*a1);
  v5 = v4;
  if (v3 == sub_1DABA1F9C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DABA225C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DABA1F9C(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA22C0(uint64_t a1)
{
  sub_1DABA1F9C(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DABA2314(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DABA1F9C(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DABA2374@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABA7B3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DABA23A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DABA1F9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DABA23EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABA7B3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABA2420(uint64_t a1)
{
  v2 = sub_1DABA82A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA245C(uint64_t a1)
{
  v2 = sub_1DABA82A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA2498(void *a1)
{
  v2 = v1;
  sub_1DABAC418(0, &qword_1ECBE8320, sub_1DABA82A4, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA82A4();
  sub_1DACBA304();
  v8 = *v2;
  v31[1] = v2[1];
  v9 = v2[1];
  v31[2] = v2[2];
  v10 = v2[2];
  v31[3] = v2[3];
  v31[0] = *v2;
  v11 = v2[3];
  v27 = v10;
  v28 = v11;
  v32 = *(v2 + 64);
  v29 = *(v2 + 64);
  v25 = v8;
  v26 = v9;
  v24 = 0;
  sub_1DABA84B8(v31, v21, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
  sub_1DABA8464();
  v12 = v17;
  sub_1DACBA074();
  if (v12)
  {
    v21[2] = v27;
    v21[3] = v28;
    LOBYTE(v21[4]) = v29;
    v21[0] = v25;
    v21[1] = v26;
    sub_1DABA83A0(v21, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
    return (*(v33 + 8))(v7, v5);
  }

  else
  {
    v14 = v33;
    v22[2] = v27;
    v22[3] = v28;
    v23 = v29;
    v22[0] = v25;
    v22[1] = v26;
    sub_1DABA83A0(v22, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
    v21[0] = *(v2 + 72);
    v20[0] = 1;
    v15 = v7;
    v16 = MEMORY[0x1E69E6158];
    sub_1DABABE00(0, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1DABA90B8(&qword_1ECBE8330, &qword_1EE123FD0, v16);
    sub_1DACBA0E4();
    LOBYTE(v21[0]) = 2;
    sub_1DACBA024();
    memcpy(v30, v2 + 104, sizeof(v30));
    memcpy(v21, v2 + 104, 0x248uLL);
    v20[591] = 3;
    sub_1DABA84B8(v30, v20, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
    sub_1DABA8538();
    sub_1DACBA074();
    memcpy(v20, v21, 0x248uLL);
    sub_1DABA83A0(v20, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
    v19 = 4;
    sub_1DACBA024();
    v19 = 5;
    sub_1DACBA024();
    v19 = 6;
    sub_1DACBA094();
    v19 = *(v2 + 736);
    v18 = 7;
    sub_1DABA858C();
    sub_1DACBA074();
    v19 = 8;
    sub_1DACBA024();
    v19 = 9;
    sub_1DACBA024();
    return (*(v14 + 8))(v15, 0);
  }
}

void *sub_1DABA2990@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABA7B88(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x308uLL);
  }

  return result;
}

uint64_t sub_1DABA29F4(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1DABA5DEC(v4) & 1;
}

unint64_t sub_1DABA2A4C(char a1)
{
  result = 0x756F487265746661;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x5665676172657661;
      break;
    case 4:
      result = 1635018082;
      break;
    case 5:
      result = 0x79636E6572727563;
      break;
    case 6:
      result = 0x5068676948796164;
      break;
    case 7:
      result = 0x7250776F4C796164;
      break;
    case 8:
      result = 0x506E65704F796164;
      break;
    case 9:
      result = 0x55736C6961746564;
      break;
    case 10:
      result = 0x646E656469766964;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
    case 13:
    case 15:
      result = 0x65676E6168637865;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
    case 38:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x6563697270;
      break;
    case 20:
      result = 0x6168436563697270;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0x756F536563697270;
      break;
    case 23:
      result = 0x656D756C6F76;
      break;
    case 24:
      result = 0x6867694872616579;
      break;
    case 25:
      result = 0x50776F4C72616579;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    case 27:
      result = 0x73676E696E726165;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    case 29:
      result = 0x65737341646E7566;
      break;
    case 30:
      result = 0x65746143646E7566;
      break;
    case 31:
      result = 0x75636F46646E7566;
      break;
    case 32:
      result = 0x6863694E646E7566;
      break;
    case 33:
      result = 0x69676552646E7566;
      break;
    case 34:
      result = 0x706D6F43646E7566;
      break;
    case 35:
      result = 0x726F74636573;
      break;
    case 36:
      result = 0x7972747375646E69;
      break;
    case 37:
    case 39:
      result = 0x656B72614D657270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DABA2EF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABA9130(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DABA2F28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x5845444E49;
  if (v2 != 6)
  {
    v6 = 0x465F4C415554554DLL;
    v5 = 0xEB00000000444E55;
  }

  v7 = 0xE300000000000000;
  v8 = 4609093;
  if (v2 != 4)
  {
    v8 = 0x53455255545546;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF59434E45525255;
  v10 = 0x435F4F5450595243;
  if (v2 != 2)
  {
    v10 = 0x595449555145;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x59434E4552525543;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1DABA302C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABA917C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DABA30A8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DABA2A4C(*a1);
  v5 = v4;
  if (v3 == sub_1DABA2A4C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DABA3130()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DABA2A4C(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA3194(uint64_t a1)
{
  sub_1DABA2A4C(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DABA31E8(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DABA2A4C(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DABA3248@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABA9250(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DABA3278@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DABA2A4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DABA32AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABA9250(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABA32E0(uint64_t a1)
{
  v2 = sub_1DABAABBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA331C(uint64_t a1)
{
  v2 = sub_1DABAABBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA3358()
{
  sub_1DABAC418(0, &qword_1EE11F618, sub_1DABAABBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys, MEMORY[0x1E69E6F48]);
  result = sub_1DACB9F94();
  if (!v0 && (v2 & 1) == 0 && result < 0)
  {
    sub_1DACB9C94();
    MEMORY[0x1E1276F20](0xD000000000000031, 0x80000001DACEB6A0);
    v3 = sub_1DACBA114();
    MEMORY[0x1E1276F20](v3);

    MEMORY[0x1E1276F20](0xD000000000000026, 0x80000001DACEB6E0);
    sub_1DABAADA0();
    swift_allocError();
    strcpy(v4, "averageVolume");
    *(v4 + 7) = -4864;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DABA34E4()
{
  sub_1DABAC418(0, &qword_1EE11F618, sub_1DABAABBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys, MEMORY[0x1E69E6F48]);
  result = sub_1DACB9F94();
  if (!v0 && (v2 & 1) == 0 && result < 0)
  {
    sub_1DACB9C94();
    MEMORY[0x1E1276F20](0xD00000000000002ALL, 0x80000001DACEB650);
    v3 = sub_1DACBA114();
    MEMORY[0x1E1276F20](v3);

    MEMORY[0x1E1276F20](0xD00000000000001FLL, 0x80000001DACEB680);
    sub_1DABAADA0();
    swift_allocError();
    *v4 = 0x656D756C6F76;
    v4[1] = 0xE600000000000000;
    v4[2] = 0;
    v4[3] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DABA3660(void *a1)
{
  v3 = v1;
  sub_1DABAC418(0, &qword_1ECBE83B8, sub_1DABAABBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAABBC();
  sub_1DACBA304();
  LOBYTE(v11) = 0;
  sub_1DACBA044();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1DACBA044();
    LOBYTE(v11) = *(v3 + 25);
    v12 = 2;
    sub_1DABAADF4();
    sub_1DACBA074();
    LOBYTE(v11) = 37;
    sub_1DACBA044();
    LOBYTE(v11) = 38;
    sub_1DACBA044();
    LOBYTE(v11) = *(v3 + 57);
    v12 = 39;
    sub_1DACBA074();
    LOBYTE(v11) = 3;
    sub_1DACBA084();
    LOBYTE(v11) = 4;
    sub_1DACBA044();
    LOBYTE(v11) = 5;
    sub_1DACBA024();
    LOBYTE(v11) = 6;
    sub_1DACBA044();
    LOBYTE(v11) = 7;
    sub_1DACBA044();
    LOBYTE(v11) = 8;
    sub_1DACBA044();
    LOBYTE(v11) = 9;
    sub_1DACBA024();
    LOBYTE(v11) = 10;
    sub_1DACBA044();
    LOBYTE(v11) = 11;
    sub_1DACBA044();
    LOBYTE(v11) = 12;
    sub_1DACBA024();
    LOBYTE(v11) = 13;
    sub_1DACBA024();
    LOBYTE(v11) = 14;
    sub_1DACBA024();
    LOBYTE(v11) = *(v3 + 256);
    v12 = 15;
    sub_1DABAAE48();
    sub_1DACBA074();
    LOBYTE(v11) = 16;
    sub_1DACBA044();
    LOBYTE(v11) = 17;
    sub_1DACBA024();
    LOBYTE(v11) = 18;
    sub_1DACBA044();
    LOBYTE(v11) = 19;
    sub_1DACBA044();
    LOBYTE(v11) = 20;
    sub_1DACBA044();
    LOBYTE(v11) = 21;
    sub_1DACBA044();
    LOBYTE(v11) = *(v3 + 353);
    v12 = 22;
    sub_1DACBA074();
    LOBYTE(v11) = 23;
    sub_1DACBA084();
    LOBYTE(v11) = 24;
    sub_1DACBA044();
    LOBYTE(v11) = 25;
    sub_1DACBA044();
    LOBYTE(v11) = 26;
    sub_1DACBA024();
    LOBYTE(v11) = 27;
    sub_1DACBA024();
    *&v11 = *(v3 + 440);
    WORD4(v11) = *(v3 + 448);
    v12 = 28;
    sub_1DABAAE9C();
    sub_1DACBA074();
    LOBYTE(v11) = 29;
    sub_1DACBA024();
    LOBYTE(v11) = 30;
    sub_1DACBA024();
    LOBYTE(v11) = 31;
    sub_1DACBA024();
    LOBYTE(v11) = 32;
    sub_1DACBA024();
    LOBYTE(v11) = 33;
    sub_1DACBA024();
    v11 = *(v3 + 536);
    v12 = 34;
    sub_1DABAAEF0();
    sub_1DACBA074();
    LOBYTE(v11) = 35;
    sub_1DACBA024();
    LOBYTE(v11) = 36;
    sub_1DACBA024();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DABA3EAC()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA3F70(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DABA4020(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DABA40E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABAB794(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DABA4110(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1313165391;
  v4 = 0xEA00000000005445;
  v5 = 0x4B52414D5F455250;
  if (*v1 != 2)
  {
    v5 = 0x4F485F5245544641;
    v4 = 0xEB00000000535255;
  }

  if (*v1)
  {
    v3 = 0x4445534F4C43;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DABA4240()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABA42A4(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABA42F0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DACB9F04();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1DABA4370@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DABA43C8(uint64_t a1)
{
  v2 = sub_1DABAB740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA4404(uint64_t a1)
{
  v2 = sub_1DABAB740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA4440(void *a1, uint64_t a2, char a3)
{
  sub_1DABAC418(0, &qword_1ECBE8458, sub_1DABAB740, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.TimeZoneOffset.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAB740();
  sub_1DACBA304();
  v13 = a2;
  v14 = a3 & 1;
  v11 = MEMORY[0x1E69E6530];
  sub_1DABABE00(0, &unk_1EE11F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  sub_1DABA90B8(&qword_1ECBE83A8, &unk_1EE11F970, v11);
  sub_1DACBA0E4();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DABA4614(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void), double a8)
{
  v17[1] = a3;
  sub_1DABAC418(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a7();
  sub_1DACBA304();
  v19 = 0;
  v15 = v17[2];
  sub_1DACBA094();
  if (!v15)
  {
    v18 = 1;
    sub_1DACBA0B4();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1DABA47A4(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  sub_1DABAC418(0, &qword_1ECBE8460, sub_1DABABCBC, &type metadata for SDSQuoteResponse.SDSFundComposition.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABABCBC();
  sub_1DACBA304();
  v14 = a2;
  v13 = 0;
  sub_1DABABE00(0, &qword_1ECBE8428, &type metadata for SDSQuoteResponse.SDSFundComposition.Holding, MEMORY[0x1E69E62F8]);
  sub_1DABABF40();
  sub_1DACBA0E4();
  if (!v3)
  {
    v14 = v12;
    v13 = 1;
    sub_1DABABE00(0, &qword_1ECBE8440, &type metadata for SDSQuoteResponse.SDSFundComposition.Sector, MEMORY[0x1E69E62F8]);
    sub_1DABAC030();
    sub_1DACBA0E4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DABA49C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_1DABAC418(0, &qword_1EE11F610, sub_1DABAB740, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.TimeZoneOffset.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAB740();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_1DACB9F64();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  *(v9 + 8) = v12 & 1;
  return result;
}

void *sub_1DABA4B9C@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABA92A4(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x248uLL);
  }

  return result;
}

uint64_t sub_1DABA4C00(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1DABA55C4(v4, __dst) & 1;
}

uint64_t sub_1DABA4C6C(uint64_t a1)
{
  sub_1DACB9404();
}

unint64_t sub_1DABA4D94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABAB7E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DABA4DC4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF444559414C4544;
  v4 = 0x5F434952454E4547;
  v5 = 0x80000001DACE1C90;
  v6 = 0x80000001DACE1CB0;
  v7 = 0xD000000000000011;
  if (v2 != 4)
  {
    v7 = 0xD000000000000010;
    v6 = 0x80000001DACE1CD0;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xEF454D49544C4145;
  v9 = 0x525F51414453414ELL;
  if (v2 != 1)
  {
    v9 = 0x4145525F4553594ELL;
    v8 = 0xED0000454D49544CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1DABA4F64(uint64_t a1)
{
  v2 = sub_1DABAC370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA4FA0(uint64_t a1)
{
  v2 = sub_1DABAC370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA5084(uint64_t a1)
{
  v2 = sub_1DABAC3C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA50C0(uint64_t a1)
{
  v2 = sub_1DABAC3C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DABA514C(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, uint64_t (*a5)(void)@<X6>, uint64_t *a6@<X8>)
{
  v10 = sub_1DABAB82C(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
    a6[1] = v9;
    *(a6 + 2) = v10;
  }
}

uint64_t sub_1DABA51E4()
{
  if (*v0)
  {
    return 0x6F74636553706F74;
  }

  else
  {
    return 0x69646C6F48706F74;
  }
}

uint64_t sub_1DABA522C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69646C6F48706F74 && a2 == 0xEB0000000073676ELL;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F74636553706F74 && a2 == 0xEA00000000007372)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DABA5314(uint64_t a1)
{
  v2 = sub_1DABABCBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA5350(uint64_t a1)
{
  v2 = sub_1DABABCBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA538C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABABA2C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1DABA53D4()
{
  if ((sub_1DAC3D734() & 1) == 0)
  {
    return 0;
  }

  return sub_1DAC3D734();
}

double sub_1DABA5430@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DABA67F0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

unint64_t sub_1DABA548C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1DABA65DC(v7, v8) & 1;
}

uint64_t sub_1DABA54D4(double *a1, double *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  if ((sub_1DAC378B0(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  v4 = a1;
  v5 = *(a1 + 4);
  v6 = a2;
  v7 = *(a2 + 4);
  if (v5 == 1)
  {
    if (v7 == 1)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (v7 == 1)
  {
    return 0;
  }

  if (v5)
  {
    if (v7)
    {
      if (*(a1 + 3) == *(a2 + 3) && v5 == v7)
      {
        goto LABEL_6;
      }

      v9 = sub_1DACBA174();
      v6 = a2;
      v4 = a1;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_6:
  result = *(v6 + 64);
  if ((v4[8] & 1) == 0)
  {
    return (v4[7] == v6[7]) & ~result;
  }

  return result;
}

uint64_t sub_1DABA55C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 25);
  if (*(a1 + 25) == 6)
  {
    if (v4 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 6)
    {
      return 0;
    }

    v5 = a1;
    v6 = a2;
    v7 = sub_1DAC39D14(*(a1 + 25), *(a2 + 25));
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 57);
  if (*(a1 + 57) == 6)
  {
    if (v11 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == 6)
    {
      return 0;
    }

    v12 = a1;
    v13 = a2;
    v14 = sub_1DAC39D14(*(a1 + 57), *(a2 + 57));
    a2 = v13;
    v15 = v14;
    a1 = v12;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = *(a1 + 104);
  v19 = *(a2 + 104);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    if (*(a1 + 96) != *(a2 + 96) || v18 != v19)
    {
      v20 = a1;
      v21 = a2;
      v22 = sub_1DACBA174();
      a2 = v21;
      v23 = v22;
      a1 = v20;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v24 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 112) != *(a2 + 112))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if (!*(a2 + 136))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 128) != *(a2 + 128))
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (!*(a2 + 152))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 144) != *(a2 + 144))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = a1;
  v28 = *(a1 + 168);
  v29 = a2;
  v30 = *(a2 + 168);
  if (v28)
  {
    if (!v30 || (*(a1 + 160) != *(a2 + 160) || v28 != v30) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = *(v29 + 184);
  if (*(v27 + 184))
  {
    if (!*(v29 + 184))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 176) != *(v29 + 176))
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v32 = *(v29 + 200);
  if (*(v27 + 200))
  {
    if (!*(v29 + 200))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 192) != *(v29 + 192))
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = *(v27 + 216);
  v34 = *(v29 + 216);
  if (v33)
  {
    if (!v34 || (*(v27 + 208) != *(v29 + 208) || v33 != v34) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v35 = *(v27 + 232);
  v36 = *(v29 + 232);
  if (v35)
  {
    if (!v36 || (*(v27 + 224) != *(v29 + 224) || v35 != v36) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = *(v27 + 248);
  v38 = *(v29 + 248);
  if (v37)
  {
    if (!v38 || (*(v27 + 240) != *(v29 + 240) || v37 != v38) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  v39 = *(v27 + 256);
  v40 = *(v29 + 256);
  if (v39 == 4)
  {
    if (v40 != 4)
    {
      return 0;
    }
  }

  else if (v40 == 4 || (sub_1DAC39BC8(v39, v40) & 1) == 0)
  {
    return 0;
  }

  v41 = *(v29 + 272);
  if (*(v27 + 272))
  {
    if (!*(v29 + 272))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 264) != *(v29 + 264))
    {
      v41 = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  v42 = *(v27 + 288);
  v43 = *(v29 + 288);
  if (v42)
  {
    if (!v43 || (*(v27 + 280) != *(v29 + 280) || v42 != v43) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v44 = *(v29 + 304);
  if (*(v27 + 304))
  {
    if (!*(v29 + 304))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 296) != *(v29 + 296))
    {
      v44 = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = *(v29 + 320);
  if (*(v27 + 320))
  {
    if (!*(v29 + 320))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 312) != *(v29 + 312))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  v46 = *(v29 + 336);
  if (*(v27 + 336))
  {
    if (!*(v29 + 336))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 328) != *(v29 + 328))
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v47 = *(v29 + 352);
  if (*(v27 + 352))
  {
    if (!*(v29 + 352))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 344) != *(v29 + 344))
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  v48 = *(v27 + 353);
  v49 = *(v29 + 353);
  if (v48 == 6)
  {
    if (v49 != 6)
    {
      return 0;
    }
  }

  else if (v49 == 6 || (sub_1DAC39D14(v48, v49) & 1) == 0)
  {
    return 0;
  }

  v50 = *(v29 + 368);
  if (*(v27 + 368))
  {
    if (!*(v29 + 368))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 360) != *(v29 + 360))
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  v51 = *(v29 + 384);
  if (*(v27 + 384))
  {
    if (!*(v29 + 384))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 376) != *(v29 + 376))
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  v52 = *(v29 + 400);
  if (*(v27 + 400))
  {
    if (!*(v29 + 400))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 392) != *(v29 + 392))
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  v53 = *(v27 + 416);
  v54 = *(v29 + 416);
  if (v53)
  {
    if (!v54 || (*(v27 + 408) != *(v29 + 408) || v53 != v54) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  v55 = *(v27 + 432);
  v56 = *(v29 + 432);
  if (v55)
  {
    if (!v56 || (*(v27 + 424) != *(v29 + 424) || v55 != v56) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v56)
  {
    return 0;
  }

  if (*(v27 + 449))
  {
    if ((*(v29 + 449) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(v29 + 449))
  {
    return 0;
  }

  v57 = *(v27 + 464);
  v58 = *(v29 + 464);
  if (v57)
  {
    if (!v58 || (*(v27 + 456) != *(v29 + 456) || v57 != v58) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v58)
  {
    return 0;
  }

  v59 = *(v27 + 480);
  v60 = *(v29 + 480);
  if (v59)
  {
    if (!v60 || (*(v27 + 472) != *(v29 + 472) || v59 != v60) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v60)
  {
    return 0;
  }

  v61 = *(v27 + 496);
  v62 = *(v29 + 496);
  if (v61)
  {
    if (!v62 || (*(v27 + 488) != *(v29 + 488) || v61 != v62) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v62)
  {
    return 0;
  }

  v63 = *(v27 + 512);
  v64 = *(v29 + 512);
  if (v63)
  {
    if (!v64 || (*(v27 + 504) != *(v29 + 504) || v63 != v64) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v65 = *(v27 + 528);
  v66 = *(v29 + 528);
  if (v65)
  {
    if (!v66 || (*(v27 + 520) != *(v29 + 520) || v65 != v66) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v66)
  {
    return 0;
  }

  v67 = *(v29 + 536);
  if (*(v27 + 536))
  {
    if (!v67 || (sub_1DAC3D734() & 1) == 0 || (sub_1DAC3D734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v67)
  {
    return 0;
  }

  v69 = *(v27 + 560);
  v70 = *(v29 + 560);
  if (!v69)
  {
    if (!v70)
    {
      goto LABEL_245;
    }

    return 0;
  }

  if (!v70 || (*(v27 + 552) != *(v29 + 552) || v69 != v70) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

LABEL_245:
  v71 = *(v27 + 576);
  v72 = *(v29 + 576);
  result = (v71 | v72) == 0;
  if (v71 && v72)
  {
    if (*(v27 + 568) == *(v29 + 568) && v71 == v72)
    {
      return 1;
    }

    else
    {

      return sub_1DACBA174();
    }
  }

  return result;
}

uint64_t sub_1DABA5DEC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *v1;
  v48 = *(v1 + 16);
  v6 = *(v1 + 48);
  v49 = *(v1 + 32);
  v50 = v6;
  v47 = v5;
  v7 = *v2;
  v43 = v2[1];
  v8 = v2[3];
  v44 = v2[2];
  v45 = v8;
  v42 = *v2;
  v51 = *(v1 + 64);
  v46 = *(v2 + 64);
  v9 = v48;
  *&v52[7] = v7;
  if (!v48)
  {
    if (!v43)
    {
      __dst[0] = *v1;
      *&__dst[1] = 0;
      *(&__dst[1] + 8) = *(v1 + 24);
      *(&__dst[2] + 8) = *(v1 + 40);
      *(&__dst[3] + 1) = *(v1 + 49);
      sub_1DABA84B8(&v47, v37, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
      sub_1DABA84B8(&v42, v37, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
      sub_1DABA83A0(__dst, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
      goto LABEL_11;
    }

LABEL_6:
    __dst[0] = *v1;
    *(&__dst[1] + 8) = *(v1 + 24);
    *(&__dst[2] + 8) = *(v1 + 40);
    *(&__dst[3] + 1) = *(v1 + 49);
    *(&__dst[4] + 1) = *v52;
    *&__dst[1] = v48;
    *&__dst[5] = *&v52[15];
    *(&__dst[5] + 1) = v43;
    v13 = *(v2 + 40);
    __dst[6] = *(v2 + 24);
    __dst[7] = v13;
    *(&__dst[7] + 9) = *(v2 + 49);
    v14 = &qword_1EE11EAF0;
    v15 = &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem;
    sub_1DABA84B8(&v47, v37, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
    sub_1DABA84B8(&v42, v37, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
    v16 = &unk_1ECBE8348;
    v17 = __dst;
LABEL_7:
    sub_1DABA85E0(v17, v16, v14, v15);
    goto LABEL_8;
  }

  if (!v43)
  {
    goto LABEL_6;
  }

  v37[0] = *v2;
  *&v37[1] = v43;
  *(&v37[1] + 8) = *(v2 + 24);
  *(&v37[2] + 8) = *(v2 + 40);
  *(&v37[3] + 1) = *(v2 + 49);
  v58 = v37[4];
  v57[2] = v37[2];
  v57[3] = v37[3];
  v57[0] = v37[0];
  v57[1] = v37[1];
  v53 = *v1;
  v10 = *(v1 + 24);
  v11 = *(v1 + 40);
  *(v56 + 9) = *(v1 + 49);
  v56[0] = v11;
  v55 = v10;
  v54 = v48;
  v12 = sub_1DABA54D4(&v53, v57);
  sub_1DABA84B8(&v47, __dst, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
  sub_1DABA84B8(&v42, __dst, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
  sub_1DABA83A0(v37, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
  __dst[0] = *v4;
  *&__dst[1] = v9;
  *(&__dst[1] + 8) = *(v4 + 24);
  *(&__dst[2] + 8) = *(v4 + 40);
  *(&__dst[3] + 1) = *(v4 + 49);
  sub_1DABA83A0(__dst, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v20 = *(v4 + 80);
  v21 = *(v3 + 10);
  if (v20)
  {
    if (!v21 || (*(v4 + 72) != *(v3 + 9) || v20 != v21) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  v22 = *(v4 + 96);
  v23 = *(v3 + 12);
  if (v22)
  {
    if (!v23 || (*(v4 + 88) != *(v3 + 11) || v22 != v23) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v23)
  {
    goto LABEL_8;
  }

  memcpy(v41, (v4 + 104), sizeof(v41));
  memcpy(v40, v3 + 104, sizeof(v40));
  memcpy(__dst, (v4 + 104), 0x248uLL);
  memcpy(&__dst[36] + 8, v3 + 104, 0x248uLL);
  memcpy(v39, (v4 + 104), sizeof(v39));
  if (sub_1DAAE865C(v39) != 1)
  {
    memcpy(v36, v3 + 104, sizeof(v36));
    if (sub_1DAAE865C(v36) != 1)
    {
      memcpy(v34, v3 + 104, sizeof(v34));
      memcpy(v37, v3 + 104, 0x248uLL);
      memcpy(v52, (v4 + 104), sizeof(v52));
      sub_1DABA84B8(v41, v35, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
      sub_1DABA84B8(v40, v35, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
      v24 = sub_1DABA55C4(v52, v37);
      sub_1DABA83A0(v34, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
      memcpy(v35, (v4 + 104), sizeof(v35));
      sub_1DABA83A0(v35, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
      if ((v24 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  memcpy(v37, v3 + 104, 0x248uLL);
  if (sub_1DAAE865C(v37) != 1)
  {
LABEL_29:
    memcpy(v37, __dst, sizeof(v37));
    v14 = &qword_1EE1229D0;
    v15 = &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem;
    sub_1DABA84B8(v41, v52, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
    sub_1DABA84B8(v40, v52, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
    v16 = &unk_1ECBE8350;
    v17 = v37;
    goto LABEL_7;
  }

  memcpy(v52, (v4 + 104), sizeof(v52));
  sub_1DABA84B8(v41, v36, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
  sub_1DABA84B8(v40, v36, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
  sub_1DABA83A0(v52, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
LABEL_31:
  v25 = *(v4 + 696);
  v26 = *(v3 + 87);
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_8;
    }

    v27 = *(v3 + 86);
    if ((*(v4 + 688) != v27 || v25 != v26) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_8;
    }

    v28 = *(v4 + 712);
    if (!v28 || (*(v4 + 704) != v27 || v28 != v26) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v26 || *(v4 + 712))
  {
    goto LABEL_8;
  }

  if ((*(v4 + 720) != *(v3 + 90) || *(v4 + 728) != *(v3 + 91)) && (sub_1DACBA174() & 1) == 0)
  {
    goto LABEL_8;
  }

  v29 = *(v3 + 736);
  if (*(v4 + 736) == 8)
  {
    if (v29 != 8)
    {
      goto LABEL_8;
    }
  }

  else if (v29 == 8 || (sub_1DAC3D738() & 1) == 0)
  {
    goto LABEL_8;
  }

  v30 = *(v4 + 752);
  v31 = *(v3 + 94);
  if (v30)
  {
    if (!v31 || (*(v4 + 744) != *(v3 + 93) || v30 != v31) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v31)
  {
    goto LABEL_8;
  }

  v32 = *(v4 + 768);
  v33 = *(v3 + 96);
  if (v32)
  {
    if (v33)
    {
      if (*(v4 + 760) != *(v3 + 95) || v32 != v33)
      {
        v18 = sub_1DACBA174();
        return v18 & 1;
      }

LABEL_64:
      v18 = 1;
      return v18 & 1;
    }
  }

  else if (!v33)
  {
    goto LABEL_64;
  }

LABEL_8:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1DABA64F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      goto LABEL_25;
    }

    return v2;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    LOBYTE(v2) = 1;
  }

  if (v2)
  {
    return 0;
  }

LABEL_25:
  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v2 = *(a2 + 80);
  if (*(a1 + 80))
  {
    return v2;
  }

  return (*(a1 + 72) == *(a2 + 72)) & ~v2;
}

void *sub_1DABA65DC(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    v13 = a1[1];
    v12 = a1[2];
    v15 = a1[3];
    v14 = a1[4];
    v16 = a1[5];
    v18 = a2[1];
    v17 = a2[2];
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[5];
    if (v12)
    {
      if (v17)
      {
        v24[0] = v13;
        v24[1] = v12;
        v24[2] = v15;
        v24[3] = v14;
        v24[4] = v16;
        v23[0] = v18;
        v23[1] = v17;
        v23[2] = v19;
        v23[3] = v20;
        v23[4] = v21;
        sub_1DAAF2954(v18, v17, v19, v20, v21);
        sub_1DAAF2954(v13, v12, v15, v14, v16);
        v22 = sub_1DAC3C194(v24, v23);

        sub_1DAA75E60(v13, v12, v15, v14, v16);
        return v22;
      }
    }

    else if (!v17)
    {
      return 1;
    }

    sub_1DAAF2954(v18, v17, v19, v20, v21);
    sub_1DAAF2954(v13, v12, v15, v14, v16);
    sub_1DAA75E60(v13, v12, v15, v14, v16);
    sub_1DAA75E60(v18, v17, v19, v20, v21);
    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (1)
  {
    result = memcpy(__dst, v8, sizeof(__dst));
    if (!v4)
    {
      break;
    }

    memcpy(v26, v9, 0x308uLL);
    sub_1DAAE8548(__dst, v23);
    sub_1DAAE8548(v26, v23);
    v11 = sub_1DABA5DEC(__dst);
    sub_1DAAE85A4(v26);
    sub_1DAAE85A4(__dst);
    if ((v11 & 1) == 0)
    {
      return 0;
    }

    v8 += 776;
    v9 += 776;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABA67F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1DABAC418(0, &qword_1EE11F608, sub_1DABA6A70, &type metadata for SDSQuoteResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA6A70();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v17;
  sub_1DABABE00(0, &qword_1EE11FB38, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem, MEMORY[0x1E69E62F8]);
  LOBYTE(v19) = 0;
  sub_1DABA6AC4();
  sub_1DACB9FE4();
  v11 = v22;
  v18 = 1;
  sub_1DAA6EEB0();
  sub_1DACB9F84();
  (*(v9 + 8))(v8, v5);
  v12 = v21;
  v15 = v20;
  v16 = v19;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  v14 = v16;
  *(v10 + 24) = v15;
  *(v10 + 8) = v14;
  *(v10 + 40) = v12;
  return result;
}

unint64_t sub_1DABA6A70()
{
  result = qword_1EE1229C8;
  if (!qword_1EE1229C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229C8);
  }

  return result;
}

unint64_t sub_1DABA6AC4()
{
  result = qword_1EE11FB30;
  if (!qword_1EE11FB30)
  {
    sub_1DABABE00(255, &qword_1EE11FB38, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem, MEMORY[0x1E69E62F8]);
    sub_1DABA6B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FB30);
  }

  return result;
}

unint64_t sub_1DABA6B60()
{
  result = qword_1EE122A38;
  if (!qword_1EE122A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A38);
  }

  return result;
}

unint64_t sub_1DABA6BB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DABA6C00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1DABAC418(0, &qword_1EE11CFC0, sub_1DABA6F74, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA6F74();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v32;
  LOBYTE(v35) = 0;
  sub_1DABA6FC8();
  v11 = v5;
  sub_1DACB9FE4();
  v12 = v39;
  v13 = v40;
  sub_1DABABE00(0, &qword_1EE11D188, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem, MEMORY[0x1E69E62F8]);
  LOBYTE(v35) = 1;
  sub_1DABA701C();
  sub_1DACB9FE4();
  v31 = v13;
  v14 = v41;
  v33[0] = 2;
  sub_1DABA710C();
  sub_1DACB9F84();
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v30 = v14;
  LOBYTE(v14) = v38;
  v34 = 3;
  v15 = sub_1DACB9F54();
  v17 = v16;
  v18 = *(v9 + 8);
  v26 = v15;
  v18(v8, v11);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v21 = v30;
  v20 = v31;
  *v10 = v12;
  *(v10 + 8) = v20;
  v22 = v27;
  v23 = v28;
  *(v10 + 16) = v21;
  *(v10 + 24) = v22;
  v24 = v29;
  *(v10 + 32) = v23;
  *(v10 + 40) = v24;
  *(v10 + 48) = v14;
  *(v10 + 49) = *v33;
  *(v10 + 52) = *&v33[3];
  *(v10 + 56) = v26;
  *(v10 + 64) = v17 & 1;
  return result;
}

unint64_t sub_1DABA6F74()
{
  result = qword_1EE11EB28;
  if (!qword_1EE11EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB28);
  }

  return result;
}

unint64_t sub_1DABA6FC8()
{
  result = qword_1EE11EAD0;
  if (!qword_1EE11EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAD0);
  }

  return result;
}

unint64_t sub_1DABA701C()
{
  result = qword_1EE11D180;
  if (!qword_1EE11D180)
  {
    sub_1DABABE00(255, &qword_1EE11D188, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem, MEMORY[0x1E69E62F8]);
    sub_1DABA70B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D180);
  }

  return result;
}

unint64_t sub_1DABA70B8()
{
  result = qword_1EE11EAB0;
  if (!qword_1EE11EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAB0);
  }

  return result;
}

unint64_t sub_1DABA710C()
{
  result = qword_1EE11EAF8;
  if (!qword_1EE11EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAF8);
  }

  return result;
}

unint64_t sub_1DABA7160()
{
  result = qword_1ECBE82F0;
  if (!qword_1ECBE82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE82F0);
  }

  return result;
}

unint64_t sub_1DABA71B4()
{
  result = qword_1ECBE82F8;
  if (!qword_1ECBE82F8)
  {
    sub_1DABABE00(255, &qword_1EE11D188, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem, MEMORY[0x1E69E62F8]);
    sub_1DABA7250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE82F8);
  }

  return result;
}

unint64_t sub_1DABA7250()
{
  result = qword_1ECBE8300;
  if (!qword_1ECBE8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8300);
  }

  return result;
}

unint64_t sub_1DABA72A4()
{
  result = qword_1ECBE8310;
  if (!qword_1ECBE8310)
  {
    sub_1DABABE00(255, &qword_1ECBE8308, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.TimeZoneOffset, MEMORY[0x1E69E6720]);
    sub_1DABA7340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8310);
  }

  return result;
}

unint64_t sub_1DABA7340()
{
  result = qword_1ECBE8318;
  if (!qword_1ECBE8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8318);
  }

  return result;
}

uint64_t sub_1DABA7394(void *a1)
{
  sub_1DABAC418(0, &qword_1EE11CFB8, sub_1DABA9064, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.TimeZoneOffset.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA9064();
  sub_1DACBA2F4();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1DACB9F34();
    v11 = 1;
    sub_1DACB9F64();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DABA75A0(void *a1)
{
  sub_1DABAC418(0, &qword_1EE11CFB0, sub_1DABA8FBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseDateRange.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DABA8FBC();
  sub_1DACBA2F4();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1DACB9FD4();
    v11 = 1;
    sub_1DACB9FD4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DABA7778(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DABA77C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_1DABAC418(0, &qword_1EE11CFA8, sub_1DABA9010, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA9010();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v38;
  v46[0] = 0;
  v11 = v5;
  v12 = sub_1DACB9F54();
  v14 = v13;
  v15 = v12;
  v46[0] = 1;
  v16 = sub_1DACB9F54();
  v36 = v17;
  v37 = v16;
  v46[0] = 2;
  v18 = sub_1DACB9F54();
  v34 = v19;
  v35 = v18;
  v46[0] = 3;
  v20 = sub_1DACB9F54();
  v32 = v21;
  v33 = v20;
  v46[0] = 4;
  v31 = sub_1DACB9FD4();
  v48 = 5;
  v22 = sub_1DACB9F54();
  v24 = v23;
  v25 = *(v9 + 8);
  v30 = v22;
  v25(v8, v11);
  v47 = v14 & 1;
  v45 = v36 & 1;
  v43 = v34 & 1;
  v41 = v32 & 1;
  v39 = v24 & 1;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v15;
  *(v10 + 8) = v47;
  *(v10 + 9) = *v46;
  *(v10 + 12) = *&v46[3];
  *(v10 + 16) = v37;
  *(v10 + 24) = v45;
  *(v10 + 25) = *v44;
  *(v10 + 28) = *&v44[3];
  *(v10 + 32) = v35;
  *(v10 + 40) = v43;
  v27 = *v42;
  *(v10 + 44) = *&v42[3];
  *(v10 + 41) = v27;
  *(v10 + 48) = v33;
  *(v10 + 56) = v41;
  *(v10 + 60) = *&v40[3];
  *(v10 + 57) = *v40;
  v28 = v30;
  *(v10 + 64) = v31;
  *(v10 + 72) = v28;
  *(v10 + 80) = v39;
  return result;
}

unint64_t sub_1DABA7B3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

void *sub_1DABA7B88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABAC418(0, &qword_1EE11F620, sub_1DABA82A4, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v44 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DABA82A4();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v10 = v6;
  v61 = 0;
  sub_1DABA82F8();
  sub_1DACB9F84();
  v57 = v63;
  v58 = v64;
  v59 = v65;
  v60 = v66;
  v56 = v62;
  v55[0] = 1;
  v11 = sub_1DACB9F34();
  v13 = v12;
  v55[0] = 2;
  v42 = sub_1DACB9F34();
  v43 = v14;
  v54[591] = 3;
  sub_1DABA834C();
  sub_1DACB9F84();
  memcpy(v54, v55, 0x248uLL);
  v46[0] = 4;
  v40 = sub_1DACB9F34();
  v41 = v15;
  v46[0] = 5;
  v38 = sub_1DACB9F34();
  v39 = v16;
  v46[0] = 6;
  v36 = sub_1DACB9FA4();
  v37 = v17;
  v46[0] = 7;
  sub_1DABA8410();
  sub_1DACB9F84();
  v34 = v53;
  v46[0] = 8;
  v33 = sub_1DACB9F34();
  v35 = v18;
  v52 = 9;
  v19 = sub_1DACB9F34();
  v32 = v20;
  v21 = v19;
  (*(v10 + 8))(v8, v44);
  v49 = v58;
  v50 = v59;
  LOBYTE(v51) = v60;
  v47 = v56;
  v48 = v57;
  memcpy(v46, v54, sizeof(v46));
  __swift_destroy_boxed_opaque_existential_1(v67);
  v22 = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = v22;
  v23 = v51;
  v24 = v48;
  *a2 = v47;
  *(a2 + 16) = v24;
  *(a2 + 64) = v23;
  *(a2 + 72) = v11;
  v26 = v42;
  v25 = v43;
  *(a2 + 80) = v13;
  *(a2 + 88) = v26;
  *(a2 + 96) = v25;
  result = memcpy((a2 + 104), v46, 0x248uLL);
  v28 = v41;
  *(a2 + 688) = v40;
  *(a2 + 696) = v28;
  v29 = v39;
  *(a2 + 704) = v38;
  *(a2 + 712) = v29;
  v30 = v37;
  *(a2 + 720) = v36;
  *(a2 + 728) = v30;
  *(a2 + 736) = v34;
  *(a2 + 737) = *v45;
  *(a2 + 740) = *&v45[3];
  *(a2 + 744) = v33;
  *(a2 + 752) = v35;
  *(a2 + 760) = v21;
  *(a2 + 768) = v32;
  return result;
}

unint64_t sub_1DABA82A4()
{
  result = qword_1EE122A50;
  if (!qword_1EE122A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A50);
  }

  return result;
}

unint64_t sub_1DABA82F8()
{
  result = qword_1EE122A28;
  if (!qword_1EE122A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A28);
  }

  return result;
}

unint64_t sub_1DABA834C()
{
  result = qword_1EE1229D8;
  if (!qword_1EE1229D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229D8);
  }

  return result;
}

uint64_t sub_1DABA83A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DABABE00(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DABA8410()
{
  result = qword_1EE122A30;
  if (!qword_1EE122A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A30);
  }

  return result;
}

unint64_t sub_1DABA8464()
{
  result = qword_1ECBE8328;
  if (!qword_1ECBE8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8328);
  }

  return result;
}

uint64_t sub_1DABA84B8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1DABABE00(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DABA8538()
{
  result = qword_1ECBE8338;
  if (!qword_1ECBE8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8338);
  }

  return result;
}

unint64_t sub_1DABA858C()
{
  result = qword_1ECBE8340;
  if (!qword_1ECBE8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8340);
  }

  return result;
}

uint64_t sub_1DABA85E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1DABA863C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1DABA863C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DABABE00(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1DABA86B4()
{
  result = qword_1ECBE8360;
  if (!qword_1ECBE8360)
  {
    sub_1DABABE00(255, &qword_1EE11FB38, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem, MEMORY[0x1E69E62F8]);
    sub_1DABA8750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8360);
  }

  return result;
}

unint64_t sub_1DABA8750()
{
  result = qword_1ECBE8368;
  if (!qword_1ECBE8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DABA8928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DABA8984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DABA8A10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DABA8A30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
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

  *(result + 81) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseDateRange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseDateRange(uint64_t result, int a2, int a3)
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

uint64_t sub_1DABA8AF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 584))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
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

uint64_t sub_1DABA8B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 568) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 584) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 584) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

unint64_t sub_1DABA8C50()
{
  result = qword_1ECBE8370;
  if (!qword_1ECBE8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8370);
  }

  return result;
}

unint64_t sub_1DABA8CA8()
{
  result = qword_1ECBE8378;
  if (!qword_1ECBE8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8378);
  }

  return result;
}

unint64_t sub_1DABA8D00()
{
  result = qword_1ECBE8380;
  if (!qword_1ECBE8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8380);
  }

  return result;
}

unint64_t sub_1DABA8D58()
{
  result = qword_1ECBE8388;
  if (!qword_1ECBE8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8388);
  }

  return result;
}

unint64_t sub_1DABA8DB0()
{
  result = qword_1EE122A40;
  if (!qword_1EE122A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A40);
  }

  return result;
}

unint64_t sub_1DABA8E08()
{
  result = qword_1EE122A48;
  if (!qword_1EE122A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A48);
  }

  return result;
}

unint64_t sub_1DABA8E60()
{
  result = qword_1EE11EB18;
  if (!qword_1EE11EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB18);
  }

  return result;
}

unint64_t sub_1DABA8EB8()
{
  result = qword_1EE11EB20;
  if (!qword_1EE11EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB20);
  }

  return result;
}

unint64_t sub_1DABA8F10()
{
  result = qword_1EE1229B8;
  if (!qword_1EE1229B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229B8);
  }

  return result;
}

unint64_t sub_1DABA8F68()
{
  result = qword_1EE1229C0;
  if (!qword_1EE1229C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229C0);
  }

  return result;
}

unint64_t sub_1DABA8FBC()
{
  result = qword_1EE11EAE8;
  if (!qword_1EE11EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAE8);
  }

  return result;
}

unint64_t sub_1DABA9010()
{
  result = qword_1EE11EAC8;
  if (!qword_1EE11EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAC8);
  }

  return result;
}

unint64_t sub_1DABA9064()
{
  result = qword_1EE11EB10;
  if (!qword_1EE11EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB10);
  }

  return result;
}

uint64_t sub_1DABA90B8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DABABE00(255, a2, a3, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DABA9130(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DABA917C(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACBA2D4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v4 = sub_1DACBA184();
    LODWORD(v3) = sub_1DABA9130(v4, v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v3 == 8)
    {
      v3 = 0;
    }

    else
    {
      v3 = v3;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1DABA9250(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACBA1B4();

  if (v2 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DABA92A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABAC418(0, &qword_1EE11F618, sub_1DABAABBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v78 - v8;
  v10 = a1[3];
  v194 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DABAABBC();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v194);
  }

  v11 = v7;
  LOBYTE(v185) = 0;
  v12 = sub_1DACB9F54();
  v14 = v13;
  LOBYTE(v185) = 1;
  v15 = sub_1DACB9F54();
  v157 = v16;
  v158 = v15;
  LOBYTE(v185) = 2;
  v17 = sub_1DABAAC10();
  sub_1DACB9F84();
  v156 = v17;
  v18 = v193;
  LOBYTE(v185) = 37;
  v19 = sub_1DACB9F54();
  v154 = v20;
  v155 = v19;
  LOBYTE(v185) = 38;
  v21 = sub_1DACB9F54();
  v152 = v22;
  v153 = v21;
  LOBYTE(v185) = 39;
  sub_1DACB9F84();
  v23 = v192;
  v24 = sub_1DABA3358();
  v149 = v25;
  v150 = v24;
  v151 = v23;
  LOBYTE(v185) = 4;
  v26 = sub_1DACB9F54();
  v145 = v27;
  v147 = v26;
  v148 = v18;
  v28 = v158;
  LOBYTE(v185) = 5;
  v146 = sub_1DACB9F34();
  v142 = v29;
  LOBYTE(v185) = 6;
  v144 = v6;
  v143 = v9;
  v141 = sub_1DACB9F54();
  v140 = v30;
  LOBYTE(v185) = 7;
  v139 = sub_1DACB9F54();
  v138 = v31;
  LOBYTE(v185) = 8;
  v137 = sub_1DACB9F54();
  v136 = v32;
  LOBYTE(v185) = 9;
  v134 = sub_1DACB9F34();
  v135 = v33;
  LOBYTE(v185) = 10;
  v133 = sub_1DACB9F54();
  v132 = v34;
  LOBYTE(v185) = 11;
  v131 = sub_1DACB9F54();
  v130 = v35;
  LOBYTE(v185) = 12;
  v128 = sub_1DACB9F34();
  v129 = v36;
  LOBYTE(v185) = 13;
  v126 = sub_1DACB9F34();
  v127 = v37;
  LOBYTE(v185) = 14;
  v124 = sub_1DACB9F34();
  v125 = v38;
  LOBYTE(v185) = 15;
  sub_1DABAAC64();
  sub_1DACB9F84();
  v39 = v191;
  LOBYTE(v185) = 16;
  v123 = sub_1DACB9F54();
  v122 = v40;
  LOBYTE(v185) = 17;
  v120 = sub_1DACB9F34();
  v121 = v41;
  LOBYTE(v185) = 18;
  v119 = sub_1DACB9F54();
  v118 = v42;
  LOBYTE(v185) = 19;
  v117 = sub_1DACB9F54();
  v116 = v43;
  LOBYTE(v185) = 20;
  v115 = sub_1DACB9F54();
  v114 = v44;
  LOBYTE(v185) = 21;
  v113 = sub_1DACB9F54();
  v112 = v45;
  LOBYTE(v185) = 22;
  sub_1DACB9F84();
  v111 = v190;
  v156 = sub_1DABA34E4();
  v47 = v46;
  LOBYTE(v185) = 24;
  v110 = sub_1DACB9F54();
  v109 = v48;
  LOBYTE(v185) = 25;
  v108 = sub_1DACB9F54();
  v107 = v49;
  LOBYTE(v185) = 26;
  v105 = sub_1DACB9F34();
  v106 = v50;
  LOBYTE(v185) = 27;
  v103 = sub_1DACB9F34();
  v104 = v51;
  LOBYTE(v185) = 28;
  sub_1DABAACB8();
  sub_1DACB9F84();
  v101 = v187;
  v100 = v188;
  v99 = v189;
  LOBYTE(v185) = 29;
  v98 = sub_1DACB9F34();
  v102 = v52;
  LOBYTE(v185) = 30;
  v96 = sub_1DACB9F34();
  v97 = v53;
  LOBYTE(v185) = 31;
  v94 = sub_1DACB9F34();
  v95 = v54;
  LOBYTE(v185) = 32;
  v92 = sub_1DACB9F34();
  v93 = v55;
  LOBYTE(v185) = 33;
  v88 = sub_1DACB9F34();
  v91 = v56;
  v183[0] = 34;
  sub_1DABAAD0C();
  sub_1DACB9F84();
  v89 = v185;
  v90 = v186;
  v183[0] = 35;
  v86 = sub_1DACB9F34();
  v87 = v57;
  v184 = 36;
  v85 = sub_1DACB9F34();
  v84 = v58;
  (*(v11 + 8))(v143, v144);
  v183[0] = v14 & 1;
  LOBYTE(v23) = v157 & 1;
  LOBYTE(v180[0]) = v157 & 1;
  v78 = v154 & 1;
  LOBYTE(v177[0]) = v154 & 1;
  v59 = v152 & 1;
  v176[0] = v152 & 1;
  v80 = v149 & 1;
  LOBYTE(v175[0]) = v149 & 1;
  v79 = v145 & 1;
  v174[0] = v145 & 1;
  v83 = v140 & 1;
  LOBYTE(v173[0]) = v140 & 1;
  v82 = v138 & 1;
  v172[0] = v138 & 1;
  v81 = v136 & 1;
  LOBYTE(v171[0]) = v136 & 1;
  v138 = v132 & 1;
  LOBYTE(v170[0]) = v132 & 1;
  v136 = v130 & 1;
  LOBYTE(v169[0]) = v130 & 1;
  v140 = v122 & 1;
  v168[0] = v122 & 1;
  v149 = v118 & 1;
  LOBYTE(v167[0]) = v118 & 1;
  v145 = v116 & 1;
  v166[0] = v116 & 1;
  LODWORD(v144) = v114 & 1;
  LOBYTE(v163[0]) = v114 & 1;
  LODWORD(v143) = v112 & 1;
  LOBYTE(v162[0]) = v112 & 1;
  v152 = v47 & 1;
  LOBYTE(v161[0]) = v47 & 1;
  v154 = v109 & 1;
  LOBYTE(v181) = v109 & 1;
  v157 = v107 & 1;
  LOBYTE(v178) = v107 & 1;
  v60 = v99;
  LOBYTE(v164) = v99;
  LOBYTE(v11) = v183[0];
  result = __swift_destroy_boxed_opaque_existential_1(v194);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v28;
  *(a2 + 24) = v23;
  *(a2 + 25) = v148;
  *(a2 + 32) = v155;
  *(a2 + 40) = v78;
  *(a2 + 48) = v153;
  *(a2 + 56) = v59;
  *(a2 + 57) = v151;
  *(a2 + 64) = v150;
  *(a2 + 72) = v80;
  *(a2 + 80) = v147;
  *(a2 + 88) = v79;
  v62 = v142;
  *(a2 + 96) = v146;
  *(a2 + 104) = v62;
  *(a2 + 112) = v141;
  *(a2 + 120) = v83;
  *(a2 + 128) = v139;
  *(a2 + 136) = v82;
  *(a2 + 144) = v137;
  *(a2 + 152) = v81;
  v63 = v135;
  *(a2 + 160) = v134;
  *(a2 + 168) = v63;
  *(a2 + 176) = v133;
  *(a2 + 184) = v138;
  *(a2 + 192) = v131;
  *(a2 + 200) = v136;
  v64 = v129;
  *(a2 + 208) = v128;
  *(a2 + 216) = v64;
  v65 = v127;
  *(a2 + 224) = v126;
  *(a2 + 232) = v65;
  v66 = v125;
  *(a2 + 240) = v124;
  *(a2 + 248) = v66;
  *(a2 + 256) = v39;
  *(a2 + 264) = v123;
  *(a2 + 272) = v140;
  v67 = v121;
  *(a2 + 280) = v120;
  *(a2 + 288) = v67;
  *(a2 + 296) = v119;
  *(a2 + 304) = v149;
  *(a2 + 312) = v117;
  *(a2 + 320) = v145;
  *(a2 + 328) = v115;
  *(a2 + 336) = v144;
  *(a2 + 344) = v113;
  *(a2 + 352) = v143;
  *(a2 + 353) = v111;
  *(a2 + 260) = *(v170 + 3);
  *(a2 + 257) = v170[0];
  *(a2 + 276) = *(v169 + 3);
  *(a2 + 273) = v169[0];
  *(a2 + 305) = *v168;
  *(a2 + 324) = *(v167 + 3);
  *(a2 + 321) = v167[0];
  *(a2 + 340) = *&v166[3];
  *(a2 + 337) = *v166;
  *(a2 + 354) = v164;
  *(a2 + 9) = *v183;
  *(a2 + 12) = *&v183[3];
  *(a2 + 26) = v181;
  *(a2 + 30) = v182;
  *(a2 + 44) = *(v180 + 3);
  *(a2 + 41) = v180[0];
  *(a2 + 62) = v179;
  *(a2 + 58) = v178;
  *(a2 + 76) = *(v177 + 3);
  *(a2 + 73) = v177[0];
  *(a2 + 89) = *v176;
  *(a2 + 92) = *&v176[3];
  *(a2 + 121) = v175[0];
  *(a2 + 124) = *(v175 + 3);
  *(a2 + 137) = *v174;
  *(a2 + 140) = *&v174[3];
  *(a2 + 156) = *(v173 + 3);
  *(a2 + 153) = v173[0];
  *(a2 + 188) = *&v172[3];
  *(a2 + 185) = *v172;
  *(a2 + 201) = v171[0];
  *(a2 + 204) = *(v171 + 3);
  *(a2 + 308) = *&v168[3];
  *(a2 + 358) = v165;
  *(a2 + 360) = v156;
  *(a2 + 368) = v152;
  v68 = v163[0];
  *(a2 + 372) = *(v163 + 3);
  *(a2 + 369) = v68;
  *(a2 + 376) = v110;
  *(a2 + 384) = v154;
  v69 = v162[0];
  *(a2 + 388) = *(v162 + 3);
  *(a2 + 385) = v69;
  *(a2 + 392) = v108;
  *(a2 + 400) = v157;
  v70 = v161[0];
  *(a2 + 404) = *(v161 + 3);
  *(a2 + 401) = v70;
  v71 = v106;
  *(a2 + 408) = v105;
  *(a2 + 416) = v71;
  v72 = v104;
  *(a2 + 424) = v103;
  *(a2 + 432) = v72;
  *(a2 + 440) = v101;
  *(a2 + 448) = v100;
  *(a2 + 449) = v60;
  v73 = v159;
  *(a2 + 454) = v160;
  *(a2 + 450) = v73;
  v74 = v102;
  *(a2 + 456) = v98;
  *(a2 + 464) = v74;
  v75 = v97;
  *(a2 + 472) = v96;
  *(a2 + 480) = v75;
  v76 = v95;
  *(a2 + 488) = v94;
  *(a2 + 496) = v76;
  v77 = v93;
  *(a2 + 504) = v92;
  *(a2 + 512) = v77;
  *(a2 + 520) = v88;
  *(a2 + 528) = v91;
  *(a2 + 536) = v89;
  *(a2 + 544) = v90;
  *(a2 + 552) = v86;
  *(a2 + 560) = v87;
  *(a2 + 568) = v85;
  *(a2 + 576) = v84;
  return result;
}

unint64_t sub_1DABAABBC()
{
  result = qword_1EE122A10;
  if (!qword_1EE122A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A10);
  }

  return result;
}

unint64_t sub_1DABAAC10()
{
  result = qword_1EE122A58;
  if (!qword_1EE122A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A58);
  }

  return result;
}

unint64_t sub_1DABAAC64()
{
  result = qword_1EE122A18;
  if (!qword_1EE122A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A18);
  }

  return result;
}

unint64_t sub_1DABAACB8()
{
  result = qword_1EE1229E0;
  if (!qword_1EE1229E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229E0);
  }

  return result;
}

unint64_t sub_1DABAAD0C()
{
  result = qword_1EE1229B0;
  if (!qword_1EE1229B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229B0);
  }

  return result;
}

uint64_t sub_1DABAAD60(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1DABAADA0()
{
  result = qword_1ECBE83B0;
  if (!qword_1ECBE83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83B0);
  }

  return result;
}

unint64_t sub_1DABAADF4()
{
  result = qword_1ECBE83C0;
  if (!qword_1ECBE83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83C0);
  }

  return result;
}

unint64_t sub_1DABAAE48()
{
  result = qword_1ECBE83C8;
  if (!qword_1ECBE83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83C8);
  }

  return result;
}

unint64_t sub_1DABAAE9C()
{
  result = qword_1ECBE83D0;
  if (!qword_1ECBE83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83D0);
  }

  return result;
}

unint64_t sub_1DABAAEF0()
{
  result = qword_1ECBE83D8;
  if (!qword_1ECBE83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83D8);
  }

  return result;
}

unint64_t sub_1DABAAF44()
{
  result = qword_1ECBE83E0;
  if (!qword_1ECBE83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t getEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseQuoteItem.TimeZoneOffset(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseQuoteItem.TimeZoneOffset(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_1DABAB1CC()
{
  result = qword_1ECBE83E8;
  if (!qword_1ECBE83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83E8);
  }

  return result;
}

unint64_t sub_1DABAB224()
{
  result = qword_1ECBE83F0;
  if (!qword_1ECBE83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83F0);
  }

  return result;
}

unint64_t sub_1DABAB27C()
{
  result = qword_1ECBE83F8;
  if (!qword_1ECBE83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83F8);
  }

  return result;
}

unint64_t sub_1DABAB2D4()
{
  result = qword_1ECBE8400;
  if (!qword_1ECBE8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8400);
  }

  return result;
}

unint64_t sub_1DABAB32C()
{
  result = qword_1ECBE8408;
  if (!qword_1ECBE8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8408);
  }

  return result;
}

unint64_t sub_1DABAB384()
{
  result = qword_1ECBE8410;
  if (!qword_1ECBE8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8410);
  }

  return result;
}

unint64_t sub_1DABAB3DC()
{
  result = qword_1EE122A00;
  if (!qword_1EE122A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A00);
  }

  return result;
}

unint64_t sub_1DABAB434()
{
  result = qword_1EE122A08;
  if (!qword_1EE122A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A08);
  }

  return result;
}

unint64_t sub_1DABAB48C()
{
  result = qword_1EE11EB00;
  if (!qword_1EE11EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB00);
  }

  return result;
}

unint64_t sub_1DABAB4E4()
{
  result = qword_1EE11EB08;
  if (!qword_1EE11EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB08);
  }

  return result;
}

unint64_t sub_1DABAB53C()
{
  result = qword_1EE11EAB8;
  if (!qword_1EE11EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAB8);
  }

  return result;
}

unint64_t sub_1DABAB594()
{
  result = qword_1EE11EAC0;
  if (!qword_1EE11EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAC0);
  }

  return result;
}

unint64_t sub_1DABAB5EC()
{
  result = qword_1EE11EAD8;
  if (!qword_1EE11EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAD8);
  }

  return result;
}

unint64_t sub_1DABAB644()
{
  result = qword_1EE11EAE0;
  if (!qword_1EE11EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAE0);
  }

  return result;
}

unint64_t sub_1DABAB698()
{
  result = qword_1EE122A60;
  if (!qword_1EE122A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A60);
  }

  return result;
}

unint64_t sub_1DABAB6EC()
{
  result = qword_1EE122A20;
  if (!qword_1EE122A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A20);
  }

  return result;
}

unint64_t sub_1DABAB740()
{
  result = qword_1EE1229F8;
  if (!qword_1EE1229F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229F8);
  }

  return result;
}

unint64_t sub_1DABAB794(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DABAB7E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

double sub_1DABAB82C(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  sub_1DABAC418(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v16 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1DACBA2F4();
  if (!v5)
  {
    v13 = v16;
    v18 = 0;
    sub_1DACB9FA4();
    v17 = 1;
    sub_1DACB9FC4();
    v6 = v15;
    (*(v13 + 8))(v12, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1DABABA2C(void *a1)
{
  sub_1DABAC418(0, &qword_1ECBE8418, sub_1DABABCBC, &type metadata for SDSQuoteResponse.SDSFundComposition.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DABABCBC();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABABE00(0, &qword_1ECBE8428, &type metadata for SDSQuoteResponse.SDSFundComposition.Holding, MEMORY[0x1E69E62F8]);
    v11 = 0;
    sub_1DABABD10();
    sub_1DACB9FE4();
    v8 = v12;
    sub_1DABABE00(0, &qword_1ECBE8440, &type metadata for SDSQuoteResponse.SDSFundComposition.Sector, MEMORY[0x1E69E62F8]);
    v11 = 1;
    sub_1DABABE50();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DABABCBC()
{
  result = qword_1ECBE8420;
  if (!qword_1ECBE8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8420);
  }

  return result;
}

unint64_t sub_1DABABD10()
{
  result = qword_1ECBE8430;
  if (!qword_1ECBE8430)
  {
    sub_1DABABE00(255, &qword_1ECBE8428, &type metadata for SDSQuoteResponse.SDSFundComposition.Holding, MEMORY[0x1E69E62F8]);
    sub_1DABABDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8430);
  }

  return result;
}

unint64_t sub_1DABABDAC()
{
  result = qword_1ECBE8438;
  if (!qword_1ECBE8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8438);
  }

  return result;
}

void sub_1DABABE00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1DABABE50()
{
  result = qword_1ECBE8448;
  if (!qword_1ECBE8448)
  {
    sub_1DABABE00(255, &qword_1ECBE8440, &type metadata for SDSQuoteResponse.SDSFundComposition.Sector, MEMORY[0x1E69E62F8]);
    sub_1DABABEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8448);
  }

  return result;
}

unint64_t sub_1DABABEEC()
{
  result = qword_1ECBE8450;
  if (!qword_1ECBE8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8450);
  }

  return result;
}

unint64_t sub_1DABABF40()
{
  result = qword_1ECBE8468;
  if (!qword_1ECBE8468)
  {
    sub_1DABABE00(255, &qword_1ECBE8428, &type metadata for SDSQuoteResponse.SDSFundComposition.Holding, MEMORY[0x1E69E62F8]);
    sub_1DABABFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8468);
  }

  return result;
}

unint64_t sub_1DABABFDC()
{
  result = qword_1ECBE8470;
  if (!qword_1ECBE8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8470);
  }

  return result;
}

unint64_t sub_1DABAC030()
{
  result = qword_1ECBE8478;
  if (!qword_1ECBE8478)
  {
    sub_1DABABE00(255, &qword_1ECBE8440, &type metadata for SDSQuoteResponse.SDSFundComposition.Sector, MEMORY[0x1E69E62F8]);
    sub_1DABAC0CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8478);
  }

  return result;
}

unint64_t sub_1DABAC0CC()
{
  result = qword_1ECBE8480;
  if (!qword_1ECBE8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8480);
  }

  return result;
}

unint64_t sub_1DABAC164()
{
  result = qword_1ECBE8488;
  if (!qword_1ECBE8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8488);
  }

  return result;
}

unint64_t sub_1DABAC1BC()
{
  result = qword_1ECBE8490;
  if (!qword_1ECBE8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8490);
  }

  return result;
}

unint64_t sub_1DABAC214()
{
  result = qword_1ECBE8498;
  if (!qword_1ECBE8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8498);
  }

  return result;
}

unint64_t sub_1DABAC26C()
{
  result = qword_1ECBE84A0;
  if (!qword_1ECBE84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84A0);
  }

  return result;
}

unint64_t sub_1DABAC2C4()
{
  result = qword_1EE1229E8;
  if (!qword_1EE1229E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229E8);
  }

  return result;
}

unint64_t sub_1DABAC31C()
{
  result = qword_1EE1229F0;
  if (!qword_1EE1229F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229F0);
  }

  return result;
}

unint64_t sub_1DABAC370()
{
  result = qword_1ECBE84B0;
  if (!qword_1ECBE84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84B0);
  }

  return result;
}

unint64_t sub_1DABAC3C4()
{
  result = qword_1ECBE84C0;
  if (!qword_1ECBE84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84C0);
  }

  return result;
}

void sub_1DABAC418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DABAC4A4()
{
  result = qword_1ECBE84D8;
  if (!qword_1ECBE84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84D8);
  }

  return result;
}

unint64_t sub_1DABAC4FC()
{
  result = qword_1ECBE84E0;
  if (!qword_1ECBE84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84E0);
  }

  return result;
}

unint64_t sub_1DABAC554()
{
  result = qword_1ECBE84E8;
  if (!qword_1ECBE84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84E8);
  }

  return result;
}

unint64_t sub_1DABAC5AC()
{
  result = qword_1ECBE84F0;
  if (!qword_1ECBE84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84F0);
  }

  return result;
}

unint64_t sub_1DABAC604()
{
  result = qword_1ECBE84F8;
  if (!qword_1ECBE84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84F8);
  }

  return result;
}

unint64_t sub_1DABAC65C()
{
  result = qword_1ECBE8500;
  if (!qword_1ECBE8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8500);
  }

  return result;
}

uint64_t sub_1DABAC6CC(unsigned __int8 a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABAC7C0(unsigned __int8 a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABAC8F8(unsigned __int8 a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABACA14(unsigned __int8 a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABACB20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a13;
  v16 = a11;
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  if (a4)
  {
    v20 = a3;
  }

  else
  {
    v20 = 0;
  }

  if (a4)
  {
    v18 = a4;
  }

  if (a6)
  {
    result = a5;
  }

  else
  {
    result = 0x464646464646;
  }

  *a9 = v17;
  a9[1] = v19;
  if (a6)
  {
    v22 = a6;
  }

  else
  {
    v22 = 0xE600000000000000;
  }

  a9[2] = v20;
  a9[3] = v18;
  if (a8)
  {
    v23 = a7;
  }

  else
  {
    v23 = 0x303030303030;
  }

  if (a8)
  {
    v24 = a8;
  }

  else
  {
    v24 = 0xE600000000000000;
  }

  a9[4] = result;
  a9[5] = v22;
  if (!a11)
  {
    a10 = 0x464646464646;
    v16 = 0xE600000000000000;
  }

  a9[6] = v23;
  a9[7] = v24;
  if (!a13)
  {
    a12 = 0x303030303030;
  }

  a9[8] = a10;
  a9[9] = v16;
  if (!a13)
  {
    v14 = 0xE600000000000000;
  }

  a9[10] = a12;
  a9[11] = v14;
  return result;
}

uint64_t sub_1DABACBBC(uint64_t a1)
{
  sub_1DACB9404();
}

unint64_t sub_1DABACCC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABAE018(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DABACCF8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x756F726765726F66;
  v6 = 0xEF726F6C6F43646ELL;
  v7 = 0x80000001DACE1850;
  if (v2 != 4)
  {
    v7 = 0x80000001DACE1D00;
  }

  if (v2 != 3)
  {
    v5 = 0xD000000000000018;
    v6 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v9 = 0x756F72676B636162;
    v8 = 0xEF726F6C6F43646ELL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1DABACDCC()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x756F726765726F66;
  if (v1 != 3)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v4 = 0x756F72676B636162;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DABACE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABAE018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABACEC4(uint64_t a1)
{
  v2 = sub_1DABAD960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABACF00(uint64_t a1)
{
  v2 = sub_1DABAD960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABACF3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DABADDD0(0, &qword_1EE123C60, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v66 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAD960();
  sub_1DACBA2F4();
  if (!v2)
  {
    v85 = MEMORY[0x1E69E7CC0];
    v84 = 0;
    sub_1DACB9F84();
    v10 = v83;
    v79 = v82;
    if (v83)
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v78 = 0;
      v12 = a2;
      swift_beginAccess();
      v13 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      v11 = v13;
      if (v15 >= v14 >> 1)
      {
        v11 = sub_1DAA9A3B0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[16 * v15];
      *(v16 + 4) = 1701869940;
      *(v16 + 5) = 0xE400000000000000;
      v85 = v11;
      swift_endAccess();
      a2 = v12;
      v10 = v78;
    }

    v84 = 1;
    sub_1DACB9F84();
    v17 = v83;
    v76 = v82;
    if (!v83)
    {
      v78 = a2;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v20 = *(v11 + 2);
      v19 = *(v11 + 3);
      if (v20 >= v19 >> 1)
      {
        v11 = sub_1DAA9A3B0((v19 > 1), v20 + 1, 1, v11);
      }

      *(v11 + 2) = v20 + 1;
      v21 = &v11[16 * v20];
      *(v21 + 4) = 0x6C6562616CLL;
      *(v21 + 5) = 0xE500000000000000;
      v85 = v11;
      swift_endAccess();
      v17 = v77;
      a2 = v78;
    }

    v84 = 2;
    sub_1DACB9F84();
    v74 = v82;
    v75 = v83;
    if (!v83)
    {
      v78 = a2;
      swift_beginAccess();
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v17;
      if ((v22 & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v24 = *(v11 + 2);
      v23 = *(v11 + 3);
      if (v24 >= v23 >> 1)
      {
        v11 = sub_1DAA9A3B0((v23 > 1), v24 + 1, 1, v11);
      }

      *(v11 + 2) = v24 + 1;
      v25 = &v11[16 * v24];
      *(v25 + 4) = 0x756F72676B636162;
      *(v25 + 5) = 0xEF726F6C6F43646ELL;
      v85 = v11;
      swift_endAccess();
      v17 = v77;
      a2 = v78;
    }

    v84 = 3;
    sub_1DACB9F84();
    v72 = v82;
    v73 = v83;
    if (!v83)
    {
      v78 = a2;
      swift_beginAccess();
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v17;
      if ((v26 & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v28 = *(v11 + 2);
      v27 = *(v11 + 3);
      if (v28 >= v27 >> 1)
      {
        v11 = sub_1DAA9A3B0((v27 > 1), v28 + 1, 1, v11);
      }

      *(v11 + 2) = v28 + 1;
      v29 = &v11[16 * v28];
      *(v29 + 4) = 0x756F726765726F66;
      *(v29 + 5) = 0xEF726F6C6F43646ELL;
      v85 = v11;
      swift_endAccess();
      v17 = v77;
      a2 = v78;
    }

    v84 = 4;
    sub_1DACB9F84();
    v70 = v82;
    v71 = v83;
    if (!v83)
    {
      v77 = v17;
      v78 = 0;
      v30 = v10;
      swift_beginAccess();
      v31 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v33 = *(v11 + 2);
      v32 = *(v11 + 3);
      if (v33 >= v32 >> 1)
      {
        v11 = sub_1DAA9A3B0((v32 > 1), v33 + 1, 1, v11);
      }

      *(v11 + 2) = v33 + 1;
      v34 = &v11[16 * v33];
      *(v34 + 4) = 0xD000000000000018;
      *(v34 + 5) = 0x80000001DACE1850;
      v85 = v11;
      swift_endAccess();
      a2 = v31;
      v10 = v30;
      v17 = v77;
      v2 = v78;
    }

    LOBYTE(v82) = 5;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v78 = a2;
      v36 = v81;
      if (v81)
      {
        v69 = v80;
        v67 = *(v11 + 2) == 0;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
        }

        v38 = *(v11 + 2);
        v37 = *(v11 + 3);
        v39 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          v69 = v38 + 1;
          v63 = v11;
          v64 = v38;
          v65 = sub_1DAA9A3B0((v37 > 1), v38 + 1, 1, v63);
          v39 = v69;
          v38 = v64;
          v11 = v65;
        }

        v67 = 0;
        *(v11 + 2) = v39;
        v40 = &v11[16 * v38];
        *(v40 + 4) = 0xD000000000000018;
        *(v40 + 5) = 0x80000001DACE1D00;
        v69 = 0x303030303030;
      }

      v41 = v79;
      if (!v10)
      {
        v41 = 0;
      }

      v79 = v41;
      v42 = 0xE000000000000000;
      if (!v10)
      {
        v10 = 0xE000000000000000;
      }

      v44 = v75;
      v43 = v76;
      if (v17)
      {
        v42 = v17;
      }

      else
      {
        v43 = 0;
      }

      v76 = v43;
      v77 = v42;
      v45 = 0x464646464646;
      if (v75)
      {
        v46 = v74;
      }

      else
      {
        v46 = 0x464646464646;
      }

      if (!v75)
      {
        v44 = 0xE600000000000000;
      }

      v74 = v46;
      v75 = v44;
      v48 = v72;
      v47 = v73;
      if (!v73)
      {
        v48 = 0x303030303030;
        v47 = 0xE600000000000000;
      }

      v72 = v48;
      v73 = v47;
      if (v71)
      {
        v45 = v70;
      }

      v70 = v45;
      if (v71)
      {
        v49 = v71;
      }

      else
      {
        v49 = 0xE600000000000000;
      }

      v71 = v49;
      if (v36)
      {
        v50 = v36;
      }

      else
      {
        v50 = 0xE600000000000000;
      }

      v68 = v50;
      sub_1DAA41D64(0);
      if (v67)
      {
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1DACC1D20;
        *(v51 + 56) = MEMORY[0x1E69E6158];
        *(v51 + 64) = sub_1DAA443C8();
        *(v51 + 32) = v79;
        *(v51 + 40) = v10;
        sub_1DAA41DCC();
        sub_1DACB71E4();
        v52 = sub_1DACB9AD4();
        v53 = sub_1DACB9914();
        sub_1DACB8C64("loaded Top Stories style configuration '%@' with no need for fallback values", 76, 2, &dword_1DAA3F000, v52, v53, v51);
      }

      else
      {
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1DACC1D40;
        *(v54 + 56) = MEMORY[0x1E69E6158];
        *(v54 + 64) = sub_1DAA443C8();
        *(v54 + 32) = v79;
        *(v54 + 40) = v10;
        sub_1DAA613E8();
        *(v54 + 96) = v55;
        *(v54 + 104) = sub_1DAAF691C();
        *(v54 + 72) = v11;
        sub_1DAA41DCC();
        sub_1DACB71E4();
        sub_1DACB71E4();
        v52 = sub_1DACB9AD4();
        v56 = sub_1DACB9914();
        sub_1DACB8C64("loaded Top Stories style configuration '('%@')' with fallback values for keys: %@", 81, 2, &dword_1DAA3F000, v52, v56, v54);
      }

      (*(v7 + 8))(v9, v6);

      v57 = v78;
      *v78 = v79;
      v57[1] = v10;
      v58 = v77;
      v57[2] = v76;
      v57[3] = v58;
      v59 = v75;
      v57[4] = v74;
      v57[5] = v59;
      v60 = v73;
      v57[6] = v72;
      v57[7] = v60;
      v61 = v71;
      v57[8] = v70;
      v57[9] = v61;
      v62 = v68;
      v57[10] = v69;
      v57[11] = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DABAD960()
{
  result = qword_1EE1244F0;
  if (!qword_1EE1244F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244F0);
  }

  return result;
}

uint64_t sub_1DABAD9B8(void *a1)
{
  sub_1DABADDD0(0, &qword_1EE123BA8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = v1[2];
  v15[9] = v1[3];
  v15[10] = v8;
  v9 = v1[4];
  v15[7] = v1[5];
  v15[8] = v9;
  v10 = v1[6];
  v15[5] = v1[7];
  v15[6] = v10;
  v11 = v1[8];
  v15[3] = v1[9];
  v15[4] = v11;
  v12 = v1[11];
  v15[1] = v1[10];
  v15[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAD960();
  sub_1DACBA304();
  v21 = 0;
  v13 = v15[11];
  sub_1DACBA094();
  if (!v13)
  {
    v20 = 1;
    sub_1DACBA094();
    v19 = 2;
    sub_1DACBA094();
    v18 = 3;
    sub_1DACBA094();
    v17 = 4;
    sub_1DACBA094();
    v16 = 5;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DABADC24(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v21 = a1[7];
  v22 = a1[6];
  v19 = a1[9];
  v20 = a1[8];
  v15 = a1[11];
  v16 = a1[10];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v17 = a2[9];
  v18 = a2[8];
  v13 = a2[11];
  v14 = a2[10];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_1DACBA174() & 1) == 0 || (v3 != v9 || v5 != v8) && (sub_1DACBA174() & 1) == 0 || (v22 != v11 || v21 != v10) && (sub_1DACBA174() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1DACBA174();
}

void sub_1DABADDD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABAD960();
    v7 = a3(a1, &type metadata for TopStoriesStyleConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
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

uint64_t sub_1DABADE50(uint64_t a1, int a2)
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

uint64_t sub_1DABADE98(uint64_t result, int a2, int a3)
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

unint64_t sub_1DABADF14()
{
  result = qword_1ECBE8508;
  if (!qword_1ECBE8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8508);
  }

  return result;
}

unint64_t sub_1DABADF6C()
{
  result = qword_1EE1244E0;
  if (!qword_1EE1244E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244E0);
  }

  return result;
}

unint64_t sub_1DABADFC4()
{
  result = qword_1EE1244E8;
  if (!qword_1EE1244E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244E8);
  }

  return result;
}

unint64_t sub_1DABAE018(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

void sub_1DABAE064(uint64_t a1, void *a2, void (*a3)(), uint64_t a4, void (*a5)(void *), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    swift_getErrorValue();
    v13 = a2;
    sub_1DABDB680(v27);
    if (v14)
    {
      v15 = MEMORY[0x1E69E6158];
      swift_getTupleTypeMetadata2();
      v16 = sub_1DACB96B4();
      v17 = sub_1DABAF55C(v16, v15, a9, MEMORY[0x1E69E6168]);

      (a3)(v17);
    }

    else
    {
      v19 = sub_1DACB9904();
      sub_1DAA41D64(0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DACC1D40;
      v21 = sub_1DACBA364();
      v23 = v22;
      v24 = MEMORY[0x1E69E6158];
      *(v20 + 56) = MEMORY[0x1E69E6158];
      v25 = sub_1DAA443C8();
      *(v20 + 64) = v25;
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
      sub_1DACB9DD4();
      *(v20 + 96) = v24;
      *(v20 + 104) = v25;
      *(v20 + 72) = 0;
      *(v20 + 80) = 0xE000000000000000;
      sub_1DAA41DCC();
      v26 = sub_1DACB9AD4();
      sub_1DACB8C64("failed to fetch %{public}@ records with error: %{public}@", 57, 2, &dword_1DAA3F000, v26, v19, v20);

      a5(a2);
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E6158];
    v28 = sub_1DACB90F4();
    MEMORY[0x1EEE9AC00](v28);
    sub_1DAA615E0(0, &qword_1EE123EA0, v18, MEMORY[0x1E69E62F8]);
    sub_1DACB91A4();
    sub_1DABAF4E0();
    sub_1DACB9534();
    a3();
  }
}

void sub_1DABAE378(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1DACB9AF4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  if (*(a3 + 16))
  {
    v14 = *a2;
    v15 = a2[1];
    v16 = sub_1DAA4BF3C(*a2, v15);
    if (v17)
    {
      v32 = a1;
      v18 = (*(a3 + 56) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1DACB7554();
      swift_allocObject();
      sub_1DAB0B080(v19, v20);
      sub_1DACB71E4();
      sub_1DACB7544();
      v33 = v19;
      v21 = v20;
      sub_1DACB7524();

      if (v6)
      {

        v22 = sub_1DACB9904();
        sub_1DAA41D64(0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1DACC1D40;
        v24 = sub_1DACBA364();
        v26 = v25;
        v27 = MEMORY[0x1E69E6158];
        *(v23 + 56) = MEMORY[0x1E69E6158];
        v28 = sub_1DAA443C8();
        *(v23 + 64) = v28;
        *(v23 + 32) = v24;
        *(v23 + 40) = v26;
        v34 = 0;
        v35 = 0xE000000000000000;
        v36 = v6;
        sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
        sub_1DACB9DD4();
        v29 = v34;
        v30 = v35;
        *(v23 + 96) = v27;
        *(v23 + 104) = v28;
        *(v23 + 72) = v29;
        *(v23 + 80) = v30;
        sub_1DAA41DCC();
        v31 = sub_1DACB9AD4();
        sub_1DACB8C64("failed to parse %{public}@ record JSON with error: %{public}@", 61, 2, &dword_1DAA3F000, v31, v22, v23);
        sub_1DAA563C0(v33, v21);
      }

      else
      {
        (*(*(a5 - 8) + 56))(v13, 0, 1, a5);
        v34 = v14;
        v35 = v15;
        sub_1DACB91A4();
        sub_1DACB91C4();
        sub_1DAA563C0(v33, v20);
      }
    }
  }
}

void sub_1DABAE648(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1DACB9124();
  sub_1DACB71F4();
  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1DABAE6E8(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v5 = a2[5];
  v25 = a2[4];
  v26 = v5;
  v27 = a2[6];
  v28 = *(a2 + 14);
  v6 = a2[1];
  v21 = *a2;
  v22 = v6;
  v7 = a2[3];
  v23 = a2[2];
  v24 = v7;
  sub_1DAAA3874(&v21, v19, sub_1DABAF39C);

  v19[4] = v26;
  v19[5] = v27;
  v20 = v28;
  v19[0] = v22;
  v19[1] = v23;
  v19[2] = v24;
  v19[3] = v25;
  v8 = sub_1DACB93B4();
  if (*(a3 + 16))
  {
    v10 = sub_1DAA4BF3C(v8, v9);
    v12 = v11;

    if (v12)
    {
      v13 = (*(a3 + 56) + 16 * v10);
      v14 = *v13;
      v15 = v13[1];
      sub_1DACB71E4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *a1;
      sub_1DACA58B4(v19, v14, v15, isUniquelyReferenced_nonNull_native);

      *a1 = v18;
    }

    else
    {
      return sub_1DABAF400(&v22);
    }
  }

  else
  {
    sub_1DABAF400(&v22);
  }

  return result;
}

uint64_t sub_1DABAE848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 40);
    v6 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v10 = *(v5 - 1);
      v9 = *v5;
      v11 = sub_1DACB93B4();
      v13 = v12;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_1DAA4BF3C(v11, v13);
      v17 = *(v6 + 16);
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_40;
      }

      v21 = v16;
      if (*(v6 + 24) < v20)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v27 = v15;
      sub_1DAB65314();
      v15 = v27;
      if (v21)
      {
LABEL_3:
        v7 = v15;

        v8 = (*(v6 + 56) + 16 * v7);
        *v8 = v10;
        v8[1] = v9;

        goto LABEL_4;
      }

LABEL_11:
      *(v6 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      v23 = (*(v6 + 48) + 16 * v15);
      *v23 = v11;
      v23[1] = v13;
      v24 = (*(v6 + 56) + 16 * v15);
      *v24 = v10;
      v24[1] = v9;

      v25 = *(v6 + 16);
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_41;
      }

      *(v6 + 16) = v26;
LABEL_4:
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_16;
      }
    }

    sub_1DAAA2514(v20, isUniquelyReferenced_nonNull_native);
    v15 = sub_1DAA4BF3C(v11, v13);
    if ((v21 & 1) != (v22 & 1))
    {
      goto LABEL_42;
    }

LABEL_10:
    if (v21)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v6 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v28 = v6 + 64;
  v29 = 1 << *(v6 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v6 + 64);
  v32 = (v29 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v33 = 0;
  v34 = a2;
  v35 = (a2 + 40);
  v36 = MEMORY[0x1E69E7CC0];
  while (v31)
  {
    v37 = v31;
LABEL_25:
    v31 = (v37 - 1) & v37;
    v39 = *(v34 + 16);
    if (v39)
    {
      v51 = (v37 - 1) & v37;
      v53 = v28;
      v40 = (*(v6 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v37)))));
      v55 = *v40;
      v56 = v40[1];
      sub_1DACB71E4();
      v52 = v35;
      do
      {
        v42 = *(v35 - 1);
        v41 = *v35;
        v43 = qword_1EE123758;
        sub_1DACB71E4();
        if (v43 != -1)
        {
          swift_once();
        }

        MEMORY[0x1E1276F20](qword_1EE13E3B8, unk_1EE13E3C0);
        sub_1DACB9204();
        if (v41)
        {
          MEMORY[0x1E1276F20](v42, v41);
          sub_1DACB9204();
          MEMORY[0x1E1276F20](v55, v56);
        }

        else
        {
          MEMORY[0x1E1276F20](v55, v56);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1DAA9A3B0(0, *(v36 + 2) + 1, 1, v36);
        }

        v45 = *(v36 + 2);
        v44 = *(v36 + 3);
        if (v45 >= v44 >> 1)
        {
          v36 = sub_1DAA9A3B0((v44 > 1), v45 + 1, 1, v36);
        }

        v35 += 2;
        *(v36 + 2) = v45 + 1;
        v46 = &v36[16 * v45];
        *(v46 + 4) = 0;
        *(v46 + 5) = 0xE000000000000000;
        --v39;
      }

      while (v39);

      v34 = a2;
      v28 = v53;
      v31 = v51;
      v35 = v52;
    }
  }

  while (1)
  {
    v38 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v38 >= v32)
    {

      MEMORY[0x1EEE9AC00](v47);
      sub_1DAAA167C();
      sub_1DACB8BB4();

      *(swift_allocObject() + 16) = v6;
      v48 = sub_1DACB89D4();
      sub_1DABAF8C4(0);
      v49 = sub_1DACB8A64();

      return v49;
    }

    v37 = *(v28 + 8 * v38);
    ++v33;
    if (v37)
    {
      v33 = v38;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DABAED64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a1 + 64;
  v6 = 1 << *(*a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*a1 + 64);
  v9 = (v6 + 63) >> 6;
  sub_1DACB71E4();
  v60 = MEMORY[0x1E69E7CC8];
  v78 = v4;
  v10 = 0;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      *a3 = v60;
      return result;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(v4 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(v4 + 56) + 104 * v13;
        v18 = *v17;
        v19 = *(v17 + 32);
        v64 = *(v17 + 16);
        v65 = v19;
        v63 = v18;
        v20 = *(v17 + 48);
        v21 = *(v17 + 64);
        v22 = *(v17 + 80);
        v69 = *(v17 + 96);
        v67 = v21;
        v68 = v22;
        v66 = v20;
        v70[0] = v16;
        v70[1] = v15;
        v71 = v63;
        v72 = v64;
        v75 = v21;
        v76 = v22;
        v77 = v69;
        v73 = v65;
        v74 = v20;
        v23 = sub_1DACB93B4();
        v25 = v24;
        if (*(a2 + 16))
        {
          v26 = v23;
          sub_1DAB69868(&v63, v62);
          sub_1DAAA3874(v70, v62, sub_1DABAF39C);
          v27 = a2;
          v28 = sub_1DAA4BF3C(v26, v25);
          LOBYTE(v26) = v29;

          if (v26)
          {
            v30 = (*(v27 + 56) + 16 * v28);
            v31 = v30[1];
            v58 = *v30;
            sub_1DAA615E0(0, &qword_1EE11F538, &type metadata for StockRecord, MEMORY[0x1E69E6F90]);
            v32 = swift_allocObject();
            v33 = v67;
            *(v32 + 80) = v66;
            *(v32 + 96) = v33;
            *(v32 + 112) = v68;
            *(v32 + 128) = v69;
            v34 = v63;
            *(v32 + 16) = xmmword_1DACC1D20;
            *(v32 + 32) = v34;
            v35 = v65;
            *(v32 + 48) = v64;
            *(v32 + 64) = v35;
            v36 = *(v60 + 16);
            sub_1DACB71E4();
            if (v36 && (sub_1DAA4BF3C(v58, v31), (v37 & 1) != 0))
            {
              v38 = sub_1DACB71E4();
            }

            else
            {
              v38 = MEMORY[0x1E69E7CC0];
            }

            v62[0] = v32;
            sub_1DAC288A4(v38);
            v56 = v62[0];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v62[0] = v60;
            v57 = v31;
            v41 = sub_1DAA4BF3C(v58, v31);
            v42 = *(v60 + 16);
            v43 = (v40 & 1) == 0;
            v44 = v42 + v43;
            if (__OFADD__(v42, v43))
            {
              goto LABEL_33;
            }

            if (*(v60 + 24) >= v44)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v54 = v40;
                sub_1DAB6630C();
                v40 = v54;
              }

              v45 = v58;
            }

            else
            {
              v61 = v40;
              sub_1DAB61724(v44, isUniquelyReferenced_nonNull_native);
              v45 = v58;
              v46 = sub_1DAA4BF3C(v58, v57);
              v48 = v47 & 1;
              v40 = v61;
              if ((v61 & 1) != v48)
              {
                goto LABEL_35;
              }

              v41 = v46;
            }

            v49 = v62[0];
            v60 = v62[0];
            if (v40)
            {
              *(*(v62[0] + 56) + 8 * v41) = v56;
            }

            else
            {
              *(v62[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
              v50 = (v49[6] + 16 * v41);
              *v50 = v45;
              v50[1] = v57;
              *(v49[7] + 8 * v41) = v56;
              v51 = v49[2];
              v52 = __OFADD__(v51, 1);
              v53 = v51 + 1;
              if (v52)
              {
                goto LABEL_34;
              }

              v49[2] = v53;
            }

            a2 = v27;
            sub_1DAAA3938(v70, sub_1DABAF39C);
            v4 = v78;
            v10 = v11;
            if (!v8)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_1DABAF400(&v63);
            sub_1DAAA3938(v70, sub_1DABAF39C);
            v10 = v11;
            a2 = v27;
            v4 = v78;
            if (!v8)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {

          v10 = v11;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v10;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

unint64_t sub_1DABAF19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB91E4();

  return sub_1DABAF1F8(a1, v6, a2, a3);
}

unint64_t sub_1DABAF1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1DACB9264();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

void sub_1DABAF39C()
{
  if (!qword_1EE11FC20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FC20);
    }
  }
}

uint64_t sub_1DABAF454(uint64_t a1)
{
  v2 = *(v1 + 40);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1DABAF4E0()
{
  result = qword_1EE11FA40;
  if (!qword_1EE11FA40)
  {
    sub_1DAA615E0(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FA40);
  }

  return result;
}

unint64_t sub_1DABAF55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1DACB9704())
  {
    sub_1DACB9EB4();
    v13 = sub_1DACB9EA4();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  sub_1DACB71F4();
  result = sub_1DACB9704();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1DACB96D4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1DACB9CB4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1DABAF19C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1DABAF848()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_1DAAA2CE8();
  return sub_1DAAA2E2C(v3, v2, v1, &type metadata for StockRecord, v4);
}

void sub_1DABAF8C4(uint64_t a1)
{
  if (!qword_1EE11FC70)
  {
    sub_1DAA615E0(255, &qword_1EE11FB78, &type metadata for StockRecord, MEMORY[0x1E69E62F8]);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FC70);
    }
  }
}

uint64_t sub_1DABAF950()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABAF980()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABAF9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EarningsCalendarEventModel(0) + 24);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DABAFA2C()
{
  v1 = 0x656449746E657665;
  if (*v0 != 1)
  {
    v1 = 0x73676E696E726165;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D79536B636F7473;
  }
}

uint64_t sub_1DABAFAA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABB233C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABAFACC(uint64_t a1)
{
  v2 = sub_1DABAFD38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABAFB08(uint64_t a1)
{
  v2 = sub_1DABAFD38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABAFB44(void *a1)
{
  sub_1DABB0150(0, &qword_1ECBE8510, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAFD38();
  sub_1DACBA304();
  v9[15] = 0;
  sub_1DACBA094();
  if (!v1)
  {
    v9[14] = 1;
    sub_1DACBA094();
    type metadata accessor for EarningsCalendarEventModel(0);
    v9[13] = 2;
    sub_1DACB7CC4();
    sub_1DAA5D564(&qword_1EE125288, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DACBA0E4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DABAFD38()
{
  result = qword_1ECBE8518;
  if (!qword_1ECBE8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8518);
  }

  return result;
}

uint64_t sub_1DABAFD8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_1DACB7CC4();
  v19 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABB0150(0, &qword_1ECBE8520, MEMORY[0x1E69E6F48]);
  v23 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = type metadata accessor for EarningsCalendarEventModel(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAFD38();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v13 = v21;
  v12 = v22;
  v26 = 0;
  *v11 = sub_1DACB9FA4();
  v11[1] = v14;
  v17[1] = v14;
  v25 = 1;
  v11[2] = sub_1DACB9FA4();
  v11[3] = v15;
  v24 = 2;
  sub_1DAA5D564(&qword_1EE123A38, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DACB9FE4();
  (*(v13 + 8))(v8, v23);
  (*(v19 + 32))(v11 + *(v9 + 24), v5, v12);
  sub_1DABB2464(v11, v20, type metadata accessor for EarningsCalendarEventModel);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1DABB24CC(v11, type metadata accessor for EarningsCalendarEventModel);
}

void sub_1DABB0150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABAFD38();
    v7 = a3(a1, &type metadata for EarningsCalendarEventModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DABB026C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EarningsCalendarEventModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  sub_1DACB71F4();
  sub_1DACB8144();

  swift_beginAccess();
  v13 = *(v2 + 24);
  if (*(v13 + 16) && (v14 = sub_1DAA4BF3C(v11, v12), (v15 & 1) != 0))
  {
    sub_1DABB2464(*(v13 + 56) + *(v5 + 72) * v14, v10, type metadata accessor for EarningsCalendarEventModel);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(v5 + 56))(v10, v16, 1, v4);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1DAA633E8(v10, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
    swift_endAccess();
    v17 = 0;
  }

  else
  {
    sub_1DABB2464(v10, v7, type metadata accessor for EarningsCalendarEventModel);
    sub_1DAA633E8(v10, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
    swift_endAccess();
    v17 = *(v7 + 2);
    sub_1DACB71E4();
    sub_1DABB24CC(v7, type metadata accessor for EarningsCalendarEventModel);
  }

  sub_1DACB71F4();
  sub_1DACB8154();

  return v17;
}

uint64_t sub_1DABB0524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_1DACB71F4();
  sub_1DACB8144();

  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16) && (v7 = sub_1DAA4BF3C(v4, v5), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for EarningsCalendarEventModel(0);
    v12 = *(v11 - 8);
    sub_1DABB2464(v10 + *(v12 + 72) * v9, a2, type metadata accessor for EarningsCalendarEventModel);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for EarningsCalendarEventModel(0);
    (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  swift_endAccess();
  sub_1DACB71F4();
  sub_1DACB8154();
}

uint64_t sub_1DABB06A8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a2;
  v52 = a3;
  v57 = sub_1DACB8FB4();
  v60 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB9004();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1DACB8FC4();
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for EarningsCalendarEventModel(0);
  v16 = *(v15 - 8);
  v48 = *(v16 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = a1[7];
  v69 = a1[6];
  v70 = v21;
  v71 = *(a1 + 16);
  v22 = a1[3];
  v65 = a1[2];
  v66 = v22;
  v23 = a1[5];
  v67 = a1[4];
  v68 = v23;
  v24 = a1[1];
  v63 = *a1;
  v64 = v24;
  sub_1DACB71F4();
  sub_1DACB8144();

  v25 = v64;
  v26 = *(v15 + 24);
  v27 = sub_1DACB7CC4();
  (*(*(v27 - 8) + 16))(&v20[v26], v51, v27);
  *v20 = v25;
  *(v20 + 2) = v52;
  *(v20 + 3) = a4;
  sub_1DABB2464(v20, v14, type metadata accessor for EarningsCalendarEventModel);
  (*(v16 + 56))(v14, 0, 1, v15);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  v54 = v5;
  sub_1DAB596FC(v14, v25, *(&v25 + 1));
  swift_endAccess();
  sub_1DAA57C58();
  v29 = v49;
  v28 = v50;
  v30 = v53;
  (*(v50 + 104))(v49, *MEMORY[0x1E69E7F88], v53);
  v52 = sub_1DACB9984();
  (*(v28 + 8))(v29, v30);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = v47;
  sub_1DABB2464(v20, v47, type metadata accessor for EarningsCalendarEventModel);
  v33 = (*(v16 + 80) + 160) & ~*(v16 + 80);
  v34 = swift_allocObject();
  v35 = v67;
  *(v34 + 104) = v68;
  v36 = v70;
  *(v34 + 120) = v69;
  *(v34 + 136) = v36;
  v37 = v63;
  *(v34 + 40) = v64;
  v38 = v66;
  *(v34 + 56) = v65;
  *(v34 + 72) = v38;
  *(v34 + 88) = v35;
  *(v34 + 16) = v31;
  *(v34 + 152) = v71;
  *(v34 + 24) = v37;
  sub_1DAA7C5C4(v32, v34 + v33, type metadata accessor for EarningsCalendarEventModel);
  v62[4] = sub_1DABB259C;
  v62[5] = v34;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 1107296256;
  v62[2] = sub_1DAA5796C;
  v62[3] = &block_descriptor_17;
  v39 = _Block_copy(v62);
  sub_1DACB71F4();
  sub_1DAA806E4(&v63, v61);
  v40 = v55;
  sub_1DACB8FD4();
  v61[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5D564(&qword_1EE124040, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v41 = MEMORY[0x1E69E7F60];
  sub_1DAA5D42C(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F64C(&qword_1EE123EB0, &qword_1EE123EC0, v41);
  v43 = v56;
  v42 = v57;
  sub_1DACB9BB4();
  v44 = v52;
  MEMORY[0x1E1277440](0, v40, v43, v39);
  _Block_release(v39);

  (*(v60 + 8))(v43, v42);
  (*(v58 + 8))(v40, v59);
  sub_1DABB24CC(v20, type metadata accessor for EarningsCalendarEventModel);

  sub_1DACB71F4();
  sub_1DACB8154();
}

void sub_1DABB0DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAA5D42C(0, &qword_1EE11D340, sub_1DAA5DB88, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6 - 8];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DACB88F4();
    sub_1DACB8D84();

    sub_1DAA5DB88(0);
    v9 = v8;
    v10 = *(v8 - 8);
    if ((*(v10 + 48))(v7, 1, v8) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DAA5D42C(0, &unk_1ECBE8540, sub_1DABB2604, MEMORY[0x1E69E6F90]);
      sub_1DABB2604(0);
      v12 = v11 - 8;
      v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1DACC1D20;
      v15 = (v14 + v13);
      v16 = *(v12 + 56);
      v20 = *(a2 + 16);
      *v15 = v20;
      sub_1DABB2464(a3, v15 + v16, type metadata accessor for EarningsCalendarEventModel);
      sub_1DAAA1344(&v20, v19);
      sub_1DAB691F8(v14);
      swift_setDeallocating();
      sub_1DABB24CC(v15, sub_1DABB2604);
      swift_deallocClassInstance();
      sub_1DACB8D44();

      (*(v10 + 8))(v7, v9);
      v17 = sub_1DACB89D4();
      sub_1DACB8AA4();
    }
  }
}

uint64_t sub_1DABB10D4(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  if (qword_1EE11DF88 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE13E268;
  v6 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1DAA443C8();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1DACB8C64(a2, a3, 2, &dword_1DAA3F000, v5, v6, v7);
}

uint64_t sub_1DABB120C(__int128 *a1)
{
  v35 = sub_1DACB8FB4();
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DACB9004();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1DACB8FC4();
  v5 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = a1[7];
  v47 = a1[6];
  v48 = v11;
  v49 = *(a1 + 16);
  v12 = a1[3];
  v43 = a1[2];
  v44 = v12;
  v13 = a1[5];
  v45 = a1[4];
  v46 = v13;
  v14 = a1[1];
  v41 = *a1;
  v42 = v14;
  sub_1DACB71F4();
  sub_1DACB8144();

  v15 = v42;
  swift_beginAccess();
  sub_1DAB5FE78(v15, *(&v15 + 1), v10);
  swift_endAccess();
  sub_1DAA633E8(v10, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
  sub_1DAA57C58();
  v16 = v31;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F80], v31);
  v32 = sub_1DACB9984();
  (*(v5 + 8))(v7, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v45;
  *(v18 + 104) = v46;
  v20 = v48;
  *(v18 + 120) = v47;
  *(v18 + 136) = v20;
  v21 = v41;
  *(v18 + 40) = v42;
  v22 = v44;
  *(v18 + 56) = v43;
  *(v18 + 72) = v22;
  *(v18 + 88) = v19;
  *(v18 + 16) = v17;
  *(v18 + 152) = v49;
  *(v18 + 24) = v21;
  v40[4] = sub_1DABB2590;
  v40[5] = v18;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 1107296256;
  v40[2] = sub_1DAA5796C;
  v40[3] = &block_descriptor_14;
  v23 = _Block_copy(v40);
  sub_1DACB71F4();
  sub_1DAA806E4(&v41, v39);
  v24 = v33;
  sub_1DACB8FD4();
  v39[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5D564(&qword_1EE124040, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v25 = MEMORY[0x1E69E7F60];
  sub_1DAA5D42C(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F64C(&qword_1EE123EB0, &qword_1EE123EC0, v25);
  v27 = v34;
  v26 = v35;
  sub_1DACB9BB4();
  v28 = v32;
  MEMORY[0x1E1277440](0, v24, v27, v23);
  _Block_release(v23);

  (*(v38 + 8))(v27, v26);
  (*(v36 + 8))(v24, v37);

  sub_1DACB71F4();
  sub_1DACB8154();
}

void sub_1DABB1764(uint64_t a1, uint64_t a2)
{
  sub_1DAA5D42C(0, &qword_1EE11D340, sub_1DAA5DB88, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DACB88F4();
    sub_1DACB8D84();

    sub_1DAA5DB88(0);
    v7 = v6;
    v8 = *(v6 - 8);
    if ((*(v8 + 48))(v5, 1, v6) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DAA61630(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1DACC1D20;
      v10 = *(a2 + 24);
      *(v9 + 32) = *(a2 + 16);
      *(v9 + 40) = v10;
      sub_1DACB71E4();
      sub_1DACB8D54();

      (*(v8 + 8))(v5, v7);
      v11 = sub_1DACB89D4();
      sub_1DACB8AA4();
    }
  }
}

uint64_t sub_1DABB1988(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DACB8FB4();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB9004();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB8FC4();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  sub_1DACB71F4();
  sub_1DACB8144();

  v49 = a1;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (v49 + 40);
    do
    {
      v17 = *(v14 - 1);
      v16 = *v14;
      swift_beginAccess();
      sub_1DACB71E4();
      v18 = sub_1DAA4BF3C(v17, v16);
      if (v19)
      {
        v20 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v2 + 24);
        v50 = v22;
        *(v2 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DAB664AC();
          v22 = v50;
        }

        v23 = *(v22 + 56);
        v24 = type metadata accessor for EarningsCalendarEventModel(0);
        v25 = *(v24 - 8);
        sub_1DAA7C5C4(v23 + *(v25 + 72) * v20, v12, type metadata accessor for EarningsCalendarEventModel);
        sub_1DAB64C98(v20, v22);
        *(v2 + 24) = v22;

        (*(v25 + 56))(v12, 0, 1, v24);
      }

      else
      {
        v15 = type metadata accessor for EarningsCalendarEventModel(0);
        (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
      }

      swift_endAccess();

      sub_1DAA633E8(v12, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  sub_1DAA57C58();
  v27 = v40;
  v26 = v41;
  v28 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x1E69E7F80], v42);
  v29 = sub_1DACB9984();
  (*(v26 + 8))(v27, v28);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v49;
  *(v31 + 16) = v30;
  *(v31 + 24) = v32;
  aBlock[4] = sub_1DABB266C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_24_0;
  v33 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  v34 = v43;
  sub_1DACB8FD4();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1DAA5D564(&qword_1EE124040, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v35 = MEMORY[0x1E69E7F60];
  sub_1DAA5D42C(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F64C(&qword_1EE123EB0, &qword_1EE123EC0, v35);
  v36 = v46;
  v37 = v48;
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v34, v36, v33);
  _Block_release(v33);

  (*(v47 + 8))(v36, v37);
  (*(v44 + 8))(v34, v45);

  sub_1DACB71F4();
  sub_1DACB8154();
}

void sub_1DABB1FF8(uint64_t a1, uint64_t a2)
{
  sub_1DAA5D42C(0, &qword_1EE11D340, sub_1DAA5DB88, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DACB88F4();
    sub_1DACB8D84();

    sub_1DAA5DB88(0);
    v6 = v5;
    v7 = *(v5 - 8);
    if ((*(v7 + 48))(v4, 1, v5) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DACB8D54();
      (*(v7 + 8))(v4, v6);
      v8 = sub_1DACB89D4();
      sub_1DACB8AA4();
    }
  }
}

uint64_t sub_1DABB21B8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1DABB2224()
{
  result = qword_1ECBE8528;
  if (!qword_1ECBE8528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8528);
  }

  return result;
}

unint64_t sub_1DABB2290()
{
  result = qword_1ECBE8530;
  if (!qword_1ECBE8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8530);
  }

  return result;
}

unint64_t sub_1DABB22E8()
{
  result = qword_1ECBE8538;
  if (!qword_1ECBE8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8538);
  }

  return result;
}

uint64_t sub_1DABB233C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D79536B636F7473 && a2 == 0xEB000000006C6F62;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DABB2464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DABB24CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DABB252C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EarningsCalendarEventModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1DABB259C()
{
  v1 = *(type metadata accessor for EarningsCalendarEventModel(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 160) & ~*(v1 + 80));

  sub_1DABB0DB4(v2, v0 + 24, v3);
}

void sub_1DABB2604(uint64_t a1)
{
  if (!qword_1ECBE7DF8)
  {
    type metadata accessor for EarningsCalendarEventModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7DF8);
    }
  }
}

uint64_t sub_1DABB26E4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

id sub_1DABB271C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = &v2[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedSource];
  *v4 = 0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 5) = 0;
  v4[48] = 2;
  v5 = OBJC_IVAR____TtC10StocksCore21IdentificationService_sensitiveUserDefaults;
  if (qword_1EE123E10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_1EE123E18;
  *&v2[v5] = qword_1EE123E18;
  v7 = OBJC_IVAR____TtC10StocksCore21IdentificationService_stocksKitDefaults;
  v8 = qword_1EE123E00;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE13E478;
  *&v2[v7] = qword_1EE13E478;
  v11 = &v2[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers];
  v12 = MEMORY[0x1E69E7CC0];
  *v11 = 0;
  *(v11 + 1) = v12;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = v10;
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_1DABB2914()
{
  if (!qword_1ECBE8578)
  {
    v0 = sub_1DACB8C24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8578);
    }
  }
}

void sub_1DABB2998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DABB2A20(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedSource];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedSource]);
  sub_1DAA65C58(&v3[2]);
  sub_1DABB3E74(a1, &v3[2]);
  os_unfair_lock_unlock(v3);
  sub_1DABB3E74(a1, v23);
  if (v24)
  {
    if (v24 == 1)
    {
      sub_1DAA4D460(v23, aBlock);
      v4 = v19;
      v5 = v20;
      __swift_project_boxed_opaque_existential_1(aBlock, v19);
      (*(v5 + 1))(v4, v5);
      sub_1DAA4D678(aBlock, v22);
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      sub_1DAA4D460(v22, v6 + 24);
      v7 = v1;
      v8 = sub_1DACB89D4();
      sub_1DACB8A64();

      v9 = v19;
      v10 = v20;
      __swift_project_boxed_opaque_existential_1(aBlock, v19);
      (*(v10 + 3))(v9, v10);
      *(swift_allocObject() + 16) = v7;
      v11 = v7;
      v12 = sub_1DACB89D4();
      sub_1DACB8A64();

      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }
  }

  else
  {
    v13 = *&v23[0];
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = v13;
    v20 = sub_1DABB3F1C;
    v21 = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DABB2DB4;
    v19 = &block_descriptor_15;
    v15 = _Block_copy(aBlock);
    v16 = v1;
    v17 = v13;

    [v17 syncWithCompletion_];
    _Block_release(v15);
  }
}

id sub_1DABB2CC4(int a1, int a2, uint64_t a3, id a4)
{
  v6 = [a4 stocks_generateFeldsparIDIfNeeded];
  v7 = sub_1DACB9324();
  v9 = v8;

  sub_1DABB40D4(v7, v9);

  v10 = [a4 adsUserID];
  if (!v10)
  {
    v10 = [a4 stocks_resetAdsUserID];
  }

  v11 = v10;
  v12 = sub_1DACB9324();
  v14 = v13;

  sub_1DABB4384(v12, v14);

  return [a4 addObserver_];
}

void sub_1DABB2DB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1DACB71F4();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1DABB2E2C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1DACB71E4();
  sub_1DABB40D4(v5, v6);

  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  return (*(v8 + 120))(a2, &off_1F5689168, v7, v8);
}

uint64_t sub_1DABB2EEC()
{
  v1 = v0;
  v2 = sub_1DACB7D04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC10StocksCore21IdentificationService_sensitiveUserDefaults);
  v7 = sub_1DACB92F4();
  v8 = [v6 stringForKey_];

  if (!v8)
  {
    sub_1DACB6D04();
    v9 = sub_1DACB7CE4();
    (*(v3 + 8))(v5, v2);
    v13 = sub_1DACB92F4();
    v14 = sub_1DACB92F4();
    [v6 setObject:v13 forKey:v14];

    v15 = *(v1 + OBJC_IVAR____TtC10StocksCore21IdentificationService_stocksKitDefaults);
    v16 = sub_1DACB92F4();
    v17 = sub_1DACB92F4();
    [v15 setObject:v16 forKey:v17];

LABEL_6:
    return v9;
  }

  v9 = sub_1DACB9324();
  v10 = *(v1 + OBJC_IVAR____TtC10StocksCore21IdentificationService_stocksKitDefaults);
  v11 = sub_1DACB92F4();
  v12 = [v10 stringForKey_];

  if (!v12)
  {
    v17 = sub_1DACB92F4();
    [v10 setObject:v8 forKey:v17];

    goto LABEL_6;
  }

  return v9;
}

uint64_t sub_1DABB3148(uint64_t a1)
{
  v2 = sub_1DACB7D04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedSource);
  os_unfair_lock_lock(v6);
  sub_1DABB3E74(&v6[2], v17);
  os_unfair_lock_unlock(v6);
  if (v18)
  {
    if (v18 == 1)
    {
      sub_1DAA4D460(v17, v14);
      v7 = v15;
      v8 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v9 = (*(v8 + 16))(v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      sub_1DACB6D04();
      v9 = sub_1DACB7CE4();
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    v10 = *&v17[0];
    v11 = [*&v17[0] stocks_resetFeldsparID];
    v9 = sub_1DACB9324();
  }

  return v9;
}

uint64_t sub_1DABB32EC()
{
  v1 = sub_1DACB7D04();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC10StocksCore21IdentificationService_sensitiveUserDefaults);
  v6 = sub_1DACB92F4();
  v7 = [v5 stringForKey_];

  if (v7)
  {
    v8 = sub_1DACB9324();

    return v8;
  }

  else
  {
    sub_1DACB6D04();
    v10 = sub_1DACB7CE4();
    (*(v2 + 8))(v4, v1);
    v11 = sub_1DACB92F4();
    v12 = sub_1DACB92F4();
    [v5 setObject:v11 forKey:v12];

    return v10;
  }
}

uint64_t sub_1DABB3490(uint64_t a1)
{
  v2 = sub_1DACB7D04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedSource);
  os_unfair_lock_lock(v6);
  sub_1DABB3E74(&v6[2], v17);
  os_unfair_lock_unlock(v6);
  if (v18)
  {
    if (v18 == 1)
    {
      sub_1DAA4D460(v17, v14);
      v7 = v15;
      v8 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v9 = (*(v8 + 32))(v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      sub_1DACB6D04();
      v9 = sub_1DACB7CE4();
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    v10 = *&v17[0];
    v11 = [*&v17[0] stocks_resetAdsUserID];
    v9 = sub_1DACB9324();
  }

  return v9;
}

uint64_t sub_1DABB3634(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_65;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      if (v6)
      {
        v8 = sub_1DACB9E14();
      }

      else
      {
        v8 = *(v5 + 16);
      }

      goto LABEL_21;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
LABEL_58:
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
        __break(1u);
LABEL_65:
        v7 = sub_1DACB9E14();
        goto LABEL_3;
      }

      sub_1DACB71F4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      goto LABEL_59;
    }
  }

  v12 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_72;
  }

  if (v6)
  {
    if (v12 != sub_1DACB9E14())
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v4 >> 62)
    {
      v13 = sub_1DACB9E14();
      if (v13 >= v8)
      {
LABEL_23:
        sub_1DACA6EA8(v8, v13);
        _s10StocksCore13ObserverProxyCMa_0();
        v14 = swift_allocObject();
        *(v14 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v14 + 24) = a3;
        v15 = swift_unknownObjectWeakAssign();
        MEMORY[0x1E12770F0](v15);
        if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return sub_1DACB96F4();
        }

LABEL_68:
        sub_1DACB9694();
        return sub_1DACB96F4();
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  if (v12 == *(v5 + 16))
  {
    goto LABEL_21;
  }

LABEL_25:
  v5 = v8 + 5;
  while (2)
  {
    v16 = v5 - 4;
    v6 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v5 - 4, v4);
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      sub_1DACB71F4();
    }

    v17 = swift_unknownObjectWeakLoadStrong();

    if (!v17)
    {
      goto LABEL_49;
    }

    result = swift_unknownObjectRelease();
    if (v16 == v8)
    {
      goto LABEL_48;
    }

    if (v6)
    {
      v18 = MEMORY[0x1E12777A0](v8, v4);
      v19 = MEMORY[0x1E12777A0](v5 - 4, v4);
      goto LABEL_38;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v20)
      {
        goto LABEL_70;
      }

      if (v16 >= v20)
      {
        goto LABEL_71;
      }

      v18 = *(v4 + 8 * v8 + 32);
      v19 = *(v4 + 8 * v5);
      sub_1DACB71F4();
      sub_1DACB71F4();
LABEL_38:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_1DACA83E4();
        v21 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v21) = 0;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

      if ((v4 & 0x8000000000000000) != 0 || v21)
      {
        v4 = sub_1DACA83E4();
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v16 & 0x8000000000000000) != 0)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v16 >= *(v6 + 16))
      {
        goto LABEL_64;
      }

      *(v6 + 8 * v5) = v18;

      *a1 = v4;
LABEL_48:
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_63;
      }

LABEL_49:
      v6 = v5 - 3;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_62;
      }

      if (v4 >> 62)
      {
        v22 = sub_1DACB9E14();
      }

      else
      {
        v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v5;
      if (v6 == v22)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1DABB3A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = (a3)(*v4, a2);
  a4(v6);
}

void sub_1DABB3ADC(uint64_t a1, uint64_t a2)
{
  v5 = *v2 + OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers;
  os_unfair_lock_lock(v5);
  sub_1DABB3634((v5 + 8), a1, a2);

  os_unfair_lock_unlock(v5);
}

void sub_1DABB3B50(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers;
  os_unfair_lock_lock(v3);
  swift_unknownObjectRetain();
  v4 = sub_1DAAFB9C8((v3 + 8), a1);
  swift_unknownObjectRelease();
  v5 = *(v3 + 8);
  if (v5 >> 62)
  {
    v6 = sub_1DACB9E14();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 < v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1DACA6EA8(v4, v6);

  os_unfair_lock_unlock(v3);
}

void sub_1DABB3C60(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = a3;
  v15 = a1;
  v10 = [v9 *a5];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1DACB9324();
    v14 = v13;

    a6(v12, v14);
  }

  else
  {
  }
}

uint64_t sub_1DABB3D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  sub_1DACB71E4();
  a6(a2, a3);
}

uint64_t sub_1DABB3DFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);

  return a6(v11, a2, a3, v6, v9, v10);
}

uint64_t sub_1DABB3ECC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1DACB71E4();
  sub_1DABB4384(v1, v2);
}

uint64_t sub_1DABB3F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v15, a2, a3, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DABB3FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v12 + 16))(v15, a2, a3, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void sub_1DABB40D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (sub_1DABB2EEC() == a1 && v6 == a2)
  {
LABEL_3:

    return;
  }

  v7 = sub_1DACBA174();

  if (v7)
  {
    return;
  }

  v8 = *&v2[OBJC_IVAR____TtC10StocksCore21IdentificationService_sensitiveUserDefaults];
  v9 = sub_1DACB92F4();
  v10 = sub_1DACB92F4();
  [v8 setObject:v9 forKey:v10];

  v11 = *&v3[OBJC_IVAR____TtC10StocksCore21IdentificationService_stocksKitDefaults];
  v12 = sub_1DACB92F4();
  v13 = sub_1DACB92F4();
  [v11 setObject:v12 forKey:v13];

  v14 = &v3[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers];
  os_unfair_lock_lock(&v3[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers]);
  v15 = *(v14 + 1);
  sub_1DACB71E4();
  os_unfair_lock_unlock(v14);
  if (v15 >> 62)
  {
    v16 = sub_1DACB9E14();
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  v25 = a1;
  v26 = a2;
  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1E12777A0](i, v15);
      }

      else
      {
        v23 = *(v15 + 8 * i + 32);
        sub_1DACB71F4();
      }

      v28[3] = ObjectType;
      v28[4] = &off_1F5689180;
      v28[0] = v3;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v23 + 24);
        v19 = swift_getObjectType();
        v20 = v16;
        v21 = *(v18 + 8);
        v22 = v3;
        v21(v28, v25, v26, v19, v18);
        v16 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v3;
      }

      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }
}

void sub_1DABB4384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (sub_1DABB32EC() == a1 && v6 == a2)
  {
LABEL_3:

    return;
  }

  v7 = sub_1DACBA174();

  if (v7)
  {
    return;
  }

  v8 = *&v2[OBJC_IVAR____TtC10StocksCore21IdentificationService_sensitiveUserDefaults];
  v9 = sub_1DACB92F4();
  v10 = sub_1DACB92F4();
  [v8 setObject:v9 forKey:v10];

  v11 = &v3[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers];
  os_unfair_lock_lock(&v3[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers]);
  v12 = *(v11 + 1);
  sub_1DACB71E4();
  os_unfair_lock_unlock(v11);
  if (v12 >> 62)
  {
    v13 = sub_1DACB9E14();
    if (!v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }
  }

  v22 = a1;
  v23 = a2;
  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v13; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1E12777A0](i, v12);
      }

      else
      {
        v20 = *(v12 + 8 * i + 32);
        sub_1DACB71F4();
      }

      v25[3] = ObjectType;
      v25[4] = &off_1F5689180;
      v25[0] = v3;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v20 + 24);
        v16 = swift_getObjectType();
        v17 = v13;
        v18 = *(v15 + 16);
        v19 = v3;
        v18(v25, v22, v23, v16, v15);
        v13 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = v3;
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }
}

uint64_t sub_1DABB45EC(uint64_t a1)
{
  sub_1DABB2964(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DABB4648()
{
  v1 = sub_1DACB9364();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 stocksFields];
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = [v5 stocksFeedConfigJSON];
  swift_unknownObjectRelease();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DACB9324();

  sub_1DACB7554();
  swift_allocObject();
  sub_1DACB7544();
  sub_1DACB9354();
  v7 = sub_1DACB9334();
  v9 = v8;
  result = (*(v2 + 8))(v4, v1);
  if (v9 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1DABB4834();
    sub_1DACB7524();
    sub_1DAB4D534(v7, v9);

    return v11[1];
  }

  return result;
}

unint64_t sub_1DABB4834()
{
  result = qword_1EE11F0A8;
  if (!qword_1EE11F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F0A8);
  }

  return result;
}

uint64_t sub_1DABB4888()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE85F0);
  __swift_project_value_buffer(v6, qword_1ECBE85F0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}