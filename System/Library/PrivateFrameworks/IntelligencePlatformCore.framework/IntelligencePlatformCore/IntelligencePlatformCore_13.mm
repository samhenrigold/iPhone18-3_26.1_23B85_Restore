void sub_1C453BACC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[6]) = a2 + 3;
        return;
      }

      v11 = sub_1C4EFD548();
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453BBF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453BC2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453BD2C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1C4EFEEF8();
    sub_1C43FCF8C();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
      sub_1C43FCF8C();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
        v12 = a3[7];
      }
    }

    return sub_1C44157D4(a1 + v12, a2, v11);
  }
}

uint64_t sub_1C453BE58(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1C4EFEEF8();
    sub_1C43FCF8C();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
      sub_1C43FCF8C();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
        v11 = a4[7];
      }
    }

    return sub_1C440BAA8(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C453C020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C3998, &unk_1C4F53120);
  v5 = sub_1C44157D4(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C453C074(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C456902C(&qword_1EC0C3998, &unk_1C4F53120);

  return sub_1C440BAA8(a1, v5, a3, v6);
}

void sub_1C453C360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = sub_1C4414F04();
  type metadata accessor for TranslatedEntityTriple(v14);
  sub_1C441C4F0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441CDB4(v16, v17, v18, v19, v20, v21, v22, v23, v34);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4414308();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C443F36C();
  if (v27)
  {
LABEL_10:
    sub_1C44D3E28();
    sub_1C43FBC80();
  }

  else
  {
    sub_1C43FF618(v26);
LABEL_3:
    sub_1C447E260();
    while (1)
    {
      sub_1C4471BAC(v10, v12);
      sub_1C44AB2A0();
      sub_1C441A560();
      v29 = sub_1C44B95C0(&unk_1EDDF3A50, v28, &protocol conformance descriptor for TranslatedEntityTriple);
      sub_1C4471D34(v29);
      sub_1C443DFC8();
      sub_1C443F788();
      sub_1C44BCC4C(v11, v30);
      sub_1C44F0D08();
      if (v13 >= type metadata accessor for TranslatedEntityTriple)
      {
LABEL_8:
        sub_1C440D870();
        if (v27)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }

      if (!v35)
      {
        break;
      }

      sub_1C44856C8(v10, a10);
      sub_1C4485DA0();
      v31 = sub_1C4404BB0();
      sub_1C44856C8(v31, v32);
      sub_1C4459BEC();
      if (v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1C453C4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = sub_1C4414F04();
  type metadata accessor for EventTriple(v14);
  sub_1C441C4F0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441CDB4(v16, v17, v18, v19, v20, v21, v22, v23, v34);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4414308();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C443F36C();
  if (v27)
  {
LABEL_10:
    sub_1C44D3E28();
    sub_1C43FBC80();
  }

  else
  {
    sub_1C43FF618(v26);
LABEL_3:
    sub_1C447E260();
    while (1)
    {
      sub_1C4471BAC(v10, v12);
      sub_1C44AB2A0();
      sub_1C4403770();
      v29 = sub_1C44B95C0(&qword_1EDDFE2F0, v28, &protocol conformance descriptor for EventTriple);
      sub_1C4471D34(v29);
      sub_1C443DFC8();
      sub_1C4418588();
      sub_1C44BCC4C(v11, v30);
      sub_1C44F0D08();
      if (v13 >= type metadata accessor for EventTriple)
      {
LABEL_8:
        sub_1C440D870();
        if (v27)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }

      if (!v35)
      {
        break;
      }

      sub_1C44856C8(v10, a10);
      sub_1C4485DA0();
      v31 = sub_1C4404BB0();
      sub_1C44856C8(v31, v32);
      sub_1C4459BEC();
      if (v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1C453C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = sub_1C4414F04();
  type metadata accessor for GraphTriple(v14);
  sub_1C441C4F0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441CDB4(v16, v17, v18, v19, v20, v21, v22, v23, v34);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4414308();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C443F36C();
  if (v27)
  {
LABEL_10:
    sub_1C44D3E28();
    sub_1C43FBC80();
  }

  else
  {
    sub_1C43FF618(v26);
LABEL_3:
    sub_1C447E260();
    while (1)
    {
      sub_1C4471BAC(v10, v12);
      sub_1C44AB2A0();
      sub_1C43FDE74();
      v29 = sub_1C44B95C0(&qword_1EDDFE218, v28, &protocol conformance descriptor for GraphTriple);
      sub_1C4471D34(v29);
      sub_1C443DFC8();
      sub_1C4435CBC();
      sub_1C44BCC4C(v11, v30);
      sub_1C44F0D08();
      if (v13 >= type metadata accessor for GraphTriple)
      {
LABEL_8:
        sub_1C440D870();
        if (v27)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }

      if (!v35)
      {
        break;
      }

      sub_1C44856C8(v10, a10);
      sub_1C4485DA0();
      v31 = sub_1C4404BB0();
      sub_1C44856C8(v31, v32);
      sub_1C4459BEC();
      if (v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1C453C7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = sub_1C4414F04();
  type metadata accessor for ConstructionEventTriple(v14);
  sub_1C441C4F0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441CDB4(v16, v17, v18, v19, v20, v21, v22, v23, v34);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4414308();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C443F36C();
  if (v27)
  {
LABEL_10:
    sub_1C44D3E28();
    sub_1C43FBC80();
  }

  else
  {
    sub_1C43FF618(v26);
LABEL_3:
    sub_1C447E260();
    while (1)
    {
      sub_1C4471BAC(v10, v12);
      sub_1C44AB2A0();
      sub_1C4432A24();
      v29 = sub_1C44B95C0(&unk_1EDDE2780, v28, &protocol conformance descriptor for ConstructionEventTriple);
      sub_1C4471D34(v29);
      sub_1C443DFC8();
      sub_1C441B030();
      sub_1C44BCC4C(v11, v30);
      sub_1C44F0D08();
      if (v13 >= type metadata accessor for ConstructionEventTriple)
      {
LABEL_8:
        sub_1C440D870();
        if (v27)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }

      if (!v35)
      {
        break;
      }

      sub_1C44856C8(v10, a10);
      sub_1C4485DA0();
      v31 = sub_1C4404BB0();
      sub_1C44856C8(v31, v32);
      sub_1C4459BEC();
      if (v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1C453C980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = sub_1C4414F04();
  type metadata accessor for ConstructionGraphTriple(v14);
  sub_1C441C4F0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441CDB4(v16, v17, v18, v19, v20, v21, v22, v23, v34);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4414308();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C443F36C();
  if (v27)
  {
LABEL_10:
    sub_1C44D3E28();
    sub_1C43FBC80();
  }

  else
  {
    sub_1C43FF618(v26);
LABEL_3:
    sub_1C447E260();
    while (1)
    {
      sub_1C4471BAC(v10, v12);
      sub_1C44AB2A0();
      sub_1C44137C4();
      v29 = sub_1C44B95C0(&qword_1EDDE2668, v28, &protocol conformance descriptor for ConstructionGraphTriple);
      sub_1C4471D34(v29);
      sub_1C443DFC8();
      sub_1C4434254();
      sub_1C44BCC4C(v11, v30);
      sub_1C44F0D08();
      if (v13 >= type metadata accessor for ConstructionGraphTriple)
      {
LABEL_8:
        sub_1C440D870();
        if (v27)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }

      if (!v35)
      {
        break;
      }

      sub_1C44856C8(v10, a10);
      sub_1C4485DA0();
      v31 = sub_1C4404BB0();
      sub_1C44856C8(v31, v32);
      sub_1C4459BEC();
      if (v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1C453CB08()
{
  sub_1C43FE96C();
  v9 = sub_1C445E9D0(v8);
  v10 = type metadata accessor for TranslatedEntityTriple(v9);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440C744(v13, v14, v15, v16, v17, v18, v19, v20, v86);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440BF74(v22, v23, v24, v25, v26, v27, v28, v29, v87);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C440610C(v31, v32, v33, v34, v35, v36, v37, v38, v88);
  if (v78 != v79)
  {
LABEL_93:
    sub_1C44608D0();
    if (!v82)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_95;
    }

    goto LABEL_129;
  }

  sub_1C4B58FDC();
  v39 = MEMORY[0x1E69E7CC0];
  v92 = v10;
  while (1)
  {
    sub_1C443EF78();
    if (v78 == v79)
    {
      goto LABEL_28;
    }

    sub_1C4425434();
    v0 = type metadata accessor for TranslatedEntityTriple;
    v5 = v91;
    sub_1C4471BAC(v2, v91);
    sub_1C4462470();
    sub_1C441A560();
    v41 = sub_1C44B95C0(&unk_1EDDF3A50, v40, &protocol conformance descriptor for TranslatedEntityTriple);
    v42 = sub_1C442F718(v41);
    sub_1C440186C(v42);
    sub_1C441784C();
    sub_1C44BCC4C(v4, v43);
    v44 = sub_1C441E0C0();
    sub_1C44BCC4C(v44, v45);
    sub_1C447F2D0();
    while (1)
    {
      sub_1C445BDF4();
      if (v78 == v79)
      {
        break;
      }

      sub_1C442AC5C();
      sub_1C44224C4();
      v7 = v91;
      sub_1C4471BAC(v3, v91);
      sub_1C447E350();
      sub_1C444AD8C();
      v47 = sub_1C44E76F8();
      sub_1C447E7AC(v47);
      sub_1C443F788();
      v10 = v48;
      sub_1C44BCC4C(v6, v48);
      sub_1C44D0B74();
      sub_1C4409064();
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = v46;
LABEL_9:
    sub_1C4443484();
    if (v78 != v79)
    {
      sub_1C4B58FA0();
      if (v78 != v79)
      {
        goto LABEL_126;
      }

      if (v50 >= v7)
      {
        sub_1C4488474();
        goto LABEL_28;
      }

      sub_1C440E7C4();
      do
      {
        sub_1C4B58F94();
        if (!v51)
        {
          sub_1C4B58FB8();
          if (!v91)
          {
            goto LABEL_133;
          }

          v0 = v91 + v3;
          sub_1C4426060();
          sub_1C4B59064();
          sub_1C4488B38();
          v53 = v78 != v79 || v0 >= v52;
          if (v53)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v3 != v39)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C4426060();
          sub_1C4B5904C();
        }

        sub_1C441E6DC();
      }

      while (v78 != v79);
    }

    sub_1C4480810();
LABEL_28:
    sub_1C44B9018();
    if (v78 != v79)
    {
      if (__OFSUB__(v7, v4))
      {
        goto LABEL_125;
      }

      sub_1C4486020();
      if (v78 != v79)
      {
        break;
      }
    }

LABEL_49:
    if (v7 < v4)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458A358();
      v39 = v80;
    }

    sub_1C44952A4();
    if (v53)
    {
      sub_1C43FF010();
      sub_1C458A358();
      v39 = v81;
    }

    sub_1C4435404();
    if (!v64)
    {
      goto LABEL_134;
    }

    if (v0)
    {
      while (1)
      {
        sub_1C44146C8();
        if (v53)
        {
          break;
        }

        if (v2 == 3)
        {
          sub_1C44A1F48();
LABEL_64:
          if (v65)
          {
            goto LABEL_111;
          }

          sub_1C44EC860();
          if (v79)
          {
            goto LABEL_114;
          }

          sub_1C4455988();
          if (v79)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_119;
          }

          if (v70 + v73 >= v71)
          {
            sub_1C449DB40();
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v2 < 2)
        {
          goto LABEL_113;
        }

        sub_1C445AB14();
        v72 = v79;
LABEL_74:
        if (v72)
        {
          goto LABEL_116;
        }

        sub_1C4485BD0();
        if (v79)
        {
          goto LABEL_118;
        }

        if (v74 < v75)
        {
          goto LABEL_90;
        }

LABEL_81:
        sub_1C44A8398();
        if (v53)
        {
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
          goto LABEL_128;
        }

        sub_1C4428A18();
        if (!v77)
        {
          goto LABEL_131;
        }

        sub_1C441250C(v77);
        sub_1C453E7A0();
        if (v1)
        {
          goto LABEL_104;
        }

        if (v5 < v4)
        {
          goto LABEL_106;
        }

        sub_1C4B58FAC();
        if (!(v78 ^ v79 | v51))
        {
          goto LABEL_107;
        }

        *v2 = v4;
        v2[1] = v5;
        if (v78 == v79)
        {
          goto LABEL_108;
        }

        sub_1C440F01C();
        sub_1C4B58F7C();
        if (v51 || !v53)
        {
          goto LABEL_90;
        }
      }

      sub_1C447F5F4();
      if (v79)
      {
        goto LABEL_109;
      }

      sub_1C445FC20();
      if (v79)
      {
        goto LABEL_110;
      }

      sub_1C44A3ADC();
      if (v79)
      {
        goto LABEL_112;
      }

      v79 = __OFADD__(v66, v68);
      v69 = v66 + v68;
      if (v79)
      {
        goto LABEL_115;
      }

      if (v69 >= v67)
      {
        sub_1C445BB30();
        if (v79)
        {
          goto LABEL_123;
        }

        sub_1C44A14DC();
        if (v78 != v79)
        {
          v10 = v76;
        }

        goto LABEL_81;
      }

      goto LABEL_64;
    }

LABEL_90:
    sub_1C44419C4();
    if (v78 == v79)
    {
      goto LABEL_93;
    }
  }

  v56 = v4 + v55;
  if (__OFADD__(v4, v55))
  {
    goto LABEL_127;
  }

  if (v56 >= v54)
  {
    v56 = v54;
  }

  if (v56 < v4)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    sub_1C46194F4();
LABEL_95:
    sub_1C4B58F88();
    while (v3 >= 2)
    {
      sub_1C4428A18();
      if (!v83)
      {
        goto LABEL_132;
      }

      sub_1C4400E14(v83);
      sub_1C453E7A0();
      if (v1)
      {
        break;
      }

      if (v6 < v5)
      {
        goto LABEL_120;
      }

      sub_1C4488988();
      if (v53)
      {
        goto LABEL_121;
      }

      sub_1C4413F88();
      if (!v53)
      {
        goto LABEL_122;
      }

      sub_1C447E4A0(v84, v85);
      sub_1C4488850();
    }

LABEL_104:

    sub_1C447585C();
    sub_1C43FBC80();
    return;
  }

  if (v7 == v56)
  {
    goto LABEL_49;
  }

  sub_1C442032C();
LABEL_39:
  sub_1C44247A4();
  while (1)
  {
    v5 = v91;
    sub_1C4471BAC(v2, v91);
    sub_1C44290C4();
    sub_1C441A560();
    v58 = sub_1C44B95C0(&unk_1EDDF3A50, v57, &protocol conformance descriptor for TranslatedEntityTriple);
    sub_1C442F718(v58);
    v0 = sub_1C4455448();
    sub_1C441784C();
    sub_1C44BCC4C(v7, v59);
    v60 = sub_1C441E0C0();
    sub_1C44BCC4C(v60, v61);
    if (v10 >= v0)
    {
      v10 = v92;
LABEL_46:
      sub_1C440FC24();
      if (v51)
      {
        sub_1C445C218();
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (!v89)
    {
      break;
    }

    v0 = type metadata accessor for TranslatedEntityTriple;
    v39 = v90;
    sub_1C44856C8(v2, v90);
    sub_1C442A4C0();
    v62 = sub_1C440A9B8();
    sub_1C44856C8(v62, v63);
    sub_1C443E408();
    if (v53)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1C453D0C0()
{
  sub_1C43FE96C();
  v9 = sub_1C445E9D0(v8);
  v10 = type metadata accessor for EventTriple(v9);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440C744(v13, v14, v15, v16, v17, v18, v19, v20, v86);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440BF74(v22, v23, v24, v25, v26, v27, v28, v29, v87);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C440610C(v31, v32, v33, v34, v35, v36, v37, v38, v88);
  if (v78 != v79)
  {
LABEL_93:
    sub_1C44608D0();
    if (!v82)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_95;
    }

    goto LABEL_129;
  }

  sub_1C4B58FDC();
  v39 = MEMORY[0x1E69E7CC0];
  v92 = v10;
  while (1)
  {
    sub_1C443EF78();
    if (v78 == v79)
    {
      goto LABEL_28;
    }

    sub_1C4425434();
    v0 = type metadata accessor for EventTriple;
    v5 = v91;
    sub_1C4471BAC(v2, v91);
    sub_1C4462470();
    sub_1C4403770();
    v41 = sub_1C44B95C0(&qword_1EDDFE2F0, v40, &protocol conformance descriptor for EventTriple);
    v42 = sub_1C442F718(v41);
    sub_1C440186C(v42);
    sub_1C4434724();
    sub_1C44BCC4C(v4, v43);
    v44 = sub_1C441E0C0();
    sub_1C44BCC4C(v44, v45);
    sub_1C447F2D0();
    while (1)
    {
      sub_1C445BDF4();
      if (v78 == v79)
      {
        break;
      }

      sub_1C442AC5C();
      sub_1C443668C();
      v7 = v91;
      sub_1C4471BAC(v3, v91);
      sub_1C447E350();
      sub_1C444AD8C();
      v47 = sub_1C44E76F8();
      sub_1C447E7AC(v47);
      sub_1C4418588();
      v10 = v48;
      sub_1C44BCC4C(v6, v48);
      sub_1C44D0B74();
      sub_1C4409064();
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = v46;
LABEL_9:
    sub_1C4443484();
    if (v78 != v79)
    {
      sub_1C4B58FA0();
      if (v78 != v79)
      {
        goto LABEL_126;
      }

      if (v50 >= v7)
      {
        sub_1C4488474();
        goto LABEL_28;
      }

      sub_1C440E7C4();
      do
      {
        sub_1C4B58F94();
        if (!v51)
        {
          sub_1C4B58FB8();
          if (!v91)
          {
            goto LABEL_133;
          }

          v0 = v91 + v3;
          sub_1C440EE6C();
          sub_1C4B59064();
          sub_1C4488B38();
          v53 = v78 != v79 || v0 >= v52;
          if (v53)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v3 != v39)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C440EE6C();
          sub_1C4B5904C();
        }

        sub_1C441E6DC();
      }

      while (v78 != v79);
    }

    sub_1C4480810();
LABEL_28:
    sub_1C44B9018();
    if (v78 != v79)
    {
      if (__OFSUB__(v7, v4))
      {
        goto LABEL_125;
      }

      sub_1C4486020();
      if (v78 != v79)
      {
        break;
      }
    }

LABEL_49:
    if (v7 < v4)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458A358();
      v39 = v80;
    }

    sub_1C44952A4();
    if (v53)
    {
      sub_1C43FF010();
      sub_1C458A358();
      v39 = v81;
    }

    sub_1C4435404();
    if (!v64)
    {
      goto LABEL_134;
    }

    if (v0)
    {
      while (1)
      {
        sub_1C44146C8();
        if (v53)
        {
          break;
        }

        if (v2 == 3)
        {
          sub_1C44A1F48();
LABEL_64:
          if (v65)
          {
            goto LABEL_111;
          }

          sub_1C44EC860();
          if (v79)
          {
            goto LABEL_114;
          }

          sub_1C4455988();
          if (v79)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_119;
          }

          if (v70 + v73 >= v71)
          {
            sub_1C449DB40();
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v2 < 2)
        {
          goto LABEL_113;
        }

        sub_1C445AB14();
        v72 = v79;
LABEL_74:
        if (v72)
        {
          goto LABEL_116;
        }

        sub_1C4485BD0();
        if (v79)
        {
          goto LABEL_118;
        }

        if (v74 < v75)
        {
          goto LABEL_90;
        }

LABEL_81:
        sub_1C44A8398();
        if (v53)
        {
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
          goto LABEL_128;
        }

        sub_1C4428A18();
        if (!v77)
        {
          goto LABEL_131;
        }

        sub_1C441250C(v77);
        sub_1C453EA88();
        if (v1)
        {
          goto LABEL_104;
        }

        if (v5 < v4)
        {
          goto LABEL_106;
        }

        sub_1C4B58FAC();
        if (!(v78 ^ v79 | v51))
        {
          goto LABEL_107;
        }

        *v2 = v4;
        v2[1] = v5;
        if (v78 == v79)
        {
          goto LABEL_108;
        }

        sub_1C440F01C();
        sub_1C4B58F7C();
        if (v51 || !v53)
        {
          goto LABEL_90;
        }
      }

      sub_1C447F5F4();
      if (v79)
      {
        goto LABEL_109;
      }

      sub_1C445FC20();
      if (v79)
      {
        goto LABEL_110;
      }

      sub_1C44A3ADC();
      if (v79)
      {
        goto LABEL_112;
      }

      v79 = __OFADD__(v66, v68);
      v69 = v66 + v68;
      if (v79)
      {
        goto LABEL_115;
      }

      if (v69 >= v67)
      {
        sub_1C445BB30();
        if (v79)
        {
          goto LABEL_123;
        }

        sub_1C44A14DC();
        if (v78 != v79)
        {
          v10 = v76;
        }

        goto LABEL_81;
      }

      goto LABEL_64;
    }

LABEL_90:
    sub_1C44419C4();
    if (v78 == v79)
    {
      goto LABEL_93;
    }
  }

  v56 = v4 + v55;
  if (__OFADD__(v4, v55))
  {
    goto LABEL_127;
  }

  if (v56 >= v54)
  {
    v56 = v54;
  }

  if (v56 < v4)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    sub_1C46194F4();
LABEL_95:
    sub_1C4B58F88();
    while (v3 >= 2)
    {
      sub_1C4428A18();
      if (!v83)
      {
        goto LABEL_132;
      }

      sub_1C4400E14(v83);
      sub_1C453EA88();
      if (v1)
      {
        break;
      }

      if (v6 < v5)
      {
        goto LABEL_120;
      }

      sub_1C4488988();
      if (v53)
      {
        goto LABEL_121;
      }

      sub_1C4413F88();
      if (!v53)
      {
        goto LABEL_122;
      }

      sub_1C447E4A0(v84, v85);
      sub_1C4488850();
    }

LABEL_104:

    sub_1C447585C();
    sub_1C43FBC80();
    return;
  }

  if (v7 == v56)
  {
    goto LABEL_49;
  }

  sub_1C442032C();
LABEL_39:
  sub_1C44247A4();
  while (1)
  {
    v5 = v91;
    sub_1C4471BAC(v2, v91);
    sub_1C44290C4();
    sub_1C4403770();
    v58 = sub_1C44B95C0(&qword_1EDDFE2F0, v57, &protocol conformance descriptor for EventTriple);
    sub_1C442F718(v58);
    v0 = sub_1C4455448();
    sub_1C4434724();
    sub_1C44BCC4C(v7, v59);
    v60 = sub_1C441E0C0();
    sub_1C44BCC4C(v60, v61);
    if (v10 >= v0)
    {
      v10 = v92;
LABEL_46:
      sub_1C440FC24();
      if (v51)
      {
        sub_1C445C218();
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (!v89)
    {
      break;
    }

    v0 = type metadata accessor for EventTriple;
    v39 = v90;
    sub_1C44856C8(v2, v90);
    sub_1C442A4C0();
    v62 = sub_1C440A9B8();
    sub_1C44856C8(v62, v63);
    sub_1C443E408();
    if (v53)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1C453D678()
{
  sub_1C43FE96C();
  v9 = sub_1C445E9D0(v8);
  v10 = type metadata accessor for GraphTriple(v9);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440C744(v13, v14, v15, v16, v17, v18, v19, v20, v86);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440BF74(v22, v23, v24, v25, v26, v27, v28, v29, v87);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C440610C(v31, v32, v33, v34, v35, v36, v37, v38, v88);
  if (v78 != v79)
  {
LABEL_93:
    sub_1C44608D0();
    if (!v82)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_95;
    }

    goto LABEL_129;
  }

  sub_1C4B58FDC();
  v39 = MEMORY[0x1E69E7CC0];
  v92 = v10;
  while (1)
  {
    sub_1C443EF78();
    if (v78 == v79)
    {
      goto LABEL_28;
    }

    sub_1C4425434();
    v0 = type metadata accessor for GraphTriple;
    v5 = v91;
    sub_1C4471BAC(v2, v91);
    sub_1C4462470();
    sub_1C43FDE74();
    v41 = sub_1C44B95C0(&qword_1EDDFE218, v40, &protocol conformance descriptor for GraphTriple);
    v42 = sub_1C442F718(v41);
    sub_1C440186C(v42);
    sub_1C446C068();
    sub_1C44BCC4C(v4, v43);
    v44 = sub_1C441E0C0();
    sub_1C44BCC4C(v44, v45);
    sub_1C447F2D0();
    while (1)
    {
      sub_1C445BDF4();
      if (v78 == v79)
      {
        break;
      }

      sub_1C442AC5C();
      sub_1C4433DF0();
      v7 = v91;
      sub_1C4471BAC(v3, v91);
      sub_1C447E350();
      sub_1C444AD8C();
      v47 = sub_1C44E76F8();
      sub_1C447E7AC(v47);
      sub_1C4435CBC();
      v10 = v48;
      sub_1C44BCC4C(v6, v48);
      sub_1C44D0B74();
      sub_1C4409064();
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = v46;
LABEL_9:
    sub_1C4443484();
    if (v78 != v79)
    {
      sub_1C4B58FA0();
      if (v78 != v79)
      {
        goto LABEL_126;
      }

      if (v50 >= v7)
      {
        sub_1C4488474();
        goto LABEL_28;
      }

      sub_1C440E7C4();
      do
      {
        sub_1C4B58F94();
        if (!v51)
        {
          sub_1C4B58FB8();
          if (!v91)
          {
            goto LABEL_133;
          }

          v0 = v91 + v3;
          sub_1C442647C();
          sub_1C4B59064();
          sub_1C4488B38();
          v53 = v78 != v79 || v0 >= v52;
          if (v53)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v3 != v39)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C442647C();
          sub_1C4B5904C();
        }

        sub_1C441E6DC();
      }

      while (v78 != v79);
    }

    sub_1C4480810();
LABEL_28:
    sub_1C44B9018();
    if (v78 != v79)
    {
      if (__OFSUB__(v7, v4))
      {
        goto LABEL_125;
      }

      sub_1C4486020();
      if (v78 != v79)
      {
        break;
      }
    }

LABEL_49:
    if (v7 < v4)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458A358();
      v39 = v80;
    }

    sub_1C44952A4();
    if (v53)
    {
      sub_1C43FF010();
      sub_1C458A358();
      v39 = v81;
    }

    sub_1C4435404();
    if (!v64)
    {
      goto LABEL_134;
    }

    if (v0)
    {
      while (1)
      {
        sub_1C44146C8();
        if (v53)
        {
          break;
        }

        if (v2 == 3)
        {
          sub_1C44A1F48();
LABEL_64:
          if (v65)
          {
            goto LABEL_111;
          }

          sub_1C44EC860();
          if (v79)
          {
            goto LABEL_114;
          }

          sub_1C4455988();
          if (v79)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_119;
          }

          if (v70 + v73 >= v71)
          {
            sub_1C449DB40();
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v2 < 2)
        {
          goto LABEL_113;
        }

        sub_1C445AB14();
        v72 = v79;
LABEL_74:
        if (v72)
        {
          goto LABEL_116;
        }

        sub_1C4485BD0();
        if (v79)
        {
          goto LABEL_118;
        }

        if (v74 < v75)
        {
          goto LABEL_90;
        }

LABEL_81:
        sub_1C44A8398();
        if (v53)
        {
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
          goto LABEL_128;
        }

        sub_1C4428A18();
        if (!v77)
        {
          goto LABEL_131;
        }

        sub_1C441250C(v77);
        sub_1C453ED70();
        if (v1)
        {
          goto LABEL_104;
        }

        if (v5 < v4)
        {
          goto LABEL_106;
        }

        sub_1C4B58FAC();
        if (!(v78 ^ v79 | v51))
        {
          goto LABEL_107;
        }

        *v2 = v4;
        v2[1] = v5;
        if (v78 == v79)
        {
          goto LABEL_108;
        }

        sub_1C440F01C();
        sub_1C4B58F7C();
        if (v51 || !v53)
        {
          goto LABEL_90;
        }
      }

      sub_1C447F5F4();
      if (v79)
      {
        goto LABEL_109;
      }

      sub_1C445FC20();
      if (v79)
      {
        goto LABEL_110;
      }

      sub_1C44A3ADC();
      if (v79)
      {
        goto LABEL_112;
      }

      v79 = __OFADD__(v66, v68);
      v69 = v66 + v68;
      if (v79)
      {
        goto LABEL_115;
      }

      if (v69 >= v67)
      {
        sub_1C445BB30();
        if (v79)
        {
          goto LABEL_123;
        }

        sub_1C44A14DC();
        if (v78 != v79)
        {
          v10 = v76;
        }

        goto LABEL_81;
      }

      goto LABEL_64;
    }

LABEL_90:
    sub_1C44419C4();
    if (v78 == v79)
    {
      goto LABEL_93;
    }
  }

  v56 = v4 + v55;
  if (__OFADD__(v4, v55))
  {
    goto LABEL_127;
  }

  if (v56 >= v54)
  {
    v56 = v54;
  }

  if (v56 < v4)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    sub_1C46194F4();
LABEL_95:
    sub_1C4B58F88();
    while (v3 >= 2)
    {
      sub_1C4428A18();
      if (!v83)
      {
        goto LABEL_132;
      }

      sub_1C4400E14(v83);
      sub_1C453ED70();
      if (v1)
      {
        break;
      }

      if (v6 < v5)
      {
        goto LABEL_120;
      }

      sub_1C4488988();
      if (v53)
      {
        goto LABEL_121;
      }

      sub_1C4413F88();
      if (!v53)
      {
        goto LABEL_122;
      }

      sub_1C447E4A0(v84, v85);
      sub_1C4488850();
    }

LABEL_104:

    sub_1C447585C();
    sub_1C43FBC80();
    return;
  }

  if (v7 == v56)
  {
    goto LABEL_49;
  }

  sub_1C442032C();
LABEL_39:
  sub_1C44247A4();
  while (1)
  {
    v5 = v91;
    sub_1C4471BAC(v2, v91);
    sub_1C44290C4();
    sub_1C43FDE74();
    v58 = sub_1C44B95C0(&qword_1EDDFE218, v57, &protocol conformance descriptor for GraphTriple);
    sub_1C442F718(v58);
    v0 = sub_1C4455448();
    sub_1C446C068();
    sub_1C44BCC4C(v7, v59);
    v60 = sub_1C441E0C0();
    sub_1C44BCC4C(v60, v61);
    if (v10 >= v0)
    {
      v10 = v92;
LABEL_46:
      sub_1C440FC24();
      if (v51)
      {
        sub_1C445C218();
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (!v89)
    {
      break;
    }

    v0 = type metadata accessor for GraphTriple;
    v39 = v90;
    sub_1C44856C8(v2, v90);
    sub_1C442A4C0();
    v62 = sub_1C440A9B8();
    sub_1C44856C8(v62, v63);
    sub_1C443E408();
    if (v53)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1C453DC30()
{
  sub_1C43FE96C();
  v9 = sub_1C445E9D0(v8);
  v10 = type metadata accessor for ConstructionEventTriple(v9);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440C744(v13, v14, v15, v16, v17, v18, v19, v20, v86);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440BF74(v22, v23, v24, v25, v26, v27, v28, v29, v87);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C440610C(v31, v32, v33, v34, v35, v36, v37, v38, v88);
  if (v78 != v79)
  {
LABEL_93:
    sub_1C44608D0();
    if (!v82)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_95;
    }

    goto LABEL_129;
  }

  sub_1C4B58FDC();
  v39 = MEMORY[0x1E69E7CC0];
  v92 = v10;
  while (1)
  {
    sub_1C443EF78();
    if (v78 == v79)
    {
      goto LABEL_28;
    }

    sub_1C4425434();
    v0 = type metadata accessor for ConstructionEventTriple;
    v5 = v91;
    sub_1C4471BAC(v2, v91);
    sub_1C4462470();
    sub_1C4432A24();
    v41 = sub_1C44B95C0(&unk_1EDDE2780, v40, &protocol conformance descriptor for ConstructionEventTriple);
    v42 = sub_1C442F718(v41);
    sub_1C440186C(v42);
    sub_1C446929C();
    sub_1C44BCC4C(v4, v43);
    v44 = sub_1C441E0C0();
    sub_1C44BCC4C(v44, v45);
    sub_1C447F2D0();
    while (1)
    {
      sub_1C445BDF4();
      if (v78 == v79)
      {
        break;
      }

      sub_1C442AC5C();
      sub_1C444121C();
      v7 = v91;
      sub_1C4471BAC(v3, v91);
      sub_1C447E350();
      sub_1C444AD8C();
      v47 = sub_1C44E76F8();
      sub_1C447E7AC(v47);
      sub_1C441B030();
      v10 = v48;
      sub_1C44BCC4C(v6, v48);
      sub_1C44D0B74();
      sub_1C4409064();
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = v46;
LABEL_9:
    sub_1C4443484();
    if (v78 != v79)
    {
      sub_1C4B58FA0();
      if (v78 != v79)
      {
        goto LABEL_126;
      }

      if (v50 >= v7)
      {
        sub_1C4488474();
        goto LABEL_28;
      }

      sub_1C440E7C4();
      do
      {
        sub_1C4B58F94();
        if (!v51)
        {
          sub_1C4B58FB8();
          if (!v91)
          {
            goto LABEL_133;
          }

          v0 = v91 + v3;
          sub_1C4424A10();
          sub_1C4B59064();
          sub_1C4488B38();
          v53 = v78 != v79 || v0 >= v52;
          if (v53)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v3 != v39)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C4424A10();
          sub_1C4B5904C();
        }

        sub_1C441E6DC();
      }

      while (v78 != v79);
    }

    sub_1C4480810();
LABEL_28:
    sub_1C44B9018();
    if (v78 != v79)
    {
      if (__OFSUB__(v7, v4))
      {
        goto LABEL_125;
      }

      sub_1C4486020();
      if (v78 != v79)
      {
        break;
      }
    }

LABEL_49:
    if (v7 < v4)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458A358();
      v39 = v80;
    }

    sub_1C44952A4();
    if (v53)
    {
      sub_1C43FF010();
      sub_1C458A358();
      v39 = v81;
    }

    sub_1C4435404();
    if (!v64)
    {
      goto LABEL_134;
    }

    if (v0)
    {
      while (1)
      {
        sub_1C44146C8();
        if (v53)
        {
          break;
        }

        if (v2 == 3)
        {
          sub_1C44A1F48();
LABEL_64:
          if (v65)
          {
            goto LABEL_111;
          }

          sub_1C44EC860();
          if (v79)
          {
            goto LABEL_114;
          }

          sub_1C4455988();
          if (v79)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_119;
          }

          if (v70 + v73 >= v71)
          {
            sub_1C449DB40();
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v2 < 2)
        {
          goto LABEL_113;
        }

        sub_1C445AB14();
        v72 = v79;
LABEL_74:
        if (v72)
        {
          goto LABEL_116;
        }

        sub_1C4485BD0();
        if (v79)
        {
          goto LABEL_118;
        }

        if (v74 < v75)
        {
          goto LABEL_90;
        }

LABEL_81:
        sub_1C44A8398();
        if (v53)
        {
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
          goto LABEL_128;
        }

        sub_1C4428A18();
        if (!v77)
        {
          goto LABEL_131;
        }

        sub_1C441250C(v77);
        sub_1C453F058();
        if (v1)
        {
          goto LABEL_104;
        }

        if (v5 < v4)
        {
          goto LABEL_106;
        }

        sub_1C4B58FAC();
        if (!(v78 ^ v79 | v51))
        {
          goto LABEL_107;
        }

        *v2 = v4;
        v2[1] = v5;
        if (v78 == v79)
        {
          goto LABEL_108;
        }

        sub_1C440F01C();
        sub_1C4B58F7C();
        if (v51 || !v53)
        {
          goto LABEL_90;
        }
      }

      sub_1C447F5F4();
      if (v79)
      {
        goto LABEL_109;
      }

      sub_1C445FC20();
      if (v79)
      {
        goto LABEL_110;
      }

      sub_1C44A3ADC();
      if (v79)
      {
        goto LABEL_112;
      }

      v79 = __OFADD__(v66, v68);
      v69 = v66 + v68;
      if (v79)
      {
        goto LABEL_115;
      }

      if (v69 >= v67)
      {
        sub_1C445BB30();
        if (v79)
        {
          goto LABEL_123;
        }

        sub_1C44A14DC();
        if (v78 != v79)
        {
          v10 = v76;
        }

        goto LABEL_81;
      }

      goto LABEL_64;
    }

LABEL_90:
    sub_1C44419C4();
    if (v78 == v79)
    {
      goto LABEL_93;
    }
  }

  v56 = v4 + v55;
  if (__OFADD__(v4, v55))
  {
    goto LABEL_127;
  }

  if (v56 >= v54)
  {
    v56 = v54;
  }

  if (v56 < v4)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    sub_1C46194F4();
LABEL_95:
    sub_1C4B58F88();
    while (v3 >= 2)
    {
      sub_1C4428A18();
      if (!v83)
      {
        goto LABEL_132;
      }

      sub_1C4400E14(v83);
      sub_1C453F058();
      if (v1)
      {
        break;
      }

      if (v6 < v5)
      {
        goto LABEL_120;
      }

      sub_1C4488988();
      if (v53)
      {
        goto LABEL_121;
      }

      sub_1C4413F88();
      if (!v53)
      {
        goto LABEL_122;
      }

      sub_1C447E4A0(v84, v85);
      sub_1C4488850();
    }

LABEL_104:

    sub_1C447585C();
    sub_1C43FBC80();
    return;
  }

  if (v7 == v56)
  {
    goto LABEL_49;
  }

  sub_1C442032C();
LABEL_39:
  sub_1C44247A4();
  while (1)
  {
    v5 = v91;
    sub_1C4471BAC(v2, v91);
    sub_1C44290C4();
    sub_1C4432A24();
    v58 = sub_1C44B95C0(&unk_1EDDE2780, v57, &protocol conformance descriptor for ConstructionEventTriple);
    sub_1C442F718(v58);
    v0 = sub_1C4455448();
    sub_1C446929C();
    sub_1C44BCC4C(v7, v59);
    v60 = sub_1C441E0C0();
    sub_1C44BCC4C(v60, v61);
    if (v10 >= v0)
    {
      v10 = v92;
LABEL_46:
      sub_1C440FC24();
      if (v51)
      {
        sub_1C445C218();
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (!v89)
    {
      break;
    }

    v0 = type metadata accessor for ConstructionEventTriple;
    v39 = v90;
    sub_1C44856C8(v2, v90);
    sub_1C442A4C0();
    v62 = sub_1C440A9B8();
    sub_1C44856C8(v62, v63);
    sub_1C443E408();
    if (v53)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1C453E1E8()
{
  sub_1C43FE96C();
  v9 = sub_1C445E9D0(v8);
  v10 = type metadata accessor for ConstructionGraphTriple(v9);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440C744(v13, v14, v15, v16, v17, v18, v19, v20, v86);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440BF74(v22, v23, v24, v25, v26, v27, v28, v29, v87);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C440610C(v31, v32, v33, v34, v35, v36, v37, v38, v88);
  if (v78 != v79)
  {
LABEL_93:
    sub_1C44608D0();
    if (!v82)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_95;
    }

    goto LABEL_129;
  }

  sub_1C4B58FDC();
  v39 = MEMORY[0x1E69E7CC0];
  v92 = v10;
  while (1)
  {
    sub_1C443EF78();
    if (v78 == v79)
    {
      goto LABEL_28;
    }

    sub_1C4425434();
    v0 = type metadata accessor for ConstructionGraphTriple;
    v5 = v91;
    sub_1C4471BAC(v2, v91);
    sub_1C4462470();
    sub_1C44137C4();
    v41 = sub_1C44B95C0(&qword_1EDDE2668, v40, &protocol conformance descriptor for ConstructionGraphTriple);
    v42 = sub_1C442F718(v41);
    sub_1C440186C(v42);
    sub_1C4460430();
    sub_1C44BCC4C(v4, v43);
    v44 = sub_1C441E0C0();
    sub_1C44BCC4C(v44, v45);
    sub_1C447F2D0();
    while (1)
    {
      sub_1C445BDF4();
      if (v78 == v79)
      {
        break;
      }

      sub_1C442AC5C();
      sub_1C445FE98();
      v7 = v91;
      sub_1C4471BAC(v3, v91);
      sub_1C447E350();
      sub_1C444AD8C();
      v47 = sub_1C44E76F8();
      sub_1C447E7AC(v47);
      sub_1C4434254();
      v10 = v48;
      sub_1C44BCC4C(v6, v48);
      sub_1C44D0B74();
      sub_1C4409064();
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = v46;
LABEL_9:
    sub_1C4443484();
    if (v78 != v79)
    {
      sub_1C4B58FA0();
      if (v78 != v79)
      {
        goto LABEL_126;
      }

      if (v50 >= v7)
      {
        sub_1C4488474();
        goto LABEL_28;
      }

      sub_1C440E7C4();
      do
      {
        sub_1C4B58F94();
        if (!v51)
        {
          sub_1C4B58FB8();
          if (!v91)
          {
            goto LABEL_133;
          }

          v0 = v91 + v3;
          sub_1C44257A0();
          sub_1C4B59064();
          sub_1C4488B38();
          v53 = v78 != v79 || v0 >= v52;
          if (v53)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v3 != v39)
          {
            sub_1C44046F4();
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C44257A0();
          sub_1C4B5904C();
        }

        sub_1C441E6DC();
      }

      while (v78 != v79);
    }

    sub_1C4480810();
LABEL_28:
    sub_1C44B9018();
    if (v78 != v79)
    {
      if (__OFSUB__(v7, v4))
      {
        goto LABEL_125;
      }

      sub_1C4486020();
      if (v78 != v79)
      {
        break;
      }
    }

LABEL_49:
    if (v7 < v4)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458A358();
      v39 = v80;
    }

    sub_1C44952A4();
    if (v53)
    {
      sub_1C43FF010();
      sub_1C458A358();
      v39 = v81;
    }

    sub_1C4435404();
    if (!v64)
    {
      goto LABEL_134;
    }

    if (v0)
    {
      while (1)
      {
        sub_1C44146C8();
        if (v53)
        {
          break;
        }

        if (v2 == 3)
        {
          sub_1C44A1F48();
LABEL_64:
          if (v65)
          {
            goto LABEL_111;
          }

          sub_1C44EC860();
          if (v79)
          {
            goto LABEL_114;
          }

          sub_1C4455988();
          if (v79)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_119;
          }

          if (v70 + v73 >= v71)
          {
            sub_1C449DB40();
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v2 < 2)
        {
          goto LABEL_113;
        }

        sub_1C445AB14();
        v72 = v79;
LABEL_74:
        if (v72)
        {
          goto LABEL_116;
        }

        sub_1C4485BD0();
        if (v79)
        {
          goto LABEL_118;
        }

        if (v74 < v75)
        {
          goto LABEL_90;
        }

LABEL_81:
        sub_1C44A8398();
        if (v53)
        {
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
          goto LABEL_128;
        }

        sub_1C4428A18();
        if (!v77)
        {
          goto LABEL_131;
        }

        sub_1C441250C(v77);
        sub_1C453F340();
        if (v1)
        {
          goto LABEL_104;
        }

        if (v5 < v4)
        {
          goto LABEL_106;
        }

        sub_1C4B58FAC();
        if (!(v78 ^ v79 | v51))
        {
          goto LABEL_107;
        }

        *v2 = v4;
        v2[1] = v5;
        if (v78 == v79)
        {
          goto LABEL_108;
        }

        sub_1C440F01C();
        sub_1C4B58F7C();
        if (v51 || !v53)
        {
          goto LABEL_90;
        }
      }

      sub_1C447F5F4();
      if (v79)
      {
        goto LABEL_109;
      }

      sub_1C445FC20();
      if (v79)
      {
        goto LABEL_110;
      }

      sub_1C44A3ADC();
      if (v79)
      {
        goto LABEL_112;
      }

      v79 = __OFADD__(v66, v68);
      v69 = v66 + v68;
      if (v79)
      {
        goto LABEL_115;
      }

      if (v69 >= v67)
      {
        sub_1C445BB30();
        if (v79)
        {
          goto LABEL_123;
        }

        sub_1C44A14DC();
        if (v78 != v79)
        {
          v10 = v76;
        }

        goto LABEL_81;
      }

      goto LABEL_64;
    }

LABEL_90:
    sub_1C44419C4();
    if (v78 == v79)
    {
      goto LABEL_93;
    }
  }

  v56 = v4 + v55;
  if (__OFADD__(v4, v55))
  {
    goto LABEL_127;
  }

  if (v56 >= v54)
  {
    v56 = v54;
  }

  if (v56 < v4)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    sub_1C46194F4();
LABEL_95:
    sub_1C4B58F88();
    while (v3 >= 2)
    {
      sub_1C4428A18();
      if (!v83)
      {
        goto LABEL_132;
      }

      sub_1C4400E14(v83);
      sub_1C453F340();
      if (v1)
      {
        break;
      }

      if (v6 < v5)
      {
        goto LABEL_120;
      }

      sub_1C4488988();
      if (v53)
      {
        goto LABEL_121;
      }

      sub_1C4413F88();
      if (!v53)
      {
        goto LABEL_122;
      }

      sub_1C447E4A0(v84, v85);
      sub_1C4488850();
    }

LABEL_104:

    sub_1C447585C();
    sub_1C43FBC80();
    return;
  }

  if (v7 == v56)
  {
    goto LABEL_49;
  }

  sub_1C442032C();
LABEL_39:
  sub_1C44247A4();
  while (1)
  {
    v5 = v91;
    sub_1C4471BAC(v2, v91);
    sub_1C44290C4();
    sub_1C44137C4();
    v58 = sub_1C44B95C0(&qword_1EDDE2668, v57, &protocol conformance descriptor for ConstructionGraphTriple);
    sub_1C442F718(v58);
    v0 = sub_1C4455448();
    sub_1C4460430();
    sub_1C44BCC4C(v7, v59);
    v60 = sub_1C441E0C0();
    sub_1C44BCC4C(v60, v61);
    if (v10 >= v0)
    {
      v10 = v92;
LABEL_46:
      sub_1C440FC24();
      if (v51)
      {
        sub_1C445C218();
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (!v89)
    {
      break;
    }

    v0 = type metadata accessor for ConstructionGraphTriple;
    v39 = v90;
    sub_1C44856C8(v2, v90);
    sub_1C442A4C0();
    v62 = sub_1C440A9B8();
    sub_1C44856C8(v62, v63);
    sub_1C443E408();
    if (v53)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1C453E7A0()
{
  sub_1C43FE96C();
  v10 = sub_1C443FF94(v6, v7, v8, v9);
  v11 = type metadata accessor for TranslatedEntityTriple(v10);
  v12 = sub_1C444B2CC(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C442BF7C(v13, v14, v15, v16, v17, v18, v19, v20, v69);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A0E8(v22, v23, v24, v25, v26, v27, v28, v29, v70);
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  sub_1C43FE774();
  v32 = v32 && v31 == -1;
  if (v32)
  {
    goto LABEL_60;
  }

  sub_1C4B59018();
  if (v32 && v31 == -1)
  {
    goto LABEL_61;
  }

  sub_1C4416400();
  if (v34 != v35)
  {
    v36 = sub_1C4430718();
    sub_1C44E64F0(v36, v37, v38);
    sub_1C441686C();
    while (1)
    {
      sub_1C447CE50();
      v39 = v39 || v3 >= v2;
      if (v39)
      {
        break;
      }

      sub_1C44224C4();
      v40 = v3;
      v41 = v3;
      v3 = v74;
      sub_1C4471BAC(v40, v74);
      sub_1C44AE900();
      sub_1C441A560();
      v43 = sub_1C44B95C0(&unk_1EDDF3A50, v42, &protocol conformance descriptor for TranslatedEntityTriple);
      sub_1C445BFE0(v43);
      v44 = sub_1C4416B58();
      sub_1C441784C();
      sub_1C44BCC4C(v5, v45);
      v46 = sub_1C440DE0C();
      sub_1C44BCC4C(v46, v47);
      if (v2 >= v44)
      {
        sub_1C4401EE0();
        if (!v39 || v1 >= v44)
        {
          sub_1C441DE68();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C4488258();
        }

        else
        {
          sub_1C4507B84();
          v2 = v73;
          v3 = v41;
          if (!v50)
          {
            sub_1C441DE68();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_1C445CCFC();
      }

      else
      {
        sub_1C4428EE4();
        if (!v39 || v1 >= v74)
        {
          sub_1C442E570();
          swift_arrayInitWithTakeFrontToBack();
          v2 = v73;
        }

        else
        {
          v2 = v73;
          if (v1 != v41)
          {
            sub_1C442E570();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      sub_1C4482ECC();
    }
  }

  else
  {
    v51 = sub_1C4422BA0();
    sub_1C44E64F0(v51, v52, v53);
    sub_1C4440A98();
LABEL_36:
    sub_1C4418BD8(v54);
    while (1)
    {
      sub_1C4480608();
      if (v32 || !v39)
      {
        sub_1C44B9228();
        goto LABEL_58;
      }

      if (v3 <= v1)
      {
        break;
      }

      sub_1C44A1860();
      sub_1C44224C4();
      v3 = v74;
      sub_1C4471BAC(v0, v74);
      sub_1C4480414();
      sub_1C441A560();
      v56 = sub_1C44B95C0(&unk_1EDDF3A50, v55, &protocol conformance descriptor for TranslatedEntityTriple);
      v57 = sub_1C448F1DC(v56);
      sub_1C4495D68(v57);
      sub_1C443F788();
      sub_1C44BCC4C(v31, v58);
      v59 = sub_1C44089C8();
      sub_1C44BCC4C(v59, v60);
      sub_1C4B58FC4();
      if (v34 != v35)
      {
        sub_1C4B59024();
        if (!v39 || v1 >= v63)
        {
          sub_1C444C370();
          sub_1C4B58FD0();
        }

        else
        {
          sub_1C44BBCC4();
          v1 = v71;
          v0 = v72;
          v3 = v72;
          if (!v65)
          {
            sub_1C4410600();
            swift_arrayInitWithTakeBackToFront();
            sub_1C4B58FF4();
          }
        }

        goto LABEL_36;
      }

      v61 = v5 < v4 || v1 >= v4;
      v3 = v73;
      if (v61)
      {
        sub_1C441EF20();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C444FFE4();
      }

      else
      {
        sub_1C4B58FE8();
        v5 = v1;
        v4 = v0;
        v1 = v71;
        v31 = v72;
        if (!v62)
        {
          sub_1C441EF20();
          swift_arrayInitWithTakeBackToFront();
          sub_1C44237F8();
        }
      }
    }

    sub_1C44C12C4();
  }

LABEL_58:
  v66 = sub_1C448E0AC();
  sub_1C4BEB444(v66, v67, v68);
  sub_1C44587BC();
  sub_1C43FBC80();
}

void sub_1C453EA88()
{
  sub_1C43FE96C();
  v10 = sub_1C443FF94(v6, v7, v8, v9);
  v11 = type metadata accessor for EventTriple(v10);
  v12 = sub_1C444B2CC(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C442BF7C(v13, v14, v15, v16, v17, v18, v19, v20, v69);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A0E8(v22, v23, v24, v25, v26, v27, v28, v29, v70);
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  sub_1C43FE774();
  v32 = v32 && v31 == -1;
  if (v32)
  {
    goto LABEL_60;
  }

  sub_1C4B59018();
  if (v32 && v31 == -1)
  {
    goto LABEL_61;
  }

  sub_1C4416400();
  if (v34 != v35)
  {
    v36 = sub_1C4430718();
    sub_1C459C5AC(v36, v37, v38);
    sub_1C441686C();
    while (1)
    {
      sub_1C447CE50();
      v39 = v39 || v3 >= v2;
      if (v39)
      {
        break;
      }

      sub_1C443668C();
      v40 = v3;
      v41 = v3;
      v3 = v74;
      sub_1C4471BAC(v40, v74);
      sub_1C44AE900();
      sub_1C4403770();
      v43 = sub_1C44B95C0(&qword_1EDDFE2F0, v42, &protocol conformance descriptor for EventTriple);
      sub_1C445BFE0(v43);
      v44 = sub_1C4416B58();
      sub_1C4434724();
      sub_1C44BCC4C(v5, v45);
      v46 = sub_1C440DE0C();
      sub_1C44BCC4C(v46, v47);
      if (v2 >= v44)
      {
        sub_1C4401EE0();
        if (!v39 || v1 >= v44)
        {
          sub_1C441DE68();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C4488258();
        }

        else
        {
          sub_1C4507B84();
          v2 = v73;
          v3 = v41;
          if (!v50)
          {
            sub_1C441DE68();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_1C445CCFC();
      }

      else
      {
        sub_1C4428EE4();
        if (!v39 || v1 >= v74)
        {
          sub_1C442E570();
          swift_arrayInitWithTakeFrontToBack();
          v2 = v73;
        }

        else
        {
          v2 = v73;
          if (v1 != v41)
          {
            sub_1C442E570();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      sub_1C4482ECC();
    }
  }

  else
  {
    v51 = sub_1C4422BA0();
    sub_1C459C5AC(v51, v52, v53);
    sub_1C4440A98();
LABEL_36:
    sub_1C4418BD8(v54);
    while (1)
    {
      sub_1C4480608();
      if (v32 || !v39)
      {
        sub_1C44B9228();
        goto LABEL_58;
      }

      if (v3 <= v1)
      {
        break;
      }

      sub_1C44A1860();
      sub_1C443668C();
      v3 = v74;
      sub_1C4471BAC(v0, v74);
      sub_1C4480414();
      sub_1C4403770();
      v56 = sub_1C44B95C0(&qword_1EDDFE2F0, v55, &protocol conformance descriptor for EventTriple);
      v57 = sub_1C448F1DC(v56);
      sub_1C4495D68(v57);
      sub_1C4418588();
      sub_1C44BCC4C(v31, v58);
      v59 = sub_1C44089C8();
      sub_1C44BCC4C(v59, v60);
      sub_1C4B58FC4();
      if (v34 != v35)
      {
        sub_1C4B59024();
        if (!v39 || v1 >= v63)
        {
          sub_1C444C370();
          sub_1C4B58FD0();
        }

        else
        {
          sub_1C44BBCC4();
          v1 = v71;
          v0 = v72;
          v3 = v72;
          if (!v65)
          {
            sub_1C4410600();
            swift_arrayInitWithTakeBackToFront();
            sub_1C4B58FF4();
          }
        }

        goto LABEL_36;
      }

      v61 = v5 < v4 || v1 >= v4;
      v3 = v73;
      if (v61)
      {
        sub_1C441EF20();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C444FFE4();
      }

      else
      {
        sub_1C4B58FE8();
        v5 = v1;
        v4 = v0;
        v1 = v71;
        v31 = v72;
        if (!v62)
        {
          sub_1C441EF20();
          swift_arrayInitWithTakeBackToFront();
          sub_1C44237F8();
        }
      }
    }

    sub_1C44C12C4();
  }

LABEL_58:
  v66 = sub_1C448E0AC();
  sub_1C4BEB45C(v66, v67, v68);
  sub_1C44587BC();
  sub_1C43FBC80();
}

void sub_1C453ED70()
{
  sub_1C43FE96C();
  v10 = sub_1C443FF94(v6, v7, v8, v9);
  v11 = type metadata accessor for GraphTriple(v10);
  v12 = sub_1C444B2CC(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C442BF7C(v13, v14, v15, v16, v17, v18, v19, v20, v69);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A0E8(v22, v23, v24, v25, v26, v27, v28, v29, v70);
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  sub_1C43FE774();
  v32 = v32 && v31 == -1;
  if (v32)
  {
    goto LABEL_60;
  }

  sub_1C4B59018();
  if (v32 && v31 == -1)
  {
    goto LABEL_61;
  }

  sub_1C4416400();
  if (v34 != v35)
  {
    v36 = sub_1C4430718();
    sub_1C44F1A5C(v36, v37, v38);
    sub_1C441686C();
    while (1)
    {
      sub_1C447CE50();
      v39 = v39 || v3 >= v2;
      if (v39)
      {
        break;
      }

      sub_1C4433DF0();
      v40 = v3;
      v41 = v3;
      v3 = v74;
      sub_1C4471BAC(v40, v74);
      sub_1C44AE900();
      sub_1C43FDE74();
      v43 = sub_1C44B95C0(&qword_1EDDFE218, v42, &protocol conformance descriptor for GraphTriple);
      sub_1C445BFE0(v43);
      v44 = sub_1C4416B58();
      sub_1C446C068();
      sub_1C44BCC4C(v5, v45);
      v46 = sub_1C440DE0C();
      sub_1C44BCC4C(v46, v47);
      if (v2 >= v44)
      {
        sub_1C4401EE0();
        if (!v39 || v1 >= v44)
        {
          sub_1C441DE68();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C4488258();
        }

        else
        {
          sub_1C4507B84();
          v2 = v73;
          v3 = v41;
          if (!v50)
          {
            sub_1C441DE68();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_1C445CCFC();
      }

      else
      {
        sub_1C4428EE4();
        if (!v39 || v1 >= v74)
        {
          sub_1C442E570();
          swift_arrayInitWithTakeFrontToBack();
          v2 = v73;
        }

        else
        {
          v2 = v73;
          if (v1 != v41)
          {
            sub_1C442E570();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      sub_1C4482ECC();
    }
  }

  else
  {
    v51 = sub_1C4422BA0();
    sub_1C44F1A5C(v51, v52, v53);
    sub_1C4440A98();
LABEL_36:
    sub_1C4418BD8(v54);
    while (1)
    {
      sub_1C4480608();
      if (v32 || !v39)
      {
        sub_1C44B9228();
        goto LABEL_58;
      }

      if (v3 <= v1)
      {
        break;
      }

      sub_1C44A1860();
      sub_1C4433DF0();
      v3 = v74;
      sub_1C4471BAC(v0, v74);
      sub_1C4480414();
      sub_1C43FDE74();
      v56 = sub_1C44B95C0(&qword_1EDDFE218, v55, &protocol conformance descriptor for GraphTriple);
      v57 = sub_1C448F1DC(v56);
      sub_1C4495D68(v57);
      sub_1C4435CBC();
      sub_1C44BCC4C(v31, v58);
      v59 = sub_1C44089C8();
      sub_1C44BCC4C(v59, v60);
      sub_1C4B58FC4();
      if (v34 != v35)
      {
        sub_1C4B59024();
        if (!v39 || v1 >= v63)
        {
          sub_1C444C370();
          sub_1C4B58FD0();
        }

        else
        {
          sub_1C44BBCC4();
          v1 = v71;
          v0 = v72;
          v3 = v72;
          if (!v65)
          {
            sub_1C4410600();
            swift_arrayInitWithTakeBackToFront();
            sub_1C4B58FF4();
          }
        }

        goto LABEL_36;
      }

      v61 = v5 < v4 || v1 >= v4;
      v3 = v73;
      if (v61)
      {
        sub_1C441EF20();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C444FFE4();
      }

      else
      {
        sub_1C4B58FE8();
        v5 = v1;
        v4 = v0;
        v1 = v71;
        v31 = v72;
        if (!v62)
        {
          sub_1C441EF20();
          swift_arrayInitWithTakeBackToFront();
          sub_1C44237F8();
        }
      }
    }

    sub_1C44C12C4();
  }

LABEL_58:
  v66 = sub_1C448E0AC();
  sub_1C4BEB474(v66, v67, v68);
  sub_1C44587BC();
  sub_1C43FBC80();
}

void sub_1C453F058()
{
  sub_1C43FE96C();
  v10 = sub_1C443FF94(v6, v7, v8, v9);
  v11 = type metadata accessor for ConstructionEventTriple(v10);
  v12 = sub_1C444B2CC(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C442BF7C(v13, v14, v15, v16, v17, v18, v19, v20, v69);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A0E8(v22, v23, v24, v25, v26, v27, v28, v29, v70);
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  sub_1C43FE774();
  v32 = v32 && v31 == -1;
  if (v32)
  {
    goto LABEL_60;
  }

  sub_1C4B59018();
  if (v32 && v31 == -1)
  {
    goto LABEL_61;
  }

  sub_1C4416400();
  if (v34 != v35)
  {
    v36 = sub_1C4430718();
    sub_1C459CA34(v36, v37, v38);
    sub_1C441686C();
    while (1)
    {
      sub_1C447CE50();
      v39 = v39 || v3 >= v2;
      if (v39)
      {
        break;
      }

      sub_1C444121C();
      v40 = v3;
      v41 = v3;
      v3 = v74;
      sub_1C4471BAC(v40, v74);
      sub_1C44AE900();
      sub_1C4432A24();
      v43 = sub_1C44B95C0(&unk_1EDDE2780, v42, &protocol conformance descriptor for ConstructionEventTriple);
      sub_1C445BFE0(v43);
      v44 = sub_1C4416B58();
      sub_1C446929C();
      sub_1C44BCC4C(v5, v45);
      v46 = sub_1C440DE0C();
      sub_1C44BCC4C(v46, v47);
      if (v2 >= v44)
      {
        sub_1C4401EE0();
        if (!v39 || v1 >= v44)
        {
          sub_1C441DE68();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C4488258();
        }

        else
        {
          sub_1C4507B84();
          v2 = v73;
          v3 = v41;
          if (!v50)
          {
            sub_1C441DE68();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_1C445CCFC();
      }

      else
      {
        sub_1C4428EE4();
        if (!v39 || v1 >= v74)
        {
          sub_1C442E570();
          swift_arrayInitWithTakeFrontToBack();
          v2 = v73;
        }

        else
        {
          v2 = v73;
          if (v1 != v41)
          {
            sub_1C442E570();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      sub_1C4482ECC();
    }
  }

  else
  {
    v51 = sub_1C4422BA0();
    sub_1C459CA34(v51, v52, v53);
    sub_1C4440A98();
LABEL_36:
    sub_1C4418BD8(v54);
    while (1)
    {
      sub_1C4480608();
      if (v32 || !v39)
      {
        sub_1C44B9228();
        goto LABEL_58;
      }

      if (v3 <= v1)
      {
        break;
      }

      sub_1C44A1860();
      sub_1C444121C();
      v3 = v74;
      sub_1C4471BAC(v0, v74);
      sub_1C4480414();
      sub_1C4432A24();
      v56 = sub_1C44B95C0(&unk_1EDDE2780, v55, &protocol conformance descriptor for ConstructionEventTriple);
      v57 = sub_1C448F1DC(v56);
      sub_1C4495D68(v57);
      sub_1C441B030();
      sub_1C44BCC4C(v31, v58);
      v59 = sub_1C44089C8();
      sub_1C44BCC4C(v59, v60);
      sub_1C4B58FC4();
      if (v34 != v35)
      {
        sub_1C4B59024();
        if (!v39 || v1 >= v63)
        {
          sub_1C444C370();
          sub_1C4B58FD0();
        }

        else
        {
          sub_1C44BBCC4();
          v1 = v71;
          v0 = v72;
          v3 = v72;
          if (!v65)
          {
            sub_1C4410600();
            swift_arrayInitWithTakeBackToFront();
            sub_1C4B58FF4();
          }
        }

        goto LABEL_36;
      }

      v61 = v5 < v4 || v1 >= v4;
      v3 = v73;
      if (v61)
      {
        sub_1C441EF20();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C444FFE4();
      }

      else
      {
        sub_1C4B58FE8();
        v5 = v1;
        v4 = v0;
        v1 = v71;
        v31 = v72;
        if (!v62)
        {
          sub_1C441EF20();
          swift_arrayInitWithTakeBackToFront();
          sub_1C44237F8();
        }
      }
    }

    sub_1C44C12C4();
  }

LABEL_58:
  v66 = sub_1C448E0AC();
  sub_1C4BEB48C(v66, v67, v68);
  sub_1C44587BC();
  sub_1C43FBC80();
}

void sub_1C453F340()
{
  sub_1C43FE96C();
  v10 = sub_1C443FF94(v6, v7, v8, v9);
  v11 = type metadata accessor for ConstructionGraphTriple(v10);
  v12 = sub_1C444B2CC(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C442BF7C(v13, v14, v15, v16, v17, v18, v19, v20, v69);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A0E8(v22, v23, v24, v25, v26, v27, v28, v29, v70);
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  sub_1C43FE774();
  v32 = v32 && v31 == -1;
  if (v32)
  {
    goto LABEL_60;
  }

  sub_1C4B59018();
  if (v32 && v31 == -1)
  {
    goto LABEL_61;
  }

  sub_1C4416400();
  if (v34 != v35)
  {
    v36 = sub_1C4430718();
    sub_1C44EE930(v36, v37, v38);
    sub_1C441686C();
    while (1)
    {
      sub_1C447CE50();
      v39 = v39 || v3 >= v2;
      if (v39)
      {
        break;
      }

      sub_1C445FE98();
      v40 = v3;
      v41 = v3;
      v3 = v74;
      sub_1C4471BAC(v40, v74);
      sub_1C44AE900();
      sub_1C44137C4();
      v43 = sub_1C44B95C0(&qword_1EDDE2668, v42, &protocol conformance descriptor for ConstructionGraphTriple);
      sub_1C445BFE0(v43);
      v44 = sub_1C4416B58();
      sub_1C4460430();
      sub_1C44BCC4C(v5, v45);
      v46 = sub_1C440DE0C();
      sub_1C44BCC4C(v46, v47);
      if (v2 >= v44)
      {
        sub_1C4401EE0();
        if (!v39 || v1 >= v44)
        {
          sub_1C441DE68();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C4488258();
        }

        else
        {
          sub_1C4507B84();
          v2 = v73;
          v3 = v41;
          if (!v50)
          {
            sub_1C441DE68();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_1C445CCFC();
      }

      else
      {
        sub_1C4428EE4();
        if (!v39 || v1 >= v74)
        {
          sub_1C442E570();
          swift_arrayInitWithTakeFrontToBack();
          v2 = v73;
        }

        else
        {
          v2 = v73;
          if (v1 != v41)
          {
            sub_1C442E570();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      sub_1C4482ECC();
    }
  }

  else
  {
    v51 = sub_1C4422BA0();
    sub_1C44EE930(v51, v52, v53);
    sub_1C4440A98();
LABEL_36:
    sub_1C4418BD8(v54);
    while (1)
    {
      sub_1C4480608();
      if (v32 || !v39)
      {
        sub_1C44B9228();
        goto LABEL_58;
      }

      if (v3 <= v1)
      {
        break;
      }

      sub_1C44A1860();
      sub_1C445FE98();
      v3 = v74;
      sub_1C4471BAC(v0, v74);
      sub_1C4480414();
      sub_1C44137C4();
      v56 = sub_1C44B95C0(&qword_1EDDE2668, v55, &protocol conformance descriptor for ConstructionGraphTriple);
      v57 = sub_1C448F1DC(v56);
      sub_1C4495D68(v57);
      sub_1C4434254();
      sub_1C44BCC4C(v31, v58);
      v59 = sub_1C44089C8();
      sub_1C44BCC4C(v59, v60);
      sub_1C4B58FC4();
      if (v34 != v35)
      {
        sub_1C4B59024();
        if (!v39 || v1 >= v63)
        {
          sub_1C444C370();
          sub_1C4B58FD0();
        }

        else
        {
          sub_1C44BBCC4();
          v1 = v71;
          v0 = v72;
          v3 = v72;
          if (!v65)
          {
            sub_1C4410600();
            swift_arrayInitWithTakeBackToFront();
            sub_1C4B58FF4();
          }
        }

        goto LABEL_36;
      }

      v61 = v5 < v4 || v1 >= v4;
      v3 = v73;
      if (v61)
      {
        sub_1C441EF20();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C444FFE4();
      }

      else
      {
        sub_1C4B58FE8();
        v5 = v1;
        v4 = v0;
        v1 = v71;
        v31 = v72;
        if (!v62)
        {
          sub_1C441EF20();
          swift_arrayInitWithTakeBackToFront();
          sub_1C44237F8();
        }
      }
    }

    sub_1C44C12C4();
  }

LABEL_58:
  v66 = sub_1C448E0AC();
  sub_1C4BEB4A4(v66, v67, v68);
  sub_1C44587BC();
  sub_1C43FBC80();
}

uint64_t sub_1C453F628(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v15 + 84) != a2)
      {
        v17 = *(v3 + a3[7]);
        if (v17 >= 4)
        {
          return v17 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = v14;
      v13 = a3[6];
    }

    v10 = v3 + v13;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C453F74C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v17 + 84) != a3)
      {
        *(v4 + a4[7]) = a2 + 3;
        return;
      }

      v11 = v16;
      v15 = a4[6];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453F870(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for Source(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_15:

    return sub_1C44157D4(v10, a2, v9);
  }

  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_14:
    v10 = v3 + v13;
    goto LABEL_15;
  }

  if (a2 != 2147483645)
  {
    v9 = type metadata accessor for PhaseStores(0);
    v13 = a3[9];
    goto LABEL_14;
  }

  v14 = *(v3 + a3[8]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  v16 = v15 <= 0;
  if (v15 < 0)
  {
    v15 = -1;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

void sub_1C453F988(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for Source(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 2147483645)
      {
        *(v4 + a4[8]) = (a2 + 1);
        return;
      }

      v11 = type metadata accessor for PhaseStores(0);
      v15 = a4[9];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return sub_1C44157D4(v10, a2, v9);
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(v3 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1C453FBB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453FC9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C4EFD548();
    v9 = a1 + *(a3 + 24);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C453FD24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EFD548();
    v8 = v5 + *(a4 + 24);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C453FDDC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1C43FCE3C(*(a1 + 8));
  }

  sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  v5 = sub_1C4412B9C(*(a3 + 24));

  return sub_1C44157D4(v5, v6, v7);
}

void sub_1C453FE60()
{
  sub_1C4432A70();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
    v5 = sub_1C4412B9C(*(v4 + 24));

    sub_1C440BAA8(v5, v6, v0, v7);
  }
}

uint64_t sub_1C453FF54(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1C43FCE3C(*(a1 + 24));
  }

  sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  v5 = sub_1C4412B9C(*(a3 + 32));

  return sub_1C44157D4(v5, v6, v7);
}

void sub_1C453FFD8()
{
  sub_1C4432A70();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
    v5 = sub_1C4412B9C(*(v4 + 32));

    sub_1C440BAA8(v5, v6, v0, v7);
  }
}

uint64_t sub_1C45400B8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_7:

    return sub_1C44157D4(a1 + v9, a2, v8);
  }

  sub_1C4EFEEF8();
  sub_1C43FCF8C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_7;
  }

  sub_1C4EFF8A8();
  sub_1C43FCF8C();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[7];
    goto LABEL_7;
  }

  v15 = *(a1 + a3[9] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_1C45401E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_1C4EFEEF8();
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      sub_1C4EFF8A8();
      sub_1C43FCF8C();
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[7];
    }
  }

  sub_1C440BAA8(a1 + v11, a2, a2, v10);
}

uint64_t sub_1C45403E0()
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v7 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1C45404A4()
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v7 + 8))(v0 + v4);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C45405C0()
{
  v1 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v6 + v7;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 2, v4 | 7);
}

uint64_t sub_1C4540678(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C456902C(&qword_1EC0C0D08, &unk_1C4F55BC0);
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C454070C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0C0D08, &unk_1C4F55BC0);
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4540B78()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C4540C28(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_7:

    return sub_1C44157D4(a1 + v9, a2, v8);
  }

  sub_1C4EFEEF8();
  sub_1C43FCF8C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_7;
  }

  sub_1C4EFF8A8();
  sub_1C43FCF8C();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[7];
    goto LABEL_7;
  }

  v15 = *(a1 + a3[9] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_1C4540D58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_1C4EFEEF8();
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      sub_1C4EFF8A8();
      sub_1C43FCF8C();
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[7];
    }
  }

  sub_1C440BAA8(a1 + v11, a2, a2, v10);
}

uint64_t sub_1C4540FB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v14 = *(v3 + a3[6]);
        if (v14 >= 4)
        {
          return v14 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C4EFD548();
      v13 = a3[9];
    }

    v10 = v3 + v13;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C45410B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[6]) = a2 + 3;
        return;
      }

      v11 = sub_1C4EFD548();
      v15 = a4[9];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4541258@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.viewGenerationGraphUpdateBatchSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C454129C@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.viewGenerationSubjectIdBatchSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C45412E0@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.viewGenerationMaxAttempts.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4541324@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.viewGenerationMaxRemoteDevices.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4541368@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.sqlite3ReducedCacheSpillSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C45413AC@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.sqlite3MediumCacheSpillSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4541698@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.maxSubjectIdSetSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C45417EC@<X0>(_BYTE *a1@<X8>)
{
  result = static NSUserDefaults.isESDataCollectionDaily.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4541984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C4541A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = a2;
  }

  return result;
}

uint64_t sub_1C4541B04()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4541C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C4EFC318();

  return sub_1C44157D4(a1 + v5, a2, v6);
}

uint64_t sub_1C4541C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C4EFC318();

  return sub_1C440BAA8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C4541F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s10ViewConfigVMa(0);
    v9 = a1 + *(a3 + 68);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C4541FD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = _s10ViewConfigVMa(0);
    v8 = v5 + *(a4 + 68);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C454224C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C4EFBE38();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C45422D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EFBE38();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4542418()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4542464(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C4EF98F8();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C45424EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EF98F8();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4542594()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C45425D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4542634(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C4EF98F8();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C45426BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EF98F8();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4542748()
{

  sub_1C440962C((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C4542888()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C45428D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4542910()
{

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4542954()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C45429B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4EF98F8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
    v9 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v9, a2, v8);
}

uint64_t sub_1C4542A58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C4EF98F8();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    v10 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
    v11 = a1 + *(a4 + 20);
  }

  return sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C4542B04(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1C4EF98F8();
    sub_1C43FCF8C();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
      v11 = *(a3 + 24);
    }

    return sub_1C44157D4(a1 + v11, a2, v10);
  }
}

void *sub_1C4542BD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C4EF98F8();
    sub_1C43FCF8C();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
      v11 = *(a4 + 24);
    }

    return sub_1C440BAA8(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C4542CFC()
{

  sub_1C440962C((v0 + 40));
  sub_1C440962C((v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C4542D50()
{

  sub_1C440962C((v0 + 40));
  sub_1C440962C((v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C4542DDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4542E1C()
{

  sub_1C440962C((v0 + 40));
  sub_1C440962C((v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C4542E74()
{
  v1 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  sub_1C43FCDF8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C4542F60()
{
  v1 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  sub_1C43FCDF8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 104) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C4543054()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C454309C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C45430E4()
{
  v1 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  sub_1C43FCDF8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1C45431DC()
{
  v1 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1C45432D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4543340()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C45433B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  a2[3] = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  *a2 = v4;

  return v4;
}

uint64_t sub_1C4543414()
{

  sub_1C4418B14();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4543450()
{

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4543484()
{

  return MEMORY[0x1EEE6BDD0](v0, 36, 7);
}

uint64_t sub_1C45434BC()
{

  sub_1C4418B14();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C45434F0()
{

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4543524()
{

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4543568()
{
  sub_1C440962C((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C45435E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFF0C8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
    v8 = v3 + *(a3 + 20);
  }

  return sub_1C44157D4(v8, a2, v7);
}

uint64_t sub_1C4543684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  v8 = sub_1C4EFF0C8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
    v10 = v4 + *(a4 + 20);
  }

  return sub_1C440BAA8(v10, a2, a2, v9);
}

uint64_t sub_1C4543730()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C45437E8()
{
  sub_1C440962C((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4543820()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C4543888()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C45438E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v85[0] = v20;
  v98 = v21;
  v22 = sub_1C4EFFA28();
  sub_1C43FCDF8();
  v97 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v88 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  v89 = v27;
  v28 = sub_1C456902C(&qword_1EC0C4F78, &unk_1C4F5E420);
  MEMORY[0x1EEE9AC00](v28 - 8);
  sub_1C43FBFDC();
  v90 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  v93 = v31;
  v32 = sub_1C456902C(&qword_1EC0C4F80, &qword_1C4F5E5B0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  v87 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v91 = v85 - v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  v92 = v38;
  v86 = sub_1C456902C(&qword_1EC0C4DD0, &qword_1C4F5E308);
  AssociatedConformanceWitness = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v40 = v85 - v39;
  v99 = sub_1C456902C(&qword_1EC0C4F88, &qword_1C4F5E430);
  sub_1C43FCDF8();
  v85[1] = v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v85 - v43;
  v45 = sub_1C4572308(&qword_1EC0C0CE0, &unk_1C4F40610);
  v46 = sub_1C4401CBC(&qword_1EDDEFF80, &qword_1EC0C0CE0, &unk_1C4F40610, MEMORY[0x1E69A99D8]);
  v100 = v45;
  v101 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v98;
  v48 = sub_1C4F01488();
  v100 = MEMORY[0x1E69E7CC0];
  sub_1C459F038();
  v49 = v100;
  (*(AssociatedConformanceWitness + 16))(v40, v47, v86);
  v98 = v44;
  sub_1C4F01478();
  if (v48 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v95 = v32;
  if (v48)
  {
    v94 = v49;
    v50 = (v97 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v51 = &qword_1EC0C4F80;
    v52 = v90;
    while (1)
    {
      sub_1C4F01FA8();
      if (sub_1C44157D4(v52, 1, v32) == 1)
      {
        goto LABEL_22;
      }

      v53 = v87;
      sub_1C4460050(v52, v87, v51, &qword_1C4F5E5B0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v55 = v88;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        swift_willThrowTypedImpl();
        v67 = sub_1C440926C();
        v68(v67);

        sub_1C4420C3C(v52, &qword_1EC0C4F80, &qword_1C4F5E5B0);
        goto LABEL_20;
      }

      v56 = v51;
      v57 = *v50;
      v58 = v53;
      v59 = v22;
      (*v50)(v88, v58, v22);
      v60 = v56;
      sub_1C4420C3C(v52, v56, &qword_1C4F5E5B0);
      v61 = v94;
      v100 = v94;
      v63 = *(v94 + 16);
      v62 = *(v94 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1C43FCFE8(v62);
        sub_1C459F038();
        v55 = v88;
        v61 = v100;
      }

      *(v61 + 16) = v63 + 1;
      sub_1C4426168();
      v94 = v64;
      v57(v64 + v65 + *(v66 + 72) * v63, v55, v59);
      --v48;
      v22 = v59;
      v32 = v95;
      v51 = v60;
      v52 = v90;
      if (!v48)
      {
        v70 = v92;
        v69 = v93;
        v49 = v94;
        goto LABEL_12;
      }
    }
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = v92;
  v69 = v93;
LABEL_12:
  v71 = (v97 + 32);
  while (1)
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v69, 1, v32) == 1)
    {
      v81 = sub_1C440926C();
      v82(v81);
      sub_1C4420C3C(v69, &qword_1EC0C4F78, &unk_1C4F5E420);
      goto LABEL_20;
    }

    sub_1C44CD9E0(v69, v70, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v72 = v91;
    sub_1C4460050(v70, v91, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v73 = *v71;
    v74 = v72;
    v75 = v89;
    (*v71)(v89, v74, v22);
    sub_1C4420C3C(v70, &qword_1EC0C4F80, &qword_1C4F5E5B0);
    v100 = v49;
    v76 = v22;
    v78 = *(v49 + 16);
    v77 = *(v49 + 24);
    if (v78 >= v77 >> 1)
    {
      sub_1C43FCFE8(v77);
      sub_1C459F038();
      v75 = v89;
      v49 = v100;
    }

    *(v49 + 16) = v78 + 1;
    sub_1C4426168();
    v73(v49 + v79 + *(v80 + 72) * v78, v75, v76);
    v22 = v76;
    v70 = v92;
    v69 = v93;
    v32 = v95;
  }

  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C4420C3C(v70, &qword_1EC0C4F80, &qword_1C4F5E5B0);
  v83 = sub_1C440926C();
  v84(v83);

LABEL_20:
  sub_1C43FBC80();
}

uint64_t sub_1C454403C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4544078()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C45440B0(uint64_t a1)
{
  v42 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v40 = v33 - v5;
  v39 = sub_1C4F00258();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v37 = v10 - v9;
  sub_1C456902C(&qword_1EC0C4F18, &qword_1C4F5E3C0);
  sub_1C4F02538();
  v11 = 0;
  v43 = a1;
  v12 = a1 + 64;
  sub_1C43FD030();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v34 = v18 + 64;
  v35 = v7 + 16;
  v38 = v7;
  v41 = v3;
  v33[2] = v3 + 32;
  v33[3] = v7 + 32;
  v36 = v18;
  if (v15)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_8:
      v22 = v19 | (v11 << 6);
      v23 = *(v43 + 48);
      v24 = v37;
      v25 = v38;
      v45 = *(v38 + 72) * v22;
      v26 = v39;
      (*(v38 + 16))(v37, v23 + v45, v39);
      v27 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v28 = v40;
      sub_1C4EF93F8();
      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v29 = v36;
      (*(v25 + 32))(*(v36 + 48) + v45, v24, v26);
      (*(v41 + 32))(*(v29 + 56) + *(v41 + 72) * v22, v28, v42);
      v30 = *(v29 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v29 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v17)
      {
        return;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C45444AC()
{

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C45444E0()
{
  v1 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C45445B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0C4FF8, &qword_1C4F5E680);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1C4EF98F8();
    v8 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v8, a2, v7);
}

uint64_t sub_1C4544658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C456902C(&qword_1EC0C4FF8, &qword_1C4F5E680);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1C4EF98F8();
    v10 = a1 + *(a4 + 20);
  }

  return sub_1C440BAA8(v10, a2, a2, v9);
}

uint64_t sub_1C4544708(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = _s15ConfigReferenceOMa(0);
    v9 = a1 + *(a3 + 24);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C4544790(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s15ConfigReferenceOMa(0);
    v8 = v5 + *(a4 + 24);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4544818()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C4544878(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C4EF98F8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return sub_1C44157D4(a1 + v9, a2, v8);
  }

  sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FCF8C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1C4544970(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C4EF98F8();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
    sub_1C43FCF8C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  sub_1C440BAA8(a1 + v11, a2, a2, v10);
}

uint64_t sub_1C4544A98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4544B2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4544BA8()
{
  swift_unknownObjectRelease();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4544BDC()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4544C10()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4544C50()
{
  swift_weakDestroy();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4544C84()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C4544CF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C4544D50()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4544D98()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4544E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C4544E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(a1, a2, a2, v4);
}

uint64_t sub_1C4544EF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4544F38()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C4544F98()
{
  swift_unknownObjectRelease();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4544FCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C4545024()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C454506C()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C45450A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C45450E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4545120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v7 + 84) != a2)
  {
    return sub_1C440800C(*(a3 + 24));
  }

  return sub_1C44157D4(v3, a2, v6);
}

void sub_1C45451B4()
{
  sub_1C440122C();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1C440AB04();

    sub_1C440BAA8(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_1C4545238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v7 + 84) != a2)
  {
    return sub_1C440800C(*(a3 + 20));
  }

  return sub_1C44157D4(v3, a2, v6);
}

void sub_1C45452CC()
{
  sub_1C440122C();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1C440AB04();

    sub_1C440BAA8(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1C454561C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4545664()
{

  sub_1C440962C((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C45456B4()
{

  if (*(v0 + 96))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C4545730()
{

  if (*(v0 + 96))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C45457AC()
{

  if (*(v0 + 120))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1C4545830()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C45459F0()
{

  v0 = sub_1C4406518();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4545A20()
{

  v0 = sub_1C4406518();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4545B4C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6F6974617265706FLL;
  }
}

uint64_t sub_1C4545C2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C4C939C8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C4545C60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4C93AC4();
  *a1 = result;
  return result;
}

uint64_t sub_1C4545D18(char a1)
{
  if (a1)
  {
    return 7565423;
  }

  else
  {
    return 0x727453656D6F6962;
  }
}

uint64_t sub_1C4545F70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C4C9942C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C4545FA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4C9A164();
  *a1 = result;
  return result;
}

uint64_t sub_1C4545FF8(char a1)
{
  if (a1)
  {
    return 0x65766C6F736572;
  }

  else
  {
    return 0x74636172747865;
  }
}

uint64_t sub_1C4546080()
{

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1C45460B8()
{

  sub_1C44180FC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C45460F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1C4546134()
{

  sub_1C44180FC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4546178()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C454710C()
{

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1C4547144()
{

  sub_1C44180FC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4547180()
{

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1C45471C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C4547208()
{

  sub_1C44180FC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4547384()
{

  v0 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C45473E0()
{
  v1 = _s10ViewConfigVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 136) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  if (*(v0 + 56))
  {
    sub_1C4CD7B5C((v0 + 32));
  }

  v5 = v0 + v3;

  if (*(v0 + v3 + 48))
  {
  }

  v6 = *(v5 + 112);
  if (v6 <= 0xFD)
  {
    sub_1C4C10CF8(*(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), v6);
  }

  if (*(v5 + 176))
  {
  }

  if (*(v5 + 208))
  {
  }

  v7 = (v5 + v1[18]);
  v8 = _s6ConfigVMa(0);
  if (!sub_1C44157D4(v7, 1, v8))
  {

    if (v7[4])
    {
    }

    if (v7[9])
    {
    }

    if (v7[22])
    {
    }

    if (v7[29])
    {
    }

    v9 = v7 + v8[11];
    v10 = type metadata accessor for VectorDB.Config(0);
    if (!sub_1C44157D4(v9, 1, v10))
    {
      v19 = v4;

      if (*(v9 + 56))
      {
      }

      v11 = v9 + *(v10 + 40);
      v12 = type metadata accessor for VectorDB.EmbeddingConfig(0);
      if (!sub_1C44157D4(v11, 1, v12))
      {
        v13 = *(v12 + 20);
        sub_1C4EFC318();
        sub_1C43FBCE0();
        (*(v14 + 8))(v11 + v13);
      }

      v4 = v19;
      v3 = (v2 + 136) & ~v2;
    }

    if (*(v7 + v8[13] + 8))
    {
    }

    if (*(v7 + v8[15] + 8))
    {
    }

    v15 = v7 + v8[16];
    if (*(v15 + 1))
    {

      if (*(v15 + 9))
      {
      }
    }

    if (*(v7 + v8[18] + 8))
    {
    }
  }

  if (*(v5 + v1[19] + 8))
  {
  }

  v16 = v1[20];
  v17 = sub_1C4F001E8();
  if (!sub_1C44157D4(v5 + v16, 1, v17))
  {
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  if (*(v5 + v1[25] + 8))
  {
  }

  if (*(v5 + v1[28]))
  {
  }

  if (*(v5 + v1[31] + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_1C454799C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4547A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C4EF9D38();

  return sub_1C44157D4(a1 + v5, a2, v6);
}

uint64_t sub_1C4547A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C4EF9D38();

  return sub_1C440BAA8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C4547AC8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4547B00()
{
  v1 = (_s12JobSchedulerC13JobIdentifierVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v1[7];
  sub_1C4EF9D38();
  sub_1C43FBCE0();
  (*(v6 + 8))(v5 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C4547BE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4547C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C4547CD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4547DA8()
{
  swift_weakDestroy();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4547DDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C454813C()
{

  sub_1C4406298();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4548170()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 != 15)
  {
    sub_1C4434000(*(v0 + 56), v1);
  }

  sub_1C4406298();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C45481B4()
{

  v1 = *(v0 + 80);
  if (v1 >> 60 != 15)
  {
    sub_1C4434000(*(v0 + 72), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C4548204()
{

  v1 = *(v0 + 80);
  if (v1 >> 60 != 15)
  {
    sub_1C4434000(*(v0 + 72), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C45488D0()
{

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4548914()
{

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4548A74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    updated = _s17ViewUpdateRequestVMa(0);
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, updated);
  }
}

uint64_t sub_1C4548AFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    updated = _s17ViewUpdateRequestVMa(0);
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, updated);
  }

  return result;
}

uint64_t sub_1C4548C70()
{
  sub_1C440DD3C();
  if (v1 == v2)
  {
    return sub_1C4475524();
  }

  v4 = v0;
  sub_1C4EF9CD8();
  v5 = sub_1C4412B9C(*(v4 + 20));

  return sub_1C44157D4(v5, v6, v7);
}

void sub_1C4548CE0(uint64_t a1, uint64_t a2)
{
  sub_1C440DD3C();
  if (v5 == v6)
  {
    *(v2 + 16) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1C4EF9CD8();
    v8 = sub_1C4412B9C(*(v7 + 20));

    sub_1C440BAA8(v8, v9, a2, v10);
  }
}

uint64_t sub_1C4548D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4548D90()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4548E50()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4548E8C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4549058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EFCE48();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C4549104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EFCE48();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C45491AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C454923C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4549274()
{
  v1 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v3 = v2;
  v7 = *(v2 + 80);
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  sub_1C4413D10();
  v6 = v4;

  (*(v3 + 8))(v0 + ((v7 + 40) & ~v7), v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v7 | 7);
}

uint64_t sub_1C454969C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C454970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return sub_1C43FCE3C(*(a1 + *(a3 + 28) + 8));
    }

    v7 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
    v8 = a1 + *(a3 + 36);
  }

  return sub_1C44157D4(v8, a2, v7);
}

uint64_t sub_1C45497E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
    v10 = a1 + *(a4 + 36);
  }

  return sub_1C440BAA8(v10, a2, a2, v9);
}

uint64_t sub_1C45498BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1C43FCE3C(*(a1 + 24));
  }

  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v8 = a1 + *(a3 + 28);

  return sub_1C44157D4(v8, a2, v7);
}

uint64_t sub_1C4549944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
    v8 = v5 + *(a4 + 28);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4549C48(uint64_t a1)
{
  result = sub_1C4D42B30(&qword_1EDDDDBE8, type metadata accessor for WalletClassicOrderSourceIngestor, &unk_1C4F6F688);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4549CA0(uint64_t a1)
{
  result = sub_1C4D42B30(&qword_1EDDDC7A0, type metadata accessor for WalletClassicOrderDeltaSourceIngestor, &unk_1C4F6F704);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4549E68(uint64_t a1)
{
  result = sub_1C4D4E828(&qword_1EDDDEDB0, type metadata accessor for WalletEmailOrderSourceIngestor, &unk_1C4F6F914);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4549EC0(uint64_t a1)
{
  result = sub_1C4D4E828(&qword_1EDDDCE80, type metadata accessor for WalletEmailOrderDeltaSourceIngestor, &unk_1C4F6F990);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4549F34()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4549F78()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C454A378(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v14 = *(v3 + a3[6]);
        if (v14 >= 4)
        {
          return v14 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C4EFD548();
      v13 = a3[8];
    }

    v10 = v3 + v13;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C454A478(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[6]) = a2 + 3;
        return;
      }

      v11 = sub_1C4EFD548();
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C454A648(uint64_t a1)
{
  result = sub_1C4D5D218(&qword_1EDDDDB30, type metadata accessor for WalletTrackedOrderSourceIngestor, &unk_1C4F6FD48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C454A6A0(uint64_t a1)
{
  result = sub_1C4D5D218(&qword_1EDDDC6E8, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor, &unk_1C4F6FDC4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C454A7B8(uint64_t a1)
{
  result = sub_1C4D5F5CC(&qword_1EDDDCA88, type metadata accessor for WalletTransactionOrderSourceIngestor, &unk_1C4F6FF7C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C454A810(uint64_t a1)
{
  result = sub_1C4D5F5CC(&qword_1EDDDC360, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor, &unk_1C4F6FFF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C454A868()
{

  v0 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C454A898()
{
  v1 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C454A9C8()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v11 + 84) == v0)
          {
            v5 = v10;
            v7 = v2[8];
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(v2[9]);
            }

            sub_1C456902C(&qword_1EC0BA698, &qword_1C4F145D8);
            sub_1C43FCF8C();
            if (*(v14 + 84) == v0)
            {
              v5 = v13;
              v7 = v2[10];
            }

            else
            {
              v5 = sub_1C456902C(&qword_1EC0BA6A0, &qword_1C4F145E0);
              v7 = v2[11];
            }
          }
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454ABD0()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v6 + 84) != v1)
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(*(v0 + 36));
              return;
            }

            sub_1C456902C(&qword_1EC0BA698, &qword_1C4F145D8);
            sub_1C43FCF8C();
            if (*(v11 + 84) != v1)
            {
              sub_1C456902C(&qword_1EC0BA6A0, &qword_1C4F145E0);
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454ADE0()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v11 + 84) == v0)
          {
            v5 = v10;
            v7 = v2[8];
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(v2[9]);
            }

            sub_1C456902C(&qword_1EC0BA6B0, &unk_1C4F145F0);
            sub_1C43FCF8C();
            if (*(v14 + 84) == v0)
            {
              v5 = v13;
              v7 = v2[20];
            }

            else
            {
              v5 = sub_1C456902C(&qword_1EC0BA6B8, &unk_1C4F70150);
              v7 = v2[21];
            }
          }
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454AFE8()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v6 + 84) != v1)
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(*(v0 + 36));
              return;
            }

            sub_1C456902C(&qword_1EC0BA6B0, &unk_1C4F145F0);
            sub_1C43FCF8C();
            if (*(v11 + 84) != v1)
            {
              sub_1C456902C(&qword_1EC0BA6B8, &unk_1C4F70150);
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454B1F0()
{
  sub_1C440CE48();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v2 + 84) == v0)
  {
    v3 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v5 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v7 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        sub_1C456902C(&qword_1EC0BA6A8, &qword_1C4F145E8);
        sub_1C4416C14();
      }
    }

    v3 = v1 + v6;
  }

  return sub_1C44157D4(v3, v0, v4);
}

uint64_t sub_1C454B308()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v1 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v2 + 84) == v0)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v3 + 84) == v0)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C456902C(&qword_1EC0BA6A8, &qword_1C4F145E8);
        sub_1C441D7B0();
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C454B7CC()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v11 + 84) != v0)
          {
            return sub_1C43FE264(*(v2 + 36));
          }

          v5 = v10;
          v7 = *(v2 + 32);
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454B95C()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v6 + 84) != v1)
          {
            sub_1C441864C(*(v0 + 36));
            return;
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454BAEC()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v11 + 84) == v0)
          {
            v5 = v10;
            v7 = v2[8];
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(v2[9]);
            }

            sub_1C456902C(&qword_1EC0BAD38, &unk_1C4F70B40);
            sub_1C43FCF8C();
            if (*(v14 + 84) == v0)
            {
              v5 = v13;
              v7 = v2[59];
            }

            else
            {
              v5 = sub_1C456902C(&qword_1EC0C6C38, &qword_1C4F70B38);
              v7 = v2[60];
            }
          }
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454BCF4()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v6 + 84) != v1)
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(*(v0 + 36));
              return;
            }

            sub_1C456902C(&qword_1EC0BAD38, &unk_1C4F70B40);
            sub_1C43FCF8C();
            if (*(v11 + 84) != v1)
            {
              sub_1C456902C(&qword_1EC0C6C38, &qword_1C4F70B38);
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454C348()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v10 + 84) == v0)
        {
          v5 = v9;
          v7 = v2[7];
        }

        else
        {
          sub_1C456902C(&qword_1EC0BD1B8, &unk_1C4F2D460);
          sub_1C43FCF8C();
          if (*(v12 + 84) == v0)
          {
            v5 = v11;
            v7 = v2[8];
          }

          else
          {
            v5 = sub_1C456902C(&qword_1EC0BD1B0, &unk_1C4F72950);
            v7 = v2[9];
          }
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

uint64_t sub_1C454C4F0()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v1 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v2 + 84) == v0)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v3 + 84) == v0)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v4 + 84) != v0)
        {
          sub_1C456902C(&qword_1EC0BD1B8, &unk_1C4F2D460);
          sub_1C43FCF8C();
          if (*(v5 + 84) != v0)
          {
            sub_1C456902C(&qword_1EC0BD1B0, &unk_1C4F72950);
          }
        }
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v6, v7, v8, v9);
}

uint64_t sub_1C454C698()
{
  sub_1C440CE48();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v8 + 84) != v0)
      {
        return sub_1C4405628(*(v1 + *(v2 + 28)));
      }

      sub_1C440EED4();
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454C7B0()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v5 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v6 + 84) != v3)
      {
        *(v1 + *(v2 + 28)) = v0;
        return;
      }

      sub_1C4416C20();
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454C8C8()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v10 + 84) == v0)
        {
          v5 = v9;
          v7 = v2[7];
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v12 + 84) != v0)
          {
            return sub_1C4405628(*(v1 + v2[9] + 8));
          }

          v5 = v11;
          v7 = v2[8];
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454CA64()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v5 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v6 + 84) == v3)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v7 + 84) != v3)
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v8 + 84) != v3)
          {
            *(v1 + *(v2 + 36) + 8) = v0;
            return;
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v9, v10, v11, v12);
}

uint64_t sub_1C454CD08(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            if (a2 == 2147483646)
            {
              return sub_1C43FE264(a3[9]);
            }

            v8 = sub_1C456902C(&qword_1EC0BD230, &unk_1C4F2D800);
            v12 = a3[10];
          }
        }
      }
    }

    v9 = v3 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C454CED8()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            if (v3 == 2147483646)
            {
              sub_1C441864C(v2[9]);
              return;
            }

            v6 = sub_1C456902C(&qword_1EC0BD230, &unk_1C4F2D800);
            v10 = v2[10];
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  sub_1C440BAA8(v7, v0, v0, v6);
}

uint64_t sub_1C454D0A8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v16 + 84) != a2)
        {
          return sub_1C43FE264(a3[8]);
        }

        v8 = v15;
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C454D210()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v14 + 84) != v3)
        {
          sub_1C441864C(v2[8]);
          return;
        }

        v6 = v13;
        v10 = v2[7];
      }
    }

    v7 = v1 + v10;
  }

  sub_1C440BAA8(v7, v0, v0, v6);
}

uint64_t sub_1C454D374(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            if (a2 == 2147483646)
            {
              return sub_1C43FE264(a3[9]);
            }

            v8 = sub_1C456902C(&qword_1EC0BD238, &qword_1C4F731B0);
            v12 = a3[12];
          }
        }
      }
    }

    v9 = v3 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C454D544()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            if (v3 == 2147483646)
            {
              sub_1C441864C(v2[9]);
              return;
            }

            v6 = sub_1C456902C(&qword_1EC0BD238, &qword_1C4F731B0);
            v10 = v2[12];
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  sub_1C440BAA8(v7, v0, v0, v6);
}

uint64_t sub_1C454D8A4()
{
  sub_1C440CE48();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          if (v0 == 2147483646)
          {
            return sub_1C4405628(*(v1 + *(v2 + 32) + 8));
          }

          v5 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
          v7 = *(v2 + 36);
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454DA28()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (v1 == 2147483646)
          {
            sub_1C441864C(*(v0 + 32));
            return;
          }

          sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v6, v7, v8, v9);
}

uint64_t sub_1C454DBCC()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v11 + 84) != v0)
          {
            return sub_1C4405628(*(v1 + *(v2 + 36) + 8));
          }

          v5 = v10;
          v7 = *(v2 + 32);
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454DD64()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v6 + 84) != v1)
          {
            sub_1C441864C(*(v0 + 36));
            return;
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454DEF4()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          if (v0 == 2147483646)
          {
            return sub_1C4405628(*(v1 + *(v2 + 32)));
          }

          v5 = sub_1C456902C(&qword_1EC0C74A0, &unk_1C4F73760);
          v7 = *(v2 + 36);
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454E074()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v5 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v6 + 84) == v3)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v7 + 84) == v3)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (v3 == 2147483646)
          {
            *(v1 + *(v2 + 32)) = v0;
            return;
          }

          sub_1C456902C(&qword_1EC0C74A0, &unk_1C4F73760);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v8, v9, v10, v11);
}

uint64_t sub_1C454E1F4()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v11 + 84) == v0)
          {
            v5 = v10;
            v7 = v2[8];
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C4405628(*(v1 + v2[9] + 8));
            }

            sub_1C456902C(&qword_1EC0C7400, &unk_1C4F73730);
            sub_1C43FCF8C();
            if (*(v14 + 84) == v0)
            {
              v5 = v13;
              v7 = v2[12];
            }

            else
            {
              sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
              sub_1C43FCF8C();
              if (*(v16 + 84) == v0)
              {
                v5 = v15;
                v7 = v2[13];
              }

              else
              {
                v5 = sub_1C456902C(&qword_1EC0C3428, &unk_1C4F73720);
                v7 = v2[17];
              }
            }
          }
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454E450()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v6 + 84) != v1)
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(*(v0 + 36));
              return;
            }

            sub_1C456902C(&qword_1EC0C7400, &unk_1C4F73730);
            sub_1C43FCF8C();
            if (*(v11 + 84) != v1)
            {
              sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
              sub_1C43FCF8C();
              if (*(v12 + 84) != v1)
              {
                sub_1C456902C(&qword_1EC0C3428, &unk_1C4F73720);
              }
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454E964()
{
  sub_1C440CE48();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v9 + 84) != v0)
        {
          return sub_1C43FE264(*(v2 + 32));
        }

        sub_1C4416C14();
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454EAB4()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v5 + 84) != v1)
        {
          sub_1C441864C(*(v0 + 32));
          return;
        }

        sub_1C441D7B0();
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v6, v7, v8, v9);
}

uint64_t sub_1C454EC04()
{
  sub_1C440CE48();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C44A1CD0();
          if (v10)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v5 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
          v7 = *(v2 + 60);
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454ED7C()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C445AC84();
          if (v6)
          {
            sub_1C441864C(*(v0 + 32));
            return;
          }

          sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454EEF4()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v11 + 84) == v0)
          {
            v5 = v10;
            v7 = v2[8];
          }

          else
          {
            sub_1C44A1CD0();
            if (v13)
            {
              return sub_1C43FE264(v2[9]);
            }

            sub_1C456902C(&qword_1EC0BFA50, &qword_1C4F3BA60);
            sub_1C43FCF8C();
            if (*(v15 + 84) == v0)
            {
              v5 = v14;
              v7 = v2[10];
            }

            else
            {
              v5 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
              v7 = v2[11];
            }
          }
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454F0F8()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v6 + 84) != v1)
          {
            sub_1C445AC84();
            if (v11)
            {
              sub_1C441864C(*(v0 + 36));
              return;
            }

            sub_1C456902C(&qword_1EC0BFA50, &qword_1C4F3BA60);
            sub_1C43FCF8C();
            if (*(v12 + 84) != v1)
            {
              sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454F2FC()
{
  sub_1C440CE48();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
LABEL_8:

    return sub_1C44157D4(v4, v0, v5);
  }

  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v6 + 84) == v0)
  {
    sub_1C441E0CC();
LABEL_7:
    v4 = v1 + v7;
    goto LABEL_8;
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v8 + 84) == v0)
  {
    sub_1C440EED4();
    goto LABEL_7;
  }

  v10 = *(v1 + *(v2 + 28));
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

void sub_1C454F42C()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v5 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v6 + 84) != v3)
      {
        *(v1 + *(v2 + 28)) = v0;
        return;
      }

      sub_1C4416C20();
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454F544()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v11 + 84) == v0)
          {
            v5 = v10;
            v7 = v2[8];
          }

          else
          {
            sub_1C44A1CD0();
            if (v13)
            {
              return sub_1C43FE264(v2[9]);
            }

            sub_1C456902C(&qword_1EC0BFA58, &unk_1C4F3BA68);
            sub_1C43FCF8C();
            if (*(v15 + 84) == v0)
            {
              v5 = v14;
              v7 = v2[12];
            }

            else
            {
              v5 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
              v7 = v2[13];
            }
          }
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454F748()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v6 + 84) != v1)
          {
            sub_1C445AC84();
            if (v11)
            {
              sub_1C441864C(*(v0 + 36));
              return;
            }

            sub_1C456902C(&qword_1EC0BFA58, &unk_1C4F3BA68);
            sub_1C43FCF8C();
            if (*(v12 + 84) != v1)
            {
              sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454F94C()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v11 + 84) != v0)
          {
            return sub_1C43FE264(*(v2 + 36));
          }

          v5 = v10;
          v7 = *(v2 + 32);
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454FADC()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C4EFEEF8();
          sub_1C43FCF8C();
          if (*(v6 + 84) != v1)
          {
            sub_1C441864C(*(v0 + 36));
            return;
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454FC6C()
{
  sub_1C440CE48();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C44A1CD0();
          if (v10)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v5 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
          v7 = *(v2 + 52);
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

void sub_1C454FDE4()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v5 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C445AC84();
          if (v6)
          {
            sub_1C441864C(*(v0 + 32));
            return;
          }

          sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}