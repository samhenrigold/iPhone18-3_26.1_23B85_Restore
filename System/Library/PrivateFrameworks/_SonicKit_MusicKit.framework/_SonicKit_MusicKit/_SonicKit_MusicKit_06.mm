uint64_t sub_275360660(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = (a2 - __src) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 >= v9)
  {
    sub_275385858(a2, (a3 - a2) / 56, __dst);
    v10 = &v4[56 * v9];
    while (1)
    {
      v18 = v6;
      v5 -= 56;
LABEL_24:
      if (v10 <= v4 || v6 <= v7)
      {
        break;
      }

      v20 = ((*(v10 - 4) | (*(v10 - 6) << 16)) >> 21) & 7;
      switch(*(v6 - 6) >> 5)
      {
        case 1:
          goto LABEL_39;
        case 2:
          if ((3u >> v20))
          {
            goto LABEL_42;
          }

          goto LABEL_39;
        case 3:
          if ((7u >> v20))
          {
            goto LABEL_42;
          }

          goto LABEL_39;
        case 4:
          if ((0xFu >> v20))
          {
            goto LABEL_42;
          }

          goto LABEL_39;
        case 5:
          if (((0x1Fu >> v20) & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        default:
          if (((2u >> v20) & 1) == 0)
          {
LABEL_39:
            if (v10 != (v5 + 56))
            {
              v21 = *(v10 - 56);
              v22 = *(v10 - 40);
              v23 = *(v10 - 24);
              *(v5 + 48) = *(v10 - 1);
              *(v5 + 16) = v22;
              *(v5 + 32) = v23;
              *v5 = v21;
            }

            v5 -= 56;
            v10 -= 56;
            goto LABEL_24;
          }

LABEL_42:
          v6 -= 56;
          if ((v5 + 56) != v18)
          {
            v24 = *v6;
            v25 = *(v18 - 40);
            v26 = *(v18 - 24);
            *(v5 + 48) = *(v18 - 1);
            *(v5 + 16) = v25;
            *(v5 + 32) = v26;
            *v5 = v24;
          }

          break;
      }
    }
  }

  else
  {
    sub_275385858(__src, (a2 - __src) / 56, __dst);
    v10 = &v4[56 * v8];
    while (v4 < v10 && v6 < v5)
    {
      v12 = ((*(v6 + 24) | (v6[50] << 16)) >> 21) & 7;
      switch(v4[50] >> 5)
      {
        case 1:
          goto LABEL_15;
        case 2:
          if (((3u >> v12) & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_11;
        case 3:
          if (((7u >> v12) & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_11;
        case 4:
          if ((0xFu >> v12))
          {
            goto LABEL_11;
          }

          goto LABEL_15;
        case 5:
          if (((0x1Fu >> v12) & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_11;
        default:
          if ((2u >> v12))
          {
LABEL_11:
            v13 = v6;
            v14 = v7 == v6;
            v6 += 56;
            if (v14)
            {
              goto LABEL_17;
            }
          }

          else
          {
LABEL_15:
            v13 = v4;
            v14 = v7 == v4;
            v4 += 56;
            if (v14)
            {
              goto LABEL_17;
            }
          }

          v15 = *v13;
          v16 = v13[1];
          v17 = v13[2];
          *(v7 + 6) = *(v13 + 6);
          *(v7 + 1) = v16;
          *(v7 + 2) = v17;
          *v7 = v15;
LABEL_17:
          v7 += 56;
          break;
      }
    }

    v18 = v7;
  }

  v27 = 56 * ((v10 - v4) / 56);
  if (v18 != v4 || v18 >= &v4[v27])
  {
    memmove(v18, v4, v27);
  }

  return 1;
}

uint64_t sub_275360930(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x277C76A80](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_2753B6688();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2753609A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_275360A04(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_275360A04(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_275360A58()
{
  result = qword_2809C2808;
  if (!qword_2809C2808)
  {
    sub_2753613E8(255, &qword_2809C2800, &type metadata for MusicContent.RawIdentifier.MediaAPI);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2808);
  }

  return result;
}

void sub_275360AC0(uint64_t a1)
{
  if (!qword_2809C2810)
  {
    sub_275360B3C();
    sub_275360B90();
    v1 = sub_2753B6378();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C2810);
    }
  }
}

unint64_t sub_275360B3C()
{
  result = qword_2809C2818;
  if (!qword_2809C2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2818);
  }

  return result;
}

unint64_t sub_275360B90()
{
  result = qword_2809C2820;
  if (!qword_2809C2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2820);
  }

  return result;
}

uint64_t sub_275360BE4(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_275360C38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_27536138C(255, a3, a4);
    v5 = sub_2753B76C8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_275360C90()
{
  result = qword_2809C2848;
  if (!qword_2809C2848)
  {
    sub_2753613E8(255, &qword_2809C2840, &type metadata for MusicContent.RawIdentifier.Library);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2848);
  }

  return result;
}

void sub_275360CF8()
{
  if (!qword_2809C2850)
  {
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2850);
    }
  }
}

void sub_275360D74(uint64_t a1)
{
  if (!qword_2809C2860)
  {
    sub_275360DF0();
    sub_275360E44();
    v1 = sub_2753B6378();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C2860);
    }
  }
}

unint64_t sub_275360DF0()
{
  result = qword_2809C2868;
  if (!qword_2809C2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2868);
  }

  return result;
}

unint64_t sub_275360E44()
{
  result = qword_2809C2870;
  if (!qword_2809C2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2870);
  }

  return result;
}

unint64_t sub_275360E98()
{
  result = qword_2809C2898;
  if (!qword_2809C2898)
  {
    sub_2753613E8(255, &qword_2809C2890, &type metadata for MusicContent.RawIdentifier.CloudLibrary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2898);
  }

  return result;
}

void sub_275360F00(uint64_t a1)
{
  if (!qword_2809C28A0)
  {
    sub_275360F7C();
    sub_275360FD0();
    v1 = sub_2753B6378();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C28A0);
    }
  }
}

unint64_t sub_275360F7C()
{
  result = qword_2809C28A8;
  if (!qword_2809C28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C28A8);
  }

  return result;
}

unint64_t sub_275360FD0()
{
  result = qword_2809C28B0;
  if (!qword_2809C28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C28B0);
  }

  return result;
}

unint64_t sub_275361024()
{
  result = qword_2809C28D8;
  if (!qword_2809C28D8)
  {
    sub_2753613E8(255, &qword_2809C28D0, &type metadata for MusicContent.RawIdentifier.PurchaseHistory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C28D8);
  }

  return result;
}

void sub_27536108C()
{
  if (!qword_2809C28E0)
  {
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C28E0);
    }
  }
}

void sub_275361108(uint64_t a1)
{
  if (!qword_2809C28F0)
  {
    sub_275361184();
    sub_2753611D8();
    v1 = sub_2753B6378();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C28F0);
    }
  }
}

unint64_t sub_275361184()
{
  result = qword_2809C28F8;
  if (!qword_2809C28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C28F8);
  }

  return result;
}

unint64_t sub_2753611D8()
{
  result = qword_2809C2900;
  if (!qword_2809C2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2900);
  }

  return result;
}

unint64_t sub_27536122C()
{
  result = qword_2809C2928;
  if (!qword_2809C2928)
  {
    sub_2753613E8(255, &qword_2809C2920, &type metadata for MusicContent.RawIdentifier.StorePurchase);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2928);
  }

  return result;
}

void sub_275361294()
{
  if (!qword_2809C2930)
  {
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2930);
    }
  }
}

void sub_275361310(uint64_t a1)
{
  if (!qword_2809C2940)
  {
    sub_275361184();
    sub_2753611D8();
    v1 = sub_2753B6378();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C2940);
    }
  }
}

uint64_t sub_27536138C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2753613E8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2753B6378();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_27536145C()
{
  result = qword_2809C2968;
  if (!qword_2809C2968)
  {
    sub_2753613E8(255, &qword_2809C2960, &type metadata for MusicContent.RawIdentifier.Opaque);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2968);
  }

  return result;
}

unint64_t sub_2753614CC()
{
  result = qword_2809C2970;
  if (!qword_2809C2970)
  {
    sub_275361684(255, &qword_2809C2978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2970);
  }

  return result;
}

unint64_t sub_27536153C()
{
  result = qword_2809C2980;
  if (!qword_2809C2980)
  {
    sub_275361684(255, &qword_2809C2988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2980);
  }

  return result;
}

unint64_t sub_2753615AC()
{
  result = qword_2809C2990;
  if (!qword_2809C2990)
  {
    sub_275361684(255, &qword_2809C2998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2990);
  }

  return result;
}

unint64_t sub_27536161C()
{
  result = qword_2809C29A0;
  if (!qword_2809C29A0)
  {
    sub_275361684(255, &qword_2809C29A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29A0);
  }

  return result;
}

void sub_275361684(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2753B70B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2753616D4()
{
  result = qword_2809C29B0;
  if (!qword_2809C29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29B0);
  }

  return result;
}

unint64_t sub_27536172C()
{
  result = qword_2809C29B8;
  if (!qword_2809C29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29B8);
  }

  return result;
}

unint64_t sub_275361784()
{
  result = qword_2809C29C0;
  if (!qword_2809C29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29C0);
  }

  return result;
}

unint64_t sub_2753617DC()
{
  result = qword_2809C29C8;
  if (!qword_2809C29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29C8);
  }

  return result;
}

unint64_t sub_275361834()
{
  result = qword_2809C29D0;
  if (!qword_2809C29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29D0);
  }

  return result;
}

unint64_t sub_275361898()
{
  result = qword_2809C29D8;
  if (!qword_2809C29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29D8);
  }

  return result;
}

unint64_t sub_2753618F0()
{
  result = qword_2809C29E0;
  if (!qword_2809C29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29E0);
  }

  return result;
}

unint64_t sub_275361944(uint64_t a1)
{
  result = sub_27536196C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27536196C()
{
  result = qword_2809C29E8;
  if (!qword_2809C29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29E8);
  }

  return result;
}

unint64_t sub_2753619C4()
{
  result = qword_2809C29F0;
  if (!qword_2809C29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29F0);
  }

  return result;
}

unint64_t sub_275361A18(uint64_t a1)
{
  result = sub_275361A40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361A40()
{
  result = qword_2809C29F8;
  if (!qword_2809C29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29F8);
  }

  return result;
}

unint64_t sub_275361A98()
{
  result = qword_2809C2A00;
  if (!qword_2809C2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A00);
  }

  return result;
}

unint64_t sub_275361AEC(uint64_t a1)
{
  result = sub_275361B14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361B14()
{
  result = qword_2809C2A08;
  if (!qword_2809C2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A08);
  }

  return result;
}

unint64_t sub_275361B6C()
{
  result = qword_2809C2A10;
  if (!qword_2809C2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A10);
  }

  return result;
}

unint64_t sub_275361BC0(uint64_t a1)
{
  result = sub_275361BE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361BE8()
{
  result = qword_2809C2A18;
  if (!qword_2809C2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A18);
  }

  return result;
}

unint64_t sub_275361C40()
{
  result = qword_2809C2A20;
  if (!qword_2809C2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A20);
  }

  return result;
}

unint64_t sub_275361C94(uint64_t a1)
{
  result = sub_275361CBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361CBC()
{
  result = qword_2809C2A28;
  if (!qword_2809C2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A28);
  }

  return result;
}

unint64_t sub_275361D14()
{
  result = qword_2809C2A30;
  if (!qword_2809C2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A30);
  }

  return result;
}

unint64_t sub_275361D68(uint64_t a1)
{
  result = sub_275361D90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361D90()
{
  result = qword_2809C2A38;
  if (!qword_2809C2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A38);
  }

  return result;
}

unint64_t sub_275361DE8()
{
  result = qword_2809C2A40;
  if (!qword_2809C2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A40);
  }

  return result;
}

unint64_t sub_275361E40()
{
  result = qword_2809C2A48;
  if (!qword_2809C2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A48);
  }

  return result;
}

unint64_t sub_275361ED0()
{
  result = qword_2809C2A50;
  if (!qword_2809C2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A50);
  }

  return result;
}

unint64_t sub_275361F28()
{
  result = qword_2809C2A58;
  if (!qword_2809C2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A58);
  }

  return result;
}

unint64_t sub_275361F7C(uint64_t a1)
{
  result = sub_275361FA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361FA4()
{
  result = qword_2809C2A60;
  if (!qword_2809C2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A60);
  }

  return result;
}

unint64_t sub_275361FFC()
{
  result = qword_2809C2A68;
  if (!qword_2809C2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A68);
  }

  return result;
}

unint64_t sub_275362054()
{
  result = qword_2809C2A70;
  if (!qword_2809C2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A70);
  }

  return result;
}

unint64_t sub_2753620A8(uint64_t a1)
{
  result = sub_2753620D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2753620D0()
{
  result = qword_2809C2A78;
  if (!qword_2809C2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A78);
  }

  return result;
}

unint64_t sub_275362128()
{
  result = qword_2809C2A80;
  if (!qword_2809C2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A80);
  }

  return result;
}

unint64_t sub_275362180()
{
  result = qword_2809C2A88;
  if (!qword_2809C2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A88);
  }

  return result;
}

unint64_t sub_2753621D4(uint64_t a1)
{
  result = sub_2753621FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2753621FC()
{
  result = qword_2809C2A90;
  if (!qword_2809C2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A90);
  }

  return result;
}

unint64_t sub_275362254()
{
  result = qword_2809C2A98;
  if (!qword_2809C2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A98);
  }

  return result;
}

unint64_t sub_2753622AC()
{
  result = qword_2809C2AA0;
  if (!qword_2809C2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AA0);
  }

  return result;
}

unint64_t sub_275362300(uint64_t a1)
{
  result = sub_275362328();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275362328()
{
  result = qword_2809C2AA8;
  if (!qword_2809C2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AA8);
  }

  return result;
}

unint64_t sub_275362380()
{
  result = qword_2809C2AB0;
  if (!qword_2809C2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AB0);
  }

  return result;
}

unint64_t sub_2753623D8()
{
  result = qword_2809C2AB8;
  if (!qword_2809C2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AB8);
  }

  return result;
}

unint64_t sub_27536242C(uint64_t a1)
{
  result = sub_275362454();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275362454()
{
  result = qword_2809C2AC0;
  if (!qword_2809C2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AC0);
  }

  return result;
}

unint64_t sub_2753624AC()
{
  result = qword_2809C2AC8;
  if (!qword_2809C2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AC8);
  }

  return result;
}

unint64_t sub_275362504()
{
  result = qword_2809C2AD0;
  if (!qword_2809C2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AD0);
  }

  return result;
}

unint64_t sub_275362558(uint64_t a1)
{
  result = sub_275362580();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275362580()
{
  result = qword_2809C2AD8;
  if (!qword_2809C2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AD8);
  }

  return result;
}

unint64_t sub_2753625D8()
{
  result = qword_2809C2AE0;
  if (!qword_2809C2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AE0);
  }

  return result;
}

unint64_t sub_275362630()
{
  result = qword_2809C2AE8;
  if (!qword_2809C2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AE8);
  }

  return result;
}

unint64_t sub_275362688()
{
  result = qword_2809C2AF0;
  if (!qword_2809C2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AF0);
  }

  return result;
}

unint64_t sub_2753626E0()
{
  result = qword_2809C2AF8;
  if (!qword_2809C2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AF8);
  }

  return result;
}

unint64_t sub_275362738()
{
  result = qword_2809C2B00;
  if (!qword_2809C2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B00);
  }

  return result;
}

unint64_t sub_275362790()
{
  result = qword_2809C2B08;
  if (!qword_2809C2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B08);
  }

  return result;
}

unint64_t sub_2753627E8()
{
  result = qword_2809C2B10;
  if (!qword_2809C2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B10);
  }

  return result;
}

unint64_t sub_275362840()
{
  result = qword_2809C2B18;
  if (!qword_2809C2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B18);
  }

  return result;
}

unint64_t sub_275362898()
{
  result = qword_2809C2B20;
  if (!qword_2809C2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B20);
  }

  return result;
}

unint64_t sub_2753628F0()
{
  result = qword_2809C2B28;
  if (!qword_2809C2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B28);
  }

  return result;
}

unint64_t sub_275362948()
{
  result = qword_2809C2B30;
  if (!qword_2809C2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B30);
  }

  return result;
}

unint64_t sub_2753629A0()
{
  result = qword_2809C2B38;
  if (!qword_2809C2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B38);
  }

  return result;
}

unint64_t sub_2753629F8()
{
  result = qword_2809C2B40;
  if (!qword_2809C2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B40);
  }

  return result;
}

unint64_t sub_275362A50()
{
  result = qword_2809C2B48;
  if (!qword_2809C2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B48);
  }

  return result;
}

unint64_t sub_275362AA8()
{
  result = qword_2809C2B50;
  if (!qword_2809C2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B50);
  }

  return result;
}

unint64_t sub_275362B00()
{
  result = qword_2809C2B58;
  if (!qword_2809C2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B58);
  }

  return result;
}

unint64_t sub_275362B58()
{
  result = qword_2809C2B60;
  if (!qword_2809C2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B60);
  }

  return result;
}

unint64_t sub_275362BB0()
{
  result = qword_2809C2B68;
  if (!qword_2809C2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B68);
  }

  return result;
}

unint64_t sub_275362C08()
{
  result = qword_2809C2B70;
  if (!qword_2809C2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B70);
  }

  return result;
}

unint64_t sub_275362C60()
{
  result = qword_2809C2B78;
  if (!qword_2809C2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B78);
  }

  return result;
}

unint64_t sub_275362CB8()
{
  result = qword_2809C2B80;
  if (!qword_2809C2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B80);
  }

  return result;
}

unint64_t sub_275362D10()
{
  result = qword_2809C2B88;
  if (!qword_2809C2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B88);
  }

  return result;
}

unint64_t sub_275362D68()
{
  result = qword_2809C2B90;
  if (!qword_2809C2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B90);
  }

  return result;
}

unint64_t sub_275362DC0()
{
  result = qword_2809C2B98;
  if (!qword_2809C2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B98);
  }

  return result;
}

unint64_t sub_275362E18()
{
  result = qword_2809C2BA0;
  if (!qword_2809C2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BA0);
  }

  return result;
}

unint64_t sub_275362E70()
{
  result = qword_2809C2BA8;
  if (!qword_2809C2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BA8);
  }

  return result;
}

unint64_t sub_275362EC8()
{
  result = qword_2809C2BB0;
  if (!qword_2809C2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BB0);
  }

  return result;
}

unint64_t sub_275362F20()
{
  result = qword_2809C2BB8;
  if (!qword_2809C2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BB8);
  }

  return result;
}

unint64_t sub_275362F78()
{
  result = qword_2809C2BC0;
  if (!qword_2809C2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BC0);
  }

  return result;
}

unint64_t sub_275362FD0()
{
  result = qword_2809C2BC8;
  if (!qword_2809C2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BC8);
  }

  return result;
}

unint64_t sub_275363028()
{
  result = qword_2809C2BD0;
  if (!qword_2809C2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BD0);
  }

  return result;
}

unint64_t sub_275363080()
{
  result = qword_2809C2BD8;
  if (!qword_2809C2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BD8);
  }

  return result;
}

unint64_t sub_2753630D8()
{
  result = qword_2809C2BE0;
  if (!qword_2809C2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BE0);
  }

  return result;
}

unint64_t sub_275363130()
{
  result = qword_2809C2BE8;
  if (!qword_2809C2BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BE8);
  }

  return result;
}

unint64_t sub_275363188()
{
  result = qword_2809C2BF0;
  if (!qword_2809C2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BF0);
  }

  return result;
}

unint64_t sub_2753631E0()
{
  result = qword_2809C2BF8;
  if (!qword_2809C2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BF8);
  }

  return result;
}

unint64_t sub_275363238()
{
  result = qword_2809C2C00;
  if (!qword_2809C2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C00);
  }

  return result;
}

unint64_t sub_275363290()
{
  result = qword_2809C2C08;
  if (!qword_2809C2C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C08);
  }

  return result;
}

unint64_t sub_2753632E8()
{
  result = qword_2809C2C10;
  if (!qword_2809C2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C10);
  }

  return result;
}

unint64_t sub_275363340()
{
  result = qword_2809C2C18;
  if (!qword_2809C2C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C18);
  }

  return result;
}

unint64_t sub_275363398()
{
  result = qword_2809C2C20;
  if (!qword_2809C2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C20);
  }

  return result;
}

_BYTE *_s19MediaAPIContentTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753634F4);
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

_BYTE *sub_275363544(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275363610);
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

uint64_t _s11CloudStatusOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11CloudStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x2753637B4);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27536380C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3B && *(a1 + 33))
    {
      v2 = *a1 + 58;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 32) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x3A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_275363858(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 59;
    *(result + 8) = 0;
    if (a3 >= 0x3B)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2753638FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_27536393C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27536399C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2753639DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275363A58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_275363A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275363AF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFB && *(a1 + 51))
    {
      v2 = *a1 + 16378;
    }

    else
    {
      v2 = ((*(a1 + 50) >> 5) | (8 * ((*(a1 + 50) << 6) & 0x780 | (*(a1 + 48) >> 1)))) ^ 0x3FFF;
      if (v2 >= 0x3FFA)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_275363B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 16379;
    if (a3 >= 0x3FFB)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFB)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * ((-a2 >> 3) & 0x7F);
      *(result + 50) = ((((-a2 >> 3) & 0x7FF) - (a2 << 11)) >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_275363BE0(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

uint64_t sub_275363BFC(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  result = a1 + 48;
  v4 = (v3 | (*(result + 2) << 16)) & 0xFF01FF01 | (a2 << 21);
  *result = v3 & 0xFF01;
  *(result + 2) = BYTE2(v4);
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_275363C54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_275363C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275363CF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 51))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_275363D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275363DA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_275363DE4(uint64_t result, int a2, int a3)
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

uint64_t sub_275363E38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_275363E78(uint64_t result, int a2, int a3)
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

_BYTE *sub_275363EC8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275363F94);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_275363FD0()
{
  result = qword_2809C2C28;
  if (!qword_2809C2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C28);
  }

  return result;
}

unint64_t sub_275364028()
{
  result = qword_2809C2C30;
  if (!qword_2809C2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C30);
  }

  return result;
}

unint64_t sub_27536407C()
{
  result = qword_2809C2C38;
  if (!qword_2809C2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C38);
  }

  return result;
}

unint64_t sub_2753640D0()
{
  result = qword_2809C2C40;
  if (!qword_2809C2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C40);
  }

  return result;
}

unint64_t sub_275364124()
{
  result = qword_2809C2C48;
  if (!qword_2809C2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C48);
  }

  return result;
}

unint64_t sub_275364178()
{
  result = qword_2809C2C50;
  if (!qword_2809C2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C50);
  }

  return result;
}

unint64_t sub_2753641CC()
{
  result = qword_2809C2C58;
  if (!qword_2809C2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C58);
  }

  return result;
}

unint64_t sub_275364220()
{
  result = qword_2809C2C60;
  if (!qword_2809C2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C60);
  }

  return result;
}

unint64_t sub_275364274()
{
  result = qword_2809C2C68;
  if (!qword_2809C2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C68);
  }

  return result;
}

unint64_t sub_2753642C8()
{
  result = qword_2809C2C70;
  if (!qword_2809C2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C70);
  }

  return result;
}

unint64_t sub_27536431C()
{
  result = qword_2809C2C78;
  if (!qword_2809C2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C78);
  }

  return result;
}

unint64_t sub_275364370()
{
  result = qword_2809C2C80;
  if (!qword_2809C2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C80);
  }

  return result;
}

unint64_t sub_2753643C4()
{
  result = qword_2809C2C88;
  if (!qword_2809C2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C88);
  }

  return result;
}

unint64_t sub_275364418()
{
  result = qword_2809C2C90;
  if (!qword_2809C2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C90);
  }

  return result;
}

unint64_t sub_27536446C()
{
  result = qword_2809C2C98;
  if (!qword_2809C2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C98);
  }

  return result;
}

unint64_t sub_2753644C0()
{
  result = qword_2809C2CA0;
  if (!qword_2809C2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2CA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_2753B6368();
}

void OUTLINED_FUNCTION_11_4()
{

  JUMPOUT(0x277C76100);
}

uint64_t OUTLINED_FUNCTION_17_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_2753B64C8();
}

uint64_t OUTLINED_FUNCTION_19_4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_2753B64C8();
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1, ...)
{

  return sub_2753B6688();
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_275315CB8(a1, a2, a3, v3, v5, v6, v4);
}

void OUTLINED_FUNCTION_32_2()
{

  JUMPOUT(0x277C76100);
}

void OUTLINED_FUNCTION_33_1()
{

  JUMPOUT(0x277C76100);
}

void OUTLINED_FUNCTION_34_3()
{

  JUMPOUT(0x277C76100);
}

void OUTLINED_FUNCTION_35_2()
{

  JUMPOUT(0x277C76100);
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return sub_275315CB8(v5, v3, v0, v2, v6, v1, v4);
}

uint64_t OUTLINED_FUNCTION_37_3(uint64_t a1, uint64_t a2)
{

  return sub_2753B7718();
}

uint64_t OUTLINED_FUNCTION_41_3()
{
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_2753B64C8();
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17)
{

  return sub_275315CB8(a1, a2, a3, a11, a17, a14, a16);
}

uint64_t OUTLINED_FUNCTION_55_3()
{
}

uint64_t OUTLINED_FUNCTION_56_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, unsigned int a5@<W6>, uint64_t a6@<X8>)
{

  return sub_275315CB8(a1, a2, a3, v6, a6, a4, a5);
}

uint64_t OUTLINED_FUNCTION_59_3()
{

  return sub_2753B7718();
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1, uint64_t a2)
{

  return sub_2753B7718();
}

void OUTLINED_FUNCTION_62_2(uint64_t a1, unint64_t *a2, unint64_t *a3)
{

  sub_275360C38(0, a2, a3, v3);
}

void OUTLINED_FUNCTION_63_2(uint64_t a1, unint64_t *a2)
{

  sub_2753613E8(0, a2, v2);
}

uint64_t *OUTLINED_FUNCTION_64_3(uint64_t a1)
{
  *(v1 + 64) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 32));
}

__n128 OUTLINED_FUNCTION_68_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *v11 = a10;
  v11[1].n128_u64[0] = v10;
  v11[1].n128_u8[8] = v12;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_275315CB8(a1, a2, a3, a4, v18, a17, v17);
}

uint64_t *OUTLINED_FUNCTION_71_3(uint64_t a1)
{
  *(v1 + 144) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 112));
}

uint64_t OUTLINED_FUNCTION_72_3()
{
}

uint64_t OUTLINED_FUNCTION_73_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_75_3(uint64_t a1)
{
  *(v1 + 104) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 72));
}

uint64_t MusicContent.SourceIdentifierType.hashValue.getter()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

unint64_t sub_275364C94()
{
  result = qword_2809C2CA8;
  if (!qword_2809C2CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2CA8);
  }

  return result;
}

unint64_t sub_275364D14()
{
  result = qword_2809C2CB0;
  if (!qword_2809C2CB0)
  {
    sub_275364D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2CB0);
  }

  return result;
}

void sub_275364D6C()
{
  if (!qword_2809C2CB8)
  {
    v0 = sub_2753B70B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2CB8);
    }
  }
}

_BYTE *_s7SourcesOwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x275364E68);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s20SourceIdentifierTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x275364F6CLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_275364FAC(uint64_t a1, char a2)
{
  sub_2753B7798();
  MEMORY[0x277C76A80](qword_2753CBE48[a2]);
  return sub_2753B77D8();
}

uint64_t sub_275364FFC(uint64_t a1)
{
  OUTLINED_FUNCTION_271_0(a1);
  if (v1)
  {
    v2 = 24;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277C76A80](v2);
  return sub_2753B77D8();
}

uint64_t sub_275365040(uint64_t a1)
{
  OUTLINED_FUNCTION_271_0(a1);
  sub_2753B6688();

  return sub_2753B77D8();
}

uint64_t sub_275365134(uint64_t a1)
{
  OUTLINED_FUNCTION_271_0(a1);
  sub_2753B6688();

  return sub_2753B77D8();
}

uint64_t sub_2753651BC(uint64_t a1)
{
  OUTLINED_FUNCTION_271_0(a1);
  sub_2753B6688();

  return sub_2753B77D8();
}

uint64_t sub_275365238(uint64_t a1, unsigned __int8 a2)
{
  sub_2753B7798();
  MEMORY[0x277C76A80](a2);
  return sub_2753B77D8();
}

uint64_t sub_27536527C(uint64_t a1)
{
  OUTLINED_FUNCTION_271_0(a1);
  MediaAPI.MediaAPIType.rawValue.getter();
  sub_2753B6688();

  return sub_2753B77D8();
}

uint64_t sub_2753652D8(uint64_t a1, char a2)
{
  sub_2753B7798();
  MEMORY[0x277C76A80](a2 & 1);
  return sub_2753B77D8();
}

uint64_t sub_27536531C(uint64_t a1)
{
  OUTLINED_FUNCTION_271_0(a1);
  MEMORY[0x277C76A80]((v1 & 1u) + 1);
  return sub_2753B77D8();
}

uint64_t sub_275365374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_2753B7798();
  a3(v6, a2);
  return sub_2753B77D8();
}

uint64_t sub_275365400(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2753863DC(result, 1, sub_275384F68);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_275365504(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2753863DC(result, 1, a2);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t MusicContentStorage.Operations.registration(for:followRedirect:)()
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 240) = v2;
  *(v1 + 128) = v3;
  *(v1 + 136) = v0;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  OUTLINED_FUNCTION_21_4();
  v6 = MEMORY[0x277D65188];
  sub_2753868E4(0, &qword_2809C1310, v7, v8, MEMORY[0x277D65188]);
  *(v1 + 144) = v9;
  OUTLINED_FUNCTION_17_1(v9);
  *(v1 + 152) = v10;
  *(v1 + 160) = OUTLINED_FUNCTION_138_0();
  sub_27538685C(0, &qword_2809C2CC8, &qword_2809C1310, v6);
  OUTLINED_FUNCTION_75(v11);
  *(v1 + 168) = OUTLINED_FUNCTION_187_1();
  *(v1 + 176) = swift_task_alloc();
  sub_2753B6288();
  *(v1 + 184) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v12, 255, v13);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  *(v1 + 192) = v14;
  *(v1 + 200) = v15;
  v16 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_27536577C()
{
  OUTLINED_FUNCTION_66_0();
  v1 = v0[22];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v0[26] = *(v0[17] + 40);

  v5 = sub_2753B6558();
  v0[10] = v4;
  v0[11] = v3;
  v6 = OUTLINED_FUNCTION_6_3();
  sub_27538672C(v6, v7, v8);
  v0[27] = v9;
  sub_2753B64A8();

  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {

    v23 = OUTLINED_FUNCTION_78_2();
    v24(v23);
    v5(v0 + 2, 0);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_179();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v10, v11, v12, v13, sub_27538685C);
  v5(v0 + 2, 0);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[28] = v14;
  *v14 = v15;
  v14[1] = sub_27536596C;
  OUTLINED_FUNCTION_179();

  return sub_2753792C4(v16, v17, v18, v19, v20);
}

uint64_t sub_27536596C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 232) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 200);
  v7 = *(v1 + 192);
  if (v0)
  {
    v8 = sub_275365BC0;
  }

  else
  {
    v8 = sub_275365A94;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275365A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v16 = v14[20];
  v15 = v14[21];
  v17 = v14[18];
  v18 = v14[19];
  v19 = v14[15];
  v20 = v14[16];
  v33 = v14[27];
  v34 = v14[14];

  v21 = OUTLINED_FUNCTION_97_0();
  v22(v21);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  v14[12] = v19;
  v14[13] = v20;

  v23 = sub_2753B6558();
  sub_2753B64B8();
  v23(v14 + 6, 0);
  (*(v18 + 32))(v34, v16, v17);

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_173();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, a12, a13, a14);
}

uint64_t sub_275365BC0()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t MusicContentStorage.Operations.mediaAPIAttributes(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = sub_2753B6608();
  v1[18] = v4;
  OUTLINED_FUNCTION_17_1(v4);
  v1[19] = v5;
  v1[20] = OUTLINED_FUNCTION_187_1();
  v1[21] = swift_task_alloc();
  v6 = sub_2753B65D8();
  v1[22] = v6;
  OUTLINED_FUNCTION_17_1(v6);
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_187_1();
  v1[25] = swift_task_alloc();
  sub_2753B6288();
  v1[26] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v8, 255, v9);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[27] = v10;
  v1[28] = v11;
  v12 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275365D98()
{
  OUTLINED_FUNCTION_14_0();
  sub_27537D100(*(v0 + 136), v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 232) = v1;
  *(v0 + 248) = OUTLINED_FUNCTION_227_1(*&v1);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 256) = v2;
  *v2 = v3;
  v2[1] = sub_275365E74;
  v4 = *(v0 + 168);
  v5 = *(v0 + 128);
  v6 = *(v0 + 120);

  return sub_27537542C(v4, v6, v5);
}

uint64_t sub_275365E74()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 264) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 224);
  v7 = *(v1 + 216);
  if (v0)
  {
    v8 = sub_2753662FC;
  }

  else
  {
    v8 = sub_275365F9C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275365F9C()
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  sub_2753B6598();
  OUTLINED_FUNCTION_165_1();
  v0[34] = v1;
  v0[35] = v2;
  v3 = OUTLINED_FUNCTION_302_0();
  v4(v3);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v5 = OUTLINED_FUNCTION_47_3();
  v6(v5);
  OUTLINED_FUNCTION_273_0();
  v7 = swift_task_alloc();
  v0[36] = v7;
  v8 = MEMORY[0x277D837D0];
  v0[7] = MEMORY[0x277D837D0];
  v0[8] = &type metadata for MusicContent.MediaAPIContentType;
  v0[9] = v8;
  v9 = MEMORY[0x277D65008];
  v0[10] = MEMORY[0x277D65008];
  v0[11] = sub_2753627E8();
  v0[12] = v9;
  *v7 = v0;
  v7[1] = sub_2753660EC;
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x2821CC228](v10);
}

uint64_t sub_2753660EC()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 272);
  *v4 = *v2;
  *(v3 + 296) = v0;

  v6 = OUTLINED_FUNCTION_97_0();
  v5(v6);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27536626C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_285_0();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_217();

  return v3(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_2753662FC()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  v0 = OUTLINED_FUNCTION_36_3();
  v1(v0);
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_275366398()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t MusicContentStorage.Operations.relatedContent(to:as:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v5 = sub_2753B65D8();
  v1[28] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v1[29] = v6;
  v1[30] = OUTLINED_FUNCTION_187_1();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v7 = sub_2753B6608();
  v1[33] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_187_1();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_2753B6288();
  v1[38] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v9, 255, v10);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[39] = v11;
  v1[40] = v12;
  v13 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_275366590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_67();
  sub_2753B65E8();
  sub_2753B69E8();
  if (v15)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_85_0();
    sub_2753B65B8();
    v16 = MEMORY[0x277D837D0];
    *(v12 + 136) = v14;
    v17 = MEMORY[0x277D65000];
    *(v12 + 160) = v16;
    *(v12 + 168) = v17;
    *(v12 + 144) = v13;
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1((v12 + 136));
    OUTLINED_FUNCTION_67();
    sub_2753B65B8();
    sub_2753B65F8();
    v18 = OUTLINED_FUNCTION_53();
    v19(v18);
    v20 = OUTLINED_FUNCTION_129_0();
    v21(v20);
  }

  sub_27537D100(*(v12 + 216), v12 + 16);
  *(v12 + 344) = OUTLINED_FUNCTION_150_2((v12 + 328));
  sub_2753B65C8();
  sub_2753B65B8();
  v22 = swift_task_alloc();
  *(v12 + 352) = v22;
  *v22 = v12;
  v22[1] = sub_275366720;
  OUTLINED_FUNCTION_86_1(*(v12 + 192));
  OUTLINED_FUNCTION_100_0();

  return sub_27537633C();
}

uint64_t sub_275366720()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_3();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v4[45] = v0;

  if (v0)
  {
    v8 = v4[39];
    v9 = v4[40];
    v10 = sub_275366C24;
  }

  else
  {
    v4[46] = v1;
    v8 = v4[39];
    v9 = v4[40];
    v10 = sub_27536682C;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_27536682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_255(v16);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_2753B65B8();
  v14[15] = sub_2753B6A18();
  OUTLINED_FUNCTION_141_1();
  v14[16] = sub_2753870A8(v17, 255, v18);
  __swift_allocate_boxed_opaque_existential_1(v14 + 12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_182_0();
  v19();
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v14 + 12);
  sub_2753B65B8();
  sub_2753B6598();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v20 = OUTLINED_FUNCTION_76();
  v21(v20);
  sub_2753B65F8();
  v22 = swift_task_alloc();
  v14[22] = MEMORY[0x277D64FD0];
  v23 = MEMORY[0x277D64FC0];
  v14[47] = v22;
  v14[23] = v23;
  *v22 = v14;
  v22[1] = sub_275366A0C;
  OUTLINED_FUNCTION_86_1(v14[35]);
  OUTLINED_FUNCTION_179();

  return MEMORY[0x2821CC208](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_275366A0C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *v5 = *v1;
  v4[48] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_157_2();
    v4[52] = v6;
    v4[53] = v7;
  }

  else
  {
    v4[49] = v3;
    OUTLINED_FUNCTION_157_2();
    v4[50] = v6;
    v4[51] = v8;
  }

  v6();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_275366B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = *(v12 + 400);
  OUTLINED_FUNCTION_323_0();
  v14 = OUTLINED_FUNCTION_306();
  v13(v14);
  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_100_0();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_275366C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_322_0();
  v10 = OUTLINED_FUNCTION_90_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_96_0();
  v13(v12);
  OUTLINED_FUNCTION_91_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_111_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_275366CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = *(v10 + 416);

  v12 = OUTLINED_FUNCTION_96_0();
  v11(v12);
  OUTLINED_FUNCTION_91_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_111_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t MusicContentStorage.Operations.mediaAPITransitionInfo(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2753B6608();
  v1[19] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_187_1();
  v1[22] = swift_task_alloc();
  v7 = sub_2753B65D8();
  v1[23] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_187_1();
  v1[26] = swift_task_alloc();
  sub_2753B6288();
  v1[27] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v9, 255, v10);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[28] = v11;
  v1[29] = v12;
  v13 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_275366ED0()
{
  OUTLINED_FUNCTION_14_0();
  sub_27537D100(*(v0 + 144), v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 240) = v1;
  *(v0 + 256) = OUTLINED_FUNCTION_227_1(*&v1);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 264) = v2;
  *v2 = v3;
  v2[1] = sub_275366FAC;
  v4 = *(v0 + 176);
  v5 = *(v0 + 136);
  v6 = *(v0 + 128);

  return sub_27537542C(v4, v6, v5);
}

uint64_t sub_275366FAC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 272) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 232);
  v7 = *(v1 + 224);
  if (v0)
  {
    v8 = sub_275367420;
  }

  else
  {
    v8 = sub_2753670D4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2753670D4()
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  sub_2753B6598();
  OUTLINED_FUNCTION_165_1();
  v0[35] = v1;
  v0[36] = v2;
  v3 = OUTLINED_FUNCTION_302_0();
  v4(v3);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v5 = OUTLINED_FUNCTION_47_3();
  v6(v5);
  OUTLINED_FUNCTION_273_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v7 = MEMORY[0x277CC9318];
  v0[37] = v8;
  v0[7] = v7;
  v0[8] = v7;
  v0[9] = v7;
  v0[10] = v7;
  v9 = MEMORY[0x277D64EE8];
  v0[11] = MEMORY[0x277D64EE8];
  v0[12] = v9;
  v0[13] = v9;
  v0[14] = v9;
  *v8 = v10;
  v8[1] = sub_27536721C;
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x2821CC228](v11);
}

uint64_t sub_27536721C()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 280);
  *v4 = *v2;
  *(v3 + 304) = v0;

  v6 = OUTLINED_FUNCTION_97_0();
  v5(v6);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27536739C()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_275367420()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  v0 = OUTLINED_FUNCTION_36_3();
  v1(v0);
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2753674BC()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t MusicContentStorage.Operations.hasMediaAPIAttributes(containing:for:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  v1[15] = v4;
  v1[16] = v0;
  v1[14] = v5;
  v6 = sub_2753B6608();
  v1[17] = v6;
  OUTLINED_FUNCTION_17_1(v6);
  v1[18] = v7;
  v1[19] = OUTLINED_FUNCTION_187_1();
  v1[20] = swift_task_alloc();
  v8 = sub_2753B65D8();
  v1[21] = v8;
  OUTLINED_FUNCTION_17_1(v8);
  v1[22] = v9;
  v1[23] = OUTLINED_FUNCTION_187_1();
  v10 = swift_task_alloc();
  v11 = *v3;
  v1[24] = v10;
  v1[25] = v11;
  sub_2753B6288();
  v1[26] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v12, 255, v13);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[27] = v14;
  v1[28] = v15;
  v16 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2753676A4()
{
  OUTLINED_FUNCTION_14_0();
  if (*(v0 + 200))
  {
    sub_27537D100(*(v0 + 128), v0 + 16);
    v1 = *(v0 + 40);
    *(v0 + 232) = v1;
    *(v0 + 248) = OUTLINED_FUNCTION_227_1(*&v1);
    sub_2753B65C8();
    OUTLINED_FUNCTION_85_0();
    sub_2753B65B8();
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    *(v0 + 256) = v2;
    *v2 = v3;
    v2[1] = sub_2753677F4;
    v4 = *(v0 + 160);
    v5 = *(v0 + 120);
    v6 = *(v0 + 112);

    return sub_27537542C(v4, v6, v5);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 304) = v8;
    *v8 = v0;
    v8[1] = sub_275367CD8;
    OUTLINED_FUNCTION_86_1(*(v0 + 112));

    return MusicContentStorage.Operations.hasMediaAPIAttributes(for:)();
  }
}

uint64_t sub_2753677F4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 264) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 224);
  v7 = *(v1 + 216);
  if (v0)
  {
    v8 = sub_275367EF4;
  }

  else
  {
    v8 = sub_27536791C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_27536791C()
{
  OUTLINED_FUNCTION_144_0();
  v1 = v0[25];
  v2 = v0[18];
  sub_2753B6598();
  v0[34] = *(v2 + 8);
  v0[35] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3 = OUTLINED_FUNCTION_107_0();
  v4(v3);
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v5 = MEMORY[0x277D65050];
  v0[10] = MEMORY[0x277D83B88];
  v0[11] = v5;
  v0[7] = v1;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_2753B65B8();
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  sub_2753B65F8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[12] = MEMORY[0x277D839B0];
  v8 = MEMORY[0x277D65048];
  v0[36] = v9;
  v0[13] = v8;
  *v9 = v10;
  v9[1] = sub_275367AC0;
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_100_0();

  return MEMORY[0x2821CC228](v11);
}

uint64_t sub_275367AC0()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 272);
  *v4 = *v2;
  *(v3 + 296) = v0;

  v6 = OUTLINED_FUNCTION_97_0();
  v5(v6);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275367C40()
{
  OUTLINED_FUNCTION_3();

  v1 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_105_3();

  return v2(v1 & 1);
}

uint64_t sub_275367CD8()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 312) = v0;

  if (v0)
  {
    v9 = *(v5 + 216);
    v10 = *(v5 + 224);
    v11 = sub_275367E74;
  }

  else
  {
    *(v5 + 321) = v3 & 1;
    v9 = *(v5 + 216);
    v10 = *(v5 + 224);
    v11 = sub_275367DEC;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_275367DEC()
{
  OUTLINED_FUNCTION_3();

  v1 = *(v0 + 321);
  OUTLINED_FUNCTION_331_0();

  OUTLINED_FUNCTION_105_3();

  return v2(v1);
}

uint64_t sub_275367E74()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_331_0();

  v0 = OUTLINED_FUNCTION_66_4();

  return v1(v0);
}

uint64_t sub_275367EF4()
{
  OUTLINED_FUNCTION_3();

  v1 = OUTLINED_FUNCTION_36_3();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_331_0();

  v3 = OUTLINED_FUNCTION_66_4();

  return v4(v3);
}

uint64_t sub_275367F94()
{
  OUTLINED_FUNCTION_3();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_331_0();

  v1 = OUTLINED_FUNCTION_66_4();

  return v2(v1);
}

uint64_t MusicContentStorage.Operations.registerContent(_:in:)()
{
  OUTLINED_FUNCTION_3();
  v2[175] = v1;
  v2[174] = v4;
  v2[173] = v5;
  v2[172] = v6;
  OUTLINED_FUNCTION_10_6();
  sub_2753868E4(0, v7, v8, v9, MEMORY[0x277D64F00]);
  v2[176] = v10;
  OUTLINED_FUNCTION_75(v10);
  v2[177] = OUTLINED_FUNCTION_138_0();
  v11 = sub_2753B6608();
  v2[178] = v11;
  OUTLINED_FUNCTION_17_1(v11);
  v2[179] = v12;
  v2[180] = OUTLINED_FUNCTION_187_1();
  v2[181] = swift_task_alloc();
  v2[182] = swift_task_alloc();
  v2[183] = swift_task_alloc();
  v2[184] = swift_task_alloc();
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v2[188] = swift_task_alloc();
  v13 = sub_2753B65D8();
  v2[189] = v13;
  OUTLINED_FUNCTION_17_1(v13);
  v2[190] = v14;
  v2[191] = OUTLINED_FUNCTION_187_1();
  v2[192] = swift_task_alloc();
  v2[193] = swift_task_alloc();
  v2[194] = swift_task_alloc();
  v2[195] = swift_task_alloc();
  v2[196] = swift_task_alloc();
  v2[197] = swift_task_alloc();
  v2[198] = swift_task_alloc();
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();
  v2[201] = swift_task_alloc();
  v2[202] = swift_task_alloc();
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  sub_27537D164(0);
  v2[209] = v15;
  OUTLINED_FUNCTION_75(v15);
  v2[210] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_146_2();
  sub_2753868E4(0, v16, v0, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v2[211] = v17;
  OUTLINED_FUNCTION_17_1(v17);
  v2[212] = v18;
  v2[213] = OUTLINED_FUNCTION_330_0();
  v2[214] = swift_task_alloc();
  v2[215] = swift_task_alloc();
  v2[216] = swift_task_alloc();
  OUTLINED_FUNCTION_144_2();
  sub_2753868E4(0, &qword_2809C1310, v0, &type metadata for MusicContent, v19);
  v2[217] = v20;
  OUTLINED_FUNCTION_17_1(v20);
  v2[218] = v21;
  v2[219] = OUTLINED_FUNCTION_138_0();
  sub_27538685C(0, &qword_2809C2CC8, &qword_2809C1310, v3);
  OUTLINED_FUNCTION_75(v22);
  v2[220] = OUTLINED_FUNCTION_187_1();
  v2[221] = swift_task_alloc();
  v2[222] = swift_task_alloc();
  sub_2753B6288();
  v2[223] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v23, 255, v24);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v2[224] = v25;
  v2[225] = v26;
  v27 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_27536845C()
{
  OUTLINED_FUNCTION_3();
  sub_2753B6A88();
  v0[226] = v0[170];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[227] = v1;
  *v1 = v2;
  v1[1] = sub_27536851C;

  return MusicContentStorage.Operations.registration(for:followRedirect:)();
}

uint64_t sub_27536851C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_152_2();
    v9 = sub_27536DB70;
  }

  else
  {

    OUTLINED_FUNCTION_152_2();
    v9 = sub_27536863C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27536863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_294_0();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14[217]);
  v15 = OUTLINED_FUNCTION_96_0();
  sub_27537D200(v15, v16);
  OUTLINED_FUNCTION_332_0(v12);
  if (!v17)
  {
    v41 = OUTLINED_FUNCTION_190_1();
    v42(v41);
    sub_2753B6A88();
    v14[228] = v14[160];
    v43 = swift_task_alloc();
    v14[229] = v43;
    *v43 = v14;
    v43[1] = sub_275368BAC;
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_148_0();

    return sub_27537633C();
  }

  OUTLINED_FUNCTION_219_1();
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v18, v19, v20, v21, sub_27538685C);
  sub_2753B6A58();
  v22 = OUTLINED_FUNCTION_129_0();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D65178])
  {
    OUTLINED_FUNCTION_81_1();
    v25 = OUTLINED_FUNCTION_126_0();
    v26(v25);
    v27 = *v13;
    v14[281] = *v13;
    v28 = MEMORY[0x277D84F90];
    if (*(v27 + 16))
    {
      OUTLINED_FUNCTION_234_1();
      v28 = v112;
      v29 = v27 + 40;
      do
      {
        OUTLINED_FUNCTION_218_1();
        v29 += 56;
        switch(v30)
        {
          case 1:
          case 3:
          case 4:
          case 5:
            break;
          case 2:

            break;
          default:
            OUTLINED_FUNCTION_291();
            break;
        }

        v32 = *(v112 + 16);
        v31 = *(v112 + 24);

        if (v32 >= v31 >> 1)
        {
          OUTLINED_FUNCTION_262_0();
        }

        OUTLINED_FUNCTION_183(v33, v34, v35, v36, v37, v38, v39, v40, v97, v101, v106, v107, v108, v109, v110, v111);
      }

      while (!v17);
      v14 = v110;
    }

    v14[282] = v28;
    v65 = swift_task_alloc();
    v14[283] = v65;
    *v65 = v14;
    OUTLINED_FUNCTION_116_3(v65);
    OUTLINED_FUNCTION_148_0();

    return MusicContentStorage.Operations.firstContentID(matching:in:)();
  }

  if (v24 == *MEMORY[0x277D65170])
  {
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_163_0();
    v46 = OUTLINED_FUNCTION_46_3();
    v47(v46);
    v49 = *v13;
    v48 = v13[1];
    v102 = v13[2];
    OUTLINED_FUNCTION_108_3();
    sub_2753B65C8();
    OUTLINED_FUNCTION_167_1();
    OUTLINED_FUNCTION_274_0(v50 + 48);
    v51 = MEMORY[0x277D64FD0];
    v52 = MEMORY[0x277D64FB8];
    v14[48] = MEMORY[0x277D64FD0];
    v14[49] = v52;
    OUTLINED_FUNCTION_272_0();
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v14 + 45);
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_327_0();
    v14[53] = v51;
    v14[54] = v52;
    v14[50] = v49;
    v14[51] = v48;
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v14 + 50);
    OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_315_0(MEMORY[0x277D83B88], v97, v102);
    v53 = OUTLINED_FUNCTION_60_1(v14 + 55);
    v61 = OUTLINED_FUNCTION_93_3(v53, v54, v55, v56, v57, v58, v59, v60, v98, v103, v106);
    v62(v61);
    OUTLINED_FUNCTION_326_0();
    v63 = swift_task_alloc();
    v14[318] = v63;
    *v63 = v14;
    OUTLINED_FUNCTION_130_1(v63);
LABEL_24:
    OUTLINED_FUNCTION_86_1(v64);
    OUTLINED_FUNCTION_148_0();

    return MEMORY[0x2821CC218](v94);
  }

  if (v24 == *MEMORY[0x277D65168])
  {
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_163_0();
    v67 = OUTLINED_FUNCTION_46_3();
    v68(v67);
    v99 = v13[3];
    v104 = v13[2];
    OUTLINED_FUNCTION_108_3();
    sub_2753B65C8();
    OUTLINED_FUNCTION_167_1();
    OUTLINED_FUNCTION_274_0(v69 + 38);
    v14[123] = MEMORY[0x277D64FD0];
    v14[124] = MEMORY[0x277D64FB8];
    OUTLINED_FUNCTION_272_0();
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v14 + 120);
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_327_0();
    OUTLINED_FUNCTION_260_0();
    __swift_destroy_boxed_opaque_existential_1(v14 + 100);
    OUTLINED_FUNCTION_73_4();
    v70 = OUTLINED_FUNCTION_7_4();
    sub_275388174(v70, v71, v72, v73);
    v14[83] = v74;
    v75 = sub_27537D288();
    OUTLINED_FUNCTION_259_0(v75, v76, v77, v78, v79, v80, v81, v82, v99, v104);
    v83 = OUTLINED_FUNCTION_60_1(v14 + 80);
    v91 = OUTLINED_FUNCTION_93_3(v83, v84, v85, v86, v87, v88, v89, v90, v100, v105, v106);
    v92(v91);
    OUTLINED_FUNCTION_326_0();
    v93 = swift_task_alloc();
    v14[320] = v93;
    *v93 = v14;
    OUTLINED_FUNCTION_136_3(v93);
    v64 = v14[180];
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_148_0();

  return sub_2753B7708();
}

uint64_t sub_275368BAC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1840) = v5;
  *(v3 + 1848) = v0;

  OUTLINED_FUNCTION_106_3();
  if (v0)
  {
    v8 = sub_27536E0E0;
  }

  else
  {
    v8 = sub_275368CC4;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_275368CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v155 = v12;
  v13 = *(v12 + 1728);
  v14 = *(v12 + 1696);
  v15 = *(v12 + 1688);
  v16 = *(v12 + 1680);
  v17 = *(v12 + 1672);
  sub_2753B6A58();
  sub_2753B6A58();
  v18 = (v16 + *(v17 + 48));
  v19 = *(v14 + 32);
  v19(v16, v13, v15);
  v20 = OUTLINED_FUNCTION_53();
  (v19)(v20);
  v21 = *(v14 + 88);
  v22 = OUTLINED_FUNCTION_71();
  v23 = v21(v22);
  v24 = v23;
  v25 = *MEMORY[0x277D65178];
  if (v23 != v25)
  {
    if (v23 == *MEMORY[0x277D65170])
    {
      v52 = (v21)(v18, *(v12 + 1688));
      if (v52 == v25)
      {
        v53 = OUTLINED_FUNCTION_50_4();
        v54(v53);
        v55 = *v18;
        *(v12 + 2016) = v55;
        v56 = *(v55 + 16) + 1;
        v57 = v55;
        while (2)
        {
          if (--v56)
          {
            v58 = v57 + 56;
            v59 = *(v57 + 82) >> 5;
            v57 = v58;
            v60 = *(v58 - 24);
            v61 = *(v58 - 16);
            v63 = *(v58 - 8);
            v62 = *v58;
            switch(v59)
            {
              case 0:
                v64 = 0;
                v65 = 0;
                v63 = *(v58 - 8);
                goto LABEL_39;
              case 1:
                v64 = *v58;
                v65 = 32;
                goto LABEL_39;
              case 2:
                v65 = *(v58 + 8) | 0x40;

                v64 = v62;
                goto LABEL_39;
              case 3:
                v64 = *v58;
                v65 = 96;
                goto LABEL_39;
              case 4:
                v64 = *v58;
                v65 = 0x80;
LABEL_39:

                v147 = v60;
                v148 = v61;
                v149 = v63;
                v150 = v64;
                LOBYTE(v151) = v65;
                sub_27535DCC4(&v146);

                v126 = OUTLINED_FUNCTION_90_0();
                sub_2753147B0(v126, v127, v63, v64, v65);
                v86 = v146;
                if (v146 == 6)
                {
                  goto LABEL_46;
                }

                break;
              default:
                continue;
            }
          }

          else
          {
            v86 = 6;
          }

          break;
        }

        v128 = *(v12 + 1840);
        __swift_project_boxed_opaque_existential_1(*(v12 + 1400), *(*(v12 + 1400) + 24));
        sub_2753B65C8();
        OUTLINED_FUNCTION_233_1();
        v129 = OUTLINED_FUNCTION_7_4();
        sub_275388174(v129, v130, v131, v132);
        *(v12 + 344) = v133;
        OUTLINED_FUNCTION_143_2();
        *(v12 + 352) = sub_275386964(v134, v135, MEMORY[0x277D65098]);
        *(v12 + 320) = v86;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v12 + 320));
        sub_2753B65B8();
        v136 = MEMORY[0x277D65050];
        *(v12 + 264) = MEMORY[0x277D83B88];
        *(v12 + 272) = v136;
        *(v12 + 240) = v128;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v12 + 240));
        OUTLINED_FUNCTION_67();
        sub_2753B65B8();
        v137 = OUTLINED_FUNCTION_78_2();
        v138(v137);
        OUTLINED_FUNCTION_199_1();
        sub_2753B65F8();
        v139 = swift_task_alloc();
        *(v12 + 2024) = v139;
        *v139 = v12;
        v139[1] = sub_27536AAC4;
        v85 = *(v12 + 1488);
LABEL_42:
        OUTLINED_FUNCTION_86_1(v85);
        OUTLINED_FUNCTION_153_2();

        return MEMORY[0x2821CC218](v140);
      }

      if (v52 == v24)
      {
        v70 = OUTLINED_FUNCTION_50_4();
        v71(v70);
        *(v12 + 1960) = v18[1];
        *(v12 + 1968) = v18[2];
        v68 = swift_task_alloc();
        *(v12 + 1976) = v68;
        *v68 = v12;
        v69 = sub_27536A680;
      }

      else
      {
        if (v52 != *MEMORY[0x277D65168])
        {
          goto LABEL_30;
        }

        v87 = OUTLINED_FUNCTION_50_4();
        v88(v87);
        *(v12 + 2120) = v18[1];
        *(v12 + 2128) = v18[2];
        *(v12 + 2136) = v18[3];
        v68 = swift_task_alloc();
        *(v12 + 2144) = v68;
        *v68 = v12;
        v69 = sub_27536B358;
      }
    }

    else
    {
      if (v23 != *MEMORY[0x277D65168] || (v21)(v18, *(v12 + 1688)) != v23)
      {
        goto LABEL_30;
      }

      v66 = OUTLINED_FUNCTION_50_4();
      v67(v66);
      *(v12 + 2184) = v18[1];
      *(v12 + 2192) = v18[2];
      *(v12 + 2200) = v18[3];
      v68 = swift_task_alloc();
      *(v12 + 2208) = v68;
      *v68 = v12;
      v69 = sub_27536B7BC;
    }

    v68[1] = v69;
    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_153_2();

    return sub_27537633C();
  }

  if ((v21)(v18, *(v12 + 1688)) != v23)
  {
LABEL_30:
    v142 = *(v12 + 1752);
    v143 = *(v12 + 1744);
    v144 = *(v12 + 1776);
    v90 = *(v12 + 1736);
    v91 = *(v12 + 1696);
    v92 = *(v12 + 1688);
    v145 = *(v12 + 1680);

    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v12 + 67) = 3;
    sub_2753B6298();
    sub_2753B62C8();
    sub_2753B6A58();
    v93 = sub_2753B6A48();
    v95 = v94;
    v96 = *(v91 + 8);
    v97 = OUTLINED_FUNCTION_112();
    v96(v97);
    *(v12 + 1304) = v93;
    *(v12 + 1312) = v95;
    sub_2753B62B8();

    sub_2753B62C8();
    sub_2753B6A58();
    v98 = sub_2753B6A48();
    v100 = v99;
    v101 = OUTLINED_FUNCTION_112();
    v96(v101);
    *(v12 + 1288) = v98;
    *(v12 + 1296) = v100;
    sub_2753B62B8();

    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_10_6();
    sub_2753868E4(0, v102, v103, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    v104 = OUTLINED_FUNCTION_245();
    OUTLINED_FUNCTION_122(v104, v105);
    sub_2753B62E8();
    swift_willThrow();
    (*(v143 + 8))(v142, v90);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v144, v106, v107, v108, sub_27538685C);
    (v96)(v18, v92);
    (v96)(v145, v92);

    OUTLINED_FUNCTION_19_0();
    goto LABEL_31;
  }

  v26 = OUTLINED_FUNCTION_50_4();
  v27(v26);
  v28 = *v18;
  *(v12 + 1856) = *v18;
  v29 = *(v28 + 16);
  *(v12 + 1864) = v29;
  *(v12 + 1872) = 0;
  v30 = *(v28 + 16);
  if (!v29)
  {
    v72 = v30 + 1;
    while (v72 != 1)
    {
      OUTLINED_FUNCTION_178_1();
      if (v74 < 5)
      {
        v147 = OUTLINED_FUNCTION_251(v73);
        v148 = v75;
        v149 = v76;
        v150 = v77;
        v151 = v78;
        v152 = v79;
        v154 = BYTE2(v80);
        v153 = v80;
        sub_275315CB8(v147, v75, v76, v77, v78, v79, v80);
        sub_275374B74(&v147, &v146);
        sub_2752FBB6C(v147, v148, v149, v150, v151, v152, v153 | (v154 << 16));
        v81 = v146;
        if (v146 != 6)
        {
          OUTLINED_FUNCTION_205_1();
          __swift_project_boxed_opaque_existential_1(v25, *(v25 + 24));
          sub_2753B65C8();
          OUTLINED_FUNCTION_233_1();
          *(v12 + 1224) = &type metadata for MusicContent.ContentType;
          *(v12 + 1232) = sub_275356020();
          *(v12 + 1200) = v81;
          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1((v12 + 1200));
          sub_2753B65B8();
          *(v12 + 864) = MEMORY[0x277D83B88];
          *(v12 + 872) = MEMORY[0x277D65050];
          *(v12 + 840) = v17;
          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1((v12 + 840));
          OUTLINED_FUNCTION_67();
          sub_2753B65B8();
          v82 = OUTLINED_FUNCTION_78_2();
          v83(v82);
          OUTLINED_FUNCTION_199_1();
          sub_2753B65F8();
          v84 = swift_task_alloc();
          *(v12 + 1944) = v84;
          *v84 = v12;
          OUTLINED_FUNCTION_131_3(v84);
          goto LABEL_42;
        }

LABEL_47:
        __break(1u);
        JUMPOUT(0x275369C30);
      }
    }

    OUTLINED_FUNCTION_230_1();

    v111 = OUTLINED_FUNCTION_129_0();
    v112(v111);

    v113 = OUTLINED_FUNCTION_39_4();
    v114(v113);
    v115 = *(v12 + 1776);
    v116 = *(*(v12 + 1400) + 40);
    sub_2753B6A88();
    v117 = OUTLINED_FUNCTION_38_3();
    v118(v117);
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_145_2();
    v119 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v119, v120, v121);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v122 = OUTLINED_FUNCTION_214_1();
    v116(v122);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v115, v123, v124, v125, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
LABEL_31:
    OUTLINED_FUNCTION_153_2();

    __asm { BRAA            X1, X16 }
  }

  if (!v30)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v12 + 1880) = *(v28 + 32);
  *(v12 + 1888) = *(v28 + 40);
  *(v12 + 1896) = *(v28 + 48);
  *(v12 + 1904) = *(v28 + 56);
  *(v12 + 1912) = *(v28 + 64);
  *(v12 + 1920) = *(v28 + 72);
  v31 = *(v28 + 82);
  v32 = *(v28 + 80);
  *(v12 + 68) = v32;
  *(v12 + 64) = v32;
  *(v12 + 70) = v31;
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_276_0(v39, v40, v33, v34, v35, v36, v37, v38);
  *(v12 + 66) = v41;
  sub_275315CB8(v48, v42, v43, v44, v45, v46, v47);
  v49 = swift_task_alloc();
  *(v12 + 1928) = v49;
  *v49 = v12;
  OUTLINED_FUNCTION_196_1(v49);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_153_2();

  return MusicContentStorage.Operations._upsert(identifier:for:)();
}

uint64_t sub_275369C44()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 1936) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_106_3();
    v9 = sub_27536E2B0;
  }

  else
  {
    sub_2752FBB6C(*(v3 + 1880), *(v3 + 1888), *(v3 + 1896), *(v3 + 1904), *(v3 + 1912), *(v3 + 1920), *(v3 + 68) | (*(v3 + 70) << 16));
    OUTLINED_FUNCTION_106_3();
    v9 = sub_275369D70;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275369D70()
{
  v69 = v0;
  v4 = *(v0 + 1872) + 1;
  *(v0 + 1872) = v4;
  v5 = *(v0 + 1856);
  v6 = *(v5 + 16);
  if (v4 == *(v0 + 1864))
  {
    v7 = v6 + 1;
    do
    {
      if (v7 == 1)
      {
        OUTLINED_FUNCTION_230_1();

        v44 = OUTLINED_FUNCTION_129_0();
        v45(v44);

        v46 = OUTLINED_FUNCTION_39_4();
        v47(v46);
        OUTLINED_FUNCTION_32_3();
        OUTLINED_FUNCTION_2_9();
        v48 = *(*(v0 + 1400) + 40);
        sub_2753B6A88();
        v49 = OUTLINED_FUNCTION_38_3();
        v50(v49);
        OUTLINED_FUNCTION_54_3();
        OUTLINED_FUNCTION_145_2();
        v51 = OUTLINED_FUNCTION_6_3();
        sub_27538672C(v51, v52, v53);
        OUTLINED_FUNCTION_147_2();
        sub_2753B64B8();
        v54 = OUTLINED_FUNCTION_214_1();
        v48(v54);
        OUTLINED_FUNCTION_1_8();
        sub_275388564(v2, v55, v56, v57, sub_27538685C);

        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_153_2();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_178_1();
    }

    while (v9 >= 5);
    v61 = OUTLINED_FUNCTION_251(v8);
    v62 = v10;
    v63 = v11;
    v64 = v12;
    v65 = v13;
    v66 = v14;
    v68 = BYTE2(v15);
    v67 = v15;
    sub_275315CB8(v61, v10, v11, v12, v13, v14, v15);
    sub_275374B74(&v61, &v60);
    sub_2752FBB6C(v61, v62, v63, v64, v65, v66, v67 | (v68 << 16));
    v16 = v60;
    if (v60 != 6)
    {
      OUTLINED_FUNCTION_205_1();
      OUTLINED_FUNCTION_107_3(v1);
      sub_2753B65C8();
      sub_2753B65B8();
      *(v0 + 1224) = &type metadata for MusicContent.ContentType;
      *(v0 + 1232) = sub_275356020();
      *(v0 + 1200) = v16;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 1200));
      OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_325_0();
      *(v0 + 864) = MEMORY[0x277D83B88];
      *(v0 + 872) = MEMORY[0x277D65050];
      *(v0 + 840) = v3;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 840));
      OUTLINED_FUNCTION_67();
      sub_2753B65B8();
      v17 = OUTLINED_FUNCTION_78_2();
      v18(v17);
      OUTLINED_FUNCTION_199_1();
      sub_2753B65F8();
      v19 = swift_task_alloc();
      *(v0 + 1944) = v19;
      *v19 = v0;
      OUTLINED_FUNCTION_131_3(v19);
      OUTLINED_FUNCTION_86_1(v20);
      OUTLINED_FUNCTION_153_2();

      return MEMORY[0x2821CC218](v5);
    }

LABEL_17:
    __break(1u);
    return MEMORY[0x2821CC218](v5);
  }

  if (v4 >= v6)
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = (v5 + 56 * v4);
  *(v0 + 1880) = v22[4];
  *(v0 + 1888) = v22[5];
  *(v0 + 1896) = v22[6];
  *(v0 + 1904) = v22[7];
  *(v0 + 1912) = v22[8];
  *(v0 + 1920) = v22[9];
  OUTLINED_FUNCTION_283_0();
  *(v0 + 68) = v23;
  *(v0 + 64) = v23;
  OUTLINED_FUNCTION_278_0();
  *(v0 + 70) = v24;
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_276_0(v31, v32, v25, v26, v27, v28, v29, v30);
  *(v0 + 66) = v33;
  sub_275315CB8(v34, v35, v36, v37, v38, v39, v40);
  v41 = swift_task_alloc();
  *(v0 + 1928) = v41;
  *v41 = v0;
  OUTLINED_FUNCTION_196_1(v41);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_153_2();

  return MusicContentStorage.Operations._upsert(identifier:for:)();
}

uint64_t sub_27536A2C4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1952) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v5 + 1504), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 1800);
  v8 = v1[224];
  if (v0)
  {
    v9 = sub_27536E4C4;
  }

  else
  {
    v9 = sub_27536A434;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27536A434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  OUTLINED_FUNCTION_258_0();
  v52 = OUTLINED_FUNCTION_36_3();
  v53(v52);
  v54 = OUTLINED_FUNCTION_39_4();
  v55(v54);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_8_6(v56);
  v57 = v49[167];
  v58 = v49[168];
  v59 = OUTLINED_FUNCTION_78_2();
  v60(v59);
  OUTLINED_FUNCTION_95_1();
  v49[165] = v57;
  v49[166] = v58;
  OUTLINED_FUNCTION_301_0();
  sub_2753B6558();
  OUTLINED_FUNCTION_145_2();
  v61 = OUTLINED_FUNCTION_6_3();
  sub_27538672C(v61, v62, v63);
  OUTLINED_FUNCTION_147_2();
  sub_2753B64B8();
  v48(v50, 0);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v51, v64, v65, v66, sub_27538685C);

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_102_2();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_27536A680()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 1984) = v0;

  if (!v0)
  {
    *(v4 + 1992) = v3;
  }

  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_27536A7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v10 = v9[249];
  v11 = v9[246];
  OUTLINED_FUNCTION_232_1();
  OUTLINED_FUNCTION_135_2();
  sub_2753B65C8();
  sub_2753B65B8();
  v12 = MEMORY[0x277D83B88];
  v9[118] = MEMORY[0x277D83B88];
  v13 = MEMORY[0x277D65050];
  v9[119] = MEMORY[0x277D65050];
  v9[115] = v10;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 115);
  sub_2753B65B8();
  v9[113] = v12;
  v9[114] = v13;
  v9[110] = v11;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 110);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_325_0();
  v9[78] = v12;
  v9[79] = v13;
  v9[75] = a9;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 75);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v14 = OUTLINED_FUNCTION_78_2();
  v15(v14);
  OUTLINED_FUNCTION_333_0();
  v16 = swift_task_alloc();
  v9[250] = v16;
  *v16 = v9;
  v16[1] = sub_27536A954;
  OUTLINED_FUNCTION_86_1(v9[187]);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC218](v17);
}

uint64_t sub_27536A954()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 2008) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v5 + 1496), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 1800);
  v8 = v1[224];
  if (v0)
  {
    v9 = sub_27536E86C;
  }

  else
  {
    v9 = sub_27536A434;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27536AAC4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 2032) = v0;

  OUTLINED_FUNCTION_85_3();
  v7();
  if (v0)
  {

    OUTLINED_FUNCTION_106_3();
    v10 = sub_27536EA40;
  }

  else
  {
    OUTLINED_FUNCTION_106_3();
    v10 = sub_27536ABF4;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

void sub_27536ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  v51 = *(v49 + 2016);
  v52 = *(v51 + 16);
  *(v49 + 2040) = v52;
  *(v49 + 2048) = 0;
  if (v52)
  {
    if (*(v51 + 16))
    {
      *(v49 + 2056) = *(v51 + 32);
      *(v49 + 2064) = *(v51 + 40);
      *(v49 + 2072) = *(v51 + 48);
      *(v49 + 2080) = *(v51 + 56);
      *(v49 + 2088) = *(v51 + 64);
      *(v49 + 2096) = *(v51 + 72);
      v53 = *(v51 + 82);
      v54 = *(v51 + 80);
      *(v49 + 124) = v54;
      *(v49 + 120) = v54;
      *(v49 + 126) = v53;
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_270_0(v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v65 = swift_task_alloc();
      *(v49 + 2104) = v65;
      *v65 = v49;
      OUTLINED_FUNCTION_196_1(v65);
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_102_2();

      MusicContentStorage.Operations._upsert(identifier:for:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v67 = OUTLINED_FUNCTION_250_0();
    v68(v67);

    v69 = OUTLINED_FUNCTION_39_4();
    v70(v69);
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v71);
    v72 = OUTLINED_FUNCTION_38_3();
    v73(v72);
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_145_2();
    v74 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v74, v75, v76);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v77 = OUTLINED_FUNCTION_214_1();
    v48(v77);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v50, v78, v79, v80, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }
}

uint64_t sub_27536AF0C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 2112) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_106_3();
    v9 = sub_27536EC14;
  }

  else
  {
    sub_2752FBB6C(*(v3 + 2056), *(v3 + 2064), *(v3 + 2072), *(v3 + 2080), *(v3 + 2088), *(v3 + 2096), *(v3 + 124) | (*(v3 + 126) << 16));
    OUTLINED_FUNCTION_106_3();
    v9 = sub_27536B038;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

void sub_27536B038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  v51 = *(v49 + 2048) + 1;
  *(v49 + 2048) = v51;
  if (v51 == *(v49 + 2040))
  {
    v52 = OUTLINED_FUNCTION_250_0();
    v53(v52);

    v54 = OUTLINED_FUNCTION_39_4();
    v55(v54);
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v56);
    v57 = OUTLINED_FUNCTION_38_3();
    v58(v57);
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_145_2();
    v59 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v59, v60, v61);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v62 = OUTLINED_FUNCTION_214_1();
    v48(v62);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v50, v63, v64, v65, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  else if (v51 >= *(*(v49 + 2016) + 16))
  {
    __break(1u);
  }

  else
  {
    *(v49 + 2056) = OUTLINED_FUNCTION_231_1(v51);
    *(v49 + 2064) = v74[5];
    *(v49 + 2072) = v74[6];
    *(v49 + 2080) = v74[7];
    *(v49 + 2088) = v74[8];
    *(v49 + 2096) = v74[9];
    OUTLINED_FUNCTION_283_0();
    *(v49 + 124) = v75;
    *(v49 + 120) = v75;
    OUTLINED_FUNCTION_278_0();
    *(v49 + 126) = v76;
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_270_0(v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
    v87 = swift_task_alloc();
    *(v49 + 2104) = v87;
    *v87 = v49;
    OUTLINED_FUNCTION_196_1(v87);
    OUTLINED_FUNCTION_53_4();
    OUTLINED_FUNCTION_102_2();

    MusicContentStorage.Operations._upsert(identifier:for:)();
  }
}

uint64_t sub_27536B358()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 2152) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_152_2();
    v11 = sub_27536EE28;
  }

  else
  {
    *(v5 + 2160) = v3;
    OUTLINED_FUNCTION_152_2();
    v11 = sub_27536B480;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_27536B480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v10 = v9[270];
  v11 = v9[267];
  v12 = v9[266];
  OUTLINED_FUNCTION_232_1();
  OUTLINED_FUNCTION_135_2();
  sub_2753B65C8();
  sub_2753B65B8();
  v13 = MEMORY[0x277D83B88];
  v9[143] = MEMORY[0x277D83B88];
  v14 = MEMORY[0x277D65050];
  v9[144] = MEMORY[0x277D65050];
  v9[140] = v10;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 140);
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v15 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v15, v16, v17, v18);
  v9[148] = v19;
  v9[149] = sub_27537D288();
  v9[145] = v12;
  v9[146] = v11;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 145);
  sub_2753B65B8();
  v9[38] = v13;
  v9[39] = v14;
  v9[35] = a9;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 35);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v20 = OUTLINED_FUNCTION_78_2();
  v21(v20);
  OUTLINED_FUNCTION_333_0();
  v22 = swift_task_alloc();
  v9[271] = v22;
  *v22 = v9;
  v22[1] = sub_27536B64C;
  OUTLINED_FUNCTION_86_1(v9[185]);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC218](v23);
}

uint64_t sub_27536B64C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 2176) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v5 + 1480), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 1800);
  v8 = v1[224];
  if (v0)
  {
    v9 = sub_27536EFFC;
  }

  else
  {
    v9 = sub_2753886A0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27536B7BC()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 2216) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_152_2();
    v11 = sub_27536F1D0;
  }

  else
  {
    *(v5 + 2224) = v3;
    OUTLINED_FUNCTION_152_2();
    v11 = sub_27536B8E4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_27536B8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v10 = v9[278];
  v11 = v9[275];
  v12 = v9[274];
  OUTLINED_FUNCTION_232_1();
  OUTLINED_FUNCTION_135_2();
  sub_2753B65C8();
  sub_2753B65B8();
  v9[128] = MEMORY[0x277D83B88];
  v13 = MEMORY[0x277D65050];
  v9[129] = MEMORY[0x277D65050];
  v9[125] = v10;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 125);
  sub_2753B65B8();
  v14 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v14, v15, v16, v17);
  v9[133] = v18;
  v9[134] = sub_27537D288();
  v9[130] = v12;
  v9[131] = v11;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 130);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_325_0();
  v9[138] = MEMORY[0x277D83B88];
  v9[139] = v13;
  v9[135] = a9;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 135);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v19 = OUTLINED_FUNCTION_78_2();
  v20(v19);
  OUTLINED_FUNCTION_333_0();
  v21 = swift_task_alloc();
  v9[279] = v21;
  *v21 = v9;
  v21[1] = sub_27536BAB0;
  OUTLINED_FUNCTION_86_1(v9[184]);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC218](v22);
}

uint64_t sub_27536BAB0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 2240) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v5 + 1472), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 1800);
  v8 = v1[224];
  if (v0)
  {
    v9 = sub_27536F3A4;
  }

  else
  {
    v9 = sub_2753886A0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27536BC20()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_299_0();
  OUTLINED_FUNCTION_2();
  *v3 = v0;
  v4 = *v2;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v0[284] = v6;
  v0[285] = v7;
  v0[286] = v1;

  OUTLINED_FUNCTION_303_0();

  if (v1)
  {

    OUTLINED_FUNCTION_152_2();
    v10 = sub_27536F578;
  }

  else
  {
    OUTLINED_FUNCTION_152_2();
    v10 = sub_27536BD5C;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_27536BD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v54 = v12;
  if (*(v12 + 2280))
  {
    v13 = swift_task_alloc();
    *(v12 + 2296) = v13;
    *v13 = v12;
    v13[1] = sub_27536C048;
    OUTLINED_FUNCTION_86_1(*(v12 + 2272));
    OUTLINED_FUNCTION_309_0();

    return sub_27537633C();
  }

  else
  {
    v16 = *(*(v12 + 2248) + 16) + 1;
    do
    {
      if (v16 == 1)
      {
        v30 = 6;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_178_1();
    }

    while (v20 > 4);
    v21 = *(v18 + 80) | (v19 << 16);
    v22 = *(v17 - 2);
    v23 = *(v17 - 1);
    v24 = *v17;
    v25 = v17[1];
    v26 = v17[2];
    v46 = *(v17 - 3);
    v47 = v22;
    v48 = v23;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    v53 = BYTE2(v21);
    v52 = v21;

    v27 = OUTLINED_FUNCTION_129_0();
    sub_275315CB8(v27, v28, v23, v24, v25, v26, v21);
    sub_275374B74(&v46, &v45);
    sub_2752FBB6C(v46, v47, v48, v49, v50, v51, v52 | (v53 << 16));
    v30 = v45;
    if (v45 == 6)
    {
      __break(1u);
      return MEMORY[0x2821CC218](v29);
    }

LABEL_11:
    v31 = *(v12 + 1568);
    v32 = *(v12 + 1560);
    v33 = *(v12 + 1520);
    v34 = *(v12 + 1512);
    OUTLINED_FUNCTION_45_4(*(v12 + 1400));
    sub_2753B65C8();
    OUTLINED_FUNCTION_85_0();
    sub_2753B65B8();
    v35 = MEMORY[0x277D64FB8];
    *(v12 + 504) = MEMORY[0x277D64FD0];
    *(v12 + 512) = v35;
    OUTLINED_FUNCTION_272_0();
    sub_2753B6588();
    OUTLINED_FUNCTION_34_4((v12 + 480));
    v36 = OUTLINED_FUNCTION_7_4();
    sub_275388174(v36, v37, v38, v39);
    *(v12 + 544) = v40;
    OUTLINED_FUNCTION_143_2();
    *(v12 + 552) = sub_275386964(v41, v42, MEMORY[0x277D65098]);
    *(v12 + 520) = v30;
    sub_2753B6588();
    OUTLINED_FUNCTION_60_1((v12 + 520));
    (*(v33 + 32))(v32, v31, v34);
    sub_2753B65F8();
    v43 = swift_task_alloc();
    *(v12 + 2416) = v43;
    *v43 = v12;
    v43[1] = sub_27536CBE8;
    OUTLINED_FUNCTION_86_1(*(v12 + 1456));
    OUTLINED_FUNCTION_309_0();

    return MEMORY[0x2821CC218](v29);
  }
}

uint64_t sub_27536C048()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_299_0();
  OUTLINED_FUNCTION_2();
  *v3 = v0;
  v4 = *v2;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  *(v0 + 2304) = v6;
  *(v0 + 2312) = v1;

  OUTLINED_FUNCTION_303_0();

  if (v1)
  {

    OUTLINED_FUNCTION_152_2();
    v9 = sub_27536F730;
  }

  else
  {
    OUTLINED_FUNCTION_152_2();
    v9 = sub_27536C180;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27536C180()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v1 = *(v0 + 2304);
  v2 = *(v0 + 1584);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1520);
  v16 = *(v0 + 1512);
  v5 = *(v0 + 1392);
  v15 = *(v0 + 1384);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1400), *(*(v0 + 1400) + 24));
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  *(v0 + 704) = MEMORY[0x277D64FD0];
  *(v0 + 712) = MEMORY[0x277D64FB8];
  sub_2753B6A88();
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4((v0 + 680));
  *(v0 + 744) = MEMORY[0x277D83B88];
  *(v0 + 752) = MEMORY[0x277D65050];
  *(v0 + 720) = v1;
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4((v0 + 720));
  v6 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v6, v7, v8, v9);
  *(v0 + 784) = v10;
  *(v0 + 792) = sub_27537D288();
  *(v0 + 760) = v15;
  *(v0 + 768) = v5;

  sub_2753B6588();
  OUTLINED_FUNCTION_60_1((v0 + 760));
  (*(v4 + 32))(v3, v2, v16);
  OUTLINED_FUNCTION_333_0();
  v11 = swift_task_alloc();
  *(v0 + 2320) = v11;
  *v11 = v0;
  v11[1] = sub_27536C360;
  OUTLINED_FUNCTION_86_1(*(v0 + 1464));
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC218](v12);
}

uint64_t sub_27536C360()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 2328) = v0;

  OUTLINED_FUNCTION_85_3();
  v7();
  if (v0)
  {

    OUTLINED_FUNCTION_106_3();
    v10 = sub_27536F8E8;
  }

  else
  {
    OUTLINED_FUNCTION_106_3();
    v10 = sub_27536C490;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_27536C490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  result = *(v49 + 2248);
  v51 = *(result + 16);
  *(v49 + 2336) = v51;
  *(v49 + 2344) = 0;
  if (v51)
  {
    if (*(result + 16))
    {
      *(v49 + 2352) = *(result + 32);
      *(v49 + 2360) = *(result + 40);
      *(v49 + 2368) = *(result + 48);
      *(v49 + 2376) = *(result + 56);
      *(v49 + 2384) = *(result + 64);
      *(v49 + 2392) = *(result + 72);
      v52 = *(result + 82);
      v53 = *(result + 80);
      *(v49 + 180) = v53;
      *(v49 + 176) = v53;
      *(v49 + 182) = v52;
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_292_0(v60, v61, v54, v55, v56, v57, v58, v59);
      *(v49 + 178) = v62;
      sub_275315CB8(v69, v63, v64, v65, v66, v67, v68);
      v70 = swift_task_alloc();
      *(v49 + 2400) = v70;
      *v70 = v49;
      v70[1] = sub_27536C7A4;
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_102_2();

      return MusicContentStorage.Operations._upsert(identifier:for:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v72 = *(v49 + 1776);
    OUTLINED_FUNCTION_151_2();
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v73);
    v74 = OUTLINED_FUNCTION_25_4();
    v75(v74);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_145_2();
    v76 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v76, v77, v78);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v79 = OUTLINED_FUNCTION_244_0();
    v48(v79);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v72, v80, v81, v82, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    return v84(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  return result;
}

uint64_t sub_27536C7A4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 2408) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_106_3();
    v9 = sub_27536FAA0;
  }

  else
  {
    sub_2752FBB6C(*(v3 + 2352), *(v3 + 2360), *(v3 + 2368), *(v3 + 2376), *(v3 + 2384), *(v3 + 2392), *(v3 + 180) | (*(v3 + 182) << 16));
    OUTLINED_FUNCTION_106_3();
    v9 = sub_27536C8D0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

void sub_27536C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  v50 = *(v49 + 2344) + 1;
  *(v49 + 2344) = v50;
  if (v50 == *(v49 + 2336))
  {

    v51 = *(v49 + 1776);
    OUTLINED_FUNCTION_151_2();
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v52);
    v53 = OUTLINED_FUNCTION_25_4();
    v54(v53);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_145_2();
    v55 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v55, v56, v57);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v58 = OUTLINED_FUNCTION_244_0();
    v48(v58);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v51, v59, v60, v61, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  else if (v50 >= *(*(v49 + 2248) + 16))
  {
    __break(1u);
  }

  else
  {
    *(v49 + 2352) = OUTLINED_FUNCTION_231_1(v50);
    *(v49 + 2360) = v70[5];
    *(v49 + 2368) = v70[6];
    *(v49 + 2376) = v70[7];
    *(v49 + 2384) = v70[8];
    *(v49 + 2392) = v70[9];
    OUTLINED_FUNCTION_283_0();
    *(v49 + 180) = v71;
    *(v49 + 176) = v71;
    OUTLINED_FUNCTION_278_0();
    *(v49 + 182) = v72;
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_292_0(v79, v80, v73, v74, v75, v76, v77, v78);
    *(v49 + 178) = v81;
    sub_275315CB8(v82, v83, v84, v85, v86, v87, v88);
    v89 = swift_task_alloc();
    *(v49 + 2400) = v89;
    *v89 = v49;
    v89[1] = sub_27536C7A4;
    OUTLINED_FUNCTION_53_4();
    OUTLINED_FUNCTION_102_2();

    MusicContentStorage.Operations._upsert(identifier:for:)();
  }
}

uint64_t sub_27536CBE8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 2424) = v0;

  OUTLINED_FUNCTION_85_3();
  v7();
  if (v0)
  {

    OUTLINED_FUNCTION_106_3();
    v10 = sub_27536FC90;
  }

  else
  {
    OUTLINED_FUNCTION_106_3();
    v10 = sub_27536CD18;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_27536CD18()
{
  OUTLINED_FUNCTION_14_0();
  sub_27537D100(v0[175], (v0 + 70));
  sub_2753149C4(0, &qword_2809C2CF8, MEMORY[0x277D64F70]);
  sub_2753B6398();
  swift_dynamicCast();
  v0[304] = v0[171];
  v1 = swift_task_alloc();
  v0[305] = v1;
  *v1 = v0;
  v1[1] = sub_27536CDF4;

  return MEMORY[0x2821CC1A8]();
}

uint64_t sub_27536CDF4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2448) = v5;
  *(v3 + 2456) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_106_3();
    v8 = sub_27536FE48;
  }

  else
  {
    OUTLINED_FUNCTION_106_3();
    v8 = sub_27536CF04;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_27536CF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  result = *(v48 + 2248);
  v50 = *(result + 16);
  *(v48 + 2464) = v50;
  *(v48 + 2472) = 0;
  if (v50)
  {
    if (*(result + 16))
    {
      *(v48 + 2480) = *(result + 32);
      *(v48 + 2488) = *(result + 40);
      *(v48 + 2496) = *(result + 48);
      *(v48 + 2504) = *(result + 56);
      *(v48 + 2512) = *(result + 64);
      *(v48 + 2520) = *(result + 72);
      v51 = *(result + 82);
      v52 = *(result + 80);
      *(v48 + 236) = v52;
      *(v48 + 232) = v52;
      *(v48 + 238) = v51;
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_288_0(v59, v60, v53, v54, v55, v56, v57, v58);
      *(v48 + 234) = v61;
      sub_275315CB8(v68, v62, v63, v64, v65, v66, v67);
      v69 = swift_task_alloc();
      *(v48 + 2528) = v69;
      *v69 = v48;
      v69[1] = sub_27536D224;
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_102_2();

      return MusicContentStorage.Operations._upsert(identifier:for:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v71 = *(v48 + 1784);

    v72 = *(v48 + 1776);
    OUTLINED_FUNCTION_151_2();
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v73);
    v74 = OUTLINED_FUNCTION_25_4();
    v75(v74);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_145_2();
    v76 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v76, v77, v78);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v79 = OUTLINED_FUNCTION_244_0();
    v71(v79);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v72, v80, v81, v82, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    return v84(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  return result;
}

uint64_t sub_27536D224()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 2536) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_106_3();
    v9 = sub_275370010;
  }

  else
  {
    sub_2752FBB6C(*(v3 + 2480), *(v3 + 2488), *(v3 + 2496), *(v3 + 2504), *(v3 + 2512), *(v3 + 2520), *(v3 + 236) | (*(v3 + 238) << 16));
    OUTLINED_FUNCTION_106_3();
    v9 = sub_27536D350;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

void sub_27536D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  v49 = *(v48 + 2472) + 1;
  *(v48 + 2472) = v49;
  if (v49 == *(v48 + 2464))
  {
    v50 = *(v48 + 1784);

    v51 = *(v48 + 1776);
    OUTLINED_FUNCTION_151_2();
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v52);
    v53 = OUTLINED_FUNCTION_25_4();
    v54(v53);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_145_2();
    v55 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v55, v56, v57);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v58 = OUTLINED_FUNCTION_244_0();
    v50(v58);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v51, v59, v60, v61, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  else if (v49 >= *(*(v48 + 2248) + 16))
  {
    __break(1u);
  }

  else
  {
    *(v48 + 2480) = OUTLINED_FUNCTION_231_1(v49);
    *(v48 + 2488) = v70[5];
    *(v48 + 2496) = v70[6];
    *(v48 + 2504) = v70[7];
    *(v48 + 2512) = v70[8];
    *(v48 + 2520) = v70[9];
    OUTLINED_FUNCTION_283_0();
    *(v48 + 236) = v71;
    *(v48 + 232) = v71;
    OUTLINED_FUNCTION_278_0();
    *(v48 + 238) = v72;
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_288_0(v79, v80, v73, v74, v75, v76, v77, v78);
    *(v48 + 234) = v81;
    sub_275315CB8(v82, v83, v84, v85, v86, v87, v88);
    v89 = swift_task_alloc();
    *(v48 + 2528) = v89;
    *v89 = v48;
    v89[1] = sub_27536D224;
    OUTLINED_FUNCTION_53_4();
    OUTLINED_FUNCTION_102_2();

    MusicContentStorage.Operations._upsert(identifier:for:)();
  }
}

uint64_t sub_27536D674()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 2552) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v5 + 1448), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 1800);
  v8 = v1[224];
  if (v0)
  {
    v9 = sub_27537020C;
  }

  else
  {
    v9 = sub_27536D7E4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27536D7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();

  v50 = *(v49 + 1776);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_8_6(v51);
  v52 = OUTLINED_FUNCTION_25_4();
  v53(v52);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_145_2();
  v54 = OUTLINED_FUNCTION_6_3();
  sub_27538672C(v54, v55, v56);
  OUTLINED_FUNCTION_147_2();
  sub_2753B64B8();
  v57 = OUTLINED_FUNCTION_244_0();
  v48(v57);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v50, v58, v59, v60, sub_27538685C);

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_102_2();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_27536DA00()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 2568) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v5 + 1440), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 1800);
  v8 = v1[224];
  if (v0)
  {
    v9 = sub_2753703C4;
  }

  else
  {
    v9 = sub_2753886A8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27536DB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_294_0();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14[217]);
  v15 = OUTLINED_FUNCTION_96_0();
  sub_27537D200(v15, v16);
  OUTLINED_FUNCTION_332_0(v12);
  if (!v17)
  {
    v41 = OUTLINED_FUNCTION_190_1();
    v42(v41);
    sub_2753B6A88();
    v14[228] = v14[160];
    v43 = swift_task_alloc();
    v14[229] = v43;
    *v43 = v14;
    v43[1] = sub_275368BAC;
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_148_0();

    return sub_27537633C();
  }

  OUTLINED_FUNCTION_219_1();
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v18, v19, v20, v21, sub_27538685C);
  sub_2753B6A58();
  v22 = OUTLINED_FUNCTION_129_0();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D65178])
  {
    OUTLINED_FUNCTION_81_1();
    v25 = OUTLINED_FUNCTION_126_0();
    v26(v25);
    v27 = *v13;
    v14[281] = *v13;
    v28 = MEMORY[0x277D84F90];
    if (*(v27 + 16))
    {
      OUTLINED_FUNCTION_234_1();
      v28 = v112;
      v29 = v27 + 40;
      do
      {
        OUTLINED_FUNCTION_218_1();
        v29 += 56;
        switch(v30)
        {
          case 1:
          case 3:
          case 4:
          case 5:
            break;
          case 2:

            break;
          default:
            OUTLINED_FUNCTION_291();
            break;
        }

        v32 = *(v112 + 16);
        v31 = *(v112 + 24);

        if (v32 >= v31 >> 1)
        {
          OUTLINED_FUNCTION_262_0();
        }

        OUTLINED_FUNCTION_183(v33, v34, v35, v36, v37, v38, v39, v40, v97, v101, v106, v107, v108, v109, v110, v111);
      }

      while (!v17);
      v14 = v110;
    }

    v14[282] = v28;
    v65 = swift_task_alloc();
    v14[283] = v65;
    *v65 = v14;
    OUTLINED_FUNCTION_116_3(v65);
    OUTLINED_FUNCTION_148_0();

    return MusicContentStorage.Operations.firstContentID(matching:in:)();
  }

  if (v24 == *MEMORY[0x277D65170])
  {
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_163_0();
    v46 = OUTLINED_FUNCTION_46_3();
    v47(v46);
    v49 = *v13;
    v48 = v13[1];
    v102 = v13[2];
    OUTLINED_FUNCTION_108_3();
    sub_2753B65C8();
    OUTLINED_FUNCTION_167_1();
    OUTLINED_FUNCTION_274_0(v50 + 48);
    v51 = MEMORY[0x277D64FD0];
    v52 = MEMORY[0x277D64FB8];
    v14[48] = MEMORY[0x277D64FD0];
    v14[49] = v52;
    OUTLINED_FUNCTION_272_0();
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v14 + 45);
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_327_0();
    v14[53] = v51;
    v14[54] = v52;
    v14[50] = v49;
    v14[51] = v48;
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v14 + 50);
    OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_315_0(MEMORY[0x277D83B88], v97, v102);
    v53 = OUTLINED_FUNCTION_60_1(v14 + 55);
    v61 = OUTLINED_FUNCTION_93_3(v53, v54, v55, v56, v57, v58, v59, v60, v98, v103, v106);
    v62(v61);
    OUTLINED_FUNCTION_326_0();
    v63 = swift_task_alloc();
    v14[318] = v63;
    *v63 = v14;
    OUTLINED_FUNCTION_130_1(v63);
LABEL_24:
    OUTLINED_FUNCTION_86_1(v64);
    OUTLINED_FUNCTION_148_0();

    return MEMORY[0x2821CC218](v94);
  }

  if (v24 == *MEMORY[0x277D65168])
  {
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_163_0();
    v67 = OUTLINED_FUNCTION_46_3();
    v68(v67);
    v99 = v13[3];
    v104 = v13[2];
    OUTLINED_FUNCTION_108_3();
    sub_2753B65C8();
    OUTLINED_FUNCTION_167_1();
    OUTLINED_FUNCTION_274_0(v69 + 38);
    v14[123] = MEMORY[0x277D64FD0];
    v14[124] = MEMORY[0x277D64FB8];
    OUTLINED_FUNCTION_272_0();
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v14 + 120);
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_327_0();
    OUTLINED_FUNCTION_260_0();
    __swift_destroy_boxed_opaque_existential_1(v14 + 100);
    OUTLINED_FUNCTION_73_4();
    v70 = OUTLINED_FUNCTION_7_4();
    sub_275388174(v70, v71, v72, v73);
    v14[83] = v74;
    v75 = sub_27537D288();
    OUTLINED_FUNCTION_259_0(v75, v76, v77, v78, v79, v80, v81, v82, v99, v104);
    v83 = OUTLINED_FUNCTION_60_1(v14 + 80);
    v91 = OUTLINED_FUNCTION_93_3(v83, v84, v85, v86, v87, v88, v89, v90, v100, v105, v106);
    v92(v91);
    OUTLINED_FUNCTION_326_0();
    v93 = swift_task_alloc();
    v14[320] = v93;
    *v93 = v14;
    OUTLINED_FUNCTION_136_3(v93);
    v64 = v14[180];
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_148_0();

  return sub_2753B7708();
}

uint64_t sub_27536E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_230_1();

  v44 = OUTLINED_FUNCTION_129_0();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 1848));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  LODWORD(a38) = *(v45 + 68) | (*(v45 + 70) << 16);
  v61 = *(v45 + 1912);
  v62 = *(v45 + 1920);
  OUTLINED_FUNCTION_189_1();
  (*(v42 + 8))(v48, v43);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v47, v49, v50, v51, sub_27538685C);
  OUTLINED_FUNCTION_235_1();
  (*(v46 + 8))(v44, a34);
  OUTLINED_FUNCTION_0_7(*(v45 + 1936));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v61, v62, a38, a39, a40, a41, a42);
}

uint64_t sub_27536E4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 1952));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 1984));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2008));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536EA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2032));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536EC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  LODWORD(a38) = *(v45 + 124) | (*(v45 + 126) << 16);
  v61 = *(v45 + 2088);
  v62 = *(v45 + 2096);
  OUTLINED_FUNCTION_189_1();
  (*(v42 + 8))(v48, v43);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v47, v49, v50, v51, sub_27538685C);
  OUTLINED_FUNCTION_235_1();
  (*(v46 + 8))(v44, a34);
  OUTLINED_FUNCTION_0_7(*(v45 + 2112));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v61, v62, a38, a39, a40, a41, a42);
}

uint64_t sub_27536EE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2152));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2176));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2216));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536F3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2240));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536F578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2288));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2312));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536F8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2328));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536FAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  v43 = *(v42 + 180) | (*(v42 + 182) << 16);
  v44 = *(v42 + 1776);

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v44, v45, v46, v47, sub_27538685C);
  OUTLINED_FUNCTION_119_3();
  sub_2752FBB6C(v48, v49, v50, v51, v52, v53, v43);
  OUTLINED_FUNCTION_0_7(*(v42 + 2408));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536FC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2424));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536FE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  v43 = *(v42 + 1776);

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v43, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v42 + 2456));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_275370010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  v43 = *(v42 + 236) | (*(v42 + 238) << 16);
  v44 = *(v42 + 1776);

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v44, v45, v46, v47, sub_27538685C);
  OUTLINED_FUNCTION_119_3();
  sub_2752FBB6C(v48, v49, v50, v51, v52, v53, v43);
  OUTLINED_FUNCTION_0_7(*(v42 + 2536));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27537020C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2552));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_2753703C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2568));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t MusicContentStorage.Operations.updateDebugDescription(_:for:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = sub_2753B6608();
  v1[22] = v6;
  OUTLINED_FUNCTION_17_1(v6);
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_138_0();
  v8 = sub_2753B65D8();
  v1[25] = v8;
  OUTLINED_FUNCTION_17_1(v8);
  v1[26] = v9;
  v1[27] = OUTLINED_FUNCTION_187_1();
  v1[28] = swift_task_alloc();
  v10 = sub_2753B6638();
  v1[29] = v10;
  OUTLINED_FUNCTION_17_1(v10);
  v1[30] = v11;
  v1[31] = OUTLINED_FUNCTION_138_0();
  sub_2753B6288();
  v1[32] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v12, 255, v13);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[33] = v14;
  v1[34] = v15;
  v16 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_275370718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_3();
  sub_2753B6628();
  v13 = sub_2753B6618();
  v14 = OUTLINED_FUNCTION_96_0();
  v15(v14);
  if (v13)
  {
    v17 = *(v12 + 136);
    v16 = *(v12 + 144);
    sub_27537D100(*(v12 + 168), v12 + 16);
    *(v12 + 296) = OUTLINED_FUNCTION_150_2((v12 + 280));
    sub_2753B65C8();
    sub_2753B65B8();
    v18 = MEMORY[0x277D65000];
    *(v12 + 80) = MEMORY[0x277D837D0];
    *(v12 + 88) = v18;
    *(v12 + 56) = v17;
    *(v12 + 64) = v16;

    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1((v12 + 56));
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_325_0();
    v19 = swift_task_alloc();
    *(v12 + 304) = v19;
    *v19 = v12;
    v19[1] = sub_2753708DC;
    OUTLINED_FUNCTION_86_1(*(v12 + 152));

    return sub_27537633C();
  }

  else
  {

    OUTLINED_FUNCTION_35_0();

    return v21();
  }
}

uint64_t sub_2753708DC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_3();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v4[39] = v0;

  if (v0)
  {
    v8 = v4[33];
    v9 = v4[34];
    v10 = sub_275370CF8;
  }

  else
  {
    v4[40] = v1;
    v8 = v4[33];
    v9 = v4[34];
    v10 = sub_2753709E8;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2753709E8()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[40];
  v2 = MEMORY[0x277D65050];
  v0[15] = MEMORY[0x277D83B88];
  v0[16] = v2;
  v0[12] = v1;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v3 = OUTLINED_FUNCTION_27();
  v4(v3);
  sub_2753B65F8();
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_275370AF0;
  OUTLINED_FUNCTION_86_1(v0[24]);
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2821CC218](v6);
}

uint64_t sub_275370AF0()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v0;

  v4 = OUTLINED_FUNCTION_97_0();
  v5(v4);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_275370C68()
{
  OUTLINED_FUNCTION_3();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_35_0();

  return v1();
}

uint64_t sub_275370CF8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  v0 = OUTLINED_FUNCTION_36_3();
  v1(v0);
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_275370D9C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t MusicContentStorage.Operations.storeMediaAPIAttributes(_:attributesMask:for:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  v1[20] = v4;
  v1[21] = v0;
  v1[18] = v5;
  v1[19] = v6;
  v1[17] = v7;
  v8 = sub_2753B6608();
  v1[22] = v8;
  OUTLINED_FUNCTION_17_1(v8);
  v1[23] = v9;
  v1[24] = OUTLINED_FUNCTION_187_1();
  v1[25] = swift_task_alloc();
  v10 = sub_2753B65D8();
  v1[26] = v10;
  OUTLINED_FUNCTION_17_1(v10);
  v1[27] = v11;
  v1[28] = OUTLINED_FUNCTION_187_1();
  v12 = swift_task_alloc();
  v13 = *v3;
  v1[29] = v12;
  v1[30] = v13;
  sub_2753B6288();
  v1[31] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v14, 255, v15);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[32] = v16;
  v1[33] = v17;
  v18 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_275370F8C()
{
  OUTLINED_FUNCTION_14_0();
  sub_27537D100(*(v0 + 168), v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 272) = v1;
  *(v0 + 288) = OUTLINED_FUNCTION_227_1(*&v1);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 296) = v2;
  *v2 = v3;
  v2[1] = sub_275371068;
  v4 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 152);

  return sub_27537542C(v4, v6, v5);
}

uint64_t sub_275371068()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 304) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 264);
  v7 = *(v1 + 256);
  if (v0)
  {
    v8 = sub_275371520;
  }

  else
  {
    v8 = sub_275371190;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275371190()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v1 = v0[30];
  v2 = v0[23];
  v4 = v0[17];
  v3 = v0[18];
  sub_2753B6598();
  v0[39] = *(v2 + 8);
  v0[40] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_107_0();
  v6(v5);
  OUTLINED_FUNCTION_40_3();
  v7 = MEMORY[0x277D65050];
  v0[10] = MEMORY[0x277D83B88];
  v0[11] = v7;
  v0[7] = v1;
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 7);
  v8 = MEMORY[0x277D64EE0];
  v0[15] = MEMORY[0x277CC9318];
  v0[16] = v8;
  v0[12] = v4;
  v0[13] = v3;
  sub_2752F22F8(v4, v3);
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v9 = OUTLINED_FUNCTION_27();
  v10(v9);
  sub_2753B65F8();
  v11 = swift_task_alloc();
  v0[41] = v11;
  *v11 = v0;
  v11[1] = sub_27537131C;
  OUTLINED_FUNCTION_86_1(v0[24]);
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC218](v12);
}

uint64_t sub_27537131C()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 312);
  *v4 = *v2;
  *(v3 + 336) = v0;

  v6 = OUTLINED_FUNCTION_97_0();
  v5(v6);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27537149C()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_275371520()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  v0 = OUTLINED_FUNCTION_36_3();
  v1(v0);
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2753715C0()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t MusicContentStorage.Operations.storeMediaAPITransitionInfo(_:for:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  *(v1 + 224) = v4;
  *(v1 + 232) = v0;
  *(v1 + 216) = v5;
  v6 = sub_2753B6608();
  *(v1 + 240) = v6;
  OUTLINED_FUNCTION_17_1(v6);
  *(v1 + 248) = v7;
  *(v1 + 256) = OUTLINED_FUNCTION_187_1();
  *(v1 + 264) = swift_task_alloc();
  v8 = sub_2753B65D8();
  *(v1 + 272) = v8;
  OUTLINED_FUNCTION_17_1(v8);
  *(v1 + 280) = v9;
  *(v1 + 288) = OUTLINED_FUNCTION_187_1();
  *(v1 + 296) = swift_task_alloc();
  v10 = v3[1];
  *(v1 + 304) = *v3;
  *(v1 + 320) = v10;
  v11 = v3[3];
  *(v1 + 336) = v3[2];
  *(v1 + 352) = v11;
  sub_2753B6288();
  *(v1 + 368) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v12, 255, v13);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  *(v1 + 376) = v14;
  *(v1 + 384) = v15;
  v16 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2753717B4()
{
  OUTLINED_FUNCTION_14_0();
  sub_27537D100(*(v0 + 232), v0 + 16);
  *(v0 + 408) = OUTLINED_FUNCTION_150_2((v0 + 392));
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 416) = v1;
  *v1 = v2;
  v1[1] = sub_27537188C;
  v3 = *(v0 + 264);
  v4 = *(v0 + 224);
  v5 = *(v0 + 216);

  return sub_27537542C(v3, v5, v4);
}

uint64_t sub_27537188C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 424) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 384);
  v7 = *(v1 + 376);
  if (v0)
  {
    v8 = sub_275371DBC;
  }

  else
  {
    v8 = sub_2753719B4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2753719B4()
{
  v20 = v0[44];
  v21 = v0[45];
  v1 = v0[42];
  v19 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[39];
  v6 = v0[31];
  sub_2753B6598();
  v0[54] = *(v6 + 8);
  v0[55] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7 = OUTLINED_FUNCTION_107_0();
  v8(v7);
  OUTLINED_FUNCTION_40_3();
  v9 = MEMORY[0x277CC9318];
  v10 = MEMORY[0x277D64EE0];
  v0[10] = MEMORY[0x277CC9318];
  v0[11] = v10;
  v0[7] = v4;
  v0[8] = v5;
  v11 = OUTLINED_FUNCTION_53();
  sub_2752F22F8(v11, v12);
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 7);
  v0[15] = v9;
  v0[16] = v10;
  v0[12] = v2;
  v0[13] = v3;
  sub_2752F22F8(v2, v3);
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 12);
  v0[20] = v9;
  v0[21] = v10;
  v0[17] = v1;
  v0[18] = v19;
  sub_2752F22F8(v1, v19);
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 17);
  v0[25] = v9;
  v0[26] = v10;
  v0[22] = v20;
  v0[23] = v21;
  sub_2752F22F8(v20, v21);
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v13 = OUTLINED_FUNCTION_27();
  v14(v13);
  sub_2753B65F8();
  v15 = swift_task_alloc();
  v0[56] = v15;
  *v15 = v0;
  v15[1] = sub_275371BB8;
  OUTLINED_FUNCTION_86_1(v0[32]);
  OUTLINED_FUNCTION_131_0();

  return MEMORY[0x2821CC218](v16);
}

uint64_t sub_275371BB8()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 432);
  *v4 = *v2;
  *(v3 + 456) = v0;

  v6 = OUTLINED_FUNCTION_97_0();
  v5(v6);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275371D38()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_275371DBC()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  v0 = OUTLINED_FUNCTION_36_3();
  v1(v0);
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_275371E5C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_275371EE4()
{
  sub_275387F04(0, &qword_2809C2ED8, sub_275387F64, MEMORY[0x277D85A78]);
  swift_allocObject();
  result = sub_2753B7838();
  qword_2809C2CC0 = result;
  return result;
}

uint64_t sub_275371F64()
{
  OUTLINED_FUNCTION_14_0();
  v1[3] = v2;
  v1[4] = v0;
  v3 = OUTLINED_FUNCTION_6_3();
  sub_27538672C(v3, v4, v5);
  OUTLINED_FUNCTION_75(v6);
  v1[5] = OUTLINED_FUNCTION_138_0();
  v7 = sub_2753B6348();
  v1[6] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v1[7] = v8;
  v1[8] = OUTLINED_FUNCTION_138_0();
  sub_2753B6288();
  v1[9] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v9, 255, v10);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[10] = v11;
  v1[11] = v12;
  v13 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_27537207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v12 = v10[7];
  v11 = v10[8];
  v13 = v10[6];
  v14 = v10[3];
  v15 = v10[4];
  sub_2753B6358();
  (*(v12 + 104))(v11, *MEMORY[0x277D64F20], v13);
  v15[3] = sub_2753B6338();
  v10[2] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_21_4();
  sub_2753868E4(0, v16, v17, v18, MEMORY[0x277D65188]);
  sub_275387F04(0, &qword_2809C2F28, sub_27538827C, MEMORY[0x277D83940]);
  sub_275314624();
  sub_27538831C();
  sub_2753B6498();
  sub_2753883A4(0);
  swift_allocObject();
  v15[4] = sub_2753B6548();
  v15[2] = v14;

  v19 = swift_task_alloc();
  v10[12] = v19;
  *v19 = v10;
  v19[1] = sub_275372240;
  OUTLINED_FUNCTION_111_0();

  return sub_27537247C();
}

uint64_t sub_275372240()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 88);
  v7 = *(v1 + 80);
  if (v0)
  {
    v8 = sub_2753723F0;
  }

  else
  {
    v8 = sub_275372368;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275372368()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_105_3();
  v2 = *(v0 + 32);

  return v1(v2);
}

uint64_t sub_2753723F0()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27537247C()
{
  OUTLINED_FUNCTION_14_0();
  v1[2] = v0;
  sub_2753B6288();
  v1[3] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v2, 255, v3);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[4] = v4;
  v1[5] = v5;
  v6 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_275372520()
{
  OUTLINED_FUNCTION_14_0();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2753725D8;

  return MEMORY[0x2821CC178](v1);
}

uint64_t sub_2753725D8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 56) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 40);
  v7 = *(v1 + 32);
  if (v0)
  {
    v8 = sub_275372700;
  }

  else
  {
    v8 = sub_2753886D4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275372700()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27537275C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2753B6288();
  v2[4] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v4 = sub_2753B70C8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_275372828, v4, v3);
}

uint64_t sub_275372828()
{
  OUTLINED_FUNCTION_14_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[7] = v1;
  *v1 = v2;
  v1[1] = sub_2753728F8;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821CC1B8](v3, 0xD000000000000010, 0x80000002753BBEB0, &unk_2753CBE08, v4, v5);
}

uint64_t sub_2753728F8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 64) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 48);
  v7 = *(v1 + 40);
  if (v0)
  {
    v8 = sub_275372A78;
  }

  else
  {
    v8 = sub_275372A20;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275372A20()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_275372A78()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275372AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  sub_2753B6288();
  v3[10] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v5 = sub_2753B70C8();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_275372BA0, v5, v4);
}

uint64_t sub_275372BA0()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[8];
  v2 = v0[9];
  v3 = sub_2753B6398();
  v4 = MEMORY[0x277D64F38];
  v0[5] = v3;
  v0[6] = v4;
  v0[2] = v1;
  v0[7] = *(v2 + 32);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_275372C6C;

  return sub_275372E58();
}

uint64_t sub_275372C6C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 96);
  v7 = *(v1 + 88);
  if (v0)
  {
    v8 = sub_275372DF4;
  }

  else
  {
    v8 = sub_275372D94;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275372D94()
{
  OUTLINED_FUNCTION_14_0();

  sub_275317184(v0 + 16);
  OUTLINED_FUNCTION_35_0();

  return v1();
}

uint64_t sub_275372DF4()
{
  OUTLINED_FUNCTION_14_0();

  sub_275317184(v0 + 16);
  OUTLINED_FUNCTION_19_0();

  return v1();
}

uint64_t sub_275372E58()
{
  v1[32] = v0;
  v2 = sub_2753B6608();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v3 = sub_2753B65D8();
  v1[37] = v3;
  v1[38] = *(v3 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  sub_2753B6288();
  v1[41] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v5 = sub_2753B70C8();
  v1[42] = v5;
  v1[43] = v4;

  return MEMORY[0x2822009F8](sub_275372FF4, v5, v4);
}

uint64_t sub_275372FF4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v1 = OUTLINED_FUNCTION_9_5();
  sub_275388174(v1, v2, v3, v4);
  inited = swift_initStackObject();
  *(v0 + 352) = inited;
  *(inited + 16) = xmmword_2753CB7E0;
  *(inited + 32) = 0x746E65746E6F63;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0x756F735F6970616DLL;
  *(inited + 56) = 0xEB00000000656372;
  strcpy((inited + 64), "library_source");
  *(inited + 79) = -18;
  OUTLINED_FUNCTION_241_0();
  *(v6 + 80) = 0xD000000000000014;
  *(v6 + 88) = v7;
  OUTLINED_FUNCTION_241_0();
  *(v8 + 96) = 0xD000000000000017;
  *(v8 + 104) = v9;
  *(v8 + 112) = 0xD000000000000015;
  *(v8 + 120) = 0x80000002753BBF10;
  strcpy((v8 + 128), "opaque_source");
  *(v8 + 142) = -4864;
  OUTLINED_FUNCTION_241_0();
  v10[18] = 0xD000000000000010;
  v10[19] = v11;
  v10[20] = 0x7474615F6970616DLL;
  v10[21] = 0xEF73657475626972;
  OUTLINED_FUNCTION_241_0();
  *(v12 + 176) = 0xD000000000000014;
  *(v12 + 184) = v13;
  strcpy((v12 + 192), "network_task");
  *(v12 + 205) = 0;
  *(v12 + 206) = -5120;
  OUTLINED_FUNCTION_241_0();
  *(v14 + 208) = 0xD000000000000018;
  *(v14 + 216) = v15;
  *(v0 + 360) = 12;
  v16 = *(v0 + 352);
  v18 = *(v0 + 312);
  v17 = *(v0 + 320);
  v20 = *(v0 + 296);
  v19 = *(v0 + 304);
  v21 = *(v16 + 208);
  v22 = *(v16 + 216);
  __swift_project_boxed_opaque_existential_1(*(v0 + 256), *(*(v0 + 256) + 24));

  sub_2753B65C8();
  sub_2753B65B8();
  *(v0 + 240) = v21;
  *(v0 + 248) = v22;
  sub_2753B6578();

  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  (*(v19 + 32))(v18, v17, v20);
  sub_2753B65F8();
  v23 = swift_task_alloc();
  *(v0 + 368) = v23;
  *v23 = v0;
  v23[1] = sub_2753732C4;
  OUTLINED_FUNCTION_86_1(*(v0 + 288));
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC218](v24);
}

uint64_t sub_2753732C4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[47] = v0;

  (*(v3[34] + 8))(v3[36], v3[33]);
  if (v0)
  {
    swift_setDeallocating();
    sub_275384DC0();
    v7 = v3[42];
    v8 = v3[43];
    v9 = sub_27537380C;
  }

  else
  {
    v7 = v3[42];
    v8 = v3[43];
    v9 = sub_27537340C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27537340C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v1 = *(v0 + 360);
  *(v0 + 360) = v1 - 1;
  if (v1 == 1)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v10 = OUTLINED_FUNCTION_90_0();
    __swift_project_boxed_opaque_existential_1(v10, v11);
    OUTLINED_FUNCTION_85_0();
    sub_2753B65E8();
    v12 = swift_task_alloc();
    *(v0 + 384) = v12;
    *v12 = v0;
    v12[1] = sub_27537360C;
    OUTLINED_FUNCTION_86_1(*(v0 + 280));
  }

  else
  {
    v2 = (*(v0 + 352) + 16 * v1);
    v3 = *v2;
    v4 = v2[1];
    OUTLINED_FUNCTION_45_4(*(v0 + 256));

    sub_2753B65C8();
    sub_2753B65B8();
    *(v0 + 240) = v3;
    *(v0 + 248) = v4;
    sub_2753B6578();

    OUTLINED_FUNCTION_67();
    sub_2753B65B8();
    v5 = OUTLINED_FUNCTION_78_2();
    v6(v5);
    OUTLINED_FUNCTION_199_1();
    sub_2753B65F8();
    v7 = swift_task_alloc();
    *(v0 + 368) = v7;
    *v7 = v0;
    v7[1] = sub_2753732C4;
    OUTLINED_FUNCTION_86_1(*(v0 + 288));
  }

  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC218](v8);
}

uint64_t sub_27537360C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 392) = v0;

  v4 = OUTLINED_FUNCTION_97_0();
  v5(v4);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_275373784()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_27537380C()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275373894()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27537391C()
{
  OUTLINED_FUNCTION_14_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  sub_2753B6288();
  v1[7] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v6, 255, v7);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[8] = v8;
  v1[9] = v9;
  v10 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2753739C8()
{
  OUTLINED_FUNCTION_3();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 88) = v5;
  *v5 = v6;
  v5[1] = sub_275373AA0;
  v7 = *(v0 + 16);

  return MEMORY[0x2821CC178](v7);
}

uint64_t sub_275373AA0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_275312990;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_275373BA4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275373BA4()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_275373BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  sub_2753B6288();
  v4[19] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v6 = sub_2753B70C8();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x2822009F8](sub_275373CCC, v6, v5);
}

uint64_t sub_275373CCC()
{
  OUTLINED_FUNCTION_68_0();
  if (qword_2809C06E8 != -1)
  {
    OUTLINED_FUNCTION_21_0(&qword_2809C06E8);
  }

  sub_2753B7848();
  v1 = v0[14];
  v2 = v0[16];
  if (v1)
  {
    v3 = sub_2753B6398();
    v4 = MEMORY[0x277D64F38];
    v0[11] = v3;
    v0[12] = v4;
    v0[8] = v1;
    v0[13] = *(v2 + 32);

    OUTLINED_FUNCTION_1_3();
    v17 = v5;
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v0[22] = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_77_0(v6);
    v9 = v0 + 8;
  }

  else
  {
    v10 = *(v2 + 16);
    v11 = sub_2753B6438();
    v12 = MEMORY[0x277D64F68];
    v0[5] = v11;
    v0[6] = v12;
    v0[2] = v10;
    v0[7] = *(v2 + 32);

    OUTLINED_FUNCTION_1_3();
    v17 = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v0[24] = v14;
    *v14 = v15;
    v8 = OUTLINED_FUNCTION_77_0(v14);
    v9 = v0 + 2;
  }

  return v17(v8, v9);
}

uint64_t sub_275373E94()
{
  OUTLINED_FUNCTION_14_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  sub_2753B6288();
  v1[9] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v8, 255, v9);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[10] = v10;
  v1[11] = v11;
  v12 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275373F44()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v6;
  *(v5 + 56) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 104) = v7;
  *v7 = v8;
  v7[1] = sub_27537402C;
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2821CC178](v9);
}

uint64_t sub_27537402C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_275374130;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_275326DB0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275374130()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275374198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_2753B6288();
  v7[9] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v9 = sub_2753B70C8();
  v7[10] = v9;
  v7[11] = v8;

  return MEMORY[0x2822009F8](sub_275374270, v9, v8);
}

uint64_t sub_275374270()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 104) = v5;
  *v5 = v6;
  v5[1] = sub_275374354;
  v7 = *(v0 + 64);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return MEMORY[0x2821CC1B8](v10, v8, v9, &unk_2753CBE28, v3, v7);
}

uint64_t sub_275374354()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_2753886C4;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_2753886D0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275374458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = sub_2753B6288();
  v6[10] = sub_2753B6278();
  v6[11] = sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v8 = sub_2753B70C8();
  v6[12] = v8;
  v6[13] = v7;

  return MEMORY[0x2822009F8](sub_275374534, v8, v7);
}

uint64_t sub_275374534()
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  if (qword_2809C06E8 != -1)
  {
    OUTLINED_FUNCTION_21_0(&qword_2809C06E8);
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;

  *(v0 + 120) = sub_2753B6278();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 128) = v6;
  *v6 = v7;
  v6[1] = sub_27537468C;
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x282200908](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_27537468C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2753747E8()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_275374840()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27537489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  sub_2753B6288();
  v5[13] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v7 = sub_2753B70C8();
  v5[14] = v7;
  v5[15] = v6;

  return MEMORY[0x2822009F8](sub_275326F34, v7, v6);
}

void *MusicContentStorage.deinit()
{

  return v0;
}

uint64_t MusicContentStorage.__deallocating_deinit()
{
  MusicContentStorage.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2753749D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FD514;

  return sub_27537391C();
}

uint64_t sub_275374A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return sub_275373E94();
}

void sub_275374B74(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = -96;
  v6 = 0;
  v7 = 0;
  switch(*(a1 + 50) >> 5)
  {
    case 1:
      v7 = *(a1 + 24);
      v5 = 32;
      goto LABEL_7;
    case 2:
      v5 = *(a1 + 32) | 0x40;

      v6 = v3;
      v7 = v4;
      break;
    case 3:
      v7 = *(a1 + 24);
      v5 = 96;
      goto LABEL_7;
    case 4:
      v7 = *(a1 + 24);
      v5 = 0x80;
LABEL_7:
      v6 = *(a1 + 16);
      break;
    case 5:
      break;
    default:
      v7 = 0;
      v5 = 0;
      v6 = *(a1 + 16);
      break;
  }

  sub_27535DCC4(a2);
  v8 = OUTLINED_FUNCTION_129_0();

  sub_2753147B0(v8, v9, v6, v7, v5);
}

uint64_t MusicContentStorage.Operations.hasMediaAPIAttributes(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_2753B6608();
  v1[12] = v4;
  OUTLINED_FUNCTION_17_1(v4);
  v1[13] = v5;
  v1[14] = OUTLINED_FUNCTION_187_1();
  v1[15] = swift_task_alloc();
  v6 = sub_2753B65D8();
  v1[16] = v6;
  OUTLINED_FUNCTION_17_1(v6);
  v1[17] = v7;
  v1[18] = OUTLINED_FUNCTION_187_1();
  v1[19] = swift_task_alloc();
  sub_2753B6288();
  v1[20] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v8, 255, v9);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[21] = v10;
  v1[22] = v11;
  v12 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275374E00()
{
  OUTLINED_FUNCTION_14_0();
  sub_27537D100(*(v0 + 88), v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 184) = v1;
  *(v0 + 200) = OUTLINED_FUNCTION_227_1(*&v1);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 208) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_242_0(v2);

  return sub_27537542C(v4, v5, v6);
}

uint64_t sub_275374ECC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 216) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 176);
  v7 = *(v1 + 168);
  if (v0)
  {
    v8 = sub_275375308;
  }

  else
  {
    v8 = sub_275374FF4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275374FF4()
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_165_1();
  v0[28] = v1;
  v0[29] = v2;
  v3 = OUTLINED_FUNCTION_302_0();
  v4(v3);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v5 = OUTLINED_FUNCTION_47_3();
  v6(v5);
  OUTLINED_FUNCTION_273_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[7] = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D65048];
  v0[30] = v8;
  v0[8] = v7;
  *v8 = v9;
  OUTLINED_FUNCTION_243_0(v8);
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x2821CC228](v10);
}

uint64_t sub_2753750F8()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 224);
  *v4 = *v2;
  *(v3 + 248) = v0;

  v6 = OUTLINED_FUNCTION_97_0();
  v5(v6);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275375278()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_195();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_275375308()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  v0 = OUTLINED_FUNCTION_36_3();
  v1(v0);
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_195();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2753753A4()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_195();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_27537542C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_2753B65D8();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_2753B6288();
  v4[15] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v7 = sub_2753B70C8();
  v4[16] = v7;
  v4[17] = v6;

  return MEMORY[0x2822009F8](sub_275375564, v7, v6);
}

uint64_t sub_275375564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_0();
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v13 = swift_task_alloc();
  *(v12 + 144) = v13;
  *v13 = v12;
  v13[1] = sub_275375624;
  OUTLINED_FUNCTION_86_1(*(v12 + 64));

  return sub_27537633C();
}

uint64_t sub_275375624()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_3();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v4[19] = v0;

  if (v0)
  {
    v8 = v4[16];
    v9 = v4[17];
    v10 = sub_275375804;
  }

  else
  {
    v4[20] = v1;
    v8 = v4[16];
    v9 = v4[17];
    v10 = sub_275375730;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_275375730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = v10[20];

  v12 = MEMORY[0x277D65050];
  v10[5] = MEMORY[0x277D83B88];
  v10[6] = v12;
  v10[2] = v11;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v10 + 2);
  sub_2753B65B8();
  v13 = OUTLINED_FUNCTION_47_3();
  v14(v13);
  sub_2753B65F8();

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_111_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_275375804()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_19_0();

  return v4();
}

uint64_t sub_275375898(uint64_t a1, _BYTE **a2)
{
  *(v2 + 16) = a1;
  *(v2 + 32) = **a2;
  sub_2753B6288();
  *(v2 + 24) = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v4 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275388694, v4, v3);
}

uint64_t sub_275375970(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  *(v2 + 40) = **a2;
  *(v2 + 48) = v3[1];
  *(v2 + 81) = *v4;
  v5 = *(a2 + 16);
  *(v2 + 56) = *v5;
  *(v2 + 64) = v5[1];
  sub_2753B6288();
  *(v2 + 72) = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v7 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275375A6C, v7, v6);
}

uint64_t sub_275375A6C()
{
  OUTLINED_FUNCTION_144_0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 81);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  sub_2753B7398();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x277C76100](0x22203A226469227BLL, 0xE800000000000000);
  v5 = OUTLINED_FUNCTION_112();
  MEMORY[0x277C76100](v5);
  MEMORY[0x277C76100](0x6570797422202C22, 0xEC00000022203A22);
  *(v0 + 80) = v2;
  sub_2753B7468();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x277C76100](0xD000000000000010);
  MEMORY[0x277C76100](v3, v1);
  MEMORY[0x277C76100](125, 0xE100000000000000);
  v6 = *(v0 + 24);
  *v4 = *(v0 + 16);
  v4[1] = v6;
  OUTLINED_FUNCTION_35_0();

  return v7();
}

uint64_t MusicContentStorage.Operations.hasMediaAPITransitionInfo(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_2753B6608();
  v1[12] = v4;
  OUTLINED_FUNCTION_17_1(v4);
  v1[13] = v5;
  v1[14] = OUTLINED_FUNCTION_187_1();
  v1[15] = swift_task_alloc();
  v6 = sub_2753B65D8();
  v1[16] = v6;
  OUTLINED_FUNCTION_17_1(v6);
  v1[17] = v7;
  v1[18] = OUTLINED_FUNCTION_187_1();
  v1[19] = swift_task_alloc();
  sub_2753B6288();
  v1[20] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v8, 255, v9);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[21] = v10;
  v1[22] = v11;
  v12 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275375D08()
{
  OUTLINED_FUNCTION_14_0();
  sub_27537D100(*(v0 + 88), v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 184) = v1;
  *(v0 + 200) = OUTLINED_FUNCTION_227_1(*&v1);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 208) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_242_0(v2);

  return sub_27537542C(v4, v5, v6);
}

uint64_t sub_275375DD4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 216) = v0;

  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 176);
  v7 = *(v1 + 168);
  if (v0)
  {
    v8 = sub_27538868C;
  }

  else
  {
    v8 = sub_275375EFC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275375EFC()
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_165_1();
  v0[28] = v1;
  v0[29] = v2;
  v3 = OUTLINED_FUNCTION_302_0();
  v4(v3);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v5 = OUTLINED_FUNCTION_47_3();
  v6(v5);
  OUTLINED_FUNCTION_273_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[7] = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D65048];
  v0[30] = v8;
  v0[8] = v7;
  *v8 = v9;
  OUTLINED_FUNCTION_243_0(v8);
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x2821CC228](v10);
}

uint64_t sub_275376000()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 224);
  *v4 = *v2;
  *(v3 + 248) = v0;

  v6 = OUTLINED_FUNCTION_97_0();
  v5(v6);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275376180(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v2[3] = **a2;
  v2[4] = v3[1];
  v2[5] = *v4;
  v2[6] = v4[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v2[7] = *v5;
  v2[8] = v5[1];
  v2[9] = *v6;
  v2[10] = v6[1];
  sub_2753B6288();
  v2[11] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v8 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275376294, v8, v7);
}

uint64_t sub_275376294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = v12[10];
  v15 = v12[8];
  v14 = v12[9];
  v17 = v12[6];
  v16 = v12[7];
  v19 = v12[4];
  v18 = v12[5];
  v21 = v12[2];
  v20 = v12[3];

  *v21 = v20;
  v21[1] = v19;
  v21[2] = v18;
  v21[3] = v17;
  v21[4] = v16;
  v21[5] = v15;
  v21[6] = v14;
  v21[7] = v13;
  sub_2752F22F8(v20, v19);
  v22 = OUTLINED_FUNCTION_71();
  sub_2752F22F8(v22, v23);
  sub_2752F22F8(v16, v15);
  v24 = OUTLINED_FUNCTION_27();
  sub_2752F22F8(v24, v25);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_100_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_27537633C()
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  *(v1 + 75) = v3;
  *(v1 + 128) = v4;
  OUTLINED_FUNCTION_10_6();
  sub_2753868E4(0, v5, v6, v7, MEMORY[0x277D64F00]);
  *(v1 + 152) = v8;
  OUTLINED_FUNCTION_75(v8);
  *(v1 + 160) = OUTLINED_FUNCTION_138_0();
  v9 = sub_2753B6608();
  *(v1 + 168) = v9;
  OUTLINED_FUNCTION_17_1(v9);
  *(v1 + 176) = v10;
  *(v1 + 184) = OUTLINED_FUNCTION_138_0();
  v11 = sub_2753B65D8();
  *(v1 + 192) = v11;
  OUTLINED_FUNCTION_17_1(v11);
  *(v1 + 200) = v12;
  *(v1 + 208) = OUTLINED_FUNCTION_187_1();
  *(v1 + 216) = swift_task_alloc();
  sub_2753B6288();
  *(v1 + 224) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v13, 255, v14);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  *(v1 + 232) = v15;
  *(v1 + 240) = v16;
  v17 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2753764D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = *(v14 + 136);
  v16 = *(v14 + 128);
  OUTLINED_FUNCTION_45_4(*(v14 + 144));
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v17 = MEMORY[0x277D64FB8];
  *(v14 + 40) = MEMORY[0x277D64FD0];
  *(v14 + 48) = v17;
  *(v14 + 16) = v16;
  *(v14 + 24) = v15;

  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v14 + 16));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v18 = OUTLINED_FUNCTION_78_2();
  v19(v18);
  OUTLINED_FUNCTION_199_1();
  sub_2753B65F8();
  v20 = swift_task_alloc();
  *(v14 + 248) = v20;
  *(v14 + 80) = MEMORY[0x277D83B88];
  v21 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v21, v22, v23, v24);
  *(v14 + 88) = v25;
  *(v14 + 96) = MEMORY[0x277D65058];
  *(v14 + 104) = sub_2753869F4();
  *v20 = v14;
  v20[1] = sub_275376668;
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC210](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_275376668()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 256) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[22] + 8))(*(v5 + 184), v1[21]);
  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 240);
  v8 = v1[29];
  if (v0)
  {
    v9 = sub_2753769C8;
  }

  else
  {
    v9 = sub_2753767D8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2753767D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();

  if (*(v10 + 73))
  {
    v12 = *(v10 + 128);
    v11 = *(v10 + 136);
    sub_275314678();
    OUTLINED_FUNCTION_216_1();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v10 + 74) = 2;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_328_0(33);
    *(v10 + 112) = v12;
    *(v10 + 120) = v11;
    sub_2753146CC();
    OUTLINED_FUNCTION_112();
    sub_2753B62B8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_10_6();
    v13 = OUTLINED_FUNCTION_200_0();
    sub_2753868E4(v13, v14, v15, v16, v17);
    v18 = sub_275314720();
    OUTLINED_FUNCTION_124_3(v18);
    OUTLINED_FUNCTION_64_4();
    sub_2753B62E8();
    swift_willThrow();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_111_0();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {

    OUTLINED_FUNCTION_105_3();
    OUTLINED_FUNCTION_111_0();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_2753769C8()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275376A54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2753886C8;

  return MusicContentStorage.Operations.hasMediaAPIAttributes(for:)();
}

uint64_t sub_275376AF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2753886C8;

  return MusicContentStorage.Operations.hasMediaAPIAttributes(containing:for:)();
}

uint64_t sub_275376B9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_275376C3C;

  return MusicContentStorage.Operations.mediaAPIAttributes(for:)();
}

uint64_t sub_275376C3C()
{
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_65_3();
  v5 = *v2;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  OUTLINED_FUNCTION_285_0();
  if (!v0)
  {
    v7 = v1;
    v8 = v4;
  }

  return v9(v7, v8);
}

uint64_t sub_275376D34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.storeMediaAPIAttributes(_:attributesMask:for:)();
}

uint64_t sub_275376DF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2753886C8;

  return MusicContentStorage.Operations.hasMediaAPITransitionInfo(for:)();
}

uint64_t sub_275376E94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.mediaAPITransitionInfo(for:)();
}

uint64_t sub_275376F40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.storeMediaAPITransitionInfo(_:for:)();
}

uint64_t MusicContentStorage.Operations.validateContent(id:)()
{
  OUTLINED_FUNCTION_3();
  v0[2] = sub_2753B6288();
  v0[3] = sub_2753B6278();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2753770A0;
  OUTLINED_FUNCTION_155_2();

  return sub_27537633C();
}

uint64_t sub_2753770A0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *(v4 + 40) = v0;

  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v5, 255, v6);
  OUTLINED_FUNCTION_304_0();
  v8 = sub_2753B70C8();
  if (v0)
  {
    v9 = sub_275377264;
  }

  else
  {
    v9 = sub_27537720C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27537720C()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_275377264()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t MusicContentStorage.Operations._upsert(identifier:for:)()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  *(v1 + 1232) = v0;
  *(v1 + 1224) = v4;
  v5 = sub_2753B65D8();
  *(v1 + 1240) = v5;
  OUTLINED_FUNCTION_17_1(v5);
  *(v1 + 1248) = v6;
  *(v1 + 1256) = OUTLINED_FUNCTION_187_1();
  *(v1 + 1264) = swift_task_alloc();
  *(v1 + 1272) = swift_task_alloc();
  *(v1 + 1280) = swift_task_alloc();
  *(v1 + 1288) = swift_task_alloc();
  v7 = sub_2753B6608();
  *(v1 + 1296) = v7;
  OUTLINED_FUNCTION_17_1(v7);
  *(v1 + 1304) = v8;
  *(v1 + 1312) = OUTLINED_FUNCTION_187_1();
  *(v1 + 1320) = swift_task_alloc();
  *(v1 + 1328) = swift_task_alloc();
  v9 = *(v3 + 16);
  *(v1 + 1336) = *v3;
  *(v1 + 1352) = v9;
  *(v1 + 1368) = *(v3 + 32);
  v10 = *(v3 + 48);
  *(v1 + 1458) = *(v3 + 50);
  *(v1 + 1456) = v10;
  sub_2753B6288();
  *(v1 + 1384) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v11, 255, v12);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  *(v1 + 1392) = v13;
  *(v1 + 1400) = v14;
  v15 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_27537747C()
{
  v83 = v0;
  v1 = (v0 + 1184);
  v2 = (v0 + 1208);
  v3 = *(v0 + 1456) | (*(v0 + 1458) << 16);
  v4 = *(v0 + 1344);
  switch(*(v0 + 1458) >> 5)
  {
    case 1:
      v43 = *(v0 + 1376);
      v44 = *(v0 + 1368);
      v45 = *(v0 + 1360);
      v46 = *(v0 + 1352);
      v47 = *(v0 + 1336);
      OUTLINED_FUNCTION_287_0();
      sub_2753B65C8();
      OUTLINED_FUNCTION_63_3();
      sub_2753B65B8();
      *(v0 + 760) = MEMORY[0x277D83B88];
      *(v0 + 768) = MEMORY[0x277D65050];
      *(v0 + 736) = v3;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 736));
      OUTLINED_FUNCTION_160_2();
      *(v0 + 800) = MEMORY[0x277D837D0];
      *(v0 + 808) = MEMORY[0x277D65000];
      *(v0 + 776) = v47;
      *(v0 + 784) = v4;

      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 776));
      *(v0 + 840) = MEMORY[0x277D84A28];
      *(v0 + 848) = MEMORY[0x277D65080];
      *(v0 + 816) = v46;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 816));
      *(v0 + 880) = &type metadata for MusicContent.LibraryContentType;
      *(v0 + 888) = sub_2753629A0();
      *(v0 + 856) = v45;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 856));
      *(v0 + 920) = MEMORY[0x277D83B88];
      *(v0 + 928) = MEMORY[0x277D65050];
      *(v0 + 896) = v44;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 896));
      *(v0 + 960) = &type metadata for MusicContent.CloudStatus;
      *(v0 + 968) = sub_27536172C();
      *(v0 + 936) = v43;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 936));
      *(v0 + 1000) = MEMORY[0x277D839B0];
      *(v0 + 1008) = MEMORY[0x277D65040];
      *(v0 + 976) = BYTE1(v43) & 1;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 976));
      OUTLINED_FUNCTION_63_3();
      goto LABEL_13;
    case 2:
      v79 = *(v0 + 1368);
      v80 = *(v0 + 1376);
      v27 = *(v0 + 1360);
      v78 = *(v0 + 1352);
      v28 = *(v0 + 1336);
      v29 = *(v0 + 1224);
      sub_2753B65C8();
      OUTLINED_FUNCTION_63_3();
      sub_2753B65B8();
      v30 = MEMORY[0x277D65050];
      *(v0 + 480) = MEMORY[0x277D83B88];
      *(v0 + 488) = v30;
      *(v0 + 456) = v29;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 456));
      sub_2753B65B8();
      v31 = MEMORY[0x277D837D0];
      *(v0 + 520) = MEMORY[0x277D837D0];
      v32 = MEMORY[0x277D65000];
      *(v0 + 528) = MEMORY[0x277D65000];
      *(v0 + 496) = v28;
      *(v0 + 504) = v4;

      sub_2753B6588();
      OUTLINED_FUNCTION_240_1((v0 + 496));
      *(v0 + 560) = v31;
      *(v0 + 568) = v32;
      *(v0 + 536) = v78;
      *(v0 + 544) = v27;

      sub_2753B6588();
      OUTLINED_FUNCTION_240_1((v0 + 536));
      *(v0 + 600) = &type metadata for MusicContent.CloudLibraryContentType;
      *(v0 + 608) = sub_275362BB0();
      *(v0 + 576) = v79;
      sub_2753B6588();
      OUTLINED_FUNCTION_240_1((v0 + 576));
      OUTLINED_FUNCTION_142_1();
      sub_275388174(0, v33, MEMORY[0x277D83B88], v34);
      *(v0 + 640) = v35;
      *(v0 + 648) = sub_2753865FC();
      *(v0 + 616) = v80;
      *(v0 + 624) = v3 & 1;
      sub_2753B6588();
      OUTLINED_FUNCTION_240_1((v0 + 616));
      sub_275388174(0, &qword_2809C2D18, &type metadata for MusicContent.CloudStatus, v4);
      *(v0 + 680) = v36;
      *(v0 + 688) = sub_275386690();
      *(v0 + 656) = BYTE1(v3);
      sub_2753B6588();
      OUTLINED_FUNCTION_240_1((v0 + 656));
      *(v0 + 720) = MEMORY[0x277D839B0];
      *(v0 + 728) = MEMORY[0x277D65040];
      *(v0 + 696) = BYTE2(v3) & 1;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 696));
      OUTLINED_FUNCTION_63_3();
      goto LABEL_13;
    case 3:
      v37 = *(v0 + 1360);
      v38 = *(v0 + 1352);
      v39 = *(v0 + 1336);
      OUTLINED_FUNCTION_287_0();
      sub_2753B65C8();
      OUTLINED_FUNCTION_63_3();
      sub_2753B65B8();
      v40 = MEMORY[0x277D65050];
      *(v0 + 320) = MEMORY[0x277D83B88];
      *(v0 + 328) = v40;
      *(v0 + 296) = v3;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 296));
      OUTLINED_FUNCTION_160_2();
      v41 = MEMORY[0x277D65000];
      *(v0 + 360) = MEMORY[0x277D837D0];
      *(v0 + 368) = v41;
      *(v0 + 336) = v39;
      *(v0 + 344) = v4;

      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 336));
      v42 = MEMORY[0x277D65080];
      *(v0 + 400) = MEMORY[0x277D84A28];
      *(v0 + 408) = v42;
      *(v0 + 376) = v38;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 376));
      *(v0 + 440) = &type metadata for MusicContent.PurchasableContentType;
      *(v0 + 448) = sub_275362DC0();
      *(v0 + 416) = v37;
      sub_2753B6588();
      v26 = (v0 + 416);
      goto LABEL_7;
    case 4:
      v19 = *(v0 + 1360);
      v20 = *(v0 + 1352);
      v21 = *(v0 + 1336);
      v22 = *(v0 + 1224);
      sub_2753B65C8();
      OUTLINED_FUNCTION_63_3();
      sub_2753B65B8();
      v23 = MEMORY[0x277D65050];
      *(v0 + 160) = MEMORY[0x277D83B88];
      *(v0 + 168) = v23;
      *(v0 + 136) = v22;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      OUTLINED_FUNCTION_160_2();
      v24 = MEMORY[0x277D65000];
      *(v0 + 200) = MEMORY[0x277D837D0];
      *(v0 + 208) = v24;
      *(v0 + 176) = v21;
      *(v0 + 184) = v4;

      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 176));
      *(v0 + 216) = v20;
      v25 = MEMORY[0x277D65080];
      *(v0 + 240) = MEMORY[0x277D84A28];
      *(v0 + 248) = v25;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 216));
      *(v0 + 280) = &type metadata for MusicContent.PurchasableContentType;
      *(v0 + 288) = sub_275362DC0();
      *(v0 + 256) = v19;
      sub_2753B6588();
      v26 = (v0 + 256);
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_85_0();
      goto LABEL_13;
    case 5:
      v48 = *(v0 + 1352);
      v49 = *(v0 + 1336);
      v50 = *(v0 + 1224);
      sub_2753B65C8();
      sub_2753B65B8();
      v51 = MEMORY[0x277D65050];
      *(v0 + 40) = MEMORY[0x277D83B88];
      *(v0 + 48) = v51;
      *(v0 + 16) = v50;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      sub_2753B65B8();
      v52 = MEMORY[0x277D837D0];
      *(v0 + 56) = v49;
      v53 = MEMORY[0x277D65000];
      *(v0 + 80) = v52;
      *(v0 + 88) = v53;
      v54 = v52;
      *(v0 + 64) = v4;

      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      sub_2753B65B8();
      v55 = OUTLINED_FUNCTION_7_4();
      sub_275388174(v55, v56, v54, v57);
      *(v0 + 120) = v58;
      *(v0 + 128) = sub_27537D288();
      v82[0] = v48;

      sub_27538424C(v82);
      *(v0 + 1176) = v82[0];
      v59 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_11_5();
      sub_275388174(0, &qword_2809C1BB0, v59, v60);
      OUTLINED_FUNCTION_137_3();
      sub_2753865B8(v61);
      sub_2753B71F8();

      if (*v1)
      {
        *(v0 + 1192) = *v1;
        OUTLINED_FUNCTION_164_1(&qword_2809C1BB8);
        OUTLINED_FUNCTION_305_0();
        v62 = sub_2753B6D48();
        v64 = v63;
      }

      else
      {
        v62 = 0;
        v64 = 0;
      }

      *(v0 + 96) = v62;
      *(v0 + 104) = v64;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      sub_2753B65B8();
      goto LABEL_14;
    default:
      v5 = *(v0 + 1360);
      v81 = *(v0 + 1352);
      v6 = *(v0 + 1336);
      v7 = *(v0 + 1224);
      sub_2753B65C8();
      sub_2753B65B8();
      *(v0 + 1040) = MEMORY[0x277D83B88];
      *(v0 + 1048) = MEMORY[0x277D65050];
      *(v0 + 1016) = v7;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 1016));
      sub_2753B65B8();
      v8 = MEMORY[0x277D837D0];
      *(v0 + 1080) = MEMORY[0x277D837D0];
      *(v0 + 1088) = MEMORY[0x277D65000];
      *(v0 + 1056) = v6;
      *(v0 + 1064) = v4;

      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 1056));
      sub_2753B65B8();
      *(v0 + 1120) = &type metadata for MusicContent.MediaAPIContentType;
      *(v0 + 1128) = sub_275362790();
      *(v0 + 1096) = v81;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 1096));
      sub_2753B65B8();
      v9 = OUTLINED_FUNCTION_7_4();
      sub_275388174(v9, v10, v8, v11);
      *(v0 + 1160) = v12;
      *(v0 + 1168) = sub_27537D288();
      v82[0] = v5;

      sub_27538424C(v82);
      *(v0 + 1200) = v82[0];
      v13 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_11_5();
      sub_275388174(0, &qword_2809C1BB0, v13, v14);
      OUTLINED_FUNCTION_137_3();
      sub_2753865B8(v15);
      sub_2753B71F8();

      if (*v2)
      {
        *(v0 + 1216) = *v2;
        OUTLINED_FUNCTION_164_1(&qword_2809C1BB8);
        OUTLINED_FUNCTION_305_0();
        v16 = sub_2753B6D48();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      *(v0 + 1136) = v16;
      *(v0 + 1144) = v18;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 1136));
LABEL_13:
      sub_2753B65B8();
LABEL_14:
      v65 = *(v0 + 1328);
      v66 = *(v0 + 1320);
      v67 = *(v0 + 1304);
      v68 = *(v0 + 1296);
      v69 = *(v0 + 1264);
      v70 = *(v0 + 1256);
      v71 = *(v0 + 1248);
      v72 = *(v0 + 1240);
      v73 = *(v0 + 1232);
      sub_2753B65F8();
      (*(v67 + 32))(v65, v66, v68);
      OUTLINED_FUNCTION_107_3(v73);
      sub_2753B65C8();
      sub_2753B65B8();
      sub_2753B6598();
      OUTLINED_FUNCTION_67();
      sub_2753B65B8();
      (*(v71 + 32))(v70, v69, v72);
      sub_2753B65F8();
      v74 = swift_task_alloc();
      *(v0 + 1408) = v74;
      *v74 = v0;
      v74[1] = sub_275378024;
      OUTLINED_FUNCTION_86_1(*(v0 + 1312));
      OUTLINED_FUNCTION_131_0();

      return MEMORY[0x2821CC218](v75);
  }
}