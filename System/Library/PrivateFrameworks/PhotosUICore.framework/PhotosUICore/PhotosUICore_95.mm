uint64_t sub_1A485D9D8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A48606A8(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A485DA3C(uint64_t a1)
{
  v76 = sub_1A52486A4();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v75 - v5;
  v6 = sub_1A5243F74();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A5241F84();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A485C108(0, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v75 - v11;
  v13 = sub_1A5244084();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v75 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v88 = &v75 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v87 = &v75 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v75 - v35;
  v37 = *(a1 + 32);
  v38 = *(v37 + 64);
  v39 = *(a1 + 16);
  v80 = *(a1 + 56);
  v79 = v39;
  v81 = v37;
  v38(v34);
  v40 = *(v14 + 48);
  v41 = v40(v12, 1, v13);
  v95 = v1;
  if (v41 == 1)
  {
    sub_1A485F124(a1, v36);
    if (v40(v12, 1, v13) != 1)
    {
      sub_1A48606F8(v12, &qword_1EB128FD0, MEMORY[0x1E69C2948]);
    }
  }

  else
  {
    (*(v14 + 32))(v36, v12, v13);
  }

  sub_1A40B1BF4();
  PXDisplayCollectionDetailedCountsMake();
  v101 = v42;
  v43 = *(v14 + 16);
  v96 = v36;
  v43(v32, v36, v13);
  sub_1A40B1FC8(v32, 0);
  v44 = v87;
  sub_1A485F124(a1, v87);
  if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) == 0)
  {
    sub_1A5243F14();
  }

  v85 = v14;
  v43(v32, v44, v13);
  sub_1A40B1FC8(v32, 1);
  v45 = v44;
  v46 = MEMORY[0x1E69C2210];
  if (sub_1A485E84C(a1, MEMORY[0x1E69C2210]))
  {
    v47 = v96;
  }

  else
  {
    v47 = v45;
  }

  v48 = v88;
  v43(v88, v47, v13);
  v49 = sub_1A485E84C(a1, v46);
  v50 = v90;
  if ((v49 & 1) == 0)
  {
    sub_1A5243F14();
    sub_1A5244064();
  }

  v43(v32, v48, v13);
  sub_1A40B1FC8(v32, 2);
  v51 = v48;
  v52 = v89;
  v43(v89, v51, v13);
  v53 = sub_1A485E84C(a1, MEMORY[0x1E69C2200]);
  v54 = v86;
  if (v53)
  {
    (*(v81 + 48))(&v99, v79);
    v98 = v99;
    v97 = 0;
    if (static LemonadeRootViewOrientation.== infix(_:_:)(&v98, &v97))
    {
      sub_1A5243F14();
      sub_1A5244064();
    }
  }

  v43(v32, v52, v13);
  sub_1A40B1FC8(v32, 3);
  v55 = v96;
  v43(v50, v96, v13);
  if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) == 0)
  {
    sub_1A5243F14();
    sub_1A5241F54();
    sub_1A5244024();
  }

  v43(v32, v50, v13);
  sub_1A40B1FC8(v32, 9);
  v56 = v94;
  v43(v94, v55, v13);
  sub_1A5244004();
  sub_1A5243F14();
  sub_1A5241F54();
  sub_1A5244024();
  v57 = v95;
  v58 = sub_1A485E84C(a1, MEMORY[0x1E69C2210]);
  v59 = v85;
  if (v58)
  {
    sub_1A5243F34();
    sub_1A5244064();
    v60 = sub_1A524B2A4();
    v62 = v82;
    v61 = v83;
    *v82 = v60;
    (*(v61 + 104))(v62, *MEMORY[0x1E69C2938], v84);
    sub_1A5243F84();
    v103[0] = *(v57 + *(a1 + 64));
    v102 = 3;
    static LemonadePresentationContext.== infix(_:_:)(v103, &v102);
    sub_1A5243FD4();
  }

  else
  {
    (*(v81 + 32))(&v100, v79);
    v63 = v100;
    if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) != 0 || (v63 & 0xFE) != 2)
    {
      v56 = v94;
      sub_1A5243FB4();
    }

    else
    {
      sub_1A485BEE0(a1, v77);
      v64 = v75;
      v65 = v76;
      (*(v75 + 104))(v78, *MEMORY[0x1E697E6C8], v76);
      sub_1A4860768(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
      sub_1A524C534();
      v66 = *(v64 + 8);
      v66(v78, v65);
      v66(v77, v65);
      v56 = v94;
      sub_1A5243FB4();
    }

    v54 = v86;
    sub_1A5243F34();
    sub_1A5244064();
    v67 = sub_1A52442D4();
    v69 = v82;
    v68 = v83;
    *v82 = v67;
    (*(v68 + 104))(v69, *MEMORY[0x1E69C2938], v84);
    sub_1A5243F84();
  }

  sub_1A5243FE4();
  v43(v32, v56, v13);
  sub_1A40B1FC8(v32, 4);
  v70 = v91;
  sub_1A485F124(a1, v91);
  if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) == 0)
  {
    sub_1A5244064();
    sub_1A5243F14();
    sub_1A5244004();
    sub_1A5243F34();
  }

  v43(v32, v70, v13);
  sub_1A40B1FC8(v32, 5);
  v71 = v92;
  v43(v92, v96, v13);
  if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) == 0)
  {
    sub_1A5244064();
    sub_1A5247B94();
    sub_1A5243FA4();
    sub_1A5243F14();
    sub_1A5244004();
    sub_1A5243F34();
  }

  v43(v32, v71, v13);
  sub_1A40B1FC8(v32, 6);
  v43(v54, v96, v13);
  if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) == 0)
  {
    sub_1A5244004();
    sub_1A5244064();
    sub_1A5243F34();
    sub_1A5243F14();
    sub_1A5241F54();
    sub_1A5244024();
    sub_1A5243FE4();
    sub_1A5241F74();
    sub_1A5243F54();
  }

  v43(v32, v54, v13);
  sub_1A40B1FC8(v32, 7);
  v72 = v96;
  v43(v32, v96, v13);
  sub_1A40B1FC8(v32, 8);
  v73 = *(v59 + 8);
  v73(v54, v13);
  v73(v92, v13);
  v73(v91, v13);
  v73(v94, v13);
  v73(v90, v13);
  v73(v89, v13);
  v73(v88, v13);
  v73(v87, v13);
  v73(v72, v13);
  return v101;
}

uint64_t sub_1A485E758@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A485BCA4(v6);
  sub_1A485EDD8(a1);
  return sub_1A43A1F98(v6, a2, v7, v8);
}

uint64_t sub_1A485E7E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A485C108(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A485E84C(uint64_t a1, unsigned int *a2)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1A485BCA4(&v12 - v8);
  (*(v4 + 104))(v6, *a2, v3);
  LOBYTE(a2) = sub_1A5242D04();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v10(v9, v3);
  return a2 & 1;
}

void sub_1A485E980(uint64_t a1)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  LOBYTE(v20[0]) = *(v1 + *(a1 + 64));
  v21 = 4;
  if (static LemonadePresentationContext.== infix(_:_:)(v20, &v21))
  {
    sub_1A485BCA4(v12);
    (*(v4 + 104))(v9, *MEMORY[0x1E69C2200], v3);
    v13 = sub_1A5242D04();
    v14 = *(v4 + 8);
    v14(v9, v3);
    v14(v12, v3);
    if (v13)
    {
      (*(*(a1 + 32) + 48))(v20, *(a1 + 16));
      v21 = v20[0];
      v19 = 1;
      static LemonadeRootViewOrientation.== infix(_:_:)(&v21, &v19);
    }
  }

  else
  {
    sub_1A485BCA4(v6);
    v15 = (*(v4 + 88))(v6, v3);
    if (v15 == *MEMORY[0x1E69C2200] || (v15 != *MEMORY[0x1E69C21F8] ? (v16 = v15 == *MEMORY[0x1E69C21F0]) : (v16 = 1), v16))
    {
      (*(*(a1 + 32) + 32))(v20, *(a1 + 16));
      return;
    }

    if (v15 == *MEMORY[0x1E69C21E8] || v15 == *MEMORY[0x1E69C2208])
    {
      goto LABEL_19;
    }

    if (v15 == *MEMORY[0x1E69C2210])
    {
      return;
    }

    if (v15 == *MEMORY[0x1E69C21E0])
    {
LABEL_19:
      (*(*(a1 + 32) + 8))(*(a1 + 16));
    }

    else
    {
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0x206E776F6E6B6E55, 0xEE00206D6F696469);
      sub_1A485BCA4(v12);
      sub_1A524E624();
      (*(v4 + 8))(v12, v3);
      sub_1A524E6E4();
      __break(1u);
    }
  }
}

void sub_1A485EDD8(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A485BCA4(v5);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69C2200] || v6 == *MEMORY[0x1E69C21F8])
  {
    if (shouldUseNewCollectionsLayout()())
    {
      sub_1A485E980(a1);
      (*(*(a1 + 32) + 32))(&v15, *(a1 + 16));
    }

    else
    {
      (*(*(a1 + 32) + 32))(&v15 + 1, *(a1 + 16));
    }
  }

  else if (v6 == *MEMORY[0x1E69C21F0])
  {
    if (shouldUseNewCollectionsLayout()())
    {
      sub_1A485E980(a1);
    }

    else
    {
      sub_1A485E980(a1);
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      v10 = *(a1 + 16);
      v9(v10, v8);
      sub_1A485E980(a1);
      v9(v10, v8);
    }
  }

  else if (v6 != *MEMORY[0x1E69C21E8] && v6 != *MEMORY[0x1E69C2210])
  {
    sub_1A485E980(a1);
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    v13 = *(a1 + 16);
    v12(v13, v11);
    sub_1A485E980(a1);
    v12(v13, v11);
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A485F124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5242D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A5244084();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  BYTE2(v15) = *(v2 + *(a1 + 64));
  BYTE1(v15) = 3;
  static LemonadePresentationContext.== infix(_:_:)(&v15 + 2, &v15 + 1);
  sub_1A5243EF4();
  sub_1A485BCA4(v8);
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E69C2210])
  {
    (*(*(a1 + 32) + 32))(&v15, *(a1 + 16));
    if ((v15 & 0xFE) == 2)
    {
      sub_1A5243EF4();
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      return (*(v10 + 32))(a2, v12, v9);
    }
  }

  else
  {
    (*(v10 + 32))(a2, v12, v9);
    return (*(v6 + 8))(v8, v5);
  }
}

double sub_1A485F39C(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1A5249244();
  return v3;
}

double sub_1A485F408@<D0>(uint64_t (*a1)(void)@<X3>, _OWORD *a3@<X8>)
{
  a1();
  sub_1A5249244();
  result = *&v5;
  *a3 = v5;
  a3[1] = v6;
  return result;
}

void (*EnvironmentValues.lemonadeHomeViewLayoutMargins.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_1A485FAE8();
  sub_1A5249244();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1A485F5D8;
}

uint64_t sub_1A485F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A45C5D20();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.lemonadeCollectionPickerLayoutMargins.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_1A485FA94();
  sub_1A5249244();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1A485F6E0;
}

void sub_1A485F6EC(__n128 **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[1];
  v3[2] = *v3;
  v3[3] = v4;
  sub_1A5249254();

  free(v3);
}

uint64_t EnvironmentValues.lemonadeSheetSizeOverride.getter()
{
  sub_1A485FB3C();
  sub_1A5249244();
  return v1;
}

void (*EnvironmentValues.lemonadeSheetSizeOverride.modify(uint64_t *a1))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_1A485FB3C();
  sub_1A5249244();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return sub_1A485F860;
}

void sub_1A485F860(__n128 **a1)
{
  v2 = (*a1)[1].n128_u8[0];
  v1 = *a1;
  *(v1 + 24) = **a1;
  v1[2].n128_u8[8] = v2;
  sub_1A5249254();

  free(v1);
}

uint64_t sub_1A485F8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3EBA740();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.lemonadeSheetIsSwiftUI.getter()
{
  sub_1A485FB90();
  sub_1A5249244();
  return v1;
}

uint64_t (*EnvironmentValues.lemonadeSheetIsSwiftUI.modify(void *a1))(uint64_t a1, __n128 a2)
{
  *a1 = v1;
  a1[1] = sub_1A485FB90();
  sub_1A5249244();
  return sub_1A485F9F8;
}

uint64_t sub_1A485FA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4365A30();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1A485FA94()
{
  result = qword_1EB178300[0];
  if (!qword_1EB178300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB178300);
  }

  return result;
}

unint64_t sub_1A485FAE8()
{
  result = qword_1EB17C018[0];
  if (!qword_1EB17C018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17C018);
  }

  return result;
}

unint64_t sub_1A485FB3C()
{
  result = qword_1EB17F150[0];
  if (!qword_1EB17F150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17F150);
  }

  return result;
}

unint64_t sub_1A485FB90()
{
  result = qword_1EB1DB0D8[0];
  if (!qword_1EB1DB0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DB0D8);
  }

  return result;
}

void sub_1A485FDF4(uint64_t a1)
{
  sub_1A485C108(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A485C108(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A485FF18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A5242D14() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_1A52486A4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(a3 + 24);
  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v10 - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v11 + 80);
  v17 = *(v13 + 80);
  if (v12 <= v14)
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = *(v11 + 84);
  }

  if (v18 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 & 0xF8 | 7;
  v21 = v7 + v20 + 1;
  v22 = v9 + v16 + 1;
  v23 = *(*(*(a3 + 16) - 8) + 64) + v17;
  if (a2 <= v19)
  {
    goto LABEL_37;
  }

  v24 = *(*(v10 - 8) + 64) + ((v23 + ((v22 + (v21 & ~v20)) & ~v16)) & ~v17) + 1;
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v28 = ((a2 - v19 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v28 < 2)
    {
LABEL_37:
      if (v18 > 0xFE)
      {
        v33 = (v22 + ((a1 + v21) & ~v20)) & ~v16;
        if (v12 == v19)
        {
          v34 = *(v11 + 48);

          return v34(v33);
        }

        else
        {
          v35 = *(v13 + 48);
          v36 = (v23 + v33) & ~v17;

          return v35(v36, v14, v10);
        }
      }

      else
      {
        v32 = *(a1 + v7);
        if (v32 >= 2)
        {
          return (v32 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_37;
  }

LABEL_24:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v30 = v24;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v19 + (v31 | v29) + 1;
}

void sub_1A4860244(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1A5242D14() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1A52486A4() - 8);
  v11 = *(*(a4 + 16) - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v10 + 64);
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v11 + 84);
  v15 = *(a4 + 24);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v10 + 80);
  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  v21 = *(v16 + 80);
  if (v14 <= v17)
  {
    v22 = *(v16 + 84);
  }

  else
  {
    v22 = *(v11 + 84);
  }

  if (v22 <= 0xFE)
  {
    v23 = 254;
  }

  else
  {
    v23 = v22;
  }

  v24 = v9 + 1;
  v25 = v18 & 0xF8 | 7;
  v26 = v9 + 1 + v25;
  v27 = v12 + v19 + 1;
  v28 = *(v16 + 64) + ((v20 + v21 + ((v27 + (v26 & ~v25)) & ~v19)) & ~v21) + 1;
  if (a3 <= v23)
  {
    v29 = 0;
  }

  else if (v28 <= 3)
  {
    v32 = ((a3 - v23 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
    if (HIWORD(v32))
    {
      v29 = 4;
    }

    else
    {
      if (v32 < 0x100)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      if (v32 >= 2)
      {
        v29 = v33;
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v29 = 1;
  }

  if (v23 < a2)
  {
    v30 = ~v23 + a2;
    if (v28 < 4)
    {
      v31 = (v30 >> (8 * v28)) + 1;
      if (*(v16 + 64) + ((v20 + v21 + ((v27 + (v26 & ~v25)) & ~v19)) & ~v21) != -1)
      {
        v34 = v30 & ~(-1 << (8 * v28));
        bzero(a1, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *a1 = v34;
            if (v29 > 1)
            {
LABEL_68:
              if (v29 == 2)
              {
                *&a1[v28] = v31;
              }

              else
              {
                *&a1[v28] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v29 > 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_65;
        }

        *a1 = v34;
        a1[2] = BYTE2(v34);
      }

      if (v29 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      bzero(a1, v28);
      *a1 = v30;
      v31 = 1;
      if (v29 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    if (v29)
    {
      a1[v28] = v31;
    }

    return;
  }

  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v28] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v29)
  {
    goto LABEL_39;
  }

  a1[v28] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v22 > 0xFE)
  {
    v35 = (v27 + (&a1[v26] & ~v25)) & ~v19;
    if (v14 == v23)
    {
      v36 = *(v13 + 56);

      v36(v35, a2);
    }

    else
    {
      v40 = *(v16 + 56);
      v41 = (v20 + v21 + v35) & ~v21;

      v40(v41, a2, v17, v15);
    }
  }

  else if (a2 > 0xFE)
  {
    if (v24 <= 3)
    {
      v37 = ~(-1 << (8 * v24));
    }

    else
    {
      v37 = -1;
    }

    if (v9 != -1)
    {
      v38 = v37 & (a2 - 255);
      if (v24 <= 3)
      {
        v39 = v9 + 1;
      }

      else
      {
        v39 = 4;
      }

      bzero(a1, v24);
      if (v39 > 2)
      {
        if (v39 == 3)
        {
          *a1 = v38;
          a1[2] = BYTE2(v38);
        }

        else
        {
          *a1 = v38;
        }
      }

      else if (v39 == 1)
      {
        *a1 = v38;
      }

      else
      {
        *a1 = v38;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_1A48606A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A48606F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A485C108(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4860768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A48607B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A485C108(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4860888@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45DBFC0(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486B468(v1 + *(v10 + 24), v9, sub_1A45DBFC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5249FB4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A4860A84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486B468(v1 + *(v10 + 28), v9, sub_1A4137EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5248284();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void LemonadePeopleNamingView.init(person:initialResultItem:keyAssetOverride:initialString:namePickerBlock:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1A4860834(0);
  sub_1A524B694();
  *(a8 + 8) = v29;
  v14 = type metadata accessor for LemonadePeopleNamingView(0);
  v15 = v14[6];
  *(a8 + v15) = swift_getKeyPath();
  sub_1A45DBFC0(0);
  swift_storeEnumTagMultiPayload();
  v16 = v14[7];
  *(a8 + v16) = swift_getKeyPath();
  sub_1A4137EE8(0);
  swift_storeEnumTagMultiPayload();
  v17 = a8 + v14[8];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a8 + v14[9];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  v19 = a8 + v14[11];
  sub_1A524B694();
  *v19 = v29;
  *(v19 + 8) = *(&v29 + 1);
  v20 = (a8 + v14[12]);
  sub_1A4434588(0);
  sub_1A524B694();
  *v20 = v29;
  v21 = a8 + v14[13];
  *v21 = sub_1A5247C34() & 1;
  *(v21 + 8) = v22;
  *(v21 + 16) = v23 & 1;
  *(a8 + v14[15]) = 0x4049000000000000;
  *a8 = a1;
  v24 = a8 + v14[10];
  v25 = a1;
  sub_1A524B694();
  *v24 = v29;
  *(v24 + 16) = v30;
  v26 = (a8 + v14[14]);
  type metadata accessor for PeopleNamingItem();
  v27 = a2;
  sub_1A524B694();

  *v26 = v29;
  *(a8 + v14[16]) = a3;
  v28 = (a8 + v14[17]);
  *v28 = a6;
  v28[1] = a7;
}

void LemonadePeopleNamingView.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadePeopleNamingView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v14 = v1;
  sub_1A48612EC(0);
  sub_1A48613C0(255);
  v7 = v6;
  sub_1A4862BE4(255);
  v15 = v7;
  v16 = v8;
  v17 = sub_1A4863094();
  v18 = sub_1A486B694(&qword_1EB143B28, sub_1A4862BE4, MEMORY[0x1E697C5E0]);
  swift_getOpaqueTypeConformance2();
  sub_1A5248824();
  sub_1A486B468(v1, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LemonadePeopleNamingView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1A486AD2C(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for LemonadePeopleNamingView);
  sub_1A4864C8C(0, &qword_1EB143B30, sub_1A4864CF0, MEMORY[0x1E69805D8]);
  v12 = (a1 + *(v11 + 36));
  *v12 = sub_1A4864C88;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
}

uint64_t sub_1A4861130(uint64_t a1)
{
  sub_1A48613C0(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v5 = sub_1A5249574();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_1A486A8D8(0, &qword_1EB143BE0, sub_1A48614E8, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A4863144(a1, &v5[*(v6 + 44)]);
  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  v8 = sub_1A524B284();
  v9 = sub_1A524A064();
  v10 = &v5[*(v3 + 36)];
  *v10 = v8;
  v10[8] = v9;
  v13 = a1;
  sub_1A4862BE4(0);
  sub_1A4863094();
  sub_1A486B694(&qword_1EB143B28, sub_1A4862BE4, MEMORY[0x1E697C5E0]);
  sub_1A524B0E4();
  return sub_1A486A720(v5, sub_1A48613C0);
}

void sub_1A48612EC(uint64_t a1)
{
  if (!qword_1EB143880)
  {
    sub_1A48613C0(255);
    sub_1A4862BE4(255);
    sub_1A4863094();
    sub_1A486B694(&qword_1EB143B28, sub_1A4862BE4, MEMORY[0x1E697C5E0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB143880);
    }
  }
}

void sub_1A48613C0(uint64_t a1)
{
  if (!qword_1EB143888)
  {
    sub_1A4861454(255);
    sub_1A486B210(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143888);
    }
  }
}

void sub_1A4861454(uint64_t a1)
{
  if (!qword_1EB143890)
  {
    sub_1A48614E8(255);
    sub_1A486B694(&unk_1EB143AA8, sub_1A48614E8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143890);
    }
  }
}

void sub_1A48614E8(uint64_t a1)
{
  if (!qword_1EB143898)
  {
    sub_1A486AF7C(255, &qword_1EB1438A0, sub_1A4861570, sub_1A486234C);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143898);
    }
  }
}

void sub_1A4861570(uint64_t a1)
{
  if (!qword_1EB1438A8)
  {
    sub_1A486162C(255);
    sub_1A48616B0(255);
    sub_1A486229C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1438A8);
    }
  }
}

void sub_1A486162C(uint64_t a1)
{
  if (!qword_1EB1438B0)
  {
    sub_1A48616B0(255);
    sub_1A486229C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1438B0);
    }
  }
}

void sub_1A48616D8(uint64_t a1)
{
  if (!qword_1EB1438C0)
  {
    sub_1A4861788(255);
    sub_1A486B694(&qword_1EB1439C0, sub_1A4861788, MEMORY[0x1E69817F8]);
    v1 = sub_1A524A2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1438C0);
    }
  }
}

void sub_1A4861788(uint64_t a1)
{
  if (!qword_1EB1438C8)
  {
    sub_1A486181C(255);
    sub_1A486B694(&qword_1EB1439B8, sub_1A486181C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1438C8);
    }
  }
}

void sub_1A486181C(uint64_t a1)
{
  if (!qword_1EB1438D0)
  {
    sub_1A48619C0(255, &qword_1EB1438D8, sub_1A48618A4, sub_1A486214C);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1438D0);
    }
  }
}

void sub_1A48618A4(uint64_t a1)
{
  if (!qword_1EB1438E0)
  {
    sub_1A4861938(255);
    sub_1A486B694(&qword_1EB143990, sub_1A4861938, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1438E0);
    }
  }
}

void sub_1A4861938(uint64_t a1)
{
  if (!qword_1EB1438E8)
  {
    sub_1A48619C0(255, &qword_1EB1438F0, sub_1A4861A44, sub_1A4861BE4);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1438E8);
    }
  }
}

void sub_1A48619C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A4861A44(uint64_t a1)
{
  if (!qword_1EB1438F8)
  {
    sub_1A4861AD8(255);
    sub_1A486B694(&qword_1EB143930, sub_1A4861AD8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1438F8);
    }
  }
}

void sub_1A4861AD8(uint64_t a1)
{
  if (!qword_1EB143900)
  {
    sub_1A486AF7C(255, &qword_1EB143908, sub_1A4861B60, sub_1A4861B94);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143900);
    }
  }
}

void sub_1A4861BE4(uint64_t a1)
{
  if (!qword_1EB143938)
  {
    sub_1A4861CB4(255);
    sub_1A4861D4C(255);
    sub_1A4861F38();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB143938);
    }
  }
}

void sub_1A4861CB4(uint64_t a1)
{
  if (!qword_1EB143940)
  {
    sub_1A4861D4C(255);
    sub_1A4861F38();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB143940);
    }
  }
}

void sub_1A4861D4C(uint64_t a1)
{
  if (!qword_1EB143948)
  {
    sub_1A4864C8C(255, &qword_1EB143950, sub_1A4861E04, MEMORY[0x1E697E5E0]);
    sub_1A4861EBC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143948);
    }
  }
}

void sub_1A4861E04(uint64_t a1)
{
  if (!qword_1EB143958)
  {
    sub_1A486B210(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A486A580(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143958);
    }
  }
}

void sub_1A4861EBC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A486A580(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A4861F38()
{
  result = qword_1EB143970;
  if (!qword_1EB143970)
  {
    sub_1A4861D4C(255);
    sub_1A4861FD8();
    sub_1A4869D30(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143970);
  }

  return result;
}

unint64_t sub_1A4861FD8()
{
  result = qword_1EB143978;
  if (!qword_1EB143978)
  {
    sub_1A4864C8C(255, &qword_1EB143950, sub_1A4861E04, MEMORY[0x1E697E5E0]);
    sub_1A48620C0(&unk_1EB143980, sub_1A4861E04, sub_1A437B870, sub_1A3FF8FF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143978);
  }

  return result;
}

uint64_t sub_1A48620C0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A486219C(uint64_t a1)
{
  if (!qword_1EB1439A8)
  {
    sub_1A486B210(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    sub_1A52439C4();
    sub_1A425618C();
    sub_1A486B694(&qword_1EB1439B0, MEMORY[0x1E69C2760], MEMORY[0x1E69C2758]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1439A8);
    }
  }
}

unint64_t sub_1A486229C()
{
  result = qword_1EB1439C8;
  if (!qword_1EB1439C8)
  {
    sub_1A48616B0(255);
    sub_1A486B694(&qword_1EB1439D0, sub_1A48616D8, MEMORY[0x1E697CD20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1439C8);
  }

  return result;
}

void sub_1A4862374(uint64_t a1)
{
  if (!qword_1EB1439E0)
  {
    sub_1A4862408(255);
    sub_1A486B694(&qword_1EB143AA0, sub_1A4862408, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1439E0);
    }
  }
}

void sub_1A4862408(uint64_t a1)
{
  if (!qword_1EB1439E8)
  {
    sub_1A486AF7C(255, &qword_1EB1439F0, sub_1A4862490, sub_1A4862A58);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1439E8);
    }
  }
}

void sub_1A4862490(uint64_t a1)
{
  if (!qword_1EB1439F8)
  {
    sub_1A4862D0C(255, &qword_1EB143A00, sub_1A4862520, sub_1A3E42C88);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1439F8);
    }
  }
}

void sub_1A4862520(uint64_t a1)
{
  if (!qword_1EB143A08)
  {
    sub_1A48625A0(255);
    sub_1A4862824();
    v1 = sub_1A524A2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143A08);
    }
  }
}

void sub_1A48625A0(uint64_t a1)
{
  if (!qword_1EB143A10)
  {
    sub_1A486B210(255, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A486263C(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143A10);
    }
  }
}

void sub_1A486263C(uint64_t a1)
{
  if (!qword_1EB143A20)
  {
    sub_1A4434588(255);
    sub_1A4862704(255);
    sub_1A486B694(&qword_1EB143A38, sub_1A4434588, MEMORY[0x1E69E6338]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143A20);
    }
  }
}

void sub_1A4862704(uint64_t a1)
{
  if (!qword_1EB143A28)
  {
    sub_1A4869B1C(255, &qword_1EB143A30, sub_1A48627D0, &type metadata for LemonadePeopleNamingRow, MEMORY[0x1E697D670]);
    sub_1A4861EBC(255, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143A28);
    }
  }
}

unint64_t sub_1A48627D0()
{
  result = qword_1EB1DB180;
  if (!qword_1EB1DB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1DB180);
  }

  return result;
}

unint64_t sub_1A4862824()
{
  result = qword_1EB143A40;
  if (!qword_1EB143A40)
  {
    sub_1A48625A0(255);
    sub_1A4234634();
    sub_1A48628B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143A40);
  }

  return result;
}

unint64_t sub_1A48628B0()
{
  result = qword_1EB143A50;
  if (!qword_1EB143A50)
  {
    sub_1A486263C(255);
    sub_1A4862928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143A50);
  }

  return result;
}

unint64_t sub_1A4862928()
{
  result = qword_1EB143A58;
  if (!qword_1EB143A58)
  {
    sub_1A4862704(255);
    sub_1A48629C8();
    sub_1A4869D30(&qword_1EB127870, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143A58);
  }

  return result;
}

unint64_t sub_1A48629C8()
{
  result = qword_1EB143A60;
  if (!qword_1EB143A60)
  {
    sub_1A4869B1C(255, &qword_1EB143A30, sub_1A48627D0, &type metadata for LemonadePeopleNamingRow, MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143A60);
  }

  return result;
}

void sub_1A4862A58(uint64_t a1)
{
  if (!qword_1EB143A70)
  {
    sub_1A4862AEC(255);
    sub_1A486B694(&qword_1EB143A98, sub_1A4862AEC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143A70);
    }
  }
}

void sub_1A4862B20(uint64_t a1)
{
  if (!qword_1EB143A80)
  {
    v1 = MEMORY[0x1E697E830];
    sub_1A486B210(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A486B210(255, &qword_1EB143A90, &type metadata for LemonadePeopleNoResultsView, MEMORY[0x1E697E5C8], v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143A80);
    }
  }
}

void sub_1A4862BE4(uint64_t a1)
{
  if (!qword_1EB143AB8)
  {
    sub_1A486AF7C(255, &qword_1EB143AC0, sub_1A3F1E8D8, sub_1A4862C6C);
    v1 = sub_1A52495C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143AB8);
    }
  }
}

void sub_1A4862C6C(uint64_t a1)
{
  if (!qword_1EB143AC8)
  {
    sub_1A4862D0C(255, &qword_1EB143AD0, sub_1A4862D80, MEMORY[0x1E697CBE8]);
    sub_1A4862EA0();
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143AC8);
    }
  }
}

void sub_1A4862D0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4862D80(uint64_t a1)
{
  if (!qword_1EB143AD8)
  {
    sub_1A4862E0C(255);
    sub_1A486A580(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143AD8);
    }
  }
}

void sub_1A4862E0C(uint64_t a1)
{
  if (!qword_1EB143AE0)
  {
    sub_1A3D6DF58(255);
    sub_1A4861EBC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143AE0);
    }
  }
}

unint64_t sub_1A4862EA0()
{
  result = qword_1EB143AF0;
  if (!qword_1EB143AF0)
  {
    sub_1A4862D0C(255, &qword_1EB143AD0, sub_1A4862D80, MEMORY[0x1E697CBE8]);
    sub_1A48620C0(&qword_1EB143AF8, sub_1A4862D80, sub_1A4862FC4, sub_1A3E72758);
    sub_1A486B694(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143AF0);
  }

  return result;
}

unint64_t sub_1A4862FC4()
{
  result = qword_1EB143B00;
  if (!qword_1EB143B00)
  {
    sub_1A4862E0C(255);
    sub_1A486B694(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    sub_1A4869D30(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143B00);
  }

  return result;
}

unint64_t sub_1A4863094()
{
  result = qword_1EB143B10;
  if (!qword_1EB143B10)
  {
    sub_1A48613C0(255);
    sub_1A486B694(&unk_1EB143B18, sub_1A4861454, MEMORY[0x1E6981870]);
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143B10);
  }

  return result;
}

uint64_t sub_1A4863144@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  sub_1A486234C(0);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v60 - v6);
  sub_1A48616B0(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A486162C(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861570(0);
  v60 = *(v17 - 8);
  v61 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v66 = a1;
  sub_1A4861788(0);
  sub_1A486B694(&qword_1EB1439C0, sub_1A4861788, MEMORY[0x1E69817F8]);
  sub_1A524A2C4();
  *&v11[*(v9 + 36)] = 256;
  sub_1A524A0C4();
  v22 = sub_1A486229C();
  sub_1A524A984();
  sub_1A486A720(v11, sub_1A48616B0);
  *&v69 = v9;
  *(&v69 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  sub_1A524ADD4();
  (*(v14 + 8))(v16, v13);
  v23 = type metadata accessor for LemonadePeopleNamingView(0);
  v24 = (a1 + v23[12]);
  v26 = *v24;
  v25 = v24[1];
  *&v69 = v26;
  *(&v69 + 1) = v25;
  sub_1A486B360(0, &unk_1EB143B60, sub_1A4434588, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v67 >> 62)
  {
    v29 = sub_1A524E2B4();

    if (v29)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v27)
    {
      goto LABEL_3;
    }
  }

  v30 = (a1 + v23[10]);
  v31 = *v30;
  v32 = *(v30 + 2);
  v69 = v31;
  v70 = v32;
  sub_1A486A580(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v34 = v67;
  v33 = v68;

  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = (a1 + v23[11]);
    v37 = *v36;
    v38 = *(v36 + 1);
    LOBYTE(v69) = v37;
    *(&v69 + 1) = v38;
    sub_1A486A580(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v28 = v67 ^ 1;
    goto LABEL_9;
  }

LABEL_3:
  v28 = 1;
LABEL_9:
  *v7 = sub_1A524BC74();
  v7[1] = v39;
  sub_1A486A8D8(0, &unk_1EB143BE8, sub_1A4862408, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A4863D98(a1, v28 & 1, v7 + *(v40 + 44));
  sub_1A5247BA4();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = sub_1A524A064();
  v50 = v62;
  v51 = v7 + *(v63 + 36);
  *v51 = v49;
  *(v51 + 1) = v42;
  *(v51 + 2) = v44;
  *(v51 + 3) = v46;
  *(v51 + 4) = v48;
  v51[40] = 0;
  v52 = v60;
  v53 = v61;
  v54 = *(v60 + 16);
  v54(v50, v21, v61);
  v55 = v65;
  sub_1A486B468(v7, v65, sub_1A486234C);
  v56 = v64;
  v54(v64, v50, v53);
  sub_1A486AF7C(0, &qword_1EB1438A0, sub_1A4861570, sub_1A486234C);
  sub_1A486B468(v55, &v56[*(v57 + 48)], sub_1A486234C);
  sub_1A486B4D0(v7, sub_1A486234C);
  v58 = *(v52 + 8);
  v58(v21, v53);
  sub_1A486B4D0(v55, sub_1A486234C);
  return (v58)(v50, v53);
}

uint64_t sub_1A4863784@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1A52439C4();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadePeopleNamingView(0);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A486B210(0, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - v11;
  sub_1A4862174(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A486214C(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  sub_1A48618A4(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - v26;
  *v27 = sub_1A5249314();
  *(v27 + 1) = 0;
  v27[16] = 1;
  sub_1A486A8D8(0, &qword_1EB143C00, sub_1A4861938, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  v29 = &v27[*(v28 + 44)];
  v47 = a1;
  sub_1A4864DF4(a1, v29);
  sub_1A486B468(a1, &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleNamingView);
  v30 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v31 = swift_allocObject();
  sub_1A486AD2C(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for LemonadePeopleNamingView);
  sub_1A524B704();
  sub_1A5247DB4();
  sub_1A425618C();
  sub_1A486B694(&qword_1EB1439B0, MEMORY[0x1E69C2760], MEMORY[0x1E69C2758]);
  v32 = v50;
  v33 = v53;
  sub_1A524A944();
  (*(v54 + 8))(v6, v33);
  (*(v51 + 8))(v12, v32);
  LOBYTE(v8) = sub_1A524A0B4();
  sub_1A5247BC4();
  v34 = &v16[*(v14 + 44)];
  *v34 = v8;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  if ([*v47 detectionType] == 1)
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

  sub_1A3D25114(v16, v22);
  *&v22[*(v18 + 44)] = v39;
  v40 = v49;
  sub_1A486A6B8(v27, v49, sub_1A48618A4);
  v41 = v52;
  sub_1A486A6B8(v22, v52, sub_1A486214C);
  v42 = v55;
  sub_1A486A6B8(v40, v55, sub_1A48618A4);
  sub_1A48619C0(0, &qword_1EB1438D8, sub_1A48618A4, sub_1A486214C);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_1A486A6B8(v41, v42 + *(v43 + 64), sub_1A486214C);
  sub_1A486A720(v22, sub_1A486214C);
  sub_1A486A720(v27, sub_1A48618A4);
  sub_1A486A720(v41, sub_1A486214C);
  return sub_1A486A720(v40, sub_1A48618A4);
}

uint64_t sub_1A4863D98@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v49 = a3;
  sub_1A4862D0C(0, &qword_1EB143A00, sub_1A4862520, sub_1A3E42C88);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - v7;
  sub_1A4862490(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v50 = a1;
  sub_1A48625A0(0);
  sub_1A4862824();
  sub_1A524A2C4();
  v19 = &v8[*(v6 + 44)];
  v20 = *(sub_1A5248A14() + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1A52494A4();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #8.0 }

  *v19 = _Q0;
  sub_1A3E42C88(0);
  *&v19[*(v28 + 36)] = 256;
  sub_1A486A294(v8, v15);
  if (a2)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  *&v15[*(v10 + 44)] = v29;
  if (a2)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = 1.0;
  }

  v31 = v18;
  sub_1A486AD2C(v15, v18, sub_1A4862490);
  v48 = sub_1A5249574();
  v51 = 1;
  sub_1A524BC74();
  sub_1A52481F4();
  v32 = v55;
  v33 = v56;
  v34 = v57;
  v35 = v58;
  v36 = v59;
  v47 = v60;
  v54 = 1;
  v53 = v56;
  v52 = v58;
  v37 = v51;
  v38 = v18;
  v39 = v12;
  sub_1A486B468(v38, v12, sub_1A4862490);
  v40 = v12;
  v41 = v49;
  sub_1A486B468(v40, v49, sub_1A4862490);
  sub_1A486AF7C(0, &qword_1EB1439F0, sub_1A4862490, sub_1A4862A58);
  v43 = v41 + *(v42 + 48);
  *v43 = v48;
  *(v43 + 8) = 0;
  *(v43 + 16) = v37;
  *(v43 + 24) = 0;
  *(v43 + 32) = 1;
  *(v43 + 40) = v32;
  *(v43 + 48) = v33;
  *(v43 + 56) = v34;
  *(v43 + 64) = v35;
  v44 = v47;
  *(v43 + 72) = v36;
  *(v43 + 80) = v44;
  *(v43 + 88) = v30;
  sub_1A486B4D0(v31, sub_1A4862490);
  return sub_1A486B4D0(v39, sub_1A4862490);
}

uint64_t sub_1A4864128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_1A486AF7C(0, &qword_1EB143AC0, sub_1A3F1E8D8, sub_1A4862C6C);
  v19[0] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - v4;
  sub_1A4862C6C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3F1E8D8(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249824();
  v19[8] = a1;
  sub_1A3D6DF58(0);
  sub_1A486B694(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
  sub_1A5247F24();
  sub_1A5249834();
  v19[4] = a1;
  sub_1A4862D0C(0, &qword_1EB143AD0, sub_1A4862D80, MEMORY[0x1E697CBE8]);
  sub_1A4862EA0();
  sub_1A5247F24();
  v17 = *(v19[0] + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  sub_1A52495D4();
  (*(v8 + 8))(v10, v7);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A4864498(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePeopleNamingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B34();
  sub_1A486B468(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleNamingView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A486AD2C(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LemonadePeopleNamingView);
  return MEMORY[0x1A5906A80](v7, sub_1A4869F3C, v9);
}

uint64_t sub_1A4864614(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486B468(a1 + *(v13 + 28), v8, sub_1A4137EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A4864894(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePeopleNamingView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4862D80(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5247B44();
  sub_1A486B468(a1, v6, type metadata accessor for LemonadePeopleNamingView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1A486AD2C(v6, v15 + v14, type metadata accessor for LemonadePeopleNamingView);
  MEMORY[0x1A5906A80](v9, sub_1A4869DAC, v15);
  sub_1A524A0F4();
  sub_1A524A164();
  v16 = sub_1A524A1F4();

  KeyPath = swift_getKeyPath();
  sub_1A4862E0C(0);
  v19 = &v13[*(v18 + 36)];
  *v19 = KeyPath;
  v19[1] = v16;
  v20 = (a1 + *(v3 + 52));
  v21 = *v20;
  v22 = *(v20 + 1);
  v27[16] = v21;
  v28 = v22;
  sub_1A486A580(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  LOBYTE(v3) = v27[15];
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = (v3 & 1) == 0;
  v25 = &v13[*(v11 + 36)];
  *v25 = v23;
  v25[1] = sub_1A3E07024;
  v25[2] = v24;
  sub_1A48620C0(&qword_1EB143AF8, sub_1A4862D80, sub_1A4862FC4, sub_1A3E72758);
  sub_1A524AA94();
  return sub_1A486B4D0(v13, sub_1A4862D80);
}

uint64_t sub_1A4864BEC(uint64_t a1)
{
  type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486B210(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  return sub_1A5247C14();
}

void sub_1A4864C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4864CF0(uint64_t a1)
{
  if (!qword_1EB143B38)
  {
    sub_1A5248464();
    sub_1A48612EC(255);
    sub_1A48613C0(255);
    sub_1A4862BE4(255);
    sub_1A4863094();
    sub_1A486B694(&qword_1EB143B28, sub_1A4862BE4, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5248834();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143B38);
    }
  }
}

uint64_t sub_1A4864DF4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4861BE4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  sub_1A4861A44(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v26 - v16);
  *v17 = sub_1A524BC34();
  v17[1] = v18;
  sub_1A486A8D8(0, &qword_1EB143C08, sub_1A4861AD8, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A4865668(a1, v17 + *(v19 + 44));
  sub_1A48650AC(v11);
  sub_1A486B468(v17, v14, sub_1A4861A44);
  v27 = 1;
  v20 = *(v6 + 16);
  v20(v8, v11, v5);
  sub_1A486B468(v14, a2, sub_1A4861A44);
  sub_1A48619C0(0, &qword_1EB1438F0, sub_1A4861A44, sub_1A4861BE4);
  v22 = a2 + *(v21 + 48);
  v23 = v27;
  *v22 = 0;
  *(v22 + 8) = v23;
  v20((a2 + *(v21 + 64)), v8, v5);
  v24 = *(v6 + 8);
  v24(v11, v5);
  sub_1A486B4D0(v17, sub_1A4861A44);
  v24(v8, v5);
  return sub_1A486B4D0(v14, sub_1A4861A44);
}

uint64_t sub_1A48650AC@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = type metadata accessor for LemonadePeopleNamingView(0);
  v60 = *(v2 - 8);
  v59 = *(v60 + 64);
  v3 = v2 - 8;
  v55 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861D4C(0);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861CB4(0);
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = *v1;
  v13 = v1;
  v54 = v1;
  v14 = sub_1A524C634();
  v15 = [v11 locKeyForPersonOrPet:v12 key:v14];

  v16 = sub_1A524C674();
  v17 = sub_1A3C38BD4(v16);
  v19 = v18;

  v20 = (v13 + *(v3 + 48));
  v21 = v20[1];
  v53 = *v20;
  v52 = v20[2];
  v68 = v53;
  v69 = v21;
  v70 = v52;
  sub_1A486A580(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v64 = v17;
  v65 = v19;
  sub_1A3D5F9DC();
  sub_1A524BDF4();
  KeyPath = swift_getKeyPath();
  sub_1A4861E04(0);
  v24 = &v7[*(v23 + 36)];
  *v24 = KeyPath;
  v24[8] = 0;
  LOBYTE(KeyPath) = sub_1A524A064();
  sub_1A5247BC4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_1A4864C8C(0, &qword_1EB143950, sub_1A4861E04, MEMORY[0x1E697E5E0]);
  v34 = &v7[*(v33 + 36)];
  *v34 = KeyPath;
  *(v34 + 1) = v26;
  *(v34 + 2) = v28;
  *(v34 + 3) = v30;
  *(v34 + 4) = v32;
  v34[40] = 0;
  v35 = sub_1A524B374();
  v36 = swift_getKeyPath();
  v37 = v56;
  v38 = &v7[*(v56 + 36)];
  *v38 = v36;
  v38[1] = v35;
  v64 = v53;
  v65 = v21;
  v66 = v52;
  sub_1A524B6A4();
  v64 = v68;
  v65 = v69;
  v39 = v54;
  v40 = v58;
  sub_1A486B468(v54, v58, type metadata accessor for LemonadePeopleNamingView);
  v41 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v42 = swift_allocObject();
  sub_1A486AD2C(v40, v42 + v41, type metadata accessor for LemonadePeopleNamingView);
  v43 = sub_1A4861F38();
  v44 = MEMORY[0x1E69E6180];
  v45 = v57;
  v46 = MEMORY[0x1E69E6158];
  sub_1A524B144();

  sub_1A486B4D0(v7, sub_1A4861D4C);
  v47 = v39 + *(v55 + 60);
  v48 = *v47;
  v49 = *(v47 + 8);
  LOBYTE(v47) = *(v47 + 16);
  LOBYTE(v64) = v48;
  v65 = v49;
  LOBYTE(v66) = v47;
  sub_1A486B210(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  sub_1A5247C24();
  v64 = v37;
  v65 = v46;
  v66 = v43;
  v67 = v44;
  swift_getOpaqueTypeConformance2();
  v50 = v61;
  sub_1A524B074();

  return (*(v62 + 8))(v45, v50);
}

uint64_t sub_1A4865668@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_1A5242C64();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861BBC(0);
  v81 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861B94(0);
  v83 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v74 - v12;
  v75 = sub_1A5243624();
  v13 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for PersonFaceView(0);
  v16 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v18 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43D4BD8(0);
  v76 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861B60(0);
  v74 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v78 = &v74 - v28;
  v29 = type metadata accessor for LemonadePeopleNamingView(0);
  v30 = a1;
  v31 = (a1 + v29[14]);
  v33 = *v31;
  v32 = v31[1];
  *&v91 = v33;
  *(&v91 + 1) = v32;
  sub_1A486B360(0, &unk_1EB143B70, type metadata accessor for PeopleNamingItem, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v34 = v90;
  if (sub_1A463BB64() || sub_1A463BC00())
  {

    (*(v13 + 104))(v15, *MEMORY[0x1E69C2530], v75);
    v35 = *(v30 + v29[16]);
    v36 = v35;
    v37 = sub_1A3C5A374();
    sub_1A4308C80(v15, v35, v37 & 1, v18);
    v38 = *(v30 + v29[15]);
    sub_1A524BC74();
    sub_1A52481F4();
    (*(v16 + 32))(v21, v18, v77);
    v39 = &v21[*(v76 + 36)];
    v40 = v92;
    *v39 = v91;
    *(v39 + 1) = v40;
    *(v39 + 2) = v93;
    v41 = v38 * 0.5;
    v42 = &v26[*(v74 + 36)];
    v43 = *(sub_1A5248A14() + 20);
    v44 = *MEMORY[0x1E697F468];
    v45 = sub_1A52494A4();
    (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
    *v42 = v41;
    v42[1] = v41;
    sub_1A3E42C88(0);
    *(v42 + *(v46 + 36)) = 256;
    sub_1A486AD2C(v21, v26, sub_1A43D4BD8);
    v47 = v78;
    sub_1A486AD2C(v26, v78, sub_1A4861B60);
    v48 = v82;
    sub_1A5242C54();
    v49 = [*v30 px_localizedName];
    v50 = sub_1A524C674();
    v52 = v51;

    v53 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v53 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v54 = 0.0;
    }

    else
    {
      v54 = 1.0;
    }

    v55 = v84;
    (*(v85 + 32))(v84, v48, v86);
    *&v55[*(v81 + 36)] = v54;
    v56 = sub_1A524A064();
    sub_1A5247BC4();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = v55;
    v66 = v80;
    sub_1A486AD2C(v65, v80, sub_1A4861BBC);
    v67 = v66 + *(v83 + 36);
    *v67 = v56;
    *(v67 + 8) = v58;
    *(v67 + 16) = v60;
    *(v67 + 24) = v62;
    *(v67 + 32) = v64;
    *(v67 + 40) = 0;
    v68 = v87;
    sub_1A486AD2C(v66, v87, sub_1A4861B94);
    v69 = v79;
    sub_1A486B468(v47, v79, sub_1A4861B60);
    v70 = v88;
    sub_1A486B468(v68, v88, sub_1A4861B94);
    v71 = v89;
    sub_1A486B468(v69, v89, sub_1A4861B60);
    sub_1A486AF7C(0, &qword_1EB143908, sub_1A4861B60, sub_1A4861B94);
    sub_1A486B468(v70, v71 + *(v72 + 48), sub_1A4861B94);
    sub_1A486B4D0(v68, sub_1A4861B94);
    sub_1A486B4D0(v47, sub_1A4861B60);
    sub_1A486B4D0(v70, sub_1A4861B94);
    return sub_1A486B4D0(v69, sub_1A4861B60);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4865EA8()
{
  v1 = v0;
  v2 = sub_1A5249FB4();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadePeopleNamingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1A5248284();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  v12 = *v0;
  sub_1A4860A84(v10);
  sub_1A486B468(v0, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleNamingView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1A486AD2C(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadePeopleNamingView);
  v15 = type metadata accessor for LemonadePeopleNamingViewDelegate(0);
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_person] = v12;
  (*(v8 + 16))(&v16[OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_dismissAction], v10, v7);
  v17 = &v16[OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_completion];
  *v17 = sub_1A486A780;
  v17[1] = v14;
  v33.receiver = v16;
  v33.super_class = v15;
  v18 = v12;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  (*(v8 + 8))(v10, v7);
  v21 = v1[2];
  v31 = v1[1];
  v20 = v31;
  v32 = v21;
  v30 = v19;
  sub_1A486B360(0, &qword_1EB143B48, sub_1A4860834, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v31 = v20;
  v32 = v21;
  sub_1A524B6A4();
  v22 = v30;
  [v11 setDelegate_];

  v23 = v26;
  sub_1A4860888(v26);
  v29 = v11;
  sub_1A5249FA4();

  return (*(v27 + 8))(v23, v28);
}

uint64_t sub_1A4866258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A486629C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePeopleNamingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (a1 + *(v5 + 56));
  v8 = *v6;
  v7 = v6[1];
  v12[2] = v8;
  v12[3] = v7;
  sub_1A486B360(0, &unk_1EB143B60, sub_1A4434588, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  swift_getKeyPath();
  sub_1A486B468(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleNamingView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A486AD2C(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LemonadePeopleNamingView);
  sub_1A4434588(0);
  sub_1A4862704(0);
  sub_1A486B694(&qword_1EB143A38, sub_1A4434588, MEMORY[0x1E69E6338]);
  sub_1A4862928();
  return sub_1A524B9B4();
}

void sub_1A48664A8(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadePeopleNamingView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  sub_1A486B468(a2, &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LemonadePeopleNamingView);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_1A486AD2C(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for LemonadePeopleNamingView);
  v19 = v9;
  sub_1A48627D0();
  v12 = v9;
  sub_1A524B704();
  v13 = sub_1A524B374();
  KeyPath = swift_getKeyPath();
  v20 = v13;
  v15 = sub_1A5248204();
  sub_1A4862704(0);
  v17 = (a3 + *(v16 + 36));
  *v17 = KeyPath;
  v17[1] = v15;
}

void sub_1A486666C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5248284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5249FB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_21;
  }

  v12 = sub_1A463BB64();
  if (v12)
  {
    v13 = v12;
    v14 = &selRef_initWithSelectedPerson_;
    goto LABEL_6;
  }

  v15 = sub_1A463BC00();
  if (!v15)
  {
LABEL_21:
    sub_1A524E6E4();
    __break(1u);
    return;
  }

  v13 = v15;
  v14 = &selRef_initWithContact_;
LABEL_6:
  v36 = [objc_allocWithZone(PXPeopleNameSelection) *v14];

  if ([v36 person])
  {
    v34 = v9;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v32 = v8;
      v33 = v5;
      v18 = [v16 px_localIdentifier];
      v19 = sub_1A524C674();
      v21 = v20;

      v35 = v2;
      v22 = [*v2 localIdentifier];
      v23 = sub_1A524C674();
      v25 = v24;

      if (v19 == v23 && v21 == v25)
      {

LABEL_18:
        sub_1A4860A84(v7);
        sub_1A5248274();
        swift_unknownObjectRelease();

        (*(v33 + 8))(v7, v4);
        return;
      }

      v27 = sub_1A524EAB4();

      if (v27)
      {
        goto LABEL_18;
      }

      v28 = v35;
      v29 = sub_1A4860888(v11);
      MEMORY[0x1EEE9AC00](v29);
      *(&v31 - 4) = v17;
      *(&v31 - 3) = v28;
      v30 = v36;
      sub_1A5249FA4();

      swift_unknownObjectRelease();
      (*(v34 + 8))(v11, v32);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v26 = v36;
  }
}

uint64_t sub_1A4866A70(uint64_t a1)
{
  v3 = sub_1A5248284();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadePeopleNamingView(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v1 + *(v9 + 76);
  v11 = *v10;
  if (!*v10)
  {
    v23[1] = v8;
    v23[3] = v3;
    v13 = *v1;
    v14 = [objc_opt_self() contextWithPerson:*v1 type:1];
    [v14 setNameSelection_];
    v23[2] = v13;
    v15 = [v13 type];
    if (v15 == -1)
    {
      v15 = [v14 setWantsToBeAddedToPeopleAlbum_];
    }

    v17 = sub_1A3D75D6C(v15, v16);
    v19 = v18;
    v20 = sub_1A3D75DEC();
    static PeopleLogging.peopleBootstrapCallerInfo(processName:file:function:line:)(v17, v19, v20, v21, 0xD000000000000016, 0x80000001A53EEE60);
  }

  v12 = *(v10 + 1);

  v11(a1);
  sub_1A3C33378(v11, v12);
  sub_1A4860A84(v6);
  sub_1A5248274();
  return (*(v4 + 8))(v6, v3);
}

id sub_1A4866E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_person] = a1;
  v10 = OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_dismissAction;
  v11 = sub_1A5248284();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a2, v11);
  v13 = &v9[OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_completion];
  *v13 = a3;
  *(v13 + 1) = a4;
  v16.receiver = v9;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v12 + 8))(a2, v11);
  return v14;
}

void sub_1A4866F28(char a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for LemonadePeopleNamingView(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 1) == 0)
  {
    v8 = sub_1A524D244();
    v9 = *sub_1A3CAA3FC();
    sub_1A486B468(a3, v7, type metadata accessor for LemonadePeopleNamingView);
    if (os_log_type_enabled(v9, v8))
    {
      v10 = v9;
      v11 = swift_slowAlloc();
      swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = [*v7 localIdentifier];
      v13 = sub_1A524C674();
      v15 = v14;

      sub_1A486B4D0(v7, type metadata accessor for LemonadePeopleNamingView);
      sub_1A3C2EF94(v13, v15, &v17);
    }

    sub_1A486B4D0(v7, type metadata accessor for LemonadePeopleNamingView);
  }
}

void sub_1A4867158(void *a1, void *a2, void **a3, void *a4)
{
  v8 = type metadata accessor for LemonadePeopleNamingView(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  if (a1)
  {
    v29 = v10;
    sub_1A486A580(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F9DE0;
    v12 = *a3;
    *(v11 + 32) = a2;
    *(v11 + 40) = v12;
    v28 = type metadata accessor for PeopleMergeUtilities(0, v13);
    v14 = a1;
    v15 = a2;
    v16 = v12;
    static PeopleMergeUtilities.bestTargetPerson(for:)(v11, v17);
    v19 = v18;
    v20 = *(a3 + *(v8 + 68)) == 0;
    sub_1A486B468(a3, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleNamingView);
    v21 = (v29[80] + 16) & ~v29[80];
    v22 = swift_allocObject();
    sub_1A486AD2C(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for LemonadePeopleNamingView);
    *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
    v23 = a4;
    sub_1A3D760C0(v11, v19, v20, sub_1A486A5D0, v22);
    v25 = v24;

    [v14 presentViewController:v25 animated:1 completion:0];
  }

  else
  {
    v26 = sub_1A524D244();
    v29 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v26, &dword_1A3C1C000, v29, "LemonadePeopleNamingView: no view controller available", 54, 2, MEMORY[0x1E69E7CC0]);
    v27 = v29;
  }
}

uint64_t sub_1A4867418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5248284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for LemonadePeopleNamingView(0) + 68);
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v9(a2);
    sub_1A3C33378(v9, v10);
  }

  sub_1A4860A84(v7);
  sub_1A5248274();
  return (*(v5 + 8))(v7, v4);
}

void sub_1A486753C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = v3;
  sub_1A48612EC(0);
  sub_1A48613C0(255);
  v9 = v8;
  sub_1A4862BE4(255);
  v11 = v10;
  v12 = sub_1A4863094();
  v13 = sub_1A486B694(&qword_1EB143B28, sub_1A4862BE4, MEMORY[0x1E697C5E0]);
  v20 = v9;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1A5248824();
  sub_1A486B468(v3, v7, type metadata accessor for LemonadePeopleNamingView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1A486AD2C(v7, v15 + v14, type metadata accessor for LemonadePeopleNamingView);
  sub_1A4864C8C(0, &qword_1EB143B30, sub_1A4864CF0, MEMORY[0x1E69805D8]);
  v17 = (a2 + *(v16 + 36));
  *v17 = sub_1A486B6E0;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
}

uint64_t sub_1A4867754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v56 = a2;
  v5 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = sub_1A5243624();
  v6 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for PersonFaceView(0);
  v9 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43D4BD8(0);
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861B60(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v53 = &v50 - v22;
  v23 = sub_1A463BB64();
  v55 = a1;
  if (v23 || sub_1A463BC00())
  {
    (*(v6 + 104))(v8, *MEMORY[0x1E69C2530], v51);
    v24 = sub_1A3C5A374();
    sub_1A4308C80(v8, 0, v24 & 1, v11);
    sub_1A524BC74();
    sub_1A52481F4();
    (*(v9 + 32))(v14, v11, v52);
    v25 = &v14[*(v50 + 36)];
    v26 = v63;
    *v25 = v62;
    *(v25 + 1) = v26;
    *(v25 + 2) = v64;
    v27 = a3 * 0.5;
    v28 = &v20[*(v16 + 36)];
    v29 = *(sub_1A5248A14() + 20);
    v30 = *MEMORY[0x1E697F468];
    v31 = sub_1A52494A4();
    (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
    *v28 = v27;
    v28[1] = v27;
    sub_1A3E42C88(0);
    *(v28 + *(v32 + 36)) = 256;
    sub_1A486AD2C(v14, v20, sub_1A43D4BD8);
    v33 = v53;
    sub_1A486AD2C(v20, v53, sub_1A4861B60);
    sub_1A3C52C70(0, &qword_1EB126A40, 0x1E696AAB0);
    sub_1A5240714();
    v34 = sub_1A524D624();
    v52 = v34;
    sub_1A5240714();
    v35 = sub_1A524D624();
    v36 = sub_1A524BC74();
    v38 = v37;
    v39 = *(v55 + OBJC_IVAR___PXPeopleNamingItem_title);
    v40 = *(v55 + OBJC_IVAR___PXPeopleNamingItem_subtitle);
    v41 = v54;
    sub_1A486B468(v33, v54, sub_1A4861B60);
    v42 = v56;
    sub_1A486B468(v41, v56, sub_1A4861B60);
    sub_1A486AF7C(0, &qword_1EB143BA8, sub_1A4861B60, sub_1A4869A84);
    v44 = (v42 + *(v43 + 48));
    *&v57 = v34;
    *(&v57 + 1) = v35;
    *&v58 = 0x4028000000000000;
    *(&v58 + 1) = v39;
    *&v59 = v40;
    *(&v59 + 1) = 0x4028000000000000;
    *&v60 = v36;
    *(&v60 + 1) = v38;
    v45 = v40;
    v46 = v39;
    sub_1A486B468(&v57, v61, sub_1A4869A84);
    sub_1A486B4D0(v33, sub_1A4861B60);
    v47 = v58;
    *v44 = v57;
    v44[1] = v47;
    v48 = v60;
    v44[2] = v59;
    v44[3] = v48;
    v61[0] = v52;
    v61[1] = v35;
    v61[2] = 0x4028000000000000;
    v61[3] = v46;
    v61[4] = v40;
    v61[5] = 0x4028000000000000;
    v61[6] = v36;
    v61[7] = v38;
    sub_1A486B4D0(v61, sub_1A4869A84);
    return sub_1A486B4D0(v41, sub_1A4861B60);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4867DAC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1A5249314();
  sub_1A48682A4(a1, &v41);
  v53 = v45;
  v54[0] = *v46;
  *(v54 + 9) = *&v46[9];
  v49 = v41;
  v50 = v42;
  v52 = v44;
  v51 = v43;
  v55[0] = v41;
  v55[1] = v42;
  v55[2] = v43;
  v55[3] = v44;
  v55[4] = v45;
  v56[0] = *v46;
  *(v56 + 9) = *&v46[9];
  sub_1A486B468(&v49, &v38, sub_1A486B08C);
  sub_1A486B4D0(v55, sub_1A486B08C);
  *&v40[55] = v52;
  *&v40[71] = v53;
  *&v40[87] = v54[0];
  *&v40[96] = *(v54 + 9);
  *&v40[7] = v49;
  *&v40[23] = v50;
  *&v40[39] = v51;
  if (!a2)
  {
    goto LABEL_7;
  }

  v17 = v7;
  v8 = a3;
  v9 = a2;
  v10 = [v9 string];
  v11 = sub_1A524C674();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    a3 = v8;
    v7 = v17;
LABEL_7:
    sub_1A486B44C(&v41);
    goto LABEL_8;
  }

  v15 = sub_1A5249314();
  sub_1A4868490(v9, &v41);
  v26 = v45;
  *v27 = *v46;
  *&v27[9] = *&v46[9];
  v22 = v41;
  v23 = v42;
  v24 = v43;
  v25 = v44;
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  *v35 = *v46;
  *&v35[9] = *&v46[9];
  sub_1A486B468(&v22, &v38, sub_1A486B32C);
  sub_1A486B4D0(&v30, sub_1A486B32C);

  *&v18[55] = v25;
  *&v18[71] = v26;
  *&v18[87] = *v27;
  *&v18[7] = v22;
  *&v18[23] = v23;
  *&v18[39] = v24;
  v38 = v15;
  v39[0] = 1;
  *&v39[33] = *&v18[32];
  *&v39[17] = *&v18[16];
  *&v39[1] = *v18;
  *&v39[97] = *&v27[9];
  *&v39[81] = *&v18[80];
  *&v39[65] = *&v18[64];
  *&v39[49] = *&v18[48];
  PXDisplayCollectionDetailedCountsMake();
  *&v46[16] = *&v39[80];
  v47 = *&v39[96];
  v48 = v39[112];
  v43 = *&v39[16];
  v44 = *&v39[32];
  *v46 = *&v39[64];
  v45 = *&v39[48];
  v42 = *v39;
  v41 = v38;
  a3 = v8;
  v7 = v17;
LABEL_8:
  *&v35[16] = *&v46[16];
  v36 = v47;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  *v35 = *v46;
  v30 = v41;
  v31 = v42;
  v20[0] = v7;
  v20[1] = 0;
  v21[0] = 1;
  *&v21[97] = *&v40[96];
  *&v21[81] = *&v40[80];
  *&v21[65] = *&v40[64];
  *&v21[49] = *&v40[48];
  *&v21[33] = *&v40[32];
  *&v21[17] = *&v40[16];
  *&v21[1] = *v40;
  __src[2] = *&v21[16];
  __src[3] = *&v21[32];
  __src[0] = v7;
  __src[1] = *v21;
  __src[6] = *&v21[80];
  __src[7] = *&v21[96];
  __src[4] = *&v21[48];
  __src[5] = *&v21[64];
  *&v27[16] = *&v46[16];
  v28 = v47;
  v24 = v43;
  v25 = v44;
  v26 = v45;
  *v27 = *v46;
  v22 = v41;
  v23 = v42;
  *(&__src[13] + 8) = *v46;
  *(&__src[14] + 8) = *&v46[16];
  *(&__src[15] + 8) = v47;
  *(&__src[9] + 8) = v42;
  v37 = v48;
  LOBYTE(__src[8]) = v40[111];
  v29 = v48;
  BYTE8(__src[16]) = v48;
  *(&__src[10] + 8) = v43;
  *(&__src[11] + 8) = v44;
  *(&__src[12] + 8) = v45;
  *(&__src[8] + 8) = v41;
  memcpy(a3, __src, 0x109uLL);
  sub_1A486B468(v20, &v38, sub_1A486AFF8);
  sub_1A486B468(&v22, &v38, sub_1A486B264);
  sub_1A486B4D0(&v30, sub_1A486B264);
  *&v39[49] = *&v40[48];
  *&v39[65] = *&v40[64];
  *&v39[81] = *&v40[80];
  *&v39[97] = *&v40[96];
  *&v39[1] = *v40;
  *&v39[17] = *&v40[16];
  v38 = v7;
  v39[0] = 1;
  *&v39[33] = *&v40[32];
  return sub_1A486B4D0(&v38, sub_1A486AFF8);
}

uint64_t sub_1A48682A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = a1;
  sub_1A5240834();
  v7 = sub_1A524A454();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1A524A054();
  sub_1A5247BC4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1A524A0F4();
  sub_1A524A1A4();
  v23 = sub_1A524A1F4();

  KeyPath = swift_getKeyPath();
  *&v31 = v7;
  *(&v31 + 1) = v9;
  LOBYTE(v32) = v11 & 1;
  *(&v32 + 1) = v13;
  LOBYTE(v33) = v14;
  *(&v33 + 1) = v16;
  *&v34 = v18;
  *(&v34 + 1) = v20;
  *&v35 = v22;
  BYTE8(v35) = 0;
  *&v36 = KeyPath;
  *(&v36 + 1) = v23;
  v30[96] = 1;
  v25 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v25;
  v26 = v36;
  *(a2 + 64) = v35;
  *(a2 + 80) = v26;
  v27 = v32;
  *a2 = v31;
  *(a2 + 16) = v27;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v37[0] = v7;
  v37[1] = v9;
  v38 = v11 & 1;
  v39 = v13;
  v40 = v14;
  v41 = v16;
  v42 = v18;
  v43 = v20;
  v44 = v22;
  v45 = 0;
  v46 = KeyPath;
  v47 = v23;
  v28 = MEMORY[0x1E6980F50];
  sub_1A486B530(&v31, v30, &qword_1EB130118, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
  return sub_1A486B5A4(v37, &qword_1EB130118, &qword_1EB127820, &qword_1EB1276A0, v28);
}

uint64_t sub_1A4868490@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = a1;
  sub_1A5240834();
  v7 = sub_1A524A454();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1A524A054();
  sub_1A5247BC4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v11 & 1;
  v24 = sub_1A524B334();
  KeyPath = swift_getKeyPath();
  *&v32 = v7;
  *(&v32 + 1) = v9;
  LOBYTE(v33) = v23;
  *(&v33 + 1) = v13;
  LOBYTE(v34) = v14;
  *(&v34 + 1) = v16;
  *&v35 = v18;
  *(&v35 + 1) = v20;
  *&v36 = v22;
  BYTE8(v36) = 0;
  *&v37 = KeyPath;
  *(&v37 + 1) = v24;
  v31[96] = 1;
  v26 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v26;
  v27 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v27;
  v28 = v33;
  *a2 = v32;
  *(a2 + 16) = v28;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v38[0] = v7;
  v38[1] = v9;
  v39 = v23;
  v40 = v13;
  v41 = v14;
  v42 = v16;
  v43 = v18;
  v44 = v20;
  v45 = v22;
  v46 = 0;
  v47 = KeyPath;
  v48 = v24;
  v29 = MEMORY[0x1E69815C0];
  sub_1A486B530(&v32, v31, &qword_1EB143C90, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
  return sub_1A486B5A4(v38, &qword_1EB143C90, &qword_1EB1277F0, &qword_1EB127560, v29);
}

void *sub_1A4868660@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = sub_1A5249574();
  v12 = 1;
  sub_1A4867DAC(v4, v5, __src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v14, __src, 0x109uLL);
  sub_1A486B468(__dst, v9, sub_1A486AEF4);
  sub_1A486B4D0(v14, sub_1A486AEF4);
  memcpy(&v11[7], __dst, 0x109uLL);
  v7 = v12;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  return memcpy((a1 + 17), v11, 0x110uLL);
}

uint64_t sub_1A4868758@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A486A8D8(0, &qword_1EB143B98, sub_1A48699FC, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  return sub_1A4867754(v4, a2 + *(v6 + 44), v5);
}

void sub_1A48687E8()
{
  sub_1A5249314();
  sub_1A3C38BD4(0xD000000000000033);
  sub_1A3D5F9DC();
  v2 = sub_1A524A464();
  v4 = v3;
  v6 = v5;
  sub_1A524B334();
  v7 = sub_1A524A364();
  v9 = v8;
  v11 = v10;

  sub_1A3E04DF4(v2, v4, v6 & 1);

  sub_1A3E75E68(v7, v9, v11 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4868CE4(void *a1)
{
  v3 = sub_1A524D224();
  v4 = sub_1A3CAA3FC();
  v5 = *v4;
  sub_1A5246DF4(v3, &dword_1A3C1C000, v5, "User selected contact from person naming view", 45, 2, MEMORY[0x1E69E7CC0]);

  v28 = v1;
  v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_person);
  v7 = [v6 photoLibrary];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 librarySpecificFetchOptions];

    [v9 setFetchLimit_];
    v10 = objc_opt_self();
    sub_1A486A580(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    v12 = [a1 identifier];
    v13 = sub_1A524C674();
    v14 = a1;
    v16 = v15;

    *(v11 + 32) = v13;
    *(v11 + 40) = v16;
    v17 = sub_1A524CA14();

    v18 = [v10 fetchPersonsForContactIdentifiers:v17 options:v9];

    v29 = [v18 firstObject];
    if (v29)
    {
      v19 = v29;
      v20 = sub_1A524D224();
      v21 = *v4;
      if (os_log_type_enabled(v21, v20))
      {
        log = v21;
        v22 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v22 = 136315650;
        v23 = [v6 localIdentifier];
        v24 = sub_1A524C674();
        v26 = v25;

        sub_1A3C2EF94(v24, v26, &v30);
      }
    }

    else
    {
      (*(v28 + OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_completion))(v14);
    }

    sub_1A5248274();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A48690E8(void *a1)
{
  sub_1A4869C38(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - v7;
  type metadata accessor for PeopleNamingItem();
  v9 = a1;
  v10 = PeopleNamingItem.__allocating_init(person:searchString:)(v9, 0, 0xE000000000000000);
  v36[0] = 0;
  sub_1A4860834(0);
  v11 = v10;
  sub_1A524B694();
  *(v8 + 8) = v37;
  v12 = type metadata accessor for LemonadePeopleNamingView(0);
  v13 = v12[6];
  *&v8[v13] = swift_getKeyPath();
  sub_1A45DBFC0(0);
  swift_storeEnumTagMultiPayload();
  v14 = v12[7];
  *&v8[v14] = swift_getKeyPath();
  sub_1A4137EE8(0);
  swift_storeEnumTagMultiPayload();
  v15 = &v8[v12[8]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &v8[v12[9]];
  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  *(v16 + 8) = 0;
  v17 = &v8[v12[11]];
  LOBYTE(v36[0]) = 0;
  sub_1A524B694();
  v18 = *(&v37 + 1);
  *v17 = v37;
  *(v17 + 1) = v18;
  v19 = &v8[v12[12]];
  v36[0] = MEMORY[0x1E69E7CC0];
  sub_1A4434588(0);
  sub_1A524B694();
  v20 = *(&v37 + 1);
  *v19 = v37;
  *(v19 + 1) = v20;
  v21 = &v8[v12[13]];
  *v21 = sub_1A5247C34() & 1;
  *(v21 + 1) = v22;
  v21[16] = v23 & 1;
  *&v8[v12[15]] = 0x4049000000000000;
  *v8 = v9;
  v24 = &v8[v12[10]];
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  v25 = v9;
  sub_1A524B694();
  v26 = v38;
  *v24 = v37;
  *(v24 + 2) = v26;
  v27 = &v8[v12[14]];
  v36[0] = v11;
  sub_1A524B694();
  v28 = *(&v37 + 1);
  *v27 = v37;
  *(v27 + 1) = v28;
  *&v8[v12[16]] = 0;
  v29 = &v8[v12[17]];
  *v29 = 0;
  *(v29 + 1) = 0;
  KeyPath = swift_getKeyPath();
  v31 = &v8[*(v3 + 44)];
  *v31 = KeyPath;
  v31[8] = 0;
  sub_1A486B468(v8, v5, sub_1A4869C38);
  sub_1A4869CCC(0);
  v33 = objc_allocWithZone(v32);
  v34 = sub_1A5249624();

  sub_1A486B4D0(v8, sub_1A4869C38);
  return v34;
}

void sub_1A486944C(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB1265C0, 0x1E6978980);
  if (v1 <= 0x3F)
  {
    sub_1A486B360(319, &qword_1EB143B48, sub_1A4860834, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A486B360(319, &unk_1EB1246F0, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A486B360(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A4861EBC(319, &unk_1EB143B50, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A486B360(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A486A580(319, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1A486A580(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  sub_1A486B360(319, &unk_1EB143B60, sub_1A4434588, MEMORY[0x1E6981790]);
                  if (v9 <= 0x3F)
                  {
                    sub_1A486B210(319, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1A486B360(319, &unk_1EB143B70, type metadata accessor for PeopleNamingItem, MEMORY[0x1E6981790]);
                      if (v11 <= 0x3F)
                      {
                        sub_1A3C4B7E8(319, &qword_1EB126650, &qword_1EB126660, 0x1E6978630);
                        if (v12 <= 0x3F)
                        {
                          sub_1A486B360(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

uint64_t sub_1A4869800(uint64_t a1)
{
  result = sub_1A5248284();
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

unint64_t sub_1A48698D0()
{
  result = qword_1EB143B80;
  if (!qword_1EB143B80)
  {
    sub_1A4864C8C(255, &qword_1EB143B30, sub_1A4864CF0, MEMORY[0x1E69805D8]);
    sub_1A486B694(&unk_1EB143B88, sub_1A4864CF0, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143B80);
  }

  return result;
}

void sub_1A48699FC(uint64_t a1)
{
  if (!qword_1EB143BA0)
  {
    sub_1A486AF7C(255, &qword_1EB143BA8, sub_1A4861B60, sub_1A4869A84);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143BA0);
    }
  }
}

void sub_1A4869A84(uint64_t a1)
{
  if (!qword_1EB143BB0)
  {
    sub_1A4869B1C(255, &qword_1EB143BB8, sub_1A4869B84, &type metadata for LemonadePeopleNamingRow.TitleStack, MEMORY[0x1E697EC08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143BB0);
    }
  }
}

void sub_1A4869B1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A4869B84()
{
  result = qword_1EB1DB340[0];
  if (!qword_1EB1DB340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DB340);
  }

  return result;
}

uint64_t sub_1A4869BD8()
{
  v1 = *(type metadata accessor for LemonadePeopleNamingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4864BEC(v2);
}

void sub_1A4869C38(uint64_t a1)
{
  if (!qword_1EB143BC0)
  {
    type metadata accessor for LemonadePeopleNamingView(255);
    sub_1A4861EBC(255, &qword_1EB141B50, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143BC0);
    }
  }
}

void sub_1A4869CCC(uint64_t a1)
{
  if (!qword_1EB143BD0)
  {
    sub_1A4869C38(255);
    sub_1A439AFD8();
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143BD0);
    }
  }
}

uint64_t sub_1A4869D30(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4861EBC(255, a2, a3, a4, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4869DAC()
{
  type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486A580(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v0 = objc_allocWithZone(PXPeopleNameSelection);
  v1 = sub_1A524C634();
  v2 = [v0 initWithName_];

  sub_1A4866A70(v2);
}

void sub_1A4869EBC(char a1, void *a2)
{
  v5 = *(type metadata accessor for LemonadePeopleNamingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A4866F28(a1, a2, v6);
}

uint64_t sub_1A4869F3C()
{
  v1 = *(type metadata accessor for LemonadePeopleNamingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4864614(v2);
}

uint64_t sub_1A4869F9C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A486A8D8(0, &qword_1EB143BF8, sub_1A486181C, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  return sub_1A4863784(v4, a2 + *(v5 + 44));
}

uint64_t sub_1A486A014()
{
  sub_1A3C38BD4(0xD000000000000030);
  sub_1A524C724();

  v0 = sub_1A524C634();

  v1 = [v0 px:3 stringByApplyingCapitalization:?];

  sub_1A524C674();
  sub_1A3D5F9DC();
  v2 = MEMORY[0x1E69E6158];
  sub_1A524A464();
  type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486A580(0, &unk_1EB13A670, v2, MEMORY[0x1E6981790]);
  sub_1A524B6A4();

  v3 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v3 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_1A486A580(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
  }

  sub_1A486B210(0, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
  sub_1A486263C(0);
  sub_1A4234634();
  sub_1A48628B0();
  return sub_1A524BA34();
}

uint64_t sub_1A486A294(uint64_t a1, uint64_t a2)
{
  sub_1A4862D0C(0, &qword_1EB143A00, sub_1A4862520, sub_1A3E42C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A486A330(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadePeopleNamingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A48664A8(a1, v6, a2);
}

void sub_1A486A3B0()
{
  type metadata accessor for LemonadePeopleNamingView(0);
  v1 = *(v0 + 16);
  v2 = sub_1A463BC00();
  if (!v2)
  {
    v6 = sub_1A463BB64();
    if (v6)
    {

      sub_1A486666C(v1);
      return;
    }

    goto LABEL_11;
  }

  v3 = sub_1A463BB64();
  if (!v3)
  {
    v7 = sub_1A463BC00();
    if (v7)
    {
      v4 = v7;
      v5 = &selRef_initWithContact_;
      goto LABEL_8;
    }

LABEL_11:
    sub_1A524E6E4();
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = &selRef_initWithSelectedPerson_;
LABEL_8:
  v8 = [objc_allocWithZone(PXPeopleNameSelection) *v5];

  sub_1A4866A70(v8);
}

id sub_1A486A564@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = 0x4044000000000000;
  return v2;
}

void sub_1A486A580(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A486A5D0()
{
  v1 = *(type metadata accessor for LemonadePeopleNamingView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A4867418(v0 + v2, v3);
}

uint64_t sub_1A486A6B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A486A720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A486A780(uint64_t a1)
{
  type metadata accessor for LemonadePeopleNamingView(0);
  v2 = [objc_allocWithZone(PXPeopleNameSelection) initWithContact_];
  sub_1A4866A70(v2);
}

void sub_1A486A824(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 16);

    [a1 presentViewController:v2 animated:1 completion:0];
  }

  else
  {
    v3 = sub_1A524D244();
    v4 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v3, &dword_1A3C1C000, v4, "LemonadePeopleNamingView: no view controller available to present the contact picker", 84, 2, MEMORY[0x1E69E7CC0]);
  }
}

void sub_1A486A8D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroyTm_81()
{
  v1 = type metadata accessor for LemonadePeopleNamingView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[6];
  sub_1A45DBFC0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5249FB4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248284();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  sub_1A3EF9960(*(v2 + v1[9]), *(v2 + v1[9] + 8), *(v2 + v1[9] + 16), *(v2 + v1[9] + 17));

  if (*(v2 + v1[17]))
  {
  }

  return swift_deallocObject();
}

id sub_1A486AB8C(uint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for LemonadePeopleNamingView(0);
  v5 = (v2 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80)));
  v6 = *a2;
  v7 = a2[1];
  v8 = *v5;
  result = [*v5 photoLibrary];
  if (result)
  {
    v10 = result;
    type metadata accessor for PeopleNamingUtilities();
    static PeopleNamingUtilities.items(for:photoLibrary:detectionType:)(v6, v7, v10, [v8 detectionType]);

    sub_1A486B360(0, &unk_1EB143B60, sub_1A4434588, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    sub_1A486A580(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    return sub_1A524B6B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A486AD2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A486ADA4(uint64_t a1)
{
  if (!qword_1EB143C18)
  {
    sub_1A48699FC(255);
    sub_1A486B694(&qword_1EB143C20, sub_1A48699FC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143C18);
    }
  }
}

void sub_1A486AE6C(uint64_t a1)
{
  if (!qword_1EB143C38)
  {
    sub_1A3FF7634(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB143C38);
    }
  }
}

void sub_1A486AEF4(uint64_t a1)
{
  if (!qword_1EB143C40)
  {
    sub_1A486AF7C(255, &qword_1EB143C48, sub_1A486AFF8, sub_1A486B264);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143C40);
    }
  }
}

void sub_1A486AF7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A486AFF8(uint64_t a1)
{
  if (!qword_1EB143C50)
  {
    sub_1A486B08C(255);
    sub_1A486B694(&qword_1EB143C68, sub_1A486B08C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143C50);
    }
  }
}

void sub_1A486B0C0(uint64_t a1)
{
  if (!qword_1EB143C60)
  {
    sub_1A486B148(255, &qword_1EB130118, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143C60);
    }
  }
}

void sub_1A486B148(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A486B210(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A4861EBC(255, a3, a4, a5, MEMORY[0x1E6980A08]);
    v9 = sub_1A5248804();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A486B210(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A486B298(uint64_t a1)
{
  if (!qword_1EB143C78)
  {
    sub_1A486B32C(255);
    sub_1A486B694(&qword_1EB143C98, sub_1A486B32C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143C78);
    }
  }
}

void sub_1A486B360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A486B3C4(uint64_t a1)
{
  if (!qword_1EB143C88)
  {
    sub_1A486B148(255, &qword_1EB143C90, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143C88);
    }
  }
}

double sub_1A486B44C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
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

uint64_t sub_1A486B468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A486B4D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A486B530(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t a6)
{
  sub_1A486B148(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A486B5A4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1A486B148(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A486B600(uint64_t a1)
{
  if (!qword_1EB143CA8)
  {
    sub_1A486AEF4(255);
    sub_1A486B694(&unk_1EB143CB0, sub_1A486AEF4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143CA8);
    }
  }
}

uint64_t sub_1A486B694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

int *sub_1A486B6E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A52434D4();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for LemonadeDetailsContext(0);
  v4 = (a1 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[6]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + result[7]) = 0;
  *(a1 + result[8]) = 0;
  return result;
}

unint64_t sub_1A486B778()
{
  result = qword_1EB120938;
  if (!qword_1EB120938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB120938);
  }

  return result;
}

id sub_1A486B86C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXStoryChromeButtonFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int_optional __swiftcall LemonadeCurationModel.numberOfAssets(curationKind:)(PhotosUICore::LemonadeCurationKind curationKind)
{
  v1 = 0;
  v2 = 1;
  result.value = v1;
  result.is_nil = v2;
  return result;
}

unint64_t sub_1A486B938()
{
  result = qword_1EB129B48;
  if (!qword_1EB129B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B48);
  }

  return result;
}

unint64_t sub_1A486B990()
{
  result = qword_1EB129B60;
  if (!qword_1EB129B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B60);
  }

  return result;
}

unint64_t sub_1A486B9EC()
{
  result = qword_1EB129B68;
  if (!qword_1EB129B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B68);
  }

  return result;
}

unint64_t sub_1A486BA44()
{
  result = qword_1EB129B50;
  if (!qword_1EB129B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B50);
  }

  return result;
}

uint64_t sub_1A486BB60()
{
  sub_1A486BDC0();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247974();
  sub_1A486BE24();
  v5 = sub_1A5247A14();
  (*(v2 + 8))(v4, v1);
  return v5;
}

void sub_1A486BDC0()
{
  if (!qword_1EB143CC0)
  {
    v0 = sub_1A5247984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143CC0);
    }
  }
}

unint64_t sub_1A486BE24()
{
  result = qword_1EB143CC8;
  if (!qword_1EB143CC8)
  {
    sub_1A486BDC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143CC8);
  }

  return result;
}

uint64_t sub_1A486BEC8()
{
  v0 = sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  v1 = sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  return DataSectionItemListProtocol<>.itemIdentifiers.getter(v0, v1);
}

uint64_t sub_1A486BF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  v7 = sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  return a4(a1, v6, v7);
}

void sub_1A486C038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);

  sub_1A5246494();
}

void sub_1A486C110(uint64_t a1, uint64_t a2)
{
  sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);

  sub_1A5246404();
}

uint64_t sub_1A486C1B8(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
    sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
    sub_1A524CFD4();
    result = sub_1A524D034();
    if (v2 >= v4 && v3 >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A486C28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A486C3A8(a1, a3);
  if (a2 >= 1)
  {
    if (result < 0 || result >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (result <= 0 && result > a2)
  {
    return 0;
  }

LABEL_8:
  v7 = __OFADD__(a1, a2);
  v6 = a1 + a2;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
    sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
    sub_1A524CFD4();
    result = sub_1A524D034();
    if (v6 >= v9 && v8 >= v6)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A486C3A8(uint64_t a1, uint64_t a2)
{
  sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  sub_1A524CFD4();
  result = sub_1A524D034();
  if (v7 > a1 || v6 < a1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1A524CFD4();
  result = sub_1A524D034();
  if (v7 > a2 || v6 < a2)
  {
    goto LABEL_10;
  }

  result = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A486C4C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A486C4F4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A486C4F4(uint64_t result)
{
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
    sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
    sub_1A524CFD4();
    result = sub_1A524D034();
    if (v1 >= v3 && v1 < v2)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1A486C5C8(uint64_t *result)
{
  v1 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
    sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
    sub_1A524CFD4();
    result = sub_1A524D034();
    if (v1 >= v5 && v1 < v4)
    {
      *v2 = v1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A486C6D8@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  v5 = sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  result = a1(v4, v5);
  *a2 = result;
  return result;
}

void (*sub_1A486C770(uint64_t a1, uint64_t *a2))(id *a1)
{
  v2 = *a2;
  v3 = sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  v4 = sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  DataSectionItemListProtocol<>.subscript.getter(v2, v3, v4);
  return sub_1A3D5C2E8;
}

uint64_t sub_1A486C824(uint64_t a1)
{
  v2 = sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  v3 = sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  return DataSectionItemListProtocol<>.subscript.getter(a1, v2, v3);
}

uint64_t sub_1A486C8BC@<X0>(void *a2@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  sub_1A524CFD4();
  result = sub_1A524D034();
  if (v4 < v5)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_1A486C95C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1A486C28C(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t *sub_1A486C998(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1A486C9B4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1A486C9D0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A486C9EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  result = DataSectionItemListProtocol<>.index(after:)(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1A486CAF4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  result = sub_1A524CFD4();
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_1A486CB9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

void *sub_1A486CBF0()
{
  v1 = *v0;
  v2 = sub_1A486D4EC(*v0);

  return v2;
}

uint64_t sub_1A486CEE4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A486D154(255, &qword_1EB143CF0, MEMORY[0x1E69E74D0]);
    sub_1A3C3A220(a2, &qword_1EB1374F0, off_1E771FAD8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A486D004(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A3D868AC();
    sub_1A3DE7848();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A486D0C0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A486D154(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A486D154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB1374F0, off_1E771FAD8);
    v7 = sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A486D204(uint64_t a1)
{
  *(a1 + 8) = sub_1A3C3A220(&qword_1EB1374E8, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  result = sub_1A3C3A220(&qword_1EB13DCB0, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A486D360@<X0>(uint64_t *a1@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB13DE08, off_1E771FAE8);
  sub_1A3C3A220(&qword_1EB13DE00, &qword_1EB13DE08, off_1E771FAE8, &protocol conformance descriptor for PXStorageTipListItem);
  result = sub_1A524E434();
  *a1 = result;
  return result;
}

uint64_t sub_1A486D3F0@<X0>(uint64_t *a2@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB13DE08, off_1E771FAE8);
  result = sub_1A524E434();
  *a2 = result;
  return result;
}

void sub_1A486D444(uint64_t a1)
{
  swift_getWitnessTable();

    ;
  }
}

void sub_1A486D498(uint64_t a1)
{
  swift_getWitnessTable();

    ;
  }
}

void *sub_1A486D4EC(void *a1)
{
  v2 = [a1 count];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = sub_1A40C9D70(v2, 0);
  v5 = a1;
  v6 = sub_1A486D578(v8, (v4 + 4), v3);

  if (v6 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1A486D578(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  result = sub_1A524CFD4();
  v9 = v17[0];
  v18 = v17[0];
  v19 = v3;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *a1 = v4;
    a1[1] = v9;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = a3;
    v16 = a1;
    v10 = 0;
    v11 = a3 - 1;
    a1 = v17;
    while (1)
    {
      sub_1A524D034();
      v9 = v18;
      if (v18 == v17[0])
      {
        a3 = v10;
        a1 = v16;
        goto LABEL_13;
      }

      v12 = sub_1A524D0C4();
      v14 = *v13;
      v12(v17, 0);
      v17[0] = v4;
      sub_1A524D014();
      *(a2 + 8 * v10) = v14;
      if (v11 == v10)
      {
        break;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v9 = v18;
    a3 = v15;
    a1 = v16;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall PXMenuBuilder.addActionsMenuDurationSection(storyViewModel:)(PXStoryViewModel *storyViewModel)
{
  sub_1A486D7B0(storyViewModel, &v3);
  if (v4)
  {
    sub_1A3C34460(&v3, v5);
    v1 = v6;
    v2 = __swift_project_boxed_opaque_existential_1(v5, v6);
    sub_1A408EA88(v2, 0, 0, v1);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_1A486D920(&v3);
  }
}

double sub_1A486D7B0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (([a1 allowedChromeItems] & 0x8000000) == 0)
  {
    goto LABEL_2;
  }

  if ([a1 mainAssetCollection])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 isGenerative];
      swift_unknownObjectRelease();
      if (v6)
      {
LABEL_2:
        *(a2 + 32) = 0;
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v7 = type metadata accessor for StoryViewCurationModel(0);
  v8 = StoryViewCurationModel.__allocating_init(storyViewModel:)(a1);
  v9 = (*(*v8 + 184))(v8);
  if (*(v9 + 16) >= 2uLL)
  {

LABEL_11:
    *(a2 + 24) = v7;
    *(a2 + 32) = sub_1A486DAE0();
    *a2 = v8;
    return result;
  }

  v10 = sub_1A3F61A0C(v9, &unk_1F17298A8);

  if (v10)
  {
    goto LABEL_11;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;

  return result;
}

uint64_t sub_1A486D920(uint64_t a1)
{
  sub_1A486D97C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A486D97C(uint64_t a1)
{
  if (!qword_1EB13FCA8)
  {
    sub_1A486D9D4();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13FCA8);
    }
  }
}

unint64_t sub_1A486D9D4()
{
  result = qword_1EB13FCB0;
  if (!qword_1EB13FCB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13FCB0);
  }

  return result;
}

unint64_t sub_1A486DAE0()
{
  result = qword_1EB143D48;
  if (!qword_1EB143D48)
  {
    type metadata accessor for StoryViewCurationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143D48);
  }

  return result;
}

uint64_t sub_1A486DB38(uint64_t a1, uint64_t a2)
{
  sub_1A3EBD0AC(0, a2);
  result = sub_1A524DEE4();
  qword_1EB1DB988 = result;
  return result;
}

uint64_t *sub_1A486DB9C()
{
  if (qword_1EB1DB980 != -1)
  {
    swift_once();
  }

  return &qword_1EB1DB988;
}

id static OS_os_log.sharePlay.getter()
{
  if (qword_1EB1DB980 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1DB988;

  return v1;
}

id sub_1A486DC48(uint64_t a1, uint64_t a2)
{
  result = PFOSVariantHasInternalUI();
  if (result)
  {
    sub_1A3C7E8B0(0, v3);
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    v5 = [v4 enablePhototypes];

    return v5;
  }

  return result;
}

uint64_t sub_1A486DCA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A486DE58(uint64_t a1, uint64_t a2)
{
  LOBYTE(v2[0]) = 0;
  PhototypeContext.init(kind:photoLibrary:selectedAssets:containerAssets:)(v2, *(a2 + 16), 0, 0, v4);
  LOBYTE(v2[0]) = v4[0];
  v2[1] = v5;
  v3 = v6;
  sub_1A43C7E00(v2);
}

uint64_t sub_1A486DEEC(uint64_t a1)
{
  v1 = MEMORY[0x1E69C2250];
  sub_1A486E20C(0, &qword_1EB124DF0, MEMORY[0x1E69C2250]);
  sub_1A486E1C8(&qword_1EB143D50, &qword_1EB124DF0, v1, &protocol conformance descriptor for <> PhotosObservableBasicItem<A>);

  return sub_1A5243E44();
}

unint64_t sub_1A486DFC0(uint64_t a1)
{
  v2 = sub_1A486E494(&qword_1EB125710, type metadata accessor for LemonadePhototypesFeature.ShelfProvider, &unk_1A536ACEC);

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A486E02C@<X0>(void *a1@<X8>)
{
  *a1 = 0x7079746F746F6870;
  a1[1] = 0xEA00000000007365;
  v1 = a1 + *(type metadata accessor for LemonadePhototypesFeature(0) + 20);
  *v1 = 0x7079746F746F6850;
  *(v1 + 1) = 0xEA00000000007365;
  v1[16] = 0;
  v2 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
  return sub_1A42E7E24(0, 1, 1, &v1[*(v2 + 24)]);
}

unint64_t sub_1A486E0B0()
{
  result = qword_1EB143D58;
  if (!qword_1EB143D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143D58);
  }

  return result;
}

uint64_t sub_1A486E104(uint64_t a1)
{
  result = sub_1A486E494(&qword_1EB125718, type metadata accessor for LemonadePhototypesFeature.ShelfProvider, &unk_1A536AD08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A486E1C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A486E20C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A486E20C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A43C8784(255, &qword_1EB124A88, off_1E7721230);
    v7 = v6;
    v8 = sub_1A43C8610();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A486E298()
{
  result = qword_1EB143D60;
  if (!qword_1EB143D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143D60);
  }

  return result;
}

uint64_t sub_1A486E43C(uint64_t a1)
{
  result = sub_1A486E494(&qword_1EB125708, type metadata accessor for LemonadePhototypesFeature, &unk_1A536AD40);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A486E494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A486E53C(uint64_t a1)
{
  if (!qword_1EB143D70)
  {
    v1 = MEMORY[0x1E69C2250];
    sub_1A486E20C(255, &qword_1EB124DF0, MEMORY[0x1E69C2250]);
    sub_1A486E1C8(&qword_1EB143D50, &qword_1EB124DF0, v1, &protocol conformance descriptor for <> PhotosObservableBasicItem<A>);
    v2 = sub_1A5243E34();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143D70);
    }
  }
}

uint64_t sub_1A486E5F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_1A486FC78(0);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = (v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView(0);
  MEMORY[0x1EEE9AC00](v50);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E697F948];
  sub_1A486FBD4(0, &qword_1EB143DF8, sub_1A486FB8C, sub_1A486FC78, MEMORY[0x1E697F948]);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v51 = v46 - v9;
  sub_1A486FBD4(0, &qword_1EB143E00, type metadata accessor for GenerativeStoryHeaderAndSuggestionView, type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView, v7);
  v55 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v46 - v12;
  sub_1A486FB8C(0, v11);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4870710(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (v46 - v18);
  v20 = type metadata accessor for GenerativeStoryPromptSuggestionView(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v48 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = (*(**a1 + 384))(v24);
  if ((v27 - 1) < 2)
  {
    sub_1A487049C(a1, v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryPromptSuggestionView);
    v28 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v29 = swift_allocObject();
    sub_1A48703CC(v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for GenerativeStoryPromptSuggestionView);
    *v6 = v26;
    v6[1] = sub_1A4870504;
    v6[2] = v29;
    v30 = v50;
    v31 = *(v50 + 24);
    *(v6 + v31) = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(v30 + 28)) = 3;
    sub_1A487049C(v6, v13, type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView);
    swift_storeEnumTagMultiPayload();
    sub_1A4870160(&qword_1EB125140, type metadata accessor for GenerativeStoryHeaderAndSuggestionView, &unk_1A533FDA0);
    sub_1A48701A8();

    sub_1A5249744();
    sub_1A487049C(v16, v51, sub_1A486FB8C);
    swift_storeEnumTagMultiPayload();
    sub_1A48700B0(v32);
    sub_1A4870160(&qword_1EB143DD8, sub_1A486FC78, MEMORY[0x1E6981870]);
    sub_1A5249744();
    sub_1A487051C(v16, sub_1A486FB8C);
    v33 = type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView;
    v34 = v6;
    return sub_1A487051C(v34, v33);
  }

  v46[1] = v23;
  v47 = v16;
  if (v27)
  {
    v43 = sub_1A5249574();
    v39 = v49;
    *v49 = v43;
    *(v39 + 8) = 0;
    *(v39 + 16) = 1;
    sub_1A4870434(0);
    sub_1A486EECC(a1, v39 + *(v44 + 44));
    sub_1A487049C(v39, v51, sub_1A486FC78);
    swift_storeEnumTagMultiPayload();
    sub_1A48700B0(v45);
    sub_1A4870160(&qword_1EB143DD8, sub_1A486FC78, MEMORY[0x1E6981870]);
    sub_1A5249744();
    v42 = sub_1A486FC78;
    goto LABEL_7;
  }

  result = (*(*v26 + 1624))();
  if (result)
  {
    v36 = result;
    sub_1A487049C(a1, v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryPromptSuggestionView);
    v37 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v38 = swift_allocObject();
    sub_1A48703CC(v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37, type metadata accessor for GenerativeStoryPromptSuggestionView);
    sub_1A4489654(v19);
    v39 = v48;
    sub_1A4489674(v19, v36, 1, sub_1A4870504, v38, v48);
    sub_1A487049C(v39, v13, type metadata accessor for GenerativeStoryHeaderAndSuggestionView);
    swift_storeEnumTagMultiPayload();
    sub_1A4870160(&qword_1EB125140, type metadata accessor for GenerativeStoryHeaderAndSuggestionView, &unk_1A533FDA0);
    sub_1A48701A8();
    v40 = v47;
    sub_1A5249744();
    sub_1A487049C(v40, v51, sub_1A486FB8C);
    swift_storeEnumTagMultiPayload();
    sub_1A48700B0(v41);
    sub_1A4870160(&qword_1EB143DD8, sub_1A486FC78, MEMORY[0x1E6981870]);
    sub_1A5249744();
    sub_1A487051C(v40, sub_1A486FB8C);
    v42 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView;
LABEL_7:
    v33 = v42;
    v34 = v39;
    return sub_1A487051C(v34, v33);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A486EECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeStoryPromptSuggestionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v21 - v12);
  v14 = *sub_1A4493250();
  v15 = *a1;
  sub_1A487049C(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryPromptSuggestionView);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1A48703CC(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GenerativeStoryPromptSuggestionView);
  *v13 = v15;
  v13[1] = sub_1A4870504;
  v13[2] = v17;
  v18 = *(v8 + 32);
  *(v13 + v18) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  *(v13 + *(v8 + 36)) = 3;
  sub_1A487049C(v13, v10, type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView);
  *a2 = v14;
  *(a2 + 8) = 0;
  sub_1A486FD40(0);
  sub_1A487049C(v10, a2 + *(v19 + 48), type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView);

  sub_1A487051C(v13, type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView);
  return sub_1A487051C(v10, type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView);
}

uint64_t sub_1A486F12C(uint64_t a1, uint64_t *a2)
{
  sub_1A43C7D38(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4499C00(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeStorySuggestion(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487049C(a1, v9, sub_1A4499C00);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v14 = sub_1A4499C00;
    v15 = v9;
  }

  else
  {
    sub_1A48703CC(v9, v13, type metadata accessor for GenerativeStorySuggestion);
    if (sub_1A417DA90())
    {
      v16 = *a2;
      (*(*v16 + 2136))(*(v13 + 2));
      v17 = sub_1A417DA38();
      v19 = v18;
      v20 = sub_1A5244854();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      (*(*v16 + 1896))(v17, v19, v6);

      sub_1A487051C(v6, sub_1A43C7D38);
      (*(*v16 + 592))(0);
    }

    v14 = type metadata accessor for GenerativeStorySuggestion;
    v15 = v13;
  }

  return sub_1A487051C(v15, v14);
}

void sub_1A486F444(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeStorySuggestionsView(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4870318(0);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48703A4(0);
  v49 = v11;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = *(*v14 + 1624);
  v47 = v14;
  v16 = v15(v12);
  if (v16)
  {
    v17 = v16;
    v18 = v2[2];
    v46 = v2[1];
    v19 = *(v2 + *(type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView(0) + 28));

    sub_1A3D61808(v6);
    v20 = sub_1A4492800(v6);
    v21 = *(v4 + 8);
    v21(v6, v3);
    sub_1A49ED614(v17, v46, v18, v19, 1, v53, v20);
    sub_1A3D61808(v6);
    sub_1A4496374(v6);
    v21(v6, v3);
    sub_1A524BC74();
  }

  else
  {
    __break(1u);
    v43 = sub_1A524D254();
    v44 = sub_1A524A014();
    sub_1A5246DF4(v43, &dword_1A3C1C000, v44, "Contradictory frame constraints specified.", 42, 2, MEMORY[0x1E69E7CC0]);
  }

  sub_1A5248AD4();
  v22 = v50;
  sub_1A48703CC(v53, v50, type metadata accessor for GenerativeStorySuggestionsView);
  v23 = (v22 + *(v48 + 36));
  v24 = v59;
  v23[4] = v58;
  v23[5] = v24;
  v23[6] = v60;
  v25 = v55;
  *v23 = v54;
  v23[1] = v25;
  v26 = v57;
  v23[2] = v56;
  v23[3] = v26;
  v27 = sub_1A524A054();
  sub_1A4491F00();
  sub_1A5247BC4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v51;
  v37 = sub_1A48703CC(v22, v51, sub_1A4870318);
  v38 = v47;
  v39 = v36 + *(v49 + 36);
  *v39 = v27;
  *(v39 + 8) = v29;
  *(v39 + 16) = v31;
  *(v39 + 24) = v33;
  *(v39 + 32) = v35;
  *(v39 + 40) = 0;
  if ((*(*v38 + 584))(v37))
  {
    v40 = 1.0;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = v52;
  sub_1A48703CC(v36, v52, sub_1A48703A4);
  sub_1A4870340(0, &qword_1EB143DF0, sub_1A48703A4, MEMORY[0x1E697E5C8]);
  *(v41 + *(v42 + 36)) = v40;
}

uint64_t sub_1A486F920@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for GenerativeStoryPromptSuggestionView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A3E71AC8(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A486F984(uint64_t a1@<X8>)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A486E5F0(v1, a1);
  v7 = sub_1A524A084();
  sub_1A3D61808(v6);
  sub_1A4497E88(v6);
  (*(v4 + 8))(v6, v3);
  sub_1A5247BC4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1A4870340(0, &qword_1EB143D78, sub_1A486FAF0, MEMORY[0x1E697E5E0]);
  v17 = a1 + *(v16 + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
}

void sub_1A486FAF0(uint64_t a1, double a2)
{
  if (!qword_1EB143D80)
  {
    sub_1A486FBD4(255, &qword_1EB143D88, sub_1A486FB8C, sub_1A486FC78, MEMORY[0x1E697F960]);
    v2 = sub_1A524B514();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143D80);
    }
  }
}

void sub_1A486FBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A486FC78(uint64_t a1)
{
  if (!qword_1EB143D98)
  {
    sub_1A486FD0C(255);
    sub_1A4870160(&qword_1EB143DB0, sub_1A486FD0C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143D98);
    }
  }
}

void sub_1A486FD40(uint64_t a1)
{
  if (!qword_1EB143DA8)
  {
    type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143DA8);
    }
  }
}

void sub_1A486FDEC(uint64_t a1)
{
  type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A4870710(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A486FEA0()
{
  result = qword_1EB143DB8;
  if (!qword_1EB143DB8)
  {
    sub_1A4870340(255, &qword_1EB143D78, sub_1A486FAF0, MEMORY[0x1E697E5E0]);
    sub_1A486FF44(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143DB8);
  }

  return result;
}

unint64_t sub_1A486FF44(double a1)
{
  result = qword_1EB143DC0;
  if (!qword_1EB143DC0)
  {
    sub_1A486FAF0(255, a1);
    sub_1A486FFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143DC0);
  }

  return result;
}

unint64_t sub_1A486FFBC()
{
  result = qword_1EB143DC8;
  if (!qword_1EB143DC8)
  {
    sub_1A486FBD4(255, &qword_1EB143D88, sub_1A486FB8C, sub_1A486FC78, MEMORY[0x1E697F960]);
    sub_1A48700B0(v1);
    sub_1A4870160(&qword_1EB143DD8, sub_1A486FC78, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143DC8);
  }

  return result;
}

unint64_t sub_1A48700B0(double a1)
{
  result = qword_1EB143DD0;
  if (!qword_1EB143DD0)
  {
    sub_1A486FB8C(255, a1);
    sub_1A4870160(&qword_1EB125140, type metadata accessor for GenerativeStoryHeaderAndSuggestionView, &unk_1A533FDA0);
    sub_1A48701A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143DD0);
  }

  return result;
}

uint64_t sub_1A4870160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A48701A8()
{
  result = qword_1EB160B50[0];
  if (!qword_1EB160B50[0])
  {
    type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB160B50);
  }

  return result;
}

void sub_1A4870228(uint64_t a1)
{
  type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A3C3637C();
    if (v2 <= 0x3F)
    {
      sub_1A4870710(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4870340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A48703CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4870434(uint64_t a1)
{
  if (!qword_1EB143E08)
  {
    sub_1A486FD0C(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143E08);
    }
  }
}

uint64_t sub_1A487049C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A487051C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_82()
{
  v1 = (type metadata accessor for GenerativeStoryPromptSuggestionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A487068C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GenerativeStoryPromptSuggestionView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_1A4870710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A4870774()
{
  result = qword_1EB143E10;
  if (!qword_1EB143E10)
  {
    sub_1A4870340(255, &qword_1EB143DF0, sub_1A48703A4, MEMORY[0x1E697E5C8]);
    sub_1A4870818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143E10);
  }

  return result;
}

unint64_t sub_1A4870818()
{
  result = qword_1EB143E18;
  if (!qword_1EB143E18)
  {
    sub_1A48703A4(255);
    sub_1A4870898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143E18);
  }

  return result;
}

unint64_t sub_1A4870898()
{
  result = qword_1EB143E20;
  if (!qword_1EB143E20)
  {
    sub_1A4870318(255);
    sub_1A4870160(&qword_1EB143E28, type metadata accessor for GenerativeStorySuggestionsView, &unk_1A537B918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143E20);
  }

  return result;
}

uint64_t sub_1A4870948@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A48709E0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22LemonadeFeatureLibrary___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DB74(&qword_1EB12A138, type metadata accessor for LemonadeFeatureLibrary, &unk_1A536AF94);
  sub_1A52415F4();

  v4[7] = sub_1A3F2894C(v4);
  return sub_1A4870B30;
}

uint64_t sub_1A4870B3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4870BD4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22LemonadeFeatureLibrary___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DB74(&qword_1EB12A138, type metadata accessor for LemonadeFeatureLibrary, &unk_1A536AF94);
  sub_1A52415F4();

  v4[7] = sub_1A4197328(v4);
  return sub_1A4870D24;
}

uint64_t sub_1A4870D30()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C531C8(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = (EnumCaseMultiPayload > 0x11) | (0xEBFFu >> EnumCaseMultiPayload);
  sub_1A3C53E7C(v3);
  return v5 & 1;
}

uint64_t sub_1A4870DDC()
{
  sub_1A3C53294(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v0) = (*(v1 + 48))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v0 & 1;
}

uint64_t sub_1A4870E50(uint64_t a1, uint64_t a2)
{
  sub_1A3C64718(v7);
  v4 = v8;
  if (!v8)
  {
    return sub_1A3C6520C(v7, &qword_1EB132808, &qword_1EB132810, &protocol descriptor for LemonadeShelfProvider, 1);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 320))(a1, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1A4870F04@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C3EF40(*(v1 + 16), 1, v8);
  v3 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v9;
  v4 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v4;
  v5 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_1A4870FC0()
{
  v8 = MEMORY[0x1E69E7CC0];
  sub_1A3C540A4(0);
  v1 = *(type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F8E10;
  v4 = *(v0 + 16);
  sub_1A444B7B0(v4, (v3 + v2));
  swift_storeEnumTagMultiPayload();
  sub_1A3C54144(v3);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F8E10;
  sub_1A47E13B0(v4, (v5 + v2));
  swift_storeEnumTagMultiPayload();
  sub_1A3C54144(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  sub_1A477F81C(v4, v6 + v2);
  swift_storeEnumTagMultiPayload();
  sub_1A3C54144(v6);
  return v8;
}

unint64_t sub_1A48711B8()
{
  result = qword_1EB143E50;
  if (!qword_1EB143E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143E50);
  }

  return result;
}

uint64_t LemonadeWallpaperEditorConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A48711B8();
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A4871268()
{
  sub_1A524EC94();
  sub_1A48711B8();
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A4871310(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A48711B8();
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

void **sub_1A4871374(void **a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v88 = sub_1A5240CB4();
  v2 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  sub_1A40FCB18(*a1);
  v14 = objc_opt_self();
  v91 = v13;
  v15 = sub_1A5240D44();
  v101 = 0;
  v16 = [v14 loadFromURL:v15 error:&v101];

  v17 = v101;
  if (v16)
  {
    v18 = v101;
    PXCreateMutablePosterConfigurationForLockScreenRole();
    v20 = v19;
    v21 = sub_1A524C634();
    v94 = v20;
    [v20 setDisplayNameLocalizationKey_];

    v22 = [objc_allocWithZone(MEMORY[0x1E69C07E8]) initWithConfigurationType_];
    [v22 setOptions_];
    v23 = [v16 media];
    if (!v23)
    {
      sub_1A3C52C70(0, &qword_1EB126C50, 0x1E69C0808);
      sub_1A524CA34();
      v23 = sub_1A524CA14();
    }

    [v22 setMedia_];

    v24 = [v94 assetDirectory];
    v25 = v92;
    sub_1A5240DE4();

    v26 = sub_1A5240D44();
    v27 = v5 + 8;
    v90 = *(v5 + 8);
    v90(v25, v4);
    v101 = 0;
    LODWORD(v25) = [v22 saveToURL:v26 error:&v101];

    v28 = v101;
    if (!v25)
    {
      goto LABEL_22;
    }

    v29 = objc_opt_self();
    v30 = v28;
    v89 = [v29 defaultManager];
    v31 = [v16 media];
    sub_1A3C52C70(0, &qword_1EB126C50, 0x1E69C0808);
    v32 = sub_1A524CA34();

    v76 = v16;
    v75 = v22;
    if (v32 >> 62)
    {
LABEL_18:
      v33 = sub_1A524E2B4();
      if (v33)
      {
LABEL_7:
        v34 = 0;
        v85 = v32 & 0xC000000000000001;
        v84 = v32 & 0xFFFFFFFFFFFFFF8;
        v79 = *MEMORY[0x1E6968F58];
        v78 = (v2 + 104);
        v77 = (v2 + 8);
        v83 = v27;
        v82 = v4;
        v81 = v32;
        v80 = v33;
        while (1)
        {
          if (v85)
          {
            v35 = MEMORY[0x1A59097F0](v34, v32);
            v36 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (v34 >= *(v84 + 16))
            {
              goto LABEL_17;
            }

            v35 = *(v32 + 8 * v34 + 32);
            v36 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
LABEL_16:
              __break(1u);
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          v98 = v34;
          v99 = v36;
          v37 = v35;
          v38 = [v35 subpath];
          v39 = sub_1A524C674();
          v41 = v40;

          v101 = v39;
          v102 = v41;
          v97 = *v78;
          v42 = v87;
          v43 = v88;
          v44 = v79;
          v97(v87, v79, v88);
          v96 = sub_1A3D5F9DC();
          sub_1A5240E44();
          v95 = *v77;
          v95(v42, v43);

          v45 = [v94 assetDirectory];
          v46 = v92;
          sub_1A5240DE4();

          v47 = v37;
          v48 = [v37 subpath];
          v49 = sub_1A524C674();
          v51 = v50;

          v101 = v49;
          v102 = v51;
          v97(v42, v44, v43);
          v52 = v82;
          v53 = v83;
          v54 = v86;
          sub_1A5240E44();
          v95(v42, v43);
          v55 = v93;

          v4 = v52;
          v27 = v53;
          v56 = v90;
          v90(v46, v52);
          v57 = sub_1A5240D44();
          v58 = sub_1A5240D44();
          v101 = 0;
          v2 = [v89 copyItemAtURL:v57 toURL:v58 error:&v101];

          if (!v2)
          {
            break;
          }

          v59 = v101;

          v56(v54, v4);
          v56(v55, v4);
          v34 = v98 + 1;
          v32 = v81;
          if (v99 == v80)
          {
            goto LABEL_19;
          }
        }

        v17 = v101;
        sub_1A5240B84();

        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_7;
      }
    }

LABEL_19:

    v60 = PXCreateWallpaperPosterEditingEntryPoint(@"com.apple.PhotosUIPrivate.PhotosPosterProvider", v94);
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(&v101, v103);
    v61 = sub_1A524EA94();
    v62 = PXCreateWallpaperPosterInlineEditingViewController(v61);
    swift_unknownObjectRelease();
    v63 = objc_allocWithZone(type metadata accessor for EditorWrapperViewController(0));
    *&v63[qword_1EB143E60] = v62;
    sub_1A4872708(0);
    v100.receiver = v63;
    v100.super_class = v64;
    v65 = v62;
    v66 = objc_msgSendSuper2(&v100, sel_initWithNibName_bundle_, 0, 0);
    v67 = v65;
    v68 = v66;
    [v68 addChildViewController_];
    [v67 didMoveToParentViewController_];

    [v67 setDelegate_];
    swift_unknownObjectRelease();

    v90(v91, v4);
    __swift_destroy_boxed_opaque_existential_0(&v101);
    return v68;
  }

LABEL_21:
  v70 = v17;
  v71 = sub_1A5240B84();

  swift_willThrow();
  v101 = 0;
  v102 = 0xE000000000000000;
  sub_1A524E404();

  v101 = 0xD000000000000030;
  v102 = 0x80000001A53EF180;
  sub_1A3F6D3EC();
  v72 = sub_1A524EA44();
  v28 = v73;
  MEMORY[0x1A5907B60](v72);

  sub_1A524E6E4();
  __break(1u);
LABEL_22:
  v74 = v28;
  sub_1A5240B84();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_1A4871D90(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[qword_1EB143E60] = a1;
  sub_1A4872708(0);
  v10.receiver = v3;
  v10.super_class = v4;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  v7 = v5;
  v8 = v6;
  [v8 addChildViewController_];
  [v7 didMoveToParentViewController_];

  [v7 setDelegate_];
  return v8;
}

void **sub_1A4871E64()
{
  v3 = *v0;
  swift_unknownObjectRetain();
  v1 = sub_1A4871374(&v3);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1A4871EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A48729D8();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4871F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A48729D8();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4871F78(uint64_t a1)
{
  sub_1A48729D8();
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A4871FA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  *(v4 + qword_1EB143E60) = a1;
  v8 = type metadata accessor for ViewControllerWrapper(0, *((v7 & v6) + 0x50), a3, a4);
  v14.receiver = v4;
  v14.super_class = v8;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  v11 = v9;
  v12 = v10;
  [v12 addChildViewController_];
  [v11 didMoveToParentViewController_];

  return v12;
}

uint64_t sub_1A48720E0(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v6.receiver = v1;
    v6.super_class = type metadata accessor for EditorWrapperViewController(0);
    v4 = objc_msgSendSuper2(&v6, sel_supportedInterfaceOrientations);
  }

  else
  {

    return 2;
  }

  return v4;
}

uint64_t sub_1A4872178(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v6.receiver = v1;
    v6.super_class = type metadata accessor for EditorWrapperViewController(0);
    v4 = objc_msgSendSuper2(&v6, sel_preferredInterfaceOrientationForPresentation);
  }

  else
  {

    return 1;
  }

  return v4;
}

id sub_1A4872210()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorWrapperViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A48722D0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = [*&v0[qword_1EB143E60] view];
  if (v2)
  {
    [v1 bounds];
    [v2 setFrame_];
    [v1 addSubview_];
    [v0 setView_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A487239C(void *a1)
{
  v1 = a1;
  sub_1A48722D0();
}

id sub_1A48723E4(void *a1)
{
  v1 = a1;
  sub_1A487245C();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1A524C634();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1A487245C()
{
  v1 = [*(v0 + qword_1EB143E60) title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1A524C674();

  return v3;
}

void sub_1A48724CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1A524C674();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v8 = a1;
  sub_1A487254C(v4, v6, v7);
}

void sub_1A487254C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(v3 + qword_1EB143E60);
  if (a2)
  {
    v5 = sub_1A524C634();
  }

  else
  {
    v5 = 0;
  }

  [v4 setTitle_];
}

id sub_1A48725C4()
{
  v0 = sub_1A3D25994();

  return v0;
}

void sub_1A48725F8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1A4872854();
}

id sub_1A4872650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ViewControllerWrapper(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t type metadata accessor for EditorWrapperViewController(uint64_t a1)
{
  result = qword_1EB1DBAC0;
  if (!qword_1EB1DBAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4872708(uint64_t a1)
{
  if (!qword_1EB143E68)
  {
    v2 = sub_1A4872760();
    v5 = type metadata accessor for ViewControllerWrapper(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB143E68);
    }
  }
}

unint64_t sub_1A4872760()
{
  result = qword_1EB143E70;
  if (!qword_1EB143E70)
  {
    sub_1A3C52C70(255, &qword_1EB126B10, 0x1E69DD258);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB143E70);
  }

  return result;
}

unint64_t sub_1A4872888()
{
  result = qword_1EB143EE0;
  if (!qword_1EB143EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143EE0);
  }

  return result;
}

unint64_t sub_1A48728E0()
{
  result = qword_1EB129318;
  if (!qword_1EB129318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129318);
  }

  return result;
}

unint64_t sub_1A48729D8()
{
  result = qword_1EB143F48;
  if (!qword_1EB143F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143F48);
  }

  return result;
}

double sub_1A4872AD8()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  return v0[2];
}

void sub_1A4872B58(double a1)
{
  swift_beginAccess();
  if (v1[2] == a1)
  {
    v1[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v4);
  }
}

uint64_t (*sub_1A4872C5C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A4872DAC;
}

uint64_t type metadata accessor for LemonadeFeedSpec(uint64_t a1)
{
  result = qword_1EB18B480;
  if (!qword_1EB18B480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4872EA8(uint64_t a1, uint64_t a2)
{
  sub_1A3C39450(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C794D4(a1, v6);
  return (*(**a2 + 232))(v6);
}

uint64_t sub_1A4872F54@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 544))();

  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs;
  swift_beginAccess();
  return sub_1A3C794D4(v1 + v3, a1);
}

uint64_t sub_1A4872FF0(uint64_t a1)
{
  sub_1A3C39450(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs;
  swift_beginAccess();
  sub_1A3C794D4(v1 + v6, v5);
  v7 = sub_1A4875820(v5, a1);
  sub_1A4876310(v5, sub_1A3C39450);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 552))(v9);
  }

  else
  {
    sub_1A3C794D4(a1, v5);
    swift_beginAccess();
    sub_1A4875B0C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1A4876310(a1, sub_1A3C39450);
}

uint64_t sub_1A48731B8(uint64_t a1, uint64_t a2)
{
  sub_1A3C39450(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C794D4(a2, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs;
  swift_beginAccess();
  sub_1A4875B0C(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t (*sub_1A487326C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4872E04(v4);
  return sub_1A48733BC;
}

void *sub_1A4873428@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A487348C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 280))(&v4);
}

double sub_1A4873500(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__zoomLevel;
  swift_beginAccess();
  sub_1A4188660();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v6);
  }

  return result;
}

uint64_t (*sub_1A4873638(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A48733C8(v4);
  return sub_1A4873788;
}

void sub_1A48737F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 320))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double sub_1A48738A0()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSafeAreaInsets;
  swift_beginAccess();
  return *v1;
}

double sub_1A4873930(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v12 = a3.n128_u64[0];
  v13 = a4.n128_f64[0];
  v10 = a1.n128_u64[0];
  v11 = a2.n128_u64[0];
  v5 = v4 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSafeAreaInsets;
  swift_beginAccess();
  *&v6.f64[0] = v10;
  *&v6.f64[1] = v11;
  *&v7.f64[0] = v12;
  v7.f64[1] = v13;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v6), vceqq_f64(*(v5 + 16), v7)))))
  {
    *v5 = v10;
    *(v5 + 8) = v11;
    result = v13;
    *(v5 + 16) = v12;
    *(v5 + 24) = v13;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 552))();
  }

  return result;
}

uint64_t (*sub_1A4873A78(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4873794(v4);
  return sub_1A4873BC8;
}

double sub_1A4873CD8()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSize;
  swift_beginAccess();
  return *v1;
}

void sub_1A4873D64(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSize);
  swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 552))(v8);
  }
}

uint64_t (*sub_1A4873E7C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4873BD4(v4);
  return sub_1A4873FCC;
}

void *sub_1A4874038@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 416))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A487409C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 424))(&v4);
}

void sub_1A48740FC(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 544))();

  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___horizontalSizeClass;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

double sub_1A4874194(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___horizontalSizeClass;
  swift_beginAccess();
  sub_1A3F17D14();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v6);
  }

  return result;
}

uint64_t (*sub_1A48742CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4873FD8(v4);
  return sub_1A487441C;
}

void *sub_1A4874488@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 464))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A48744EC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 472))(&v4);
}

void sub_1A4874560(uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  (*(*v3 + 544))();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v3 + v6);
}

double sub_1A48745F0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___verticalSizeClass;
  swift_beginAccess();
  sub_1A4188350();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v6);
  }

  return result;
}

uint64_t (*sub_1A4874728(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4874428(v4);
  return sub_1A4874878;
}

void *sub_1A48748E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A4874948(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 520))(&v4);
}

void sub_1A48749A8(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 544))();

  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___orientation;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

double sub_1A4874A40(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___orientation;
  swift_beginAccess();
  sub_1A41883A8();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v6);
  }

  return result;
}

uint64_t (*sub_1A4874B78(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4874884(v4);
  return sub_1A4874CC8;
}

uint64_t LemonadeFeedSpec.__allocating_init()()
{
  v0 = swift_allocObject();
  LemonadeFeedSpec.init()();
  return v0;
}

uint64_t LemonadeFeedSpec.init()()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs;
  v2 = sub_1A5244084();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__zoomLevel) = *sub_1A44DAFD8();
  v3 = (v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSafeAreaInsets);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSize);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___horizontalSizeClass) = 2;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___verticalSizeClass) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___orientation) = 1;
  sub_1A5241604();
  return v0;
}

uint64_t LemonadeFeedSpec.deinit()
{
  sub_1A4876310(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs, sub_1A3C39450);
  v1 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeFeedSpec.__deallocating_deinit()
{
  sub_1A4876310(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs, sub_1A3C39450);
  v1 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void (*sub_1A48750D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 384))();
  return sub_1A3E62A10;
}

void (*sub_1A48751C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 336))();
  return sub_1A3E658B0;
}

void (*sub_1A48752D8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 432))();
  return sub_1A3E658B0;
}

void (*sub_1A48753F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 480))();
  return sub_1A3E658B0;
}

void (*sub_1A4875508(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 528))();
  return sub_1A3E658B0;
}

uint64_t sub_1A4875820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244084();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C39450(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48762AC(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1A3C794D4(a1, v13);
  sub_1A3C794D4(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A3C794D4(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1A4876370(&qword_1EB143F58, MEMORY[0x1E69C2948], MEMORY[0x1E69C2950]);
      v18 = sub_1A524C594();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1A4876310(v13, sub_1A3C39450);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A4876310(v13, sub_1A48762AC);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A4876310(v13, sub_1A3C39450);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A4875B0C(uint64_t a1, uint64_t a2)
{
  sub_1A3C39450(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_1A4875BBC()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSafeAreaInsets);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *v1 = v4;
  v1[1] = v3;
  return result;
}

void sub_1A4875C20()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSize);
  swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
}

void sub_1A4875CC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___orientation;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1A4875D1C(uint64_t a1)
{
  result = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
  *(a1 + 8) = result;
  return result;
}

void sub_1A4875D7C(uint64_t a1)
{
  sub_1A3C39450(319);
  if (v1 <= 0x3F)
  {
    sub_1A5241614();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A48762AC(uint64_t a1)
{
  if (!qword_1EB143F50)
  {
    sub_1A3C39450(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143F50);
    }
  }
}

uint64_t sub_1A4876310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4876370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A48763B8()
{
  sub_1A477F754();
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  qword_1EB1EB0B8 = result;
  return result;
}

uint64_t *sub_1A48763F4()
{
  if (qword_1EB175710 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB0B8;
}

BOOL static PXPhotosDetailsNavigationSettings.canEnableZoomBounce.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 != 1;
}

id sub_1A48768D4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useZoomTransition];
  *a2 = result;
  return result;
}

id sub_1A487691C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 customZoomTransitionDimming];
  *a2 = result;
  return result;
}

id sub_1A4876964@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomTransitionDimmingWhite];
  *a2 = v4;
  return result;
}

id sub_1A48769AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomTransitionDimmingOpacity];
  *a2 = v4;
  return result;
}

id sub_1A48769F4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 customZoomTransitionDimmingBlurEffect];
  *a2 = result;
  return result;
}

id sub_1A4876A3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomTransitionDimmingBlurEffectStyle];
  *a2 = result;
  return result;
}

id sub_1A4876A84@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useSystemSwipeToDismiss];
  *a2 = result;
  return result;
}

id sub_1A4876ACC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ensureOpaqueDestination];
  *a2 = result;
  return result;
}

id sub_1A4876B14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useDebugColors];
  *a2 = result;
  return result;
}

id sub_1A4876B5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showDebugOverlays];
  *a2 = result;
  return result;
}

id sub_1A4876BA4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowZoomBounce];
  *a2 = result;
  return result;
}

id sub_1A4876BEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomBounceScale];
  *a2 = v4;
  return result;
}

id sub_1A4876C34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomBounceDelay];
  *a2 = v4;
  return result;
}

id sub_1A4876C7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomBounceRefractoryPeriod];
  *a2 = v4;
  return result;
}

id sub_1A4876CC4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowScreenEdgeSwipeToDismiss];
  *a2 = result;
  return result;
}

id sub_1A4876D0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenEdgeSwipeForegroundInset];
  *a2 = v4;
  return result;
}

id sub_1A4876D54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenEdgeSwipeSlideDownDuration];
  *a2 = v4;
  return result;
}

id sub_1A4876D9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenEdgeSwipeInteractionRelativeDistance];
  *a2 = v4;
  return result;
}

id sub_1A4876DE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenEdgeSwipeInteractiveFraction];
  *a2 = v4;
  return result;
}

id sub_1A4876E2C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 workAround123679412];
  *a2 = result;
  return result;
}

id sub_1A4876E74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowZoomFromSheets];
  *a2 = result;
  return result;
}

id sub_1A4876EBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 workAround125263280];
  *a2 = result;
  return result;
}

char *sub_1A4876F50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A4876F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A4876F70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A48785F0(0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1A48781A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A48785A0(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A48782C8(void *a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  v2 = a1[2];
  sub_1A3F41E2C(v2, 0);
  sub_1A4876F50(0, v2, 0);
  if (v2)
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = *(v8 + 16);
    if (v5)
    {
      v6 = (v8 + 40);
      do
      {
        v7 = *(v6 - 1) == v4 && *v6 == v3;
        if (v7 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A4878488(uint64_t a1)
{
  if (!qword_1EB143F60)
  {
    type metadata accessor for Style(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143F60);
    }
  }
}

unint64_t sub_1A4878518()
{
  result = qword_1EB143F68;
  if (!qword_1EB143F68)
  {
    type metadata accessor for Style(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143F68);
  }

  return result;
}

void sub_1A48785A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A48785F0(uint64_t a1)
{
  if (!qword_1EB143F70)
  {
    type metadata accessor for Style(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143F70);
    }
  }
}

uint64_t sub_1A487864C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  v8 = MEMORY[0x1E697DCB8];
  sub_1A48788AC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for LemonadeNavigationDestinationView(0);
  v10 = a4 + v9[5];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v9[6];
  *(a4 + v11) = swift_getKeyPath();
  sub_1A48788AC(0, &qword_1EB128A50, MEMORY[0x1E697E730], v8);
  swift_storeEnumTagMultiPayload();
  v12 = v9[7];
  *(a4 + v12) = swift_getKeyPath();
  sub_1A48788AC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v8);
  swift_storeEnumTagMultiPayload();
  v13 = v9[11];
  sub_1A488AC98(a1, a4 + v9[9], type metadata accessor for LemonadeNavigationDestination);
  *(a4 + v9[10]) = a2;
  *(a4 + v13) = a3;
  type metadata accessor for PhotosNavigationItemPaletteContentContainer(0);
  sub_1A5247C74();
  return sub_1A488B2CC(a1, type metadata accessor for LemonadeNavigationDestination);
}

uint64_t sub_1A487882C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosNavigationItemPaletteContentContainer(0);
  result = sub_1A425DAA4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LemonadeNavigationDestinationView(uint64_t a1)
{
  result = qword_1EB17B6E0;
  if (!qword_1EB17B6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A48788AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4878910(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = type metadata accessor for LemonadeNavigationDestinationView(0);
  v4 = v3 - 8;
  v20 = *(v3 - 8);
  v19[8] = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v19[7] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52425F4();
  v19[4] = *(v6 - 8);
  v19[5] = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4878E04(0);
  v19[3] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487AB5C(0);
  v19[6] = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1A487D2A4(v9);
  v19[2] = *(v4 + 44);
  v11 = sub_1A418E6A4();
  v12 = sub_1A524A064();
  sub_1A4878FA0(0);
  v14 = &v9[*(v13 + 36)];
  *v14 = v11;
  v14[8] = v12;
  KeyPath = swift_getKeyPath();
  v16 = *(v2 + *(v4 + 48));
  sub_1A4878F58(0);
  v18 = &v9[*(v17 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19[1] = swift_getKeyPath();
  sub_1A48797F8(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);

  sub_1A4654ADC();
  sub_1A4878ED4(0, &qword_1EB143F88, sub_1A4878F58, sub_1A3D63A24, MEMORY[0x1E697E830]);
  sub_1A3D63A24(0);
  sub_1A3EED838();
  sub_1A52459A4();
}

void sub_1A4878E04(uint64_t a1)
{
  if (!qword_1EB143F80)
  {
    sub_1A4878ED4(255, &qword_1EB143F88, sub_1A4878F58, sub_1A3D63A24, MEMORY[0x1E697E830]);
    sub_1A418436C(255, &qword_1EB127998, &type metadata for PhotosCollectionPreviewPlayer.Options, MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143F80);
    }
  }
}

void sub_1A4878ED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4878FA0(uint64_t a1)
{
  if (!qword_1EB143F98)
  {
    sub_1A4878ED4(255, &qword_1EB143FA0, sub_1A4879078, sub_1A487A800, MEMORY[0x1E697F960]);
    sub_1A488BC3C(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143F98);
    }
  }
}

void sub_1A4879228(uint64_t a1)
{
  if (!qword_1EB12A948)
  {
    v2 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(255);
    v3 = sub_1A48793D0(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider, &unk_1A534FD40);
    v6[0] = v2;
    v6[1] = MEMORY[0x1E6981E70];
    v6[2] = v3;
    v6[3] = MEMORY[0x1E6981E60];
    v4 = type metadata accessor for LemonadeFeed(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB12A948);
    }
  }
}

void sub_1A4879320(uint64_t a1)
{
  if (!qword_1EB12A8D8)
  {
    v2 = type metadata accessor for LemonadeICloudLinksFeedProvider(255);
    v3 = sub_1A48793D0(&qword_1EB1296F0, type metadata accessor for LemonadeICloudLinksFeedProvider, &unk_1A5339B68);
    v6[0] = v2;
    v6[1] = MEMORY[0x1E6981E70];
    v6[2] = v3;
    v6[3] = MEMORY[0x1E6981E60];
    v4 = type metadata accessor for LemonadeFeed(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB12A8D8);
    }
  }
}

uint64_t sub_1A48793D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4879460(uint64_t a1)
{
  if (!qword_1EB12A8E8)
  {
    v2 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(255);
    v3 = sub_1A48793D0(&qword_1EB1297C8, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider, &unk_1A53371C0);
    v6[0] = v2;
    v6[1] = MEMORY[0x1E6981E70];
    v6[2] = v3;
    v6[3] = MEMORY[0x1E6981E60];
    v4 = type metadata accessor for LemonadeFeed(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB12A8E8);
    }
  }
}

void sub_1A48795A0(uint64_t a1)
{
  if (!qword_1EB129D18)
  {
    sub_1A4879678(255);
    v3 = v2;
    v4 = sub_1A48793D0(&unk_1EB129608, sub_1A4879678, &unk_1A5325F70);
    v5 = sub_1A48793D0(&qword_1EB12A218, type metadata accessor for LemonadeEventsFeature.FeedProvider, &unk_1A5361ED8);
    v6 = type metadata accessor for LemonadeSectionedFeedView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB129D18);
    }
  }
}

void sub_1A4879678(uint64_t a1)
{
  if (!qword_1EB129600)
  {
    v2 = type metadata accessor for LemonadeEventsFeature.FeedProvider(255);
    v3 = sub_1A48793D0(&qword_1EB12A218, type metadata accessor for LemonadeEventsFeature.FeedProvider, &unk_1A5361ED8);
    v5 = type metadata accessor for LemonadeBasicSectionedFeedProvider(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB129600);
    }
  }
}

void sub_1A487970C(uint64_t a1)
{
  if (!qword_1EB129D28)
  {
    v2 = sub_1A48797A4();
    v3 = sub_1A48793D0(&qword_1EB12A2E8, sub_1A4338D2C, &unk_1A5330C90);
    v4 = type metadata accessor for LemonadeSectionedFeedView(a1, &type metadata for LemonadeTripsFeature.SectionedFeedProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB129D28);
    }
  }
}

unint64_t sub_1A48797A4()
{
  result = qword_1EB12A2C0;
  if (!qword_1EB12A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A2C0);
  }

  return result;
}

void sub_1A48797F8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A48798A8(uint64_t a1)
{
  if (!qword_1EB1256E8)
  {
    sub_1A4879980(255);
    v3 = v2;
    v4 = sub_1A48793D0(&qword_1EB125318, sub_1A4879980, &unk_1A5325F70);
    v5 = sub_1A48793D0(&qword_1EB1250A8, sub_1A4879A14, &unk_1A5344BE4);
    v6 = type metadata accessor for LemonadeSectionedFeedView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1256E8);
    }
  }
}

void sub_1A4879980(uint64_t a1)
{
  if (!qword_1EB125310)
  {
    sub_1A4879A14(255);
    v3 = v2;
    v4 = sub_1A48793D0(&qword_1EB1250A8, sub_1A4879A14, &unk_1A5344BE4);
    v6 = type metadata accessor for LemonadeBasicSectionedFeedProvider(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB125310);
    }
  }
}

void sub_1A4879A14(uint64_t a1)
{
  if (!qword_1EB1250A0)
  {
    v2 = type metadata accessor for LemonadeMemoriesFeature.FeedProvider(255);
    v3 = sub_1A48793D0(&qword_1EB12A0A8, type metadata accessor for LemonadeMemoriesFeature.FeedProvider, &unk_1A534CB28);
    v4 = sub_1A4879ABC();
    v5 = type metadata accessor for LemonadeConcatenatedUIFeedSectionProvider(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB1250A0);
    }
  }
}

unint64_t sub_1A4879ABC()
{
  result = qword_1EB12A7D8;
  if (!qword_1EB12A7D8)
  {
    sub_1A48797F8(255, &qword_1EB12A7B0, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A7D8);
  }

  return result;
}

void sub_1A4879B88(uint64_t a1)
{
  if (!qword_1EB143FD8)
  {
    type metadata accessor for LemonadePeopleFeedView(255);
    sub_1A48793D0(&qword_1EB143FE0, type metadata accessor for LemonadePeopleFeedView, &unk_1A537F070);
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB143FD8);
    }
  }
}

void sub_1A4879D98(uint64_t a1)
{
  if (!qword_1EB12A908)
  {
    v2 = type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(255);
    v3 = sub_1A48793D0(&qword_1EB129D88, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider, &unk_1A5324014);
    v6[0] = v2;
    v6[1] = MEMORY[0x1E6981E70];
    v6[2] = v3;
    v6[3] = MEMORY[0x1E6981E60];
    v4 = type metadata accessor for LemonadeFeed(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB12A908);
    }
  }
}

void sub_1A4879F40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4879FD4(255);
    v7 = v6;
    sub_1A487A084(255, &qword_1EB12A928, sub_1A3D6FFF4, &type metadata for LemonadeUtilitiesFeature.DefaultFeedProvider);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4879FD4(uint64_t a1)
{
  if (!qword_1EB12A938)
  {
    v2 = type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider(255);
    v3 = sub_1A48793D0(&qword_1EB129ED0, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider, &unk_1A52F98B0);
    v6[0] = v2;
    v6[1] = MEMORY[0x1E6981E70];
    v6[2] = v3;
    v6[3] = MEMORY[0x1E6981E60];
    v4 = type metadata accessor for LemonadeFeed(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB12A938);
    }
  }
}

void sub_1A487A084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v10[0] = a4;
    v10[1] = MEMORY[0x1E6981E70];
    v10[2] = v7;
    v10[3] = MEMORY[0x1E6981E60];
    v8 = type metadata accessor for LemonadeFeed(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A487A148(uint64_t a1)
{
  if (!qword_1EB12A918)
  {
    v2 = type metadata accessor for LemonadeWallpaperFeature.FeedProvider(255);
    v3 = sub_1A48793D0(&qword_1EB129EA0, type metadata accessor for LemonadeWallpaperFeature.FeedProvider, &unk_1A53513B8);
    v6[0] = v2;
    v6[1] = MEMORY[0x1E6981E70];
    v6[2] = v3;
    v6[3] = MEMORY[0x1E6981E60];
    v4 = type metadata accessor for LemonadeFeed(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB12A918);
    }
  }
}

void sub_1A487A218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A487A2A4(255);
    v7 = v6;
    sub_1A488B1D0(255, &qword_1EB122A08, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A487A2EC(uint64_t a1)
{
  if (!qword_1EB144038)
  {
    v2 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider(255);
    v3 = sub_1A48793D0(&qword_1EB13C9B8, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider, &unk_1A534401C);
    v6[0] = v2;
    v6[1] = MEMORY[0x1E6981E70];
    v6[2] = v3;
    v6[3] = MEMORY[0x1E6981E60];
    v4 = type metadata accessor for LemonadeFeed(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB144038);
    }
  }
}

void sub_1A487A44C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A487A4E8(255);
    v7 = v6;
    sub_1A488BC3C(255, &qword_1EB122590, MEMORY[0x1E6981E70], &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A487A530(uint64_t a1)
{
  if (!qword_1EB122550)
  {
    v1 = MEMORY[0x1E697F960];
    sub_1A488BC3C(255, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
    sub_1A488BC3C(255, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, v1);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122550);
    }
  }
}

void sub_1A487A630(uint64_t a1)
{
  if (!qword_1EB122560)
  {
    v1 = MEMORY[0x1E697F960];
    sub_1A488BC3C(255, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E697F960]);
    sub_1A488BC3C(255, &qword_1EB122A48, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E69E73E0], v1);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122560);
    }
  }
}

void sub_1A487A914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A487A9BC(uint64_t a1)
{
  if (!qword_1EB12A8C8)
  {
    v2 = type metadata accessor for LemonadeSharedWithYouFeedProvider(255);
    v3 = sub_1A48793D0(&qword_1EB129638, type metadata accessor for LemonadeSharedWithYouFeedProvider, &unk_1A53368D8);
    v6[0] = v2;
    v6[1] = MEMORY[0x1E6981E70];
    v6[2] = v3;
    v6[3] = MEMORY[0x1E6981E60];
    v4 = type metadata accessor for LemonadeFeed(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB12A8C8);
    }
  }
}

void sub_1A487AA6C(uint64_t a1)
{
  if (!qword_1EB122478)
  {
    v1 = MEMORY[0x1E697F960];
    sub_1A488BC3C(255, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
    sub_1A488BC3C(255, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, v1);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122478);
    }
  }
}

void sub_1A487ABEC(uint64_t a1)
{
  if (!qword_1EB144060)
  {
    sub_1A4878E04(255);
    sub_1A487AC70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB144060);
    }
  }
}

unint64_t sub_1A487AC70()
{
  result = qword_1EB144068;
  if (!qword_1EB144068)
  {
    sub_1A4878E04(255);
    sub_1A487ACF0();
    sub_1A487D108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144068);
  }

  return result;
}

unint64_t sub_1A487ACF0()
{
  result = qword_1EB144070;
  if (!qword_1EB144070)
  {
    sub_1A4878ED4(255, &qword_1EB143F88, sub_1A4878F58, sub_1A3D63A24, MEMORY[0x1E697E830]);
    sub_1A487ADE4();
    sub_1A48793D0(&qword_1EB1278C0, sub_1A3D63A24, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144070);
  }

  return result;
}

unint64_t sub_1A487ADE4()
{
  result = qword_1EB144078;
  if (!qword_1EB144078)
  {
    sub_1A4878F58(255);
    sub_1A487AE94();
    sub_1A48793D0(&qword_1EB127950, sub_1A3D639BC, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144078);
  }

  return result;
}

unint64_t sub_1A487AE94()
{
  result = qword_1EB144080;
  if (!qword_1EB144080)
  {
    sub_1A4878FA0(255);
    sub_1A487AF14();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144080);
  }

  return result;
}

unint64_t sub_1A487AF14()
{
  result = qword_1EB144088;
  if (!qword_1EB144088)
  {
    sub_1A4878ED4(255, &qword_1EB143FA0, sub_1A4879078, sub_1A487A800, MEMORY[0x1E697F960]);
    sub_1A487AFD8();
    sub_1A487CB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144088);
  }

  return result;
}

unint64_t sub_1A487AFD8()
{
  result = qword_1EB144090;
  if (!qword_1EB144090)
  {
    sub_1A4879078(255);
    sub_1A487B058();
    sub_1A487C124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144090);
  }

  return result;
}

unint64_t sub_1A487B058()
{
  result = qword_1EB144098;
  if (!qword_1EB144098)
  {
    sub_1A48790C0(255);
    sub_1A487B0D8();
    sub_1A487B830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144098);
  }

  return result;
}

unint64_t sub_1A487B0D8()
{
  result = qword_1EB1440A0;
  if (!qword_1EB1440A0)
  {
    sub_1A4879108(255);
    sub_1A487B158();
    sub_1A487B4F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440A0);
  }

  return result;
}

unint64_t sub_1A487B158()
{
  result = qword_1EB127CC0;
  if (!qword_1EB127CC0)
  {
    sub_1A4879150(255);
    sub_1A487B1D8();
    sub_1A487B368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127CC0);
  }

  return result;
}

unint64_t sub_1A487B1D8()
{
  result = qword_1EB127CF8;
  if (!qword_1EB127CF8)
  {
    sub_1A4879198(255);
    sub_1A487B288();
    sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView, &unk_1A537941C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127CF8);
  }

  return result;
}

unint64_t sub_1A487B288()
{
  result = qword_1EB127E90;
  if (!qword_1EB127E90)
  {
    sub_1A48791E0(255);
    sub_1A48793D0(&qword_1EB12A950, sub_1A4879228, &unk_1A535F1A0);
    sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView, &unk_1A537941C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E90);
  }

  return result;
}

unint64_t sub_1A487B368()
{
  result = qword_1EB127E50;
  if (!qword_1EB127E50)
  {
    sub_1A48792D8(255);
    sub_1A48793D0(&qword_1EB12A8E0, sub_1A4879320, &unk_1A535F1A0);
    sub_1A487B418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E50);
  }

  return result;
}

unint64_t sub_1A487B418()
{
  result = qword_1EB127E60;
  if (!qword_1EB127E60)
  {
    sub_1A4879418(255);
    sub_1A48793D0(&qword_1EB12A8F0, sub_1A4879460, &unk_1A535F1A0);
    sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView, &unk_1A537941C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E60);
  }

  return result;
}

unint64_t sub_1A487B4F8()
{
  result = qword_1EB1440A8;
  if (!qword_1EB1440A8)
  {
    sub_1A4879510(255);
    sub_1A487B578();
    sub_1A487B654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440A8);
  }

  return result;
}

unint64_t sub_1A487B578()
{
  result = qword_1EB127E20;
  if (!qword_1EB127E20)
  {
    sub_1A4879558(255);
    sub_1A48793D0(&qword_1EB129D20, sub_1A48795A0, &unk_1A530B210);
    sub_1A48793D0(&qword_1EB129D30, sub_1A487970C, &unk_1A530B210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E20);
  }

  return result;
}

unint64_t sub_1A487B654()
{
  result = qword_1EB1440B0;
  if (!qword_1EB1440B0)
  {
    sub_1A4879860(255);
    sub_1A48793D0(&qword_1EB1256F0, sub_1A48798A8, &unk_1A530B210);
    sub_1A487B704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440B0);
  }

  return result;
}

unint64_t sub_1A487B704()
{
  result = qword_1EB1440B8;
  if (!qword_1EB1440B8)
  {
    sub_1A4879B40(255);
    type metadata accessor for LemonadePeopleFeedView(255);
    sub_1A48793D0(&qword_1EB143FE0, type metadata accessor for LemonadePeopleFeedView, &unk_1A537F070);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A48793D0(&unk_1EB12A120, type metadata accessor for LemonadePeopleHomeView, &unk_1A5378E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440B8);
  }

  return result;
}

unint64_t sub_1A487B830()
{
  result = qword_1EB1440C0;
  if (!qword_1EB1440C0)
  {
    sub_1A4879C58(255);
    sub_1A487B8B0();
    sub_1A487BEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440C0);
  }

  return result;
}

unint64_t sub_1A487B8B0()
{
  result = qword_1EB1440C8;
  if (!qword_1EB1440C8)
  {
    sub_1A4879CA0(255);
    sub_1A487B930();
    sub_1A487BBEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440C8);
  }

  return result;
}

unint64_t sub_1A487B930()
{
  result = qword_1EB1440D0;
  if (!qword_1EB1440D0)
  {
    sub_1A4879CE8(255);
    sub_1A48793D0(&qword_1EB1255F8, type metadata accessor for LemonadeSocialGroupFeedView, &unk_1A533A100);
    sub_1A487B9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440D0);
  }

  return result;
}

unint64_t sub_1A487B9E0()
{
  result = qword_1EB1440D8;
  if (!qword_1EB1440D8)
  {
    sub_1A4879D30(255);
    sub_1A487BA60();
    sub_1A487BB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440D8);
  }

  return result;
}

unint64_t sub_1A487BA60()
{
  result = qword_1EB127E70;
  if (!qword_1EB127E70)
  {
    sub_1A4879D78(255);
    sub_1A48793D0(&qword_1EB12A910, sub_1A4879D98, &unk_1A535F1A0);
    sub_1A487BDF8(&qword_1EB12A900, &qword_1EB12A8F8, sub_1A41D4294, &type metadata for LemonadeMediaTypesFeature.DefaultFeedProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E70);
  }

  return result;
}

unint64_t sub_1A487BB3C()
{
  result = qword_1EB1440E0;
  if (!qword_1EB1440E0)
  {
    sub_1A4879E48(255);
    sub_1A48793D0(&qword_1EB12A910, sub_1A4879D98, &unk_1A535F1A0);
    sub_1A487BA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440E0);
  }

  return result;
}

unint64_t sub_1A487BBEC()
{
  result = qword_1EB1440E8;
  if (!qword_1EB1440E8)
  {
    sub_1A4879E90(255);
    sub_1A487BC9C();
    sub_1A48793D0(&qword_1EB12A920, sub_1A487A148, &unk_1A535F1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440E8);
  }

  return result;
}

unint64_t sub_1A487BC9C()
{
  result = qword_1EB1440F0;
  if (!qword_1EB1440F0)
  {
    sub_1A4879ED8(255);
    sub_1A487BD1C();
    sub_1A487BE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440F0);
  }

  return result;
}

unint64_t sub_1A487BD1C()
{
  result = qword_1EB127E80;
  if (!qword_1EB127E80)
  {
    sub_1A4879F20(255);
    sub_1A48793D0(&qword_1EB12A940, sub_1A4879FD4, &unk_1A535F1A0);
    sub_1A487BDF8(&qword_1EB12A930, &qword_1EB12A928, sub_1A3D6FFF4, &type metadata for LemonadeUtilitiesFeature.DefaultFeedProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E80);
  }

  return result;
}

uint64_t sub_1A487BDF8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A487A084(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A487BE48()
{
  result = qword_1EB1440F8;
  if (!qword_1EB1440F8)
  {
    sub_1A487A100(255);
    sub_1A48793D0(&qword_1EB12A940, sub_1A4879FD4, &unk_1A535F1A0);
    sub_1A487BD1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440F8);
  }

  return result;
}

unint64_t sub_1A487BEF8()
{
  result = qword_1EB144100;
  if (!qword_1EB144100)
  {
    sub_1A487A1F8(255);
    sub_1A487BF78();
    sub_1A487C058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144100);
  }

  return result;
}

unint64_t sub_1A487BF78()
{
  result = qword_1EB144108;
  if (!qword_1EB144108)
  {
    sub_1A487A2A4(255);
    sub_1A48793D0(&qword_1EB1294F8, sub_1A4669BE4, &unk_1A534E1A4);
    sub_1A48793D0(&qword_1EB144110, sub_1A487A2EC, &unk_1A535F1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144108);
  }

  return result;
}

unint64_t sub_1A487C058()
{
  result = qword_1EB122A10;
  if (!qword_1EB122A10)
  {
    sub_1A488B1D0(255, &qword_1EB122A08, MEMORY[0x1E697F960]);
    sub_1A47ACC7C();
    sub_1A48793D0(&qword_1EB129B90, type metadata accessor for GenerativeStoryCreationView, &protocol conformance descriptor for GenerativeStoryCreationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A10);
  }

  return result;
}

unint64_t sub_1A487C124()
{
  result = qword_1EB122380;
  if (!qword_1EB122380)
  {
    sub_1A487A39C(255);
    sub_1A487C1A4();
    sub_1A487C5FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122380);
  }

  return result;
}

unint64_t sub_1A487C1A4()
{
  result = qword_1EB1223D0;
  if (!qword_1EB1223D0)
  {
    sub_1A487A3E4(255);
    sub_1A487C224();
    sub_1A487C430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1223D0);
  }

  return result;
}

unint64_t sub_1A487C224()
{
  result = qword_1EB1224C8;
  if (!qword_1EB1224C8)
  {
    sub_1A487A42C(255);
    sub_1A487C2A4();
    sub_1A487C384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1224C8);
  }

  return result;
}

unint64_t sub_1A487C2A4()
{
  result = qword_1EB122918;
  if (!qword_1EB122918)
  {
    sub_1A487A4E8(255);
    sub_1A48793D0(&unk_1EB129DE8, type metadata accessor for LemonadeBookmarksEditView, &unk_1A532FF88);
    sub_1A48793D0(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView, &unk_1A5319E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122918);
  }

  return result;
}

unint64_t sub_1A487C384()
{
  result = qword_1EB122598;
  if (!qword_1EB122598)
  {
    sub_1A488BC3C(255, &qword_1EB122590, MEMORY[0x1E6981E70], &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
    sub_1A44D55D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122598);
  }

  return result;
}

unint64_t sub_1A487C430()
{
  result = qword_1EB122558;
  if (!qword_1EB122558)
  {
    sub_1A487A530(255);
    sub_1A487C4B0();
    sub_1A487C550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122558);
  }

  return result;
}

unint64_t sub_1A487C4B0()
{
  result = qword_1EB122A20;
  if (!qword_1EB122A20)
  {
    sub_1A488BC3C(255, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
    sub_1A44D55D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A20);
  }

  return result;
}

unint64_t sub_1A487C550()
{
  result = qword_1EB122A30;
  if (!qword_1EB122A30)
  {
    sub_1A488BC3C(255, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, MEMORY[0x1E697F960]);
    sub_1A44D55D4();
    sub_1A3D8FAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A30);
  }

  return result;
}

unint64_t sub_1A487C5FC()
{
  result = qword_1EB122410;
  if (!qword_1EB122410)
  {
    sub_1A487A5E8(255);
    sub_1A487C67C();
    sub_1A487C854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122410);
  }

  return result;
}

unint64_t sub_1A487C67C()
{
  result = qword_1EB122568;
  if (!qword_1EB122568)
  {
    sub_1A487A630(255);
    sub_1A487C6FC();
    sub_1A487C7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122568);
  }

  return result;
}

unint64_t sub_1A487C6FC()
{
  result = qword_1EB122A40;
  if (!qword_1EB122A40)
  {
    sub_1A488BC3C(255, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E697F960]);
    sub_1A427224C();
    sub_1A42EC7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A40);
  }

  return result;
}

unint64_t sub_1A487C7A8()
{
  result = qword_1EB122A50;
  if (!qword_1EB122A50)
  {
    sub_1A488BC3C(255, &qword_1EB122A48, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E69E73E0], MEMORY[0x1E697F960]);
    sub_1A42EC7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A50);
  }

  return result;
}

unint64_t sub_1A487C854()
{
  result = qword_1EB1224F8;
  if (!qword_1EB1224F8)
  {
    sub_1A487A6EC(255);
    sub_1A487C8D4();
    sub_1A487C984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1224F8);
  }

  return result;
}

unint64_t sub_1A487C8D4()
{
  result = qword_1EB122960;
  if (!qword_1EB122960)
  {
    sub_1A487A734(255);
    sub_1A48793D0(&qword_1EB12A3B0, type metadata accessor for LemonadeAccountView, &unk_1A534B7D0);
    sub_1A3EED6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122960);
  }

  return result;
}

unint64_t sub_1A487C984()
{
  result = qword_1EB122928;
  if (!qword_1EB122928)
  {
    sub_1A487A770(255);
    sub_1A48793D0(&qword_1EB129F00, type metadata accessor for LemonadeMemoryPlayerView, &unk_1A5378240);
    sub_1A487CA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122928);
  }

  return result;
}

unint64_t sub_1A487CA34()
{
  result = qword_1EB127D88;
  if (!qword_1EB127D88)
  {
    sub_1A487A7B8(255);
    sub_1A48793D0(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView, &unk_1A53139C0);
    sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView, &unk_1A537941C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D88);
  }

  return result;
}

unint64_t sub_1A487CB14()
{
  result = qword_1EB144118;
  if (!qword_1EB144118)
  {
    sub_1A487A800(255);
    sub_1A487CBD8();
    sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4, MEMORY[0x1E6982090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144118);
  }

  return result;
}

unint64_t sub_1A487CBD8()
{
  result = qword_1EB1223C0;
  if (!qword_1EB1223C0)
  {
    sub_1A487A848(255);
    sub_1A487CC58();
    sub_1A487CE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1223C0);
  }

  return result;
}

unint64_t sub_1A487CC58()
{
  result = qword_1EB122490;
  if (!qword_1EB122490)
  {
    sub_1A487A890(255);
    sub_1A487CCD8();
    sub_1A487CD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122490);
  }

  return result;
}

unint64_t sub_1A487CCD8()
{
  result = qword_1EB122828;
  if (!qword_1EB122828)
  {
    sub_1A487A8D8(255);
    sub_1A48793D0(&qword_1EB129320, type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable, &unk_1A5336148);
    sub_1A484F120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122828);
  }

  return result;
}

unint64_t sub_1A487CD88()
{
  result = qword_1EB122A00;
  if (!qword_1EB122A00)
  {
    sub_1A487A980(255);
    sub_1A48793D0(&qword_1EB12A8D0, sub_1A487A9BC, &unk_1A535F1A0);
    sub_1A487CE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A00);
  }

  return result;
}

unint64_t sub_1A487CE38()
{
  result = qword_1EB12A3E8;
  if (!qword_1EB12A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A3E8);
  }

  return result;
}

unint64_t sub_1A487CE8C()
{
  result = qword_1EB122480;
  if (!qword_1EB122480)
  {
    sub_1A487AA6C(255);
    sub_1A487CF0C();
    sub_1A487CFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122480);
  }

  return result;
}

unint64_t sub_1A487CF0C()
{
  result = qword_1EB122818;
  if (!qword_1EB122818)
  {
    sub_1A488BC3C(255, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
    sub_1A48728E0();
    sub_1A47EFEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122818);
  }

  return result;
}

unint64_t sub_1A487CFB8()
{
  result = qword_1EB1228B8;
  if (!qword_1EB1228B8)
  {
    sub_1A488BC3C(255, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, MEMORY[0x1E697F960]);
    sub_1A47EFEE4();
    sub_1A3EED3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228B8);
  }

  return result;
}

uint64_t sub_1A487D064(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A487D108()
{
  result = qword_1EB1279A0;
  if (!qword_1EB1279A0)
  {
    sub_1A418436C(255, &qword_1EB127998, &type metadata for PhotosCollectionPreviewPlayer.Options, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1279A0);
  }

  return result;
}

void sub_1A487D184(uint64_t a1)
{
  if (!qword_1EB127AB0)
  {
    sub_1A5243804();
    sub_1A48793D0(&qword_1EB129058, MEMORY[0x1E69C2670], MEMORY[0x1E69C2668]);
    sub_1A487D064(&qword_1EB129160, sub_1A425D684, sub_1A487D270, MEMORY[0x1E69E7C80]);
    v1 = sub_1A5249D24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127AB0);
    }
  }
}

uint64_t sub_1A487D2A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v812 = a1;
  sub_1A487AB28(0);
  v788 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v635 = (v555 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1E697F948];
  sub_1A487A914(0, &qword_1EB122D08, sub_1A487A9BC, &type metadata for LemonadeImportView, MEMORY[0x1E697F948]);
  v715 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v716 = (v555 - v7);
  sub_1A487A980(0);
  v756 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v717 = v555 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v634 = type metadata accessor for LemonadeSharedWithYouFeedProvider(0);
  MEMORY[0x1EEE9AC00](v634);
  v633 = (v555 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A487A9BC(0);
  v714 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v636 = (v555 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1E697F948];
  sub_1A4878ED4(0, &qword_1EB144148, sub_1A487A848, sub_1A487AB28, MEMORY[0x1E697F948]);
  v785 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v787 = v555 - v15;
  sub_1A4878ED4(0, &qword_1EB122AE8, sub_1A487A890, sub_1A487AA6C, v13);
  v778 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v781 = v555 - v17;
  sub_1A4878ED4(0, &qword_1EB122B38, sub_1A487A8D8, sub_1A487A980, v13);
  v750 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v753 = v555 - v19;
  sub_1A487A914(0, &qword_1EB144150, type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable, &type metadata for LemonadeSharedWithYouGridViewControllerRepresentable, v5);
  v707 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v710 = (v555 - v21);
  sub_1A487A8D8(0);
  v751 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v713 = v555 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A890(0);
  v780 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v755 = v555 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A848(0);
  v786 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v783 = v555 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A800(0);
  v811 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v789 = v555 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v706 = type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v706);
  v632 = (v555 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4878ED4(0, &qword_1EB127F30, type metadata accessor for LemonadeSharedAlbumsActivityFeedView, type metadata accessor for LemonadeAlbumsView, v13);
  v654 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v656 = v555 - v32;
  v655 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  MEMORY[0x1EEE9AC00](v655);
  v577 = (v555 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A487A7B8(0);
  v711 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v657 = v555 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB122C98, type metadata accessor for LemonadeMemoryPlayerView, sub_1A487A7B8, v13);
  v724 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v709 = v555 - v37;
  sub_1A487A770(0);
  v761 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v712 = v555 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v708 = type metadata accessor for LemonadeMemoryPlayerView(0);
  MEMORY[0x1EEE9AC00](v708);
  v631 = v555 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v624 = v555 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v630 = (v555 - v44);
  sub_1A4878ED4(0, &qword_1EB122B60, sub_1A487A734, sub_1A487A770, v13);
  v759 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v760 = v555 - v46;
  sub_1A487A914(0, &qword_1EB122CB8, type metadata accessor for LemonadeAccountView, &type metadata for LemonadeMap, v5);
  v699 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v701 = v555 - v48;
  sub_1A487A734(0);
  v748 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v704 = v555 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A6EC(0);
  v765 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v754 = v555 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v698 = type metadata accessor for LemonadeAccountView(0);
  MEMORY[0x1EEE9AC00](v698);
  v629 = (v555 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4878ED4(0, &qword_1EB122B10, sub_1A487A630, sub_1A487A6EC, v13);
  v763 = v54;
  MEMORY[0x1EEE9AC00](v54);
  v764 = v555 - v55;
  sub_1A487A5E8(0);
  v793 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v766 = v555 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v622 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v622);
  v628 = (v555 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v621 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v621);
  v627 = v555 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v619 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v619);
  v626 = v555 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v618 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v618);
  v625 = (v555 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v697 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);
  MEMORY[0x1EEE9AC00](v697);
  v623 = (v555 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4878ED4(0, &qword_1EB122AC8, sub_1A487A3E4, sub_1A487A5E8, v13);
  v790 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v792 = v555 - v64;
  sub_1A4878ED4(0, &qword_1EB122AF0, sub_1A487A42C, sub_1A487A530, v13);
  v772 = v65;
  MEMORY[0x1EEE9AC00](v65);
  v774 = v555 - v66;
  v67 = MEMORY[0x1E697F948];
  sub_1A487A44C(0, &qword_1EB122B50, MEMORY[0x1E697F948]);
  v742 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v744 = v555 - v69;
  sub_1A4878ED4(0, &qword_1EB122C90, type metadata accessor for LemonadeBookmarksEditView, type metadata accessor for LemonadeBookmarksSeeAllPopoverView, v13);
  v693 = v70;
  MEMORY[0x1EEE9AC00](v70);
  v694 = v555 - v71;
  sub_1A487A4E8(0);
  v743 = v72;
  MEMORY[0x1EEE9AC00](v72);
  v695 = v555 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A42C(0);
  v773 = v74;
  MEMORY[0x1EEE9AC00](v74);
  v745 = v555 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A3E4(0);
  v791 = v76;
  MEMORY[0x1EEE9AC00](v76);
  v775 = v555 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A39C(0);
  v806 = v78;
  MEMORY[0x1EEE9AC00](v78);
  v794 = v555 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v692 = type metadata accessor for LemonadeBookmarksEditView(0);
  MEMORY[0x1EEE9AC00](v692);
  v620 = (v555 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  v691 = type metadata accessor for GenerativeStoryCreationView(0);
  MEMORY[0x1EEE9AC00](v691);
  v617 = v555 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v611 = (v555 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v84);
  v616 = v555 - v85;
  v86 = MEMORY[0x1E697F948];
  sub_1A488B1D0(0, &qword_1EB122D10, MEMORY[0x1E697F948]);
  v685 = v87;
  MEMORY[0x1EEE9AC00](v87);
  v687 = v555 - v88;
  sub_1A488B1D0(0, &qword_1EB122A08, MEMORY[0x1E697F960]);
  v740 = v89;
  MEMORY[0x1EEE9AC00](v89);
  v690 = v555 - v90;
  v610 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v610);
  v609 = (v555 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A487A2EC(0);
  v689 = v92;
  MEMORY[0x1EEE9AC00](v92);
  v615 = v555 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A218(0, &qword_1EB144158, v67);
  v737 = v94;
  MEMORY[0x1EEE9AC00](v94);
  v739 = v555 - v95;
  sub_1A4878ED4(0, &qword_1EB144160, sub_1A4669BE4, sub_1A487A2EC, v13);
  v681 = v96;
  MEMORY[0x1EEE9AC00](v96);
  v684 = v555 - v97;
  sub_1A487A2A4(0);
  v738 = v98;
  MEMORY[0x1EEE9AC00](v98);
  v688 = v555 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A1F8(0);
  v784 = v100;
  MEMORY[0x1EEE9AC00](v100);
  v741 = v555 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4669BE4(0);
  v682 = v102;
  MEMORY[0x1EEE9AC00](v102);
  v613 = v555 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v608 = type metadata accessor for LemonadeWallpaperFeature.FeedProvider(0);
  MEMORY[0x1EEE9AC00](v608);
  v607 = (v555 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A487A148(0);
  v703 = v105;
  MEMORY[0x1EEE9AC00](v105);
  v612 = v555 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144168, sub_1A4879ED8, sub_1A487A148, v13);
  v700 = v107;
  MEMORY[0x1EEE9AC00](v107);
  v702 = v555 - v108;
  sub_1A4879E90(0);
  v757 = v109;
  MEMORY[0x1EEE9AC00](v109);
  v705 = v555 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144170, sub_1A4879FD4, sub_1A4879F20, v13);
  v574 = v111;
  MEMORY[0x1EEE9AC00](v111);
  v575 = v555 - v112;
  sub_1A487A100(0);
  v652 = v113;
  MEMORY[0x1EEE9AC00](v113);
  v576 = v555 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144178, sub_1A4879F20, sub_1A487A100, v13);
  v650 = v115;
  MEMORY[0x1EEE9AC00](v115);
  v651 = v555 - v116;
  sub_1A487A084(0, &qword_1EB12A928, sub_1A3D6FFF4, &type metadata for LemonadeUtilitiesFeature.DefaultFeedProvider);
  v591 = v117;
  MEMORY[0x1EEE9AC00](v117);
  v561 = v555 - v118;
  sub_1A4879F40(0, &qword_1EB127F80, v67);
  v589 = v119;
  MEMORY[0x1EEE9AC00](v119);
  v590 = v555 - v120;
  v584 = type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider(0);
  MEMORY[0x1EEE9AC00](v584);
  v583 = (v555 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4879FD4(0);
  v614 = v122;
  MEMORY[0x1EEE9AC00](v122);
  v585 = v555 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879F20(0);
  v659 = v124;
  MEMORY[0x1EEE9AC00](v124);
  v559 = v555 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v126);
  v570 = v555 - v127;
  sub_1A4879ED8(0);
  v696 = v128;
  MEMORY[0x1EEE9AC00](v128);
  v653 = v555 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1A5249234();
  v557 = *(v130 - 8);
  v558 = v130;
  MEMORY[0x1EEE9AC00](v130);
  v556 = v555 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144180, sub_1A4879D98, sub_1A4879D78, v13);
  v571 = v132;
  MEMORY[0x1EEE9AC00](v132);
  v572 = v555 - v133;
  sub_1A4879E48(0);
  v648 = v134;
  MEMORY[0x1EEE9AC00](v134);
  v573 = v555 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144188, sub_1A4879D78, sub_1A4879E48, v13);
  v646 = v136;
  MEMORY[0x1EEE9AC00](v136);
  v647 = v555 - v137;
  sub_1A487A084(0, &qword_1EB12A8F8, sub_1A41D4294, &type metadata for LemonadeMediaTypesFeature.DefaultFeedProvider);
  v588 = v138;
  MEMORY[0x1EEE9AC00](v138);
  v560 = v555 - v139;
  sub_1A488B238(0, &qword_1EB127F78, v86);
  v586 = v140;
  MEMORY[0x1EEE9AC00](v140);
  v587 = v555 - v141;
  v581 = type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0);
  MEMORY[0x1EEE9AC00](v581);
  v580 = (v555 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4879D98(0);
  v645 = v143;
  MEMORY[0x1EEE9AC00](v143);
  v582 = v555 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  v644 = sub_1A52486A4();
  v643 = *(v644 - 8);
  MEMORY[0x1EEE9AC00](v644);
  v642 = v555 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879D78(0);
  v658 = v146;
  MEMORY[0x1EEE9AC00](v146);
  v555[1] = v555 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v148);
  v569 = v555 - v149;
  sub_1A4879D30(0);
  v686 = v150;
  MEMORY[0x1EEE9AC00](v150);
  v649 = v555 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144190, sub_1A4879CA0, sub_1A487A1F8, v13);
  v776 = v152;
  MEMORY[0x1EEE9AC00](v152);
  v779 = v555 - v153;
  sub_1A4878ED4(0, &qword_1EB144198, sub_1A4879CE8, sub_1A4879E90, v13);
  v746 = v154;
  MEMORY[0x1EEE9AC00](v154);
  v749 = v555 - v155;
  sub_1A4878ED4(0, &qword_1EB1441A0, type metadata accessor for LemonadeSocialGroupFeedView, sub_1A4879D30, v13);
  v680 = v156;
  MEMORY[0x1EEE9AC00](v156);
  v723 = v555 - v157;
  sub_1A4879CE8(0);
  v747 = v158;
  MEMORY[0x1EEE9AC00](v158);
  v683 = v555 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879CA0(0);
  v777 = v160;
  MEMORY[0x1EEE9AC00](v160);
  v752 = v555 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879C58(0);
  v799 = v162;
  MEMORY[0x1EEE9AC00](v162);
  v782 = v555 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  v679 = type metadata accessor for LemonadeSocialGroupFeedView(0);
  MEMORY[0x1EEE9AC00](v679);
  v605 = v555 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  v641 = type metadata accessor for LemonadePeopleHomeView(0);
  MEMORY[0x1EEE9AC00](v641);
  v568 = v555 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB1441A8, sub_1A4879B88, type metadata accessor for LemonadePeopleHomeView, v13);
  v637 = v166;
  MEMORY[0x1EEE9AC00](v166);
  v640 = v555 - v167;
  v638 = type metadata accessor for LemonadePeopleFeedView(0);
  MEMORY[0x1EEE9AC00](v638);
  v565 = v555 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879B88(0);
  v639 = v169;
  v567 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v566 = v555 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879B40(0);
  v677 = v171;
  MEMORY[0x1EEE9AC00](v171);
  v722 = v555 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB1441B0, sub_1A48798A8, sub_1A4879B40, v13);
  v674 = v173;
  MEMORY[0x1EEE9AC00](v173);
  v676 = v555 - v174;
  sub_1A4879860(0);
  v736 = v175;
  MEMORY[0x1EEE9AC00](v175);
  v678 = v555 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48798A8(0);
  v675 = v177;
  MEMORY[0x1EEE9AC00](v177);
  v606 = v555 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879A14(0);
  v603 = v179;
  v801 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v579 = v555 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  v721 = sub_1A5242D14();
  v720 = *(v721 - 8);
  MEMORY[0x1EEE9AC00](v721);
  v718 = v555 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v182);
  v719 = v555 - v183;
  sub_1A487970C(0);
  v673 = v184;
  MEMORY[0x1EEE9AC00](v184);
  v602 = (v555 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0));
  v815 = sub_1A5244EE4();
  v802 = *(v815 - 8);
  MEMORY[0x1EEE9AC00](v815);
  v814 = v555 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
  v600 = type metadata accessor for LemonadeEventsFeature.FeedProvider(0);
  v800 = *(v600 - 8);
  MEMORY[0x1EEE9AC00](v600);
  v578 = v555 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB1441B8, sub_1A4879558, sub_1A4879860, v13);
  v732 = v188;
  MEMORY[0x1EEE9AC00](v188);
  v734 = v555 - v189;
  sub_1A4878ED4(0, &qword_1EB1441C0, sub_1A48795A0, sub_1A487970C, v13);
  v669 = v190;
  MEMORY[0x1EEE9AC00](v190);
  v671 = v555 - v191;
  sub_1A4879558(0);
  v733 = v192;
  MEMORY[0x1EEE9AC00](v192);
  v672 = v555 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879510(0);
  v771 = v194;
  MEMORY[0x1EEE9AC00](v194);
  v735 = v555 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48795A0(0);
  v670 = v196;
  MEMORY[0x1EEE9AC00](v196);
  v604 = v555 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB127F70, sub_1A4879460, type metadata accessor for LemonadeAlbumsView, v13);
  v596 = v198;
  MEMORY[0x1EEE9AC00](v198);
  v599 = v555 - v199;
  v563 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v563);
  v562 = (v555 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4879460(0);
  v598 = v201;
  MEMORY[0x1EEE9AC00](v201);
  v564 = v555 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879418(0);
  v667 = v203;
  MEMORY[0x1EEE9AC00](v203);
  v601 = v555 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB127F68, sub_1A4879320, sub_1A4879418, v13);
  v665 = v205;
  MEMORY[0x1EEE9AC00](v205);
  v666 = v555 - v206;
  sub_1A48792D8(0);
  v731 = v207;
  MEMORY[0x1EEE9AC00](v207);
  v668 = v555 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0);
  v595 = type metadata accessor for LemonadeICloudLinksFeedProvider(0);
  MEMORY[0x1EEE9AC00](v595);
  v593 = (v555 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4879320(0);
  v664 = v210;
  MEMORY[0x1EEE9AC00](v210);
  v597 = v555 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB1441C8, sub_1A4879078, sub_1A487A800, v13);
  v809 = v212;
  MEMORY[0x1EEE9AC00](v212);
  v813 = v555 - v213;
  sub_1A4878ED4(0, &qword_1EB1441D0, sub_1A48790C0, sub_1A487A39C, v13);
  v804 = v214;
  MEMORY[0x1EEE9AC00](v214);
  v808 = v555 - v215;
  sub_1A4878ED4(0, &qword_1EB1441D8, sub_1A4879108, sub_1A4879C58, v13);
  v795 = v216;
  MEMORY[0x1EEE9AC00](v216);
  v797 = v555 - v217;
  sub_1A4878ED4(0, &qword_1EB1441E0, sub_1A4879150, sub_1A4879510, v13);
  v767 = v218;
  MEMORY[0x1EEE9AC00](v218);
  v769 = v555 - v219;
  sub_1A4878ED4(0, &qword_1EB127EE8, sub_1A4879198, sub_1A48792D8, v13);
  v727 = v220;
  MEMORY[0x1EEE9AC00](v220);
  v729 = v555 - v221;
  sub_1A4878ED4(0, &qword_1EB127F00, sub_1A48791E0, type metadata accessor for LemonadeAlbumsView, v13);
  v661 = v222;
  MEMORY[0x1EEE9AC00](v222);
  v662 = v555 - v223;
  sub_1A4879198(0);
  v728 = v224;
  MEMORY[0x1EEE9AC00](v224);
  v663 = v555 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879150(0);
  v768 = v226;
  MEMORY[0x1EEE9AC00](v226);
  v730 = v555 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879108(0);
  v796 = v228;
  MEMORY[0x1EEE9AC00](v228);
  v770 = v555 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48790C0(0);
  v807 = v230;
  MEMORY[0x1EEE9AC00](v230);
  v798 = v555 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879078(0);
  v810 = v232;
  MEMORY[0x1EEE9AC00](v232);
  v805 = v555 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
  v758 = type metadata accessor for LemonadeAlbumsView(0);
  MEMORY[0x1EEE9AC00](v758);
  v725 = (v555 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4878ED4(0, &qword_1EB127F88, sub_1A4879228, type metadata accessor for LemonadeAlbumsView, v13);
  MEMORY[0x1EEE9AC00](v235);
  v592 = v555 - v236;
  v237 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v237);
  v239 = (v555 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4879228(0);
  MEMORY[0x1EEE9AC00](v240);
  sub_1A48791E0(0);
  v660 = v241;
  MEMORY[0x1EEE9AC00](v241);
  v594 = (v555 - ((v242 + 15) & 0xFFFFFFFFFFFFFFF0));
  v243 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v243);
  v245 = v555 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for LemonadeNavigationDestinationView(0);
  v803 = *(v2 + v246[10]);
  LOBYTE(v824) = *(v803 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  LOBYTE(v830) = 3;
  v726 = static LemonadePresentationContext.== infix(_:_:)(&v824, &v830);
  v247 = v246[9];
  v762 = v2;
  sub_1A488AC98(v2 + v247, v245, type metadata accessor for LemonadeNavigationDestination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v359 = *v245;
      v360 = v803;

      v362 = v725;
      sub_1A49B6BC0(v361, v360, 2, v725);
      sub_1A488AC98(v362, v662, type metadata accessor for LemonadeAlbumsView);
      swift_storeEnumTagMultiPayload();
      sub_1A487B288();
      sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView, &unk_1A537941C);
      v363 = v663;
      sub_1A5249744();
      sub_1A488AC98(v363, v729, sub_1A4879198);
      swift_storeEnumTagMultiPayload();
      sub_1A487B1D8();
      sub_1A487B368();
      v364 = v730;
      sub_1A5249744();
      sub_1A488B2CC(v363, sub_1A4879198);
      sub_1A488AC98(v364, v769, sub_1A4879150);
      swift_storeEnumTagMultiPayload();
      sub_1A487B158();
      sub_1A487B4F8();
      v365 = v770;
      sub_1A5249744();
      sub_1A488B2CC(v364, sub_1A4879150);
      sub_1A488B840(v365, v797, sub_1A4879108);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v366 = v798;
      sub_1A5249744();
      sub_1A488AF00(v365, sub_1A4879108);
      sub_1A488B840(v366, v808, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v367 = v805;
      sub_1A5249744();
      sub_1A488AF00(v366, sub_1A48790C0);
      sub_1A488B840(v367, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v367, sub_1A4879078);
      v368 = type metadata accessor for LemonadeAlbumsView;
      goto LABEL_78;
    case 2u:
      sub_1A488BC3C(0, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
      swift_allocObject();

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 3u:

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 4u:
      v314 = *(v245 + 1);
      v818 = *(v245 + 2);
      *&v819[0] = *(v245 + 6);
      v315 = *v245;
      v817 = v314;
      v816 = v315;
      v316 = v818;
      v317 = *(v818 + 16);
      if (v317)
      {
        *&v824 = MEMORY[0x1E69E7CC0];
        sub_1A488BCE0(0, v317, 0);
        v318 = v824;
        v319 = v802 + 16;
        v802 = *(v802 + 16);
        v320 = v316 + ((*(v319 + 64) + 32) & ~*(v319 + 64));
        v801 = *(v319 + 56);
        v321 = (v319 - 8);
        v322 = v578;
        do
        {
          v323 = v814;
          v324 = v815;
          (v802)(v814, v320, v815);
          sub_1A47D6CF0(v323, v322);
          (*v321)(v323, v324);
          *&v824 = v318;
          v326 = *(v318 + 16);
          v325 = *(v318 + 24);
          if (v326 >= v325 >> 1)
          {
            sub_1A488BCE0((v325 > 1), v326 + 1, 1);
            v318 = v824;
          }

          *(v318 + 16) = v326 + 1;
          sub_1A488B4D0(v322, v318 + ((*(v800 + 80) + 32) & ~*(v800 + 80)) + *(v800 + 72) * v326, type metadata accessor for LemonadeEventsFeature.FeedProvider);
          v320 += v801;
          --v317;
        }

        while (v317);
      }

      LOBYTE(v824) = 5;
      sub_1A48793D0(&qword_1EB12A218, type metadata accessor for LemonadeEventsFeature.FeedProvider, &unk_1A5361ED8);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 5u:
      v401 = *(v245 + 1);
      v824 = *v245;
      v825 = v401;
      v826 = *(v245 + 2);
      v827 = *(v245 + 6);
      v402 = v803;
      sub_1A4333AD4();
      v404 = v403;
      *&v830 = v405;
      *(&v830 + 1) = v403;
      v406 = sub_1A48797A4();
      v407 = sub_1A48793D0(&qword_1EB12A2E8, sub_1A4338D2C, &unk_1A5330C90);

      v408 = v404;
      v267 = v602;
      sub_1A3F75F48(&v830, v402, &type metadata for LemonadeTripsFeature.SectionedFeedProvider, v406, v407, v602);
      sub_1A488AC98(v267, v671, sub_1A487970C);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB129D20, sub_1A48795A0, &unk_1A530B210);
      sub_1A48793D0(&qword_1EB129D30, sub_1A487970C, &unk_1A530B210);
      v409 = v672;
      sub_1A5249744();
      sub_1A488AC98(v409, v734, sub_1A4879558);
      swift_storeEnumTagMultiPayload();
      sub_1A487B578();
      sub_1A487B654();
      v410 = v735;
      sub_1A5249744();
      sub_1A488B2CC(v409, sub_1A4879558);
      sub_1A488B840(v410, v769, sub_1A4879510);
      swift_storeEnumTagMultiPayload();
      sub_1A487B158();
      sub_1A487B4F8();
      v411 = v770;
      sub_1A5249744();
      sub_1A488AF00(v410, sub_1A4879510);
      sub_1A488B840(v411, v797, sub_1A4879108);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v412 = v798;
      sub_1A5249744();
      sub_1A488AF00(v411, sub_1A4879108);
      sub_1A488B840(v412, v808, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v413 = v805;
      sub_1A5249744();
      sub_1A488AF00(v412, sub_1A48790C0);
      sub_1A488B840(v413, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A4192CAC(&v824);

      sub_1A488AF00(v413, sub_1A4879078);
      v272 = sub_1A487970C;
      goto LABEL_73;
    case 6u:
      *(v819 + 9) = *(v245 + 57);
      v420 = *(v245 + 3);
      v818 = *(v245 + 2);
      v819[0] = v420;
      v421 = *v245;
      v817 = *(v245 + 1);
      v816 = v421;
      v422 = v818;
      v423 = *(v818 + 16);
      if (v423)
      {
        *&v824 = MEMORY[0x1E69E7CC0];
        sub_1A488BC90(0, v423, 0);
        v800 = *(v802 + 16);
        v424 = v422 + ((*(v802 + 80) + 32) & ~*(v802 + 80));
        v794 = *(v802 + 72);
        v802 += 16;
        v425 = v814;
        (v800)(v814, v424, v815);
        sub_1A45A408C(v425);
      }

      v426 = v719;
      sub_1A488BA24(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v719);
      v427 = v720;
      v428 = v718;
      v429 = v721;
      (*(v720 + 104))(v718, *MEMORY[0x1E69C2210], v721);
      sub_1A48793D0(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
      sub_1A524C594();
      v430 = *(v427 + 8);
      v430(v428, v429);
      v430(v426, v429);
      v814 = v817;
      LODWORD(v802) = BYTE8(v816);
      v815 = *(&v818 + 1);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 7u:
      v356 = *v245;
      v814 = *(v245 + 2);
      v815 = v356;
      if (v726)
      {
        v357 = v642;
        sub_1A488BA24(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v642);
        v358 = sub_1A5248684();
        (*(v643 + 8))(v357, v644);
        if (v358)
        {
          sub_1A41CF074(v356, v580);
          sub_1A48793D0(&qword_1EB129D88, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider, &unk_1A5324014);

          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        *&v824 = sub_1A3D660F4(0, v356);
        *(&v824 + 1) = v539;
        sub_1A41D4294();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v513 = v762;
      v514 = v719;
      sub_1A488BA24(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v719);
      v515 = v720;
      v516 = v718;
      v517 = v721;
      (*(v720 + 104))(v718, *MEMORY[0x1E69C2200], v721);
      v518 = sub_1A5242D04();
      v519 = *(v515 + 8);
      v519(v516, v517);
      v519(v514, v517);
      if (v518)
      {
        sub_1A41CF074(v815, v580);
        sub_1A48793D0(&qword_1EB129D88, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider, &unk_1A5324014);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v540 = v513 + v246[5];
      v541 = *v540;
      if (*(v540 + 8) == 1)
      {
        v542 = *v540;
        LOBYTE(v830) = v541;
      }

      else
      {

        v547 = sub_1A524D254();
        v548 = sub_1A524A014();
        sub_1A5246DF4(v547, &dword_1A3C1C000, v548, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        v549 = v556;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3DD15BC(v541, 0);
        (*(v557 + 8))(v549, v558);
        v542 = v830;
      }

      if ((v542 - 4) < 3)
      {
        *&v824 = sub_1A3D660F4(0, v815);
        *(&v824 + 1) = v550;
        sub_1A41D4294();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A41CF074(v815, v580);
      sub_1A48793D0(&qword_1EB129D88, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider, &unk_1A5324014);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 8u:
      v815 = *v245;
      v814 = *(v245 + 2);
      if (v726)
      {
        v438 = v642;
        sub_1A488BA24(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v642);
        v439 = sub_1A5248684();
        (*(v643 + 8))(v438, v644);
        if (v439)
        {
          sub_1A3D66128(v815, v583);
          sub_1A48793D0(&qword_1EB129ED0, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider, &unk_1A52F98B0);

          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        *&v824 = sub_1A3D660F4(0, v815);
        *(&v824 + 1) = v543;
        sub_1A3D6FFF4();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v520 = v762;
      v521 = v719;
      sub_1A488BA24(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v719);
      v522 = v720;
      v523 = v718;
      v524 = v721;
      (*(v720 + 104))(v718, *MEMORY[0x1E69C2200], v721);
      v525 = sub_1A5242D04();
      v526 = *(v522 + 8);
      v526(v523, v524);
      v526(v521, v524);
      if (v525)
      {
        sub_1A3D66128(v815, v583);
        sub_1A48793D0(&qword_1EB129ED0, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider, &unk_1A52F98B0);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v544 = v520 + v246[5];
      v545 = *v544;
      if (*(v544 + 8) == 1)
      {
        v546 = *v544;
        LOBYTE(v830) = v545;
      }

      else
      {

        v551 = sub_1A524D254();
        v552 = sub_1A524A014();
        sub_1A5246DF4(v551, &dword_1A3C1C000, v552, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        v553 = v556;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3DD15BC(v545, 0);
        (*(v557 + 8))(v553, v558);
        v546 = v830;
      }

      if ((v546 - 4) < 3)
      {
        *&v824 = sub_1A3D660F4(0, v815);
        *(&v824 + 1) = v554;
        sub_1A3D6FFF4();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3D66128(v815, v583);
      sub_1A48793D0(&qword_1EB129ED0, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider, &unk_1A52F98B0);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 9u:
      sub_1A4618004(*v245, v607);
      sub_1A48793D0(&qword_1EB129EA0, type metadata accessor for LemonadeWallpaperFeature.FeedProvider, &unk_1A53513B8);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 0xAu:
      sub_1A44ED184(*v245, v609);
      sub_1A48793D0(&qword_1EB13C9B8, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider, &unk_1A534401C);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 0xBu:
      v296 = *(v245 + 3);
      v832 = *(v245 + 2);
      v833 = v296;
      v834 = *(v245 + 4);
      v297 = *(v245 + 1);
      v830 = *v245;
      v831 = v297;
      sub_1A3F3A30C(v803, &v824);
    case 0xCu:
      v327 = *(v245 + 3);
      v832 = *(v245 + 2);
      v833 = v327;
      v834 = *(v245 + 4);
      *&v835 = *(v245 + 10);
      v328 = *(v245 + 1);
      v830 = *v245;
      v831 = v328;
      sub_1A47ACB88(&v830, &v822);
      v329 = v803;
      sub_1A418E3C8(v803, &v816);

      sub_1A47AB4A8(&v822, &v816, v329, &v824);
      sub_1A488B8A8(&v824, v687);
      swift_storeEnumTagMultiPayload();
      sub_1A47ACC7C();
      sub_1A48793D0(&qword_1EB129B90, type metadata accessor for GenerativeStoryCreationView, &protocol conformance descriptor for GenerativeStoryCreationView);
      v330 = v690;
      sub_1A5249744();
      sub_1A488B748(v330, v739);
      swift_storeEnumTagMultiPayload();
      sub_1A487BF78();
      sub_1A487C058();
      v331 = v741;
      sub_1A5249744();
      sub_1A488B7C8(v330);
      sub_1A488AC98(v331, v779, sub_1A487A1F8);
      swift_storeEnumTagMultiPayload();
      sub_1A487B8B0();
      sub_1A487BEF8();
      v332 = v782;
      sub_1A5249744();
      sub_1A488B2CC(v331, sub_1A487A1F8);
      sub_1A488AC98(v332, v797, sub_1A4879C58);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v333 = v798;
      sub_1A5249744();
      sub_1A488B2CC(v332, sub_1A4879C58);
      sub_1A488B840(v333, v808, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v334 = v805;
      sub_1A5249744();
      sub_1A488AF00(v333, sub_1A48790C0);
      sub_1A488B840(v334, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v334, sub_1A4879078);
      sub_1A488B904(&v824);
      return sub_1A3EEDCF8(&v830);
    case 0xDu:
      v267 = v628;
      sub_1A488B4D0(v245, v628, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      *(&v825 + 1) = v622;
      *&v826 = sub_1A48793D0(&qword_1EB125FA0, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v824);
      sub_1A488AC98(v267, boxed_opaque_existential_1, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      v415 = v803;
      sub_1A418E3C8(v803, &v830);

      sub_1A42EBAE8(&v824, &v830, v415, &v816);
      sub_1A488B698(&v816, &v824);
      v828 = 0;
      sub_1A44D55D4();
      sub_1A3D8FAD0();
      sub_1A5249744();
      sub_1A488B388(&v822, &v830, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView);
      BYTE9(v833) = 1;
      v416 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, v416);
      sub_1A487C4B0();
      sub_1A487C550();
      sub_1A5249744();
      sub_1A488B40C(&v822, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView);
      sub_1A488AC98(&v824, v774, sub_1A487A530);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530(0);
      sub_1A487C224();
      sub_1A487C430();
      v417 = v775;
      sub_1A5249744();
      sub_1A488B2CC(&v824, sub_1A487A530);
      sub_1A488AC98(v417, v792, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v418 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v417, sub_1A487A3E4);
      sub_1A488AC98(v418, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v419 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v418, sub_1A487A39C);
      sub_1A488B840(v419, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v419, sub_1A4879078);
      sub_1A488B6F4(&v816);
      v272 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration;
      goto LABEL_73;
    case 0xEu:
      v287 = v245;
      v288 = v626;
      sub_1A488B4D0(v287, v626, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      *(&v825 + 1) = v619;
      *&v826 = sub_1A48793D0(&unk_1EB12AD20, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      v289 = __swift_allocate_boxed_opaque_existential_1(&v824);
      sub_1A488AC98(v288, v289, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      v290 = v803;
      sub_1A418E3C8(v803, &v830);

      sub_1A42EBAE8(&v824, &v830, v290, &v816);
      sub_1A488B698(&v816, &v824);
      v828 = 0;
      sub_1A44D55D4();
      sub_1A5249744();
      sub_1A488B388(&v822, &v830, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView);
      BYTE9(v833) = 0;
      v291 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, v291);
      sub_1A487C4B0();
      sub_1A487C550();
      sub_1A5249744();
      sub_1A488B40C(&v822, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView);
      sub_1A488AC98(&v824, v774, sub_1A487A530);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530(0);
      sub_1A487C224();
      sub_1A487C430();
      v292 = v775;
      sub_1A5249744();
      sub_1A488B2CC(&v824, sub_1A487A530);
      sub_1A488AC98(v292, v792, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v293 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v292, sub_1A487A3E4);
      sub_1A488AC98(v293, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v294 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v293, sub_1A487A39C);
      sub_1A488B840(v294, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v294, sub_1A4879078);
      sub_1A488B6F4(&v816);
      v295 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration;
      goto LABEL_66;
    case 0xFu:
      v342 = v245;
      v288 = v627;
      sub_1A488B4D0(v342, v627, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      *(&v825 + 1) = v621;
      *&v826 = sub_1A48793D0(&qword_1EB12E448, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration, &unk_1A5342948);
      v343 = __swift_allocate_boxed_opaque_existential_1(&v824);
      sub_1A488AC98(v288, v343, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      v344 = v803;
      sub_1A418E3C8(v803, &v830);

      sub_1A42EBAE8(&v824, &v830, v344, &v816);
      sub_1A488B698(&v816, &v824);
      v828 = 1;
      sub_1A44D55D4();
      sub_1A5249744();
      sub_1A488B388(&v822, &v830, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView);
      BYTE9(v833) = 0;
      v345 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, v345);
      sub_1A487C4B0();
      sub_1A487C550();
      sub_1A5249744();
      sub_1A488B40C(&v822, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView);
      sub_1A488AC98(&v824, v774, sub_1A487A530);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530(0);
      sub_1A487C224();
      sub_1A487C430();
      v346 = v775;
      sub_1A5249744();
      sub_1A488B2CC(&v824, sub_1A487A530);
      sub_1A488AC98(v346, v792, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v347 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v346, sub_1A487A3E4);
      sub_1A488AC98(v347, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v348 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v347, sub_1A487A39C);
      sub_1A488B840(v348, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v348, sub_1A4879078);
      sub_1A488B6F4(&v816);
      v295 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration;
      goto LABEL_66;
    case 0x10u:
      v267 = v625;
      sub_1A488B4D0(v245, v625, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      *(&v825 + 1) = v618;
      *&v826 = sub_1A48793D0(&qword_1EB12AD48, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingMemoryGridConfiguration);
      v280 = __swift_allocate_boxed_opaque_existential_1(&v824);
      sub_1A488AC98(v267, v280, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      v281 = v803;
      sub_1A418E3C8(v803, &v830);

      sub_1A42EBAE8(&v824, &v830, v281, &v822);
      sub_1A488B698(&v822, &v830);
      BYTE8(v833) = 1;
      sub_1A44D55D4();
      v282 = MEMORY[0x1E6981E70];
      sub_1A5249744();
      sub_1A488B388(&v824, v744, &qword_1EB122590, v282, &type metadata for LemonadePhotosPagingGridView);
      swift_storeEnumTagMultiPayload();
      sub_1A488BC3C(0, &qword_1EB122590, v282, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A487C2A4();
      sub_1A487C384();
      v283 = v745;
      sub_1A5249744();
      sub_1A488B40C(&v824, &qword_1EB122590, v282, &type metadata for LemonadePhotosPagingGridView);
      sub_1A488AC98(v283, v774, sub_1A487A42C);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530(0);
      sub_1A487C224();
      sub_1A487C430();
      v284 = v775;
      sub_1A5249744();
      sub_1A488B2CC(v283, sub_1A487A42C);
      sub_1A488AC98(v284, v792, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v285 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v284, sub_1A487A3E4);
      sub_1A488AC98(v285, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v286 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v285, sub_1A487A39C);
      sub_1A488B840(v286, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v286, sub_1A4879078);
      sub_1A488B6F4(&v822);
      v272 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration;
      goto LABEL_73;
    case 0x11u:
      v380 = v245[8];
      *&v830 = *v245;
      BYTE8(v830) = v380;
      v381 = v830;
      v382 = v803;
      sub_1A418E3C8(v803, &v822);

      sub_1A3D8EF94(&v830, &v822, v382, &v824);
      v383 = v824;
      v828 = 1;
      sub_1A44D55D4();
      sub_1A3D8FAD0();
      v384 = v383;

      sub_1A5249744();
      sub_1A488B388(&v822, &v830, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView);
      BYTE9(v833) = 1;
      v385 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, v385);
      sub_1A487C4B0();
      sub_1A487C550();
      sub_1A5249744();
      sub_1A488B40C(&v822, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView);
      sub_1A488AC98(&v824, v774, sub_1A487A530);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530(0);
      sub_1A487C224();
      sub_1A487C430();
      v386 = v775;
      sub_1A5249744();
      sub_1A488B2CC(&v824, sub_1A487A530);
      sub_1A488AC98(v386, v792, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v387 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v386, sub_1A487A3E4);
      sub_1A488AC98(v387, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v388 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v387, sub_1A487A39C);
      sub_1A488B840(v388, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      return sub_1A488AF00(v388, sub_1A4879078);
    case 0x12u:
      v431 = *(v245 + 3);
      v820[2] = *(v245 + 2);
      v820[3] = v431;
      v821 = *(v245 + 8);
      v432 = *v245;
      v820[1] = *(v245 + 1);
      v820[0] = v432;
      sub_1A42721B8(v820, &v824);
      v433 = v803;
      sub_1A418E3C8(v803, &v830);

      sub_1A42716F0(&v824, &v830, v433, &v816);
      sub_1A488B5E8(&v816, &v824);
      v829[24] = 0;
      sub_1A427224C();
      sub_1A42EC7EC();
      sub_1A5249744();
      sub_1A488B388(&v822, &v830, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView);
      BYTE9(v835) = 0;
      v434 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB122A48, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E69E73E0], v434);
      sub_1A487C6FC();
      sub_1A487C7A8();
      sub_1A5249744();
      sub_1A488B40C(&v822, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView);
      sub_1A488AC98(&v824, v764, sub_1A487A630);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630(0);
      sub_1A487C67C();
      sub_1A487C854();
      v435 = v766;
      sub_1A5249744();
      sub_1A488B2CC(&v824, sub_1A487A630);
      sub_1A488AC98(v435, v792, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v436 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v435, sub_1A487A5E8);
      sub_1A488AC98(v436, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v437 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v436, sub_1A487A39C);
      sub_1A488B840(v437, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v437, sub_1A4879078);
      sub_1A488B644(&v816);
      return sub_1A3EEDBFC(v820);
    case 0x13u:
      v474 = *v245;
      v473 = *(v245 + 1);
      v475 = *(v245 + 2);
      v476 = *(v245 + 3);
      *(&v825 + 1) = &type metadata for LemonadeUserAlbumsPhotosPagingGridConfiguration;
      *&v826 = sub_1A3EEDBA8();
      v477 = swift_allocObject();
      *&v824 = v477;
      v477[2] = v474;
      v477[3] = v473;
      v477[4] = v475;
      v477[5] = v476;
      v394 = v476;

      v478 = v803;
      sub_1A418E3C8(v803, &v830);

      sub_1A42EBAE8(&v824, &v830, v478, &v816);
      sub_1A488B538(&v816, &v824);
      v829[24] = 1;
      sub_1A427224C();
      sub_1A42EC7EC();
      v396 = &type metadata for LemonadePeoplePhotosPagingGridView;
      v397 = &type metadata for LemonadeAlbumsPhotosPagingGridView;
      sub_1A5249744();
      v398 = &qword_1EB122A38;
      sub_1A488B388(&v822, &v830, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView);
      BYTE9(v835) = 0;
      v399 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E697F960]);
      v400 = MEMORY[0x1E69E73E0];
      goto LABEL_61;
    case 0x14u:
      v389 = *v245;
      v390 = *(v245 + 1);
      v391 = *(v245 + 2);
      v392 = *(v245 + 3);
      *(&v825 + 1) = &type metadata for LemonadeSharedAlbumsPhotosPagingGridConfiguration;
      *&v826 = sub_1A3EEDB54();
      v393 = swift_allocObject();
      *&v824 = v393;
      v393[2] = v389;
      v393[3] = v390;
      v393[4] = v391;
      v393[5] = v392;
      v394 = v392;

      v395 = v803;
      sub_1A418E3C8(v803, &v830);

      sub_1A42EBAE8(&v824, &v830, v395, &v816);
      sub_1A488B538(&v816, &v824);
      v828 = 0;
      sub_1A42EC7EC();
      v396 = &type metadata for LemonadeAlbumsPhotosPagingGridView;
      v397 = MEMORY[0x1E69E73E0];
      sub_1A5249744();
      v398 = &qword_1EB122A48;
      sub_1A488B388(&v822, &v830, &qword_1EB122A48, &type metadata for LemonadeAlbumsPhotosPagingGridView, v397);
      BYTE9(v835) = 1;
      v399 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E697F960]);
      v400 = v397;
LABEL_61:
      sub_1A488BC3C(0, &qword_1EB122A48, &type metadata for LemonadeAlbumsPhotosPagingGridView, v400, v399);
      sub_1A487C6FC();
      sub_1A487C7A8();
      sub_1A5249744();
      sub_1A488B40C(&v822, v398, v396, v397);
      sub_1A488AC98(&v824, v764, sub_1A487A630);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630(0);
      sub_1A487C67C();
      sub_1A487C854();
      v479 = v766;
      sub_1A5249744();
      sub_1A488B2CC(&v824, sub_1A487A630);
      sub_1A488AC98(v479, v792, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v480 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v479, sub_1A487A5E8);
      sub_1A488AC98(v480, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v481 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v480, sub_1A487A39C);
      sub_1A488B840(v481, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v481, sub_1A4879078);
      return sub_1A488B594(&v816);
    case 0x15u:
      result = sub_1A524E6E4();
      __break(1u);
      return result;
    case 0x16u:
      v267 = v630;
      sub_1A488B4D0(v245, v630, type metadata accessor for LemonadeMemoryPlayerConfiguration);
      v349 = v624;
      sub_1A488AC98(v267, v624, type metadata accessor for LemonadeMemoryPlayerConfiguration);
      v350 = v631;
      sub_1A498A8C0(v349, v631);
      sub_1A488AC98(v350, v709, type metadata accessor for LemonadeMemoryPlayerView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB129F00, type metadata accessor for LemonadeMemoryPlayerView, &unk_1A5378240);
      sub_1A487CA34();
      v351 = v712;
      sub_1A5249744();
      sub_1A488AC98(v351, v760, sub_1A487A770);
      swift_storeEnumTagMultiPayload();
      sub_1A487C8D4();
      sub_1A487C984();
      v352 = v754;
      sub_1A5249744();
      sub_1A488B2CC(v351, sub_1A487A770);
      sub_1A488AC98(v352, v764, sub_1A487A6EC);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630(0);
      sub_1A487C67C();
      sub_1A487C854();
      v353 = v766;
      sub_1A5249744();
      sub_1A488B2CC(v352, sub_1A487A6EC);
      sub_1A488AC98(v353, v792, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v354 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v353, sub_1A487A5E8);
      sub_1A488AC98(v354, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v355 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v354, sub_1A487A39C);
      sub_1A488B840(v355, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v355, sub_1A4879078);
      sub_1A488B2CC(v350, type metadata accessor for LemonadeMemoryPlayerView);
      v272 = type metadata accessor for LemonadeMemoryPlayerConfiguration;
      goto LABEL_73;
    case 0x17u:
      v441 = *v245;
      v440 = *(v245 + 1);
      v442 = v245[16];
      sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
      v443 = [swift_getObjCClassFromMetadata() sharedInstance];
      v444 = [v443 lemonadeActivityShelfShouldOpenActivityFeedModallyByItself];

      if (v444)
      {
        *&v824 = v441;
        *(&v824 + 1) = v440;
        LOBYTE(v825) = v442;
        v445 = v803;

        v446 = v577;
        sub_1A4031754(&v824, v445, v577);
        sub_1A488AC98(v446, v656, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
        swift_storeEnumTagMultiPayload();
        sub_1A48793D0(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView, &unk_1A53139C0);
        sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView, &unk_1A537941C);
        v447 = v657;
        sub_1A5249744();
        v448 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView;
      }

      else
      {
        sub_1A4030DDC(v441, v440, v442);
        v527 = v803;

        v446 = v725;
        sub_1A49B6BC0(v528, v527, 3, v725);
        sub_1A488AC98(v446, v656, type metadata accessor for LemonadeAlbumsView);
        swift_storeEnumTagMultiPayload();
        sub_1A48793D0(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView, &unk_1A53139C0);
        sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView, &unk_1A537941C);
        v447 = v657;
        sub_1A5249744();
        v448 = type metadata accessor for LemonadeAlbumsView;
      }

      sub_1A488B2CC(v446, v448);
      v529 = v813;
      v530 = v808;
      v531 = v760;
      sub_1A488AC98(v447, v709, sub_1A487A7B8);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB129F00, type metadata accessor for LemonadeMemoryPlayerView, &unk_1A5378240);
      sub_1A487CA34();
      v532 = v712;
      sub_1A5249744();
      sub_1A488AC98(v532, v531, sub_1A487A770);
      swift_storeEnumTagMultiPayload();
      sub_1A487C8D4();
      sub_1A487C984();
      v533 = v754;
      sub_1A5249744();
      sub_1A488B2CC(v532, sub_1A487A770);
      sub_1A488AC98(v533, v764, sub_1A487A6EC);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630(0);
      sub_1A487C67C();
      sub_1A487C854();
      v267 = v447;
      v534 = v766;
      sub_1A5249744();
      sub_1A488B2CC(v533, sub_1A487A6EC);
      sub_1A488AC98(v534, v792, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v535 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v534, sub_1A487A5E8);
      sub_1A488AC98(v535, v530, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v536 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v535, sub_1A487A39C);
      sub_1A488B840(v536, v529, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v536, sub_1A4879078);
      v272 = sub_1A487A7B8;
      goto LABEL_73;
    case 0x18u:
      v453 = *v245;
      v454 = v803;

      sub_1A3C5A374();
      v267 = v629;
      sub_1A4578344(v453, v454, v629);
      sub_1A488AC98(v267, v701, type metadata accessor for LemonadeAccountView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A3B0, type metadata accessor for LemonadeAccountView, &unk_1A534B7D0);
      sub_1A3EED6DC();
      v455 = v704;
      sub_1A5249744();
      sub_1A488AC98(v455, v760, sub_1A487A734);
      swift_storeEnumTagMultiPayload();
      sub_1A487C8D4();
      sub_1A487C984();
      v456 = v754;
      sub_1A5249744();
      sub_1A488B2CC(v455, sub_1A487A734);
      sub_1A488AC98(v456, v764, sub_1A487A6EC);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630(0);
      sub_1A487C67C();
      sub_1A487C854();
      v457 = v766;
      sub_1A5249744();
      sub_1A488B2CC(v456, sub_1A487A6EC);
      sub_1A488AC98(v457, v792, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v458 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v457, sub_1A487A5E8);
      sub_1A488AC98(v458, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v459 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v458, sub_1A487A39C);
      sub_1A488B840(v459, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v459, sub_1A4879078);
      v272 = type metadata accessor for LemonadeAccountView;
      goto LABEL_73;
    case 0x19u:
      v306 = *(v245 + 5);
      v834 = *(v245 + 4);
      v835 = v306;
      v836[0] = *(v245 + 6);
      *(v836 + 11) = *(v245 + 107);
      v307 = *(v245 + 1);
      v830 = *v245;
      v831 = v307;
      v308 = *(v245 + 3);
      v832 = *(v245 + 2);
      v833 = v308;
      sub_1A3EED680(&v830, &v822);
      sub_1A412FC64(&v822, &v824);
      sub_1A4135258(&v824, v701);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A3B0, type metadata accessor for LemonadeAccountView, &unk_1A534B7D0);
      sub_1A3EED6DC();
      v309 = v704;
      sub_1A5249744();
      sub_1A488AC98(v309, v760, sub_1A487A734);
      swift_storeEnumTagMultiPayload();
      sub_1A487C8D4();
      sub_1A487C984();
      v310 = v754;
      sub_1A5249744();
      sub_1A488B2CC(v309, sub_1A487A734);
      sub_1A488AC98(v310, v764, sub_1A487A6EC);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630(0);
      sub_1A487C67C();
      sub_1A487C854();
      v311 = v766;
      sub_1A5249744();
      sub_1A488B2CC(v310, sub_1A487A6EC);
      sub_1A488AC98(v311, v792, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v312 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v311, sub_1A487A5E8);
      sub_1A488AC98(v312, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v313 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v312, sub_1A487A39C);
      sub_1A488B840(v313, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v313, sub_1A4879078);
      sub_1A3EED730(&v824);
      return sub_1A3EED784(&v830);
    case 0x1Au:
      v298 = v245;
      v288 = v616;
      sub_1A488B4D0(v298, v616, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      v299 = v611;
      sub_1A488AC98(v288, v611, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      v300 = v617;
      GenerativeStoryCreationView.init(configuration:)(v299, v617);
      sub_1A488AC98(v300, v687, type metadata accessor for GenerativeStoryCreationView);
      swift_storeEnumTagMultiPayload();
      sub_1A47ACC7C();
      sub_1A48793D0(&qword_1EB129B90, type metadata accessor for GenerativeStoryCreationView, &protocol conformance descriptor for GenerativeStoryCreationView);
      v301 = v690;
      sub_1A5249744();
      sub_1A488B748(v301, v739);
      swift_storeEnumTagMultiPayload();
      sub_1A487BF78();
      sub_1A487C058();
      v302 = v741;
      sub_1A5249744();
      sub_1A488B7C8(v301);
      sub_1A488AC98(v302, v779, sub_1A487A1F8);
      swift_storeEnumTagMultiPayload();
      sub_1A487B8B0();
      sub_1A487BEF8();
      v303 = v782;
      sub_1A5249744();
      sub_1A488B2CC(v302, sub_1A487A1F8);
      sub_1A488AC98(v303, v797, sub_1A4879C58);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v304 = v798;
      sub_1A5249744();
      sub_1A488B2CC(v303, sub_1A4879C58);
      sub_1A488B840(v304, v808, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v305 = v805;
      sub_1A5249744();
      sub_1A488AF00(v304, sub_1A48790C0);
      sub_1A488B840(v305, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v305, sub_1A4879078);
      sub_1A488B2CC(v300, type metadata accessor for GenerativeStoryCreationView);
      v295 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration;
      goto LABEL_66;
    case 0x1Bu:
      v487 = v593;
      sub_1A44055B0(*v245, v593);
      v488 = sub_1A48793D0(&qword_1EB1296F0, type metadata accessor for LemonadeICloudLinksFeedProvider, &unk_1A5339B68);
      v489 = v803;

      v288 = v597;
      sub_1A4784928(v487, v489, 0, 0xE000000000000000, v595, v488, v597);
      sub_1A488AC98(v288, v666, sub_1A4879320);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A8E0, sub_1A4879320, &unk_1A535F1A0);
      sub_1A487B418();
      v490 = v668;
      sub_1A5249744();
      sub_1A488AC98(v490, v729, sub_1A48792D8);
      swift_storeEnumTagMultiPayload();
      sub_1A487B1D8();
      sub_1A487B368();
      v491 = v730;
      sub_1A5249744();
      sub_1A488B2CC(v490, sub_1A48792D8);
      sub_1A488AC98(v491, v769, sub_1A4879150);
      swift_storeEnumTagMultiPayload();
      sub_1A487B158();
      sub_1A487B4F8();
      v492 = v770;
      sub_1A5249744();
      sub_1A488B2CC(v491, sub_1A4879150);
      sub_1A488B840(v492, v797, sub_1A4879108);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v493 = v798;
      sub_1A5249744();
      sub_1A488AF00(v492, sub_1A4879108);
      sub_1A488B840(v493, v808, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v494 = v805;
      sub_1A5249744();
      sub_1A488AF00(v493, sub_1A48790C0);
      sub_1A488B840(v494, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v494, sub_1A4879078);
      v295 = sub_1A4879320;
      goto LABEL_66;
    case 0x1Cu:
      *&v824 = *v245;
      swift_unknownObjectRetain();
      v267 = v632;
      sub_1A43BD234(&v824, v632);
      sub_1A488AC98(v267, v710, type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB129320, type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable, &unk_1A5336148);
      sub_1A484F120();
      v268 = v713;
      sub_1A5249744();
      sub_1A488AC98(v268, v753, sub_1A487A8D8);
      swift_storeEnumTagMultiPayload();
      sub_1A487CCD8();
      sub_1A487CD88();
      v269 = v755;
      sub_1A5249744();
      sub_1A488B2CC(v268, sub_1A487A8D8);
      sub_1A488AC98(v269, v781, sub_1A487A890);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C(0);
      sub_1A487CC58();
      sub_1A487CE8C();
      v270 = v783;
      sub_1A5249744();
      sub_1A488B2CC(v269, sub_1A487A890);
      sub_1A488AC98(v270, v787, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4, MEMORY[0x1E6982090]);
      v271 = v789;
      sub_1A5249744();
      sub_1A488B2CC(v270, sub_1A487A848);
      sub_1A488AC98(v271, v813, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      swift_unknownObjectRelease();
      sub_1A488B2CC(v271, sub_1A487A800);
      v272 = type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable;
      goto LABEL_73;
    case 0x1Du:
      v460 = *v245;
      v461 = v803;

      v267 = v620;
      sub_1A431ED94(v461, v460, v620);
      sub_1A488AC98(v267, v694, type metadata accessor for LemonadeBookmarksEditView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&unk_1EB129DE8, type metadata accessor for LemonadeBookmarksEditView, &unk_1A532FF88);
      sub_1A48793D0(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView, &unk_1A5319E48);
      v462 = v695;
      sub_1A5249744();
      sub_1A488AC98(v462, v744, sub_1A487A4E8);
      swift_storeEnumTagMultiPayload();
      sub_1A488BC3C(0, &qword_1EB122590, MEMORY[0x1E6981E70], &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A487C2A4();
      sub_1A487C384();
      v463 = v745;
      sub_1A5249744();
      sub_1A488B2CC(v462, sub_1A487A4E8);
      sub_1A488AC98(v463, v774, sub_1A487A42C);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530(0);
      sub_1A487C224();
      sub_1A487C430();
      v464 = v775;
      sub_1A5249744();
      sub_1A488B2CC(v463, sub_1A487A42C);
      sub_1A488AC98(v464, v792, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v465 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v464, sub_1A487A3E4);
      sub_1A488AC98(v465, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v466 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v465, sub_1A487A39C);
      sub_1A488B840(v466, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v466, sub_1A4879078);
      v272 = type metadata accessor for LemonadeBookmarksEditView;
      goto LABEL_73;
    case 0x1Eu:

      v267 = v623;
      sub_1A40EE7AC(v467, v623);
      sub_1A488AC98(v267, v694, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&unk_1EB129DE8, type metadata accessor for LemonadeBookmarksEditView, &unk_1A532FF88);
      sub_1A48793D0(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView, &unk_1A5319E48);
      v468 = v695;
      sub_1A5249744();
      sub_1A488AC98(v468, v744, sub_1A487A4E8);
      swift_storeEnumTagMultiPayload();
      sub_1A488BC3C(0, &qword_1EB122590, MEMORY[0x1E6981E70], &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A487C2A4();
      sub_1A487C384();
      v469 = v745;
      sub_1A5249744();
      sub_1A488B2CC(v468, sub_1A487A4E8);
      sub_1A488AC98(v469, v774, sub_1A487A42C);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530(0);
      sub_1A487C224();
      sub_1A487C430();
      v470 = v775;
      sub_1A5249744();
      sub_1A488B2CC(v469, sub_1A487A42C);
      sub_1A488AC98(v470, v792, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v471 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v470, sub_1A487A3E4);
      sub_1A488AC98(v471, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v472 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v471, sub_1A487A39C);
      sub_1A488B840(v472, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v472, sub_1A4879078);
      v272 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView;
      goto LABEL_73;
    case 0x1Fu:
      *&v830 = *v245;
      swift_unknownObjectRetain();
      sub_1A3C757C0(&v830, &v824);
      *v710 = v824;
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB129320, type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable, &unk_1A5336148);
      sub_1A484F120();
      swift_unknownObjectRetain();
      v369 = v713;
      sub_1A5249744();
      sub_1A488AC98(v369, v753, sub_1A487A8D8);
      swift_storeEnumTagMultiPayload();
      sub_1A487CCD8();
      sub_1A487CD88();
      v370 = v755;
      sub_1A5249744();
      sub_1A488B2CC(v369, sub_1A487A8D8);
      sub_1A488AC98(v370, v781, sub_1A487A890);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C(0);
      sub_1A487CC58();
      sub_1A487CE8C();
      v277 = v783;
      sub_1A5249744();
      v278 = sub_1A487A890;
      v279 = v370;
      goto LABEL_38;
    case 0x20u:
      v335 = v633;
      sub_1A43C87EC(*v245, v633);
      v336 = sub_1A48793D0(&qword_1EB129638, type metadata accessor for LemonadeSharedWithYouFeedProvider, &unk_1A53368D8);
      v337 = v803;

      v267 = v636;
      sub_1A4784928(v335, v337, 0, 0xE000000000000000, v634, v336, v636);
      sub_1A488AC98(v267, v716, sub_1A487A9BC);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A8D0, sub_1A487A9BC, &unk_1A535F1A0);
      sub_1A487CE38();
      v338 = v717;
      sub_1A5249744();
      sub_1A488AC98(v338, v753, sub_1A487A980);
      swift_storeEnumTagMultiPayload();
      sub_1A487CCD8();
      sub_1A487CD88();
      v339 = v755;
      sub_1A5249744();
      sub_1A488B2CC(v338, sub_1A487A980);
      sub_1A488AC98(v339, v781, sub_1A487A890);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C(0);
      sub_1A487CC58();
      sub_1A487CE8C();
      v340 = v783;
      sub_1A5249744();
      sub_1A488B2CC(v339, sub_1A487A890);
      sub_1A488AC98(v340, v787, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4, MEMORY[0x1E6982090]);
      v341 = v789;
      sub_1A5249744();
      sub_1A488B2CC(v340, sub_1A487A848);
      sub_1A488AC98(v341, v813, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488B2CC(v341, sub_1A487A800);
      v272 = sub_1A487A9BC;
LABEL_73:
      v378 = v272;
      v379 = v267;
      return sub_1A488B2CC(v379, v378);
    case 0x21u:
      v371 = *v245;
      PXDisplayCollectionDetailedCountsMake();
      v373 = v372;
      *v716 = v372;
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A8D0, sub_1A487A9BC, &unk_1A535F1A0);
      sub_1A487CE38();
      v374 = v373;
      v375 = v717;
      sub_1A5249744();
      sub_1A488AC98(v375, v753, sub_1A487A980);
      swift_storeEnumTagMultiPayload();
      sub_1A487CCD8();
      sub_1A487CD88();
      v376 = v755;
      sub_1A5249744();
      sub_1A488B2CC(v375, sub_1A487A980);
      sub_1A488AC98(v376, v781, sub_1A487A890);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C(0);
      sub_1A487CC58();
      sub_1A487CE8C();
      v377 = v783;
      sub_1A5249744();
      sub_1A488B2CC(v376, sub_1A487A890);
      sub_1A488AC98(v377, v787, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4, MEMORY[0x1E6982090]);
      v266 = v789;
      sub_1A5249744();
      sub_1A488B2CC(v377, sub_1A487A848);
      sub_1A488AC98(v266, v813, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      goto LABEL_40;
    case 0x22u:
      *&v830 = *v245;
      swift_unknownObjectRetain();
      sub_1A3C757C0(&v830, &v824);
      *(&v824 + 1) = 0;
      LOBYTE(v825) = 0;
      sub_1A48728E0();
      sub_1A47EFEE4();
      swift_unknownObjectRetain();
      sub_1A5249744();
      v830 = v822;
      LOBYTE(v831) = v823;
      BYTE9(v833) = 0;
      v276 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, v276);
      sub_1A487CF0C();
      sub_1A487CFB8();
      sub_1A5249744();
      sub_1A488AC98(&v824, v781, sub_1A487AA6C);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C(0);
      sub_1A487CC58();
      sub_1A487CE8C();
      v277 = v783;
      sub_1A5249744();
      v278 = sub_1A487AA6C;
      v279 = &v824;
LABEL_38:
      sub_1A488B2CC(v279, v278);
      sub_1A488AC98(v277, v787, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4, MEMORY[0x1E6982090]);
      v266 = v789;
      sub_1A5249744();
      sub_1A488B2CC(v277, sub_1A487A848);
      sub_1A488AC98(v266, v813, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 0x23u:
      v273 = *v245;
      v274 = *(v245 + 1);
      v275 = *(v245 + 3);
      v815 = v274;
      v814 = v275;
      if (v273 && (([v273 px_isMacSyncedFacesFolder] & 1) != 0 || objc_msgSend(v273, sel_px_isMacSyncedEventsFolder)))
      {
        sub_1A43D8EB4(v273, v274, v562);
        sub_1A48793D0(&qword_1EB1297C8, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider, &unk_1A53371C0);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v503 = v803;

      v505 = v725;
      sub_1A49B6BC0(v504, v503, 1, v725);
      sub_1A488AC98(v505, v599, type metadata accessor for LemonadeAlbumsView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A8F0, sub_1A4879460, &unk_1A535F1A0);
      sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView, &unk_1A537941C);
      v288 = v601;
      sub_1A5249744();
      sub_1A488B2CC(v505, type metadata accessor for LemonadeAlbumsView);
      v506 = v813;
      v507 = v808;
      sub_1A488AC98(v288, v666, sub_1A4879418);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A8E0, sub_1A4879320, &unk_1A535F1A0);
      sub_1A487B418();
      v508 = v668;
      sub_1A5249744();
      sub_1A488AC98(v508, v729, sub_1A48792D8);
      swift_storeEnumTagMultiPayload();
      sub_1A487B1D8();
      sub_1A487B368();
      v509 = v730;
      sub_1A5249744();
      sub_1A488B2CC(v508, sub_1A48792D8);
      sub_1A488AC98(v509, v769, sub_1A4879150);
      swift_storeEnumTagMultiPayload();
      sub_1A487B158();
      sub_1A487B4F8();
      v510 = v770;
      sub_1A5249744();
      sub_1A488B2CC(v509, sub_1A4879150);
      sub_1A488B840(v510, v797, sub_1A4879108);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v511 = v798;
      sub_1A5249744();
      sub_1A488AF00(v510, sub_1A4879108);
      sub_1A488B840(v511, v507, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v512 = v805;
      sub_1A5249744();
      sub_1A488AF00(v511, sub_1A48790C0);
      sub_1A488B840(v512, v506, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v512, sub_1A4879078);
      v295 = sub_1A4879418;
LABEL_66:
      v378 = v295;
      v379 = v288;
      return sub_1A488B2CC(v379, v378);
    case 0x24u:
      v256 = *v245;
      *(swift_allocObject() + 16) = v256;
      v257 = v256;
      PXDisplayCollectionDetailedCountsMake();
      *&v824 = v258;
      *(&v824 + 1) = v259;
      LOBYTE(v825) = 1;
      sub_1A48728E0();
      sub_1A47EFEE4();

      sub_1A5249744();
      v830 = v822;
      LOBYTE(v831) = v823;
      BYTE9(v833) = 0;
      v260 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, v260);
      sub_1A487CF0C();
      sub_1A487CFB8();
      sub_1A5249744();
      goto LABEL_8;
    case 0x25u:
      v261 = *v245;
      *(swift_allocObject() + 16) = v261;
      v257 = v261;
      PXDisplayCollectionDetailedCountsMake();
      *&v824 = v262;
      *(&v824 + 1) = v263;
      v828 = 0;
      sub_1A47EFEE4();
      sub_1A3EED3F4();

      sub_1A5249744();
      sub_1A488B388(&v822, &v830, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView);
      BYTE9(v833) = 1;
      v264 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, v264);
      sub_1A487CF0C();
      sub_1A487CFB8();
      sub_1A5249744();
      sub_1A488B40C(&v822, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView);
LABEL_8:
      sub_1A488AC98(&v824, v781, sub_1A487AA6C);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C(0);
      sub_1A487CC58();
      sub_1A487CE8C();
      v265 = v783;
      sub_1A5249744();
      sub_1A488B2CC(&v824, sub_1A487AA6C);
      sub_1A488AC98(v265, v787, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4, MEMORY[0x1E6982090]);
      v266 = v789;
      sub_1A5249744();
      sub_1A488B2CC(v265, sub_1A487A848);
      sub_1A488AC98(v266, v813, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

LABEL_40:
      v378 = sub_1A487A800;
      v379 = v266;
      return sub_1A488B2CC(v379, v378);
    case 0x26u:
      v251 = *(v245 + 1);
      v816 = *v245;
      v817 = v251;
      v818 = *(v245 + 2);
      *&v819[0] = *(v245 + 6);
      sub_1A3EED448(&v816, &v824);
      sub_1A43F83A0(&v824, v820);
      sub_1A488B32C(v820, &v824);
      v828 = 1;
      sub_1A47EFEE4();
      sub_1A3EED3F4();
      sub_1A5249744();
      sub_1A488B388(&v822, &v830, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView);
      BYTE9(v833) = 1;
      v252 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, v252);
      sub_1A487CF0C();
      sub_1A487CFB8();
      sub_1A5249744();
      sub_1A488B40C(&v822, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView);
      sub_1A488AC98(&v824, v781, sub_1A487AA6C);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C(0);
      sub_1A487CC58();
      sub_1A487CE8C();
      v253 = v783;
      sub_1A5249744();
      sub_1A488B2CC(&v824, sub_1A487AA6C);
      sub_1A488AC98(v253, v787, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4, MEMORY[0x1E6982090]);
      v254 = v789;
      sub_1A5249744();
      sub_1A488B2CC(v253, sub_1A487A848);
      sub_1A488AC98(v254, v813, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488B2CC(v254, sub_1A487A800);
      sub_1A488B47C(v820);
      return sub_1A3EED4A4(&v816);
    case 0x27u:
      BYTE8(v833) = 0;
      sub_1A44D55D4();
      v482 = MEMORY[0x1E6981E70];
      sub_1A5249744();
      sub_1A488B388(&v824, v744, &qword_1EB122590, v482, &type metadata for LemonadePhotosPagingGridView);
      swift_storeEnumTagMultiPayload();
      sub_1A488BC3C(0, &qword_1EB122590, v482, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A487C2A4();
      sub_1A487C384();
      v483 = v745;
      sub_1A5249744();
      sub_1A488B40C(&v824, &qword_1EB122590, v482, &type metadata for LemonadePhotosPagingGridView);
      sub_1A488AC98(v483, v774, sub_1A487A42C);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530(0);
      sub_1A487C224();
      sub_1A487C430();
      v484 = v775;
      sub_1A5249744();
      sub_1A488B2CC(v483, sub_1A487A42C);
      sub_1A488AC98(v484, v792, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v485 = v794;
      sub_1A5249744();
      sub_1A488B2CC(v484, sub_1A487A3E4);
      sub_1A488AC98(v485, v808, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v486 = v805;
      sub_1A5249744();
      sub_1A488B2CC(v485, sub_1A487A39C);
      sub_1A488B840(v486, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      return sub_1A488AF00(v486, sub_1A4879078);
    case 0x28u:
      if (*(v762 + v246[11]))
      {
        v449 = v803;

        v362 = v635;
        sub_1A4470B1C(v450, v449, v635);
        v451 = 0;
        v452 = v813;
      }

      else
      {
        v451 = 1;
        v452 = v813;
        v362 = v635;
      }

      v537 = type metadata accessor for LemonadeRootView(0);
      (*(*(v537 - 8) + 56))(v362, v451, 1, v537);
      sub_1A488AC98(v362, v787, sub_1A487AB28);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4, MEMORY[0x1E6982090]);
      v538 = v789;
      sub_1A5249744();
      sub_1A488AC98(v538, v452, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488B2CC(v538, sub_1A487A800);
      v368 = sub_1A487AB28;
      goto LABEL_78;
    default:
      v248 = *v245;
      v249 = *(v245 + 1);
      v815 = *(v245 + 3);
      if (v248 && [v248 px_isRegularFolder])
      {
        sub_1A45F17A8(v248, v249, v239);
        v250 = sub_1A48793D0(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider, &unk_1A534FD40);
        v814 = v249;
        v802 = v250;

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v495 = v803;

      v497 = v725;
      sub_1A49B6BC0(v496, v495, 0, v725);
      sub_1A488AC98(v497, v592, type metadata accessor for LemonadeAlbumsView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A950, sub_1A4879228, &unk_1A535F1A0);
      sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView, &unk_1A537941C);
      v362 = v594;
      sub_1A5249744();
      sub_1A488B2CC(v497, type metadata accessor for LemonadeAlbumsView);
      v498 = v770;
      sub_1A488AC98(v362, v662, sub_1A48791E0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B288();
      sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView, &unk_1A537941C);
      v499 = v663;
      sub_1A5249744();
      sub_1A488AC98(v499, v729, sub_1A4879198);
      swift_storeEnumTagMultiPayload();
      sub_1A487B1D8();
      sub_1A487B368();
      v500 = v730;
      sub_1A5249744();
      sub_1A488B2CC(v499, sub_1A4879198);
      sub_1A488AC98(v500, v769, sub_1A4879150);
      swift_storeEnumTagMultiPayload();
      sub_1A487B158();
      sub_1A487B4F8();
      sub_1A5249744();
      sub_1A488B2CC(v500, sub_1A4879150);
      sub_1A488B840(v498, v797, sub_1A4879108);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v501 = v798;
      sub_1A5249744();
      sub_1A488AF00(v498, sub_1A4879108);
      sub_1A488B840(v501, v808, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v502 = v805;
      sub_1A5249744();
      sub_1A488AF00(v501, sub_1A48790C0);
      sub_1A488B840(v502, v813, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v502, sub_1A4879078);
      v368 = sub_1A48791E0;
LABEL_78:
      v378 = v368;
      v379 = v362;
      return sub_1A488B2CC(v379, v378);
  }
}