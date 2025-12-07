unint64_t sub_1E1798()
{
  result = qword_3250A0;
  if (!qword_3250A0)
  {
    sub_2F9C(qword_3250A8, &unk_287698);
    sub_2F9C(&qword_31AB88, &qword_287650);
    sub_93DBC();
    swift_getOpaqueTypeConformance2();
    sub_18B4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3250A0);
  }

  return result;
}

uint64_t View.environment<A>(_:binding:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v23 = a2;
  v8 = *(*a1 + class metadata base offset for WritableKeyPath + 8);
  v9 = sub_263380();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v14 = type metadata accessor for EnvironmentBindingViewModifier(0, v8, v8, v13);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - v17;
  (*(v10 + 16))(v12, v23, v9, v16);
  v25 = a3;
  v26 = v8;
  v27 = a4;
  KeyPath = swift_getKeyPath();
  sub_1E1A7C(a1, v12, KeyPath, v20, v18);

  sub_262E30();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1E1A7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = *a1;
  v9 = *a3;
  *a5 = a1;
  v10 = type metadata accessor for EnvironmentBindingViewModifier(0, *(v9 + class metadata base offset for KeyPath), *(v8 + class metadata base offset for WritableKeyPath + 8), a4);
  v11 = *(v10 + 36);
  v12 = sub_263380();
  result = (*(*(v12 - 8) + 32))(&a5[v11], a2, v12);
  *&a5[*(v10 + 40)] = a3;
  return result;
}

uint64_t sub_1E1B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v23 = *(a2 + 24);
  v26 = *(v23 - 8);
  __chkstk_darwin(a1);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v24 = *(v6 - 8);
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_2620B0();
  v22[1] = sub_262410();
  v10 = sub_261730();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v22 - v15;
  v22[0] = *v3;
  sub_263380();
  sub_263320();
  v17 = v25;
  swift_getAtKeyPath();
  (*(v24 + 8))(v9, v6);
  WitnessTable = swift_getWitnessTable();
  sub_262A90();
  (*(v26 + 8))(v17, v23);
  v19 = swift_getWitnessTable();
  v29 = WitnessTable;
  v30 = v19;
  swift_getWitnessTable();
  sub_1609C();
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_1609C();
  return (v20)(v16, v10);
}

uint64_t View.environment<A, B>(_:binding:_:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v22[2] = a5;
  v22[1] = a4;
  v8 = *a1;
  v9 = *(*a3 + class metadata base offset for KeyPath);
  v10 = sub_263380();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - v12;
  v15 = type metadata accessor for EnvironmentBindingViewModifier(0, v9, *(v8 + class metadata base offset for WritableKeyPath + 8), v14);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v22 - v18;
  (*(v11 + 16))(v13, a2, v10, v17);
  sub_1E1A7C(a1, v13, a3, v20, v19);

  sub_262E30();
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1E2114(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EnvironmentBindingViewModifier(255, a1[1], a1[2], a4);
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E21A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EnvironmentBindingViewModifier(255, a1[1], a1[1], a4);
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E2240(uint64_t a1)
{
  sub_261C90();
  result = sub_264CB0();
  if (v2 <= 0x3F)
  {
    result = sub_263380();
    if (v3 <= 0x3F)
    {
      result = sub_265150();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E2308(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-9 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((a1 + v9 + 8) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v19 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void *sub_1E2490(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((-2 - ((((-9 - v8) | v8) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      else
      {
        v19 = *(v5 + 56);
        v20 = (v8 + ((((result + (v8 | 7) + 8) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

        return v19(v20);
      }

      return result;
    }
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1E26E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EnvironmentBindingViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_2620B0();
  sub_262410();
  sub_261730();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

double sub_1E27DC(uint64_t a1, unsigned __int8 a2)
{
  sub_264500();

  return result;
}

double sub_1E290C(uint64_t a1, unsigned __int8 a2)
{
  sub_264500();

  return result;
}

double sub_1E2A48(uint64_t a1, unsigned __int8 a2)
{
  sub_264500();

  return result;
}

double sub_1E2BA0(uint64_t a1, unsigned __int8 a2)
{
  sub_264500();

  return result;
}

Swift::Int sub_1E2CE0(uint64_t a1, unsigned __int8 a2)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E2E34(uint64_t a1, unsigned __int8 a2)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E2F88(uint64_t a1, unsigned __int8 a2)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E3098(uint64_t a1, unsigned __int8 a2)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E31D8(uint64_t a1, unsigned __int8 a2)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E3328(uint64_t a1, char a2)
{
  sub_265050();
  sub_265070(qword_287948[a2]);
  return sub_265080();
}

Swift::Int sub_1E3378(uint64_t a1, unsigned __int8 a2)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E346C(uint64_t a1, unsigned __int8 a2)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_1E3578(uint64_t a1, unsigned __int8 a2)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t SingleBookLockupModel.init(preheader:title:subtitle:ratingInfo:reviewDescription:assetInfo:signature:userLightColorText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, char a14)
{
  v15 = *(a7 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = *a7;
  *(a9 + 64) = v15;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  result = sub_F7CC(a11, a9 + 88);
  *(a9 + 128) = a12;
  *(a9 + 136) = a13;
  *(a9 + 144) = a14;
  return result;
}

unint64_t sub_1E372C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E43FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E375C(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0xE900000000000072;
  v5 = 0x6564616568657270;
  v6 = 0x727574616E676973;
  if (v3 != 6)
  {
    v6 = 0xD000000000000011;
    v2 = 0x800000000028FE80;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656372756F736572;
  if (v3 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000000028FE60;
  }

  if (*v1 > 5u)
  {
    v7 = v2;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746974627573;
  if (v3 != 2)
  {
    v10 = 0x6E49676E69746172;
    v9 = 0xEA00000000006F66;
  }

  if (*v1)
  {
    v5 = 0x656C746974;
    v4 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v5 = v10;
    v4 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_1E3868()
{
  v1 = *v0;
  v2 = 0x6564616568657270;
  v3 = 0x727574616E676973;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x656372756F736572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 2)
  {
    v5 = 0x6E49676E69746172;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

unint64_t sub_1E3970@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E43FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3998(uint64_t a1)
{
  v2 = sub_1E4058();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1E39D4(uint64_t a1)
{
  v2 = sub_1E4058();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleBookLockupModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_325130, &unk_287740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = a1[3];
  v63 = a1;
  sub_2E18(a1, v9);
  sub_1E4058();
  sub_265120();
  if (!v2)
  {
    v47 = a2;
    v48 = v6;
    sub_2EF0(&qword_316DD0, &qword_2692C0);
    LOBYTE(v51) = 0;
    sub_1E40AC();
    sub_264DF0();
    v10 = v5;
    v11 = v53;
    v12 = v54;
    LOBYTE(v53) = 1;
    v43 = sub_264DC0();
    v44 = v11;
    v45 = v12;
    v46 = v13;
    LOBYTE(v53) = 2;
    v41 = sub_264DC0();
    v42 = v14;
    LOBYTE(v51) = 5;
    sub_264DF0();
    v15 = v45;
    v16 = v53;
    v40 = v54;
    LOBYTE(v51) = 6;
    sub_264DF0();
    v39 = v16;
    v17 = v53;
    v18 = v54;
    LOBYTE(v53) = 7;
    v19 = sub_264DD0();
    v20 = v48;
    v37 = v19;
    v38 = v18;
    sub_2EF0(&qword_317FB8, &unk_26AA50);
    LOBYTE(v51) = 4;
    sub_43FB8();
    sub_264DF0();
    v36 = v17;
    v22 = v41;
    v23 = v53;
    sub_260810();
    if (v52)
    {
      sub_F7CC(&v51, &v53);
      sub_30CC(&v53, v60 + 8);
      *&v55 = v44;
      *(&v55 + 1) = v15;
      *&v56 = v43;
      *(&v56 + 1) = v46;
      *&v57 = v22;
      *(&v57 + 1) = v42;
      sub_30CC(&v53, &v51);
      AssetMetadataRatingInfo.init(assetInfo:)(&v51, &v49);

      sub_3080(&v53);
      (*(v20 + 8))(v8, v10);
      v58 = v49;
      LOBYTE(v59) = v50;
      *(&v59 + 1) = v39;
      *&v60[0] = v40;
      *&v61 = v36;
      *(&v61 + 1) = v38;
      v24 = v37 & 1;
      v62 = v37 & 1;
      v25 = v60[2];
      v26 = v47;
      *(v47 + 96) = v60[1];
      *(v26 + 112) = v25;
      *(v26 + 128) = v61;
      *(v26 + 144) = v24;
      v27 = v58;
      *(v26 + 32) = v57;
      *(v26 + 48) = v27;
      v28 = v60[0];
      *(v26 + 64) = v59;
      *(v26 + 80) = v28;
      v29 = v56;
      *v26 = v55;
      *(v26 + 16) = v29;
    }

    else
    {

      sub_1E4128(&v51);
      v30 = v20;
      v31 = sub_264C10();
      swift_allocError();
      v33 = v32;
      v47 = sub_264D60();
      sub_4401C();
      swift_allocError();
      *v34 = 0;
      sub_264BF0();
      (*(*(v31 - 8) + 104))(v33, enum case for DecodingError.dataCorrupted(_:), v31);
      swift_willThrow();

      (*(v30 + 8))(v8, v10);
    }
  }

  return sub_3080(v63);
}

unint64_t sub_1E4058()
{
  result = qword_325138;
  if (!qword_325138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325138);
  }

  return result;
}

unint64_t sub_1E40AC()
{
  result = qword_325140;
  if (!qword_325140)
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325140);
  }

  return result;
}

uint64_t sub_1E4128(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316D40, &unk_268FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4190(uint64_t a1)
{
  result = sub_1E41B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E41B8()
{
  result = qword_325148;
  if (!qword_325148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325148);
  }

  return result;
}

uint64_t sub_1E4224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E426C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E42F8()
{
  result = qword_325150;
  if (!qword_325150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325150);
  }

  return result;
}

unint64_t sub_1E4350()
{
  result = qword_325158;
  if (!qword_325158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325158);
  }

  return result;
}

unint64_t sub_1E43A8()
{
  result = qword_325160;
  if (!qword_325160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325160);
  }

  return result;
}

unint64_t sub_1E43FC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301808;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t BuyButtonViewModelBase.init<>(buttonType:longCaptionAlignment:assetInfo:)@<X0>(__int16 *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v45 = sub_262730();
  v8 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BuyButtonExternals(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v46 = *a2;
  sub_30CC(a3, v49);
  *v14 = swift_getKeyPath();
  v43 = sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v16 = (v14 + v12[7]);
  type metadata accessor for ProfileRestrictions(0);
  sub_1E8F54(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v16 = sub_261900();
  v16[1] = v17;
  v18 = v12[8];
  KeyPath = swift_getKeyPath();
  v42 = v14;
  *(v14 + v18) = KeyPath;
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v20 = v14 + v12[9];
  v21 = swift_getKeyPath();
  v50 = 0;
  *v20 = v21;
  v20[66] = 0;
  v41 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  *(a4 + *(v41 + 36)) = v15;
  v22 = (v15 >> 8) & 1;
  if (v15 < 0)
  {
    v22 = 2;
  }

  v39 = v22;
  v40 = (v15 & 0x8080) == 128;
  sub_7F460(v15, v48);
  v23 = type metadata accessor for ButtonViewModel(0);
  sub_260BC0();
  type metadata accessor for ButtonViewModel.Content(0);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  v38 = v48[0];
  v37 = v48[1];
  swift_storeEnumTagMultiPayload();
  v24 = a4 + v23[13];
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  swift_storeEnumTagMultiPayload();
  v47 = 0x403C000000000000;
  v25 = enum case for Font.TextStyle.subheadline(_:);
  v26 = *(v8 + 104);
  v27 = v45;
  v26(v10, enum case for Font.TextStyle.subheadline(_:), v45);
  sub_40130();
  sub_2612E0();
  v47 = 0x4008000000000000;
  v26(v10, v25, v27);
  sub_2612E0();
  sub_3080(v44);
  v28 = v23[6];
  *(a4 + v28) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v29 = v23[14];
  v30 = sub_260BD0();
  (*(*(v30 - 8) + 56))(a4 + v29, 1, 1, v30);
  v31 = v40;
  *(a4 + v23[7]) = v39;
  *(a4 + v23[8]) = 0;
  *(a4 + v23[9]) = v31;
  v32 = (a4 + v23[10]);
  v33 = v37;
  *v32 = v38;
  v32[1] = v33;
  *(a4 + v23[12]) = 1;
  v34 = v41;
  *(a4 + *(v41 + 40)) = v46;
  v35 = v34;
  sub_F7CC(v49, a4 + *(v34 + 44));
  return sub_1E8DE8(v42, a4 + *(v35 + 48), type metadata accessor for BuyButtonExternals);
}

uint64_t type metadata accessor for BuyButtonExternals(uint64_t a1)
{
  result = qword_3251F0;
  if (!qword_3251F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BuyButtonViewModelBase.accessibilityHint.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_264010();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_263FA0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ButtonViewModel(0);
  if (*(v2 + *(v13 + 48)) == 1)
  {
    v36 = v10;
    v37 = v6;
    __chkstk_darwin(v13);
    *(&v35 - 1) = *(a1 + 16);
    KeyPath = swift_getKeyPath();
    swift_getWitnessTable();
    ViewModelWithExternals.subscript.getter(KeyPath);

    v43 = v38;
    v44 = v39;
    v45 = v40;
    v46 = v41;
    v47 = v42;
    if (*(&v38 + 1) && (v15 = v44, sub_8E80(&v43, &qword_317F48, &qword_26A9A0), v15 == 5))
    {
      v16 = (v2 + *(a1 + 44));
      sub_2E18(v16, v16[3]);
      v17 = sub_2609C0();
      if (v17 == 2 || (v17 & 1) == 0)
      {
        sub_2E18(v16, v16[3]);
        v23 = sub_260700();
        v24 = v36;
        if (v23 && (v25 = v23, v26 = [v23 priceFormatted], v25, v26))
        {
          v27 = sub_264460();
          v29 = v28;

          v35 = "ow store details and buy";
          sub_2EF0(&qword_31ACF0, &unk_26FF60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_267D30;
          *(inited + 32) = 0x6563697270;
          v31 = inited + 32;
          *(inited + 40) = 0xE500000000000000;
          *(inited + 48) = v27;
          *(inited + 56) = v29;
          sub_F13C(inited);
          swift_setDeallocating();
          sub_8E80(v31, &qword_31ACF8, &qword_273580);
          sub_263F90();
          v32 = v37;
          (*(v37 + 104))(v8, enum case for LocalizerLookupStrategy.default(_:), v5);
          sub_260B80();

          (*(v32 + 8))(v8, v5);
        }

        else
        {
          sub_263F90();
          v33 = v37;
          (*(v37 + 104))(v8, enum case for LocalizerLookupStrategy.default(_:), v5);
          sub_260B80();
          (*(v33 + 8))(v8, v5);
        }

        (*(v24 + 8))(v12, v9);
      }

      else
      {
        sub_263F90();
        v18 = v37;
        (*(v37 + 104))(v8, enum case for LocalizerLookupStrategy.default(_:), v5);
        sub_260B80();
        (*(v18 + 8))(v8, v5);
        (*(v36 + 8))(v12, v9);
      }

      v34 = sub_260BD0();
      return (*(*(v34 - 8) + 56))(a2, 0, 1, v34);
    }

    else
    {
      v22 = sub_260BD0();
      return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    }
  }

  else
  {
    v19 = sub_260BD0();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

uint64_t BuyButtonViewModelBase.caption.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  __chkstk_darwin(v4 - 8);
  v38 = &v36 - v5;
  v6 = sub_2601B0();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v36 - v9;
  v10 = sub_264010();
  v42 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_263FA0();
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v2 + *(a1 + 44));
  sub_2E18(v16, v16[3]);
  v17 = sub_260870();
  if (v17)
  {
    __chkstk_darwin(v17);
    *(&v36 - 1) = *(a1 + 16);
    KeyPath = swift_getKeyPath();
    swift_getWitnessTable();
    ViewModelWithExternals.subscript.getter(KeyPath);

    v19 = v45;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FF0();

    if ((v44 & 1) == 0)
    {
      sub_263F90();
      v28 = v42;
      (*(v42 + 104))(v12, enum case for LocalizerLookupStrategy.default(_:), v10);
      v27 = v43;
      sub_260B80();
      (*(v28 + 8))(v12, v10);
      (*(v41 + 8))(v15, v13);
LABEL_10:
      v26 = 0;
      goto LABEL_11;
    }
  }

  sub_2E18(v16, v16[3]);
  v20 = sub_260700();
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = v20;
  v22 = [v20 isPreorder];

  if (!v22)
  {
    goto LABEL_7;
  }

  sub_2E18(v16, v16[3]);
  v23 = v38;
  sub_2608D0();
  v25 = v39;
  v24 = v40;
  if ((*(v39 + 48))(v23, 1, v40) != 1)
  {
    v29 = *(v25 + 32);
    v30 = v37;
    v29(v37, v23, v24);
    v31 = v36;
    (*(v25 + 16))(v36, v30, v24);
    v32 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v33 = swift_allocObject();
    v29((v33 + v32), v31, v24);
    v27 = v43;
    sub_260B70();

    (*(v25 + 8))(v30, v24);
    goto LABEL_10;
  }

  sub_8E80(v23, &qword_31A158, &qword_26E3F8);
LABEL_7:
  v26 = 1;
  v27 = v43;
LABEL_11:
  v34 = sub_260BD0();
  return (*(*(v34 - 8) + 56))(v27, v26, 1, v34);
}

uint64_t BuyButtonExternals.colors.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1E8DE8(v10, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

id BuyButtonExternals.profileRestrictions.getter()
{
  v1 = *(v0 + *(type metadata accessor for BuyButtonExternals(0) + 20));
  if (v1)
  {

    return v1;
  }

  else
  {
    type metadata accessor for ProfileRestrictions(0);
    sub_1E8F54(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
    result = sub_2618F0();
    __break(1u);
  }

  return result;
}

uint64_t BuyButtonExternals.$profileRestrictions.getter()
{
  v1 = (v0 + *(type metadata accessor for BuyButtonExternals(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = type metadata accessor for ProfileRestrictions(0);
  v5 = sub_1E8F54(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);

  return EnvironmentObject.projectedValue.getter(v2, v3, v4, v5);
}

uint64_t BuyButtonExternals.referenceId.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_317E08, &qword_26A550);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BuyButtonExternals(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_22148(v9, a1, &qword_31A0C8, &qword_26E2C0);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t BuyButtonExternals.assetState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = (v1 + *(type metadata accessor for BuyButtonExternals(0) + 28));
  *&v21[15] = *(v7 + 63);
  v8 = v7[3];
  v20[2] = v7[2];
  *v21 = v8;
  v9 = v7[1];
  v20[0] = *v7;
  v20[1] = v9;
  if (v21[18])
  {
    v10 = v7[2];
    v11 = v7[3];
    *(a1 + 32) = v10;
    *(a1 + 48) = v11;
    *(a1 + 64) = *(v7 + 32);
    v13 = *v7;
    v12 = v7[1];
    *a1 = *v7;
    *(a1 + 16) = v12;
    v18[2] = v10;
    v19[0] = v11;
    *(v19 + 15) = *(v7 + 63);
    v18[0] = v13;
    v18[1] = v12;
    return sub_8198(v18, v17, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v15 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v20, &qword_317F40, &qword_26E9D0);
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t BuyButtonExternals.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for BuyButtonExternals(0);
  v3 = (a1 + v2[5]);
  type metadata accessor for ProfileRestrictions(0);
  sub_1E8F54(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v3 = sub_261900();
  v3[1] = v4;
  v5 = v2[6];
  *(a1 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[7];
  result = swift_getKeyPath();
  *v6 = result;
  v6[66] = 0;
  return result;
}

id sub_1E5CD0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  if (v2)
  {

    return v2;
  }

  else
  {
    type metadata accessor for ProfileRestrictions(0);
    sub_1E8F54(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
    result = sub_2618F0();
    __break(1u);
  }

  return result;
}

void sub_1E5E0C(uint64_t a1@<X8>)
{
  v2 = *v1;
  if ((v2 & 0x80000000) == 0)
  {
    if ((v2 & 0x80) != 0)
    {
      v4 = (v2 & 1) == 0;
      v3 = 2;
      if (v4)
      {
        v3 = 0;
      }

      goto LABEL_13;
    }

    if (*v1 != 1)
    {
      if (!*v1)
      {
LABEL_5:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return;
      }

      goto LABEL_8;
    }

LABEL_9:
    v3 = 1;
    goto LABEL_13;
  }

  if (*v1 == 1)
  {
    goto LABEL_9;
  }

  if (!*v1)
  {
    goto LABEL_5;
  }

LABEL_8:
  v3 = 2;
LABEL_13:
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

Swift::Void __swiftcall BuyButtonViewModelBase.update()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for ButtonViewModel.ActionKind(0);
  __chkstk_darwin(v4);
  v6 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261180();
  v172 = *(v7 - 8);
  v173 = v7;
  __chkstk_darwin(v7);
  v180 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v9 - 8);
  v179 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v11 - 8);
  v177 = &v169 - v12;
  v13 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v13 - 8);
  v178 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v171 = &v169 - v16;
  __chkstk_darwin(v17);
  v182 = &v169 - v18;
  v19 = sub_264010();
  v189 = *(v19 - 8);
  __chkstk_darwin(v19);
  v187 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_263FA0();
  v190 = *(v21 - 8);
  v191 = v21;
  __chkstk_darwin(v21);
  v192 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v188 = &v169 - v24;
  v199 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v199);
  v181 = (&v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v185 = &v169 - v27;
  __chkstk_darwin(v28);
  v184 = &v169 - v29;
  v195 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v195);
  v196 = (&v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_2EF0(&qword_319AC8, &qword_287AB0);
  __chkstk_darwin(v31 - 8);
  v202 = &v169 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v201 = &v169 - v34;
  __chkstk_darwin(v35);
  v197 = &v169 - v36;
  __chkstk_darwin(v37);
  v212 = &v169 - v38;
  v39 = (v1 + *(v3 + 44));
  sub_2E18(v39, v39[3]);
  sub_260860();
  v40 = sub_2609D0();
  v42 = v41;
  if (v40 == sub_2609D0() && v42 == v43)
  {
    LODWORD(v194) = 1;
  }

  else
  {
    LODWORD(v194) = sub_264F10();
  }

  v193 = v19;
  v207 = v2;

  sub_2E18(v39, v39[3]);
  v44 = sub_260870();
  v203 = v6;
  v204 = v4;
  if (v44)
  {
    __chkstk_darwin(v44);
    v46 = *(v3 + 16);
    v45 = *(v3 + 24);
    *(&v169 - 2) = v46;
    *(&v169 - 1) = v45;
    v213 = v45;
    KeyPath = swift_getKeyPath();
    swift_getWitnessTable();
    v48 = v207;
    ViewModelWithExternals.subscript.getter(KeyPath);

    v49 = v229;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FF0();

    LODWORD(v198) = v224 ^ 1;
    v50 = v212;
  }

  else
  {
    LODWORD(v198) = 0;
    v46 = *(v3 + 16);
    v213 = *(v3 + 24);
    v50 = v212;
    v48 = v207;
  }

  v51 = *(v3 + 36);
  v52 = (*(v48 + v51) & 0x8080) == 128;
  v53 = type metadata accessor for ButtonViewModel(0);
  v183 = v53[9];
  *(v48 + v183) = v52;
  LOWORD(v224) = *(v48 + v51);
  sub_1E5E0C(&v229);
  v54 = v48 + v53[10];
  sub_185B20(*v54, *(v54 + 8), *(v54 + 16), *(v54 + 24));
  v55 = v230;
  *v54 = v229;
  *(v54 + 16) = v55;
  v186 = v54;
  sub_2E18(v39, v39[3]);
  v205 = sub_260700();
  v56 = type metadata accessor for AssetAction(0);
  v200 = *(v56 - 8);
  v210 = *(v200 + 56);
  v211 = v56;
  v206 = v200 + 56;
  v210(v50, 1, 1);
  v208 = v53;
  v57 = v53[14];
  sub_8E80(v48 + v57, &qword_316208, &qword_268BD0);
  v58 = sub_260BD0();
  v59 = *(v58 - 8);
  v175 = *(v59 + 56);
  v176 = v57;
  v174 = v59 + 56;
  v60 = v175(v48 + v57, 1, 1, v58);
  __chkstk_darwin(v60);
  v61 = v213;
  *(&v169 - 2) = v46;
  *(&v169 - 1) = v61;
  v62 = swift_getKeyPath();
  WitnessTable = swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(v62);

  v229 = v224;
  v230 = v225;
  v231 = v226;
  v232 = v227;
  v233 = v228;
  v64 = v3;
  if (*(&v224 + 1))
  {
    v65 = v230;
    v63 = sub_8E80(&v229, &qword_317F48, &qword_26A9A0);
  }

  else
  {
    v65 = 6;
  }

  __chkstk_darwin(v63);
  v66 = v213;
  *(&v169 - 2) = v46;
  *(&v169 - 1) = v66;
  v67 = swift_getKeyPath();
  ViewModelWithExternals.subscript.getter(v67);

  v219 = v214;
  v220 = v215;
  v221 = v216;
  v222 = v217;
  v223 = v218;
  if (*(&v214 + 1))
  {
    v68 = *(&v220 + 1);
    v69 = v221;
    sub_8E80(&v219, &qword_317F48, &qword_26A9A0);
    v70 = v208;
    if (v65 == 4)
    {
LABEL_13:
      v71 = (v48 + v70[11]);
      sub_1E8E9C(v71, type metadata accessor for ButtonViewModel.Content);
      *v71 = 0xD000000000000015;
      v71[1] = 0x80000000002926F0;
      swift_storeEnumTagMultiPayload();
      v72 = v194 & 1;
      v73 = v196;
      *v196 = 0;
      *(v73 + 8) = 0;
      *(v73 + 16) = v72;
      v74 = v205;
      *(v73 + 24) = v205;
LABEL_22:
      swift_storeEnumTagMultiPayload();
      v83 = v74;
      v84 = v46;
      v85 = v197;
      sub_1E793C(v73, v48, v84, v213, v197);
      sub_1E8E9C(v73, type metadata accessor for AssetAction.Kind);
      v86 = v212;
      sub_8E80(v212, &qword_319AC8, &qword_287AB0);
      (v210)(v85, 0, 1, v211);
      sub_22148(v85, v86, &qword_319AC8, &qword_287AB0);
      v87 = v198;
      goto LABEL_54;
    }

    if ((v69 & 1) == 0)
    {
      v82 = *(v208 + 11);
      sub_1E8E9C(v48 + v82, type metadata accessor for ButtonViewModel.Content);
      *(v48 + v82) = v68;
      swift_storeEnumTagMultiPayload();
      v74 = v205;
      v73 = v196;
      *v196 = v205;
      goto LABEL_22;
    }

    if (v68 > 2)
    {
      if (v68 == 3)
      {
        goto LABEL_13;
      }
    }

    else if ((v68 - 1) >= 2)
    {
      v75 = v188;
      sub_263F90();
      sub_263F90();
      v76 = v189;
      v77 = v187;
      v78 = v193;
      (*(v189 + 104))(v187, enum case for LocalizerLookupStrategy.default(_:), v193);
      v79 = v184;
      sub_260B80();
      (*(v76 + 8))(v77, v78);
      v80 = v191;
      v81 = *(v190 + 8);
      v81(v192, v191);
      v81(v75, v80);
      swift_storeEnumTagMultiPayload();
      sub_1E8D80(v79, v48 + v70[11], type metadata accessor for ButtonViewModel.Content);
      v74 = v205;
      v73 = v196;
      *v196 = v205;
      goto LABEL_22;
    }

    if (v65 >= 2)
    {
      if (v65 != 2)
      {
        if (v65 == 3)
        {
          goto LABEL_30;
        }

        goto LABEL_41;
      }

      goto LABEL_38;
    }

LABEL_31:
    WitnessTable = v46;
    v88 = (v189 + 104);
    v89 = (v189 + 8);
    v90 = (v190 + 8);
    if (v194)
    {
      v208 = "Books.Button.Read";
    }

    else
    {
      v208 = "Books.Button.Get";
    }

    v91 = v188;
    sub_263F90();
    v92 = v192;
    sub_263F90();
    v93 = v187;
    v94 = v193;
    (*v88)(v187, enum case for LocalizerLookupStrategy.default(_:), v193);
    v95 = v91;
    v96 = v185;
    sub_260B80();
    (*v89)(v93, v94);
    v97 = *v90;
    v98 = v191;
    (*v90)(v92, v191);
    v97(v95, v98);
    swift_storeEnumTagMultiPayload();
    sub_1E8D80(v96, v48 + v70[11], type metadata accessor for ButtonViewModel.Content);
    v99 = v196;
    swift_storeEnumTagMultiPayload();
    v100 = v197;
    sub_1E793C(v99, v48, WitnessTable, v213, v197);
    sub_1E8E9C(v99, type metadata accessor for AssetAction.Kind);
    v86 = v212;
    sub_8E80(v212, &qword_319AC8, &qword_287AB0);
    (v210)(v100, 0, 1, v211);
    sub_22148(v100, v86, &qword_319AC8, &qword_287AB0);
    v101 = v186;
    v102 = *v186;
    v103 = *(v186 + 8);
    v104 = *(v186 + 16);
    v105 = *(v186 + 24);
    if (*v186 == 2)
    {
      sub_185B20(2uLL, *(v186 + 8), v104, *(v186 + 24));
      sub_185B20(2uLL, 0, 0, 0);
    }

    else
    {
      v106 = *(v186 + 16);
      sub_185734(*v186, *(v186 + 8), v104, *(v186 + 24));
      sub_185B20(v102, v103, v106, v105);
      sub_185B20(2uLL, 0, 0, 0);
      sub_185B20(*v101, *(v101 + 8), *(v101 + 16), *(v101 + 24));
      *v101 = 0u;
      *(v101 + 16) = 0u;
    }

    v74 = v205;
    v87 = v198;
    goto LABEL_54;
  }

  v70 = v208;
  if (v65 > 2)
  {
    if (v65 == 3)
    {
LABEL_30:
      sub_1E8E9C(v48 + v70[11], type metadata accessor for ButtonViewModel.Content);
      swift_storeEnumTagMultiPayload();
      v86 = v212;
      v74 = v205;
      v87 = v198;
      goto LABEL_54;
    }

    if (v65 == 4)
    {
      goto LABEL_13;
    }

LABEL_41:
    sub_2E18(v39, v39[3]);
    v111 = sub_2609C0();
    v170 = v64;
    if (v111 == 2 || (v111 & 1) == 0)
    {
      sub_2E18(v39, v39[3]);
      v114 = sub_260920();
      v113 = v192;
      if (v115)
      {
        v116 = v184;
        v117 = v114;
        v118 = v115;
        sub_260BC0();
        swift_storeEnumTagMultiPayload();
        v119 = v208;
        sub_1E8D80(v116, v48 + *(v208 + 11), type metadata accessor for ButtonViewModel.Content);
        v199 = "Books.Button.Buy";
        sub_2EF0(&qword_31ACF0, &unk_26FF60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_267D30;
        *(inited + 32) = 0x6563697270;
        v121 = inited + 32;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = v117;
        *(inited + 56) = v118;
        v194 = sub_F13C(inited);
        v70 = v119;
        swift_setDeallocating();
        sub_8E80(v121, &qword_31ACF8, &qword_273580);
        v122 = v188;
        sub_263F90();
        v123 = v189;
        v124 = v187;
        (*(v189 + 104))(v187, enum case for LocalizerLookupStrategy.default(_:), v193);
        v125 = v177;
        sub_260B80();

        (*(v123 + 8))(v124, v193);
        (*(v190 + 8))(v122, v191);
        v175(v125, 0, 1, v58);
        sub_D0CC8(v125, v48 + v176);
        goto LABEL_50;
      }

      v112 = v188;
      sub_263F90();
    }

    else
    {
      v112 = v188;
      sub_263F90();
      v113 = v192;
    }

    sub_263F90();
    v138 = v189;
    v139 = v187;
    v140 = v193;
    (*(v189 + 104))(v187, enum case for LocalizerLookupStrategy.default(_:), v193);
    v141 = v184;
    sub_260B80();
    (*(v138 + 8))(v139, v140);
    v142 = v191;
    v143 = *(v190 + 8);
    v143(v113, v191);
    v143(v112, v142);
    swift_storeEnumTagMultiPayload();
    v70 = v208;
    sub_1E8D80(v141, v48 + *(v208 + 11), type metadata accessor for ButtonViewModel.Content);
LABEL_50:
    v86 = v212;
    v87 = v198;
    v74 = v205;
    if (v205)
    {
      v144 = [v205 isPreorder];
      if (v144)
      {
        *(v48 + v183) = 0;
        __chkstk_darwin(v144);
        v145 = v213;
        *(&v169 - 2) = v46;
        *(&v169 - 1) = v145;
        v146 = swift_getKeyPath();
        v147 = v171;
        ViewModelWithExternals.subscript.getter(v146);

        v208 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
        v198 = type metadata accessor for ColorConstants;
        sub_1E8E9C(v147, type metadata accessor for ColorConstants);
        v199 = sub_262FD0();
        sub_262FD0();
        v194 = sub_263000();

        __chkstk_darwin(v148);
        *(&v169 - 2) = v46;
        *(&v169 - 1) = v145;
        v48 = v207;
        v149 = swift_getKeyPath();
        v150 = v178;
        ViewModelWithExternals.subscript.getter(v149);
        v86 = v212;

        sub_1EA4D8(v150, v179, type metadata accessor for ColorConstants.Environment);
        v151 = v172;
        v152 = v173;
        (*(v172 + 104))(v180, enum case for ColorScheme.dark(_:), v173);
        sub_1E8F54(&qword_3183A0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
        sub_264390();
        v153 = *(v151 + 8);
        v153(v180, v152);
        v153(v179, v152);
        _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
        v154 = sub_263000();
        v74 = v205;

        sub_1E8E9C(v178, v198);
        v155 = v186;
        sub_185B20(*v186, *(v186 + 8), *(v186 + 16), *(v186 + 24));
        v156 = v199;
        *v155 = v208;
        v155[1] = v156;
        v155[2] = v194;
        v155[3] = v154;
      }

      v157 = v196;
      *v196 = v74;
      swift_storeEnumTagMultiPayload();
      v158 = v74;
      v159 = v46;
      v160 = v197;
      sub_1E793C(v157, v48, v159, v213, v197);
      sub_1E8E9C(v157, type metadata accessor for AssetAction.Kind);
      sub_8E80(v86, &qword_319AC8, &qword_287AB0);
      (v210)(v160, 0, 1, v211);
      sub_22148(v160, v86, &qword_319AC8, &qword_287AB0);
    }

    goto LABEL_54;
  }

  if (v65 < 2)
  {
    goto LABEL_31;
  }

LABEL_38:
  sub_2E18(v39, v39[3]);
  sub_260920();
  v170 = v64;
  if (v107)
  {

    v108 = v181;
    *v181 = 0x72616D6B63656863;
    v108[1] = 0xE90000000000006BLL;
    v109 = v108;
    sub_2E18(v39, v39[3]);
    sub_260920();
    if (!v110)
    {
      __break(1u);
      return;
    }

    sub_2EF0(&qword_319AF8, &qword_279110);
    sub_260BC0();
  }

  else
  {
    v126 = v181;
    *v181 = 0x72616D6B63656863;
    v126[1] = 0xE90000000000006BLL;
    v109 = v126;
  }

  v87 = v198;
  v127 = v213;
  swift_storeEnumTagMultiPayload();
  v128 = v207;
  v129 = sub_1E8D80(v109, v207 + v70[11], type metadata accessor for ButtonViewModel.Content);
  *(v128 + v183) = 0;
  __chkstk_darwin(v129);
  *(&v169 - 2) = v46;
  *(&v169 - 1) = v127;
  v130 = swift_getKeyPath();
  v131 = v182;
  ViewModelWithExternals.subscript.getter(v130);

  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_1E8E9C(v131, type metadata accessor for ColorConstants);
  v213 = sub_263000();

  sub_262FD0();
  v199 = sub_263000();

  sub_262FD0();
  v132 = sub_263000();

  __chkstk_darwin(v133);
  *(&v169 - 2) = v46;
  *(&v169 - 1) = v127;
  v48 = v128;
  v134 = swift_getKeyPath();
  ViewModelWithExternals.subscript.getter(v134);
  v70 = v208;

  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_1E8E9C(v131, type metadata accessor for ColorConstants);
  v135 = sub_263000();

  v136 = v186;
  sub_185B20(*v186, *(v186 + 8), *(v186 + 16), *(v186 + 24));
  v86 = v212;
  v137 = v199;
  *v136 = v213;
  v136[1] = v137;
  v136[2] = v132;
  v136[3] = v135;
  v74 = v205;
LABEL_54:
  v161 = v211;
  if (v87)
  {
    sub_8E80(v86, &qword_319AC8, &qword_287AB0);
    (v210)(v86, 1, 1, v161);
  }

  v162 = v201;
  sub_8198(v86, v201, &qword_319AC8, &qword_287AB0);
  v163 = *(v200 + 48);
  v164 = v163(v162, 1, v161);
  v165 = v203;
  if (v164 == 1)
  {

    sub_8E80(v162, &qword_319AC8, &qword_287AB0);
    *v165 = 0u;
    *(v165 + 16) = 0u;
    *(v165 + 32) = 0;
  }

  else
  {
    *(v203 + 3) = v161;
    *(v165 + 32) = sub_1E8F54(&qword_319B08, type metadata accessor for AssetAction, &protocol conformance descriptor for AssetAction);
    v166 = sub_10934(v165);
    sub_1E8DE8(v162, v166, type metadata accessor for AssetAction);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E8D80(v165, v48 + v70[13], type metadata accessor for ButtonViewModel.ActionKind);
  v167 = v202;
  sub_22148(v86, v202, &qword_319AC8, &qword_287AB0);
  v168 = v163(v167, 1, v161) != 1;
  sub_8E80(v167, &qword_319AC8, &qword_287AB0);
  *(v48 + v70[12]) = v168;
}

uint64_t sub_1E793C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v139 = a5;
  v144 = type metadata accessor for AssetAction(0);
  __chkstk_darwin(v144);
  v150 = (&v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = sub_2601E0();
  v136 = *(v149 - 8);
  __chkstk_darwin(v149);
  v135 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_260560();
  v151 = *(v143 - 8);
  __chkstk_darwin(v143);
  v142 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_260600();
  __chkstk_darwin(v12 - 8);
  v141 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v14 - 8);
  v137 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v138 = &v116 - v17;
  __chkstk_darwin(v18);
  v140 = &v116 - v19;
  v20 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v20 - 8);
  v148 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v22 - 8);
  v131 = &v116 - v23;
  v24 = sub_263DD0();
  __chkstk_darwin(v24 - 8);
  v127 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_263A10();
  v126 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v27 - 8);
  v29 = &v116 - v28;
  v132 = a3;
  v133 = a4;
  v31 = type metadata accessor for BuyButtonViewModelBase(0, a3, a4, v30);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v129 = (&v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v124 = &v116 - v35;
  __chkstk_darwin(v36);
  v38 = &v116 - v37;
  v39 = sub_263AF0();
  v146 = *(v39 - 8);
  v147 = v39;
  __chkstk_darwin(v39);
  v152 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v153 = &v116 - v42;
  v134 = a1;
  AssetAction.Kind.figaroActionType.getter(&v170);
  LODWORD(v118) = v170;
  LOBYTE(v159) = v170;
  v43 = *(v31 + 44);
  sub_30CC(a2 + v43, &v170);
  v117 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(&v159, &v170);
  sub_3080(&v170);
  v121 = *(v32 + 16);
  v122 = v32 + 16;
  v121(v38, a2, v31);
  sub_2E18(&v38[*(v31 + 44)], *&v38[*(v31 + 44) + 24]);
  v119 = sub_2606E0();
  v120 = v44;
  v45 = *(v32 + 8);
  v130 = (v32 + 8);
  v123 = v45;
  v45(v38, v31);
  v46 = a2;
  v145 = v43;
  sub_30CC(a2 + v43, &v170);
  sub_2E18(&v170, *(&v171 + 1));
  sub_2608C0();
  v47 = sub_260060();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v29, 1, v47) == 1)
  {
    sub_3080(&v170);
    sub_8E80(v29, &qword_322C70, &qword_272AD0);
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v51 = sub_260020();
    v50 = v52;
    (*(v48 + 8))(v29, v47);
    v49 = v51;
    sub_3080(&v170);
  }

  v53 = v46;
  sub_30CC(v46 + v145, &v170);
  sub_30CC(&v170, &v157);
  sub_97050(&v157, 0x6C6C6950797562, 0xE700000000000000, 0, &v159);
  sub_3080(&v170);
  v178 = v167;
  v179 = v168;
  v180 = v169;
  v174 = v163;
  v175 = v164;
  v176 = v165;
  v177 = v166;
  v170 = v159;
  v171 = v160;
  v172 = v161;
  v173 = v162;
  v54 = &_swiftEmptyDictionarySingleton;
  v55 = v117;
  if (v117)
  {
    v158 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v157 = v55;
    sub_FBD8(&v157, v155);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v155, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v54 = v154;
  }

  if (v50)
  {
    v158 = &type metadata for String;
    *&v157 = v49;
    *(&v157 + 1) = v50;
    sub_FBD8(&v157, v155);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v54;
    sub_DC90(v155, 0x72556E6F69746361, 0xE90000000000006CLL, v57);
    v54 = v154;
  }

  v156 = v118;
  v58 = Metrics.ClickActionType.rawValue.getter();
  v158 = &type metadata for String;
  *&v157 = v58;
  *(&v157 + 1) = v59;
  sub_FBD8(&v157, v155);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v154 = v54;
  sub_DC90(v155, 0x79546E6F69746361, 0xEA00000000006570, v60);
  v61 = v154;
  sub_2EF0(&qword_317218, &unk_269760);
  v62 = swift_allocObject();
  v118 = xmmword_267D30;
  *(v62 + 16) = xmmword_267D30;
  *(v62 + 32) = sub_1694E0();
  v158 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v157 = v62;
  sub_FBD8(&v157, v155);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v154 = v61;
  sub_DC90(v155, 0x6E6F697461636F6CLL, 0xE800000000000000, v63);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v64 = sub_2639E0();
  sub_B080(v64, qword_353F10);
  v65 = v125;
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v66 = v126;
  v67 = (*(v126 + 80) + 32) & ~*(v126 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = v118;
  v69 = v68 + v67;
  v70 = v128;
  v66[2](v69, v65, v128);
  sub_263DC0();
  sub_263AD0();
  sub_98D34(&v170);
  (v66[1])(v65, v70);
  v71 = v124;
  v72 = v46;
  v73 = v121;
  v121(v124, v72, v31);
  sub_2E18(&v71[*(v31 + 44)], *&v71[*(v31 + 44) + 24]);
  v74 = sub_2606E0();
  v127 = v75;
  v128 = v74;
  v76 = v71;
  v77 = v123;
  v123(v76, v31);
  v78 = v129;
  v79 = v73(v129, v53, v31);
  __chkstk_darwin(v79);
  v80 = v133;
  *(&v116 - 2) = v132;
  *(&v116 - 1) = v80;
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  v82 = v131;
  ViewModelWithExternals.subscript.getter(KeyPath);

  v77(v78, v31);
  v83 = v136;
  v84 = v149;
  v85 = v136[6](v82, 1, v149);
  v86 = v146;
  if (v85 == 1)
  {
    sub_8E80(v82, &qword_31A0C8, &qword_26E2C0);
    v132 = 0;
    v133 = 0;
  }

  else
  {
    v87 = sub_2601C0();
    v132 = v88;
    v133 = v87;
    (v83[1])(v82, v84);
  }

  v89 = v151;
  v90 = v141;
  sub_30CC(v53 + v145, &v159);
  sub_2E18(&v159, *(&v160 + 1));
  LODWORD(v131) = sub_260870();
  v130 = *(v86 + 16);
  v130(v152, v153, v147);
  v129 = type metadata accessor for AssetAction.Kind;
  sub_1EA4D8(v134, v148, type metadata accessor for AssetAction.Kind);
  AssetAction.Kind.appAnalyticsClickTargetType.getter(v90);
  v91 = *(v89 + 104);
  v151 = v89 + 104;
  LODWORD(v134) = enum case for LinkActionType.click(_:);
  v126 = v91;
  (v91)(v142);
  v92 = v140;
  sub_260610();
  v93 = sub_260620();
  v94 = *(v93 - 8);
  v95 = *(v94 + 56);
  v145 = v94 + 56;
  v136 = v95;
  (v95)(v92, 0, 1, v93);
  v96 = v135;
  sub_2601D0();
  v97 = sub_2601C0();
  v99 = v98;
  (v83[1])(v96, v149);
  v100 = v150;
  *v150 = v97;
  v100[1] = v99;
  v101 = v147;
  v102 = v92;
  v103 = v127;
  v100[2] = v128;
  v100[3] = v103;
  v104 = v132;
  v100[4] = v133;
  v100[5] = v104;
  *(v100 + 48) = v131 & 1;
  v105 = v144;
  v130(v100 + *(v144 + 32), v152, v101);
  v106 = v100 + *(v105 + 40);
  v107 = v148;
  sub_1EA4D8(v148, v106, v129);
  v108 = v137;
  sub_8198(v92, v137, &qword_316B98, &unk_275840);
  v109 = *(v94 + 48);
  if (v109(v108, 1, v93) == 1)
  {
    v110 = v107;
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v141);
    (v126)(v142, v134, v143);
    v111 = v138;
    v105 = v144;
    sub_260610();
    sub_8E80(v140, &qword_316B98, &unk_275840);
    sub_1E8E9C(v110, type metadata accessor for AssetAction.Kind);
    v112 = *(v146 + 8);
    v112(v152, v101);
    v112(v153, v101);
    if (v109(v108, 1, v93) != 1)
    {
      sub_8E80(v108, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v102, &qword_316B98, &unk_275840);
    sub_1E8E9C(v107, type metadata accessor for AssetAction.Kind);
    v113 = *(v146 + 8);
    v113(v152, v101);
    v113(v153, v101);
    v111 = v138;
    (*(v94 + 32))(v138, v108, v93);
  }

  (v136)(v111, 0, 1, v93);
  v114 = v150;
  sub_22148(v111, v150 + *(v105 + 36), &qword_316B98, &unk_275840);
  sub_1E8DE8(v114, v139, type metadata accessor for AssetAction);
  return sub_3080(&v159);
}

__n128 sub_1E8984@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 + a2 - 8) + 32))(v6, *(a1 + a2 - 16));
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

__n128 sub_1E8A00(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E8A24(void *a1, uint64_t a2)
{
  v3 = sub_263FA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v13[3] = a1[4];
  v8 = sub_2E18(a1, v7);
  v13[1] = "ate";
  v13[2] = v8;
  sub_2EF0(&qword_31ACF0, &unk_26FF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 1702125924;
  *(inited + 40) = 0xE400000000000000;
  sub_2E18(a1, a1[3]);
  *(inited + 48) = sub_264230();
  *(inited + 56) = v10;
  sub_F13C(inited);
  swift_setDeallocating();
  sub_8E80(inited + 32, &qword_31ACF8, &qword_273580);
  sub_263F90();
  v11 = sub_264250();

  (*(v4 + 8))(v6, v3);
  return v11;
}

Swift::Int sub_1E8C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_265050();
  a4(v6);
  return sub_265080();
}

uint64_t sub_1E8C84()
{
  v1 = sub_2601B0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E8D0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 24))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1E8D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E8DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E8E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E8EFC(uint64_t a1)
{
  result = sub_1E8F54(&qword_325168, type metadata accessor for BuyButtonExternals, &protocol conformance descriptor for BuyButtonExternals);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E8F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E8FB8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E9090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_2EF0(&qword_31A040, &unk_279210);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1E91EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_2EF0(&qword_31A040, &unk_279210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1E9328(uint64_t a1)
{
  sub_C4F38(319);
  if (v1 <= 0x3F)
  {
    sub_95884(319);
    if (v2 <= 0x3F)
    {
      sub_78DC8(319, &qword_31A0C0, &qword_31A0C8, &qword_26E2C0);
      if (v3 <= 0x3F)
      {
        sub_78DC8(319, &qword_31A6A0, &qword_317F48, &qword_26A9A0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E940C(uint64_t a1)
{
  result = type metadata accessor for ButtonViewModel(319);
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    result = type metadata accessor for BuyButtonViewModelBase.ButtonType(319, v5, v6, v3);
    if (v8 <= 0x3F)
    {
      result = type metadata accessor for BuyButtonViewModelBase.LongCaptionAlignment(319, v5, v6, v7);
      if (v9 <= 0x3F)
      {
        result = sub_44744();
        if (v10 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E94F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v54 = sub_2EF0(&qword_318288, &unk_27F080);
  v4 = *(v54 - 8);
  v59 = v4;
  v5 = *(v4 + 84);
  v6 = *(sub_261180() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v56 = v7;
  v8 = *(sub_260BD0() - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  v11 = v10;
  v12 = ((v11 + 24) & ~v11) + v9;
  if (v9 > v12)
  {
    v12 = *(v8 + 64);
  }

  if (v12 <= ((v10 + 16) & ~v10) + v9)
  {
    v12 = ((v10 + 16) & ~v10) + v9;
  }

  if (v12 <= ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v12 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v12 <= ((v9 + v10) & ~v10) + v9)
  {
    v12 = ((v9 + v10) & ~v10) + v9;
  }

  if (v12 <= 0x10)
  {
    v13 = 16;
  }

  else
  {
    v13 = v12;
  }

  v14 = 248 - (2u >> (8 * v13));
  if (v13 > 3)
  {
    v14 = 248;
  }

  v55 = v5;
  if (v5 <= v14)
  {
    v5 = v14;
  }

  v15 = *(sub_260060() - 8);
  if (*(v15 + 64) <= 0x28uLL)
  {
    v16 = 40;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v53 = v8;
  v17 = *(v8 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v5 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v5;
  }

  if (v19 <= 0x7FFFFFFC)
  {
    v20 = 2147483644;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(*(a3 + 16) - 8);
  v22 = *(v21 + 84);
  v23 = *(v4 + 64);
  v24 = *(v4 + 80);
  v25 = *(v15 + 80);
  v26 = *(v21 + 80);
  v27 = *(v21 + 64);
  if (v20 <= v22)
  {
    v28 = *(v21 + 84);
  }

  else
  {
    v28 = v20;
  }

  if (v28 <= 0x7FFFFFFF)
  {
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v29 = v28;
  }

  if (v17)
  {
    v30 = v9;
  }

  else
  {
    v30 = v9 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = *(v6 + 80) & 0xF8 | 7;
  v32 = v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v33 = v10 + 32;
  v34 = v25 & 0xF8 | 7;
  v35 = v13 + v34 + 2;
  v36 = v16 + v10 + 1;
  v37 = v30 + ((v36 + ((v35 + ((v33 + ((v56 + 11 + ((v23 + v31 + ((v23 + v24) & ~v24)) & ~v31)) & 0xFFFFFFFFFFFFFFF8)) & v32)) & ~v34)) & ~v10);
  v38 = v26 + 40;
  if (a2 <= v29)
  {
    goto LABEL_62;
  }

  v39 = (v38 + ((v37 + 10) & 0xFFFFFFFFFFFFFFF8)) & ~v26;
  v40 = v39 + v27;
  v41 = 8 * (v39 + v27);
  if (v40 <= 3)
  {
    v44 = ((a2 - v29 + ~(-1 << v41)) >> v41) + 1;
    if (HIWORD(v44))
    {
      v42 = *(a1 + v40);
      if (!v42)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    if (v44 > 0xFF)
    {
      v42 = *(a1 + v40);
      if (!*(a1 + v40))
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    if (v44 < 2)
    {
LABEL_62:
      if (v19 == v29)
      {
        if (v55 == v20)
        {
          v48 = *(v59 + 48);

          return v48(a1, v55, v54);
        }

        else
        {
          v51 = (*(v53 + 48))((v36 + ((v35 + ((v33 + ((v56 + 11 + ((((a1 + v23 + v24) & ~v24) + v23 + v31) & ~v31)) & 0xFFFFFFFFFFFFFFF8)) & v32)) & ~v34)) & ~v11);
          if (v51 >= 2)
          {
            return v51 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v49 = (a1 + v37 + 10) & 0xFFFFFFFFFFFFFFF8;
        if ((v28 & 0x80000000) != 0)
        {
          v52 = *(v21 + 48);

          return v52((v38 + v49) & ~v26, v22);
        }

        else
        {
          v50 = *(v49 + 24);
          if (v50 >= 0xFFFFFFFF)
          {
            LODWORD(v50) = -1;
          }

          return (v50 + 1);
        }
      }
    }
  }

  v42 = *(a1 + v40);
  if (!*(a1 + v40))
  {
    goto LABEL_62;
  }

LABEL_49:
  v45 = (v42 - 1) << v41;
  if (v40 > 3)
  {
    v45 = 0;
  }

  if (v40)
  {
    if (v40 <= 3)
    {
      v46 = v40;
    }

    else
    {
      v46 = 4;
    }

    if (v46 > 2)
    {
      if (v46 == 3)
      {
        v47 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v47 = *a1;
      }
    }

    else if (v46 == 1)
    {
      v47 = *a1;
    }

    else
    {
      v47 = *a1;
    }
  }

  else
  {
    v47 = 0;
  }

  return v29 + (v47 | v45) + 1;
}

void sub_1E9A6C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v52 = sub_2EF0(&qword_318288, &unk_27F080);
  v5 = *(v52 - 8);
  v59 = v5;
  v6 = *(v5 + 84);
  v7 = *(sub_261180() - 8);
  v8 = *(v7 + 64);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v54 = v8;
  v51 = sub_260BD0();
  v58 = *(v51 - 8);
  v9 = *(v58 + 64);
  v10 = *(v58 + 80);
  v11 = ((v10 + 24) & ~v10) + v9;
  if (v9 > v11)
  {
    v11 = *(*(v51 - 8) + 64);
  }

  if (v11 <= ((v10 + 16) & ~v10) + v9)
  {
    v11 = ((v10 + 16) & ~v10) + v9;
  }

  if (v11 <= ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v11 <= ((v9 + v10) & ~v10) + v9)
  {
    v11 = ((v9 + v10) & ~v10) + v9;
  }

  if (v11 <= 0x10)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  v13 = 248 - (2u >> (8 * v12));
  if (v12 > 3)
  {
    v13 = 248;
  }

  v53 = v6;
  if (v6 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6;
  }

  v15 = 0;
  v16 = *(sub_260060() - 8);
  if (*(v16 + 64) <= 0x28uLL)
  {
    v17 = 40;
  }

  else
  {
    v17 = *(v16 + 64);
  }

  v18 = *(v58 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v14 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v14;
  }

  v21 = *(*(a4 + 16) - 8);
  if (v20 <= 0x7FFFFFFC)
  {
    v22 = 2147483644;
  }

  else
  {
    v22 = v20;
  }

  v23 = *(*(a4 + 16) - 8);
  v24 = *(v5 + 64);
  v25 = *(v5 + 80);
  v26 = *(v7 + 80);
  v27 = *(v16 + 80);
  v28 = *(v21 + 80);
  if (v22 <= *(v21 + 84))
  {
    v29 = *(v21 + 84);
  }

  else
  {
    v29 = v22;
  }

  if (v29 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = v29;
  }

  v31 = v26 & 0xF8 | 7;
  v32 = v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v33 = v27 & 0xF8 | 7;
  v34 = v12 + v33 + 2;
  v35 = v17 + v10 + 1;
  v36 = (v35 + ((v34 + ((v10 + 32 + ((v54 + 11 + ((v24 + v31 + ((v24 + v25) & ~v25)) & ~v31)) & 0xFFFFFFFFFFFFFFF8)) & v32)) & ~v33)) & ~v10;
  if (!v18)
  {
    ++v9;
  }

  v37 = v36 + v9;
  v38 = ((v28 + 40 + ((v36 + v9 + 10) & 0xFFFFFFFFFFFFFFF8)) & ~v28) + *(v21 + 64);
  if (a3 > v30)
  {
    v15 = 1;
    if (v38 <= 3)
    {
      v39 = ((a3 - v30 + ~(-1 << (8 * v38))) >> (8 * v38)) + 1;
      if (v39 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v39 < 2)
      {
        v15 = 0;
      }

      if (HIWORD(v39))
      {
        v15 = 4;
      }
    }
  }

  v40 = a2;
  if (v30 < a2)
  {
    v41 = ~v30 + a2;
    if (v38 < 4)
    {
      v42 = (v41 >> (8 * v38)) + 1;
      if (v38)
      {
        v43 = v41 & ~(-1 << (8 * v38));
        bzero(a1, v38);
        if (v38 != 3)
        {
          if (v38 == 2)
          {
            *a1 = v43;
            if (v15 > 1)
            {
LABEL_82:
              if (v15 == 2)
              {
                *&a1[v38] = v42;
              }

              else
              {
                *&a1[v38] = v42;
              }

              return;
            }
          }

          else
          {
            *a1 = v41;
            if (v15 > 1)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_79;
        }

        *a1 = v43;
        a1[2] = BYTE2(v43);
      }

      if (v15 > 1)
      {
        goto LABEL_82;
      }
    }

    else
    {
      bzero(a1, v38);
      *a1 = v41;
      v42 = 1;
      if (v15 > 1)
      {
        goto LABEL_82;
      }
    }

LABEL_79:
    if (v15)
    {
      a1[v38] = v42;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v38] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_63;
    }

    *&a1[v38] = 0;
LABEL_62:
    if (!a2)
    {
      return;
    }

    goto LABEL_63;
  }

  if (!v15)
  {
    goto LABEL_62;
  }

  a1[v38] = 0;
  if (!a2)
  {
    return;
  }

LABEL_63:
  if (v20 == v30)
  {
    if (v22 >= a2)
    {
      if (v53 == v22)
      {
        v46 = *(v59 + 56);
        v47 = a1;
        v18 = v53;
        v48 = v52;
      }

      else
      {
        v46 = *(v58 + 56);
        v47 = ((v35 + ((v34 + ((v10 + 32 + ((v54 + 11 + (((&a1[v24 + v25] & ~v25) + v24 + v31) & ~v31)) & 0xFFFFFFFFFFFFFFF8)) & v32)) & ~v33)) & ~v10);
        v40 = a2 + 1;
        v48 = v51;
      }

      v46(v47, v40, v18, v48);
    }

    else
    {
      v44 = ~v22 + a2;
      if (v37 < 4)
      {
        if (v37)
        {
          v50 = v44 & ~(-1 << (8 * v37));
          bzero(a1, v37);
          if (v37 == 3)
          {
            *a1 = v50;
            a1[2] = BYTE2(v50);
          }

          else if (v37 == 2)
          {
            *a1 = v50;
          }

          else
          {
            *a1 = v44;
          }
        }
      }

      else
      {
        bzero(a1, v37);
        *a1 = v44;
      }
    }
  }

  else
  {
    v45 = &a1[v37 + 10] & 0xFFFFFFFFFFFFFFF8;
    if ((v29 & 0x80000000) != 0)
    {
      v49 = *(v23 + 56);

      v49((v28 + 40 + v45) & ~v28);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *(v45 + 8) = 0u;
      *(v45 + 24) = 0u;
      *v45 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v45 + 24) = a2 - 1;
    }
  }
}

uint64_t sub_1EA114(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFFF)
  {
    goto LABEL_17;
  }

  if (a2 + 61441 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61441 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61441;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 61441;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61441;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 15) | (2 * ((*a1 >> 4) & 0x7E0 | (*a1 >> 2) & 0x1F))) ^ 0xFFF;
  if (v6 >= 0xFFE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *sub_1EA1C0(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61441 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61441 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFFE)
  {
    v5 = ((a2 - 4095) >> 16) + 1;
    *result = a2 - 4095;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 1) & 0x7FF) - (a2 << 11);
    *result = (16 * v6) & 0xFE00 | (4 * (v6 & 0x1F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1EA2B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t sub_1EA358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1EA4D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PaginatedResourceSetIntent.init(href:limit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

unint64_t PaginatedResourceSetIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 24);
  sub_2EF0(&qword_325530, &qword_287E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  *(inited + 32) = 1717924456;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 64) = 0x74696D696CLL;
  *(inited + 72) = 0xE500000000000000;

  if (v5)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = sub_264EB0();
  }

  *(inited + 80) = v7;
  *(inited + 88) = v8;
  v9 = sub_F840(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_325538, &qword_287E88);
  swift_arrayDestroy();
  a1[3] = sub_2EF0(&qword_325540, &unk_287E90);
  result = sub_1EAC74();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_1EA6E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1717924456 && a2 == 0xE400000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int HostingViewBarType.hashValue.getter(char a1)
{
  sub_265050();
  sub_265060(a1 & 1);
  return sub_265080();
}

uint64_t sub_1EA828(char a1)
{
  if (a1)
  {
    return 0x74696D696CLL;
  }

  else
  {
    return 1717924456;
  }
}

Swift::Int sub_1EA884(uint64_t a1)
{
  sub_265050();
  HostingViewBarType.hash(into:)(v3, *v1);
  return sub_265080();
}

uint64_t sub_1EA8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1EA6E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1EA908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_448FC();
  *a1 = result;
  return result;
}

uint64_t sub_1EA934(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1EA988(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

void PaginatedResourceSetIntent.init(from:)(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v19 = a2;
  type metadata accessor for PaginatedResourceSetIntent.CodingKeys(255, a3, a4, a5);
  swift_getWitnessTable();
  v7 = sub_264E20();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  sub_2E18(a1, a1[3]);
  sub_265120();
  if (v5)
  {
    sub_3080(a1);
  }

  else
  {
    v11 = v19;
    v21 = 0;
    v12 = sub_264DC0();
    v14 = v13;
    v18 = v12;
    v20 = 1;
    v15 = sub_264DA0();
    v17 = v16;
    (*(v8 + 8))(v10, v7);
    *v11 = v18;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 24) = v17 & 1;

    sub_3080(a1);
  }
}

unint64_t sub_1EABF4@<X0>(void *a1@<X8>)
{
  result = static PaginatedResourceSetIntent.kind.getter();
  *a1 = 0xD00000000000001ALL;
  a1[1] = v3;
  return result;
}

unint64_t sub_1EAC74()
{
  result = qword_325548;
  if (!qword_325548)
  {
    sub_2F9C(&qword_325540, &unk_287E90);
    sub_1EACF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325548);
  }

  return result;
}

unint64_t sub_1EACF8()
{
  result = qword_325550[0];
  if (!qword_325550[0])
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_325550);
  }

  return result;
}

uint64_t sub_1EAD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1EADE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1EAE1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1EAE64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CoverContainer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1EAF50(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = sub_2EF0(&qword_3256E0, &qword_288228);
  __chkstk_darwin(v11 - 8);
  v13 = &v21[-v12];
  if (a8 & 1) != 0 || (sub_261770(), v21[56] = a2 & 1, v21[48] = a4 & 1, v21[40] = v14 & 1, v21[32] = v15 & 1, (sub_261780()) || (sub_261790(), v21[24] = a2 & 1, v21[16] = a4 & 1, v21[8] = v16 & 1, v21[0] = v17 & 1, result = sub_261780(), (result))
  {
    sub_1A74B0(v13);
    v19 = sub_261490();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v13, 1, v19) == 1)
    {
      return sub_1EB4F4(v13);
    }

    else
    {
      v21[72] = a2 & 1;
      v21[64] = a4 & 1;
      sub_261470();
      return (*(v20 + 8))(v13, v19);
    }
  }

  return result;
}

uint64_t sub_1EB1B8(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v19 = sub_2EF0(&qword_3256E0, &qword_288228);
  __chkstk_darwin(v19 - 8);
  v21 = &v25[-v20];
  if ((a12 & 1) == 0)
  {
    a2 = 0;
    a4 = 0;
  }

  sub_1A74B0(&v25[-v20]);
  v22 = sub_261490();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_1EB4F4(v21);
  }

  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  CGRectGetMidX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetMaxY(v27);
  sub_263710();
  v25[8] = a2 & 1;
  v25[0] = a4 & 1;
  sub_261480();
  return (*(v23 + 8))(v21, v22);
}

void (*sub_1EB414(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

unint64_t sub_1EB4A0()
{
  result = qword_3256D8;
  if (!qword_3256D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3256D8);
  }

  return result;
}

uint64_t sub_1EB4F4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3256E0, &qword_288228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1EB584(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void UIImage.cornerRadius(_:)(double a1)
{
  v3 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v1 scale];
  [v3 setScale:?];
  [v1 size];
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v3 format:{v4, v5}];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1EB948;
  *(v8 + 24) = v7;
  v11[4] = sub_1EB964;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1EB584;
  v11[3] = &unk_310550;
  v9 = _Block_copy(v11);
  v10 = v1;

  [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void sub_1EB7D4(void *a1, id a2, double a3)
{
  [a2 size];
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v6, v8, a3}];
  [v10 setLineJoinStyle:1];
  [v10 setLineCapStyle:1];
  [v10 closePath];
  c = [a1 CGContext];
  CGContextSaveGState(c);
  [v10 addClip];
  [a2 drawInRect:{0.0, 0.0, v7, v9}];
  CGContextRestoreGState(c);
}

uint64_t sub_1EB910()
{

  return swift_deallocObject();
}

uint64_t sub_1EB98C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t EmptyComponentModel.init(id:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 40) = 0u;
  v8 = a4 + 40;
  sub_34A0(v13, a4 + 40, &qword_315D38, &unk_266E30);
  v9 = *(type metadata accessor for EmptyComponentModel(0) + 24);
  v10 = sub_263E50();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  *(a4 + 32) = *(a1 + 32);
  sub_34A0(a2, v8, &qword_315D38, &unk_266E30);
  return sub_34A0(a3, a4 + v9, &qword_315D48, &qword_266E40);
}

uint64_t type metadata accessor for EmptyComponentModel(uint64_t a1)
{
  result = qword_325770;
  if (!qword_325770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmptyComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for EmptyComponentModel(0);
  sub_8198(v1 + *(v6 + 24), v5, &qword_315D40, &qword_288230);
  return sub_8200(v5, a1);
}

uint64_t sub_1EBBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for EmptyComponentModel(0);
  sub_8198(a1 + *(v7 + 24), v6, &qword_315D40, &qword_288230);
  return sub_8200(v6, a2);
}

uint64_t sub_1EBD04(uint64_t a1)
{
  v2 = sub_1EBFD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1EBD40(uint64_t a1)
{
  v2 = sub_1EBFD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EmptyComponentModel.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_3256E8, &qword_288238);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_2E18(a1, a1[3]);
  sub_1EBFD8();
  sub_265140();
  v8[15] = 0;
  sub_2EF0(&qword_315D28, &qword_266E20);
  sub_8E38(&qword_322ED8, &qword_315D28, &qword_266E20, &protocol conformance descriptor for CodeAnyHashable<A>);
  sub_264E90();
  if (!v1)
  {
    v8[14] = 1;
    sub_2EF0(&qword_315D30, &qword_266E28);
    sub_8E38(&qword_322EE0, &qword_315D30, &qword_266E28, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_264E90();
    type metadata accessor for EmptyComponentModel(0);
    v8[13] = 2;
    sub_2EF0(&qword_315D40, &qword_288230);
    sub_1A25A0();
    sub_264E90();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1EBFD8()
{
  result = qword_3256F0;
  if (!qword_3256F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3256F0);
  }

  return result;
}

uint64_t EmptyComponentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v3);
  v5 = &v23 - v4;
  v6 = sub_2EF0(&qword_3256F8, &qword_288240);
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for EmptyComponentModel(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v13 = (v12 + 40);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  sub_34A0(&v29, (v12 + 40), &qword_315D38, &unk_266E30);
  v14 = *(v10 + 32);
  v15 = sub_263E50();
  v16 = *(*(v15 - 8) + 56);
  v28 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = a1[3];
  v27 = a1;
  sub_2E18(a1, v17);
  sub_1EBFD8();
  v18 = v26;
  sub_265120();
  if (v18)
  {
    sub_3080(v27);
    sub_8E80(v13, &qword_315D30, &qword_266E28);
    return sub_8E80(&v12[v28], &qword_315D40, &qword_288230);
  }

  else
  {
    v26 = v5;
    sub_2EF0(&qword_315D28, &qword_266E20);
    v32 = 0;
    sub_8E38(&qword_315D60, &qword_315D28, &qword_266E20, &protocol conformance descriptor for CodeAnyHashable<A>);
    v19 = v25;
    sub_264DF0();
    v20 = v30;
    *v12 = v29;
    *(v12 + 1) = v20;
    *(v12 + 4) = v31;
    sub_2EF0(&qword_315D30, &qword_266E28);
    v32 = 1;
    sub_8E38(&qword_315D68, &qword_315D30, &qword_266E28, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_264DF0();
    sub_34A0(&v29, v13, &qword_315D30, &qword_266E28);
    LOBYTE(v29) = 2;
    sub_8EE0();
    v21 = v26;
    sub_264DF0();
    (*(v24 + 8))(v8, v19);
    sub_34A0(v21, &v12[v28], &qword_315D40, &qword_288230);
    sub_1EC4BC(v12, v23);
    sub_3080(v27);
    return sub_1EC520(v12);
  }
}

uint64_t sub_1EC4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1EC520(uint64_t a1)
{
  v2 = type metadata accessor for EmptyComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1EC5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_8198(v2 + *(a1 + 24), &v9 - v6, &qword_315D40, &qword_288230);
  return sub_8200(v7, a2);
}

unint64_t sub_1EC6A8()
{
  result = qword_325708;
  if (!qword_325708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325708);
  }

  return result;
}

uint64_t sub_1EC7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1EC840()
{
  result = qword_325710;
  if (!qword_325710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325710);
  }

  return result;
}

uint64_t sub_1EC894(uint64_t a1)
{
  sub_1EC840();

  return sub_260B30();
}

double sub_1EC8D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1, v5, &qword_315D28, &qword_266E20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1EC930@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1 + 40, v5, &qword_315D30, &qword_266E28);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1ECA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_315D40, &qword_288230);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1ECAE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_315D40, &qword_288230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1ECBC8()
{
  result = qword_3257B0;
  if (!qword_3257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257B0);
  }

  return result;
}

unint64_t sub_1ECC20()
{
  result = qword_3257B8;
  if (!qword_3257B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257B8);
  }

  return result;
}

unint64_t sub_1ECC78()
{
  result = qword_3257C0;
  if (!qword_3257C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257C0);
  }

  return result;
}

uint64_t ButtonView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  v3 = sub_262730();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0x4020000000000000;
  v8 = enum case for Font.TextStyle.subheadline(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for Font.TextStyle.subheadline(_:), v3, v5);
  sub_40130();
  sub_2612E0();
  v10 = type metadata accessor for ButtonView(0);
  v14 = 0x3FF8000000000000;
  v9(v7, v8, v3);
  sub_2612E0();
  v11 = *(v10 + 24);
  *(a2 + v11) = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  return sub_1F3F48(v13, a2 + *(v10 + 28), type metadata accessor for ButtonViewModel);
}

uint64_t type metadata accessor for ButtonView(uint64_t a1)
{
  result = qword_325890;
  if (!qword_325890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ECEDC@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_319B00, &unk_26EA40);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ButtonView(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1F3F48(v9, a1, type metadata accessor for FontConstants.Button);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ButtonView.body.getter()
{
  v1 = type metadata accessor for BooksBorderedButtonStyle(0);
  __chkstk_darwin(v1);
  v3 = (v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2EF0(&qword_3257C8, &qword_288548);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  sub_1ED388(v15 - v6);
  v8 = type metadata accessor for ButtonView(0);
  sub_1F584C(v0 + *(v8 + 28), v3 + v1[8], type metadata accessor for ButtonViewModel);
  *v3 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v9 = v1[5];
  *(v3 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v10 = v1[6];
  *(v3 + v10) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v11 = v3 + v1[7];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = sub_2F9C(&qword_3257D0, &qword_288600);
  v13 = sub_1F2EF8();
  v15[0] = v12;
  v15[1] = v13;
  swift_getOpaqueTypeConformance2();
  sub_1F44AC(&qword_325830, type metadata accessor for BooksBorderedButtonStyle, &protocol conformance descriptor for BooksBorderedButtonStyle);
  sub_262A60();
  sub_1F4428(v3, type metadata accessor for BooksBorderedButtonStyle);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1ED388@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v37 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v37);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2617C0();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261190();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_3257F8, &qword_288610);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = sub_2EF0(&qword_3257E8, &qword_288608);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v35 = sub_2EF0(&qword_3257D0, &qword_288600);
  __chkstk_darwin(v35);
  v18 = &v34 - v17;
  sub_1ED81C(v2, v12);
  v19 = v2 + *(type metadata accessor for ButtonView(0) + 28);
  v20 = type metadata accessor for ButtonViewModel(0);
  if (*(v19 + v20[7]) == 2)
  {
    v21 = &enum case for ControlSize.regular(_:);
  }

  else
  {
    v21 = &enum case for ControlSize.large(_:);
  }

  (*(v7 + 104))(v9, *v21, v6);
  KeyPath = swift_getKeyPath();
  v23 = &v16[*(v14 + 44)];
  v24 = sub_2EF0(&qword_321278, &qword_27E848);
  (*(v7 + 32))(v23 + *(v24 + 28), v9, v6);
  *v23 = KeyPath;
  sub_22148(v12, v16, &qword_3257F8, &qword_288610);
  v25 = *(v19 + v20[12]);
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v28 = (v25 & 1) == 0;
  v29 = v35;
  *(v27 + 16) = v28;
  sub_22148(v16, v18, &qword_3257E8, &qword_288608);
  v30 = &v18[*(v29 + 36)];
  *v30 = v26;
  v30[1] = sub_4C914;
  v30[2] = v27;
  v31 = v36;
  sub_1F584C(v19 + v20[11], v36, type metadata accessor for ButtonViewModel.Content);
  LODWORD(v26) = swift_getEnumCaseMultiPayload();
  sub_1F4428(v31, type metadata accessor for ButtonViewModel.Content);
  if (v26 == 9)
  {
    v32 = v38;
    sub_2617A0();
  }

  else
  {
    v32 = v38;
    sub_2617B0();
  }

  sub_1F2EF8();
  sub_262E70();
  (*(v39 + 8))(v32, v40);
  return sub_8E80(v18, &qword_3257D0, &qword_288600);
}

uint64_t sub_1ED81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v67 = sub_2EF0(&qword_325828, &qword_288628);
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v57 - v3;
  v62 = sub_260060();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v57 - v6;
  v68 = sub_2EF0(&qword_3258D8, &qword_2886F8);
  __chkstk_darwin(v68);
  v8 = &v57 - v7;
  v9 = sub_2604E0();
  __chkstk_darwin(v9 - 8);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ButtonView(0);
  v12 = v11 - 8;
  v57 = *(v11 - 8);
  v13 = *(v57 + 64);
  __chkstk_darwin(v11);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_316960, &unk_2689F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - v15;
  v17 = sub_2EF0(&qword_325818, &qword_288620);
  __chkstk_darwin(v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v65 = &v57 - v21;
  v22 = type metadata accessor for ButtonViewModel.ActionKind(0);
  __chkstk_darwin(v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v12 + 36);
  v26 = type metadata accessor for ButtonViewModel(0);
  sub_1F584C(a1 + *(v26 + 52) + v25, v24, type metadata accessor for ButtonViewModel.ActionKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v61;
    v28 = v66;
    v29 = v24;
    v30 = v62;
    (*(v61 + 32))(v66, v29, v62);
    v31 = (*(v27 + 16))(v59, v28, v30);
    __chkstk_darwin(v31);
    v56[1] = sub_2EF0(&qword_3258E0, &qword_288700);
    v56[2] = sub_1F3858();
    v56[0] = v56;
    v32 = v63;
    sub_263690();
    v33 = v64;
    v34 = v67;
    (*(v64 + 16))(v8, v32, v67);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_325810, &qword_325818, &qword_288620, &protocol conformance descriptor for BooksActionButton<A>);
    sub_8E38(&qword_325820, &qword_325828, &qword_288628, &protocol conformance descriptor for ShareLink<A, B, C, D>);
    sub_261F80();
    (*(v33 + 8))(v32, v34);
    return (*(v27 + 8))(v66, v30);
  }

  else
  {
    v64 = a1;
    v66 = v8;
    v36 = *(v24 + 1);
    v76[0] = *v24;
    v76[1] = v36;
    v77 = *(v24 + 4);
    v37 = sub_2610B0();
    v38 = v16;
    (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
    sub_8198(v76, v70, &qword_316BA0, &unk_268B90);
    v39 = v71;
    if (v71)
    {
      v40 = v72;
      v41 = sub_2E18(v70, v71);
      *(&v74 + 1) = v39;
      v75 = *(v40 + 8);
      v42 = sub_10934(&v73);
      (*(*(v39 - 8) + 16))(v42, v41, v39);
      sub_3080(v70);
    }

    else
    {
      sub_8E80(v70, &qword_316BA0, &unk_268B90);
      v73 = 0u;
      v74 = 0u;
      v75 = 0;
    }

    v43 = v58;
    sub_1F584C(v64, v58, type metadata accessor for ButtonView);
    v44 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v45 = swift_allocObject();
    sub_1F3F48(v43, v45 + v44, type metadata accessor for ButtonView);
    sub_2604C0();
    sub_260420();
    v46 = &v19[v17[9]];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    v47 = v17[10];
    *&v19[v47] = swift_getKeyPath();
    sub_2EF0(&qword_316930, &qword_2689A0);
    swift_storeEnumTagMultiPayload();
    v48 = &v19[v17[11]];
    *v48 = swift_getKeyPath();
    v48[40] = 0;
    v49 = &v19[v17[12]];
    v50 = sub_2EF0(&qword_325910, &qword_2887B0);
    v49[3] = v50;
    v49[4] = sub_8E38(&qword_325918, &qword_325910, &qword_2887B0, &unk_268B6C);
    v51 = sub_10934(v49);
    sub_22148(v38, v51, &qword_316960, &unk_2689F0);
    v52 = (v51 + *(v50 + 36));
    *v52 = sub_1F3EC4;
    v52[1] = v45;
    v53 = &v19[v17[13]];
    v54 = v74;
    *v53 = v73;
    *(v53 + 1) = v54;
    *(v53 + 4) = v75;
    v55 = v65;
    sub_22148(v19, v65, &qword_325818, &qword_288620);
    sub_8198(v55, v66, &qword_325818, &qword_288620);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_325810, &qword_325818, &qword_288620, &protocol conformance descriptor for BooksActionButton<A>);
    sub_8E38(&qword_325820, &qword_325828, &qword_288628, &protocol conformance descriptor for ShareLink<A, B, C, D>);
    sub_261F80();
    sub_8E80(v55, &qword_325818, &qword_288620);
    return sub_8E80(v76, &qword_316BA0, &unk_268B90);
  }
}

uint64_t sub_1EE1C8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_2626C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_262730();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FontConstants.Button(0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2EF0(&qword_3258F8, &qword_288708);
  __chkstk_darwin(v16 - 8);
  v18 = &v26 - v17;
  *v18 = sub_261D30();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = sub_2EF0(&qword_325920, &qword_2887B8);
  sub_1EE5A0(v1, &v18[*(v19 + 44)]);
  type metadata accessor for ButtonView(0);
  type metadata accessor for ButtonViewModel(0);
  sub_1ECEDC(v15);
  (*(v10 + 104))(v12, enum case for Font.TextStyle.subheadline(_:), v9);
  v20 = sub_2625C0();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_262650();
  sub_262680();
  sub_8E80(v8, &qword_318458, &unk_26B270);
  (*(v10 + 8))(v12, v9);
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  v21 = sub_2626E0();

  (*(v3 + 8))(v5, v2);
  sub_1F4428(v15, type metadata accessor for FontConstants.Button);
  KeyPath = swift_getKeyPath();
  v23 = v27;
  sub_22148(v18, v27, &qword_3258F8, &qword_288708);
  result = sub_2EF0(&qword_3258E0, &qword_288700);
  v25 = (v23 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = v21;
  return result;
}

uint64_t sub_1EE5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v213 = a2;
  v186 = type metadata accessor for DeterminateProgressViewStyle(0);
  __chkstk_darwin(v186);
  v167 = (&v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v184 = sub_2EF0(&qword_3210A0, &unk_27E580);
  v166 = *(v184 - 8);
  __chkstk_darwin(v184);
  v164 = &v155 - v4;
  v188 = sub_2EF0(&qword_3217D8, &qword_27F0D8);
  v169 = *(v188 - 8);
  __chkstk_darwin(v188);
  v168 = &v155 - v5;
  v182 = sub_2EF0(&qword_3217E8, &qword_27F0E8);
  __chkstk_darwin(v182);
  v183 = &v155 - v6;
  v200 = sub_2EF0(&qword_3217F0, &unk_27F0F0);
  __chkstk_darwin(v200);
  v185 = &v155 - v7;
  v187 = sub_2EF0(&qword_3217F8, &qword_27F100);
  v165 = *(v187 - 8);
  __chkstk_darwin(v187);
  v163 = &v155 - v8;
  v178 = sub_2EF0(&qword_318560, &unk_26B530);
  __chkstk_darwin(v178);
  v162 = (&v155 - v9);
  v195 = sub_2EF0(&qword_325928, &qword_2887F0);
  __chkstk_darwin(v195);
  v197 = &v155 - v10;
  v172 = sub_2EF0(&qword_325930, &qword_2887F8);
  __chkstk_darwin(v172);
  v174 = &v155 - v11;
  v196 = sub_2EF0(&qword_325938, &qword_288800);
  __chkstk_darwin(v196);
  v177 = &v155 - v12;
  v208 = sub_2EF0(&qword_325940, &qword_288808);
  __chkstk_darwin(v208);
  v201 = &v155 - v13;
  v171 = sub_2EF0(&qword_325948, &qword_288810);
  __chkstk_darwin(v171);
  v161 = (&v155 - v14);
  v179 = sub_2EF0(&qword_325950, &qword_288818);
  __chkstk_darwin(v179);
  v180 = &v155 - v15;
  v198 = sub_2EF0(&qword_325958, &qword_288820);
  __chkstk_darwin(v198);
  v181 = &v155 - v16;
  v202 = sub_2EF0(&qword_325960, &qword_288828);
  v190 = *(v202 - 8);
  __chkstk_darwin(v202);
  v189 = &v155 - v17;
  v210 = sub_2EF0(&qword_325968, &qword_288830);
  __chkstk_darwin(v210);
  v212 = (&v155 - v18);
  v205 = sub_2EF0(&qword_325970, &qword_288838);
  __chkstk_darwin(v205);
  v207 = &v155 - v19;
  v192 = sub_2EF0(&qword_325978, &qword_288840);
  __chkstk_darwin(v192);
  v194 = &v155 - v20;
  v170 = sub_2EF0(&qword_325980, &qword_288848);
  __chkstk_darwin(v170);
  v173 = &v155 - v21;
  v193 = sub_2EF0(&qword_325988, &qword_288850);
  __chkstk_darwin(v193);
  v176 = &v155 - v22;
  v206 = sub_2EF0(&qword_325990, &qword_288858);
  __chkstk_darwin(v206);
  v199 = &v155 - v23;
  v211 = sub_2EF0(&qword_325998, &qword_288860);
  __chkstk_darwin(v211);
  v209 = &v155 - v24;
  v25 = type metadata accessor for ButtonView(0);
  v191 = *(v25 - 8);
  v26 = *(v191 + 64);
  __chkstk_darwin(v25);
  v27 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_2EF0(&qword_3259A0, &qword_288868);
  v160 = *(v175 - 8);
  __chkstk_darwin(v175);
  v159 = &v155 - v28;
  v29 = sub_260BD0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v203 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v155 - v33;
  v35 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v35);
  v37 = (&v155 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *(v25 + 28);
  v204 = a1;
  v39 = a1 + v38;
  v40 = type metadata accessor for ButtonViewModel(0);
  sub_1F584C(v39 + *(v40 + 44), v37, type metadata accessor for ButtonViewModel.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v69 = *(sub_2EF0(&qword_31E988, &qword_279108) + 48);
        v158 = v30;
        v70 = *(v30 + 32);
        v157 = v29;
        v70(v34, v37, v29);
        v71 = (v37 + v69);
        v72 = v203;
        v70(v203, v71, v29);
        v73 = sub_261E50();
        v74 = v161;
        *v161 = v73;
        *(v74 + 8) = 0x3FF0000000000000;
        *(v74 + 16) = 0;
        v75 = sub_2EF0(&qword_325A00, &qword_2888D8);
        sub_1F25B0(v34, v72, v204, (v74 + *(v75 + 44)));
        sub_8198(v74, v174, &qword_325948, &qword_288810);
        swift_storeEnumTagMultiPayload();
        sub_8E38(&qword_3259F0, &qword_325948, &qword_288810, &protocol conformance descriptor for VStack<A>);
        sub_10868C();
        v76 = v177;
        sub_261F80();
        sub_8198(v76, v197, &qword_325938, &qword_288800);
        swift_storeEnumTagMultiPayload();
        sub_1F42E4();
        sub_17CBF0();
        v77 = v201;
        sub_261F80();
        sub_8E80(v76, &qword_325938, &qword_288800);
        sub_8198(v77, v207, &qword_325940, &qword_288808);
        swift_storeEnumTagMultiPayload();
        sub_1F403C();
        sub_1F4258();
        v78 = v209;
        sub_261F80();
        sub_8E80(v77, &qword_325940, &qword_288808);
        sub_8198(v78, v212, &qword_325998, &qword_288860);
        swift_storeEnumTagMultiPayload();
        sub_2EF0(&qword_3259A8, &qword_288870);
        sub_1F3FB0();
        sub_1F439C();
        sub_261F80();
        sub_8E80(v78, &qword_325998, &qword_288860);
        sub_8E80(v74, &qword_325948, &qword_288810);
        v79 = *(v158 + 8);
        v80 = v72;
        v81 = v157;
        v79(v80, v157);
        return (v79)(v34, v81);
      }

      else
      {
        v132 = *v37;
        ButtonViewModel.theme.getter(&v215);
        v133 = v215;

        ButtonViewModel.progressViewModel(foregroundColor:)(v133, &v218);

        v134 = v218;
        LOBYTE(v133) = BYTE8(v218);
        v135 = v219;
        sub_2EF0(&qword_318288, &unk_27F080);
        sub_261300();
        v136 = v215;
        sub_261300();
        v137 = v215;
        BYTE8(v215) = 0;
        v214 = 0x3FF0000000000000;
        *&v215 = v132;
        sub_40130();
        v138 = v164;
        sub_2612C0();
        KeyPath = swift_getKeyPath();
        v140 = v167;
        *v167 = KeyPath;
        sub_2EF0(&qword_316C18, &unk_26F830);
        swift_storeEnumTagMultiPayload();
        v141 = v186;
        v142 = *(v186 + 20);
        *(v140 + v142) = swift_getKeyPath();
        sub_2EF0(&qword_3179C0, &qword_269D60);
        swift_storeEnumTagMultiPayload();
        v143 = v140 + v141[6];
        *v143 = v136;
        *(v143 + 8) = v137;
        *(v143 + 16) = 0;
        *(v140 + v141[7]) = v134;
        *(v140 + v141[8]) = v133;
        *(v140 + v141[9]) = v135;
        *(v140 + v141[10]) = *(&v135 + 1);
        v144 = sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580, &protocol conformance descriptor for ProgressView<A, B>);
        v145 = sub_1F44AC(&qword_321818, type metadata accessor for DeterminateProgressViewStyle, &protocol conformance descriptor for DeterminateProgressViewStyle);
        v146 = v168;
        v147 = v184;
        sub_2629E0();
        sub_1F4428(v140, type metadata accessor for DeterminateProgressViewStyle);
        (*(v166 + 8))(v138, v147);
        v148 = v169;
        v149 = v188;
        (*(v169 + 16))(v183, v146, v188);
        swift_storeEnumTagMultiPayload();
        v150 = type metadata accessor for InDeterminateProgressViewStyle(255);
        v151 = sub_1F44AC(&qword_3210B0, type metadata accessor for InDeterminateProgressViewStyle, &protocol conformance descriptor for InDeterminateProgressViewStyle);
        *&v218 = v147;
        *(&v218 + 1) = v150;
        *&v219 = v144;
        *(&v219 + 1) = v151;
        swift_getOpaqueTypeConformance2();
        *&v218 = v147;
        *(&v218 + 1) = v141;
        *&v219 = v144;
        *(&v219 + 1) = v145;
        swift_getOpaqueTypeConformance2();
        v152 = v185;
        sub_261F80();
        sub_8198(v152, v197, &qword_3217F0, &unk_27F0F0);
        swift_storeEnumTagMultiPayload();
        sub_1F42E4();
        sub_17CBF0();
        v153 = v201;
        sub_261F80();
        sub_8E80(v152, &qword_3217F0, &unk_27F0F0);
        sub_8198(v153, v207, &qword_325940, &qword_288808);
        swift_storeEnumTagMultiPayload();
        sub_1F403C();
        sub_1F4258();
        v154 = v209;
        sub_261F80();
        sub_8E80(v153, &qword_325940, &qword_288808);
        sub_8198(v154, v212, &qword_325998, &qword_288860);
        swift_storeEnumTagMultiPayload();
        sub_2EF0(&qword_3259A8, &qword_288870);
        sub_1F3FB0();
        sub_1F439C();
        sub_261F80();
        sub_8E80(v154, &qword_325998, &qword_288860);
        return (*(v148 + 8))(v146, v149);
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      ButtonViewModel.theme.getter(&v215);
      v100 = v215;

      ButtonViewModel.progressViewModel(foregroundColor:)(v100, &v218);

      *&v215 = v218;
      BYTE8(v215) = BYTE8(v218);
      v216 = v219;
      v101 = v163;
      sub_170C18(&v215, v163);

      v102 = v165;
      v103 = v187;
      (*(v165 + 16))(v183, v101, v187);
      swift_storeEnumTagMultiPayload();
      v104 = type metadata accessor for InDeterminateProgressViewStyle(255);
      v105 = sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580, &protocol conformance descriptor for ProgressView<A, B>);
      v106 = sub_1F44AC(&qword_3210B0, type metadata accessor for InDeterminateProgressViewStyle, &protocol conformance descriptor for InDeterminateProgressViewStyle);
      v107 = v184;
      *&v218 = v184;
      *(&v218 + 1) = v104;
      *&v219 = v105;
      *(&v219 + 1) = v106;
      swift_getOpaqueTypeConformance2();
      v108 = sub_1F44AC(&qword_321818, type metadata accessor for DeterminateProgressViewStyle, &protocol conformance descriptor for DeterminateProgressViewStyle);
      *&v218 = v107;
      *(&v218 + 1) = v186;
      *&v219 = v105;
      *(&v219 + 1) = v108;
      swift_getOpaqueTypeConformance2();
      v109 = v185;
      sub_261F80();
      sub_8198(v109, v197, &qword_3217F0, &unk_27F0F0);
      swift_storeEnumTagMultiPayload();
      sub_1F42E4();
      sub_17CBF0();
      v110 = v201;
      sub_261F80();
      sub_8E80(v109, &qword_3217F0, &unk_27F0F0);
      sub_8198(v110, v207, &qword_325940, &qword_288808);
      swift_storeEnumTagMultiPayload();
      sub_1F403C();
      sub_1F4258();
      v111 = v209;
      sub_261F80();
      sub_8E80(v110, &qword_325940, &qword_288808);
      sub_8198(v111, v212, &qword_325998, &qword_288860);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_3259A8, &qword_288870);
      sub_1F3FB0();
      sub_1F439C();
      sub_261F80();
      sub_8E80(v111, &qword_325998, &qword_288860);
      return (*(v102 + 8))(v101, v103);
    }

    else
    {
      if (EnumCaseMultiPayload == 8)
      {
        v215 = xmmword_288500;
        *&v216 = 0;
        *(&v216 + 1) = _swiftEmptyArrayStorage;
        v217 = 0;
      }

      else
      {
        v215 = 0u;
        v216 = 0u;
        v217 = 1;
      }

      sub_261F80();
      v120 = v220;
      v121 = v219;
      v122 = v212;
      *v212 = v218;
      v122[1] = v121;
      *(v122 + 32) = v120;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_3259A8, &qword_288870);
      sub_1F3FB0();
      sub_1F439C();
      return sub_261F80();
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      v156 = v34;
      v158 = v30;
      v157 = v29;
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v42 = v37[1];
          v201 = *v37;
          v200 = v42;
          v43 = sub_2EF0(&qword_319AF8, &qword_279110);
          v44 = *(v30 + 32);
          v44(v34, v37 + *(v43 + 48), v29);
          v45 = v30;
          v46 = *(v30 + 16);
          v47 = v203;
          v46(v203, v34, v29);
          sub_1F584C(v204, &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonView);
          v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
        }

        else
        {
          v112 = (v37 + *(sub_2EF0(&qword_325908, &qword_288718) + 48));
          v114 = *v112;
          v113 = v112[1];
          v201 = v114;
          v200 = v113;
          v44 = *(v30 + 32);
          v44(v34, v37, v29);
          v115 = v30;
          v116 = *(v30 + 16);
          v47 = v203;
          v116(v203, v34, v29);
          sub_1F584C(v204, &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonView);
          v48 = (*(v115 + 80) + 16) & ~*(v115 + 80);
        }

        v49 = (v31 + *(v191 + 80) + v48) & ~*(v191 + 80);
        v50 = swift_allocObject();
        v44((v50 + v48), v47, v29);
        sub_1F3F48(v27, v50 + v49, type metadata accessor for ButtonView);
        v51 = (v50 + ((v26 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
        v52 = v200;
        *v51 = v201;
        v51[1] = v52;
        sub_2EF0(&qword_322268, &qword_280838);
        sub_260A70();
        sub_260A50();
        sub_18A5E8();
        sub_1F44AC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
        sub_1F44AC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
        v53 = v189;
        sub_260A80();
        v54 = v190;
        v55 = v202;
        (*(v190 + 16))(v180, v53, v202);
        swift_storeEnumTagMultiPayload();
        sub_8E38(&qword_3259D0, &qword_325960, &qword_288828, &protocol conformance descriptor for JetLocalize<A, B, C>);
        v117 = v181;
        sub_261F80();
        sub_8198(v117, v194, &qword_325958, &qword_288820);
        swift_storeEnumTagMultiPayload();
        sub_1F40C8();
        sub_1F41A8();
        v118 = v199;
        sub_261F80();
        sub_8E80(v117, &qword_325958, &qword_288820);
        sub_8198(v118, v207, &qword_325990, &qword_288858);
        swift_storeEnumTagMultiPayload();
        sub_1F403C();
        sub_1F4258();
        v119 = v209;
        sub_261F80();
        sub_8E80(v118, &qword_325990, &qword_288858);
        sub_8198(v119, v212, &qword_325998, &qword_288860);
        swift_storeEnumTagMultiPayload();
        sub_2EF0(&qword_3259A8, &qword_288870);
        sub_1F3FB0();
        sub_1F439C();
        sub_261F80();
        sub_8E80(v119, &qword_325998, &qword_288860);
        (*(v54 + 8))(v53, v55);
        return (*(v158 + 8))(v156, v157);
      }

      v83 = v37[1];
      v201 = *v37;
      v200 = v83;
      v197 = v37[2];
      v84 = sub_2EF0(&qword_325900, &qword_288710);
      v85 = v30;
      v86 = *(v30 + 32);
      v87 = v37 + *(v84 + 64);
      v88 = v34;
      v86(v34, v87, v29);
      v89 = v203;
      (*(v85 + 16))(v203, v88, v29);
      sub_1F584C(v204, &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonView);
      v90 = (*(v85 + 80) + 16) & ~*(v85 + 80);
      v91 = (v31 + *(v191 + 80) + v90) & ~*(v191 + 80);
      v92 = (v26 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      v86((v93 + v90), v89, v29);
      sub_1F3F48(v27, v93 + v91, type metadata accessor for ButtonView);
      v94 = (v93 + v92);
      v95 = v200;
      *v94 = v201;
      v94[1] = v95;
      v96 = v197;
      *(v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8)) = v197;
      v97 = v96;
      sub_2EF0(&qword_322268, &qword_280838);
      sub_260A70();
      sub_260A50();
      sub_18A5E8();
      sub_1F44AC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
      sub_1F44AC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
      v63 = v189;
      sub_260A80();
      v64 = v190;
      v65 = v202;
      (*(v190 + 16))(v173, v63, v202);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_3259C8, &qword_3259A0, &qword_288868, &protocol conformance descriptor for JetLocalize<A, B, C>);
      sub_8E38(&qword_3259D0, &qword_325960, &qword_288828, &protocol conformance descriptor for JetLocalize<A, B, C>);
      v98 = v176;
      sub_261F80();
      sub_8198(v98, v194, &qword_325988, &qword_288850);
      swift_storeEnumTagMultiPayload();
      sub_1F40C8();
      sub_1F41A8();
      v99 = v199;
      sub_261F80();
      sub_8E80(v98, &qword_325988, &qword_288850);
      sub_8198(v99, v207, &qword_325990, &qword_288858);
      swift_storeEnumTagMultiPayload();
      sub_1F403C();
      sub_1F4258();
      v68 = v209;
      sub_261F80();
      sub_8E80(v99, &qword_325990, &qword_288858);
      sub_8198(v68, v212, &qword_325998, &qword_288860);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_3259A8, &qword_288870);
      sub_1F3FB0();
      sub_1F439C();
      sub_261F80();

LABEL_15:
      sub_8E80(v68, &qword_325998, &qword_288860);
      (*(v64 + 8))(v63, v65);
      return (*(v158 + 8))(v156, v157);
    }

    if (!EnumCaseMultiPayload)
    {
      v56 = *(v30 + 32);
      v57 = v34;
      v156 = v34;
      v56(v34, v37, v29);
      v158 = v30;
      v58 = *(v30 + 16);
      v59 = v203;
      v157 = v29;
      v58(v203, v57, v29);
      sub_1F584C(v204, &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonView);
      v60 = (*(v30 + 80) + 16) & ~*(v30 + 80);
      v61 = (v31 + *(v191 + 80) + v60) & ~*(v191 + 80);
      v62 = swift_allocObject();
      v56((v62 + v60), v59, v29);
      sub_1F3F48(&v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v62 + v61, type metadata accessor for ButtonView);
      sub_2EF0(&qword_325A08, &qword_2888E0);
      sub_260A70();
      sub_260A50();
      sub_1F5788();
      sub_1F44AC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
      sub_1F44AC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
      v63 = v159;
      sub_260A80();
      v64 = v160;
      v65 = v175;
      (*(v160 + 16))(v173, v63, v175);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_3259C8, &qword_3259A0, &qword_288868, &protocol conformance descriptor for JetLocalize<A, B, C>);
      sub_8E38(&qword_3259D0, &qword_325960, &qword_288828, &protocol conformance descriptor for JetLocalize<A, B, C>);
      v66 = v176;
      sub_261F80();
      sub_8198(v66, v194, &qword_325988, &qword_288850);
      swift_storeEnumTagMultiPayload();
      sub_1F40C8();
      sub_1F41A8();
      v67 = v199;
      sub_261F80();
      sub_8E80(v66, &qword_325988, &qword_288850);
      sub_8198(v67, v207, &qword_325990, &qword_288858);
      swift_storeEnumTagMultiPayload();
      sub_1F403C();
      sub_1F4258();
      v68 = v209;
      sub_261F80();
      sub_8E80(v67, &qword_325990, &qword_288858);
      sub_8198(v68, v212, &qword_325998, &qword_288860);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_3259A8, &qword_288870);
      sub_1F3FB0();
      sub_1F439C();
      sub_261F80();
      goto LABEL_15;
    }

    v123 = sub_2630B0();
    v124 = v162;
    v125 = (v162 + *(v178 + 36));
    v126 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
    v127 = enum case for Image.Scale.large(_:);
    v128 = sub_2630F0();
    (*(*(v128 - 8) + 104))(v125 + v126, v127, v128);
    *v125 = swift_getKeyPath();
    *v124 = v123;
    sub_8198(v124, v174, &qword_318560, &unk_26B530);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_3259F0, &qword_325948, &qword_288810, &protocol conformance descriptor for VStack<A>);
    sub_10868C();
    v129 = v177;
    sub_261F80();
    sub_8198(v129, v197, &qword_325938, &qword_288800);
    swift_storeEnumTagMultiPayload();
    sub_1F42E4();
    sub_17CBF0();
    v130 = v201;
    sub_261F80();
    sub_8E80(v129, &qword_325938, &qword_288800);
    sub_8198(v130, v207, &qword_325940, &qword_288808);
    swift_storeEnumTagMultiPayload();
    sub_1F403C();
    sub_1F4258();
    v131 = v209;
    sub_261F80();
    sub_8E80(v130, &qword_325940, &qword_288808);
    sub_8198(v131, v212, &qword_325998, &qword_288860);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3259A8, &qword_288870);
    sub_1F3FB0();
    sub_1F439C();
    sub_261F80();
    sub_8E80(v131, &qword_325998, &qword_288860);
    return sub_8E80(v124, &qword_318560, &unk_26B530);
  }
}

double sub_1F1138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v7 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_260BD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v16 = *(v11 + 16);
  v34 = a2;
  v16(&v33 - v17, a2, v10, v15);
  KeyPath = a1;
  sub_30CC(a1, v39);
  v18 = sub_2627B0();
  v20 = v19;
  v35 = v21;
  v37 = v22;
  v23 = a3 + *(type metadata accessor for ButtonView(0) + 28);
  v24 = type metadata accessor for ButtonViewModel(0);
  sub_8198(v23 + *(v24 + 56), v9, &qword_316208, &qword_268BD0);
  v25 = *(v11 + 48);
  if (v25(v9, 1, v10) == 1)
  {
    (v16)(v13, v34, v10);
    if (v25(v9, 1, v10) != 1)
    {
      sub_8E80(v9, &qword_316208, &qword_268BD0);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  sub_30CC(KeyPath, v39);
  v26 = sub_2627B0();
  v28 = v27;
  v30 = v29;
  KeyPath = swift_getKeyPath();
  v39[0] = v18;
  v39[1] = v20;
  v31 = v35 & 1;
  v40 = v35 & 1;
  v41 = v37;
  v42 = KeyPath;
  v43 = 3;
  v44 = 0;
  sub_43B58(v18, v20, v35 & 1);

  sub_2EF0(&qword_3189D8, &unk_27CEE0);
  sub_58070();
  sub_262BF0();
  sub_39DBC(v26, v28, v30 & 1);

  sub_39DBC(v18, v20, v31);

  sub_39DBC(v18, v20, v31);

  return result;
}

uint64_t sub_1F149C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v63 = a6;
  v62 = a5;
  v61 = a4;
  v60 = a3;
  v70 = a7;
  v9 = sub_262370();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v65 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_2EF0(&qword_322298, &qword_280938);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v56[-v11];
  v12 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v56[-v13];
  v15 = sub_260BD0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v56[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v19);
  v21 = *(v16 + 16);
  v59 = a2;
  v21(&v56[-v22], a2, v15, v20);
  sub_30CC(a1, &v75);
  v64 = sub_2627B0();
  v73 = v23;
  v74 = v24;
  v72 = v25;
  v26 = v60 + *(type metadata accessor for ButtonView(0) + 28);
  v27 = type metadata accessor for ButtonViewModel(0);
  sub_8198(v26 + *(v27 + 56), v14, &qword_316208, &qword_268BD0);
  v28 = *(v16 + 48);
  if (v28(v14, 1, v15) == 1)
  {
    (v21)(v18, v59, v15);
    if (v28(v14, 1, v15) != 1)
    {
      sub_8E80(v14, &qword_316208, &qword_268BD0);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
  }

  sub_30CC(a1, &v75);
  v60 = sub_2627B0();
  v59 = v29;
  v57 = v30;
  v58 = v31;

  v32 = v63;
  sub_263110();
  v33 = sub_262900();
  v35 = v34;
  v37 = v36;
  v38 = sub_262820();
  v40 = v39;
  v42 = v41;
  sub_39DBC(v33, v35, v37 & 1);

  v43 = v64;
  v44 = sub_262820();
  v46 = v45;
  LOBYTE(v33) = v47;
  v49 = v48;
  sub_39DBC(v38, v40, v42 & 1);

  v75 = v44;
  v76 = v46;
  v77 = v33 & 1;
  v78 = v49;
  v50 = v65;
  sub_262350();
  v51 = v68;
  sub_262C70();
  (*(v66 + 8))(v50, v67);
  sub_39DBC(v44, v46, v33 & 1);

  v75 = &type metadata for Text;
  v76 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  LOBYTE(v50) = v57;
  v52 = v71;
  v53 = v60;
  v54 = v59;
  sub_262BF0();
  sub_39DBC(v53, v54, v50 & 1);

  sub_39DBC(v43, v73, v72 & 1);

  return (*(v69 + 8))(v51, v52);
}

uint64_t sub_1F1A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a5;
  v62 = a4;
  v61 = a3;
  v70 = a6;
  v8 = sub_262370();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v65 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_2EF0(&qword_322298, &qword_280938);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v57[-v10];
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v57[-v12];
  v14 = sub_260BD0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v57[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v18);
  v20 = *(v15 + 16);
  v22 = a2;
  v23 = a2;
  v24 = a1;
  v20(&v57[-v21], v23, v14, v19);
  sub_30CC(a1, &v75);
  v64 = sub_2627B0();
  v73 = v25;
  v74 = v26;
  v72 = v27;
  v28 = v61 + *(type metadata accessor for ButtonView(0) + 28);
  v29 = type metadata accessor for ButtonViewModel(0);
  sub_8198(v28 + *(v29 + 56), v13, &qword_316208, &qword_268BD0);
  v30 = *(v15 + 48);
  if (v30(v13, 1, v14) == 1)
  {
    (v20)(v17, v22, v14);
    if (v30(v13, 1, v14) != 1)
    {
      sub_8E80(v13, &qword_316208, &qword_268BD0);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
  }

  sub_30CC(v24, &v75);
  v61 = sub_2627B0();
  v60 = v31;
  v58 = v32;
  v59 = v33;

  sub_2630B0();
  v34 = sub_262900();
  v36 = v35;
  v38 = v37;
  v39 = sub_262820();
  v41 = v40;
  v43 = v42;
  sub_39DBC(v34, v36, v38 & 1);

  v44 = v64;
  v45 = sub_262820();
  v47 = v46;
  LOBYTE(v34) = v48;
  v50 = v49;
  sub_39DBC(v39, v41, v43 & 1);

  v75 = v45;
  v76 = v47;
  v77 = v34 & 1;
  v78 = v50;
  v51 = v65;
  sub_262350();
  v52 = v68;
  sub_262C70();
  (*(v66 + 8))(v51, v67);
  sub_39DBC(v45, v47, v34 & 1);

  v75 = &type metadata for Text;
  v76 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  LOBYTE(v45) = v58;
  v53 = v71;
  v54 = v61;
  v55 = v60;
  sub_262BF0();
  sub_39DBC(v54, v55, v45 & 1);

  sub_39DBC(v44, v73, v72 & 1);

  return (*(v69 + 8))(v52, v53);
}

uint64_t sub_1F1FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a5;
  v63 = a4;
  v61 = a3;
  v70 = a6;
  v8 = sub_262370();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2EF0(&qword_322298, &qword_280938);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v57 - v10;
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v11 - 8);
  v13 = v57 - v12;
  v14 = sub_260BD0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v20 = *(v15 + 16);
  v60 = a2;
  v20(v57 - v21, a2, v14, v19);
  v22 = a1;
  sub_30CC(a1, &v75);
  v73 = sub_2627B0();
  v74 = v23;
  v25 = v24;
  v72 = v26;
  v27 = v61 + *(type metadata accessor for ButtonView(0) + 28);
  v28 = type metadata accessor for ButtonViewModel(0);
  sub_8198(v27 + *(v28 + 56), v13, &qword_316208, &qword_268BD0);
  v29 = *(v15 + 48);
  if (v29(v13, 1, v14) == 1)
  {
    (v20)(v17, v60, v14);
    if (v29(v13, 1, v14) != 1)
    {
      sub_8E80(v13, &qword_316208, &qword_268BD0);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
  }

  sub_30CC(v22, &v75);
  v61 = sub_2627B0();
  v60 = v30;
  v58 = v31;
  v59 = v32;
  v62 = v25;
  v33 = sub_262820();
  v35 = v34;
  v37 = v36;
  v57[1] = v38;

  sub_2630B0();
  v39 = sub_262900();
  v41 = v40;
  v43 = v42;
  v44 = sub_262820();
  v46 = v45;
  v48 = v47;
  v64 = v49;
  sub_39DBC(v39, v41, v43 & 1);

  sub_39DBC(v33, v35, v37 & 1);

  v75 = v44;
  v76 = v46;
  v77 = v48 & 1;
  v50 = v65;
  v78 = v64;
  sub_262350();
  v51 = v68;
  sub_262C70();
  (*(v66 + 8))(v50, v67);
  sub_39DBC(v44, v46, v48 & 1);

  v75 = &type metadata for Text;
  v76 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v52 = v58;
  v53 = v71;
  v54 = v61;
  v55 = v60;
  sub_262BF0();
  sub_39DBC(v54, v55, v52 & 1);

  sub_39DBC(v73, v74, v62 & 1);

  return (*(v69 + 8))(v51, v53);
}

uint64_t sub_1F25B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v57 = a2;
  v58 = a3;
  v68 = a4;
  v5 = sub_263640();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontConstants.Button(0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2EF0(&qword_325A18, &qword_288918);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v57 - v12;
  v61 = sub_2EF0(&qword_325A20, &qword_288920);
  __chkstk_darwin(v61);
  v65 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v62 = &v57 - v16;
  __chkstk_darwin(v17);
  v63 = &v57 - v18;
  v19 = sub_260BD0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_260B00();
  v23 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = &v57 - v27;
  v29 = *(v20 + 16);
  v29(v22, a1, v19, v26);
  v30 = v28;
  sub_260B10();
  (v29)(v22, v57, v19);
  sub_260B10();
  v31 = v58;
  sub_1ECEDC(v9);
  v32 = _s7BooksUI13FontConstantsV6ButtonV8subtitle05SwiftB00C0Vvg_0();
  sub_1F4428(v9, type metadata accessor for FontConstants.Button);
  KeyPath = swift_getKeyPath();
  v34 = &v13[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  *&v13[*(v11 + 44)] = sub_262140();
  v35 = v31 + *(type metadata accessor for ButtonView(0) + 28);
  v36 = v35 + *(type metadata accessor for ButtonViewModel(0) + 40);
  v38 = *v36;
  v37 = *(v36 + 8);
  v39 = *(v36 + 16);
  v40 = *(v36 + 24);
  if (*v36 == 2)
  {
    v41 = &enum case for BlendMode.plusLighter(_:);
  }

  else
  {
    sub_185734(*v36, *(v36 + 8), *(v36 + 16), *(v36 + 24));
    v41 = &enum case for BlendMode.normal(_:);
  }

  sub_185B20(v38, v37, v39, v40);
  v42 = sub_185B20(2uLL, 0, 0, 0);
  v44 = v66;
  v43 = v67;
  v45 = v64;
  (*(v66 + 104))(v64, *v41, v67, v42);
  v46 = v62;
  (*(v44 + 32))(&v62[*(v61 + 36)], v45, v43);
  sub_22148(v13, v46, &qword_325A18, &qword_288918);
  v47 = v63;
  sub_22148(v46, v63, &qword_325A20, &qword_288920);
  v48 = v23;
  v49 = *(v23 + 16);
  v51 = v59;
  v50 = v60;
  v49(v60, v30, v59);
  v52 = v65;
  sub_8198(v47, v65, &qword_325A20, &qword_288920);
  v53 = v68;
  v49(v68, v50, v51);
  v54 = sub_2EF0(&qword_325A28, &qword_288928);
  sub_8198(v52, &v53[*(v54 + 48)], &qword_325A20, &qword_288920);
  sub_8E80(v47, &qword_325A20, &qword_288920);
  v55 = *(v48 + 8);
  v55(v30, v51);
  sub_8E80(v52, &qword_325A20, &qword_288920);
  return (v55)(v50, v51);
}

void *sub_1F2B70@<X0>(uint64_t a1@<X8>)
{
  sub_1F37A0();
  result = sub_261CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1F2BC8(uint64_t a1)
{
  sub_1DB208(*a1, *(a1 + 8));
  sub_1F37A0();
  return sub_261CC0();
}

uint64_t sub_1F2C24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_261180();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  sub_261990();
  (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v2);
  v9 = sub_261170();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  v11 = sub_263640();
  v12 = &enum case for BlendMode.multiply(_:);
  if ((v9 & 1) == 0)
  {
    v12 = &enum case for BlendMode.screen(_:);
  }

  return (*(*(v11 - 8) + 104))(a1, *v12, v11);
}

void sub_1F2DBC(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 >= 3)
  {
    v5 = 3;
  }

  else
  {
    sub_1DB208(*a1, v4);
    v5 = v4;
  }

  sub_1DDE58(v3, v5);
  sub_1DDE58(0, 3);
  *a2 = v4 < 3;
}

void *sub_1F2E98@<X0>(uint64_t a2@<X8>)
{
  sub_1F37A0();
  result = sub_261CB0();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_1F2EF8()
{
  result = qword_3257D8;
  if (!qword_3257D8)
  {
    sub_2F9C(&qword_3257D0, &qword_288600);
    sub_1F2FB0();
    sub_8E38(&qword_3184C8, &qword_3184D0, &qword_28B880, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257D8);
  }

  return result;
}

unint64_t sub_1F2FB0()
{
  result = qword_3257E0;
  if (!qword_3257E0)
  {
    sub_2F9C(&qword_3257E8, &qword_288608);
    sub_1F3068();
    sub_8E38(&qword_321298, &qword_321278, &qword_27E848, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257E0);
  }

  return result;
}

unint64_t sub_1F3068()
{
  result = qword_3257F0;
  if (!qword_3257F0)
  {
    sub_2F9C(&qword_3257F8, &qword_288610);
    sub_1F30EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257F0);
  }

  return result;
}

unint64_t sub_1F30EC()
{
  result = qword_325800;
  if (!qword_325800)
  {
    sub_2F9C(&qword_325808, &qword_288618);
    sub_8E38(&qword_325810, &qword_325818, &qword_288620, &protocol conformance descriptor for BooksActionButton<A>);
    sub_8E38(&qword_325820, &qword_325828, &qword_288628, &protocol conformance descriptor for ShareLink<A, B, C, D>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325800);
  }

  return result;
}

uint64_t sub_1F3200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_318288, &unk_27F080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_31B3F8, &unk_270B30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = type metadata accessor for ButtonViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_1F336C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_318288, &unk_27F080);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_31B3F8, &unk_270B30);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = type metadata accessor for ButtonViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_1F34D0(uint64_t a1)
{
  sub_4BCBC(319);
  if (v1 <= 0x3F)
  {
    sub_1F356C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ButtonViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1F356C(uint64_t a1)
{
  if (!qword_31B468)
  {
    type metadata accessor for FontConstants.Button(255);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_31B468);
    }
  }
}

uint64_t sub_1F35C4()
{
  sub_2F9C(&qword_3257C8, &qword_288548);
  type metadata accessor for BooksBorderedButtonStyle(255);
  sub_2F9C(&qword_3257D0, &qword_288600);
  sub_1F2EF8();
  swift_getOpaqueTypeConformance2();
  sub_1F44AC(&qword_325830, type metadata accessor for BooksBorderedButtonStyle, &protocol conformance descriptor for BooksBorderedButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1F36D8(uint64_t a1)
{
  v2 = sub_261190();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2619C0();
}

unint64_t sub_1F37A0()
{
  result = qword_3258D0;
  if (!qword_3258D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3258D0);
  }

  return result;
}

unint64_t sub_1F3858()
{
  result = qword_3258E8;
  if (!qword_3258E8)
  {
    sub_2F9C(&qword_3258E0, &qword_288700);
    sub_8E38(&qword_3258F0, &qword_3258F8, &qword_288708, &protocol conformance descriptor for HStack<A>);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3258E8);
  }

  return result;
}

uint64_t sub_1F393C()
{
  v1 = type metadata accessor for ButtonView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = sub_2EF0(&qword_318288, &unk_27F080);
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v5(v3 + v1[5], v4);
  v6 = v3 + v1[6];
  sub_2EF0(&qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v8 = sub_261690();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v3 + v1[7];
  v5(v9, v4);
  v10 = type metadata accessor for ButtonViewModel(0);
  v5(v9 + v10[5], v4);
  v11 = v10[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_261180();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  else
  {
  }

  if (*(v9 + v10[10]) >= 3uLL)
  {
  }

  v13 = v9 + v10[11];
  type metadata accessor for ButtonViewModel.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = sub_260BD0();
      (*(*(v19 - 8) + 8))(v13, v19);
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_24;
      }

      v15 = *(sub_2EF0(&qword_325900, &qword_288710) + 64);
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:

      v15 = *(sub_2EF0(&qword_319AF8, &qword_279110) + 48);
LABEL_20:
      v20 = sub_260BD0();
      (*(*(v20 - 8) + 8))(v13 + v15, v20);
      break;
    case 4:
      v21 = sub_260BD0();
      (*(*(v21 - 8) + 8))(v13, v21);
      sub_2EF0(&qword_325908, &qword_288718);
LABEL_23:

      break;
    case 5:
      v16 = sub_260BD0();
      v17 = *(*(v16 - 8) + 8);
      v17(v13, v16);
      v18 = sub_2EF0(&qword_31E988, &qword_279108);
      v17(v13 + *(v18 + 48), v16);
      break;
  }

LABEL_24:
  v22 = (v9 + v10[13]);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_260060();
    (*(*(v23 - 8) + 8))(v22, v23);
  }

  else if (v22[3])
  {
    sub_3080(v22);
  }

  v24 = v10[14];
  v25 = sub_260BD0();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v9 + v24, 1, v25))
  {
    (*(v26 + 8))(v9 + v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1F3F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1F3FB0()
{
  result = qword_3259B0;
  if (!qword_3259B0)
  {
    sub_2F9C(&qword_325998, &qword_288860);
    sub_1F403C();
    sub_1F4258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259B0);
  }

  return result;
}

unint64_t sub_1F403C()
{
  result = qword_3259B8;
  if (!qword_3259B8)
  {
    sub_2F9C(&qword_325990, &qword_288858);
    sub_1F40C8();
    sub_1F41A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259B8);
  }

  return result;
}

unint64_t sub_1F40C8()
{
  result = qword_3259C0;
  if (!qword_3259C0)
  {
    sub_2F9C(&qword_325988, &qword_288850);
    sub_8E38(&qword_3259C8, &qword_3259A0, &qword_288868, &protocol conformance descriptor for JetLocalize<A, B, C>);
    sub_8E38(&qword_3259D0, &qword_325960, &qword_288828, &protocol conformance descriptor for JetLocalize<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259C0);
  }

  return result;
}

unint64_t sub_1F41A8()
{
  result = qword_3259D8;
  if (!qword_3259D8)
  {
    sub_2F9C(&qword_325958, &qword_288820);
    sub_8E38(&qword_3259D0, &qword_325960, &qword_288828, &protocol conformance descriptor for JetLocalize<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259D8);
  }

  return result;
}

unint64_t sub_1F4258()
{
  result = qword_3259E0;
  if (!qword_3259E0)
  {
    sub_2F9C(&qword_325940, &qword_288808);
    sub_1F42E4();
    sub_17CBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259E0);
  }

  return result;
}

unint64_t sub_1F42E4()
{
  result = qword_3259E8;
  if (!qword_3259E8)
  {
    sub_2F9C(&qword_325938, &qword_288800);
    sub_8E38(&qword_3259F0, &qword_325948, &qword_288810, &protocol conformance descriptor for VStack<A>);
    sub_10868C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259E8);
  }

  return result;
}

unint64_t sub_1F439C()
{
  result = qword_3259F8;
  if (!qword_3259F8)
  {
    sub_2F9C(&qword_3259A8, &qword_288870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259F8);
  }

  return result;
}

uint64_t sub_1F4428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1F44AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1F44F4()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ButtonView(0);
  v29 = *(*(v5 - 1) + 80);
  v28 = v1;
  v6 = v1;
  v7 = *(v2 + 8);
  v7(v0 + v3, v6);
  v8 = v0 + ((v3 + v4 + v29) & ~v29);
  v9 = sub_2EF0(&qword_318288, &unk_27F080);
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  v10(v8 + v5[5], v9);
  v11 = v8 + v5[6];
  sub_2EF0(&qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v14 = v8 + v5[7];
  v10(v14, v9);
  v15 = type metadata accessor for ButtonViewModel(0);
  v10(v14 + v15[5], v9);
  v16 = v15[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_261180();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
  }

  else
  {
  }

  if (*(v14 + v15[10]) >= 3uLL)
  {
  }

  v18 = v14 + v15[11];
  type metadata accessor for ButtonViewModel.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:

        v21 = &qword_319AF8;
        v22 = &qword_279110;
        break;
      case 4:
        v7(v18, v28);
        sub_2EF0(&qword_325908, &qword_288718);
        goto LABEL_25;
      case 5:
        v7(v18, v28);
        v21 = &qword_31E988;
        v22 = &qword_279108;
        break;
      default:
        goto LABEL_26;
    }

    v20 = *(sub_2EF0(v21, v22) + 48);
LABEL_21:
    v23 = v18 + v20;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v23 = v18;
LABEL_22:
    v7(v23, v28);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_26;
    }

    v20 = *(sub_2EF0(&qword_325900, &qword_288710) + 64);
    goto LABEL_21;
  }

LABEL_25:

LABEL_26:
  v24 = (v14 + v15[13]);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_260060();
    (*(*(v25 - 8) + 8))(v24, v25);
  }

  else if (v24[3])
  {
    sub_3080(v24);
  }

  v26 = v15[14];
  if (!(*(v2 + 48))(v14 + v26, 1, v28))
  {
    v7(v14 + v26, v28);
  }

  return swift_deallocObject();
}

uint64_t sub_1F4A1C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_260BD0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for ButtonView(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a2(a1, v2 + v5, v2 + v8, v10, v11);
}

uint64_t sub_1F4B44()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ButtonView(0);
  v6 = *(*(v5 - 1) + 80);
  v32 = *(*(v5 - 1) + 64);
  v30 = *(v2 + 8);
  v30(v0 + v3, v1);
  v31 = (v3 + v4 + v6) & ~v6;
  v7 = v0 + v31;
  v8 = sub_2EF0(&qword_318288, &unk_27F080);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v31, v8);
  v9(v0 + v31 + v5[5], v8);
  v10 = v0 + v31 + v5[6];
  sub_2EF0(&qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v0;
    v12 = v1;
    v13 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v14 = sub_261690();
    v15 = v10 + v13;
    v1 = v12;
    v0 = v11;
    (*(*(v14 - 8) + 8))(v15, v14);
  }

  else
  {
  }

  v16 = v7 + v5[7];
  v9(v16, v8);
  v17 = type metadata accessor for ButtonViewModel(0);
  v9(v16 + v17[5], v8);
  v18 = v17[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_261180();
    (*(*(v19 - 8) + 8))(v16 + v18, v19);
  }

  else
  {
  }

  if (*(v16 + v17[10]) >= 3uLL)
  {
  }

  v20 = v16 + v17[11];
  type metadata accessor for ButtonViewModel.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:

        v23 = &qword_319AF8;
        v24 = &qword_279110;
        break;
      case 4:
        v30(v20, v1);
        sub_2EF0(&qword_325908, &qword_288718);
        goto LABEL_25;
      case 5:
        v30(v20, v1);
        v23 = &qword_31E988;
        v24 = &qword_279108;
        break;
      default:
        goto LABEL_26;
    }

    v22 = *(sub_2EF0(v23, v24) + 48);
LABEL_21:
    v25 = v20 + v22;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v25 = v20;
LABEL_22:
    v30(v25, v1);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_26;
    }

    v22 = *(sub_2EF0(&qword_325900, &qword_288710) + 64);
    goto LABEL_21;
  }

LABEL_25:

LABEL_26:
  v26 = (v16 + v17[13]);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_260060();
    (*(*(v27 - 8) + 8))(v26, v27);
  }

  else if (v26[3])
  {
    sub_3080(v26);
  }

  v28 = v17[14];
  if (!(*(v2 + 48))(v16 + v28, 1, v1))
  {
    v30(v16 + v28, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1F5078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ButtonView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v2 + v10);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v2 + v11);

  return sub_1F149C(a1, v2 + v6, v2 + v9, v13, v14, v15, a2);
}

uint64_t sub_1F5198()
{
  v1 = v0;
  v2 = sub_260BD0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for ButtonView(0);
  v28 = *(*(v6 - 1) + 80);
  v27 = *(v3 + 8);
  v27(v1 + v4, v2);
  v7 = v1 + ((v4 + v5 + v28) & ~v28);
  v8 = sub_2EF0(&qword_318288, &unk_27F080);
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v9(v7 + v6[5], v8);
  v10 = v7 + v6[6];
  sub_2EF0(&qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v12 = sub_261690();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = v7 + v6[7];
  v9(v13, v8);
  v14 = type metadata accessor for ButtonViewModel(0);
  v9(v13 + v14[5], v8);
  v15 = v14[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_261180();
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
  }

  else
  {
  }

  if (*(v13 + v14[10]) >= 3uLL)
  {
  }

  v17 = v13 + v14[11];
  type metadata accessor for ButtonViewModel.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:

        v20 = &qword_319AF8;
        v21 = &qword_279110;
        break;
      case 4:
        v27(v17, v2);
        sub_2EF0(&qword_325908, &qword_288718);
        goto LABEL_25;
      case 5:
        v27(v17, v2);
        v20 = &qword_31E988;
        v21 = &qword_279108;
        break;
      default:
        goto LABEL_26;
    }

    v19 = *(sub_2EF0(v20, v21) + 48);
LABEL_21:
    v22 = v17 + v19;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v22 = v17;
LABEL_22:
    v27(v22, v2);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_26;
    }

    v19 = *(sub_2EF0(&qword_325900, &qword_288710) + 64);
    goto LABEL_21;
  }

LABEL_25:

LABEL_26:
  v23 = (v13 + v14[13]);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_260060();
    (*(*(v24 - 8) + 8))(v23, v24);
  }

  else if (v23[3])
  {
    sub_3080(v23);
  }

  v25 = v14[14];
  if (!(*(v3 + 48))(v13 + v25, 1, v2))
  {
    v27(v13 + v25, v2);
  }

  return swift_deallocObject();
}

double sub_1F56A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ButtonView(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1F1138(a1, v2 + v6, v9, a2);
}

unint64_t sub_1F5788()
{
  result = qword_325A10;
  if (!qword_325A10)
  {
    sub_2F9C(&qword_325A08, &qword_2888E0);
    sub_58070();
    sub_1F44AC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325A10);
  }

  return result;
}

uint64_t sub_1F584C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1F58B8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1F7F4C(v10, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1F5A9C@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C18, &unk_26F830);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for InteractiveStarRatingView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2616C0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void InteractiveStarRatingView.init(value:initialValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>, double a6@<D0>)
{
  *a5 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for InteractiveStarRatingView(0);
  v13 = v12[5];
  *(a5 + v13) = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  sub_2631D0();
  v14 = a5 + v12[7];
  sub_2EF0(&qword_319918, &qword_273BF0);
  sub_2631D0();

  *v14 = v17;
  v14[8] = v18;
  *(v14 + 2) = v19;
  *(a5 + v12[10]) = 5;
  *(a5 + v12[11]) = 0x4046800000000000;
  *(a5 + v12[12]) = 0x4044800000000000;
  v15 = a5 + v12[8];
  *v15 = a1;
  *(v15 + 1) = a2;
  *(v15 + 2) = a6;
  if (a4)
  {
    a3 = 0;
    *(a5 + v12[9]) = 0;
  }

  else
  {
    *(a5 + v12[9]) = a3;
  }

  v16 = (a5 + v12[6]);
  *v16 = a3;
  v16[1] = 0;
}

uint64_t type metadata accessor for InteractiveStarRatingView(uint64_t a1)
{
  result = qword_325B18;
  if (!qword_325B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InteractiveStarRatingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v61 = sub_261FB0();
  __chkstk_darwin(v61);
  v60 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2611D0();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v62 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_325A30, &qword_288990);
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v70 = &v50 - v7;
  v8 = sub_2EF0(&qword_325A38, &qword_288998);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - v10;
  v59 = sub_262370();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InteractiveStarRatingView(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v15;
  v17 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2EF0(&qword_325A40, &qword_2889A0);
  __chkstk_darwin(v56);
  v19 = &v50 - v18;
  v77 = sub_2EF0(&qword_325A48, &qword_2889A8);
  __chkstk_darwin(v77);
  v76 = &v50 - v20;
  v68 = sub_2EF0(&qword_325A50, &qword_2889B0);
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v63 = &v50 - v21;
  result = sub_261D30();
  *v19 = result;
  *(v19 + 1) = 0x4010000000000000;
  v19[16] = 0;
  v67 = v13;
  v23 = *(v2 + *(v13 + 40));
  if (v23 < 1)
  {
    __break(1u);
  }

  else
  {
    v50 = *(sub_2EF0(&qword_325A58, &unk_2889B8) + 44);
    v78 = 1;
    v79 = v23;
    swift_getKeyPath();
    v55 = v9;
    v73 = type metadata accessor for InteractiveStarRatingView;
    sub_1F7E94(v2, v17, type metadata accessor for InteractiveStarRatingView);
    v24 = *(v14 + 80);
    v53 = v6;
    v25 = (v24 + 16) & ~v24;
    v72 = v16;
    v26 = v24;
    v27 = swift_allocObject();
    v51 = type metadata accessor for InteractiveStarRatingView;
    sub_1F7F4C(v17, v27 + v25, type metadata accessor for InteractiveStarRatingView);
    sub_2EF0(&qword_325A60, &qword_2889E0);
    sub_2EF0(&qword_325A68, &qword_2889E8);
    v54 = v8;
    sub_1F71A0();
    v52 = v11;
    sub_1F722C();
    sub_2633B0();
    v28 = v57;
    sub_262350();
    sub_8E38(&qword_325A90, &qword_325A40, &qword_2889A0, &protocol conformance descriptor for HStack<A>);
    v29 = v76;
    sub_262C70();
    (*(v58 + 8))(v28, v59);
    sub_1F7370(v19);
    v74 = v2;
    v30 = v73;
    sub_1F7E94(v2, v17, v73);
    v75 = v26;
    v31 = swift_allocObject();
    v32 = v51;
    sub_1F7F4C(v17, v31 + v25, v51);
    v33 = &v29[*(v77 + 36)];
    *v33 = sub_35F54;
    v33[1] = 0;
    v33[2] = sub_1F73D8;
    v33[3] = v31;
    sub_262190();
    v34 = v62;
    sub_2611A0();
    sub_1F7E94(v2, v17, v30);
    v35 = swift_allocObject();
    v36 = v32;
    sub_1F7F4C(v17, v35 + v25, v32);
    sub_1F7EFC(&qword_325A98, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
    sub_1F7EFC(&qword_325AA0, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
    v37 = v70;
    v38 = v65;
    sub_2633F0();

    (*(v64 + 8))(v34, v38);
    sub_1F7E94(v74, v17, v30);
    v39 = swift_allocObject();
    sub_1F7F4C(v17, v39 + v25, v36);
    sub_8E38(&qword_325AA8, &qword_325A30, &qword_288990, &protocol conformance descriptor for _ChangedGesture<A>);
    v40 = v52;
    v41 = v53;
    sub_2633E0();

    (*(v71 + 8))(v37, v41);
    sub_2611F0();
    v42 = sub_1F74FC();
    v43 = sub_8E38(&qword_325AB8, &qword_325A38, &qword_288998, &protocol conformance descriptor for _EndedGesture<A>);
    v44 = v63;
    v45 = v76;
    v46 = v77;
    v47 = v54;
    sub_262DE0();
    (*(v55 + 8))(v40, v47);
    sub_1F7624(v45);
    v82 = *(v74 + *(v67 + 36));
    sub_1F7E94(v74, v17, v73);
    v48 = swift_allocObject();
    sub_1F7F4C(v17, v48 + v25, v36);
    v78 = v46;
    v79 = v47;
    v80 = v42;
    v81 = v43;
    swift_getOpaqueTypeConformance2();
    v49 = v68;
    sub_262E50();

    return (*(v66 + 8))(v44, v49);
  }

  return result;
}

void *sub_1F6910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_261180();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v34 - v16);
  v18 = *a1;
  v38 = sub_2630B0();
  v37 = sub_262570();
  KeyPath = swift_getKeyPath();
  v19 = (a2 + *(type metadata accessor for InteractiveStarRatingView(0) + 24));
  v20 = *v19;
  v21 = v19[1];
  *&v39 = v20;
  *(&v39 + 1) = v21;
  sub_2EF0(&qword_325B80, &qword_288A80);
  result = sub_2631E0();
  v23 = ceil(v42);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v18 <= v23)
  {
    sub_1F58B8(v17);
    sub_1F7E94(v17, v11, type metadata accessor for ColorConstants.Environment);
    v26 = v35;
    (*(v35 + 104))(v8, enum case for ColorScheme.dark(_:), v6);
    sub_1F7EFC(&qword_3183A0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
    v27 = sub_264390();
    v28 = *(v26 + 8);
    v28(v8, v6);
    v28(v11, v6);
    if (v27)
    {
      v29 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v29 = sub_262F80();
    }

    v25 = v29;
  }

  else
  {
    sub_1F58B8(v14);
    v24 = [objc_opt_self() quaternaryLabelColor];
    v25 = sub_263070();
    v17 = v14;
  }

  sub_60B08(v17);
  v30 = swift_getKeyPath();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  result = sub_2613A0();
  v32 = KeyPath;
  v31 = v37;
  *a3 = v38;
  *(a3 + 8) = v32;
  *(a3 + 16) = v31;
  *(a3 + 24) = v30;
  *(a3 + 32) = v25;
  v33 = v40;
  *(a3 + 40) = v39;
  *(a3 + 56) = v33;
  *(a3 + 72) = v41;
  return result;
}

uint64_t sub_1F6CF0(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for InteractiveStarRatingView(0);
  sub_2EF0(&qword_31CE10, &qword_273FD0);
  return sub_2631F0();
}

void *sub_1F6D70(uint64_t a1, uint64_t a2)
{
  v3 = sub_2616C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for InteractiveStarRatingView(0);
  v11 = (a2 + v10[7]);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = v11[2];
  v33 = v12;
  LOBYTE(v34) = v13;
  v35 = v14;
  sub_2EF0(&qword_31CE10, &qword_273FD0);
  result = sub_2631E0();
  if ((v32 & 1) == 0)
  {
    v16 = v31;
    sub_2611C0();
    v18 = v17;
    sub_2611B0();
    v20 = v18 + v19;
    if (v20 >= v16)
    {
      v20 = v16;
    }

    if (v20 < 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v20;
    }

    v22 = *(a2 + v10[10]);
    sub_1F5A9C(v9);
    (*(v4 + 104))(v6, enum case for LayoutDirection.leftToRight(_:), v3);
    v23 = sub_2616B0();
    v24 = *(v4 + 8);
    v24(v6, v3);
    v24(v9, v3);
    v25 = v16 - v21;
    if (v23)
    {
      v25 = v21;
    }

    v26 = fmax(v25 / (v16 / v22), 1.0);
    v27 = (a2 + v10[6]);
    v28 = *v27;
    v29 = v27[1];
    v33 = v28;
    if (v26 > v22)
    {
      v26 = v22;
    }

    v34 = v29;
    v31 = v26;
    sub_2EF0(&qword_325B80, &qword_288A80);
    return sub_2631F0();
  }

  return result;
}

uint64_t sub_1F6FBC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InteractiveStarRatingView(0);
  sub_2EF0(&qword_325B80, &qword_288A80);
  sub_2631E0();
  sub_2EF0(&qword_325B88, &unk_288A88);
  return sub_263330();
}

void *sub_1F706C(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for InteractiveStarRatingView(0);
  sub_2EF0(&qword_325B80, &qword_288A80);
  result = sub_2631E0();
  if (v3 != v5)
  {
    return sub_2631F0();
  }

  return result;
}

void *sub_1F7120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InteractiveStarRatingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1F6910(a1, v6, a2);
}

unint64_t sub_1F71A0()
{
  result = qword_325A70;
  if (!qword_325A70)
  {
    sub_2F9C(&qword_325A60, &qword_2889E0);
    sub_C09B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325A70);
  }

  return result;
}

unint64_t sub_1F722C()
{
  result = qword_325A78;
  if (!qword_325A78)
  {
    sub_2F9C(&qword_325A68, &qword_2889E8);
    sub_1F72B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325A78);
  }

  return result;
}

unint64_t sub_1F72B8()
{
  result = qword_325A80;
  if (!qword_325A80)
  {
    sub_2F9C(&qword_325A88, &unk_2889F0);
    sub_3076C();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325A80);
  }

  return result;
}

uint64_t sub_1F7370(uint64_t a1)
{
  v2 = sub_2EF0(&qword_325A40, &qword_2889A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F73D8(uint64_t *a1)
{
  v3 = *(type metadata accessor for InteractiveStarRatingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1F6CF0(a1, v4);
}

uint64_t sub_1F7478(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for InteractiveStarRatingView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1F74FC()
{
  result = qword_325AB0;
  if (!qword_325AB0)
  {
    sub_2F9C(&qword_325A48, &qword_2889A8);
    sub_2F9C(&qword_325A40, &qword_2889A0);
    sub_8E38(&qword_325A90, &qword_325A40, &qword_2889A0, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3175F0, &qword_3175F8, &qword_288A00, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325AB0);
  }

  return result;
}

uint64_t sub_1F7624(uint64_t a1)
{
  v2 = sub_2EF0(&qword_325A48, &qword_2889A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F768C()
{
  v1 = type metadata accessor for InteractiveStarRatingView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_261180();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2616C0();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

void *sub_1F7850(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for InteractiveStarRatingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1F706C(a1, a2, v6);
}

uint64_t sub_1F7900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_319458, &unk_26CF30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1F7A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_319458, &unk_26CF30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1F7B60(uint64_t a1)
{
  sub_1C35B4(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_1C35B4(319, &qword_3194C8, &type metadata accessor for LayoutDirection);
    if (v2 <= 0x3F)
    {
      sub_1F7D24(319, &qword_325B28, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_1F7CC0(319);
        if (v4 <= 0x3F)
        {
          sub_1F7D24(319, &unk_325B30, &type metadata accessor for Binding);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1F7CC0(uint64_t a1)
{
  if (!qword_31CDB8)
  {
    sub_2F9C(&qword_319918, &qword_273BF0);
    v1 = sub_263210();
    if (!v2)
    {
      atomic_store(v1, &qword_31CDB8);
    }
  }
}

void sub_1F7D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Double);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1F7D78()
{
  sub_2F9C(&qword_325A50, &qword_2889B0);
  sub_2F9C(&qword_325A48, &qword_2889A8);
  sub_2F9C(&qword_325A38, &qword_288998);
  sub_1F74FC();
  sub_8E38(&qword_325AB8, &qword_325A38, &qword_288998, &protocol conformance descriptor for _EndedGesture<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1F7E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1F7EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1F7F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1F7FC4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v2, v10, &qword_3173E0, &qword_26B890);
  if (v11 == 1)
  {
    return sub_F7CC(v10, a1);
  }

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

double sub_1F8134()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    return *(v0 + 48);
  }

  sub_264900();
  v7 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_1F8280@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318148, &unk_26AEE0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BrickLockupView(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261690();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1F8488@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BrickLockupView(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_20DCBC(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1F8674@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BrickLockupView(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_20DCBC(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1F8860@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_325B90, &qword_288C30);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BrickLockupView(0);
  sub_8198(v1 + *(v10 + 36), v9, &qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_20DCBC(v9, a1, type metadata accessor for FontConstants.Brick);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t BrickLockupView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v4 = type metadata accessor for BrickLockupView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v7 = v4[8];
  *(a2 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = v4[9];
  *(a2 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_325B90, &qword_288C30);
  swift_storeEnumTagMultiPayload();
  return sub_20DCBC(a1, a2 + v4[10], type metadata accessor for BrickLockupModel);
}

uint64_t type metadata accessor for BrickLockupView(uint64_t a1)
{
  result = qword_325C78;
  if (!qword_325C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BrickLockupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v88 = a1;
  v87 = sub_2EF0(&qword_3174E0, &qword_26B310);
  __chkstk_darwin(v87);
  v86 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v85 = &v80 - v5;
  v6 = sub_261690();
  v103 = *(v6 - 8);
  v104 = v6;
  __chkstk_darwin(v6);
  v102 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v101 = &v80 - v9;
  v84 = sub_2EF0(&qword_3174E8, &qword_269970);
  __chkstk_darwin(v84);
  v83 = &v80 - v10;
  v107 = sub_2617E0();
  __chkstk_darwin(v107);
  v100 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261FA0();
  v98 = *(v12 - 8);
  v99 = v12;
  __chkstk_darwin(v12);
  v97 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_262F00();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261180();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v19 - 8);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v22 - 8);
  v24 = (&v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = type metadata accessor for BrickLockupView(0);
  v25 = *(v92 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v92);
  *&v90 = sub_2EF0(&qword_325B98, &qword_288C38);
  __chkstk_darwin(v90);
  v28 = &v80 - v27;
  v91 = sub_2EF0(&qword_325BA0, &qword_288C40);
  __chkstk_darwin(v91);
  v93 = &v80 - v29;
  v30 = sub_2EF0(&qword_325BA8, &qword_288C48);
  v95 = *(v30 - 8);
  v96 = v30;
  __chkstk_darwin(v30);
  v94 = &v80 - v31;
  v105 = sub_2EF0(&qword_325BB0, &qword_288C50);
  __chkstk_darwin(v105);
  v106 = &v80 - v32;
  sub_20DD24(v1, &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BrickLockupView);
  v33 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v89 = swift_allocObject();
  sub_20DCBC(&v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v89 + v33, type metadata accessor for BrickLockupView);
  sub_1F8674(v24);
  sub_20DD24(v24, v21, type metadata accessor for ColorConstants.Environment);
  (*(v16 + 104))(v18, enum case for ColorScheme.dark(_:), v15);
  sub_20DBBC(&qword_3183A0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  v34 = sub_264390();
  v35 = *(v16 + 8);
  v35(v18, v15);
  sub_20D990(v24, type metadata accessor for ColorConstants);
  v35(v21, v15);
  if (v34)
  {
    (*(v81 + 104))(v80, enum case for Color.RGBColorSpace.sRGB(_:), v82);
    v36 = sub_263060();
  }

  else
  {
    sub_1F8674(v24);
    v36 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    sub_20D990(v24, type metadata accessor for ColorConstants);
  }

  v37 = sub_262500();
  v38 = &v28[*(v90 + 36)];
  v39 = *(v107 + 20);
  v40 = enum case for RoundedCornerStyle.continuous(_:);
  v41 = sub_261DD0();
  v42 = *(*(v41 - 8) + 104);
  v42(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #10.0 }

  v90 = _Q0;
  *v38 = _Q0;
  *&v38[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  v48 = v89;
  *v28 = sub_209524;
  *(v28 + 1) = v48;
  *(v28 + 2) = v36;
  v28[24] = v37;
  v49 = v2 + *(v92 + 40);
  v50 = *(v49 + *(type metadata accessor for BrickLockupModel(0) + 20));
  v51 = v28;
  v52 = v93;
  sub_22148(v51, v93, &qword_325B98, &qword_288C38);
  v53 = v52 + *(v91 + 36);
  *v53 = v50;
  *(v53 + 8) = 0;
  v54 = v97;
  sub_2618C0();
  sub_2095A4();
  sub_20DBBC(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v55 = v94;
  v56 = v99;
  sub_262AA0();
  (*(v98 + 8))(v54, v56);
  sub_8E80(v52, &qword_325BA0, &qword_288C40);
  v57 = v100;
  v42(&v100[*(v107 + 20)], v40, v41);
  *v57 = v90;
  sub_262F80();
  v58 = sub_263000();

  v59 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v61 = v60;
  v62 = v106;
  v63 = &v106[*(v105 + 36)];
  sub_20DD24(v57, v63, &type metadata accessor for RoundedRectangle);
  v64 = v63 + *(sub_2EF0(&qword_318970, &unk_280C60) + 36);
  *v64 = v58;
  *(v64 + 8) = xmmword_26BA30;
  *(v64 + 24) = 0x4018000000000000;
  v65 = (v63 + *(sub_2EF0(&qword_318978, &qword_26BEA8) + 36));
  *v65 = v59;
  v65[1] = v61;
  (*(v95 + 32))(v62, v55, v96);
  sub_20D990(v57, &type metadata accessor for RoundedRectangle);
  v66 = v103;
  v67 = v104;
  v68 = *(v103 + 104);
  v69 = v101;
  v68(v101, enum case for DynamicTypeSize.xSmall(_:), v104);
  v70 = v102;
  v68(v102, enum case for DynamicTypeSize.accessibility3(_:), v67);
  sub_20DBBC(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_264380();
  if (result)
  {
    v72 = *(v66 + 32);
    v73 = v85;
    v72(v85, v69, v67);
    v74 = v87;
    v72((v73 + *(v87 + 48)), v70, v67);
    v75 = v86;
    sub_8198(v73, v86, &qword_3174E0, &qword_26B310);
    v76 = *(v74 + 48);
    v77 = v83;
    v72(v83, v75, v67);
    v78 = *(v66 + 8);
    v78(v75 + v76, v67);
    sub_22148(v73, v75, &qword_3174E0, &qword_26B310);
    v72((v77 + *(v84 + 36)), (v75 + *(v74 + 48)), v67);
    v78(v75, v67);
    sub_2097CC();
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    v79 = v106;
    sub_262B70();
    sub_8E80(v77, &qword_3174E8, &qword_269970);
    return sub_8E80(v79, &qword_325BB0, &qword_288C50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1F98F8@<X0>(uint64_t (*a1)()@<X1>, uint64_t a2@<X8>)
{
  v881 = a2;
  v788 = sub_2EF0(&qword_325CD0, &qword_288CE8);
  __chkstk_darwin(v788);
  v795 = (&v769 - v3);
  v790 = sub_2EF0(&qword_325CD8, &qword_288CF0);
  v772 = *(v790 - 8);
  __chkstk_darwin(v790);
  v776 = &v769 - v4;
  v783 = sub_2EF0(&qword_325CE0, &qword_288CF8);
  __chkstk_darwin(v783);
  v786 = &v769 - v5;
  v828 = sub_2EF0(&qword_325CE8, &qword_288D00);
  __chkstk_darwin(v828);
  v789 = &v769 - v6;
  v782 = sub_2EF0(&qword_325CF0, &qword_288D08);
  __chkstk_darwin(v782);
  v794 = (&v769 - v7);
  v787 = sub_2EF0(&qword_325CF8, &qword_288D10);
  v770 = *(v787 - 8);
  __chkstk_darwin(v787);
  v774 = &v769 - v8;
  v781 = sub_2EF0(&qword_325D00, &qword_288D18);
  __chkstk_darwin(v781);
  v793 = (&v769 - v9);
  v785 = sub_2EF0(&qword_325D08, &qword_288D20);
  v771 = *(v785 - 8);
  __chkstk_darwin(v785);
  v775 = &v769 - v10;
  v778 = sub_2EF0(&qword_325D10, &qword_288D28);
  __chkstk_darwin(v778);
  v780 = &v769 - v11;
  v808 = sub_2EF0(&qword_325D18, &qword_288D30);
  __chkstk_darwin(v808);
  v784 = &v769 - v12;
  v802 = sub_2EF0(&qword_3174E0, &qword_26B310);
  __chkstk_darwin(v802);
  v803 = &v769 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v801 = &v769 - v15;
  v805 = sub_2EF0(&qword_3174E8, &qword_269970);
  __chkstk_darwin(v805);
  v804 = &v769 - v16;
  v777 = sub_2EF0(&qword_325D20, &qword_288D38);
  __chkstk_darwin(v777);
  v792 = (&v769 - v17);
  v779 = sub_2EF0(&qword_325D28, &qword_288D40);
  v769 = *(v779 - 8);
  __chkstk_darwin(v779);
  v773 = &v769 - v18;
  v824 = sub_2EF0(&qword_325D30, &qword_288D48);
  __chkstk_darwin(v824);
  v826 = &v769 - v19;
  v806 = sub_2EF0(&qword_325D38, &qword_288D50);
  __chkstk_darwin(v806);
  v807 = &v769 - v20;
  v825 = sub_2EF0(&qword_325D40, &qword_288D58);
  __chkstk_darwin(v825);
  v809 = &v769 - v21;
  v880 = sub_2EF0(&qword_325D48, &qword_288D60);
  __chkstk_darwin(v880);
  v827 = &v769 - v22;
  v878 = sub_2EF0(&qword_325D50, &qword_288D68);
  __chkstk_darwin(v878);
  v879 = &v769 - v23;
  v821 = sub_2EF0(&qword_325D58, &qword_288D70);
  __chkstk_darwin(v821);
  v823 = &v769 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v822 = (&v769 - v26);
  v846 = sub_2EF0(&qword_325D60, &qword_288D78);
  __chkstk_darwin(v846);
  v838 = (&v769 - v27);
  v844 = sub_2EF0(&qword_325D68, &qword_288D80);
  __chkstk_darwin(v844);
  v845 = &v769 - v28;
  v870 = sub_2EF0(&qword_325D70, &qword_288D88);
  __chkstk_darwin(v870);
  v847 = &v769 - v29;
  v818 = sub_2EF0(&qword_325D78, &qword_288D90);
  __chkstk_darwin(v818);
  v820 = &v769 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v819 = (&v769 - v32);
  v843 = sub_2EF0(&qword_325D80, &qword_288D98);
  __chkstk_darwin(v843);
  v837 = (&v769 - v33);
  v815 = sub_2EF0(&qword_325D88, &qword_288DA0);
  __chkstk_darwin(v815);
  v817 = &v769 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v816 = (&v769 - v36);
  v841 = sub_2EF0(&qword_325D90, &qword_288DA8);
  __chkstk_darwin(v841);
  v836 = (&v769 - v37);
  v839 = sub_2EF0(&qword_325D98, &qword_288DB0);
  __chkstk_darwin(v839);
  v840 = &v769 - v38;
  v863 = sub_2EF0(&qword_325DA0, &qword_288DB8);
  __chkstk_darwin(v863);
  v842 = &v769 - v39;
  v859 = sub_2EF0(&qword_325DA8, &qword_288DC0);
  v858 = *(v859 - 8);
  __chkstk_darwin(v859);
  v857 = &v769 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v856 = &v769 - v42;
  v865 = sub_2EF0(&qword_325DB0, &qword_288DC8);
  __chkstk_darwin(v865);
  v854 = (&v769 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v886 = (&v769 - v45);
  v46 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v46 - 8);
  v888 = &v769 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v48 - 8);
  v887 = (&v769 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v884 = type metadata accessor for BrickLockupView(0);
  v871 = *(v884 - 8);
  __chkstk_darwin(v884);
  v796 = &v769 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v877 = v50;
  __chkstk_darwin(v51);
  v875 = &v769 - v52;
  v833 = sub_2EF0(&qword_325DB8, &qword_288DD0);
  __chkstk_darwin(v833);
  v834 = &v769 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v855 = (&v769 - v55);
  v832 = sub_262F00();
  v830 = *(v832 - 8);
  __chkstk_darwin(v832);
  v831 = &v769 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v853 = sub_2EF0(&qword_325DC0, &qword_288DD8);
  __chkstk_darwin(v853);
  v848 = (&v769 - v57);
  v58 = sub_2EF0(&qword_316208, &qword_268BD0);
  v873 = *(v58 - 8);
  __chkstk_darwin(v58 - 8);
  v798 = &v769 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v885 = &v769 - v61;
  v874 = v62;
  __chkstk_darwin(v63);
  v889 = &v769 - v64;
  v893 = sub_260BD0();
  v891 = *(v893 - 8);
  __chkstk_darwin(v893);
  v797 = &v769 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v876 = &v769 - v67;
  v872 = v68;
  __chkstk_darwin(v69);
  v890 = &v769 - v70;
  v866 = sub_2EF0(&qword_325DC8, &qword_288DE0);
  __chkstk_darwin(v866);
  v868 = (&v769 - v71);
  v860 = sub_2EF0(&qword_325DD0, &qword_288DE8);
  __chkstk_darwin(v860);
  v861 = &v769 - v72;
  v850 = sub_2EF0(&qword_325DD8, &qword_288DF0);
  __chkstk_darwin(v850);
  v851 = &v769 - v73;
  v864 = sub_2EF0(&qword_325DE0, &qword_288DF8);
  __chkstk_darwin(v864);
  v852 = (&v769 - v74);
  v867 = sub_2EF0(&qword_325DE8, &qword_288E00);
  __chkstk_darwin(v867);
  v862 = &v769 - v75;
  v849 = sub_2EF0(&qword_325DF0, &qword_288E08);
  __chkstk_darwin(v849);
  v791 = &v769 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v835 = &v769 - v78;
  v882 = sub_2EF0(&qword_325DF8, &qword_288E10);
  __chkstk_darwin(v882);
  v869 = (&v769 - v79);
  v883 = type metadata accessor for BrickLockupModel.BrickType(0);
  __chkstk_darwin(v883);
  v829 = (&v769 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v81);
  v83 = (&v769 - v82);
  __chkstk_darwin(v84);
  v86 = &v769 - v85;
  v87 = sub_261690();
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v90 = &v769 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v93 = (&v769 - v92);
  sub_261420();
  v95 = v94;
  sub_1F8280(v93);
  v810 = *(v88 + 104);
  v811 = v88 + 104;
  (v810)(v90, enum case for DynamicTypeSize.xxxLarge(_:), v87);
  v812 = sub_20DBBC(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v96 = sub_264360();
  v800 = v88;
  v98 = *(v88 + 8);
  v97 = (v88 + 8);
  v814 = v90;
  v99 = v90;
  v100 = v87;
  v98(v99, v87);
  v813 = v93;
  v799 = v98;
  v98(v93, v87);
  v101 = a1;
  v102 = v884;
  v892 = v101;
  if ((v96 & 1) == 0)
  {
LABEL_7:
    v105 = v101 + *(v102 + 40);
    sub_20DD24(v105, v83, type metadata accessor for BrickLockupModel.BrickType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v107 = v101;
    v108 = v83;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v176 = sub_2EF0(&qword_325BD0, &qword_288C60);
          v177 = v176[12];
          v178 = (v83 + v176[16]);
          v180 = *v178;
          v179 = v178[1];
          v855 = v180;
          v883 = v179;
          v884 = *(v83 + v176[20]);
          LODWORD(v861) = *(v83 + v176[24]);
          v181 = v891;
          v182 = *(v891 + 32);
          v852 = (v891 + 32);
          v853 = v182;
          v183 = v890;
          v184 = v893;
          v182(v890, v83, v893);
          v185 = v889;
          sub_22148(v83 + v177, v889, &qword_316208, &qword_268BD0);
          v186 = sub_261D10();
          v187 = v837;
          *v837 = v186;
          v187[1] = 0;
          *(v187 + 16) = 0;
          v862 = v187 + *(sub_2EF0(&qword_325F10, &qword_288E70) + 44);
          v188 = sub_261E60();
          v189 = v886;
          *v886 = v188;
          v189[1] = 0x4020000000000000;
          *(v189 + 16) = 0;
          v860 = (v189 + *(sub_2EF0(&qword_325E08, &qword_288E20) + 44));
          v190 = v887;
          sub_1F8488(v887);
          v863 = type metadata accessor for SizeConstants.Environment;
          v191 = v888;
          sub_20DCBC(v190, v888, type metadata accessor for SizeConstants.Environment);
          v864 = type metadata accessor for SizeConstants.Spacing;
          sub_20D990(v191, type metadata accessor for SizeConstants.Spacing);
          v192 = v876;
          (*(v181 + 16))(v876, v183, v184);
          v193 = v875;
          sub_20DD24(v107, v875, type metadata accessor for BrickLockupView);
          v194 = v885;
          sub_8198(v185, v885, &qword_316208, &qword_268BD0);
          v195 = (*(v181 + 80) + 16) & ~*(v181 + 80);
          v196 = (v872 + *(v871 + 80) + v195) & ~*(v871 + 80);
          v197 = (v877 + *(v873 + 80) + v196) & ~*(v873 + 80);
          v198 = (v874 + v197 + 7) & 0xFFFFFFFFFFFFFFF8;
          v199 = swift_allocObject();
          (v853)(v199 + v195, v192, v184);
          sub_20DCBC(v193, v199 + v196, type metadata accessor for BrickLockupView);
          sub_22148(v194, v199 + v197, &qword_316208, &qword_268BD0);
          v200 = (v199 + v198);
          v201 = v883;
          *v200 = v855;
          v200[1] = v201;

          sub_2EF0(&qword_325E10, &qword_288E28);
          sub_260A70();
          sub_260A50();
          sub_8E38(&qword_325E18, &qword_325E10, &qword_288E28, &protocol conformance descriptor for TupleView<A>);
          sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
          sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
          v202 = v856;
          sub_260A80();
          v203 = v887;
          sub_1F8488(v887);
          v204 = v888;
          v205 = v863;
          sub_20DCBC(v203, v888, v863);
          sub_20D990(v204, v864);
          v206 = v858;
          v207 = v858[2];
          v208 = v857;
          v209 = v859;
          v207(v857, v202, v859);
          v210 = v860;
          *v860 = 0x4030000000000000;
          *(v210 + 8) = 0;
          v211 = sub_2EF0(&qword_325E20, &qword_288E30);
          v207(v210 + *(v211 + 48), v208, v209);
          v212 = v210 + *(v211 + 64);
          *v212 = 0x4030000000000000;
          v212[8] = 0;
          v213 = v206[1];
          v213(v202, v209);
          v213(v208, v209);
          LOBYTE(v203) = sub_262530();
          v214 = v887;
          sub_1F8488(v887);
          v215 = v888;
          sub_20DCBC(v214, v888, v205);
          v216 = v864;
          sub_20D990(v215, v864);
          sub_2610C0();
          v218 = v217;
          v220 = v219;
          v222 = v221;
          v224 = v223;
          v225 = sub_2EF0(&qword_325E28, &qword_288E38);
          v226 = v886;
          v227 = v886 + *(v225 + 36);
          *v227 = v203;
          *(v227 + 1) = v218;
          *(v227 + 2) = v220;
          *(v227 + 3) = v222;
          *(v227 + 4) = v224;
          v227[40] = 0;
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v228 = (v226 + *(v865 + 36));
          v229 = v912;
          *v228 = v911;
          v228[1] = v229;
          v228[2] = v913;
          v230 = sub_263550();
          v231 = v819;
          *v819 = v230;
          *(v231 + 8) = v232;
          v233 = sub_2EF0(&qword_325F18, &qword_288E78);
          sub_20713C(v884, v861, v231 + *(v233 + 44), v95);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v234 = (v231 + *(sub_2EF0(&qword_325F20, &qword_288E80) + 36));
          v235 = *v922;
          *v234 = v921;
          v234[1] = v235;
          v234[2] = *&v922[16];
          LOBYTE(v203) = sub_262530();
          sub_1F8488(v214);
          sub_20DCBC(v214, v215, v863);
          sub_20D990(v215, v216);
          sub_2610C0();
          v237 = v236;
          v239 = v238;
          v241 = v240;
          v243 = v242;
          v244 = v231 + *(sub_2EF0(&qword_325F28, &qword_288E88) + 36);
          *v244 = v203;
          *(v244 + 8) = v237;
          *(v244 + 16) = v239;
          *(v244 + 24) = v241;
          *(v244 + 32) = v243;
          *(v244 + 40) = 0;
          *(v231 + *(v818 + 36)) = xmmword_288B10;
          v245 = v854;
          sub_8198(v226, v854, &qword_325DB0, &qword_288DC8);
          v246 = v820;
          sub_8198(v231, v820, &qword_325D78, &qword_288D90);
          v247 = v862;
          sub_8198(v245, v862, &qword_325DB0, &qword_288DC8);
          v248 = sub_2EF0(&qword_325F30, &qword_288E90);
          sub_8198(v246, v247 + *(v248 + 48), &qword_325D78, &qword_288D90);
          sub_8E80(v231, &qword_325D78, &qword_288D90);
          sub_8E80(v226, &qword_325DB0, &qword_288DC8);
          sub_8E80(v246, &qword_325D78, &qword_288D90);
          sub_8E80(v245, &qword_325DB0, &qword_288DC8);

          v249 = &qword_325D80;
          v250 = &qword_288D98;
          v251 = v837;
          sub_8198(v837, v845, &qword_325D80, &qword_288D98);
        }

        else
        {
          v475 = sub_2EF0(&qword_325BD8, &unk_289180);
          v476 = v475[12];
          v477 = (v83 + v475[16]);
          v479 = *v477;
          v478 = v477[1];
          v855 = v479;
          v883 = v478;
          v884 = *(v83 + v475[20]);
          v480 = v475[24];
          v481 = v891;
          v482 = *(v891 + 32);
          v852 = (v891 + 32);
          v853 = v482;
          LODWORD(v861) = *(v83 + v480);
          v483 = v890;
          v484 = v893;
          v482(v890, v83, v893);
          v485 = v889;
          sub_22148(v83 + v476, v889, &qword_316208, &qword_268BD0);
          v486 = sub_261D10();
          v487 = v838;
          *v838 = v486;
          v487[1] = 0;
          *(v487 + 16) = 0;
          v862 = v487 + *(sub_2EF0(&qword_325E00, &qword_288E18) + 44);
          v488 = sub_261E60();
          v489 = v886;
          *v886 = v488;
          v489[1] = 0x4020000000000000;
          *(v489 + 16) = 0;
          v860 = (v489 + *(sub_2EF0(&qword_325E08, &qword_288E20) + 44));
          v490 = v887;
          sub_1F8488(v887);
          v863 = type metadata accessor for SizeConstants.Environment;
          v491 = v888;
          sub_20DCBC(v490, v888, type metadata accessor for SizeConstants.Environment);
          v864 = type metadata accessor for SizeConstants.Spacing;
          sub_20D990(v491, type metadata accessor for SizeConstants.Spacing);
          v492 = v876;
          (*(v481 + 16))(v876, v483, v484);
          v493 = v875;
          sub_20DD24(v107, v875, type metadata accessor for BrickLockupView);
          v494 = v885;
          sub_8198(v485, v885, &qword_316208, &qword_268BD0);
          v495 = (*(v481 + 80) + 16) & ~*(v481 + 80);
          v496 = (v872 + *(v871 + 80) + v495) & ~*(v871 + 80);
          v497 = (v877 + *(v873 + 80) + v496) & ~*(v873 + 80);
          v498 = (v874 + v497 + 7) & 0xFFFFFFFFFFFFFFF8;
          v499 = swift_allocObject();
          (v853)(v499 + v495, v492, v484);
          sub_20DCBC(v493, v499 + v496, type metadata accessor for BrickLockupView);
          sub_22148(v494, v499 + v497, &qword_316208, &qword_268BD0);
          v500 = (v499 + v498);
          v501 = v883;
          *v500 = v855;
          v500[1] = v501;

          sub_2EF0(&qword_325E10, &qword_288E28);
          sub_260A70();
          sub_260A50();
          sub_8E38(&qword_325E18, &qword_325E10, &qword_288E28, &protocol conformance descriptor for TupleView<A>);
          sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
          sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
          v502 = v856;
          sub_260A80();
          v503 = v887;
          sub_1F8488(v887);
          v504 = v888;
          v505 = v863;
          sub_20DCBC(v503, v888, v863);
          sub_20D990(v504, v864);
          v506 = v858;
          v507 = v858[2];
          v508 = v857;
          v509 = v859;
          v507(v857, v502, v859);
          v510 = v860;
          *v860 = 0x4030000000000000;
          *(v510 + 8) = 0;
          v511 = sub_2EF0(&qword_325E20, &qword_288E30);
          v507(v510 + *(v511 + 48), v508, v509);
          v512 = v510 + *(v511 + 64);
          *v512 = 0x4030000000000000;
          v512[8] = 0;
          v513 = v506[1];
          v513(v502, v509);
          v513(v508, v509);
          LOBYTE(v503) = sub_262530();
          v514 = v887;
          sub_1F8488(v887);
          v515 = v888;
          sub_20DCBC(v514, v888, v505);
          v516 = v864;
          sub_20D990(v515, v864);
          sub_2610C0();
          v518 = v517;
          v520 = v519;
          v522 = v521;
          v524 = v523;
          v525 = sub_2EF0(&qword_325E28, &qword_288E38);
          v526 = v886;
          v527 = v886 + *(v525 + 36);
          *v527 = v503;
          *(v527 + 1) = v518;
          *(v527 + 2) = v520;
          *(v527 + 3) = v522;
          *(v527 + 4) = v524;
          v527[40] = 0;
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v528 = (v526 + *(v865 + 36));
          v529 = v912;
          *v528 = v911;
          v528[1] = v529;
          v528[2] = v913;
          v530 = sub_263550();
          v531 = v822;
          *v822 = v530;
          *(v531 + 8) = v532;
          v533 = sub_2EF0(&qword_325E30, &qword_288E40);
          sub_207BD4(v884, v861, v531 + *(v533 + 44), v95);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v534 = (v531 + *(sub_2EF0(&qword_325E38, &qword_288E48) + 36));
          v535 = *v922;
          *v534 = v921;
          v534[1] = v535;
          v534[2] = *&v922[16];
          LOBYTE(v503) = sub_262530();
          sub_1F8488(v514);
          sub_20DCBC(v514, v515, v863);
          sub_20D990(v515, v516);
          sub_2610C0();
          v537 = v536;
          v539 = v538;
          v541 = v540;
          v543 = v542;
          v544 = v531 + *(sub_2EF0(&qword_325E40, &qword_288E50) + 36);
          *v544 = v503;
          *(v544 + 8) = v537;
          *(v544 + 16) = v539;
          *(v544 + 24) = v541;
          *(v544 + 32) = v543;
          *(v544 + 40) = 0;
          *(v531 + *(v821 + 36)) = xmmword_288B10;
          v545 = v854;
          sub_8198(v526, v854, &qword_325DB0, &qword_288DC8);
          v546 = v823;
          sub_8198(v531, v823, &qword_325D58, &qword_288D70);
          v547 = v862;
          sub_8198(v545, v862, &qword_325DB0, &qword_288DC8);
          v548 = sub_2EF0(&qword_325E48, &qword_288E58);
          sub_8198(v546, v547 + *(v548 + 48), &qword_325D58, &qword_288D70);
          sub_8E80(v531, &qword_325D58, &qword_288D70);
          sub_8E80(v526, &qword_325DB0, &qword_288DC8);
          sub_8E80(v546, &qword_325D58, &qword_288D70);
          sub_8E80(v545, &qword_325DB0, &qword_288DC8);

          v249 = &qword_325D60;
          v250 = &qword_288D78;
          v251 = v838;
          sub_8198(v838, v845, &qword_325D60, &qword_288D78);
        }

        swift_storeEnumTagMultiPayload();
        sub_8E38(&qword_325E50, &qword_325D80, &qword_288D98, &protocol conformance descriptor for HStack<A>);
        sub_8E38(&qword_325E58, &qword_325D60, &qword_288D78, &protocol conformance descriptor for HStack<A>);
        v472 = v847;
        sub_261F80();
        v473 = &qword_325D70;
        v474 = &qword_288D88;
        sub_8198(v472, v868, &qword_325D70, &qword_288D88);
        swift_storeEnumTagMultiPayload();
        goto LABEL_28;
      }

      v342 = sub_2EF0(&qword_325BC8, &unk_2891A0);
      v343 = v342[12];
      v344 = (v83 + v342[16]);
      v346 = *v344;
      v345 = v344[1];
      v851 = v346;
      v884 = v345;
      v347 = (v83 + v342[20]);
      v348 = v347[7];
      v926 = v347[6];
      v927 = v348;
      v349 = v347[5];
      v924 = v347[4];
      v925 = v349;
      v350 = v347[1];
      v921 = *v347;
      *v922 = v350;
      v351 = v347[3];
      *&v922[16] = v347[2];
      v923 = v351;
      v352 = v891;
      v353 = *(v891 + 32);
      v849 = v891 + 32;
      v850 = v353;
      v354 = v890;
      v355 = v893;
      v353(v890, v83, v893);
      v356 = v889;
      sub_22148(v83 + v343, v889, &qword_316208, &qword_268BD0);
      v357 = sub_261D10();
      v358 = v836;
      *v836 = v357;
      v358[1] = 0;
      *(v358 + 16) = 0;
      v855 = (v358 + *(sub_2EF0(&qword_325F38, &qword_288E98) + 44));
      v359 = sub_261E60();
      v360 = v886;
      *v886 = v359;
      v360[1] = 0x4020000000000000;
      *(v360 + 16) = 0;
      v853 = v360 + *(sub_2EF0(&qword_325E08, &qword_288E20) + 44);
      v361 = v887;
      sub_1F8488(v887);
      v852 = type metadata accessor for SizeConstants.Environment;
      v362 = v888;
      sub_20DCBC(v361, v888, type metadata accessor for SizeConstants.Environment);
      v883 = type metadata accessor for SizeConstants.Spacing;
      sub_20D990(v362, type metadata accessor for SizeConstants.Spacing);
      v363 = v876;
      (*(v352 + 16))(v876, v354, v355);
      v364 = v875;
      sub_20DD24(v107, v875, type metadata accessor for BrickLockupView);
      v365 = v885;
      sub_8198(v356, v885, &qword_316208, &qword_268BD0);
      v366 = (*(v352 + 80) + 16) & ~*(v352 + 80);
      v367 = (v872 + *(v871 + 80) + v366) & ~*(v871 + 80);
      v368 = (v877 + *(v873 + 80) + v367) & ~*(v873 + 80);
      v369 = (v874 + v368 + 7) & 0xFFFFFFFFFFFFFFF8;
      v370 = swift_allocObject();
      v850(v370 + v366, v363, v355);
      sub_20DCBC(v364, v370 + v367, type metadata accessor for BrickLockupView);
      sub_22148(v365, v370 + v368, &qword_316208, &qword_268BD0);
      v371 = (v370 + v369);
      v372 = v884;
      *v371 = v851;
      v371[1] = v372;

      sub_2EF0(&qword_325E10, &qword_288E28);
      sub_260A70();
      sub_260A50();
      sub_8E38(&qword_325E18, &qword_325E10, &qword_288E28, &protocol conformance descriptor for TupleView<A>);
      sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
      sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
      v373 = v856;
      sub_260A80();
      v374 = v887;
      sub_1F8488(v887);
      v375 = v888;
      v376 = v852;
      sub_20DCBC(v374, v888, v852);
      sub_20D990(v375, v883);
      v377 = v858;
      v378 = v858[2];
      v379 = v857;
      v380 = v859;
      v378(v857, v373, v859);
      v381 = v853;
      *v853 = 0x4030000000000000;
      *(v381 + 8) = 0;
      v382 = sub_2EF0(&qword_325E20, &qword_288E30);
      v378((v381 + *(v382 + 48)), v379, v380);
      v383 = v381 + *(v382 + 64);
      *v383 = 0x4030000000000000;
      *(v383 + 8) = 0;
      v384 = v377[1];
      v384(v373, v380);
      v384(v379, v380);
      LOBYTE(v374) = sub_262530();
      v385 = v887;
      sub_1F8488(v887);
      v386 = v888;
      v387 = v376;
      sub_20DCBC(v385, v888, v376);
      v388 = v883;
      sub_20D990(v386, v883);
      sub_2610C0();
      v390 = v389;
      v392 = v391;
      v394 = v393;
      v396 = v395;
      v397 = sub_2EF0(&qword_325E28, &qword_288E38);
      v398 = v886;
      v399 = v886 + *(v397 + 36);
      *v399 = v374;
      *(v399 + 1) = v390;
      *(v399 + 2) = v392;
      *(v399 + 3) = v394;
      *(v399 + 4) = v396;
      v399[40] = 0;
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_2613A0();
      v400 = (v398 + *(v865 + 36));
      v401 = v918;
      *v400 = v917;
      v400[1] = v401;
      v400[2] = v919;
      v402 = sub_263550();
      v403 = v816;
      *v816 = v402;
      *(v403 + 8) = v404;
      v405 = sub_2EF0(&qword_325F40, &qword_288EA0);
      sub_206CDC(&v921, v403 + *(v405 + 44), v95);
      LOBYTE(v374) = sub_262510();
      sub_1F8488(v385);
      sub_20DCBC(v385, v386, v387);
      sub_20D990(v386, v388);
      sub_2610C0();
      v407 = v406;
      v409 = v408;
      v411 = v410;
      v413 = v412;
      v414 = v403 + *(sub_2EF0(&qword_325F48, &qword_288EA8) + 36);
      *v414 = v374;
      *(v414 + 8) = v407;
      *(v414 + 16) = v409;
      *(v414 + 24) = v411;
      *(v414 + 32) = v413;
      *(v414 + 40) = 0;
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_2613A0();
      v415 = (v403 + *(v815 + 36));
      v416 = v912;
      *v415 = v911;
      v415[1] = v416;
      v415[2] = v913;
      v417 = v854;
      sub_8198(v398, v854, &qword_325DB0, &qword_288DC8);
      v418 = v817;
      sub_8198(v403, v817, &qword_325D88, &qword_288DA0);
      v419 = v855;
      sub_8198(v417, v855, &qword_325DB0, &qword_288DC8);
      v420 = sub_2EF0(&qword_325F50, &qword_288EB0);
      sub_8198(v418, v419 + *(v420 + 48), &qword_325D88, &qword_288DA0);
      sub_8E80(v403, &qword_325D88, &qword_288DA0);
      sub_8E80(v398, &qword_325DB0, &qword_288DC8);
      sub_8E80(v418, &qword_325D88, &qword_288DA0);
      sub_8E80(v417, &qword_325DB0, &qword_288DC8);

      sub_2F8C4(&v921);
      v249 = &qword_325D90;
      v250 = &qword_288DA8;
      v251 = v836;
      sub_8198(v836, v840, &qword_325D90, &qword_288DA8);
      swift_storeEnumTagMultiPayload();
      sub_20DB28(&qword_325E98, &qword_325DB0, &qword_288DC8, sub_20A3EC);
      sub_8E38(&qword_325EB8, &qword_325D90, &qword_288DA8, &protocol conformance descriptor for HStack<A>);
      v421 = v842;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v328 = *v83;
        v327 = v108[1];
        v329 = type metadata accessor for BrickLockupModel(0);
        v330 = *(v105 + *(v329 + 20));
        sub_1F7FC4(&v921);
        v331 = *&v922[8];
        v332 = *&v922[16];
        sub_2E18(&v921, *&v922[8]);
        *&v911 = v328;
        *(&v911 + 1) = v327;
        LOBYTE(v912) = 1;
        v333 = sub_1F8134();
        BYTE2(v917) = -2;
        LOWORD(v917) = -772;
        v334 = (*(v332 + 16))(&v911, &v917, v331, v332, v95, v95 / v330, v333);
        sub_3080(&v921);
        type metadata accessor for ImageResourceLoader(0);
        v335 = swift_allocObject();
        *(v335 + 16) = 0;
        sub_2EF0(&qword_318728, &qword_26DBF0);
        v336 = swift_allocObject();
        *(v336 + 28) = 0;
        *(v336 + 16) = 0;
        *(v336 + 24) = 0;
        *(v335 + 24) = v336;
        sub_2603B0();
        *&v911 = v335;

        sub_2631D0();

        v337 = v921;
        *&v921 = sub_208AA0;
        *(&v921 + 1) = 0;
        *v922 = v334;
        *&v922[8] = v337;
        v338 = (v105 + *(v329 + 24));
        v339 = v338[1];
        if (v339)
        {
          v340 = *v338;
          v341 = v339;
        }

        else
        {
          v340 = 0;
          v341 = 0xE000000000000000;
        }

        v549 = v879;
        *&v911 = v340;
        *(&v911 + 1) = v341;

        sub_2EF0(&qword_3188A8, &qword_26BDD0);
        sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0, &protocol conformance descriptor for AsyncResourceImage<A>);
        sub_10A84();
        v601 = v835;
        sub_262C00();

        swift_unknownObjectRelease();

        sub_8198(v601, v851, &qword_325DF0, &qword_288E08);
        swift_storeEnumTagMultiPayload();
        sub_20A13C();
        sub_20A224();
        v602 = v852;
        sub_261F80();
        sub_8198(v602, v861, &qword_325DE0, &qword_288DF8);
        swift_storeEnumTagMultiPayload();
        sub_20A0B0();
        sub_20A308();
        v603 = v862;
        sub_261F80();
        sub_8E80(v602, &qword_325DE0, &qword_288DF8);
        sub_8198(v603, v868, &qword_325DE8, &qword_288E00);
        swift_storeEnumTagMultiPayload();
        sub_20A02C(&qword_325E60, &qword_325DE8, &qword_288E00, sub_20A308);
        sub_20A4A4();
        v172 = v869;
        sub_261F80();
        sub_8E80(v603, &qword_325DE8, &qword_288E00);
        sub_8E80(v835, &qword_325DF0, &qword_288E08);
        goto LABEL_30;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v109 = sub_2EF0(&qword_325BB8, &qword_2891B0);
        v110 = *(v109 + 48);
        v111 = (v83 + *(v109 + 64));
        v113 = *v111;
        v884 = v111[1];
        v112 = v884;
        v114 = *(v891 + 32);
        v857 = (v891 + 32);
        v858 = v114;
        (v114)(v890, v108, v893);
        sub_22148(v108 + v110, v889, &qword_316208, &qword_268BD0);
        v115 = enum case for Color.RGBColorSpace.sRGB(_:);
        v116 = v831;
        v117 = *(v830 + 104);
        v118 = v832;
        v117(v831, enum case for Color.RGBColorSpace.sRGB(_:), v832);
        v886 = sub_263060();
        v117(v116, v115, v118);
        v119 = sub_263060();
        v120 = sub_263520();
        v121 = v848;
        *v848 = v120;
        v121[1] = v122;
        v883 = (v121 + *(sub_2EF0(&qword_325F58, &qword_288EB8) + 44));
        v123 = *(v105 + *(type metadata accessor for BrickLockupModel(0) + 20));
        sub_1F7FC4(&v921);
        v124 = *&v922[8];
        v125 = *&v922[16];
        sub_2E18(&v921, *&v922[8]);
        *&v911 = v113;
        *(&v911 + 1) = v112;
        LOBYTE(v912) = 1;
        v126 = sub_1F8134();
        BYTE2(v917) = -2;
        LOWORD(v917) = -772;
        v859 = (*(v125 + 16))(&v911, &v917, v124, v125, v95, v95 / v123, v126);
        sub_3080(&v921);
        type metadata accessor for ImageResourceLoader(0);
        v127 = swift_allocObject();
        *(v127 + 16) = 0;
        sub_2EF0(&qword_318728, &qword_26DBF0);
        v128 = swift_allocObject();
        *(v128 + 28) = 0;
        *(v128 + 16) = 0;
        *(v128 + 24) = 0;
        *(v127 + 24) = v128;
        sub_2603B0();
        *&v911 = v127;
        sub_2631D0();
        v854 = *(&v921 + 1);
        v856 = v921;
        LOBYTE(v921) = 1;
        sub_2EF0(&qword_3205C0, &qword_27C958);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_269100;
        *(v129 + 32) = v886;
        *(v129 + 40) = v119;
        v865 = v119;

        sub_263730();
        sub_263740();
        sub_263470();
        sub_261590();
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v130 = sub_261E60();
        v131 = v855;
        *v855 = v130;
        v131[1] = 0x4020000000000000;
        *(v131 + 16) = 0;
        v847 = *(sub_2EF0(&qword_325F60, &qword_288EC0) + 44);
        v132 = v891;
        v133 = v876;
        v134 = v893;
        (*(v891 + 16))(v876, v890, v893);
        v135 = v875;
        sub_20DD24(v107, v875, type metadata accessor for BrickLockupView);
        sub_8198(v889, v885, &qword_316208, &qword_268BD0);
        v136 = (*(v132 + 80) + 16) & ~*(v132 + 80);
        v137 = (v872 + *(v871 + 80) + v136) & ~*(v871 + 80);
        v138 = (v877 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
        v139 = (*(v873 + 80) + v138 + 8) & ~*(v873 + 80);
        v140 = (v874 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
        v141 = swift_allocObject();
        (v858)(v141 + v136, v133, v134);
        sub_20DCBC(v135, v141 + v137, type metadata accessor for BrickLockupView);
        *(v141 + v138) = v95;
        sub_22148(v885, v141 + v139, &qword_316208, &qword_268BD0);
        v142 = (v141 + v140);
        *v142 = 0;
        v142[1] = 0;
        sub_2EF0(&qword_325F68, &qword_288EC8);
        sub_260A70();
        sub_260A50();
        sub_8E38(&qword_325F70, &qword_325F68, &qword_288EC8, &protocol conformance descriptor for TupleView<A>);
        sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
        sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
        v143 = v855;
        sub_260A80();
        LOBYTE(v137) = sub_262500();
        v144 = v887;
        sub_1F8488(v887);
        v145 = v888;
        sub_20DCBC(v144, v888, type metadata accessor for SizeConstants.Environment);
        sub_20D990(v145, type metadata accessor for SizeConstants.Spacing);
        sub_2610C0();
        v146 = v143;
        v147 = v143 + *(v833 + 36);
        *v147 = v137;
        *(v147 + 1) = v148;
        *(v147 + 2) = v149;
        *(v147 + 3) = v150;
        *(v147 + 4) = v151;
        v147[40] = 0;
        v152 = v834;
        sub_8198(v146, v834, &qword_325DB8, &qword_288DD0);
        v892 = sub_208AA0;
        v906 = sub_208AA0;
        v907 = 0;
        v153 = v859;
        *&v908 = v859;
        v154 = v856;
        *(&v908 + 1) = v856;
        v155 = v854;
        v909 = v854;
        v156 = v908;
        v157 = v883;
        *v883 = sub_208AA0;
        *(v157 + 1) = v156;
        *(v157 + 2) = v909;
        v158 = v900;
        v911 = v900;
        v912 = v901;
        v914 = v903;
        v915 = v904;
        v159 = v902;
        v913 = v902;
        *(v157 + 9) = v901;
        v160 = v905;
        v916 = v905;
        v910 = 257;
        *(v157 + 24) = 257;
        *(v157 + 7) = v158;
        v162 = v903;
        v161 = v904;
        v157[17] = v160;
        *(v157 + 15) = v161;
        *(v157 + 13) = v162;
        *(v157 + 11) = v159;
        v163 = v157;
        v164 = sub_2EF0(&qword_325F78, &qword_288ED0);
        sub_8198(v152, v163 + *(v164 + 64), &qword_325DB8, &qword_288DD0);
        sub_8198(&v906, &v921, &qword_325F80, &qword_288ED8);
        sub_8198(&v911, &v921, &qword_3205C8, &unk_27C960);
        sub_8E80(v855, &qword_325DB8, &qword_288DD0);
        sub_8E80(v152, &qword_325DB8, &qword_288DD0);
        *&v922[16] = v902;
        v923 = v903;
        v924 = v904;
        *&v925 = v905;
        v921 = v900;
        *v922 = v901;
        sub_8E80(&v921, &qword_3205C8, &unk_27C960);
        v917 = v892;
        *&v918 = v153;
        *(&v918 + 1) = v154;
        v919 = v155;
        v920 = 257;
        sub_8E80(&v917, &qword_325F80, &qword_288ED8);

        v165 = v848;
        v166 = (v848 + *(v853 + 36));
        v167 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
        v168 = enum case for ColorScheme.dark(_:);
        v169 = sub_261180();
        (*(*(v169 - 8) + 104))(v166 + v167, v168, v169);
        *v166 = swift_getKeyPath();
        sub_8198(v165, v851, &qword_325DC0, &qword_288DD8);
        swift_storeEnumTagMultiPayload();
        sub_20A13C();
        sub_20A224();
        v170 = v852;
        sub_261F80();
        sub_8198(v170, v861, &qword_325DE0, &qword_288DF8);
        swift_storeEnumTagMultiPayload();
        sub_20A0B0();
        sub_20A308();
        v171 = v862;
        sub_261F80();
        sub_8E80(v170, &qword_325DE0, &qword_288DF8);
        sub_8198(v171, v868, &qword_325DE8, &qword_288E00);
        swift_storeEnumTagMultiPayload();
        sub_20A02C(&qword_325E60, &qword_325DE8, &qword_288E00, sub_20A308);
        sub_20A4A4();
        v172 = v869;
        sub_261F80();
        sub_8E80(v171, &qword_325DE8, &qword_288E00);
        v173 = v165;
        v174 = &qword_325DC0;
        v175 = &qword_288DD8;
LABEL_29:
        sub_8E80(v173, v174, v175);
        sub_8E80(v889, &qword_316208, &qword_268BD0);
        (*(v891 + 8))(v890, v893);
        v549 = v879;
LABEL_30:
        sub_8198(v172, v549, &qword_325DF8, &qword_288E10);
        swift_storeEnumTagMultiPayload();
        sub_20A584();
        sub_20A63C();
        sub_261F80();
        return sub_8E80(v172, &qword_325DF8, &qword_288E10);
      }

      v422 = sub_2EF0(&qword_325BC0, &qword_288C58);
      v423 = *(v422 + 48);
      v424 = (v83 + *(v422 + 64));
      v426 = *v424;
      v425 = v424[1];
      v853 = v426;
      v855 = v425;
      v427 = v891;
      v428 = *(v891 + 32);
      v851 = v891 + 32;
      v852 = v428;
      v429 = v890;
      v430 = v893;
      (v428)(v890, v83, v893);
      v431 = v83 + v423;
      v432 = v889;
      sub_22148(v431, v889, &qword_316208, &qword_268BD0);
      v433 = sub_261E60();
      v434 = v886;
      *v886 = v433;
      v434[1] = 0x4020000000000000;
      *(v434 + 16) = 0;
      v854 = (v434 + *(sub_2EF0(&qword_325E08, &qword_288E20) + 44));
      v435 = v887;
      sub_1F8488(v887);
      v884 = type metadata accessor for SizeConstants.Environment;
      v436 = v888;
      sub_20DCBC(v435, v888, type metadata accessor for SizeConstants.Environment);
      v883 = type metadata accessor for SizeConstants.Spacing;
      sub_20D990(v436, type metadata accessor for SizeConstants.Spacing);
      v437 = v876;
      v438 = v430;
      (*(v427 + 16))(v876, v429, v430);
      v439 = v875;
      sub_20DD24(v107, v875, type metadata accessor for BrickLockupView);
      v440 = v885;
      sub_8198(v432, v885, &qword_316208, &qword_268BD0);
      v441 = (*(v427 + 80) + 16) & ~*(v427 + 80);
      v442 = (v872 + *(v871 + 80) + v441) & ~*(v871 + 80);
      v443 = (v877 + *(v873 + 80) + v442) & ~*(v873 + 80);
      v444 = (v874 + v443 + 7) & 0xFFFFFFFFFFFFFFF8;
      v445 = swift_allocObject();
      (v852)(v445 + v441, v437, v438);
      sub_20DCBC(v439, v445 + v442, type metadata accessor for BrickLockupView);
      sub_22148(v440, v445 + v443, &qword_316208, &qword_268BD0);
      v446 = (v445 + v444);
      v447 = v855;
      *v446 = v853;
      v446[1] = v447;

      sub_2EF0(&qword_325E10, &qword_288E28);
      sub_260A70();
      sub_260A50();
      sub_8E38(&qword_325E18, &qword_325E10, &qword_288E28, &protocol conformance descriptor for TupleView<A>);
      sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
      sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
      v448 = v856;
      sub_260A80();
      v449 = v887;
      sub_1F8488(v887);
      v450 = v888;
      sub_20DCBC(v449, v888, v884);
      sub_20D990(v450, v883);
      v451 = v858;
      v452 = v858[2];
      v453 = v857;
      v454 = v859;
      v452(v857, v448, v859);
      v455 = v854;
      *v854 = 0x4030000000000000;
      *(v455 + 8) = 0;
      v456 = sub_2EF0(&qword_325E20, &qword_288E30);
      v452(v455 + *(v456 + 48), v453, v454);
      v457 = v455 + *(v456 + 64);
      *v457 = 0x4030000000000000;
      v457[8] = 0;
      v458 = v451[1];
      v458(v448, v454);
      v458(v453, v454);

      LOBYTE(v443) = sub_262530();
      sub_1F8488(v449);
      v459 = v888;
      sub_20DCBC(v449, v888, v884);
      sub_20D990(v459, v883);
      sub_2610C0();
      v461 = v460;
      v463 = v462;
      v465 = v464;
      v467 = v466;
      v468 = sub_2EF0(&qword_325E28, &qword_288E38);
      v251 = v886;
      v469 = v886 + *(v468 + 36);
      *v469 = v443;
      *(v469 + 1) = v461;
      *(v469 + 2) = v463;
      *(v469 + 3) = v465;
      *(v469 + 4) = v467;
      v469[40] = 0;
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_2613A0();
      v470 = (v251 + *(v865 + 36));
      v471 = *v922;
      *v470 = v921;
      v470[1] = v471;
      v470[2] = *&v922[16];
      v249 = &qword_325DB0;
      v250 = &qword_288DC8;
      sub_8198(v251, v840, &qword_325DB0, &qword_288DC8);
      swift_storeEnumTagMultiPayload();
      sub_20DB28(&qword_325E98, &qword_325DB0, &qword_288DC8, sub_20A3EC);
      sub_8E38(&qword_325EB8, &qword_325D90, &qword_288DA8, &protocol conformance descriptor for HStack<A>);
      v421 = v842;
    }

    sub_261F80();
    sub_8198(v421, v861, &qword_325DA0, &qword_288DB8);
    swift_storeEnumTagMultiPayload();
    sub_20A0B0();
    sub_20A308();
    v472 = v862;
    sub_261F80();
    sub_8E80(v421, &qword_325DA0, &qword_288DB8);
    v473 = &qword_325DE8;
    v474 = &qword_288E00;
    sub_8198(v472, v868, &qword_325DE8, &qword_288E00);
    swift_storeEnumTagMultiPayload();
LABEL_28:
    sub_20A02C(&qword_325E60, &qword_325DE8, &qword_288E00, sub_20A308);
    sub_20A4A4();
    v172 = v869;
    sub_261F80();
    sub_8E80(v472, v473, v474);
    v173 = v251;
    v174 = v249;
    v175 = v250;
    goto LABEL_29;
  }

  sub_20DD24(v101 + *(v884 + 40), v86, type metadata accessor for BrickLockupModel.BrickType);
  v103 = swift_getEnumCaseMultiPayload();
  if (v103 == 1)
  {
    v104 = *(sub_2EF0(&qword_325BB8, &qword_2891B0) + 48);

    sub_8E80(&v86[v104], &qword_316208, &qword_268BD0);
    (*(v891 + 8))(v86, v893);
    goto LABEL_6;
  }

  if (!v103)
  {
    sub_20D990(v86, type metadata accessor for BrickLockupModel.BrickType);
LABEL_6:
    v101 = v892;
    goto LABEL_7;
  }

  v886 = v97;
  sub_20D990(v86, type metadata accessor for BrickLockupModel.BrickType);
  v252 = v892 + *(v102 + 40);
  v253 = v829;
  sub_20DD24(v252, v829, type metadata accessor for BrickLockupModel.BrickType);
  v254 = swift_getEnumCaseMultiPayload();
  if (v254 <= 2)
  {
    v255 = v893;
    v256 = v890;
    if (!v254)
    {
      v605 = *v253;
      v604 = v253[1];
      v606 = v879;
      if (qword_315870 != -1)
      {
        swift_once();
      }

      v607 = sub_260D50();
      sub_B080(v607, qword_316000);
      v608 = sub_260D30();
      v609 = sub_264900();
      if (os_log_type_enabled(v608, v609))
      {
        v610 = swift_slowAlloc();
        *v610 = 0;
        _os_log_impl(&dword_0, v608, v609, "Editorial artwork only BrickType has the same layout for both AX style so this should be handle and never get here", v610, 2u);
      }

      v611 = type metadata accessor for BrickLockupModel(0);
      v612 = *&v252[*(v611 + 20)];
      sub_1F7FC4(&v921);
      v613 = *&v922[8];
      v614 = *&v922[16];
      sub_2E18(&v921, *&v922[8]);
      *&v911 = v605;
      *(&v911 + 1) = v604;
      LOBYTE(v912) = 1;
      v615 = sub_1F8134();
      BYTE2(v917) = -2;
      LOWORD(v917) = -772;
      v616 = (*(v614 + 16))(&v911, &v917, v613, v614, v95, v95 / v612, v615);
      sub_3080(&v921);
      type metadata accessor for ImageResourceLoader(0);
      v617 = swift_allocObject();
      *(v617 + 16) = 0;
      sub_2EF0(&qword_318728, &qword_26DBF0);
      v618 = swift_allocObject();
      *(v618 + 28) = 0;
      *(v618 + 16) = 0;
      *(v618 + 24) = 0;
      *(v617 + 24) = v618;
      sub_2603B0();
      *&v911 = v617;

      sub_2631D0();

      v619 = v921;
      *&v921 = sub_208AA0;
      *(&v921 + 1) = 0;
      *v922 = v616;
      *&v922[8] = v619;
      v620 = &v252[*(v611 + 24)];
      v621 = *(v620 + 1);
      if (v621)
      {
        v622 = *v620;
        v623 = v621;
      }

      else
      {
        v622 = 0;
        v623 = 0xE000000000000000;
      }

      *&v911 = v622;
      *(&v911 + 1) = v623;

      sub_2EF0(&qword_3188A8, &qword_26BDD0);
      sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0, &protocol conformance descriptor for AsyncResourceImage<A>);
      sub_10A84();
      v766 = v791;
      sub_262C00();

      swift_unknownObjectRelease();

      sub_8198(v766, v851, &qword_325DF0, &qword_288E08);
      swift_storeEnumTagMultiPayload();
      sub_20A13C();
      sub_20A224();
      v767 = v852;
      sub_261F80();
      sub_8198(v767, v807, &qword_325DE0, &qword_288DF8);
      swift_storeEnumTagMultiPayload();
      sub_20A0B0();
      sub_20A6F4();
      v768 = v809;
      sub_261F80();
      sub_8E80(v767, &qword_325DE0, &qword_288DF8);
      sub_8198(v768, v826, &qword_325D40, &qword_288D58);
      swift_storeEnumTagMultiPayload();
      sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
      sub_20A8B0();
      v326 = v827;
      sub_261F80();
      sub_8E80(v768, &qword_325D40, &qword_288D58);
      sub_8E80(v791, &qword_325DF0, &qword_288E08);
      goto LABEL_51;
    }

    if (v254 == 1)
    {
      v257 = sub_2EF0(&qword_325BB8, &qword_2891B0);
      v258 = *(v257 + 48);
      v259 = (v253 + *(v257 + 64));
      v260 = v259[1];
      v870 = *v259;
      v261 = *(v891 + 32);
      v883 = (v891 + 32);
      v876 = v261;
      (v261)(v797, v253, v255);
      sub_22148(v253 + v258, v798, &qword_316208, &qword_268BD0);
      if (qword_315870 == -1)
      {
LABEL_18:
        v262 = sub_260D50();
        sub_B080(v262, qword_316000);
        v263 = sub_260D30();
        v264 = sub_264900();
        v265 = os_log_type_enabled(v263, v264);
        v266 = v892;
        if (v265)
        {
          v267 = swift_slowAlloc();
          *v267 = 0;
          _os_log_impl(&dword_0, v263, v264, "Editorial artwork BrickType has the same layout for both AX style so this should be handle and never get here", v267, 2u);
        }

        v268 = enum case for Color.RGBColorSpace.sRGB(_:);
        v269 = v831;
        v270 = *(v830 + 104);
        v271 = v832;
        v270(v831, enum case for Color.RGBColorSpace.sRGB(_:), v832);
        v272 = sub_263060();
        v270(v269, v268, v271);
        v273 = sub_263060();
        v274 = sub_263520();
        v275 = v848;
        *v848 = v274;
        v275[1] = v276;
        v886 = (v275 + *(sub_2EF0(&qword_325F58, &qword_288EB8) + 44));
        v277 = *&v252[*(type metadata accessor for BrickLockupModel(0) + 20)];
        sub_1F7FC4(&v921);
        v278 = *&v922[8];
        v279 = *&v922[16];
        sub_2E18(&v921, *&v922[8]);
        *&v911 = v870;
        v869 = v260;
        *(&v911 + 1) = v260;
        LOBYTE(v912) = 1;
        v280 = sub_1F8134();
        BYTE2(v917) = -2;
        LOWORD(v917) = -772;
        v870 = (*(v279 + 16))(&v911, &v917, v278, v279, v95, v95 / v277, v280);
        sub_3080(&v921);
        type metadata accessor for ImageResourceLoader(0);
        v281 = swift_allocObject();
        *(v281 + 16) = 0;
        sub_2EF0(&qword_318728, &qword_26DBF0);
        v282 = swift_allocObject();
        *(v282 + 28) = 0;
        *(v282 + 16) = 0;
        *(v282 + 24) = 0;
        *(v281 + 24) = v282;
        sub_2603B0();
        *&v911 = v281;
        sub_2631D0();
        v867 = *(&v921 + 1);
        v868 = v921;
        LOBYTE(v921) = 1;
        sub_2EF0(&qword_3205C0, &qword_27C958);
        v283 = swift_allocObject();
        *(v283 + 16) = xmmword_269100;
        v885 = v272;
        *(v283 + 32) = v272;
        *(v283 + 40) = v273;
        v884 = v273;

        sub_263730();
        sub_263740();
        sub_263470();
        sub_261590();
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v284 = sub_261E60();
        v285 = v855;
        *v855 = v284;
        v285[1] = 0x4020000000000000;
        *(v285 + 16) = 0;
        v866 = *(sub_2EF0(&qword_325F60, &qword_288EC0) + 44);
        v286 = v891;
        v287 = v890;
        (*(v891 + 16))(v890, v797, v893);
        v288 = v875;
        sub_20DD24(v266, v875, type metadata accessor for BrickLockupView);
        v289 = v889;
        sub_8198(v798, v889, &qword_316208, &qword_268BD0);
        v290 = (*(v286 + 80) + 16) & ~*(v286 + 80);
        v291 = (v872 + *(v871 + 80) + v290) & ~*(v871 + 80);
        v292 = (v877 + v291 + 7) & 0xFFFFFFFFFFFFFFF8;
        v293 = (*(v873 + 80) + v292 + 8) & ~*(v873 + 80);
        v294 = (v874 + v293 + 7) & 0xFFFFFFFFFFFFFFF8;
        v295 = swift_allocObject();
        (v876)(v295 + v290, v287, v893);
        sub_20DCBC(v288, v295 + v291, type metadata accessor for BrickLockupView);
        *(v295 + v292) = v95;
        sub_22148(v289, v295 + v293, &qword_316208, &qword_268BD0);
        v296 = (v295 + v294);
        *v296 = 0;
        v296[1] = 0;
        sub_2EF0(&qword_325F68, &qword_288EC8);
        sub_260A70();
        sub_260A50();
        sub_8E38(&qword_325F70, &qword_325F68, &qword_288EC8, &protocol conformance descriptor for TupleView<A>);
        sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
        sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
        v297 = v855;
        sub_260A80();
        LOBYTE(v289) = sub_262500();
        v298 = v887;
        sub_1F8488(v887);
        v299 = v888;
        sub_20DCBC(v298, v888, type metadata accessor for SizeConstants.Environment);
        sub_20D990(v299, type metadata accessor for SizeConstants.Spacing);
        sub_2610C0();
        v300 = v297 + *(v833 + 36);
        *v300 = v289;
        *(v300 + 1) = v301;
        *(v300 + 2) = v302;
        *(v300 + 3) = v303;
        *(v300 + 4) = v304;
        v300[40] = 0;
        v305 = v834;
        sub_8198(v297, v834, &qword_325DB8, &qword_288DD0);
        v892 = sub_208AA0;
        v906 = sub_208AA0;
        v907 = 0;
        v306 = v870;
        *&v908 = v870;
        v307 = v868;
        *(&v908 + 1) = v868;
        v308 = v867;
        v909 = v867;
        v309 = v908;
        v310 = v886;
        *v886 = sub_208AA0;
        *(v310 + 1) = v309;
        *(v310 + 2) = v909;
        v311 = v894;
        v911 = v894;
        v912 = v895;
        v312 = v898;
        v313 = v896;
        v314 = v897;
        v914 = v897;
        v915 = v898;
        v913 = v896;
        *(v310 + 9) = v895;
        *(v310 + 7) = v311;
        v315 = v899;
        v916 = v899;
        v910 = 257;
        *(v310 + 24) = 257;
        v310[17] = v315;
        *(v310 + 15) = v312;
        *(v310 + 13) = v314;
        *(v310 + 11) = v313;
        v316 = v310;
        v317 = sub_2EF0(&qword_325F78, &qword_288ED0);
        sub_8198(v305, v316 + *(v317 + 64), &qword_325DB8, &qword_288DD0);
        sub_8198(&v906, &v921, &qword_325F80, &qword_288ED8);
        sub_8198(&v911, &v921, &qword_3205C8, &unk_27C960);
        sub_8E80(v855, &qword_325DB8, &qword_288DD0);
        sub_8E80(v305, &qword_325DB8, &qword_288DD0);
        *&v922[16] = v896;
        v923 = v897;
        v924 = v898;
        *&v925 = v899;
        v921 = v894;
        *v922 = v895;
        sub_8E80(&v921, &qword_3205C8, &unk_27C960);
        v917 = v892;
        *&v918 = v306;
        *(&v918 + 1) = v307;
        v919 = v308;
        v920 = 257;
        sub_8E80(&v917, &qword_325F80, &qword_288ED8);

        v318 = v848;
        v319 = (v848 + *(v853 + 36));
        v320 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
        v321 = enum case for ColorScheme.dark(_:);
        v322 = sub_261180();
        (*(*(v322 - 8) + 104))(v319 + v320, v321, v322);
        *v319 = swift_getKeyPath();
        sub_8198(v318, v851, &qword_325DC0, &qword_288DD8);
        swift_storeEnumTagMultiPayload();
        sub_20A13C();
        sub_20A224();
        v323 = v852;
        sub_261F80();
        sub_8198(v323, v807, &qword_325DE0, &qword_288DF8);
        swift_storeEnumTagMultiPayload();
        sub_20A0B0();
        sub_20A6F4();
        v324 = v809;
        sub_261F80();
        sub_8E80(v323, &qword_325DE0, &qword_288DF8);
        sub_8198(v324, v826, &qword_325D40, &qword_288D58);
        swift_storeEnumTagMultiPayload();
        sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
        sub_20A8B0();
        v325 = v827;
        sub_261F80();
        v326 = v325;
        sub_8E80(v324, &qword_325D40, &qword_288D58);
        sub_8E80(v318, &qword_325DC0, &qword_288DD8);
        sub_8E80(v798, &qword_316208, &qword_268BD0);
        (*(v891 + 8))(v797, v893);
        goto LABEL_50;
      }

LABEL_55:
      swift_once();
      goto LABEL_18;
    }

    v678 = sub_2EF0(&qword_325BC0, &qword_288C58);
    v679 = *(v678 + 48);
    v680 = v253 + *(v678 + 64);
    v682 = *v680;
    v681 = *(v680 + 1);
    v887 = v682;
    v884 = v681;
    v683 = v891;
    v684 = *(v891 + 32);
    v870 = v891 + 32;
    v883 = v684;
    (v684)(v256, v253, v255);
    v685 = v889;
    sub_22148(v253 + v679, v889, &qword_316208, &qword_268BD0);
    v686 = sub_261E50();
    v687 = v792;
    *v792 = v686;
    v687[1] = 0;
    *(v687 + 16) = 0;
    v888 = *(sub_2EF0(&qword_325FD0, &qword_288F40) + 44);
    (*(v683 + 16))(v876, v256, v255);
    sub_20DD24(v892, v875, type metadata accessor for BrickLockupView);
    sub_8198(v685, v885, &qword_316208, &qword_268BD0);
    v688 = (*(v683 + 80) + 16) & ~*(v683 + 80);
    v689 = v255;
    v690 = (v872 + *(v871 + 80) + v688) & ~*(v871 + 80);
    v691 = (v877 + *(v873 + 80) + v690) & ~*(v873 + 80);
    v692 = (v874 + v691 + 7) & 0xFFFFFFFFFFFFFFF8;
    v693 = (v692 + 15) & 0xFFFFFFFFFFFFFFF8;
    v694 = swift_allocObject();
    (v883)(v694 + v688, v876, v689);
    sub_20DCBC(v875, v694 + v690, type metadata accessor for BrickLockupView);
    sub_22148(v885, v694 + v691, &qword_316208, &qword_268BD0);
    *(v694 + v692) = v95;
    v695 = (v694 + v693);
    v696 = v884;
    *v695 = v887;
    v695[1] = v696;
    v697 = (v694 + ((v693 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v697 = KeyedEncodingContainer.encode<A>(_:forKey:);
    v697[1] = 0;
    sub_2EF0(&qword_325FD8, &qword_288F48);
    sub_260A70();
    sub_260A50();
    sub_8E38(&qword_325FE0, &qword_325FD8, &qword_288F48, &protocol conformance descriptor for TupleView<A>);
    sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
    sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
    sub_260A80();
    v698 = v813;
    v699 = v810;
    (v810)(v813, enum case for DynamicTypeSize.xSmall(_:), v100);
    v700 = v814;
    v699(v814, enum case for DynamicTypeSize.accessibility3(_:), v100);
    result = sub_264380();
    if (result)
    {
      v701 = v801;
      v702 = *(v800 + 32);
      v702(v801, v698, v100);
      v703 = v802;
      v702((v701 + *(v802 + 48)), v700, v100);
      v704 = v803;
      sub_8198(v701, v803, &qword_3174E0, &qword_26B310);
      v705 = *(v703 + 48);
      v706 = v804;
      v702(v804, v704, v100);
      v707 = v799;
      v799(v704 + v705, v100);
      sub_22148(v701, v704, &qword_3174E0, &qword_26B310);
      v708 = v805;
      v702((v706 + *(v805 + 36)), (v704 + *(v703 + 48)), v100);
      v707(v704, v100);
      v892 = &protocol conformance descriptor for VStack<A>;
      v709 = sub_8E38(&qword_325EE8, &qword_325D20, &qword_288D38, &protocol conformance descriptor for VStack<A>);
      v710 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
      v711 = v773;
      v712 = v777;
      v713 = v792;
      sub_262B70();
      sub_8E80(v706, &qword_3174E8, &qword_269970);
      sub_8E80(v713, &qword_325D20, &qword_288D38);
      v714 = v769;
      v715 = v711;
      v716 = v779;
      (*(v769 + 16))(v780, v715, v779);
      swift_storeEnumTagMultiPayload();
      *&v921 = v712;
      *(&v921 + 1) = v708;
      *v922 = v709;
      *&v922[8] = v710;
      swift_getOpaqueTypeConformance2();
      v717 = sub_8E38(&qword_325EF0, &qword_325D00, &qword_288D18, v892);
      *&v921 = v781;
      *(&v921 + 1) = v708;
      *v922 = v717;
      *&v922[8] = v710;
      swift_getOpaqueTypeConformance2();
      v718 = v784;
      sub_261F80();
      sub_8198(v718, v807, &qword_325D18, &qword_288D30);
      swift_storeEnumTagMultiPayload();
      sub_20A0B0();
      sub_20A6F4();
      v719 = v809;
      sub_261F80();
      sub_8E80(v718, &qword_325D18, &qword_288D30);
      sub_8198(v719, v826, &qword_325D40, &qword_288D58);
      swift_storeEnumTagMultiPayload();
      sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
      sub_20A8B0();
      v326 = v827;
      sub_261F80();
      sub_8E80(v719, &qword_325D40, &qword_288D58);
      (*(v714 + 8))(v773, v716);
      goto LABEL_49;
    }

    goto LABEL_57;
  }

  v551 = v891;
  v552 = v893;
  v553 = v890;
  if (v254 == 3)
  {
    v624 = sub_2EF0(&qword_325BC8, &unk_2891A0);
    v625 = v624[12];
    v626 = (v253 + v624[16]);
    v628 = *v626;
    v627 = v626[1];
    v888 = v628;
    v887 = v627;
    v629 = (v253 + v624[20]);
    v630 = v629[5];
    v924 = v629[4];
    v925 = v630;
    v631 = v629[7];
    v926 = v629[6];
    v927 = v631;
    v632 = v629[1];
    v921 = *v629;
    *v922 = v632;
    v633 = v629[3];
    *&v922[16] = v629[2];
    v923 = v633;
    v634 = *(v551 + 32);
    v870 = v551 + 32;
    v883 = v634;
    (v634)(v553, v253, v552);
    sub_22148(v253 + v625, v889, &qword_316208, &qword_268BD0);
    v868 = type metadata accessor for BrickLockupView;
    v635 = v875;
    sub_20DD24(v892, v875, type metadata accessor for BrickLockupView);
    v636 = *(v871 + 80);
    v637 = (v636 + 16) & ~v636;
    v638 = (v877 + v637 + 7) & 0xFFFFFFFFFFFFFFF8;
    v639 = swift_allocObject();
    v869 = type metadata accessor for BrickLockupView;
    sub_20DCBC(v635, v639 + v637, type metadata accessor for BrickLockupView);
    v871 = v639;
    *(v639 + v638) = v95;
    v640 = (v639 + ((v638 + 15) & 0xFFFFFFFFFFFFFFF8));
    v641 = v923;
    v640[2] = *&v922[16];
    v640[3] = v641;
    v642 = *v922;
    *v640 = v921;
    v640[1] = v642;
    v643 = v927;
    v640[6] = v926;
    v640[7] = v643;
    v644 = v925;
    v640[4] = v924;
    v640[5] = v644;
    v645 = sub_261E50();
    v646 = v793;
    *v793 = v645;
    v646[1] = 0;
    *(v646 + 16) = 0;
    v884 = *(sub_2EF0(&qword_325FB8, &qword_288F30) + 44);
    v647 = v551 + 16;
    (*(v551 + 16))(v876, v890, v893);
    v648 = v796;
    sub_20DD24(v892, v796, v868);
    sub_8198(v889, v885, &qword_316208, &qword_268BD0);
    v649 = (*(v647 + 64) + 16) & ~*(v647 + 64);
    v650 = (v872 + v636 + v649) & ~v636;
    v651 = (v877 + *(v873 + 80) + v650) & ~*(v873 + 80);
    v652 = (v874 + v651 + 7) & 0xFFFFFFFFFFFFFFF8;
    v260 = ((v652 + 15) & 0xFFFFFFFFFFFFFFF8);
    v653 = swift_allocObject();
    (v883)(v653 + v649, v876, v893);
    sub_20DCBC(v648, v653 + v650, v869);
    sub_22148(v885, v653 + v651, &qword_316208, &qword_268BD0);
    *(v653 + v652) = v95;
    v654 = (v260 + v653);
    v655 = v887;
    *v654 = v888;
    v654[1] = v655;
    v656 = (v653 + ((v260 + 23) & 0xFFFFFFFFFFFFFFF8));
    v657 = v871;
    *v656 = sub_20C644;
    v656[1] = v657;
    sub_2EF0(&qword_325FC0, &qword_288F38);
    sub_260A70();
    sub_260A50();
    sub_8E38(&qword_325FC8, &qword_325FC0, &qword_288F38, &protocol conformance descriptor for TupleView<A>);
    sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
    sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
    sub_260A80();
    v658 = v813;
    v252 = v810;
    (v810)(v813, enum case for DynamicTypeSize.xSmall(_:), v100);
    v659 = v814;
    (v252)(v814, enum case for DynamicTypeSize.accessibility3(_:), v100);
    if ((sub_264380() & 1) == 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v660 = v801;
    v661 = *(v800 + 32);
    v661(v801, v658, v100);
    v662 = v802;
    v661((v660 + *(v802 + 48)), v659, v100);
    v663 = v803;
    sub_8198(v660, v803, &qword_3174E0, &qword_26B310);
    v664 = *(v662 + 48);
    v665 = v804;
    v661(v804, v663, v100);
    v666 = v799;
    v799(v663 + v664, v100);
    sub_22148(v660, v663, &qword_3174E0, &qword_26B310);
    v667 = v805;
    v661((v665 + *(v805 + 36)), (v663 + *(v662 + 48)), v100);
    v666(v663, v100);
    v892 = sub_8E38(&qword_325EF0, &qword_325D00, &qword_288D18, &protocol conformance descriptor for VStack<A>);
    v668 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    v669 = v775;
    v670 = v781;
    v671 = v793;
    sub_262B70();
    sub_8E80(v665, &qword_3174E8, &qword_269970);
    sub_8E80(v671, &qword_325D00, &qword_288D18);
    v672 = v771;
    v673 = v669;
    v674 = v785;
    (*(v771 + 16))(v780, v673, v785);
    swift_storeEnumTagMultiPayload();
    v675 = sub_8E38(&qword_325EE8, &qword_325D20, &qword_288D38, &protocol conformance descriptor for VStack<A>);
    *&v911 = v777;
    *(&v911 + 1) = v667;
    *&v912 = v675;
    *(&v912 + 1) = v668;
    swift_getOpaqueTypeConformance2();
    *&v911 = v670;
    *(&v911 + 1) = v667;
    *&v912 = v892;
    *(&v912 + 1) = v668;
    swift_getOpaqueTypeConformance2();
    v676 = v784;
    sub_261F80();
    sub_8198(v676, v807, &qword_325D18, &qword_288D30);
    swift_storeEnumTagMultiPayload();
    sub_20A0B0();
    sub_20A6F4();
    v677 = v809;
    sub_261F80();
    sub_8E80(v676, &qword_325D18, &qword_288D30);
    sub_8198(v677, v826, &qword_325D40, &qword_288D58);
    swift_storeEnumTagMultiPayload();
    sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
    sub_20A8B0();
    v326 = v827;
    sub_261F80();
    sub_8E80(v677, &qword_325D40, &qword_288D58);
    (*(v672 + 8))(v775, v674);
    goto LABEL_49;
  }

  v554 = v889;
  if (v254 == 4)
  {
    v555 = sub_2EF0(&qword_325BD0, &qword_288C60);
    v556 = v555[12];
    v557 = (v253 + v555[16]);
    v559 = *v557;
    v558 = v557[1];
    v888 = v559;
    v887 = v558;
    v884 = *(v253 + v555[20]);
    LODWORD(v867) = *(v253 + v555[24]);
    v560 = *(v551 + 32);
    v870 = v551 + 32;
    v883 = v560;
    (v560)(v553, v253, v552);
    sub_22148(v253 + v556, v554, &qword_316208, &qword_268BD0);
    v868 = type metadata accessor for BrickLockupView;
    v561 = v875;
    sub_20DD24(v892, v875, type metadata accessor for BrickLockupView);
    v562 = *(v871 + 80);
    v563 = (v562 + 16) & ~v562;
    v564 = v551;
    v565 = (v877 + v563 + 7) & 0xFFFFFFFFFFFFFFF8;
    v566 = swift_allocObject();
    v869 = type metadata accessor for BrickLockupView;
    sub_20DCBC(v561, v566 + v563, type metadata accessor for BrickLockupView);
    v871 = v566;
    *(v566 + v565) = v95;
    v567 = v566 + ((v565 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v567 = v884;
    *(v567 + 8) = v867;
    v568 = sub_261E50();
    v569 = v794;
    *v794 = v568;
    v569[1] = 0;
    *(v569 + 16) = 0;
    v884 = *(sub_2EF0(&qword_325FA0, &qword_288F20) + 44);
    (*(v551 + 16))(v876, v890, v552);
    v570 = v796;
    sub_20DD24(v892, v796, v868);
    sub_8198(v889, v885, &qword_316208, &qword_268BD0);
    v571 = (*(v564 + 80) + 16) & ~*(v564 + 80);
    v572 = (v872 + v562 + v571) & ~v562;
    v573 = (v877 + *(v873 + 80) + v572) & ~*(v873 + 80);
    v574 = (v874 + v573 + 7) & 0xFFFFFFFFFFFFFFF8;
    v575 = (v574 + 15) & 0xFFFFFFFFFFFFFFF8;
    v576 = swift_allocObject();
    (v883)(v576 + v571, v876, v893);
    sub_20DCBC(v570, v576 + v572, v869);
    sub_22148(v885, v576 + v573, &qword_316208, &qword_268BD0);
    *(v576 + v574) = v95;
    v577 = (v576 + v575);
    v578 = v887;
    *v577 = v888;
    v577[1] = v578;
    v579 = (v576 + ((v575 + 23) & 0xFFFFFFFFFFFFFFF8));
    v580 = v871;
    *v579 = sub_20BC70;
    v579[1] = v580;
    sub_2EF0(&qword_325FA8, &qword_288F28);
    sub_260A70();
    sub_260A50();
    sub_8E38(&qword_325FB0, &qword_325FA8, &qword_288F28, &protocol conformance descriptor for TupleView<A>);
    sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
    sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
    sub_260A80();
    v581 = v813;
    v582 = v810;
    (v810)(v813, enum case for DynamicTypeSize.xSmall(_:), v100);
    v583 = v814;
    v582(v814, enum case for DynamicTypeSize.accessibility3(_:), v100);
    result = sub_264380();
    if ((result & 1) == 0)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v584 = v801;
    v585 = *(v800 + 32);
    v585(v801, v581, v100);
    v586 = v802;
    v585((v584 + *(v802 + 48)), v583, v100);
    v587 = v803;
    sub_8198(v584, v803, &qword_3174E0, &qword_26B310);
    v588 = *(v586 + 48);
    v589 = v804;
    v585(v804, v587, v100);
    v590 = v799;
    v799(v587 + v588, v100);
    sub_22148(v584, v587, &qword_3174E0, &qword_26B310);
    v591 = v805;
    v585((v589 + *(v805 + 36)), (v587 + *(v586 + 48)), v100);
    v590(v587, v100);
    v892 = &protocol conformance descriptor for VStack<A>;
    v592 = sub_8E38(&qword_325F00, &qword_325CF0, &qword_288D08, &protocol conformance descriptor for VStack<A>);
    v593 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    v594 = v774;
    v595 = v782;
    v596 = v794;
    sub_262B70();
    sub_8E80(v589, &qword_3174E8, &qword_269970);
    sub_8E80(v596, &qword_325CF0, &qword_288D08);
    v597 = v770;
    v598 = v787;
    (*(v770 + 16))(v786, v594, v787);
    swift_storeEnumTagMultiPayload();
    *&v921 = v595;
    *(&v921 + 1) = v591;
    *v922 = v592;
    *&v922[8] = v593;
    swift_getOpaqueTypeConformance2();
    v599 = sub_8E38(&qword_325F08, &qword_325CD0, &qword_288CE8, v892);
    *&v921 = v788;
    *(&v921 + 1) = v591;
    *v922 = v599;
    *&v922[8] = v593;
    swift_getOpaqueTypeConformance2();
    v600 = v789;
    sub_261F80();
    sub_8198(v600, v826, &qword_325CE8, &qword_288D00);
    swift_storeEnumTagMultiPayload();
    sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
    sub_20A8B0();
    v326 = v827;
    sub_261F80();
    sub_8E80(v600, &qword_325CE8, &qword_288D00);
    (*(v597 + 8))(v774, v598);
LABEL_49:
    sub_8E80(v889, &qword_316208, &qword_268BD0);
    (*(v891 + 8))(v890, v893);
LABEL_50:
    v606 = v879;
LABEL_51:
    sub_8198(v326, v606, &qword_325D48, &qword_288D60);
    swift_storeEnumTagMultiPayload();
    sub_20A584();
    sub_20A63C();
    sub_261F80();
    return sub_8E80(v326, &qword_325D48, &qword_288D60);
  }

  v720 = sub_2EF0(&qword_325BD8, &unk_289180);
  v721 = v720[12];
  v722 = (v253 + v720[16]);
  v724 = *v722;
  v723 = v722[1];
  v888 = v724;
  v887 = v723;
  v884 = *(v253 + v720[20]);
  LODWORD(v867) = *(v253 + v720[24]);
  v725 = *(v551 + 32);
  v870 = v551 + 32;
  v883 = v725;
  (v725)(v553, v253, v552);
  sub_22148(v253 + v721, v554, &qword_316208, &qword_268BD0);
  v868 = type metadata accessor for BrickLockupView;
  v726 = v875;
  sub_20DD24(v892, v875, type metadata accessor for BrickLockupView);
  v727 = *(v871 + 80);
  v728 = (v727 + 16) & ~v727;
  v729 = v551;
  v730 = (v877 + v728 + 7) & 0xFFFFFFFFFFFFFFF8;
  v731 = swift_allocObject();
  v869 = type metadata accessor for BrickLockupView;
  sub_20DCBC(v726, v731 + v728, type metadata accessor for BrickLockupView);
  v871 = v731;
  *(v731 + v730) = v95;
  v732 = v731 + ((v730 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v732 = v884;
  *(v732 + 8) = v867;
  v733 = sub_261E50();
  v734 = v795;
  *v795 = v733;
  v734[1] = 0;
  *(v734 + 16) = 0;
  v884 = *(sub_2EF0(&qword_325F88, &qword_288F10) + 44);
  (*(v551 + 16))(v876, v890, v552);
  v735 = v796;
  sub_20DD24(v892, v796, v868);
  sub_8198(v889, v885, &qword_316208, &qword_268BD0);
  v736 = (*(v729 + 80) + 16) & ~*(v729 + 80);
  v737 = (v872 + v727 + v736) & ~v727;
  v738 = (v877 + *(v873 + 80) + v737) & ~*(v873 + 80);
  v739 = (v874 + v738 + 7) & 0xFFFFFFFFFFFFFFF8;
  v740 = (v739 + 15) & 0xFFFFFFFFFFFFFFF8;
  v741 = swift_allocObject();
  (v883)(v741 + v736, v876, v893);
  sub_20DCBC(v735, v741 + v737, v869);
  sub_22148(v885, v741 + v738, &qword_316208, &qword_268BD0);
  *(v741 + v739) = v95;
  v742 = (v741 + v740);
  v743 = v887;
  *v742 = v888;
  v742[1] = v743;
  v744 = (v741 + ((v740 + 23) & 0xFFFFFFFFFFFFFFF8));
  v745 = v871;
  *v744 = sub_20B2C0;
  v744[1] = v745;
  sub_2EF0(&qword_325F90, &qword_288F18);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_325F98, &qword_325F90, &qword_288F18, &protocol conformance descriptor for TupleView<A>);
  sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  sub_260A80();
  v746 = v813;
  v747 = v810;
  (v810)(v813, enum case for DynamicTypeSize.xSmall(_:), v100);
  v748 = v814;
  v747(v814, enum case for DynamicTypeSize.accessibility3(_:), v100);
  result = sub_264380();
  if (result)
  {
    v749 = v801;
    v750 = *(v800 + 32);
    v750(v801, v746, v100);
    v751 = v802;
    v750((v749 + *(v802 + 48)), v748, v100);
    v752 = v803;
    sub_8198(v749, v803, &qword_3174E0, &qword_26B310);
    v753 = *(v751 + 48);
    v754 = v804;
    v750(v804, v752, v100);
    v755 = v799;
    v799(v752 + v753, v100);
    sub_22148(v749, v752, &qword_3174E0, &qword_26B310);
    v756 = v805;
    v750((v754 + *(v805 + 36)), (v752 + *(v751 + 48)), v100);
    v755(v752, v100);
    v892 = sub_8E38(&qword_325F08, &qword_325CD0, &qword_288CE8, &protocol conformance descriptor for VStack<A>);
    v757 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    v758 = v776;
    v759 = v788;
    v760 = v795;
    sub_262B70();
    sub_8E80(v754, &qword_3174E8, &qword_269970);
    sub_8E80(v760, &qword_325CD0, &qword_288CE8);
    v761 = v772;
    v762 = v758;
    v763 = v790;
    (*(v772 + 16))(v786, v762, v790);
    swift_storeEnumTagMultiPayload();
    v764 = sub_8E38(&qword_325F00, &qword_325CF0, &qword_288D08, &protocol conformance descriptor for VStack<A>);
    *&v921 = v782;
    *(&v921 + 1) = v756;
    *v922 = v764;
    *&v922[8] = v757;
    swift_getOpaqueTypeConformance2();
    *&v921 = v759;
    *(&v921 + 1) = v756;
    *v922 = v892;
    *&v922[8] = v757;
    swift_getOpaqueTypeConformance2();
    v765 = v789;
    sub_261F80();
    sub_8198(v765, v826, &qword_325CE8, &qword_288D00);
    swift_storeEnumTagMultiPayload();
    sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
    sub_20A8B0();
    v326 = v827;
    sub_261F80();
    sub_8E80(v765, &qword_325CE8, &qword_288D00);
    (*(v761 + 8))(v776, v763);
    goto LABEL_49;
  }

LABEL_58:
  __break(1u);
  return result;
}