void sub_2239F4750()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  while (1)
  {
    v2 = sub_2239F4488();
    v3 = *(v2 + 16);
    v4 = *(v1 + 2);
    v5 = v4 + v3;
    if (__OFADD__(v4, v3))
    {
      break;
    }

    v6 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v5 <= *(v1 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v4 <= v5)
      {
        v8 = v4 + v3;
      }

      else
      {
        v8 = v4;
      }

      v1 = sub_2239E1804(isUniquelyReferenced_nonNull_native, v8, 1, v1);
      if (*(v6 + 16))
      {
LABEL_13:
        if ((*(v1 + 3) >> 1) - *(v1 + 2) < v3)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v3)
        {
          v9 = *(v1 + 2);
          v10 = __OFADD__(v9, v3);
          v11 = v9 + v3;
          if (v10)
          {
            goto LABEL_21;
          }

          *(v1 + 2) = v11;
        }

        goto LABEL_3;
      }
    }

    if (v3)
    {
      goto LABEL_19;
    }

LABEL_3:
    if (++v0 == 20)
    {
      qword_2813359C0 = v1;
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t AACPVersionInfo.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AACPVersionInfo(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0x7372655650434141;
  v53 = 0xEF6F666E496E6F69;
  sub_223A216A0();
  if (*(a1 + 16) && (v8 = sub_2239F67A4(v54), (v9 & 1) != 0))
  {
    sub_2239D17A8(*(a1 + 56) + 32 * v8, &v56);
    sub_2239F67E8(v54);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49A8, &qword_223A22C60);
    if (swift_dynamicCast())
    {
      v10 = v52;
      sub_223A213B0();
      if (v55)
      {
        v11 = swift_dynamicCast();
        v12 = v56;
        v13 = v57;
        if (!v11)
        {
          v12 = 0;
          v13 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v12 = 0;
        v13 = 0;
      }

      *v7 = v12;
      *(v7 + 1) = v13;
      sub_223A213B0();
      if (v55)
      {
        v16 = swift_dynamicCast();
        v17 = v56;
        v18 = v57;
        if (!v16)
        {
          v17 = 0;
          v18 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v17 = 0;
        v18 = 0;
      }

      *(v7 + 2) = v17;
      *(v7 + 3) = v18;
      sub_223A213B0();
      if (v55)
      {
        v19 = swift_dynamicCast();
        v20 = v56;
        v21 = v57;
        if (!v19)
        {
          v20 = 0;
          v21 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v20 = 0;
        v21 = 0;
      }

      *(v7 + 4) = v20;
      *(v7 + 5) = v21;
      sub_223A213B0();
      if (v55)
      {
        v22 = swift_dynamicCast();
        v23 = v56;
        v24 = v57;
        if (!v22)
        {
          v23 = 0;
          v24 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v23 = 0;
        v24 = 0;
      }

      *(v7 + 6) = v23;
      *(v7 + 7) = v24;
      sub_223A213B0();
      if (v55)
      {
        v25 = swift_dynamicCast();
        v26 = v56;
        v27 = v57;
        if (!v25)
        {
          v26 = 0;
          v27 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v26 = 0;
        v27 = 0;
      }

      *(v7 + 8) = v26;
      *(v7 + 9) = v27;
      sub_223A213B0();
      if (v55)
      {
        v28 = swift_dynamicCast();
        v29 = v56;
        v30 = v57;
        if (!v28)
        {
          v29 = 0;
          v30 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v29 = 0;
        v30 = 0;
      }

      *(v7 + 10) = v29;
      *(v7 + 11) = v30;
      sub_223A213B0();
      if (v55)
      {
        v31 = swift_dynamicCast();
        v32 = v56;
        v33 = v57;
        if (!v31)
        {
          v32 = 0;
          v33 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v32 = 0;
        v33 = 0;
      }

      *(v7 + 12) = v32;
      *(v7 + 13) = v33;
      sub_223A213B0();
      if (v55)
      {
        v34 = swift_dynamicCast();
        v35 = v56;
        v36 = v57;
        if (!v34)
        {
          v35 = 0;
          v36 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v35 = 0;
        v36 = 0;
      }

      *(v7 + 14) = v35;
      *(v7 + 15) = v36;
      sub_223A213B0();
      if (v55)
      {
        v37 = swift_dynamicCast();
        v38 = v56;
        v39 = v57;
        if (!v37)
        {
          v38 = 0;
          v39 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v38 = 0;
        v39 = 0;
      }

      *(v7 + 16) = v38;
      *(v7 + 17) = v39;
      sub_223A213B0();
      if (v55)
      {
        v40 = swift_dynamicCast();
        v41 = v56;
        v42 = v57;
        if (!v40)
        {
          v41 = 0;
          v42 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v41 = 0;
        v42 = 0;
      }

      *(v7 + 18) = v41;
      *(v7 + 19) = v42;
      sub_223A213B0();
      if (v55)
      {
        v43 = swift_dynamicCast();
        v44 = v56;
        v45 = v57;
        if (!v43)
        {
          v44 = 0;
          v45 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
        v44 = 0;
        v45 = 0;
      }

      *(v7 + 20) = v44;
      *(v7 + 21) = v45;
      v46 = v4[15];
      sub_223A213B0();
      if (v55)
      {
        if (swift_dynamicCast())
        {
          sub_223A203D0();

          goto LABEL_56;
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
      }

      v47 = sub_223A203F0();
      (*(*(v47 - 8) + 56))(&v7[v46], 1, 1, v47);
LABEL_56:
      v48 = v4[16];
      sub_223A213B0();
      if (v55)
      {
        if (swift_dynamicCast())
        {
          sub_223A203D0();

LABEL_61:
          *&v7[v4[17]] = sub_2239F50EC(v10, 13);
          v50 = sub_2239F50EC(v10, 14);

          *&v7[v4[18]] = v50;
          sub_2239F683C(v7, a2);
          v14 = 0;
          return (*(v5 + 56))(a2, v14, 1, v4);
        }
      }

      else
      {
        sub_2239CDCEC(v54, &qword_27D0A49B0, &qword_223A22C68);
      }

      v49 = sub_223A203F0();
      (*(*(v49 - 8) + 56))(&v7[v48], 1, 1, v49);
      goto LABEL_61;
    }
  }

  else
  {

    sub_2239F67E8(v54);
  }

  v14 = 1;
  return (*(v5 + 56))(a2, v14, 1, v4);
}

uint64_t type metadata accessor for AACPVersionInfo(uint64_t a1)
{
  result = qword_27D0A49C8;
  if (!qword_27D0A49C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2239F50EC(uint64_t a1, uint64_t a2)
{
  sub_223A213B0();
  if (v7)
  {
    if (swift_dynamicCast())
    {
      v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      v3 = sub_223A211F0();

      v4 = [v2 numberFromString_];

      return v4;
    }
  }

  else
  {
    sub_2239CDCEC(v6, &qword_27D0A49B0, &qword_223A22C68);
  }

  return 0;
}

AudioAnalyticsExternal::CaseInfo_optional __swiftcall CaseInfo.init(with:)(Swift::OpaquePointer with)
{
  v3 = v1;
  sub_223A216A0();
  if (!*(with._rawValue + 2) || (v4 = sub_2239F67A4(v13), (v5 & 1) == 0))
  {

    v6 = sub_2239F67E8(v13);
    goto LABEL_9;
  }

  sub_2239D17A8(*(with._rawValue + 7) + 32 * v4, v14);
  sub_2239F67E8(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49B8, &qword_223A22C70);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  if (MEMORY[0x6F666E4965736153] && (v9 = sub_2239CDC74(0x6F666E4965736143, 0xEF6E6F6973726556), (v10 & 1) != 0))
  {
    sub_2239D17A8(MEMORY[0x6F666E496573617B] + 32 * v9, v13);

    v6 = swift_dynamicCast();
    v11 = v14[0];
    v12 = v14[1];
    if (!v6)
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {

    v11 = 0;
    v12 = 0;
  }

LABEL_10:
  *v3 = v11;
  v3[1] = v12;
  result.value.version.value._object = v7;
  result.value.version.value._countAndFlagsBits = v6;
  result.is_nil = v8;
  return result;
}

unint64_t sub_2239F5358()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22C50;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000223A25000;
  v2 = MEMORY[0x277D839B0];
  *(inited + 48) = *v0;
  *(inited + 72) = v2;
  *(inited + 80) = 0x7374726F70707573;
  *(inited + 88) = 0xEA00000000005348;
  *(inited + 96) = *(v0 + 184);
  *(inited + 120) = v2;
  *(inited + 128) = 0x69615064756F6C63;
  *(inited + 136) = 0xEB00000000646572;
  *(inited + 144) = *(v0 + 185);
  *(inited + 168) = v2;
  *(inited + 176) = 0x696150636967616DLL;
  *(inited + 184) = 0xEB00000000646572;
  *(inited + 192) = *(v0 + 186);
  *(inited + 216) = v2;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000223A25020;
  *(inited + 240) = *(v0 + 187);
  *(inited + 264) = v2;
  strcpy((inited + 272), "listeningMode");
  *(inited + 286) = -4864;
  v3 = MEMORY[0x277D84CC0];
  *(inited + 288) = *(v0 + 188);
  *(inited + 312) = v3;
  strcpy((inited + 320), "smartRouteMode");
  *(inited + 335) = -18;
  v4 = MEMORY[0x277D84B78];
  *(inited + 336) = *(v0 + 192);
  *(inited + 360) = v4;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x8000000223A25040;
  *(inited + 384) = *(v0 + 193);
  *(inited + 408) = v2;
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x8000000223A25060;
  *(inited + 432) = *(v0 + 194);
  *(inited + 456) = v4;
  *(inited + 464) = 0xD000000000000013;
  *(inited + 472) = 0x8000000223A25080;
  *(inited + 480) = *(v0 + 195);
  *(inited + 504) = v2;
  *(inited + 512) = 0xD000000000000012;
  *(inited + 520) = 0x8000000223A250A0;
  v5 = *(v0 + 196);
  *(inited + 552) = v2;
  *(inited + 528) = v5;
  *(inited + 560) = 0x49746375646F7270;
  *(inited + 568) = 0xE900000000000044;
  v6 = *(v0 + 128);
  *(inited + 600) = v3;
  *(inited + 576) = v6;
  *(inited + 608) = 0x6D754E6C65646F6DLL;
  *(inited + 616) = 0xEB00000000726562;
  v14 = *(v0 + 136);
  v7 = MEMORY[0x277D837D0];
  *(inited + 648) = MEMORY[0x277D837D0];
  *(inited + 624) = *(v0 + 136);
  *(inited + 656) = 0x6572617764726168;
  *(inited + 664) = 0xEF6E6F6973726556;
  v8 = *(v0 + 168);
  *(inited + 696) = v7;
  *(inited + 672) = *(v0 + 168);
  *(inited + 704) = 0x657261776D726966;
  *(inited + 712) = 0xEF6E6F6973726556;
  v12 = *(v0 + 8);
  v13 = v8;
  *(inited + 744) = v7;
  *(inited + 720) = *(v0 + 8);
  sub_2239F8A08(&v14, v11);
  sub_2239F8A08(&v13, v11);
  sub_2239F8A08(&v12, v11);
  v9 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  swift_arrayDestroy();
  return v9;
}

unint64_t sub_2239F56A8(char a1)
{
  result = 0x49746375646F7270;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6D754E6C65646F6DLL;
      break;
    case 6:
      result = 0x7372655665736163;
      break;
    case 7:
      result = 0x6572617764726168;
      break;
    case 8:
      result = 0x7374726F70707573;
      break;
    case 9:
      result = 0x5064756F6C437369;
      break;
    case 10:
      result = 0x50636967614D7369;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6E696E657473696CLL;
      break;
    case 13:
      result = 0x756F527472616D73;
      break;
    case 14:
    case 17:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0x676E69737566;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_2239F58F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2239F7948(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2239F5934(uint64_t a1)
{
  v2 = sub_2239F88D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239F5970(uint64_t a1)
{
  v2 = sub_2239F88D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239F59AC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A08, &qword_223A22E08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239F88D4();
  sub_223A219A0();
  LOBYTE(v17) = 0;
  sub_223A21870();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v23[0] = *(v3 + 8);
    v23[1] = v9;
    v23[2] = *(v3 + 40);
    v24 = *(v3 + 56);
    v10 = *(v3 + 24);
    v17 = *(v3 + 8);
    v18 = v10;
    v19 = *(v3 + 40);
    v20 = *(v3 + 56);
    v25 = 1;
    sub_2239F897C(v23, v16);
    sub_2239F89B4();
    sub_223A218A0();

    v11 = *(v3 + 80);
    v21[0] = *(v3 + 64);
    v21[1] = v11;
    v13 = *(v3 + 64);
    v12 = *(v3 + 80);
    v21[2] = *(v3 + 96);
    v22 = *(v3 + 112);
    v17 = v13;
    v18 = v12;
    v19 = *(v3 + 96);
    v20 = *(v3 + 112);
    v25 = 2;
    sub_2239F897C(v21, v16);
    sub_223A218A0();

    LOBYTE(v17) = 3;
    sub_223A21880();
    LOBYTE(v17) = 4;
    sub_223A218C0();
    LOBYTE(v17) = 5;
    sub_223A21860();
    LOBYTE(v17) = 6;
    sub_223A21860();
    LOBYTE(v17) = 7;
    sub_223A21860();
    LOBYTE(v17) = 8;
    sub_223A21870();
    LOBYTE(v17) = 9;
    sub_223A21870();
    LOBYTE(v17) = 10;
    sub_223A21870();
    LOBYTE(v17) = 11;
    sub_223A21870();
    LOBYTE(v17) = 12;
    sub_223A218C0();
    LOBYTE(v17) = 13;
    sub_223A218B0();
    LOBYTE(v17) = 14;
    sub_223A21870();
    LOBYTE(v17) = 15;
    sub_223A218B0();
    LOBYTE(v17) = 16;
    sub_223A21870();
    LOBYTE(v17) = 17;
    sub_223A21870();
    LOBYTE(v17) = 18;
    sub_223A21860();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_2239F5EC8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2239F7F50(a2, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v12;
    v6 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v6;
    v7 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v7;
    v8 = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = v8;
    v9 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
  }

  return result;
}

uint64_t sub_2239F5F6C(void *a1, void *a2)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = a2[10];
  v5 = a2[11];
  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (v6 || (v7 = sub_223A218F0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_223A218F0();
    }
  }

  return result;
}

uint64_t sub_2239F6010(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A60, &qword_223A23040);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239F93E0();
  sub_223A219A0();
  v8[15] = 0;
  sub_223A21860();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_223A21860();
  v8[13] = 2;
  sub_223A21860();
  v8[12] = 3;
  sub_223A21890();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2239F61D0()
{
  sub_223A21940();
  sub_223A21290();
  sub_223A21290();
  return sub_223A21970();
}

uint64_t sub_2239F6238(uint64_t a1)
{
  sub_223A21290();

  return sub_223A21290();
}

uint64_t sub_2239F6288(uint64_t a1)
{
  sub_223A21940();
  sub_223A21290();
  sub_223A21290();
  return sub_223A21970();
}

uint64_t sub_2239F62EC()
{
  v1 = *v0;
  sub_223A21940();
  MEMORY[0x223DF0A30](v1);
  return sub_223A21970();
}

uint64_t sub_2239F6334(uint64_t a1)
{
  v2 = *v1;
  sub_223A21940();
  MEMORY[0x223DF0A30](v2);
  return sub_223A21970();
}

unint64_t sub_2239F6378()
{
  v1 = 0x657261776D726966;
  v2 = 0x754E6C6169726573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1145656661;
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

uint64_t sub_2239F6404@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2239F8F88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2239F6438(uint64_t a1)
{
  v2 = sub_2239F93E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239F6474(uint64_t a1)
{
  v2 = sub_2239F93E0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2239F64B0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2239F9100(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

BOOL sub_2239F6518(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  return (*a1 == *a2 && a1[1] == a2[1] || (sub_223A218F0() & 1) != 0) && (v2 == v7 && v4 == v8 || (sub_223A218F0() & 1) != 0) && (v3 == v9 && v5 == v10 || (sub_223A218F0() & 1) != 0) && v6 == v11;
}

uint64_t sub_2239F6600()
{
  v1 = *(v0 + 48);
  sub_223A21940();
  sub_223A21290();
  sub_223A21290();
  sub_223A21290();
  MEMORY[0x223DF0A30](v1);
  return sub_223A21970();
}

uint64_t sub_2239F669C(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_223A21290();
  sub_223A21290();
  sub_223A21290();
  return MEMORY[0x223DF0A30](v2);
}

uint64_t sub_2239F670C(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_223A21940();
  sub_223A21290();
  sub_223A21290();
  sub_223A21290();
  MEMORY[0x223DF0A30](v2);
  return sub_223A21970();
}

unint64_t sub_2239F67A4(uint64_t a1)
{
  v2 = sub_223A21680();

  return sub_2239F6D3C(a1, v2);
}

uint64_t sub_2239F683C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AACPVersionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2239F68C8(uint64_t a1)
{
  sub_2239F6984();
  if (v1 <= 0x3F)
  {
    sub_2239F69D4(319);
    if (v2 <= 0x3F)
    {
      sub_2239F6A2C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2239F6984()
{
  if (!qword_281333768)
  {
    v0 = sub_223A215D0();
    if (!v1)
    {
      atomic_store(v0, &qword_281333768);
    }
  }
}

void sub_2239F69D4(uint64_t a1)
{
  if (!qword_27D0A49D8)
  {
    sub_223A203F0();
    v1 = sub_223A215D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D0A49D8);
    }
  }
}

void sub_2239F6A2C(uint64_t a1)
{
  if (!qword_27D0A49E0)
  {
    sub_2239E7EF4(255, &qword_2813326F8, 0x277CCABB0);
    v1 = sub_223A215D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D0A49E0);
    }
  }
}

uint64_t sub_2239F6A94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2239F6AF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_2239F6B94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_2239F6BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2239F6C64()
{
  result = qword_27D0A49E8;
  if (!qword_27D0A49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A49E8);
  }

  return result;
}

unint64_t sub_2239F6CB8(uint64_t a1)
{
  sub_223A20850();
  sub_2239F8B6C(&qword_27D0A4A20, MEMORY[0x277CEF8B0]);
  v2 = sub_223A21190();

  return sub_2239F6E04(a1, v2);
}

unint64_t sub_2239F6D3C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2239F8BB0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DF0770](v9, a1);
      sub_2239F67E8(v9);
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

unint64_t sub_2239F6E04(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_223A20850();
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
      sub_2239F8B6C(&qword_27D0A4A28, MEMORY[0x277CEF8B8]);
      v15 = sub_223A211E0();
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

void sub_2239F6FB0(uint64_t a1, double a2)
{
  sub_223A21430();
  v4 = v3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_223A21460();
  if (v5 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = v5;
  if (!v5)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v7 = a2;
  if (a2 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_35;
  }

  v8 = v4;
  if (!v4)
  {
    goto LABEL_31;
  }

  v9 = v7 % v6 / v8;
  v10 = 7;
  if (v9 < 4)
  {
    v10 = 0;
  }

  v11 = v10 - v9;
  v12 = v11 * v8;
  if ((v11 * v8) >> 64 != (v11 * v8) >> 63)
  {
    goto LABEL_32;
  }

  v13 = __OFADD__(v7, v12);
  v14 = v7 + v12;
  if (v13)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  if (v7 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_36;
  }

  if (__OFSUB__(v14, v7 % v8))
  {
    goto LABEL_34;
  }
}

double sub_2239F7144@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49C0, &qword_223A22C78);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v86 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A18, &qword_223A22E20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v59 - v10;
  v12 = type metadata accessor for AACPVersionInfo(0);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [a1 accessoryInfo];
  if (!v16)
  {

    goto LABEL_5;
  }

  v87 = a1;
  v17 = v16;
  v18 = sub_223A21110();

  AACPVersionInfo.init(with:)(v19, v11);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_2239F683C(v11, v15);
    v20 = v87;
    v84 = [v87 productId];
    if (v15[3])
    {
      v21 = v15[2];
      v82 = v15[3];
      v83 = v21;
    }

    else
    {
      v82 = 0xE000000000000000;
      v83 = 0;
    }

    sub_223A21410();
    v23 = v22;
    CaseInfo.init(with:)(v18);
    v24 = *(&v102 + 1);
    if (*(&v102 + 1) >= 2uLL)
    {
      v81 = v102;
      v25 = v15[21];
      if (v25)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_2239F8A8C(v102, *(&v102 + 1));
      v81 = 0;
      v24 = 0xE000000000000000;
      v25 = v15[21];
      if (v25)
      {
LABEL_11:
        v79 = v15[20];
        v85 = v25;
        goto LABEL_14;
      }
    }

    v79 = 0;
    v85 = 0xE000000000000000;
LABEL_14:
    v80 = v24;
    v26 = *(v15 + v12[17]);
    if (v26)
    {

      v27 = [v26 doubleValue];
    }

    else
    {

      v28 = 0.0;
    }

    sub_2239F6FB0(v27, v28);
    v78 = v29;
    sub_2239F8AA0(v15 + v12[15], v8);
    v30 = sub_223A203F0();
    v31 = *(v30 - 8);
    v72 = *(v31 + 48);
    if (v72(v8, 1, v30) == 1)
    {
      sub_2239CDCEC(v8, &qword_27D0A49C0, &qword_223A22C78);
      v76 = 0xE000000000000000;
      v77 = 0;
      v32 = v15[9];
      if (v32)
      {
LABEL_19:
        v33 = v15[8];
        v74 = v32;
        v75 = v33;
        goto LABEL_22;
      }
    }

    else
    {
      v34 = MEMORY[0x223DEF4C0]();
      v76 = v35;
      v77 = v34;
      (*(v31 + 8))(v8, v30);
      v32 = v15[9];
      if (v32)
      {
        goto LABEL_19;
      }
    }

    v74 = 0xE000000000000000;
    v75 = 0;
LABEL_22:
    v36 = *(v15 + v12[18]);

    if (v36)
    {

      v37 = [v36 doubleValue];
    }

    else
    {

      v38 = 0.0;
    }

    sub_2239F6FB0(v37, v38);
    v73 = v39;
    v40 = v86;
    sub_2239F8AA0(v15 + v12[16], v86);
    if (v72(v40, 1, v30) == 1)
    {
      sub_2239CDCEC(v40, &qword_27D0A49C0, &qword_223A22C78);
      v71 = 0xE000000000000000;
      v72 = 0;
      v41 = v15[11];
      if (v41)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v44 = MEMORY[0x223DEF4C0]();
      v71 = v45;
      v72 = v44;
      (*(v31 + 8))(v40, v30);
      v41 = v15[11];
      if (v41)
      {
LABEL_27:
        v86 = v15[10];
        v70 = v41;
        v42 = v15[17];
        if (v42)
        {
LABEL_28:
          v43 = v15[16];
          v68 = v42;
          v69 = v43;
          goto LABEL_32;
        }

LABEL_31:
        v68 = 0xE000000000000000;
        v69 = 0;
LABEL_32:

        v65 = [v20 isAppleAudioDevice];
        v67 = [v20 supportsHS];
        v66 = [v20 cloudPaired];
        v64 = [v20 magicPaired];
        v63 = [v20 isTemporaryPaired];
        v62 = [v20 listeningMode];
        v61 = [v20 smartRouteMode];
        v60 = [v20 smartRouteSupport];
        v46 = [v20 spatialAudioMode];
        v47 = [v20 spatialAudioAllowed];
        v48 = [v20 spatialAudioActive];
        if (v15[19])
        {
          v49 = 0xEB00000000746E65;
          if (sub_223A21310())
          {
            v50 = 0x6D706F6C65766544;
            v20 = v87;
LABEL_38:

            sub_2239F8B10(v15);
            LOBYTE(v88) = v65;
            *(&v88 + 1) = v79;
            *&v89 = v85;
            *(&v89 + 1) = v77;
            *&v90 = v76;
            *(&v90 + 1) = v75;
            *&v91 = v74;
            *(&v91 + 1) = v78;
            *&v92 = v79;
            *(&v92 + 1) = v85;
            *&v93 = v72;
            *(&v93 + 1) = v71;
            *&v94 = v86;
            *(&v94 + 1) = v70;
            *&v95 = v73;
            *(&v95 + 1) = v23;
            LODWORD(v96) = v84;
            *(&v96 + 1) = v83;
            *&v97 = v82;
            *(&v97 + 1) = v81;
            *&v98 = v80;
            *(&v98 + 1) = v69;
            *&v99 = v68;
            BYTE8(v99) = v67;
            BYTE9(v99) = v66;
            BYTE10(v99) = v64;
            BYTE11(v99) = v63;
            HIDWORD(v99) = v62;
            LOBYTE(v100) = v61;
            BYTE1(v100) = v60;
            BYTE2(v100) = v46;
            BYTE3(v100) = v47;
            BYTE4(v100) = v48;
            *(&v100 + 1) = v50;
            v101 = v49;
            nullsub_1();
            v112 = v98;
            v113 = v99;
            v114 = v100;
            v115 = v101;
            v108 = v94;
            v109 = v95;
            v110 = v96;
            v111 = v97;
            v104 = v90;
            v105 = v91;
            v106 = v92;
            v107 = v93;
            v102 = v88;
            v103 = v89;
            goto LABEL_39;
          }

          v51 = sub_223A21310();
          v20 = v87;
          if (v51)
          {
            v50 = 0x6D706F6C65766544;
            goto LABEL_38;
          }
        }

        v49 = 0xEA00000000006E6FLL;
        v50 = 0x69746375646F7250;
        goto LABEL_38;
      }
    }

    v86 = 0;
    v70 = 0xE000000000000000;
    v42 = v15[17];
    if (v42)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  sub_2239CDCEC(v11, &qword_27D0A4A18, &qword_223A22E20);
LABEL_5:
  sub_2239F8A64(&v102);
LABEL_39:
  v52 = v113;
  *(a2 + 160) = v112;
  *(a2 + 176) = v52;
  *(a2 + 192) = v114;
  *(a2 + 208) = v115;
  v53 = v109;
  *(a2 + 96) = v108;
  *(a2 + 112) = v53;
  v54 = v111;
  *(a2 + 128) = v110;
  *(a2 + 144) = v54;
  v55 = v105;
  *(a2 + 32) = v104;
  *(a2 + 48) = v55;
  v56 = v107;
  *(a2 + 64) = v106;
  *(a2 + 80) = v56;
  result = *&v102;
  v58 = v103;
  *a2 = v102;
  *(a2 + 16) = v58;
  return result;
}

uint64_t sub_2239F7948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000223A25000 == a2;
  if (v3 || (sub_223A218F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000223A250C0 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000223A250E0 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000223A25100 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044 || (sub_223A218F0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D754E6C65646F6DLL && a2 == 0xEB00000000726562 || (sub_223A218F0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7372655665736163 && a2 == 0xEB000000006E6F69 || (sub_223A218F0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572617764726168 && a2 == 0xEF6E6F6973726556 || (sub_223A218F0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEF69726953796548 || (sub_223A218F0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x5064756F6C437369 && a2 == 0xED00006465726961 || (sub_223A218F0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x50636967614D7369 && a2 == 0xED00006465726961 || (sub_223A218F0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000223A25020 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E696E657473696CLL && a2 == 0xED000065646F4D67 || (sub_223A218F0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x756F527472616D73 && a2 == 0xEE0065646F4D6574 || (sub_223A218F0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223A25120 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000223A25060 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000223A25140 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223A25160 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x676E69737566 && a2 == 0xE600000000000000)
  {

    return 18;
  }

  else
  {
    v6 = sub_223A218F0();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_2239F7F50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49F0, &qword_223A22E00);
  v5 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v7 = &v37 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239F88D4();
  sub_223A21990();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v71 = a2;
  v72 = a1;
  v8 = v5;
  LOBYTE(v88) = 0;
  v9 = sub_223A21800();
  LOBYTE(v74) = 1;
  sub_2239F8928();
  sub_223A21830();
  v65 = v9;
  v66 = v90;
  v67 = v88;
  v68 = v91;
  v10 = v92;
  v69 = v93;
  v70 = v89;
  v11 = v94;
  LOBYTE(v74) = 2;
  sub_223A21830();
  v55 = v11;
  v56 = v10;
  v57 = v88;
  v12 = v90;
  v61 = v91;
  v62 = v89;
  v13 = v92;
  v63 = v93;
  v64 = 0;
  v14 = v94;
  LOBYTE(v88) = 3;
  sub_223A21810();
  v52 = v14;
  v53 = v13;
  v54 = v12;
  v16 = v15;
  LOBYTE(v88) = 4;
  LODWORD(v14) = sub_223A21850();
  LOBYTE(v88) = 5;
  v17 = sub_223A217F0();
  v60 = v18;
  LOBYTE(v88) = 6;
  v51 = sub_223A217F0();
  v59 = v19;
  LOBYTE(v88) = 7;
  v50 = sub_223A217F0();
  v58 = v20;
  LOBYTE(v88) = 8;
  v49 = sub_223A21800();
  LODWORD(v13) = v14;
  v21 = v57;
  LOBYTE(v88) = 9;
  v48 = sub_223A21800();
  LOBYTE(v88) = 10;
  v47 = sub_223A21800();
  LOBYTE(v88) = 11;
  v46 = sub_223A21800();
  LOBYTE(v88) = 12;
  v22 = sub_223A21850();
  LOBYTE(v88) = 13;
  v45 = sub_223A21840();
  LOBYTE(v88) = 14;
  v44 = sub_223A21800();
  LOBYTE(v88) = 15;
  v43 = sub_223A21840();
  LOBYTE(v88) = 16;
  v42 = sub_223A21800();
  LOBYTE(v88) = 17;
  v41 = sub_223A21800();
  v125 = 18;
  v23 = sub_223A217F0();
  v39 = v24;
  v40 = v23;
  v25 = v65 & 1;
  v38 = v65 & 1;
  v65 = v49 & 1;
  LODWORD(v64) = v48 & 1;
  v48 = v46 & 1;
  v49 = v47 & 1;
  v46 = v42 & 1;
  v47 = v44 & 1;
  v44 = v41 & 1;
  (*(v8 + 8))(v7, v73);
  BYTE7(v86) = v127;
  *(&v86 + 5) = v126;
  LOBYTE(v74) = v25;
  v26 = v66;
  v27 = v67;
  *(&v74 + 1) = v67;
  *&v75 = v70;
  v28 = v68;
  *(&v75 + 1) = v66;
  *&v76 = v68;
  *(&v76 + 1) = v56;
  *&v77 = v69;
  *(&v77 + 1) = v55;
  *&v78 = v21;
  *(&v78 + 1) = v62;
  *&v79 = v54;
  *(&v79 + 1) = v61;
  *&v80 = v53;
  *(&v80 + 1) = v63;
  *&v81 = v52;
  *(&v81 + 1) = v16;
  LODWORD(v82) = v13;
  *(&v82 + 1) = v17;
  *&v83 = v60;
  *(&v83 + 1) = v51;
  *&v84 = v59;
  *(&v84 + 1) = v50;
  *&v85 = v58;
  BYTE8(v85) = v65;
  BYTE9(v85) = v64;
  BYTE10(v85) = v49;
  BYTE11(v85) = v48;
  HIDWORD(v85) = v22;
  LOBYTE(v86) = v45;
  BYTE1(v86) = v47;
  BYTE2(v86) = v43;
  BYTE3(v86) = v46;
  BYTE4(v86) = v44;
  *(&v86 + 1) = v40;
  v87 = v39;
  sub_2239EF1D4(&v74, &v88);
  __swift_destroy_boxed_opaque_existential_0(v72);
  LOBYTE(v88) = v38;
  v89 = v27;
  v90 = v70;
  v91 = v26;
  v92 = v28;
  *(&v88 + 1) = v128[0];
  HIDWORD(v88) = *(v128 + 3);
  v93 = v56;
  v94 = v69;
  v95 = v55;
  v96 = v21;
  v97 = v62;
  v98 = v54;
  v99 = v61;
  v100 = v53;
  v101 = v63;
  v102 = v52;
  v103 = v16;
  v104 = v13;
  v105 = v17;
  v106 = v60;
  v107 = v51;
  v108 = v59;
  v109 = v50;
  v110 = v58;
  v111 = v65;
  v112 = v64;
  v113 = v49;
  v114 = v48;
  v115 = v22;
  v116 = v45;
  v117 = v47;
  v118 = v43;
  v119 = v46;
  v120 = v44;
  v122 = v127;
  v121 = v126;
  v123 = v40;
  v124 = v39;
  result = sub_2239EF230(&v88);
  v30 = v85;
  v31 = v71;
  *(v71 + 160) = v84;
  *(v31 + 176) = v30;
  *(v31 + 192) = v86;
  *(v31 + 208) = v87;
  v32 = v81;
  *(v31 + 96) = v80;
  *(v31 + 112) = v32;
  v33 = v83;
  *(v31 + 128) = v82;
  *(v31 + 144) = v33;
  v34 = v77;
  *(v31 + 32) = v76;
  *(v31 + 48) = v34;
  v35 = v79;
  *(v31 + 64) = v78;
  *(v31 + 80) = v35;
  v36 = v75;
  *v31 = v74;
  *(v31 + 16) = v36;
  return result;
}

unint64_t sub_2239F88D4()
{
  result = qword_27D0A49F8;
  if (!qword_27D0A49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A49F8);
  }

  return result;
}

unint64_t sub_2239F8928()
{
  result = qword_27D0A4A00;
  if (!qword_27D0A4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A00);
  }

  return result;
}

unint64_t sub_2239F89B4()
{
  result = qword_27D0A4A10;
  if (!qword_27D0A4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A10);
  }

  return result;
}

double sub_2239F8A64(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_2239F8A8C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2239F8AA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49C0, &qword_223A22C78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239F8B10(uint64_t a1)
{
  v2 = type metadata accessor for AACPVersionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2239F8B6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_223A20850();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_2239F8D84(uint64_t a1, int a2)
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

uint64_t sub_2239F8DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2239F8E2C()
{
  result = qword_27D0A4A30;
  if (!qword_27D0A4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A30);
  }

  return result;
}

unint64_t sub_2239F8E84()
{
  result = qword_27D0A4A38;
  if (!qword_27D0A4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A38);
  }

  return result;
}

unint64_t sub_2239F8EDC()
{
  result = qword_27D0A4A40;
  if (!qword_27D0A4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A40);
  }

  return result;
}

unint64_t sub_2239F8F34()
{
  result = qword_27D0A4A48;
  if (!qword_27D0A4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A48);
  }

  return result;
}

uint64_t sub_2239F8F88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556;
  if (v4 || (sub_223A218F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1145656661 && a2 == 0xE400000000000000 || (sub_223A218F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_223A218F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000223A25180 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_223A218F0();

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

void sub_2239F9100(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A50, &qword_223A23038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239F93E0();
  sub_223A21990();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v28 = 0;
    v9 = sub_223A217F0();
    v24 = v10;
    v27 = 1;
    v11 = sub_223A217F0();
    v23 = v12;
    v21 = v11;
    v26 = 2;
    v20 = sub_223A217F0();
    v22 = v13;
    v25 = 3;
    v14 = sub_223A21820();
    (*(v6 + 8))(v8, v5);
    v15 = v24;

    v16 = v23;

    v17 = v22;

    __swift_destroy_boxed_opaque_existential_0(a1);

    *a2 = v9;
    a2[1] = v15;
    v18 = v20;
    a2[2] = v21;
    a2[3] = v16;
    a2[4] = v18;
    a2[5] = v17;
    a2[6] = v14;
  }
}

unint64_t sub_2239F93E0()
{
  result = qword_27D0A4A58;
  if (!qword_27D0A4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BudInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BudInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2239F9588()
{
  result = qword_27D0A4A68;
  if (!qword_27D0A4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A68);
  }

  return result;
}

unint64_t sub_2239F95E0()
{
  result = qword_27D0A4A70;
  if (!qword_27D0A4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A70);
  }

  return result;
}

unint64_t sub_2239F9638()
{
  result = qword_27D0A4A78;
  if (!qword_27D0A4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A78);
  }

  return result;
}

uint64_t AirPodWorker.__allocating_init(with:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  v4 = *MEMORY[0x277CEF9C0];
  v5 = sub_223A20BC0();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields) = 0;
  sub_223A20FA0();
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_halIOCategory;
  *(v2 + v6) = sub_223A20E70();
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_isAirPodSession) = 0;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_hasSentAirPodInformation) = 0;
  sub_2239CB264(a1, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session);
  return v2;
}

uint64_t sub_2239F9798()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

uint64_t sub_2239F97E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  MEMORY[0x28223BE20](v0 - 8);
  v43 = &v37 - v1;
  v2 = sub_223A20D20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D0A47D8 != -1)
  {
    goto LABEL_28;
  }

  while (qword_27D0A4E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A88, &qword_223A23278);
    sub_223A21550();
    v6 = *&v48[0];
    if (!*(*&v48[0] + 16))
    {

      return 0;
    }

    v41 = v2;
    v2 = 0;
    v7 = *&v48[0] + 56;
    v8 = 1 << *(*&v48[0] + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(*&v48[0] + 56);
    v44 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_logger;
    v42 = (v46 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session);
    v11 = (v8 + 63) >> 6;
    v40 = (v3 + 8);
    *&v5 = 134217984;
    v39 = v5;
    while (v10)
    {
LABEL_16:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = *(v6 + 48) + 216 * (v14 | (v2 << 6));
      v16 = *(v15 + 16);
      v48[0] = *v15;
      v48[1] = v16;
      v17 = *(v15 + 80);
      v19 = *(v15 + 32);
      v18 = *(v15 + 48);
      v48[4] = *(v15 + 64);
      v48[5] = v17;
      v48[2] = v19;
      v48[3] = v18;
      v20 = *(v15 + 96);
      v21 = *(v15 + 112);
      v22 = *(v15 + 144);
      v48[8] = *(v15 + 128);
      v48[9] = v22;
      v48[6] = v20;
      v48[7] = v21;
      v23 = *(v15 + 160);
      v24 = *(v15 + 176);
      v25 = *(v15 + 192);
      v49 = *(v15 + 208);
      v48[11] = v24;
      v48[12] = v25;
      v48[10] = v23;
      if (v48[0])
      {
        sub_2239EF1D4(v48, &v47);
        v26 = sub_223A20FB0();
        v27 = sub_223A214D0();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_2239C7000, v26, v27, "sendAirPodInformation() found connected apple device", v28, 2u);
          MEMORY[0x223DF1300](v28, -1, -1);
        }

        sub_2239F5358();
        sub_2239EF230(v48);
        v29 = sub_223A21170();

        if (v29)
        {
          v30 = sub_223A20CA0();
          (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
          v31 = v6;
          sub_223A20CB0();
          v3 = v42[3];
          __swift_project_boxed_opaque_existential_1(v42, v3);
          if ((sub_223A20980() & 1) == 0)
          {

            v32 = sub_223A20FB0();
            v33 = sub_223A214E0();
            if (os_log_type_enabled(v32, v33))
            {
              v3 = swift_slowAlloc();
              *v3 = v39;
              v34 = v42[3];
              v37 = v42[4];
              __swift_project_boxed_opaque_existential_1(v42, v34);
              v38 = v33;
              v6 = v31;
              *(v3 + 4) = sub_223A20950();

              _os_log_impl(&dword_2239C7000, v32, v38, "AirPodInformation message dropped. { reporterID=%lld }", v3, 0xCu);
              MEMORY[0x223DF1300](v3, -1, -1);
            }

            else
            {
            }
          }

          (*v40)(v45, v41);
        }

        else
        {
          v35 = sub_223A20FB0();
          v3 = sub_223A214E0();
          if (os_log_type_enabled(v35, v3))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_2239C7000, v35, v3, "AirPodInformation message cannot be converted to simple type. Aborting send.", v36, 2u);
            MEMORY[0x223DF1300](v36, -1, -1);
          }
        }
      }
    }

    while (1)
    {
      v13 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return 1;
      }

      v10 = *(v7 + 8 * v13);
      ++v2;
      if (v10)
      {
        v2 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  return 0;
}

uint64_t sub_2239F9E08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2239F9E94(uint64_t a1, uint64_t *a2)
{
  v4 = sub_223A20BC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_2239F9FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2239FA034(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_2239FA124(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_2239FA18C()
{
  swift_beginAccess();

  return result;
}

double sub_2239FA1D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t AirPodWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_2239FA34C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_2239FA394(uint64_t a1)
{
  result = sub_223A20BC0();
  if (v2 <= 0x3F)
  {
    result = sub_223A20FC0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

id BMDeviceAdaptiveVolume.init(nonDrcPayload:drcPayload:sessionInfo:serialNumber:drcAVClientTimestamp:routedDrcGain:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v71 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v34 = sub_223A21930();
  v33 = sub_223A21930();
  v32 = sub_223A21930();
  v31 = sub_223A21930();
  v30 = sub_223A21930();
  v29 = sub_223A21930();
  v28 = sub_223A21930();
  v27 = sub_223A21930();
  v26 = sub_223A21930();
  v25 = sub_223A21930();
  v70 = sub_223A21930();
  v69 = sub_223A21930();
  v68 = sub_223A21930();
  v67 = sub_223A21930();
  v66 = sub_223A21930();
  v65 = sub_223A21930();
  v64 = sub_223A21930();
  v63 = sub_223A21930();
  v62 = sub_223A21930();
  v61 = sub_223A21930();
  v60 = sub_223A21930();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
  sub_2239D18A4();
  sub_223A211D0();

  v59 = sub_223A211F0();

  if (sub_223A208C0())
  {
    v51 = sub_223A211F0();
  }

  else
  {
    v51 = 0;
  }

  v58 = sub_223A21930();
  v57 = sub_223A21930();
  v56 = sub_223A21930();
  v55 = sub_223A21930();
  v47 = sub_223A21930();
  v46 = sub_223A21930();
  v54 = sub_223A21930();
  v53 = sub_223A21930();
  v52 = sub_223A21930();
  v43 = sub_223A21930();
  v8 = sub_2239FAEF8();
  sub_2239FAF90(v8);

  sub_2239DC698();
  v50 = sub_223A21370();

  v49 = sub_223A21930();
  v48 = sub_223A21930();
  v45 = sub_223A21930();
  v44 = sub_223A21930();
  v42 = sub_223A21930();
  v41 = sub_223A21930();
  v40 = sub_223A21930();
  v39 = sub_223A21930();
  v38 = sub_223A21930();
  v9 = sub_2239FAE64();
  sub_2239FAF90(v9);

  v10 = sub_223A21370();

  v11 = sub_223A21930();
  v12 = sub_223A21930();
  v37 = sub_223A21930();
  v36 = sub_223A21930();
  v35 = sub_223A21930();
  v13 = sub_223A21930();
  v14 = sub_223A21980();
  v15 = v14;
  if (a6 == 0.0)
  {
    v16 = v71;
    v17 = v16;
    v18 = v16;
  }

  else
  {
    v19 = v14;
    v20 = sub_223A21930();
    v17 = sub_223A21930();
    v15 = v19;
    v18 = v20;
    v16 = sub_223A21930();
  }

  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = sub_223A213E0();
  v24 = [v21 initWithControllerVersion:v34 refMicdBA:v33 refMicdBC:v32 drumdBA:v31 drumdBK:0 drumdBAPredicted:v30 downlinkdBA:v29 currentVolumePrct:v28 lastUserVolChangeType:v27 headphoneMode:v26 streamType:v25 windSpeechAggressorFlag:v70 volumeChangeFlag:v69 speechPresenceProbability:v68 personalizationParamSnr:0 personalizationParamMistakes:0 lastEMediadBA:0 lastVolMediaPrct:v67 lastETelephonydBA:0 lastVolTelephonyPrct:0 lastESiridBA:0 lastVolSiriPrct:v66 smoothEae:v65 desiredDeltaE:0 predVolMediaPrct:v64 predVolTelephonyPrct:v63 predVolSiriPrct:v62 onStartPredictionFlag:v61 guardrailsAvoidFlag:0 minMaxCutFlag:0 manualVolumeChangeFlag:v60 bigWindowSize:0 smallWindowSize:0 activeAppName:v59 activeAirpodsSerialNumber:v51 anchorVol:v58 anchorEnv:v57 personalizationCoeff:v56 unsignedPredVolMediaPrct:v55 unsignedPredVolTelephonyPrct:v47 unsignedPredVolSiriPrct:v46 singleBudFlag:v54 cdEngagementFlag:v53 activeStreamFlag:v52 pvFeatureEnableFlag:v43 envSpectralData32B:v50 windStrength:v49 windProb:v48 mediaType:v45 sourceActivity:v44 budActivity:v42 location:v41 locationType:v40 focusMode:v39 streamingAppBundleId:v38 noiseType4B:v10 instdBA:v11 instdBC:v12 nonCAListeningMode:v37 fit:v36 fixedAutoAncGain:v35 adjustedAutoAncGain:? timestamp:? DRCenablementBit:? DRCwindFlag:? DRCappSelfVoiceFlag:? drumDRC:? routedDRCGain:?];

  return v24;
}

uint64_t sub_2239FAE64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A98, &unk_223A23470);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  *(v1 + 16) = 4;
  *(v1 + 24) = 2 * v2 - 64;
  *(v1 + 32) = *(v0 + 58);
  return v1;
}

uint64_t sub_2239FAEF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A98, &unk_223A23470);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  *(v1 + 16) = 32;
  *(v1 + 24) = 2 * v2 - 64;
  v3 = *(v0 + 37);
  *(v1 + 32) = *(v0 + 21);
  *(v1 + 48) = v3;
  return v1;
}

uint64_t sub_2239FAF90(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_223A21750();
    v4 = a1 + 32;
    do
    {
      ++v4;
      sub_223A21930();
      sub_223A21730();
      sub_223A21760();
      sub_223A21770();
      sub_223A21740();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t CoreAnalyticsWorker.__allocating_init(with:)(__int128 *a1)
{
  v2 = sub_223A20290();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  v8 = *MEMORY[0x277CEF9B8];
  v9 = sub_223A20BC0();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  v10 = [objc_opt_self() alphanumericCharacterSet];
  sub_223A20270();

  sub_223A20280();
  (*(v3 + 8))(v5, v2);
  sub_2239CB264(a1, v6 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session);
  return v6;
}

uint64_t CoreAnalyticsWorker.init(with:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_223A20290();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  v9 = *MEMORY[0x277CEF9B8];
  v10 = sub_223A20BC0();
  (*(*(v10 - 8) + 104))(v2 + v8, v9, v10);
  v11 = [objc_opt_self() alphanumericCharacterSet];
  sub_223A20270();

  sub_223A20280();
  (*(v5 + 8))(v7, v4);
  sub_2239CB264(a1, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session);
  return v2;
}

Swift::Bool __swiftcall CoreAnalyticsWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

uint64_t CoreAnalyticsWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t CoreAnalyticsWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t CoreAnalyticsWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_nonAlphaNumerics;
  v4 = sub_223A20290();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

unint64_t sub_2239FB61C()
{
  result = qword_2813336E0;
  if (!qword_2813336E0)
  {
    type metadata accessor for CoreAnalyticsWorker(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813336E0);
  }

  return result;
}

uint64_t type metadata accessor for CoreAnalyticsWorker(uint64_t a1)
{
  result = qword_281334498;
  if (!qword_281334498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239FB6C8(uint64_t a1)
{
  result = sub_223A20BC0();
  if (v2 <= 0x3F)
  {
    result = sub_223A20290();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2239FB7D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AB0, &qword_223A233B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AB8, &qword_223A233B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = v0[1];
  v41 = *v0;
  v42 = v8;
  v39 = 59;
  v40 = 0xE100000000000000;
  sub_2239D1804();
  v9 = sub_223A21600();
  v11 = v9;
  v38 = *(v9 + 16);
  if (!v38)
  {
LABEL_21:

    return;
  }

  v32 = v7;
  v37 = v4;
  v12 = 0;
  v35 = (v5 + 48);
  v30 = (v5 + 8);
  v31 = (v5 + 32);
  v13 = (v9 + 40);
  v14 = 0.0;
  *&v10 = 136380675;
  v29 = v10;
  v33 = v0;
  v34 = v3;
  v36 = v9;
  while (v12 < *(v11 + 16))
  {
    v20 = *(v13 - 1);
    v19 = *v13;
    v21 = HIBYTE(*v13) & 0xF;
    if ((*v13 & 0x2000000000000000) == 0)
    {
      v21 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
      goto LABEL_6;
    }

    type metadata accessor for CPUVoltageCalculator(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AC0, &qword_223A233C0);
    v22 = v43;
    sub_223A20590();
    v43 = v22;
    if (v22)
    {

      return;
    }

    v23 = v37;
    if ((*v35)(v3, 1, v37) == 1)
    {
      sub_2239CDCEC(v3, &qword_27D0A4AB0, &qword_223A233B0);
LABEL_18:

      v26 = sub_223A20FB0();
      v27 = sub_223A214E0();

      if (os_log_type_enabled(v26, v27))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v41 = *&v16;
        *v15 = v29;
        v17 = sub_2239E1910(v20, v19, &v41);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_2239C7000, v26, v27, "Error extracting voltage data from %{private}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x223DF1300](v16, -1, -1);
        v18 = v15;
        v3 = v34;
        MEMORY[0x223DF1300](v18, -1, -1);
      }

      else
      {
      }

      goto LABEL_5;
    }

    v24 = v32;
    (*v31)(v32, v3, v23);
    swift_getKeyPath();
    sub_223A205A0();

    if (BYTE4(v41))
    {
      (*v30)(v24, v23);
      v3 = v34;
      goto LABEL_18;
    }

    v25 = LODWORD(v41);
    swift_getKeyPath();
    sub_223A205A0();

    (*v30)(v24, v23);
    if (v42)
    {
      v3 = v34;
      goto LABEL_18;
    }

    v28 = v41;

    v14 = v14 + v28 * v25;
    v3 = v34;
LABEL_5:
    v11 = v36;
LABEL_6:
    ++v12;
    v13 += 2;
    if (v38 == v12)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for CPUVoltageCalculator(uint64_t a1)
{
  result = qword_281333128;
  if (!qword_281333128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239FBC94@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AC8, &qword_223A23408);
  MEMORY[0x28223BE20](v1 - 8);
  v108 = &v93 - v2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AD0, &qword_223A23410);
  v128 = *(v116 - 8);
  v3 = MEMORY[0x28223BE20](v116);
  v107 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v117 = &v93 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AD8, &qword_223A23418);
  v7 = *(v6 - 8);
  v126 = v6;
  v127 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v104 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v125 = &v93 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE0, &qword_223A23420);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v93 - v12;
  v102 = sub_223A204B0();
  v118 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE8, &qword_223A23428);
  v119 = *(v100 - 8);
  v16 = MEMORY[0x28223BE20](v100);
  v103 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v113 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF0, &qword_223A23430);
  v20 = *(v19 - 8);
  v130 = v19;
  v131 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v112 = &v93 - v24;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF8, &qword_223A23438);
  v109 = *(v105 - 8);
  v25 = MEMORY[0x28223BE20](v105);
  v106 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v115 = &v93 - v28;
  MEMORY[0x28223BE20](v27);
  v122 = &v93 - v29;
  v30 = sub_223A20530();
  v129 = v30;
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v93 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B00, &qword_223A23440);
  v123 = *(v37 - 8);
  v124 = v37;
  v38 = MEMORY[0x28223BE20](v37);
  v101 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v121 = &v93 - v40;
  v133 = 0x563A656D616ELL;
  v134 = 0xE600000000000000;
  v114 = sub_2239E4BE4();
  MEMORY[0x223DEF550](v135, &v133, MEMORY[0x277D837D0], v114);
  sub_223A204A0();
  sub_223A20550();
  v98 = sub_223A20560();
  v41 = *(v98 - 8);
  v97 = *(v41 + 56);
  v99 = v41 + 56;
  v97(v13, 1, 1, v98);
  sub_223A204A0();
  sub_2239FE308();
  v42 = MEMORY[0x277D83E40];
  v111 = v23;
  v43 = v13;
  v95 = v13;
  v44 = v102;
  sub_223A20520();
  v45 = *(v31 + 8);
  v120 = v31 + 8;
  v45(v34, v30);
  v46 = v45;
  v94 = v45;
  sub_2239CDCEC(v43, &qword_27D0A4AE0, &qword_223A23420);
  (*(v118 + 8))(v15, v44);
  v47 = v103;
  MEMORY[0x223DEF5B0](v23, v42);
  v48 = sub_2239FE360(&qword_281333738, &qword_27D0A4AE8, &qword_223A23428, MEMORY[0x277D85420]);
  v49 = v113;
  v50 = v100;
  MEMORY[0x223DEF550](v47, v100, v48);
  v51 = *(v119 + 1);
  v51(v47, v50);
  v52 = v112;
  sub_223A20480();
  v51(v49, v50);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B08, &qword_223A23448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B10, &qword_223A23450);
  v102 = MEMORY[0x277D85AC0];
  v118 = sub_2239FE360(&qword_281333730, &qword_27D0A4AF0, &qword_223A23430, MEMORY[0x277D85AC0]);
  v54 = v130;
  v55 = v122;
  v113 = v53;
  sub_223A20510();
  v56 = *(v131 + 8);
  v131 += 8;
  v56(v52, v54);
  v119 = v56;
  v57 = v129;
  v46(v36, v129);
  v58 = v101;
  MEMORY[0x223DEF5A0](v55, v53);
  v96 = MEMORY[0x277D85408];
  v100 = sub_2239FE360(&qword_281333740, &qword_27D0A4B00, &qword_223A23440, MEMORY[0x277D85408]);
  v59 = v124;
  MEMORY[0x223DEF550](v58, v124, v100);
  v60 = *(v123 + 8);
  v123 += 8;
  v103 = v60;
  (v60)(v58, v59);
  v61 = v95;
  v97(v95, 1, 1, v98);
  sub_223A204A0();
  v62 = v111;
  sub_2239FCFD0(v111);
  v63 = MEMORY[0x277D83E40];
  sub_223A204F0();
  v56(v62, v54);
  v64 = v94;
  v94(v36, v57);
  sub_2239CDCEC(v61, &qword_27D0A4AE0, &qword_223A23420);
  v65 = v104;
  MEMORY[0x223DEF570](v52, v63);
  v99 = sub_2239FE360(&qword_281333758, &qword_27D0A4AD8, &qword_223A23418, MEMORY[0x277D853C0]);
  v66 = v126;
  MEMORY[0x223DEF550](v65, v126, v99);
  v67 = *(v127 + 8);
  v127 += 8;
  v101 = v67;
  (v67)(v65, v66);
  strcpy(v132, ",duty_cycle:");
  BYTE5(v132[1]) = 0;
  HIWORD(v132[1]) = -5120;
  MEMORY[0x223DEF550](&v133, v132, MEMORY[0x277D837D0], v114);
  sub_223A204A0();
  sub_2239FDA7C(v52);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B18, &qword_223A23458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B20, &qword_223A23460);
  v69 = v130;
  v70 = v108;
  sub_223A20510();
  v119(v52, v69);
  v64(v36, v129);
  v71 = v107;
  MEMORY[0x223DEF5A0](v70, v68);
  v104 = sub_2239FE360(&qword_281333748, &qword_27D0A4AD0, &qword_223A23410, v96);
  v72 = v71;
  v73 = v71;
  v74 = v116;
  MEMORY[0x223DEF550](v72, v116, v104);
  v75 = *(v128 + 8);
  v128 += 8;
  v108 = v75;
  (v75)(v73, v74);
  v132[0] = v135[0];
  v132[1] = v135[1];
  sub_223A20480();

  sub_223A204A0();
  v76 = v111;
  sub_223A20500();
  v77 = v36;
  sub_223A204E0();
  v78 = v119;
  v119(v76, v69);
  v79 = v129;
  v64(v36, v129);
  sub_223A204A0();
  sub_223A20500();
  v107 = sub_2239FE360(&qword_281333718, &qword_27D0A4AF8, &qword_223A23438, v102);
  v80 = v105;
  v81 = v130;
  sub_223A204E0();
  v78(v76, v81);
  v64(v36, v79);
  v82 = v133;
  v83 = v134;
  sub_223A204A0();
  v132[0] = v82;
  v132[1] = v83;
  sub_223A20500();

  v84 = v106;
  v85 = v130;
  sub_223A204E0();
  v86 = v85;
  v87 = v119;
  v119(v76, v86);
  v88 = v129;
  v64(v36, v129);
  sub_223A204A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B28, &qword_223A23468);
  v89 = v117;
  v90 = v116;
  sub_223A204E0();
  v64(v77, v88);
  v91 = *(v109 + 8);
  v91(v84, v80);
  v91(v115, v80);
  v91(v122, v80);
  v87(v112, v130);
  (v108)(v89, v90);
  (v101)(v125, v126);
  return (v103)(v121, v124);
}

void sub_2239FCCD4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x223DF0350](*a1, a1[1], a1[2], a1[3]);
  v5 = HIBYTE(v4) & 0xF;
  v6 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v29 = 0;
    LOBYTE(v28) = 1;
LABEL_66:
    *a2 = v29;
    *(a2 + 4) = v28 & 1;
    return;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v33 = 0;
    sub_2239FE3A8(v3, v4, 10);
    v10 = v30;

    v28 = HIDWORD(v10) & 1;
LABEL_63:
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v10;
    }

    goto LABEL_66;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v8 = sub_223A21720();
      v6 = v31;
    }

    v9 = *v8;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        if (--v6)
        {
          LODWORD(v10) = 0;
          if (v8)
          {
            v17 = v8 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_61;
              }

              v19 = 10 * v10;
              if ((v19 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v10) = v19 + v18;
              if (__CFADD__(v19, v18))
              {
                goto LABEL_61;
              }

              ++v17;
              if (!--v6)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        LODWORD(v10) = 0;
        if (v8)
        {
          while (1)
          {
            v23 = *v8 - 48;
            if (v23 > 9)
            {
              goto LABEL_61;
            }

            v24 = 10 * v10;
            if ((v24 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v10) = v24 + v23;
            if (__CFADD__(v24, v23))
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v10) = 0;
      LOBYTE(v6) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      if (--v6)
      {
        LODWORD(v10) = 0;
        if (v8)
        {
          v11 = v8 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = 10 * v10;
            if ((v13 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v10) = v13 - v12;
            if (v13 < v12)
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v6) = 0;
LABEL_62:
        v33 = v6;
        LOBYTE(v28) = v6;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v32[0] = v3;
  v32[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      if (v5)
      {
        LODWORD(v10) = 0;
        v25 = v32;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v10;
          if ((v27 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v10) = v27 + v26;
          if (__CFADD__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v5)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      v6 = v5 - 1;
      if (v5 != 1)
      {
        LODWORD(v10) = 0;
        v14 = v32 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v16 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v10) = v16 - v15;
          if (v16 < v15)
          {
            break;
          }

          ++v14;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    v6 = v5 - 1;
    if (v5 != 1)
    {
      LODWORD(v10) = 0;
      v20 = v32 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v10;
        if ((v22 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v10) = v22 + v21;
        if (__CFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v6)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
}

uint64_t sub_2239FCFD0@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE8, &qword_223A23428);
  v90 = *(v82 - 8);
  v1 = MEMORY[0x28223BE20](v82);
  v74 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v83 = &v62 - v3;
  v4 = sub_223A204B0();
  v84 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v62 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF0, &qword_223A23430);
  v85 = *(v80 - 8);
  v10 = MEMORY[0x28223BE20](v80);
  v75 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v62 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v62 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v79 = &v62 - v19;
  v20 = sub_223A20530();
  v91 = *(v20 - 8);
  v92 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE0, &qword_223A23420);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AD8, &qword_223A23418);
  v86 = *(v26 - 8);
  v87 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v88 = &v62 - v30;
  v95 = 44;
  v96 = 0xE100000000000000;
  v78 = sub_2239E4BE4();
  MEMORY[0x223DEF550](v97, &v95, MEMORY[0x277D837D0], v78);
  v68 = sub_223A20560();
  v31 = *(v68 - 8);
  v67 = *(v31 + 56);
  v69 = v31 + 56;
  v67(v25, 1, 1, v68);
  sub_223A204A0();
  sub_223A20540();
  v32 = sub_2239FE308();
  v63 = v4;
  v64 = v32;
  MEMORY[0x223DEF550](v7, v4, v32);
  v33 = (v84 + 1);
  v34 = v84[1];
  v34(v7, v4);
  v66 = v34;
  v84 = v33;
  v81 = v18;
  sub_223A20480();
  v34(v9, v4);
  v70 = sub_2239FE360(&qword_281333730, &qword_27D0A4AF0, &qword_223A23430, MEMORY[0x277D85AC0]);
  v35 = v79;
  v36 = v80;
  sub_223A204F0();
  v37 = *(v85 + 8);
  v85 += 8;
  v71 = v37;
  v37(v18, v36);
  v38 = v92;
  v40 = v91 + 8;
  v39 = *(v91 + 8);
  v39(v22, v92);
  v77 = v39;
  v91 = v40;
  sub_2239CDCEC(v25, &qword_27D0A4AE0, &qword_223A23420);
  v41 = v35;
  v42 = MEMORY[0x277D83E40];
  MEMORY[0x223DEF570](v35, MEMORY[0x277D83E40]);
  v65 = sub_2239FE360(&qword_281333758, &qword_27D0A4AD8, &qword_223A23418, MEMORY[0x277D853C0]);
  v43 = v87;
  MEMORY[0x223DEF550](v29, v87, v65);
  v44 = *(v86 + 8);
  v86 += 8;
  v72 = v44;
  v44(v29, v43);
  v93 = 58;
  v94 = 0xE100000000000000;
  MEMORY[0x223DEF550](&v95, &v93, MEMORY[0x277D837D0], v78);
  sub_223A20550();
  v67(v25, 1, 1, v68);
  sub_223A204A0();
  v45 = v42;
  v46 = v63;
  sub_223A20520();
  v39(v22, v38);
  sub_2239CDCEC(v25, &qword_27D0A4AE0, &qword_223A23420);
  v66(v9, v46);
  v47 = v74;
  MEMORY[0x223DEF5B0](v41, v45);
  v69 = sub_2239FE360(&qword_281333738, &qword_27D0A4AE8, &qword_223A23428, MEMORY[0x277D85420]);
  v48 = v82;
  MEMORY[0x223DEF550](v47, v82, v69);
  v49 = *(v90 + 8);
  v90 += 8;
  v84 = v49;
  (v49)(v47, v48);
  v93 = v97[0];
  v94 = v97[1];
  sub_223A20480();

  sub_223A204A0();
  v50 = v89;
  v51 = v80;
  sub_223A20500();
  v52 = v73;
  sub_223A20500();
  sub_223A204E0();
  v53 = v71;
  v71(v52, v51);
  v53(v50, v51);
  v77(v22, v92);
  v55 = v95;
  v54 = v96;
  sub_223A204A0();
  v93 = v55;
  v94 = v54;
  sub_223A20500();
  v56 = v75;
  sub_223A20500();

  v57 = v51;
  sub_223A204E0();
  v53(v56, v51);
  v53(v52, v51);
  v58 = v77;
  v77(v22, v92);
  sub_223A204A0();
  sub_223A20500();
  v60 = v82;
  v59 = v83;
  sub_223A20500();
  sub_223A204E0();
  v53(v56, v57);
  v53(v52, v57);
  v58(v22, v92);
  v53(v89, v57);
  v53(v81, v57);
  v53(v79, v57);
  (v84)(v59, v60);
  return v72(v88, v87);
}

uint64_t sub_2239FDA7C@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF0, &qword_223A23430);
  v66 = *(v63 - 8);
  v1 = MEMORY[0x28223BE20](v63);
  v65 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v64 = &v53 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v71 = &v53 - v6;
  MEMORY[0x28223BE20](v5);
  v72 = &v53 - v7;
  v77 = sub_223A20530();
  v8 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE0, &qword_223A23420);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = sub_223A204B0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE8, &qword_223A23428);
  v19 = *(v18 - 8);
  v73 = v18;
  v74 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v62 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v69 = &v53 - v23;
  MEMORY[0x28223BE20](v22);
  v70 = &v53 - v24;
  sub_223A20550();
  v25 = sub_223A20560();
  v26 = *(v25 - 8);
  v58 = *(v26 + 56);
  v59 = v26 + 56;
  v58(v13, 1, 1, v25);
  sub_223A204A0();
  v57 = sub_2239FE308();
  v27 = MEMORY[0x277D83E40];
  v28 = v72;
  v54 = v14;
  sub_223A20520();
  v29 = *(v8 + 8);
  v75 = v8 + 8;
  v76 = v29;
  v29(v10, v77);
  sub_2239CDCEC(v13, &qword_27D0A4AE0, &qword_223A23420);
  v30 = *(v15 + 8);
  v55 = v15 + 8;
  v56 = v30;
  v30(v17, v14);
  v31 = v69;
  MEMORY[0x223DEF5B0](v28, v27);
  v68 = sub_2239FE360(&qword_281333738, &qword_27D0A4AE8, &qword_223A23428, MEMORY[0x277D85420]);
  v32 = v31;
  v33 = v73;
  MEMORY[0x223DEF550](v31, v73, v68);
  v34 = v74 + 8;
  v35 = *(v74 + 8);
  v35(v32, v33);
  v61 = v35;
  v74 = v34;
  v78 = 46;
  v79 = 0xE100000000000000;
  v60 = sub_2239E4BE4();
  MEMORY[0x223DEF550](v80, &v78, MEMORY[0x277D837D0], v60);
  sub_223A20550();
  v58(v13, 1, 1, v25);
  sub_223A204A0();
  v36 = v72;
  v37 = v54;
  sub_223A20520();
  v76(v10, v77);
  sub_2239CDCEC(v13, &qword_27D0A4AE0, &qword_223A23420);
  v56(v17, v37);
  v38 = v62;
  MEMORY[0x223DEF5B0](v36, v27);
  v39 = v73;
  MEMORY[0x223DEF550](v38, v73, v68);
  v35(v38, v39);
  sub_223A20480();
  v40 = v80[0];
  v41 = v80[1];
  sub_223A204A0();
  v78 = v40;
  v79 = v41;
  sub_2239FE360(&qword_281333730, &qword_27D0A4AF0, &qword_223A23430, MEMORY[0x277D85AC0]);
  v42 = v63;
  v43 = v64;
  sub_223A20500();
  v44 = v65;
  sub_223A20500();

  v45 = v42;
  sub_223A204E0();
  v46 = *(v66 + 8);
  v46(v44, v42);
  v46(v43, v42);
  v76(v10, v77);
  sub_223A204A0();
  sub_223A20500();
  v47 = v69;
  v48 = v73;
  sub_223A20500();
  sub_223A204E0();
  v46(v44, v45);
  v46(v43, v45);
  v76(v10, v77);
  v46(v71, v45);
  v46(v72, v45);
  v49 = v48;
  v50 = v48;
  v51 = v61;
  v61(v47, v50);
  return v51(v70, v49);
}

void sub_2239FE280(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x223DF0350](*a1, a1[1], a1[2], a1[3]);
  v7 = 0;
  v5 = sub_2239FED98(v3, v4, &v7);

  v6 = v7;
  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = !v5;
}

unint64_t sub_2239FE308()
{
  result = qword_281333750;
  if (!qword_281333750)
  {
    sub_223A204B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281333750);
  }

  return result;
}

uint64_t sub_2239FE360(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_2239FE3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v74 = a2;

  v4 = sub_223A21330();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2239FE924(v4, v5);
    v41 = v40;

    v5 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_223A21720();
      v8 = v72;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (v7)
          {
            v26 = 0;
            v27 = v7 + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v26 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v21 = __CFADD__(v30, v31);
              v26 = v30 + v31;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v27;
              --v22;
            }

            while (v22);
LABEL_47:
            v16 = 0;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (v7)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *v7;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v21 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v21)
            {
              goto LABEL_128;
            }

            ++v7;
            --v8;
          }

          while (v8);
          v16 = 0;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = v14 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v17 + v18;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v16 = 0;
LABEL_129:

        LOBYTE(v73) = v16;
        return;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v42 = HIBYTE(v5) & 0xF;
  v73 = v6;
  v74 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v63 = 0;
        v64 = a3 + 48;
        v65 = a3 + 55;
        v66 = a3 + 87;
        if (a3 > 10)
        {
          v64 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v67 = &v73;
        v16 = 1;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v64)
          {
            if (v68 < 0x41 || v68 >= v65)
            {
              if (v68 < 0x61 || v68 >= v66)
              {
                goto LABEL_129;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          v70 = v63 * a3;
          if ((v70 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v71 = v68 + v69;
          v21 = __CFADD__(v70, v71);
          v63 = v70 + v71;
          if (v21)
          {
            goto LABEL_128;
          }

          v67 = (v67 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v73 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v21 = v51 >= v52;
          v44 = v51 - v52;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v54 = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v73 + 1;
      v16 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v54 * a3;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v21 = __CFADD__(v61, v62);
        v54 = v61 + v62;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v58;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
}

uint64_t sub_2239FE924(uint64_t a1, unint64_t a2)
{
  v2 = sub_223A21340();
  v6 = sub_2239FE9A4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2239FE9A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_223A215E0();
    if (!v9 || (v10 = v9, v11 = sub_2239E6D24(v9, 0), v12 = sub_2239FEAFC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_223A21280();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_223A21280();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_223A21720();
LABEL_4:

  return sub_223A21280();
}

unint64_t sub_2239FEAFC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2239FED1C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_223A212F0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_223A21720();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2239FED1C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_223A212D0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2239FED1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_223A21300();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DF03C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_2239FED98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_223A216F0();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_2239FEE90@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_2239FEF38(uint64_t a1)
{
  sub_223A20FC0();
  if (v1 <= 0x3F)
  {
    sub_2239FEFCC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2239FEFCC(uint64_t a1)
{
  if (!qword_281333720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A4B28, &qword_223A23468);
    v1 = sub_223A205B0();
    if (!v2)
    {
      atomic_store(v1, &qword_281333720);
    }
  }
}

uint64_t sub_2239FF030()
{
  type metadata accessor for DriverSnapshotManager(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = MEMORY[0x277D84F98];
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  sub_223A21470();
  *(v0 + 40) = v2;
  result = sub_223A20F40();
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_subscription) = 0;
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_subbedChannelsManaged) = 0;
  qword_2813359E8 = v0;
  return result;
}

void *sub_2239FF0B4(uint64_t a1)
{
  v2 = v1;
  v132 = *MEMORY[0x277D85DE8];
  v3 = sub_223A20D20();
  v4 = *(v3 - 8);
  v124 = v3;
  v125 = v4;
  MEMORY[0x28223BE20](v3);
  v126 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v123 = *(v120 - 8);
  v6 = MEMORY[0x28223BE20](v120);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v107 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  MEMORY[0x28223BE20](v11 - 8);
  v121 = &v107 - v12;
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F98];
  v122 = v13;
  *(v13 + 16) = MEMORY[0x277D84F98];
  v117 = v13 + 16;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v118 = (v15 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v119 = v16 + 16;
  v131 = 0;
  v17 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_logger;
  v18 = sub_223A20FB0();
  v19 = sub_223A214D0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v15;
    v21 = v17;
    v22 = v16;
    v23 = v2;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2239C7000, v18, v19, "getting latest samples", v24, 2u);
    v25 = v24;
    v2 = v23;
    v16 = v22;
    v17 = v21;
    v15 = v20;
    MEMORY[0x223DF1300](v25, -1, -1);
  }

  if (*(v2 + 16) != 1 || (Samples = IOReportCreateSamples()) == 0)
  {
    v49 = sub_223A20FB0();
    v50 = sub_223A214E0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2239C7000, v49, v50, "No samples returned. Giving up.", v51, 2u);
      MEMORY[0x223DF1300](v51, -1, -1);
    }

    goto LABEL_14;
  }

  v26 = sub_223A20FB0();
  v27 = sub_223A214D0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v15;
    v29 = v17;
    v30 = v16;
    v31 = v2;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2239C7000, v26, v27, "done getting latest samples", v32, 2u);
    v33 = v32;
    v2 = v31;
    v16 = v30;
    v17 = v29;
    v15 = v28;
    MEMORY[0x223DF1300](v33, -1, -1);
  }

  SamplesDelta = IOReportCreateSamplesDelta();
  if (!SamplesDelta)
  {
    v54 = v131;
    if (!v131)
    {

      return MEMORY[0x277D84F90];
    }

    aBlock[0] = v131;
    type metadata accessor for CFError(0);
    sub_223A01190(&qword_27D0A4B30, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    v55 = sub_223A21920();
    v57 = v56;

    v49 = sub_223A20FB0();
    v58 = sub_223A214E0();

    if (os_log_type_enabled(v49, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v59 = 136380675;
      v61 = sub_2239E1910(v55, v57, aBlock);

      *(v59 + 4) = v61;
      _os_log_impl(&dword_2239C7000, v49, v58, "Delta failed. { error=%{private}s }", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x223DF1300](v60, -1, -1);
      MEMORY[0x223DF1300](v59, -1, -1);
    }

    else
    {
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v35 = SamplesDelta;
  v110 = v17;
  v36 = swift_allocObject();
  v37 = v122;
  v36[2] = v15;
  v36[3] = v37;
  v36[4] = v16;
  v36[5] = v2;
  aBlock[4] = sub_223A011D8;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_223A003D0;
  aBlock[3] = &block_descriptor_36;
  v38 = _Block_copy(aBlock);
  v39 = v35;

  v114 = v16;

  v111 = v2;

  IOReportIterate();
  _Block_release(v38);
  v113 = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B40, &qword_223A23548);
  v40 = *(v123 + 72);
  v41 = (*(v123 + 80) + 32) & ~*(v123 + 80);
  v112 = swift_allocObject();
  v42 = v112 + v41;
  swift_beginAccess();
  v43 = *(*(v37 + 16) + 16);
  v117 = v15;
  v123 = v40;
  if (v43)
  {

    v44 = sub_223A21170();
    v45 = v124;
    v46 = v125;
    if (v44)
    {
      v47 = sub_223A20CA0();
      (*(*(v47 - 8) + 56))(v121, 1, 1, v47);
      sub_223A20CB0();
      v48 = *(v46 + 56);
      v48(v42, 0, 1, v45);
    }

    else
    {
      v109 = sub_223A21120();
      v63 = v62;
      v64 = sub_223A20FB0();
      v65 = sub_223A214E0();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        LODWORD(v108) = v65;
        v67 = v66;
        v68 = swift_slowAlloc();
        v129[0] = v68;
        *v67 = 136380931;
        *(v67 + 4) = sub_2239E1910(0xD000000000000011, 0x8000000223A253B0, v129);
        *(v67 + 12) = 2081;
        v69 = sub_2239E1910(v109, v63, v129);

        *(v67 + 14) = v69;
        v40 = v123;
        _os_log_impl(&dword_2239C7000, v64, v108, "Failed to convert stats to message. { %{private}s=%{private}s }", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DF1300](v68, -1, -1);
        MEMORY[0x223DF1300](v67, -1, -1);
      }

      else
      {
      }

      v46 = v125;
      v48 = *(v125 + 56);
      v48(v42, 1, 1, v45);
    }
  }

  else
  {
    v45 = v124;
    v46 = v125;
    v48 = *(v125 + 56);
    v48(v42, 1, 1, v124);
  }

  v70 = v118;
  swift_beginAccess();
  v71 = *v70;
  v72 = *(v71 + 16);
  v115 = v42;
  if (v72)
  {

    if (sub_223A21170())
    {
      v73 = sub_223A20CA0();
      v74 = *(*(v73 - 8) + 56);
      v118 = v71;
      v74(v121, 1, 1, v73);
      sub_223A20CB0();
      v48(v42 + v40, 0, 1, v45);
    }

    else
    {
      v109 = sub_223A21120();
      v118 = v75;
      v76 = sub_223A20FB0();
      v77 = sub_223A214E0();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v107 = v76;
        v79 = v78;
        v108 = swift_slowAlloc();
        v128[0] = v108;
        *v79 = 136380931;
        *(v79 + 4) = sub_2239E1910(0xD000000000000014, 0x8000000223A253D0, v128);
        *(v79 + 12) = 2081;
        v80 = sub_2239E1910(v109, v118, v128);

        *(v79 + 14) = v80;
        v40 = v123;
        v81 = v77;
        v82 = v107;
        _os_log_impl(&dword_2239C7000, v107, v81, "Failed to convert stats to message. { %{private}s=%{private}s }", v79, 0x16u);
        v83 = v108;
        swift_arrayDestroy();
        MEMORY[0x223DF1300](v83, -1, -1);
        v84 = v79;
        v42 = v115;
        MEMORY[0x223DF1300](v84, -1, -1);
      }

      else
      {
      }

      v46 = v125;
      v48(v42 + v40, 1, 1, v45);
    }
  }

  else
  {
    v48(v42 + v40, 1, 1, v45);
  }

  v85 = v42 + 2 * v40;
  v86 = v119;
  swift_beginAccess();
  if (*(*v86 + 16))
  {

    if (sub_223A21170())
    {
      v87 = sub_223A20CA0();
      (*(*(v87 - 8) + 56))(v121, 1, 1, v87);
      sub_223A20CB0();
      v88 = v42 + 2 * v40;
      v89 = 0;
    }

    else
    {
      v119 = sub_223A21120();
      v121 = v90;
      v91 = sub_223A20FB0();
      v92 = sub_223A214E0();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v111 = v91;
        LODWORD(v110) = v92;
        v94 = v93;
        v118 = swift_slowAlloc();
        v127 = v118;
        *v94 = 136380931;
        *(v94 + 4) = sub_2239E1910(0xD000000000000010, 0x8000000223A253F0, &v127);
        *(v94 + 12) = 2081;
        v95 = sub_2239E1910(v119, v121, &v127);

        *(v94 + 14) = v95;
        v96 = v111;
        _os_log_impl(&dword_2239C7000, v111, v110, "Failed to convert stats to message. { %{private}s=%{private}s }", v94, 0x16u);
        v97 = v118;
        swift_arrayDestroy();
        MEMORY[0x223DF1300](v97, -1, -1);
        MEMORY[0x223DF1300](v94, -1, -1);
      }

      else
      {
      }

      v46 = v125;
      v88 = v85;
      v89 = 1;
    }

    v48(v88, v89, 1, v45);
  }

  else
  {
    v48(v85, 1, 1, v45);
  }

  v98 = (v46 + 48);
  v99 = (v46 + 32);
  v52 = MEMORY[0x277D84F90];
  v100 = 3;
  v101 = v115;
  v102 = v123;
  do
  {
    sub_2239E1310(v101, v10);
    sub_223A011E4(v10, v8);
    if ((*v98)(v8, 1, v45) == 1)
    {
      sub_223A01254(v8);
    }

    else
    {
      v103 = *v99;
      (*v99)(v126, v8, v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_2239DF208(0, v52[2] + 1, 1, v52);
      }

      v105 = v52[2];
      v104 = v52[3];
      if (v105 >= v104 >> 1)
      {
        v52 = sub_2239DF208((v104 > 1), v105 + 1, 1, v52);
      }

      v52[2] = v105 + 1;
      v106 = v52 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v105;
      v45 = v124;
      v103(v106, v126, v124);
      v102 = v123;
    }

    v101 += v102;
    --v100;
  }

  while (v100);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return v52;
}

uint64_t sub_223A0016C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 16;
  }

  v5 = a1;
  Format = IOReportChannelGetFormat();
  if (Format > 1)
  {
    if (Format == 2)
    {
      swift_beginAccess();
      sub_223A01F1C(v5);
    }

    else
    {
      if (Format != 3)
      {
        goto LABEL_12;
      }

      swift_beginAccess();
      sub_223A01938(v5, (a2 + 16));
    }

LABEL_19:
    swift_endAccess();
    goto LABEL_20;
  }

  if (!Format)
  {
    v5 = v5;
    v12 = sub_223A20FB0();
    v13 = sub_223A214D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 16777472;
      v14[4] = IOReportChannelGetFormat();

      v15 = "Dropping sample. { format=%hhu }";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_20;
  }

  if (Format == 1)
  {
    swift_beginAccess();
    IntegerValue = IOReportSimpleGetIntegerValue();
    if (IntegerValue >= 1)
    {
      v8 = IntegerValue;
      v9 = sub_223A01628(v5, 0x656C706D6953, 0xE600000000000000);
      v16[3] = MEMORY[0x277D84A28];
      v16[0] = v8;
      sub_223A122FC(v16, v9, v10);
    }

    goto LABEL_19;
  }

LABEL_12:
  v5 = v5;
  v12 = sub_223A20FB0();
  v13 = sub_223A214E0();
  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_17;
  }

  v14 = swift_slowAlloc();
  *v14 = 16777472;
  v14[4] = IOReportChannelGetFormat();

  v15 = "IOReportingFormat not supported. { format=%hhu }";
LABEL_16:
  _os_log_impl(&dword_2239C7000, v12, v13, v15, v14, 5u);
  MEMORY[0x223DF1300](v14, -1, -1);

LABEL_20:
  return 0;
}

uint64_t sub_223A003D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3(a2);

  return v5;
}

uint64_t sub_223A0042C(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(v1 + 24))
  {

    v2 = sub_223A20BF0();

    if (*(v2 + 16))
    {

      v3 = sub_223A20FB0();
      v4 = sub_223A214D0();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = *(v2 + 16);

        _os_log_impl(&dword_2239C7000, v3, v4, "Loading ioReportingConfigs. { count=%ld }", v5, 0xCu);
        MEMORY[0x223DF1300](v5, -1, -1);
      }

      else
      {
      }

      v40 = 0;
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      *(v10 + 24) = v9;
      aBlock[4] = sub_223A01188;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_223A003D0;
      aBlock[3] = &block_descriptor_2;
      v11 = _Block_copy(aBlock);

      v12 = IOReportCopyFilteredChannels();
      _Block_release(v11);
      if (!v12)
      {
        v16 = v40;
        if (v40)
        {
          aBlock[0] = v40;
          type metadata accessor for CFError(0);
          sub_223A01190(&qword_27D0A4B30, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
          v17 = sub_223A21920();
          v19 = v18;
        }

        else
        {
          v17 = 0x6E776F6E6B6E75;
          v19 = 0xE700000000000000;
        }

        v24 = sub_223A20FB0();
        v25 = sub_223A214E0();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          aBlock[0] = v27;
          *v26 = 136380675;
          v28 = sub_2239E1910(v17, v19, aBlock);

          *(v26 + 4) = v28;
          _os_log_impl(&dword_2239C7000, v24, v25, "Unable to retrieve filtered channels. { err=%{private}s }", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x223DF1300](v27, -1, -1);
          MEMORY[0x223DF1300](v26, -1, -1);
        }

        else
        {
        }

        goto LABEL_33;
      }

      v13 = sub_223A20FB0();
      v14 = sub_223A214D0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        swift_beginAccess();
        *(v15 + 4) = *(v9 + 16);

        _os_log_impl(&dword_2239C7000, v13, v14, "IOReporting channels found. { count=%ld }", v15, 0xCu);
        MEMORY[0x223DF1300](v15, -1, -1);
      }

      else
      {
      }

      v38[1] = 0;
      if (IOReportCreateSubscription())
      {
        v29 = sub_223A20FB0();
        v30 = sub_223A214E0();
        if (!os_log_type_enabled(v29, v30))
        {
LABEL_30:

LABEL_32:

LABEL_33:

          return 0;
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2239C7000, v29, v30, "Unable to subscribe to desired channels: list of subscribed channels is empty.", v31, 2u);
        v32 = v31;
      }

      else
      {
        v20 = v40;
        if (v40)
        {
          v38[0] = v40;
          type metadata accessor for CFError(0);
          sub_223A01190(&qword_27D0A4B30, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
          v21 = sub_223A21920();
          v23 = v22;
        }

        else
        {
          v21 = 0x6E776F6E6B6E75;
          v23 = 0xE700000000000000;
        }

        v29 = sub_223A20FB0();
        v33 = sub_223A214E0();

        if (!os_log_type_enabled(v29, v33))
        {

          goto LABEL_32;
        }

        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v38[0] = v35;
        *v34 = 136380675;
        v36 = sub_2239E1910(v21, v23, v38);

        *(v34 + 4) = v36;
        _os_log_impl(&dword_2239C7000, v29, v33, "Unable to subscribe to desired channels. { err=%{private}s }", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x223DF1300](v35, -1, -1);
        v32 = v34;
      }

      MEMORY[0x223DF1300](v32, -1, -1);
      goto LABEL_30;
    }
  }

  v6 = sub_223A20FB0();
  v7 = sub_223A214D0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2239C7000, v6, v7, "No ioReportingConfigs found.", v8, 2u);
    MEMORY[0x223DF1300](v8, -1, -1);
  }

  return 0;
}

void sub_223A00BE4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223A20AE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v10 = a1;
  Group = IOReportChannelGetGroup();
  if (Group)
  {
    v12 = Group;
    v39 = sub_223A21220();
    v42 = v13;
  }

  else
  {
    v39 = 0;
    v42 = 0;
  }

  SubGroup = IOReportChannelGetSubGroup();

  v38 = a3;
  if (SubGroup)
  {
    v15 = SubGroup;
    v40 = sub_223A21220();
    v41 = v16;

    v17 = *(a2 + 16);
    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v17 = *(a2 + 16);
    if (!v17)
    {
LABEL_33:

      return;
    }
  }

  v37 = v10;
  v20 = *(v7 + 16);
  v19 = v7 + 16;
  v18 = v20;
  v21 = a2 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
  v22 = *(v19 + 56);
  v23 = (v19 - 8);
  v20(v9, v21, v6);
  while (1)
  {
    sub_223A20AC0();
    if (v24)
    {

      v25 = sub_223A20AC0();
      if (v42)
      {
        if (!v26)
        {
          goto LABEL_13;
        }

        if (v39 == v25 && v42 == v26)
        {
        }

        else
        {
          v27 = sub_223A218F0();

          if ((v27 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v26)
      {
        goto LABEL_12;
      }
    }

    sub_223A20AD0();
    if (!v28)
    {
      break;
    }

    v29 = sub_223A20AD0();
    if (!v41)
    {
      if (!v30)
      {
        break;
      }

LABEL_12:

LABEL_13:
      (*v23)(v9, v6);
      goto LABEL_14;
    }

    if (!v30)
    {
      goto LABEL_13;
    }

    if (v40 == v29 && v41 == v30)
    {

      (*v23)(v9, v6);
      goto LABEL_37;
    }

    v31 = sub_223A218F0();

    (*v23)(v9, v6);
    if (v31)
    {
      goto LABEL_37;
    }

LABEL_14:
    v21 += v22;
    if (!--v17)
    {
      v10 = v37;
      goto LABEL_33;
    }

    v18(v9, v21, v6);
  }

  (*v23)(v9, v6);
LABEL_37:

  v32 = v38;
  swift_beginAccess();
  v33 = *(v32 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v35;
  }
}

uint64_t sub_223A00F68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B58, &qword_223A23560);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281332DD0 = result;
  return result;
}

uint64_t sub_223A00FA8()
{

  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DriverSnapshotManager(uint64_t a1)
{
  result = qword_281332DB8;
  if (!qword_281332DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A010B8(uint64_t a1)
{
  result = sub_223A20FC0();
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

uint64_t sub_223A01190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_223A011E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_223A01254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223A012BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF0, &qword_223A23430);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  sub_223A20570();
  v9 = *(v3 + 16);
  v30 = v6;
  v31 = v2;
  v9(v6, v8, v2);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v25 = v8;
    v26 = v3;
    v40 = MEMORY[0x277D84F90];
    sub_2239D32E0(0, v10, 0);
    v11 = v40;
    v29 = sub_223A021FC();
    v28 = sub_223A02250();
    v27 = sub_2239FE360(&qword_281333730, &qword_27D0A4AF0, &qword_223A23430, MEMORY[0x277D85AC0]);
    v12 = (a1 + 40);
    do
    {
      v13 = *v12;
      v36 = *(v12 - 1);
      v37 = v13;
      v34 = 0;
      v35 = 0xE000000000000000;

      sub_223A214B0();
      v36 = v38;
      v37 = v39;
      v33 = 0xE000000000000000;
      v34 = 22364;
      v35 = 0xE200000000000000;
      v32 = 0;
      sub_2239D1804();
      v14 = sub_223A21620();
      v16 = v15;

      v40 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2239D32E0((v17 > 1), v18 + 1, 1);
        v11 = v40;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v12 += 2;
      --v10;
    }

    while (v10);
    v8 = v25;
    v3 = v26;
  }

  v38 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
  sub_2239FE360(&qword_281332740, &qword_27D0A4A90, &unk_223A233A0, MEMORY[0x277D83958]);
  v20 = sub_223A211D0();

  v21 = *(v3 + 8);
  v22 = v8;
  v23 = v31;
  v21(v22, v31);
  v21(v30, v23);
  return v20;
}

uint64_t sub_223A01628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DriverName = IOReportChannelGetDriverName();
  Group = IOReportChannelGetGroup();
  SubGroup = IOReportChannelGetSubGroup();
  if (!DriverName)
  {
    v12 = MEMORY[0x277D84F90];
    if (!Group)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = DriverName;
  v9 = sub_223A21220();
  v11 = v10;
  v12 = sub_2239E1804(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_2239E1804((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[16 * v14];
  *(v15 + 4) = v9;
  *(v15 + 5) = v11;
  if (Group)
  {
LABEL_7:
    v16 = Group;
    v17 = sub_223A21220();
    v19 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2239E1804(0, *(v12 + 2) + 1, 1, v12);
    }

    v21 = *(v12 + 2);
    v20 = *(v12 + 3);
    if (v21 >= v20 >> 1)
    {
      v12 = sub_2239E1804((v20 > 1), v21 + 1, 1, v12);
    }

    *(v12 + 2) = v21 + 1;
    v22 = &v12[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
  }

LABEL_12:
  if (SubGroup)
  {
    v23 = SubGroup;
    v24 = sub_223A21220();
    v26 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2239E1804(0, *(v12 + 2) + 1, 1, v12);
    }

    v28 = *(v12 + 2);
    v27 = *(v12 + 3);
    if (v28 >= v27 >> 1)
    {
      v12 = sub_2239E1804((v27 > 1), v28 + 1, 1, v12);
    }

    *(v12 + 2) = v28 + 1;
    v29 = &v12[16 * v28];
    *(v29 + 4) = v24;
    *(v29 + 5) = v26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_2239E1804(0, *(v12 + 2) + 1, 1, v12);
  }

  v31 = *(v12 + 2);
  v30 = *(v12 + 3);
  if (v31 >= v30 >> 1)
  {
    v12 = sub_2239E1804((v30 > 1), v31 + 1, 1, v12);
  }

  *(v12 + 2) = v31 + 1;
  v32 = &v12[16 * v31];
  *(v32 + 4) = a2;
  *(v32 + 5) = a3;
  ChannelName = IOReportChannelGetChannelName();
  if (ChannelName)
  {
    v34 = ChannelName;
    v35 = sub_223A21220();
    v37 = v36;
    v39 = *(v12 + 2);
    v38 = *(v12 + 3);
    if (v39 >= v38 >> 1)
    {
      v12 = sub_2239E1804((v38 > 1), v39 + 1, 1, v12);
    }

    *(v12 + 2) = v39 + 1;
    v40 = &v12[16 * v39];
    *(v40 + 4) = v35;
    *(v40 + 5) = v37;
  }

  v41 = sub_223A012BC(v12);

  return v41;
}

double sub_223A01938(uint64_t a1, uint64_t *a2)
{
  v51 = a2;
  v70 = *MEMORY[0x277D85DE8];
  v54 = sub_223A20FC0();
  v3 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  BucketCount = IOReportHistogramGetBucketCount();
  v64 = 0;
  v65 = 0xE000000000000000;
  v50 = BucketCount;
  v6 = BucketCount - 1;
  if (__OFSUB__(BucketCount, 1))
  {
    goto LABEL_28;
  }

  if (v6 < 1)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v56 = 0;
  v57 = 0;
  v53 = (v3 + 8);
  v48 = "driverStateStats";
  v7 = 1;
  v47 = xmmword_223A234B0;
  *(&v8 + 1) = 6;
  v49 = xmmword_223A224A0;
  *&v8 = 67109120;
  v46 = v8;
  v52 = BucketCount - 1;
  do
  {
    while (1)
    {
      v9 = v7;
      if (v7 == v6)
      {
        v7 = 0;
        goto LABEL_9;
      }

      if (v7 == 0x7FFFFFFF)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      ++v7;
LABEL_9:
      v62 = 0;
      v63 = 0;
      BucketBounds = IOReportHistogramGetBucketBounds();
      if (BucketBounds == sub_223A20FD0())
      {
        break;
      }

      sub_223A20F40();
      v42 = sub_223A20FB0();
      v43 = sub_223A214D0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = v46;
        *(v44 + 4) = BucketBounds;
        _os_log_impl(&dword_2239C7000, v42, v43, "Error in getting the bucket. { retValue=%d }", v44, 8u);
        MEMORY[0x223DF1300](v44, -1, -1);
      }

      (*v53)(v55, v54);
      if (v9 == v6)
      {
        goto LABEL_26;
      }
    }

    if (v63 >= v56)
    {
      v11 = v56;
    }

    else
    {
      v11 = v63;
    }

    v12 = v57;
    if (v62 > v57)
    {
      v12 = v62;
    }

    v56 = v11;
    v57 = v12;
    BucketHits = IOReportHistogramGetBucketHits();
    if (BucketHits)
    {
      v14 = BucketHits;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B48, &qword_223A23550);
      v15 = swift_allocObject();
      *(v15 + 16) = v49;
      v16 = v62;
      v17 = v63;
      v18 = MEMORY[0x277D84A28];
      *(v15 + 56) = MEMORY[0x277D84A28];
      v19 = MEMORY[0x277D84A90];
      *(v15 + 64) = MEMORY[0x277D84A90];
      *(v15 + 72) = v16;
      *(v15 + 32) = v17;
      *(v15 + 96) = v18;
      *(v15 + 104) = v19;
      *(v15 + 136) = MEMORY[0x277D84D38];
      *(v15 + 144) = MEMORY[0x277D84D90];
      *(v15 + 112) = v14;
      v20 = sub_223A21230();
      MEMORY[0x223DF0390](v20);
    }

    v21 = v64;
    v22 = v65;
    v23 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v23 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      UnitLabel = IOReportChannelGetUnitLabel();
      if (!UnitLabel)
      {
        goto LABEL_30;
      }

      v25 = UnitLabel;
      v26 = sub_223A21220();
      v28 = v27;

      MinValue = IOReportHistogramGetMinValue();
      MaxValue = IOReportHistogramGetMaxValue();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B48, &qword_223A23550);
      v31 = swift_allocObject();
      *(v31 + 16) = v47;
      *(v31 + 56) = MEMORY[0x277D849A8];
      *(v31 + 64) = MEMORY[0x277D84A20];
      *(v31 + 32) = v50;
      v32 = MEMORY[0x277D84A28];
      *(v31 + 96) = MEMORY[0x277D84A28];
      v33 = MEMORY[0x277D84A90];
      v34 = v57;
      *(v31 + 72) = v56;
      *(v31 + 136) = v32;
      *(v31 + 144) = v33;
      *(v31 + 104) = v33;
      *(v31 + 112) = v34;
      *(v31 + 176) = v32;
      *(v31 + 184) = v33;
      *(v31 + 152) = MinValue;
      *(v31 + 216) = v32;
      *(v31 + 224) = v33;
      *(v31 + 192) = MaxValue;
      v35 = MEMORY[0x277D837D0];
      *(v31 + 256) = MEMORY[0x277D837D0];
      *(v31 + 264) = sub_223A021A8();
      *(v31 + 232) = v26;
      *(v31 + 240) = v28;
      v36 = sub_223A21230();
      MEMORY[0x223DF0390](v36);

      *&v67[0] = v21;
      *(&v67[0] + 1) = v22;
      v60 = 9275;
      v61 = 0xE200000000000000;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_223A021FC();
      sub_223A02250();
      sub_223A214A0();
      MEMORY[0x223DF0390](v68, *(&v68 + 1));

      v37 = sub_223A01628(a1, 0x6172676F74736948, 0xE90000000000006DLL);
      v39 = v38;
      v69 = v35;
      v68 = v66;
      sub_2239DA0A8(&v68, v67);

      v40 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = *v40;
      sub_223A1301C(v67, v37, v39, isUniquelyReferenced_nonNull_native);

      *v40 = v60;
    }

    v6 = v52;
  }

  while (v9 != v52);
LABEL_26:

  return result;
}

void sub_223A01F1C(uint64_t a1)
{
  Count = IOReportStateGetCount();
  if ((Count & 0x80000000) != 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (Count)
    {
      v3 = 0;
      v26 = 0;
      v4 = -Count;
      v5 = 0xE000000000000000;
      v25 = Count;
      while (2)
      {
        if (Count <= v3)
        {
          v6 = v3;
        }

        else
        {
          v6 = Count;
        }

        while (1)
        {
          if (v6 == v3)
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          if (v3 == 0x7FFFFFFF)
          {
            goto LABEL_18;
          }

          NameForIndex = IOReportStateGetNameForIndex();
          if (!NameForIndex)
          {
            goto LABEL_20;
          }

          v8 = NameForIndex;
          v9 = sub_223A21220();
          v11 = v10;

          v12 = IOReportStateGetInTransitions();
          Residency = IOReportStateGetResidency();
          IOReportStateGetDutyCycle();
          if (Residency)
          {
            break;
          }

          ++v3;

          if (!(v4 + v3))
          {
            v22 = v5;
            goto LABEL_16;
          }
        }

        v27 = v26;
        v28 = v5;
        v30 = 0xD000000000000035;
        v31 = 0x8000000223A25450;
        v15 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B48, &qword_223A23550);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_223A234C0;
        *(v16 + 56) = MEMORY[0x277D837D0];
        v17 = sub_223A021A8();
        *(v16 + 32) = v9;
        *(v16 + 40) = v11;
        v18 = MEMORY[0x277D84D38];
        *(v16 + 96) = MEMORY[0x277D84D38];
        v19 = MEMORY[0x277D84D90];
        *(v16 + 104) = MEMORY[0x277D84D90];
        *(v16 + 112) = Residency;
        *(v16 + 64) = v17;
        *(v16 + 72) = v12;
        *(v16 + 136) = v18;
        *(v16 + 144) = v19;
        *(v16 + 176) = MEMORY[0x277D839F8];
        *(v16 + 184) = MEMORY[0x277D83A80];
        *(v16 + 152) = v15;
        sub_2239D1804();
        v26 = sub_223A21610();
        v22 = v20;

        v21 = v4 + v3++;
        v5 = v22;
        Count = v25;
        if (v21 != -1)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v26 = 0;
      v22 = 0xE000000000000000;
    }

LABEL_16:
    v23 = sub_223A01628(a1, 0x6574617453, 0xE500000000000000);
    v29 = MEMORY[0x277D837D0];
    v27 = v26;
    v28 = v22;
    sub_223A122FC(&v27, v23, v24);
  }
}

unint64_t sub_223A021A8()
{
  result = qword_281332748;
  if (!qword_281332748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332748);
  }

  return result;
}

unint64_t sub_223A021FC()
{
  result = qword_281332758;
  if (!qword_281332758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332758);
  }

  return result;
}

unint64_t sub_223A02250()
{
  result = qword_281332760;
  if (!qword_281332760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332760);
  }

  return result;
}

Swift::Void __swiftcall DriverSnapshotWorker.stop()()
{
  v1 = v0;
  v2 = sub_223A20D20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v54 = &v43 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v43 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v43 - v11);
  v13 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample;
  v14 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample);
  if (v14)
  {
    v45 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample;
    *&v47 = v10;
    v15 = qword_281332DD8;
    v16 = v14;
    if (v15 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v44 = v16;
      v16 = sub_2239FF0B4(v16);
      v17 = v16[2];
      v55 = v1;
      v56 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session);
      v52 = v3;
      v53 = v17;
      if (v17)
      {
        v1 = 0;
        v49 = (v3 + 32);
        v50 = v3 + 16;
        v48 = (v3 + 8);
        v18 = MEMORY[0x277D84F90];
        v19 = v47;
        v51 = v16;
        while (v1 < v16[2])
        {
          v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v21 = *(v3 + 72);
          (*(v3 + 16))(v12, v16 + v20 + v21 * v1, v19);
          __swift_project_boxed_opaque_existential_1(v56, v56[3]);
          if (sub_223A20980())
          {
            (*v48)(v12, v19);
          }

          else
          {
            v22 = *v49;
            (*v49)(v54, v12, v19);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v58[0] = v18;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_223A02CDC(0, *(v18 + 16) + 1, 1);
              v19 = v47;
              v18 = v58[0];
            }

            v25 = *(v18 + 16);
            v24 = *(v18 + 24);
            if (v25 >= v24 >> 1)
            {
              sub_223A02CDC((v24 > 1), v25 + 1, 1);
              v19 = v47;
              v18 = v58[0];
            }

            *(v18 + 16) = v25 + 1;
            v22((v18 + v20 + v25 * v21), v54, v19);
            v3 = v52;
          }

          ++v1;
          v16 = v51;
          if (v53 == v1)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
        v19 = v47;
LABEL_15:

        v1 = v55;
        v27 = v46;
        v54 = *(v18 + 16);
        if (!v54)
        {
LABEL_22:

          v13 = v45;
          v14 = *(v1 + v45);
          break;
        }

        v28 = 0;
        v50 = v3 + 16;
        v51 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_logger;
        *&v26 = 134218243;
        v47 = v26;
        v49 = (v3 + 8);
        v48 = ((v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v53 = v18;
        while (v28 < *(v18 + 16))
        {
          v30 = *(v3 + 16);
          v31 = v57;
          v30(v57, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v19);
          v30(v27, v31, v19);

          v32 = v19;
          v12 = sub_223A20FB0();
          v33 = sub_223A214D0();
          if (os_log_type_enabled(v12, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v58[0] = v35;
            *v34 = v47;
            __swift_project_boxed_opaque_existential_1(v56, v56[3]);
            *(v34 + 4) = sub_223A20950();

            *(v34 + 12) = 2081;
            v36 = sub_223A20CC0();
            v37 = MEMORY[0x223DEFFA0](v36);
            v39 = v38;
            v29 = *v49;
            (*v49)(v27, v32);
            v40 = sub_2239E1910(v37, v39, v58);
            v1 = v55;

            *(v34 + 14) = v40;
            _os_log_impl(&dword_2239C7000, v12, v33, "Failed to send IOReporting message. { reporterID=%lld, category=%{private}s }", v34, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v35);
            MEMORY[0x223DF1300](v35, -1, -1);
            v41 = v34;
            v3 = v52;
            MEMORY[0x223DF1300](v41, -1, -1);
          }

          else
          {

            v29 = *v49;
            (*v49)(v27, v19);
          }

          v19 = v32;
          ++v28;
          v16 = (v29)(v57, v32);
          v18 = v53;
          if (v54 == v28)
          {
            goto LABEL_22;
          }
        }
      }

      __break(1u);
LABEL_26:
      v42 = v16;
      swift_once();
      v16 = v42;
    }
  }

  *(v1 + v13) = 0;

  swift_beginAccess();
  *(v1 + 16) = 0;
}

uint64_t DriverSnapshotWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DriverSnapshotWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t DriverSnapshotWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

char *sub_223A02BC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A98, &unk_223A23470);
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

char *sub_223A02CBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223A04828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223A02CDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223A0492C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for DriverSnapshotWorker(uint64_t a1)
{
  result = qword_281333DE8;
  if (!qword_281333DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A02D50(uint64_t a1)
{
  result = sub_223A20BC0();
  if (v2 <= 0x3F)
  {
    result = sub_223A20FC0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_223A02E64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223A04954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223A02E84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223A04A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_223A02EA4(uint64_t a1, void *a2)
{
  v4 = sub_223A20680();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v7 = MEMORY[0x28223BE20](v70);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v52 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = (&v52 - v12);
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v60 = v5 + 16;
  v65 = v5 + 32;
  v62 = v5;
  v63 = a1;
  v53 = (v5 + 40);
  v54 = (v5 + 8);

  v19 = 0;
  v55 = v18;
  v56 = a1 + 64;
  v68 = a2;
  v57 = v11;
  v58 = v4;
  v59 = v13;
  while (v17)
  {
LABEL_11:
    v22 = __clz(__rbit64(v17)) | (v19 << 6);
    v23 = v62;
    v24 = *(v63 + 56);
    v25 = (*(v63 + 48) + 16 * v22);
    v27 = *v25;
    v26 = v25[1];
    v66 = *(v62 + 72);
    (*(v62 + 16))(v13 + *(v70 + 48), v24 + v66 * v22, v4);
    *v13 = v27;
    v13[1] = v26;
    sub_2239D8C48(v13, v11, &qword_27D0A4B60, &qword_223A23760);
    v28 = v11[1];
    v67 = *v11;
    v29 = v13;
    v30 = v61;
    sub_2239D8C48(v29, v61, &qword_27D0A4B60, &qword_223A23760);

    v31 = v30 + *(v70 + 48);
    v64 = *(v23 + 32);
    v64(v69, v31, v4);
    v32 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *v32;
    v34 = v71;
    v35 = v67;
    v36 = v28;
    v38 = sub_2239CDC74(v67, v28);
    v39 = v34[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_22;
    }

    v42 = v37;
    if (v34[3] >= v41)
    {
      v13 = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2239DAF30();
      }
    }

    else
    {
      sub_2239D9194(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_2239CDC74(v35, v36);
      v13 = v59;
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_24;
      }

      v38 = v43;
    }

    v45 = v58;
    v46 = v71;
    if (v42)
    {
      v4 = v58;
      (*v53)(v71[7] + v38 * v66, v69, v58);
    }

    else
    {
      v71[(v38 >> 6) + 8] |= 1 << v38;
      v47 = (v46[6] + 16 * v38);
      *v47 = v35;
      v47[1] = v36;
      v4 = v45;
      v64((v46[7] + v38 * v66), v69, v45);
      v48 = v46[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_23;
      }

      v46[2] = v50;
    }

    v17 &= v17 - 1;
    v20 = *(v70 + 48);
    *v68 = v46;
    v11 = v57;
    (*v54)(v57 + v20, v4);
    sub_2239CDCEC(v13, &qword_27D0A4B60, &qword_223A23760);
    v18 = v55;
    v14 = v56;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_223A21910();
  __break(1u);
  return result;
}

uint64_t sub_223A03330@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = sub_223A20D20();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  sub_2239DD3B0(1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2239CDCEC(v9, &qword_27D0A4B38, " >");
    return (*(v11 + 56))(a1, 1, 1, v10);
  }

  else
  {
    v18 = *(v11 + 32);
    v41 = v11 + 32;
    v39 = a1;
    v40 = v18;
    v18(v16, v9, v10);
    v19 = sub_223A20CD0();
    sub_223A20C90();
    v19(v42, 0);
    (*(v11 + 16))(v14, v16, v10);
    v20 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_completeDecoratorMessages;
    swift_beginAccess();
    v21 = *(v1 + v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v20) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2239DF208(0, *(v21 + 2) + 1, 1, v21);
      *(v2 + v20) = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_2239DF208((v23 > 1), v24 + 1, 1, v21);
    }

    *(v21 + 2) = v24 + 1;
    v40(&v21[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24], v14, v10);
    *(v2 + v20) = v21;
    swift_endAccess();
    v25 = *(v11 + 56);
    v25(v7, 1, 1, v10);
    v26 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage;
    swift_beginAccess();
    sub_2239D8BD8(v7, v2 + v26);
    swift_endAccess();

    v27 = sub_223A20FB0();
    v28 = sub_223A214D0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v25;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42[0] = v31;
      *v30 = 136315138;
      v32 = sub_223A20740();
      v33 = MEMORY[0x223DEFFA0](v32);
      v35 = sub_2239E1910(v33, v34, v42);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2239C7000, v27, v28, "Created builtMessage in DurationSummaryDecoratorState. { category=%s }", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x223DF1300](v31, -1, -1);
      v36 = v30;
      v25 = v29;
      MEMORY[0x223DF1300](v36, -1, -1);
    }

    v37 = v39;
    v40(v39, v16, v10);
    return (v25)(v37, 0, 1, v10);
  }
}

uint64_t sub_223A037BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_223A20680();
  v67 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v57 - v14);
  v16 = sub_223A20B90();
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp;
  if (*(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp) <= 0.0 || *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp) <= 0.0)
  {

    v43 = sub_223A20FB0();
    v44 = sub_223A214D0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = a1;
      v46 = swift_slowAlloc();
      *v46 = 134218496;
      *(v46 + 4) = *(v2 + v20);
      *(v46 + 12) = 2048;
      *(v46 + 14) = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp);
      *(v46 + 22) = 2048;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
      *(v46 + 24) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v43, v44, "invalid times { caTimestamp=%f startCaTimestamp=%f reporterID=%lld }", v46, 0x20u);
      v47 = v46;
      a1 = v45;
      MEMORY[0x223DF1300](v47, -1, -1);
    }

    else
    {
    }

    v48 = sub_223A20D20();
    v49 = *(*(v48 - 8) + 56);
    v50 = v48;
    v51 = a1;
  }

  else
  {
    v65 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp;
    v66 = a1;
    v21 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage);
    if (v21)
    {
      v61 = v12;
      v62 = v17;
      v63 = v10;
      v64 = v6;
      v22 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;

      v23 = *(sub_223A207B0() + 16);

      result = v23 + 5;
      if (__OFADD__(v23, 5))
      {
        __break(1u);
      }

      else
      {
        v69 = MEMORY[0x223DF0210](result, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
        v25 = sub_223A206F0();
        v60 = v22;
        sub_223A02EA4(v25, &v69);

        v26 = sub_223A207B0();

        sub_223A041B4(v26, v21, &v69);

        swift_bridgeObjectRelease_n();
        v27 = *MEMORY[0x277CEF910];
        v62 = *(v62 + 104);
        (v62)(v19, v27, v16);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
        *v15 = sub_223A209C0();
        v15[1] = v28;
        v29 = *MEMORY[0x277CEF860];
        v30 = v67;
        v59 = *(v67 + 104);
        v59(v15, v29, v7);
        v58 = *(v30 + 56);
        v58(v15, 0, 1, v7);
        sub_223A21160();
        (v62)(v19, *MEMORY[0x277CEF8F8], v16);
        *v15 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messageNumber);
        v31 = v59;
        v59(v15, *MEMORY[0x277CEF840], v7);
        v58(v15, 0, 1, v7);
        sub_223A21160();
        v62 = "decoratorRunningMessage";
        v32 = v61;
        *v61 = *(v2 + v65);
        v33 = *MEMORY[0x277CEF858];
        v31(v32, v33, v7);
        v34 = *(v30 + 32);
        v35 = v63;
        v34(v63, v32, v7);
        v36 = v69;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v36;
        sub_2239DEAB8(v35, 0xD000000000000011, v62 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
        v69 = v68;
        *v32 = 0x7FEFFFFFFFFFFFFFLL;
        v31(v32, v33, v7);
        v34(v35, v32, v7);
        v38 = v69;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v68 = v38;
        sub_2239DEAB8(v35, 0x7972616D6D75735FLL, 0xEF656D6954646E45, v39);

        sub_223A20740();
        sub_223A20700();
        v40 = sub_223A20CA0();
        (*(*(v40 - 8) + 56))(v64, 1, 1, v40);
        v41 = v66;
        sub_223A20CB0();
        v42 = sub_223A20D20();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
      }

      return result;
    }

    v52 = sub_223A20FB0();
    v53 = sub_223A214E0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134218496;
      *(v54 + 4) = *(v2 + v20);
      *(v54 + 12) = 2048;
      *(v54 + 14) = *(v2 + v65);
      *(v54 + 22) = 2048;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
      *(v54 + 24) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v52, v53, "currentFlattenedMessage should not be nil { caTimestamp=%f startCaTimestamp=%f reporterID=%lld }", v54, 0x20u);
      MEMORY[0x223DF1300](v54, -1, -1);
    }

    else
    {
    }

    v55 = v66;
    v56 = sub_223A20D20();
    v49 = *(*(v56 - 8) + 56);
    v50 = v56;
    v51 = v55;
  }

  return v49(v51, 1, 1, v50);
}

void sub_223A040BC(uint64_t a1)
{
  sub_223A0415C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_223A0415C(uint64_t a1)
{
  if (!qword_2813336E8)
  {
    sub_223A20D20();
    v1 = sub_223A215D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2813336E8);
    }
  }
}

void sub_223A041B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_223A20680();
  v55 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v61 = &v47 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return;
  }

  v52 = v9;
  v53 = v55 + 16;
  v57 = v55 + 32;
  v48 = (v55 + 40);
  v49 = (v55 + 8);
  v14 = (a1 + 40);
  v50 = a2;
  v51 = a3;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_6;
    }

    v16 = *(v14 - 1);
    v15 = *v14;

    v17 = sub_2239CDC74(v16, v15);
    if (v18)
    {
      break;
    }

LABEL_5:

LABEL_6:
    v14 += 2;
    if (!--v13)
    {
      return;
    }
  }

  v19 = *(a2 + 56);
  v59 = v15;
  v60 = v16;
  v20 = v9;
  v21 = v55;
  v58 = *(v55 + 72);
  v22 = *(v55 + 16);
  v23 = a3;
  v24 = v54;
  v22(v54, v19 + v58 * v17, v6);
  v25 = *(v21 + 32);
  v26 = v61;
  v56 = v25;
  v25(v61, v24, v6);
  v27 = v20;
  v28 = v59;
  v29 = v26;
  v30 = v6;
  v22(v27, v29, v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v23;
  v33 = v60;
  v62 = v32;
  v35 = sub_2239CDC74(v60, v28);
  v36 = v32[2];
  v37 = (v34 & 1) == 0;
  v38 = v36 + v37;
  if (!__OFADD__(v36, v37))
  {
    v39 = v34;
    if (v32[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2239DAF30();
      }
    }

    else
    {
      sub_2239D9194(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_2239CDC74(v33, v28);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_21;
      }

      v35 = v40;
    }

    v6 = v30;
    v42 = v62;
    if (v39)
    {
      v9 = v52;
      (*v48)(v62[7] + v35 * v58, v52, v6);
    }

    else
    {
      v62[(v35 >> 6) + 8] |= 1 << v35;
      v43 = (v42[6] + 16 * v35);
      *v43 = v33;
      v43[1] = v28;
      v9 = v52;
      v56(v42[7] + v35 * v58, v52, v6);
      v44 = v42[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_20;
      }

      v42[2] = v46;
    }

    a3 = v51;
    *v51 = v42;
    (*v49)(v61, v6);
    a2 = v50;
    goto LABEL_5;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_223A21910();
  __break(1u);
}

uint64_t sub_223A04538(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_223A21940(), sub_223A07600(v11, a1), v4 = sub_223A21970(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {

      v9 = sub_223A07A68(v8, a1);

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_223A04628(uint64_t a1)
{
  sub_223A207D0();
  if (v1 <= 0x3F)
  {
    sub_223A20FC0();
    if (v2 <= 0x3F)
    {
      sub_223A0415C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void *sub_223A04790(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B90, &qword_223A23740);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4BDA12F684BDA13) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

char *sub_223A04828(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BA0, &unk_223A23750);
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

void *sub_223A04954(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BB0, &unk_223A23768);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223A04AB0(uint64_t a1, void *a2)
{
  v4 = *v2;
  sub_223A21940();
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[10];
  v8 = a2[11];
  v47 = a2;
  sub_223A21290();
  sub_223A21290();
  v9 = sub_223A21970();
  v10 = v4 + 56;
  v11 = -1 << *(v4 + 32);
  v12 = v9 & ~v11;
  if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v45 = v4;
    v14 = *(v4 + 48);
    while (1)
    {
      v15 = (v14 + 216 * v12);
      v16 = v15[10];
      v17 = v15[11];
      v18 = v15[3] == v5 && v15[4] == v6;
      if (v18 || (sub_223A218F0() & 1) != 0)
      {
        v19 = v16 == v7 && v17 == v8;
        if (v19 || (sub_223A218F0() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_2239EF230(v47);
    v20 = *(v45 + 48) + 216 * v12;
    v21 = *(v20 + 16);
    v50[0] = *v20;
    v50[1] = v21;
    v22 = *(v20 + 80);
    v24 = *(v20 + 32);
    v23 = *(v20 + 48);
    v50[4] = *(v20 + 64);
    v50[5] = v22;
    v50[2] = v24;
    v50[3] = v23;
    v25 = *(v20 + 96);
    v26 = *(v20 + 112);
    v27 = *(v20 + 144);
    v50[8] = *(v20 + 128);
    v50[9] = v27;
    v50[6] = v25;
    v50[7] = v26;
    v28 = *(v20 + 160);
    v29 = *(v20 + 176);
    v30 = *(v20 + 192);
    v51 = *(v20 + 208);
    v50[11] = v29;
    v50[12] = v30;
    v50[10] = v28;
    v31 = *(v20 + 176);
    *(a1 + 160) = *(v20 + 160);
    *(a1 + 176) = v31;
    *(a1 + 192) = *(v20 + 192);
    *(a1 + 208) = *(v20 + 208);
    v32 = *(v20 + 112);
    *(a1 + 96) = *(v20 + 96);
    *(a1 + 112) = v32;
    v33 = *(v20 + 144);
    *(a1 + 128) = *(v20 + 128);
    *(a1 + 144) = v33;
    v34 = *(v20 + 48);
    *(a1 + 32) = *(v20 + 32);
    *(a1 + 48) = v34;
    v35 = *(v20 + 80);
    *(a1 + 64) = *(v20 + 64);
    *(a1 + 80) = v35;
    v36 = *(v20 + 16);
    *a1 = *v20;
    *(a1 + 16) = v36;
    sub_2239EF1D4(v50, v49);
    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = *v46;
    sub_2239EF1D4(v47, v50);
    sub_223A05864(v47, v12, isUniquelyReferenced_nonNull_native);
    *v46 = v49[0];
    v39 = *(v47 + 11);
    *(a1 + 160) = *(v47 + 10);
    *(a1 + 176) = v39;
    *(a1 + 192) = *(v47 + 12);
    *(a1 + 208) = v47[26];
    v40 = *(v47 + 7);
    *(a1 + 96) = *(v47 + 6);
    *(a1 + 112) = v40;
    v41 = *(v47 + 9);
    *(a1 + 128) = *(v47 + 8);
    *(a1 + 144) = v41;
    v42 = *(v47 + 3);
    *(a1 + 32) = *(v47 + 2);
    *(a1 + 48) = v42;
    v43 = *(v47 + 5);
    *(a1 + 64) = *(v47 + 4);
    *(a1 + 80) = v43;
    v44 = *(v47 + 1);
    result = 1;
    *a1 = *v47;
    *(a1 + 16) = v44;
  }

  return result;
}

uint64_t sub_223A04D2C(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_223A21940();
  sub_223A07600(v15, a2);
  v6 = sub_223A21970();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_223A07A68(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *v2;

    sub_223A05A70(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_223A04E6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B98, &qword_223A23748);
  result = sub_223A216C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
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
      v15 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 216 * (v15 | (v6 << 6));
      v45 = *v18;
      v19 = *(v18 + 24);
      v46 = *(v18 + 16);
      v20 = *(v18 + 32);
      v42 = *(v18 + 40);
      v43 = *(v18 + 56);
      v21 = *(v18 + 80);
      v44 = *(v18 + 72);
      v22 = *(v18 + 88);
      v36 = *(v18 + 128);
      v37 = *(v18 + 144);
      v34 = *(v18 + 96);
      v35 = *(v18 + 112);
      v41 = *(v18 + 208);
      v39 = *(v18 + 176);
      v40 = *(v18 + 192);
      v38 = *(v18 + 160);
      sub_223A21940();
      sub_223A21290();
      sub_223A21290();
      result = sub_223A21970();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 216 * v13;
      *v14 = v45;
      *(v14 + 16) = v46;
      *(v14 + 24) = v19;
      *(v14 + 32) = v20;
      *(v14 + 40) = v42;
      *(v14 + 56) = v43;
      *(v14 + 72) = v44;
      *(v14 + 80) = v21;
      *(v14 + 88) = v22;
      *(v14 + 128) = v36;
      *(v14 + 144) = v37;
      *(v14 + 96) = v34;
      *(v14 + 112) = v35;
      *(v14 + 208) = v41;
      *(v14 + 176) = v39;
      *(v14 + 192) = v40;
      *(v14 + 160) = v38;
      ++*(v5 + 16);
      v3 = v32;
      v10 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v33 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_223A051A0(uint64_t a1)
{
  v69 = sub_223A20680();
  v2 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v55 = v1;
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC8, &qword_223A23960);
  v11 = sub_223A216C0();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = *(v10 + 56);
    v54 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v53 = (v15 + 63) >> 6;
    v61 = v2 + 16;
    v67 = (v2 + 32);
    v66 = (v2 + 8);
    v56 = v11 + 56;
    v64 = v2;
    v63 = v7;
    v62 = v9;
    v58 = v10;
    v57 = v11;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v59 = (v17 - 1) & v17;
LABEL_14:
      v60 = v13;
      v24 = *(*(v10 + 48) + 8 * (v21 | (v13 << 6)));
      sub_223A21940();
      v25 = v24 + 64;
      v26 = 1 << *(v24 + 32);
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v28 = v27 & *(v24 + 64);
      v29 = (v26 + 63) >> 6;
      v65 = v24;

      v30 = 0;
      v70 = 0;
      if (!v28)
      {
LABEL_19:
        if (v29 <= v30 + 1)
        {
          v32 = v30 + 1;
        }

        else
        {
          v32 = v29;
        }

        v33 = v32 - 1;
        while (1)
        {
          v31 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v31 >= v29)
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
            (*(*(v50 - 8) + 56))(v7, 1, 1, v50);
            v28 = 0;
            goto LABEL_27;
          }

          v28 = *(v25 + 8 * v31);
          ++v30;
          if (v28)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      while (1)
      {
        v31 = v30;
LABEL_26:
        v34 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v35 = v34 | (v31 << 6);
        v36 = (*(v65 + 48) + 16 * v35);
        v38 = *v36;
        v37 = v36[1];
        v39 = v64;
        v40 = v68;
        v41 = v69;
        (*(v64 + 16))(v68, *(v65 + 56) + *(v64 + 72) * v35, v69);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        v43 = *(v42 + 48);
        v44 = v63;
        *v63 = v38;
        *(v44 + 1) = v37;
        v45 = *(v39 + 32);
        v7 = v44;
        v45(&v44[v43], v40, v41);
        (*(*(v42 - 8) + 56))(v7, 0, 1, v42);

        v33 = v31;
        v9 = v62;
LABEL_27:
        sub_2239D0F08(v7, v9);
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        if ((*(*(v46 - 8) + 48))(v9, 1, v46) == 1)
        {
          break;
        }

        v47 = v68;
        v48 = v69;
        (*v67)(v68, &v9[*(v46 + 48)], v69);
        v73 = v78;
        v74 = v79;
        v75 = v80;
        v71 = v76;
        v72 = v77;
        sub_223A21290();

        sub_2239DD36C(&qword_27D0A4BD0, MEMORY[0x277CEF870]);
        sub_223A211A0();
        (*v66)(v47, v48);
        v49 = sub_223A21970();
        v30 = v33;
        v70 ^= v49;
        if (!v28)
        {
          goto LABEL_19;
        }
      }

      v18 = v65;

      MEMORY[0x223DF0A30](v70);
      sub_223A21970();
      v12 = v57;
      v19 = v56;
      v20 = sub_223A21660();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v18;
      ++*(v12 + 16);
      v10 = v58;
      v13 = v60;
      v17 = v59;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v53)
      {
        v51 = 1 << *(v10 + 32);
        if (v51 >= 64)
        {
          bzero(v54, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v54 = -1 << v51;
        }

        v52 = v55;
        *(v10 + 16) = 0;

        goto LABEL_36;
      }

      v23 = v54[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v59 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

LABEL_38:
    __break(1u);
  }

  else
  {

    v52 = v55;
LABEL_36:
    *v52 = v12;
  }
}

uint64_t sub_223A05864(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v34 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_223A04E6C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_223A05BFC();
      goto LABEL_22;
    }

    sub_223A06068(v6 + 1);
  }

  v8 = *v3;
  sub_223A21940();
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[10];
  v12 = v5[11];
  sub_223A21290();
  sub_223A21290();
  result = sub_223A21970();
  v13 = v8 + 56;
  v14 = -1 << *(v8 + 32);
  a2 = result & ~v14;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v8 + 48);
    while (1)
    {
      v17 = (v16 + 216 * a2);
      v18 = v17[10];
      v19 = v17[11];
      v20 = v17[3] == v9 && v17[4] == v10;
      if (v20 || (result = sub_223A218F0(), (result & 1) != 0))
      {
        if (v18 == v11 && v19 == v12)
        {
          break;
        }

        result = sub_223A218F0();
        if (result)
        {
          break;
        }
      }

      a2 = (a2 + 1) & v15;
      if (((*(v13 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_223A21900();
    __break(1u);
  }

LABEL_22:
  v22 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v23 = *(v22 + 48) + 216 * a2;
  v24 = *(v34 + 80);
  *(v23 + 64) = *(v34 + 64);
  *(v23 + 80) = v24;
  v25 = *(v34 + 48);
  *(v23 + 32) = *(v34 + 32);
  *(v23 + 48) = v25;
  v26 = *(v34 + 144);
  *(v23 + 128) = *(v34 + 128);
  *(v23 + 144) = v26;
  v27 = *(v34 + 112);
  *(v23 + 96) = *(v34 + 96);
  *(v23 + 112) = v27;
  *(v23 + 208) = *(v34 + 208);
  v28 = *(v34 + 192);
  *(v23 + 176) = *(v34 + 176);
  *(v23 + 192) = v28;
  *(v23 + 160) = *(v34 + 160);
  v29 = *(v34 + 16);
  *v23 = *v34;
  *(v23 + 16) = v29;
  v30 = *(v22 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v32;
  }

  return result;
}

void sub_223A05A70(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_223A051A0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_223A05F18();
      goto LABEL_12;
    }

    sub_223A06348(v6 + 1);
  }

  v8 = *v3;
  sub_223A21940();
  sub_223A07600(v19, a1);
  v9 = sub_223A21970();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BB8, &qword_223A23778);

      v13 = sub_223A07A68(v12, a1);

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
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
  sub_223A21900();
  __break(1u);
}

void *sub_223A05BFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B98, &qword_223A23748);
  v2 = *v0;
  v3 = sub_223A216B0();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_2239EF1D4(v29, v28))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 216 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[5];
      v29[4] = v17[4];
      v29[5] = v20;
      v29[3] = v19;
      v21 = v17[6];
      v22 = v17[7];
      v23 = v17[9];
      v29[8] = v17[8];
      v29[9] = v23;
      v29[6] = v21;
      v29[7] = v22;
      v24 = v17[10];
      v25 = v17[11];
      v26 = v17[12];
      v30 = *(v17 + 26);
      v29[11] = v25;
      v29[12] = v26;
      v29[10] = v24;
      v27 = v17[1];
      v29[0] = *v17;
      v29[1] = v27;
      v29[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0xD8uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void sub_223A05DBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B78, &qword_223A23728);
  v2 = *v0;
  v3 = sub_223A216B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

void sub_223A05F18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC8, &qword_223A23960);
  v2 = *v0;
  v3 = sub_223A216B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

uint64_t sub_223A06068(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B98, &qword_223A23748);
  result = sub_223A216C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v46 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v25 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v28 = *(v3 + 48) + 216 * (v25 | (v6 << 6));
      v29 = *(v28 + 80);
      v31 = *(v28 + 32);
      v30 = *(v28 + 48);
      v52 = *(v28 + 64);
      v53 = v29;
      v50 = v31;
      v51 = v30;
      v32 = *(v28 + 96);
      v33 = *(v28 + 112);
      v34 = *(v28 + 144);
      v56 = *(v28 + 128);
      v57 = v34;
      v54 = v32;
      v55 = v33;
      v35 = *(v28 + 160);
      v36 = *(v28 + 176);
      v37 = *(v28 + 192);
      v61 = *(v28 + 208);
      v59 = v36;
      v60 = v37;
      v58 = v35;
      v38 = *(v28 + 16);
      v48 = *v28;
      v49 = v38;
      sub_223A21940();
      sub_2239EF1D4(&v48, v47);
      sub_223A21290();
      sub_223A21290();
      result = sub_223A21970();
      v39 = -1 << *(v5 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v12 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v3 = v46;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v12 + 8 * v41);
          if (v45 != -1)
          {
            v13 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v40) & ~*(v12 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v3 = v46;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 216 * v13;
      v15 = v49;
      *v14 = v48;
      v16 = v50;
      v17 = v51;
      v18 = v53;
      *(v14 + 64) = v52;
      *(v14 + 80) = v18;
      *(v14 + 32) = v16;
      *(v14 + 48) = v17;
      v19 = v54;
      v20 = v55;
      v21 = v57;
      *(v14 + 128) = v56;
      *(v14 + 144) = v21;
      *(v14 + 96) = v19;
      *(v14 + 112) = v20;
      v22 = v58;
      v23 = v59;
      v24 = v60;
      *(v14 + 208) = v61;
      *(v14 + 176) = v23;
      *(v14 + 192) = v24;
      *(v14 + 160) = v22;
      *(v14 + 16) = v15;
      ++*(v5 + 16);
    }

    v26 = v6;
    while (1)
    {
      v6 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v27 = *(v7 + 8 * v6);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v10 = (v27 - 1) & v27;
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

unint64_t sub_223A06348(uint64_t a1)
{
  v73 = sub_223A20680();
  v2 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v56 = v1;
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC8, &qword_223A23960);
  result = sub_223A216C0();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = *(v10 + 56);
    v55 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v54 = (v15 + 63) >> 6;
    v64 = v2 + 16;
    v71 = (v2 + 32);
    v68 = (v2 + 8);
    v57 = result + 56;
    v18 = &qword_27D0A4B60;
    v66 = v2;
    v65 = v7;
    v69 = v9;
    v59 = v10;
    v58 = result;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v60 = (v17 - 1) & v17;
LABEL_14:
      v61 = v13;
      v25 = *(*(v10 + 48) + 8 * (v22 | (v13 << 6)));
      sub_223A21940();
      v26 = *(v25 + 64);
      v63 = v25 + 64;
      v27 = 1 << *(v25 + 32);
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & v26;
      v62 = (v27 + 63) >> 6;
      v67 = v25;
      result = swift_bridgeObjectRetain_n();
      v30 = 0;
      v31 = 0;
      v32 = v18;
      if (!v29)
      {
LABEL_19:
        if (v62 <= v31 + 1)
        {
          v34 = v31 + 1;
        }

        else
        {
          v34 = v62;
        }

        v35 = v34 - 1;
        while (1)
        {
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v33 >= v62)
          {
            v18 = v32;
            v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, &qword_223A23760);
            (*(*(v53 - 8) + 56))(v7, 1, 1, v53);
            v29 = 0;
            goto LABEL_28;
          }

          v29 = *(v63 + 8 * v33);
          ++v31;
          if (v29)
          {
            v70 = v30;
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

      while (1)
      {
        v70 = v30;
        v33 = v31;
LABEL_27:
        v36 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v37 = v36 | (v33 << 6);
        v38 = (*(v67 + 48) + 16 * v37);
        v40 = *v38;
        v39 = v38[1];
        v41 = v66;
        v43 = v72;
        v42 = v73;
        (*(v66 + 16))(v72, *(v67 + 56) + *(v66 + 72) * v37, v73);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, &qword_223A23760);
        v45 = *(v44 + 48);
        v46 = v65;
        *v65 = v40;
        *(v46 + 1) = v39;
        v47 = v43;
        v7 = v46;
        (*(v41 + 32))(&v46[v45], v47, v42);
        (*(*(v44 - 8) + 56))(v7, 0, 1, v44);

        v35 = v33;
        v18 = v32;
        v30 = v70;
LABEL_28:
        v48 = v69;
        sub_2239D0F08(v7, v69);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, &qword_223A23760);
        if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
        {
          break;
        }

        v50 = v48 + *(v49 + 48);
        v52 = v72;
        v51 = v73;
        (*v71)(v72, v50, v73);
        v76 = v81;
        v77 = v82;
        v78 = v83;
        v74 = v79;
        v75 = v80;
        sub_223A21290();

        sub_2239DD36C(&qword_27D0A4BD0, MEMORY[0x277CEF870]);
        sub_223A211A0();
        (*v68)(v52, v51);
        result = sub_223A21970();
        v30 ^= result;
        v31 = v35;
        v32 = v18;
        if (!v29)
        {
          goto LABEL_19;
        }
      }

      v19 = v30;
      v20 = v67;

      MEMORY[0x223DF0A30](v19);
      sub_223A21970();
      v12 = v58;
      v21 = v57;
      result = sub_223A21660();
      *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v12 + 48) + 8 * result) = v20;
      ++*(v12 + 16);
      v10 = v59;
      v13 = v61;
      v17 = v60;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v13 >= v54)
      {
        goto LABEL_32;
      }

      v24 = *(v55 + 8 * v13);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v60 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_32:

    *v56 = v12;
  }

  return result;
}

void sub_223A069E4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_223A07274(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_223A06FC0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_223A218F0();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_223A218F0()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_223A07288(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_223A07288((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_223A06FC0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_223A07274(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_223A071E8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_223A218F0() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

uint64_t sub_223A06FC0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_223A218F0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_223A218F0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}