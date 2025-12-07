uint64_t URL.route.getter@<X0>(void *a1@<X8>)
{
  sub_258AD6714(0, &qword_27F9713F0, MEMORY[0x277CC8958]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_258AFFC64();
  v5 = sub_258AFFCA4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_258AD6A6C(v4, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
    *a1 = 8;
  }

  else
  {
    URLComponents.route.getter(a1);
    return (*(v6 + 8))(v4, v5);
  }

  return result;
}

void URLComponents.route.getter(_BYTE *a1@<X8>)
{
  v2 = sub_258AFFC84();
  v14[0] = 47;
  v14[1] = 0xE100000000000000;
  v13[2] = v14;
  v4 = sub_2589BBCF8(0x7FFFFFFFFFFFFFFFLL, 1, sub_258AD6ACC, v13, v2, v3, v14);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];
    sub_258B003E4();

    v9 = MEMORY[0x259C93160](v5, v6, v7, v8);
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    Route.init(rawValue:)(v12);
  }

  else
  {

    *a1 = 8;
  }
}

uint64_t URL.presentWithAnimation.getter()
{
  sub_258AD6714(0, &qword_27F9713F0, MEMORY[0x277CC8958]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_258AFFC64();
  v3 = sub_258AFFCA4();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_258AD6A6C(v2, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
    return 2;
  }

  else
  {
    v6 = URLComponents.presentWithAnimation.getter();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t URLComponents.presentWithAnimation.getter()
{
  v0 = sub_258AFFC34();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - v5;
  result = sub_258AFFC44();
  if (!result)
  {
    return 2;
  }

  v8 = result;
  v18[0] = v6;
  v9 = *(result + 16);
  if (!v9)
  {
LABEL_9:

    return 2;
  }

  v10 = 0;
  v18[1] = v1 + 16;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v1 + 16))(v4, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v0);
    if (sub_258AFFC14() == 0xD000000000000014 && 0x8000000258B39730 == v11)
    {
      break;
    }

    v12 = sub_258B03454();

    if (v12)
    {
      goto LABEL_11;
    }

    ++v10;
    result = (*(v1 + 8))(v4, v0);
    if (v9 == v10)
    {
      goto LABEL_9;
    }
  }

LABEL_11:

  v13 = v18[0];
  (*(v1 + 32))(v18[0], v4, v0);
  v14 = sub_258AFFC24();
  v16 = v15;
  (*(v1 + 8))(v13, v0);
  if (!v16)
  {
    return 2;
  }

  if (v14 == 48 && v16 == 0xE100000000000000 || (sub_258B03454() & 1) != 0)
  {

    return 0;
  }

  if (v14 == 49 && v16 == 0xE100000000000000)
  {
  }

  else
  {
    v17 = sub_258B03454();

    if ((v17 & 1) == 0)
    {
      return 2;
    }
  }

  return 1;
}

void *URL.userActivity.getter()
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  MEMORY[0x28223BE20](v0 - 8);
  v40 = &v36 - v1;
  v2 = MEMORY[0x277CC8958];
  sub_258AD6714(0, &qword_27F9713F0, MEMORY[0x277CC8958]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  sub_258AFFC64();
  _sSo14NSUserActivityC14MentalHealthUIE6pluginABvgZ_0();
  v15 = v14;
  sub_258AD6AEC(v13, v11, &qword_27F9713F0, v2);
  v16 = sub_258AFFCA4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v11, 1, v16) == 1)
  {
    sub_258AD6A6C(v11, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
    v19 = 8;
    v20 = v39;
  }

  else
  {
    v21 = sub_258AFFC84();
    v41[0] = 47;
    v41[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v21);
    *(&v36 - 2) = v41;
    v24 = sub_2589BBCF8(0x7FFFFFFFFFFFFFFFLL, 1, sub_258AD7088, (&v36 - 4), v22, v23, &v36);
    if (v24[2])
    {
      v37 = v24[4];
      v38 = v18;
      v25 = v24[5];
      v36 = v24[6];
      v26 = v24[7];
      sub_258B003E4();

      v27 = MEMORY[0x259C93160](v37, v25, v36, v26);
      v29 = v28;

      v30._countAndFlagsBits = v27;
      v30._object = v29;
      v18 = v38;
      Route.init(rawValue:)(v30);
      v19 = v41[0];
    }

    else
    {

      v19 = 8;
      LOBYTE(v41[0]) = 8;
    }

    v20 = v39;
    (*(v17 + 8))(v11, v16);
  }

  LOBYTE(v41[0]) = v19;
  NSUserActivity.route.setter(v41);
  sub_258AD6AEC(v13, v8, &qword_27F9713F0, MEMORY[0x277CC8958]);
  if (v18(v8, 1, v16) == 1)
  {
    sub_258AD6A6C(v8, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
    v31 = 2;
  }

  else
  {
    v32 = URLComponents.presentWithAnimation.getter();
    (*(v17 + 8))(v8, v16);
    v31 = v32;
  }

  v33 = v40;
  NSUserActivity.presentWithAnimation.setter(v31);
  sub_258AD6AEC(v13, v20, &qword_27F9713F0, MEMORY[0x277CC8958]);
  if (v18(v20, 1, v16) == 1)
  {
    sub_258AD6A6C(v20, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
    v34 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    URLComponents.initialConfiguration.getter(v33);
    (*(v17 + 8))(v20, v16);
  }

  NSUserActivity.configuration.setter(v33);
  [v15 setEligibleForHandoff_];
  sub_258AD6A6C(v13, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
  return v15;
}

uint64_t URLComponents.initialConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_258AFFC34();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  result = sub_258AFFC44();
  if (result)
  {
    v13 = result;
    v31 = v11;
    v32 = v4;
    v14 = *(result + 16);
    v33 = a1;
    v34 = v14;
    if (v14)
    {
      v15 = 0;
      v16 = 0x72756769666E6F63;
      while (1)
      {
        if (v15 >= *(v13 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v6 + 16))(v9, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v5);
        if (sub_258AFFC14() == v16 && v17 == 0xED00006E6F697461)
        {
          break;
        }

        v18 = v16;
        v19 = sub_258B03454();

        if (v19)
        {
          goto LABEL_11;
        }

        ++v15;
        result = (*(v6 + 8))(v9, v5);
        v16 = v18;
        if (v34 == v15)
        {
          goto LABEL_9;
        }
      }

LABEL_11:

      v20 = v31;
      (*(v6 + 32))(v31, v9, v5);
      sub_258AFFC24();
      v22 = v21;
      (*(v6 + 8))(v20, v5);
      v23 = v32;
      a1 = v33;
      if (v22)
      {
        v24 = sub_258AFFE54();
        v26 = v25;

        if (v26 >> 60 != 15)
        {
          sub_258AFFB54();
          swift_allocObject();
          sub_258AFFB44();
          v28 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
          sub_258AD6FD8(&qword_27F9713D0, type metadata accessor for StateOfMindEntryModel.Configuration, &protocol conformance descriptor for StateOfMindEntryModel.Configuration);
          sub_258AFFB34();
          sub_258AD6768(v24, v26);

          v29 = *(*(v28 - 8) + 56);
          v29(v23, 0, 1, v28);
          sub_258AD67D0(v23, a1);
          return (v29)(a1, 0, 1, v28);
        }
      }
    }

    else
    {
LABEL_9:

      a1 = v33;
    }
  }

  v27 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  return (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
}

void (*URLComponents.route.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = sub_258AFFC84();
  *a1 = 47;
  *(a1 + 8) = 0xE100000000000000;
  v15[2] = a1;
  v5 = sub_2589BBCF8(0x7FFFFFFFFFFFFFFFLL, 1, sub_258AD7088, v15, v3, v4, 0x2FuLL);
  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];
    sub_258B003E4();

    v10 = MEMORY[0x259C93160](v6, v7, v8, v9);
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    Route.init(rawValue:)(v13);
  }

  else
  {

    *(a1 + 24) = 8;
  }

  return sub_258AD51EC;
}

void sub_258AD51EC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 24);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 24);
    v2 = &v4;
  }

  URLComponents.route.setter(v2);
}

uint64_t (*URLComponents.presentWithAnimation.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = URLComponents.presentWithAnimation.getter();
  return sub_258AD527C;
}

uint64_t sub_258AD52A4(uint64_t a1)
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_258AD6AEC(a1, &v6 - v3, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  return URLComponents.initialConfiguration.setter(v4);
}

void (*URLComponents.initialConfiguration.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  URLComponents.initialConfiguration.getter(v5);
  return sub_258AD5428;
}

void sub_258AD5440(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_258AD6AEC(*(a1 + 16), v4, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
    a3(v4);
    sub_258AD6A6C(v5, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

unint64_t sub_258AD5508(uint64_t a1, uint64_t a2)
{
  sub_258B03514();
  sub_258B02B74();
  v4 = sub_258B03554();

  return sub_258AD58F8(a1, a2, v4);
}

unint64_t sub_258AD5580(uint64_t a1)
{
  v1 = a1;
  sub_258B03514();
  sub_258B02B74();

  v2 = sub_258B03554();

  return sub_258AD59B0(v1, v2);
}

unint64_t sub_258AD5660(uint64_t a1)
{
  v1 = a1;
  sub_258B03514();
  sub_258B02B74();

  v2 = sub_258B03554();

  return sub_258AD5B64(v1, v2);
}

unint64_t sub_258AD5720(uint64_t a1)
{
  sub_258B02B14();
  sub_258B03514();
  sub_258B02B74();
  v2 = sub_258B03554();

  return sub_258AD5CDC(a1, v2);
}

unint64_t sub_258AD57B4(uint64_t a1)
{
  v2 = sub_258B03134();

  return sub_258AD5DE0(a1, v2);
}

void sub_258AD57F8(uint64_t a1)
{
  if (!qword_27F9713B8)
  {
    sub_258AD6D6C(255, &unk_27F9713C0, MEMORY[0x277D84030]);
    v1 = sub_258B03424();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9713B8);
    }
  }
}

unint64_t sub_258AD5860(uint64_t a1)
{
  sub_258B029C4();
  sub_258AD6FD8(&qword_27F9706A0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
  v2 = sub_258B02A14();

  return sub_258AD5EA8(a1, v2);
}

unint64_t sub_258AD58F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_258B03454())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_258AD59B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0x6F65675F64617571;
        v8 = 0xED0000797274656DLL;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xD000000000000013;
          v8 = 0x8000000258B362F0;
        }

        v9 = a1;
        if (!a1)
        {
LABEL_16:
          v11 = 0x8000000258B362D0;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v7 = 0xD000000000000012;
        v8 = 0x8000000258B362D0;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      if (v9 == 1)
      {
        v10 = 0xD000000000000013;
      }

      else
      {
        v10 = 0x6F65675F64617571;
      }

      if (v9 == 1)
      {
        v11 = 0x8000000258B362F0;
      }

      else
      {
        v11 = 0xED0000797274656DLL;
      }

      if (v7 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_18:
      v12 = sub_258B03454();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_258AD5B64(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000017;
      v6 = 0xD000000000000014;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v7 = "compute_final_composite";
      }

      else
      {
        v6 = 0xD000000000000011;
        v7 = "compute_bg_composite";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000017;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ont";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD000000000000014 : 0xD000000000000011;
        v10 = a1 == 1 ? "compute_final_composite" : "compute_bg_composite";
      }

      else
      {
        v10 = "ont";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_258B03454();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_258AD5CDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_258B02B14();
      v8 = v7;
      if (v6 == sub_258B02B14() && v8 == v9)
      {
        break;
      }

      v11 = sub_258B03454();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_258AD5DE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_258A9A3FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C93740](v9, a1);
      sub_258A97AF8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_258AD5EA8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_258B029C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_258AD6FD8(&qword_27F9702C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
      v15 = sub_258B02AA4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_258AD6068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x277D837D0];
    sub_258A9A3A0(0, &qword_27F970700, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    v4 = sub_258B032E4();
    v5 = a1 + 32;

    while (1)
    {
      sub_258AD6D00(v5, &v14, &qword_27F971408, v3);
      v6 = v14;
      v7 = v15;
      result = sub_258AD5508(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_258A2D784(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 48;
      if (!--v1)
      {

        return v4;
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

unint64_t sub_258AD61CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_258AD6F38(0);
    v3 = sub_258B032E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_258AD7020(v4, &v11, sub_258AC9678);
      v5 = v11;
      result = sub_258AD5720(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_258A2D784(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_258AD62DC(uint64_t a1)
{
  sub_258AD6DD0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_258AD6E8C(0);
    v8 = sub_258B032E4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_258AD7020(v10, v6, sub_258AD6DD0);
      result = sub_258AD5860(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_258B029C4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_258AD64DC(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = sub_258B032E4();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *(i - 8);
      v9 = *i;
      swift_unknownObjectRetain();
      result = a3(v8);
      if (v11)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + result) = v8;
      *(v6[7] + 8 * result) = v9;
      v12 = v6[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v6[2] = v14;
      if (!--v3)
      {

        return v6;
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

unint64_t sub_258AD65D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x277D84030];
    sub_258A9A3A0(0, &qword_27F970708, MEMORY[0x277D84030], MEMORY[0x277D84038]);
    v4 = sub_258B032E4();
    v5 = a1 + 32;

    while (1)
    {
      sub_258AD6D00(v5, v14, &unk_27F9713C0, v3);
      result = sub_258AD57B4(v14);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_258A2D784(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 72;
      if (!--v1)
      {

        return v4;
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

void sub_258AD6714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258AD6768(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258AD677C(result, a2);
  }

  return result;
}

uint64_t sub_258AD677C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_258AD67D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AD6834(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _sSo14NSUserActivityC14MentalHealthUIE6pluginABvgZ_0()
{
  v11 = 46;
  v12 = 0xE100000000000000;
  v10[2] = &v11;
  v0 = sub_2589BBCF8(1, 1, sub_258AD7088, v10, 0xD000000000000022, 0x8000000258B396C0, "SKIP_BUTTON_TITLE");
  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[7];
    sub_258B003E4();

    MEMORY[0x259C93160](v1, v2, v3, v4);

    v5 = sub_258B00284();

    sub_258AD57F8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    sub_258AD1638(0);
    v11 = v7;
    v12 = v8;
    sub_258B03154();
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = 1;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v9 = sub_258B029E4();

    [v5 addUserInfoEntriesFromDictionary_];
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_258AD6A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_258AD6AEC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258AD6714(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_258AD6B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F9713F8;
  if (!qword_27F9713F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9713F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Route(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Route(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_258AD6D00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_258AD6D6C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_258AD6D6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258AD6DD0(uint64_t a1)
{
  if (!qword_27F971410)
  {
    sub_258B029C4();
    sub_258AD6E40();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971410);
    }
  }
}

unint64_t sub_258AD6E40()
{
  result = qword_27F970690;
  if (!qword_27F970690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F970690);
  }

  return result;
}

void sub_258AD6E8C(uint64_t a1)
{
  if (!qword_27F971420)
  {
    sub_258B029C4();
    sub_258AD6E40();
    sub_258AD6FD8(&qword_27F9706A0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
    v1 = sub_258B032F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971420);
    }
  }
}

void sub_258AD6F38(uint64_t a1)
{
  if (!qword_27F971428)
  {
    type metadata accessor for Option(255);
    sub_258AD6FD8(&qword_27F9711B0, type metadata accessor for Option, &unk_258B2BA90);
    v1 = sub_258B032F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971428);
    }
  }
}

uint64_t sub_258AD6FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258AD7020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id StateOfMindCalendarViewController.__allocating_init(healthStore:dateToFocusOn:verticalSizeClass:)(void *a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_258ADCEE8(a1, a2, a3);

  return v8;
}

id sub_258AD70FC()
{
  v1 = qword_27F971458;
  v2 = *(v0 + qword_27F971458);
  if (v2)
  {
    v3 = *(v0 + qword_27F971458);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_258AD7170()
{
  v1 = qword_27F971460;
  v2 = *(v0 + qword_27F971460);
  if (v2)
  {
    v3 = *(v0 + qword_27F971460);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = HKDateFormatterFromTemplate();
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_258AD7234(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F97AC38;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_258AD72A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F97AC38;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_258AD7340;
}

void sub_258AD7340(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

id StateOfMindCalendarViewController.init(healthStore:dateToFocusOn:verticalSizeClass:)(void *a1, uint64_t a2, void *a3)
{
  v4 = sub_258ADCEE8(a1, a2, a3);

  return v4;
}

double sub_258AD73F8()
{
  v0 = sub_258B00384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v4 scaledValueForValue_];
  v6 = v5;

  v7 = v6 + 71.0;
  sub_258B00364();
  v8 = sub_258B00374();
  v9 = sub_258B02EA4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446466;
    v12 = sub_258B035A4();
    v14 = sub_2589F1F78(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v7;
    _os_log_impl(&dword_2589A1000, v8, v9, "[%{public}s] calculated cell height: %f", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x259C945C0](v11, -1, -1);
    MEMORY[0x259C945C0](v10, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v7;
}

id StateOfMindCalendarViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void StateOfMindCalendarViewController.init(coder:)()
{
  v1 = qword_27F971450;
  v2 = sub_258B00084();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + qword_27F971458) = 0;
  *(v0 + qword_27F971460) = 0;
  *(v0 + qword_27F97AC38 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_258B03294();
  __break(1u);
}

void sub_258AD7728(uint64_t a1)
{
  v2 = qword_27F971450;
  v3 = sub_258B00084();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *(a1 + qword_27F971458) = 0;
  *(a1 + qword_27F971460) = 0;
  *(a1 + qword_27F97AC38 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_258B03294();
  __break(1u);
}

void sub_258AD7804()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x277D83D88];
  sub_258ADD9F4(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v86 - v5;
  v92 = sub_258B00084();
  v7 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ADD9F4(0, &unk_27F971470, sub_258A98A64, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = &v86 - v11;
  v12 = sub_258B00384();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v16 = sub_258B00374();
  v17 = sub_258B02EA4();
  v18 = os_log_type_enabled(v16, v17);
  v90 = v6;
  v91 = v7;
  v89 = v9;
  v87 = ObjectType;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v93 = v20;
    *v19 = 136446210;
    v21 = sub_258B035A4();
    v23 = sub_2589F1F78(v21, v22, &v93);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2589A1000, v16, v17, "[%{public}s] View did load", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x259C945C0](v20, -1, -1);
    MEMORY[0x259C945C0](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v24 = type metadata accessor for StateOfMindCalendarViewController(0);
  v96.receiver = v1;
  v96.super_class = v24;
  objc_msgSendSuper2(&v96, sel_viewDidLoad);
  [v1 setClearsSelectionOnViewWillAppear_];
  v25 = [v1 collectionView];
  if (!v25)
  {
    __break(1u);
    goto LABEL_25;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v27 systemBackgroundColor];
  [v26 setBackgroundColor_];

  v29 = [v1 collectionView];
  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = v29;
  [v29 setShowsVerticalScrollIndicator_];

  v31 = [v1 collectionView];
  if (!v31)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = v31;
  v33 = sub_258B02874();
  [v32 setDataSource_];

  v34 = [v1 collectionView];
  if (!v34)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v35 = v34;
  if (HKUICalendarLocaleIsRightToLeft())
  {
    v36 = 4;
  }

  else
  {
    v36 = 3;
  }

  [v35 setSemanticContentAttribute_];

  v37 = [v1 collectionView];
  if (!v37)
  {
    goto LABEL_28;
  }

  v38 = v37;
  v86 = v24;
  type metadata accessor for StateOfMindCalendarDayCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = sub_258B02AD4();
  [v38 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v40];

  v41 = [v1 collectionView];
  if (!v41)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = v41;
  sub_258B02854();
  v43 = swift_getObjCClassFromMetadata();
  v44 = *MEMORY[0x277D767D8];
  sub_258B02844();
  v45 = sub_258B02AD4();

  [v42 registerClass:v43 forSupplementaryViewOfKind:v44 withReuseIdentifier:v45];

  v46 = [v1 collectionView];
  if (!v46)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v47 = v46;
  type metadata accessor for StateOfMindCalendarSpacerCell();
  v48 = swift_getObjCClassFromMetadata();
  v49 = sub_258B02AD4();
  [v47 registerClass:v48 forCellWithReuseIdentifier:v49];

  v95 = 0;
  sub_258B02114();
  sub_258ADDAA4(0, v50, v51);
  v53 = objc_allocWithZone(v52);
  v54 = sub_258B011C4();
  v55 = [v54 view];

  if (!v55)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v56 = [v27 clearColor];
  [v55 setBackgroundColor_];

  v57 = [v1 navigationItem];
  [v57 setTitleView_];

  v58 = sub_258B02894();
  sub_258B02714();

  v59 = [v1 navigationItem];
  [objc_opt_self() preferredHeight];
  v61 = [objc_allocWithZone(MEMORY[0x277D12B40]) initWithFrame:HKUICalendarLocaleIsRightToLeft() shouldSupportRTL:{0.0, 0.0, 0.0, v60}];
  [v61 layoutMargins];
  [v61 setLayoutMargins_];
  [v61 layoutMargins];
  [v61 setLayoutMargins_];
  v62 = [objc_allocWithZone(MEMORY[0x277D76118]) initWithContentView_];

  [v59 _setBottomPalette_];
  v63 = [v1 navigationItem];
  v64 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v1 action:sel_dismissViewController];
  [v63 setLeftBarButtonItem_];

  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  v94 = v86;
  v93 = v1;
  v65 = v1;
  v66 = sub_258B02AD4();

  v67 = v94;
  if (v94)
  {
    v68 = __swift_project_boxed_opaque_existential_1Tm(&v93, v94);
    v69 = *(v67 - 8);
    MEMORY[0x28223BE20](v68);
    v71 = &v86 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v69 + 16))(v71);
    v72 = sub_258B03444();
    (*(v69 + 8))(v71, v67);
    __swift_destroy_boxed_opaque_existential_1(&v93);
  }

  else
  {
    v72 = 0;
  }

  v73 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v66 style:0 target:v72 action:sel_todayButtonTapped];

  swift_unknownObjectRelease();
  v74 = [v65 navigationItem];
  [v74 setRightBarButtonItem_];

  v93 = sub_258B02774();
  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = swift_allocObject();
  v77 = v87;
  *(v76 + 16) = v75;
  *(v76 + 24) = v77;
  sub_258ADDB5C(0);
  sub_258ADEAB8(&qword_27F9714A8, sub_258ADDB5C, MEMORY[0x277CBCE20]);
  sub_258B005D4();

  swift_beginAccess();
  sub_258B004C4();
  swift_endAccess();

  v78 = qword_27F971450;
  swift_beginAccess();
  v79 = v90;
  sub_258ADE864(&v65[v78], v90, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v81 = v91;
  v80 = v92;
  v82 = *(v91 + 48);
  if (v82(v79, 1, v92) == 1)
  {
    v83 = v89;
    sub_258B00074();
    if (v82(v79, 1, v80) != 1)
    {
      sub_258ADE8E4(v79, &qword_27F96EBF0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    v83 = v89;
    (*(v81 + 32))(v89, v79, v80);
  }

  v84 = v88;
  sub_258AD8E38(v83);
  (*(v81 + 8))(v83, v80);
  sub_258A98A64(0);
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  sub_258B02764();
  [*&v65[qword_27F9714B8] registerObserver_];
}

void sub_258AD84A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A98A64(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B00384();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v28 = v7;
    sub_258B00364();
    sub_258ADE954(a1, v6, sub_258A98A64);
    v13 = sub_258B00374();
    v14 = sub_258B02EA4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = a1;
      v16 = v15;
      v26 = swift_slowAlloc();
      v31 = v26;
      *v16 = 136446466;
      v17 = sub_258B035A4();
      v19 = sub_2589F1F78(v17, v18, &v31);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_258B029C4();
      sub_258B03274();
      MEMORY[0x259C931B0](3943982, 0xE300000000000000);
      sub_258B03274();
      v20 = v29;
      v21 = v30;
      sub_258ADE9BC(v6, sub_258A98A64);
      v22 = sub_2589F1F78(v20, v21, &v31);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_2589A1000, v13, v14, "[%{public}s] Received days updated: %s", v16, 0x16u);
      v23 = v26;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v23, -1, -1);
      v24 = v16;
      a1 = v27;
      MEMORY[0x259C945C0](v24, -1, -1);
    }

    else
    {

      sub_258ADE9BC(v6, sub_258A98A64);
    }

    (*(v8 + 8))(v10, v28);
    sub_258AD87EC(a1);
  }
}

void sub_258AD87EC(uint64_t a1)
{
  sub_258A82830(0);
  v56 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v55 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v54 = &v43 - v5;
  sub_258A98A64(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_258B00274();
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B029C4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v53 = v7;
  v18 = *(v7 + 36);
  v52 = sub_258ADEAB8(&unk_27F9706C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
  sub_258B030E4();
  v19 = v66;
  v20 = MEMORY[0x277D84F90];
  if (v66)
  {
    v66 = MEMORY[0x277D84F90];
    sub_258AA934C(0, v19 & ~(v19 >> 63), 0);
    v64 = v66;
    v48 = *(v13 + 16);
    v49 = v13 + 16;
    v48(v17, a1, v12);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v21 = 0;
      v50 = v59 + 32;
      v51 = v18;
      v63 = (v13 + 32);
      v22 = v58;
      v46 = v11;
      v45 = v17;
      v44 = v19;
      v43 = a1;
      v47 = (v13 + 8);
      v62 = v9;
      while (!__OFADD__(v21, 1))
      {
        v60 = v21 + 1;
        v61 = v21;
        v23 = sub_258B02874();
        if (!v23)
        {
          goto LABEL_19;
        }

        v24 = v23;
        sub_258B02804();

        v25 = v64;
        v66 = v64;
        v27 = *(v64 + 16);
        v26 = *(v64 + 24);
        v28 = v17;
        if (v27 >= v26 >> 1)
        {
          sub_258AA934C((v26 > 1), v27 + 1, 1);
          v25 = v66;
        }

        *(v25 + 16) = v27 + 1;
        v29 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v64 = v25;
        (*(v59 + 32))(v25 + v29 + *(v59 + 72) * v27, v11, v57);
        v30 = *v63;
        (*v63)(v22, v28, v12);
        sub_258ADEAB8(&qword_27F971480, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
        v31 = v51;
        if ((sub_258B02A74() & 1) == 0)
        {
          goto LABEL_15;
        }

        v32 = v54;
        v33 = a1;
        v34 = a1;
        v35 = v48;
        v48(v54, v33, v12);
        v36 = v56;
        v35(v32 + *(v56 + 48), v34 + v31, v12);
        v37 = v55;
        sub_258ADE954(v32, v55, sub_258A82830);
        v38 = *(v36 + 48);
        v30(v62, v37, v12);
        v39 = *v47;
        (*v47)(v37 + v38, v12);
        sub_258ADE7FC(v32, v37, sub_258A82830);
        v40 = *(v36 + 48);
        v41 = v62;
        v22 = v58;
        v30(&v62[*(v53 + 36)], (v37 + v40), v12);
        v39(v37, v12);
        if ((sub_258B02A74() & 1) == 0)
        {
          goto LABEL_16;
        }

        v42 = sub_258B02A54();
        sub_258ADE9BC(v41, sub_258A98A64);
        if ((v42 & 1) == 0)
        {
          goto LABEL_17;
        }

        v65 = 1;
        v17 = v45;
        sub_258B030D4();
        v39(v22, v12);
        v21 = v61 + 1;
        a1 = v43;
        v11 = v46;
        if (v60 == v44)
        {
          v39(v17, v12);
          v20 = v64;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
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
LABEL_13:
    sub_258ADCB24(v20);
  }
}

uint64_t sub_258AD8E38(uint64_t a1)
{
  v3 = sub_258B00224();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_258B00084();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B029C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v12 = [*(v1 + qword_27F9714B8) calendar];
  sub_258B001A4();

  sub_258B02964();
  v13 = sub_258B02894();
  sub_258B02724();

  sub_258B02914();
  return (*(v9 + 8))(v11, v8);
}

void sub_258AD904C(void *a1)
{
  v1 = a1;
  sub_258AD7804();
}

id sub_258AD9094()
{
  v1 = v0;
  v2 = sub_258B00274();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CC9578];
  sub_258ADD9F4(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = sub_258B00084();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StateOfMindCalendarViewController(0);
  v24.receiver = v0;
  v24.super_class = v16;
  objc_msgSendSuper2(&v24, sel_viewDidLayoutSubviews);
  v17 = qword_27F971450;
  swift_beginAccess();
  sub_258ADE864(v0 + v17, v11, &qword_27F96EBF0, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_258ADE8E4(v11, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  }

  (*(v13 + 32))(v15, v11, v12);
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = result;
  result = sub_258B02874();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v20 = result;
  sub_258B027F4();

  v21 = sub_258B00244();
  (*(v22 + 8))(v4, v23);
  [v19 scrollToItemAtIndexPath:v21 atScrollPosition:2 animated:0];

  (*(v13 + 8))(v15, v12);
  (*(v13 + 56))(v9, 1, 1, v12);
  swift_beginAccess();
  sub_258ADDBC4(v9, v1 + v17);
  return swift_endAccess();
}

void sub_258AD9414(void *a1)
{
  v1 = a1;
  sub_258AD9094();
}

void sub_258AD945C()
{
  sub_258AD94FC();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 indexPathsForVisibleItems];

    sub_258B00274();
    v4 = sub_258B02C74();

    sub_258ADCB24(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_258AD94FC()
{
  sub_258A82830(0);
  v120 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v118 = &v117 - v5;
  v6 = MEMORY[0x277D83D88];
  sub_258ADD9F4(0, &unk_27F971470, sub_258A98A64, MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v121 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = &v117 - v10;
  v11 = sub_258B029C4();
  v124 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v123 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v125 = &v117 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v127 = &v117 - v17;
  MEMORY[0x28223BE20](v16);
  v126 = &v117 - v18;
  v19 = sub_258B00274();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v129 = &v117 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v140 = &v117 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v139 = &v117 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v138 = &v117 - v31;
  MEMORY[0x28223BE20](v30);
  v155 = &v117 - v32;
  sub_258ADD9F4(0, &qword_27F971568, MEMORY[0x277CC9AF8], v6);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v146 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v130 = &v117 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v137 = &v117 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v136 = &v117 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v135 = &v117 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v134 = &v117 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v117 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = *(v20 + 56);
  v153 = &v117 - v50;
  v49();
  v148 = v20 + 56;
  v149 = v48;
  v147 = v49;
  (v49)(v48, 1, 1, v19);
  v51 = v0;
  v52 = [v0 collectionView];
  if (!v52)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v53 = v52;
  v54 = [v52 preparedCells];

  if (!v54)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v154 = v19;
  sub_2589F4488(0, &qword_27F971570, 0x277D752A8);
  v55 = sub_258B02C74();

  v131 = v20;
  v122 = v11;
  v117 = v4;
  v128 = v23;
  if (v55 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258B032B4())
  {
    v57 = v146;
    v58 = v55;
    v59 = v51;
    v60 = v149;
    if (!i)
    {
      break;
    }

    v51 = 0;
    v144 = v55 & 0xFFFFFFFFFFFFFF8;
    v145 = v55 & 0xC000000000000001;
    v151 = (v131 + 32);
    v61 = (v131 + 48);
    v141 = (v131 + 8);
    v142 = (v131 + 16);
    v143 = i;
    v133 = v59;
    v132 = v55;
    while (1)
    {
      if (v145)
      {
        v62 = MEMORY[0x259C937C0](v51, v58);
      }

      else
      {
        if (v51 >= *(v144 + 16))
        {
          goto LABEL_43;
        }

        v62 = *(v58 + 8 * v51 + 32);
      }

      v63 = v62;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      v152 = (v51 + 1);
      v64 = [v59 collectionView];
      if (!v64)
      {
        goto LABEL_46;
      }

      v55 = v64;
      v65 = [v64 indexPathForCell_];

      v66 = v154;
      if (v65)
      {
        v67 = v138;
        sub_258B00254();

        v68 = *v151;
        (*v151)(v155, v67, v66);
        v69 = v135;
        sub_258ADE864(v153, v135, &qword_27F971568, MEMORY[0x277CC9AF8]);
        v70 = *v61;
        v71 = (*v61)(v69, 1, v66);
        v72 = v139;
        v150 = v68;
        if (v71 == 1)
        {
          (*v142)(v139, v155, v66);
          if (v70(v69, 1, v66) != 1)
          {
            sub_258ADE8E4(v69, &qword_27F971568, MEMORY[0x277CC9AF8]);
          }
        }

        else
        {
          v68(v139, v69, v66);
        }

        sub_258ADEAB8(&qword_27F971578, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B10]);
        v73 = v155;
        v74 = v72;
        v75 = sub_258B02A54();
        sub_258ADE8E4(v153, &qword_27F971568, MEMORY[0x277CC9AF8]);
        if (v75)
        {
          (*v141)(v74, v66);
          v76 = v134;
          (*v142)(v134, v73, v66);
        }

        else
        {
          v76 = v134;
          v150(v134, v74, v66);
        }

        (v147)(v76, 0, 1, v66);
        sub_258ADE768(v76, v153);
        v77 = v137;
        sub_258ADE864(v149, v137, &qword_27F971568, MEMORY[0x277CC9AF8]);
        if (v70(v77, 1, v66) == 1)
        {
          v78 = v140;
          (*v142)(v140, v155, v154);
          v79 = v70(v77, 1, v154);
          v66 = v154;
          v80 = v78;
          if (v79 != 1)
          {
            sub_258ADE8E4(v77, &qword_27F971568, MEMORY[0x277CC9AF8]);
          }
        }

        else
        {
          v80 = v140;
          v150(v140, v77, v66);
        }

        v81 = v155;
        v82 = sub_258B02A64();

        v83 = v80;
        v60 = v149;
        sub_258ADE8E4(v149, &qword_27F971568, MEMORY[0x277CC9AF8]);
        if (v82)
        {
          v84 = v83;
        }

        else
        {
          v84 = v81;
        }

        if (v82)
        {
          v83 = v81;
        }

        (*v141)(v84, v66);
        v55 = v136;
        v150(v136, v83, v66);
        (v147)(v55, 0, 1, v66);
        sub_258ADE768(v55, v60);
        v59 = v133;
        v58 = v132;
      }

      else
      {
      }

      ++v51;
      v57 = v146;
      if (v152 == v143)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_33:

  v85 = v153;
  v86 = v130;
  sub_258ADE864(v153, v130, &qword_27F971568, MEMORY[0x277CC9AF8]);
  v87 = v131;
  v88 = *(v131 + 48);
  v89 = v154;
  if (v88(v86, 1, v154) == 1)
  {
    sub_258ADE8E4(v60, &qword_27F971568, MEMORY[0x277CC9AF8]);
    v90 = v85;
LABEL_41:
    v116 = MEMORY[0x277CC9AF8];
    sub_258ADE8E4(v90, &qword_27F971568, MEMORY[0x277CC9AF8]);
    sub_258ADE8E4(v86, &qword_27F971568, v116);
    return;
  }

  v91 = v86;
  v92 = *(v87 + 32);
  v93 = v129;
  v92(v129, v91, v89);
  sub_258ADE864(v60, v57, &qword_27F971568, MEMORY[0x277CC9AF8]);
  if (v88(v57, 1, v89) == 1)
  {
    (*(v87 + 8))(v93, v89);
    sub_258ADE8E4(v60, &qword_27F971568, MEMORY[0x277CC9AF8]);
    v90 = v153;
    v86 = v57;
    goto LABEL_41;
  }

  v92(v128, v57, v89);
  v94 = sub_258B02874();
  if (!v94)
  {
    goto LABEL_49;
  }

  v95 = v94;
  v96 = v126;
  sub_258B027E4();

  v97 = sub_258B02874();
  v98 = v122;
  v99 = v125;
  if (v97)
  {
    v100 = v97;
    sub_258B027E4();

    v101 = v123;
    sub_258B02924();
    sub_258B02944();
    v102 = v124;
    v103 = *(v124 + 8);
    v152 = (v124 + 8);
    v155 = v103;
    (v103)(v101, v98);
    sub_258ADEAB8(&qword_27F971480, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    if (sub_258B02A74())
    {
      v104 = v118;
      (*(v102 + 16))(v118, v96, v98);
      v105 = v120;
      v106 = *(v102 + 32);
      v106(v104 + *(v120 + 48), v99, v98);
      v107 = v117;
      sub_258ADE954(v104, v117, sub_258A82830);
      v108 = *(v105 + 48);
      v109 = v119;
      v106(v119, v107, v98);
      (v155)(v107 + v108, v98);
      sub_258ADE7FC(v104, v107, sub_258A82830);
      v110 = *(v105 + 48);
      sub_258A98A64(0);
      v112 = v111;
      v106(v109 + *(v111 + 36), (v107 + v110), v98);
      v113 = v155;
      (v155)(v107, v98);
      (*(*(v112 - 8) + 56))(v109, 0, 1, v112);
      sub_258ADE864(v109, v121, &unk_27F971470, sub_258A98A64);
      sub_258B02764();
      sub_258ADE8E4(v109, &unk_27F971470, sub_258A98A64);
      (v113)(v127, v98);
      (v113)(v126, v98);
      v114 = *(v131 + 8);
      v115 = v154;
      v114(v128, v154);
      v114(v129, v115);
      v86 = v153;
      v90 = v149;
      goto LABEL_41;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_50:
  __break(1u);
}

void sub_258ADA4D0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v6 = sub_258B00374();
  v7 = sub_258B02EA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = sub_258B035A4();
    v16 = v2;
    v12 = sub_2589F1F78(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2589A1000, v6, v7, "[%{public}s] preferred content size changed", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x259C945C0](v9, -1, -1);
    MEMORY[0x259C945C0](v8, -1, -1);

    (*(v3 + 8))(v5, v16);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v13 = sub_258B02894();
  sub_258AD73F8();
  sub_258B02704();

  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_258ADA6F8(void *a1)
{
  v1 = a1;
  sub_258ADA4D0();
}

void sub_258ADA740()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_258B00084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B00274();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B00384();
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v12 = sub_258B00374();
  v13 = sub_258B02EA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v34 = v2;
    v17 = v16;
    v38 = v16;
    *v15 = 136446210;
    v18 = sub_258B035A4();
    ObjectType = v5;
    v20 = sub_2589F1F78(v18, v19, &v38);
    v32 = v9;
    v21 = v7;
    v22 = v20;
    v5 = ObjectType;

    *(v15 + 4) = v22;
    v7 = v21;
    _os_log_impl(&dword_2589A1000, v12, v13, "[%{public}s] scrolling to today's date", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v23 = v17;
    v2 = v34;
    MEMORY[0x259C945C0](v23, -1, -1);
    v24 = v15;
    v1 = v33;
    MEMORY[0x259C945C0](v24, -1, -1);

    (*(v37 + 8))(v11, v32);
  }

  else
  {

    (*(v37 + 8))(v11, v9);
  }

  v25 = [v1 collectionView];
  if (v25)
  {
    v26 = v25;
    v27 = sub_258B02874();
    if (v27)
    {
      v28 = v27;
      sub_258B00074();
      v29 = v36;
      sub_258B027F4();

      (*(v3 + 8))(v5, v2);
      v30 = sub_258B00244();
      (*(v7 + 8))(v29, v6);
      [v26 scrollToItemAtIndexPath:v30 atScrollPosition:2 animated:1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_258ADAAEC(void *a1)
{
  v1 = a1;
  sub_258ADA740();
}

id StateOfMindCalendarViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id StateOfMindCalendarViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_258B02AD4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_258ADACC4()
{
  sub_258ADE8E4(v0 + qword_27F971450, &qword_27F96EBF0, MEMORY[0x277CC9578]);

  v1 = qword_27F9714C0;
  v2 = sub_258B029C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = v0 + qword_27F97AC38;

  return sub_258A105B0(v3);
}

id StateOfMindCalendarViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindCalendarViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258ADADF0(uint64_t a1)
{
  sub_258ADE8E4(a1 + qword_27F971450, &qword_27F96EBF0, MEMORY[0x277CC9578]);

  v2 = qword_27F9714C0;
  v3 = sub_258B029C4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = a1 + qword_27F97AC38;

  return sub_258A105B0(v4);
}

id StateOfMindCalendarViewController.calendarDataSource(_:spacerCellForItemIn:indexPath:)(uint64_t a1, void *a2)
{
  v3 = sub_258B02AD4();
  v4 = sub_258B00244();
  v5 = [a2 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:v4];

  return v5;
}

id sub_258ADAFA8(uint64_t a1, void *a2)
{
  v3 = sub_258B02AD4();
  v4 = sub_258B00244();
  v5 = [a2 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:v4];

  return v5;
}

void StateOfMindCalendarViewController.collectionView(_:willDisplay:forItemAt:)(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for StateOfMindCalendarDayCell(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a2;
    sub_258ADB0CC(v6, a3);
  }
}

void sub_258ADB0CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_258B00204();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_258B00224();
  v71 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_258B00084();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v79 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_258B029C4();
  v78 = *(v74 - 8);
  v12 = MEMORY[0x28223BE20](v74);
  v67 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v66 = v63 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v76 = v63 - v17;
  MEMORY[0x28223BE20](v16);
  v77 = v63 - v18;
  sub_258ADD9F4(0, &unk_27F971540, type metadata accessor for StateOfMindCalendarDay, MEMORY[0x277D83D88]);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v80 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v63 - v22;
  v24 = type metadata accessor for StateOfMindCalendarDay(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a2;
  v28 = sub_258ADCCDC(a2);
  if (v28)
  {
    v75 = v28;
    v29 = OBJC_IVAR____TtC14MentalHealthUI26StateOfMindCalendarDayCell_day;
    swift_beginAccess();
    sub_258ADE864(a1 + v29, v23, &unk_27F971540, type metadata accessor for StateOfMindCalendarDay);
    v65 = v25;
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      v63[0] = v24;
      v63[1] = a1;
      sub_258ADE8E4(v23, &unk_27F971540, type metadata accessor for StateOfMindCalendarDay);
      [v75 dayIndex];
      v30 = v77;
      sub_258B02924();
      v64 = v3;
      v31 = *(v3 + qword_27F9714B8);
      v32 = [v31 calendar];
      sub_258B001A4();

      sub_258B029B4();
      v71 = *(v71 + 8);
      (v71)(v10, v81);
      v33 = [v31 calendar];
      sub_258B001A4();

      v35 = v72;
      v34 = v73;
      (*(v72 + 104))(v8, *MEMORY[0x277CC9968], v73);
      v36 = sub_258B00214();
      (*(v35 + 8))(v8, v34);
      (v71)(v10, v81);
      v37 = *(v78 + 16);
      v38 = v30;
      v39 = v64;
      v40 = v74;
      v37(v76, v30, v74);
      v41 = sub_258AD70FC();
      v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v43 = [v41 stringFromNumber_];

      if (!v43)
      {
        __break(1u);
        return;
      }

      v44 = sub_258B02B14();
      v46 = v45;

      v37(v66, v38, v40);
      v47 = qword_27F9714C0;
      swift_beginAccess();
      v37(v67, (v39 + v47), v40);
      LOBYTE(v47) = sub_258B002B4();
      v48 = sub_258B00264();
      v49 = MEMORY[0x277D84F90];
      *v27 = 0;
      *(v27 + 1) = v49;
      *(v27 + 2) = v44;
      *(v27 + 3) = v46;
      v50 = v63[0];
      v51 = v76;
      v37(&v27[*(v63[0] + 28)], v76, v40);
      v27[v50[8]] = v47;
      *&v27[v50[9]] = v48;
      v83 = 0x7865646E49796144;
      v84 = 0xE90000000000003ALL;
      v82 = sub_258B02984();
      v52 = sub_258B03414();
      MEMORY[0x259C931B0](v52);

      v54 = v83;
      v53 = v84;
      v55 = *(v78 + 8);
      v55(v51, v40);
      (*(v69 + 8))(v79, v70);
      v55(v77, v40);
      v24 = v50;
      v56 = &v27[v50[10]];
      *v56 = v54;
      *(v56 + 1) = v53;
      v57 = &v27[v50[11]];
      *v57 = v54;
      *(v57 + 1) = v53;
      sub_258B003E4();
    }

    else
    {
      sub_258ADE7FC(v23, v27, type metadata accessor for StateOfMindCalendarDay);
    }

    v58 = v75;
    v59 = [v75 dailyStateOfMind];

    *v27 = v59;
    sub_258A767F0();
    v60 = [v58 momentaryStatesOfMind];
    sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
    v61 = sub_258B02C74();

    *(v27 + 1) = v61;
    sub_258A767F0();
    v62 = v80;
    sub_258ADE954(v27, v80, type metadata accessor for StateOfMindCalendarDay);
    (*(v65 + 56))(v62, 0, 1, v24);
    sub_258ABCF78(v62);

    sub_258ADE9BC(v27, type metadata accessor for StateOfMindCalendarDay);
  }
}

uint64_t sub_258ADB9D0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_258B00274();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00254();
  type metadata accessor for StateOfMindCalendarDayCell(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a4;
    v14 = a1;
    sub_258ADB0CC(v12, v10);
  }

  return (*(v8 + 8))(v10, v7);
}

void StateOfMindCalendarViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v103 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_258B00384();
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v96 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v88 = &v87 - v9;
  MEMORY[0x28223BE20](v8);
  v89 = &v87 - v10;
  v11 = sub_258B00224();
  v92 = *(v11 - 8);
  v93 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ADD9F4(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v91 = &v87 - v15;
  v97 = sub_258B00084();
  v90 = *(v97 - 8);
  v16 = MEMORY[0x28223BE20](v97);
  v87 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v87 - v19;
  MEMORY[0x28223BE20](v18);
  v94 = &v87 - v21;
  v22 = sub_258B029C4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v87 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v87 - v30;
  v32 = sub_258B02874();
  if (v32)
  {
    v33 = v32;
    v100 = a2;
    sub_258B027E4();

    v98 = v31;
    v99 = v23;
    v34 = *(v23 + 16);
    v34(v29, v31, v22);
    v35 = qword_27F9714C0;
    swift_beginAccess();
    v34(v26, (v3 + v35), v22);
    sub_258B002B4();
    v36 = v22;
    if (sub_258B002A4())
    {
      v37 = v96;
      sub_258B00364();
      v38 = sub_258B00374();
      v39 = sub_258B02EA4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v104[0] = v41;
        *v40 = 136446210;
        v42 = sub_258B035A4();
        v44 = sub_2589F1F78(v42, v43, v104);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_2589A1000, v38, v39, "[%{public}s] Ignoring date tapped in the future", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x259C945C0](v41, -1, -1);
        MEMORY[0x259C945C0](v40, -1, -1);
      }

      (*(v101 + 8))(v37, v102);
      (*(v99 + 8))(v98, v36);
LABEL_17:
      v86 = sub_258B00244();
      [v103 deselectItemAtIndexPath:v86 animated:1];

      return;
    }

    v45 = v3;
    v96 = v36;
    v46 = [*(v3 + qword_27F9714B8) calendar];
    sub_258B001A4();
    v47 = sub_258B02874();
    if (v47)
    {
      v48 = v47;

      sub_258B02814();
      v49 = v91;
      sub_258B00174();
      v50 = v90;
      v51 = *(v90 + 8);
      v52 = v97;
      v51(v20, v97);
      (*(v92 + 8))(v13, v93);
      if ((*(v50 + 48))(v49, 1, v52) == 1)
      {
        sub_258ADE8E4(v49, &qword_27F96EBF0, MEMORY[0x277CC9578]);
        v53 = v88;
        sub_258B00364();
        v54 = sub_258B00374();
        v55 = sub_258B02E84();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v104[0] = v57;
          *v56 = 136446210;
          v58 = sub_258B035A4();
          v60 = sub_2589F1F78(v58, v59, v104);

          *(v56 + 4) = v60;
          _os_log_impl(&dword_2589A1000, v54, v55, "[%{public}s] Unable to determine tapped date", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          MEMORY[0x259C945C0](v57, -1, -1);
          MEMORY[0x259C945C0](v56, -1, -1);
        }

        (*(v101 + 8))(v53, v102);
        (*(v99 + 8))(v98, v96);
      }

      else
      {
        v93 = v51;
        v61 = v94;
        (*(v50 + 32))(v94, v49, v52);
        v62 = v89;
        sub_258B00364();
        v63 = v87;
        (*(v50 + 16))(v87, v61, v52);
        v64 = sub_258B00374();
        v65 = sub_258B02EA4();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v104[0] = v67;
          *v66 = 136446466;
          v68 = sub_258B035A4();
          v70 = sub_2589F1F78(v68, v69, v104);

          *(v66 + 4) = v70;
          *(v66 + 12) = 2082;
          sub_258ADEAB8(&qword_27F96D970, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v71 = sub_258B03414();
          v73 = v72;
          v74 = v63;
          v75 = v93;
          v93(v74, v97);
          v76 = sub_2589F1F78(v71, v73, v104);

          *(v66 + 14) = v76;
          _os_log_impl(&dword_2589A1000, v64, v65, "[%{public}s] Tapped cell for date: %{public}s", v66, 0x16u);
          swift_arrayDestroy();
          v77 = v67;
          v52 = v97;
          MEMORY[0x259C945C0](v77, -1, -1);
          MEMORY[0x259C945C0](v66, -1, -1);

          (*(v101 + 8))(v89, v102);
        }

        else
        {

          v78 = v63;
          v75 = v93;
          v93(v78, v52);
          (*(v101 + 8))(v62, v102);
        }

        v79 = v96;
        v80 = v98;
        v81 = v45 + qword_27F97AC38;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v83 = v94;
        if (Strong)
        {
          v84 = *(v81 + 8);
          v85 = swift_getObjectType();
          (*(v84 + 8))(v45, v83, v85, v84);
          swift_unknownObjectRelease();
        }

        v75(v83, v52);
        (*(v99 + 8))(v80, v79);
      }

      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_258ADC4E4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_258B00274();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00254();
  v10 = a3;
  v11 = a1;
  StateOfMindCalendarViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

void StateOfMindCalendarViewController.dateCacheDidUpdate(_:on:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_258B00084();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B00224();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B029C4();
  v43 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B00384();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v15 = sub_258B00374();
  v16 = sub_258B02EA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v2;
    v18 = v17;
    v35 = swift_slowAlloc();
    v36 = v4;
    v45[0] = v35;
    *v18 = 136446210;
    v19 = sub_258B035A4();
    ObjectType = a1;
    v21 = v10;
    v22 = v8;
    v23 = v7;
    v24 = v5;
    v25 = sub_2589F1F78(v19, v20, v45);
    a1 = ObjectType;

    *(v18 + 4) = v25;
    v5 = v24;
    v7 = v23;
    v8 = v22;
    v10 = v21;
    _os_log_impl(&dword_2589A1000, v15, v16, "[%{public}s] date cache did update", v18, 0xCu);
    v26 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    v4 = v36;
    MEMORY[0x259C945C0](v26, -1, -1);
    v27 = v18;
    v2 = v37;
    MEMORY[0x259C945C0](v27, -1, -1);
  }

  (*(v39 + 8))(v14, v40);
  v28 = [a1 calendar];
  v29 = v42;
  sub_258B001A4();

  sub_258B00074();
  v30 = v41;
  sub_258B00164();
  (*(v5 + 8))(v7, v4);
  (*(v44 + 8))(v29, v8);
  v31 = qword_27F9714C0;
  swift_beginAccess();
  (*(v43 + 40))(&v2[v31], v30, v10);
  swift_endAccess();
  v32 = [v2 collectionView];
  if (v32)
  {
    v33 = v32;
    [v32 reloadData];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258ADCA2C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_258AFFBF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFFBD4();
  v10 = a3;
  v11 = a1;
  StateOfMindCalendarViewController.dateCacheDidUpdate(_:on:)(v10);

  return (*(v7 + 8))(v9, v6);
}

id sub_258ADCB24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_258B00274();
  result = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v17[0] = *(v6 + 16);
    v17[1] = v6 + 16;
    v10 = (v6 + 8);
    v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    (v17[0])(v8, v11, v4);
    while (1)
    {
      result = [v2 collectionView];
      if (!result)
      {
        break;
      }

      v13 = result;
      v14 = sub_258B00244();
      v15 = [v13 cellForItemAtIndexPath_];

      if (v15)
      {
        type metadata accessor for StateOfMindCalendarDayCell(0);
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          sub_258ADB0CC(v16, v8);
        }
      }

      result = (*v10)(v8, v4);
      v11 += v12;
      if (!--v9)
      {
        return result;
      }

      (v17[0])(v8, v11, v4);
    }

    __break(1u);
  }

  return result;
}

void *sub_258ADCCDC(uint64_t a1)
{
  sub_258ADEA1C(0, &qword_27F971550, MEMORY[0x277D126B0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - v4;
  v6 = sub_258B029C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_258B02874();
  if (result)
  {
    v11 = result;
    sub_258B027E4();

    sub_258B02784();
    (*(v7 + 8))(v9, v6);
    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D126A8])
    {
      (*(v3 + 96))(v5, v2);
      return *v5;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258ADCEE8(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v80 = a3;
  v91 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_258B00084();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v87 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_258B029C4();
  *&v83 = *(v84 - 1);
  MEMORY[0x28223BE20](v84);
  v82 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_258ADD9F4(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v71 - v13;
  sub_258ADD9F4(0, &qword_27F9702D0, MEMORY[0x277CC9788], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v71 - v15;
  v17 = sub_258B000F4();
  v75 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v74 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_258B00224();
  v88 = *(v19 - 8);
  v89 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v85 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v86 = &v71 - v22;
  v73 = sub_258B00384();
  v23 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v8;
  v26 = *(v8 + 56);
  v78 = qword_27F971450;
  v90 = v7;
  v77 = v8 + 56;
  v76 = v26;
  v26(&v4[qword_27F971450], 1, 1, v7);
  *&v4[qword_27F971458] = 0;
  *&v4[qword_27F971460] = 0;
  *&v4[qword_27F97AC38 + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_258B00364();
  v27 = sub_258B00374();
  v28 = sub_258B02EA4();
  v29 = os_log_type_enabled(v27, v28);
  v79 = ObjectType;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v72 = a1;
    v31 = v30;
    v32 = swift_slowAlloc();
    v71 = v16;
    v33 = v32;
    v94[0] = v32;
    *v31 = 136446210;
    v34 = sub_258B035A4();
    v36 = sub_2589F1F78(v34, v35, v94);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_2589A1000, v27, v28, "[%{public}s] initializing", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v37 = v33;
    v16 = v71;
    MEMORY[0x259C945C0](v37, -1, -1);
    v38 = v31;
    a1 = v72;
    MEMORY[0x259C945C0](v38, -1, -1);
  }

  (*(v23 + 8))(v25, v73);
  v39 = v75;
  v40 = v74;
  (*(v75 + 104))(v74, *MEMORY[0x277CC9830], v17);
  v41 = v86;
  sub_258B00104();
  (*(v39 + 8))(v40, v17);
  sub_258B000D4();
  v42 = sub_258B000E4();
  (*(*(v42 - 8) + 56))(v16, 0, 1, v42);
  sub_258B001D4();
  v43 = 45;
  if (v80 == 2)
  {
    v43 = 70;
  }

  v74 = v43;
  v75 = *(v88 + 16);
  v44 = v85;
  v45 = v89;
  (v75)(v85, v41, v89);
  type metadata accessor for StateOfMindCalendarDataSource(0);
  swift_allocObject();
  v46 = a1;
  v47 = sub_258A9A458(v46, v44);

  v48 = objc_allocWithZone(MEMORY[0x277D12820]);
  v49 = sub_258B00194();
  v50 = [v48 initWithCalendar_];

  *&v4[qword_27F9714B8] = v50;
  v51 = v92;
  v52 = v81;
  v53 = v90;
  (*(v92 + 16))(v81, v91, v90);
  v76(v52, 0, 1, v53);
  v54 = v78;
  swift_beginAccess();
  sub_258ADDBC4(v52, &v4[v54]);
  swift_endAccess();
  v80 = v47;
  v94[0] = v47;
  sub_258ADEA1C(0, &qword_27F971580, MEMORY[0x277D126B8]);
  swift_allocObject();

  *&v4[qword_27F971498] = sub_258B02754();
  *&v4[qword_27F9714B0] = MEMORY[0x277D84FA0];
  v55 = v87;
  sub_258B00074();
  v56 = v82;
  sub_258B00164();
  v57 = *(v51 + 8);
  v92 = v51 + 8;
  v81 = v57;
  (v57)(v55, v53);
  (*(v83 + 32))(&v4[qword_27F9714C0], v56, v84);
  v58 = v75;
  (v75)(v44, v41, v45);
  v84 = MEMORY[0x277D84560];
  sub_258ADD9F4(0, &qword_27F971588, MEMORY[0x277D126C0], MEMORY[0x277D84560]);
  sub_258B027A4();
  v59 = swift_allocObject();
  v83 = xmmword_258B2C470;
  *(v59 + 16) = xmmword_258B2C470;
  sub_258B02794();
  sub_258AD73F8();
  v60 = objc_allocWithZone(sub_258B02744());
  v61 = sub_258B02734();
  v62 = type metadata accessor for StateOfMindCalendarViewController(0);
  v93.receiver = v4;
  v93.super_class = v62;
  v63 = objc_msgSendSuper2(&v93, sel_initWithCollectionViewLayout_, v61);
  sub_258B02824();
  sub_258ADEAB8(&qword_27F971590, type metadata accessor for StateOfMindCalendarViewController, &protocol conformance descriptor for StateOfMindCalendarViewController);
  v64 = v89;
  v58(v44, v41, v89);
  v65 = v63;
  sub_258B00074();
  v66 = sub_258B027D4();
  sub_258B02884();
  sub_258ADD9F4(0, &qword_27F971598, sub_258ADEB00, v84);
  v67 = swift_allocObject();
  *(v67 + 16) = v83;
  v68 = sub_258B00394();
  v69 = MEMORY[0x277D74DB8];
  *(v67 + 32) = v68;
  *(v67 + 40) = v69;
  MEMORY[0x259C934D0](v67, sel_preferredContentSizeCategoryDidChange);

  swift_unknownObjectRelease();

  (v81)(v91, v90);
  (*(v88 + 8))(v41, v64);
  return v65;
}

void sub_258ADD9F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for StateOfMindCalendarViewController(uint64_t a1)
{
  result = qword_27F9714D0;
  if (!qword_27F9714D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258ADDAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F971488)
  {
    sub_258ADDB00(0, a2, a3);
    v3 = sub_258B011D4();
    if (!v4)
    {
      atomic_store(v3, &qword_27F971488);
    }
  }
}

unint64_t sub_258ADDB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971490;
  if (!qword_27F971490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971490);
  }

  return result;
}

void sub_258ADDB5C(uint64_t a1)
{
  if (!qword_27F9714A0)
  {
    sub_258A98A64(255);
    v1 = sub_258B004F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9714A0);
    }
  }
}

uint64_t sub_258ADDBC4(uint64_t a1, uint64_t a2)
{
  sub_258ADD9F4(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_258ADDC58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a3;
  v69 = a1;
  sub_258ADD9F4(0, &unk_27F971540, type metadata accessor for StateOfMindCalendarDay, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v61 - v7;
  sub_258ADEA1C(0, &qword_27F971550, MEMORY[0x277D126B0]);
  v9 = v8;
  v66 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v65 = (&v61 - v10);
  v11 = type metadata accessor for StateOfMindCalendarDay(0);
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258B029C4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v64 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v72 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - v23;
  v73 = v4;
  v25 = sub_258B02874();
  if (!v25)
  {
    __break(1u);
    goto LABEL_11;
  }

  v26 = v25;
  v63 = v9;
  sub_258B027E4();

  v62 = v15;
  v27 = *(v15 + 16);
  v27(v72, v24, v14);
  v28 = sub_258AD70FC();
  v29 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v30 = v24;
  v31 = a4;
  v32 = [v29 initWithInteger_];
  v33 = [v28 stringFromNumber_];

  if (!v33)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v34 = sub_258B02B14();
  v36 = v35;

  v27(v20, v30, v14);
  v37 = qword_27F9714C0;
  v61 = v30;
  v38 = v73;
  swift_beginAccess();
  v27(v64, (v38 + v37), v14);
  v39 = sub_258B002B4();
  v71 = v31;
  v40 = sub_258B00264();
  v41 = MEMORY[0x277D84F90];
  *v13 = 0;
  *(v13 + 1) = v41;
  *(v13 + 2) = v34;
  *(v13 + 3) = v36;
  v42 = v68;
  v43 = v72;
  v27(&v13[v68[7]], v72, v14);
  v13[v42[8]] = v39;
  *&v13[v42[9]] = v40;
  v75 = 0x7865646E49796144;
  v76 = 0xE90000000000003ALL;
  v74 = sub_258B02984();
  v44 = sub_258B03414();
  MEMORY[0x259C931B0](v44);

  v46 = v75;
  v45 = v76;
  v47 = *(v62 + 8);
  v47(v43, v14);
  v48 = &v13[v42[10]];
  *v48 = v46;
  v48[1] = v45;
  v49 = &v13[v42[11]];
  *v49 = v46;
  v49[1] = v45;
  sub_258B003E4();
  v50 = v65;
  v51 = v61;
  sub_258B02784();
  v52 = v66;
  v53 = v63;
  if ((*(v66 + 88))(v50, v63) == *MEMORY[0x277D126A8])
  {
    (*(v52 + 96))(v50, v53);
    v54 = *v50;
  }

  else
  {
    (*(v52 + 8))(v50, v53);
    v54 = 0;
  }

  *v13 = [v54 dailyStateOfMind];
  sub_258A767F0();
  if (v54)
  {
    v55 = [v54 momentaryStatesOfMind];
    sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
    v56 = sub_258B02C74();
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
  }

  *(v13 + 1) = v56;
  sub_258A767F0();
  v57 = sub_258B02AD4();
  v58 = sub_258B00244();
  v59 = [v69 dequeueReusableCellWithReuseIdentifier:v57 forIndexPath:v58];

  type metadata accessor for StateOfMindCalendarDayCell(0);
  swift_dynamicCastClassUnconditional();
  v60 = v70;
  sub_258ADE954(v13, v70, type metadata accessor for StateOfMindCalendarDay);
  (*(v67 + 56))(v60, 0, 1, v42);
  sub_258ABCF78(v60);

  v47(v51, v14);
  sub_258ADE9BC(v13, type metadata accessor for StateOfMindCalendarDay);
}

uint64_t sub_258ADE33C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D767D8];
  sub_258B02854();
  v5 = v4;
  sub_258B02844();
  v6 = sub_258B02AD4();

  v7 = sub_258B00244();
  v8 = [a1 dequeueReusableSupplementaryViewOfKind:v5 withReuseIdentifier:v6 forIndexPath:v7];

  v9 = swift_dynamicCastClassUnconditional();
  v10 = sub_258AD7170();
  v11 = sub_258B00014();
  v12 = [v10 stringFromDate_];

  sub_258B02B14();
  sub_258B02834();

  return v9;
}

void sub_258ADE4AC(uint64_t a1)
{
  sub_258ADD9F4(319, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_258B029C4();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_258ADE768(uint64_t a1, uint64_t a2)
{
  sub_258ADD9F4(0, &qword_27F971568, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258ADE7FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ADE864(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258ADD9F4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258ADE8E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258ADD9F4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258ADE954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ADE9BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258ADEA1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StateOfMindCalendarDataSource(255);
    v7 = sub_258ADEAB8(&qword_27F971558, type metadata accessor for StateOfMindCalendarDataSource, &unk_258B32DC8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258ADEAB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258ADEB00()
{
  result = qword_27F9715A0;
  if (!qword_27F9715A0)
  {
    sub_258ADEB48();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F9715A0);
  }

  return result;
}

unint64_t sub_258ADEB48()
{
  result = qword_27F9715A8;
  if (!qword_27F9715A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F9715A8);
  }

  return result;
}

void sub_258ADEBAC(void *a1, void *a2, char a3)
{
  v6 = [objc_opt_self() stateOfMindType];
  v7 = [a1 displayTypeController];
  v8 = [v7 displayTypeForObjectType_];

  if (v8)
  {
    sub_258B026F4();
    v9 = [a1 unitController];
    v10 = MEMORY[0x259C92CE0](v8, v9);

    if (a3)
    {
      v11 = [v10 yAxis];
      if (v11)
      {

        v12 = [v8 localization];
        v13 = [v12 shortenedDisplayName];

        if (!v13)
        {
          sub_258B02B14();
          v13 = sub_258B02AD4();
        }

        [objc_opt_self() setStackedSeriesLegend:v10 title:v13];
      }
    }

    v14 = objc_allocWithZone(type metadata accessor for StateOfMindChartTapOutFormatter(0));
    v15 = v10;
    v16 = v8;
    v17 = [v14 init];
    v18 = [v16 sampleType];
    v19 = [v18 code];

    v20 = objc_allocWithZone(MEMORY[0x277D128F0]);
    v21 = v15;
    [v20 initWithGraphSeries:v21 baseDisplayType:v16 valueFormatter:v17 dataTypeCode:v19];

    v22 = [objc_allocWithZone(MEMORY[0x277D127C0]) init];
    v23 = sub_258ADEE68(v16, a1, a2);
    [v22 setChartCache_];
    [v21 setDataSource_];
  }

  else
  {
    __break(1u);
  }
}

id sub_258ADEE68(void *a1, void *a2, void *a3)
{
  v6 = sub_258B00384();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - v11;
  v71 = a2;
  v13 = [a2 chartDataCacheController];
  v70 = a1;
  v14 = [v13 findCustomCachesForDisplayType_];

  v72 = v10;
  if (!v14)
  {
LABEL_36:
    sub_258B00364();
    v47 = a3;
    v48 = sub_258B00374();
    v49 = sub_258B02EA4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v77 = v51;
      *v50 = 136446467;
      v52 = sub_258B035A4();
      v54 = sub_2589F1F78(v52, v53, &v77);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2081;
      v76 = a3;
      sub_258ADF578(0);
      v55 = v47;
      v56 = sub_258B02B34();
      v58 = sub_2589F1F78(v56, v57, &v77);

      *(v50 + 14) = v58;
      _os_log_impl(&dword_2589A1000, v48, v49, "[%{public}s] Creating cache for state of mind predicate: %{private}s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v51, -1, -1);
      MEMORY[0x259C945C0](v50, -1, -1);

      (*(v7 + 8))(v72, v6);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v59 = v71;
    v60 = [v71 healthStore];
    objc_allocWithZone(sub_258B028C4());
    v61 = v47;
    v62 = v70;
    v63 = sub_258B028A4();
    v37 = [objc_allocWithZone(MEMORY[0x277D127C8]) init];
    [v37 setDataSource_];
    v64 = [objc_opt_self() sharedOperationManager];
    [v37 setOperationManager_];

    v65 = [v59 chartDataCacheController];
    [v65 addCustomChartCache:v37 forDisplayType:v62];

    return v37;
  }

  v67 = v12;
  v68 = v7;
  sub_2589F4488(0, &qword_27F9715B8, 0x277D127C8);
  v15 = sub_258B02C74();

  v69 = v6;
  if (v15 >> 62)
  {
LABEL_34:
    v16 = sub_258B032B4();
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_35:

    v7 = v68;
    v6 = v69;
    v10 = v72;
    goto LABEL_36;
  }

LABEL_4:
  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  v73 = v15;
  v74 = v15 & 0xFFFFFFFFFFFFFF8;
  v19 = &property descriptor for StateOfMindEntryModel.valence;
  while (1)
  {
    if (v18)
    {
      v20 = MEMORY[0x259C937C0](v17, v15);
    }

    else
    {
      if (v17 >= *(v74 + 16))
      {
        goto LABEL_33;
      }

      v20 = *(v15 + 8 * v17 + 32);
    }

    v21 = v20;
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v23 = [v20 dataSource];
    sub_258B028C4();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    v75 = v21;
    v24 = sub_258B028B4();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 v19[437]];

      if (!a3)
      {
        if (!v26)
        {
          break;
        }

        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (!a3)
    {
      break;
    }

    v26 = 0;
    v19 = &property descriptor for StateOfMindEntryModel.valence;
LABEL_18:
    v27 = a3;
    v28 = [a3 v19[437]];
    v29 = v28;
    if (v26)
    {
      if (!v28)
      {
        a3 = v27;
        v15 = v73;
LABEL_26:
        swift_unknownObjectRelease();

        v19 = &property descriptor for StateOfMindEntryModel.valence;
        goto LABEL_6;
      }

      sub_2589F4488(0, &qword_27F9715C0, 0x277CCAC30);
      v30 = sub_258B030B4();

      swift_unknownObjectRelease();
      if (v30)
      {
        goto LABEL_29;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      if (!v29)
      {
        goto LABEL_29;
      }
    }

    a3 = v27;
    v15 = v73;
    v19 = &property descriptor for StateOfMindEntryModel.valence;
LABEL_6:
    ++v17;
    if (v22 == v16)
    {
      goto LABEL_35;
    }
  }

  v27 = a3;
  swift_unknownObjectRelease();
LABEL_29:

  v31 = v67;
  sub_258B00364();
  v32 = v27;
  v33 = v27;
  v34 = sub_258B00374();
  v35 = sub_258B02EA4();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v75;
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v77 = v39;
    *v38 = 136446467;
    v40 = sub_258B035A4();
    v42 = sub_2589F1F78(v40, v41, &v77);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2081;
    v76 = v32;
    sub_258ADF578(0);
    v43 = v33;
    v44 = sub_258B02B34();
    v46 = sub_2589F1F78(v44, v45, &v77);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_2589A1000, v34, v35, "[%{public}s] Found cache for state of mind predicate: %{private}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v39, -1, -1);
    MEMORY[0x259C945C0](v38, -1, -1);
  }

  (*(v68 + 8))(v31, v69);
  return v37;
}

void sub_258ADF578(uint64_t a1)
{
  if (!qword_27F9715B0)
  {
    sub_2589F4488(255, &unk_27F970A60, 0x277D12900);
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9715B0);
    }
  }
}

uint64_t Color.init(valenceClassification:variant:colorScheme:)(CGColor *GenericRGB, char *a2, uint64_t a3)
{
  sub_258AE00E8(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 72);
  v9[8] = *a2;
  v11 = sub_258B006A4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a3, v11);
  if (v9[8] > 1u)
  {
    if (v9[8] == 2)
    {
      if (GenericRGB > 4)
      {
        if (GenericRGB == 5)
        {
          v15 = 0.431372549;
          v16 = 0.694117647;
          v17 = 0.0;
          goto LABEL_88;
        }

        if (GenericRGB == 6)
        {
          v16 = 0.603921569;
          v21 = 0x3F88181818181818;
          goto LABEL_67;
        }

        if (GenericRGB == 7)
        {
          v15 = 0.984313725;
          v16 = 0.454901961;
          v17 = 0.262745098;
          goto LABEL_88;
        }
      }

      else
      {
        if (GenericRGB == 1)
        {
          v15 = 0.207843137;
          v16 = 0.121568627;
          v17 = 0.462745098;
          goto LABEL_88;
        }

        if (GenericRGB == 2)
        {
          v15 = 0.235294118;
          v16 = 0.298039216;
          v17 = 0.760784314;
          goto LABEL_88;
        }

        if (GenericRGB == 3)
        {
          v15 = 0.133333333;
          v16 = 0.392156863;
          v17 = 0.749019608;
          goto LABEL_88;
        }
      }

      v15 = 0.42745098;
      v16 = 0.682352941;
      v22 = 0x3838383838383838;
    }

    else
    {
      if (GenericRGB > 4)
      {
        goto LABEL_43;
      }

      if (GenericRGB != 1)
      {
        if (GenericRGB == 2)
        {
          v15 = 0.556862745;
          v16 = 0.674509804;
          v17 = 0.996078431;
          goto LABEL_88;
        }

        if (GenericRGB == 3)
        {
          v15 = 0.635294118;
          v16 = 0.811764706;
          v17 = 1.0;
          goto LABEL_88;
        }

LABEL_63:
        v15 = 0.796078431;
        v16 = 0.878431373;
        v17 = 0.909803922;
        goto LABEL_88;
      }

      v15 = 0.611764706;
      v16 = 0.423529412;
      v22 = 0x7878787878787878;
    }

    *&v17 = v22 & 0xFFFFFFFFFFFFLL | 0x3FE8000000000000;
    goto LABEL_88;
  }

  v13 = MEMORY[0x277CDF3D0];
  if (!v9[8])
  {
    v14 = (*(v12 + 88))(&v9[v10], v11);
    if (v14 == *v13)
    {
      if (GenericRGB <= 4)
      {
        if (GenericRGB != 1)
        {
          if (GenericRGB == 2)
          {
            v15 = 0.666666667;
            v16 = 0.709803922;
            goto LABEL_84;
          }

          if (GenericRGB == 3)
          {
            v15 = 0.68627451;
            v16 = 0.752941176;
LABEL_84:
            v17 = 0.878431373;
            goto LABEL_88;
          }

          goto LABEL_51;
        }

LABEL_79:
        v15 = 0.623529412;
        v16 = 0.588235294;
        v17 = 0.733333333;
        goto LABEL_88;
      }

      if (GenericRGB == 5)
      {
        v15 = 0.682352941;
        v16 = 0.788235294;
        v17 = 0.501960784;
        goto LABEL_88;
      }

      if (GenericRGB == 6)
      {
        v15 = 0.956862745;
        v16 = 0.819607843;
        v17 = 0.619607843;
        goto LABEL_88;
      }

      if (GenericRGB != 7)
      {
        goto LABEL_51;
      }

      v15 = 0.996078431;
      v16 = 0.737254902;
LABEL_69:
      v17 = 0.392156863;
      goto LABEL_88;
    }

    if (v14 != *MEMORY[0x277CDF3C0])
    {
LABEL_51:
      v15 = 0.741176471;
      v16 = 0.82745098;
      v17 = 0.839215686;
      goto LABEL_88;
    }

    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
LABEL_88:
    CGColorCreateGenericRGB(v15, v16, v17, 1.0);
LABEL_89:
    v24 = sub_258B01F74();
    v25 = *(v12 + 8);
    v25(a3, v11);
    v25(&v9[v10], v11);
    return v24;
  }

  v18 = (*(v12 + 88))(&v9[v10], v11);
  if (v18 == *v13)
  {
    if (GenericRGB <= 4)
    {
      if (GenericRGB == 1)
      {
        v15 = 0.815686275;
        v16 = 0.776470588;
        v17 = 0.941176471;
        goto LABEL_88;
      }

      if (GenericRGB == 2)
      {
        v15 = 0.874509804;
        v16 = 0.898039216;
        v17 = 1.0;
        goto LABEL_88;
      }

      if (GenericRGB == 3)
      {
        v15 = 0.807843137;
        v16 = 0.847058824;
        v17 = 0.905882353;
        goto LABEL_88;
      }

LABEL_56:
      v15 = 0.858823529;
      v16 = 0.882352941;
      v17 = 0.88627451;
      goto LABEL_88;
    }

    if (GenericRGB == 5)
    {
      v15 = 0.807843137;
      v16 = 0.901960784;
      v17 = 0.643137255;
      goto LABEL_88;
    }

    if (GenericRGB == 6)
    {
      v15 = 0.964705882;
      v16 = 0.831372549;
      v17 = 0.635294118;
      goto LABEL_88;
    }

    if (GenericRGB != 7)
    {
      goto LABEL_56;
    }

    v16 = 0.917647059;
    v21 = 0x3FEC3C3C3C3C3C3CLL;
LABEL_67:
    v17 = *&v21;
    v15 = 1.0;
    goto LABEL_88;
  }

  if (v18 != *MEMORY[0x277CDF3C0])
  {
    goto LABEL_56;
  }

  if (GenericRGB > 4)
  {
    if (GenericRGB != 5)
    {
      if (GenericRGB == 6)
      {
        goto LABEL_114;
      }

      if (GenericRGB == 7)
      {
        GenericRGB = CGColorCreateGenericRGB(0.996078431, 0.737254902, 0.392156863, 1.0);
        if (CGColorGetNumberOfComponents(GenericRGB) != 4)
        {
          goto LABEL_89;
        }

        result = sub_258B02E04();
        if (!result)
        {
          goto LABEL_89;
        }

        v23 = *(result + 16);
        if (v23)
        {
          if (v23 != 1)
          {
            if (v23 < 3)
            {
              __break(1u);
              goto LABEL_79;
            }

            goto LABEL_119;
          }

          goto LABEL_131;
        }

        goto LABEL_124;
      }

LABEL_102:
      GenericRGB = CGColorCreateGenericRGB(0.741176471, 0.82745098, 0.839215686, 1.0);
      if (CGColorGetNumberOfComponents(GenericRGB) != 4)
      {
        goto LABEL_89;
      }

      result = sub_258B02E04();
      if (!result)
      {
        goto LABEL_89;
      }

      v28 = *(result + 16);
      if (v28)
      {
        if (v28 == 1)
        {
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v28 >= 3)
        {
          goto LABEL_119;
        }

        __break(1u);
        goto LABEL_108;
      }

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
      goto LABEL_127;
    }

    goto LABEL_96;
  }

  if (GenericRGB == 1)
  {
    GenericRGB = CGColorCreateGenericRGB(0.623529412, 0.588235294, 0.733333333, 1.0);
    if (CGColorGetNumberOfComponents(GenericRGB) != 4)
    {
      goto LABEL_89;
    }

    result = sub_258B02E04();
    if (!result)
    {
      goto LABEL_89;
    }

    v26 = *(result + 16);
    if (!v26)
    {
      __break(1u);
      goto LABEL_121;
    }

    if (v26 == 1)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v26 >= 3)
    {
      goto LABEL_119;
    }

    __break(1u);
LABEL_96:
    GenericRGB = CGColorCreateGenericRGB(0.682352941, 0.788235294, 0.501960784, 1.0);
    if (CGColorGetNumberOfComponents(GenericRGB) != 4)
    {
      goto LABEL_89;
    }

    result = sub_258B02E04();
    if (!result)
    {
      goto LABEL_89;
    }

    v27 = *(result + 16);
    if (v27)
    {
      if (v27 == 1)
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v27 >= 3)
      {
        goto LABEL_119;
      }

      __break(1u);
      goto LABEL_102;
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (GenericRGB != 2)
  {
    if (GenericRGB == 3)
    {
      GenericRGB = CGColorCreateGenericRGB(0.68627451, 0.752941176, 0.878431373, 1.0);
      if (CGColorGetNumberOfComponents(GenericRGB) != 4)
      {
        goto LABEL_89;
      }

      result = sub_258B02E04();
      if (!result)
      {
        goto LABEL_89;
      }

      v20 = *(result + 16);
      if (v20)
      {
        if (v20 != 1)
        {
          if (v20 < 3)
          {
            __break(1u);
LABEL_43:
            if (GenericRGB == 5)
            {
              v15 = 0.71372549;
              v16 = 0.858823529;
              v17 = 0.274509804;
              goto LABEL_88;
            }

            if (GenericRGB == 6)
            {
              v15 = 0.996078431;
              v16 = 0.823529412;
              goto LABEL_69;
            }

            if (GenericRGB == 7)
            {
              v15 = 0.988235294;
              v16 = 0.745098039;
              v17 = 0.474509804;
              goto LABEL_88;
            }

            goto LABEL_63;
          }

LABEL_119:
          v31 = *(result + 32) * 0.5;
          v32 = *(result + 40) * 0.5;
          v33 = *(result + 48);

          CGColorCreateGenericRGB(v31, v32, v33 * 0.5, 1.0);

          goto LABEL_89;
        }

        goto LABEL_130;
      }

      goto LABEL_123;
    }

    goto LABEL_102;
  }

LABEL_108:
  GenericRGB = CGColorCreateGenericRGB(0.666666667, 0.709803922, 0.878431373, 1.0);
  if (CGColorGetNumberOfComponents(GenericRGB) != 4)
  {
    goto LABEL_89;
  }

  result = sub_258B02E04();
  if (!result)
  {
    goto LABEL_89;
  }

  v29 = *(result + 16);
  if (!v29)
  {
    goto LABEL_125;
  }

  if (v29 == 1)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v29 >= 3)
  {
    goto LABEL_119;
  }

  __break(1u);
LABEL_114:
  GenericRGB = CGColorCreateGenericRGB(0.956862745, 0.819607843, 0.619607843, 1.0);
  if (CGColorGetNumberOfComponents(GenericRGB) != 4)
  {
    goto LABEL_89;
  }

  result = sub_258B02E04();
  if (!result)
  {
    goto LABEL_89;
  }

  v30 = *(result + 16);
  if (!v30)
  {
    goto LABEL_126;
  }

  if (v30 == 1)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v30 >= 3)
  {
    goto LABEL_119;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t Color.init(valence:variant:colorScheme:)(_BYTE *a1, uint64_t a2, double a3)
{
  v6 = sub_258B006A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fmax(fmin(a3, 1.0), -1.0);
  if (*a1 <= 1u)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CDF3C0], v6);
    sub_258B00694();
    (*(v7 + 8))(v9, v6);
  }

  KeyPath = swift_getKeyPath();
  sub_258A84538(KeyPath, v10);

  v12 = sub_258B01F74();
  (*(v7 + 8))(a2, v6);
  return v12;
}

void sub_258AE00E8(uint64_t a1)
{
  if (!qword_27F9715C8)
  {
    type metadata accessor for ValenceClassification(255);
    sub_258B006A4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F9715C8);
    }
  }
}

CGColorRef sub_258AE0160@<X0>(_BYTE *a1@<X0>, CGColorRef *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (*a1)
    {
      if (v3 == 1)
      {
        v4 = 0.235294118;
        v5 = 0.298039216;
        v6 = 0.760784314;
      }

      else
      {
        v4 = 0.133333333;
        v5 = 0.392156863;
        v6 = 0.749019608;
      }
    }

    else
    {
      v4 = 0.207843137;
      v5 = 0.121568627;
      v6 = 0.462745098;
    }
  }

  else if (*a1 > 4u)
  {
    if (v3 == 5)
    {
      v5 = 0.603921569;
      v6 = 0.0117647059;
      v4 = 1.0;
    }

    else
    {
      v4 = 0.984313725;
      v5 = 0.454901961;
      v6 = 0.262745098;
    }
  }

  else if (v3 == 3)
  {
    v4 = 0.42745098;
    v5 = 0.682352941;
    v6 = 0.756862745;
  }

  else
  {
    v4 = 0.431372549;
    v5 = 0.694117647;
    v6 = 0.0;
  }

  result = CGColorCreateGenericRGB(v4, v5, v6, 1.0);
  *a2 = result;
  return result;
}

CGColorRef sub_258AE028C@<X0>(_BYTE *a1@<X0>, CGColorRef *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (*a1)
    {
      if (v3 == 1)
      {
        v4 = 0.556862745;
        v5 = 0.674509804;
        v6 = 0.996078431;
      }

      else
      {
        v4 = 0.635294118;
        v5 = 0.811764706;
        v6 = 1.0;
      }
    }

    else
    {
      v4 = 0.611764706;
      v5 = 0.423529412;
      v6 = 0.764705882;
    }
  }

  else if (*a1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = 0.996078431;
      v5 = 0.823529412;
      v6 = 0.392156863;
    }

    else
    {
      v4 = 0.988235294;
      v5 = 0.745098039;
      v6 = 0.474509804;
    }
  }

  else if (v3 == 3)
  {
    v4 = 0.796078431;
    v5 = 0.878431373;
    v6 = 0.909803922;
  }

  else
  {
    v4 = 0.71372549;
    v5 = 0.858823529;
    v6 = 0.274509804;
  }

  result = CGColorCreateGenericRGB(v4, v5, v6, 1.0);
  *a2 = result;
  return result;
}

uint64_t ValenceClassificationColorVariant.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

unint64_t sub_258AE0438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F9715D0;
  if (!qword_27F9715D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9715D0);
  }

  return result;
}

uint64_t type metadata accessor for IntroPhaseSpecs(uint64_t a1)
{
  result = qword_27F9715D8;
  if (!qword_27F9715D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258AE0510()
{
  sub_258B00E34();
  type metadata accessor for IntroPhaseSpecs(0);
  return sub_258B00D84();
}

uint64_t _s17EntryDayEmptyViewVMa(uint64_t a1)
{
  result = qword_27F9715E8;
  if (!qword_27F9715E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AE05BC(uint64_t a1)
{
  sub_258AE186C(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589DB8A8(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258AE06B0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = sub_258B01634();
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE1368(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE15AC(0, &qword_27F971628, sub_258AE1368, MEMORY[0x277CDFC70]);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  sub_258AE1610(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_258B01194();
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_258AE17D4(0);
  sub_258AE0AAC(v27, &v6[*(v16 + 44)]);
  sub_258B024F4();
  sub_258B00C94();
  sub_258AE18D0(v6, v10, sub_258AE1368);
  v17 = &v10[*(v8 + 36)];
  v18 = v39;
  *(v17 + 4) = v38;
  *(v17 + 5) = v18;
  *(v17 + 6) = v40;
  v19 = v35;
  *v17 = v34;
  *(v17 + 1) = v19;
  v20 = v37;
  *(v17 + 2) = v36;
  *(v17 + 3) = v20;
  sub_258B01614();
  v21 = sub_258AE16B8();
  sub_258B01D84();
  (*(v1 + 8))(v3, v28);
  sub_258AE1B10(v10, &qword_27F971628, sub_258AE1368, MEMORY[0x277CDFC70]);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v32 = sub_258AFFD94();
  v33 = v22;
  v30 = v8;
  v31 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2589BFF58(OpaqueTypeConformance2, v24, v25);
  sub_258B01D34();

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_258AE0AAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v83 = a2;
  v78 = sub_258B019F4();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE14A8(0);
  v80 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v82 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v74 - v7;
  v84 = (_s6StylesV5EmptyVMa(0) - 8);
  MEMORY[0x28223BE20](v84);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v74 - v14;
  v16 = _s21StateOfMindSymbolViewVMa(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AE15AC(0, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, MEMORY[0x277CDF688]);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v79 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v74 - v25;
  MEMORY[0x28223BE20](v24);
  v86 = &v74 - v27;
  *v19 = swift_getKeyPath();
  v28 = MEMORY[0x277CDF458];
  sub_258AE186C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v29 = *(v17 + 28);
  *(v19 + v29) = swift_getKeyPath();
  sub_258AE186C(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v28);
  swift_storeEnumTagMultiPayload();
  *(v19 + *(v17 + 32)) = 0;
  sub_258AC1060(v15);
  sub_258AE1A48(&v15[*(v11 + 60)], v9, _s6StylesV5EmptyVMa);
  sub_258AE1AB0(v15, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258AE1AB0(v9, _s6StylesV5EmptyVMa);
  sub_258B024F4();
  sub_258B00854();
  sub_258AE18D0(v19, v26, _s21StateOfMindSymbolViewVMa);
  v30 = &v26[*(v21 + 44)];
  v31 = v88;
  *v30 = v87;
  *(v30 + 1) = v31;
  *(v30 + 2) = v89;
  sub_258AE1938(v26, v86);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v90 = sub_258AFFD94();
  v91 = v32;
  sub_2589BFF58(v90, v32, v33);
  v75 = sub_258B01B44();
  v35 = v34;
  v37 = v36;
  v38 = v85;
  sub_258AC1060(v85);
  v84 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258AE1AB0(v38, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B019C4();
  sub_258B01994();
  sub_258B019E4();

  v39 = v77;
  v40 = v76;
  v41 = v78;
  (*(v77 + 104))(v76, *MEMORY[0x277CE0A10], v78);
  sub_258B01A14();

  (*(v39 + 8))(v40, v41);
  v42 = v75;
  v43 = sub_258B01AE4();
  v45 = v44;
  LOBYTE(v41) = v46;
  v78 = v47;
  sub_2589BFFAC(v42, v35, v37 & 1);

  sub_258AC1060(v38);
  sub_258AE1AB0(v38, v84);
  v48 = [objc_opt_self() tertiaryLabelColor];
  v90 = sub_258B01F94();
  v49 = sub_258B01AB4();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_2589BFFAC(v43, v45, v41 & 1);

  KeyPath = swift_getKeyPath();
  v90 = v49;
  v91 = v51;
  v92 = v53 & 1;
  v93 = v55;
  v94 = KeyPath;
  v95 = 1;
  v57 = _s17EntryDayEmptyViewVMa(0);
  v58 = v81;
  sub_2589D73B8(*(a1 + *(v57 + 20)), 0x7974706D45, 0xE500000000000000);
  sub_2589BFFAC(v49, v51, v53 & 1);

  LOBYTE(v55) = sub_258B01864();
  v59 = v85;
  sub_258AC1060(v85);
  sub_258AE1AB0(v59, v84);
  sub_258B00654();
  v60 = v58 + *(v80 + 36);
  *v60 = v55;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  v65 = v86;
  v66 = v79;
  sub_258AE19C0(v86, v79);
  v67 = v82;
  sub_258AE1A48(v58, v82, sub_258AE14A8);
  v68 = v83;
  *v83 = 0;
  *(v68 + 8) = 1;
  sub_258AE13FC(0);
  v70 = v69;
  sub_258AE19C0(v66, v68 + *(v69 + 48));
  sub_258AE1A48(v67, v68 + *(v70 + 64), sub_258AE14A8);
  v71 = v68 + *(v70 + 80);
  *v71 = 0;
  v71[8] = 1;
  sub_258AE1AB0(v58, sub_258AE14A8);
  v72 = MEMORY[0x277CDF688];
  sub_258AE1B10(v65, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, MEMORY[0x277CDF688]);
  sub_258AE1AB0(v67, sub_258AE14A8);
  return sub_258AE1B10(v66, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, v72);
}

void sub_258AE1368(uint64_t a1)
{
  if (!qword_27F9715F8)
  {
    sub_258AE186C(255, &qword_27F971600, sub_258AE13FC, MEMORY[0x277CE14B8]);
    sub_258AE1524();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9715F8);
    }
  }
}

void sub_258AE13FC(uint64_t a1)
{
  if (!qword_27F971608)
  {
    sub_258AE15AC(255, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, MEMORY[0x277CDF688]);
    sub_258AE14A8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F971608);
    }
  }
}

void sub_258AE14A8(uint64_t a1)
{
  if (!qword_27F971610)
  {
    sub_258AE1C8C(255, &qword_27F971618, sub_2589BFBAC);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971610);
    }
  }
}

unint64_t sub_258AE1524()
{
  result = qword_27F971620;
  if (!qword_27F971620)
  {
    sub_258AE186C(255, &qword_27F971600, sub_258AE13FC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971620);
  }

  return result;
}

void sub_258AE15AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258AE1610(uint64_t a1)
{
  if (!qword_27F971630)
  {
    sub_258AE15AC(255, &qword_27F971628, sub_258AE1368, MEMORY[0x277CDFC70]);
    sub_258AE16B8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971630);
    }
  }
}

unint64_t sub_258AE16B8()
{
  result = qword_27F971638;
  if (!qword_27F971638)
  {
    sub_258AE15AC(255, &qword_27F971628, sub_258AE1368, MEMORY[0x277CDFC70]);
    sub_258AE178C(&qword_27F971640, sub_258AE1368, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971638);
  }

  return result;
}

uint64_t sub_258AE178C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258AE17D4(uint64_t a1)
{
  if (!qword_27F971648)
  {
    sub_258AE186C(255, &qword_27F971600, sub_258AE13FC, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971648);
    }
  }
}

void sub_258AE186C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258AE18D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AE1938(uint64_t a1, uint64_t a2)
{
  sub_258AE15AC(0, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, MEMORY[0x277CDF688]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AE19C0(uint64_t a1, uint64_t a2)
{
  sub_258AE15AC(0, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, MEMORY[0x277CDF688]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AE1A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AE1AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AE1B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_258AE15AC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_258AE1B6C()
{
  result = qword_27F971650;
  if (!qword_27F971650)
  {
    sub_258AE1C8C(255, &qword_27F971658, sub_258AE1610);
    sub_258AE15AC(255, &qword_27F971628, sub_258AE1368, MEMORY[0x277CDFC70]);
    sub_258AE16B8();
    swift_getOpaqueTypeConformance2();
    sub_258AE178C(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971650);
  }

  return result;
}

void sub_258AE1C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258B017D4();
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258AE1D08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_258AE1D50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_258AE1DCC()
{
  v12 = MEMORY[0x277D84F90];
  v0 = sub_258B003E4();
  sub_2589FCBA4(v0);
  v1 = sub_258A90FF4();
  v2 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258A757CC(0, *(v12 + 2) + 1, 1, v12);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_258A757CC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  *&v2[8 * v4 + 32] = v1;
  v5 = sub_258B003E4();
  v6 = sub_258AEA60C(v5);

  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = sub_258AE563C(*(v6 + 16), 0, &qword_27F970058, MEMORY[0x277D83B88], MEMORY[0x277D84560], sub_258AEACD0);
  v9 = sub_258AE9A2C(&v11, v8 + 4, v7, v6);
  sub_258A8CFE8(v11);
  if (v9 != v7)
  {
    __break(1u);
LABEL_8:

    v8 = MEMORY[0x277D84F90];
  }

  v11 = v8;

  sub_258AE83C8(&v11);

  return v11;
}

uint64_t sub_258AE1F84()
{
  sub_258A155A0(0);
  MEMORY[0x28223BE20](v1);
  v2 = sub_258AE21C4();
  v4 = v3;
  v6 = v5 & 1;
  sub_2589FC8C8(&unk_2869D5B18);
  v7 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v7, MEMORY[0x277D83958]);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v2, v4, v6);

  sub_258AE9D78(0);
  sub_258AEAF44(&qword_27F971718, sub_258AE9D78, MEMORY[0x277CE14C0]);
  sub_258A5B2D4();
  return sub_258B02434();
}

uint64_t sub_258AE21C4()
{
  if ((sub_258A8FBE0() & 1) != 0 || (sub_258A8FBE0()) && (sub_258A8FBE0())
  {
    sub_258A8FBE0();
  }

  sub_258B01084();
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  return sub_258B01B24();
}

uint64_t sub_258AE2340@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  sub_258AE9EFC(0);
  v117 = *(v3 - 8);
  v118 = v3;
  MEMORY[0x28223BE20](v3);
  v110 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5B270(0);
  v103 = v5;
  v102 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v101 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AEA298(0);
  v109 = v7;
  v108 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v107 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = v88 - v10;
  sub_258AEA02C(0);
  v95 = v11;
  MEMORY[0x28223BE20](v11);
  v96 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE9FA0(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v104 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = v88 - v16;
  sub_258AEAE4C(0, &qword_27F9716B8, sub_258AE9EFC, MEMORY[0x277D83D88]);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v116 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v120 = v88 - v20;
  sub_258A5B1E4(0);
  v22 = v21;
  v23 = MEMORY[0x28223BE20](v21);
  v98 = v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v88 - v25;
  sub_258AE9E4C(0);
  v100 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v115 = v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v99 = v88 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = v88 - v32;
  v34 = *a1;
  v35 = a1[1];
  v36 = type metadata accessor for AssessmentsSettingsModel();
  v37 = sub_258AEAF44(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel, &protocol conformance descriptor for AssessmentsSettingsModel);
  v92 = v34;
  v90 = v36;
  sub_258B00A34();
  swift_getKeyPath();
  v91 = v37;
  sub_258B00A44();

  v105 = a1;
  v121 = a1;
  sub_258A155A0(0);
  v39 = v38;
  v40 = sub_258A5B2D4();
  v94 = v39;
  v93 = v40;
  sub_258B022A4();
  v111 = *(v35 + 16);
  LOBYTE(v34) = sub_258A8FBE0();
  KeyPath = swift_getKeyPath();
  v42 = swift_allocObject();
  v43 = 1;
  *(v42 + 16) = (v34 & 1) == 0;
  v44 = &v26[*(v22 + 36)];
  *v44 = KeyPath;
  v44[1] = sub_2589E1658;
  v44[2] = v42;
  *&v122 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5B68);
  v45 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v47 = v46;
  v48 = sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v45, MEMORY[0x277D83958]);
  v113 = v47;
  v112 = v48;
  sub_258B02A34();

  swift_arrayDestroy();
  v49 = sub_258A5B384();
  v97 = v22;
  sub_258B01DD4();

  sub_258AEA49C(v26, sub_258A5B1E4);
  if (AssessmentsSettingsModel.isPeriodicPromptsSettingOn.getter())
  {
    v88[1] = v49;
    if (qword_27F96C240 != -1)
    {
      swift_once();
    }

    v89 = v33;
    v126 = sub_258AFFD94();
    v127 = v50;
    sub_258B00A34();
    swift_getKeyPath();
    sub_258B00A44();

    v124 = v122;
    v125 = v123;
    MEMORY[0x28223BE20](v51);
    v52 = v105;
    sub_258AEA0E0(0);
    v53 = sub_258AEA220();
    sub_2589BFF58(v53, v54, v55);
    v56 = v96;
    sub_258B02244();
    v57 = sub_258A8FBE0();
    v58 = swift_getKeyPath();
    v59 = swift_allocObject();
    v60 = 1;
    *(v59 + 16) = (v57 & 1) == 0;
    v61 = (v56 + *(v95 + 36));
    *v61 = v58;
    v61[1] = sub_258A5BC78;
    v61[2] = v59;
    *&v122 = &unk_2869D4670;
    sub_2589FC8C8(&unk_2869D5BB8);
    sub_258B02A34();

    swift_arrayDestroy();
    sub_258AEA3DC();
    sub_258B01DD4();

    sub_258AEA49C(v56, sub_258AEA02C);
    type metadata accessor for NotificationSettingsModel(0);
    sub_258AEAF44(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
    v62 = sub_258B00A34();
    swift_getKeyPath();
    sub_258B00A44();

    MEMORY[0x28223BE20](v122);
    v63 = v101;
    sub_258B022A4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    if ((v122 & 1) == 0)
    {
      v60 = sub_258A8FBE0() ^ 1;
    }

    v64 = swift_getKeyPath();
    v65 = swift_allocObject();
    *(v65 + 16) = v60 & 1;
    v66 = v98;
    (*(v102 + 32))(v98, v63, v103);
    v67 = (v66 + *(v97 + 36));
    *v67 = v64;
    v67[1] = sub_258A5BC78;
    v67[2] = v65;
    *&v122 = &unk_2869D4670;
    sub_2589FC8C8(&unk_2869D5C08);
    sub_258B02A34();

    swift_arrayDestroy();
    v68 = v99;
    sub_258B01DD4();

    sub_258AEA49C(v66, sub_258A5B1E4);
    v69 = swift_allocObject();
    v70 = v52[1];
    v69[1] = *v52;
    v69[2] = v70;
    v71 = v52[3];
    v69[3] = v52[2];
    v69[4] = v71;
    sub_258A36CE4(v52, &v122);
    sub_258AEA31C();
    v72 = v106;
    sub_258B01C34();

    sub_258AEA49C(v68, sub_258AE9E4C);
    v73 = v114;
    v74 = v104;
    sub_258AE9D08(v114, v104, sub_258AE9FA0);
    v75 = v108;
    v76 = *(v108 + 16);
    v77 = v107;
    v78 = v109;
    v76(v107, v72, v109);
    v79 = v110;
    sub_258AE9D08(v74, v110, sub_258AE9FA0);
    sub_258AE9F30(0);
    v76((v79 + *(v80 + 48)), v77, v78);
    v81 = *(v75 + 8);
    v81(v72, v78);
    sub_258AEA49C(v73, sub_258AE9FA0);
    v81(v77, v78);
    sub_258AEA49C(v74, sub_258AE9FA0);
    sub_2589B8658(v79, v120);
    v43 = 0;
    v33 = v89;
  }

  v82 = v120;
  (*(v117 + 56))(v120, v43, 1, v118);
  v83 = v115;
  sub_258AE9D08(v33, v115, sub_258AE9E4C);
  v84 = v116;
  sub_2589B851C(v82, v116);
  v85 = v119;
  sub_258AE9D08(v83, v119, sub_258AE9E4C);
  sub_258AE9DAC(0);
  sub_2589B851C(v84, v85 + *(v86 + 48));
  sub_2589B85B0(v82);
  sub_258AEA49C(v33, sub_258AE9E4C);
  sub_2589B85B0(v84);
  return sub_258AEA49C(v83, sub_258AE9E4C);
}

double sub_258AE3208()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v14 = sub_258AFFD94();
  sub_2589BFF58(v14, v0, v1);
  v2 = sub_258B01B44();
  v4 = v3;
  v6 = v5;
  if (sub_258A8FBE0())
  {
    sub_258B014A4();
  }

  else
  {
    sub_258B014B4();
  }

  v7 = sub_258B01AB4();
  v9 = v8;
  v11 = v10;
  sub_2589BFFAC(v2, v4, v6 & 1);

  sub_2589FC8C8(&unk_2869D5C58);
  v12 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v12, MEMORY[0x277D83958]);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v7, v9, v11 & 1);

  return result;
}

uint64_t sub_258AE3474(_OWORD *a1)
{
  v8 = sub_258AE1DCC();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  sub_258A36CE4(a1, v7);
  v5 = MEMORY[0x277D83B88];
  sub_258AEACD0(0, &qword_27F9716F0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
  sub_258A155A0(0);
  sub_258AEA1C8(&qword_27F9716F8, &qword_27F9716F0, v5, MEMORY[0x277D83980]);
  sub_258A5B2D4();
  return sub_258B023B4();
}

double sub_258AE35BC(uint64_t *a1)
{
  v1 = sub_258AEA680(*a1);
  sub_2589BFF58(v1, v2, v3);
  v4 = MEMORY[0x277D837D0];
  v5 = sub_258B01B44();
  v7 = v6;
  v9 = v8;
  sub_258AEACD0(0, &qword_280DF88F0, v4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B326A0;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x8000000258B39A10;
  *(inited + 48) = sub_258B03414();
  *(inited + 56) = v11;
  *(inited + 64) = 1937334596;
  *(inited + 72) = 0xE400000000000000;
  v12 = sub_258B003E4();
  sub_2589FC8C8(v12);
  sub_258AEACD0(0, &qword_280DF8948, v4, MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v4, MEMORY[0x277D83958]);
  sub_258B02A34();

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v5, v7, v9 & 1);

  return result;
}

double sub_258AE37E8()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v14 = sub_258AFFD94();
  sub_2589BFF58(v14, v0, v1);
  v2 = sub_258B01B44();
  v4 = v3;
  v6 = v5;
  if (sub_258A8FBE0())
  {
    sub_258B014A4();
  }

  else
  {
    sub_258B014B4();
  }

  v7 = sub_258B01AB4();
  v9 = v8;
  v11 = v10;
  sub_2589BFFAC(v2, v4, v6 & 1);

  sub_2589FC8C8(&unk_2869D5CA8);
  v12 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v12, MEMORY[0x277D83958]);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v7, v9, v11 & 1);

  return result;
}

uint64_t sub_258AE3A54(uint64_t a1)
{
  sub_258AEAE4C(0, &qword_280DF8930, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v13 == 1)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v12[15] = 1;
    sub_258AEACD0(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    return sub_258B02314();
  }

  else
  {
    v6 = sub_258B02D44();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_258B02D24();
    sub_258A36CE4(a1, &v13);
    v7 = sub_258B02D14();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    *(v8 + 16) = v7;
    *(v8 + 24) = v9;
    v10 = *(a1 + 16);
    *(v8 + 32) = *a1;
    *(v8 + 48) = v10;
    v11 = *(a1 + 48);
    *(v8 + 64) = *(a1 + 32);
    *(v8 + 80) = v11;
    sub_258A8F090(0, 0, v4, &unk_258B34F48, v8);
  }
}

uint64_t sub_258AE3C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_258B00084();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_258B02D24();
  v4[6] = sub_258B02D14();
  v7 = sub_258B02CE4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_258AE3D58, v7, v6);
}

uint64_t sub_258AE3D58(uint64_t a1)
{
  sub_258B00044();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_258A92678;
  v3 = *(v1 + 40);

  return AssessmentsSettingsModel.resetPeriodicPromptsTimer(acknowledgmentDate:)(v3);
}

uint64_t sub_258AE3E58()
{
  sub_258A155A0(0);
  MEMORY[0x28223BE20](v3);
  v4 = sub_258AE4078();
  v6 = v5;
  v8 = v7 & 1;
  sub_2589FC8C8(&unk_2869D5CF8);
  v9 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v9, MEMORY[0x277D83958]);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v4, v6, v8);

  sub_258AE9E4C(0);
  sub_258AEA31C();
  sub_258A5B2D4();
  return sub_258B02434();
}

uint64_t sub_258AE4078()
{
  if ((sub_258A8FBE0() & 1) != 0 || (sub_258A8FBE0()) && (sub_258A8FBE0())
  {
    sub_258A8FBE0();
    sub_258B01084();
    type metadata accessor for MentalHealthUIRepresentative();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v1 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    sub_258B01084();
    type metadata accessor for MentalHealthUIRepresentative();
    v2 = swift_getObjCClassFromMetadata();
    v1 = [objc_opt_self() bundleForClass_];
  }

  v3 = v1;
  return sub_258B01B24();
}

uint64_t sub_258AE41F0(uint64_t a1, uint64_t a2)
{
  sub_258A5B1E4(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AssessmentsSettingsModel();
  sub_258AEAF44(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel, &protocol conformance descriptor for AssessmentsSettingsModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v14 = a1;
  v15 = a2;
  sub_258A155A0(0);
  sub_258A5B2D4();
  sub_258B022A4();
  LOBYTE(a2) = sub_258A8FBE0();
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (a2 & 1) == 0;
  v10 = &v7[*(v5 + 36)];
  *v10 = KeyPath;
  v10[1] = sub_258A5BC78;
  v10[2] = v9;
  v16 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5D48);
  v11 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v11, MEMORY[0x277D83958]);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A5B384();
  sub_258B01DD4();

  return sub_258AEA49C(v7, sub_258A5B1E4);
}

double sub_258AE44C0()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v14 = sub_258AFFD94();
  sub_2589BFF58(v14, v0, v1);
  v2 = sub_258B01B44();
  v4 = v3;
  v6 = v5;
  if (sub_258A8FBE0())
  {
    sub_258B014A4();
  }

  else
  {
    sub_258B014B4();
  }

  v7 = sub_258B01AB4();
  v9 = v8;
  v11 = v10;
  sub_2589BFFAC(v2, v4, v6 & 1);

  sub_2589FC8C8(&unk_2869D5D88);
  v12 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v12, MEMORY[0x277D83958]);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v7, v9, v11 & 1);

  return result;
}

uint64_t sub_258AE4730@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B013D4();
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE5208(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE534C(0);
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE5420(0);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  MEMORY[0x28223BE20](v14);
  v30 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258A8F9D8();
  if (v17 & 1) != 0 || (v17 = sub_258A8F9D8(), (v17))
  {
    v28 = a1;
    MEMORY[0x28223BE20](v17);
    *(&v27 - 2) = v1;
    sub_258AE52B8(0);
    sub_258AEAF44(&qword_27F971678, sub_258AE52B8, MEMORY[0x277CE14C0]);
    sub_258B01A74();
    sub_258B013C4();
    v18 = sub_258AEAF44(&qword_27F971688, sub_258AE5208, MEMORY[0x277CDE5A0]);
    sub_258B01F24();
    (*(v29 + 8))(v5, v3);
    (*(v8 + 8))(v10, v7);
    v39 = *(v1 + 32);
    sub_258AEACD0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    v19 = sub_258B02144();
    MEMORY[0x28223BE20](v19);
    *(&v27 - 2) = v1;
    v35 = v7;
    v36 = v3;
    v37 = v18;
    v38 = MEMORY[0x277CDE0D0];
    swift_getOpaqueTypeConformance2();
    v20 = v30;
    v21 = v32;
    sub_258B01E64();

    (*(v31 + 8))(v13, v21);
    v22 = v33;
    v23 = v28;
    (*(v34 + 32))(v28, v20, v33);
    return (*(v34 + 56))(v23, 0, 1, v22);
  }

  else
  {
    v25 = v33;
    v26 = *(v34 + 56);

    return v26(a1, 1, 1, v25);
  }
}

uint64_t sub_258AE4C4C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v19 = a1[1];
  v20 = v3;
  v22 = a1[2];

  sub_258AE9D08(&v20, &v26, sub_258AE9C74);
  sub_258AE9D08(&v19, &v26, sub_2589DEB08);
  sub_258AEACD0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v4 = v26;
  v5 = v27;
  v18 = v28;
  type metadata accessor for AssessmentsSettingsModel();
  sub_258AEAF44(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel, &protocol conformance descriptor for AssessmentsSettingsModel);
  v6 = sub_258B00A24();
  v8 = v7;
  type metadata accessor for NotificationSettingsModel(0);
  sub_258AEAF44(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
  v9 = sub_258B00A24();
  v11 = v10;
  v12 = sub_258B00A24();
  *&v22 = v6;
  *(&v22 + 1) = v8;
  *&v23 = v9;
  *(&v23 + 1) = v11;
  *&v24 = v4;
  *(&v24 + 1) = v5;
  *(&v25 + 1) = *v21;
  DWORD1(v25) = *&v21[3];
  LOBYTE(v25) = v18;
  *(&v25 + 1) = &unk_2869D5DC8;
  v13 = v22;
  v14 = v23;
  v15 = v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v15;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 64) = v12;
  *(a2 + 72) = v16;
  sub_258A36CE4(&v22, &v26);
  v26 = v6;
  v27 = v8;
  v28 = v9;
  v29 = v11;
  v30 = v4;
  v31 = v5;
  v32 = v18;
  *v33 = *v21;
  *&v33[3] = *&v21[3];
  v34 = &unk_2869D5DC8;
  return sub_258A36D40(&v26);
}

uint64_t sub_258AE4E78@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_258B01F64();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v41 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v40 = v35 - v4;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v5 = sub_258AFFD94();
  v7 = v6;
  v8 = sub_258AFFD94();
  v10 = v9;
  v11 = sub_258AFFD94();
  v13 = v12;
  v14 = sub_258AFFD94();
  v16 = v15;
  v43 = v5;
  v44 = v7;
  sub_2589BFF58(v14, v15, v17);
  v18 = sub_258B01B44();
  v38 = v19;
  v39 = v18;
  v36 = v20;
  v37 = v21;
  v43 = v8;
  v44 = v10;
  v22 = sub_258B01B44();
  v35[2] = v23;
  v35[3] = v22;
  v35[0] = v24 & 1;
  v35[1] = v25;
  v43 = v11;
  v44 = v13;
  v26 = sub_258B01B44();
  v28 = v27;
  LOBYTE(v8) = v29;
  sub_258B01F54();
  sub_2589BFFAC(v26, v28, v8 & 1);

  v43 = v14;
  v44 = v16;
  v30 = sub_258B01B44();
  v32 = v31;
  LOBYTE(v16) = v33;
  sub_258B01F44();
  sub_2589BFFAC(v30, v32, v16 & 1);

  return sub_258B01F34();
}

void sub_258AE5208(uint64_t a1)
{
  if (!qword_27F971660)
  {
    sub_258AE52B8(255);
    sub_258AEAF44(&qword_27F971678, sub_258AE52B8, MEMORY[0x277CE14C0]);
    v1 = sub_258B01A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971660);
    }
  }
}

void sub_258AE52EC()
{
  if (!qword_27F971670)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971670);
    }
  }
}

void sub_258AE534C(uint64_t a1)
{
  if (!qword_27F971680)
  {
    sub_258AE5208(255);
    sub_258B013D4();
    sub_258AEAF44(&qword_27F971688, sub_258AE5208, MEMORY[0x277CDE5A0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971680);
    }
  }
}

void sub_258AE5420(uint64_t a1)
{
  if (!qword_27F971690)
  {
    sub_258AE534C(255);
    sub_258AE5208(255);
    sub_258B013D4();
    sub_258AEAF44(&qword_27F971688, sub_258AE5208, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971690);
    }
  }
}

void *sub_258AE5550(uint64_t a1, uint64_t a2)
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

  sub_258AEACD0(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_258AE563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  a6(0, a3, a4, a5);
  v8 = swift_allocObject();
  v9 = _swift_stdlib_malloc_size(v8);
  result = v8;
  v12 = v9 - 32;
  v11 = v9 < 32;
  v13 = v9 - 25;
  if (!v11)
  {
    v13 = v12;
  }

  v8[2] = a1;
  v8[3] = 2 * (v13 >> 3);
  return result;
}

uint64_t sub_258AE56C4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_258B03514();
  sub_2589C6E40(v3);
  sub_258B02B74();

  v5 = sub_258B03554();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v34 = ~v6;
    v8 = 0xEA0000000000676ELL;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 4)
      {
        if (*(*(v4 + 48) + v7) <= 6u)
        {
          if (v9 == 5)
          {
            v16 = 0x746169636F737341;
            v17 = 0xEC000000736E6F69;
          }

          else
          {
            v16 = 0x616D7269666E6F43;
            v17 = 0xEC0000006E6F6974;
          }
        }

        else if (v9 == 7)
        {
          v16 = 0x6F4C207972746E45;
          v17 = 0xEC00000064656767;
        }

        else if (v9 == 8)
        {
          v17 = 0xEC00000064656C69;
          v16 = 0x6146207972746E45;
        }

        else
        {
          v16 = 0xD000000000000010;
          v17 = 0x8000000258B35BC0;
        }
      }

      else
      {
        v10 = 0xD000000000000013;
        if (v9 == 3)
        {
          v11 = 0xD000000000000010;
        }

        else
        {
          v11 = 0x736C6562614CLL;
        }

        if (v9 == 3)
        {
          v12 = 0x8000000258B35B70;
        }

        else
        {
          v12 = 0xE600000000000000;
        }

        if (v9 == 2)
        {
          v13 = 0x8000000258B35B50;
        }

        else
        {
          v10 = v11;
          v13 = v12;
        }

        v14 = 0xD000000000000017;
        if (*(*(v4 + 48) + v7))
        {
          v14 = 0x696472616F626E4FLL;
          v15 = 0xEA0000000000676ELL;
        }

        else
        {
          v15 = 0x8000000258B35B20;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v10;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }
      }

      v18 = 0xEC00000064656C69;
      v19 = 0x6146207972746E45;
      if (v3 != 8)
      {
        v19 = 0xD000000000000010;
        v18 = 0x8000000258B35BC0;
      }

      if (v3 == 7)
      {
        v19 = 0x6F4C207972746E45;
        v18 = 0xEC00000064656767;
      }

      v20 = 0x746169636F737341;
      if (v3 != 5)
      {
        v20 = 0x616D7269666E6F43;
      }

      v21 = 0xEC000000736E6F69;
      if (v3 != 5)
      {
        v21 = 0xEC0000006E6F6974;
      }

      if (v3 <= 6u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0xD000000000000013;
      if (v3 == 3)
      {
        v23 = 0xD000000000000010;
      }

      else
      {
        v23 = 0x736C6562614CLL;
      }

      if (v3 == 3)
      {
        v24 = 0x8000000258B35B70;
      }

      else
      {
        v24 = 0xE600000000000000;
      }

      if (v3 == 2)
      {
        v25 = 0x8000000258B35B50;
      }

      else
      {
        v22 = v23;
        v25 = v24;
      }

      v26 = 0xD000000000000017;
      if (v3)
      {
        v26 = 0x696472616F626E4FLL;
      }

      else
      {
        v8 = 0x8000000258B35B20;
      }

      if (v3 <= 1u)
      {
        v22 = v26;
        v25 = v8;
      }

      v27 = v3 <= 4u ? v22 : v19;
      v28 = v3 <= 4u ? v25 : v18;
      if (v16 == v27 && v17 == v28)
      {
        break;
      }

      v29 = sub_258B03454();

      if (v29)
      {
        goto LABEL_68;
      }

      v7 = (v7 + 1) & v34;
      v8 = 0xEA0000000000676ELL;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_68:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_66:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v32;
    sub_258AE6AE8(v3, v7, isUniquelyReferenced_nonNull_native);
    *v32 = v35;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_258AE5AB0(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_258B03514();
  MEMORY[0x259C93B20](a2);
  v6 = sub_258B03554();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_258AE6F44(a2, v8, isUniquelyReferenced_nonNull_native, v11);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_258AE5BA8(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_258B03504();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_258AE70A0(a2, v8, isUniquelyReferenced_nonNull_native, v11);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_258AE5C88(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_258B03514();
  sub_258B02B74();

  v5 = sub_258B03554();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v23 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v22 = ~v6;
    v8 = 0xE900000000000073;
    v9 = 0xD000000000000010;
    v24 = v4;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v11 = 0x6574614720656741;
        }

        else
        {
          v11 = 0xD000000000000010;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = 0xEF6F72746E492064;
        }

        else
        {
          v12 = 0x8000000258B35DF0;
        }
      }

      else if (v10 == 2)
      {
        v12 = 0xE500000000000000;
        v11 = 0x6F72746E49;
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x6E6F697473657551;
        }

        else
        {
          v11 = 0x746C75736552;
        }

        if (v10 == 3)
        {
          v12 = 0xE900000000000073;
        }

        else
        {
          v12 = 0xE600000000000000;
        }
      }

      if (v3 == 3)
      {
        v13 = 0x6E6F697473657551;
      }

      else
      {
        v13 = 0x746C75736552;
      }

      if (v3 != 3)
      {
        v8 = 0xE600000000000000;
      }

      if (v3 == 2)
      {
        v13 = 0x6F72746E49;
        v8 = 0xE500000000000000;
      }

      if (v3)
      {
        v9 = 0x6574614720656741;
        v14 = 0xEF6F72746E492064;
      }

      else
      {
        v14 = 0x8000000258B35DF0;
      }

      v15 = v3 <= 1u ? v9 : v13;
      v16 = v3 <= 1u ? v14 : v8;
      if (v11 == v15 && v12 == v16)
      {
        break;
      }

      v17 = sub_258B03454();

      if (v17)
      {
        goto LABEL_40;
      }

      v7 = (v7 + 1) & v22;
      v4 = v24;
      v8 = 0xE900000000000073;
      v9 = 0xD000000000000010;
      if (((*(v23 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    result = 0;
    v3 = *(*(v24 + 48) + v7);
  }

  else
  {
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v20;
    sub_258AE71C0(v3, v7, isUniquelyReferenced_nonNull_native);
    *v20 = v25;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_258AE5F6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_258AEA9C0(0, &qword_27F971768, sub_258AEAA20, &type metadata for StateOfMindLoggingAnalyticsStepType);
  result = sub_258B03174();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_258AE6358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_258AEAEB0(0);
  result = sub_258B03174();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_258B03514();
      MEMORY[0x259C93B20](v17);
      result = sub_258B03554();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_258AE659C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_258AEA918(0, &qword_27F971730, MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  result = sub_258B03174();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_258B03504();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_258AE67D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_258AEA9C0(0, &qword_27F971738, sub_258AEA96C, &type metadata for MentalHealthAssessmentsAnalyticsStepType);
  result = sub_258B03174();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_258AE6AE8(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_74;
  }

  if (a3)
  {
    sub_258AE5F6C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_258AE77D0(&qword_27F971768, sub_258AEAA20, &type metadata for StateOfMindLoggingAnalyticsStepType);
      goto LABEL_74;
    }

    sub_258AE7910(v5 + 1);
  }

  v7 = *v3;
  sub_258B03514();
  sub_2589C6E40(a1);
  sub_258B02B74();

  v8 = sub_258B03554();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v39 = ~v9;
    v10 = 0xEA0000000000676ELL;
    v11 = 0x696472616F626E4FLL;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v12 == 5)
          {
            v18 = 0x746169636F737341;
            v19 = 0xEC000000736E6F69;
          }

          else
          {
            v18 = 0x616D7269666E6F43;
            v19 = 0xEC0000006E6F6974;
          }
        }

        else if (v12 == 7)
        {
          v18 = 0x6F4C207972746E45;
          v19 = 0xEC00000064656767;
        }

        else if (v12 == 8)
        {
          v19 = 0xEC00000064656C69;
          v18 = 0x6146207972746E45;
        }

        else
        {
          v18 = 0xD000000000000010;
          v19 = 0x8000000258B35BC0;
        }
      }

      else
      {
        v13 = 0xD000000000000013;
        if (v12 == 3)
        {
          v14 = 0xD000000000000010;
        }

        else
        {
          v14 = 0x736C6562614CLL;
        }

        if (v12 == 3)
        {
          v15 = 0x8000000258B35B70;
        }

        else
        {
          v15 = 0xE600000000000000;
        }

        if (v12 == 2)
        {
          v16 = 0x8000000258B35B50;
        }

        else
        {
          v13 = v14;
          v16 = v15;
        }

        v17 = 0xD000000000000017;
        if (*(*(v7 + 48) + a2))
        {
          v17 = v11;
        }

        else
        {
          v10 = 0x8000000258B35B20;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v18 = v17;
        }

        else
        {
          v18 = v13;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v19 = v10;
        }

        else
        {
          v19 = v16;
        }
      }

      v20 = 0xEC00000064656C69;
      v21 = 0x6146207972746E45;
      if (a1 != 8)
      {
        v21 = 0xD000000000000010;
        v20 = 0x8000000258B35BC0;
      }

      if (a1 == 7)
      {
        v21 = 0x6F4C207972746E45;
        v20 = 0xEC00000064656767;
      }

      v22 = 0x746169636F737341;
      if (a1 != 5)
      {
        v22 = 0x616D7269666E6F43;
      }

      v23 = 0xEC000000736E6F69;
      if (a1 != 5)
      {
        v23 = 0xEC0000006E6F6974;
      }

      if (a1 <= 6u)
      {
        v21 = v22;
        v20 = v23;
      }

      v24 = 0xD000000000000013;
      if (a1 == 3)
      {
        v25 = 0xD000000000000010;
      }

      else
      {
        v25 = 0x736C6562614CLL;
      }

      if (a1 == 3)
      {
        v26 = 0x8000000258B35B70;
      }

      else
      {
        v26 = 0xE600000000000000;
      }

      if (a1 == 2)
      {
        v27 = 0x8000000258B35B50;
      }

      else
      {
        v24 = v25;
        v27 = v26;
      }

      v28 = 0xD000000000000017;
      v29 = v11;
      if (a1)
      {
        v28 = v11;
      }

      v30 = 0xEA0000000000676ELL;
      if (!a1)
      {
        v30 = 0x8000000258B35B20;
      }

      if (a1 <= 1u)
      {
        v24 = v28;
        v27 = v30;
      }

      v31 = a1 <= 4u ? v24 : v21;
      v32 = a1 <= 4u ? v27 : v20;
      if (v18 == v31 && v19 == v32)
      {
        goto LABEL_77;
      }

      v33 = sub_258B03454();

      if (v33)
      {
        goto LABEL_78;
      }

      a2 = (a2 + 1) & v39;
      v10 = 0xEA0000000000676ELL;
      v11 = v29;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_74:
  v34 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v34 + 48) + a2) = a1;
  v35 = *(v34 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v34 + 16) = v37;
    return;
  }

  __break(1u);
LABEL_77:

LABEL_78:
  sub_258B03474();
  __break(1u);
}

void sub_258AE6F44(uint64_t result, unint64_t a2, char a3, __n128 a4)
{
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_258AE6358(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      sub_258AE7544();
      a2 = v8;
      goto LABEL_12;
    }

    sub_258AE7CCC(v6 + 1);
  }

  v9 = *v4;
  sub_258B03514();
  MEMORY[0x259C93B20](result);
  v10 = sub_258B03554();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for Label(0);
    a2 = v13;
    while (*(*(v9 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = result;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_258B03474();
  __break(1u);
}

uint64_t sub_258AE70A0(uint64_t result, unint64_t a2, char a3, __n128 a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_258AE659C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_258AE7678();
      a2 = v8;
      goto LABEL_12;
    }

    sub_258AE7EE0(v6 + 1);
  }

  v9 = *v4;
  result = sub_258B03504();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + 8 * a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258B03474();
  __break(1u);
  return result;
}

void sub_258AE71C0(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_258AE67D8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_258AE77D0(&qword_27F971738, sub_258AEA96C, &type metadata for MentalHealthAssessmentsAnalyticsStepType);
      goto LABEL_47;
    }

    sub_258AE80E8(v5 + 1);
  }

  v7 = 0xEF6F72746E492064;
  v8 = 0x6574614720656741;
  v9 = *v3;
  sub_258B03514();
  sub_258B02B74();

  v10 = sub_258B03554();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  v35 = v9 + 56;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v11;
    v12 = 0x6E6F697473657551;
    v13 = 0x746C75736552;
    v14 = v9;
    do
    {
      v15 = *(*(v9 + 48) + a2);
      if (v15 <= 1)
      {
        if (*(*(v9 + 48) + a2))
        {
          v16 = v8;
        }

        else
        {
          v16 = 0xD000000000000010;
        }

        if (*(*(v9 + 48) + a2))
        {
          v17 = v7;
        }

        else
        {
          v17 = 0x8000000258B35DF0;
        }
      }

      else if (v15 == 2)
      {
        v17 = 0xE500000000000000;
        v16 = 0x6F72746E49;
      }

      else
      {
        if (v15 == 3)
        {
          v16 = v12;
        }

        else
        {
          v16 = v13;
        }

        if (v15 == 3)
        {
          v17 = 0xE900000000000073;
        }

        else
        {
          v17 = 0xE600000000000000;
        }
      }

      v18 = v12;
      v19 = v13;
      if (a1 == 3)
      {
        v20 = v12;
      }

      else
      {
        v20 = v13;
      }

      v21 = 0xE900000000000073;
      if (a1 != 3)
      {
        v21 = 0xE600000000000000;
      }

      if (a1 == 2)
      {
        v20 = 0x6F72746E49;
        v21 = 0xE500000000000000;
      }

      v22 = 0xD000000000000010;
      if (a1)
      {
        v22 = v8;
      }

      v23 = v7;
      v24 = a1 ? v7 : 0x8000000258B35DF0;
      v25 = a1 <= 1u ? v22 : v20;
      v26 = a1 <= 1u ? v24 : v21;
      v27 = v8;
      if (v16 == v25 && v17 == v26)
      {
        goto LABEL_50;
      }

      v28 = sub_258B03454();

      if (v28)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v34;
      v7 = v23;
      v8 = v27;
      v12 = v18;
      v9 = v14;
      v13 = v19;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = a1;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  sub_258B03474();
  __break(1u);
}

void *sub_258AE7544()
{
  v1 = v0;
  sub_258AEAEB0(0);
  v2 = *v0;
  v3 = sub_258B03164();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_258AE7678()
{
  v1 = v0;
  sub_258AEA918(0, &qword_27F971730, MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_258B03164();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_258AE77D0(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  sub_258AEA9C0(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_258B03164();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    for (i = (v12 + 63) >> 6; v14; *(*(v7 + 48) + v17) = *(*(v5 + 48) + v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

uint64_t sub_258AE7910(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_258AEA9C0(0, &qword_27F971768, sub_258AEAA20, &type metadata for StateOfMindLoggingAnalyticsStepType);
  result = sub_258B03174();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_258AE7CCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_258AEAEB0(0);
  result = sub_258B03174();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_258B03514();
      MEMORY[0x259C93B20](v16);
      result = sub_258B03554();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_258AE7EE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_258AEA918(0, &qword_27F971730, MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  result = sub_258B03174();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_258B03504();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_258AE80E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_258AEA9C0(0, &qword_27F971738, sub_258AEA96C, &type metadata for MentalHealthAssessmentsAnalyticsStepType);
  result = sub_258B03174();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

void sub_258AE83C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258AE9BB4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_258B03404();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_258B02CA4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_258AE84FC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_258AE84FC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_258AE8CC8(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_258AE8A48((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_258A74C78(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = sub_258A74C78((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_258AE8A48((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_258AE8A48(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_258AE8C3C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_258AE8CC8(v3);
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

char *sub_258AE8CDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_258AEACD0(0, &qword_27F970B08, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
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

char *sub_258AE8DF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_258AEACD0(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

char *sub_258AE8F1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258AEAE4C(0, &qword_27F9717A0, type metadata accessor for CGSize, MEMORY[0x277D84560]);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_258AE9044(char *result, int64_t a2, char a3, char *a4)
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
    sub_258AEACD0(0, &qword_27F971798, MEMORY[0x277CDFB90], MEMORY[0x277D84560]);
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
  v15 = 32 * v8;
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

void *sub_258AE915C(void *result, int64_t a2, char a3, void *a4)
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
    sub_258AEAE4C(0, &qword_27F9717A8, sub_258A0AFC8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_258A0AFC8(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258AE92DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_258AEACD0(0, &qword_27F96E3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
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