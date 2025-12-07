uint64_t sub_22BF042A8()
{
  v1 = sub_22BE17BC4();
  v2(v1);
  sub_22BE18000();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22BF042FC()
{
  sub_22BE18378();
  v1(0);
  sub_22BE18000();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

unint64_t sub_22BF04354()
{
  result = qword_27D90A928;
  if (!qword_27D90A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A928);
  }

  return result;
}

uint64_t sub_22BF043A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BF043F0()
{
  sub_22BE18378();
  v1(0);
  sub_22BE18000();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

uint64_t AST.Update.path.getter()
{
  type metadata accessor for AST.Update(0);
}

void AST.Update.path.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for AST.Update(v2) + 20);

  *(v1 + v3) = v0;
}

uint64_t AST.Update.path.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for AST.Update(v0);
  return sub_22BE18504();
}

uint64_t AST.Update.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AST.Update(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AST.Update.kind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AST.Update(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t AST.Update.kind.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for AST.Update(v0);
  return sub_22BE18504();
}

uint64_t AST.Update.value.getter()
{
  type metadata accessor for AST.Update(0);
  sub_22BE17BEC();
  return sub_22BF043F0();
}

uint64_t AST.Update.value.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for AST.Update(v0);
  sub_22BE1897C();
  return sub_22BF07B08();
}

uint64_t AST.Update.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for AST.Update(v0);
  return sub_22BE18504();
}

uint64_t AST.Update.init(lhs:path:kind:value:)@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_22BF042FC();
  v6 = type metadata accessor for AST.Update(0);
  *(a3 + *(v6 + 20)) = a1;
  *(a3 + *(v6 + 24)) = v5;
  return sub_22BF042FC();
}

void static AST.Update.== infix(_:_:)()
{
  sub_22BE18378();
  static AST.FlatValue.== infix(_:_:)();
  if (v2)
  {
    v3 = type metadata accessor for AST.Update(0);
    sub_22BEA22B8();
    if ((v4 & 1) != 0 && *(v1 + *(v3 + 24)) == *(v0 + *(v3 + 24)))
    {

      static AST.FlatValue.== infix(_:_:)();
    }
  }
}

uint64_t sub_22BF04800(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1752457584 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22BF0495C(char a1)
{
  result = 7563372;
  switch(a1)
  {
    case 1:
      result = 1752457584;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BF049CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF04800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF049F4(uint64_t a1)
{
  v2 = sub_22BF07B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF04A30(uint64_t a1)
{
  v2 = sub_22BF07B60();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.Update.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BE19130();
  a25 = v28;
  a26 = v29;
  v30 = v26;
  v32 = v31;
  v33 = sub_22BE5CE4C(&qword_27D90ACE0, &qword_22C288D80);
  sub_22BE179D8();
  v35 = v34;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  v38 = v43 - v37;
  sub_22BE26950(v32, v32[3]);
  sub_22BF07B60();
  sub_22C274234();
  a16 = 0;
  type metadata accessor for AST.FlatValue(0);
  sub_22BE18538();
  sub_22BF043A8(v39, v40, &protocol conformance descriptor for AST.FlatValue);
  sub_22BE239B8(v30, &a16);
  if (!v27)
  {
    v41 = type metadata accessor for AST.Update(0);
    v43[1] = *(v30 + v41[5]);
    sub_22BE33FE4();
    sub_22BE5CE4C(&qword_27D90A9F0, &qword_22C288BA8);
    sub_22BF06C8C();
    sub_22BE27B84();
    sub_22C273FA4();
    a14 = *(v30 + v41[6]);
    a13 = 2;
    sub_22BEBA0B8();
    sub_22C273FA4();
    v42 = v41[7];
    a12 = 3;
    sub_22BE239B8(v30 + v42, &a12);
  }

  (*(v35 + 8))(v38, v33);
  sub_22BE18478();
}

void AST.Update.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_22BE19130();
  v15 = v14;
  v37[3] = v16;
  type metadata accessor for AST.FlatValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v17);
  sub_22BE183AC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  v37[5] = v22;
  v37[6] = sub_22BE5CE4C(&qword_27D90ACF0, &qword_22C288D88);
  sub_22BE179D8();
  v37[4] = v23;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  v26 = v37 - v25;
  v27 = type metadata accessor for AST.Update(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  sub_22BE2BB64();
  v38 = v15;
  v29 = sub_22BE27A44();
  sub_22BE26950(v29, v30);
  sub_22BF07B60();
  v37[7] = v26;
  sub_22C274214();
  if (v12)
  {
    sub_22BE26B64(v38);
  }

  else
  {
    v37[2] = v20;
    v31 = v13;
    sub_22BE18538();
    v34 = sub_22BF043A8(v32, v33, &protocol conformance descriptor for AST.FlatValue);
    sub_22BE38608();
    sub_22C273EB4();
    v37[1] = v34;
    sub_22BE1897C();
    sub_22BE18240();
    sub_22BF042FC();
    sub_22BE5CE4C(&qword_27D90A9F0, &qword_22C288BA8);
    sub_22BE33FE4();
    sub_22BF06FD8();
    sub_22BE27B84();
    sub_22C273EB4();
    *(v31 + *(v27 + 20)) = v39;
    sub_22BEBA10C();
    sub_22BE3788C();
    sub_22C273EB4();
    *(v31 + *(v27 + 24)) = a12;
    sub_22BE38608();
    sub_22C273EB4();
    v35 = sub_22BE378B0();
    v36(v35);
    sub_22BE1897C();
    sub_22BF042FC();
    sub_22BF0AED0();
    sub_22BF043F0();
    sub_22BE26B64(v38);
    sub_22BE3E2D0();
    sub_22BF042A8();
  }

  sub_22BE18478();
}

uint64_t sub_22BF05024()
{
  v0 = sub_22BE5CE4C(&qword_27D90AD00, &qword_22C288D98);
  sub_22BE952A4(v0, qword_27D90A8D0);
  sub_22BE199F4(v0, qword_27D90A8D0);
  return sub_22C2702C4();
}

BOOL static PiranaHelper.isPiranaVariable(_:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_22BE5CE4C(&qword_27D90ACF8, &qword_22C288D90);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B72C();
  if (qword_27D906360 != -1)
  {
    swift_once();
  }

  v7 = sub_22BE5CE4C(&qword_27D90AD00, &qword_22C288D98);
  v8 = sub_22BE199F4(v7, qword_27D90A8D0);
  sub_22BF052C8(v8, a1, a2);
  v9 = sub_22BE5CE4C(&qword_27D90AD08, &qword_22C288DA0);
  v10 = sub_22BE1AEA8(v2, 1, v9) != 1;
  sub_22BE33928(v2, &qword_27D90ACF8, &qword_22C288D90);
  return v10;
}

void sub_22BF051B4()
{
  sub_22BE19460();
  sub_22BE40BE0();
  v1 = sub_22BE1AEE4();
  sub_22BE5CE4C(v1, v2);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE25CD0();
  v4 = sub_22BE25444(&qword_27D90B108);
  sub_22BE1BC4C(v4);
  sub_22BE37350();
  if (v0)
  {

    v5 = sub_22BE2034C();
    v6(v5);
    sub_22BE5CE4C(&qword_27D90B110, &qword_22C28B538);
    v7 = sub_22BE3116C();
    sub_22BE19DC4(v7, v8, v9, v10);
  }

  else
  {
    v11 = sub_22BE2034C();
    v12(v11);
  }

  sub_22BE1AABC();
}

double sub_22BF052C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_22BE5CE4C(&qword_27D90AD00, &qword_22C288D98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_22BEF8A28(&qword_27D90B0F8, &qword_27D90AD00, &qword_22C288D98, MEMORY[0x277D85AC0]);
  sub_22C2702B4();
  sub_22BF06EE8(sub_22BF06EE4, 0, a2, a3);
  sub_22C2702D4();
  (*(v6 + 8))(v8, v5);

  return result;
}

void sub_22BF05490()
{
  sub_22BE19460();
  sub_22BE40BE0();
  v1 = sub_22BE1AEE4();
  sub_22BE5CE4C(v1, v2);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE25CD0();
  v4 = sub_22BE25444(&qword_27D90B0E8);
  sub_22BE1BC4C(v4);
  sub_22BE37350();
  if (v0)
  {

    v5 = sub_22BE2034C();
    v6(v5);
    sub_22BE5CE4C(&qword_27D90B0F0, &unk_22C2B6000);
    v7 = sub_22BE3116C();
    sub_22BE19DC4(v7, v8, v9, v10);
  }

  else
  {
    v11 = sub_22BE2034C();
    v12(v11);
  }

  sub_22BE1AABC();
}

void sub_22BF055A4()
{
  sub_22BE19460();
  sub_22BE40BE0();
  v1 = sub_22BE1AEE4();
  sub_22BE5CE4C(v1, v2);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE25CD0();
  v4 = sub_22BE25444(&qword_27D90B0D0);
  sub_22BE1BC4C(v4);
  sub_22BE37350();
  if (v0)
  {

    v5 = sub_22BE2034C();
    v6(v5);
    sub_22BE5CE4C(&qword_27D90B0D8, &qword_22C28B518);
    v7 = sub_22BE3116C();
    sub_22BE19DC4(v7, v8, v9, v10);
  }

  else
  {
    v11 = sub_22BE2034C();
    v12(v11);
  }

  sub_22BE1AABC();
}

void sub_22BF056B8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22C273FC4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BF05A7C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22BF05800(0, v2, 1, a1);
  }
}

void sub_22BF05800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  MEMORY[0x28223BE20](v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v25 - v10);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - v14);
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v32 = v16;
    v26 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v30 = v18;
      v31 = a3;
      v28 = v21;
      v29 = v20;
      while (1)
      {
        sub_22BE22868();
        sub_22BE22868();
        if (*v15 == *v11 && v15[1] == v11[1])
        {
          break;
        }

        v23 = sub_22C274014();
        sub_22BE33928(v11, &unk_27D907790, &unk_22C27FE90);
        sub_22BE33928(v15, &unk_27D907790, &unk_22C27FE90);
        if (v23)
        {
          if (!v32)
          {
            __break(1u);
            return;
          }

          sub_22BEBFD18();
          swift_arrayInitWithTakeFrontToBack();
          sub_22BEBFD18();
          v18 += v19;
          v21 += v19;
          if (!__CFADD__(v20++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_22BE33928(v11, &unk_27D907790, &unk_22C27FE90);
      sub_22BE33928(v15, &unk_27D907790, &unk_22C27FE90);
LABEL_14:
      a3 = v31 + 1;
      v18 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_22BF05A7C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v119 = a1;
  v134 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  v126 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v122 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = &v113 - v8;
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v130 = (&v113 - v12);
  MEMORY[0x28223BE20](v13);
  v129 = (&v113 - v14);
  MEMORY[0x28223BE20](v15);
  v118 = (&v113 - v16);
  MEMORY[0x28223BE20](v17);
  v117 = (&v113 - v23);
  v128 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_115:
    a4 = *v119;
    if (!*v119)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_117:
      v106 = (v26 + 16);
      for (i = *(v26 + 16); i >= 2; *v106 = i)
      {
        if (!*v128)
        {
          goto LABEL_152;
        }

        v108 = (v26 + 16 * i);
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = *(v110 + 1);
        v112 = v131;
        sub_22BF06498(*v128 + *(v126 + 72) * *v108, *v128 + *(v126 + 72) * *v110, *v128 + *(v126 + 72) * v111, a4);
        v131 = v112;
        if (v112)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_140;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_141;
        }

        *v108 = v109;
        v108[1] = v111;
        v18 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_142;
        }

        i = *v106 - 1;
        sub_22C115E84(v110 + 16, v18, v110);
      }

LABEL_113:

      return;
    }

LABEL_149:
    v26 = sub_22C115CA4(v26, v18, v19, v20);
    goto LABEL_117;
  }

  v135 = v22;
  v136 = v21;
  v114 = a4;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v124 = v24;
      v29 = *v128;
      v30 = *(v126 + 72);
      v31 = v25 + 1;
      v32 = v117;
      sub_22BE22868();
      v127 = v30;
      v33 = v118;
      sub_22BE22868();
      if (*v32 == *v33 && v32[1] == v33[1])
      {
        LODWORD(v125) = 0;
      }

      else
      {
        LODWORD(v125) = sub_22C274014();
      }

      v115 = v26;
      sub_22BE33928(v118, &unk_27D907790, &unk_22C27FE90);
      sub_22BE33928(v117, &unk_27D907790, &unk_22C27FE90);
      v116 = v27;
      v35 = v27 + 2;
      v36 = v127 * (v27 + 2);
      v37 = v29 + v36;
      v38 = v127 * v31;
      v39 = v29 + v127 * v31;
      v40 = v31;
      do
      {
        v41 = v35;
        v42 = v40;
        v26 = v38;
        a4 = v36;
        if (v35 >= v124)
        {
          break;
        }

        v132 = v35;
        v43 = v129;
        sub_22BE22868();
        v44 = v130;
        sub_22BE22868();
        v45 = *v43 == *v44 && v43[1] == v44[1];
        v46 = v45 ? 0 : sub_22C274014();
        sub_22BE33928(v130, &unk_27D907790, &unk_22C27FE90);
        sub_22BE33928(v129, &unk_27D907790, &unk_22C27FE90);
        v41 = v132;
        v35 = v132 + 1;
        v37 += v127;
        v39 += v127;
        v40 = v42 + 1;
        v38 = v26 + v127;
        v36 = a4 + v127;
      }

      while (((v125 ^ v46) & 1) == 0);
      if (v125)
      {
        v27 = v116;
        if (v41 < v116)
        {
          goto LABEL_146;
        }

        if (v116 >= v41)
        {
          v28 = v41;
          v26 = v115;
          goto LABEL_39;
        }

        v47 = v116 * v127;
        do
        {
          if (v27 != v42)
          {
            v48 = *v128;
            if (!*v128)
            {
              goto LABEL_153;
            }

            sub_22BEBFD18();
            v49 = v47 < v26 || v48 + v47 >= (v48 + a4);
            if (v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22BEBFD18();
          }

          ++v27;
          v26 -= v127;
          a4 -= v127;
          v47 += v127;
        }

        while (v27 < v42--);
        v28 = v41;
        v26 = v115;
      }

      else
      {
        v28 = v41;
        v26 = v115;
      }

      v27 = v116;
    }

LABEL_39:
    v51 = v128[1];
    v127 = v28;
    if (v28 < v51)
    {
      v79 = __OFSUB__(v28, v27);
      v52 = v28 - v27;
      if (v79)
      {
        goto LABEL_145;
      }

      if (v52 < v114)
      {
        break;
      }
    }

LABEL_62:
    if (v127 < v27)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE6614C();
      v26 = v104;
    }

    a4 = *(v26 + 16);
    v62 = a4 + 1;
    if (a4 >= *(v26 + 24) >> 1)
    {
      sub_22BE6614C();
      v26 = v105;
    }

    *(v26 + 16) = v62;
    v63 = v26 + 32;
    v64 = (v26 + 32 + 16 * a4);
    v65 = v127;
    *v64 = v27;
    v64[1] = v65;
    v66 = *v119;
    if (!*v119)
    {
      goto LABEL_154;
    }

    if (a4)
    {
      while (1)
      {
        a4 = v62 - 1;
        v67 = (v63 + 16 * (v62 - 1));
        v68 = (v26 + 16 * v62);
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v69 = *(v26 + 32);
          v70 = *(v26 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_82:
          if (v72)
          {
            goto LABEL_131;
          }

          v84 = *v68;
          v83 = v68[1];
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_134;
          }

          v88 = v67[1];
          v89 = v88 - *v67;
          if (__OFSUB__(v88, *v67))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v86, v89))
          {
            goto LABEL_139;
          }

          if (v86 + v89 >= v71)
          {
            if (v71 < v89)
            {
              a4 = v62 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v62 < 2)
        {
          goto LABEL_133;
        }

        v91 = *v68;
        v90 = v68[1];
        v79 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        v87 = v79;
LABEL_97:
        if (v87)
        {
          goto LABEL_136;
        }

        v93 = *v67;
        v92 = v67[1];
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_138;
        }

        if (v94 < v86)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (a4 - 1 >= v62)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v128)
        {
          goto LABEL_151;
        }

        v98 = v26;
        v99 = (v63 + 16 * (a4 - 1));
        v100 = *v99;
        v101 = v63 + 16 * a4;
        v26 = *(v101 + 8);
        v102 = v131;
        sub_22BF06498(*v128 + *(v126 + 72) * *v99, *v128 + *(v126 + 72) * *v101, *v128 + *(v126 + 72) * v26, v66);
        v131 = v102;
        if (v102)
        {
          goto LABEL_113;
        }

        if (v26 < v100)
        {
          goto LABEL_126;
        }

        v103 = *(v98 + 16);
        if (a4 > v103)
        {
          goto LABEL_127;
        }

        *v99 = v100;
        v99[1] = v26;
        if (a4 >= v103)
        {
          goto LABEL_128;
        }

        v62 = v103 - 1;
        sub_22C115E84((v101 + 16), v103 - 1 - a4, (v63 + 16 * a4));
        v26 = v98;
        *(v98 + 16) = v103 - 1;
        if (v103 <= 2)
        {
          goto LABEL_111;
        }
      }

      v73 = v63 + 16 * v62;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_129;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_130;
      }

      v80 = v68[1];
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_132;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_135;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = v67[1];
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_143;
        }

        if (v71 < v97)
        {
          a4 = v62 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v25 = v127;
    v24 = v128[1];
    if (v127 >= v24)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v27, v114))
  {
    goto LABEL_147;
  }

  if (v27 + v114 >= v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = v27 + v114;
  }

  if (v53 < v27)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v127 == v53)
  {
    goto LABEL_62;
  }

  v115 = v26;
  v116 = v27;
  v54 = *(v126 + 72);
  v55 = *v128 + v54 * (v127 - 1);
  a4 = -v54;
  v56 = v27 - v127;
  v132 = *v128;
  v120 = v54;
  v121 = v53;
  v57 = v132 + v127 * v54;
LABEL_49:
  v123 = v57;
  v124 = v56;
  v125 = v55;
  while (1)
  {
    v58 = v135;
    sub_22BE22868();
    v59 = v136;
    sub_22BE22868();
    if (*v58 == *v59 && v58[1] == v59[1])
    {
      sub_22BE33928(v59, &unk_27D907790, &unk_22C27FE90);
      sub_22BE33928(v58, &unk_27D907790, &unk_22C27FE90);
LABEL_60:
      v55 = v125 + v120;
      v56 = v124 - 1;
      v57 = v123 + v120;
      if (++v127 == v121)
      {
        v127 = v121;
        v26 = v115;
        v27 = v116;
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    v61 = sub_22C274014();
    sub_22BE33928(v59, &unk_27D907790, &unk_22C27FE90);
    sub_22BE33928(v58, &unk_27D907790, &unk_22C27FE90);
    if ((v61 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (!v132)
    {
      break;
    }

    sub_22BEBFD18();
    swift_arrayInitWithTakeFrontToBack();
    sub_22BEBFD18();
    v55 += a4;
    v57 += a4;
    v49 = __CFADD__(v56++, 1);
    if (v49)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

void sub_22BF06498(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  MEMORY[0x28223BE20](v62);
  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = (&v53 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v53 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v53 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_72;
  }

  v21 = a2;
  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v24 = v19 / v18;
  v65 = a1;
  v64 = a4;
  v25 = v22 / v18;
  if (v19 / v18 < v22 / v18)
  {
    v26 = v21;
    sub_22BE67CF0(a1, v19 / v18, a4);
    v27 = v26;
    v61 = a4 + v24 * v18;
    v63 = v61;
    v59 = a3;
    while (1)
    {
      if (a4 >= v61 || v27 >= a3)
      {
        goto LABEL_70;
      }

      v29 = v27;
      sub_22BE22868();
      sub_22BE22868();
      if (*v16 == *v13 && v16[1] == v13[1])
      {
        sub_22BE33928(v13, &unk_27D907790, &unk_22C27FE90);
        sub_22BE33928(v16, &unk_27D907790, &unk_22C27FE90);
      }

      else
      {
        v31 = sub_22C274014();
        sub_22BE33928(v13, &unk_27D907790, &unk_22C27FE90);
        sub_22BE33928(v16, &unk_27D907790, &unk_22C27FE90);
        if (v31)
        {
          v32 = v29;
          v33 = v29 + v18;
          if (a1 < v29 || a1 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v29 + v18;
            a3 = v59;
          }

          else
          {
            a3 = v59;
            if (a1 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v27 = v33;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v64 = a4 + v18;
      a4 += v18;
      v27 = v29;
      a3 = v59;
LABEL_37:
      a1 += v18;
      v65 = a1;
    }
  }

  v36 = v21;
  sub_22BE67CF0(v21, v22 / v18, a4);
  v37 = v36;
  v38 = a4 + v25 * v18;
  v39 = -v18;
  v40 = v38;
  v58 = -v18;
  v55 = a4;
LABEL_42:
  v41 = a3;
  v42 = v40;
  v59 = v37;
  v56 = v40;
  v57 = v37 + v39;
  while (1)
  {
    if (v38 <= a4)
    {
      v65 = v37;
      v63 = v42;
      goto LABEL_70;
    }

    if (v37 <= a1)
    {
      break;
    }

    v54 = v42;
    v43 = v58;
    v44 = v38 + v58;
    v45 = v60;
    sub_22BE22868();
    v46 = v61;
    sub_22BE22868();
    if (*v45 == *v46 && v45[1] == v46[1])
    {
      v48 = 0;
    }

    else
    {
      v48 = sub_22C274014();
    }

    a3 = v41 + v43;
    sub_22BE33928(v61, &unk_27D907790, &unk_22C27FE90);
    sub_22BE33928(v60, &unk_27D907790, &unk_22C27FE90);
    if (v48)
    {
      v50 = v41 < v59 || a3 >= v59;
      a4 = v55;
      if (v50)
      {
        v51 = v57;
        swift_arrayInitWithTakeFrontToBack();
        v37 = v51;
        v40 = v54;
        v39 = v58;
      }

      else
      {
        v40 = v54;
        v52 = v57;
        v39 = v58;
        v37 = v57;
        if (v41 != v59)
        {
          v40 = v54;
          swift_arrayInitWithTakeBackToFront();
          v37 = v52;
        }
      }

      goto LABEL_42;
    }

    v49 = v41 < v38 || a3 >= v38;
    a4 = v55;
    if (v49)
    {
      swift_arrayInitWithTakeFrontToBack();
      v41 = a3;
      v38 = v44;
      v42 = v44;
      v37 = v59;
      v40 = v56;
    }

    else
    {
      v42 = v44;
      v20 = v38 == v41;
      v41 = a3;
      v38 = v44;
      v37 = v59;
      v40 = v56;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v37 = v59;
        v41 = a3;
        v38 = v44;
        v42 = v44;
      }
    }
  }

  v65 = v37;
  v63 = v40;
LABEL_70:
  sub_22C115CBC(&v65, &v64, &v63);
}

unint64_t sub_22BF069D8()
{
  result = qword_27D90A9A8;
  if (!qword_27D90A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9A8);
  }

  return result;
}

unint64_t sub_22BF06A2C()
{
  result = qword_27D90A9B0;
  if (!qword_27D90A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9B0);
  }

  return result;
}

unint64_t sub_22BF06A80()
{
  result = qword_27D90A9B8;
  if (!qword_27D90A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9B8);
  }

  return result;
}

unint64_t sub_22BF06AD4()
{
  result = qword_27D90A9C0;
  if (!qword_27D90A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9C0);
  }

  return result;
}

unint64_t sub_22BF06B28()
{
  result = qword_27D90A9C8;
  if (!qword_27D90A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9C8);
  }

  return result;
}

unint64_t sub_22BF06B7C()
{
  result = qword_27D90A9D8;
  if (!qword_27D90A9D8)
  {
    sub_22BE7431C(&qword_27D90A9D0, &qword_22C288BA0);
    sub_22BF043A8(&qword_27D90A9E0, type metadata accessor for AST.FlatValue, &protocol conformance descriptor for AST.FlatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9D8);
  }

  return result;
}

unint64_t sub_22BF06C38()
{
  result = qword_27D90A9E8;
  if (!qword_27D90A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9E8);
  }

  return result;
}

unint64_t sub_22BF06C8C()
{
  result = qword_27D90A9F8;
  if (!qword_27D90A9F8)
  {
    sub_22BE7431C(&qword_27D90A9F0, &qword_22C288BA8);
    sub_22BF043A8(&qword_27D90A9E0, type metadata accessor for AST.FlatValue, &protocol conformance descriptor for AST.FlatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A9F8);
  }

  return result;
}

unint64_t sub_22BF06D40()
{
  result = qword_27D90AA00;
  if (!qword_27D90AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA00);
  }

  return result;
}

unint64_t sub_22BF06D94()
{
  result = qword_27D90AA08;
  if (!qword_27D90AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA08);
  }

  return result;
}

unint64_t sub_22BF06DE8()
{
  result = qword_27D90AA10;
  if (!qword_27D90AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA10);
  }

  return result;
}

unint64_t sub_22BF06E3C()
{
  result = qword_27D90AA18;
  if (!qword_27D90AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA18);
  }

  return result;
}

unint64_t sub_22BF06E90()
{
  result = qword_27D90AA20;
  if (!qword_27D90AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA20);
  }

  return result;
}

unint64_t sub_22BF06F1C()
{
  result = qword_27D90AA80;
  if (!qword_27D90AA80)
  {
    sub_22BE7431C(&qword_27D90A9D0, &qword_22C288BA0);
    sub_22BF043A8(&qword_27D90AA88, type metadata accessor for AST.FlatValue, &protocol conformance descriptor for AST.FlatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA80);
  }

  return result;
}

unint64_t sub_22BF06FD8()
{
  result = qword_27D90AA90;
  if (!qword_27D90AA90)
  {
    sub_22BE7431C(&qword_27D90A9F0, &qword_22C288BA8);
    sub_22BF043A8(&qword_27D90AA88, type metadata accessor for AST.FlatValue, &protocol conformance descriptor for AST.FlatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AA90);
  }

  return result;
}

unint64_t sub_22BF070AC()
{
  result = qword_27D90AB40;
  if (!qword_27D90AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB40);
  }

  return result;
}

unint64_t sub_22BF07100()
{
  result = qword_27D90AB48;
  if (!qword_27D90AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB48);
  }

  return result;
}

unint64_t sub_22BF07154()
{
  result = qword_27D90AB50;
  if (!qword_27D90AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB50);
  }

  return result;
}

unint64_t sub_22BF071A8()
{
  result = qword_27D90AB58;
  if (!qword_27D90AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB58);
  }

  return result;
}

unint64_t sub_22BF071FC()
{
  result = qword_27D90AB60;
  if (!qword_27D90AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB60);
  }

  return result;
}

unint64_t sub_22BF07250()
{
  result = qword_27D90AB68;
  if (!qword_27D90AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB68);
  }

  return result;
}

unint64_t sub_22BF072A4()
{
  result = qword_27D90AB70;
  if (!qword_27D90AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB70);
  }

  return result;
}

unint64_t sub_22BF072F8()
{
  result = qword_27D90AB78;
  if (!qword_27D90AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB78);
  }

  return result;
}

unint64_t sub_22BF0734C()
{
  result = qword_27D90AB80;
  if (!qword_27D90AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB80);
  }

  return result;
}

unint64_t sub_22BF073A0()
{
  result = qword_27D90AB88;
  if (!qword_27D90AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB88);
  }

  return result;
}

unint64_t sub_22BF073F4()
{
  result = qword_27D90AB90;
  if (!qword_27D90AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB90);
  }

  return result;
}

unint64_t sub_22BF07448()
{
  result = qword_27D90AB98;
  if (!qword_27D90AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AB98);
  }

  return result;
}

unint64_t sub_22BF0749C()
{
  result = qword_27D90ABA0;
  if (!qword_27D90ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABA0);
  }

  return result;
}

unint64_t sub_22BF074F0()
{
  result = qword_27D90ABA8;
  if (!qword_27D90ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABA8);
  }

  return result;
}

unint64_t sub_22BF07544()
{
  result = qword_27D90ABB0;
  if (!qword_27D90ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABB0);
  }

  return result;
}

unint64_t sub_22BF07598()
{
  result = qword_27D90ABC0;
  if (!qword_27D90ABC0)
  {
    sub_22BE7431C(&qword_27D90ABB8, &qword_22C288CC8);
    sub_22BF043A8(&qword_28107F328, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABC0);
  }

  return result;
}

unint64_t sub_22BF0764C()
{
  result = qword_27D90ABC8;
  if (!qword_27D90ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABC8);
  }

  return result;
}

unint64_t sub_22BF076A0()
{
  result = qword_27D90ABD0;
  if (!qword_27D90ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABD0);
  }

  return result;
}

unint64_t sub_22BF076F4()
{
  result = qword_27D90ABE0;
  if (!qword_27D90ABE0)
  {
    sub_22BE7431C(&qword_27D90ABD8, &qword_22C288CD0);
    sub_22BF043A8(&qword_27D90ABE8, type metadata accessor for AST.Update, &protocol conformance descriptor for AST.Update);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABE0);
  }

  return result;
}

unint64_t sub_22BF077A8()
{
  result = qword_27D90ABF0;
  if (!qword_27D90ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABF0);
  }

  return result;
}

unint64_t sub_22BF077FC()
{
  result = qword_27D90ABF8;
  if (!qword_27D90ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ABF8);
  }

  return result;
}

unint64_t sub_22BF07850()
{
  result = qword_27D90AC00;
  if (!qword_27D90AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AC00);
  }

  return result;
}

unint64_t sub_22BF078A4()
{
  result = qword_27D90AC08;
  if (!qword_27D90AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AC08);
  }

  return result;
}

unint64_t sub_22BF078F8()
{
  result = qword_27D90AC10;
  if (!qword_27D90AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AC10);
  }

  return result;
}

unint64_t sub_22BF0794C()
{
  result = qword_27D90ACC0;
  if (!qword_27D90ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ACC0);
  }

  return result;
}

unint64_t sub_22BF079A0()
{
  result = qword_27D90ACC8;
  if (!qword_27D90ACC8)
  {
    sub_22BE7431C(&qword_27D90ABB8, &qword_22C288CC8);
    sub_22BF043A8(&qword_27D907F58, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ACC8);
  }

  return result;
}

unint64_t sub_22BF07A54()
{
  result = qword_27D90ACD0;
  if (!qword_27D90ACD0)
  {
    sub_22BE7431C(&qword_27D90ABD8, &qword_22C288CD0);
    sub_22BF043A8(&qword_27D90ACD8, type metadata accessor for AST.Update, &protocol conformance descriptor for AST.Update);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ACD0);
  }

  return result;
}

uint64_t sub_22BF07B08()
{
  sub_22BE18378();
  v1(0);
  sub_22BE18000();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

unint64_t sub_22BF07B60()
{
  result = qword_27D90ACE8;
  if (!qword_27D90ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ACE8);
  }

  return result;
}

uint64_t sub_22BF07C24(uint64_t a1)
{
  result = type metadata accessor for AST.FlatExpr(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BF07CA0(uint64_t a1)
{
  sub_22BF081CC(319, &qword_27D90AD28, type metadata accessor for AST.FlatValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22BF07D94(319);
    if (v2 <= 0x3F)
    {
      sub_22C26E684();
      if (v3 <= 0x3F)
      {
        sub_22C26E1D4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_22BF07D94(uint64_t a1)
{
  if (!qword_27D90AD30)
  {
    type metadata accessor for AST.FlatValue(255);
    v1 = sub_22C272EC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D90AD30);
    }
  }
}

uint64_t sub_22BF07DFC(uint64_t a1)
{
  v1 = type metadata accessor for AST.FlatValue(319);
  if (v2 <= 0x3F)
  {
    sub_22BF08090(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_22BF080F8(319);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_22BF082A8(319, &qword_27D90AD58, type metadata accessor for AST.FlatValue, MEMORY[0x277D837D0], "lhs index ");
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_22BF08164(319);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_22BF081CC(319, &qword_27D90AD68, type metadata accessor for AST.Update, MEMORY[0x277D83940]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_22BF08230(319);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_22BF083E4(319, &qword_27D90AD78, &qword_27D90AD80, MEMORY[0x277D83940]);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  sub_22BF082A8(319, &qword_27D90AD88, MEMORY[0x277CC95F0], &type metadata for AST.PickType, "eventId type ");
                  v1 = v17;
                  if (v18 <= 0x3F)
                  {
                    sub_22BF08398(319, &qword_27D90AD90, MEMORY[0x277CC95F0]);
                    v1 = v19;
                    if (v20 <= 0x3F)
                    {
                      sub_22BF08318(319);
                      if (v22 > 0x3F)
                      {
                        return v21;
                      }

                      sub_22BF08398(319, &qword_27D90ADA0, sub_22BE929D0);
                      if (v23 > 0x3F)
                      {
                        return v21;
                      }

                      sub_22BF083E4(319, &qword_27D90ADA8, &qword_28107F318, MEMORY[0x277D83D88]);
                      if (v24 > 0x3F)
                      {
                        return v21;
                      }

                      else
                      {
                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                        return 0;
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

  return v1;
}

void sub_22BF08090(uint64_t a1)
{
  if (!qword_27D90AD48)
  {
    type metadata accessor for AST.FlatValue(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D90AD48);
    }
  }
}

void sub_22BF080F8(uint64_t a1)
{
  if (!qword_27D90AD50)
  {
    type metadata accessor for AST.FlatValue(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D90AD50);
    }
  }
}

void sub_22BF08164(uint64_t a1)
{
  if (!qword_27D90AD60)
  {
    type metadata accessor for AST.FlatValue(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D90AD60);
    }
  }
}

void sub_22BF081CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BF08230(uint64_t a1)
{
  if (!qword_27D90AD70)
  {
    sub_22BE7431C(&qword_27D90A9D0, &qword_22C288BA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D90AD70);
    }
  }
}

void sub_22BF082A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_22BF08318(uint64_t a1)
{
  if (!qword_27D90AD98)
  {
    sub_22BE7431C(&qword_27D9072A8, &qword_22C275110);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D90AD98);
    }
  }
}

void sub_22BF08398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22BF083E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22BF081CC(0, a3, MEMORY[0x277CC95F0], a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22BF0846C(uint64_t a1)
{
  v1 = type metadata accessor for AST.FlatValue(319);
  if (v2 <= 0x3F)
  {
    sub_22BF081CC(319, &qword_27D90AD28, type metadata accessor for AST.FlatValue, MEMORY[0x277D83940]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

_BYTE *_s6UpdateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t _s8FlatExprO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8FlatExprO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BF08834(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t _s9FlatValueO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s9FlatValueO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BF08B90(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_22BF08C3C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BF08D18()
{
  result = qword_27D90ADC0;
  if (!qword_27D90ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADC0);
  }

  return result;
}

unint64_t sub_22BF08D70()
{
  result = qword_27D90ADC8;
  if (!qword_27D90ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADC8);
  }

  return result;
}

unint64_t sub_22BF08DC8()
{
  result = qword_27D90ADD0;
  if (!qword_27D90ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADD0);
  }

  return result;
}

unint64_t sub_22BF08E20()
{
  result = qword_27D90ADD8;
  if (!qword_27D90ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADD8);
  }

  return result;
}

unint64_t sub_22BF08E78()
{
  result = qword_27D90ADE0;
  if (!qword_27D90ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADE0);
  }

  return result;
}

unint64_t sub_22BF08ED0()
{
  result = qword_27D90ADE8;
  if (!qword_27D90ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADE8);
  }

  return result;
}

unint64_t sub_22BF08F28()
{
  result = qword_27D90ADF0;
  if (!qword_27D90ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADF0);
  }

  return result;
}

unint64_t sub_22BF08F80()
{
  result = qword_27D90ADF8;
  if (!qword_27D90ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90ADF8);
  }

  return result;
}

unint64_t sub_22BF08FD8()
{
  result = qword_27D90AE00;
  if (!qword_27D90AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE00);
  }

  return result;
}

unint64_t sub_22BF09030()
{
  result = qword_27D90AE08;
  if (!qword_27D90AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE08);
  }

  return result;
}

unint64_t sub_22BF09088()
{
  result = qword_27D90AE10;
  if (!qword_27D90AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE10);
  }

  return result;
}

unint64_t sub_22BF090E0()
{
  result = qword_27D90AE18;
  if (!qword_27D90AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE18);
  }

  return result;
}

unint64_t sub_22BF09138()
{
  result = qword_27D90AE20;
  if (!qword_27D90AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE20);
  }

  return result;
}

unint64_t sub_22BF09190()
{
  result = qword_27D90AE28;
  if (!qword_27D90AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE28);
  }

  return result;
}

unint64_t sub_22BF091E8()
{
  result = qword_27D90AE30;
  if (!qword_27D90AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE30);
  }

  return result;
}

unint64_t sub_22BF09240()
{
  result = qword_27D90AE38;
  if (!qword_27D90AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE38);
  }

  return result;
}

unint64_t sub_22BF09298()
{
  result = qword_27D90AE40;
  if (!qword_27D90AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE40);
  }

  return result;
}

unint64_t sub_22BF092F0()
{
  result = qword_27D90AE48;
  if (!qword_27D90AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE48);
  }

  return result;
}

unint64_t sub_22BF09348()
{
  result = qword_27D90AE50;
  if (!qword_27D90AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE50);
  }

  return result;
}

unint64_t sub_22BF093A0()
{
  result = qword_27D90AE58;
  if (!qword_27D90AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE58);
  }

  return result;
}

unint64_t sub_22BF093F8()
{
  result = qword_27D90AE60;
  if (!qword_27D90AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE60);
  }

  return result;
}

unint64_t sub_22BF09450()
{
  result = qword_27D90AE68;
  if (!qword_27D90AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE68);
  }

  return result;
}

unint64_t sub_22BF094A8()
{
  result = qword_27D90AE70;
  if (!qword_27D90AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE70);
  }

  return result;
}

unint64_t sub_22BF09500()
{
  result = qword_27D90AE78;
  if (!qword_27D90AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE78);
  }

  return result;
}

unint64_t sub_22BF09558()
{
  result = qword_27D90AE80;
  if (!qword_27D90AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE80);
  }

  return result;
}

unint64_t sub_22BF095B0()
{
  result = qword_27D90AE88;
  if (!qword_27D90AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE88);
  }

  return result;
}

unint64_t sub_22BF09608()
{
  result = qword_27D90AE90;
  if (!qword_27D90AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE90);
  }

  return result;
}

unint64_t sub_22BF09660()
{
  result = qword_27D90AE98;
  if (!qword_27D90AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AE98);
  }

  return result;
}

unint64_t sub_22BF096B8()
{
  result = qword_27D90AEA0;
  if (!qword_27D90AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEA0);
  }

  return result;
}

unint64_t sub_22BF09710()
{
  result = qword_27D90AEA8;
  if (!qword_27D90AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEA8);
  }

  return result;
}

unint64_t sub_22BF09768()
{
  result = qword_27D90AEB0;
  if (!qword_27D90AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEB0);
  }

  return result;
}

unint64_t sub_22BF097C0()
{
  result = qword_27D90AEB8;
  if (!qword_27D90AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEB8);
  }

  return result;
}

unint64_t sub_22BF09818()
{
  result = qword_27D90AEC0;
  if (!qword_27D90AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEC0);
  }

  return result;
}

unint64_t sub_22BF09870()
{
  result = qword_27D90AEC8;
  if (!qword_27D90AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEC8);
  }

  return result;
}

unint64_t sub_22BF098C8()
{
  result = qword_27D90AED0;
  if (!qword_27D90AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AED0);
  }

  return result;
}

unint64_t sub_22BF09920()
{
  result = qword_27D90AED8;
  if (!qword_27D90AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AED8);
  }

  return result;
}

unint64_t sub_22BF09978()
{
  result = qword_27D90AEE0;
  if (!qword_27D90AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEE0);
  }

  return result;
}

unint64_t sub_22BF099D0()
{
  result = qword_27D90AEE8;
  if (!qword_27D90AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEE8);
  }

  return result;
}

unint64_t sub_22BF09A28()
{
  result = qword_27D90AEF0;
  if (!qword_27D90AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEF0);
  }

  return result;
}

unint64_t sub_22BF09A80()
{
  result = qword_27D90AEF8;
  if (!qword_27D90AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AEF8);
  }

  return result;
}

unint64_t sub_22BF09AD8()
{
  result = qword_27D90AF00;
  if (!qword_27D90AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF00);
  }

  return result;
}

unint64_t sub_22BF09B30()
{
  result = qword_27D90AF08;
  if (!qword_27D90AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF08);
  }

  return result;
}

unint64_t sub_22BF09B88()
{
  result = qword_27D90AF10;
  if (!qword_27D90AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF10);
  }

  return result;
}

unint64_t sub_22BF09BE0()
{
  result = qword_27D90AF18;
  if (!qword_27D90AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF18);
  }

  return result;
}

unint64_t sub_22BF09C38()
{
  result = qword_27D90AF20;
  if (!qword_27D90AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF20);
  }

  return result;
}

unint64_t sub_22BF09C90()
{
  result = qword_27D90AF28;
  if (!qword_27D90AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF28);
  }

  return result;
}

unint64_t sub_22BF09CE8()
{
  result = qword_27D90AF30;
  if (!qword_27D90AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF30);
  }

  return result;
}

unint64_t sub_22BF09D40()
{
  result = qword_27D90AF38;
  if (!qword_27D90AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF38);
  }

  return result;
}

unint64_t sub_22BF09D98()
{
  result = qword_27D90AF40;
  if (!qword_27D90AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF40);
  }

  return result;
}

unint64_t sub_22BF09DF0()
{
  result = qword_27D90AF48;
  if (!qword_27D90AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF48);
  }

  return result;
}

unint64_t sub_22BF09E48()
{
  result = qword_27D90AF50;
  if (!qword_27D90AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF50);
  }

  return result;
}

unint64_t sub_22BF09EA0()
{
  result = qword_27D90AF58;
  if (!qword_27D90AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF58);
  }

  return result;
}

unint64_t sub_22BF09EF8()
{
  result = qword_27D90AF60;
  if (!qword_27D90AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF60);
  }

  return result;
}

unint64_t sub_22BF09F50()
{
  result = qword_27D90AF68;
  if (!qword_27D90AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF68);
  }

  return result;
}

unint64_t sub_22BF09FA8()
{
  result = qword_27D90AF70;
  if (!qword_27D90AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF70);
  }

  return result;
}

unint64_t sub_22BF0A000()
{
  result = qword_27D90AF78;
  if (!qword_27D90AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF78);
  }

  return result;
}

unint64_t sub_22BF0A058()
{
  result = qword_27D90AF80;
  if (!qword_27D90AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF80);
  }

  return result;
}

unint64_t sub_22BF0A0B0()
{
  result = qword_27D90AF88;
  if (!qword_27D90AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF88);
  }

  return result;
}

unint64_t sub_22BF0A108()
{
  result = qword_27D90AF90;
  if (!qword_27D90AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF90);
  }

  return result;
}

unint64_t sub_22BF0A160()
{
  result = qword_27D90AF98;
  if (!qword_27D90AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AF98);
  }

  return result;
}

unint64_t sub_22BF0A1B8()
{
  result = qword_27D90AFA0;
  if (!qword_27D90AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFA0);
  }

  return result;
}

unint64_t sub_22BF0A210()
{
  result = qword_27D90AFA8;
  if (!qword_27D90AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFA8);
  }

  return result;
}

unint64_t sub_22BF0A268()
{
  result = qword_27D90AFB0;
  if (!qword_27D90AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFB0);
  }

  return result;
}

unint64_t sub_22BF0A2C0()
{
  result = qword_27D90AFB8;
  if (!qword_27D90AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFB8);
  }

  return result;
}

unint64_t sub_22BF0A318()
{
  result = qword_27D90AFC0;
  if (!qword_27D90AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFC0);
  }

  return result;
}

unint64_t sub_22BF0A370()
{
  result = qword_27D90AFC8;
  if (!qword_27D90AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFC8);
  }

  return result;
}

unint64_t sub_22BF0A3C8()
{
  result = qword_27D90AFD0;
  if (!qword_27D90AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFD0);
  }

  return result;
}

unint64_t sub_22BF0A420()
{
  result = qword_27D90AFD8;
  if (!qword_27D90AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFD8);
  }

  return result;
}

unint64_t sub_22BF0A478()
{
  result = qword_27D90AFE0;
  if (!qword_27D90AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFE0);
  }

  return result;
}

unint64_t sub_22BF0A4D0()
{
  result = qword_27D90AFE8;
  if (!qword_27D90AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFE8);
  }

  return result;
}

unint64_t sub_22BF0A528()
{
  result = qword_27D90AFF0;
  if (!qword_27D90AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFF0);
  }

  return result;
}

unint64_t sub_22BF0A580()
{
  result = qword_27D90AFF8;
  if (!qword_27D90AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90AFF8);
  }

  return result;
}

unint64_t sub_22BF0A5D8()
{
  result = qword_27D90B000;
  if (!qword_27D90B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B000);
  }

  return result;
}

unint64_t sub_22BF0A630()
{
  result = qword_27D90B008;
  if (!qword_27D90B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B008);
  }

  return result;
}

unint64_t sub_22BF0A688()
{
  result = qword_27D90B010;
  if (!qword_27D90B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B010);
  }

  return result;
}

unint64_t sub_22BF0A6E0()
{
  result = qword_27D90B018;
  if (!qword_27D90B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B018);
  }

  return result;
}

unint64_t sub_22BF0A738()
{
  result = qword_27D90B020;
  if (!qword_27D90B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B020);
  }

  return result;
}

unint64_t sub_22BF0A790()
{
  result = qword_27D90B028;
  if (!qword_27D90B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B028);
  }

  return result;
}

unint64_t sub_22BF0A7E8()
{
  result = qword_27D90B030;
  if (!qword_27D90B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B030);
  }

  return result;
}

unint64_t sub_22BF0A840()
{
  result = qword_27D90B038;
  if (!qword_27D90B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B038);
  }

  return result;
}

unint64_t sub_22BF0A898()
{
  result = qword_27D90B040;
  if (!qword_27D90B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B040);
  }

  return result;
}

unint64_t sub_22BF0A8F0()
{
  result = qword_27D90B048;
  if (!qword_27D90B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B048);
  }

  return result;
}

unint64_t sub_22BF0A948()
{
  result = qword_27D90B050;
  if (!qword_27D90B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B050);
  }

  return result;
}

unint64_t sub_22BF0A9A0()
{
  result = qword_27D90B058;
  if (!qword_27D90B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B058);
  }

  return result;
}

unint64_t sub_22BF0A9F8()
{
  result = qword_27D90B060;
  if (!qword_27D90B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B060);
  }

  return result;
}

unint64_t sub_22BF0AA50()
{
  result = qword_27D90B068;
  if (!qword_27D90B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B068);
  }

  return result;
}

unint64_t sub_22BF0AAA8()
{
  result = qword_27D90B070;
  if (!qword_27D90B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B070);
  }

  return result;
}

unint64_t sub_22BF0AB00()
{
  result = qword_27D90B078;
  if (!qword_27D90B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B078);
  }

  return result;
}

unint64_t sub_22BF0AB58()
{
  result = qword_27D90B080;
  if (!qword_27D90B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B080);
  }

  return result;
}

unint64_t sub_22BF0ABB0()
{
  result = qword_27D90B088;
  if (!qword_27D90B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B088);
  }

  return result;
}

unint64_t sub_22BF0AC08()
{
  result = qword_27D90B090;
  if (!qword_27D90B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B090);
  }

  return result;
}

unint64_t sub_22BF0AC60()
{
  result = qword_27D90B098;
  if (!qword_27D90B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B098);
  }

  return result;
}

unint64_t sub_22BF0ACB8()
{
  result = qword_27D90B0A0;
  if (!qword_27D90B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B0A0);
  }

  return result;
}

unint64_t sub_22BF0AD10()
{
  result = qword_27D90B0A8;
  if (!qword_27D90B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B0A8);
  }

  return result;
}

unint64_t sub_22BF0AD68()
{
  result = qword_27D90B0B0;
  if (!qword_27D90B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B0B0);
  }

  return result;
}

unint64_t sub_22BF0ADC0()
{
  result = qword_27D90B0B8;
  if (!qword_27D90B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B0B8);
  }

  return result;
}

unint64_t sub_22BF0AE18()
{
  result = qword_27D90B0C0;
  if (!qword_27D90B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B0C0);
  }

  return result;
}

uint64_t sub_22BF0AEB4()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_22BF0AF28()
{

  sub_22BE70138(0, v0, 0);
}

uint64_t sub_22BF0AF44()
{

  return sub_22C273EB4();
}

uint64_t sub_22BF0AF84()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_22BF0AFD0(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22BF0AFF0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t Lexer.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = HIBYTE(a2) & 0xF;
  *a3 = result;
  a3[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  a3[2] = 0;
  a3[3] = v3;
  a3[4] = 0;
  a3[5] = 0;
  return result;
}

void Lexer.next()(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  while (1)
  {
    v4 = a1;
    sub_22BF0B730(a2);
    v5 = *(v2 + 40);
    if (v5)
    {
      v3 = *(v2 + 32);
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
    }

    else
    {
      sub_22C273204();
      if (!v6)
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v15 = -1;
        goto LABEL_33;
      }

      sub_22BE3E568();
    }

    if (v3 != 35 || v5 != 0xE100000000000000)
    {
      sub_22BE18D2C();
      if ((sub_22C274014() & 1) == 0)
      {
        break;
      }
    }

    do
    {
      a2 = sub_22C273204();
      if (!v8)
      {
        break;
      }

      if (a2 == 10 && v8 == 0xE100000000000000)
      {

        break;
      }

      v10 = sub_22BE3AFA0(a2, v8, 10);
    }

    while ((v10 & 1) == 0);
    a1 = v4;
    v2 = v58;
    v3 = v57;
  }

  v11 = v3 == 61 && v5 == 0xE100000000000000;
  if (v11 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v13 = (sub_22BF0B820(v12) & 1) == 0;
    v14 = 2;
LABEL_24:
    if (!v13)
    {
      ++v14;
    }

LABEL_26:
    *v4 = v14;
    *(v4 + 8) = 0;
LABEL_27:
    v15 = 6;
    goto LABEL_33;
  }

  v16 = v3 == 33 && v5 == 0xE100000000000000;
  if (v16 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v18 = sub_22BF0B820(v17);
    v14 = 18;
    if (v18)
    {
      v14 = 4;
    }

    goto LABEL_26;
  }

  v19 = v3 == 60 && v5 == 0xE100000000000000;
  if (v19 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v13 = (sub_22BF0B820(v20) & 1) == 0;
    v14 = 5;
    goto LABEL_24;
  }

  v21 = v3 == 62 && v5 == 0xE100000000000000;
  if (v21 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v13 = (sub_22BF0B820(v22) & 1) == 0;
    v14 = 7;
    goto LABEL_24;
  }

  v23 = v3 == 43 && v5 == 0xE100000000000000;
  if (v23 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v13 = (sub_22BF0B820(v24) & 1) == 0;
    v14 = 9;
    goto LABEL_24;
  }

  v25 = v3 == 45 && v5 == 0xE100000000000000;
  if (v25 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v13 = (sub_22BF0B820(v26) & 1) == 0;
    v14 = 11;
    goto LABEL_24;
  }

  v27 = v3 == 47 && v5 == 0xE100000000000000;
  if (v27 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v13 = (sub_22BF0B820(v28) & 1) == 0;
    v14 = 16;
    goto LABEL_24;
  }

  v29 = v3 == 42 && v5 == 0xE100000000000000;
  if (v29 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v30 = sub_22C273204();
    *(v2 + 32) = v30;
    *(v2 + 40) = v31;
    if (v31)
    {
      v32 = v30;
      v33 = v31;
      v34 = v30 == 61 && v31 == 0xE100000000000000;
      if (v34 || (sub_22BE1A210(61) & 1) != 0)
      {

        *(v2 + 32) = 0;
        *(v2 + 40) = 0;
        v35 = xmmword_22C28B600;
LABEL_97:
        *v4 = v35;
        goto LABEL_27;
      }

      v37 = v32 == 42 && v33 == 0xE100000000000000;
      if (v37 || (sub_22BE1A210(42) & 1) != 0)
      {

        *(v2 + 32) = 0;
        *(v2 + 40) = 0;
        v35 = xmmword_22C28B5F0;
        goto LABEL_97;
      }
    }

    v35 = xmmword_22C28B610;
    goto LABEL_97;
  }

  v36 = v3 == 40 && v5 == 0xE100000000000000;
  if (v36 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B5E0;
    goto LABEL_97;
  }

  v38 = v3 == 41 && v5 == 0xE100000000000000;
  if (v38 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B5D0;
    goto LABEL_97;
  }

  v39 = v3 == 123 && v5 == 0xE100000000000000;
  if (v39 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B5C0;
    goto LABEL_97;
  }

  v40 = v3 == 125 && v5 == 0xE100000000000000;
  if (v40 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B5B0;
    goto LABEL_97;
  }

  v41 = v3 == 91 && v5 == 0xE100000000000000;
  if (v41 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B5A0;
    goto LABEL_97;
  }

  v42 = v3 == 93 && v5 == 0xE100000000000000;
  if (v42 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B590;
    goto LABEL_97;
  }

  v43 = v3 == 46 && v5 == 0xE100000000000000;
  if (v43 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B580;
    goto LABEL_97;
  }

  v44 = v3 == 44 && v5 == 0xE100000000000000;
  if (v44 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B570;
    goto LABEL_97;
  }

  v45 = v3 == 58 && v5 == 0xE100000000000000;
  if (v45 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B560;
    goto LABEL_97;
  }

  v46 = v3 == 59 && v5 == 0xE100000000000000;
  if (v46 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B550;
    goto LABEL_97;
  }

  v47 = v3 == 63 && v5 == 0xE100000000000000;
  if (v47 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
  {

    v35 = xmmword_22C28B540;
    goto LABEL_97;
  }

  if (v3 != 10 || v5 != 0xE100000000000000)
  {
    sub_22BE18D2C();
    if ((sub_22C274014() & 1) == 0)
    {
      v49 = v3 == 34 && v5 == 0xE100000000000000;
      if (v49 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
      {

        sub_22BF0B9F4(&v55);
        goto LABEL_170;
      }

      if (v3 == 48 && v5 == 0xE100000000000000)
      {
        goto LABEL_180;
      }

      sub_22BE1B328();
      v51 = sub_22C274014();
      if (v51)
      {
LABEL_181:
        *&v55 = v3;
        *(&v55 + 1) = v5;
        MEMORY[0x28223BE20](v51);
        v54[2] = &v55;
        if (!sub_22BF0CB24(sub_22BF0CDF8, v54, 0xD000000000000035, v53 | 0x8000000000000000))
        {

          *v4 = 0;
          *(v4 + 8) = 0;
          goto LABEL_27;
        }

        sub_22BE1B328();
        sub_22BF0BEF4();
        goto LABEL_184;
      }

      if (v3 != 57 || v5 != 0xE100000000000000)
      {
LABEL_180:
        sub_22BE18D2C();
        v51 = sub_22C274014();
        if (v51)
        {
          goto LABEL_181;
        }
      }

      sub_22BE1B328();
      sub_22BF0BB10();
LABEL_184:

      goto LABEL_170;
    }
  }

  sub_22BF0B8D4(&v55);
LABEL_170:
  v15 = v56;
  *v4 = v55;
LABEL_33:
  *(v4 + 16) = v15;
}

double sub_22BF0B730(uint64_t a1)
{
  if (!*(v1 + 40))
  {
    goto LABEL_3;
  }

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  while (v2 != 10 || v3 != 0xE100000000000000)
  {
    v8 = sub_22BE3AFA0(v2, v3, 10);

    if (v8)
    {
      goto LABEL_14;
    }

    v9 = sub_22C272F04();

    if ((v9 & 1) == 0)
    {
      return result;
    }

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
LABEL_3:
    v4 = sub_22C273204();
    *(v1 + 32) = v4;
    *(v1 + 40) = v5;
    if (!v5)
    {
      return result;
    }

    v2 = v4;
    v3 = v5;
  }

LABEL_14:

  return result;
}

uint64_t sub_22BF0B820(uint64_t a1)
{
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
  }

  else
  {
    v4 = sub_22C273204();
    *(v1 + 32) = v4;
    *(v1 + 40) = v5;
    if (!v5)
    {
      return 0;
    }

    v2 = v4;
    v3 = v5;
  }

  if (v2 == 61 && v3 == 0xE100000000000000)
  {
  }

  else
  {
    v7 = sub_22BE3AFA0(v2, v3, 61);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  return 1;
}

void sub_22BF0B8D4(uint64_t a2@<X8>)
{
  v6 = 0;
  if (!*(v2 + 40))
  {
    goto LABEL_3;
  }

  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  while (v4 != 32 || v3 != 0xE100000000000000)
  {
    v9 = sub_22BE1B328();
    if (sub_22BE3AFA0(v9, v10, 32))
    {
      break;
    }

    if (v4 == 9 && v3 == 0xE100000000000000)
    {
    }

    else
    {
      v13 = sub_22BE1B328();
      v4 = sub_22BE3AFA0(v13, v14, 9);

      if ((v4 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v11 = __OFADD__(v6, 4);
    v6 += 4;
    if (v11)
    {
      goto LABEL_23;
    }

LABEL_21:
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
LABEL_3:
    *(v2 + 32) = sub_22C273204();
    *(v2 + 40) = v7;
    if (!v7)
    {
LABEL_22:
      *a2 = v6;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return;
    }

    sub_22BE3E568();
  }

  v11 = __OFADD__(v6++, 1);
  if (!v11)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22BF0B9F4(uint64_t a2@<X8>)
{
  v5 = 0;
  while (1)
  {
    v6 = *(v2 + 40);
    if (v6)
    {
      v3 = *(v2 + 32);
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }

    sub_22C273204();
    if (!v8)
    {
      break;
    }

    sub_22BE3E568();
    if (v5)
    {
LABEL_4:
      MEMORY[0x2318AB8D0](92, 0xE100000000000000);
LABEL_5:
      v7 = sub_22BE1B328();
      MEMORY[0x2318AB8C0](v7);
      v5 = 0;
      goto LABEL_19;
    }

LABEL_8:
    v9 = v3 == 34 && v6 == 0xE100000000000000;
    if (v9 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
    {

      *a2 = 0;
      *(a2 + 8) = 0xE000000000000000;
      v11 = 5;
      goto LABEL_22;
    }

    if (v3 != 92 || v6 != 0xE100000000000000)
    {
      sub_22BE18D2C();
      if ((sub_22C274014() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v5 = 1;
LABEL_19:
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v11 = 6;
LABEL_22:
  *(a2 + 16) = v11;
}

void sub_22BF0BB10()
{
  sub_22BE1BA00();
  v36 = v4;
  sub_22C272F54();
  for (i = 0; ; i = 1)
  {
    while (1)
    {
      if (*(v1 + 40))
      {
        v3 = *(v1 + 32);
        v2 = *(v1 + 40);
      }

      else
      {
        *(v1 + 32) = sub_22C273204();
        *(v1 + 40) = v6;
        if (!v6)
        {
          goto LABEL_26;
        }

        sub_22BE3E568();
      }

      v7 = v3 == 48 && v2 == 0xE100000000000000;
      if (v7)
      {
        break;
      }

      sub_22BE1B328();
      if (sub_22C274014())
      {
        goto LABEL_17;
      }

      if (v3 != 57 || v2 != 0xE100000000000000)
      {
        break;
      }

LABEL_16:

      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      v9 = sub_22BE1B328();
      MEMORY[0x2318AB8C0](v9);
    }

    sub_22BE18D2C();
    if ((sub_22C274014() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (v3 != 46 || v2 != 0xE100000000000000)
    {
      v11 = sub_22BE1B328();
      if ((sub_22BE3AFA0(v11, v12, 46) & 1) == 0)
      {
        break;
      }
    }

    if (i)
    {

      v14 = v36;
      goto LABEL_27;
    }

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    v13 = sub_22BE1B328();
    MEMORY[0x2318AB8C0](v13);
  }

LABEL_26:
  v14 = v36;
  if (i)
  {
LABEL_27:
    v15 = sub_22BF2B0CC(0, v14);
    if ((v16 & 1) == 0)
    {
      *v0 = v15;
      *(v0 + 8) = 0;
      v17 = 4;
LABEL_78:
      *(v0 + 16) = v17;
      return;
    }

LABEL_76:
    *v0 = 0;
    *(v0 + 8) = 0;
    v17 = 6;
    goto LABEL_78;
  }

  if ((v36 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {

    goto LABEL_76;
  }

  if ((v36 & 0x1000000000000000) != 0)
  {
    sub_22BF14368(0, v36, 10);
    v20 = v32;
    v31 = v33;
    goto LABEL_75;
  }

  if ((v36 & 0x2000000000000000) != 0)
  {
    if ((v36 & 0xF00000000000000) != 0)
    {
      while (1)
      {
        sub_22BE18550();
        if (!v7 & v21)
        {
          break;
        }

        sub_22BE17C04();
        if (!v7)
        {
          break;
        }

        v20 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          break;
        }

        sub_22BE230DC();
        if (v7)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

  v34 = sub_22C273B44();
  v19 = *v34;
  if (v19 == 43)
  {
    if (v35 < 1)
    {
      goto LABEL_82;
    }

    if (v35 == 1)
    {
      goto LABEL_73;
    }

    v20 = 0;
    if (!v34)
    {
      goto LABEL_64;
    }

    while (1)
    {
      sub_22BE18550();
      if (!v7 & v21)
      {
        break;
      }

      sub_22BE17C04();
      if (!v7)
      {
        break;
      }

      v20 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        break;
      }

      sub_22BE230DC();
      if (v7)
      {
        goto LABEL_74;
      }
    }

LABEL_73:
    v20 = 0;
    v24 = 1;
    goto LABEL_74;
  }

  if (v19 != 45)
  {
    if (!v35)
    {
      goto LABEL_73;
    }

    v20 = 0;
    if (!v34)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v27 = *v34 - 48;
      if (v27 > 9)
      {
        goto LABEL_73;
      }

      v28 = 10 * v20;
      if ((v20 * 10) >> 64 != (10 * v20) >> 63)
      {
        goto LABEL_73;
      }

      v20 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_73;
      }

      ++v34;
      if (!--v35)
      {
        goto LABEL_64;
      }
    }
  }

  if (v35 >= 1)
  {
    if (v35 == 1)
    {
      goto LABEL_73;
    }

    v20 = 0;
    if (v34)
    {
      while (1)
      {
        sub_22BE18550();
        if (!v7 & v21)
        {
          goto LABEL_73;
        }

        sub_22BE17C04();
        if (!v7)
        {
          goto LABEL_73;
        }

        v20 = v23 - v22;
        if (__OFSUB__(v23, v22))
        {
          goto LABEL_73;
        }

        sub_22BE230DC();
        if (v7)
        {
          goto LABEL_74;
        }
      }
    }

LABEL_64:
    v24 = 0;
LABEL_74:
    v31 = v24;
LABEL_75:

    if ((v31 & 1) == 0)
    {
      *v0 = v20;
      *(v0 + 8) = 0;
      v17 = 3;
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  __break(1u);
  __break(1u);
LABEL_82:
  __break(1u);
  __break(1u);
}

void sub_22BF0BEF4()
{
  sub_22BE1BA00();
  v30 = 0;
  v31 = v2;
  sub_22C272F54();
  v3 = *(v1 + 40);
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = *(v1 + 32);
  for (i = *(v1 + 40); ; i = 0)
  {
    v28 = v4;
    v29 = v3;
    MEMORY[0x28223BE20](i);
    v27 = &v28;

    v8 = sub_22BF0CB24(sub_22BF0CE8C, v26, 0xD000000000000035, 0x800000022C2D3970);
    if (!v8)
    {
      v28 = v4;
      v29 = v3;
      MEMORY[0x28223BE20](v8);
      v27 = &v28;
      if (!sub_22BF0CB24(sub_22BF0CE8C, v26, 0x3837363534333231, 0xEA00000000003039))
      {
        break;
      }
    }

    MEMORY[0x2318AB8C0](v4, v3);

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
LABEL_3:
    v6 = sub_22C273204();
    *(v1 + 32) = v6;
    *(v1 + 40) = v7;
    if (!v7)
    {
      goto LABEL_9;
    }

    v4 = v6;
    v3 = v7;
  }

LABEL_9:
  v10 = v30;
  v9 = v31;
  v11 = v30 == 1702195796 && v31 == 0xE400000000000000;
  if (v11 || (sub_22BE1A608(1702195796, 0xE400000000000000) & 1) != 0 || (v10 == 1702195828 ? (v12 = v9 == 0xE400000000000000) : (v12 = 0), v12 || (sub_22BE1A608(1702195828, 0xE400000000000000) & 1) != 0))
  {

    *v0 = xmmword_22C288190;
LABEL_20:
    v13 = 2;
    goto LABEL_21;
  }

  v14 = v10 == 0x65736C6146 && v9 == 0xE500000000000000;
  if (v14 || (sub_22BE1A608(0x65736C6146, 0xE500000000000000) & 1) != 0 || (v10 == 0x65736C6166 ? (v15 = v9 == 0xE500000000000000) : (v15 = 0), v15 || (sub_22BE1A608(0x65736C6166, 0xE500000000000000) & 1) != 0))
  {

    *v0 = 0;
    *(v0 + 8) = 0;
    goto LABEL_20;
  }

  v16 = v10 == 1701736270 && v9 == 0xE400000000000000;
  if (v16 || (sub_22BE1A608(1701736270, 0xE400000000000000) & 1) != 0)
  {

    v17 = xmmword_22C288190;
  }

  else
  {
    v18 = v10 == 6581857 && v9 == 0xE300000000000000;
    if (v18 || (sub_22BE1A608(6581857, 0xE300000000000000) & 1) != 0)
    {

      v17 = xmmword_22C28B690;
    }

    else
    {
      v19 = v10 == 29295 && v9 == 0xE200000000000000;
      if (v19 || (sub_22BE1A608(29295, 0xE200000000000000) & 1) != 0)
      {

        v17 = xmmword_22C28B680;
      }

      else
      {
        v20 = v10 == 7630702 && v9 == 0xE300000000000000;
        if (v20 || (sub_22BE1A608(7630702, 0xE300000000000000) & 1) != 0)
        {

          v17 = xmmword_22C28B670;
        }

        else
        {
          v21 = v10 == 7499622 && v9 == 0xE300000000000000;
          if (v21 || (sub_22BE1A608(7499622, 0xE300000000000000) & 1) != 0)
          {

            v17 = xmmword_22C28B660;
          }

          else
          {
            v22 = v10 == 28265 && v9 == 0xE200000000000000;
            if (v22 || (sub_22BE1A608(28265, 0xE200000000000000) & 1) != 0)
            {

              v17 = xmmword_22C28B650;
            }

            else
            {
              v23 = v10 == 26217 && v9 == 0xE200000000000000;
              if (v23 || (sub_22BE1A608(26217, 0xE200000000000000) & 1) != 0)
              {

                v17 = xmmword_22C28B640;
              }

              else
              {
                v24 = v10 == 1718185061 && v9 == 0xE400000000000000;
                if (v24 || (sub_22BE1A608(1718185061, 0xE400000000000000) & 1) != 0)
                {

                  v17 = xmmword_22C28B630;
                }

                else
                {
                  v25 = v10 == 1702063205 && v9 == 0xE400000000000000;
                  if (!v25 && (sub_22BE1A608(1702063205, 0xE400000000000000) & 1) == 0)
                  {
                    *v0 = v10;
                    *(v0 + 8) = v9;
                    v13 = 1;
                    goto LABEL_21;
                  }

                  v17 = xmmword_22C28B620;
                }
              }
            }
          }
        }
      }
    }
  }

  *v0 = v17;
  v13 = 6;
LABEL_21:
  *(v0 + 16) = v13;
}

Swift::String __swiftcall Lexer.remainingString()()
{
  while (1)
  {
    v1 = *(v0 + 40);
    if (v1)
    {
      v2 = *(v0 + 32);
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      goto LABEL_5;
    }

    v2 = sub_22C273204();
    if (!v3)
    {
      break;
    }

    v1 = v3;
LABEL_5:
    MEMORY[0x2318AB8C0](v2, v1);
  }

  v4 = 0;
  v5 = 0xE000000000000000;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t static Lexer.Token.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_24;
      }

      if (*&v3 != *&v5 || v2 != v6)
      {
        sub_22BE18944();
        v25 = sub_22C274014();
        v26 = sub_22BE191CC();
        sub_22BF0CE18(v26, v27, 1u);
        v28 = sub_22BE18944();
        sub_22BF0CE18(v28, v29, 1u);
        v30 = sub_22BE18944();
        sub_22BF0CE34(v30, v31, 1u);
        v32 = sub_22BE191CC();
        v34 = 1;
        goto LABEL_23;
      }

      v17 = 1;
      v52 = sub_22BE18944();
      sub_22BF0CE18(v52, v53, 1u);
      v54 = sub_22BE18944();
      sub_22BF0CE18(v54, v55, 1u);
      v56 = sub_22BE18944();
      sub_22BF0CE34(v56, v57, 1u);
      v58 = sub_22BE18944();
      v60 = 1;
LABEL_35:
      sub_22BF0CE34(v58, v59, v60);
      return v17 & 1;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_25;
      }

      v18 = sub_22BE18944();
      sub_22BF0CE34(v18, v19, 2u);
      v20 = sub_22BE191CC();
      sub_22BF0CE34(v20, v21, 2u);
      v17 = LOBYTE(v5) ^ LOBYTE(v3) ^ 1;
      return v17 & 1;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_25;
      }

      v22 = sub_22BE18944();
      sub_22BF0CE34(v22, v23, 3u);
      v10 = sub_22BE191CC();
      v12 = 3;
      goto LABEL_10;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_25;
      }

      v13 = sub_22BE18944();
      sub_22BF0CE34(v13, v14, 4u);
      v15 = sub_22BE191CC();
      sub_22BF0CE34(v15, v16, 4u);
      v17 = v3 == v5;
      return v17 & 1;
    case 5u:
      if (v7 != 5)
      {
LABEL_24:

LABEL_25:
        v44 = sub_22BE191CC();
        sub_22BF0CE18(v44, v45, v7);
        v46 = sub_22BE18944();
        sub_22BF0CE34(v46, v47, v4);
        v48 = sub_22BE191CC();
        sub_22BF0CE34(v48, v49, v7);
        v17 = 0;
        return v17 & 1;
      }

      v35 = *a1;
      if (*&v3 == *&v5 && v2 == v6)
      {
        sub_22BF0CE18(*&v35, v2, 5u);
        v61 = sub_22BE18944();
        sub_22BF0CE18(v61, v62, 5u);
        v63 = sub_22BE18944();
        sub_22BF0CE34(v63, v64, 5u);
        v51 = sub_22BE18944();
        v66 = 5;
LABEL_359:
        sub_22BF0CE34(v51, v65, v66);
        v17 = 1;
        return v17 & 1;
      }

      v25 = sub_22C274014();
      v37 = sub_22BE191CC();
      sub_22BF0CE18(v37, v38, 5u);
      v39 = sub_22BE18944();
      sub_22BF0CE18(v39, v40, 5u);
      v41 = sub_22BE18944();
      sub_22BF0CE34(v41, v42, 5u);
      v32 = sub_22BE191CC();
      v34 = 5;
LABEL_23:
      sub_22BF0CE34(v32, v33, v34);
      return v25 & 1;
    case 6u:
      switch(*&v3)
      {
        case 1:
          if (v7 != 6 || *&v5 != 1 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v17 = 1;
          v58 = 1;
          v59 = 0;
          v60 = 6;
          goto LABEL_35;
        case 2:
          if (v7 != 6 || *&v5 != 2 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 2;
          break;
        case 3:
          if (v7 != 6 || *&v5 != 3 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 3;
          break;
        case 4:
          if (v7 != 6 || *&v5 != 4 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 4;
          break;
        case 5:
          if (v7 != 6 || *&v5 != 5 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 5;
          break;
        case 6:
          if (v7 != 6 || *&v5 != 6 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 6;
          break;
        case 7:
          if (v7 != 6 || *&v5 != 7 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 7;
          break;
        case 8:
          if (v7 != 6 || *&v5 != 8 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 8;
          break;
        case 9:
          if (v7 != 6 || *&v5 != 9 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 9;
          break;
        case 0xALL:
          if (v7 != 6 || *&v5 != 10 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 10;
          break;
        case 0xBLL:
          if (v7 != 6 || *&v5 != 11 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 11;
          break;
        case 0xCLL:
          if (v7 != 6 || *&v5 != 12 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 12;
          break;
        case 0xDLL:
          if (v7 != 6 || *&v5 != 13 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 13;
          break;
        case 0xELL:
          if (v7 != 6 || *&v5 != 14 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 14;
          break;
        case 0xFLL:
          if (v7 != 6 || *&v5 != 15 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 15;
          break;
        case 0x10:
          if (v7 != 6 || *&v5 != 16 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 16;
          break;
        case 0x11:
          if (v7 != 6 || *&v5 != 17 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 17;
          break;
        case 0x12:
          if (v7 != 6 || *&v5 != 18 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 18;
          break;
        case 0x13:
          if (v7 != 6 || *&v5 != 19 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 19;
          break;
        case 0x14:
          if (v7 != 6 || *&v5 != 20 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 20;
          break;
        case 0x15:
          if (v7 != 6 || *&v5 != 21 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 21;
          break;
        case 0x16:
          if (v7 != 6 || *&v5 != 22 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 22;
          break;
        case 0x17:
          if (v7 != 6 || *&v5 != 23 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 23;
          break;
        case 0x18:
          if (v7 != 6 || *&v5 != 24 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 24;
          break;
        case 0x19:
          if (v7 != 6 || *&v5 != 25 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 25;
          break;
        case 0x1ALL:
          if (v7 != 6 || *&v5 != 26 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 26;
          break;
        case 0x1BLL:
          if (v7 != 6 || *&v5 != 27 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 27;
          break;
        case 0x1CLL:
          if (v7 != 6 || *&v5 != 28 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 28;
          break;
        case 0x1DLL:
          if (v7 != 6 || *&v5 != 29 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 29;
          break;
        case 0x1ELL:
          if (v7 != 6 || *&v5 != 30 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 30;
          break;
        case 0x1FLL:
          if (v7 != 6 || *&v5 != 31 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 31;
          break;
        case 0x20:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 32 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 32;
          break;
        case 0x21:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 33 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 33;
          break;
        case 0x22:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 34 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 34;
          break;
        case 0x23:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 35 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 35;
          break;
        case 0x24:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 36 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 36;
          break;
        case 0x25:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 37 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 37;
          break;
        default:
          if (v7 != 6 || (v6 | *&v5) != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v51 = 0;
          break;
      }

      v65 = 0;
      v66 = 6;
      goto LABEL_359;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_25;
      }

      v8 = sub_22BE18944();
      sub_22BF0CE34(v8, v9, 0);
      v10 = sub_22BE191CC();
      v12 = 0;
LABEL_10:
      sub_22BF0CE34(v10, v11, v12);
      v17 = *&v3 == *&v5;
      return v17 & 1;
  }
}

BOOL sub_22BF0CB24(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v12[2] = a3;
  v12[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v12[4] = 0;
  v12[5] = v6;

  do
  {
    v7 = sub_22C273204();
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v12[0] = v7;
    v12[1] = v8;
    v10 = a1(v12);

    if (v4)
    {
      break;
    }
  }

  while ((v10 & 1) == 0);

  return v9 != 0;
}

BOOL sub_22BF0CBD8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_22BF0CCE8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *((a4)(0, a2) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_22BF0CE18(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 4) == 5)
  {
  }

  return result;
}

double sub_22BF0CE34(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 4) == 5)
  {
  }

  return result;
}

uint64_t sub_22BF0CE60(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t static Parser.parse(string:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v79 = a3;
  v8 = sub_22C2720A4();
  sub_22BE179D8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C271B04();

  v14 = sub_22C272084();
  v15 = sub_22C273794();

  v16 = os_log_type_enabled(v14, v15);
  v80 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *&__src[0] = v4;
    *v17 = 136380675;
    *(v17 + 4) = sub_22BE61C88(a1, v80, __src);
    _os_log_impl(&dword_22BE15000, v14, v15, "Parsing plan:\n%{private}s", v17, 0xCu);
    sub_22BE26B64(v4);
    sub_22BE183C8();
    a2 = v80;
    sub_22BE183C8();
  }

  (*(v10 + 8))(v13, v8);
  *(&__src[4] + 1) = 0;
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  *&__src[0] = a1;
  *(&__src[0] + 1) = a2;
  *&__src[1] = 0;
  *(&__src[1] + 1) = v18;
  memset(&__src[2], 0, 32);
  LOBYTE(__src[4]) = -1;
  v19 = swift_bridgeObjectRetain_n();
  while (1)
  {
    Lexer.next()(__dst, v19);
    sub_22BE36718();
    if (v21)
    {
      break;
    }

    v22 = sub_22BE230E8();
    sub_22BF0CE18(v22, v23, v24);
    if (v4)
    {
      sub_22BF0D574(0, 0, 0xFFu);
      v34 = sub_22BE230E8();
      sub_22BF0CE34(v34, v35, v36);
      break;
    }

    v20 = sub_22BF0D574(0, 0, 0xFFu);
    if (v15 < 0)
    {
      LOBYTE(v4) = 0;
      break;
    }

    v25 = sub_22BE1BED4();
    sub_22BF0D574(v25, v26, v27);
    v28 = sub_22BE1BED4();
    sub_22BF0D530(v28, v29, v30);
    __src[3] = 0uLL;
    LOBYTE(__src[4]) = -1;
    v31 = sub_22BE1BED4();
    sub_22BF0D530(v31, v32, v33);
  }

  v84 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 != 0xFF)
    {
      goto LABEL_16;
    }

    Lexer.next()(__dst, v20);
    v37 = __dst[0];
    v38 = __dst[1];
    v39 = LOBYTE(__dst[2]);
    sub_22BF0D530(*&__src[3], *(&__src[3] + 1), __src[4]);
    *&__src[3] = v37;
    *(&__src[3] + 1) = v38;
    LOBYTE(__src[4]) = v39;
    if (v39 == 255)
    {
      break;
    }

    sub_22BE290CC();
    sub_22BF0CE18(v40, v41, v42);
LABEL_16:
    v43 = sub_22BE230E8();
    sub_22BF0D574(v43, v44, v45);
    sub_22BE290CC();
    sub_22BF0D530(v46, v47, v48);
    v50 = sub_22BF0D588(v49);
    if (v5)
    {

      goto LABEL_33;
    }

    v51 = v50;

    v52 = v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BE26828();
      v52 = isUniquelyReferenced_nonNull_native;
    }

    v55 = *(v52 + 16);
    v54 = *(v52 + 24);
    v81 = 0;
    if (v55 >= v54 >> 1)
    {
      sub_22BE66B04(v54 > 1, v55 + 1, 1, v52);
      v52 = isUniquelyReferenced_nonNull_native;
    }

    *(v52 + 16) = v55 + 1;
    v84 = v52;
    *(v52 + 8 * v55 + 32) = v51;
    v56 = *&__src[3];
    v57 = __src[4];
    while (1)
    {
      LOBYTE(v4) = v57;
      if (v57 == 0xFF)
      {
        Lexer.next()(__dst, isUniquelyReferenced_nonNull_native);
        sub_22BE36718();
        if (v21)
        {
          goto LABEL_30;
        }

        v58 = sub_22BE230E8();
        sub_22BF0CE18(v58, v59, v60);
      }

      if (v57)
      {
        v73 = sub_22BE1AEE4();
        sub_22BF0D574(v73, v74, v57);
        v75 = sub_22BE230E8();
        sub_22BF0CE34(v75, v76, v77);
        goto LABEL_30;
      }

      v61 = *(&__src[4] + 1);
      v62 = sub_22BE1AEE4();
      sub_22BF0D574(v62, v63, v57);
      if (v56 < v61)
      {
        break;
      }

      v64 = sub_22BE1BED4();
      sub_22BF0D574(v64, v65, v66);
      v67 = sub_22BE1BED4();
      sub_22BF0D530(v67, v68, v69);
      __src[3] = 0uLL;
      v57 = -1;
      LOBYTE(__src[4]) = -1;
      v70 = sub_22BE1BED4();
      sub_22BF0D530(v70, v71, v72);
      v56 = 0;
    }

    LOBYTE(v4) = 0;
LABEL_30:

    v5 = v81;
  }

  *v79 = v84;
LABEL_33:
  memcpy(__dst, __src, sizeof(__dst));
  return sub_22BF0D544(__dst);
}

void sub_22BF0D33C(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = *(v2 + 64);
  if (v3 == 255)
  {

    Lexer.next()(a1, a2);
  }

  else
  {
    v5 = *(v2 + 48);
    v4 = *(v2 + 56);
    *a1 = v5;
    *(a1 + 8) = v4;
    *(a1 + 16) = v3;
    sub_22BF0CE18(v5, v4, v3);
    sub_22BF0D530(v5, v4, v3);
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = -1;
  }
}

void sub_22BF0D3C4(uint64_t a1)
{
  while (1)
  {
    v2 = *(v1 + 48);
    v3 = *(v1 + 64);
    if (v3 == 255)
    {
      Lexer.next()(&v35, a1);
      v2 = v35;
      v4 = v36;
      v3 = v37;
      v5 = sub_22BE3E574();
      sub_22BF0D530(v5, v6, v7);
      *(v1 + 48) = v2;
      *(v1 + 56) = v4;
      *(v1 + 64) = v3;
      if (v3 == 255)
      {
        return;
      }

      v8 = sub_22BE25AB8();
      sub_22BF0CE18(v8, v9, v10);
    }

    if (v3)
    {
      break;
    }

    if (v2 < *(v1 + 72))
    {
      v32 = sub_22BE22BD8();

      sub_22BF0D574(v32, v33, v34);
      return;
    }

    v11 = *(v1 + 64);
    if (v11 == 255)
    {
      v20 = sub_22BE22BD8();
      v23 = sub_22BF0D574(v20, v21, v22);
      Lexer.next()(&v35, v23);
      LOBYTE(v11) = v37;
    }

    else
    {
      v12 = *(v1 + 56);
      v35 = *(v1 + 48);
      v36 = v12;
      v13 = sub_22BE22BD8();
      sub_22BF0D574(v13, v14, v15);
      v16 = sub_22BE18240();
      sub_22BF0D574(v16, v17, v11);
      v18 = sub_22BE18240();
      sub_22BF0D530(v18, v19, v11);
      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
      *(v1 + 64) = -1;
    }

    v24 = sub_22BE18240();
    sub_22BF0D530(v24, v25, v11);
  }

  v26 = sub_22BE22BD8();
  sub_22BF0D574(v26, v27, v28);
  v29 = sub_22BE25AB8();

  sub_22BF0CE34(v29, v30, v31);
}

double sub_22BF0D530(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_22BF0CE34(a1, a2, a3);
  }

  return result;
}

uint64_t sub_22BF0D574(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_22BF0CE18(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22BF0D588(uint64_t a1)
{
  sub_22BF0D3C4(a1);
  v4 = *(v1 + 64);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = v4;
  if (v4 == 255)
  {
    Lexer.next()(&v23, v3);
    v5 = v23;
    v6 = v24;
    v7 = v25;
    v8 = sub_22BE3E574();
    sub_22BF0D530(v8, v9, v10);
    *(v1 + 48) = v5;
    *(v1 + 56) = v6;
    *(v1 + 64) = v7;
    if (v7 == 255)
    {
      goto LABEL_9;
    }

    sub_22BF0CE18(v5, v6, v7);
  }

  if (v7 == 6)
  {
    if (!(v5 ^ 0x20 | v6))
    {
      v18 = sub_22BE196A8();
      v20 = sub_22BF0D574(v18, v19, v4);
      sub_22BF0D33C(&v23, v20);
      sub_22BF0D530(v23, v24, v25);
      sub_22BF0DCE4(v21);
LABEL_12:
      v4 = v14;
      sub_22BF0D530(v5, v6, 6u);
      if (v2)
      {
        return v4;
      }

      goto LABEL_14;
    }

    if (!(v5 ^ 0x22 | v6))
    {
      v11 = sub_22BE196A8();
      v13 = sub_22BF0D574(v11, v12, v4);
      sub_22BF0D33C(&v23, v13);
      sub_22BF0D530(v23, v24, v25);
      sub_22BF0D9C4();
      goto LABEL_12;
    }
  }

  v15 = sub_22BE196A8();
  sub_22BF0D574(v15, v16, v4);
  sub_22BF0D530(v5, v6, v7);
LABEL_9:
  sub_22BF0DDC4();
  if (v2)
  {
    return v4;
  }

  v4 = v17;
LABEL_14:
  sub_22BF0D3C4(v17);
  return v4;
}

uint64_t sub_22BF0D6F8(uint64_t a1)
{
  v4 = v2;
  sub_22BF0D33C(&v57, a1);
  isUniquelyReferenced_nonNull_native = v57;
  if (v59)
  {
    if (v59 != 255)
    {
      sub_22BF0D530(v57, v58, v59);
    }

    goto LABEL_5;
  }

  if (v57 < *(v1 + 72))
  {
LABEL_5:
    sub_22BF10374();
    sub_22BE3C818();
    swift_allocError();
    sub_22BE258F4(v6, 1);
    return i;
  }

  v55 = *(v1 + 72);
  v56 = v57;
  *(v1 + 72) = v57;
  for (i = MEMORY[0x277D84F90]; ; *(i + 8 * v52 + 32) = v44)
  {
    v8 = *(v1 + 48);
    v9 = *(v1 + 64);
    if (v9 == 255)
    {
      Lexer.next()(&v57, isUniquelyReferenced_nonNull_native);
      v8 = v57;
      v10 = v58;
      v9 = v59;
      v11 = sub_22BE3E574();
      sub_22BF0D530(v11, v12, v13);
      *(v1 + 48) = v8;
      *(v1 + 56) = v10;
      *(v1 + 64) = v9;
      if (v9 == 255)
      {
        goto LABEL_32;
      }

      sub_22BE289C0();
      sub_22BF0CE18(v14, v15, v16);
    }

    sub_22BE290CC();
    if (v9)
    {
      sub_22BF0D574(v17, v18, v19);
      sub_22BE289C0();
      sub_22BF0CE34(v20, v21, v22);
    }

    else
    {
      v23 = sub_22BF0D574(v17, v18, v19);
      if (v8 < v56)
      {
LABEL_32:
        *(v1 + 72) = v55;
        return i;
      }
    }

    sub_22BF0D3C4(v23);
    v25 = *(v1 + 64);
    v26 = *(v1 + 48);
    v27 = *(v1 + 56);
    v28 = v25;
    if (v25 != 255)
    {
      break;
    }

    Lexer.next()(&v57, v24);
    v26 = v57;
    v27 = v58;
    v28 = v59;
    v29 = sub_22BE3E574();
    sub_22BF0D530(v29, v30, v31);
    *(v1 + 48) = v26;
    *(v1 + 56) = v27;
    *(v1 + 64) = v28;
    if (v28 != 255)
    {
      v32 = sub_22BE18240();
      sub_22BF0CE18(v32, v33, v28);
      break;
    }

LABEL_22:
    sub_22BF0DDC4();
    if (v4)
    {
      goto LABEL_34;
    }

    v44 = v43;
LABEL_27:
    sub_22BF0D3C4(v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BE26828();
      i = isUniquelyReferenced_nonNull_native;
    }

    v52 = *(i + 16);
    v51 = *(i + 24);
    if (v52 >= v51 >> 1)
    {
      sub_22BE66B04(v51 > 1, v52 + 1, 1, i);
      i = isUniquelyReferenced_nonNull_native;
    }

    *(i + 16) = v52 + 1;
  }

  if (v28 != 6)
  {
LABEL_21:
    v39 = sub_22BE191C0();
    sub_22BF0D574(v39, v40, v25);
    v41 = sub_22BE18240();
    sub_22BF0D530(v41, v42, v28);
    goto LABEL_22;
  }

  if (v26 ^ 0x20 | v27)
  {
    if (!(v26 ^ 0x22 | v27))
    {
      v34 = sub_22BE191C0();
      v36 = sub_22BF0D574(v34, v35, v25);
      sub_22BF0D33C(&v57, v36);
      sub_22BF0D530(v57, v58, v59);
      v37 = v4;
      sub_22BF0D9C4();
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v45 = sub_22BE191C0();
  v47 = sub_22BF0D574(v45, v46, v25);
  sub_22BF0D33C(&v57, v47);
  sub_22BF0D530(v57, v58, v59);
  v37 = v4;
  sub_22BF0DCE4(v48);
LABEL_25:
  v4 = v37;
  if (!v37)
  {
    v44 = v38;
    v49 = sub_22BE18240();
    sub_22BF0D530(v49, v50, 6u);
    goto LABEL_27;
  }

  v53 = sub_22BE18240();
  sub_22BF0D530(v53, v54, 6u);
LABEL_34:

  *(v1 + 72) = v55;
  return i;
}

void sub_22BF0D9C4()
{
  sub_22BF0DED8(0, &v100);
  if (!v1)
  {
    v10 = v100;
    sub_22BE2C670(v2, v3, v4, v5, v6, v7, v8, v9, 27, 0, 27, 0, v102);
    v12 = sub_22BF0D6F8(v11);
    v103 = v12;
    v13 = *(v0 + 64);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v16 = v13;
    if (v13 == 255)
    {
      Lexer.next()(&v100, v12);
      v15 = v101;
      v14 = v100;
      v16 = v102;
      v17 = sub_22BE3E574();
      sub_22BF0D530(v17, v18, v19);
      *(v0 + 48) = v14;
      *(v0 + 56) = v15;
      *(v0 + 64) = v16;
      if (v16 == 255)
      {
        goto LABEL_19;
      }

      sub_22BF0CE18(v14, v15, v16);
    }

    if (v16)
    {
      v20 = sub_22BE196A8();
      sub_22BF0D574(v20, v21, v13);
      sub_22BF0CE34(v14, v15, v16);
    }

    else
    {
      v22 = sub_22BE196A8();
      if (v14 != v24)
      {
        sub_22BF0D574(v22, v23, v13);
        goto LABEL_19;
      }

      v25 = sub_22BF0D574(v22, v23, v13);
      sub_22BF0D33C(&v100, v25);
      v34 = sub_22BE201D0(v26, v27, v28, v29, v30, v31, v32, v33, v94, v97, v100);
      sub_22BF0D530(v34, v35, v36);
      v38 = *(v0 + 64);
      v39 = *(v0 + 48);
      v40 = *(v0 + 56);
      v41 = v38;
      if (v38 == 255)
      {
        Lexer.next()(&v100, v37);
        v40 = v101;
        v39 = v100;
        v41 = v102;
        v42 = sub_22BE3E574();
        sub_22BF0D530(v42, v43, v44);
        *(v0 + 48) = v39;
        *(v0 + 56) = v40;
        *(v0 + 64) = v41;
        if (v41 == 255)
        {
          goto LABEL_19;
        }

        sub_22BF0CE18(v39, v40, v41);
      }

      if (v41 == 6)
      {
        if (!(v39 ^ 0x24 | v40))
        {
          v63 = sub_22BE191C0();
          v65 = sub_22BF0D574(v63, v64, v38);
          sub_22BF0D33C(&v100, v65);
          v74 = sub_22BE201D0(v66, v67, v68, v69, v70, v71, v72, v73, v95, v98, v100);
          sub_22BF0D530(v74, v75, v76);
          sub_22BE2C670(v77, v78, v79, v80, v81, v82, v83, v84, v96, v99, v96, v99, v102);
          v91 = sub_22BF0D6F8(v90);
          v61 = v103;
          v87 = v91;
          v92 = sub_22BE18240();
          sub_22BF0D530(v92, v93, 6u);
          goto LABEL_21;
        }

        if (!(v39 ^ 0x23 | v40))
        {
          v45 = sub_22BE191C0();
          v47 = sub_22BF0D574(v45, v46, v38);
          sub_22BF0D33C(&v100, v47);
          v56 = sub_22BE201D0(v48, v49, v50, v51, v52, v53, v54, v55, v95, v98, v100);
          sub_22BF0D530(v56, v57, v58);
          sub_22BF0D9C4();
          v86 = v85;
          sub_22BE5CE4C(&qword_27D907388, &qword_22C2752F8);
          sub_22BE2B7C4();
          v87 = swift_allocObject();
          *(v87 + 16) = xmmword_22C275160;
          *(v87 + 32) = v86;
          v88 = sub_22BE1AEE4();
          sub_22BF0D530(v88, v89, 6u);
LABEL_20:
          v61 = v103;
LABEL_21:
          sub_22BE2B7C4();
          v62 = swift_allocObject();
          v62[2] = v10;
          v62[3] = v61;
          v62[4] = v87;
          return;
        }
      }

      v59 = sub_22BE191C0();
      sub_22BF0D574(v59, v60, v38);
      sub_22BF0D530(v39, v40, v41);
    }

LABEL_19:
    v87 = 0;
    goto LABEL_20;
  }
}

void sub_22BF0DCE4(uint64_t a1)
{
  v2 = sub_22BF0F528(a1);
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    sub_22BE1A624();
    sub_22BF0F5D8(v6);
    sub_22BE3C37C(v11);
    v7 = v11[0];
    sub_22BE1A624();
    sub_22BF0F5D8(v8);
    v9 = sub_22BF0D6F8();
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v5;
    v10[4] = v7;
    v10[5] = v9;
  }
}

void sub_22BF0DDC4()
{
  sub_22BF0DED8(0, &v21);
  if (!v1)
  {
    v3 = v21;
    if (v21 >> 60 != 2 || *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x20) != 1)
    {
      goto LABEL_9;
    }

    v4 = *(v0 + 64);
    if (v4 == 255)
    {
      Lexer.next()(v19, v2);
      v5 = v19[0];
      v6 = v19[1];
      v4 = v20;
      v7 = sub_22BE3E574();
      sub_22BF0D530(v7, v8, v9);
      *(v0 + 48) = v5;
      *(v0 + 56) = v6;
      *(v0 + 64) = v4;
      if (v4 == 255)
      {
LABEL_9:
        *(swift_allocObject() + 16) = v3;
        return;
      }

      sub_22BE289C0();
      sub_22BF0CE18(v10, v11, v12);
    }

    v13 = sub_22BE25AB8();
    sub_22BF0D574(v13, v14, v15);
    if (v4)
    {
      sub_22BE289C0();
      sub_22BF0CE34(v16, v17, v18);
      sub_22BE3C37C(v19);
      sub_22BE63574(v3);
      v3 = v19[0];
    }

    goto LABEL_9;
  }
}

void sub_22BF0DED8(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a1;
  sub_22BF0D3C4(a1);
  sub_22BF0E384(&v75, v6);
  if (!v3)
  {
    v71 = v4;
    v70 = a2;
    sub_22BF0D3C4(v7);
    v9 = v75;
    while (1)
    {
      v10 = *(v2 + 48);
      v11 = *(v2 + 56);
      v12 = *(v2 + 64);
      if (v12 == 255)
      {
        Lexer.next()(&v73, v8);
        v11 = *(&v73 + 1);
        v10 = v73;
        v12 = v74;
        v13 = sub_22BE3E574();
        sub_22BF0D530(v13, v14, v15);
        *(v2 + 48) = v10;
        *(v2 + 56) = v11;
        *(v2 + 64) = v12;
        if (v12 == 255)
        {
          goto LABEL_47;
        }

        sub_22BE25228();
        sub_22BF0CE18(v16, v17, v18);
      }

      if (v12 != 6 || (v10 - 2) > 0x1F)
      {
        break;
      }

      switch(v10)
      {
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 33:
          sub_22BE1BA14();
          if (v19 >= 5)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 9:
        case 11:
          sub_22BE1BA14();
          if (v23 < 6)
          {
            goto LABEL_20;
          }

          goto LABEL_45;
        case 13:
        case 16:
          sub_22BE1BA14();
          if (v21 >= 7)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 15:
          sub_22BE1BA14();
          if (v34 >= 9)
          {
            goto LABEL_48;
          }

          goto LABEL_22;
        case 18:
        case 31:
          sub_22BE1BA14();
          if (v20 >= 4)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 19:
          sub_22BE1BA14();
          if (v25 >= 0xB)
          {
            goto LABEL_48;
          }

LABEL_27:
          if (*(v2 + 64) == 255)
          {
            v49 = sub_22BE3AFB8();
            Lexer.next()(&v73, v49);
          }

          else
          {
            v26 = *(v2 + 56);
            *&v73 = *(v2 + 48);
            *(&v73 + 1) = v26;
            sub_22BE3AFB8();
            v27 = sub_22BE18D3C();
            sub_22BF0D574(v27, v28, v29);
            v30 = sub_22BE18D3C();
            sub_22BF0D530(v30, v31, v32);
            sub_22BE1A230();
          }

          v50 = sub_22BE18D3C();
          sub_22BF0D530(v50, v51, v52);
          if (v9 >> 60)
          {
            v75 = v9;
            sub_22BF10374();
            sub_22BE3C818();
            swift_allocError();
            sub_22BE258F4(v69, 7);
            sub_22BEA7680(v9);
            sub_22BE63574(v75);
            sub_22BE63574(v9);
            return;
          }

          v54 = *(v9 + 16);
          v53 = *(v9 + 24);
          sub_22BEA7680(v9);

          v55 = sub_22BF0EB98();
          sub_22BE63574(v9);
          v56 = swift_allocObject();
          *(v56 + 16) = v54;
          *(v56 + 24) = v53;
          *(v56 + 32) = 0;
          *(v56 + 40) = 0;
          *(v56 + 48) = 0;
          *(v56 + 56) = v55;
          sub_22BE63574(v9);
          v9 = v56 | 0x7000000000000000;
          continue;
        case 20:
        case 21:
        case 22:
        case 24:
        case 26:
        case 27:
        case 28:
        case 32:
          goto LABEL_44;
        case 23:
        case 25:
          sub_22BE1BA14();
          if (v22 >= 0xA)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 29:
          sub_22BE1BA14();
          if (v24 >= 3)
          {
            goto LABEL_48;
          }

          goto LABEL_22;
        case 30:
          sub_22BE1BA14();
          if (v33 >= 2)
          {
LABEL_48:
            sub_22BE3AFB8();
LABEL_47:
            *v70 = v9;
            return;
          }

LABEL_22:
          v72 = v9;
          sub_22BE3AFB8();
          sub_22BEA7680(v9);
          sub_22BF0E918(&v72, &v73);
          sub_22BE63574(v9);
          sub_22BE63574(v9);
LABEL_23:
          v9 = v73;
          break;
        default:
          if (!v71)
          {
LABEL_20:
            if ((v10 - 2) <= 0x1F)
            {
              switch(v10)
              {
                case 18:
                case 20:
                case 21:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 31:
                case 32:
                  break;
                case 19:
                  goto LABEL_27;
                case 23:
                  if (*(v2 + 64) == 255)
                  {
                    v61 = sub_22BE3AFB8();
                    Lexer.next()(&v73, v61);
                  }

                  else
                  {
                    v42 = *(v2 + 56);
                    *&v73 = *(v2 + 48);
                    *(&v73 + 1) = v42;
                    sub_22BE3AFB8();
                    v43 = sub_22BE18D3C();
                    sub_22BF0D574(v43, v44, v45);
                    v46 = sub_22BE18D3C();
                    sub_22BF0D530(v46, v47, v48);
                    sub_22BE1A230();
                  }

                  v62 = sub_22BE18D3C();
                  sub_22BF0D530(v62, v63, v64);
                  sub_22BEA7680(v9);
                  sub_22BE3C37C();
                  v65 = v73;
                  v73 = xmmword_22C28B590;
                  v74 = 6;
                  sub_22BF0F5D8(&v73);
                  sub_22BE63574(v9);
                  sub_22BE236BC();
                  v8 = swift_allocObject();
                  *(v8 + 16) = v9;
                  *(v8 + 24) = v65;
                  v9 = v8 | 0x6000000000000000;
                  continue;
                case 25:
                  if (*(v2 + 64) == 255)
                  {
                    v57 = sub_22BE3AFB8();
                    Lexer.next()(&v73, v57);
                  }

                  else
                  {
                    v35 = *(v2 + 56);
                    *&v73 = *(v2 + 48);
                    *(&v73 + 1) = v35;
                    sub_22BE3AFB8();
                    v36 = sub_22BE18D3C();
                    sub_22BF0D574(v36, v37, v38);
                    v39 = sub_22BE18D3C();
                    sub_22BF0D530(v39, v40, v41);
                    sub_22BE1A230();
                  }

                  v58 = sub_22BE18D3C();
                  sub_22BF0D530(v58, v59, v60);
                  v72 = v9;
                  sub_22BEA7680(v9);
                  sub_22BF0E69C(&v72, &v73);
                  sub_22BE63574(v9);
                  sub_22BE63574(v9);
                  goto LABEL_23;
                default:
                  goto LABEL_22;
              }
            }
          }

LABEL_45:
          sub_22BE3AFB8();
          v66 = v10;
          v67 = v11;
          v68 = 6;
          goto LABEL_46;
      }
    }

LABEL_44:
    sub_22BE3AFB8();
    sub_22BE25228();
LABEL_46:
    sub_22BF0CE34(v66, v67, v68);
    goto LABEL_47;
  }
}

void sub_22BF0E384(unint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  sub_22BF0D33C(&v32, a2);
  v4 = v34;
  if (v34 == 255)
  {
    sub_22BF103C8();
    sub_22BE3C818();
    swift_allocError();
    *v8 = 0xD000000000000070;
    *(v8 + 8) = 0x800000022C2D39B0;
    *(v8 + 16) = xmmword_22C28B8A0;
    *(v8 + 32) = 0xEE00292873684C72;
    swift_willThrow();
  }

  else
  {
    v6 = v32;
    v5 = v33;
    switch(v34)
    {
      case 1u:
        sub_22BE236BC();
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        *(v7 + 24) = v5;
        *a1 = v7;
        return;
      case 2u:
        sub_22BE2699C();
        v16 = swift_allocObject();
        *(v16 + 16) = v6 & 1;
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        goto LABEL_10;
      case 3u:
        sub_22BE2699C();
        v16 = swift_allocObject();
        *(v16 + 16) = v6;
        *(v16 + 24) = 0;
        v17 = 1;
        goto LABEL_8;
      case 4u:
        sub_22BE2699C();
        v16 = swift_allocObject();
        *(v16 + 16) = v6;
        *(v16 + 24) = 0;
        v17 = 2;
LABEL_8:
        *(v16 + 32) = v17;
        goto LABEL_10;
      case 5u:
        sub_22BE2699C();
        v9 = swift_allocObject();
        sub_22BE1AB1C();
        v10 = String.unescapedForPython.getter();
        v12 = v11;
        v13 = sub_22BE1AB1C();
        sub_22BF0D530(v13, v14, 5u);
        *(v9 + 16) = v10;
        *(v9 + 24) = v12;
        *(v9 + 32) = 3;
        v15 = v9 | 0x2000000000000000;
        goto LABEL_11;
      case 6u:
        if (!(v32 ^ 1 | v33))
        {
          sub_22BE2699C();
          v16 = swift_allocObject();
          *(v16 + 16) = 0;
          *(v16 + 24) = 0;
          *(v16 + 32) = 7;
LABEL_10:
          v15 = v16 | 0x2000000000000000;
          goto LABEL_11;
        }

        sub_22BE25470();
        if (v19)
        {
          sub_22BE25470();
          if (v21)
          {
            sub_22BE25470();
            if (v23)
            {
              sub_22BE25470();
              if (!v24)
              {
                sub_22BF0EB20(a1);
                return;
              }

              sub_22BE25470();
              if (!v25)
              {
                sub_22BF0EAAC(a1);
                return;
              }

              if (!(v6 ^ 0x1C | v5))
              {
                v15 = 0xB000000000000008;
LABEL_11:
                *a1 = v15;
                return;
              }

              if (v6 ^ 0x1F | v5)
              {
LABEL_22:
                sub_22BF10374();
                sub_22BE3C818();
                swift_allocError();
                sub_22BE258F4(v29, 6);
                v30 = sub_22BE1AB1C();
                sub_22BF0D530(v30, v31, v4);
                return;
              }
            }

            sub_22BE35B3C(v22);
            if (!v2)
            {
              v26 = v32;
              sub_22BE236BC();
              v27 = swift_allocObject();
              v28 = 2;
LABEL_31:
              *(v27 + 16) = v28;
              goto LABEL_32;
            }
          }

          else
          {
            sub_22BE35B3C(v20);
            if (!v2)
            {
              v26 = v32;
              sub_22BE236BC();
              v27 = swift_allocObject();
              v28 = 1;
              goto LABEL_31;
            }
          }
        }

        else
        {
          sub_22BE35B3C(v18);
          if (!v2)
          {
            v26 = v32;
            sub_22BE236BC();
            v27 = swift_allocObject();
            *(v27 + 16) = 0;
LABEL_32:
            *(v27 + 24) = v26;
            v15 = v27 | 0x3000000000000000;
            goto LABEL_11;
          }
        }

        break;
      default:
        goto LABEL_22;
    }
  }
}

void sub_22BF0E69C(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v6 = *a1;
  v7 = sub_22BF0F528(a1);
  if (!v3)
  {
    v9 = v7;
    v10 = v8;
    v31 = a2;
    v35 = 0;
    v12 = *(v2 + 48);
    v11 = *(v2 + 56);
    v13 = *(v2 + 64);
    v14 = v12;
    v15 = *(v4 + 56);
    v16 = v13;
    if (v13 == 255)
    {
      v30 = *(v4 + 56);
      Lexer.next()(&v32, v7);
      v14 = v32;
      v15 = v33;
      v16 = v34;
      sub_22BF0D530(*(v4 + 48), *(v4 + 56), *(v4 + 64));
      *(v4 + 48) = v14;
      *(v4 + 56) = v15;
      *(v4 + 64) = v16;
      if (v16 == 255)
      {
LABEL_13:
        sub_22BE2B7C4();
        v19 = swift_allocObject();
        *(v19 + 16) = v6;
        *(v19 + 24) = v9;
        *(v19 + 32) = v10;
        *v31 = v19 | 0x5000000000000000;
        sub_22BEA7680(v6);
        return;
      }

      sub_22BF0CE18(v14, v15, v16);
      v11 = v30;
    }

    if (v16 != 6 || v14 != 19 || v15 != 0)
    {
      sub_22BF0D574(v12, v11, v13);
      sub_22BF0CE34(v14, v15, v16);
      goto LABEL_13;
    }

    v20 = sub_22BF0D574(v12, v11, v13);
    sub_22BF0D33C(&v32, v20);
    sub_22BF0D530(v32, v33, v34);
    sub_22BEA7680(v6);
    v21 = v35;
    while (v6 >> 60 == 5)
    {
      v22 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v32 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v33 = v23;
      sub_22BEA7680(v22);

      MEMORY[0x2318AB8D0](46, 0xE100000000000000);
      v24 = sub_22BE18240();
      MEMORY[0x2318AB8D0](v24);

      sub_22BE63574(v6);
      v9 = v32;
      v10 = v33;
      v6 = v22;
    }

    if (!(v6 >> 60))
    {
      v25 = *(v6 + 24);
      v32 = *(v6 + 16);
      v33 = v25;

      MEMORY[0x2318AB8D0](46, 0xE100000000000000);
      v26 = sub_22BE18240();
      MEMORY[0x2318AB8D0](v26);

      v9 = v32;
      v10 = v33;
    }

    v27 = sub_22BF0EB98();
    if (v21)
    {
      swift_bridgeObjectRelease_n();
      sub_22BE63574(v6);
    }

    else
    {
      v28 = v27;
      v29 = swift_allocObject();
      *(v29 + 16) = v9;
      *(v29 + 24) = v10;
      *(v29 + 32) = 0;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = v28;

      sub_22BE63574(v6);
      *v31 = v29 | 0x7000000000000000;
    }
  }
}

void sub_22BF0E918(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_22BF0D33C(v16, a1);
  v5 = v17;
  if (v17 == 255)
  {
    sub_22BF103C8();
    sub_22BE3C818();
    swift_allocError();
    *v15 = 0xD000000000000070;
    *(v15 + 8) = 0x800000022C2D39B0;
    *(v15 + 16) = xmmword_22C28B8B0;
    *(v15 + 32) = 0x800000022C2D3A30;
    swift_willThrow();
  }

  else if (v17 == 6 && (v6 = v16[0] - 2, __PAIR128__((v16[0] >= 2) + v16[1] - 1, v16[0] - 2) < 0x20) && ((0x9800FFFF >> v6) & 1) != 0)
  {
    v7 = byte_22C28BB2E[v6];
    v8 = sub_22BE1AEE4();
    sub_22BF0D530(v8, v9, 6u);
    sub_22BF0DED8(byte_22C28BB0E[v6], v16);
    if (!v2)
    {
      v10 = v16[0];
      sub_22BE2B7C4();
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      *(v11 + 24) = v4;
      *(v11 + 32) = v10;
      *a2 = v11 | 0x4000000000000000;
      sub_22BEA7680(v4);
    }
  }

  else
  {
    sub_22BF10374();
    sub_22BE3C818();
    swift_allocError();
    sub_22BE258F4(v12, 9);
    v13 = sub_22BE1AEE4();
    sub_22BF0D530(v13, v14, v5);
  }
}

uint64_t sub_22BF0EAAC@<X0>(uint64_t *a1@<X8>)
{
  sub_22BE1A624();
  result = sub_22BF0FDA8(v3);
  if (!v1)
  {
    v5 = result;
    sub_22BE2699C();
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = 0;
    *(result + 32) = 4;
    *a1 = result | 0x2000000000000000;
  }

  return result;
}

void sub_22BF0EB20(unint64_t *a1@<X8>)
{
  sub_22BF0DED8(0, v5);
  if (!v1)
  {
    v3 = v5[0];
    sub_22BE1A624();
    sub_22BF0F5D8(v4);
    *a1 = v3;
  }
}

uint64_t sub_22BF0EB98()
{
  v2 = v0;
  v120 = sub_22C2720A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  v121 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v117 = &v114 - v6;
  MEMORY[0x28223BE20](v7);
  v115 = &v114 - v8;
  MEMORY[0x28223BE20](v9);
  v116 = &v114 - v11;
  v12 = MEMORY[0x277D84F98];
  v131 = MEMORY[0x277D84F98];
  v119 = (v13 + 8);
  v126 = xmmword_22C28B5D0;
  v122 = xmmword_22C28B8C0;
  v124 = xmmword_22C28B570;
  while (1)
  {
    v14 = v12;
    sub_22BF0D3C4(v10);
    v16 = *(v2 + 64);
    v17 = *(v2 + 48);
    v18 = *(v2 + 56);
    v19 = v16;
    if (v16 == 255)
    {
      sub_22BE31190(v15);
      v17 = v127;
      v18 = v128;
      v19 = v129;
      sub_22BF10654();
      *(v2 + 48) = v17;
      *(v2 + 56) = v18;
      *(v2 + 64) = v19;
      if (v19 == 255)
      {
        goto LABEL_60;
      }

      sub_22BF0CE18(v17, v18, v19);
    }

    v127 = v17;
    v128 = v18;
    v129 = v19;
    sub_22BE1C2E8(v126);
    v20 = sub_22BE1AEE4();
    if (sub_22BE357F8(v20, v21, v16))
    {
      break;
    }

    v125 = v14;
    if (v19 != 1)
    {
      sub_22BF0CE34(v17, v18, v19);
      v32 = sub_22BE18560();
      sub_22BF0DED8(v32, v33);
      if (v1)
      {
        goto LABEL_61;
      }

      v24 = v127;
      if (*(v14 + 16))
      {

        sub_22BE35528();
        v35 = v34;

        if (v35)
        {
          sub_22C271B04();
          v36 = sub_22C272084();
          v37 = sub_22C2737A4();
          if (sub_22BE22C54(v37))
          {
            v38 = sub_22BE202F8();
            sub_22BE33A00(v38);
            _os_log_impl(&dword_22BE15000, v36, v39, "Duplicate parameter in function call. Overriding!", v38, 2u);
            sub_22BE183C8();
          }

          (*v119)(v121, v120);
        }
      }

      goto LABEL_51;
    }

    sub_22BF0CE34(v17, v18, 1u);
    v22 = sub_22BE18560();
    sub_22BF0F7DC(v22, v23);
    if (v1)
    {
      goto LABEL_61;
    }

    v24 = v127;
    if (v127 >> 60)
    {
      if (v127 >> 60 != 6)
      {
        goto LABEL_46;
      }

      v41 = *((v127 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((v127 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      if (v41 >> 60)
      {
        sub_22BEA7680(v127);
        sub_22BEA7680(v41);
        sub_22BEA7680(v40);
        sub_22BE63574(v41);
        sub_22BE63574(v40);
        sub_22BE63574(v24);
        goto LABEL_46;
      }

      v42 = *(v41 + 16);
      v43 = *(v41 + 24);
      sub_22BEA7680(v127);
      sub_22BEA7680(v41);
      sub_22BEA7680(v40);

      sub_22BE63574(v41);
      if (v40 >> 60 != 2)
      {
        sub_22BE63574(v40);
        sub_22BE63574(v24);
LABEL_44:

        goto LABEL_45;
      }

      v44 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      sub_22BE63574(v40);
      sub_22BE63574(v24);
      if (v45 != 1)
      {
        goto LABEL_44;
      }

      v123 = v44;
      v118 = v42;
      v46 = *(v2 + 48);
      v47 = *(v2 + 56);
      v48 = *(v2 + 64);
      LOBYTE(v49) = *(v2 + 64);
      v30 = v47;
      v50 = v46;
      if (v48 == 255)
      {
        v114 = *(v2 + 48);
        sub_22BE31190(v46);
        v50 = v127;
        v30 = v128;
        v49 = v129;
        sub_22BF10654();
        *(v2 + 48) = v50;
        *(v2 + 56) = v30;
        *(v2 + 64) = v49;
        v51 = sub_22BE2F144();
        sub_22BF0D574(v51, v52, v53);
        if (v49 == 255)
        {
          sub_22BF0D574(v114, v47, 0xFFu);

          v91 = v50;
LABEL_42:
          sub_22BF0D530(v91, v30, 0xFFu);
          sub_22BF0D530(2, 0, 6u);
LABEL_45:
          v14 = v125;
LABEL_46:
          if (*(v14 + 16))
          {

            sub_22BE35528();
            v93 = v92;

            if (v93)
            {
              sub_22C271B04();
              v94 = sub_22C272084();
              v95 = sub_22C2737A4();
              if (sub_22BE22C54(v95))
              {
                v96 = sub_22BE202F8();
                sub_22BE33A00(v96);
                _os_log_impl(&dword_22BE15000, v94, v97, "Duplicate parameter in function call. Overriding!", v96, 2u);
                sub_22BE183C8();
              }

              (*v119)(v117, v120);
            }
          }

LABEL_51:
          sub_22BE3D41C();
          sub_22BEA7680(v24);
          swift_isUniquelyReferenced_nonNull_native();
          sub_22BE38300();
          sub_22BE6263C();
          v12 = v130;
          v131 = v130;
          swift_endAccess();
          goto LABEL_52;
        }
      }

      v127 = v50;
      v128 = v30;
      v129 = v49;
      sub_22BE1C2E8(v122);
      sub_22BF0D574(v54, v47, v48);
      v55 = sub_22BE2F144();
      sub_22BE357F8(v55, v56, v57);
      sub_22BE19EDC();
      v58 = sub_22BE2F144();
      sub_22BF0D530(v58, v59, v60);
      if ((v48 & 1) == 0)
      {
        goto LABEL_44;
      }

      sub_22BE17C18(v122);
      v61 = sub_22BE18560();
      sub_22BF0DED8(v61, v62);
      v63 = v127;
      v64 = v118;
      if (*(v125 + 16))
      {

        sub_22BE60508(v64, v43, v123, 1);
        v66 = v65;

        if (v66)
        {
          sub_22C271B04();
          v67 = sub_22C272084();
          v68 = sub_22C2737A4();
          if (sub_22BE22C54(v68))
          {
            v69 = sub_22BE202F8();
            sub_22BE33A00(v69);
            _os_log_impl(&dword_22BE15000, v67, v70, "Duplicate parameter in function call. Overriding!", v69, 2u);
            sub_22BE183C8();
          }

          (*v119)(v115, v120);
        }
      }

      sub_22BE3D41C();
      sub_22BEA7680(v63);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22BE38300();
      sub_22BE196A8();
      sub_22BE6263C();
    }

    else
    {
      v25 = *(v127 + 24);
      v118 = *(v127 + 16);
      v27 = *(v2 + 48);
      v26 = *(v2 + 56);
      v28 = *(v2 + 64);
      v123 = v25;
      if (v28 == 255)
      {

        sub_22BE31190(v71);
        v31 = v127;
        v30 = v128;
        v29 = v129;
        sub_22BF10654();
        *(v2 + 48) = v31;
        *(v2 + 56) = v30;
        *(v2 + 64) = v29;
        v72 = sub_22BE2565C();
        sub_22BF0D574(v72, v73, v29);
        if (v29 == 255)
        {
          sub_22BF0D574(v27, v26, 0xFFu);

          v91 = v31;
          goto LABEL_42;
        }
      }

      else
      {

        LOBYTE(v29) = v28;
        v30 = v26;
        v31 = v27;
      }

      v127 = v31;
      v128 = v30;
      v129 = v29;
      sub_22BE1C2E8(v122);
      sub_22BF0D574(v27, v26, v28);
      v74 = sub_22BE2565C();
      sub_22BE357F8(v74, v75, v29);
      sub_22BE19EDC();
      v76 = sub_22BE2565C();
      sub_22BF0D530(v76, v77, v29);
      if ((v26 & 1) == 0)
      {
        goto LABEL_44;
      }

      sub_22BE17C18(v122);
      v78 = v125;
      v79 = sub_22BE18560();
      sub_22BF0DED8(v79, v80);
      v63 = v127;
      if (*(v78 + 16))
      {

        sub_22BE3C818();
        sub_22BE60508(v81, v82, v83, v84);
        v86 = v85;

        if (v86)
        {
          sub_22C271B04();
          v87 = sub_22C272084();
          v88 = sub_22C2737A4();
          if (sub_22BE22C54(v88))
          {
            v89 = sub_22BE202F8();
            sub_22BE33A00(v89);
            _os_log_impl(&dword_22BE15000, v87, v90, "Duplicate parameter in function call. Overriding!", v89, 2u);
            sub_22BE183C8();
          }

          (*v119)(v116, v120);
        }
      }

      sub_22BE3D41C();
      sub_22BEA7680(v63);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22BE38300();
      sub_22BE194C4();
      sub_22BE6263C();
    }

    v12 = v130;
    v131 = v130;
    swift_endAccess();
    sub_22BE63574(v24);
    v24 = v63;
LABEL_52:
    sub_22BE63574(v24);
    sub_22BF0D3C4(v98);
    v100 = *(v2 + 48);
    v101 = *(v2 + 56);
    v102 = *(v2 + 64);
    LOBYTE(v24) = *(v2 + 64);
    v103 = v101;
    v104 = v100;
    if (v102 == 255)
    {
      sub_22BE31190(v99);
      v104 = v127;
      v103 = v128;
      LODWORD(v24) = v129;
      sub_22BF10654();
      *(v2 + 48) = v104;
      *(v2 + 56) = v103;
      *(v2 + 64) = v24;
      v105 = sub_22BE2565C();
      sub_22BF0D574(v105, v106, v24);
      if (v24 == 255)
      {
        sub_22BF0D574(v100, v101, 0xFFu);
        v111 = sub_22BE2565C();
        sub_22BF0D530(v111, v112, 0xFFu);
        sub_22BF0D530(20, 0, 6u);
        goto LABEL_57;
      }
    }

    v127 = v104;
    v128 = v103;
    v129 = v24;
    sub_22BE1C2E8(v126);
    sub_22BF0D574(v100, v101, v102);
    v107 = sub_22BE2565C();
    sub_22BE357F8(v107, v108, v24);
    sub_22BE19EDC();
    v109 = sub_22BE2565C();
    sub_22BF0D530(v109, v110, v24);
    if ((v100 & 1) == 0)
    {
LABEL_57:
      sub_22BE17C18(v124);
    }
  }

  sub_22BF0CE34(v17, v18, v19);
LABEL_60:
  sub_22BE17C18(v126);
  if (!v1)
  {
    return v14;
  }

LABEL_61:

  return v14;
}

uint64_t sub_22BF0F528(uint64_t a1)
{
  v2 = *(v1 + 64);
  if (v2 == 255)
  {
    Lexer.next()(&v15, a1);
    v3 = v15;
    v2 = v16;
  }

  else
  {
    v3 = *(v1 + 48);
    v4 = sub_22BE373A8();
    sub_22BF0CE18(v4, v5, v6);
    v7 = sub_22BE373A8();
    sub_22BF0D530(v7, v8, v9);
    sub_22BE1A230();
  }

  if (v2 == 255)
  {
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v10 = sub_22BE373A8();
    sub_22BF0D530(v10, v11, v12);
LABEL_7:
    sub_22BF10374();
    sub_22BE3C818();
    swift_allocError();
    sub_22BE258F4(v13, 3);
  }

  return v3;
}

void sub_22BF0F5D8(uint64_t a1)
{
  v2 = *a1;
  v57 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = v5;
  v8 = v4;
  if (v6 == 255)
  {
    Lexer.next()(&v54, a1);
    v8 = v54;
    v7 = v55;
    v6 = v56;
    v9 = sub_22BE3E574();
    sub_22BF0D530(v9, v10, v11);
    *(v1 + 48) = v8;
    *(v1 + 56) = v7;
    *(v1 + 64) = v6;
    v12 = sub_22BE1B368();
    sub_22BF0D574(v12, v13, v14);
    if (v6 == 255)
    {
      sub_22BF0D574(v4, v5, 0xFFu);
      if (v3 == 255)
      {
        sub_22BF0CE18(v2, v57, 0xFFu);
        sub_22BF0D530(v8, v7, 0xFFu);
        goto LABEL_5;
      }

      v40 = v57;
      sub_22BF0CE18(v2, v57, v3);
      goto LABEL_9;
    }
  }

  v54 = v8;
  v55 = v7;
  v56 = v6;
  if (v3 == 255)
  {
    sub_22BE25228();
    sub_22BF0D574(v37, v38, v39);
    v40 = v57;
    sub_22BF0CE18(v2, v57, 0xFFu);
    v41 = sub_22BE1B368();
    sub_22BF0D574(v41, v42, v43);
    v44 = sub_22BE1B368();
    sub_22BF0CE34(v44, v45, v46);
LABEL_9:
    v47 = sub_22BE1B368();
    sub_22BF0D530(v47, v48, v49);
    sub_22BF0D530(v2, v40, v3);
    goto LABEL_10;
  }

  v52[0] = v2;
  v52[1] = v57;
  v53 = v3;
  sub_22BE25228();
  sub_22BF0D574(v15, v16, v17);
  sub_22BE290CC();
  sub_22BF0CE18(v18, v19, v20);
  sub_22BF0D574(v8, v7, v6);
  v21 = static Lexer.Token.== infix(_:_:)(&v54, v52);
  v22 = v21;
  v30 = sub_22BE201D0(v21, v23, v24, v25, v26, v27, v28, v29, v7, v51, v52[0]);
  sub_22BF0CE34(v30, v31, v32);
  sub_22BF0CE34(v54, v55, v56);
  v33 = sub_22BE1B368();
  sub_22BF0D530(v33, v34, v35);
  if (v22)
  {
LABEL_5:
    sub_22BF0D33C(&v54, v36);
    sub_22BF0D530(v54, v55, v56);
    return;
  }

LABEL_10:
  sub_22BF10374();
  sub_22BE3C818();
  swift_allocError();
  sub_22BE258F4(v50, 1);
}

void sub_22BF0F7DC(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a1;
  sub_22BF0D3C4(a1);
  sub_22BF0E384(&v42, v6);
  if (!v3)
  {
    v38 = v4;
    v37 = a2;
    sub_22BF0D3C4(v7);
    v9 = v42;
    while (1)
    {
      v10 = *(v2 + 48);
      v11 = *(v2 + 56);
      v12 = *(v2 + 64);
      v13 = v10;
      v14 = v11;
      v15 = v12;
      if (v12 == 255)
      {
        Lexer.next()(&v40, v8);
        v14 = *(&v40 + 1);
        v13 = v40;
        v15 = v41;
        sub_22BF0D530(*(v2 + 48), *(v2 + 56), *(v2 + 64));
        *(v2 + 48) = v13;
        *(v2 + 56) = v14;
        *(v2 + 64) = v15;
        if (v15 == 255)
        {
          goto LABEL_47;
        }

        sub_22BF0CE18(v13, v14, v15);
      }

      if (v15 != 6 || (v13 - 2) > 0x1F)
      {
        break;
      }

      switch(v13)
      {
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 33:
          if (v38 >= 5u)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 9:
        case 11:
          if (v38 < 6u)
          {
            goto LABEL_20;
          }

          goto LABEL_45;
        case 13:
        case 16:
          if (v38 >= 7u)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 15:
          if (v38 >= 9u)
          {
            goto LABEL_48;
          }

          goto LABEL_22;
        case 18:
        case 31:
          if (v38 >= 4u)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 19:
          if (v38 >= 0xBu)
          {
            goto LABEL_48;
          }

LABEL_31:
          v22 = *(v2 + 64);
          if (v22 == 255)
          {
            v25 = sub_22BF0D574(v10, v11, v12);
            Lexer.next()(&v40, v25);
            v23 = *(&v40 + 1);
            v24 = v40;
            LOBYTE(v22) = v41;
          }

          else
          {
            v23 = *(v2 + 56);
            *&v40 = *(v2 + 48);
            v24 = v40;
            *(&v40 + 1) = v23;
            sub_22BF0D574(v10, v11, v12);
            sub_22BF0D574(v24, v23, v22);
            sub_22BF0D530(v24, v23, v22);
            *(v2 + 48) = 0;
            *(v2 + 56) = 0;
            *(v2 + 64) = -1;
          }

          sub_22BF0D530(v24, v23, v22);
          if (v9 >> 60)
          {
            v42 = v9;
            sub_22BF10374();
            swift_allocError();
            *v36 = 7;
            swift_willThrow();
            sub_22BEA7680(v9);
            sub_22BE63574(v42);
            sub_22BE63574(v9);
            return;
          }

          v27 = *(v9 + 16);
          v26 = *(v9 + 24);
          sub_22BEA7680(v9);

          v28 = sub_22BF0EB98();
          sub_22BE63574(v9);
          v29 = swift_allocObject();
          *(v29 + 16) = v27;
          *(v29 + 24) = v26;
          *(v29 + 32) = 0;
          *(v29 + 40) = 0;
          *(v29 + 48) = 0;
          *(v29 + 56) = v28;
          sub_22BE63574(v9);
          v9 = v29 | 0x7000000000000000;
          continue;
        case 20:
        case 21:
        case 22:
        case 24:
        case 26:
        case 27:
        case 28:
        case 32:
          goto LABEL_44;
        case 23:
        case 25:
          if (v38 >= 0xAu)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 29:
          if (v38 >= 3u)
          {
            goto LABEL_48;
          }

          goto LABEL_22;
        case 30:
          if (v38 >= 2u)
          {
LABEL_48:
            sub_22BF0D574(v10, v11, v12);
LABEL_47:
            *v37 = v9;
            return;
          }

LABEL_22:
          v39 = v9;
          sub_22BF0D574(v10, v11, v12);
          sub_22BEA7680(v9);
          sub_22BF0E918(&v39, &v40);
          sub_22BE63574(v9);
          sub_22BE63574(v9);
LABEL_23:
          v9 = v40;
          break;
        default:
          if (!v38)
          {
LABEL_20:
            if ((v13 - 3) <= 0x1E)
            {
              switch(v13)
              {
                case 10:
                case 12:
                case 14:
                case 17:
                case 18:
                case 20:
                case 21:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 31:
                case 32:
                  break;
                case 19:
                  goto LABEL_31;
                case 23:
                  v16 = *(v2 + 64);
                  if (v16 == 255)
                  {
                    v30 = sub_22BF0D574(v10, v11, v12);
                    Lexer.next()(&v40, v30);
                    v17 = *(&v40 + 1);
                    v18 = v40;
                    LOBYTE(v16) = v41;
                  }

                  else
                  {
                    v17 = *(v2 + 56);
                    *&v40 = *(v2 + 48);
                    v18 = v40;
                    *(&v40 + 1) = v17;
                    sub_22BF0D574(v10, v11, v12);
                    sub_22BF0D574(v18, v17, v16);
                    sub_22BF0D530(v18, v17, v16);
                    *(v2 + 48) = 0;
                    *(v2 + 56) = 0;
                    *(v2 + 64) = -1;
                  }

                  sub_22BF0D530(v18, v17, v16);
                  sub_22BEA7680(v9);
                  sub_22BF0DED8(0, &v40);
                  v31 = v40;
                  v40 = xmmword_22C28B590;
                  v41 = 6;
                  sub_22BF0F5D8(&v40);
                  sub_22BE63574(v9);
                  v8 = swift_allocObject();
                  *(v8 + 16) = v9;
                  *(v8 + 24) = v31;
                  v9 = v8 | 0x6000000000000000;
                  continue;
                case 25:
                  v19 = *(v2 + 64);
                  if (v19 == 255)
                  {
                    v32 = sub_22BF0D574(v10, v11, v12);
                    Lexer.next()(&v40, v32);
                    v20 = *(&v40 + 1);
                    v21 = v40;
                    LOBYTE(v19) = v41;
                  }

                  else
                  {
                    v20 = *(v2 + 56);
                    *&v40 = *(v2 + 48);
                    v21 = v40;
                    *(&v40 + 1) = v20;
                    sub_22BF0D574(v10, v11, v12);
                    sub_22BF0D574(v21, v20, v19);
                    sub_22BF0D530(v21, v20, v19);
                    *(v2 + 48) = 0;
                    *(v2 + 56) = 0;
                    *(v2 + 64) = -1;
                  }

                  sub_22BF0D530(v21, v20, v19);
                  v39 = v9;
                  sub_22BEA7680(v9);
                  sub_22BF0E69C(&v39, &v40);
                  sub_22BE63574(v9);
                  sub_22BE63574(v9);
                  goto LABEL_23;
                default:
                  goto LABEL_22;
              }
            }
          }

LABEL_45:
          sub_22BF0D574(v10, v11, v12);
          v33 = v13;
          v34 = v14;
          v35 = 6;
          goto LABEL_46;
      }
    }

LABEL_44:
    sub_22BF0D574(v10, v11, v12);
    v33 = v13;
    v34 = v14;
    v35 = v15;
LABEL_46:
    sub_22BF0CE34(v33, v34, v35);
    goto LABEL_47;
  }
}

uint64_t sub_22BF0FDA8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v92 = *a1;
  v4 = *(a1 + 16);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v98 = (v1 + 48);
  v7 = *(v1 + 64);
  LOBYTE(v8) = *(v1 + 64);
  v9 = v6;
  v10 = v5;
  v90 = v3;
  v91 = v4;
  if (v7 == 255)
  {
    Lexer.next()(&v95, a1);
    v10 = v95;
    v9 = v96;
    v8 = v97;
    v11 = sub_22BE3E574();
    sub_22BF0D530(v11, v12, v13);
    *(v1 + 48) = v10;
    *(v1 + 56) = v9;
    *(v1 + 64) = v8;
    v14 = sub_22BE189A4();
    sub_22BF0D574(v14, v15, v16);
    if (v8 == 255)
    {
      sub_22BF0D574(v5, v6, 0xFFu);
      if (v91 == 255)
      {
        sub_22BF0CE18(v92, v3, 0xFFu);
        sub_22BF0D530(v10, v9, 0xFFu);
        goto LABEL_6;
      }

      v18 = v92;
      v42 = sub_22BE194C4();
      sub_22BF0CE18(v42, v43, v44);
      goto LABEL_10;
    }

    v4 = v91;
  }

  v95 = v10;
  v96 = v9;
  v97 = v8;
  if (v4 == 255)
  {
    sub_22BE25228();
    sub_22BF0D574(v31, v32, v33);
    v18 = v92;
    v34 = sub_22BE194C4();
    sub_22BF0CE18(v34, v35, 0xFFu);
    v36 = sub_22BE189A4();
    sub_22BF0D574(v36, v37, v38);
    v39 = sub_22BE189A4();
    sub_22BF0CE34(v39, v40, v41);
LABEL_10:
    v45 = sub_22BE189A4();
    sub_22BF0D530(v45, v46, v47);
    v48 = sub_22BE194C4();
    sub_22BF0D530(v48, v49, v91);
    goto LABEL_11;
  }

  *&v93 = v92;
  *(&v93 + 1) = v3;
  v94 = v4;
  v17 = v5;
  v18 = v92;
  v19 = v6;
  v20 = v4;
  sub_22BF0D574(v17, v19, v7);
  v21 = sub_22BE194C4();
  sub_22BF0CE18(v21, v22, v20);
  v23 = sub_22BE189A4();
  sub_22BF0D574(v23, v24, v25);
  v26 = static Lexer.Token.== infix(_:_:)(&v95, &v93);
  sub_22BF0CE34(v93, *(&v93 + 1), v94);
  sub_22BF0CE34(v95, v96, v97);
  v27 = sub_22BE189A4();
  sub_22BF0D530(v27, v28, v29);
  if (v26)
  {
LABEL_6:
    sub_22BF0D33C(&v95, v30);
    sub_22BF0D530(v95, v96, v97);
    return MEMORY[0x277D84F90];
  }

LABEL_11:
  sub_22BE3C37C();
  if (!v2)
  {
    v50 = v95;
    sub_22BEA7680(v95);
    sub_22BE66AE8(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = v51;
    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_22BF10630(v52);
      v18 = v51;
    }

    *(v18 + 16) = v53 + 1;
    v89 = v50;
    *(v18 + 8 * v53 + 32) = v50;
    while (1)
    {
      v54 = *(v1 + 48);
      v55 = *(v1 + 56);
      v56 = *(v1 + 64);
      LOBYTE(v57) = *(v1 + 64);
      v58 = v55;
      v59 = v54;
      if (v56 == 255)
      {
        Lexer.next()(&v95, v51);
        v59 = v95;
        v58 = v96;
        v57 = v97;
        v60 = sub_22BE3E574();
        sub_22BF0D530(v60, v61, v62);
        *(v1 + 48) = v59;
        *(v1 + 56) = v58;
        *(v1 + 64) = v57;
        v63 = sub_22BE18D3C();
        sub_22BF0D574(v63, v64, v65);
        if (v57 == 255)
        {
          break;
        }
      }

      v95 = v59;
      v96 = v58;
      v97 = v57;
      v93 = xmmword_22C28B570;
      v94 = 6;
      sub_22BF0D574(v54, v55, v56);
      v66 = sub_22BE18D3C();
      sub_22BF0D574(v66, v67, v68);
      v69 = static Lexer.Token.== infix(_:_:)(&v95, &v93);
      sub_22BF0CE34(v93, *(&v93 + 1), v94);
      sub_22BF0CE34(v95, v96, v97);
      v70 = sub_22BE18D3C();
      sub_22BF0D530(v70, v71, v72);
      if ((v69 & 1) == 0)
      {
        goto LABEL_26;
      }

      v74 = *(v1 + 64);
      if (v74 == 255)
      {
        Lexer.next()(&v95, v73);
        LOBYTE(v74) = v97;
      }

      else
      {
        v75 = *(v1 + 56);
        v95 = *(v1 + 48);
        v96 = v75;
        v97 = v74;
        v76 = sub_22BE1AB1C();
        sub_22BF0CE18(v76, v77, v74);
        v78 = sub_22BE1AB1C();
        sub_22BF0D530(v78, v79, v74);
        v80 = v98;
        *v98 = 0;
        v80[1] = 0;
        *(v1 + 64) = -1;
      }

      v81 = sub_22BE1AB1C();
      sub_22BF0D530(v81, v82, v74);
      v51 = sub_22BE3C37C();
      v83 = v95;
      v85 = *(v18 + 16);
      v84 = *(v18 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_22BF10630(v84);
        v18 = v51;
      }

      *(v18 + 16) = v85 + 1;
      *(v18 + 8 * v85 + 32) = v83;
    }

    sub_22BF0D574(v54, v55, 0xFFu);
    v86 = sub_22BE191C0();
    sub_22BF0D530(v86, v87, 0xFFu);
    sub_22BF0D530(26, 0, 6u);
LABEL_26:
    sub_22BF0D3C4(v73);
    v95 = v92;
    v96 = v90;
    v97 = v91;
    sub_22BF0F5D8(&v95);
    sub_22BE63574(v89);
  }

  return v18;
}

uint64_t sub_22BF1023C(uint64_t a1)
{
  v2 = sub_22BF105D8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BF10278(uint64_t a1)
{
  v2 = sub_22BF105D8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BF102B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BF102D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BF10310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22BF10374()
{
  result = qword_27D90B118;
  if (!qword_27D90B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B118);
  }

  return result;
}

unint64_t sub_22BF103C8()
{
  result = qword_27D90B120;
  if (!qword_27D90B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Parser.ParseError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Parser.ParseError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BF10584()
{
  result = qword_27D90B128;
  if (!qword_27D90B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B128);
  }

  return result;
}

unint64_t sub_22BF105D8()
{
  result = qword_27D90B130;
  if (!qword_27D90B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B130);
  }

  return result;
}

void sub_22BF10630(unint64_t a1@<X8>)
{

  sub_22BE66AE8(a1 > 1, v1, 1, v2);
}

double sub_22BF10654()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return sub_22BF0D530(v2, v3, v4);
}

uint64_t sub_22BF1066C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_22BE5CE4C(&qword_27D90B150, &qword_22C28BB50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_22BE5CE4C(&qword_27D90B110, &qword_22C28B538);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  if (qword_27D906368 != -1)
  {
    swift_once();
  }

  v16 = sub_22BE5CE4C(&qword_27D90B100, &qword_22C28B530);
  sub_22BE199F4(v16, qword_27D90B138);
  sub_22BF051B4();
  if (sub_22BE1AEA8(v11, 1, v12) == 1)
  {
    v12 = 0x544C5541464544;
    sub_22BF10AC8(v11);
    v17 = a1 == 0x544C5541464544 && a2 == 0xE700000000000000;
    if (v17 || (sub_22C274014() & 1) != 0)
    {
      sub_22C26E684();
      sub_22BE17C40(v8);
      v18 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
      sub_22BE18D4C(v18);
      *a3 = a1;
      a3[1] = a2;
      a3[2] = 0;
      a3[3] = 0;
    }

    else
    {
      String.toCamelCase.getter(a1, a2);
      v36 = v35;
      v38 = v37;
      sub_22C26E684();
      sub_22BE17C40(v8);
      v39 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
      sub_22BE18D4C(v39);
      *a3 = v36;
      a3[1] = v38;
      a3[2] = 0;
      a3[3] = 0;
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    swift_getKeyPath();
    sub_22C2702E4();

    v19 = MEMORY[0x2318AB7C0](v40, v41, v42, v43);
    v21 = v20;

    String.toCamelCase.getter(v19, v21);
    v23 = v22;
    v25 = v24;

    swift_getKeyPath();
    sub_22C2702E4();

    v26 = MEMORY[0x2318AB7C0](v40, v41, v42, v43);
    v28 = v27;

    String.toCamelCase.getter(v26, v28);
    v30 = v29;
    v32 = v31;

    (*(v13 + 8))(v15, v12);
    sub_22C26E684();
    sub_22BE17C40(v8);
    v33 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
    sub_22BE18D4C(v33);
    *a3 = v23;
    a3[1] = v25;
    a3[2] = v30;
    a3[3] = v32;
  }

  return sub_22BF10B30(v8, v12);
}

uint64_t sub_22BF10A38()
{
  v0 = sub_22BE5CE4C(&qword_27D90B100, &qword_22C28B530);
  sub_22BE952A4(v0, qword_27D90B138);
  sub_22BE199F4(v0, qword_27D90B138);
  sub_22BE5CE4C(&qword_27D90B158, &qword_22C28BB98);
  return sub_22C2702C4();
}

uint64_t sub_22BF10AC8(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B150, &qword_22C28BB50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BF10B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void ParticipantID.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_22BF10BF8@<X0>(Swift::String *a1@<X0>, IntelligenceFlowPlannerSupport::ParticipantID *a2@<X8>)
{
  v4 = ParticipantID.init(stringLiteral:)(*a1);
  result = v4.name._countAndFlagsBits;
  *a2 = v4;
  return result;
}

unint64_t sub_22BF10DD0()
{
  result = qword_28107C8C0;
  if (!qword_28107C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C8C0);
  }

  return result;
}

unint64_t sub_22BF10E28()
{
  result = qword_27D90B160;
  if (!qword_27D90B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B160);
  }

  return result;
}

unint64_t sub_22BF10E8C()
{
  result = qword_27D90B168;
  if (!qword_27D90B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B168);
  }

  return result;
}

unint64_t sub_22BF10EFC()
{
  result = qword_27D90B170;
  if (!qword_27D90B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B170);
  }

  return result;
}

uint64_t sub_22BF10F50@<X0>(uint64_t a1@<X0>, IntelligenceFlowPlannerSupport::ParticipantID *a2@<X8>)
{
  v5 = ParticipantID.init(stringLiteral:)(*&a1);
  result = v5.name._countAndFlagsBits;
  *a2 = v5;
  return result;
}

__n128 Session.SessionIdentityToken.untrustedAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 Session.SessionIdentityToken.init(untrustedAuditToken:identityToken:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  return result;
}

uint64_t static SessionInjectionContext<>.inherited.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28107B210 != -1)
  {
    swift_once();
  }

  sub_22C2742D4();
  if (*&__src[24] == 1)
  {
    __dst[0] = 0;
    LOBYTE(__dst[1]) = 1;
    memset(&__dst[2], 0, 72);
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
  }

  sub_22BF13370(&__dst[6], __src);
  result = sub_22BE341BC(__dst);
  v6[0] = *__src;
  v6[1] = *&__src[16];
  v7 = *&__src[32];
  v3 = *&__src[24];
  if (*&__src[24])
  {
    v4 = swift_allocObject();
    result = sub_22BE49224(v6, v4 + 16);
    v3 = &protocol witness table for AnySessionInjectionContext;
    v5 = &type metadata for AnySessionInjectionContext;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v5;
  a1[4] = v3;
  return result;
}

uint64_t static SessionInjection.request<A, B>(id:instanceId:_:_:injectionContext:with:isolatedTo:expecting:)()
{
  sub_22BE183FC();
  *(v0 + 240) = v23;
  *(v0 + 208) = v21;
  *(v0 + 224) = v22;
  *(v0 + 192) = v19;
  *(v0 + 200) = v20;
  *(v0 + 176) = v17;
  *(v0 + 184) = v18;
  *(v0 + 160) = v15;
  *(v0 + 168) = v16;
  *(v0 + 144) = v1;
  *(v0 + 152) = v2;
  *(v0 + 128) = v3;
  *(v0 + 136) = v4;
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  *(v0 + 96) = v7;
  *(v0 + 104) = v8;
  *(v0 + 248) = sub_22C2720A4();
  sub_22BE189B4();
  *(v0 + 256) = v9;
  *(v0 + 264) = sub_22BE25184();
  *(v0 + 272) = sub_22C273844();
  sub_22BE189B4();
  *(v0 + 280) = v10;
  *(v0 + 288) = sub_22BE25184();
  if (v17)
  {
    swift_getObjectType();
    sub_22C2735D4();
    sub_22BE38314();
  }

  else
  {
    sub_22BE1A240();
  }

  *(v0 + 296) = v12;
  *(v0 + 304) = v11;

  return MEMORY[0x2822009F8](sub_22BF11260, v12, v11);
}

uint64_t sub_22BF11260()
{
  sub_22BF13370(*(v0 + 160), v0 + 56);
  if (*(v0 + 80))
  {
    sub_22BE49224((v0 + 56), v0 + 16);
    sub_22BE1B378((v0 + 16));
    sub_22BE189B4();
    v7 = v1 + *v1;
    v2 = swift_task_alloc();
    *(v0 + 312) = v2;
    *v2 = v0;
    v2[1] = sub_22BF11440;

    __asm { BRAA            X8, X16 }
  }

  v3 = *(v0 + 200);
  v4 = *(v0 + 96);
  sub_22BF133E0(v0 + 56);
  sub_22BE19DC4(v4, 1, 1, v3);

  sub_22BE17A94();

  return v5();
}

uint64_t sub_22BF11440()
{
  sub_22BE183F0();
  sub_22BE23CA8();
  v2 = *v1;
  sub_22BE18C2C();
  *v3 = v2;

  sub_22BE1BA20();
  v5 = *(v4 + 304);
  v6 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_22BF1154C, v6, v5);
}

uint64_t sub_22BF1154C()
{
  v18 = v0;
  if (sub_22BE1AEA8(v0[36], 1, v0[25]) == 1)
  {
    sub_22C271B64();

    v1 = sub_22C272084();
    v2 = sub_22C273794();

    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[32];
    v4 = v0[33];
    v6 = v0[31];
    if (v3)
    {
      v14 = v0[18];
      v15 = v0[19];
      v7 = v0[17];
      v9 = v0[13];
      v8 = v0[14];
      v10 = swift_slowAlloc();
      v16 = v4;
      v17 = swift_slowAlloc();
      v11 = v17;
      *v10 = 136315650;
      *(v10 + 4) = sub_22BE61C88(v9, v8, &v17);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_22BE61C88(v7, v14, &v17);
      *(v10 + 22) = 2048;
      *(v10 + 24) = v15;
      _os_log_impl(&dword_22BE15000, v1, v2, "Injection value was not provided for InjectionPoint %s @ %s:%ld", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318AD180](v11, -1, -1);
      MEMORY[0x2318AD180](v10, -1, -1);

      (*(v5 + 8))(v16, v6);
    }

    else
    {

      (*(v5 + 8))(v4, v6);
    }
  }

  (*(v0[35] + 32))(v0[12], v0[36], v0[34]);
  sub_22BE26B64(v0 + 2);

  sub_22BE17A94();

  return v12();
}

uint64_t static SessionInjection.capture<A>(id:instanceId:_:_:injectionContext:value:isolatedTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  sub_22BE183F0();
  *(v13 + 200) = a13;
  *(v13 + 184) = a12;
  *(v13 + 168) = a10;
  *(v13 + 176) = a11;
  *(v13 + 152) = v14;
  *(v13 + 160) = a9;
  *(v13 + 136) = v15;
  *(v13 + 144) = v16;
  *(v13 + 120) = v17;
  *(v13 + 128) = v18;
  *(v13 + 104) = v19;
  *(v13 + 112) = v20;
  *(v13 + 96) = v21;
  if (a10)
  {
    swift_getObjectType();
    sub_22C2735D4();
    sub_22BE38314();
  }

  else
  {
    sub_22BE1A240();
  }

  *(v13 + 208) = v23;
  *(v13 + 216) = v22;
  return sub_22BE236E0(sub_22BF11814, v23, v22);
}

uint64_t sub_22BF11814()
{
  sub_22BE183FC();
  sub_22BF13370(*(v0 + 152), v0 + 56);
  if (*(v0 + 80))
  {
    sub_22BE49224((v0 + 56), v0 + 16);
    sub_22BE1B378((v0 + 16));
    sub_22BE189B4();
    v1 = swift_task_alloc();
    *(v0 + 224) = v1;
    *v1 = v0;
    v1[1] = sub_22BF119A0;
    sub_22BF1389C(*(v0 + 96));

    __asm { BRAA            X8, X16 }
  }

  sub_22BF133E0(v0 + 56);
  sub_22BE17A94();

  return v3();
}

uint64_t sub_22BF119A0()
{
  sub_22BE183F0();
  sub_22BE23CA8();
  v2 = *v1;
  sub_22BE18C2C();
  *v3 = v2;

  sub_22BE1BA20();
  v5 = *(v4 + 216);
  v6 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_22BF11AAC, v6, v5);
}

uint64_t sub_22BF11AAC()
{
  sub_22BE183F0();
  sub_22BE26B64((v0 + 16));
  sub_22BE17A94();

  return v1();
}

uint64_t _s30IntelligenceFlowPlannerSupport16SessionInjectionO7perform2id10instanceId__16injectionContext4with10isolatedTo_xSS_SSSgSSSiAA0efL0_pSgq_ScA_pSgYixq_q0_YKXEtYaq0_YKSeRzSERzSeR_SER_s5ErrorR0_r1_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v23[16] = a19;
  v23[17] = a23;
  v23[14] = a17;
  v23[15] = a18;
  v23[12] = a14;
  v23[13] = a15;
  v23[10] = a12;
  v23[11] = a13;
  v23[8] = a10;
  v23[9] = a11;
  v23[6] = a5;
  v23[7] = a9;
  v23[4] = a3;
  v23[5] = a4;
  v23[2] = a1;
  v23[3] = a2;
  v23[18] = *(a17 - 8);
  v23[19] = sub_22BE25184();
  sub_22BE17C68();
  v23[20] = v24;
  v23[21] = sub_22BE25184();
  v23[22] = sub_22C273844();
  sub_22BE189B4();
  v23[23] = v25;
  v23[24] = sub_22BE25184();
  v26 = swift_task_alloc();
  v23[25] = v26;
  *v26 = v23;
  v26[1] = sub_22BF11D3C;
  return sub_22BE269A8();
}

uint64_t sub_22BF11D3C()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v2 = v1;
  sub_22BE18800();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v0;
  sub_22BE18C2C();
  *v7 = v6;

  if (v5)
  {
    swift_getObjectType();
    sub_22C2735D4();
    sub_22BE38314();
  }

  else
  {
    sub_22BE1A240();
  }

  *(v2 + 208) = v9;
  *(v2 + 216) = v8;

  return MEMORY[0x2822009F8](sub_22BF11E64, v9, v8);
}

uint64_t sub_22BF11E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  sub_22BE2035C();
  v14 = v13[24];
  v15 = v13[13];
  if (sub_22BE1AEA8(v14, 1, v15) == 1)
  {
    v16 = v13[19];
    v17 = v13[11];
    v18 = v13[8];
    (*(v13[23] + 8))(v14, v13[22]);
    v17(v18, v16);
    v21 = swift_task_alloc();
    v13[28] = v21;
    *v21 = v13;
    v21[1] = sub_22BF1205C;
    v22 = sub_22BE1A638(v13[3]);

    return static SessionInjection.capture<A>(id:instanceId:_:_:injectionContext:value:isolatedTo:)(v22, v23, v24, v25, v26, v27, 120, v28, a9, a10, a11, a12, a13);
  }

  else
  {
    (*(v13[20] + 32))(v13[2], v14, v15);

    sub_22BE17A94();

    return v19();
  }
}

uint64_t sub_22BF1205C()
{
  sub_22BE183F0();
  sub_22BE23CA8();
  v2 = *v1;
  sub_22BE18C2C();
  *v3 = v2;

  sub_22BE1BA20();
  v5 = *(v4 + 216);
  v6 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_22BF12168, v6, v5);
}

uint64_t sub_22BF12168()
{
  sub_22BE183FC();
  (*(v0[20] + 32))(v0[2], v0[21], v0[13]);

  sub_22BE17A94();

  return v1();
}

uint64_t _s30IntelligenceFlowPlannerSupport16SessionInjectionO7perform2id10instanceId__16injectionContext4with10isolatedTo_xSS_SSSgSSSiAA0efL0_pSgq_nScA_pSgYixq_nYuYaq0_YKYTXEtYaq0_YKSeRzSERzSeR_SER_s5ErrorR0_r1_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v23[17] = a19;
  v23[18] = a23;
  v23[15] = a17;
  v23[16] = a18;
  v23[13] = a15;
  v23[14] = a16;
  v23[11] = a13;
  v23[12] = a14;
  v23[9] = a11;
  v23[10] = a12;
  v23[7] = a9;
  v23[8] = a10;
  v23[5] = a4;
  v23[6] = a5;
  v23[3] = a2;
  v23[4] = a3;
  v23[2] = a1;
  v23[19] = *(a17 - 8);
  v23[20] = sub_22BE25184();
  sub_22BE17C68();
  v23[21] = v24;
  v23[22] = sub_22BE25184();
  sub_22BE17C68();
  v23[23] = v25;
  v23[24] = sub_22BE25184();
  v23[25] = sub_22C273844();
  sub_22BE189B4();
  v23[26] = v26;
  v23[27] = sub_22BE25184();
  v27 = swift_task_alloc();
  v23[28] = v27;
  *v27 = v23;
  v27[1] = sub_22BF1246C;
  return sub_22BE269A8();
}

uint64_t sub_22BF1246C()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v2 = v1;
  sub_22BE18800();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v0;
  sub_22BE18C2C();
  *v7 = v6;

  if (v5)
  {
    swift_getObjectType();
    sub_22C2735D4();
    sub_22BE38314();
  }

  else
  {
    sub_22BE1A240();
  }

  *(v2 + 232) = v9;
  *(v2 + 240) = v8;

  return MEMORY[0x2822009F8](sub_22BF12594, v9, v8);
}

void sub_22BF12594()
{
  sub_22BE2035C();
  v1 = v0[27];
  v2 = v0[13];
  if (sub_22BE1AEA8(v1, 1, v2) == 1)
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[14];
    v6 = v0[8];
    (*(v0[26] + 8))(v1, v0[25]);
    (*(v4 + 16))(v3, v6, v5);
    v7 = swift_task_alloc();
    v0[31] = v7;
    *v7 = v0;
    v7[1] = sub_22BF12794;
    sub_22BE1C2F8();

    __asm { BRAA            X3, X16 }
  }

  v10 = v0[23];
  v11 = v0[2];
  (*(v0[21] + 8))(v0[8], v0[14]);
  (*(v10 + 32))(v11, v1, v2);

  sub_22BE17A94();
  sub_22BE1C2F8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22BF12794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  sub_22BE183F0();
  sub_22BE190F0();
  v16 = v15;
  sub_22BE18800();
  *v17 = v16;
  v18 = *v14;
  sub_22BE18C2C();
  *v19 = v18;

  if (v13)
  {
    v20 = v16[29];
    v21 = v16[30];

    return MEMORY[0x2822009F8](sub_22BF12AE4, v20, v21);
  }

  else
  {
    v22 = swift_task_alloc();
    v16[32] = v22;
    *v22 = v18;
    v22[1] = sub_22BF1290C;
    v23 = sub_22BE1A638(v16[3]);

    return static SessionInjection.capture<A>(id:instanceId:_:_:injectionContext:value:isolatedTo:)(v23, v24, v25, v26, v27, v28, 158, v29, a9, a10, a11, a12, a13);
  }
}

uint64_t sub_22BF1290C()
{
  sub_22BE183F0();
  sub_22BE23CA8();
  v2 = *v1;
  sub_22BE18C2C();
  *v3 = v2;

  sub_22BE1BA20();
  v5 = *(v4 + 240);
  v6 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_22BF12A18, v6, v5);
}

void sub_22BF12A18()
{
  sub_22BE2035C();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[13];
  v4 = v0[2];
  (*(v0[21] + 8))(v0[8], v0[14]);
  (*(v2 + 32))(v4, v1, v3);

  sub_22BE17A94();
  sub_22BE1C2F8();

  __asm { BRAA            X1, X16 }
}

void sub_22BF12AE4()
{
  sub_22BE2035C();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  (*(v0[21] + 8))(v0[8], v0[14]);
  (*(v2 + 32))(v3, v1, v4);

  sub_22BE17A94();
  sub_22BE1C2F8();

  __asm { BRAA            X1, X16 }
}

uint64_t AnySessionInjectionContext.request<A, B>(id:instanceId:file:line:isolatedTo:with:expecting:)()
{
  sub_22BE183FC();
  *(v1 + 152) = v21;
  *(v1 + 160) = v0;
  *(v1 + 144) = v20;
  *(v1 + 112) = v18;
  *(v1 + 128) = v19;
  *(v1 + 96) = v17;
  *(v1 + 80) = v15;
  *(v1 + 88) = v16;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  if (v15)
  {
    swift_getObjectType();
    v10 = sub_22C2735D4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  return MEMORY[0x2822009F8](sub_22BF12C7C, v10, v12);
}

void sub_22BF12C7C()
{
  sub_22BE1B378(*(v0 + 160));
  sub_22BE189B4();
  v3 = v1 + *v1;
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_22BF12DBC;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BF12DBC()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v1 = *v0;
  sub_22BE18C2C();
  *v2 = v1;

  sub_22BE17A94();

  return v3();
}

uint64_t AnySessionInjectionContext.capture<A>(id:instanceId:file:line:isolatedTo:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  sub_22BE183FC();
  *(v13 + 112) = a12;
  *(v13 + 120) = v12;
  *(v13 + 104) = a11;
  *(v13 + 88) = a10;
  *(v13 + 72) = v14;
  *(v13 + 80) = a9;
  *(v13 + 56) = v15;
  *(v13 + 64) = v16;
  *(v13 + 40) = v17;
  *(v13 + 48) = v18;
  *(v13 + 24) = v19;
  *(v13 + 32) = v20;
  *(v13 + 16) = v21;
  if (v14)
  {
    swift_getObjectType();
    v22 = sub_22C2735D4();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  return sub_22BE236E0(sub_22BF12F4C, v22, v24);
}

void sub_22BF12F4C()
{
  sub_22BE183FC();
  sub_22BE1B378(*(v0 + 120));
  sub_22BE189B4();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_22BF13078;
  sub_22BF1389C(*(v0 + 16));

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BF13078()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v1 = *v0;
  sub_22BE18C2C();
  *v2 = v1;

  sub_22BE17A94();

  return v3();
}

uint64_t sub_22BF13158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return AnySessionInjectionContext.request<A, B>(id:instanceId:file:line:isolatedTo:with:expecting:)();
}

uint64_t sub_22BF13270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, __int128 a10)
{
  v15 = swift_task_alloc();
  *(v10 + 16) = v15;
  *v15 = v10;
  v15[1] = sub_22BE40D78;

  return AnySessionInjectionContext.capture<A>(id:instanceId:file:line:isolatedTo:value:)(a1, a2, a3, a4, a5, a6, a7, a8, v22, __PAIR128__(a9, v23), a10, *(&a10 + 1));
}

uint64_t sub_22BF13370(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B178, &qword_22C28BE40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF133E0(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B178, &qword_22C28BE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SessionInjection(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of SessionInjectionContext.request<A, B>(id:instanceId:file:line:isolatedTo:with:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE189B4();
  v24 = (v21 + *v21);
  v22 = swift_task_alloc();
  *(v20 + 16) = v22;
  *v22 = v20;
  v22[1] = sub_22BE40CC8;

  return v24(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t dispatch thunk of SessionInjectionContext.capture<A>(id:instanceId:file:line:isolatedTo:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_22BE189B4();
  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v15 + 16) = v19;
  *v19 = v15;
  v19[1] = sub_22BE40D78;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_22BF13804(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BF13844(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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