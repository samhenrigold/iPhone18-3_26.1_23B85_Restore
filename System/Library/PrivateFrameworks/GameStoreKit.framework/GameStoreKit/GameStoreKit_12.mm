uint64_t sub_24E72B6C8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24E730248(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_24E72B718()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24E72B780(uint64_t a1)
{
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t sub_24E72B7D0()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24E72B834(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24F92CE08(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24F92CE08();
    }
  }

  return result;
}

unint64_t sub_24E72B8DC()
{
  result = qword_27F21A688;
  if (!qword_27F21A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A688);
  }

  return result;
}

uint64_t sub_24E72B930(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0x4D747865746E6F63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x76417265646E6573;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x656C746974;
      break;
    case 7:
      result = 0x736C6C65737075;
      break;
    case 8:
      v3 = 0x65726F6E6769;
      goto LABEL_15;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
    case 13:
      result = 0xD000000000000016;
      break;
    case 11:
      v3 = 0x747065636361;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6341000000000000;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E72BACC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7D0, &qword_24F94EA38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E72FFA8();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v9 = type metadata accessor for IncomingFriendRequest(0);
    LOBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v14) = 3;
    sub_24F929608();
    sub_24E731238(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    LOBYTE(v14) = 4;
    type metadata accessor for PlayerAvatar(0);
    sub_24E731238(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CD48();
    LOBYTE(v14) = 5;
    sub_24F92CD48();
    LOBYTE(v14) = 6;
    sub_24F92CD08();
    v14 = *(v3 + *(v9 + 44));
    v13 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7B8, &qword_24F94EA30);
    sub_24E73017C(&qword_27F21A7D8, sub_24E7301F4, MEMORY[0x277D83948]);
    sub_24F92CD48();
    LOBYTE(v14) = 8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
    sub_24E602068(&qword_27F218310, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AA8]);
    v12 = v10;
    sub_24F92CD48();
    LOBYTE(v14) = 9;
    sub_24F92CD08();
    LOBYTE(v14) = 10;
    sub_24F92CD08();
    LOBYTE(v14) = 11;
    sub_24F92CD48();
    LOBYTE(v14) = 12;
    sub_24F92CD08();
    LOBYTE(v14) = 13;
    sub_24F92CD08();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E72C090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v66 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v66);
  v64 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7A8, &unk_24F94EA20);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v13 = &v60 - v12;
  v14 = type metadata accessor for IncomingFriendRequest(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 40) = 0u;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v75 = v16 + 40;
  sub_24E61DA68(&v76, (v16 + 40), qword_27F21B590, &unk_24F93BE30);
  v17 = *(v14 + 24);
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v74 = v17;
  v19(&v16[v17], 1, 1, v18);
  v71 = v14;
  v20 = *(v14 + 28);
  v21 = sub_24F929608();
  v22 = *(*(v21 - 8) + 56);
  v73 = v20;
  v22(&v16[v20], 1, 1, v21);
  v23 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24E72FFA8();
  v68 = v13;
  v24 = v72;
  sub_24F92D108();
  if (v24)
  {
    v72 = v24;
    v25 = v71;
    __swift_destroy_boxed_opaque_existential_1(v70);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v68) = 0;
    LODWORD(v69) = 0;
  }

  else
  {
    v61 = v8;
    v62 = v9;
    v72 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v79 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v32 = v77;
    *v16 = v76;
    *(v16 + 1) = v32;
    *(v16 + 4) = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v79 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v33 = v71;
    sub_24E61DA68(&v76, v75, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v76) = 2;
    sub_24E65CAA0();
    v34 = v72;
    sub_24F92CC68();
    sub_24E61DA68(v34, &v16[v74], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v76) = 3;
    sub_24E731238(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v35 = v61;
    sub_24F92CC18();
    sub_24E61DA68(v35, &v16[v73], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v76) = 4;
    sub_24E731238(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    v36 = v65;
    sub_24F92CC68();
    sub_24E72FFFC(v36, &v16[v33[8]]);
    LOBYTE(v76) = 5;
    v37 = v64;
    sub_24F92CC68();
    sub_24E72FFFC(v37, &v16[v33[9]]);
    LOBYTE(v76) = 6;
    v38 = sub_24F92CC28();
    v39 = &v16[v33[10]];
    *v39 = v38;
    v39[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7B8, &qword_24F94EA30);
    v79 = 7;
    sub_24E73017C(&qword_27F21A7C0, sub_24E730060, MEMORY[0x277D83978]);
    sub_24F92CC68();
    *&v16[v33[11]] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
    v79 = 8;
    sub_24E602068(&qword_27F243830, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AB0]);
    sub_24F92CC68();
    v72 = 0;
    v41 = &v16[v33[12]];
    v42 = v77;
    *v41 = v76;
    *(v41 + 1) = v42;
    *(v41 + 4) = v78;
    LOBYTE(v76) = 9;
    v43 = v72;
    v44 = sub_24F92CC28();
    v72 = v43;
    if (!v43)
    {
      v46 = &v16[v71[13]];
      *v46 = v44;
      v46[1] = v45;
      LOBYTE(v76) = 10;
      v47 = sub_24F92CC28();
      v72 = 0;
      v48 = &v16[v71[14]];
      *v48 = v47;
      v48[1] = v49;
      v79 = 11;
      sub_24F92CC68();
      v72 = 0;
      v50 = &v16[v71[15]];
      v51 = v77;
      *v50 = v76;
      *(v50 + 1) = v51;
      *(v50 + 4) = v78;
      LOBYTE(v76) = 12;
      v52 = sub_24F92CC28();
      v72 = 0;
      v53 = &v16[v71[16]];
      *v53 = v52;
      v53[1] = v54;
      LOBYTE(v76) = 13;
      v55 = sub_24F92CC28();
      v72 = 0;
      v56 = v55;
      v58 = v57;
      (*(v67 + 8))(v68, v69);
      v59 = &v16[v71[17]];
      *v59 = v56;
      *(v59 + 1) = v58;
      sub_24E7300B4(v16, v63, type metadata accessor for IncomingFriendRequest);
      __swift_destroy_boxed_opaque_existential_1(v70);
      return sub_24E73011C(v16, type metadata accessor for IncomingFriendRequest);
    }

    (*(v67 + 8))(v68, v69);
    LODWORD(v68) = 0;
    LODWORD(v69) = 0;
    v26 = 1;
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v25 = v71;
    __swift_destroy_boxed_opaque_existential_1(v70);
    sub_24E601704(v16, &qword_27F213F18, &qword_24F93BE20);
  }

  sub_24E601704(v75, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(&v16[v74], &qword_27F215440, &unk_24F942BD0);
  result = sub_24E601704(&v16[v73], &qword_27F213E68, &unk_24F93BC80);
  if (v26)
  {
    result = sub_24E73011C(&v16[v25[8]], type metadata accessor for PlayerAvatar);
    if (!v27)
    {
LABEL_6:
      if (!v28)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  result = sub_24E73011C(&v16[v25[9]], type metadata accessor for PlayerAvatar);
  if (!v28)
  {
LABEL_7:
    if (!v29)
    {
      goto LABEL_8;
    }

LABEL_15:

    if (!v30)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_14:

  if (v29)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (!v30)
  {
    goto LABEL_9;
  }

LABEL_16:
  result = sub_24E601704(&v16[v25[12]], &qword_27F2169E8, &qword_24F943600);
LABEL_9:
  if (v68)
  {
    result = sub_24E601704(&v16[v25[15]], &qword_27F2169E8, &qword_24F943600);
    if (!v69)
    {
      return result;
    }
  }

  else if (!v69)
  {
    return result;
  }
}

uint64_t sub_24E72CE38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E730B90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E72CE6C(uint64_t a1)
{
  v2 = sub_24E72FFA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E72CEA8(uint64_t a1)
{
  v2 = sub_24E72FFA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E72CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24E72D014()
{
  result = qword_27F21A690;
  if (!qword_27F21A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A690);
  }

  return result;
}

uint64_t sub_24E72D068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6B0, &qword_24F94E8E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6B8, &qword_24F94E8E8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  sub_24E72D2A8(v2, a1);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v11, &qword_27F21A6B0, &qword_24F94E8E0);
  v12 = &v11[*(v9 + 44)];
  v13 = v20[5];
  *(v12 + 4) = v20[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v20[6];
  v14 = v20[1];
  *v12 = v20[0];
  *(v12 + 1) = v14;
  v15 = v20[3];
  *(v12 + 2) = v20[2];
  *(v12 + 3) = v15;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6C0, &qword_24F94E8F0) + 36);
  v17 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v18 = type metadata accessor for GradientBackground(0);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = xmmword_24F93CFD0;
  *(v16 + 32) = 0x4030000000000000;
  *(v16 + 40) = 257;
  return sub_24E6009C8(v11, a2, &qword_27F21A6B8, &qword_24F94E8E8);
}

uint64_t sub_24E72D2A8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6C8, &qword_24F94E928);
  MEMORY[0x28223BE20](v4);
  v38 = (&v33 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6D0, &qword_24F94E930);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6D8, &qword_24F94E938);
  MEMORY[0x28223BE20](v9);
  v11 = (&v33 - v10);
  v12 = sub_24F924848();
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a1 + 16);
  v17 = a1[1];
  v41 = v17;
  if (v42 == 1)
  {
    v18 = *&v17;
  }

  else
  {
    v34 = v14;
    v35 = v13;

    sub_24F92BDC8();
    v36 = a1;
    v19 = sub_24F9257A8();
    v37 = v6;
    v20 = v19;
    a1 = v36;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v41, &qword_27F218208, &qword_24F94E940);
    (*(v34 + 8))(v16, v35);
    v18 = *&v40;
  }

  if (sub_24E6B00B4(v18) >= 4u)
  {
    *v11 = sub_24F924998();
    v11[1] = 0;
    *(v11 + 16) = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6E0, &qword_24F94E948);
    sub_24E72D7B4(a1, a2, v11 + *(v26 + 44));
    v40 = *(a1 + 3);
    v27 = swift_allocObject();
    v28 = *(a1 + 1);
    *(v27 + 16) = *a1;
    *(v27 + 32) = v28;
    *(v27 + 48) = a1[4];
    v29 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6E8, &unk_24F94E950) + 36));
    *v29 = sub_24E72DE30;
    v29[1] = 0;
    v29[2] = sub_24E72FD1C;
    v29[3] = v27;
    sub_24E60169C(&v41, v39, &qword_27F218208, &qword_24F94E940);
    sub_24E60169C(&v40, v39, &qword_27F21A6F0, &unk_24F95ACB0);
    v30 = sub_24F925808();
    v31 = v11 + *(v9 + 36);
    *v31 = v30;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    v31[40] = 1;
    v24 = &qword_27F21A6D8;
    v25 = &qword_24F94E938;
    sub_24E60169C(v11, v8, &qword_27F21A6D8, &qword_24F94E938);
  }

  else
  {
    v21 = *a1;
    v22 = sub_24F924C88();
    v11 = v38;
    *v38 = v22;
    v11[1] = v21;
    *(v11 + 16) = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A730, &qword_24F94E970);
    sub_24E72DE5C(a1, a2, v11 + *(v23 + 44));
    v24 = &qword_27F21A6C8;
    v25 = &qword_24F94E928;
    sub_24E60169C(v11, v8, &qword_27F21A6C8, &qword_24F94E928);
  }

  swift_storeEnumTagMultiPayload();
  sub_24E72FD74();
  sub_24E602068(&qword_27F21A728, &qword_27F21A6C8, &qword_24F94E928, MEMORY[0x277CE1198]);
  sub_24F924E28();
  return sub_24E601704(v11, v24, v25);
}

uint64_t sub_24E72D7B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A738, &qword_24F94E978);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A740, &qword_24F94E980);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v38[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A790, &qword_24F94EA08);
  MEMORY[0x28223BE20](v12);
  v42 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v38[-v15];
  MEMORY[0x28223BE20](v17);
  v39 = &v38[-v18];
  v19 = *a1;
  *v7 = sub_24F924C88();
  *(v7 + 1) = v19;
  v7[16] = 0;
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A748, &qword_24F94E988) + 44)];
  v40 = a2;
  sub_24E72E1FC(a2, v20, 1.4);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v11, &qword_27F21A738, &qword_24F94E978);
  v21 = &v11[*(v9 + 44)];
  v22 = v54[26];
  v21[4] = v54[25];
  v21[5] = v22;
  v21[6] = v54[27];
  v23 = v54[22];
  *v21 = v54[21];
  v21[1] = v23;
  v24 = v54[24];
  v21[2] = v54[23];
  v21[3] = v24;
  v41 = a1;
  v54[0] = *(a1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F38();
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v11, v16, &qword_27F21A740, &qword_24F94E980);
  v25 = &v16[*(v12 + 36)];
  v26 = v54[33];
  v25[4] = v54[32];
  v25[5] = v26;
  v25[6] = v54[34];
  v27 = v54[29];
  *v25 = v54[28];
  v25[1] = v27;
  v28 = v54[31];
  v25[2] = v54[30];
  v25[3] = v28;
  v29 = v16;
  v30 = v39;
  sub_24E6009C8(v29, v39, &qword_27F21A790, &qword_24F94EA08);
  *&v49 = sub_24F924C98();
  *(&v49 + 1) = v19;
  LOBYTE(v50) = 0;
  v31 = type metadata accessor for IncomingFriendRequest(0);
  v32 = v40;
  v33 = *(v40 + *(v31 + 44));

  v46[0] = sub_24F9249A8();
  v46[1] = 0;
  v47 = 1;
  sub_24E72E97C(v32, v48);
  sub_24E60169C(v46, v45, &qword_27F21A750, &qword_24F94E990);
  *(&v50 + 1) = v33;
  sub_24E60169C(v45, v51, &qword_27F21A750, &qword_24F94E990);

  sub_24E601704(v46, &qword_27F21A750, &qword_24F94E990);
  sub_24E601704(v45, &qword_27F21A750, &qword_24F94E990);

  v54[0] = *(v41 + 3);
  sub_24F926F38();
  sub_24F927618();
  sub_24F9242E8();
  v53[10] = v51[8];
  v53[11] = v51[9];
  v53[12] = v51[10];
  LOBYTE(v53[13]) = v52;
  v53[6] = v51[4];
  v53[7] = v51[5];
  v53[8] = v51[6];
  v53[9] = v51[7];
  v53[2] = v51[0];
  v53[3] = v51[1];
  v53[4] = v51[2];
  v53[5] = v51[3];
  v53[0] = v49;
  v53[1] = v50;
  memcpy(v54, v53, 0x148uLL);
  v34 = v42;
  sub_24E60169C(v30, v42, &qword_27F21A790, &qword_24F94EA08);
  sub_24E60169C(v54, v44, &qword_27F21A798, &qword_24F94EA10);
  v35 = v43;
  sub_24E60169C(v34, v43, &qword_27F21A790, &qword_24F94EA08);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7A0, &qword_24F94EA18);
  sub_24E60169C(v44, v35 + *(v36 + 48), &qword_27F21A798, &qword_24F94EA10);
  sub_24E601704(v54, &qword_27F21A798, &qword_24F94EA10);
  sub_24E601704(v30, &qword_27F21A790, &qword_24F94EA08);
  sub_24E601704(v44, &qword_27F21A798, &qword_24F94EA10);
  return sub_24E601704(v34, &qword_27F21A790, &qword_24F94EA08);
}

uint64_t sub_24E72DE5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A738, &qword_24F94E978);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29[-v6 - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A740, &qword_24F94E980);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v12);
  v14 = &v29[-v13 - 8];
  MEMORY[0x28223BE20](v15);
  v17 = &v29[-v16 - 8];
  v18 = *a1;
  *v7 = sub_24F924C88();
  *(v7 + 1) = v18;
  v7[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A748, &qword_24F94E988);
  sub_24E72E1FC(a2, &v7[*(v19 + 44)], 1.0);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v14, &qword_27F21A738, &qword_24F94E978);
  v20 = &v14[*(v9 + 44)];
  v21 = v42;
  v20[4] = v41;
  v20[5] = v21;
  v20[6] = v43;
  v22 = v38;
  *v20 = *&v37[184];
  v20[1] = v22;
  v23 = v40;
  v20[2] = v39;
  v20[3] = v23;
  sub_24E6009C8(v14, v17, &qword_27F21A740, &qword_24F94E980);
  v34[0] = sub_24F924C88();
  v34[1] = v18;
  v35 = 0;
  v24 = *(a2 + *(type metadata accessor for IncomingFriendRequest(0) + 44));

  v31[0] = sub_24F9249A8();
  v31[1] = 0;
  v32 = 1;
  sub_24E72E97C(a2, v33);
  sub_24E60169C(v31, v30, &qword_27F21A750, &qword_24F94E990);
  v36 = v24;
  sub_24E60169C(v30, v37, &qword_27F21A750, &qword_24F94E990);

  sub_24E601704(v31, &qword_27F21A750, &qword_24F94E990);
  sub_24E601704(v30, &qword_27F21A750, &qword_24F94E990);

  sub_24E60169C(v17, v11, &qword_27F21A740, &qword_24F94E980);
  sub_24E60169C(v34, v29, &qword_27F21A758, &qword_24F94E998);
  v25 = v28;
  sub_24E60169C(v11, v28, &qword_27F21A740, &qword_24F94E980);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A760, &qword_24F94E9A0);
  sub_24E60169C(v29, v25 + *(v26 + 48), &qword_27F21A758, &qword_24F94E998);
  sub_24E601704(v34, &qword_27F21A758, &qword_24F94E998);
  sub_24E601704(v17, &qword_27F21A740, &qword_24F94E980);
  sub_24E601704(v29, &qword_27F21A758, &qword_24F94E998);
  return sub_24E601704(v11, &qword_27F21A740, &qword_24F94E980);
}

uint64_t sub_24E72E1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a4@<D1>)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110, &qword_24F93F700) - 8;
  MEMORY[0x28223BE20](v54);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A768, &qword_24F94E9A8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v52 - v13);
  *v14 = sub_24F927618();
  v14[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A770, &qword_24F94E9B0);
  v17.n128_f64[0] = a4;
  sub_24E72E620(a1, v14 + *(v16 + 44), v17);
  v18 = sub_24F925818();
  v19 = v14 + *(v10 + 44);
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = (a1 + *(type metadata accessor for IncomingFriendRequest(0) + 40));
  v21 = v20[1];
  v57 = *v20;
  v58 = v21;
  sub_24E600AEC();

  v22 = sub_24F925E18();
  v24 = v23;
  v26 = v25;
  sub_24F925998();
  v27 = sub_24F925C98();
  v29 = v28;
  v31 = v30;

  sub_24E600B40(v22, v24, v26 & 1);

  LODWORD(v57) = sub_24F925198();
  v32 = sub_24F925C58();
  v34 = v33;
  v36 = v35;
  sub_24E600B40(v27, v29, v31 & 1);

  sub_24E72FF4C();
  v37 = sub_24F925C58();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_24E600B40(v32, v34, v36 & 1);

  v57 = v37;
  v58 = v39;
  LOBYTE(v34) = v41 & 1;
  v59 = v41 & 1;
  v60 = v43;
  v44 = v52;
  sub_24F9268B8();
  sub_24E600B40(v37, v39, v34);

  KeyPath = swift_getKeyPath();
  v46 = v53;
  v47 = v44 + *(v54 + 44);
  *v47 = KeyPath;
  *(v47 + 8) = 1;
  sub_24E60169C(v14, v46, &qword_27F21A768, &qword_24F94E9A8);
  v48 = v55;
  sub_24E60169C(v44, v55, &qword_27F215110, &qword_24F93F700);
  v49 = v56;
  sub_24E60169C(v46, v56, &qword_27F21A768, &qword_24F94E9A8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A780, &qword_24F94E9E8);
  sub_24E60169C(v48, v49 + *(v50 + 48), &qword_27F215110, &qword_24F93F700);
  sub_24E601704(v44, &qword_27F215110, &qword_24F93F700);
  sub_24E601704(v14, &qword_27F21A768, &qword_24F94E9A8);
  sub_24E601704(v48, &qword_27F215110, &qword_24F93F700);
  return sub_24E601704(v46, &qword_27F21A768, &qword_24F94E9A8);
}

uint64_t sub_24E72E620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a4@<Q1>)
{
  v32 = a4;
  v31 = a2;
  v5 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A370, &unk_24F94E9F0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v20 = type metadata accessor for IncomingFriendRequest(0);
  sub_24E7300B4(a1 + *(v20 + 36), v7, type metadata accessor for PlayerAvatar);
  LOBYTE(v36[0]) = 7;
  sub_24F8319B8(v7, v36, v19);
  sub_24F927618();
  sub_24F9238C8();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v22 = &v19[*(v21 + 36)];
  v23 = v34;
  *v22 = v33;
  *(v22 + 1) = v23;
  *(v22 + 2) = v35;
  *&v19[*(v9 + 44)] = vmulq_n_f64(xmmword_24F94E5C0, v32.n128_f64[0]);
  sub_24E7300B4(a1 + *(v20 + 32), v7, type metadata accessor for PlayerAvatar);
  LOBYTE(v36[0]) = 7;
  sub_24F8319B8(v7, v36, v16);
  sub_24F927618();
  sub_24F9238C8();
  v24 = &v16[*(v21 + 36)];
  v25 = v36[1];
  *v24 = v36[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v36[2];
  *&v16[*(v9 + 44)] = vmulq_n_f64(xmmword_24F94E5D0, v32.n128_f64[0]);
  sub_24E60169C(v19, v13, &qword_27F21A370, &unk_24F94E9F0);
  v26 = v30;
  sub_24E60169C(v16, v30, &qword_27F21A370, &unk_24F94E9F0);
  v27 = v31;
  sub_24E60169C(v13, v31, &qword_27F21A370, &unk_24F94E9F0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A788, &qword_24F94EA00);
  sub_24E60169C(v26, v27 + *(v28 + 48), &qword_27F21A370, &unk_24F94E9F0);
  sub_24E601704(v16, &qword_27F21A370, &unk_24F94E9F0);
  sub_24E601704(v19, &qword_27F21A370, &unk_24F94E9F0);
  sub_24E601704(v26, &qword_27F21A370, &unk_24F94E9F0);
  return sub_24E601704(v13, &qword_27F21A370, &unk_24F94E9F0);
}

uint64_t sub_24E72E97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IncomingFriendRequest(0);
  v5 = (a1 + v4[13]);
  v7 = *v5;
  v6 = v5[1];
  v8 = (a1 + v4[14]);
  v10 = *v8;
  v9 = v8[1];
  sub_24E60169C(a1 + v4[12], &v21, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80(&v21, v26);
  v25[0] = v7;
  v25[1] = v6;
  v25[2] = v10;
  v25[3] = v9;
  v26[40] = 0;
  v11 = v4[15];
  v12 = (a1 + v4[16]);
  v14 = *v12;
  v13 = v12[1];
  v15 = (a1 + v4[17]);
  v17 = *v15;
  v16 = v15[1];
  sub_24E60169C(a1 + v11, v20, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80(v20, v24);
  *&v21 = v14;
  *(&v21 + 1) = v13;
  v22 = v17;
  v23 = v16;
  v24[40] = 1;
  sub_24E72FEE4(v25, v20);
  sub_24E72FEE4(&v21, v19);
  sub_24E72FEE4(v20, a2);
  sub_24E72FEE4(v19, a2 + 80);

  sub_24E72FF1C(&v21);
  sub_24E72FF1C(v25);
  sub_24E72FF1C(v19);
  return sub_24E72FF1C(v20);
}

uint64_t sub_24E72EAE8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F924C58();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A8E0, &unk_24F94EE08);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7B8, &qword_24F94EA30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58, &unk_24F935650);
  sub_24E602068(&qword_27F21A8E8, &qword_27F21A7B8, &qword_24F94EA30, MEMORY[0x277D83980]);
  sub_24E7313AC();
  sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
  sub_24F927228();
  v3 = sub_24F925A18();
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A8F8, &qword_24F94EE68) + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  LODWORD(v3) = sub_24F9251C8();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A900, &unk_24F94EE70) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v8 = *MEMORY[0x277CE13B8];
  v9 = sub_24F927748();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v3;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A908, &unk_24F94EE80) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0, &unk_24F9B4DB0) + 28);
  sub_24F924CF8();
  v12 = sub_24F924D08();
  (*(*(v12 - 8) + 56))(&v10[v11], 0, 1, v12);
  result = swift_getKeyPath();
  *v10 = result;
  return result;
}

uint64_t sub_24E72EE24@<X0>(uint64_t a3@<X8>)
{
  sub_24E600AEC();

  result = sub_24F925E18();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_24E72EE98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v53 = sub_24F924C38();
  v45 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A858, &qword_24F94ED80);
  v47 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v46 = &v42 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A860, &unk_24F94ED88);
  MEMORY[0x28223BE20](v50);
  v52 = &v42 - v5;
  v51 = sub_24F925598();
  v43 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A868, &qword_24F94ED98);
  v11 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A870, &qword_24F94EDA0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A878, &qword_24F94EDA8);
  v42 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v18 = &v42 - v17;
  v19 = *(v2 + 72);
  v20 = sub_24F9232F8();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = (v11 + 32);
  sub_24E615E00(v2 + 32, v60);
  sub_24E72FEE4(v2, &v56);
  v22 = swift_allocObject();
  v23 = v59[0];
  v22[3] = v58;
  v22[4] = v23;
  *(v22 + 73) = *(v59 + 9);
  v24 = v57;
  v22[1] = v56;
  v22[2] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A880, &qword_24F94EDB0);
  sub_24E731010();
  sub_24F921788();
  if (v19 == 1)
  {
    v25 = sub_24F926C88();
    (*v21)(v16, v13, v48);
    *&v16[*(v14 + 36)] = v25;
    sub_24F925588();
    v26 = sub_24E731154();
    v27 = sub_24E731238(&qword_27F21A8C8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v28 = v51;
    sub_24F926178();
    (*(v43 + 8))(v7, v28);
    sub_24E601704(v16, &qword_27F21A870, &qword_24F94EDA0);
    v29 = v42;
    v30 = v49;
    (*(v42 + 16))(v52, v18, v49);
    swift_storeEnumTagMultiPayload();
    *&v56 = v14;
    *(&v56 + 1) = v28;
    *&v57 = v26;
    *(&v57 + 1) = v27;
    swift_getOpaqueTypeConformance2();
    v31 = sub_24E731238(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    *&v56 = v14;
    *(&v56 + 1) = v53;
    *&v57 = v26;
    *(&v57 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v29 + 8))(v18, v30);
  }

  else
  {
    v33 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    (*v21)(v16, v13, v48);
    *&v16[*(v14 + 36)] = v33;
    v34 = v44;
    sub_24F924C28();
    v35 = sub_24E731154();
    v36 = sub_24E731238(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    v37 = v46;
    v38 = v53;
    sub_24F926178();
    (*(v45 + 8))(v34, v38);
    sub_24E601704(v16, &qword_27F21A870, &qword_24F94EDA0);
    v39 = v47;
    v40 = v54;
    (*(v47 + 16))(v52, v37, v54);
    swift_storeEnumTagMultiPayload();
    v41 = sub_24E731238(&qword_27F21A8C8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    *&v56 = v14;
    *(&v56 + 1) = v51;
    *&v57 = v35;
    *(&v57 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    *&v56 = v14;
    *(&v56 + 1) = v38;
    *&v57 = v35;
    *(&v57 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v39 + 8))(v37, v40);
  }
}

__n128 sub_24E72F784@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A898, &qword_24F94EDB8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-v6];
  v19 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A8D0, &qword_24F94EDD0);
  sub_24E731318();
  sub_24F926EA8();
  LOBYTE(a1) = sub_24F925868();
  sub_24F923318();
  v8 = &v7[*(v5 + 44)];
  *v8 = a1;
  *(v8 + 1) = v9;
  *(v8 + 2) = v10;
  *(v8 + 3) = v11;
  *(v8 + 4) = v12;
  v8[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, a2, &qword_27F21A898, &qword_24F94EDB8);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A880, &qword_24F94EDB0) + 36);
  v14 = v25;
  *(v13 + 64) = v24;
  *(v13 + 80) = v14;
  *(v13 + 96) = v26;
  v15 = v21;
  *v13 = v20;
  *(v13 + 16) = v15;
  result = v23;
  *(v13 + 32) = v22;
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_24E72F950@<X0>(uint64_t a2@<X8>)
{
  sub_24E600AEC();

  v3 = sub_24F925E18();
  v5 = v4;
  v7 = v6;
  sub_24F925A28();
  v8 = sub_24F925C98();
  v10 = v9;
  v12 = v11;

  sub_24E600B40(v3, v5, v7 & 1);

  sub_24F9268B8();
  sub_24E600B40(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70, &unk_24F93E730) + 36);
  *v14 = KeyPath;
  *(v14 + 8) = 1;
  *(v14 + 16) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A8D0, &qword_24F94EDD0);
  *(a2 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_24E72FB00(uint64_t a1)
{
  sub_24E62AB1C(*(v1 + 8), *(v1 + 16));
  sub_24E72D014();

  return sub_24F9218E8();
}

unint64_t sub_24E72FBD0()
{
  result = qword_27F21A6A0;
  if (!qword_27F21A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A6A0);
  }

  return result;
}

uint64_t sub_24E72FCD8()
{
  sub_24E62A5EC(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24E72FD74()
{
  result = qword_27F21A6F8;
  if (!qword_27F21A6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A6D8, &qword_24F94E938);
    sub_24E72FE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A6F8);
  }

  return result;
}

unint64_t sub_24E72FE00()
{
  result = qword_27F21A700;
  if (!qword_27F21A700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A6E8, &unk_24F94E950);
    sub_24E602068(&qword_27F21A708, &qword_27F21A710, &unk_24F94E960, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F21A718, &qword_27F21A720, qword_24F9A8F70, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A700);
  }

  return result;
}

unint64_t sub_24E72FF4C()
{
  result = qword_27F21A778;
  if (!qword_27F21A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A778);
  }

  return result;
}

unint64_t sub_24E72FFA8()
{
  result = qword_27F21A7B0;
  if (!qword_27F21A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A7B0);
  }

  return result;
}

uint64_t sub_24E72FFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E730060()
{
  result = qword_27F21A7C8;
  if (!qword_27F21A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A7C8);
  }

  return result;
}

uint64_t sub_24E7300B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E73011C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E73017C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A7B8, &qword_24F94EA30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7301F4()
{
  result = qword_27F21A7E0;
  if (!qword_27F21A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A7E0);
  }

  return result;
}

uint64_t sub_24E730248(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7E8, &qword_24F94EA40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E73042C();
  sub_24F92D108();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_24F92CC28();
    v10 = 1;
    sub_24F92CC28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24E73042C()
{
  result = qword_27F21A7F0;
  if (!qword_27F21A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A7F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncomingFriendRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingFriendRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24E730604(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_24E73064C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E7306C4()
{
  result = qword_27F21A800;
  if (!qword_27F21A800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A6C0, &qword_24F94E8F0);
    sub_24E730780();
    sub_24E731238(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A800);
  }

  return result;
}

unint64_t sub_24E730780()
{
  result = qword_27F21A808;
  if (!qword_27F21A808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A6B8, &qword_24F94E8E8);
    sub_24E73080C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A808);
  }

  return result;
}

unint64_t sub_24E73080C()
{
  result = qword_27F21A810;
  if (!qword_27F21A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A6B0, &qword_24F94E8E0);
    sub_24E730890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A810);
  }

  return result;
}

unint64_t sub_24E730890()
{
  result = qword_27F21A818;
  if (!qword_27F21A818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A820, qword_24F94EAC8);
    sub_24E72FD74();
    sub_24E602068(&qword_27F21A728, &qword_27F21A6C8, &qword_24F94E928, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A818);
  }

  return result;
}

unint64_t sub_24E730984()
{
  result = qword_27F21A828;
  if (!qword_27F21A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A828);
  }

  return result;
}

unint64_t sub_24E7309DC()
{
  result = qword_27F21A830;
  if (!qword_27F21A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A830);
  }

  return result;
}

unint64_t sub_24E730A34()
{
  result = qword_27F21A838;
  if (!qword_27F21A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A838);
  }

  return result;
}

unint64_t sub_24E730A8C()
{
  result = qword_27F21A840;
  if (!qword_27F21A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A840);
  }

  return result;
}

unint64_t sub_24E730AE4()
{
  result = qword_27F21A848;
  if (!qword_27F21A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A848);
  }

  return result;
}

unint64_t sub_24E730B3C()
{
  result = qword_27F21A850;
  if (!qword_27F21A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A850);
  }

  return result;
}

uint64_t sub_24E730B90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x76417265646E6573 && a2 == 0xEC00000072617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA464C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736C6C65737075 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x634165726F6E6769 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA464E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA46500 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6341747065636361 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA46520 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA46540 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24E731010()
{
  result = qword_27F21A888;
  if (!qword_27F21A888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A880, &qword_24F94EDB0);
    sub_24E73109C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A888);
  }

  return result;
}

unint64_t sub_24E73109C()
{
  result = qword_27F21A890;
  if (!qword_27F21A890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A898, &qword_24F94EDB8);
    sub_24E602068(&qword_27F21A8A0, &qword_27F21A8A8, &unk_24F94EDC0, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A890);
  }

  return result;
}

unint64_t sub_24E731154()
{
  result = qword_27F21A8B0;
  if (!qword_27F21A8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A870, &qword_24F94EDA0);
    sub_24E602068(&qword_27F21A8B8, &qword_27F21A868, &qword_24F94ED98, MEMORY[0x277D7EB00]);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A8B0);
  }

  return result;
}

uint64_t sub_24E731238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_33Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_24E7312D0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_24F926E48();
  *a1 = result;
  return result;
}

unint64_t sub_24E731318()
{
  result = qword_27F21A8D8;
  if (!qword_27F21A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A8D0, &qword_24F94EDD0);
    sub_24E63C68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A8D8);
  }

  return result;
}

unint64_t sub_24E7313AC()
{
  result = qword_27F21A8F0;
  if (!qword_27F21A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A8F0);
  }

  return result;
}

uint64_t sub_24E73141C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_24F926E48();
  *a1 = result;
  return result;
}

unint64_t sub_24E731464()
{
  result = qword_27F21A910;
  if (!qword_27F21A910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A918, &qword_24F94EEC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A870, &qword_24F94EDA0);
    sub_24F925598();
    sub_24E731154();
    sub_24E731238(&qword_27F21A8C8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_24F924C38();
    sub_24E731238(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A910);
  }

  return result;
}

unint64_t sub_24E7315E0()
{
  result = qword_27F21A920;
  if (!qword_27F21A920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A908, &unk_24F94EE80);
    sub_24E731698();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0, &unk_24F9B4DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A920);
  }

  return result;
}

unint64_t sub_24E731698()
{
  result = qword_27F21A928;
  if (!qword_27F21A928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A930, &qword_24F94EEC8);
    sub_24E731750();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A928);
  }

  return result;
}

unint64_t sub_24E731750()
{
  result = qword_27F21A938;
  if (!qword_27F21A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A900, &unk_24F94EE70);
    sub_24E731808();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90, &qword_24F93BE60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A938);
  }

  return result;
}

unint64_t sub_24E731808()
{
  result = qword_27F21A940;
  if (!qword_27F21A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A8F8, &qword_24F94EE68);
    sub_24E602068(&qword_27F21A948, &qword_27F21A950, &unk_24F94EED0, MEMORY[0x277CE1198]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A940);
  }

  return result;
}

uint64_t GameOverviewShelfIntent.pageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameOverviewShelfIntent(0) + 20));

  return v1;
}

uint64_t type metadata accessor for GameOverviewShelfIntent(uint64_t a1)
{
  result = qword_27F21A978;
  if (!qword_27F21A978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t GameOverviewShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v5 = type metadata accessor for GameOverviewShelfIntent(0);
  v6 = (v2 + *(v5 + 20));
  v7 = *v6;
  v8 = v6[1];
  v9 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v9;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v10 = *(v5 + 24);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E73246C(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7324B4(v2 + v10, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  *(inited + 184) = type metadata accessor for Game(0);
  *(inited + 192) = sub_24E73246C(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v12 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E7324B4(v2, v12, type metadata accessor for Game);

  v13 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24E731C3C()
{
  v1 = 0x444965676170;
  if (*v0 != 1)
  {
    v1 = 0x726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24E731C88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E732998(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E731CB0(uint64_t a1)
{
  v2 = sub_24E732418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E731CEC(uint64_t a1)
{
  v2 = sub_24E732418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameOverviewShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A960, &qword_24F94EF00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E732418();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Game(0);
  sub_24E73246C(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for GameOverviewShelfIntent(0);
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    type metadata accessor for Player(0);
    sub_24E73246C(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GameOverviewShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v6);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A970, &qword_24F94EF08);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v23 - v8;
  v10 = type metadata accessor for GameOverviewShelfIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24E732418();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v14 = v27;
  v24 = v10;
  v15 = v12;
  v33 = 0;
  sub_24E73246C(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v17 = v28;
  v16 = v29;
  sub_24F92CC68();
  sub_24E691974(v17, v15, type metadata accessor for Game);
  v32 = 1;
  v18 = sub_24F92CC28();
  v19 = v24;
  v20 = (v15 + *(v24 + 20));
  *v20 = v18;
  v20[1] = v21;
  v31 = 2;
  sub_24E73246C(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  (*(v14 + 8))(v9, v16);
  sub_24E691974(v5, v15 + *(v19 + 24), type metadata accessor for Player);
  sub_24E7324B4(v15, v25, type metadata accessor for GameOverviewShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_24E73251C(v15, type metadata accessor for GameOverviewShelfIntent);
}

unint64_t sub_24E732418()
{
  result = qword_27F21A968;
  if (!qword_27F21A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A968);
  }

  return result;
}

uint64_t sub_24E73246C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E7324B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E73251C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E732590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Game(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Player(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24E7326CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Game(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Player(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24E7327F4(uint64_t a1)
{
  result = type metadata accessor for Game(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Player(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24E732894()
{
  result = qword_27F21A988;
  if (!qword_27F21A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A988);
  }

  return result;
}

unint64_t sub_24E7328EC()
{
  result = qword_27F21A990;
  if (!qword_27F21A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A990);
  }

  return result;
}

unint64_t sub_24E732944()
{
  result = qword_27F21A998;
  if (!qword_27F21A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A998);
  }

  return result;
}

uint64_t sub_24E732998(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
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

uint64_t sub_24E732AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerRequiredData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E732B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726975716572 && a2 == 0xEC00000061746144)
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

uint64_t sub_24E732C10(uint64_t a1)
{
  v2 = sub_24E732DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E732C4C(uint64_t a1)
{
  v2 = sub_24E732DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InGameBannerPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A9A0, &qword_24F94F148);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E732DEC();
  sub_24F92D128();
  type metadata accessor for InGameBannerRequiredData(0);
  sub_24E7330EC(&qword_27F21A9B0, &protocol conformance descriptor for InGameBannerRequiredData);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E732DEC()
{
  result = qword_27F21A9A8;
  if (!qword_27F21A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A9A8);
  }

  return result;
}

uint64_t InGameBannerPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for InGameBannerRequiredData(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A9B8, &qword_24F94F150);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for InGameBannerPageIntent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E732DEC();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E7330EC(&qword_27F21A9C0, &protocol conformance descriptor for InGameBannerRequiredData);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24E733130(v13, v11, type metadata accessor for InGameBannerRequiredData);
    sub_24E733130(v11, v12, type metadata accessor for InGameBannerPageIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for InGameBannerPageIntent(uint64_t a1)
{
  result = qword_27F21A9C8;
  if (!qword_27F21A9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E7330EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InGameBannerRequiredData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E733130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7331D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A9A0, &qword_24F94F148);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E732DEC();
  sub_24F92D128();
  type metadata accessor for InGameBannerRequiredData(0);
  sub_24E7330EC(&qword_27F21A9B0, &protocol conformance descriptor for InGameBannerRequiredData);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E733348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerRequiredData(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E7333C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerRequiredData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E733438(uint64_t a1)
{
  result = type metadata accessor for InGameBannerRequiredData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E7334B8()
{
  result = qword_27F21A9D8;
  if (!qword_27F21A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A9D8);
  }

  return result;
}

unint64_t sub_24E733510()
{
  result = qword_27F21A9E0;
  if (!qword_27F21A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A9E0);
  }

  return result;
}

unint64_t sub_24E733568()
{
  result = qword_27F21A9E8;
  if (!qword_27F21A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A9E8);
  }

  return result;
}

uint64_t sub_24E7335BC(double *a1)
{
  result = sub_24E6B00B4(*a1);
  v3 = a1[2];
  v4 = v3 + v3;
  if (COERCE__INT64(fabs(v3 + v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = 0;
    v6 = v4 / 200;
    v19 = *(MEMORY[0x277D768C8] + 16);
    v20 = *MEMORY[0x277D768C8];
    v7 = MEMORY[0x277D84F90];
    v8 = result;
    v9 = 0.0;
    v10 = 200.0;
    v11 = 400;
    v18 = vdupq_n_s64(0xC0C81C8000000000);
    while (1)
    {
      v12 = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
        break;
      }

      v13 = qword_24F94F328[v8];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E6172CC(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_24E6172CC((v14 > 1), v15 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 160 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v10;
      *(v16 + 48) = v18;
      *(v16 + 64) = 0;
      *(v16 + 66) = v22;
      *(v16 + 70) = v23;
      *(v16 + 72) = 0;
      *(v16 + 80) = 0;
      *(v16 + 88) = v12;
      *(v16 + 96) = v12;
      *(v16 + 104) = v13;
      *(v16 + 112) = v13;
      *(v16 + 120) = v13;
      *(v16 + 128) = v13;
      *(v16 + 136) = v3;
      *(v16 + 144) = v3;
      *(v16 + 152) = 1;
      *(v16 + 156) = *&v21[3];
      *(v16 + 153) = *v21;
      *(v16 + 160) = v20;
      *(v16 + 176) = v19;
      if (++v5 == 15)
      {
        return v7;
      }

      v10 = v11;
      v17 = v11 - 200;
      v11 += 200;
      v9 = v17;
      if (v17 > v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24E7337D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA28, &qword_24F94F428);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F94F380;
  v1 = type metadata accessor for AccessPointHighlight(0);
  v2 = sub_24E7367F0(&qword_27F21AA30, type metadata accessor for AccessPointHighlight, &protocol conformance descriptor for AccessPointHighlight);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for AchievementCard(0);
  v4 = sub_24E7367F0(&qword_27F21AA38, type metadata accessor for AchievementCard, "a݁2");
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for AchievementsCard(0);
  v6 = sub_24E7367F0(&qword_27F21AA40, type metadata accessor for AchievementsCard, &unk_24FA27584);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for AchievementRow(0);
  v8 = sub_24E7367F0(&qword_27F21AA48, type metadata accessor for AchievementRow, &unk_24F999580);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for AchievementDetailsGlobalPlayer(0);
  v10 = sub_24E7367F0(&qword_27F21AA50, type metadata accessor for AchievementDetailsGlobalPlayer, &unk_24FA28CF0);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for AchievementDetailsHeader(0);
  v12 = sub_24E7367F0(&qword_27F21AA58, type metadata accessor for AchievementDetailsHeader, &protocol conformance descriptor for AchievementDetailsHeader);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for AchievementsCountHeaderItem(0);
  v14 = sub_24E7367F0(&qword_27F21AA60, type metadata accessor for AchievementsCountHeaderItem, &unk_24F9FD8B0);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for ActionButtonRow(0);
  v16 = sub_24E7367F0(&qword_27F21AA68, type metadata accessor for ActionButtonRow, &unk_24F952A24);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for ActivityCard(0);
  v18 = sub_24E7367F0(&qword_27F21AA70, type metadata accessor for ActivityCard, &unk_24F9EFE1C);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for ActivityInviteCard(0);
  v20 = sub_24E7367F0(&qword_27F21AA78, type metadata accessor for ActivityInviteCard, &unk_24F9C7C14);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  v21 = type metadata accessor for ActivityFeedLockup(0);
  v22 = sub_24E7367F0(&qword_27F216720, type metadata accessor for ActivityFeedLockup, &unk_24F942D50);
  *(v0 + 192) = v21;
  *(v0 + 200) = v22;
  v23 = type metadata accessor for AppEventCard(0);
  v24 = sub_24E7367F0(&qword_27F21AA80, type metadata accessor for AppEventCard, &unk_24F9F1FA4);
  *(v0 + 208) = v23;
  *(v0 + 216) = v24;
  v25 = type metadata accessor for AppEventDetail(0);
  v26 = sub_24E7367F0(&qword_27F21AA88, type metadata accessor for AppEventDetail, &unk_24F95F1C0);
  *(v0 + 224) = v25;
  *(v0 + 232) = v26;
  v27 = type metadata accessor for AppEventSearchCard(0);
  v28 = sub_24E7367F0(&qword_27F21AA90, type metadata accessor for AppEventSearchCard, &unk_24F98E3DC);
  *(v0 + 240) = v27;
  *(v0 + 248) = v28;
  v29 = type metadata accessor for ArcadeUpsellCard(0);
  v30 = sub_24E7367F0(&qword_27F21AA98, type metadata accessor for ArcadeUpsellCard, &unk_24F98DEFC);
  *(v0 + 256) = v29;
  *(v0 + 264) = v30;
  v31 = type metadata accessor for BoolSetting(0);
  v32 = sub_24E7367F0(&qword_27F21AAA0, type metadata accessor for BoolSetting, &unk_24F962DF0);
  *(v0 + 272) = v31;
  *(v0 + 280) = v32;
  v33 = type metadata accessor for ButtonGroup(0);
  v34 = sub_24E7367F0(&qword_27F21AAA8, type metadata accessor for ButtonGroup, &unk_24F955E10);
  *(v0 + 288) = v33;
  *(v0 + 296) = v34;
  v35 = type metadata accessor for ButtonGroupItem(0);
  v36 = sub_24E7367F0(&qword_27F21AAB0, type metadata accessor for ButtonGroupItem, &unk_24F95A6D0);
  *(v0 + 304) = v35;
  *(v0 + 312) = v36;
  v37 = type metadata accessor for CenteredCapsuleButton(0);
  v38 = sub_24E7367F0(&qword_27F21AAB8, type metadata accessor for CenteredCapsuleButton, &unk_24F980048);
  *(v0 + 320) = v37;
  *(v0 + 328) = v38;
  v39 = type metadata accessor for ChallengeCard(0);
  v40 = sub_24E7367F0(&qword_27F21AAC0, type metadata accessor for ChallengeCard, &unk_24FA16288);
  *(v0 + 336) = v39;
  *(v0 + 344) = v40;
  v41 = type metadata accessor for ChallengeCompletedCard(0);
  v42 = sub_24E7367F0(&qword_27F21AAC8, type metadata accessor for ChallengeCompletedCard, &unk_24F9E9D38);
  *(v0 + 352) = v41;
  *(v0 + 360) = v42;
  v43 = type metadata accessor for ChallengeDetailDescription(0);
  v44 = sub_24E7367F0(&qword_27F21AAD0, type metadata accessor for ChallengeDetailDescription, &unk_24FA00C28);
  *(v0 + 368) = v43;
  *(v0 + 376) = v44;
  v45 = type metadata accessor for ChallengeInviteCard(0);
  v46 = sub_24E7367F0(&qword_27F21AAD8, type metadata accessor for ChallengeInviteCard, &unk_24FA30E34);
  *(v0 + 384) = v45;
  *(v0 + 392) = v46;
  v47 = type metadata accessor for ChallengeSuggestionCard(0);
  v48 = sub_24E7367F0(&qword_27F21AAE0, type metadata accessor for ChallengeSuggestionCard, &unk_24FA1C054);
  *(v0 + 400) = v47;
  *(v0 + 408) = v48;
  v49 = type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup(0);
  v50 = sub_24E7367F0(&qword_27F21AAE8, type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup, &unk_24F971BC0);
  *(v0 + 416) = v49;
  *(v0 + 424) = v50;
  v51 = type metadata accessor for ChallengeDetailPlayerLockup(0);
  v52 = sub_24E7367F0(&qword_27F21AAF0, type metadata accessor for ChallengeDetailPlayerLockup, &unk_24FA04D9C);
  *(v0 + 432) = v51;
  *(v0 + 440) = v52;
  v53 = type metadata accessor for ChallengesGameSuggestionLockup(0);
  v54 = sub_24E7367F0(&qword_27F218480, type metadata accessor for ChallengesGameSuggestionLockup, &unk_24F948980);
  *(v0 + 448) = v53;
  *(v0 + 456) = v54;
  v55 = type metadata accessor for ChallengesHubHeaderButton(0);
  v56 = sub_24E7367F0(&qword_27F21AAF8, type metadata accessor for ChallengesHubHeaderButton, &unk_24FA109D8);
  *(v0 + 464) = v55;
  *(v0 + 472) = v56;
  v57 = type metadata accessor for ChallengeDetailHero(0);
  v58 = sub_24E7367F0(&qword_27F21AB00, type metadata accessor for ChallengeDetailHero, &unk_24FA2BE58);
  *(v0 + 480) = v57;
  *(v0 + 488) = v58;
  v59 = type metadata accessor for ChallengeInviteLockup(0);
  v60 = sub_24E7367F0(&qword_27F21AB08, type metadata accessor for ChallengeInviteLockup, &unk_24FA260A8);
  *(v0 + 496) = v59;
  *(v0 + 504) = v60;
  v61 = type metadata accessor for ChallengesFriendComparisonHeader(0);
  v62 = sub_24E7367F0(&qword_27F21AB10, type metadata accessor for ChallengesFriendComparisonHeader, &unk_24FA09E80);
  *(v0 + 512) = v61;
  *(v0 + 520) = v62;
  v63 = type metadata accessor for ChallengesFriendComparisonChart(0);
  v64 = sub_24E7367F0(&qword_27F21AB18, type metadata accessor for ChallengesFriendComparisonChart, &unk_24FA24AD8);
  *(v0 + 528) = v63;
  *(v0 + 536) = v64;
  v65 = type metadata accessor for ChallengesHistoryChallengeLockup(0);
  v66 = sub_24E7367F0(&qword_27F21AB20, type metadata accessor for ChallengesHistoryChallengeLockup, &unk_24FA245A0);
  *(v0 + 544) = v65;
  *(v0 + 552) = v66;
  v67 = type metadata accessor for ChallengesHistoryGameLockup(0);
  v68 = sub_24E7367F0(&qword_27F21AB28, type metadata accessor for ChallengesHistoryGameLockup, &unk_24FA02A98);
  *(v0 + 560) = v67;
  *(v0 + 568) = v68;
  v69 = type metadata accessor for ChallengesHistoryHero(0);
  v70 = sub_24E7367F0(&qword_27F21AB30, type metadata accessor for ChallengesHistoryHero, &unk_24FA2831C);
  *(v0 + 576) = v69;
  *(v0 + 584) = v70;
  v71 = type metadata accessor for ChallengesHistoryPlayerLockup(0);
  v72 = sub_24E7367F0(&qword_27F21AB38, type metadata accessor for ChallengesHistoryPlayerLockup, &unk_24FA1AED8);
  *(v0 + 592) = v71;
  *(v0 + 600) = v72;
  v73 = type metadata accessor for ChallengesLeaderboardSuggestionLockup(0);
  v74 = sub_24E7367F0(&qword_27F21AB40, type metadata accessor for ChallengesLeaderboardSuggestionLockup, &unk_24FA05ED0);
  *(v0 + 608) = v73;
  *(v0 + 616) = v74;
  v75 = type metadata accessor for ChartCard(0);
  v76 = sub_24E7367F0(&qword_27F21AB48, type metadata accessor for ChartCard, &unk_24F9FE2F4);
  *(v0 + 624) = v75;
  *(v0 + 632) = v76;
  v77 = type metadata accessor for ClampingComponentGrid(0);
  v78 = sub_24E7367F0(&qword_27F21AB50, type metadata accessor for ClampingComponentGrid, &unk_24FA14FC8);
  *(v0 + 640) = v77;
  *(v0 + 648) = v78;
  v79 = type metadata accessor for ComingSoonPlatter(0);
  v80 = sub_24E7367F0(&qword_27F21AB58, type metadata accessor for ComingSoonPlatter, &unk_24F9F568C);
  *(v0 + 656) = v79;
  *(v0 + 664) = v80;
  v81 = type metadata accessor for ComponentGrid(0);
  v82 = sub_24E7367F0(&qword_27F21AB60, type metadata accessor for ComponentGrid, &unk_24FA251D8);
  *(v0 + 672) = v81;
  *(v0 + 680) = v82;
  v83 = type metadata accessor for ContactLockup(0);
  v84 = sub_24E7367F0(&qword_27F21AB68, type metadata accessor for ContactLockup, &protocol conformance descriptor for ContactLockup);
  *(v0 + 688) = v83;
  *(v0 + 696) = v84;
  v85 = type metadata accessor for ContinuePlayingIcon(0);
  v86 = sub_24E7367F0(&qword_27F21AB70, type metadata accessor for ContinuePlayingIcon, &unk_24FA18020);
  *(v0 + 704) = v85;
  *(v0 + 712) = v86;
  v87 = type metadata accessor for EmptyState(0);
  v88 = sub_24E7367F0(&qword_27F21AB78, type metadata accessor for EmptyState, &unk_24F955720);
  *(v0 + 720) = v87;
  *(v0 + 728) = v88;
  v89 = type metadata accessor for DashboardHero(0);
  v90 = sub_24E7367F0(&qword_27F21AB80, type metadata accessor for DashboardHero, &unk_24FA32FE8);
  *(v0 + 736) = v89;
  *(v0 + 744) = v90;
  v91 = type metadata accessor for DebugErrorCard(0);
  v92 = sub_24E7367F0(&qword_27F21AB88, type metadata accessor for DebugErrorCard, &unk_24FA2FD3C);
  *(v0 + 752) = v91;
  *(v0 + 760) = v92;
  v93 = type metadata accessor for FriendInviteButton(0);
  v94 = sub_24E7367F0(&qword_27F21AB90, type metadata accessor for FriendInviteButton, &unk_24F9FE010);
  *(v0 + 768) = v93;
  *(v0 + 776) = v94;
  v95 = type metadata accessor for FriendRequestCard(0);
  v96 = sub_24E7367F0(&qword_27F21AB98, type metadata accessor for FriendRequestCard, &unk_24FA2A444);
  *(v0 + 784) = v95;
  *(v0 + 792) = v96;
  v97 = type metadata accessor for FriendRequestOverlayComponentGrid(0);
  v98 = sub_24E7367F0(&qword_27F21ABA0, type metadata accessor for FriendRequestOverlayComponentGrid, &unk_24F99E088);
  *(v0 + 800) = v97;
  *(v0 + 808) = v98;
  v99 = type metadata accessor for FriendsArePlayingCard(0);
  v100 = sub_24E7367F0(&qword_27F21ABA8, type metadata accessor for FriendsArePlayingCard, &unk_24FA0E634);
  *(v0 + 816) = v99;
  *(v0 + 824) = v100;
  v101 = type metadata accessor for FriendsPlayingHeaderItem(0);
  v102 = sub_24E7367F0(&qword_27F21ABB0, type metadata accessor for FriendsPlayingHeaderItem, &unk_24FA2C7E0);
  *(v0 + 832) = v101;
  *(v0 + 840) = v102;
  v103 = type metadata accessor for FriendSuggestionCard(0);
  v104 = sub_24E7367F0(&qword_27F21ABB8, type metadata accessor for FriendSuggestionCard, &unk_24F959574);
  *(v0 + 848) = v103;
  *(v0 + 856) = v104;
  v105 = type metadata accessor for FriendSuggestionLockup(0);
  v106 = sub_24E7367F0(&qword_27F21ABC0, type metadata accessor for FriendSuggestionLockup, &unk_24FA09640);
  *(v0 + 864) = v105;
  *(v0 + 872) = v106;
  v107 = type metadata accessor for FriendRequestLockup(0);
  v108 = sub_24E7367F0(&qword_27F21ABC8, type metadata accessor for FriendRequestLockup, &unk_24F957368);
  *(v0 + 880) = v107;
  *(v0 + 888) = v108;
  v109 = type metadata accessor for FriendRequestOverlayHeader(0);
  v110 = sub_24E7367F0(&qword_27F21ABD0, type metadata accessor for FriendRequestOverlayHeader, &unk_24F9B5CC8);
  *(v0 + 896) = v109;
  *(v0 + 904) = v110;
  v111 = type metadata accessor for FriendRequestOverlayLockup(0);
  v112 = sub_24E7367F0(&qword_27F21ABD8, type metadata accessor for FriendRequestOverlayLockup, &unk_24F968B40);
  *(v0 + 912) = v111;
  *(v0 + 920) = v112;
  v113 = type metadata accessor for FriendRequestsPrivacyToggle(0);
  v114 = sub_24E7367F0(&qword_27F215480, type metadata accessor for FriendRequestsPrivacyToggle, &unk_24F9402D8);
  *(v0 + 928) = v113;
  *(v0 + 936) = v114;
  v115 = type metadata accessor for GameDetailsAnnotation(0);
  v116 = sub_24E7367F0(&qword_27F21ABE0, type metadata accessor for GameDetailsAnnotation, &unk_24F93D9E8);
  *(v0 + 944) = v115;
  *(v0 + 952) = v116;
  v117 = type metadata accessor for GameDetailsAnnotationCard(0);
  v118 = sub_24E7367F0(&qword_27F21ABE8, type metadata accessor for GameDetailsAnnotationCard, &unk_24F978C28);
  *(v0 + 960) = v117;
  *(v0 + 968) = v118;
  v119 = type metadata accessor for GameDetailsBanner(0);
  v120 = sub_24E7367F0(&qword_27F21ABF0, type metadata accessor for GameDetailsBanner, &unk_24F976BE4);
  *(v0 + 976) = v119;
  *(v0 + 984) = v120;
  v121 = type metadata accessor for GameDetailsDeveloper(0);
  v122 = sub_24E7367F0(&qword_27F21ABF8, type metadata accessor for GameDetailsDeveloper, &unk_24F9F3F10);
  *(v0 + 992) = v121;
  *(v0 + 1000) = v122;
  v123 = type metadata accessor for GameDetailsHeader(0);
  v124 = sub_24E7367F0(&qword_27F21AC00, type metadata accessor for GameDetailsHeader, &unk_24F9624E8);
  *(v0 + 1008) = v123;
  *(v0 + 1016) = v124;
  v125 = type metadata accessor for GameDetailsMediaItem(0);
  v126 = sub_24E7367F0(&qword_27F213FF8, type metadata accessor for GameDetailsMediaItem, &unk_24F93C0C8);
  *(v0 + 1024) = v125;
  *(v0 + 1032) = v126;
  v127 = type metadata accessor for GameDetailsMediaPreview(0);
  v128 = sub_24E7367F0(&qword_27F214328, type metadata accessor for GameDetailsMediaPreview, &unk_24F93CA30);
  *(v0 + 1040) = v127;
  *(v0 + 1048) = v128;
  v129 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  v130 = sub_24E7367F0(&qword_27F21AC08, type metadata accessor for GameDetailsMediaPreviewCard, &unk_24F97E968);
  *(v0 + 1056) = v129;
  *(v0 + 1064) = v130;
  v131 = type metadata accessor for GameDetailsRatings(0);
  v132 = sub_24E7367F0(&qword_27F213EF0, type metadata accessor for GameDetailsRatings, &unk_24F93BD58);
  *(v0 + 1072) = v131;
  *(v0 + 1080) = v132;
  v133 = type metadata accessor for GameDetailsRatingsAndReviews(0);
  v134 = sub_24E7367F0(&qword_27F214568, type metadata accessor for GameDetailsRatingsAndReviews, &unk_24F93D0E8);
  *(v0 + 1088) = v133;
  *(v0 + 1096) = v134;
  v135 = type metadata accessor for GameDetailsRibbon(0);
  v136 = sub_24E7367F0(&qword_27F2144C0, type metadata accessor for GameDetailsRibbon, &unk_24F93CDE8);
  *(v0 + 1104) = v135;
  *(v0 + 1112) = v136;
  v137 = type metadata accessor for GameDetailsSummary(0);
  v138 = sub_24E7367F0(&qword_27F214738, type metadata accessor for GameDetailsSummary, &unk_24F93D6C0);
  *(v0 + 1120) = v137;
  *(v0 + 1128) = v138;
  v139 = type metadata accessor for GameDetailsSummaryCard(0);
  v140 = sub_24E7367F0(&qword_27F21AC10, type metadata accessor for GameDetailsSummaryCard, &unk_24F9CDEB0);
  *(v0 + 1136) = v139;
  *(v0 + 1144) = v140;
  v141 = type metadata accessor for GameHero(0);
  v142 = sub_24E7367F0(&qword_27F218A08, type metadata accessor for GameHero, &unk_24F949C28);
  *(v0 + 1152) = v141;
  *(v0 + 1160) = v142;
  v143 = type metadata accessor for GameHeroDetails(0);
  v144 = sub_24E7367F0(&qword_27F21AC18, type metadata accessor for GameHeroDetails, &unk_24FA0A298);
  *(v0 + 1168) = v143;
  *(v0 + 1176) = v144;
  v145 = type metadata accessor for GameInstallLockup(0);
  v146 = sub_24E7367F0(&qword_27F21AC20, type metadata accessor for GameInstallLockup, &unk_24F956FF8);
  *(v0 + 1184) = v145;
  *(v0 + 1192) = v146;
  v147 = type metadata accessor for GameLibraryMenuLockup(0);
  v148 = sub_24E7367F0(&qword_27F21AC28, type metadata accessor for GameLibraryMenuLockup, &unk_24FA2EF64);
  *(v0 + 1200) = v147;
  *(v0 + 1208) = v148;
  v149 = type metadata accessor for GameLockup(0);
  v150 = sub_24E7367F0(&qword_27F216AD0, type metadata accessor for GameLockup, &unk_24F943740);
  *(v0 + 1216) = v149;
  *(v0 + 1224) = v150;
  v151 = type metadata accessor for GroupedTable(0);
  v152 = sub_24E7367F0(&qword_27F21AC30, type metadata accessor for GroupedTable, &unk_24FA07EF8);
  *(v0 + 1232) = v151;
  *(v0 + 1240) = v152;
  v153 = type metadata accessor for GroupedTableRow(0);
  v154 = sub_24E7367F0(&qword_27F21AC38, type metadata accessor for GroupedTableRow, &unk_24FA194B8);
  *(v0 + 1248) = v153;
  *(v0 + 1256) = v154;
  v155 = type metadata accessor for GSKParagraph(0);
  v156 = sub_24E7367F0(&qword_27F21AC40, type metadata accessor for GSKParagraph, &unk_24FA2DA50);
  *(v0 + 1264) = v155;
  *(v0 + 1272) = v156;
  v157 = type metadata accessor for GSKDivider(0);
  v158 = sub_24E7367F0(&qword_27F21AC48, type metadata accessor for GSKDivider, &unk_24F9C63E8);
  *(v0 + 1280) = v157;
  *(v0 + 1288) = v158;
  v159 = type metadata accessor for IncomingFriendRequest(0);
  v160 = sub_24E7367F0(&qword_27F21A6A8, type metadata accessor for IncomingFriendRequest, &unk_24F94E838);
  *(v0 + 1296) = v159;
  *(v0 + 1304) = v160;
  v161 = type metadata accessor for InviteFriendsCard(0);
  v162 = sub_24E7367F0(&qword_27F21AC50, type metadata accessor for InviteFriendsCard, &unk_24F9BB634);
  *(v0 + 1312) = v161;
  *(v0 + 1320) = v162;
  v163 = type metadata accessor for InviteFriendsCardComponent(0);
  v164 = sub_24E7367F0(&qword_27F21AC58, type metadata accessor for InviteFriendsCardComponent, &unk_24FA3BB9C);
  *(v0 + 1328) = v163;
  *(v0 + 1336) = v164;
  v165 = type metadata accessor for InviteFriendsRow(0);
  v166 = sub_24E7367F0(&qword_27F21AC60, type metadata accessor for InviteFriendsRow, &unk_24FA23C54);
  *(v0 + 1344) = v165;
  *(v0 + 1352) = v166;
  v167 = type metadata accessor for InviteFriendsUpsellComponent(0);
  v168 = sub_24E7367F0(&qword_27F21AC68, type metadata accessor for InviteFriendsUpsellComponent, &unk_24F976F8C);
  *(v0 + 1360) = v167;
  *(v0 + 1368) = v168;
  v169 = type metadata accessor for LargePlayerLockup(0);
  v170 = sub_24E7367F0(&qword_27F21AC70, type metadata accessor for LargePlayerLockup, &unk_24FA29A70);
  *(v0 + 1376) = v169;
  *(v0 + 1384) = v170;
  v171 = type metadata accessor for LeaderboardCard(0);
  v172 = sub_24E7367F0(&qword_27F21AC78, type metadata accessor for LeaderboardCard, &unk_24FA16C20);
  *(v0 + 1392) = v171;
  *(v0 + 1400) = v172;
  v173 = type metadata accessor for LeaderboardChallengeSuggestionLockup(0);
  v174 = sub_24E7367F0(&qword_27F21AC80, type metadata accessor for LeaderboardChallengeSuggestionLockup, &unk_24F9F02D8);
  *(v0 + 1408) = v173;
  *(v0 + 1416) = v174;
  v175 = type metadata accessor for LeaderboardWithFriendCard(0);
  v176 = sub_24E7367F0(&qword_27F21AC88, type metadata accessor for LeaderboardWithFriendCard, &unk_24F9EEC0C);
  *(v0 + 1424) = v175;
  *(v0 + 1432) = v176;
  v177 = type metadata accessor for LeaderboardPersonalBestCard(0);
  v178 = sub_24E7367F0(&qword_27F21AC90, type metadata accessor for LeaderboardPersonalBestCard, &unk_24FA1AA7C);
  *(v0 + 1440) = v177;
  *(v0 + 1448) = v178;
  v179 = type metadata accessor for LeaderboardActionButton(0);
  v180 = sub_24E7367F0(&qword_27F21AC98, type metadata accessor for LeaderboardActionButton, &unk_24F95B348);
  *(v0 + 1456) = v179;
  *(v0 + 1464) = v180;
  v181 = type metadata accessor for LeaderboardEntryTable(0);
  v182 = sub_24E7367F0(&qword_27F21ACA0, type metadata accessor for LeaderboardEntryTable, &unk_24F9E60C8);
  *(v0 + 1472) = v181;
  *(v0 + 1480) = v182;
  v183 = type metadata accessor for LeaderboardEntryTableRow(0);
  v184 = sub_24E7367F0(&qword_27F21ACA8, type metadata accessor for LeaderboardEntryTableRow, &unk_24F954EF0);
  *(v0 + 1488) = v183;
  *(v0 + 1496) = v184;
  v185 = type metadata accessor for LeaderboardRow(0);
  v186 = sub_24E7367F0(&qword_27F21ACB0, type metadata accessor for LeaderboardRow, &unk_24F9C6F18);
  *(v0 + 1504) = v185;
  *(v0 + 1512) = v186;
  v187 = type metadata accessor for LeaderboardSetCard(0);
  v188 = sub_24E7367F0(&qword_27F21ACB8, type metadata accessor for LeaderboardSetCard, &unk_24FA29F78);
  *(v0 + 1520) = v187;
  *(v0 + 1528) = v188;
  v189 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v190 = sub_24E7367F0(&qword_27F21ACC0, type metadata accessor for LeaderboardsCountHeaderItem, &unk_24FA18510);
  *(v0 + 1536) = v189;
  *(v0 + 1544) = v190;
  v191 = type metadata accessor for LeaderboardTimer(0);
  v192 = sub_24E7367F0(&qword_27F21ACC8, type metadata accessor for LeaderboardTimer, &unk_24F952F00);
  *(v0 + 1552) = v191;
  *(v0 + 1560) = v192;
  v193 = type metadata accessor for LinkPlatter(0);
  v194 = sub_24E7367F0(&qword_27F21ACD0, type metadata accessor for LinkPlatter, &unk_24FA37FAC);
  *(v0 + 1568) = v193;
  *(v0 + 1576) = v194;
  v195 = type metadata accessor for LockupCollectionSearchItem(0);
  v196 = sub_24E7367F0(&qword_27F21ACD8, type metadata accessor for LockupCollectionSearchItem, &unk_24F9726FC);
  *(v0 + 1584) = v195;
  *(v0 + 1592) = v196;
  v197 = type metadata accessor for MediaCard(0);
  v198 = sub_24E7367F0(&qword_27F21ACE0, type metadata accessor for MediaCard, &unk_24F9F25CC);
  *(v0 + 1600) = v197;
  *(v0 + 1608) = v198;
  v199 = type metadata accessor for MultiplayerInviteLockup(0);
  v200 = sub_24E7367F0(&qword_27F21ACE8, type metadata accessor for MultiplayerInviteLockup, &unk_24F9F8498);
  *(v0 + 1616) = v199;
  *(v0 + 1624) = v200;
  v201 = type metadata accessor for NotImplemented(0);
  v202 = sub_24E7367F0(&qword_27F21ACF0, type metadata accessor for NotImplemented, &unk_24FA1C8E0);
  *(v0 + 1632) = v201;
  *(v0 + 1640) = v202;
  v203 = type metadata accessor for OptionSetting(0);
  v204 = sub_24E7367F0(&qword_27F21ACF8, type metadata accessor for OptionSetting, &unk_24F96407C);
  *(v0 + 1648) = v203;
  *(v0 + 1656) = v204;
  v205 = type metadata accessor for OverlayCapsuleLockup(0);
  v206 = sub_24E7367F0(&qword_27F21AD00, type metadata accessor for OverlayCapsuleLockup, &protocol conformance descriptor for OverlayCapsuleLockup);
  *(v0 + 1664) = v205;
  *(v0 + 1672) = v206;
  v207 = type metadata accessor for OverlayPlatterLockup(0);
  v208 = sub_24E7367F0(&qword_27F217048, type metadata accessor for OverlayPlatterLockup, &unk_24F9450E0);
  *(v0 + 1680) = v207;
  *(v0 + 1688) = v208;
  v209 = type metadata accessor for OverlayUnavailableNowPlayingFeatures(0);
  v210 = sub_24E7367F0(&qword_27F21AD08, type metadata accessor for OverlayUnavailableNowPlayingFeatures, &protocol conformance descriptor for OverlayUnavailableNowPlayingFeatures);
  *(v0 + 1696) = v209;
  *(v0 + 1704) = v210;
  v211 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  v212 = sub_24E7367F0(&qword_27F21AD10, type metadata accessor for OverlayHomeButtonReservedNotice, &protocol conformance descriptor for OverlayHomeButtonReservedNotice);
  *(v0 + 1712) = v211;
  *(v0 + 1720) = v212;
  v213 = type metadata accessor for OverlayCardLockup(0);
  v214 = sub_24E7367F0(&qword_27F21AD18, type metadata accessor for OverlayCardLockup, &protocol conformance descriptor for OverlayCardLockup);
  *(v0 + 1728) = v213;
  *(v0 + 1736) = v214;
  v215 = type metadata accessor for OverviewTile(0);
  v216 = sub_24E7367F0(&qword_27F21AD20, type metadata accessor for OverviewTile, &unk_24FA21920);
  *(v0 + 1744) = v215;
  *(v0 + 1752) = v216;
  v217 = type metadata accessor for PlayTogetherActivityTile(0);
  v218 = sub_24E7367F0(&qword_27F21AD28, type metadata accessor for PlayTogetherActivityTile, &unk_24F956C38);
  *(v0 + 1760) = v217;
  *(v0 + 1768) = v218;
  v219 = type metadata accessor for PlayTogetherTile(0);
  v220 = sub_24E7367F0(&qword_27F21AD30, type metadata accessor for PlayTogetherTile, &unk_24FA08F94);
  *(v0 + 1776) = v219;
  *(v0 + 1784) = v220;
  v221 = type metadata accessor for PlayerLockup(0);
  v222 = sub_24E7367F0(&qword_27F21AD38, type metadata accessor for PlayerLockup, "Aʁ2");
  *(v0 + 1792) = v221;
  *(v0 + 1800) = v222;
  v223 = type metadata accessor for ProfileEditor(0);
  v224 = sub_24E7367F0(&qword_27F21AD40, type metadata accessor for ProfileEditor, &unk_24F9EA100);
  *(v0 + 1808) = v223;
  *(v0 + 1816) = v224;
  v225 = type metadata accessor for ProfileHero(0);
  v226 = sub_24E7367F0(&qword_27F21AD48, type metadata accessor for ProfileHero, &unk_24F9584A0);
  *(v0 + 1824) = v225;
  *(v0 + 1832) = v226;
  v227 = type metadata accessor for Ratings(0);
  v228 = sub_24E7367F0(&qword_27F21AD50, type metadata accessor for Ratings, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  *(v0 + 1840) = v227;
  *(v0 + 1848) = v228;
  v229 = type metadata accessor for RecordingRowLockup(0);
  v230 = sub_24E7367F0(&qword_27F21AD58, type metadata accessor for RecordingRowLockup, &unk_24FA336B4);
  *(v0 + 1856) = v229;
  *(v0 + 1864) = v230;
  v231 = type metadata accessor for ReleaseStateIndicator(0);
  v232 = sub_24E7367F0(&qword_27F21AD60, type metadata accessor for ReleaseStateIndicator, &unk_24F9BD0C8);
  *(v0 + 1872) = v231;
  *(v0 + 1880) = v232;
  v233 = type metadata accessor for SearchAppStoreButton(0);
  v234 = sub_24E7367F0(&qword_27F21AD68, type metadata accessor for SearchAppStoreButton, &unk_24F9EE7C0);
  *(v0 + 1888) = v233;
  *(v0 + 1896) = v234;
  v235 = type metadata accessor for SearchCard(0);
  v236 = sub_24E7367F0(&qword_27F219668, type metadata accessor for SearchCard, &unk_24F94C5AC);
  *(v0 + 1904) = v235;
  *(v0 + 1912) = v236;
  v237 = type metadata accessor for SearchPromptItem(0);
  v238 = sub_24E7367F0(&qword_27F21AD70, type metadata accessor for SearchPromptItem, &unk_24F961480);
  *(v0 + 1920) = v237;
  *(v0 + 1928) = v238;
  v239 = type metadata accessor for SettingsResetButton(0);
  v240 = sub_24E7367F0(&qword_27F21AD78, type metadata accessor for SettingsResetButton, &unk_24FA1BA40);
  *(v0 + 1936) = v239;
  *(v0 + 1944) = v240;
  v241 = type metadata accessor for SmallBrick(0);
  v242 = sub_24E7367F0(&qword_27F21AD80, type metadata accessor for SmallBrick, &unk_24F97F080);
  *(v0 + 1952) = v241;
  *(v0 + 1960) = v242;
  v243 = type metadata accessor for SocialSuggestionLockup(0);
  v244 = sub_24E7367F0(&qword_27F21AD88, type metadata accessor for SocialSuggestionLockup, &unk_24F9D9494);
  *(v0 + 1968) = v243;
  *(v0 + 1976) = v244;
  v245 = type metadata accessor for SocialSuggestionsComponentGrid(0);
  result = sub_24E7367F0(&qword_27F21AD90, type metadata accessor for SocialSuggestionsComponentGrid, &unk_24F996860);
  *(v0 + 1984) = v245;
  *(v0 + 1992) = result;
  off_27F21A9F0 = v0;
  return result;
}

uint64_t sub_24E735A48()
{
  if (qword_27F20FE40 != -1)
  {
    swift_once();
  }

  v0 = off_27F21A9F0;
  v1 = *(off_27F21A9F0 + 2);
  if (v1)
  {

    v2 = MEMORY[0x277D84F90];
    v3 = 32;
    do
    {
      v13 = *&v0[v3];
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA10, &qword_24F94F420);
      v4 = sub_24F92B188();
      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_24E6173E8(0, v2[2] + 1, 1, v2);
      }

      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        v2 = sub_24E6173E8((v7 > 1), v8 + 1, 1, v2);
      }

      v2[2] = v8 + 1;
      v9 = &v2[4 * v8];
      v9[4] = v4;
      v9[5] = v6;
      *(v9 + 3) = v13;
      v3 += 16;
      --v1;
    }

    while (v1);

    if (v2[2])
    {
      goto LABEL_11;
    }

LABEL_13:
    v10 = MEMORY[0x277D84F98];
    goto LABEL_14;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_13;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA20, &unk_24F963E00);
  v10 = sub_24F92CB58();
LABEL_14:
  *&v14 = v10;

  sub_24E73623C(v11, 1, &v14);

  off_27F21A9F8 = v14;
  return result;
}

double static ComponentKinds.table.getter()
{
  if (qword_27F20FE48 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_24E735CA0()
{
  result = qword_27F21AA00;
  if (!qword_27F21AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AA00);
  }

  return result;
}

double sub_24E735CF4()
{
  if (qword_27F20FE48 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_24E735D50()
{
  if (qword_27F20FE48 != -1)
  {
    swift_once();
  }

  v1 = off_27F21A9F8;

  sub_24E7365C8(v1);
}

uint64_t sub_24E735DD4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_24F9285B8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24F928388();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x277D21D00], MEMORY[0x277D83A88]);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    sub_24E615E00(a2, v30);
    *&v32 = v12;
    *(&v32 + 1) = v13;
    v33 = v14;
    __swift_allocate_boxed_opaque_existential_1(v31);
    sub_24F92BA78();
    if (v3)
    {
      return __swift_deallocate_boxed_opaque_existential_2(v31);
    }

LABEL_7:
    v29 = v32;
    v22 = v32;
    v23 = __swift_project_boxed_opaque_existential_1(v31, v32);
    *(a3 + 24) = v29;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v23, v22);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v16 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x277D21D00], MEMORY[0x277D21F48]);
  if (v16)
  {
    v19 = v16;
    v20 = v17;
    v21 = v18;
    sub_24E615E00(a2, v30);
    result = sub_24F928298();
    if (v3)
    {
      return result;
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_24F92D0E8();
    sub_24F928598();
    *&v32 = v19;
    *(&v32 + 1) = v20;
    v33 = v21;
    __swift_allocate_boxed_opaque_existential_1(v31);
    sub_24F929538();
    goto LABEL_7;
  }

  v25 = sub_24F92C918();
  swift_allocError();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
  *v27 = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F92D0C8();
  sub_24F92C888();

  v31[0] = 60;
  v31[1] = 0xE100000000000000;
  v28 = sub_24F92D1E8();
  MEMORY[0x253050C20](v28);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA46560);
  sub_24F92C908();
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
  return swift_willThrow();
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2530542D0);
  }

  return result;
}

void sub_24E73623C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v37 = *(a1 + 48);
  v9 = *a3;

  v10 = sub_24E76D644(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24E89AE38(v15, v6 & 1);
    v10 = sub_24E76D644(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_24F92CF88();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_24E8AEC48();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + 16 * v10) = v37;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001BLL, 0x800000024FA45540);
    sub_24F92CA38();
    MEMORY[0x253050C20](39, 0xE100000000000000);
    sub_24F92CA88();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 80);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v37 = *v6;
      v26 = *a3;

      v27 = sub_24E76D644(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_24E89AE38(v31, 1);
        v27 = sub_24E76D644(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + 16 * v27) = v37;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_24E7365C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA08, &unk_24F9CE4F0);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA10, &qword_24F94F420);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA18, &qword_24F9CE500);
        swift_dynamicCast();
        v15 = sub_24E76D644(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_24E7367F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ChallengesHistoryHeaderShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengesHistoryHeaderShelfIntent.game.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ChallengesHistoryHeaderShelfIntent(0) + 36);

  return sub_24E736938(v3, a1);
}

uint64_t type metadata accessor for ChallengesHistoryHeaderShelfIntent(uint64_t a1)
{
  result = qword_27F21ADB8;
  if (!qword_27F21ADB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E736938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t ChallengesHistoryHeaderShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  strcpy((inited + 88), "completedCount");
  *(inited + 103) = -18;
  v7 = v1[2];
  v8 = MEMORY[0x277D83B88];
  *(inited + 128) = MEMORY[0x277D83B88];
  v9 = sub_24E65901C();
  *(inited + 104) = v7;
  *(inited + 136) = v9;
  *(inited + 144) = 0x6E756F43656D6167;
  *(inited + 152) = 0xE900000000000074;
  v10 = v1[3];
  v11 = *(v1 + 32);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
  v12 = sub_24E658F98();
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  *(inited + 192) = v12;
  *(inited + 200) = 0x6F43646E65697266;
  *(inited + 208) = 0xEB00000000746E75;
  v13 = v1[5];
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v13;
  *(inited + 256) = 0x796C6E4F6E6977;
  *(inited + 264) = 0xE700000000000000;
  LOBYTE(v13) = *(v1 + 48);
  v14 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v14;
  *(inited + 272) = v13;
  *(inited + 312) = 1701667175;
  *(inited + 320) = 0xE400000000000000;
  v15 = *(type metadata accessor for ChallengesHistoryHeaderShelfIntent(0) + 36);
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  *(inited + 360) = sub_24E736C00();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  sub_24E736938(v1 + v15, boxed_opaque_existential_1);

  v17 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

unint64_t sub_24E736C00()
{
  result = qword_27F21AD98;
  if (!qword_27F21AD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216FE0, &unk_24F959350);
    sub_24E70EA88(&qword_27F217960, &protocol conformance descriptor for Game);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AD98);
  }

  return result;
}

uint64_t sub_24E736CA0()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x6F43646E65697266;
  v4 = 0x796C6E4F6E6977;
  if (v1 != 4)
  {
    v4 = 1701667175;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574656C706D6F63;
  if (v1 != 1)
  {
    v5 = 0x6E756F43656D6167;
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

uint64_t sub_24E736D68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7379C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E736D90(uint64_t a1)
{
  v2 = sub_24E737490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E736DCC(uint64_t a1)
{
  v2 = sub_24E737490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHistoryHeaderShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ADA0, &qword_24F94F460);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E737490();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD38();
    v8[13] = 2;
    sub_24F92CCE8();
    v8[12] = 3;
    sub_24F92CD38();
    v8[11] = 4;
    sub_24F92CD18();
    type metadata accessor for ChallengesHistoryHeaderShelfIntent(0);
    v8[10] = 5;
    type metadata accessor for Game(0);
    sub_24E70EA88(&qword_27F214950, &protocol conformance descriptor for Game);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengesHistoryHeaderShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ADB0, &qword_24F94F468);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ChallengesHistoryHeaderShelfIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E737490();
  v12 = v25;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v21 = v9;
  v25 = v5;
  v15 = v23;
  v14 = v24;
  v31 = 0;
  *v11 = sub_24F92CC28();
  *(v11 + 1) = v16;
  v30 = 1;
  *(v11 + 2) = sub_24F92CC58();
  v29 = 2;
  *(v11 + 3) = sub_24F92CC08();
  v11[32] = v17 & 1;
  v28 = 3;
  *(v11 + 5) = sub_24F92CC58();
  v27 = 4;
  v11[48] = sub_24F92CC38() & 1;
  type metadata accessor for Game(0);
  v26 = 5;
  sub_24E70EA88(&qword_27F214968, &protocol conformance descriptor for Game);
  v18 = v25;
  sub_24F92CC18();
  (*(v15 + 8))(v8, v14);
  sub_24E7374E4(v18, &v11[*(v21 + 36)]);
  sub_24E737554(v11, v22);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24E7375B8(v11);
}

unint64_t sub_24E737490()
{
  result = qword_27F21ADA8;
  if (!qword_27F21ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ADA8);
  }

  return result;
}

uint64_t sub_24E7374E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E737554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesHistoryHeaderShelfIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7375B8(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesHistoryHeaderShelfIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E737628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E7376F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7377A8(uint64_t a1)
{
  sub_24E659BE8();
  if (v1 <= 0x3F)
  {
    sub_24E737854(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E737854(uint64_t a1)
{
  if (!qword_27F21ADC8)
  {
    type metadata accessor for Game(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21ADC8);
    }
  }
}

unint64_t sub_24E7378C0()
{
  result = qword_27F21ADD0;
  if (!qword_27F21ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ADD0);
  }

  return result;
}

unint64_t sub_24E737918()
{
  result = qword_27F21ADD8;
  if (!qword_27F21ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ADD8);
  }

  return result;
}

unint64_t sub_24E737970()
{
  result = qword_27F21ADE0;
  if (!qword_27F21ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ADE0);
  }

  return result;
}

uint64_t sub_24E7379C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F43656D6167 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43646E65697266 && a2 == 0xEB00000000746E75 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C6E4F6E6977 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t ChallengesAllLeaderboardsShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = type metadata accessor for GSKShelf(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *a2;
  v5 = *(a2 + 24);
  *(v3 + 72) = *(a2 + 16);
  *(v3 + 80) = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  *(v3 + 88) = v6;
  *(v3 + 96) = v7;

  return MEMORY[0x2822009F8](sub_24E737C9C, 0, 0);
}

uint64_t sub_24E737C9C()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_24E737D4C;
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[3];

  return sub_24E646310(v5, v4, v2, v3, v6);
}

uint64_t sub_24E737D4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_24E73814C;
  }

  else
  {

    v4 = sub_24E737E74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E737E74()
{

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_24E737F34;
  v2 = v0[14];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];

  return sub_24E6467B8(v5, v2, v3, v4, v6);
}

uint64_t sub_24E737F34()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E7381D8;
  }

  else
  {

    v2 = sub_24E73805C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E73805C()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_24E614E60(v1, v0[5]);
  sub_24F928138();
  sub_24E614EC4(v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E73814C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7381D8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24E738268()
{
  result = qword_27F21ADE8;
  if (!qword_27F21ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ADE8);
  }

  return result;
}

uint64_t sub_24E7382BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengesAllLeaderboardsShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t InGameBannerPageConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for InGameBannerPageConstructionIntent(uint64_t a1)
{
  result = qword_27F21AE10;
  if (!qword_27F21AE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t InGameBannerPageConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = MEMORY[0x277D22580];
  v5 = *v1;
  v6 = v1[1];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x800000024FA46580;
  v7 = *(type metadata accessor for InGameBannerPageConstructionIntent(0) + 20);
  *(inited + 128) = type metadata accessor for InGameBannerRequiredData(0);
  *(inited + 136) = sub_24E7330EC(&qword_27F21ADF0, &protocol conformance descriptor for InGameBannerRequiredData);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E738EA4(v1 + v7, boxed_opaque_existential_1, type metadata accessor for InGameBannerRequiredData);

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24E7385F0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E73862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46580 == a2)
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

uint64_t sub_24E73870C(uint64_t a1)
{
  v2 = sub_24E738DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E738748(uint64_t a1)
{
  v2 = sub_24E738DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InGameBannerPageConstructionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ADF8, &qword_24F94F760);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E738DEC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for InGameBannerPageConstructionIntent(0);
    v8[14] = 1;
    type metadata accessor for InGameBannerRequiredData(0);
    sub_24E7330EC(&qword_27F21A9B0, &protocol conformance descriptor for InGameBannerRequiredData);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InGameBannerPageConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for InGameBannerRequiredData(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE08, &qword_24F94F768);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for InGameBannerPageConstructionIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E738DEC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v20 = 1;
  sub_24E7330EC(&qword_27F21A9C0, &protocol conformance descriptor for InGameBannerRequiredData);
  sub_24F92CC68();
  (*(v11 + 8))(v7, v19);
  sub_24E738E40(v5, v10 + *(v15 + 20));
  sub_24E738EA4(v10, v16, type metadata accessor for InGameBannerPageConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E738F0C(v10);
}

unint64_t sub_24E738C60@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v6 = *v2;
  v7 = v2[1];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x800000024FA46580;
  v9 = *(a1 + 20);
  *(inited + 128) = type metadata accessor for InGameBannerRequiredData(0);
  *(inited + 136) = sub_24E7330EC(&qword_27F21ADF0, &protocol conformance descriptor for InGameBannerRequiredData);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E738EA4(v2 + v9, boxed_opaque_existential_1, type metadata accessor for InGameBannerRequiredData);

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t sub_24E738DEC()
{
  result = qword_27F21AE00;
  if (!qword_27F21AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE00);
  }

  return result;
}

uint64_t sub_24E738E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerRequiredData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E738EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E738F0C(uint64_t a1)
{
  v2 = type metadata accessor for InGameBannerPageConstructionIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E738F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InGameBannerRequiredData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E73903C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InGameBannerRequiredData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E7390E0(uint64_t a1)
{
  result = type metadata accessor for InGameBannerRequiredData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E739170()
{
  result = qword_27F21AE20;
  if (!qword_27F21AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE20);
  }

  return result;
}

unint64_t sub_24E7391C8()
{
  result = qword_27F21AE28;
  if (!qword_27F21AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE28);
  }

  return result;
}

unint64_t sub_24E739220()
{
  result = qword_27F21AE30;
  if (!qword_27F21AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE30);
  }

  return result;
}

uint64_t sub_24E739274(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040, &unk_24F940690);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0, &unk_24F967B30);
  sub_24F924038();
  sub_24E6A4C1C();
  sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
  swift_getWitnessTable();
  return sub_24F926B08();
}

uint64_t sub_24E739418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v27 = a2;
  v8 = sub_24F924218();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for CommonCardAttributes(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a5 + 8);
  v30[3] = a3;
  v30[4] = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  (*(a5 + 24))(a3, a5);
  v21 = v18[*(v16 + 92)];
  if (v21 == 2 || (v21 & 1) == 0)
  {
    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58, &qword_24F967B40);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24F93DE60;
    sub_24F924208();
    v29 = v22;
  }

  sub_24E73A600(&qword_27F216C88, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40, &unk_24F94F9F0);
  sub_24E602068(&qword_27F21AE48, &qword_27F21AE40, &unk_24F94F9F0, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  sub_24E73A648(v18, type metadata accessor for CommonCardAttributes);
  v23 = MEMORY[0x277CDFB98];
  sub_24E73A600(&qword_27F216C88, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  sub_24F92C698();
  sub_24E73A600(&qword_27F21AE50, v23, MEMORY[0x277CDFBA0]);
  LOBYTE(v23) = sub_24F92AFF8();
  v24 = *(v9 + 8);
  v24(v11, v8);
  v24(v14, v8);
  sub_24EADA8F0(v30, v23 & 1, v27, v28);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_24E7397B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v2 = sub_24F924258();
  MEMORY[0x28223BE20](v2);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = (&v22 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEA0, &unk_24F94FAB8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  if (byte_27F39D1B1)
  {
    v11 = 32.0;
  }

  else
  {
    v11 = 26.0;
  }

  v12 = *(v2 + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_24F924B38();
  v15 = *(*(v14 - 8) + 104);
  v15(v7 + v12, v13, v14);
  *v7 = v11;
  v7[1] = v11;
  v16 = &v10[*(v8 + 36)];
  sub_24E73A8FC(v7, v16);
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)) = 256;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEA8, &qword_24F94FAC8);
  (*(*(v17 - 8) + 16))(v10, v22, v17);
  v15(v4 + *(v2 + 20), v13, v14);
  *v4 = v11;
  v4[1] = v11;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEB0, &qword_24F94FAD0);
  v19 = v23;
  v20 = v23 + *(v18 + 36);
  sub_24E73A8FC(v4, v20);
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEB8, &qword_24F94FAD8) + 36)) = 0;
  return sub_24E73A960(v10, v19);
}

uint64_t sub_24E739A54@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a3;
  v4 = sub_24F924258();
  MEMORY[0x28223BE20](v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040, &unk_24F940690);
  v7 = sub_24F924038();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0, &unk_24F967B30);
  v10 = sub_24F924038();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  sub_24E72FF4C();
  sub_24F926418();
  v16 = *(v4 + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_24F924B38();
  (*(*(v18 - 8) + 104))(&v6->i8[v16], v17, v18);
  *v6 = vdupq_n_s64(0x4040000000000000uLL);
  v19 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
  v30 = a2;
  v31 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_24E73A600(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  sub_24F5A41C0(v6, v7, v4, WitnessTable);
  sub_24E73A648(v6, MEMORY[0x277CDFC08]);
  (*(v25 + 8))(v9, v7);
  v21 = sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
  v28 = WitnessTable;
  v29 = v21;
  swift_getWitnessTable();
  sub_24E7896B8();
  v22 = *(v26 + 8);
  v22(v12, v10);
  sub_24E7896B8();
  return (v22)(v15, v10);
}

uint64_t sub_24E739E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v36 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  v12 = sub_24F924038();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v32[-v17];
  v19 = sub_24F924E38();
  v34 = *(v19 - 8);
  v35 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v32[-v21];
  if (v33)
  {
    MEMORY[0x25304C420](v20);
    v23 = sub_24E73A224();
    v37 = a3;
    v38 = v23;
    WitnessTable = swift_getWitnessTable();
    sub_24E7896B8();
    v25 = *(v13 + 8);
    v25(v15, v12);
    sub_24E7896B8();
    sub_24ECCCBA0(v15, v12, a2, WitnessTable, a3);
    v25(v15, v12);
    v25(v18, v12);
  }

  else
  {
    sub_24E7896B8();
    sub_24E7896B8();
    v26 = sub_24E73A224();
    v43 = a3;
    v44 = v26;
    v27 = swift_getWitnessTable();
    sub_24ECCCC98(v8, v12, a2, v27, a3);
    v28 = *(v6 + 8);
    v28(v8, a2);
    v28(v11, a2);
  }

  v29 = sub_24E73A224();
  v41 = a3;
  v42 = v29;
  v39 = swift_getWitnessTable();
  v40 = a3;
  v30 = v35;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v34 + 8))(v22, v30);
}

unint64_t sub_24E73A224()
{
  result = qword_27F21AE38;
  if (!qword_27F21AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE38);
  }

  return result;
}

uint64_t sub_24E73A2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924B38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  if (byte_27F39D1B1)
  {
    v8 = 32.0;
  }

  else
  {
    v8 = 26.0;
  }

  (*(v5 + 104))(v7, *MEMORY[0x277CE0118], v4);
  v9 = sub_24F924258();
  v31 = v9;
  v32 = sub_24E73A600(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(v5 + 16))(boxed_opaque_existential_1 + *(v9 + 20), v7, v4);
  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v8;
  (*(v5 + 8))(v7, v4);
  sub_24E612C80(&v30, v33);
  sub_24E73A6A8(v33, a2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE68, &qword_24F94FA08);
  v12 = v11[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE70, &qword_24F94FA10);
  (*(*(v13 - 8) + 16))(a2 + v12, a1, v13);
  v14 = a2 + v11[10];
  *v14 = sub_24F923398() & 1;
  *(v14 + 8) = v15;
  *(v14 + 16) = v16 & 1;
  v17 = a2 + v11[11];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v18 = qword_27F24E488;
  v19 = sub_24F923398();
  v21 = v20;
  v23 = v22;
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE78, &qword_24F94FA40) + 36);
  *v24 = v18;
  *(v24 + 8) = v19 & 1;
  *(v24 + 16) = v21;
  *(v24 + 24) = v23 & 1;
  LOBYTE(v18) = sub_24F923398();
  v26 = v25;
  LOBYTE(v21) = v27;
  sub_24E73A720(v33);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE80, &qword_24F94FA48);
  v29 = a2 + *(result + 36);
  *v29 = v18 & 1;
  *(v29 + 8) = v26;
  *(v29 + 16) = v21 & 1;
  return result;
}

uint64_t sub_24E73A600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E73A648(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E73A6A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE60, &qword_24F94FA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E73A720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE60, &qword_24F94FA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E73A79C()
{
  result = qword_27F21AE88;
  if (!qword_27F21AE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AE80, &qword_24F94FA48);
    sub_24E73A828();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE88);
  }

  return result;
}

unint64_t sub_24E73A828()
{
  result = qword_27F21AE90;
  if (!qword_27F21AE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AE78, &qword_24F94FA40);
    sub_24E602068(&qword_27F21AE98, &qword_27F21AE68, &qword_24F94FA08, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE90);
  }

  return result;
}

uint64_t sub_24E73A8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E73A960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEA0, &unk_24F94FAB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E73A9D4()
{
  result = qword_27F21AEC0;
  if (!qword_27F21AEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEB0, &qword_24F94FAD0);
    sub_24E73AA8C();
    sub_24E602068(&qword_27F21AED8, &qword_27F21AEB8, &qword_24F94FAD8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AEC0);
  }

  return result;
}

unint64_t sub_24E73AA8C()
{
  result = qword_27F21AEC8;
  if (!qword_27F21AEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEA0, &unk_24F94FAB8);
    sub_24E602068(&qword_27F21AED0, &qword_27F21AEA8, &qword_24F94FAC8, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AEC8);
  }

  return result;
}

unint64_t ChallengesFriendComparisonCompletedShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v10;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 88) = 0x614E646E65697266;
  *(inited + 96) = 0xEA0000000000656DLL;
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  *(inited + 104) = v5;
  *(inited + 112) = v6;
  *(inited + 144) = 0xD000000000000013;
  *(inited + 152) = 0x800000024FA465A0;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEE0, &qword_24F9598D0);
  *(inited + 192) = sub_24E73B1DC(&qword_27F21AEE8, &qword_27F21AEF0, &protocol conformance descriptor for Challenge, MEMORY[0x277D22590]);
  *(inited + 160) = v7;

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v11;
  return result;
}

unint64_t sub_24E73AD64()
{
  v1 = 0x614E646E65697266;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E73ADC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E73B460(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E73ADEC(uint64_t a1)
{
  v2 = sub_24E73B188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E73AE28(uint64_t a1)
{
  v2 = sub_24E73B188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesFriendComparisonCompletedShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEF8, &qword_24F94FB10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E73B188();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v18 = v9;
  v21 = 1;
  v16 = sub_24F92CC28();
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEE0, &qword_24F9598D0);
  v20 = 2;
  sub_24E73B1DC(&qword_27F21AF08, &qword_27F21AF10, &protocol conformance descriptor for Challenge, MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  *a2 = v18;
  a2[1] = v11;
  v14 = v17;
  a2[2] = v16;
  a2[3] = v14;
  a2[4] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E73B188()
{
  result = qword_27F21AF00;
  if (!qword_27F21AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF00);
  }

  return result;
}

uint64_t sub_24E73B1DC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEE0, &qword_24F9598D0);
    sub_24E73B264(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E73B264(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Challenge(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E73B2A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24E73B2F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24E73B35C()
{
  result = qword_27F21AF18;
  if (!qword_27F21AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF18);
  }

  return result;
}

unint64_t sub_24E73B3B4()
{
  result = qword_27F21AF20;
  if (!qword_27F21AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF20);
  }

  return result;
}

unint64_t sub_24E73B40C()
{
  result = qword_27F21AF28;
  if (!qword_27F21AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF28);
  }

  return result;
}

uint64_t sub_24E73B460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E646E65697266 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA465A0 == a2)
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

uint64_t sub_24E73B5A0(uint64_t a1)
{
  v2 = sub_24E73B72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E73B5DC(uint64_t a1)
{
  v2 = sub_24E73B72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendOutboxDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF30, &qword_24F94FD38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E73B72C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E73B72C()
{
  result = qword_27F21AF38;
  if (!qword_27F21AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF38);
  }

  return result;
}

uint64_t sub_24E73B7C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF30, &qword_24F94FD38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E73B72C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E73B900()
{
  result = qword_27F21AF40;
  if (!qword_27F21AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF40);
  }

  return result;
}

unint64_t sub_24E73B958()
{
  result = qword_27F21AF48;
  if (!qword_27F21AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF48);
  }

  return result;
}

uint64_t sub_24E73BA20(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v11 = xmmword_27F2543E0;
  v4 = qword_27F2543F0;
  v5 = qword_27F2543F8;
  v6 = sub_24E609BDC(&unk_2861BD058);
  v7 = sub_24E609BF0(&unk_2861BD0C8);
  v8 = sub_24E609CD8(&unk_2861BD160);
  v9 = sub_24E609DC4(&unk_2861BD1D0);
  xmmword_27F39A8F8 = 5uLL;
  qword_27F39A908 = v1;
  unk_27F39A910 = v3;
  xmmword_27F39A918 = v11;
  qword_27F39A928 = v4;
  qword_27F39A930 = v5;
  unk_27F39A938 = v6;
  qword_27F39A940 = v7;
  unk_27F39A948 = v8;
  qword_27F39A950 = v9;
  byte_27F39A958 = 1;
}

uint64_t sub_24E73BB34(double a1)
{
  v1 = sub_24F9275F8();
  v3 = v2;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v11 = xmmword_27F2543E0;
  v4 = qword_27F2543F0;
  v5 = qword_27F2543F8;
  v6 = sub_24E609BDC(&unk_2861BD240);
  v7 = sub_24E609BF0(&unk_2861BD2B0);
  v8 = sub_24E609CD8(&unk_2861BD348);
  v9 = sub_24E609DC4(&unk_2861BD3B8);
  *&xmmword_27F39A960 = 5;
  *(&xmmword_27F39A960 + 1) = 0x4050000000000000;
  qword_27F39A970 = v1;
  unk_27F39A978 = v3;
  xmmword_27F39A980 = v11;
  qword_27F39A990 = v4;
  qword_27F39A998 = v5;
  unk_27F39A9A0 = v6;
  qword_27F39A9A8 = v7;
  unk_27F39A9B0 = v8;
  qword_27F39A9B8 = v9;
  byte_27F39A9C0 = 1;
}

uint64_t sub_24E73BC4C(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  if (qword_27F211958 != -1)
  {
    swift_once();
  }

  v11 = xmmword_27F254420;
  v4 = qword_27F254430;
  v5 = qword_27F254438;
  v6 = sub_24E609BDC(&unk_2861BD428);
  v7 = sub_24E609BF0(&unk_2861BD478);
  v8 = sub_24E609CD8(&unk_2861BD4E0);
  v9 = sub_24E609DC4(&unk_2861BD550);
  xmmword_27F39A9C8 = 3uLL;
  qword_27F39A9D8 = v1;
  unk_27F39A9E0 = v3;
  xmmword_27F39A9E8 = v11;
  qword_27F39A9F8 = v4;
  qword_27F39AA00 = v5;
  unk_27F39AA08 = v6;
  qword_27F39AA10 = v7;
  unk_27F39AA18 = v8;
  qword_27F39AA20 = v9;
  byte_27F39AA28 = 0;
}

uint64_t sub_24E73BD5C(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v11 = xmmword_27F254460;
  v4 = qword_27F254470;
  v5 = qword_27F254478;
  v6 = sub_24E609BDC(&unk_2861BCF50);
  v7 = sub_24E609BF0(&unk_2861BCF80);
  v8 = sub_24E609CD8(&unk_2861BCFB8);
  v9 = sub_24E609DC4(&unk_2861BCFE8);
  xmmword_27F39AA30 = 1uLL;
  qword_27F39AA40 = v1;
  unk_27F39AA48 = v3;
  xmmword_27F39AA50 = v11;
  qword_27F39AA60 = v4;
  qword_27F39AA68 = v5;
  unk_27F39AA70 = v6;
  qword_27F39AA78 = v7;
  unk_27F39AA80 = v8;
  qword_27F39AA88 = v9;
  byte_27F39AA90 = 0;
}

uint64_t sub_24E73BE6C(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v11 = xmmword_27F2543E0;
  v4 = qword_27F2543F0;
  v5 = qword_27F2543F8;
  v6 = sub_24E609BDC(&unk_2861BD5C0);
  v7 = sub_24E609BF0(&unk_2861BD630);
  v8 = sub_24E609CD8(&unk_2861BD6C8);
  v9 = sub_24E609DC4(&unk_2861BD738);
  xmmword_27F39AA98 = 5uLL;
  qword_27F39AAA8 = v1;
  unk_27F39AAB0 = v3;
  xmmword_27F39AAB8 = v11;
  qword_27F39AAC8 = v4;
  qword_27F39AAD0 = v5;
  unk_27F39AAD8 = v6;
  qword_27F39AAE0 = v7;
  unk_27F39AAE8 = v8;
  qword_27F39AAF0 = v9;
  byte_27F39AAF8 = 0;
}

uint64_t sub_24E73BF7C(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v11 = xmmword_27F2543E0;
  v4 = qword_27F2543F0;
  v5 = qword_27F2543F8;
  v6 = sub_24E609BDC(&unk_2861BF2A0);
  v7 = sub_24E609BF0(&unk_2861BF310);
  v8 = sub_24E609CD8(&unk_2861BF3A8);
  v9 = sub_24E609DC4(&unk_2861BF418);
  xmmword_27F39AB00 = 5uLL;
  qword_27F39AB10 = v1;
  unk_27F39AB18 = v3;
  xmmword_27F39AB20 = v11;
  qword_27F39AB30 = v4;
  qword_27F39AB38 = v5;
  unk_27F39AB40 = v6;
  qword_27F39AB48 = v7;
  unk_27F39AB50 = v8;
  qword_27F39AB58 = v9;
  byte_27F39AB60 = 0;
}

uint64_t sub_24E73C08C(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v11 = xmmword_27F2543E0;
  v4 = qword_27F2543F0;
  v5 = qword_27F2543F8;
  v6 = sub_24E609BDC(&unk_2861BF488);
  v7 = sub_24E609BF0(&unk_2861BF4F8);
  v8 = sub_24E609CD8(&unk_2861BF590);
  v9 = sub_24E609DC4(&unk_2861BF600);
  xmmword_27F39AB68 = 5uLL;
  qword_27F39AB78 = v1;
  unk_27F39AB80 = v3;
  xmmword_27F39AB88 = v11;
  qword_27F39AB98 = v4;
  qword_27F39ABA0 = v5;
  unk_27F39ABA8 = v6;
  qword_27F39ABB0 = v7;
  unk_27F39ABB8 = v8;
  qword_27F39ABC0 = v9;
  byte_27F39ABC8 = 0;
}

uint64_t sub_24E73C19C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_24F4E9558(a3, v16);
      goto LABEL_21;
    }

    if (a2 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v17 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v17 = qword_27F39E658;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      sub_24F4E9E44(a3, v16);
      goto LABEL_21;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v17 = qword_27F39E628;
  }

  else
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v17 = qword_27F39E640;
  }

  v18 = __swift_project_value_buffer(v14, v17);
  sub_24E745628(v18, v16, type metadata accessor for CardLayoutMetrics);
LABEL_21:
  sub_24E746F20(v16, a4, type metadata accessor for CardLayoutMetrics);
  v19 = a1 + *(type metadata accessor for MediaCard(0) + 32);
  result = type metadata accessor for CommonCardAttributes(0);
  if (*(v19 + *(result + 36)))
  {
    v21 = 1;
  }

  else
  {
    v22 = result;
    sub_24E60169C(v19 + *(result + 32), v13, &qword_27F213FB8, &unk_24F93C010);
    v23 = type metadata accessor for GSKVideo(0);
    v21 = 1;
    v24 = (*(*(v23 - 8) + 48))(v13, 1, v23);
    result = sub_24E601704(v13, &qword_27F213FB8, &unk_24F93C010);
    if (v24 == 1)
    {
      sub_24E60169C(v19 + *(v22 + 28), v10, &qword_27F213FB0, &qword_24F93E6B0);
      v25 = sub_24F9289E8();
      v21 = (*(*(v25 - 8) + 48))(v10, 1, v25) != 1;
      result = sub_24E601704(v10, &qword_27F213FB0, &qword_24F93E6B0);
    }
  }

  *(a4 + *(v14 + 40)) = v21;
  return result;
}

uint64_t sub_24E73C580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v229 = a5;
  v219 = a4;
  v236 = a6;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219068, &unk_24F94BCF0);
  MEMORY[0x28223BE20](v187);
  v189 = (&v172 - v9);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070, &qword_24F94FF00);
  MEMORY[0x28223BE20](v188);
  v185 = (&v172 - v10);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219078, &qword_24F94BD00);
  MEMORY[0x28223BE20](v205);
  v190 = &v172 - v11;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v228);
  v207 = &v172 - v12;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF58, &qword_24F94FF08);
  MEMORY[0x28223BE20](v201);
  v204 = &v172 - v13;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF60, &qword_24F94FF10);
  MEMORY[0x28223BE20](v182);
  v183 = (&v172 - v14);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF68, &qword_24F94FF18);
  MEMORY[0x28223BE20](v202);
  v184 = &v172 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF70, &qword_24F94FF20);
  MEMORY[0x28223BE20](v16 - 8);
  v203 = &v172 - v17;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF78, &qword_24F94FF28);
  MEMORY[0x28223BE20](v216);
  v206 = &v172 - v18;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF80, &qword_24F94FF30);
  MEMORY[0x28223BE20](v214);
  v215 = &v172 - v19;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF88, &qword_24F94FF38);
  MEMORY[0x28223BE20](v225);
  v217 = &v172 - v20;
  v193 = type metadata accessor for ColorGroup(0);
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v181 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v177 = &v172 - v23;
  v213 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v213);
  v179 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v180 = &v172 - v26;
  MEMORY[0x28223BE20](v27);
  v195 = &v172 - v28;
  MEMORY[0x28223BE20](v29);
  v200 = &v172 - v30;
  v212 = type metadata accessor for MediaCardConfiguration.VisualView(0);
  MEMORY[0x28223BE20](v212);
  v199 = &v172 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF90, &qword_24F94FF40);
  MEMORY[0x28223BE20](v32);
  v34 = &v172 - v33;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF98, &qword_24F94FF48);
  MEMORY[0x28223BE20](v223);
  v220 = &v172 - v35;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFA0, &qword_24F94FF50);
  MEMORY[0x28223BE20](v209);
  v210 = &v172 - v36;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFA8, &qword_24F94FF58);
  MEMORY[0x28223BE20](v221);
  v211 = &v172 - v37;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFB0, &unk_24F94FF60);
  MEMORY[0x28223BE20](v227);
  v224 = &v172 - v38;
  v197 = type metadata accessor for CardElementView.Category(0);
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v186 = &v172 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFB8, &unk_24FA18C00);
  MEMORY[0x28223BE20](v208);
  v198 = &v172 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFC0, &unk_24F94FF70);
  v233 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v232 = &v172 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v43 - 8);
  *&v194 = &v172 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v172 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v48 - 8);
  v191 = &v172 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v178 = &v172 - v51;
  MEMORY[0x28223BE20](v52);
  v234 = &v172 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = &v172 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v59 = &v172 - v58;
  v230 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v230);
  v61 = (&v172 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v62);
  v235 = &v172 - v63;
  v226 = a1;
  v231 = a2;
  if (sub_24E744BC0(a1, a2, a3))
  {
    v222 = a3;
    v64 = a3;
    if (a3 > 2u)
    {
      v65 = v236;
      if (v64 == 3)
      {
        sub_24F4E9558(v219, v61);
        goto LABEL_25;
      }

      if (v64 == 4)
      {
        if (qword_27F2112F0 != -1)
        {
          swift_once();
        }

        v69 = qword_27F39E610;
      }

      else
      {
        if (qword_27F211308 != -1)
        {
          swift_once();
        }

        v69 = qword_27F39E658;
      }
    }

    else
    {
      v65 = v236;
      if (v64)
      {
        if (v64 == 1)
        {
          sub_24F4E9E44(v219, v61);
          goto LABEL_25;
        }

        if (qword_27F2112F8 != -1)
        {
          swift_once();
        }

        v69 = qword_27F39E628;
      }

      else
      {
        if (qword_27F211300 != -1)
        {
          swift_once();
        }

        v69 = qword_27F39E640;
      }
    }

    v70 = __swift_project_value_buffer(v230, v69);
    sub_24E745628(v70, v61, type metadata accessor for CardLayoutMetrics);
LABEL_25:
    v71 = v61;
    v72 = v235;
    sub_24E746F20(v71, v235, type metadata accessor for CardLayoutMetrics);
    v172 = type metadata accessor for MediaCard(0);
    v73 = v231;
    v74 = v231 + *(v172 + 32);
    v75 = type metadata accessor for CommonCardAttributes(0);
    v76 = *(v74 + *(v75 + 36));
    v218 = v41;
    v176 = v34;
    v175 = v32;
    v173 = v75;
    if (v76)
    {
      v77 = 1;
      *(v72 + v230[10]) = 1;
      sub_24E73EE78(v73, v234);
    }

    else
    {
      v78 = v75;
      sub_24E60169C(v74 + *(v75 + 32), v59, &qword_27F213FB8, &unk_24F93C010);
      v79 = type metadata accessor for GSKVideo(0);
      v80 = v74;
      v81 = 1;
      *&v174 = *(*(v79 - 8) + 48);
      v82 = (v174)(v59, 1, v79);
      sub_24E601704(v59, &qword_27F213FB8, &unk_24F93C010);
      if (v82 == 1)
      {
        sub_24E60169C(v80 + *(v78 + 28), v47, &qword_27F213FB0, &qword_24F93E6B0);
        v83 = sub_24F9289E8();
        v81 = (*(*(v83 - 8) + 48))(v47, 1, v83) != 1;
        sub_24E601704(v47, &qword_27F213FB0, &qword_24F93E6B0);
      }

      *(v235 + v230[10]) = v81;
      sub_24E73EE78(v231, v234);
      sub_24E60169C(v80 + *(v78 + 32), v56, &qword_27F213FB8, &unk_24F93C010);
      v77 = 1;
      v84 = (v174)(v56, 1, v79);
      sub_24E601704(v56, &qword_27F213FB8, &unk_24F93C010);
      v65 = v236;
      v74 = v80;
      if (v84 == 1)
      {
        v85 = v194;
        sub_24E60169C(v80 + *(v173 + 28), v194, &qword_27F213FB0, &qword_24F93E6B0);
        v86 = sub_24F9289E8();
        v77 = (*(*(v86 - 8) + 48))(v85, 1, v86) != 1;
        sub_24E601704(v85, &qword_27F213FB0, &qword_24F93E6B0);
      }
    }

    v87 = v74;
    if (v222 > 2u)
    {
      if (v222 == 3)
      {
        if (qword_27F20FE58 != -1)
        {
          swift_once();
        }

        v88 = &xmmword_27F39A960;
      }

      else if (v222 == 4)
      {
        if (qword_27F20FE50 != -1)
        {
          swift_once();
        }

        v88 = &xmmword_27F39A8F8;
      }

      else
      {
        if (qword_27F20FE70 != -1)
        {
          swift_once();
        }

        v88 = &xmmword_27F39AA98;
      }
    }

    else if (v222 && v222 != 1)
    {
      if (qword_27F20FE60 != -1)
      {
        swift_once();
      }

      v88 = &xmmword_27F39A9C8;
    }

    else
    {
      if (qword_27F20FE68 != -1)
      {
        swift_once();
      }

      v88 = &xmmword_27F39AA30;
    }

    v242 = *(v88 + 96);
    v89 = v88[5];
    *&v241[16] = v88[4];
    *&v241[32] = v89;
    v90 = v88[3];
    v240 = v88[2];
    *v241 = v90;
    v91 = v88[1];
    v238 = *v88;
    v239 = v91;
    v92 = v242;
    v93 = *&v241[40];
    v194 = *&v241[24];
    v94 = v240;
    v95 = v90;
    v174 = *&v241[8];
    v96 = v91;
    v97 = *(&v238 + 1);
    v98 = v238;
    sub_24E7450A0(&v238, &v237);
    v238 = __PAIR128__(v97, v98);
    v239 = v96;
    v240 = v94;
    *v241 = v95;
    *&v241[8] = v174;
    *&v241[24] = v194;
    *&v241[40] = v93;
    v242 = v92;
    if (v226 <= 0xAu)
    {
      v99 = v218;
      if (!v226)
      {
        v120 = *(v87 + 16);
        if (v120)
        {
          v121 = *(v87 + 8);
          v122 = HIBYTE(v120) & 0xF;
          if ((v120 & 0x2000000000000000) == 0)
          {
            v122 = v121 & 0xFFFFFFFFFFFFLL;
          }

          v123 = v197;
          if (v122)
          {
            v124 = v186;
            sub_24E60169C(v87 + *(v173 + 24), &v186[*(v197 + 20)], &qword_27F213FB0, &qword_24F93E6B0);
            v125 = *(v235 + v230[9]);
            v126 = *(v235 + v230[8]);
            v127 = *(v235 + v230[6]);
            *v124 = v121;
            v124[1] = v120;
            *(v124 + v123[6]) = v125;
            *(v124 + v123[7]) = v77;
            *(v124 + v123[8]) = v126;
            *(v124 + v123[9]) = v127;
            v237 = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            v237 = 0x4008000000000000;
            sub_24F9237C8();
            v237 = 0x4018000000000000;
            sub_24F9237C8();
            v237 = 0x4010000000000000;
            sub_24F9237C8();
            v128 = v198;
            sub_24E746F20(v124, v198, type metadata accessor for CardElementView.Category);
            v129 = 0;
          }

          else
          {
            v129 = 1;
            v128 = v198;
          }
        }

        else
        {
          v129 = 1;
          v128 = v198;
          v123 = v197;
        }

        (*(v196 + 56))(v128, v129, 1, v123);
        sub_24E60169C(v128, v210, &qword_27F21AFB8, &unk_24FA18C00);
        swift_storeEnumTagMultiPayload();
        sub_24E74524C();
        sub_24E745300(&qword_27F21AFE0, type metadata accessor for MediaCardConfiguration.VisualView, &unk_24F9500A8);
        v153 = v211;
        sub_24F924E28();
        sub_24E60169C(v153, v220, &qword_27F21AFA8, &qword_24F94FF58);
        swift_storeEnumTagMultiPayload();
        sub_24E745190();
        sub_24E7454E4(&qword_27F21AFE8, &qword_27F21AF88, &qword_24F94FF38, sub_24E745348);
        v154 = v224;
        sub_24F924E28();
        sub_24E601704(v153, &qword_27F21AFA8, &qword_24F94FF58);
        sub_24E60169C(v154, v176, &qword_27F21AFB0, &unk_24F94FF60);
        swift_storeEnumTagMultiPayload();
        sub_24E7450D8();
        sub_24E701970();
        sub_24F924E28();
        sub_24E745598(&v238);
        sub_24E601704(v154, &qword_27F21AFB0, &unk_24F94FF60);
        sub_24E601704(v128, &qword_27F21AFB8, &unk_24FA18C00);
        v65 = v236;
        goto LABEL_101;
      }

      if (v226 == 2)
      {
        v100 = v199;
        sub_24E745628(v231, v199, type metadata accessor for MediaCard);
        v101 = v212;
        *(v100 + *(v212 + 20)) = v222;
        v102 = v100 + v101[6];
        v103 = *&v241[32];
        *(v102 + 64) = *&v241[16];
        *(v102 + 80) = v103;
        *(v102 + 96) = v242;
        v104 = v239;
        *v102 = v238;
        *(v102 + 16) = v104;
        v105 = *v241;
        *(v102 + 32) = v240;
        *(v102 + 48) = v105;
        *(v100 + v101[7]) = v229;
        v106 = v100 + v101[8];
        *v106 = swift_getKeyPath();
        *(v106 + 8) = 0;
        v107 = v100 + v101[9];
        type metadata accessor for CardSafeArea(0);
        sub_24E745300(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);

        *v107 = sub_24F923598();
        *(v107 + 8) = v108 & 1;
        sub_24E745628(v100, v210, type metadata accessor for MediaCardConfiguration.VisualView);
        swift_storeEnumTagMultiPayload();
        sub_24E74524C();
        sub_24E745300(&qword_27F21AFE0, type metadata accessor for MediaCardConfiguration.VisualView, &unk_24F9500A8);
        v109 = v211;
        sub_24F924E28();
        sub_24E60169C(v109, v220, &qword_27F21AFA8, &qword_24F94FF58);
        swift_storeEnumTagMultiPayload();
        sub_24E745190();
        sub_24E7454E4(&qword_27F21AFE8, &qword_27F21AF88, &qword_24F94FF38, sub_24E745348);
        v110 = v224;
        sub_24F924E28();
        sub_24E601704(v109, &qword_27F21AFA8, &qword_24F94FF58);
        sub_24E60169C(v110, v176, &qword_27F21AFB0, &unk_24F94FF60);
        swift_storeEnumTagMultiPayload();
        sub_24E7450D8();
        sub_24E701970();
        sub_24F924E28();
        sub_24E601704(v110, &qword_27F21AFB0, &unk_24F94FF60);
        sub_24E7455C8(v100, type metadata accessor for MediaCardConfiguration.VisualView);
LABEL_101:
        v160 = v235;
LABEL_102:
        sub_24E601704(v234, &qword_27F2190D8, &unk_24F94BD70);
        sub_24E7455C8(v160, type metadata accessor for CardLayoutMetrics);
        sub_24E6009C8(v232, v65, &qword_27F21AFC0, &unk_24F94FF70);
        return (*(v233 + 56))(v65, 0, 1, v99);
      }

LABEL_60:
      v119 = v207;
      sub_24E91E334(v226, v231, v222, v219, v229, v207);
      sub_24E60169C(v119, v176, &qword_27F214A20, &unk_24F94D670);
      swift_storeEnumTagMultiPayload();
      sub_24E7450D8();
      sub_24E701970();
      sub_24F924E28();
      sub_24E745598(&v238);
      sub_24E601704(v119, &qword_27F214A20, &unk_24F94D670);
      goto LABEL_101;
    }

    v99 = v218;
    if (v226 != 11)
    {
      if (v226 == 12)
      {
        v111 = v222;
        if (v222 - 2 >= 4)
        {
          v114 = v203;
          if (v222)
          {
            v155 = v207;
            sub_24E91E334(0xC, v231, 1u, v219, v229, v207);
            sub_24E60169C(v155, v183, &qword_27F214A20, &unk_24F94D670);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
            sub_24E63D098();
            sub_24E701970();
            v156 = v184;
            sub_24F924E28();
            sub_24E60169C(v156, v204, &qword_27F21AF68, &qword_24F94FF18);
            swift_storeEnumTagMultiPayload();
            sub_24E745458();
            sub_24E7018B8();
            sub_24F924E28();
            sub_24E601704(v156, &qword_27F21AF68, &qword_24F94FF18);
            v138 = v155;
            v139 = &qword_27F214A20;
            v140 = &unk_24F94D670;
          }

          else
          {
            v134 = sub_24F926C98();
            v135 = sub_24F925808();
            v136 = v183;
            *v183 = v134;
            *(v136 + 8) = v135;
            swift_storeEnumTagMultiPayload();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
            sub_24E63D098();
            sub_24E701970();
            v137 = v184;
            sub_24F924E28();
            sub_24E60169C(v137, v204, &qword_27F21AF68, &qword_24F94FF18);
            swift_storeEnumTagMultiPayload();
            sub_24E745458();
            sub_24E7018B8();
            sub_24F924E28();

            v138 = v137;
            v139 = &qword_27F21AF68;
            v140 = &qword_24F94FF18;
          }

          sub_24E601704(v138, v139, v140);
          v152 = v220;
        }

        else
        {
          v112 = v191;
          sub_24E60169C(v234, v191, &qword_27F2190D8, &unk_24F94BD70);
          v113 = (*(v192 + 48))(v112, 1, v193);
          v114 = v203;
          if (v113 == 1)
          {
            sub_24E601704(v112, &qword_27F2190D8, &unk_24F94BD70);
            v115 = sub_24F926C98();
            v116 = sub_24F925808();
            v117 = v189;
            *v189 = v115;
            *(v117 + 8) = v116;
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
            sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
            sub_24E63D098();
            v118 = v190;
            sub_24F924E28();
          }

          else
          {
            v147 = v181;
            sub_24E746F20(v112, v181, type metadata accessor for ColorGroup);
            v148 = sub_24F927618();
            v149 = v185;
            *v185 = v148;
            *(v149 + 8) = v150;
            v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120, &unk_24F94BDB0);
            sub_24F594F18(v111 != 5, v147, v149 + *(v151 + 44));
            sub_24E60169C(v149, v189, &qword_27F219070, &qword_24F94FF00);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
            sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
            sub_24E63D098();
            v118 = v190;
            sub_24F924E28();
            sub_24E601704(v149, &qword_27F219070, &qword_24F94FF00);
            sub_24E7455C8(v147, type metadata accessor for ColorGroup);
          }

          v152 = v220;
          sub_24E60169C(v118, v204, &qword_27F219078, &qword_24F94BD00);
          swift_storeEnumTagMultiPayload();
          sub_24E745458();
          sub_24E7018B8();
          sub_24F924E28();
          sub_24E601704(v118, &qword_27F219078, &qword_24F94BD00);
        }

        v157 = v206;
        sub_24E6009C8(v114, v206, &qword_27F21AF70, &qword_24F94FF20);
        sub_24E60169C(v157, v215, &qword_27F21AF78, &qword_24F94FF28);
        swift_storeEnumTagMultiPayload();
        sub_24E745300(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E745348();
        v158 = v217;
        sub_24F924E28();
        sub_24E60169C(v158, v152, &qword_27F21AF88, &qword_24F94FF38);
        swift_storeEnumTagMultiPayload();
        sub_24E745190();
        sub_24E7454E4(&qword_27F21AFE8, &qword_27F21AF88, &qword_24F94FF38, sub_24E745348);
        v159 = v224;
        sub_24F924E28();
        sub_24E601704(v158, &qword_27F21AF88, &qword_24F94FF38);
        sub_24E60169C(v159, v176, &qword_27F21AFB0, &unk_24F94FF60);
        swift_storeEnumTagMultiPayload();
        sub_24E7450D8();
        sub_24E701970();
        sub_24F924E28();
        sub_24E745598(&v238);
        sub_24E601704(v159, &qword_27F21AFB0, &unk_24F94FF60);
        sub_24E601704(v157, &qword_27F21AF78, &qword_24F94FF28);
        v65 = v236;
        v160 = v235;
        v99 = v218;
        goto LABEL_102;
      }

      goto LABEL_60;
    }

    if (v222 <= 1u)
    {
      v131 = v220;
      if (v222)
      {
        v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v132 = v195;
        (*(*(v161 - 8) + 56))(v195, 2, 5, v161);
      }

      else
      {
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v132 = v195;
        (*(*(v141 - 8) + 56))(v195, 1, 5, v141);
      }

      goto LABEL_100;
    }

    if (v222 - 2 < 2)
    {
      if (v77)
      {
        v130 = 5;
        v131 = v220;
        v132 = v195;
        v133 = v180;
LABEL_96:
        v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        (*(*(v164 - 8) + 56))(v133, v130, 5, v164);
        sub_24E746F20(v133, v132, type metadata accessor for CardContentBackgroundStyle);
LABEL_100:
        v169 = v200;
        sub_24E746F20(v132, v200, type metadata accessor for CardContentBackgroundStyle);
        sub_24E745628(v169, v215, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E745300(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E745348();
        v170 = v217;
        sub_24F924E28();
        sub_24E60169C(v170, v131, &qword_27F21AF88, &qword_24F94FF38);
        swift_storeEnumTagMultiPayload();
        sub_24E745190();
        sub_24E7454E4(&qword_27F21AFE8, &qword_27F21AF88, &qword_24F94FF38, sub_24E745348);
        v171 = v224;
        sub_24F924E28();
        sub_24E601704(v170, &qword_27F21AF88, &qword_24F94FF38);
        sub_24E60169C(v171, v176, &qword_27F21AFB0, &unk_24F94FF60);
        swift_storeEnumTagMultiPayload();
        sub_24E7450D8();
        sub_24E701970();
        sub_24F924E28();
        sub_24E745598(&v238);
        sub_24E601704(v171, &qword_27F21AFB0, &unk_24F94FF60);
        sub_24E7455C8(v169, type metadata accessor for CardContentBackgroundStyle);
        v99 = v218;
        goto LABEL_101;
      }

      v133 = v180;
      if (v222 == 3)
      {

        v131 = v220;
      }

      else
      {
        v163 = sub_24F92CE08();

        v131 = v220;
        if ((v163 & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      if (*(*(v231 + *(v172 + 36)) + 16) == 1)
      {
        v130 = 3;
LABEL_95:
        v132 = v195;
        goto LABEL_96;
      }

LABEL_94:
      v130 = 1;
      goto LABEL_95;
    }

    if (v222 != 4)
    {
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
      v132 = v195;
      (*(*(v162 - 8) + 56))(v195, 1, 5, v162);
LABEL_99:
      v131 = v220;
      goto LABEL_100;
    }

    if (v77)
    {
      v142 = v178;
      sub_24E60169C(v234, v178, &qword_27F2190D8, &unk_24F94BD70);
      v143 = v192;
      v144 = v193;
      if ((*(v192 + 48))(v142, 1, v193) != 1)
      {
        v165 = v177;
        sub_24E746F20(v142, v177, type metadata accessor for ColorGroup);
        v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v167 = *(v166 + 48);
        v168 = v165;
        v146 = v179;
        sub_24E746F20(v168, v179, type metadata accessor for ColorGroup);
        (*(v143 + 56))(v146, 0, 1, v144);
        *(v146 + v167) = 1;
        (*(*(v166 - 8) + 56))(v146, 0, 5, v166);
        goto LABEL_98;
      }

      sub_24E601704(v142, &qword_27F2190D8, &unk_24F94BD70);
    }

    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
    v146 = v179;
    (*(*(v145 - 8) + 56))(v179, 4, 5, v145);
LABEL_98:
    v132 = v195;
    sub_24E746F20(v146, v195, type metadata accessor for CardContentBackgroundStyle);
    goto LABEL_99;
  }

  v66 = *(v233 + 56);
  v67 = v236;

  return v66(v67, 1, 1, v41);
}

uint64_t sub_24E73EE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v76 - v6;
  v88 = type metadata accessor for GSKVideo(0);
  v8 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v76 - v11;
  v12 = sub_24F9289E8();
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x28223BE20](v12);
  v79 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v76 - v15;
  MEMORY[0x28223BE20](v16);
  v77 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v18 - 8);
  v81 = &v76 - v19;
  v20 = type metadata accessor for MixedMediaItem.ContentType(0);
  v80 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v76 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v76 - v27;
  v29 = type metadata accessor for MediaCard(0);
  v30 = *(v29 + 32);
  v83 = a1;
  v31 = a1 + v30;
  v32 = type metadata accessor for CommonCardAttributes(0);
  v33 = (v31 + v32[9]);
  if (*v33)
  {
    v34 = v33[1];
    if (*(v34 + 16))
    {
      v35 = sub_24E76DCB8(0);
      if (v36)
      {
        sub_24E745628(*(v34 + 56) + *(v80 + 72) * v35, v25, type metadata accessor for MixedMediaItem.ContentType);
        sub_24E746F20(v25, v28, type metadata accessor for MixedMediaItem.ContentType);
        sub_24E745628(v28, v22, type metadata accessor for MixedMediaItem.ContentType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v37 = v78;
          sub_24E746F20(v22, v78, type metadata accessor for GSKVideo);
          v38 = sub_24F9289A8();
          v39 = v81;
          if (v38)
          {
            v40 = qword_27F20FEE0;
            v41 = v38;
            if (v40 != -1)
            {
              v74 = v41;
              swift_once();
              v41 = v74;
            }

            v42 = v41;
            v43 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v43);

            sub_24E7455C8(v37, type metadata accessor for GSKVideo);
LABEL_29:
            sub_24E7455C8(v28, type metadata accessor for MixedMediaItem.ContentType);
            return sub_24E6009C8(v39, v89, &qword_27F2190D8, &unk_24F94BD70);
          }

          sub_24E7455C8(v37, type metadata accessor for GSKVideo);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128, &qword_24F94BDF0);

          v64 = v86;
          v63 = v87;
          v65 = v77;
          (*(v86 + 32))(v77, v22, v87);
          v66 = sub_24F9289A8();
          v39 = v81;
          if (v66)
          {
            v67 = qword_27F20FEE0;
            v68 = v66;
            if (v67 != -1)
            {
              v75 = v68;
              swift_once();
              v68 = v75;
            }

            v69 = v68;
            v70 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v70);

            (*(v64 + 8))(v65, v63);
            goto LABEL_29;
          }

          (*(v64 + 8))(v65, v63);
        }

        sub_24E7455C8(v28, type metadata accessor for MixedMediaItem.ContentType);
        v71 = type metadata accessor for ColorGroup(0);
        (*(*(v71 - 8) + 56))(v39, 1, 1, v71);
        return sub_24E6009C8(v39, v89, &qword_27F2190D8, &unk_24F94BD70);
      }
    }
  }

  sub_24E60169C(v31 + v32[8], v7, &qword_27F213FB8, &unk_24F93C010);
  if ((*(v8 + 48))(v7, 1, v88) == 1)
  {
    sub_24E601704(v7, &qword_27F213FB8, &unk_24F93C010);
    v44 = v31 + v32[7];
    v45 = v85;
    sub_24E60169C(v44, v85, &qword_27F213FB0, &qword_24F93E6B0);
    v47 = v86;
    v46 = v87;
    if ((*(v86 + 48))(v45, 1, v87) == 1)
    {
      sub_24E601704(v45, &qword_27F213FB0, &qword_24F93E6B0);
      v48 = *(v83 + *(v29 + 36));
      if (!*(v48 + 16))
      {
        goto LABEL_24;
      }

      v49 = v79;
      (*(v47 + 16))(v79, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v46);
    }

    else
    {
      v49 = v82;
      (*(v47 + 32))(v82, v45, v46);
    }

    v57 = sub_24F9289A8();
    if (v57)
    {
      v58 = qword_27F20FEE0;
      v59 = v57;
      if (v58 != -1)
      {
        v73 = v59;
        swift_once();
        v59 = v73;
      }

      v60 = v59;
      v61 = sub_24F926BD8();
      ColorGrouping.colorGroup(for:)(v61);

      return (*(v47 + 8))(v49, v46);
    }

    (*(v47 + 8))(v49, v46);
LABEL_24:
    v62 = type metadata accessor for ColorGroup(0);
    return (*(*(v62 - 8) + 56))(v89, 1, 1, v62);
  }

  v50 = v84;
  sub_24E746F20(v7, v84, type metadata accessor for GSKVideo);
  v51 = sub_24F9289A8();
  if (!v51)
  {
    sub_24E7455C8(v50, type metadata accessor for GSKVideo);
    goto LABEL_24;
  }

  v52 = qword_27F20FEE0;
  v53 = v51;
  if (v52 != -1)
  {
    v72 = v53;
    swift_once();
    v53 = v72;
  }

  v54 = v53;
  v55 = sub_24F926BD8();
  ColorGrouping.colorGroup(for:)(v55);

  return sub_24E7455C8(v50, type metadata accessor for GSKVideo);
}

__n128 sub_24E73F84C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_24F921C08())
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v6 = sub_24F926E88();
    (*(v3 + 8))(v5, v2);
    v7 = sub_24F925818();
    sub_24F923318();
    v15[0] = 0;
    v16[0] = v6;
    v16[1] = 0;
    v17.n128_u16[0] = 1;
    *(v17.n128_u32 + 2) = v22[0];
    v17.n128_u16[3] = WORD2(v22[0]);
    v17.n128_u8[8] = v7;
    *(&v17.n128_u32[2] + 1) = v24;
    v17.n128_u32[3] = *(&v24 + 3);
    *&v18 = v8;
    *(&v18 + 1) = v9;
    *&v19 = v10;
    *(&v19 + 1) = v11;
    v20 = 0;
    v26 = v18;
    v27 = v19;
    v28 = 0;
    v24 = v6;
    v25 = v17;
    v21 = 0;
    sub_24E60169C(v16, v22, &qword_27F21B1B0, &qword_24F9504F0);
    sub_24E60169C(v16, v22, &qword_27F21B1B0, &qword_24F9504F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1B0, &qword_24F9504F0);
    sub_24E746E8C();
    sub_24F924E28();

    sub_24E601704(v16, &qword_27F21B1B0, &qword_24F9504F0);
    sub_24E601704(v16, &qword_27F21B1B0, &qword_24F9504F0);
    v26 = v22[2];
    v27 = v22[3];
    v28 = v23;
    v24 = v22[0];
    v25 = v22[1];
  }

  else
  {
    v12 = sub_24F926C98();
    LOBYTE(v16[0]) = 1;
    *&v22[0] = v12;
    HIBYTE(v23) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1B0, &qword_24F9504F0);
    sub_24E746E8C();
    sub_24F924E28();
  }

  v13 = v27;
  *(a1 + 32) = v26;
  *(a1 + 48) = v13;
  *(a1 + 64) = v28;
  result = v25;
  *a1 = v24;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24E73FB84@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GameIcon(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760, &qword_24F945460);
  MEMORY[0x28223BE20](v35);
  v11 = &v34 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v9, v1, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  v14 = v7[10];
  *&v9[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v9[v7[7]] = 1;
  v9[v7[8]] = 1;
  v9[v7[9]] = 0;
  v34 = type metadata accessor for MediaCardConfiguration.IconView(0);
  v15 = *(v34 + 24);
  v36 = v1;
  v16 = v1 + v15;
  v17 = *v16;
  v18 = *(v16 + 8);
  if (v18 == 1)
  {
    v19 = v3;
    v20 = v2;
  }

  else
  {

    sub_24F92BDC8();
    v21 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v17, 0);
    v19 = v3;
    v20 = v2;
    (*(v3 + 8))(v5, v2);
  }

  if (!v18)
  {

    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v17, 0);
    (*(v19 + 8))(v5, v20);
  }

  sub_24F927618();
  sub_24F9238C8();
  sub_24E746F20(v9, v11, type metadata accessor for GameIcon);
  v23 = v36;
  v24 = &v11[*(v35 + 36)];
  v25 = v39;
  *v24 = v38;
  *(v24 + 1) = v25;
  *(v24 + 2) = v40;
  v26 = *(v23 + *(v34 + 20));
  sub_24F9278A8();
  v28 = v27;
  v30 = v29;
  v31 = v37;
  sub_24E6009C8(v11, v37, &qword_27F216760, &qword_24F945460);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1C0, &qword_24F950530);
  v33 = (v31 + *(result + 36));
  *v33 = v26;
  v33[1] = v28;
  v33[2] = v30;
  return result;
}

uint64_t sub_24E73FFEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1C8, &qword_24F950538);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30[-v8];
  v10 = v1[5];
  v31[4] = v1[4];
  v31[5] = v10;
  *v32 = v1[6];
  *&v32[9] = *(v1 + 105);
  v11 = v1[1];
  v31[0] = *v1;
  v12 = v1[2];
  v13 = v1[3];
  v31[1] = v11;
  v31[2] = v12;
  v31[3] = v13;
  *v9 = sub_24F9275F8();
  v9[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1D0, &qword_24F950540);
  sub_24E740418(v31);
  v15 = sub_24F925828();
  if (v32[9] > 4u)
  {
  }

  else
  {
    v16 = sub_24F92CE08();

    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v34 = v32[24];
  v33 = *&v32[16];
  if (v32[24] != 1)
  {

    sub_24F92BDC8();
    v17 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v33, &qword_27F21B1E0, &unk_24F950550);
    v18 = *(v4 + 8);
    v18(v6, v3);
    if (v30[15] != 3)
    {

      sub_24F92BDC8();
      v19 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v33, &qword_27F21B1E0, &unk_24F950550);
      v18(v6, v3);
    }
  }

LABEL_8:
  sub_24F923318();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_24E6009C8(v9, a1, &qword_27F21B1C8, &qword_24F950538);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1D8, &qword_24F950548);
  v29 = a1 + *(result + 36);
  *v29 = v15;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_24E740418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219530, &unk_24F94C440);
  MEMORY[0x28223BE20](v2);
  v3 = sub_24E6B7C74(*(a1 + 8), *a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((v8 & 1) == 0)
  {

LABEL_3:
    sub_24E6B88C8(v3, v5, v7, v9);
    v11 = v10;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_24F92CEF8();
  swift_unknownObjectRetain_n();

  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v7))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13 != (v9 >> 1) - v7)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v20[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538, &qword_24F950560);
  sub_24E602068(&qword_27F219540, &qword_27F219538, &qword_24F950560, MEMORY[0x277D83980]);
  sub_24F921BA8();
  swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = *(a1 + 80);
  v14[5] = *(a1 + 64);
  v14[6] = v15;
  v14[7] = *(a1 + 96);
  *(v14 + 121) = *(a1 + 105);
  v16 = *(a1 + 16);
  v14[1] = *a1;
  v14[2] = v16;
  v17 = *(a1 + 48);
  v14[3] = *(a1 + 32);
  v14[4] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24E746FF4;
  *(v18 + 24) = v14;
  sub_24E747034(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1E8, &qword_24F950588);
  sub_24E602068(&qword_27F219550, &qword_27F219530, &unk_24F94C440, MEMORY[0x277D7EC38]);
  sub_24E74706C(&qword_27F21B1F0, &qword_27F21B1E8, &qword_24F950588, sub_24E7046B0);
  return sub_24F927228();
}

uint64_t sub_24E740738@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v110 = a3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1F8, &qword_24F950590);
  MEMORY[0x28223BE20](v107);
  v109 = &v106 - v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219548, &qword_24F94C470);
  MEMORY[0x28223BE20](v108);
  v7 = &v106 - v6;
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 105) == 5)
  {
    BYTE8(v130) = *(a2 + 120);
    v13 = a2[14];
    *&v130 = v13;
    if (BYTE8(v130) != 1)
    {
      v14 = v10;

      sub_24F92BDC8();
      v15 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v130, &qword_27F21B1E0, &unk_24F950550);
      (*(v9 + 8))(v12, v14);
      LOBYTE(v13) = v120;
    }

    v16 = &v120;
    if (v13 > 1u)
    {
      if (v13 != 2)
      {
        if (qword_27F20FE80 != -1)
        {
          swift_once();
        }

        for (i = &xmmword_27F39AB68; ; i = &xmmword_27F39AA98)
        {
LABEL_32:
          v125 = *(i + 96);
          v57 = i[5];
          v123 = i[4];
          v124 = v57;
          v58 = i[3];
          *v122 = i[2];
          *&v122[16] = v58;
          v59 = i[1];
          v120 = *i;
          v121 = v59;
          v60 = v125;
          v61 = *(&v124 + 1);
          v106 = *(v16 + 72);
          v62 = *v122;
          v63 = v58;
          v111 = *(v16 + 56);
          v64 = v59;
          v65 = *(&v120 + 1);
          v66 = v120;
          sub_24E7450A0(&v120, &v116);
          v120 = __PAIR128__(v65, v66);
          v121 = v64;
          *v122 = v62;
          *&v122[16] = v63;
          v67 = *(&v111 + 1);
          *(v16 + 56) = v111;
          v68 = v106;
          *(v16 + 72) = v106;
          *(&v124 + 1) = v61;
          v125 = v60;
          v69 = v67;
          if (*(v67 + 16))
          {
            v70 = sub_24E7728CC(a1);
            if (v71)
            {
              v16 = *(*(v69 + 56) + 8 * v70);
            }

            else
            {
              v16 = 0;
            }

            v68 = v106;
          }

          else
          {
            v16 = 0;
          }

          v72 = *(&v68 + 1);
          v73 = 0;
          v74 = 0;
          if (*(*(&v68 + 1) + 16))
          {
            v106 = v68;
            v75 = sub_24E7728CC(a1);
            *&v68 = v106;
            if (v76)
            {
              v74 = *(*(v72 + 56) + 8 * v75);
            }
          }

          v77 = v68;
          if (*(v68 + 16))
          {
            v78 = sub_24E7728CC(a1);
            v79 = 0;
            if (v80)
            {
              v81 = (*(v77 + 56) + 16 * v78);
              v73 = *v81;
              v79 = v81[1];
            }
          }

          else
          {
            v79 = 0;
          }

          v82 = 0;
          if (*(v61 + 16))
          {
            v83 = sub_24E7728CC(a1);
            if (v84)
            {
              v82 = *(*(v61 + 56) + 8 * v83);
            }
          }

          if ((a1 & 0x8000000000000000) != 0)
          {
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
          }

          else
          {
            v85 = *a2;
            if (*(*a2 + 16) > a1)
            {
              v86 = sub_24F9289E8();
              v87 = *(v86 - 8);
              (*(v87 + 16))(v7, v85 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * a1, v86);
              (*(v87 + 56))(v7, 0, 1, v86);
              v88 = type metadata accessor for GameIcon(0);
              v89 = v88[8];
              *&v7[v89] = swift_getKeyPath();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
              swift_storeEnumTagMultiPayload();
              v7[v88[5]] = 1;
              v7[v88[6]] = 1;
              v7[v88[7]] = 0;
              v90 = sub_24F927618();
              v92 = v91;
              LOBYTE(v126) = 1;
              *(&v126 + 1) = 0;
              *&v127 = 0;
              *(&v127 + 1) = v111;
              *v128 = v63;
              *&v128[8] = v62;
              *&v128[24] = v90;
              v129 = v91;
              v93 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219598, &unk_24F94C490) + 36)];
              v94 = v127;
              v95 = *&v128[16];
              *(v93 + 2) = *v128;
              *(v93 + 3) = v95;
              *(v93 + 8) = v129;
              *v93 = v126;
              *(v93 + 1) = v94;
              LOBYTE(v116) = 1;
              *(&v116 + 1) = 0;
              *&v117 = 0;
              *(&v117 + 1) = v111;
              *v118 = v63;
              *&v118[8] = v62;
              *&v118[24] = v90;
              v119 = v92;

              sub_24E60169C(&v126, &v112, &qword_27F2195A8, &qword_24F97FA00);
              sub_24E601704(&v116, &qword_27F2195A8, &qword_24F97FA00);
              sub_24F927618();
              sub_24F9238C8();
              v96 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219588, &unk_24F97F9F0) + 36)];
              v97 = v113;
              *v96 = v112;
              *(v96 + 1) = v97;
              *(v96 + 2) = v114;
              *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219578, &unk_24F94C480) + 36)] = v82;
              sub_24F9278A8();
              v99 = v98;
              v101 = v100;
              v102 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219568, &qword_24F94C478) + 36)];
              *v102 = v74;
              *(v102 + 1) = v99;
              *(v102 + 2) = v101;
              v103 = v109;
              v104 = &v7[*(v108 + 36)];
              *v104 = v73;
              *(v104 + 1) = v79;
              sub_24E60169C(v7, v103, &qword_27F219548, &qword_24F94C470);
              swift_storeEnumTagMultiPayload();
              sub_24E7046B0();
              sub_24F924E28();
              sub_24E745598(&v120);
              return sub_24E601704(v7, &qword_27F219548, &qword_24F94C470);
            }
          }

          __break(1u);
LABEL_56:
          swift_once();
LABEL_21:
          ;
        }
      }
    }

    else if (v13)
    {
      if (qword_27F20FE78 != -1)
      {
        swift_once();
      }

      i = &xmmword_27F39AB00;
      goto LABEL_32;
    }

    if (qword_27F20FE70 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_21;
  }

  v18 = *(a2 + 3);
  v112 = *(a2 + 1);
  v113 = v18;
  v19 = *(a2 + 7);
  v114 = *(a2 + 5);
  v115 = v19;
  v20 = a2[10];
  v21 = a2[11];
  v22 = a2[12];
  v16 = 1;
  if (*(a2[9] + 16))
  {
    sub_24E7728CC(a1);
    if (v23)
    {
      v16 = 0;
    }
  }

  v24 = 0;
  v25 = 0;
  if (*(v21 + 16))
  {
    v26 = sub_24E7728CC(a1);
    if (v27)
    {
      v25 = *(*(v21 + 56) + 8 * v26);
    }
  }

  if (*(v20 + 16))
  {
    v28 = sub_24E7728CC(a1);
    v29 = 0;
    if (v30)
    {
      v31 = (*(v20 + 56) + 16 * v28);
      v24 = *v31;
      v29 = v31[1];
    }
  }

  else
  {
    v29 = 0;
  }

  v32 = 0;
  if (*(v22 + 16))
  {
    v33 = sub_24E7728CC(a1);
    if (v34)
    {
      v32 = *(*(v22 + 56) + 8 * v33);
    }
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  v35 = *a2;
  if (*(*a2 + 16) <= a1)
  {
    goto LABEL_54;
  }

  v36 = sub_24F9289E8();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v7, v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * a1, v36);
  (*(v37 + 56))(v7, 0, 1, v36);
  v38 = type metadata accessor for GameIcon(0);
  v39 = v38[8];
  *&v7[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v7[v38[5]] = 1;
  v7[v38[6]] = 1;
  v7[v38[7]] = 0;
  v130 = v114;
  v131 = v115;
  v40 = sub_24F927618();
  v42 = v41;
  v43 = v130;
  v44 = v131;
  LOBYTE(v116) = 1;
  *(&v116 + 1) = 0;
  *&v117 = 0;
  *(&v117 + 1) = *(&v131 + 1);
  *v118 = v131;
  *&v118[8] = v130;
  *&v118[24] = v40;
  v119 = v41;
  v45 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219598, &unk_24F94C490) + 36)];
  v46 = *&v118[16];
  *(v45 + 2) = *v118;
  *(v45 + 3) = v46;
  *(v45 + 8) = v119;
  v47 = v117;
  *v45 = v116;
  *(v45 + 1) = v47;
  LOBYTE(v120) = 1;
  *(&v120 + 1) = 0;
  *&v121 = 0;
  *(&v121 + 1) = *(&v44 + 1);
  *v122 = v44;
  *&v122[8] = v43;
  *&v122[24] = v40;
  *&v123 = v42;
  sub_24E7049FC(&v130, &v126);
  sub_24E60169C(&v116, &v126, &qword_27F2195A8, &qword_24F97FA00);
  sub_24E601704(&v120, &qword_27F2195A8, &qword_24F97FA00);
  sub_24F927618();
  sub_24F9238C8();
  v48 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219588, &unk_24F97F9F0) + 36)];
  v49 = v127;
  *v48 = v126;
  *(v48 + 1) = v49;
  *(v48 + 2) = *v128;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219578, &unk_24F94C480) + 36)] = v32;
  sub_24F9278A8();
  v51 = v50;
  v53 = v52;
  v54 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219568, &qword_24F94C478) + 36)];
  *v54 = v25;
  *(v54 + 1) = v51;
  *(v54 + 2) = v53;
  v55 = v109;
  v56 = &v7[*(v108 + 36)];
  *v56 = v24;
  *(v56 + 1) = v29;
  sub_24E60169C(v7, v55, &qword_27F219548, &qword_24F94C470);
  swift_storeEnumTagMultiPayload();
  sub_24E7046B0();
  sub_24F924E28();
  return sub_24E601704(v7, &qword_27F219548, &qword_24F94C470);
}

uint64_t sub_24E741270@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v446 = a1;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B030, &qword_24F9500F8);
  MEMORY[0x28223BE20](v394);
  v395 = (&v367 - v3);
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B038, &qword_24F950100);
  MEMORY[0x28223BE20](v401);
  v396 = &v367 - v4;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B040, &qword_24F950108);
  MEMORY[0x28223BE20](v406);
  v405 = (&v367 - v5);
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B048, &qword_24F950110);
  MEMORY[0x28223BE20](v399);
  v400 = &v367 - v6;
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B050, &qword_24F950118);
  MEMORY[0x28223BE20](v404);
  v402 = &v367 - v7;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B058, &qword_24F950120);
  MEMORY[0x28223BE20](v382);
  v384 = &v367 - v8;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B060, &qword_24F950128);
  MEMORY[0x28223BE20](v383);
  v385 = &v367 - v9;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B068, &qword_24F950130);
  MEMORY[0x28223BE20](v393);
  v386 = &v367 - v10;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B070, &qword_24F950138);
  MEMORY[0x28223BE20](v390);
  v392 = &v367 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B078, &qword_24F950140);
  v379 = *(v12 - 8);
  v380 = v12;
  MEMORY[0x28223BE20](v12);
  v373 = &v367 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v370 = &v367 - v15;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B080, &qword_24F950148);
  MEMORY[0x28223BE20](v378);
  v374 = &v367 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v371 = &v367 - v18;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B088, &unk_24F950150);
  MEMORY[0x28223BE20](v397);
  v375 = &v367 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v372 = &v367 - v21;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC8, &unk_24F949F20);
  MEMORY[0x28223BE20](v377);
  v381 = &v367 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v376 = &v367 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B090, &qword_24F950160);
  v388 = *(v25 - 8);
  v389 = v25;
  MEMORY[0x28223BE20](v25);
  v387 = &v367 - v26;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B098, &qword_24F950168);
  MEMORY[0x28223BE20](v398);
  v391 = &v367 - v27;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0A0, &qword_24F950170);
  MEMORY[0x28223BE20](v419);
  v407 = &v367 - v28;
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0A8, &qword_24F950178);
  MEMORY[0x28223BE20](v417);
  v418 = &v367 - v29;
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0B0, &unk_24F950180);
  MEMORY[0x28223BE20](v444);
  v420 = &v367 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v411 = *(v31 - 8);
  MEMORY[0x28223BE20](v31 - 8);
  v412 = v32;
  v413 = &v367 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v410 = &v367 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2191F8, &unk_24F950190);
  MEMORY[0x28223BE20](v35 - 8);
  v414 = &v367 - v36;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219200, &qword_24F94BF20);
  MEMORY[0x28223BE20](v416);
  v415 = &v367 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v38 - 8);
  v422 = &v367 - v39;
  v40 = sub_24F9289E8();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v403 = &v367 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v408 = v45;
  v409 = &v367 - v44;
  MEMORY[0x28223BE20](v46);
  v426 = &v367 - v47;
  v421 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v421);
  v430 = &v367 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219218, &unk_24F9501A0);
  MEMORY[0x28223BE20](v423);
  v424 = &v367 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219220, &unk_24F94BF40);
  MEMORY[0x28223BE20](v50 - 8);
  v431 = &v367 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219228, &qword_24F9501B0);
  MEMORY[0x28223BE20](v52);
  v425 = &v367 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v54 - 8);
  v429 = &v367 - v55;
  v56 = type metadata accessor for GSKVideo(0);
  v427 = *(v56 - 8);
  v428 = v56;
  MEMORY[0x28223BE20](v56);
  v432 = &v367 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0B8, &qword_24F9501B8);
  MEMORY[0x28223BE20](v441);
  v443 = &v367 - v58;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0C0, &qword_24F9501C0);
  MEMORY[0x28223BE20](v438);
  v440 = &v367 - v59;
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0C8, &unk_24F9501C8);
  MEMORY[0x28223BE20](v442);
  v437 = &v367 - v60;
  v433 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  MEMORY[0x28223BE20](v433);
  v447 = (&v367 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219230, &qword_24F94BF50);
  MEMORY[0x28223BE20](v434);
  v435 = &v367 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219238, &qword_24F94BF58);
  MEMORY[0x28223BE20](v63 - 8);
  v448 = (&v367 - v64);
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219240, &qword_24F94BF60);
  MEMORY[0x28223BE20](v439);
  v436 = &v367 - v65;
  v66 = sub_24F924848();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v367 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v445 = type metadata accessor for MediaCardConfiguration.VisualView(0);
  v70 = v2 + v445[9];
  v71 = *v70;
  v72 = *(v70 + 8);

  if ((v72 & 1) == 0)
  {
    sub_24F92BDC8();
    v73 = sub_24F9257A8();
    v369 = v52;
    v74 = v41;
    v75 = v40;
    v76 = v73;
    sub_24F921FD8();

    v40 = v75;
    v41 = v74;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v67 + 8))(v69, v66);
    v71 = v465;
  }

  swift_getKeyPath();
  *&v465 = v71;
  sub_24E745300(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v78 = v71[2];
  v77 = *(v71 + 3);
  v80 = *(v71 + 4);
  v79 = *(v71 + 5);

  v81 = type metadata accessor for MediaCard(0);
  v82 = v2 + v81[8];
  v83 = type metadata accessor for CommonCardAttributes(0);
  v84 = (v82 + *(v83 + 36));
  if (!*v84)
  {
    v93 = v83;
    v94 = v429;
    sub_24E60169C(v82 + *(v83 + 32), v429, &qword_27F213FB8, &unk_24F93C010);
    if ((*(v427 + 48))(v94, 1, v428) == 1)
    {
      sub_24E601704(v94, &qword_27F213FB8, &unk_24F93C010);
      v95 = v82 + *(v93 + 28);
      v96 = v422;
      sub_24E60169C(v95, v422, &qword_27F213FB0, &qword_24F93E6B0);
      if (v41[6](v96, 1, v40) == 1)
      {
        sub_24E601704(v96, &qword_27F213FB0, &qword_24F93E6B0);
        v97 = *(v2 + v81[9]);
        v98 = v446;
        if (!*(v97 + 16))
        {
          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D0, &qword_24F950200);
          return (*(*(v146 - 8) + 56))(v98, 1, 1, v146);
        }

        v448 = v41;
        v99 = *(v2 + v445[5]);
        v368 = v40;
        if (v99 > 2)
        {
          v151 = v446;
          if (v99 != 3 && v99 != 4)
          {

            v98 = v151;
LABEL_65:
            if (*(v97 + 16) == 1)
            {
              v174 = v448[2];
              v174(v403, v97 + ((*(v448 + 80) + 32) & ~*(v448 + 80)), v368);
              v175 = [objc_opt_self() standardUserDefaults];
              v176 = sub_24F92B098();
              v177 = [v175 BOOLForKey_];

              if (v177 && (v178 = (v2 + v81[10]), v178[3]) && (v179 = v178[5]) != 0)
              {
                v180 = v178[4];

                sub_24F8188E0(v180, v179);

                sub_24F3E5448(MEMORY[0x277D84F90]);
                v181 = v376;
                sub_24F928948();
                sub_24F927618();
                sub_24F9238C8();
                v182 = &v181[*(v377 + 36)];
                v183 = v491;
                *v182 = v490;
                *(v182 + 1) = v183;
                *(v182 + 2) = v492;
                v184 = v2 + v445[6];
                v185 = *(v184 + 48);
                v186 = *(v184 + 80);
                v462 = *(v184 + 64);
                v463 = v186;
                v187 = *(v184 + 16);
                v188 = *(v184 + 48);
                v460 = *(v184 + 32);
                v461 = v188;
                v189 = *(v184 + 16);
                v458 = *v184;
                v459 = v189;
                v190 = *(v184 + 80);
                v453 = v462;
                v454 = v190;
                v449 = v458;
                v450 = v187;
                v464 = *(v184 + 96);
                LODWORD(v180) = v464;
                LOBYTE(v455) = *(v184 + 96);
                v451 = v460;
                v452 = v185;
                *(&v455 + 1) = v78;
                *&v456 = v77;
                *(&v456 + 1) = v80;
                v457 = v79;
                sub_24E7450A0(&v458, &v465);
                sub_24E6E94A4();
                sub_24E745E18();
                v191 = v370;
                sub_24F925ED8();
                v471 = v455;
                v472 = v456;
                v473 = v457;
                v467 = v451;
                v468 = v452;
                v469 = v453;
                v470 = v454;
                v465 = v449;
                v466 = v450;
                sub_24E7466BC(&v465);
                v192 = v407;
                if (v180 == 1)
                {
                  v193 = sub_24F925868();
                }

                else
                {
                  v193 = sub_24F925848();
                }

                v348 = sub_24EA91914(v193, v78);
                v350 = v349;
                v352 = v351;
                v354 = v353;
                v355 = sub_24F925808();
                v356 = v371;
                (*(v379 + 32))(v371, v191, v380);
                v357 = v356 + *(v378 + 36);
                *v357 = v355;
                *(v357 + 8) = v348;
                *(v357 + 16) = v350;
                *(v357 + 24) = v352;
                *(v357 + 32) = v354;
                *(v357 + 40) = 0;
                sub_24F9242E8();
                v358 = v372;
                sub_24E6009C8(v356, v372, &qword_27F21B080, &qword_24F950148);
                v359 = (v358 + *(v397 + 36));
                v360 = v454;
                v359[4] = v453;
                v359[5] = v360;
                v359[6] = v455;
                v361 = v450;
                *v359 = v449;
                v359[1] = v361;
                v362 = v452;
                v359[2] = v451;
                v359[3] = v362;
                sub_24E60169C(v358, v392, &qword_27F21B088, &unk_24F950150);
                swift_storeEnumTagMultiPayload();
                sub_24E745CA8();
                sub_24E745E6C();
                v325 = v387;
                sub_24F924E28();
                sub_24E601704(v358, &qword_27F21B088, &unk_24F950150);
                v327 = &qword_27F218AC8;
                v328 = &unk_24F949F20;
                v326 = v376;
              }

              else
              {
                v196 = v384;
                v174(v384, v403, v368);
                v197 = type metadata accessor for MediaCardConfiguration.IconView(0);
                *&v196[*(v197 + 20)] = 0xBFCACEE9F37BEBD6;
                v198 = &v196[*(v197 + 24)];
                *v198 = swift_getKeyPath();
                v198[8] = 0;
                LOBYTE(v198) = sub_24F925818();
                v199 = v2 + v445[6];
                sub_24F923318();
                v200 = &v196[*(v382 + 36)];
                *v200 = v198;
                *(v200 + 1) = v201;
                *(v200 + 2) = v202;
                *(v200 + 3) = v203;
                *(v200 + 4) = v204;
                v200[40] = 0;
                v192 = v407;
                if (*(v199 + 96) == 1)
                {
                  v205 = sub_24F925868();
                }

                else
                {
                  v205 = sub_24F925848();
                }

                v309 = sub_24EA91914(v205, v78);
                v311 = v310;
                v313 = v312;
                v315 = v314;
                v316 = sub_24F925808();
                v317 = v196;
                v318 = v385;
                sub_24E6009C8(v317, v385, &qword_27F21B058, &qword_24F950120);
                v319 = v318 + *(v383 + 36);
                *v319 = v316;
                *(v319 + 8) = v309;
                *(v319 + 16) = v311;
                *(v319 + 24) = v313;
                *(v319 + 32) = v315;
                *(v319 + 40) = 0;
                sub_24F9242E8();
                v320 = v386;
                sub_24E6009C8(v318, v386, &qword_27F21B060, &qword_24F950128);
                v321 = (v320 + *(v393 + 36));
                v322 = v470;
                v321[4] = v469;
                v321[5] = v322;
                v321[6] = v471;
                v323 = v466;
                *v321 = v465;
                v321[1] = v323;
                v324 = v468;
                v321[2] = v467;
                v321[3] = v324;
                sub_24E60169C(v320, v392, &qword_27F21B068, &qword_24F950130);
                swift_storeEnumTagMultiPayload();
                sub_24E745CA8();
                sub_24E745E6C();
                v325 = v387;
                sub_24F924E28();
                v326 = v320;
                v327 = &qword_27F21B068;
                v328 = &qword_24F950130;
              }

              sub_24E601704(v326, v327, v328);
              (v448[1])(v403, v368);
              v363 = v391;
              sub_24E6009C8(v325, v391, &qword_27F21B090, &qword_24F950160);
              (*(v388 + 56))(v363, 0, 1, v389);
              v344 = &qword_24F950168;
              sub_24E60169C(v363, v400, &qword_27F21B098, &qword_24F950168);
              swift_storeEnumTagMultiPayload();
              sub_24E745B98();
              sub_24E746060();
              v364 = v402;
              sub_24F924E28();
              sub_24E60169C(v364, v405, &qword_27F21B050, &qword_24F950118);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D8, &qword_24F950230);
              sub_24E745B0C();
              sub_24E7460EC();
              sub_24F924E28();
              v365 = v364;
              v195 = v192;
              sub_24E601704(v365, &qword_27F21B050, &qword_24F950118);
              v346 = v363;
              v347 = &qword_27F21B098;
              goto LABEL_113;
            }

LABEL_71:
            if (v99 > 2)
            {
              v194 = v2;
              if (v99 == 3)
              {
                v195 = v407;
              }

              else
              {
                v195 = v407;
                if (v99 != 4)
                {

LABEL_85:
                  v242 = [objc_opt_self() standardUserDefaults];
                  v243 = sub_24F92B098();
                  v244 = [v242 BOOLForKey_];

                  if (v244 && (v245 = (v194 + v81[10]), v245[3]) && (v246 = v245[5]) != 0)
                  {
                    v247 = v245[4];

                    sub_24F8188E0(v247, v246);

                    sub_24F3E5448(MEMORY[0x277D84F90]);
                    v248 = v381;
                    sub_24F928948();
                    sub_24F927618();
                    sub_24F9238C8();
                    v249 = (v248 + *(v377 + 36));
                    v250 = v491;
                    *v249 = v490;
                    v249[1] = v250;
                    v249[2] = v492;
                    v251 = v194 + v445[6];
                    v252 = *(v251 + 48);
                    v253 = *(v251 + 80);
                    v462 = *(v251 + 64);
                    v463 = v253;
                    v254 = *(v251 + 16);
                    v255 = *(v251 + 48);
                    v460 = *(v251 + 32);
                    v461 = v255;
                    v256 = *(v251 + 16);
                    v458 = *v251;
                    v459 = v256;
                    v257 = *(v251 + 80);
                    v453 = v462;
                    v454 = v257;
                    v449 = v458;
                    v450 = v254;
                    v464 = *(v251 + 96);
                    LODWORD(v247) = v464;
                    LOBYTE(v455) = *(v251 + 96);
                    v451 = v460;
                    v452 = v252;
                    *(&v455 + 1) = v78;
                    *&v456 = v77;
                    *(&v456 + 1) = v80;
                    v457 = v79;
                    sub_24E7450A0(&v458, &v465);
                    sub_24E6E94A4();
                    sub_24E745E18();
                    v258 = v373;
                    sub_24F925ED8();
                    v471 = v455;
                    v472 = v456;
                    v473 = v457;
                    v467 = v451;
                    v468 = v452;
                    v469 = v453;
                    v470 = v454;
                    v465 = v449;
                    v466 = v450;
                    sub_24E7466BC(&v465);
                    if (v247 == 1)
                    {
                      v259 = sub_24F925868();
                    }

                    else
                    {
                      v259 = sub_24F925848();
                    }

                    v329 = sub_24EA91914(v259, v78);
                    v331 = v330;
                    v333 = v332;
                    v335 = v334;
                    v336 = sub_24F925808();
                    v337 = v374;
                    (*(v379 + 32))(v374, v258, v380);
                    v338 = v337 + *(v378 + 36);
                    *v338 = v336;
                    *(v338 + 8) = v329;
                    *(v338 + 16) = v331;
                    *(v338 + 24) = v333;
                    *(v338 + 32) = v335;
                    *(v338 + 40) = 0;
                    sub_24F9242E8();
                    v339 = v375;
                    sub_24E6009C8(v337, v375, &qword_27F21B080, &qword_24F950148);
                    v340 = (v339 + *(v397 + 36));
                    v341 = v454;
                    v340[4] = v453;
                    v340[5] = v341;
                    v340[6] = v455;
                    v342 = v450;
                    *v340 = v449;
                    v340[1] = v342;
                    v343 = v452;
                    v340[2] = v451;
                    v340[3] = v343;
                    sub_24E60169C(v339, v395, &qword_27F21B088, &unk_24F950150);
                    swift_storeEnumTagMultiPayload();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D8, &qword_24F950230);
                    sub_24E745CA8();
                    sub_24E7460EC();
                    v295 = v396;
                    sub_24F924E28();
                    sub_24E601704(v339, &qword_27F21B088, &unk_24F950150);
                    sub_24E601704(v381, &qword_27F218AC8, &unk_24F949F20);
                  }

                  else
                  {
                    v260 = v194 + v445[6];
                    LOBYTE(v455) = *(v260 + 96);
                    v261 = *(v260 + 80);
                    v453 = *(v260 + 64);
                    v454 = v261;
                    v262 = *(v260 + 16);
                    v449 = *v260;
                    v450 = v262;
                    v263 = *(v260 + 48);
                    v451 = *(v260 + 32);
                    v452 = v263;
                    v264 = v455;
                    v476 = v262;
                    v475 = v449;
                    v481 = v455;
                    v480 = v261;
                    v479 = v453;
                    v477 = v451;
                    v478 = v263;
                    KeyPath = swift_getKeyPath();
                    LOBYTE(v458) = 0;

                    sub_24E7450A0(&v449, &v465);
                    v266 = sub_24F925818();
                    sub_24F923318();
                    v268 = v267;
                    v270 = v269;
                    v272 = v271;
                    v274 = v273;
                    LOBYTE(v490) = 0;
                    if (v264 == 1)
                    {
                      v275 = sub_24F925868();
                    }

                    else
                    {
                      v275 = sub_24F925848();
                    }

                    v276 = sub_24EA91914(v275, v78);
                    v278 = v277;
                    v280 = v279;
                    v282 = v281;
                    v283 = sub_24F925808();
                    LOBYTE(v458) = 0;
                    sub_24F9242E8();
                    *&v474[55] = v468;
                    *&v474[71] = v469;
                    *&v474[87] = v470;
                    *&v474[103] = v471;
                    *&v474[7] = v465;
                    *&v474[23] = v466;
                    *&v474[39] = v467;
                    v284 = v395;
                    *v395 = v97;
                    v285 = v478;
                    *(v284 + 5) = v477;
                    v286 = v475;
                    *(v284 + 3) = v476;
                    *(v284 + 1) = v286;
                    v287 = v479;
                    v288 = v480;
                    *(v284 + 104) = v481;
                    *(v284 + 11) = v288;
                    *(v284 + 9) = v287;
                    *(v284 + 7) = v285;
                    *(v284 + 105) = v99;
                    v284[14] = KeyPath;
                    *(v284 + 120) = 0;
                    *(v284 + 128) = v266;
                    v284[17] = v268;
                    v284[18] = v270;
                    v284[19] = v272;
                    v284[20] = v274;
                    *(v284 + 168) = 0;
                    *(v284 + 176) = v283;
                    *(v284 + 23) = v276;
                    v284[24] = v278;
                    v284[25] = v280;
                    v284[26] = v282;
                    *(v284 + 216) = 0;
                    v289 = *v474;
                    v290 = *&v474[16];
                    v291 = *&v474[48];
                    *(v284 + 249) = *&v474[32];
                    *(v284 + 233) = v290;
                    *(v284 + 217) = v289;
                    v292 = *&v474[64];
                    v293 = *&v474[80];
                    v294 = *&v474[96];
                    v284[41] = *&v474[111];
                    *(v284 + 297) = v293;
                    *(v284 + 313) = v294;
                    *(v284 + 265) = v291;
                    *(v284 + 281) = v292;
                    swift_storeEnumTagMultiPayload();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D8, &qword_24F950230);
                    sub_24E745CA8();
                    sub_24E7460EC();
                    v295 = v396;
                    sub_24F924E28();
                  }

                  v344 = &qword_24F950100;
                  sub_24E60169C(v295, v400, &qword_27F21B038, &qword_24F950100);
                  swift_storeEnumTagMultiPayload();
                  sub_24E745B98();
                  sub_24E746060();
                  v345 = v402;
                  sub_24F924E28();
                  sub_24E60169C(v345, v405, &qword_27F21B050, &qword_24F950118);
                  swift_storeEnumTagMultiPayload();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D8, &qword_24F950230);
                  sub_24E745B0C();
                  sub_24E7460EC();
                  v195 = v407;
                  sub_24F924E28();
                  sub_24E601704(v345, &qword_27F21B050, &qword_24F950118);
                  v346 = v295;
                  v347 = &qword_27F21B038;
LABEL_113:
                  sub_24E601704(v346, v347, v344);
                  v98 = v446;
LABEL_114:
                  sub_24E60169C(v195, v418, &qword_27F21B0A0, &qword_24F950170);
                  swift_storeEnumTagMultiPayload();
                  sub_24E703044();
                  sub_24E7463A0();
                  v366 = v420;
                  sub_24F924E28();
                  sub_24E60169C(v366, v443, &qword_27F21B0B0, &unk_24F950180);
                  swift_storeEnumTagMultiPayload();
                  sub_24E74642C();
                  sub_24E746630();
                  sub_24F924E28();
                  sub_24E601704(v366, &qword_27F21B0B0, &unk_24F950180);
                  sub_24E601704(v195, &qword_27F21B0A0, &qword_24F950170);
                  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D0, &qword_24F950200);
                  v171 = *(*(v170 - 8) + 56);
                  v172 = v98;
                  return v171(v172, 0, 1, v170);
                }
              }
            }

            else
            {
              v194 = v2;
              v195 = v407;
            }

            v206 = sub_24F92CE08();

            if ((v206 & 1) == 0)
            {
              v207 = v194 + v445[6];
              LOBYTE(v455) = *(v207 + 96);
              v208 = *(v207 + 80);
              v453 = *(v207 + 64);
              v454 = v208;
              v209 = *(v207 + 16);
              v449 = *v207;
              v450 = v209;
              v210 = *(v207 + 48);
              v451 = *(v207 + 32);
              v452 = v210;
              v211 = v455;
              v484 = v209;
              v483 = v449;
              v489 = v455;
              v488 = v208;
              v487 = v453;
              v485 = v451;
              v486 = v210;
              v212 = swift_getKeyPath();
              LOBYTE(v458) = 0;

              sub_24E7450A0(&v449, &v465);
              v213 = sub_24F925818();
              sub_24F923318();
              v215 = v214;
              v217 = v216;
              v219 = v218;
              v221 = v220;
              LOBYTE(v490) = 0;
              if (v211 == 1)
              {
                v222 = sub_24F925868();
              }

              else
              {
                v222 = sub_24F925848();
              }

              v223 = sub_24EA91914(v222, v78);
              v225 = v224;
              v227 = v226;
              v229 = v228;
              v230 = sub_24F925808();
              LOBYTE(v458) = 0;
              sub_24F9242E8();
              *&v482[55] = v468;
              *&v482[71] = v469;
              *&v482[87] = v470;
              *&v482[103] = v471;
              *&v482[7] = v465;
              *&v482[23] = v466;
              *&v482[39] = v467;
              v231 = v405;
              *v405 = v97;
              v232 = v486;
              *(v231 + 5) = v485;
              v233 = v483;
              *(v231 + 3) = v484;
              *(v231 + 1) = v233;
              v234 = v487;
              v235 = v488;
              *(v231 + 104) = v489;
              *(v231 + 11) = v235;
              *(v231 + 9) = v234;
              *(v231 + 7) = v232;
              *(v231 + 105) = v99;
              v231[14] = v212;
              *(v231 + 120) = 0;
              *(v231 + 128) = v213;
              v231[17] = v215;
              v231[18] = v217;
              v231[19] = v219;
              v231[20] = v221;
              *(v231 + 168) = 0;
              *(v231 + 176) = v230;
              *(v231 + 23) = v223;
              v231[24] = v225;
              v231[25] = v227;
              v231[26] = v229;
              *(v231 + 216) = 0;
              v236 = *v482;
              v237 = *&v482[16];
              v238 = *&v482[48];
              *(v231 + 249) = *&v482[32];
              *(v231 + 233) = v237;
              *(v231 + 217) = v236;
              v239 = *&v482[64];
              v240 = *&v482[80];
              v241 = *&v482[96];
              v231[41] = *&v482[111];
              *(v231 + 297) = v240;
              *(v231 + 313) = v241;
              *(v231 + 265) = v238;
              *(v231 + 281) = v239;
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D8, &qword_24F950230);
              sub_24E745B0C();
              sub_24E7460EC();
              sub_24F924E28();
              goto LABEL_114;
            }

            goto LABEL_85;
          }

          v98 = v446;
        }

        v173 = sub_24F92CE08();

        if ((v173 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_65;
      }

      v447 = v41[4];
      v114 = v426;
      v447(v426, v96, v40);
      v115 = sub_24F922348();
      v116 = v410;
      (*(*(v115 - 8) + 56))(v410, 1, 1, v115);
      v439 = *MEMORY[0x277CEE240];
      v117 = v40;
      v448 = v41;
      v118 = v409;
      v41[2](v409, v114, v40);
      v440 = v2;
      v119 = v116;
      v120 = v413;
      sub_24E6009C8(v119, v413, &qword_27F214148, &qword_24F93C520);
      v121 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v122 = (v408 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = (*(v411 + 80) + v122 + 8) & ~*(v411 + 80);
      v124 = v123 + v412;
      v125 = swift_allocObject();
      v126 = v118;
      v127 = v439;
      v368 = v117;
      v447(v125 + v121, v126, v117);
      *(v125 + v122) = v127;
      sub_24E6009C8(v120, v125 + v123, &qword_27F214148, &qword_24F93C520);
      *(v125 + v124) = 1;
      v128 = *(v440 + v445[5]);
      if (v128 > 2)
      {
        v129 = v414;
        if (v128 == 3)
        {
          v152 = v127;

          v130 = v446;
          v153 = sub_24F925868();
          goto LABEL_98;
        }

        v130 = v446;
      }

      else
      {
        v129 = v414;
        v130 = v446;
      }

      v154 = sub_24F92CE08();
      v155 = v127;

      if ((v154 & 1) == 0)
      {
        if (v128 <= 2 || v128 == 4)
        {
          v296 = sub_24F92CE08();

          if ((v296 & 1) == 0)
          {
            v153 = sub_24F925818();
            goto LABEL_98;
          }
        }

        else
        {
        }

        v153 = sub_24F925808();
        goto LABEL_98;
      }

      v153 = sub_24F925868();
LABEL_98:
      v297 = sub_24EA91914(v153, v78);
      v299 = v298;
      v301 = v300;
      v303 = v302;
      v304 = sub_24F925808();
      if (v128 > 4)
      {
        v305 = 1;
      }

      else
      {
        v305 = sub_24F92CE08();
      }

      LOBYTE(v458) = 0;
      *&v465 = sub_24E623C20;
      *(&v465 + 1) = v125;
      LOBYTE(v466) = v304;
      *(&v466 + 1) = v297;
      *&v467 = v299;
      *(&v467 + 1) = v301;
      *&v468 = v303;
      BYTE8(v468) = 0;
      sub_24E92463C(v305 & 1);

      if (v128 > 4)
      {
        v306 = 1;
      }

      else
      {
        v306 = sub_24F92CE08();
      }

      *(&v450 + 1) = sub_24F925048();
      *&v451 = MEMORY[0x277CE0420];
      __swift_allocate_boxed_opaque_existential_1(&v449);
      sub_24F925258();
      v307 = v415;
      sub_24E923E88(v306 & 1, &v449);
      sub_24E601704(v129, &qword_27F2191F8, &unk_24F950190);
      __swift_destroy_boxed_opaque_existential_1(&v449);
      sub_24E60169C(v307, v418, &qword_27F219200, &qword_24F94BF20);
      swift_storeEnumTagMultiPayload();
      sub_24E703044();
      sub_24E7463A0();
      v308 = v420;
      sub_24F924E28();
      sub_24E60169C(v308, v443, &qword_27F21B0B0, &unk_24F950180);
      swift_storeEnumTagMultiPayload();
      sub_24E74642C();
      sub_24E746630();
      sub_24F924E28();
      sub_24E601704(v308, &qword_27F21B0B0, &unk_24F950180);
      sub_24E601704(v307, &qword_27F219200, &qword_24F94BF20);
      (v448[1])(v426, v368);
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D0, &qword_24F950200);
      v171 = *(*(v170 - 8) + 56);
      v172 = v130;
      return v171(v172, 0, 1, v170);
    }

    v100 = v432;
    sub_24E746F20(v94, v432, type metadata accessor for GSKVideo);
    v101 = v430;
    sub_24E745628(v100, v430, type metadata accessor for GSKVideo);
    v102 = v421;
    v103 = *(v421 + 20);
    v104 = type metadata accessor for VideoConfiguration(0);
    (*(*(v104 - 8) + 56))(v101 + v103, 1, 1, v104);
    v105 = sub_24F9238D8();
    v106 = (v101 + v102[12]);
    type metadata accessor for GSKVideoPlaybackCoordinator(0);
    sub_24E745300(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator, &unk_24F95FAB8);
    *v106 = sub_24F9243D8();
    v106[1] = v107;
    *(v101 + v102[9]) = 1;
    *(v101 + v102[10]) = v105;
    *(v101 + v102[11]) = 0;
    *(v101 + v102[6]) = 0x3FE8000000000000;
    *(v101 + v102[7]) = 0x3FE0000000000000;
    v108 = v101 + v102[8];
    *(v108 + 32) = 0u;
    *(v108 + 48) = 0u;
    *v108 = 0u;
    *(v108 + 16) = 0u;
    *(v108 + 64) = 5;
    v109 = *(v2 + v445[5]);
    v110 = v446;
    if (v109 > 2)
    {
      v111 = v424;
      if (v109 == 3)
      {

        v148 = v437;
        v149 = sub_24F925868();
        goto LABEL_55;
      }
    }

    else
    {
      v111 = v424;
    }

    v148 = v437;
    v150 = sub_24F92CE08();

    if ((v150 & 1) == 0)
    {
      if (v109 <= 2 || v109 == 4)
      {
        v156 = sub_24F92CE08();

        if ((v156 & 1) == 0)
        {
          v149 = sub_24F925818();
          goto LABEL_55;
        }
      }

      else
      {
      }

      v149 = sub_24F925808();
      goto LABEL_55;
    }

    v149 = sub_24F925868();
LABEL_55:
    v157 = sub_24EA91914(v149, v78);
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v164 = sub_24F925808();
    sub_24E746F20(v430, v111, type metadata accessor for GSKVideoView);
    v165 = v111 + *(v423 + 36);
    *v165 = v164;
    *(v165 + 8) = v157;
    *(v165 + 16) = v159;
    *(v165 + 24) = v161;
    *(v165 + 32) = v163;
    *(v165 + 40) = 0;
    if (v109 > 4)
    {

      v167 = 1;
      sub_24E924370(1);
      sub_24E601704(v111, &qword_27F219218, &unk_24F9501A0);
    }

    else
    {
      v166 = sub_24F92CE08();

      sub_24E924370(v166 & 1);
      sub_24E601704(v111, &qword_27F219218, &unk_24F9501A0);
      v167 = sub_24F92CE08();
    }

    *(&v466 + 1) = sub_24F925048();
    *&v467 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(&v465);
    sub_24F925258();
    v168 = v425;
    v169 = v431;
    sub_24E923C6C(v167 & 1, &v465);
    sub_24E601704(v169, &qword_27F219220, &unk_24F94BF40);
    __swift_destroy_boxed_opaque_existential_1(&v465);
    sub_24E60169C(v168, v440, &qword_27F219228, &qword_24F9501B0);
    swift_storeEnumTagMultiPayload();
    sub_24E70388C();
    sub_24E702DB8();
    sub_24F924E28();
    sub_24E60169C(v148, v443, &qword_27F21B0C8, &unk_24F9501C8);
    swift_storeEnumTagMultiPayload();
    sub_24E74642C();
    sub_24E746630();
    sub_24F924E28();
    sub_24E601704(v148, &qword_27F21B0C8, &unk_24F9501C8);
    sub_24E601704(v168, &qword_27F219228, &qword_24F9501B0);
    sub_24E7455C8(v432, type metadata accessor for GSKVideo);
    goto LABEL_58;
  }

  v85 = v84[1];
  v86 = *(v2 + v445[5]);
  v87 = v447;
  *v447 = *v84;
  *(v87 + 1) = v85;
  *(v87 + 16) = v86;
  v88 = v433;
  v89 = *(v433 + 24);
  *(v87 + v89) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v90 = *(v88 + 28);
  *(v87 + v90) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v91 = v87 + *(v88 + 32);
  *v91 = swift_getKeyPath();
  v91[8] = 0;
  if (v86 > 2)
  {
    v92 = v435;
    if (v86 == 3)
    {

      v112 = sub_24F925868();
      goto LABEL_31;
    }
  }

  else
  {
    v92 = v435;
  }

  v113 = sub_24F92CE08();

  if ((v113 & 1) == 0)
  {
    if (v86 <= 2 || v86 == 4)
    {
      v131 = sub_24F92CE08();

      if ((v131 & 1) == 0)
      {
        v112 = sub_24F925818();
        goto LABEL_31;
      }
    }

    else
    {
    }

    v112 = sub_24F925808();
    goto LABEL_31;
  }

  v112 = sub_24F925868();
LABEL_31:
  v132 = sub_24EA91914(v112, v78);
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v139 = sub_24F925808();
  sub_24E746F20(v447, v92, type metadata accessor for CardElementView.PrimaryMixedMediaView);
  v140 = v92 + *(v434 + 36);
  *v140 = v139;
  *(v140 + 8) = v132;
  *(v140 + 16) = v134;
  *(v140 + 24) = v136;
  *(v140 + 32) = v138;
  *(v140 + 40) = 0;
  if (v86 > 4)
  {

    v143 = 1;
    sub_24E9240A4(1);
    sub_24E601704(v92, &qword_27F219230, &qword_24F94BF50);
    v110 = v446;
    v142 = v437;
  }

  else
  {
    v141 = sub_24F92CE08();

    sub_24E9240A4(v141 & 1);
    sub_24E601704(v92, &qword_27F219230, &qword_24F94BF50);
    v110 = v446;
    v142 = v437;
    v143 = sub_24F92CE08();
  }

  *(&v466 + 1) = sub_24F925048();
  *&v467 = MEMORY[0x277CE0420];
  __swift_allocate_boxed_opaque_existential_1(&v465);
  sub_24F925258();
  v144 = v436;
  v145 = v448;
  sub_24E923A50(v143 & 1, &v465);
  sub_24E601704(v145, &qword_27F219238, &qword_24F94BF58);
  __swift_destroy_boxed_opaque_existential_1(&v465);
  sub_24E60169C(v144, v440, &qword_27F219240, &qword_24F94BF60);
  swift_storeEnumTagMultiPayload();
  sub_24E70388C();
  sub_24E702DB8();
  sub_24F924E28();
  sub_24E60169C(v142, v443, &qword_27F21B0C8, &unk_24F9501C8);
  swift_storeEnumTagMultiPayload();
  sub_24E74642C();
  sub_24E746630();
  sub_24F924E28();
  sub_24E601704(v142, &qword_27F21B0C8, &unk_24F9501C8);
  sub_24E601704(v144, &qword_27F219240, &qword_24F94BF60);
LABEL_58:
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D0, &qword_24F950200);
  v171 = *(*(v170 - 8) + 56);
  v172 = v110;
  return v171(v172, 0, 1, v170);
}

uint64_t sub_24E744BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  if (a1 == 12)
  {
    if (a3 - 1 >= 4)
    {
      if (!a3)
      {
        return 1;
      }

      v23 = a2 + *(type metadata accessor for MediaCard(0) + 32);
      v24 = type metadata accessor for CommonCardAttributes(0);
      if (!*(v23 + *(v24 + 36)))
      {
        v25 = v24;
        sub_24E60169C(v23 + *(v24 + 32), v8, &qword_27F213FB8, &unk_24F93C010);
        v26 = type metadata accessor for GSKVideo(0);
        v27 = (*(*(v26 - 8) + 48))(v8, 1, v26);
        sub_24E601704(v8, &qword_27F213FB8, &unk_24F93C010);
        if (v27 == 1)
        {
          sub_24E60169C(v23 + *(v25 + 28), v14, &qword_27F213FB0, &qword_24F93E6B0);
          v28 = sub_24F9289E8();
          v29 = (*(*(v28 - 8) + 48))(v14, 1, v28) == 1;
          v30 = v14;
LABEL_22:
          sub_24E601704(v30, &qword_27F213FB0, &qword_24F93E6B0);
          return v29;
        }
      }
    }

    else
    {
      v18 = a2 + *(type metadata accessor for MediaCard(0) + 32);
      v19 = type metadata accessor for CommonCardAttributes(0);
      sub_24E60169C(v18 + *(v19 + 28), v11, &qword_27F213FB0, &qword_24F93E6B0);
      v20 = sub_24F9289E8();
      v21 = (*(*(v20 - 8) + 48))(v11, 1, v20);
      sub_24E601704(v11, &qword_27F213FB0, &qword_24F93E6B0);
      if (v21 == 1)
      {
        return *(v18 + *(v19 + 36)) == 0;
      }
    }

    return 0;
  }

  if (a1 == 3)
  {
    if (a3)
    {
      v31 = sub_24F92CE08();

      if (v31)
      {
        return 1;
      }

      v32 = a2 + *(type metadata accessor for MediaCard(0) + 32);
      v33 = type metadata accessor for CommonCardAttributes(0);
      sub_24E60169C(v32 + *(v33 + 28), v17, &qword_27F213FB0, &qword_24F93E6B0);
      v34 = sub_24F9289E8();
      v29 = 1;
      if ((*(*(v34 - 8) + 48))(v17, 1, v34) == 1)
      {
        v29 = *(v32 + *(v33 + 36)) != 0;
      }

      v30 = v17;
      goto LABEL_22;
    }

    return 1;
  }

  return sub_24E92D030(a1, a2, a3);
}

unint64_t sub_24E7450D8()
{
  result = qword_27F21AFC8;
  if (!qword_27F21AFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AFB0, &unk_24F94FF60);
    sub_24E745190();
    sub_24E7454E4(&qword_27F21AFE8, &qword_27F21AF88, &qword_24F94FF38, sub_24E745348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AFC8);
  }

  return result;
}

unint64_t sub_24E745190()
{
  result = qword_27F21AFD0;
  if (!qword_27F21AFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AFA8, &qword_24F94FF58);
    sub_24E74524C();
    sub_24E745300(&qword_27F21AFE0, type metadata accessor for MediaCardConfiguration.VisualView, &unk_24F9500A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AFD0);
  }

  return result;
}

unint64_t sub_24E74524C()
{
  result = qword_27F21AFD8;
  if (!qword_27F21AFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AFB8, &unk_24FA18C00);
    sub_24E745300(&qword_27F214B78, type metadata accessor for CardElementView.Category, &unk_24FA04858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AFD8);
  }

  return result;
}

uint64_t sub_24E745300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E745348()
{
  result = qword_27F21AFF0;
  if (!qword_27F21AFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AF78, &qword_24F94FF28);
    sub_24E7453CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AFF0);
  }

  return result;
}

unint64_t sub_24E7453CC()
{
  result = qword_27F21AFF8;
  if (!qword_27F21AFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AF70, &qword_24F94FF20);
    sub_24E745458();
    sub_24E7018B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AFF8);
  }

  return result;
}

unint64_t sub_24E745458()
{
  result = qword_27F21B000;
  if (!qword_27F21B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AF68, &qword_24F94FF18);
    sub_24E63D098();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B000);
  }

  return result;
}

uint64_t sub_24E7454E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24E745300(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7455C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E745628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E745698(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E7456E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E745760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 56);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E745834(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MediaCard(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 56) = (a2 - 1);
  }

  return result;
}

void sub_24E7458F0(uint64_t a1)
{
  type metadata accessor for MediaCard(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24E746BEC(319, &qword_27F215590, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        sub_24E7268F0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24E7459D0()
{
  result = qword_27F21B018;
  if (!qword_27F21B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B020, &qword_24F9500A0);
    sub_24E745A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B018);
  }

  return result;
}

unint64_t sub_24E745A54()
{
  result = qword_27F21B028;
  if (!qword_27F21B028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AFC0, &unk_24F94FF70);
    sub_24E7450D8();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B028);
  }

  return result;
}

unint64_t sub_24E745B0C()
{
  result = qword_27F21B0E0;
  if (!qword_27F21B0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B050, &qword_24F950118);
    sub_24E745B98();
    sub_24E746060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B0E0);
  }

  return result;
}

unint64_t sub_24E745B98()
{
  result = qword_27F21B0E8;
  if (!qword_27F21B0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B098, &qword_24F950168);
    sub_24E745C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B0E8);
  }

  return result;
}

unint64_t sub_24E745C1C()
{
  result = qword_27F21B0F0;
  if (!qword_27F21B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B090, &qword_24F950160);
    sub_24E745CA8();
    sub_24E745E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B0F0);
  }

  return result;
}

unint64_t sub_24E745CA8()
{
  result = qword_27F21B0F8;
  if (!qword_27F21B0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B088, &unk_24F950150);
    sub_24E745D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B0F8);
  }

  return result;
}

unint64_t sub_24E745D34()
{
  result = qword_27F21B100;
  if (!qword_27F21B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B080, &qword_24F950148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218AC8, &unk_24F949F20);
    sub_24E6E94A4();
    sub_24E745E18();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B100);
  }

  return result;
}

unint64_t sub_24E745E18()
{
  result = qword_27F21B108;
  if (!qword_27F21B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B108);
  }

  return result;
}

unint64_t sub_24E745E6C()
{
  result = qword_27F21B110;
  if (!qword_27F21B110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B068, &qword_24F950130);
    sub_24E745EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B110);
  }

  return result;
}

unint64_t sub_24E745EF8()
{
  result = qword_27F21B118;
  if (!qword_27F21B118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B060, &qword_24F950128);
    sub_24E745F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B118);
  }

  return result;
}

unint64_t sub_24E745F84()
{
  result = qword_27F21B120;
  if (!qword_27F21B120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B058, &qword_24F950120);
    sub_24E745300(&qword_27F21B128, type metadata accessor for MediaCardConfiguration.IconView, &unk_24F950460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B120);
  }

  return result;
}

unint64_t sub_24E746060()
{
  result = qword_27F21B130;
  if (!qword_27F21B130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B038, &qword_24F950100);
    sub_24E745CA8();
    sub_24E7460EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B130);
  }

  return result;
}

unint64_t sub_24E7460EC()
{
  result = qword_27F21B138;
  if (!qword_27F21B138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B0D8, &qword_24F950230);
    sub_24E746178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B138);
  }

  return result;
}

unint64_t sub_24E746178()
{
  result = qword_27F21B140;
  if (!qword_27F21B140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B148, &qword_24F950238);
    sub_24E746204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B140);
  }

  return result;
}

unint64_t sub_24E746204()
{
  result = qword_27F21B150;
  if (!qword_27F21B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B158, &unk_24F950240);
    sub_24E746290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B150);
  }

  return result;
}

unint64_t sub_24E746290()
{
  result = qword_27F21B160;
  if (!qword_27F21B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B160);
  }

  return result;
}

unint64_t sub_24E7462E4()
{
  result = qword_27F2192F8;
  if (!qword_27F2192F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219300, &unk_24F950250);
    sub_24E7032C8();
    sub_24E745300(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier, &unk_24F9B5F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192F8);
  }

  return result;
}

unint64_t sub_24E7463A0()
{
  result = qword_27F21B168;
  if (!qword_27F21B168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B0A0, &qword_24F950170);
    sub_24E745B0C();
    sub_24E7460EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B168);
  }

  return result;
}

unint64_t sub_24E74642C()
{
  result = qword_27F21B170;
  if (!qword_27F21B170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B0C8, &unk_24F9501C8);
    sub_24E70388C();
    sub_24E702DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B170);
  }

  return result;
}

unint64_t sub_24E7464B8()
{
  result = qword_27F2193A8;
  if (!qword_27F2193A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2193B0, &qword_24F94C040);
    sub_24E703A5C();
    sub_24E745300(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier, &unk_24F9B5F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193A8);
  }

  return result;
}

unint64_t sub_24E746574()
{
  result = qword_27F2192B8;
  if (!qword_27F2192B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2192C0, &qword_24F950260);
    sub_24E702F88();
    sub_24E745300(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier, &unk_24F9B5F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192B8);
  }

  return result;
}

unint64_t sub_24E746630()
{
  result = qword_27F21B178;
  if (!qword_27F21B178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B0B0, &unk_24F950180);
    sub_24E703044();
    sub_24E7463A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B178);
  }

  return result;
}

uint64_t sub_24E7466EC()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24E7468F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_24E746940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E7469C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24E746A94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

void sub_24E746B50(uint64_t a1)
{
  sub_24F9289E8();
  if (v1 <= 0x3F)
  {
    sub_24E746BEC(319, &qword_27F21B190, &type metadata for HeroLayoutMode);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E746BEC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_24E746C6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E746CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E746D28()
{
  result = qword_27F21B198;
  if (!qword_27F21B198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B1A0, &qword_24F950408);
    sub_24E746DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B198);
  }

  return result;
}

unint64_t sub_24E746DAC()
{
  result = qword_27F21B1A8;
  if (!qword_27F21B1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B0D0, &qword_24F950200);
    sub_24E74642C();
    sub_24E746630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B1A8);
  }

  return result;
}

unint64_t sub_24E746E8C()
{
  result = qword_27F21B1B8;
  if (!qword_27F21B1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B1B0, &qword_24F9504F0);
    sub_24E6E97A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B1B8);
  }

  return result;
}

uint64_t sub_24E746F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E746F88()
{

  sub_24E62A5EC(*(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_24E746FFC()
{

  return swift_deallocObject();
}

uint64_t sub_24E74706C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7470EC()
{
  result = qword_27F21B200;
  if (!qword_27F21B200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B208, &unk_24F950598);
    sub_24E746E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B200);
  }

  return result;
}

unint64_t sub_24E74717C()
{
  result = qword_27F21B210;
  if (!qword_27F21B210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B1C0, &qword_24F950530);
    sub_24E6801D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B210);
  }

  return result;
}

unint64_t sub_24E74720C()
{
  result = qword_27F21B218;
  if (!qword_27F21B218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B1D8, &qword_24F950548);
    sub_24E602068(&qword_27F21B220, &qword_27F21B1C8, &qword_24F950538, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B218);
  }

  return result;
}

uint64_t sub_24E7472C4()
{
  v0 = sub_24F922348();
  __swift_allocate_value_buffer(v0, qword_27F39ABD0);
  __swift_project_value_buffer(v0, qword_27F39ABD0);
  return _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
}

uint64_t sub_24E747318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F923F78();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277CDFA90], v5, v7);
  v10 = sub_24F923F68();
  (*(v6 + 8))(v9, v5);
  v11 = 24;
  if (v10)
  {
    v11 = 72;
  }

  v12 = *(*(v2 + 16) + v11);
  if (v12 == 2)
  {
    v13 = sub_24E747AD4(*(v2 + 25), a1, &OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons, &OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
    if (v13 != 2 && (v13 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v14 = MEMORY[0x277CDF3C0];
    goto LABEL_9;
  }

  if (v12)
  {
    goto LABEL_8;
  }

LABEL_6:
  v14 = MEMORY[0x277CDF3D0];
LABEL_9:
  v15 = *v14;
  v16 = sub_24F9234D8();
  return (*(*(v16 - 8) + 104))(a2, v15, v16);
}

BOOL sub_24E7474C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = *(v0 + 16);
  sub_24E747EE8(v10 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, &v17 - v8);
  v11 = sub_24F91F008();
  v12 = *(*(v11 - 8) + 48);
  v13 = 1;
  v14 = v12(v9, 1, v11);
  sub_24E747F58(v9);
  if (v14 == 1)
  {
    sub_24E747EE8(v10 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, v6);
    v15 = v12(v6, 1, v11);
    sub_24E747F58(v6);
    if (v15 == 1)
    {
      sub_24E747EE8(v10 + OBJC_IVAR____TtC12GameStoreKit5Brick_caption, v3);
      v13 = v12(v3, 1, v11) != 1;
      sub_24E747F58(v3);
    }
  }

  return v13;
}

uint64_t sub_24E747690(uint64_t a1)
{
  v2 = sub_24F923F78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CDFA90], v2, v4);
  v7 = sub_24F923F68();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
  }

  v9 = *(*(v1 + 16) + 16);
  if (!v9)
  {
    return 0;
  }

  if (v9 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x253052270](0, v9);
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_24E747804(uint64_t a1)
{
  v2 = sub_24F923F78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CDFA90], v2, v4);
  v7 = sub_24F923F68();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    goto LABEL_2;
  }

  v9 = *(*(v1 + 16) + 16);
  if (!v9)
  {
    result = 0;
    goto LABEL_10;
  }

  if (v9 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x253052270](0, v9);
    goto LABEL_10;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_2:

LABEL_10:
    v10 = result == 0;

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E747988()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BrickViewModel(uint64_t a1)
{
  result = qword_27F21B228;
  if (!qword_27F21B228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E747A6C()
{
  result = qword_27F21B238;
  if (!qword_27F21B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B238);
  }

  return result;
}

uint64_t sub_24E747AD4(unsigned __int8 a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(v4 + 16);
  v6 = *(v5 + *a3);
  if (!v6)
  {
    return 2;
  }

  v19 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_29:
    v8 = sub_24F92C738();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = v9;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x253052270](v11, v6);
          v9 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v12 = *(v6 + 8 * v11 + 32);

          v9 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        swift_beginAccess();
        v13 = *(v12 + 48);
        if (v13)
        {
          break;
        }

        swift_endAccess();

        ++v11;
        if (v9 == v8)
        {
          goto LABEL_22;
        }
      }

      v14 = v13;

      sub_24F926BF8();
      swift_endAccess();

      MEMORY[0x253050F00]();
      if (*(v19 + 16) >= *(v19 + 24) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v10 = v19;
    }

    while (v9 != v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_22:

  if (*(v5 + *a4))
  {
    sub_24F3DFC1C(a1, v10);
    v15 = v16;
  }

  else
  {
    v15 = 2;
  }

  return v15;
}