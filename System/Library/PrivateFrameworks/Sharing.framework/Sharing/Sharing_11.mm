uint64_t sub_1A9868B18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A986ED1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9868B4C(uint64_t a1)
{
  v2 = sub_1A986DAA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9868B88(uint64_t a1)
{
  v2 = sub_1A986DAA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.AskRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34E0, &qword_1A999B328);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986DAA4();
  sub_1A9977AA0();
  LOBYTE(v21) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  sub_1A986DBC0(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  sub_1A99776E0();
  if (!v2)
  {
    v9 = type metadata accessor for SFAirDropReceive.AskRequest(0);
    v10 = v3 + v9[5];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v21 = *v10;
    v22 = v11;
    v23 = v12;
    HIBYTE(v20) = 1;
    sub_1A9867B38(v21, v11, v12);
    sub_1A986DAF8();
    sub_1A99776E0();
    sub_1A984D578(v21, v22, v23);
    LOBYTE(v21) = 2;
    sub_1A99776F0();
    LOBYTE(v21) = 3;
    sub_1A99776A0();
    LOBYTE(v21) = 4;
    sub_1A99776A0();
    LOBYTE(v21) = 5;
    sub_1A99776A0();
    LOBYTE(v21) = 6;
    sub_1A9977650();
    LOBYTE(v21) = 7;
    sub_1A9977690();
    LOBYTE(v21) = 8;
    sub_1A9977690();
    LOBYTE(v21) = 9;
    sub_1A9977690();
    LOBYTE(v21) = 10;
    sub_1A9977650();
    LOBYTE(v21) = 11;
    sub_1A9977650();
    LOBYTE(v21) = 12;
    sub_1A9977650();
    LOBYTE(v21) = 13;
    sub_1A9977650();
    LOBYTE(v21) = 14;
    sub_1A9977650();
    LOBYTE(v21) = 15;
    sub_1A9977690();
    v21 = *(v3 + v9[20]);
    v13 = v21;
    HIBYTE(v20) = 16;
    sub_1A986DB4C();
    v14 = v13;
    sub_1A99776E0();

    v21 = *(v3 + v9[21]);
    HIBYTE(v20) = 17;
    v15 = v21;
    sub_1A99776E0();

    v21 = *(v3 + v9[22]);
    HIBYTE(v20) = 18;
    v16 = v21;
    sub_1A99776E0();

    LOBYTE(v21) = 19;
    sub_1A9977650();
    LOBYTE(v21) = 20;
    type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
    sub_1A986DBC0(&qword_1EB3B3508, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription, &protocol conformance descriptor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    sub_1A9977680();
    v21 = *(v3 + v9[25]);
    HIBYTE(v20) = 21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3510, &unk_1A999B330);
    sub_1A986DD04(&qword_1EB3B3518, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E64F0]);
    sub_1A99776E0();
    v21 = *(v3 + v9[26]);
    HIBYTE(v20) = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3520, &qword_1A99A18D0);
    sub_1A986DDA0(&qword_1EB3B3528, sub_1A986DC08, MEMORY[0x1E69E64F0]);
    sub_1A99776E0();
    v18 = v3 + v9[27];
    v19 = *(v18 + 8);
    v21 = *v18;
    v22 = v19;
    HIBYTE(v20) = 23;
    sub_1A97C1554(v21, v19);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v21, v22);
  }

  return (*(v6 + 8))(v8, v5);
}

void SFAirDropReceive.AskRequest.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34D8, &qword_1A999B320);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v86 - v5;
  v7 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3538, &qword_1A999B340);
  v10 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v12 = &v86 - v11;
  v13 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v14[20];
  v92 = a1;
  v93 = v17;
  *&v16[v17] = 0;
  v94 = v14[21];
  *&v16[v94] = 0;
  v96 = v16;
  v97 = v14;
  v95 = v14[22];
  *&v16[v95] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986DAA4();
  v90 = v12;
  sub_1A9977A70();
  if (v2)
  {
    v18 = v96;
    v19 = v97;
    __swift_destroy_boxed_opaque_existential_0Tm(v92);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    goto LABEL_4;
  }

  v88 = v6;
  LOBYTE(v98) = 0;
  sub_1A986DBC0(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  sub_1A99775F0();
  v23 = v96;
  sub_1A986E044(v9, v96, type metadata accessor for SFAirDrop.TransferIdentifier);
  v101 = 1;
  sub_1A986DC5C();
  sub_1A99775F0();
  v24 = 0;
  v25 = v97;
  v26 = v99;
  v27 = v23 + v97[5];
  *v27 = v98;
  *(v27 + 16) = v26;
  LOBYTE(v98) = 2;
  *(v23 + v25[6]) = sub_1A9977600();
  LOBYTE(v98) = 3;
  *(v23 + v25[7]) = sub_1A99775B0() & 1;
  LOBYTE(v98) = 4;
  *(v23 + v25[8]) = sub_1A99775B0() & 1;
  LOBYTE(v98) = 5;
  *(v23 + v25[9]) = sub_1A99775B0() & 1;
  LOBYTE(v98) = 6;
  v28 = sub_1A9977550();
  v29 = (v23 + v25[10]);
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v98) = 7;
  v31 = sub_1A99775A0();
  v32 = (v23 + v25[11]);
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v98) = 8;
  v34 = sub_1A99775A0();
  v87 = 0;
  v35 = (v23 + v25[12]);
  *v35 = v34;
  v35[1] = v36;
  LOBYTE(v98) = 9;
  v37 = v87;
  v38 = sub_1A99775A0();
  v87 = v37;
  if (v37)
  {
    (*(v10 + 8))(v90, v91);
    v86 = 0;
    v100 = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
LABEL_47:
    v18 = v96;
    v19 = v97;
    __swift_destroy_boxed_opaque_existential_0Tm(v92);
    sub_1A986DED4(v18, type metadata accessor for SFAirDrop.TransferIdentifier);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_22;
  }

  v40 = &v96[v97[13]];
  *v40 = v38;
  v40[1] = v39;
  LOBYTE(v98) = 10;
  v41 = v87;
  v42 = sub_1A9977550();
  v87 = v41;
  if (v41)
  {
    (*(v10 + 8))(v90, v91);
    v100 = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v86 = 1;
    goto LABEL_47;
  }

  v44 = &v96[v97[14]];
  *v44 = v42;
  v44[1] = v43;
  LOBYTE(v98) = 11;
  v45 = v87;
  v46 = sub_1A9977550();
  v87 = v45;
  if (v45)
  {
    (*(v10 + 8))(v90, v91);
    v100 = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v86 = 0x100000001;
    goto LABEL_47;
  }

  v48 = &v96[v97[15]];
  *v48 = v46;
  v48[1] = v47;
  LOBYTE(v98) = 12;
  v49 = v87;
  v50 = sub_1A9977550();
  v87 = v49;
  if (v49)
  {
    (*(v10 + 8))(v90, v91);
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v86 = 0x100000001;
    v100 = 1;
    goto LABEL_47;
  }

  v52 = &v96[v97[16]];
  *v52 = v50;
  v52[1] = v51;
  LOBYTE(v98) = 13;
  v53 = v87;
  v54 = sub_1A9977550();
  v87 = v53;
  if (v53)
  {
    (*(v10 + 8))(v90, v91);
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v86 = 0x100000001;
    v100 = 1;
    LODWORD(v88) = 1;
    goto LABEL_47;
  }

  v56 = &v96[v97[17]];
  *v56 = v54;
  v56[1] = v55;
  LOBYTE(v98) = 14;
  v57 = v87;
  v58 = sub_1A9977550();
  v87 = v57;
  if (v57)
  {
    (*(v10 + 8))(v90, v91);
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v86 = 0x100000001;
    v100 = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    goto LABEL_47;
  }

  v60 = &v96[v97[18]];
  *v60 = v58;
  v60[1] = v59;
  LOBYTE(v98) = 15;
  v61 = v87;
  v62 = sub_1A99775A0();
  v87 = v61;
  if (v61)
  {
    (*(v10 + 8))(v90, v91);
    LODWORD(v91) = 0;
    v86 = 0x100000001;
    v100 = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    LODWORD(v90) = 1;
    goto LABEL_47;
  }

  v64 = &v96[v97[19]];
  *v64 = v62;
  v64[1] = v63;
  v101 = 16;
  sub_1A986DCB0();
  v65 = v87;
  sub_1A99775F0();
  v87 = v65;
  if (v65 || (v66 = v98, v67 = v93, v68 = v96, *&v96[v93], *(v68 + v67) = v66, v101 = 17, v69 = v87, sub_1A99775F0(), (v87 = v69) != 0))
  {
    (*(v10 + 8))(v90, v91);
    v86 = 0x100000001;
    v100 = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    LODWORD(v90) = 1;
    LODWORD(v91) = 1;
    goto LABEL_47;
  }

  v70 = v98;
  v71 = v94;
  v72 = v96;

  *(v72 + v71) = v70;
  v101 = 18;
  v73 = v87;
  sub_1A99775F0();
  v87 = v73;
  if (v73 || (v74 = v98, v76 = v95, v75 = v96, *&v96[v95], *(v75 + v76) = v74, LOBYTE(v98) = 19, v77 = v87, v78 = sub_1A9977550(), (v87 = v77) != 0))
  {
    (*(v10 + 8))(v90, v91);
    v24 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
  }

  else
  {
    v80 = &v96[v97[23]];
    *v80 = v78;
    v80[1] = v79;
    type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
    LOBYTE(v98) = 20;
    sub_1A986DBC0(&qword_1EB3B3558, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription, &protocol conformance descriptor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    v81 = v87;
    sub_1A9977590();
    v87 = v81;
    if (v81)
    {
      (*(v10 + 8))(v90, v91);
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v24 = 1;
    }

    else
    {
      sub_1A986C6B8(v88, &v96[v97[24]]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3510, &unk_1A999B330);
      v101 = 21;
      sub_1A986DD04(&qword_1EB3B3560, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6510]);
      v82 = v87;
      sub_1A99775F0();
      v87 = v82;
      if (v82)
      {
        (*(v10 + 8))(v90, v91);
        v21 = 0;
        v20 = 0;
        v24 = 1;
        v22 = 1;
      }

      else
      {
        *&v96[v97[25]] = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3520, &qword_1A99A18D0);
        v101 = 22;
        sub_1A986DDA0(&qword_1EB3B3568, sub_1A986DE18, MEMORY[0x1E69E6510]);
        v83 = v87;
        sub_1A99775F0();
        v87 = v83;
        if (v83)
        {
          (*(v10 + 8))(v90, v91);
          v20 = 0;
          v24 = 1;
          v22 = 1;
          v21 = 1;
        }

        else
        {
          *&v96[v97[26]] = v98;
          v101 = 23;
          sub_1A97B446C();
          v84 = v87;
          sub_1A9977590();
          v87 = v84;
          if (!v84)
          {
            (*(v10 + 8))(v90, v91);
            v85 = v96;
            *&v96[v97[27]] = v98;
            sub_1A986DE6C(v85, v89, type metadata accessor for SFAirDropReceive.AskRequest);
            __swift_destroy_boxed_opaque_existential_0Tm(v92);
            sub_1A986DED4(v85, type metadata accessor for SFAirDropReceive.AskRequest);
            return;
          }

          (*(v10 + 8))(v90, v91);
          v24 = 1;
          v22 = 1;
          v21 = 1;
          v20 = 1;
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v92);
  v18 = v96;
  sub_1A986DED4(v96, type metadata accessor for SFAirDrop.TransferIdentifier);
  LODWORD(v91) = 1;
  LODWORD(v90) = 1;
  LODWORD(v89) = 1;
  LODWORD(v88) = 1;
  v100 = 1;
  v86 = 0x100000001;
  v19 = v97;
LABEL_22:
  sub_1A984D578(*(v18 + v19[5]), *(v18 + v19[5] + 8), *(v18 + v19[5] + 16));

  if (v86)
  {

    if ((v86 & 0x100000000) != 0)
    {
LABEL_16:

      if ((v100 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if (HIDWORD(v86))
  {
    goto LABEL_16;
  }

  if (!v100)
  {
LABEL_17:
    if (v88)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:

  if (v88)
  {
LABEL_18:

    if ((v89 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v89)
  {
LABEL_19:
    if (v90)
    {
      goto LABEL_20;
    }

LABEL_28:
    if (!v91)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

LABEL_27:

  if ((v90 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_20:

  if ((v91 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:

LABEL_4:

  if (v24)
  {

    if (!v22)
    {
      goto LABEL_6;
    }
  }

  else if (!v22)
  {
LABEL_6:
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_11:
    if (!v20)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_1A97B06FC(v18 + v19[24], &qword_1EB3B34D8, &qword_1A999B320);
  if (!v21)
  {
    goto LABEL_11;
  }

LABEL_7:

  if (!v20)
  {
    return;
  }

LABEL_12:
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.fileBomPath.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.fileName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.fileType.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.init(convertMediaFormats:fileBomPath:fileIsDirectory:fileName:fileSubType:fileType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

unint64_t sub_1A986A3C0()
{
  v1 = *v0;
  v2 = 0x506D6F42656C6966;
  v3 = 0x656D614E656C6966;
  v4 = 0x54627553656C6966;
  if (v1 != 4)
  {
    v4 = 0x65707954656C6966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x69447349656C6966;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1A986A49C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A986F4B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A986A4C4(uint64_t a1)
{
  v2 = sub_1A986DF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986A500(uint64_t a1)
{
  v2 = sub_1A986DF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3578, &qword_1A999B348);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = v7;
  v14 = *(v1 + 24);
  v8 = *(v1 + 32);
  v13[4] = *(v1 + 40);
  v13[5] = v8;
  v9 = *(v1 + 48);
  v13[1] = *(v1 + 56);
  v10 = *(v1 + 72);
  v13[2] = *(v1 + 64);
  v13[3] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986DF34();
  sub_1A9977AA0();
  v23 = 0;
  v11 = v17;
  sub_1A99776A0();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = v10;
  v22 = 1;
  sub_1A9977690();
  v21 = 2;
  sub_1A99776A0();
  v20 = 3;
  sub_1A9977690();
  v19 = 4;
  sub_1A9977650();
  v18 = 5;
  sub_1A9977690();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  sub_1A99779A0();
  sub_1A99768D0();
  sub_1A99779A0();
  sub_1A99768D0();
  sub_1A99779A0();
  if (v2)
  {
    sub_1A99768D0();
  }

  return sub_1A99768D0();
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.hashValue.getter()
{
  v1 = *(v0 + 56);
  sub_1A9977980();
  sub_1A99779A0();
  sub_1A99768D0();
  sub_1A99779A0();
  sub_1A99768D0();
  sub_1A99779A0();
  if (v1)
  {
    sub_1A99768D0();
  }

  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3588, &qword_1A999B350);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986DF34();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v37[0] = 0;
  v9 = sub_1A99775B0();
  v37[0] = 1;
  v10 = sub_1A99775A0();
  v12 = v11;
  v31 = v10;
  v37[0] = 2;
  v46 = sub_1A99775B0();
  v37[0] = 3;
  *&v30 = sub_1A99775A0();
  *(&v30 + 1) = v13;
  v37[0] = 4;
  *&v29 = sub_1A9977550();
  *(&v29 + 1) = v14;
  v47 = 5;
  v15 = sub_1A99775A0();
  v16 = v9 & 1;
  v28 = v16;
  v46 &= 1u;
  v17 = v15;
  v18 = v8;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  LOBYTE(v32) = v16;
  v21 = v31;
  *(&v32 + 1) = v31;
  *&v33 = v12;
  BYTE8(v33) = v46;
  v22 = v30;
  v34 = v30;
  v23 = *(&v29 + 1);
  v35 = v29;
  *&v36 = v17;
  *(&v36 + 1) = v20;
  v24 = v29;
  a2[2] = v30;
  a2[3] = v24;
  a2[4] = v36;
  v25 = v33;
  *a2 = v32;
  a2[1] = v25;
  sub_1A986DF88(&v32, v37);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v37[0] = v28;
  v38 = v21;
  v39 = v12;
  v40 = v46;
  v41 = __PAIR128__(*(&v30 + 1), v22);
  v42 = v29;
  v43 = v23;
  v44 = v17;
  v45 = v20;
  return sub_1A986DFC0(v37);
}

uint64_t sub_1A986AD48()
{
  sub_1A9977980();
  SFAirDropReceive.AskRequest.ItemInfo.hash(into:)(v1);
  return sub_1A99779B0();
}

uint64_t sub_1A986AD8C(uint64_t a1)
{
  sub_1A9977980();
  SFAirDropReceive.AskRequest.ItemInfo.hash(into:)(v2);
  return sub_1A99779B0();
}

uint64_t SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A9977510();

  v6 = 9;
  if (v4 < 9)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.init(stringValue:)@<X0>(_BYTE *a3@<X8>)
{
  result = SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.init(rawValue:)(&v5);
  *a3 = v5;
  return result;
}

unint64_t sub_1A986AE7C()
{
  v1 = 0xD00000000000001CLL;
  v2 = *v0;
  if (v2 <= 3)
  {
    v7 = 0xD000000000000022;
    if (v2 != 2)
    {
      v7 = 0xD000000000000026;
    }

    if (*v0)
    {
      v1 = 0xD00000000000002ALL;
    }

    if (*v0 <= 1u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v3 = 0xD000000000000024;
    v4 = 0xD000000000000028;
    if (v2 != 7)
    {
      v4 = 0xD000000000000020;
    }

    if (v2 != 6)
    {
      v3 = v4;
    }

    v5 = 0xD00000000000002BLL;
    if (v2 == 4)
    {
      v5 = 0xD000000000000025;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1A986AF8C()
{
  v1 = *v0;
  sub_1A9977980();
  sub_1A9928B8C(v3, v1);
  return sub_1A99779B0();
}

uint64_t sub_1A986AFDC(uint64_t a1)
{
  v2 = *v1;
  sub_1A9977980();
  sub_1A9928B8C(v4, v2);
  return sub_1A99779B0();
}

uint64_t sub_1A986B02C@<X0>(uint64_t *a1@<X8>)
{
  result = SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A986B058@<X0>(_BYTE *a3@<X8>)
{
  result = SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.init(rawValue:)(&v5);
  *a3 = v5;
  return result;
}

uint64_t sub_1A986B090(uint64_t a1)
{
  v2 = sub_1A986DFF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986B0CC(uint64_t a1)
{
  v2 = sub_1A986DFF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.AskRequest.AdvancedItemsDescription.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1A9976230();
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3590, &qword_1A999B358);
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  v9 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1A986DFF0();
  v13 = v59;
  sub_1A9977A70();
  if (!v13)
  {
    v54 = v5;
    v55 = v3;
    v59 = v11;
    v14 = v57;
    v15 = v58;
    LOBYTE(v61) = 0;
    v16 = v6;
    v17 = sub_1A99775A0();
    v19 = v18;
    LOBYTE(v61) = 1;
    v20 = sub_1A9977580();
    v21 = v14;
    if (v22)
    {
      LOBYTE(v61) = 2;
      v23 = sub_1A9977550();
      if (v24)
      {
        v52 = v23;
        v53 = v24;
        LOBYTE(v61) = 3;
        sub_1A986DBC0(&qword_1EB3B0CE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
        sub_1A99775F0();
        LOBYTE(v61) = 4;
        v32 = sub_1A9977560();
        (*(v14 + 8))(v8, v16);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B35A0, &qword_1A999B360);
        v34 = *(v33 + 64);
        v35 = *(v33 + 80);
        v36 = v59;
        *v59 = v17;
        v36[1] = v19;
        v37 = v53;
        v36[2] = v52;
        v36[3] = v37;
        (*(v56 + 32))(v36 + v34, v54, v55);
        *(v36 + v35) = v32 & 1;
      }

      else
      {
        LOBYTE(v61) = 5;
        v28 = sub_1A9977580();
        if (v29)
        {
          LOBYTE(v61) = 6;
          v30 = sub_1A9977580();
          v55 = v8;
          v56 = v17;
          if ((v31 & 1) == 0)
          {
            v26 = v15;
            v61 = 0;
            v62 = 0xE000000000000000;
            v43 = v30;
            sub_1A99772B0();

            v61 = 0xD00000000000001BLL;
            v62 = 0x80000001A99E5460;
            v63 = v43;
            v44 = sub_1A9977730();
            MEMORY[0x1AC5895B0](v44);

            (*(v14 + 8))(v55, v16);
            v36 = v59;
            *v59 = v56;
            v36[1] = v19;
            v36[2] = v43;
            goto LABEL_7;
          }

          LOBYTE(v61) = 7;
          v41 = sub_1A9977580();
          if (v42)
          {
            LOBYTE(v61) = 8;
            v47 = sub_1A9977570();
            v49 = v48;
            (*(v14 + 8))(v55, v16);
            v50 = v59;
            *v59 = v56;
            v50[1] = v19;
            if (v49)
            {
              v26 = v15;
              v36 = v59;
              goto LABEL_7;
            }

            v36 = v59;
            v59[2] = v47;
          }

          else
          {
            v45 = v41;
            v61 = 0;
            v62 = 0xE000000000000000;
            sub_1A99772B0();

            v61 = 0xD00000000000001FLL;
            v62 = 0x80000001A99E5440;
            v63 = v45;
            v46 = sub_1A9977730();
            MEMORY[0x1AC5895B0](v46);

            (*(v14 + 8))(v55, v16);
            v36 = v59;
            *v59 = v56;
            v36[1] = v19;
            v36[2] = v45;
          }
        }

        else
        {
          v55 = v28;
          v56 = v17;
          v61 = 0;
          v62 = 0xE000000000000000;
          v38 = v28;
          sub_1A99772B0();

          v61 = 0xD000000000000022;
          v62 = 0x80000001A99E5480;
          v63 = v38;
          v39 = sub_1A9977730();
          MEMORY[0x1AC5895B0](v39);

          (*(v21 + 8))(v8, v16);
          v36 = v59;
          v40 = v55;
          *v59 = v56;
          v36[1] = v19;
          v36[2] = v40;
        }
      }
    }

    else
    {
      v25 = v20;
      (*(v14 + 8))(v8, v16);
      v36 = v59;
      *v59 = v17;
      v36[1] = v19;
      v36[2] = v25;
    }

    v26 = v15;
LABEL_7:
    swift_storeEnumTagMultiPayload();
    sub_1A986E044(v36, v26, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v60);
}

uint64_t SFAirDropReceive.AskRequest.AdvancedItemsDescription.encode(to:)(void *a1)
{
  v2 = sub_1A9976230();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B35A8, &qword_1A999B368);
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986DFF0();
  sub_1A9977AA0();
  sub_1A986DE6C(v26, v7, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v12 = v9;
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *(v7 + 3);
        v24 = *(v7 + 2);
        v26 = v14;
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B35A0, &qword_1A999B360);
        v16 = v25;
        (*(v25 + 32))(v4, &v7[*(v15 + 64)], v2);
        v35 = 0;
        v11 = v27;
        v17 = v28;
        sub_1A9977690();

        if (v17)
        {

          (*(v16 + 8))(v4, v2);
        }

        else
        {
          v34 = 2;
          sub_1A9977690();

          v33 = 3;
          sub_1A986DBC0(&qword_1EB3B0C58, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
          sub_1A99776E0();
          v23 = v25;
          v32 = 4;
          sub_1A99776A0();
          (*(v23 + 8))(v4, v2);
        }

        return (*(v29 + 8))(v12, v11);
      }

      v37 = 0;
      v11 = v27;
      v20 = v28;
      sub_1A9977690();
      if (!v20)
      {

        v36 = 5;
        goto LABEL_19;
      }
    }

    else
    {
      v31 = 0;
      v11 = v27;
      v19 = v28;
      v12 = v9;
      sub_1A9977690();
      if (!v19)
      {

        v30 = 1;
        goto LABEL_19;
      }
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v11 = v27;
    v12 = v9;
    if (EnumCaseMultiPayload == 5)
    {
      v43 = 0;
      v18 = v28;
      sub_1A9977690();
      if (!v18)
      {

        v42 = 8;
        sub_1A99776B0();
        return (*(v29 + 8))(v12, v11);
      }
    }

    else
    {
      v44 = 0;
      sub_1A9977690();
    }
  }

  else
  {
    v11 = v27;
    v12 = v9;
    if (EnumCaseMultiPayload == 3)
    {
      v39 = 0;
      v13 = v28;
      sub_1A9977690();
      if (!v13)
      {

        v38 = 7;
LABEL_19:
        sub_1A99776C0();
        return (*(v29 + 8))(v12, v11);
      }
    }

    else
    {
      v41 = 0;
      v21 = v28;
      sub_1A9977690();
      if (!v21)
      {

        v40 = 6;
        goto LABEL_19;
      }
    }
  }

  (*(v29 + 8))(v12, v11);
}

void *sub_1A986BE88(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1210, &qword_1A99919F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1A986BF0C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3618, &unk_1A999BA70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1A986BFA4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1688, &qword_1A999BA50);
  v4 = *(sub_1A99763B0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1A986C0A0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3610, &qword_1A999BA68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

uint64_t sub_1A986C130(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1A99763B0();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1A986C3D4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A986C52C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v25[3] = v18[3];
      v25[4] = v19;
      v25[1] = v21;
      v25[2] = v20;
      memmove(v11, v18, 0x50uLL);
      if (v14 == v10)
      {
        sub_1A986DF88(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      sub_1A986DF88(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A986C6B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34D8, &qword_1A999B320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s7Sharing16SFAirDropReceiveO10AskRequestV24AdvancedItemsDescriptionO2eeoiySbAG_AGtFZ_0(uint64_t *a1, char *a2)
{
  v106 = a1;
  v107 = a2;
  v2 = sub_1A9976230();
  v104 = *(v2 - 8);
  v105 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v103 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v102 = &v93 - v5;
  v6 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v101 = (&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v93 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v93 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v93 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v93 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v93 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B35F8, &qword_1A999BA58);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v93 - v28;
  v30 = (&v93 + *(v27 + 56) - v28);
  sub_1A986DE6C(v106, &v93 - v28, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  v106 = v30;
  sub_1A986DE6C(v107, v30, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  v107 = v29;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v38 = v103;
    v37 = v104;
    v39 = v105;
    if (!EnumCaseMultiPayload)
    {
      v32 = v107;
      sub_1A986DE6C(v107, v25, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      v33 = *v25;
      v34 = v25[1];
      v35 = v25[2];
      v36 = v106;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_30;
      }

      goto LABEL_45;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v32 = v107;
      sub_1A986DE6C(v107, v20, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      v62 = *v20;
      v63 = v20[1];
      v35 = v20[2];
      v64 = v106;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v65 = *v64;
        v66 = v64[1];
        v67 = v64[2];
        if (v62 != v65 || v63 != v66)
        {
          v69 = sub_1A99777E0();

          if ((v69 & 1) == 0)
          {
            goto LABEL_42;
          }

LABEL_52:
          v61 = v35 == v67;
          goto LABEL_53;
        }

LABEL_51:

        goto LABEL_52;
      }

      goto LABEL_45;
    }

    sub_1A986DE6C(v107, v23, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    v40 = *(v23 + 1);
    v100 = *v23;
    v101 = v40;
    v41 = *(v23 + 3);
    v99 = *(v23 + 2);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B35A0, &qword_1A999B360);
    v43 = *(v42 + 64);
    v44 = *(v42 + 80);
    v45 = v23[v44];
    v46 = v106;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v37 + 8))(&v23[v43], v39);

      v32 = v107;
      goto LABEL_45;
    }

    v47 = *v46;
    v48 = v46[1];
    v49 = v46[3];
    v96 = v46[2];
    v97 = v47;
    v98 = v49;
    LODWORD(v49) = *(v46 + v44);
    v94 = v45;
    v95 = v49;
    v50 = *(v37 + 32);
    v51 = &v23[v43];
    v52 = v39;
    v50(v102, v51, v39);
    v50(v38, v46 + v43, v39);
    if (v100 == v97 && v101 == v48)
    {

      v53 = v107;
    }

    else
    {
      v83 = sub_1A99777E0();

      v53 = v107;
      if ((v83 & 1) == 0)
      {

        v91 = *(v37 + 8);
        v91(v38, v52);
        v91(v102, v52);
        goto LABEL_65;
      }
    }

    v84 = v95;
    v85 = v102;
    if (v99 == v96 && v41 == v98)
    {
    }

    else
    {
      v87 = sub_1A99777E0();

      if ((v87 & 1) == 0)
      {
        v92 = *(v37 + 8);
        v92(v38, v52);
        v92(v85, v52);
        goto LABEL_65;
      }
    }

    v88 = sub_1A99761E0();
    v89 = *(v37 + 8);
    v89(v38, v52);
    v89(v85, v52);
    if (v88)
    {
      v90 = v94 ^ v84;
      sub_1A986DED4(v53, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      return v90 ^ 1u;
    }

LABEL_65:
    sub_1A986DED4(v53, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    return 0;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    v32 = v107;
    if (EnumCaseMultiPayload == 3)
    {
      sub_1A986DE6C(v107, v17, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      v33 = *v17;
      v34 = v17[1];
      v35 = v17[2];
      v36 = v106;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_45;
      }

LABEL_30:
      v70 = *v36;
      v71 = v36[1];
      v67 = v36[2];
      if (v33 != v70 || v34 != v71)
      {
        v73 = sub_1A99777E0();

        if (v73)
        {
          goto LABEL_52;
        }

LABEL_42:
        sub_1A986DED4(v32, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
        return 0;
      }

      goto LABEL_51;
    }

    sub_1A986DE6C(v107, v14, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    v33 = *v14;
    v34 = v14[1];
    v35 = v14[2];
    v36 = v106;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_30;
    }

LABEL_45:

    sub_1A97B06FC(v32, &qword_1EB3B35F8, &qword_1A999BA58);
    return 0;
  }

  v32 = v107;
  if (EnumCaseMultiPayload != 5)
  {
    v74 = v101;
    sub_1A986DE6C(v107, v101, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    v75 = *v74;
    v76 = v74[1];
    v77 = v106;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v78 = *v77;
      v79 = v77[1];
      if (v75 == v78 && v76 == v79)
      {
      }

      else
      {
        v81 = sub_1A99777E0();

        if ((v81 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      sub_1A986DED4(v32, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      return 1;
    }

    goto LABEL_45;
  }

  sub_1A986DE6C(v107, v11, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  v54 = *v11;
  v55 = *(v11 + 1);
  v56 = *(v11 + 2);
  v57 = v106;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_45;
  }

  v58 = *(v57 + 2);
  if (v54 == *v57 && v55 == v57[1])
  {

    v61 = v56 == v58;
    goto LABEL_53;
  }

  v60 = sub_1A99777E0();

  if ((v60 & 1) == 0)
  {
    goto LABEL_42;
  }

  v61 = v56 == v58;
LABEL_53:
  v86 = v61;
  sub_1A986DED4(v32, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  return v86;
}

uint64_t _s7Sharing16SFAirDropReceiveO10AskRequestV8ItemInfoV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[24];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v16 = *(a1 + 9);
  v17 = *(a1 + 8);
  v8 = a2[24];
  v10 = *(a2 + 4);
  v9 = *(a2 + 5);
  v12 = *(a2 + 6);
  v11 = *(a2 + 7);
  v14 = *(a2 + 9);
  v15 = *(a2 + 8);
  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    if (v3 != v8)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_1A99777E0();
    result = 0;
    if (v13 & 1) == 0 || ((v3 ^ v8))
    {
      return result;
    }
  }

  if ((v4 != v10 || v5 != v9) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v11 || (v6 != v12 || v7 != v11) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_20;
  }

  if (v11)
  {
    return 0;
  }

LABEL_20:
  if (v17 == v15 && v16 == v14)
  {
    return 1;
  }

  return sub_1A99777E0();
}

BOOL _s7Sharing16SFAirDropReceiveO10AskRequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34D8, &qword_1A999B320);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v105 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3600, &qword_1A999BA60);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v105 - v12;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v107 = v7;
  v108 = v5;
  v14 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  v15 = v14[5];
  v16 = *(a1 + v15 + 8);
  v17 = *(a1 + v15 + 16);
  v112 = *(a1 + v15);
  v113 = v16;
  v114 = v17;
  v18 = a2 + v15;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v109 = *v18;
  v19 = v109;
  v110 = v20;
  v111 = v21;
  sub_1A9867B38(v112, v16, v17);
  sub_1A9867B38(v19, v20, v21);
  LOBYTE(v19) = _s7Sharing9SFAirDropO12TransferTypeO2eeoiySbAE_AEtFZ_0(&v112, &v109);
  sub_1A984D578(v109, v110, v111);
  sub_1A984D578(v112, v113, v114);
  if ((v19 & 1) == 0 || *(a1 + v14[6]) != *(a2 + v14[6]) || *(a1 + v14[7]) != *(a2 + v14[7]) || *(a1 + v14[8]) != *(a2 + v14[8]) || *(a1 + v14[9]) != *(a2 + v14[9]))
  {
    return 0;
  }

  v23 = v14[10];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27 || (*v24 != *v26 || v25 != v27) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v28 = v14[11];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  v32 = v14[12];
  v33 = *(a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  if ((v33 != *v35 || v34 != v35[1]) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  v36 = v14[13];
  v37 = *(a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  if ((v37 != *v39 || v38 != v39[1]) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  v40 = v14[14];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (!v44 || (*v41 != *v43 || v42 != v44) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v45 = v14[15];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  v50 = v14[16];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  v55 = v14[17];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v60 = v14[18];
  v61 = (a1 + v60);
  v62 = *(a1 + v60 + 8);
  v63 = (a2 + v60);
  v64 = v63[1];
  if (v62)
  {
    if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v65 = v14[19];
  v66 = *(a1 + v65);
  v67 = *(a1 + v65 + 8);
  v68 = (a2 + v65);
  if ((v66 != *v68 || v67 != v68[1]) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  v69 = v14[20];
  v70 = *(a1 + v69);
  v71 = *(a2 + v69);
  if (v70)
  {
    if (!v71)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    v106 = sub_1A986DBC0(&qword_1EB3B3608, type metadata accessor for CGImage, &unk_1A9991650);
    v72 = v71;
    v73 = v70;
    v74 = sub_1A9976320();

    if ((v74 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v75 = v14[21];
  v76 = *(a1 + v75);
  v77 = *(a2 + v75);
  if (v76)
  {
    if (!v77)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    v106 = sub_1A986DBC0(&qword_1EB3B3608, type metadata accessor for CGImage, &unk_1A9991650);
    v78 = v77;
    v79 = v76;
    v80 = sub_1A9976320();

    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  v81 = v14[22];
  v82 = *(a1 + v81);
  v83 = *(a2 + v81);
  if (v82)
  {
    if (!v83)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    v106 = sub_1A986DBC0(&qword_1EB3B3608, type metadata accessor for CGImage, &unk_1A9991650);
    v84 = v83;
    v85 = v82;
    v86 = sub_1A9976320();

    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v83)
  {
    return 0;
  }

  v87 = v14[23];
  v88 = (a1 + v87);
  v89 = *(a1 + v87 + 8);
  v90 = (a2 + v87);
  v91 = v90[1];
  if (v89)
  {
    if (!v91 || (*v88 != *v90 || v89 != v91) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v91)
  {
    return 0;
  }

  v92 = v14[24];
  v93 = *(v11 + 48);
  sub_1A98681F0(a1 + v92, v13);
  sub_1A98681F0(a2 + v92, &v13[v93]);
  v94 = *(v108 + 48);
  if (v94(v13, 1, v4) != 1)
  {
    sub_1A98681F0(v13, v10);
    if (v94(&v13[v93], 1, v4) == 1)
    {
      sub_1A986DED4(v10, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      goto LABEL_89;
    }

    v95 = v107;
    sub_1A986E044(&v13[v93], v107, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    v96 = _s7Sharing16SFAirDropReceiveO10AskRequestV24AdvancedItemsDescriptionO2eeoiySbAG_AGtFZ_0(v10, v95);
    sub_1A986DED4(v95, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    sub_1A986DED4(v10, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    sub_1A97B06FC(v13, &qword_1EB3B34D8, &qword_1A999B320);
    if (v96)
    {
      goto LABEL_91;
    }

    return 0;
  }

  if (v94(&v13[v93], 1, v4) != 1)
  {
LABEL_89:
    sub_1A97B06FC(v13, &qword_1EB3B3600, &qword_1A999BA60);
    return 0;
  }

  sub_1A97B06FC(v13, &qword_1EB3B34D8, &qword_1A999B320);
LABEL_91:
  if ((sub_1A98BB5EC(*(a1 + v14[25]), *(a2 + v14[25])) & 1) == 0 || (sub_1A98BB25C(*(a1 + v14[26]), *(a2 + v14[26])) & 1) == 0)
  {
    return 0;
  }

  v97 = v14[27];
  v98 = a1 + v97;
  v100 = *(a1 + v97);
  v99 = *(v98 + 8);
  v101 = (a2 + v97);
  v103 = *v101;
  v102 = v101[1];
  if (v99 >> 60 == 15)
  {
    if (v102 >> 60 == 15)
    {
      sub_1A97C1554(v100, *(v98 + 8));
      sub_1A97C1554(v103, v102);
      sub_1A97D8688(v100, v99);
      return 1;
    }

    goto LABEL_97;
  }

  if (v102 >> 60 == 15)
  {
LABEL_97:
    sub_1A97C1554(v100, *(v98 + 8));
    sub_1A97C1554(v103, v102);
    sub_1A97D8688(v100, v99);
    sub_1A97D8688(v103, v102);
    return 0;
  }

  sub_1A97C1554(v100, *(v98 + 8));
  sub_1A97C1554(v103, v102);
  v104 = sub_1A993184C(v100, v99, v103, v102);
  sub_1A97D8688(v103, v102);
  sub_1A97D8688(v100, v99);
  return v104;
}

unint64_t sub_1A986DAA4()
{
  result = qword_1EB3B34E8;
  if (!qword_1EB3B34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34E8);
  }

  return result;
}

unint64_t sub_1A986DAF8()
{
  result = qword_1EB3B34F8;
  if (!qword_1EB3B34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34F8);
  }

  return result;
}

unint64_t sub_1A986DB4C()
{
  result = qword_1EB3B3500;
  if (!qword_1EB3B3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3500);
  }

  return result;
}

uint64_t sub_1A986DBC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A986DC08()
{
  result = qword_1EB3B3530;
  if (!qword_1EB3B3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3530);
  }

  return result;
}

unint64_t sub_1A986DC5C()
{
  result = qword_1EB3B3548;
  if (!qword_1EB3B3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3548);
  }

  return result;
}

unint64_t sub_1A986DCB0()
{
  result = qword_1EB3B3550;
  if (!qword_1EB3B3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3550);
  }

  return result;
}

uint64_t sub_1A986DD04(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3510, &unk_1A999B330);
    sub_1A986DBC0(a2, MEMORY[0x1E6968FB0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A986DDA0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3520, &qword_1A99A18D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A986DE18()
{
  result = qword_1EB3B3570;
  if (!qword_1EB3B3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3570);
  }

  return result;
}

uint64_t sub_1A986DE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A986DED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A986DF34()
{
  result = qword_1EB3B3580;
  if (!qword_1EB3B3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3580);
  }

  return result;
}

unint64_t sub_1A986DFF0()
{
  result = qword_1EB3B3598;
  if (!qword_1EB3B3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3598);
  }

  return result;
}

uint64_t sub_1A986E044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A986E0F8()
{
  result = qword_1EB3AC608;
  if (!qword_1EB3AC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC608);
  }

  return result;
}

unint64_t sub_1A986E150()
{
  result = qword_1EB3B35B0;
  if (!qword_1EB3B35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35B0);
  }

  return result;
}

unint64_t sub_1A986E1A8()
{
  result = qword_1EB3B35B8;
  if (!qword_1EB3B35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35B8);
  }

  return result;
}

unint64_t sub_1A986E200()
{
  result = qword_1EB3B35C0;
  if (!qword_1EB3B35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35C0);
  }

  return result;
}

void sub_1A986E27C(uint64_t a1)
{
  type metadata accessor for SFAirDrop.TransferIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_1A97D8914(319, &qword_1EB3AB718, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1A986E3DC(319);
      if (v3 <= 0x3F)
      {
        sub_1A986E434(319);
        if (v4 <= 0x3F)
        {
          sub_1A986E4C8(319);
          if (v5 <= 0x3F)
          {
            sub_1A97D8914(319, &qword_1EB3AC8A8, MEMORY[0x1E6969080]);
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

void sub_1A986E3DC(uint64_t a1)
{
  if (!qword_1EB3AC618)
  {
    type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(255);
    v1 = sub_1A99770A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB3AC618);
    }
  }
}

void sub_1A986E434(uint64_t a1)
{
  if (!qword_1EB3AB688)
  {
    sub_1A9976020();
    sub_1A986DBC0(&qword_1EB3AC8C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1A9976E30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB3AB688);
    }
  }
}

void sub_1A986E4C8(uint64_t a1)
{
  if (!qword_1EB3AB680)
  {
    sub_1A986E524();
    v1 = sub_1A9976E30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB3AB680);
    }
  }
}

unint64_t sub_1A986E524()
{
  result = qword_1EB3AC610;
  if (!qword_1EB3AC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC610);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A986E594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1A986E5DC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1A986E640(uint64_t a1)
{
  sub_1A986E918(319, &qword_1EB3AB748, MEMORY[0x1E69E6530], "subject otherContactsCount ");
  if (v1 <= 0x3F)
  {
    sub_1A986E79C(319);
    if (v2 <= 0x3F)
    {
      sub_1A986E8B0(319, &qword_1EB3AB730, type metadata accessor for SFAirDropiTunesStoreLinkType);
      if (v3 <= 0x3F)
      {
        sub_1A986E8B0(319, &qword_1EB3AB738, type metadata accessor for SFAirDropMusicAppLinkType);
        if (v4 <= 0x3F)
        {
          sub_1A986E8B0(319, &qword_1EB3AB740, type metadata accessor for SFAirDropMapsLinkType);
          if (v5 <= 0x3F)
          {
            sub_1A986E918(319, &qword_1EB3AB750, MEMORY[0x1E69E63B0], "subject duration ");
            if (v6 <= 0x3F)
            {
              sub_1A986E96C();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A986E79C(uint64_t a1)
{
  if (!qword_1EB3AB758)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A9976230();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB3AB758);
    }
  }
}

void sub_1A986E8B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A986E918(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A986E96C()
{
  result = qword_1EB3AB728;
  if (!qword_1EB3AB728)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB3AB728);
  }

  return result;
}

uint64_t _s10AskRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10AskRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A986EB10()
{
  result = qword_1EB3B35C8;
  if (!qword_1EB3B35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35C8);
  }

  return result;
}

unint64_t sub_1A986EB68()
{
  result = qword_1EB3B35D0;
  if (!qword_1EB3B35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35D0);
  }

  return result;
}

unint64_t sub_1A986EBC0()
{
  result = qword_1EB3B35D8;
  if (!qword_1EB3B35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35D8);
  }

  return result;
}

unint64_t sub_1A986EC18()
{
  result = qword_1EB3B35E0;
  if (!qword_1EB3B35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35E0);
  }

  return result;
}

unint64_t sub_1A986EC70()
{
  result = qword_1EB3B35E8;
  if (!qword_1EB3B35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35E8);
  }

  return result;
}

unint64_t sub_1A986ECC8()
{
  result = qword_1EB3B35F0;
  if (!qword_1EB3B35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35F0);
  }

  return result;
}

uint64_t sub_1A986ED1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xED00007365707954 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x416F7475416E6163 && a2 == 0xED00007470656363 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E5520 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73497265646E6573 && a2 == 0xEA0000000000654DLL || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5540 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x75427265646E6573 && a2 == 0xEE004449656C646ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E5560 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F4D7265646E6573 && a2 == 0xEF656D614E6C6564 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D457265646E6573 && a2 == 0xEB000000006C6961 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6D457265646E6573 && a2 == 0xEF687361486C6961 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E5580 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x69467265646E6573 && a2 == 0xEF656D614E747372 || (sub_1A99777E0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x614C7265646E6573 && a2 == 0xEE00656D614E7473 || (sub_1A99777E0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x63497265646E6573 && a2 == 0xEA00000000006E6FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E55A0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4977656976657270 && a2 == 0xEC0000006567616DLL || (sub_1A99777E0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E55C0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A99E55E0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x736D6574496C7275 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x61506D6F74737563 && a2 == 0xED000064616F6C79)
  {

    return 23;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

uint64_t sub_1A986F4B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001A99E5600 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x506D6F42656C6966 && a2 == 0xEB00000000687461 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69447349656C6966 && a2 == 0xEF79726F74636572 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54627553656C6966 && a2 == 0xEB00000000657079 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65707954656C6966 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1A986F6CC(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  if (a1 <= 4u)
  {
    v6 = 0xD00000000000003ELL;
    v7 = 0xD000000000000034;
    if (a1 != 3)
    {
      v7 = 0xD000000000000043;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v1 = 0xD000000000000020;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v3 = 0xD000000000000027;
    if (a1 != 9)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000038;
    if (a1 == 6)
    {
      v4 = 0xD000000000000042;
    }

    if (a1 == 5)
    {
      v4 = 0xD000000000000039;
    }

    if (a1 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A986F808()
{
  v1 = sub_1A99767E0();
  v2 = [v0 cuValueForEntitlementNoCache_];

  if (v2)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A9812E28(v6);
    return 0;
  }
}

uint64_t sub_1A986FA94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1A99764A0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1A9976490();
}

uint64_t sub_1A986FB30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1A99764A0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

double sub_1A986FBF0(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1A99760D0();
  return result;
}

unint64_t sub_1A986FC3C()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 1701669236;
  v4 = 0x69546F4E656D6974;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A986FCD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9872EE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A986FCF8(uint64_t a1)
{
  v2 = sub_1A9870508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FD34(uint64_t a1)
{
  v2 = sub_1A9870508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A986FD70(uint64_t a1)
{
  v2 = sub_1A9870658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FDAC(uint64_t a1)
{
  v2 = sub_1A9870658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A986FDE8(uint64_t a1)
{
  v2 = sub_1A98706AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FE24(uint64_t a1)
{
  v2 = sub_1A98706AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A986FE60(uint64_t a1)
{
  v2 = sub_1A987055C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FE9C(uint64_t a1)
{
  v2 = sub_1A987055C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A986FED8(uint64_t a1)
{
  v2 = sub_1A9870604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FF14(uint64_t a1)
{
  v2 = sub_1A9870604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A986FF50(uint64_t a1)
{
  v2 = sub_1A98705B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FF8C(uint64_t a1)
{
  v2 = sub_1A98705B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OSLogDateFormatter.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3660, &qword_1A999BA90);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3668, &qword_1A999BA98);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3670, &qword_1A999BAA0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3678, &qword_1A999BAA8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3680, &qword_1A999BAB0);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3688, &qword_1A999BAB8);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1A9870508();
  sub_1A9977AA0();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1A9870658();
      v31 = v45;
      sub_1A9977640();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1A98706AC();
      v31 = v45;
      sub_1A9977640();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1A9870604();
      v22 = v33;
      v23 = v45;
      sub_1A9977640();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1A98705B0();
      v22 = v36;
      v23 = v45;
      sub_1A9977640();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1A987055C();
      v22 = v39;
      v23 = v45;
      sub_1A9977640();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_1A9870508()
{
  result = qword_1EB3B3690;
  if (!qword_1EB3B3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3690);
  }

  return result;
}

unint64_t sub_1A987055C()
{
  result = qword_1EB3B3698;
  if (!qword_1EB3B3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3698);
  }

  return result;
}

unint64_t sub_1A98705B0()
{
  result = qword_1EB3B36A0;
  if (!qword_1EB3B36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B36A0);
  }

  return result;
}

unint64_t sub_1A9870604()
{
  result = qword_1EB3B36A8;
  if (!qword_1EB3B36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B36A8);
  }

  return result;
}

unint64_t sub_1A9870658()
{
  result = qword_1EB3B36B0;
  if (!qword_1EB3B36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B36B0);
  }

  return result;
}

unint64_t sub_1A98706AC()
{
  result = qword_1EB3B36B8;
  if (!qword_1EB3B36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B36B8);
  }

  return result;
}

uint64_t OSLogDateFormatter.Style.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36C0, &qword_1A999BAC0);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36C8, &qword_1A999BAC8);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36D0, &qword_1A999BAD0);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36D8, &qword_1A999BAD8);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36E0, &qword_1A999BAE0);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36E8, &unk_1A999BAE8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1A9870508();
  v19 = v61;
  sub_1A9977A70();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_1A9977620();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_1A97B2978();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_1A9977300();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v34 = &type metadata for OSLogDateFormatter.Style;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_1A9870658();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_1A9977530();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_1A98706AC();
      v37 = v46;
      sub_1A9977530();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_1A9870604();
    v38 = v24;
    v39 = v46;
    sub_1A9977530();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_1A987055C();
    v41 = v56;
    v42 = v46;
    sub_1A9977530();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  v67 = 3;
  sub_1A98705B0();
  v31 = v46;
  sub_1A9977530();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

id sub_1A9870F3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1A99767E0();
  [v0 setDateFormat_];

  return v0;
}

uint64_t OSLogDateFormatter.format(_:)()
{
  v0 = sub_1A9870F3C();
  v1 = sub_1A99760F0();
  v2 = [v0 stringFromDate_];

  v3 = sub_1A9976820();
  return v3;
}

void OSLogDateFormatter.parse(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  LOBYTE(v16) = *v2;
  v6 = sub_1A9870F3C();
  v7 = sub_1A99767E0();
  v8 = [v6 dateFromString_];

  if (v8)
  {
    sub_1A99761F0();
  }

  else
  {
    v9 = 0xEF303038302D3232;
    v10 = 0x80000001A99E5940;
    v11 = 0xEC0000003530332ELL;
    v12 = 0x37333A39303A3631;
    if (v5 != 3)
    {
      v12 = 0xD00000000000001CLL;
      v11 = 0x80000001A99E5880;
    }

    if (v5 == 2)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v10 = v11;
    }

    if (v5)
    {
      v9 = 0xEA00000000003232;
    }

    if (v5 <= 1)
    {
      v13 = 0x2D31302D32323032;
    }

    else
    {
      v13 = v12;
    }

    if (v5 <= 1)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    sub_1A99772B0();
    MEMORY[0x1AC5895B0](0xD00000000000001BLL, 0x80000001A99E58A0);
    MEMORY[0x1AC5895B0](a1, a2);
    MEMORY[0x1AC5895B0](0xD000000000000023, 0x80000001A99E58C0);
    MEMORY[0x1AC5895B0](v13, v14);

    MEMORY[0x1AC5895B0](96, 0xE100000000000000);
    sub_1A97BCDE0();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0xD00000000000004CLL;
    v15[3] = 0x80000001A99E58F0;
    v15[4] = 110;
    v15[10] = 0;
    swift_willThrow();
  }
}

uint64_t sub_1A9871334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98713B8(uint64_t a1)
{
  v2 = sub_1A987157C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98713F4(uint64_t a1)
{
  v2 = sub_1A987157C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OSLogDateFormatter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36F0, &qword_1A999BAF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A987157C();
  sub_1A9977AA0();
  v10 = v7;
  sub_1A98715D0();
  sub_1A99776E0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A987157C()
{
  result = qword_1EB3B36F8;
  if (!qword_1EB3B36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B36F8);
  }

  return result;
}

unint64_t sub_1A98715D0()
{
  result = qword_1EB3B3700;
  if (!qword_1EB3B3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3700);
  }

  return result;
}

uint64_t OSLogDateFormatter.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3708, &qword_1A999BB00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A987157C();
  sub_1A9977A70();
  if (!v2)
  {
    sub_1A98718A0();
    sub_1A99775F0();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void sub_1A98717BC(uint64_t *a1@<X8>)
{
  v2 = sub_1A9870F3C();
  v3 = sub_1A99760F0();
  v4 = [v2 stringFromDate_];

  v5 = sub_1A9976820();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
}

unint64_t sub_1A98718A0()
{
  result = qword_1EB3B3710;
  if (!qword_1EB3B3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3710);
  }

  return result;
}

uint64_t TinyDateRangeFormatter.format(_:)(uint64_t a1)
{
  v1 = sub_1A9976300();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1A99762E0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A9976130();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A99761D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3650, &qword_1A999BA80);
  sub_1A99760D0();
  if (v8 >= 1.0)
  {
    sub_1A9976120();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
    sub_1A99761B0();
    v13 = v4;
    v14 = v5;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A9998180;
    sub_1A9976150();
    sub_1A9976190();
    sub_1A99761A0();
    sub_1A98730A8(v10);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1A99762D0();
    sub_1A99762F0();
    sub_1A99761C0();
    sub_1A98743B8(&qword_1EB3B3720, MEMORY[0x1E69694D0], MEMORY[0x1E69694C8]);
    v11 = v13;
    sub_1A9976F40();
    (*(v14 + 8))(v7, v11);
    v17 = 32;
    v18 = 0xE100000000000000;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1A97F0528();
    v12 = sub_1A9977170();

    return v12;
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1A99760D0();
    sub_1A9976DF0();
    MEMORY[0x1AC5895B0](29549, 0xE200000000000000);
    return v19;
  }
}

uint64_t sub_1A9871D14(uint64_t a1)
{
  v2 = sub_1A98733C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9871D50(uint64_t a1)
{
  v2 = sub_1A98733C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9871E34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TinyDateRangeFormatter.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FuzzyTinyDateRangeFormatter.format(_:)(uint64_t a1)
{
  v1 = sub_1A9976300();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1A99762E0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A9976130();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A99761D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3650, &qword_1A999BA80);
  sub_1A99760D0();
  v11 = fabs(v10);
  if (v11 >= 36000.0)
  {
    if (v11 < 604800.0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
      v17 = sub_1A99761B0();
      v18 = *(v17 - 8);
      v38 = v7;
      v19 = v18;
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A9996D60;
      sub_1A9976120();
      v40 = sub_1A98730A8(v21);
      swift_setDeallocating();
      (*(v19 + 8))(v21 + v20, v17);
      v7 = v38;
      goto LABEL_17;
    }

    v39 = v5;
    v37 = v9;
    if (v11 >= 1814400.0)
    {
      if (v11 < 5184000.0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
        v23 = sub_1A99761B0();
        v24 = *(v23 - 8);
        v38 = v7;
        v25 = v24;
        v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1A9996D60;
        sub_1A9976160();
        v40 = sub_1A98730A8(v27);
        swift_setDeallocating();
        (*(v25 + 8))(v27 + v26, v23);
        v7 = v38;
        goto LABEL_16;
      }

      if (v11 >= 15552000.0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
        v28 = sub_1A99761B0();
        v29 = *(v28 - 8);
        v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1A9996D60;
        if (v11 >= 25920000.0)
        {
          sub_1A9976170();
        }

        else
        {
          sub_1A9976180();
        }

        v40 = sub_1A98730A8(v31);
        swift_setDeallocating();
        (*(v29 + 8))(v31 + v30, v28);
        goto LABEL_16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
      sub_1A99761B0();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1A9998170;
      sub_1A9976180();
      sub_1A9976160();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
      sub_1A99761B0();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1A9998170;
      sub_1A9976160();
      sub_1A9976120();
    }

    v40 = sub_1A98730A8(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
LABEL_16:
    v9 = v37;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
  v12 = sub_1A99761B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v39 = v5;
  v15 = (v14 + 32) & ~v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A9996D60;
  sub_1A9976150();
  v40 = sub_1A98730A8(v16);
  swift_setDeallocating();
  (*(v13 + 8))(v16 + v15, v12);
LABEL_17:
  swift_deallocClassInstance();
  sub_1A9976120();
  sub_1A99762D0();
  sub_1A99762F0();
  sub_1A99761C0();
  sub_1A98743B8(&qword_1EB3B3720, MEMORY[0x1E69694D0], MEMORY[0x1E69694C8]);
  sub_1A9976F40();
  (*(v7 + 8))(v9, v6);
  v43 = 32;
  v44 = 0xE100000000000000;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_1A97F0528();
  v32 = sub_1A9977170();
  v34 = v33;

  v45 = v32;
  v46 = v34;
  v43 = 28525;
  v44 = 0xE200000000000000;
  v41 = 109;
  v42 = 0xE100000000000000;
  v35 = sub_1A9977170();

  return v35;
}

uint64_t sub_1A98727E8(uint64_t a1)
{
  v2 = sub_1A987341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9872824(uint64_t a1)
{
  v2 = sub_1A987341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98728A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FuzzyTinyDateRangeFormatter.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t CompactDateRangeFormatter.format(_:)()
{
  sub_1A9873470();
  sub_1A9976210();
  LOBYTE(v1) = 0;
  sub_1A9976210();

  sub_1A9976210();
  MEMORY[0x1AC5895B0](32, 0xE100000000000000);
  sub_1A9976210();
  MEMORY[0x1AC5895B0](v1);

  MEMORY[0x1AC5895B0](2108704, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3650, &qword_1A999BA80);
  sub_1A9976210();
  MEMORY[0x1AC5895B0](v1);

  MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
  sub_1A98734C4();
  sub_1A9976F40();
  MEMORY[0x1AC5895B0](v1);

  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return v1;
}

uint64_t sub_1A9872B78(uint64_t a1)
{
  v2 = sub_1A9873518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9872BB4(uint64_t a1)
{
  v2 = sub_1A9873518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9872C34(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1A9977AA0();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A9872D58@<X0>(uint64_t *a1@<X8>)
{
  result = CompactDateRangeFormatter.format(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A9872DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1A9977AA0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A9872EE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A99E5960 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69546F4E656D6974 && a2 == 0xEE00656E6F5A656DLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A98730A8(uint64_t a1)
{
  v2 = sub_1A99761B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B38A0, &qword_1A999C8B8);
    v9 = sub_1A9977280();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A98743B8(&qword_1EB3B38A8, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
      v16 = sub_1A9976730();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1A98743B8(&qword_1EB3B38B0, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
          v23 = sub_1A99767A0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1A98733C8()
{
  result = qword_1EB3B3730;
  if (!qword_1EB3B3730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3730);
  }

  return result;
}

unint64_t sub_1A987341C()
{
  result = qword_1EB3B3740;
  if (!qword_1EB3B3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3740);
  }

  return result;
}

unint64_t sub_1A9873470()
{
  result = qword_1EB3B3748;
  if (!qword_1EB3B3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3748);
  }

  return result;
}

unint64_t sub_1A98734C4()
{
  result = qword_1EB3B3750;
  if (!qword_1EB3B3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3750);
  }

  return result;
}

unint64_t sub_1A9873518()
{
  result = qword_1EB3B3760;
  if (!qword_1EB3B3760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3760);
  }

  return result;
}

unint64_t sub_1A9873570()
{
  result = qword_1EB3B3768;
  if (!qword_1EB3B3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3768);
  }

  return result;
}

unint64_t sub_1A98735C4()
{
  result = qword_1EB3B3770;
  if (!qword_1EB3B3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3770);
  }

  return result;
}

unint64_t sub_1A9873618()
{
  result = qword_1EB3B3778;
  if (!qword_1EB3B3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3778);
  }

  return result;
}

unint64_t sub_1A987366C()
{
  result = qword_1EB3B3780;
  if (!qword_1EB3B3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3780);
  }

  return result;
}

unint64_t sub_1A98736C4()
{
  result = qword_1EB3B3788;
  if (!qword_1EB3B3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3788);
  }

  return result;
}

unint64_t sub_1A987371C()
{
  result = qword_1EB3B3790;
  if (!qword_1EB3B3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3790);
  }

  return result;
}

unint64_t sub_1A9873774()
{
  result = qword_1EB3B3798;
  if (!qword_1EB3B3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3798);
  }

  return result;
}

unint64_t sub_1A98737CC()
{
  result = qword_1EB3B37A0;
  if (!qword_1EB3B37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37A0);
  }

  return result;
}

unint64_t sub_1A9873824()
{
  result = qword_1EB3B37A8;
  if (!qword_1EB3B37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37A8);
  }

  return result;
}

unint64_t sub_1A987387C()
{
  result = qword_1EB3B37B0;
  if (!qword_1EB3B37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37B0);
  }

  return result;
}

unint64_t sub_1A98738D4()
{
  result = qword_1EB3B37B8;
  if (!qword_1EB3B37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37B8);
  }

  return result;
}

unint64_t sub_1A987392C()
{
  result = qword_1EB3B37C0;
  if (!qword_1EB3B37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37C0);
  }

  return result;
}

unint64_t sub_1A9873984()
{
  result = qword_1EB3B37C8;
  if (!qword_1EB3B37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37C8);
  }

  return result;
}

unint64_t sub_1A98739DC()
{
  result = qword_1EB3B37D0;
  if (!qword_1EB3B37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37D0);
  }

  return result;
}

unint64_t sub_1A9873A34()
{
  result = qword_1EB3B37D8;
  if (!qword_1EB3B37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37D8);
  }

  return result;
}

unint64_t sub_1A9873A8C()
{
  result = qword_1EB3B37E0;
  if (!qword_1EB3B37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37E0);
  }

  return result;
}

unint64_t sub_1A9873AE4()
{
  result = qword_1EB3B37E8;
  if (!qword_1EB3B37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37E8);
  }

  return result;
}

unint64_t sub_1A9873C2C()
{
  result = qword_1EB3B37F0;
  if (!qword_1EB3B37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37F0);
  }

  return result;
}

unint64_t sub_1A9873C84()
{
  result = qword_1EB3B37F8;
  if (!qword_1EB3B37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37F8);
  }

  return result;
}

unint64_t sub_1A9873CDC()
{
  result = qword_1EB3B3800;
  if (!qword_1EB3B3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3800);
  }

  return result;
}

unint64_t sub_1A9873D34()
{
  result = qword_1EB3B3808;
  if (!qword_1EB3B3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3808);
  }

  return result;
}

unint64_t sub_1A9873D8C()
{
  result = qword_1EB3B3810;
  if (!qword_1EB3B3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3810);
  }

  return result;
}

unint64_t sub_1A9873DE4()
{
  result = qword_1EB3B3818;
  if (!qword_1EB3B3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3818);
  }

  return result;
}

unint64_t sub_1A9873E3C()
{
  result = qword_1EB3B3820;
  if (!qword_1EB3B3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3820);
  }

  return result;
}

unint64_t sub_1A9873E94()
{
  result = qword_1EB3B3828;
  if (!qword_1EB3B3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3828);
  }

  return result;
}

unint64_t sub_1A9873EEC()
{
  result = qword_1EB3B3830;
  if (!qword_1EB3B3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3830);
  }

  return result;
}

unint64_t sub_1A9873F44()
{
  result = qword_1EB3B3838;
  if (!qword_1EB3B3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3838);
  }

  return result;
}

unint64_t sub_1A9873F9C()
{
  result = qword_1EB3B3840;
  if (!qword_1EB3B3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3840);
  }

  return result;
}

unint64_t sub_1A9873FF4()
{
  result = qword_1EB3B3848;
  if (!qword_1EB3B3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3848);
  }

  return result;
}

unint64_t sub_1A987404C()
{
  result = qword_1EB3B3850;
  if (!qword_1EB3B3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3850);
  }

  return result;
}

unint64_t sub_1A98740A4()
{
  result = qword_1EB3B3858;
  if (!qword_1EB3B3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3858);
  }

  return result;
}

unint64_t sub_1A98740FC()
{
  result = qword_1EB3B3860;
  if (!qword_1EB3B3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3860);
  }

  return result;
}

unint64_t sub_1A9874154()
{
  result = qword_1EB3B3868;
  if (!qword_1EB3B3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3868);
  }

  return result;
}

unint64_t sub_1A98741AC()
{
  result = qword_1EB3B3870;
  if (!qword_1EB3B3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3870);
  }

  return result;
}

unint64_t sub_1A9874204()
{
  result = qword_1EB3B3878;
  if (!qword_1EB3B3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3878);
  }

  return result;
}

unint64_t sub_1A987425C()
{
  result = qword_1EB3B3880;
  if (!qword_1EB3B3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3880);
  }

  return result;
}

unint64_t sub_1A98742B4()
{
  result = qword_1EB3B3888;
  if (!qword_1EB3B3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3888);
  }

  return result;
}

unint64_t sub_1A987430C()
{
  result = qword_1EB3B3890;
  if (!qword_1EB3B3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3890);
  }

  return result;
}

unint64_t sub_1A9874364()
{
  result = qword_1EB3B3898;
  if (!qword_1EB3B3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3898);
  }

  return result;
}

uint64_t sub_1A98743B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t SFAirDrop.DeviceRelationship.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1A9874488()
{
  result = qword_1EB3B38B8;
  if (!qword_1EB3B38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38B8);
  }

  return result;
}

uint64_t sub_1A9874500@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1A9875220(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1A98751BC(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1A9976050();
    v15 = v14;
    result = sub_1A97B43C4(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

Sharing::SFString_optional __swiftcall SFString.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A9977510();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SFString.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v2 = 0x4F435F454259414DLL;
    if (v1 == 6)
    {
      v2 = 0xD000000000000024;
    }

    v3 = 0xD000000000000023;
    if (v1 != 4)
    {
      v3 = 0xD000000000000023;
    }

    v4 = *v0 <= 5u;
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 2)
    {
      v2 = 0xD000000000000025;
    }

    v3 = 0xD000000000000023;
    if (*v0)
    {
      v3 = 0xD000000000000022;
    }

    v4 = *v0 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void sub_1A98747F0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v3 = 0xED0000544341544ELL;
    v4 = 0x4F435F454259414DLL;
    if (v2 == 6)
    {
      v4 = 0xD000000000000024;
      v3 = 0x80000001A99E2640;
    }

    v5 = 0xD000000000000023;
    v6 = 0x80000001A99E25E0;
    if (v2 != 4)
    {
      v5 = 0xD000000000000023;
      v6 = 0x80000001A99E2610;
    }

    v7 = *v1 <= 5u;
  }

  else
  {
    v3 = 0x80000001A99E2590;
    v4 = 0xD000000000000017;
    if (v2 == 2)
    {
      v4 = 0xD000000000000025;
    }

    else
    {
      v3 = 0x80000001A99E25C0;
    }

    v5 = 0xD000000000000023;
    v6 = 0x80000001A99E2530;
    if (*v1)
    {
      v5 = 0xD000000000000022;
      v6 = 0x80000001A99E2560;
    }

    v7 = *v1 <= 1u;
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v3 = v6;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_1A987490C()
{
  v0 = sub_1A99767E0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_1EB3B38C0 = v1;
}

uint64_t SFString.localized.getter()
{
  v1 = *v0;
  if (qword_1EB3B0B28 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB3B38C0;
  if (qword_1EB3B38C0)
  {
    v6 = sub_1A99767E0();

    v7 = sub_1A99767E0();

    v8 = sub_1A99767E0();
    v9 = [v2 localizedStringForKey:v6 value:v7 table:v8];

    v10 = sub_1A9976820();
  }

  else if (v1 > 3)
  {
    v5 = 0x4F435F454259414DLL;
    if (v1 == 6)
    {
      v5 = 0xD000000000000024;
    }

    if (v1 <= 5)
    {
      return 0xD000000000000023;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v3 = 0xD000000000000017;
    if (v1 == 2)
    {
      v3 = 0xD000000000000025;
    }

    v4 = 0xD000000000000023;
    if (v1)
    {
      v4 = 0xD000000000000022;
    }

    if (v1 <= 1)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return v10;
}

uint64_t SFString.format(_:)(uint64_t a1)
{
  SFString.localized.getter();

  v1 = sub_1A9976830();

  return v1;
}

Swift::String __swiftcall String.init(_:)(Sharing::SFString a1)
{
  SFString.localized.getter();
  v1 = sub_1A99769C0();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall IDSIdentifierFormatStyle.format(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v3 = sub_1A98752D4(8, countAndFlagsBits, object);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x1AC589540](v3, v5, v7, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_1A9874E2C(uint64_t a1)
{
  v2 = sub_1A9875370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9874E68(uint64_t a1)
{
  v2 = sub_1A9875370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSIdentifierFormatStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B38C8, &qword_1A999C9A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9875370();
  sub_1A9977AA0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A987501C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  v5 = sub_1A98752D4(8, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x1AC589540](v5, v7, v9, v11);
  v14 = v13;

  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_1A98750A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B38C8, &qword_1A999C9A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9875370();
  sub_1A9977AA0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A98751BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1A9875220(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A98752D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A9976900();

    return sub_1A99769D0();
  }

  return result;
}

unint64_t sub_1A9875370()
{
  result = qword_1EB3B38D0;
  if (!qword_1EB3B38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38D0);
  }

  return result;
}

unint64_t sub_1A98753C8()
{
  result = qword_1EB3B38D8;
  if (!qword_1EB3B38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38D8);
  }

  return result;
}

unint64_t sub_1A9875420()
{
  result = qword_1EB3B38E0;
  if (!qword_1EB3B38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38E0);
  }

  return result;
}

unint64_t sub_1A9875478()
{
  result = qword_1EB3B38E8;
  if (!qword_1EB3B38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38E8);
  }

  return result;
}

unint64_t sub_1A98754D0()
{
  result = qword_1EB3B38F0;
  if (!qword_1EB3B38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38F0);
  }

  return result;
}

unint64_t sub_1A9875528()
{
  result = qword_1EB3B38F8;
  if (!qword_1EB3B38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38F8);
  }

  return result;
}

unint64_t sub_1A98755B0()
{
  result = qword_1EB3B3900;
  if (!qword_1EB3B3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3900);
  }

  return result;
}

unint64_t sub_1A9875608()
{
  result = qword_1EB3B3908;
  if (!qword_1EB3B3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3908);
  }

  return result;
}

uint64_t *SF_os_activity.Scope.enter(dso:)(void *dso, int a2)
{
  v4 = *v2;
  v5 = *(v2 + 16);
  v7 = *(v2 + 20);
  result = SF_os_activity.init(_:dso:options:)(&activity, dso, v4, v5, &v7);
  if (activity)
  {
    os_activity_scope_enter(activity, (v2 + 24));

    return swift_unknownObjectRelease();
  }

  return result;
}

void static SF_os_activity.initiate(_:dso:options:execute:)(const char *a1, int a2, char a3, void *a4, os_activity_flag_t *a5, void *aBlock)
{
  isEscapingClosureAtFileLocation = *a5;
  v10 = _Block_copy(aBlock);
  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_20;
    }

    if (!a4)
    {
      goto LABEL_14;
    }

    v12 = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1A98766A4;
    *(v14 + 24) = v13;
    v31 = sub_1A984E098;
    v32 = v14;
    aBlocka = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1A981E5CC;
    v30 = &block_descriptor_14_0;
    v15 = _Block_copy(&aBlocka);
    _Block_copy(v12);

    _os_activity_initiate(a4, a1, isEscapingClosureAtFileLocation, v15);
    _Block_release(v12);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v11 = a1 >> 32;
  if (a1 >> 32)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v22 = (a1 & 0x3F) << 8;
    v23 = (a1 >> 6) + v22 + 33217;
    v24 = (v22 | (a1 >> 6) & 0x3F) << 8;
    v25 = (a1 >> 18) + ((v24 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
    v26 = (a1 >> 12) + v24 + 8487393;
    if (v11)
    {
      v16 = v25;
    }

    else
    {
      v16 = v26;
    }

    if (a1 < 0x800)
    {
      v16 = v23;
    }

    goto LABEL_11;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return;
  }

  v11 = a1 >> 16;
  if (a1 >> 16 > 0x10)
  {
    goto LABEL_21;
  }

  if (a1 > 0x7F)
  {
    goto LABEL_22;
  }

  v16 = a1 + 1;
LABEL_11:
  *description = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v16) & 0x18)));
  if (!a4)
  {
    _Block_release(v10);
    return;
  }

  v17 = v10;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A9875F30;
  *(v19 + 24) = v18;
  v31 = sub_1A981321C;
  v32 = v19;
  aBlocka = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1A981E5CC;
  v30 = &block_descriptor_7;
  v20 = _Block_copy(&aBlocka);
  _Block_copy(v17);

  _os_activity_initiate(a4, description, isEscapingClosureAtFileLocation, v20);
  _Block_release(v20);
  v21 = swift_isEscapingClosureAtFileLocation();

  _Block_release(v17);
  if ((v21 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_14:

  _Block_release(v10);
}

uint64_t sub_1A9875A98()
{
  qword_1EB3B3910 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_none");

  return swift_unknownObjectRetain();
}

uint64_t sub_1A9875AD4()
{
  qword_1EB3ACE18 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t SF_os_activity.init(_:dso:options:)@<X0>(uint64_t *__return_ptr a1@<X8>, void *dso@<X3>, os_activity_t result@<X0>, char a4@<W2>, os_activity_flag_t *a5@<X4>)
{
  v6 = a1;
  v7 = *a5;
  if ((a4 & 1) == 0)
  {
    if (result)
    {
      if (dso)
      {
        v8 = result;
        if (qword_1EB3ACE08 != -1)
        {
          v20 = *a5;
          v19 = dso;
          swift_once();
          dso = v19;
          v7 = v20;
        }

        v9 = qword_1EB3ACE18;
        v10 = dso;
        v11 = v8;
LABEL_16:
        result = _os_activity_create(v10, v11, v9, v7);
LABEL_18:
        *v6 = result;
        return result;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_20;
  }

  a1 = (result >> 32);
  if (result >> 32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    a1 = (result >> 16);
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v12 = result + 1;
        goto LABEL_12;
      }

LABEL_22:
      v13 = (result & 0x3F) << 8;
      v14 = (result >> 6) + v13 + 33217;
      v15 = (v13 | (result >> 6) & 0x3F) << 8;
      v16 = (result >> 18) + ((v15 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v17 = (result >> 12) + v15 + 8487393;
      if (a1)
      {
        v12 = v16;
      }

      else
      {
        v12 = v17;
      }

      if (result < 0x800)
      {
        v12 = v14;
      }

LABEL_12:
      *description = (v12 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v12) & 0x18)));
      if (dso)
      {
        if (qword_1EB3ACE08 != -1)
        {
          v21 = v7;
          v18 = dso;
          swift_once();
          dso = v18;
          v7 = v21;
        }

        v9 = qword_1EB3ACE18;
        v11 = description;
        v10 = dso;
        goto LABEL_16;
      }

LABEL_17:
      result = 0;
      goto LABEL_18;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t SF_os_activity.init(_:dso:parent:options:)@<X0>(os_activity_t dso@<X3>, uint64_t result@<X0>, char a3@<W2>, NSObject **a4@<X4>, os_activity_flag_t *a5@<X5>, os_activity_t *a6@<X8>)
{
  v8 = result;
  v9 = a6;
  v10 = *a4;
  v11 = *a5;
  if (*a4)
  {
    if ((a3 & 1) == 0)
    {
LABEL_3:
      if (v8)
      {
        if (dso)
        {
          v12 = dso;
          v13 = v8;
LABEL_16:
          dso = _os_activity_create(v12, v13, v10, v11);
          goto LABEL_17;
        }

        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1EB3ACE08 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB3ACE18;
    result = swift_unknownObjectRetain();
    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  a6 = HIDWORD(v8);
  if (HIDWORD(v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v8 & 0xFFFFF800) != 0xD800)
  {
    a6 = (v8 >> 16);
    if (v8 >> 16 <= 0x10)
    {
      if (v8 <= 0x7F)
      {
        v14 = v8 + 1;
        goto LABEL_14;
      }

LABEL_21:
      v15 = (v8 & 0x3F) << 8;
      v16 = (v8 >> 6) + v15 + 33217;
      v17 = (v15 | (v8 >> 6) & 0x3F) << 8;
      v18 = (v8 >> 18) + ((v17 | (v8 >> 12) & 0x3F) << 8) - 2122219023;
      v19 = (v8 >> 12) + v17 + 8487393;
      if (a6)
      {
        v14 = v18;
      }

      else
      {
        v14 = v19;
      }

      if (v8 < 0x800)
      {
        v14 = v16;
      }

LABEL_14:
      *description = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v14) & 0x18)));
      if (dso)
      {
        v13 = description;
        v12 = dso;
        goto LABEL_16;
      }

LABEL_17:
      result = swift_unknownObjectRelease();
      *v9 = dso;
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9875EBC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;

  return swift_unknownObjectRetain();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void SF_os_activity.apply(execute:)(const void *a1)
{
  v2 = _Block_copy(a1);
  v3 = v2;
  v4 = *v1;
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1A98766A4;
    *(v6 + 24) = v5;
    v9[4] = sub_1A984E098;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1A981E5CC;
    v9[3] = &block_descriptor_25;
    v7 = _Block_copy(v9);

    os_activity_apply(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {

    _Block_release(v2);
  }
}

unint64_t static SF_os_activity.labelUserAction(_:dso:)@<X0>(unint64_t result@<X0>, char a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X8>)
{
  if (a2)
  {
    a4 = HIDWORD(result);
    if (!HIDWORD(result))
    {
      if ((result & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_25;
      }

      a4 = result >> 16;
      if (result >> 16 <= 0x10)
      {
        if (result <= 0x7F)
        {
          v6 = result + 1;
LABEL_12:
          v12[1] = v4;
          v12[2] = v5;
          v12[0] = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
          if (a3)
          {
            return MEMORY[0x1AC58BD20](a3, v12);
          }

          return result;
        }

LABEL_18:
        v7 = (result & 0x3F) << 8;
        v8 = (result >> 6) + v7 + 33217;
        v9 = (v7 | (result >> 6) & 0x3F) << 8;
        v10 = (result >> 18) + ((v9 | (result >> 12) & 0x3F) << 8) - 2122219023;
        v11 = (result >> 12) + v9 + 8487393;
        if (a4)
        {
          v6 = v10;
        }

        else
        {
          v6 = v11;
        }

        if (result < 0x800)
        {
          v6 = v8;
        }

        goto LABEL_12;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3)
  {

LABEL_25:
    JUMPOUT(0x1AC58BD20);
  }

  return result;
}

BOOL sub_1A987626C(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1A987629C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1A98762C8@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_1A98763A0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t sub_1A98763F8()
{
  result = qword_1EB3B3920;
  if (!qword_1EB3B3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3920);
  }

  return result;
}

unint64_t sub_1A9876450()
{
  result = qword_1EB3B3928;
  if (!qword_1EB3B3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3928);
  }

  return result;
}

unint64_t sub_1A98764A8()
{
  result = qword_1EB3B3930;
  if (!qword_1EB3B3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3930);
  }

  return result;
}

unint64_t sub_1A9876500()
{
  result = qword_1EB3B3938;
  if (!qword_1EB3B3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3938);
  }

  return result;
}

uint64_t sub_1A9876554(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A98765B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A9876634(uint64_t a1, int a2)
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

uint64_t sub_1A9876654(uint64_t result, int a2, int a3)
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

uint64_t sub_1A98766B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26[-1] - v12;
  v27[0] = a4;
  v27[1] = a5;
  sub_1A97C13A4(a3, &v26[-1] - v12, &qword_1EB3B29C0, &qword_1A9991A00);
  v14 = sub_1A9976C00();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1A97B06FC(v13, &qword_1EB3B29C0, &qword_1A9991A00);
  }

  else
  {
    sub_1A9976BF0();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1A9976B80();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1A9976890();
      sub_1A987E15C(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t Optional.tryUnwrap(_:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a5;
  v21 = a1;
  v22 = a3;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v15, v14);
  v16 = *(a6 + 16);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) != 1)
  {
    return (*(v17 + 32))(a7, v13, v16);
  }

  (*(v11 + 8))(v13, a6);
  sub_1A97BCDE0();
  swift_allocError();
  v18 = v22;
  *v19 = v21;
  v19[1] = a2;
  v19[2] = v18;
  v19[3] = a4;
  v19[4] = v23;
  v19[10] = 0x2000000000000000;
  swift_willThrow();
}

uint64_t tryCast<A>(_:as:description:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a5;
  v32 = a7;
  v37 = a6;
  v33 = a4;
  v29[1] = a2;
  v30 = a3;
  v12 = sub_1A99770A0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - v14;
  sub_1A97AF7EC(a1, v36);
  v16 = swift_dynamicCast();
  v17 = *(*(a8 - 8) + 56);
  if (v16)
  {
    v18 = *(a8 - 8);
    v17(v15, 0, 1, a8);
    return (*(v18 + 32))(a9, v15, a8);
  }

  else
  {
    v17(v15, 1, 1, a8);
    (*(v13 + 8))(v15, v12);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1A9977400();
    v20 = v34;
    v21 = v35;
    v22 = sub_1A9977B00();
    v24 = v23;
    sub_1A97BCDE0();
    swift_allocError();
    *v25 = v20;
    v25[1] = v21;
    v25[2] = v22;
    v25[3] = v24;
    v26 = v31;
    v27 = v33;
    v25[4] = v30;
    v25[5] = v27;
    v28 = v37;
    v25[6] = v26;
    v25[7] = v28;
    v25[8] = v32;
    v25[10] = 0xA000000000000000;
    swift_willThrow();
  }
}

{
  v24 = a6;
  v25 = a7;
  v22 = a4;
  v23 = a5;
  v20 = a9;
  v21 = a3;
  v12 = sub_1A9977A00();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetatypeMetadata = swift_getMetatypeMetadata();
  *&v28 = a2;
  sub_1A99779C0();
  *&v26 = 0x2874736143797274;
  *(&v26 + 1) = 0xE800000000000000;
  v16 = sub_1A99779D0();
  MEMORY[0x1AC5895B0](v16);

  MEMORY[0x1AC5895B0](41, 0xE100000000000000);
  v17 = v26;
  sub_1A97C13A4(a1, &v26, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (v27)
  {

    sub_1A967C4DC(&v26, &v28);
    tryCast<A>(_:as:description:file:line:)(&v28, a2, v21, v22, v23, v24, v25, a8, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(&v28);
  }

  else
  {
    sub_1A97B06FC(&v26, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v18 = v17;
    *(v18 + 16) = 0xD000000000000046;
    *(v18 + 24) = 0x80000001A99E3080;
    *(v18 + 32) = 132;
    *(v18 + 80) = 0x2000000000000000;
    swift_willThrow();
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t Optional<A>.throwIfNotNil()(uint64_t result)
{
  if (result)
  {
    v1 = *(result + OBJC_IVAR____SFXPCError_domain + 8);
    v13 = *(result + OBJC_IVAR____SFXPCError_errorCode);
    v14 = *(result + OBJC_IVAR____SFXPCError_domain);
    v2 = *(result + OBJC_IVAR____SFXPCError_internalLocalizedDescription + 8);
    v12 = *(result + OBJC_IVAR____SFXPCError_internalLocalizedDescription);
    v3 = *(result + OBJC_IVAR____SFXPCError_internalDebugDescription + 8);
    v11 = *(result + OBJC_IVAR____SFXPCError_internalDebugDescription);
    v4 = *(result + OBJC_IVAR____SFXPCError_file + 8);
    v10 = *(result + OBJC_IVAR____SFXPCError_file);
    v5 = *(result + OBJC_IVAR____SFXPCError_line);
    v6 = *(result + OBJC_IVAR____SFXPCError_process);
    v7 = *(result + OBJC_IVAR____SFXPCError_process + 8);
    v8 = *(result + OBJC_IVAR____SFXPCError_line + 8);
    sub_1A97BCDE0();
    swift_allocError();
    *v9 = v14;
    v9[1] = v1;
    v9[2] = v13;
    v9[3] = v12;
    v9[4] = v2;
    v9[5] = v11;
    v9[6] = v3;
    v9[7] = v10;
    v9[8] = v4;
    v9[9] = v5;
    v9[10] = v8 & 1 | 0xC000000000000000;
    v9[11] = v6;
    v9[12] = v7;
    swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Bool.throwIf(_:_:file:line:)(Swift::Bool _, Swift::String a2, Swift::String file, Swift::Int line)
{
  if (_ == (v4 & 1))
  {
    object = file._object;
    countAndFlagsBits = file._countAndFlagsBits;
    v8 = a2._object;
    v9 = a2._countAndFlagsBits;
    v10 = v4 & 1;
    sub_1A97BCDE0();
    swift_allocError();
    *v11 = v9;
    v11[1] = v8;
    v11[2] = v10;
    v11[3] = countAndFlagsBits;
    v11[4] = object;
    v11[5] = line;
    v11[10] = 0x8000000000000000;
    swift_willThrow();
  }
}

uint64_t sub_1A98771D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1A97C13A4(a1, v19 - v9, &qword_1EB3B29C0, &qword_1A9991A00);
  v11 = sub_1A9976C00();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1A97B06FC(v10, &qword_1EB3B29C0, &qword_1A9991A00);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1A9976B80();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A9976BF0();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t Optional<A>.throwIfNotNil()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  (*(v3 + 16))(v6, v14, a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return (*(v3 + 8))(v6, a1);
  }

  v16 = *(v8 + 32);
  v16(v13, v6, v7);
  (*(v8 + 16))(v11, v13, v7);
  if (sub_1A99777A0())
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    swift_allocError();
    v16(v17, v11, v7);
  }

  swift_willThrow();
  return (*(v8 + 8))(v13, v7);
}

uint64_t static SFError.xpcFailure(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    sub_1A97BCDE0();
    v1 = swift_allocError();
    a1 = 0;
    *v2 = xmmword_1A999CE80;
    *(v2 + 16) = 0xD000000000000046;
    *(v2 + 24) = 0x80000001A99E3080;
    *(v2 + 32) = 26;
    *(v2 + 80) = 0;
  }

  v3 = a1;
  return v1;
}

uint64_t SFError.errorDescription.getter()
{
  v1 = sub_1A9976020();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = v0[1];
  v7 = *(v0 + 16);
  v8 = *(v0 + 17) | ((*(v0 + 21) | (*(v0 + 23) << 16)) << 32);
  v9 = v0[3];
  v10 = v0[4];
  v11 = *(v0 + 87) >> 5;
  if (v11 <= 3)
  {
    if (*(v0 + 87) >> 5 > 1u)
    {
      if (v11 == 2)
      {
        sub_1A9975FA0();
        v30 = sub_1A9975FB0();
        v32 = v31;
        (*(v2 + 8))(v4, v1);
        v75[0] = v30;
        v75[1] = v32;
        MEMORY[0x1AC5895B0](58, 0xE100000000000000);
        v74 = v10;
        v33 = sub_1A9977730();
        MEMORY[0x1AC5895B0](v33);

        v16 = v75[0];
        v17 = v75[1];
        v75[0] = 0;
        v75[1] = 0xE000000000000000;
        sub_1A99772B0();

        v75[0] = 34;
        v75[1] = 0xE100000000000000;
        MEMORY[0x1AC5895B0](v6, v5);
        v34 = 0xD000000000000016;
        v35 = 0x80000001A99E5A80;
      }

      else
      {
        sub_1A9975FA0();
        v50 = sub_1A9975FB0();
        v52 = v51;
        (*(v2 + 8))(v4, v1);
        v75[0] = v50;
        v75[1] = v52;
        MEMORY[0x1AC5895B0](58, 0xE100000000000000);
        v74 = v10;
        v53 = sub_1A9977730();
        MEMORY[0x1AC5895B0](v53);

        v16 = v75[0];
        v17 = v75[1];
        v75[0] = 0;
        v75[1] = 0xE000000000000000;
        sub_1A99772B0();

        v75[0] = 34;
        v75[1] = 0xE100000000000000;
        MEMORY[0x1AC5895B0](v6, v5);
        v34 = 0xD000000000000014;
        v35 = 0x80000001A99E5A60;
      }

      goto LABEL_26;
    }

    if (v11)
    {
      sub_1A9975FA0();
      v39 = sub_1A9975FB0();
      v41 = v40;
      (*(v2 + 8))(v4, v1);
      v75[0] = v39;
      v75[1] = v41;
      MEMORY[0x1AC5895B0](58, 0xE100000000000000);
      v74 = v10;
      v42 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v42);

      v16 = v75[0];
      v17 = v75[1];
      v75[0] = 0;
      v75[1] = 0xE000000000000000;
      sub_1A99772B0();

      v75[0] = 0xD00000000000001BLL;
      v75[1] = 0x80000001A99E5AA0;
      MEMORY[0x1AC5895B0](v6, v5);
      v34 = 5972002;
      v35 = 0xE300000000000000;
LABEL_26:
      MEMORY[0x1AC5895B0](v34, v35);
      v58 = v16;
LABEL_27:
      MEMORY[0x1AC5895B0](v58, v17);
      goto LABEL_28;
    }

    sub_1A9975FA0();
    v12 = sub_1A9975FB0();
    v14 = v13;
    (*(v2 + 8))(v4, v1);
    v75[0] = v12;
    v75[1] = v14;
    MEMORY[0x1AC5895B0](58, 0xE100000000000000);
    v74 = v10;
    v15 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v15);

    v16 = v75[0];
    v17 = v75[1];
    v75[0] = 0;
    v75[1] = 0xE000000000000000;
    sub_1A99772B0();

    v75[0] = 0xD000000000000010;
    v75[1] = 0x80000001A99E5AC0;
    v18 = v6;
    v19 = v5;
LABEL_25:
    MEMORY[0x1AC5895B0](v18, v19);
    v34 = 23328;
    v35 = 0xE200000000000000;
    goto LABEL_26;
  }

  v72 = *v0;
  v73 = v5;
  v20 = v0[8];
  if (v11 > 5)
  {
    if (v11 != 6)
    {
      sub_1A9975FA0();
      v54 = sub_1A9975FB0();
      v56 = v55;
      (*(v2 + 8))(v4, v1);
      v75[0] = v54;
      v75[1] = v56;
      MEMORY[0x1AC5895B0](58, 0xE100000000000000);
      v74 = v10;
      v57 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v57);

      v16 = v75[0];
      v17 = v75[1];
      v75[0] = 0;
      v75[1] = 0xE000000000000000;
      sub_1A99772B0();

      v75[0] = 0x20676E697373694DLL;
      v75[1] = 0xEF203A65756C6176;
      v18 = v72;
      v19 = v73;
      goto LABEL_25;
    }

    v36 = v0[11];
    v37 = v0[12];
    v71 = v9;
    if (v20 && (v0[10] & 1) == 0)
    {
      v70 = v0[9];
      v75[0] = v36;
      v75[1] = v37;

      MEMORY[0x1AC5895B0](58, 0xE100000000000000);
      sub_1A9975FA0();
      v60 = sub_1A9975FB0();
      v62 = v61;
      (*(v2 + 8))(v4, v1);
      MEMORY[0x1AC5895B0](v60, v62);

      MEMORY[0x1AC5895B0](58, 0xE100000000000000);
      v74 = v70;
      v63 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v63);

      v38 = v75[0];
      v37 = v75[1];
    }

    else
    {
      v38 = v36;
    }

    v65 = v72;
    v64 = v73;
    if (v10)
    {
      v75[0] = 0x202963707828;
      v75[1] = 0xE600000000000000;
      MEMORY[0x1AC5895B0](v71, v10);
      v66 = 23328;
      v67 = 0xE200000000000000;
    }

    else
    {
      v75[0] = 0;
      v75[1] = 0xE000000000000000;
      sub_1A99772B0();

      strcpy(v75, "{xpc domain: ");
      HIWORD(v75[1]) = -4864;
      MEMORY[0x1AC5895B0](v65, v64);
      MEMORY[0x1AC5895B0](0x43726F727265202CLL, 0xED0000203A65646FLL);
      LOBYTE(v74) = v7;
      HIBYTE(v74) = BYTE6(v8);
      *(&v74 + 5) = WORD2(v8);
      *(&v74 + 1) = v8;
      v68 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v68);

      v66 = 5972093;
      v67 = 0xE300000000000000;
    }

    MEMORY[0x1AC5895B0](v66, v67);
    MEMORY[0x1AC5895B0](v38, v37);
  }

  else
  {
    v21 = v0[5];
    if (v11 != 4)
    {
      v71 = v9;
      sub_1A9975FA0();
      v43 = sub_1A9975FB0();
      v45 = v44;
      (*(v2 + 8))(v4, v1);
      v75[0] = v43;
      v75[1] = v45;
      MEMORY[0x1AC5895B0](58, 0xE100000000000000);
      v74 = v20;
      v46 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v46);

      v47 = v75[0];
      v17 = v75[1];
      v75[0] = 0;
      v75[1] = 0xE000000000000000;
      sub_1A99772B0();

      v75[0] = 0xD000000000000010;
      v75[1] = 0x80000001A99E5A00;
      MEMORY[0x1AC5895B0](v72, v73);
      MEMORY[0x1AC5895B0](0x602073612060, 0xE600000000000000);
      MEMORY[0x1AC5895B0](v7 | (v8 << 8), v71);
      if (v21)
      {
        MEMORY[0x1AC5895B0](0x202D2D2060, 0xE500000000000000);
        MEMORY[0x1AC5895B0](v10, v21);
        v48 = 23328;
        v49 = 0xE200000000000000;
      }

      else
      {
        v48 = 5972064;
        v49 = 0xE300000000000000;
      }

      MEMORY[0x1AC5895B0](v48, v49);
      v58 = v47;
      goto LABEL_27;
    }

    sub_1A9975FA0();
    v22 = sub_1A9975FB0();
    v24 = v23;
    (*(v2 + 8))(v4, v1);
    v75[0] = v22;
    v75[1] = v24;
    MEMORY[0x1AC5895B0](58, 0xE100000000000000);
    v74 = v21;
    v25 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v25);

    v27 = v75[0];
    v26 = v75[1];
    v75[0] = 0;
    v75[1] = 0xE000000000000000;
    sub_1A99772B0();

    v75[0] = 0xD000000000000012;
    v75[1] = 0x80000001A99E5A20;
    MEMORY[0x1AC5895B0](v72, v73);
    MEMORY[0x1AC5895B0](0xD000000000000013, 0x80000001A99E5A40);
    if (v7)
    {
      v28 = 1702195828;
    }

    else
    {
      v28 = 0x65736C6166;
    }

    if (v7)
    {
      v29 = 0xE400000000000000;
    }

    else
    {
      v29 = 0xE500000000000000;
    }

    MEMORY[0x1AC5895B0](v28, v29);

    MEMORY[0x1AC5895B0](5972002, 0xE300000000000000);
    MEMORY[0x1AC5895B0](v27, v26);
  }

LABEL_28:

  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return v75[0];
}

uint64_t SFError.description.getter()
{
  result = SFError.errorDescription.getter();
  if (!v1)
  {
    return 0x6C616E7265746E49;
  }

  return result;
}

uint64_t SFError.errorCode.getter()
{
  v1 = *(v0 + 80) >> 61;
  if (v1 > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6)
      {
        return *(v0 + 16);
      }

      else
      {
        return -1007;
      }
    }

    else if (v1 == 4)
    {
      return -1003;
    }

    else
    {
      return -1005;
    }
  }

  else
  {
    v2 = -1000;
    v3 = -1002;
    if (v1 != 2)
    {
      v3 = -1006;
    }

    if (v1)
    {
      v2 = -1001;
    }

    if (v1 <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t SFError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A78, &qword_1A99983F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9996D60;
  *(inited + 32) = sub_1A9976820();
  *(inited + 40) = v1;
  v2 = SFError.errorDescription.getter();
  v4 = 0x6C616E7265746E49;
  if (v3)
  {
    v4 = v2;
  }

  v5 = 0xEF2E726F72726520;
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v3)
  {
    v5 = v3;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1A97BF23C(inited);
  swift_setDeallocating();
  sub_1A97B06FC(inited + 32, &qword_1EB3B16C8, &unk_1A999CE90);
  return v6;
}

uint64_t sub_1A9878278(uint64_t a1)
{
  v2 = sub_1A987F8E0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A98782B4(uint64_t a1)
{
  v2 = sub_1A987F8E0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1A9878300()
{
  result = SFError.errorDescription.getter();
  if (!v1)
  {
    return 0x6C616E7265746E49;
  }

  return result;
}

uint64_t sub_1A9878368()
{
  v1 = *(v0 + 80) >> 61;
  if (v1 > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6)
      {
        return *(v0 + 16);
      }

      else
      {
        return -1007;
      }
    }

    else if (v1 == 4)
    {
      return -1003;
    }

    else
    {
      return -1005;
    }
  }

  else
  {
    v2 = -1000;
    v3 = -1002;
    if (v1 != 2)
    {
      v3 = -1006;
    }

    if (v1)
    {
      v2 = -1001;
    }

    if (v1 <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t CodableError.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CodableError.localizedDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CodableError.debugDescription.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void CodableError.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A9975F10();
  v5 = [v4 domain];
  v6 = sub_1A9976820();
  v43 = v7;
  v44 = v6;

  v42 = [v4 code];
  v8 = [v4 userInfo];
  v9 = sub_1A9976700();

  v10 = sub_1A9976820();
  if (!*(v9 + 16))
  {

    goto LABEL_10;
  }

  v12 = sub_1A97BCEB8(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_10:

    v16 = 0;
    v17 = 0;
    goto LABEL_11;
  }

  sub_1A97AF7EC(*(v9 + 56) + 32 * v12, &v48);

  v15 = swift_dynamicCast();
  if (v15)
  {
    v16 = v45;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v47;
  }

  else
  {
    v17 = 0;
  }

LABEL_11:
  v18 = [v4 userInfo];
  v19 = sub_1A9976700();

  v20 = sub_1A9976820();
  if (*(v19 + 16))
  {
    v22 = v17;
    v23 = v16;
    v24 = sub_1A97BCEB8(v20, v21);
    v26 = v25;

    if (v26)
    {
      sub_1A97AF7EC(*(v19 + 56) + 32 * v24, &v48);

      if (swift_dynamicCast())
      {

        v27 = v45;
        v28 = v47;
        v16 = v23;
        v17 = v22;
        goto LABEL_25;
      }
    }

    else
    {
    }

    v16 = v23;
    v17 = v22;
  }

  else
  {
  }

  v29 = [v4 userInfo];
  v30 = sub_1A9976700();

  if (!*(v30 + 16) || (v31 = sub_1A97BCEB8(0xD000000000000015, 0x80000001A99E5AE0), (v32 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_1A97AF7EC(*(v30 + 56) + 32 * v31, &v48);

  sub_1A9812DE0(0, &unk_1EB3B5FE0, 0x1E695DF30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v48 = a1;
    v40 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v27 = sub_1A9976860();
    v28 = v41;

    goto LABEL_25;
  }

  v33 = v16;
  v34 = v45;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E5B00);
  v46 = [v45 name];
  type metadata accessor for NSExceptionName(0);
  sub_1A9977400();

  MEMORY[0x1AC5895B0](0x6E6F73616572202CLL, 0xEA0000000000203ALL);
  v35 = [v34 reason];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1A9976820();
    v39 = v38;
  }

  else
  {
    v39 = 0xE500000000000000;
    v37 = 0x296C696E28;
  }

  MEMORY[0x1AC5895B0](v37, v39);

  v27 = v48;
  v28 = v49;
  v16 = v33;
LABEL_25:
  *a2 = v44;
  a2[1] = v43;
  a2[2] = v42;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v27;
  a2[6] = v28;
}

uint64_t CodableError.errorUserInfo.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = MEMORY[0x1E69E7CC8];
  v5 = MEMORY[0x1E69E6158];
  if (v1)
  {
    v6 = v0[3];
    v7 = sub_1A9976820();
    v9 = v8;
    v18 = v5;
    *&v17 = v6;
    *(&v17 + 1) = v1;
    sub_1A967C4DC(&v17, v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3B2C(v16, v7, v9, isUniquelyReferenced_nonNull_native);
  }

  if (v3)
  {
    v11 = sub_1A9976820();
    v13 = v12;
    v18 = v5;
    *&v17 = v2;
    *(&v17 + 1) = v3;
    sub_1A967C4DC(&v17, v16);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3B2C(v16, v11, v13, v14);
  }

  return v4;
}

unint64_t CodableError.description.getter()
{
  if (v0[4])
  {
    v1 = v0[3];
  }

  else if (v0[6])
  {
    v1 = v0[5];
  }

  else
  {
    v2 = *v0;
    v3 = v0[1];
    sub_1A99772B0();

    MEMORY[0x1AC5895B0](v2, v3);
    MEMORY[0x1AC5895B0](0x203A65646F63202CLL, 0xE800000000000000);
    v4 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v4);

    MEMORY[0x1AC5895B0](125, 0xE100000000000000);
    v1 = 0xD000000000000015;
  }

  return v1;
}

unint64_t sub_1A9878B6C()
{
  v1 = 0x6E69616D6F64;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x646F43726F727265;
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

uint64_t sub_1A9878BF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A987F714(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9878C1C(uint64_t a1)
{
  v2 = sub_1A987E364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9878C58(uint64_t a1)
{
  v2 = sub_1A987E364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3948, &qword_1A999CEA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  v11[0] = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A987E364();
  sub_1A9977AA0();
  v15 = 0;
  v9 = v11[5];
  sub_1A9977690();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = 1;
  sub_1A99776C0();
  v13 = 2;
  sub_1A9977650();
  v12 = 3;
  sub_1A9977650();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CodableError.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[6];
  sub_1A99768D0();
  MEMORY[0x1AC58A630](v2);
  if (!v3)
  {
    sub_1A99779A0();
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1A99779A0();
  }

  sub_1A99779A0();
  sub_1A99768D0();
  if (!v4)
  {
    return sub_1A99779A0();
  }

LABEL_3:
  sub_1A99779A0();

  return sub_1A99768D0();
}

uint64_t CodableError.hashValue.getter()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];
  sub_1A9977980();
  sub_1A99768D0();
  MEMORY[0x1AC58A630](v1);
  if (!v2)
  {
    sub_1A99779A0();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1A99779A0();
    return sub_1A99779B0();
  }

  sub_1A99779A0();
  sub_1A99768D0();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1A99779A0();
  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t CodableError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3958, &unk_1A999CEA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A987E364();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v29 = 0;
  v9 = sub_1A99775A0();
  v11 = v10;
  v12 = v9;
  v28 = 1;
  v24 = sub_1A99775D0();
  v27 = 2;
  v13 = sub_1A9977550();
  v25 = v15;
  v23 = v13;
  v26 = 3;
  v16 = sub_1A9977550();
  v18 = v17;
  v19 = *(v6 + 8);
  v22 = v16;
  v19(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  v20 = v23;
  a2[2] = v24;
  a2[3] = v20;
  v21 = v22;
  a2[4] = v25;
  a2[5] = v21;
  a2[6] = v18;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A98792E0(uint64_t a1)
{
  v2 = sub_1A987F88C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A987931C(uint64_t a1)
{
  v2 = sub_1A987F88C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1A98793A0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[6];
  sub_1A9977980();
  sub_1A99768D0();
  MEMORY[0x1AC58A630](v2);
  if (!v3)
  {
    sub_1A99779A0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1A99779A0();
    return sub_1A99779B0();
  }

  sub_1A99779A0();
  sub_1A99768D0();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1A99779A0();
  sub_1A99768D0();
  return sub_1A99779B0();
}

CFTypeID NSDictionary.sf_optionalValue<A>(_:as:cfTypeID:file:line:)@<X0>(const void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v8 = v7;
  *&v28[0] = sub_1A9976820();
  *(&v28[0] + 1) = v15;
  v16 = [v8 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v16)
  {
    return (*(*(a6 - 8) + 56))(a7, 1, 1, a6);
  }

  v27 = a3;
  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A967C4DC(v28, &v29);
  sub_1A97AF7EC(&v29, v28);
  if (swift_dynamicCast())
  {
    v17 = v31;
    swift_unknownObjectRetain();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v29, v30);
    v17 = sub_1A99777C0();
  }

  result = CFGetTypeID(v17);
  if (result == a2)
  {
    *&v28[0] = v17;
    v19 = *(a6 - 8);
    if (*(v19 + 64) == 8)
    {
      (*(v19 + 16))(a7, v28, a6);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v29);
      return (*(v19 + 56))(a7, 0, 1, a6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    sub_1A9977400();
    v20 = v28[0];
    *&v28[0] = a2;
    v21 = sub_1A9977730();
    v23 = v22;
    *&v28[0] = 0x4449657079544643;
    *(&v28[0] + 1) = 0xEA0000000000203ALL;
    v31 = a2;
    v24 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v24);

    v25 = v28[0];
    sub_1A97BCDE0();
    swift_allocError();
    *v26 = v20;
    *(v26 + 16) = v21;
    *(v26 + 24) = v23;
    *(v26 + 32) = v25;
    *(v26 + 48) = v27;
    *(v26 + 56) = a4;
    *(v26 + 64) = a5;
    *(v26 + 80) = 0xA000000000000000;
    swift_willThrow();

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  }

  return result;
}

uint64_t NSDictionary.sf_optionalValue<A>(_:as:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v20 = a5;
  v9 = v7;
  *&v18 = a1;
  *(&v18 + 1) = a2;

  v16 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v16)
  {
    return (*(*(a6 - 8) + 56))(a7, 1, 1, a6);
  }

  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A967C4DC(&v18, v19);
  tryCast<A>(_:as:description:file:line:)(v19, a6, a1, a2, a3, a4, v20, a6, a7);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v19);
  if (!v8)
  {
    return (*(*(a6 - 8) + 56))(a7, 0, 1, a6);
  }

  return result;
}

uint64_t sub_1A9879978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v8 = sub_1A9976820();
  a7(v8);
}

uint64_t NSDictionary.sf_value<A>(_:as:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *&v21[0] = a1;
  *(&v21[0] + 1) = a2;

  v15 = [v7 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  strcpy(&v19, "sf_value for ");
  HIWORD(v19) = -4864;
  MEMORY[0x1AC5895B0](a1, a2);
  v16 = v19;
  sub_1A97C13A4(v21, &v19, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (v20)
  {

    sub_1A97B06FC(v21, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A967C4DC(&v19, v22);
    tryCast<A>(_:as:description:file:line:)(v22, a6, 0, 0, a3, a4, a5, a6, a7);
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    sub_1A97B06FC(&v19, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v18 = v16;
    *(v18 + 16) = 0xD000000000000046;
    *(v18 + 24) = 0x80000001A99E3080;
    *(v18 + 32) = 301;
    *(v18 + 80) = 0x2000000000000000;
    swift_willThrow();
    return sub_1A97B06FC(v21, &qword_1EB3B0BA0, &unk_1A99923D0);
  }
}

Swift::Void __swiftcall NSDictionary.sf_setValue(_:forKey:)(Swift::Bool _, Swift::String forKey)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v4 = sub_1A99767E0();
  [v2 setValue:v3 forKey:v4];
}

Swift::Void __swiftcall NSDictionary.sf_setValue(_:forKey:)(Swift::Bool _, CFStringRef forKey)
{
  v5 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v7 = forKey;
  v6 = [v5 initWithBool_];
  [v2 setValue:v6 forKey:v7];
}

uint64_t NSArray.tryCastElements<A>(as:)(uint64_t a1, char *a2)
{
  v7[2] = a2;
  v3 = sub_1A9812DE0(0, &qword_1EB3B3960, 0x1E695DEC8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v5 = sub_1A987E3D8();
  return sub_1A9879E6C(sub_1A987E3B8, v7, v3, a2, v4, v5, MEMORY[0x1E69E7288], &v8);
}

uint64_t sub_1A9879E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = tryCast<A>(_:as:description:file:line:)(a1, a2, 0, 0, 0xD000000000000046, 0x80000001A99E3080, 317, a2, a4);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1A9879E6C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v42 - v18;
  v19 = sub_1A99770A0();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1A9976A00();
  v63 = sub_1A99773B0();
  v58 = sub_1A99773C0();
  sub_1A9977370();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1A99769E0();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1A9977160();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_1A99773A0();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1A9977160();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1A99773A0();
      sub_1A9977160();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t static Task<>.noThrow(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1A97C13A4(a1, &v13 - v9, &qword_1EB3B29C0, &qword_1A9991A00);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a4;
  v11[5] = a2;
  v11[6] = a3;

  return sub_1A98766B0(0, 0, v10, &unk_1A999CEC0, v11, a4);
}

uint64_t sub_1A987A668(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A97B2638;

  return v8(a1);
}

uint64_t concurrentRace<A>(priority:operation:against:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A987A78C, 0, 0);
}

uint64_t sub_1A987A78C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1A987A88C;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v7);
}

uint64_t sub_1A987A88C()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A987A9C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A987A9C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A987AA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_1A99770A0();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987AB08, 0, 0);
}

uint64_t sub_1A987AB08()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v6;
  v7[6] = v3;

  v0[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v8 = sub_1A9976D20();
  sub_1A98771D8(v5, &unk_1A999D6A8, v7, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v4;
  v9[6] = v1;

  sub_1A98771D8(v5, &unk_1A999D6B8, v9, v8);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1A987ACAC;
  v11 = v0[13];

  return MEMORY[0x1EEE6DAC8](v11, 0, 0, v8);
}

uint64_t sub_1A987ACAC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1A987AF84;
  }

  else
  {
    v2 = sub_1A987ADC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A987ADC0()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  sub_1A9976D10();
  (*(v3 + 16))(v2, v1, v4);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    return sub_1A9977470();
  }

  else
  {
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[2];
    (*(v0[11] + 8))(v0[13], v0[10]);
    (*(v6 + 32))(v10, v8, v9);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1A987AF84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A987AFF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A97B2988;

  return v8(a1);
}

uint64_t withOperationTimeout<A>(_:priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = sub_1A99773E0();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987B1B4, 0, 0);
}

uint64_t sub_1A987B1B4()
{
  *(v0 + 16) = *(v0 + 40);
  sub_1A99778B0();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  sub_1A987E5F8();
  *v1 = v0;
  v1[1] = sub_1A987B280;
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);

  return withOperationTimeout<A, B>(_:clock:priority:operation:)(v8, v0 + 16, v2, v7, v5, v6, v3, v4);
}

uint64_t sub_1A987B280()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(v5 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A987B428, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A987B428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t withOperationTimeout<A, B>(_:clock:priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[12] = v11;
  v8[13] = *(v11 + 64);
  v8[14] = swift_task_alloc();
  v12 = *(a8 - 8);
  v8[15] = v12;
  v8[16] = *(v12 + 64);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987B5E0, 0, 0);
}

uint64_t sub_1A987B5E0()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v26 = v0[16];
  v5 = v0[10];
  v4 = v0[11];
  v25 = v5;
  v7 = v0[8];
  v6 = v0[9];
  v23 = v1;
  v24 = v7;
  v8 = v0[7];
  v27 = v0[14];
  v20 = v0[6];
  v21 = v0[4];
  v22 = v0[3];
  v9 = swift_allocObject();
  v0[18] = v9;
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v5;
  v9[5] = v20;
  v9[6] = v8;
  (*(v2 + 16))(v1, v21, v6);
  (*(v3 + 16))(v27, v22, v4);
  v10 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v11 = (v26 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v0[19] = v12;
  *(v12 + 2) = v24;
  *(v12 + 3) = v6;
  *(v12 + 4) = v25;
  (*(v2 + 32))(&v12[v10], v23, v6);
  (*(v3 + 32))(&v12[v11], v27, v4);

  v13 = swift_task_alloc();
  v0[20] = v13;
  v16 = type metadata accessor for OperationTimeoutResult(0, v24, v14, v15);
  *v13 = v0;
  v13[1] = sub_1A987B808;
  v17 = v0[5];
  v18 = v0[2];

  return concurrentRace<A>(priority:operation:against:)(v18, v17, &unk_1A999CEF8, v9, &unk_1A999CF08, v12, v16);
}

uint64_t sub_1A987B808()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A987B974, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A987B974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A987BA00(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = *(a4 - 8);
  v6 = swift_task_alloc();
  v4[5] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1A987BB54;

  return v9(v6);
}

uint64_t sub_1A987BB54()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1A987BD1C;
  }

  else
  {
    v2 = sub_1A987BC68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A987BC68()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  (*(v1 + 32))(v3, v0[5], v2);
  (*(v1 + 56))(v3, 0, 2, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A987BD1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A987BD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = swift_getAssociatedTypeWitness();
  v7 = sub_1A99770A0();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[12] = AssociatedTypeWitness;
  v6[13] = *(AssociatedTypeWitness - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987BF00, 0, 0);
}

uint64_t sub_1A987BF00()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v12 = v0[11];
  v4 = v0[8];
  sub_1A9977890();
  swift_getAssociatedConformanceWitness();
  sub_1A99773F0();
  v5 = *(v3 + 8);
  v0[16] = v5;
  v0[17] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  (*(*(v4 - 8) + 56))(v12, 1, 1, v4);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1A987C084;
  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[6];
  v10 = v0[7];

  return MEMORY[0x1EEE6DE58](v7, v8, v9, v10);
}

uint64_t sub_1A987C084()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  if (v0)
  {
    v8 = sub_1A987C31C;
  }

  else
  {
    v8 = sub_1A987C260;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A987C260()
{
  (*(*(v0[5] - 8) + 56))(v0[2], 1, 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A987C31C()
{
  (*(*(*(v0 + 40) - 8) + 56))(*(v0 + 16), 2, 2);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A987C3E0@<X0>(char *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a2;
  v62 = a1;
  v68 = a4;
  v5 = *(a3 + 24);
  v60 = *(a3 + 16);
  v61 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A99770A0();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v53 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v53 - v15;
  v67 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v53 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v53 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v53 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v66, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return (*(v67 + 32))(v68, v30, AssociatedTypeWitness);
    }

    else
    {
      (*v30)(v62, v65);
    }
  }

  else
  {
    v54 = v22;
    v57 = v10;
    v58 = v19;
    v62 = v25;
    v34 = v64;
    v35 = *(swift_getTupleTypeMetadata2() + 48);
    v36 = v67;
    v37 = v67 + 32;
    v66 = *(v67 + 32);
    v66(v28, v30, AssociatedTypeWitness);
    v38 = v63;
    (*(v63 + 32))(v16, &v30[v35], v34);
    v39 = v65;
    v65 = *(v38 + 16);
    v65(v13, v39, v34);
    v55 = *(v36 + 48);
    v40 = v55(v13, 1, AssociatedTypeWitness);
    v41 = v38;
    v42 = v16;
    v59 = v28;
    v56 = v37;
    if (v40 == 1)
    {
      v43 = v64;
      (*(v41 + 8))(v13, v64);
      v44 = v67;
      v45 = v62;
      (*(v67 + 16))(v62, v28, AssociatedTypeWitness);
    }

    else
    {
      v46 = v54;
      v66(v54, v13, AssociatedTypeWitness);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v45 = v62;
      sub_1A9977420();
      v44 = v67;
      (*(v67 + 8))(v46, AssociatedTypeWitness);
      v43 = v64;
    }

    v47 = v57;
    v65(v57, v42, v43);
    v48 = v55(v47, 1, AssociatedTypeWitness);
    v49 = v58;
    if (v48 == 1)
    {
      v50 = v47;
      v51 = *(v63 + 8);
      v51(v42, v43);
      (*(v44 + 8))(v59, AssociatedTypeWitness);
      v51(v50, v43);
      return (v66)(v68, v45, AssociatedTypeWitness);
    }

    else
    {
      v66(v58, v47, AssociatedTypeWitness);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      sub_1A9977860();
      v52 = *(v44 + 8);
      v52(v49, AssociatedTypeWitness);
      v52(v45, AssociatedTypeWitness);
      (*(v63 + 8))(v42, v43);
      return (v52)(v59, AssociatedTypeWitness);
    }
  }
}

uint64_t withAutomaticRetry<A, B>(limit:clock:backoffStrategy:shouldRetry:body:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v14;
  *(v8 + 88) = v15;
  *(v8 + 64) = a8;
  *(v8 + 72) = v13;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 240) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 96) = AssociatedTypeWitness;
  *(v8 + 104) = *(AssociatedTypeWitness - 8);
  *(v8 + 112) = swift_task_alloc();
  v10 = sub_1A99770A0();
  *(v8 + 120) = v10;
  *(v8 + 128) = *(v10 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987CBC8, 0, 0);
}

uint64_t sub_1A987CBC8()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v3 + 56);
  v0[19] = v4;
  v0[20] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v0[21] = 1;
  v8 = (v0[8] + *v0[8]);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1A987CCF4;
  v6 = v0[2];

  return v8(v6, 1);
}

uint64_t sub_1A987CCF4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1A987CFE4;
  }

  else
  {
    v2 = sub_1A987CE08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A987CE08()
{
  (*(v0[16] + 8))(v0[18], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A987CEA4()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);

  result = (*(v3 + 8))(v2, v4);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 168) = v1 + 1;
    v8 = (*(v0 + 64) + **(v0 + 64));
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_1A987CCF4;
    v7 = *(v0 + 16);

    return v8(v7, v1 + 1);
  }

  return result;
}

uint64_t sub_1A987CFE4(uint64_t a1)
{
  if ((*(v1 + 240) & 1) != 0 || *(v1 + 168) < *(v1 + 24))
  {
    v8 = (*(v1 + 48) + **(v1 + 48));
    v5 = swift_task_alloc();
    *(v1 + 192) = v5;
    *v5 = v1;
    v5[1] = sub_1A987D180;
    v6 = *(v1 + 184);
    v7 = *(v1 + 168);

    return v8(v7, v6);
  }

  else
  {
    v2 = *(v1 + 128);
    swift_willThrow();
    (*(v2 + 8))(*(v1 + 144), *(v1 + 120));

    v3 = *(v1 + 8);

    return v3();
  }
}

uint64_t sub_1A987D180(char a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_1A987D628;
  }

  else
  {
    *(v4 + 241) = a1 & 1;
    v5 = sub_1A987D2AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A987D2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 241) == 1)
  {
    v5 = *(v4 + 168);
    v6 = *(v4 + 144);
    v7 = *(v4 + 152);
    v8 = *(v4 + 128);
    v23 = *(v4 + 136);
    v10 = *(v4 + 112);
    v9 = *(v4 + 120);
    v11 = *(v4 + 96);
    v12 = *(v4 + 104);
    v13 = type metadata accessor for BackoffStrategy(0, *(v4 + 80), *(v4 + 88), a4);
    sub_1A987C3E0(v5, v6, v13, v10);
    v14 = *(v8 + 8);
    *(v4 + 208) = v14;
    *(v4 + 216) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v6, v9);
    (*(v12 + 16))(v6, v10, v11);
    v7(v6, 0, 1, v11);
    v7(v23, 1, 1, v11);
    v15 = swift_task_alloc();
    *(v4 + 224) = v15;
    *v15 = v4;
    v15[1] = sub_1A987D4B8;
    v16 = *(v4 + 136);
    v17 = *(v4 + 112);
    v18 = *(v4 + 80);
    v19 = *(v4 + 88);

    return sub_1A987D78C(v17, v16, v18, v19);
  }

  else
  {
    v21 = *(v4 + 128);
    swift_willThrow();
    (*(v21 + 8))(*(v4 + 144), *(v4 + 120));

    v22 = *(v4 + 8);

    return v22();
  }
}

uint64_t sub_1A987D4B8()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  (*(v2 + 208))(*(v2 + 136), *(v2 + 120));
  if (v0)
  {
    v3 = sub_1A987D6D4;
  }

  else
  {
    v3 = sub_1A987CEA4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A987D628()
{
  v1 = *(v0 + 128);

  (*(v1 + 8))(*(v0 + 144), *(v0 + 120));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A987D6D4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);
  (*(v0 + 208))(*(v0 + 144), *(v0 + 120));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A987D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987D878, 0, 0);
}

uint64_t sub_1A987D878()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  sub_1A9977890();
  swift_getAssociatedConformanceWitness();
  sub_1A99773F0();
  v4 = *(v3 + 8);
  v0[11] = v4;
  v0[12] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1A987D9B0;
  v6 = v0[10];
  v7 = v0[5];
  v8 = v0[3];
  v9 = v0[4];

  return MEMORY[0x1EEE6DE58](v6, v8, v9, v7);
}

uint64_t sub_1A987D9B0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 112) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A987DB6C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A987DB6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t withAutomaticRetry<A>(limit:backoffStrategy:shouldRetry:body:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a8;
  *(v8 + 104) = v14;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 64) = a2;
  *(v8 + 72) = a5;
  *(v8 + 50) = a3;
  *(v8 + 56) = a1;
  v10 = sub_1A99773E0();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  v11 = *(a4 + 16);
  *(v8 + 136) = *a4;
  *(v8 + 152) = v11;
  *(v8 + 51) = *(a4 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1A987DCC8, 0, 0);
}

uint64_t sub_1A987DCC8()
{
  v1 = *(v0 + 51);
  v2 = *(v0 + 50);
  v11 = *(v0 + 152);
  v12 = *(v0 + 136);
  sub_1A99778B0();
  *(v0 + 32) = v11;
  *(v0 + 16) = v12;
  *(v0 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  sub_1A987E5F8();
  *v3 = v0;
  v3[1] = sub_1A987DDC0;
  v4 = *(v0 + 128);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = *(v0 + 56);

  return withAutomaticRetry<A, B>(limit:clock:backoffStrategy:shouldRetry:body:)(v9, v8, v2 & 1, v4, v0 + 16, v6, v7, v5);
}

uint64_t sub_1A987DDC0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(v5 + 176) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A987DF68, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A987DF68()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1A987E03C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A987E06C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A987E098@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1A987E15C@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s7Sharing12CodableErrorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8)
    {
      return 0;
    }

LABEL_7:
    if (v4)
    {
      if (!v10 || (v3 != v7 || v4 != v10) && (sub_1A99777E0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v6)
    {
      return v11 && (v5 == v9 && v6 == v11 || (sub_1A99777E0() & 1) != 0);
    }

    return !v11;
  }

  v12 = sub_1A99777E0();
  result = 0;
  if ((v12 & 1) != 0 && v2 == v8)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1A987E364()
{
  result = qword_1EB3B3950;
  if (!qword_1EB3B3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3950);
  }

  return result;
}

unint64_t sub_1A987E3D8()
{
  result = qword_1EB3B3968;
  if (!qword_1EB3B3968)
  {
    sub_1A9812DE0(255, &qword_1EB3B3960, 0x1E695DEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3968);
  }

  return result;
}

uint64_t sub_1A987E440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2638;

  return sub_1A987A668(a1, v4, v5, v6);
}

uint64_t sub_1A987E51C(uint64_t a1, uint64_t a2)
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
  v12[1] = sub_1A97B2638;

  return sub_1A987AA2C(a1, a2, v7, v8, v9, v11, v10, v6);
}

unint64_t sub_1A987E5F8()
{
  result = qword_1EB3AB608;
  if (!qword_1EB3AB608)
  {
    sub_1A99773E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB608);
  }

  return result;
}

uint64_t sub_1A987E650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A987BA00(a1, v5, v6, v4);
}

uint64_t sub_1A987E718(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = v8 + *(*(v6 - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1A97B2988;

  return sub_1A987BD80(a1, v1 + v8, v1 + v11, v5, v6, v7);
}

unint64_t sub_1A987E8BC()
{
  result = qword_1EB3B3970;
  if (!qword_1EB3B3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3970);
  }

  return result;
}

unint64_t sub_1A987E914()
{
  result = qword_1EB3B3978;
  if (!qword_1EB3B3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3978);
  }

  return result;
}

unint64_t sub_1A987E96C()
{
  result = qword_1EB3B3980;
  if (!qword_1EB3B3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3980);
  }

  return result;
}

unint64_t sub_1A987E9C4()
{
  result = qword_1EB3B3988[0];
  if (!qword_1EB3B3988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B3988);
  }

  return result;
}

unint64_t sub_1A987EA1C()
{
  result = qword_1EB3AC838;
  if (!qword_1EB3AC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC838);
  }

  return result;
}

unint64_t sub_1A987EA74()
{
  result = qword_1EB3AC830;
  if (!qword_1EB3AC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC830);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A987EB00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80) >> 1;
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

double sub_1A987EB50(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = 2 * -a2;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A987EC10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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