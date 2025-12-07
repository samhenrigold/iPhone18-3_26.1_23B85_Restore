unint64_t sub_24EDE58C8()
{
  result = qword_27F230410;
  if (!qword_27F230410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230410);
  }

  return result;
}

uint64_t sub_24EDE592C(uint64_t a1)
{
  v2 = sub_24EDE5FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE5968(uint64_t a1)
{
  v2 = sub_24EDE5FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE59A4(uint64_t a1)
{
  v2 = sub_24EDE5F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE59E0(uint64_t a1)
{
  v2 = sub_24EDE5F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE5A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EDE5A9C(uint64_t a1)
{
  v2 = sub_24EDE5F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE5AD8(uint64_t a1)
{
  v2 = sub_24EDE5F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShelfGridDesign.GridItemWidth.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230418, &qword_24F9A0A78);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230420, &qword_24F9A0A80);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230428, &qword_24F9A0A88);
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230430, &qword_24F9A0A90);
  v12 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v14 = &v23 - v13;
  v30 = *v2;
  v15 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDE58C8();
  sub_24F92D128();
  v16 = (v12 + 8);
  if (v15)
  {
    if (v15 == 1)
    {
      LOBYTE(v32) = 1;
      sub_24EDE5F98();
      v17 = v31;
      sub_24F92CC98();
      v32 = v30;
      sub_24E620F7C();
      v18 = v26;
      sub_24F92CD48();
      v19 = *(v25 + 8);
      v20 = v8;
    }

    else
    {
      LOBYTE(v32) = 2;
      sub_24EDE5F44();
      v21 = v27;
      v17 = v31;
      sub_24F92CC98();
      v32 = v30;
      sub_24E620F7C();
      v18 = v29;
      sub_24F92CD48();
      v19 = *(v28 + 8);
      v20 = v21;
    }

    v19(v20, v18);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_24EDE5FEC();
    v17 = v31;
    sub_24F92CC98();
    v32 = v30;
    sub_24E620F7C();
    sub_24F92CD48();
    (*(v24 + 8))(v11, v9);
  }

  return (*v16)(v14, v17);
}

unint64_t sub_24EDE5F44()
{
  result = qword_27F230438;
  if (!qword_27F230438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230438);
  }

  return result;
}

unint64_t sub_24EDE5F98()
{
  result = qword_27F230440;
  if (!qword_27F230440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230440);
  }

  return result;
}

unint64_t sub_24EDE5FEC()
{
  result = qword_27F230448;
  if (!qword_27F230448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230448);
  }

  return result;
}

unint64_t sub_24EDE6040(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x416E6769736564;
      break;
    case 2:
      result = 0x426E6769736564;
      break;
    case 3:
      result = 0x436E6769736564;
      break;
    case 4:
      result = 0x446E6769736564;
      break;
    case 5:
      result = 0x4C7972617262696CLL;
      break;
    case 6:
      result = 0x7262694C656D6167;
      break;
    case 7:
      result = 0x65756E69746E6F63;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x5279616C7265766FLL;
      break;
    case 11:
      result = 0x746E6F7A69726F68;
      break;
    case 12:
      result = 0x6C61636974726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EDE6230@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EDEB81C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EDE6258(uint64_t a1)
{
  v2 = sub_24EDE7924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6294(uint64_t a1)
{
  v2 = sub_24EDE7924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE62D0(uint64_t a1)
{
  v2 = sub_24EDE7B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE630C(uint64_t a1)
{
  v2 = sub_24EDE7B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6348(uint64_t a1)
{
  v2 = sub_24EDE7DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6384(uint64_t a1)
{
  v2 = sub_24EDE7DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE63C0(uint64_t a1)
{
  v2 = sub_24EDE7D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE63FC(uint64_t a1)
{
  v2 = sub_24EDE7D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6438(uint64_t a1)
{
  v2 = sub_24EDE7D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6474(uint64_t a1)
{
  v2 = sub_24EDE7D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE64B0(uint64_t a1)
{
  v2 = sub_24EDE7CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE64EC(uint64_t a1)
{
  v2 = sub_24EDE7CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6528(uint64_t a1)
{
  v2 = sub_24EDE7C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6564(uint64_t a1)
{
  v2 = sub_24EDE7C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE65A0(uint64_t a1)
{
  v2 = sub_24EDE7AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE65DC(uint64_t a1)
{
  v2 = sub_24EDE7AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6618(uint64_t a1)
{
  v2 = sub_24EDE7BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6654(uint64_t a1)
{
  v2 = sub_24EDE7BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6690()
{
  if (*v0)
  {
    return 0x746469576D657469;
  }

  else
  {
    return 0x726550736D657469;
  }
}

uint64_t sub_24EDE66DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726550736D657469 && a2 == 0xEE006E6D756C6F43;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746469576D657469 && a2 == 0xE900000000000068)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EDE67C8(uint64_t a1)
{
  v2 = sub_24EDE79CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6804(uint64_t a1)
{
  v2 = sub_24EDE79CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6840(uint64_t a1)
{
  v2 = sub_24EDE7C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE687C(uint64_t a1)
{
  v2 = sub_24EDE7C18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE68D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F436E6D756C6F63 && a2 == 0xEB00000000746E75)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EDE6964(uint64_t a1)
{
  v2 = sub_24EDE7A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE69A0(uint64_t a1)
{
  v2 = sub_24EDE7A74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE69DC(uint64_t a1)
{
  v2 = sub_24EDE7B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6A18(uint64_t a1)
{
  v2 = sub_24EDE7B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726550736D657469 && a2 == 0xEB00000000776F52)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EDE6B00(uint64_t a1)
{
  v2 = sub_24EDE7978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6B3C(uint64_t a1)
{
  v2 = sub_24EDE7978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShelfGridDesign.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230450, &qword_24F9A0A98);
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x28223BE20](v3);
  v79 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230458, &qword_24F9A0AA0);
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230460, &qword_24F9A0AA8);
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v48 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230468, &qword_24F9A0AB0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230470, &qword_24F9A0AB8);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v48 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230478, &qword_24F9A0AC0);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v48 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230480, &qword_24F9A0AC8);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v48 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230488, &qword_24F9A0AD0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v48 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230490, &qword_24F9A0AD8);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v48 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230498, &qword_24F9A0AE0);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2304A0, &qword_24F9A0AE8);
  v71 = *(v16 - 8);
  v72 = v16;
  MEMORY[0x28223BE20](v16);
  v70 = &v48 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2304A8, &qword_24F9A0AF0);
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2304B0, &qword_24F9A0AF8);
  v75 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2304B8, &qword_24F9A0B00);
  v25 = *(v24 - 8);
  v86 = v24;
  v87 = v25;
  MEMORY[0x28223BE20](v24);
  v26 = *v1;
  v85 = v1[1];
  v27 = *(v1 + 16);
  v28 = a1[3];
  v29 = a1;
  v31 = &v48 - v30;
  __swift_project_boxed_opaque_existential_1(v29, v28);
  sub_24EDE7924();
  sub_24F92D128();
  v32 = v27 >> 6;
  if (v27 >> 6 > 1)
  {
    if (v32 != 2)
    {
      if (v85 | v26 || v27 != 192)
      {
        if (v26 != 1 || v85 || v27 != 192)
        {
          v34 = v86;
          if (v26 == 2 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 2;
            sub_24EDE7D14();
            v40 = v70;
            sub_24F92CC98();
            (*(v71 + 8))(v40, v72);
          }

          else if (v26 == 3 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 3;
            sub_24EDE7CC0();
            v41 = v67;
            sub_24F92CC98();
            (*(v68 + 8))(v41, v69);
          }

          else if (v26 == 4 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 4;
            sub_24EDE7C6C();
            v42 = v64;
            sub_24F92CC98();
            (*(v65 + 8))(v42, v66);
          }

          else if (v26 == 5 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 5;
            sub_24EDE7C18();
            v43 = v61;
            sub_24F92CC98();
            (*(v62 + 8))(v43, v63);
          }

          else if (v26 == 6 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 6;
            sub_24EDE7BC4();
            v44 = v58;
            sub_24F92CC98();
            (*(v59 + 8))(v44, v60);
          }

          else if (v26 == 7 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 7;
            sub_24EDE7B70();
            v45 = v55;
            sub_24F92CC98();
            (*(v56 + 8))(v45, v57);
          }

          else if (v26 == 8 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 8;
            sub_24EDE7B1C();
            v46 = v49;
            sub_24F92CC98();
            (*(v50 + 8))(v46, v51);
          }

          else
          {
            LOBYTE(v89) = 9;
            sub_24EDE7AC8();
            v47 = v52;
            sub_24F92CC98();
            (*(v53 + 8))(v47, v54);
          }

          return (*(v87 + 8))(v31, v34);
        }

        LOBYTE(v89) = 1;
        sub_24EDE7D68();
        v39 = v86;
        sub_24F92CC98();
        (*(v73 + 8))(v20, v74);
      }

      else
      {
        LOBYTE(v89) = 0;
        sub_24EDE7DBC();
        v39 = v86;
        sub_24F92CC98();
        (*(v75 + 8))(v23, v21);
      }

      return (*(v87 + 8))(v31, v39);
    }

    LOBYTE(v89) = 12;
    sub_24EDE7978();
    v33 = v79;
    v34 = v86;
    sub_24F92CC98();
    v35 = v82;
    sub_24F92CD38();
    v36 = v81;
  }

  else if (v32)
  {
    LOBYTE(v89) = 11;
    sub_24EDE79CC();
    v33 = v80;
    v34 = v86;
    sub_24F92CC98();
    LOBYTE(v89) = 0;
    v35 = v84;
    v37 = v88;
    sub_24F92CD38();
    if (!v37)
    {
      v89 = v85;
      v90 = v27 & 0x3F;
      v91 = 1;
      sub_24EDE7A20();
      sub_24F92CD48();
    }

    v36 = v83;
  }

  else
  {
    LOBYTE(v89) = 10;
    sub_24EDE7A74();
    v33 = v76;
    v34 = v86;
    sub_24F92CC98();
    v35 = v78;
    sub_24F92CD38();
    v36 = v77;
  }

  (*(v36 + 8))(v33, v35);
  return (*(v87 + 8))(v31, v34);
}

unint64_t sub_24EDE7924()
{
  result = qword_27F2304C0;
  if (!qword_27F2304C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304C0);
  }

  return result;
}

unint64_t sub_24EDE7978()
{
  result = qword_27F2304C8;
  if (!qword_27F2304C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304C8);
  }

  return result;
}

unint64_t sub_24EDE79CC()
{
  result = qword_27F2304D0;
  if (!qword_27F2304D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304D0);
  }

  return result;
}

unint64_t sub_24EDE7A20()
{
  result = qword_27F2304D8;
  if (!qword_27F2304D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304D8);
  }

  return result;
}

unint64_t sub_24EDE7A74()
{
  result = qword_27F2304E0;
  if (!qword_27F2304E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304E0);
  }

  return result;
}

unint64_t sub_24EDE7AC8()
{
  result = qword_27F2304E8;
  if (!qword_27F2304E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304E8);
  }

  return result;
}

unint64_t sub_24EDE7B1C()
{
  result = qword_27F2304F0;
  if (!qword_27F2304F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304F0);
  }

  return result;
}

unint64_t sub_24EDE7B70()
{
  result = qword_27F2304F8;
  if (!qword_27F2304F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304F8);
  }

  return result;
}

unint64_t sub_24EDE7BC4()
{
  result = qword_27F230500;
  if (!qword_27F230500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230500);
  }

  return result;
}

unint64_t sub_24EDE7C18()
{
  result = qword_27F230508;
  if (!qword_27F230508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230508);
  }

  return result;
}

unint64_t sub_24EDE7C6C()
{
  result = qword_27F230510;
  if (!qword_27F230510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230510);
  }

  return result;
}

unint64_t sub_24EDE7CC0()
{
  result = qword_27F230518;
  if (!qword_27F230518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230518);
  }

  return result;
}

unint64_t sub_24EDE7D14()
{
  result = qword_27F230520;
  if (!qword_27F230520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230520);
  }

  return result;
}

unint64_t sub_24EDE7D68()
{
  result = qword_27F230528;
  if (!qword_27F230528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230528);
  }

  return result;
}

unint64_t sub_24EDE7DBC()
{
  result = qword_27F230530;
  if (!qword_27F230530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230530);
  }

  return result;
}

uint64_t ShelfGridDesign.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230538, &qword_24F9A0B08);
  v88 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v117 = &v83 - v3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230540, &qword_24F9A0B10);
  v89 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v118 = &v83 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230548, &qword_24F9A0B18);
  v87 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v116 = &v83 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230550, &qword_24F9A0B20);
  v107 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v115 = &v83 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230558, &qword_24F9A0B28);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v114 = &v83 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230560, &qword_24F9A0B30);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v113 = &v83 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230568, &qword_24F9A0B38);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v121 = &v83 - v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230570, &qword_24F9A0B40);
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v120 = &v83 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230578, &qword_24F9A0B48);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v119 = &v83 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230580, &qword_24F9A0B50);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v112 = &v83 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230588, &qword_24F9A0B58);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v111 = &v83 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230590, &qword_24F9A0B60);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v15 = &v83 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230598, &qword_24F9A0B68);
  v90 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2305A0, &unk_24F9A0B70);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v83 - v21;
  v23 = a1[3];
  v124 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24EDE7924();
  v24 = v125;
  sub_24F92D108();
  v125 = v24;
  if (v24)
  {
LABEL_8:
    v44 = v124;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v84 = v18;
  v83 = v16;
  v85 = v15;
  v25 = v119;
  v26 = v120;
  v28 = v121;
  v27 = v122;
  v86 = v20;
  v29 = v123;
  v30 = sub_24F92CC78();
  v31 = (2 * *(v30 + 16)) | 1;
  v128 = v30;
  v129 = v30 + 32;
  v130 = 0;
  v131 = v31;
  v32 = sub_24E643438();
  if (v130 != v131 >> 1)
  {
LABEL_6:
    v38 = sub_24F92C918();
    v39 = v22;
    v40 = v19;
    v41 = swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v43 = &type metadata for ShelfGridDesign;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v38 - 8) + 104))(v43, *MEMORY[0x277D84160], v38);
    v125 = v41;
    swift_willThrow();
    (*(v86 + 8))(v39, v40);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v32)
  {
    case 0:
      LOBYTE(v126) = 0;
      sub_24EDE7DBC();
      v33 = v84;
      v34 = v125;
      sub_24F92CBA8();
      v125 = v34;
      if (v34)
      {
        goto LABEL_33;
      }

      (*(v90 + 8))(v33, v83);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = 0;
      v36 = 0;
      v37 = -64;
      goto LABEL_38;
    case 1:
      LOBYTE(v126) = 1;
      sub_24EDE7D68();
      v69 = v85;
      v70 = v125;
      sub_24F92CBA8();
      v125 = v70;
      if (v70)
      {
        goto LABEL_33;
      }

      (*(v91 + 8))(v69, v92);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 1;
      goto LABEL_38;
    case 2:
      LOBYTE(v126) = 2;
      sub_24EDE7D14();
      v63 = v111;
      v64 = v125;
      sub_24F92CBA8();
      v125 = v64;
      if (v64)
      {
        goto LABEL_33;
      }

      (*(v93 + 8))(v63, v94);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 2;
      goto LABEL_38;
    case 3:
      LOBYTE(v126) = 3;
      sub_24EDE7CC0();
      v65 = v112;
      v66 = v125;
      sub_24F92CBA8();
      v125 = v66;
      if (v66)
      {
        goto LABEL_33;
      }

      (*(v95 + 8))(v65, v96);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 3;
      goto LABEL_38;
    case 4:
      LOBYTE(v126) = 4;
      sub_24EDE7C6C();
      v53 = v125;
      sub_24F92CBA8();
      v125 = v53;
      if (v53)
      {
        goto LABEL_33;
      }

      (*(v97 + 8))(v25, v98);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 4;
      goto LABEL_38;
    case 5:
      LOBYTE(v126) = 5;
      sub_24EDE7C18();
      v71 = v125;
      sub_24F92CBA8();
      v125 = v71;
      if (v71)
      {
        goto LABEL_33;
      }

      (*(v100 + 8))(v26, v99);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 5;
      goto LABEL_38;
    case 6:
      LOBYTE(v126) = 6;
      sub_24EDE7BC4();
      v72 = v125;
      sub_24F92CBA8();
      v125 = v72;
      if (v72)
      {
        goto LABEL_33;
      }

      (*(v102 + 8))(v28, v101);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 6;
      goto LABEL_38;
    case 7:
      LOBYTE(v126) = 7;
      sub_24EDE7B70();
      v67 = v113;
      v68 = v125;
      sub_24F92CBA8();
      v125 = v68;
      if (v68)
      {
        goto LABEL_33;
      }

      (*(v103 + 8))(v67, v104);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 7;
      goto LABEL_38;
    case 8:
      LOBYTE(v126) = 8;
      sub_24EDE7B1C();
      v78 = v114;
      v79 = v125;
      sub_24F92CBA8();
      v125 = v79;
      if (v79)
      {
        goto LABEL_33;
      }

      (*(v105 + 8))(v78, v106);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 8;
      goto LABEL_38;
    case 9:
      v60 = v27;
      LOBYTE(v126) = 9;
      sub_24EDE7AC8();
      v61 = v115;
      v62 = v125;
      sub_24F92CBA8();
      v125 = v62;
      if (v62)
      {
        goto LABEL_33;
      }

      (*(v107 + 8))(v61, v60);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 9;
      goto LABEL_38;
    case 10:
      LOBYTE(v126) = 10;
      sub_24EDE7A74();
      v73 = v116;
      v74 = v125;
      sub_24F92CBA8();
      v125 = v74;
      if (v74)
      {
        goto LABEL_33;
      }

      v75 = v108;
      v76 = sub_24F92CC58();
      v77 = v86;
      v125 = 0;
      v82 = v76;
      (*(v87 + 8))(v73, v75);
      (*(v77 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = v82;
      v36 = 0;
      v37 = 0;
      goto LABEL_38;
    case 11:
      LOBYTE(v126) = 11;
      sub_24EDE79CC();
      v46 = v118;
      v47 = v125;
      sub_24F92CBA8();
      v125 = v47;
      if (v47)
      {
        goto LABEL_33;
      }

      v48 = v22;
      v49 = v19;
      LOBYTE(v126) = 0;
      v50 = v110;
      v51 = sub_24F92CC58();
      v52 = v86;
      v125 = 0;
      v80 = v51;
      v132 = 1;
      sub_24EDE912C();
      v81 = v125;
      sub_24F92CC68();
      v125 = v81;
      if (v81)
      {
        (*(v89 + 8))(v46, v50);
        (*(v52 + 8))(v48, v49);
        goto LABEL_7;
      }

      (*(v89 + 8))(v46, v50);
      (*(v52 + 8))(v48, v49);
      swift_unknownObjectRelease();
      v36 = v126;
      v37 = v127 | 0x40;
      v35 = v80;
      goto LABEL_38;
    case 12:
      LOBYTE(v126) = 12;
      sub_24EDE7978();
      v54 = v117;
      v55 = v125;
      sub_24F92CBA8();
      v125 = v55;
      if (v55)
      {
LABEL_33:
        (*(v86 + 8))(v22, v19);
        goto LABEL_7;
      }

      v56 = v109;
      v57 = sub_24F92CC58();
      v58 = v86;
      v125 = 0;
      v59 = v57;
      (*(v88 + 8))(v54, v56);
      (*(v58 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = v59;
      v36 = 0;
      v37 = 0x80;
LABEL_38:
      v44 = v124;
      *v29 = v35;
      *(v29 + 8) = v36;
      *(v29 + 16) = v37;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_24EDE912C()
{
  result = qword_27F2305A8;
  if (!qword_27F2305A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShelfGridDesign(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 17))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ShelfGridDesign(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_24EDE9254(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24EDE9280(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

unint64_t sub_24EDE9400()
{
  result = qword_27F2305B0;
  if (!qword_27F2305B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305B0);
  }

  return result;
}

unint64_t sub_24EDE9458()
{
  result = qword_27F2305B8;
  if (!qword_27F2305B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305B8);
  }

  return result;
}

unint64_t sub_24EDE94B0()
{
  result = qword_27F2305C0;
  if (!qword_27F2305C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305C0);
  }

  return result;
}

unint64_t sub_24EDE9508()
{
  result = qword_27F2305C8;
  if (!qword_27F2305C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305C8);
  }

  return result;
}

unint64_t sub_24EDE9560()
{
  result = qword_27F2305D0;
  if (!qword_27F2305D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305D0);
  }

  return result;
}

unint64_t sub_24EDE95B8()
{
  result = qword_27F2305D8;
  if (!qword_27F2305D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305D8);
  }

  return result;
}

unint64_t sub_24EDE9610()
{
  result = qword_27F2305E0;
  if (!qword_27F2305E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305E0);
  }

  return result;
}

unint64_t sub_24EDE9668()
{
  result = qword_27F2305E8;
  if (!qword_27F2305E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305E8);
  }

  return result;
}

unint64_t sub_24EDE96C0()
{
  result = qword_27F2305F0;
  if (!qword_27F2305F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305F0);
  }

  return result;
}

unint64_t sub_24EDE9718()
{
  result = qword_27F2305F8;
  if (!qword_27F2305F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305F8);
  }

  return result;
}

unint64_t sub_24EDE9770()
{
  result = qword_27F230600;
  if (!qword_27F230600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230600);
  }

  return result;
}

unint64_t sub_24EDE97C8()
{
  result = qword_27F230608;
  if (!qword_27F230608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230608);
  }

  return result;
}

unint64_t sub_24EDE9820()
{
  result = qword_27F230610;
  if (!qword_27F230610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230610);
  }

  return result;
}

unint64_t sub_24EDE9878()
{
  result = qword_27F230618;
  if (!qword_27F230618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230618);
  }

  return result;
}

unint64_t sub_24EDE98D0()
{
  result = qword_27F230620;
  if (!qword_27F230620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230620);
  }

  return result;
}

unint64_t sub_24EDE9928()
{
  result = qword_27F230628;
  if (!qword_27F230628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230628);
  }

  return result;
}

unint64_t sub_24EDE9980()
{
  result = qword_27F230630;
  if (!qword_27F230630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230630);
  }

  return result;
}

unint64_t sub_24EDE99D8()
{
  result = qword_27F230638;
  if (!qword_27F230638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230638);
  }

  return result;
}

unint64_t sub_24EDE9A30()
{
  result = qword_27F230640;
  if (!qword_27F230640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230640);
  }

  return result;
}

unint64_t sub_24EDE9A88()
{
  result = qword_27F230648;
  if (!qword_27F230648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230648);
  }

  return result;
}

unint64_t sub_24EDE9AE0()
{
  result = qword_27F230650;
  if (!qword_27F230650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230650);
  }

  return result;
}

unint64_t sub_24EDE9B38()
{
  result = qword_27F230658;
  if (!qword_27F230658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230658);
  }

  return result;
}

unint64_t sub_24EDE9B90()
{
  result = qword_27F230660;
  if (!qword_27F230660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230660);
  }

  return result;
}

unint64_t sub_24EDE9BE8()
{
  result = qword_27F230668;
  if (!qword_27F230668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230668);
  }

  return result;
}

unint64_t sub_24EDE9C40()
{
  result = qword_27F230670;
  if (!qword_27F230670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230670);
  }

  return result;
}

unint64_t sub_24EDE9C98()
{
  result = qword_27F230678;
  if (!qword_27F230678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230678);
  }

  return result;
}

unint64_t sub_24EDE9CF0()
{
  result = qword_27F230680;
  if (!qword_27F230680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230680);
  }

  return result;
}

unint64_t sub_24EDE9D48()
{
  result = qword_27F230688;
  if (!qword_27F230688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230688);
  }

  return result;
}

unint64_t sub_24EDE9DA0()
{
  result = qword_27F230690;
  if (!qword_27F230690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230690);
  }

  return result;
}

unint64_t sub_24EDE9DF8()
{
  result = qword_27F230698;
  if (!qword_27F230698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230698);
  }

  return result;
}

unint64_t sub_24EDE9E50()
{
  result = qword_27F2306A0;
  if (!qword_27F2306A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306A0);
  }

  return result;
}

unint64_t sub_24EDE9EA8()
{
  result = qword_27F2306A8;
  if (!qword_27F2306A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306A8);
  }

  return result;
}

unint64_t sub_24EDE9F00()
{
  result = qword_27F2306B0;
  if (!qword_27F2306B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306B0);
  }

  return result;
}

unint64_t sub_24EDE9F58()
{
  result = qword_27F2306B8;
  if (!qword_27F2306B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306B8);
  }

  return result;
}

unint64_t sub_24EDE9FB0()
{
  result = qword_27F2306C0;
  if (!qword_27F2306C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306C0);
  }

  return result;
}

unint64_t sub_24EDEA008()
{
  result = qword_27F2306C8;
  if (!qword_27F2306C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306C8);
  }

  return result;
}

unint64_t sub_24EDEA060()
{
  result = qword_27F2306D0;
  if (!qword_27F2306D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306D0);
  }

  return result;
}

unint64_t sub_24EDEA0B8()
{
  result = qword_27F2306D8;
  if (!qword_27F2306D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306D8);
  }

  return result;
}

unint64_t sub_24EDEA110()
{
  result = qword_27F2306E0;
  if (!qword_27F2306E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306E0);
  }

  return result;
}

unint64_t sub_24EDEA168()
{
  result = qword_27F2306E8;
  if (!qword_27F2306E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306E8);
  }

  return result;
}

unint64_t sub_24EDEA1C0()
{
  result = qword_27F2306F0;
  if (!qword_27F2306F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306F0);
  }

  return result;
}

unint64_t sub_24EDEA218()
{
  result = qword_27F2306F8;
  if (!qword_27F2306F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306F8);
  }

  return result;
}

unint64_t sub_24EDEA270()
{
  result = qword_27F230700;
  if (!qword_27F230700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230700);
  }

  return result;
}

unint64_t sub_24EDEA2C8()
{
  result = qword_27F230708;
  if (!qword_27F230708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230708);
  }

  return result;
}

uint64_t sub_24EDEA31C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 280);
  result = type metadata accessor for ShelfLayoutEnvironment(0);
  v7 = (a1 + *(result + 48));
  if ((v7[1] & 1) == 0)
  {
    v9 = *v7;
    v10 = *(v2 + 288);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8, &unk_24F9A1D20) + 48);
    *a2 = v9;
    *&a2[v11] = v10;
    v12 = *MEMORY[0x277D7EB58];
    v13 = sub_24F9219E8();
    (*(*(v13 - 8) + 104))(&a2[v11], v12, v13);
    v8 = MEMORY[0x277D7EB20];
    goto LABEL_7;
  }

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *a2 = v5;
  v8 = MEMORY[0x277D7EB30];
LABEL_7:
  v14 = *v8;
  v15 = sub_24F9218F8();
  v16 = *(*(v15 - 8) + 104);

  return v16(a2, v14, v15);
}

void *sub_24EDEA488@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v91 = a1;
  v92 = a2;
  v90 = sub_24F925218();
  v3 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v6);
  v89 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v86 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v86 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v86 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v86 - v21;
  v23 = *(v2 + 16);
  if ((v23 >> 6) - 1 < 2)
  {
    goto LABEL_2;
  }

  v87 = v5;
  v88 = v3;
  v24 = *v2;
  v25 = v91;
  v27 = *v91;
  v26 = v91[1];
  if (!(v23 >> 6))
  {
    v95[0] = *(v25 + *(type metadata accessor for ShelfLayoutEnvironment(0) + 48) + 8);
    sub_24EE94E1C(v24, v25);
    v29 = v28;
    v30 = *MEMORY[0x277D768C8];
    v31 = *(MEMORY[0x277D768C8] + 8);
    v32 = *(MEMORY[0x277D768C8] + 16);
    v33 = *(MEMORY[0x277D768C8] + 24);
    v84 = v32;
    v85 = *(MEMORY[0x277D768C8] + 24);
    v34 = 0x79616C7265766FLL;
    v35 = v27;
    v36 = v26;
    v37 = *MEMORY[0x277D768C8];
    v38 = *(MEMORY[0x277D768C8] + 8);
    v39 = 0xE700000000000000;
LABEL_5:
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(v34, v39, v95, 0, v29, v94, v35, v36, v30, v31, v32, v33, v37, v38, v84, v85);
    CGSizeMake();
    memcpy(v95, v94, 0x188uLL);
    goto LABEL_6;
  }

  v42 = *(v2 + 8);
  v43 = v88;
  if (v23 != 192 || v42 | v24)
  {
    if (v23 == 192 && v24 == 1 && !v42)
    {
      v44 = type metadata accessor for ShelfLayoutEnvironment(0);
      v45 = v43;
      v47 = v90;
      v46 = v91;
      v93[0] = *(v91 + *(v44 + 48) + 8);
      v48 = v91[2];
      v49 = *(v44 + 36);
      (*(v43 + 104))(v22, *MEMORY[0x277CE0558], v90);
      (*(v43 + 56))(v22, 0, 1, v47);
      v50 = *(v6 + 48);
      sub_24EDEBCCC(v46 + v49, v10);
      sub_24EDEBCCC(v22, &v10[v50]);
      v51 = *(v45 + 48);
      if (v51(v10, 1, v47) == 1)
      {
        sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
        v52 = v51(&v10[v50], 1, v47);
        v53 = v92;
        if (v52 == 1)
        {
          sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
LABEL_31:
          sub_24E69C15C(2.0, v48);
          goto LABEL_32;
        }
      }

      else
      {
        sub_24EDEBCCC(v10, v19);
        if (v51(&v10[v50], 1, v47) != 1)
        {
          v69 = v87;
          v70 = v88;
          (*(v88 + 32))(v87, &v10[v50], v47);
          sub_24EDEBD3C();
          v71 = sub_24F92AFF8();
          v72 = *(v70 + 8);
          v72(v69, v47);
          sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
          v72(v19, v47);
          sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
          v53 = v92;
          if (v71)
          {
            goto LABEL_31;
          }

LABEL_25:
          sub_24EF29A90(v48);
LABEL_32:
          PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x72476E6769736564, 0xEB00000000416469, v93, 0, v67, v94, v27, v26, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));
          CGSizeMake();
          memcpy(v95, v94, 0x188uLL);
          v40 = v53;
          return memcpy(v40, v95, 0x188uLL);
        }

        sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
        (*(v88 + 8))(v19, v47);
        v53 = v92;
      }

      sub_24E601704(v10, &unk_27F254F20, &qword_24F940790);
      goto LABEL_25;
    }

    if (v23 == 192 && v24 == 2 && !v42)
    {
      v54 = type metadata accessor for ShelfLayoutEnvironment(0);
      v55 = v43;
      v56 = v91;
      v93[0] = *(v91 + *(v54 + 48) + 8);
      v57 = v91[2];
      v58 = *(v54 + 36);
      v59 = *(v43 + 104);
      v60 = v90;
      v59(v16, *MEMORY[0x277CE0558], v90);
      (*(v55 + 56))(v16, 0, 1, v60);
      v61 = *(v6 + 48);
      v62 = v89;
      sub_24EDEBCCC(v56 + v58, v89);
      sub_24EDEBCCC(v16, v62 + v61);
      v63 = *(v55 + 48);
      if (v63(v62, 1, v60) == 1)
      {
        sub_24E601704(v16, &qword_27F215598, &qword_24F945EF0);
        v64 = v63(v62 + v61, 1, v60);
        v65 = v92;
        if (v64 == 1)
        {
          sub_24E601704(v62, &qword_27F215598, &qword_24F945EF0);
          v66 = 1;
LABEL_41:
          _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          sub_24EE7C714(v66 & 1, v57);
          PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x72476E6769736564, 0xEB00000000426469, v93, 0, v79, v94, v27, v26, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));
          CGSizeMake();
          memcpy(v95, v94, 0x188uLL);
          v40 = v65;
          return memcpy(v40, v95, 0x188uLL);
        }
      }

      else
      {
        sub_24EDEBCCC(v62, v13);
        if (v63(v62 + v61, 1, v60) != 1)
        {
          v75 = v88;
          v76 = v62 + v61;
          v77 = v87;
          (*(v88 + 32))(v87, v76, v60);
          sub_24EDEBD3C();
          v66 = sub_24F92AFF8();
          v78 = *(v75 + 8);
          v78(v77, v60);
          sub_24E601704(v16, &qword_27F215598, &qword_24F945EF0);
          v78(v13, v60);
          sub_24E601704(v89, &qword_27F215598, &qword_24F945EF0);
          v65 = v92;
          goto LABEL_41;
        }

        sub_24E601704(v16, &qword_27F215598, &qword_24F945EF0);
        (*(v88 + 8))(v13, v60);
        v65 = v92;
      }

      sub_24E601704(v62, &unk_27F254F20, &qword_24F940790);
      v66 = 0;
      goto LABEL_41;
    }

    if (v23 == 192 && v24 == 3 && !v42)
    {
      v95[0] = *(v91 + *(type metadata accessor for ShelfLayoutEnvironment(0) + 48) + 8);
      sub_24F2AC800(v91[2]);
      v29 = v68;
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v84 = v32;
      v85 = *(MEMORY[0x277D768C8] + 24);
      v34 = 0x72476E6769736564;
      v39 = 0xEB00000000436469;
LABEL_54:
      v35 = v27;
      v36 = v26;
      v37 = v30;
      v38 = v31;
      goto LABEL_5;
    }

    v73 = v91;
    if (v23 == 192 && v24 == 4 && !v42)
    {
      v95[0] = *(v73 + *(type metadata accessor for ShelfLayoutEnvironment(0) + 48) + 8);
      sub_24EAC876C(v73[2]);
      v29 = v74;
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v84 = v32;
      v85 = *(MEMORY[0x277D768C8] + 24);
      v34 = 0x72476E6769736564;
      v39 = 0xEB00000000446469;
      goto LABEL_54;
    }

    if (v23 == 192 && v24 == 5 && !v42)
    {
      v95[0] = *(v73 + *(type metadata accessor for ShelfLayoutEnvironment(0) + 48) + 8);
      sub_24F24DF2C(v73);
      v29 = v80;
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v84 = v32;
      v85 = *(MEMORY[0x277D768C8] + 24);
      v34 = 0x4C7972617262696CLL;
      v39 = 0xEC000000736B6E69;
      goto LABEL_54;
    }

    if (v23 == 192 && v24 == 6 && !v42)
    {
      v95[0] = *(v73 + *(type metadata accessor for ShelfLayoutEnvironment(0) + 48) + 8);
      v29 = sub_24F1B3B98(v73);
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v84 = v32;
      v85 = *(MEMORY[0x277D768C8] + 24);
      v34 = 0x7262694C656D6167;
      v39 = 0xEB00000000797261;
      goto LABEL_54;
    }

    if (v23 == 192 && v24 == 7 && !v42)
    {
      v81 = type metadata accessor for ShelfLayoutEnvironment(0);
      v95[0] = *(v73 + *(v81 + 48) + 8);
      MEMORY[0x28223BE20](v81);
      v84 = *&v73;
      sub_24E76C980(sub_24EDEBCAC, (&v86 - 4), &unk_2861BCE80);
      v29 = v82;
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v84 = v32;
      v85 = *(MEMORY[0x277D768C8] + 24);
      v34 = 0x65756E69746E6F63;
      v39 = 0xEF676E6979616C50;
      goto LABEL_54;
    }

    if (v23 != 192 || v24 != 8 || v42)
    {
      v95[0] = *(v91 + *(type metadata accessor for ShelfLayoutEnvironment(0) + 48) + 8);
      v83 = sub_24E7335BC(v91);
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v84 = v32;
      v85 = *(MEMORY[0x277D768C8] + 24);
      v39 = 0x800000024FA5E1A0;
      v35 = v27;
      v36 = v26;
      v37 = *MEMORY[0x277D768C8];
      v38 = *(MEMORY[0x277D768C8] + 8);
      v29 = v83;
      v34 = 0xD000000000000015;
      goto LABEL_5;
    }
  }

LABEL_2:
  sub_24EDEBC70(v95);
LABEL_6:
  v40 = v92;
  return memcpy(v40, v95, 0x188uLL);
}

uint64_t sub_24EDEB058@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_24F9219E8();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v2;
  v11 = v2[1];
  v13 = *(v2 + 16);
  v14 = v13 >> 6;
  if (v13 >> 6 <= 1)
  {
    if (v14)
    {
      *a2 = v12;
      v20 = *(v6 + 104);
      *v10 = v11;
      v21 = v7;
      v20(v10, **(&unk_27968DB50 + (v13 & 0x3F)), v7, v8);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8, &unk_24F9A1D20);
      (*(v6 + 32))(&a2[*(v22 + 48)], v10, v21);
      v23 = *MEMORY[0x277D7EB20];
      v24 = sub_24F9218F8();
      return (*(*(v24 - 8) + 104))(a2, v23, v24);
    }

    goto LABEL_3;
  }

  if (v14 == 2)
  {
    *a2 = v12;
    goto LABEL_8;
  }

  if (!(v11 | v12) && v13 == 192)
  {
    v25 = v7;
    if ((*(a1 + *(type metadata accessor for ShelfLayoutEnvironment(0) + 48) + 8) & 1) == 0)
    {
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8, &unk_24F9A1D20) + 48);
      *a2 = 1;
      *&a2[v26] = 0x3FF0000000000000;
      (*(v6 + 104))(&a2[v26], *MEMORY[0x277D7EB68], v25);
      v16 = MEMORY[0x277D7EB20];
      goto LABEL_9;
    }

    *a2 = 1;
LABEL_8:
    v16 = MEMORY[0x277D7EB30];
LABEL_9:
    v17 = *v16;
    v18 = sub_24F9218F8();
    v19 = *(*(v18 - 8) + 104);

    return v19(a2, v17, v18);
  }

  if ((v12 != 1 || v11 || v13 != 192) && (v12 != 2 || v11 || v13 != 192) && (v12 != 3 || v11 || v13 != 192) && (v12 != 4 || v11 || v13 != 192) && (v12 != 5 || v11 || v13 != 192) && (v12 != 6 || v11 || v13 != 192) && (v12 != 7 || v11 || v13 != 192) && v12 == 8 && !v11 && v13 == 192)
  {
    sub_24E6B00B4(*a1);
    v29[0] = xmmword_24F950E90;
    LOBYTE(v29[1]) = -64;
    return sub_24EDEB058(a1, a2);
  }

LABEL_3:
  v27[0] = *v2;
  v27[1] = v11;
  LOBYTE(v27[2]) = v13;
  sub_24EDEA488(a1, v28);
  memcpy(v29, v28, 0x188uLL);
  if (sub_24EDEBC58(v29) == 1)
  {
    v27[0] = 0;
    v27[1] = 0;
    LOBYTE(v27[2]) = -64;
    return sub_24EDEB058(a1, a2);
  }

  memcpy(v27, v29, sizeof(v27));
  sub_24EDEA31C(a1, a2);
  return sub_24E601704(v28, &qword_27F226148, &unk_24F979110);
}

uint64_t sub_24EDEB448(double *a1)
{
  v3 = sub_24F921998();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if ((v8 >> 6) - 1 >= 2)
  {
    v10 = *v1;
    v11 = v1[1];
    if (v8 >> 6)
    {
      if (!(v11 | v10) && v8 == 192)
      {
        goto LABEL_2;
      }

      if ((v10 != 1 || v11 || v8 != 192) && (v10 != 2 || v11 || v8 != 192) && (v10 != 3 || v11 || v8 != 192) && (v10 != 4 || v11 || v8 != 192) && (v10 != 5 || v11 || v8 != 192) && (v10 != 6 || v11 || v8 != 192) && (v10 != 7 || v11 || v8 != 192) && v10 == 8 && !v11 && v8 == 192)
      {
        v12 = v5;
        sub_24E6B00B4(*a1);
        sub_24F921958();
        v17[0] = xmmword_24F950E90;
        LOBYTE(v17[1]) = -64;
        sub_24EDEB448(a1);
        return (*(v4 + 8))(v7, v12);
      }
    }

    v13 = *v1;
    v14 = v11;
    v15 = v8;
    sub_24EDEA488(a1, v16);
    memcpy(v17, v16, 0x188uLL);
    if (sub_24EDEBC58(v17) == 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = -64;
      return sub_24EDEB448(a1);
    }

    else
    {
      sub_24F921978();
      return sub_24E601704(v16, &qword_27F226148, &unk_24F979110);
    }
  }

LABEL_2:
  sub_24E6B00B4(*a1);

  return sub_24F921958();
}

uint64_t sub_24EDEB704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697463617266 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942656469766964 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EDEB81C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416E6769736564 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x426E6769736564 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436E6769736564 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446E6769736564 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C7972617262696CLL && a2 == 0xEC000000736B6E69 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7262694C656D6167 && a2 == 0xEB00000000797261 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEF676E6979616C50 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA5E180 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA5E1A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5279616C7265766FLL && a2 == 0xEF65676150746F6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xE800000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_24EDEBC58(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_24EDEBC70(uint64_t a1)
{
  *(a1 + 384) = 0;
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24EDEBCCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EDEBD3C()
{
  result = qword_27F215650;
  if (!qword_27F215650)
  {
    sub_24F925218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215650);
  }

  return result;
}

uint64_t ArticleDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a3;
  v53 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v15 = swift_allocObject();
  v48 = a2;
  sub_24E99091C(a2, v14);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_24E911D90(v14, v18 + v16);
  v19 = a1;
  *(v18 + v17) = a1;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v20 = v18;
  sub_24E99091C(a2, v11);
  *(v15 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v15 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;
  v54 = a5;

  swift_retain_n();

  *(v15 + v22) = sub_24E60986C(v21);
  v23 = (v15 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v51 = v24;
  v25 = (v15 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v15 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v49 = v26;
  v27 = (v15 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v15 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v15 + qword_27F39C790) = 0;
  *(v15 + qword_27F22F1D0) = 0;
  *(v15 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v15 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA8, &qword_24F989E70);
  swift_allocObject();
  *(v15 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v15 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEC0, &unk_24F989E80);
  swift_allocObject();
  *(v15 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v15 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v15 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v35 = sub_24F92ADA8();

  v36 = v19;

  sub_24E70E058(v48);
  *(v15 + v34) = v35;
  v37 = qword_27F22F1E0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v39 = *(*(v38 - 8) + 56);
  v39(v15 + v37, 1, 1, v38);
  v39(v15 + qword_27F22F1E8, 1, 1, v38);
  v40 = v52;
  *(v15 + 16) = v36;
  sub_24E911D90(v50, v15 + qword_27F39C7D0);
  *v23 = sub_24EDECB20;
  v23[1] = v20;
  *v25 = 0;
  v25[1] = 0;
  if (v40)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    v42 = sub_24E965688;
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  v43 = v51;
  *v51 = v42;
  v43[1] = v41;
  v44 = v49;
  *v49 = sub_24EC9810C;
  v44[1] = v36;
  *v27 = 0;
  v27[1] = 0;
  v45 = v54;
  *(v15 + qword_27F22F1F0) = v53;
  *(v15 + qword_27F39C7D8) = v45;
  return v15;
}

uint64_t ArticleDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v60 = a3;
  v61 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v56 = a2;
  sub_24E99091C(a2, &v55 - v15);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_24E911D90(v16, v19 + v17);
  *(v19 + v18) = a1;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  sub_24E99091C(a2, v13);
  *(v6 + qword_27F22F198) = 0;
  v20 = MEMORY[0x277D84F90];
  *(v6 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v21 = qword_27F39C780;
  v62 = a5;

  swift_retain_n();

  *(v6 + v21) = sub_24E60986C(v20);
  v22 = (v6 + qword_27F22F1A8);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v6 + qword_27F22F1B0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v6 + qword_27F22F1B8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_27F22F1C0);
  *v25 = 0;
  v25[1] = 0;
  v57 = v25;
  v26 = (v6 + qword_27F22F1C8);
  *v26 = 0;
  v26[1] = 0;
  v59 = v26;
  v27 = (v6 + qword_27F39C788);
  *v27 = 0u;
  v27[1] = 0u;
  *(v27 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v28 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA8, &qword_24F989E70);
  swift_allocObject();
  *(v6 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v6 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEC0, &unk_24F989E80);
  swift_allocObject();
  *(v6 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v6 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v34 = sub_24F92ADA8();

  sub_24E70E058(v56);
  *(v6 + v33) = v34;
  v35 = qword_27F22F1E0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v37 = *(*(v36 - 8) + 56);
  v37(v6 + v35, 1, 1, v36);
  v37(v6 + qword_27F22F1E8, 1, 1, v36);
  v38 = v60;
  *(v6 + 16) = a1;
  sub_24E911D90(v58, v6 + qword_27F39C7D0);
  v39 = *v22;
  v40 = v22[1];
  *v22 = sub_24EDECE20;
  v22[1] = v19;
  sub_24E824448(v39, v40);
  v41 = *v24;
  v42 = v24[1];
  *v24 = 0;
  v24[1] = 0;
  sub_24E824448(v41, v42);
  if (v38)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    v44 = sub_24EC02BCC;
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v46 = *v23;
  v45 = v23[1];
  *v23 = v44;
  v23[1] = v43;
  sub_24E824448(v46, v45);
  v47 = v57;
  v48 = *v57;
  v49 = v57[1];
  *v57 = sub_24EDECE24;
  v47[1] = a1;
  sub_24E824448(v48, v49);
  v50 = v59;
  v51 = *v59;
  v52 = v59[1];
  *v59 = 0;
  v50[1] = 0;
  sub_24E824448(v51, v52);
  v53 = v62;
  *(v6 + qword_27F22F1F0) = v61;
  *(v6 + qword_27F39C7D8) = v53;
  return v6;
}

uint64_t sub_24EDEC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ArticlePageIntent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = sub_24F91F4A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E99091C(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E70E058(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296A8, &qword_24F9852B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230720, &qword_24F9A1DD0);
    sub_24EDECD58();
    swift_allocError();
    *v15 = 0;
    return sub_24F92A978();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v19[0] = 0xD000000000000011;
    v19[1] = 0x800000024FA53E10;
    sub_24F92C7F8();
    (*(v12 + 16))(&v7[*(v5 + 20)], v14, v11);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24F929C28();

    sub_24F928FE8();
    sub_24F929BF8();

    v17 = sub_24F929C08();

    v18 = sub_24EB472E8(v7, v17, "GameStoreKit/ArticleDiffablePageContentPresenter.swift", 54, 2);

    sub_24EDECDBC(v7);
    (*(v12 + 8))(v14, v11);
    return v18;
  }
}

uint64_t sub_24EDECB24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v4 = sub_24EB46264(a1, a2, "GameStoreKit/ArticleDiffablePageContentPresenter.swift", 54, 2);

  return v4;
}

uint64_t ArticleDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24EDECC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_24E824448(a10, a11);
  sub_24E824448(a6, a7);
  sub_24E824448(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24EDECCA8()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for ArticleDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F230710;
  if (!qword_27F230710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EDECD58()
{
  result = qword_27F230728;
  if (!qword_27F230728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230720, &qword_24F9A1DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230728);
  }

  return result;
}

uint64_t sub_24EDECDBC(uint64_t a1)
{
  v2 = type metadata accessor for ArticlePageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppStateDataSourceError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_24F9479A0;

      v6 = sub_24F92B098();
      v7 = AMSHashIfNeeded();

      if (v7)
      {
        v8 = sub_24F92B0D8();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v26 = MEMORY[0x277D837D0];
      *(v5 + 56) = MEMORY[0x277D837D0];
      v27 = sub_24E90A06C();
      if (v10)
      {
        v28 = v8;
      }

      else
      {
        v28 = 0;
      }

      v29 = 0xE000000000000000;
      if (v10)
      {
        v29 = v10;
      }

      *(v5 + 32) = v28;
      *(v5 + 40) = v29;
      *(v5 + 96) = v26;
      *(v5 + 104) = v27;
      *(v5 + 64) = v27;
      *(v5 + 72) = v2;
      *(v5 + 80) = v1;
      *(v5 + 136) = v26;
      *(v5 + 144) = v27;
      *(v5 + 112) = v4;
      *(v5 + 120) = v3;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24F93A400;
      v24 = MEMORY[0x277D837D0];
      *(v23 + 56) = MEMORY[0x277D837D0];
      v25 = sub_24E90A06C();
      *(v23 + 32) = v2;
      *(v23 + 40) = v1;
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      *(v23 + 64) = v25;
      *(v23 + 72) = v4;
      *(v23 + 80) = v3;
    }
  }

  else if (v0[4])
  {

    v11 = sub_24F91F268();
    v12 = [v11 code];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24F93FC20;
    v14 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v15 = sub_24E90A06C();
    *(v13 + 32) = v2;
    *(v13 + 40) = v1;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = v4;
    v16 = MEMORY[0x277D83B88];
    *(v13 + 80) = v3;
    v17 = MEMORY[0x277D83C10];
    *(v13 + 136) = v16;
    *(v13 + 144) = v17;
    *(v13 + 112) = v12;
    v18 = sub_24F91F268();
    v19 = [v18 domain];

    v20 = sub_24F92B0D8();
    v22 = v21;

    *(v13 + 176) = v14;
    *(v13 + 184) = v15;
    *(v13 + 152) = v20;
    *(v13 + 160) = v22;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_24F9479A0;
    v32 = MEMORY[0x277D837D0];
    *(v31 + 56) = MEMORY[0x277D837D0];
    v33 = sub_24E90A06C();
    *(v31 + 32) = v2;
    *(v31 + 40) = v1;
    *(v31 + 96) = v32;
    *(v31 + 104) = v33;
    *(v31 + 64) = v33;
    *(v31 + 72) = v4;
    *(v31 + 80) = v3;
    *(v31 + 136) = v32;
    *(v31 + 144) = v33;
    *(v31 + 112) = 4271950;
    *(v31 + 120) = 0xE300000000000000;
  }

  return sub_24F92B118();
}

uint64_t sub_24EDED1E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EDED228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t *TodayCardMedia.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v5 = *v3;
  v79 = v3;
  v74 = v5;
  v6 = sub_24F92AC38();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_24F9285B8();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v66 - v10;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v67 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v72 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v75 = &v66 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  v78 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  v76 = v15;
  if (v26)
  {
    v81 = v25;
    v82 = v26;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v29 = v28;
    (*(v12 + 8))(v14, v11);
    v81 = v27;
    v82 = v29;
  }

  sub_24F92C7F8();
  v30 = *(v16 + 8);
  v30(v24, v15);
  v31 = v84;
  v32 = v79;
  *(v79 + 2) = v83;
  *(v32 + 3) = v31;
  v32[8] = v85;
  sub_24F929608();
  v33 = v78;
  sub_24F928398();
  v34 = v77;
  (*(v77 + 16))(v73, v86, v80);
  v35 = v71;
  sub_24F929548();
  v36 = OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics;
  sub_24E65E0D4(v35, v32 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  v37 = v72;
  sub_24F928398();
  v38 = sub_24F928348();
  v40 = v39;
  v41 = v37;
  v42 = v76;
  v30(v41, v76);
  if (v40)
  {

    v43 = sub_24EDEF87C(v38, v40);
    if ((v44 & 1) == 0)
    {
      v58 = v43;

      v57 = v79;
      v79[2] = v58;
      v59 = v75;
      v60 = v78;
      sub_24F928398();
      sub_24EDEF930();
      sub_24F928248();
      v61 = v59;
      v62 = v76;
      v30(v61, v76);
      *(v57 + 24) = v83;
      v63 = v67;
      sub_24F928398();
      v64 = sub_24F928278();
      (*(v77 + 8))(v86, v80);
      v30(v60, v62);
      v30(v63, v62);
      *(v57 + 25) = v64 & 1;
      return v57;
    }

    v75 = v36;
    v45 = v68;
    *v68 = v38;
    v45[1] = v40;
    v45[2] = v74;
    v46 = *MEMORY[0x277D22528];
    v47 = v69;
    v48 = v70;
    v73 = *(v69 + 104);
    (v73)(v45, v46, v70);
    sub_24EDEFA8C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v72 = v30;
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_24F93DE60;
    *(v51 + 32) = swift_allocError();
    (*(v47 + 16))(v52, v45, v48);
    *v50 = 1684957547;
    v50[1] = 0xE400000000000000;
    v50[2] = v74;
    v50[3] = v51;
    (v73)(v50, *MEMORY[0x277D22540], v48);
    swift_willThrow();
    (*(v77 + 8))(v86, v80);
    (v72)(v78, v76);
    v53 = v45;
    v36 = v75;
    (*(v47 + 8))(v53, v48);
  }

  else
  {
    sub_24EDEFA8C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v54 = v70;
    swift_allocError();
    *v55 = 1684957547;
    v56 = v74;
    v55[1] = 0xE400000000000000;
    v55[2] = v56;
    (*(v69 + 104))(v55, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v34 + 8))(v86, v80);
    v30(v33, v42);
  }

  v57 = v79;
  sub_24E6585F8((v79 + 4));
  sub_24E601704(v57 + v36, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for TodayCardMedia(0);
  swift_deallocPartialClassInstance();
  return v57;
}

uint64_t type metadata accessor for TodayCardMedia(uint64_t a1)
{
  result = qword_27F230758;
  if (!qword_27F230758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayCardMedia.init(id:kind:titleBackingGradient:otdTextStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, char *a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  sub_24E60169C(a1, &v25, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v26 + 1))
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v24[0] = a5;
    v18 = a2;
    v19 = a4;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v24[1] = v17;
    v24[2] = v21;
    a4 = v19;
    a2 = v18;
    a5 = v24[0];
    sub_24F92C7F8();
    sub_24E601704(&v25, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v22 = v29;
  *(v6 + 32) = v28;
  *(v6 + 48) = v22;
  *(v6 + 64) = v30;
  sub_24E65E0D4(a5, v6 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v6 + 16) = a2;
  *(v6 + 24) = v16;
  *(v6 + 25) = a4 & 1;
  return v6;
}

uint64_t TodayCardMedia.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t TodayCardMedia.Kind.description.getter(uint64_t a1)
{
  if (qword_27F210768 != -1)
  {
LABEL_15:
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v1 = 0;
  v2 = 1 << *(off_27F230730 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(off_27F230730 + 8);
  v5 = (v2 + 63) >> 6;
  do
  {
    if (!v4)
    {
      while (1)
      {
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v6 >= v5)
        {
          v11 = sub_24F92CD88();
          MEMORY[0x253050C20](v11);

          MEMORY[0x253050C20](41, 0xE100000000000000);
          return 0x65756C6156776172;
        }

        v4 = *(off_27F230730 + v6 + 8);
        ++v1;
        if (v4)
        {
          v1 = v6;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    v6 = v1;
LABEL_11:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = v7 | (v6 << 6);
  }

  while (*(*(off_27F230730 + 7) + 8 * v8) != a1);
  v9 = *(*(off_27F230730 + 6) + 16 * v8);

  return v9;
}

uint64_t sub_24EDEE040()
{
  v0 = sub_24E60834C(&unk_2861B29D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230768, &unk_24F9A22C0);
  result = swift_arrayDestroy();
  off_27F230730 = v0;
  return result;
}

unint64_t sub_24EDEE0B8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24EDEF984(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TodayCardMedia.TitleBackingGradient.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24F92CB88();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_24EDEE15C()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EDEE1B8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EDEE200@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

uint64_t TodayCardMedia.__allocating_init(id:kind:titleBackingGradient:otdTextStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, char *a3, char a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = *a3;
  sub_24E60169C(a1, &v24, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v25 + 1))
  {
    v16 = v25;
    *(v14 + 32) = v24;
    *(v14 + 48) = v16;
    *(v14 + 64) = v26;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v23[0] = a5;
    v18 = a2;
    v19 = a4;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v23[1] = v17;
    v23[2] = v21;
    a4 = v19;
    a2 = v18;
    a5 = v23[0];
    sub_24F92C7F8();
    sub_24E601704(&v24, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(a5, v14 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v14 + 16) = a2;
  *(v14 + 24) = v15;
  *(v14 + 25) = a4 & 1;
  return v14;
}

uint64_t TodayCardMedia.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMedia.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t static TodayCardMedia.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v143 = a2;
  v3 = sub_24F92AC38();
  v144 = *(v3 - 8);
  v145 = v3;
  MEMORY[0x28223BE20](v3);
  v137 = (&v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  v141 = v5;
  v142 = v6;
  MEMORY[0x28223BE20](v5);
  v136 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v135 = &v113 - v9;
  MEMORY[0x28223BE20](v10);
  v134 = &v113 - v11;
  MEMORY[0x28223BE20](v12);
  v133 = &v113 - v13;
  MEMORY[0x28223BE20](v14);
  v132 = &v113 - v15;
  MEMORY[0x28223BE20](v16);
  v131 = &v113 - v17;
  MEMORY[0x28223BE20](v18);
  v130 = &v113 - v19;
  MEMORY[0x28223BE20](v20);
  v129 = &v113 - v21;
  MEMORY[0x28223BE20](v22);
  v128 = &v113 - v23;
  MEMORY[0x28223BE20](v24);
  v127 = &v113 - v25;
  MEMORY[0x28223BE20](v26);
  v126 = &v113 - v27;
  MEMORY[0x28223BE20](v28);
  v125 = &v113 - v29;
  MEMORY[0x28223BE20](v30);
  v124 = &v113 - v31;
  MEMORY[0x28223BE20](v32);
  v123 = &v113 - v33;
  v34 = sub_24F928388();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v122 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v121 = &v113 - v38;
  MEMORY[0x28223BE20](v39);
  v120 = &v113 - v40;
  MEMORY[0x28223BE20](v41);
  v119 = &v113 - v42;
  MEMORY[0x28223BE20](v43);
  v118 = &v113 - v44;
  MEMORY[0x28223BE20](v45);
  v117 = &v113 - v46;
  MEMORY[0x28223BE20](v47);
  v116 = &v113 - v48;
  MEMORY[0x28223BE20](v49);
  v115 = &v113 - v50;
  MEMORY[0x28223BE20](v51);
  v114 = &v113 - v52;
  MEMORY[0x28223BE20](v53);
  v113 = &v113 - v54;
  MEMORY[0x28223BE20](v55);
  v57 = &v113 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v113 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v113 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v113 - v65;
  MEMORY[0x28223BE20](v67);
  v69 = &v113 - v68;
  v140 = a1;
  sub_24F928398();
  v70 = sub_24F928348();
  v72 = v71;
  v138 = v34;
  v139 = v35;
  (*(v35 + 8))(v69, v34);
  if (v72)
  {
    v73 = v145;
    v74 = v146;
    v75 = v144;

    v76 = sub_24EDEF87C(v70, v72);
    if (v77)
    {
      v78 = v137;
      *v137 = v70;
      v78[1] = v72;
      v78[2] = v74;
      v79 = v75;
      v80 = *(v75 + 104);
      v80(v78, *MEMORY[0x277D22528], v73);
      sub_24EDEFA8C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v82 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_24F93DE60;
      *(v83 + 32) = swift_allocError();
      (*(v79 + 16))(v84, v78, v73);
      *v82 = 1684957547;
      v82[1] = 0xE400000000000000;
      v82[2] = v146;
      v82[3] = v83;
      v80(v82, *MEMORY[0x277D22540], v73);
      swift_willThrow();
      return (*(v79 + 8))(v78, v73);
    }

    else
    {
      switch(v76)
      {
        case 0:

          v89 = v114;
          (*(v139 + 16))(v114, v140, v138);
          v90 = v128;
          (*(v142 + 16))(v128, v143, v141);
          type metadata accessor for TodayCardMediaArtwork(0);
          swift_allocObject();
          result = TodayCardMediaArtwork.init(deserializing:using:)(v89, v90);
          break;
        case 1:

          (*(v139 + 16))(v66, v140, v138);
          v102 = v123;
          (*(v142 + 16))(v123, v143, v141);
          type metadata accessor for TodayCardMediaBrandedSingleApp(0);
          swift_allocObject();
          result = TodayCardMediaBrandedSingleApp.init(deserializing:using:)(v66, v102);
          break;
        case 2:

          (*(v139 + 16))(v63, v140, v138);
          v98 = v124;
          (*(v142 + 16))(v124, v143, v141);
          type metadata accessor for TodayCardMediaList(0);
          swift_allocObject();
          result = TodayCardMediaList.init(deserializing:using:)(v63, v98);
          break;
        case 3:

          (*(v139 + 16))(v60, v140, v138);
          v99 = v125;
          (*(v142 + 16))(v125, v143, v141);
          type metadata accessor for TodayCardMediaMultiAppFallback(0);
          swift_allocObject();
          result = TodayCardMediaMultiAppFallback.init(deserializing:using:)(v60, v99);
          break;
        case 4:

          (*(v139 + 16))(v57, v140, v138);
          v93 = v126;
          (*(v142 + 16))(v126, v143, v141);
          type metadata accessor for TodayCardMediaInAppPurchase(0);
          swift_allocObject();
          result = TodayCardMediaInAppPurchase.init(deserializing:using:)(v57, v93);
          break;
        case 5:

          v103 = v113;
          (*(v139 + 16))(v113, v140, v138);
          v104 = v127;
          (*(v142 + 16))(v127, v143, v141);
          type metadata accessor for TodayCardMediaRiver(0);
          swift_allocObject();
          result = TodayCardMediaRiver.init(deserializing:using:)(v103, v104);
          break;
        case 6:

          v107 = v115;
          (*(v139 + 16))(v115, v140, v138);
          v108 = v129;
          (*(v142 + 16))(v129, v143, v141);
          type metadata accessor for TodayCardMediaAppIcon(0);
          swift_allocObject();
          result = TodayCardMediaAppIcon.init(deserializing:using:)(v107, v108);
          break;
        case 7:

          v100 = v116;
          (*(v139 + 16))(v116, v140, v138);
          v101 = v130;
          (*(v142 + 16))(v130, v143, v141);
          type metadata accessor for TodayCardMediaGrid(0);
          swift_allocObject();
          result = TodayCardMediaGrid.init(deserializing:using:)(v100, v101);
          break;
        case 8:

          v111 = v117;
          (*(v139 + 16))(v117, v140, v138);
          v112 = v131;
          (*(v142 + 16))(v131, v143, v141);
          type metadata accessor for TodayCardMediaVideo(0);
          swift_allocObject();
          result = TodayCardMediaVideo.init(deserializing:using:)(v111, v112);
          break;
        case 9:

          v96 = v118;
          (*(v139 + 16))(v118, v140, v138);
          v97 = v132;
          (*(v142 + 16))(v132, v143, v141);
          type metadata accessor for TodayCardMediaHero(0);
          swift_allocObject();
          result = TodayCardMediaHero.init(deserializing:using:)(v96, v97);
          break;
        case 10:

          v109 = v119;
          (*(v139 + 16))(v119, v140, v138);
          v110 = v133;
          (*(v142 + 16))(v133, v143, v141);
          type metadata accessor for TodayCardMediaAppEvent(0);
          swift_allocObject();
          result = TodayCardMediaAppEvent.init(deserializing:using:)(v109, v110);
          break;
        case 11:

          v91 = v120;
          (*(v139 + 16))(v120, v140, v138);
          v92 = v134;
          (*(v142 + 16))(v134, v143, v141);
          type metadata accessor for TodayCardMediaSingleLockup(0);
          swift_allocObject();
          result = TodayCardMediaSingleLockup.init(deserializing:using:)(v91, v92);
          break;
        case 12:

          v94 = v121;
          (*(v139 + 16))(v121, v140, v138);
          v95 = v135;
          (*(v142 + 16))(v135, v143, v141);
          type metadata accessor for TodayCardMediaMediumLockupWithScreenshots(0);
          swift_allocObject();
          result = TodayCardMediaMediumLockupWithScreenshots.init(deserializing:using:)(v94, v95);
          break;
        case 13:

          v105 = v122;
          (*(v139 + 16))(v122, v140, v138);
          v106 = v136;
          (*(v142 + 16))(v136, v143, v141);
          type metadata accessor for TodayCardMediaMediumLockupWithAlignedRegion(0);
          swift_allocObject();
          result = TodayCardMediaMediumLockupWithAlignedRegion.init(deserializing:using:)(v105, v106);
          break;
        default:
          v147 = v76;
          sub_24F92CF48();
          __break(1u);
          JUMPOUT(0x24EDEF384);
      }
    }
  }

  else
  {
    sub_24EDEFA8C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v86 = v145;
    swift_allocError();
    *v87 = 1684957547;
    v88 = v146;
    v87[1] = 0xE400000000000000;
    v87[2] = v88;
    (*(v144 + 104))(v87, *MEMORY[0x277D22530], v86);
    return swift_willThrow();
  }

  return result;
}

uint64_t TodayCardMedia.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EDEF4A8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t TodayCardMediaWithArtwork.artwork(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 layoutDirection];
  result = (*(a3 + 8))(a2, a3);
  v7 = result >> 62;
  if (v5 != 1)
  {
    if (v7)
    {
      v13 = result;
      v14 = sub_24F92C738();
      result = v13;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((result & 0xC000000000000001) == 0)
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(result + 32);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_19:

    return 0;
  }

  v12 = result;
  v8 = sub_24F92C738();
  result = v12;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_4:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
LABEL_22:
    v15 = 0;
LABEL_24:
    v11 = MEMORY[0x253052270](v15);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v15 = v10;
    goto LABEL_24;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v10 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 8 * v10 + 32);
LABEL_14:

LABEL_15:

    return v11;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t TodayCardMediaWithArtwork.video(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 layoutDirection];
  result = (*(a3 + 16))(a2, a3);
  v7 = result >> 62;
  if (v5 != 1)
  {
    if (v7)
    {
      v13 = result;
      v14 = sub_24F92C738();
      result = v13;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((result & 0xC000000000000001) == 0)
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(result + 32);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_19:

    return 0;
  }

  v12 = result;
  v8 = sub_24F92C738();
  result = v12;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_4:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
LABEL_22:
    v15 = 0;
LABEL_24:
    v11 = MEMORY[0x253052270](v15);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v15 = v10;
    goto LABEL_24;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v10 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 8 * v10 + 32);
LABEL_14:

LABEL_15:

    return v11;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t TodayCardMediaWithArtwork.prefetchableArtwork(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = TodayCardMediaWithArtwork.artwork(for:)(a1, a2, a3);
  if (!result)
  {
    result = TodayCardMediaWithArtwork.video(for:)(a1, a2, a3);
    if (result)
    {
      v7 = *(result + OBJC_IVAR____TtC12GameStoreKit5Video_preview);

      return v7;
    }
  }

  return result;
}

uint64_t sub_24EDEF87C(uint64_t a1, uint64_t a2)
{
  if (qword_27F210768 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v2 = off_27F230730;
  if (*(off_27F230730 + 2))
  {
    v3 = sub_24E76D644(a1, a2);
    v5 = v4;

    if (v5)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_24EDEF930()
{
  result = qword_27F230738;
  if (!qword_27F230738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230738);
  }

  return result;
}

unint64_t sub_24EDEF984(unint64_t result)
{
  if (result > 0xD)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24EDEF998()
{
  result = qword_27F230740;
  if (!qword_27F230740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230740);
  }

  return result;
}

unint64_t sub_24EDEF9F0()
{
  result = qword_27F230748;
  if (!qword_27F230748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230748);
  }

  return result;
}

uint64_t sub_24EDEFA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EDEFAF0(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EDEFC74()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F230770);
  __swift_project_value_buffer(v4, qword_27F230770);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24EDEFDC8(uint64_t a1)
{
  *(v1 + 16) = sub_24E60ADF0(MEMORY[0x277D84F90]);
  sub_24E60169C(a1, v1 + OBJC_IVAR____TtC12GameStoreKit21VideoViewModelManager_metricsPipeline, &qword_27F21C570, "Ю ");
  v3 = [objc_opt_self() defaultCenter];

  v4 = sub_24F92B098();
  [v3 addObserver:v1 selector:sel_videoDecodersUnavailable_ name:v4 object:0];

  sub_24E601704(a1, &qword_27F21C570, "Ю ");
  return v1;
}

uint64_t sub_24EDEFED4()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_24F92B098();
  [v1 removeObserver:v0 name:v2 object:0];

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21VideoViewModelManager_metricsPipeline, &qword_27F21C570, "Ю ");
  return v0;
}

uint64_t sub_24EDEFF8C()
{
  sub_24EDEFED4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VideoViewModelManager(uint64_t a1)
{
  result = qword_27F230790;
  if (!qword_27F230790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EDF0038(uint64_t a1)
{
  sub_24E60169C(a1, &v7, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v8 + 1))
  {
    v10[0] = v7;
    v10[1] = v8;
    v11 = v9;
    v2 = *(v1 + 16);
    if (*(v2 + 16))
    {

      v3 = sub_24E76D934(v10);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 8 * v3);

        sub_24E6585F8(v10);

        return v5;
      }
    }

    sub_24E6585F8(v10);
  }

  else
  {
    sub_24E601704(&v7, &qword_27F235830, &qword_24F93B8C0);
  }

  return 0;
}

uint64_t sub_24EDF0108()
{
  v1 = v0;
  v2 = sub_24F91EB48();
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  *&v40[0] = 0x6B63616279616C50;
  *(&v40[0] + 1) = 0xEA00000000006449;
  sub_24F92C7F8();
  if (!*(v3 + 16) || (v4 = sub_24E76D934(&v41), (v5 & 1) == 0))
  {

    sub_24E6585F8(&v41);
LABEL_14:
    v38 = 0u;
    v39 = 0u;
    return sub_24E601704(&v38, &qword_27F2129B0, &unk_24F945320);
  }

  sub_24E643A9C(*(v3 + 56) + 32 * v4, &v38);
  sub_24E6585F8(&v41);

  if (!*(&v39 + 1))
  {
    return sub_24E601704(&v38, &qword_27F2129B0, &unk_24F945320);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v7 = v41;
  v8 = sub_24F91EB48();
  if (!v8)
  {

    goto LABEL_14;
  }

  v9 = v8;
  sub_24F92C7F8();
  if (!*(v9 + 16) || (v10 = sub_24E76D934(&v41), (v11 & 1) == 0))
  {

    sub_24E6585F8(&v41);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_18;
  }

  sub_24E643A9C(*(v9 + 56) + 32 * v10, &v38);
  sub_24E6585F8(&v41);

  if (!*(&v39 + 1))
  {
LABEL_18:

    return sub_24E601704(&v38, &qword_27F2129B0, &unk_24F945320);
  }

  sub_24E612B0C(&v38, v40);
  if (qword_27F210770 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v12 = sub_24F92AAE8();
    __swift_project_value_buffer(v12, qword_27F230770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A070;
    sub_24F9283A8();
    v13 = *(*(v1 + 16) + 16);
    *(&v42 + 1) = MEMORY[0x277D83B88];
    *&v41 = v13;
    sub_24F928438();
    sub_24E601704(&v41, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24E643A9C(v40, &v41);
    sub_24F928438();
    sub_24E601704(&v41, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v14 = *(v1 + 16);
    v38 = v7;

    sub_24F92C7F8();
    if (*(v14 + 16))
    {
      sub_24E76D934(&v41);
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    sub_24E6585F8(&v41);

    *(&v42 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v41) = v16 & 1;
    sub_24F928438();
    sub_24E601704(&v41, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    v17 = *(v1 + 16);
    v1 = v17 + 64;
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    if (v20)
    {
      break;
    }

LABEL_24:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
        goto LABEL_42;
      }

      v20 = *(v1 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_28:
  while (1)
  {
    v24 = __clz(__rbit64(v20)) | (v22 << 6);
    sub_24E65864C(*(v17 + 48) + 40 * v24, &v41);
    v25 = *(*(v17 + 56) + 8 * v24);
    v36 = v41;
    v37 = v42;
    v26 = v43;
    v27 = *(&v42 + 1);

    if (!v27)
    {
      break;
    }

    v20 &= v20 - 1;
    v41 = v36;
    v42 = v37;
    v43 = v26;

    sub_24F92C7F8();
    v28 = MEMORY[0x253052150](&v41, &v38);
    sub_24E6585F8(&v38);
    if (v28)
    {
      sub_24E6585F8(&v41);

      if (!v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v29 = *(v25 + 24);
      if (v29)
      {
        [v29 pause];
        v30 = *(v25 + 24);
        if (v30)
        {
          v31 = v30;
          sub_24EA9EF78();

          v30 = *(v25 + 24);
        }
      }

      else
      {
        v30 = 0;
      }

      *(v25 + 24) = 0;

      v32 = *(v25 + 24);
      if (v32)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v32 = v32;
        sub_24F923098();

        LOBYTE(v32) = v38;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v38) = v32;

      sub_24F9230A8();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v34 = Strong;
        [Strong setPlayer_];
      }

      sub_24E6585F8(&v41);
      v35 = OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_subscriptions;
      swift_beginAccess();
      *(v25 + v35) = MEMORY[0x277D84FA0];

      if (!v20)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_42:
  __swift_destroy_boxed_opaque_existential_1(v40);
}

void sub_24EDF0930(uint64_t *a1)
{
  v2 = *(type metadata accessor for ChallengeDefinitionDetail(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E861854(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24EDF8660(v5);
  *a1 = v3;
}

uint64_t sub_24EDF09D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24EDF0A74;

  return sub_24EDF0DD8(a1, a2);
}

uint64_t sub_24EDF0A74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v4 = sub_24EDF0C40;
  }

  else
  {
    v4 = sub_24EDF0B88;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24EDF0B88()
{
  v5 = v0;
  v1 = v0[4];
  v4 = v0[3];

  sub_24EDF0930(&v4);
  if (v1)
  {
  }

  else
  {

    v2 = v4;
    v3 = v0[1];

    v3(v2);
  }
}

uint64_t sub_24EDF0C40()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeDefinitionsDataIntentImplementation: Failed to fetch definitions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24EDF0DD8(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for ChallengeDefinitionDefaultOptions(0);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = *(type metadata accessor for Leaderboard(0) - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = *(type metadata accessor for ChallengeDefinitionDetail(0) - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v4 = sub_24F920BA8();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v5 = sub_24F920BC8();
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C8, &unk_24F97A280) - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048, &qword_24F9762B0);
  v2[52] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307E0, &unk_24F9A2520);
  v2[53] = v6;
  v2[54] = *(v6 - 8);
  v2[55] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  v2[56] = v7;
  v2[57] = *(v7 - 8);
  v2[58] = swift_task_alloc();
  v8 = sub_24F920DD8();
  v2[59] = v8;
  v2[60] = *(v8 - 8);
  v2[61] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C0, &unk_24F97A270);
  v2[62] = v9;
  v2[63] = *(v9 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v11 = swift_task_alloc();
  v2[67] = v11;
  *v11 = v2;
  v11[1] = sub_24EDF1398;

  return MEMORY[0x28217F228](v2 + 7, v10, v10);
}

uint64_t sub_24EDF1398()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_24EDF18A0;
  }

  else
  {
    v2 = sub_24EDF14AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF14AC()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213D18, &qword_24F93B960);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93DE60;
  *(v6 + v5) = 0;
  v7 = *(v2 + 104);
  v7(v6 + v5, *MEMORY[0x277D0D410], v1);
  *(v0 + 136) = *(v3 + 16);
  if (*(v0 + 144))
  {
    v34 = v7;
    v35 = v4;
    v8 = *(v0 + 528);
    v9 = *(v0 + 504);
    v10 = *(v0 + 488);
    v33 = *(v0 + 472);
    v11 = *(v0 + 312);
    v31 = *(v0 + 496);
    v32 = *(v0 + 304);
    sub_24E60169C(v0 + 136, v0 + 152, &unk_27F23B740, &qword_24F93EC10);

    sub_24F920F58();
    (*(v9 + 16))(v10, v8, v31);
    (*(v11 + 104))(v10, *MEMORY[0x277D0D1B0], v32);
    v34(v10, *MEMORY[0x277D0D420], v33);
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      v6 = sub_24E619558((v12 > 1), v13 + 1, 1, v6);
    }

    v15 = *(v0 + 480);
    v14 = *(v0 + 488);
    v16 = *(v0 + 472);
    (*(*(v0 + 504) + 8))(*(v0 + 528), *(v0 + 496));
    *(v6 + 16) = v13 + 1;
    (*(v15 + 32))(v6 + v5 + v13 * v35, v14, v16);
  }

  *(v0 + 552) = v6;
  v17 = *(v0 + 176);
  *(v0 + 560) = *v17;
  *(v0 + 568) = *(v17 + 8);

  sub_24F920EF8();
  if (*(v17 + 32))
  {
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
    v20 = swift_task_alloc();
    *(v0 + 576) = v20;
    *v20 = v0;
    v20[1] = sub_24EDF1A58;
    v21 = *(v0 + 464);

    return MEMORY[0x282165148](v21, v6, v18, v19);
  }

  else
  {
    v22 = *(v0 + 416);
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    v25 = sub_24F921038();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    v26 = swift_task_alloc();
    *(v0 + 592) = v26;
    *v26 = v0;
    v26[1] = sub_24EDF1C90;
    v27 = *(v0 + 464);
    v28 = *(v0 + 440);
    v29 = *(v0 + 416);

    return MEMORY[0x282165120](v28, v27, v6, v29, v23, v24);
  }
}

uint64_t sub_24EDF18A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF1A58()
{
  *(*v1 + 584) = v0;

  if (v0)
  {

    v2 = sub_24EDF3BB0;
  }

  else
  {
    v2 = sub_24EDF1B74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF1B74()
{
  v1 = v0[69];
  v2 = v0[52];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = sub_24F921038();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[74] = v6;
  *v6 = v0;
  v6[1] = sub_24EDF1C90;
  v7 = v0[58];
  v8 = v0[55];
  v9 = v0[52];

  return MEMORY[0x282165120](v8, v7, v1, v9, v3, v4);
}

uint64_t sub_24EDF1C90()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  sub_24E601704(*(v2 + 416), &qword_27F21C048, &qword_24F9762B0);

  if (v0)
  {
    v3 = sub_24EDF3D88;
  }

  else
  {
    v3 = sub_24EDF1DF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_24EDF1DF0(__n128 a1)
{
  v3 = v1[54];
  v2 = v1[55];
  v4 = v1[53];
  v1[76] = sub_24F921028();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v5 = swift_task_alloc();
  v1[77] = v5;
  *v5 = v1;
  v5[1] = sub_24EDF1ED8;

  JUMPOUT(0x24F920D28);
}

uint64_t sub_24EDF1ED8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = v1;

  if (v1)
  {
    v4 = sub_24EDF3F60;
  }

  else
  {
    v4 = sub_24EDF2018;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EDF2018(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3)
{
  v4 = v3[78];
  v5 = *(v4 + 16);
  v3[80] = v5;
  v59 = v5;
  if (v5)
  {
    v6 = 0;
    v7 = v3[63];
    v8 = v3[43];
    v9 = v3[39];
    v58 = v3[47];
    v57 = v4 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v10 = (v8 + 48);
    v54 = (v8 + 32);
    v53 = (v9 + 88);
    v52 = *MEMORY[0x277D0D1B0];
    v50 = *MEMORY[0x277D0D1B8];
    v55 = (v8 + 8);
    v46 = (v9 + 8);
    v48 = (v7 + 32);
    v49 = (v9 + 96);
    v51 = (v7 + 8);
    v11 = v3[79];
    v56 = MEMORY[0x277D84F90];
    v47 = v4;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return MEMORY[0x28217F228](isUniquelyReferenced_nonNull_native, a2, a3);
      }

      v14 = v3[50];
      v13 = v3[51];
      v15 = v3[42];
      sub_24E60169C(v57 + *(v58 + 72) * v6, v13, &qword_27F2265C8, &unk_24F97A280);
      sub_24E60169C(v13, v14, &qword_27F2265C8, &unk_24F97A280);
      if ((*v10)(v14, 1, v15) == 1)
      {
        v12 = v3[50];
        sub_24E601704(v3[51], &qword_27F2265C8, &unk_24F97A280);
        isUniquelyReferenced_nonNull_native = sub_24E601704(v12, &qword_27F2265C8, &unk_24F97A280);
      }

      else
      {
        v16 = v3[41];
        v17 = v3[38];
        (*v54)(v3[46], v3[50], v3[42]);
        sub_24F920B88();
        v18 = (*v53)(v16, v17);
        if (v18 == v52)
        {
          v19 = v3[65];
          v20 = v3[62];
          v21 = v3[41];
          (*v49)(v21, v3[38]);
          (*v48)(v19, v21, v20);
          v22 = sub_24F920F68();
          if (v11)
          {
            v36 = v3[65];
            v37 = v3[62];
            v38 = v3[57];
            v39 = v3[58];
            v40 = v3[56];
            v41 = v3[51];
            v42 = v3[46];
            v43 = v3[42];

            (*v51)(v36, v37);
            (*v55)(v42, v43);
            sub_24E601704(v41, &qword_27F2265C8, &unk_24F97A280);
            (*(v38 + 8))(v39, v40);

            __swift_destroy_boxed_opaque_existential_1(v3 + 2);

            v44 = v3[1];

            return v44();
          }

          v24 = v22;
          v25 = v23;
          v26 = v3[51];
          v27 = v3[46];
          v28 = v3[42];
          (*v51)(v3[65], v3[62]);
          (*v55)(v27, v28);
          sub_24E601704(v26, &qword_27F2265C8, &unk_24F97A280);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_24E615CF4(0, *(v56 + 16) + 1, 1, v56);
            v56 = isUniquelyReferenced_nonNull_native;
          }

          v30 = *(v56 + 16);
          v29 = *(v56 + 24);
          if (v30 >= v29 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_24E615CF4((v29 > 1), v30 + 1, 1, v56);
            v56 = isUniquelyReferenced_nonNull_native;
          }

          v11 = 0;
          *(v56 + 16) = v30 + 1;
          v31 = v56 + 16 * v30;
          *(v31 + 32) = v24;
          *(v31 + 40) = v25;
          v4 = v47;
        }

        else
        {
          v32 = v18;
          v33 = v3[51];
          (*v55)(v3[46], v3[42]);
          isUniquelyReferenced_nonNull_native = sub_24E601704(v33, &qword_27F2265C8, &unk_24F97A280);
          if (v32 != v50)
          {
            isUniquelyReferenced_nonNull_native = (*v46)(v3[41], v3[38]);
          }
        }
      }

      if (v59 == ++v6)
      {
        goto LABEL_17;
      }
    }
  }

  v56 = MEMORY[0x277D84F90];
LABEL_17:
  v3[81] = v56;
  v34 = type metadata accessor for ASKBagContract(0);
  v35 = swift_task_alloc();
  v3[82] = v35;
  *v35 = v3;
  v35[1] = sub_24EDF2650;
  isUniquelyReferenced_nonNull_native = (v3 + 21);
  a2 = v34;
  a3 = v34;

  return MEMORY[0x28217F228](isUniquelyReferenced_nonNull_native, a2, a3);
}

uint64_t sub_24EDF2650()
{
  *(*v1 + 664) = v0;

  if (v0)
  {

    v2 = sub_24EDF4138;
  }

  else
  {
    v2 = sub_24EDF2778;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF2778()
{
  v0[84] = v0[21];
  v1 = ASKBagContract.challengeAttemptOptions.getter();
  v0[85] = sub_24EF5C370(v1);
  v0[86] = v2;
  v3 = swift_task_alloc();
  v0[87] = v3;
  *v3 = v0;
  v3[1] = sub_24EDF2830;
  v4 = v0[81];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[23];

  return sub_24EDF46E0(v4, v6, v5, v7);
}

uint64_t sub_24EDF2830(uint64_t a1)
{
  v3 = *v2;
  v3[88] = a1;
  v3[89] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24EDF4310, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[90] = v4;
    *v4 = v3;
    v4[1] = sub_24EDF2A0C;
    v5 = v3[86];
    v6 = v3[78];
    v7 = v3[23];
    v8 = v3[85];

    return sub_24EDF9A0C(v8, v5, v6, v7);
  }
}

uint64_t sub_24EDF2A0C(uint64_t a1)
{
  v3 = *v2;
  v3[91] = a1;
  v3[92] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24EDF2D3C, 0, 0);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720, &qword_24F940B20);
    v5 = swift_task_alloc();
    v3[93] = v5;
    *v5 = v3;
    v5[1] = sub_24EDF2BE0;

    return MEMORY[0x28217F228](v3 + 12, v4, v4);
  }
}

uint64_t sub_24EDF2BE0()
{
  *(*v1 + 752) = v0;

  if (v0)
  {

    v2 = sub_24EDF44F8;
  }

  else
  {
    v2 = sub_24EDF2F24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF2D3C()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EDF2F24()
{
  v111 = v0;
  v1 = v0[80];
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v110[0] = 34;
  v103 = (*(v3 + 8))(v110, v2, v3);
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (v1)
  {
    v5 = 0;
    v107 = v0[91];
    v89 = v0[88];
    v6 = v0[63];
    v7 = v0[47];
    v8 = v0[43];
    v9 = v0[39];
    v92 = v0[34];
    v81 = v0[29];
    v88 = v0[26];
    v83 = v0[25];
    v10 = v0[78] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = (v8 + 48);
    v100 = (v8 + 32);
    v98 = (v9 + 88);
    v96 = *MEMORY[0x277D0D1B0];
    v86 = *MEMORY[0x277D0D1B8];
    v82 = (v9 + 8);
    v85 = (v9 + 96);
    v84 = (v6 + 32);
    v87 = (v6 + 8);
    v91 = (v8 + 16);
    v102 = (v8 + 8);
    v12 = MEMORY[0x277D84F90];
    v90 = v0[94];
    v94 = v10;
    v95 = v7;
    v93 = (v8 + 48);
    while (1)
    {
      if (v5 >= *(v0[78] + 16))
      {
        __break(1u);
        return result;
      }

      v109 = v12;
      v16 = v0[48];
      v15 = v0[49];
      v17 = v0[42];
      v18 = v10 + *(v7 + 72) * v5;
      v19 = v10;
      v20 = v7;
      sub_24E60169C(v18, v15, &qword_27F2265C8, &unk_24F97A280);
      sub_24E60169C(v15, v16, &qword_27F2265C8, &unk_24F97A280);
      if ((*v11)(v16, 1, v17) != 1)
      {
        break;
      }

      v13 = v20;
      v14 = v0[48];
      sub_24E601704(v0[49], &qword_27F2265C8, &unk_24F97A280);
      result = sub_24E601704(v14, &qword_27F2265C8, &unk_24F97A280);
      v10 = v19;
      v12 = v109;
LABEL_4:
      ++v5;
      v7 = v13;
      if (v5 == v0[80])
      {
        goto LABEL_35;
      }
    }

    v105 = v5;
    v21 = v0[40];
    v22 = v0[38];
    v23 = v0[33];
    (*v100)(v0[45], v0[48], v0[42]);
    v24 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
    v25 = *(*(v24 - 8) + 56);
    v25(v23, 1, 1, v24);
    sub_24F920B88();
    v26 = (*v98)(v21, v22);
    if (v26 != v96)
    {
      if (v26 != v86)
      {
        (*v82)(v0[40], v0[38]);
      }

LABEL_17:
      v41 = v0[32];
      v40 = v0[33];
      (*v91)(v0[44], v0[45], v0[42]);
      sub_24E60169C(v40, v41, &qword_27F212A00, &qword_24F9A23B0);
      v42 = sub_24F920B18();
      if (*(v107 + 16))
      {
        v44 = sub_24E76D644(v42, v43);
        v46 = v45;

        if (v46)
        {
          v47 = v0[28];
          sub_24EDFE05C(*(v107 + 56) + *(v88 + 72) * v44, v47, type metadata accessor for ChallengeDefinitionDefaultOptions);
          v48 = *v47;

          sub_24EDFE5E0(v47, type metadata accessor for ChallengeDefinitionDefaultOptions);
          goto LABEL_22;
        }
      }

      else
      {
      }

      v48 = 0;
LABEL_22:
      v49 = v0[86];
      v50 = v0[85];
      if ((sub_24F920A98() & 1) == 0)
      {
        v50 = v49;
      }

      v51 = sub_24F920B18();
      if (*(v107 + 16))
      {
        v53 = sub_24E76D644(v51, v52);
        v55 = v54;

        if (v55)
        {
          v56 = v0[27];
          v57 = v0[24];
          sub_24EDFE05C(*(v107 + 56) + *(v88 + 72) * v53, v56, type metadata accessor for ChallengeDefinitionDefaultOptions);
          v58 = *(v83 + 20);
          v59 = sub_24F920A88();
          v60 = *(v59 - 8);
          (*(v60 + 16))(v57, v56 + v58, v59);
          sub_24EDFE5E0(v56, type metadata accessor for ChallengeDefinitionDefaultOptions);
          (*(v60 + 56))(v57, 0, 1, v59);
LABEL_29:
          v63 = v0[49];
          v64 = v0[45];
          v65 = v0[42];
          v66 = v0[36];
          v67 = v0[37];
          v68 = v0[35];
          v69 = v0[33];
          sub_24EF52FB0(v0[44], v0[32], v103 & 1, v48, v50, v0[24], v66);
          sub_24E601704(v69, &qword_27F212A00, &qword_24F9A23B0);
          (*v102)(v64, v65);
          sub_24E601704(v63, &qword_27F2265C8, &unk_24F97A280);
          sub_24EDFE6BC(v66, v67, type metadata accessor for ChallengeDefinitionDetail);
          sub_24EDFE6BC(v67, v68, type metadata accessor for ChallengeDefinitionDetail);
          v12 = v109;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_24E619530(0, v109[2] + 1, 1, v109);
          }

          v5 = v105;
          v10 = v94;
          v13 = v95;
          v11 = v93;
          v71 = v12[2];
          v70 = v12[3];
          if (v71 >= v70 >> 1)
          {
            v12 = sub_24E619530((v70 > 1), v71 + 1, 1, v12);
          }

          v72 = v0[35];
          v12[2] = v71 + 1;
          result = sub_24EDFE6BC(v72, v12 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v71, type metadata accessor for ChallengeDefinitionDetail);
          goto LABEL_4;
        }
      }

      else
      {
      }

      v61 = v0[24];
      v62 = sub_24F920A88();
      (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
      goto LABEL_29;
    }

    v27 = v0[64];
    v28 = v0[62];
    v29 = v0[40];
    (*v85)(v29, v0[38]);
    (*v84)(v27, v29, v28);
    v30 = sub_24F920F68();
    if (v90)
    {
      v97 = v0[64];
      v77 = v0[62];
      v78 = v0[57];
      v106 = v0[56];
      v108 = v0[58];
      v104 = v0[49];
      v101 = v0[45];
      v99 = v0[42];
      v79 = v0[33];

      (*v87)(v97, v77);
      sub_24E601704(v79, &qword_27F212A00, &qword_24F9A23B0);
      (*v102)(v101, v99);
      sub_24E601704(v104, &qword_27F2265C8, &unk_24F97A280);
      (*(v78 + 8))(v108, v106);

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);

      v80 = v0[1];

      return v80();
    }

    if (*(v89 + 16))
    {
      v32 = sub_24E76D644(v30, v31);
      v34 = v33;

      if (v34)
      {
        v35 = v0[64];
        v36 = v0[62];
        v37 = v0[33];
        v38 = v0[30];
        v39 = v0[31];
        sub_24EDFE05C(*(v89 + 56) + *(v81 + 72) * v32, v38, type metadata accessor for Leaderboard);
        (*v87)(v35, v36);
        sub_24E601704(v37, &qword_27F212A00, &qword_24F9A23B0);
        sub_24EDFE6BC(v38, v39, type metadata accessor for Leaderboard);
        sub_24EDFE6BC(v39, v37, type metadata accessor for Leaderboard);
        v25(v37, 0, 1, v24);
LABEL_16:
        v90 = 0;
        goto LABEL_17;
      }
    }

    else
    {
    }

    (*v87)(v0[64], v0[62]);
    goto LABEL_16;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_35:
  v73 = v0[57];
  v74 = v0[58];
  v75 = v0[56];

  (*(v73 + 8))(v74, v75);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v76 = v0[1];

  return v76(v12);
}

uint64_t sub_24EDF3BB0()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EDF3D88()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EDF3F60()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EDF4138()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EDF4310()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EDF44F8()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EDF46E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_24EDF4704, 0, 0);
}

uint64_t sub_24EDF4704()
{
  *(v0 + 96) = sub_24F92B7F8();
  *(v0 + 104) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EDF479C, v2, v1);
}

uint64_t sub_24EDF479C()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 112) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24EDF4824, 0, 0);
}

uint64_t sub_24EDF4824(uint64_t a1)
{
  *(v1 + 120) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EDF48B0, v3, v2);
}

uint64_t sub_24EDF48B0()
{
  v1 = v0[14];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[16] = *v2;
  v0[17] = v2[1];

  return MEMORY[0x2822009F8](sub_24EDF499C, 0, 0);
}

uint64_t sub_24EDF499C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 128);
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  *(v3 + 40) = v9;
  *(v3 + 56) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213060, &qword_24F93A810);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307E8, &qword_24F9A2558);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_24EDF4AD4;

  return MEMORY[0x282200740](v0 + 56, v4, v5, 0, 0, &unk_24F9A2548, v3, v4);
}

uint64_t sub_24EDF4AD4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24EDF4BF8;
  }

  else
  {

    v2 = sub_24EDFE9A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF4BF8()
{

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeDefinitionsDataIntentImplementation: Failed to fetch leaderboards: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24EDF4DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  v8[18] = *(type metadata accessor for Leaderboard(0) - 8);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307F0, &qword_24F9A2560);
  v8[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213060, &qword_24F93A810);
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307F8, &qword_24F9A2568);
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EDF4FCC, 0, 0);
}

uint64_t sub_24EDF4FCC()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = **(v0 + 88);
    v26 = sub_24F92B858();
    v3 = *(v26 - 8);
    v25 = *(v3 + 56);
    v24 = (v3 + 48);
    v23 = (v3 + 8);
    v4 = (v1 + 40);
    do
    {
      v32 = v2;
      v8 = *(v0 + 232);
      v7 = *(v0 + 240);
      v29 = *(v0 + 128);
      v30 = *(v0 + 136);
      v9 = *(v0 + 112);
      v28 = *(v0 + 120);
      v10 = *(v0 + 104);
      v12 = *(v4 - 1);
      v11 = *v4;
      v31 = v4;
      v25(v7, 1, 1, v26);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v12;
      v13[5] = v11;
      v13[6] = v10;
      v13[7] = v9;
      v13[8] = v28;
      v13[9] = v29;
      v13[10] = v30;
      sub_24E60169C(v7, v8, &unk_27F21B570, &qword_24F93B020);
      LODWORD(v7) = (*v24)(v8, 1, v26);

      v14 = *(v0 + 232);
      if (v7 == 1)
      {
        sub_24E601704(*(v0 + 232), &unk_27F21B570, &qword_24F93B020);
      }

      else
      {
        sub_24F92B848();
        (*v23)(v14, v26);
      }

      if (v13[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_24F92B778();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      if (v17 | v15)
      {
        v5 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + 240);
      *(v0 + 48) = 1;
      *(v0 + 56) = v5;
      *(v0 + 64) = v27;
      swift_task_create();

      sub_24E601704(v6, &unk_27F21B570, &qword_24F93B020);
      v4 = v31 + 2;
      --v2;
    }

    while (v32 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  sub_24F92B9A8();
  *(v0 + 248) = MEMORY[0x277D84F98];
  v18 = sub_24EDFE94C(&qword_27F230800, &qword_27F2307F8, &qword_24F9A2568);
  v19 = swift_task_alloc();
  *(v0 + 256) = v19;
  *v19 = v0;
  v19[1] = sub_24EDF5394;
  v20 = *(v0 + 208);
  v21 = *(v0 + 160);

  return MEMORY[0x282200308](v21, v20, v18);
}

uint64_t sub_24EDF5394()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    (*(v2[27] + 8))(v2[28], v2[26]);

    v3 = sub_24EDF5914;
  }

  else
  {
    v3 = sub_24EDF54CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EDF54CC()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = (*(v0[22] + 48))(v2, 1, v1);
  v4 = v0[31];
  if (v3 == 1)
  {
    v5 = v0[10];
    (*(v0[27] + 8))(v0[28], v0[26]);
    sub_24E601704(v2, &qword_27F2307F0, &qword_24F9A2560);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v11 = v0[19];
  sub_24E6009C8(v2, v8, &qword_27F213060, &qword_24F93A810);
  sub_24E60169C(v8, v9, &qword_27F213060, &qword_24F93A810);
  v12 = *v9;
  v13 = v9[1];
  sub_24E60169C(v8, v10, &qword_27F213060, &qword_24F93A810);

  v14 = v10 + *(v1 + 48);
  v15 = v12;
  v16 = v13;
  sub_24EDFE6BC(v14, v11, type metadata accessor for Leaderboard);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[9] = v4;
  v18 = sub_24E76D644(v15, v13);
  v20 = *(v4 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
LABEL_20:
    v38 = v18;
    sub_24E8B4088();
    v18 = v38;
LABEL_12:
    v25 = v0[25];
    v27 = v0[18];
    v26 = v0[19];
    if (v1)
    {
      v28 = v18;

      v29 = v0[9];
      sub_24EDFE640(v26, v29[7] + *(v27 + 72) * v28, type metadata accessor for Leaderboard);
      sub_24E601704(v25, &qword_27F213060, &qword_24F93A810);
    }

    else
    {
      v29 = v0[9];
      v29[(v18 >> 6) + 8] |= 1 << v18;
      v30 = (v29[6] + 16 * v18);
      *v30 = v15;
      v30[1] = v16;
      sub_24EDFE6BC(v26, v29[7] + *(v27 + 72) * v18, type metadata accessor for Leaderboard);
      v31 = sub_24E601704(v25, &qword_27F213060, &qword_24F93A810);
      v34 = v29[2];
      v22 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v22)
      {
        __break(1u);
        return MEMORY[0x282200308](v31, v32, v33);
      }

      v29[2] = v35;
    }

    sub_24EDFE5E0(v0[24] + *(v0[21] + 48), type metadata accessor for Leaderboard);
    v0[31] = v29;
    v36 = sub_24EDFE94C(&qword_27F230800, &qword_27F2307F8, &qword_24F9A2568);
    v37 = swift_task_alloc();
    v0[32] = v37;
    *v37 = v0;
    v37[1] = sub_24EDF5394;
    v32 = v0[26];
    v31 = v0[20];
    v33 = v36;

    return MEMORY[0x282200308](v31, v32, v33);
  }

  LOBYTE(v1) = v19;
  if (*(v0[31] + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  sub_24E8A4674(v23, isUniquelyReferenced_nonNull_native);
  v18 = sub_24E76D644(v15, v13);
  if ((v1 & 1) == (v24 & 1))
  {
    goto LABEL_12;
  }

  return sub_24F92CF88();
}

uint64_t sub_24EDF5914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF59D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 64) = a1;
  type metadata accessor for Leaderboard(0);
  v14 = swift_task_alloc();
  *(v8 + 88) = v14;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 56) = v18;
  v15 = swift_task_alloc();
  *(v8 + 96) = v15;
  *v15 = v8;
  v15[1] = sub_24EDF5B10;

  return sub_24E648974(v14, (v8 + 16), v19);
}

uint64_t sub_24EDF5B10()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24EDF5CDC;
  }

  else
  {
    v2 = sub_24EDF5C24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF5C24()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213060, &qword_24F93A810) + 48);
  *v4 = v3;
  v4[1] = v1;
  sub_24EDFE6BC(v2, v4 + v5, type metadata accessor for Leaderboard);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24EDF5CDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF5D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  *(v3 + 48) = *(a2 + 32);
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = sub_24EDF5DF0;

  return sub_24EDF09D8(v3 + 16, a3);
}

uint64_t sub_24EDF5DF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 56) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24EDF5F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = *(type metadata accessor for ChallengeDefinitionDefaultOptions(0) - 8);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307A8, &qword_24F9A23F8);
  v6[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213230, &qword_24F93AA00);
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307B0, &unk_24F9A2400);
  v6[26] = v8;
  v6[27] = *(v8 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C8, &unk_24F97A280) - 8);
  v6[30] = swift_task_alloc();
  v9 = sub_24F920BC8();
  v6[31] = v9;
  v10 = *(v9 - 8);
  v6[32] = v10;
  v6[33] = *(v10 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EDF61FC, 0, 0);
}

uint64_t sub_24EDF61FC()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 232);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v0 + 256);
    v6 = (v5 + 48);
    v37 = *(v0 + 264) + 7;
    v38 = (v5 + 48);
    v39 = v5;
    v7 = *(v3 + 72);
    v35 = v7;
    v36 = (v5 + 8);
    do
    {
      v9 = *(v0 + 240);
      v8 = *(v0 + 248);
      sub_24E60169C(v4, v9, &qword_27F2265C8, &unk_24F97A280);
      if ((*v6)(v9, 1, v8) == 1)
      {
        sub_24E601704(*(v0 + 240), &qword_27F2265C8, &unk_24F97A280);
      }

      else
      {
        v46 = v2;
        v11 = *(v0 + 272);
        v10 = *(v0 + 280);
        v12 = *(v0 + 248);
        v13 = *(v0 + 136);
        v44 = *(v0 + 120);
        v45 = *(v0 + 128);
        v42 = *(v0 + 104);
        v43 = *(v0 + 112);
        v40 = v13;
        v41 = *(v39 + 32);
        v41(v10, *(v0 + 240), v12);
        v14 = sub_24F92B858();
        v15 = *(v14 - 8);
        (*(v15 + 56))(v13, 1, 1, v14);
        (*(v39 + 16))(v11, v10, v12);
        v16 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v17 = (v37 + v16) & 0xFFFFFFFFFFFFFFF8;
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        v41(v18 + v16, v11, v12);
        v19 = (v18 + v17);
        *v19 = v42;
        v19[1] = v43;
        *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
        sub_24E60169C(v40, v45, &unk_27F21B570, &qword_24F93B020);
        v20 = (*(v15 + 48))(v45, 1, v14);

        v21 = *(v0 + 128);
        if (v20 == 1)
        {
          sub_24E601704(*(v0 + 128), &unk_27F21B570, &qword_24F93B020);
        }

        else
        {
          sub_24F92B848();
          (*(v15 + 8))(v21, v14);
        }

        v7 = v35;
        if (*(v18 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_24F92B778();
          v24 = v23;
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v25 = **(v0 + 88);

        if (v24 | v22)
        {
          v26 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v22;
          *(v0 + 40) = v24;
        }

        else
        {
          v26 = 0;
        }

        v27 = *(v0 + 280);
        v28 = *(v0 + 248);
        v29 = *(v0 + 136);
        *(v0 + 48) = 1;
        *(v0 + 56) = v26;
        *(v0 + 64) = v25;
        swift_task_create();

        sub_24E601704(v29, &unk_27F21B570, &qword_24F93B020);
        (*v36)(v27, v28);
        v2 = v46;
        v6 = v38;
      }

      v4 += v7;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  sub_24F92B9A8();
  *(v0 + 288) = MEMORY[0x277D84F98];
  v30 = sub_24EDFE94C(&qword_27F2307B8, &qword_27F2307B0, &unk_24F9A2400);
  v31 = swift_task_alloc();
  *(v0 + 296) = v31;
  *v31 = v0;
  v31[1] = sub_24EDF66FC;
  v32 = *(v0 + 208);
  v33 = *(v0 + 160);

  return MEMORY[0x282200308](v33, v32, v30);
}

uint64_t sub_24EDF66FC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2[27] + 8))(v2[28], v2[26]);

    v3 = sub_24EDF6CA0;
  }

  else
  {
    v3 = sub_24EDF6834;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EDF6834()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = (*(v0[22] + 48))(v2, 1, v1);
  v4 = v0[36];
  if (v3 == 1)
  {
    v5 = v0[10];
    (*(v0[27] + 8))(v0[28], v0[26]);
    sub_24E601704(v2, &qword_27F2307A8, &qword_24F9A23F8);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v11 = v0[19];
  sub_24E6009C8(v2, v8, &qword_27F213230, &qword_24F93AA00);
  sub_24E60169C(v8, v9, &qword_27F213230, &qword_24F93AA00);
  v12 = *v9;
  v13 = v9[1];
  sub_24E60169C(v8, v10, &qword_27F213230, &qword_24F93AA00);

  v14 = v10 + *(v1 + 48);
  v15 = v12;
  v16 = v13;
  sub_24EDFE6BC(v14, v11, type metadata accessor for ChallengeDefinitionDefaultOptions);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[9] = v4;
  v18 = sub_24E76D644(v15, v13);
  v20 = *(v4 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
LABEL_20:
    v38 = v18;
    sub_24E8B42E0();
    v18 = v38;
LABEL_12:
    v25 = v0[25];
    v27 = v0[18];
    v26 = v0[19];
    if (v1)
    {
      v28 = v18;

      v29 = v0[9];
      sub_24EDFE640(v26, v29[7] + *(v27 + 72) * v28, type metadata accessor for ChallengeDefinitionDefaultOptions);
      sub_24E601704(v25, &qword_27F213230, &qword_24F93AA00);
    }

    else
    {
      v29 = v0[9];
      v29[(v18 >> 6) + 8] |= 1 << v18;
      v30 = (v29[6] + 16 * v18);
      *v30 = v15;
      v30[1] = v16;
      sub_24EDFE6BC(v26, v29[7] + *(v27 + 72) * v18, type metadata accessor for ChallengeDefinitionDefaultOptions);
      v31 = sub_24E601704(v25, &qword_27F213230, &qword_24F93AA00);
      v34 = v29[2];
      v22 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v22)
      {
        __break(1u);
        return MEMORY[0x282200308](v31, v32, v33);
      }

      v29[2] = v35;
    }

    sub_24EDFE5E0(v0[24] + *(v0[21] + 48), type metadata accessor for ChallengeDefinitionDefaultOptions);
    v0[36] = v29;
    v36 = sub_24EDFE94C(&qword_27F2307B8, &qword_27F2307B0, &unk_24F9A2400);
    v37 = swift_task_alloc();
    v0[37] = v37;
    *v37 = v0;
    v37[1] = sub_24EDF66FC;
    v32 = v0[26];
    v31 = v0[20];
    v33 = v36;

    return MEMORY[0x282200308](v31, v32, v33);
  }

  LOBYTE(v1) = v19;
  if (*(v0[36] + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  sub_24E8A49EC(v23, isUniquelyReferenced_nonNull_native);
  v18 = sub_24E76D644(v15, v13);
  if ((v1 & 1) == (v24 & 1))
  {
    goto LABEL_12;
  }

  return sub_24F92CF88();
}

uint64_t sub_24EDF6CA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF6D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[9] = a1;
  type metadata accessor for ChallengeDefinitionDefaultOptions(0);
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EDF6E28, 0, 0);
}

uint64_t sub_24EDF6E28(uint64_t a1)
{
  *(v1 + 120) = sub_24F920BB8();
  *(v1 + 160) = sub_24F920A98() & 1;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v3 = swift_task_alloc();
  *(v1 + 128) = v3;
  *v3 = v1;
  v3[1] = sub_24EDF6F10;

  return MEMORY[0x28217F228](v1 + 16, v2, v2);
}

uint64_t sub_24EDF6F10()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_24EDF7344;
  }

  else
  {
    v2 = sub_24EDF704C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF704C()
{
  v1 = *(v0 + 120);
  if (*(v0 + 160))
  {
    v2 = (v0 + 88);
  }

  else
  {
    v2 = (v0 + 96);
  }

  v3 = *v2;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  *(v0 + 56) = v1;
  *(v0 + 64) = v3;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  v7 = sub_24E653FA4();
  *v6 = v0;
  v6[1] = sub_24EDF714C;
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);

  return MEMORY[0x28217F4B0](v8, v0 + 56, v9, &type metadata for ChallengeDefinitionDefaultOptionsIntent, v7, v4, v5);
}

uint64_t sub_24EDF714C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24EDF73A8;
  }

  else
  {

    v2 = sub_24EDF7288;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF7288()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213230, &qword_24F93AA00) + 48);
  *v2 = sub_24F920B18();
  v2[1] = v4;
  sub_24EDFE6BC(v1, v2 + v3, type metadata accessor for ChallengeDefinitionDefaultOptions);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EDF7344()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF73A8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307D0, &qword_24F9A2470);
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EDF7554, 0, 0);
}

uint64_t sub_24EDF7554()
{
  v1 = v0[15];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v34 = v0 + 2;
  v5 = -1;
  v6 = -1 << *(v0[15] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v38 = v0[15];

  v12 = 0;
  v36 = v8;
  v37 = v3;
  v35 = v0;
  while (v7)
  {
LABEL_10:
    v15 = v0[23];
    v16 = v0[17];
    v17 = v0[18];
    v40 = v0[16];
    v41 = v0[22];
    v18 = __clz(__rbit64(v7)) | (v12 << 6);
    v19 = (*(v38 + 48) + 16 * v18);
    v20 = v19[1];
    v39 = *v19;
    v21 = *(*(v38 + 56) + 8 * v18);
    v22 = sub_24F92B858();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v15, 1, 1, v22);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v39;
    v24[5] = v20;
    v24[6] = v21;
    v24[7] = v40;
    v24[8] = v16;
    v24[9] = v17;
    sub_24E60169C(v15, v41, &unk_27F21B570, &qword_24F93B020);
    LODWORD(v15) = (*(v23 + 48))(v41, 1, v22);

    v25 = v35[22];
    if (v15 == 1)
    {
      sub_24E601704(v35[22], &unk_27F21B570, &qword_24F93B020);
    }

    else
    {
      sub_24F92B848();
      (*(v23 + 8))(v25, v22);
    }

    v0 = v35;
    if (v24[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_24F92B778();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = *v35[14];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307C0, &qword_24F9A2460);
    v30 = (v28 | v26);
    if (v28 | v26)
    {
      v30 = v34;
      *v34 = 0;
      v34[1] = 0;
      v35[4] = v26;
      v35[5] = v28;
    }

    v13 = v35[23];
    v7 &= v7 - 1;
    v35[6] = 1;
    v35[7] = v30;
    v35[8] = v29;
    swift_task_create();

    v9 = sub_24E601704(v13, &unk_27F21B570, &qword_24F93B020);
    v8 = v36;
    v3 = v37;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return MEMORY[0x282200308](v9, v10, v11);
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307C0, &qword_24F9A2460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  sub_24F92B9A8();
  v0[24] = MEMORY[0x277D84F98];
  v31 = sub_24EDFE94C(&qword_27F2307D8, &qword_27F2307D0, &qword_24F9A2470);
  v32 = swift_task_alloc();
  v0[25] = v32;
  *v32 = v0;
  v32[1] = sub_24EDF799C;
  v10 = v0[19];
  v9 = (v0 + 9);
  v11 = v31;

  return MEMORY[0x282200308](v9, v10, v11);
}

uint64_t sub_24EDF799C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    (*(v2[20] + 8))(v2[21], v2[19]);

    v3 = sub_24EDF7DAC;
  }

  else
  {
    v3 = sub_24EDF7AD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EDF7AD4()
{
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[24];
  if (v2)
  {
    v5 = v0[11];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[12] = v4;
    v7 = sub_24E76D644(v3, v2);
    v9 = *(v4 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v1 = v8;
      if (*(v0[24] + 24) < v12)
      {
        sub_24E8A50DC(v12, isUniquelyReferenced_nonNull_native);
        v7 = sub_24E76D644(v3, v2);
        if ((v1 & 1) != (v13 & 1))
        {

          return sub_24F92CF88();
        }

LABEL_12:
        if (v1)
        {
LABEL_13:
          v17 = v7;

          v18 = v0[12];
          *(v18[7] + 8 * v17) = v5;

          goto LABEL_18;
        }

LABEL_16:
        v18 = v0[12];
        v18[(v7 >> 6) + 8] |= 1 << v7;
        v20 = (v18[6] + 16 * v7);
        *v20 = v3;
        v20[1] = v2;
        *(v18[7] + 8 * v7) = v5;

        v24 = v18[2];
        v11 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v11)
        {
          __break(1u);
          return MEMORY[0x282200308](v21, v22, v23);
        }

        v18[2] = v25;
LABEL_18:
        v0[24] = v18;
        v26 = sub_24EDFE94C(&qword_27F2307D8, &qword_27F2307D0, &qword_24F9A2470);
        v27 = swift_task_alloc();
        v0[25] = v27;
        *v27 = v0;
        v27[1] = sub_24EDF799C;
        v22 = v0[19];
        v21 = (v0 + 9);
        v23 = v26;

        return MEMORY[0x282200308](v21, v22, v23);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v19 = v7;
    sub_24E8B4790();
    v7 = v19;
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v15 = v0[13];
  (*(v0[20] + 8))(v0[21], v0[19]);
  *v15 = v4;

  v16 = v0[1];

  return v16();
}

uint64_t sub_24EDF7DAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF7E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v13;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v8[15] = a1;
  v8[22] = *(type metadata accessor for Leaderboard(0) - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v10 = swift_task_alloc();
  v8[25] = v10;
  *v10 = v8;
  v10[1] = sub_24EDF7F58;

  return MEMORY[0x28217F228](v8 + 9, v9, v9);
}

uint64_t sub_24EDF7F58()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24EDF8580;
  }

  else
  {
    v2 = sub_24EDF806C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF806C()
{
  v1 = *(v0 + 160);
  v10 = *(v0 + 144);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v4);
  *(v0 + 16) = v3;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = v2;
  *(v0 + 48) = v10;
  *(v0 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  v7 = sub_24E6511BC();
  *v6 = v0;
  v6[1] = sub_24EDF817C;
  v8 = *(v0 + 168);

  return MEMORY[0x28217F4B0](v0 + 112, v0 + 16, v8, &type metadata for LeaderboardsDataIntent, v7, v4, v5);
}

uint64_t sub_24EDF817C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_24EDF85EC;
  }

  else
  {
    v2 = sub_24EDF8290;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24EDF8290()
{
  v1 = v0[14];
  v30 = *(v1 + 16);
  if (v30)
  {
    v2 = 0;
    v28 = v0[22];
    v29 = v0[24];
    v27 = v1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v3 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v5 = v0[23];
      v4 = v0[24];
      v6 = *(v28 + 72);
      sub_24EDFE05C(v27 + v6 * v2, v4, type metadata accessor for Leaderboard);
      v8 = *(v29 + 16);
      v7 = *(v29 + 24);
      sub_24EDFE05C(v4, v5, type metadata accessor for Leaderboard);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_24E76D644(v8, v7);
      v12 = v3[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_24;
      }

      v16 = v11;
      if (v3[3] < v15)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v22 = v10;
      sub_24E8B4088();
      v10 = v22;
      v18 = v0[23];
      if (v16)
      {
LABEL_3:
        sub_24EDFE640(v18, v3[7] + v10 * v6, type metadata accessor for Leaderboard);
        goto LABEL_4;
      }

LABEL_12:
      v3[(v10 >> 6) + 8] |= 1 << v10;
      v19 = (v3[6] + 16 * v10);
      *v19 = v8;
      v19[1] = v7;
      sub_24EDFE6BC(v18, v3[7] + v10 * v6, type metadata accessor for Leaderboard);
      v20 = v3[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      v3[2] = v21;

LABEL_4:
      ++v2;
      sub_24EDFE5E0(v0[24], type metadata accessor for Leaderboard);
      if (v30 == v2)
      {
        goto LABEL_17;
      }
    }

    sub_24E8A4674(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_24E76D644(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {

      sub_24F92CF88();
      return;
    }

LABEL_11:
    v18 = v0[23];
    if (v16)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v3 = MEMORY[0x277D84F98];
LABEL_17:
  v23 = v0[16];
  v24 = v0[17];
  v25 = v0[15];

  *v25 = v23;
  v25[1] = v24;
  v25[2] = v3;

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  v26 = v0[1];

  v26();
}

uint64_t sub_24EDF8580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF85EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

void sub_24EDF8660(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
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
        type metadata accessor for ChallengeDefinitionDetail(0);
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ChallengeDefinitionDetail(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24EDF8A18(v8, v9, a1, v4);
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
    sub_24EDF878C(0, v2, 1, a1);
  }
}

void sub_24EDF878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for ChallengeDefinitionDetail(0);
  MEMORY[0x28223BE20](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_24EDFE05C(v22, v16, type metadata accessor for ChallengeDefinitionDetail);
      sub_24EDFE05C(v19, v12, type metadata accessor for ChallengeDefinitionDetail);
      if (*(v16 + 2) == *(v12 + 2) && *(v16 + 3) == *(v12 + 3))
      {
        sub_24EDFE5E0(v12, type metadata accessor for ChallengeDefinitionDetail);
        sub_24EDFE5E0(v16, type metadata accessor for ChallengeDefinitionDetail);
LABEL_5:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_24F92CE08();
      sub_24EDFE5E0(v12, type metadata accessor for ChallengeDefinitionDetail);
      sub_24EDFE5E0(v16, type metadata accessor for ChallengeDefinitionDetail);
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_24EDFE6BC(v22, v9, type metadata accessor for ChallengeDefinitionDetail);
      swift_arrayInitWithTakeFrontToBack();
      sub_24EDFE6BC(v9, v19, type metadata accessor for ChallengeDefinitionDetail);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_24EDF8A18(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v123 = a1;
  v137 = type metadata accessor for ChallengeDefinitionDetail(0);
  v130 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v117 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v117 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v117 - v16;
  MEMORY[0x28223BE20](v18);
  v134 = &v117 - v19;
  MEMORY[0x28223BE20](v20);
  v133 = &v117 - v21;
  MEMORY[0x28223BE20](v22);
  v122 = &v117 - v23;
  MEMORY[0x28223BE20](v24);
  v121 = &v117 - v25;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v138 = v28;
      v112 = *(v28 + 16);
      if (v112 >= 2)
      {
        while (*a3)
        {
          v113 = v28;
          v28 = *(v28 + 16 * v112);
          v114 = v113;
          v115 = *&v113[16 * v112 + 24];
          sub_24EDF9474(*a3 + *(v130 + 72) * v28, *a3 + *(v130 + 72) * *&v113[16 * v112 + 16], *a3 + *(v130 + 72) * v115, v5);
          if (v6)
          {
            goto LABEL_120;
          }

          if (v115 < v28)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_24E86164C(v114);
          }

          if (v112 - 2 >= *(v114 + 2))
          {
            goto LABEL_136;
          }

          v116 = &v114[16 * v112];
          *v116 = v28;
          v116[1] = v115;
          v138 = v114;
          sub_24E8615C0(v112 - 1);
          v28 = v138;
          v112 = *(v138 + 16);
          if (v112 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_146;
      }

LABEL_120:

      return;
    }

LABEL_142:
    v28 = sub_24E86164C(v28);
    goto LABEL_112;
  }

  v117 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v131 = a3;
  v127 = v17;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v128 = v26;
      v118 = v28;
      v31 = *a3;
      v32 = *(v130 + 72);
      v33 = v27 + 1;
      v34 = v121;
      sub_24EDFE05C(v31 + v32 * v30, v121, type metadata accessor for ChallengeDefinitionDetail);
      v132 = v32;
      v35 = v31 + v32 * v29;
      v36 = v122;
      sub_24EDFE05C(v35, v122, type metadata accessor for ChallengeDefinitionDetail);
      v37 = *(v34 + 16) == *(v36 + 16) && *(v34 + 24) == *(v36 + 24);
      v119 = v6;
      if (v37)
      {
        LODWORD(v129) = 0;
      }

      else
      {
        LODWORD(v129) = sub_24F92CE08();
      }

      sub_24EDFE5E0(v122, type metadata accessor for ChallengeDefinitionDetail);
      sub_24EDFE5E0(v121, type metadata accessor for ChallengeDefinitionDetail);
      v120 = v29;
      v38 = v29 + 2;
      v39 = v132 * (v29 + 2);
      v40 = v31 + v39;
      v41 = v33;
      v42 = v132 * v33;
      a3 = v31 + v132 * v33;
      do
      {
        v44 = v38;
        v28 = v41;
        v5 = v42;
        v45 = v39;
        v135 = v38;
        if (v38 >= v128)
        {
          break;
        }

        v46 = v14;
        v47 = v133;
        sub_24EDFE05C(v40, v133, type metadata accessor for ChallengeDefinitionDetail);
        v48 = v134;
        sub_24EDFE05C(a3, v134, type metadata accessor for ChallengeDefinitionDetail);
        v49 = *(v47 + 16) == *(v48 + 16) && *(v47 + 24) == *(v48 + 24);
        v43 = v49 ? 0 : sub_24F92CE08();
        v14 = v46;
        v6 = type metadata accessor for ChallengeDefinitionDetail;
        sub_24EDFE5E0(v134, type metadata accessor for ChallengeDefinitionDetail);
        sub_24EDFE5E0(v133, type metadata accessor for ChallengeDefinitionDetail);
        v44 = v135;
        v38 = v135 + 1;
        v40 += v132;
        a3 += v132;
        v41 = v28 + 1;
        v42 = v5 + v132;
        v39 = v45 + v132;
        v17 = v127;
      }

      while (((v129 ^ v43) & 1) == 0);
      if ((v129 & 1) == 0)
      {
        v30 = v44;
LABEL_36:
        v28 = v118;
        v6 = v119;
        a3 = v131;
        v29 = v120;
        goto LABEL_37;
      }

      if (v44 < v120)
      {
        goto LABEL_139;
      }

      if (v120 < v44)
      {
        v50 = v120 * v132;
        v51 = v120;
        do
        {
          if (v51 != v28)
          {
            v53 = *v131;
            if (!*v131)
            {
              goto LABEL_145;
            }

            sub_24EDFE6BC(v53 + v50, v126, type metadata accessor for ChallengeDefinitionDetail);
            if (v50 < v5 || v53 + v50 >= (v53 + v45))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_24EDFE6BC(v126, v53 + v5, type metadata accessor for ChallengeDefinitionDetail);
          }

          ++v51;
          v5 -= v132;
          v45 -= v132;
          v50 += v132;
        }

        while (v51 < v28--);
        v30 = v135;
        goto LABEL_36;
      }

      v30 = v44;
      v28 = v118;
      v6 = v119;
      a3 = v131;
      v29 = v120;
    }

LABEL_37:
    v54 = *(a3 + 8);
    if (v30 < v54)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_138;
      }

      if (v30 - v29 < v117)
      {
        break;
      }
    }

LABEL_59:
    if (v30 < v29)
    {
      goto LABEL_137;
    }

    v135 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_24E615ED8(0, *(v28 + 16) + 1, 1, v28);
    }

    v66 = *(v28 + 16);
    v65 = *(v28 + 24);
    v67 = v66 + 1;
    v27 = v135;
    if (v66 >= v65 >> 1)
    {
      v111 = sub_24E615ED8((v65 > 1), v66 + 1, 1, v28);
      v27 = v135;
      v28 = v111;
    }

    *(v28 + 16) = v67;
    v68 = v28 + 16 * v66;
    *(v68 + 32) = v29;
    *(v68 + 40) = v27;
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_147;
    }

    if (v66)
    {
      while (1)
      {
        a3 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v69 = *(v28 + 32);
          v70 = *(v28 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_79:
          if (v72)
          {
            goto LABEL_126;
          }

          v85 = (v28 + 16 * v67);
          v87 = *v85;
          v86 = v85[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_129;
          }

          v91 = (v28 + 32 + 16 * a3);
          v93 = *v91;
          v92 = v91[1];
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_133;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              a3 = v67 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v95 = (v28 + 16 * v67);
        v97 = *v95;
        v96 = v95[1];
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_93:
        if (v90)
        {
          goto LABEL_128;
        }

        v98 = v28 + 16 * a3;
        v100 = *(v98 + 32);
        v99 = *(v98 + 40);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_131;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_100:
        v106 = a3 - 1;
        if (a3 - 1 >= v67)
        {
          __break(1u);
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
          goto LABEL_141;
        }

        if (!*v131)
        {
          goto LABEL_144;
        }

        v107 = v28;
        v108 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v106);
        v109 = *(v108 + 16 * a3 + 8);
        sub_24EDF9474(*v131 + *(v130 + 72) * v28, *v131 + *(v130 + 72) * *(v108 + 16 * a3), *v131 + *(v130 + 72) * v109, v5);
        if (v6)
        {
          goto LABEL_120;
        }

        if (v109 < v28)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_24E86164C(v107);
        }

        if (v106 >= *(v107 + 2))
        {
          goto LABEL_123;
        }

        v110 = &v107[16 * v106];
        *(v110 + 4) = v28;
        *(v110 + 5) = v109;
        v138 = v107;
        sub_24E8615C0(a3);
        v28 = v138;
        v67 = *(v138 + 16);
        v27 = v135;
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = v28 + 32 + 16 * v67;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_124;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_125;
      }

      v80 = (v28 + 16 * v67);
      v82 = *v80;
      v81 = v80[1];
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_127;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_130;
      }

      if (v84 >= v76)
      {
        v102 = (v28 + 32 + 16 * a3);
        v104 = *v102;
        v103 = v102[1];
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_134;
        }

        if (v71 < v105)
        {
          a3 = v67 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v131;
    v26 = v131[1];
    if (v27 >= v26)
    {
      goto LABEL_110;
    }
  }

  v55 = v29 + v117;
  if (__OFADD__(v29, v117))
  {
    goto LABEL_140;
  }

  if (v55 >= v54)
  {
    v55 = *(a3 + 8);
  }

  if (v55 < v29)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v30 == v55)
  {
    goto LABEL_59;
  }

  v118 = v28;
  v119 = v6;
  a3 = *a3;
  v56 = *(v130 + 72);
  v57 = a3 + v56 * (v30 - 1);
  v58 = v29;
  v59 = -v56;
  v120 = v58;
  v60 = v58 - v30;
  v124 = v56;
  v125 = v55;
  v5 = a3 + v30 * v56;
LABEL_48:
  v135 = v30;
  v128 = v5;
  v129 = v60;
  v132 = v57;
  while (1)
  {
    sub_24EDFE05C(v5, v17, type metadata accessor for ChallengeDefinitionDetail);
    sub_24EDFE05C(v57, v14, type metadata accessor for ChallengeDefinitionDetail);
    if (*(v17 + 2) == *(v14 + 2) && *(v17 + 3) == *(v14 + 3))
    {
      sub_24EDFE5E0(v14, type metadata accessor for ChallengeDefinitionDetail);
      sub_24EDFE5E0(v17, type metadata accessor for ChallengeDefinitionDetail);
LABEL_47:
      v30 = v135 + 1;
      v57 = v132 + v124;
      v60 = v129 - 1;
      v5 = v128 + v124;
      if (v135 + 1 == v125)
      {
        v30 = v125;
        v28 = v118;
        v6 = v119;
        v29 = v120;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v62 = sub_24F92CE08();
    sub_24EDFE5E0(v14, type metadata accessor for ChallengeDefinitionDetail);
    sub_24EDFE5E0(v17, type metadata accessor for ChallengeDefinitionDetail);
    if ((v62 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!a3)
    {
      break;
    }

    v63 = v136;
    sub_24EDFE6BC(v5, v136, type metadata accessor for ChallengeDefinitionDetail);
    swift_arrayInitWithTakeFrontToBack();
    sub_24EDFE6BC(v63, v57, type metadata accessor for ChallengeDefinitionDetail);
    v57 += v59;
    v5 += v59;
    if (__CFADD__(v60++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_24EDF9474(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a4;
  v46 = type metadata accessor for ChallengeDefinitionDetail(0);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v43 = a2;
  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v18 = a3 - v43;
  if (a3 - v43 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_72;
  }

  v19 = (a2 - a1) / v17;
  v50 = a1;
  v49 = v47;
  if (v19 >= v18 / v17)
  {
    v22 = v18 / v17 * v17;
    if (v47 < v43 || v43 + v22 <= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v47 != v43)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = v47 + v22;
    if (v22 >= 1)
    {
      v29 = -v17;
      v30 = v47 + v22;
      v42 = -v17;
      do
      {
        v40 = v28;
        v31 = v43;
        v43 += v29;
        while (1)
        {
          if (v31 <= a1)
          {
            v50 = v31;
            v48 = v40;
            goto LABEL_69;
          }

          v32 = a3;
          v41 = v28;
          v33 = v42;
          v34 = v30 + v42;
          v35 = v44;
          sub_24EDFE05C(v30 + v42, v44, type metadata accessor for ChallengeDefinitionDetail);
          v36 = v45;
          sub_24EDFE05C(v43, v45, type metadata accessor for ChallengeDefinitionDetail);
          v37 = *(v35 + 16) == *(v36 + 16) && *(v35 + 24) == *(v36 + 24);
          v38 = v37 ? 0 : sub_24F92CE08();
          a3 = v32 + v33;
          sub_24EDFE5E0(v45, type metadata accessor for ChallengeDefinitionDetail);
          sub_24EDFE5E0(v44, type metadata accessor for ChallengeDefinitionDetail);
          if (v38)
          {
            break;
          }

          v28 = v30 + v33;
          if (v32 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v32 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 += v33;
          if (v34 <= v47)
          {
            v43 = v31;
            goto LABEL_68;
          }
        }

        if (v32 < v31 || a3 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
          v28 = v41;
        }

        else
        {
          v28 = v41;
          if (v32 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v42;
      }

      while (v30 > v47);
    }

LABEL_68:
    v50 = v43;
    v48 = v28;
  }

  else
  {
    v20 = v19 * v17;
    if (v47 < a1 || a1 + v20 <= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v21 = v43;
    }

    else
    {
      v21 = v43;
      if (v47 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v23 = v47 + v20;
    v48 = v47 + v20;
    if (v20 >= 1 && v21 < a3)
    {
      while (1)
      {
        sub_24EDFE05C(v21, v15, type metadata accessor for ChallengeDefinitionDetail);
        sub_24EDFE05C(v47, v12, type metadata accessor for ChallengeDefinitionDetail);
        if (*(v15 + 2) == *(v12 + 2) && *(v15 + 3) == *(v12 + 3))
        {
          break;
        }

        v26 = sub_24F92CE08();
        sub_24EDFE5E0(v12, type metadata accessor for ChallengeDefinitionDetail);
        sub_24EDFE5E0(v15, type metadata accessor for ChallengeDefinitionDetail);
        if ((v26 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v21 || a1 >= v21 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v21 += v17;
LABEL_38:
        a1 += v17;
        v50 = a1;
        if (v47 >= v23 || v21 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_24EDFE5E0(v12, type metadata accessor for ChallengeDefinitionDetail);
      sub_24EDFE5E0(v15, type metadata accessor for ChallengeDefinitionDetail);
LABEL_30:
      v27 = v47 + v17;
      if (a1 < v47 || a1 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v47)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v49 = v27;
      v47 = v27;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_24F8FB110(&v50, &v49, &v48);
}

uint64_t sub_24EDF9A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_24EDF9A30, 0, 0);
}

uint64_t sub_24EDF9A30()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213230, &qword_24F93AA00);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307A0, &unk_24F9A23E8);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_24EDF9B58;

  return MEMORY[0x282200740](v0 + 16, v5, v6, 0, 0, &unk_24F9A23D8, v3, v5);
}

uint64_t sub_24EDF9B58()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24EDF9C74;
  }

  else
  {

    v2 = sub_24E7F6F18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF9C74()
{

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeDefinitionsDataIntentImplementation failed to fetch default duration: %@, fallback to empty default", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = *(v0 + 72);

  v12 = sub_24E60EE90(MEMORY[0x277D84F90]);
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_24EDF9E2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](sub_24EDF9E4C, 0, 0);
}

uint64_t sub_24EDF9E4C()
{
  *(v0 + 80) = sub_24F92B7F8();
  *(v0 + 88) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EDF9EE4, v2, v1);
}

uint64_t sub_24EDF9EE4()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 96) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24EDF9F6C, 0, 0);
}

uint64_t sub_24EDF9F6C(uint64_t a1)
{
  *(v1 + 104) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EDF9FF8, v3, v2);
}

uint64_t sub_24EDF9FF8()
{
  v1 = v0[12];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[14] = *v2;
  v0[15] = v2[1];

  return MEMORY[0x2822009F8](sub_24EDFA0E4, 0, 0);
}

uint64_t sub_24EDFA0E4()
{
  v8 = *(v0 + 112);
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v8;
  *(v3 + 40) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307C0, &qword_24F9A2460);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307C8, &qword_24F9A2468);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_24EDFA214;

  return MEMORY[0x282200740](v0 + 56, v4, v5, 0, 0, &unk_24F9A2458, v3, v4);
}

uint64_t sub_24EDFA214()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EDFA354;
  }

  else
  {

    v2 = sub_24EDFA338;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDFA354()
{

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesHubDataIntentImplementation: Failed to fetch leaderboards: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24EDFA4FC(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  v2[20] = swift_task_alloc();
  v3 = type metadata accessor for ChallengeDefinitionDefaultOptions(0);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  type metadata accessor for ChallengeDefinitionDetail(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = *(type metadata accessor for Leaderboard(0) - 8);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v2[35] = v5;
  v2[36] = *(v5 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C0, &unk_24F97A270);
  v2[39] = v6;
  v2[40] = *(v6 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v7 = sub_24F920BA8();
  v2[43] = v7;
  v2[44] = *(v7 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C8, &unk_24F97A280) - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v8 = sub_24F920BC8();
  v2[50] = v8;
  v2[51] = *(v8 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v9 = sub_24F920998();
  v2[55] = v9;
  v2[56] = *(v9 - 8);
  v2[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EDFA9D8, 0, 0);
}

uint64_t sub_24EDFA9D8()
{
  v12 = v0;

  v2 = sub_24F45DED0(v1);

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[36];
    v5 = sub_24EAE6A3C(*(v2 + 16), 0);
    sub_24EAE8A64(&v11, &v5[(*(v4 + 80) + 32) & ~*(v4 + 80)], v3, v2);
    v7 = v6;
    sub_24E6586B4(v11);
    if (v7 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v0[58] = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v9 = swift_task_alloc();
  v0[59] = v9;
  *v9 = v0;
  v9[1] = sub_24EDFAB30;

  return MEMORY[0x28217F228](v0 + 7, v8, v8);
}

uint64_t sub_24EDFAB30()
{
  *(*v1 + 480) = v0;

  if (v0)
  {

    v2 = sub_24EDFAED0;
  }

  else
  {
    v2 = sub_24EDFAC4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDFAC4C()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v2 + 104))(v1, *MEMORY[0x277D0D048], v3);
  v6 = swift_task_alloc();
  v0[61] = v6;
  *v6 = v0;
  v6[1] = sub_24EDFAD68;
  v7 = v0[57];
  v8 = v0[58];

  return MEMORY[0x282165140](v8, v7, v4, v5);
}

uint64_t sub_24EDFAD68()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  (*(v2[56] + 8))(v2[57], v2[55]);
  if (v0)
  {
    v3 = sub_24EDFD60C;
  }

  else
  {
    v3 = sub_24EDFB188;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EDFAED0()
{
  v1 = *(v0 + 480);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v12 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(0, 0);

  v10 = *(v0 + 8);

  return v10(v12);
}

void sub_24EDFB188()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[63] = v1;
  *v1 = v0;
  v1[1] = sub_24EDFB244;

  JUMPOUT(0x24F920D28);
}

uint64_t sub_24EDFB244(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v4 = sub_24EDFD80C;
  }

  else
  {
    v4 = sub_24EDFB384;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EDFB384()
{
  v1 = v0[64];
  v2 = sub_24E60C660(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  v0[66] = v3;
  if (v3)
  {
    v75 = 0;
    v4 = 0;
    v5 = v0[51];
    v6 = v0[44];
    v7 = v0[40];
    v78 = v0[47];
    v77 = v0[64] + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v76 = (v5 + 48);
    v74 = (v5 + 32);
    v73 = (v6 + 88);
    v72 = *MEMORY[0x277D0D1B0];
    v68 = *MEMORY[0x277D0D1B8];
    v70 = v3;
    v71 = (v5 + 8);
    v61 = (v6 + 8);
    v62 = v1;
    v66 = (v7 + 32);
    v67 = (v6 + 96);
    v63 = (v0[32] + 8);
    v64 = (v0[36] + 8);
    v65 = (v7 + 8);
    v8 = v0[65];
    v9 = &qword_27F2265C8;
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v11 = v0[49];
      v10 = v0[50];
      sub_24E60169C(v77 + *(v78 + 72) * v4, v11, &qword_27F2265C8, &unk_24F97A280);
      if ((*v76)(v11, 1, v10) != 1)
      {
        break;
      }

      sub_24E601704(v0[49], &qword_27F2265C8, &unk_24F97A280);
LABEL_4:
      if (v3 == ++v4)
      {
        goto LABEL_29;
      }
    }

    v12 = v0[46];
    v13 = v0[43];
    (*v74)(v0[54], v0[49], v0[50]);
    sub_24F920B88();
    v14 = (*v73)(v12, v13);
    if (v14 != v72)
    {
      v31 = v14;
      (*v71)(v0[54], v0[50]);
      v3 = v70;
      if (v31 != v68)
      {
        (*v61)(v0[46], v0[43]);
      }

      goto LABEL_27;
    }

    v15 = v0[46];
    v16 = v0[42];
    v17 = v0[39];
    (*v67)(v15, v0[43]);
    (*v66)(v16, v15, v17);
    v18 = sub_24F920F68();
    v9 = v75;
    if (v8)
    {
      v47 = v0[54];
      v48 = v0[50];
      v49 = v0[42];
      v50 = v0[39];

      (*v65)(v49, v50);
      (*v71)(v47, v48);

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      if (qword_27F2113B8 == -1)
      {
LABEL_33:
        v51 = sub_24F9220D8();
        __swift_project_value_buffer(v51, qword_27F39E778);
        v52 = v8;
        v53 = sub_24F9220B8();
        v54 = sub_24F92BDB8();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          v57 = v8;
          v58 = _swift_stdlib_bridgeErrorToNSError();
          *(v55 + 4) = v58;
          *v56 = v58;
          _os_log_impl(&dword_24E5DD000, v53, v54, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v55, 0xCu);
          sub_24E601704(v56, &qword_27F227B20, &qword_24F944D30);
          MEMORY[0x2530542D0](v56, -1, -1);
          MEMORY[0x2530542D0](v55, -1, -1);
        }

        v79 = sub_24E60F078(MEMORY[0x277D84F90]);
        sub_24E824448(v9, 0);

        v59 = v0[1];

        return v59(v79);
      }

LABEL_44:
      swift_once();
      goto LABEL_33;
    }

    v20 = v18;
    v69 = v19;
    sub_24F920B28();
    sub_24F920FA8();
    (*v64)(v0[38], v0[35]);
    v21 = sub_24F920F08();
    v23 = v22;
    (*v63)(v0[34], v0[31]);
    sub_24E824448(v75, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_24E76D644(v21, v23);
    v26 = v2[2];
    v27 = (v25 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_42;
    }

    v8 = v25;
    if (v2[3] < v28)
    {
      sub_24E8A1DAC(v28, isUniquelyReferenced_nonNull_native);
      v29 = sub_24E76D644(v21, v23);
      if ((v8 & 1) != (v30 & 1))
      {

        return sub_24F92CF88();
      }

      v9 = v29;
      if ((v8 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_18:

LABEL_22:
      v36 = v2[7];
      v37 = *(v36 + 8 * v9);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *(v36 + 8 * v9) = v37;
      if ((v38 & 1) == 0)
      {
        v37 = sub_24E615CF4(0, *(v37 + 2) + 1, 1, v37);
        *(v36 + 8 * v9) = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        *(v36 + 8 * v9) = sub_24E615CF4((v39 > 1), v40 + 1, 1, v37);
      }

      v41 = v0[54];
      v42 = v0[50];
      (*v65)(v0[42], v0[39]);
      (*v71)(v41, v42);
      v8 = 0;
      v43 = *(v36 + 8 * v9);
      *(v43 + 16) = v40 + 1;
      v44 = v43 + 16 * v40;
      v3 = v70;
      *(v44 + 32) = v20;
      *(v44 + 40) = v69;
      v75 = sub_24E95DAD0;
      v1 = v62;
LABEL_27:
      v9 = &qword_27F2265C8;
      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v25)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_24E8B291C();
      if (v8)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    v2[(v9 >> 6) + 8] |= 1 << v9;
    v32 = (v2[6] + 16 * v9);
    *v32 = v21;
    v32[1] = v23;
    *(v2[7] + 8 * v9) = MEMORY[0x277D84F90];
    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_43;
    }

    v2[2] = v35;
    goto LABEL_22;
  }

  v75 = 0;
LABEL_29:
  v0[68] = v2;
  v0[67] = v75;
  v45 = type metadata accessor for ASKBagContract(0);
  v46 = swift_task_alloc();
  v0[69] = v46;
  *v46 = v0;
  v46[1] = sub_24EDFBCC8;

  return MEMORY[0x28217F228](v0 + 17, v45, v45);
}

uint64_t sub_24EDFBCC8()
{
  *(*v1 + 560) = v0;

  if (v0)
  {

    v2 = sub_24EDFDACC;
  }

  else
  {
    v2 = sub_24EDFBDF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDFBDF0()
{
  v0[71] = v0[17];
  v1 = ASKBagContract.challengeAttemptOptions.getter();
  v0[72] = sub_24EF5C370(v1);
  v0[73] = v2;
  v3 = swift_task_alloc();
  v0[74] = v3;
  *v3 = v0;
  v3[1] = sub_24EDFBEA0;
  v4 = v0[68];
  v5 = v0[18];

  return sub_24EDF9E2C(v4, v5);
}

uint64_t sub_24EDFBEA0(uint64_t a1)
{
  v3 = *v2;
  v3[75] = a1;
  v3[76] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24EDFC248, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[77] = v4;
    *v4 = v3;
    v4[1] = sub_24EDFC074;
    v5 = v3[73];
    v6 = v3[64];
    v7 = v3[18];
    v8 = v3[72];

    return sub_24EDF9A0C(v8, v5, v6, v7);
  }
}

uint64_t sub_24EDFC074(uint64_t a1)
{
  v3 = *v2;
  v3[78] = a1;
  v3[79] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24EDFC670, 0, 0);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720, &qword_24F940B20);
    v5 = swift_task_alloc();
    v3[80] = v5;
    *v5 = v3;
    v5[1] = sub_24EDFC514;

    return MEMORY[0x28217F228](v3 + 12, v4, v4);
  }
}

uint64_t sub_24EDFC248()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[76];
  v2 = v0[67];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v13 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(v2, 0);

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_24EDFC514()
{
  *(*v1 + 648) = v0;

  if (v0)
  {

    v2 = sub_24EDFDD90;
  }

  else
  {
    v2 = sub_24EDFC93C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDFC670()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[79];
  v2 = v0[67];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v13 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(v2, 0);

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_24EDFC93C()
{
  v116 = v0;
  v1 = v0[66];
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  LOBYTE(v115[0]) = 34;
  v107 = (*(v3 + 8))(v115, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (!v1)
  {
    v11 = MEMORY[0x277D84F98];
LABEL_35:
    v112 = v11;
    v70 = v0[67];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v71 = v70;
    goto LABEL_40;
  }

  v4 = 0;
  v113 = v0[78];
  v96 = v0[75];
  v5 = v0[51];
  v6 = v0[47];
  v7 = v0[44];
  v8 = v0[40];
  v85 = v0[27];
  v95 = v0[22];
  v87 = v0[21];
  v9 = v0[64] + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = (v5 + 48);
  v104 = (v5 + 32);
  v103 = (v7 + 88);
  v102 = *MEMORY[0x277D0D1B0];
  v92 = *MEMORY[0x277D0D1B8];
  v86 = (v7 + 8);
  v91 = (v7 + 96);
  v93 = (v0[36] + 8);
  v89 = (v0[32] + 8);
  v90 = (v8 + 32);
  v94 = (v8 + 8);
  v98 = (v5 + 16);
  v106 = (v5 + 8);
  v11 = MEMORY[0x277D84F98];
  v97 = v0[81];
  v100 = v9;
  v101 = v6;
  v99 = (v5 + 48);
  while (1)
  {
    if (v4 >= *(v0[64] + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v12 = v0[50];
    v1 = v0[48];
    sub_24E60169C(v9 + *(v6 + 72) * v4, v1, &qword_27F2265C8, &unk_24F97A280);
    if ((*v10)(v1, 1, v12) != 1)
    {
      break;
    }

    sub_24E601704(v0[48], &qword_27F2265C8, &unk_24F97A280);
LABEL_4:
    if (++v4 == v0[66])
    {
      goto LABEL_35;
    }
  }

  v109 = v4;
  v111 = v11;
  v13 = v0[45];
  v14 = v0[43];
  v15 = v0[30];
  (*v104)(v0[53], v0[48], v0[50]);
  v16 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  sub_24F920B88();
  v18 = (*v103)(v13, v14);
  if (v18 != v102)
  {
    if (v18 != v92)
    {
      (*v86)(v0[45], v0[43]);
    }

LABEL_20:
    v39 = v0[29];
    v38 = v0[30];
    (*v98)(v0[52], v0[53], v0[50]);
    sub_24E60169C(v38, v39, &qword_27F212A00, &qword_24F9A23B0);
    v40 = sub_24F920B18();
    if (*(v113 + 16))
    {
      v42 = sub_24E76D644(v40, v41);
      v44 = v43;

      if (v44)
      {
        v45 = v0[24];
        sub_24EDFE05C(*(v113 + 56) + *(v95 + 72) * v42, v45, type metadata accessor for ChallengeDefinitionDefaultOptions);
        v46 = *v45;

        sub_24EDFE5E0(v45, type metadata accessor for ChallengeDefinitionDefaultOptions);
        goto LABEL_25;
      }
    }

    else
    {
    }

    v46 = 0;
LABEL_25:
    v47 = v0[73];
    v48 = v0[72];
    if (sub_24F920A98())
    {
      v49 = v48;
    }

    else
    {
      v49 = v47;
    }

    v50 = sub_24F920B18();
    if (*(v113 + 16))
    {
      v52 = sub_24E76D644(v50, v51);
      v54 = v53;

      if (v54)
      {
        v55 = v0[23];
        v56 = v0[20];
        sub_24EDFE05C(*(v113 + 56) + *(v95 + 72) * v52, v55, type metadata accessor for ChallengeDefinitionDefaultOptions);
        v57 = *(v87 + 20);
        v58 = sub_24F920A88();
        v59 = *(v58 - 8);
        (*(v59 + 16))(v56, v55 + v57, v58);
        sub_24EDFE5E0(v55, type metadata accessor for ChallengeDefinitionDefaultOptions);
        (*(v59 + 56))(v56, 0, 1, v58);
LABEL_33:
        v62 = v0[53];
        v63 = v0[50];
        v64 = v0[30];
        v65 = v0[25];
        v66 = v0[26];
        sub_24EF52FB0(v0[52], v0[29], v107 & 1, v46, v49, v0[20], v66);
        v1 = sub_24F920B18();
        v68 = v67;
        sub_24EDFE05C(v66, v65, type metadata accessor for ChallengeDefinitionDetail);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115[0] = v111;
        sub_24E820FF0(v65, v1, v68, isUniquelyReferenced_nonNull_native);

        sub_24EDFE5E0(v66, type metadata accessor for ChallengeDefinitionDetail);
        sub_24E601704(v64, &qword_27F212A00, &qword_24F9A23B0);
        (*v106)(v62, v63);
        v11 = v115[0];
        v4 = v109;
        v9 = v100;
        v6 = v101;
        v10 = v99;
        goto LABEL_4;
      }
    }

    else
    {
    }

    v60 = v0[20];
    v61 = sub_24F920A88();
    (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
    goto LABEL_33;
  }

  v88 = v17;
  v19 = v0[45];
  v20 = v0[41];
  v21 = v0[39];
  (*v91)(v19, v0[43]);
  (*v90)(v20, v19, v21);
  sub_24F920B28();
  v4 = v97;
  sub_24F920FA8();
  if (!v97)
  {
    (*v93)(v0[37], v0[35]);
    v22 = sub_24F920F08();
    v24 = v23;
    (*v89)(v0[33], v0[31]);
    if (*(v96 + 16))
    {
      v25 = sub_24E76D644(v22, v24);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
LABEL_18:
        (*v94)(v0[41], v0[39]);
        goto LABEL_19;
      }

      v28 = *(*(v96 + 56) + 8 * v25);

      v29 = sub_24F920F68();
      if (*(v28 + 16))
      {
        v31 = sub_24E76D644(v29, v30);
        v33 = v32;

        if (v33)
        {
          v34 = v0[41];
          v35 = v0[39];
          v36 = v0[30];
          v37 = v0[28];
          sub_24EDFE05C(*(v28 + 56) + *(v85 + 72) * v31, v37, type metadata accessor for Leaderboard);
          (*v94)(v34, v35);
          sub_24E601704(v36, &qword_27F212A00, &qword_24F9A23B0);

          sub_24EDFE6BC(v37, v36, type metadata accessor for Leaderboard);
          v88(v36, 0, 1, v16);
LABEL_19:
          v97 = 0;
          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    goto LABEL_18;
  }

  v114 = v0[53];
  v72 = v0[41];
  v105 = v0[39];
  v73 = v0[37];
  v74 = v0[35];
  v108 = v0[30];
  v110 = v0[50];

  (*v93)(v73, v74);
  (*v94)(v72, v105);
  sub_24E601704(v108, &qword_27F212A00, &qword_24F9A23B0);
  (*v106)(v114, v110);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[67];
  if (qword_27F2113B8 == -1)
  {
    goto LABEL_37;
  }

LABEL_44:
  swift_once();
LABEL_37:
  v75 = sub_24F9220D8();
  __swift_project_value_buffer(v75, qword_27F39E778);
  v76 = v4;
  v77 = sub_24F9220B8();
  v78 = sub_24F92BDB8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 138412290;
    v81 = v4;
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v79 + 4) = v82;
    *v80 = v82;
    _os_log_impl(&dword_24E5DD000, v77, v78, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v79, 0xCu);
    sub_24E601704(v80, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v80, -1, -1);
    MEMORY[0x2530542D0](v79, -1, -1);
  }

  v112 = sub_24E60F078(MEMORY[0x277D84F90]);
  v71 = v1;
LABEL_40:
  sub_24E824448(v71, 0);

  v83 = v0[1];

  return v83(v112);
}

void sub_24EDFD60C()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[62];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[62];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeDefinitionFetchHelper.fetchChallengeDefinitions failed to refresh definitions: %@, skip refreshing", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12 = swift_task_alloc();
  v0[63] = v12;
  *v12 = v0;
  v12[1] = sub_24EDFB244;

  JUMPOUT(0x24F920D28);
}

uint64_t sub_24EDFD80C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[65];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v12 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(0, 0);

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_24EDFDACC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[70];
  v2 = v0[67];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v13 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(v2, 0);

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_24EDFDD90()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[81];
  v2 = v0[67];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v13 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(v2, 0);

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_24EDFE05C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDFE0C4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E6541E4;

  return sub_24EDF5F00(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_24EDFE18C()
{
  v1 = sub_24F920BC8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EDFE288(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F920BC8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24E6541E4;

  return sub_24EDF6D90(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_24EDFE3D4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E6541E4;

  return sub_24EDF743C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_24EDFE49C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EDFE4F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24EDF7E24(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24EDFE5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EDFE640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDFE6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDFE724(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E6541E4;

  return sub_24EDF4DA0(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_24EDFE800()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EDFE858(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24EDF59D8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24EDFE94C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Brick.makeMSOPersonalizedModel(with:)(uint64_t *a1)
{
  v2 = v1;
  v96 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v97 = &v79 - v5;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928AD8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = a1[1];
  if (!v16)
  {
    return 0;
  }

  v89 = v2;
  v80 = v9;
  v81 = v7;
  v82 = v6;
  v95 = v11;
  v17 = *a1;
  v91 = v10;
  v19 = a1[2];
  v18 = a1[3];
  v112 = 0;
  memset(v111, 0, sizeof(v111));
  v20 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v21 = &v79 - v15;
  v22 = sub_24F91F4A8();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, v18 + v20, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v110[3] = &type metadata for MSOContext;
  v24 = swift_allocObject();
  v110[0] = v24;
  v24[2] = v17;
  v24[3] = v16;
  v24[4] = v19;
  v24[5] = v18;
  v93 = v17;
  v25 = v17;
  v26 = v95;
  sub_24EBDFD34(v25, v16);
  v94 = v16;

  v92 = v19;
  v27 = v91;

  v98 = v18;

  sub_24F928A98();
  v28 = sub_24F929D18();
  v30 = v29;
  type metadata accessor for FlowAction(0);
  v31 = swift_allocObject();
  *(v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v32 = v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  v33 = (v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v33 = 0;
  v33[1] = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 21;
  v90 = v21;
  sub_24E60169C(v21, v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v34 = (v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v34 = 0;
  v34[1] = 0;
  v35 = v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v35 = xmmword_24F9406F0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 16) = 0;
  *(v35 + 40) = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v36 = (v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v36 = v28;
  v36[1] = v30;
  sub_24E60169C(v111, v109, &qword_27F235830, &qword_24F93B8C0);
  v37 = *(v26 + 16);
  v88 = v13;
  v37(v31 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v13, v27);
  v38 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v39 = sub_24F929608();
  (*(*(v39 - 8) + 56))(v31 + v38, 1, 1, v39);
  v40 = (v31 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v40 = 0u;
  v40[1] = 0u;
  v41 = v31 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v109, &v106, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v107 + 1))
  {
    v42 = v107;
    *v41 = v106;
    *(v41 + 16) = v42;
    *(v41 + 32) = v108;
    v43 = v98;
  }

  else
  {
    v45 = v80;
    sub_24F91F6A8();
    v46 = sub_24F91F668();
    v48 = v47;
    (*(v81 + 8))(v45, v82);
    v105[0] = v46;
    v105[1] = v48;
    v43 = v98;
    v26 = v95;
    sub_24F92C7F8();
    sub_24E601704(&v106, &qword_27F235830, &qword_24F93B8C0);
  }

  v49 = v89;
  sub_24E601704(v109, &qword_27F235830, &qword_24F93B8C0);
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;

  FlowAction.setPageData(_:)(v110);

  (*(v26 + 8))(v88, v27);
  sub_24E601704(v90, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v111, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v110, &qword_27F2129B0, &unk_24F945320);
  memset(v105, 0, 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_24F941C80;
  *(v50 + 32) = *(v43 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_artwork);
  v51 = v49[4];
  v52 = v49[5];
  v53 = v49[7];
  v90 = v49[6];
  v91 = v51;
  LODWORD(v95) = *(v49 + OBJC_IVAR____TtC12GameStoreKit5Brick_personalizationStyle);
  v104[3] = v96;
  v104[4] = sub_24EDFF4B8();
  v104[0] = v49;
  v54 = v97;
  sub_24E60169C(v49 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics, v97, &qword_27F213E68, &unk_24F93BC80);
  v55 = qword_27F2110F8;
  v56 = v53;

  if (v55 != -1)
  {
    swift_once();
  }

  LODWORD(v89) = dword_27F23E728;
  v87 = BYTE2(dword_27F23E728);
  LODWORD(v88) = BYTE1(dword_27F23E728);
  v85 = byte_27F23E72C;
  v86 = HIBYTE(dword_27F23E728);
  v83 = byte_27F23E72E;
  v84 = byte_27F23E72D;
  v44 = swift_allocObject();
  v57 = v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 32) = 0;
  v58 = v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_id;
  sub_24E60169C(v105, &v101, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v102 + 1))
  {
    v59 = v102;
    *v58 = v101;
    *(v58 + 16) = v59;
    *(v58 + 32) = v103;
  }

  else
  {
    v96 = v50;
    v60 = v52;
    v61 = v56;
    v62 = v80;
    sub_24F91F6A8();
    v63 = sub_24F91F668();
    v65 = v64;
    v66 = v62;
    v56 = v61;
    v52 = v60;
    v50 = v96;
    (*(v81 + 8))(v66, v82);
    v99 = v63;
    v100 = v65;
    v54 = v97;
    sub_24F92C7F8();
    sub_24E601704(&v101, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24EBDFDB8(v93, v94, v92, v98);
  sub_24E601704(v105, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v54, v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics);
  *(v44 + 16) = v50;
  *(v44 + 24) = 2;
  v67 = v90;
  *(v44 + 32) = v91;
  *(v44 + 40) = v52;
  *(v44 + 48) = v67;
  *(v44 + 56) = v56;
  *(v44 + 64) = 0;
  *(v44 + 72) = 0;
  v68 = OBJC_IVAR____TtC12GameStoreKit5Brick_caption;
  v69 = sub_24F91F008();
  v70 = *(*(v69 - 8) + 56);
  v70(v44 + v68, 1, 1, v69);
  v70(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, 1, 1, v69);
  v70(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, 1, 1, v69);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons) = 0;
  v71 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  *v71 = v89;
  v72 = v87;
  v71[1] = v88;
  v71[2] = v72;
  v73 = v85;
  v71[3] = v86;
  v71[4] = v73;
  v74 = v83;
  v71[5] = v84;
  v71[6] = v74;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_clickAction) = v31;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_personalizationStyle) = v95;
  swift_beginAccess();
  sub_24E951B7C(v104, v57);
  swift_endAccess();
  v75 = v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  *(v75 + 32) = 0x8000;
  *v75 = 0u;
  *(v75 + 16) = 0u;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_flowPreviewActionsConfiguration) = 0;
  v76 = v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea;
  *v76 = 0;
  *(v76 + 8) = 0;
  *(v76 + 16) = 2;
  *(v76 + 24) = 0u;
  *(v76 + 40) = 0u;
  *(v76 + 56) = 0;
  v77 = v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea;
  *v77 = 0;
  *(v77 + 8) = 0;
  *(v77 + 16) = 2;
  *(v77 + 24) = 0u;
  *(v77 + 40) = 0u;
  *(v77 + 56) = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor) = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_placementStyle) = 0;
  return v44;
}

uint64_t sub_24EDFF470()
{

  return swift_deallocObject();
}

unint64_t sub_24EDFF4B8()
{
  result = qword_27F230808;
  if (!qword_27F230808)
  {
    type metadata accessor for Brick(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230808);
  }

  return result;
}

uint64_t type metadata accessor for AchievementsPageIntent(uint64_t a1)
{
  result = qword_27F230828;
  if (!qword_27F230828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t AchievementsPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v2, boxed_opaque_existential_1, &unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v6 = *(type metadata accessor for AchievementsPageIntent(0) + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 136) = sub_24E7D17FC();
  v7 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(v2 + v6, v7, &qword_27F21D8F8, &qword_24F95ADB0);
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_24EDFF790()
{
  if (*v0)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24EDFF7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EDFF8AC(uint64_t a1)
{
  v2 = sub_24EE000B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDFF8E8(uint64_t a1)
{
  v2 = sub_24EE000B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementsPageIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230810, &qword_24F9A25A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE000B0();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24EE00104(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CCF8();
  if (!v1)
  {
    type metadata accessor for AchievementsPageIntent(0);
    v8[14] = 1;
    type metadata accessor for Page.Background(0);
    sub_24EE00104(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AchievementsPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230820, &qword_24F9A25A8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for AchievementsPageIntent(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE000B0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v14 = v13;
  v15 = v22;
  type metadata accessor for Player(0);
  v26 = 0;
  sub_24EE00104(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v16 = v23;
  v17 = v24;
  sub_24F92CC18();
  sub_24E6009C8(v16, v14, &unk_27F23E1F0, &unk_24F9549C0);
  type metadata accessor for Page.Background(0);
  v25 = 1;
  sub_24EE00104(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  sub_24F92CC18();
  (*(v15 + 8))(v10, v17);
  sub_24E6009C8(v6, v14 + *(v20 + 20), &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24EE0014C(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EE001B0(v14);
}