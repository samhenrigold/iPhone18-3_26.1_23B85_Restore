uint64_t sub_26128FAFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_26139EF7C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  type metadata accessor for Mock();
  v17 = sub_26129B1A8(a1);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v47 = a2;
    v50[0] = v17;
    v50[1] = v18;
    v48 = 0x2F2F3A7370747468;
    v49 = 0xE800000000000000;
    sub_26124C7CC();
    if ((sub_2613A201C() & 1) == 0)
    {

      goto LABEL_9;
    }

    sub_26139EF5C();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F220, qword_2613A5530);
LABEL_9:
      v20 = 1;
      a2 = v47;
      return (*(v11 + 56))(a2, v20, 1, v10);
    }

    v21 = *(v11 + 32);
    v21(v16, v9, v10);
    v22 = sub_26129B7C4();
    sub_26124AA44(v22, v6);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v6, 1, v23) == 1)
    {
      sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v46 = v21;
      (*(v11 + 16))(v14, v16, v10);
      v25 = sub_2613A122C();
      v45 = sub_2613A1D7C();
      if (os_log_type_enabled(v25, v45))
      {
        v26 = swift_slowAlloc();
        v42 = v23;
        v27 = v26;
        v44 = swift_slowAlloc();
        v50[0] = v44;
        *v27 = 136315394;
        v28 = sub_2612D41F8(a1);
        v43 = v25;
        v30 = sub_26124C11C(v28, v29, v50);

        v31 = v27;
        v41 = v27;
        v23 = v42;
        *(v31 + 1) = v30;
        *(v31 + 6) = 2080;
        sub_261291DF0();
        v32 = sub_2613A23EC();
        v34 = v33;
        (*(v11 + 8))(v14, v10);
        v35 = sub_26124C11C(v32, v34, v50);

        v36 = v41;
        *(v41 + 14) = v35;
        v37 = v43;
        _os_log_impl(&dword_261243000, v43, v45, "Using override URL for %s: %s", v36, 0x16u);
        v38 = v44;
        swift_arrayDestroy();
        MEMORY[0x266701350](v38, -1, -1);
        MEMORY[0x266701350](v36, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v14, v10);
      }

      (*(v24 + 8))(v6, v23);
      v21 = v46;
    }

    a2 = v47;
    v21(v47, v16, v10);
    v20 = 0;
  }

  else
  {

    v20 = 1;
  }

  return (*(v11 + 56))(a2, v20, 1, v10);
}

uint64_t sub_261290024(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  result = 7759204;
  switch(v2)
  {
    case 1:
      result = 24945;
      break;
    case 2:
      result = 3236209;
      break;
    case 3:
      result = 3301745;
      break;
    case 4:
      result = 3367281;
      break;
    case 5:
      result = 3432817;
      break;
    case 6:
      result = 3498353;
      break;
    case 7:
      result = 3563889;
      break;
    case 8:
      result = 0x74656B72616D6171;
      break;
    case 9:
      result = 0x7466617264;
      break;
    case 10:
      result = 0x676E6967617473;
      break;
    case 11:
      result = 1953654115;
      break;
    case 12:
      result = 1685025392;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26129017C(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  v5 = 0xE000000000000000;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2613A211C();

  v11 = 0xD000000000000012;
  v12 = 0x80000002613B94D0;
  if (a1 <= 7u)
  {
LABEL_2:
    v9 = 0;
    v10 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v8[15] = a1;
    sub_2613A21FC();
    v6 = v9;
    v5 = v10;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v5 = 0xE600000000000000;
      v6 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v6 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v6 = 6385965;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == 8)
  {
    v5 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v6, v5);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v4, &qword_27FE9F220, qword_2613A5530);
}

uint64_t sub_26129035C(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  v5 = 0xE000000000000000;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2613A211C();

  v11 = 0xD000000000000012;
  v12 = 0x80000002613B94D0;
  if (a1 <= 7u)
  {
LABEL_2:
    v9 = 0;
    v10 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v8[15] = a1;
    sub_2613A21FC();
    v6 = v9;
    v5 = v10;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v5 = 0xE600000000000000;
      v6 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v6 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v6 = 6385965;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == 8)
  {
    v5 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v6, v5);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v4, &qword_27FE9F220, qword_2613A5530);
}

uint64_t sub_26129053C(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  v5 = 0xE000000000000000;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2613A211C();

  v11 = 0xD000000000000012;
  v12 = 0x80000002613B94D0;
  if (a1 <= 7u)
  {
LABEL_2:
    v9 = 0;
    v10 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v8[15] = a1;
    sub_2613A21FC();
    v6 = v9;
    v5 = v10;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v5 = 0xE600000000000000;
      v6 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v6 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v6 = 6385965;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == 8)
  {
    v5 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v6, v5);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v4, &qword_27FE9F220, qword_2613A5530);
}

uint64_t sub_26129071C(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  v5 = 0xE000000000000000;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2613A211C();

  v11 = 0xD000000000000012;
  v12 = 0x80000002613B94D0;
  if (a1 <= 7u)
  {
LABEL_2:
    v9 = 0;
    v10 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v8[15] = a1;
    sub_2613A21FC();
    v6 = v9;
    v5 = v10;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v5 = 0xE600000000000000;
      v6 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v6 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v6 = 6385965;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == 8)
  {
    v5 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v6, v5);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v4, &qword_27FE9F220, qword_2613A5530);
}

uint64_t sub_2612908FC(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  v5 = 0xE000000000000000;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2613A211C();

  v11 = 0xD000000000000012;
  v12 = 0x80000002613B94D0;
  if (a1 <= 7u)
  {
LABEL_2:
    v9 = 0;
    v10 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v8[15] = a1;
    sub_2613A21FC();
    v6 = v9;
    v5 = v10;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v5 = 0xE600000000000000;
      v6 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v6 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v6 = 6385965;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == 8)
  {
    v5 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v6, v5);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v4, &qword_27FE9F220, qword_2613A5530);
}

unint64_t sub_261290B0C()
{
  v1 = *v0;
  sub_2613A211C();

  v2 = sub_26128F280(v1);
  MEMORY[0x2666FFEA0](v2);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  return 0xD000000000000012;
}

uint64_t sub_261290BB4(unsigned __int8 a1, char a2)
{
  v2 = 7759204;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7759204;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 24945;
      break;
    case 2:
      v5 = 3236209;
      break;
    case 3:
      v5 = 3301745;
      break;
    case 4:
      v5 = 3367281;
      break;
    case 5:
      v5 = 3432817;
      break;
    case 6:
      v5 = 3498353;
      break;
    case 7:
      v5 = 3563889;
      break;
    case 8:
      v5 = 0x74656B72616D6171;
      v3 = 0xEB00000000676E69;
      break;
    case 9:
      v3 = 0xE500000000000000;
      v5 = 0x7466617264;
      break;
    case 10:
      v3 = 0xE700000000000000;
      v5 = 0x676E6967617473;
      break;
    case 11:
      v3 = 0xE400000000000000;
      v5 = 1953654115;
      break;
    case 12:
      v3 = 0xE400000000000000;
      v5 = 1685025392;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      if (v5 == 24945)
      {
        goto LABEL_37;
      }

      goto LABEL_40;
    case 2:
      if (v5 != 3236209)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 3:
      if (v5 != 3301745)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 4:
      if (v5 != 3367281)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 5:
      if (v5 != 3432817)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 6:
      if (v5 != 3498353)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 7:
      if (v5 != 3563889)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 8:
      v6 = 0xEB00000000676E69;
      if (v5 != 0x74656B72616D6171)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 9:
      v6 = 0xE500000000000000;
      if (v5 != 0x7466617264)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 10:
      v6 = 0xE700000000000000;
      v2 = 0x676E6967617473;
      goto LABEL_36;
    case 11:
      v6 = 0xE400000000000000;
      if (v5 != 1953654115)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 12:
      v6 = 0xE400000000000000;
      if (v5 != 1685025392)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    default:
LABEL_36:
      if (v5 != v2)
      {
        goto LABEL_40;
      }

LABEL_37:
      if (v3 == v6)
      {
        v7 = 1;
      }

      else
      {
LABEL_40:
        v7 = sub_2613A241C();
      }

      return v7 & 1;
  }
}

uint64_t sub_261290E6C(char a1)
{
  v2 = 0x74666172642FLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_2613A211C();
  MEMORY[0x2666FFEA0](0xD000000000000013, 0x80000002613B9620);
  v6 = sub_26128F34C(a1);
  v8 = v7;
  if (v6 == 0x7466617264 && v7 == 0xE500000000000000)
  {

    v9 = 0xE600000000000000;
    goto LABEL_12;
  }

  v10 = v6;
  v11 = sub_2613A241C();

  if (v11)
  {
    v9 = 0xE600000000000000;
    goto LABEL_12;
  }

  if (v10 == 0x74656B72616D6171 && v8 == 0xEB00000000676E69)
  {

LABEL_10:
    v9 = 0xEA0000000000676ELL;
    v2 = 0x6974656B72616D2FLL;
    goto LABEL_12;
  }

  v12 = sub_2613A241C();

  if (v12)
  {
    goto LABEL_10;
  }

  v2 = 0;
  v9 = 0xE000000000000000;
LABEL_12:
  MEMORY[0x2666FFEA0](v2, v9);

  MEMORY[0x2666FFEA0](0xD000000000000039, 0x80000002613B9640);
  v13 = 0xE000000000000000;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_2613A211C();

  v19 = 0xD000000000000013;
  v20 = 0x80000002613B9600;
  if (a1 <= 7u)
  {
LABEL_13:
    v17 = 0;
    v18 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v16[15] = a1;
    sub_2613A21FC();
    v14 = v17;
    v13 = v18;
    goto LABEL_14;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v13 = 0xE600000000000000;
      v14 = 0x65676174732DLL;
      goto LABEL_14;
    }

    if (a1 != 11)
    {
      v14 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a1 == 8)
  {
    v14 = 6385965;
  }

  else
  {
    v14 = 0;
  }

  if (a1 == 8)
  {
    v13 = 0xE300000000000000;
  }

LABEL_14:
  MEMORY[0x2666FFEA0](v14, v13);

  MEMORY[0x2666FFEA0](0x7070612D6E64632ELL, 0xEF2F6D6F632E656CLL);
  sub_26139EF5C();

  sub_26139EEBC();

  return sub_26124C718(v5, &qword_27FE9F220, qword_2613A5530);
}

uint64_t sub_2612911B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_26128F34C(*a1);
  v5 = v4;
  if (v3 == sub_26128F34C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2613A241C();
  }

  return v8 & 1;
}

uint64_t sub_261291238(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  v5 = 0xE000000000000000;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2613A211C();

  v11 = 0xD000000000000013;
  v12 = 0x80000002613B9600;
  if (a1 <= 7u)
  {
LABEL_2:
    v9 = 0;
    v10 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v8[15] = a1;
    sub_2613A21FC();
    v6 = v9;
    v5 = v10;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v5 = 0xE600000000000000;
      v6 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v6 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v6 = 6385965;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == 8)
  {
    v5 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v6, v5);

  MEMORY[0x2666FFEA0](0x7070612D6E64632ELL, 0xEF2F6D6F632E656CLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v4, &qword_27FE9F220, qword_2613A5530);
}

unint64_t sub_261291420()
{
  v1 = *v0;
  sub_2613A211C();

  v2 = sub_26128F280(v1);
  MEMORY[0x2666FFEA0](v2);

  MEMORY[0x2666FFEA0](0x7070612D6E64632ELL, 0xEF2F6D6F632E656CLL);
  return 0xD000000000000013;
}

uint64_t sub_2612914E0()
{
  v1 = (*(*v0 + 80))();
  v3 = v2;
  v4 = (*(*v0 + 88))();
  sub_261291B00(v1, v3, v4, v5);

  sub_26124C7CC();
  sub_2613A1FFC();

  v6 = sub_2613A196C();
  v8 = v7;

  v9 = sub_261291AB4(v6, v8);
  if (v9 == 13)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (sub_26128F34C(v10) == 7759204 && v11 == 0xE300000000000000)
  {
  }

  else
  {
    v13 = sub_2613A241C();

    if ((v13 & 1) == 0)
    {
      return v10;
    }
  }

  return 4;
}

uint64_t sub_261291684()
{
  v1 = (*(*v0 + 80))();
  v3 = v2;
  v4 = (*(*v0 + 88))();
  sub_261291B00(v1, v3, v4, v5);

  sub_26124C7CC();
  sub_2613A1FFC();

  v6 = sub_2613A196C();
  v8 = v7;

  LODWORD(result) = sub_261291AB4(v6, v8);
  if (result == 13)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_2612917C4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (v1)
  {
    v2 = [v1 aa_isSandboxAccount];

    if (v2)
    {
      return 11;
    }
  }

  if (sub_261291BBC())
  {
    return 11;
  }

  return 12;
}

uint64_t sub_261291850(char a1)
{
  v3 = sub_2613A0C2C();
  v4 = v3();

  if (v4)
  {
    v5 = *(*v1 + 96);

    return v5();
  }

  else
  {
    v7 = *v1;
    if (a1)
    {
      v8 = *(v7 + 104);
    }

    else
    {
      v8 = *(v7 + 96);
    }

    return v8();
  }
}

uint64_t sub_261291950()
{
  v1 = sub_2613A0C2C();
  v2 = v1();

  v3 = *v0;
  if (v2)
  {
    v4 = *(v3 + 96);
  }

  else
  {
    v4 = *(v3 + 104);
  }

  return v4();
}

uint64_t sub_261291A18()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (v1 && (v2 = [v1 aa_isSandboxAccount], v1, (v2 & 1) != 0))
  {
    return 9;
  }

  else
  {
    return 12;
  }
}

unint64_t sub_261291AB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2613A228C();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261291B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2613A189C();
  sub_2613A0D1C();
  v6 = sub_2613A189C();

  v7 = CFPreferencesCopyAppValue(v5, v6);

  if (v7 && (swift_dynamicCast() & 1) != 0)
  {
    return v9;
  }

  return a3;
}

uint64_t sub_261291BBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  sub_2613A0D8C();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_2613A189C();

  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    return 0;
  }

  sub_2613A0D7C();
  v6 = sub_2613A189C();

  v7 = [v5 BOOLForKey_];

  if (!v7)
  {

    return 0;
  }

  v8 = sub_26129B7C4();
  sub_26124AA44(v8, v2);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {

    sub_26124C718(v2, &qword_27FE9F560, &qword_2613A3CB0);
    return 1;
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D7C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "Cert profile installed, using CERT environment", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v10 + 8))(v2, v9);
    return 1;
  }
}

unint64_t sub_261291DF0()
{
  result = qword_27FE9F748;
  if (!qword_27FE9F748)
  {
    sub_26139EF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F748);
  }

  return result;
}

unint64_t sub_261291E4C()
{
  result = qword_27FE9F750;
  if (!qword_27FE9F750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F758, qword_2613A5960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F750);
  }

  return result;
}

unint64_t sub_261291EB4()
{
  result = qword_27FE9F760;
  if (!qword_27FE9F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F760);
  }

  return result;
}

unint64_t sub_261291F0C()
{
  result = qword_27FE9F768;
  if (!qword_27FE9F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F768);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ServerEnvironments(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4)
  {
    if ((a2 + 33554188) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776972;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776972;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 0xD;
  v6 = v4 - 13;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerEnvironments(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554188) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xF3)
  {
    v3 = 0;
  }

  if (a2 > 0xF3)
  {
    *result = a2 - 244;
    *(result + 2) = (a2 - 244) >> 16;
    if (v3)
    {
      v4 = ((a2 - 244) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 12;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t _s21ProximityReaderDaemon21EnvironmentDefinitionOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21ProximityReaderDaemon21EnvironmentDefinitionOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2612922A8()
{
  result = qword_27FE9F770;
  if (!qword_27FE9F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F770);
  }

  return result;
}

uint64_t sub_261292350(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_261292414(double a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_2612924DC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t sub_261292580()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_2612925CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t sub_261292670()
{
  swift_beginAccess();
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_2612926BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t sub_261292794(char a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_261292858(double a1)
{
  result = swift_beginAccess();
  *(v1 + 152) = a1;
  return result;
}

uint64_t sub_261292920(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(v3 + 160) = a1;
  *(v3 + 168) = a2;
  *(v3 + 176) = a3 & 1;
  return result;
}

uint64_t sub_2612929C8()
{
  v1 = v0[23];
  v2 = v1;
  if (v1 == 1)
  {
    type metadata accessor for SessionToken();
    v3 = v0[4];
    v4 = v0[5];

    v5 = v3;
    v6 = v0;
    v2 = sub_26124CA28(v5, v4);
    v7 = v0[23];
    v6[23] = v2;

    sub_261292A54(v7);
  }

  sub_261292A64(v1);
  return v2;
}

uint64_t sub_261292A54(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_261292A64(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_261292A74(uint64_t a1)
{
  v2 = *(v1 + 184);
  *(v1 + 184) = a1;
  return sub_261292A54(v2);
}

uint64_t (*sub_261292A84(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2612929C8();
  return sub_261292ACC;
}

uint64_t sub_261292ACC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 184);
  *(v2 + 184) = *a1;
  if (a2)
  {

    sub_261292A54(v3);
  }

  else
  {

    return sub_261292A54(v3);
  }
}

uint64_t sub_261292B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, char a12)
{
  v21 = swift_allocObject();
  *(v21 + 80) = sub_2613A0C5C();
  sub_2613A0C6C();
  *(v21 + 88) = v22;
  *(v21 + 96) = 0;
  *(v21 + 104) = 1;
  *(v21 + 160) = 0;
  *(v21 + 168) = 0;
  *(v21 + 176) = 1;
  *(v21 + 184) = 1;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a7;
  *(v21 + 72) = a8;
  type metadata accessor for Mock();
  v23 = sub_26129B1A8(18);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    sub_2613A121C();
    v23 = sub_2613A120C();
  }

  *(v21 + 112) = v23;
  *(v21 + 120) = v24;
  *(v21 + 128) = a10;
  *(v21 + 136) = a11;
  *(v21 + 144) = a12 & 1;
  *(v21 + 152) = a9;
  return v21;
}

uint64_t sub_261292C7C()
{
  type metadata accessor for Mock();
  result = sub_26129B1A8(18);
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {

    sub_2613A121C();
    return sub_2613A120C();
  }

  return result;
}

unint64_t sub_261292CDC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD000000000000014;
    if (a1 != 10)
    {
      v7 = 0x6D7961507473616CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    v9 = 0x6F6973726556736FLL;
    if (a1 != 7)
    {
      v9 = 0xD000000000000014;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5472656E74726170;
    v2 = 0x6D6E6F7269766E65;
    v3 = 0x437972746E756F63;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x546E6F6973736573;
    if (a1 != 1)
    {
      v4 = 0x6F546C656E72656BLL;
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
}

uint64_t sub_261292EA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_261292CDC(*a1);
  v5 = v4;
  if (v3 == sub_261292CDC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2613A241C();
  }

  return v8 & 1;
}

uint64_t sub_261292F28()
{
  v1 = *v0;
  sub_2613A256C();
  sub_261292CDC(v1);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_261292F8C(uint64_t a1)
{
  sub_261292CDC(*v1);
  sub_2613A19DC();
}

uint64_t sub_261292FE0(uint64_t a1)
{
  v2 = *v1;
  sub_2613A256C();
  sub_261292CDC(v2);
  sub_2613A19DC();

  return sub_2613A25CC();
}

unint64_t sub_261293040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261293D5C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_261293070@<X0>(unint64_t *a1@<X8>)
{
  result = sub_261292CDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2612930B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261293D5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612930EC(uint64_t a1)
{
  v2 = sub_261293DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261293128(uint64_t a1)
{
  v2 = sub_261293DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261293164()
{

  sub_261292A54(*(v0 + 184));
  return v0;
}

uint64_t sub_2612931B4()
{
  sub_261293164();

  return swift_deallocClassInstance();
}

uint64_t sub_2612931E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F778, &qword_2613A5CA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261293DA8();
  sub_2613A262C();
  LOBYTE(v21) = 0;
  sub_2613A238C();
  if (!v2)
  {
    LOBYTE(v21) = 1;
    sub_2613A238C();
    LOBYTE(v21) = 2;
    sub_2613A238C();
    LOBYTE(v21) = 3;
    v9 = sub_2613A238C();
    (*(*v3 + 184))(v9);
    LOBYTE(v21) = 4;
    v10 = sub_2613A23BC();
    (*(*v3 + 208))(v10);
    LOBYTE(v21) = 5;
    v11 = sub_2613A23AC();
    (*(*v3 + 232))(v11);
    LOBYTE(v21) = 6;
    v12 = sub_2613A236C();
    (*(*v3 + 256))(v12);
    LOBYTE(v21) = 7;
    sub_2613A238C();

    (*(*v3 + 280))(v13);
    LOBYTE(v21) = 8;
    sub_2613A238C();

    (*(*v3 + 304))(v14);
    LOBYTE(v21) = 9;
    v15 = sub_2613A239C();
    (*(*v3 + 328))(v15);
    LOBYTE(v21) = 10;
    v16 = sub_2613A23AC();
    v21 = (*(*v3 + 352))(v16);
    v22 = v17;
    v23 = v18 & 1;
    v20[7] = 11;
    sub_26127EAAC();
    sub_2613A237C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_261293694(void *a1)
{
  v2 = swift_allocObject();
  sub_2612936E4(a1);
  return v2;
}

uint64_t sub_2612936E4(void *a1)
{
  v3 = v1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F788, &qword_2613A5CA8);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v6 = v48 - v5;
  *(v3 + 80) = sub_2613A0C5C();
  v7 = (v3 + 80);
  sub_2613A0C6C();
  v52 = a1;
  v53 = v3;
  *(v3 + 88) = v8;
  v9 = v3 + 88;
  *(v9 + 8) = 0;
  *(v9 + 72) = 0;
  *(v9 + 16) = 1;
  *(v9 + 80) = 0;
  *(v9 + 88) = 1;
  *(v9 + 96) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261293DA8();
  v50 = v6;
  sub_2613A260C();
  if (v2)
  {
    v54 = v2;
    v10 = v53;
LABEL_13:
    sub_261292A54(*(v10 + 184));
    type metadata accessor for SessionStore();
    swift_deallocPartialClassInstance();
    goto LABEL_14;
  }

  v48[1] = v9 + 72;
  v12 = v49;
  v11 = v50;
  v61 = 0;
  v13 = v51;
  v14 = sub_2613A22DC();
  v10 = v53;
  *(v53 + 16) = v14;
  *(v10 + 24) = v15;
  v61 = 1;
  *(v10 + 32) = sub_2613A22DC();
  *(v10 + 40) = v16;
  v61 = 2;
  *(v10 + 48) = sub_2613A22DC();
  *(v10 + 56) = v17;
  v61 = 3;
  v18 = sub_2613A22DC();
  v48[0] = 0;
  *(v10 + 64) = v18;
  *(v10 + 72) = v19;
  v61 = 4;
  v20 = sub_2613A230C();
  v54 = 0;
  v21 = v20;
  swift_beginAccess();
  *v7 = v21;
  v60 = 5;
  v22 = v54;
  sub_2613A22FC();
  v54 = v22;
  if (v22)
  {
    (*(v12 + 8))(v11, v13);
    v24 = 0;
    v25 = 0;
LABEL_5:
    v26 = v48[0];
    goto LABEL_6;
  }

  v28 = v23;
  swift_beginAccess();
  *v9 = v28;
  v59 = 6;
  v29 = v54;
  v30 = sub_2613A22BC();
  v54 = v29;
  v26 = v48[0];
  if (v29)
  {
LABEL_18:
    (*(v12 + 8))(v11, v13);
    v24 = 0;
    v25 = 0;
LABEL_6:

    if (!v26)
    {
    }

    if (v24)
    {

      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (!v25)
    {
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v32 = v30;
  v33 = v31;
  swift_beginAccess();
  *(v10 + 96) = v32;
  *(v10 + 104) = v33 & 1;
  v55 = 7;
  v34 = v54;
  v35 = sub_2613A22DC();
  if (v34)
  {
    v54 = v34;
    goto LABEL_18;
  }

  *(v10 + 112) = v35;
  *(v10 + 120) = v36;
  v55 = 8;
  v37 = sub_2613A22DC();
  v54 = 0;
  *(v10 + 128) = v37;
  *(v10 + 136) = v38;
  v55 = 9;
  v39 = v54;
  v40 = sub_2613A22EC();
  v54 = v39;
  if (v39)
  {
    (*(v12 + 8))(v50, v51);
    v24 = 1;
    v25 = 1;
    v10 = v53;
    goto LABEL_5;
  }

  *(v53 + 144) = v40 & 1;
  v55 = 10;
  sub_2613A22FC();
  v54 = 0;
  *(v53 + 152) = v41;
  v55 = 11;
  sub_26127F6C4();
  v42 = v50;
  v43 = v51;
  v44 = v54;
  sub_2613A22CC();
  (*(v12 + 8))(v42, v43);
  v54 = v44;
  if (v44)
  {
    v10 = v53;
  }

  else
  {
    v46 = v56;
    v45 = v57;
    v47 = v58;
    swift_beginAccess();
    v10 = v53;
    *(v53 + 160) = v46;
    *(v10 + 168) = v45;
    *(v10 + 176) = v47;
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  return v10;
}

uint64_t sub_261293C94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 424))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_261293D1C@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for SessionStore();
  result = sub_2613A213C();
  *a3 = result;
  return result;
}

unint64_t sub_261293D5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2613A228C();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261293DA8()
{
  result = qword_27FE9F780;
  if (!qword_27FE9F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F780);
  }

  return result;
}

unint64_t sub_261293E24()
{
  result = qword_27FE9F790;
  if (!qword_27FE9F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F790);
  }

  return result;
}

unint64_t sub_261293E7C()
{
  result = qword_27FE9F798;
  if (!qword_27FE9F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F798);
  }

  return result;
}

unint64_t sub_261293ED4()
{
  result = qword_27FE9F7A0;
  if (!qword_27FE9F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F7A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionStore.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionStore.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_261294084()
{
  if (*v0)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_2612940B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_2613A241C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2613A241C();

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

uint64_t sub_261294198(uint64_t a1)
{
  v2 = sub_2612959A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612941D4(uint64_t a1)
{
  v2 = sub_2612959A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261294210@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261294DB4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_261294240@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_26129429C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_26139EC4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_26139EBDC();
  v58 = v4;
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0x277D837D0];
    v15 = MEMORY[0x277D837E0];
    v16 = sub_261291AA8();
    sub_2612E69E8(v16, v17, v13, v14, v14, v15);
    v56 = v18;
    v20 = v19;
  }

  else
  {
    v56 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = sub_26139EC1C();
  v23 = v22;
  v57 = sub_26129509C(v21, v22, 1);
  v25 = v24;
  sub_26124A168(v21, v23);
  v26 = sub_26129B64C();
  sub_26125A870(v26, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v27 = sub_2613A124C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v11, 1, v27) == 1)
  {

    return sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    (*(v6 + 16))(v8, a1, v5);

    v30 = sub_2613A122C();
    v31 = sub_2613A1D7C();

    if (os_log_type_enabled(v30, v31))
    {
      v52 = v31;
      v53 = v30;
      v54 = v6;
      v55 = v5;
      v32 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v59 = v50;
      v51 = v32;
      *v32 = 136315650;
      v33 = v58;
      sub_26139EC0C();
      v34 = sub_26139EF7C();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v33, 1, v34) == 1)
      {
        sub_26124C718(v33, &qword_27FE9F220, qword_2613A5530);
        v36 = 0;
        v37 = 0xE000000000000000;
      }

      else
      {
        v49 = sub_26139EEAC();
        v37 = v38;
        (*(v35 + 8))(v33, v34);
        v36 = v49;
      }

      (*(v54 + 8))(v8, v55);
      v39 = sub_26124C11C(v36, v37, &v59);

      v40 = v51;
      *(v51 + 1) = v39;
      *(v40 + 6) = 2080;
      v41 = sub_2613A0C2C();
      LOBYTE(v39) = v41();

      v42 = v52;
      if (v39)
      {
        v43 = v56;
      }

      else
      {

        v43 = 0;
        v20 = 0xE000000000000000;
      }

      v44 = sub_26124C11C(v43, v20, &v59);

      *(v40 + 14) = v44;
      *(v40 + 11) = 2080;
      v45 = sub_26124C11C(v57, v25, &v59);

      *(v40 + 3) = v45;
      v46 = v53;
      _os_log_impl(&dword_261243000, v53, v42, "----> %s\n%s\n%s", v40, 0x20u);
      v47 = v50;
      swift_arrayDestroy();
      MEMORY[0x266701350](v47, -1, -1);
      MEMORY[0x266701350](v40, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return (*(v28 + 8))(v11, v27);
  }
}

uint64_t sub_2612947FC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v63 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v55 - v8;
  v9 = sub_26139EC4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v55 - v14;
  v65 = a1;
  v16 = sub_26139EBDC();
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0x277D837D0];
    v19 = MEMORY[0x277D837E0];
    v20 = sub_261291AA8();
    sub_2612E69E8(v20, v21, v17, v18, v18, v19);
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = sub_26129509C(a2, a3, 1);
  v28 = v27;
  v29 = sub_26129B64C();
  sub_26125A870(v29, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v30 = sub_2613A124C();
  v64 = *(v30 - 1);
  if ((*(v64 + 48))(v15, 1, v30) == 1)
  {

    return sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v60 = v23;
    v61 = v26;
    (*(v10 + 16))(v12, v65, v9);
    v32 = v63;

    v33 = sub_2613A122C();
    v34 = sub_2613A1D7C();

    LODWORD(v65) = v34;
    if (os_log_type_enabled(v33, v34))
    {
      v56 = v32;
      v57 = v28;
      v58 = v33;
      v59 = v9;
      v63 = v30;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v66 = v36;
      *v35 = 136315906;
      v37 = v62;
      sub_26139EC0C();
      v38 = v37;
      v39 = sub_26139EF7C();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v38, 1, v39) == 1)
      {
        sub_26124C718(v38, &qword_27FE9F220, qword_2613A5530);
        v41 = 0;
        v42 = 0xE000000000000000;
      }

      else
      {
        v55 = v36;
        v43 = v38;
        v41 = sub_26139EEAC();
        v42 = v44;
        v45 = v43;
        v36 = v55;
        (*(v40 + 8))(v45, v39);
      }

      (*(v10 + 8))(v12, v59);
      v46 = sub_26124C11C(v41, v42, &v66);

      *(v35 + 4) = v46;
      *(v35 + 12) = 2080;
      v47 = sub_2613A0C2C();
      LOBYTE(v46) = v47();

      v48 = v61;
      if (v46)
      {
        v49 = v60;
      }

      else
      {

        v49 = 0;
        v25 = 0xE000000000000000;
      }

      v50 = v56;
      v51 = sub_26124C11C(v49, v25, &v66);

      *(v35 + 14) = v51;
      *(v35 + 22) = 2048;
      v52 = [v50 statusCode];

      *(v35 + 24) = v52;
      *(v35 + 32) = 2080;
      v53 = sub_26124C11C(v48, v57, &v66);

      *(v35 + 34) = v53;
      v54 = v58;
      _os_log_impl(&dword_261243000, v58, v65, "<---- %s\n%s\n%ld {%s\n}", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266701350](v36, -1, -1);
      MEMORY[0x266701350](v35, -1, -1);

      v30 = v63;
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    return (*(v64 + 8))(v15, v30);
  }
}

uint64_t sub_261294DB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7C0, &qword_2613A60C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612959A4();
  sub_2613A260C();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_2613A22DC();
    v10 = 1;
    sub_2613A22DC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_261294F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7B8, &qword_2613A60B8);
    v3 = sub_2613A224C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_26124E5EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t sub_26129509C(uint64_t a1, unint64_t a2, char a3)
{
  v84 = *MEMORY[0x277D85DE8];
  if (a2 >> 60 == 15)
  {
    return 0x3E7974706D653CLL;
  }

  v7 = objc_opt_self();
  sub_26124C778(a1, a2);
  v8 = sub_26139EFFC();
  *&v82 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:1 error:&v82];

  if (!v9)
  {
    v12 = v82;
    v13 = sub_26139EE7C();

    swift_willThrow();
    sub_26124A168(a1, a2);
    return 0x3E726F7272653CLL;
  }

  v10 = v82;
  sub_2613A202C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7B0, &qword_2613A60B0);
  if (swift_dynamicCast())
  {
    v11 = *&v81[0];
  }

  else
  {
    v11 = sub_261294F98(MEMORY[0x277D84F90]);
  }

  v14 = MEMORY[0x277D84F68];
  if ((a3 & 1) == 0)
  {
    v61 = MEMORY[0x277D837D0];
    v62 = MEMORY[0x277D837E0];
    v63 = sub_261291AA8();
    sub_2612E69E8(v63, v64, v11, v61, v14 + 8, v62);
    v66 = v65;

    sub_26124A168(a1, a2);
    return v66;
  }

  v74 = a1;
  v75 = a2;
  v15 = sub_261259E78(MEMORY[0x277D84F90]);
  v16 = 0;
  v17 = v11 + 64;
  v18 = 1 << *(v11 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v11 + 64);
  v21 = (v18 + 63) >> 6;
  v76 = v21;
  v77 = v11 + 64;
  v78 = v11;
  while (1)
  {
    if (!v20)
    {
      while (1)
      {
        v24 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v24 >= v21)
        {

          v67 = MEMORY[0x277D837D0];
          v68 = MEMORY[0x277D837E0];
          v69 = MEMORY[0x277D84F70];
          v70 = sub_261291AA8();
          sub_2612E69E8(v70, v71, v15, v67, v69 + 8, v68);
          v73 = v72;
          sub_26124A168(v74, v75);

          return v73;
        }

        v20 = *(v17 + 8 * v24);
        ++v16;
        if (v20)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v24 = v16;
LABEL_19:
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = v25 | (v24 << 6);
    v27 = (*(v11 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(*(v11 + 56) + 8 * v26);
    *&v82 = sub_2613A196C();
    *(&v82 + 1) = v31;
    *&v81[0] = 0x6E656B6F74;
    *(&v81[0] + 1) = 0xE500000000000000;
    sub_26124C7CC();

    swift_unknownObjectRetain();
    v32 = sub_2613A201C();

    if ((v32 & 1) == 0)
    {
      break;
    }

    v79 = v28;
    *&v81[0] = v30;
    swift_unknownObjectRetain();
    v33 = MEMORY[0x277D837D0];
    if ((swift_dynamicCast() & 1) == 0)
    {
      v28 = v79;
      break;
    }

    v34 = sub_2613A0F7C();
    v36 = v35;

    ObjectType = v33;
    *&v82 = v34;
    *(&v82 + 1) = v36;
    sub_26125A7B0(&v82, v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v15;
    v38 = sub_26124E5EC(v79, v29);
    v40 = v15[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      goto LABEL_48;
    }

    v44 = v39;
    if (v15[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v60 = v38;
        sub_2612590DC();
        v38 = v60;
      }

      v45 = v79;
      if (v44)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_261258AB8(v43, isUniquelyReferenced_nonNull_native);
      v45 = v79;
      v38 = sub_26124E5EC(v79, v29);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_50;
      }

      if (v44)
      {
LABEL_12:
        v22 = v38;

        v15 = v80;
        v23 = (v80[7] + 32 * v22);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        sub_26125A7B0(v81, v23);
        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    v15[(v38 >> 6) + 8] |= 1 << v38;
    v57 = (v15[6] + 16 * v38);
    *v57 = v45;
    v57[1] = v29;
    sub_26125A7B0(v81, (v15[7] + 32 * v38));
    swift_unknownObjectRelease();
    v58 = v15[2];
    v42 = __OFADD__(v58, 1);
    v56 = v58 + 1;
    if (v42)
    {
      goto LABEL_49;
    }

LABEL_40:
    v15[2] = v56;
LABEL_13:
    v16 = v24;
    v17 = v77;
    v11 = v78;
    v21 = v76;
  }

  ObjectType = swift_getObjectType();
  *&v82 = v30;
  sub_26125A7B0(&v82, v81);
  swift_unknownObjectRetain();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v15;
  v38 = sub_26124E5EC(v28, v29);
  v49 = v15[2];
  v50 = (v48 & 1) == 0;
  v42 = __OFADD__(v49, v50);
  v51 = v49 + v50;
  if (v42)
  {
    goto LABEL_46;
  }

  v52 = v48;
  if (v15[3] >= v51)
  {
    if ((v47 & 1) == 0)
    {
      v59 = v38;
      sub_2612590DC();
      v38 = v59;
      if (v52)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (v52)
    {
      goto LABEL_12;
    }

LABEL_33:
    v15[(v38 >> 6) + 8] |= 1 << v38;
    v54 = (v15[6] + 16 * v38);
    *v54 = v28;
    v54[1] = v29;
    sub_26125A7B0(v81, (v15[7] + 32 * v38));
    swift_unknownObjectRelease();
    v55 = v15[2];
    v42 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v42)
    {
      goto LABEL_47;
    }

    goto LABEL_40;
  }

  sub_261258AB8(v51, v47);
  v38 = sub_26124E5EC(v28, v29);
  if ((v52 & 1) == (v53 & 1))
  {
    goto LABEL_32;
  }

LABEL_50:
  result = sub_2613A249C();
  __break(1u);
  return result;
}

unint64_t sub_26129572C()
{
  result = qword_27FE9F7A8;
  if (!qword_27FE9F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F7A8);
  }

  return result;
}

uint64_t sub_261295790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2612957D8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TransactionData.CvmType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TransactionData.CvmType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2612959A4()
{
  result = qword_27FEA3930[0];
  if (!qword_27FEA3930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA3930);
  }

  return result;
}

unint64_t sub_261295A0C()
{
  result = qword_27FEA3A40[0];
  if (!qword_27FEA3A40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA3A40);
  }

  return result;
}

unint64_t sub_261295A64()
{
  result = qword_27FEA3B50;
  if (!qword_27FEA3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3B50);
  }

  return result;
}

unint64_t sub_261295ABC()
{
  result = qword_27FEA3B58[0];
  if (!qword_27FEA3B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA3B58);
  }

  return result;
}

void sub_261295B30(id *a1)
{
  v1 = [*a1 batchId];
  sub_26139F11C();
}

void sub_261295B90(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_26139F10C();
  [v2 setBatchId_];
}

void sub_261295BEC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 signature];
  v4 = sub_26139F01C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_261295C64(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 intermediateCertificates];
  v4 = sub_2613A1B7C();

  *a2 = v4;
}

void sub_261295CC0(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_2613A1B6C();
  [v2 setIntermediateCertificates_];
}

void sub_261295D50(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = (a5)(*a1, a1[1], a3, a4);
  [v7 *a6];
}

id sub_261295DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v11 = [objc_allocWithZone(v7) initWithContext_];
  v12 = sub_2613A189C();

  [v11 setSafSessionHash_];

  v13 = sub_26139F10C();
  [v11 setBatchId_];

  v14 = sub_26139EFFC();
  [v11 setSignature_];

  v15 = sub_2613A1B6C();
  [v11 setIntermediateCertificates_];

  v16 = sub_2613A189C();
  [v11 setLeafCertificate_];

  sub_261295F30(a6);
  v17 = sub_26139F13C();
  (*(*(v17 - 8) + 8))(a4, v17);
  return v11;
}

id ManagedBatch.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBatch.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedBatch();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBatch.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedBatch();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedBatch.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2613A189C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_26129616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_26139EC4C();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v4[21] = swift_task_alloc();
  v6 = sub_26139EF7C();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612962D0, 0, 0);
}

uint64_t sub_2612962D0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  sub_26129035C(*(*(v0 + 120) + 96));
  sub_26128FAFC(47, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26124FDE0(*(v0 + 168));
  }

  else
  {
    v4 = *(v0 + 200);
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    (*(v6 + 8))(v4, v5);
    (*(v6 + 32))(v4, v7, v5);
  }

  v8 = *(v0 + 160);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  sub_2613A025C();
  sub_26139EBFC();
  sub_26139EBBC();
  v12 = *(v11 + 32);
  v13 = *(v11 + 64);
  v14 = *(v11 + 72);
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v12;
  *(v0 + 48) = v13;
  *(v0 + 56) = v14;
  v15 = sub_26129670C();
  sub_26124A620(&type metadata for VerifyMerchantRequest, v15);
  sub_26139EC2C();
  v16 = swift_task_alloc();
  *(v0 + 208) = v16;
  *(v16 + 16) = v8;
  v17 = swift_task_alloc();
  *(v0 + 216) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7D0, &qword_2613A6240);
  *v17 = v0;
  v17[1] = sub_2612964FC;

  return MEMORY[0x2822007B8](v0 + 64, 0, 0, 0xD00000000000001FLL, 0x80000002613B9A40, sub_261296A20, v16, v18);
}

uint64_t sub_2612964FC()
{

  return MEMORY[0x2822009F8](sub_261296614, 0, 0);
}

uint64_t sub_261296614()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);
  (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 64);
  (*(v3 + 8))(v1, v2);

  *v4 = v10;
  *(v4 + 16) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_26129670C()
{
  result = qword_27FE9F7C8;
  if (!qword_27FE9F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F7C8);
  }

  return result;
}

uint64_t sub_261296760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F868, &qword_2613A6DB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = sub_26139EC4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    v18[0] = 0xD000000000000011;
    v18[1] = 0x80000002613B9BA0;
    v18[3] = 0;
    v18[4] = 0;
    v18[2] = 1;
    v19 = 0;
    return sub_2613A1BDC();
  }

  else
  {
    v13 = *sub_2612A1E08();
    (*(v9 + 16))(v11, a2, v8);
    (*(v5 + 16))(v7, a1, v4);
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    (*(v5 + 32))(v15 + v14, v7, v4);
    v16 = sub_26129B07C();

    v17 = sub_26125A798();
    (*(*v13 + 152))(v11, v17 & 1, sub_26129AF94, v15, &type metadata for VerifyMerchantResponse, v16);

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_261296A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 281) = a6;
  *(v6 + 312) = a4;
  *(v6 + 320) = a5;
  *(v6 + 296) = a2;
  *(v6 + 304) = a3;
  *(v6 + 288) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  *(v6 + 328) = swift_task_alloc();
  v7 = sub_26139EF7C();
  *(v6 + 336) = v7;
  *(v6 + 344) = *(v7 - 8);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261296B38, 0, 0);
}

uint64_t sub_261296B38()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  sub_26129053C(*(*(v0 + 296) + 96));
  sub_26128FAFC(48, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26124FDE0(*(v0 + 328));
  }

  else
  {
    v4 = *(v0 + 360);
    v5 = *(v0 + 336);
    v6 = *(v0 + 344);
    v7 = *(v0 + 328);
    (*(v6 + 8))(v4, v5);
    (*(v6 + 32))(v4, v7, v5);
  }

  v56 = *(v0 + 360);
  v53 = *(v0 + 344);
  v54 = *(v0 + 352);
  v55 = *(v0 + 336);
  v8 = *(v0 + 320);
  v52 = *(v0 + 312);
  v9 = *(v0 + 296);
  sub_2613A121C();
  v47 = sub_2613A111C();
  v11 = v10;
  v12 = sub_26139F68C();
  v50 = v13;
  v51 = v12;
  v14 = v9[9];
  v15 = v9[5];
  v48 = v9[4];
  v49 = v9[8];

  v16 = sub_2613A0C1C();
  v18 = v17;
  v19 = sub_26139F67C();
  v21 = v20;

  MEMORY[0x2666FFEA0](v47, v11);

  *(v0 + 128) = v51;
  *(v0 + 136) = v50;
  *(v0 + 144) = v49;
  *(v0 + 152) = v14;
  *(v0 + 160) = v48;
  *(v0 + 168) = v15;
  *(v0 + 176) = v16;
  *(v0 + 184) = v18;
  *(v0 + 192) = v19;
  *(v0 + 200) = v21;
  *(v0 + 208) = v52;
  *(v0 + 216) = v8;
  *(v0 + 224) = 0x4F20656E6F685069;
  *(v0 + 232) = 0xEA00000000003B53;
  v22 = sub_26129728C();
  v23 = sub_26124A620(&type metadata for EnrollmentRequest, v22);
  v25 = v24;
  *(v0 + 368) = v23;
  *(v0 + 376) = v24;
  v26 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v26;
  *(v0 + 112) = *(v0 + 224);
  v27 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v27;
  v28 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v28;
  sub_2612972E0(v0 + 16);
  (*(v53 + 16))(v54, v56, v55);
  v29 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v30 = sub_26139EEFC();
  v31 = [v29 initWithURL_];
  *(v0 + 384) = v31;

  v32 = sub_2613A189C();

  [v31 setHTTPMethod_];

  v33 = sub_2613A189C();
  v34 = sub_2613A189C();
  [v31 addValue:v33 forHTTPHeaderField:v34];

  sub_26139F6BC();
  v35 = sub_2613A189C();

  sub_26139F6AC();
  v36 = sub_2613A189C();

  [v31 ak:v35 addAuthorizationHeaderWithServiceToken:v36 forAltDSID:?];

  [v31 ak_addClientInfoHeader];
  [v31 ak_addDeviceUDIDHeader];
  [v31 ak_addDeviceSerialNumberHeader];
  [v31 ak_addInternalBuildHeader];
  [v31 ak_addFeatureMaskHeader];
  [v31 ak_addLocaleHeader];
  [v31 ak_addTimeZoneHeaders];
  [v31 ak_addDeviceMLBHeader];
  [v31 ak_addDeviceROMHeader];
  if (v25 >> 60 != 15)
  {
    sub_26124C778(v23, v25);
    v37 = sub_26139EFFC();
    [v31 setHTTPBody_];

    sub_26124A168(v23, v25);
  }

  v39 = *(v0 + 344);
  v38 = *(v0 + 352);
  v40 = *(v0 + 336);
  v41 = *(v0 + 281);
  v42 = *(v39 + 8);
  *(v0 + 392) = v42;
  *(v0 + 400) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v38, v40);
  v43 = swift_task_alloc();
  *(v0 + 408) = v43;
  *(v43 + 16) = v41;
  *(v43 + 24) = v31;
  v44 = swift_task_alloc();
  *(v0 + 416) = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7E0, &qword_2613A6250);
  *v44 = v0;
  v44[1] = sub_261297098;

  return MEMORY[0x2822007B8](v0 + 240, 0, 0, 0xD00000000000002DLL, 0x80000002613B9A80, sub_2612976A0, v43, v45);
}

uint64_t sub_261297098()
{

  return MEMORY[0x2822009F8](sub_2612971B0, 0, 0);
}

uint64_t sub_2612971B0()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 336);
  v6 = *(v0 + 288);

  sub_26124A168(v3, v2);
  v1(v4, v5);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 256);
  *v6 = *(v0 + 240);
  *(v6 + 16) = v9;
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_26129728C()
{
  result = qword_27FE9F7D8;
  if (!qword_27FE9F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F7D8);
  }

  return result;
}

uint64_t sub_261297310(uint64_t a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F848, &qword_2613A6DB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v25 = sub_26139EC4C();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Mock();
  v12 = sub_26129B0F4(6);
  if (a2)
  {
    if (v12)
    {
      [objc_opt_self() sleepForTimeInterval_];
      v13 = xmmword_2613A6220;
LABEL_6:
      v26 = v13;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v30 = 0;
      return sub_2613A1BDC();
    }

    v15 = *sub_2612A1E08();
    sub_26139EBEC();
    (*(v6 + 16))(v8, a1, v5);
    v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    (*(v6 + 32))(v17 + v16, v8, v5);
    v18 = *(*v15 + 152);
    v19 = sub_26129AEBC();

    v20 = &type metadata for ReEnrollmentResponse;
    v21 = sub_26129B0E0;
  }

  else
  {
    if (v12)
    {
      [objc_opt_self() sleepForTimeInterval_];
      v13 = xmmword_2613A6210;
      goto LABEL_6;
    }

    v22 = *sub_2612A1E08();
    sub_26139EBEC();
    (*(v6 + 16))(v8, a1, v5);
    v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    (*(v6 + 32))(v17 + v23, v8, v5);
    v18 = *(*v22 + 152);
    v19 = sub_26129AD80();

    v20 = &type metadata for EnrollmentResponse;
    v21 = sub_26129AD7C;
  }

  v18(v11, 1, v21, v17, v20, v19);

  return (*(v9 + 8))(v11, v25);
}

uint64_t sub_2612976AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v3[33] = swift_task_alloc();
  v4 = sub_26139EF7C();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612977A8, 0, 0);
}

uint64_t sub_2612977A8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  sub_26129071C(*(*(v0 + 248) + 96));
  sub_26128FAFC(49, v2);
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    sub_26124FDE0(*(v0 + 264));
  }

  else
  {
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    (*(v5 + 8))(v4, v6);
    (*(v5 + 32))(v4, v7, v6);
  }

  v8 = *(v0 + 248);
  v9 = sub_26139F68C();
  v11 = v10;
  v12 = v8[9];
  v39 = v8[8];
  v13 = v8[4];
  v14 = v8[5];

  v15 = sub_2613A0C1C();
  v17 = v16;
  v18 = sub_26139F67C();
  *(v0 + 104) = v9;
  *(v0 + 112) = v11;
  *(v0 + 120) = v39;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  *(v0 + 144) = v14;
  *(v0 + 152) = v15;
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  *(v0 + 176) = v19;
  *(v0 + 184) = 1;
  v20 = sub_261297DFC();
  v21 = sub_26124A620(&type metadata for SubscriptionRequest, v20);
  v23 = v22;
  *(v0 + 296) = v21;
  *(v0 + 304) = v22;
  v24 = *(v0 + 152);
  *(v0 + 48) = *(v0 + 136);
  *(v0 + 64) = v24;
  *(v0 + 80) = *(v0 + 168);
  *(v0 + 96) = *(v0 + 184);
  v25 = *(v0 + 120);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = v25;
  sub_261297E50(v0 + 16);
  v26 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v27 = sub_26139EEFC();
  v28 = [v26 initWithURL_];
  *(v0 + 312) = v28;

  v29 = sub_2613A189C();
  [v28 setHTTPMethod_];

  v30 = sub_2613A189C();
  v31 = sub_2613A189C();
  [v28 addValue:v30 forHTTPHeaderField:v31];

  sub_26139F6BC();
  v32 = sub_2613A189C();

  sub_26139F6AC();
  v33 = sub_2613A189C();

  [v28 ak:v32 addAuthorizationHeaderWithServiceToken:v33 forAltDSID:?];

  [v28 ak_addClientInfoHeader];
  [v28 ak_addDeviceUDIDHeader];
  [v28 ak_addDeviceSerialNumberHeader];
  [v28 ak_addInternalBuildHeader];
  [v28 ak_addFeatureMaskHeader];
  [v28 ak_addLocaleHeader];
  [v28 ak_addTimeZoneHeaders];
  [v28 ak_addDeviceMLBHeader];
  [v28 ak_addDeviceROMHeader];
  if (v23 >> 60 != 15)
  {
    sub_26124C778(v21, v23);
    v34 = sub_26139EFFC();
    [v28 setHTTPBody_];

    sub_26124A168(v21, v23);
  }

  v35 = swift_task_alloc();
  *(v0 + 320) = v35;
  *(v35 + 16) = v28;
  v36 = swift_task_alloc();
  *(v0 + 328) = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7E0, &qword_2613A6250);
  *v36 = v0;
  v36[1] = sub_261297C10;

  return MEMORY[0x2822007B8](v0 + 192, 0, 0, 0xD00000000000001CLL, 0x80000002613B9AB0, sub_261298118, v35, v37);
}

uint64_t sub_261297C10()
{

  return MEMORY[0x2822009F8](sub_261297D28, 0, 0);
}

uint64_t sub_261297D28()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 240);

  sub_26124A168(v2, v1);
  (*(v5 + 8))(v3, v4);
  v7 = *(v0 + 224);
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  *v6 = *(v0 + 192);
  *(v6 + 16) = v9;
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_261297DFC()
{
  result = qword_27FE9F7E8;
  if (!qword_27FE9F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F7E8);
  }

  return result;
}

uint64_t sub_261297E80(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F848, &qword_2613A6DB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = sub_26139EC4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    v17[0] = 0xD000000000000019;
    v17[1] = 0x80000002613B9B80;
    memset(&v17[2], 0, 24);
    v18 = 0;
    return sub_2613A1BDC();
  }

  else
  {
    v12 = *sub_2612A1E08();
    sub_26139EBEC();
    (*(v4 + 16))(v6, a1, v3);
    v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v14 = swift_allocObject();
    (*(v4 + 32))(v14 + v13, v6, v3);
    v15 = *(*v12 + 152);
    v16 = sub_26129AD28();

    v15(v10, 1, sub_26129B0E0, v14, &type metadata for SubscriptionResponse, v16);

    return (*(v8 + 8))(v10, v7);
  }
}

unint64_t sub_261298120()
{
  v1 = 0x6C646E7542707061;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5472656E74726170;
  }
}

uint64_t sub_261298190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612997B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612981B8(uint64_t a1)
{
  v2 = sub_2612983D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612981F4(uint64_t a1)
{
  v2 = sub_2612983D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261298230(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7F0, &qword_2613A6260);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612983D0();
  sub_2613A262C();
  v8[15] = 0;
  sub_2613A238C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2613A238C();
  v8[13] = 2;
  sub_2613A238C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2612983D0()
{
  result = qword_27FEA3BE0;
  if (!qword_27FEA3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3BE0);
  }

  return result;
}

uint64_t sub_26129843C()
{
  if (*v0)
  {
    return 0x6C416B6E696C6572;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_261298488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x80000002613B9B00 == a2 || (sub_2613A241C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C416B6E696C6572 && a2 == 0xED00006465776F6CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2613A241C();

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
  return result;
}

uint64_t sub_261298578(uint64_t a1)
{
  v2 = sub_261298780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612985B4(uint64_t a1)
{
  v2 = sub_261298780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612985F0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7F8, &qword_2613A6268);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261298780();
  sub_2613A262C();
  v14 = 0;
  sub_2613A238C();
  if (!v4)
  {
    v13 = 1;
    sub_2613A235C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_261298780()
{
  result = qword_27FEA3BE8;
  if (!qword_27FEA3BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3BE8);
  }

  return result;
}

uint64_t sub_2612987D4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2612998D8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_261298824()
{
  v1 = *v0;
  v2 = 0x5472656E74726170;
  v3 = 0x6973726556736F74;
  if (v1 != 5)
  {
    v3 = 0x6F6973726556736FLL;
  }

  v4 = 0x6564496E656B6F74;
  if (v1 != 3)
  {
    v4 = 0x6F4C656369766564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x6C646E7542707061;
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

uint64_t sub_261298930@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26129A898(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261298964(uint64_t a1)
{
  v2 = sub_261299AB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612989A0(uint64_t a1)
{
  v2 = sub_261299AB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612989DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F800, &qword_2613A6270);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261299AB0();
  sub_2613A262C();
  v8[15] = 0;
  sub_2613A238C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2613A238C();
  v8[13] = 2;
  sub_2613A238C();
  v8[12] = 3;
  sub_2613A238C();
  v8[11] = 4;
  sub_2613A238C();
  v8[10] = 5;
  sub_2613A238C();
  v8[9] = 6;
  sub_2613A238C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_261298C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000002613B9B20 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2613A241C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_261298CD8(uint64_t a1)
{
  v2 = sub_261299B04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261298D14(uint64_t a1)
{
  v2 = sub_261299B04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261298DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7453657461647075 && a2 == 0xEC00000073757461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2613A241C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261298E84(uint64_t a1)
{
  v2 = sub_261299B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261298EC0(uint64_t a1)
{
  v2 = sub_261299B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261298F84()
{
  v1 = *v0;
  v2 = 0x5472656E74726170;
  v3 = 0x6564496E656B6F74;
  v4 = 0x6F4C656369766564;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x6C646E7542707061;
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

uint64_t sub_26129906C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26129AB0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612990A0(uint64_t a1)
{
  v2 = sub_261299BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612990DC(uint64_t a1)
{
  v2 = sub_261299BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261299118(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F828, &qword_2613A6298);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261299BAC();
  sub_2613A262C();
  v8[15] = 0;
  sub_2613A238C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2613A238C();
  v8[13] = 2;
  sub_2613A238C();
  v8[12] = 3;
  sub_2613A238C();
  v8[11] = 4;
  sub_2613A238C();
  v8[10] = 5;
  sub_2613A239C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26129934C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000002613B9B60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2613A241C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2612993E0(uint64_t a1)
{
  v2 = sub_261299C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26129941C(uint64_t a1)
{
  v2 = sub_261299C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26129949C@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2613A260C();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = sub_2613A22DC();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_261299668(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_2613A262C();
  sub_2613A238C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2612997B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2613A241C();

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

uint64_t sub_2612998D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F840, &qword_2613A6DA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261298780();
  sub_2613A260C();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_2613A22DC();
    v9[14] = 1;
    sub_2613A22AC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_261299AB0()
{
  result = qword_27FEA3BF0;
  if (!qword_27FEA3BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3BF0);
  }

  return result;
}

unint64_t sub_261299B04()
{
  result = qword_27FEA3BF8;
  if (!qword_27FEA3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3BF8);
  }

  return result;
}

unint64_t sub_261299B58()
{
  result = qword_27FEA3C00;
  if (!qword_27FEA3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3C00);
  }

  return result;
}

unint64_t sub_261299BAC()
{
  result = qword_27FEA3C08;
  if (!qword_27FEA3C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3C08);
  }

  return result;
}

unint64_t sub_261299C00()
{
  result = qword_27FEA3C10[0];
  if (!qword_27FEA3C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA3C10);
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

uint64_t sub_261299C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_261299CE4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_261299D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_261299DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_261299E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_261299EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261299F14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_261299F5C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for EnrollmentRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EnrollmentRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26129A164()
{
  result = qword_27FEA42A0[0];
  if (!qword_27FEA42A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA42A0);
  }

  return result;
}

unint64_t sub_26129A1BC()
{
  result = qword_27FEA44B0[0];
  if (!qword_27FEA44B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA44B0);
  }

  return result;
}

unint64_t sub_26129A214()
{
  result = qword_27FEA46C0[0];
  if (!qword_27FEA46C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA46C0);
  }

  return result;
}

unint64_t sub_26129A26C()
{
  result = qword_27FEA48D0[0];
  if (!qword_27FEA48D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA48D0);
  }

  return result;
}

unint64_t sub_26129A2C4()
{
  result = qword_27FEA4AE0[0];
  if (!qword_27FEA4AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA4AE0);
  }

  return result;
}

unint64_t sub_26129A31C()
{
  result = qword_27FEA4CF0[0];
  if (!qword_27FEA4CF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA4CF0);
  }

  return result;
}

unint64_t sub_26129A374()
{
  result = qword_27FEA4F00[0];
  if (!qword_27FEA4F00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA4F00);
  }

  return result;
}

unint64_t sub_26129A3CC()
{
  result = qword_27FEA5010;
  if (!qword_27FEA5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5010);
  }

  return result;
}

unint64_t sub_26129A424()
{
  result = qword_27FEA5018[0];
  if (!qword_27FEA5018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5018);
  }

  return result;
}

unint64_t sub_26129A47C()
{
  result = qword_27FEA50A0;
  if (!qword_27FEA50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA50A0);
  }

  return result;
}

unint64_t sub_26129A4D4()
{
  result = qword_27FEA50A8[0];
  if (!qword_27FEA50A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA50A8);
  }

  return result;
}

unint64_t sub_26129A52C()
{
  result = qword_27FEA5130;
  if (!qword_27FEA5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5130);
  }

  return result;
}

unint64_t sub_26129A584()
{
  result = qword_27FEA5138[0];
  if (!qword_27FEA5138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5138);
  }

  return result;
}

unint64_t sub_26129A5DC()
{
  result = qword_27FEA51C0;
  if (!qword_27FEA51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA51C0);
  }

  return result;
}

unint64_t sub_26129A634()
{
  result = qword_27FEA51C8[0];
  if (!qword_27FEA51C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA51C8);
  }

  return result;
}

unint64_t sub_26129A68C()
{
  result = qword_27FEA5250;
  if (!qword_27FEA5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5250);
  }

  return result;
}

unint64_t sub_26129A6E4()
{
  result = qword_27FEA5258[0];
  if (!qword_27FEA5258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5258);
  }

  return result;
}

unint64_t sub_26129A73C()
{
  result = qword_27FEA52E0;
  if (!qword_27FEA52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA52E0);
  }

  return result;
}

unint64_t sub_26129A794()
{
  result = qword_27FEA52E8[0];
  if (!qword_27FEA52E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA52E8);
  }

  return result;
}

unint64_t sub_26129A7EC()
{
  result = qword_27FEA5370;
  if (!qword_27FEA5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5370);
  }

  return result;
}

unint64_t sub_26129A844()
{
  result = qword_27FEA5378;
  if (!qword_27FEA5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5378);
  }

  return result;
}

uint64_t sub_26129A898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564496E656B6F74 && a2 == 0xEF7265696669746ELL || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEC000000656C6163 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6973726556736F74 && a2 == 0xEA00000000006E6FLL || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 6;
  }

  else
  {
    v6 = sub_2613A241C();

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

uint64_t sub_26129AB0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564496E656B6F74 && a2 == 0xEF7265696669746ELL || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEC000000656C6163 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002613B9B40 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2613A241C();

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

unint64_t sub_26129AD28()
{
  result = qword_27FE9F850;
  if (!qword_27FE9F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F850);
  }

  return result;
}

unint64_t sub_26129AD80()
{
  result = qword_27FE9F858;
  if (!qword_27FE9F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F858);
  }

  return result;
}

uint64_t sub_26129ADD4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F848, &qword_2613A6DB0);
  if (a1[5])
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F848, &qword_2613A6DB0);
  return sub_2613A1BDC();
}

unint64_t sub_26129AEBC()
{
  result = qword_27FE9F860;
  if (!qword_27FE9F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F860);
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_26129AF94(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F868, &qword_2613A6DB8);
  if (*(a1 + 40) == 1)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F868, &qword_2613A6DB8);
  return sub_2613A1BDC();
}

unint64_t sub_26129B07C()
{
  result = qword_27FE9F870;
  if (!qword_27FE9F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F870);
  }

  return result;
}

id sub_26129B0F4(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2613A0C2C();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  sub_2612D41F8(v1);
  v5 = sub_2613A189C();

  v6 = [v4 BOOLForKey_];

  return v6;
}

uint64_t sub_26129B1A8(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2613A0C2C();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  sub_2612D41F8(v1);
  v5 = sub_2613A189C();

  v6 = [v4 stringForKey_];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_2613A18CC();

  return v7;
}

id sub_26129B284(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2613A0C2C();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  sub_2612D41F8(v1);
  v5 = sub_2613A189C();

  v6 = [v4 integerForKey_];

  return v6;
}

id sub_26129B338(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2613A0C2C();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = sub_2613A0C2C();
  v5 = v4();

  if (v5)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    sub_2612D41F8(v1);
    v7 = sub_2613A189C();

    v8 = [v6 BOOLForKey_];
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() standardUserDefaults];
  sub_2612D41F8(v1);
  v10 = sub_2613A189C();

  [v9 removeObjectForKey_];

  return v8;
}

uint64_t sub_26129B520()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  __swift_allocate_value_buffer(v0, qword_27FEAEC90);
  v1 = __swift_project_value_buffer(v0, qword_27FEAEC90);
  sub_2613A123C();
  v2 = sub_2613A124C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_26129B9A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  __swift_allocate_value_buffer(v0, qword_27FEAEDB0);
  v1 = __swift_project_value_buffer(v0, qword_27FEAEDB0);
  sub_2613A123C();
  v2 = sub_2613A124C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_26129BAC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  sub_2613A123C();
  v7 = sub_2613A124C();
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, 0, 1, v7);
}

uint64_t sub_26129BBBC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_26129BC1C()
{
  result = MCGestaltIsInternalBuild();
  byte_27FEAEDE0 = result;
  return result;
}

void sub_26129BC3C(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_27FEA5478 != -1)
  {
    v33 = a1;
    v34 = a6;
    v35 = a5;
    swift_once();
    a1 = v33;
    a5 = v35;
    a6 = v34;
  }

  v8 = byte_27FEAEDE0;
  if (byte_27FEAEDE0 & 1) != 0 || (a1)
  {
    v9 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v9 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v41 = a3;
      v42 = a4;
      v10 = a6;
      v11 = a5;

      MEMORY[0x2666FFEA0](8250, 0xE200000000000000);
      MEMORY[0x2666FFEA0](v11, v10);
      a4 = v42;
    }

    else
    {
    }

    swift_unknownObjectRetain();

    oslog = sub_2613A122C();
    v12 = sub_2613A1D9C();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v12))
    {
      v37 = v12;
      v38 = a3;
      v13 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v13 = 136446466;
      sub_2613A186C();
      sub_26124C7CC();
      v14 = sub_2613A1FFC();
      v16 = v15;

      v17 = sub_26129C02C(8uLL, v14, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F878, &qword_2613A6DD8);
      v41 = sub_2613A195C();
      v42 = v24;
      MEMORY[0x2666FFEA0](45, 0xE100000000000000);
      v25 = MEMORY[0x2666FFE20](v17, v19, v21, v23);
      v27 = v26;

      MEMORY[0x2666FFEA0](v25, v27);

      v28 = v41;
      v29 = v42;
      v41 = 2715432;
      v42 = 0xE300000000000000;
      if (v8)
      {
        MEMORY[0x2666FFEA0](v28, v29);
      }

      else
      {
        MEMORY[0x2666FFF30](v28, v29);

        v30 = sub_2613A23EC();
        MEMORY[0x2666FFEA0](v30);
      }

      v31 = sub_26124C11C(v41, v42, &v40);

      *(v13 + 4) = v31;
      *(v13 + 12) = 2082;
      v32 = sub_26124C11C(v38, a4, &v40);

      *(v13 + 14) = v32;
      _os_log_impl(&dword_261243000, oslog, v37, "%{public}s.%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266701350](v36, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_26129C02C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
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

  result = sub_2613A1A0C();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_2613A1AEC();
}

uint64_t sub_26129C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 112) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  return MEMORY[0x2822009F8](sub_26129C140, 0, 0);
}

uint64_t sub_26129C140()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v0 + 40) = &type metadata for ValidationRequest;
  *(v0 + 48) = sub_26129C408();
  v6 = swift_allocObject();
  *(v0 + 16) = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_26129C248;
  v8 = *(v0 + 56);

  return sub_26129C45C(v8, 0, v0 + 16, v1 & 0xFFFFFF);
}

uint64_t sub_26129C248()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26129C394, 0, 0);
  }

  else
  {
    sub_26124C718(v2 + 16, &qword_27FE9F888, &qword_2613A6E00);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26129C394()
{
  sub_26124C718(v0 + 16, &qword_27FE9F888, &qword_2613A6E00);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_26129C408()
{
  result = qword_27FE9F880;
  if (!qword_27FE9F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F880);
  }

  return result;
}

uint64_t sub_26129C45C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 272) = a4;
  *(v4 + 144) = a2;
  *(v4 + 152) = a3;
  *(v4 + 136) = a1;
  v5 = sub_26139EC4C();
  *(v4 + 160) = v5;
  *(v4 + 168) = *(v5 - 8);
  *(v4 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  *(v4 + 184) = swift_task_alloc();
  v6 = sub_26139EF7C();
  *(v4 + 192) = v6;
  *(v4 + 200) = *(v6 - 8);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26129C5C4, 0, 0);
}

uint64_t sub_26129C5C4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_2612908FC(*(v0 + 272));
  sub_26128FAFC(50, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26124C718(*(v0 + 184), &qword_27FE9F220, qword_2613A5530);
  }

  else
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    (*(v6 + 8))(v4, v5);
    (*(v6 + 32))(v4, v7, v5);
  }

  v8 = *(v0 + 144);
  (*(*(v0 + 200) + 16))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
  sub_2613A025C();
  sub_26139EBFC();
  sub_26139EBBC();
  if (v8)
  {
    sub_26129CBEC(*(v0 + 144));
  }

  sub_26129DEE4(*(v0 + 152), v0 + 16);
  if (*(v0 + 40))
  {
    sub_26124A200((v0 + 16), v0 + 96);
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
    sub_26124A620(v9, v10);
    sub_26139EC2C();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  }

  v11 = sub_2612A1E08();
  v12 = *v11;
  *(v0 + 224) = *v11;
  v13 = type metadata accessor for ValidationResponse(0);
  v14 = sub_26129DF54(&qword_27FE9F8C0, type metadata accessor for ValidationResponse, &unk_2613A6FA8);

  v15 = sub_26125A798();
  v20 = (*(*v12 + 144) + **(*v12 + 144));
  v16 = swift_task_alloc();
  *(v0 + 232) = v16;
  *v16 = v0;
  v16[1] = sub_26129C8C4;
  v17 = *(v0 + 176);
  v18 = *(v0 + 136);

  return v20(v18, v17, v15 & 1, v13, v14, v0 + 56);
}

uint64_t sub_26129C8C4()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 276) = *(v2 + 56);
    *(v2 + 240) = *(v2 + 64);
    *(v2 + 248) = *(v2 + 72);
    *(v2 + 264) = *(v2 + 88);

    v3 = sub_26129CA04;
  }

  else
  {

    v3 = sub_26129CB24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26129CA04()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v13 = *(v0 + 240);
  v3 = *(v0 + 276);
  v4 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  sub_26129DF9C();
  swift_allocError();
  *v10 = v3;
  *(v10 + 8) = v13;
  *(v10 + 24) = v2;
  *(v10 + 32) = v1;
  (*(v5 + 8))(v4, v6);
  (*(v9 + 8))(v7, v8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26129CB24()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  (*(v0[25] + 8))(v0[27], v0[24]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26129CBEC(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        sub_26139EC3C();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26129CD10()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_26129CD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_2613A241C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2613A241C();

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

uint64_t sub_26129CE2C(uint64_t a1)
{
  v2 = sub_26129D038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26129CE68(uint64_t a1)
{
  v2 = sub_26129D038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26129CEA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F890, &qword_2613A6E08);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26129D038();
  sub_2613A262C();
  v14 = 0;
  sub_2613A238C();
  if (!v5)
  {
    v13 = 1;
    sub_2613A238C();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_26129D038()
{
  result = qword_27FEA5480[0];
  if (!qword_27FEA5480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5480);
  }

  return result;
}

uint64_t sub_26129D0AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2613A211C();

  MEMORY[0x2666FFEA0](v1, v2);
  MEMORY[0x2666FFEA0](0x203A44495456202CLL, 0xE800000000000000);
  MEMORY[0x2666FFEA0](v3, v4);
  return 0x203A6E656B6F54;
}

uint64_t type metadata accessor for ValidationResponse(uint64_t a1)
{
  result = qword_27FEA5990;
  if (!qword_27FEA5990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26129D1A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6572400;
  }

  else
  {
    v3 = 0x64496863746162;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6572400;
  }

  else
  {
    v5 = 0x64496863746162;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
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
    v8 = sub_2613A241C();
  }

  return v8 & 1;
}

uint64_t sub_26129D248()
{
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26129D2C4(uint64_t a1)
{
  sub_2613A19DC();
}

uint64_t sub_26129D32C(uint64_t a1)
{
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26129D3A4@<X0>(char *a2@<X8>)
{
  v3 = sub_2613A228C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_26129D404(uint64_t *a1@<X8>)
{
  v2 = 6572400;
  if (!*v1)
  {
    v2 = 0x64496863746162;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26129D43C()
{
  if (*v0)
  {
    return 6572400;
  }

  else
  {
    return 0x64496863746162;
  }
}

uint64_t sub_26129D470@<X0>(char *a3@<X8>)
{
  v4 = sub_2613A228C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_26129D4D4(uint64_t a1)
{
  v2 = sub_26129D99C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26129D510(uint64_t a1)
{
  v2 = sub_26129D99C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26129D54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26139F13C();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ValidationResponse(0) + 20);

  return v9(v7, a2, v6);
}

uint64_t sub_26129D600@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = sub_26139F13C();
  v26 = *(v30 - 8);
  v4 = MEMORY[0x28223BE20](v30);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F898, &qword_2613A6E10);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ValidationResponse(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26129D99C();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = v12;
  v23 = v6;
  v24 = v14;
  v15 = v26;
  v32 = 0;
  sub_26129DF54(&qword_27FE9F550, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v16 = v27;
  v17 = v28;
  sub_2613A231C();
  v27 = *(v15 + 32);
  (v27)(v24, v16, v30);
  v31 = 1;
  v18 = v23;
  sub_2613A231C();
  (*(v29 + 8))(v11, v17);
  v19 = v24;
  (v27)(&v24[*(v22 + 20)], v18, v30);
  sub_26129D9F0(v19, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_26129DA54(v19);
}

unint64_t sub_26129D99C()
{
  result = qword_27FE9F8A0;
  if (!qword_27FE9F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8A0);
  }

  return result;
}

uint64_t sub_26129D9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidationResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26129DA54(uint64_t a1)
{
  v2 = type metadata accessor for ValidationResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26129DACC()
{
  result = qword_27FE9F8A8;
  if (!qword_27FE9F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8A8);
  }

  return result;
}

unint64_t sub_26129DB24()
{
  result = qword_27FE9F8B0;
  if (!qword_27FE9F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8B0);
  }

  return result;
}

unint64_t sub_26129DB7C()
{
  result = qword_27FE9F8B8;
  if (!qword_27FE9F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8B8);
  }

  return result;
}

uint64_t sub_26129DBD0()
{
  sub_2613A211C();

  sub_26139F13C();
  sub_26129DF54(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v0);

  MEMORY[0x2666FFEA0](0x656E74726150202CLL, 0xED0000203A444972);
  v1 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v1);

  return 0x3A44496863746142;
}

uint64_t sub_26129DD48(uint64_t a1)
{
  result = sub_26139F13C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26129DDE0()
{
  result = qword_27FEA5AA0[0];
  if (!qword_27FEA5AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5AA0);
  }

  return result;
}

unint64_t sub_26129DE38()
{
  result = qword_27FEA5BB0;
  if (!qword_27FEA5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5BB0);
  }

  return result;
}

unint64_t sub_26129DE90()
{
  result = qword_27FEA5BB8[0];
  if (!qword_27FEA5BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5BB8);
  }

  return result;
}

uint64_t sub_26129DEE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F888, &qword_2613A6E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26129DF54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26129DF9C()
{
  result = qword_27FE9F8C8;
  if (!qword_27FE9F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8C8);
  }

  return result;
}

uint64_t sub_26129E004(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "PaymentTerminalService";
  }

  else
  {
    v4 = "newOnlineSession";
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = "newOnlineSession";
  }

  else
  {
    v6 = "PaymentTerminalService";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2613A241C();
  }

  return v8 & 1;
}

uint64_t sub_26129E0AC()
{
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26129E128(uint64_t a1)
{
  sub_2613A19DC();
}

uint64_t sub_26129E190(uint64_t a1)
{
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26129E208@<X0>(char *a2@<X8>)
{
  v3 = sub_2613A228C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_26129E268(unint64_t *a1@<X8>)
{
  v2 = "newOnlineSession";
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = "PaymentTerminalService";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_26129E2A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 88) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x2822009F8](sub_26129E2CC, 0, 0);
}

void sub_26129E2CC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(0);
  sub_2612FDFF8(0, v2[2], v2[3]);

  sub_2612FDFF8(1, v2[4], v2[5]);

  sub_2612FDFF8(2, v2[6], v2[7]);

  sub_2612FDFF8(4, *v2, v2[1]);

  sub_2612FDFF8(6, v2[8], v2[9]);

  sub_2612FDFF8(3, v2[10], v2[11]);

  sub_2612FDFF8(5, v2[12], v2[13]);

  if (v1)
  {
    v3 = sub_2613A0CFC();
  }

  else
  {
    *(v0 + 16) = *(v0 + 80);
    v3 = sub_2613A23EC();
  }

  v5 = *(v0 + 72);
  sub_2612FDFF8(7, v3, v4);

  v6 = *(v5 + 128);
  sub_2612FF320();
  v8 = v6 - v7;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = *(v0 + 64);
  *(v0 + 16) = v8;
  v10 = sub_2613A23EC();
  sub_2612FDFF8(9, v10, v11);

  sub_2612FE0B4(v0 + 16);
  *(swift_task_alloc() + 16) = v9;
  sub_26129E57C(sub_2612A0C20);

  sub_26124C718(v0 + 16, &qword_27FE9F8D0, &unk_2613AC6E0);
  v12 = *(v0 + 8);

  v12();
}

uint64_t sub_26129E57C(void (*a1)(uint64_t *__return_ptr, _OWORD *))
{
  sub_26125A870(v1, v7, &qword_27FE9F8D0, &unk_2613AC6E0);
  v4 = v8;
  if (!v8)
  {
    return v4 == 0;
  }

  v6[0] = v7[0];
  v6[1] = v7[1];
  v6[2] = v8;
  a1(&v9, v6);
  if (!v2)
  {
    sub_2612A0E50(v6);
    return v4 == 0;
  }

  result = sub_2612A0E50(v6);
  __break(1u);
  return result;
}

uint64_t sub_26129E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = a6;
  *(v6 + 104) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  return MEMORY[0x2822009F8](sub_26129E658, 0, 0);
}

uint64_t sub_26129E658()
{
  v1 = *(v0 + 80);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(1);
  if (v1)
  {
    v2 = (*(**(v0 + 80) + 192))();
  }

  else
  {
    v2 = sub_2613A0CFC();
  }

  sub_2612FDFF8(0, v2, v3);

  if (v1)
  {
    v4 = *(v0 + 80);
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
  }

  else
  {
    v5 = sub_2613A0CFC();
    v6 = v7;
  }

  sub_2612FDFF8(1, v5, v6);

  if (v1)
  {
    v8 = *(v0 + 80);
    v9 = *(v8 + 104);
    v10 = *(v8 + 112);
  }

  else
  {
    v9 = sub_2613A0CFC();
    v10 = v11;
  }

  sub_2612FDFF8(2, v9, v10);

  if (v1 && (v12 = *(v0 + 80), (v13 = *(v12 + 144)) != 0))
  {
    v14 = *(v12 + 136);
  }

  else
  {
    v14 = sub_2613A0CFC();
    v13 = v15;
  }

  v16 = *(v0 + 104);
  v17 = *(v0 + 64);
  sub_2612FDFF8(6, v14, v13);

  sub_2612FDFF8(3, v17[8], v17[9]);

  sub_2612FDFF8(5, v17[4], v17[5]);

  if (v16)
  {
    v18 = sub_2613A0CFC();
  }

  else
  {
    *(v0 + 16) = *(v0 + 88);
    v18 = sub_2613A23EC();
  }

  v20 = *(v0 + 96);
  v21 = *(v0 + 72);
  sub_2612FDFF8(7, v18, v19);

  v22 = [v20 description];
  v23 = sub_2613A18CC();
  v25 = v24;

  sub_2612FDFF8(10, v23, v25);

  sub_2612FE0B4(v0 + 16);
  *(swift_task_alloc() + 16) = v21;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718(v0 + 16, &qword_27FE9F8D0, &unk_2613AC6E0);
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_26129E984(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](sub_26129E9A4, 0, 0);
}

uint64_t sub_26129E9A4(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = sub_26127E13C(a1);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(11);
  sub_2612FDFF8(3, v2[10], v2[11]);

  sub_2612FDFF8(5, v2[12], v2[13]);

  sub_2612FDFF8(4, *v2, v2[1]);

  if (v4)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v4)
  {
    v6 = "newOnlineSession";
  }

  else
  {
    v6 = "PaymentTerminalService";
  }

  sub_2612FDFF8(10, v5, v6 | 0x8000000000000000);

  sub_2612FE0B4((v1 + 2));
  *(swift_task_alloc() + 16) = v3;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v1 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);
  v7 = v1[1];

  return v7();
}

uint64_t sub_26129EB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[100] = a3;
  v3[99] = a2;
  v3[98] = a1;
  return MEMORY[0x2822009F8](sub_26129EB60, 0, 0);
}

uint64_t sub_26129EB60()
{
  v1 = *(v0 + 792);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(2);
  *(v0 + 16) = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  *(v0 + 137) = *(v1 + 121);
  *(v0 + 112) = v6;
  *(v0 + 128) = v5;
  *(v0 + 96) = v7;
  if (sub_261273F24(v0 + 16) == 1)
  {
    v8 = sub_2613A0CFC();
    v10 = v9;
  }

  else
  {
    v8 = *(v0 + 32);
    v10 = *(v0 + 40);
  }

  v11 = *(v0 + 792);
  sub_2612FDFF8(0, v8, v10);

  *(v0 + 160) = *v11;
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[4];
  *(v0 + 208) = v11[3];
  *(v0 + 224) = v14;
  *(v0 + 176) = v12;
  *(v0 + 192) = v13;
  v15 = v11[5];
  v16 = v11[6];
  v17 = v11[7];
  *(v0 + 281) = *(v11 + 121);
  *(v0 + 256) = v16;
  *(v0 + 272) = v17;
  *(v0 + 240) = v15;
  if (sub_261273F24(v0 + 160) == 1)
  {
    v18 = sub_2613A0CFC();
    v20 = v19;
  }

  else
  {
    v18 = *(v0 + 192);
    v20 = *(v0 + 200);
  }

  v21 = *(v0 + 792);
  sub_2612FDFF8(1, v18, v20);

  *(v0 + 304) = *v21;
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[4];
  *(v0 + 352) = v21[3];
  *(v0 + 368) = v24;
  *(v0 + 320) = v22;
  *(v0 + 336) = v23;
  v25 = v21[5];
  v26 = v21[6];
  v27 = v21[7];
  *(v0 + 425) = *(v21 + 121);
  *(v0 + 400) = v26;
  *(v0 + 416) = v27;
  *(v0 + 384) = v25;
  if (sub_261273F24(v0 + 304) == 1)
  {
    v28 = sub_2613A0CFC();
    v30 = v29;
  }

  else
  {
    v28 = *(v0 + 352);
    v30 = *(v0 + 360);
  }

  v31 = *(v0 + 792);
  sub_2612FDFF8(2, v28, v30);

  *(v0 + 448) = *v31;
  v32 = v31[1];
  v33 = v31[2];
  v34 = v31[4];
  *(v0 + 496) = v31[3];
  *(v0 + 512) = v34;
  *(v0 + 464) = v32;
  *(v0 + 480) = v33;
  v35 = v31[5];
  v36 = v31[6];
  v37 = v31[7];
  *(v0 + 569) = *(v31 + 121);
  *(v0 + 544) = v36;
  *(v0 + 560) = v37;
  *(v0 + 528) = v35;
  if (sub_261273F24(v0 + 448) == 1)
  {
    v38 = sub_2613A0CFC();
    v40 = v39;
  }

  else
  {
    v38 = *(v0 + 528);
    v40 = *(v0 + 536);
  }

  v41 = *(v0 + 792);
  sub_2612FDFF8(3, v38, v40);

  *(v0 + 592) = *v41;
  v42 = v41[1];
  v43 = v41[2];
  v44 = v41[4];
  *(v0 + 640) = v41[3];
  *(v0 + 656) = v44;
  *(v0 + 608) = v42;
  *(v0 + 624) = v43;
  v45 = v41[5];
  v46 = v41[6];
  v47 = v41[7];
  *(v0 + 713) = *(v41 + 121);
  *(v0 + 688) = v46;
  *(v0 + 704) = v47;
  *(v0 + 672) = v45;
  if (sub_261273F24(v0 + 592) == 1)
  {
    v48 = sub_2613A0CFC();
    v50 = v49;
  }

  else
  {
    v48 = *(v0 + 592);
    v50 = *(v0 + 600);
  }

  v51 = *(v0 + 784);
  sub_2612FDFF8(4, v48, v50);

  v52 = sub_26139F0FC();
  sub_2612FDFF8(11, v52, v53);

  sub_2612FE0B4(v0 + 736);
  *(swift_task_alloc() + 16) = v51;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718(v0 + 736, &qword_27FE9F8D0, &unk_2613AC6E0);
  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_26129EF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 153) = a5;
  *(v5 + 808) = a4;
  *(v5 + 800) = a3;
  *(v5 + 792) = a2;
  *(v5 + 784) = a1;
  return MEMORY[0x2822009F8](sub_26129EF78, 0, 0);
}

uint64_t sub_26129EF78()
{
  v1 = *(v0 + 792);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(3);
  *(v0 + 16) = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  *(v0 + 137) = *(v1 + 121);
  *(v0 + 112) = v6;
  *(v0 + 128) = v5;
  *(v0 + 96) = v7;
  if (sub_261273F24(v0 + 16) == 1)
  {
    v8 = sub_2613A0CFC();
    v10 = v9;
  }

  else
  {
    v8 = *(v0 + 32);
    v10 = *(v0 + 40);
  }

  v11 = *(v0 + 792);
  sub_2612FDFF8(0, v8, v10);

  *(v0 + 160) = *v11;
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[4];
  *(v0 + 208) = v11[3];
  *(v0 + 224) = v14;
  *(v0 + 176) = v12;
  *(v0 + 192) = v13;
  v15 = v11[5];
  v16 = v11[6];
  v17 = v11[7];
  *(v0 + 281) = *(v11 + 121);
  *(v0 + 256) = v16;
  *(v0 + 272) = v17;
  *(v0 + 240) = v15;
  if (sub_261273F24(v0 + 160) == 1)
  {
    v18 = sub_2613A0CFC();
    v20 = v19;
  }

  else
  {
    v18 = *(v0 + 192);
    v20 = *(v0 + 200);
  }

  v21 = *(v0 + 792);
  sub_2612FDFF8(1, v18, v20);

  *(v0 + 304) = *v21;
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[4];
  *(v0 + 352) = v21[3];
  *(v0 + 368) = v24;
  *(v0 + 320) = v22;
  *(v0 + 336) = v23;
  v25 = v21[5];
  v26 = v21[6];
  v27 = v21[7];
  *(v0 + 425) = *(v21 + 121);
  *(v0 + 400) = v26;
  *(v0 + 416) = v27;
  *(v0 + 384) = v25;
  if (sub_261273F24(v0 + 304) == 1)
  {
    v28 = sub_2613A0CFC();
    v30 = v29;
  }

  else
  {
    v28 = *(v0 + 352);
    v30 = *(v0 + 360);
  }

  v31 = *(v0 + 792);
  sub_2612FDFF8(2, v28, v30);

  *(v0 + 448) = *v31;
  v32 = v31[1];
  v33 = v31[2];
  v34 = v31[4];
  *(v0 + 496) = v31[3];
  *(v0 + 512) = v34;
  *(v0 + 464) = v32;
  *(v0 + 480) = v33;
  v35 = v31[5];
  v36 = v31[6];
  v37 = v31[7];
  *(v0 + 569) = *(v31 + 121);
  *(v0 + 544) = v36;
  *(v0 + 560) = v37;
  *(v0 + 528) = v35;
  if (sub_261273F24(v0 + 448) == 1)
  {
    v38 = sub_2613A0CFC();
    v40 = v39;
  }

  else
  {
    v38 = *(v0 + 528);
    v40 = *(v0 + 536);
  }

  v41 = *(v0 + 792);
  sub_2612FDFF8(3, v38, v40);

  *(v0 + 592) = *v41;
  v42 = v41[1];
  v43 = v41[2];
  v44 = v41[4];
  *(v0 + 640) = v41[3];
  *(v0 + 656) = v44;
  *(v0 + 608) = v42;
  *(v0 + 624) = v43;
  v45 = v41[5];
  v46 = v41[6];
  v47 = v41[7];
  *(v0 + 713) = *(v41 + 121);
  *(v0 + 688) = v46;
  *(v0 + 704) = v47;
  *(v0 + 672) = v45;
  if (sub_261273F24(v0 + 592) == 1)
  {
    v48 = sub_2613A0CFC();
    v50 = v49;
  }

  else
  {
    v48 = *(v0 + 592);
    v50 = *(v0 + 600);
  }

  v51 = *(v0 + 808);
  v52 = *(v0 + 784);
  v53 = *(v0 + 153);
  sub_2612FDFF8(4, v48, v50);

  v54 = sub_26139F0FC();
  sub_2612FDFF8(11, v54, v55);

  v56 = sub_261272B0C(v51, v53);
  sub_2612FDFF8(10, v56, v57);

  sub_2612FE0B4(v0 + 736);
  *(swift_task_alloc() + 16) = v52;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718(v0 + 736, &qword_27FE9F8D0, &unk_2613AC6E0);
  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_26129F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 153) = a5;
  *(v5 + 808) = a4;
  *(v5 + 800) = a3;
  *(v5 + 792) = a2;
  *(v5 + 784) = a1;
  return MEMORY[0x2822009F8](sub_26129F3D0, 0, 0);
}

uint64_t sub_26129F3D0()
{
  v1 = *(v0 + 792);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(4);
  *(v0 + 16) = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  *(v0 + 137) = *(v1 + 121);
  *(v0 + 112) = v6;
  *(v0 + 128) = v5;
  *(v0 + 96) = v7;
  if (sub_261273F24(v0 + 16) == 1)
  {
    v8 = sub_2613A0CFC();
    v10 = v9;
  }

  else
  {
    v8 = *(v0 + 32);
    v10 = *(v0 + 40);
  }

  v11 = *(v0 + 792);
  sub_2612FDFF8(0, v8, v10);

  *(v0 + 160) = *v11;
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[4];
  *(v0 + 208) = v11[3];
  *(v0 + 224) = v14;
  *(v0 + 176) = v12;
  *(v0 + 192) = v13;
  v15 = v11[5];
  v16 = v11[6];
  v17 = v11[7];
  *(v0 + 281) = *(v11 + 121);
  *(v0 + 256) = v16;
  *(v0 + 272) = v17;
  *(v0 + 240) = v15;
  if (sub_261273F24(v0 + 160) == 1)
  {
    v18 = sub_2613A0CFC();
    v20 = v19;
  }

  else
  {
    v18 = *(v0 + 192);
    v20 = *(v0 + 200);
  }

  v21 = *(v0 + 792);
  sub_2612FDFF8(1, v18, v20);

  *(v0 + 304) = *v21;
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[4];
  *(v0 + 352) = v21[3];
  *(v0 + 368) = v24;
  *(v0 + 320) = v22;
  *(v0 + 336) = v23;
  v25 = v21[5];
  v26 = v21[6];
  v27 = v21[7];
  *(v0 + 425) = *(v21 + 121);
  *(v0 + 400) = v26;
  *(v0 + 416) = v27;
  *(v0 + 384) = v25;
  if (sub_261273F24(v0 + 304) == 1)
  {
    v28 = sub_2613A0CFC();
    v30 = v29;
  }

  else
  {
    v28 = *(v0 + 352);
    v30 = *(v0 + 360);
  }

  v31 = *(v0 + 792);
  sub_2612FDFF8(2, v28, v30);

  *(v0 + 448) = *v31;
  v32 = v31[1];
  v33 = v31[2];
  v34 = v31[4];
  *(v0 + 496) = v31[3];
  *(v0 + 512) = v34;
  *(v0 + 464) = v32;
  *(v0 + 480) = v33;
  v35 = v31[5];
  v36 = v31[6];
  v37 = v31[7];
  *(v0 + 569) = *(v31 + 121);
  *(v0 + 544) = v36;
  *(v0 + 560) = v37;
  *(v0 + 528) = v35;
  if (sub_261273F24(v0 + 448) == 1)
  {
    v38 = sub_2613A0CFC();
    v40 = v39;
  }

  else
  {
    v38 = *(v0 + 528);
    v40 = *(v0 + 536);
  }

  v41 = *(v0 + 792);
  sub_2612FDFF8(3, v38, v40);

  *(v0 + 592) = *v41;
  v42 = v41[1];
  v43 = v41[2];
  v44 = v41[4];
  *(v0 + 640) = v41[3];
  *(v0 + 656) = v44;
  *(v0 + 608) = v42;
  *(v0 + 624) = v43;
  v45 = v41[5];
  v46 = v41[6];
  v47 = v41[7];
  *(v0 + 713) = *(v41 + 121);
  *(v0 + 688) = v46;
  *(v0 + 704) = v47;
  *(v0 + 672) = v45;
  if (sub_261273F24(v0 + 592) == 1)
  {
    v48 = sub_2613A0CFC();
    v50 = v49;
  }

  else
  {
    v48 = *(v0 + 592);
    v50 = *(v0 + 600);
  }

  v51 = *(v0 + 808);
  v52 = *(v0 + 784);
  v53 = *(v0 + 153);
  sub_2612FDFF8(4, v48, v50);

  v54 = sub_26139F0FC();
  sub_2612FDFF8(11, v54, v55);

  v56 = sub_261272B0C(v51, v53);
  sub_2612FDFF8(10, v56, v57);

  sub_2612FE0B4(v0 + 736);
  *(swift_task_alloc() + 16) = v52;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718(v0 + 736, &qword_27FE9F8D0, &unk_2613AC6E0);
  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_26129F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_26139F13C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26129F8C0, 0, 0);
}

uint64_t sub_26129F8C0()
{
  v38 = v0;
  v1 = v0[7];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[9];
    *&v35 = MEMORY[0x277D84F90];
    sub_2613A219C();
    type metadata accessor for SafMonitorEventBuilder();
    v5 = *(v4 + 16);
    v4 += 16;
    v29 = v5;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v27 = (v4 - 8);
    v28 = *(v4 + 56);
    do
    {
      v7 = v0[10];
      v8 = v0[8];
      v10 = v0[5];
      v9 = v0[6];
      v31 = v0[3];
      v32 = v0[4];
      v29(v7, v6, v8);
      sub_2612BAC20(12);
      v11 = sub_26139F0FC();
      sub_2612FDFF8(11, v11, v12);

      sub_2612FDFF8(3, v10, v9);

      sub_2612FDFF8(5, v31, v32);

      (*v27)(v7, v8);
      sub_2613A217C();
      sub_2613A21AC();
      sub_2613A21BC();
      sub_2613A218C();
      v6 += v28;
      --v2;
    }

    while (v2);
    v3 = v35;
  }

  v30 = v0[2];
  if (v3 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2613A221C())
  {
    v14 = MEMORY[0x277D84F90];
    v15 = 4;
    while (1)
    {
      v16 = v15 - 4;
      if ((v3 & 0xC000000000000001) == 0)
      {
        break;
      }

      MEMORY[0x2667005C0](v15 - 4, v3);
      v17 = v15 - 3;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      sub_2612FE0B4(v33);

      if (v34)
      {
        v35 = v33[0];
        v36 = v33[1];
        v37 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2612A0C38(0, *(v14 + 2) + 1, 1, v14);
        }

        v19 = *(v14 + 2);
        v18 = *(v14 + 3);
        if (v19 >= v18 >> 1)
        {
          v14 = sub_2612A0C38((v18 > 1), v19 + 1, 1, v14);
        }

        *(v14 + 2) = v19 + 1;
        v20 = &v14[48 * v19];
        v21 = v35;
        v22 = v37;
        *(v20 + 3) = v36;
        *(v20 + 4) = v22;
        *(v20 + 2) = v21;
      }

      else
      {
        sub_26124C718(v33, &qword_27FE9F8D0, &unk_2613AC6E0);
      }

      ++v15;
      if (v17 == i)
      {
        goto LABEL_25;
      }
    }

    if (v16 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v17 = v15 - 3;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_13;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_25:
  if (*(v14 + 2))
  {
    v23 = v30[3];
    v24 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v23);
    (*(v24 + 128))(v14, v23, v24);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_26129FC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_26129FC9C, 0, 0);
}

uint64_t sub_26129FC9C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(13);
  v0[2] = v1;
  v4 = sub_2613A23EC();
  sub_2612FDFF8(14, v4, v5);

  sub_2612FDFF8(3, v3[8], v3[9]);

  sub_2612FDFF8(5, v3[4], v3[5]);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v2;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26129FE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  return MEMORY[0x2822009F8](sub_26129FE44, 0, 0);
}

uint64_t sub_26129FE44()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(5);
  *(v0 + 16) = v2;
  v4 = sub_2613A23EC();
  sub_2612FDFF8(13, v4, v5);

  v6 = sub_26139F0FC();
  sub_2612FDFF8(12, v6, v7);

  sub_2612FDFF8(5, v3[4], v3[5]);

  sub_2612FDFF8(3, v3[8], v3[9]);

  if (v1)
  {
    v8 = sub_2613A0CFC();
  }

  else
  {
    *(v0 + 16) = *(v0 + 96);
    v8 = sub_2613A23EC();
  }

  v10 = *(v0 + 72);
  sub_2612FDFF8(8, v8, v9);

  sub_2612FE0B4(v0 + 16);
  *(swift_task_alloc() + 16) = v10;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718(v0 + 16, &qword_27FE9F8D0, &unk_2613AC6E0);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2612A0064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_2612A0088, 0, 0);
}

uint64_t sub_2612A0088()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(6);
  v0[2] = v2;
  v5 = sub_2613A23EC();
  sub_2612FDFF8(13, v5, v6);

  sub_2612FDFF8(5, v4[4], v4[5]);

  sub_2612FDFF8(3, v4[8], v4[9]);

  v7 = [v1 description];
  v8 = sub_2613A18CC();
  v10 = v9;

  sub_2612FDFF8(10, v8, v10);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v3;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);
  v11 = v0[1];

  return v11();
}

uint64_t sub_2612A0254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return MEMORY[0x2822009F8](sub_2612A027C, 0, 0);
}

uint64_t sub_2612A027C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v11 = v0[9];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(7);
  v0[2] = v3;
  v5 = sub_2613A23EC();
  sub_2612FDFF8(13, v5, v6);

  v7 = sub_26139F0FC();
  sub_2612FDFF8(12, v7, v8);

  sub_2612FDFF8(5, v4[4], v4[5]);

  sub_2612FDFF8(2, v2, v1);

  sub_2612FDFF8(3, v4[8], v4[9]);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v11;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);
  v9 = v0[1];

  return v9();
}

uint64_t sub_2612A0460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612A0500, 0, 0);
}

uint64_t sub_2612A0500()
{
  v1 = v0[12];
  v2 = v0[10];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(8);
  sub_26125A870(v2, v1, &qword_27FE9F280, &unk_2613A42B0);
  v3 = sub_26139F13C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[12];
  if (v5 == 1)
  {
    sub_26124C718(v0[12], &qword_27FE9F280, &unk_2613A42B0);
    v7 = sub_2613A0CFC();
    v9 = v8;
  }

  else
  {
    v7 = sub_26139F0FC();
    v9 = v10;
    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  sub_2612FDFF8(12, v7, v9);

  sub_2612FDFF8(5, v13[4], v13[5]);

  sub_2612FDFF8(3, v13[8], v13[9]);

  v14 = [v11 description];
  v15 = sub_2613A18CC();
  v17 = v16;

  sub_2612FDFF8(10, v15, v17);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v12;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);

  v18 = v0[1];

  return v18();
}

uint64_t sub_2612A0780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_2612A07A4, 0, 0);
}

uint64_t sub_2612A07A4()
{
  v1 = v0[9];
  v2 = v0[8];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(9);
  v3 = sub_26139F0FC();
  sub_2612FDFF8(12, v3, v4);

  sub_2612FDFF8(5, v2[4], v2[5]);

  sub_2612FDFF8(3, v2[8], v2[9]);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v1;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);
  v5 = v0[1];

  return v5();
}

uint64_t sub_2612A0900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612A09A0, 0, 0);
}

uint64_t sub_2612A09A0()
{
  v1 = v0[12];
  v2 = v0[10];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(10);
  sub_26125A870(v2, v1, &qword_27FE9F280, &unk_2613A42B0);
  v3 = sub_26139F13C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[12];
  if (v5 == 1)
  {
    sub_26124C718(v0[12], &qword_27FE9F280, &unk_2613A42B0);
    v7 = sub_2613A0CFC();
    v9 = v8;
  }

  else
  {
    v7 = sub_26139F0FC();
    v9 = v10;
    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  sub_2612FDFF8(12, v7, v9);

  sub_2612FDFF8(5, v13[4], v13[5]);

  sub_2612FDFF8(3, v13[8], v13[9]);

  v14 = [v11 description];
  v15 = sub_2613A18CC();
  v17 = v16;

  sub_2612FDFF8(10, v15, v17);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v12;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);

  v18 = v0[1];

  return v18();
}

char *sub_2612A0C38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E0, &unk_2613A7300);
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

uint64_t sub_2612A0D58(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 120))(a1, v4, v5);
}

unint64_t sub_2612A0DC8()
{
  result = qword_27FE9F8D8;
  if (!qword_27FE9F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8D8);
  }

  return result;
}

uint64_t sub_2612A0EBC()
{
  type metadata accessor for SAFCoreDataStore();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E8, &qword_2613A7310);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 24) = result;
  qword_27FEAEDE8 = v0;
  return result;
}

uint64_t *sub_2612A0F20()
{
  if (qword_27FEA5DC0 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEDE8;
}

id sub_2612A0F70()
{
  v1 = sub_26139EF7C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  os_unfair_lock_lock(v5 + 4);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_26124BD6C();
  (*(v2 + 16))(v4, v7, v1);
  sub_26139EF4C();
  (*(v2 + 8))(v4, v1);
  v8 = sub_2613A189C();

  v9 = [v6 fileExistsAtPath_];

  os_unfair_lock_unlock(v5 + 4);
  return v9;
}

void sub_2612A10E0()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_2612A1210(&v2);
  os_unfair_lock_unlock(v1 + 4);
}

void *sub_2612A115C@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
LABEL_3:
    *a1 = v3;
  }

  v5 = a1;
  result = sub_2612A131C();
  if (!v2)
  {
    v3 = result;
    *(v1 + 16) = result;

    a1 = v5;
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2612A11D0()
{

  return swift_deallocClassInstance();
}

void *sub_2612A1210@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_2612A1284(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2612A12A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281451980)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281451980);
    }
  }
}

void *sub_2612A131C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v66 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v65 = &v64 - v4;
  MEMORY[0x28223BE20](v3);
  v67 = &v64 - v5;
  v68 = type metadata accessor for LocalCoreDataConfiguration(0);
  MEMORY[0x28223BE20](v68);
  v70 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26139EF7C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  type metadata accessor for Daemon();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = sub_2613A189C();
  v20 = sub_2613A189C();
  v21 = [v18 URLForResource:v19 withExtension:v20];

  if (v21)
  {
    sub_26139EF3C();

    v22 = sub_26124BD6C();
    v23 = v8;
    v24 = *(v8 + 16);
    v24(v14, v22, v7);
    v24(v11, v16, v7);
    v25 = v70;
    sub_2612E3DF8(0x646E4165726F7453, 0xEF64726177726F46, v14, v11, 0, 0, v70);
    type metadata accessor for CoreDataStore();
    v71[3] = v68;
    v71[4] = &off_2873BB370;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v71);
    sub_2612A1B70(v25, boxed_opaque_existential_0);
    v27 = v69;
    v28 = sub_2612E2D64(v71);
    v29 = v7;
    v30 = v23;
    v31 = v16;
    if (v27)
    {
      v71[0] = v27;
      v32 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      sub_2612A1BD4();
      if (swift_dynamicCast())
      {

        v33 = v71[6];
        v34 = sub_26129B8EC();
        v35 = v66;
        sub_26124AA44(v34, v66);
        v36 = sub_2613A124C();
        v37 = *(v36 - 8);
        if ((*(v37 + 48))(v35, 1, v36) == 1)
        {
          sub_26124C718(v35, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v67 = v29;
          v68 = v28;
          v46 = v33;
          v47 = sub_2613A122C();
          v48 = sub_2613A1D8C();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v69 = v31;
            v51 = v50;
            *v49 = 138412290;
            *(v49 + 4) = v46;
            *v50 = v46;
            v52 = v46;
            _os_log_impl(&dword_261243000, v47, v48, "Error opening database: [%@]", v49, 0xCu);
            sub_26124C718(v51, &qword_27FEA0410, &qword_2613AA780);
            v53 = v51;
            v31 = v69;
            MEMORY[0x266701350](v53, -1, -1);
            v54 = v49;
            v35 = v66;
            MEMORY[0x266701350](v54, -1, -1);
          }

          (*(v37 + 8))(v35, v36);
          v29 = v67;
          v28 = v68;
        }

        swift_willThrow();
        v25 = v70;
      }

      sub_2612A1C20(v25);
      (*(v30 + 8))(v31, v29);
    }

    else
    {
      v69 = v16;
      v38 = sub_26129B8EC();
      v39 = v67;
      sub_26124AA44(v38, v67);
      v40 = sub_2613A124C();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40) == 1)
      {
        sub_2612A1C20(v25);
        (*(v30 + 8))(v69, v29);
        sub_26124C718(v39, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v68 = v28;
        v42 = sub_2613A122C();
        v43 = sub_2613A1D9C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_261243000, v42, v43, "SAF DB opened successfully", v44, 2u);
          v45 = v44;
          v39 = v67;
          MEMORY[0x266701350](v45, -1, -1);
        }

        sub_2612A1C20(v25);
        (*(v30 + 8))(v69, v29);
        (*(v41 + 8))(v39, v40);
        return v68;
      }
    }

    return v28;
  }

  else
  {
    v56 = sub_26129B8EC();
    v57 = v65;
    sub_26124AA44(v56, v65);
    v58 = sub_2613A124C();
    v59 = *(v58 - 8);
    v60 = v57;
    if ((*(v59 + 48))(v57, 1, v58) == 1)
    {
      sub_26124C718(v57, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v61 = sub_2613A122C();
      v62 = sub_2613A1D8C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_261243000, v61, v62, "Could not generate model URL", v63, 2u);
        MEMORY[0x266701350](v63, -1, -1);
      }

      (*(v59 + 8))(v60, v58);
    }

    result = sub_2613A220C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2612A1B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalCoreDataConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2612A1BD4()
{
  result = qword_27FE9F8F0;
  if (!qword_27FE9F8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9F8F0);
  }

  return result;
}

uint64_t sub_2612A1C20(uint64_t a1)
{
  v2 = type metadata accessor for LocalCoreDataConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2612A1C7C()
{
  type metadata accessor for SecureChannel();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  [v1 setTimeoutIntervalForResource_];
  [v1 setTLSMinimumSupportedProtocolVersion_];
  v2 = [objc_opt_self() sessionWithConfiguration_];

  *(v0 + 16) = v2;
  result = sub_2612A1F34();
  *(v0 + 24) = result;
  qword_27FEAEDF0 = v0;
  return result;
}

uint64_t sub_2612A1D44()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  [v1 setTimeoutIntervalForResource_];
  [v1 setTLSMinimumSupportedProtocolVersion_];
  v2 = [objc_opt_self() sessionWithConfiguration_];

  *(v0 + 16) = v2;
  *(v0 + 24) = sub_2612A1F34();
  return v0;
}

uint64_t *sub_2612A1E08()
{
  if (qword_27FEA5DD0 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEDF0;
}

id sub_2612A1E58()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_2612A1E9C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

id sub_2612A1F34()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  [v0 setTimeoutIntervalForResource_];
  [v0 setTLSMinimumSupportedProtocolVersion_];
  v1 = objc_allocWithZone(MEMORY[0x277CF0188]);
  v2 = sub_2613A189C();
  v3 = [v1 initWithIdentifier_];

  [v0 set:v3 appleIDContext:?];
  v4 = [objc_opt_self() sessionWithConfiguration_];

  return v4;
}

id sub_2612A203C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_2612A2080(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_2612A2118(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = v6;
  *(v7 + 96) = a6;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 160) = a3;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  *(v7 + 104) = sub_26129DF9C();
  v8 = sub_2613A25DC();
  *(v7 + 112) = v8;
  *(v7 + 120) = *(v8 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612A220C, 0, 0);
}

uint64_t sub_2612A220C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 160);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = *(v0 + 72);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_2612A231C;
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000017, 0x80000002613B9DB0, sub_2612A3CF4, v4, v7);
}

uint64_t sub_2612A231C()
{

  return MEMORY[0x2822009F8](sub_2612A2434, 0, 0);
}

uint64_t sub_2612A2434()
{
  (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 136), *(v0 + 112));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 136);
    v3 = *(v0 + 120);
    v15 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = *v1;
    v6 = *(v1 + 1);
    v7 = *(v1 + 2);
    v9 = *(v1 + 3);
    v8 = *(v1 + 4);
    *(v0 + 16) = *v1;
    *(v0 + 24) = v6;
    *(v0 + 32) = v7;
    *(v0 + 40) = v9;
    *(v0 + 48) = v8;
    swift_willThrowTypedImpl();
    (*(v3 + 8))(v2, v15);

    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = v7;
    *(v4 + 24) = v9;
    *(v4 + 32) = v8;
  }

  else
  {
    v11 = *(v0 + 128);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    (*(*(v12 - 8) + 32))(v13, v11, v12);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2612A25C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v19 = a4;
  sub_26129DF9C();
  sub_2613A25DC();
  v11 = sub_2613A1BEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18[-v13];
  (*(v12 + 16))(&v18[-v13], a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  (*(v12 + 32))(v16 + v15, v14, v11);
  (*(*a2 + 152))(a3, v19, sub_2612A441C, v16, a5, a6);
}

uint64_t sub_2612A2788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26129DF9C();
  v4 = sub_2613A25DC();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v8 - v5, a1, v4);
  sub_2613A1BEC();
  return sub_2613A1BDC();
}

uint64_t sub_2612A2888(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v23 = a4;
  v24 = a2;
  v21 = a1;
  v9 = sub_26139EC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v15 = v14 + v11;
  v16 = swift_allocObject();
  *(v16 + 2) = a5;
  *(v16 + 3) = a6;
  v17 = a6;
  v18 = v23;
  *(v16 + 4) = v22;
  *(v16 + 5) = v18;
  *(v16 + 6) = v13;
  (*(v10 + 32))(&v16[v14], v12, v9);
  LODWORD(v10) = v24;
  v16[v15] = v24;

  sub_2612A2C20(v21, v10, 0, 0, sub_2612A3D04, v16, a5, v17);
}

uint64_t sub_2612A2A48(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v20 = a8;
  sub_26129DF9C();
  v14 = sub_2613A25DC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  (*(v15 + 16))(&v20 - v16, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_26129428C(*v17, 2);

    if (v18)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        sub_2612A2C20(a5, a6 & 1, 0, 1, a2, a3, a7, v20);
      }
    }

    else
    {
      return a2(a1);
    }
  }

  else
  {
    a2(a1);
    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_2612A2C20(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v52 = a5;
  v43 = a4;
  v49 = a3;
  v44 = a2;
  sub_26129DF9C();
  v47 = a7;
  v11 = sub_2613A25DC();
  v50 = *(v11 - 1);
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v41 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v38 - v15;
  v16 = sub_26139EC4C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  type metadata accessor for SPRUtils();
  sub_2612A3DD4();
  sub_2612C61EC(sub_2612A35A8);
  v46 = a1;
  v39 = v17;
  v40 = a6;
  v23 = aBlock[0];
  MEMORY[0x28223BE20](v24);
  *(&v38 - 4) = v23;
  *(&v38 - 3) = a1;
  *(&v38 - 16) = v43 & 1;
  sub_2612C61EC(sub_2612A4240);
  v51 = v23;
  v25 = *v45;
  if (v44)
  {
    v26 = (*(v25 + 120))();
  }

  else
  {
    v26 = (*(v25 + 96))();
  }

  v27 = v26;
  v28 = v40;
  v29 = v46;
  v30 = v39;
  type metadata accessor for APIServiceHelper();
  sub_26129429C(v22);
  v31 = sub_26139EBCC();
  (*(v30 + 16))(v20, v29, v16);
  v32 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 2) = v47;
  *(v33 + 3) = v34;
  *(v33 + 4) = v52;
  *(v33 + 5) = v28;
  (*(v30 + 32))(&v33[v32], v20, v16);
  aBlock[4] = sub_2612A4304;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2612A3BEC;
  aBlock[3] = &block_descriptor_2;
  v35 = _Block_copy(aBlock);

  v36 = [v27 dataTaskWithRequest:v31 completionHandler:v35];
  _Block_release(v35);

  [v36 resume];
  return (*(v30 + 8))(v22, v16);
}

id sub_2612A35A8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D64040]) init];
  *a1 = result;
  return result;
}

uint64_t sub_2612A35EC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v76 = a7;
  v77 = a3;
  v78 = a5;
  v79 = a6;
  v74 = a1;
  v75 = a2;
  v11 = sub_2613A1F8C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  v16 = *(a8 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26129DF9C();
  v19 = sub_2613A25DC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v67 - v21;
  if (a4)
  {
    v23 = sub_261294274();
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v27 = v23[4];
    *v22 = *v23;
    *(v22 + 1) = v24;
    *(v22 + 2) = v25;
    *(v22 + 3) = v26;
    *(v22 + 4) = v27;
    swift_storeEnumTagMultiPayload();

    v78(v22);
    return (*(v20 + 8))(v22, v19);
  }

  v70 = v18;
  v71 = v15;
  v68 = v12;
  v69 = v11;
  v72 = v16;
  v73 = v20;
  v29 = v77;
  v30 = v78;
  v32 = v75;
  v31 = v76;
  if (!v77 || (objc_opt_self(), (v33 = swift_dynamicCastObjCClass()) == 0) || v32 >> 60 == 15)
  {
    v45 = sub_261294250();
    v46 = v45[1];
    v47 = v45[2];
    v48 = v45[3];
    v49 = v45[4];
    *v22 = *v45;
    *(v22 + 1) = v46;
    *(v22 + 2) = v47;
    *(v22 + 3) = v48;
    *(v22 + 4) = v49;
    swift_storeEnumTagMultiPayload();

    v30(v22);
    return (*(v73 + 8))(v22, v19);
  }

  v34 = v33;
  type metadata accessor for APIServiceHelper();
  v77 = v29;
  v35 = v74;
  sub_26125C348(v74, v32);
  sub_2612947FC(v31, v35, v32, v34);
  v36 = [v34 statusCode];
  v37 = v19;
  if (v36 - 300 >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v50 = v71;
    sub_26124B218(a8, a8, v71);
    v51 = v72;
    v52 = (*(v72 + 48))(v50, 1, a8);
    v38 = v73;
    v53 = v35;
    if (v52 != 1)
    {
      v59 = v70;
      (*(v51 + 32))(v70, v50, a8);
      (*(v51 + 16))(v22, v59, a8);
      swift_storeEnumTagMultiPayload();
      v30(v22);

      sub_26124A168(v53, v32);
      (*(v38 + 8))(v22, v37);
      return (*(v51 + 8))(v59, a8);
    }

    (*(v68 + 8))(v50, v69);
    v54 = sub_26129425C();
    v55 = v54[1];
    v56 = v54[2];
    v57 = v54[3];
    v58 = v54[4];
    *v22 = *v54;
    *(v22 + 1) = v55;
    *(v22 + 2) = v56;
    *(v22 + 3) = v57;
    *(v22 + 4) = v58;
    swift_storeEnumTagMultiPayload();

    v30(v22);

    v44 = v35;
  }

  else
  {
    v38 = v73;
    if ((v36 | 2) == 0x193)
    {
      v39 = sub_261294268();
      v40 = v39[1];
      v41 = v39[2];
      v42 = v39[3];
      v43 = v39[4];
      *v22 = *v39;
      *(v22 + 1) = v40;
      *(v22 + 2) = v41;
      *(v22 + 3) = v42;
      *(v22 + 4) = v43;
      swift_storeEnumTagMultiPayload();

      v30(v22);

      v44 = v74;
    }

    else
    {
      sub_2612A43C8();
      v60 = v74;
      sub_26124B218(&type metadata for APIErrorResponse, &type metadata for APIErrorResponse, &v80);
      if (*(&v80 + 1))
      {
        sub_261294240(4, v80, *(&v80 + 1), v81, *(&v81 + 1), &v80);
        v61 = v81;
        *v22 = v80;
        *(v22 + 1) = v61;
        *(v22 + 4) = v82;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v62 = sub_26129425C();
        v63 = v62[1];
        v64 = v62[2];
        v65 = v62[3];
        v66 = v62[4];
        *v22 = *v62;
        *(v22 + 1) = v63;
        *(v22 + 2) = v64;
        *(v22 + 3) = v65;
        *(v22 + 4) = v66;
        swift_storeEnumTagMultiPayload();
      }

      v30(v22);

      v44 = v60;
    }
  }

  sub_26124A168(v44, v32);
  return (*(v38 + 8))(v22, v37);
}

uint64_t sub_2612A3BEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_26139F01C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_26124A168(v6, v10);
}

uint64_t sub_2612A3CB4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612A3D04(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_26139EC4C() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v5 + 80) + 56) & ~*(v5 + 80));
  v10 = *(v9 + *(v5 + 64));

  return sub_2612A2A48(a1, v6, v7, v8, v9, v10, v3, v4);
}

unint64_t sub_2612A3DD4()
{
  result = qword_27FE9F8F8;
  if (!qword_27FE9F8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9F8F8);
  }

  return result;
}

uint64_t sub_2612A3E34(uint64_t a1)
{
  v2 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError, &unk_2613A74A4);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2612A3EA0(uint64_t a1)
{
  v2 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError, &unk_2613A74A4);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2612A3F0C(void *a1, uint64_t a2)
{
  v4 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError, &unk_2613A74A4);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2612A3F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError, &unk_2613A74A4);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2612A4018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2613A256C();
  sub_2613A183C();
  return sub_2613A25CC();
}

uint64_t sub_2612A4078(uint64_t a1)
{
  v2 = sub_2612A4514(&qword_27FE9F928, type metadata accessor for SecureChannelError, &unk_2613A75F8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2612A40E4(uint64_t a1)
{
  v2 = sub_2612A4514(&qword_27FE9F928, type metadata accessor for SecureChannelError, &unk_2613A75F8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2612A4150(uint64_t a1)
{
  v2 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError, &unk_2613A74A4);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2612A41BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError, &unk_2613A74A4);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

void sub_2612A4240(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = sub_26139EBCC();
  v9 = 0;
  v5 = [v2 securingRequest:v4 force:v3 error:&v9];

  v6 = v9;
  if (v5)
  {
    sub_26139EBEC();
    v7 = v6;
  }

  else
  {
    v8 = v9;
    sub_26139EE7C();

    swift_willThrow();
  }
}

uint64_t sub_2612A4304(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(sub_26139EC4C() - 8);
  return sub_2612A35EC(a1, a2, a3, a4, *(v4 + 32), *(v4 + 40), v4 + ((*(v11 + 80) + 48) & ~*(v11 + 80)), v9, v10);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2612A43C8()
{
  result = qword_27FE9F908;
  if (!qword_27FE9F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F908);
  }

  return result;
}

uint64_t sub_2612A441C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_26129DF9C();
  sub_2613A25DC();
  v4 = *(sub_2613A1BEC() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_2612A2788(a1, v5, v3);
}

uint64_t sub_2612A4514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2612A45B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2612A4770()
{
  result = qword_27FE9F948;
  if (!qword_27FE9F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F948);
  }

  return result;
}

uint64_t sub_2612A4858()
{
  v0 = sub_2613A1DDC();
  MEMORY[0x28223BE20](v0);
  v1 = sub_2613A175C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2613A1E0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26127BBE0();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_2613A173C();
  v7[1] = MEMORY[0x277D84F90];
  sub_2612A4DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_2612A4E08();
  sub_2613A203C();
  result = sub_2613A1E2C();
  qword_281451F30 = result;
  return result;
}

uint64_t *sub_2612A4A58()
{
  if (qword_281451F28 != -1)
  {
    swift_once();
  }

  return &qword_281451F30;
}

uint64_t sub_2612A4ACC()
{
  v0 = sub_2613A1DDC();
  MEMORY[0x28223BE20](v0);
  v1 = sub_2613A175C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2613A1E0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26127BBE0();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_2613A173C();
  v7[1] = MEMORY[0x277D84F90];
  sub_2612A4DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_2612A4E08();
  sub_2613A203C();
  result = sub_2613A1E2C();
  qword_281451F40 = result;
  return result;
}

uint64_t *sub_2612A4CCC()
{
  if (qword_281451F38 != -1)
  {
    swift_once();
  }

  return &qword_281451F40;
}

id sub_2612A4D40(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

unint64_t sub_2612A4DB0()
{
  result = qword_281451970;
  if (!qword_281451970)
  {
    sub_2613A1DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281451970);
  }

  return result;
}

unint64_t sub_2612A4E08()
{
  result = qword_281451988[0];
  if (!qword_281451988[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F460, qword_2613A4D60);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281451988);
  }

  return result;
}

uint64_t sub_2612A4E8C()
{
  v1 = 1702125924;
  if (*v0)
  {
    v1 = 0x6E6F69676572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x74736566696E616DLL;
  }
}

uint64_t sub_2612A4F08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612A6B50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612A4F30(uint64_t a1)
{
  v2 = sub_2612A51E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612A4F6C(uint64_t a1)
{
  v2 = sub_2612A51E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612A4FA8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F968, &qword_2613A76D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612A51E0();
  sub_2613A262C();
  LOBYTE(v15) = 0;
  sub_26139F0BC();
  sub_2612A56C0(&qword_27FE9F970, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2613A23CC();
  if (!v2)
  {
    v9 = type metadata accessor for DiscoveryCacheContent(0);
    LOBYTE(v15) = 1;
    sub_2613A238C();
    v10 = (v3 + *(v9 + 24));
    v12 = *v10;
    v11 = v10[1];
    v15 = v12;
    v16 = v11;
    v14[15] = 2;
    sub_2612A5234();
    sub_2613A23CC();
    LOBYTE(v15) = 3;
    sub_2613A238C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2612A51E0()
{
  result = qword_27FEA6260;
  if (!qword_27FEA6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA6260);
  }

  return result;
}

unint64_t sub_2612A5234()
{
  result = qword_27FE9F978;
  if (!qword_27FE9F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F978);
  }

  return result;
}

uint64_t sub_2612A5288@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_26139F0BC();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F980, &qword_2613A76D8);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v23 - v6;
  v8 = type metadata accessor for DiscoveryCacheContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612A51E0();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = v10;
  v12 = v25;
  LOBYTE(v29) = 0;
  sub_2612A56C0(&qword_27FE9F988, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_2613A231C();
  (*(v12 + 32))(v10, v27, v4);
  LOBYTE(v29) = 1;
  v13 = sub_2613A22DC();
  v14 = &v10[v8[5]];
  *v14 = v13;
  v14[1] = v15;
  v31 = 2;
  sub_2612A5708();
  sub_2613A231C();
  v16 = v30;
  v17 = &v10[v8[6]];
  *v17 = v29;
  *(v17 + 1) = v16;
  LOBYTE(v29) = 3;
  v18 = sub_2613A22DC();
  v20 = v19;
  (*(v26 + 8))(v7, v28);
  v21 = (v11 + v8[7]);
  *v21 = v18;
  v21[1] = v20;
  sub_2612A575C(v11, v24);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_2612A57C0(v11);
}

uint64_t sub_2612A56C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2612A5708()
{
  result = qword_27FE9F990;
  if (!qword_27FE9F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F990);
  }

  return result;
}

uint64_t sub_2612A575C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryCacheContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612A57C0(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryCacheContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2612A584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for DiscoveryCacheContent(0);
  v17 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26139F0BC();
  (*(*(v20 - 8) + 16))(v19, a1, v20);
  v21 = &v19[v16[5]];
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = &v19[v16[6]];
  *v22 = a4;
  *(v22 + 1) = a5;
  v23 = &v19[v16[7]];
  *v23 = v28;
  v23[1] = a7;
  sub_2612A575C(v19, v15);
  (*(v17 + 56))(v15, 0, 1, v16);
  v24 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
  v25 = v29;
  swift_beginAccess();

  sub_2612A5A5C(v15, v25 + v24);
  swift_endAccess();
  sub_2612A6CB8();
  return sub_2612A57C0(v19);
}

uint64_t sub_2612A5A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612A5ACC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for DiscoveryCacheContent(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
  swift_beginAccess();
  sub_2612A5A5C(v6, v0 + v8);
  swift_endAccess();
  sub_2612A70F4();
  v9 = sub_26129B97C();
  sub_26125A870(v9, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v3, 1, v10) == 1)
  {
    return sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v13 = sub_2613A122C();
  v14 = sub_2613A1D7C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_261243000, v13, v14, "Discovery cache released", v15, 2u);
    MEMORY[0x266701350](v15, -1, -1);
  }

  return (*(v11 + 8))(v3, v10);
}

uint64_t sub_2612A5D28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F338, &unk_2613A4630);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = type metadata accessor for DiscoveryCacheContent(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  v25 = sub_2612A624C();
  if (v25)
  {
    goto LABEL_14;
  }

  v41 = v6;
  v42 = v22;
  v43 = v12;
  v26 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
  swift_beginAccess();
  v44 = v26;
  sub_26125A870(v2 + v26, v15, &qword_27FE9F998, &qword_2613A76E0);
  v40 = v19;
  v27 = *(v19 + 48);
  LODWORD(v26) = v27(v15, 1, v18);
  sub_26124C718(v15, &qword_27FE9F998, &qword_2613A76E0);
  if (v26 == 1 && (sub_2612A64B4() & 1) == 0)
  {
LABEL_12:
    (*(v40 + 56))(v17, 1, 1, v18);
    goto LABEL_13;
  }

  sub_26125A870(v2 + v44, v17, &qword_27FE9F998, &qword_2613A76E0);
  if (v27(v17, 1, v18) == 1)
  {
LABEL_13:
    v25 = sub_26124C718(v17, &qword_27FE9F998, &qword_2613A76E0);
    goto LABEL_14;
  }

  v39 = v27;
  sub_2612A7488(v17, v24);
  v28 = &v24[*(v18 + 20)];
  v29 = *(v28 + 1);
  v50 = *v28;
  v51 = v29;
  v48 = v46;
  v49 = v47;
  v30 = sub_26139F1CC();
  v31 = v41;
  (*(*(v30 - 8) + 56))(v41, 1, 1, v30);
  sub_26124C7CC();

  v32 = sub_2613A200C();
  sub_26124C718(v31, &qword_27FE9F338, &unk_2613A4630);
  sub_2612A57C0(v24);

  v34 = v42;
  v33 = v43;
  if (!v32)
  {
    v35 = v45;
    sub_26125A870(v3 + v44, v45, &qword_27FE9F998, &qword_2613A76E0);
    v36 = v39(v35, 1, v18);
    sub_26124C718(v35, &qword_27FE9F998, &qword_2613A76E0);
    if (v36 != 1 || (sub_2612A64B4() & 1) != 0)
    {
      sub_26125A870(v3 + v44, v33, &qword_27FE9F998, &qword_2613A76E0);
      if (v39(v33, 1, v18) != 1)
      {
        sub_2612A7488(v33, v34);
        v37 = *(v34 + *(v18 + 24));

        sub_2612A57C0(v34);
        return v37;
      }

      v17 = v33;
      goto LABEL_13;
    }

    v17 = v33;
    goto LABEL_12;
  }

LABEL_14:
  (*(*v3 + 136))(v25);
  return 0;
}

BOOL sub_2612A624C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  v7 = type metadata accessor for DiscoveryCacheContent(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v19 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
  swift_beginAccess();
  sub_26125A870(v0 + v10, v4, &qword_27FE9F998, &qword_2613A76E0);
  v18 = v8;
  v11 = *(v8 + 48);
  v12 = v11(v4, 1, v7);
  sub_26124C718(v4, &qword_27FE9F998, &qword_2613A76E0);
  if (v12 == 1 && (sub_2612A64B4() & 1) == 0)
  {
    (*(v18 + 56))(v6, 1, 1, v7);
  }

  else
  {
    sub_26125A870(v0 + v10, v6, &qword_27FE9F998, &qword_2613A76E0);
    if (v11(v6, 1, v7) != 1)
    {
      v13 = v19;
      sub_2612A7488(v6, v19);
      sub_26139F06C();
      v15 = fabs(v14);
      sub_2612A57C0(v13);
      return v15 > 3600.0;
    }
  }

  sub_26124C718(v6, &qword_27FE9F998, &qword_2613A76E0);
  return 1;
}

uint64_t sub_2612A64B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v30 = &v26 - v4;
  v29 = type metadata accessor for DiscoveryCacheContent(0);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26139EF7C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26139F87C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F86C();
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_2613A211C();

  sub_2613A121C();
  v32 = sub_2613A11AC();
  v33 = v15;
  MEMORY[0x2666FFEA0](0xD000000000000013, 0x80000002613B9F10);
  sub_26139EECC();

  v16 = sub_26139F82C();
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  sub_2612A56C0(&qword_27FE9F9A8, type metadata accessor for DiscoveryCacheContent, &unk_2613A76E8);
  v19 = v29;
  nullsub_1();
  v20 = v30;
  sub_26124B218(v19, v19, v30);
  sub_26124C6C4(v16, v18);
  v21 = v31;
  if ((*(v31 + 48))(v20, 1, v19) == 1)
  {
    sub_26124C718(v20, &qword_27FE9F998, &qword_2613A76E0);
    return 0;
  }

  else
  {
    sub_2612A7488(v20, v6);
    v23 = v27;
    sub_2612A7488(v6, v27);
    (*(v21 + 56))(v23, 0, 1, v19);
    v24 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
    v25 = v28;
    swift_beginAccess();
    sub_2612A5A5C(v23, v25 + v24);
    swift_endAccess();
    return 1;
  }
}