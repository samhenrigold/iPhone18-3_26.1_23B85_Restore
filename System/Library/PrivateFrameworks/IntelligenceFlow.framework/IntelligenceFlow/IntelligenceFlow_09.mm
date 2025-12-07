void sub_1DD7A9870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DD874FA0();
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v72 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  v85 = sub_1DD710A9C(&qword_1ECD112A8, &qword_1DD8894A8);
  MEMORY[0x1EEE9AC00](v85);
  v14 = &v72 - v13;
  v84 = type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  v90 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v72 - v26;
  v27 = sub_1DD710A9C(&qword_1ECD151E0, &qword_1DD8A70C0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v86 = (&v72 - v31);
  if (a1 == a2)
  {
    return;
  }

  v32 = *(a1 + 16);
  v80 = a2;
  if (v32 != *(a2 + 16))
  {
    return;
  }

  v78 = v12;
  v79 = v19;
  v75 = v4;
  v33 = 0;
  v34 = *(a1 + 64);
  v74 = a1 + 64;
  v35 = 1 << *(a1 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v73 = (v35 + 63) >> 6;
  v77 = (v97 + 32);
  v94 = v97 + 16;
  v95 = (v97 + 8);
  v83 = v24;
  v88 = v29;
  v76 = v14;
  v72 = a1;
  v82 = v16;
  while (1)
  {
    if (!v37)
    {
      while (1)
      {
        v39 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v39 >= v73)
        {
          v71 = sub_1DD710A9C(&qword_1ECD151E8, &unk_1DD8A70C8);
          sub_1DD6E5E68(v29, 1, 1, v71);
          v87 = 0;
          goto LABEL_13;
        }

        v40 = *(v74 + 8 * v39);
        ++v33;
        if (v40)
        {
          v87 = (v40 - 1) & v40;
          v38 = __clz(__rbit64(v40)) | (v39 << 6);
          v33 = v39;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v87 = (v37 - 1) & v37;
    v38 = __clz(__rbit64(v37)) | (v33 << 6);
LABEL_12:
    v41 = (*(a1 + 48) + 16 * v38);
    v42 = *v41;
    v43 = v41[1];
    sub_1DD6E5870();
    v44 = sub_1DD710A9C(&qword_1ECD151E8, &unk_1DD8A70C8);
    v45 = v88;
    *v88 = v42;
    v45[1] = v43;
    v46 = v45;
    sub_1DD6E59B8();
    sub_1DD6E5E68(v46, 0, 1, v44);

LABEL_13:
    v47 = v86;
    sub_1DD6E3A64();
    v48 = sub_1DD710A9C(&qword_1ECD151E8, &unk_1DD8A70C8);
    if (sub_1DD6E5ED0(v47, 1, v48) == 1)
    {
      return;
    }

    v49 = *v47;
    v50 = v47[1];
    sub_1DD6E59B8();
    sub_1DD6FB688(v49, v50);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_1DD6E5870();
    v53 = *(v85 + 48);
    sub_1DD6E5870();
    sub_1DD6E5870();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v68 = v79;
      sub_1DD6E5870();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v69 = v78;
        (*v77)(v78, &v14[v53], v6);
        LODWORD(v93) = _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
        v70 = *v95;
        (*v95)(v69, v6);
        sub_1DD6E5ABC();
        sub_1DD6E5ABC();
        v70(v68, v6);
        if ((v93 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }

      sub_1DD6E5ABC();
      sub_1DD6E5ABC();
      (*v95)(v68, v6);
LABEL_36:
      sub_1DD824154(v14, &qword_1ECD112A8);
      return;
    }

    sub_1DD6E5870();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD6E5ABC();
      sub_1DD6E5ABC();
      sub_1DD6E5ABC();
      goto LABEL_36;
    }

    sub_1DD6E59B8();
    v54 = _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
    v55 = v98;
    if ((v54 & 1) == 0)
    {
      break;
    }

    v56 = *(v75 + 20);
    v57 = *&v82[v56];
    v58 = *&v89[v56];
    v59 = *(v57 + 16);
    if (v59 != *(v58 + 16))
    {
      break;
    }

    if (v59 && v57 != v58)
    {
      v60 = 0;
      v61 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v92 = v58 + v61;
      v93 = v57 + v61;
      while (v60 < *(v57 + 16))
      {
        v62 = *(v97 + 72) * v60;
        v63 = *(v97 + 16);
        v63(v55, v93 + v62, v6);
        if (v60 >= *(v58 + 16))
        {
          goto LABEL_41;
        }

        v64 = v96;
        v63(v96, v92 + v62, v6);
        sub_1DD6E1E84(&unk_1ECD0E2A0);
        v65 = sub_1DD8750F0();
        v66 = *v95;
        v67 = v64;
        v55 = v98;
        (*v95)(v67, v6);
        v66(v55, v6);
        if ((v65 & 1) == 0)
        {
          goto LABEL_32;
        }

        if (v59 == ++v60)
        {
          goto LABEL_26;
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

LABEL_26:
    sub_1DD6E5ABC();
    sub_1DD6E5ABC();
    sub_1DD6E5ABC();
    sub_1DD6E5ABC();
    v14 = v76;
    a1 = v72;
LABEL_29:
    sub_1DD6E5ABC();
    v37 = v87;
    v29 = v88;
  }

LABEL_32:
  sub_1DD6E5ABC();
  sub_1DD6E5ABC();
  sub_1DD6E5ABC();
  sub_1DD6E5ABC();
LABEL_37:
  sub_1DD6E5ABC();
}

void sub_1DD7AA328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ClientAction.ShimParameter(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);
    v10 = (v7 + 63) >> 6;
    v28 = v10;
    if (v9)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v9));
        v29 = (v9 - 1) & v9;
LABEL_12:
        v14 = v11 | (v6 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = sub_1DD6FB688(v16, v17);
        v21 = v20;

        if ((v21 & 1) == 0 || (v22 = *(*(a2 + 56) + 8 * v19), v23 = *(v22 + 16), v23 != *(v18 + 16)))
        {
LABEL_26:

          return;
        }

        if (v23 && v22 != v18)
        {
          break;
        }

LABEL_22:

        v10 = v28;
        v9 = v29;
        if (!v29)
        {
          goto LABEL_7;
        }
      }

      v27 = a2;

      v24 = 0;
      while (v24 < *(v22 + 16))
      {
        sub_1DD6E5870();
        if (v24 >= *(v18 + 16))
        {
          goto LABEL_30;
        }

        sub_1DD6E5870();
        static MessagePayload.ClientAction.ShimParameter.== infix(_:_:)();
        v26 = v25;
        sub_1DD6E5ABC();
        sub_1DD6E5ABC();
        if ((v26 & 1) == 0)
        {

          goto LABEL_26;
        }

        if (v23 == ++v24)
        {

          a2 = v27;
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v6;
      while (1)
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          return;
        }

        v13 = *(a1 + 64 + 8 * v6);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v29 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }
}

void sub_1DD7AA640(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for ParameterValue(0);
  v61 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v50 - v9;
  v10 = sub_1DD710A9C(&qword_1ECD151B8, &qword_1DD8A7098);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v50 - v15);
  if (v14 == a2)
  {
    v58 = 1;
  }

  else if (*(v14 + 16) == *(a2 + 16))
  {
    v53 = v14;
    v54 = v4;
    v17 = 0;
    v18 = *(v14 + 64);
    v51 = v14 + 64;
    v19 = 1 << *(v14 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v59 = a2;
    v52 = v22;
    while (v21)
    {
      v60 = (v21 - 1) & v21;
      v23 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_12:
      v26 = (*(v14 + 48) + 16 * v23);
      v28 = *v26;
      v27 = v26[1];
      sub_1DD6E5870();
      v29 = sub_1DD710A9C(&qword_1ECD151C0, &qword_1DD8A70A0);
      *v12 = v28;
      v12[1] = v27;
      sub_1DD6E59B8();
      sub_1DD6E5E68(v12, 0, 1, v29);

LABEL_13:
      sub_1DD6E3A64();
      v30 = sub_1DD710A9C(&qword_1ECD151C0, &qword_1DD8A70A0);
      v31 = sub_1DD6E5ED0(v16, 1, v30);
      v58 = v31 == 1;
      if (v31 == 1)
      {
        return;
      }

      v32 = v12;
      v34 = *v16;
      v33 = v16[1];
      v35 = v16;
      sub_1DD6E59B8();
      sub_1DD6FB688(v34, v33);
      v37 = v36;

      if ((v37 & 1) == 0)
      {
        goto LABEL_34;
      }

      v38 = v54;
      sub_1DD6E5870();
      if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        sub_1DD6E5ABC();
LABEL_34:
        sub_1DD6E5ABC();
        goto LABEL_35;
      }

      v39 = v56;
      v40 = &v38[*(v56 + 20)];
      v57 = *v40;
      v41 = v40[8];
      v42 = v40[9];
      sub_1DD6E5ABC();
      v43 = &v7[*(v39 + 20)];
      v44 = *v43;
      v45 = v7;
      v46 = v43[8];
      v47 = v43[9];
      v48 = v45;
      sub_1DD6E5ABC();
      if (v42)
      {
        v21 = v60;
        v7 = v48;
        v12 = v32;
        v16 = v35;
        v22 = v52;
        v14 = v53;
        if ((v47 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v47)
        {
          return;
        }

        if (v41)
        {
          if (v57)
          {
            if ((v46 & 1) == 0)
            {
              return;
            }

            v21 = v60;
            v7 = v48;
            v12 = v32;
            v16 = v35;
            v22 = v52;
            v14 = v53;
            if (!v44)
            {
              return;
            }
          }

          else
          {
            if ((v46 & 1) == 0)
            {
              return;
            }

            v21 = v60;
            v7 = v48;
            v12 = v32;
            v16 = v35;
            v22 = v52;
            v14 = v53;
            if (v44)
            {
              return;
            }
          }
        }

        else
        {
          if (v46)
          {
            return;
          }

          v21 = v60;
          v7 = v48;
          v12 = v32;
          v16 = v35;
          v22 = v52;
          v14 = v53;
          if (v57 != v44)
          {
            return;
          }
        }
      }
    }

    while (1)
    {
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
        v49 = sub_1DD710A9C(&qword_1ECD151C0, &qword_1DD8A70A0);
        sub_1DD6E5E68(v12, 1, 1, v49);
        v60 = 0;
        goto LABEL_13;
      }

      v25 = *(v51 + 8 * v24);
      ++v17;
      if (v25)
      {
        v60 = (v25 - 1) & v25;
        v23 = __clz(__rbit64(v25)) | (v24 << 6);
        v17 = v24;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:
    v58 = 0;
  }
}

uint64_t sub_1DD7AAB98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644970657473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD7AAD98(char a1)
{
  result = 0x644970657473;
  switch(a1)
  {
    case 1:
      result = 0x496E6F6973736573;
      break;
    case 2:
      result = 0x6552746E65696C63;
      break;
    case 3:
      result = 0x6553746E65696C63;
      break;
    case 4:
      result = 0x64496C6F6F74;
      break;
    case 5:
      result = 0x6574656D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7AAE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7AAB98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7AAE90(uint64_t a1)
{
  v2 = sub_1DD7FE830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AAECC(uint64_t a1)
{
  v2 = sub_1DD7FE830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientEffectInvocation.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD11280, &qword_1DD889488);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v3 = sub_1DD7FE830();
  sub_1DD6E1808(&type metadata for MessagePayload.ClientEffectInvocation.CodingKeys, v4, v3);
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v5);
  sub_1DD6E5FDC();
  sub_1DD8759D0();
  if (!v0)
  {
    type metadata accessor for MessagePayload.ClientEffectInvocation(0);
    sub_1DD825AA8();
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    sub_1DD6FE1CC();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD82595C(*(v1 + 28));
    sub_1DD6E6174();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD82595C(*(v1 + 32));
    sub_1DD82636C();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD8267FC();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD826298();
    sub_1DD6E63A8();
    sub_1DD8759D0();
  }

  v6 = sub_1DD6DEA04();
  v7(v6);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void MessagePayload.ClientEffectInvocation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1DD6DED2C();
  sub_1DD826914(v22);
  v23 = sub_1DD874820();
  sub_1DD6DDEAC();
  v45 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DE21C();
  sub_1DD824D78();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DFF40();
  sub_1DD710A9C(&qword_1ECD11290, &qword_1DD889490);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  v28 = sub_1DD6E27D4();
  v43 = type metadata accessor for MessagePayload.ClientEffectInvocation(v28);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DDEE8();
  sub_1DD8268E4(v30);
  v31 = sub_1DD826F54();
  sub_1DD824CF8(v31);
  sub_1DD7FE830();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (v19)
  {
    sub_1DD6E1EC8(v44);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v32);
    sub_1DD8258D0();
    sub_1DD8758D0();
    v33 = v20;
    v34 = *(v45 + 32);
    v34(v46, v33, v23);
    sub_1DD6DEC54();
    sub_1DD8258D0();
    sub_1DD8758D0();
    v34(v46 + v43[5], v21, v23);
    sub_1DD825178();
    sub_1DD8258D0();
    v35 = sub_1DD875870();
    sub_1DD826C70(v35, v36, v43[6]);
    sub_1DD6E6174();
    sub_1DD8258D0();
    v37 = sub_1DD875870();
    sub_1DD826C70(v37, v38, v43[7]);
    sub_1DD82636C();
    sub_1DD8258D0();
    v39 = sub_1DD875870();
    sub_1DD826C70(v39, v40, v43[8]);
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD8267FC();
    sub_1DD7FD2FC();
    sub_1DD826A88();
    sub_1DD8258D0();
    sub_1DD8758D0();
    v41 = sub_1DD705C50();
    v42(v41);
    *(v46 + v43[9]) = v47;
    sub_1DD6E5870();
    sub_1DD6E1EC8(v44);
    sub_1DD82579C();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientAction.toolId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientAction(v0);
  return sub_1DD6DDF9C();
}

double MessagePayload.ClientAction.parameters.getter()
{
  type metadata accessor for MessagePayload.ClientAction(0);

  return result;
}

uint64_t MessagePayload.ClientAction.parameters.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for MessagePayload.ClientAction(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessagePayload.ClientAction.parameters.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientAction(v0);
  return sub_1DD6DDF9C();
}

double MessagePayload.ClientAction.shimParameterResolution.getter()
{
  type metadata accessor for MessagePayload.ClientAction(0);

  return result;
}

uint64_t MessagePayload.ClientAction.shimParameterResolution.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for MessagePayload.ClientAction(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessagePayload.ClientAction.shimParameterResolution.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientAction(v0);
  return sub_1DD6DDF9C();
}

double MessagePayload.ClientAction.shimParameters.getter()
{
  type metadata accessor for MessagePayload.ClientAction(0);

  return result;
}

uint64_t MessagePayload.ClientAction.shimParameters.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for MessagePayload.ClientAction(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessagePayload.ClientAction.shimParameters.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientAction(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientAction.clientQueryId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientAction(v0);
  return sub_1DD6DDF9C();
}

void MessagePayload.ClientAction.init(eventId:toolId:shimParameters:clientQueryId:)()
{
  sub_1DD6FF8A8();
  v16 = v4;
  v6 = v5;
  sub_1DD826C60();
  v7 = sub_1DD6E0A5C();
  v8 = type metadata accessor for MessagePayload.ClientAction(v7);
  v9 = (v0 + v8[9]);
  sub_1DD874820();
  sub_1DD6E0A68();
  v10 = sub_1DD6DDEFC();
  v11(v10);
  sub_1DD6E1CD0();
  *v12 = v3;
  v12[1] = v2;
  *(v0 + v8[8]) = v1;
  *v9 = v6;
  v9[1] = v16;
  sub_1DD874FA0();
  sub_1DD6EFF74();
  *(v0 + v8[6]) = sub_1DD875080();
  type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  sub_1DD6EFF74();
  v13 = sub_1DD875080();
  v14 = sub_1DD705564();
  v15(v14);
  *(v0 + v8[7]) = v13;
  sub_1DD6E58C4();
}

void MessagePayload.ClientAction.init(eventId:toolId:parameters:shimParameterResolution:clientQueryId:)()
{
  sub_1DD6FF8A8();
  v17 = v5;
  v18 = v4;
  v7 = v6;
  sub_1DD826C60();
  v8 = sub_1DD6E0A5C();
  v9 = type metadata accessor for MessagePayload.ClientAction(v8);
  v10 = (v0 + v9[9]);
  sub_1DD874820();
  sub_1DD6E0A68();
  v11 = sub_1DD6DDEFC();
  v12(v11);
  sub_1DD6E1CD0();
  *v13 = v3;
  v13[1] = v2;
  *(v0 + v9[6]) = v1;
  *v10 = v7;
  v10[1] = v17;
  *(v0 + v9[7]) = v18;
  sub_1DD710A9C(&qword_1ECD11298, &qword_1DD889498);
  v14 = sub_1DD875080();
  v15 = sub_1DD82568C();
  v16(v15);
  *(v0 + v9[8]) = v14;
  sub_1DD6E58C4();
}

void MessagePayload.ClientAction.init(eventId:toolId:parameters:clientQueryId:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DDEE8();
  sub_1DD6E9A9C();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DDEE8();
  v16 = sub_1DD6E9A9C();
  type metadata accessor for MessagePayload.ClientAction(v16);
  sub_1DD8277F8();
  sub_1DD6E0A68();
  v17 = sub_1DD8276F8();
  v18(v17);
  v19 = (v13 + *(v1 + 20));
  *v19 = v11;
  v19[1] = v9;
  sub_1DD827478();
  *v0 = v5;
  v0[1] = v3;
  sub_1DD710A9C(&qword_1ECD112A0, &qword_1DD8894A0);
  v20 = sub_1DD8757C0();
  v21 = 0;
  sub_1DD6E51DC();
  sub_1DD826124(v22);
  if (v0)
  {
    while (1)
    {
      sub_1DD827464();
LABEL_8:
      v26 = sub_1DD825D10();
      v27(v26);
      v28 = sub_1DD8265C8();
      v29(v28);
      swift_storeEnumTagMultiPayload();
      sub_1DD8258E8();
      v30 = *(v20 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v20 + 16) = v32;

      if (!v0)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v23 = v21;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v3)
      {
        sub_1DD827444();
        sub_1DD710A9C(&qword_1ECD11298, &qword_1DD889498);
        sub_1DD875080();
        v33 = sub_1DD82770C();
        v34(v33);
        *(v0 + *(v13 + 32)) = v20;
        sub_1DD6DFED0();
        return;
      }

      ++v23;
      if (*(v7 + 64 + 8 * v21))
      {
        sub_1DD826C80();
        v0 = (v25 & v24);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void MessagePayload.ClientAction.init(eventId:toolId:shimParameterResolution:clientQueryId:)()
{
  sub_1DD6FF8A8();
  v21 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for MessagePayload.ClientAction(0);
  v12 = (v10 + v11[9]);
  sub_1DD874820();
  sub_1DD6E0A68();
  v13 = sub_1DD7029A8();
  v15 = v14(v13);
  v16 = (v10 + v11[5]);
  *v16 = v8;
  v16[1] = v6;
  sub_1DD7ABEE4(v4, v15);
  *(v10 + v11[6]) = v17;
  *(v10 + v11[7]) = v4;
  sub_1DD710A9C(&qword_1ECD11298, &qword_1DD889498);
  v18 = sub_1DD875080();
  v19 = sub_1DD8259E0();
  v20(v19);
  *(v10 + v11[8]) = v18;
  *v12 = v2;
  v12[1] = v21;
  sub_1DD6E58C4();
}

void sub_1DD7ABEE4(uint64_t a1, double a2)
{
  v3 = type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1DD874FA0();
  v6 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v51 - v11;
  v66 = sub_1DD710A9C(&qword_1ECD151E8, &unk_1DD8A70C8);
  MEMORY[0x1EEE9AC00](v66);
  v57 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v51 - v17;
  v19 = a1 + 64;
  v18 = *(a1 + 64);
  v59 = MEMORY[0x1E69E7CC8];
  v68 = MEMORY[0x1E69E7CC8];
  v20 = 1 << *(a1 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v52 = v6;
  v53 = (v6 + 32);
  v67 = a1;

  v24 = 0;
  v60 = v23;
  v61 = v19;
  v63 = v5;
  while (1)
  {
    v25 = v24;
    if (!v22)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v26 = v15;
      v24 = v25;
LABEL_11:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = (*(v67 + 48) + 16 * (v27 | (v24 << 6)));
      v30 = *v28;
      v29 = v28[1];
      v31 = v62;
      sub_1DD6E5870();
      *v31 = v30;
      v31[1] = v29;
      sub_1DD6E3A64();
      v15 = v26;
      v32 = v63;
      sub_1DD6E5870();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1DD6E5ABC();
      sub_1DD824154(v26, &qword_1ECD151E8);
      v25 = v24;
      v23 = v60;
      v19 = v61;
      if (!v22)
      {
LABEL_7:
        while (1)
        {
          v24 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v24 >= v23)
          {

            return;
          }

          v22 = *(v19 + 8 * v24);
          ++v25;
          if (v22)
          {
            v26 = v15;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    v33 = *v53;
    (*v53)(v56, v32, v58);
    v33(v55, v56, v58);
    v34 = v33;
    sub_1DD6E3A64();
    v33(v54, v55, v58);
    if (v59[3] <= v59[2])
    {

      sub_1DD853AC4();
    }

    else
    {
    }

    v35 = v68;
    v37 = *v57;
    v36 = v57[1];
    sub_1DD875B20();
    v51 = v36;
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
    v38 = sub_1DD875B60();
    v39 = v35 + 64;
    v59 = v35;
    v40 = -1 << *(v35 + 32);
    v41 = v38 & ~v40;
    v42 = v41 >> 6;
    if (((-1 << v41) & ~*(v35 + 64 + 8 * (v41 >> 6))) == 0)
    {
      break;
    }

    v43 = __clz(__rbit64((-1 << v41) & ~*(v35 + 64 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    v48 = v59;
    v49 = (v59[6] + 16 * v43);
    v50 = v51;
    *v49 = v37;
    v49[1] = v50;
    v34((v48[7] + *(v52 + 72) * v43), v54, v58);
    ++v48[2];
    sub_1DD6E5ABC();
    v23 = v60;
    v19 = v61;
  }

  v44 = 0;
  v45 = (63 - v40) >> 6;
  while (++v42 != v45 || (v44 & 1) == 0)
  {
    v46 = v42 == v45;
    if (v42 == v45)
    {
      v42 = 0;
    }

    v44 |= v46;
    v47 = *(v39 + 8 * v42);
    if (v47 != -1)
    {
      v43 = __clz(__rbit64(~v47)) + (v42 << 6);
      goto LABEL_26;
    }
  }

LABEL_29:
  __break(1u);
}

void MessagePayload.ClientAction.init(eventId:toolId:parameters:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDEE8();
  sub_1DD6E9A9C();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDEE8();
  v12 = sub_1DD6E9A9C();
  type metadata accessor for MessagePayload.ClientAction(v12);
  sub_1DD8277F8();
  *v0 = 0;
  v0[1] = 0;
  sub_1DD6E0A68();
  v13 = sub_1DD8276F8();
  v14(v13);
  v15 = (v9 + *(v1 + 20));
  *v15 = v7;
  v15[1] = v5;
  sub_1DD827478();
  sub_1DD710A9C(&qword_1ECD112A0, &qword_1DD8894A0);
  v16 = sub_1DD8757C0();
  v17 = 0;
  sub_1DD6E51DC();
  sub_1DD826124(v18);
  if (v0)
  {
    while (1)
    {
      sub_1DD827464();
LABEL_8:
      v22 = sub_1DD825D10();
      v23(v22);
      v24 = sub_1DD8265C8();
      v25(v24);
      swift_storeEnumTagMultiPayload();
      sub_1DD8258E8();
      v26 = *(v16 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v16 + 16) = v28;

      if (!v0)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v19 = v17;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v17 >= v5)
      {
        sub_1DD827444();
        sub_1DD710A9C(&qword_1ECD11298, &qword_1DD889498);
        sub_1DD875080();
        v29 = sub_1DD82770C();
        v30(v29);
        *(v0 + *(v9 + 32)) = v16;
        sub_1DD6DFED0();
        return;
      }

      ++v19;
      if (*(v3 + 64 + 8 * v17))
      {
        sub_1DD826C80();
        v0 = (v21 & v20);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void static MessagePayload.ClientAction.ShimParameterResolution.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v18 = type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDEE8();
  v19 = v3;
  sub_1DD6E9A9C();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E2220();
  type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE21C();
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBEC();
  v9 = sub_1DD710A9C(&qword_1ECD112A8, &qword_1DD8894A8);
  sub_1DD6DEA10(v9);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E17C8();
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD825980();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DD7061D4();
    sub_1DD701174();
    sub_1DD6E5870();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD826A58();
      v13 = sub_1DD826A94();
      v14(v13);
      sub_1DD8256EC();
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      v15 = *(v5 + 8);
      v16 = sub_1DD6E60FC();
      v15(v16);
      v17 = sub_1DD825B84();
      v15(v17);
      sub_1DD825218();
      goto LABEL_11;
    }

    v11 = sub_1DD825B84();
    v12(v11);
    goto LABEL_8;
  }

  sub_1DD7061D4();
  sub_1DD8258AC();
  sub_1DD6E5870();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DD824EE8();
    sub_1DD6E5ABC();
LABEL_8:
    sub_1DD824154(v0, &qword_1ECD112A8);
    goto LABEL_11;
  }

  sub_1DD6E59B8();
  sub_1DD6F4498();
  if (_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0())
  {
    sub_1DD71533C(*(v1 + *(v18 + 20)), *(v19 + *(v18 + 20)));
  }

  sub_1DD8260D0();
  sub_1DD6E5ABC();
  sub_1DD6E9594();
  sub_1DD6E5ABC();
  sub_1DD825218();
LABEL_11:
  sub_1DD6FE01C();
  sub_1DD6DFED0();
}

uint64_t sub_1DD7ACAA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7ACB70(char a1)
{
  if (a1)
  {
    return 0x766C6F7365726E75;
  }

  else
  {
    return 0x6465766C6F736572;
  }
}

uint64_t sub_1DD7ACBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7ACAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7ACBDC(uint64_t a1)
{
  v2 = sub_1DD7FE8C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ACC18(uint64_t a1)
{
  v2 = sub_1DD7FE8C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7ACC54(uint64_t a1)
{
  v2 = sub_1DD7FE96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ACC90(uint64_t a1)
{
  v2 = sub_1DD7FE96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7ACCCC(uint64_t a1)
{
  v2 = sub_1DD7FE918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ACD08(uint64_t a1)
{
  v2 = sub_1DD7FE918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.ShimParameterResolution.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1DD6DED2C();
  v23 = v22;
  sub_1DD710A9C(&qword_1ECD112B0, &qword_1DD8894B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E9924(v25, v44);
  type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DDEE8();
  sub_1DD710A9C(&qword_1ECD112B8, &qword_1DD8894B8);
  sub_1DD6DDEAC();
  v45 = v27;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E17C8();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD824734();
  type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD8247F4();
  sub_1DD710A9C(&qword_1ECD112C0, &qword_1DD8894C0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DDFE4();
  sub_1DD6E6C94(v23);
  sub_1DD7FE8C4();
  sub_1DD77E6F4();
  sub_1DD875BB0();
  sub_1DD7061D4();
  sub_1DD6E5870();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DD6E59B8();
    sub_1DD6FF8F4();
    sub_1DD7FE918();
    sub_1DD79A3A4();
    sub_1DD875910();
    sub_1DD8260B8();
    sub_1DD6E1E84(v32);
    sub_1DD8759D0();
    v33 = sub_1DD824A60();
    v34(v33);
    sub_1DD824EE8();
    sub_1DD6E5ABC();
    v35 = sub_1DD825C74();
  }

  else
  {
    v37 = sub_1DD825C98();
    v38(v37);
    sub_1DD7FE96C();
    sub_1DD824BCC();
    sub_1DD875910();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v39);
    sub_1DD826844();
    sub_1DD8759D0();
    v40 = sub_1DD825950();
    v41(v40, v45);
    v42 = sub_1DD8252CC();
    v43(v42);
    v35 = sub_1DD825650();
  }

  v36(v35);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.ShimParameterResolution.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  v26 = v25;
  sub_1DD710A9C(&qword_1ECD112E8, &qword_1DD8894C8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6E5D10(v28, v71);
  sub_1DD710A9C(&qword_1ECD112F0, &qword_1DD8894D0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD82486C(v30, v72);
  sub_1DD710A9C(&qword_1ECD112F8, &qword_1DD8894D8);
  sub_1DD6DDEAC();
  v73 = v31;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DE340();
  v33 = type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6DE21C();
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6DFF40();
  sub_1DD6E49C0(v26);
  sub_1DD7FE8C4();
  sub_1DD8256E0();
  sub_1DD827908(v37, v38, v39);
  if (!v24)
  {
    v74 = v26;
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD827598();
    if (!v40)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v47 == v48)
      {
        __break(1u);
        return;
      }

      v75 = *(v46 + v45);
      sub_1DD826480(v41, v42, v43, v44, v45);
      sub_1DD6ED830();
      v50 = v49;
      v52 = v51;
      swift_unknownObjectRelease();
      if (v50 == v52 >> 1)
      {
        if (v75)
        {
          sub_1DD6FF8F4();
          sub_1DD7FE918();
          sub_1DD8257E0();
          sub_1DD875800();
          type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
          sub_1DD8260B8();
          sub_1DD6E1E84(v53);
          sub_1DD825118();
          sub_1DD826118();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v63 = sub_1DD8249F4();
          v64(v63);
          v65 = sub_1DD6F4D4C();
          v66(v65);
        }

        else
        {
          sub_1DD7FE96C();
          sub_1DD8257E0();
          sub_1DD875800();
          sub_1DD874FA0();
          sub_1DD6E05D4();
          sub_1DD6E1E84(v62);
          sub_1DD8258B8();
          sub_1DD826118();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v67 = sub_1DD8249F4();
          v68(v67);
          v69 = sub_1DD82526C();
          v70(v69, v73);
        }

        swift_storeEnumTagMultiPayload();
        sub_1DD6E59B8();
        sub_1DD6E59B8();
        v61 = v26;
        goto LABEL_10;
      }
    }

    v54 = sub_1DD875740();
    sub_1DD6E41BC(v54, MEMORY[0x1E69E6B28]);
    v56 = v55;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v56 = v33;
    sub_1DD6FA3D0();
    v57 = sub_1DD875810();
    sub_1DD6DF100(v57);
    sub_1DD8250B8();
    (*(v58 + 104))(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = sub_1DD6FE110();
    v60(v59);
    v26 = v74;
  }

  v61 = v26;
LABEL_10:
  sub_1DD6E1EC8(v61);
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientAction.UnresolvedParameterValue.candidates.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientAction.UnresolvedParameterValue.init(raw:candidates:)()
{
  sub_1DD8250F8();
  sub_1DD874FA0();
  sub_1DD6DF448();
  v2 = sub_1DD6E87AC();
  v3(v2);
  result = type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t sub_1DD7AD834(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7823730 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7AD904(char a1)
{
  if (a1)
  {
    return 0x74616469646E6163;
  }

  else
  {
    return 7823730;
  }
}

uint64_t sub_1DD7AD940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7AD834(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7AD968(uint64_t a1)
{
  v2 = sub_1DD7FE9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AD9A4(uint64_t a1)
{
  v2 = sub_1DD7FE9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.UnresolvedParameterValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD11308, &unk_1DD8894E0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v16 = sub_1DD7FE9C0();
  sub_1DD6E1808(&type metadata for MessagePayload.ClientAction.UnresolvedParameterValue.CodingKeys, v17, v16);
  sub_1DD825C8C();
  sub_1DD874FA0();
  sub_1DD6E05D4();
  sub_1DD6E1E84(v18);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v14)
  {
    type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
    sub_1DD82682C();
    sub_1DD710A9C(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD7FEA14();
    sub_1DD6E63A8();
    sub_1DD8759D0();
  }

  v19 = sub_1DD6EFFB4();
  v20(v19);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ClientAction.UnresolvedParameterValue.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E535C();
  sub_1DD710A9C(&qword_1ECD11328, &qword_1DD8894F0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DD700BA4();
  v6 = type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(v5);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E2220();
  sub_1DD6FE8B0(v0);
  sub_1DD7FE9C0();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6E05D4();
    sub_1DD6E1E84(v8);
    sub_1DD6F9A4C();
    sub_1DD82668C();
    sub_1DD827074(v9, v10, v11, v12, v13);
    sub_1DD826578();
    v14 = sub_1DD825B84();
    v15(v14);
    sub_1DD710A9C(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD82552C();
    sub_1DD7FEAC8();
    sub_1DD824B6C();
    sub_1DD825CF8();
    sub_1DD827074(v16, v17, v18, v19, v20);
    v21 = sub_1DD6FAE08();
    v22(v21);
    *(v1 + *(v6 + 20)) = v23;
    sub_1DD7006C0();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD824EE8();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void static MessagePayload.ClientAction.ShimParameter.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v50 = v4;
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  v48 = v6;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDEE8();
  v47 = v7;
  v8 = sub_1DD6E9A9C();
  type metadata accessor for MessagePayload.ClientAction.ShimParameter(v8);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE21C();
  sub_1DD825028();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD825884();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD826CA0();
  v13 = sub_1DD710A9C(&qword_1ECD11338, &qword_1DD8894F8);
  sub_1DD6DEA10(v13);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD8265FC();
  v16 = v0 + *(v15 + 56);
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD8256C8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD700C30();
      sub_1DD700D0C();
      sub_1DD6E5870();
      v34 = *v2;
      v33 = v2[1];
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_24;
      }

      v35 = *v16;
      v36 = *(v16 + 8);
      if (v34 != v35 || v33 != v36)
      {
        v38 = sub_1DD825650();
        sub_1DD6FA430(v38, v39, v40);
      }

      goto LABEL_32;
    case 2u:
      sub_1DD700C30();
      sub_1DD6ED180();
      sub_1DD6E5870();
      v19 = v3[1];
      v57[0] = *v3;
      v57[1] = v19;
      v58[0] = v3[2];
      *(v58 + 9) = *(v3 + 41);
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1DD826EB8();
        *(v56 + 1) = *(v16 + 41);
        v20 = v3[1];
        v53[0] = *v3;
        v53[1] = v20;
        v54[0] = v3[2];
        *(v54 + 9) = *(v3 + 41);
        v51[0] = v22;
        v51[1] = v21;
        v52[0] = *(v16 + 32);
        *(v52 + 9) = *(v16 + 41);
        static MessagePayload.ClientAction.PersonQuery.== infix(_:_:)(v53, v51, v23, v24, v25, v26, v27, v28, v47, v48, v49, v50, v22, *(&v22 + 1), v21, *(&v21 + 1), *&v52[0], *(&v52[0] + 1), *&v52[1], *(&v52[1] + 1), *&v53[0], *(&v53[0] + 1), v20, *(&v20 + 1), *&v54[0], *(&v54[0] + 1), *&v54[1], *(&v54[1] + 1), v55[0], v55[1], v55[2], v55[3], v55[4], v56[0]);
        sub_1DD7FEB9C(v55);
        sub_1DD7FEB9C(v57);
        goto LABEL_27;
      }

      sub_1DD7FEB9C(v57);
      goto LABEL_25;
    case 3u:
      sub_1DD700C30();
      sub_1DD705564();
      sub_1DD6E5870();
      v30 = *v1;
      v29 = v1[1];
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v31 = *(v16 + 8);
        if (v29)
        {
          if (!v31)
          {
            goto LABEL_30;
          }

          if (v30 != *v16 || v29 != v31)
          {
            sub_1DD8256EC();
            sub_1DD705D5C();
            if ((sub_1DD875A30() & 1) == 0)
            {
              goto LABEL_30;
            }
          }
        }

        else if (v31)
        {
LABEL_30:

LABEL_32:
          sub_1DD8251F0();
          goto LABEL_33;
        }

        v45 = sub_1DD825650();
        sub_1DD71533C(v45, v46);

        goto LABEL_32;
      }

LABEL_24:

LABEL_25:
      sub_1DD824154(v0, &qword_1ECD11338);
LABEL_33:
      sub_1DD6DFED0();
      return;
    default:
      sub_1DD700C30();
      sub_1DD82568C();
      sub_1DD6E5870();
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload())
      {
        v17 = sub_1DD6ED80C();
        v18(v17);
        goto LABEL_25;
      }

      sub_1DD8274CC();
      v41(v47, v16, v49);
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      v42 = *(v48 + 8);
      v43 = sub_1DD6E0F98();
      v42(v43);
      v44 = sub_1DD705C50();
      v42(v44);
LABEL_27:
      sub_1DD8251F0();
      goto LABEL_33;
  }
}

void static MessagePayload.ClientAction.PersonQuery.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1DD826DB8();
  a33 = v34;
  a34 = v36;
  v38 = v37;
  v39 = v35[1];
  v40 = v35[2];
  v41 = v35[3];
  v42 = v35[4];
  v44 = v35[5];
  v43 = v35[6];
  v45 = v38[1];
  v46 = v38[2];
  v48 = v38[3];
  v47 = v38[4];
  v50 = v38[5];
  v49 = v38[6];
  if (!v39)
  {
    if (v45)
    {
      goto LABEL_17;
    }

LABEL_10:
    if (v42 == 1)
    {
      sub_1DD6E0C60();
      sub_1DD8273F0();
      sub_1DD7FEBCC(v52, v53, v54);
      if (v47 == 1)
      {
        sub_1DD6E6378();
        sub_1DD8273E4();
        sub_1DD7FEBCC(v55, v56, v57);
        sub_1DD6E0C60();
        sub_1DD8273F0();
        sub_1DD7FEC14(v58, v59, v60);
        goto LABEL_17;
      }

      sub_1DD6E6378();
      sub_1DD82598C();
      sub_1DD7FEBCC(v70, v71, v72);
    }

    else
    {
      a18 = v40;
      a19 = v41;
      a20 = v42;
      a21 = v44;
      a22 = v43;
      if (v47 != 1)
      {
        LOBYTE(a13) = v46;
        a14 = v48;
        a15 = v47;
        a16 = v50;
        a17 = v49;
        static MessagePayload.ClientAction.PersonQuery.Handle.== infix(_:_:)(&a18, &a13);
        v79 = sub_1DD824858();
        sub_1DD7FEBCC(v79, v80, v81);
        sub_1DD6E6378();
        sub_1DD82598C();
        sub_1DD7FEBCC(v82, v83, v84);
        v85 = sub_1DD824858();
        sub_1DD7FEBCC(v85, v86, v87);

        v88 = sub_1DD824858();
        sub_1DD7FEC14(v88, v89, v90);
        goto LABEL_17;
      }

      v61 = sub_1DD824858();
      sub_1DD7FEBCC(v61, v62, v63);
      sub_1DD6E6378();
      sub_1DD8273E4();
      sub_1DD7FEBCC(v64, v65, v66);
      v67 = sub_1DD824858();
      sub_1DD7FEBCC(v67, v68, v69);
    }

    v73 = sub_1DD824858();
    sub_1DD7FEC14(v73, v74, v75);
    sub_1DD6E6378();
    sub_1DD82598C();
    sub_1DD7FEC14(v76, v77, v78);
    goto LABEL_17;
  }

  if (v45)
  {
    if (*v35 == *v38 && v39 == v45)
    {
      goto LABEL_10;
    }

    v49 = v38[6];
    v50 = v38[5];
    v48 = v38[3];
    LOBYTE(v46) = v38[2];
    v44 = v35[5];
    v41 = v35[3];
    v40 = v35[2];
    v47 = v38[4];
    v43 = v35[6];
    if (sub_1DD875A30())
    {
      goto LABEL_10;
    }
  }

LABEL_17:
  sub_1DD826D9C();
}

uint64_t sub_1DD7AE4D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7551676E69727473 && a2 == 0xEB00000000797265;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x75516E6F73726570 && a2 == 0xEB00000000797265;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001DD8B6670 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

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

uint64_t sub_1DD7AE644(char a1)
{
  result = 0x6465766C6F736572;
  switch(a1)
  {
    case 1:
      v3 = 0x676E69727473;
      goto LABEL_4;
    case 2:
      v3 = 0x6E6F73726570;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7551000000000000;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7AE6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7AE4D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7AE6FC(uint64_t a1)
{
  v2 = sub_1DD7FEC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AE738(uint64_t a1)
{
  v2 = sub_1DD7FEC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AE774(uint64_t a1)
{
  v2 = sub_1DD7FED58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AE7B0(uint64_t a1)
{
  v2 = sub_1DD7FED58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AE7EC(uint64_t a1)
{
  v2 = sub_1DD7FECB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AE828(uint64_t a1)
{
  v2 = sub_1DD7FECB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AE864(uint64_t a1)
{
  v2 = sub_1DD7FEEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AE8A0(uint64_t a1)
{
  v2 = sub_1DD7FEEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AE8DC(uint64_t a1)
{
  v2 = sub_1DD7FEE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AE918(uint64_t a1)
{
  v2 = sub_1DD7FEE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.ShimParameter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v70 = sub_1DD710A9C(&qword_1ECD11340, &qword_1DD889500);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD8249DC(v26, v67);
  v27 = sub_1DD710A9C(&qword_1ECD11348, &qword_1DD889508);
  sub_1DD6DF3FC(v27, &a16);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD8247DC(v29, v68);
  v30 = sub_1DD710A9C(&qword_1ECD11350, &qword_1DD889510);
  sub_1DD6DF3FC(v30, &a13);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD824AFC(v32, v69);
  v33 = sub_1DD710A9C(&qword_1ECD11358, &qword_1DD889518);
  sub_1DD6DF3FC(v33, &a11);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6DDFE4();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6ED3C0();
  type metadata accessor for MessagePayload.ClientAction.ShimParameter(0);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E6200();
  sub_1DD710A9C(&qword_1ECD11360, &qword_1DD889520);
  sub_1DD6DDEAC();
  v71 = v37;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD6DE340();
  sub_1DD6FE770(v24);
  sub_1DD7FEC5C();
  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD700C30();
  sub_1DD6E5870();
  sub_1DD6FAA70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v62 = *v20;
      v61 = v20[1];
      sub_1DD826920();
      sub_1DD7FEE00();
      sub_1DD8272FC();
      sub_1DD6F9BEC();
      sub_1DD8251A8();
      sub_1DD875910();
      *&v72 = v62;
      *(&v72 + 1) = v61;
      sub_1DD7FEE54();
      sub_1DD6FE84C();
      v63 = sub_1DD824880();
      v64(v63, v62);
      v65 = sub_1DD825148();
      v66(v65);
      goto LABEL_6;
    case 2u:
      v48 = *(v20 + 1);
      v72 = *v20;
      v73 = v48;
      v74[0] = *(v20 + 2);
      *(v74 + 9) = *(v20 + 41);
      sub_1DD7FED58();
      sub_1DD6EFF94();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD8273B8();
      sub_1DD7FEDAC();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v49 = sub_1DD6E5DE8();
      v50(v49);
      v51 = sub_1DD824A94();
      v52(v51);
      sub_1DD7FEB9C(&v72);
      break;
    case 3u:
      v54 = *v20;
      v53 = v20[1];
      v55 = v20[2];
      sub_1DD826AA0();
      sub_1DD7FECB0();
      sub_1DD825CA4();
      sub_1DD6F4360();
      sub_1DD875910();
      *&v72 = v54;
      *(&v72 + 1) = v53;
      *&v73 = v55;
      sub_1DD7FED04();
      sub_1DD826A40(&v72, v56, v70, &type metadata for MessagePayload.ClientAction.PhotosCandidates);
      v57 = sub_1DD6E1858();
      v58(v57, v70);
      v59 = sub_1DD6E61C4();
      v60(v59, v71);

LABEL_6:

      break;
    default:
      sub_1DD825CBC();
      v39 = sub_1DD825980();
      v40(v39);
      LOBYTE(v72) = 0;
      sub_1DD7FEEA8();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD6E05D4();
      sub_1DD6E1E84(v41);
      sub_1DD8276C8();
      sub_1DD6FAC4C();
      sub_1DD8759D0();
      v42 = sub_1DD6DF174();
      v43(v42);
      v44 = sub_1DD701174();
      v45(v44);
      v46 = sub_1DD824A60();
      v47(v46);
      break;
  }

  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.ShimParameter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  sub_1DD7038A0();
  v86 = sub_1DD710A9C(&qword_1ECD113A8, &qword_1DD889528);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD824A38(v26, v78);
  sub_1DD710A9C(&qword_1ECD113B0, &qword_1DD889530);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD82546C(v28, v79);
  v29 = sub_1DD710A9C(&qword_1ECD113B8, &qword_1DD889538);
  sub_1DD6DF3FC(v29, &a14);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD824B94(v31, v80);
  v32 = sub_1DD710A9C(&qword_1ECD113C0, &qword_1DD889540);
  sub_1DD6DF3FC(v32, &a16);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD825428(v34, v81);
  v87 = sub_1DD710A9C(&qword_1ECD113C8, &qword_1DD889548);
  sub_1DD6DDEAC();
  v85 = v35;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  v37 = sub_1DD6E27D4();
  v84 = type metadata accessor for MessagePayload.ClientAction.ShimParameter(v37);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6DFF40();
  sub_1DD6E1C64();
  sub_1DD7FEC5C();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (!a10)
  {
    sub_1DD827308();
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826908();
    if (!v43)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v50 == v51)
      {
        __break(1u);
        return;
      }

      v82 = *(v49 + v48);
      sub_1DD6E988C(v44, v45, v46, v47, v48);
      sub_1DD6ED830();
      v53 = v52;
      v55 = v54;
      swift_unknownObjectRelease();
      if (v53 == v55 >> 1)
      {
        switch(v82)
        {
          case 1:
            sub_1DD826920();
            sub_1DD7FEE00();
            sub_1DD6E3A54();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD7FEFA4();
            sub_1DD824AB4();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v74 = sub_1DD6E6CB0();
            v75(v74);
            v76 = sub_1DD8255C0();
            v77(v76);
            *v83 = v88;
            swift_storeEnumTagMultiPayload();
            sub_1DD6FF9C4();
            goto LABEL_14;
          case 2:
            sub_1DD826FF0();
            sub_1DD7FED58();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD7FEF50();
            sub_1DD6F3128();
            sub_1DD6FAC28();
            sub_1DD8758D0();
            sub_1DD826330();
            swift_unknownObjectRelease();
            v63 = sub_1DD6E60FC();
            v64(v63);
            v65 = sub_1DD8275A4();
            v66(v65);
            *v20 = v88;
            v20[1] = v89;
            v20[2] = *v90;
            *(v20 + 41) = *&v90[9];
            swift_storeEnumTagMultiPayload();
            sub_1DD6FF9C4();
            sub_1DD826E88();
            sub_1DD6E59B8();
            v67 = v21;
            break;
          case 3:
            sub_1DD826AA0();
            sub_1DD7FECB0();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD7FEEFC();
            sub_1DD6F3128();
            sub_1DD6FAC28();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v68 = sub_1DD6E60FC();
            v69(v68);
            (*(v85 + 8))(v22, v87);
            sub_1DD6FE2CC(v89.n128_u64[0], v88);
            swift_storeEnumTagMultiPayload();
            sub_1DD6FF9C4();
            sub_1DD826E88();
            sub_1DD6E59B8();
            v67 = v21;
            break;
          default:
            sub_1DD7FEEA8();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD874FA0();
            sub_1DD6E05D4();
            sub_1DD6E1E84(v56);
            sub_1DD6F4500();
            sub_1DD825CE0();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v70 = sub_1DD6E6CB0();
            v71(v70);
            v72 = sub_1DD8275A4();
            v73(v72);
            swift_storeEnumTagMultiPayload();
            sub_1DD6FF9C4();
LABEL_14:
            sub_1DD826E88();
            sub_1DD6E59B8();
            v67 = v21;
            break;
        }

        sub_1DD6FF9C4();
        sub_1DD700D0C();
        sub_1DD6E59B8();
        v62 = v67;
        goto LABEL_10;
      }
    }

    v57 = sub_1DD875740();
    sub_1DD6E41BC(v57, MEMORY[0x1E69E6B28]);
    sub_1DD827740();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v86 = v84;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v58 = sub_1DD6FEB10();
    v59(v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = sub_1DD825158();
    v61(v60);
  }

  v62 = v21;
LABEL_10:
  sub_1DD6E1EC8(v62);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientAction.StringQuery.text.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1DD7AF8A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7AF90C(uint64_t a1)
{
  v2 = sub_1DD7FEFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AF948(uint64_t a1)
{
  v2 = sub_1DD7FEFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.StringQuery.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD113E8, &qword_1DD889550);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FEFF8();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientAction.PersonQuery.name.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

double MessagePayload.ClientAction.PersonQuery.handle.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1DD7FEBCC(v2, v3, v4);
}

__n128 MessagePayload.ClientAction.PersonQuery.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1DD7FEC14(v1[2], v1[3], v1[4]);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v5;
  v1[6] = v3;
  return result;
}

__n128 MessagePayload.ClientAction.PersonQuery.init(name:handle:isMe:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  v9 = sub_1DD825640();
  sub_1DD7FEC14(v9, v10, v11);
  result = *a3;
  v13 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v13;
  *(a5 + 48) = v8;
  *(a5 + 56) = a4;
  return result;
}

uint64_t MessagePayload.ClientAction.PersonQuery.Handle.label.setter()
{
  sub_1DD6DE304();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MessagePayload.ClientAction.PersonQuery.Handle.value.setter()
{
  sub_1DD6DE304();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void __swiftcall MessagePayload.ClientAction.PersonQuery.Handle.init(kind:label:value:)(IntelligenceFlow::MessagePayload::ClientAction::PersonQuery::Handle *__return_ptr retstr, IntelligenceFlow::MessagePayload::ClientAction::PersonQuery::Handle::Kind_optional kind, Swift::String_optional label, Swift::String_optional value)
{
  retstr->kind.value = *kind.value;
  retstr->label = label;
  retstr->value = value;
}

uint64_t sub_1DD7AFD68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C69616D65 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D697465636166 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7AFE78(char a1)
{
  if (!a1)
  {
    return 0x656E6F6870;
  }

  if (a1 == 1)
  {
    return 0x6C69616D65;
  }

  return 0x656D697465636166;
}

uint64_t sub_1DD7AFED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7AFD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7AFEF8(uint64_t a1)
{
  v2 = sub_1DD7FF04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AFF34(uint64_t a1)
{
  v2 = sub_1DD7FF04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AFF70(uint64_t a1)
{
  v2 = sub_1DD7FF0F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AFFAC(uint64_t a1)
{
  v2 = sub_1DD7FF0F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AFFE8(uint64_t a1)
{
  v2 = sub_1DD7FF0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B0024(uint64_t a1)
{
  v2 = sub_1DD7FF0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B0060(uint64_t a1)
{
  v2 = sub_1DD7FF148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B009C(uint64_t a1)
{
  v2 = sub_1DD7FF148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.PersonQuery.Handle.Kind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  sub_1DD826784();
  sub_1DD710A9C(&qword_1ECD11400, &qword_1DD889560);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD82480C(v26, v36);
  sub_1DD710A9C(&qword_1ECD11408, &qword_1DD889568);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6E9924(v28, v37);
  sub_1DD710A9C(&qword_1ECD11410, &qword_1DD889570);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD11418, &qword_1DD889578);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DDFE4();
  v31 = *v23;
  sub_1DD6FE770(v24);
  sub_1DD7FF04C();
  sub_1DD77E6F4();
  sub_1DD875BB0();
  if (v31)
  {
    if (v31 == 1)
    {
      sub_1DD6DEC54();
      sub_1DD7FF0F4();
      sub_1DD824CD8();
    }

    else
    {
      sub_1DD6EFF88();
      sub_1DD7FF0A0();
      sub_1DD824AE4();
    }

    sub_1DD875910();
  }

  else
  {
    sub_1DD7FF148();
    sub_1DD824CD8();
    sub_1DD875910();
  }

  v32 = sub_1DD6DED98();
  v33(v32);
  v34 = sub_1DD6E0F98();
  v35(v34);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.PersonQuery.Handle.Kind.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v44 = v4;
  sub_1DD710A9C(&qword_1ECD11440, &qword_1DD889580);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD824F70(v6);
  sub_1DD710A9C(&qword_1ECD11448, &qword_1DD889588);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE340();
  v8 = sub_1DD710A9C(&qword_1ECD11450, &qword_1DD889590);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD11458, &qword_1DD889598);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEBA0();
  v11 = v3[4];
  sub_1DD6FE8B0(v3);
  sub_1DD7FF04C();
  sub_1DD6E4218();
  sub_1DD827620();
  sub_1DD875B90();
  if (!v1)
  {
    v45 = v3;
    sub_1DD6FA3D0();
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826B24();
    if (!v12)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v19 == v20)
      {
        __break(1u);
        return;
      }

      v21 = *(v18 + v17);
      sub_1DD77E6E4(v13, v14, v15, v16, v17);
      sub_1DD6ED830();
      sub_1DD6E0194();
      v23 = v22;
      swift_unknownObjectRelease();
      if (v11 == v23 >> 1)
      {
        if (v21)
        {
          if (v21 == 1)
          {
            sub_1DD6DEC54();
            sub_1DD7FF0F4();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD8274EC();
            swift_unknownObjectRelease();
            v32 = sub_1DD6E61C4();
            v33(v32);
            v34 = sub_1DD825998();
            v35(v34);
          }

          else
          {
            sub_1DD6EFF88();
            sub_1DD7FF0A0();
            sub_1DD824DF8();
            sub_1DD875800();
            sub_1DD8274D8();
            swift_unknownObjectRelease();
            v40 = sub_1DD705C50();
            v41(v40);
            v42 = sub_1DD82622C();
            v43(v42, v21);
          }
        }

        else
        {
          sub_1DD7FF148();
          sub_1DD6E4040();
          sub_1DD875800();
          swift_unknownObjectRelease();
          v36 = sub_1DD6DED98();
          v37(v36, v8);
          v38 = sub_1DD8255C0();
          v39(v38);
          v0 = v44;
        }

        *v0 = v21;
        sub_1DD6E1EC8(v45);
        goto LABEL_11;
      }
    }

    v24 = sub_1DD875740();
    sub_1DD6E41BC(v24, MEMORY[0x1E69E6B28]);
    v26 = v25;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v26 = &type metadata for MessagePayload.ClientAction.PersonQuery.Handle.Kind;
    sub_1DD6FA3D0();
    v27 = sub_1DD875810();
    sub_1DD6DF100(v27);
    sub_1DD8250B8();
    v28 = sub_1DD700660();
    v29(v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v30 = sub_1DD6FE110();
    v31(v30);
    v3 = v45;
  }

  sub_1DD6E1EC8(v3);
LABEL_11:
  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

BOOL static MessagePayload.ClientAction.PersonQuery.Handle.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  if (v4 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }
  }

  else if (v4 != v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = v5 == a2[1] && v6 == v10;
    if (!v13 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v8)
  {
    if (!v11)
    {
      return 0;
    }

    if (v7 != v12 || v8 != v11)
    {
      v15 = sub_1DD6DDEFC();
      if ((sub_1DD7013BC(v15, v16) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return !v11;
}

uint64_t sub_1DD7B0960(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7B0A70(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x65756C6176;
}

uint64_t sub_1DD7B0AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B0960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B0AE8(uint64_t a1)
{
  v2 = sub_1DD7FF19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B0B24(uint64_t a1)
{
  v2 = sub_1DD7FF19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.PersonQuery.Handle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v25 = v24;
  sub_1DD710A9C(&qword_1ECD11460, &qword_1DD8895A0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DEA6C();
  sub_1DD824D14(v25);
  sub_1DD7FF19C();
  sub_1DD6E17D8();
  sub_1DD8268F0();
  sub_1DD875BB0();
  sub_1DD7FF1F0();
  sub_1DD8256BC();
  sub_1DD875960();
  if (!v23)
  {
    sub_1DD6E4104();
    sub_1DD825668();
    sub_1DD875920();
    sub_1DD8263D0();
    sub_1DD6EFF74();
    sub_1DD825668();
    sub_1DD875920();
  }

  v27 = sub_1DD6DEA04();
  v28(v27);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.PersonQuery.Handle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  sub_1DD710A9C(&qword_1ECD11478, &qword_1DD8895A8);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v17 = sub_1DD7FF19C();
  sub_1DD6ED2A4(&type metadata for MessagePayload.ClientAction.PersonQuery.Handle.CodingKeys, v18, v17);
  if (v14)
  {
    sub_1DD6E1EC8(v13);
  }

  else
  {
    sub_1DD7FF244();
    sub_1DD705C28();
    sub_1DD875860();
    sub_1DD6E4104();
    sub_1DD6E5374();
    v19 = sub_1DD875820();
    v21 = v20;
    v27 = v19;
    sub_1DD8263D0();
    sub_1DD6E5374();
    v22 = sub_1DD875820();
    v24 = v23;
    v25 = sub_1DD6DEA2C();
    v26(v25);
    *v15 = a13;
    *(v15 + 8) = v27;
    *(v15 + 16) = v21;
    *(v15 + 24) = v22;
    *(v15 + 32) = v24;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B0E74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1699574633 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7B0F80(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x656C646E6168;
  }

  return 1699574633;
}

uint64_t sub_1DD7B1000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B0E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B1028(uint64_t a1)
{
  v2 = sub_1DD7FF298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B1064(uint64_t a1)
{
  v2 = sub_1DD7FF298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.PersonQuery.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD11488, &qword_1DD8895B0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  v11 = v0[3];
  v12 = v0[2];
  v10 = v0[4];
  sub_1DD6E6C94(v3);
  sub_1DD7FF298();
  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD6F4D4C();
  sub_1DD825668();
  sub_1DD875920();
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD7FEBCC(v5, v6, v7);
    sub_1DD7FF2EC();
    sub_1DD6E5334();
    sub_1DD875960();
    sub_1DD7FEC14(v12, v11, v10);
    sub_1DD826FE4();
    sub_1DD6E5334();
    sub_1DD875980();
  }

  v8 = sub_1DD6DEA04();
  v9(v8);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.PersonQuery.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD114A0, &qword_1DD8895B8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDFE4();
  sub_1DD824D14(v0);
  sub_1DD7FF298();
  sub_1DD77E6F4();
  sub_1DD8268F0();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD8274AC();
    sub_1DD824F80();

    sub_1DD6E6384();
    sub_1DD826FA8();
    sub_1DD7FEC14(v5, v6, v7);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_1DD6FAE18();
    v8 = sub_1DD875820();
    v24 = v9;
    sub_1DD7FF340();
    sub_1DD705C28();
    sub_1DD875860();
    v20 = v8;
    v21 = v3;
    v22 = *(&v27 + 1);
    v23 = v27;
    v10 = v28;
    v11 = v29;
    v12 = v30;
    v13 = sub_1DD825640();
    sub_1DD7FEC14(v13, v14, v15);
    sub_1DD6EFF88();
    sub_1DD6FAE18();
    v16 = sub_1DD875880();
    v17 = sub_1DD6ED130();
    v18(v17);
    *&v25[0] = v20;
    *(&v25[0] + 1) = v24;
    v25[1] = v27;
    *v26 = v28;
    *&v26[8] = v29;
    *&v26[16] = v30;
    v26[24] = v16 & 1;
    v19 = v27;
    *v21 = v25[0];
    v21[1] = v19;
    v21[2] = *v26;
    *(v21 + 41) = *&v26[9];
    sub_1DD7FF394(v25, &v27);
    sub_1DD6E1EC8(v0);
    *&v27 = v20;
    *(&v27 + 1) = v24;
    v28 = v23;
    v29 = v22;
    v30 = v10;
    v31 = v11;
    v32 = v12;
    v33 = v16 & 1;
    sub_1DD7FEB9C(&v27);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientAction.PhotosCandidates.searchQuery.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1DD7B1580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7551686372616573 && a2 == 0xEB00000000797265;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E457465737361 && a2 == 0xED00007365697469)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7B1654(char a1)
{
  if (a1)
  {
    return 0x746E457465737361;
  }

  else
  {
    return 0x7551686372616573;
  }
}

uint64_t sub_1DD7B16A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B1580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B16D0(uint64_t a1)
{
  v2 = sub_1DD7FF3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B170C(uint64_t a1)
{
  v2 = sub_1DD7FF3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.PhotosCandidates.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  sub_1DD710A9C(&qword_1ECD114B0, &qword_1DD8895C0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD826A64();
  v2 = sub_1DD8267D8();
  sub_1DD6E7320(v2);
  sub_1DD7FF3CC();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8249BC();
  sub_1DD875920();
  if (!v0)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD7FEA14();
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v3 = sub_1DD6DE58C();
  v4(v3);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.PhotosCandidates.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  sub_1DD710A9C(&qword_1ECD114C0, &qword_1DD8895C8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v3 = sub_1DD7FF3CC();
  sub_1DD6ED2A4(&type metadata for MessagePayload.ClientAction.PhotosCandidates.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD824D60();
    sub_1DD875820();
    sub_1DD825CD4();
    sub_1DD710A9C(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD82552C();
    sub_1DD7FEAC8();
    sub_1DD824B6C();
    sub_1DD825CF8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v5 = sub_1DD6DFF30();
    v6(v5);
    sub_1DD82696C();

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t static MessagePayload.ClientAction.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    type metadata accessor for MessagePayload.ClientAction(0);
    sub_1DD826354();
    sub_1DD824820(v3);
    v6 = v6 && v4 == v5;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {
      sub_1DD826EDC(v2[6]);
      sub_1DD7A874C();
      if (v7)
      {
        v8 = sub_1DD826EDC(v2[7]);
        sub_1DD7A9870(v8, v9);
        if (v10)
        {
          v11 = sub_1DD826EDC(v2[8]);
          sub_1DD7AA328(v11, v12);
          if (v13)
          {
            v14 = v2[9];
            v15 = *(v0 + v14 + 8);
            if (*(v1 + v14 + 8))
            {
              if (v15)
              {
                sub_1DD824D88(v1 + v14);
                v18 = v6 && v16 == v17;
                if (v18 || (sub_1DD875A30() & 1) != 0)
                {
                  return 1;
                }
              }
            }

            else if (!v15)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1DD7B1AB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001DD8B6690 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617261506D696873 && a2 == 0xEE0073726574656DLL;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD7B1CB8(char a1)
{
  result = 0x6449746E657665;
  switch(a1)
  {
    case 1:
      result = 0x64496C6F6F74;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x617261506D696873;
      break;
    case 5:
      result = 0x7551746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7B1D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B1AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B1DB8(uint64_t a1)
{
  v2 = sub_1DD7FF420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B1DF4(uint64_t a1)
{
  v2 = sub_1DD7FF420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD114C8, &qword_1DD8895D0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v19 = sub_1DD7FF420();
  sub_1DD6E1808(&type metadata for MessagePayload.ClientAction.CodingKeys, v20, v19);
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v21);
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v16)
  {
    v22 = type metadata accessor for MessagePayload.ClientAction(0);
    sub_1DD82554C(v22);
    sub_1DD701464();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD8262B0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    sub_1DD710A9C(&qword_1ECD114D8, &qword_1DD8895D8);
    sub_1DD7FF474();
    sub_1DD8262B0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    sub_1DD710A9C(&qword_1ECD114F0, &qword_1DD8895E0);
    sub_1DD7FF6A0(&unk_1ECD114F8);
    sub_1DD8262B0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    sub_1DD82595C(*(v17 + 36));
    sub_1DD824BDC();
    sub_1DD875920();
  }

  v23 = sub_1DD6EFFB4();
  v24(v23);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ClientAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  v23 = v22;
  v24 = sub_1DD874820();
  sub_1DD6DDEAC();
  v43 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6ED3C0();
  sub_1DD710A9C(&qword_1ECD11510, &qword_1DD8895E8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  v28 = sub_1DD6E27D4();
  v42 = type metadata accessor for MessagePayload.ClientAction(v28);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DDEE8();
  v31 = v30;
  v44 = v23;
  sub_1DD6FE770(v23);
  sub_1DD7FF420();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (v21)
  {
    sub_1DD6E1EC8(v23);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v32);
    sub_1DD8258D0();
    sub_1DD8758D0();
    (*(v43 + 32))(v31, v20, v24);
    sub_1DD701464();
    sub_1DD8258D0();
    v33 = sub_1DD875870();
    v34 = (v31 + v42[5]);
    *v34 = v33;
    v34[1] = v35;
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD705DE4();
    sub_1DD7FD2FC();
    sub_1DD6E9644();
    sub_1DD8258D0();
    sub_1DD8758D0();
    *(v31 + v42[6]) = a10;
    sub_1DD710A9C(&qword_1ECD114D8, &qword_1DD8895D8);
    sub_1DD7FF5E4();
    sub_1DD6E9644();
    sub_1DD8258D0();
    sub_1DD8758D0();
    *(v31 + v42[7]) = a10;
    sub_1DD710A9C(&qword_1ECD114F0, &qword_1DD8895E0);
    sub_1DD7FF6A0(&unk_1ECD11528);
    sub_1DD6E9644();
    sub_1DD8258D0();
    sub_1DD8758D0();
    *(v31 + v42[8]) = a10;
    sub_1DD8258D0();
    v36 = sub_1DD875820();
    v38 = v37;
    v39 = (v31 + v42[9]);
    v40 = sub_1DD703884();
    v41(v40);
    *v39 = v36;
    v39[1] = v38;
    sub_1DD6E5870();
    sub_1DD6E1EC8(v44);
    sub_1DD82579C();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B25E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C626169726176 && a2 == 0xEC000000656D614ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7B2688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B25E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7B26B4(uint64_t a1)
{
  v2 = sub_1DD7FF7D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B26F0(uint64_t a1)
{
  v2 = sub_1DD7FF7D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.ToolParameterValue.Reference.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD11540, &qword_1DD8895F0);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FF7D0();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B2890(uint64_t a1)
{
  v2 = sub_1DD7FF824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B28CC(uint64_t a1)
{
  v2 = sub_1DD7FF824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.ToolParameterValue.Value.encode(to:)(uint64_t a1)
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  sub_1DD710A9C(&qword_1ECD11558, &qword_1DD889600);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  v2 = sub_1DD7FF824();
  sub_1DD825588(&type metadata for MessagePayload.ActionWillExecute.ToolParameterValue.Value.CodingKeys, v3, v2);
  sub_1DD874FA0();
  sub_1DD6E05D4();
  v5 = sub_1DD6E1E84(v4);
  sub_1DD6E71A4(v5, v6);
  v7 = sub_1DD6ED4B8();
  v8(v7);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void MessagePayload.ActionWillExecute.ToolParameterValue.Value.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8254C8(v2);
  sub_1DD874FA0();
  sub_1DD6E125C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  sub_1DD826760(v4);
  sub_1DD710A9C(&qword_1ECD11568, &qword_1DD889608);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DD6E27D4();
  v7 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue.Value(v6);
  v8 = sub_1DD6DEA10(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E6200();
  sub_1DD824CF8(v0);
  sub_1DD7FF824();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD7028D8();
    sub_1DD6E05D4();
    v10 = sub_1DD6E1E84(v9);
    sub_1DD6E49DC(v10, v11);
    v12 = sub_1DD6F3238();
    v13(v12);
    v14 = sub_1DD6E891C();
    v15(v14);
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

void static MessagePayload.ActionWillExecute.ToolParameterValue.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v2 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue.Value(0);
  v3 = sub_1DD6DEA10(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(0);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE21C();
  sub_1DD6FF81C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEBEC();
  v6 = sub_1DD710A9C(&qword_1ECD11570, &qword_1DD889610);
  sub_1DD6DEA10(v6);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  v9 = (v0 + *(v8 + 56));
  sub_1DD6E5870();
  sub_1DD6EFF74();
  sub_1DD6E5870();
  sub_1DD825974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DD8248D4();
    sub_1DD6E5F58();
    sub_1DD6E5870();
    sub_1DD6E60FC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD700948();
      sub_1DD6E59B8();
      sub_1DD6E87AC();
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      sub_1DD6E5ABC();
      sub_1DD6FF97C();
      sub_1DD6E5ABC();
      sub_1DD6FDF40();
      goto LABEL_15;
    }

    sub_1DD6E5ABC();
LABEL_7:
    sub_1DD824154(v0, &qword_1ECD11570);
    goto LABEL_15;
  }

  sub_1DD8248D4();
  sub_1DD701174();
  sub_1DD6E5870();
  v11 = *v1;
  v10 = v1[1];
  sub_1DD6E60FC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_7;
  }

  if (v11 == *v9 && v10 == v9[1])
  {
  }

  else
  {
    v13 = sub_1DD6F4498();
    sub_1DD6FA430(v13, v14, v15);
    sub_1DD827818();
  }

  sub_1DD6FDF40();
LABEL_15:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7B2E60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657265666572 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7B2F2C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x636E657265666572;
  }
}

uint64_t sub_1DD7B2F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B2E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B2F94(uint64_t a1)
{
  v2 = sub_1DD7FF8B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B2FD0(uint64_t a1)
{
  v2 = sub_1DD7FF8B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B300C(uint64_t a1)
{
  v2 = sub_1DD7FF960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B3048(uint64_t a1)
{
  v2 = sub_1DD7FF960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B3084(uint64_t a1)
{
  v2 = sub_1DD7FF90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B30C0(uint64_t a1)
{
  v2 = sub_1DD7FF90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.ToolParameterValue.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD11578, &qword_1DD889618);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD82486C(v4, v22);
  type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue.Value(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDEE8();
  sub_1DD710A9C(&qword_1ECD11580, &qword_1DD889620);
  sub_1DD6DDEAC();
  v23 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(0);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  sub_1DD710A9C(&qword_1ECD11588, &qword_1DD889628);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6F0A58();
  sub_1DD824D14(v2);
  sub_1DD7FF8B8();
  sub_1DD6EF0F4();
  sub_1DD875BB0();
  sub_1DD8248D4();
  sub_1DD6E5870();
  sub_1DD825B84();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DD6E59B8();
    sub_1DD826820();
    sub_1DD7FF90C();
    sub_1DD6FE82C();
    sub_1DD875910();
    sub_1DD6F3570();
    sub_1DD6E1E84(v10);
    sub_1DD8759D0();
    v11 = sub_1DD6DE58C();
    v12(v11);
    sub_1DD825C80();
    sub_1DD6E5ABC();
    v13 = sub_1DD825674();
    v14(v13);
  }

  else
  {
    v16 = *v0;
    v15 = v0[1];
    sub_1DD7FF960();
    sub_1DD6FE82C();
    sub_1DD875910();
    v24[0] = v16;
    v24[1] = v15;
    sub_1DD7FF9B4();
    sub_1DD827280(v24, v17, v23, &type metadata for MessagePayload.ActionWillExecute.ToolParameterValue.Reference);
    v18 = sub_1DD8258AC();
    v19(v18);
    v20 = sub_1DD825674();
    v21(v20);
  }

  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void MessagePayload.ActionWillExecute.ToolParameterValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD6F8D24();
  v74 = v14;
  v77 = sub_1DD710A9C(&qword_1ECD115B8, &qword_1DD889630);
  sub_1DD6DDEAC();
  v75 = v15;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6FF92C(v17, v67);
  sub_1DD710A9C(&qword_1ECD115C0, &qword_1DD889638);
  sub_1DD6DDEAC();
  v72 = v19;
  v73 = v18;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD824A4C(v21, v67);
  v78 = sub_1DD710A9C(&qword_1ECD115C8, &qword_1DD889640);
  sub_1DD6DDEAC();
  v76 = v22;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DE340();
  type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(0);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DE21C();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v67 - v30;
  sub_1DD6FE770(v13);
  sub_1DD7FF8B8();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (!a10)
  {
    v68 = v10;
    v69 = v31;
    v70 = v27;
    v71 = v11;
    v32 = v78;
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826908();
    if (!v33)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v34 == v35)
      {
        __break(1u);
        return;
      }

      HIDWORD(v67) = *(v41 + v40);
      sub_1DD6E988C(v36, v37, v38, v39, v40);
      sub_1DD6ED830();
      v43 = v42;
      v45 = v44;
      swift_unknownObjectRelease();
      if (v43 == v45 >> 1)
      {
        if ((v67 & 0x100000000) != 0)
        {
          sub_1DD826820();
          sub_1DD7FF90C();
          sub_1DD705C28();
          sub_1DD875800();
          type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue.Value(0);
          sub_1DD6F3570();
          sub_1DD6E1E84(v46);
          sub_1DD827458();
          sub_1DD8758D0();
          v47 = v76;
          swift_unknownObjectRelease();
          v59 = sub_1DD770D98();
          v60(v59);
          (*(v47 + 8))(v12, v78);
        }

        else
        {
          LOBYTE(v79) = 0;
          sub_1DD7FF960();
          sub_1DD705C28();
          sub_1DD875800();
          sub_1DD7FFA08();
          v58 = v73;
          sub_1DD6F09C4();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v61 = sub_1DD705E24();
          v62(v61, v58);
          v63 = sub_1DD825038();
          v64(v63, v32);
          v65 = v80;
          v66 = v68;
          *v68 = v79;
          v66[1] = v65;
        }

        swift_storeEnumTagMultiPayload();
        sub_1DD6EE7B0();
        sub_1DD6E59B8();
        sub_1DD6EE7B0();
        sub_1DD825974();
        sub_1DD6E59B8();
        v57 = v13;
        goto LABEL_12;
      }
    }

    v48 = v71;
    v49 = sub_1DD875740();
    sub_1DD6E41BC(v49, MEMORY[0x1E69E6B28]);
    v51 = v50;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v51 = v48;
    sub_1DD7039C0();
    v52 = sub_1DD875810();
    sub_1DD6DF100(v52);
    sub_1DD8250B8();
    v53 = sub_1DD826A94();
    v54(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = sub_1DD825038();
    v56(v55, v32);
  }

  v57 = v13;
LABEL_12:
  sub_1DD6E1EC8(v57);
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B3A60(uint64_t a1)
{
  v2 = sub_1DD7FFA5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B3A9C(uint64_t a1)
{
  v2 = sub_1DD7FFA5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B3B98(uint64_t a1)
{
  v2 = sub_1DD7FFAB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B3BD4(uint64_t a1)
{
  v2 = sub_1DD7FFAB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.PromptSelection.SelectedInDisambiguation.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  sub_1DD710A9C(&qword_1ECD115F0, &qword_1DD889650);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DEBA0();
  sub_1DD6E6C94(v1);
  sub_1DD7FFAB0();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD8759B0();
  v3 = sub_1DD6DDEDC();
  v4(v3);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.ActionWillExecute.PromptSelection.SelectedInDisambiguation.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD11600, &qword_1DD889658);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v5 = sub_1DD7FFAB0();
  sub_1DD6FC48C(&type metadata for MessagePayload.ActionWillExecute.PromptSelection.SelectedInDisambiguation.CodingKeys, v6, v5);
  if (!v1)
  {
    sub_1DD6EE778();
    v7 = sub_1DD8758B0();
    v8 = sub_1DD6DEA2C();
    v9(v8);
    *v3 = v7;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B3E34(uint64_t a1)
{
  v2 = sub_1DD7FFB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B3E70(uint64_t a1)
{
  v2 = sub_1DD7FFB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static MessagePayload.ActionWillExecute.PromptSelection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    return !*(a2 + 8);
  }

  if (*(a1 + 8) == 1)
  {
    if (v2 == 1)
    {
      return *a1 == *a2;
    }

    return 0;
  }

  return v2 == 2;
}

uint64_t sub_1DD7B3F54(uint64_t a1)
{
  v2 = sub_1DD7FFB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B3F90(uint64_t a1)
{
  v2 = sub_1DD7FFB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B3FCC(uint64_t a1)
{
  v2 = sub_1DD7FFCFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B4008(uint64_t a1)
{
  v2 = sub_1DD7FFCFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B4044(uint64_t a1)
{
  v2 = sub_1DD7FFBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B4080(uint64_t a1)
{
  v2 = sub_1DD7FFBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B40BC(uint64_t a1)
{
  v2 = sub_1DD7FFC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B40F8(uint64_t a1)
{
  v2 = sub_1DD7FFC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.PromptSelection.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  sub_1DD710A9C(&qword_1ECD11618, &qword_1DD889668);
  sub_1DD6DDEAC();
  v44 = v25;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD82486C(v27, v42);
  sub_1DD710A9C(&qword_1ECD11620, &qword_1DD889670);
  sub_1DD6DDEAC();
  v43 = v28;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6F0A58();
  v30 = sub_1DD710A9C(&qword_1ECD11628, &qword_1DD889678);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DEBA0();
  sub_1DD710A9C(&qword_1ECD11630, &qword_1DD889680);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DE340();
  v33 = *(v24 + 8);
  sub_1DD70066C();
  sub_1DD7FFB58();
  sub_1DD8256E0();
  sub_1DD875BB0();
  if (v33)
  {
    if (v33 == 1)
    {
      sub_1DD6DEC54();
      sub_1DD7FFC54();
      sub_1DD826808();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD7FFCA8();
      v34 = v43;
      sub_1DD8759D0();
      v35 = sub_1DD825068();
    }

    else
    {
      sub_1DD6EFF88();
      sub_1DD7FFBAC();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD7FFC00();
      v34 = v44;
      sub_1DD8759D0();
      v35 = sub_1DD705E24();
    }

    v39 = v34;
  }

  else
  {
    sub_1DD7FFCFC();
    sub_1DD824AB4();
    sub_1DD875910();
    v37 = sub_1DD7FFD50();
    sub_1DD827848(v37, v38, v30, &type metadata for MessagePayload.ActionWillExecute.PromptSelection.Confirmed);
    v35 = sub_1DD6E37A0();
  }

  v36(v35, v39);
  v40 = sub_1DD6E0F70();
  v41(v40);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.ActionWillExecute.PromptSelection.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1DD6DED2C();
  sub_1DD705C5C();
  v64 = v24;
  sub_1DD710A9C(&qword_1ECD11670, &qword_1DD889688);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD82480C(v26, v63);
  sub_1DD710A9C(&qword_1ECD11678, &qword_1DD889690);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DEBA0();
  sub_1DD710A9C(&qword_1ECD11680, &qword_1DD889698);
  sub_1DD6DDEAC();
  v65 = v28;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6F0A58();
  v30 = sub_1DD710A9C(&qword_1ECD11688, &qword_1DD8896A0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DE340();
  v66 = v22;
  sub_1DD70066C();
  sub_1DD7FFB58();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (!v67)
  {
    v32 = v23;
    sub_1DD875900();
    sub_1DD6ED750();
    if (v34 != v33 >> 1)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v41 == v42)
      {
        __break(1u);
        return;
      }

      v69 = *(v40 + v39);
      sub_1DD827424(v35, v36, v37, v38, v39);
      sub_1DD6ED830();
      sub_1DD8277D8();
      v23 = v65;
      if (v32 == (v30 >> 1))
      {
        if (v69)
        {
          if (v69 == 1)
          {
            sub_1DD6DEC54();
            sub_1DD7FFC54();
            sub_1DD6F4360();
            sub_1DD875800();
            sub_1DD7FFDF8();
            sub_1DD8250A8();
            sub_1DD8758D0();
            sub_1DD826778();
            swift_unknownObjectRelease();
            v48 = sub_1DD824D98();
            v49(v48);
            v50 = sub_1DD6E61C4();
            v51(v50, v30);
            v52 = v68;
            v53 = v66;
            v54 = v64;
          }

          else
          {
            sub_1DD6EFF88();
            sub_1DD7FFBAC();
            sub_1DD6F4360();
            sub_1DD875800();
            v54 = v64;
            sub_1DD7FFDA4();
            sub_1DD6FE82C();
            sub_1DD8758D0();
            sub_1DD826778();
            swift_unknownObjectRelease();
            v59 = sub_1DD824C0C();
            v60(v59);
            v61 = sub_1DD826AC8();
            v62(v61, v30);
            v52 = 0;
            v53 = v66;
          }
        }

        else
        {
          sub_1DD7FFCFC();
          sub_1DD8257E0();
          sub_1DD875800();
          sub_1DD7FFE4C();
          sub_1DD825368();
          sub_1DD8758D0();
          sub_1DD826778();
          swift_unknownObjectRelease();
          v55 = sub_1DD6E60FC();
          v56(v55);
          v57 = sub_1DD826AC8();
          v58(v57, v30);
          v52 = 0;
          v53 = v66;
          v54 = v64;
        }

        *v54 = v52;
        *(v54 + 8) = v69;
        sub_1DD6E1EC8(v53);
        goto LABEL_11;
      }
    }

    v43 = sub_1DD875740();
    sub_1DD6E41BC(v43, MEMORY[0x1E69E6B28]);
    sub_1DD8274C0();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v23 = &type metadata for MessagePayload.ActionWillExecute.PromptSelection;
    v44 = sub_1DD875810();
    sub_1DD6DF100(v44);
    sub_1DD824B14();
    (*(v45 + 104))(v23);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = sub_1DD6FAF18();
    v47(v46);
  }

  sub_1DD6E1EC8(v66);
LABEL_11:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ActionWillExecute.ParameterValue.value.getter()
{
  sub_1DD6FAAAC();
  sub_1DD8248D4();
  return sub_1DD6E5870();
}

void MessagePayload.ActionWillExecute.ParameterValue.promptSelection.getter()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(v1);
  sub_1DD6E0508();
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *v0 = v3;
  *(v0 + 8) = v2;
}

void MessagePayload.ActionWillExecute.ParameterValue.promptSelection.setter(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0);
  sub_1DD6E0508();
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t MessagePayload.ActionWillExecute.ParameterValue.promptSelection.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ActionWillExecute.ParameterValue.init(value:promptSelection:)()
{
  sub_1DD826938();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v0 + *(type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0) + 20);
  *v4 = 0;
  *(v4 + 8) = -1;
  sub_1DD6EE7B0();
  sub_1DD6DDEFC();
  result = sub_1DD6E59B8();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t static MessagePayload.ActionWillExecute.ParameterValue.== infix(_:_:)()
{
  sub_1DD6E1F34();
  static MessagePayload.ActionWillExecute.ToolParameterValue.== infix(_:_:)();
  if (v2)
  {
    v3 = *(type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0) + 20);
    v4 = (v1 + v3);
    v5 = *(v1 + v3 + 8);
    v6 = (v0 + v3);
    v7 = *(v0 + v3 + 8);
    if (v5 == 255)
    {
      if (v7 == 255)
      {
        return 1;
      }
    }

    else if (v7 != 255)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          v9 = *v4;
          v10 = *v6;
          if (v7 == 1 && v9 == v10)
          {
            return 1;
          }
        }

        else if (v7 == 2)
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD7B4D14(uint64_t a1)
{
  v2 = sub_1DD7FFF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B4D50(uint64_t a1)
{
  v2 = sub_1DD7FFF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.ParameterValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD116A8, &qword_1DD8896A8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v16 = sub_1DD7FFF14();
  sub_1DD6E1808(&type metadata for MessagePayload.ActionWillExecute.ParameterValue.CodingKeys, v17, v16);
  v18 = sub_1DD825C8C();
  type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(v18);
  sub_1DD825E48();
  sub_1DD6E1E84(v19);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v14)
  {
    type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0);
    sub_1DD82682C();
    sub_1DD7FFF68();
    sub_1DD824DE8();
    sub_1DD875960();
  }

  v20 = sub_1DD6EFFB4();
  v21(v20);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ActionWillExecute.ParameterValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DDEE8();
  sub_1DD826244(v26);
  sub_1DD710A9C(&qword_1ECD116C8, &qword_1DD8896B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6E7258();
  v28 = type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0);
  v29 = sub_1DD6DEA10(v28);
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6E2220();
  v31 = v23 + *(v30 + 28);
  *v31 = 0;
  *(v31 + 8) = -1;
  sub_1DD824CF8(v22);
  sub_1DD7FFF14();
  sub_1DD7039CC();
  sub_1DD826A7C();
  sub_1DD875B90();
  if (v24)
  {
    sub_1DD6E1EC8(v22);
  }

  else
  {
    sub_1DD825E48();
    sub_1DD6E1E84(v32);
    sub_1DD6F9A4C();
    sub_1DD826A34();
    sub_1DD8758D0();
    sub_1DD6EE7B0();
    sub_1DD6E59B8();
    sub_1DD6DEC54();
    sub_1DD7FFFBC();
    sub_1DD824848();
    sub_1DD875860();
    v33 = sub_1DD825570();
    v34(v33);
    *v31 = v35;
    *(v31 + 8) = v36;
    sub_1DD700948();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v22);
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ActionWillExecute.toolId.setter()
{
  sub_1DD6DE304();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t MessagePayload.ActionWillExecute.bundleId.setter()
{
  sub_1DD6DE304();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t MessagePayload.ActionWillExecute.deviceId.setter()
{
  sub_1DD6DE304();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t MessagePayload.ActionWillExecute.parameterValues.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t MessagePayload.ActionWillExecute.planEventId.setter()
{
  sub_1DD6DE304();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

__n128 MessagePayload.ActionWillExecute.init(statementId:toolId:bundleId:deviceId:isConfirmed:parameterValues:planEventId:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11)
{
  result = a10;
  *a9 = *a1;
  *(a9 + 8) = *(a1 + 8);
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  return result;
}

uint64_t static MessagePayload.ActionWillExecute.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v29 = *(a2 + 56);
    v30 = *(a1 + 56);
    v31 = *(a2 + 72);
    v32 = *(a1 + 72);
    v33 = *(a2 + 80);
    v34 = *(a1 + 80);
    v25 = *(a2 + 88);
    v26 = *(a1 + 88);
    v27 = *(a2 + 96);
    v28 = *(a1 + 96);
    v15 = *(a1 + 8) == *(a2 + 8) && v3 == v9;
    if (!v15 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v29 = *(a2 + 56);
    v30 = *(a1 + 56);
    v31 = *(a2 + 72);
    v32 = *(a1 + 72);
    v33 = *(a2 + 80);
    v34 = *(a1 + 80);
    v25 = *(a2 + 88);
    v26 = *(a1 + 88);
    v27 = *(a2 + 96);
    v28 = *(a1 + 96);
    if (v9)
    {
      return 0;
    }
  }

  if (v4 != v10 || v6 != v12)
  {
    sub_1DD6E6218();
    if ((sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }

    if (v5 != v11 || v7 != v13)
    {
      sub_1DD6E8090();
      if ((sub_1DD875A30() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    v19 = v33;
    v20 = v34;
    if (!v14)
    {
      return 0;
    }

    if (v30 == v29 && v8 == v14)
    {
      if (v32 != v31)
      {
        return 0;
      }
    }

    else
    {
      sub_1DD875A30();
      result = sub_1DD6FE86C();
      if ((v22 & 1) == 0)
      {
        return result;
      }

      v20 = v34;
      v19 = v33;
      if ((v32 ^ v31))
      {
        return result;
      }
    }

    goto LABEL_39;
  }

  result = 0;
  v19 = v33;
  v20 = v34;
  if (!v14 && ((v32 ^ v31) & 1) == 0)
  {
LABEL_39:
    sub_1DD7A9018(v20, v19);
    if (v23)
    {
      if (v28)
      {
        if (v27)
        {
          v24 = v26 == v25 && v28 == v27;
          if (v24 || (sub_1DD875A30() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v27)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD7B5694(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7269666E6F437369 && a2 == 0xEB0000000064656DLL;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574656D61726170 && a2 == 0xEF7365756C615672;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E6576456E616C70 && a2 == 0xEB00000000644974)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

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

uint64_t sub_1DD7B58D8(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x64496C6F6F74;
      break;
    case 2:
      v3 = 0x656C646E7562;
      goto LABEL_6;
    case 3:
      v3 = 0x656369766564;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 4:
      result = 0x7269666E6F437369;
      break;
    case 5:
      result = 0x6574656D61726170;
      break;
    case 6:
      result = 0x6E6576456E616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7B59BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B5694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B59E4(uint64_t a1)
{
  v2 = sub_1DD800010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B5A20(uint64_t a1)
{
  v2 = sub_1DD800010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD116E0, &qword_1DD8896B8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE340();
  sub_1DD6E49C0(v3);
  sub_1DD800010();
  sub_1DD826F3C();

  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD70396C();
  sub_1DD8259D4();
  sub_1DD8759D0();

  if (v1)
  {
    v5 = sub_1DD705C68();
    v6(v5, v0);
  }

  else
  {
    sub_1DD702E94();
    sub_1DD8257EC();
    sub_1DD875970();
    sub_1DD82673C(2);
    sub_1DD8257C8();
    sub_1DD8257EC();
    sub_1DD875920();
    sub_1DD82673C(3);
    sub_1DD825B90();
    sub_1DD8257EC();
    sub_1DD875920();
    sub_1DD825D44();
    sub_1DD875980();
    sub_1DD710A9C(&qword_1ECD116F0, &qword_1DD8896C0);
    sub_1DD800064();
    sub_1DD826748();
    sub_1DD82557C();
    sub_1DD825D44();
    sub_1DD8759D0();
    sub_1DD82673C(6);
    sub_1DD8257EC();
    sub_1DD875920();
    v7 = sub_1DD825C74();
    v8(v7);
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.ActionWillExecute.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  v27 = v26;
  v29 = v28;
  v30 = sub_1DD710A9C(&qword_1ECD11708, &qword_1DD8896C8);
  sub_1DD6DDEAC();
  v32 = v31;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DE340();
  sub_1DD6FE770(v27);
  sub_1DD800010();
  sub_1DD8256E0();
  sub_1DD8267F0();
  sub_1DD875B90();
  if (v24)
  {
    sub_1DD6E1EC8(v27);
  }

  else
  {
    sub_1DD705D68();
    sub_1DD6F4360();
    sub_1DD8758D0();
    v53 = v58;
    sub_1DD825254(1);
    v51 = sub_1DD875870();
    v52 = v57;
    v54 = v34;
    sub_1DD825254(2);
    sub_1DD875820();
    v36 = v35;
    v50 = v29;
    sub_1DD825254(3);
    v37 = sub_1DD875820();
    v39 = v38;
    v49 = v37;
    sub_1DD825254(4);
    v69 = sub_1DD875880();
    sub_1DD710A9C(&qword_1ECD116F0, &qword_1DD8896C0);
    LOBYTE(v55[0]) = 5;
    sub_1DD800120();
    sub_1DD8265E4();
    sub_1DD8758D0();
    v48 = v56;
    v40 = v56;
    sub_1DD6FFDDC();
    sub_1DD8265E4();
    sub_1DD875820();
    sub_1DD826470();
    v42 = v41;
    v43 = v25;
    v45 = v44;
    (*(v32 + 8))(v43, v30);
    LODWORD(v55[0]) = v56;
    v55[1] = v57;
    v55[2] = v58;
    v55[3] = v51;
    v55[4] = v54;
    sub_1DD700C6C();
    v55[5] = v46;
    v55[6] = v36;
    v55[7] = v49;
    v55[8] = v39;
    LOBYTE(v55[9]) = v69;
    v55[10] = v56;
    v55[11] = v42;
    v55[12] = v45;
    memcpy(v50, v55, 0x68uLL);
    sub_1DD8001DC(v55, &v56);
    sub_1DD6E1EC8(v27);
    LODWORD(v56) = v48;
    v57 = v52;
    v58 = v53;
    v59 = v51;
    v60 = v54;
    sub_1DD700C6C();
    v61 = v47;
    v62 = v36;
    v63 = v49;
    v64 = v39;
    v65 = v69;
    v66 = v40;
    v67 = v42;
    v68 = v45;
    sub_1DD800214(&v56);
  }

  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void static MessagePayload.ClientEffectResolved.Result.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD82758C();
  v25 = sub_1DD874FA0();
  sub_1DD6DDEAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v7 = sub_1DD826C10();
  type metadata accessor for MessagePayload.ClientEffectResolved.Result(v7);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD8264E0();
  v10 = sub_1DD710A9C(&qword_1ECD11720, &qword_1DD8896D0);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E17C8();
  v13 = v0 + *(v12 + 56);
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD8258AC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DD824EA0();
    sub_1DD825980();
    sub_1DD6E5870();
    v14 = *v3;
    v15 = *(v3 + 8);
    sub_1DD825570();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v13;
      v17 = *(v13 + 8);
      if (v15)
      {
        v18 = v14;
        if ((v17 & 1) == 0)
        {
LABEL_5:
          v19 = v16;
          v20 = sub_1DD874670();
          v21 = sub_1DD826F6C();
          sub_1DD71900C(v21);
LABEL_13:
          sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
          sub_1DD826814();
          sub_1DD8755A0();

          sub_1DD71900C(v16);
          sub_1DD71900C(v14);
          goto LABEL_14;
        }
      }

      else
      {
        v24 = v14;
        v18 = sub_1DD874670();
        sub_1DD71900C(v14);
        if ((v17 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v20 = v16;
      goto LABEL_13;
    }

    sub_1DD71900C(v14);
  }

  else
  {
    sub_1DD824EA0();
    sub_1DD825974();
    sub_1DD6E5870();
    sub_1DD825570();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v1, v13, v25);
      sub_1DD6E0C60();
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      v22 = *(v5 + 8);
      v22(v1, v25);
      v23 = sub_1DD6DED5C();
      (v22)(v23);
LABEL_14:
      sub_1DD82579C();
      sub_1DD6E5ABC();
      goto LABEL_15;
    }

    (*(v5 + 8))(v2, v25);
  }

  sub_1DD824154(v0, &qword_1ECD11720);
LABEL_15:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7B649C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7B6560(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_1DD7B6594(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7B6624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B649C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B664C(uint64_t a1)
{
  v2 = sub_1DD800264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B6688(uint64_t a1)
{
  v2 = sub_1DD800264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B66C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B6594(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7B66F4(uint64_t a1)
{
  v2 = sub_1DD80030C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B6730(uint64_t a1)
{
  v2 = sub_1DD80030C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B676C(uint64_t a1)
{
  v2 = sub_1DD8002B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B67A8(uint64_t a1)
{
  v2 = sub_1DD8002B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientEffectResolved.Result.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v24 = sub_1DD710A9C(&qword_1ECD11728, &qword_1DD8896D8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD824C9C(v4, v23);
  sub_1DD710A9C(&qword_1ECD11730, &qword_1DD8896E0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E27D4();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6ED3C0();
  type metadata accessor for MessagePayload.ClientEffectResolved.Result(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD824734();
  sub_1DD710A9C(&qword_1ECD11738, &qword_1DD8896E8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDFE4();
  sub_1DD6E6C94(v2);
  sub_1DD800264();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD824EA0();
  sub_1DD6E5870();
  sub_1DD6EFF74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v0;
    sub_1DD6FF8F4();
    sub_1DD8002B8();
    sub_1DD82499C();
    sub_1DD875910();
    sub_1DD7FBFF4();
    sub_1DD8759D0();
    v10 = sub_1DD825068();
    v11(v10, v24);
    v12 = sub_1DD6E5DB0();
    v13(v12);
    sub_1DD71900C(v9);
  }

  else
  {
    v14 = sub_1DD8258AC();
    v15(v14);
    sub_1DD80030C();
    sub_1DD6E710C();
    sub_1DD875910();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v16);
    sub_1DD8276C8();
    sub_1DD826844();
    sub_1DD8759D0();
    v17 = sub_1DD825158();
    v18(v17);
    v19 = sub_1DD701174();
    v20(v19);
    v21 = sub_1DD6E0F98();
    v22(v21);
  }

  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void MessagePayload.ClientEffectResolved.Result.init(from:)()
{
  sub_1DD6DED2C();
  v69 = v1;
  v5 = v4;
  v62 = v6;
  v63 = sub_1DD710A9C(&qword_1ECD11758, &qword_1DD8896F0);
  sub_1DD6DDEAC();
  v66 = v7;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E9924(v9, v59[0]);
  sub_1DD710A9C(&qword_1ECD11760, &qword_1DD8896F8);
  sub_1DD6DDEAC();
  v64 = v11;
  v65 = v10;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6FF92C(v13, v59[0]);
  sub_1DD710A9C(&qword_1ECD11768, &qword_1DD889700);
  sub_1DD6DDEAC();
  v67 = v15;
  v68 = v14;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE340();
  type metadata accessor for MessagePayload.ClientEffectResolved.Result(0);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE21C();
  sub_1DD824D78();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v59 - v20;
  sub_1DD6FE770(v5);
  sub_1DD800264();
  sub_1DD8256E0();
  v22 = v69;
  sub_1DD875B90();
  if (!v22)
  {
    v59[1] = v0;
    v60 = v3;
    v59[0] = v21;
    v61 = v2;
    v69 = v5;
    v23 = v68;
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD827598();
    if (!v24)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v31 == v32)
      {
        __break(1u);
        return;
      }

      v72 = *(v30 + v29);
      sub_1DD826480(v25, v26, v27, v28, v29);
      sub_1DD6ED830();
      v34 = v33;
      v36 = v35;
      swift_unknownObjectRelease();
      v37 = v60;
      if (v34 == v36 >> 1)
      {
        if (v72)
        {
          sub_1DD6FF8F4();
          sub_1DD8002B8();
          sub_1DD82499C();
          sub_1DD875800();
          sub_1DD7FC0CC();
          sub_1DD6F3128();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v50 = sub_1DD825974();
          v51(v50);
          v52 = sub_1DD824838();
          v53(v52);
          v54 = v71;
          *v37 = v70;
          *(v37 + 8) = v54;
        }

        else
        {
          sub_1DD80030C();
          sub_1DD82499C();
          sub_1DD875800();
          sub_1DD874FA0();
          sub_1DD6E05D4();
          sub_1DD6E1E84(v48);
          v49 = v65;
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v55 = sub_1DD825950();
          v56(v55, v49);
          v57 = sub_1DD6E5DB0();
          v58(v57);
        }

        swift_storeEnumTagMultiPayload();
        sub_1DD82474C();
        sub_1DD6E59B8();
        sub_1DD82474C();
        sub_1DD6E59B8();
        v47 = v69;
        goto LABEL_10;
      }
    }

    v38 = v61;
    v39 = sub_1DD875740();
    sub_1DD6E41BC(v39, MEMORY[0x1E69E6B28]);
    v41 = v40;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v41 = v38;
    sub_1DD7039C0();
    v42 = sub_1DD875810();
    sub_1DD6DF100(v42);
    sub_1DD8250B8();
    v43 = sub_1DD826A94();
    v44(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v45 = sub_1DD825038();
    v46(v45, v23);
    v5 = v69;
  }

  v47 = v5;
LABEL_10:
  sub_1DD6E1EC8(v47);
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientEffectResolved.init(stepId:result:)()
{
  sub_1DD8250F8();
  sub_1DD874820();
  sub_1DD6DF448();
  v0 = sub_1DD6E87AC();
  v1(v0);
  type metadata accessor for MessagePayload.ClientEffectResolved(0);
  sub_1DD82474C();
  return sub_1DD6E59B8();
}

void static MessagePayload.ClientEffectResolved.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    v0 = type metadata accessor for MessagePayload.ClientEffectResolved(0);
    sub_1DD6F4D70(v0);

    static MessagePayload.ClientEffectResolved.Result.== infix(_:_:)();
  }
}

uint64_t sub_1DD7B7254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644970657473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7B731C(char a1)
{
  if (a1)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x644970657473;
  }
}

uint64_t sub_1DD7B734C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B7254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B7374(uint64_t a1)
{
  v2 = sub_1DD800360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B73B0(uint64_t a1)
{
  v2 = sub_1DD800360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientEffectResolved.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  sub_1DD710A9C(&qword_1ECD11770, &qword_1DD889708);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD800360();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v18);
  sub_1DD6F9A4C();
  sub_1DD6E730C();
  sub_1DD8759D0();
  if (!v16)
  {
    type metadata accessor for MessagePayload.ClientEffectResolved(0);
    sub_1DD6DEC54();
    type metadata accessor for MessagePayload.ClientEffectResolved.Result(0);
    sub_1DD825E30();
    sub_1DD6E1E84(v19);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v20 = sub_1DD825168();
  v21(v20);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ClientEffectResolved.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825A04();
  v4 = sub_1DD826914(v3);
  type metadata accessor for MessagePayload.ClientEffectResolved.Result(v4);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E2220();
  v17 = sub_1DD874820();
  sub_1DD6DDEAC();
  v15 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  v16 = v8;
  v18 = sub_1DD710A9C(&qword_1ECD11788, &qword_1DD889710);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEA6C();
  type metadata accessor for MessagePayload.ClientEffectResolved(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD702A64();
  sub_1DD6E7320(v0);
  sub_1DD800360();
  sub_1DD6E17D8();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v11);
    sub_1DD6F9A4C();
    sub_1DD8758D0();
    (*(v15 + 32))(v1, v16, v17);
    sub_1DD6DEC54();
    sub_1DD825E30();
    sub_1DD6E1E84(v12);
    sub_1DD705C1C();
    sub_1DD8758D0();
    v13 = sub_1DD6DED98();
    v14(v13, v18);
    sub_1DD82474C();
    sub_1DD6E59B8();
    sub_1DD7006C0();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E1180();
    sub_1DD6E5ABC();
  }

  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B7904()
{
  v0 = sub_1DD825000();
  v1(v0);
  sub_1DD826944();
  return sub_1DD6E5870();
}

uint64_t MessagePayload.ClientActionResult.statementOutcome.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientActionResult(v0);
  sub_1DD824E88();
  sub_1DD826F84();
  return sub_1DD7FFEA0();
}

uint64_t MessagePayload.ClientActionResult.statementOutcome.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientActionResult(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientActionResult.outcome.getter()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for MessagePayload.ClientActionResult(v1);
  return StatementOutcome.asActionOutcome.getter(v0);
}

uint64_t MessagePayload.ClientActionResult.outcome.setter()
{
  v1 = sub_1DD6DE290();
  v2 = *(type metadata accessor for MessagePayload.ClientActionResult(v1) + 20);
  sub_1DD6E0900();
  sub_1DD6E5ABC();
  ActionOutcome.asStatementOutcome.getter((v0 + v2));
  sub_1DD6DE600();
  return sub_1DD6E5ABC();
}

void (*MessagePayload.ClientActionResult.outcome.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = sub_1DD82661C(a1);
  v3 = type metadata accessor for ActionOutcome(v2);
  sub_1DD6DEA10(v3);
  v5 = *(v4 + 64);
  *(v1 + 8) = sub_1DD7281CC(v5);
  v6 = sub_1DD7281CC(v5);
  *(v1 + 16) = v6;
  *(v1 + 24) = *(type metadata accessor for MessagePayload.ClientActionResult(0) + 20);
  StatementOutcome.asActionOutcome.getter(v6);
  return sub_1DD7B7AD8;
}

void sub_1DD7B7AD8(uint64_t *a1, char a2)
{
  v2 = *(a1 + 6);
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1DD6ED118();
    sub_1DD6E5870();
    sub_1DD6E0900();
    sub_1DD6E5ABC();
    ActionOutcome.asStatementOutcome.getter((v5 + v2));
    sub_1DD6DE600();
    sub_1DD6E5ABC();
  }

  else
  {
    sub_1DD6E0900();
    sub_1DD6E5ABC();
    ActionOutcome.asStatementOutcome.getter((v5 + v2));
  }

  sub_1DD6E5ABC();
  free(v4);

  free(v3);
}

uint64_t sub_1DD7B7BF0()
{
  v0 = sub_1DD6F355C();
  v1(v0);
  return sub_1DD826384();
}

uint64_t MessagePayload.ClientActionResult.response.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientActionResult(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientActionResult.init(eventId:statementOutcome:response:)()
{
  sub_1DD824C64();
  v1 = *(type metadata accessor for MessagePayload.ClientActionResult(0) + 24);
  v2 = type metadata accessor for ResponseManifest(0);
  sub_1DD6DEA4C(v0 + v1, v3, v4, v2);
  sub_1DD874820();
  sub_1DD6DF448();
  v5 = sub_1DD6E0C60();
  v6(v5);
  sub_1DD6E0B14();
  sub_1DD6E59B8();
  return sub_1DD807414();
}

uint64_t MessagePayload.ClientActionResult.init(eventId:outcome:response:)()
{
  sub_1DD824C64();
  v1 = type metadata accessor for MessagePayload.ClientActionResult(0);
  v2 = *(v1 + 24);
  v3 = type metadata accessor for ResponseManifest(0);
  sub_1DD6DEA4C(v0 + v2, v4, v5, v3);
  sub_1DD874820();
  sub_1DD6DF448();
  v6 = sub_1DD6E0C60();
  v7(v6);
  ActionOutcome.asStatementOutcome.getter((v0 + *(v1 + 20)));
  sub_1DD6DE600();
  sub_1DD6E5ABC();
  return sub_1DD807414();
}

void static MessagePayload.ClientActionResult.== infix(_:_:)()
{
  sub_1DD6DEB38();
  type metadata accessor for ResponseManifest(0);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6ED3C0();
  v3 = sub_1DD710A9C(&qword_1ECD11798, &qword_1DD889718);
  sub_1DD6DEA10(v3);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD82660C();
  v5 = sub_1DD710A9C(&qword_1ECD117A0, &qword_1DD889720);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD8265FC();
  sub_1DD6DDEDC();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    type metadata accessor for MessagePayload.ClientActionResult(0);
    sub_1DD826B0C();
    static StatementOutcome.== infix(_:_:)();
    if (v7)
    {
      v8 = *(v5 + 48);
      sub_1DD82598C();
      sub_1DD700E60();
      sub_1DD82598C();
      sub_1DD700E60();
      sub_1DD6DE1FC(v0, 1, v1);
      if (!v9)
      {
        sub_1DD6E58E0();
        sub_1DD700E60();
        sub_1DD6DE1FC(v0 + v8, 1, v1);
        if (!v9)
        {
          sub_1DD6E59B8();
          sub_1DD6ED118();
          static ResponseManifest.== infix(_:_:)();
          sub_1DD6E5ABC();
          sub_1DD6FF97C();
          sub_1DD6E5ABC();
          sub_1DD824154(v0, &qword_1ECD11798);
          goto LABEL_12;
        }

        sub_1DD825E18();
        sub_1DD6E5ABC();
LABEL_11:
        sub_1DD824154(v0, &qword_1ECD117A0);
        goto LABEL_12;
      }

      sub_1DD6DE1FC(v0 + v8, 1, v1);
      if (!v9)
      {
        goto LABEL_11;
      }

      sub_1DD824154(v0, &qword_1ECD11798);
    }
  }

LABEL_12:
  sub_1DD6DFED0();
}

void static StatementOutcome.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v64 = v3;
  v57 = type metadata accessor for ParameterCandidatesNotFound(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  v5 = sub_1DD6E9A9C();
  v58 = type metadata accessor for ParameterNotAllowed(v5);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  v7 = sub_1DD6E9A9C();
  v8 = type metadata accessor for ParameterConfirmation(v7);
  v9 = sub_1DD6DEA10(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DDEE8();
  v10 = sub_1DD6E9A9C();
  v11 = type metadata accessor for ParameterNeedsValue(v10);
  v12 = sub_1DD6DEA10(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDEE8();
  v13 = sub_1DD6E9A9C();
  v14 = type metadata accessor for SnippetStream(v13);
  v15 = sub_1DD6DEA10(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DDEE8();
  v16 = sub_1DD6E9A9C();
  v17 = type metadata accessor for ActionSuccess(v16);
  v18 = sub_1DD6DEA10(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DDEE8();
  v19 = sub_1DD6E9A9C();
  type metadata accessor for StatementOutcome(v19);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DE21C();
  v61 = v21 - v22;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6F1780();
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6F1780();
  v63 = v26;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6F1780();
  v62 = v28;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6F1780();
  v60 = v30;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6F1780();
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6F1780();
  v59 = v33;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD825898();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD826CA0();
  v38 = sub_1DD710A9C(&qword_1ECD117A8, &qword_1DD889728);
  sub_1DD6DEA10(v38);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6DE340();
  sub_1DD6E5870();
  sub_1DD8270D0();
  sub_1DD6E9594();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_56;
      }

      sub_1DD824E40();
      sub_1DD6E59B8();
      sub_1DD825650();
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      sub_1DD6F8CA8();
      goto LABEL_33;
    case 2u:
      sub_1DD6ED690();
      sub_1DD6F4498();
      sub_1DD6E5870();
      if (sub_1DD8266E0() == 2)
      {
        sub_1DD825A10();
        v43 = sub_1DD826A70();
        sub_1DD80043C(v43);
        sub_1DD80043C(v68);
        goto LABEL_61;
      }

      sub_1DD80043C(v68);
      goto LABEL_57;
    case 3u:
      sub_1DD6ED690();
      sub_1DD6E0F70();
      sub_1DD6E5870();
      v45 = *v0;
      v44 = v0[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_57;
      }

      v46 = v64[1];
      if (v44)
      {
        if (!v46)
        {
          goto LABEL_66;
        }

        v47 = v45 == *v64 && v44 == v46;
        if (!v47 && (sub_1DD8278F0(v45, v44, *v64) & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else if (v46)
      {
LABEL_66:

        goto LABEL_68;
      }

      sub_1DD6E0F70();
      sub_1DD716FC0();
      sub_1DD827878();

LABEL_68:
      sub_1DD6E5ABC();
LABEL_63:
      sub_1DD6FE01C();
      sub_1DD6DFED0();
      return;
    case 4u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_56;
      }

      sub_1DD824E70();
      sub_1DD6E59B8();
      static ParameterNeedsValue.== infix(_:_:)(v59);
      sub_1DD824E58();
      sub_1DD6E5ABC();
      sub_1DD825650();
      goto LABEL_60;
    case 5u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_56;
      }

      sub_1DD824E28();
      sub_1DD6E59B8();
      sub_1DD825650();
      static ParameterConfirmation.== infix(_:_:)();
      sub_1DD82616C();
LABEL_33:
      sub_1DD6E5ABC();
      goto LABEL_60;
    case 6u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      v51 = v60[1];
      v68[0] = *v60;
      v68[1] = v51;
      v52 = v60[3];
      v68[2] = v60[2];
      v68[3] = v52;
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_1DD825DA0();
        v53 = sub_1DD826A70();
        sub_1DD80040C(v53);
        sub_1DD80040C(v68);
        goto LABEL_61;
      }

      sub_1DD80040C(v68);
      goto LABEL_57;
    case 7u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_56;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD826498();
      v50 = v47 && v48 == v49;
      if (v50 || (sub_1DD875A30() & 1) != 0)
      {
        sub_1DD8267E4(*(v58 + 20));
        if (_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0())
        {
          sub_1DD6FEB44();
        }
      }

      goto LABEL_45;
    case 8u:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_56;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD826498();
      v56 = v47 && v54 == v55;
      if (v56 || (sub_1DD875A30() & 1) != 0)
      {
        sub_1DD826568(v57);
        _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      }

LABEL_45:
      sub_1DD6E5ABC();
      sub_1DD770D4C();
      sub_1DD6E5ABC();
      sub_1DD6E0900();
      goto LABEL_68;
    case 9u:
      sub_1DD6ED690();
      sub_1DD8259E0();
      sub_1DD6E5870();
      if (sub_1DD702B14() == 9)
      {
        sub_1DD825C10();
        v41 = sub_1DD6F9BF8();
        sub_1DD8003E4(v41, v42, v63, v62, v61, v64);
        sub_1DD6FE78C();
        sub_1DD6E0900();
        goto LABEL_62;
      }

      sub_1DD6FE78C();
      v1 = v2;
      goto LABEL_57;
    case 0xAu:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        sub_1DD6E5C7C();
        sub_1DD7162FC();

        goto LABEL_61;
      }

      goto LABEL_57;
    case 0xBu:
      sub_1DD6ED690();
      sub_1DD6E5870();
      sub_1DD827938(v68);
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        sub_1DD827920(&v67);
        sub_1DD827938(v66);
        sub_1DD827920(v65);
        static ActionFailure.== infix(_:_:)(v66, v65);
        v40 = sub_1DD826A70();
        sub_1DD8003B4(v40);
        sub_1DD8003B4(v68);
        goto LABEL_61;
      }

      sub_1DD8003B4(v68);
      goto LABEL_57;
    default:
      sub_1DD6ED690();
      sub_1DD825C98();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1DD6FADF0();
LABEL_56:
        sub_1DD6E5ABC();
LABEL_57:
        sub_1DD824154(v1, &qword_1ECD117A8);
      }

      else
      {
        sub_1DD7006C0();
        sub_1DD6E59B8();
        sub_1DD825998();
        static ActionSuccess.== infix(_:_:)();
        sub_1DD825D6C();
        sub_1DD6E5ABC();
LABEL_60:
        sub_1DD6E5ABC();
LABEL_61:
        sub_1DD6E0900();
LABEL_62:
        sub_1DD6E5ABC();
      }

      goto LABEL_63;
  }
}

uint64_t sub_1DD7B8A00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DD8B66D0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7B8B18(char a1)
{
  if (!a1)
  {
    return 0x6449746E657665;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x65736E6F70736572;
}

uint64_t sub_1DD7B8B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B8A00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B8BA4(uint64_t a1)
{
  v2 = sub_1DD80046C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B8BE0(uint64_t a1)
{
  v2 = sub_1DD80046C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientActionResult.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  sub_1DD710A9C(&qword_1ECD117B0, &qword_1DD889730);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD80046C();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v18);
  sub_1DD6F9A4C();
  sub_1DD6E730C();
  sub_1DD8759D0();
  if (!v16)
  {
    type metadata accessor for MessagePayload.ClientActionResult(0);
    sub_1DD82553C();
    type metadata accessor for StatementOutcome(0);
    sub_1DD6DE08C();
    sub_1DD6E1E84(v19);
    sub_1DD6E730C();
    sub_1DD8759D0();
    sub_1DD6E0FF8();
    type metadata accessor for ResponseManifest(0);
    sub_1DD6FAC34();
    sub_1DD6E1E84(v20);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD875960();
  }

  v21 = sub_1DD825168();
  v22(v21);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ClientActionResult.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD11798, &qword_1DD889718);
  sub_1DD6DEA10(v3);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD82495C(v5, v26);
  type metadata accessor for StatementOutcome(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD702A64();
  sub_1DD874820();
  sub_1DD6E49A8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  v27 = sub_1DD710A9C(&qword_1ECD117C8, &qword_1DD889738);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  type metadata accessor for MessagePayload.ClientActionResult(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v14 = *(v13 + 24);
  type metadata accessor for ResponseManifest(0);
  sub_1DD825300();
  sub_1DD6E5E68(v15, v16, v17, v18);
  sub_1DD6FE770(v2);
  sub_1DD80046C();
  sub_1DD6E17D8();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
    sub_1DD824154(v12 + v14, &qword_1ECD11798);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v19);
    sub_1DD6F9A4C();
    sub_1DD8758D0();
    v20 = sub_1DD824B34();
    v21(v20);
    sub_1DD6DEC54();
    sub_1DD6DE08C();
    sub_1DD6E1E84(v22);
    sub_1DD705C1C();
    sub_1DD8758D0();
    sub_1DD6E0B14();
    sub_1DD6E59B8();
    sub_1DD6E0FF8();
    sub_1DD6FAC34();
    sub_1DD6E1E84(v23);
    sub_1DD827008();
    sub_1DD875860();
    v24 = sub_1DD6E37FC();
    v25(v24, v27);
    sub_1DD807414();
    sub_1DD701480();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v2);
    sub_1DD825C80();
    sub_1DD6E5ABC();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientCustom.tag.getter()
{
  v0 = sub_1DD6DDEFC();
  sub_1DD710E74(v0, v1);
  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ClientCustom.value.getter()
{
  v0 = sub_1DD6DDEFC();
  sub_1DD710E74(v0, v1);
  return sub_1DD6DDEFC();
}

void static MessagePayload.ClientCustom.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD827764();
  v6 = v5[4];
  v7 = v5[5];
  v9 = v8[4];
  v10 = v8[5];
  if (MEMORY[0x1E12B41A0](*v5, v5[1], *v8, v8[1]) & 1) != 0 && (v11 = sub_1DD6E6218(), (MEMORY[0x1E12B41A0](v11)) && (v6 == v9 ? (v12 = v7 == v10) : (v12 = 0), !v12))
  {
    sub_1DD6E8090();
    sub_1DD827720();

    sub_1DD875A30();
  }

  else
  {
    sub_1DD827720();
  }
}

uint64_t sub_1DD7B939C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001DD8B66F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7B94B0(char a1)
{
  if (!a1)
  {
    return 6775156;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0xD000000000000010;
}

uint64_t sub_1DD7B9508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B939C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B9530(uint64_t a1)
{
  v2 = sub_1DD8004C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B956C(uint64_t a1)
{
  v2 = sub_1DD8004C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientCustom.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD117D0, &qword_1DD889740);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  v5 = *v0;
  v6 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  sub_1DD6E6C94(v3);
  v7 = sub_1DD6EFF74();
  sub_1DD710E74(v7, v8);
  sub_1DD8004C0();
  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD792A28();
  sub_1DD8759D0();
  sub_1DD6E6658(v5, v6);
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD710E74(v9, v10);
    sub_1DD792A28();
    sub_1DD8265A8();
    sub_1DD8759D0();
    sub_1DD6E6658(v14, v13);
    sub_1DD826B30();
    sub_1DD8265A8();
    sub_1DD875970();
  }

  v11 = sub_1DD7029A8();
  v12(v11);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void MessagePayload.ClientCustom.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v5 = v4;
  sub_1DD710A9C(&qword_1ECD117E0, &qword_1DD889748);
  sub_1DD6E125C();
  v7 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v9 = sub_1DD8004C0();
  sub_1DD6ED2A4(&type metadata for MessagePayload.ClientCustom.CodingKeys, v10, v9);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    v11 = v5;
    sub_1DD717D38();
    sub_1DD826F48();
    sub_1DD6E710C();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    sub_1DD6FF8F4();
    sub_1DD826F48();
    sub_1DD6E710C();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    sub_1DD826B30();
    sub_1DD6EE778();
    v12 = sub_1DD875870();
    v14 = v13;
    (*(v7 + 8))(v3, v2);
    *v11 = v23;
    v11[1] = v24;
    v11[2] = v23;
    v11[3] = v24;
    v11[4] = v12;
    v11[5] = v14;
    v15 = sub_1DD8259E0();
    sub_1DD710E74(v15, v16);
    v17 = sub_1DD6E5DB0();
    sub_1DD710E74(v17, v18);

    sub_1DD6E1EC8(v0);
    v19 = sub_1DD8259E0();
    sub_1DD6E6658(v19, v20);
    v21 = sub_1DD6E5DB0();
    sub_1DD6E6658(v21, v22);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B99D0(uint64_t a1)
{
  v2 = sub_1DD800514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B9A0C(uint64_t a1)
{
  v2 = sub_1DD800514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientIdentifier.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD117E8, &qword_1DD889750);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD800514();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientInitiatedClientAction.toolId.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessagePayload.ClientInitiatedClientAction.parameters.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DD7B9C68(uint64_t a1)
{
  v2 = sub_1DD800568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B9CA4(uint64_t a1)
{
  v2 = sub_1DD800568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientInitiatedClientAction.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  sub_1DD710A9C(&qword_1ECD11800, &qword_1DD889760);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD826A64();
  v2 = sub_1DD8267D8();
  sub_1DD6E7320(v2);
  sub_1DD800568();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8249BC();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v3 = sub_1DD6DE58C();
  v4(v3);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B9E90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DD8B6710 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7B9F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B9E90(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7B9F5C(uint64_t a1)
{
  v2 = sub_1DD8005BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B9F98(uint64_t a1)
{
  v2 = sub_1DD8005BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ContextPrewarmRequest.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD11818, &qword_1DD889770);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD8005BC();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BA138(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6730 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7BA1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BA138(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7BA204(uint64_t a1)
{
  v2 = sub_1DD800610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BA240(uint64_t a1)
{
  v2 = sub_1DD800610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ContextPrewarmCompleted.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD11830, &qword_1DD889780);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD800610();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BA3CC(uint64_t a1)
{
  v2 = sub_1DD800664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BA408(uint64_t a1)
{
  v2 = sub_1DD800664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

IntelligenceFlow::MessagePayload::SafetyModeException __swiftcall MessagePayload.SafetyModeException.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_1DD7BA4C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7BA570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BA4C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7BA59C(uint64_t a1)
{
  v2 = sub_1DD8006B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BA5D8(uint64_t a1)
{
  v2 = sub_1DD8006B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.SafetyModeException.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD11858, &qword_1DD889798);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD8006B8();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875920();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BA7D0()
{
  v0 = sub_1DD6F355C();
  v1(v0);
  return sub_1DD826384();
}

uint64_t MessagePayload.ExternalAgentRequest.rewriteMetadataEventID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ExternalAgentRequest(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ExternalAgentRequest.rewriteMetadataInlined.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ExternalAgentRequest(v0);
  return sub_1DD6DDF9C();
}

void static MessagePayload.ExternalAgentRequest.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v4 = sub_1DD874820();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E535C();
  v6 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v6);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEBA0();
  v8 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE340();
  sub_1DD6ED118();
  static MessagePayload.RequestContent.== infix(_:_:)();
  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

  type metadata accessor for MessagePayload.ExternalAgentRequest(0);
  v11 = *(v8 + 48);
  sub_1DD825BF4();
  sub_1DD700E60();
  sub_1DD75366C();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (v12)
  {
    sub_1DD6E26E4(v2 + v11);
    if (v12)
    {
      sub_1DD824154(v2, &qword_1ECD0E540);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_1DD6EFF74();
  sub_1DD700E60();
  sub_1DD6E26E4(v2 + v11);
  if (v12)
  {
    v13 = sub_1DD6FF900();
    v14(v13, v4);
LABEL_10:
    sub_1DD824154(v2, &qword_1ECD10E30);
    goto LABEL_25;
  }

  v15 = sub_1DD6F444C();
  v16(v15);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v17);
  sub_1DD6E60FC();
  v18 = sub_1DD8750F0();
  v19 = sub_1DD770D4C();
  MEMORY[0xC00040128](v19);
  v20 = sub_1DD8258C4();
  MEMORY[0xC00040128](v20);
  sub_1DD824154(v2, &qword_1ECD0E540);
  if (v18)
  {
LABEL_12:
    sub_1DD8254DC();
    if (v1)
    {
      if (v3)
      {
        v21 = v0 == v2 && v1 == v3;
        if (v21 || (sub_1DD6E65D0(), (sub_1DD875A30() & 1) != 0))
        {
          sub_1DD6E21D0();
          sub_1DD7152B8();
          v22 = sub_1DD8249AC();
          sub_1DD6FF5F4(v22, v23, v24);
          v25 = sub_1DD824B34();
          sub_1DD6FF5F4(v25, v26, v27);
          v28 = sub_1DD8249AC();
          sub_1DD6FF5F4(v28, v29, v30);
          v31 = sub_1DD824B34();
          sub_1DD6FE2E0(v31, v32, v33);

          v34 = sub_1DD8249AC();
          sub_1DD6FE2E0(v34, v35, v36);
          goto LABEL_25;
        }

        v58 = sub_1DD8249AC();
        sub_1DD6FF5F4(v58, v59, v60);
        v61 = sub_1DD824B34();
        sub_1DD6FF5F4(v61, v62, v63);
        v64 = sub_1DD8249AC();
        sub_1DD6FF5F4(v64, v65, v66);
        v67 = sub_1DD824B34();
        sub_1DD6FE2E0(v67, v68, v69);

        v52 = sub_1DD8249AC();
LABEL_24:
        sub_1DD6FE2E0(v52, v53, v54);
        goto LABEL_25;
      }

      v43 = sub_1DD8249AC();
      sub_1DD6FF5F4(v43, v44, v45);
      sub_1DD826664();
      v46 = sub_1DD8249AC();
      sub_1DD6FF5F4(v46, v47, v48);
    }

    else
    {
      v37 = sub_1DD82551C();
      sub_1DD6FF5F4(v37, v38, v39);
      if (!v3)
      {
        sub_1DD826664();
        v55 = sub_1DD82551C();
        sub_1DD6FE2E0(v55, v56, v57);
        goto LABEL_25;
      }

      v40 = sub_1DD824B34();
      sub_1DD6FF5F4(v40, v41, v42);
    }

    v49 = sub_1DD8249AC();
    sub_1DD6FE2E0(v49, v50, v51);
    v52 = sub_1DD824B34();
    goto LABEL_24;
  }

LABEL_25:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7BAC24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001DD8B6500 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x80000001DD8B6520 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7BAD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BAC24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BAD6C(uint64_t a1)
{
  v2 = sub_1DD6FEA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BADA8(uint64_t a1)
{
  v2 = sub_1DD6FEA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.ExternalAgentTextQuery.queryRewriteMetadataEventId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ExternalAgentTextQuery(v0);
  return sub_1DD6DDF9C();
}

double sub_1DD7BAEC8()
{
  v0 = sub_1DD82580C();
  v2 = v1(v0);
  v3 = sub_1DD6E3A44(*(v2 + 24));
  sub_1DD6FE2E0(v3, v4, v5);
  *&result = sub_1DD82640C(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15).n128_u64[0];
  return result;
}

uint64_t MessagePayload.ExternalAgentTextQuery.queryRewriteMetadataInlined.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ExternalAgentTextQuery(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ExternalAgentTextQuery.init(query:)()
{
  sub_1DD8250F8();
  v3 = type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
  sub_1DD874820();
  sub_1DD6E0C90();
  result = sub_1DD6E5E68(v4, v5, v6, v7);
  v9 = (v2 + *(v3 + 24));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  *v2 = v1;
  v2[1] = v0;
  return result;
}

__n128 MessagePayload.ExternalAgentTextQuery.init(query:queryRewriteMetadataEventId:queryRewriteMetadataInlined:)()
{
  sub_1DD824C64();
  v14 = *v3;
  v4 = v3[1].n128_u64[0];
  v5 = type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v6, v7, v8, v9);
  sub_1DD82774C(*(v5 + 24));
  *(v5 + 16) = 0;
  *v2 = v1;
  v2[1] = v0;
  sub_1DD807414();
  v10 = sub_1DD826718();
  sub_1DD6FE2E0(v10, v11, v12);
  result = v14;
  *v5 = v14;
  *(v5 + 16) = v4;
  return result;
}

void static MessagePayload.ExternalAgentTextQuery.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v5 = sub_1DD874820();
  sub_1DD6DDEAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E535C();
  v9 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v9);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEBA0();
  v11 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE340();
  v13 = *v1 == *v0 && v1[1] == v0[1];
  if (!v13 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_29;
  }

  type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
  v14 = *(v11 + 48);
  sub_1DD825BF4();
  sub_1DD700E60();
  sub_1DD75366C();
  sub_1DD700E60();
  sub_1DD6E26E4(v3);
  if (v13)
  {
    sub_1DD6E26E4(v3 + v14);
    if (v13)
    {
      sub_1DD824154(v3, &qword_1ECD0E540);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_1DD6EFF74();
  sub_1DD700E60();
  sub_1DD6E26E4(v3 + v14);
  if (v15)
  {
    v16 = sub_1DD6FF900();
    v17(v16, v5);
LABEL_14:
    sub_1DD824154(v3, &qword_1ECD10E30);
    goto LABEL_29;
  }

  v18 = sub_1DD8252A0();
  v19(v18);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v20);
  sub_1DD6E60FC();
  v21 = sub_1DD8750F0();
  v22 = *(v7 + 8);
  v23 = sub_1DD770D4C();
  v22(v23);
  v24 = sub_1DD8258C4();
  v22(v24);
  sub_1DD824154(v3, &qword_1ECD0E540);
  if (v21)
  {
LABEL_16:
    sub_1DD8254DC();
    if (v2)
    {
      if (v4)
      {
        v25 = v1 == v3 && v2 == v4;
        if (v25 || (sub_1DD6E65D0(), (sub_1DD875A30() & 1) != 0))
        {
          sub_1DD6E21D0();
          sub_1DD7152B8();
          v26 = sub_1DD8249AC();
          sub_1DD6FF5F4(v26, v27, v28);
          v29 = sub_1DD824B34();
          sub_1DD6FF5F4(v29, v30, v31);
          v32 = sub_1DD8249AC();
          sub_1DD6FF5F4(v32, v33, v34);
          v35 = sub_1DD824B34();
          sub_1DD6FE2E0(v35, v36, v37);

          v38 = sub_1DD8249AC();
          sub_1DD6FE2E0(v38, v39, v40);
          goto LABEL_29;
        }

        v62 = sub_1DD8249AC();
        sub_1DD6FF5F4(v62, v63, v64);
        v65 = sub_1DD824B34();
        sub_1DD6FF5F4(v65, v66, v67);
        v68 = sub_1DD8249AC();
        sub_1DD6FF5F4(v68, v69, v70);
        v71 = sub_1DD824B34();
        sub_1DD6FE2E0(v71, v72, v73);

        v56 = sub_1DD8249AC();
LABEL_28:
        sub_1DD6FE2E0(v56, v57, v58);
        goto LABEL_29;
      }

      v47 = sub_1DD8249AC();
      sub_1DD6FF5F4(v47, v48, v49);
      sub_1DD826664();
      v50 = sub_1DD8249AC();
      sub_1DD6FF5F4(v50, v51, v52);
    }

    else
    {
      v41 = sub_1DD82551C();
      sub_1DD6FF5F4(v41, v42, v43);
      if (!v4)
      {
        sub_1DD826664();
        v59 = sub_1DD82551C();
        sub_1DD6FE2E0(v59, v60, v61);
        goto LABEL_29;
      }

      v44 = sub_1DD824B34();
      sub_1DD6FF5F4(v44, v45, v46);
    }

    v53 = sub_1DD8249AC();
    sub_1DD6FE2E0(v53, v54, v55);
    v56 = sub_1DD824B34();
    goto LABEL_28;
  }

LABEL_29:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7BB404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x80000001DD8B6750 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6770 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7BB520(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_1DD7BB584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BB404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BB5AC(uint64_t a1)
{
  v2 = sub_1DD80070C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BB5E8(uint64_t a1)
{
  v2 = sub_1DD80070C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ExternalAgentTextQuery.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6E86E0();
  sub_1DD710A9C(&qword_1ECD11880, &qword_1DD8897B8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v18 = sub_1DD80070C();
  sub_1DD6E1808(&type metadata for MessagePayload.ExternalAgentTextQuery.CodingKeys, v19, v18);
  sub_1DD705DBC();
  sub_1DD875970();
  if (!v14)
  {
    type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
    sub_1DD82553C();
    sub_1DD6FF738(v20);
    sub_1DD874820();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v21);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD875960();
    v22 = sub_1DD8253B4((v15 + *(v16 + 24)));
    sub_1DD6FF5F4(v22, v23, v24);
    sub_1DD800760();
    sub_1DD6E5334();
    sub_1DD875960();
    v25 = sub_1DD6FE710();
    sub_1DD6FE2E0(v25, v26, v27);
  }

  v28 = sub_1DD6EFFB4();
  v29(v28);
  sub_1DD826F90();
  sub_1DD826CF4();
}

void MessagePayload.ExternalAgentTextQuery.init(from:)()
{
  sub_1DD6DED2C();
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v6);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  v25 = sub_1DD710A9C(&qword_1ECD11898, &qword_1DD8897C0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBA0();
  type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
  sub_1DD6E6EB0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E535C();
  v10 = *(v0 + 28);
  sub_1DD874820();
  *&v26 = v10;
  sub_1DD825310();
  sub_1DD6E5E68(v11, v12, v13, v14);
  sub_1DD6FE184();
  sub_1DD6FE8B0(v5);
  sub_1DD80070C();
  sub_1DD6E4218();
  sub_1DD826FB4();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v5);
    sub_1DD824154(v2 + v10, &qword_1ECD0E540);
    v15 = sub_1DD827044();
    sub_1DD6FE2E0(v15, v16, v17);
  }

  else
  {
    *v2 = sub_1DD875870();
    v2[1] = v18;
    sub_1DD702E94();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v19);
    sub_1DD825A9C();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD6EFF88();
    sub_1DD8007B4();
    sub_1DD6E40F8();
    sub_1DD875860();
    v20 = sub_1DD6E37FC();
    v21(v20, v25);
    sub_1DD703E0C();
    v22 = sub_1DD827044();
    sub_1DD6FE2E0(v22, v23, v24);
    *v10 = v26;
    *(v10 + 16) = v3;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v5);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ExternalAgentSpeechQuery.Candidate.init(recognition:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t StatementID.init(index:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

__n128 MessagePayload.ExternalAgentSpeechQuery.Candidate.init(recognition:statementId:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  result = *(a3 + 2);
  *(a4 + 24) = result;
  return result;
}

uint64_t static MessagePayload.ExternalAgentSpeechQuery.Candidate.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = *(v2 + 16);
  v9 = *(v2 + 24);
  v8 = *(v2 + 32);
  v10 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v10 || (sub_1DD875A30(), result = sub_1DD6FE86C(), (v12 & 1) != 0))
  {
    if (v4 == v7)
    {
      if (v5)
      {
        if (v8)
        {
          if (v6 == v9 && v5 == v8)
          {
            return 1;
          }

          v14 = sub_1DD6E21D0();
          if (sub_1DD7013BC(v14, v15))
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD7BBBD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74696E676F636572 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7BBCA0(char a1)
{
  if (a1)
  {
    return 0x6E656D6574617473;
  }

  else
  {
    return 0x74696E676F636572;
  }
}

uint64_t sub_1DD7BBCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BBBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BBD18(uint64_t a1)
{
  v2 = sub_1DD800808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BBD54(uint64_t a1)
{
  v2 = sub_1DD800808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ExternalAgentSpeechQuery.Candidate.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD118A8, &qword_1DD8897C8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD6FE8B0(v2);
  sub_1DD800808();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD6E594C();
  sub_1DD825668();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD6FF8F4();
    sub_1DD70396C();
    sub_1DD6E5E30();

    sub_1DD8259D4();
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v4 = sub_1DD6DEA04();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.ExternalAgentSpeechQuery.Candidate.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  sub_1DD710A9C(&qword_1ECD118B8, &qword_1DD8897D0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v6 = sub_1DD800808();
  sub_1DD6ED2A4(&type metadata for MessagePayload.ExternalAgentSpeechQuery.Candidate.CodingKeys, v7, v6);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    LOBYTE(v10) = 0;
    sub_1DD825108();
    sub_1DD875870();
    sub_1DD825610();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD82499C();
    sub_1DD8758D0();
    v8 = sub_1DD6DFF30();
    v9(v8);
    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v10;
    *(v2 + 24) = v11;
    *(v2 + 32) = v12;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ExternalAgentSpeechQuery.candidates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MessagePayload.ExternalAgentSpeechQuery.queryRewriteMetadataEventId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ExternalAgentSpeechQuery.queryRewriteMetadataInlined.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v0);
  return sub_1DD6DDF9C();
}

void MessagePayload.ExternalAgentSpeechQuery.init(candidates:)(uint64_t a1)
{
  v3 = sub_1DD6F9E24();
  v4 = type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v3);
  sub_1DD701458();
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  sub_1DD6F448C(*(v4 + 24));
  *(v9 + 16) = 0;
  *v1 = a1;
}

__n128 MessagePayload.ExternalAgentSpeechQuery.init(candidates:queryRewriteMetadataEventId:queryRewriteMetadataInlined:)()
{
  sub_1DD8250F8();
  v3 = sub_1DD8272C8();
  v4 = type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v3);
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  sub_1DD82736C();
  *v1 = v0;
  sub_1DD807414();
  v9 = sub_1DD700D00();
  sub_1DD6FE2E0(v9, v10, v11);
  result = v13;
  *v4 = v13;
  *(v4 + 16) = v2;
  return result;
}

void static MessagePayload.ExternalAgentSpeechQuery.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v4 = sub_1DD874820();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E535C();
  v6 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v6);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEBA0();
  v8 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE340();
  sub_1DD715EA8();
  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

  type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(0);
  v11 = *(v8 + 48);
  sub_1DD825BF4();
  sub_1DD700E60();
  sub_1DD75366C();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (v12)
  {
    sub_1DD6E26E4(v2 + v11);
    if (v12)
    {
      sub_1DD824154(v2, &qword_1ECD0E540);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_1DD6EFF74();
  sub_1DD700E60();
  sub_1DD6E26E4(v2 + v11);
  if (v12)
  {
    v13 = sub_1DD6FF900();
    v14(v13, v4);
LABEL_10:
    sub_1DD824154(v2, &qword_1ECD10E30);
    goto LABEL_25;
  }

  v15 = sub_1DD6F444C();
  v16(v15);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v17);
  sub_1DD6E60FC();
  v18 = sub_1DD8750F0();
  v19 = sub_1DD770D4C();
  MEMORY[0xC00040128](v19);
  v20 = sub_1DD8258C4();
  MEMORY[0xC00040128](v20);
  sub_1DD824154(v2, &qword_1ECD0E540);
  if (v18)
  {
LABEL_12:
    sub_1DD8254DC();
    if (v1)
    {
      if (v3)
      {
        v21 = v0 == v2 && v1 == v3;
        if (v21 || (sub_1DD6E65D0(), (sub_1DD875A30() & 1) != 0))
        {
          sub_1DD6E21D0();
          sub_1DD7152B8();
          v22 = sub_1DD8249AC();
          sub_1DD6FF5F4(v22, v23, v24);
          v25 = sub_1DD824B34();
          sub_1DD6FF5F4(v25, v26, v27);
          v28 = sub_1DD8249AC();
          sub_1DD6FF5F4(v28, v29, v30);
          v31 = sub_1DD824B34();
          sub_1DD6FE2E0(v31, v32, v33);

          v34 = sub_1DD8249AC();
          sub_1DD6FE2E0(v34, v35, v36);
          goto LABEL_25;
        }

        v58 = sub_1DD8249AC();
        sub_1DD6FF5F4(v58, v59, v60);
        v61 = sub_1DD824B34();
        sub_1DD6FF5F4(v61, v62, v63);
        v64 = sub_1DD8249AC();
        sub_1DD6FF5F4(v64, v65, v66);
        v67 = sub_1DD824B34();
        sub_1DD6FE2E0(v67, v68, v69);

        v52 = sub_1DD8249AC();
LABEL_24:
        sub_1DD6FE2E0(v52, v53, v54);
        goto LABEL_25;
      }

      v43 = sub_1DD8249AC();
      sub_1DD6FF5F4(v43, v44, v45);
      sub_1DD826664();
      v46 = sub_1DD8249AC();
      sub_1DD6FF5F4(v46, v47, v48);
    }

    else
    {
      v37 = sub_1DD82551C();
      sub_1DD6FF5F4(v37, v38, v39);
      if (!v3)
      {
        sub_1DD826664();
        v55 = sub_1DD82551C();
        sub_1DD6FE2E0(v55, v56, v57);
        goto LABEL_25;
      }

      v40 = sub_1DD824B34();
      sub_1DD6FF5F4(v40, v41, v42);
    }

    v49 = sub_1DD8249AC();
    sub_1DD6FE2E0(v49, v50, v51);
    v52 = sub_1DD824B34();
    goto LABEL_24;
  }

LABEL_25:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7BC670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x80000001DD8B6750 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6770 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7BC798(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x74616469646E6163;
  }
}

uint64_t sub_1DD7BC804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BC670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BC82C(uint64_t a1)
{
  v2 = sub_1DD80085C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BC868(uint64_t a1)
{
  v2 = sub_1DD80085C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ExternalAgentSpeechQuery.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD118C0, &qword_1DD8897D8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v17 = sub_1DD80085C();
  sub_1DD6E1808(&type metadata for MessagePayload.ExternalAgentSpeechQuery.CodingKeys, v18, v17);
  sub_1DD710A9C(&qword_1ECD118D0, &qword_1DD8897E0);
  sub_1DD8008B0();
  sub_1DD792A28();
  sub_1DD6E63A8();
  sub_1DD8759D0();
  if (!v14)
  {
    type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(0);
    sub_1DD82553C();
    sub_1DD874820();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v19);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD875960();
    v27 = sub_1DD82595C(*(v15 + 24));
    v28 = v21;
    v29 = *(v20 + 16);
    sub_1DD6EFF88();
    sub_1DD6FF5F4(v22, v23, v24);
    sub_1DD800760();
    sub_1DD792A28();
    sub_1DD824DE8();
    sub_1DD875960();
    sub_1DD6FE2E0(v27, v28, v29);
  }

  v25 = sub_1DD6EFFB4();
  v26(v25);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ExternalAgentSpeechQuery.init(from:)()
{
  sub_1DD6DED2C();
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v6);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  sub_1DD710A9C(&qword_1ECD118E8, &qword_1DD8897E8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E7258();
  type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(0);
  sub_1DD6E6EB0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E535C();
  v10 = *(v0 + 28);
  sub_1DD874820();
  *&v25 = v10;
  sub_1DD825300();
  sub_1DD6E5E68(v11, v12, v13, v14);
  sub_1DD6FE184();
  sub_1DD824D14(v5);
  sub_1DD80085C();
  sub_1DD7039CC();
  sub_1DD826F60();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v5);
    sub_1DD824154(v2 + v10, &qword_1ECD0E540);
    v16 = sub_1DD827044();
    sub_1DD6FE2E0(v16, v17, v18);
  }

  else
  {
    v15 = sub_1DD710A9C(&qword_1ECD118D0, &qword_1DD8897E0);
    sub_1DD800988();
    sub_1DD6E40F8();
    sub_1DD6EE298();
    sub_1DD8758D0();
    *v2 = v26;
    sub_1DD702E94();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v19);
    sub_1DD825A9C();
    sub_1DD702AB4();
    sub_1DD6EE298();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD6EFF88();
    sub_1DD8007B4();
    sub_1DD6E40F8();
    sub_1DD6F09C4();
    sub_1DD875860();
    v20 = sub_1DD825B90();
    v21(v20);
    sub_1DD703E0C();
    v22 = sub_1DD827044();
    sub_1DD6FE2E0(v22, v23, v24);
    *v3 = v25;
    *(v3 + 16) = v15;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v5);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BCE10()
{
  v2 = sub_1DD6DE290();
  v4 = *(v3(v2) + 20);

  *(v1 + v4) = v0;
  return result;
}

uint64_t MessagePayload.ExternalAgentOutcome.responseText.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ExternalAgentOutcome(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7BCE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = sub_1DD6EE78C();
  v8 = type metadata accessor for ActionOutcome(v7);
  v9 = sub_1DD6DEA10(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E535C();
  sub_1DD6E2208();
  sub_1DD6E5C7C();
  sub_1DD6E5870();
  return a5(v5);
}

uint64_t MessagePayload.ExternalAgentOutcome.outcome.setter()
{
  sub_1DD6E0900();
  sub_1DD6E5ABC();
  ActionOutcome.asStatementOutcome.getter(v0);
  sub_1DD6DE600();
  return sub_1DD6E5ABC();
}

void (*MessagePayload.ExternalAgentOutcome.outcome.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = sub_1DD82661C(a1);
  v3 = type metadata accessor for ActionOutcome(v2);
  sub_1DD6DEA10(v3);
  v5 = *(v4 + 64);
  *(v1 + 8) = sub_1DD7281CC(v5);
  v6 = sub_1DD7281CC(v5);
  *(v1 + 16) = v6;
  StatementOutcome.asActionOutcome.getter(v6);
  return sub_1DD7BCFD4;
}

void sub_1DD7BCFD4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    sub_1DD6ED118();
    sub_1DD6E5870();
    sub_1DD6E0900();
    sub_1DD6E5ABC();
    ActionOutcome.asStatementOutcome.getter(v4);
    sub_1DD6DE600();
    sub_1DD6E5ABC();
  }

  else
  {
    sub_1DD6E0900();
    sub_1DD6E5ABC();
    ActionOutcome.asStatementOutcome.getter(v4);
  }

  sub_1DD6E5ABC();
  free(v3);

  free(v2);
}

uint64_t MessagePayload.ExternalAgentOutcome.init(statementOutcome:responseText:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1DD6E0B14();
  sub_1DD6E59B8();
  result = type metadata accessor for MessagePayload.ExternalAgentOutcome(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t MessagePayload.ExternalAgentOutcome.init(outcome:)@<X0>(_OWORD *a1@<X8>)
{
  ActionOutcome.asStatementOutcome.getter(a1);
  sub_1DD6DE600();
  sub_1DD6E5ABC();
  result = type metadata accessor for MessagePayload.ExternalAgentOutcome(0);
  *(a1 + *(result + 20)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DD7BD164(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t))
{
  sub_1DD6E1F34();
  if ((v6() & 1) == 0)
  {
    return 0;
  }

  v7 = (a4)(0);
  v8 = sub_1DD826EDC(*(v7 + 20));

  return a5(v8);
}

uint64_t sub_1DD7BD1EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DD8B66D0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000074786554)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7BD2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BD1EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BD2E8(uint64_t a1)
{
  v2 = sub_1DD7035D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BD324(uint64_t a1)
{
  v2 = sub_1DD7035D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BD3B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696769726FLL && a2 == 0xED00007972657551;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365746972776572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7BD484(char a1)
{
  if (a1)
  {
    return 0x7365746972776572;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t sub_1DD7BD4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BD3B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BD4F8(uint64_t a1)
{
  v2 = sub_1DD800A60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BD534(uint64_t a1)
{
  v2 = sub_1DD800A60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD7BD5A4()
{
  sub_1DD6DED2C();
  v11 = v1;
  v3 = v2;
  v5 = sub_1DD825C68(v2, v4);
  sub_1DD710A9C(v5, v6);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = sub_1DD824D14(v3);
  v11(v8);
  sub_1DD827524();
  sub_1DD875BB0();
  sub_1DD825870();
  sub_1DD825668();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD6DEC54();
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD824C1C(&qword_1EE015DC0);
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6DE58C();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void sub_1DD7BD720()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD825A04();
  v6 = sub_1DD825C68(v4, v5);
  sub_1DD710A9C(v6, v7);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDFE4();
  v9 = sub_1DD6E7320(v0);
  v3(v9);
  sub_1DD827014();
  sub_1DD827524();
  sub_1DD825680();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6E5374();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD82552C();
    sub_1DD6FF744(&qword_1EE015DB8, MEMORY[0x1E69E6190]);
    sub_1DD824B6C();
    sub_1DD8258B8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v10 = sub_1DD6DEA2C();
    v11(v10);
    sub_1DD8277B8();

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BD920(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696769726FLL && a2 == 0xEF74736575716552;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365746972776572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7BD9F0(char a1)
{
  if (a1)
  {
    return 0x7365746972776572;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t sub_1DD7BDA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BD920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BDA64(uint64_t a1)
{
  v2 = sub_1DD800AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BDAA0(uint64_t a1)
{
  v2 = sub_1DD800AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.ClientUndoRedoRequest.operation.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for MessagePayload.ClientUndoRedoRequest(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t MessagePayload.ClientUndoRedoRequest.operation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MessagePayload.ClientUndoRedoRequest(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t MessagePayload.ClientUndoRedoRequest.operation.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientUndoRedoRequest(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientUndoRedoRequest.statementId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ClientUndoRedoRequest(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientUndoRedoRequest.init(token:operation:statementId:)()
{
  sub_1DD826938();
  v2 = *v1;
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  sub_1DD874820();
  sub_1DD6DF448();
  v7 = sub_1DD6E21D0();
  v8(v7);
  result = type metadata accessor for MessagePayload.ClientUndoRedoRequest(0);
  *(v0 + *(result + 20)) = v2;
  v10 = v0 + *(result + 24);
  *v10 = v4;
  *(v10 + 8) = v5;
  *(v10 + 16) = v6;
  return result;
}

uint64_t sub_1DD7BDD44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 1868852853 && a2 == 0xE400000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1868850546 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7BDE08(char a1)
{
  if (a1)
  {
    return 1868850546;
  }

  else
  {
    return 1868852853;
  }
}

uint64_t sub_1DD7BDE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BDD44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BDE54(uint64_t a1)
{
  v2 = sub_1DD800B08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BDE90(uint64_t a1)
{
  v2 = sub_1DD800B08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BDECC(uint64_t a1)
{
  v2 = sub_1DD800B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BDF08(uint64_t a1)
{
  v2 = sub_1DD800B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BDF44(uint64_t a1)
{
  v2 = sub_1DD800BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BDF80(uint64_t a1)
{
  v2 = sub_1DD800BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientUndoRedoRequest.UndoOperation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  sub_1DD826784();
  sub_1DD710A9C(&qword_1ECD11940, &qword_1DD889820);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD82480C(v26, v34);
  sub_1DD710A9C(&qword_1ECD11948, &qword_1DD889828);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD11950, &qword_1DD889830);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E7258();
  v29 = *v23;
  sub_1DD824CF8(v24);
  sub_1DD800B08();
  sub_1DD7039CC();
  sub_1DD700954();
  sub_1DD875BB0();
  if (v29)
  {
    sub_1DD6FF8F4();
    sub_1DD800B5C();
    sub_1DD824848();
    sub_1DD875910();
    v30 = sub_1DD6DED98();
  }

  else
  {
    sub_1DD800BB0();
    sub_1DD826808();
    sub_1DD824848();
    sub_1DD875910();
    v30 = sub_1DD6E4290();
  }

  v31(v30);
  v32 = sub_1DD825570();
  v33(v32);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void MessagePayload.ClientUndoRedoRequest.UndoOperation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  sub_1DD826C50(v23);
  v54 = sub_1DD710A9C(&qword_1ECD11970, &qword_1DD889838);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E17C8();
  v25 = sub_1DD710A9C(&qword_1ECD11978, &qword_1DD889840);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DDFE4();
  sub_1DD710A9C(&qword_1ECD11980, &qword_1DD889848);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DEBA0();
  sub_1DD6E6C94(v21);
  sub_1DD800B08();
  sub_1DD6E4218();
  sub_1DD82718C(v28, v29, v30);
  if (!v20)
  {
    v55 = v21;
    sub_1DD826378();
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826B7C();
    if (!v31)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v32 == v33)
      {
        __break(1u);
        return;
      }

      v40 = *(v39 + v38);
      sub_1DD6F43D8(v34, v35, v36, v37, v38);
      sub_1DD6ED830();
      sub_1DD6E0194();
      v42 = v41;
      swift_unknownObjectRelease();
      if (!(v42 >> 1))
      {
        if (v40)
        {
          sub_1DD6FF8F4();
          sub_1DD800B5C();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v43 = sub_1DD825038();
          v45 = v54;
        }

        else
        {
          sub_1DD800BB0();
          sub_1DD826E4C();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v43 = sub_1DD705C68();
          v45 = v25;
        }

        v44(v43, v45);
        v52 = sub_1DD6E60FC();
        v53(v52);
        sub_1DD826EE8();
        goto LABEL_12;
      }
    }

    v46 = sub_1DD875740();
    sub_1DD6E41BC(v46, MEMORY[0x1E69E6B28]);
    sub_1DD82702C();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v22 = &type metadata for MessagePayload.ClientUndoRedoRequest.UndoOperation;
    sub_1DD826378();
    v47 = sub_1DD875810();
    sub_1DD6DF100(v47);
    sub_1DD8250B8();
    v48 = sub_1DD826518();
    v49(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = sub_1DD6E37A0();
    v51(v50);
    v21 = v55;
  }

  sub_1DD6E1EC8(v21);
LABEL_12:
  sub_1DD6DF120();
  sub_1DD6E0C78();
}

BOOL static MessagePayload.ClientUndoRedoRequest.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if ((_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MessagePayload.ClientUndoRedoRequest(0);
  sub_1DD826CC0();
  if (!v5)
  {
    return 0;
  }

  sub_1DD825240();
  if (!v5)
  {
    return 0;
  }

  sub_1DD826E58();
  if (v2)
  {
    if (!v0)
    {
      return 0;
    }

    sub_1DD825B9C(v1);
    v5 = v5 && v3 == v4;
    return v5 || (sub_1DD875A30() & 1) != 0;
  }

  return !v0;
}

uint64_t sub_1DD7BE660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7BE778(char a1)
{
  if (!a1)
  {
    return 0x6E656B6F74;
  }

  if (a1 == 1)
  {
    return 0x6F6974617265706FLL;
  }

  return 0x6E656D6574617473;
}

uint64_t sub_1DD7BE7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BE660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BE808(uint64_t a1)
{
  v2 = sub_1DD800C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BE844(uint64_t a1)
{
  v2 = sub_1DD800C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientUndoRedoRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD11988, &qword_1DD889850);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v16 = sub_1DD800C04();
  sub_1DD6E1808(&type metadata for MessagePayload.ClientUndoRedoRequest.CodingKeys, v17, v16);
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v18);
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v14)
  {
    type metadata accessor for MessagePayload.ClientUndoRedoRequest(0);
    sub_1DD825AA8();
    sub_1DD6FF8F4();
    sub_1DD800C58();
    sub_1DD792A28();
    sub_1DD824DE8();
    sub_1DD8759D0();
    sub_1DD6EFF88();
    sub_1DD70396C();
    sub_1DD6E5E30();

    sub_1DD8259D4();
    sub_1DD6E72A8();
    sub_1DD8759D0();
  }

  v19 = sub_1DD6EFFB4();
  v20(v19);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ClientUndoRedoRequest.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = sub_1DD874820();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  v14 = v5;
  sub_1DD710A9C(&qword_1ECD119A0, &qword_1DD889858);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DD700BA4();
  v8 = type metadata accessor for MessagePayload.ClientUndoRedoRequest(v7);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E535C();
  sub_1DD6E49C0(v0);
  sub_1DD800C04();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    LOBYTE(v15) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v10);
    sub_1DD825A9C();
    sub_1DD8758D0();
    sub_1DD826A58();
    v11(v1, v14, v3);
    sub_1DD6FF8F4();
    sub_1DD800CAC();
    sub_1DD6E40F8();
    sub_1DD8250A8();
    sub_1DD8758D0();
    *(v1 + *(v8 + 20)) = 0;
    sub_1DD6EFF88();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD8250A8();
    sub_1DD8758D0();
    v12 = sub_1DD824D98();
    v13(v12);
    sub_1DD700E1C(v15);
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

double MessagePayload.ActionSummaryUpdate.summary.getter()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for MessagePayload.ActionSummaryUpdate(v1);
  sub_1DD6E0508();
  v3 = v2[1];
  v4 = v2[2];
  *v0 = *v2;
  v0[1] = v3;
  v0[2] = v4;

  return result;
}

__n128 MessagePayload.ActionSummaryUpdate.summary.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = v1 + *(type metadata accessor for MessagePayload.ActionSummaryUpdate(0) + 20);

  *v4 = v3;
  result = *(a1 + 1);
  *(v4 + 8) = result;
  return result;
}

uint64_t MessagePayload.ActionSummaryUpdate.summary.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.ActionSummaryUpdate(v0);
  return sub_1DD6DDF9C();
}

__n128 MessagePayload.ActionSummaryUpdate.init(originActionRequestId:summary:)()
{
  sub_1DD8250F8();
  v3 = *v2;
  sub_1DD874820();
  sub_1DD6DF448();
  v8 = *(v0 + 8);
  v4 = sub_1DD6E87AC();
  v5(v4);
  v6 = v1 + *(type metadata accessor for MessagePayload.ActionSummaryUpdate(0) + 20);
  *v6 = v3;
  result = v8;
  *(v6 + 8) = v8;
  return result;
}

BOOL static MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.== infix(_:_:)()
{
  sub_1DD827600();
  if (!v5)
  {
    if (!v4)
    {
      if (v1 != v3 || v0 != v2)
      {
        v18 = sub_1DD7013BC(v1, v0);
        v19 = sub_1DD6E0C60();
        sub_1DD800D00(v19, v20, 0);
        v21 = sub_1DD6DE464();
        sub_1DD800D00(v21, v22, v23);
        v24 = sub_1DD6DE464();
        sub_1DD800D28(v24, v25, v26);
        v27 = sub_1DD6E0C60();
        v29 = 0;
        goto LABEL_17;
      }

      sub_1DD800D00(v1, v0, 0);
      v52 = sub_1DD6DE464();
      sub_1DD800D00(v52, v53, v54);
      v55 = sub_1DD6DE464();
      sub_1DD800D28(v55, v56, v57);
      v49 = sub_1DD6DE464();
LABEL_23:
      sub_1DD800D28(v49, v50, v51);
      return 1;
    }

LABEL_19:
    v37 = sub_1DD6E0C60();
    sub_1DD800D00(v37, v38, v4);
    v39 = sub_1DD6E21D0();
    sub_1DD800D00(v39, v40, v5);
    v41 = sub_1DD6E21D0();
    sub_1DD800D28(v41, v42, v5);
    v43 = sub_1DD6E0C60();
    sub_1DD800D28(v43, v44, v4);
    return 0;
  }

  if (v5 == 1)
  {
    if (v4 == 1)
    {
      sub_1DD705564();
      sub_1DD7152B8();
      v7 = v6;
      v8 = sub_1DD6E0C60();
      sub_1DD800D00(v8, v9, 1);
      v10 = sub_1DD6E21D0();
      sub_1DD800D00(v10, v11, 1);
      v12 = sub_1DD6E21D0();
      sub_1DD800D28(v12, v13, 1);
      v14 = sub_1DD6E0C60();
      sub_1DD800D28(v14, v15, 1);
      return v7 & 1;
    }

    goto LABEL_19;
  }

  if (v4 != 2)
  {
    goto LABEL_19;
  }

  if (v1 == v3 && v0 == v2)
  {
    sub_1DD800D00(v1, v0, 2);
    v45 = sub_1DD6E21D0();
    sub_1DD800D00(v45, v46, 2);
    v47 = sub_1DD6E21D0();
    sub_1DD800D28(v47, v48, 2);
    v49 = sub_1DD6E21D0();
    v51 = 2;
    goto LABEL_23;
  }

  v18 = sub_1DD7013BC(v1, v0);
  v31 = sub_1DD6E0C60();
  sub_1DD800D00(v31, v32, 2);
  v33 = sub_1DD6E21D0();
  sub_1DD800D00(v33, v34, 2);
  v35 = sub_1DD6E21D0();
  sub_1DD800D28(v35, v36, 2);
  v27 = sub_1DD6E0C60();
  v29 = 2;
LABEL_17:
  sub_1DD800D28(v27, v28, v29);
  return (v18 & 1) != 0;
}

uint64_t sub_1DD7BF0A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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