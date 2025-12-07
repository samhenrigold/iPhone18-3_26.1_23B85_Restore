uint64_t sub_1D6DA1328(void *a1)
{
  v2 = v1;
  sub_1D6DA622C(0, &qword_1EC895DA8, sub_1D6DA52E8, &type metadata for DebugInspectionHeadline.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19[-v8 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DA52E8();
  sub_1D7264B5C();
  v21[551] = 0;
  type metadata accessor for DebugInspectionArticleData(0);
  sub_1D6DA4EEC(&qword_1EC895DB0, type metadata accessor for DebugInspectionArticleData, &unk_1D735351C);
  v10 = v18;
  sub_1D726443C();
  if (!v10)
  {
    v11 = type metadata accessor for DebugInspectionHeadline(0);
    v12 = *(v11 + 20);
    memcpy(v21, (v2 + v12), 0x210uLL);
    memcpy(v20, (v2 + v12), sizeof(v20));
    v21[550] = 1;
    sub_1D6DA547C(v21, v19);
    sub_1D6DA54B4();
    sub_1D726443C();
    memcpy(v19, v20, sizeof(v19));
    sub_1D6DA53F8(v19);
    v13 = (v2 + *(v11 + 24));
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    LOBYTE(v13) = v13[3];
    v21[546] = v14;
    v21[547] = v15;
    v21[548] = v16;
    v21[549] = v13;
    v21[545] = 2;
    sub_1D6DA5508();
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6DA15E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for DebugInspectionArticleData(0);
  MEMORY[0x1EEE9AC00](v27, v4);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DA622C(0, &qword_1EC895D80, sub_1D6DA52E8, &type metadata for DebugInspectionHeadline.CodingKeys, MEMORY[0x1E69E6F48]);
  v29 = v6;
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for DebugInspectionHeadline(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D6DA52E8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v15 = v26;
  v16 = v13;
  v31[0] = 0;
  sub_1D6DA4EEC(&qword_1EC895D90, type metadata accessor for DebugInspectionArticleData, &unk_1D7353544);
  v17 = v28;
  v18 = v29;
  sub_1D726431C();
  sub_1D6DA533C(v17, v16, type metadata accessor for DebugInspectionArticleData);
  v31[551] = 1;
  sub_1D6DA53A4();
  sub_1D726431C();
  memcpy((v16 + *(v10 + 20)), v31, 0x210uLL);
  v31[546] = 2;
  sub_1D6DA5428();
  sub_1D726431C();
  (*(v15 + 8))(v9, v18);
  v19 = v31[548];
  v20 = v31[549];
  v21 = v31[550];
  v22 = (v16 + *(v10 + 24));
  *v22 = v31[547];
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = v21;
  sub_1D5B75810(v16, v25, type metadata accessor for DebugInspectionHeadline);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_1D5B87A1C(v16, type metadata accessor for DebugInspectionHeadline);
}

unint64_t sub_1D6DA1A10(char a1)
{
  result = 0x6D75636F44666E61;
  switch(a1)
  {
    case 1:
      result = 0x43656C6369747261;
      break;
    case 2:
      result = 0x4C656C6369747261;
      break;
    case 3:
      result = 0x4972657473756C63;
      break;
    case 4:
    case 6:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7461446863746566;
      break;
    case 7:
      result = 0x6566694C666C6168;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6F69647541736168;
      break;
    case 10:
      result = 0x6F65646956736168;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 0x656E654749417369;
      break;
    case 13:
      result = 0x726143614C416E69;
      break;
    case 14:
      result = 0x656C646E75426E69;
      break;
    case 15:
      result = 0x464E417369;
      break;
    case 16:
      result = 0x7267726576457369;
      break;
    case 17:
      result = 0x646165726F437369;
      break;
    case 18:
      result = 0x7275746165467369;
      break;
    case 19:
      result = 0x646961507369;
      break;
    case 20:
      result = 0x4165757373497369;
      break;
    case 21:
    case 26:
      result = 0xD000000000000017;
      break;
    case 22:
      result = 0x446873696C627570;
      break;
    case 23:
      result = 0x656873696C627570;
      break;
    case 24:
      result = 0x6465636166727573;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    case 27:
      result = 0x646174654D676174;
      break;
    case 28:
      result = 0x656C746974;
      break;
    case 29:
      result = 0x626D45656C746974;
      break;
    case 30:
      result = 0x736369706F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6DA1DA0(void *a1)
{
  v3 = v1;
  sub_1D6DA622C(0, &qword_1EC895D68, sub_1D6DA4DFC, &type metadata for DebugInspectionArticleData.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DA4DFC();
  sub_1D7264B5C();
  LOBYTE(v21) = 0;
  sub_1D726437C();
  if (!v2)
  {
    *&v21 = *(v3 + 16);
    v24 = 1;
    sub_1D5D64D70(0, &qword_1EC88E700, &type metadata for DebugInspectionAggregate, MEMORY[0x1E69E62F8]);
    sub_1D6DA50C0();
    sub_1D726443C();
    LOBYTE(v21) = 2;
    sub_1D72643DC();
    LOBYTE(v21) = 3;
    sub_1D72643FC();
    *&v21 = *(v3 + 56);
    v24 = 4;
    sub_1D726443C();
    v11 = type metadata accessor for DebugInspectionArticleData(0);
    LOBYTE(v21) = 5;
    sub_1D725891C();
    sub_1D6DA4EEC(&qword_1EDF45B18, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D72643BC();
    v12 = (v3 + v11[10]);
    v13 = v12[1];
    *&v21 = *v12;
    *(&v21 + 1) = v13;
    v24 = 6;
    sub_1D5F13DE4(v21, v13);
    sub_1D5F13DF8();
    sub_1D72643BC();
    sub_1D5B952E4(v21, *(&v21 + 1));
    LOBYTE(v21) = 7;
    sub_1D726445C();
    LOBYTE(v21) = 8;
    sub_1D726439C();
    LOBYTE(v21) = 9;
    sub_1D726440C();
    LOBYTE(v21) = 10;
    sub_1D726440C();
    LOBYTE(v21) = 11;
    sub_1D72643FC();
    LOBYTE(v21) = 12;
    sub_1D726440C();
    LOBYTE(v21) = 13;
    sub_1D726440C();
    LOBYTE(v21) = 14;
    sub_1D726440C();
    LOBYTE(v21) = 15;
    sub_1D726440C();
    LOBYTE(v21) = 16;
    sub_1D726440C();
    LOBYTE(v21) = 17;
    sub_1D726440C();
    LOBYTE(v21) = 18;
    sub_1D726440C();
    LOBYTE(v21) = 19;
    sub_1D726440C();
    LOBYTE(v21) = 20;
    sub_1D726440C();
    LOBYTE(v21) = 21;
    sub_1D72643DC();
    LOBYTE(v21) = 22;
    sub_1D726439C();
    v14 = (v3 + v11[27]);
    v15 = *v14;
    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v21 = v15;
    v22 = v17;
    v23 = v16;
    v24 = 23;
    sub_1D693EFC0();
    sub_1D726443C();
    LOBYTE(v21) = 24;
    sub_1D726437C();
    LOBYTE(v21) = 25;
    sub_1D726437C();
    LOBYTE(v21) = 26;
    sub_1D726437C();
    *&v21 = *(v3 + v11[31]);
    v24 = 27;
    sub_1D5D64D70(0, &qword_1EC895D30, &type metadata for DebugInspectionTagMetadata, MEMORY[0x1E69E62F8]);
    sub_1D6DA515C();
    sub_1D726443C();
    LOBYTE(v21) = 28;
    sub_1D726437C();
    v19 = (v3 + v11[33]);
    v20 = v19[1];
    *&v21 = *v19;
    *(&v21 + 1) = v20;
    v24 = 29;
    sub_1D5F13DE4(v21, v20);
    sub_1D72643BC();
    sub_1D5B952E4(v21, *(&v21 + 1));
    *&v21 = *(v3 + v11[34]);
    v24 = 30;
    sub_1D5D64D70(0, &qword_1EC88E6E8, &type metadata for DebugInspectionTag, MEMORY[0x1E69E62F8]);
    sub_1D6DA524C();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1D6DA2610(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DA622C(0, &qword_1EC895D48, sub_1D6DA4DFC, &type metadata for DebugInspectionArticleData.CodingKeys, MEMORY[0x1E69E6F48]);
  v58 = v7;
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v51 - v9;
  v11 = type metadata accessor for DebugInspectionArticleData(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DA4DFC();
  v57 = v10;
  v15 = v59;
  sub_1D7264B0C();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v52 = v6;
    v53 = v14;
    v59 = a1;
    v54 = v11;
    LOBYTE(v60) = 0;
    v16 = sub_1D726422C();
    v17 = v53;
    *v53 = v16;
    v17[1] = v18;
    sub_1D5D64D70(0, &qword_1EC88E700, &type metadata for DebugInspectionAggregate, MEMORY[0x1E69E62F8]);
    v63 = 1;
    sub_1D6DA4E50();
    sub_1D726431C();
    v17[2] = v60;
    LOBYTE(v60) = 2;
    v51[1] = 0;
    v17[3] = sub_1D726429C();
    *(v17 + 32) = v19 & 1;
    LOBYTE(v60) = 3;
    v17[5] = sub_1D72642BC();
    v17[6] = v20;
    v63 = 4;
    sub_1D726431C();
    v17[7] = v60;
    sub_1D725891C();
    LOBYTE(v60) = 5;
    sub_1D6DA4EEC(&qword_1EDF45B08, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v21 = v52;
    sub_1D726427C();
    v22 = v54;
    sub_1D6DA533C(v21, v17 + v54[9], sub_1D5B5B2A0);
    v63 = 6;
    sub_1D5F1449C();
    sub_1D726427C();
    *(v17 + v22[10]) = v60;
    LOBYTE(v60) = 7;
    *(v53 + v22[11]) = sub_1D726432C();
    LOBYTE(v60) = 8;
    v23 = sub_1D726424C();
    v24 = v53 + v54[12];
    *v24 = v23;
    v24[8] = v25 & 1;
    LOBYTE(v60) = 9;
    *(v53 + v54[13]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 10;
    *(v53 + v54[14]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 11;
    v26 = sub_1D72642BC();
    v27 = (v53 + v54[15]);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v60) = 12;
    *(v53 + v54[16]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 13;
    *(v53 + v54[17]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 14;
    *(v53 + v54[18]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 15;
    *(v53 + v54[19]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 16;
    *(v53 + v54[20]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 17;
    *(v53 + v54[21]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 18;
    *(v53 + v54[22]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 19;
    *(v53 + v54[23]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 20;
    *(v53 + v54[24]) = sub_1D72642CC() & 1;
    LOBYTE(v60) = 21;
    v29 = sub_1D726429C();
    v30 = v53 + v54[25];
    *v30 = v29;
    v30[8] = v31 & 1;
    LOBYTE(v60) = 22;
    v32 = sub_1D726424C();
    v33 = v53 + v54[26];
    *v33 = v32;
    v33[8] = v34 & 1;
    v63 = 23;
    sub_1D693ECE8();
    sub_1D726431C();
    v35 = v61;
    v36 = v62;
    v37 = v53 + v54[27];
    *v37 = v60;
    *(v37 + 2) = v35;
    *(v37 + 3) = v36;
    LOBYTE(v60) = 24;
    v38 = sub_1D726422C();
    v39 = (v53 + v54[28]);
    *v39 = v38;
    v39[1] = v40;
    LOBYTE(v60) = 25;
    v41 = sub_1D726422C();
    v42 = (v53 + v54[29]);
    *v42 = v41;
    v42[1] = v43;
    LOBYTE(v60) = 26;
    v44 = sub_1D726422C();
    v45 = (v53 + v54[30]);
    *v45 = v44;
    v45[1] = v46;
    sub_1D5D64D70(0, &qword_1EC895D30, &type metadata for DebugInspectionTagMetadata, MEMORY[0x1E69E62F8]);
    v63 = 27;
    sub_1D6DA4F34();
    sub_1D726431C();
    *(v53 + v54[31]) = v60;
    LOBYTE(v60) = 28;
    v47 = sub_1D726422C();
    v48 = (v53 + v54[32]);
    *v48 = v47;
    v48[1] = v49;
    v63 = 29;
    sub_1D726427C();
    *(v53 + v54[33]) = v60;
    sub_1D5D64D70(0, &qword_1EC88E6E8, &type metadata for DebugInspectionTag, MEMORY[0x1E69E62F8]);
    v63 = 30;
    sub_1D6DA5024();
    sub_1D726431C();
    (*(v56 + 8))(v57, v58);
    v50 = v53;
    *(v53 + v54[34]) = v60;
    sub_1D5B75810(v50, v55, type metadata accessor for DebugInspectionArticleData);
    __swift_destroy_boxed_opaque_existential_1(v59);
    sub_1D5B87A1C(v50, type metadata accessor for DebugInspectionArticleData);
  }
}

uint64_t sub_1D6DA3520(void *a1, unsigned int a2)
{
  sub_1D6DA622C(0, &qword_1EC895DD8, sub_1D6DA57AC, &type metadata for DebugInspectionUserData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DA57AC();
  sub_1D7264B5C();
  v15 = 0;
  sub_1D726440C();
  if (!v2)
  {
    v14 = 1;
    sub_1D726440C();
    v13 = 2;
    sub_1D726440C();
    v12 = 3;
    sub_1D726440C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D6DA36EC(char a1)
{
  result = 0x6269737365636361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x7365727574616566;
      break;
    case 3:
      result = 0x676E6970756F7267;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 1684104562;
      break;
    case 6:
      result = 0x6F725065726F6373;
      break;
    case 7:
      result = 0x54676E69726F6373;
      break;
    case 8:
      result = 0x43676E69726F6373;
      break;
    case 9:
      result = 1852138867;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0x6F686F4372657375;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6DA389C(void *a1)
{
  v2 = v1;
  sub_1D6DA622C(0, &qword_1EC895E08, sub_1D6DA60E8, &type metadata for DebugInspectionContextData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DA60E8();
  sub_1D7264B5C();
  v10 = v2;
  LOBYTE(v19[0]) = 0;
  v11 = v21;
  sub_1D726440C();
  if (v11)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v21 = v6;
  v19[0] = v2[1];
  v18[0] = 1;
  sub_1D5D64D70(0, &qword_1EC895DF0, &type metadata for DebugInspectionCohort, MEMORY[0x1E69E62F8]);
  v14 = v13;
  sub_1D6DA6294();
  sub_1D726443C();
  v15 = v14;
  v19[0] = v10[2];
  v18[0] = 2;
  sub_1D5D64D70(0, &qword_1EC88E700, &type metadata for DebugInspectionAggregate, MEMORY[0x1E69E62F8]);
  sub_1D6DA50C0();
  sub_1D726443C();
  LOBYTE(v19[0]) = 3;
  sub_1D72643FC();
  v19[0] = v10[5];
  v18[0] = 4;
  sub_1D726443C();
  LOBYTE(v19[0]) = 5;
  sub_1D726440C();
  memcpy(v20, v10 + 7, 0x198uLL);
  memcpy(v19, v10 + 7, sizeof(v19));
  v18[415] = 6;
  sub_1D6DA6384(v20, v18);
  sub_1D693EEDC();
  sub_1D72643BC();
  memcpy(v18, v19, 0x198uLL);
  sub_1D693EC14(v18);
  LOBYTE(v17) = 7;
  sub_1D72643FC();
  LOBYTE(v17) = 8;
  sub_1D72643FC();
  LOBYTE(v17) = 9;
  sub_1D726440C();
  LOBYTE(v17) = 10;
  sub_1D726440C();
  LOBYTE(v17) = 11;
  sub_1D726440C();
  v17 = v10[63];
  v16 = 12;
  sub_1D726443C();
  LOBYTE(v17) = 13;
  sub_1D726437C();
  return (*(v21 + 8))(0, v5);
}

uint64_t sub_1D6DA3D74()
{
  v1 = 0x44747865746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6174614472657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44656C6369747261;
  }
}

uint64_t sub_1D6DA3DD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6DA686C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6DA3DFC(uint64_t a1)
{
  v2 = sub_1D6DA52E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6DA3E38(uint64_t a1)
{
  v2 = sub_1D6DA52E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6DA3EAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6DA6AF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6DA3ED4(uint64_t a1)
{
  v2 = sub_1D6DA4DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6DA3F10(uint64_t a1)
{
  v2 = sub_1D6DA4DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6DA3F7C()
{
  v1 = 0xD000000000000013;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_1D6DA3FF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6DA6990(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6DA4018(uint64_t a1)
{
  v2 = sub_1D6DA57AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6DA4054(uint64_t a1)
{
  v2 = sub_1D6DA57AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6DA4090@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6DA555C(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
    a1[2] = BYTE2(result) & 1;
    a1[3] = BYTE3(result) & 1;
  }

  return result;
}

uint64_t sub_1D6DA40D8(void *a1)
{
  if (v1[3])
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (v1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1D6DA3520(a1, v4 | *v1 | v3 | v2);
}

uint64_t sub_1D6DA4138@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6DA74AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6DA4160(uint64_t a1)
{
  v2 = sub_1D6DA60E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6DA419C(uint64_t a1)
{
  v2 = sub_1D6DA60E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6DA41D8(void *a1@<X8>, void *a2@<X0>)
{
  sub_1D6DA5800(a2, v4);
  if (!v2)
  {
    memcpy(a1, v4, 0x210uLL);
  }
}

uint64_t sub_1D6DA423C(uint64_t a1)
{
  v2 = type metadata accessor for DebugInspectionArticleData(0);
  if (*(a1 + *(v2 + 84)) == 1)
  {
    v3 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1D5B858EC((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[16 * v5];
    *(v6 + 4) = 0xD000000000000010;
    *(v6 + 5) = 0x80000001D73F2590;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v7 = type metadata accessor for DebugInspectionHeadline(0);
  v8 = a1 + *(v7 + 24);
  if (*(v8 + 3) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_1D5B858EC((v9 > 1), v10 + 1, 1, v3);
    }

    *(v3 + 2) = v10 + 1;
    v11 = &v3[16 * v10];
    *(v11 + 4) = 0x6C6F462064726148;
    *(v11 + 5) = 0xEB00000000776F6CLL;
  }

  if (*(v8 + 2) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    if (v13 >= v12 >> 1)
    {
      v3 = sub_1D5B858EC((v12 > 1), v13 + 1, 1, v3);
    }

    *(v3 + 2) = v13 + 1;
    v14 = &v3[16 * v13];
    *(v14 + 4) = 0x6C6F46206F747541;
    *(v14 + 5) = 0xEB00000000776F6CLL;
  }

  if (*(a1 + *(v2 + 80)) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v16 = *(v3 + 2);
    v15 = *(v3 + 3);
    if (v16 >= v15 >> 1)
    {
      v3 = sub_1D5B858EC((v15 > 1), v16 + 1, 1, v3);
    }

    *(v3 + 2) = v16 + 1;
    v17 = &v3[16 * v16];
    *(v17 + 4) = 5002053;
    *(v17 + 5) = 0xE300000000000000;
  }

  v18 = a1 + *(v7 + 20);
  if (*(v18 + 497) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v20 = *(v3 + 2);
    v19 = *(v3 + 3);
    if (v20 >= v19 >> 1)
    {
      v3 = sub_1D5B858EC((v19 > 1), v20 + 1, 1, v3);
    }

    *(v3 + 2) = v20 + 1;
    v21 = &v3[16 * v20];
    *(v21 + 4) = 0x4620656C646E7542;
    *(v21 + 5) = 0xEB00000000646565;
  }

  if (*(v18 + 498) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v23 = *(v3 + 2);
    v22 = *(v3 + 3);
    if (v23 >= v22 >> 1)
    {
      v3 = sub_1D5B858EC((v22 > 1), v23 + 1, 1, v3);
    }

    *(v3 + 2) = v23 + 1;
    v24 = &v3[16 * v23];
    strcpy(v24 + 32, "Smarter Fetch");
    *(v24 + 23) = -4864;
  }

  else if (!*(v3 + 2))
  {

    return 0x6E776F6E6B6E55;
  }

  sub_1D5D64D70(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v25 = sub_1D7261F3C();

  return v25;
}

uint64_t sub_1D6DA4684(uint64_t a1)
{
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DebugInspectionArticleData(0);
  sub_1D5B75810(a1 + *(v11 + 36), v5, sub_1D5B5B2A0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5B87A1C(v5, sub_1D5B5B2A0);
    return 0x6E776F6E6B6E55;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (qword_1EC87DBD8 != -1)
    {
      swift_once();
    }

    v13 = qword_1EC895D10;
    v14 = sub_1D725881C();
    v15 = [v13 stringFromDate_];

    v16 = sub_1D726207C();
    (*(v7 + 8))(v10, v6);
    return v16;
  }
}

void sub_1D6DA48F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1D726203C();
  [v0 setDateFormat_];

  qword_1EC895D10 = v0;
}

void sub_1D6DA496C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6DA49F8(uint64_t a1)
{
  sub_1D5D64D70(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D5D64D70(319, &qword_1EC88E700, &type metadata for DebugInspectionAggregate, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D5D64D70(319, &qword_1EC895D28, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D5B5B2A0(319);
        if (v4 <= 0x3F)
        {
          sub_1D5D64D70(319, &qword_1EDF18A90, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D5D64D70(319, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1D5D64D70(319, &qword_1EC895D30, &type metadata for DebugInspectionTagMetadata, MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                sub_1D5D64D70(319, &qword_1EC88E6E8, &type metadata for DebugInspectionTag, MEMORY[0x1E69E62F8]);
                if (v8 <= 0x3F)
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

uint64_t sub_1D6DA4CB8(uint64_t a1)
{
  result = type metadata accessor for DebugInspectionArticleData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebugInspectionUserData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugInspectionUserData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D6DA4DFC()
{
  result = qword_1EC895D50;
  if (!qword_1EC895D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895D50);
  }

  return result;
}

unint64_t sub_1D6DA4E50()
{
  result = qword_1EC88E708;
  if (!qword_1EC88E708)
  {
    sub_1D5D64D70(255, &qword_1EC88E700, &type metadata for DebugInspectionAggregate, MEMORY[0x1E69E62F8]);
    sub_1D693ED3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E708);
  }

  return result;
}

uint64_t sub_1D6DA4EEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6DA4F34()
{
  result = qword_1EC895D58;
  if (!qword_1EC895D58)
  {
    sub_1D5D64D70(255, &qword_1EC895D30, &type metadata for DebugInspectionTagMetadata, MEMORY[0x1E69E62F8]);
    sub_1D6DA4FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895D58);
  }

  return result;
}

unint64_t sub_1D6DA4FD0()
{
  result = qword_1EC895D60;
  if (!qword_1EC895D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895D60);
  }

  return result;
}

unint64_t sub_1D6DA5024()
{
  result = qword_1EC88E6F0;
  if (!qword_1EC88E6F0)
  {
    sub_1D5D64D70(255, &qword_1EC88E6E8, &type metadata for DebugInspectionTag, MEMORY[0x1E69E62F8]);
    sub_1D693ECE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E6F0);
  }

  return result;
}

unint64_t sub_1D6DA50C0()
{
  result = qword_1EC88E738;
  if (!qword_1EC88E738)
  {
    sub_1D5D64D70(255, &qword_1EC88E700, &type metadata for DebugInspectionAggregate, MEMORY[0x1E69E62F8]);
    sub_1D693F0A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E738);
  }

  return result;
}

unint64_t sub_1D6DA515C()
{
  result = qword_1EC895D70;
  if (!qword_1EC895D70)
  {
    sub_1D5D64D70(255, &qword_1EC895D30, &type metadata for DebugInspectionTagMetadata, MEMORY[0x1E69E62F8]);
    sub_1D6DA51F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895D70);
  }

  return result;
}

unint64_t sub_1D6DA51F8()
{
  result = qword_1EC895D78;
  if (!qword_1EC895D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895D78);
  }

  return result;
}

unint64_t sub_1D6DA524C()
{
  result = qword_1EC88E728;
  if (!qword_1EC88E728)
  {
    sub_1D5D64D70(255, &qword_1EC88E6E8, &type metadata for DebugInspectionTag, MEMORY[0x1E69E62F8]);
    sub_1D693EFC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E728);
  }

  return result;
}

unint64_t sub_1D6DA52E8()
{
  result = qword_1EC895D88;
  if (!qword_1EC895D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895D88);
  }

  return result;
}

uint64_t sub_1D6DA533C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D6DA53A4()
{
  result = qword_1EC895D98;
  if (!qword_1EC895D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895D98);
  }

  return result;
}

unint64_t sub_1D6DA5428()
{
  result = qword_1EC895DA0;
  if (!qword_1EC895DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895DA0);
  }

  return result;
}

unint64_t sub_1D6DA54B4()
{
  result = qword_1EC895DB8;
  if (!qword_1EC895DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895DB8);
  }

  return result;
}

unint64_t sub_1D6DA5508()
{
  result = qword_1EC895DC0;
  if (!qword_1EC895DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895DC0);
  }

  return result;
}

uint64_t sub_1D6DA555C(void *a1)
{
  sub_1D6DA622C(0, &qword_1EC895DC8, sub_1D6DA57AC, &type metadata for DebugInspectionUserData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DA57AC();
  sub_1D7264B0C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v9 = sub_1D72642CC();
  v20 = 1;
  v10 = sub_1D72642CC();
  v19 = 2;
  v11 = sub_1D72642CC();
  v18 = 3;
  v13 = sub_1D72642CC();
  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v13)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  if (v10)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 0xFFFFFFFE | v9 & 1 | v15 | v14;
}

unint64_t sub_1D6DA57AC()
{
  result = qword_1EC895DD0;
  if (!qword_1EC895DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895DD0);
  }

  return result;
}

void sub_1D6DA5800(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D6DA622C(0, &qword_1EC895DE0, sub_1D6DA60E8, &type metadata for DebugInspectionContextData.CodingKeys, MEMORY[0x1E69E6F48]);
  v48 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - v8;
  v10 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D6DA60E8();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v72);
  }

  else
  {
    v11 = v6;
    v47 = a2;
    LOBYTE(v50[0]) = 0;
    v46 = sub_1D72642CC();
    sub_1D5D64D70(0, &qword_1EC895DF0, &type metadata for DebugInspectionCohort, MEMORY[0x1E69E62F8]);
    LOBYTE(v49[0]) = 1;
    v12 = sub_1D6DA613C();
    sub_1D726431C();
    v44 = v12;
    v45 = v50[0];
    sub_1D5D64D70(0, &qword_1EC88E700, &type metadata for DebugInspectionAggregate, MEMORY[0x1E69E62F8]);
    LOBYTE(v49[0]) = 2;
    sub_1D6DA4E50();
    sub_1D726431C();
    v42 = 0;
    v43 = v50[0];
    LOBYTE(v50[0]) = 3;
    v38 = sub_1D72642BC();
    v41 = v13;
    LOBYTE(v49[0]) = 4;
    sub_1D726431C();
    v40 = v50[0];
    LOBYTE(v50[0]) = 5;
    LODWORD(v12) = sub_1D72642CC();
    v66 = 6;
    sub_1D693EC94();
    sub_1D726427C();
    memcpy(&v70[7], v67, 0x198uLL);
    LOBYTE(v50[0]) = 7;
    v14 = sub_1D72642BC();
    v35 = v12;
    v15 = v14;
    v39 = v16;
    LOBYTE(v50[0]) = 8;
    v36 = sub_1D72642BC();
    v37 = v17;
    LOBYTE(v50[0]) = 9;
    v18 = sub_1D72642CC();
    LOBYTE(v50[0]) = 10;
    v34 = sub_1D72642CC();
    LOBYTE(v50[0]) = 11;
    v33 = sub_1D72642CC();
    LOBYTE(v49[0]) = 12;
    sub_1D726431C();
    v44 = v50[0];
    v65 = 13;
    v42 = sub_1D726422C();
    v32 = v19;
    v20 = v46 & 1;
    v31 = v46 & 1;
    v21 = v35 & 1;
    v46 = v18 & 1;
    v34 &= 1u;
    v22 = v34;
    v35 &= 1u;
    v23 = v33 & 1;
    (*(v11 + 8))(v9, v48);
    LOBYTE(v49[0]) = v20;
    *(v49 + 1) = v71[0];
    HIDWORD(v49[0]) = *(v71 + 3);
    v49[1] = v45;
    v49[2] = v43;
    v49[3] = v38;
    v49[4] = v41;
    v49[5] = v40;
    LOBYTE(v49[6]) = v21;
    memcpy(&v49[6] + 1, v70, 0x19FuLL);
    v30 = v15;
    v49[58] = v15;
    v49[59] = v39;
    v24 = v36;
    v25 = v37;
    v49[60] = v36;
    v49[61] = v37;
    LOBYTE(v49[62]) = v46;
    BYTE1(v49[62]) = v22;
    BYTE2(v49[62]) = v23;
    *(&v49[62] + 3) = v68;
    HIBYTE(v49[62]) = v69;
    v26 = v44;
    v49[63] = v44;
    v27 = v42;
    v49[64] = v42;
    v28 = v32;
    v49[65] = v32;
    sub_1D6DA547C(v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v72);
    LOBYTE(v50[0]) = v31;
    *(v50 + 1) = v71[0];
    HIDWORD(v50[0]) = *(v71 + 3);
    v50[1] = v45;
    v50[2] = v43;
    v50[3] = v38;
    v50[4] = v41;
    v50[5] = v40;
    v51 = v35;
    memcpy(v52, v70, sizeof(v52));
    v53 = v30;
    v54 = v39;
    v55 = v24;
    v56 = v25;
    v57 = v46;
    v58 = v34;
    v59 = v23;
    v60 = v68;
    v61 = v69;
    v62 = v26;
    v63 = v27;
    v64 = v28;
    sub_1D6DA53F8(v50);
    memcpy(v47, v49, 0x210uLL);
  }
}

unint64_t sub_1D6DA60E8()
{
  result = qword_1EC895DE8;
  if (!qword_1EC895DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895DE8);
  }

  return result;
}

unint64_t sub_1D6DA613C()
{
  result = qword_1EC895DF8;
  if (!qword_1EC895DF8)
  {
    sub_1D5D64D70(255, &qword_1EC895DF0, &type metadata for DebugInspectionCohort, MEMORY[0x1E69E62F8]);
    sub_1D6DA61D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895DF8);
  }

  return result;
}

unint64_t sub_1D6DA61D8()
{
  result = qword_1EC895E00;
  if (!qword_1EC895E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E00);
  }

  return result;
}

void sub_1D6DA622C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6DA6294()
{
  result = qword_1EC895E10;
  if (!qword_1EC895E10)
  {
    sub_1D5D64D70(255, &qword_1EC895DF0, &type metadata for DebugInspectionCohort, MEMORY[0x1E69E62F8]);
    sub_1D6DA6330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E10);
  }

  return result;
}

unint64_t sub_1D6DA6330()
{
  result = qword_1EC895E18;
  if (!qword_1EC895E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E18);
  }

  return result;
}

uint64_t sub_1D6DA6384(uint64_t a1, uint64_t a2)
{
  sub_1D5D64D70(0, &qword_1EC88E6D8, &type metadata for DebugInspectionScoreProfile, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6DA6450()
{
  result = qword_1EC895E20;
  if (!qword_1EC895E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E20);
  }

  return result;
}

unint64_t sub_1D6DA64A8()
{
  result = qword_1EC895E28;
  if (!qword_1EC895E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E28);
  }

  return result;
}

unint64_t sub_1D6DA6500()
{
  result = qword_1EC895E30;
  if (!qword_1EC895E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E30);
  }

  return result;
}

unint64_t sub_1D6DA6558()
{
  result = qword_1EC895E38;
  if (!qword_1EC895E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E38);
  }

  return result;
}

unint64_t sub_1D6DA65B0()
{
  result = qword_1EC895E40;
  if (!qword_1EC895E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E40);
  }

  return result;
}

unint64_t sub_1D6DA6608()
{
  result = qword_1EC895E48;
  if (!qword_1EC895E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E48);
  }

  return result;
}

unint64_t sub_1D6DA6660()
{
  result = qword_1EC895E50;
  if (!qword_1EC895E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E50);
  }

  return result;
}

unint64_t sub_1D6DA66B8()
{
  result = qword_1EC895E58;
  if (!qword_1EC895E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E58);
  }

  return result;
}

unint64_t sub_1D6DA6710()
{
  result = qword_1EC895E60;
  if (!qword_1EC895E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E60);
  }

  return result;
}

unint64_t sub_1D6DA6768()
{
  result = qword_1EC895E68;
  if (!qword_1EC895E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E68);
  }

  return result;
}

unint64_t sub_1D6DA67C0()
{
  result = qword_1EC895E70;
  if (!qword_1EC895E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E70);
  }

  return result;
}

unint64_t sub_1D6DA6818()
{
  result = qword_1EC895E78;
  if (!qword_1EC895E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895E78);
  }

  return result;
}

uint64_t sub_1D6DA686C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44747865746E6F63 && a2 == 0xEB00000000617461 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6DA6990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001D73F2670 == a2;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73F2690 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D73F26B0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73F26D0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6DA6AF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D75636F44666E61 && a2 == 0xEE0079654B746E65;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43656C6369747261 && a2 == 0xEE007374726F686FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C656C6369747261 && a2 == 0xED00006874676E65 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972657473756C63 && a2 == 0xE900000000000044 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F25B0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446863746566 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F25D0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6566694C666C6168 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73F25F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69647541736168 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F65646956736168 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x656E654749417369 && a2 == 0xED00006465746172 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x726143614C416E69 && a2 == 0xEA00000000006574 || (sub_1D72646CC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656C646E75426E69 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x464E417369 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7267726576457369 && a2 == 0xEB000000006E6565 || (sub_1D72646CC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x646165726F437369 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x7275746165467369 && a2 == 0xEA00000000006465 || (sub_1D72646CC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x4165757373497369 && a2 == 0xEE00656C63697472 || (sub_1D72646CC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73F2610 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xE900000000000072 || (sub_1D72646CC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6465636166727573 && a2 == 0xEF44496761547942 || (sub_1D72646CC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73F2630 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73F2650 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x646174654D676174 && a2 == 0xEB00000000617461 || (sub_1D72646CC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x626D45656C746974 && a2 == 0xEE00676E69646465 || (sub_1D72646CC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x736369706F74 && a2 == 0xE600000000000000)
  {

    return 30;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 30;
    }

    else
    {
      return 31;
    }
  }
}

uint64_t sub_1D6DA74AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269737365636361 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73F26F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xEE006E6F73616552 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73F2710 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684104562 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F725065726F6373 && a2 == 0xEC000000656C6966 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x54676E69726F6373 && a2 == 0xEB00000000657079 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x43676E69726F6373 && a2 == 0xEE00747865746E6FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1852138867 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73F2730 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73F2750 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6F686F4372657375 && a2 == 0xEB00000000737472 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F2770 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

id sub_1D6DA7930@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void sub_1D6DA7A20()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = [v1 navigationItem];
    v6 = sub_1D726203C();
    [v5 setTitle_];

    v7 = *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_tableView];
    [v7 setDataSource_];
    [v7 setDelegate_];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v7 setTableFooterView_];

    type metadata accessor for DebugFormatContentSizeCategoryCell();
    sub_1D7262DAC();
    type metadata accessor for DebugFormatSwitchCell();
    sub_1D7262DAC();
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      [v9 addSubview_];

      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = v7;
      v12 = sub_1D725833C();

      v13 = *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_contentSizeObserver];
      *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_contentSizeObserver] = v12;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D6DA7CB0(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [v3 contentSize];
    [v5 setPreferredContentSize_];
    v6 = [v5 view];

    if (v6)
    {
      [v6 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1D6DA7F98(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_sections);
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (result >= *(v4 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *(v4 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result >= *(v6 + 16))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v7 = *(v6 + result + 32);

  if (v7)
  {
    if (v7 == 1)
    {
      type metadata accessor for DebugFormatSwitchCell();
      v8 = sub_1D7262D8C();
      [v8 setSelectionStyle_];
      v9 = [v8 textLabel];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1D726203C();
        [v10 setText_];
      }

      v12 = [v8 textLabel];
      if (v12)
      {
        v13 = v12;
        v14 = [objc_opt_self() systemFontOfSize_];
        [v13 setFont_];
      }

      v15 = *&v8[OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_switchControl];

      sub_1D725972C();

      [v15 setOn_];

      v16 = sub_1D6DA877C;
    }

    else
    {
      type metadata accessor for DebugFormatSwitchCell();
      v8 = sub_1D7262D8C();
      [v8 setSelectionStyle_];
      v24 = [v8 textLabel];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1D726203C();
        [v25 setText_];
      }

      v27 = [v8 textLabel];
      if (v27)
      {
        v28 = v27;
        v29 = [objc_opt_self() systemFontOfSize_];
        [v28 setFont_];
      }

      v30 = *&v8[OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_switchControl];

      sub_1D725972C();

      [v30 setOn_];

      v16 = sub_1D6DA8758;
    }

    v22 = v16;
    v23 = &OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_onChangeBlock;
  }

  else
  {
    type metadata accessor for DebugFormatContentSizeCategoryCell();
    v8 = sub_1D7262D8C();
    [v8 setSelectionStyle_];

    sub_1D725972C();

    v17 = OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_contentSizeCategory;
    v8[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_contentSizeCategory] = v35;
    v18 = *&v8[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_label];
    sub_1D5EDF2A8(v35);
    v19 = sub_1D726203C();

    [v18 setText_];

    LOBYTE(v20) = v8[v17];
    *&v21 = v20;
    [*&v8[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_slider] setValue_];
    v22 = sub_1D6DA87A0;
    v23 = &OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_onChangeBlock;
  }

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = &v8[*v23];
  v33 = *v32;
  v34 = v32[1];
  *v32 = v22;
  v32[1] = v31;

  sub_1D5B74328(v33, v34);

  return v8;
}

double sub_1D6DA8480(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_1D725973C();
  }

  return result;
}

double sub_1D6DA8520(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_1D725973C();
  }

  return result;
}

uint64_t sub_1D6DA87DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AA4C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D6DA8824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v56 = a1;
  v63 = a3;
  sub_1D6D165B0(0, a4);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7260FEC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DAA124(0, v12);
  v16 = v15;
  v17 = *(v15 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DAA924(0, v19);
  v57 = v22;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DAAA60(0, v24);
  v28 = *(v27 - 8);
  v59 = v27;
  v60 = v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DAAC14(0, v30);
  v34 = *(v33 - 8);
  v61 = v33;
  v62 = v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v58 = &v56 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v56;
  v65 = a2;
  sub_1D6DAA1D4(0, &qword_1EC895EA8, sub_1D6DAA238, MEMORY[0x1E69E6720]);
  sub_1D6DAA84C();
  sub_1D726168C();
  sub_1D7260FDC();
  sub_1D6DAA610(&qword_1EC895F48, sub_1D6DAA124, MEMORY[0x1E697CD20]);
  sub_1D726183C();
  (*(v10 + 8))(v14, v9);
  (*(v17 + 8))(v21, v16);
  v37 = [objc_opt_self() secondaryLabelColor];
  v38 = sub_1D726189C();
  KeyPath = swift_getKeyPath();
  v66 = v38;
  v40 = sub_1D7260EFC();
  v41 = v57;
  v42 = &v26[*(v57 + 36)];
  *v42 = KeyPath;
  v42[1] = v40;
  sub_1D7260EDC();
  v44 = sub_1D6DAAAE4(v43);
  sub_1D72617DC();
  sub_1D6DAAF90(v26, sub_1D6DAA924);
  sub_1D72613DC();
  v45 = sub_1D72613EC();
  v46 = *(*(v45 - 8) + 56);
  v46(v8, 0, 1, v45);
  v47 = sub_1D726160C();
  v66 = v41;
  v67 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v58;
  v49 = v59;
  MEMORY[0x1DA6F8EA0](v8, v47, v59, OpaqueTypeConformance2);
  sub_1D6DAB080(v8, sub_1D6D165B0);
  (*(v60 + 8))(v32, v49);
  sub_1D72613DC();
  v46(v8, 0, 1, v45);
  v51 = sub_1D72615FC();
  v66 = v49;
  v67 = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v51;
  v54 = v61;
  MEMORY[0x1DA6F8EA0](v8, v53, v61, v52);
  sub_1D6DAB080(v8, sub_1D6D165B0);
  return (*(v62 + 8))(v50, v54);
}

uint64_t sub_1D6DA8DF8@<X0>(unint64_t (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a1;
  sub_1D6DAA238(0);
  v6 = v5;
  v127 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v118 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DAA68C(0);
  v115 = *(v9 - 1);
  v116 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v109 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DAA658(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v126 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v124 = &v104 - v17;
  sub_1D6DAA554(0);
  v132 = v18;
  v117 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v125 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v131 = &v104 - v23;
  sub_1D6DAA778(0, &qword_1EC895EF0, sub_1D6DAA500, &type metadata for DebugFormatBindingTreeOptionView);
  v112 = *(v24 - 8);
  v113 = v24;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v108 = &v104 - v27;
  sub_1D6DAA450(0, &qword_1EC895EE8, &qword_1EC895EF0, sub_1D6DAA500, &type metadata for DebugFormatBindingTreeOptionView, v26);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v123 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v130 = &v104 - v33;
  sub_1D6DAA778(0, &qword_1EC895ED8, sub_1D6DAA4AC, &type metadata for DebugFormatBindingTreeSelectorView);
  v110 = *(v34 - 8);
  v111 = v34;
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v107 = &v104 - v37;
  sub_1D6DAA450(0, &qword_1EC895ED0, &qword_1EC895ED8, sub_1D6DAA4AC, &type metadata for DebugFormatBindingTreeSelectorView, v36);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v129 = &v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v104 - v43;
  sub_1D6DAA364(0);
  v128 = v45;
  v122 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v46);
  v121 = &v104 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v104 - v50;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_1D72600CC();

  v150[10] = v146;
  v150[11] = v147;
  v150[12] = v148;
  v150[6] = v142;
  v150[7] = v143;
  v150[8] = v144;
  v150[9] = v145;
  v150[2] = v138;
  v150[3] = v139;
  v150[4] = v140;
  v150[5] = v141;
  v150[0] = v136;
  v150[1] = v137;
  v162 = v146;
  v163 = v147;
  v164 = v148;
  v158 = v142;
  v159 = v143;
  v160 = v144;
  v161 = v145;
  v154 = v138;
  v155 = v139;
  v156 = v140;
  v157 = v141;
  v151 = v149;
  v165 = v149;
  v152 = v136;
  v153 = v137;
  if (sub_1D5DEA380(&v152) == 1)
  {

    v52 = 1;
  }

  else
  {
    v119 = v44;
    v105 = v6;
    v106 = a3;
    v147 = v163;
    v148 = v164;
    v143 = v159;
    v144 = v160;
    v149 = v165;
    v145 = v161;
    v146 = v162;
    v138 = v154;
    v139 = v155;
    v140 = v156;
    v141 = v157;
    v142 = v158;
    v136 = v152;
    v137 = v153;
    v135 = sub_1D6C56990();
    swift_getKeyPath();
    v53 = swift_allocObject();
    *(v53 + 16) = v120;
    *(v53 + 24) = a2;
    sub_1D5B7F110(0);
    sub_1D6DAA778(0, &qword_1EC895EC8, sub_1D68C43C4, &type metadata for DebugFormatFeedItemView);
    sub_1D6DAA610(&qword_1EC88DA08, sub_1D5B7F110, MEMORY[0x1E69E6338]);
    v54 = sub_1D68C43C4();

    v133 = &type metadata for DebugFormatFeedItemView;
    v134 = v54;
    swift_getOpaqueTypeConformance2();
    v114 = v51;
    sub_1D72619DC();
    v55 = *(&v163 + 1);
    if (*(*(&v163 + 1) + 16))
    {
      type metadata accessor for DebugFormatBindingTree(0);
      sub_1D6DAA610(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree, &unk_1D7365F28);

      v56 = a2;
      *&v136 = sub_1D7260F8C();
      *(&v136 + 1) = v57;
      *&v137 = v55;
      sub_1D7260EDC();
      sub_1D6DAA4AC();
      v58 = v107;
      sub_1D72617DC();

      v60 = v110;
      v59 = v111;
      v61 = v119;
      (*(v110 + 32))(v119, v58, v111);
      v62 = 0;
    }

    else
    {
      v56 = a2;

      v62 = 1;
      v61 = v119;
      v60 = v110;
      v59 = v111;
    }

    (*(v60 + 56))(v61, v62, 1, v59);
    v63 = v163;
    v64 = v120;
    if (*(v163 + 16))
    {
      type metadata accessor for DebugFormatBindingTree(0);
      sub_1D6DAA610(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree, &unk_1D7365F28);

      *&v136 = sub_1D7260F8C();
      *(&v136 + 1) = v65;
      *&v137 = v63;
      sub_1D7260EDC();
      sub_1D6DAA500();
      v66 = v108;
      sub_1D72617DC();

      v68 = v112;
      v67 = v113;
      v69 = v130;
      (*(v112 + 32))(v130, v66, v113);
      v70 = 0;
    }

    else
    {

      v70 = 1;
      v69 = v130;
      v68 = v112;
      v67 = v113;
    }

    v71 = 1;
    (*(v68 + 56))(v69, v70, 1, v67);
    *&v136 = *(&v164 + 1);
    swift_getKeyPath();
    sub_1D5EF3A64(0);
    sub_1D6DAA610(&qword_1EC8848F0, sub_1D5EF3A64, MEMORY[0x1E69E6338]);
    sub_1D5EFF0C0();

    sub_1D72619DC();
    if (v165[1].Kind)
    {
      v133 = v165;
      swift_getKeyPath();
      v72 = swift_allocObject();
      *(v72 + 16) = v64;
      *(v72 + 24) = v56;
      sub_1D678ED64(0);
      sub_1D6DAA778(0, &qword_1EC895F18, sub_1D6DAA7F8, &type metadata for DebugFormatBindingTreeSubgroupView);
      sub_1D6DAA610(&qword_1EC88DA88, sub_1D678ED64, MEMORY[0x1E69E6338]);
      v73 = sub_1D6DAA7F8();

      *&v136 = &type metadata for DebugFormatBindingTreeSubgroupView;
      *(&v136 + 1) = v73;
      v61 = v119;
      swift_getOpaqueTypeConformance2();
      v74 = v109;
      sub_1D72619DC();
      v76 = v115;
      v75 = v116;
      v77 = v124;
      (*(v115 + 32))(v124, v74, v116);
      v71 = 0;
    }

    else
    {
      v77 = v124;
      v76 = v115;
      v75 = v116;
    }

    (*(v76 + 56))(v77, v71, 1, v75);
    v78 = v121;
    v115 = *(v122 + 16);
    v79.n128_f64[0] = (v115)(v121, v114, v128);
    v116 = sub_1D6DAA4AC;
    sub_1D6DAAF1C(v61, v129, &qword_1EC895ED0, &qword_1EC895ED8, sub_1D6DAA4AC, &type metadata for DebugFormatBindingTreeSelectorView, v79);
    v120 = sub_1D6DAA500;
    v80 = v123;
    sub_1D6DAAF1C(v130, v123, &qword_1EC895EE8, &qword_1EC895EF0, sub_1D6DAA500, &type metadata for DebugFormatBindingTreeOptionView, v81);
    v82 = v117;
    v83 = *(v117 + 16);
    v84 = v125;
    v83(v125, v131, v132);
    sub_1D5DC5950(v77, v126);
    v85 = v118;
    v86.n128_f64[0] = (v115)(v118, v78, v128);
    sub_1D6DAA26C(0, v86);
    v88 = v87;
    sub_1D6DAAF1C(v129, v85 + v87[12], &qword_1EC895ED0, &qword_1EC895ED8, sub_1D6DAA4AC, &type metadata for DebugFormatBindingTreeSelectorView, v89);
    v90 = v120;
    sub_1D6DAAF1C(v80, v85 + v88[16], &qword_1EC895EE8, &qword_1EC895EF0, v120, &type metadata for DebugFormatBindingTreeOptionView, v91);
    v92 = v84;
    v93 = v132;
    v83((v85 + v88[20]), v92, v132);
    v94 = v126;
    sub_1D5DC5950(v126, v85 + v88[24]);
    sub_1D5F0B7F0(v150);
    sub_1D6DAAF90(v124, sub_1D6DAA658);
    v95 = *(v82 + 8);
    v96.n128_f64[0] = v95(v131, v93);
    sub_1D6DAAFF0(v130, &qword_1EC895EE8, &qword_1EC895EF0, v90, &type metadata for DebugFormatBindingTreeOptionView, v96);
    v97 = v116;
    sub_1D6DAAFF0(v119, &qword_1EC895ED0, &qword_1EC895ED8, v116, &type metadata for DebugFormatBindingTreeSelectorView, v98);
    v99 = *(v122 + 8);
    v100 = v128;
    v99(v114, v128);
    sub_1D6DAAF90(v94, sub_1D6DAA658);
    v101.n128_f64[0] = v95(v125, v132);
    sub_1D6DAAFF0(v123, &qword_1EC895EE8, &qword_1EC895EF0, v120, &type metadata for DebugFormatBindingTreeOptionView, v101);
    sub_1D6DAAFF0(v129, &qword_1EC895ED0, &qword_1EC895ED8, v97, &type metadata for DebugFormatBindingTreeSelectorView, v102);
    v99(v121, v100);
    a3 = v106;
    sub_1D5DC59B4(v85, v106);
    v52 = 0;
    v6 = v105;
  }

  return (*(v127 + 56))(a3, v52, 1, v6);
}

uint64_t sub_1D6DA9D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  sub_1D5B68374(a1, v8);
  sub_1D6DAA1D4(0, &qword_1EC893530, sub_1D62B7E2C, MEMORY[0x1E69E6720]);

  sub_1D72618EC();
  *&v8[40] = v6;
  KeyPath = swift_getKeyPath();
  v10 = 0;
  v9 = KeyPath;
  v7 = v3;
  sub_1D7260EDC();
  sub_1D68C43C4();
  sub_1D72617DC();
  return sub_1D6BB3A54(&v7);
}

uint64_t sub_1D6DA9DFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = (*(*a1 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = 0x64656C7469746E55;
  }

  v7 = *(v3 + 16);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  strcpy(a2, "wand.and.stars");
  *(a2 + 15) = -18;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
}

double sub_1D6DA9EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68C59B4(a1, v8);
  v9 = *(a1 + *(v5 + 28));
  sub_1D6DAB04C(0);
  v10 = swift_allocObject();
  sub_1D68C59B4(v8, v10 + *(*v10 + 88));
  *(v10 + *(*v10 + 96)) = v9;
  swift_beginAccess();
  v18 = 1;

  sub_1D726009C();
  swift_endAccess();
  sub_1D6DAB080(v8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  type metadata accessor for DebugFormatBindingTree(0);
  sub_1D6DAA610(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree, &unk_1D7365F28);
  v11 = sub_1D7260F8C();
  v13 = v12;
  sub_1D6DAA610(&qword_1EC8955D8, sub_1D6DAB04C, &unk_1D7280DC0);
  v14 = sub_1D7260F8C();
  v17[1] = v11;
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v15;
  sub_1D7260EDC();
  sub_1D6DAA7F8();
  sub_1D72617DC();

  return result;
}

void sub_1D6DAA124(uint64_t a1, __n128 a2)
{
  if (!qword_1EC895EA0)
  {
    sub_1D6DAA1D4(255, &qword_1EC895EA8, sub_1D6DAA238, MEMORY[0x1E69E6720]);
    sub_1D6DAA84C();
    v2 = sub_1D726169C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC895EA0);
    }
  }
}

void sub_1D6DAA1D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6DAA26C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC895EB8)
  {
    sub_1D6DAA364(255);
    sub_1D6DAA450(255, &qword_1EC895ED0, &qword_1EC895ED8, sub_1D6DAA4AC, &type metadata for DebugFormatBindingTreeSelectorView, v2);
    sub_1D6DAA450(255, &qword_1EC895EE8, &qword_1EC895EF0, sub_1D6DAA500, &type metadata for DebugFormatBindingTreeOptionView, v3);
    sub_1D6DAA554(255);
    sub_1D6DAA658(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC895EB8);
    }
  }
}

void sub_1D6DAA364(uint64_t a1)
{
  if (!qword_1EC895EC0)
  {
    sub_1D5B7F110(255);
    sub_1D6DAA778(255, &qword_1EC895EC8, sub_1D68C43C4, &type metadata for DebugFormatFeedItemView);
    sub_1D6DAA610(&qword_1EC88DA08, sub_1D5B7F110, MEMORY[0x1E69E6338]);
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC895EC0);
    }
  }
}

void sub_1D6DAA450(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, __n128 a6)
{
  if (!*a2)
  {
    sub_1D6DAA778(255, a3, a4, a5);
    v7 = sub_1D726393C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6DAA4AC()
{
  result = qword_1EC895EE0;
  if (!qword_1EC895EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895EE0);
  }

  return result;
}

unint64_t sub_1D6DAA500()
{
  result = qword_1EC895EF8;
  if (!qword_1EC895EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895EF8);
  }

  return result;
}

void sub_1D6DAA554(uint64_t a1)
{
  if (!qword_1EC895F00)
  {
    sub_1D5EF3A64(255);
    sub_1D6DAA610(&qword_1EC8848F0, sub_1D5EF3A64, MEMORY[0x1E69E6338]);
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC895F00);
    }
  }
}

uint64_t sub_1D6DAA610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6DAA68C(uint64_t a1)
{
  if (!qword_1EC895F10)
  {
    sub_1D678ED64(255);
    sub_1D6DAA778(255, &qword_1EC895F18, sub_1D6DAA7F8, &type metadata for DebugFormatBindingTreeSubgroupView);
    sub_1D6DAA610(&qword_1EC88DA88, sub_1D678ED64, MEMORY[0x1E69E6338]);
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC895F10);
    }
  }
}

void sub_1D6DAA778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D6DAA7F8()
{
  result = qword_1EC895F20;
  if (!qword_1EC895F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895F20);
  }

  return result;
}

unint64_t sub_1D6DAA84C()
{
  result = qword_1EC895F28;
  if (!qword_1EC895F28)
  {
    sub_1D6DAA1D4(255, &qword_1EC895EA8, sub_1D6DAA238, MEMORY[0x1E69E6720]);
    sub_1D6DAA610(&qword_1EC895F30, sub_1D6DAA238, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895F28);
  }

  return result;
}

void sub_1D6DAA924(uint64_t a1, __n128 a2)
{
  if (!qword_1EC895F38)
  {
    sub_1D6DAA98C(255, a2);
    sub_1D6C2E5F4(255);
    v2 = sub_1D726101C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC895F38);
    }
  }
}

void sub_1D6DAA98C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC895F40)
  {
    sub_1D6DAA124(255, a2);
    sub_1D7260FEC();
    sub_1D6DAA610(&qword_1EC895F48, sub_1D6DAA124, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC895F40);
    }
  }
}

void sub_1D6DAAA60(uint64_t a1, __n128 a2)
{
  if (!qword_1EC895F50)
  {
    sub_1D6DAA924(255, a2);
    sub_1D6DAAAE4(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC895F50);
    }
  }
}

unint64_t sub_1D6DAAAE4(__n128 a1)
{
  result = qword_1EC895F58;
  if (!qword_1EC895F58)
  {
    sub_1D6DAA924(255, a1);
    sub_1D6DAA124(255, v2);
    sub_1D7260FEC();
    sub_1D6DAA610(&qword_1EC895F48, sub_1D6DAA124, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1D6DAA610(&qword_1EC88D210, sub_1D6C2E5F4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895F58);
  }

  return result;
}

void sub_1D6DAAC14(uint64_t a1, __n128 a2)
{
  if (!qword_1EC895F60)
  {
    sub_1D6DAAA60(255, a2);
    sub_1D6DAA924(255, v2);
    sub_1D6DAAAE4(v3);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC895F60);
    }
  }
}

double sub_1D6DAACD8@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *(a2 + 160) = v14;
  *(a2 + 176) = v15;
  *(a2 + 192) = v16;
  *(a2 + 208) = v17;
  *(a2 + 96) = v10;
  *(a2 + 112) = v11;
  *(a2 + 128) = v12;
  *(a2 + 144) = v13;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1D6DAADB0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 176);
  v19[10] = *(a1 + 160);
  v19[11] = v3;
  v19[12] = *(a1 + 192);
  v20 = *(a1 + 208);
  v4 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v4;
  v5 = *(a1 + 144);
  v19[8] = *(a1 + 128);
  v19[9] = v5;
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v7 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v7;
  v8 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = *(a1 + 176);
  v17[10] = *(a1 + 160);
  v17[11] = v9;
  v17[12] = *(a1 + 192);
  v18 = *(a1 + 208);
  v10 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v10;
  v11 = *(a1 + 144);
  v17[8] = *(a1 + 128);
  v17[9] = v11;
  v12 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v12;
  v13 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v13;
  v14 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v14;
  sub_1D6DAB0E0(v19, v16);

  return sub_1D72600DC();
}

uint64_t sub_1D6DAAF1C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, __n128 a7)
{
  sub_1D6DAA450(0, a3, a4, a5, a6, a7);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  return a2;
}

uint64_t sub_1D6DAAF90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6DAAFF0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, __n128 a6)
{
  sub_1D6DAA450(0, a2, a3, a4, a5, a6);
  (*(*(v7 - 8) + 8))(a1, v7);
  return a1;
}

uint64_t sub_1D6DAB080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6DAB0E0(uint64_t a1, uint64_t a2)
{
  sub_1D5B49CBC(0, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6DAB17C(void *a1)
{
  v3 = v1;
  sub_1D6DABD6C(0, &qword_1EDF02898, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DABCC4();
  sub_1D7264B5C();
  v15 = *v3;
  v14 = 0;
  type metadata accessor for CGPoint(0);
  sub_1D5BE7188(&unk_1EDF04380, type metadata accessor for CGPoint, MEMORY[0x1E695EFA8]);
  sub_1D726443C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1D72643FC();
    v12 = type metadata accessor for FeedLayoutCacheDynamicKey(0);
    LOBYTE(v15) = 2;
    sub_1D725A19C();
    sub_1D5BE7188(&qword_1EDF17FE0, MEMORY[0x1E69D7280], MEMORY[0x1E69D7288]);
    sub_1D726443C();
    LOBYTE(v15) = 3;
    sub_1D726440C();
    LOBYTE(v15) = 4;
    sub_1D726440C();
    *&v15 = *(v3 + *(v12 + 36));
    v14 = 5;
    sub_1D6DABD18();

    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1D6DAB464(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1D725A19C();
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DABD6C(0, &qword_1EDF03B90, MEMORY[0x1E69E6F48]);
  v27 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for FeedLayoutCacheDynamicKey(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D6DABCC4();
  v16 = v28;
  sub_1D7264B0C();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v28 = v6;
    v17 = v14;
    v18 = v25;
    v19 = v26;
    type metadata accessor for CGPoint(0);
    v31 = 0;
    sub_1D5BE7188(&qword_1EDF04378, type metadata accessor for CGPoint, MEMORY[0x1E695EFC0]);
    v20 = v27;
    sub_1D726431C();
    v21 = v17;
    *v17 = v30;
    LOBYTE(v30) = 1;
    *(v17 + 2) = sub_1D72642BC();
    *(v17 + 3) = v22;
    LOBYTE(v30) = 2;
    sub_1D5BE7188(&qword_1EDF17FD8, MEMORY[0x1E69D7280], MEMORY[0x1E69D72A8]);
    v23 = v28;
    sub_1D726431C();
    (*(v19 + 32))(v21 + v11[6], v23, v3);
    LOBYTE(v30) = 3;
    *(v21 + v11[7]) = sub_1D72642CC() & 1;
    LOBYTE(v30) = 4;
    *(v21 + v11[8]) = sub_1D72642CC() & 1;
    v31 = 5;
    sub_1D6DABDD0();
    sub_1D726431C();
    (*(v18 + 8))(v10, v20);
    *(v21 + v11[9]) = v30;
    sub_1D6DABE24(v21, v24);
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_1D6DABE88(v21);
  }
}

uint64_t sub_1D6DAB928(uint64_t a1)
{
  v2 = sub_1D6DABCC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6DAB964(uint64_t a1)
{
  v2 = sub_1D6DABCC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6DAB9A0(int *a1)
{
  sub_1D7264A0C();
  sub_1D5BE7138(*v1, v1[1]);
  sub_1D72621EC();
  sub_1D725A19C();
  sub_1D5BE7188(&qword_1EDF3BFB0, MEMORY[0x1E69D7280], MEMORY[0x1E69D7290]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  sub_1D5BE71D0(v4, *(v1 + a1[9]));
  return sub_1D7264A5C();
}

uint64_t sub_1D6DABA88(uint64_t a1, int *a2)
{
  sub_1D5BE7138(*v2, v2[1]);
  sub_1D72621EC();
  sub_1D725A19C();
  sub_1D5BE7188(&qword_1EDF3BFB0, MEMORY[0x1E69D7280], MEMORY[0x1E69D7290]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  v5 = *(v2 + a2[9]);

  return sub_1D5BE71D0(a1, v5);
}

uint64_t sub_1D6DABB64(uint64_t a1, int *a2)
{
  sub_1D7264A0C();
  sub_1D5BE7138(*v2, v2[1]);
  sub_1D72621EC();
  sub_1D725A19C();
  sub_1D5BE7188(&qword_1EDF3BFB0, MEMORY[0x1E69D7280], MEMORY[0x1E69D7290]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  sub_1D5BE71D0(v5, *(v2 + a2[9]));
  return sub_1D7264A5C();
}

unint64_t sub_1D6DABCC4()
{
  result = qword_1EDF13AD8;
  if (!qword_1EDF13AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13AD8);
  }

  return result;
}

unint64_t sub_1D6DABD18()
{
  result = qword_1EDF0CF08;
  if (!qword_1EDF0CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CF08);
  }

  return result;
}

void sub_1D6DABD6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6DABCC4();
    v7 = a3(a1, &type metadata for FeedLayoutCacheDynamicKey.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6DABDD0()
{
  result = qword_1EDF0CF00;
  if (!qword_1EDF0CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CF00);
  }

  return result;
}

uint64_t sub_1D6DABE24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLayoutCacheDynamicKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6DABE88(uint64_t a1)
{
  v2 = type metadata accessor for FeedLayoutCacheDynamicKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6DABEF8()
{
  result = qword_1EC895F70;
  if (!qword_1EC895F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895F70);
  }

  return result;
}

unint64_t sub_1D6DABF50()
{
  result = qword_1EDF13AC8;
  if (!qword_1EDF13AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13AC8);
  }

  return result;
}

unint64_t sub_1D6DABFA8()
{
  result = qword_1EDF13AD0;
  if (!qword_1EDF13AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13AD0);
  }

  return result;
}

uint64_t FormatTextNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6DAC0B0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v6 = (v2 + 296);
  v7 = *(v2 + 424);
  v222 = *(v2 + 440);
  v8 = *(v2 + 472);
  v223 = *(v2 + 456);
  v224 = v8;
  v9 = *(v2 + 360);
  v218 = *(v2 + 376);
  v10 = *(v2 + 408);
  v219 = *(v2 + 392);
  v220 = v10;
  v221 = v7;
  v11 = *(v2 + 296);
  v214 = *(v2 + 312);
  v12 = *(v2 + 344);
  v215 = *(v2 + 328);
  v216 = v12;
  v217 = v9;
  v225 = *(v2 + 488);
  v213 = v11;
  if (sub_1D5D39FB4(&v213) != 1)
  {
    v13 = *(v5 + 424);
    __dst[9] = *(v5 + 440);
    v14 = *(v5 + 472);
    __dst[10] = *(v5 + 456);
    __dst[11] = v14;
    v15 = *(v5 + 360);
    __dst[5] = *(v5 + 376);
    v16 = *(v5 + 408);
    __dst[6] = *(v5 + 392);
    __dst[7] = v16;
    __dst[8] = v13;
    v17 = *(v5 + 296);
    __dst[1] = *(v5 + 312);
    v18 = *(v5 + 344);
    __dst[2] = *(v5 + 328);
    __dst[3] = v18;
    __dst[4] = v15;
    LOWORD(__dst[12]) = *(v5 + 488);
    __dst[0] = v17;
    if (sub_1D5D39FB4(__dst) != 1)
    {
      __src[9] = v222;
      __src[10] = v223;
      __src[11] = v224;
      LOWORD(__src[12]) = v225;
      __src[5] = v218;
      __src[6] = v219;
      __src[7] = v220;
      __src[8] = v221;
      __src[1] = v214;
      __src[2] = v215;
      __src[3] = v216;
      __src[4] = v217;
      __src[0] = v213;
      v196[9] = __dst[9];
      v196[10] = __dst[10];
      v196[11] = __dst[11];
      LOWORD(v196[12]) = __dst[12];
      v196[5] = __dst[5];
      v196[6] = __dst[6];
      v196[7] = __dst[7];
      v196[8] = __dst[8];
      v196[1] = __dst[1];
      v196[2] = __dst[2];
      v196[3] = __dst[3];
      v196[4] = __dst[4];
      v196[0] = __dst[0];
      FormatParagraphStyle.merge(other:)(v196, v197);
      __src[9] = v197[9];
      __src[10] = v197[10];
      __src[11] = v197[11];
      LOWORD(__src[12]) = v197[12];
      __src[5] = v197[5];
      __src[6] = v197[6];
      __src[7] = v197[7];
      __src[8] = v197[8];
      __src[1] = v197[1];
      __src[2] = v197[2];
      __src[3] = v197[3];
      __src[4] = v197[4];
      __src[0] = v197[0];
      nullsub_1();
      goto LABEL_6;
    }
  }

  v19 = *(v2 + 424);
  __src[9] = *(v2 + 440);
  v20 = *(v2 + 440);
  __src[10] = *(v2 + 456);
  v21 = *(v2 + 456);
  __src[11] = *(v2 + 472);
  v22 = *(v2 + 360);
  __src[5] = *(v2 + 376);
  v23 = *(v2 + 376);
  __src[6] = *(v2 + 392);
  v24 = *(v2 + 392);
  __src[7] = *(v2 + 408);
  v25 = *(v2 + 408);
  __src[8] = *(v2 + 424);
  v26 = *v6;
  __src[1] = *(v2 + 312);
  v27 = *(v2 + 312);
  __src[2] = *(v2 + 328);
  v28 = *(v2 + 328);
  __src[3] = *(v2 + 344);
  v29 = *(v2 + 344);
  __src[4] = *(v2 + 360);
  __src[0] = *v6;
  __dst[9] = v20;
  __dst[10] = v21;
  __dst[11] = *(v2 + 472);
  __dst[5] = v23;
  __dst[6] = v24;
  __dst[7] = v25;
  __dst[8] = v19;
  __dst[1] = v27;
  __dst[2] = v28;
  __dst[3] = v29;
  __dst[4] = v22;
  LOWORD(__src[12]) = *(v2 + 488);
  LOWORD(__dst[12]) = *(v2 + 488);
  __dst[0] = v26;
  if (sub_1D5D39FB4(__dst) != 1)
  {
LABEL_6:
    v209 = __src[9];
    v210 = __src[10];
    v211 = __src[11];
    v212 = __src[12];
    v205 = __src[5];
    v206 = __src[6];
    v207 = __src[7];
    v208 = __src[8];
    v201 = __src[1];
    v202 = __src[2];
    v203 = __src[3];
    v204 = __src[4];
    v41 = __src[0];
    goto LABEL_7;
  }

  v30 = *(v5 + 424);
  v196[9] = *(v5 + 440);
  v31 = *(v5 + 440);
  v196[10] = *(v5 + 456);
  v32 = *(v5 + 456);
  v196[11] = *(v5 + 472);
  v33 = *(v5 + 360);
  v196[5] = *(v5 + 376);
  v34 = *(v5 + 376);
  v196[6] = *(v5 + 392);
  v35 = *(v5 + 392);
  v196[7] = *(v5 + 408);
  v36 = *(v5 + 408);
  v196[8] = *(v5 + 424);
  v37 = *(v5 + 296);
  v196[1] = *(v5 + 312);
  v38 = *(v5 + 312);
  v196[2] = *(v5 + 328);
  v39 = *(v5 + 328);
  v196[3] = *(v5 + 344);
  v40 = *(v5 + 344);
  v196[4] = *(v5 + 360);
  v196[0] = *(v5 + 296);
  v197[9] = v31;
  v197[10] = v32;
  v197[11] = *(v5 + 472);
  v197[5] = v34;
  v197[6] = v35;
  v197[7] = v36;
  v197[8] = v30;
  v197[1] = v38;
  v197[2] = v39;
  v197[3] = v40;
  v197[4] = v33;
  LOWORD(v196[12]) = *(v5 + 488);
  LOWORD(v197[12]) = *(v5 + 488);
  v197[0] = v37;
  sub_1D5D39FB4(v197);
  v209 = v196[9];
  v210 = v196[10];
  v211 = v196[11];
  v212 = v196[12];
  v205 = v196[5];
  v206 = v196[6];
  v207 = v196[7];
  v208 = v196[8];
  v201 = v196[1];
  v202 = v196[2];
  v203 = v196[3];
  v204 = v196[4];
  v41 = v196[0];
LABEL_7:
  v200 = v41;
  swift_beginAccess();
  v42 = *(v2 + 16);
  v43 = *(v3 + 24);
  v44 = *(v3 + 32);
  v45 = *(v3 + 40);
  swift_beginAccess();
  v46 = *(v3 + 48);
  swift_beginAccess();
  v47 = *(v5 + 48);
  v194 = MEMORY[0x1E69E7CC8];
  v48 = *(v46 + 16);
  if (__OFADD__(v48, *(v47 + 16)))
  {
    goto LABEL_112;
  }

  v183 = *(v47 + 16);
  v178 = v44;
  v180 = v42;
  v181 = v5;
  sub_1D6DB12CC(0);
  v179 = v43;

  sub_1D7261DAC();
  v49 = sub_1D698F4BC(0, v48, 0, MEMORY[0x1E69E7CC0]);
  v50 = *(v46 + 16);
  v182 = v3;
  v177 = v45;
  v186 = v47;
  v189 = v46;
  if (!v50)
  {
    goto LABEL_26;
  }

  v51 = 0;
  v52 = (v46 + 32);
  v53 = v50 - 1;
  while (1)
  {
    memcpy(__dst, v52, sizeof(__dst));
    v54 = __dst[0];
    sub_1D5CFDDA0(__dst, __src);
    sub_1D5CFDDA0(__dst, __src);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v197[0] = v194;
    v56 = sub_1D6D8CB60();
    v58 = v194[2];
    v59 = (v57 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v61 = v58 + v59;
    if (v60)
    {
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
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v62 = v57;
    if (v194[3] < v61)
    {
      sub_1D6D70FF0(v61, isUniquelyReferenced_nonNull_native);
      v56 = sub_1D6D8CB60();
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_113;
      }

LABEL_15:
      v64 = v189;
      if (v62)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v67 = v56;
    sub_1D6D84054();
    v56 = v67;
    v64 = v189;
    if (v62)
    {
LABEL_16:
      v65 = *&v197[0];
      v66 = (*(*&v197[0] + 56) + 528 * v56);
      memcpy(__src, v66, sizeof(__src));
      memcpy(v66, __dst, 0x210uLL);
      sub_1D5CFF4CC(__src);
      goto LABEL_20;
    }

LABEL_18:
    v65 = *&v197[0];
    *(*&v197[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
    *(v65[6] + 16 * v56) = v54;
    memcpy((v65[7] + 528 * v56), __dst, 0x210uLL);
    v68 = v65[2];
    v60 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (v60)
    {
      goto LABEL_108;
    }

    v65[2] = v69;

LABEL_20:
    v194 = v65;

    sub_1D5CFF4CC(__dst);
    v71 = *(v49 + 2);
    v70 = *(v49 + 3);
    if (v71 >= v70 >> 1)
    {
      v49 = sub_1D698F4BC((v70 > 1), v71 + 1, 1, v49);
    }

    *(v49 + 2) = v71 + 1;
    *&v49[16 * v71 + 32] = v54;
    if (v53 == v51)
    {
      break;
    }

    ++v51;
    v52 += 528;
    if (v51 >= *(v64 + 16))
    {
      goto LABEL_104;
    }
  }

  v3 = v182;
  v47 = v186;
LABEL_26:
  v72 = sub_1D698F4BC(0, v183, 0, MEMORY[0x1E69E7CC0]);
  v73 = *(v47 + 16);
  if (!v73)
  {

    goto LABEL_60;
  }

  v74 = 0;
  v184 = v73 - 1;
  v75 = 32;
  while (2)
  {
    memcpy(__dst, (v47 + v75), sizeof(__dst));
    memcpy(__src, (v47 + v75), sizeof(__src));
    v76 = v194;
    if (!v194[2])
    {
      sub_1D5CFDDA0(__dst, v196);
      v77 = *(&__src[0] + 1);
      v78 = *&__src[0];
LABEL_35:
      memcpy(v196, __src, sizeof(v196));
      sub_1D5CFDDA0(v196, v195);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *&v193[0] = v76;
      v92 = sub_1D6D8CB60();
      v94 = v76[2];
      v95 = (v93 & 1) == 0;
      v60 = __OFADD__(v94, v95);
      v96 = v94 + v95;
      if (v60)
      {
        goto LABEL_107;
      }

      v97 = v93;
      if (v76[3] >= v96)
      {
        if ((v91 & 1) == 0)
        {
          v103 = v92;
          sub_1D6D84054();
          v92 = v103;
          if (v97)
          {
            goto LABEL_41;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_1D6D70FF0(v96, v91);
        v92 = sub_1D6D8CB60();
        if ((v97 & 1) != (v98 & 1))
        {
          goto LABEL_113;
        }
      }

      if (v97)
      {
LABEL_41:
        v99 = *&v193[0];
        v100 = (*(*&v193[0] + 56) + 528 * v92);
        memcpy(v195, v100, sizeof(v195));
        memcpy(v100, v196, 0x210uLL);
        sub_1D5CFF4CC(v195);
LABEL_48:
        v194 = v99;
        v107 = *(v72 + 2);
        v108 = *(v72 + 3);

        v47 = v186;
        if (v107 >= v108 >> 1)
        {
          v72 = sub_1D698F4BC((v108 > 1), v107 + 1, 1, v72);
        }

        memcpy(v195, __src, sizeof(v195));
        sub_1D5CFF4CC(v195);
        *(v72 + 2) = v107 + 1;
        v109 = &v72[16 * v107];
        *(v109 + 4) = v78;
        *(v109 + 5) = v77;
        goto LABEL_55;
      }

LABEL_46:
      v99 = *&v193[0];
      *(*&v193[0] + 8 * (v92 >> 6) + 64) |= 1 << v92;
      v104 = (v99[6] + 16 * v92);
      *v104 = v78;
      v104[1] = v77;
      memcpy((v99[7] + 528 * v92), v196, 0x210uLL);
      v105 = v99[2];
      v60 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v60)
      {
        goto LABEL_109;
      }

      v99[2] = v106;

      goto LABEL_48;
    }

    v77 = *(&__src[0] + 1);
    v78 = *&__src[0];
    sub_1D5CFDDA0(__dst, v196);
    v79 = sub_1D6D8CB60();
    if ((v80 & 1) == 0)
    {
      goto LABEL_35;
    }

    v81 = (v76[7] + 528 * v79);
    memcpy(v195, v81, sizeof(v195));
    memcpy(v197, v81, sizeof(v197));
    v82 = v197[0];
    sub_1D6DAE700(__src, v196);
    sub_1D5CFDDA0(v195, v193);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v192 = v76;
    v84 = sub_1D6D8CB60();
    v86 = v76[2];
    v87 = (v85 & 1) == 0;
    v60 = __OFADD__(v86, v87);
    v88 = v86 + v87;
    if (v60)
    {
      goto LABEL_110;
    }

    v89 = v85;
    if (v76[3] >= v88)
    {
      if (v83)
      {
        goto LABEL_43;
      }

      v110 = v84;
      sub_1D6D84054();
      v84 = v110;
      if ((v89 & 1) == 0)
      {
        goto LABEL_52;
      }

LABEL_44:
      v101 = v192;
      v102 = (v192[7] + 528 * v84);
      memcpy(v193, v102, sizeof(v193));
      memcpy(v102, v196, 0x210uLL);
      sub_1D5CFF4CC(v193);
    }

    else
    {
      sub_1D6D70FF0(v88, v83);
      v84 = sub_1D6D8CB60();
      if ((v89 & 1) != (v90 & 1))
      {
        goto LABEL_113;
      }

LABEL_43:
      if (v89)
      {
        goto LABEL_44;
      }

LABEL_52:
      v101 = v192;
      v192[(v84 >> 6) + 8] |= 1 << v84;
      *(v101[6] + 16 * v84) = v82;
      memcpy((v101[7] + 528 * v84), v196, 0x210uLL);
      v111 = v101[2];
      v60 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v60)
      {
        goto LABEL_111;
      }

      v101[2] = v112;
    }

    memcpy(v191, v197, sizeof(v191));
    sub_1D5CFF4CC(v191);
    memcpy(v193, __src, sizeof(v193));
    sub_1D5CFF4CC(v193);
    v194 = v101;
    v47 = v186;
LABEL_55:
    if (v184 == v74)
    {
      goto LABEL_58;
    }

    ++v74;
    v75 += 528;
    if (v74 < *(v47 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_58:

  v3 = v182;
LABEL_60:
  *&__dst[0] = v72;

  sub_1D6985DAC(v113);
  v114 = *(*&__dst[0] + 16);
  if (v114)
  {
    v115 = 0;
    v116 = *&__dst[0] + 40;
    v187 = *&__dst[0] + 40;
    v190 = MEMORY[0x1E69E7CC0];
LABEL_62:
    v117 = v194;
    v118 = v116 + 16 * v115;
    v119 = v115;
    while (v119 < v114)
    {
      v115 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_106;
      }

      if (v117[2])
      {

        v120 = sub_1D6D8CB60();
        if (v121)
        {
          memcpy(__dst, (v117[7] + 528 * v120), sizeof(__dst));
          sub_1D5CFDDA0(__dst, __src);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v190 = sub_1D698D100(0, *(v190 + 2) + 1, 1, v190);
          }

          v3 = v182;
          v116 = v187;
          v123 = *(v190 + 2);
          v122 = *(v190 + 3);
          if (v123 >= v122 >> 1)
          {
            v190 = sub_1D698D100((v122 > 1), v123 + 1, 1, v190);
          }

          *(v190 + 2) = v123 + 1;
          memcpy(&v190[528 * v123 + 32], __dst, 0x210uLL);
          if (v115 != v114)
          {
            goto LABEL_62;
          }

          goto LABEL_77;
        }
      }

      ++v119;
      v118 += 16;
      if (v115 == v114)
      {
        v3 = v182;
        goto LABEL_77;
      }
    }

    goto LABEL_105;
  }

  v190 = MEMORY[0x1E69E7CC0];
LABEL_77:

  v124 = *(v3 + 56);
  v188 = v124;
  if ((~v124 & 0xF000000000000007) == 0)
  {
    v124 = *(v181 + 56);
    sub_1D62B8444(v124);
  }

  v125 = *(v3 + 144);
  __src[4] = *(v3 + 128);
  __src[5] = v125;
  v126 = *(v3 + 176);
  __src[6] = *(v3 + 160);
  __src[7] = v126;
  v127 = *(v3 + 80);
  __src[0] = *(v3 + 64);
  __src[1] = v127;
  v128 = *(v3 + 112);
  __src[2] = *(v3 + 96);
  __src[3] = v128;
  __dst[7] = v126;
  __dst[6] = __src[6];
  __dst[5] = v125;
  __dst[4] = __src[4];
  __dst[3] = v128;
  __dst[2] = __src[2];
  __dst[1] = v127;
  __dst[0] = __src[0];
  if (sub_1D5CFD0B8(__dst) == 1)
  {
    v129 = *(v181 + 144);
    v196[4] = *(v181 + 128);
    v196[5] = v129;
    v130 = *(v181 + 176);
    v196[6] = *(v181 + 160);
    v196[7] = v130;
    v131 = *(v181 + 80);
    v196[0] = *(v181 + 64);
    v196[1] = v131;
    v132 = *(v181 + 112);
    v196[2] = *(v181 + 96);
    v196[3] = v132;
    sub_1D5E3A490(v196, v197, &qword_1EDF34688, &type metadata for FormatFill);
    v197[4] = v196[4];
    v197[5] = v196[5];
    v197[6] = v196[6];
    v197[7] = v196[7];
    v197[0] = v196[0];
    v197[1] = v196[1];
    v197[2] = v196[2];
    v133 = v196[3];
  }

  else
  {
    v197[4] = __src[4];
    v197[5] = __src[5];
    v197[6] = __src[6];
    v197[7] = __src[7];
    v197[0] = __src[0];
    v197[1] = __src[1];
    v197[2] = __src[2];
    v133 = __src[3];
  }

  v197[3] = v133;
  v134 = *(v3 + 192);
  if (!v134)
  {
    v134 = *(v181 + 192);
  }

  LOBYTE(v195[5]) = *(v3 + 280);
  v135 = *(v3 + 248);
  v195[2] = *(v3 + 232);
  v195[3] = v135;
  v195[4] = *(v3 + 264);
  v136 = *(v3 + 216);
  v195[0] = *(v3 + 200);
  v195[1] = v136;
  if (LOBYTE(v195[5]) == 254)
  {
    v196[2] = *(v181 + 232);
    v196[3] = *(v181 + 248);
    LOBYTE(v196[5]) = *(v181 + 280);
    v196[0] = *(v181 + 200);
    v196[1] = *(v181 + 216);
    v196[4] = *(v181 + 264);
    sub_1D5E3A490(v196, v193, &qword_1EDF33718, &type metadata for FormatShadow);
    v193[2] = v196[2];
    v193[3] = v196[3];
    v193[4] = v196[4];
    LOBYTE(v193[5]) = v196[5];
    v137 = v196[0];
    v138 = v196[1];
  }

  else
  {
    v139 = *(v3 + 248);
    v193[2] = *(v3 + 232);
    v193[3] = v139;
    v193[4] = *(v3 + 264);
    LOBYTE(v193[5]) = *(v3 + 280);
    v137 = *(v3 + 200);
    v138 = *(v3 + 216);
  }

  v193[0] = v137;
  v193[1] = v138;
  v140 = *(v3 + 288);
  if (!v140)
  {
  }

  v185 = v124;
  if (*(v3 + 504) == 1)
  {
    v175 = *(v181 + 504);
    v141 = v181;
  }

  else
  {
    v175 = 0;
    v141 = v3;
  }

  v172 = v140;
  v173 = *(v141 + 496);
  v142 = *(v3 + 512);
  if (!v142)
  {
  }

  v171 = v142;
  v143 = *(v3 + 520);
  v144 = *(v3 + 528);
  v145 = v143;
  v176 = v144;
  if (v143 == 9)
  {
    v145 = *(v181 + 520);
    v144 = *(v181 + 528);
    sub_1D62B5D18(v145, v144);
  }

  v170 = v145;
  v146 = *(v3 + 536);
  v147 = *(v3 + 544);
  v148 = v146;
  v174 = v147;
  if (v146 == 9)
  {
    v148 = *(v181 + 536);
    v147 = *(v181 + 544);
    sub_1D62B5D18(v148, v147);
  }

  v149 = *(v3 + 552);
  if (v149 == 2)
  {
    LOBYTE(v149) = *(v181 + 552);
  }

  v150 = *(v182 + 560);
  if (!v150)
  {
    v150 = *(v181 + 560);
  }

  v151 = swift_allocObject();
  swift_beginAccess();
  *(v151 + 16) = v180;
  *(v151 + 24) = v179;
  *(v151 + 32) = v178;
  *(v151 + 40) = v177;
  swift_beginAccess();
  *(v151 + 48) = v190;
  *(v151 + 56) = v185;
  v152 = v197[5];
  *(v151 + 128) = v197[4];
  *(v151 + 144) = v152;
  v153 = v197[7];
  *(v151 + 160) = v197[6];
  *(v151 + 176) = v153;
  v154 = v197[1];
  *(v151 + 64) = v197[0];
  *(v151 + 80) = v154;
  v155 = v197[3];
  *(v151 + 96) = v197[2];
  *(v151 + 112) = v155;
  *(v151 + 192) = v134;
  v156 = v193[0];
  *(v151 + 216) = v193[1];
  *(v151 + 200) = v156;
  *(v151 + 280) = v193[5];
  v157 = v193[3];
  *(v151 + 264) = v193[4];
  v158 = v193[2];
  *(v151 + 248) = v157;
  *(v151 + 232) = v158;
  *(v151 + 288) = v172;
  v159 = v200;
  v160 = v201;
  v161 = v203;
  v162 = v204;
  *(v151 + 328) = v202;
  *(v151 + 344) = v161;
  *(v151 + 296) = v159;
  *(v151 + 312) = v160;
  v163 = v205;
  v164 = v207;
  v165 = v208;
  *(v151 + 392) = v206;
  *(v151 + 408) = v164;
  *(v151 + 360) = v162;
  *(v151 + 376) = v163;
  v166 = v209;
  v167 = v210;
  v168 = v211;
  *(v151 + 488) = v212;
  *(v151 + 456) = v167;
  *(v151 + 472) = v168;
  *(v151 + 424) = v165;
  *(v151 + 440) = v166;
  *(v151 + 496) = v173;
  *(v151 + 504) = v175;
  *(v151 + 512) = v171;
  *(v151 + 520) = v170;
  *(v151 + 528) = v144;
  *(v151 + 536) = v148;
  *(v151 + 544) = v147;
  *(v151 + 552) = v149;
  *(v151 + 560) = v150;
  sub_1D62B8444(v188);
  sub_1D5E3A490(__src, v196, &qword_1EDF34688, &type metadata for FormatFill);

  sub_1D5E3A490(v195, v196, &qword_1EDF33718, &type metadata for FormatShadow);

  sub_1D62B5D18(v143, v176);
  sub_1D62B5D18(v146, v174);

  return v151;
}

void sub_1D6DAD370(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698D100(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v36 = sub_1D698CF90(0, v5, 0, v6);
  v39 = *(v4 + 16);
  if (v39)
  {
    v35 = v2;
    v8 = 0;
    v37 = v4;
    v38 = v4 + 32;
    while (1)
    {
      memcpy(__dst, (v38 + 528 * v8), 0x210uLL);
      v9 = __dst[0];
      v10 = __dst[1];
      sub_1D5CFDDA0(__dst, __src);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      __src[0] = v9;
      __src[1] = v10;

      v11 = sub_1D6844380(__src);

      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = 32;
        while (1)
        {
          if (v13 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v16 = *(v11 + v14 + 16);
          v15 = *(v11 + v14 + 32);
          v17 = *(v11 + v14);
          v44 = *(v11 + v14 + 48);
          v43[1] = v16;
          v43[2] = v15;
          v43[0] = v17;
          v18 = v16;
          sub_1D5E3B610(v43, __src);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v13;
          sub_1D5E3B66C(v43);
          v14 += 56;
          if (v12 == v13)
          {
            goto LABEL_10;
          }
        }

        sub_1D5E3B66C(v43);
        if (v18 <= 1)
        {
          v24 = *(v7 + 2);
          v23 = *(v7 + 3);
          v19 = v37;
          if (v24 >= v23 >> 1)
          {
            v7 = sub_1D698D100((v23 > 1), v24 + 1, 1, v7);
          }

          *(v7 + 2) = v24 + 1;
          memcpy(&v7[528 * v24 + 32], __dst, 0x210uLL);
        }

        else
        {
          memcpy(__src, __dst, 0x210uLL);
          sub_1D5CFDDA0(__dst, v40);
          v19 = v37;
          v21 = v36[2];
          v20 = v36[3];
          if (v21 >= v20 >> 1)
          {
            v36 = sub_1D698CF90((v20 > 1), v21 + 1, 1, v36);
          }

          sub_1D5CFF4CC(__dst);
          v36[2] = v21 + 1;
          v22 = &v36[67 * v21];
          memcpy(v22 + 4, __src, 0x210uLL);
          v22[70] = v18;
        }
      }

      else
      {
LABEL_10:
        sub_1D5CFF4CC(__dst);

        v19 = v37;
      }

      if (++v8 == v39)
      {
        break;
      }

      if (v8 >= *(v19 + 16))
      {
        goto LABEL_36;
      }
    }

    v2 = v35;
  }

  else
  {
  }

  sub_1D6DB1330(0);
  v25 = sub_1D72626AC();

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v26 - 1;
    for (i = 32; ; i += 536)
    {
      memcpy(__dst, (v25 + i), sizeof(__dst));
      sub_1D6DB138C(__dst, __src);
      v30 = *(v7 + 2);
      v29 = *(v7 + 3);
      if (v30 >= v29 >> 1)
      {
        v7 = sub_1D698D100((v29 > 1), v30 + 1, 1, v7);
      }

      *(v7 + 2) = v30 + 1;
      memcpy(&v7[528 * v30 + 32], __dst, 0x210uLL);
      if (!v27)
      {
        break;
      }

      --v27;
    }
  }

  v31 = *(v7 + 2);

  if (v31)
  {
    v32 = 0;
    v33 = v7 + 32;
    while (v32 < *(v7 + 2))
    {
      memcpy(__dst, v33, 0x210uLL);
      ++v32;
      memcpy(__src, __dst, 0x210uLL);
      swift_allocObject();
      sub_1D5CFDDA0(__dst, v40);
      v34 = sub_1D6DB066C(v2, __src);

      v33 += 528;
      v2 = v34;
      if (v31 == v32)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_33:
  }
}

uint64_t sub_1D6DAD81C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[3];
  v3 = v0[5];
  v61 = v0[4];
  v62 = v0[2];
  swift_beginAccess();
  v5 = v0[6];
  v4 = v0[7];
  if ((~v4 & 0xF000000000000007) != 0)
  {
    if (v4 < 0)
    {
      v6 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v8 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v9 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v10 = swift_allocObject();
      *(v10 + 16) = v6;
      *(v10 + 24) = v7;
      *(v10 + 32) = v8;
      *(v10 + 40) = v9;
      v59 = v10 | 0x6000000000000000;
      sub_1D5F58038(v6, v7, v8, v9);
    }

    else
    {
      v59 = v0[7];
    }
  }

  else
  {
    v59 = v0[7];
  }

  v11 = *(v1 + 9);
  v96 = *(v1 + 8);
  v97 = v11;
  v12 = *(v1 + 11);
  v98 = *(v1 + 10);
  v99 = v12;
  v13 = *(v1 + 5);
  v92 = *(v1 + 4);
  v93 = v13;
  v14 = *(v1 + 7);
  v94 = *(v1 + 6);
  v95 = v14;
  v106 = v98;
  v107 = v12;
  v104 = v96;
  v105 = v11;
  v102 = v94;
  v103 = v14;
  v100 = v92;
  v101 = v13;
  if (sub_1D5CFD0B8(&v100) == 1)
  {
    v88 = v96;
    v89 = v97;
    v90 = v98;
    v91 = v99;
    v84 = v92;
    v85 = v93;
    v86 = v94;
    v87 = v95;
  }

  else
  {
    v75 = v104;
    v76 = v105;
    v77 = v106;
    v78 = v107;
    v71 = v100;
    v72 = v101;
    v73 = v102;
    v74 = v103;

    sub_1D5E3A490(&v92, &v84, &qword_1EDF34688, &type metadata for FormatFill);
    sub_1D6A8E60C(&v64);
    v63[4] = v75;
    v63[5] = v76;
    v63[6] = v77;
    v63[7] = v78;
    v63[0] = v71;
    v63[1] = v72;
    v63[2] = v73;
    v63[3] = v74;
    sub_1D5CFD368(v63);
    v75 = *&v66[32];
    v76 = v67;
    v77 = v68;
    v78 = v69;
    v71 = v64;
    v72 = v65;
    v73 = *v66;
    v74 = *&v66[16];
    nullsub_1();
    v88 = v75;
    v89 = v76;
    v90 = v77;
    v91 = v78;
    v84 = v71;
    v85 = v72;
    v86 = v73;
    v87 = v74;
  }

  v15 = v1[24];
  v60 = v3;
  if (v15)
  {
    v58 = sub_1D600CADC(v15);
  }

  else
  {
    v58 = 0;
  }

  v16 = *(v1 + 27);
  v64 = *(v1 + 25);
  v65 = v16;
  v17 = *(v1 + 31);
  *v66 = *(v1 + 29);
  *&v66[16] = v17;
  *&v66[32] = *(v1 + 33);
  LOBYTE(v67) = *(v1 + 280);
  v18 = v67;
  v19 = v64;
  v20 = DWORD2(v64);
  v21 = v65;
  v56 = *&v66[24];
  v57 = *&v66[8];
  v55 = *&v66[40];
  if (v67 == 254)
  {
    v54 = *v66;
    v49 = HIDWORD(v64);
  }

  else
  {
    v70[0] = *v66;
    v22 = *(v1 + 31);
    v73 = *(v1 + 29);
    v74 = v22;
    v75 = *(v1 + 33);
    LOBYTE(v76) = *(v1 + 280);
    v23 = *(v1 + 27);
    v71 = *(v1 + 25);
    v72 = v23;
    sub_1D62B7F58(&v71, v63);

    sub_1D6E0CAE0(v63);

    sub_1D5E3AAD0(&v64, &qword_1EDF33718, &type metadata for FormatShadow);
    v54 = *&v63[0];
  }

  v24 = v1[36];
  v83 = *(v1 + 244);
  v25 = *(v1 + 59);
  v81 = *(v1 + 57);
  v82 = v25;
  v26 = *(v1 + 51);
  v77 = *(v1 + 49);
  v78 = v26;
  v27 = *(v1 + 55);
  v79 = *(v1 + 53);
  v80 = v27;
  v28 = *(v1 + 43);
  v73 = *(v1 + 41);
  v74 = v28;
  v29 = *(v1 + 47);
  v75 = *(v1 + 45);
  v76 = v29;
  v30 = *(v1 + 39);
  v71 = *(v1 + 37);
  v72 = v30;
  v52 = v1[62];
  v53 = v24;
  v51 = *(v1 + 504);
  v31 = v1[65];
  v32 = v1[66];
  v50 = v1[64];
  if (v31 == 9)
  {
  }

  else
  {
    if ((~v32 & 0xF000000000000007) != 0)
    {
      v70[0] = v1[66];

      sub_1D62B5D18(v31, v32);
      sub_1D6E0CAE0(v63);

      v32 = *&v63[0];
    }

    else
    {
    }

    v31 = v31;
  }

  v33 = v1[67];
  v34 = v1[68];
  if (v33 != 9)
  {
    if ((~v34 & 0xF000000000000007) != 0)
    {
      v70[0] = v1[68];
      sub_1D5CFCFAC(v34);
      sub_1D6E0CAE0(v63);

      v34 = *&v63[0];
    }

    v33 = v33;
  }

  v35 = *(v1 + 552);
  v36 = v1[70];
  v37 = swift_allocObject();
  swift_beginAccess();
  *(v37 + 16) = v62;
  *(v37 + 24) = v2;
  *(v37 + 32) = v61;
  *(v37 + 40) = v60;
  swift_beginAccess();
  *(v37 + 48) = v5;
  *(v37 + 56) = v59;
  v38 = v89;
  *(v37 + 128) = v88;
  *(v37 + 144) = v38;
  v39 = v91;
  *(v37 + 160) = v90;
  *(v37 + 176) = v39;
  v40 = v85;
  *(v37 + 64) = v84;
  *(v37 + 80) = v40;
  v41 = v87;
  *(v37 + 96) = v86;
  *(v37 + 112) = v41;
  *(v37 + 192) = v58;
  *(v37 + 200) = v19;
  *(v37 + 208) = v20;
  *(v37 + 212) = v49;
  *(v37 + 216) = v21;
  *(v37 + 232) = v54;
  *(v37 + 240) = v57;
  *(v37 + 256) = v56;
  *(v37 + 272) = v55;
  *(v37 + 280) = v18;
  *(v37 + 288) = v53;
  v42 = v82;
  *(v37 + 456) = v81;
  *(v37 + 472) = v42;
  *(v37 + 488) = v83;
  v43 = v78;
  *(v37 + 392) = v77;
  *(v37 + 408) = v43;
  v44 = v80;
  *(v37 + 424) = v79;
  *(v37 + 440) = v44;
  v45 = v74;
  *(v37 + 328) = v73;
  *(v37 + 344) = v45;
  v46 = v76;
  *(v37 + 360) = v75;
  *(v37 + 376) = v46;
  v47 = v72;
  *(v37 + 296) = v71;
  *(v37 + 312) = v47;
  *(v37 + 496) = v52;
  *(v37 + 504) = v51;
  *(v37 + 512) = v50;
  *(v37 + 520) = v31;
  *(v37 + 528) = v32;
  *(v37 + 536) = v33;
  *(v37 + 544) = v34;
  *(v37 + 552) = v35;
  *(v37 + 560) = v36;

  return v37;
}

double FormatTextNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatTextNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatTextNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t FormatTextNodeStyle.font.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1D62B8444(v2);
}

uint64_t FormatTextNodeStyle.fill.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[9];
  v14 = v1[8];
  v2 = v14;
  v15 = v3;
  v5 = v1[11];
  v16 = v1[10];
  v4 = v16;
  v17 = v5;
  v6 = v1[5];
  v11[0] = v1[4];
  v11[1] = v6;
  v8 = v1[7];
  v12 = v1[6];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_1D5E3A490(v11, &v10, &qword_1EDF34688, &type metadata for FormatFill);
}

uint64_t FormatTextNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v10 = *(v1 + 280);
  v5 = *(v1 + 216);
  v9[0] = *(v1 + 200);
  v4 = v9[0];
  v9[1] = v5;
  v9[2] = v2;
  v6 = *(v1 + 264);
  v9[3] = v3;
  v9[4] = v6;
  *(a1 + 80) = v10;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 64) = v6;
  return sub_1D5E3A490(v9, v8, &qword_1EDF33718, &type metadata for FormatShadow);
}

__n128 FormatTextNodeStyle.paragraphStyle.getter@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 192) = *(v1 + 488);
  v2 = *(v1 + 472);
  *(a1 + 160) = *(v1 + 456);
  *(a1 + 176) = v2;
  v3 = *(v1 + 408);
  *(a1 + 96) = *(v1 + 392);
  *(a1 + 112) = v3;
  v4 = *(v1 + 440);
  *(a1 + 128) = *(v1 + 424);
  *(a1 + 144) = v4;
  v5 = *(v1 + 344);
  *(a1 + 32) = *(v1 + 328);
  *(a1 + 48) = v5;
  v6 = *(v1 + 376);
  *(a1 + 64) = *(v1 + 360);
  *(a1 + 80) = v6;
  result = *(v1 + 312);
  *a1 = *(v1 + 296);
  *(a1 + 16) = result;
  return result;
}

uint64_t FormatTextNodeStyle.strikethrough.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 520);
  v3 = *(v1 + 528);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D62B5D18(v2, v3);
}

uint64_t FormatTextNodeStyle.underline.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 536);
  v3 = *(v1 + 544);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D62B5D18(v2, v3);
}

uint64_t FormatTextNodeStyle.__allocating_init(identifier:class:selectors:font:fill:borders:shadow:transforms:paragraphStyle:tracking:alpha:strikethrough:underline:ignoresSmartInvertColors:baselineOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _OWORD *a7, uint64_t a8, __int128 *a9, uint64_t a10, __int128 *a11, uint64_t a12, char a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, char a17, uint64_t *a18)
{
  v21 = swift_allocObject();
  v22 = *a6;
  v23 = *a14;
  v24 = a15[1];
  v25 = a16[1];
  v50 = *a16;
  v51 = *a15;
  v26 = *a18;
  swift_beginAccess();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  swift_beginAccess();
  *(v21 + 48) = a5;
  *(v21 + 56) = v22;
  v27 = a7[5];
  *(v21 + 128) = a7[4];
  *(v21 + 144) = v27;
  v28 = a7[7];
  *(v21 + 160) = a7[6];
  *(v21 + 176) = v28;
  v29 = a7[1];
  *(v21 + 64) = *a7;
  *(v21 + 80) = v29;
  v30 = a7[3];
  *(v21 + 96) = a7[2];
  *(v21 + 112) = v30;
  *(v21 + 192) = a8;
  v31 = *a9;
  *(v21 + 216) = a9[1];
  *(v21 + 200) = v31;
  *(v21 + 280) = *(a9 + 80);
  v32 = a9[3];
  *(v21 + 264) = a9[4];
  v33 = a9[2];
  *(v21 + 248) = v32;
  *(v21 + 232) = v33;
  *(v21 + 288) = a10;
  v34 = *a11;
  v35 = a11[1];
  v36 = a11[3];
  *(v21 + 328) = a11[2];
  *(v21 + 344) = v36;
  *(v21 + 296) = v34;
  *(v21 + 312) = v35;
  v37 = a11[4];
  v38 = a11[5];
  v39 = a11[7];
  *(v21 + 392) = a11[6];
  *(v21 + 408) = v39;
  *(v21 + 360) = v37;
  *(v21 + 376) = v38;
  v40 = a11[8];
  v41 = a11[9];
  v42 = a11[10];
  v43 = a11[11];
  *(v21 + 488) = *(a11 + 96);
  *(v21 + 456) = v42;
  *(v21 + 472) = v43;
  *(v21 + 424) = v40;
  *(v21 + 440) = v41;
  *(v21 + 496) = a12;
  *(v21 + 504) = a13 & 1;
  *(v21 + 512) = v23;
  *(v21 + 520) = v51;
  *(v21 + 528) = v24;
  *(v21 + 536) = v50;
  *(v21 + 544) = v25;
  *(v21 + 552) = a17;
  *(v21 + 560) = v26;
  return v21;
}

uint64_t FormatTextNodeStyle.init(identifier:class:selectors:font:fill:borders:shadow:transforms:paragraphStyle:tracking:alpha:strikethrough:underline:ignoresSmartInvertColors:baselineOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _OWORD *a7, uint64_t a8, __int128 *a9, uint64_t a10, __int128 *a11, uint64_t a12, char a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, char a17, uint64_t *a18)
{
  v25 = *a6;
  v49 = *a14;
  v47 = a15[1];
  v48 = *a15;
  v45 = a16[1];
  v46 = *a16;
  v50 = *a18;
  swift_beginAccess();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  swift_beginAccess();
  *(v18 + 48) = a5;
  *(v18 + 56) = v25;
  v26 = a7[5];
  *(v18 + 128) = a7[4];
  *(v18 + 144) = v26;
  v27 = a7[7];
  *(v18 + 160) = a7[6];
  *(v18 + 176) = v27;
  v28 = a7[1];
  *(v18 + 64) = *a7;
  *(v18 + 80) = v28;
  v29 = a7[3];
  *(v18 + 96) = a7[2];
  *(v18 + 112) = v29;
  *(v18 + 192) = a8;
  v30 = *a9;
  *(v18 + 216) = a9[1];
  *(v18 + 200) = v30;
  *(v18 + 280) = *(a9 + 80);
  v31 = a9[3];
  *(v18 + 264) = a9[4];
  v32 = a9[2];
  *(v18 + 248) = v31;
  *(v18 + 232) = v32;
  *(v18 + 288) = a10;
  v33 = *a11;
  v34 = a11[1];
  v35 = a11[3];
  *(v18 + 328) = a11[2];
  *(v18 + 344) = v35;
  *(v18 + 296) = v33;
  *(v18 + 312) = v34;
  v36 = a11[4];
  v37 = a11[5];
  v38 = a11[7];
  *(v18 + 392) = a11[6];
  *(v18 + 408) = v38;
  *(v18 + 360) = v36;
  *(v18 + 376) = v37;
  v39 = a11[8];
  v40 = a11[9];
  v41 = a11[10];
  v42 = a11[11];
  *(v18 + 488) = *(a11 + 96);
  *(v18 + 456) = v41;
  *(v18 + 472) = v42;
  *(v18 + 424) = v39;
  *(v18 + 440) = v40;
  *(v18 + 496) = a12;
  *(v18 + 504) = a13 & 1;
  *(v18 + 512) = v49;
  *(v18 + 520) = v48;
  *(v18 + 528) = v47;
  *(v18 + 536) = v46;
  *(v18 + 544) = v45;
  *(v18 + 552) = a17;
  *(v18 + 560) = v50;
  return v18;
}

uint64_t FormatTextNodeStyle.deinit()
{

  sub_1D5C8500C(*(v0 + 56));
  v1 = *(v0 + 144);
  v6[4] = *(v0 + 128);
  v6[5] = v1;
  v2 = *(v0 + 176);
  v6[6] = *(v0 + 160);
  v6[7] = v2;
  v3 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v3;
  v4 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v6[3] = v4;
  sub_1D5E3AAD0(v6, &qword_1EDF34688, &type metadata for FormatFill);

  sub_1D600ECE4(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280));

  sub_1D62B5D00(*(v0 + 520), *(v0 + 528));
  sub_1D62B5D00(*(v0 + 536), *(v0 + 544));

  return v0;
}

uint64_t FormatTextNodeStyle.__deallocating_deinit()
{
  FormatTextNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatTextNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatTextNodeStyle.Selector.font.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D62B8444(v2);
}

uint64_t FormatTextNodeStyle.Selector.fill.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 104);
  v14 = *(v1 + 88);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 136);
  v16 = *(v1 + 120);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 40);
  v11[0] = *(v1 + 24);
  v11[1] = v6;
  v8 = *(v1 + 72);
  v12 = *(v1 + 56);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_1D5E3A490(v11, &v10, &qword_1EDF34688, &type metadata for FormatFill);
}

uint64_t FormatTextNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v4 = *(v1 + 224);
  v10 = *(v1 + 208);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 240);
  v6 = *(v1 + 176);
  v9[0] = *(v1 + 160);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D5E3A490(v9, v8, &qword_1EDF33718, &type metadata for FormatShadow);
}

__n128 FormatTextNodeStyle.Selector.paragraphStyle.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 432);
  *(a1 + 160) = *(v1 + 416);
  *(a1 + 176) = v2;
  *(a1 + 192) = *(v1 + 448);
  v3 = *(v1 + 368);
  *(a1 + 96) = *(v1 + 352);
  *(a1 + 112) = v3;
  v4 = *(v1 + 400);
  *(a1 + 128) = *(v1 + 384);
  *(a1 + 144) = v4;
  v5 = *(v1 + 304);
  *(a1 + 32) = *(v1 + 288);
  *(a1 + 48) = v5;
  v6 = *(v1 + 336);
  *(a1 + 64) = *(v1 + 320);
  *(a1 + 80) = v6;
  result = *(v1 + 272);
  *a1 = *(v1 + 256);
  *(a1 + 16) = result;
  return result;
}

uint64_t FormatTextNodeStyle.Selector.strikethrough.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 480);
  v3 = *(v1 + 488);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D62B5D18(v2, v3);
}

uint64_t FormatTextNodeStyle.Selector.underline.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 496);
  v3 = *(v1 + 504);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D62B5D18(v2, v3);
}

uint64_t sub_1D6DAE700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 104);
  v136[4] = *(a1 + 88);
  v136[5] = v6;
  v7 = *(a1 + 136);
  v136[6] = *(a1 + 120);
  v136[7] = v7;
  v8 = *(a1 + 40);
  v136[0] = *(a1 + 24);
  v136[1] = v8;
  v9 = *(a1 + 72);
  v136[2] = *(a1 + 56);
  v136[3] = v9;
  v10 = *(a1 + 152);
  v138 = *(a1 + 240);
  v11 = *(a1 + 208);
  v137[4] = *(a1 + 224);
  v12 = *(a1 + 192);
  v137[3] = v11;
  v137[2] = v12;
  v13 = *(a1 + 160);
  v137[1] = *(a1 + 176);
  v137[0] = v13;
  v99 = *(a1 + 456);
  v98 = *(a1 + 464);
  v87 = *(a1 + 488);
  v88 = *(a1 + 480);
  v90 = *(a1 + 496);
  v89 = *(a1 + 504);
  v96 = *(a1 + 512);
  v97 = *v2;
  v100 = v2[1];
  v14 = v2[2];
  v15 = *(v2 + 3);
  v16 = *(v2 + 5);
  v17 = *(v2 + 7);
  v139[3] = *(v2 + 9);
  v139[2] = v17;
  v139[1] = v16;
  v139[0] = v15;
  v18 = *(v2 + 11);
  v19 = *(v2 + 13);
  v20 = *(v2 + 15);
  v139[7] = *(v2 + 17);
  v139[6] = v20;
  v139[5] = v19;
  v139[4] = v18;
  v21 = v2[19];
  v22 = *(v2 + 11);
  v140[0] = *(v2 + 10);
  v140[1] = v22;
  v23 = *(v2 + 12);
  v24 = *(v2 + 13);
  v25 = *(v2 + 14);
  v141 = *(v2 + 240);
  v140[3] = v24;
  v140[4] = v25;
  v140[2] = v23;
  v26 = v2[31];
  v95 = v2[57];
  v104 = v2[60];
  v27 = v2[62];
  v102 = v2[59];
  v103 = v2[61];
  v28 = v2[63];
  v93 = *(v2 + 512);
  v94 = *(v2 + 464);
  v29 = v14;
  v30 = v2[65];
  v101 = v14;
  if ((~v14 & 0xF000000000000007) == 0)
  {
    sub_1D62B8444(v5);
    v29 = v5;
  }

  v92 = v29;
  v31 = *(v2 + 13);
  v135[4] = *(v2 + 11);
  v135[5] = v31;
  v32 = *(v2 + 17);
  v135[6] = *(v2 + 15);
  v135[7] = v32;
  v33 = *(v2 + 5);
  v135[0] = *(v2 + 3);
  v135[1] = v33;
  v34 = *(v2 + 9);
  v135[2] = *(v2 + 7);
  v135[3] = v34;
  if (sub_1D5CFD0B8(v135) == 1)
  {
    v35 = v136;
    sub_1D5E3A490(v136, v119, &qword_1EDF34688, &type metadata for FormatFill);
  }

  else
  {
    v35 = v139;
  }

  v36 = v35[5];
  v131 = v35[4];
  v132 = v36;
  v37 = v35[7];
  v133 = v35[6];
  v134 = v37;
  v38 = v35[1];
  v127 = *v35;
  v128 = v38;
  v39 = v35[3];
  v40 = v21;
  v129 = v35[2];
  v130 = v39;
  if (!v21)
  {

    v40 = v10;
  }

  v91 = v40;
  v41 = (v2 + 32);
  if (v141 == 254)
  {
    v42 = v137;
    sub_1D5E3A490(v137, v119, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  else
  {
    v42 = v140;
  }

  v43 = (a1 + 256);
  v44 = v42[3];
  v123 = v42[2];
  v124 = v44;
  v125 = v42[4];
  v126 = *(v42 + 80);
  v45 = *v42;
  v46 = v42[1];
  v47 = v26;
  v121 = v45;
  v122 = v46;
  if (!v26)
  {
  }

  v48 = v41[11];
  v119[10] = v41[10];
  v119[11] = v48;
  v120 = *(v41 + 96);
  v49 = v41[7];
  v119[6] = v41[6];
  v119[7] = v49;
  v50 = v41[9];
  v119[8] = v41[8];
  v119[9] = v50;
  v51 = v41[3];
  v119[2] = v41[2];
  v119[3] = v51;
  v52 = v41[5];
  v119[4] = v41[4];
  v119[5] = v52;
  v53 = v41[1];
  v119[0] = *v41;
  v119[1] = v53;
  if (sub_1D5D39FB4(v119) == 1)
  {
    v54 = v43;
  }

  else
  {
    v54 = v41;
  }

  v55 = v54[11];
  v116 = v54[10];
  v117 = v55;
  v118 = *(v54 + 96);
  v56 = v54[7];
  v112 = v54[6];
  v113 = v56;
  v57 = v54[9];
  v114 = v54[8];
  v115 = v57;
  v58 = v54[3];
  v108 = v54[2];
  v109 = v58;
  v59 = v54[5];
  v110 = v54[4];
  v111 = v59;
  v60 = v54[1];
  v61 = v102;
  v106 = *v54;
  v107 = v60;
  if (!v102)
  {
  }

  v62 = v30;
  v63 = v103;
  v64 = v104;
  if (v104 == 9)
  {
    v63 = v87;
    v64 = v88;
    sub_1D62B5D18(v88, v87);
  }

  v65 = v27;
  v66 = v28;
  if (v27 == 9)
  {
    v28 = v89;
    v27 = v90;
    sub_1D62B5D18(v90, v89);
  }

  v67 = v62;
  if (!v62)
  {
  }

  v68 = v96;
  if (v93 != 2)
  {
    v68 = v93;
  }

  *a2 = v97;
  *(a2 + 8) = v100;
  v69 = v99;
  if (!v94)
  {
    v69 = v95;
  }

  *(a2 + 16) = v92;
  v70 = v132;
  *(a2 + 88) = v131;
  *(a2 + 104) = v70;
  v71 = v134;
  *(a2 + 120) = v133;
  *(a2 + 136) = v71;
  v72 = v128;
  *(a2 + 24) = v127;
  *(a2 + 40) = v72;
  v73 = v130;
  *(a2 + 56) = v129;
  *(a2 + 72) = v73;
  *(a2 + 152) = v91;
  v74 = v124;
  *(a2 + 192) = v123;
  *(a2 + 208) = v74;
  *(a2 + 224) = v125;
  *(a2 + 240) = v126;
  v75 = v122;
  *(a2 + 160) = v121;
  *(a2 + 176) = v75;
  *(a2 + 248) = v47;
  v76 = v106;
  v77 = v107;
  v78 = v109;
  *(a2 + 288) = v108;
  *(a2 + 304) = v78;
  *(a2 + 256) = v76;
  *(a2 + 272) = v77;
  v79 = v110;
  v80 = v111;
  v81 = v113;
  *(a2 + 352) = v112;
  *(a2 + 368) = v81;
  *(a2 + 320) = v79;
  *(a2 + 336) = v80;
  v82 = v114;
  v83 = v115;
  v84 = v116;
  v85 = v117;
  *(a2 + 448) = v118;
  *(a2 + 416) = v84;
  *(a2 + 432) = v85;
  *(a2 + 384) = v82;
  *(a2 + 400) = v83;
  *(a2 + 456) = v69;
  *(a2 + 464) = v94 & v98;
  *(a2 + 472) = v61;
  *(a2 + 480) = v64;
  *(a2 + 488) = v63;
  *(a2 + 496) = v27;
  *(a2 + 504) = v28;
  *(a2 + 512) = v68;
  *(a2 + 520) = v67;

  sub_1D62B8444(v101);
  sub_1D5E3A490(v139, v105, &qword_1EDF34688, &type metadata for FormatFill);

  sub_1D5E3A490(v140, v105, &qword_1EDF33718, &type metadata for FormatShadow);

  sub_1D62B5D18(v104, v103);
  sub_1D62B5D18(v65, v66);
}

uint64_t sub_1D6DAEC68(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, _OWORD *))
{
  v7 = v4;
  v8 = a3;
  v11 = sub_1D62DD564(v7, a3);
  if (!v5)
  {
    v12 = v11;

    sub_1D62DF2F4(v12, v7, v8, 18, v16);
    type metadata accessor for FormatAttributedString(0);
    swift_allocObject();

    sub_1D61FFF18(v16, &v15);
    a4(a1, a2, v16);
    sub_1D6BB92D8(v8);
    v8 = v13;

    sub_1D61FFF74(v16);
  }

  return v8;
}

void sub_1D6DAED8C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6, void *a7)
{
  v25 = -99999.0;
  v13 = *MEMORY[0x1E69DB648];
  v14 = swift_allocObject();
  *(v14 + 16) = &v25;
  *(v14 + 24) = a6;
  *(v14 + 32) = a4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1D6DB2508;
  *(v15 + 24) = v14;
  v23 = sub_1D6DB2518;
  v24 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D613EB68;
  v22 = &block_descriptor_46;
  v16 = _Block_copy(aBlock);
  v17 = a6;

  [v17 enumerateAttribute:v13 inRange:a2 options:a3 usingBlock:{0x100000, v16}];
  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else if (v25 <= -99999.0)
  {
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    v19 = MEMORY[0x1E69E7CA0];
    sub_1D5E3A490(a1, aBlock, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
    if (v22)
    {
      sub_1D5B5A498(0, &qword_1EC895F98, 0x1E69DB7D0);
      if (swift_dynamicCast())
      {
        [v18 setParagraphStyle_];
      }
    }

    else
    {
      sub_1D5E3AAD0(aBlock, &qword_1EDF43B70, v19 + 8);
    }

    [v18 setLineSpacing_];
    [a7 addAttribute:*MEMORY[0x1E69DB688] value:v18 range:{a2, a3}];
  }
}

void sub_1D6DAF050(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, double *a6, void *a7)
{
  v12 = MEMORY[0x1E69E7CA0];
  sub_1D5E3A490(a1, v20, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
  if (v21)
  {
    sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    if (swift_dynamicCast())
    {
      v13 = *a6;
      v14 = [a7 attributedSubstringFromRange_];
      v15 = [v14 string];

      if (!v15)
      {
        sub_1D726207C();
        v15 = sub_1D726203C();
      }

      [v19 ts:v15 tightenedLineSpacingForString:a4 minimumLineSpacingMultiple:?];
      v17 = v16;

      if (v13 > v17)
      {
        v18 = v13;
      }

      else
      {
        v18 = v17;
      }

      *a6 = v18;
    }
  }

  else
  {
    sub_1D5E3AAD0(v20, &qword_1EDF43B70, v12 + 8);
  }
}

uint64_t FormatTextNodeStyle.auxViewRequirements.getter()
{
  v1 = v0[9];
  v27 = v0[8];
  v28 = v1;
  v2 = v0[11];
  v29 = v0[10];
  v30 = v2;
  v3 = v0[5];
  v24[0] = v0[4];
  v24[1] = v3;
  v4 = v0[7];
  v25 = v0[6];
  v26 = v4;
  v37 = v29;
  v38 = v2;
  v35 = v27;
  v36 = v1;
  v33 = v25;
  v34 = v4;
  v31 = v24[0];
  v32 = v3;
  if (sub_1D5CFD0B8(&v31) == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v23[1] = 0;
    v23[2] = 0;
  }

  else
  {
    v5 = swift_allocObject();
    v8 = v36;
    v5[5] = v35;
    v5[6] = v8;
    v9 = v38;
    v5[7] = v37;
    v5[8] = v9;
    v10 = v32;
    v5[1] = v31;
    v5[2] = v10;
    v11 = v34;
    v5[3] = v33;
    v5[4] = v11;
    v7 = &protocol witness table for FormatFill;
    v6 = &type metadata for FormatFill;
  }

  v23[0] = v5;
  v23[3] = v6;
  v23[4] = v7;
  sub_1D5E3A490(v24, v22, &qword_1EDF34688, &type metadata for FormatFill);
  sub_1D67AE3F4(v23, v22);
  sub_1D67AE3F4(v22, &v17);
  if (v18)
  {
    sub_1D5B63F14(&v17, v19);
    v12 = v20;
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v14 = (*(v13 + 8))(v12, v13);
    v15 = sub_1D5EECE3C(v14, MEMORY[0x1E69E7CD0]);
    sub_1D6DB2490(v22, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_1D6DB2490(v22, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
    sub_1D6DB2490(&v17, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
    v15 = MEMORY[0x1E69E7CD0];
  }

  sub_1D6DB2490(v23, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
  return v15;
}

uint64_t sub_1D6DAF3E8()
{
  v1 = *v0;
  sub_1D5B56218(0, &qword_1EDF195B8, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[8];
  v17[2] = v1[6];
  v17[3] = v4;
  v6 = v1[9];
  v7 = v1[10];
  v17[4] = v5;
  v17[5] = v6;
  v8 = v1[11];
  v17[6] = v7;
  v17[7] = v8;
  v17[0] = v1[4];
  v17[1] = v3;
  memmove(__dst, v1 + 4, 0x80uLL);
  if (sub_1D5CFD0B8(__dst) == 1)
  {
    *(inited + 64) = 0;
    *(inited + 32) = 0u;
    *(inited + 48) = 0u;
  }

  else
  {
    *(inited + 56) = &type metadata for FormatFill;
    *(inited + 64) = &protocol witness table for FormatFill;
    v9 = swift_allocObject();
    *(inited + 32) = v9;
    v10 = __dst[1];
    v9[1] = __dst[0];
    v9[2] = v10;
    v11 = __dst[3];
    v9[3] = __dst[2];
    v9[4] = v11;
    v12 = __dst[5];
    v9[5] = __dst[4];
    v9[6] = v12;
    v13 = __dst[7];
    v9[7] = __dst[6];
    v9[8] = v13;
  }

  sub_1D5E3A490(v17, v16, &qword_1EDF34688, &type metadata for FormatFill);
  v14 = sub_1D6E27AC0();
  swift_setDeallocating();
  sub_1D6DB2490(inited + 32, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
  return v14;
}

uint64_t _s8NewsFeed19FormatTextNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 13);
  v172 = *(a1 + 11);
  v173 = v7;
  v8 = *(a1 + 17);
  v174 = *(a1 + 15);
  v175 = v8;
  v9 = *(a1 + 5);
  v168 = *(a1 + 3);
  v169 = v9;
  v10 = *(a1 + 9);
  v170 = *(a1 + 7);
  v171 = v10;
  v94 = a1[19];
  v181 = *(a1 + 240);
  v11 = *(a1 + 13);
  v180 = *(a1 + 14);
  v12 = *(a1 + 12);
  v179 = v11;
  v178 = v12;
  v13 = *(a1 + 10);
  v177 = *(a1 + 11);
  v176 = v13;
  v92 = a1[31];
  v14 = *(a1 + 16);
  v15 = *(a1 + 17);
  v16 = *(a1 + 18);
  v185 = *(a1 + 19);
  v184 = v16;
  v182 = v14;
  v183 = v15;
  v17 = *(a1 + 20);
  v18 = *(a1 + 21);
  v19 = *(a1 + 22);
  v189 = *(a1 + 23);
  v188 = v19;
  v186 = v17;
  v187 = v18;
  v20 = *(a1 + 24);
  v21 = *(a1 + 25);
  v22 = *(a1 + 26);
  v23 = *(a1 + 27);
  v194 = *(a1 + 224);
  v193 = v23;
  v192 = v22;
  v190 = v20;
  v191 = v21;
  v24 = *(a1 + 57);
  v90 = *(a1 + 464);
  v25 = a1[60];
  v88 = a1[59];
  v27 = a1[61];
  v26 = a1[62];
  v28 = a1[63];
  v29 = *(a1 + 512);
  v30 = a1[65];
  v31 = *a2;
  v32 = a2[1];
  v33 = a2[2];
  v34 = *(a2 + 13);
  v199 = *(a2 + 11);
  v200 = v34;
  v35 = *(a2 + 17);
  v201 = *(a2 + 15);
  v202 = v35;
  v36 = *(a2 + 5);
  v195 = *(a2 + 3);
  v196 = v36;
  v37 = *(a2 + 9);
  v197 = *(a2 + 7);
  v198 = v37;
  v93 = a2[19];
  v208 = *(a2 + 240);
  v38 = *(a2 + 13);
  v207 = *(a2 + 14);
  v39 = *(a2 + 12);
  v206 = v38;
  v205 = v39;
  v40 = *(a2 + 10);
  v204 = *(a2 + 11);
  v203 = v40;
  v91 = a2[31];
  v41 = *(a2 + 16);
  v42 = *(a2 + 17);
  v43 = *(a2 + 18);
  v212 = *(a2 + 19);
  v211 = v43;
  v209 = v41;
  v210 = v42;
  v44 = *(a2 + 20);
  v45 = *(a2 + 21);
  v46 = *(a2 + 22);
  v216 = *(a2 + 23);
  v215 = v46;
  v213 = v44;
  v214 = v45;
  v47 = *(a2 + 24);
  v48 = *(a2 + 25);
  v49 = *(a2 + 26);
  v50 = *(a2 + 27);
  v221 = *(a2 + 224);
  v220 = v50;
  v219 = v49;
  v217 = v47;
  v218 = v48;
  v51 = *(a2 + 57);
  v89 = *(a2 + 464);
  v86 = a2[61];
  v87 = a2[59];
  v84 = a2[62];
  v85 = a2[60];
  v83 = a2[63];
  v52 = *(a2 + 512);
  v53 = a2[65];
  if ((v4 != v31 || v5 != v32) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1D62B8444(v6);
    sub_1D62B8444(v33);
    if ((~v33 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v6);
      goto LABEL_11;
    }

LABEL_9:
    sub_1D5C8500C(v6);
    sub_1D5C8500C(v33);
    return 0;
  }

  *&v156 = v6;
  if ((~v33 & 0xF000000000000007) == 0)
  {
    sub_1D62B8444(v6);
    sub_1D62B8444(v33);
    sub_1D62B8444(v6);

    goto LABEL_9;
  }

  *v145 = v33;
  sub_1D62B8444(v6);
  sub_1D62B8444(v33);
  sub_1D62B8444(v6);
  v54 = static FormatFont.== infix(_:_:)(&v156, v145);

  sub_1D5C8500C(v6);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v160 = v172;
  *v161 = v173;
  *&v161[16] = v174;
  *&v161[32] = v175;
  v156 = v168;
  v157 = v169;
  v158 = v170;
  v159 = v171;
  v162 = v198;
  *&v161[80] = v197;
  *&v161[64] = v196;
  *&v161[48] = v195;
  v166 = v202;
  v165 = v201;
  v164 = v200;
  v163 = v199;
  v167[3] = v171;
  v167[2] = v170;
  v167[1] = v169;
  v167[0] = v168;
  v167[7] = v175;
  v167[6] = v174;
  v167[5] = v173;
  v167[4] = v172;
  if (sub_1D5CFD0B8(v167) == 1)
  {
    *&v145[64] = v163;
    *&v145[80] = v164;
    v146 = v165;
    v147 = v166;
    *v145 = *&v161[48];
    *&v145[16] = *&v161[64];
    *&v145[32] = *&v161[80];
    *&v145[48] = v162;
    if (sub_1D5CFD0B8(v145) == 1)
    {
      v81 = v30;
      v136 = v160;
      v137 = *v161;
      v138 = *&v161[16];
      v139 = *&v161[32];
      v132 = v156;
      v133 = v157;
      v134 = v158;
      v135 = v159;
      sub_1D5E3A490(&v168, &v119, &qword_1EDF34688, &type metadata for FormatFill);
      sub_1D5E3A490(&v195, &v119, &qword_1EDF34688, &type metadata for FormatFill);
      sub_1D5E3AAD0(&v132, &qword_1EDF34688, &type metadata for FormatFill);
      goto LABEL_21;
    }

    sub_1D5E3A490(&v168, &v132, &qword_1EDF34688, &type metadata for FormatFill);
    sub_1D5E3A490(&v195, &v132, &qword_1EDF34688, &type metadata for FormatFill);
LABEL_17:
    v152 = v163;
    v153 = v164;
    v154 = v165;
    v155 = v166;
    v148 = *&v161[48];
    v149 = *&v161[64];
    v150 = *&v161[80];
    v151 = v162;
    *&v145[64] = v160;
    *&v145[80] = *v161;
    v146 = *&v161[16];
    v147 = *&v161[32];
    *v145 = v156;
    *&v145[16] = v157;
    *&v145[32] = v158;
    *&v145[48] = v159;
    v55 = &unk_1EC88A048;
    v56 = &qword_1EDF34688;
    v57 = &type metadata for FormatFill;
    v58 = v145;
LABEL_18:
    sub_1D6DB2490(v58, v55, v56, v57, sub_1D6736250);
    return 0;
  }

  v136 = v160;
  v137 = *v161;
  v138 = *&v161[16];
  v139 = *&v161[32];
  v132 = v156;
  v133 = v157;
  v134 = v158;
  v135 = v159;
  v121 = v158;
  v122 = v159;
  v119 = v156;
  v120 = v157;
  v125 = *&v161[16];
  v126 = *&v161[32];
  v123 = v160;
  v124 = *v161;
  *&v145[32] = *&v161[80];
  *&v145[48] = v162;
  *v145 = *&v161[48];
  *&v145[16] = *&v161[64];
  v146 = v165;
  v147 = v166;
  *&v145[64] = v163;
  *&v145[80] = v164;
  if (sub_1D5CFD0B8(v145) == 1)
  {
    v115 = v160;
    v116 = *v161;
    v117 = *&v161[16];
    v118 = *&v161[32];
    v111 = v156;
    v112 = v157;
    v113 = v158;
    v114 = v159;
    sub_1D5E3A490(&v168, &v103, &qword_1EDF34688, &type metadata for FormatFill);
    sub_1D5E3A490(&v195, &v103, &qword_1EDF34688, &type metadata for FormatFill);
    sub_1D5E3A490(&v132, &v103, &qword_1EDF34688, &type metadata for FormatFill);
    sub_1D5CFD368(&v111);
    goto LABEL_17;
  }

  v81 = v30;
  v115 = v163;
  v116 = v164;
  v117 = v165;
  v118 = v166;
  v111 = *&v161[48];
  v112 = *&v161[64];
  v113 = *&v161[80];
  v114 = v162;
  sub_1D5E3A490(&v168, &v103, &qword_1EDF34688, &type metadata for FormatFill);
  sub_1D5E3A490(&v195, &v103, &qword_1EDF34688, &type metadata for FormatFill);
  sub_1D5E3A490(&v132, &v103, &qword_1EDF34688, &type metadata for FormatFill);
  v60 = _s8NewsFeed10FormatFillO2eeoiySbAC_ACtFZ_0(&v119, &v111);
  v99 = v115;
  v100 = v116;
  v101 = v117;
  v102 = v118;
  v95 = v111;
  v96 = v112;
  v97 = v113;
  v98 = v114;
  sub_1D5CFD368(&v95);
  v107 = v123;
  v108 = v124;
  v109 = v125;
  v110 = v126;
  v103 = v119;
  v104 = v120;
  v105 = v121;
  v106 = v122;
  sub_1D5CFD368(&v103);
  v115 = v160;
  v116 = *v161;
  v117 = *&v161[16];
  v118 = *&v161[32];
  v111 = v156;
  v112 = v157;
  v113 = v158;
  v114 = v159;
  sub_1D5E3AAD0(&v111, &qword_1EDF34688, &type metadata for FormatFill);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v61 = v25;
  if (v94)
  {
    if (!v93)
    {
      return 0;
    }

    sub_1D633C9E8(v94, v93);
    v63 = v62;

    if ((v63 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v93)
  {
    return 0;
  }

  v82 = v52;
  v97 = v178;
  v98 = v179;
  v99 = v180;
  v95 = v176;
  v96 = v177;
  *&v145[23] = v204;
  *&v145[39] = v205;
  *&v145[55] = v206;
  *&v145[71] = v207;
  v64 = v181;
  *&v145[7] = v203;
  v65 = v208;
  if (v181 == 254)
  {
    if (v208 == 254)
    {
      v158 = v178;
      v159 = v179;
      v160 = v180;
      v157 = v177;
      v156 = v176;
      v161[0] = -2;
      sub_1D5E3A490(&v176, &v132, &qword_1EDF33718, &type metadata for FormatShadow);
      sub_1D5E3A490(&v203, &v132, &qword_1EDF33718, &type metadata for FormatShadow);
      sub_1D5E3AAD0(&v156, &qword_1EDF33718, &type metadata for FormatShadow);
      goto LABEL_34;
    }

    sub_1D5E3A490(&v176, &v156, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D5E3A490(&v203, &v156, &qword_1EDF33718, &type metadata for FormatShadow);
    goto LABEL_32;
  }

  v158 = v178;
  v159 = v179;
  v160 = v180;
  v157 = v177;
  v156 = v176;
  v161[0] = v181;
  v134 = v178;
  v135 = v179;
  v136 = v180;
  LOBYTE(v137) = v181;
  v132 = v176;
  v133 = v177;
  if (v208 == 254)
  {
    v121 = v158;
    v122 = v159;
    v123 = v160;
    LOBYTE(v124) = v161[0];
    v119 = v156;
    v120 = v157;
    sub_1D5E3A490(&v176, &v111, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D5E3A490(&v203, &v111, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D5E3A490(&v156, &v111, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D601144C(&v119);
LABEL_32:
    v158 = v97;
    v159 = v98;
    v160 = v99;
    v157 = v96;
    v156 = v95;
    *&v161[33] = *&v145[32];
    *&v161[49] = *&v145[48];
    *&v161[65] = *&v145[64];
    *&v161[1] = *v145;
    v161[0] = v64;
    *&v161[80] = *&v145[79];
    *&v161[17] = *&v145[16];
    v161[88] = v65;
    v55 = &qword_1EC8822D8;
    v56 = &qword_1EDF33718;
    v57 = &type metadata for FormatShadow;
    v58 = &v156;
    goto LABEL_18;
  }

  v121 = v205;
  v122 = v206;
  v123 = v207;
  v119 = v203;
  v120 = v204;
  LOBYTE(v124) = v208;
  sub_1D5E3A490(&v176, &v111, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D5E3A490(&v203, &v111, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D5E3A490(&v156, &v111, &qword_1EDF33718, &type metadata for FormatShadow);
  v66 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v132, &v119);
  v105 = v121;
  v106 = v122;
  v107 = v123;
  LOBYTE(v108) = v124;
  v103 = v119;
  v104 = v120;
  sub_1D601144C(&v103);
  v113 = v134;
  v114 = v135;
  v115 = v136;
  LOBYTE(v116) = v137;
  v111 = v132;
  v112 = v133;
  sub_1D601144C(&v111);
  v121 = v97;
  v122 = v98;
  v123 = v99;
  v119 = v95;
  v120 = v96;
  LOBYTE(v124) = v64;
  sub_1D5E3AAD0(&v119, &qword_1EDF33718, &type metadata for FormatShadow);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if (v92)
  {
    if (!v91 || (sub_1D670933C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v91)
  {
    return 0;
  }

  *&v161[80] = v192;
  v162 = v193;
  LOWORD(v163) = v194;
  *&v161[16] = v188;
  *&v161[32] = v189;
  *&v161[64] = v191;
  *&v161[48] = v190;
  v158 = v184;
  v159 = v185;
  *v161 = v187;
  v160 = v186;
  v157 = v183;
  v156 = v182;
  if (sub_1D5D39FB4(&v156) == 1)
  {
    v150 = v219;
    v151 = v220;
    LOWORD(v152) = v221;
    v146 = v215;
    v147 = v216;
    v149 = v218;
    v148 = v217;
    *&v145[32] = v211;
    *&v145[48] = v212;
    *&v145[64] = v213;
    *&v145[80] = v214;
    *v145 = v209;
    *&v145[16] = v210;
    if (sub_1D5D39FB4(v145) != 1)
    {
      return 0;
    }
  }

  else
  {
    v142 = v192;
    v143 = v193;
    v144 = v194;
    v138 = v188;
    v139 = v189;
    v140 = v190;
    v141 = v191;
    v134 = v184;
    v135 = v185;
    v136 = v186;
    v137 = v187;
    v132 = v182;
    v133 = v183;
    v150 = v219;
    v151 = v220;
    LOWORD(v152) = v221;
    v146 = v215;
    v147 = v216;
    v149 = v218;
    v148 = v217;
    *&v145[32] = v211;
    *&v145[48] = v212;
    *&v145[64] = v213;
    *&v145[80] = v214;
    *v145 = v209;
    *&v145[16] = v210;
    if (sub_1D5D39FB4(v145) == 1)
    {
      return 0;
    }

    v129 = v219;
    v130 = v220;
    v131 = v221;
    v125 = v215;
    v126 = v216;
    v127 = v217;
    v128 = v218;
    v121 = v211;
    v122 = v212;
    v123 = v213;
    v124 = v214;
    v119 = v209;
    v120 = v210;
    if ((_s8NewsFeed20FormatParagraphStyleV2eeoiySbAC_ACtFZ_0(&v132, &v119) & 1) == 0)
    {
      return 0;
    }
  }

  if (v90)
  {
    if (!v89)
    {
      return 0;
    }
  }

  else
  {
    v67 = v89;
    if (v24 != v51)
    {
      v67 = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  v68 = v53;
  if (v88)
  {
    if (!v87)
    {
      return 0;
    }

    sub_1D633A310(v88, v87);
    v70 = v69;

    if ((v70 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v87)
    {
      return 0;
    }
  }

  v71 = v27;
  if (v61 == 9)
  {
    v72 = v29;
    v73 = v85;
    sub_1D62B5D18(v61, v71);
    v74 = v86;
    sub_1D62B5D18(v85, v86);
    if (v85 == 9)
    {
      sub_1D62B5D00(v61, v71);
      goto LABEL_63;
    }

LABEL_61:
    sub_1D62B5D00(v61, v71);
    sub_1D62B5D00(v73, v74);
    return 0;
  }

  *v145 = v61;
  *&v145[8] = v27;
  v73 = v85;
  v74 = v86;
  if (v85 == 9)
  {
    sub_1D62B5D18(v61, v27);
    sub_1D62B5D18(v85, v86);
    sub_1D62B5D18(v61, v27);
    sub_1D5C84FF4(v27);
    goto LABEL_61;
  }

  v72 = v29;
  LOBYTE(v132) = v85;
  *(&v132 + 1) = v86;
  sub_1D62B5D18(v61, v71);
  sub_1D62B5D18(v85, v86);
  sub_1D62B5D18(v61, v71);
  v75 = _s8NewsFeed15FormatUnderlineV2eeoiySbAC_ACtFZ_0(v145, &v132);
  sub_1D5C84FF4(*(&v132 + 1));
  sub_1D5C84FF4(*&v145[8]);
  sub_1D62B5D00(v61, v71);
  if (!v75)
  {
    return 0;
  }

LABEL_63:
  if (v26 == 9)
  {
    v76 = v84;
    sub_1D62B5D18(v26, v28);
    v77 = v83;
    sub_1D62B5D18(v84, v83);
    if (v84 == 9)
    {
      sub_1D62B5D00(v26, v28);
      goto LABEL_70;
    }

LABEL_68:
    sub_1D62B5D00(v26, v28);
    sub_1D62B5D00(v76, v77);
    return 0;
  }

  *v145 = v26;
  *&v145[8] = v28;
  if (v84 == 9)
  {
    sub_1D62B5D18(v26, v28);
    v77 = v83;
    v76 = v84;
    sub_1D62B5D18(v84, v83);
    sub_1D62B5D18(v26, v28);
    sub_1D5C84FF4(v28);
    goto LABEL_68;
  }

  LOBYTE(v132) = v84;
  *(&v132 + 1) = v83;
  sub_1D62B5D18(v26, v28);
  sub_1D62B5D18(v84, v83);
  sub_1D62B5D18(v26, v28);
  v78 = _s8NewsFeed15FormatUnderlineV2eeoiySbAC_ACtFZ_0(v145, &v132);
  sub_1D5C84FF4(*(&v132 + 1));
  sub_1D5C84FF4(*&v145[8]);
  sub_1D62B5D00(v26, v28);
  if (!v78)
  {
    return 0;
  }

LABEL_70:
  if (v72 == 2)
  {
    if (v82 != 2)
    {
      return 0;
    }
  }

  else if (v82 == 2 || ((v82 ^ v72) & 1) != 0)
  {
    return 0;
  }

  if (v81)
  {
    if (v68)
    {

      sub_1D633A310(v81, v68);
      v80 = v79;

      if (v80)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v68)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D6DB066C(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, 0x210uLL);
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  v6 = *(a1 + 40);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v7;
  v8 = *(&__dst[9] + 1);
  if (!*(&__dst[9] + 1))
  {
  }

  *(v2 + 192) = v8;
  v9 = *&__dst[1];
  v53 = *&__dst[1];
  if ((~*&__dst[1] & 0xF000000000000007) == 0)
  {
    v9 = *(a1 + 56);
    sub_1D62B8444(v9);
  }

  *(v2 + 56) = v9;
  v10 = *(&__dst[15] + 1);
  if (!*(&__dst[15] + 1))
  {
  }

  *(v2 + 288) = v10;
  v95[4] = *(&__dst[5] + 8);
  v95[5] = *(&__dst[6] + 8);
  v95[6] = *(&__dst[7] + 8);
  v95[7] = *(&__dst[8] + 8);
  v95[0] = *(&__dst[1] + 8);
  v95[1] = *(&__dst[2] + 8);
  v95[2] = *(&__dst[3] + 8);
  v95[3] = *(&__dst[4] + 8);
  if (sub_1D5CFD0B8(v95) == 1)
  {
    v11 = *(a1 + 144);
    v72 = *(a1 + 128);
    v73 = v11;
    v12 = *(a1 + 176);
    v74 = *(a1 + 160);
    v75 = v12;
    v13 = *(a1 + 80);
    v68 = *(a1 + 64);
    v69 = v13;
    v14 = *(a1 + 112);
    v70 = *(a1 + 96);
    v71 = v14;
    sub_1D5E3A490(&v68, &v55, &qword_1EDF34688, &type metadata for FormatFill);
    v91 = v72;
    v92 = v73;
    v93 = v74;
    v94 = v75;
    v87 = v68;
    v88 = v69;
    v15 = v70;
    v16 = v71;
  }

  else
  {
    v91 = *(&__dst[5] + 8);
    v92 = *(&__dst[6] + 8);
    v93 = *(&__dst[7] + 8);
    v94 = *(&__dst[8] + 8);
    v87 = *(&__dst[1] + 8);
    v88 = *(&__dst[2] + 8);
    v15 = *(&__dst[3] + 8);
    v16 = *(&__dst[4] + 8);
  }

  v89 = v15;
  v90 = v16;
  v17 = v92;
  *(v2 + 128) = v91;
  *(v2 + 144) = v17;
  v18 = v94;
  *(v2 + 160) = v93;
  *(v2 + 176) = v18;
  v19 = v88;
  *(v2 + 64) = v87;
  *(v2 + 80) = v19;
  v20 = v90;
  *(v2 + 96) = v89;
  *(v2 + 112) = v20;
  if (LOBYTE(__dst[15]) == 254)
  {
    v21 = *(a1 + 248);
    v70 = *(a1 + 232);
    v71 = v21;
    LOBYTE(v73) = *(a1 + 280);
    v22 = *(a1 + 216);
    v68 = *(a1 + 200);
    v69 = v22;
    v72 = *(a1 + 264);
    sub_1D5E3A490(&v68, &v55, &qword_1EDF33718, &type metadata for FormatShadow);
    v83 = v70;
    v84 = v71;
    v85 = v72;
    v86 = v73;
    v23 = v68;
    v24 = v69;
  }

  else
  {
    v83 = __dst[12];
    v84 = __dst[13];
    v85 = __dst[14];
    v86 = __dst[15];
    v23 = __dst[10];
    v24 = __dst[11];
  }

  v81 = v23;
  v82 = v24;
  v25 = v84;
  *(v2 + 232) = v83;
  *(v2 + 248) = v25;
  *(v2 + 264) = v85;
  *(v2 + 280) = v86;
  v26 = v82;
  *(v2 + 200) = v81;
  *(v2 + 216) = v26;
  v70 = __dst[18];
  v71 = __dst[19];
  v68 = __dst[16];
  v69 = __dst[17];
  v74 = __dst[22];
  v75 = __dst[23];
  v72 = __dst[20];
  v73 = __dst[21];
  v80 = __dst[28];
  v78 = __dst[26];
  v79 = __dst[27];
  v76 = __dst[24];
  v77 = __dst[25];
  v27 = sub_1D5D39FB4(&v68);
  v28 = (a1 + 296);
  if (v27 != 1)
  {
    v28 = &__dst[16];
  }

  v29 = v28[11];
  v65 = v28[10];
  v66 = v29;
  v67 = *(v28 + 96);
  v30 = v28[7];
  v61 = v28[6];
  v62 = v30;
  v31 = v28[9];
  v63 = v28[8];
  v64 = v31;
  v32 = v28[3];
  v57 = v28[2];
  v58 = v32;
  v33 = v28[5];
  v59 = v28[4];
  v60 = v33;
  v34 = v28[1];
  v55 = *v28;
  v56 = v34;
  v35 = v66;
  *(v2 + 456) = v65;
  *(v2 + 472) = v35;
  *(v2 + 488) = v67;
  v36 = v62;
  *(v2 + 392) = v61;
  *(v2 + 408) = v36;
  v37 = v64;
  *(v2 + 424) = v63;
  *(v2 + 440) = v37;
  v38 = v58;
  *(v2 + 328) = v57;
  *(v2 + 344) = v38;
  v39 = v60;
  *(v2 + 360) = v59;
  *(v2 + 376) = v39;
  v40 = v56;
  *(v2 + 296) = v55;
  *(v2 + 312) = v40;
  if (LOBYTE(__dst[29]) == 1)
  {
    v41 = *(a1 + 496);
    v42 = *(a1 + 504);
  }

  else
  {
    v42 = 0;
    v41 = *(&__dst[28] + 1);
  }

  *(v2 + 496) = v41;
  *(v2 + 504) = v42;
  v43 = *(&__dst[29] + 1);
  if (!*(&__dst[29] + 1))
  {
  }

  *(v2 + 512) = v43;
  v44 = __dst[30];
  v46 = *(&__dst[30] + 1);
  v45 = *&__dst[30];
  if (LOBYTE(__dst[30]) == 9)
  {
    v45 = *(a1 + 520);
    v46 = *(a1 + 528);
    sub_1D62B5D18(v45, v46);
  }

  *(v2 + 520) = v45;
  *(v2 + 528) = v46;
  v47 = __dst[31];
  v48 = *(&__dst[31] + 1);
  v49 = *&__dst[31];
  if (LOBYTE(__dst[31]) == 9)
  {
    v49 = *(a1 + 536);
    v48 = *(a1 + 544);
    sub_1D62B5D18(v49, v48);
  }

  *(v2 + 536) = v49;
  *(v2 + 544) = v48;
  v50 = __dst[32];
  if (LOBYTE(__dst[32]) == 2)
  {
    v50 = *(a1 + 552);
  }

  *(v2 + 552) = v50;
  v51 = *(&__dst[32] + 1);

  sub_1D62B8444(v53);

  sub_1D5E3A490(&__dst[1] + 8, v54, &qword_1EDF34688, &type metadata for FormatFill);
  sub_1D5E3A490(&__dst[10], v54, &qword_1EDF33718, &type metadata for FormatShadow);

  sub_1D62B5D18(v44, *(&v44 + 1));
  sub_1D62B5D18(v47, *(&v47 + 1));

  sub_1D5CFF4CC(__dst);
  if (!v51)
  {
    v51 = *(a1 + 560);
  }

  *(v2 + 560) = v51;
  return v2;
}

uint64_t sub_1D6DB0BA0()
{
  sub_1D69B875C(v12);
  sub_1D6DB13F0(v13);
  type metadata accessor for FormatTextNodeStyle();
  v0 = swift_allocObject();
  swift_beginAccess();
  *(v0 + 16) = 0x6E776F6E6B6E752ELL;
  *(v0 + 24) = 0xE800000000000000;
  *(v0 + 32) = 0x6E776F6E6B6E752ELL;
  *(v0 + 40) = 0xE800000000000000;
  swift_beginAccess();
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = 0xF000000000000007;
  v1 = v12[5];
  *(v0 + 128) = v12[4];
  *(v0 + 144) = v1;
  v2 = v12[7];
  *(v0 + 160) = v12[6];
  *(v0 + 176) = v2;
  v3 = v12[1];
  *(v0 + 64) = v12[0];
  *(v0 + 80) = v3;
  v4 = v12[3];
  *(v0 + 96) = v12[2];
  *(v0 + 112) = v4;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0;
  *(v0 + 280) = -2;
  *(v0 + 288) = 0;
  v5 = v13[11];
  *(v0 + 456) = v13[10];
  *(v0 + 472) = v5;
  *(v0 + 488) = v14;
  v6 = v13[7];
  *(v0 + 392) = v13[6];
  *(v0 + 408) = v6;
  v7 = v13[9];
  *(v0 + 424) = v13[8];
  *(v0 + 440) = v7;
  v8 = v13[3];
  *(v0 + 328) = v13[2];
  *(v0 + 344) = v8;
  v9 = v13[5];
  *(v0 + 360) = v13[4];
  *(v0 + 376) = v9;
  v10 = v13[1];
  *(v0 + 296) = v13[0];
  *(v0 + 312) = v10;
  *(v0 + 496) = 0;
  *(v0 + 504) = 1;
  *(v0 + 512) = xmmword_1D72F40F0;
  *(v0 + 528) = xmmword_1D72F40F0;
  *(v0 + 544) = 0;
  *(v0 + 552) = 2;
  *(v0 + 560) = 0;
  return v0;
}

void _s8NewsFeed19FormatTextNodeStyleC18reapplyLineSpacing010attributedD07contextSo18NSAttributedStringCAH_AA0cE7ContextCtF_0(void *a1)
{
  v23 = *(v1 + 488);
  v2 = *(v1 + 472);
  v21 = *(v1 + 456);
  v22 = v2;
  v3 = *(v1 + 408);
  v19[6] = *(v1 + 392);
  v19[7] = v3;
  v4 = *(v1 + 440);
  v19[8] = *(v1 + 424);
  v20 = v4;
  v5 = *(v1 + 344);
  v19[2] = *(v1 + 328);
  v19[3] = v5;
  v6 = *(v1 + 376);
  v19[4] = *(v1 + 360);
  v19[5] = v6;
  v7 = *(v1 + 312);
  v19[0] = *(v1 + 296);
  v19[1] = v7;
  if (sub_1D5D39FB4(v19) == 1 || (v21 & 1) != 0)
  {

    v8 = a1;
  }

  else
  {
    v9 = *(&v20 + 1);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v11 = *MEMORY[0x1E69DB688];
    v12 = [a1 length];
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = v9;
    v13[4] = v10;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1D6DB24F0;
    *(v14 + 24) = v13;
    aBlock[4] = sub_1D6DB2500;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D613EB68;
    aBlock[3] = &block_descriptor_97;
    v15 = _Block_copy(aBlock);
    v16 = a1;
    v10;

    [v16 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{0x100000, v15}];
    _Block_release(v15);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D6DB0F9C(uint64_t a1)
{
  result = sub_1D6DB10D4(&qword_1EC895F78, &protocol conformance descriptor for FormatTextNodeStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6DB0FE0(uint64_t a1)
{
  *(a1 + 16) = sub_1D6DB10D4(&qword_1EDF2BD80, &protocol conformance descriptor for FormatTextNodeStyle);
  result = sub_1D6DB10D4(&qword_1EDF0F888, &protocol conformance descriptor for FormatTextNodeStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D6DB1048(void *a1)
{
  a1[1] = sub_1D6DB10D4(&qword_1EDF2BD80, &protocol conformance descriptor for FormatTextNodeStyle);
  a1[2] = sub_1D6DB10D4(&qword_1EDF0F888, &protocol conformance descriptor for FormatTextNodeStyle);
  result = sub_1D6DB10D4(&qword_1EC895F80, &protocol conformance descriptor for FormatTextNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6DB10D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatTextNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6DB1114(uint64_t a1)
{
  result = sub_1D6DB113C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DB113C()
{
  result = qword_1EC895F88;
  if (!qword_1EC895F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895F88);
  }

  return result;
}

unint64_t sub_1D6DB1190(uint64_t a1)
{
  *(a1 + 8) = sub_1D5C319AC();
  result = sub_1D5C31A00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6DB11C0(void *a1)
{
  a1[1] = sub_1D5C319AC();
  a1[2] = sub_1D5C31A00();
  result = sub_1D6DB11F8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DB11F8()
{
  result = qword_1EC895F90;
  if (!qword_1EC895F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895F90);
  }

  return result;
}

void sub_1D6DB12CC(uint64_t a1)
{
  if (!qword_1EDF1B9C0)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1B9C0);
    }
  }
}

void sub_1D6DB1330(uint64_t a1)
{
  if (!qword_1EDF21820)
  {
    v2 = sub_1D69A5CB8();
    v4 = type metadata accessor for FormatNodeStyleSelectorOrder(a1, &type metadata for FormatTextNodeStyle.Selector, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF21820);
    }
  }
}

uint64_t sub_1D6DB138C(uint64_t a1, uint64_t a2)
{
  sub_1D6DB1330(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1D6DB13F0(uint64_t a1)
{
  result = 0.0;
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
  *(a1 + 192) = 768;
  return result;
}

void *sub_1D6DB1418(uint64_t a1, void *a2)
{
  sub_1D5EA74B8(0);
  v137[1] = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 112);
  v196 = *(a1 + 96);
  v197 = v9;
  v198 = *(a1 + 128);
  v199 = *(a1 + 144);
  v10 = *(a1 + 48);
  v192 = *(a1 + 32);
  v193 = v10;
  v11 = *(a1 + 80);
  v194 = *(a1 + 64);
  v195 = v11;
  v12 = *(a1 + 16);
  v190 = *a1;
  v191 = v12;
  sub_1D5B56218(0, &qword_1EC880AC0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1D7283D60;
  sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v13 = *(v5 + 80);
  v14 = (v13 + 32) & ~v13;
  v149 = *(v5 + 72);
  v139 = v13;
  v140 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7273AE0;
  v148 = v14;
  v17 = (v16 + v14);
  if (a2)
  {
    v18 = a2;
    v19 = a2[5];
    v147 = a2[4];
    v20 = v19;

    v21 = sub_1D6DAD81C();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 64) = 0x800000000000000;
    v23 = sub_1D601118C;
  }

  else
  {
    v23 = sub_1D70DD9D8;
    v22 = 0;
    v18 = 0;
    v147 = 0;
    v20 = 0xE000000000000000;
  }

  v24 = type metadata accessor for FormatInspectionItem(0);
  v25 = (v17 + *(v24 + 24));
  *v25 = v23;
  v25[1] = v22;
  v26 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = *(v26 - 8);
  v144 = *(v27 + 56);
  *&v145 = v26;
  v143 = v27 + 56;
  v144(v25, 0, 1, v26);
  v28 = v148;
  *(v16 + v148) = v147;
  v17[2] = 0;
  v17[3] = 0;
  v17[1] = v20;
  v29 = v17 + *(v24 + 28);
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = -1;
  v30 = *(v24 - 8);
  v31 = *(v30 + 56);
  v32 = v30 + 56;
  (v31)(v17, 0, 1, v24);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v16, v180);
  swift_setDeallocating();
  sub_1D6180C78(v17);
  swift_deallocClassInstance();
  v33 = v141;
  *(v141 + 56) = &type metadata for FormatInspectionGroup;
  *(v33 + 64) = &off_1F518B2C0;
  v34 = swift_allocObject();
  *(v33 + 32) = v34;
  v35 = v180[1];
  *(v34 + 16) = v180[0];
  *(v34 + 32) = v35;
  *(v34 + 48) = v181;
  v36 = v149;
  v146 = 3 * v149;
  v37 = swift_allocObject();
  v142 = xmmword_1D7279970;
  *(v37 + 16) = xmmword_1D7279970;
  v38 = (v37 + v28);
  v39 = v32;
  v40 = sub_1D711F844(1701869908, 0xE400000000000000, 1954047316, 0xE400000000000000, v38);
  v31(v38, 0, 1, v24, v40);
  v150 = v24;
  v138 = v18;
  if (v18)
  {
    v41 = v138[64];

    v42 = v41;
    v43 = v138;
    v44 = sub_1D711B070(0x6168706C41, 0xE500000000000000, v42, &v38[v36]);
    v45 = v39;
    v31(&v38[v36], 0, 1, v150, v44);
    v46 = *(v43 + 552);
  }

  else
  {
    v43 = 0;
    v47 = sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, &v38[v36]);
    v48 = v24;
    v45 = v39;
    v31(&v38[v36], 0, 1, v48, v47);
    v46 = 2;
  }

  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, v46, &v38[2 * v36]);
  v137[0] = 2 * v36;
  v49 = &v38[2 * v36];
  v147 = v31;
  v50 = v45;
  (v31)(v49, 0, 1, v150);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v37, v182);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v51 = v141;
  *(v141 + 96) = &type metadata for FormatInspectionGroup;
  *(v51 + 104) = &off_1F518B2C0;
  v52 = swift_allocObject();
  *(v51 + 72) = v52;
  v53 = v182[1];
  *(v52 + 16) = v182[0];
  *(v52 + 32) = v53;
  *(v52 + 48) = v183;
  v178[6] = v196;
  v178[7] = v197;
  v178[8] = v198;
  v179 = v199;
  v178[3] = v193;
  v178[4] = v194;
  v178[5] = v195;
  v178[0] = v190;
  v178[1] = v191;
  v178[2] = v192;
  v54 = v150;
  if (v43)
  {
    v55 = v43[7];
    sub_1D62B8444(v55);
  }

  else
  {
    v55 = 0xF000000000000007;
  }

  *&v165 = v55;
  v56 = sub_1D5F518FC(v178, &v165);
  sub_1D5C8500C(v165);
  v57 = v141;
  *(v141 + 136) = &type metadata for FormatInspection;
  *(v57 + 144) = &off_1F51E3FD0;
  *(v57 + 112) = v56;
  v58 = v148;
  v59 = swift_allocObject();
  *(v59 + 16) = v142;
  v60 = (v59 + v58);
  v146 = v50;
  if (v43)
  {
    v61 = *(v43 + 9);
    v169 = *(v43 + 8);
    v170 = v61;
    v62 = *(v43 + 11);
    v171 = *(v43 + 10);
    v172 = v62;
    v63 = *(v43 + 5);
    v165 = *(v43 + 4);
    v166 = v63;
    v64 = *(v43 + 7);
    v167 = *(v43 + 6);
    v168 = v64;
    sub_1D5E3A490(&v165, v163, &qword_1EDF34688, &type metadata for FormatFill);
    v177[4] = v169;
    v177[5] = v170;
    v177[6] = v171;
    v177[7] = v172;
    v177[0] = v165;
    v177[1] = v166;
    v177[2] = v167;
    v177[3] = v168;
  }

  else
  {
    sub_1D69B875C(v177);
  }

  sub_1D712D4AC(1819044166, 0xE400000000000000, v177, v60);
  v65 = v147;
  v66 = v54;
  v147(v60, 0, 1, v54);
  if (v43)
  {
    v67 = v43[62];
    v68 = *(v43 + 504);
    v69 = v149;
    sub_1D711A80C(0x676E696B63617254, 0xE800000000000000, v67, v68, &v60[v149]);
    v65(&v60[v69], 0, 1, v54);
    v70 = v138[70];
  }

  else
  {
    v71 = v149;
    sub_1D711A80C(0x676E696B63617254, 0xE800000000000000, 0, 1, &v60[v149]);
    v65(&v60[v71], 0, 1, v54);
    v70 = 0;
  }

  v72 = v141;
  v73 = v137[0];
  v74 = sub_1D711B070(0x656E696C65736142, 0xEF74657366664F20, v70, &v60[v137[0]]);
  (v65)(&v60[v73], 0, 1, v66, v74);
  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v59, v184);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v72[22] = &type metadata for FormatInspectionGroup;
  v72[23] = &off_1F518B2C0;
  v75 = swift_allocObject();
  v72[19] = v75;
  v76 = v184[1];
  *(v75 + 16) = v184[0];
  *(v75 + 32) = v76;
  *(v75 + 48) = v185;
  v77 = v138;
  if (v138 && (v78 = v138[36]) != 0)
  {

    v79 = *(v78 + 16);
    if (!v79)
    {
LABEL_19:

      v80 = v77;
      v81 = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    }
  }

  else
  {

    v78 = MEMORY[0x1E69E7CC0];
    v79 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v79)
    {
      goto LABEL_19;
    }
  }

  *&v165 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, v79, 0);
  v81 = v165;
  v82 = 32;
  *&v142 = v78;
  do
  {
    v83 = *(v78 + v82);
    v84 = *&aUppercaslowerc[8 * v83];
    v85 = *&aUppercaslowerc[8 * v83 + 24];
    v86 = v150;
    v87 = &v8[*(v150 + 24)];
    *v87 = 0;
    *(v87 + 1) = 0xE000000000000000;
    v88 = v8;
    v89 = v145;
    swift_storeEnumTagMultiPayload();
    v90 = v89;
    v8 = v88;
    v144(v87, 0, 1, v90);
    *v88 = v84;
    *(v88 + 1) = v85;
    *(v88 + 2) = 0;
    *(v88 + 3) = 0;
    v91 = &v88[*(v86 + 28)];
    *v91 = 0;
    *(v91 + 1) = 0;
    v91[16] = -1;
    v147(v88, 0, 1, v86);
    *&v165 = v81;
    v93 = *(v81 + 16);
    v92 = *(v81 + 24);
    if (v93 >= v92 >> 1)
    {
      sub_1D69972A4((v92 > 1), v93 + 1, 1);
      v81 = v165;
    }

    *(v81 + 16) = v93 + 1;
    sub_1D5E4F52C(v88, v81 + v148 + v93 * v149);
    ++v82;
    --v79;
    v78 = v142;
  }

  while (v79);

  v72 = v141;
  v80 = v138;
LABEL_26:
  sub_1D6795150(0x726F66736E617254, 0xEA0000000000736DLL, 0, 0, v81, v186);

  v72[27] = &type metadata for FormatInspectionGroup;
  v72[28] = &off_1F518B2C0;
  v94 = swift_allocObject();
  v72[24] = v94;
  v95 = v186[1];
  *(v94 + 16) = v186[0];
  *(v94 + 32) = v95;
  *(v94 + 48) = v187;
  v171 = v196;
  v172 = v197;
  v173 = v198;
  v174 = v199;
  v167 = v192;
  v168 = v193;
  v169 = v194;
  v170 = v195;
  v165 = v190;
  v166 = v191;
  if (v80)
  {
    v176 = *(v80 + 244);
    v96 = *(v80 + 59);
    v175[10] = *(v80 + 57);
    v175[11] = v96;
    v97 = *(v80 + 51);
    v175[6] = *(v80 + 49);
    v175[7] = v97;
    v98 = *(v80 + 55);
    v175[8] = *(v80 + 53);
    v175[9] = v98;
    v99 = *(v80 + 43);
    v175[2] = *(v80 + 41);
    v175[3] = v99;
    v100 = *(v80 + 47);
    v175[4] = *(v80 + 45);
    v175[5] = v100;
    v101 = *(v80 + 39);
    v175[0] = *(v80 + 37);
    v175[1] = v101;
  }

  else
  {
    sub_1D6DB13F0(v175);
  }

  v102 = sub_1D5F0FC00(&v165, v175);
  v72[32] = &type metadata for FormatInspection;
  v72[33] = &off_1F51E3FD0;
  v72[29] = v102;
  v163[6] = v196;
  v163[7] = v197;
  v163[8] = v198;
  v164 = v199;
  v163[2] = v192;
  v163[3] = v193;
  v163[4] = v194;
  v163[5] = v195;
  v163[0] = v190;
  v163[1] = v191;
  if (v80)
  {
    v103 = *(v80 + 31);
    v159 = *(v80 + 29);
    v160 = v103;
    v162 = *(v80 + 280);
    v104 = *(v80 + 27);
    v157 = *(v80 + 25);
    v158 = v104;
    v161 = *(v80 + 33);
    sub_1D5E3A490(&v157, &v151, &qword_1EDF33718, &type metadata for FormatShadow);
    v105 = v157;
    v106 = v158;
    v107 = v159;
    v108 = v160;
    v109 = v161;
    v110 = v162;
  }

  else
  {
    v105 = 0uLL;
    v110 = -2;
    v106 = 0uLL;
    v107 = 0uLL;
    v108 = 0uLL;
    v109 = 0uLL;
  }

  v111 = v80;
  v151 = v105;
  v152 = v106;
  v153 = v107;
  v154 = v108;
  v155 = v109;
  v156 = v110;
  v112 = sub_1D686F740(v163, &v151);
  v159 = v153;
  v160 = v154;
  v161 = v155;
  v162 = v156;
  v157 = v151;
  v158 = v152;
  sub_1D5E3AAD0(&v157, &qword_1EDF33718, &type metadata for FormatShadow);
  v72[37] = &type metadata for FormatInspection;
  v72[38] = &off_1F51E3FD0;
  v72[34] = v112;
  v113 = v148;
  v114 = swift_allocObject();
  v145 = xmmword_1D7270C10;
  *(v114 + 16) = xmmword_1D7270C10;
  v115 = (v114 + v113);
  if (v111)
  {
    v116 = v111[65];
    if (v116 == 9)
    {
      v117 = 8;
    }

    else
    {
      v117 = v116;
    }

    sub_1D712D860(0x656C797453, 0xE500000000000000, v117, v115);
    v118 = v150;
    v147(v115, 0, 1, v150);
    if (*(v111 + 520) == 9)
    {
      v119 = 0xF000000000000007;
    }

    else
    {
      v121 = v111[66];
      sub_1D5CFCFAC(v121);
      v119 = v121;
    }

    v120 = v147;
  }

  else
  {
    v111 = 0;
    sub_1D712D860(0x656C797453, 0xE500000000000000, 8, v115);
    v118 = v150;
    v120 = v147;
    v147(v115, 0, 1, v150);
    v119 = 0xF000000000000007;
  }

  v122 = v149;
  sub_1D711B4B4(0x726F6C6F43, 0xE500000000000000, v119, &v115[v149]);
  v120(&v115[v122], 0, 1, v118);
  sub_1D6795150(0x6874656B69727453, 0xED00006867756F72, 0, 0, v114, v188);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v72[42] = &type metadata for FormatInspectionGroup;
  v72[43] = &off_1F518B2C0;
  v123 = swift_allocObject();
  v72[39] = v123;
  v124 = v188[1];
  *(v123 + 16) = v188[0];
  *(v123 + 32) = v124;
  *(v123 + 48) = v189;
  v125 = v148;
  v126 = swift_allocObject();
  *(v126 + 16) = v145;
  v127 = (v126 + v125);
  if (v111)
  {
    v128 = v111[67];
    if (v128 == 9)
    {
      v129 = 8;
    }

    else
    {
      v129 = v128;
    }

    sub_1D712D860(0x656C797453, 0xE500000000000000, v129, v127);
    v120(v127, 0, 1, v118);
    if (*(v111 + 536) == 9)
    {
      v130 = 0xF000000000000007;
    }

    else
    {
      v131 = v111[68];
      sub_1D5CFCFAC(v131);
      v130 = v131;
    }

    v118 = v150;
  }

  else
  {
    sub_1D712D860(0x656C797453, 0xE500000000000000, 8, v127);
    v120(v127, 0, 1, v118);
    v130 = 0xF000000000000007;
  }

  v132 = v149;
  sub_1D711B4B4(0x726F6C6F43, 0xE500000000000000, v130, &v127[v149]);
  v120(&v127[v132], 0, 1, v118);
  sub_1D6795150(0x6E696C7265646E55, 0xE900000000000065, 0, 0, v126, &v151);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v72[47] = &type metadata for FormatInspectionGroup;
  v72[48] = &off_1F518B2C0;
  v133 = swift_allocObject();
  v72[44] = v133;
  v134 = v152;
  *(v133 + 16) = v151;
  *(v133 + 32) = v134;
  *(v133 + 48) = v153;
  v135 = sub_1D7073500(v72);
  swift_setDeallocating();
  sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v135;
}

void sub_1D6DB242C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6DB2490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t FormatPuzzleBinding.Command.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6DB25AC()
{
  result = qword_1EC895FA0;
  if (!qword_1EC895FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895FA0);
  }

  return result;
}

unint64_t sub_1D6DB2600(uint64_t a1)
{
  result = sub_1D6DB2628();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DB2628()
{
  result = qword_1EC895FA8;
  if (!qword_1EC895FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895FA8);
  }

  return result;
}

unint64_t sub_1D6DB267C(void *a1)
{
  a1[1] = sub_1D6680744();
  a1[2] = sub_1D66FFC98();
  result = sub_1D6DB25AC();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6DB2708()
{

  return swift_deallocClassInstance();
}

double sub_1D6DB276C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *(a2 + 160) = v14;
  *(a2 + 176) = v15;
  *(a2 + 192) = v16;
  *(a2 + 208) = v17;
  *(a2 + 96) = v10;
  *(a2 + 112) = v11;
  *(a2 + 128) = v12;
  *(a2 + 144) = v13;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1D6DB2844(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 176);
  v19[10] = *(a1 + 160);
  v19[11] = v3;
  v19[12] = *(a1 + 192);
  v20 = *(a1 + 208);
  v4 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v4;
  v5 = *(a1 + 144);
  v19[8] = *(a1 + 128);
  v19[9] = v5;
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v7 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v7;
  v8 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = *(a1 + 176);
  v17[10] = *(a1 + 160);
  v17[11] = v9;
  v17[12] = *(a1 + 192);
  v18 = *(a1 + 208);
  v10 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v10;
  v11 = *(a1 + 144);
  v17[8] = *(a1 + 128);
  v17[9] = v11;
  v12 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v12;
  v13 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v13;
  v14 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v14;
  sub_1D6DAB0E0(v19, v16);

  return sub_1D72600DC();
}

void *sub_1D6DB294C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v35[10] = v31;
  v35[11] = v32;
  v35[12] = v33;
  v36 = v34;
  v35[6] = v27;
  v35[7] = v28;
  v35[8] = v29;
  v35[9] = v30;
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v35[5] = v26;
  v35[0] = v21;
  v35[1] = v22;
  if (sub_1D5DEA380(v35) == 1)
  {
    v17 = v31;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v9 = v23;
    v10 = v24;
    v11 = v25;
    v12 = v26;
    v7 = v21;
    v8 = v22;
    sub_1D5F0B7F0(&v7);
    v2 = 0xE500000000000000;
    v3 = 0x7974706D65;
  }

  else
  {
    v2 = *(&v22 + 1);
    v3 = v22;
    v17 = v31;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v9 = v23;
    v10 = v24;
    v11 = v25;
    v12 = v26;
    v7 = v21;
    v8 = v22;

    sub_1D5F0B7F0(&v7);
  }

  v1[2] = v3;
  v1[3] = v2;
  swift_beginAccess();
  type metadata accessor for DebugFormatInventoryTree(0);
  sub_1D6DB2B1C(v4);

  v1[4] = sub_1D7260F8C();
  v1[5] = v5;
  swift_endAccess();
  return v1;
}

unint64_t sub_1D6DB2B1C(__n128 a1)
{
  result = qword_1EC894480;
  if (!qword_1EC894480)
  {
    type metadata accessor for DebugFormatInventoryTree(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894480);
  }

  return result;
}

uint64_t sub_1D6DB2B74(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = BYTE2(a3);
  sub_1D6DB3294(0, &qword_1EC895FB0, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14[-v11];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DB2D9C();
  sub_1D7264B5C();
  v15 = a2;
  v14[15] = 0;
  sub_1D6B49204();
  sub_1D6B49488(&qword_1EC884850, sub_1D618D3A4, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  if (!v3)
  {
    v14[14] = 1;
    sub_1D726440C();
    v14[13] = 2;
    sub_1D726440C();
    v14[12] = v4 & 1;
    v14[11] = 3;
    sub_1D6DB2DF0();
    sub_1D72643BC();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1D6DB2D9C()
{
  result = qword_1EDF06618;
  if (!qword_1EDF06618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06618);
  }

  return result;
}

unint64_t sub_1D6DB2DF0()
{
  result = qword_1EC895FB8;
  if (!qword_1EC895FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895FB8);
  }

  return result;
}

unint64_t sub_1D6DB2E44()
{
  v1 = 0x6E6572646C696863;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x726564616568;
  }

  if (*v0)
  {
    v1 = 0x6E65646469487369;
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

uint64_t sub_1D6DB2EC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6DB3500(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6DB2EE8(uint64_t a1)
{
  v2 = sub_1D6DB2D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6DB2F24(uint64_t a1)
{
  v2 = sub_1D6DB2D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6DB2F60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D6DB2FE8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 9) = BYTE1(v5) & 1;
    *(a2 + 10) = BYTE2(v5) & 1;
  }

  return result;
}

uint64_t sub_1D6DB2FA4(void *a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1D6DB2B74(a1, *v1, v2 | (*(v1 + 10) << 16) | *(v1 + 8));
}

uint64_t sub_1D6DB2FE8(void *a1)
{
  sub_1D6DB3294(0, &qword_1EDF03868, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D6DB2D9C();
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D6B49204();
    v11[15] = 0;
    sub_1D6B49488(&qword_1EDF04B00, sub_1D6B494F4, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    v9 = v12;
    v11[14] = 1;
    sub_1D726423C();
    v11[13] = 2;
    sub_1D726423C();
    v11[11] = 3;
    sub_1D6DB32F8();
    sub_1D726427C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_1D6DB3294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6DB2D9C();
    v7 = a3(a1, &type metadata for SportsTaxonomyGraphResourceSectionNode.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6DB32F8()
{
  result = qword_1EDF07A88;
  if (!qword_1EDF07A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07A88);
  }

  return result;
}

uint64_t sub_1D6DB335C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6DB33A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6DB33FC()
{
  result = qword_1EC895FC0;
  if (!qword_1EC895FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895FC0);
  }

  return result;
}

unint64_t sub_1D6DB3454()
{
  result = qword_1EDF06608;
  if (!qword_1EDF06608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06608);
  }

  return result;
}

unint64_t sub_1D6DB34AC()
{
  result = qword_1EDF06610;
  if (!qword_1EDF06610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06610);
  }

  return result;
}

uint64_t sub_1D6DB3500(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65646469487369 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73D2E20 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t FeedCursorKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x657669746361;
  v3 = 0x64656C6F6F706572;
  if (v1 != 5)
  {
    v3 = 0x6465646E61707865;
  }

  v4 = 0x656546664F646E65;
  if (v1 != 3)
  {
    v4 = 0x646568636163;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1852138867;
  if (v1 != 1)
  {
    v5 = 0x6E657A6F7266;
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

uint64_t FeedCursorKind.description.getter()
{
  v1 = *v0;
  v2 = 0x657669746341;
  v3 = 0x64656C6F6F706552;
  if (v1 != 5)
  {
    v3 = 0x6465646E61707845;
  }

  v4 = 0x4620666F20646E45;
  if (v1 != 3)
  {
    v4 = 0x646568636143;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1852138835;
  if (v1 != 1)
  {
    v5 = 0x6E657A6F7246;
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

unint64_t sub_1D6DB380C()
{
  result = qword_1EDF39D40;
  if (!qword_1EDF39D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF39D40);
  }

  return result;
}

double sub_1D6DB386C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D6DB397C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x657669746361;
  v5 = 0xE800000000000000;
  v6 = 0x64656C6F6F706572;
  if (v2 != 5)
  {
    v6 = 0x6465646E61707865;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE900000000000064;
  v8 = 0x656546664F646E65;
  if (v2 != 3)
  {
    v8 = 0x646568636163;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1852138867;
  if (v2 != 1)
  {
    v10 = 0x6E657A6F7266;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

uint64_t static CoverChannelViewLayout.makeCatalogLayout(context:factories:options:)(void *a1)
{
  v2 = sub_1D725A36C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A34C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[23];
  v13 = a1[24];
  __swift_project_boxed_opaque_existential_1(a1 + 20, v12);
  (*(v13 + 48))(v12, v13);
  v14 = a1[23];
  v15 = a1[24];
  __swift_project_boxed_opaque_existential_1(a1 + 20, v14);
  (*(v15 + 56))(v14, v15);
  FeedTag.coverImageAspectRatio.getter();
  if (v16)
  {
    v17 = MEMORY[0x1E69D7340];
LABEL_5:
    v20 = (*(v8 + 104))(v11, *v17, v7);
    v22 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
    *(&v24 - 4) = v11;
    *(&v24 - 3) = v22;
    *(&v24 - 2) = a1;
    (*(v3 + 104))(v6, *MEMORY[0x1E69D7378], v2);
    sub_1D60FB214(0, &qword_1EC883CC0, MEMORY[0x1E69D73B8]);
    swift_allocObject();
    v23 = sub_1D725A4CC();
    (*(v8 + 8))(v11, v7);
    return v23;
  }

  result = FeedTag.coverImageAspectRatio.getter();
  if ((v19 & 1) == 0)
  {
    *v11 = result;
    v17 = MEMORY[0x1E69D7350];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6DB3D30(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v17[-v13];
  v21 = a1;
  (*(v10 + 104))(&v17[-v13], *MEMORY[0x1E69D74A8], v9, v12);
  v18 = a2;
  v19 = a4;
  v20 = a3;
  v15 = MEMORY[0x1E69D7150];
  sub_1D60FB214(0, &qword_1EC883CE0, MEMORY[0x1E69D7150]);
  sub_1D60FB298(&qword_1EC883CE8, &qword_1EC883CE0, v15, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1D6DB3EF8(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v74 = a3;
  v67 = a2;
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v59 - v10);
  v80 = a1;
  v70 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 0x4024000000000000;
  *v11 = v12;
  v76 = *MEMORY[0x1E69D7488];
  v75 = *(v8 + 104);
  v75(v11);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
  v15 = v14;
  v16 = sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v17 = *(v8 + 8);
  v17(v11, v7);
  v80 = a1;
  v18 = *MEMORY[0x1E69D74A8];
  v19 = v75;
  v69 = v8 + 104;
  (v75)(v11, v18, v7);
  v79 = v67;
  v68 = v16;
  v73 = v15;
  sub_1D7259A2C();
  v72 = v17;
  v17(v11, v7);
  v71 = v8 + 8;
  v20 = v70;
  v80 = v70;
  v21 = swift_allocObject();
  *(v21 + 16) = 0x4024000000000000;
  *v11 = v21;
  v65 = v7;
  (v19)(v11, v76, v7);
  sub_1D7259A9C();
  v17(v11, v7);
  v80 = v20;
  sub_1D5EF9444(0);
  v23 = v22;
  v67 = v22;
  v66 = swift_allocBox();
  v25 = v24;
  v62 = *(v23 + 48);
  v26 = sub_1D725A09C();
  v27 = swift_allocBox();
  v29 = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = a4 + 12.0;
  *v29 = v30;
  v60 = *MEMORY[0x1E69D71F0];
  v31 = *(v26 - 8);
  v32 = *(v31 + 104);
  v33 = v31 + 104;
  v32(v29);
  *v25 = v27;
  v34 = *MEMORY[0x1E69D71F8];
  v61 = v26;
  (v32)(v25, v34, v26);
  v63 = v33;
  v64 = v32;
  v35 = swift_allocObject();
  v36 = v74[23];
  v37 = v74[24];
  v38 = v74;
  __swift_project_boxed_opaque_existential_1(v74 + 20, v36);
  *(v35 + 16) = (*(v37 + 32))(v36, v37);
  v39 = v62;
  *(v25 + v62) = v35;
  (v32)(v25 + v39, v60, v26);
  *v11 = v66;
  LODWORD(v66) = *MEMORY[0x1E69D7468];
  v40 = v65;
  v41 = v75;
  v75(v11);
  v78 = v38;
  sub_1D72599EC();
  v42 = v72;
  v72(v11, v40);
  v43 = v70;
  v80 = v70;
  v44 = swift_allocObject();
  *(v44 + 16) = 0x401C000000000000;
  *v11 = v44;
  (v41)(v11, v76, v40);
  sub_1D7259A9C();
  v45 = v40;
  v42(v11, v40);
  v80 = v43;
  v46 = v67;
  v47 = swift_allocBox();
  v49 = v48;
  v50 = *(v46 + 48);
  v51 = v61;
  v52 = v64;
  (v64)(v48, *MEMORY[0x1E69D71E8], v61);
  (v52)(v49 + v50, *MEMORY[0x1E69D7208], v51);
  *v11 = v47;
  v53 = v45;
  v54 = v45;
  v55 = v75;
  (v75)(v11, v66, v54);
  v77 = v74;
  sub_1D72599EC();
  v56 = v72;
  v72(v11, v53);
  v80 = v43;
  v57 = swift_allocObject();
  *(v57 + 16) = 0x4038000000000000;
  *v11 = v57;
  (v55)(v11, v76, v53);
  sub_1D7259A9C();
  return v56(v11, v53);
}

uint64_t sub_1D6DB4628(uint64_t a1, uint64_t a2)
{
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v17 - v8);
  v17[1] = a1;
  swift_getKeyPath();
  v10 = sub_1D725A35C();
  v11 = swift_allocBox();
  v13 = v12;
  v14 = sub_1D725A34C();
  (*(*(v14 - 8) + 16))(v13, a2, v14);
  (*(*(v10 - 8) + 104))(v13, *MEMORY[0x1E69D7360], v10);
  *v9 = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7478], v5);
  v15 = MEMORY[0x1E69D6F38];
  sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
  sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v15, MEMORY[0x1E69D6F40]);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6DB48B0(uint64_t a1, uint64_t a2)
{
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v29 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 200);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    sub_1D60FB31C(0);
    sub_1D60FB390(0, &qword_1EC883D08, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v25 = *MEMORY[0x1E69D7068];
    sub_1D60FB390(0, &qword_1EC883D10, MEMORY[0x1E69D7078]);
    (*(*(v26 - 8) + 104))(v24 + v23, v25, v26);
    (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69D7080], v21);
    v27 = MEMORY[0x1E69D6F38];
    sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
    sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v27, MEMORY[0x1E69D6F40]);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    v28 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6DB4D14(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v55 = v4;
  v56 = v6;
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v41 - v8);
  v10 = sub_1D6DB52C0(a2);
  v50 = v10;
  v61 = a1;
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v52 = v9;
  *v9 = v11;
  v12 = *MEMORY[0x1E69D73E8];
  v13 = *(v6 + 104);
  v58 = v6 + 104;
  v59 = v13;
  v13(v9, v12, v5);
  sub_1D60FB31C(0);
  v54 = v14;
  sub_1D60FB390(0, &qword_1EC883D08, MEMORY[0x1E69D70D8]);
  v16 = v15;
  v17 = *(v15 - 8);
  v43 = *(v17 + 72);
  v53 = *(v17 + 80);
  v18 = (v53 + 32) & ~v53;
  v51 = v18;
  v19 = swift_allocObject();
  v46 = v19;
  *(v19 + 16) = xmmword_1D7270C10;
  v20 = v19 + v18;
  *(v19 + v18) = 0x4034000000000000;
  LODWORD(v44) = *MEMORY[0x1E69D7240];
  v21 = v44;
  v22 = sub_1D725A13C();
  v23 = *(v22 - 8);
  v42 = *(v23 + 104);
  v45 = v23 + 104;
  v42(v20, v21, v22);
  v24 = *MEMORY[0x1E69D72D8];
  v25 = sub_1D725A29C();
  v26 = *(*(v25 - 8) + 104);
  v26(v20, v24, v25);
  v27 = *MEMORY[0x1E69D6FC0];
  v28 = *(v17 + 104);
  v48 = v16;
  v28(v20, v27, v16);
  v47 = v28;
  v49 = v17 + 104;
  v29 = v42;
  v30 = v43;
  *(v20 + v43) = 0x4008000000000000;
  v29(v20 + v30, v44, v22);
  v26(v20 + v30, v24, v25);
  v28(v20 + v30, *MEMORY[0x1E69D6FD0], v16);
  v31 = MEMORY[0x1E69D6F38];
  sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
  v45 = v32;
  v44 = sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v31, MEMORY[0x1E69D6F40]);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  v50 = v50;
  v33 = v52;
  sub_1D7259A7C();

  v34 = v55;
  v35 = *(v56 + 8);
  v35(v33, v55);
  v61 = v60;
  swift_getKeyPath();
  v59(v33, *MEMORY[0x1E69D7470], v34);
  v36 = v51;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D7273AE0;
  v38 = *MEMORY[0x1E69D7070];
  sub_1D60FB390(0, &qword_1EC883D10, MEMORY[0x1E69D7078]);
  (*(*(v39 - 8) + 104))(v37 + v36, v38, v39);
  v47(v37 + v36, *MEMORY[0x1E69D7080], v48);
  sub_1D7259A7C();

  return (v35)(v33, v34);
}

uint64_t sub_1D6DB52C0(uint64_t a1)
{
  v2 = sub_1D7261B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_1EDF347F8;
  if ((*(a1 + 72) & 1) == 0)
  {
    v8 = *(a1 + 224);
    if (*(v8 + qword_1EDF347F8))
    {
      return *(v8 + *(*v8 + 136));
    }

    sub_1D5B5DA7C();
    *v6 = sub_1D726308C();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
    a1 = sub_1D7261BBC();
    v9 = *(v3 + 8);
    v3 += 8;
    v9(v6, v2);
    if (a1)
    {
      return *(v8 + *(*v8 + 136));
    }

    __break(1u);
  }

  v8 = *(a1 + 232);
  if (*(v8 + v7))
  {
    return *(v8 + *(*v8 + 136));
  }

  sub_1D5B5DA7C();
  *v6 = sub_1D726308C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
  v10 = sub_1D7261BBC();
  result = (*(v3 + 8))(v6, v2);
  if (v10)
  {
    return *(v8 + *(*v8 + 136));
  }

  __break(1u);
  return result;
}

char *sub_1D6DB547C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_onTap;
  sub_1D5BFDBB4();
  *&v4[v10] = [objc_allocWithZone(v11) init];
  v12 = OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_titleLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_dismissalButton;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_titleLabel];
  v16 = v14;
  [v16 addSubview_];
  v17 = OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_dismissalButton;
  [v16 addSubview_];
  v18 = *&v16[v17];
  v19 = *&v16[OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_onTap];
  v20 = v18;
  sub_1D725F67C();

  return v16;
}

void *sub_1D6DB5630(uint64_t a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v13, sel_hitTest_withEvent_, a1, a2, a3);
  if (!v7)
  {
    return 0;
  }

  if (v7 == v3)
  {

    goto LABEL_6;
  }

  v8 = *&v3[OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_dismissalButton];
  v9 = v7;

  if (v9 == v8)
  {
LABEL_6:
    v10 = *&v3[OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_dismissalButton];
    v11 = v10;
    return v10;
  }

  return 0;
}

void sub_1D6DB57F0()
{
  sub_1D6DB587C(&qword_1EC895FE8, &unk_1D7355654);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t sub_1D6DB587C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HiddenContentPlacardView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6DB58BC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_onTap;
  sub_1D5BFDBB4();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_dismissalButton;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  sub_1D726402C();
  __break(1u);
}

NewsFeed::BundleSubscriptionDetectionStrategy_optional __swiftcall BundleSubscriptionDetectionStrategy.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D6DB59BC(uint64_t a1)
{
  v2 = sub_1D5B7900C();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6DB5A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B7900C();
  v5 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t BundleSubscriptionDetectionStrategy.description.getter()
{
  if (*v0)
  {
    return 0x6574616C756D6953;
  }

  else
  {
    return 0x746C7561666544;
  }
}

uint64_t sub_1D6DB5AAC()
{
  if (*v0)
  {
    return 0x6574616C756D6953;
  }

  else
  {
    return 0x746C7561666544;
  }
}

unint64_t sub_1D6DB5B1C(void *a1)
{
  a1[1] = sub_1D66EF48C();
  a1[2] = sub_1D66EF7AC();
  result = sub_1D6DB5B54();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DB5B54()
{
  result = qword_1EC895FF0;
  if (!qword_1EC895FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895FF0);
  }

  return result;
}

unint64_t sub_1D6DB5BA8(uint64_t a1)
{
  result = sub_1D6DB5BD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DB5BD0()
{
  result = qword_1EC895FF8;
  if (!qword_1EC895FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895FF8);
  }

  return result;
}

uint64_t sub_1D6DB5C28@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66EE208(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void *sub_1D6DB5C74(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebEmbedDiagnosticAttachmentProvider();
  result = sub_1D725AABC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B49474(0, &qword_1EDF16F88, MEMORY[0x1E69D8258]);
    result = sub_1D725AACC();
    if (v8[3])
    {
      v4 = type metadata accessor for DiagnosticFileProvider();
      v5 = objc_allocWithZone(v4);
      *&v5[OBJC_IVAR____TtC8NewsFeed22DiagnosticFileProvider_webEmbedDiagnosticAttachmentProvider] = v3;
      sub_1D5B68374(v8, &v5[OBJC_IVAR____TtC8NewsFeed22DiagnosticFileProvider_attachmentResolver]);
      v7.receiver = v5;
      v7.super_class = v4;
      v6 = objc_msgSendSuper2(&v7, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6DB5D84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for DebugPersonalizationInspectionGroupProvider();
  result = sub_1D725AABC();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &protocol witness table for DebugPersonalizationInspectionGroupProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D6DB5DF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5F394();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B49474(0, &qword_1EDF06280, &protocol descriptor for DebugPersonalizationGroupLayoutKeyProvider);
  result = sub_1D725AACC();
  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DB61DC();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B49474(0, &unk_1EDF3FFB0, &protocol descriptor for HeadlineServiceType);
  result = sub_1D725AACC();
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  if (!*&v15[0])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B49474(0, &qword_1EDF412B0, &protocol descriptor for TagServiceType);
  result = sub_1D725AACC();
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B49474(0, &unk_1EDF3DE10, &protocol descriptor for WebEmbedDataSourceServiceType);
  result = sub_1D725AACC();
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B49474(0, &qword_1EDF25C80, &protocol descriptor for FormatServiceHistoryType);
  result = sub_1D725AACC();
  if (v10)
  {
    type metadata accessor for DebugPersonalizationInspectionGroupProvider();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    sub_1D5B63F14(&v19, v5 + 24);
    *(v5 + 64) = v4;
    type metadata accessor for DebugInspectHeadlineService();
    v6 = swift_allocObject();
    sub_1D5B63F14(&v17, v6 + 16);
    *(v5 + 72) = v6;
    v7 = v15[1];
    v8 = v15[2];
    *(v5 + 80) = v15[0];
    *(v5 + 96) = v7;
    *(v5 + 112) = v8;
    *(v5 + 128) = v16;
    sub_1D5B63F14(&v13, v5 + 136);
    sub_1D5B63F14(&v11, v5 + 176);
    sub_1D5B63F14(&v9, v5 + 216);
    return v5;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1D6DB60F4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DiagnosticFileProvider();
  v2 = sub_1D725AABC();
  if (v2)
  {
    sub_1D6DB6184();
    sub_1D725B61C();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D6DB6184()
{
  result = qword_1EC896000;
  if (!qword_1EC896000)
  {
    type metadata accessor for DiagnosticFileProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896000);
  }

  return result;
}

unint64_t sub_1D6DB61DC()
{
  result = qword_1EDF1A978;
  if (!qword_1EDF1A978)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF1A978);
  }

  return result;
}

unint64_t sub_1D6DB6240()
{
  if (*v0)
  {
    return 0xD000000000000044;
  }

  else
  {
    return 0xD000000000000037;
  }
}

void *NativeAdService.__allocating_init(contextBuilder:headlineService:adManager:adRequestManager:adRequestStore:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[19] = MEMORY[0x1E69E7CC8];
  sub_1D5B63F14(a1, (v10 + 2));
  sub_1D5B63F14(a2, (v10 + 7));
  sub_1D5B63F14(a3, (v10 + 12));
  v10[17] = a4;
  v10[18] = a5;
  return v10;
}

void *NativeAdService.init(contextBuilder:headlineService:adManager:adRequestManager:adRequestStore:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5[19] = MEMORY[0x1E69E7CC8];
  sub_1D5B63F14(a1, (v5 + 2));
  sub_1D5B63F14(a2, (v5 + 7));
  sub_1D5B63F14(a3, (v5 + 12));
  v5[17] = a4;
  v5[18] = a5;
  return v5;
}

uint64_t NativeAdService.fetchNativeAd(placementIdentifier:build:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v58 = a3;
  v59 = a4;
  v61 = a1;
  v7 = *v4;
  v53 = sub_1D726058C();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D72607CC();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DB9DC8(0, &qword_1EDF3AA40, MEMORY[0x1E69B3F80]);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v18 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v60 = &v52 - v21;
  sub_1D725958C();
  v22 = sub_1D72596AC();

  if (v22)
  {
    v23 = v61;

    return sub_1D6DB6A74(v23, a2);
  }

  else
  {
    v52 = v7;
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDFFC830;
    sub_1D5B67B28(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7273AE0;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1D5B7E2C0();
    *(v26 + 32) = v61;
    *(v26 + 40) = a2;

    v27 = sub_1D7262EDC();
    sub_1D725C30C("Attempting to fetch native ad info, placement=%{public}@", 56, 2, &dword_1D5B42000, v25, v27, v26, v52);

    v57 = v5;
    sub_1D6DB9C54(0);
    sub_1D726027C();
    (*(v8 + 104))(v11, *MEMORY[0x1E69B3F70], v53);

    v28 = sub_1D72607BC();
    MEMORY[0x1EEE9AC00](v28, v29);
    v30 = v59;
    *(&v52 - 2) = v58;
    *(&v52 - 1) = v30;
    v31 = v60;
    sub_1D72606DC();

    (*(v54 + 8))(v14, v56);
    v59 = sub_1D5B5DA7C();
    v58 = sub_1D726308C();
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = v31;
    sub_1D6DB9D48(v31, v18);
    v34 = *(v55 + 80);
    v35 = (v34 + 24) & ~v34;
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    sub_1D6DB9F3C(v18, v36 + v35);
    v37 = (v36 + ((v16 + 7 + v35) & 0xFFFFFFFFFFFFFFF8));
    v38 = v61;
    *v37 = v61;
    v37[1] = a2;
    sub_1D5B49474(0, &unk_1EDF3A9C0, MEMORY[0x1E69B41E0]);

    v39 = v58;
    sub_1D725BDAC();

    v40 = v33;
    sub_1D6DB9D48(v33, v18);
    v41 = (v34 + 16) & ~v34;
    v42 = swift_allocObject();
    sub_1D6DB9F3C(v18, v42 + v41);
    v43 = (v42 + ((v16 + 7 + v41) & 0xFFFFFFFFFFFFFFF8));
    *v43 = v38;
    v43[1] = a2;

    v44 = sub_1D725B92C();
    sub_1D726045C();
    sub_1D725BA7C();

    v45 = swift_allocObject();
    *(v45 + 16) = v38;
    *(v45 + 24) = a2;
    v46 = v38;

    v47 = sub_1D725B92C();
    sub_1D7260E3C();
    sub_1D725BA9C();

    v48 = sub_1D726308C();
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    v50[2] = v49;
    v50[3] = v46;
    v50[4] = a2;

    v51 = sub_1D725BB2C();

    sub_1D6DBA150(v40);

    return v51;
  }
}

uint64_t sub_1D6DB6A74(uint64_t a1, uint64_t a2)
{
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDFFC830;
  sub_1D5B67B28(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D5B7E2C0();
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v8 = sub_1D7262EDC();
  sub_1D725C30C("Fetching overridden native ad, placement=%{public}@", 51, 2, &dword_1D5B42000, v4, v8, v5);

  sub_1D725958C();
  sub_1D725957C();

  sub_1D6DBA55C(&qword_1EC896010, v9, type metadata accessor for NativeAdService, &protocol conformance descriptor for NativeAdService);
  sub_1D725964C();

  v11 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v11 = *v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    MEMORY[0x1EEE9AC00](v20, v10);
    sub_1D5B5D6A0();
    sub_1D725BDCC();

    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;

    v13 = sub_1D725B92C();
    sub_1D7260E3C();
    v14 = sub_1D725BAAC();

    return v14;
  }

  else
  {

    v16 = sub_1D7262EBC();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7273AE0;
    *(v17 + 56) = v6;
    *(v17 + 64) = v7;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;

    sub_1D725C30C("Fetching native ad headline failed, overridden ad has empty article identifier, placementID=%{public}@", 102, 2, &dword_1D5B42000, v4, v16, v17);

    sub_1D6DBA298();
    swift_allocError();
    *v18 = 0;
    sub_1D6DBA4F8(0, &qword_1EDF3B9B8, MEMORY[0x1E69B4428], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BAFC();
  }
}

double sub_1D6DB6E1C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DB9C54(0);
  sub_1D726027C();
  sub_1D726067C();
  sub_1D726073C();
  sub_1D72607CC();
  sub_1D6DBA55C(&qword_1EDF43968, 255, MEMORY[0x1E69B3FF0], MEMORY[0x1E69B3FE8]);
  sub_1D72609DC();

  return result;
}

uint64_t sub_1D6DB6F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v35 = a3;
  v6 = MEMORY[0x1E69B4438];
  sub_1D6DBA2EC(0, &qword_1EDF3A900, &qword_1EDF3A908, MEMORY[0x1E69B4438]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v32 - v9;
  sub_1D6DB9DC8(0, &qword_1EDF3A908, v6);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v32 - v15;
  sub_1D6DB9DC8(0, &qword_1EDF3AA40, MEMORY[0x1E69B3F80]);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v32 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v24 = sub_1D725AA6C();
    sub_1D6DBA55C(&unk_1EC896020, 255, MEMORY[0x1E69D64B0], MEMORY[0x1E69D64B8]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E69D64A0], v24);
    sub_1D5B67B28(0, &unk_1EDF3B9C8, &unk_1EDF3A9C0, MEMORY[0x1E69B41E0], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BAFC();
  }

  v22 = Strong;
  sub_1D6DB9D48(a2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 56))(v10, 1, 1, v12);
    sub_1D7260CDC();
    sub_1D6DBA344(v10, &qword_1EDF3A900, &qword_1EDF3A908, MEMORY[0x1E69B4438], sub_1D6DBA2EC);
    sub_1D5B67B28(0, &unk_1EDF3B9C8, &unk_1EDF3A9C0, MEMORY[0x1E69B41E0], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v23 = sub_1D725BAFC();
  }

  else
  {
    sub_1D6DB9E90(0);

    (*(v13 + 32))(v16, v20, v12);
    v33 = v4;
    v32[1] = __swift_project_boxed_opaque_existential_1((v22 + 96), *(v22 + 120));
    sub_1D6DB9C54(0);
    sub_1D726027C();
    sub_1D726067C();
    v27 = sub_1D726073C();
    sub_1D72607CC();
    v34 = v12;
    sub_1D6DBA55C(&qword_1EDF43968, 255, MEMORY[0x1E69B3FF0], MEMORY[0x1E69B3FE8]);
    v28 = v33;
    sub_1D726046C();
    if (v28)
    {

      return (*(v13 + 8))(v16, v34);
    }

    v29 = v36[0];
    v30 = MEMORY[0x1E69B4040];
    v37 = v27;
    v38 = MEMORY[0x1E69B4040];
    swift_beginAccess();
    v31 = v39;

    sub_1D6D61E0C(v36, v35, v31);
    swift_endAccess();
    v37 = v27;
    v38 = v30;
    v36[0] = v29;
    sub_1D5B67B28(0, &unk_1EDF3B9C8, &unk_1EDF3A9C0, MEMORY[0x1E69B41E0], MEMORY[0x1E69D6B18]);
    swift_allocObject();

    v23 = sub_1D725BB1C();

    (*(v13 + 8))(v16, v34);
  }

  return v23;
}

uint64_t sub_1D6DB7514(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D6DB9DC8(0, &qword_1EDF3A908, MEMORY[0x1E69B4438]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - v10;
  sub_1D6DB9DC8(0, &qword_1EDF3AA40, MEMORY[0x1E69B3F80]);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v18 - v14;
  sub_1D6DB9D48(a2, &v18 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D6DBA4F8(0, &qword_1EC896018, MEMORY[0x1E69B3E58], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BAFC();
  }

  else
  {
    sub_1D6DB9E90(0);
    (*(v8 + 32))(v11, v15, v7);
    sub_1D7260D0C();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_1D7260A2C();

    (*(v8 + 8))(v11, v7);
    return v17;
  }
}

uint64_t sub_1D6DB777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v62 = a3;
  v64 = a2;
  v5 = sub_1D72603DC();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7260E3C();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DBA2EC(0, &qword_1EDF3AA70, &qword_1EDF3AA78, MEMORY[0x1E69B3F28]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v53 - v13;
  sub_1D6DBA2EC(0, &qword_1EDF3A900, &qword_1EDF3A908, MEMORY[0x1E69B4438]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v56 = &v53 - v17;
  v61 = sub_1D72603CC();
  v57 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D726044C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D726045C();
  v27 = *(v26 - 8);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v31, a1, v26, v29);
  v32 = (*(v27 + 88))(v31, v26);
  if (v32 == *MEMORY[0x1E69B3E50])
  {
    (*(v27 + 96))(v31, v26);
    (*(v22 + 32))(v25, v31, v21);
    v33 = sub_1D72603AC();
    a1 = sub_1D6DB8038(v62, v63, v25, v33);

    (*(v22 + 8))(v25, v21);
  }

  else if (v32 == *MEMORY[0x1E69B3E40])
  {
    (*(v27 + 96))(v31, v26);
    v34 = v57;
    (*(v57 + 32))(v20, v31, v61);
    v55 = sub_1D72603AC();
    v35 = sub_1D7260D4C();
    sub_1D6DBA55C(&qword_1EDF3A948, 255, MEMORY[0x1E69B43C8], MEMORY[0x1E69B43D0]);
    v54 = swift_allocError();
    v37 = v36;
    sub_1D72603BC();
    *v37 = sub_1D725C0CC();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69B43C0], v35);
    v38 = *MEMORY[0x1E69B3F20];
    v39 = MEMORY[0x1E69B3F28];
    sub_1D6DB9DC8(0, &qword_1EDF3AA78, MEMORY[0x1E69B3F28]);
    v41 = v40;
    v42 = *(v40 - 8);
    (*(v42 + 104))(v14, v38, v40);
    (*(v42 + 56))(v14, 0, 1, v41);
    v43 = v56;
    sub_1D72604FC();
    sub_1D6DBA344(v14, &qword_1EDF3AA70, &qword_1EDF3AA78, v39, sub_1D6DBA2EC);
    v44 = v54;
    sub_1D7260CDC();

    sub_1D6DBA344(v43, &qword_1EDF3A900, &qword_1EDF3A908, MEMORY[0x1E69B4438], sub_1D6DBA2EC);

    v45 = v60;
    v46 = v61;
    (*(v34 + 16))(v60, v20, v61);
    (*(v58 + 104))(v45, *MEMORY[0x1E69B4418], v59);
    sub_1D6DBA4F8(0, &qword_1EDF3B9B8, MEMORY[0x1E69B4428], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    a1 = sub_1D725BB1C();
    (*(v34 + 8))(v20, v46);
  }

  else if (v32 == *MEMORY[0x1E69B3E48])
  {
    (*(v27 + 96))(v31, v26);
    v48 = v53;
    v47 = v54;
    v49 = v55;
    (*(v54 + 32))(v53, v31, v55);
    v50 = v60;
    (*(v47 + 16))(v60, v48, v49);
    (*(v58 + 104))(v50, *MEMORY[0x1E69B4420], v59);
    sub_1D6DBA4F8(0, &qword_1EDF3B9B8, MEMORY[0x1E69B4428], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    a1 = sub_1D725BB1C();
    (*(v47 + 8))(v48, v49);
  }

  else
  {
    sub_1D6DBA298();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();
    (*(v27 + 8))(v31, v26);
  }

  return a1;
}

uint64_t sub_1D6DB8038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  v45 = a4;
  v46 = v9;
  v10 = sub_1D726044C();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v48 = v12;
  v44 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDFFC830;
  sub_1D5B67B28(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7270C10;
  v15 = a3;
  v16 = sub_1D726043C();
  v18 = v17;
  v19 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1D5B7E2C0();
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  *(v14 + 96) = v19;
  *(v14 + 104) = v20;
  *(v14 + 64) = v20;
  *(v14 + 72) = a1;
  *(v14 + 80) = a2;

  v21 = sub_1D7262EDC();
  sub_1D725C30C("Attempting to fetch native ad headline, articleID=%{public}@, placementID=%{public}@", 84, 2, &dword_1D5B42000, v13, v21, v14);

  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = v15;
  v42 = v15;
  v39[-4] = v15;
  v39[-3] = a1;
  v39[-2] = a2;
  v39[-1] = v5;
  sub_1D5B5D6A0();
  v39[2] = sub_1D725BDCC();
  v47 = v5;
  v26 = v43;
  v25 = v44;
  v41 = *(v43 + 16);
  v41(v44, v24, v10);
  v27 = v10;
  v39[0] = v10;
  v28 = *(v26 + 80);
  v29 = (v28 + 32) & ~v28;
  v30 = (v48 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *(v31 + 24) = a2;
  v40 = a1;
  v43 = *(v26 + 32);
  (v43)(v31 + v29, v25, v27);
  v32 = v45;
  *(v31 + v30) = v45;

  v33 = sub_1D725B92C();
  sub_1D7260E3C();
  v39[1] = sub_1D725BA9C();

  v34 = v39[0];
  v41(v25, v42, v39[0]);
  v35 = swift_allocObject();
  v35[2] = v40;
  v35[3] = a2;
  v35[4] = v32;
  (v43)(v35 + ((v28 + 40) & ~v28), v25, v34);

  v36 = sub_1D725B92C();
  v37 = sub_1D725BADC();

  return v37;
}

double sub_1D6DB8450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    swift_beginAccess();

    sub_1D6D61E0C(v6, a2, a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1D6DB84F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D726043C();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = a4[10];
    v12 = a4[11];
    __swift_project_boxed_opaque_existential_1(a4 + 7, v11);
    v13 = sub_1D726043C();
    v15 = HeadlineServiceType.headline(for:purpose:)(v13, v14, *MEMORY[0x1E69B5060], v11, v12);

    return v15;
  }

  else
  {
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDFFC830;
    v18 = sub_1D7262EBC();
    sub_1D5B67B28(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7273AE0;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D5B7E2C0();
    *(v19 + 32) = a2;
    *(v19 + 40) = a3;

    sub_1D725C30C("Fetching native ad headline failed, native ad info has empty article identifier, placementID=%{public}@", 103, 2, &dword_1D5B42000, v17, v18, v19);

    sub_1D6DBA298();
    swift_allocError();
    *v20 = 0;
    sub_1D6DBA4F8(0, &unk_1EDF3B900, sub_1D5B5D6A0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BAFC();
  }
}

id sub_1D6DB8710(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v90 = a6;
  v92 = a5;
  v83 = a2;
  v11 = sub_1D726044C();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v87 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7260E3C();
  v88 = *(v14 - 8);
  v89 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DBA4F8(0, &qword_1EDF3A940, MEMORY[0x1E69B43D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v81 = v77 - v20;
  sub_1D6DBA2EC(0, &qword_1EDF3AA70, &qword_1EDF3AA78, MEMORY[0x1E69B3F28]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = v77 - v23;
  v25 = MEMORY[0x1E69B4438];
  sub_1D6DBA2EC(0, &qword_1EDF3A900, &qword_1EDF3A908, MEMORY[0x1E69B4438]);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = v77 - v28;
  sub_1D6DB9DC8(0, &qword_1EDF3A908, v25);
  v31 = v30;
  v84 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v80 = v77 - v33;
  v34 = *a1;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  v36 = qword_1EDF1BB68;
  if (v35)
  {
    v37 = v35;
    v77[1] = v34;
    v78 = v17;
    v91 = a4;
    swift_unknownObjectRetain();
    if (v36 != -1)
    {
      swift_once();
    }

    v82 = v31;
    v79 = v7;
    v38 = qword_1EDFFC830;
    sub_1D5B67B28(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D7270C10;
    result = [v37 articleID];
    if (result)
    {
      v41 = result;
      v42 = sub_1D726207C();
      v44 = v43;

      v45 = MEMORY[0x1E69E6158];
      *(v39 + 56) = MEMORY[0x1E69E6158];
      v46 = sub_1D5B7E2C0();
      *(v39 + 32) = v42;
      *(v39 + 40) = v44;
      *(v39 + 96) = v45;
      *(v39 + 104) = v46;
      *(v39 + 64) = v46;
      *(v39 + 72) = a3;
      *(v39 + 80) = v91;

      v47 = sub_1D7262EDC();
      sub_1D725C30C("Fetched native ad headline, articleID=%{public}@, placementID=%{public}@", 72, 2, &dword_1D5B42000, v38, v47, v39);

      [v37 setDisplayAsNativeAd_];
      [v37 setSponsored_];
      sub_1D726041C();
      if (v48)
      {
        v49 = sub_1D726203C();
      }

      else
      {
        v49 = 0;
      }

      [v37 setSponsoredBy_];

      sub_1D726040C();
      v56 = sub_1D726203C();

      [v37 setNativeAdCampaignData_];

      v57 = sub_1D72603FC();
      if (v58)
      {
        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v57 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {
          v60 = sub_1D726203C();

          [v37 setTitle_];
        }

        else
        {
        }
      }

      v61 = *MEMORY[0x1E69B3F20];
      v62 = MEMORY[0x1E69B3F28];
      sub_1D6DB9DC8(0, &qword_1EDF3AA78, MEMORY[0x1E69B3F28]);
      v64 = v63;
      v65 = *(v63 - 8);
      (*(v65 + 104))(v24, v61, v63);
      (*(v65 + 56))(v24, 0, 1, v64);
      sub_1D72604FC();
      sub_1D6DBA344(v24, &qword_1EDF3AA70, &qword_1EDF3AA78, v62, sub_1D6DBA2EC);
      v66 = v84;
      v67 = v82;
      if ((*(v84 + 48))(v29, 1, v82) == 1)
      {
        sub_1D6DBA344(v29, &qword_1EDF3A900, &qword_1EDF3A908, MEMORY[0x1E69B4438], sub_1D6DBA2EC);
        v68 = v78;
        v69 = v92;
      }

      else
      {
        v70 = *(v66 + 32);
        v83 = v37;
        v71 = v80;
        v70(v80, v29, v67);
        v69 = v92;
        sub_1D72603EC();
        v72 = sub_1D7260D6C();
        v73 = v81;
        (*(*(v72 - 8) + 56))(v81, 1, 1, v72);
        sub_1D7260CFC();

        sub_1D6DBA344(v73, &qword_1EDF3A940, MEMORY[0x1E69B43D8], MEMORY[0x1E69E6720], sub_1D6DBA4F8);
        (*(v66 + 8))(v71, v82);
        v68 = v78;
      }

      (*(v85 + 16))(v87, v69, v86);
      swift_unknownObjectRetain();

      sub_1D726070C();
      v74 = *MEMORY[0x1E69B43F8];
      v75 = sub_1D7260E2C();
      (*(*(v75 - 8) + 104))(v68, v74, v75);
      (*(v88 + 104))(v68, *MEMORY[0x1E69B4410], v89);
      sub_1D6DBA4F8(0, &qword_1EDF3B9B8, MEMORY[0x1E69B4428], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v76 = sub_1D725BB1C();
      swift_unknownObjectRelease();
      return v76;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v50 = qword_1EDFFC830;
    v51 = sub_1D7262EBC();
    sub_1D5B67B28(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1D7270C10;
    v53 = MEMORY[0x1E69E6158];
    *(v52 + 56) = MEMORY[0x1E69E6158];
    v54 = sub_1D5B7E2C0();
    *(v52 + 32) = 0xD000000000000037;
    *(v52 + 40) = 0x80000001D73F2B30;
    *(v52 + 96) = v53;
    *(v52 + 104) = v54;
    *(v52 + 64) = v54;
    *(v52 + 72) = a3;
    *(v52 + 80) = a4;

    sub_1D725C30C("Fetching native ad headline failed, error=%{public}, placementID=%{public}@@", 76, 2, &dword_1D5B42000, v50, v51, v52);

    sub_1D6DBA298();
    swift_allocError();
    *v55 = 0;
    sub_1D6DBA4F8(0, &qword_1EDF3B9B8, MEMORY[0x1E69B4428], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BAFC();
  }

  return result;
}