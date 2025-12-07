uint64_t CapturedRoom.Surface.Edge.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF38, &qword_23AA15DC8);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF40, &qword_23AA15DD0);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF48, &qword_23AA15DD8);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF50, &qword_23AA15DE0);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF58, &qword_23AA15DE8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_23A978C60();
  v15 = v46;
  sub_23AA0DD74();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_23AA0DB14();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_23A935848();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_23AA0D904();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A8, &qword_23AA132C0);
      *v28 = &type metadata for CapturedRoom.Surface.Edge;
      sub_23AA0DA84();
      sub_23AA0D8E4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_23A978D5C();
        v32 = v35;
        sub_23AA0DA74();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_23A978DB0();
        v25 = v35;
        sub_23AA0DA74();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_23A978D08();
      v31 = v35;
      sub_23AA0DA74();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_23A978CB4();
      v33 = v35;
      sub_23AA0DA74();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t CapturedRoom.Object.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedRoom.Object(0) + 32);
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double CapturedRoom.Object.attributes.getter()
{
  type metadata accessor for CapturedRoom.Object(0);

  return result;
}

unint64_t sub_23A970F80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A97D82C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_23A970FB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  v5 = 0xEA00000000007365;
  v6 = 0x7475626972747461;
  if (v2 != 6)
  {
    v6 = 0x79726F7473;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEA00000000007265;
  v8 = 0x696669746E656469;
  result = 0xD000000000000010;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000023AA1CCE0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xEA0000000000736ELL;
  v11 = 0x6F69736E656D6964;
  if (v2 != 2)
  {
    v11 = 0x726F66736E617274;
    v10 = 0xE90000000000006DLL;
  }

  if (*v1)
  {
    v4 = 0x6E656469666E6F63;
    v3 = 0xEA00000000006563;
  }

  if (*v1 > 1u)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 3);
  v12 = v2 == 3;
  v13 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t sub_23A9710C0()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x7475626972747461;
  if (v1 != 6)
  {
    v3 = 0x79726F7473;
  }

  v4 = 0x696669746E656469;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F69736E656D6964;
  if (v1 != 2)
  {
    v5 = 0x726F66736E617274;
  }

  if (*v0)
  {
    v2 = 0x6E656469666E6F63;
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

unint64_t sub_23A9711CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A97D82C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A971200(uint64_t a1)
{
  v2 = sub_23A978E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A97123C(uint64_t a1)
{
  v2 = sub_23A978E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Object.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v60 = sub_23AA0D904();
  v56 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v54 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v45 - v5;
  MEMORY[0x28223BE20](v6);
  v57 = &v45 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v59);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - v10;
  v11 = sub_23AA0C0E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v61 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF60, &qword_23AA15DF0);
  v63 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for CapturedRoom.Object(0);
  v18 = MEMORY[0x28223BE20](v17);
  v21 = *(v20 + 44);
  v62 = v12;
  v24 = *(v12 + 56);
  v22 = v12 + 56;
  v23 = v24;
  v65 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v21;
  v24(&v65[v21], 1, 1, v11, v18);
  v25 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23A978E04();
  v26 = v64;
  sub_23AA0DD74();
  if (v26)
  {
    v28 = v65;
    __swift_destroy_boxed_opaque_existential_1(v67);
    return sub_23A8D50D0(&v28[v66], &unk_27DFB0970, &qword_23AA14E00);
  }

  else
  {
    v50 = v23;
    v51 = v22;
    v64 = v17;
    v27 = v62;
    v69 = 0;
    sub_23A93A600();
    sub_23AA0DAF4();
    v29 = v65;
    *v65 = v68[0];
    v69 = 1;
    sub_23A9784E4();
    sub_23AA0DAF4();
    *(v29 + 1) = v68[0];
    v49 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v69 = 2;
    sub_23A97E420(&qword_27DFAFD70, &qword_27DFB0940, &qword_23AA15CF0, MEMORY[0x277D84AF8]);
    sub_23AA0DAF4();
    *(v29 + 16) = *v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    v69 = 3;
    sub_23A9781B8(&qword_27DFAFCA0, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    sub_23AA0DAF4();
    sub_23A969E20(v68[0]);
    v48 = v30;
    v47 = v31;
    v46 = v32;
    v45 = v33;

    v34 = v47;
    *(v29 + 32) = v48;
    *(v29 + 48) = v34;
    v35 = v45;
    *(v29 + 64) = v46;
    *(v29 + 80) = v35;
    LOBYTE(v68[0]) = 4;
    sub_23A969670(&qword_27DFAFDC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v36 = v61;
    sub_23AA0DAF4();
    v37 = v64;
    (*(v27 + 32))(v29 + v64[8], v36, v11);
    LOBYTE(v68[0]) = 5;
    sub_23A9786B8();
    v38 = v58;
    v61 = v16;
    sub_23AA0DAF4();
    sub_23A8D5068(v38, v29 + v66, &unk_27DFB0970, &qword_23AA14E00);
    v39 = (v29 + v37[13]);
    *v39 = 0;
    v39[1] = 0;
    *(v29 + v37[12]) = 255;
    v69 = 6;
    sub_23A978E58();
    sub_23AA0DAF4();
    *(v29 + v37[9]) = v68[0];
    v40 = v37[10];
    LOBYTE(v68[0]) = 7;
    v41 = v49;
    v42 = v61;
    v43 = sub_23AA0DAE4();
    (*(v63 + 8))(v42, v41);
    *(v29 + v40) = v43;
    sub_23A969D58(v29, v52, type metadata accessor for CapturedRoom.Object);
    __swift_destroy_boxed_opaque_existential_1(v67);
    return sub_23A969DC0(v29, type metadata accessor for CapturedRoom.Object);
  }
}

void CapturedRoom.Object.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF78, &qword_23AA15DF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978E04();
  sub_23AA0DD84();
  LOBYTE(v10) = *v3;
  v11 = 0;
  sub_23A93A504();
  sub_23AA0DB74();
  if (!v2)
  {
    LOBYTE(v10) = *(v3 + 1);
    v11 = 1;
    sub_23A978804();
    sub_23AA0DB74();
    v10 = *(v3 + 16);
    v11 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    sub_23A97E420(&qword_27DFAFD88, &qword_27DFB0940, &qword_23AA15CF0, MEMORY[0x277D84AF0]);
    sub_23AA0DB74();
    *&v10 = sub_23A96AC78(*(v3 + 32), *(v3 + 48), *(v3 + 64), *(v3 + 80));
    v11 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    sub_23A9781B8(&qword_27DFAFCE8, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    sub_23AA0DB74();

    v9 = type metadata accessor for CapturedRoom.Object(0);
    LOBYTE(v10) = 4;
    sub_23AA0C0E4();
    sub_23A969670(&qword_27DFAF240, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_23AA0DB74();
    LOBYTE(v10) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
    sub_23A978960();
    sub_23AA0DB74();
    *&v10 = *(v3 + *(v9 + 36));
    v11 = 6;
    sub_23A978EAC();
    sub_23AA0DB74();
    LOBYTE(v10) = 7;
    sub_23AA0DB64();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_23A97234C(char a1)
{
  result = 0x656761726F7473;
  switch(a1)
  {
    case 1:
      result = 0x7265676972666572;
      break;
    case 2:
      result = 0x65766F7473;
      break;
    case 3:
      result = 6579554;
      break;
    case 4:
      result = 1802398067;
      break;
    case 5:
      result = 0x7244726568736177;
      break;
    case 6:
      result = 0x74656C696F74;
      break;
    case 7:
      result = 0x62757468746162;
      break;
    case 8:
      result = 1852143215;
      break;
    case 9:
      result = 0x6873617768736964;
      break;
    case 10:
      result = 0x656C626174;
      break;
    case 11:
      result = 1634103155;
      break;
    case 12:
      result = 0x7269616863;
      break;
    case 13:
      result = 0x63616C7065726966;
      break;
    case 14:
      result = 0x69736976656C6574;
      break;
    case 15:
      result = 0x737269617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23A972518(uint64_t a1)
{
  v2 = sub_23A9791F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972554(uint64_t a1)
{
  v2 = sub_23A9791F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972590(uint64_t a1)
{
  v2 = sub_23A979344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9725CC(uint64_t a1)
{
  v2 = sub_23A979344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972608(uint64_t a1)
{
  v2 = sub_23A979050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972644(uint64_t a1)
{
  v2 = sub_23A979050();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972688@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23A97DF24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A9726BC(uint64_t a1)
{
  v2 = sub_23A978F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9726F8(uint64_t a1)
{
  v2 = sub_23A978F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972734(uint64_t a1)
{
  v2 = sub_23A97914C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972770(uint64_t a1)
{
  v2 = sub_23A97914C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A9727AC(uint64_t a1)
{
  v2 = sub_23A978FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9727E8(uint64_t a1)
{
  v2 = sub_23A978FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972824(uint64_t a1)
{
  v2 = sub_23A9791A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972860(uint64_t a1)
{
  v2 = sub_23A9791A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A97289C(uint64_t a1)
{
  v2 = sub_23A9793EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9728D8(uint64_t a1)
{
  v2 = sub_23A9793EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972914(uint64_t a1)
{
  v2 = sub_23A9792F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972950(uint64_t a1)
{
  v2 = sub_23A9792F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A97298C(uint64_t a1)
{
  v2 = sub_23A9790A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9729C8(uint64_t a1)
{
  v2 = sub_23A9790A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972A04(uint64_t a1)
{
  v2 = sub_23A978F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972A40(uint64_t a1)
{
  v2 = sub_23A978F54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972A7C(uint64_t a1)
{
  v2 = sub_23A979440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972AB8(uint64_t a1)
{
  v2 = sub_23A979440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972AF4(uint64_t a1)
{
  v2 = sub_23A979398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972B30(uint64_t a1)
{
  v2 = sub_23A979398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972B6C(uint64_t a1)
{
  v2 = sub_23A9790F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972BA8(uint64_t a1)
{
  v2 = sub_23A9790F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972BE4(uint64_t a1)
{
  v2 = sub_23A978FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972C20(uint64_t a1)
{
  v2 = sub_23A978FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972C5C(uint64_t a1)
{
  v2 = sub_23A979248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972C98(uint64_t a1)
{
  v2 = sub_23A979248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A972CD4(uint64_t a1)
{
  v2 = sub_23A97929C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A972D10(uint64_t a1)
{
  v2 = sub_23A97929C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Object.Category.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF88, &qword_23AA15E00);
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF90, &qword_23AA15E08);
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6);
  v90 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF98, &qword_23AA15E10);
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFA0, &qword_23AA15E18);
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  v84 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFA8, &qword_23AA15E20);
  v82 = *(v12 - 8);
  v83 = v12;
  MEMORY[0x28223BE20](v12);
  v81 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFB0, &qword_23AA15E28);
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x28223BE20](v14);
  v78 = &v50 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFB8, &qword_23AA15E30);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v50 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFC0, &qword_23AA15E38);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v50 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFC8, &qword_23AA15E40);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v50 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFD0, &qword_23AA15E48);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v50 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFD8, &qword_23AA15E50);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v50 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFE0, &qword_23AA15E58);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v50 - v21;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFE8, &qword_23AA15E60);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v50 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFF0, &qword_23AA15E68);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v50 - v23;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFFF8, &qword_23AA15E70);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v25 = &v50 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0000, &qword_23AA15E78);
  v51 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - v27;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0008, &qword_23AA15E80);
  v29 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v31 = &v50 - v30;
  v32 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978F00();
  v96 = v31;
  sub_23AA0DD84();
  switch(v32)
  {
    case 1:
      v99 = 1;
      sub_23A9793EC();
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v39 = *(v52 + 8);
      v40 = v25;
      v41 = &v85;
      goto LABEL_19;
    case 2:
      v99 = 2;
      sub_23A979398();
      v43 = v54;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v39 = *(v55 + 8);
      v40 = v43;
      v41 = &v88;
      goto LABEL_19;
    case 3:
      v99 = 3;
      sub_23A979344();
      v44 = v57;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v39 = *(v58 + 8);
      v40 = v44;
      v41 = &v91;
      goto LABEL_19;
    case 4:
      v99 = 4;
      sub_23A9792F0();
      v38 = v60;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v39 = *(v61 + 8);
      v40 = v38;
      v41 = &v94;
      goto LABEL_19;
    case 5:
      v99 = 5;
      sub_23A97929C();
      v46 = v63;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v39 = *(v64 + 8);
      v40 = v46;
      v41 = &v97;
      goto LABEL_19;
    case 6:
      v99 = 6;
      sub_23A979248();
      v47 = v66;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v39 = *(v67 + 8);
      v40 = v47;
      v41 = &v98;
      goto LABEL_19;
    case 7:
      v99 = 7;
      sub_23A9791F4();
      v45 = v69;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v39 = *(v70 + 8);
      v40 = v45;
      v41 = &v100;
      goto LABEL_19;
    case 8:
      v99 = 8;
      sub_23A9791A0();
      v48 = v72;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v39 = *(v73 + 8);
      v40 = v48;
      v41 = &v101;
      goto LABEL_19;
    case 9:
      v99 = 9;
      sub_23A97914C();
      v42 = v75;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v39 = *(v76 + 8);
      v40 = v42;
      v41 = &v102;
LABEL_19:
      v39(v40, *(v41 - 32));
      return (*(v29 + 8))(v33, v34);
    case 10:
      v99 = 10;
      sub_23A9790F8();
      v35 = v78;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v37 = v79;
      v36 = v80;
      goto LABEL_17;
    case 11:
      v99 = 11;
      sub_23A9790A4();
      v35 = v81;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v37 = v82;
      v36 = v83;
      goto LABEL_17;
    case 12:
      v99 = 12;
      sub_23A979050();
      v35 = v84;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v37 = v85;
      v36 = v86;
      goto LABEL_17;
    case 13:
      v99 = 13;
      sub_23A978FFC();
      v35 = v87;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v37 = v88;
      v36 = v89;
      goto LABEL_17;
    case 14:
      v99 = 14;
      sub_23A978FA8();
      v35 = v90;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v37 = v91;
      v36 = v92;
      goto LABEL_17;
    case 15:
      v99 = 15;
      sub_23A978F54();
      v35 = v93;
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      v37 = v94;
      v36 = v95;
LABEL_17:
      (*(v37 + 8))(v35, v36);
      break;
    default:
      v99 = 0;
      sub_23A979440();
      v33 = v96;
      v34 = v97;
      sub_23AA0DB24();
      (*(v51 + 8))(v28, v26);
      break;
  }

  return (*(v29 + 8))(v33, v34);
}

uint64_t CapturedRoom.Object.Category.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v126 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0098, &qword_23AA15E88);
  v110 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v121 = v77 - v3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00A0, &qword_23AA15E90);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v120 = v77 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00A8, &qword_23AA15E98);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v119 = v77 - v5;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00B0, &qword_23AA15EA0);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v118 = v77 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00B8, &qword_23AA15EA8);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v117 = v77 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00C0, &qword_23AA15EB0);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v116 = v77 - v8;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00C8, &qword_23AA15EB8);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v115 = v77 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00D0, &qword_23AA15EC0);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v114 = v77 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00D8, &qword_23AA15EC8);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v124 = v77 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00E0, &qword_23AA15ED0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v123 = v77 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00E8, &qword_23AA15ED8);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v122 = v77 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00F0, &qword_23AA15EE0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v113 = v77 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB00F8, &qword_23AA15EE8);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v112 = v77 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0100, &qword_23AA15EF0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v111 = v77 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0108, &qword_23AA15EF8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v18 = v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0110, &qword_23AA15F00);
  v81 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0118, &unk_23AA15F08);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v77 - v24;
  v26 = a1[3];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_23A978F00();
  v27 = v128;
  sub_23AA0DD74();
  v128 = v27;
  if (v27)
  {
LABEL_8:
    v47 = v127;
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v78 = v21;
  v77[1] = v19;
  v79 = v18;
  v28 = v122;
  v29 = v123;
  v31 = v124;
  v30 = v125;
  v80 = v23;
  v32 = v126;
  v33 = sub_23AA0DB14();
  v34 = (2 * *(v33 + 16)) | 1;
  v129[0] = v33;
  v129[1] = v33 + 32;
  v130 = 0;
  v131 = v34;
  v35 = sub_23A93587C();
  v36 = v25;
  if (v130 != v131 >> 1)
  {
LABEL_6:
    v43 = sub_23AA0D904();
    v44 = swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A8, &qword_23AA132C0);
    *v46 = &type metadata for CapturedRoom.Object.Category;
    sub_23AA0DA84();
    sub_23AA0D8E4();
    (*(*(v43 - 8) + 104))(v46, *MEMORY[0x277D84160], v43);
    v128 = v44;
    swift_willThrow();
    (*(v80 + 8))(v25, v22);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v37 = v35;
  switch(v35)
  {
    case 0:
      v134 = 0;
      sub_23A979440();
      v38 = v78;
      v39 = v128;
      sub_23AA0DA74();
      v128 = v39;
      if (v39)
      {
        goto LABEL_39;
      }

      v40 = *(v81 + 8);
      v41 = v38;
      v42 = &v109;
      goto LABEL_41;
    case 1:
      v134 = 1;
      sub_23A9793EC();
      v67 = v79;
      v68 = v128;
      sub_23AA0DA74();
      v128 = v68;
      if (v68)
      {
        goto LABEL_39;
      }

      v40 = *(v82 + 8);
      v41 = v67;
      v42 = &v115;
      goto LABEL_41;
    case 2:
      v134 = 2;
      sub_23A979398();
      v59 = v111;
      v60 = v128;
      sub_23AA0DA74();
      v128 = v60;
      if (v60)
      {
        goto LABEL_39;
      }

      v40 = *(v84 + 8);
      v41 = v59;
      v42 = &v117;
      goto LABEL_41;
    case 3:
      v134 = 3;
      sub_23A979344();
      v64 = v112;
      v65 = v128;
      sub_23AA0DA74();
      v128 = v65;
      if (v65)
      {
        goto LABEL_39;
      }

      v40 = *(v86 + 8);
      v41 = v64;
      v42 = &v119;
      goto LABEL_41;
    case 4:
      v134 = 4;
      sub_23A9792F0();
      v53 = v113;
      v54 = v128;
      sub_23AA0DA74();
      v128 = v54;
      if (v54)
      {
        goto LABEL_39;
      }

      v40 = *(v88 + 8);
      v41 = v53;
      v42 = &v121;
      goto LABEL_41;
    case 5:
      v134 = 5;
      sub_23A97929C();
      v69 = v128;
      sub_23AA0DA74();
      v128 = v69;
      if (v69)
      {
        goto LABEL_39;
      }

      v40 = *(v90 + 8);
      v41 = v28;
      v42 = &v123;
      goto LABEL_41;
    case 6:
      v134 = 6;
      sub_23A979248();
      v72 = v128;
      sub_23AA0DA74();
      v128 = v72;
      if (v72)
      {
        goto LABEL_39;
      }

      v40 = *(v92 + 8);
      v41 = v29;
      v42 = &v125;
      goto LABEL_41;
    case 7:
      v134 = 7;
      sub_23A9791F4();
      v66 = v128;
      sub_23AA0DA74();
      v128 = v66;
      if (v66)
      {
        goto LABEL_39;
      }

      v40 = *(v94 + 8);
      v41 = v31;
      v42 = &v127;
      goto LABEL_41;
    case 8:
      v134 = 8;
      sub_23A9791A0();
      v75 = v114;
      v76 = v128;
      sub_23AA0DA74();
      v128 = v76;
      if (v76)
      {
        goto LABEL_39;
      }

      v40 = *(v96 + 8);
      v41 = v75;
      v42 = v129;
      goto LABEL_41;
    case 9:
      v134 = 9;
      sub_23A97914C();
      v57 = v115;
      v58 = v128;
      sub_23AA0DA74();
      v128 = v58;
      if (v58)
      {
        goto LABEL_39;
      }

      v40 = *(v98 + 8);
      v41 = v57;
      v42 = &v130;
      goto LABEL_41;
    case 10:
      v134 = 10;
      sub_23A9790F8();
      v73 = v116;
      v74 = v128;
      sub_23AA0DA74();
      v128 = v74;
      if (v74)
      {
        goto LABEL_39;
      }

      v40 = *(v100 + 8);
      v41 = v73;
      v42 = &v132;
      goto LABEL_41;
    case 11:
      v134 = 11;
      sub_23A9790A4();
      v51 = v117;
      v52 = v128;
      sub_23AA0DA74();
      v128 = v52;
      if (v52)
      {
        goto LABEL_39;
      }

      v40 = *(v102 + 8);
      v41 = v51;
      v42 = &v133;
      goto LABEL_41;
    case 12:
      v134 = 12;
      sub_23A979050();
      v55 = v118;
      v56 = v128;
      sub_23AA0DA74();
      v128 = v56;
      if (v56)
      {
        goto LABEL_39;
      }

      v40 = *(v104 + 8);
      v41 = v55;
      v42 = &v135;
      goto LABEL_41;
    case 13:
      v134 = 13;
      sub_23A978FFC();
      v70 = v119;
      v71 = v128;
      sub_23AA0DA74();
      v128 = v71;
      if (v71)
      {
        goto LABEL_39;
      }

      v40 = *(v106 + 8);
      v41 = v70;
      v42 = &v136;
      goto LABEL_41;
    case 14:
      v134 = 14;
      sub_23A978FA8();
      v49 = v120;
      v50 = v128;
      sub_23AA0DA74();
      v128 = v50;
      if (v50)
      {
        goto LABEL_39;
      }

      v40 = *(v108 + 8);
      v41 = v49;
      v42 = &v137;
LABEL_41:
      v40(v41, *(v42 - 32));
      goto LABEL_42;
    case 15:
      v61 = v30;
      v134 = 15;
      sub_23A978F54();
      v62 = v121;
      v63 = v128;
      sub_23AA0DA74();
      v128 = v63;
      if (v63)
      {
LABEL_39:
        (*(v80 + 8))(v36, v22);
        goto LABEL_7;
      }

      (*(v110 + 8))(v62, v61);
LABEL_42:
      (*(v80 + 8))(v36, v22);
      swift_unknownObjectRelease();
      v47 = v127;
      *v32 = v37;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t CapturedRoom.Object.attribute<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = type metadata accessor for CapturedRoom.Object(0);
  v8 = *(v3 + *(result + 36));
  v9 = *(v8 + 16);
  if (!v9)
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  v10 = 0;
  v11 = v8 + 32;
  while (v10 < *(v8 + 16))
  {
    sub_23A8CA9D8(v11, &v13);
    __swift_project_boxed_opaque_existential_1(&v13, v14);
    if (swift_getDynamicType() == a1)
    {
      sub_23A8CAA3C(&v13, v15);
      sub_23A8CAA3C(v15, v16);
      sub_23A8CAA3C(v16, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF688, &qword_23AA14420);
      v12 = swift_dynamicCast();
      return (*(*(a2 - 8) + 56))(a3, v12 ^ 1u, 1, a2);
    }

    ++v10;
    result = __swift_destroy_boxed_opaque_existential_1(&v13);
    v11 += 40;
    if (v9 == v10)
    {
      return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A974EE4(int a1)
{
  if (a1 == 255)
  {
    return 0xD000000000000015;
  }

  v1 = a1;
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if ((a1 & 1) == 0)
  {
    v3 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v3 = sub_23A9388F4(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v36 = sub_23A9388F4((v4 > 1), v5 + 1, 1, v3);
    v6 = v5 + 1;
    v3 = v36;
  }

  *(v3 + 2) = v6;
  v7 = &v3[16 * v5];
  *(v7 + 4) = 0xD000000000000010;
  *(v7 + 5) = 0x800000023AA20B20;
  if ((v1 & 2) != 0)
  {
LABEL_11:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v37 = sub_23A9388F4((v8 > 1), v9 + 1, 1, v3);
      v10 = v9 + 1;
      v3 = v37;
    }

    *(v3 + 2) = v10;
    v11 = &v3[16 * v9];
    *(v11 + 4) = 0xD000000000000011;
    *(v11 + 5) = 0x800000023AA20B00;
  }

LABEL_16:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v38 = sub_23A9388F4((v12 > 1), v13 + 1, 1, v3);
      v14 = v13 + 1;
      v3 = v38;
    }

    *(v3 + 2) = v14;
    v15 = &v3[16 * v13];
    *(v15 + 4) = 0xD000000000000010;
    *(v15 + 5) = 0x800000023AA20AE0;
  }

  if ((v1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v16 = *(v3 + 2);
    v17 = *(v3 + 3);
    v18 = v16 + 1;
    if (v16 >= v17 >> 1)
    {
      v51 = v16 + 1;
      v39 = v3;
      v40 = *(v3 + 2);
      v41 = sub_23A9388F4((v17 > 1), v16 + 1, 1, v39);
      v16 = v40;
      v18 = v51;
      v3 = v41;
    }

    *(v3 + 2) = v18;
    v19 = &v3[16 * v16];
    *(v19 + 4) = 0x776F6C206B636162;
    *(v19 + 5) = 0xEF7466656C207265;
    if ((v1 & 0x10) == 0)
    {
LABEL_24:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }
  }

  else if ((v1 & 0x10) == 0)
  {
    goto LABEL_24;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
  }

  v20 = *(v3 + 2);
  v21 = *(v3 + 3);
  v22 = v20 + 1;
  if (v20 >= v21 >> 1)
  {
    v52 = v20 + 1;
    v42 = v3;
    v43 = *(v3 + 2);
    v44 = sub_23A9388F4((v21 > 1), v20 + 1, 1, v42);
    v20 = v43;
    v22 = v52;
    v3 = v44;
  }

  *(v3 + 2) = v22;
  v23 = &v3[16 * v20];
  *(v23 + 4) = 0xD000000000000010;
  *(v23 + 5) = 0x800000023AA20AC0;
  if ((v1 & 0x20) == 0)
  {
LABEL_25:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_26;
    }

LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v28 = *(v3 + 2);
    v29 = *(v3 + 3);
    v30 = v28 + 1;
    if (v28 >= v29 >> 1)
    {
      v54 = v28 + 1;
      v48 = v3;
      v49 = *(v3 + 2);
      v50 = sub_23A9388F4((v29 > 1), v28 + 1, 1, v48);
      v28 = v49;
      v30 = v54;
      v3 = v50;
    }

    *(v3 + 2) = v30;
    v31 = &v3[16 * v28];
    *(v31 + 4) = 0xD000000000000010;
    *(v31 + 5) = 0x800000023AA20A80;
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
  }

  v24 = *(v3 + 2);
  v25 = *(v3 + 3);
  v26 = v24 + 1;
  if (v24 >= v25 >> 1)
  {
    v53 = v24 + 1;
    v45 = v3;
    v46 = *(v3 + 2);
    v47 = sub_23A9388F4((v25 > 1), v24 + 1, 1, v45);
    v24 = v46;
    v26 = v53;
    v3 = v47;
  }

  *(v3 + 2) = v26;
  v27 = &v3[16 * v24];
  *(v27 + 4) = 0xD000000000000011;
  *(v27 + 5) = 0x800000023AA20AA0;
  if ((v1 & 0x40) != 0)
  {
    goto LABEL_43;
  }

LABEL_26:
  if (v1 < 0)
  {
LABEL_48:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23A9388F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v33 = *(v3 + 2);
    v32 = *(v3 + 3);
    if (v33 >= v32 >> 1)
    {
      v3 = sub_23A9388F4((v32 > 1), v33 + 1, 1, v3);
    }

    *(v3 + 2) = v33 + 1;
    v34 = &v3[16 * v33];
    *(v34 + 4) = 0x707075206B636162;
    *(v34 + 5) = 0xEF7466656C207265;
  }

LABEL_53:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1E0, &qword_23AA12EC0);
  sub_23A97E420(&qword_27DFAF1E8, &qword_27DFAF1E0, &qword_23AA12EC0, MEMORY[0x277D83958]);
  v35 = sub_23AA0D074();

  return v35;
}

void sub_23A9754F0(float32x4_t *a1)
{
  v20 = *(v1 + 64);
  v2 = v20;
  v2.i32[3] = 0;
  v16 = v2;
  v19 = *(v1 + 32);
  v3 = v19;
  v3.i32[3] = 0;
  v17 = v3;
  v4 = a1[4];
  v4.i32[3] = 0;
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF5B8, &qword_23AA18B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23AA11C20;
  *(v5 + 32) = v16;
  HIDWORD(v6) = 0;
  *&v7 = vsubq_f32(0, v20).u64[0];
  *(&v7 + 2) = 0.0 - v20.f32[2];
  HIDWORD(v7) = 0;
  *(v5 + 48) = 0;
  *(v5 + 64) = v7;
  *(v5 + 80) = 2;
  *(v5 + 96) = v17;
  *(v5 + 112) = 3;
  *&v6 = vsubq_f32(0, v19).u64[0];
  *(&v6 + 2) = 0.0 - v19.f32[2];
  *(v5 + 128) = v6;
  *(v5 + 144) = 1;
  v21 = v5;
  sub_23A96634C(&v21, v18);
  if (!*(v21 + 2))
  {
    __break(1u);
    return;
  }

  v8 = v21[48];

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      *(v1 + 28) = 0;
      *(v1 + 32) = vnegq_f32(v19);
      *(v1 + 64) = vnegq_f32(v20);
      v10 = *(type metadata accessor for CapturedRoom.Object(0) + 48);
      v13 = *(v1 + v10);
      if ((v13 & 8) != 0)
      {
        if ((v13 & 4) != 0)
        {
          v12 = 3;
          if ((v13 & 0x80) == 0)
          {
LABEL_65:
            if ((v13 & 0x40) == 0 || (v12 & 0x10) != 0)
            {
LABEL_68:
              if ((v13 & 1) == 0 || (v12 & 4) != 0)
              {
LABEL_71:
                if ((v13 & 2) == 0 || (v12 & 8) != 0)
                {
                  goto LABEL_74;
                }

LABEL_73:
                v12 |= 8u;
LABEL_74:
                if ((v13 & 0x10) != 0)
                {
                  v12 |= 0x40u;
                }

                if ((v13 & 0x20) != 0)
                {
                  v12 |= 0x80u;
                }

                goto LABEL_94;
              }

LABEL_70:
              v12 |= 4u;
              goto LABEL_71;
            }

LABEL_67:
            v12 |= 0x10u;
            goto LABEL_68;
          }
        }

        else
        {
          v12 = 2;
          if ((v13 & 0x80) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else if ((v13 & 4) != 0)
      {
        v12 = 1;
        if ((v13 & 0x80) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v12 = 0;
        if ((v13 & 0x80) == 0)
        {
LABEL_28:
          if ((v13 & 0x40) == 0)
          {
            if ((v13 & 1) == 0)
            {
              if ((v13 & 2) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_73;
            }

            goto LABEL_70;
          }

          goto LABEL_67;
        }
      }

      v12 |= 0x20u;
      goto LABEL_65;
    }

    v14 = vrev64q_s32(vextq_s8(0, *(v1 + 16), 0xCuLL));
    *(v1 + 16) = vextq_s8(v14, v14, 8uLL);
    *(v1 + 32) = vnegq_f32(v20);
    *(v1 + 64) = v19;
    v10 = *(type metadata accessor for CapturedRoom.Object(0) + 48);
    v15 = *(v1 + v10);
    if ((v15 & 8) != 0)
    {
      if ((v15 & 4) != 0)
      {
        v12 = 6;
        if ((v15 & 0x80) == 0)
        {
LABEL_80:
          if ((v15 & 0x40) == 0 || (v12 & 0x20) != 0)
          {
LABEL_83:
            if ((v15 & 1) == 0 || (v12 & 8) != 0)
            {
LABEL_86:
              if (v15 & 2) == 0 || (v12)
              {
LABEL_89:
                if ((v15 & 0x10) == 0)
                {
LABEL_91:
                  if ((v15 & 0x20) == 0 || (v12 & 0x10) != 0)
                  {
                    goto LABEL_94;
                  }

LABEL_93:
                  v12 |= 0x10u;
                  goto LABEL_94;
                }

LABEL_90:
                v12 |= 0x80u;
                goto LABEL_91;
              }

LABEL_88:
              v12 |= 1u;
              goto LABEL_89;
            }

LABEL_85:
            v12 |= 8u;
            goto LABEL_86;
          }

LABEL_82:
          v12 |= 0x20u;
          goto LABEL_83;
        }

        goto LABEL_79;
      }

      v12 = 4;
      if ((v15 & 0x80) != 0)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if ((v15 & 4) != 0)
      {
        v12 = 2;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }

      v12 = 0;
      if ((v15 & 0x80) != 0)
      {
LABEL_79:
        v12 |= 0x40u;
        goto LABEL_80;
      }
    }

    if ((v15 & 0x40) == 0)
    {
      if ((v15 & 1) == 0)
      {
        if ((v15 & 2) == 0)
        {
          if ((v15 & 0x10) == 0)
          {
            if ((v15 & 0x20) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_93;
          }

          goto LABEL_90;
        }

        goto LABEL_88;
      }

      goto LABEL_85;
    }

    goto LABEL_82;
  }

  if (!v8)
  {
    return;
  }

  v9 = vrev64q_s32(vextq_s8(0, *(v1 + 16), 0xCuLL));
  *(v1 + 16) = vextq_s8(v9, v9, 8uLL);
  *(v1 + 32) = v20;
  *(v1 + 64) = vnegq_f32(v19);
  v10 = *(type metadata accessor for CapturedRoom.Object(0) + 48);
  v11 = *(v1 + v10);
  if ((v11 & 8) != 0)
  {
    if ((v11 & 4) != 0)
    {
      v12 = 9;
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v12 = 1;
      if ((v11 & 0x80) == 0)
      {
        if ((v11 & 0x40) != 0)
        {
          goto LABEL_51;
        }

        goto LABEL_21;
      }
    }

    goto LABEL_47;
  }

  if ((v11 & 4) == 0)
  {
    v12 = 0;
    if ((v11 & 0x80) == 0)
    {
      if ((v11 & 0x40) != 0)
      {
LABEL_51:
        v12 |= 0x80u;
        if ((v11 & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

LABEL_21:
      if ((v11 & 1) == 0)
      {
        if ((v11 & 2) == 0)
        {
          if ((v11 & 0x10) == 0)
          {
            if ((v11 & 0x20) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_62;
          }

          goto LABEL_59;
        }

        goto LABEL_56;
      }

      goto LABEL_53;
    }

    goto LABEL_47;
  }

  v12 = 8;
  if ((v11 & 0x80) != 0)
  {
LABEL_47:
    v12 |= 0x10u;
  }

LABEL_48:
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_51;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_52:
  if ((v12 & 2) == 0)
  {
LABEL_53:
    v12 |= 2u;
  }

LABEL_54:
  if ((v11 & 2) != 0 && (v12 & 4) == 0)
  {
LABEL_56:
    v12 |= 4u;
  }

  if ((v11 & 0x10) != 0 && (v12 & 0x20) == 0)
  {
LABEL_59:
    v12 |= 0x20u;
  }

  if ((v11 & 0x20) == 0 || (v12 & 0x40) != 0)
  {
    goto LABEL_94;
  }

LABEL_62:
  v12 |= 0x40u;
LABEL_94:
  *(v1 + v10) = v12;
}

uint64_t sub_23A975910@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(result + 16);
  switch(v2)
  {
    case 0uLL:
      goto LABEL_11;
    case 1uLL:
      goto LABEL_12;
    case 2uLL:
      goto LABEL_13;
  }

  if (v2 < 4)
  {
    goto LABEL_11;
  }

  if (v2 == 4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 < 6)
  {
    goto LABEL_13;
  }

  if (v2 == 6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 < 8)
  {
    goto LABEL_12;
  }

  if (v2 != 8)
  {
    *&v3 = *(result + 56);
    *(&v3 + 1) = *(result + 64);
    *&v4 = *(result + 44);
    *(&v4 + 1) = *(result + 52);
    *&v5 = *(result + 32);
    *(&v5 + 1) = *(result + 40);
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v3;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_23A9759B8()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A975A58(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A975AE4()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

unint64_t sub_23A975B80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A97D878(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23A975BB0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 12402;
  v4 = 808989042;
  if (*v1 != 2)
  {
    v4 = 808923762;
  }

  if (*v1)
  {
    v3 = 3160434;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_23A975D28(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23AA0D7F4();
  }

  return sub_23AA0D8D4();
}

char *sub_23A975DA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975DC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976954(a1, a2, a3, *v3, &qword_27DFAEB58, &unk_23AA11BF0);
  *v3 = result;
  return result;
}

char *sub_23A975DF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976274(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23A975E10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976778(a1, a2, a3, *v3, &qword_27DFAF5F0, &qword_23AA14380, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_23A975E54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976C80(a1, a2, a3, *v3, &qword_27DFAED48, &qword_23AA19520);
  *v3 = result;
  return result;
}

char *sub_23A975E84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A97647C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975EA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976378(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975EC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976580(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975EE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975F04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976FD0(a1, a2, a3, *v3, &qword_27DFB0550, &unk_23AA18BC0);
  *v3 = result;
  return result;
}

char *sub_23A975F34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976954(a1, a2, a3, *v3, &qword_27DFAF630, &qword_23AA18BA0);
  *v3 = result;
  return result;
}

char *sub_23A975F64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976A50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23A975F84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976778(a1, a2, a3, *v3, &qword_27DFAF5E8, &unk_23AA18B80, type metadata accessor for LineAnimation);
  *v3 = result;
  return result;
}

void *sub_23A975FC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A975FE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976C80(a1, a2, a3, *v3, &qword_27DFAF638, &qword_23AA143D0);
  *v3 = result;
  return result;
}

void *sub_23A976018(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976778(a1, a2, a3, *v3, &qword_27DFAF5C0, &qword_23AA14340, type metadata accessor for CapturedRoom.Surface);
  *v3 = result;
  return result;
}

char *sub_23A97605C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976D7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23A97607C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976E9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A97609C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976FD0(a1, a2, a3, *v3, &qword_27DFB0540, &qword_23AA18BA8);
  *v3 = result;
  return result;
}

void *sub_23A9760CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A976778(a1, a2, a3, *v3, &qword_27DFAF5D0, &qword_23AA14358, type metadata accessor for CapturedRoom.Object);
  *v3 = result;
  return result;
}

void *sub_23A976110(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A9770BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23A976130(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A9772AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A976150(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A9773E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A976170(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0530, &qword_23AA18B90);
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

char *sub_23A976274(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF5E0, &unk_23AA14370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_23A976378(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
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

char *sub_23A97647C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF618, &qword_23AA143B0);
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

char *sub_23A976580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0538, &qword_23AA18B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_23A976674(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8E8, &qword_23AA15030);
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

void *sub_23A976778(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_23A976954(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_23A976A50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF118, &unk_23AA14320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_23A976B4C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0510, &qword_23AA18B48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0518, &unk_23AA18B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23A976C80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_23A976D7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0560, &qword_23AA18BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23A976E9C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0568, &qword_23AA18BD8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB14D0, &unk_23AA18BE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23A976FD0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_23A9770BC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0548, &unk_23AA18BB0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF228, &qword_23AA12F00) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF228, &qword_23AA12F00) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_23A9772AC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0520, &unk_23AA18B60);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF308, &qword_23AA13088);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23A9773E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF598, &qword_23AA18B40);
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

void sub_23A9774EC(float32x4_t **a1, float32x4_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = a4[1];
  v95 = a2;
  if (v8 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_91:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_123:
      v11 = sub_23A977E20(v11);
    }

    v88 = *(v11 + 2);
    v89 = v95;
    if (v88 >= 2)
    {
      while (*a4)
      {
        v90 = *&v11[16 * v88];
        v91 = *&v11[16 * v88 + 24];
        sub_23A977B24((*a4 + 32 * v90), (*a4 + 32 * *&v11[16 * v88 + 16]), (*a4 + 32 * v91), v6, v89);
        if (v5)
        {
          goto LABEL_101;
        }

        if (v91 < v90)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_23A977E20(v11);
        }

        if (v88 - 2 >= *(v11 + 2))
        {
          goto LABEL_117;
        }

        v92 = &v11[16 * v88];
        *v92 = v90;
        *(v92 + 1) = v91;
        sub_23A977D94(v88 - 1);
        v88 = *(v11 + 2);
        v89 = v95;
        if (v88 <= 1)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_127;
    }

LABEL_101:

    return;
  }

  v9 = a5;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10++;
    if (v10 < v8)
    {
      v13 = 32 * v12;
      v14 = vmulq_f32(*(*a4 + 32 * v10), a2);
      v15 = vmulq_f32(*(*a4 + 32 * v12), a2);
      v16 = vadd_f32(vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v14, v14, 8uLL)), vadd_f32(vzip1_s32(*v15.i8, *v14.i8), vzip2_s32(*v15.i8, *v14.i8)));
      v17 = vcgt_f32(vdup_lane_s32(v16, 1), v16);
      v10 = v12 + 2;
      if (v12 + 2 < v8)
      {
        v18 = (*a4 + 32 * v12 + 64);
        while (1)
        {
          v19 = vmulq_f32(*v18, a2);
          v20 = vmulq_f32(v18[-2], a2);
          *v19.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v20.i8, *v19.i8), vzip2_s32(*v20.i8, *v19.i8)));
          if ((vmvn_s8(veor_s8(vcgt_f32(vdup_lane_s32(*v19.i8, 1), *v19.i8), v17)).u8[0] & 1) == 0)
          {
            break;
          }

          ++v10;
          v18 += 2;
          if (v8 == v10)
          {
            v10 = v8;
            break;
          }
        }
      }

      if (v17.i8[0])
      {
        if (v10 < v12)
        {
          goto LABEL_120;
        }

        if (v12 < v10)
        {
          v21 = 32 * v10 - 32;
          v22 = v10;
          v23 = v12;
          do
          {
            if (v23 != --v22)
            {
              v26 = *a4;
              if (!*a4)
              {
                goto LABEL_126;
              }

              v27 = (v26 + v13);
              v28 = (v26 + v21);
              v29 = *(v26 + v13);
              v30 = *(v26 + v13 + 16);
              if (v13 != v21 || v27 >= v28 + 2)
              {
                v24 = v28[1];
                *v27 = *v28;
                v27[1] = v24;
              }

              v25 = v26 + v21;
              *v25 = v29;
              *(v25 + 16) = v30;
            }

            ++v23;
            v21 -= 32;
            v13 += 32;
          }

          while (v23 < v22);
          v8 = a4[1];
        }
      }
    }

    if (v10 < v8)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_119;
      }

      if (v10 - v12 < v9)
      {
        if (__OFADD__(v12, v9))
        {
          goto LABEL_121;
        }

        if (v12 + v9 < v8)
        {
          v8 = v12 + v9;
        }

        if (v8 < v12)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v10 != v8)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v10 < v12)
    {
      goto LABEL_118;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_23A938B2C(0, *(v11 + 2) + 1, 1, v11);
    }

    v6 = *(v11 + 2);
    v42 = *(v11 + 3);
    v43 = v6 + 1;
    a2 = v95;
    if (v6 >= v42 >> 1)
    {
      v87 = sub_23A938B2C((v42 > 1), v6 + 1, 1, v11);
      a2 = v95;
      v11 = v87;
    }

    *(v11 + 2) = v43;
    v44 = &v11[16 * v6];
    *(v44 + 4) = v12;
    *(v44 + 5) = v10;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if (v6)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v11 + 4);
          v48 = *(v11 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_60:
          if (v50)
          {
            goto LABEL_107;
          }

          v63 = &v11[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_110;
          }

          v69 = &v11[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_114;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v73 = &v11[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_74:
        if (v68)
        {
          goto LABEL_109;
        }

        v76 = &v11[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_112;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_81:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a4)
        {
          goto LABEL_125;
        }

        v85 = *&v11[16 * v84 + 32];
        v6 = *&v11[16 * v46 + 40];
        sub_23A977B24((*a4 + 32 * v85), (*a4 + 32 * *&v11[16 * v46 + 32]), (*a4 + 32 * v6), v45, a2);
        if (v5)
        {
          goto LABEL_101;
        }

        if (v6 < v85)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_23A977E20(v11);
        }

        if (v84 >= *(v11 + 2))
        {
          goto LABEL_104;
        }

        v86 = &v11[16 * v84];
        *(v86 + 4) = v85;
        *(v86 + 5) = v6;
        sub_23A977D94(v46);
        v43 = *(v11 + 2);
        a2 = v95;
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v11[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_105;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_106;
      }

      v58 = &v11[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_108;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_111;
      }

      if (v62 >= v54)
      {
        v80 = &v11[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_115;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v8 = a4[1];
    v9 = a5;
    if (v10 >= v8)
    {
      goto LABEL_91;
    }
  }

  v31 = *a4;
  v32 = *a4 + 32 * v10 - 32;
  v33 = v12 - v10;
LABEL_33:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 + 32);
    v37 = vmulq_f32(v36, a2);
    v38 = vmulq_f32(*v35, a2);
    *v38.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v37, v37, 8uLL)), vadd_f32(vzip1_s32(*v38.i8, *v37.i8), vzip2_s32(*v38.i8, *v37.i8)));
    if ((vcgt_f32(vdup_lane_s32(*v38.i8, 1), *v38.i8).u8[0] & 1) == 0)
    {
LABEL_32:
      ++v10;
      v32 += 32;
      --v33;
      if (v10 != v8)
      {
        goto LABEL_33;
      }

      v10 = v8;
      goto LABEL_40;
    }

    if (!v31)
    {
      break;
    }

    v39 = *(v35 + 48);
    v40 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v40;
    *v35 = v36;
    *(v35 + 16) = v39;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_32;
    }
  }

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
}

uint64_t sub_23A977B24(float32x4_t *__dst, float32x4_t *__src, float32x4_t *a3, float32x4_t *a4, float32x4_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a5;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 5;
  v13 = a3 - __src;
  v14 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 5;
  if (v12 < v15)
  {
    v16 = 2 * v12;
    if (a4 != __dst || &__dst[v16] <= a4)
    {
      memmove(a4, __dst, v16 * 16);
      v7 = a5;
    }

    v17 = &v5[v16];
    if (v10 < 32)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_35;
    }

    while (1)
    {
      if (v8 >= v6)
      {
        goto LABEL_10;
      }

      v21 = vmulq_f32(*v8, v7);
      v22 = vmulq_f32(*v5, v7);
      *v21.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vadd_f32(vzip1_s32(*v22.i8, *v21.i8), vzip2_s32(*v22.i8, *v21.i8)));
      if (vcgt_f32(vdup_lane_s32(*v21.i8, 1), *v21.i8).u32[0])
      {
        break;
      }

      v18 = v5;
      v19 = v9 == v5;
      v5 += 2;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 2;
      if (v5 >= v17)
      {
        goto LABEL_10;
      }
    }

    v18 = v8;
    v19 = v9 == v8;
    v8 += 2;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = v18[1];
    *v9 = *v18;
    v9[1] = v20;
    goto LABEL_13;
  }

  v23 = 2 * v15;
  if (a4 != __src || &__src[v23] <= a4)
  {
    memmove(a4, __src, 32 * v15);
    v7 = a5;
  }

  v17 = &v5[v23];
  if (v13 >= 32 && v8 > v9)
  {
LABEL_24:
    v24 = v8 - 2;
    v6 -= 2;
    v25 = v17;
    do
    {
      v26 = v6 + 2;
      v27 = v25[-2];
      v25 -= 2;
      v28 = vmulq_f32(v27, v7);
      v29 = vmulq_f32(*v24, v7);
      *v28.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v28, v28, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v28.i8), vzip2_s32(*v29.i8, *v28.i8)));
      if (vcgt_f32(vdup_lane_s32(*v28.i8, 1), *v28.i8).u32[0])
      {
        if (v26 != v8)
        {
          v31 = v8[-1];
          *v6 = *v24;
          v6[1] = v31;
        }

        if (v17 <= v5 || (v8 -= 2, v24 <= v9))
        {
          v8 = v24;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v26 != v17)
      {
        v30 = v25[1];
        *v6 = *v25;
        v6[1] = v30;
      }

      v6 -= 2;
      v17 = v25;
    }

    while (v25 > v5);
    v17 = v25;
  }

LABEL_35:
  v32 = (v17 - v5 + (v17 - v5 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v8 != v5 || v8 >= (v5 + v32))
  {
    memmove(v8, v5, v32);
  }

  return 1;
}

uint64_t sub_23A977D94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A977E20(v3);
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

unint64_t sub_23A977ED0()
{
  result = qword_27DFAFCB0;
  if (!qword_27DFAFCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC40, &unk_23AA15C40);
    sub_23A969670(&qword_27DFB0BA0, type metadata accessor for CapturedRoom, &protocol conformance descriptor for CapturedRoom);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFCB0);
  }

  return result;
}

unint64_t sub_23A977F84()
{
  result = qword_27DFAFCB8;
  if (!qword_27DFAFCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC58, &qword_23AA15C50);
    sub_23A969670(&qword_27DFAFCC0, type metadata accessor for CapturedRoom.Surface, &protocol conformance descriptor for CapturedRoom.Surface);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFCB8);
  }

  return result;
}

unint64_t sub_23A978038()
{
  result = qword_27DFAFCC8;
  if (!qword_27DFAFCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC70, &qword_23AA15C58);
    sub_23A969670(&qword_27DFAFCD0, type metadata accessor for CapturedRoom.Object, &protocol conformance descriptor for CapturedRoom.Object);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFCC8);
  }

  return result;
}

uint64_t sub_23A9780EC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC88, &unk_23AA15C60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A978164()
{
  result = qword_27DFAFCE0;
  if (!qword_27DFAFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFCE0);
  }

  return result;
}

uint64_t sub_23A9781B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DFB0900, &qword_23AA15C70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A978224()
{
  result = qword_27DFAFD18;
  if (!qword_27DFAFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD18);
  }

  return result;
}

unint64_t sub_23A978278()
{
  result = qword_27DFAFD20;
  if (!qword_27DFAFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD20);
  }

  return result;
}

unint64_t sub_23A9782CC()
{
  result = qword_27DFAFD28;
  if (!qword_27DFAFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD28);
  }

  return result;
}

unint64_t sub_23A978320()
{
  result = qword_27DFAFD30;
  if (!qword_27DFAFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD30);
  }

  return result;
}

unint64_t sub_23A978374()
{
  result = qword_27DFAFD60;
  if (!qword_27DFAFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD60);
  }

  return result;
}

unint64_t sub_23A9783C8()
{
  result = qword_27DFAFD68;
  if (!qword_27DFAFD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD68);
  }

  return result;
}

unint64_t sub_23A97841C()
{
  result = qword_27DFAFD80;
  if (!qword_27DFAFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD80);
  }

  return result;
}

unint64_t sub_23A978490()
{
  result = qword_27DFAFD98;
  if (!qword_27DFAFD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFD98);
  }

  return result;
}

unint64_t sub_23A9784E4()
{
  result = qword_27DFAFDA0;
  if (!qword_27DFAFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFDA0);
  }

  return result;
}

uint64_t sub_23A978538(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFDA8, &qword_23AA15D08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A9785B0()
{
  result = qword_27DFAFDB8;
  if (!qword_27DFAFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFDB8);
  }

  return result;
}

unint64_t sub_23A978604()
{
  result = qword_27DFAFDC8;
  if (!qword_27DFAFDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAEB38, &unk_23AA11B60);
    sub_23A969670(&qword_27DFAFDD0, type metadata accessor for CapturedRoom.Surface.Curve, &protocol conformance descriptor for CapturedRoom.Surface.Curve);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFDC8);
  }

  return result;
}

unint64_t sub_23A9786B8()
{
  result = qword_27DFAFDD8;
  if (!qword_27DFAFDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DFB0970, &qword_23AA14E00);
    sub_23A969670(&qword_27DFAFDC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFDD8);
  }

  return result;
}

uint64_t sub_23A97876C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFDE0, &qword_23AA15D10);
    sub_23A97E420(a2, &qword_27DFB0940, &qword_23AA15CF0, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A978804()
{
  result = qword_27DFAFDF0;
  if (!qword_27DFAFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFDF0);
  }

  return result;
}

unint64_t sub_23A978858()
{
  result = qword_27DFAFE00;
  if (!qword_27DFAFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE00);
  }

  return result;
}

unint64_t sub_23A9788AC()
{
  result = qword_27DFAFE08;
  if (!qword_27DFAFE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAEB38, &unk_23AA11B60);
    sub_23A969670(&qword_27DFAFE10, type metadata accessor for CapturedRoom.Surface.Curve, &protocol conformance descriptor for CapturedRoom.Surface.Curve);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE08);
  }

  return result;
}

unint64_t sub_23A978960()
{
  result = qword_27DFAFE18;
  if (!qword_27DFAFE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DFB0970, &qword_23AA14E00);
    sub_23A969670(&qword_27DFAF240, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE18);
  }

  return result;
}

unint64_t sub_23A978A14()
{
  result = qword_27DFAFE50;
  if (!qword_27DFAFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE50);
  }

  return result;
}

unint64_t sub_23A978A68()
{
  result = qword_27DFAFE58;
  if (!qword_27DFAFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE58);
  }

  return result;
}

unint64_t sub_23A978ABC()
{
  result = qword_27DFAFE60;
  if (!qword_27DFAFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE60);
  }

  return result;
}

unint64_t sub_23A978B10()
{
  result = qword_27DFAFE68;
  if (!qword_27DFAFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE68);
  }

  return result;
}

unint64_t sub_23A978B64()
{
  result = qword_27DFAFE70;
  if (!qword_27DFAFE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE70);
  }

  return result;
}

unint64_t sub_23A978BB8()
{
  result = qword_27DFAFE78;
  if (!qword_27DFAFE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFE78);
  }

  return result;
}

unint64_t sub_23A978C0C()
{
  result = qword_27DFAFEB8;
  if (!qword_27DFAFEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFEB8);
  }

  return result;
}

unint64_t sub_23A978C60()
{
  result = qword_27DFAFF10;
  if (!qword_27DFAFF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF10);
  }

  return result;
}

unint64_t sub_23A978CB4()
{
  result = qword_27DFAFF18;
  if (!qword_27DFAFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF18);
  }

  return result;
}

unint64_t sub_23A978D08()
{
  result = qword_27DFAFF20;
  if (!qword_27DFAFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF20);
  }

  return result;
}

unint64_t sub_23A978D5C()
{
  result = qword_27DFAFF28;
  if (!qword_27DFAFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF28);
  }

  return result;
}

unint64_t sub_23A978DB0()
{
  result = qword_27DFAFF30;
  if (!qword_27DFAFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF30);
  }

  return result;
}

unint64_t sub_23A978E04()
{
  result = qword_27DFAFF68;
  if (!qword_27DFAFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF68);
  }

  return result;
}

unint64_t sub_23A978E58()
{
  result = qword_27DFAFF70;
  if (!qword_27DFAFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF70);
  }

  return result;
}

unint64_t sub_23A978EAC()
{
  result = qword_27DFAFF80;
  if (!qword_27DFAFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFF80);
  }

  return result;
}

unint64_t sub_23A978F00()
{
  result = qword_27DFB0010;
  if (!qword_27DFB0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0010);
  }

  return result;
}

unint64_t sub_23A978F54()
{
  result = qword_27DFB0018;
  if (!qword_27DFB0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0018);
  }

  return result;
}

unint64_t sub_23A978FA8()
{
  result = qword_27DFB0020;
  if (!qword_27DFB0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0020);
  }

  return result;
}

unint64_t sub_23A978FFC()
{
  result = qword_27DFB0028;
  if (!qword_27DFB0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0028);
  }

  return result;
}

unint64_t sub_23A979050()
{
  result = qword_27DFB0030;
  if (!qword_27DFB0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0030);
  }

  return result;
}

unint64_t sub_23A9790A4()
{
  result = qword_27DFB0038;
  if (!qword_27DFB0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0038);
  }

  return result;
}

unint64_t sub_23A9790F8()
{
  result = qword_27DFB0040;
  if (!qword_27DFB0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0040);
  }

  return result;
}

unint64_t sub_23A97914C()
{
  result = qword_27DFB0048;
  if (!qword_27DFB0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0048);
  }

  return result;
}

unint64_t sub_23A9791A0()
{
  result = qword_27DFB0050;
  if (!qword_27DFB0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0050);
  }

  return result;
}

unint64_t sub_23A9791F4()
{
  result = qword_27DFB0058;
  if (!qword_27DFB0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0058);
  }

  return result;
}

unint64_t sub_23A979248()
{
  result = qword_27DFB0060;
  if (!qword_27DFB0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0060);
  }

  return result;
}

unint64_t sub_23A97929C()
{
  result = qword_27DFB0068;
  if (!qword_27DFB0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0068);
  }

  return result;
}

unint64_t sub_23A9792F0()
{
  result = qword_27DFB0070;
  if (!qword_27DFB0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0070);
  }

  return result;
}

unint64_t sub_23A979344()
{
  result = qword_27DFB0078;
  if (!qword_27DFB0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0078);
  }

  return result;
}

unint64_t sub_23A979398()
{
  result = qword_27DFB0080;
  if (!qword_27DFB0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0080);
  }

  return result;
}

unint64_t sub_23A9793EC()
{
  result = qword_27DFB0088;
  if (!qword_27DFB0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0088);
  }

  return result;
}

unint64_t sub_23A979440()
{
  result = qword_27DFB0090;
  if (!qword_27DFB0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0090);
  }

  return result;
}

uint64_t sub_23A979494(uint64_t a1)
{
  *(a1 + 8) = sub_23A969670(&qword_27DFB0120, type metadata accessor for CapturedStructure, &protocol conformance descriptor for CapturedStructure);
  result = sub_23A969670(&qword_27DFB0128, type metadata accessor for CapturedStructure, &protocol conformance descriptor for CapturedStructure);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23A97951C()
{
  result = qword_27DFB0130;
  if (!qword_27DFB0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0130);
  }

  return result;
}

unint64_t sub_23A979574()
{
  result = qword_27DFB0138;
  if (!qword_27DFB0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0138);
  }

  return result;
}

unint64_t sub_23A9795CC()
{
  result = qword_27DFB0140;
  if (!qword_27DFB0140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0140);
  }

  return result;
}

unint64_t sub_23A979624()
{
  result = qword_27DFB0148;
  if (!qword_27DFB0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0148);
  }

  return result;
}

unint64_t sub_23A97967C()
{
  result = qword_27DFB0150;
  if (!qword_27DFB0150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0150);
  }

  return result;
}

unint64_t sub_23A9796D4()
{
  result = qword_27DFB0158;
  if (!qword_27DFB0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0158);
  }

  return result;
}

unint64_t sub_23A979770()
{
  result = qword_27DFB0170;
  if (!qword_27DFB0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0170);
  }

  return result;
}

unint64_t sub_23A97980C()
{
  result = qword_27DFB0188;
  if (!qword_27DFB0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0188);
  }

  return result;
}

unint64_t sub_23A979864()
{
  result = qword_27DFB0190;
  if (!qword_27DFB0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0190);
  }

  return result;
}

unint64_t sub_23A9798BC()
{
  result = qword_27DFB0198;
  if (!qword_27DFB0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0198);
  }

  return result;
}

unint64_t sub_23A979914()
{
  result = qword_27DFB01A0;
  if (!qword_27DFB01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB01A0);
  }

  return result;
}

uint64_t sub_23A979968(uint64_t a1)
{
  *(a1 + 8) = sub_23A969670(&qword_27DFAFC50, type metadata accessor for CapturedRoom, &protocol conformance descriptor for CapturedRoom);
  result = sub_23A969670(&qword_27DFB0BA0, type metadata accessor for CapturedRoom, &protocol conformance descriptor for CapturedRoom);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23A979ADC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23AA0C0E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_23A979B9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23AA0C0E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23A979C40(uint64_t a1)
{
  sub_23A979DBC(319, &qword_27DFB01B8, type metadata accessor for CapturedRoom, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23A979DBC(319, &qword_27DFB01C0, type metadata accessor for CapturedRoom.Surface, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23A979DBC(319, &qword_27DFB01C8, type metadata accessor for CapturedRoom.Object, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23A97A8AC(319, &qword_27DFB01D0, &type metadata for CapturedRoom.Section);
        if (v4 <= 0x3F)
        {
          sub_23AA0C0E4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23A979DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23A979E34(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23AA0C0E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_23A979EF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23AA0C0E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23A979F98(uint64_t a1)
{
  sub_23A979DBC(319, &qword_27DFB01C0, type metadata accessor for CapturedRoom.Surface, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23A979DBC(319, &qword_27DFB01C8, type metadata accessor for CapturedRoom.Object, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23AA0C0E4();
      if (v3 <= 0x3F)
      {
        sub_23A97A8AC(319, &qword_27DFB01D0, &type metadata for CapturedRoom.Section);
        if (v4 <= 0x3F)
        {
          sub_23A97B1AC(319, &qword_27DFB01E8, &unk_27DFB0B00, &unk_23AA15C90, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for simd_float4x4(319);
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

__n128 __swift_memcpy145_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_23A97A190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
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

uint64_t sub_23A97A1EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t sub_23A97A29C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_23AA0C0E4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_23A97A434(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_23AA0C0E4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

void sub_23A97A5B8(uint64_t a1)
{
  sub_23A97ACA8(319, &qword_27DFB0200, sub_23A97A858, &type metadata for CapturedRoom.Surface.Edge, MEMORY[0x277D83B48]);
  if (v1 <= 0x3F)
  {
    sub_23A97ACA8(319, &qword_27DFAED18, sub_23A8E996C, MEMORY[0x277D83A90], MEMORY[0x277D84AE8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for simd_float4x4(319);
      if (v3 <= 0x3F)
      {
        sub_23AA0C0E4();
        if (v4 <= 0x3F)
        {
          sub_23A979DBC(319, &qword_27DFAEC08, type metadata accessor for CapturedRoom.Surface.Curve, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23A979DBC(319, &qword_27DFAEC00, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_23A97B1AC(319, &qword_27DFAED20, &qword_27DFB0940, &qword_23AA15CF0, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_23A97A8AC(319, &qword_27DFB0210, &type metadata for CapturedRoom.Surface.Edge);
                if (v8 <= 0x3F)
                {
                  sub_23A979DBC(319, &qword_27DFB0218, MEMORY[0x277CC95F0], MEMORY[0x277D83940]);
                  if (v9 <= 0x3F)
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

unint64_t sub_23A97A858()
{
  result = qword_27DFB0208;
  if (!qword_27DFB0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0208);
  }

  return result;
}

void sub_23A97A8AC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23AA0D344();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CapturedRoom.Surface.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t storeEnumTagSinglePayload for CapturedRoom.Surface.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23A97AA68(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23A97AA84(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_23A97AAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_23A97AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

void sub_23A97ABE8(uint64_t a1)
{
  sub_23A97ACA8(319, &qword_27DFAEC90, sub_23A8E996C, MEMORY[0x277D83A90], MEMORY[0x277D84AC8]);
  if (v1 <= 0x3F)
  {
    sub_23A97AD10(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A97ACA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_23A97AD10(uint64_t a1)
{
  if (!qword_27DFB0230)
  {
    sub_23A8D6C58(255, &qword_27DFAEB50, 0x277CCADA8);
    v1 = sub_23AA0BC94();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFB0230);
    }
  }
}

uint64_t sub_23A97AD9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[8];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23A97AEE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_23AA0C0E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[8];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_23A97B018(uint64_t a1)
{
  sub_23A97ACA8(319, &qword_27DFAED18, sub_23A8E996C, MEMORY[0x277D83A90], MEMORY[0x277D84AE8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for simd_float4x4(319);
    if (v2 <= 0x3F)
    {
      sub_23AA0C0E4();
      if (v3 <= 0x3F)
      {
        sub_23A97B1AC(319, &qword_27DFB0248, &qword_27DFAF688, &qword_23AA14420, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_23A979DBC(319, &qword_27DFAEC00, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23A97B1AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CapturedRoom.USDExportOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CapturedRoom.USDExportOptions(uint64_t result, int a2, int a3)
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

uint64_t sub_23A97B298(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23A97B32C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapturedRoom.Object.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CapturedRoom.Object.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MeshResourceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MeshResourceType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CapturedVolumeCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CapturedVolumeCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23A97B9F0()
{
  result = qword_27DFB0250;
  if (!qword_27DFB0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0250);
  }

  return result;
}

unint64_t sub_23A97BA48()
{
  result = qword_27DFB0258;
  if (!qword_27DFB0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0258);
  }

  return result;
}

unint64_t sub_23A97BAA0()
{
  result = qword_27DFB0260;
  if (!qword_27DFB0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0260);
  }

  return result;
}

unint64_t sub_23A97BAF8()
{
  result = qword_27DFB0268;
  if (!qword_27DFB0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0268);
  }

  return result;
}

unint64_t sub_23A97BB50()
{
  result = qword_27DFB0270;
  if (!qword_27DFB0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0270);
  }

  return result;
}

unint64_t sub_23A97BBA8()
{
  result = qword_27DFB0278;
  if (!qword_27DFB0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0278);
  }

  return result;
}

unint64_t sub_23A97BC00()
{
  result = qword_27DFB0280;
  if (!qword_27DFB0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0280);
  }

  return result;
}

unint64_t sub_23A97BC58()
{
  result = qword_27DFB0288;
  if (!qword_27DFB0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0288);
  }

  return result;
}

unint64_t sub_23A97BCB0()
{
  result = qword_27DFB0290;
  if (!qword_27DFB0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0290);
  }

  return result;
}

unint64_t sub_23A97BD08()
{
  result = qword_27DFB0298;
  if (!qword_27DFB0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0298);
  }

  return result;
}

unint64_t sub_23A97BD60()
{
  result = qword_27DFB02A0;
  if (!qword_27DFB02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02A0);
  }

  return result;
}

unint64_t sub_23A97BDB8()
{
  result = qword_27DFB02A8;
  if (!qword_27DFB02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02A8);
  }

  return result;
}

unint64_t sub_23A97BE10()
{
  result = qword_27DFB02B0;
  if (!qword_27DFB02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02B0);
  }

  return result;
}

unint64_t sub_23A97BE68()
{
  result = qword_27DFB02B8;
  if (!qword_27DFB02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02B8);
  }

  return result;
}

unint64_t sub_23A97BEC0()
{
  result = qword_27DFB02C0;
  if (!qword_27DFB02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02C0);
  }

  return result;
}

unint64_t sub_23A97BF18()
{
  result = qword_27DFB02C8;
  if (!qword_27DFB02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02C8);
  }

  return result;
}

unint64_t sub_23A97BF70()
{
  result = qword_27DFB02D0;
  if (!qword_27DFB02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02D0);
  }

  return result;
}

unint64_t sub_23A97BFC8()
{
  result = qword_27DFB02D8;
  if (!qword_27DFB02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02D8);
  }

  return result;
}

unint64_t sub_23A97C020()
{
  result = qword_27DFB02E0;
  if (!qword_27DFB02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02E0);
  }

  return result;
}

unint64_t sub_23A97C078()
{
  result = qword_27DFB02E8;
  if (!qword_27DFB02E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02E8);
  }

  return result;
}

unint64_t sub_23A97C0D0()
{
  result = qword_27DFB02F0;
  if (!qword_27DFB02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02F0);
  }

  return result;
}

unint64_t sub_23A97C128()
{
  result = qword_27DFB02F8;
  if (!qword_27DFB02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB02F8);
  }

  return result;
}

unint64_t sub_23A97C180()
{
  result = qword_27DFB0300;
  if (!qword_27DFB0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0300);
  }

  return result;
}

unint64_t sub_23A97C1D8()
{
  result = qword_27DFB0308;
  if (!qword_27DFB0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0308);
  }

  return result;
}

unint64_t sub_23A97C230()
{
  result = qword_27DFB0310;
  if (!qword_27DFB0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0310);
  }

  return result;
}

unint64_t sub_23A97C288()
{
  result = qword_27DFB0318;
  if (!qword_27DFB0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0318);
  }

  return result;
}

unint64_t sub_23A97C2E0()
{
  result = qword_27DFB0320;
  if (!qword_27DFB0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0320);
  }

  return result;
}

unint64_t sub_23A97C338()
{
  result = qword_27DFB0328;
  if (!qword_27DFB0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0328);
  }

  return result;
}

unint64_t sub_23A97C390()
{
  result = qword_27DFB0330;
  if (!qword_27DFB0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0330);
  }

  return result;
}

unint64_t sub_23A97C3E8()
{
  result = qword_27DFB0338;
  if (!qword_27DFB0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0338);
  }

  return result;
}

unint64_t sub_23A97C440()
{
  result = qword_27DFB0340;
  if (!qword_27DFB0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0340);
  }

  return result;
}

unint64_t sub_23A97C498()
{
  result = qword_27DFB0348;
  if (!qword_27DFB0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0348);
  }

  return result;
}

unint64_t sub_23A97C4F0()
{
  result = qword_27DFB0350;
  if (!qword_27DFB0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0350);
  }

  return result;
}

unint64_t sub_23A97C548()
{
  result = qword_27DFB0358;
  if (!qword_27DFB0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0358);
  }

  return result;
}

unint64_t sub_23A97C5A0()
{
  result = qword_27DFB0360;
  if (!qword_27DFB0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0360);
  }

  return result;
}

unint64_t sub_23A97C5F8()
{
  result = qword_27DFB0368;
  if (!qword_27DFB0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0368);
  }

  return result;
}

unint64_t sub_23A97C650()
{
  result = qword_27DFB0370;
  if (!qword_27DFB0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0370);
  }

  return result;
}

unint64_t sub_23A97C6A8()
{
  result = qword_27DFB0378;
  if (!qword_27DFB0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0378);
  }

  return result;
}

unint64_t sub_23A97C700()
{
  result = qword_27DFB0380;
  if (!qword_27DFB0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0380);
  }

  return result;
}

unint64_t sub_23A97C758()
{
  result = qword_27DFB0388;
  if (!qword_27DFB0388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0388);
  }

  return result;
}

unint64_t sub_23A97C7B0()
{
  result = qword_27DFB0390;
  if (!qword_27DFB0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0390);
  }

  return result;
}

unint64_t sub_23A97C808()
{
  result = qword_27DFB0398;
  if (!qword_27DFB0398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0398);
  }

  return result;
}

unint64_t sub_23A97C860()
{
  result = qword_27DFB03A0;
  if (!qword_27DFB03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03A0);
  }

  return result;
}

unint64_t sub_23A97C8B8()
{
  result = qword_27DFB03A8;
  if (!qword_27DFB03A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03A8);
  }

  return result;
}

unint64_t sub_23A97C910()
{
  result = qword_27DFB03B0;
  if (!qword_27DFB03B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03B0);
  }

  return result;
}

unint64_t sub_23A97C968()
{
  result = qword_27DFB03B8;
  if (!qword_27DFB03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03B8);
  }

  return result;
}

unint64_t sub_23A97C9C0()
{
  result = qword_27DFB03C0;
  if (!qword_27DFB03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03C0);
  }

  return result;
}

unint64_t sub_23A97CA18()
{
  result = qword_27DFB03C8;
  if (!qword_27DFB03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03C8);
  }

  return result;
}

unint64_t sub_23A97CA70()
{
  result = qword_27DFB03D0;
  if (!qword_27DFB03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03D0);
  }

  return result;
}

unint64_t sub_23A97CAC8()
{
  result = qword_27DFB03D8;
  if (!qword_27DFB03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03D8);
  }

  return result;
}

unint64_t sub_23A97CB20()
{
  result = qword_27DFB03E0;
  if (!qword_27DFB03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03E0);
  }

  return result;
}

unint64_t sub_23A97CB78()
{
  result = qword_27DFB03E8;
  if (!qword_27DFB03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03E8);
  }

  return result;
}

unint64_t sub_23A97CBD0()
{
  result = qword_27DFB03F0;
  if (!qword_27DFB03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03F0);
  }

  return result;
}

unint64_t sub_23A97CC28()
{
  result = qword_27DFB03F8;
  if (!qword_27DFB03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB03F8);
  }

  return result;
}

unint64_t sub_23A97CC80()
{
  result = qword_27DFB0400;
  if (!qword_27DFB0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0400);
  }

  return result;
}

unint64_t sub_23A97CCD8()
{
  result = qword_27DFB0408;
  if (!qword_27DFB0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0408);
  }

  return result;
}

unint64_t sub_23A97CD30()
{
  result = qword_27DFB0410;
  if (!qword_27DFB0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0410);
  }

  return result;
}

unint64_t sub_23A97CD88()
{
  result = qword_27DFB0418;
  if (!qword_27DFB0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0418);
  }

  return result;
}

unint64_t sub_23A97CDE0()
{
  result = qword_27DFB0420;
  if (!qword_27DFB0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0420);
  }

  return result;
}

unint64_t sub_23A97CE38()
{
  result = qword_27DFB0428;
  if (!qword_27DFB0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0428);
  }

  return result;
}

unint64_t sub_23A97CE90()
{
  result = qword_27DFB0430;
  if (!qword_27DFB0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0430);
  }

  return result;
}

unint64_t sub_23A97CEE8()
{
  result = qword_27DFB0438;
  if (!qword_27DFB0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0438);
  }

  return result;
}

unint64_t sub_23A97CF40()
{
  result = qword_27DFB0440;
  if (!qword_27DFB0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0440);
  }

  return result;
}

unint64_t sub_23A97CF98()
{
  result = qword_27DFB0448;
  if (!qword_27DFB0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0448);
  }

  return result;
}

unint64_t sub_23A97CFF0()
{
  result = qword_27DFB0450;
  if (!qword_27DFB0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0450);
  }

  return result;
}

unint64_t sub_23A97D048()
{
  result = qword_27DFB0458;
  if (!qword_27DFB0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0458);
  }

  return result;
}

unint64_t sub_23A97D0A0()
{
  result = qword_27DFB0460;
  if (!qword_27DFB0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0460);
  }

  return result;
}

unint64_t sub_23A97D0F8()
{
  result = qword_27DFB0468;
  if (!qword_27DFB0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0468);
  }

  return result;
}

unint64_t sub_23A97D150()
{
  result = qword_27DFB0470;
  if (!qword_27DFB0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0470);
  }

  return result;
}

unint64_t sub_23A97D1A8()
{
  result = qword_27DFB0478;
  if (!qword_27DFB0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0478);
  }

  return result;
}

unint64_t sub_23A97D200()
{
  result = qword_27DFB0480;
  if (!qword_27DFB0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0480);
  }

  return result;
}

unint64_t sub_23A97D258()
{
  result = qword_27DFB0488;
  if (!qword_27DFB0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0488);
  }

  return result;
}

unint64_t sub_23A97D2B0()
{
  result = qword_27DFB0490;
  if (!qword_27DFB0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0490);
  }

  return result;
}

unint64_t sub_23A97D308()
{
  result = qword_27DFB0498;
  if (!qword_27DFB0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0498);
  }

  return result;
}

unint64_t sub_23A97D360()
{
  result = qword_27DFB04A0;
  if (!qword_27DFB04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04A0);
  }

  return result;
}

unint64_t sub_23A97D3B8()
{
  result = qword_27DFB04A8;
  if (!qword_27DFB04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04A8);
  }

  return result;
}

unint64_t sub_23A97D410()
{
  result = qword_27DFB04B0;
  if (!qword_27DFB04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04B0);
  }

  return result;
}

unint64_t sub_23A97D468()
{
  result = qword_27DFB04B8;
  if (!qword_27DFB04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04B8);
  }

  return result;
}

unint64_t sub_23A97D4C0()
{
  result = qword_27DFB04C0;
  if (!qword_27DFB04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04C0);
  }

  return result;
}

unint64_t sub_23A97D518()
{
  result = qword_27DFB04C8;
  if (!qword_27DFB04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04C8);
  }

  return result;
}

unint64_t sub_23A97D570()
{
  result = qword_27DFB04D0;
  if (!qword_27DFB04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04D0);
  }

  return result;
}

unint64_t sub_23A97D5C8()
{
  result = qword_27DFB04D8;
  if (!qword_27DFB04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04D8);
  }

  return result;
}

unint64_t sub_23A97D620()
{
  result = qword_27DFB04E0;
  if (!qword_27DFB04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04E0);
  }

  return result;
}

unint64_t sub_23A97D678()
{
  result = qword_27DFB04E8;
  if (!qword_27DFB04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04E8);
  }

  return result;
}

unint64_t sub_23A97D6D0()
{
  result = qword_27DFB04F0;
  if (!qword_27DFB04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04F0);
  }

  return result;
}

unint64_t sub_23A97D728()
{
  result = qword_27DFB04F8;
  if (!qword_27DFB04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB04F8);
  }

  return result;
}

unint64_t sub_23A97D780()
{
  result = qword_27DFB0500;
  if (!qword_27DFB0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0500);
  }

  return result;
}

unint64_t sub_23A97D7D8()
{
  result = qword_27DFB0508;
  if (!qword_27DFB0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0508);
  }

  return result;
}

unint64_t sub_23A97D82C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A97D878(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A97D8C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A97D910(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A97D95C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A97D9A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1751607656 && a2 == 0xE400000000000000;
  if (v3 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7827308 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23AA0DBD4();

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

uint64_t sub_23A97DABC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819042167 && a2 == 0xE400000000000000;
  if (v3 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696E65706FLL && a2 == 0xE700000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F646E6977 && a2 == 0xE600000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1919905636 && a2 == 0xE400000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F6F6C66 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23AA0DBD4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23A97DC64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E417472617473 && a2 == 0xEA0000000000656CLL || (sub_23AA0DBD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C676E41646E65 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23AA0DBD4();

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

uint64_t sub_23A97DDC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23AA0DBD4();

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

uint64_t sub_23A97DF24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656761726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265676972666572 && a2 == 0xEC000000726F7461 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65766F7473 && a2 == 0xE500000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6579554 && a2 == 0xE300000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1802398067 && a2 == 0xE400000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7244726568736177 && a2 == 0xEB00000000726579 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74656C696F74 && a2 == 0xE600000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x62757468746162 && a2 == 0xE700000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1852143215 && a2 == 0xE400000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6873617768736964 && a2 == 0xEA00000000007265 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C626174 && a2 == 0xE500000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1634103155 && a2 == 0xE400000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7269616863 && a2 == 0xE500000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x63616C7065726966 && a2 == 0xE900000000000065 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x69736976656C6574 && a2 == 0xEA00000000006E6FLL || (sub_23AA0DBD4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x737269617473 && a2 == 0xE600000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_23AA0DBD4();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_23A97E420(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_23A97E468()
{
  result = qword_27DFB0558;
  if (!qword_27DFB0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0558);
  }

  return result;
}

unint64_t sub_23A97E4D0()
{
  result = qword_27DFB0580;
  if (!qword_27DFB0580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0580);
  }

  return result;
}

int8x8_t sub_23A97E614(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vmul_f32(a3, 0x3F0000003F000000);
  v4 = vsub_f32(a2, v3);
  v5 = vbsl_s8(vcge_f32(v4, a1), v4, a1);
  v6 = vadd_f32(v3, a2);
  return vbsl_s8(vcgt_f32(v5, v6), v6, v5);
}

BOOL sub_23A97E638(double a1, double a2, double a3)
{
  if ((*&a2 - (0.5 * *&a3)) > *&a1 || *&a1 > (*&a2 + (0.5 * *&a3)))
  {
    return 0;
  }

  v5 = vmuls_lane_f32(0.5, *&a3, 1);
  return (*(&a2 + 1) - v5) <= *(&a1 + 1) && *(&a1 + 1) <= (*(&a2 + 1) + v5);
}

uint64_t sub_23A97E68C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, float32x4_t a11, float32x4_t a12, simd_float4 a13, simd_float4 a14, float32x4_t a15, float32x4_t a16, uint64_t a17, uint64_t a18)
{
  v18 = vmulq_f32(a15, a11);
  v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  if (v19 == 0.0)
  {
    return 0;
  }

  v21 = vnegq_f32(a15);
  v21.i32[3] = 0;
  v22 = vmulq_f32(v21, vsubq_f32(a16, a12));
  v22.f32[0] = (v22.f32[2] + vaddv_f32(*v22.f32)) / v19;
  v23 = a12.f32[0] - (v22.f32[0] * a11.f32[0]);
  v24 = a12.f32[1] - vmuls_lane_f32(v22.f32[0], *a11.f32, 1);
  v25 = a12.f32[2] - vmuls_lane_f32(v22.f32[0], a11, 2);
  v26.columns[0] = a13;
  v26.columns[1] = a14;
  v26.columns[2] = a15;
  v26.columns[3] = a16;
  v27 = __invert_f4(v26);
  v27.columns[0].i64[0] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v27.columns[0], v23), v27.columns[1], v24), v27.columns[2], v25).u64[0];
  *v27.columns[1].f32 = vmul_f32(a18, 0x3F0000003F000000);
  *v27.columns[2].f32 = vsub_f32(a17, *v27.columns[1].f32);
  *v27.columns[0].f32 = vadd_f32(*v27.columns[3].f32, *v27.columns[0].f32);
  *v27.columns[0].f32 = vbsl_s8(vcge_f32(*v27.columns[2].f32, *v27.columns[0].f32), *v27.columns[2].f32, *v27.columns[0].f32);
  *v27.columns[1].f32 = vadd_f32(*v27.columns[1].f32, a17);
  return vbsl_s8(vcgt_f32(*v27.columns[0].f32, *v27.columns[1].f32), *v27.columns[1].f32, *v27.columns[0].f32);
}

uint64_t type metadata accessor for WallEntity(uint64_t a1)
{
  result = qword_27DFB05A0;
  if (!qword_27DFB05A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A97E7F4(uint64_t a1)
{
  result = sub_23AA0C064();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23A97E89C(uint64_t a1, char a2, double a3)
{
  v5 = v3;
  v9 = sub_23AA0C064();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v35 - v14;
  sub_23A902B54(a1, a2 & 1, a3);
  if (!v4 && *(v5 + qword_27DFC0630) == 1)
  {
    v16 = qword_27DFB0598;
    swift_beginAccess();
    (*(v10 + 16))(v15, v5 + v16, v9);
    sub_23AA0C044();
    sub_23AA0C014();
    v18 = v17;
    v19 = *(v10 + 8);
    v19(v12, v9);
    v19(v15, v9);
    v20 = 1.0;
    if (v18 <= 1.0)
    {
      v20 = v18;
    }

    if (v18 <= 0.0)
    {
      v20 = 0.0;
    }

    v21 = v20;
    v22 = qword_27DFB0588;
    *(v5 + qword_27DFB0588) = *(v5 + qword_27DFB0588) + ((*(v5 + qword_27DFB0590) - *(v5 + qword_27DFB0588)) * v21);
    v23 = qword_27DFC0628;
    swift_beginAccess();
    sub_23A8CA9D8(v5 + v23, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF010, qword_23AA14E50);
    type metadata accessor for SimpleScanMaterial(0);
    if (swift_dynamicCast())
    {
      v24 = v35[0];
      v25 = *(v5 + v22);
      if (*(v35[0] + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) != v25)
      {
        *(v35[0] + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) = v25;
        sub_23A9026C0();
        type metadata accessor for WallEntity(0);
        sub_23A97ED78();
        v26 = sub_23AA0CAD4();
        v28 = v27;
        v29 = sub_23AA0C4A4();
        if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_23AA10FC0;
          v31 = sub_23AA0CD84();
          v32 = MEMORY[0x277CDB298];
          *(v30 + 56) = v31;
          *(v30 + 64) = v32;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v30 + 32));
          v34 = OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial;
          swift_beginAccess();
          (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v24 + v34, v31);
          sub_23AA0C494();
        }

        v26(v36, 0);
      }
    }
  }
}

uint64_t sub_23A97EC64()
{
  v1 = qword_27DFB0598;
  v2 = sub_23AA0C064();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_23A97ECCC(__n128 a1)
{
  v1 = sub_23A904938(a1);
  v2 = qword_27DFB0598;
  v3 = sub_23AA0C064();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

unint64_t sub_23A97ED78()
{
  result = qword_27DFAF8C8;
  if (!qword_27DFAF8C8)
  {
    type metadata accessor for WallEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF8C8);
  }

  return result;
}

__n128 __swift_memcpy17_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A97EDE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23A97EE38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_23A97EE8C(float32x4_t *a1, float32x4_t *a2, float a3)
{
  v3 = a2[1].i64[0];
  if (v3 != a1[1].i64[0])
  {
    return 0;
  }

  v4 = a2 + 2;
  v5 = a1 + 2;
  v6 = a3 * a3;
  do
  {
    result = v3 == 0;
    if (!v3)
    {
      break;
    }

    v8 = *v4++;
    v9 = v8;
    v10 = *v5++;
    v11 = vsubq_f32(v9, v10);
    v12 = vmulq_f32(v11, v11);
    --v3;
  }

  while ((v12.f32[2] + vaddv_f32(*v12.f32)) < v6);
  return result;
}

BOOL sub_23A97EEE8(unint64_t a1, unint64_t a2, float a3)
{
  v5 = (a2 >> 62);
  if (a2 >> 62)
  {
LABEL_31:
    v21 = a3;
    v22 = sub_23AA0D7F4();
    a3 = v21;
    v6 = v22;
    if (!(a1 >> 62))
    {
LABEL_3:
      if (v6 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

      return 0;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a1 >> 62))
    {
      goto LABEL_3;
    }
  }

  v23 = a3;
  v24 = sub_23AA0D7F4();
  a3 = v23;
  if (v6 != v24)
  {
    return 0;
  }

LABEL_4:
  if (v5)
  {
    v8 = a3;
    v7 = sub_23AA0D7F4();
    a3 = v8;
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = a3 * a3;
  v10 = -v7;
  v11 = 4;
  do
  {
    v12 = v10 + v11 == 4;
    if (v10 + v11 == 4)
    {
      break;
    }

    v13 = v11 - 4;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EE90360](v11 - 4, a2);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v5 = *(a2 + 8 * v11);

      if (__OFADD__(v13, 1))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x23EE90360](v11 - 4, a1);
    }

    else
    {
      if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v14 = *(a1 + 8 * v11);
    }

    v15 = vsub_f32(v5[2], v14[2]);
    if (vaddv_f32(vmul_f32(v15, v15)) >= v9 || (v16 = vsub_f32(v5[3], v14[3]), vaddv_f32(vmul_f32(v16, v16)) >= v9) || (v17 = vsub_f32(v5[4], v14[4]), vaddv_f32(vmul_f32(v17, v17)) >= v9) || (v18 = vsub_f32(v5[5], v14[5]), vaddv_f32(vmul_f32(v18, v18)) >= v9))
    {

      return 0;
    }

    v19 = v5[6].i32[0];

    v5 = v14[6].u32[0];

    ++v11;
  }

  while (v19 == v5);
  return v12;
}

BOOL sub_23A97F130(unint64_t a1, unint64_t a2, float a3)
{
  v6 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_30:
    v7 = sub_23AA0D7F4();
    if (!(a1 >> 62))
    {
LABEL_3:
      if (v7 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

      return 0;
    }
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a1 >> 62))
    {
      goto LABEL_3;
    }
  }

  if (v7 != sub_23AA0D7F4())
  {
    return 0;
  }

LABEL_4:
  if (v6)
  {
    v8 = sub_23AA0D7F4();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = -v8;
  v10 = 4;
  do
  {
    v11 = v9 + v10 == 4;
    if (v9 + v10 == 4)
    {
      break;
    }

    v12 = v10 - 4;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x23EE90360](v10 - 4, a2);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(a2 + 8 * v10);

      if (__OFADD__(v12, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x23EE90360](v10 - 4, a1);
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }
    }

    if (vabds_f32(*(v6 + 16), *(v13 + 16)) >= a3 || vabds_f32(*(v6 + 20), *(v13 + 20)) >= a3 || vabds_f32(*(v6 + 24), *(v13 + 24)) >= a3)
    {

      return 0;
    }

    v14 = *(v6 + 28);
    v15 = *(v13 + 28);

    ++v10;
  }

  while (vabds_f32(v14, v15) < a3);
  return v11;
}

BOOL sub_23A97F328(float32x4_t *a1, float32x4_t *a2, float a3)
{
  v3 = a2[1].i64[0];
  if (v3 != a1[1].i64[0])
  {
    return 0;
  }

  v4 = a3 * a3;
  v5 = a2 + 3;
  v6 = a1 + 3;
  v7 = v3 + 1;
  do
  {
    result = --v7 == 0;
    if (!v7)
    {
      break;
    }

    v9 = vsubq_f32(v5[-1], v6[-1]);
    v10 = vmulq_f32(v9, v9);
    if ((v10.f32[2] + vaddv_f32(*v10.f32)) >= v4)
    {
      break;
    }

    v11 = *v5;
    v5 += 2;
    v12 = v11;
    v13 = *v6;
    v6 += 2;
    v14 = vsubq_f32(v12, v13);
    v15 = vmulq_f32(v14, v14);
  }

  while ((v15.f32[2] + vaddv_f32(*v15.f32)) < v4);
  return result;
}

uint64_t sub_23A97F3A8@<X0>(uint64_t *a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>, float32x4_t a5@<Q0>, float32x4_t a6@<Q1>, float32x4_t a7@<Q2>, float32x4_t a8@<Q3>)
{
  v170.n128_u64[0] = a3;
  v174 = a7;
  v175 = a8;
  v173 = a6;
  v172 = a5;
  v180 = a4;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v179 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = &v161 - v10;
  v182 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v11 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v13 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v181.i64[0] = &v161 - v15;
  MEMORY[0x28223BE20](v16);
  v171.i64[0] = &v161 - v17;
  MEMORY[0x28223BE20](v18);
  v184 = (v161.n128_u64 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v20 - 8);
  v168.i64[0] = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v161 - v23;
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v161 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v161 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v161 - v34;
  MEMORY[0x28223BE20](v36);
  v40 = &v161 - v39;
  v41 = *a1;
  if (a2)
  {
    *v42.i64 = MEMORY[0x23EE8FF80](*(v41 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition), *(v41 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation), xmmword_23AA11AF0);
    v166 = v42;
    v167 = v43;
    v169 = v44;
    v168 = v45;
    v46 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
    swift_beginAccess();
    v183 = v40;
    sub_23A8D5194(v41 + v46, v40, &qword_27DFAEB38, &unk_23AA11B60);
    v47 = *(v41 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions + 4);
    sub_23A8D5194(v170.n128_i64[0], v35, &qword_27DFAEB38, &unk_23AA11B60);
    sub_23A8D5194(v35, v32, &qword_27DFAEB38, &unk_23AA11B60);
    v48 = *(v11 + 48);
    v49 = v182;
    v50 = v48(v32, 1, v182);
    v178 = v35;
    v181.i64[0] = v11 + 48;
    if (v50 == 1)
    {
      v51 = v48;
      v52 = objc_opt_self();
      v53 = [v52 degrees];
      sub_23A8EA31C();
      v54 = v184;
      sub_23AA0BC64();
      v55 = v52;
      v48 = v51;
      v56 = [v55 degrees];
      sub_23AA0BC64();
      *v54 = 0;
      *(v54 + 2) = 0;
      if (v51(v32, 1, v49) != 1)
      {
        sub_23A8D50D0(v32, &qword_27DFAEB38, &unk_23AA11B60);
      }
    }

    else
    {
      sub_23A9826EC(v32, v184, type metadata accessor for CapturedRoom.Surface.Curve);
    }

    sub_23A8D5194(v183, v29, &qword_27DFAEB38, &unk_23AA11B60);
    if (v48(v29, 1, v49) == 1)
    {
      v73 = v48;
      v74 = objc_opt_self();
      v75 = [v74 degrees];
      sub_23A8EA31C();
      v76 = v171.i64[0];
      sub_23AA0BC64();
      v77 = v76;
      v78 = [v74 degrees];
      sub_23AA0BC64();
      *v76 = 0;
      *(v76 + 8) = 0;
      if (v73(v29, 1, v49) != 1)
      {
        sub_23A8D50D0(v29, &qword_27DFAEB38, &unk_23AA11B60);
      }
    }

    else
    {
      v77 = v171.i64[0];
      sub_23A9826EC(v29, v171.i64[0], type metadata accessor for CapturedRoom.Surface.Curve);
    }

    v79.i64[0] = *v77;
    v181 = v79;
    v87 = *(v77 + 8);
    v88 = objc_opt_self();
    v89 = [v88 radians];
    v91 = v176;
    v90 = v177;
    sub_23AA0BC84();

    sub_23AA0BC74();
    v93 = v92;
    v94 = *(v179 + 1);
    v95 = v94(v91, v90);
    v179 = v94;
    *&v93 = v93;
    v95.n128_f32[0] = v47 * -0.5;
    v170 = v95;
    v96.f32[0] = v181.f32[0] + (v87 * cosf(*&v93));
    v165 = v96;
    v97 = v181.f32[1];
    v98.f32[0] = v97 + (v87 * sinf(*&v93));
    v164 = v98;
    v99 = [v88 radians];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v101 = v100;
    v102 = v94(v91, v90);
    *&v101 = v101;
    v102.n128_f32[0] = v47 * 0.5;
    v163 = v102;
    v103.f32[0] = v181.f32[0] + (v87 * cosf(*&v101));
    v181 = v103;
    v104 = sinf(*&v101);
    v105 = vaddq_f32(v168, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v166, v165.f32[0]), v167, v170.n128_f32[0]), v169, v164.f32[0]));
    v106 = vaddq_f32(v168, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v166, v181.f32[0]), v167, v163.n128_f32[0]), v169, v97 + (v87 * v104)));
    v181 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v105.f32[0]), v173, *v105.f32, 1), v174, v105, 2), v175, v105, 3);
    v175 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v106.f32[0]), v173, *v106.f32, 1), v174, v106, 2), v175, v106, 3);
    v107 = v184;
    LODWORD(v108) = HIDWORD(*v184);
    *&v101 = v175.f32[0] - COERCE_FLOAT(*v184);
    v109 = v175.f32[2] - v108;
    v110 = atan2f(v181.f32[2] - v108, v181.f32[0] - COERCE_FLOAT(*v184));
    v111 = atan2f(v109, *&v101);
    v112 = v110 + 6.2832;
    if (v110 >= 0.0)
    {
      v112 = v110;
    }

    else
    {
      v111 = v111 + 6.2832;
    }

    if (v112 < 6.2832)
    {
      v113 = v112;
    }

    else
    {
      v113 = v112 + -6.2832;
    }

    if (v112 >= 6.2832)
    {
      v111 = v111 + -6.2832;
    }

    if (v111 >= v113)
    {
      v114 = v111;
    }

    else
    {
      v114 = v111 + 6.2832;
    }

    v115 = [v88 radians];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v117 = v116;
    v118 = v179;
    v179(v91, v90);
    v119 = v117;
    if (v113 < v119)
    {
      v113 = v117;
    }

    v120 = v171.i64[0];
    v121 = [v88 radians];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v123 = v122;
    v118(v91, v90);
    v124 = vzip2_s32(*v181.f32, *v175.f32);
  }

  else
  {
    v169.i64[0] = v13;
    v57 = v181.i64[0];
    v58 = v37;
    v59 = v38;
    *v60.i64 = MEMORY[0x23EE8FF80](*(v41 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition), *(v41 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation), xmmword_23AA11AF0);
    v164 = v60;
    v165 = v61;
    v167 = v62;
    v166 = v63;
    v64 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
    swift_beginAccess();
    v183 = v59;
    sub_23A8D5194(v41 + v64, v59, &qword_27DFAEB38, &unk_23AA11B60);
    v65 = *(v41 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions + 4);
    sub_23A8D5194(v170.n128_i64[0], v58, &qword_27DFAEB38, &unk_23AA11B60);
    v178 = v58;
    sub_23A8D5194(v58, v24, &qword_27DFAEB38, &unk_23AA11B60);
    v66 = *(v11 + 48);
    v67 = v182;
    v68 = v66(v24, 1, v182);
    v184 = v57;
    if (v68 == 1)
    {
      v69 = objc_opt_self();
      v70 = [v69 degrees];
      sub_23A8EA31C();
      v71 = v184;
      sub_23AA0BC64();
      v72 = [v69 degrees];
      sub_23AA0BC64();
      *v71 = 0;
      *(v71 + 2) = 0;
      if (v66(v24, 1, v67) != 1)
      {
        sub_23A8D50D0(v24, &qword_27DFAEB38, &unk_23AA11B60);
      }
    }

    else
    {
      sub_23A9826EC(v24, v57, type metadata accessor for CapturedRoom.Surface.Curve);
    }

    v80 = v168.i64[0];
    sub_23A8D5194(v183, v168.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
    v81 = v66(v80, 1, v67);
    v82 = v169.i64[0];
    if (v81 == 1)
    {
      v83 = objc_opt_self();
      v84 = [v83 degrees];
      v171.i64[0] = v66;
      sub_23A8EA31C();
      sub_23AA0BC64();
      v85 = [v83 &selRef_saveAndCreateUSDZPackageWithURL_ + 6];
      sub_23AA0BC64();
      *v82 = 0;
      *(v82 + 8) = 0;
      if ((v171.i64[0])(v80, 1, v67) != 1)
      {
        sub_23A8D50D0(v80, &qword_27DFAEB38, &unk_23AA11B60);
      }
    }

    else
    {
      sub_23A9826EC(v80, v169.i64[0], type metadata accessor for CapturedRoom.Surface.Curve);
    }

    v86.i64[0] = *v82;
    v171 = v86;
    v125 = *(v82 + 8);
    v126 = objc_opt_self();
    v170.n128_u64[0] = v126;
    v127 = [v126 radians];
    v128 = v176;
    v129 = v177;
    sub_23AA0BC84();

    sub_23AA0BC74();
    v131 = v130;
    v132 = *(v179 + 1);
    v133 = v132(v128, v129);
    v179 = v132;
    *&v131 = v131;
    v133.f32[0] = v65 * -0.5;
    v168 = v133;
    v134.n128_f32[0] = v171.f32[0] + (v125 * cosf(*&v131));
    v163 = v134;
    v135 = v171.f32[1];
    *&v136 = v135 + (v125 * sinf(*&v131));
    v162 = v136;
    v137 = [v126 radians];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v139 = v138;
    v140 = v132(v128, v129);
    *&v139 = v139;
    v140.n128_f32[0] = v65 * 0.5;
    v161 = v140;
    v141.f32[0] = v171.f32[0] + (v125 * cosf(*&v139));
    v171 = v141;
    v142 = sinf(*&v139);
    v143 = vaddq_f32(v166, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v164, v163.n128_f32[0]), v165, v168.f32[0]), v167, *&v162));
    v144 = vaddq_f32(v166, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v164, v171.f32[0]), v165, v161.n128_f32[0]), v167, v135 + (v125 * v142)));
    v171 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v143.f32[0]), v173, *v143.f32, 1), v174, v143, 2), v175, v143, 3);
    v175 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v144.f32[0]), v173, *v144.f32, 1), v174, v144, 2), v175, v144, 3);
    LODWORD(v145) = HIDWORD(*v184);
    *&v139 = v175.f32[0] - COERCE_FLOAT(*v184);
    v146 = v175.f32[2] - v145;
    v147 = atan2f(v171.f32[2] - v145, v171.f32[0] - COERCE_FLOAT(*v184));
    v148 = atan2f(v146, *&v139);
    v149 = v147 + 6.2832;
    if (v147 >= 0.0)
    {
      v149 = v147;
    }

    else
    {
      v148 = v148 + 6.2832;
    }

    if (v149 < 6.2832)
    {
      v113 = v149;
    }

    else
    {
      v113 = v149 + -6.2832;
    }

    if (v149 >= 6.2832)
    {
      v148 = v148 + -6.2832;
    }

    if (v148 >= v113)
    {
      v114 = v148;
    }

    else
    {
      v114 = v148 + 6.2832;
    }

    v150 = v170.n128_u64[0];
    v151 = [v170.n128_u64[0] radians];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v153 = v152;
    v154 = v179;
    v179(v128, v129);
    v155 = v153;
    if (v113 < v155)
    {
      v113 = v153;
    }

    v156 = [v150 byte_278B655E4];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v123 = v157;
    v154(v128, v129);
    v107 = v184;
    v124 = vzip2_s32(*v171.f32, *v175.f32);
    v120 = v169.i64[0];
  }

  sub_23A982754(v120, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A982754(v107, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A8D50D0(v178, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v183, &qword_27DFAEB38, &unk_23AA11B60);
  v158 = v123;
  if (v114 >= v158)
  {
    v159 = v123;
  }

  else
  {
    v159 = v114;
  }

  type metadata accessor for CurvedElement();
  result = swift_allocObject();
  *(result + 16) = v113;
  *(result + 20) = v159;
  *(result + 24) = v124;
  *v180 = result;
  return result;
}

uint64_t sub_23A9804A8(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v2 >> 62))
  {
    v3 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = -v3;
    if (!__OFSUB__(0, v3))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  v3 = sub_23AA0D7F4();
  result = v7;
  v4 = -v3;
  if (__OFSUB__(0, v3))
  {
    goto LABEL_19;
  }

LABEL_5:
  v5 = -result;
  if (v4 <= 0 && v4 > v5)
  {
    goto LABEL_22;
  }

  result = v3 - result;
  if (__OFADD__(v3, v5))
  {
    goto LABEL_20;
  }

  if (v3 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_23A945F98(result, v3);
}

BOOL sub_23A980560(float32x4_t *a1, float a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curve;
  v36 = v2;
  sub_23A8D5194(v2 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curve, v10, &qword_27DFAEB38, &unk_23AA11B60);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    v7 = v10;
LABEL_5:
    sub_23A8D50D0(v7, &qword_27DFAEB38, &unk_23AA11B60);
    if (v19(v36 + v18, 1, v11) != 1 || v19(a1 + v18, 1, v11) != 1)
    {
      return 0;
    }

    goto LABEL_9;
  }

  sub_23A9826EC(v10, v17, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A8D5194(a1 + v18, v7, &qword_27DFAEB38, &unk_23AA11B60);
  if (v19(v7, 1, v11) == 1)
  {
    sub_23A982754(v17, type metadata accessor for CapturedRoom.Surface.Curve);
    goto LABEL_5;
  }

  sub_23A9826EC(v7, v14, type metadata accessor for CapturedRoom.Surface.Curve);
  v20 = sub_23A8EA248(v14);
  sub_23A982754(v14, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A982754(v17, type metadata accessor for CapturedRoom.Surface.Curve);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (sub_23A982414(v36 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_leftStrut, a1 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_leftStrut))
  {
    return 0;
  }

  if (sub_23A982414(v36 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_rightStrut, a1 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_rightStrut))
  {
    return 0;
  }

  v21 = vsubq_f32(v36[1], a1[1]);
  v22 = vmulq_f32(v21, v21);
  if ((v22.f32[2] + vaddv_f32(*v22.f32)) >= (a2 * a2))
  {
    return 0;
  }

  v23 = *(v36->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_polygonCorners);
  v24 = *(a1->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_polygonCorners);
  v25 = v23[1].i64[0];
  if (v25 != v24[1].i64[0])
  {
    return 0;
  }

  v26 = v23 + 2;
  v27 = v24 + 2;
  v28 = 0;
  while (v25)
  {
    v29 = *v26++;
    v30 = v29;
    v31 = *v27++;
    v32 = vsubq_f32(v30, v31);
    v33 = vmulq_f32(v32, v32);
    --v25;
    if ((v33.f32[2] + vaddv_f32(*v33.f32)) >= (a2 * a2))
    {
      return v28;
    }
  }

  if (!sub_23A97EEE8(*(a1->u64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_straightOpeningElements), *(v36->u64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_straightOpeningElements), a2) || !sub_23A97F130(*(a1->u64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curvedOpeningElements), *(v36->u64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curvedOpeningElements), a2))
  {
    return 0;
  }

  return sub_23A97F328(*(a1->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjectElements), *(v36->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjectElements), a2);
}

uint64_t sub_23A980964()
{
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curve, &qword_27DFAEB38, &unk_23AA11B60);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_leftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_rightStrut, &unk_27DFAF020, &unk_23AA12300);
  return v0;
}

uint64_t sub_23A980A4C()
{
  sub_23A980964();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScanEntityMeshModel(uint64_t a1)
{
  result = qword_27DFB05B0;
  if (!qword_27DFB05B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A980AF8(uint64_t a1)
{
  sub_23A980C20(319, &qword_27DFAEC08, type metadata accessor for CapturedRoom.Surface.Curve);
  if (v1 <= 0x3F)
  {
    sub_23A980C20(319, &qword_27DFAEC10, type metadata accessor for ScanItemStrut);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23A980C20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23AA0D664();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23A980C74(uint64_t a1, int a2, float32x4_t a3, float32x4_t a4, __n128 a5, __n128 a6)
{
  v191 = a6;
  v190 = a5;
  v189 = a4;
  v188 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v8 - 8);
  v178 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v177 = &v174 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v12 - 8);
  v176 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v184.n128_u64[0] = &v174 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v174 - v17;
  v19 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  v20 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
  v193 = a2;
  if (a2)
  {
    v192 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);

    v22 = sub_23A8DC460(v21);

    v23 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
  }

  else
  {
    v192 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);

    v22 = sub_23A8DC460(v24);

    v23 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
  }

  v25 = a1 + *v23;
  swift_beginAccess();
  sub_23A8D5194(v25, v18, &qword_27DFAEB38, &unk_23AA11B60);
  v204.columns[0] = v188;
  v204.columns[1] = v189;
  v204.columns[2] = v190;
  v204.columns[3] = v191;
  v205 = __invert_f4(v204);
  v198 = v205.columns[0];
  v197 = v205.columns[1];
  v196 = v205.columns[2];
  v195 = v205.columns[3];
  v26 = *(v22 + 16);
  if (v26)
  {
    v202[0] = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v26, 0);
    v28 = v202[0];
    v29 = *(v202[0] + 16);
    v30 = 32;
    do
    {
      v31 = *(v22 + v30);
      v202[0] = v28;
      v32 = *(v28 + 24);
      if (v29 >= v32 >> 1)
      {
        v194 = v27;
        v187 = v31;
        sub_23A975DC0((v32 > 1), v29 + 1, 1);
        v31 = v187;
        v27.i32[3] = v194.i32[3];
        v28 = v202[0];
      }

      v33 = vaddq_f32(v195, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, v31.f32[0]), v197, *v31.f32, 1), v196, v31, 2));
      v33.i32[3] = v27.i32[3];
      *(v28 + 16) = v29 + 1;
      *(v28 + 16 * v29 + 32) = v33;
      v30 += 16;
      ++v29;
      v27 = v33;
      --v26;
    }

    while (v26);
    v175 = v28;

    v19 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  }

  else
  {

    v175 = MEMORY[0x277D84F90];
  }

  v34 = sub_23A8D7CF0();
  v35 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v194.i64[0] = v35;
  v187.n128_u64[0] = v37;
  *&v185 = v36 + 48;
  v38 = v37(v18, 1);
  v39 = v184.n128_u64[0];
  if (v38 == 1)
  {

    v40 = v34;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v41 = (v187.n128_u64[0])(v18, 1, v194.i64[0]);
  v42 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v183 = v34;
  *&v186 = v40;
  v182 = v18;
  v181 = a1;
  if (v41 != 1)
  {
    v202[0] = MEMORY[0x277D84F90];
    if (v34 >> 62)
    {
      goto LABEL_30;
    }

    v44 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
      while (1)
      {
        v45 = 0;
        v20 = (v34 & 0xC000000000000001);
        v42 = v34 & 0xFFFFFFFFFFFFFF8;
        v40 = &qword_27DFAEB38;
        v19 = &unk_23AA11B60;
        while (v20)
        {
          v18 = MEMORY[0x23EE90360](v45, v34);
          v46 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            v43 = v202[0];
            v18 = v182;
            v19 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
            v20 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
            v40 = v186;
            v42 = MEMORY[0x277D84F90];
            goto LABEL_32;
          }

LABEL_23:
          sub_23A8D5194(&v18[OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve], v39, &qword_27DFAEB38, &unk_23AA11B60);
          if ((v187.n128_u64[0])(v39, 1, v194.i64[0]) == 1)
          {

            sub_23A8D50D0(v39, &qword_27DFAEB38, &unk_23AA11B60);
          }

          else
          {
            sub_23A8D50D0(v39, &qword_27DFAEB38, &unk_23AA11B60);
            sub_23AA0D944();
            sub_23AA0D974();
            v39 = v184.n128_u64[0];
            sub_23AA0D984();
            sub_23AA0D954();
            v34 = v183;
          }

          ++v45;
          if (v46 == v44)
          {
            goto LABEL_28;
          }
        }

        if (v45 < *(v42 + 16))
        {
          break;
        }

        __break(1u);
LABEL_30:
        v44 = sub_23AA0D7F4();
        if (!v44)
        {
          goto LABEL_31;
        }
      }

      v18 = *(v34 + 8 * v45 + 32);

      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

LABEL_31:
    v43 = MEMORY[0x277D84F90];
  }

LABEL_32:
  v180 = v43;
  v47 = v193 & 1;
  v48 = sub_23A8D8288();
  v201 = v48;
  v179 = v47;
  if (v47)
  {
LABEL_59:
    if (!(v40 >> 62))
    {
      v49 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49)
      {
LABEL_61:
        v202[0] = v42;
        sub_23AA0D964();
        if ((v49 & 0x8000000000000000) != 0)
        {
          goto LABEL_258;
        }

        if ((v40 & 0xC000000000000001) != 0)
        {
          v57 = 0;
          v56.n128_u64[0] = vmul_f32(*v192.f32, 0x3F0000003F000000);
          v58 = vneg_f32(v56.n128_u64[0]);
          v59 = vsub_f32(vdup_n_s32(0x3CF5C28Fu), v56.n128_u64[0]);
          v60 = v56.n128_f32[0] + -0.03;
          v186 = v56;
          v61 = v56.n128_f32[1] + -0.03;
          v185 = xmmword_23AA11AF0;
          while (1)
          {
            v64 = MEMORY[0x23EE90360](v57, v40);
            v65 = v64;
            v66 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
            if ((v193 & 1) == 0)
            {
              v66 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
            }

            v67 = *(v64 + *v66);
            v68 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
            if (v193)
            {
              v69 = v20;
            }

            else
            {
              v68 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
              v69 = v19;
            }

            *v70.i64 = MEMORY[0x23EE8FF80](v67, *(v64 + *v68), v185);
            v71 = *(v65 + *v69);
            v75 = vaddq_f32(v74, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v70, -0.5 * v71.f32[0]), v72, vmuls_lane_f32(-0.5, *v71.f32, 1)), v73, vmuls_lane_f32(-0.5, v71, 2)));
            v76 = vaddq_f32(v74, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v70, 0.5 * v71.f32[0]), v72, vmuls_lane_f32(0.5, *v71.f32, 1)), v73, vmuls_lane_f32(0.5, v71, 2)));
            v194 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, v75.f32[0]), v197, *v75.f32, 1), v196, v75, 2), v195, v75, 3);
            v187 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, v76.f32[0]), v197, *v76.f32, 1), v196, v76, 2), v195, v76, 3);
            type metadata accessor for OpeningElement();
            v77 = swift_allocObject();
            v78 = vbsl_s8(vcgt_f32(*v194.f32, v187.n128_u64[0]), v187.n128_u64[0], *v194.f32);
            v79 = vbsl_s8(vcge_f32(v187.n128_u64[0], *v194.f32), v187.n128_u64[0], *v194.f32);
            v80 = vmvn_s8(vcge_f32(v59, v78));
            if (v80.i8[0])
            {
              if (v80.i8[4])
              {
                v81 = 0;
              }

              else
              {
                v81 = 4;
              }
            }

            else
            {
              if (v80.i8[4])
              {
                if (v60 > v79.f32[0])
                {
                  v81 = 1;
                  if (v61 <= v79.f32[1])
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_64;
                }

                v81 = 1;
LABEL_82:
                v81 |= 2u;
                goto LABEL_83;
              }

              v81 = 5;
            }

            if (v60 <= v79.f32[0])
            {
              goto LABEL_82;
            }

LABEL_83:
            if (v61 <= v79.f32[1])
            {
LABEL_84:
              v81 |= 8u;
            }

LABEL_64:
            v62 = vminnm_f32(vmaxnm_f32(v78, v58), *&v186);
            v63 = vminnm_f32(vmaxnm_f32(v79, v58), *&v186);
            *(v77 + 16) = v62;
            *(v77 + 24) = __PAIR64__(v62.u32[1], v63.u32[0]);
            v62.i32[1] = v63.i32[1];
            v57 = (v57 + 1);
            *(v77 + 32) = v63;
            *(v77 + 40) = v62;
            *(v77 + 48) = v81;
            swift_unknownObjectRelease();
            sub_23AA0D944();
            sub_23AA0D974();
            sub_23AA0D984();
            sub_23AA0D954();
            if (v49 == v57)
            {
              goto LABEL_110;
            }
          }
        }

        v82.n128_u64[1] = v192.u64[1];
        v82.n128_u64[0] = vmul_f32(*v192.f32, 0x3F0000003F000000);
        v83 = vneg_f32(v82.n128_u64[0]);
        v84 = vsub_f32(vdup_n_s32(0x3CF5C28Fu), v82.n128_u64[0]);
        v85 = v82.n128_f32[0] + -0.03;
        v185 = v82;
        v86 = v82.n128_f32[1] + -0.03;
        v87 = 32;
        v184 = xmmword_23AA11AF0;
        while (1)
        {
          v90 = *(v186 + v87);
          v91 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
          if ((v193 & 1) == 0)
          {
            v91 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
          }

          v194 = *(v90 + *v91);
          v92 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
          if ((v193 & 1) == 0)
          {
            v92 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
          }

          v187 = *(v90 + *v92);
          if (v193)
          {
            v93 = v20;
          }

          else
          {
            v93 = v19;
          }

          *v95.i64 = MEMORY[0x23EE8FF80](v94, v194, v187, v184);
          v96 = *(v90 + *v93);
          v100 = vaddq_f32(v99, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v95, -0.5 * v96.f32[0]), v97, vmuls_lane_f32(-0.5, *v96.f32, 1)), v98, vmuls_lane_f32(-0.5, v96, 2)));
          v101 = vaddq_f32(v99, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v95, 0.5 * v96.f32[0]), v97, vmuls_lane_f32(0.5, *v96.f32, 1)), v98, vmuls_lane_f32(0.5, v96, 2)));
          v194 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, v100.f32[0]), v197, *v100.f32, 1), v196, v100, 2), v195, v100, 3);
          v187 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, v101.f32[0]), v197, *v101.f32, 1), v196, v101, 2), v195, v101, 3);
          type metadata accessor for OpeningElement();
          v102 = swift_allocObject();
          v103 = vbsl_s8(vcgt_f32(*v194.f32, v187.n128_u64[0]), v187.n128_u64[0], *v194.f32);
          v104 = vbsl_s8(vcge_f32(v187.n128_u64[0], *v194.f32), v187.n128_u64[0], *v194.f32);
          v105 = vmvn_s8(vcge_f32(v84, v103));
          if (v105.i8[0])
          {
            if (v105.i8[4])
            {
              v106 = 0;
            }

            else
            {
              v106 = 4;
            }
          }

          else
          {
            if (v105.i8[4])
            {
              if (v85 > v104.f32[0])
              {
                v106 = 1;
                if (v86 <= v104.f32[1])
                {
                  goto LABEL_109;
                }

                goto LABEL_87;
              }

              v106 = 1;
LABEL_107:
              v106 |= 2u;
              goto LABEL_108;
            }

            v106 = 5;
          }

          if (v85 <= v104.f32[0])
          {
            goto LABEL_107;
          }

LABEL_108:
          if (v86 <= v104.f32[1])
          {
LABEL_109:
            v106 |= 8u;
          }

LABEL_87:
          v88 = vminnm_f32(vmaxnm_f32(v103, v83), *&v185);
          v89 = vminnm_f32(vmaxnm_f32(v104, v83), *&v185);
          *(v102 + 16) = v88;
          *(v102 + 24) = __PAIR64__(v88.u32[1], v89.u32[0]);
          v88.i32[1] = v89.i32[1];
          *(v102 + 32) = v89;
          *(v102 + 40) = v88;
          *(v102 + 48) = v106;

          sub_23AA0D944();
          sub_23AA0D974();
          sub_23AA0D984();
          sub_23AA0D954();
          v87 += 8;
          if (!--v49)
          {
LABEL_110:

            v49 = v202[0];
            goto LABEL_153;
          }
        }
      }

LABEL_152:

      v49 = MEMORY[0x277D84F90];
LABEL_153:
      v200 = v49;
      v117 = v49 & 0xFFFFFFFFFFFFFF8;
      v40 = v49 >> 62;
      if (v49 >> 62)
      {
        goto LABEL_245;
      }

      v118 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_155:
      v47 = 0;
      while (1)
      {
        if (v118 == v47)
        {
          if (v40)
          {
            v47 = sub_23AA0D7F4();
          }

          else
          {
            v47 = *(v117 + 16);
          }

          goto LABEL_175;
        }

        if ((v49 & 0xC000000000000001) != 0)
        {
          v119 = MEMORY[0x23EE90360](v47, v49);
        }

        else
        {
          if (v47 >= *(v117 + 16))
          {
            goto LABEL_238;
          }
        }

        v120 = *(v119 + 16);
        v121 = *(v119 + 32);

        v122 = vceq_f32(v120, v121);
        v123 = v47 + 1;
        v124 = __OFADD__(v47, 1);
        if ((v122.i8[0] | v122.i8[4]))
        {
          break;
        }

        ++v47;
        if (v124)
        {
          goto LABEL_239;
        }
      }

      if (v124)
      {
        goto LABEL_262;
      }

      if (v40)
      {
        if (v123 != sub_23AA0D7F4())
        {
LABEL_203:
          v161 = v47 + 5;
          do
          {
            v162 = v161 - 4;
            v117 = v49 & 0xC000000000000001;
            if ((v49 & 0xC000000000000001) != 0)
            {
              v163 = MEMORY[0x23EE90360](v161 - 4, v49);
            }

            else
            {
              if ((v162 & 0x8000000000000000) != 0)
              {
                goto LABEL_240;
              }

              if (v162 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_241;
              }
            }

            v164 = *(v163 + 16);
            v165 = *(v163 + 32);

            v166 = vceq_f32(v164, v165);
            if (((v166.i32[0] | v166.i32[1]) & 1) == 0)
            {
              if (v162 != v47)
              {
                if (v117)
                {
                  v117 = MEMORY[0x23EE90360](v47, v49);
                  v40 = MEMORY[0x23EE90360](v161 - 4, v49);
                }

                else
                {
                  if ((v47 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_255;
                  }

                  v167 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v47 >= v167)
                  {
                    goto LABEL_256;
                  }

                  if (v162 >= v167)
                  {
                    goto LABEL_257;
                  }

                  v117 = *(v49 + 8 * v47 + 32);
                  v40 = *(v49 + 8 * v161);
                }

                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v49 & 0x8000000000000000) != 0 || (v49 & 0x4000000000000000) != 0)
                {
                  v49 = sub_23A97E578();
                  v20 = ((v49 >> 62) & 1);
                }

                else
                {
                  v20 = 0;
                }

                v168 = v49 & 0xFFFFFFFFFFFFFF8;
                *((v49 & 0xFFFFFFFFFFFFFF8) + 8 * v47 + 0x20) = v40;

                if ((v49 & 0x8000000000000000) != 0 || v20)
                {
                  v49 = sub_23A97E578();
                  v168 = v49 & 0xFFFFFFFFFFFFFF8;
                  if ((v162 & 0x8000000000000000) != 0)
                  {
LABEL_235:
                    __break(1u);
LABEL_236:
                    __break(1u);
LABEL_237:
                    __break(1u);
LABEL_238:
                    __break(1u);
LABEL_239:
                    __break(1u);
LABEL_240:
                    __break(1u);
LABEL_241:
                    __break(1u);
LABEL_242:
                    __break(1u);
LABEL_243:
                    __break(1u);
LABEL_244:
                    __break(1u);
LABEL_245:
                    v118 = sub_23AA0D7F4();
                    goto LABEL_155;
                  }
                }

                else if ((v162 & 0x8000000000000000) != 0)
                {
                  goto LABEL_235;
                }

                if (v162 >= *(v168 + 16))
                {
                  goto LABEL_244;
                }

                *(v168 + 8 * v161) = v117;

                v200 = v49;
              }

              v114 = __OFADD__(v47++, 1);
              if (v114)
              {
                goto LABEL_243;
              }
            }

            v114 = __OFADD__(v162, 1);
            v169 = v161 - 3;
            if (v114)
            {
              goto LABEL_242;
            }

            if (v49 >> 62)
            {
              v170 = sub_23AA0D7F4();
            }

            else
            {
              v170 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v161;
          }

          while (v169 != v170);
        }
      }

      else if (v123 != *(v117 + 16))
      {
        goto LABEL_203;
      }

LABEL_175:
      if (v49 >> 62)
      {
        v125 = sub_23AA0D7F4();
        if (v125 >= v47)
        {
LABEL_177:
          v126 = sub_23A945F68(v47, v125);
          MEMORY[0x28223BE20](v126);
          *(&v174 - 112) = v179;
          v127 = v197;
          *(&v174 - 6) = v198;
          *(&v174 - 5) = v127;
          v128 = v195;
          *(&v174 - 4) = v196;
          *(&v174 - 3) = v128;
          *&v172 = v18;
          v173 = v192;
          v47 = 0;
          sub_23A965F9C(sub_23A9827B4, v192, (&v174 - 16), v180);
          v130 = v129;

          v199 = v130;
          if (!(v130 >> 62))
          {
            v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v131 <= 0x19)
            {
              goto LABEL_181;
            }

            v114 = __OFSUB__(v131, 25);
            v132 = v131 - 25;
            if (!v114)
            {
              goto LABEL_180;
            }

            goto LABEL_251;
          }

LABEL_248:
          if (sub_23AA0D7F4() <= 25)
          {
LABEL_181:
            v40 = v201;
            v184.n128_u64[0] = v47;
            if (!(v201 >> 62))
            {
              v187.n128_u64[0] = v201 & 0xFFFFFFFFFFFFFF8;
              v117 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_183;
            }

LABEL_252:
            v187.n128_u64[0] = v40 & 0xFFFFFFFFFFFFFF8;
            v117 = sub_23AA0D7F4();
LABEL_183:
            v20 = (v40 & 0xC000000000000001);

            v133 = 0;
            *&v185 = MEMORY[0x277D84F90];
            v186 = xmmword_23AA11AF0;
            while (v117 != v133)
            {
              if (v20)
              {
                v134 = v40;
                v40 = MEMORY[0x23EE90360](v133, v40);
                v49 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
                v18 = (v133 + 1);
                if (__OFADD__(v133, 1))
                {
                  goto LABEL_236;
                }
              }

              else
              {
                v49 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
                if (v133 >= *(v187.n128_u64[0] + 16))
                {
                  goto LABEL_237;
                }

                v134 = v40;
                v40 = *(v40 + 8 * v133 + 32);

                v18 = (v133 + 1);
                if (__OFADD__(v133, 1))
                {
                  goto LABEL_236;
                }
              }

              v135 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
              if ((v193 & 1) == 0)
              {
                v135 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
              }

              v136 = *(v40 + *v135);
              v137 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
              if (v193)
              {
                v49 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
              }

              else
              {
                v137 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
              }

              *v138.i64 = MEMORY[0x23EE8FF80](v136, *(v40 + *v137), v186);
              v198 = v138;
              v197 = v139;
              v196 = v140;
              v195 = v141;
              v194 = *(v40 + *v49);
              v142 = sub_23A901C30(*(v40 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category));
              sub_23A902044(v142, v202, v194, v198, v197, v196, v195, v192, v188, v189, v190, v191);
              v144 = v202[0];
              v143 = v202[1];
              v146 = v202[2];
              v145 = v202[3];

              ++v133;
              v40 = v134;
              if ((v203 & 1) == 0)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  *&v185 = sub_23A938D78(0, *(v185 + 16) + 1, 1, v185);
                }

                v148 = *(v185 + 16);
                v147 = *(v185 + 24);
                if (v148 >= v147 >> 1)
                {
                  *&v185 = sub_23A938D78((v147 > 1), v148 + 1, 1, v185);
                }

                v149 = v185;
                *(v185 + 16) = v148 + 1;
                v150 = (v149 + 32 * v148);
                v150[4] = v144;
                v150[5] = v143;
                v150[6] = v146;
                v150[7] = v145;
                v133 = v18;
                v40 = v134;
              }
            }

            v151 = v182;
            v152 = v176;
            sub_23A8D5194(v182, v176, &qword_27DFAEB38, &unk_23AA11B60);
            v153 = v200;
            v198.i64[0] = v199;
            v154 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
            v155 = v181;
            swift_beginAccess();
            v156 = v177;
            sub_23A8D5194(v155 + v154, v177, &unk_27DFAF020, &unk_23AA12300);
            v157 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
            swift_beginAccess();
            v158 = v155 + v157;
            v159 = v178;
            sub_23A8D5194(v158, v178, &unk_27DFAF020, &unk_23AA12300);
            type metadata accessor for ScanEntityMeshModel(0);
            v160 = swift_allocObject();
            v160[1] = v192;
            sub_23A930208(v152, v160 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curve, &qword_27DFAEB38, &unk_23AA11B60);
            *(v160->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_polygonCorners) = v175;
            *(v160->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childOpenings) = v183;
            *(v160->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjects) = v40;
            *(v160->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_straightOpeningElements) = v153;
            *(v160->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curvedOpeningElements) = v198.i64[0];
            *(v160->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjectElements) = v185;
            sub_23A930208(v156, v160 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_leftStrut, &unk_27DFAF020, &unk_23AA12300);
            sub_23A930208(v159, v160 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_rightStrut, &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v151, &qword_27DFAEB38, &unk_23AA11B60);
            return;
          }

          v171 = sub_23AA0D7F4();
          v114 = __OFSUB__(v171, 25);
          v132 = v171 - 25;
          if (!v114)
          {
LABEL_180:
            sub_23A9804A8(v132);
            goto LABEL_181;
          }

LABEL_251:
          __break(1u);
          goto LABEL_252;
        }
      }

      else
      {
        v125 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v125 >= v47)
        {
          goto LABEL_177;
        }
      }

      __break(1u);
      goto LABEL_248;
    }

LABEL_151:
    v49 = sub_23AA0D7F4();
    if (v49)
    {
      goto LABEL_61;
    }

    goto LABEL_152;
  }

  v49 = v48;
  v47 = v48 & 0xFFFFFFFFFFFFFF8;
  v40 = v48 >> 62;
  if (v48 >> 62)
  {
    goto LABEL_259;
  }

  v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_35:
  v42 = 0;
  v19 = (v49 & 0xC000000000000001);
  while (1)
  {
    if (v50 == v42)
    {
      if (v40)
      {
        v42 = sub_23AA0D7F4();
      }

      else
      {
        v42 = *(v47 + 16);
      }

      v19 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
      v40 = v186;
      goto LABEL_56;
    }

    if (v19)
    {
      v51 = MEMORY[0x23EE90360](v42, v49);
    }

    else
    {
      if (v42 >= *(v47 + 16))
      {
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }
    }

    v52 = *(v51 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category);

    v53 = __OFADD__(v42, 1);
    if (v52 == 10)
    {
      break;
    }

    ++v42;
    v20 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
    if (v53)
    {
      goto LABEL_146;
    }
  }

  v20 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
  if (v53)
  {
    goto LABEL_266;
  }

  v19 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  if (v40)
  {
    v54 = sub_23AA0D7F4();
  }

  else
  {
    v54 = *(v47 + 16);
  }

  v40 = v186;
  if (v42 + 1 != v54)
  {
    v47 = v42 + 5;
    do
    {
      v107 = v47 - 4;
      v40 = v49 & 0xC000000000000001;
      if ((v49 & 0xC000000000000001) != 0)
      {
        v108 = MEMORY[0x23EE90360](v47 - 4, v49);
      }

      else
      {
        if ((v107 & 0x8000000000000000) != 0)
        {
          goto LABEL_147;
        }

        if (v107 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_148;
        }
      }

      v109 = *(v108 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category);

      if (v109 == 10)
      {
        v19 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
        v40 = v186;
      }

      else
      {
        if (v107 == v42)
        {
          v19 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
        }

        else
        {
          if (v40)
          {
            v40 = MEMORY[0x23EE90360](v42, v49);
            v110 = MEMORY[0x23EE90360](v47 - 4, v49);
          }

          else
          {
            if (v42 < 0)
            {
              goto LABEL_263;
            }

            v111 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v42 >= v111)
            {
              goto LABEL_264;
            }

            if (v107 >= v111)
            {
              goto LABEL_265;
            }

            v40 = *(v49 + 8 * v42 + 32);
            v110 = *(v49 + 8 * v47);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v49 & 0x8000000000000000) != 0 || (v49 & 0x4000000000000000) != 0)
          {
            v49 = sub_23A97E578();
            v112 = (v49 >> 62) & 1;
          }

          else
          {
            LODWORD(v112) = 0;
          }

          v113 = v49 & 0xFFFFFFFFFFFFFF8;
          *((v49 & 0xFFFFFFFFFFFFFF8) + 8 * v42 + 0x20) = v110;

          if ((v49 & 0x8000000000000000) != 0 || v112)
          {
            v49 = sub_23A97E578();
            v113 = v49 & 0xFFFFFFFFFFFFFF8;
          }

          v19 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
          v20 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
          if ((v107 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_254:
            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
LABEL_258:
            __break(1u);
LABEL_259:
            v50 = sub_23AA0D7F4();
            goto LABEL_35;
          }

          if (v107 >= *(v113 + 16))
          {
            goto LABEL_254;
          }

          *(v113 + 8 * v47) = v40;

          v201 = v49;
        }

        v114 = __OFADD__(v42++, 1);
        v40 = v186;
        if (v114)
        {
          goto LABEL_150;
        }
      }

      v114 = __OFADD__(v107, 1);
      v115 = v47 - 3;
      if (v114)
      {
        goto LABEL_149;
      }

      if (v49 >> 62)
      {
        v116 = sub_23AA0D7F4();
      }

      else
      {
        v116 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v47;
    }

    while (v115 != v116);
  }

LABEL_56:
  if (v49 >> 62)
  {
    v55 = sub_23AA0D7F4();
    if (v55 < v42)
    {
      goto LABEL_261;
    }

LABEL_58:
    sub_23A945F38(v42, v55);
    v42 = MEMORY[0x277D84F90];
    goto LABEL_59;
  }

  v55 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v55 >= v42)
  {
    goto LABEL_58;
  }

LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
}