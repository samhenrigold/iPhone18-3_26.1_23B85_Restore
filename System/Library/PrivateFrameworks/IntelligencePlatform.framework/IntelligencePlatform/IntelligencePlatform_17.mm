uint64_t EntityResolutionRequest.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 90);
  v6 = *(v1 + 88);
  if (*(v1 + 8))
  {
    sub_1ABA90FA4();
    sub_1ABF23D34();
    if (v3)
    {
LABEL_3:
      sub_1ABA90FA4();
      sub_1ABB4ED20();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1ABA88B50();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_1ABA88B50();
LABEL_6:
  v7 = v6 | (v5 << 16);
  if (v4)
  {
    sub_1ABA90FA4();
    sub_1ABA7E378();
    sub_1ABB4EC9C();
  }

  else
  {
    sub_1ABA88B50();
  }

  sub_1ABBB5978();
  sub_1ABF23D34();
  if ((v7 & 0xFFFFFFu) >= 0xFF0000)
  {
    return sub_1ABA88B50();
  }

  sub_1ABA90FA4();
  sub_1ABA894EC();
  sub_1ABA9EAA8();
  sub_1ABB37294(v9, v10, v11, v12, v13, SBYTE2(v7));
  CandidateConstraint.hash(into:)(a1);
  sub_1ABA894EC();
  sub_1ABA9EAA8();

  return sub_1ABB37328(v14, v15, v16, v17, v18, SBYTE2(v7));
}

uint64_t sub_1ABBB9B48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001ABF89F10 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E617073 && a2 == 0xE500000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701080941 && a2 == 0xE400000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001ABF89F30 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4449656372756F73 && a2 == 0xE900000000000073;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 7432043 && a2 == 0xE300000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x466564756C636E69 && a2 == 0xEF73657275746165;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x80000001ABF89F50 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000012 && 0x80000001ABF89F70 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1ABF25054();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1ABBB9EAC(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x736E617073;
      break;
    case 3:
      result = 0x4974736575716572;
      break;
    case 4:
      result = 1701080941;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x4449656372756F73;
      break;
    case 7:
      result = 7432043;
      break;
    case 8:
      result = 0x466564756C636E69;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBB9FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB9B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBBA01C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBB9EA4();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBBA044(uint64_t a1)
{
  v2 = sub_1ABBC3664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBBA080(uint64_t a1)
{
  v2 = sub_1ABBC3664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionRequest.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D4210, &qword_1ABF42AB8);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  v16 = *(v0 + 72);
  v17 = *(v0 + 80);
  v14 = *(v0 + 88);
  v15 = *(v0 + 90);
  v8 = v3[3];
  v9 = v3;
  v11 = v10;
  sub_1ABA88DCC(v9, v8);
  sub_1ABBC3664();
  sub_1ABAA0704();
  sub_1ABF252E4();
  sub_1ABF24ED4();
  if (!v1)
  {
    sub_1ABAD219C(&qword_1EB4D4220, &qword_1ABF42AC0);
    sub_1ABBC36B8();
    sub_1ABAA3810();
    sub_1ABAD219C(&qword_1EB4D4230, &qword_1ABF42AC8);
    sub_1ABBC373C();
    sub_1ABAA3810();
    sub_1ABF24F34();
    sub_1ABBC3814();
    sub_1ABA96990();
    sub_1ABF24F84();
    sub_1ABBAE7B0(v12, v13, v16, v17, v14 | (v15 << 16));
    sub_1ABBC2B38();
    sub_1ABA96990();
    sub_1ABF24F14();
    sub_1ABA89B28();
    sub_1ABAD219C(&qword_1EB4D4250, &qword_1ABF42AD0);
    sub_1ABBC3868();
    sub_1ABAA3810();
    sub_1ABF24ED4();
    sub_1ABA96990();
    sub_1ABF24F44();
    sub_1ABA96990();
    sub_1ABF24F44();
    sub_1ABA96990();
    sub_1ABF24F44();
  }

  (*(v6 + 8))(v11, v4);
  sub_1ABA7BC90();
}

uint64_t EntityResolutionRequest.hashValue.getter()
{
  sub_1ABA7AB5C();
  EntityResolutionRequest.hash(into:)(v1);
  return sub_1ABF25294();
}

void EntityResolutionRequest.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v43 = sub_1ABAD219C(&qword_1EB4D4268, &qword_1ABF42AD8);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABBC3664();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v10 = v6;
    v32 = v4;
    LOBYTE(v45) = 0;
    sub_1ABAA19A0();
    v11 = sub_1ABF24DB4();
    v42 = v12;
    sub_1ABAD219C(&qword_1EB4D4220, &qword_1ABF42AC0);
    LOBYTE(v44[0]) = 1;
    v13 = sub_1ABBC3940();
    sub_1ABA8406C(v13);
    v41 = v45;
    sub_1ABAD219C(&qword_1EB4D4230, &qword_1ABF42AC8);
    LOBYTE(v44[0]) = 2;
    v14 = sub_1ABBC39C4();
    sub_1ABA8406C(v14);
    v40 = v45;
    sub_1ABA81754(3);
    v31 = sub_1ABF24E14();
    v39 = v15;
    LOBYTE(v44[0]) = 4;
    sub_1ABBC3A9C();
    sub_1ABAA19A0();
    sub_1ABF24E64();
    v30 = v45;
    LOBYTE(v44[0]) = 5;
    sub_1ABBC3538();
    sub_1ABAA19A0();
    sub_1ABF24DF4();
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v64 = v49 | (BYTE2(v49) << 16);
    sub_1ABAD219C(&qword_1EB4D4250, &qword_1ABF42AD0);
    LOBYTE(v44[0]) = 6;
    v16 = sub_1ABBC3AF0();
    sub_1ABA8406C(v16);
    v29 = v11;
    v33 = v45;
    sub_1ABA81754(7);
    v17 = sub_1ABF24DB4();
    v34 = v18;
    v28 = v17;
    sub_1ABA81754(8);
    v27 = sub_1ABF24E24();
    sub_1ABA81754(9);
    v19 = sub_1ABF24E24();
    sub_1ABAA19A0();
    v20 = sub_1ABF24E24();
    v21 = v27 & 1;
    v26 = v19 & 1;
    (*(v10 + 8))(v9, v43);
    LODWORD(v43) = v20 & 1;
    v44[0] = v29;
    v44[1] = v42;
    v44[2] = v41;
    v44[3] = v40;
    v44[4] = v31;
    v44[5] = v39;
    LOBYTE(v44[6]) = v30;
    v44[7] = v35;
    v44[8] = v36;
    v44[9] = v37;
    v44[10] = v38;
    v27 = HIWORD(v64);
    BYTE2(v44[11]) = BYTE2(v64);
    LOWORD(v44[11]) = v64;
    v23 = v33;
    v22 = v34;
    v24 = v28;
    v44[12] = v33;
    v44[13] = v28;
    v44[14] = v34;
    LOBYTE(v44[15]) = v21;
    v25 = v26;
    BYTE1(v44[15]) = v26;
    BYTE2(v44[15]) = v20 & 1;
    memcpy(v32, v44, 0x7BuLL);
    sub_1ABBC3BC8(v44, &v45);
    sub_1ABA84B54(v2);
    v45 = v29;
    v46 = v42;
    v47 = v41;
    v48 = v40;
    v49 = v31;
    v50 = v39;
    v51 = v30;
    v52 = v35;
    v53 = v36;
    v54 = v37;
    v55 = v38;
    v57 = v27;
    v56 = v64;
    v58 = v23;
    v59 = v24;
    v60 = v22;
    v61 = v21;
    v62 = v25;
    v63 = v43;
    sub_1ABBC3C00(&v45);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABBBAA78(uint64_t a1)
{
  sub_1ABF25234();
  EntityResolutionRequest.hash(into:)(v2);
  return sub_1ABF25294();
}

void sub_1ABBBAAB4()
{
  v1 = *(v0 + 16);
  if (v1 && *(v1 + 16) == 1)
  {
    if (_Records_GDEntityClass_records)
    {
      v2 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v3);
      MEMORY[0x1EEE9AC00](v2);
      sub_1ABB2F984();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1ABBBABC4()
{
  switch(*(v0 + 48))
  {
    case 1:
      sub_1ABA9A3B4();
      break;
    case 2:
      sub_1ABAA12AC();
      sub_1ABA7FC58();
      break;
    case 3:
      sub_1ABA8B08C();
      goto LABEL_8;
    case 4:
      sub_1ABA8E7F0();
      break;
    case 5:
      sub_1ABA89B1C();
      v1 = 1;
      goto LABEL_10;
    case 6:
      sub_1ABA95110();
LABEL_8:
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  v1 = sub_1ABF25054();
LABEL_10:

  return v1 & 1;
}

uint64_t sub_1ABBBACA4()
{
  switch(*(v0 + 48))
  {
    case 1:
      sub_1ABA9A3B4();
      break;
    case 2:
      sub_1ABAA12AC();
      sub_1ABA7FC58();
      break;
    case 3:
      sub_1ABA8B08C();
      goto LABEL_8;
    case 4:
      sub_1ABA89B1C();
      v1 = 1;
      goto LABEL_10;
    case 5:
      sub_1ABA89B1C();
      break;
    case 6:
      sub_1ABA95110();
LABEL_8:
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  v1 = sub_1ABF25054();
LABEL_10:

  return v1 & 1;
}

uint64_t sub_1ABBBAD8C()
{
  v2 = v0[2];
  v1 = v0[3];
  memcpy(v17, v0 + 4, sizeof(v17));
  if (sub_1ABBBABC4())
  {
    return 0;
  }

  memcpy(v17, v0 + 4, sizeof(v17));
  v3 = 0;
  if ((sub_1ABBBACA4() & 1) == 0)
  {
    if (v1)
    {
      v5 = *(v1 + 16);
      v3 = MEMORY[0x1E69E7CC0];
      if (v5)
      {
        v16 = MEMORY[0x1E69E7CC0];
        sub_1ABADE16C(0, v5, 0);
        if (v2)
        {
          v6 = v2;
        }

        else
        {
          v6 = v3;
        }

        v15 = v6;
        v3 = v16;
        v7 = (v1 + 56);
        do
        {
          v9 = *(v7 - 3);
          v8 = *(v7 - 2);
          v10 = *(v7 - 1);
          v11 = *v7;
          v13 = *(v16 + 16);
          v12 = *(v16 + 24);

          if (v13 >= v12 >> 1)
          {
            sub_1ABADE16C((v12 > 1), v13 + 1, 1);
          }

          v7 += 4;
          *(v16 + 16) = v13 + 1;
          v14 = v16 + 80 * v13;
          *(v14 + 32) = v9;
          *(v14 + 40) = v8;
          *(v14 + 48) = v10;
          *(v14 + 56) = v11;
          *(v14 + 64) = 0;
          *(v14 + 72) = 0;
          *(v14 + 80) = 0;
          *(v14 + 88) = v15;
          *(v14 + 96) = 0;
          *(v14 + 104) = 1;
          --v5;
        }

        while (v5);
      }
    }
  }

  return v3;
}

__n128 Mention.init(span:entityClasses:score:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = *a1;
  v6 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4 & 1;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = 0;
  return result;
}

void sub_1ABBBAF2C(void *a1@<X8>)
{
  *__src = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *&__src[32] = *(v1 + 32);
  *&__src[48] = v5;
  v6 = *(v1 + 80);
  *&__src[64] = *(v1 + 64);
  v21 = v6;
  v7 = *(v1 + 96);
  *v23 = *(v1 + 104);
  *&v23[15] = *(v1 + 119);
  *&__src[16] = v3;
  *&__src[24] = v4;
  v22 = v7;
  if ((sub_1ABBBABC4() & 1) == 0)
  {
LABEL_16:
    sub_1ABA9E918(xmmword_1ABF34750);
    return;
  }

  if (!v7)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v12 = sub_1ABF237F4();
    sub_1ABA7AA24(v12, qword_1ED871B20);
    v13 = sub_1ABF237D4();
    v14 = sub_1ABF24664();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      sub_1ABA9490C(&dword_1ABA78000, v16, v17, "No sourceIDs available for a structured input.");
      MEMORY[0x1AC5AB8B0](v15, -1, -1);
    }

    goto LABEL_16;
  }

  v8 = 0uLL;
  if (v4 && v4[1].n128_u64[0])
  {
    v9 = v4[2].n128_u64[0];
    v18 = v4[3];

    v8 = v18;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v19[0].n128_u64[0] = v9;
  v19[0].n128_u64[1] = v10;
  v19[1] = v8;
  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  Mention.init(sourceIDs:span:entityClasses:)(v7, v19, v11, __src);
  memcpy(a1, __src, 0x49uLL);
}

__n128 Mention.init(sourceIDs:span:entityClasses:)@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3;
  v6 = a4;
  v18 = a2[1];
  v19 = *a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    v21 = MEMORY[0x1E69E7CC0];

    sub_1ABADDBD4(0, v7, 0);
    v8 = a1 + 56;
    do
    {

      swift_bridgeObjectRetain_n();
      v9 = sub_1ABA894A0();
      MEMORY[0x1AC5A9410](v9);

      MEMORY[0x1AC5A9410](39, 0xE100000000000000);

      v11 = *(v21 + 16);
      v10 = *(v21 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1ABADDBD4(v10 > 1, v11 + 1, 1);
      }

      v8 += 32;
      *(v21 + 16) = v11 + 1;
      v12 = v21 + 16 * v11;
      *(v12 + 32) = 39;
      *(v12 + 40) = 0xE100000000000000;
      --v7;
    }

    while (v7);

    v6 = a4;
    v4 = a3;
  }

  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAAA5C0();
  sub_1ABA9EBC4();
  sub_1ABF23B54();

  sub_1ABF24AB4();

  sub_1ABA8071C();
  v20 = v13;
  v14 = sub_1ABAA015C();
  MEMORY[0x1AC5A9410](v14);

  MEMORY[0x1AC5A9410](10589, 0xE200000000000000);
  result = v19;
  *v6 = v19;
  v6[1] = v18;
  v6[2].n128_u64[0] = a1;
  v6[2].n128_u64[1] = 0xD000000000000013;
  v6[3].n128_u64[0] = v20;
  v6[3].n128_u64[1] = v4;
  v6[4].n128_u64[0] = 0;
  v6[4].n128_u8[8] = 1;
  return result;
}

void sub_1ABBBB2E8(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  memcpy(v21, (v1 + 24), sizeof(v21));
  v7 = *(v1 + 104);
  v6 = *(v1 + 112);
  v24 = *(v1 + 120);
  v25 = *(v1 + 122);
  v22 = v7;
  v23 = v6;
  if ((sub_1ABBBACA4() & 1) == 0)
  {
LABEL_23:
    sub_1ABA9E918(xmmword_1ABF34750);
    return;
  }

  if (!v6)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1ED871B20);
    v16 = sub_1ABF237D4();
    v17 = sub_1ABF24664();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      sub_1ABA9490C(&dword_1ABA78000, v19, v20, "No kgq available for a semi-structured input.");
      MEMORY[0x1AC5AB8B0](v18, -1, -1);
    }

    goto LABEL_23;
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v4;
  }

  v9 = 7;
  v10 = MEMORY[0x1E69E7CC0];
  if (((v3 >> 60) & ((v4 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  if (v3)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  *a1 = v11;
  *(a1 + 8) = v3;
  v12 = v9 | (v8 << 16);
  v13 = 15;
  if (!v3)
  {
    v13 = 0;
    v12 = 0;
  }

  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0;
  *(a1 + 40) = v7;
  if (v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = v10;
  }

  *(a1 + 48) = v6;
  *(a1 + 56) = v14;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
}

__n128 Mention.init(kgq:span:entityClasses:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = *a3;
  v6 = *(a3 + 16);
  *a5 = *a3;
  *(a5 + 16) = v6;
  *(a5 + 48) = a2;
  *(a5 + 56) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = a1;
  *(a5 + 64) = 0;
  *(a5 + 72) = 1;
  return result;
}

uint64_t EntityResolutionRequest.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v25 = *(v0 + 40);
  v26 = *(v0 + 32);
  v24 = *(v0 + 48);
  v27 = *(v0 + 96);
  v28 = *(v0 + 104);
  v5 = *(v0 + 112);

  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x203A74786574, 0xE600000000000000);
  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 4271950;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v6, v1);

  MEMORY[0x1AC5A9410](0xD000000000000013, 0x80000001ABF89D50);
  if (v4)
  {
    MEMORY[0x1AC5A9750](v4, &type metadata for EntityClass);
  }

  else
  {
    _s20IntelligencePlatform16FeedbackProtocolPAAE7variantSSSgvg_0();
  }

  sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
  v7 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v7);

  MEMORY[0x1AC5A9410](0x203A6E6170730A29, 0xE800000000000000);
  if (v3)
  {
    MEMORY[0x1AC5A9750](v3, &type metadata for Span);
  }

  else
  {
    _s20IntelligencePlatform16FeedbackProtocolPAAE7variantSSSgvg_0();
  }

  v8 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v8);

  MEMORY[0x1AC5A9410](0x203A65646F6D0ALL, 0xE700000000000000);
  v9 = 0xE800000000000000;
  v10 = sub_1ABA9A3B4();
  switch(v24)
  {
    case 1:
      break;
    case 2:
      v9 = 0xEB00000000797469;
      v10 = sub_1ABA7FC58();
      break;
    case 3:
      v11 = sub_1ABA8B08C();
      goto LABEL_19;
    case 4:
      v9 = 0x80000001ABF7F180;
      v10 = 0xD000000000000014;
      break;
    case 5:
      v9 = 0x80000001ABF7F1A0;
      v10 = 0xD000000000000010;
      break;
    case 6:
      v11 = sub_1ABA95110();
LABEL_19:
      v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
      v9 = 0xEC00000068637261;
      break;
    default:
      v9 = 0xEA00000000007963;
      v10 = 0x6E6574614C776F6CLL;
      break;
  }

  MEMORY[0x1AC5A9410](v10, v9);

  MEMORY[0x1AC5A9410](0x747365757165720ALL, 0xEC000000203A6449);
  MEMORY[0x1AC5A9410](v26, v25);
  MEMORY[0x1AC5A9410](0xD000000000000016, 0x80000001ABF89D70);
  sub_1ABA9EAA8();
  sub_1ABBAE7B0(v12, v13, v14, v15, v16);
  sub_1ABAD219C(&qword_1EB4D42A0, &qword_1ABF42AE0);
  v17 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v17);

  MEMORY[0x1AC5A9410](0x49656372756F730ALL, 0xEC000000203A7344);
  v18 = 0xE300000000000000;
  if (v27)
  {
    v19 = MEMORY[0x1AC5A9750](v27, &type metadata for EntitySourceID);
    v21 = v20;
  }

  else
  {
    v19 = 4271950;
    v21 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v19, v21);

  MEMORY[0x1AC5A9410](0x203A71676B0ALL, 0xE600000000000000);
  if (v5)
  {
    v22 = v28;
  }

  else
  {
    v22 = 4271950;
  }

  if (v5)
  {
    v18 = v5;
  }

  MEMORY[0x1AC5A9410](v22, v18);

  return 0;
}

uint64_t sub_1ABBBB8A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBBB8F8(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_1ABBBB948@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABBBB8A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABBBB978@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABBBB8F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABBBB9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBBB8A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBBB9D4(uint64_t a1)
{
  v2 = sub_1ABBC3C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBBBA10(uint64_t a1)
{
  v2 = sub_1ABBC3C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Span.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v27 = v26;
  sub_1ABAD219C(&qword_1EB4D42A8, &unk_1ABF42AE8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABBC3C30();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v23)
  {
    sub_1ABA84B54(v25);
LABEL_4:
    sub_1ABA7FC10();
    sub_1ABA7BC90();
    return;
  }

  v29 = sub_1ABF24E14();
  v31 = v30;
  sub_1ABAD219C(&qword_1EB4D1970, &qword_1ABF33B00);
  sub_1ABBC3C84();
  sub_1ABF24E64();
  if (!v37[2])
  {
    __break(1u);
    goto LABEL_10;
  }

  v36 = sub_1ABBBBC7C(0xFuLL, v37[4], v29, v31);
  if (v37[2] < 2uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v35 = v37[5];

  v32 = sub_1ABBBBC7C(0xFuLL, v35, v29, v31);

  v33 = sub_1ABA8E0A8();
  v34(v33);
  if (v32 >> 14 >= v36 >> 14)
  {
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v36;
    v27[3] = v32;

    sub_1ABA84B54(v25);

    goto LABEL_4;
  }

LABEL_11:
  __break(1u);
}

unint64_t sub_1ABBBBC7C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_1ABBC2D60(a1, a3, a4);
  if (a2 < 0)
  {
    v14 = 0;
    while (1)
    {
      if (result < 0x10000)
      {
        goto LABEL_39;
      }

      if ((a4 & 0x1000000000000000) == 0)
      {
        break;
      }

      result = sub_1ABF23CF4();
LABEL_36:
      if (--v14 <= a2)
      {
        return result;
      }
    }

    v15 = result >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22 = a3;
      v23 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + v15 - 1) & 0xC0) == 0x80)
      {
        v20 = -2;
        do
        {
          v21 = *(&v22 + v15 + v20--) & 0xC0;
        }

        while (v21 == 128);
        v19 = v20 + 1;
        goto LABEL_35;
      }
    }

    else
    {
      v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v16 = sub_1ABF24B74();
      }

      if ((*(v16 + v15 - 1) & 0xC0) == 0x80)
      {
        v17 = -2;
        do
        {
          v18 = *(v16 + v15 + v17--) & 0xC0;
        }

        while (v18 == 128);
        v19 = v17 + 1;
        goto LABEL_35;
      }
    }

    v19 = -1;
LABEL_35:
    result = ((v19 + v15) << 16) | 5;
    goto LABEL_36;
  }

  if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result >> 16;
      if (result >> 16 >= v8)
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1ABF23CE4();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v22 + v9);
        }

        else
        {
          v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_1ABF24B74();
          }

          v11 = *(v10 + v9);
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result = ((v9 + v13) << 16) | 5;
      }

      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  return result;
}

void Span.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = sub_1ABAD219C(&qword_1EB4D42C0, &qword_1ABF42AF8);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7E338();
  v7 = *v0;
  v8 = v0[1];
  v14 = v0[2];
  v15 = v0[3];
  v9 = sub_1ABA97F40();
  sub_1ABA88DCC(v9, v10);
  sub_1ABBC3C30();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABAA015C();
  sub_1ABF24F34();
  if (v1)
  {
    goto LABEL_4;
  }

  sub_1ABBBC000(0xFuLL, v14, v7, v8);
  v12 = v11;
  sub_1ABBBC000(0xFuLL, v15, v7, v8);
  if (v13 >= v12)
  {
    sub_1ABAD219C(&qword_1EB4D42C8, &qword_1ABF42B00);
    sub_1ABBC3D00();
    sub_1ABA7BF34();
    sub_1ABF24F84();
LABEL_4:
    (*(v5 + 8))(v2, v3);
    sub_1ABA7FC10();
    sub_1ABA7BC90();
    return;
  }

  __break(1u);
}

void sub_1ABBBC000(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = sub_1ABBC2D60(a1, a3, a4);
  sub_1ABA893C0();
  v10 = sub_1ABBC2D60(v7, v8, v9) >> 14;
  if (v6 >> 14 >= v10)
  {
    if (v10 >= v6 >> 14)
    {
      return;
    }

    v17 = 0;
    while (1)
    {
      if (__OFSUB__(v17--, 1))
      {
        goto LABEL_36;
      }

      if ((a4 & 0x1000000000000000) == 0)
      {
        break;
      }

      sub_1ABA893C0();
      v6 = sub_1ABF23CF4();
LABEL_32:
      if (v10 >= v6 >> 14)
      {
        return;
      }
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v23 = a3;
      v24 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v23 + (v6 >> 16) - 1) & 0xC0) == 0x80)
      {
        do
        {
          sub_1ABA89780();
        }

        while (v21);
        goto LABEL_29;
      }
    }

    else
    {
      v19 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v19 = sub_1ABF24B74();
      }

      if ((*(v19 + (v6 >> 16) - 1) & 0xC0) == 0x80)
      {
        do
        {
          sub_1ABA89780();
        }

        while (v21);
LABEL_29:
        v22 = v20 + 1;
LABEL_31:
        v6 = (v6 + (v22 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        goto LABEL_32;
      }
    }

    v22 = -1;
    goto LABEL_31;
  }

  for (i = 0; !__OFADD__(i, 1); ++i)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      sub_1ABA893C0();
      v6 = sub_1ABF23CE4();
    }

    else
    {
      v12 = v6 >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v23 = a3;
        v24 = a4 & 0xFFFFFFFFFFFFFFLL;
        v14 = *(&v23 + v12);
      }

      else
      {
        v13 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v13 = sub_1ABF24B74();
        }

        v14 = *(v13 + v12);
      }

      v15 = v14;
      v16 = __clz(v14 ^ 0xFF) - 24;
      if (v15 >= 0)
      {
        LOBYTE(v16) = 1;
      }

      v6 = ((v12 + v16) << 16) | 5;
    }

    if (v10 <= v6 >> 14)
    {
      return;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t Span.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1ABF23D34();
  MEMORY[0x1AC5AA8D0](v2 >> 14);
  return MEMORY[0x1AC5AA8D0](v3 >> 14);
}

uint64_t static Span.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = 0, (sub_1ABF25054() & 1) != 0))
  {
    sub_1ABA894A0();
    v4 = sub_1ABF23EC4();
    v5 = MEMORY[0x1AC5A9330](v4);
    v7 = v6;

    sub_1ABA894EC();
    v8 = sub_1ABF23EC4();
    v9 = MEMORY[0x1AC5A9330](v8);
    v11 = v10;

    if (v5 == v9 && v7 == v11)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1ABA8A940(v5, v7);
    }
  }

  return v3 & 1;
}

uint64_t Span.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  MEMORY[0x1AC5AA8D0](v1 >> 14);
  MEMORY[0x1AC5AA8D0](v2 >> 14);
  return sub_1ABF25294();
}

uint64_t sub_1ABBBC3E8(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 1);
  sub_1ABF25234();
  Span.hash(into:)(v4);
  return sub_1ABF25294();
}

uint64_t Span.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v6 = v5 << 16;
  v7 = 4 * v5;
  if (v7 >= v3 >> 14)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v6;
  }

  if (v7 >= v4 >> 14)
  {
    v9 = v0[3];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 >> 14;
  if (v3 >> 14 == v8 >> 14 && v10 == v4 >> 14)
  {
    v24[0] = 91;
    v24[1] = 0xE100000000000000;
    sub_1ABBBC000(0xFuLL, v3, v1, v2);
    sub_1ABAA015C();
    v16 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v16);

    v17 = sub_1ABA9EBC4();
    MEMORY[0x1AC5A9410](v17);
    sub_1ABBBC000(0xFuLL, v4, v1, v2);
    sub_1ABAA015C();
    v18 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v18);

    MEMORY[0x1AC5A9410](14889, 0xE200000000000000);
    sub_1ABA894EC();
    v19 = sub_1ABF23EC4();
    v20 = MEMORY[0x1AC5A9330](v19);
    v22 = v21;

    MEMORY[0x1AC5A9410](v20, v22);
  }

  else
  {
    sub_1ABA8B290();
    sub_1ABF24AB4();

    strcpy(v24, "Span: range: ");
    HIWORD(v24[1]) = -4864;
    v12 = sub_1ABA894EC();
    v14 = sub_1ABBC34A0(v12, v13);
    MEMORY[0x1AC5A9410](v14);

    MEMORY[0x1AC5A9410](0x203A74786574202CLL, 0xE800000000000000);
    v15 = sub_1ABA7E378();
    MEMORY[0x1AC5A9410](v15);
  }

  return v24[0];
}

uint64_t sub_1ABBBC630(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1851879539 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656372756F73 && a2 == 0xE900000000000073;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7432043 && a2 == 0xE300000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C43797469746E65 && a2 == 0xED00007365737361;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABBBC7DC(char a1)
{
  result = 1851879539;
  switch(a1)
  {
    case 1:
      result = 0x4449656372756F73;
      break;
    case 2:
      result = 7432043;
      break;
    case 3:
      result = 0x6C43797469746E65;
      break;
    case 4:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBBC87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBBC630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBBC8A4(uint64_t a1)
{
  v2 = sub_1ABBC3D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBBC8E0(uint64_t a1)
{
  v2 = sub_1ABBC3D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Mention.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D42D8, &qword_1ABF42B08);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABA93E20(v1, v1[3]);
  v3 = sub_1ABBC3D7C();

  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABBC37C0();
  sub_1ABA9FFE0();
  sub_1ABA7BF34();
  sub_1ABF24F14();
  if (v3)
  {
  }

  else
  {

    sub_1ABAD219C(&qword_1EB4D4250, &qword_1ABF42AD0);
    sub_1ABBC3868();
    sub_1ABA9FFE0();
    sub_1ABA7BF34();
    sub_1ABF24F14();
    sub_1ABA7BF34();
    sub_1ABF24ED4();
    sub_1ABAD219C(&qword_1EB4D4220, &qword_1ABF42AC0);
    sub_1ABBC36B8();
    sub_1ABA9FFE0();
    sub_1ABA7BF34();
    sub_1ABF24F14();
    sub_1ABA7BF34();
    sub_1ABF24EF4();
  }

  v4 = sub_1ABA8862C();
  v5(v4);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void Mention.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v27 = v26;
  sub_1ABAD219C(&qword_1EB4D42E8, &qword_1ABF42B10);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA8176C();
  sub_1ABA88DCC(v25, v25[3]);
  sub_1ABBC3D7C();
  sub_1ABF252C4();
  if (v23)
  {
    sub_1ABA84B54(v25);
  }

  else
  {
    sub_1ABBC3A48();
    sub_1ABA8AB00();
    sub_1ABF24DF4();
    v44 = v47;
    v45 = v48;
    sub_1ABAD219C(&qword_1EB4D4250, &qword_1ABF42AD0);
    v29 = sub_1ABBC3AF0();
    sub_1ABA8CCA8(v29);
    v41 = v50;
    v40 = v49;
    v43 = v47;
    LOBYTE(v47) = 2;
    v30 = sub_1ABF24DB4();
    v42 = v31;
    sub_1ABAD219C(&qword_1EB4D4220, &qword_1ABF42AC0);
    v32 = sub_1ABBC3940();
    sub_1ABA8CCA8(v32);
    v33 = sub_1ABF24DD4();
    v35 = v34;
    v36 = v33;
    v37 = sub_1ABA8A354();
    v38(v37);
    v39 = v47;
    v46[0] = v44;
    v46[1] = v48;
    v46[2] = v49;
    v46[3] = v50;
    v46[4] = v43;
    v46[5] = v30;
    v46[6] = v42;
    v46[7] = v47;
    v46[8] = v36;
    LOBYTE(v46[9]) = v35 & 1;
    memcpy(v27, v46, 0x49uLL);
    sub_1ABB3E11C(v46, &v47);
    sub_1ABA84B54(v25);
    v47 = v44;
    v48 = v45;
    v49 = v40;
    v50 = v41;
    v51 = v43;
    v52 = v30;
    v53 = v42;
    v54 = v39;
    v55 = v36;
    v56 = v35 & 1;
    sub_1ABBC3DD0(&v47);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

uint64_t static Mention.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a2 + 8);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  v14 = *(a2 + 64);
  v15 = *(a2 + 72);
  if (v2)
  {
    v16 = *a2;
    v17 = *(a2 + 16);
    v35[0] = *a1;
    v35[1] = v2;
    v36 = *(a1 + 16);
    if (v9)
    {
      v30 = v5;
      v31 = v8;
      v32 = v15;
      v33[0] = v16;
      v33[1] = v9;
      v34 = v17;
      swift_bridgeObjectRetain_n();

      v18 = static Span.== infix(_:_:)(v35, v33);

      if ((v18 & 1) == 0)
      {
        goto LABEL_10;
      }

      if (v4)
      {
        goto LABEL_5;
      }

LABEL_13:
      if (v11)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v9)
  {
    goto LABEL_9;
  }

  v30 = *(a1 + 56);
  v31 = *(a1 + 72);
  v32 = *(a2 + 72);

  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (!v11 || (sub_1ABB490A0(v4, v11) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if (v6)
  {
    v22 = v31;
    v21 = v32;
    v23 = v30;
    if (!v13)
    {
      goto LABEL_10;
    }

    if (v3 != v10 || v6 != v13)
    {
      v25 = sub_1ABF25054();
      v23 = v30;
      v22 = v31;
      v21 = v32;
      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v22 = v31;
    v21 = v32;
    v23 = v30;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  if (!v23)
  {
    if ((v12 != 0) | v22 & 1)
    {
      v19 = (v12 == 0) & v21;
      return v19 & 1;
    }

    goto LABEL_29;
  }

  if (v12)
  {
    v26 = v12;
    v27 = v21;
    v28 = v22;
    v29 = sub_1ABB49178(v23, v26);
    v21 = v27;
    if (v28 & 1 | ((v29 & 1) == 0))
    {
      v19 = v29 & v27;
      return v19 & 1;
    }

LABEL_29:
    v19 = (v7 == v14) & ~v21;
    return v19 & 1;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t Mention.description.getter()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v5[0] = *v0;
    v5[1] = v1;
    v6 = *(v0 + 16);
    return Span.description.getter();
  }

  else
  {
    v3 = *(v0 + 32);
    if (v3)
    {
      return MEMORY[0x1AC5A9750](v3, &type metadata for EntitySourceID);
    }

    else if (*(v0 + 48))
    {
      sub_1ABA9936C();
      sub_1ABF24AB4();

      strcpy(v5, "Knosis Query: ");
      HIBYTE(v5[1]) = -18;
      v4 = sub_1ABAB50D4();
      MEMORY[0x1AC5A9410](v4);
      return v5[0];
    }

    else
    {
      sub_1ABA7F0D0();
      return 0xD000000000000010;
    }
  }
}

uint64_t CandidateConfidenceMetric.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t RetrievedCandidate.description.getter()
{
  sub_1ABA8B290();
  sub_1ABF24AB4();

  sub_1ABA8B8A8();
  v3 = v0;
  EntityIdentifier.description.getter();
  sub_1ABA9F244();

  sub_1ABA9FD28();
  sub_1ABA8D3A8();
  sub_1ABA9F244();

  sub_1ABA7F0D0();
  v1 = sub_1ABA9E43C();
  MEMORY[0x1AC5A9410](v1);
  Double.toString(decimalPlaces:)(3);
  sub_1ABA9F244();

  return v3;
}

uint64_t PopulatedCandidate.description.getter()
{
  v1 = *(v0 + 324);
  sub_1ABA8B290();
  sub_1ABF24AB4();

  sub_1ABA8B8A8();
  v4 = v2;
  EntityIdentifier.description.getter();
  sub_1ABA9F244();

  sub_1ABA9FD28();
  sub_1ABA8D3A8();
  sub_1ABA9F244();

  MEMORY[0x1AC5A9410](0x6F6353656D616E20, 0xEC000000203A6572);
  _s20IntelligencePlatform16FeedbackProtocolPAAE7variantSSSgvg_0();
  if ((v1 & 1) == 0)
  {
    Float.toString(decimalPlaces:)(3);
  }

  sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
  sub_1ABF23C74();
  sub_1ABA9F244();

  return v4;
}

uint64_t sub_1ABBBD49C()
{
  v1 = v0;
  sub_1ABF24AB4();

  v2 = *(v0 + 80);
  v3 = Mention.description.getter();
  MEMORY[0x1AC5A9410](v3);

  sub_1ABA8CAC4();
  if (v2)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4(0, v4, 0);
      v5 = (v2 + 56);
      do
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v9 = *(v25 + 16);
        v8 = *(v25 + 24);

        if (v9 >= v8 >> 1)
        {
          sub_1ABADDBD4(v8 > 1, v9 + 1, 1);
        }

        *(v25 + 16) = v9 + 1;
        v10 = v25 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 5;
        --v4;
      }

      while (v4);
    }

    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    sub_1ABA9EBC4();
    sub_1ABF23B54();
  }

  v11 = sub_1ABA7D0F8();
  MEMORY[0x1AC5A9410](v11);

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](0xD000000000000014);
  swift_beginAccess();
  v12 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v12);

  result = 0x3A6E6F69746E656DLL;
  v14 = *(v1 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {

    do
    {
      v16 = *(v14 + 356);
      sub_1ABF24AB4();

      sub_1ABA8B8A8();
      v24 = v17;
      v18 = EntityIdentifier.description.getter();
      MEMORY[0x1AC5A9410](v18);

      MEMORY[0x1AC5A9410](0x3A65726F637320, 0xE700000000000000);
      v19 = sub_1ABA8D3A8();
      MEMORY[0x1AC5A9410](v19);

      v20 = sub_1ABA894EC();
      MEMORY[0x1AC5A9410](v20);
      _s20IntelligencePlatform16FeedbackProtocolPAAE7variantSSSgvg_0();
      if ((v16 & 1) == 0)
      {
        Float.toString(decimalPlaces:)(3);
      }

      v21 = sub_1ABAA015C();
      sub_1ABAD219C(v21, v22);
      v23 = sub_1ABF23C74();
      MEMORY[0x1AC5A9410](v23);

      MEMORY[0x1AC5A9410](v24, 0xE600000000000000);

      MEMORY[0x1AC5A9410](32, 0xE100000000000000);

      v14 += 328;
      --v15;
    }

    while (v15);

    return 0x3A6E6F69746E656DLL;
  }

  return result;
}

uint64_t PopulatedCandidatesForMention.deinit()
{

  return v0;
}

uint64_t PopulatedCandidatesForMention.__deallocating_deinit()
{
  PopulatedCandidatesForMention.deinit();

  return swift_deallocClassInstance();
}

uint64_t static RerankedEntity.== infix(_:_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  result = 0;
  if (*v3 != *v1)
  {
    return result;
  }

  v5 = v1;
  if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v3 + 8), *(v1 + 8)), vceqq_f64(*(v3 + 24), *(v1 + 24))), xmmword_1ABF42A10)) & 0xF) != 0)
  {
    return result;
  }

  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  v136 = *(v3 + 80);
  v137 = *(v3 + 88);
  v138 = *(v3 + 96);
  v10 = *(v3 + 1096);
  v11 = *(v3 + 1104);
  v132 = *(v3 + 1152);
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);
  v14 = *(v1 + 64);
  v139 = *(v1 + 56);
  v140 = v8;
  v15 = *(v1 + 72);
  v16 = *(v1 + 80);
  v18 = *(v1 + 88);
  v17 = *(v1 + 96);
  v19 = *(v1 + 1088);
  v20 = *(v1 + 1096);
  v21 = *(v5 + 1104);
  v134 = *(v5 + 1112);
  v133 = *(v5 + 1120);
  if (!v7)
  {
    v126 = v19;
    v127 = *(v3 + 1088);
    v135 = v16;
    v130 = *(v3 + 1120);
    v131 = v15;
    v128 = v20;
    v129 = *(v3 + 1096);
    v123 = *(v5 + 1128);
    v124 = *(v3 + 1128);
    v125 = *(v3 + 1112);
    v121 = *(v5 + 1136);
    v122 = *(v3 + 1136);
    v118 = *(v5 + 1152);
    v119 = *(v5 + 1144);
    v120 = *(v3 + 1144);
    v40 = *(v3 + 40);
    sub_1ABB9AE60(v6, 0);
    if (!v13)
    {
      v117 = v18;
      sub_1ABB9AE60(v12, 0);
      v7 = 0;
      goto LABEL_34;
    }

    sub_1ABA826A8();
    sub_1ABA8A3A4();
    sub_1ABB9AE60(v41, v42);
    goto LABEL_21;
  }

  if (!v13)
  {
    v43 = sub_1ABA9FA2C(v10, v20, v8, v6);
    sub_1ABB9AE60(v43, v44);
    sub_1ABA8A3A4();
    sub_1ABB9AE60(v45, v46);
    v47 = sub_1ABA89628();
    sub_1ABB9AE60(v47, v48);

LABEL_21:
    v49 = sub_1ABA89628();
    sub_1ABAA8FA8(v49, v50, v51, v52);
    sub_1ABA826A8();
    sub_1ABA8A3A4();
LABEL_27:
    sub_1ABAA8FA8(v53, v54, v55, v56);
    return 0;
  }

  v128 = v20;
  v129 = *(v3 + 1096);
  v126 = v19;
  v127 = *(v3 + 1088);
  v123 = *(v5 + 1128);
  v124 = *(v3 + 1128);
  v125 = *(v3 + 1112);
  v121 = *(v5 + 1136);
  v122 = *(v3 + 1136);
  v130 = *(v3 + 1120);
  v118 = *(v5 + 1152);
  v119 = *(v5 + 1144);
  v120 = *(v3 + 1144);
  v22 = v6 == v12 && v7 == v13;
  v135 = v16;
  v116 = v17;
  if (!v22)
  {
    sub_1ABA9FA2C(v10, v20, v8, v6);
    v24 = v23;
    v25 = v9;
    v26 = v18;
    v28 = v27;
    v10 = sub_1ABF25054();
    v15 = v28;
    v18 = v26;
    v9 = v25;
    v6 = v24;
    if ((v10 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!v9)
  {
    v117 = v18;
    v131 = v15;
    v59 = sub_1ABA9FA2C(v10, v20, v8, v6);
    v31 = v60;
    sub_1ABB9AE60(v59, v61);
    if (!v14)
    {
      v81 = sub_1ABA826A8();
      sub_1ABB9AE60(v81, v82);
      v83 = sub_1ABAA4D7C();
      sub_1ABB9AE60(v83, v84);
      v77 = sub_1ABA826A8();
      v79 = v139;
      v80 = 0;
      goto LABEL_32;
    }

LABEL_25:
    sub_1ABA826A8();
    sub_1ABA8A3A4();
    sub_1ABB9AE60(v62, v63);
    v64 = sub_1ABAA4D7C();
    sub_1ABB9AE60(v64, v65);
    sub_1ABA826A8();
    sub_1ABA8A3A4();
    sub_1ABAA8FA8(v66, v67, v68, v69);
LABEL_26:

    v53 = sub_1ABAA4D7C();
    v56 = v9;
    goto LABEL_27;
  }

  if (!v14)
  {
LABEL_22:
    v57 = sub_1ABA9FA2C(v10, v20, v8, v6);
    sub_1ABB9AE60(v57, v58);
    goto LABEL_25;
  }

  v117 = v18;
  v131 = v15;
  if (v140 != v139 || v9 != v14)
  {
    sub_1ABA894A0();
    v31 = v30;
    v115 = sub_1ABF25054();
    v32 = sub_1ABAA4D7C();
    sub_1ABB9AE60(v32, v33);
    v34 = sub_1ABA826A8();
    sub_1ABB9AE60(v34, v35);
    v36 = sub_1ABAA4D7C();
    sub_1ABB9AE60(v36, v37);
    v38 = sub_1ABA826A8();
    sub_1ABAA8FA8(v38, v39, v139, v14);
    if (v115)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v70 = sub_1ABA9FA2C(v10, v20, v8, v6);
  v31 = v71;
  sub_1ABB9AE60(v70, v72);
  v73 = sub_1ABA826A8();
  sub_1ABB9AE60(v73, v74);
  v75 = sub_1ABAA4D7C();
  sub_1ABB9AE60(v75, v76);
  v77 = sub_1ABA826A8();
  v79 = v140;
  v80 = v9;
LABEL_32:
  sub_1ABAA8FA8(v77, v78, v79, v80);
LABEL_33:
  v40 = v31;

  v17 = v116;
LABEL_34:
  sub_1ABAA8FA8(v40, v7, v140, v9);
  if (!v136)
  {
    v85 = v135;
    if (!v135)
    {
      sub_1ABA96C48();
      sub_1ABBA1F34(v107, v108);
      sub_1ABBA1F34(v131, 0);
      goto LABEL_46;
    }

LABEL_43:
    v93 = sub_1ABA933D0();
    sub_1ABBA1F34(v93, v94);
    sub_1ABBA1F34(v131, v85);
    v95 = sub_1ABA933D0();
    sub_1ABAA8FA8(v95, v96, v97, v98);
    sub_1ABAA8FA8(v131, v85, v117, v17);
    return 0;
  }

  v85 = v135;
  if (!v135)
  {
    goto LABEL_43;
  }

  if (v137 == v117 && v138 == v17)
  {
    v99 = sub_1ABA933D0();
    sub_1ABBA1F34(v99, v100);
    sub_1ABA96C48();
    sub_1ABBA1F34(v101, v102);
    sub_1ABA96C48();
    sub_1ABAA8FA8(v103, v104, v105, v106);
LABEL_46:
    v109 = sub_1ABA933D0();
    sub_1ABAA8FA8(v109, v110, v111, v112);
LABEL_47:
    sub_1ABA88C44(v144);
    memcpy(v145, (v5 + 112), 0x3C9uLL);
    sub_1ABA88C44(v146);
    if (sub_1ABBAE794(v146) == 1)
    {
      memcpy(__dst, (v5 + 112), 0x3C9uLL);
      if (sub_1ABBAE794(__dst) != 1)
      {
        return 0;
      }
    }

    else
    {
      sub_1ABA88C44(v142);
      memcpy(__dst, (v5 + 112), 0x3C9uLL);
      if (sub_1ABBAE794(__dst) == 1 || !static EntityFeatures.== infix(_:_:)(v142, v145))
      {
        return 0;
      }
    }

    if (v129)
    {
      v113 = v130;
      if (v128)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v114 = v128;
      if (v127 != v126)
      {
        v114 = 1;
      }

      v113 = v130;
      if ((v114 & 1) == 0)
      {
LABEL_58:
        if (v11 == v21 && v125 == v134 && (sub_1ABB48494(v113, v133) & 1) != 0 && (sub_1ABB48494(v124, v123) & 1) != 0 && (sub_1ABB48494(v122, v121) & 1) != 0 && (sub_1ABB48494(v120, v119) & 1) != 0)
        {
          if (v132)
          {
            if (v118 && (sub_1ABB499DC(v132, v118) & 1) != 0)
            {
              return 1;
            }
          }

          else if (!v118)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  sub_1ABA7D0F8();
  v141 = sub_1ABF25054();
  v87 = sub_1ABA933D0();
  sub_1ABBA1F34(v87, v88);
  sub_1ABBA1F34(v131, v135);
  sub_1ABAA8FA8(v131, v135, v117, v17);
  v89 = sub_1ABA933D0();
  sub_1ABAA8FA8(v89, v90, v91, v92);
  result = 0;
  if (v141)
  {
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_1ABBBE020(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F6353656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x75747865746E6F63 && a2 == 0xEF65726F63536C61;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6552797469746E65 && a2 == 0xEF65636E6176656CLL;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4449656372756F73 && a2 == 0xE800000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6546797469746E65 && a2 == 0xEE00736572757461;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001FLL && 0x80000001ABF89F90 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000016 && 0x80000001ABF89FB0 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000001ABF89FD0 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73656D616ELL && a2 == 0xE500000000000000;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x80000001ABF89FF0 == a2;
                          if (v17 || (sub_1ABF25054() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x80000001ABF8A010 == a2;
                            if (v18 || (sub_1ABF25054() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x736C69616D65 && a2 == 0xE600000000000000;
                              if (v19 || (sub_1ABF25054() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x7574616546776172 && a2 == 0xEB00000000736572)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1ABF25054();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
    }
  }
}

unint64_t sub_1ABBBE518(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x65726F6373;
      break;
    case 2:
      result = 0x726F6353656D616ELL;
      break;
    case 3:
      result = 0x75747865746E6F63;
      break;
    case 4:
      result = 0x6552797469746E65;
      break;
    case 5:
      result = 0x4449656372756F73;
      break;
    case 6:
      result = 0x6C43797469746E65;
      break;
    case 7:
      result = 0x6546797469746E65;
      break;
    case 8:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x73656D616ELL;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x736C69616D65;
      break;
    case 15:
      result = 0x7574616546776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBBE71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBBE020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBBE744@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBBE510();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBBE76C(uint64_t a1)
{
  v2 = sub_1ABBC3E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBBE7A8(uint64_t a1)
{
  v2 = sub_1ABBC3E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RerankedEntity.encode(to:)()
{
  sub_1ABA8D110();
  v62 = v1;
  v2 = sub_1ABAD219C(&qword_1EB4D42F0, &qword_1ABF42B18);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = *v0;
  v10 = v0[1];
  v9 = v0[2];
  v12 = v0[3];
  v11 = v0[4];
  v13 = v0[5];
  v60 = v0[6];
  v61 = v13;
  v14 = v0[7];
  v58 = v0[8];
  v59 = v14;
  v15 = v0[10];
  v53 = v0[9];
  v54 = v15;
  v16 = v0[12];
  v55 = v0[11];
  v57 = v16;
  v56 = *(v0 + 104);
  v51 = v0[136];
  v52 = *(v0 + 1096);
  v17 = v0[138];
  v50 = *(v0 + 1112);
  v18 = v0[140];
  v48 = v0[141];
  v49 = v18;
  v19 = v0[142];
  v46 = v0[143];
  v47 = v19;
  v45 = v0[144];
  v20 = sub_1ABA8C744();
  sub_1ABA88DCC(v20, v21);
  sub_1ABBC3E00();
  sub_1ABF252E4();
  *v63 = v8;
  v64 = 0;
  sub_1ABAE8BC8();
  sub_1ABAABC88();
  v22 = v62;
  sub_1ABF24F84();
  if (v22)
  {
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    v23 = v59;
    v24 = v60;
    v25 = v61;
    v62 = v4;
    v26 = sub_1ABA8A288(1);
    v27.n128_u64[0] = v10;
    sub_1ABA899E4(v26, v27);
    v28 = sub_1ABA8A288(2);
    v29.n128_u64[0] = v9;
    sub_1ABA899E4(v28, v29);
    v30 = sub_1ABA8A288(3);
    v31.n128_u64[0] = v12;
    sub_1ABA899E4(v30, v31);
    v32 = sub_1ABA8A288(4);
    v33.n128_u64[0] = v11;
    sub_1ABA899E4(v32, v33);
    *v63 = v25;
    *&v63[8] = v24;
    *&v63[16] = v23;
    *&v63[24] = v58;
    v64 = 5;
    sub_1ABB9AE60(v25, v24);
    sub_1ABBC38EC();
    sub_1ABAABC88();
    sub_1ABF24F14();
    v34 = sub_1ABA89074();
    sub_1ABAA8FA8(v34, v35, v36, v37);
    *v63 = v53;
    *&v63[8] = v54;
    *&v63[16] = v55;
    *&v63[24] = v57;
    v63[32] = v56;
    v64 = 6;
    sub_1ABBA1F34(v53, v54);
    sub_1ABA98CE4();
    sub_1ABAABC88();
    sub_1ABF24F14();
    v38 = sub_1ABA89074();
    sub_1ABAA8FA8(v38, v39, v40, v41);
    memcpy(v63, v0 + 14, sizeof(v63));
    v64 = 7;
    sub_1ABBC3E54();
    sub_1ABAABC88();
    sub_1ABF24F14();
    v63[0] = 8;
    sub_1ABF24F24();
    v42 = sub_1ABA8A288(9);
    v43.n128_u64[0] = v17;
    sub_1ABA899E4(v42, v43);
    v63[0] = 10;
    sub_1ABF24F44();
    *v63 = v49;
    v64 = 11;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABBC3EA8();
    sub_1ABA8FFB0();
    *v63 = v48;
    v64 = 12;
    sub_1ABA8FFB0();
    *v63 = v47;
    v64 = 13;
    sub_1ABA8FFB0();
    *v63 = v46;
    v64 = 14;
    sub_1ABA8FFB0();
    *v63 = v45;
    v64 = 15;
    sub_1ABAD219C(&qword_1EB4D1370, &qword_1ABF42B20);
    sub_1ABBC3F24();
    sub_1ABAABC88();
    sub_1ABF24F14();
    (*(v62 + 8))(0, v2);
  }

  sub_1ABA8D258();
}

void RerankedEntity.init(from:)()
{
  sub_1ABA8D110();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D4318, &qword_1ABF42B28);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABBC3E00();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA8B4C4();
    sub_1ABA84B54(v3);
    if (v5)
    {

      if ((v6 & 1) == 0)
      {
LABEL_9:
        if (!v3)
        {
          goto LABEL_11;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else if (!v6)
    {
      goto LABEL_9;
    }

    if ((v3 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v33 = v5;
  sub_1ABAE8B74();
  sub_1ABA8E1B0();
  sub_1ABF24E64();
  v8 = v47;
  sub_1ABA7D5A8(1);
  sub_1ABF24E34();
  v10 = v9;
  sub_1ABA7D5A8(2);
  sub_1ABF24E34();
  v12 = v11;
  sub_1ABA7D5A8(3);
  sub_1ABF24E34();
  v14 = v13;
  sub_1ABA7D5A8(4);
  sub_1ABF24E34();
  v16 = v15;
  sub_1ABBC3B74();
  sub_1ABA8E1B0();
  sub_1ABF24DF4();
  v42 = v47;
  v43 = v48;
  v44 = v49;
  v45 = v50;
  sub_1ABA9B278();
  sub_1ABA8E1B0();
  sub_1ABF24DF4();
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v37 = v51;
  v76 = 7;
  sub_1ABBA4E68();
  sub_1ABA8FF84();
  sub_1ABF24DF4();
  memcpy(&v79[7], v77, 0x3C9uLL);
  sub_1ABA7D5A8(8);
  v17 = sub_1ABF24E04();
  v78 = v18 & 1;
  sub_1ABA7D5A8(9);
  sub_1ABF24E34();
  v20 = v19;
  sub_1ABA7D5A8(10);
  v32 = sub_1ABF24E24();
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABBC3FA0();
  sub_1ABA83828();
  sub_1ABA8FF84();
  sub_1ABF24E64();
  v36 = v47;
  sub_1ABA83828();
  sub_1ABA8FF84();
  sub_1ABF24E64();
  v35 = v47;
  sub_1ABA83828();
  sub_1ABA8FF84();
  sub_1ABF24E64();
  v34 = v47;
  LOBYTE(v46[0]) = 14;
  sub_1ABA83828();
  sub_1ABA8FF84();
  sub_1ABF24E64();
  v21 = v47;
  sub_1ABAD219C(&qword_1EB4D1370, &qword_1ABF42B20);
  v74 = 15;
  sub_1ABBC401C();
  sub_1ABA8FF84();
  sub_1ABF24DF4();
  v32 &= 1u;
  v22 = sub_1ABA906FC();
  v23(v22);
  v24 = v75;
  v46[0] = v8;
  v46[1] = v10;
  v46[2] = v12;
  v46[3] = v14;
  v46[4] = v16;
  v46[5] = v42;
  v46[6] = v43;
  v46[7] = v44;
  v46[8] = v45;
  v46[9] = v38;
  v46[10] = v39;
  v46[11] = v40;
  v46[12] = v41;
  LOBYTE(v46[13]) = v37;
  memcpy(&v46[13] + 1, v79, 0x3D0uLL);
  sub_1ABA9EE68();
  HIDWORD(v46[135]) = v25;
  v46[136] = v17;
  v31 = v78;
  LOBYTE(v46[137]) = v78;
  sub_1ABA898A0();
  HIDWORD(v46[137]) = v26;
  v46[138] = v20;
  LOBYTE(v46[139]) = v32;
  sub_1ABA9F0A4();
  HIDWORD(v46[139]) = v27;
  v46[140] = v36;
  v46[141] = v35;
  v46[142] = v34;
  v46[143] = v21;
  v46[144] = v24;
  memcpy(v33, v46, 0x488uLL);
  sub_1ABB4F254(v46, &v47);
  sub_1ABA84B54(v3);
  v47 = v8;
  v48 = v10;
  v49 = v12;
  v50 = v14;
  v51 = v16;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v56 = v38;
  v57 = v39;
  v58 = v40;
  v59 = v41;
  v60 = v37;
  memcpy(v61, v79, sizeof(v61));
  sub_1ABA9EE68();
  v62 = v28;
  v63 = v17;
  v64 = v31;
  sub_1ABA898A0();
  v65 = v29;
  v66 = v20;
  v67 = v32;
  sub_1ABA9F0A4();
  v68 = v30;
  v69 = v36;
  v70 = v35;
  v71 = v34;
  v72 = v21;
  v73 = v24;
  sub_1ABB4F2B0(&v47);
LABEL_11:
  sub_1ABA8D258();
}

uint64_t RerankedEntity.description.getter()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[10];
  v18 = v0[11];
  v19 = v0[9];
  v17 = v0[12];
  v7 = *(v0 + 104);
  sub_1ABA88C44(__src);
  v16 = v0[136];
  v20 = *(v0 + 1096);
  v8 = *(v0 + 1112);
  sub_1ABA9E0D4();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x696669746E656469, 0xEB000000003A7265);
  v21[0] = v1;
  EntityIdentifier.description.getter();
  sub_1ABA89C64();

  MEMORY[0x1AC5A9410](0x65726F6373200A20, 0xE90000000000003ALL);
  Double.toString(decimalPlaces:)(3);
  sub_1ABA89C64();

  MEMORY[0x1AC5A9410](0x53656D616E200A20, 0xED00003A65726F63);
  Double.toString(decimalPlaces:)(3);
  sub_1ABA89C64();

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](0xD000000000000013);
  Double.toString(decimalPlaces:)(3);
  sub_1ABA89C64();

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](0xD000000000000013);
  sub_1ABA8D3A8();
  sub_1ABA89C64();

  MEMORY[0x1AC5A9410](0xD00000000000001ALL, 0x80000001ABF89E30);
  Double.toString(decimalPlaces:)(3);
  sub_1ABA89C64();

  MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF89E50);
  if (v8)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1AC5A9410](v9, v10);

  v25 = __dst[0];
  v26 = __dst[1];
  if (v3)
  {
    strcpy(v21, "\n source:");
    WORD1(v21[1]) = 0;
    HIDWORD(v21[1]) = -385875968;
    __dst[0] = v2;
    __dst[1] = v3;
    __dst[2] = v4;
    __dst[3] = v5;
    v11 = EntitySourceID.description.getter();
    MEMORY[0x1AC5A9410](v11);

    sub_1ABA8A090();
  }

  if (v6)
  {
    sub_1ABA9E0D4();
    sub_1ABF24AB4();

    strcpy(v21, "\n entityClass:");
    HIBYTE(v21[1]) = -18;
    __dst[0] = v19;
    __dst[1] = v6;
    __dst[2] = v18;
    __dst[3] = v17;
    LOBYTE(__dst[4]) = v7;
    v12 = EntityClass.description.getter();
    MEMORY[0x1AC5A9410](v12);

    sub_1ABA8A090();
  }

  memcpy(__dst, __src, 0x3C9uLL);
  if (sub_1ABBAE794(__dst) != 1)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    MEMORY[0x1AC5A9410](0x727574616566200ALL, 0xEC000000203A7365);
    memcpy(v21, __dst, sizeof(v21));
    sub_1ABF24C54();
    MEMORY[0x1AC5A9410](v22, v23);
  }

  if ((v20 & 1) == 0)
  {
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1ABF24AB4();

    sub_1ABA8071C();
    v21[0] = 0xD000000000000023;
    v21[1] = v13;
    v22 = v16;
    v14 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v14);

    MEMORY[0x1AC5A9410](41, 0xE100000000000000);
    sub_1ABA8A090();
  }

  return v25;
}

uint64_t static RerankedEntitiesForMention.== infix(_:_:)(uint64_t *__src, const void *a2)
{
  memcpy(v8, __src, 0x49uLL);
  v4 = __src[10];
  memcpy(__dst, a2, 0x49uLL);
  sub_1ABB3E11C(v8, v11);
  sub_1ABB3E11C(__dst, v11);
  v5 = static Mention.== infix(_:_:)(__src, a2);
  memcpy(v10, a2, 0x49uLL);
  sub_1ABBC3DD0(v10);
  memcpy(v11, __src, 0x49uLL);
  sub_1ABBC3DD0(v11);
  if (v5)
  {
    v6 = sub_1ABB49204(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1ABBBF92C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746E656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABBBF9F4(char a1)
{
  if (a1)
  {
    return 0x7365697469746E65;
  }

  else
  {
    return 0x6E6F69746E656DLL;
  }
}

uint64_t sub_1ABBBFA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABBBFA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBBF92C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBBFAA8(uint64_t a1)
{
  v2 = sub_1ABBC4098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBBFAE4(uint64_t a1)
{
  v2 = sub_1ABBC4098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RerankedEntitiesForMention.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABAD219C(&qword_1EB4D4328, &qword_1ABF42B30);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  memcpy(v9, v0, 0x49uLL);
  v3 = sub_1ABAA015C();
  sub_1ABA88DCC(v3, v4);
  sub_1ABB3E11C(v9, v8);
  sub_1ABBC4098();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  memcpy(v8, v9, 0x49uLL);
  sub_1ABBC40EC();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  memcpy(v7, v8, 0x49uLL);
  sub_1ABBC3DD0(v7);
  if (!v1)
  {
    sub_1ABA8E804();
    sub_1ABAD219C(&qword_1EB4D4340, &qword_1ABF42B38);
    sub_1ABBC4140();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  v5 = sub_1ABA8862C();
  v6(v5);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void RerankedEntitiesForMention.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  v24 = v23;
  v32 = v25;
  sub_1ABAD219C(&qword_1EB4D4358, &qword_1ABF42B40);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA8176C();
  sub_1ABA88DCC(v24, v24[3]);
  v27 = sub_1ABBC4098();
  sub_1ABA9F6A4(&type metadata for RerankedEntitiesForMention.CodingKeys, v28, v27);
  if (v22)
  {
    sub_1ABA84B54(v24);
  }

  else
  {
    sub_1ABBC4218();
    sub_1ABA8AB00();
    sub_1ABF24E64();
    memcpy(v38, v37, 0x49uLL);
    sub_1ABAD219C(&qword_1EB4D4340, &qword_1ABF42B38);
    sub_1ABA8E804();
    sub_1ABBC426C();
    sub_1ABF24E64();
    v29 = sub_1ABA8EF78();
    v30(v29);
    v31 = v36;
    memcpy(v33, v38, 0x50uLL);
    v33[10] = v36;
    memcpy(v32, v33, 0x58uLL);
    sub_1ABBC4344(v33, v34);
    sub_1ABA84B54(v24);
    memcpy(v34, v38, sizeof(v34));
    v35 = v31;
    sub_1ABBC437C(v34);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

uint64_t RerankedEntitiesForMention.description.getter()
{
  v1 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v1;
  v22[2] = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  *&v22[3] = *(v0 + 48);
  *&v22[4] = v3;
  BYTE8(v22[4]) = *(v0 + 72);
  v4 = *(v0 + 80);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x3A6E6F69746E656DLL, 0xE900000000000020);
  *(&v22[3] + 1) = v2;
  v5 = Mention.description.getter();
  MEMORY[0x1AC5A9410](v5);

  sub_1ABA8CAC4();
  if (v2)
  {
    v6 = *(v2 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      *&v22[0] = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4(0, v6, 0);
      v7 = *&v22[0];
      v8 = (v2 + 56);
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        *&v22[0] = v7;
        v12 = *(v7 + 16);
        v11 = *(v7 + 24);

        if (v12 >= v11 >> 1)
        {
          sub_1ABADDBD4(v11 > 1, v12 + 1, 1);
          v7 = *&v22[0];
        }

        *(v7 + 16) = v12 + 1;
        v13 = v7 + 16 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = v9;
        v8 += 5;
        --v6;
      }

      while (v6);
    }

    *&v22[0] = v7;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    sub_1ABA9EBC4();
    v14 = sub_1ABF23B54();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
    v14 = 4271950;
  }

  MEMORY[0x1AC5A9410](v14, v16);

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](0xD000000000000017);
  *&v22[0] = *(v4 + 16);
  v17 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v17);

  result = v25;
  v19 = *(v4 + 16);
  if (v19)
  {
    v20 = (v4 + 32);
    do
    {
      memcpy(v22, v20, 0x488uLL);
      v23 = 32;
      v24 = 0xE100000000000000;
      v21 = RerankedEntity.description.getter();
      MEMORY[0x1AC5A9410](v21);

      MEMORY[0x1AC5A9410](v23, v24);

      v20 += 1160;
      --v19;
    }

    while (v19);
    return v25;
  }

  return result;
}

uint64_t sub_1ABBC01BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736E6F69746E656DLL && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

uint64_t sub_1ABBC0318(char a1)
{
  result = 0x74736575716572;
  switch(a1)
  {
    case 1:
      result = 0x6769666E6F63;
      break;
    case 2:
      result = 0x65736E6F70736572;
      break;
    case 3:
      result = 0x736E6F69746E656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBC03A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBC01BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBC03CC(uint64_t a1)
{
  v2 = sub_1ABBC43AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC0408(uint64_t a1)
{
  v2 = sub_1ABBC43AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionSession.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  v36 = v23;
  v24 = sub_1ABAD219C(&qword_1EB4D4378, &qword_1ABF42B48);
  sub_1ABA7BB64();
  v26 = v25;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v35 - v28;
  memcpy(v42, v22, 0x7BuLL);
  memcpy(v43, v22 + 16, 0x8DuLL);
  v30 = v22[35];
  v35 = v22[34];
  v31 = sub_1ABA894A0();
  sub_1ABA88DCC(v31, v32);
  sub_1ABBC3BC8(v42, v39);
  sub_1ABBC43AC();
  sub_1ABA8177C();
  sub_1ABF252E4();
  memcpy(v41, v42, sizeof(v41));
  sub_1ABBC4400();
  v33 = v36;
  sub_1ABF24F84();
  if (v33)
  {
    memcpy(v39, v41, 0x7BuLL);
    sub_1ABBC3C00(v39);
  }

  else
  {
    v34 = v35;
    memcpy(v40, v41, 0x7BuLL);
    sub_1ABBC3C00(v40);
    memcpy(v39, v43, 0x8DuLL);
    sub_1ABA8E804();
    sub_1ABBA9514(v43, v38);
    sub_1ABBC4454();
    sub_1ABF24F84();
    memcpy(v38, v39, 0x8DuLL);
    sub_1ABBA954C(v38);
    v37 = v34;
    sub_1ABAD219C(&qword_1EB4D4398, &qword_1ABF42B50);
    sub_1ABBC44A8();
    sub_1ABA8BC88();
    v37 = v30;
    sub_1ABAD219C(&qword_1EB4D43B0, &qword_1ABF42B58);
    sub_1ABBC4580();
    sub_1ABA8BC88();
  }

  (*(v26 + 8))(v29, v24);
  sub_1ABA7BC90();
}

void EntityResolutionSession.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v12 = sub_1ABAD219C(&qword_1EB4D43C0, &qword_1ABF42B60);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8176C();
  sub_1ABA88DCC(v2, v2[3]);
  v6 = sub_1ABBC43AC();
  sub_1ABA9F6A4(&type metadata for EntityResolutionSession.CodingKeys, v7, v6);
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABBC4604();
    sub_1ABA8AB00();
    sub_1ABF24E64();
    memcpy(v18, v17, 0x7BuLL);
    sub_1ABA8E804();
    sub_1ABBAA574();
    sub_1ABA8AB00();
    sub_1ABF24E64();
    memcpy(&v18[128], v16, 0x8DuLL);
    sub_1ABAD219C(&qword_1EB4D4398, &qword_1ABF42B50);
    LOBYTE(v13[0]) = 2;
    sub_1ABBC4658();
    sub_1ABA892F4();
    sub_1ABF24E64();
    v8 = v14[0];
    sub_1ABAD219C(&qword_1EB4D43B0, &qword_1ABF42B58);
    sub_1ABBC4730();
    sub_1ABA892F4();
    sub_1ABF24E64();
    v9 = sub_1ABA9F1EC();
    v10(v9, v12);
    v11 = v15;
    memcpy(v13, v18, 0x110uLL);
    v13[34] = v8;
    v13[35] = v15;
    memcpy(v4, v13, 0x120uLL);
    sub_1ABBC47B4(v13, v14);
    sub_1ABA84B54(v2);
    memcpy(v14, v18, 0x110uLL);
    v14[34] = v8;
    v14[35] = v11;
    sub_1ABBC47EC(v14);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void sub_1ABBC0A28()
{
  qword_1EB5497C8 = 0x6E6F697461636F6CLL;
  unk_1EB5497D0 = 0xE900000000000073;
  qword_1EB5497D8 = 0x6E6F697461636F6CLL;
  unk_1EB5497E0 = 0xE900000000000073;
}

void sub_1ABBC0A58()
{
  qword_1EB5497E8 = 0x73746E657665;
  unk_1EB5497F0 = 0xE600000000000000;
  qword_1EB5497F8 = 0x73746E657665;
  unk_1EB549800 = 0xE600000000000000;
}

void sub_1ABBC0A7C()
{
  qword_1EB549808 = 0x656C706F6570;
  unk_1EB549810 = 0xE600000000000000;
  qword_1EB549818 = 0x656C706F6570;
  unk_1EB549820 = 0xE600000000000000;
}

void sub_1ABBC0AA0()
{
  qword_1EB549828 = 0x736369706F74;
  unk_1EB549830 = 0xE600000000000000;
  qword_1EB549838 = 0x736369706F74;
  unk_1EB549840 = 0xE600000000000000;
}

void sub_1ABBC0AC4()
{
  strcpy(&qword_1EB549848, "organizations");
  unk_1EB549856 = -4864;
  strcpy(&qword_1EB549858, "organizations");
  unk_1EB549866 = -4864;
}

uint64_t NeighborSignal.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NeighborSignal.columnName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall NeighborSignal.init(rawValue:)(IntelligencePlatform::NeighborSignal_optional *__return_ptr retstr, Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v5 = rawValue._countAndFlagsBits == 0x6E6F697461636F6CLL && rawValue._object == 0xE900000000000073;
  if (v5 || (sub_1ABA97788(), (sub_1ABF25054() & 1) != 0))
  {

    if (qword_1EB4D0300 != -1)
    {
      swift_once();
    }

    v6 = &qword_1EB5497C8;
  }

  else
  {
    v9 = countAndFlagsBits == 0x73746E657665 && object == 0xE600000000000000;
    if (v9 || (sub_1ABA97788(), (sub_1ABF25054() & 1) != 0))
    {

      if (qword_1EB4D0308 != -1)
      {
        swift_once();
      }

      v6 = &qword_1EB5497E8;
    }

    else
    {
      v10 = countAndFlagsBits == 0x656C706F6570 && object == 0xE600000000000000;
      if (v10 || (sub_1ABA97788(), (sub_1ABF25054() & 1) != 0))
      {

        if (qword_1EB4D0310 != -1)
        {
          swift_once();
        }

        v6 = &qword_1EB549808;
      }

      else
      {
        v11 = countAndFlagsBits == 0x736369706F74 && object == 0xE600000000000000;
        if (v11 || (sub_1ABA97788(), (sub_1ABF25054() & 1) != 0))
        {

          if (qword_1EB4D0318 != -1)
          {
            swift_once();
          }

          v6 = &qword_1EB549828;
        }

        else
        {
          if (countAndFlagsBits != 0x617A696E6167726FLL || object != 0xED0000736E6F6974)
          {
            sub_1ABA97788();
            if ((sub_1ABF25054() & 1) == 0)
            {
              v7 = object;
              v8 = countAndFlagsBits;
              goto LABEL_10;
            }
          }

          if (qword_1EB4D0320 != -1)
          {
            swift_once();
          }

          v6 = &qword_1EB549848;
        }
      }
    }
  }

  countAndFlagsBits = *v6;
  v7 = v6[1];
  v8 = v6[2];
  object = v6[3];

LABEL_10:

  retstr->value.name._countAndFlagsBits = countAndFlagsBits;
  retstr->value.name._object = v7;
  retstr->value.columnName._countAndFlagsBits = v8;
  retstr->value.columnName._object = object;
}

void __swiftcall NeighborSignal.init(columnName:)(IntelligencePlatform::NeighborSignal_optional *__return_ptr retstr, Swift::String columnName)
{
  NeighborSignal.init(rawValue:)(&v4, columnName);
  v3 = v4.value.columnName;
  retstr->value.name = v4.value.name;
  retstr->value.columnName = v3;
}

uint64_t sub_1ABBC0F04@<X0>(uint64_t *a1@<X8>)
{
  result = NeighborSignal.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABBC0F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABBC7008();
  v5 = sub_1ABBC6FB4();
  v6 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B38](a1, a2, v4, v5, v6);
}

uint64_t sub_1ABBC0FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABBC6F60();
  v7 = sub_1ABBC6FB4();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

uint64_t sub_1ABBC103C(uint64_t a1)
{
  v2 = sub_1ABBC6F0C();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABBC1088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABBC6F0C();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1ABBC10DC()
{
  v1 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABA7D0F8();
  sub_1ABF21C44();
  sub_1ABF21D34();
  if (v0)
  {
    return (*(v3 + 8))(v6, v1);
  }

  (*(v3 + 8))(v6, v1);
  v8 = objc_autoreleasePoolPush();
  sub_1ABA7D0F8();
  sub_1ABBC123C(v9, v10);
  objc_autoreleasePoolPop(v8);
  v11 = sub_1ABA7D0F8();
  sub_1ABA96210(v11, v12);
  return v13[1];
}

uint64_t sub_1ABBC123C@<X0>(void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1ABF217F4();
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABAD219C(&qword_1EB4D4600, &unk_1ABF44F58);
  sub_1ABBC70B0();
  sub_1ABF217D4();

  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v8 = __src[0];
    v9 = *(__src[0] + 16);
    if (v9)
    {
      v28 = a3;
      v20 = a4;
      v27 = MEMORY[0x1E69E7CC0];
      sub_1ABADE18C(0, v9, 0);
      v10 = 0;
      v11 = v27;
      if (*(__src[0] + 16) >= v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = *(__src[0] + 16);
      }

      v13 = (__src[0] + 64);
      while (v12 != v10)
      {
        if (v10 >= *(v8 + 16))
        {
          goto LABEL_18;
        }

        v15 = *(v13 - 4);
        v14 = *(v13 - 3);
        v22 = v10;
        v23[0] = v15;
        v23[1] = v14;
        v16 = *v13;
        v24 = *(v13 - 1);
        v25 = v16;

        sub_1ABBC151C(v10, v23, __src);

        memcpy(__dst, __src, sizeof(__dst));
        v27 = v11;
        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1ABADE18C(v17 > 1, v18 + 1, 1);
          v11 = v27;
        }

        *(v11 + 16) = v18 + 1;
        memcpy((v11 + 1160 * v18 + 32), __dst, 0x488uLL);
        if (v9 - 1 == v10)
        {

          a4 = v20;
          goto LABEL_16;
        }

        v13 += 6;
        ++v10;
      }

      __break(1u);
LABEL_18:
      __break(1u);

      __break(1u);
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
LABEL_16:
      __src[0] = v11;

      sub_1ABBB6A70(__src);

      v19 = __src[0];
      sub_1ABAD219C(&qword_1EB4D1960, &qword_1ABF33AF0);
      result = swift_allocObject();
      *(result + 96) = 0;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 16) = xmmword_1ABF34740;
      *(result + 104) = 1;
      *(result + 105) = __dst[0];
      *(result + 108) = *(__dst + 3);
      *(result + 112) = v19;
      *a4 = result;
    }
  }

  return result;
}

uint64_t sub_1ABBC151C@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 1);
  v21 = *a2;
  v7 = *(a2 + 2);
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  sub_1ABAD219C(&qword_1EB4D4618, &qword_1ABF44F68);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ABF3BFC0;
  __dst[0] = a1;

  result = EntityIdentifier.stringValue.getter();
  *(v10 + 32) = 0xD000000000000027;
  *(v10 + 40) = 0x80000001ABF8A0C0;
  *(v10 + 48) = 0xD000000000000010;
  *(v10 + 56) = 0x80000001ABF8A0F0;
  *(v10 + 64) = result;
  *(v10 + 72) = v12;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = objc_opt_self();
  *(v10 + 80) = [v13 featureValueWithInt64_];
  v14 = EntityIdentifier.stringValue.getter();
  *(v10 + 88) = 0xD000000000000027;
  *(v10 + 96) = 0x80000001ABF8A0C0;
  *(v10 + 104) = 0xD000000000000012;
  *(v10 + 112) = 0x80000001ABF8A110;
  *(v10 + 120) = v14;
  *(v10 + 128) = v15;
  *(v10 + 136) = [v13 featureValueWithDouble_];
  __dst[0] = a1;
  v16 = EntityIdentifier.stringValue.getter();
  *(v10 + 144) = 0xD000000000000029;
  *(v10 + 152) = 0x80000001ABF8A130;
  *(v10 + 160) = 0xD00000000000002ELL;
  *(v10 + 168) = 0x80000001ABF8A160;
  *(v10 + 176) = v16;
  *(v10 + 184) = v17;
  *(v10 + 192) = [v13 featureValueWithDouble_];
  sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
  sub_1ABBA0480();
  v18 = sub_1ABF239C4();
  v19 = objc_autoreleasePoolPush();
  sub_1ABBA45E0(v18, &v25, __src);

  objc_autoreleasePoolPop(v19);
  if (v22)
  {
  }

  else
  {
    memcpy(__dst, __src, 0x3C8uLL);
    sub_1ABB9AEA4(__dst);
    *a3 = a1;
    *(a3 + 8) = v7;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = v7;
    *(a3 + 40) = v21;
    *(a3 + 48) = v5;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0;
    result = memcpy((a3 + 112), __dst, 0x3C9uLL);
    *(a3 + 1152) = 0;
    *(a3 + 1088) = 0;
    *(a3 + 1096) = 1;
    *(a3 + 1104) = 0x3FF0000000000000;
    *(a3 + 1112) = 0;
    v20 = MEMORY[0x1E69E7CC0];
    *(a3 + 1120) = MEMORY[0x1E69E7CC0];
    *(a3 + 1128) = v20;
    *(a3 + 1136) = v20;
    *(a3 + 1144) = v20;
  }

  return result;
}

uint64_t sub_1ABBC184C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632941 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001ABF8A030 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABBC1964(char a1)
{
  if (!a1)
  {
    return 1684632941;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x7365727574616566;
}

uint64_t sub_1ABBC19C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBC184C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBC19E8(uint64_t a1)
{
  v2 = sub_1ABBC481C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC1A24(uint64_t a1)
{
  v2 = sub_1ABBC481C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MockRankerResult.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D43E8, &qword_1ABF42B68);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7E338();
  v7 = a1[3];
  v8 = a1;
  v10 = v9;
  sub_1ABA88DCC(v8, v7);
  sub_1ABBC481C();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABA894A0();
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v1)
  {
    sub_1ABA7BF34();
    sub_1ABF24F54();
    sub_1ABBC4870();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  return (*(v5 + 8))(v2, v10);
}

void MockRankerResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D4400, &qword_1ABF42B70);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABBC481C();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA84B54(a1);
  }

  else
  {
    sub_1ABA9A364();
    v6 = sub_1ABF24E14();
    v8 = v7;
    LOBYTE(v13) = 1;
    sub_1ABA9A364();
    sub_1ABF24E34();
    v10 = v9;
    sub_1ABBC48C4();
    sub_1ABF24E64();
    v11 = sub_1ABA7BFF0();
    v12(v11);
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v10;
    *(a2 + 24) = v13;
    *(a2 + 40) = v14;

    sub_1ABA84B54(a1);
  }

  sub_1ABA9EFCC();
}

uint64_t sub_1ABBC1DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000026 && 0x80000001ABF8A050 == a2;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001ABF8A080 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001ABF8A0A0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1ABBC1EF4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000026;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0xD000000000000018;
}

uint64_t sub_1ABBC1F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABBC1FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBC1DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBC1FF4(uint64_t a1)
{
  v2 = sub_1ABBC4918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC2030(uint64_t a1)
{
  v2 = sub_1ABBC4918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MockLocationFeatures.encode(to:)(uint64_t a1)
{
  sub_1ABAD219C(&qword_1EB4D4410, &qword_1ABF42B78);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  v3 = sub_1ABAA015C();
  sub_1ABA88DCC(v3, v4);
  sub_1ABBC4918();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24F54();
  if (!v1)
  {
    sub_1ABA7BF34();
    sub_1ABF24F54();
    sub_1ABA7BF34();
    sub_1ABF24F54();
  }

  v5 = sub_1ABA8862C();
  return v6(v5);
}

uint64_t MockLocationFeatures.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D4420, &qword_1ABF42B80);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABBC4918();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (!v2)
  {
    sub_1ABA9A364();
    sub_1ABF24E34();
    v7 = v6;
    sub_1ABA9A364();
    sub_1ABF24E34();
    v10 = v9;
    sub_1ABA9A364();
    sub_1ABF24E34();
    v12 = v11;
    v13 = sub_1ABA7BFF0();
    v14(v13);
    *a2 = v7;
    *(a2 + 1) = v10;
    *(a2 + 2) = v12;
  }

  return sub_1ABA84B54(a1);
}

uint64_t static NSUserDefaults.ecrRankerResultsMockFile.getter()
{
  if (qword_1ED86E3F8 != -1)
  {
    sub_1ABA7F0DC(&qword_1ED86E3F8);
  }

  swift_beginAccess();
  v4[0] = xmmword_1ED86E400;
  v4[1] = *&qword_1ED86E410;
  v5 = qword_1ED86E420;
  sub_1ABBC496C(v4, v3);
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1ABBC2810(v4);
  objc_autoreleasePoolPop(v0);
  sub_1ABA925A4(v4, &qword_1EB4D4428, &qword_1ABF42B88);
  return v1;
}

uint64_t static NSUserDefaults.ecrRankerResultsMockFile.setter()
{
  if (qword_1ED86E3F8 != -1)
  {
    sub_1ABA7F0DC(&qword_1ED86E3F8);
  }

  swift_beginAccess();
  v0 = objc_autoreleasePoolPush();
  sub_1ABA893C0();
  sub_1ABBC2920(v1, v2, v3);
  objc_autoreleasePoolPop(v0);
  swift_endAccess();
}

void (*static NSUserDefaults.ecrRankerResultsMockFile.modify(void *a1))(char **a1, char a2)
{
  v2 = sub_1ABAFDD10(0x68uLL);
  *a1 = v2;
  if (qword_1ED86E3F8 != -1)
  {
    sub_1ABA7F0DC(&qword_1ED86E3F8);
  }

  swift_beginAccess();
  v3 = xmmword_1ED86E400;
  v4 = *&qword_1ED86E410;
  v2[4] = qword_1ED86E420;
  *v2 = v3;
  *(v2 + 1) = v4;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1ABBC2810(v2);
  v2[12] = 0;
  v7 = v6;
  v9 = v8;
  objc_autoreleasePoolPop(v5);
  v2[8] = v7;
  v2[9] = v9;
  return sub_1ABBC2624;
}

void sub_1ABBC2624(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 9);
  if (a2)
  {

    v5 = objc_autoreleasePoolPush();
    sub_1ABBC2920(&xmmword_1ED86E400, v3, v4);
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    sub_1ABBC2920(&xmmword_1ED86E400, v3, v4);
    objc_autoreleasePoolPop(v6);
  }

  swift_endAccess();

  free(v2);
}

id sub_1ABBC26FC()
{
  sub_1ABAFF390(0, &qword_1ED871D88, 0x1E695E000);
  result = static NSUserDefaults.makeIntelligencePlatformUserDefaults()();
  xmmword_1ED86E400 = 0uLL;
  qword_1ED86E410 = 0xD000000000000018;
  qword_1ED86E418 = 0x80000001ABF8A190;
  qword_1ED86E420 = result;
  return result;
}

id static NSUserDefaults.$ecrRankerResultsMockFile.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED86E3F8 != -1)
  {
    sub_1ABA7F0DC(&qword_1ED86E3F8);
  }

  swift_beginAccess();
  v3 = qword_1ED86E418;
  v5 = qword_1ED86E420;
  v2 = qword_1ED86E420;
  *a1 = xmmword_1ED86E400;
  *(a1 + 8) = *(&xmmword_1ED86E400 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;

  return v5;
}

uint64_t sub_1ABBC2810(uint64_t *a1)
{
  v2 = a1[4];
  v3 = sub_1ABF23BD4();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1ABF248F4();
    swift_unknownObjectRelease();
    sub_1ABAFF238(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  sub_1ABAD219C(&qword_1EB4D3000, &unk_1ABF3AA60);
  sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
  if (swift_dynamicCast() && *(&v7 + 1) != 1)
  {
    return v7;
  }

  v5 = *a1;

  return v5;
}

void sub_1ABBC2920(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];

  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
  v5 = sub_1ABF250E4();

  v6 = sub_1ABF23BD4();

  [v4 setObject:v5 forKey:{v6, a2, a3}];

  swift_unknownObjectRelease();
}

void sub_1ABBC29E8(void *a1, char a2)
{
  v2 = a1[3];
  v3 = sub_1ABF250E4();

  v4 = sub_1ABF23BD4();

  [v2 setObject:v3 forKey:v4];

  swift_unknownObjectRelease();
}

unint64_t sub_1ABBC2A90()
{
  result = qword_1EB4D4178;
  if (!qword_1EB4D4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4178);
  }

  return result;
}

unint64_t sub_1ABBC2AE4()
{
  result = qword_1EB4D4180;
  if (!qword_1EB4D4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4180);
  }

  return result;
}

unint64_t sub_1ABBC2B38()
{
  result = qword_1EB4D4188;
  if (!qword_1EB4D4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4188);
  }

  return result;
}

unint64_t sub_1ABBC2B8C()
{
  result = qword_1EB4D4190;
  if (!qword_1EB4D4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4190);
  }

  return result;
}

unint64_t sub_1ABBC2BE0()
{
  result = qword_1EB4D4198;
  if (!qword_1EB4D4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4198);
  }

  return result;
}

unint64_t sub_1ABBC2C34()
{
  result = qword_1EB4D41A0;
  if (!qword_1EB4D41A0)
  {
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    sub_1ABAE8BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D41A0);
  }

  return result;
}

unint64_t sub_1ABBC2CB8()
{
  result = qword_1EB4D41A8;
  if (!qword_1EB4D41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D41A8);
  }

  return result;
}

unint64_t sub_1ABBC2D0C()
{
  result = qword_1EB4D41B0;
  if (!qword_1EB4D41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D41B0);
  }

  return result;
}

unint64_t sub_1ABBC2D60(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1ABBC2E00(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1ABDEFABC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1ABBC2E00(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1ABB807B0(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

char *sub_1ABBC2E70(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABBC2F64(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1ABBA079C(0, v2, 1, a1);
  }

  return result;
}

void sub_1ABBC2F64(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 1160 * v9 + 8);
        v11 = 1160 * v7;
        v12 = *a3 + 1160 * v7;
        v13 = *(v12 + 8);
        v14 = (v12 + 2328);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v19 = (v13 < v10) ^ (v16 >= *v14);
          v14 += 145;
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_109;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 1160 * v6 - 1160;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v9)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_114;
                }

                memcpy(__dst, (v23 + v11), sizeof(__dst));
                memmove((v23 + v11), (v23 + v20), 0x488uLL);
                memcpy((v23 + v20), __dst, 0x488uLL);
              }

              ++v22;
              v20 -= 1160;
              v11 += 1160;
            }

            while (v22 < v9);
            v6 = a3[1];
            v9 = v21;
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_108;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_110;
          }

          if (v7 + a4 >= v6)
          {
            v24 = v6;
          }

          else
          {
            v24 = v7 + a4;
          }

          if (v24 < v7)
          {
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
            return;
          }

          if (v9 != v24)
          {
            v25 = *a3;
            v26 = *a3 + 1160 * v9 - 1160;
            v80 = v7;
            v27 = v9;
            v28 = v7 - v9;
            do
            {
              v29 = v28;
              v30 = v26;
              do
              {
                if (v30[1] >= v30[146])
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_112;
                }

                memcpy(__dst, v30 + 145, sizeof(__dst));
                memcpy(v30 + 145, v30, 0x488uLL);
                memcpy(v30, __dst, 0x488uLL);
                v30 -= 145;
              }

              while (!__CFADD__(v29++, 1));
              v26 += 1160;
              --v28;
              ++v27;
            }

            while (v27 != v24);
            v9 = v24;
            v7 = v80;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_107;
      }

      v79 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v8 = v75;
      }

      v32 = v8[2];
      v33 = v32 + 1;
      if (v32 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v76;
      }

      v8[2] = v33;
      v34 = v8 + 4;
      v35 = &v8[2 * v32 + 4];
      *v35 = v7;
      v35[1] = v9;
      v81 = *a1;
      if (!*a1)
      {
        goto LABEL_115;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v8[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v8[4];
            v40 = v8[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_57:
            if (v42)
            {
              goto LABEL_97;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_100;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_103;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_105;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v33 < 2)
          {
            goto LABEL_99;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_72:
          if (v57)
          {
            goto LABEL_102;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_104;
          }

          if (v64 < v56)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_111;
          }

          if (!*a3)
          {
            goto LABEL_113;
          }

          v68 = &v34[2 * v36 - 2];
          v69 = *v68;
          v70 = &v34[2 * v36];
          v71 = v70[1];
          sub_1ABBA1794((*a3 + 1160 * *v68), (*a3 + 1160 * *v70), (*a3 + 1160 * v71), v81);
          if (v5)
          {
            goto LABEL_90;
          }

          if (v71 < v69)
          {
            goto LABEL_92;
          }

          v72 = v8;
          v73 = v8[2];
          if (v36 > v73)
          {
            goto LABEL_93;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v36 >= v73)
          {
            goto LABEL_94;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v70 + 2, 16 * (v73 - 1 - v36));
          v72[2] = v73 - 1;
          v74 = v73 > 2;
          v8 = v72;
          v5 = 0;
          if (!v74)
          {
            goto LABEL_86;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_95;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_96;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_98;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_101;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_106;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v6 = a3[1];
      v7 = v79;
      if (v79 >= v6)
      {
        v84 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_116;
  }

  sub_1ABBA1424(&v84, *a1, a3);
LABEL_90:
}

uint64_t sub_1ABBC34A0(uint64_t a1, uint64_t a2)
{
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](3943982, 0xE300000000000000);
  sub_1ABF24C54();
  return 0;
}

unint64_t sub_1ABBC3538()
{
  result = qword_1EB4D41E8;
  if (!qword_1EB4D41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D41E8);
  }

  return result;
}

unint64_t sub_1ABBC358C()
{
  result = qword_1EB4D41F0;
  if (!qword_1EB4D41F0)
  {
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    sub_1ABAE8B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D41F0);
  }

  return result;
}

unint64_t sub_1ABBC3610()
{
  result = qword_1EB4D4200;
  if (!qword_1EB4D4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4200);
  }

  return result;
}

unint64_t sub_1ABBC3664()
{
  result = qword_1EB4D4218;
  if (!qword_1EB4D4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4218);
  }

  return result;
}

unint64_t sub_1ABBC36B8()
{
  result = qword_1EB4D4228;
  if (!qword_1EB4D4228)
  {
    sub_1ABAE2850(&qword_1EB4D4220, &qword_1ABF42AC0);
    sub_1ABA98CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4228);
  }

  return result;
}

unint64_t sub_1ABBC373C()
{
  result = qword_1EB4D4238;
  if (!qword_1EB4D4238)
  {
    sub_1ABAE2850(&qword_1EB4D4230, &qword_1ABF42AC8);
    sub_1ABBC37C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4238);
  }

  return result;
}

unint64_t sub_1ABBC37C0()
{
  result = qword_1EB4D4240;
  if (!qword_1EB4D4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4240);
  }

  return result;
}

unint64_t sub_1ABBC3814()
{
  result = qword_1EB4D4248;
  if (!qword_1EB4D4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4248);
  }

  return result;
}

unint64_t sub_1ABBC3868()
{
  result = qword_1EB4D4258;
  if (!qword_1EB4D4258)
  {
    sub_1ABAE2850(&qword_1EB4D4250, &qword_1ABF42AD0);
    sub_1ABBC38EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4258);
  }

  return result;
}

unint64_t sub_1ABBC38EC()
{
  result = qword_1EB4D4260;
  if (!qword_1EB4D4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4260);
  }

  return result;
}

unint64_t sub_1ABBC3940()
{
  result = qword_1EB4D4270;
  if (!qword_1EB4D4270)
  {
    sub_1ABAE2850(&qword_1EB4D4220, &qword_1ABF42AC0);
    sub_1ABA9B278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4270);
  }

  return result;
}

unint64_t sub_1ABBC39C4()
{
  result = qword_1EB4D4278;
  if (!qword_1EB4D4278)
  {
    sub_1ABAE2850(&qword_1EB4D4230, &qword_1ABF42AC8);
    sub_1ABBC3A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4278);
  }

  return result;
}

unint64_t sub_1ABBC3A48()
{
  result = qword_1EB4D4280;
  if (!qword_1EB4D4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4280);
  }

  return result;
}

unint64_t sub_1ABBC3A9C()
{
  result = qword_1EB4D4288;
  if (!qword_1EB4D4288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4288);
  }

  return result;
}

unint64_t sub_1ABBC3AF0()
{
  result = qword_1EB4D4290;
  if (!qword_1EB4D4290)
  {
    sub_1ABAE2850(&qword_1EB4D4250, &qword_1ABF42AD0);
    sub_1ABBC3B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4290);
  }

  return result;
}

unint64_t sub_1ABBC3B74()
{
  result = qword_1EB4D4298;
  if (!qword_1EB4D4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4298);
  }

  return result;
}

unint64_t sub_1ABBC3C30()
{
  result = qword_1EB4D42B0;
  if (!qword_1EB4D42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D42B0);
  }

  return result;
}

unint64_t sub_1ABBC3C84()
{
  result = qword_1EB4D42B8;
  if (!qword_1EB4D42B8)
  {
    sub_1ABAE2850(&qword_1EB4D1970, &qword_1ABF33B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D42B8);
  }

  return result;
}

unint64_t sub_1ABBC3D00()
{
  result = qword_1EB4D42D0;
  if (!qword_1EB4D42D0)
  {
    sub_1ABAE2850(&qword_1EB4D42C8, &qword_1ABF42B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D42D0);
  }

  return result;
}

unint64_t sub_1ABBC3D7C()
{
  result = qword_1EB4D42E0;
  if (!qword_1EB4D42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D42E0);
  }

  return result;
}

unint64_t sub_1ABBC3E00()
{
  result = qword_1EB4D42F8;
  if (!qword_1EB4D42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D42F8);
  }

  return result;
}

unint64_t sub_1ABBC3E54()
{
  result = qword_1EB4D4300;
  if (!qword_1EB4D4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4300);
  }

  return result;
}

unint64_t sub_1ABBC3EA8()
{
  result = qword_1EB4D4308;
  if (!qword_1EB4D4308)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4308);
  }

  return result;
}

unint64_t sub_1ABBC3F24()
{
  result = qword_1EB4D4310;
  if (!qword_1EB4D4310)
  {
    sub_1ABAE2850(&qword_1EB4D1370, &qword_1ABF42B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4310);
  }

  return result;
}

unint64_t sub_1ABBC3FA0()
{
  result = qword_1ED870660;
  if (!qword_1ED870660)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870660);
  }

  return result;
}

unint64_t sub_1ABBC401C()
{
  result = qword_1EB4D4320;
  if (!qword_1EB4D4320)
  {
    sub_1ABAE2850(&qword_1EB4D1370, &qword_1ABF42B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4320);
  }

  return result;
}

unint64_t sub_1ABBC4098()
{
  result = qword_1EB4D4330;
  if (!qword_1EB4D4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4330);
  }

  return result;
}

unint64_t sub_1ABBC40EC()
{
  result = qword_1EB4D4338;
  if (!qword_1EB4D4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4338);
  }

  return result;
}

unint64_t sub_1ABBC4140()
{
  result = qword_1EB4D4348;
  if (!qword_1EB4D4348)
  {
    sub_1ABAE2850(&qword_1EB4D4340, &qword_1ABF42B38);
    sub_1ABBC41C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4348);
  }

  return result;
}

unint64_t sub_1ABBC41C4()
{
  result = qword_1EB4D4350;
  if (!qword_1EB4D4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4350);
  }

  return result;
}

unint64_t sub_1ABBC4218()
{
  result = qword_1EB4D4360;
  if (!qword_1EB4D4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4360);
  }

  return result;
}

unint64_t sub_1ABBC426C()
{
  result = qword_1EB4D4368;
  if (!qword_1EB4D4368)
  {
    sub_1ABAE2850(&qword_1EB4D4340, &qword_1ABF42B38);
    sub_1ABBC42F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4368);
  }

  return result;
}

unint64_t sub_1ABBC42F0()
{
  result = qword_1EB4D4370;
  if (!qword_1EB4D4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4370);
  }

  return result;
}

unint64_t sub_1ABBC43AC()
{
  result = qword_1EB4D4380;
  if (!qword_1EB4D4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4380);
  }

  return result;
}

unint64_t sub_1ABBC4400()
{
  result = qword_1EB4D4388;
  if (!qword_1EB4D4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4388);
  }

  return result;
}

unint64_t sub_1ABBC4454()
{
  result = qword_1EB4D4390;
  if (!qword_1EB4D4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4390);
  }

  return result;
}

unint64_t sub_1ABBC44A8()
{
  result = qword_1EB4D43A0;
  if (!qword_1EB4D43A0)
  {
    sub_1ABAE2850(&qword_1EB4D4398, &qword_1ABF42B50);
    sub_1ABBC452C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43A0);
  }

  return result;
}

unint64_t sub_1ABBC452C()
{
  result = qword_1EB4D43A8;
  if (!qword_1EB4D43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43A8);
  }

  return result;
}

unint64_t sub_1ABBC4580()
{
  result = qword_1EB4D43B8;
  if (!qword_1EB4D43B8)
  {
    sub_1ABAE2850(&qword_1EB4D43B0, &qword_1ABF42B58);
    sub_1ABBC40EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43B8);
  }

  return result;
}

unint64_t sub_1ABBC4604()
{
  result = qword_1EB4D43C8;
  if (!qword_1EB4D43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43C8);
  }

  return result;
}

unint64_t sub_1ABBC4658()
{
  result = qword_1EB4D43D0;
  if (!qword_1EB4D43D0)
  {
    sub_1ABAE2850(&qword_1EB4D4398, &qword_1ABF42B50);
    sub_1ABBC46DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43D0);
  }

  return result;
}

unint64_t sub_1ABBC46DC()
{
  result = qword_1EB4D43D8;
  if (!qword_1EB4D43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43D8);
  }

  return result;
}

unint64_t sub_1ABBC4730()
{
  result = qword_1EB4D43E0;
  if (!qword_1EB4D43E0)
  {
    sub_1ABAE2850(&qword_1EB4D43B0, &qword_1ABF42B58);
    sub_1ABBC4218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43E0);
  }

  return result;
}

unint64_t sub_1ABBC481C()
{
  result = qword_1EB4D43F0;
  if (!qword_1EB4D43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43F0);
  }

  return result;
}

unint64_t sub_1ABBC4870()
{
  result = qword_1EB4D43F8;
  if (!qword_1EB4D43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43F8);
  }

  return result;
}

unint64_t sub_1ABBC48C4()
{
  result = qword_1EB4D4408;
  if (!qword_1EB4D4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4408);
  }

  return result;
}

unint64_t sub_1ABBC4918()
{
  result = qword_1EB4D4418;
  if (!qword_1EB4D4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4418);
  }

  return result;
}

uint64_t sub_1ABBC496C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D4428, &qword_1ABF42B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABBC49E0()
{
  result = qword_1EB4D4430;
  if (!qword_1EB4D4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4430);
  }

  return result;
}

unint64_t sub_1ABBC4A38()
{
  result = qword_1EB4D4438;
  if (!qword_1EB4D4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4438);
  }

  return result;
}

unint64_t sub_1ABBC4A90()
{
  result = qword_1EB4D4440;
  if (!qword_1EB4D4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4440);
  }

  return result;
}

unint64_t sub_1ABBC4AE8()
{
  result = qword_1EB4D4448;
  if (!qword_1EB4D4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4448);
  }

  return result;
}

unint64_t sub_1ABBC4B40()
{
  result = qword_1EB4D4450;
  if (!qword_1EB4D4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4450);
  }

  return result;
}

unint64_t sub_1ABBC4B98()
{
  result = qword_1EB4D4458;
  if (!qword_1EB4D4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4458);
  }

  return result;
}

unint64_t sub_1ABBC4BF0()
{
  result = qword_1EB4D4460;
  if (!qword_1EB4D4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4460);
  }

  return result;
}

unint64_t sub_1ABBC4C48()
{
  result = qword_1EB4D4468;
  if (!qword_1EB4D4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4468);
  }

  return result;
}

unint64_t sub_1ABBC4CA0()
{
  result = qword_1EB4D4470;
  if (!qword_1EB4D4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4470);
  }

  return result;
}

uint64_t sub_1ABBC4CF4(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_1ABBC4D10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && *(a1 + 17))
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 9)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBC4D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABBC4D94(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PreprocessingStep(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1ABBC4EA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ABBC4EB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 35))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 34);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBC4EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 34) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABBC4F6C(uint64_t a1)
{
  v1 = *(a1 + 34);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBC4F88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 123))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1ABBC4FC8(uint64_t result, int a2, int a3)
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
    *(result + 122) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 123) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 123) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC5054(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBC50A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1ABBC5138(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_1ABBC5178(uint64_t result, int a2, int a3)
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
      *(result + 104) = (a2 - 1);
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

uint64_t sub_1ABBC51E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABBC5208(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 325))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_1ABBC5248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 324) = 0;
    *(result + 320) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 325) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 325) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC535C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 1160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 1120);
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

uint64_t sub_1ABBC539C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1144) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1160) = 1;
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
      *(result + 1120) = (a2 - 1);
      return result;
    }

    *(result + 1160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC551C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_1ABBC555C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC55C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1ABBC5608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC56E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 3);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABBC5768(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityResolutionSession.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RerankedEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RerankedEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityResolutionRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EntityResolutionRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABBC5C18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 5);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABBC5C9C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABBC5D88(_BYTE *result, int a2, int a3)
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

uint64_t sub_1ABBC5E44(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 2);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABBC5EC8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBC5F98()
{
  result = qword_1EB4D4478;
  if (!qword_1EB4D4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4478);
  }

  return result;
}

unint64_t sub_1ABBC5FF0()
{
  result = qword_1EB4D4480;
  if (!qword_1EB4D4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4480);
  }

  return result;
}

unint64_t sub_1ABBC6048()
{
  result = qword_1EB4D4488;
  if (!qword_1EB4D4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4488);
  }

  return result;
}

unint64_t sub_1ABBC60A0()
{
  result = qword_1EB4D4490;
  if (!qword_1EB4D4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4490);
  }

  return result;
}

unint64_t sub_1ABBC60F8()
{
  result = qword_1EB4D4498;
  if (!qword_1EB4D4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4498);
  }

  return result;
}

unint64_t sub_1ABBC6150()
{
  result = qword_1EB4D44A0;
  if (!qword_1EB4D44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44A0);
  }

  return result;
}

unint64_t sub_1ABBC61A8()
{
  result = qword_1EB4D44A8;
  if (!qword_1EB4D44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44A8);
  }

  return result;
}

unint64_t sub_1ABBC6200()
{
  result = qword_1EB4D44B0;
  if (!qword_1EB4D44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44B0);
  }

  return result;
}

unint64_t sub_1ABBC6258()
{
  result = qword_1EB4D44B8;
  if (!qword_1EB4D44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44B8);
  }

  return result;
}

unint64_t sub_1ABBC62B0()
{
  result = qword_1EB4D44C0;
  if (!qword_1EB4D44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44C0);
  }

  return result;
}

unint64_t sub_1ABBC6308()
{
  result = qword_1EB4D44C8;
  if (!qword_1EB4D44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44C8);
  }

  return result;
}

unint64_t sub_1ABBC6360()
{
  result = qword_1EB4D44D0;
  if (!qword_1EB4D44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44D0);
  }

  return result;
}

unint64_t sub_1ABBC63B8()
{
  result = qword_1EB4D44D8;
  if (!qword_1EB4D44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44D8);
  }

  return result;
}

unint64_t sub_1ABBC6410()
{
  result = qword_1EB4D44E0;
  if (!qword_1EB4D44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44E0);
  }

  return result;
}

unint64_t sub_1ABBC6468()
{
  result = qword_1EB4D44E8;
  if (!qword_1EB4D44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44E8);
  }

  return result;
}

unint64_t sub_1ABBC64C0()
{
  result = qword_1EB4D44F0;
  if (!qword_1EB4D44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44F0);
  }

  return result;
}

unint64_t sub_1ABBC6518()
{
  result = qword_1EB4D44F8;
  if (!qword_1EB4D44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44F8);
  }

  return result;
}

unint64_t sub_1ABBC6570()
{
  result = qword_1EB4D4500;
  if (!qword_1EB4D4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4500);
  }

  return result;
}

unint64_t sub_1ABBC65C8()
{
  result = qword_1EB4D4508;
  if (!qword_1EB4D4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4508);
  }

  return result;
}

unint64_t sub_1ABBC6620()
{
  result = qword_1EB4D4510;
  if (!qword_1EB4D4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4510);
  }

  return result;
}

unint64_t sub_1ABBC6678()
{
  result = qword_1EB4D4518;
  if (!qword_1EB4D4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4518);
  }

  return result;
}

unint64_t sub_1ABBC66D0()
{
  result = qword_1EB4D4520;
  if (!qword_1EB4D4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4520);
  }

  return result;
}

unint64_t sub_1ABBC6728()
{
  result = qword_1EB4D4528;
  if (!qword_1EB4D4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4528);
  }

  return result;
}

unint64_t sub_1ABBC6780()
{
  result = qword_1EB4D4530;
  if (!qword_1EB4D4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4530);
  }

  return result;
}

unint64_t sub_1ABBC67D8()
{
  result = qword_1EB4D4538;
  if (!qword_1EB4D4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4538);
  }

  return result;
}

unint64_t sub_1ABBC6830()
{
  result = qword_1EB4D4540;
  if (!qword_1EB4D4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4540);
  }

  return result;
}

unint64_t sub_1ABBC6888()
{
  result = qword_1EB4D4548;
  if (!qword_1EB4D4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4548);
  }

  return result;
}

unint64_t sub_1ABBC68E0()
{
  result = qword_1EB4D4550;
  if (!qword_1EB4D4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4550);
  }

  return result;
}

unint64_t sub_1ABBC6938()
{
  result = qword_1EB4D4558;
  if (!qword_1EB4D4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4558);
  }

  return result;
}

unint64_t sub_1ABBC6990()
{
  result = qword_1EB4D4560;
  if (!qword_1EB4D4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4560);
  }

  return result;
}

unint64_t sub_1ABBC69E8()
{
  result = qword_1EB4D4568;
  if (!qword_1EB4D4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4568);
  }

  return result;
}

unint64_t sub_1ABBC6A40()
{
  result = qword_1EB4D4570;
  if (!qword_1EB4D4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4570);
  }

  return result;
}

unint64_t sub_1ABBC6A98()
{
  result = qword_1EB4D4578;
  if (!qword_1EB4D4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4578);
  }

  return result;
}

unint64_t sub_1ABBC6AF0()
{
  result = qword_1EB4D4580;
  if (!qword_1EB4D4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4580);
  }

  return result;
}

unint64_t sub_1ABBC6B48()
{
  result = qword_1EB4D4588;
  if (!qword_1EB4D4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4588);
  }

  return result;
}

unint64_t sub_1ABBC6BA0()
{
  result = qword_1EB4D4590;
  if (!qword_1EB4D4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4590);
  }

  return result;
}

unint64_t sub_1ABBC6BF8()
{
  result = qword_1EB4D4598;
  if (!qword_1EB4D4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4598);
  }

  return result;
}

unint64_t sub_1ABBC6C50()
{
  result = qword_1EB4D45A0;
  if (!qword_1EB4D45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45A0);
  }

  return result;
}

unint64_t sub_1ABBC6CA8()
{
  result = qword_1EB4D45A8;
  if (!qword_1EB4D45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45A8);
  }

  return result;
}

unint64_t sub_1ABBC6D00()
{
  result = qword_1EB4D45B0;
  if (!qword_1EB4D45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45B0);
  }

  return result;
}

unint64_t sub_1ABBC6D58()
{
  result = qword_1EB4D45B8;
  if (!qword_1EB4D45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45B8);
  }

  return result;
}

unint64_t sub_1ABBC6DB0()
{
  result = qword_1EB4D45C0;
  if (!qword_1EB4D45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45C0);
  }

  return result;
}

unint64_t sub_1ABBC6E08()
{
  result = qword_1EB4D45C8;
  if (!qword_1EB4D45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45C8);
  }

  return result;
}

unint64_t sub_1ABBC6E60()
{
  result = qword_1EB4D45D0;
  if (!qword_1EB4D45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45D0);
  }

  return result;
}

unint64_t sub_1ABBC6EB8()
{
  result = qword_1EB4D45D8;
  if (!qword_1EB4D45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45D8);
  }

  return result;
}

unint64_t sub_1ABBC6F0C()
{
  result = qword_1EB4D45E0;
  if (!qword_1EB4D45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45E0);
  }

  return result;
}

unint64_t sub_1ABBC6F60()
{
  result = qword_1EB4D45E8;
  if (!qword_1EB4D45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45E8);
  }

  return result;
}

unint64_t sub_1ABBC6FB4()
{
  result = qword_1EB4D45F0;
  if (!qword_1EB4D45F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45F0);
  }

  return result;
}

unint64_t sub_1ABBC7008()
{
  result = qword_1EB4D45F8;
  if (!qword_1EB4D45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45F8);
  }

  return result;
}

unint64_t sub_1ABBC705C()
{
  result = qword_1ED871280;
  if (!qword_1ED871280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871280);
  }

  return result;
}

unint64_t sub_1ABBC70B0()
{
  result = qword_1EB4D4608;
  if (!qword_1EB4D4608)
  {
    sub_1ABAE2850(&qword_1EB4D4600, &unk_1ABF44F58);
    sub_1ABBC7134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4608);
  }

  return result;
}

unint64_t sub_1ABBC7134()
{
  result = qword_1EB4D4610;
  if (!qword_1EB4D4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4610);
  }

  return result;
}

uint64_t sub_1ABBC7188(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1ABB32D94(v5, v7) & 1;
}

__n128 EntityResolutionRankingService.TextResolutionOptions.init(typeFilter:candidateConstraints:mode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 34);
  v8 = *a3;
  v9 = *(a3 + 8);
  *a4 = a1;
  sub_1ABB3E374(0, 0, 0, 0, 16711680);
  result = *a2;
  *(a4 + 24) = *(a2 + 16);
  *(a4 + 8) = result;
  *(a4 + 42) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  return result;
}

uint64_t EntityResolutionRankingService.TextResolutionOptions.typeFilter.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EntityResolutionRankingService.TextResolutionOptions.candidateConstraints.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 42);
  v7 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 34) = v6;
  *(a1 + 32) = v7;
  return sub_1ABBC7378(v2, v3, v4, v5, v7 | (v6 << 16));
}

uint64_t sub_1ABBC7378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1ABBC738C(a1, a2, a3, a4, a5, SBYTE2(a5));
  }

  return a1;
}

uint64_t sub_1ABBC738C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      goto LABEL_6;
    case 1:
    case 2:
LABEL_6:

      break;
    case 3:
    case 4:

      break;
    default:
      return v7;
  }

  return v7;
}

__n128 EntityResolutionRankingService.TextResolutionOptions.candidateConstraints.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);
  v6 = *(v1 + 40);
  v5 = v1 + 40;
  sub_1ABB3E374(*(v5 - 32), *(v5 - 24), *(v5 - 16), *(v5 - 8), v6 | (*(v5 + 2) << 16));
  result = *a1;
  v8 = *(a1 + 16);
  *(v5 - 32) = *a1;
  *(v5 - 16) = v8;
  *(v5 + 2) = v4;
  *v5 = v3;
  return result;
}

void EntityResolutionRankingService.TextResolutionOptions.mode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t EntityResolutionRankingService.TextResolutionOptions.mode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t UnstructuredText.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UnstructuredText.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TextMention.init(span:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t TextMention.entityTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t TextMention.span.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1ABBC7670(uint64_t a1)
{
  v1 = *(a1 + 34);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1ABBC7684(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1ABBC76A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBC76F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ABBC7770(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBC77C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 EntityResolutionRankingService.ImageResolutionOptions.init(typeFilter:candidateConstraints:mode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 34);
  v8 = *a3;
  v9 = *(a3 + 8);
  *a4 = a1;
  sub_1ABB3E374(0, 0, 0, 0, 16711680);
  result = *a2;
  *(a4 + 24) = *(a2 + 16);
  *(a4 + 8) = result;
  *(a4 + 42) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  return result;
}

uint64_t EntityResolutionRankingService.ImageResolutionOptions.typeFilter.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EntityResolutionRankingService.ImageResolutionOptions.candidateConstraints.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 42);
  v7 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 34) = v6;
  *(a1 + 32) = v7;
  return sub_1ABBC7378(v2, v3, v4, v5, v7 | (v6 << 16));
}

__n128 EntityResolutionRankingService.ImageResolutionOptions.candidateConstraints.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);
  v6 = *(v1 + 40);
  v5 = v1 + 40;
  sub_1ABB3E374(*(v5 - 32), *(v5 - 24), *(v5 - 16), *(v5 - 8), v6 | (*(v5 + 2) << 16));
  result = *a1;
  v8 = *(a1 + 16);
  *(v5 - 32) = *a1;
  *(v5 - 16) = v8;
  *(v5 + 2) = v4;
  *v5 = v3;
  return result;
}

void EntityResolutionRankingService.ImageResolutionOptions.mode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t EntityResolutionRankingService.ImageResolutionOptions.mode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_1ABBC7A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstructuredImage.Asset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABBC7B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstructuredImage.Asset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABBC7C18(uint64_t a1)
{
  result = type metadata accessor for UnstructuredImage.Asset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1ABBC7C8C(uint64_t a1)
{
  type metadata accessor for CGImage(319);
  if (v1 <= 0x3F)
  {
    sub_1ABF21CF4();
    if (v2 <= 0x3F)
    {
      sub_1ABF21F04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

__n128 EntityResolutionRankingService.RankingOptions.init(rankingType:typeFilter:candidateConstraints:mode:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a3 + 32);
  v10 = *(a3 + 34);
  v11 = *a4;
  v12 = *(a4 + 8);
  *a5 = a2;
  sub_1ABB3E374(0, 0, 0, 0, 16711680);
  result = *a3;
  *(a5 + 24) = *(a3 + 16);
  *(a5 + 8) = result;
  *(a5 + 42) = v10;
  *(a5 + 40) = v9;
  *(a5 + 48) = v7;
  *(a5 + 56) = v8;
  *(a5 + 64) = v11;
  *(a5 + 72) = v12;
  return result;
}

uint64_t sub_1ABBC7DF8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48) + 40 * result;
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  LOBYTE(v5) = *(v5 + 32);
  *a4 = v7;
  *(a4 + 8) = v6;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v5;
}

uint64_t sub_1ABBC7E94@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + 8 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t EntityResolutionRankingService.RankedEntities.ScoredEntity.__allocating_init(id:score:explanation:inferenceEventId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a5;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = 1;
  return result;
}

id sub_1ABBC7F58(uint64_t a1)
{
  v2 = v1;
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v28 = OBJC_IVAR___GDSwiftViewService_accessRequester;
  v27 = OBJC_IVAR___GDSwiftViewService_databaseCache;
  v4 = (a1 + 40);
  if (v3)
  {
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v2 + v28);

      v8 = sub_1ABF23BD4();
      v31[0] = 0;
      v9 = [v7 requestAssertionForViewName:v8 error:v31];

      v10 = v31[0];
      if (v9)
      {
        v11 = v4;
        v12 = v3;
        v13 = v2;
        v14 = *(v2 + v27);
        v16 = v14[5];
        v15 = v14[6];
        sub_1ABA93E20(v14 + 2, v16);
        v29 = *(v15 + 8);
        v17 = v10;
        v29(v9, v16, v15);
        v18 = v30;
        if (!v30)
        {

          return v9;
        }

        swift_unknownObjectRelease();
        v30 = 0;
        v2 = v13;
        v3 = v12;
        v4 = v11;
      }

      else
      {
        v19 = v31[0];
        v18 = sub_1ABF21BE4();

        swift_willThrow();
        v30 = 0;
      }

      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v20 = sub_1ABF237F4();
      sub_1ABA7AA24(v20, qword_1ED871B40);

      v21 = sub_1ABF237D4();
      v22 = sub_1ABF24664();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31[0] = v24;
        *v23 = 136315138;
        v25 = sub_1ABADD6D8(v5, v6, v31);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_1ABA78000, v21, v22, "EntityResolutionRanking: view assertion failure for %s", v23, 0xCu);
        sub_1ABA84B54(v24);
        MEMORY[0x1AC5AB8B0](v24, -1, -1);
        MEMORY[0x1AC5AB8B0](v23, -1, -1);
      }

      else
      {
      }

      if (!--v3)
      {
        return swift_willThrow();
      }

      v4 += 2;
    }
  }

  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

uint64_t EntityResolutionRankingService.__allocating_init(config:viewService:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  EntityResolutionRankingService.init(config:viewService:)(v3, a2);
  return v3;
}

void *EntityResolutionRankingService.init(config:viewService:)(uint64_t a1, void *a2)
{
  v5 = sub_1ABBC7F58(&unk_1F2090D30);
  if (v3)
  {

    type metadata accessor for EntityResolutionRankingService();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v10 = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v2[3] = sub_1ABB948C8(v8, v9, v10);
    v2[4] = v12;
    v2[5] = a2;
    v2[6] = a2;
    v13 = objc_allocWithZone(type metadata accessor for FeedbackService());
    v14 = a2;
    v15 = [v13 init];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v2[2] = v15;
  }

  return v2;
}

uint64_t sub_1ABBC84B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v9 = *a2;
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  if (*(a2 + 42) != 255)
  {
    v28 = *(a2 + 64);
    v29 = *(a2 + 72);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v14 = sub_1ABF237F4();
    sub_1ABA7AA24(v14, qword_1ED871B40);
    v15 = sub_1ABF237D4();
    v16 = sub_1ABF24664();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = a3;
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = v18;
      a3 = v17;
      v5 = v4;
      MEMORY[0x1AC5AB8B0](v19, -1, -1);
    }

    v13 = v29;
    v12 = v28;
  }

  if (v11)
  {
    if (v11 == 1)
    {
      if (*(v10 + 16) != 1)
      {
        goto LABEL_34;
      }

      v20 = sub_1ABBC7DB8(v10);
      if ((v22 & 1) == 0)
      {
        if (*(v10 + 36) == v21)
        {
          if (v20 != 1 << *(v10 + 32))
          {
            sub_1ABBC7E94(v20, v21, v10, &v30);
            v23 = *(v6 + 40);
            if (v23)
            {
              result = sub_1ABE3D5AC(0, &v30, v23);
              if (v5)
              {
                return result;
              }

              goto LABEL_21;
            }

            sub_1ABBD2A7C();
LABEL_36:
            result = sub_1ABF24CD4();
            __break(1u);
            return result;
          }

LABEL_34:
          sub_1ABBD2A7C();
          goto LABEL_36;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_34;
    }

    if (!v10)
    {
      if (v13)
      {
        v27 = 0;
      }

      else
      {
        v27 = v12;
      }

      v26 = *(v6 + 24);
      v25 = 1;
      goto LABEL_30;
    }

    v25 = 2;
  }

  else
  {
    v25 = v10 & 1;
  }

  v26 = *(v6 + 24);
  if (a1)
  {
    LOBYTE(v30) = v25;
    result = sub_1ABB95CC8(a1, &v30);
    if (v5)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v13)
  {
    v27 = 0;
  }

  else
  {
    v27 = v12;
  }

LABEL_30:
  LOBYTE(v30) = v25;
  result = sub_1ABB94F98(v9, v27, v13, &v30, v26);
  if (!v5)
  {
LABEL_21:
    *a3 = result;
    a3[1] = 0;
  }

  return result;
}

char *sub_1ABBC87B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *a2;
    v7 = *a1;
    v6 = v4;
    return sub_1ABE3E098(&v7, &v6, v3);
  }

  else
  {
    sub_1ABBD2A7C();
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABBC883C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA933E4(sub_1ABBC8854);
}

uint64_t sub_1ABBC8854()
{
  sub_1ABB14958();
  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABBC88D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1ABA933E4(sub_1ABBC88F8);
}

void sub_1ABBC88F8(uint64_t a1)
{
  v3 = v1[2];
  if (*(v3 + 16))
  {
    v4 = v3 + 32;
    type metadata accessor for EntityResolutionRankingDirectFeedback();
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v4 += 8;
      sub_1ABAA4D8C();
      v6 = swift_allocObject();
      if ((sub_1ABAA12BC(v6) & 1) == 0)
      {
        sub_1ABA8E1CC();
        v5 = v10;
      }

      sub_1ABAA225C();
      if (v8)
      {
        sub_1ABAA5FE8(v7);
        v5 = v11;
      }

      sub_1ABA9492C();
    }

    while (!v9);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v12 = v1[3];
  if (*(v12 + 16))
  {
    v13 = v12 + 32;
    type metadata accessor for EntityResolutionRankingDirectFeedback();
    do
    {
      v13 += 8;
      sub_1ABAA4D8C();
      v14 = swift_allocObject();
      if ((sub_1ABAA12BC(v14) & 1) == 0)
      {
        sub_1ABA8E1CC();
        v5 = v16;
      }

      sub_1ABAA225C();
      if (v8)
      {
        sub_1ABAA5FE8(v15);
        v5 = v17;
      }

      sub_1ABA9492C();
    }

    while (!v9);
  }

  v18 = v1[4];
  if (*(v18 + 16))
  {
    v19 = v18 + 32;
    type metadata accessor for EntityResolutionRankingDirectFeedback();
    do
    {
      v19 += 8;
      sub_1ABAA4D8C();
      v20 = swift_allocObject();
      if ((sub_1ABAA12BC(v20) & 1) == 0)
      {
        sub_1ABA8E1CC();
        v5 = v22;
      }

      sub_1ABAA225C();
      if (v8)
      {
        sub_1ABAA5FE8(v21);
        v5 = v23;
      }

      sub_1ABA9492C();
    }

    while (!v9);
  }

  v24 = v1[5];
  if (*(v24 + 16))
  {
    v25 = v24 + 32;
    type metadata accessor for EntityResolutionRankingDirectFeedback();
    do
    {
      v25 += 8;
      sub_1ABAA4D8C();
      v26 = swift_allocObject();
      if ((sub_1ABAA12BC(v26) & 1) == 0)
      {
        sub_1ABA8E1CC();
        v5 = v28;
      }

      sub_1ABAA225C();
      if (v8)
      {
        sub_1ABAA5FE8(v27);
        v5 = v29;
      }

      sub_1ABA9492C();
    }

    while (!v9);
  }

  else
  {
    v2 = *(v5 + 16);
  }

  v30 = 0;
  v31 = v5 + 40;
  while (v2 != v30)
  {
    if (v30 >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    sub_1ABB14BE0();

    ++v30;
    v31 += 16;
  }

  sub_1ABA7BBE0();

  v32();
}

uint64_t EntityResolutionRankingDirectFeedback.__allocating_init(kind:)(_BYTE *a1)
{
  sub_1ABAA4D8C();
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

id *EntityResolutionRankingService.deinit()
{

  return v0;
}

uint64_t EntityResolutionRankingService.__deallocating_deinit()
{
  EntityResolutionRankingService.deinit();
  sub_1ABAB10A4();

  return swift_deallocClassInstance();
}

uint64_t static EntityResolutionRankingService.CandidateConstraint.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 34);
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 16);
  v13 = *(a2 + 34);
  v102[0] = *a1;
  v102[1] = v2;
  v102[2] = v5;
  v102[3] = v4;
  v103 = v6;
  v104 = v7;
  v105 = v9;
  v106 = v8;
  v107 = v11;
  v108 = v10;
  v109 = v12;
  v110 = v13;
  switch(v7)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_19;
      }

      v65 = v6;
      v92 = sub_1ABB4F410();
      v66 = sub_1ABA7C054();
      sub_1ABBC738C(v66, v67, v68, v69, v12, 1);
      v20 = sub_1ABA809A0();
      v24 = v65;
      v25 = 1;
      goto LABEL_18;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_19;
      }

      v46 = v6;
      v92 = sub_1ABB4F410();
      v47 = sub_1ABA7C054();
      sub_1ABBC738C(v47, v48, v49, v50, v12, 2);
      v20 = sub_1ABA809A0();
      v24 = v46;
      v25 = 2;
      goto LABEL_18;
    case 3:
      if (v13 != 3)
      {
        goto LABEL_19;
      }

      v93 = *(v3 + 56);
      v91 = *(v3 + 72);
      v90 = *(v3 + 88);
      v89 = *(v3 + 90);
      v51 = *(v3 + 50);
      v52 = *(v3 + 48);
      v53 = *(v9 + 48);
      v54 = *(v9 + 50);
      v87 = *(v9 + 72);
      v88 = *(v9 + 56);
      v30 = *(v9 + 88);
      v86 = *(v9 + 90);
      v55 = *(v3 + 32);
      v98 = *(v3 + 16);
      v99 = v55;
      v100 = v52;
      v101 = v51;
      v56 = *(v9 + 32);
      v94 = *(v9 + 16);
      v95 = v56;
      v96 = v53;
      v97 = v54;
      v57 = sub_1ABA7C054();
      v59 = v58;
      sub_1ABBC738C(v57, v60, v61, v62, v12, v63);
      v40 = sub_1ABA809A0();
      v44 = v59;
      v45 = 3;
      goto LABEL_14;
    case 4:
      if (v13 != 4)
      {
        goto LABEL_19;
      }

      v93 = *(v3 + 56);
      v91 = *(v3 + 72);
      v90 = *(v3 + 88);
      v89 = *(v3 + 90);
      v26 = *(v3 + 50);
      v27 = *(v3 + 48);
      v28 = *(v9 + 48);
      v29 = *(v9 + 50);
      v87 = *(v9 + 72);
      v88 = *(v9 + 56);
      v30 = *(v9 + 88);
      v86 = *(v9 + 90);
      v31 = *(v3 + 32);
      v98 = *(v3 + 16);
      v99 = v31;
      v100 = v27;
      v101 = v26;
      v32 = *(v9 + 32);
      v94 = *(v9 + 16);
      v95 = v32;
      v96 = v28;
      v97 = v29;
      v33 = sub_1ABA7C054();
      v35 = v34;
      sub_1ABBC738C(v33, v36, v37, v38, v12, v39);
      v40 = sub_1ABA809A0();
      v44 = v35;
      v45 = 4;
LABEL_14:
      sub_1ABBC738C(v40, v41, v42, v43, v44, v45);
      if ((static EntityResolutionRankingService.CandidateConstraint.== infix(_:_:)(&v98, &v94) & 1) == 0)
      {
        goto LABEL_20;
      }

      v98 = v93;
      v99 = v91;
      v100 = v90;
      v101 = v89;
      v94 = v88;
      v95 = v87;
      v96 = v30;
      v97 = v86;
      v64 = static EntityResolutionRankingService.CandidateConstraint.== infix(_:_:)(&v98, &v94);
      sub_1ABBCECB8(v102);
      return v64 & 1;
    default:
      if (v13)
      {
LABEL_19:
        v71 = sub_1ABA7C054();
        v73 = v72;
        sub_1ABBC738C(v71, v74, v75, v76, v12, v77);
        v78 = sub_1ABA809A0();
        sub_1ABBC738C(v78, v79, v80, v81, v73, v7);
LABEL_20:
        sub_1ABBCECB8(v102);
        v64 = 0;
        return v64 & 1;
      }

      v14 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_1ABBC738C(v3, v2, v11, v10, v12, 0);
        v82 = sub_1ABA809A0();
        sub_1ABBC738C(v82, v83, v84, v85, v14, 0);
        sub_1ABBCECB8(v102);
        v64 = 1;
        return v64 & 1;
      }

      v92 = sub_1ABF25054();
      v16 = sub_1ABA7C054();
      sub_1ABBC738C(v16, v17, v18, v19, v12, 0);
      v20 = sub_1ABA809A0();
      v24 = v14;
      v25 = 0;
LABEL_18:
      sub_1ABBC738C(v20, v21, v22, v23, v24, v25);
      sub_1ABBCECB8(v102);
      return v92 & 1;
  }
}

uint64_t sub_1ABBC8F84(char a1)
{
  result = 0x6964657250736168;
  switch(a1)
  {
    case 1:
      result = 0x6564756C637865;
      break;
    case 2:
      result = 0x746573627573;
      break;
    case 3:
      result = 6581857;
      break;
    case 4:
      result = 29295;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBC9010(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABA8CCD8(12383, 0xE200000000000000, a1) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    sub_1ABA8CCD8(12639, 0xE200000000000000, a1);
    sub_1ABA8B8B8();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABBC90B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1ABA8CCD8(0x7365697469746E65, 0xE800000000000000, a1);
    sub_1ABA8B8B8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBC9138(uint64_t a1)
{
  v2 = sub_1ABBCEE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC9174(uint64_t a1)
{
  v2 = sub_1ABBCEE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}