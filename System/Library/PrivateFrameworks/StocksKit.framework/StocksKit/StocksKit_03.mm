uint64_t type metadata accessor for QuoteDetail(uint64_t a1)
{
  result = qword_28043A4A0;
  if (!qword_28043A4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t QuoteDetail.currencyCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuoteDetail(0) + 68));

  return v1;
}

uint64_t sub_26BB6AAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_26BB6AC08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BB7CFE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t QuoteDetail.fundMetadata.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for QuoteDetail(0) + 84));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v5 = v3[5];
  v14 = v3[4];
  v6 = v14;
  v15 = v5;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
  *a1 = v7;
  a1[1] = v8;
  return sub_26BB6AAC8(v11, &v10, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
}

unint64_t sub_26BB6ACEC(char a1)
{
  result = 0x506E65704F796164;
  switch(a1)
  {
    case 1:
      result = 0x7250776F4C796164;
      break;
    case 2:
      result = 0x5068676948796164;
      break;
    case 3:
      result = 0x50776F4C72616579;
      break;
    case 4:
      result = 0x6867694872616579;
      break;
    case 5:
      result = 0x646E656469766964;
      break;
    case 6:
      result = 0x656D756C6F76;
      break;
    case 7:
      result = 0x5665676172657661;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 1635018082;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x73676E696E726165;
      break;
    case 13:
      result = 0x79636E6572727563;
      break;
    case 14:
      result = 0x55736C6961746564;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x695474656B72616DLL;
      break;
    case 17:
      result = 0x6174654D646E7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26BB6AF24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB6E06C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB6AF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB6D950(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB6AF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB6D950(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t QuoteDetail.encode(to:)(void *a1)
{
  v3 = v1;
  sub_26BB6D9F8(0, &qword_28043A478, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB6D950(v10, v11, v12);
  sub_26BB7D488();
  LOBYTE(v33[0]) = 0;
  sub_26BB7D2D8();
  if (!v2)
  {
    LOBYTE(v33[0]) = 1;
    sub_26BB7D2D8();
    LOBYTE(v33[0]) = 2;
    sub_26BB7D2D8();
    LOBYTE(v33[0]) = 3;
    sub_26BB7D2D8();
    LOBYTE(v33[0]) = 4;
    sub_26BB7D2D8();
    LOBYTE(v33[0]) = 5;
    sub_26BB7D2D8();
    LOBYTE(v33[0]) = 6;
    sub_26BB7D2E8();
    LOBYTE(v33[0]) = 7;
    sub_26BB7D2E8();
    LOBYTE(v33[0]) = 8;
    sub_26BB7D2D8();
    LOBYTE(v33[0]) = 9;
    sub_26BB7D2D8();
    LOBYTE(v33[0]) = 10;
    sub_26BB7D2D8();
    v25 = type metadata accessor for QuoteDetail(0);
    LOBYTE(v33[0]) = 11;
    sub_26BB7BE48();
    sub_26BB6E754(&qword_28158BB28, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26BB7D2F8();
    LOBYTE(v33[0]) = 12;
    sub_26BB7D2F8();
    LOBYTE(v33[0]) = 13;
    sub_26BB7D2C8();
    LOBYTE(v33[0]) = 14;
    sub_26BB7BDB8();
    sub_26BB6E754(&qword_28158BB38, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_26BB7D2F8();
    LOBYTE(v33[0]) = 15;
    sub_26BB7D2F8();
    v39 = 16;
    sub_26BB7BFC8();
    sub_26BB6E754(&qword_28043A150, MEMORY[0x277CC9A70], MEMORY[0x277CC9A78]);
    sub_26BB7D2F8();
    v14 = (v3 + *(v25 + 84));
    v15 = v14[3];
    v16 = v14[1];
    v34 = v14[2];
    v35 = v15;
    v17 = v14[3];
    v18 = v14[5];
    v36 = v14[4];
    v37 = v18;
    v19 = v14[1];
    v33[0] = *v14;
    v33[1] = v19;
    v29 = v34;
    v30 = v17;
    v20 = v14[5];
    v31 = v36;
    v32 = v20;
    v27 = v33[0];
    v28 = v16;
    v38 = 17;
    v21 = sub_26BB6AAC8(v33, v26, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
    sub_26BB6D9A4(v21, v22, v23);
    sub_26BB7D2F8();
    v26[2] = v29;
    v26[3] = v30;
    v26[4] = v31;
    v26[5] = v32;
    v26[0] = v27;
    v26[1] = v28;
    sub_26BB6DA5C(v26, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t QuoteDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_26BB6AC08(0, &qword_28043A468, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v50 - v4;
  sub_26BB6AC08(0, &qword_28158C328, MEMORY[0x277CC9260]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  sub_26BB6AC08(0, &qword_28043A128, MEMORY[0x277CC9578]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  sub_26BB6D9F8(0, &qword_28043A490, MEMORY[0x277D844C8]);
  v58 = v16;
  v56 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for QuoteDetail(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v60 = a1;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_26BB6D950(v23, v24, v25);
  v57 = v18;
  v26 = v59;
  sub_26BB7D478();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  v59 = v19;
  LOBYTE(v61) = 0;
  *v21 = sub_26BB7D238();
  v21[8] = v27 & 1;
  LOBYTE(v61) = 1;
  *(v21 + 2) = sub_26BB7D238();
  v21[24] = v28 & 1;
  LOBYTE(v61) = 2;
  *(v21 + 4) = sub_26BB7D238();
  v21[40] = v29 & 1;
  LOBYTE(v61) = 3;
  *(v21 + 6) = sub_26BB7D238();
  v21[56] = v30 & 1;
  LOBYTE(v61) = 4;
  *(v21 + 8) = sub_26BB7D238();
  v21[72] = v31 & 1;
  LOBYTE(v61) = 5;
  *(v21 + 10) = sub_26BB7D238();
  v21[88] = v32 & 1;
  LOBYTE(v61) = 6;
  *(v21 + 12) = sub_26BB7D248();
  v21[104] = v33 & 1;
  LOBYTE(v61) = 7;
  v34 = sub_26BB7D248();
  v52 = v15;
  v51 = v13;
  v50 = v9;
  *(v21 + 14) = v34;
  v21[120] = v35 & 1;
  LOBYTE(v61) = 8;
  *(v21 + 16) = sub_26BB7D238();
  v21[136] = v36 & 1;
  LOBYTE(v61) = 9;
  *(v21 + 18) = sub_26BB7D238();
  v21[152] = v37 & 1;
  LOBYTE(v61) = 10;
  *(v21 + 20) = sub_26BB7D238();
  v21[168] = v38 & 1;
  sub_26BB7BE48();
  LOBYTE(v61) = 11;
  sub_26BB6E754(&qword_28158BB20, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_26BB7D258();
  sub_26BB6DABC(v52, &v21[v59[15]], &qword_28043A128, MEMORY[0x277CC9578]);
  LOBYTE(v61) = 12;
  sub_26BB7D258();
  sub_26BB6DABC(v51, &v21[v59[16]], &qword_28043A128, MEMORY[0x277CC9578]);
  LOBYTE(v61) = 13;
  v39 = sub_26BB7D228();
  v40 = &v21[v59[17]];
  *v40 = v39;
  v40[1] = v41;
  sub_26BB7BDB8();
  LOBYTE(v61) = 14;
  sub_26BB6E754(&qword_28158BB30, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_26BB7D258();
  sub_26BB6DABC(v50, &v21[v59[18]], &qword_28158C328, MEMORY[0x277CC9260]);
  LOBYTE(v61) = 15;
  sub_26BB7D258();
  sub_26BB6DABC(v55, &v21[v59[19]], &qword_28158C328, MEMORY[0x277CC9260]);
  sub_26BB7BFC8();
  LOBYTE(v61) = 16;
  sub_26BB6E754(&qword_28043A170, MEMORY[0x277CC9A70], MEMORY[0x277CC9A90]);
  sub_26BB7D258();
  v42 = sub_26BB6DABC(v54, &v21[v59[20]], &qword_28043A468, MEMORY[0x277CC9A70]);
  v67 = 17;
  sub_26BB6DB28(v42, v43, v44);
  sub_26BB7D258();
  (*(v56 + 8))(v57, v58);
  v45 = &v21[v59[21]];
  v46 = v64;
  *(v45 + 2) = v63;
  *(v45 + 3) = v46;
  v47 = v66;
  *(v45 + 4) = v65;
  *(v45 + 5) = v47;
  v48 = v62;
  *v45 = v61;
  *(v45 + 1) = v48;
  sub_26BB6DB7C(v21, v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  return sub_26BB6DBE0(v21);
}

BOOL _s9StocksKit11QuoteDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v143 = sub_26BB7BFC8();
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v138 = &v131[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x277CC9A70];
  sub_26BB6AC08(0, &qword_28043A468, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v6 - 8);
  v140 = &v131[-v7];
  sub_26BB6E63C(0, &qword_28043A4D0, &qword_28043A468, v5, sub_26BB6AC08);
  v139 = v8;
  MEMORY[0x28223BE20](v8);
  v145 = &v131[-v9];
  v151 = sub_26BB7BDB8();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v142 = &v131[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x277CC9260];
  sub_26BB6AC08(0, &qword_28158C328, MEMORY[0x277CC9260]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v144 = &v131[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v146 = &v131[-v15];
  sub_26BB6E63C(0, &qword_28043A0F8, &qword_28158C328, v11, sub_26BB6AC08);
  v148 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v147 = &v131[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v150 = &v131[-v19];
  v20 = sub_26BB7BE48();
  v152 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v131[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x277CC9578];
  sub_26BB6AC08(0, &qword_28043A128, MEMORY[0x277CC9578]);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v131[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v29 = &v131[-v28];
  sub_26BB6E63C(0, &qword_28043A1D0, &qword_28043A128, v23, sub_26BB6AC08);
  v31 = v30;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v131[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v36 = &v131[-v35];
  v37 = *(a2 + 8);
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
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  v38 = *(a2 + 24);
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
      v38 = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  v39 = *(a2 + 40);
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
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = *(a2 + 56);
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
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  v41 = *(a2 + 72);
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
      v41 = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  v42 = *(a2 + 88);
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
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v43 = 1;
    }

    if (v43)
    {
      return 0;
    }
  }

  v44 = *(a2 + 120);
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
      v44 = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = *(a2 + 136);
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
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  v46 = *(a2 + 152);
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
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v47 = *(a2 + 168);
  if (*(a1 + 168))
  {
    if (!*(a2 + 168))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 160) != *(a2 + 160))
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  v48 = type metadata accessor for QuoteDetail(0);
  v49 = *(v31 + 48);
  v136 = *(v48 + 60);
  v137 = v49;
  v135 = MEMORY[0x277CC9578];
  v133 = v48;
  v134 = sub_26BB6AC08;
  sub_26BB6AAC8(a1 + v136, v36, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  sub_26BB6AAC8(a2 + v136, &v137[v36], &qword_28043A128, v135, v134);
  v135 = *(v152 + 48);
  v136 = v152 + 48;
  if (v135(v36, 1, v20) == 1)
  {
    if (v135(&v137[v36], 1, v20) == 1)
    {
      sub_26BB6DA5C(v36, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
      goto LABEL_74;
    }

LABEL_72:
    v50 = &qword_28043A1D0;
    v51 = &qword_28043A128;
    v52 = MEMORY[0x277CC9578];
    v53 = sub_26BB6AC08;
    v54 = v36;
LABEL_80:
    sub_26BB6E6A4(v54, v50, v51, v52, v53);
    return 0;
  }

  sub_26BB6AAC8(v36, v29, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  if (v135(&v137[v36], 1, v20) == 1)
  {
    (*(v152 + 8))(v29, v20);
    goto LABEL_72;
  }

  (*(v152 + 32))(v22, &v137[v36], v20);
  sub_26BB6E754(&qword_28043A1D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v132 = sub_26BB7CD28();
  v55 = *(v152 + 8);
  v134 = (v152 + 8);
  v137 = v55;
  (v55)(v22, v20);
  (v137)(v29, v20);
  sub_26BB6DA5C(v36, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  if ((v132 & 1) == 0)
  {
    return 0;
  }

LABEL_74:
  v137 = v133[16];
  v56 = *(v31 + 48);
  v57 = MEMORY[0x277CC9578];
  sub_26BB6AAC8(&v137[a1], v34, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  v58 = &v137[a2];
  v137 = v56;
  sub_26BB6AAC8(v58, &v56[v34], &qword_28043A128, v57, sub_26BB6AC08);
  v59 = v135;
  if (v135(v34, 1, v20) == 1)
  {
    if (v59(&v137[v34], 1, v20) == 1)
    {
      sub_26BB6DA5C(v34, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
      goto LABEL_83;
    }

    goto LABEL_79;
  }

  sub_26BB6AAC8(v34, v27, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  if (v59(&v137[v34], 1, v20) == 1)
  {
    (*(v152 + 8))(v27, v20);
LABEL_79:
    v50 = &qword_28043A1D0;
    v51 = &qword_28043A128;
    v52 = MEMORY[0x277CC9578];
    v53 = sub_26BB6AC08;
    v54 = v34;
    goto LABEL_80;
  }

  v61 = v152;
  (*(v152 + 32))(v22, &v137[v34], v20);
  sub_26BB6E754(&qword_28043A1D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v62 = sub_26BB7CD28();
  v63 = *(v61 + 8);
  v63(v22, v20);
  v63(v27, v20);
  sub_26BB6DA5C(v34, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  v64 = v133[17];
  v65 = (a1 + v64);
  v66 = *(a1 + v64 + 8);
  v67 = (a2 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_26BB7D378() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  v69 = v133[18];
  v70 = *(v148 + 48);
  v71 = MEMORY[0x277CC9260];
  v72 = v150;
  sub_26BB6AAC8(a1 + v69, v150, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  sub_26BB6AAC8(a2 + v69, &v72[v70], &qword_28158C328, v71, sub_26BB6AC08);
  v152 = *(v149 + 48);
  if ((v152)(v72, 1, v151) == 1)
  {
    if ((v152)(&v150[v70], 1, v151) == 1)
    {
      sub_26BB6DA5C(v150, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
      goto LABEL_97;
    }

    goto LABEL_95;
  }

  v73 = v150;
  sub_26BB6AAC8(v150, v146, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  if ((v152)(&v73[v70], 1, v151) == 1)
  {
    (*(v149 + 8))(v146, v151);
LABEL_95:
    v50 = &qword_28043A0F8;
    v51 = &qword_28158C328;
    v52 = MEMORY[0x277CC9260];
    v53 = sub_26BB6AC08;
    v54 = v150;
    goto LABEL_80;
  }

  v74 = v149;
  v75 = &v150[v70];
  v76 = v142;
  v77 = v151;
  (*(v149 + 32))(v142, v75, v151);
  sub_26BB6E754(&qword_28043A108, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v78 = v146;
  v79 = sub_26BB7CD28();
  v80 = *(v74 + 8);
  v80(v76, v77);
  v80(v78, v77);
  sub_26BB6DA5C(v150, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

LABEL_97:
  v81 = v133[19];
  v82 = v147;
  v83 = *(v148 + 48);
  v84 = MEMORY[0x277CC9260];
  sub_26BB6AAC8(a1 + v81, v147, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  v85 = a2 + v81;
  v86 = v83;
  sub_26BB6AAC8(v85, &v82[v83], &qword_28158C328, v84, sub_26BB6AC08);
  if ((v152)(v82, 1, v151) == 1)
  {
    if ((v152)(&v147[v83], 1, v151) == 1)
    {
      sub_26BB6DA5C(v147, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  v87 = v147;
  sub_26BB6AAC8(v147, v144, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  if ((v152)(&v87[v83], 1, v151) == 1)
  {
    (*(v149 + 8))(v144, v151);
LABEL_102:
    v50 = &qword_28043A0F8;
    v51 = &qword_28158C328;
    v52 = MEMORY[0x277CC9260];
    v53 = sub_26BB6AC08;
    v54 = v147;
    goto LABEL_80;
  }

  v88 = v149;
  v89 = v147;
  v90 = v142;
  v91 = v151;
  (*(v149 + 32))(v142, &v147[v86], v151);
  sub_26BB6E754(&qword_28043A108, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v92 = v144;
  v93 = sub_26BB7CD28();
  v94 = *(v88 + 8);
  v94(v90, v91);
  v94(v92, v91);
  sub_26BB6DA5C(v89, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  if ((v93 & 1) == 0)
  {
    return 0;
  }

LABEL_104:
  v95 = v133[20];
  v96 = *(v139 + 48);
  v97 = MEMORY[0x277CC9A70];
  v98 = v145;
  sub_26BB6AAC8(a1 + v95, v145, &qword_28043A468, MEMORY[0x277CC9A70], sub_26BB6AC08);
  sub_26BB6AAC8(a2 + v95, &v98[v96], &qword_28043A468, v97, sub_26BB6AC08);
  v99 = *(v141 + 48);
  if (v99(v98, 1, v143) == 1)
  {
    if (v99(&v145[v96], 1, v143) == 1)
    {
      sub_26BB6DA5C(v145, &qword_28043A468, MEMORY[0x277CC9A70], sub_26BB6AC08);
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  v100 = v145;
  sub_26BB6AAC8(v145, v140, &qword_28043A468, MEMORY[0x277CC9A70], sub_26BB6AC08);
  if (v99(&v100[v96], 1, v143) == 1)
  {
    (*(v141 + 8))(v140, v143);
LABEL_109:
    v50 = &qword_28043A4D0;
    v51 = &qword_28043A468;
    v52 = MEMORY[0x277CC9A70];
    v53 = sub_26BB6AC08;
    v54 = v145;
    goto LABEL_80;
  }

  v101 = v141;
  v102 = v145;
  v103 = &v145[v96];
  v104 = v138;
  v105 = v143;
  (*(v141 + 32))(v138, v103, v143);
  sub_26BB6E754(&qword_28043A4E0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A88]);
  v106 = v140;
  v107 = sub_26BB7CD28();
  v108 = *(v101 + 8);
  v108(v104, v105);
  v108(v106, v105);
  sub_26BB6DA5C(v102, &qword_28043A468, MEMORY[0x277CC9A70], sub_26BB6AC08);
  if ((v107 & 1) == 0)
  {
    return 0;
  }

LABEL_111:
  v109 = (a1 + v133[21]);
  v110 = v109[1];
  v111 = v109[3];
  v190 = v109[2];
  v191 = v111;
  v112 = v109[3];
  v113 = v109[5];
  v192 = v109[4];
  v193 = v113;
  v114 = v109[1];
  v189[0] = *v109;
  v189[1] = v114;
  v115 = (a2 + v133[21]);
  v116 = v115[1];
  v194[0] = *v115;
  v194[1] = v116;
  v117 = v115[3];
  v118 = v115[5];
  v197 = v115[4];
  v198 = v118;
  v119 = v115[3];
  v120 = *v115;
  v121 = v115[1];
  v195 = v115[2];
  v196 = v119;
  v186 = v190;
  v187 = v112;
  v188 = v192;
  v184 = v189[0];
  v185 = v110;
  v181 = v195;
  v182 = v117;
  v122 = v193;
  v183 = v197;
  v179 = v120;
  v180 = v121;
  v123 = v198;
  if (v193)
  {
    v124 = v109[3];
    v169 = v109[2];
    v170 = v124;
    v171 = v109[4];
    v125 = v109[1];
    v167 = *v109;
    v168 = v125;
    v172 = v193;
    v163 = v169;
    v164 = v124;
    v165 = v171;
    v166 = v193;
    v161 = v167;
    v162 = v125;
    if (v198)
    {
      v126 = v115[3];
      v157 = v115[2];
      v158 = v126;
      v159 = v115[4];
      v127 = v115[1];
      v155 = *v115;
      v156 = v127;
      v160 = v198;
      v128 = _s9StocksKit12FundMetadataV2eeoiySbAC_ACtFZ_0(&v161, &v155);
      v153[2] = v157;
      v153[3] = v158;
      v153[4] = v159;
      v153[5] = v160;
      v153[0] = v155;
      v153[1] = v156;
      sub_26BB6AAC8(v189, v154, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
      sub_26BB6AAC8(v194, v154, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
      sub_26BB6AAC8(&v167, v154, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
      sub_26BB6E700(v153);
      v154[2] = v163;
      v154[3] = v164;
      v154[4] = v165;
      v154[5] = v166;
      v154[0] = v161;
      v154[1] = v162;
      sub_26BB6E700(v154);
      v157 = v186;
      v158 = v187;
      v159 = v188;
      v155 = v184;
      v156 = v185;
      v160 = v122;
      sub_26BB6DA5C(&v155, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
      return (v128 & 1) != 0;
    }

    v157 = v169;
    v158 = v170;
    v159 = v171;
    v160 = v172;
    v155 = v167;
    v156 = v168;
    sub_26BB6AAC8(v189, v154, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
    sub_26BB6AAC8(v194, v154, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
    sub_26BB6AAC8(&v167, v154, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
    sub_26BB6E700(&v155);
    goto LABEL_118;
  }

  if (v198)
  {
    sub_26BB6AAC8(v189, &v167, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
    sub_26BB6AAC8(v194, &v167, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
LABEL_118:
    v169 = v186;
    v170 = v187;
    v171 = v188;
    v167 = v184;
    v168 = v185;
    v172 = v122;
    v175 = v181;
    v176 = v182;
    v177 = v183;
    v173 = v179;
    v174 = v180;
    v178 = v123;
    v50 = &unk_28043A4D8;
    v51 = &qword_28043A470;
    v52 = &type metadata for FundMetadata;
    v53 = sub_26BB49994;
    v54 = &v167;
    goto LABEL_80;
  }

  v129 = v109[3];
  v169 = v109[2];
  v170 = v129;
  v171 = v109[4];
  v130 = v109[1];
  v167 = *v109;
  v168 = v130;
  *&v172 = 0;
  *(&v172 + 1) = *(&v193 + 1);
  sub_26BB6AAC8(v189, &v161, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
  sub_26BB6AAC8(v194, &v161, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
  sub_26BB6DA5C(&v167, &qword_28043A470, &type metadata for FundMetadata, sub_26BB49994);
  return 1;
}

unint64_t sub_26BB6D950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A480;
  if (!qword_28043A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A480);
  }

  return result;
}

unint64_t sub_26BB6D9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A488;
  if (!qword_28043A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A488);
  }

  return result;
}

void sub_26BB6D9F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26BB6D950(0, a2, a3);
    v7 = a3(a1, &type metadata for QuoteDetail.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_26BB6DA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_26BB6DABC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_26BB6AC08(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_26BB6DB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A498;
  if (!qword_28043A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A498);
  }

  return result;
}

uint64_t sub_26BB6DB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteDetail(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB6DBE0(uint64_t a1)
{
  v2 = type metadata accessor for QuoteDetail(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BB6DC64(uint64_t a1)
{
  sub_26BB49994(319, &qword_28043A198, MEMORY[0x277D839F8]);
  if (v1 <= 0x3F)
  {
    sub_26BB49994(319, &qword_28043A4B0, MEMORY[0x277D83E88]);
    if (v2 <= 0x3F)
    {
      sub_26BB6AC08(319, &qword_28043A128, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_26BB49994(319, &qword_28043A1A0, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_26BB6AC08(319, &qword_28158C328, MEMORY[0x277CC9260]);
          if (v5 <= 0x3F)
          {
            sub_26BB6AC08(319, &qword_28043A468, MEMORY[0x277CC9A70]);
            if (v6 <= 0x3F)
            {
              sub_26BB49994(319, &qword_28043A470, &type metadata for FundMetadata);
              if (v7 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for QuoteDetail.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuoteDetail.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BB6DF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A4B8;
  if (!qword_28043A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A4B8);
  }

  return result;
}

unint64_t sub_26BB6DFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A4C0;
  if (!qword_28043A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A4C0);
  }

  return result;
}

unint64_t sub_26BB6E018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A4C8;
  if (!qword_28043A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A4C8);
  }

  return result;
}

uint64_t sub_26BB6E06C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x506E65704F796164 && a2 == 0xEC00000065636972;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7250776F4C796164 && a2 == 0xEB00000000656369 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5068676948796164 && a2 == 0xEC00000065636972 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50776F4C72616579 && a2 == 0xEC00000065636972 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6867694872616579 && a2 == 0xED00006563697250 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E656469766964 && a2 == 0xED0000646C656959 || (sub_26BB7D378() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xED0000656D756C6FLL || (sub_26BB7D378() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026BB83750 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1635018082 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026BB83770 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026BB833E0 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEF65746144646E45 || (sub_26BB7D378() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_26BB7D378() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x55736C6961746564 && a2 == 0xEA00000000004C52 || (sub_26BB7D378() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026BB83790 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL || (sub_26BB7D378() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6174654D646E7566 && a2 == 0xEC00000061746164)
  {

    return 17;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

void sub_26BB6E63C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_26BB6E6A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_26BB6E63C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_26BB6E754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BB6E79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v72 = a1;
  v71 = sub_26BB7BE48();
  v7 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_26BB7C598();
  v9 = *(v69 - 8);
  v10 = MEMORY[0x28223BE20](v69);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v57 - v13;
  v14 = type metadata accessor for StockChart.Entry(0);
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = (&v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_26BB7C5A8();
  v18 = *(v17 + 16);
  if (v18)
  {
    v58 = a4;
    v59 = a3;
    v77 = MEMORY[0x277D84F90];
    sub_26BB63DF4(0, v18, 0);
    v19 = v77;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v57 = v17;
    v23 = v17 + v22;
    v62 = *(v20 + 56);
    v63 = v21;
    v60 = (v20 - 8);
    v61 = (v7 + 8);
    v64 = v20;
    v65 = a2;
    do
    {
      v73 = v18;
      v74 = v19;
      v24 = v68;
      v25 = v69;
      v26 = v63;
      v63(v68, v23, v69);
      v26(v12, v24, v25);
      v75 = v72;
      v76 = a2;

      MEMORY[0x26D68DCA0](14906, 0xE200000000000000);
      v27 = v70;
      sub_26BB7C538();
      sub_26BB70704(&qword_28158C320, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v28 = v71;
      v29 = sub_26BB7D348();
      MEMORY[0x26D68DCA0](v29);

      (*v61)(v27, v28);
      v30 = v76;
      *v16 = v75;
      v16[1] = v30;
      v31 = v67;
      sub_26BB7C538();
      v32 = sub_26BB7C568();
      v33 = v16 + v31[6];
      *v33 = v32;
      v33[8] = v34 & 1;
      v35 = sub_26BB7C578();
      v36 = v16 + v31[7];
      *v36 = v35;
      v36[8] = v37 & 1;
      v38 = sub_26BB7C558();
      v39 = v16 + v31[8];
      *v39 = v38;
      v39[8] = v40 & 1;
      v41 = sub_26BB7C548();
      v42 = v16 + v31[9];
      *v42 = v41;
      v42[8] = v43 & 1;
      v44 = sub_26BB7C588();
      LOBYTE(v26) = v45;
      v46 = *v60;
      (*v60)(v12, v25);
      v47 = v16 + v31[10];
      *v47 = v44;
      v47[8] = v26 & 1;
      v48 = v25;
      v19 = v74;
      v46(v24, v48);
      v77 = v19;
      v50 = *(v19 + 16);
      v49 = *(v19 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_26BB63DF4((v49 > 1), v50 + 1, 1);
        v19 = v77;
      }

      *(v19 + 16) = v50 + 1;
      sub_26BB715D0(v16, v19 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v50, type metadata accessor for StockChart.Entry);
      v23 += v62;
      v18 = v73 - 1;
      a2 = v65;
    }

    while (v73 != 1);

    a4 = v58;
    a3 = v59;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  *a4 = v19;
  v51 = type metadata accessor for StockChart(0);
  sub_26BB7C5B8();
  v52 = sub_26BB7C518();
  v53 = a4 + *(v51 + 24);
  *v53 = v52;
  v53[8] = v54 & 1;
  sub_26BB7C528();
  v55 = sub_26BB7C5C8();
  return (*(*(v55 - 8) + 8))(a3, v55);
}

uint64_t StockChart.Entry.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StockChart.Entry.referenceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StockChart.Entry(0) + 20);
  v4 = sub_26BB7BE48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26BB6EE64()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 7827308;
  if (v1 != 5)
  {
    v3 = 0x656D756C6F76;
  }

  v4 = 0x65736F6C63;
  if (v1 != 3)
  {
    v4 = 1751607656;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x636E657265666572;
  if (v1 != 1)
  {
    v5 = 1852141679;
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

uint64_t sub_26BB6EF1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB71214(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB6EF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB706B0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB6EF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB706B0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t StockChart.Entry.encode(to:)(void *a1)
{
  sub_26BB70AF0(0, &qword_28043A4E8, sub_26BB706B0, &type metadata for StockChart.Entry.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB706B0(v8, v9, v10);
  sub_26BB7D488();
  v19 = 0;
  sub_26BB7D308();
  if (!v1)
  {
    type metadata accessor for StockChart.Entry(0);
    v18 = 1;
    sub_26BB7BE48();
    sub_26BB70704(&qword_28158BB28, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26BB7D328();
    v17 = 2;
    sub_26BB7D2D8();
    v16 = 3;
    sub_26BB7D2D8();
    v15 = 4;
    sub_26BB7D2D8();
    v14 = 5;
    sub_26BB7D2D8();
    v13 = 6;
    sub_26BB7D2D8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StockChart.Entry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_26BB7BE48();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB70AF0(0, &qword_28043A4F8, sub_26BB706B0, &type metadata for StockChart.Entry.CodingKeys, MEMORY[0x277D844C8]);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for StockChart.Entry(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB706B0(v12, v13, v14);
  v48 = v8;
  v15 = v49;
  sub_26BB7D478();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v5;
  v49 = v9;
  v17 = v44;
  v18 = v45;
  v56 = 0;
  v19 = v11;
  *v11 = sub_26BB7D268();
  v11[1] = v20;
  v55 = 1;
  sub_26BB70704(&qword_28158BB20, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_26BB7D288();
  v21 = v49;
  (*(v17 + 32))(v11 + *(v49 + 20), v16, v18);
  v54 = 2;
  v22 = sub_26BB7D238();
  v23 = a1;
  v24 = v19 + *(v21 + 24);
  *v24 = v22;
  *(v24 + 8) = v25 & 1;
  v53 = 3;
  v26 = sub_26BB7D238();
  v27 = v21;
  v28 = v19 + *(v21 + 28);
  *v28 = v26;
  *(v28 + 8) = v29 & 1;
  v52 = 4;
  v30 = v47;
  v31 = sub_26BB7D238();
  v32 = v19 + *(v27 + 32);
  *v32 = v31;
  *(v32 + 8) = v33 & 1;
  v51 = 5;
  v34 = sub_26BB7D238();
  v35 = v19 + *(v27 + 36);
  *v35 = v34;
  *(v35 + 8) = v36 & 1;
  v50 = 6;
  v37 = sub_26BB7D238();
  v38 = v27;
  LOBYTE(v27) = v39;
  (*(v46 + 8))(v48, v30);
  v40 = v19 + *(v38 + 40);
  *v40 = v37;
  *(v40 + 8) = v27 & 1;
  sub_26BB7076C(v19, v43, type metadata accessor for StockChart.Entry);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return sub_26BB70BE8(v19, type metadata accessor for StockChart.Entry);
}

uint64_t StockChart.Feature.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26BB7D1F8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26BB6F89C()
{
  sub_26BB7D418();
  sub_26BB7CD88();
  return sub_26BB7D458();
}

uint64_t sub_26BB6F900(uint64_t a1)
{
  sub_26BB7D418();
  sub_26BB7CD88();
  return sub_26BB7D458();
}

uint64_t sub_26BB6F94C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26BB7D1F8();

  *a2 = v3 != 0;
  return result;
}

uint64_t StockChart.marketTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StockChart(0) + 28);
  v4 = sub_26BB7BFC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *StockChart.features.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2 - 1;
  v4 = type metadata accessor for StockChart.Entry(0);
  v5 = v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + *(*(v4 - 8) + 72) * v3 + *(v4 + 40);
  if ((*(v5 + 8) & 1) != 0 || *v5 <= 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return &unk_287C831D0;
  }
}

uint64_t sub_26BB6FB90()
{
  v1 = 0x73656972746E65;
  v2 = 0x73756F6976657270;
  if (*v0 != 2)
  {
    v2 = 0x695474656B72616DLL;
  }

  if (*v0)
  {
    v1 = 0x676E615265746164;
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

uint64_t sub_26BB6FC28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB71454(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB6FC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB709B4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB6FC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB709B4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t StockChart.encode(to:)(void *a1)
{
  v3 = v1;
  sub_26BB70AF0(0, &qword_28043A510, sub_26BB709B4, &type metadata for StockChart.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB709B4(v10, v11, v12);
  sub_26BB7D488();
  v15 = *v3;
  v14[15] = 0;
  sub_26BB70A08(0);
  sub_26BB70B58(&qword_28043A528, &qword_28043A530, &protocol conformance descriptor for StockChart.Entry, MEMORY[0x277D83948]);
  sub_26BB7D328();
  if (!v2)
  {
    type metadata accessor for StockChart(0);
    v14[14] = 1;
    sub_26BB707D4(0);
    sub_26BB70A60(&qword_28043A538, &qword_28158BB28, MEMORY[0x277CC9580], MEMORY[0x277D83640]);
    sub_26BB7D328();
    v14[13] = 2;
    sub_26BB7D2D8();
    v14[12] = 3;
    sub_26BB7BFC8();
    sub_26BB70704(&qword_28043A150, MEMORY[0x277CC9A70], MEMORY[0x277CC9A78]);
    sub_26BB7D328();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t StockChart.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_26BB7BFC8();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB707D4(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB70AF0(0, &qword_28043A540, sub_26BB709B4, &type metadata for StockChart.CodingKeys, MEMORY[0x277D844C8]);
  v35 = v7;
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for StockChart(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v38 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_26BB709B4(v14, v15, v16);
  v36 = v9;
  v17 = v37;
  sub_26BB7D478();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  v18 = v33;
  v19 = v34;
  sub_26BB70A08(0);
  v42 = 0;
  sub_26BB70B58(&qword_28043A548, &qword_28043A550, &protocol conformance descriptor for StockChart.Entry, MEMORY[0x277D83978]);
  sub_26BB7D288();
  v37 = v43;
  v29 = v12;
  *v12 = v43;
  v41 = 1;
  sub_26BB70A60(&qword_28043A558, &qword_28158BB20, MEMORY[0x277CC95A0], MEMORY[0x277D83668]);
  sub_26BB7D288();
  v20 = v10;
  sub_26BB715D0(v6, &v29[*(v10 + 20)], sub_26BB707D4);
  v40 = 2;
  v21 = sub_26BB7D238();
  v22 = &v29[*(v10 + 24)];
  *v22 = v21;
  v22[8] = v23 & 1;
  v39 = 3;
  sub_26BB70704(&qword_28043A170, MEMORY[0x277CC9A70], MEMORY[0x277CC9A90]);
  v24 = v32;
  sub_26BB7D288();
  (*(v18 + 8))(v36, v35);
  v26 = *(v20 + 28);
  v27 = v29;
  (*(v30 + 32))(&v29[v26], v19, v24);
  sub_26BB7076C(v27, v31, type metadata accessor for StockChart);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return sub_26BB70BE8(v27, type metadata accessor for StockChart);
}

BOOL _s9StocksKit10StockChartV5EntryV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_26BB7D378() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for StockChart.Entry(0);
  if ((sub_26BB7BE08() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[8];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = v5[9];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v5[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if ((v28 & 1) == 0)
  {
    if (*v27 != *v29)
    {
      v30 = 1;
    }

    return (v30 & 1) == 0;
  }

  return (v30 & 1) != 0;
}

unint64_t sub_26BB706B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A4F0;
  if (!qword_28043A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A4F0);
  }

  return result;
}

uint64_t sub_26BB70704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BB7076C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_26BB707D4(uint64_t a1)
{
  if (!qword_28043A500)
  {
    sub_26BB7BE48();
    sub_26BB70704(&qword_28043A508, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = sub_26BB7CD18();
    if (!v2)
    {
      atomic_store(v1, &qword_28043A500);
    }
  }
}

uint64_t _s9StocksKit10StockChartV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  if (sub_26BB74104(*a1, *a2))
  {
    v4 = type metadata accessor for StockChart(0);
    sub_26BB7BE48();
    sub_26BB70704(&qword_28043A1D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    if (sub_26BB7CD28())
    {
      sub_26BB707D4(0);
      if (sub_26BB7CD28())
      {
        v5 = *(v4 + 24);
        v6 = (a1 + v5);
        v7 = *(a1 + v5 + 8);
        v8 = (a2 + v5);
        v9 = *(a2 + v5 + 8);
        if (v7)
        {
          if (!v9)
          {
            return 0;
          }

LABEL_10:

          JUMPOUT(0x26D68CEC0);
        }

        if (*v6 != *v8)
        {
          LOBYTE(v9) = 1;
        }

        if ((v9 & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_26BB709B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A518;
  if (!qword_28043A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A518);
  }

  return result;
}

void sub_26BB70A08(uint64_t a1)
{
  if (!qword_28043A520)
  {
    type metadata accessor for StockChart.Entry(255);
    v1 = sub_26BB7CE38();
    if (!v2)
    {
      atomic_store(v1, &qword_28043A520);
    }
  }
}

uint64_t sub_26BB70A60(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_26BB707D4(255);
    sub_26BB70704(a2, MEMORY[0x277CC9578], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26BB70AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_26BB70B58(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_26BB70A08(255);
    sub_26BB70704(a2, type metadata accessor for StockChart.Entry, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BB70BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BB70C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A560;
  if (!qword_28043A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A560);
  }

  return result;
}

void sub_26BB70CC8(uint64_t a1)
{
  sub_26BB70A08(319);
  if (v1 <= 0x3F)
  {
    sub_26BB707D4(319);
    if (v2 <= 0x3F)
    {
      sub_26BB70D7C();
      if (v3 <= 0x3F)
      {
        sub_26BB7BFC8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26BB70D7C()
{
  if (!qword_28043A198)
  {
    v0 = sub_26BB7CFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A198);
    }
  }
}

void sub_26BB70DF4(uint64_t a1)
{
  sub_26BB7BE48();
  if (v1 <= 0x3F)
  {
    sub_26BB70D7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for StockChart.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StockChart.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BB71008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A588;
  if (!qword_28043A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A588);
  }

  return result;
}

unint64_t sub_26BB71060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A590;
  if (!qword_28043A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A590);
  }

  return result;
}

unint64_t sub_26BB710B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A598;
  if (!qword_28043A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A598);
  }

  return result;
}

unint64_t sub_26BB71110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A5A0;
  if (!qword_28043A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5A0);
  }

  return result;
}

unint64_t sub_26BB71168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A5A8;
  if (!qword_28043A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5A8);
  }

  return result;
}

unint64_t sub_26BB711C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A5B0;
  if (!qword_28043A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5B0);
  }

  return result;
}

uint64_t sub_26BB71214(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006574614465 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852141679 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736F6C63 && a2 == 0xE500000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7827308 && a2 == 0xE300000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_26BB7D378();

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

uint64_t sub_26BB71454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656972746E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E615265746164 && a2 == 0xE900000000000065 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73756F6976657270 && a2 == 0xED000065736F6C43 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_26BB7D378();

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

uint64_t sub_26BB715D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB71638()
{
  v1 = sub_26BB7C268();
  v45 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - v4;
  sub_26BB71E54(0);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_26BB7BFF8();
  v8 = *(v47 - 8);
  v9 = MEMORY[0x28223BE20](v47);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v40 - v12;
  v13 = sub_26BB7C008();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7C798();
  sub_26BB71EAC();
  sub_26BB7C7D8();

  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277D690E8])
  {
    v18 = [objc_opt_self() mainBundle];
    v19 = [v18 bundleIdentifier];

    if (v19)
    {
      v20 = sub_26BB7CD48();
      v22 = v21;

      v23 = *(v0 + 104);
      v41 = v0;
      __swift_project_boxed_opaque_existential_1((v0 + 80), v23);
      sub_26BB7C4A8();
      v24 = sub_26BB7C248();
      v25 = *(v45 + 8);
      v40 = v1;
      v25(v5, v1);
      v26 = *(v24 + 16);
      v27 = v47;
      if (v26)
      {
        v28 = 0;
        v46 = v8 + 16;
        while (v28 < *(v24 + 16))
        {
          (*(v8 + 16))(v11, v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, v27);
          if (sub_26BB7BFD8() == v20 && v29 == v22)
          {

LABEL_17:
            v32 = v43;
            (*(v8 + 32))(v43, v11, v27);
            v31 = 0;
            v0 = v41;
            goto LABEL_18;
          }

          v30 = sub_26BB7D378();

          if (v30)
          {

            v27 = v47;
            goto LABEL_17;
          }

          ++v28;
          v27 = v47;
          (*(v8 + 8))(v11, v47);
          if (v26 == v28)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

LABEL_10:

      v31 = 1;
      v0 = v41;
      v32 = v43;
LABEL_18:
      (*(v8 + 56))(v32, v31, 1, v27);
      if ((*(v8 + 48))(v32, 1, v27) != 1)
      {
        v37 = v42;
        (*(v8 + 32))(v42, v32, v27);
        v38 = sub_26BB7BFE8();
        (*(v8 + 8))(v37, v27);
        v33 = v38;
        return v33 & 1;
      }

      sub_26BB71F00(v32);
      v1 = v40;
    }

    v34 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
    v35 = v44;
    sub_26BB7C4A8();
    v36 = sub_26BB7C258();
    (*(v45 + 8))(v35, v1);
    v33 = [v34 enabledForCurrentLevel_];
    return v33 & 1;
  }

  if (v17 == *MEMORY[0x277D690F0])
  {
    v33 = 1;
    return v33 & 1;
  }

  if (v17 == *MEMORY[0x277D690F8])
  {
    v33 = 0;
    return v33 & 1;
  }

LABEL_24:
  result = sub_26BB7D368();
  __break(1u);
  return result;
}

uint64_t sub_26BB71C44(void *a1)
{
  *(v1 + 72) = 0;
  *(v1 + 16) = 0;
  *(v1 + 23) = 0;
  sub_26BB282D8(a1, v1 + 80);
  sub_26BB282D8(a1, &v6);
  v3 = sub_26BB7C508();
  swift_allocObject();
  v4 = sub_26BB7C4F8();
  v7 = v3;
  v8 = MEMORY[0x277D69798];
  *&v6 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_26BB22F94(&v6, v1 + 32);
  return v1;
}

uint64_t sub_26BB71CE4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return swift_deallocClassInstance();
}

void sub_26BB71E54(uint64_t a1)
{
  if (!qword_28043A5B8)
  {
    sub_26BB7BFF8();
    v1 = sub_26BB7CFE8();
    if (!v2)
    {
      atomic_store(v1, &qword_28043A5B8);
    }
  }
}

unint64_t sub_26BB71EAC()
{
  result = qword_28043A5C0;
  if (!qword_28043A5C0)
  {
    type metadata accessor for FeatureAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5C0);
  }

  return result;
}

uint64_t sub_26BB71F00(uint64_t a1)
{
  sub_26BB71E54(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *InProcessStockService.__allocating_init(appConfigurationManager:attributionAssetManager:currencyManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_26BB2845C(0);
  swift_allocObject();
  v7 = sub_26BB7CAF8();
  sub_26BB285E4(0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = v8;
  return v6;
}

void *InProcessStockService.init(appConfigurationManager:attributionAssetManager:currencyManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_26BB2845C(0);
  swift_allocObject();
  v8 = sub_26BB7CAF8();
  sub_26BB285E4(0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v9;
  return v4;
}

uint64_t sub_26BB7207C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (qword_28158B800 != -1)
  {
    swift_once();
  }

  v4 = sub_26BB7D5D8();
  a1[3] = &type metadata for LazyURLSession;
  a1[4] = sub_26BB73FF4(v4, v5, v6);
  os_unfair_lock_lock(v3 + 6);
  sub_26BB4456C(v11, &v10);
  os_unfair_lock_unlock(v3 + 6);
  *a1 = v10;
  v7 = *MEMORY[0x277D6CAC0];
  v8 = sub_26BB7C888();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

uint64_t InProcessStockService.fetch(_:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[8] = a2;
  v4[9] = v3;
  v4[7] = a1;
  v6 = sub_26BB7C888();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  type metadata accessor for DataSource.Logo(0);
  v4[13] = swift_task_alloc();
  v7 = sub_26BB7C3D8();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_26BB7C468();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = *a3;

  return MEMORY[0x2822009F8](sub_26BB72338, 0, 0);
}

uint64_t sub_26BB72338()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[8];
  sub_26BB7C9E8();
  v7 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  sub_26BB727E4(v6, v4);
  (*(v1 + 32))(v2, v4, v3);
  sub_26BB7207C(v5);
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_26BB7246C;
  v9.n128_u64[0] = v0[21];
  v10 = v0[20];
  v11 = v0[16];
  v12 = v0[12];

  return MEMORY[0x2821CF188](v10, v11, v12, v7, v14, v9);
}

uint64_t sub_26BB7246C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 80);
  *(*v1 + 184) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_26BB7273C;
  }

  else
  {
    v8 = sub_26BB72640;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26BB72640()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[7];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v4 + 16))(v1, v2, v3);
  sub_26BB42184(v1, v5);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BB7273C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB727E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource.Logo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InProcessStockService.fetchCurrencyConversions(cachePolicy:deadline:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  sub_26BB7C378();
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_26BB7C888();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  v6 = sub_26BB7C2C8();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v7 = sub_26BB7BE48();
  *(v3 + 160) = v7;
  *(v3 + 168) = *(v7 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v8 = sub_26BB7C868();
  *(v3 + 192) = v8;
  *(v3 + 200) = *(v8 - 8);
  *(v3 + 208) = swift_task_alloc();
  v9 = sub_26BB7C268();
  *(v3 + 216) = v9;
  *(v3 + 224) = *(v9 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = *a2;
  *(v3 + 304) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_26BB72AF4, 0, 0);
}

uint64_t sub_26BB72AF4()
{
  v32 = v0;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v1 = sub_26BB7CB88();
  *(v0 + 256) = __swift_project_value_buffer(v1, qword_28158F140);
  v2 = sub_26BB7CB68();
  v3 = sub_26BB7CF78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 304);
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *&v30 = v6;
    *v7 = 136315138;
    *(&v30 + 1) = v5;
    v31 = v4;
    v9 = StockService.CachePolicy.description.getter();
    v11 = sub_26BB38238(v9, v10, &v29);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26BB21000, v2, v3, "Currencies fetch started, cachePolicy: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D68EA90](v8, -1, -1);
    MEMORY[0x26D68EA90](v7, -1, -1);
  }

  sub_26BB7CEF8();
  v12 = *(v0 + 304);
  if (v12 == 2)
  {
    if (!*(v0 + 248) && *(v0 + 240) == 1)
    {
      v13 = xmmword_26BB7E000;
      goto LABEL_11;
    }
  }

  else if (!*(v0 + 304))
  {
    v13 = *(v0 + 240);
LABEL_11:
    v14 = *(v0 + 208);
    v30 = v13;
    v31 = v12;
    sub_26BB297D0(4u, 0, v14);
    sub_26BB7BE18();
    v15 = sub_26BB7CB68();
    v16 = sub_26BB7CF78();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26BB21000, v15, v16, "Firing currencies fetch", v17, 2u);
      MEMORY[0x26D68EA90](v17, -1, -1);
    }

    sub_26BB7CEF8();
    v20 = *(v0 + 96);
    sub_26BB7C9E8();
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
    sub_26BB7207C(v20);
    v23 = swift_task_alloc();
    *(v0 + 288) = v23;
    *v23 = v0;
    v23[1] = sub_26BB73378;
    v24 = *(v0 + 208);
    v25 = *(v0 + 184);
    v26 = *(v0 + 152);
    v27 = *(v0 + 96);

    return MEMORY[0x2821CECB0](v26, v24, v25, v27, v21, v22);
  }

  *(v0 + 264) = sub_26BB7CAD8();
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_26BB72F9C;
  v19 = *(v0 + 232);

  return MEMORY[0x2821D23D8](v19);
}

uint64_t sub_26BB72F9C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_26BB739E0;
  }

  else
  {
    (*(v2[28] + 8))(v2[29], v2[27]);

    v3 = sub_26BB730D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BB730D4()
{
  v1 = *(v0 + 280);
  sub_26BB297D0(4u, 0, *(v0 + 208));
  sub_26BB7BE18();
  v2 = sub_26BB7CB68();
  v3 = sub_26BB7CF78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26BB21000, v2, v3, "Firing currencies fetch", v4, 2u);
    MEMORY[0x26D68EA90](v4, -1, -1);
  }

  sub_26BB7CEF8();
  if (v1)
  {
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 192);
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    (*(v6 + 8))(v5, v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 96);
    sub_26BB7C9E8();
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    sub_26BB7207C(v10);
    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v13[1] = sub_26BB73378;
    v14 = *(v0 + 208);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 96);

    return MEMORY[0x2821CECB0](v16, v14, v15, v17, v11, v12);
  }
}

uint64_t sub_26BB73378()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v3 = sub_26BB73AE0;
  }

  else
  {
    v3 = sub_26BB734E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BB734E0()
{
  v63 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];
  v6 = v0[14];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v7 = *(v6 + 16);
  v7(v2, v1, v5);
  v7(v3, v1, v5);
  v61 = v7;
  v7(v4, v1, v5);
  v8 = sub_26BB7CB68();
  v9 = sub_26BB7CF78();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[21];
    v11 = v0[22];
    log = v8;
    v12 = v0[20];
    v13 = v0[18];
    v59 = v0[16];
    v14 = v0[14];
    v54 = v0[13];
    v55 = v0[17];
    v15 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v62 = v57;
    *v15 = 136315650;
    v56 = v9;
    sub_26BB7C2B8();
    sub_26BB73F4C();
    v16 = sub_26BB7D348();
    v18 = v17;
    v53 = *(v10 + 8);
    v53(v11, v12);
    v19 = *(v14 + 8);
    v19(v13, v54);
    v20 = sub_26BB38238(v16, v18, &v62);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    sub_26BB7C2A8();
    v21 = sub_26BB7D348();
    v23 = v22;
    v53(v11, v12);
    v19(v55, v54);
    v24 = sub_26BB38238(v21, v23, &v62);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    v25 = v59;
    v26 = sub_26BB7C288();
    v27 = sub_26BB7C328();
    v28 = MEMORY[0x26D68DD10](v26, v27);
    v30 = v29;

    v60 = v19;
    v19(v25, v54);
    v31 = sub_26BB38238(v28, v30, &v62);

    *(v15 + 24) = v31;
    _os_log_impl(&dword_26BB21000, log, v56, "Currencies fetch success, createdAt: %s, staleAt: %s, result: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v57, -1, -1);
    MEMORY[0x26D68EA90](v15, -1, -1);
  }

  else
  {
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v36 = v0[13];
    v35 = v0[14];

    v37 = *(v35 + 8);
    v37(v34, v36);
    v37(v33, v36);
    v60 = v37;
    v37(v32, v36);
  }

  v39 = v0[25];
  v38 = v0[26];
  v52 = v0[24];
  v40 = v0[21];
  v41 = v0[19];
  v50 = v0[20];
  v51 = v0[23];
  v42 = v0[15];
  v43 = v0[13];
  v44 = v0[9];
  v45 = v0[7];
  v61(v42, v41, v43);
  v46 = sub_26BB7C288();
  sub_26BB62D54(v46, &v62);
  *v45 = v62;
  sub_26BB7C298();
  v47 = type metadata accessor for CurrencyConversionsResult(0);
  sub_26BB3EBA4(v44, (v45 + *(v47 + 20)));
  sub_26BB7C2B8();
  sub_26BB7C2A8();
  v60(v42, v43);
  v60(v41, v43);
  (*(v40 + 8))(v51, v50);
  (*(v39 + 8))(v38, v52);

  v48 = v0[1];

  return v48();
}

uint64_t sub_26BB739E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB73AE0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[21] + 8))(v0[23], v0[20]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BB73C14()
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v0 = sub_26BB7CB88();
  __swift_project_value_buffer(v0, qword_28158F140);
  v1 = sub_26BB7CB68();
  v2 = sub_26BB7CF78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26BB21000, v1, v2, "Fetching app config for currencies fetch", v3, 2u);
    MEMORY[0x26D68EA90](v3, -1, -1);
  }

  sub_26BB7C9E8();
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = sub_26BB4A684(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

void *InProcessStockService.deinit()
{

  return v0;
}

uint64_t InProcessStockService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26BB73DD0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BB3BF24;

  return InProcessStockService.fetch(_:for:)(a1, a2, a3);
}

uint64_t sub_26BB73E84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26BB3BA30;

  return InProcessStockService.fetchCurrencyConversions(cachePolicy:deadline:)(a1, a2);
}

unint64_t sub_26BB73F4C()
{
  result = qword_28158C320;
  if (!qword_28158C320)
  {
    sub_26BB7BE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C320);
  }

  return result;
}

unint64_t sub_26BB73FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B5B0;
  if (!qword_28158B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B5B0);
  }

  return result;
}

uint64_t sub_26BB74048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_26BB7D378();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_26BB74104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockChart.Entry(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v43 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_26BB76688(v13, v10);
      sub_26BB76688(v14, v7);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_26BB7D378() & 1) == 0 || (sub_26BB7BE08() & 1) == 0)
      {
        break;
      }

      v17 = v4[6];
      v18 = (v10 + v17);
      v19 = *(v10 + v17 + 8);
      v20 = (v7 + v17);
      v21 = *(v7 + v17 + 8);
      if (v19)
      {
        if (!v21)
        {
          break;
        }
      }

      else
      {
        if (*v18 != *v20)
        {
          LOBYTE(v21) = 1;
        }

        if (v21)
        {
          break;
        }
      }

      v22 = v4[7];
      v23 = (v10 + v22);
      v24 = *(v10 + v22 + 8);
      v25 = (v7 + v22);
      v26 = *(v7 + v22 + 8);
      if (v24)
      {
        if (!v26)
        {
          break;
        }
      }

      else
      {
        if (*v23 != *v25)
        {
          LOBYTE(v26) = 1;
        }

        if (v26)
        {
          break;
        }
      }

      v27 = v4[8];
      v28 = (v10 + v27);
      v29 = *(v10 + v27 + 8);
      v30 = (v7 + v27);
      v31 = *(v7 + v27 + 8);
      if (v29)
      {
        if (!v31)
        {
          break;
        }
      }

      else
      {
        if (*v28 != *v30)
        {
          LOBYTE(v31) = 1;
        }

        if (v31)
        {
          break;
        }
      }

      v32 = v4[9];
      v33 = (v10 + v32);
      v34 = *(v10 + v32 + 8);
      v35 = (v7 + v32);
      v36 = *(v7 + v32 + 8);
      if (v34)
      {
        if (!v36)
        {
          break;
        }
      }

      else
      {
        if (*v33 != *v35)
        {
          LOBYTE(v36) = 1;
        }

        if (v36)
        {
          break;
        }
      }

      v37 = v4[10];
      v38 = (v10 + v37);
      v39 = *(v10 + v37 + 8);
      v40 = (v7 + v37);
      v41 = *(v40 + 8);
      if ((v39 & 1) == 0)
      {
        if (v41)
        {
          break;
        }

        v41 = *v38 == *v40;
      }

      sub_26BB766EC(v7);
      sub_26BB766EC(v10);
      if (v41)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v41;
    }

    sub_26BB766EC(v7);
    sub_26BB766EC(v10);
    return 0;
  }

  return 1;
}

uint64_t sub_26BB743B0()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_26BB743EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026BB83B00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

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

uint64_t sub_26BB744CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB74594(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB74508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB74594(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_26BB74594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A5D0;
  if (!qword_28043A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5D0);
  }

  return result;
}

uint64_t FundMetadata.Sector.sector.getter()
{
  v1 = *v0;

  return v1;
}

BOOL sub_26BB746A4(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_26BB7D378();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_26BB74704()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x726F74636573;
  }
}

uint64_t sub_26BB74740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F74636573 && a2 == 0xE600000000000000;
  if (v6 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026BB83B00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

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

uint64_t sub_26BB74820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB74A70(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB7485C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB74A70(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB748E8(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  v15 = a5;
  sub_26BB75D54(0, a2, a3, a4, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v14 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_26BB7D488();
  v18 = 0;
  v12 = v16;
  sub_26BB7D308();
  if (!v12)
  {
    v17 = 1;
    sub_26BB7D318();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_26BB74A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A5E8;
  if (!qword_28043A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5E8);
  }

  return result;
}

uint64_t sub_26BB74B14@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  v24 = a6;
  sub_26BB75D54(0, a2, a3, a4, MEMORY[0x277D844C8]);
  v10 = v9;
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_26BB7D478();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14 = v23;
  v13 = v24;
  v26 = 0;
  v15 = sub_26BB7D268();
  v17 = v16;
  v18 = v15;
  v25 = 1;
  sub_26BB7D278();
  v20 = v19;
  (*(v14 + 8))(v12, v10);
  *v13 = v18;
  v13[1] = v17;
  v13[2] = v20;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t FundMetadata.assetClass.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FundMetadata.category.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FundMetadata.focus.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FundMetadata.niche.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FundMetadata.region.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_26BB74E44()
{
  v1 = *v0;
  v2 = 0x616C437465737361;
  v3 = 0x69646C6F48706F74;
  if (v1 != 5)
  {
    v3 = 0x6F74636553706F74;
  }

  v4 = 0x656863696ELL;
  if (v1 != 3)
  {
    v4 = 0x6E6F69676572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79726F6765746163;
  if (v1 != 1)
  {
    v5 = 0x7375636F66;
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

uint64_t sub_26BB74F20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB76434(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB74F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB75C0C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB74F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB75C0C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t FundMetadata.encode(to:)(void *a1)
{
  sub_26BB75D54(0, &qword_28043A5F8, sub_26BB75C0C, &type metadata for FundMetadata.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = v1[2];
  v26 = v1[3];
  v27 = v8;
  v9 = v1[4];
  v24 = v1[5];
  v25 = v9;
  v10 = v1[6];
  v22 = v1[7];
  v23 = v10;
  v11 = v1[8];
  v20 = v1[9];
  v21 = v11;
  v12 = v1[10];
  v18 = v1[11];
  v19 = v12;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB75C0C(v13, v14, v15);
  sub_26BB7D488();
  LOBYTE(v30) = 0;
  v16 = v28;
  sub_26BB7D2C8();
  if (!v16)
  {
    LOBYTE(v30) = 1;
    sub_26BB7D2C8();
    LOBYTE(v30) = 2;
    sub_26BB7D2C8();
    LOBYTE(v30) = 3;
    sub_26BB7D2C8();
    LOBYTE(v30) = 4;
    sub_26BB7D2C8();
    v30 = v19;
    v29 = 5;
    sub_26BB75CB4(0, &qword_28043A608, &type metadata for FundMetadata.Holding);
    sub_26BB75DBC(&qword_28043A610, sub_26BB75C60, MEMORY[0x277D83948]);
    sub_26BB7D328();
    v30 = v18;
    v29 = 6;
    sub_26BB75CB4(0, &qword_28043A620, &type metadata for FundMetadata.Sector);
    sub_26BB75E8C(&qword_28043A628, sub_26BB75D00, MEMORY[0x277D83948]);
    sub_26BB7D328();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FundMetadata.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26BB75D54(0, &qword_28043A638, sub_26BB75C0C, &type metadata for FundMetadata.CodingKeys, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = a1[3];
  v55 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26BB75C0C(v11, v12, v13);
  sub_26BB7D478();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  v14 = v7;
  LOBYTE(v62[0]) = 0;
  v15 = v6;
  v17 = sub_26BB7D228();
  v19 = v18;
  LOBYTE(v62[0]) = 1;
  v20 = sub_26BB7D228();
  v54 = v21;
  v22 = v20;
  LOBYTE(v62[0]) = 2;
  v49 = sub_26BB7D228();
  v50 = v22;
  v52 = v23;
  LOBYTE(v62[0]) = 3;
  v24 = sub_26BB7D228();
  v51 = v25;
  v47 = v24;
  LOBYTE(v62[0]) = 4;
  v48 = 0;
  v26 = sub_26BB7D228();
  v53 = 0;
  v27 = v14;
  v28 = v26;
  v30 = v29;
  sub_26BB75CB4(0, &qword_28043A608, &type metadata for FundMetadata.Holding);
  LOBYTE(v56) = 5;
  sub_26BB75DBC(&qword_28043A640, sub_26BB75E38, MEMORY[0x277D83978]);
  v31 = v53;
  sub_26BB7D288();
  v53 = v31;
  if (v31)
  {
    (*(v27 + 8))(v9, v15);
    v32 = 0;
    v33 = v48;
  }

  else
  {
    v46 = v62[0];
    sub_26BB75CB4(0, &qword_28043A620, &type metadata for FundMetadata.Sector);
    v63 = 6;
    sub_26BB75E8C(&qword_28043A650, sub_26BB75F08, MEMORY[0x277D83978]);
    v34 = v53;
    sub_26BB7D288();
    v53 = v34;
    if (!v34)
    {
      (*(v27 + 8))(v9, v15);
      v48 = v64;
      *&v56 = v17;
      *(&v56 + 1) = v19;
      v35 = v50;
      *&v57 = v50;
      v36 = v54;
      *(&v57 + 1) = v54;
      v37 = v49;
      v38 = v28;
      v45 = v28;
      v39 = v52;
      *&v58 = v49;
      *(&v58 + 1) = v52;
      v40 = v51;
      *&v59 = v47;
      *(&v59 + 1) = v51;
      *&v60 = v38;
      *(&v60 + 1) = v30;
      *&v61 = v46;
      *(&v61 + 1) = v64;
      v41 = v59;
      a2[2] = v58;
      a2[3] = v41;
      v42 = v57;
      *a2 = v56;
      a2[1] = v42;
      v43 = v61;
      a2[4] = v60;
      a2[5] = v43;
      sub_26BB75F5C(&v56, v62);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      v62[0] = v17;
      v62[1] = v19;
      v62[2] = v35;
      v62[3] = v36;
      v62[4] = v37;
      v62[5] = v39;
      v62[6] = v47;
      v62[7] = v40;
      v62[8] = v45;
      v62[9] = v30;
      v62[10] = v46;
      v62[11] = v48;
      return sub_26BB6E700(v62);
    }

    (*(v27 + 8))(v9, v15);
    v32 = 1;
    v33 = v48;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v55);

  if (!v33)
  {
  }

  if (v32)
  {
  }

  return result;
}

uint64_t _s9StocksKit12FundMetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v13 = a1[11];
  v14 = a2[1];
  v15 = a2[2];
  v17 = a2[3];
  v16 = a2[4];
  v19 = a2[5];
  v18 = a2[6];
  v21 = a2[7];
  v20 = a2[8];
  v23 = a2[9];
  v22 = a2[10];
  v24 = a2[11];
  if (v3)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v49 = a1[2];
      v50 = a1[10];
      v58 = a1[9];
      v61 = a2[9];
      v54 = a2[10];
      v56 = a1[8];
      v51 = a1[6];
      v52 = a2[11];
      v25 = a1[11];
      v26 = a2[8];
      v27 = a1[7];
      v28 = a2[7];
      v29 = a2[6];
      v30 = a1[5];
      v31 = a1[4];
      v64 = a2[5];
      v32 = a2[4];
      v48 = a2[2];
      v33 = sub_26BB7D378();
      v15 = v48;
      v4 = v49;
      v16 = v32;
      v5 = v31;
      v7 = v30;
      v18 = v29;
      v21 = v28;
      v9 = v27;
      v20 = v26;
      v13 = v25;
      v12 = v50;
      v8 = v51;
      v24 = v52;
      v22 = v54;
      v10 = v56;
      v11 = v58;
      v23 = v61;
      v19 = v64;
      if ((v33 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v14)
  {
    goto LABEL_38;
  }

  if (v6)
  {
    if (!v17)
    {
      goto LABEL_38;
    }

    if (v4 != v15 || v6 != v17)
    {
      v59 = v18;
      v62 = v13;
      v34 = v20;
      v55 = v5;
      v57 = v9;
      v35 = v7;
      v65 = v19;
      v53 = v16;
      v36 = sub_26BB7D378();
      v16 = v53;
      v5 = v55;
      v13 = v62;
      v19 = v65;
      v7 = v35;
      v9 = v57;
      v18 = v59;
      v20 = v34;
      if ((v36 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v17)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    if (!v19)
    {
      goto LABEL_38;
    }

    if (v5 != v16 || v7 != v19)
    {
      v60 = v18;
      v63 = v13;
      v37 = v20;
      v38 = v9;
      v39 = sub_26BB7D378();
      v18 = v60;
      v13 = v63;
      v9 = v38;
      v20 = v37;
      if ((v39 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_38;
  }

  if (v9)
  {
    if (!v21)
    {
      goto LABEL_38;
    }

    if (v8 != v18 || v9 != v21)
    {
      v40 = v24;
      v41 = v13;
      v42 = v20;
      v43 = sub_26BB7D378();
      v20 = v42;
      v13 = v41;
      v24 = v40;
      if ((v43 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v21)
  {
    goto LABEL_38;
  }

  if (!v11)
  {
    v44 = v24;
    v45 = v13;
    if (!v23)
    {
      goto LABEL_36;
    }

LABEL_38:
    v46 = 0;
    return v46 & 1;
  }

  if (!v23)
  {
    goto LABEL_38;
  }

  v44 = v24;
  v45 = v13;
  if ((v10 != v20 || v11 != v23) && (sub_26BB7D378() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  if ((sub_26BB74048(v12, v22) & 1) == 0)
  {
    goto LABEL_38;
  }

  v46 = sub_26BB74048(v45, v44);
  return v46 & 1;
}

unint64_t sub_26BB75C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A600;
  if (!qword_28043A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A600);
  }

  return result;
}

unint64_t sub_26BB75C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A618;
  if (!qword_28043A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A618);
  }

  return result;
}

void sub_26BB75CB4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26BB7CE38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26BB75D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A630;
  if (!qword_28043A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A630);
  }

  return result;
}

void sub_26BB75D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_26BB75DBC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_26BB75CB4(255, &qword_28043A608, &type metadata for FundMetadata.Holding);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BB75E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A648;
  if (!qword_28043A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A648);
  }

  return result;
}

uint64_t sub_26BB75E8C(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_26BB75CB4(255, &qword_28043A620, &type metadata for FundMetadata.Sector);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BB75F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A658;
  if (!qword_28043A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A658);
  }

  return result;
}

uint64_t sub_26BB75F94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BB75FDC(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t sub_26BB76054(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26BB7609C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26BB76120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A660;
  if (!qword_28043A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A660);
  }

  return result;
}

unint64_t sub_26BB76178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A668;
  if (!qword_28043A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A668);
  }

  return result;
}

unint64_t sub_26BB761D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A670;
  if (!qword_28043A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A670);
  }

  return result;
}

unint64_t sub_26BB76228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A678;
  if (!qword_28043A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A678);
  }

  return result;
}

unint64_t sub_26BB76280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A680;
  if (!qword_28043A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A680);
  }

  return result;
}

unint64_t sub_26BB762D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A688;
  if (!qword_28043A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A688);
  }

  return result;
}

unint64_t sub_26BB76330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A690;
  if (!qword_28043A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A690);
  }

  return result;
}

unint64_t sub_26BB76388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A698;
  if (!qword_28043A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A698);
  }

  return result;
}

unint64_t sub_26BB763E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A6A0;
  if (!qword_28043A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A6A0);
  }

  return result;
}

uint64_t sub_26BB76434(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616C437465737361 && a2 == 0xEA00000000007373 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7375636F66 && a2 == 0xE500000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656863696ELL && a2 == 0xE500000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69646C6F48706F74 && a2 == 0xEB0000000073676ELL || (sub_26BB7D378() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F74636553706F74 && a2 == 0xEA00000000007372)
  {

    return 6;
  }

  else
  {
    v5 = sub_26BB7D378();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_26BB76688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockChart.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB766EC(uint64_t a1)
{
  v2 = type metadata accessor for StockChart.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CurrencyConversionsResult(uint64_t a1)
{
  result = qword_28158BCC8;
  if (!qword_28158BCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CurrencyConversionsResult.source.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CurrencyConversionsResult(0) + 20);

  return sub_26BB76848(a1, v3);
}

uint64_t sub_26BB76848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CurrencyConversionsResult.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrencyConversionsResult(0) + 24);
  v4 = sub_26BB7BE48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CurrencyConversionsResult.staleAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrencyConversionsResult(0) + 28);
  v4 = sub_26BB7BE48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CurrencyConversionsResult.init(conversions:source:createdAt:staleAt:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for CurrencyConversionsResult(0);
  sub_26BB76ACC(a2, &a5[v9[5]]);
  v10 = v9[6];
  v11 = sub_26BB7BE48();
  v14 = *(*(v11 - 8) + 32);
  (v14)((v11 - 8), &a5[v10], a3, v11);
  v12 = &a5[v9[7]];

  return v14(v12, a4, v11);
}

uint64_t sub_26BB76ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB76B30()
{
  v1 = 0x69737265766E6F63;
  v2 = 0x4164657461657263;
  if (*v0 != 2)
  {
    v2 = 0x7441656C617473;
  }

  if (*v0)
  {
    v1 = 0x656372756F73;
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

uint64_t sub_26BB76BB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB778D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB76BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB76F0C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB76C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB76F0C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CurrencyConversionsResult.encode(to:)(void *a1)
{
  v3 = v1;
  sub_26BB7750C(0, &qword_28158B0E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB76F0C(v10, v11, v12);
  v13 = sub_26BB7D488();
  v18 = *v3;
  v17[15] = 0;
  sub_26BB76F60(v13, v14, v15);

  sub_26BB7D328();
  if (v2)
  {
  }

  else
  {

    type metadata accessor for CurrencyConversionsResult(0);
    v17[14] = 1;
    type metadata accessor for DataSource(0);
    sub_26BB775C4(&qword_28158B7E0, type metadata accessor for DataSource, &protocol conformance descriptor for DataSource);
    sub_26BB7D328();
    v17[13] = 2;
    sub_26BB7BE48();
    sub_26BB775C4(&qword_28158BB28, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26BB7D328();
    v17[12] = 3;
    sub_26BB7D328();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_26BB76F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BCF8;
  if (!qword_28158BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BCF8);
  }

  return result;
}

unint64_t sub_26BB76F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B3A8[0];
  if (!qword_28158B3A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28158B3A8);
  }

  return result;
}

uint64_t CurrencyConversionsResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v35 = sub_26BB7BE48();
  v33 = *(v35 - 8);
  v3 = MEMORY[0x28223BE20](v35);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v32 = &v28 - v5;
  v6 = type metadata accessor for DataSource(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7750C(0, &qword_28158B168, MEMORY[0x277D844C8]);
  v37 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for CurrencyConversionsResult(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB76F0C(v15, v16, v17);
  v36 = v11;
  v18 = v38;
  v19 = sub_26BB7D478();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v38 = v12;
  v22 = v34;
  v23 = v35;
  v42 = 0;
  sub_26BB77570(v19, v20, v21);
  sub_26BB7D288();
  v29 = v14;
  *v14 = v43;
  v41 = 1;
  sub_26BB775C4(&qword_28158B7D8, type metadata accessor for DataSource, &protocol conformance descriptor for DataSource);
  sub_26BB7D288();
  sub_26BB76ACC(v8, v29 + v38[5]);
  v40 = 2;
  sub_26BB775C4(&qword_28158BB20, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_26BB7D288();
  v24 = v32;
  v25 = v29 + v38[6];
  v32 = *(v33 + 32);
  (v32)(v25, v24, v23);
  v39 = 3;
  sub_26BB7D288();
  (*(v22 + 8))(v36, v37);
  v26 = v29;
  (v32)(v29 + v38[7], v31, v23);
  sub_26BB7760C(v26, v30, type metadata accessor for CurrencyConversionsResult);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_26BB77674(v26, type metadata accessor for CurrencyConversionsResult);
}

void sub_26BB7750C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26BB76F0C(0, a2, a3);
    v7 = a3(a1, &type metadata for CurrencyConversionsResult.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26BB77570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B3A0;
  if (!qword_28158B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B3A0);
  }

  return result;
}

uint64_t sub_26BB775C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BB7760C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB77674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BB7772C(uint64_t a1)
{
  result = type metadata accessor for DataSource(319);
  if (v2 <= 0x3F)
  {
    result = sub_26BB7BE48();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26BB777D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A6A8;
  if (!qword_28043A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A6A8);
  }

  return result;
}

unint64_t sub_26BB7782C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BCE8;
  if (!qword_28158BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BCE8);
  }

  return result;
}

unint64_t sub_26BB77884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BCF0;
  if (!qword_28158BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BCF0);
  }

  return result;
}

uint64_t sub_26BB778D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69737265766E6F63 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7441656C617473 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26BB7D378();

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

uint64_t dispatch thunk of StockServiceType.fetch(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26BB3BF24;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of StockServiceType.fetchCurrencyConversions(cachePolicy:deadline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26BB3BA30;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_26BB77CCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7865646E69;
  if (a1 != 6)
  {
    v5 = 0x75466C617574756DLL;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = 0xE300000000000000;
  v7 = 6714469;
  if (a1 != 4)
  {
    v7 = 0x73657275747566;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x75636F7470797263;
  v9 = 0xEE0079636E657272;
  if (a1 != 2)
  {
    v8 = 0x797469757165;
    v9 = 0xE600000000000000;
  }

  v10 = 0x79636E6572727563;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x7865646E69)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEA0000000000646ELL;
        if (v11 != 0x75466C617574756DLL)
        {
LABEL_45:
          v14 = sub_26BB7D378();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE300000000000000;
      if (v11 != 6714469)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x73657275747566)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEE0079636E657272;
      if (v11 != 0x75636F7470797263)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x797469757165)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x79636E6572727563)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_26BB77F44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1852141679;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x6465736F6C63;
  }

  else if (a1 == 3)
  {
    v3 = 0x656B72614D657270;
    v4 = 0xE900000000000074;
  }

  else
  {
    v3 = 0x756F487265746661;
    v4 = 0xEA00000000007372;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1852141679;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x656B72614D657270;
    v6 = 0xE900000000000074;
    if (a2 != 3)
    {
      v5 = 0x756F487265746661;
      v6 = 0xEA00000000007372;
    }

    if (a2 == 2)
    {
      v7 = 0x6465736F6C63;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_26BB7D378();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26BB780C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00646579616C65;
  v3 = 0x44636972656E6567;
  v4 = a1;
  v5 = 0xEF656D69746C6165;
  v6 = 0x6E776F6E6B6E75;
  if (a1 == 5)
  {
    v6 = 0x52636972656E6567;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000026BB82CB0;
  if (a1 != 3)
  {
    v7 = 0x52544B4D6573796ELL;
    v8 = 0xEF656D69746C6165;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x655271616473616ELL;
  v10 = 0xEE00656D69746C61;
  if (a1 != 1)
  {
    v9 = 0x6C6165526573796ELL;
    v10 = 0xEC000000656D6974;
  }

  if (!a1)
  {
    v9 = 0x44636972656E6567;
    v10 = 0xEE00646579616C65;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE00656D69746C61;
        if (v11 != 0x655271616473616ELL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xEC000000656D6974;
        if (v11 != 0x6C6165526573796ELL)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF656D69746C6165;
        if (v11 != 0x52636972656E6567)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x800000026BB82CB0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0x52544B4D6573796ELL;
    v2 = 0xEF656D69746C6165;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_26BB7D378();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_26BB78344(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE600000000000000;
    v14 = 0xE800000000000000;
    v15 = 0x68746E6F4D656E6FLL;
    v16 = 0x6E6F4D6565726874;
    v17 = 0xEB00000000736874;
    if (a1 != 3)
    {
      v16 = 0x68746E6F4D786973;
      v17 = 0xE900000000000073;
    }

    if (a1 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6B656557656E6FLL;
    if (a1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v18 = 0x796144656E6FLL;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0x7261655965766966;
    v4 = 0xE900000000000073;
    v5 = 0xE800000000000000;
    v6 = 0x73726165596E6574;
    if (a1 != 9)
    {
      v6 = 7105633;
      v5 = 0xE300000000000000;
    }

    if (a1 != 8)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x61446F5472616579;
    v8 = 0xEA00000000006574;
    v9 = 0xE700000000000000;
    v10 = 0x72616559656E6FLL;
    if (a1 != 6)
    {
      v10 = 0x73726165596F7774;
      v9 = 0xE800000000000000;
    }

    if (a1 != 5)
    {
      v7 = v10;
      v8 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE700000000000000;
        if (v11 != 0x6B656557656E6FLL)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = 0xE600000000000000;
        if (v11 != 0x796144656E6FLL)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_60;
    }

    if (a2 == 2)
    {
      v19 = 0xE800000000000000;
      if (v11 != 0x68746E6F4D656E6FLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 3)
    {
      v19 = 0xEB00000000736874;
      if (v11 != 0x6E6F4D6565726874)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v21 = 0x68746E6F4D786973;
LABEL_52:
    v19 = 0xE900000000000073;
    if (v11 != v21)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      v19 = 0xEA00000000006574;
      if (v11 != 0x61446F5472616579)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 6)
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x72616559656E6FLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v19 = 0xE800000000000000;
    v20 = 1500477300;
LABEL_57:
    if (v11 != (v20 | 0x7372616500000000))
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 == 8)
  {
    v21 = 0x7261655965766966;
    goto LABEL_52;
  }

  if (a2 == 9)
  {
    v19 = 0xE800000000000000;
    v20 = 1500407156;
    goto LABEL_57;
  }

  v19 = 0xE300000000000000;
  if (v11 != 7105633)
  {
LABEL_62:
    v22 = sub_26BB7D378();
    goto LABEL_63;
  }

LABEL_60:
  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v22 = 1;
LABEL_63:

  return v22 & 1;
}

uint64_t sub_26BB78688(uint64_t a1, unsigned __int8 a2)
{
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

uint64_t sub_26BB787E8(uint64_t a1, unsigned __int8 a2)
{
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

StocksKit::StockType_optional __swiftcall StockType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BB7D1F8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StockType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7865646E69;
  if (v1 != 6)
  {
    v3 = 0x75466C617574756DLL;
  }

  v4 = 6714469;
  if (v1 != 4)
  {
    v4 = 0x73657275747566;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x75636F7470797263;
  if (v1 != 2)
  {
    v5 = 0x797469757165;
  }

  if (*v0)
  {
    v2 = 0x79636E6572727563;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26BB78A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A6B0;
  if (!qword_28043A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A6B0);
  }

  return result;
}

void sub_26BB78B04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x7865646E69;
  if (v2 != 6)
  {
    v6 = 0x75466C617574756DLL;
    v5 = 0xEA0000000000646ELL;
  }

  v7 = 0xE300000000000000;
  v8 = 6714469;
  if (v2 != 4)
  {
    v8 = 0x73657275747566;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0079636E657272;
  v10 = 0x75636F7470797263;
  if (v2 != 2)
  {
    v10 = 0x797469757165;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x79636E6572727563;
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

unint64_t sub_26BB78CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A6B8;
  if (!qword_28043A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A6B8);
  }

  return result;
}

uint64_t QuoteDetailResult.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for QuoteDetailResult(0) + 20);

  return sub_26BB3BFE0(v3, a1);
}

uint64_t type metadata accessor for QuoteDetailResult(uint64_t a1)
{
  result = qword_28043A6C0;
  if (!qword_28043A6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BB78DE4(uint64_t a1)
{
  sub_26BB78E68(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DataSource(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BB78E68(uint64_t a1)
{
  if (!qword_28043A6D0)
  {
    type metadata accessor for QuoteDetail(255);
    v1 = sub_26BB7CCD8();
    if (!v2)
    {
      atomic_store(v1, &qword_28043A6D0);
    }
  }
}

__n128 sub_26BB78EEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = 0;
  return result;
}

__n128 sub_26BB78EFC@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BB78F08()
{
  sub_26BB7D418();
  sub_26BB7D448();
  sub_26BB7D448();
  return sub_26BB7D458();
}

uint64_t sub_26BB78FA0(uint64_t a1)
{
  sub_26BB7D418();
  sub_26BB7D448();
  sub_26BB7D448();
  return sub_26BB7D458();
}

unint64_t sub_26BB79028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B5D0;
  if (!qword_28158B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B5D0);
  }

  return result;
}

uint64_t StockResult.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StockResult(0) + 20);

  return sub_26BB3BFE0(v3, a1);
}

uint64_t type metadata accessor for StockResult(uint64_t a1)
{
  result = qword_28043A6D8;
  if (!qword_28043A6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BB7914C(uint64_t a1)
{
  sub_26BB791D0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DataSource(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BB791D0()
{
  if (!qword_28043A6E8)
  {
    v0 = sub_26BB7CCD8();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A6E8);
    }
  }
}

uint64_t StockService.searchStocks(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BB79254, 0, 0);
}

uint64_t sub_26BB79254()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = off_28158B718;
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = type metadata accessor for StockSearchResult(0);
  *v5 = v0;
  v5[1] = sub_26BB2C0D0;
  v7 = v0[2];

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001ELL, 0x800000026BB83B20, sub_26BB79504, v4, v6);
}

uint64_t sub_26BB79394(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_26BB7BBDC(0, &qword_28043A718, type metadata accessor for StockSearchResult);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  StockService.searchStocks(for:completion:)(a3, a4, sub_26BB7BC50, v13);
}

uint64_t StockService.fetchStocks(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 72) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26BB79540, 0, 0);
}

uint64_t sub_26BB79540()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v9 = *(v0 + 24);
  v3 = off_28158B718;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = type metadata accessor for StockResult(0);
  *v5 = v0;
  v5[1] = sub_26BB2C388;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001DLL, 0x800000026BB83B40, sub_26BB798B0, v4, v6);
}

uint64_t sub_26BB79698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v23 = a2;
  sub_26BB7BBDC(0, &qword_28043A710, type metadata accessor for StockResult);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v24[-1] - v14;
  v16 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a4;
  v24[1] = a5;
  v25 = a6;
  sub_26BB28EE8(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a1, v12);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v20, v15, v12);
  StockService.fetchStocks(for:cachePolicy:networkSession:completion:)(a3, v24, v18, sub_26BB7BD6C, v21);

  return sub_26BB7B900(v18);
}

uint64_t StockService.fetchStocks(for:cachePolicy:networkSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 80) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26BB798FC, 0, 0);
}

uint64_t sub_26BB798FC()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = off_28158B718;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  *(v7 + 56) = v4;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v9 = type metadata accessor for StockResult(0);
  *v8 = v0;
  v8[1] = sub_26BB51AA8;
  v10 = *(v0 + 16);

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD00000000000002CLL, 0x800000026BB83B60, sub_26BB79BE0, v7, v9);
}

uint64_t sub_26BB79A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v20 = a7;
  sub_26BB7BBDC(0, &qword_28043A710, type metadata accessor for StockResult);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v21[-1] - v15;
  v21[0] = a4;
  v21[1] = a5;
  v22 = a6;
  (*(v14 + 16))(&v21[-1] - v15, a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v16, v13);
  StockService.fetchStocks(for:cachePolicy:networkSession:completion:)(a3, v21, v20, sub_26BB7BBA0, v18);
}

uint64_t StockService.fetchQuotes(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 72) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26BB79C28, 0, 0);
}

uint64_t sub_26BB79C28()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v9 = *(v0 + 24);
  v3 = off_28158B718;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = type metadata accessor for QuoteResult(0);
  *v5 = v0;
  v5[1] = sub_26BB79D80;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001DLL, 0x800000026BB83B90, sub_26BB7A0D4, v4, v6);
}

uint64_t sub_26BB79D80()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB7BD70, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BB79EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v23 = a2;
  sub_26BB7BBDC(0, &qword_28043A708, type metadata accessor for QuoteResult);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v24[-1] - v14;
  v16 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a4;
  v24[1] = a5;
  v25 = a6;
  sub_26BB28EE8(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a1, v12);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v20, v15, v12);
  StockService.fetchQuotes(for:cachePolicy:networkSession:completion:)(a3, v24, v18, sub_26BB7BD68, v21);

  return sub_26BB7B900(v18);
}

uint64_t StockService.fetchQuotes(for:cachePolicy:networkSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 80) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26BB7A138, 0, 0);
}

uint64_t sub_26BB7A138()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = off_28158B718;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  *(v7 + 56) = v4;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v9 = type metadata accessor for QuoteResult(0);
  *v8 = v0;
  v8[1] = sub_26BB51D68;
  v10 = *(v0 + 16);

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD00000000000002CLL, 0x800000026BB83BB0, sub_26BB7A41C, v7, v9);
}

uint64_t sub_26BB7A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v20 = a7;
  sub_26BB7BBDC(0, &qword_28043A708, type metadata accessor for QuoteResult);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v21[-1] - v15;
  v21[0] = a4;
  v21[1] = a5;
  v22 = a6;
  (*(v14 + 16))(&v21[-1] - v15, a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v16, v13);
  StockService.fetchQuotes(for:cachePolicy:networkSession:completion:)(a3, v21, v20, sub_26BB7BB64, v18);
}

uint64_t StockService.fetchQuoteDetails(for:cachePolicy:networkSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 80) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26BB7A484, 0, 0);
}

uint64_t sub_26BB7A484()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = off_28158B718;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  *(v7 + 56) = v4;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v9 = type metadata accessor for QuoteDetailResult(0);
  *v8 = v0;
  v8[1] = sub_26BB51D68;
  v10 = *(v0 + 16);

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000032, 0x800000026BB83BE0, sub_26BB7A768, v7, v9);
}

uint64_t sub_26BB7A5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v20 = a7;
  sub_26BB7BBDC(0, &qword_28043A700, type metadata accessor for QuoteDetailResult);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v21[-1] - v15;
  v21[0] = a4;
  v21[1] = a5;
  v22 = a6;
  (*(v14 + 16))(&v21[-1] - v15, a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v16, v13);
  StockService.fetchQuoteDetails(for:cachePolicy:networkSession:completion:)(a3, v21, v20, sub_26BB7BABC, v18);
}

uint64_t StockService.fetchStockChart(for:range:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  *(v5 + 80) = *a4;
  *(v5 + 40) = *a5;
  *(v5 + 81) = *(a5 + 16);
  return MEMORY[0x2822009F8](sub_26BB7A7BC, 0, 0);
}

uint64_t sub_26BB7A7BC()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 81);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 80);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = off_28158B718;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 48) = v3;
  *(v8 + 56) = v2;
  *(v8 + 64) = v1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  v10 = type metadata accessor for StockChartResult(0);
  *v9 = v0;
  v9[1] = sub_26BB51D68;
  v11 = *(v0 + 16);

  return MEMORY[0x2822008A0](v11, 0, 0, 0xD000000000000027, 0x800000026BB83C20, sub_26BB7AB48, v8, v10);
}

uint64_t sub_26BB7A924(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char a8)
{
  v25 = a3;
  v26 = a4;
  v27 = a2;
  sub_26BB7BBDC(0, &qword_28043A6F8, type metadata accessor for StockChartResult);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a5;
  v28[0] = a6;
  v28[1] = a7;
  v29 = a8;
  sub_26BB28EE8(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v15 + 16))(v17, a1, v14);
  v22 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = swift_allocObject();
  (*(v15 + 32))(v23 + v22, v17, v14);
  StockService.fetchStockChart(for:range:cachePolicy:networkSession:completion:)(v25, v26, &v30, v28, v20, sub_26BB7BD64, v23);

  return sub_26BB7B900(v20);
}

uint64_t StockService.fetchStockChart(for:range:cachePolicy:networkSession:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a3;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 88) = *a4;
  *(v6 + 48) = *a5;
  *(v6 + 89) = *(a5 + 16);
  return MEMORY[0x2822009F8](sub_26BB7AB9C, 0, 0);
}

uint64_t sub_26BB7AB9C()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 89);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 88);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = off_28158B718;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 48) = v3;
  *(v9 + 56) = v2;
  *(v9 + 64) = v1;
  *(v9 + 72) = v5;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  v11 = type metadata accessor for StockChartResult(0);
  *v10 = v0;
  v10[1] = sub_26BB7AD14;
  v12 = *(v0 + 16);

  return MEMORY[0x2822008A0](v12, 0, 0, 0xD000000000000036, 0x800000026BB83C50, sub_26BB7B050, v9, v11);
}

uint64_t sub_26BB7AD14()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB7AE50, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BB7AE50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB7AEB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v22 = a3;
  v23 = a4;
  v24 = a2;
  sub_26BB7BBDC(0, &qword_28043A6F8, type metadata accessor for StockChartResult);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v27 = a5;
  v25[0] = a6;
  v25[1] = a7;
  v26 = a8;
  (*(v16 + 16))(&v22 - v17, a1, v15);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = swift_allocObject();
  (*(v16 + 32))(v20 + v19, v18, v15);
  StockService.fetchStockChart(for:range:cachePolicy:networkSession:completion:)(v22, v23, &v27, v25, a9, sub_26BB7B9EC, v20);
}

uint64_t sub_26BB7B08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6)
{
  v10 = a3(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v25 - v11;
  sub_26BB7BC8C(0, a4, a5);
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  sub_26BB7BAF8(a1, v25 - v14, a4, a5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v19 = *v15;
    v20 = *(v15 + 1);
    v21 = v15[16];
    sub_26BB3B148(EnumCaseMultiPayload, v17, v18);
    v22 = swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v20;
    *(v23 + 16) = v21;
    v25[1] = v22;
    sub_26BB7BBDC(0, a6, a5);
    return sub_26BB7CE58();
  }

  else
  {
    sub_26BB7BCFC(v15, v12, a5);
    sub_26BB7BBDC(0, a6, a5);
    return sub_26BB7CE68();
  }
}

uint64_t StockService.fetchDefaultWatchlist(cachePolicy:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  *(v2 + 64) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_26BB7B244, 0, 0);
}

uint64_t sub_26BB7B244()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = off_28158B718;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_26BB7B388;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x800000026BB83C90, sub_26BB7B758, v5, &type metadata for WatchlistResult);
}

uint64_t sub_26BB7B388()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB7BD74, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BB7B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v24 = a2;
  sub_26BB7B768(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = type metadata accessor for StockService.NetworkSession(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB28EE8(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v11 + 16))(&v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v19 = [objc_opt_self() defaultsForCurrentCountry];
  v20 = [v19 defaultSymbols];

  v21 = sub_26BB7CDF8();
  v25[0] = a3;
  v25[1] = a4;
  v26 = a5;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26BB7B888;
  *(v22 + 24) = v18;

  StockService.fetchStocks(for:cachePolicy:networkSession:completion:)(v21, v25, v15, sub_26BB7B8F8, v22);

  return sub_26BB7B900(v15);
}

void sub_26BB7B768(uint64_t a1)
{
  if (!qword_28043A6F0)
  {
    sub_26BB55504();
    v1 = sub_26BB7CE78();
    if (!v2)
    {
      atomic_store(v1, &qword_28043A6F0);
    }
  }
}

uint64_t sub_26BB7B7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(a1 + 17))
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    sub_26BB3B148(a1, a2, a3);
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    sub_26BB3B21C(v3, v4, v5);
    sub_26BB7B768(0);
    return sub_26BB7CE58();
  }

  else
  {
    sub_26BB7B768(0);

    return sub_26BB7CE68();
  }
}

uint64_t sub_26BB7B888(uint64_t a1)
{
  sub_26BB7B768(0);
  v5 = v1 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));

  return sub_26BB7B7D0(a1, v5, v3);
}

uint64_t sub_26BB7B900(uint64_t a1)
{
  v2 = type metadata accessor for StockService.NetworkSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_44Tm(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  sub_26BB7BBDC(0, a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_26BB7BAF8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_26BB7BC8C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_26BB7BBDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_26BB55504();
    v4 = sub_26BB7CE78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26BB7BC8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v4 = a3(255);
    sub_26BB3B148(v4, v5, v6);
    v7 = sub_26BB7D468();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_26BB7BCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}