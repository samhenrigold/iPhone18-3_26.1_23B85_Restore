void sub_22C88C544()
{
  sub_22C36BA7C();
  sub_22C389358();
  sub_22C90963C();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C377D60();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0E78, &qword_22C92B538);
  v4 = sub_22C375F14();
  sub_22C892394(v4, v5);
  sub_22C892438();
  if (!v6)
  {
LABEL_28:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v7 = 0;
  v8 = v0 + 64;
  sub_22C36AD3C();
  sub_22C892168();
  if (!v2)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v8 + 8 * v7))
      {
        sub_22C375A38();
        v2 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v31)
    {
      sub_22C37F8D8();
      if (v26 != v27)
      {
        sub_22C36EEAC(v25);
      }

      else
      {
        v28 = sub_22C3856F8();
        sub_22C88FAFC(v28, v29, v8);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_22C70CF34();
LABEL_9:
    sub_22C37462C();
    if (v12)
    {
      v13 = sub_22C3863E8();
      v14(v13);
      sub_22C892244();
    }

    else
    {
      v15 = sub_22C3863E8();
      v16(v15);
      sub_22C387DA8();
    }

    sub_22C891E48(&qword_27D9BC850, MEMORY[0x277D72E18], MEMORY[0x277D72E20]);
    v17 = sub_22C37DA2C();
    sub_22C892488(v17, v18, v19);
    sub_22C36C03C();
    sub_22C37AC88();
    if (v20)
    {
      break;
    }

    sub_22C38AC50();
LABEL_20:
    sub_22C376B08();
    sub_22C892338(v22);
    v23 = sub_22C37C034();
    v24(v23);
    sub_22C892364();
    sub_22C892158();
    v0 = v30;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v20)
    {
      if (v21)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v20)
    {
      sub_22C37F630();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_22C88C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v25;
  a20 = v26;
  v27 = sub_22C389358();
  v28 = type metadata accessor for PromptTreeIdentifier.Label(v27);
  v29 = sub_22C3699B8(v28);
  v59 = v30;
  MEMORY[0x28223BE20](v29);
  sub_22C377D60();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0E68, &unk_22C92B518);
  v31 = sub_22C375F14();
  sub_22C38B2D4(v31, v32);
  v33 = v21;
  sub_22C892438();
  if (!v34)
  {
LABEL_28:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v58 = v21;
  v35 = 0;
  v36 = v21 + 8;
  sub_22C36AD3C();
  v39 = v38 & v37;
  sub_22C5E7630();
  if (!v39)
  {
LABEL_4:
    v41 = v35;
    while (1)
    {
      v35 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v35 >= v20)
      {
        break;
      }

      ++v41;
      if (v36[v35])
      {
        sub_22C375A38();
        v39 = v43 & v42;
        goto LABEL_9;
      }
    }

    if (v22)
    {
      sub_22C36ED64();
      if (v53 != v54)
      {
        sub_22C386A8C();
        *v36 = v55;
      }

      else
      {
        v56 = sub_22C3856F8();
        sub_22C88FAFC(v56, v57, v36);
      }

      v33[2] = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_22C382D5C();
LABEL_9:
    v44 = v40 | (v35 << 6);
    v45 = v33[6] + *(v59 + 72) * v44;
    if (v22)
    {
      sub_22C892044(v45, v24);
      v46 = v33[7];
      v47 = v24;
      v48 = *(v46 + 8 * v44);
    }

    else
    {
      sub_22C891FEC(v45, v24);
      v49 = v33[7];
      v47 = v24;
      v48 = *(v49 + 8 * v44);
    }

    sub_22C892544();
    sub_22C48640C();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v50)
    {
      break;
    }

    sub_22C38AC50();
LABEL_20:
    *(v23 + 64 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (&a19 + 104);
    sub_22C892320();
    sub_22C892044(v47, v52);
    *(*(v23 + 56) + 8 * v60) = v48;
    v24 = v47;
    sub_22C892158();
    v33 = v58;
    if (!v39)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v50)
    {
      if (v51)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v50)
    {
      sub_22C37F630();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_22C88CA14()
{
  sub_22C36BA7C();
  sub_22C389358();
  v4 = sub_22C902D0C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v46 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0980, &unk_22C929500);
  v10 = sub_22C375F14();
  v42 = v2;
  v47 = sub_22C38B2D4(v10, v11);
  if (!*(v1 + 16))
  {
LABEL_27:

LABEL_28:
    *v0 = v47;
    sub_22C36CC48();
    return;
  }

  v39 = v0;
  v12 = 0;
  v13 = (v1 + 64);
  sub_22C36AD3C();
  v17 = (v16 + 63) >> 6;
  v40 = v1;
  v41 = v6;
  v43 = (v6 + 32);
  v18 = v47 + 64;
  if ((v15 & v14) == 0)
  {
LABEL_4:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v12 >= v17)
      {
        break;
      }

      ++v20;
      if (v13[v12])
      {
        sub_22C375A38();
        v45 = v22 & v21;
        goto LABEL_9;
      }
    }

    if ((v42 & 1) == 0)
    {

      v0 = v39;
      goto LABEL_28;
    }

    sub_22C37F8D8();
    v0 = v39;
    if (v34 != v35)
    {
      sub_22C386A8C();
      *v13 = v36;
    }

    else
    {
      v37 = sub_22C3856F8();
      sub_22C88FAFC(v37, v38, v13);
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_22C36C050();
    v45 = v19;
LABEL_9:
    v44 = *(v41 + 72);
    v23 = sub_22C892470();
    v2(v23);
    v24 = sub_22C89251C();
    v2(v24);
    sub_22C891E48(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
    sub_22C37DA2C();
    sub_22C909F7C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v25)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C36D914();
    *(v18 + v29) |= v30;
    v2 = v47;
    v32 = v44 * v31;
    v33 = *v43;
    (*v43)(*(v47 + 48) + v44 * v31, v3, v4);
    v33(*(v47 + 56) + v32, v46, v4);
    sub_22C37B32C();
    v1 = v40;
    if (!v45)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    if (*(v18 + 8 * v26) != -1)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_22C88CD3C()
{
  sub_22C36BA7C();
  sub_22C389358();
  sub_22C90941C();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C377D60();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0E98, &qword_22C92B560);
  v4 = sub_22C375F14();
  sub_22C892394(v4, v5);
  sub_22C892438();
  if (!v6)
  {
LABEL_28:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v7 = 0;
  v8 = v0 + 64;
  sub_22C36AD3C();
  sub_22C892168();
  if (!v2)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v8 + 8 * v7))
      {
        sub_22C375A38();
        v2 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v31)
    {
      sub_22C37F8D8();
      if (v26 != v27)
      {
        sub_22C36EEAC(v25);
      }

      else
      {
        v28 = sub_22C3856F8();
        sub_22C88FAFC(v28, v29, v8);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_22C70CF34();
LABEL_9:
    sub_22C37462C();
    if (v12)
    {
      v13 = sub_22C3863E8();
      v14(v13);
      sub_22C892244();
    }

    else
    {
      v15 = sub_22C3863E8();
      v16(v15);
      sub_22C387DA8();
    }

    sub_22C891E48(&qword_27D9BAAA0, MEMORY[0x277D72B00], MEMORY[0x277D72B10]);
    v17 = sub_22C37DA2C();
    sub_22C892488(v17, v18, v19);
    sub_22C36C03C();
    sub_22C37AC88();
    if (v20)
    {
      break;
    }

    sub_22C38AC50();
LABEL_20:
    sub_22C376B08();
    sub_22C892338(v22);
    v23 = sub_22C37C034();
    v24(v23);
    sub_22C892364();
    sub_22C892158();
    v0 = v30;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v20)
    {
      if (v21)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v20)
    {
      sub_22C37F630();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_22C88CF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_22C3806F4();
  sub_22C3751E0();
  sub_22C3A5908(&qword_27D9C0EC8, &qword_22C92B688);
  v17 = sub_22C375F14();
  sub_22C892348(v17, v18);
  sub_22C5E76A0();
  if (!v19)
  {
LABEL_29:

    *v12 = v14;
    sub_22C5E78F0();
    return;
  }

  v20 = 0;
  sub_22C8922DC();
  sub_22C36AD3C();
  sub_22C892130();
  if (!v15)
  {
LABEL_4:
    v21 = v20;
    while (1)
    {
      v20 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v20 >= v12)
      {
        break;
      }

      sub_22C8923F4();
      if (v22)
      {
        sub_22C375A38();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_22C37F8D8();
      if (v35 != v36)
      {
        sub_22C37B880(v34);
      }

      else
      {
        v37 = sub_22C3856F8();
        sub_22C88FAFC(v37, v38, v16);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v27 = *(v26 + v25);
    sub_22C8923DC();
    if ((v28 & 1) == 0)
    {
    }

    sub_22C375D08();
    sub_22C90B64C();
    if (v27 != 3)
    {
      MEMORY[0x2318B8B10](v27);
    }

    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C8921F0();
    if (v29)
    {
      break;
    }

    sub_22C37F394();
LABEL_21:
    sub_22C372F14(v30);
    *(v33 + v32) = v27;
    sub_22C379BE0(v32);
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    sub_22C375F24();
    if (!v29)
    {
      sub_22C36D900();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88D114()
{
  sub_22C36BA7C();
  v3 = sub_22C389358();
  v4 = type metadata accessor for _PromptMapper._ToolPromptMap(v3);
  v5 = sub_22C3699B8(v4);
  v36 = v6;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v38 = v7;
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0ED0, &qword_22C92B690);
  v8 = sub_22C375F14();
  v37 = v1;
  sub_22C38B2D4(v8, v9);
  sub_22C892438();
  if (!v10)
  {
LABEL_28:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v11 = 0;
  v12 = v0 + 8;
  sub_22C36AD3C();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  if ((v14 & v13) == 0)
  {
LABEL_4:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v11 >= v17)
      {
        break;
      }

      ++v19;
      if (v12[v11])
      {
        sub_22C375A38();
        v15 = v21 & v20;
        goto LABEL_9;
      }
    }

    if (v37)
    {
      sub_22C37F8D8();
      if (v31 != v32)
      {
        sub_22C386A8C();
        *v12 = v33;
      }

      else
      {
        v34 = sub_22C3856F8();
        sub_22C88FAFC(v34, v35, (v0 + 8));
      }

      v0[2] = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_9:
    v22 = v18 | (v11 << 6);
    v23 = *(v0[6] + 8 * v22);
    v24 = *(v36 + 72);
    v25 = v0[7] + v24 * v22;
    if (v37)
    {
      sub_22C892044(v25, v38);
    }

    else
    {
      sub_22C891FEC(v25, v38);
    }

    sub_22C892544();
    sub_22C48A9B4(&v39, v23);
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v26)
    {
      break;
    }

    sub_22C37F394();
LABEL_20:
    sub_22C36D914();
    *(v2 + 64 + v28) |= v29;
    *(*(v2 + 48) + 8 * v30) = v23;
    sub_22C892044(v38, *(v2 + 56) + v24 * v30);
    sub_22C892158();
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v26)
    {
      if (v27)
      {
        break;
      }
    }

    sub_22C5E7554();
    if (!v26)
    {
      sub_22C36D900();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_22C88D394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_22C3806F4();
  a33 = v39;
  a34 = v40;
  sub_22C3751E0();
  sub_22C3A5908(&qword_27D9C0ED8, &qword_22C92B698);
  v41 = sub_22C375F14();
  sub_22C892348(v41, v42);
  sub_22C5E76A0();
  if (!v43)
  {
LABEL_27:

    *v34 = v36;
    sub_22C5E78F0();
    return;
  }

  v44 = 0;
  sub_22C8922DC();
  sub_22C36AD3C();
  sub_22C892130();
  if (!v37)
  {
LABEL_4:
    v45 = v44;
    while (1)
    {
      v44 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v44 >= v34)
      {
        break;
      }

      sub_22C8923F4();
      if (v46)
      {
        sub_22C375A38();
        v37 = v48 & v47;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_22C37F8D8();
      if (v59 != v60)
      {
        sub_22C37B880(v58);
      }

      else
      {
        v61 = sub_22C3856F8();
        sub_22C88FAFC(v61, v62, v38);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v51 = *(v50 + 8 * v49);
    sub_22C8923DC();
    if ((v52 & 1) == 0)
    {
    }

    sub_22C375D08();
    sub_22C48A9B4(&a14, v51);
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C8921F0();
    if (v53)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C372F14(v54);
    *(v57 + 8 * v56) = v51;
    sub_22C379BE0(v56);
    if (!v37)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v53)
    {
      if (v55)
      {
        break;
      }
    }

    sub_22C375F24();
    if (!v53)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C88D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_22C3806F4();
  sub_22C3751E0();
  sub_22C3A5908(&qword_27D9C0EE0, &qword_22C92B6A0);
  v16 = sub_22C375F14();
  sub_22C892348(v16, v17);
  sub_22C5E76A0();
  if (!v18)
  {
LABEL_29:

    *v12 = v14;
    sub_22C5E78F0();
    return;
  }

  v19 = 0;
  sub_22C8922DC();
  sub_22C36AD3C();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  if ((v21 & v20) == 0)
  {
LABEL_4:
    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v19 >= v24)
      {
        break;
      }

      ++v26;
      if (*(v15 + 8 * v19))
      {
        sub_22C375A38();
        v22 = v28 & v27;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_22C37F8D8();
      if (v37 != v38)
      {
        sub_22C37B880(v36);
      }

      else
      {
        v39 = sub_22C3856F8();
        sub_22C88FAFC(v39, v40, v15);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_22C382D5C();
LABEL_9:
    v29 = *(*(v13 + 48) + (v25 | (v19 << 6)));
    sub_22C8923DC();
    if ((v30 & 1) == 0)
    {
    }

    sub_22C375D08();
    sub_22C90B64C();
    if (!v29)
    {
      MEMORY[0x2318B8B10](0);
    }

    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v31)
    {
      break;
    }

    sub_22C37F394();
LABEL_21:
    sub_22C36D914();
    *(v14 + 64 + v33) |= v34;
    *(*(v14 + 48) + v35) = v29;
    sub_22C379BE0(v35);
    if (!v22)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v31)
    {
      if (v32)
      {
        break;
      }
    }

    sub_22C5E7554();
    if (!v31)
    {
      sub_22C36D900();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88D6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_22C3806F4();
  sub_22C3751E0();
  sub_22C3A5908(&qword_27D9C0EE8, &qword_22C92B6A8);
  v17 = sub_22C375F14();
  sub_22C892348(v17, v18);
  sub_22C5E76A0();
  if (!v19)
  {
LABEL_27:

    *v12 = v14;
    sub_22C5E78F0();
    return;
  }

  v20 = 0;
  sub_22C8922DC();
  sub_22C36AD3C();
  sub_22C892130();
  if (!v15)
  {
LABEL_4:
    v21 = v20;
    while (1)
    {
      v20 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v20 >= v12)
      {
        break;
      }

      sub_22C8923F4();
      if (v22)
      {
        sub_22C375A38();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_22C37F8D8();
      if (v35 != v36)
      {
        sub_22C37B880(v34);
      }

      else
      {
        v37 = sub_22C3856F8();
        sub_22C88FAFC(v37, v38, v16);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v27 = *(v26 + v25);
    sub_22C8923DC();
    if ((v28 & 1) == 0)
    {
    }

    sub_22C375D08();
    MEMORY[0x2318B8B10](v27);
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C8921F0();
    if (v29)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C372F14(v30);
    *(v33 + v32) = v27;
    sub_22C379BE0(v32);
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    sub_22C375F24();
    if (!v29)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C88D830()
{
  sub_22C3751E0();
  sub_22C3A5908(&qword_27D9C0E40, &qword_22C92B4E0);
  v5 = sub_22C375F14();
  sub_22C38B2D4(v5, v6);
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_27:

    *v0 = v2;
    return;
  }

  v8 = 0;
  sub_22C8922DC();
  sub_22C36AD3C();
  sub_22C892130();
  if (!v3)
  {
LABEL_4:
    v9 = v8;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v0)
      {
        break;
      }

      sub_22C8923F4();
      if (v10)
      {
        sub_22C375A38();
        v3 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      sub_22C37F8D8();
      if (v26 != v27)
      {
        sub_22C37B880(v25);
      }

      else
      {
        v28 = sub_22C3856F8();
        sub_22C88FAFC(v28, v29, v4);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v15 = (v14 + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    v30 = *(v18 + 16 * v13);
    if ((v2 & 1) == 0)
    {
    }

    sub_22C90B62C();
    sub_22C909FFC();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C8921F0();
    if (v19)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C372F14(v20);
    v24 = (v23 + 16 * v22);
    *v24 = v16;
    v24[1] = v17;
    *(*(v2 + 56) + 16 * v22) = v30;
    sub_22C37B32C();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    sub_22C375F24();
    if (!v19)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C88DA7C()
{
  sub_22C36BA7C();
  v51 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v9 = sub_22C369A48();
  v11 = v10(v9);
  sub_22C3699B8(v11);
  v48 = v12;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v50 = &v45 - v14;
  v15 = *v0;
  sub_22C3868D4();
  sub_22C3A5908(v5, v3);
  v49 = v8;
  v16 = sub_22C38B2D4(v15, v0);
  if (!*(v15 + 16))
  {
LABEL_30:

LABEL_31:
    *v6 = v16;
    sub_22C36CC48();
    return;
  }

  v46 = v0;
  v47 = v15;
  v17 = 0;
  v18 = v15 + 64;
  sub_22C36AD3C();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v24 = v16 + 64;
  if ((v20 & v19) == 0)
  {
LABEL_4:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v17 >= v23)
      {
        break;
      }

      ++v25;
      if (*(v18 + 8 * v17))
      {
        sub_22C375A38();
        v21 = v27 & v26;
        goto LABEL_9;
      }
    }

    if ((v49 & 1) == 0)
    {

      v6 = v46;
      goto LABEL_31;
    }

    sub_22C36ED64();
    v6 = v46;
    if (v41 != v42)
    {
      sub_22C36EEAC(v40);
    }

    else
    {
      v43 = sub_22C3856F8();
      sub_22C88FAFC(v43, v44, v18);
    }

    *(v15 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22C70CF34();
LABEL_9:
    sub_22C380754();
    v28 = *(v48 + 72);
    v31 = v30 + v28 * v29;
    if (v49)
    {
      sub_22C892044(v31, v50);
    }

    else
    {
      sub_22C891FEC(v31, v50);
    }

    sub_22C892544();
    sub_22C909FFC();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v32)
    {
      break;
    }

    sub_22C37F394();
LABEL_22:
    sub_22C36D914();
    *(v24 + v36) |= v37;
    v39 = (*(v16 + 48) + 16 * v38);
    *v39 = v15;
    v39[1] = v3;
    sub_22C892044(v50, *(v16 + 56) + v28 * v38);
    sub_22C892158();
    v15 = v47;
    if (!v21)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    if (*(v24 + 8 * v33) != -1)
    {
      sub_22C36D900();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22C88DCEC()
{
  sub_22C36BA7C();
  sub_22C389358();
  sub_22C90832C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  sub_22C388488(v5);
  sub_22C901FAC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C8920BC(v9, v37);
  sub_22C3A5908(&qword_27D9C0E48, &qword_22C92B4E8);
  v10 = sub_22C375F14();
  sub_22C383E94(v10, v11);
  sub_22C892444();
  if (v12)
  {
    sub_22C373C4C();
    while (v2)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v17)
      {
        v18 = sub_22C38190C();
        v19(v18);
        v20 = sub_22C38768C();
      }

      else
      {
        v22 = sub_22C38190C();
        v23(v22);
        v20 = sub_22C8920E8();
      }

      v21(v20);
      sub_22C892108();
      v25 = sub_22C891E48(&qword_2814357B0, v24, MEMORY[0x277D1C348]);
      sub_22C38C53C(v25);
      sub_22C378950();
      if (v26)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v26)
          {
            if (v27)
            {
              break;
            }
          }

          sub_22C892190();
          if (!v26)
          {
            sub_22C37F630();
            goto LABEL_21;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_21:
      v28 = sub_22C36A544();
      v29(v28);
      v30 = sub_22C383524();
      v31(v30);
      sub_22C892144();
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v3 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v14)
      {
        sub_22C375A38();
        v2 = v16 & v15;
        goto LABEL_10;
      }
    }

    if (v38)
    {
      sub_22C37F8D8();
      if (v33 != v34)
      {
        sub_22C37B880(v32);
      }

      else
      {
        v35 = sub_22C3856F8();
        sub_22C88FAFC(v35, v36, v7);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

void sub_22C88DF64()
{
  sub_22C36BA7C();
  sub_22C389358();
  sub_22C9070DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  sub_22C388488(v5);
  sub_22C901FAC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C8920BC(v9, v37);
  sub_22C3A5908(&qword_27D9C0E50, &qword_22C92B4F0);
  v10 = sub_22C375F14();
  sub_22C383E94(v10, v11);
  sub_22C892444();
  if (v12)
  {
    sub_22C373C4C();
    while (v2)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v17)
      {
        v18 = sub_22C38190C();
        v19(v18);
        v20 = sub_22C38768C();
      }

      else
      {
        v22 = sub_22C38190C();
        v23(v22);
        v20 = sub_22C8920E8();
      }

      v21(v20);
      sub_22C892108();
      v25 = sub_22C891E48(&qword_2814357B0, v24, MEMORY[0x277D1C348]);
      sub_22C38C53C(v25);
      sub_22C378950();
      if (v26)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v26)
          {
            if (v27)
            {
              break;
            }
          }

          sub_22C892190();
          if (!v26)
          {
            sub_22C37F630();
            goto LABEL_21;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_21:
      v28 = sub_22C36A544();
      v29(v28);
      v30 = sub_22C383524();
      v31(v30);
      sub_22C892144();
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v3 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v14)
      {
        sub_22C375A38();
        v2 = v16 & v15;
        goto LABEL_10;
      }
    }

    if (v38)
    {
      sub_22C37F8D8();
      if (v33 != v34)
      {
        sub_22C37B880(v32);
      }

      else
      {
        v35 = sub_22C3856F8();
        sub_22C88FAFC(v35, v36, v7);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

void sub_22C88E1DC()
{
  sub_22C36BA7C();
  sub_22C389358();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C377D60();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0E58, &qword_22C92B4F8);
  v4 = sub_22C375F14();
  sub_22C892394(v4, v5);
  sub_22C892438();
  if (!v6)
  {
LABEL_28:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v7 = 0;
  v8 = v0 + 64;
  sub_22C36AD3C();
  sub_22C892168();
  if (!v2)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v8 + 8 * v7))
      {
        sub_22C375A38();
        v2 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v32)
    {
      sub_22C37F8D8();
      if (v27 != v28)
      {
        sub_22C36EEAC(v26);
      }

      else
      {
        v29 = sub_22C3856F8();
        sub_22C88FAFC(v29, v30, v8);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_22C70CF34();
LABEL_9:
    sub_22C37462C();
    if (v12)
    {
      v13 = sub_22C3863E8();
      v14(v13);
      sub_22C892244();
    }

    else
    {
      v15 = sub_22C3863E8();
      v16(v15);
      sub_22C387DA8();
    }

    sub_22C892108();
    sub_22C891E48(&qword_2814357B0, v17, MEMORY[0x277D1C348]);
    v18 = sub_22C37DA2C();
    sub_22C892488(v18, v19, v20);
    sub_22C36C03C();
    sub_22C37AC88();
    if (v21)
    {
      break;
    }

    sub_22C38AC50();
LABEL_20:
    sub_22C376B08();
    sub_22C892338(v23);
    v24 = sub_22C37C034();
    v25(v24);
    sub_22C892364();
    sub_22C892158();
    v0 = v31;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v21)
    {
      if (v22)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v21)
    {
      sub_22C37F630();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_22C88E450()
{
  sub_22C36BA7C();
  sub_22C389358();
  sub_22C902D0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  sub_22C388488(v5);
  sub_22C902C9C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C8920BC(v9, v37);
  sub_22C3A5908(&qword_27D9BC1F8, &qword_22C9126D0);
  v10 = sub_22C375F14();
  sub_22C383E94(v10, v11);
  sub_22C892444();
  if (v12)
  {
    sub_22C373C4C();
    while (v2)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v17)
      {
        v18 = sub_22C38190C();
        v19(v18);
        v20 = sub_22C38768C();
      }

      else
      {
        v22 = sub_22C38190C();
        v23(v22);
        v20 = sub_22C8920E8();
      }

      v21(v20);
      sub_22C38B564();
      v25 = sub_22C891E48(&qword_27D9BC1A8, v24, MEMORY[0x277D1D788]);
      sub_22C38C53C(v25);
      sub_22C378950();
      if (v26)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v26)
          {
            if (v27)
            {
              break;
            }
          }

          sub_22C892190();
          if (!v26)
          {
            sub_22C37F630();
            goto LABEL_21;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_21:
      v28 = sub_22C36A544();
      v29(v28);
      v30 = sub_22C383524();
      v31(v30);
      sub_22C892144();
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v3 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v14)
      {
        sub_22C375A38();
        v2 = v16 & v15;
        goto LABEL_10;
      }
    }

    if (v38)
    {
      sub_22C37F8D8();
      if (v33 != v34)
      {
        sub_22C37B880(v32);
      }

      else
      {
        v35 = sub_22C3856F8();
        sub_22C88FAFC(v35, v36, v7);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

void sub_22C88E6C4()
{
  sub_22C36BA7C();
  sub_22C389358();
  sub_22C902C4C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  sub_22C388488(v5);
  sub_22C902C9C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C8920BC(v9, v37);
  sub_22C3A5908(&qword_27D9BC240, &unk_22C9126E0);
  v10 = sub_22C375F14();
  sub_22C383E94(v10, v11);
  sub_22C892444();
  if (v12)
  {
    sub_22C373C4C();
    while (v2)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v17)
      {
        v18 = sub_22C38190C();
        v19(v18);
        v20 = sub_22C38768C();
      }

      else
      {
        v22 = sub_22C38190C();
        v23(v22);
        v20 = sub_22C8920E8();
      }

      v21(v20);
      sub_22C38B564();
      v25 = sub_22C891E48(&qword_27D9BC1A8, v24, MEMORY[0x277D1D788]);
      sub_22C38C53C(v25);
      sub_22C378950();
      if (v26)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v26)
          {
            if (v27)
            {
              break;
            }
          }

          sub_22C892190();
          if (!v26)
          {
            sub_22C37F630();
            goto LABEL_21;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_21:
      v28 = sub_22C36A544();
      v29(v28);
      v30 = sub_22C383524();
      v31(v30);
      sub_22C892144();
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v3 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v14)
      {
        sub_22C375A38();
        v2 = v16 & v15;
        goto LABEL_10;
      }
    }

    if (v38)
    {
      sub_22C37F8D8();
      if (v33 != v34)
      {
        sub_22C37B880(v32);
      }

      else
      {
        v35 = sub_22C3856F8();
        sub_22C88FAFC(v35, v36, v7);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

void sub_22C88E938()
{
  sub_22C89241C();
  sub_22C3A5908(&qword_27D9BC3C0, qword_22C912B08);
  sub_22C37F760();
  v32 = v1;
  v5 = sub_22C90B1DC();
  if (!*(v2 + 16))
  {
LABEL_27:

    *v0 = v5;
    return;
  }

  v31 = v2;
  v6 = 0;
  v7 = v2 + 64;
  sub_22C36AD3C();
  v10 = v9 & v8;
  sub_22C5E7630();
  if (!v10)
  {
LABEL_4:
    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v0)
      {
        break;
      }

      sub_22C36CC00();
      if (v12)
      {
        sub_22C375A38();
        v10 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v32)
    {
      sub_22C36ED64();
      if (v27 != v28)
      {
        sub_22C37B880(v26);
      }

      else
      {
        v29 = sub_22C3856F8();
        sub_22C88FAFC(v29, v30, v7);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_22C383840();
LABEL_9:
    sub_22C892530();
    v17 = (v16 + 16 * v15);
    v18 = v17[1];
    v33 = *v17;
    if ((v32 & 1) == 0)
    {
    }

    sub_22C90B62C();
    sub_22C909FFC();
    sub_22C90B66C();
    sub_22C378950();
    if (v19)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C36D914();
    *(v5 + 64 + v21) |= v22;
    v24 = (*(v5 + 48) + 16 * v23);
    *v24 = v3;
    v24[1] = v4;
    v25 = (*(v5 + 56) + 16 * v23);
    *v25 = v33;
    v25[1] = v18;
    sub_22C37B32C();
    v2 = v31;
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v19)
    {
      if (v20)
      {
        break;
      }
    }

    sub_22C892190();
    if (!v19)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C88EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_22C3806F4();
  sub_22C3751E0();
  sub_22C3A5908(&qword_27D9C0E90, &qword_22C92B558);
  v17 = sub_22C375F14();
  sub_22C892348(v17, v18);
  sub_22C5E76A0();
  if (!v19)
  {
LABEL_27:

    *v12 = v14;
    sub_22C5E78F0();
    return;
  }

  v20 = 0;
  sub_22C8922DC();
  sub_22C36AD3C();
  sub_22C892130();
  if (!v15)
  {
LABEL_4:
    v21 = v20;
    while (1)
    {
      v20 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v20 >= v12)
      {
        break;
      }

      sub_22C8923F4();
      if (v22)
      {
        sub_22C375A38();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_22C37F8D8();
      if (v35 != v36)
      {
        sub_22C37B880(v34);
      }

      else
      {
        v37 = sub_22C3856F8();
        sub_22C88FAFC(v37, v38, v16);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v27 = *(v26 + v25);
    sub_22C8923DC();
    if ((v28 & 1) == 0)
    {
    }

    sub_22C375D08();
    sub_22C90B64C();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C8921F0();
    if (v29)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C372F14(v30);
    *(v33 + v32) = v27;
    sub_22C379BE0(v32);
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    sub_22C375F24();
    if (!v29)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C88EC94()
{
  sub_22C36BA7C();
  sub_22C389358();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9BD7C0, &unk_22C92B700);
  v4 = sub_22C375F14();
  sub_22C892394(v4, v5);
  sub_22C892438();
  if (!v6)
  {
LABEL_29:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v7 = 0;
  v8 = v1 + 64;
  sub_22C36AD3C();
  v11 = v10 & v9;
  sub_22C5E7630();
  v12 = v2 + 64;
  v32 = v1;
  if (!v11)
  {
LABEL_4:
    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v0)
      {
        break;
      }

      ++v13;
      if (*(v8 + 8 * v7))
      {
        sub_22C375A38();
        v11 = v15 & v14;
        goto LABEL_9;
      }
    }

    if (v33)
    {
      sub_22C37F8D8();
      if (v28 != v29)
      {
        sub_22C36EEAC(v27);
      }

      else
      {
        v30 = sub_22C3856F8();
        sub_22C88FAFC(v30, v31, v8);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_22C3D34C8();
LABEL_9:
    v16 = sub_22C8924FC();
    v17(v16);
    sub_22C892244();
    if ((v33 & 1) == 0)
    {
    }

    sub_22C892108();
    sub_22C891E48(&qword_2814357B0, v18, MEMORY[0x277D1C348]);
    sub_22C37DA2C();
    sub_22C909F7C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v19)
    {
      break;
    }

    sub_22C38AC50();
LABEL_21:
    sub_22C376B08();
    *(v12 + v23) |= v24;
    v25 = sub_22C37C034();
    v26(v25);
    sub_22C892364();
    sub_22C892158();
    v1 = v32;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    if (*(v12 + 8 * v20) != -1)
    {
      sub_22C37F630();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C3806F4();
  sub_22C89241C();
  sub_22C3A5908(v37, v38);
  sub_22C37F760();
  v62 = v33;
  v39 = sub_22C90B1DC();
  if (!*(v34 + 16))
  {
LABEL_27:

    *v32 = v39;
    sub_22C5E78F0();
    return;
  }

  v61 = v34;
  v40 = 0;
  v41 = v34 + 64;
  sub_22C36AD3C();
  v44 = v43 & v42;
  sub_22C5E7630();
  if (!v44)
  {
LABEL_4:
    v45 = v40;
    while (1)
    {
      v40 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v40 >= v32)
      {
        break;
      }

      sub_22C36CC00();
      if (v46)
      {
        sub_22C375A38();
        v44 = v48 & v47;
        goto LABEL_9;
      }
    }

    if (v62)
    {
      sub_22C36ED64();
      if (v57 != v58)
      {
        sub_22C37B880(v56);
      }

      else
      {
        v59 = sub_22C3856F8();
        sub_22C88FAFC(v59, v60, v41);
      }

      *(v34 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_22C383840();
LABEL_9:
    sub_22C892530();
    sub_22C8923DC();
    if ((v49 & 1) == 0)
    {
    }

    sub_22C375D08();
    sub_22C909FFC();
    sub_22C90B66C();
    sub_22C378950();
    if (v50)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C36D914();
    *(v39 + 64 + v52) |= v53;
    v55 = (*(v39 + 48) + 16 * v54);
    *v55 = v35;
    v55[1] = v36;
    sub_22C379BE0(v54);
    v34 = v61;
    if (!v44)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v50)
    {
      if (v51)
      {
        break;
      }
    }

    sub_22C892190();
    if (!v50)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C88F148()
{
  sub_22C36BA7C();
  sub_22C389358();
  sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  sub_22C388488(v5);
  sub_22C9069BC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C8920BC(v9, v36);
  sub_22C3A5908(&qword_27D9C07A0, &qword_22C92B510);
  v10 = sub_22C375F14();
  sub_22C383E94(v10, v11);
  sub_22C892444();
  if (v12)
  {
    sub_22C373C4C();
    while (v2)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v17)
      {
        v18 = sub_22C38190C();
        v19(v18);
        v20 = sub_22C38768C();
      }

      else
      {
        v22 = sub_22C38190C();
        v23(v22);
        v20 = sub_22C8920E8();
      }

      v21(v20);
      v24 = sub_22C891E48(&qword_27D9BAA98, MEMORY[0x277D1DCF0], MEMORY[0x277D1DCF8]);
      sub_22C38C53C(v24);
      sub_22C378950();
      if (v25)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v25)
          {
            if (v26)
            {
              break;
            }
          }

          sub_22C892190();
          if (!v25)
          {
            sub_22C37F630();
            goto LABEL_21;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_21:
      v27 = sub_22C36A544();
      v28(v27);
      v29 = sub_22C383524();
      v30(v29);
      sub_22C892144();
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v3 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v14)
      {
        sub_22C375A38();
        v2 = v16 & v15;
        goto LABEL_10;
      }
    }

    if (v37)
    {
      sub_22C37F8D8();
      if (v32 != v33)
      {
        sub_22C37B880(v31);
      }

      else
      {
        v34 = sub_22C3856F8();
        sub_22C88FAFC(v34, v35, v7);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

void sub_22C88F3F8()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v8 = sub_22C369A48();
  v52 = v9(v8);
  sub_22C369824();
  v11 = v10;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  v51 = &v44 - v13;
  v14 = *v0;
  sub_22C3868D4();
  sub_22C3A5908(v4, v2);
  v49 = v7;
  v15 = sub_22C90B1DC();
  if (!*(v14 + 16))
  {
LABEL_30:

LABEL_31:
    *v5 = v15;
    sub_22C36CC48();
    return;
  }

  v16 = 0;
  v17 = v14 + 64;
  sub_22C36AD3C();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v45 = v0;
  v46 = (v11 + 16);
  v47 = v14;
  v48 = v11;
  v50 = (v11 + 32);
  v23 = v15 + 64;
  if ((v19 & v18) == 0)
  {
LABEL_4:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v16 >= v22)
      {
        break;
      }

      ++v24;
      if (*(v17 + 8 * v16))
      {
        sub_22C375A38();
        v20 = v26 & v25;
        goto LABEL_9;
      }
    }

    if ((v49 & 1) == 0)
    {

      v5 = v45;
      goto LABEL_31;
    }

    sub_22C36ED64();
    v5 = v45;
    if (v40 != v41)
    {
      sub_22C36EEAC(v39);
    }

    else
    {
      v42 = sub_22C3856F8();
      sub_22C88FAFC(v42, v43, v17);
    }

    *(v14 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22C3D34C8();
LABEL_9:
    sub_22C380754();
    v27 = *(v48 + 72);
    v30 = v29 + v27 * v28;
    if (v49)
    {
      (*v50)(v51, v30, v52);
    }

    else
    {
      (*v46)(v51, v30, v52);
    }

    sub_22C90B62C();
    sub_22C909FFC();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v31)
    {
      break;
    }

    sub_22C37F394();
LABEL_22:
    sub_22C36D914();
    *(v23 + v35) |= v36;
    v38 = (*(v15 + 48) + 16 * v37);
    *v38 = v14;
    v38[1] = v2;
    (*v50)((*(v15 + 56) + v27 * v37), v51, v52);
    sub_22C37B32C();
    v14 = v47;
    if (!v20)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v31)
    {
      if (v33)
      {
        break;
      }
    }

    if (v32 == v34)
    {
      v32 = 0;
    }

    if (*(v23 + 8 * v32) != -1)
    {
      sub_22C36D900();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22C88F6B8()
{
  sub_22C3751E0();
  sub_22C3A5908(&qword_27D9C0E18, &qword_22C92B4B0);
  v5 = sub_22C375F14();
  sub_22C892348(v5, v6);
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v8 = 0;
  sub_22C8922DC();
  sub_22C36AD3C();
  sub_22C892130();
  if (!v3)
  {
LABEL_4:
    v9 = v8;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v0)
      {
        break;
      }

      sub_22C8923F4();
      if (v10)
      {
        sub_22C375A38();
        v3 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v31)
    {
      sub_22C37F8D8();
      if (v27 != v28)
      {
        sub_22C37B880(v26);
      }

      else
      {
        v29 = sub_22C3856F8();
        sub_22C88FAFC(v29, v30, v4);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v15 = (v14 + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    v19 = (v18 + 32 * v13);
    if (v31)
    {
      sub_22C456E34(v19, v32);
    }

    else
    {
      sub_22C36F998(v19, v32);
    }

    sub_22C375D08();
    sub_22C909FFC();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C8921F0();
    if (v20)
    {
      break;
    }

    sub_22C37F394();
LABEL_20:
    sub_22C372F14(v21);
    v25 = (v24 + 16 * v23);
    *v25 = v16;
    v25[1] = v17;
    sub_22C456E34(v32, (*(v2 + 56) + 32 * v23));
    sub_22C37B32C();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    sub_22C375F24();
    if (!v20)
    {
      sub_22C36D900();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_22C88F874()
{
  sub_22C36BA7C();
  sub_22C389358();
  sub_22C9093BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  sub_22C388488(v5);
  sub_22C9091CC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C8920BC(v9, v36);
  sub_22C3A5908(&qword_27D9C0D90, &qword_22C92B248);
  v10 = sub_22C375F14();
  sub_22C383E94(v10, v11);
  sub_22C892444();
  if (v12)
  {
    sub_22C373C4C();
    while (v2)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v17)
      {
        v18 = sub_22C38190C();
        v19(v18);
        v20 = sub_22C38768C();
      }

      else
      {
        v22 = sub_22C38190C();
        v23(v22);
        v20 = sub_22C8920E8();
      }

      v21(v20);
      v24 = sub_22C891E48(&qword_27D9BF390, MEMORY[0x277D72900], MEMORY[0x277D72910]);
      sub_22C38C53C(v24);
      sub_22C378950();
      if (v25)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v25)
          {
            if (v26)
            {
              break;
            }
          }

          sub_22C892190();
          if (!v25)
          {
            sub_22C37F630();
            goto LABEL_21;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_21:
      v27 = sub_22C36A544();
      v28(v27);
      v29 = sub_22C383524();
      v30(v29);
      sub_22C892144();
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v3 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v14)
      {
        sub_22C375A38();
        v2 = v16 & v15;
        goto LABEL_10;
      }
    }

    if (v37)
    {
      sub_22C37F8D8();
      if (v32 != v33)
      {
        sub_22C37B880(v31);
      }

      else
      {
        v34 = sub_22C3856F8();
        sub_22C88FAFC(v34, v35, v7);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

uint64_t sub_22C88FAFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22C9114A0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22C88FB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C891FEC(a3, a1);
  v3 = sub_22C36BA00();
  return sub_22C891FEC(v3, v4);
}

uint64_t sub_22C88FBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C892320();
  sub_22C891FEC(v4, v5);

  return a3;
}

uint64_t sub_22C88FBFC()
{
  sub_22C89222C();
  v4 = sub_22C902D0C();
  sub_22C36985C();
  v7 = *(v5 + 16);
  v7(v3, v1, v4);

  return (v7)(v2, v0, v4);
}

uint64_t sub_22C88FC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C891FEC(a3, a1);

  return a2;
}

uint64_t sub_22C88FCE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C8924A4(a1, a2, a3, a4, a5);

  return sub_22C37EF10();
}

uint64_t sub_22C88FD48()
{
  sub_22C892450();
  sub_22C891FEC(v1, v0);

  return sub_22C36BBCC();
}

uint64_t sub_22C88FD90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C8924A4(a1, a2, a3, a4, a5);

  return sub_22C37EF10();
}

uint64_t sub_22C88FDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C901FAC();
  sub_22C36985C();
  v4 = sub_22C37EF10();
  v5(v4);

  return a3;
}

uint64_t sub_22C88FE30()
{
  sub_22C892450();
  sub_22C891FEC(v1, v0);

  return sub_22C36BBCC();
}

uint64_t sub_22C88FE78()
{
  sub_22C89222C();
  sub_22C9069BC();
  sub_22C36985C();
  (*(v4 + 16))(v3, v1);
  sub_22C908C5C();
  sub_22C36985C();
  v7 = *(v6 + 16);

  return v7(v2, v0, v5);
}

uint64_t sub_22C88FF28()
{
  v2 = sub_22C89222C();
  v3(v2);
  sub_22C36985C();
  (*(v4 + 16))(v1, v0);

  return sub_22C37EF10();
}

uint64_t sub_22C88FF90()
{
  sub_22C892450();
  sub_22C37B10C();
  sub_22C891FEC(v1, v0);

  return sub_22C36BBCC();
}

uint64_t sub_22C88FFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36F998(a4, a1);

  return a2;
}

uint64_t sub_22C890008@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C88FFC8((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22C890040(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_22C890270(a1, a2, a3, v46);
  v42 = v46[0];
  v43 = v46[1];
  v44 = v46[2];
  v45 = v47;
  *(&v35 + 1) = a1;

  *&v35 = a3;

  while (1)
  {
    sub_22C891C58(v9, v10, v11, v12, v13, v14, v15, v16, v35, v36[0], v36[1], v37[0], v37[1], v38, v39, *(&v39 + 1), v40, v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *&v46[0]);
    v17 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {
      sub_22C36A674(v42);
    }

    v18 = v38;
    sub_22C456E34(&v39, v37);
    v19 = *a5;
    v21 = sub_22C36E2BC(v18, v17);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v24 = v20;
    if (v19[3] >= v22 + v23)
    {
      if (a4)
      {
        if (v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_22C3A5908(&qword_27D9BF388, &unk_22C92B1F0);
        sub_22C90B16C();
        if (v24)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_22C88F6B8();
      v25 = sub_22C36E2BC(v18, v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_18;
      }

      v21 = v25;
      if (v24)
      {
LABEL_10:
        v27 = *a5;
        sub_22C36F998(v37, v36);
        sub_22C36FF94(v37);

        v28 = (v27[7] + 32 * v21);
        sub_22C36FF94(v28);
        v9 = sub_22C456E34(v36, v28);
        goto LABEL_14;
      }
    }

    v29 = *a5;
    *(*a5 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v30 = (v29[6] + 16 * v21);
    *v30 = v18;
    v30[1] = v17;
    v9 = sub_22C456E34(v37, (v29[7] + 32 * v21));
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_17;
    }

    v29[2] = v33;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C890270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_22C8902AC()
{
  sub_22C36BA7C();
  v8 = v7;
  v43 = sub_22C3A5908(&qword_27D9BD050, &qword_22C917420);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C37B974();
  v11 = type metadata accessor for PromptTreeIdentifier.Label(v10);
  v12 = sub_22C3699B8(v11);
  v14 = v13;
  MEMORY[0x28223BE20](v12);
  sub_22C377D60();
  v15 = sub_22C3A5908(&qword_27D9C0E70, &unk_22C92B528);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v44 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C892400();
  v41 = v0;
  if (v19)
  {
    v42 = v8;
LABEL_7:
    sub_22C892120();
    v23 = (v22 & v21);
    v26 = v25 | (v24 << 6);
    sub_22C891FEC(*(v5 + 48) + *(v14 + 72) * v26, v4);
    v27 = *(*(v5 + 56) + 8 * v26);
    v28 = *(v43 + 48);
    v29 = v4;
    v30 = v43;
    sub_22C892044(v29, v3);
    *(v3 + v28) = v27;
    v31 = sub_22C38A14C();
    sub_22C36C640(v31, v32, v33, v43);

    v8 = v42;
LABEL_8:
    sub_22C8924D4();
    sub_22C5E71BC(v3, v44, &qword_27D9C0E70, &unk_22C92B528);
    v34 = sub_22C37E21C();
    sub_22C36D0A8(v34, v35, v30);
    if (!v36)
    {
      sub_22C892304(v44);
      v23(v41);
      sub_22C8922E8();
      v3 = 0;
    }

    v37 = sub_22C3A5908(&qword_27D9BAEB8, &qword_22C90D760);
    sub_22C36C640(v8, v3, 1, v37);
    sub_22C36CC48();
  }

  else
  {
    while (1)
    {
      v20 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v20 >= ((v2 + 64) >> 6))
      {
        v38 = sub_22C6AEF30();
        v30 = v43;
        sub_22C36C640(v38, v39, v40, v43);
        v23 = 0;
        goto LABEL_8;
      }

      ++v1;
      if (*(v6 + 8 * v20))
      {
        v42 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_22C890534()
{
  sub_22C36BA7C();
  v3 = v2;
  v57 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C37B974();
  v5 = sub_22C902D0C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v10 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = sub_22C3A5908(&qword_27D9BC218, &unk_22C912410);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v56 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v20 = v1[1];
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[4];
  v50 = v0;
  v55 = v21;
  if (v23)
  {
    v53 = &v50 - v18;
    v54 = v3;
LABEL_8:
    sub_22C371C3C();
    v51 = v13;
    v52 = v28;
    v31 = v7[9] * (v30 | (v29 << 6));
    v32 = v7[2];
    v33 = v13;
    v35 = v34;
    v32(v33, *(v34 + 48) + v31, v5);
    v32(v10, *(v35 + 56) + v31, v5);
    v36 = *(v57 + 48);
    v37 = v7[4];
    v19 = v53;
    v37(v53, v51, v5);
    v38 = &v19[v36];
    v39 = v52;
    v37(v38, v10, v5);
    v40 = v35;
    v41 = 0;
    v3 = v54;
LABEL_9:
    v42 = 1;
    v43 = v57;
    sub_22C36C640(v19, v41, 1, v57);
    *v1 = v40;
    v1[1] = v20;
    v44 = v56;
    v1[2] = v55;
    v1[3] = v22;
    v1[4] = v39;
    v45 = v1[5];
    sub_22C5E71BC(v19, v44, &qword_27D9BC218, &unk_22C912410);
    sub_22C36D0A8(v44, 1, v43);
    if (!v46)
    {
      v47 = v44;
      v48 = v50;
      sub_22C892304(v47);
      v45(v48);
      sub_22C8922E8();
      v42 = 0;
    }

    v49 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
    sub_22C36C640(v3, v42, 1, v49);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (!__OFADD__(v22, 1))
    {
      if (v22 + 1 >= v24)
      {
        v39 = 0;
        v41 = 1;
        v40 = v25;
        goto LABEL_9;
      }

      sub_22C8924C8();
      if (v27)
      {
        v53 = v19;
        v54 = v3;
        v22 = v26;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C890844()
{
  sub_22C36BA7C();
  v46 = v8;
  v45 = sub_22C3A5908(&qword_27D9BC4B0, &unk_22C9134C0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C37B974();
  v11 = type metadata accessor for _PromptMapper._ToolPromptMap(v10);
  v12 = sub_22C3699B8(v11);
  v14 = v13;
  MEMORY[0x28223BE20](v12);
  sub_22C377D60();
  v15 = sub_22C3A5908(&qword_27D9BFC80, &unk_22C92B6F0);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v17);
  sub_22C892400();
  v44 = v0;
  if (v18)
  {
LABEL_5:
    sub_22C892120();
    v22 = (v21 & v20);
    v25 = v24 | (v23 << 6);
    v26 = *(*(v6 + 48) + 8 * v25);
    sub_22C891FEC(*(v6 + 56) + *(v14 + 72) * v25, v5);
    v27 = *(v45 + 48);
    *v4 = v26;
    v28 = v5;
    v29 = v45;
    sub_22C892044(v28, v4 + v27);
    v30 = sub_22C38A14C();
    sub_22C36C640(v30, v31, v32, v45);

LABEL_6:
    sub_22C8924D4();
    v33 = sub_22C3806B8();
    sub_22C5E71BC(v33, v34, v35, v36);
    v37 = sub_22C892460();
    sub_22C36D0A8(v37, v38, v29);
    if (!v39)
    {
      sub_22C5E71BC(v3, v44, &qword_27D9BC4B0, &unk_22C9134C0);
      v22(v44);
      sub_22C36DD28(v44, &qword_27D9BC4B0, &unk_22C9134C0);
      v4 = 0;
    }

    v40 = sub_22C3A5908(&qword_27D9BC4B8, &qword_22C9134D0);
    sub_22C36C640(v46, v4, 1, v40);
    sub_22C36CC48();
  }

  else
  {
    while (1)
    {
      v19 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v19 >= ((v2 + 64) >> 6))
      {
        v41 = sub_22C6AEF30();
        v29 = v45;
        sub_22C36C640(v41, v42, v43, v45);
        v22 = 0;
        goto LABEL_6;
      }

      ++v1;
      if (*(v7 + 8 * v19))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22C890AD8()
{
  sub_22C36BA7C();
  v7 = v6;
  v32 = sub_22C3A5908(&qword_27D9BDDD8, &qword_22C91BE80);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C386E84();
  sub_22C90941C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  sub_22C50B438();
  v10 = sub_22C3A5908(&qword_27D9BFC38, &unk_22C924EE0);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C37EE60();
  if (v13)
  {
    v31 = v7;
LABEL_8:
    sub_22C371C3C();
    v16 = sub_22C381C48();
    v17(v16);
    v18 = sub_22C8921B0();
    v19(v18);
    sub_22C36BECC();
    sub_22C36C640(v20, v21, v22, v5);

    v7 = v31;
LABEL_9:
    sub_22C89226C();
    sub_22C5E71BC(v4, v1, &qword_27D9BFC38, &unk_22C924EE0);
    v23 = sub_22C37E21C();
    sub_22C36D0A8(v23, v24, v5);
    if (!v25)
    {
      sub_22C892304(v1);
      v26 = sub_22C38023C();
      v0(v26);
      sub_22C8922E8();
      v3 = 0;
    }

    v27 = sub_22C3A5908(&qword_27D9BDDE0, &off_22C91BE88);
    sub_22C36C640(v7, v3, 1, v27);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (!__OFADD__(v2, 1))
    {
      if (v2 + 1 >= v14)
      {
        sub_22C36A748();
        v5 = v32;
        sub_22C89255C(v28, v29, v30);
        goto LABEL_9;
      }

      sub_22C8924C8();
      if (v15)
      {
        v31 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C890D18()
{
  sub_22C36BA7C();
  v7 = v6;
  v32 = sub_22C3A5908(&qword_27D9BDDF8, &qword_22C91BEA0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C386E84();
  sub_22C908EAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  sub_22C50B438();
  v10 = sub_22C3A5908(&qword_27D9BFC40, &unk_22C924EF0);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C37EE60();
  if (v13)
  {
    v31 = v7;
LABEL_8:
    sub_22C371C3C();
    v16 = sub_22C381C48();
    v17(v16);
    v18 = sub_22C8921B0();
    v19(v18);
    sub_22C36BECC();
    sub_22C36C640(v20, v21, v22, v5);

    v7 = v31;
LABEL_9:
    sub_22C89226C();
    sub_22C5E71BC(v4, v1, &qword_27D9BFC40, &unk_22C924EF0);
    v23 = sub_22C37E21C();
    sub_22C36D0A8(v23, v24, v5);
    if (!v25)
    {
      sub_22C892304(v1);
      v26 = sub_22C38023C();
      v0(v26);
      sub_22C8922E8();
      v3 = 0;
    }

    v27 = sub_22C3A5908(&qword_27D9BDE00, &off_22C91BEA8);
    sub_22C36C640(v7, v3, 1, v27);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (!__OFADD__(v2, 1))
    {
      if (v2 + 1 >= v14)
      {
        sub_22C36A748();
        v5 = v32;
        sub_22C89255C(v28, v29, v30);
        goto LABEL_9;
      }

      sub_22C8924C8();
      if (v15)
      {
        v31 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C890F58()
{
  sub_22C36BA7C();
  v7 = v6;
  v36 = sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C36CD40();
  v10 = type metadata accessor for ToolPromptMap(v9);
  v11 = sub_22C3699B8(v10);
  MEMORY[0x28223BE20](v11);
  sub_22C377D60();
  v12 = sub_22C3A5908(&qword_27D9BFC48, &unk_22C924F00);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v14);
  sub_22C8921D4();
  if (v15)
  {
    v35 = v7;
LABEL_8:
    sub_22C371C3C();
    v19 = sub_22C8923BC(v18);
    sub_22C891FEC(v19, v5);
    sub_22C37E8F8();
    v20 = sub_22C38A14C();
    sub_22C36C640(v20, v21, v22, v2);

    v7 = v35;
LABEL_9:
    sub_22C892254();
    v23 = sub_22C3806B8();
    sub_22C5E71BC(v23, v24, v25, v26);
    v27 = sub_22C892460();
    sub_22C36D0A8(v27, v28, v2);
    if (!v29)
    {
      sub_22C892304(v3);
      v30 = sub_22C38023C();
      v0(v30);
      sub_22C8922E8();
      v4 = 0;
    }

    v31 = sub_22C3A5908(&qword_27D9BDE18, &unk_22C91BEC0);
    sub_22C36C640(v7, v4, 1, v31);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (1)
    {
      v17 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        v32 = sub_22C6AEF30();
        v2 = v36;
        sub_22C36C640(v32, v33, v34, v36);
        goto LABEL_9;
      }

      ++v1;
      if (*(v0 + v17))
      {
        v35 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C89119C()
{
  sub_22C36BA7C();
  v7 = v6;
  v40 = sub_22C3A5908(&qword_27D9BD7B0, &qword_22C9190F8);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36CD40();
  v39 = sub_22C901FAC();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C50B438();
  v12 = sub_22C3A5908(&qword_27D9C0F08, qword_22C92B710);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  sub_22C8921D4();
  if (v18)
  {
    v37 = v16;
    v38 = v7;
LABEL_8:
    sub_22C371C3C();
    v23 = v22 | (v21 << 6);
    (*(v10 + 16))(v4, *(v5 + 48) + *(v10 + 72) * v23, v39);
    v24 = *(*(v5 + 56) + 8 * v23);
    v25 = *(v40 + 48);
    v26 = v4;
    v27 = v40;
    (*(v10 + 32))(v3, v26, v39);
    *(v3 + v25) = v24;
    v28 = sub_22C38A14C();
    sub_22C36C640(v28, v29, v30, v40);

    v16 = v37;
    v7 = v38;
LABEL_9:
    sub_22C892254();
    sub_22C5E71BC(v3, v16, &qword_27D9C0F08, qword_22C92B710);
    v31 = 1;
    sub_22C36D0A8(v16, 1, v27);
    if (!v32)
    {
      sub_22C892304(v16);
      v0(v2);
      sub_22C8922E8();
      v31 = 0;
    }

    v33 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
    sub_22C36C640(v7, v31, 1, v33);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (1)
    {
      v20 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        v34 = sub_22C6AEF30();
        v27 = v40;
        sub_22C89255C(v34, v35, v36);
        goto LABEL_9;
      }

      ++v1;
      if (*(v0 + v20))
      {
        v37 = v16;
        v38 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C89143C()
{
  sub_22C36BA7C();
  v47 = v3;
  v48 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C386E84();
  v43 = sub_22C908C5C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v9 = v8;
  v10 = sub_22C9069BC();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  v15 = v14;
  v16 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v17 = sub_22C369914(v16);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v44 = v19;
  v45 = v0;
  v20 = v0[1];
  v21 = v0[3];
  v39 = v2;
  v46 = v0[2];
  if (v0[4])
  {
    v42 = v1;
LABEL_8:
    sub_22C371C3C();
    v41 = v24;
    v27 = v26 | (v25 << 6);
    v29 = v28;
    (*(v12 + 16))(v15, *(v28 + 48) + *(v12 + 72) * v27, v10);
    (*(v6 + 16))(v9, *(v29 + 56) + *(v6 + 72) * v27, v43);
    v40 = *(v48 + 48);
    v30 = v10;
    v31 = v41;
    (*(v12 + 32))(v44, v15, v30);
    v32 = v44;
    (*(v6 + 32))(v44 + v40, v9, v43);
    v22 = v48;
    v33 = 0;
    v1 = v42;
LABEL_9:
    v34 = 1;
    v35 = v22;
    sub_22C36C640(v32, v33, 1, v22);
    *v45 = v29;
    v45[1] = v20;
    v45[2] = v46;
    v45[3] = v21;
    v45[4] = v31;
    v36 = v45[5];
    sub_22C5E71BC(v32, v1, &qword_27D9BF108, &unk_22C921F70);
    sub_22C36D0A8(v1, 1, v35);
    if (!v37)
    {
      sub_22C5E71BC(v1, v39, &qword_27D9BF110, &unk_22C922580);
      v36(v39);
      sub_22C36DD28(v39, &qword_27D9BF110, &unk_22C922580);
      v34 = 0;
    }

    v38 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
    sub_22C36C640(v47, v34, 1, v38);
    sub_22C36CC48();
  }

  else
  {
    v22 = v48;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= ((v0[2] + 64) >> 6))
      {
        v31 = 0;
        v33 = 1;
        v32 = v44;
        v29 = *v0;
        goto LABEL_9;
      }

      ++v21;
      if (*(v20 + 8 * v23))
      {
        v42 = v1;
        v21 = v23;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C8917D4()
{
  sub_22C36BA7C();
  v7 = v6;
  v32 = sub_22C3A5908(&qword_27D9BF790, &qword_22C923048);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C386E84();
  sub_22C902D4C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  sub_22C50B438();
  v10 = sub_22C3A5908(&qword_27D9C0E60, &unk_22C92B500);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C37EE60();
  if (v13)
  {
    v31 = v7;
LABEL_8:
    sub_22C371C3C();
    v16 = sub_22C381C48();
    v17(v16);
    v18 = sub_22C8921B0();
    v19(v18);
    sub_22C36BECC();
    sub_22C36C640(v20, v21, v22, v5);

    v7 = v31;
LABEL_9:
    sub_22C89226C();
    sub_22C5E71BC(v4, v1, &qword_27D9C0E60, &unk_22C92B500);
    v23 = sub_22C37E21C();
    sub_22C36D0A8(v23, v24, v5);
    if (!v25)
    {
      sub_22C892304(v1);
      v26 = sub_22C38023C();
      v0(v26);
      sub_22C8922E8();
      v3 = 0;
    }

    v27 = sub_22C3A5908(&qword_27D9BF798, &unk_22C923050);
    sub_22C36C640(v7, v3, 1, v27);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (!__OFADD__(v2, 1))
    {
      if (v2 + 1 >= v14)
      {
        sub_22C36A748();
        v5 = v32;
        sub_22C89255C(v28, v29, v30);
        goto LABEL_9;
      }

      sub_22C8924C8();
      if (v15)
      {
        v31 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C891A14()
{
  sub_22C36BA7C();
  v7 = v6;
  v36 = sub_22C3A5908(&qword_27D9C0E30, &qword_22C92B4C8);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C36CD40();
  v10 = type metadata accessor for DialogValue(v9);
  v11 = sub_22C3699B8(v10);
  MEMORY[0x28223BE20](v11);
  sub_22C377D60();
  v12 = sub_22C3A5908(&qword_27D9C0E38, &unk_22C92B4D0);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v14);
  sub_22C8921D4();
  if (v15)
  {
    v35 = v7;
LABEL_8:
    sub_22C371C3C();
    v19 = sub_22C8923BC(v18);
    sub_22C891FEC(v19, v5);
    sub_22C37E8F8();
    v20 = sub_22C38A14C();
    sub_22C36C640(v20, v21, v22, v2);

    v7 = v35;
LABEL_9:
    sub_22C892254();
    v23 = sub_22C3806B8();
    sub_22C5E71BC(v23, v24, v25, v26);
    v27 = sub_22C892460();
    sub_22C36D0A8(v27, v28, v2);
    if (!v29)
    {
      sub_22C892304(v3);
      v30 = sub_22C38023C();
      v0(v30);
      sub_22C8922E8();
      v4 = 0;
    }

    v31 = sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390);
    sub_22C36C640(v7, v4, 1, v31);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (1)
    {
      v17 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        v32 = sub_22C6AEF30();
        v2 = v36;
        sub_22C36C640(v32, v33, v34, v36);
        goto LABEL_9;
      }

      ++v1;
      if (*(v0 + v17))
      {
        v35 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C891C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C3806F4();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v31 = *v26;
  v32 = v26[1];
  v33 = v26[2];
  v34 = v26[3];
  if (v26[4])
  {
LABEL_6:
    sub_22C892120();
    v38 = v37 & v36;
    v41 = v40 | (v39 << 6);
    v42 = (*(v31 + 48) + 16 * v41);
    v44 = *v42;
    v43 = v42[1];
    sub_22C36F998(*(v31 + 56) + 32 * v41, &a9);
    *&a12 = v44;
    *(&a12 + 1) = v43;
    sub_22C456E34(&a9, &a13);

    v45 = *(&a12 + 1);
    v46 = a12;
LABEL_7:
    *v26 = v31;
    v26[1] = v32;
    v26[2] = v33;
    v26[3] = v34;
    v26[4] = v38;
    if (v45)
    {
      v47 = v26[5];
      *&a9 = v46;
      *(&a9 + 1) = v45;
      a10 = a13;
      a11 = a14;
      v47(&a9);
      sub_22C36DD28(&a9, &qword_27D9C0E20, &qword_22C92B4B8);
    }

    else
    {
      v30[1] = 0u;
      v30[2] = 0u;
      *v30 = 0u;
    }

    sub_22C5E78F0();
  }

  else
  {
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= ((v33 + 64) >> 6))
      {
        v45 = 0;
        v46 = 0;
        v38 = 0;
        a13 = 0u;
        a14 = 0u;
        a12 = 0u;
        goto LABEL_7;
      }

      ++v34;
      if (*(v32 + 8 * v35))
      {
        v34 = v35;
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22C891D88(uint64_t a1)
{
  v2 = type metadata accessor for DialogValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C891DE4()
{
  result = qword_27D9BCFF0;
  if (!qword_27D9BCFF0)
  {
    sub_22C3AC1A0(&qword_27D9BCFE8, &qword_22C917388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCFF0);
  }

  return result;
}

uint64_t sub_22C891E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for FallbackDialogGenerationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C891F44()
{
  result = qword_27D9C0EA8;
  if (!qword_27D9C0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0EA8);
  }

  return result;
}

unint64_t sub_22C891F98()
{
  result = qword_27D9C0EB0;
  if (!qword_27D9C0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0EB0);
  }

  return result;
}

uint64_t sub_22C891FEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C892044(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

void sub_22C892168()
{
  *(v2 - 144) = v1 + 16;
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  *(v2 - 112) = v1 + 32;
}

char *sub_22C8921B0()
{
  v4 = *(*(v3 - 104) + 48);
  *v1 = v0;
  v1[1] = v2;
  return v1 + v4;
}

void sub_22C892254()
{
  *v2 = v4;
  v2[1] = v1;
  v2[2] = *(v5 - 88);
  v2[3] = v3;
  v2[4] = v0;
}

void sub_22C89226C()
{
  *v2 = v1;
  v2[1] = v3;
  v2[2] = *(v5 - 96);
  v2[3] = v4;
  v2[4] = v0;
}

uint64_t sub_22C892284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C8922E8()
{

  return sub_22C36DD28(v0, v1, v2);
}

uint64_t sub_22C892304(uint64_t a1)
{

  return sub_22C5E71BC(a1, v1, v2, v3);
}

uint64_t sub_22C892348(uint64_t a1, uint64_t a2)
{

  return sub_22C90B1DC();
}

uint64_t sub_22C892394(uint64_t a1, uint64_t a2)
{
  *(v3 - 116) = v2;

  return sub_22C90B1DC();
}

uint64_t sub_22C892488(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C909F7C();
}

uint64_t sub_22C8924A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;
}

void sub_22C8924D4()
{
  *v1 = v4;
  v1[1] = v5;
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v0;
}

uint64_t sub_22C892544()
{

  return sub_22C90B62C();
}

uint64_t sub_22C892588(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v5 = sub_22C9021BC();
  v3[13] = v5;
  sub_22C3699B8(v5);
  v3[14] = v6;
  v3[15] = sub_22C382A94();
  v3[16] = swift_task_alloc();
  v7 = sub_22C90687C();
  v3[17] = v7;
  sub_22C3699B8(v7);
  v3[18] = v8;
  v3[19] = sub_22C382A94();
  v3[20] = swift_task_alloc();
  v9 = sub_22C90077C();
  v3[21] = v9;
  sub_22C3699B8(v9);
  v3[22] = v10;
  v3[23] = sub_22C382A94();
  v3[24] = swift_task_alloc();
  v11 = sub_22C90234C();
  v3[25] = v11;
  sub_22C3699B8(v11);
  v3[26] = v12;
  v3[27] = sub_22C382A94();
  v3[28] = swift_task_alloc();
  v13 = swift_task_alloc();
  v3[29] = v13;
  *v13 = v3;
  v13[1] = sub_22C89278C;

  return sub_22C893544(a2);
}

uint64_t sub_22C89278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370AE4();
  sub_22C3743E4();
  v13 = v12;
  v14 = *v11;
  sub_22C369A30();
  *v15 = v14;
  v16 = *v11;
  sub_22C369A30();
  *v17 = v16;

  if (v10)
  {

    sub_22C369A24();
    sub_22C372E90();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    *(v14 + 288) = v13;
    sub_22C372E90();

    return MEMORY[0x2822009F8](v27, v28, v29);
  }
}

uint64_t sub_22C89290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370AE4();
  sub_22C3743E4();
  switch(*(v10 + 288))
  {
    case 1:
      v35 = *(v10 + 80);
      v34 = type metadata accessor for DialogOutput(0);
      v32 = v35;
      v33 = 1;
      goto LABEL_9;
    case 2:
      sub_22C374168(*(v10 + 96), *(*(v10 + 96) + 24));
      *(v10 + 264) = sub_22C909F0C();
      sub_22C907FFC();
      sub_22C907FDC();
      sub_22C907FEC();
      v16 = swift_task_alloc();
      *(v10 + 272) = v16;
      *v16 = v10;
      v16[1] = sub_22C8930F8;
      goto LABEL_4;
    case 3:
      v26 = *(v10 + 80);
      v27 = *MEMORY[0x277D1C9E8];
      v28 = sub_22C90240C();
      sub_22C36985C();
      v30 = *(v29 + 104);
      v30(v26, v27, v28);
      v31 = type metadata accessor for DialogOutput(0);
      v30(v26 + *(v31 + 20), v27, v28);
      v32 = v26;
      v33 = 0;
      v34 = v31;
LABEL_9:
      v36 = sub_22C36C640(v32, v33, 1, v34);
      sub_22C378970(v36, v37, v38, v39, v40, v41, v42, v43);

      sub_22C369A24();
      sub_22C372E90();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10);
    default:
      v11 = *(v10 + 96);
      sub_22C3A5908(&qword_27D9BAB38, &qword_22C92C1F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      *(inited + 32) = 0x7954656369766564;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = static MobileGestalt.answerProductKey.getter();
      *(inited + 56) = v13;
      v14 = sub_22C909F0C();
      sub_22C374168(v11, v11[3]);
      *(v10 + 240) = sub_22C8A598C(v14);

      sub_22C907FFC();
      sub_22C907FDC();
      sub_22C907FEC();
      v15 = swift_task_alloc();
      *(v10 + 248) = v15;
      *v15 = v10;
      v15[1] = sub_22C892CAC;
LABEL_4:
      sub_22C372E90();

      return sub_22C87CD94(v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_22C892CAC()
{
  sub_22C369A30();
  *v3 = v2;
  v22 = *(v4 + 192);
  sub_22C807C64();
  v6 = *(v5 + 176);
  v21 = *(v7 + 168);
  sub_22C807C64();
  v20 = *(v8 + 160);
  sub_22C807C64();
  v10 = *(v9 + 144);
  v12 = *(v11 + 136);
  v13 = *v1;
  sub_22C369A30();
  *v14 = v13;
  *(v15 + 256) = v0;

  v16 = sub_22C36CC9C();
  v17(v16);
  (*(v10 + 8))(v20, v12);
  (*(v6 + 8))(v22, v21);
  if (v0)
  {
    v18 = sub_22C893060;
  }

  else
  {
    v18 = sub_22C892EEC;
  }

  return MEMORY[0x2822009F8](v18, 0, 0);
}

uint64_t sub_22C892EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370AE4();
  sub_22C3743E4();
  v11 = *(v10 + 80);
  v12 = sub_22C9022FC();
  v14 = v13;
  v15 = sub_22C90231C();
  v17 = v16;
  v18 = sub_22C36BBCC();
  v19(v18);
  *v11 = v12;
  v11[1] = v14;
  sub_22C90240C();
  sub_22C36985C();
  v21 = *(v20 + 104);
  sub_22C37A060();
  v21();
  v22 = *(v10 + 80);
  v23 = type metadata accessor for DialogOutput(0);
  if (v17)
  {
    v24 = sub_22C373CB0(v23);
    *v24 = v15;
    v24[1] = v17;
    v22 = *(v10 + 80);
  }

  else
  {
    sub_22C373CB0(v23);
  }

  sub_22C37A060();
  v21();
  type metadata accessor for DialogOutput(0);
  v25 = sub_22C36C640(v22, 0, 1, v12);
  sub_22C378970(v25, v26, v27, v28, v29, v30, v31, v32);

  sub_22C369A24();
  sub_22C372E90();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_22C8930F8()
{
  sub_22C369A30();
  *v3 = v2;
  v22 = *(v4 + 184);
  sub_22C807C64();
  v6 = *(v5 + 176);
  v21 = *(v7 + 168);
  sub_22C807C64();
  v20 = *(v8 + 152);
  sub_22C807C64();
  v10 = *(v9 + 144);
  v12 = *(v11 + 136);
  v13 = *v1;
  sub_22C369A30();
  *v14 = v13;
  *(v15 + 280) = v0;

  v16 = sub_22C36CC9C();
  v17(v16);
  (*(v10 + 8))(v20, v12);
  (*(v6 + 8))(v22, v21);
  if (v0)
  {
    v18 = sub_22C8934AC;
  }

  else
  {
    v18 = sub_22C893338;
  }

  return MEMORY[0x2822009F8](v18, 0, 0);
}

uint64_t sub_22C893338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370AE4();
  sub_22C3743E4();
  v11 = *(v10 + 80);
  v12 = sub_22C9022FC();
  v14 = v13;
  v15 = sub_22C90231C();
  v17 = v16;
  v18 = sub_22C36BBCC();
  v19(v18);
  *v11 = v12;
  v11[1] = v14;
  sub_22C90240C();
  sub_22C36985C();
  v21 = *(v20 + 104);
  sub_22C37A060();
  v21();
  v22 = *(v10 + 80);
  v23 = type metadata accessor for DialogOutput(0);
  if (v17)
  {
    v24 = sub_22C373CB0(v23);
    *v24 = v15;
    v24[1] = v17;
    v22 = *(v10 + 80);
  }

  else
  {
    sub_22C373CB0(v23);
  }

  sub_22C37A060();
  v21();
  type metadata accessor for DialogOutput(0);
  v25 = sub_22C36C640(v22, 0, 1, v12);
  sub_22C378970(v25, v26, v27, v28, v29, v30, v31, v32);

  sub_22C369A24();
  sub_22C372E90();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_22C893544(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_22C90806C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_22C908FCC();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = sub_22C908EAC();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_22C90687C();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = sub_22C90977C();
  v1[19] = v6;
  v1[20] = *(v6 - 8);
  v1[21] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v1[22] = v7;
  v1[23] = *(v7 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v8 = sub_22C908D6C();
  v1[29] = v8;
  v1[30] = *(v8 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v9 = sub_22C9026BC();
  v1[36] = v9;
  v1[37] = *(v9 - 8);
  v1[38] = swift_task_alloc();
  v10 = sub_22C907DEC();
  v1[39] = v10;
  v1[40] = *(v10 - 8);
  v1[41] = swift_task_alloc();
  v11 = sub_22C906ECC();
  v1[42] = v11;
  v1[43] = *(v11 - 8);
  v1[44] = swift_task_alloc();
  v12 = sub_22C9020CC();
  v1[45] = v12;
  v1[46] = *(v12 - 8);
  v1[47] = swift_task_alloc();
  v13 = sub_22C907C5C();
  v1[48] = v13;
  v1[49] = *(v13 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C893AA8, 0, 0);
}

uint64_t sub_22C893AA8(uint64_t a1)
{
  v160 = v1;
  result = sub_22C90804C();
  v154 = *(result + 16);
  if (!v154)
  {
LABEL_35:

LABEL_36:
    v72 = 1;
    goto LABEL_37;
  }

  v3 = 0;
  v4 = v1[49];
  v5 = v1[46];
  v6 = v1[37];
  v7 = v1[6];
  v152 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v151 = (v1[40] + 8);
  v150 = (v6 + 88);
  v149 = *MEMORY[0x277D1CBF0];
  v153 = v4;
  v8 = (v4 + 8);
  v143 = (v6 + 96);
  v142 = (v5 + 32);
  v156 = *MEMORY[0x277D72138];
  v157 = v1[30];
  v128 = (v1[20] + 8);
  v9 = (v5 + 8);
  v141 = *MEMORY[0x277D1DC20];
  v140 = *MEMORY[0x277D1DC30];
  v139 = *MEMORY[0x277D1DC28];
  v136 = (v7 + 8);
  v137 = (v7 + 16);
  v135 = (v1[16] + 8);
  v138 = *MEMORY[0x277D1DC18];
  v129 = (v5 + 8);
  v130 = (v4 + 8);
  v148 = result;
  while (1)
  {
    if (v3 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v10 = v1[41];
    v12 = v1[38];
    v11 = v1[39];
    v13 = v1[36];
    v155 = v3;
    (*(v153 + 16))(v1[51], v152 + *(v153 + 72) * v3, v1[48]);
    sub_22C907C0C();
    sub_22C906EBC();
    v14 = sub_22C89491C();
    v15(v14);
    sub_22C907DAC();
    (*v151)(v10, v11);
    if ((*v150)(v12, v13) == v149)
    {
      break;
    }

    (*v8)(v1[51], v1[48]);
    v23 = sub_22C36BBCC();
LABEL_31:
    v25(v23, v24);
LABEL_32:
    result = v148;
    v3 = v155 + 1;
    if (v155 + 1 == v154)
    {
      goto LABEL_35;
    }
  }

  v16 = v1[47];
  v17 = v1[45];
  v18 = v1[38];
  v19 = v1[35];
  v20 = v1[12];
  (*v143)(v18, v1[36]);
  (*v142)(v16, v18, v17);
  sub_22C90803C();
  sub_22C907C3C();
  if (sub_22C370B74(v19, 1, v20) != 1)
  {
    v26 = sub_22C908DEC();
    v27 = sub_22C89491C();
    v28(v27);
    v29 = 0;
    v30 = *(v26 + 16);
    do
    {
      v31 = v29;
      if (v30 == v29)
      {
        break;
      }

      if (v29 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      v33 = v1[31];
      v32 = v1[32];
      v34 = v1[29];
      (*(v157 + 16))(v32, v26 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v29++, v34);
      (*(v157 + 104))(v33, v156, v34);
      v19 = sub_22C908D5C();
      v35 = *(v157 + 8);
      v35(v33, v34);
      v35(v32, v34);
    }

    while ((v19 & 1) == 0);
    v8 = v130;
    v22 = *v130;
    (*v130)(v1[50], v1[48]);

    if (v30 == v31)
    {
      v9 = v129;
      goto LABEL_14;
    }

    sub_22C90405C();
    v76 = sub_22C9063CC();
    v86 = sub_22C90AACC();
    sub_22C36DB24(v86);
    sub_22C3751FC();
    if (v87)
    {
      *sub_22C36D240() = 0;
      sub_22C371F58(&dword_22C366000, v88, v89, "Audio starting, suppressing dialog.");
      sub_22C3800A8();
    }

    goto LABEL_51;
  }

  v21 = v1[35];
  v22 = *v8;
  (*v8)(v1[50], v1[48]);
  sub_22C89485C(v21);
LABEL_14:
  v36 = v1[34];
  v37 = v1[12];
  sub_22C907C3C();
  if (sub_22C370B74(v36, 1, v37) == 1)
  {
    sub_22C89485C(v1[34]);
    v38 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    v40 = v1[21];
    v41 = v1[19];
    sub_22C908DDC();
    sub_22C38936C();
    v42 = sub_22C36BBCC();
    v43(v42);
    v38 = sub_22C9096FC();
    v39 = v44;
    (*v128)(v40, v41);
  }

  v1[2] = v38;
  v1[3] = v39;
  v45 = swift_task_alloc();
  *(v45 + 16) = v1 + 2;
  v46 = sub_22C5EC08C(sub_22C3AC11C, v45, &unk_283FB05B0);

  if (!v46 && (sub_22C9020BC() & 1) == 0)
  {
    (*v9)(v1[47], v1[45]);
    v71 = sub_22C36BBCC();
    v22(v71);
    goto LABEL_32;
  }

  sub_22C907FDC();
  v47 = sub_22C89491C();
  v49 = v48(v47);
  if (v49 != v141 && v49 != v140)
  {
    if (v49 != v139 && v49 != v138)
    {
      v52 = v1[7];
      v54 = v1[4];
      v53 = v1[5];
      sub_22C90405C();
      (*v137)(v52, v54, v53);
      v55 = sub_22C9063CC();
      v56 = sub_22C90AAEC();
      v57 = os_log_type_enabled(v55, v56);
      v58 = v1[51];
      v59 = v1[48];
      v146 = v1[45];
      v147 = v1[47];
      v144 = v1[22];
      v145 = v1[24];
      if (v57)
      {
        v133 = v1[51];
        v134 = v22;
        v60 = v1[7];
        v131 = v1[5];
        v61 = swift_slowAlloc();
        v132 = v59;
        v62 = swift_slowAlloc();
        v159[0] = v62;
        *v61 = 136315138;
        sub_22C907FDC();
        v63 = sub_22C90A1AC();
        v65 = v64;
        (*v136)(v60, v131);
        v66 = sub_22C36F9F4(v63, v65, v159);

        *(v61 + 4) = v66;
        _os_log_impl(&dword_22C366000, v55, v56, "Unknown response mode %s", v61, 0xCu);
        sub_22C36FF94(v62);
        MEMORY[0x2318B9880](v62, -1, -1);
        MEMORY[0x2318B9880](v61, -1, -1);

        sub_22C36A57C();
        v67(v145, v144);
        (*v9)(v147, v146);
        (v134)(v133, v132);
      }

      else
      {

        v68 = sub_22C36BBCC();
        v69(v68);
        sub_22C36A57C();
        v70(v145, v144);
        (*v9)(v147, v146);
        (v22)(v58, v59);
      }

      v23 = v1[18];
      v24 = v1[15];
      v25 = *v135;
      goto LABEL_31;
    }

    sub_22C90405C();
    v76 = sub_22C9063CC();
    v77 = sub_22C90AACC();
    sub_22C36DB24(v77);
    sub_22C3751FC();
    if (v78)
    {
      v79 = sub_22C36D240();
      sub_22C37F644(v79);
      sub_22C371F58(&dword_22C366000, v80, v81, "Display only/forward in-app response, suppressing dialog.");
      sub_22C3800A8();

      v82 = sub_22C36B868();
      v83(v82);
      v84 = sub_22C36D264();
      v85(v84);
LABEL_52:
      sub_22C37A4B4();
      v109();
      v72 = 3;
      goto LABEL_37;
    }

LABEL_51:

    v105 = sub_22C36B868();
    v106(v105);
    v107 = sub_22C36D264();
    v108(v107);
    goto LABEL_52;
  }

  v74 = v1[33];
  v75 = v1[12];

  sub_22C907C3C();
  if (sub_22C370B74(v74, 1, v75) == 1)
  {
    sub_22C89485C(v1[33]);
    goto LABEL_54;
  }

  v90 = v1[11];
  v91 = v1[9];
  v92 = v1[8];
  (*(v1[13] + 32))(v1[14], v1[33], v1[12]);
  sub_22C908E9C();
  sub_22C908FAC();
  sub_22C8948C4();
  v93 = sub_22C90AE0C();
  v94 = *(v91 + 8);
  v95 = sub_22C36D264();
  v94(v95);
  (v94)(v90, v92);
  if ((v93 & 1) == 0)
  {
    sub_22C38936C();
    v110();
LABEL_54:
    sub_22C90405C();
    v111 = sub_22C9063CC();
    v112 = sub_22C90AACC();
    sub_22C36DB24(v112);
    sub_22C3751FC();
    if (v113)
    {
      v114 = sub_22C36D240();
      sub_22C37F644(v114);
      sub_22C371F58(&dword_22C366000, v115, v116, "Voice only/forward in-app response, generate response.");
      sub_22C3800A8();
    }

    v117 = sub_22C36B868();
    v118(v117);
    v119 = sub_22C36D264();
    v120(v119);
    sub_22C37A4B4();
    v121();
    goto LABEL_36;
  }

  sub_22C90405C();
  v19 = sub_22C9063CC();
  v96 = sub_22C90AACC();
  v97 = os_log_type_enabled(v19, v96);
  v26 = v1[14];
  v30 = v1[12];
  if (v97)
  {
    v158 = 2;
    v98 = sub_22C36D240();
    *v98 = 0;
    _os_log_impl(&dword_22C366000, v19, v96, "Voice only/forward in-app response, inform user the tool executed successfully.", v98, 2u);
    MEMORY[0x2318B9880](v98, -1, -1);

    sub_22C36A57C();
    v99 = sub_22C36CC9C();
    v100(v99);
    sub_22C38936C();
    v101(v26, v30);
    v102 = sub_22C37779C();
    v103(v102);
    sub_22C37A4B4();
    v104();
    goto LABEL_38;
  }

LABEL_58:

  sub_22C36A57C();
  v122 = sub_22C36CC9C();
  v123(v122);
  sub_22C38936C();
  v124(v26, v30);
  v125 = sub_22C37779C();
  v126(v125);
  sub_22C37A4B4();
  v127();
  v72 = 2;
LABEL_37:
  v158 = v72;
LABEL_38:

  v73 = v1[1];

  return v73(v158);
}

uint64_t sub_22C89485C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C8948C4()
{
  result = qword_27D9BF1B8;
  if (!qword_27D9BF1B8)
  {
    sub_22C908FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF1B8);
  }

  return result;
}

uint64_t sub_22C894968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C900F8C();
  sub_22C90806C();
  sub_22C894B48(&qword_27D9C0F10, MEMORY[0x277D1E2D8], MEMORY[0x277D1E2D0]);
  return sub_22C900F5C();
}

uint64_t ResponseGenerationFeatureStoreService.insert(interactionId:input:)()
{
  sub_22C373CC0();
  sub_22C90806C();
  sub_22C894B48(&qword_27D9C0F10, MEMORY[0x277D1E2D8], MEMORY[0x277D1E2D0]);
  sub_22C36B87C();
  return sub_22C900F5C();
}

uint64_t FeatureStoreServiceWrapper.insert(interactionId:triageReport:)()
{
  sub_22C373CC0();
  type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C894B48(&qword_27D9C0F18, type metadata accessor for ResponseGenerationTriageReport, &protocol conformance descriptor for ResponseGenerationTriageReport);
  sub_22C894B48(&qword_27D9C0F20, type metadata accessor for ResponseGenerationTriageReport, &protocol conformance descriptor for ResponseGenerationTriageReport);
  sub_22C36B87C();
  return sub_22C900F7C();
}

uint64_t sub_22C894B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for FeatureStoreServiceWrapper(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C894CA8(uint64_t a1)
{
  result = sub_22C908AEC();
  if (v2 <= 0x3F)
  {
    result = sub_22C90077C();
    if (v3 <= 0x3F)
    {
      result = sub_22C9021BC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C894D44()
{
  v0 = sub_22C90687C();
  sub_22C3F0160(v0, qword_27D9C0F28);
  v1 = sub_22C37AA60(v0, qword_27D9C0F28);
  v2 = *MEMORY[0x277D1DC28];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_22C894DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v366 = a1;
  v339 = a2;
  v322 = sub_22C90687C();
  sub_22C36985C();
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  sub_22C3698F8(v3);
  v4 = sub_22C9021BC();
  v5 = sub_22C36A7A4(v4, &v368);
  v335 = v6;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C3698F8(v7);
  v8 = sub_22C90077C();
  v9 = sub_22C36A7A4(v8, &v364);
  v332 = v10;
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  sub_22C36D234(v11);
  v12 = sub_22C3A5908(&qword_27D9BF1C8, &unk_22C922208);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  sub_22C36D234(v14);
  v15 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  sub_22C3698F8(v18);
  v19 = sub_22C906B9C();
  v20 = sub_22C36A7A4(v19, &v341);
  v309 = v21;
  MEMORY[0x28223BE20](v20);
  sub_22C3698A8();
  sub_22C3698F8(v22);
  v23 = sub_22C906B6C();
  v24 = sub_22C36A7A4(v23, &v344);
  v312 = v25;
  MEMORY[0x28223BE20](v24);
  sub_22C3698A8();
  sub_22C3698F8(v26);
  v27 = sub_22C90720C();
  v28 = sub_22C36A7A4(v27, &v382);
  v342 = v29;
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  sub_22C3698F8(v30);
  v365 = sub_22C90873C();
  sub_22C369824();
  v341 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  v364 = v33;
  sub_22C36BA0C();
  v370 = sub_22C906C4C();
  sub_22C369824();
  v348 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  v369 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  v373 = v38;
  v39 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v39);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  sub_22C36D5B4();
  sub_22C3698F8(v41);
  v42 = sub_22C9025EC();
  v43 = sub_22C36A7A4(v42, &v348);
  v316 = v44;
  MEMORY[0x28223BE20](v43);
  sub_22C3698A8();
  sub_22C3698F8(v45);
  v46 = sub_22C901ECC();
  v47 = sub_22C36A7A4(v46, &v350);
  v314 = v48;
  MEMORY[0x28223BE20](v47);
  sub_22C3698A8();
  sub_22C3698F8(v49);
  v50 = sub_22C907DEC();
  v51 = sub_22C36A7A4(v50, &v359);
  v327 = v52;
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  sub_22C36D234(v53);
  v54 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  sub_22C369914(v54);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v55);
  sub_22C36D5B4();
  sub_22C3698F8(v56);
  v57 = sub_22C9026BC();
  v58 = sub_22C36A7A4(v57, &v357);
  v325 = v59;
  MEMORY[0x28223BE20](v58);
  v61 = &v299 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22C9029AC();
  v63 = sub_22C36A7A4(v62, &v351);
  v344 = v64;
  MEMORY[0x28223BE20](v63);
  sub_22C3698A8();
  sub_22C36D234(v65);
  v66 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v66);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v67);
  sub_22C36D5B4();
  v367 = v68;
  sub_22C36BA0C();
  v368 = sub_22C906ECC();
  sub_22C369824();
  v329 = v69;
  MEMORY[0x28223BE20](v70);
  sub_22C3698A8();
  v377 = v71;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v361 = v73;
  v362 = v72;
  MEMORY[0x28223BE20](v72);
  sub_22C3698E4();
  v360 = v74;
  MEMORY[0x28223BE20](v75);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA64();
  sub_22C3698F8(v79);
  v375 = sub_22C9089DC();
  sub_22C369824();
  v352 = v80;
  MEMORY[0x28223BE20](v81);
  sub_22C3698E4();
  v378 = v82;
  MEMORY[0x28223BE20](v83);
  sub_22C36BA64();
  sub_22C3698F8(v84);
  v85 = sub_22C90819C();
  v86 = sub_22C36A7A4(v85, &v381);
  v350 = v87;
  MEMORY[0x28223BE20](v86);
  sub_22C3698A8();
  sub_22C36D234(v88);
  v89 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v89);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v90);
  sub_22C36D5B4();
  v376 = v91;
  sub_22C36BA0C();
  v363 = sub_22C908A0C();
  sub_22C369824();
  v379 = v92;
  MEMORY[0x28223BE20](v93);
  sub_22C3698A8();
  sub_22C3698F8(v94);
  v374 = sub_22C90634C();
  sub_22C369824();
  v96 = v95;
  v98 = MEMORY[0x28223BE20](v97);
  v100 = &v299 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v102 = &v299 - v101;
  v372 = sub_22C90636C();
  sub_22C369824();
  v104 = v103;
  MEMORY[0x28223BE20](v105);
  v107 = &v299 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9036AC();
  sub_22C90633C();
  v108 = sub_22C90635C();
  v109 = sub_22C90AB6C();
  v110 = sub_22C90AC5C();
  v323 = v61;
  if (v110)
  {
    v111 = sub_22C36D240();
    *v111 = 0;
    v112 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v108, v109, v112, "ResponseGeneration.responseGenerationInput", "", v111, 2u);
    sub_22C3699EC();
  }

  v113 = v374;
  (*(v96 + 16))(v100, v102, v374);
  sub_22C9063AC();
  swift_allocObject();
  v114 = sub_22C90639C();
  (*(v96 + 8))(v102, v113);
  (*(v104 + 8))(v107, v372);
  v115 = v376;
  sub_22C3A9540();
  v116 = v363;
  if (sub_22C370B74(v115, 1, v363) == 1)
  {
    sub_22C36DD28(v115, &qword_27D9BA808, &qword_22C90C6E0);
LABEL_18:
    v156 = v360;
    sub_22C90405C();
    v157 = sub_22C9063CC();
    v158 = sub_22C90AADC();
    if (sub_22C369E90(v158))
    {
      *sub_22C36D240() = 0;
      sub_22C38BFA4();
      _os_log_impl(v159, v160, v161, v162, v163, 2u);
      sub_22C3699EC();
    }

    (*(v361 + 8))(v156, v362);
    sub_22C899300();
    swift_allocError();
    *v164 = 4;
    swift_willThrow();
    goto LABEL_84;
  }

  v117 = v379;
  v118 = v357;
  (*(v379 + 32))(v357, v115, v116);
  v119 = v358;
  sub_22C9089EC();
  v120 = v352;
  v121 = v375;
  v371 = *(v352 + 88);
  v372 = v352 + 88;
  if (v371(v119, v375) != *MEMORY[0x277D1E838])
  {
    (*(v117 + 8))(v118, v116);
    (*(v120 + 8))(v119, v121);
    goto LABEL_18;
  }

  v304 = v114;
  v122 = *(v120 + 96);
  v360 = v120 + 96;
  v359 = v122;
  v122(v119, v121);
  v123 = v349;
  (*(v350 + 32))(v349, v119, v351);
  sub_22C3A8E40();
  v376 = v125;
  if (!v125)
  {
    v165 = v356;
    sub_22C90405C();
    v166 = sub_22C9063CC();
    v167 = sub_22C90AADC();
    if (sub_22C369E90(v167))
    {
      *sub_22C36D240() = 0;
      sub_22C38BFA4();
      _os_log_impl(v168, v169, v170, v171, v172, 2u);
      sub_22C3699EC();
    }

    (*(v361 + 8))(v165, v362);
    sub_22C899300();
    swift_allocError();
    *v173 = 1;
    swift_willThrow();
    sub_22C36FB04();
    v174(v123, v351);
    (*(v117 + 8))(v118, v116);
LABEL_83:
    v114 = v304;
LABEL_84:
    sub_22C896CF4(v114);
  }

  v374 = v124;
  v126 = MEMORY[0x2318B5650]();
  sub_22C370208();
  sub_22C90405C();
  v127 = v116;
  v128 = sub_22C9063CC();
  v129 = sub_22C90AACC();
  v130 = os_log_type_enabled(v128, v129);
  v305 = v126;
  if (v130)
  {
    v302 = v129;
    v131 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    v381 = v301;
    *v131 = 134218242;
    *(v131 + 4) = *(v126 + 16);
    v303 = v131;
    *(v131 + 12) = 2080;
    v132 = *(v126 + 16);
    v133 = MEMORY[0x277D84F90];
    v134 = v376;
    if (v132)
    {
      v300 = v128;
      v380 = MEMORY[0x277D84F90];

      sub_22C3B5E2C(0, v132, 0, v135, v136, v137, v138);
      v133 = v380;
      v356 = *(v329 + 16);
      v139 = v126 + ((*(v329 + 80) + 32) & ~*(v329 + 80));
      v355 = *(v329 + 72);
      v358 = v329 + 16;
      v140 = (v329 + 8);
      do
      {
        v141 = v368;
        v356(v377, v139, v368);
        v142 = v367;
        sub_22C906E9C();
        v143 = sub_22C90769C();
        sub_22C3724D4(v142);
        if (v229)
        {
          sub_22C36DD28(v142, &qword_27D9BF330, &unk_22C923250);
          v148 = 0xE100000000000000;
          v146 = 63;
        }

        else
        {
          v144 = sub_22C90768C();
          v145 = v142;
          v146 = v144;
          v148 = v147;
          (*(*(v143 - 8) + 8))(v145, v143);
        }

        (*v140)(v377, v141);
        v380 = v133;
        v154 = *(v133 + 16);
        v153 = *(v133 + 24);
        if (v154 >= v153 >> 1)
        {
          sub_22C3B5E2C(v153 > 1, v154 + 1, 1, v149, v150, v151, v152);
          v133 = v380;
        }

        *(v133 + 16) = v154 + 1;
        v155 = v133 + 16 * v154;
        *(v155 + 32) = v146;
        *(v155 + 40) = v148;
        v139 += v355;
        --v132;
        v134 = v376;
      }

      while (v132);
      v126 = v305;

      v120 = v352;
      v128 = v300;
    }

    MEMORY[0x2318B7AD0](v133, MEMORY[0x277D837D0]);

    v177 = sub_22C36BA00();
    v180 = sub_22C36F9F4(v177, v178, v179);

    v127 = v303;
    *(v303 + 14) = v180;
    _os_log_impl(&dword_22C366000, v128, v302, "%ld statement result(s) for %s", v127, 0x16u);
    sub_22C36FF94(v301);
    sub_22C3699EC();
    sub_22C3699EC();

    v181 = sub_22C899574();
    v182(v181);
  }

  else
  {

    v175 = sub_22C899574();
    v176(v175);
    v134 = v376;
  }

  v183 = v343;
  sub_22C37A078();
  sub_22C3A59D8(v126);
  v184 = v368;
  v185 = sub_22C370B74(v127, 1, v368);
  v186 = v344;
  if (v185 == 1)
  {
    sub_22C36DD28(v127, &qword_27D9BC0A0, &unk_22C922F30);
  }

  else
  {
    v187 = v324;
    sub_22C906EBC();
    sub_22C36FB04();
    v188(v127, v184);
    sub_22C370208();
    v189 = v187;
    sub_22C907DAC();
    sub_22C36FB04();
    v190(v187, v328);
    sub_22C37A078();
    v192 = v326;
    if ((*(v191 + 88))(v184, v326) == *MEMORY[0x277D1CBD0])
    {
      (*(v189 + 96))(v184, v192);
      v193 = v184;
      v194 = v320;
      (*(v186 + 32))(v183, v193, v320);
      v195 = v315;
      sub_22C90298C();
      v196 = v318;
      sub_22C9025BC();
      v197 = v196;
      sub_22C36FB04();
      v198(v195, v317);
      v199 = v196;
      v200 = v319;
      if (sub_22C370B74(v199, 1, v319) == 1)
      {
        (*(v186 + 8))(v183, v194);
        sub_22C36DD28(v197, &qword_27D9BF318, &qword_22C9225A0);
      }

      else
      {
        v201 = v314;
        v202 = v307;
        v203 = (*(v314 + 32))(v307, v197, v200);
        MEMORY[0x28223BE20](v203);
        *(&v299 - 2) = v202;

        v204 = sub_22C370AFC();
        v207 = sub_22C5EC59C(v204, v205, v206);

        if (v207)
        {
          v345 = &v299 - 4;
          sub_22C36FB04();
          v208(v343, v320);
          (*(v201 + 8))(v202, v200);
        }

        else
        {
          v209 = sub_22C9087DC();
          MEMORY[0x28223BE20](v209);
          *(&v299 - 2) = v202;
          sub_22C792458();
          v211 = v210;

          v381 = v211;

          sub_22C3CC5E4(v212);

          v213 = v381;
          sub_22C37A078();
          sub_22C90405C();

          v214 = sub_22C9063CC();
          v215 = sub_22C90AACC();
          if (sub_22C369E90(v215))
          {
            v216 = swift_slowAlloc();
            *v216 = 134217984;
            *(v216 + 4) = v213[2];

            sub_22C38BFA4();
            _os_log_impl(v217, v218, v219, v220, v221, 0xCu);
            sub_22C3699EC();
          }

          else
          {
          }

          v222 = v314;
          v223 = v320;
          v224 = v344;
          v305 = v213;
          v345 = &v299 - 4;

          (v303)(v306, v362);
          (*(v224 + 8))(v343, v223);
          (*(v222 + 8))(v202, v319);
        }
      }

      v120 = v352;
    }

    else
    {
      (*(v189 + 8))(v184, v192);
    }
  }

  v377 = sub_22C9087DC();
  v225 = *(v377 + 16);
  LODWORD(v368) = *MEMORY[0x277D1E858];
  LODWORD(v356) = *MEMORY[0x277D1E778];
  v340 = v120 + 8;
  v329 = v342 + 32;
  v342 += 8;
  v355 = v341 + 32;
  v352 = v341 + 8;
  v367 = (v348 + 16);
  LODWORD(v358) = *MEMORY[0x277D1DDC8];
  v347 = *MEMORY[0x277D1DDD0];
  LODWORD(v344) = *MEMORY[0x277D1DDD8];
  v226 = (v348 + 8);
  LODWORD(v343) = *MEMORY[0x277D1DD78];
  swift_bridgeObjectRetain_n();
  if (!v225)
  {
LABEL_59:

    v252 = swift_bridgeObjectRelease_n();
    v378 = 0;
    v375 = 0xE000000000000000;
    v253 = v338;
    v254 = v346;
    v255 = v134;
LABEL_73:
    MEMORY[0x28223BE20](v252);
    v273 = v366;
    *(&v299 - 2) = v366;
    *(&v299 - 1) = v253;

    v274 = sub_22C370AFC();
    sub_22C3B282C(v274, v275, v276);

    v277 = sub_22C9087DC();
    MEMORY[0x28223BE20](v277);
    v278 = v374;
    *(&v299 - 4) = v273;
    *(&v299 - 3) = v278;
    *(&v299 - 2) = v255;
    sub_22C792254();
    v280 = v279;

    sub_22C3A59A8(v280);

    v281 = sub_22C903B1C();
    sub_22C3724D4(v254);
    if (v229)
    {
      v282 = v321;
      sub_22C90405C();
      v283 = sub_22C9063CC();
      v284 = sub_22C90AACC();
      if (os_log_type_enabled(v283, v284))
      {
        v285 = sub_22C36D240();
        *v285 = 0;
        _os_log_impl(&dword_22C366000, v283, v284, "No Siri request context", v285, 2u);
        v254 = v346;
        sub_22C3699EC();
      }

      (v303)(v282, v362);
    }

    v286 = v331;
    sub_22C379DF8(v254, v331, &qword_27D9BD760, &qword_22C922200);
    sub_22C3724D4(v286);
    if (v229)
    {
      sub_22C36DD28(v286, &qword_27D9BD760, &qword_22C922200);
      v287 = v330;
      sub_22C36C640(v330, 1, 1, v322);
    }

    else
    {
      v287 = v330;
      StructuredContext.SiriRequestContext.mode.getter(v330);
      (*(*(v281 - 8) + 8))(v286, v281);
    }

    v288 = type metadata accessor for DefaultResponseGenerationInputBuilder(0);
    (*(v332 + 16))(v334, v253 + *(v288 + 20), v333);
    (*(v335 + 16))(v336, v253 + *(v288 + 24), v337);
    sub_22C37A078();
    sub_22C898AF0(v287, v289);
    sub_22C90800C();
    if (&v299 == 32)
    {
      sub_22C36DD28(v287, &qword_27D9BF1C8, &unk_22C922208);
      sub_22C36FB04();
      v295 = sub_22C89958C();
      v296(v295);
      v297 = sub_22C89955C();
      v298(v297);
      sub_22C36DD28(v254, &qword_27D9BD760, &qword_22C922200);

      sub_22C896CF4(v304);
    }

    sub_22C36DD28(v287, &qword_27D9BF1C8, &unk_22C922208);
    sub_22C36FB04();
    v290 = sub_22C89958C();
    v291(v290);
    v292 = sub_22C89955C();
    v293(v292);
    sub_22C36DD28(v254, &qword_27D9BD760, &qword_22C922200);

    goto LABEL_83;
  }

  while (1)
  {
    v227 = v225 - 1;
    v229 = sub_22C90891C() == v374 && v134 == v228;
    if (v229)
    {
    }

    else
    {
      v230 = sub_22C90B4FC();

      if ((v230 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v231 = v378;
    sub_22C9089EC();
    v232 = v375;
    v233 = v371(v231, v375);
    if (v233 == v368)
    {
      v234 = sub_22C36DC60();
      v235(v234);
      sub_22C36BA4C();
      v237 = v364;
      v236 = v365;
      v238(v364, v231, v365);
      v239 = v373;
      sub_22C90763C();
      goto LABEL_52;
    }

    sub_22C369908();
    if (v229)
    {
      break;
    }

    sub_22C36BA4C();
    v251(v378, v232);
LABEL_58:
    --v225;
    if (!v227)
    {
      goto LABEL_59;
    }
  }

  v240 = v378;
  v241 = sub_22C36DC60();
  v242(v241);
  sub_22C36BA4C();
  v237 = v353;
  v236 = v354;
  v243(v353, v240, v354);
  v239 = v373;
  sub_22C9071FC();
LABEL_52:
  sub_22C36BA4C();
  v244(v237, v236);
  v245 = v369;
  v246 = v370;
  (*v367)(v369, v239, v370);
  v247 = sub_22C36BA00();
  v248(v247);
  sub_22C369908();
  if (v229)
  {
LABEL_57:
    v249 = v245;
    v250 = *v226;
    (*v226)(v239, v246);
    v250(v249, v246);
    v134 = v376;
    goto LABEL_58;
  }

  sub_22C369908();
  if (v229)
  {
    v256 = sub_22C36BA00();
    v257(v256);
    sub_22C370208();
    v259 = v246;
    v260 = v311;
    v261 = v313;
    (*(v258 + 32))(v311, v245, v313);
    sub_22C906B5C();
    goto LABEL_62;
  }

  sub_22C369908();
  if (!v229)
  {
    sub_22C369908();
    v239 = v373;
    if (!v229)
    {
      goto LABEL_88;
    }

    goto LABEL_57;
  }

  v262 = sub_22C36BA00();
  v263(v262);
  sub_22C370208();
  v259 = v246;
  v260 = v308;
  v261 = v310;
  (*(v264 + 32))(v308, v245, v310);
  sub_22C906B5C();
LABEL_62:
  (*(v225 + 7))(v260, v261);
  (*v226)(v373, v259);

  v254 = v346;
  if (v225 <= *(v377 + 16))
  {
    v265 = sub_22C90891C();
    v255 = v376;
    v267 = v265 == v374 && v376 == v266;
    v253 = v338;
    if (v267)
    {
    }

    else
    {
      v268 = sub_22C90B4FC();

      if ((v268 & 1) == 0)
      {

        goto LABEL_87;
      }
    }

    static Session.Transcript.userQuery(event:)();
    v270 = v269;
    v272 = v271;

    if (v272)
    {
      v375 = v272;
      v378 = v270;

      goto LABEL_73;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C896CF4(uint64_t a1)
{
  v29 = sub_22C90637C();
  v27 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9036AC();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v28 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v24 = v8;
    v25 = v7;
    v26 = v3;

    sub_22C9063BC();

    v12 = v27;
    v13 = v29;
    if ((*(v27 + 88))(v2, v29) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v2, v13);
      v29 = "%s";
      v15 = 2;
      v14 = 1;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = v15;
    *(v17 + 1) = v14;
    *(v17 + 2) = 2080;
    sub_22C90366C();
    v19 = sub_22C90AF7C();
    v21 = sub_22C36F9F4(v19, v20, &v30);

    *(v17 + 4) = v21;
    v22 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v28, v22, "ResponseGeneration.responseGenerationInput", v29, v17, 0xCu);
    sub_22C36FF94(v18);
    MEMORY[0x2318B9880](v18, -1, -1);
    MEMORY[0x2318B9880](v17, -1, -1);

    (*(v4 + 8))(v6, v26);
    return (*(v24 + 8))(v10, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_22C897098()
{
  v0 = sub_22C901FAC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  v7 = sub_22C906E1C();
  MEMORY[0x2318AF390](v7);
  v8 = sub_22C901F6C();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);
  return v8 & 1;
}

uint64_t sub_22C8971CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a1;
  v29 = a2;
  v2 = sub_22C901FAC();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_22C9089DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C906ECC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9089EC();
  if ((*(v9 + 88))(v11, v8) != *MEMORY[0x277D1E798])
  {
    (*(v9 + 8))(v11, v8);
LABEL_6:
    v22 = 1;
    v21 = v29;
    return sub_22C36C640(v21, v22, 1, v12);
  }

  (*(v9 + 96))(v11, v8);
  v25 = *(v13 + 32);
  v25(v15, v11, v12);
  v16 = sub_22C906E1C();
  MEMORY[0x2318AF390](v16);
  v17 = sub_22C901F6C();
  v18 = *(v27 + 8);
  v19 = v5;
  v20 = v28;
  v18(v19, v28);
  v18(v7, v20);
  if ((v17 & 1) == 0)
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_6;
  }

  v21 = v29;
  v25(v29, v15, v12);
  v22 = 0;
  return sub_22C36C640(v21, v22, 1, v12);
}

uint64_t sub_22C8974F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v116 = a2;
  v115 = a3;
  v113 = a4;
  v5 = sub_22C3A5908(&qword_27D9C0E00, &unk_22C92B4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v112 = &v91 - v6;
  v7 = sub_22C906ECC();
  v107 = *(v7 - 8);
  v108 = v7;
  MEMORY[0x28223BE20](v7);
  v111 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9C0F48, &unk_22C92B880);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v110 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v109 = &v91 - v12;
  v93 = sub_22C90077C();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v103 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  MEMORY[0x28223BE20](v14 - 8);
  v97 = &v91 - v15;
  v98 = sub_22C90769C();
  v95 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22C9063DC();
  v99 = *(v100 - 8);
  v17 = MEMORY[0x28223BE20](v100);
  v96 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v91 - v19;
  v120 = sub_22C9026BC();
  v21 = *(v120 - 8);
  v22 = MEMORY[0x28223BE20](v120);
  v106 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v114 = &v91 - v24;
  v118 = sub_22C907DEC();
  v123 = *(v118 - 8);
  v25 = MEMORY[0x28223BE20](v118);
  v104 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v91 - v27;
  v29 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v121 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v91 = &v91 - v33;
  MEMORY[0x28223BE20](v32);
  v124 = &v91 - v34;
  v35 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v91 - v36;
  v38 = sub_22C90069C();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22C3A5908(&qword_27D9BF9F0, &unk_22C92DAD0);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v119 = &v91 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v91 - v45;
  v122 = a1;
  sub_22C906E5C();
  v47 = sub_22C370B74(v37, 1, v38);
  v105 = v46;
  if (v47 == 1)
  {
    sub_22C36DD28(v37, &qword_27D9BB190, qword_22C90DD90);
    v48 = sub_22C9086FC();
    sub_22C36C640(v46, 1, 1, v48);
  }

  else
  {
    (*(v39 + 32))(v41, v37, v38);
    sub_22C3A6410(v46);
    (*(v39 + 8))(v41, v38);
  }

  v49 = sub_22C908EAC();
  sub_22C36C640(v124, 1, 1, v49);
  sub_22C906EBC();
  v50 = v114;
  sub_22C907DAC();
  v51 = *(v123 + 8);
  v123 += 8;
  v102 = v51;
  v51(v28, v118);
  v52 = (*(v21 + 88))(v50, v120) == *MEMORY[0x277D1CBB0];
  v53 = v103;
  v101 = v21;
  if (v52)
  {
    sub_22C90405C();
    v54 = sub_22C9063CC();
    v55 = sub_22C90AACC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_22C366000, v54, v55, "No tool definition for a tool disambiguation", v56, 2u);
      MEMORY[0x2318B9880](v56, -1, -1);
    }

    (*(v99 + 8))(v20, v100);
  }

  else
  {
    v57 = v97;
    sub_22C906E9C();
    v58 = v98;
    v59 = sub_22C370B74(v57, 1, v98);
    v60 = v117;
    if (v59 == 1)
    {
      sub_22C36DD28(v57, &qword_27D9BF330, &unk_22C923250);
    }

    else
    {
      v61 = v95;
      v62 = v57;
      v63 = v94;
      v64 = (*(v95 + 32))(v94, v62, v58);
      MEMORY[0x2318B5FE0](v64);
      v65 = v91;
      sub_22C908AFC();
      if (v60)
      {
        (*(v92 + 8))(v53, v93);
        sub_22C90405C();
        v66 = v60;
        v67 = sub_22C9063CC();
        v68 = sub_22C90AADC();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = 138412290;
          v71 = v60;
          v72 = _swift_stdlib_bridgeErrorToNSError();
          *(v69 + 4) = v72;
          *v70 = v72;
          _os_log_impl(&dword_22C366000, v67, v68, "Error querying tool database: %@", v69, 0xCu);
          sub_22C36DD28(v70, &qword_27D9BB158, qword_22C910FD0);
          v73 = v70;
          v50 = v114;
          MEMORY[0x2318B9880](v73, -1, -1);
          MEMORY[0x2318B9880](v69, -1, -1);
        }

        (*(v99 + 8))(v96, v100);
        (*(v61 + 8))(v63, v58);
        v117 = 0;
      }

      else
      {
        v117 = 0;
        (*(v92 + 8))(v53, v93);
        (*(v61 + 8))(v63, v58);
        v74 = v124;
        sub_22C36DD28(v124, &qword_27D9BC1E8, &qword_22C9123B0);
        sub_22C36C640(v65, 0, 1, v49);
        sub_22C528EA8(v65, v74);
      }
    }
  }

  v75 = v111;
  v76 = *(v101 + 8);
  v77 = v120;
  v76(v50, v120);
  v78 = v104;
  v79 = v122;
  sub_22C906EBC();
  v80 = v106;
  sub_22C907DAC();
  v102(v78, v118);
  v81 = v109;
  sub_22C898280(v80, v109);
  v76(v80, v77);
  sub_22C379DF8(v124, v121, &qword_27D9BC1E8, &qword_22C9123B0);
  v82 = v105;
  sub_22C379DF8(v105, v119, &qword_27D9BF9F0, &unk_22C92DAD0);
  (*(v107 + 16))(v75, v79, v108);
  v83 = sub_22C9087DC();
  MEMORY[0x28223BE20](v83);
  *(&v91 - 2) = v79;
  LOBYTE(v76) = sub_22C5EC6BC(sub_22C8993B0, (&v91 - 4), v83);

  if (v76)
  {
    v84 = *MEMORY[0x277D1DD48];
    v85 = sub_22C906A7C();
    v86 = v112;
    (*(*(v85 - 8) + 104))(v112, v84, v85);
    v87 = v86;
    v88 = 0;
    v89 = v85;
  }

  else
  {
    v89 = sub_22C906A7C();
    v87 = v112;
    v88 = 1;
  }

  sub_22C36C640(v87, v88, 1, v89);
  sub_22C379DF8(v81, v110, &qword_27D9C0F48, &unk_22C92B880);
  sub_22C907C2C();
  sub_22C36DD28(v81, &qword_27D9C0F48, &unk_22C92B880);
  sub_22C36DD28(v124, &qword_27D9BC1E8, &qword_22C9123B0);
  return sub_22C36DD28(v82, &qword_27D9BF9F0, &unk_22C92DAD0);
}

uint64_t sub_22C898280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v46 = a2;
  v2 = sub_22C9063DC();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C90947C();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90077C();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C908A8C();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C9093BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C90952C();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C9026BC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22C9020CC();
  v48 = *(v44 - 8);
  v23 = MEMORY[0x28223BE20](v44);
  MEMORY[0x28223BE20](v23);
  v47 = &v31 - v24;
  (*(v20 + 16))(v22, v45, v19);
  if ((*(v20 + 88))(v22, v19) == *MEMORY[0x277D1CBF0])
  {
    (*(v20 + 96))(v22, v19);
    v25 = v44;
    (*(v48 + 32))(v47, v22, v44);
    sub_22C90207C();
    sub_22C90935C();
    v26 = *(v13 + 8);
    v45 = v12;
    v26(v15, v12);
    v27 = sub_22C908B2C();
    MEMORY[0x2318B6010](v27);
    v28 = v41;
    sub_22C908B1C();
    (*(v39 + 8))(v8, v40);
    (*(v37 + 8))(v11, v38);
    sub_22C90946C();
    (*(v32 + 8))(v28, v33);
    (*(v42 + 8))(v18, v43);
    return (*(v48 + 8))(v47, v25);
  }

  else
  {
    (*(v20 + 8))(v22, v19);
    v29 = sub_22C909A5C();
    return sub_22C36C640(v46, 1, 1, v29);
  }
}

uint64_t sub_22C898AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BF1C8, &unk_22C922208);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  sub_22C379DF8(a1, &v22 - v9, &qword_27D9BF1C8, &unk_22C922208);
  v11 = sub_22C90687C();
  if (sub_22C370B74(v10, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a2, v10, v11);
  }

  sub_22C36DD28(v10, &qword_27D9BF1C8, &unk_22C922208);
  sub_22C90405C();
  v12 = sub_22C9063CC();
  v13 = sub_22C90AADC();
  v14 = 0x27D9BA000uLL;
  if (os_log_type_enabled(v12, v13))
  {
    v22 = a2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    if (qword_27D9BA7E0 != -1)
    {
      swift_once();
    }

    sub_22C37AA60(v11, qword_27D9C0F28);
    v17 = sub_22C90685C();
    v19 = sub_22C36F9F4(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_22C366000, v12, v13, "No response mode, defaulting to %s", v15, 0xCu);
    sub_22C36FF94(v16);
    MEMORY[0x2318B9880](v16, -1, -1);
    MEMORY[0x2318B9880](v15, -1, -1);

    (*(v5 + 8))(v7, v4);
    a2 = v22;
    v14 = 0x27D9BA000;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (*(v14 + 2016) != -1)
  {
    swift_once();
  }

  v21 = sub_22C37AA60(v11, qword_27D9C0F28);
  return (*(*(v11 - 8) + 16))(a2, v21, v11);
}

uint64_t sub_22C898E54(uint64_t a1)
{
  v2 = sub_22C899508();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C898E90(uint64_t a1)
{
  v2 = sub_22C899508();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C898EE8(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v2 = sub_22C901FAC();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - v5;
  v6 = sub_22C906A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = sub_22C9089DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C906F1C();
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9089EC();
  if ((*(v14 + 88))(v16, v13) != *MEMORY[0x277D1E750])
  {
    (*(v14 + 8))(v16, v13);
LABEL_6:
    v26 = 0;
    return v26 & 1;
  }

  (*(v14 + 96))(v16, v13);
  v21 = v37;
  (*(v38 + 32))(v20, v16, v37);
  sub_22C906F0C();
  (*(v7 + 104))(v10, *MEMORY[0x277D1DD48], v6);
  v22 = sub_22C906A6C();
  v23 = *(v7 + 8);
  v23(v10, v6);
  v23(v12, v6);
  if ((v22 & 1) == 0)
  {
    (*(v38 + 8))(v20, v21);
    goto LABEL_6;
  }

  v24 = v32;
  sub_22C906EDC();
  v25 = v33;
  sub_22C906DFC();
  v26 = sub_22C901F6C();
  v27 = *(v35 + 8);
  v28 = v25;
  v29 = v36;
  v27(v28, v36);
  v27(v24, v29);
  (*(v38 + 8))(v20, v21);
  return v26 & 1;
}

unint64_t sub_22C899300()
{
  result = qword_27D9C0F40;
  if (!qword_27D9C0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DefaultResponseGenerationInputBuilder.ResponseGenerationInputBuilderError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C8994B4()
{
  result = qword_27D9C0F50;
  if (!qword_27D9C0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F50);
  }

  return result;
}

unint64_t sub_22C899508()
{
  result = qword_27D9C0F58;
  if (!qword_27D9C0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F58);
  }

  return result;
}

uint64_t sub_22C899574()
{
  result = v0;
  *(v1 - 720) = *(*(v1 - 248) + 8);
  return result;
}

uint64_t sub_22C8995D0()
{
  v0 = sub_22C37B5C8();
  sub_22C8A52D4(v0);
  return sub_22C90B66C();
}

uint64_t sub_22C8996C8(uint64_t a1)
{
  sub_22C37B5C8();
  sub_22C90B64C();
  return sub_22C90B66C();
}

uint64_t sub_22C899774(uint64_t a1, uint64_t a2)
{
  sub_22C37B5C8();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C8997D4(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_22C37B5C8();
  a2(v5, a1);
  return sub_22C90B66C();
}

uint64_t sub_22C899840(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_22C37B5C8();
  v4 = a2(a1);
  sub_22C8A51C0(v4, v5, v6);

  return sub_22C90B66C();
}

uint64_t sub_22C899890(uint64_t a1)
{
  v2 = sub_22C8A5270(a1);
  if (v1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x747865546E616C70;
  }

  sub_22C8A5368(v2, v4, v3);

  return sub_22C90B66C();
}

uint64_t sub_22C899934(uint64_t a1)
{
  sub_22C8A5270(a1);
  sub_22C909FFC();

  return sub_22C90B66C();
}

uint64_t sub_22C899988(uint64_t a1)
{
  v2 = sub_22C8A5270(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x6553646972627968;
    }
  }

  else
  {
    v4 = 0x696C43796C6C7566;
  }

  sub_22C8A5368(v2, v4, v3);

  return sub_22C90B66C();
}

uint64_t sub_22C899A2C(uint64_t a1)
{
  sub_22C8A5270(a1);
  v1 = StructuredSearchQueryKeys.rawValue.getter();
  sub_22C8A51C0(v1, v2, v3);

  return sub_22C90B66C();
}

uint64_t sub_22C899ABC(uint64_t a1)
{
  sub_22C8A5270(a1);
  sub_22C909FFC();

  return sub_22C90B66C();
}

uint64_t sub_22C899B48(uint64_t a1, char a2)
{
  sub_22C90B62C();
  sub_22C909FFC();

  return sub_22C90B66C();
}

uint64_t sub_22C899C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_22C90B62C();
  a3(v6, a2);
  return sub_22C90B66C();
}

uint64_t sub_22C899C64(uint64_t a1, unsigned __int8 a2)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](a2);
  return sub_22C90B66C();
}

uint64_t sub_22C899CA8(uint64_t a1, char a2)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](a2 & 1);
  return sub_22C90B66C();
}

uint64_t sub_22C899D04(uint64_t a1)
{
  sub_22C8A5270(a1);
  sub_22C90B64C();
  return sub_22C90B66C();
}

uint64_t sub_22C899D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_22C90B62C();
  v5 = a3(a2);
  sub_22C8A51C0(v5, v6, v7);

  return sub_22C90B66C();
}

uint64_t sub_22C899DC4(uint64_t a1)
{
  v2 = sub_22C8A5270(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x702D65746F6D6572;
    }

    else
    {
      v4 = 0x646E6F2D6C6C7566;
    }
  }

  else
  {
    v4 = 0x6D65722D6C6C7566;
  }

  sub_22C8A5368(v2, v4, v3);

  return sub_22C90B66C();
}

uint64_t sub_22C899E6C(uint64_t a1)
{
  v1 = sub_22C90B62C();
  sub_22C8A52D4(v1);
  return sub_22C90B66C();
}

uint64_t sub_22C899ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C90B62C();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C899F18(uint64_t a1)
{
  v2 = sub_22C8A5270(a1);
  if (v1)
  {
    v4 = 0x65747441666C6573;
  }

  else
  {
    v4 = 0x676E69727473;
  }

  sub_22C8A5368(v2, v4, v3);

  return sub_22C90B66C();
}

uint64_t sub_22C899F90()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ResponseGenerationBiomeRoot.Generation(0);
    swift_allocObject();
    sub_22C37BB14();

    v1 = sub_22C89F4A0(v3);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_22C89A008()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ResponseGenerationBiomeRoot.Override(0);
    swift_allocObject();
    sub_22C901DCC();
    sub_22C36A748();
    sub_22C8A51F0(v3, v4, v5, v6);

    v1 = sub_22C89D10C(v7);
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t sub_22C89A0A0()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ResponseGenerationBiomeRoot.ModelInference();
    swift_allocObject();
    sub_22C37BB14();

    v1 = sub_22C8A2040(v3);
    *(v2 + 48) = v1;
  }

  return v1;
}

void sub_22C89A118()
{
  sub_22C36BA7C();
  v2 = v0;
  v70 = v3;
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9C1080, &qword_22C92BF48);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v64 = v8;
  sub_22C36BA0C();
  v66 = sub_22C90345C();
  sub_22C369824();
  v63 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v62 = v11;
  sub_22C36BA0C();
  v68 = sub_22C90348C();
  sub_22C369824();
  v65 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  v67 = v14;
  sub_22C36BA0C();
  sub_22C90342C();
  sub_22C369824();
  v69 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  sub_22C36D6DC();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v62 - v23;
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v22);
  sub_22C369ABC();
  v28 = (v26 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = &v62 - v30;
  v71 = v25;
  v32 = *(v25 + 16);
  v33 = v2;
  v34 = v2;
  v36 = v35;
  v32(&v62 - v30, v34, v5);
  v72 = v31;
  v37 = v5;
  if (swift_dynamicCast())
  {
    v38 = v69;
    (*(v69 + 32))(v1, v24, v36);
    sub_22C646A98();
    v39(v19, v1, v36);
    if ((*(v38 + 88))(v19, v36) == *MEMORY[0x277D29D28])
    {
      v40 = *(v38 + 96);
      v70 = v36;
      v40(v19, v36);
      v41 = v65;
      (*(v65 + 32))(v67, v19, v68);
      v42 = v64;
      sub_22C90346C();
      v43 = v66;
      sub_22C36D0A8(v42, 1, v66);
      v44 = v71;
      if (v45)
      {
        sub_22C36DD80(v42, &qword_27D9C1080);
        sub_22C90347C();
        v46 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        sub_22C8A52F8(0xD000000000000020, 0x800000022C939370);
        v60 = sub_22C370114();
      }

      else
      {
        v53 = v62;
        v52 = v63;
        (*(v63 + 32))(v62, v42, v43);
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_22C90AF5C();

        v74 = 0xD000000000000021;
        v75 = 0x800000022C9393A0;
        v73 = sub_22C90347C();
        v54 = sub_22C90B47C();
        MEMORY[0x2318B7850](v54);

        MEMORY[0x2318B7850](95, 0xE100000000000000);
        v55 = sub_22C90344C();
        MEMORY[0x2318B7850](v55);

        v56 = v74;
        v57 = v75;
        sub_22C90343C();
        v58 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        sub_22C8A52F8(v56, v57);
        (*(v52 + 8))(v53, v66);
        v59 = *(v41 + 8);
        v60 = v67;
        v61 = v68;
      }

      v59(v60, v61);
      (*(v38 + 8))(v1, v70);
    }

    else
    {
      sub_22C90341C();
      v49 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_22C8A52F8(0xD000000000000011, 0x800000022C939350);
      v50 = *(v38 + 8);
      v50(v1, v36);
      v50(v19, v36);
      v44 = v71;
    }
  }

  else
  {
    v32(v28, v33, v5);
    v47 = sub_22C90B4AC();
    if (v47)
    {
      v48 = v47;
      v44 = v71;
      (*(v71 + 8))(v28, v5);
    }

    else
    {
      sub_22C36BA00();
      v48 = swift_allocError();
      v44 = v71;
      (*(v71 + 32))(v51, v28, v5);
    }

    sub_22C9002FC();
  }

  (*(v44 + 8))(v72, v37);
  sub_22C36CC48();
}

uint64_t sub_22C89A778()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ResponseGenerationBiomeRoot.RequestValidation();
    *(swift_allocObject() + 24) = 0;

    v1 = sub_22C89D10C(v3);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_22C89A7F8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ResponseGenerationBiomeRoot.ResponseCatalog();
    swift_allocObject();
    sub_22C37BB14();

    v1 = sub_22C89D10C(v3);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t sub_22C89A870()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ResponseGenerationBiomeRoot.GMSCall(0);
    swift_allocObject();
    sub_22C90069C();
    sub_22C36A748();
    sub_22C8A51F0(v3, v4, v5, v6);

    v1 = sub_22C89D10C(v7);
    *(v2 + 64) = v1;
  }

  return v1;
}

void sub_22C89A908(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (*(v1 + 96) > 1uLL)
  {
    sub_22C378A4C(v1 + 72, &v9);
  }

  else
  {
    v3 = *(v1 + 88);
    v9 = *(v1 + 72);
    v10 = v3;
    v11 = *(v1 + 104);
  }

  if (*(&v10 + 1) != 1)
  {
    v4 = v10;
    *a1 = v9;
    *(a1 + 16) = v4;
    *(a1 + 32) = v11;
    return;
  }

  sub_22C89AA40();
  if (*(a1 + 24))
  {
    sub_22C378A4C(a1, &v9);
  }

  else
  {
    v5 = *(a1 + 16);
    v9 = *a1;
    v10 = v5;
    v11 = *(a1 + 32);
  }

  swift_beginAccess();
  v6 = *(v1 + 96);
  if (v6 == 1)
  {
    goto LABEL_17;
  }

  v7 = *(&v10 + 1);
  if (*(&v10 + 1) == 1)
  {
    if (v6)
    {
      sub_22C36FF94((v1 + 72));
    }

LABEL_17:
    v8 = v10;
    *(v1 + 72) = v9;
    *(v1 + 88) = v8;
    *(v1 + 104) = v11;
    goto LABEL_18;
  }

  if (v6)
  {
    sub_22C36FF94((v1 + 72));
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  sub_22C36C730(&v9, v1 + 72);
LABEL_18:
  swift_endAccess();
}

uint64_t sub_22C89AA40()
{
  v0 = sub_22C9063DC();
  MEMORY[0x28223BE20](v0);
  sub_22C9061BC();
  sub_22C8A5090(&qword_27D9C10E0, MEMORY[0x277D20318], MEMORY[0x277D20310]);
  return sub_22C90620C();
}

void sub_22C89AC74(uint64_t a1)
{
  v1 = sub_22C9063DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9C10D8, &unk_22C92BFA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  sub_22C904BBC();
  v11 = sub_22C904BAC();
  if (sub_22C370B74(v7, 1, v11) == 1)
  {
    sub_22C36DD80(v7, &qword_27D9C10D8);
    v12 = sub_22C90625C();
    sub_22C36C640(v10, 1, 1, v12);
LABEL_4:
    sub_22C36DD80(v10, &qword_27D9BE618);
    sub_22C90405C();
    v14 = sub_22C9063CC();
    v15 = sub_22C90AAEC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22C366000, v14, v15, "Missing ifRequestId", v16, 2u);
      MEMORY[0x2318B9880](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return;
  }

  sub_22C90460C();
  (*(*(v11 - 8) + 8))(v7, v11);
  v13 = sub_22C90625C();
  if (sub_22C370B74(v10, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  sub_22C36DD80(v10, &qword_27D9BE618);
  sub_22C89A908(v18);
  if (v19)
  {
    sub_22C378A4C(v18, v17);
    if (v19)
    {
      sub_22C36FF94(v18);
    }

    sub_22C374168(v17, v17[3]);
    sub_22C9062BC();
    sub_22C36FF94(v17);
  }
}

uint64_t ResponseGenerationTriageReport.source.getter()
{
  type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C37607C();
  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.source.setter()
{
  sub_22C388498();
  result = sub_22C8A5314();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationTriageReport.source.modify()
{
  v0 = sub_22C3704C4();
  type metadata accessor for ResponseGenerationTriageReport(v0);
  return sub_22C8A5208();
}

uint64_t ResponseGenerationTriageReport.fallbackReason.getter()
{
  type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C37607C();
  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.fallbackReason.setter()
{
  sub_22C388498();
  result = sub_22C8A5314();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationTriageReport.fallbackReason.modify()
{
  v0 = sub_22C3704C4();
  type metadata accessor for ResponseGenerationTriageReport(v0);
  return sub_22C8A5208();
}

uint64_t ResponseGenerationTriageReport.deniedRequestReason.getter()
{
  type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C37607C();
  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.deniedRequestReason.setter()
{
  sub_22C388498();
  result = sub_22C8A5314();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationTriageReport.deniedRequestReason.modify()
{
  v0 = sub_22C3704C4();
  type metadata accessor for ResponseGenerationTriageReport(v0);
  return sub_22C8A5208();
}

uint64_t ResponseGenerationTriageReport.overrideRuleId.getter()
{
  type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C37607C();
  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.overrideRuleId.setter()
{
  sub_22C388498();
  result = sub_22C8A5314();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationTriageReport.overrideRuleId.modify()
{
  v0 = sub_22C3704C4();
  type metadata accessor for ResponseGenerationTriageReport(v0);
  return sub_22C8A5208();
}

uint64_t ResponseGenerationTriageReport.generationError.getter()
{
  type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C37607C();
  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.generationError.setter()
{
  sub_22C388498();
  result = sub_22C8A5314();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationTriageReport.generationError.modify()
{
  v0 = sub_22C3704C4();
  type metadata accessor for ResponseGenerationTriageReport(v0);
  return sub_22C8A5208();
}

uint64_t ResponseGenerationTriageReport.ModelInference.modelOutput.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall ResponseGenerationTriageReport.ModelInference.init(prompt:promptVersion:)(IntelligenceFlowPlannerRuntime::ResponseGenerationTriageReport::ModelInference *__return_ptr retstr, Swift::String prompt, Swift::String promptVersion)
{
  retstr->modelOutput.value._countAndFlagsBits = 0;
  retstr->modelOutput.value._object = 0;
  retstr->prompt = prompt;
  retstr->promptVersion = promptVersion;
}

uint64_t sub_22C89B470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x655674706D6F7270 && a2 == 0xED00006E6F697372;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74754F6C65646F6DLL && a2 == 0xEB00000000747570)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

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

uint64_t sub_22C89B588(char a1)
{
  if (!a1)
  {
    return 0x74706D6F7270;
  }

  if (a1 == 1)
  {
    return 0x655674706D6F7270;
  }

  return 0x74754F6C65646F6DLL;
}

uint64_t sub_22C89B610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C89B470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C89B638(uint64_t a1)
{
  v2 = sub_22C89B844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C89B674(uint64_t a1)
{
  v2 = sub_22C89B844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResponseGenerationTriageReport.ModelInference.encode(to:)(void *a1)
{
  v3 = sub_22C3A5908(&qword_27D9C0F68, &qword_22C92B9A8);
  sub_22C369824();
  v5 = v4;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C3881C0();
  sub_22C374168(a1, a1[3]);
  sub_22C89B844();
  sub_22C90B6CC();
  sub_22C90B3CC();
  if (!v8)
  {
    sub_22C37A15C();
    sub_22C90B3CC();
    sub_22C37A15C();
    sub_22C90B37C();
  }

  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_22C89B844()
{
  result = qword_27D9C0F70;
  if (!qword_27D9C0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F70);
  }

  return result;
}

uint64_t ResponseGenerationTriageReport.ModelInference.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9C0F78, &qword_22C92B9B0);
  sub_22C369824();
  v8 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C370654();
  sub_22C374168(a1, a1[3]);
  sub_22C89B844();
  sub_22C90B6BC();
  if (v2)
  {
    return sub_22C36FF94(a1);
  }

  v10 = sub_22C90B2DC();
  v20 = v11;
  v18 = sub_22C90B2DC();
  v19 = v12;
  v13 = sub_22C90B26C();
  v15 = v14;
  v16 = v13;
  (*(v8 + 8))(v3, v6);
  *a2 = v10;
  a2[1] = v20;
  a2[2] = v18;
  a2[3] = v19;
  a2[4] = v16;
  a2[5] = v15;

  sub_22C36FF94(a1);
}

uint64_t ResponseGenerationTriageReport.modelInference.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ResponseGenerationTriageReport(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_22C89BB6C(v4, v5);
}

uint64_t sub_22C89BB6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 ResponseGenerationTriageReport.modelInference.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for ResponseGenerationTriageReport(0) + 40);
  sub_22C89BC14(*v5, *(v5 + 8));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t sub_22C89BC14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ResponseGenerationTriageReport.modelInference.modify()
{
  v0 = sub_22C3704C4();
  type metadata accessor for ResponseGenerationTriageReport(v0);
  return sub_22C8A5208();
}

double ResponseGenerationTriageReport.init()@<D0>(uint64_t a1@<X8>)
{
  sub_22C90806C();
  v2 = sub_22C36CCF8();
  sub_22C36C640(v2, v3, 1, v4);
  v5 = type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C386E98(*(v5 + 20));
  sub_22C386E98(*(v6 + 24));
  sub_22C386E98(*(v7 + 28));
  sub_22C386E98(*(v8 + 32));
  sub_22C386E98(*(v9 + 36));
  v11 = (a1 + *(v10 + 40));
  result = 0.0;
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = 0u;
  return result;
}

uint64_t sub_22C89BD20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B6361626C6C6166 && a2 == 0xEE006E6F73616552;
      if (v7 || (sub_22C90B4FC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000022C939330 == a2;
        if (v8 || (sub_22C90B4FC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656469727265766FLL && a2 == 0xEE006449656C7552;
          if (v9 || (sub_22C90B4FC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x69746172656E6567 && a2 == 0xEF726F7272456E6FLL;
            if (v10 || (sub_22C90B4FC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x666E496C65646F6DLL && a2 == 0xEE0065636E657265)
            {

              return 6;
            }

            else
            {
              v12 = sub_22C90B4FC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C89BF70(char a1)
{
  result = 0x7475706E69;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x6B6361626C6C6166;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x656469727265766FLL;
      break;
    case 5:
      result = 0x69746172656E6567;
      break;
    case 6:
      result = 0x666E496C65646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C89C068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C89C0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C89BD20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C89C0E4(uint64_t a1)
{
  v2 = sub_22C89C39C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C89C120(uint64_t a1)
{
  v2 = sub_22C89C39C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResponseGenerationTriageReport.encode(to:)()
{
  sub_22C8A5350();
  v3 = sub_22C3A5908(&qword_27D9C0F80, &qword_22C92B9B8);
  sub_22C369824();
  v5 = v4;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C3881C0();
  sub_22C374168(v0, v0[3]);
  sub_22C89C39C();
  sub_22C90B6CC();
  sub_22C90806C();
  sub_22C381C78();
  sub_22C8A5090(v7, v8, MEMORY[0x277D1E2E0]);
  sub_22C37A15C();
  sub_22C90B3AC();
  if (!v1)
  {
    v9 = type metadata accessor for ResponseGenerationTriageReport(0);
    sub_22C381434(v9[5]);
    sub_22C37BD18(1);
    sub_22C381434(v9[6]);
    sub_22C37BD18(2);
    sub_22C381434(v9[7]);
    sub_22C37BD18(3);
    sub_22C381434(v9[8]);
    sub_22C37BD18(4);
    sub_22C381434(v9[9]);
    sub_22C37BD18(5);
    v12 = sub_22C381434(v9[10]);
    v13 = v10;
    sub_22C89BB6C(v12, v10);
    sub_22C89C3F0();
    sub_22C37A15C();
    sub_22C90B3AC();
    sub_22C89BC14(v12, v13);
  }

  return (*(v5 + 8))(v2, v3);
}

unint64_t sub_22C89C39C()
{
  result = qword_27D9C0F88;
  if (!qword_27D9C0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F88);
  }

  return result;
}

unint64_t sub_22C89C3F0()
{
  result = qword_27D9C0F98;
  if (!qword_27D9C0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F98);
  }

  return result;
}

uint64_t ResponseGenerationTriageReport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9C0F60, &qword_22C92B9A0);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  v32 = v6;
  v33 = sub_22C3A5908(&qword_27D9C0FA0, &qword_22C92B9C0);
  sub_22C369824();
  v31 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v35 = v9;
  v10 = sub_22C36BA0C();
  v11 = type metadata accessor for ResponseGenerationTriageReport(v10);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C387210();
  sub_22C90806C();
  v13 = sub_22C36CCF8();
  sub_22C36C640(v13, v14, 1, v15);
  v16 = (v2 + v12[7]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v2 + v12[8]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v2 + v12[9]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v2 + v12[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v2 + v12[11]);
  *v20 = 0;
  v20[1] = 0;
  v21 = v2 + v12[12];
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = 0u;
  sub_22C374168(a1, a1[3]);
  sub_22C89C39C();
  sub_22C90B6BC();
  if (!v34)
  {
    LOBYTE(v36) = 0;
    sub_22C381C78();
    sub_22C8A5090(v22, v23, MEMORY[0x277D1E2E8]);
    sub_22C90B2BC();
    sub_22C381470(v32, v2, &qword_27D9C0F60, &qword_22C92B9A0);
    *v16 = sub_22C36FF50(1);
    v16[1] = v25;
    *v17 = sub_22C36FF50(2);
    v17[1] = v26;
    *v18 = sub_22C36FF50(3);
    v18[1] = v27;
    *v19 = sub_22C36FF50(4);
    v19[1] = v28;
    *v20 = sub_22C36FF50(5);
    v20[1] = v29;
    sub_22C89C810();
    sub_22C90B2BC();
    (*(v31 + 8))(v35, v33);
    sub_22C89BC14(*v21, *(v21 + 8));
    *v21 = v36;
    *(v21 + 16) = v37;
    *(v21 + 32) = v38;
    *(v21 + 40) = v39;
    sub_22C89C864(v2, a2);
  }

  sub_22C36FF94(a1);
  return sub_22C8A50D8();
}

unint64_t sub_22C89C810()
{
  result = qword_27D9C0FB0;
  if (!qword_27D9C0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0FB0);
  }

  return result;
}

uint64_t sub_22C89C864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseGenerationTriageReport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C89C938(uint64_t a1)
{
  sub_22C8A0CB0(319, &qword_27D9C0FC8, MEMORY[0x277D1E2D8]);
  if (v1 <= 0x3F)
  {
    sub_22C430E9C(319, &qword_28142FA20, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_22C430E9C(319, &qword_27D9C0FD0, &type metadata for ResponseGenerationTriageReport.ModelInference);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C89CA2C()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9C10A0, &qword_22C92BF68);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  v75 = v6;
  sub_22C36BA0C();
  sub_22C90474C();
  sub_22C369824();
  v71 = v7;
  v72 = v8;
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v68 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v73 = v11;
  sub_22C36BA0C();
  v12 = sub_22C90454C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  sub_22C90806C();
  sub_22C36A748();
  sub_22C36C640(v19, v20, v21, v22);
  v23 = type metadata accessor for ResponseGenerationTriageReport(0);
  v70 = (v3 + v23[5]);
  v24 = (v3 + v23[6]);
  *v24 = 0;
  v24[1] = 0;
  v67 = v24;
  v25 = (v3 + v23[7]);
  *v25 = 0;
  v25[1] = 0;
  v65 = v25;
  v26 = (v3 + v23[8]);
  *v26 = 0;
  v26[1] = 0;
  v66 = v26;
  v27 = (v3 + v23[9]);
  *v27 = 0;
  v27[1] = 0;
  v69 = v27;
  v28 = v3 + v23[10];
  *(v28 + 32) = 0u;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  v29 = sub_22C899F90();
  v30 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input;
  swift_beginAccess();
  sub_22C36DD80(v3, &qword_27D9C0F60);
  sub_22C4E719C(v29 + v30, v3, &qword_27D9C0F60, &qword_22C92B9A0);
  swift_endAccess();

  v31 = v1[2];
  v32 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  sub_22C36CA70(v31 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source, &v79);
  sub_22C37BBE4();
  v33(v18, v31 + v32, v12);
  sub_22C90453C();
  sub_22C385D88();
  v34 = v1;
  (*(v14 + 8))(v18, v12);
  *v70 = v18;
  v70[1] = v32;
  v35 = v1[2];
  v36 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  sub_22C36CA70(v35 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason, &v78);
  v37 = *(v72 + 16);
  (v37)(v73, v35 + v36, v71);
  v38 = sub_22C36CA88();
  if (v39(v38) != *MEMORY[0x277D1FB28])
  {
    v40 = *(v72 + 8);
    v41 = sub_22C36CA88();
    v40(v41);
    v42 = v1[2];
    v43 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
    sub_22C36CA70(v42 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason, &v77);
    (v37)(v68, v42 + v43, v71);
    sub_22C90473C();
    sub_22C385D88();
    (v40)(v68, v71);
    *v67 = v68;
    v67[1] = v37;
  }

  v44 = *(sub_22C89A778() + 24);

  switch(v44)
  {
    case 1:
    case 2:
    case 3:
      v46 = 0x73736563637573;
      v37 = sub_22C90B4FC();

      v45 = v75;
      if ((v37 & 1) == 0)
      {
        v47 = 0xE700000000000000;
        switch(*(v34[3] + 24))
        {
          case 1:
            v46 = 0x694C796E65446E69;
            v47 = 0xEA00000000007473;
            break;
          case 2:
            v46 = 0xD000000000000010;
            v47 = 0x800000022C92F260;
            break;
          case 3:
            v47 = 0x800000022C92F280;
            v46 = 0xD000000000000012;
            break;
          default:
            break;
        }

        *v65 = v46;
        v65[1] = v47;
      }

      break;
    default:

      v45 = v75;
      break;
  }

  v48 = sub_22C89A008();
  sub_22C4E719C(v48 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot8Override_override, v45, &qword_27D9C10A0, &qword_22C92BF68);

  v49 = sub_22C901DCC();
  if (sub_22C370B74(v45, 1, v49))
  {
    sub_22C36DD80(v45, &qword_27D9C10A0);
  }

  else
  {
    sub_22C901DBC();
    sub_22C385D88();
    sub_22C36DD80(v45, &qword_27D9C10A0);
    *v66 = v45;
    v66[1] = v37;
  }

  v50 = sub_22C89A0A0();
  v52 = *(v50 + 24);
  v51 = *(v50 + 32);

  if (v51)
  {
    v53 = v34[6];
    v54 = *(v53 + 48);
    if (v54)
    {
      v55 = *(v53 + 40);
    }

    else
    {
      v55 = 0x6E776F6E6B6E75;
    }

    v56 = 0xE700000000000000;
    if (v54)
    {
      v56 = v54;
    }

    v74 = v56;
    v76 = v55;
    v57 = *v28;
    v58 = *(v28 + 8);

    sub_22C89BC14(v57, v58);
    *v28 = v52;
    *(v28 + 8) = v51;
    *(v28 + 16) = v76;
    *(v28 + 24) = v74;
    *(v28 + 32) = 0;
    *(v28 + 40) = 0;
    v59 = v34[6];
    v61 = *(v59 + 56);
    v60 = *(v59 + 64);

    *(v28 + 32) = v61;
    *(v28 + 40) = v60;
  }

  v62 = *(v34[2] + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_error);
  if (v62)
  {
    v63 = v62;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    *v69 = sub_22C90A1CC();
    v69[1] = v64;
  }

  sub_22C36CC48();
}

unint64_t sub_22C89D078(char a1)
{
  result = 0x73736563637573;
  switch(a1)
  {
    case 1:
      result = 0x694C796E65446E69;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C89D10C(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();

  return v1;
}

void sub_22C89D150()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  v112 = v6;
  v7 = sub_22C3A5908(&qword_27D9C10D8, &unk_22C92BFA8);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v111 = v9;
  sub_22C36BA0C();
  v104 = sub_22C90625C();
  sub_22C369824();
  v100[1] = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v100[0] = v12;
  v13 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  v14 = sub_22C369914(v13);
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v103 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v107 = v17;
  sub_22C36BA0C();
  v110 = sub_22C90451C();
  sub_22C369824();
  v106 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  v105 = v20;
  v21 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v21);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C370654();
  v23 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v24 = sub_22C369914(v23);
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  v101 = v25;
  sub_22C369930();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v100 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v100 - v30;
  v32 = sub_22C90069C();
  sub_22C369824();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  v102 = v36;
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  sub_22C36CAC0();
  sub_22C904BAC();
  sub_22C369824();
  v108 = v39;
  v109 = v38;
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  v42 = v41 - v40;
  v113 = v3;
  sub_22C904BEC();
  sub_22C904B9C();
  if (swift_weakLoadStrong())
  {
    v43 = sub_22C899F90();

    v44 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId;
    sub_22C36CA70(v43 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId, &v115);
    sub_22C4E719C(v43 + v44, v31, &qword_27D9BB190, qword_22C90DD90);

    sub_22C36D0A8(v31, 1, v32);
    if (!v45)
    {
      (*(v34 + 32))(v0, v31, v32);
      sub_22C90624C();
      sub_22C389280();
      v46(v29, v0, v32);
      v47 = sub_22C389250();
      sub_22C36EEBC(v47, v48, v49, v32);
      sub_22C90623C();
      sub_22C36BECC();
      sub_22C36C640(v50, v51, v52, v104);
      sub_22C904B8C();
      (*(v34 + 8))(v0, v32);
      goto LABEL_6;
    }
  }

  else
  {
    sub_22C36A748();
    sub_22C36C640(v53, v54, v55, v32);
  }

  sub_22C36DD80(v31, &qword_27D9BB190);
LABEL_6:
  Strong = swift_weakLoadStrong();
  v57 = v107;
  if (!Strong)
  {
    v66 = sub_22C36CCF8();
    sub_22C36C640(v66, v67, 1, v110);
    goto LABEL_12;
  }

  v58 = sub_22C899F90();

  v59 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers;
  sub_22C36CA70(v58 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers, &v114);
  sub_22C4E719C(v58 + v59, v57, &qword_27D9BB7A0, &qword_22C9110D0);

  v60 = sub_22C36CCF8();
  v61 = v110;
  sub_22C36D0A8(v60, v62, v110);
  if (v45)
  {
LABEL_12:
    sub_22C36DD80(v57, &qword_27D9BB7A0);
    goto LABEL_14;
  }

  (*(v106 + 32))(v105, v57, v61);
  v63 = v101;
  sub_22C90446C();
  v64 = sub_22C36CCF8();
  sub_22C36D0A8(v64, v65, v32);
  if (v45)
  {
    sub_22C36DD80(v63, &qword_27D9BB190);
  }

  else
  {
    v68 = v102;
    v69 = sub_22C8A5220();
    v70(v69);
    v71 = v100[0];
    sub_22C90624C();
    sub_22C389280();
    v72(v29, v68, v32);
    v73 = sub_22C389250();
    sub_22C36EEBC(v73, v74, v75, v32);
    sub_22C90623C();
    sub_22C8A51A4();
    v76 = v104;
    v77(v1, v71, v104);
    sub_22C36BECC();
    sub_22C36C640(v78, v79, v80, v76);
    sub_22C90461C();
    v81 = sub_22C372280();
    v82(v81);
    (*(v34 + 8))(v102, v32);
  }

  v83 = v105;
  sub_22C9044DC();
  sub_22C904B7C();
  sub_22C8A51A4();
  v84(v103, v83, v61);
  sub_22C36BECC();
  sub_22C36C640(v85, v86, v87, v61);
  sub_22C90452C();
  v88 = sub_22C372FCC();
  v89(v88);
LABEL_14:
  v91 = v108;
  v90 = v109;
  sub_22C8A51A4();
  v92(v111, v42, v90);
  sub_22C36BECC();
  sub_22C36C640(v93, v94, v95, v90);
  sub_22C904BCC();
  sub_22C90621C();
  sub_22C90622C();
  sub_22C36BECC();
  sub_22C36C640(v96, v97, v98, v99);
  sub_22C904BDC();
  (*(v91 + 8))(v42, v90);
  sub_22C36CC48();
}

uint64_t sub_22C89D8DC(uint64_t a1)
{
  v4 = sub_22C36CA88();
  v6 = sub_22C3A5908(v4, v5);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36FF70();
  v8 = sub_22C904BFC();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C4E719C(a1, v1, &qword_27D9C1068, &qword_22C92BF28);
  v12 = sub_22C383C3C();
  sub_22C36D0A8(v12, v13, v8);
  if (v14)
  {
    return sub_22C36DD80(v1, &qword_27D9C1068);
  }

  (*(v10 + 32))(v2, v1, v8);
  if (swift_weakLoadStrong())
  {
    sub_22C89AC74(v2);
  }

  return (*(v10 + 8))(v2, v8);
}

void sub_22C89DA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v131 = v21;
  v26 = v25;
  v122 = sub_22C9063DC();
  sub_22C369824();
  v121 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  sub_22C36D234(v29);
  v30 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v30);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  sub_22C36D5B4();
  v130 = v32;
  v33 = sub_22C3A5908(&qword_27D9C10F0, &unk_22C92BFC0);
  sub_22C369914(v33);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C36D5B4();
  v125 = v35;
  sub_22C36BA0C();
  sub_22C904BFC();
  sub_22C369824();
  v128 = v37;
  v129 = v36;
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  v126 = v38;
  sub_22C36BA0C();
  v127 = sub_22C90484C();
  sub_22C369824();
  v124 = v39;
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  sub_22C36D234(v41);
  v42 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v42);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v43);
  sub_22C36D5B4();
  sub_22C36D234(v44);
  v45 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v45);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v46);
  sub_22C36FF70();
  v119 = sub_22C90069C();
  sub_22C36985C();
  MEMORY[0x28223BE20](v47);
  sub_22C369838();
  sub_22C370654();
  sub_22C90451C();
  sub_22C369824();
  v132 = v49;
  v133 = v48;
  MEMORY[0x28223BE20](v48);
  sub_22C369838();
  v52 = v51 - v50;
  v53 = sub_22C3A5908(&qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C369914(v53);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v54);
  v56 = &v114 - v55;
  v57 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v57);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v58);
  sub_22C37B974();
  v59 = sub_22C908A0C();
  sub_22C369824();
  v61 = v60;
  MEMORY[0x28223BE20](v62);
  sub_22C3698A8();
  v64 = v63;
  v65 = sub_22C9087DC();
  sub_22C3A5950(v65);

  v66 = sub_22C36CCF8();
  sub_22C36D0A8(v66, v67, v59);
  if (v68)
  {
    sub_22C36DD80(v20, &qword_27D9BA808);
    v69 = v118;
    sub_22C90405C();
    v70 = sub_22C9063CC();
    v71 = sub_22C90AADC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_22C366000, v70, v71, "Transcript has no event.", v72, 2u);
      MEMORY[0x2318B9880](v72, -1, -1);
    }

    sub_22C36FB04();
    v112 = v69;
    v113 = &a17;
  }

  else
  {
    v117 = v61;
    v73 = sub_22C372280();
    v116 = v59;
    v74(v73);
    v75 = sub_22C90880C();
    sub_22C36985C();
    (*(v76 + 16))(v56, v26, v75);
    sub_22C36BECC();
    sub_22C36C640(v77, v78, v79, v75);
    v80 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_transcript;
    v81 = v131;
    sub_22C382E40();
    sub_22C381470(v56, v81 + v80, &qword_27D9C10D0, &qword_22C92BFA0);
    swift_endAccess();
    sub_22C90450C();
    sub_22C9073EC();
    sub_22C59EAEC(&v134);
    sub_22C9044EC();
    sub_22C8A535C();
    sub_22C9089FC();
    sub_22C9044FC();
    v115 = v64;
    sub_22C90891C();
    sub_22C90449C();
    sub_22C9088EC();
    sub_22C9044AC();
    sub_22C90895C();
    sub_22C9044BC();
    sub_22C90890C();
    sub_22C9044CC();
    sub_22C9088DC();
    sub_22C90447C();
    v82 = v133;
    v83 = v120;
    (*(v132 + 16))(v120, v52, v133);
    sub_22C36BECC();
    sub_22C36C640(v84, v85, v86, v82);
    v87 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers;
    sub_22C382E40();
    sub_22C381470(v83, v81 + v87, &qword_27D9BB7A0, &qword_22C9110D0);
    swift_endAccess();
    sub_22C90445C();
    v88 = sub_22C371A14();
    sub_22C36C640(v88, v89, v90, v119);
    v91 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId;
    sub_22C382E40();
    sub_22C381470(v22, v81 + v91, &qword_27D9BB190, qword_22C90DD90);
    swift_endAccess();
    v92 = v123;
    sub_22C90456C();
    sub_22C90455C();
    v93 = v126;
    sub_22C89D150();
    v94 = v127;
    v95 = swift_allocBox();
    sub_22C70C980(v95, v96);
    v97 = v124;
    sub_22C8A51A4();
    v98();
    *v125 = v91;
    sub_22C90481C();
    sub_22C8A5140();
    sub_22C37A060();
    v99();
    v100 = sub_22C371A14();
    sub_22C36CD04(v100, v101, v102, v81);
    sub_22C90487C();
    v104 = v128;
    v103 = v129;
    sub_22C646A98();
    v105 = v130;
    v106(v130, v93, v103);
    v107 = sub_22C37049C();
    v110 = sub_22C8A51F0(v107, v108, v109, v103);
    sub_22C89D8DC(v110);
    sub_22C36DD80(v105, &qword_27D9C1068);
    (*(v104 + 8))(v93, v103);
    (*(v97 + 8))(v92, v94);
    (*(v132 + 8))(v52, v133);
    sub_22C36FB04();
    v112 = v115;
    v113 = &a11;
  }

  v111(v112, *(v113 - 32));
  sub_22C36CC48();
}

void sub_22C89E2A8()
{
  sub_22C89A118();
  v3 = v0;
  sub_22C904B3C();
  v1 = [v3 code];
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_22C904B2C();
  v2 = [v3 domain];
  sub_22C90A11C();

  sub_22C904B1C();
}

void sub_22C89E380()
{
  sub_22C36BA7C();
  v4 = v1;
  v185 = v5;
  v189 = v6;
  v190 = v7;
  v8 = sub_22C3A5908(&qword_27D9C10E8, &qword_22C92BFB8);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  v178 = v10;
  sub_22C36BA0C();
  v184 = sub_22C90083C();
  sub_22C369824();
  v183 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v182 = v13;
  v14 = sub_22C36BA0C();
  v181 = type metadata accessor for ResponseRedactor(v14);
  sub_22C36985C();
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v202 = v16;
  sub_22C36BA0C();
  v188 = sub_22C9049FC();
  sub_22C369824();
  v187 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22C3698A8();
  v201 = v19;
  v20 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v20);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C36D5B4();
  v195 = v22;
  v23 = sub_22C3A5908(&qword_27D9C10F0, &unk_22C92BFC0);
  sub_22C369914(v23);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C36D5B4();
  v179 = v25;
  sub_22C36BA0C();
  v196 = sub_22C904BFC();
  sub_22C369824();
  v194 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v193 = v29;
  sub_22C36BA0C();
  v173 = sub_22C90000C();
  sub_22C369824();
  v172[1] = v30;
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  sub_22C36D234(v32);
  v33 = sub_22C3A5908(&qword_27D9BC428, &unk_22C912FD0);
  v34 = sub_22C369914(v33);
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  v38 = v172 - v37;
  v39 = sub_22C3A5908(&qword_27D9BC430, &qword_22C92BFD0);
  v40 = sub_22C369914(v39);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA64();
  v176 = v43;
  sub_22C36BA0C();
  sub_22C90625C();
  sub_22C369824();
  v199 = v45;
  v200 = v44;
  MEMORY[0x28223BE20](v44);
  sub_22C3698A8();
  v198 = v46;
  v47 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v48 = sub_22C369914(v47);
  MEMORY[0x28223BE20](v48);
  sub_22C369ABC();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = v172 - v53;
  v55 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v56 = sub_22C369914(v55);
  MEMORY[0x28223BE20](v56);
  sub_22C3698E4();
  v197 = v57;
  sub_22C369930();
  MEMORY[0x28223BE20](v58);
  sub_22C36CAC0();
  v59 = sub_22C3A5908(&qword_27D9C10F8, &qword_22C92BFD8);
  sub_22C369914(v59);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v60);
  sub_22C387210();
  v61 = sub_22C3A5908(&qword_27D9C1100, &qword_22C92BFE0);
  sub_22C369914(v61);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v62);
  v64 = v172 - v63;
  sub_22C90464C();
  sub_22C369824();
  v191 = v66;
  v192 = v65;
  MEMORY[0x28223BE20](v65);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C90463C();
  v67 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  sub_22C36CA70(v4 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source, &v206);
  v68 = sub_22C90454C();
  sub_22C36985C();
  (*(v69 + 16))(v64, v4 + v67, v68);
  sub_22C36BECC();
  sub_22C36C640(v70, v71, v72, v68);
  sub_22C9045EC();
  v73 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  sub_22C36CA70(v4 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason, &v205);
  sub_22C90474C();
  sub_22C8A5140();
  (*(v74 + 16))(v0, v4 + v73, v2);
  v75 = sub_22C37049C();
  sub_22C8A51F0(v75, v76, v77, v2);
  sub_22C9045DC();
  sub_22C4E719C(v189, v54, &qword_27D9BB190, qword_22C90DD90);
  v78 = sub_22C90069C();
  sub_22C36D0A8(v54, 1, v78);
  if (v102)
  {
    sub_22C36DD80(v54, &qword_27D9BB190);
    v83 = 1;
  }

  else
  {
    sub_22C90624C();
    v79 = *(v78 - 8);
    (*(v79 + 16))(v51, v54, v78);
    v80 = sub_22C389250();
    sub_22C36EEBC(v80, v81, v82, v78);
    sub_22C90623C();
    (*(v79 + 8))(v54, v78);
    v83 = 0;
  }

  v84 = v200;
  sub_22C36C640(v3, v83, 1, v200);
  sub_22C9045FC();
  sub_22C90624C();
  sub_22C90068C();
  v85 = sub_22C389250();
  sub_22C36EEBC(v85, v86, v87, v78);
  sub_22C90623C();
  v88 = v197;
  v89 = sub_22C36BA00();
  v90(v89);
  v91 = sub_22C37049C();
  sub_22C8A51F0(v91, v92, v93, v84);
  sub_22C90461C();
  sub_22C90258C();
  v94 = sub_22C90241C();
  sub_22C37BFE0(v38);
  if (v102)
  {
    v95 = &qword_27D9BC428;
    v96 = v38;
LABEL_10:
    sub_22C36DD80(v96, v95);
    goto LABEL_15;
  }

  v97 = v176;
  sub_22C90235C();
  sub_22C36BBA8();
  (*(v98 + 8))(v38, v94);
  v99 = sub_22C90240C();
  v100 = sub_22C383C3C();
  sub_22C36D0A8(v100, v101, v99);
  if (v102)
  {
    v95 = &qword_27D9BC430;
    v96 = v97;
    goto LABEL_10;
  }

  v103 = sub_22C9023FC();
  v105 = v104;
  sub_22C36BBA8();
  (*(v106 + 8))(v97, v99);
  sub_22C372280();
  v107 = sub_22C90A30C();
  if ((v107 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(v107))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  LOBYTE(v203) = 0;
  sub_22C9045CC();
  v203 = v103;
  v204 = v105;
  v108 = v172[0];
  sub_22C8FFFEC();
  sub_22C3858B4();
  v109 = sub_22C90ACFC();
  sub_22C36FB04();
  v110(v108, v173);

  v88 = *(v109 + 16);

  if (!HIDWORD(v88))
  {
    LOBYTE(v203) = 0;
    sub_22C90462C();
LABEL_15:
    v111 = v193;
    sub_22C89D150();
    v112 = v192;
    v113 = swift_allocBox();
    v115 = sub_22C70C980(v113, v114);
    (*(v191 + 16))(v115, v2, v112);
    *v179 = v88;
    sub_22C90481C();
    sub_22C8A5140();
    sub_22C37A060();
    v116();
    v117 = sub_22C371A14();
    sub_22C36CD04(v117, v118, v119, v112);
    sub_22C90487C();
    v120 = v195;
    v121 = v196;
    v189 = *(v194 + 16);
    v189(v195, v111, v196);
    v122 = sub_22C371A14();
    v125 = sub_22C36CD04(v122, v123, v124, v121);
    sub_22C89D8DC(v125);
    sub_22C36DD80(v120, &qword_27D9C1068);
    sub_22C9049EC();
    v126 = v202;
    sub_22C907FFC();
    v127 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    *v126 = v127;
    v128 = v127;
    sub_22C9007BC();
    v129 = v182;
    sub_22C90082C();
    v130 = sub_22C90081C();
    sub_22C36FB04();
    v131(v129, v184);
    [v128 setTimeZone_];

    v132 = type metadata accessor for TypedValueFormatter(0);
    sub_22C386E98(*(v132 + 20));
    v133 = v180;
    sub_22C90258C();
    sub_22C37BFE0(v133);
    if (v102)
    {
      v134 = &qword_27D9BC428;
      v135 = v133;
    }

    else
    {
      v136 = v174;
      sub_22C90236C();
      sub_22C36BBA8();
      (*(v137 + 8))(v133, v94);
      v138 = sub_22C90240C();
      sub_22C36D0A8(v136, 1, v138);
      if (!v139)
      {
        sub_22C9023FC();
        sub_22C36BBA8();
        v140 = sub_22C372FCC();
        v141(v140);
        v142 = sub_22C8A5220();
        sub_22C8E9F9C(v142, v143, v144);

        sub_22C9049AC();
        goto LABEL_22;
      }

      v134 = &qword_27D9BC430;
      v135 = v136;
    }

    sub_22C36DD80(v135, v134);
LABEL_22:
    v145 = v177;
    sub_22C90258C();
    sub_22C37BFE0(v145);
    if (v102)
    {
      v146 = &qword_27D9BC428;
      v147 = v145;
    }

    else
    {
      v148 = v175;
      sub_22C90235C();
      sub_22C36BBA8();
      (*(v149 + 8))(v145, v94);
      sub_22C90240C();
      sub_22C37BFE0(v148);
      if (!v150)
      {
        sub_22C9023FC();
        sub_22C36BBA8();
        v151 = sub_22C3806B8();
        v152(v151);
        v153 = sub_22C8A5220();
        sub_22C8E9F9C(v153, v154, v155);

        v156 = v178;
        sub_22C90499C();
LABEL_29:

        sub_22C36BA00();
        v157 = v201;
        sub_22C9049CC();
        sub_22C9049BC();
        sub_22C90460C();
        sub_22C90461C();
        v158 = v186;
        sub_22C89D150();
        v159 = v187;
        sub_22C646A98();
        v160 = v188;
        v161(v156, v157, v188);
        v162 = sub_22C371A14();
        sub_22C36CD04(v162, v163, v164, v160);
        sub_22C904A4C();
        v165 = v195;
        v166 = v196;
        v189(v195, v158, v196);
        v167 = sub_22C37049C();
        v170 = sub_22C8A51F0(v167, v168, v169, v166);
        sub_22C89D8DC(v170);
        sub_22C36DD80(v165, &qword_27D9C1068);
        v171 = *(v194 + 8);
        v171(v158, v166);
        sub_22C8A50D8();
        (*(v159 + 8))(v157, v160);
        v171(v193, v166);
        (*(v199 + 8))(v198, v200);
        (*(v191 + 8))(v2, v192);
        sub_22C36CC48();
        return;
      }

      v146 = &qword_27D9BC430;
      v147 = v148;
    }

    sub_22C36DD80(v147, v146);
    v156 = v178;
    goto LABEL_29;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_22C89F34C()
{
  sub_22C3704C4();
  v3 = sub_22C90454C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C3881C0();
  (*(v5 + 104))(v2, *MEMORY[0x277D1FAE0], v3);
  v7 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  swift_beginAccess();
  (*(v5 + 40))(v1 + v7, v2, v3);
  swift_endAccess();
  v8 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  swift_beginAccess();
  sub_22C90474C();
  sub_22C36985C();
  (*(v9 + 24))(v1 + v8, v0);
  return swift_endAccess();
}

uint64_t sub_22C89F4A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers;
  v4 = sub_22C90451C();
  sub_22C36C640(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId;
  v6 = sub_22C90069C();
  sub_22C36C640(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_transcript;
  v8 = sub_22C90880C();
  sub_22C36C640(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  *(v1 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source) = 0;
  v10 = *MEMORY[0x277D1FAD8];
  v11 = sub_22C90454C();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  v12 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  *(v1 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason) = 0;
  v13 = *MEMORY[0x277D1FB28];
  v14 = sub_22C90474C();
  (*(*(v14 - 8) + 104))(v1 + v12, v13, v14);
  v15 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input;
  v16 = sub_22C90806C();
  sub_22C36C640(v1 + v15, 1, 1, v16);
  v17 = (v1 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId);
  *v17 = 0;
  v17[1] = 0;
  *(v1 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_error) = 0;

  return sub_22C89D10C(a1);
}

void sub_22C89F630()
{
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers, &qword_27D9BB7A0);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId, &qword_27D9BB190);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_transcript, &qword_27D9C10D0);
  v1 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  sub_22C90454C();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  sub_22C90474C();
  sub_22C36985C();
  (*(v4 + 8))(v0 + v3);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input, &qword_27D9C0F60);

  v5 = *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_error);
}

uint64_t sub_22C89F76C()
{
  swift_weakDestroy();
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers, &qword_27D9BB7A0);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId, &qword_27D9BB190);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_transcript, &qword_27D9C10D0);
  v1 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  sub_22C90454C();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  sub_22C90474C();
  sub_22C36985C();
  (*(v4 + 8))(v0 + v3);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input, &qword_27D9C0F60);

  return v0;
}

uint64_t sub_22C89F8A8()
{
  sub_22C89F76C();

  return swift_deallocClassInstance();
}

void sub_22C89F928(uint64_t a1)
{
  sub_22C8A0CB0(319, &qword_27D9BDFE0, MEMORY[0x277D1F738]);
  if (v1 <= 0x3F)
  {
    sub_22C8A0CB0(319, &qword_27D9C0190, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_22C8A0CB0(319, &qword_27D9C1000, MEMORY[0x277D1E628]);
      if (v3 <= 0x3F)
      {
        sub_22C90454C();
        if (v4 <= 0x3F)
        {
          sub_22C90474C();
          if (v5 <= 0x3F)
          {
            sub_22C8A0CB0(319, &qword_27D9C0FC8, MEMORY[0x277D1E2D8]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C89FB64(uint64_t a1)
{
  sub_22C90B21C();
  sub_22C37BB14();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_22C89FC20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C89FB64(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22C89FC50@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22C89D078(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_22C89FC7C()
{
  sub_22C36BA7C();
  sub_22C8A5230(v3);
  v4 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C10C8, &unk_22C92BF90);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C374FF8();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C36A588();
  sub_22C904A3C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C373CE0();
  sub_22C90471C();

  sub_22C38A15C();
  sub_22C90470C();
  sub_22C3860B4();
  v10 = swift_allocBox();
  v12 = sub_22C371F78(v10, v11);
  v13(v12);
  *v2 = v10;
  sub_22C904A0C();
  sub_22C8A5140();
  sub_22C37A060();
  v14();
  v15 = sub_22C382AAC();
  sub_22C36C640(v15, v16, v17, v0);
  sub_22C8A51E4();
  sub_22C904A5C();
  v18 = sub_22C38C28C();
  v19(v18);
  v20 = sub_22C8A5154();
  sub_22C89D8DC(v20);
  sub_22C36DD80(v1, &qword_27D9C1068);
  v21 = sub_22C376B3C();
  v22(v21);
  v23 = sub_22C8A5194();
  v24(v23);
  sub_22C36CC48();
}

void sub_22C89FEB8()
{
  sub_22C36BA7C();
  sub_22C8A52AC();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C37FCFC();
  v4 = sub_22C3A5908(&qword_27D9C10C8, &unk_22C92BF90);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C374FF8();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C36A588();
  sub_22C90491C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C373CE0();
  sub_22C90456C();
  sub_22C8A5214();
  sub_22C90455C();
  sub_22C3860B4();
  v8 = swift_allocBox();
  v10 = sub_22C371F78(v8, v9);
  v11(v10);
  *v1 = v8;
  sub_22C904A0C();
  sub_22C36985C();
  v12 = sub_22C375C78();
  v13(v12);
  sub_22C38AC64();
  sub_22C904A5C();
  v14 = sub_22C38C28C();
  v15(v14);
  v16 = sub_22C8A5154();
  sub_22C89D8DC(v16);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v17 = sub_22C376B3C();
  v18(v17);
  v19 = sub_22C8A5194();
  v20(v19);
  sub_22C36CC48();
}