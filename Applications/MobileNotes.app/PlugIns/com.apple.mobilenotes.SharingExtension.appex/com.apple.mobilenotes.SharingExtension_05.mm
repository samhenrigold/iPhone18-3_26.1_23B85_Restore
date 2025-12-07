uint64_t sub_10008ECA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
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

uint64_t sub_10008ED00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10008ED7C()
{
  result = qword_100108280;
  if (!qword_100108280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108280);
  }

  return result;
}

uint64_t sub_10008EDD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10008EE18()
{
  result = qword_100108298;
  if (!qword_100108298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108298);
  }

  return result;
}

uint64_t sub_10008EE6C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_100108238, &qword_1000CD520);
    sub_10008EDD0(a2, _s14AudioRecordingV17TranscriptSegmentVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008EF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53656E694C706F74 && a2 == 0xEE007972616D6D75;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x567972616D6D7573 && a2 == 0xEE006E6F69737265 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656D67617266 && a2 == 0xE900000000000073 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65526C6C61437369 && a2 == 0xEF676E6964726F63 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657079546C6C6163 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000B5F20();

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

uint64_t sub_10008F124@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100030480(&qword_1001082C8, &qword_1000CD6C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v30 - v8;
  v63 = 1;
  v60 = 1;
  v10 = a1[3];
  v39 = a1;
  sub_1000458B4(a1, v10);
  sub_10008F7B8();
  sub_1000B6010();
  if (v2)
  {
    v64 = v2;
    v38 = 0;
    sub_100035DA8(v39);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = v63;
    *v54 = *v62;
    *&v54[3] = *&v62[3];
    v55 = v38;
    v56 = 2;
    *v57 = *v61;
    *&v57[3] = *&v61[3];
    v58 = 0;
    v59 = v60;
    return sub_10008E680(&v46);
  }

  else
  {
    LOBYTE(v40) = 0;
    sub_10004E560();
    sub_1000B5DB0();
    v37 = v46;
    v35 = v47;
    v36 = v48;
    LOBYTE(v40) = 1;
    sub_1000B5DB0();
    v38 = a2;
    v13 = v46;
    v12 = v47;
    v14 = v48;
    LOBYTE(v46) = 2;
    v33 = sub_1000B5DA0();
    v31 = v13;
    v32 = v12;
    v34 = v14;
    v63 = v15 & 1;
    sub_100030480(&qword_1001082D8, &qword_1000CD6D0);
    LOBYTE(v40) = 3;
    sub_10008F80C(&qword_1001082E0, &qword_1001082E8, &unk_1000CD630, &protocol conformance descriptor for <A> [A]);
    sub_1000B5DB0();
    v16 = v46;
    LOBYTE(v46) = 4;
    HIDWORD(v30) = sub_1000B5D80();
    v17 = v16;
    v45 = 5;
    v18 = sub_1000B5DA0();
    v64 = 0;
    v20 = v19;
    v21 = v18;
    (*(v6 + 8))(v9, v5);
    v20 &= 1u;
    v60 = v20;
    *&v40 = v37;
    v22 = v35;
    *(&v40 + 1) = v35;
    v23 = v36;
    *&v41 = v36;
    v24 = v31;
    *(&v41 + 1) = v31;
    v25 = v32;
    *&v42 = v32;
    *(&v42 + 1) = v34;
    *&v43 = v33;
    v26 = v63;
    BYTE8(v43) = v63;
    *v44 = v16;
    LOBYTE(v16) = BYTE4(v30);
    v44[8] = BYTE4(v30);
    *&v44[16] = v21;
    v44[24] = v20;
    sub_10008E6B0(&v40, &v46);
    sub_100035DA8(v39);
    v46 = v37;
    v47 = v22;
    v48 = v23;
    v49 = v24;
    v50 = v25;
    v51 = v34;
    v52 = v33;
    v53 = v26;
    v55 = v17;
    v56 = v16;
    v58 = v21;
    v59 = v20;
    result = sub_10008E680(&v46);
    v27 = v43;
    v28 = v38;
    v38[2] = v42;
    v28[3] = v27;
    v28[4] = *v44;
    *(v28 + 73) = *&v44[9];
    v29 = v41;
    *v28 = v40;
    v28[1] = v29;
  }

  return result;
}

unint64_t sub_10008F7B8()
{
  result = qword_1001082D0;
  if (!qword_1001082D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001082D0);
  }

  return result;
}

uint64_t sub_10008F80C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_1001082D8, &qword_1000CD6D0);
    sub_10008EDD0(a2, _s14AudioRecordingV8FragmentVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008F8DC()
{
  result = qword_100108308;
  if (!qword_100108308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108308);
  }

  return result;
}

unint64_t sub_10008F934()
{
  result = qword_100108310;
  if (!qword_100108310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108310);
  }

  return result;
}

unint64_t sub_10008F98C()
{
  result = qword_100108318;
  if (!qword_100108318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108318);
  }

  return result;
}

unint64_t sub_10008F9E4()
{
  result = qword_100108320;
  if (!qword_100108320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108320);
  }

  return result;
}

unint64_t sub_10008FA3C()
{
  result = qword_100108328;
  if (!qword_100108328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108328);
  }

  return result;
}

unint64_t sub_10008FA94()
{
  result = qword_100108330;
  if (!qword_100108330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108330);
  }

  return result;
}

unint64_t sub_10008FAEC()
{
  result = qword_100108338;
  if (!qword_100108338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108338);
  }

  return result;
}

unint64_t sub_10008FB44()
{
  result = qword_100108340;
  if (!qword_100108340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108340);
  }

  return result;
}

unint64_t sub_10008FB9C()
{
  result = qword_100108348;
  if (!qword_100108348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108348);
  }

  return result;
}

uint64_t sub_10008FBF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000C7A20 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000B5F20();

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

uint64_t sub_10008FD70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656B61657073 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000B5F20();

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

uint64_t sub_10008FEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000B5FB0();
  sub_1000B56A0();
  v6 = sub_1000B5FE0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1000B5F20() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10008FFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B4DB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  __chkstk_darwin(v45, v9);
  v11 = &v35[-v10];
  v12 = type metadata accessor for MarkdownStyle(0);
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15, v18);
  v20 = &v35[-v19];
  if (!*(a2 + 16))
  {
    return 0;
  }

  v39 = v5;
  sub_1000B5FB0();
  sub_1000997C4(v46);
  v21 = sub_1000B5FE0();
  v22 = a2 + 56;
  v23 = -1 << *(a2 + 32);
  v24 = v21 & ~v23;
  if (((*(a2 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    return 0;
  }

  v40 = v17;
  v44 = a1;
  v25 = ~v23;
  v26 = *(v13 + 72);
  v42 = v25;
  v43 = v26;
  v27 = (v39 + 6);
  v41 = (v39 + 1);
  v38 = v8;
  v39 += 4;
  while (1)
  {
    sub_1000A49C8(*(a2 + 48) + v43 * v24, v20, type metadata accessor for MarkdownStyle);
    v28 = *(v45 + 48);
    sub_1000A49C8(v20, v11, type metadata accessor for MarkdownStyle);
    sub_1000A49C8(v44, &v11[v28], type metadata accessor for MarkdownStyle);
    v29 = *v27;
    v30 = (*v27)(v11, 6, v4);
    if (v30 > 2)
    {
      if (v30 > 4)
      {
        if (v30 == 5)
        {
          sub_1000A4A30(v20, type metadata accessor for MarkdownStyle);
          if (v29(&v11[v28], 6, v4) == 5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1000A4A30(v20, type metadata accessor for MarkdownStyle);
          if (v29(&v11[v28], 6, v4) == 6)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v30 == 3)
      {
        sub_1000A4A30(v20, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1000A4A30(v20, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 4)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    if (v30)
    {
      if (v30 == 1)
      {
        sub_1000A4A30(v20, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1000A4A30(v20, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 2)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    v31 = v40;
    sub_1000A49C8(v11, v40, type metadata accessor for MarkdownStyle);
    if (!v29(&v11[v28], 6, v4))
    {
      break;
    }

    sub_1000A4A30(v20, type metadata accessor for MarkdownStyle);
    (*v41)(v31, v4);
    v25 = v42;
LABEL_23:
    sub_100036320(v11, &qword_1001080A0, &qword_1000CCEC0);
LABEL_24:
    v24 = (v24 + 1) & v25;
    if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      return 0;
    }
  }

  v32 = v38;
  (*v39)(v38, &v11[v28], v4);
  v36 = sub_1000B4D40();
  v37 = v22;
  v33 = *v41;
  (*v41)(v32, v4);
  sub_1000A4A30(v20, type metadata accessor for MarkdownStyle);
  v33(v31, v4);
  v22 = v37;
  v25 = v42;
  if ((v36 & 1) == 0)
  {
    sub_1000A4A30(v11, type metadata accessor for MarkdownStyle);
    goto LABEL_24;
  }

LABEL_29:
  sub_1000A4A30(v11, type metadata accessor for MarkdownStyle);
  return 1;
}

uint64_t sub_1000905D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_100030C64(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_100036320(v13, &qword_100106E30, &unk_1000CAB60);
}

void *sub_100090684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100030480(&qword_1001083B0, &unk_1000CDA60);
  result = sub_1000B5D00();
  v9 = 0;
  v41 = a1;
  v42 = result;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v40 = result + 8;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v41 + 48) + 16 * v20);
      v44 = *v21;
      v22 = *(*(v41 + 56) + 8 * v20);
      v45 = v21[1];

      v23 = v22;
      v24 = [v23 identifier];
      if (v24)
      {
        v25 = v24;
        sub_1000B5620();
      }

      v26 = [v23 typeUTI];
      if (v26)
      {
        v27 = v26;
        sub_1000B5620();
      }

      sub_1000362AC(0, &qword_100108378, ICTTAttachment_ptr);
      v28 = sub_1000B5940();

      *(v40 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = v42;
      v29 = (v42[6] + 16 * v20);
      *v29 = v44;
      v29[1] = v45;
      *(v42[7] + 8 * v20) = v28;
      v30 = v42[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v42[2] = v32;
      v15 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        v33 = sub_100092514(result, a2, a3, a4, a5, a6, a7);

        return v33;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000908F8()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100108350);
  sub_100036380(v0, qword_100108350);
  return sub_1000B5510();
}

uint64_t sub_100090944(uint64_t a1, char *a2, CGColor *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = a7;
  v12 = _s16AttributedStringV9AttributeVMa(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a6;

  sub_100090ACC(v18, a2, a3, a6, v7, v16);
  v19 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_100033E90(0, v19[2] + 1, 1, v19);
    *(a5 + 16) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_100033E90((v21 > 1), v22 + 1, 1, v19);
    *(a5 + 16) = v19;
  }

  v19[2] = v22 + 1;
  return sub_1000A47A4(v16, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, _s16AttributedStringV9AttributeVMa);
}

void sub_100090ACC(uint64_t a1@<X0>, char *a2@<X1>, CGColor *a3@<X2>, void *a4@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v241 = a5;
  v264 = a4;
  v265 = a2;
  v262 = a3;
  v266 = a1;
  v7 = sub_100030480(&qword_100108368, &unk_1000CDA10);
  __chkstk_darwin(v7 - 8, v8);
  v240 = &v234 - v9;
  v10 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  __chkstk_darwin(v10 - 8, v11);
  v269 = &v234 - v12;
  v13 = sub_1000B4DB0();
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v13, v15);
  v235 = &v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v254 = &v234 - v19;
  v20 = sub_100030480(&qword_100108370, &unk_1000CDA20);
  __chkstk_darwin(v20 - 8, v21);
  v246 = &v234 - v22;
  v23 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v23 - 8, v24);
  v253.i64[0] = &v234 - v25;
  v26 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  __chkstk_darwin(v26 - 8, v27);
  v29 = &v234 - v28;
  v30 = sub_1000B4F00();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30, v32);
  v248 = &v234 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _s16AttributedStringV9AttributeVMa(0);
  v35 = v34[5];
  v259 = v31;
  v36 = *(v31 + 56);
  v247 = v35;
  v261 = v36;
  v36(&a6[v35], 1, 1, v30);
  v37 = v34[6];
  v38 = sub_1000B4EA0();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v251 = v38;
  v252.i64[0] = v37;
  v249 = (v39 + 56);
  v250 = v40;
  (v40)(&a6[v37], 1, 1);
  v41 = &a6[v34[7]];
  *v41 = xmmword_1000CB720;
  *(v41 + 1) = 0u;
  *(v41 + 2) = 0u;
  *(v41 + 3) = 0u;
  *(v41 + 8) = 0;
  v42 = v34[8];
  v43 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v244 = v43;
  v245 = v42;
  v242 = v44 + 56;
  v243 = v45;
  (v45)(&a6[v42], 1, 1);
  v257 = v34[9];
  a6[v257] = 5;
  v46 = v34[10];
  v260 = v14;
  v47 = *(v14 + 56);
  v256 = v46;
  v263 = v13;
  v267 = v47;
  v268 = v14 + 56;
  v47(&a6[v46], 1, 1, v13);
  v258 = v34[11];
  a6[v258] = 5;
  v48 = &a6[v34[12]];
  *v48 = 0;
  *(v48 + 1) = 0;
  v255 = v48;
  v49 = v34[13];
  v50 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v238 = v50;
  v239 = v49;
  v236 = v51 + 56;
  v237 = v52;
  (v52)(&a6[v49], 1, 1);
  v53 = v265;
  v54 = v266;
  v265 = a6;
  v55 = v262;
  *a6 = v53;
  *(a6 + 1) = v55;
  if (!*(v54 + 16))
  {
    goto LABEL_6;
  }

  v56 = ICTTAttributeNameReplicaID;
  v57 = sub_100063358(v56);
  if ((v58 & 1) == 0)
  {

LABEL_6:
    v261(v29, 1, 1, v30);
    goto LABEL_7;
  }

  sub_100030378(*(v54 + 56) + 32 * v57, &v279);

  v59 = swift_dynamicCast();
  v60 = v261;
  v261(v29, v59 ^ 1u, 1, v30);
  v61 = v259;
  if ((*(v259 + 48))(v29, 1, v30) != 1)
  {
    v262 = *(v61 + 32);
    v62 = v248;
    (v262)(v248, v29, v30);
    v63 = v265;
    v64 = v247;
    sub_100036320(&v265[v247], &qword_100106FD0, &qword_1000CAE50);
    (v262)(&v63[v64], v62, v30);
    v60(&v63[v64], 0, 1, v30);
    goto LABEL_8;
  }

LABEL_7:
  sub_100036320(v29, &qword_100106FD0, &qword_1000CAE50);
LABEL_8:
  v65 = v269;
  if (!*(v54 + 16))
  {
    goto LABEL_12;
  }

  v66 = ICTTAttributeNameTimestamp;
  v67 = sub_100063358(v66);
  if (v68)
  {
    sub_100030378(*(v54 + 56) + 32 * v67, &v279);

    if (swift_dynamicCast())
    {
      v69 = v253.i64[0];
      sub_1000B4E50();
      v250(v69, 0, 1, v251);
      sub_1000521D8(v69, &v265[v252.i64[0]], &qword_100106E38, &unk_1000CB730);
    }

LABEL_12:
    if (!*(v54 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  if (!*(v54 + 16))
  {
    goto LABEL_29;
  }

LABEL_15:
  v70 = ICTTAttributeNameFont;
  v71 = sub_100063358(v70);
  if ((v72 & 1) == 0)
  {

    if (!*(v54 + 16))
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  sub_100030378(*(v54 + 56) + 32 * v71, v284);

  sub_1000362AC(0, &qword_100108398, ICTTFont_ptr);
  if (swift_dynamicCast())
  {
    v73 = v270;
    v74 = *(v41 + 1);
    v279 = *v41;
    v280 = v74;
    v75 = *(v41 + 2);
    v76 = *(v41 + 3);
    v281 = v75;
    v282 = v76;
    v283 = *(v41 + 8);
    v77 = *(&v279 + 1);
    if (*(&v279 + 1) == 1)
    {
      v261 = 0;
      v262 = 0;
      v77 = 0;
      v259 = 0;
      v253.i64[0] = 0;
      v78 = 0;
      v79 = 0;
      v75.i64[0] = 0x2000200020002;
      v252 = v75;
      v80 = 1;
      v81 = 1;
    }

    else
    {
      v261 = v280;
      v262 = v279;
      v75.i32[0] = *(&v280 + 9);
      v252 = vmovl_u8(*v75.i8);
      v259 = v281.i64[0];
      v78 = *(&v282 + 1);
      v253.i64[0] = v282;
      v79 = v283;
      v81 = v281.i8[8];
      v80 = BYTE8(v280);
    }

    v82 = v80 & 1;
    v273 = v80 & 1;
    v83 = v81 & 1;
    v272 = v81 & 1;
    v84 = *(v41 + 3);
    v276 = *(v41 + 2);
    v277 = v84;
    v278 = *(v41 + 8);
    v85 = *(v41 + 1);
    v274 = *v41;
    v275 = v85;
    sub_100030C74(&v279, v271, &qword_100108390, &qword_1000CDA38);
    sub_100036320(&v274, &qword_100108390, &qword_1000CDA38);
    v86 = v261;
    *v41 = v262;
    *(v41 + 1) = v77;
    *(v41 + 2) = v86;
    v41[24] = v82;
    *(v41 + 25) = vuzp1_s8(*v252.i8, *v252.i8).u32[0];
    *(v41 + 4) = v259;
    v41[40] = v83;
    *(v41 + 6) = v253.i64[0];
    *(v41 + 7) = v78;
    *(v41 + 8) = v79;
    v87 = v73;
    v88 = [(CGColor *)v73 fontName];
    if (v88)
    {
      v89 = v88;
      v90 = sub_1000B5620();
      v92 = v91;
    }

    else
    {
      v90 = 0;
      v92 = 0;
    }

    v54 = v266;
    v65 = v269;

    *v41 = v90;
    *(v41 + 1) = v92;
    if (v92 != 1)
    {
      [(CGColor *)v87 pointSize];
      *(v41 + 2) = v93;
      v41[24] = 0;
      if (*(v41 + 1) != 1)
      {
        v41[25] = [(CGColor *)v87 fontHints]& 1;
        if (*(v41 + 1) != 1)
        {
          v233 = [(CGColor *)v87 fontHints];

          v41[26] = (v233 & 2) != 0;
          if (!*(v54 + 16))
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }
      }
    }
  }

LABEL_29:
  if (!*(v54 + 16))
  {
    goto LABEL_37;
  }

LABEL_30:
  v94 = ICTTAttributeNameFontHints;
  v95 = sub_100063358(v94);
  if (v96)
  {
    sub_100030378(*(v54 + 56) + 32 * v95, v284);

    if (swift_dynamicCast())
    {
      v97 = v270;
      v98 = *(v41 + 1);
      v279 = *v41;
      v280 = v98;
      v99 = *(v41 + 3);
      v281 = *(v41 + 2);
      v282 = v99;
      v283 = *(v41 + 8);
      v100 = *(&v279 + 1);
      if (*(&v279 + 1) == 1)
      {
        v261 = 0;
        v262 = 0;
        v100 = 0;
        v259 = 0;
        v253.i64[0] = 0;
        v250 = 0;
        v251 = 0;
        v252.i32[0] = 2;
        v101 = 1;
        v102 = 2;
        v103 = 1;
      }

      else
      {
        v261 = v280;
        v262 = v279;
        v252.i32[0] = BYTE11(v280);
        v102 = BYTE12(v280);
        v259 = v281.i64[0];
        v253.i64[0] = v282;
        v250 = v283;
        v251 = *(&v282 + 1);
        v103 = v281.i8[8];
        v101 = BYTE8(v280);
      }

      v104 = v101 & 1;
      v273 = v101 & 1;
      v105 = v103 & 1;
      v272 = v103 & 1;
      v106 = *(v41 + 3);
      v276 = *(v41 + 2);
      v277 = v106;
      v278 = *(v41 + 8);
      v107 = *(v41 + 1);
      v274 = *v41;
      v275 = v107;
      sub_100030C74(&v279, v271, &qword_100108390, &qword_1000CDA38);
      sub_100036320(&v274, &qword_100108390, &qword_1000CDA38);
      v108 = v261;
      *v41 = v262;
      *(v41 + 1) = v100;
      *(v41 + 2) = v108;
      v41[24] = v104;
      v41[27] = v252.i8[0];
      v41[28] = v102;
      *(v41 + 4) = v259;
      v41[40] = v105;
      v109 = v250;
      v110 = v251;
      *(v41 + 6) = v253.i64[0];
      *(v41 + 7) = v110;
      *(v41 + 8) = v109;
      v41[25] = v97 & 1;
      v41[26] = (v97 & 2) != 0;
      v65 = v269;
    }
  }

  else
  {
  }

LABEL_37:
  if (*(v54 + 16))
  {
    v111 = ICTTAttributeNameUnderline;
    v112 = sub_100063358(v111);
    if (v113)
    {
      sub_100030378(*(v54 + 56) + 32 * v112, v284);

      if (swift_dynamicCast())
      {
        LODWORD(v262) = v270;
        v114 = *(v41 + 1);
        v279 = *v41;
        v280 = v114;
        v115 = *(v41 + 3);
        v281 = *(v41 + 2);
        v282 = v115;
        v283 = *(v41 + 8);
        v116 = *(&v279 + 1);
        if (*(&v279 + 1) == 1)
        {
          v261 = 0;
          v116 = 0;
          v259 = 0;
          v253.i64[0] = 0;
          v250 = 0;
          v251 = 0;
          v249 = 0;
          v252.i32[0] = 2;
          v117 = 1;
          v118 = 2;
          v119 = 2;
          v120 = 1;
        }

        else
        {
          v261 = v279;
          v259 = v280;
          v252.i32[0] = BYTE9(v280);
          v118 = BYTE10(v280);
          v119 = BYTE12(v280);
          v253.i64[0] = v281.i64[0];
          v250 = *(&v282 + 1);
          v251 = v282;
          v249 = v283;
          v120 = v281.i8[8];
          v117 = BYTE8(v280);
        }

        v131 = v117 & 1;
        v273 = v117 & 1;
        v132 = v120 & 1;
        v272 = v120 & 1;
        v133 = *(v41 + 3);
        v276 = *(v41 + 2);
        v277 = v133;
        v278 = *(v41 + 8);
        v134 = *(v41 + 1);
        v274 = *v41;
        v275 = v134;
        sub_100030C74(&v279, v271, &qword_100108390, &qword_1000CDA38);
        sub_100036320(&v274, &qword_100108390, &qword_1000CDA38);
        *v41 = v261;
        *(v41 + 1) = v116;
        *(v41 + 2) = v259;
        v41[24] = v131;
        v41[25] = v252.i8[0];
        v41[26] = v118;
        v41[28] = v119;
        *(v41 + 4) = v253.i64[0];
        v41[40] = v132;
        v135 = v250;
        *(v41 + 6) = v251;
        *(v41 + 7) = v135;
        *(v41 + 8) = v249;
        v41[27] = v262;
        v65 = v269;
        if (!*(v54 + 16))
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }
  }

  if (!*(v54 + 16))
  {
    goto LABEL_54;
  }

LABEL_44:
  v121 = ICTTAttributeNameStrikethrough;
  v122 = sub_100063358(v121);
  if (v123)
  {
    sub_100030378(*(v54 + 56) + 32 * v122, v284);

    if (swift_dynamicCast())
    {
      LODWORD(v262) = v270;
      v124 = *(v41 + 1);
      v279 = *v41;
      v280 = v124;
      v125 = *(v41 + 3);
      v281 = *(v41 + 2);
      v282 = v125;
      v283 = *(v41 + 8);
      v126 = *(&v279 + 1);
      if (*(&v279 + 1) == 1)
      {
        v261 = 0;
        v126 = 0;
        v259 = 0;
        v253.i64[0] = 0;
        v250 = 0;
        v251 = 0;
        v249 = 0;
        v252.i32[0] = 2;
        v127 = 1;
        v128 = 2;
        v129 = 2;
        v130 = 1;
      }

      else
      {
        v261 = v279;
        v259 = v280;
        v252.i32[0] = BYTE9(v280);
        v128 = BYTE10(v280);
        v129 = BYTE11(v280);
        v253.i64[0] = v281.i64[0];
        v250 = *(&v282 + 1);
        v251 = v282;
        v249 = v283;
        v130 = v281.i8[8];
        v127 = BYTE8(v280);
      }

      v136 = v127 & 1;
      v273 = v127 & 1;
      v137 = v130 & 1;
      v272 = v130 & 1;
      v138 = *(v41 + 3);
      v276 = *(v41 + 2);
      v277 = v138;
      v278 = *(v41 + 8);
      v139 = *(v41 + 1);
      v274 = *v41;
      v275 = v139;
      sub_100030C74(&v279, v271, &qword_100108390, &qword_1000CDA38);
      sub_100036320(&v274, &qword_100108390, &qword_1000CDA38);
      *v41 = v261;
      *(v41 + 1) = v126;
      *(v41 + 2) = v259;
      v41[24] = v136;
      v41[25] = v252.i8[0];
      v41[26] = v128;
      v41[27] = v129;
      *(v41 + 4) = v253.i64[0];
      v41[40] = v137;
      v140 = v250;
      *(v41 + 6) = v251;
      *(v41 + 7) = v140;
      *(v41 + 8) = v249;
      v41[28] = v262;
      v65 = v269;
    }
  }

  else
  {
  }

LABEL_54:
  if (!*(v54 + 16))
  {
    goto LABEL_60;
  }

  v141 = ICTTAttributeNameSuperscript;
  v142 = sub_100063358(v141);
  if ((v143 & 1) == 0)
  {

LABEL_60:
    if (!*(v54 + 16))
    {
      goto LABEL_83;
    }

    goto LABEL_61;
  }

  sub_100030378(*(v54 + 56) + 32 * v142, v284);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_60;
  }

  v262 = v270;
  v144 = *(v41 + 1);
  v279 = *v41;
  v280 = v144;
  v145 = *(v41 + 2);
  v146 = *(v41 + 3);
  v281 = v145;
  v282 = v146;
  v283 = *(v41 + 8);
  v147 = *(&v279 + 1);
  if (*(&v279 + 1) == 1)
  {
    v261 = 0;
    v147 = 0;
    v259 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v145.i64[0] = 0x2000200020002;
    v253 = v145;
    v151 = 1;
  }

  else
  {
    v261 = v279;
    v259 = v280;
    v145.i32[0] = *(&v280 + 9);
    v253 = vmovl_u8(*v145.i8);
    v149 = *(&v282 + 1);
    v148 = v282;
    v150 = v283;
    v151 = BYTE8(v280);
  }

  v185 = v151 & 1;
  v273 = v151 & 1;
  v186 = *(v41 + 3);
  v276 = *(v41 + 2);
  v277 = v186;
  v278 = *(v41 + 8);
  v187 = *(v41 + 1);
  v274 = *v41;
  v275 = v187;
  sub_100030C74(&v279, v271, &qword_100108390, &qword_1000CDA38);
  sub_100036320(&v274, &qword_100108390, &qword_1000CDA38);
  *v41 = v261;
  *(v41 + 1) = v147;
  *(v41 + 2) = v259;
  v41[24] = v185;
  *(v41 + 25) = vuzp1_s8(*v253.i8, *v253.i8).u32[0];
  *(v41 + 6) = v148;
  *(v41 + 7) = v149;
  *(v41 + 8) = v150;
  *(v41 + 4) = v262;
  v41[40] = 0;
  v65 = v269;
  if (!*(v54 + 16))
  {
LABEL_83:
    v174 = v263;
    v173 = v264;
    if (!*(v54 + 16))
    {
LABEL_89:
      v267(v65, 1, 1, v174);
LABEL_90:
      sub_100036320(v65, &qword_100106F88, &qword_1000CAE20);
      if (!*(v54 + 16))
      {
        goto LABEL_87;
      }

      goto LABEL_91;
    }

    goto LABEL_84;
  }

LABEL_61:
  v152 = ICTTAttributeNameForegroundColor;
  v153 = sub_100063358(v152);
  if (v154)
  {
    sub_100030378(*(v54 + 56) + 32 * v153, v284);

    v155 = *(v41 + 1);
    v279 = *v41;
    v280 = v155;
    v156 = *(v41 + 2);
    v157 = *(v41 + 3);
    v281 = v156;
    v282 = v157;
    v283 = *(v41 + 8);
    v158 = *(&v279 + 1);
    if (*(&v279 + 1) == 1)
    {
      v261 = 0;
      v262 = 0;
      v158 = 0;
      v259 = 0;
      v253.i64[0] = 0;
      v159 = 0;
      v160 = 0;
      v156.i64[0] = 0x2000200020002;
      v252 = v156;
      v161 = 1;
      v162 = 1;
    }

    else
    {
      v261 = v280;
      v262 = v279;
      v156.i32[0] = *(&v280 + 9);
      v252 = vmovl_u8(*v156.i8);
      v259 = v281.i64[0];
      v159 = *(&v282 + 1);
      v253.i64[0] = v282;
      v160 = v283;
      v162 = v281.i8[8];
      v161 = BYTE8(v280);
    }

    v163 = v161 & 1;
    v273 = v161 & 1;
    v164 = v162 & 1;
    v272 = v162 & 1;
    v165 = *(v41 + 3);
    v276 = *(v41 + 2);
    v277 = v165;
    v278 = *(v41 + 8);
    v166 = *(v41 + 1);
    v274 = *v41;
    v275 = v166;
    sub_100030C74(&v279, v271, &qword_100108390, &qword_1000CDA38);
    sub_100036320(&v274, &qword_100108390, &qword_1000CDA38);
    v167 = v261;
    *v41 = v262;
    *(v41 + 1) = v158;
    *(v41 + 2) = v167;
    v41[24] = v163;
    *(v41 + 25) = vuzp1_s8(*v252.i8, *v252.i8).u32[0];
    *(v41 + 4) = v259;
    v41[40] = v164;
    *(v41 + 6) = v253.i64[0];
    *(v41 + 7) = v159;
    *(v41 + 8) = v160;
    sub_100030378(v284, v271);
    type metadata accessor for CGColor(0);
    swift_dynamicCast();
    v168 = sub_1000A2674(v270);
    v170 = v169;
    v172 = v171;
    sub_100035DA8(v284);
    sub_10004E4C8(*(v41 + 6), *(v41 + 7), *(v41 + 8));
    *(v41 + 6) = v168;
    *(v41 + 7) = v170;
    *(v41 + 8) = v172;
    v65 = v269;
  }

  else
  {
  }

  v174 = v263;
  v173 = v264;
  if (*(v54 + 16))
  {
    v175 = ICTTAttributeNameParagraphStyle;
    v176 = sub_100063358(v175);
    if (v177)
    {
      sub_100030378(*(v54 + 56) + 32 * v176, &v279);

      sub_1000362AC(0, &qword_100108388, ICTTParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v178 = v274;
        v179 = v246;
        sub_100095B2C(v178, v246);
        v243(v179, 0, 1, v244);
        v180 = v265;
        sub_1000521D8(v179, &v265[v245], &qword_100108370, &unk_1000CDA20);
        v181 = [v178 writingDirection];

        v182 = v181 + 1;
        if (v181 == 3)
        {
          v183 = 4;
        }

        else
        {
          v183 = 5;
        }

        if (v182 >= 4)
        {
          v184 = v183;
        }

        else
        {
          v184 = 0x2030100u >> (8 * v182);
        }

        v180[v258] = v184;
        if (!*(v54 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_84;
      }
    }

    else
    {
    }
  }

  if (!*(v54 + 16))
  {
    goto LABEL_89;
  }

LABEL_84:
  v188 = ICTTNSLinkAttributeName;
  v189 = sub_100063358(v188);
  if ((v190 & 1) == 0)
  {

    goto LABEL_89;
  }

  sub_100030378(*(v54 + 56) + 32 * v189, &v279);

  v191 = swift_dynamicCast();
  v267(v65, v191 ^ 1u, 1, v174);
  if ((*(v260 + 48))(v65, 1, v174) == 1)
  {
    goto LABEL_90;
  }

  v192 = *(v260 + 32);
  v193 = v254;
  v192(v254, v65, v174);
  v194 = v265;
  v195 = v256;
  sub_100036320(&v265[v256], &qword_100106F88, &qword_1000CAE20);
  v192(&v194[v195], v193, v174);
  v267(&v194[v195], 0, 1, v174);
  if (!*(v54 + 16))
  {
LABEL_87:
    v279 = 0u;
    v280 = 0u;
    goto LABEL_105;
  }

LABEL_91:
  v196 = ICTTNSWritingDirectionAttributeName;
  v197 = sub_100063358(v196);
  if (v198)
  {
    sub_100030378(*(v54 + 56) + 32 * v197, &v279);
  }

  else
  {
    v279 = 0u;
    v280 = 0u;
  }

  if (*(&v280 + 1))
  {
    if (swift_dynamicCast())
    {
      v199 = v274 + 1;
      if (v274 == 3)
      {
        v200 = 4;
      }

      else
      {
        v200 = 5;
      }

      if (v199 < 4)
      {
        v200 = 0x2030100u >> (8 * v199);
      }

      v265[v258] = v200;
    }

    if (!*(v54 + 16))
    {
      goto LABEL_106;
    }

    goto LABEL_103;
  }

LABEL_105:
  sub_100036320(&v279, &qword_100106E30, &unk_1000CAB60);
  if (!*(v54 + 16))
  {
LABEL_106:
    v279 = 0u;
    v280 = 0u;
    goto LABEL_114;
  }

LABEL_103:
  v201 = ICTTAttributeNameEmphasis;
  v202 = sub_100063358(v201);
  if (v203)
  {
    sub_100030378(*(v54 + 56) + 32 * v202, &v279);
  }

  else
  {
    v279 = 0u;
    v280 = 0u;
  }

  if (*(&v280 + 1))
  {
    if (swift_dynamicCast())
    {
      v204 = ICEmphasisColorTypeForTag();
      v205 = sub_1000A2B74(v204);
      v265[v257] = v205;
    }

    if (!*(v54 + 16))
    {
      goto LABEL_115;
    }

    goto LABEL_112;
  }

LABEL_114:
  sub_100036320(&v279, &qword_100106E30, &unk_1000CAB60);
  if (!*(v54 + 16))
  {
LABEL_115:
    v279 = 0u;
    v280 = 0u;
    goto LABEL_118;
  }

LABEL_112:
  v206 = ICTTNSAttachmentAttributeName;
  v207 = sub_100063358(v206);
  if (v208)
  {
    sub_100030378(*(v54 + 56) + 32 * v207, &v279);
  }

  else
  {
    v279 = 0u;
    v280 = 0u;
  }

LABEL_118:

  if (!*(&v280 + 1))
  {

    sub_100036320(&v279, &qword_100106E30, &unk_1000CAB60);
    return;
  }

  sub_1000362AC(0, &qword_100108378, ICTTAttachment_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_139;
  }

  v209 = v274;
  if ([objc_opt_self() isInlineAttachment:v274])
  {
    if (v173)
    {
      v210 = v173;
      v211 = [v209 inlineAttachmentInContext:v210];
      if (v211)
      {
        v212 = v211;
        v213 = v240;
        sub_100097158(v212, v240);
        v237(v213, 0, 1, v238);
        sub_1000521D8(v213, &v265[v239], &qword_100108368, &unk_1000CDA10);
        if ((v241 & 1) != 0 && (v214 = [v212 tokenContentIdentifier]) != 0 && (v215 = v214, v216 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier(), v215, v216))
        {
          v217 = v235;
          sub_1000B4D50();

          v218 = v265;
          v219 = v256;
          sub_100036320(&v265[v256], &qword_100106F88, &qword_1000CAE20);
          (*(v260 + 32))(&v218[v219], v217, v174);
          v267(&v218[v219], 0, 1, v174);
        }

        else
        {
        }

        return;
      }
    }

    if (qword_100106A88 != -1)
    {
      swift_once();
    }

    v226 = sub_1000B5530();
    sub_100036380(v226, qword_100108350);
    v227 = v209;
    v228 = sub_1000B5520();
    v229 = sub_1000B5910();

    if (os_log_type_enabled(v228, v229))
    {
      v230 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      *v230 = 138412290;
      *(v230 + 4) = v227;
      *v231 = v227;
      v232 = v227;
      _os_log_impl(&_mh_execute_header, v228, v229, "Cannot resolve inline attachment — skipping {attachment: %@}", v230, 0xCu);
      sub_100036320(v231, &qword_100108380, &qword_1000CDA30);
    }

    else
    {
    }

LABEL_139:

    return;
  }

  v220 = [v209 attachmentIdentifier];
  if (v220)
  {
    v221 = v220;
    v222 = sub_1000B5620();
    v224 = v223;
  }

  else
  {

    v222 = 0;
    v224 = 0;
  }

  v225 = v255;
  *v255 = v222;
  v225[1] = v224;
}

uint64_t sub_100092444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1000A2F08(&qword_100106B78, type metadata accessor for Key, &unk_1000CA6EC);
  v9 = sub_1000B5580();
  v8(v9, a3, a4, a5);
}

id sub_100092514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a4;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v9 = _s16AttributedStringV9AttributeVMa(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8, v11);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = objc_allocWithZone(NSMutableAttributedString);
  v15 = sub_1000B55F0();
  v16 = [v14 initWithString:v15];

  v17 = *(a7 + 16);
  if (v17)
  {
    v18 = a7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    while (1)
    {
      sub_1000A49C8(v18, v13, _s16AttributedStringV9AttributeVMa);
      sub_100092780(v27, v28, v29, v30);
      if (v7)
      {
        break;
      }

      type metadata accessor for Key(0);
      sub_1000A2F08(&qword_100106B78, type metadata accessor for Key, &unk_1000CA6EC);
      isa = sub_1000B5570().super.isa;

      v22 = *v13;
      v21 = v13[1];
      v32.location = [v16 ic_range];
      v32.length = v23;
      v31.location = v22;
      v31.length = v21;
      v24 = NSIntersectionRange(v31, v32);
      [v16 addAttributes:isa range:{v24.location, v24.length}];

      sub_1000A4A30(v13, _s16AttributedStringV9AttributeVMa);
      v18 += v19;
      if (!--v17)
      {
        return v16;
      }
    }

    sub_1000A4A30(v13, _s16AttributedStringV9AttributeVMa);
  }

  return v16;
}

unint64_t sub_100092780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v113 = a3;
  v112 = a2;
  v121 = a1;
  v5 = sub_100030480(&qword_100108368, &unk_1000CDA10);
  __chkstk_darwin(v5 - 8, v6);
  v124 = &v109 - v7;
  v123 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123, v8);
  v114 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  __chkstk_darwin(v10 - 8, v11);
  v118 = &v109 - v12;
  v120 = sub_1000B4DB0();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120, v13);
  v111 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100030480(&qword_100108370, &unk_1000CDA20);
  __chkstk_darwin(v15 - 8, v16);
  v117 = &v109 - v17;
  v18 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v109 - v20;
  v116 = sub_1000B4EA0();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116, v22);
  v110 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  __chkstk_darwin(v24 - 8, v25);
  v27 = &v109 - v26;
  v28 = sub_1000B4F00();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28, v30);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s16AttributedStringV9AttributeVMa(0);
  v34 = v4;
  v35 = (v4 + v33[7]);
  v36 = v35[1];
  if (v36 == 1)
  {
    v37 = sub_100030764(_swiftEmptyArrayStorage);
  }

  else
  {
    v130 = *v35;
    v131 = v36;
    v38 = *(v35 + 2);
    v132 = *(v35 + 1);
    v133 = v38;
    v134 = *(v35 + 3);
    v135 = v35[8];
    v37 = sub_100093FD4();
  }

  v39 = v37;
  sub_100030C74(v4 + v33[5], v27, &qword_100106FD0, &qword_1000CAE50);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_100036320(v27, &qword_100106FD0, &qword_1000CAE50);
  }

  else
  {
    (*(v29 + 32))(v32, v27, v28);
    v40 = ICTTAttributeNameReplicaID;
    v129 = v28;
    v41 = sub_1000A4A90(&v128);
    (*(v29 + 16))(v41, v32, v28);
    sub_100030C64(&v128, v127);
    v42 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_1000655A8(v127, v42, isUniquelyReferenced_nonNull_native);

    (*(v29 + 8))(v32, v28);
    v39 = v136;
  }

  v44 = v126;
  v45 = v34;
  sub_100030C74(v34 + v33[6], v21, &qword_100106E38, &unk_1000CB730);
  v46 = v115;
  v47 = v116;
  if ((*(v115 + 48))(v21, 1, v116) == 1)
  {
    sub_100036320(v21, &qword_100106E38, &unk_1000CB730);
  }

  else
  {
    v48 = *(v46 + 32);
    v126 = v45;
    v49 = v44;
    v50 = v110;
    v48(v110, v21, v47);
    v51 = ICTTAttributeNameTimestamp;
    sub_1000B4E60();
    v53 = v52 + *(v125 + 8);
    v129 = &type metadata for Double;
    *&v128 = v53;
    sub_100030C64(&v128, v127);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_1000655A8(v127, v51, v54);

    v55 = v50;
    v44 = v49;
    v45 = v126;
    (*(v46 + 8))(v55, v47);
    v39 = v136;
  }

  v56 = v117;
  v57 = v33;
  sub_100030C74(v45 + v33[8], v117, &qword_100108370, &unk_1000CDA20);
  v58 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v59 = (*(*(v58 - 8) + 48))(v56, 1, v58);
  v60 = v120;
  if (v59 == 1)
  {
    sub_100036320(v56, &qword_100108370, &unk_1000CDA20);
    v61 = *(v45 + v33[11]);
    v62 = v119;
    if (*(v45 + v57[11]) > 2u)
    {
      if (v61 == 3)
      {
        v63 = 1;
      }

      else
      {
        if (v61 != 4)
        {
          goto LABEL_34;
        }

        v63 = 3;
      }
    }

    else if (v61)
    {
      if (v61 == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = 2;
      }
    }

    else
    {
      v63 = -1;
    }

    v67 = ICTTNSWritingDirectionAttributeName;
    v129 = &type metadata for Int;
    *&v128 = v63;
    sub_100030C64(&v128, v127);
    v68 = v67;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_1000655A8(v127, v68, v69);

    v39 = v136;
  }

  else
  {
    v64 = sub_100095EFC();
    sub_1000A4A30(v56, _s16AttributedStringV14ParagraphStyleVMa);
    v65 = *(v45 + v33[11]);
    v62 = v119;
    if (*(v45 + v57[11]) > 2u)
    {
      if (v65 == 3)
      {
        v66 = 1;
      }

      else if (v65 == 4)
      {
        v66 = 3;
      }

      else
      {
        v66 = [v64 writingDirection];
      }
    }

    else if (v65)
    {
      if (v65 == 1)
      {
        v66 = 0;
      }

      else
      {
        v66 = 2;
      }
    }

    else
    {
      v66 = -1;
    }

    [v64 setWritingDirection:v66];
    v70 = ICTTAttributeNameParagraphStyle;
    [v64 copy];
    sub_1000B5B00();
    swift_unknownObjectRelease();
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *&v127[0] = v39;
    sub_1000655A8(&v128, v70, v71);

    v39 = *&v127[0];
  }

LABEL_34:
  v72 = v118;
  sub_100030C74(v45 + v57[10], v118, &qword_100106F88, &qword_1000CAE20);
  if ((*(v62 + 48))(v72, 1, v60) == 1)
  {
    sub_100036320(v72, &qword_100106F88, &qword_1000CAE20);
  }

  else
  {
    v73 = v111;
    (*(v62 + 32))(v111, v72, v60);
    v74 = ICTTNSLinkAttributeName;
    sub_1000B4CF0(v75);
    v77 = v76;
    v129 = sub_1000362AC(0, &qword_1001083B8, NSURL_ptr);
    *&v128 = v77;
    sub_100030C64(&v128, v127);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_1000655A8(v127, v74, v78);

    (*(v62 + 8))(v73, v60);
    v39 = v136;
  }

  v79 = *(v45 + v57[9]);
  if (v79 != 5)
  {
    v80 = ICTTAttributeNameEmphasis;
    v81 = qword_1000CEB70[v79];
    v129 = &type metadata for Int;
    *&v128 = v81;
    sub_100030C64(&v128, v127);
    v82 = v80;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_1000655A8(v127, v82, v83);

    v39 = v136;
  }

  v84 = v121;
  v85 = (v45 + v57[12]);
  v86 = v85[1];
  if (v86)
  {
    if (*(v121 + 16))
    {
      v87 = sub_10006320C(*v85, v86);
      if (v88)
      {
        v89 = *(*(v84 + 56) + 8 * v87);
        v90 = ICTTNSAttachmentAttributeName;
        v129 = sub_1000362AC(0, &qword_100108378, ICTTAttachment_ptr);
        *&v128 = v89;
        sub_100030C64(&v128, v127);
        v91 = v89;
        v92 = v90;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v136 = v39;
        sub_1000655A8(v127, v92, v93);

        v39 = v136;
      }
    }
  }

  v94 = v124;
  sub_100030C74(v45 + v57[13], v124, &qword_100108368, &unk_1000CDA10);
  if ((*(v122 + 48))(v94, 1, v123) == 1)
  {
    sub_100036320(v94, &qword_100108368, &unk_1000CDA10);
  }

  else
  {
    v95 = v114;
    sub_1000A47A4(v94, v114, _s16AttributedStringV16InlineAttachmentVMa);
    v96 = sub_1000973CC(v112, v113, v125);
    if (v44)
    {
      sub_1000A4A30(v95, _s16AttributedStringV16InlineAttachmentVMa);
    }

    else
    {
      v97 = v96;
      v98 = [v96 identifier];
      if (v98)
      {
        v99 = v98;
        sub_1000B5620();
      }

      v100 = [v97 typeUTI];
      if (v100)
      {
        v101 = v100;
        sub_1000B5620();
      }

      v102 = sub_1000362AC(0, &qword_100108378, ICTTAttachment_ptr);
      v103 = sub_1000B5940();
      v104 = ICTTNSAttachmentAttributeName;
      v129 = v102;
      *&v128 = v103;
      sub_100030C64(&v128, v127);
      v105 = v104;
      v106 = v103;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v136 = v39;
      sub_1000655A8(v127, v105, v107);

      sub_1000A4A30(v114, _s16AttributedStringV16InlineAttachmentVMa);
      return v136;
    }
  }

  return v39;
}

uint64_t sub_1000934C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  v6 = sub_100030480(&qword_1001088C0, &qword_1000CE2A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v12 - v9;
  sub_1000458B4(a1, a1[3]);
  sub_1000A670C();
  sub_1000B6020();
  v14 = 0;
  sub_1000B5E70();
  if (!v4)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_100030480(&qword_1001088A8, &qword_1000CE298);
    sub_1000A6760(&qword_1001088C8, &qword_1001088D0, &unk_1000CDE54, &protocol conformance descriptor for <A> [A]);
    sub_1000B5EB0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000936A0()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1000936D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_1000937BC(uint64_t a1)
{
  v2 = sub_1000A670C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000937F8(uint64_t a1)
{
  v2 = sub_1000A670C();

  return CodingKey.debugDescription.getter(a1, v2);
}

CGColorRef sub_100093880(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1000B55F0();
  v7 = CGColorSpaceCreateWithName(v6);

  if (!v7)
  {
    if (qword_100106A88 != -1)
    {
      swift_once();
    }

    v15 = sub_1000B5530();
    sub_100036380(v15, qword_100108350);

    v16 = sub_1000B5520();
    v17 = sub_1000B5920();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100062B20(a1, a2, &v29);
      _os_log_impl(&_mh_execute_header, v16, v17, "Cannot create color space with name — returning nil {name: %s}", v18, 0xCu);
      sub_100035DA8(v19);
    }

    return 0;
  }

  v8 = *(a3 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_100043344(0, v8, 0);
    v9 = _swiftEmptyArrayStorage;
    v10 = (a3 + 32);
    v11 = _swiftEmptyArrayStorage[2];
    do
    {
      v12 = *v10;
      v29 = v9;
      v13 = v9[3];
      if (v11 >= v13 >> 1)
      {
        sub_100043344((v13 > 1), v11 + 1, 1);
        v9 = v29;
      }

      v9[2] = v11 + 1;
      v9[v11 + 4] = v12;
      ++v10;
      ++v11;
      --v8;
    }

    while (v8);
  }

  v14 = CGColorCreate(v7, v9 + 4);

  if (!v14)
  {
    if (qword_100106A88 != -1)
    {
      swift_once();
    }

    v20 = sub_1000B5530();
    sub_100036380(v20, qword_100108350);

    v21 = sub_1000B5520();
    v22 = sub_1000B5920();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v25 = sub_1000B57B0();
      v27 = sub_100062B20(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot create color with components — returning nil {components: %s}", v23, 0xCu);
      sub_100035DA8(v24);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_100093BF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  v6 = sub_100030480(&qword_1001089A0, &qword_1000CEA58);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v12 - v9;
  sub_1000458B4(a1, a1[3]);
  sub_1000A718C();
  sub_1000B6020();
  v14 = 0;
  sub_1000B5E70();
  if (!v4)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_100030480(&qword_100108990, &qword_1000CEA50);
    sub_1000A71E0(&qword_1001089A8, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
    sub_1000B5EB0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100093DC0()
{
  if (*v0)
  {
    return 0x6E656E6F706D6F63;
  }

  else
  {
    return 0x6563617073;
  }
}

uint64_t sub_100093DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6563617073 && a2 == 0xE500000000000000;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_100093EDC(uint64_t a1)
{
  v2 = sub_1000A718C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100093F18(uint64_t a1)
{
  v2 = sub_1000A718C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100093F80@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *sub_100093FD4()
{
  v1 = v0;
  v47 = &_swiftEmptyDictionarySingleton;
  v2 = *(v0 + 26);
  if (v2)
  {
    v3 = *(v0 + 25) & 1 | 2;
  }

  else
  {
    v3 = *(v0 + 25) & 1;
  }

  if (v2 == 2)
  {
    v4 = *(v0 + 25) & 1;
  }

  else
  {
    v4 = v3;
  }

  if (*(v0 + 8))
  {
    if (*(v0 + 24))
    {
      v5 = objc_allocWithZone(ICTTFont);
      v6 = sub_1000B55F0();
      v7 = [v5 initWithName:v6 size:v4 hints:0.0];
    }

    else
    {
      v11 = *(v0 + 16);
      v12 = objc_allocWithZone(ICTTFont);
      v6 = sub_1000B55F0();
      v7 = [v12 initWithName:v6 size:v4 hints:v11];
    }

    v13 = v7;

    v14 = ICTTAttributeNameFont;
    if (!v13)
    {
      goto LABEL_20;
    }

LABEL_18:
    v46 = sub_1000362AC(0, &qword_100108398, ICTTFont_ptr);
    *&v45 = v13;
    sub_100030C64(&v45, v44);
    v16 = v14;
    v9 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000655A8(v44, v16, isUniquelyReferenced_nonNull_native);

    goto LABEL_19;
  }

  if ((*(v0 + 24) & 1) == 0)
  {
    v15 = [objc_allocWithZone(ICTTFont) initWithName:0 size:v4 hints:*(v0 + 16)];
    v14 = ICTTAttributeNameFont;
    if (!v15)
    {
LABEL_20:
      v18 = v14;
      sub_10009E380(v18, v44);

      sub_100036320(v44, &qword_100106E30, &unk_1000CAB60);
      goto LABEL_21;
    }

    v13 = v15;
    goto LABEL_18;
  }

  if (v4)
  {
    v8 = ICTTAttributeNameFontHints;
    v46 = &type metadata for UInt32;
    LODWORD(v45) = v4;
    sub_100030C64(&v45, v44);
    v9 = v8;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000655A8(v44, v9, v10);
LABEL_19:

    v47 = &_swiftEmptyDictionarySingleton;
  }

LABEL_21:
  v19 = *(v0 + 27);
  if (v19 != 2 && (v19 & 1) != 0)
  {
    v20 = ICTTAttributeNameUnderline;
    v46 = &type metadata for Bool;
    LOBYTE(v45) = 1;
    sub_100030C64(&v45, v44);
    v21 = v20;
    v22 = v47;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000655A8(v44, v21, v23);

    v47 = v22;
  }

  v24 = *(v1 + 28);
  if (v24 != 2 && (v24 & 1) != 0)
  {
    v25 = ICTTAttributeNameStrikethrough;
    v46 = &type metadata for Bool;
    LOBYTE(v45) = 1;
    sub_100030C64(&v45, v44);
    v26 = v25;
    v27 = v47;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000655A8(v44, v26, v28);

    v47 = v27;
  }

  if ((*(v1 + 40) & 1) == 0)
  {
    v29 = *(v1 + 32);
    v30 = ICTTAttributeNameSuperscript;
    v46 = &type metadata for Int;
    *&v45 = v29;
    sub_100030C64(&v45, v44);
    v31 = v30;
    v32 = v47;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000655A8(v44, v31, v33);

    v47 = v32;
  }

  v34 = *(v1 + 56);
  if (v34)
  {
    v35 = sub_100093880(*(v1 + 48), v34, *(v1 + 64));
    if (v35)
    {
      v36 = v35;
      v37 = ICTTAttributeNameForegroundColor;
      type metadata accessor for CGColor(0);
      v46 = v38;
      *&v45 = v36;
      sub_100030C64(&v45, v44);
      v39 = v37;
      v40 = v36;
      v41 = v47;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_1000655A8(v44, v39, v42);

      return v41;
    }
  }

  return v47;
}

uint64_t sub_100094408(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100108778, &qword_1000CE248);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11[-v8];
  sub_1000458B4(a1, a1[3]);
  sub_1000A5F18();
  sub_1000B6020();
  LOBYTE(v12) = 0;
  sub_1000B5E20();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1000B5E40();
    LOBYTE(v12) = 2;
    sub_1000B5E30();
    LOBYTE(v12) = 3;
    sub_1000B5E30();
    LOBYTE(v12) = 4;
    sub_1000B5E30();
    LOBYTE(v12) = 5;
    sub_1000B5E30();
    LOBYTE(v12) = 6;
    sub_1000B5E50();
    v12 = *(v3 + 48);
    v13 = *(v3 + 64);
    v11[15] = 7;
    sub_1000A6028();
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100094698()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x7263737265707573;
  if (v1 != 6)
  {
    v3 = 0x726F6C6F63;
  }

  v4 = 0x6C7265646E557369;
  if (v1 != 4)
  {
    v4 = 0x656B697274537369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646C6F427369;
  if (v1 != 2)
  {
    v5 = 0x63696C6174497369;
  }

  if (*v0)
  {
    v2 = 0x7A6953746E696F70;
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

uint64_t sub_1000947A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000A33B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000947CC(uint64_t a1)
{
  v2 = sub_1000A5F18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100094808(uint64_t a1)
{
  v2 = sub_1000A5F18();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100094844@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000A3658(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_1000948BC()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100094980(uint64_t a1)
{
  sub_1000B56A0();
}

Swift::Int sub_100094A30(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

unint64_t sub_100094AF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A3CAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100094B20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x454C50525550;
  v5 = 0xE600000000000000;
  v6 = 0x45474E41524FLL;
  v7 = 1414416717;
  if (v2 != 3)
  {
    v7 = 1163217986;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 1263421776;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_100094C64(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4C5F444548534144;
    v6 = 0x44455245424D554ELL;
    if (a1 != 8)
    {
      v6 = 0x53494C4B43454843;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x434150534F4E4F4DLL;
    if (a1 != 5)
    {
      v7 = 0x4C5F54454C4C5542;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x454C544954;
    v2 = 0x4944414548425553;
    v3 = 1497648962;
    if (a1 != 3)
    {
      v3 = 0x4E4F4954504143;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x474E4944414548;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100094DC0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100094C64(*a1);
  v5 = v4;
  if (v3 == sub_100094C64(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000B5F20();
  }

  return v8 & 1;
}

Swift::Int sub_100094E48()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_100094C64(v1);
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100094EAC(uint64_t a1)
{
  sub_100094C64(*v1);
  sub_1000B56A0();
}

Swift::Int sub_100094F00(uint64_t a1)
{
  v2 = *v1;
  sub_1000B5FB0();
  sub_100094C64(v2);
  sub_1000B56A0();

  return sub_1000B5FE0();
}

unint64_t sub_100094F60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A3CF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100094F90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100094C64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100095078()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100095150(uint64_t a1)
{
  sub_1000B56A0();
}

Swift::Int sub_100095214(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

unint64_t sub_1000952E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A3D44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100095318(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1413891404;
  v5 = 0xE500000000000000;
  v6 = 0x5448474952;
  v7 = 0xE900000000000044;
  v8 = 0x454946495453554ALL;
  if (v2 != 3)
  {
    v8 = 0x4C41525554414ELL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5245544E4543;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10009545C(void *a1)
{
  v3 = sub_100030480(&qword_100108758, &qword_1000CE238);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_1000458B4(a1, a1[3]);
  sub_1000A5EC4();
  sub_1000B6020();
  v9[15] = 0;
  sub_1000B4F00();
  sub_1000A2F08(&qword_100107260, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000B5EB0();
  if (!v1)
  {
    _s16AttributedStringV13ChecklistItemVMa(0);
    v9[14] = 1;
    sub_1000B5E80();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100095614@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1000B4F00();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100030480(&qword_100108748, &qword_1000CE230);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28, v8);
  v10 = &v23 - v9;
  v11 = _s16AttributedStringV13ChecklistItemVMa(0);
  __chkstk_darwin(v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000458B4(a1, a1[3]);
  sub_1000A5EC4();
  sub_1000B6010();
  if (v2)
  {
    return sub_100035DA8(a1);
  }

  v23 = v14;
  v15 = v25;
  v16 = v26;
  v30 = 0;
  sub_1000A2F08(&qword_1001072A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17 = v27;
  sub_1000B5E00();
  (*(v16 + 32))(v23, v7, v17);
  v29 = 1;
  v18 = sub_1000B5DD0();
  (*(v15 + 8))(v10, v28);
  v19 = v18 & 1;
  v21 = v23;
  v20 = v24;
  v23[*(v11 + 20)] = v19;
  sub_1000A49C8(v21, v20, _s16AttributedStringV13ChecklistItemVMa);
  sub_100035DA8(a1);
  return sub_1000A4A30(v21, _s16AttributedStringV13ChecklistItemVMa);
}

uint64_t sub_100095968()
{
  if (*v0)
  {
    return 0x656E6F447369;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1000959A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6F447369 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_100095A84(uint64_t a1)
{
  v2 = sub_1000A5EC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100095AC0(uint64_t a1)
{
  v2 = sub_1000A5EC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100095B2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v36 - v6;
  v8 = sub_100030480(&qword_1001083A0, &unk_1000CDA40);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v36 - v10;
  v12 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v13 = v12[8];
  v14 = _s16AttributedStringV13ChecklistItemVMa(0);
  v15 = *(v14 - 8);
  v37 = *(v15 + 56);
  v38 = v13;
  v36 = v15 + 56;
  v37(a2 + v13, 1, 1, v14);
  v16 = v12[10];
  v17 = sub_1000B4F00();
  v18 = *(v17 - 8);
  v40 = *(v18 + 56);
  v41 = v16;
  v39 = v18 + 56;
  v40(a2 + v16, 1, 1, v17);
  v19 = sub_1000A2914([a1 style]);
  if (v19 == 10)
  {
    v20 = 3;
  }

  else
  {
    v20 = v19;
  }

  *a2 = v20;
  v21 = sub_1000A2A8C([a1 alignment]);
  if (v21 == 5)
  {
    v22 = 4;
  }

  else
  {
    v22 = v21;
  }

  *(a2 + 1) = v22;
  *(a2 + 8) = [a1 indent];
  if (sub_100094C64(v20) == 0x44455245424D554ELL && v23 == 0xED00005453494C5FLL)
  {

LABEL_11:
    v25 = [a1 startingItemNumber];
    v26 = 0;
    goto LABEL_13;
  }

  v24 = sub_1000B5F20();

  if (v24)
  {
    goto LABEL_11;
  }

  v25 = 0;
  v26 = 1;
LABEL_13:
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  v27 = [a1 todo];
  if (v27)
  {
    v28 = v27;
    v29 = [v28 uuid];
    sub_1000B4EE0();

    LOBYTE(v29) = [v28 done];
    v30 = 0;
    v11[*(v14 + 20)] = v29;
  }

  else
  {
    v30 = 1;
  }

  v31 = 1;
  v37(v11, v30, 1, v14);
  v32 = a2 + v12[9];
  sub_1000521D8(v11, a2 + v38, &qword_1001083A0, &unk_1000CDA40);
  *v32 = [a1 blockQuoteLevel];
  *(v32 + 8) = 0;
  v33 = [a1 uuid];
  if (v33)
  {
    v34 = v33;
    sub_1000B4EE0();

    v31 = 0;
    a1 = v34;
  }

  v40(v7, v31, 1, v17);
  return sub_1000521D8(v7, a2 + v41, &qword_100106FD0, &qword_1000CAE50);
}

id sub_100095EFC()
{
  v1 = v0;
  v2 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = sub_100030480(&qword_1001083A0, &unk_1000CDA40);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v25 - v8;
  v10 = sub_100094C50(*v1);
  v11 = [objc_opt_self() paragraphStyleNamed:v10];
  [v11 setAlignment:*(v1 + 1)];
  [v11 setIndent:*(v1 + 8)];
  if (*(v1 + 24) == 1)
  {
    v12 = [v11 startingItemNumber];
  }

  else
  {
    v12 = *(v1 + 16);
  }

  [v11 setStartingItemNumber:v12];
  v13 = _s16AttributedStringV14ParagraphStyleVMa(0);
  sub_100030C74(v1 + v13[8], v9, &qword_1001083A0, &unk_1000CDA40);
  v14 = _s16AttributedStringV13ChecklistItemVMa(0);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_100036320(v9, &qword_1001083A0, &unk_1000CDA40);
    v15 = 0;
  }

  else
  {
    v16 = v9[*(v14 + 20)];
    v17 = objc_allocWithZone(ICTTTodo);
    isa = sub_1000B4ED0().super.isa;
    v15 = [v17 initWithIdentifier:isa done:v16];

    sub_1000A4A30(v9, _s16AttributedStringV13ChecklistItemVMa);
  }

  [v11 setTodo:v15];

  v19 = (v1 + v13[9]);
  if (*(v19 + 8))
  {
    v20 = 0;
  }

  else
  {
    v20 = *v19;
  }

  [v11 setBlockQuoteLevel:v20];
  sub_100030C74(v1 + v13[10], v5, &qword_100106FD0, &qword_1000CAE50);
  v21 = sub_1000B4F00();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v5, 1, v21) != 1)
  {
    v23 = sub_1000B4ED0().super.isa;
    (*(v22 + 8))(v5, v21);
  }

  [v11 setUuid:v23];

  return v11;
}

uint64_t sub_100096250(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_1001087B0, &qword_1000CE258);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11[-v8];
  sub_1000458B4(a1, a1[3]);
  sub_1000A607C();
  sub_1000B6020();
  v11[15] = *v3;
  v11[14] = 0;
  sub_1000A6178();
  sub_1000B5EB0();
  if (!v2)
  {
    v11[13] = v3[1];
    v11[12] = 1;
    sub_1000A61CC();
    sub_1000B5EB0();
    v11[11] = 2;
    sub_1000B5EA0();
    v11[10] = 3;
    sub_1000B5E50();
    _s16AttributedStringV14ParagraphStyleVMa(0);
    v11[9] = 4;
    _s16AttributedStringV13ChecklistItemVMa(0);
    sub_1000A2F08(&qword_1001087C8, _s16AttributedStringV13ChecklistItemVMa, &unk_1000CE174);
    sub_1000B5E60();
    v11[8] = 5;
    sub_1000B5E50();
    v11[7] = 6;
    sub_1000B4F00();
    sub_1000A2F08(&qword_100107260, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100096560@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  __chkstk_darwin(v3 - 8, v4);
  v39 = &v38 - v5;
  v6 = sub_100030480(&qword_1001083A0, &unk_1000CDA40);
  __chkstk_darwin(v6 - 8, v7);
  v40 = &v38 - v8;
  v9 = sub_100030480(&qword_100108788, &qword_1000CE250);
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9, v10);
  v12 = &v38 - v11;
  v13 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v15 = __chkstk_darwin(v13, v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 32);
  v19 = _s16AttributedStringV13ChecklistItemVMa(0);
  v20 = v18;
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v21 = *(v13 + 40);
  v22 = sub_1000B4F00();
  v23 = *(*(v22 - 8) + 56);
  v45 = v21;
  v24 = v17;
  v23(&v17[v21], 1, 1, v22);
  v25 = a1[3];
  v46 = a1;
  sub_1000458B4(a1, v25);
  sub_1000A607C();
  v43 = v12;
  v26 = v44;
  sub_1000B6010();
  if (v26)
  {
    sub_100035DA8(v46);
    sub_100036320(v24 + v20, &qword_1001083A0, &unk_1000CDA40);
    return sub_100036320(v24 + v45, &qword_100106FD0, &qword_1000CAE50);
  }

  else
  {
    v44 = v19;
    v27 = v41;
    v54 = 0;
    sub_1000A60D0();
    sub_1000B5E00();
    *v24 = v55;
    v52 = 1;
    sub_1000A6124();
    sub_1000B5E00();
    v28 = v27;
    *(v24 + 1) = v53;
    v51 = 2;
    *(v24 + 8) = sub_1000B5DF0();
    v50 = 3;
    *(v24 + 16) = sub_1000B5DA0();
    *(v24 + 24) = v29 & 1;
    v49 = 4;
    sub_1000A2F08(&qword_1001087A8, _s16AttributedStringV13ChecklistItemVMa, &unk_1000CE19C);
    v30 = v40;
    sub_1000B5DB0();
    sub_1000521D8(v30, v24 + v20, &qword_1001083A0, &unk_1000CDA40);
    v48 = 5;
    v31 = sub_1000B5DA0();
    v32 = v24 + *(v13 + 36);
    *v32 = v31;
    *(v32 + 8) = v33 & 1;
    v47 = 6;
    sub_1000A2F08(&qword_1001072A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = v39;
    v35 = v42;
    v36 = v43;
    sub_1000B5DB0();
    (*(v28 + 8))(v36, v35);
    sub_1000521D8(v34, v24 + v45, &qword_100106FD0, &qword_1000CAE50);
    sub_1000A49C8(v24, v38, _s16AttributedStringV14ParagraphStyleVMa);
    sub_100035DA8(v46);
    return sub_1000A4A30(v24, _s16AttributedStringV14ParagraphStyleVMa);
  }
}

uint64_t sub_100096B00()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6F75516B636F6C62;
  if (v1 != 5)
  {
    v3 = 1684632949;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x73696C6B63656863;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6E67696C61;
  if (v1 != 1)
  {
    v5 = 0x746E65646E69;
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

uint64_t sub_100096BE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000A3D90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100096C10(uint64_t a1)
{
  v2 = sub_1000A607C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096C4C(uint64_t a1)
{
  v2 = sub_1000A607C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100096CC4()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100096DC8(uint64_t a1)
{
  sub_1000B56A0();
}

Swift::Int sub_100096EB8(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

unint64_t sub_100097068@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A3FF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100097098(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x4C41525554414ELL;
  v5 = 0x80000001000C6A30;
  v6 = 0xD000000000000016;
  v7 = 0xED00005446454C5FLL;
  v8 = 0x4F545F5448474952;
  if (v2 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x80000001000C6A60;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5F4F545F5446454CLL;
    v3 = 0xED00005448474952;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_100097158(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v37 - v6;
  v38 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v8 = *(v38 + 24);
  v9 = sub_1000B4EA0();
  v10 = *(*(v9 - 8) + 56);
  v10(&a2[v8], 1, 1, v9);
  v11 = [a1 typeUTI];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1000B5620();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *a2 = v13;
  *(a2 + 1) = v15;
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1000B5620();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(a2 + 2) = v18;
  *(a2 + 3) = v20;
  v21 = [a1 creationDate];
  if (v21)
  {
    v22 = v21;
    sub_1000B4E70();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v10(v7, v23, 1, v9);
  sub_1000521D8(v7, &a2[v8], &qword_100106E38, &unk_1000CB730);
  v24 = [a1 tokenContentIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1000B5620();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = v38;
  v30 = &a2[*(v38 + 28)];
  *v30 = v26;
  v30[1] = v28;
  v31 = [a1 altText];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1000B5620();
    v35 = v34;
  }

  else
  {

    v33 = 0;
    v35 = 0;
  }

  v36 = &a2[*(v29 + 32)];
  *v36 = v33;
  v36[1] = v35;
}

id sub_1000973CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v39 - v10;
  v12 = sub_1000B4EA0();
  v43 = *(v12 - 8);
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v39 - v18;
  ObjectType = swift_getObjectType();
  v21 = (*(a2 + 48))(*(v5 + 16), *(v5 + 24), a3, ObjectType, a2);
  v22 = v21;
  if (!v4)
  {
    v41 = 0;
    v42 = v21;
    v39 = v11;
    v40 = v19;
    v23 = v43;
    v24 = *(v3 + 8);
    if (v24)
    {
      v25 = v42;
      v26 = v42;
      v27 = v5;
      v24 = sub_1000B55F0();
    }

    else
    {
      v27 = v5;
      v25 = v42;
      v28 = v42;
    }

    v29 = v16;
    [v25 setTypeUTI:{v24, v39}];

    v30 = _s16AttributedStringV16InlineAttachmentVMa(0);
    v31 = v39;
    sub_100030C74(v27 + v30[6], v39, &qword_100106E38, &unk_1000CB730);
    v32 = *(v23 + 48);
    if (v32(v31, 1, v12) == 1)
    {
      sub_1000B4E90();
      if (v32(v31, 1, v12) != 1)
      {
        sub_100036320(v31, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      (*(v23 + 32))(v29, v31, v12);
    }

    v33 = v40;
    sub_1000B4E40();
    v34 = *(v23 + 8);
    v34(v29, v12);
    isa = sub_1000B4E30().super.isa;
    v34(v33, v12);
    v22 = v42;
    [v42 setCreationDate:isa];

    if (*(v5 + v30[7] + 8))
    {
      v36 = sub_1000B55F0();
    }

    else
    {
      v36 = 0;
    }

    [v22 setTokenContentIdentifier:v36];

    if (*(v5 + v30[8] + 8))
    {
      v37 = sub_1000B55F0();
    }

    else
    {
      v37 = 0;
    }

    [v22 setAltText:v37];
  }

  return v22;
}

uint64_t sub_100097748(void *a1)
{
  v3 = sub_100030480(&qword_1001087F0, &qword_1000CE268);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_1000458B4(a1, a1[3]);
  sub_1000A62C8();
  sub_1000B6020();
  v9[15] = 0;
  sub_1000B5E20();
  if (!v1)
  {
    v9[14] = 1;
    sub_1000B5E70();
    _s16AttributedStringV16InlineAttachmentVMa(0);
    v9[13] = 2;
    sub_1000B4EA0();
    sub_1000A2F08(&qword_100107228, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B5E60();
    v9[12] = 3;
    sub_1000B5E20();
    v9[11] = 4;
    sub_1000B5E20();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000979B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v40 - v5;
  v7 = sub_100030480(&qword_1001087E0, &qword_1000CE260);
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7, v8);
  v10 = &v40 - v9;
  v11 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v13 = __chkstk_darwin(v11, v12);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 24);
  v17 = sub_1000B4EA0();
  v18 = *(*(v17 - 8) + 56);
  v45 = v16;
  v19 = v15;
  v18(v15 + v16, 1, 1, v17);
  v20 = a1[3];
  v46 = a1;
  sub_1000458B4(a1, v20);
  sub_1000A62C8();
  v44 = v10;
  v21 = v47;
  sub_1000B6010();
  if (v21)
  {
    v47 = v21;
    v24 = 0;
    v25 = v45;
  }

  else
  {
    v23 = v42;
    v22 = v43;
    v52 = 0;
    *v19 = sub_1000B5D70();
    v19[1] = v27;
    v51 = 1;
    v28 = sub_1000B5DC0();
    v47 = 0;
    v25 = v45;
    v19[2] = v28;
    v19[3] = v29;
    v50 = 2;
    sub_1000A2F08(&qword_100107288, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v30 = v47;
    sub_1000B5DB0();
    v47 = v30;
    if (v30)
    {
      (*(v23 + 8))(v44, v22);
    }

    else
    {
      sub_1000521D8(v6, v19 + v25, &qword_100106E38, &unk_1000CB730);
      v49 = 3;
      v31 = v47;
      v32 = sub_1000B5D70();
      if (!v31)
      {
        v34 = (v19 + *(v11 + 28));
        *v34 = v32;
        v34[1] = v33;
        v48 = 4;
        v35 = sub_1000B5D70();
        v47 = 0;
        v36 = v35;
        v38 = v37;
        v39 = (v19 + *(v11 + 32));
        (*(v23 + 8))(v44, v43);
        *v39 = v36;
        v39[1] = v38;
        sub_1000A49C8(v19, v41, _s16AttributedStringV16InlineAttachmentVMa);
        sub_100035DA8(v46);
        return sub_1000A4A30(v19, _s16AttributedStringV16InlineAttachmentVMa);
      }

      v47 = v31;
      (*(v23 + 8))(v44, v43);
    }

    v24 = 1;
  }

  sub_100035DA8(v46);

  if (v24)
  {
  }

  sub_100036320(v19 + v25, &qword_100106E38, &unk_1000CB730);
}

unint64_t sub_100097E20()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x4164657461657263;
  v4 = 0x74786554746C61;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100097EC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000A4040(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100097EFC(uint64_t a1)
{
  v2 = sub_1000A62C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100097F38(uint64_t a1)
{
  v2 = sub_1000A62C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100097FA4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100030480(&qword_100108890, &qword_1000CE288);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  sub_1000458B4(a1, a1[3]);
  sub_1000A66B8();
  sub_1000B6020();
  v13 = 0;
  sub_1000B5EA0();
  if (!v3)
  {
    v12 = 1;
    sub_1000B5EA0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10009812C()
{
  if (*v0)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x7441737472617473;
  }
}

uint64_t sub_100098164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7441737472617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_10009823C(uint64_t a1)
{
  v2 = sub_1000A66B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100098278(uint64_t a1)
{
  v2 = sub_1000A66B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000982B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000A420C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1000982FC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7369736168706D65;
    if (a1 != 5)
    {
      v7 = 1802398060;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x65676E6172;
    v2 = 0x6D617473656D6974;
    v3 = 1953394534;
    if (a1 != 3)
    {
      v3 = 0x7061726761726170;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10009844C(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100108838, &qword_1000CE278);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v16 - v8;
  sub_1000458B4(a1, a1[3]);
  sub_1000A631C();
  sub_1000B6020();
  v27[0] = *v3;
  LOBYTE(v22) = 0;
  sub_1000A64C0();
  sub_1000B5EB0();
  if (!v2)
  {
    v10 = _s16AttributedStringV9AttributeVMa(0);
    LOBYTE(v27[0]) = 1;
    sub_1000B4F00();
    sub_1000A2F08(&qword_100107260, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000B5E60();
    v31[0] = 2;
    sub_1000B4EA0();
    sub_1000A2F08(&qword_100107228, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B5E60();
    v11 = v3 + v10[7];
    v12 = *(v11 + 1);
    v13 = *(v11 + 3);
    v28 = *(v11 + 2);
    v29 = v13;
    v14 = *(v11 + 1);
    v27[0] = *v11;
    v27[1] = v14;
    v23 = v12;
    v24 = v28;
    v25 = *(v11 + 3);
    v30 = *(v11 + 8);
    v26 = *(v11 + 8);
    v22 = v27[0];
    v21 = 3;
    sub_100030C74(v27, v19, &qword_100108390, &qword_1000CDA38);
    sub_1000A6514();
    sub_1000B5E60();
    v19[2] = v24;
    v19[3] = v25;
    v20 = v26;
    v19[1] = v23;
    v19[0] = v22;
    sub_100036320(v19, &qword_100108390, &qword_1000CDA38);
    v18 = 4;
    _s16AttributedStringV14ParagraphStyleVMa(0);
    sub_1000A2F08(&qword_100108850, _s16AttributedStringV14ParagraphStyleVMa, &unk_1000CE0D4);
    sub_1000B5E60();
    v18 = *(v3 + v10[9]);
    v17 = 5;
    sub_1000A6568();
    sub_1000B5E60();
    v18 = 6;
    sub_1000B4DB0();
    sub_1000A2F08(&qword_100107D80, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_1000B5E60();
    v18 = *(v3 + v10[11]);
    v17 = 7;
    sub_1000A65BC();
    sub_1000B5E60();
    v18 = 8;
    sub_1000B5E20();
    v18 = 9;
    _s16AttributedStringV16InlineAttachmentVMa(0);
    sub_1000A2F08(&qword_100108868, _s16AttributedStringV16InlineAttachmentVMa, &unk_1000CDEA4);
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100098A10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_100030480(&qword_100108368, &unk_1000CDA10);
  __chkstk_darwin(v3 - 8, v4);
  v71 = v68 - v5;
  v6 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  __chkstk_darwin(v6 - 8, v7);
  v72 = v68 - v8;
  v9 = sub_100030480(&qword_100108370, &unk_1000CDA20);
  __chkstk_darwin(v9 - 8, v10);
  v73 = v68 - v11;
  v12 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v12 - 8, v13);
  v74 = v68 - v14;
  v15 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  __chkstk_darwin(v15 - 8, v16);
  v76 = v68 - v17;
  v79 = sub_100030480(&qword_1001087F8, &qword_1000CE270);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79, v18);
  v20 = v68 - v19;
  v21 = _s16AttributedStringV9AttributeVMa(0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 20);
  v27 = sub_1000B4F00();
  v28 = *(*(v27 - 8) + 56);
  v84 = v26;
  v75 = v27;
  v28(&v25[v26], 1, 1);
  v29 = v21[6];
  v30 = sub_1000B4EA0();
  v31 = *(*(v30 - 8) + 56);
  v83 = v29;
  v31(&v25[v29], 1, 1, v30);
  v32 = &v25[v21[7]];
  *v32 = xmmword_1000CB720;
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  *(v32 + 3) = 0u;
  v103 = v32;
  *(v32 + 8) = 0;
  v33 = v21[8];
  v34 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v35 = *(*(v34 - 8) + 56);
  v87 = v33;
  v35(&v25[v33], 1, 1, v34);
  v36 = v21[10];
  v37 = sub_1000B4DB0();
  v38 = *(*(v37 - 8) + 56);
  v86 = v36;
  v38(&v25[v36], 1, 1, v37);
  v39 = v21[13];
  v40 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v41 = *(*(v40 - 8) + 56);
  v81 = v39;
  v85 = v25;
  v41(&v25[v39], 1, 1, v40);
  v42 = a1[3];
  v82 = a1;
  sub_1000458B4(a1, v42);
  sub_1000A631C();
  v78 = v20;
  v43 = v80;
  sub_1000B6010();
  if (v43)
  {
    v45 = v84;
    v46 = v83;
    v47 = v85;
    sub_100035DA8(v82);
    sub_100036320(v47 + v45, &qword_100106FD0, &qword_1000CAE50);
    sub_100036320(v47 + v46, &qword_100106E38, &unk_1000CB730);
    v48 = *(v103 + 3);
    v100 = *(v103 + 2);
    v101 = v48;
    v102 = *(v103 + 8);
    v49 = *(v103 + 1);
    v98 = *v103;
    v99 = v49;
    sub_100036320(&v98, &qword_100108390, &qword_1000CDA38);
    sub_100036320(v47 + v87, &qword_100108370, &unk_1000CDA20);
    sub_100036320(v47 + v86, &qword_100106F88, &qword_1000CAE20);

    return sub_100036320(v47 + v81, &qword_100108368, &unk_1000CDA10);
  }

  else
  {
    v44 = v76;
    v80 = v34;
    v69 = v21;
    v68[1] = v40;
    LOBYTE(v95[0]) = 0;
    sub_1000A6370();
    sub_1000B5E00();
    v50 = v85;
    *v85 = v98;
    LOBYTE(v98) = 1;
    sub_1000A2F08(&qword_1001072A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000B5DB0();
    sub_1000521D8(v44, v50 + v84, &qword_100106FD0, &qword_1000CAE50);
    LOBYTE(v98) = 2;
    sub_1000A2F08(&qword_100107288, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v51 = v74;
    sub_1000B5DB0();
    sub_1000521D8(v51, v50 + v83, &qword_100106E38, &unk_1000CB730);
    v97 = 3;
    sub_1000A63C4();
    sub_1000B5DB0();
    v52 = v50;
    v92 = v100;
    v93 = v101;
    v94 = v102;
    v91 = v99;
    v90 = v98;
    v53 = v103;
    v54 = *(v103 + 2);
    v95[3] = *(v103 + 3);
    v96 = *(v103 + 8);
    v55 = *v103;
    v95[1] = *(v103 + 1);
    v95[2] = v54;
    v95[0] = v55;
    sub_100036320(v95, &qword_100108390, &qword_1000CDA38);
    v56 = v93;
    *(v53 + 2) = v92;
    *(v53 + 3) = v56;
    *(v53 + 8) = v94;
    v57 = v91;
    *v53 = v90;
    *(v53 + 1) = v57;
    v89 = 4;
    sub_1000A2F08(&qword_100108818, _s16AttributedStringV14ParagraphStyleVMa, &unk_1000CE0FC);
    v58 = v73;
    sub_1000B5DB0();
    sub_1000521D8(v58, v50 + v87, &qword_100108370, &unk_1000CDA20);
    v88 = 5;
    sub_1000A6418();
    sub_1000B5DB0();
    *(v50 + v69[9]) = v89;
    v89 = 6;
    sub_1000A2F08(&qword_100107DC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v59 = v72;
    sub_1000B5DB0();
    sub_1000521D8(v59, v52 + v86, &qword_100106F88, &qword_1000CAE20);
    v88 = 7;
    sub_1000A646C();
    sub_1000B5DB0();
    v60 = v69;
    *(v52 + v69[11]) = v89;
    v89 = 8;
    v61 = sub_1000B5D70();
    v62 = (v52 + v60[12]);
    *v62 = v61;
    v62[1] = v63;
    v89 = 9;
    sub_1000A2F08(&qword_100108830, _s16AttributedStringV16InlineAttachmentVMa, &unk_1000CDECC);
    v64 = v79;
    v65 = v78;
    sub_1000B5DB0();
    (*(v77 + 8))(v65, v64);
    v66 = v85;
    sub_1000521D8(v71, v85 + v81, &qword_100108368, &unk_1000CDA10);
    sub_1000A49C8(v66, v70, _s16AttributedStringV9AttributeVMa);
    sub_100035DA8(v82);
    return sub_1000A4A30(v66, _s16AttributedStringV9AttributeVMa);
  }
}

uint64_t sub_1000996E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000A43B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10009971C(uint64_t a1)
{
  v2 = sub_1000A631C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099758(uint64_t a1)
{
  v2 = sub_1000A631C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000997C4(uint64_t a1)
{
  v2 = sub_1000B4DB0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MarkdownStyle(0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A49C8(v1, v10, type metadata accessor for MarkdownStyle);
  v11 = (*(v3 + 48))(v10, 6, v2);
  if (v11 <= 2)
  {
    if (!v11)
    {
      (*(v3 + 32))(v6, v10, v2);
      sub_1000B5FC0(6uLL);
      sub_1000A2F08(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      sub_1000B55A0();
      (*(v3 + 8))(v6, v2);
      return;
    }

    v12 = v11 != 1;
  }

  else if (v11 > 4)
  {
    if (v11 == 5)
    {
      v12 = 4;
    }

    else
    {
      v12 = 5;
    }
  }

  else if (v11 == 3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  sub_1000B5FC0(v12);
}

Swift::Int sub_1000999E0()
{
  sub_1000B5FB0();
  sub_1000997C4(v1);
  return sub_1000B5FE0();
}

Swift::Int sub_100099A24(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000997C4(v2);
  return sub_1000B5FE0();
}

void sub_100099A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_100030C74(a1, aBlock, &qword_100106E30, &unk_1000CAB60);
  if (v46)
  {
    sub_1000362AC(0, &qword_100108388, ICTTParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      if ([v44 style] == 4)
      {
        v17 = sub_1000A2914([v44 style]);
        if (v17 <= 4u)
        {
          v18 = v17;
          v30 = 0xE200000000000000;
          v31 = 8227;
          v32 = 0xE400000000000000;
          v33 = 539173667;
          v34 = 0xE000000000000000;
          v35 = 0x2023232323;
          if (v17 == 3)
          {
            v35 = 0;
          }

          else
          {
            v34 = 0xE500000000000000;
          }

          if (v17 != 2)
          {
            v33 = v35;
            v32 = v34;
          }

          if (v17)
          {
            v31 = 2106147;
            v30 = 0xE300000000000000;
          }

          if (v17 <= 1u)
          {
            v20 = v31;
          }

          else
          {
            v20 = v33;
          }

          if (v17 <= 1u)
          {
            v19 = v30;
          }

          else
          {
            v19 = v32;
          }

          goto LABEL_34;
        }

        if (v17 <= 7u)
        {
          if (v17 == 5)
          {
            v18 = v17;
            v19 = 0xE400000000000000;
            v20 = 174088288;
            goto LABEL_34;
          }

          if (v17 == 6)
          {
            v18 = v17;
            v19 = 0xE200000000000000;
            v20 = 8234;
LABEL_34:
            swift_beginAccess();
            v49._countAndFlagsBits = v20;
            v49._object = v19;
            sub_1000B56E0(v49);
            swift_endAccess();

            v36 = [a6 attributedSubstringFromRange:{a2, a3}];
            v37 = [v36 string];

            v38 = sub_1000B5620();
            v40 = v39;

            swift_beginAccess();
            v50._countAndFlagsBits = v38;
            v50._object = v40;
            sub_1000B56E0(v50);

            if (v18 == 5)
            {
              v41._countAndFlagsBits = 1616928778;
            }

            else
            {
              v41._countAndFlagsBits = 0;
            }

            if (v18 == 5)
            {
              v42 = 0xE400000000000000;
            }

            else
            {
              v42 = 0xE000000000000000;
            }

            v41._object = v42;
            sub_1000B56E0(v41);

            v51._countAndFlagsBits = 10;
            v51._object = 0xE100000000000000;
            sub_1000B56E0(v51);
            swift_endAccess();

            swift_beginAccess();
            *(a7 + 16) = 0;
            swift_beginAccess();
            *(a8 + 16) = 0;
            return;
          }

LABEL_31:
          v18 = v17;
          v19 = 0xE200000000000000;
          v20 = 8237;
          goto LABEL_34;
        }

        if (v17 == 8)
        {
          v18 = v17;
          v20 = 0;
          v19 = 0xE000000000000000;
          goto LABEL_34;
        }

        if (v17 == 9)
        {
          goto LABEL_31;
        }

        v43 = a2;
        v21 = a5;
        v22 = a7;
        v23 = a8;
      }

      else
      {
        v21 = a5;
        v22 = a7;
        v23 = a8;
        v43 = a2;
      }

      v24 = a3;
    }

    else
    {
      v21 = a5;
      v22 = a7;
      v23 = a8;
      v43 = a2;
      v24 = a3;
    }
  }

  else
  {
    v21 = a5;
    v22 = a7;
    v23 = a8;
    v43 = a2;
    v24 = a3;
    sub_100036320(aBlock, &qword_100106E30, &unk_1000CAB60);
  }

  v25 = [a6 string];
  if (!v25)
  {
    sub_1000B5620();
    v25 = sub_1000B55F0();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = v22;
  *(v26 + 32) = v23;
  *(v26 + 40) = a9;
  *(v26 + 48) = a10;
  *(v26 + 56) = a11;
  *(v26 + 64) = v21;
  v47 = sub_1000A2E3C;
  v48 = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009D19C;
  v46 = &unk_1000F5B58;
  v27 = _Block_copy(aBlock);
  v28 = a6;

  v29 = a11;

  [v25 ic_enumerateParagraphsInRange:v43 usingBlock:{v24, v27}];
  _Block_release(v27);
}

uint64_t sub_100099F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (**a8)(char *, uint64_t), char a9, void *a10, uint64_t a11)
{
  v159 = a8;
  v164 = sub_1000B4DB0();
  v16 = *(v164 - 8);
  __chkstk_darwin(v164, v17);
  v163 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MarkdownStyle(0);
  v20 = *(v19 - 8);
  v22 = __chkstk_darwin(v19 - 8, v21);
  v24 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v22, v25);
  v165 = &v139 - v27;
  if (__OFSUB__(a3, a1))
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v175 = 0;
  v176 = 0xE000000000000000;
  v174 = 0;
  if ([a5 attribute:ICTTAttributeNameParagraphStyle atIndex:a1 effectiveRange:0])
  {
    sub_1000B5B00();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  aBlock = v172;
  v168 = v173;
  v154 = v16;
  v153 = a1;
  v152 = a5;
  v160 = a3 - a1;
  if (!*(&v173 + 1))
  {
    sub_100036320(&aBlock, &qword_100106E30, &unk_1000CAB60);
LABEL_10:
    v158 = 0;
    v29._countAndFlagsBits = 0;
    v30 = 0;
    v31 = 0;
    v156 = 0;
    v32 = 0;
    v157 = 0xE000000000000000;
    v33 = 0xE000000000000000;
    v34 = 0xE000000000000000;
    v35 = 0xE000000000000000;
    v155 = 0xE000000000000000;
    v36 = 0xE000000000000000;
LABEL_11:
    v29._object = v33;
    sub_1000B56E0(v29);

    v177._countAndFlagsBits = v30;
    v177._object = v34;
    sub_1000B56E0(v177);

    v178._countAndFlagsBits = v31;
    v178._object = v35;
    sub_1000B56E0(v178);

    v179._countAndFlagsBits = v32;
    v179._object = v36;
    sub_1000B56E0(v179);

    v37 = v160;
    if (v160 < 1)
    {
      v61 = 0;
      v62 = 0;
      v63 = v158;
      v64 = v157;
LABEL_42:
      v183._countAndFlagsBits = v156;
      v183._object = v155;
      sub_1000B56E0(v183);

      v184._countAndFlagsBits = v63;
      v184._object = v64;
      sub_1000B56E0(v184);

      v185._countAndFlagsBits = 663584;
      v185._object = 0xE300000000000000;
      sub_1000B56E0(v185);
      v65 = v175;
      v66 = v176;
      swift_beginAccess();

      v186._countAndFlagsBits = v65;
      v186._object = v66;
      sub_1000B56E0(v186);
      swift_endAccess();

      return sub_1000A480C(v61, v62);
    }

    v38 = v154;
    v171 = _swiftEmptyArrayStorage;
    v39 = swift_allocObject();
    v40 = v152;
    *(v39 + 16) = v152;
    *(v39 + 24) = &v174;
    *(v39 + 32) = &v175;
    *(v39 + 40) = a9;
    *(v39 + 48) = a10;
    *(v39 + 56) = &v171;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1000A2ED4;
    *(v41 + 24) = v39;
    v151 = v39;
    v169 = sub_1000A7388;
    v170 = v41;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v168 = sub_100092444;
    *(&v168 + 1) = &unk_1000F5BD0;
    v42 = _Block_copy(&aBlock);
    v43 = v40;
    v44 = a10;

    [v43 enumerateAttributesInRange:v153 options:v37 usingBlock:{0, v42}];
    _Block_release(v42);
    LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

    if ((v42 & 1) == 0)
    {
      v45 = v171;
      v46 = v171[2];
      if (v46)
      {
        v47 = v171 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
        v48 = (v38 + 48);
        v160 = v38 + 32;
        v159 = (v38 + 8);

        v161 = v20;
        v162 = v24;
        while (v46 <= v45[2])
        {
          --v46;
          v54 = v165;
          sub_1000A49C8(&v47[*(v20 + 72) * v46], v165, type metadata accessor for MarkdownStyle);
          sub_1000A49C8(v54, v24, type metadata accessor for MarkdownStyle);
          v55 = (*v48)(v24, 6, v164);
          if (v55 > 2)
          {
            v49 = 32382;
            if (v55 != 5)
            {
              v49 = 15677;
            }

            v50 = 2763306;
            if (v55 != 3)
            {
              v50 = 11051;
            }

            v51 = 0xE300000000000000;
            if (v55 != 3)
            {
              v51 = 0xE200000000000000;
            }

            if (v55 <= 4)
            {
              v52 = v50;
            }

            else
            {
              v52 = v49;
            }

            if (v55 <= 4)
            {
              v53 = v51;
            }

            else
            {
              v53 = 0xE200000000000000;
            }
          }

          else if (v55)
          {
            if (v55 == 1)
            {
              v52 = 10794;
            }

            else
            {
              v52 = 42;
            }

            if (v55 == 1)
            {
              v53 = 0xE200000000000000;
            }

            else
            {
              v53 = 0xE100000000000000;
            }
          }

          else
          {
            v56 = v163;
            v57 = v24;
            v58 = v164;
            (*v160)(v163, v57, v164);
            *&aBlock = 10333;
            *(&aBlock + 1) = 0xE200000000000000;
            sub_1000A2F08(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v181._countAndFlagsBits = sub_1000B5EE0();
            sub_1000B56E0(v181);

            v182._countAndFlagsBits = 41;
            v182._object = 0xE100000000000000;
            sub_1000B56E0(v182);
            v53 = *(&aBlock + 1);
            v52 = aBlock;
            v59 = v56;
            v20 = v161;
            v60 = v58;
            v24 = v162;
            (*v159)(v59, v60);
          }

          v180._countAndFlagsBits = v52;
          v180._object = v53;
          sub_1000B56E0(v180);

          sub_1000A4A30(v165, type metadata accessor for MarkdownStyle);
          if (!v46)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_40:
      }

      v63 = v158;

      v61 = sub_1000A2ED4;
      v64 = v157;
      v62 = v151;
      goto LABEL_42;
    }

    goto LABEL_147;
  }

  sub_1000362AC(0, &qword_100108388, ICTTParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v28 = v166;
  LODWORD(v156) = sub_1000A2914([v166 style]);
  if (v156 == 10)
  {

    goto LABEL_10;
  }

  v150 = a6;
  v149 = a7;
  if ([v28 writingDirection] == 1)
  {
    v142 = 0xEF3E226C7472223DLL;
    v143 = 0x726964207669643CLL;
    v67 = 0xE600000000000000;
    v68 = 0x3E7669642F3CLL;
  }

  else
  {
    v68 = 0;
    v143 = 0;
    v67 = 0xE000000000000000;
    v142 = 0xE000000000000000;
  }

  v69 = [v28 isList];
  v151 = v28;
  if (v69 && [v28 indent] >= 1)
  {
    result = [v28 indent];
    if (result < 1)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v70 = result;
    v71 = 0;
    v72 = 0xE000000000000000;
    v28 = 1;
    while (1)
    {
      *&aBlock = v71;
      *(&aBlock + 1) = v72;
      v187._countAndFlagsBits = 538976288;
      v187._object = 0xE400000000000000;
      sub_1000B56E0(v187);
      v72 = *(&aBlock + 1);
      v71 = aBlock;
      if (v70 == v28)
      {
        break;
      }

      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        goto LABEL_54;
      }
    }

    v28 = v151;
  }

  else
  {
LABEL_54:
    v71 = 0;
    v72 = 0xE000000000000000;
  }

  if ([v28 blockQuoteLevel])
  {
    v74 = v150;
    swift_beginAccess();
    v75 = *(v74 + 16);
    if (v75 < 1)
    {
      v77 = 0;
      v78 = 0xE000000000000000;
    }

    else
    {
      v76 = v149;
      swift_beginAccess();
      v77 = 0;
      v78 = 0xE000000000000000;
      if (*(v76 + 16) >= 1 && v160 >= 1)
      {
        v79 = [v151 blockQuoteLevel];
        if (v79 >= v75)
        {
          v79 = v75;
        }

        *&aBlock = sub_1000A4700(v79);
        *(&aBlock + 1) = v80;
        v188._countAndFlagsBits = 10;
        v188._object = 0xE100000000000000;
        sub_1000B56E0(v188);
        v78 = *(&aBlock + 1);
        v77 = aBlock;
      }
    }

    *&aBlock = v77;
    *(&aBlock + 1) = v78;
    v84 = v151;
    v190._countAndFlagsBits = sub_1000A4700([v151 blockQuoteLevel]);
    sub_1000B56E0(v190);

    v83 = *(&aBlock + 1);
    v145 = aBlock;
    goto LABEL_71;
  }

  v81 = v150;
  swift_beginAccess();
  if (*(v81 + 16) < 1)
  {
    v145 = 0;
    v83 = 0xE000000000000000;
    goto LABEL_70;
  }

  v82 = v149;
  swift_beginAccess();
  v145 = 0;
  v83 = 0xE000000000000000;
  if (*(v82 + 16) < 1)
  {
LABEL_70:
    v84 = v151;
    goto LABEL_71;
  }

  v84 = v151;
  if (v160 >= 1)
  {
    v189._countAndFlagsBits = 10;
    v189._object = 0xE100000000000000;
    sub_1000B56E0(v189);
    v145 = 0;
    v83 = 0xE000000000000000;
  }

LABEL_71:
  v141 = v83;
  v85 = sub_100094C64(v156);
  v148 = v86;
  v162 = v24;
  v158 = v68;
  v157 = v67;
  v146 = v85;
  if (v85 != 0x44455245424D554ELL || v86 != 0xED00005453494C5FLL)
  {
    v87 = sub_1000B5F20();

    if (v87)
    {
      goto LABEL_75;
    }

    v102 = 0;
    v103 = 0xE000000000000000;
    if (v156 > 4u)
    {
      v104 = v148;
      v105 = v146;
      if (v156 <= 6u)
      {
        if (v156 == 5)
        {
          v103 = 0xE400000000000000;
          v102 = 174088288;
        }

        else
        {
          v103 = 0xE200000000000000;
          v102 = 8234;
        }
      }

      else if (v156 != 8)
      {
        v103 = 0xE200000000000000;
        v102 = 8237;
      }
    }

    else
    {
      v104 = v148;
      v105 = v146;
      if (v156 <= 1u)
      {
        if (v156)
        {
          v103 = 0xE300000000000000;
          v102 = 2106147;
        }

        else
        {
          v103 = 0xE200000000000000;
          v102 = 8227;
        }
      }

      else if (v156 == 2)
      {
        v103 = 0xE400000000000000;
        v102 = 539173667;
      }

      else if (v156 != 3)
      {
        v103 = 0xE500000000000000;
        v102 = 0x2023232323;
      }
    }

    v147 = v103;
    if (v105 == 0x53494C4B43454843 && v104 == 0xE900000000000054)
    {
    }

    else
    {
      v106 = sub_1000B5F20();

      if ((v106 & 1) == 0)
      {
LABEL_110:
        v140 = v102;
        v111 = v156 == 5;
        v112 = 1616928778;
        if (v156 != 5)
        {
          v112 = 0;
        }

        v156 = v112;
        v113 = 0xE000000000000000;
        if (v111)
        {
          v113 = 0xE400000000000000;
        }

        v155 = v113;
        v114 = [v84 indent];
        v115 = v159;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v166 = v115[2];
        v115[2] = 0x8000000000000000;
        sub_100065AC0(0, v114, isUniquelyReferenced_nonNull_native);
        v101 = v166;
        v115[2] = v166;
        swift_endAccess();
        goto LABEL_115;
      }
    }

    v107 = [v84 todo];
    if (v107)
    {
      v108 = v107;
      v109 = [v107 done];

      if (v109)
      {
        v110 = 120;
      }

      else
      {
        v110 = 32;
      }
    }

    else
    {
      v110 = 32;
    }

    *&aBlock = v102;
    *(&aBlock + 1) = v147;
    v192._countAndFlagsBits = 91;
    v192._object = 0xE100000000000000;
    sub_1000B56E0(v192);
    v193._countAndFlagsBits = v110;
    v193._object = 0xE100000000000000;
    sub_1000B56E0(v193);
    v194._countAndFlagsBits = 8285;
    v194._object = 0xE200000000000000;
    sub_1000B56E0(v194);
    v147 = *(&aBlock + 1);
    v102 = aBlock;
    goto LABEL_110;
  }

LABEL_75:
  v88 = [v84 indent];
  v89 = v159;
  swift_beginAccess();
  v90 = v89[2];
  if (!*(v90 + 2) || (v91 = sub_1000633EC(v88), (v92 & 1) == 0))
  {
    swift_endAccess();
LABEL_81:
    v95 = v151;
    v96 = [v151 startingItemNumber];
    if (v96 <= 1)
    {
      v94 = 1;
    }

    else
    {
      v94 = v96;
    }

    goto LABEL_84;
  }

  v93 = *(*(v90 + 7) + 8 * v91);
  result = swift_endAccess();
  if (!v93)
  {
    goto LABEL_81;
  }

  v94 = v93 + 1;
  if (!__OFADD__(v93, 1))
  {
    v95 = v151;
LABEL_84:
    v166 = v94;
    *&aBlock = sub_1000B5EE0();
    *(&aBlock + 1) = v97;
    v191._countAndFlagsBits = 8238;
    v191._object = 0xE200000000000000;
    sub_1000B56E0(v191);
    v147 = *(&aBlock + 1);
    v140 = aBlock;
    v98 = [v95 indent];
    v99 = v159;
    swift_beginAccess();
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v166 = v99[2];
    v99[2] = 0x8000000000000000;
    sub_100065AC0(v94, v98, v100);
    v101 = v166;
    v99[2] = v166;
    swift_endAccess();
    v156 = 0;
    v155 = 0xE000000000000000;
LABEL_115:

    v117 = 0;
    v118 = 1 << *(v101 + 32);
    v119 = -1;
    if (v118 < 64)
    {
      v119 = ~(-1 << v118);
    }

    v120 = v119 & *(v101 + 8);
    v121 = (v118 + 63) >> 6;
    v144 = v71;
    while (v120)
    {
LABEL_125:
      v123 = __clz(__rbit64(v120));
      v120 &= v120 - 1;
      v124 = *(*(v101 + 6) + ((v117 << 9) | (8 * v123)));
      result = [v151 indent];
      if (result < v124)
      {
        swift_beginAccess();
        v125 = sub_1000633EC(v124);
        v126 = v159;
        if (v127)
        {
          v128 = v125;
          v129 = swift_isUniquelyReferenced_nonNull_native();
          v130 = v126;
          v131 = v126[2];
          v166 = v131;
          v130[2] = 0x8000000000000000;
          if (!v129)
          {
            sub_10005CB80();
            v131 = v166;
          }

          sub_10005BCC4(v128, v131);
          v130[2] = v131;
          v71 = v144;
        }

        result = swift_endAccess();
      }
    }

    while (1)
    {
      v122 = v117 + 1;
      if (__OFADD__(v117, 1))
      {
        break;
      }

      if (v122 >= v121)
      {

        v132 = [v151 blockQuoteLevel];
        v133 = v150;
        swift_beginAccess();
        *(v133 + 16) = v132;
        v134 = v149;
        swift_beginAccess();
        *(v134 + 16) = v160;
        v135 = v146;
        if (v146 == 0x454C544954 && v148 == 0xE500000000000000)
        {
          v35 = v72;
          v31 = v71;

          v24 = v162;
          v33 = v142;
          v30 = v145;
          goto LABEL_138;
        }

        v136 = sub_1000B5F20();

        v24 = v162;
        v33 = v142;
        v30 = v145;
        if (v136)
        {
LABEL_133:
          v35 = v72;
          v31 = v71;

          goto LABEL_138;
        }

        if (v135 == 0x474E4944414548 && v148 == 0xE700000000000000)
        {
          v35 = v72;
          goto LABEL_137;
        }

        v137 = sub_1000B5F20();

        if (v137)
        {
          goto LABEL_133;
        }

        v35 = v72;
        if (v135 == 0x4944414548425553 && v148 == 0xEA0000000000474ELL)
        {
LABEL_137:
          v31 = v71;
        }

        else
        {
          v31 = v71;
          v138 = sub_1000B5F20();

          if ((v138 & 1) == 0)
          {
            goto LABEL_139;
          }
        }

LABEL_138:
        v174 = 1;
LABEL_139:
        v29._countAndFlagsBits = v143;
        v34 = v141;
        v32 = v140;
        v36 = v147;
        goto LABEL_11;
      }

      v120 = *(v101 + v122 + 8);
      ++v117;
      if (v120)
      {
        v117 = v122;
        goto LABEL_125;
      }
    }

    __break(1u);
    goto LABEL_146;
  }

LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_10009B1C8(void (**a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, uint64_t a7, int a8, void *a9, uint64_t *a10)
{
  LODWORD(v204) = a8;
  v217 = a7;
  v200 = a6;
  v14 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  __chkstk_darwin(v14 - 8, v15);
  v218 = (&v196 - v16);
  v219 = sub_1000B4DB0();
  v206 = *(v219 - 8);
  v18 = __chkstk_darwin(v219, v17);
  v212 = &v196 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v196 - v21;
  v23 = type metadata accessor for MarkdownStyle(0);
  v213 = *(v23 - 8);
  v25 = __chkstk_darwin(v23 - 8, v24);
  v209 = &v196 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25, v27);
  v207 = &v196 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v33 = &v196 - v32;
  v35 = __chkstk_darwin(v31, v34);
  v214 = &v196 - v36;
  v38 = __chkstk_darwin(v35, v37);
  v216 = &v196 - v39;
  v41 = __chkstk_darwin(v38, v40);
  v202 = &v196 - v42;
  v44 = __chkstk_darwin(v41, v43);
  v215 = &v196 - v45;
  v47 = __chkstk_darwin(v44, v46);
  v211 = (&v196 - v48);
  v50 = __chkstk_darwin(v47, v49);
  v201 = &v196 - v51;
  v53 = __chkstk_darwin(v50, v52);
  v210 = (&v196 - v54);
  v56 = __chkstk_darwin(v53, v55);
  v208 = &v196 - v57;
  v59 = __chkstk_darwin(v56, v58);
  v61 = &v196 - v60;
  v63 = __chkstk_darwin(v59, v62);
  v199 = &v196 - v64;
  v66 = __chkstk_darwin(v63, v65);
  v198 = &v196 - v67;
  v69 = __chkstk_darwin(v66, v68);
  v71 = &v196 - v70;
  __chkstk_darwin(v69, v72);
  v74 = &v196 - v73;
  v75 = [a5 attributedSubstringFromRange:{a2, a3}];
  v76 = [v75 string];

  v203 = sub_1000B5620();
  v205 = v77;

  if (a1[2])
  {
    v78 = ICTTAttributeNameFont;
    v79 = sub_100063358(v78);
    if (v80)
    {
      sub_100030378(a1[7] + 32 * v79, &v222);

      sub_1000362AC(0, &qword_100108398, ICTTFont_ptr);
      if (swift_dynamicCast())
      {
        v196 = v61;
        v81 = v221;
        if (([v221 fontHints] & 1) != 0 && (*v200 & 1) == 0)
        {
          v197 = v22;
          (*(v206 + 56))(v74, 1, 6, v219);
          v82 = sub_100033EB8(0, 1, 1, _swiftEmptyArrayStorage);
          v192 = v82[2];
          v191 = v82[3];
          if (v192 >= v191 >> 1)
          {
            v82 = sub_100033EB8((v191 > 1), v192 + 1, 1, v82);
          }

          v82[2] = v192 + 1;
          sub_1000A47A4(v74, v82 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v192, type metadata accessor for MarkdownStyle);
          v22 = v197;
        }

        else
        {
          v82 = _swiftEmptyArrayStorage;
        }

        if (([v81 fontHints] & 2) != 0)
        {
          (*(v206 + 56))(v71, 2, 6, v219);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = v213;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v82 = sub_100033EB8(0, v82[2] + 1, 1, v82);
          }

          v195 = v82[2];
          v194 = v82[3];
          if (v195 >= v194 >> 1)
          {
            v82 = sub_100033EB8((v194 > 1), v195 + 1, 1, v82);
          }

          v82[2] = v195 + 1;
          sub_1000A47A4(v71, v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v195, type metadata accessor for MarkdownStyle);
        }

        else
        {

          v83 = v213;
        }

        v61 = v196;
        if (!a1[2])
        {
          goto LABEL_26;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v82 = _swiftEmptyArrayStorage;
  v83 = v213;
  if (a1[2])
  {
LABEL_9:
    v84 = ICTTAttributeNameFontHints;
    v85 = sub_100063358(v84);
    if (v86)
    {
      sub_100030378(a1[7] + 32 * v85, &v222);

      if (swift_dynamicCast())
      {
        v87 = v61;
        v88 = v221;
        if ((v221 & 1) != 0 && (*v200 & 1) == 0)
        {
          v197 = v22;
          (*(v206 + 56))(v198, 1, 6, v219);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_100033EB8(0, v82[2] + 1, 1, v82);
          }

          v90 = v82[2];
          v89 = v82[3];
          if (v90 >= v89 >> 1)
          {
            v82 = sub_100033EB8((v89 > 1), v90 + 1, 1, v82);
          }

          v82[2] = v90 + 1;
          sub_1000A47A4(v198, v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v90, type metadata accessor for MarkdownStyle);
          v22 = v197;
        }

        if ((v88 & 2) != 0)
        {
          (*(v206 + 56))(v199, 2, 6, v219);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_100033EB8(0, v82[2] + 1, 1, v82);
          }

          v92 = v82[2];
          v91 = v82[3];
          if (v92 >= v91 >> 1)
          {
            v82 = sub_100033EB8((v91 > 1), v92 + 1, 1, v82);
          }

          v82[2] = v92 + 1;
          sub_1000A47A4(v199, v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v92, type metadata accessor for MarkdownStyle);
        }

        v61 = v87;
      }
    }

    else
    {
    }
  }

LABEL_26:
  if (a1[2])
  {
    v93 = ICTTAttributeNameUnderline;
    v94 = sub_100063358(v93);
    if (v95)
    {
      sub_100030378(a1[7] + 32 * v94, &v222);

      sub_100036320(&v222, &qword_100106E30, &unk_1000CAB60);
      (*(v206 + 56))(v61, 4, 6, v219);
      v96 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_29;
    }
  }

  v222 = 0u;
  v223 = 0u;
  sub_100036320(&v222, &qword_100106E30, &unk_1000CAB60);
  if (a1[2])
  {
    goto LABEL_35;
  }

LABEL_43:
  v222 = 0u;
  v223 = 0u;
  sub_100036320(&v222, &qword_100106E30, &unk_1000CAB60);
  if (a1[2])
  {
    goto LABEL_44;
  }

LABEL_52:
  v222 = 0u;
  v223 = 0u;
  sub_100036320(&v222, &qword_100106E30, &unk_1000CAB60);
  if (a1[2])
  {
    goto LABEL_53;
  }

LABEL_62:
  v113 = v218;
  (*(v206 + 56))(v218, 1, 1, v219);
LABEL_63:
  sub_100036320(v113, &qword_100106F88, &qword_1000CAE20);
  if (!a1[2])
  {
    goto LABEL_68;
  }

LABEL_64:
  v129 = ICTTNSAttachmentAttributeName;
  v130 = sub_100063358(v129);
  if ((v131 & 1) == 0)
  {

    while (1)
    {
LABEL_68:
      v218 = a10;

      v134 = sub_100087E7C(v133);

      v136 = sub_100087E7C(v135);
      v204 = v82;

      if (*(v136 + 2) <= v134[2] >> 3)
      {
        *&v222 = v134;

        sub_10009E420(v136);
        v82 = v222;
      }

      else
      {

        v82 = sub_10009E628(v136, v134);
      }

      v221 = v82;
      if (v134[2] <= *(v136 + 2) >> 3)
      {
        *&v222 = v136;

        sub_10009E420(v134);

        v137 = v222;
      }

      else
      {

        v137 = sub_10009E628(v134, v136);
      }

      a1 = v211;
      v220 = v137;
      v96 = *v218;
      v138 = *(*v218 + 16);
      v208 = v33;
      if (!v138)
      {

LABEL_88:
        v145 = *v218;
        v146 = *(*v218 + 16);
        v147 = v214;
        v148 = v216;
        if (v146)
        {
          v149 = v221;
          v150 = v145 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
          v151 = (v206 + 48);
          v210 = (v206 + 8);
          v211 = (v206 + 32);

          while (v146 <= *(v145 + 16))
          {
            --v146;
            sub_1000A49C8(v150 + *(v83 + 72) * v146, v148, type metadata accessor for MarkdownStyle);
            if (sub_10008FFE0(v148, v149))
            {
              sub_1000A49C8(v148, v147, type metadata accessor for MarkdownStyle);
              v159 = (*v151)(v147, 6, v219);
              if (v159 > 2)
              {
                v152 = 32382;
                if (v159 != 5)
                {
                  v152 = 15677;
                }

                v153 = 0xE200000000000000;
                v154 = 2763306;
                if (v159 == 3)
                {
                  v153 = 0xE300000000000000;
                }

                else
                {
                  v154 = 11051;
                }

                v155 = v159 <= 4;
                if (v159 <= 4)
                {
                  v156._countAndFlagsBits = v154;
                }

                else
                {
                  v156._countAndFlagsBits = v152;
                }

                if (v155)
                {
                  v157 = v153;
                }

                else
                {
                  v157 = 0xE200000000000000;
                }
              }

              else if (v159)
              {
                v160 = v159 == 1;
                if (v159 == 1)
                {
                  v156._countAndFlagsBits = 10794;
                }

                else
                {
                  v156._countAndFlagsBits = 42;
                }

                if (v160)
                {
                  v157 = 0xE200000000000000;
                }

                else
                {
                  v157 = 0xE100000000000000;
                }
              }

              else
              {
                v161 = v212;
                v162 = v219;
                (*v211)(v212, v214, v219);
                *&v222 = 10333;
                *(&v222 + 1) = 0xE200000000000000;
                sub_1000A2F08(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                v225._countAndFlagsBits = sub_1000B5EE0();
                sub_1000B56E0(v225);

                v226._countAndFlagsBits = 41;
                v226._object = 0xE100000000000000;
                sub_1000B56E0(v226);
                v157 = *(&v222 + 1);
                v163 = v222;
                v164 = v161;
                v165 = v162;
                v83 = v213;
                v147 = v214;
                (*v210)(v164, v165);
                v156._countAndFlagsBits = v163;
              }

              v156._object = v157;
              sub_1000B56E0(v156);

              v158 = v215;
              sub_10009D068(*(*v218 + 16) - 1, v215);
              sub_1000A4A30(v158, type metadata accessor for MarkdownStyle);
              v148 = v216;
            }

            sub_1000A4A30(v148, type metadata accessor for MarkdownStyle);
            if (!v146)
            {
              goto LABEL_115;
            }
          }

          __break(1u);
LABEL_115:

          v33 = v208;
        }

        v166 = v204[2];
        if (v166)
        {
          v167 = v220;
          v168 = (*(v83 + 80) + 32) & ~*(v83 + 80);
          v169 = v204 + v168;
          v170 = (v206 + 48);
          v171 = *(v83 + 72);
          do
          {
            sub_1000A49C8(v169, v33, type metadata accessor for MarkdownStyle);
            if (sub_10008FFE0(v33, v167))
            {
              v172 = v207;
              sub_1000A49C8(v33, v207, type metadata accessor for MarkdownStyle);
              v173 = (*v170)(v172, 6, v219);
              if (v173 <= 2)
              {
                if (v173)
                {
                  v180 = v173 == 1;
                  if (v173 == 1)
                  {
                    v178._countAndFlagsBits = 10794;
                  }

                  else
                  {
                    v178._countAndFlagsBits = 42;
                  }

                  if (v180)
                  {
                    v179 = 0xE200000000000000;
                  }

                  else
                  {
                    v179 = 0xE100000000000000;
                  }
                }

                else
                {
                  sub_1000A4A30(v207, type metadata accessor for MarkdownStyle);
                  v179 = 0xE100000000000000;
                  v178._countAndFlagsBits = 91;
                }
              }

              else
              {
                v174 = 32382;
                if (v173 != 5)
                {
                  v174 = 15677;
                }

                v175 = 2763306;
                if (v173 != 3)
                {
                  v175 = 11051;
                }

                v176 = 0xE300000000000000;
                if (v173 != 3)
                {
                  v176 = 0xE200000000000000;
                }

                v177 = v173 <= 4;
                if (v173 <= 4)
                {
                  v178._countAndFlagsBits = v175;
                }

                else
                {
                  v178._countAndFlagsBits = v174;
                }

                if (v177)
                {
                  v179 = v176;
                }

                else
                {
                  v179 = 0xE200000000000000;
                }
              }

              v178._object = v179;
              sub_1000B56E0(v178);

              sub_1000A49C8(v33, v209, type metadata accessor for MarkdownStyle);
              v181 = v218;
              v182 = *v218;
              v183 = swift_isUniquelyReferenced_nonNull_native();
              *v181 = v182;
              if ((v183 & 1) == 0)
              {
                v182 = sub_100033EB8(0, v182[2] + 1, 1, v182);
                *v218 = v182;
              }

              v185 = v182[2];
              v184 = v182[3];
              if (v185 >= v184 >> 1)
              {
                v189 = sub_100033EB8((v184 > 1), v185 + 1, 1, v182);
                *v218 = v189;
              }

              v186 = v208;
              sub_1000A4A30(v208, type metadata accessor for MarkdownStyle);
              v187 = *v218;
              *(v187 + 16) = v185 + 1;
              v188 = v187 + v168 + v185 * v171;
              v33 = v186;
              sub_1000A47A4(v209, v188, type metadata accessor for MarkdownStyle);
            }

            else
            {
              sub_1000A4A30(v33, type metadata accessor for MarkdownStyle);
            }

            v169 += v171;
            --v166;
          }

          while (v166);
        }

        v227._countAndFlagsBits = v203;
        v227._object = v205;
        sub_1000B56E0(v227);
      }

      v33 = v136;
      v22 = (v96 + ((*(v83 + 80) + 32) & ~*(v83 + 80)));

      v139 = 0;
      v140 = 0;
      while (v140 < *(v96 + 16))
      {
        sub_1000A49C8(&v22[*(v83 + 72) * v140], a1, type metadata accessor for MarkdownStyle);
        v141 = sub_10008FFE0(a1, v82);
        if (v139)
        {
          if (v141)
          {
            goto LABEL_77;
          }

          v142 = v202;
          sub_1000A49C8(a1, v202, type metadata accessor for MarkdownStyle);
          v143 = v215;
          sub_100084878(v215, v142);
          a1 = v211;
          sub_1000A4A30(v143, type metadata accessor for MarkdownStyle);
          if (sub_10008FFE0(a1, v33))
          {
            sub_1000A49C8(a1, v142, type metadata accessor for MarkdownStyle);
            sub_100084878(v143, v142);
            a1 = v211;
            sub_1000A4A30(v143, type metadata accessor for MarkdownStyle);
            v144 = a1;
            goto LABEL_84;
          }

LABEL_83:
          v144 = a1;
LABEL_84:
          sub_1000A4A30(v144, type metadata accessor for MarkdownStyle);
          if (v138 - 1 == v140)
          {
LABEL_86:

            v33 = v208;
            goto LABEL_88;
          }

          v82 = v221;
          ++v140;
          v139 = 1;
        }

        else
        {
          if (v141)
          {
            goto LABEL_83;
          }

LABEL_77:
          ++v140;
          sub_1000A4A30(a1, type metadata accessor for MarkdownStyle);
          if (v138 == v140)
          {
            goto LABEL_86;
          }
        }
      }

      __break(1u);
LABEL_162:
      v82 = sub_100033EB8(0, v82[2] + 1, 1, v82);
LABEL_29:
      v98 = v82[2];
      v97 = v82[3];
      if (v98 >= v97 >> 1)
      {
        v82 = sub_100033EB8((v97 > 1), v98 + 1, 1, v82);
      }

      v82[2] = v98 + 1;
      sub_1000A47A4(v96, v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v98, type metadata accessor for MarkdownStyle);
      if (!a1[2])
      {
        goto LABEL_43;
      }

LABEL_35:
      v99 = ICTTAttributeNameStrikethrough;
      v100 = sub_100063358(v99);
      if ((v101 & 1) == 0)
      {

        goto LABEL_43;
      }

      sub_100030378(a1[7] + 32 * v100, &v222);

      sub_100036320(&v222, &qword_100106E30, &unk_1000CAB60);
      (*(v206 + 56))(v208, 5, 6, v219);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_100033EB8(0, v82[2] + 1, 1, v82);
      }

      v103 = v82[2];
      v102 = v82[3];
      if (v103 >= v102 >> 1)
      {
        v82 = sub_100033EB8((v102 > 1), v103 + 1, 1, v82);
      }

      v82[2] = v103 + 1;
      sub_1000A47A4(v208, v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v103, type metadata accessor for MarkdownStyle);
      if (!a1[2])
      {
        goto LABEL_52;
      }

LABEL_44:
      v104 = ICTTAttributeNameEmphasis;
      v105 = sub_100063358(v104);
      if ((v106 & 1) == 0)
      {

        goto LABEL_52;
      }

      sub_100030378(a1[7] + 32 * v105, &v222);

      sub_100036320(&v222, &qword_100106E30, &unk_1000CAB60);
      (*(v206 + 56))(v210, 6, 6, v219);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_100033EB8(0, v82[2] + 1, 1, v82);
      }

      v108 = v82[2];
      v107 = v82[3];
      if (v108 >= v107 >> 1)
      {
        v82 = sub_100033EB8((v107 > 1), v108 + 1, 1, v82);
      }

      v82[2] = v108 + 1;
      sub_1000A47A4(v210, v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v108, type metadata accessor for MarkdownStyle);
      if (!a1[2])
      {
        goto LABEL_62;
      }

LABEL_53:
      v109 = ICTTNSLinkAttributeName;
      v110 = sub_100063358(v109);
      if ((v111 & 1) == 0)
      {

        goto LABEL_62;
      }

      v197 = v22;
      sub_100030378(a1[7] + 32 * v110, &v222);

      v113 = v218;
      v112 = v219;
      v114 = swift_dynamicCast();
      v115 = v82;
      v116 = v206;
      v117 = *(v206 + 56);
      v117(v113, v114 ^ 1u, 1, v112);
      v118 = v116;
      v82 = v115;
      if ((*(v118 + 48))(v113, 1, v112) == 1)
      {
        goto LABEL_63;
      }

      v119 = v206;
      v120 = v113;
      v121 = v197;
      v122 = v219;
      (*(v206 + 32))(v197, v120, v219);
      v123 = v119;
      v124 = v115;
      v125 = v201;
      (*(v123 + 16))(v201, v121, v122);
      v117(v125, 0, 6, v122);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = sub_100033EB8(0, v124[2] + 1, 1, v124);
      }

      v127 = v124[2];
      v126 = v124[3];
      v128 = v124;
      if (v127 >= v126 >> 1)
      {
        v128 = sub_100033EB8((v126 > 1), v127 + 1, 1, v124);
      }

      (*(v206 + 8))(v197, v219);
      v128[2] = v127 + 1;
      v82 = v128;
      sub_1000A47A4(v125, v128 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v127, type metadata accessor for MarkdownStyle);
      if (a1[2])
      {
        goto LABEL_64;
      }
    }
  }

  sub_100030378(a1[7] + 32 * v130, &v222);

  sub_1000362AC(0, &qword_100108378, ICTTAttachment_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_68;
  }

  v132 = v221;

  v224._countAndFlagsBits = sub_10009C914(v132, v204, a9);
  sub_1000B56E0(v224);
}

NSObject *sub_10009C914(void *a1, char a2, void *a3)
{
  v6 = sub_1000B4B50();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000B4DB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isInlineAttachment:a1])
  {
    v16 = [a1 inlineAttachmentInContext:a3];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 displayText];
      v19 = sub_1000B5620();

      return v19;
    }

    if (qword_100106A88 != -1)
    {
      swift_once();
    }

    v25 = sub_1000B5530();
    sub_100036380(v25, qword_100108350);
    v26 = a1;
    v21 = sub_1000B5520();
    v27 = sub_1000B5910();

    if (os_log_type_enabled(v21, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v21, v27, "Cannot resolve inline attachment — skipping {attachment: %@}", v28, 0xCu);
      sub_100036320(v29, &qword_100108380, &qword_1000CDA30);
    }

    goto LABEL_40;
  }

  result = [a1 attachmentInContext:a3];
  if (!result)
  {
    return result;
  }

  v21 = result;
  if ([result isTable]&& a2 == 2)
  {
    v22 = [v21 tableModel];
    sub_10009D214(v22, a3);
    v24 = v23;

    return v24;
  }

  if ([v21 isURL]&& (v31 = [v21 URL]) != 0)
  {
    v32 = v31;
    sub_1000B4D50();

    v68 = 91;
    v69 = 0xE100000000000000;
    v33 = [v21 title];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1000B5620();
      object = v36;

      v38._countAndFlagsBits = v35;
    }

    else
    {
      v38._countAndFlagsBits = sub_1000B4CA0();
      object = v38._object;
    }

    v38._object = object;
    sub_1000B56E0(v38);

    v74._countAndFlagsBits = 10333;
    v74._object = 0xE200000000000000;
    sub_1000B56E0(v74);
    sub_1000A2F08(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v75._countAndFlagsBits = sub_1000B5EE0();
    sub_1000B56E0(v75);

    v76._countAndFlagsBits = 41;
    v76._object = 0xE100000000000000;
    sub_1000B56E0(v76);

    v63 = v68;
    (*(v12 + 8))(v15, v11);
    return v63;
  }

  else
  {
    v39 = ([v21 hasFallbackImage]& 1) != 0 || ([v21 hasFallbackPDF]& 1) != 0 || [v21 attachmentType]== 3 || [v21 attachmentType]== 5;
    v65 = v39;
    v40 = [v21 title];
    if (!v40)
    {
      v40 = [v21 userTitle];
      if (!v40)
      {
        v40 = [v21 defaultTitle];
      }
    }

    v41 = v40;
    v42 = sub_1000B5620();
    v44 = v43;

    v45 = sub_1000504CC();
    if (!v46)
    {

      if (qword_100106A88 != -1)
      {
        swift_once();
      }

      v59 = sub_1000B5530();
      sub_100036380(v59, qword_100108350);
      v60 = sub_1000B5520();
      v61 = sub_1000B5920();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "could not get filename for attachment we're exporting", v62, 2u);
      }

LABEL_40:
      return 0;
    }

    v47 = v45;
    v48 = v46;
    v68 = 0;
    v69 = 0xE000000000000000;
    if (a2 == 1)
    {
      v49._countAndFlagsBits = 0x656D686361747461;
    }

    else
    {
      v49._countAndFlagsBits = 0x656D686361747441;
    }

    v49._object = 0xEC0000002F73746ELL;
    sub_1000B56E0(v49);

    v66 = v47;
    v67 = v48;
    sub_1000B4B30();
    sub_10003042C();
    v50 = sub_1000B5AF0();
    v52 = v51;
    (*(v7 + 8))(v10, v6);

    if (v52)
    {
      v53._countAndFlagsBits = v50;
    }

    else
    {
      v53._countAndFlagsBits = 0;
    }

    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    v53._object = v54;
    sub_1000B56E0(v53);

    v56 = v68;
    v55 = v69;
    if (v65)
    {
      v57 = 23329;
      v58 = 0xE200000000000000;
    }

    else
    {
      v57 = 91;
      v58 = 0xE100000000000000;
    }

    v68 = v57;
    v69 = v58;
    v70._countAndFlagsBits = v42;
    v70._object = v44;
    sub_1000B56E0(v70);

    v71._countAndFlagsBits = 10333;
    v71._object = 0xE200000000000000;
    sub_1000B56E0(v71);
    v72._countAndFlagsBits = v56;
    v72._object = v55;
    sub_1000B56E0(v72);

    v73._countAndFlagsBits = 41;
    v73._object = 0xE100000000000000;
    sub_1000B56E0(v73);

    return v68;
  }
}

uint64_t sub_10009D068@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10009FCB4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for MarkdownStyle(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1000A47A4(v11, a2, type metadata accessor for MarkdownStyle);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10009D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

void sub_10009D214(void *a1, void *a2)
{
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  v43 = &_swiftEmptyDictionarySingleton;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 table];
    v5 = swift_allocObject();
    v5[2] = &v43;
    v5[3] = v3;
    v5[4] = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1000A485C;
    *(v6 + 24) = v5;
    v41 = sub_1000A4868;
    v42 = v6;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10006C434;
    v40 = &unk_1000F5C48;
    v7 = _Block_copy(&aBlock);
    v8 = v3;
    v9 = a2;

    [v4 enumerateColumnsWithBlock:v7];

    _Block_release(v7);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 1 << v43[32];
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v43 + 8);
      v15 = (v12 + 63) >> 6;
      do
      {
        if (!v14)
        {
          while (1)
          {
            v16 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v16 >= v15)
            {
              goto LABEL_15;
            }

            v14 = *&v43[8 * v16 + 64];
            ++v11;
            if (v14)
            {
              v11 = v16;
              goto LABEL_12;
            }
          }

          __break(1u);
          goto LABEL_24;
        }

        v16 = v11;
LABEL_12:
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v18 = *(*(v43 + 7) + ((v16 << 9) | (8 * v17)));
        v19 = __OFADD__(v10, v18);
        v10 += v18;
      }

      while (!v19);
      __break(1u);
LABEL_15:
      v20 = [v8 table];
      v21 = [v20 columnCount];

      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_25;
      }

      v23 = (v22 * 3) >> 64;
      v24 = 3 * v22;
      if (v23 != v24 >> 63)
      {
        goto LABEL_26;
      }

      v19 = __OFADD__(v10, v24);
      v25 = v10 + v24;
      if (!v19)
      {
        v19 = __OFADD__(v25, 4);
        v26 = v25 + 4;
        if (v19)
        {
          goto LABEL_28;
        }

        v27 = v26 < 80;
        v45._countAndFlagsBits = 10;
        v45._object = 0xE100000000000000;
        sub_1000B56E0(v45);
        v36 = 1;
        v28 = [v8 table];
        v29 = swift_allocObject();
        *(v29 + 16) = v8;
        *(v29 + 24) = v9;
        *(v29 + 32) = v27;
        *(v29 + 40) = &v43;
        *(v29 + 48) = v44;
        *(v29 + 56) = &v36;
        v30 = swift_allocObject();
        *(v30 + 16) = sub_1000A48B0;
        *(v30 + 24) = v29;
        v41 = sub_1000A740C;
        v42 = v30;
        aBlock = _NSConcreteStackBlock;
        v38 = 1107296256;
        v39 = sub_10006C434;
        v40 = &unk_1000F5CC0;
        v31 = _Block_copy(&aBlock);
        v32 = v8;
        v33 = v9;

        [v28 enumerateRowsWithBlock:v31];

        _Block_release(v31);
        LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

        if ((v32 & 1) == 0)
        {

          v34 = sub_1000A48B0;
          v35 = sub_1000A485C;
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v35 = 0;
  v5 = 0;
  v34 = 0;
  v29 = 0;
LABEL_22:

  sub_1000A480C(v35, v5);
  sub_1000A480C(v34, v29);
}

uint64_t sub_10009D6B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = sub_1000B4F30();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *a4;
  *a4 = 0x8000000000000000;
  sub_100065AC0(0, a2, isUniquelyReferenced_nonNull_native);
  *a4 = aBlock[0];

  v16 = [a5 table];
  sub_1000B4F20();
  sub_1000B4F10(v17);
  v19 = v18;
  (*(v11 + 8))(v14, v10);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a4;
  v20[4] = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000A49BC;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1000A738C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009DB68;
  aBlock[3] = &unk_1000F5E28;
  v22 = _Block_copy(aBlock);
  v23 = a6;

  [v16 enumerateCellObjectsInCellSelectionContainingColumnIndices:v19 rowIndices:0 copyItems:0 usingBlock:v22];

  _Block_release(v22);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  return result;
}

id sub_10009D93C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (result)
  {
    v19 = result;
    result = [result attributedString];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [result ic_attributedStringByFlatteningInlineAttachmentsWithContext:a5];
    v12 = [v11 string];

    sub_1000B5620();
    sub_10003042C();
    sub_1000B5AE0();

    sub_1000B5AE0();

    v13 = sub_1000B56B0();
    v14 = *a6;
    if (*(*a6 + 16) && (v15 = sub_1000633EC(a7), (v16 & 1) != 0))
    {
      if (*(*(v14 + 56) + 8 * v15) >= v13)
      {
        goto LABEL_9;
      }
    }

    else if (v13 <= 0)
    {
      goto LABEL_9;
    }

    v17 = sub_1000B56B0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a6;
    *a6 = 0x8000000000000000;
    sub_100065AC0(v17, a7, isUniquelyReferenced_nonNull_native);
    *a6 = v20;
LABEL_9:

    return v19;
  }

  return result;
}

id sub_10009DB68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = v9(a2, a3, a4, a5);

  return v11;
}

uint64_t sub_10009DBEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v14 = sub_1000B4F30();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  v19 = [a4 table];
  sub_1000B4F20();
  sub_1000B4F10(v20);
  v22 = v21;
  (*(v15 + 8))(v18, v14);
  v23 = swift_allocObject();
  *(v23 + 16) = &v42;
  *(v23 + 24) = a5;
  *(v23 + 32) = a6;
  *(v23 + 40) = a7;
  *(v23 + 48) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1000A4924;
  *(v24 + 24) = v23;
  v40 = sub_1000A4954;
  v41 = v24;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_10009DB68;
  v39 = &unk_1000F5D38;
  v25 = _Block_copy(&aBlock);
  v26 = a5;
  v27 = a4;

  [v19 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:v22 copyItems:0 usingBlock:v25];

  _Block_release(v25);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v29 = v42;
    v30 = v43;

    v44._countAndFlagsBits = v29;
    v44._object = v30;
    sub_1000B56E0(v44);

    v45._countAndFlagsBits = 10;
    v45._object = 0xE100000000000000;
    sub_1000B56E0(v45);
    if (*a9 != 1)
    {
      v35 = 0;
      v32 = 0;
      goto LABEL_6;
    }

    v31 = [v27 table];
    v32 = swift_allocObject();
    *(v32 + 16) = a8;
    *(v32 + 24) = a7;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1000A497C;
    *(v33 + 24) = v32;
    v40 = sub_1000A740C;
    v41 = v33;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_10006C434;
    v39 = &unk_1000F5DB0;
    v34 = _Block_copy(&aBlock);

    [v31 enumerateColumnsWithBlock:v34];

    _Block_release(v34);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if ((v31 & 1) == 0)
    {
      v46._countAndFlagsBits = 687136;
      v46._object = 0xE300000000000000;
      sub_1000B56E0(v46);
      *a9 = 0;
      v35 = sub_1000A497C;
LABEL_6:

      return sub_1000A480C(v35, v32);
    }
  }

  __break(1u);
  return result;
}

void sub_10009E018(void *a1, char *a2, int a3, int a4, int a5, uint64_t a6, char a7, uint64_t *a8, id a9)
{
  if (a1)
  {
    v11 = a1;
    if (a2)
    {
      v12._countAndFlagsBits = 2128928;
      v12._object = 0xE300000000000000;
    }

    else
    {
      v12._countAndFlagsBits = 8316;
      v12._object = 0xE200000000000000;
    }

    sub_1000B56E0(v12);
    v13 = [v11 attributedString];
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = v13;
    v15 = [v13 ic_attributedStringByFlatteningInlineAttachmentsWithContext:a6];
    v16 = [v15 string];

    sub_1000B5620();
    v17 = sub_10003042C();
    sub_1000B5AE0();

    v30 = v17;
    v31 = v17;
    v29 = v17;
    v18 = sub_1000B5AE0();
    v20 = v19;

    v34._countAndFlagsBits = v18;
    v34._object = v20;
    sub_1000B56E0(v34);
    if (a7)
    {
      v21 = *a8;
      if (*(*a8 + 16) && (v22 = sub_1000633EC(a2), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);
      }

      else
      {
        v24 = 0;
      }

      v25 = sub_1000B56B0();

      v26 = v24 - v25;
      if (__OFSUB__(v24, v25))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if (v26 < 1)
      {
LABEL_16:
        v27 = [a9 table];
        v28 = [v27 columnCount];

        if (!__OFSUB__(v28, 1))
        {
          if (v28 - 1 == a2)
          {
            v37._countAndFlagsBits = 31776;
            v37._object = 0xE200000000000000;
            sub_1000B56E0(v37);
          }

          return;
        }

        __break(1u);
        goto LABEL_21;
      }

      v35._countAndFlagsBits = 32;
      v35._object = 0xE100000000000000;
      v36._countAndFlagsBits = sub_1000B5710(v35, v26);
      sub_1000B56E0(v36);
    }

    goto LABEL_16;
  }
}

uint64_t sub_10009E2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v7._countAndFlagsBits = 2128928;
    v7._object = 0xE300000000000000;
  }

  else
  {
    v7._countAndFlagsBits = 8316;
    v7._object = 0xE200000000000000;
  }

  sub_1000B56E0(v7);
  v8 = *a5;
  v9 = *(*a5 + 16);
  if (v9)
  {
    v10 = sub_1000633EC(a2);
    if (v11)
    {
      v9 = *(*(v8 + 56) + 8 * v10);
    }

    else
    {
      v9 = 0;
    }
  }

  if (v9 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  v16._countAndFlagsBits = sub_1000B5710(v15, v12);
  sub_1000B56E0(v16);
}

double sub_10009E380@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100063358(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10005C248();
      v9 = v11;
    }

    sub_100030C64((*(v9 + 56) + 32 * v7), a2);
    sub_10005B7DC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10009E420(uint64_t a1)
{
  v3 = sub_100030480(&qword_1001083A8, &unk_1000CDA50);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for MarkdownStyle(0);
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7 - 8, v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_100036320(v6, &qword_1001083A8, &unk_1000CDA50))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1000A49C8(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for MarkdownStyle);
      sub_10009FCC8(v12, v6);
      sub_1000A4A30(v12, type metadata accessor for MarkdownStyle);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10009E628(uint64_t a1, void *a2)
{
  v172 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  v5 = __chkstk_darwin(v172, v4);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v164 = (&v139 - v9);
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v149 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v141 = &v139 - v17;
  __chkstk_darwin(v16, v18);
  v147 = &v139 - v19;
  v20 = sub_100030480(&qword_1001083A8, &unk_1000CDA50);
  v22 = __chkstk_darwin(v20 - 8, v21);
  v151 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v24);
  v26 = &v139 - v25;
  v160 = type metadata accessor for MarkdownStyle(0);
  v27 = *(v160 - 8);
  v29 = __chkstk_darwin(v160, v28);
  v31 = __chkstk_darwin(v29, v30);
  v170 = &v139 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v159 = &v139 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v169 = &v139 - v38;
  v40 = __chkstk_darwin(v37, v39);
  v42 = __chkstk_darwin(v40, v41);
  v171 = &v139 - v43;
  v45 = __chkstk_darwin(v42, v44);
  v145 = &v139 - v46;
  __chkstk_darwin(v45, v47);
  v165 = &v139 - v50;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v146 = v49;
  v143 = v26;
  v166 = v48;
  v175 = v10;
  v140 = 0;
  v52 = a1 + 56;
  v51 = *(a1 + 56);
  v53 = -1 << *(a1 + 32);
  v157 = ~v53;
  if (-v53 < 64)
  {
    v54 = ~(-1 << -v53);
  }

  else
  {
    v54 = -1;
  }

  v55 = v54 & v51;
  v152 = (63 - v53) >> 6;
  v156 = (v27 + 56);
  v155 = (v27 + 48);
  v177 = (v11 + 48);
  v150 = (v11 + 32);
  v167 = (v11 + 8);
  v173 = a2 + 7;
  v158 = a1;

  v57 = 0;
  v58 = v169;
  v161 = a1 + 56;
  for (i = v27; ; v27 = i)
  {
    v59 = v55;
    v60 = v57;
    v176 = v55;
    if (v55)
    {
LABEL_15:
      v64 = (v59 - 1) & v59;
      v65 = v158;
      v66 = *(v158 + 48) + *(v27 + 72) * (__clz(__rbit64(v59)) | (v60 << 6));
      v67 = v143;
      sub_1000A49C8(v66, v143, type metadata accessor for MarkdownStyle);
      v68 = 0;
      v62 = v60;
    }

    else
    {
      v61 = v152 <= v57 + 1 ? v57 + 1 : v152;
      v62 = v61 - 1;
      v63 = v57;
      while (1)
      {
        v60 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_124;
        }

        if (v60 >= v152)
        {
          break;
        }

        v59 = *(v52 + 8 * v60);
        ++v63;
        if (v59)
        {
          goto LABEL_15;
        }
      }

      v64 = 0;
      v68 = 1;
      v65 = v158;
      v67 = v143;
    }

    v69 = v160;
    v154 = *v156;
    v154(v67, v68, 1, v160);
    v178 = v65;
    v179 = v52;
    v180 = v157;
    v181 = v62;
    v168 = v64;
    v182 = v64;
    v153 = *v155;
    if (v153(v67, 1, v69) == 1)
    {
      sub_100036320(v67, &qword_1001083A8, &unk_1000CDA50);
      v133 = v158;
      goto LABEL_119;
    }

    v70 = v165;
    sub_1000A47A4(v67, v165, type metadata accessor for MarkdownStyle);
    sub_1000B5FB0();
    v71 = v70;
    v72 = v145;
    sub_1000A49C8(v71, v145, type metadata accessor for MarkdownStyle);
    v73 = v175;
    v176 = *v177;
    v74 = v176(v72, 6, v175);
    if (v74 <= 2)
    {
      if (!v74)
      {
        v76 = v147;
        (*v150)(v147, v145, v73);
        sub_1000B5FC0(6uLL);
        sub_1000A2F08(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        sub_1000B55A0();
        v77 = v76;
        v58 = v169;
        (*v167)(v77, v73);
        goto LABEL_30;
      }

      v75 = v74 != 1;
    }

    else if (v74 > 4)
    {
      v75 = v74 == 5 ? 4 : 5;
    }

    else
    {
      v75 = v74 == 3 ? 2 : 3;
    }

    sub_1000B5FC0(v75);
LABEL_30:
    v78 = sub_1000B5FE0();
    v79 = -1 << *(a2 + 32);
    v55 = v78 & ~v79;
    v80 = v55 >> 6;
    v27 = 1 << v55;
    if (((1 << v55) & v173[v55 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1000A4A30(v165, type metadata accessor for MarkdownStyle);
    v57 = v62;
    v55 = v168;
  }

  v163 = ~v79;
  v174 = *(i + 72);
  while (1)
  {
    v162 = v80;
    v81 = v171;
    sub_1000A49C8(a2[6] + v174 * v55, v171, type metadata accessor for MarkdownStyle);
    v82 = *(v172 + 48);
    v83 = v81;
    v84 = v164;
    sub_1000A49C8(v83, v164, type metadata accessor for MarkdownStyle);
    sub_1000A49C8(v165, v84 + v82, type metadata accessor for MarkdownStyle);
    v85 = v176(v84, 6, v175);
    if (v85 > 2)
    {
      if (v85 > 4)
      {
        if (v85 == 5)
        {
          sub_1000A4A30(v171, type metadata accessor for MarkdownStyle);
          if (v176(v84 + v82, 6, v175) == 5)
          {
            goto LABEL_57;
          }
        }

        else
        {
          sub_1000A4A30(v171, type metadata accessor for MarkdownStyle);
          if (v176(v84 + v82, 6, v175) == 6)
          {
            goto LABEL_57;
          }
        }
      }

      else if (v85 == 3)
      {
        sub_1000A4A30(v171, type metadata accessor for MarkdownStyle);
        if (v176(v84 + v82, 6, v175) == 3)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_1000A4A30(v171, type metadata accessor for MarkdownStyle);
        if (v176(v84 + v82, 6, v175) == 4)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_52;
    }

    if (v85)
    {
      break;
    }

    v87 = v146;
    sub_1000A49C8(v84, v146, type metadata accessor for MarkdownStyle);
    v88 = v175;
    if (v176(v84 + v82, 6, v175))
    {
      sub_1000A4A30(v171, type metadata accessor for MarkdownStyle);
      (*v167)(v87, v88);
      v52 = v161;
LABEL_52:
      sub_100036320(v84, &qword_1001080A0, &qword_1000CCEC0);
      goto LABEL_53;
    }

    v89 = v84 + v82;
    v90 = v141;
    (*v150)(v141, v89, v88);
    v142 = sub_1000B4D40();
    v91 = v90;
    v92 = *v167;
    (*v167)(v91, v88);
    sub_1000A4A30(v171, type metadata accessor for MarkdownStyle);
    v92(v87, v88);
    v84 = v164;
    v52 = v161;
    if (v142)
    {
      goto LABEL_57;
    }

    sub_1000A4A30(v164, type metadata accessor for MarkdownStyle);
LABEL_53:
    v55 = (v55 + 1) & v163;
    v80 = v55 >> 6;
    v27 = 1 << v55;
    if ((v173[v55 >> 6] & (1 << v55)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v85 == 1)
  {
    sub_1000A4A30(v171, type metadata accessor for MarkdownStyle);
    v86 = v176(v84 + v82, 6, v175) == 1;
  }

  else
  {
    sub_1000A4A30(v171, type metadata accessor for MarkdownStyle);
    v86 = v176(v84 + v82, 6, v175) == 2;
  }

  if (!v86)
  {
    goto LABEL_52;
  }

LABEL_57:
  sub_1000A4A30(v84, type metadata accessor for MarkdownStyle);
  v93 = sub_1000A4A30(v165, type metadata accessor for MarkdownStyle);
  v95 = *(a2 + 32);
  v145 = ((1 << v95) + 63) >> 6;
  v56 = 8 * v145;
  v96 = v151;
  if ((v95 & 0x3Fu) > 0xD)
  {
    goto LABEL_125;
  }

  while (2)
  {
    v146 = &v139;
    __chkstk_darwin(v93, v94);
    v98 = &v139 - ((v97 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v98, v173, v97);
    v99 = *&v98[8 * v162] & ~v27;
    v164 = v98;
    *&v98[8 * v162] = v99;
    v100 = a2[2] - 1;
    v27 = v158;
    v55 = v175;
    v101 = v152;
    v102 = v168;
    v148 = v7;
LABEL_59:
    v163 = v100;
    while (2)
    {
      if (v102)
      {
        v103 = v62;
LABEL_71:
        v106 = __clz(__rbit64(v102));
        v107 = (v102 - 1) & v102;
        sub_1000A49C8(*(v27 + 48) + (v106 | (v103 << 6)) * v174, v96, type metadata accessor for MarkdownStyle);
        v108 = 0;
LABEL_72:
        v109 = v160;
        v154(v96, v108, 1, v160);
        v178 = v27;
        v179 = v52;
        v180 = v157;
        v181 = v62;
        v182 = v107;
        if (v153(v96, 1, v109) == 1)
        {
          sub_100036320(v96, &qword_1001083A8, &unk_1000CDA50);
          a2 = sub_1000A0E0C(v164, v145, v163, a2);
          goto LABEL_118;
        }

        sub_1000A47A4(v96, v58, type metadata accessor for MarkdownStyle);
        sub_1000B5FB0();
        v110 = v58;
        v111 = v159;
        sub_1000A49C8(v110, v159, type metadata accessor for MarkdownStyle);
        v112 = v176(v111, 6, v55);
        v168 = v107;
        if (v112 <= 2)
        {
          v113 = v170;
          if (v112)
          {
            sub_1000B5FC0(v112 != 1);
          }

          else
          {
            v115 = v147;
            (*v150)(v147, v159, v55);
            sub_1000B5FC0(6uLL);
            sub_1000A2F08(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            sub_1000B55A0();
            v113 = v170;
            (*v167)(v115, v55);
          }

          v58 = v169;
        }

        else
        {
          v113 = v170;
          if (v112 > 4)
          {
            v58 = v169;
            if (v112 == 5)
            {
              v114 = 4;
            }

            else
            {
              v114 = 5;
            }
          }

          else
          {
            v58 = v169;
            if (v112 == 3)
            {
              v114 = 2;
            }

            else
            {
              v114 = 3;
            }
          }

          sub_1000B5FC0(v114);
        }

        v116 = sub_1000B5FE0();
        v117 = -1 << *(a2 + 32);
        v118 = v116 & ~v117;
        v119 = v118 >> 6;
        v120 = 1 << v118;
        if (((1 << v118) & v173[v118 >> 6]) == 0)
        {
LABEL_60:
          sub_1000A4A30(v58, type metadata accessor for MarkdownStyle);
          v27 = v158;
          v55 = v175;
          v52 = v161;
          v101 = v152;
          v102 = v168;
          v96 = v151;
          continue;
        }

        v171 = ~v117;
LABEL_89:
        v121 = a2;
        sub_1000A49C8(a2[6] + v118 * v174, v113, type metadata accessor for MarkdownStyle);
        v122 = *(v172 + 48);
        sub_1000A49C8(v113, v7, type metadata accessor for MarkdownStyle);
        sub_1000A49C8(v58, &v7[v122], type metadata accessor for MarkdownStyle);
        v123 = v175;
        v124 = v176(v7, 6, v175);
        if (v124 <= 2)
        {
          if (v124)
          {
            if (v124 == 1)
            {
              sub_1000A4A30(v113, type metadata accessor for MarkdownStyle);
              if (v176(&v7[v122], 6, v123) == 1)
              {
                goto LABEL_113;
              }
            }

            else
            {
              sub_1000A4A30(v113, type metadata accessor for MarkdownStyle);
              if (v176(&v7[v122], 6, v123) == 2)
              {
                goto LABEL_113;
              }
            }

            goto LABEL_108;
          }

          v125 = v166;
          sub_1000A49C8(v7, v166, type metadata accessor for MarkdownStyle);
          if (v176(&v7[v122], 6, v123))
          {
            v126 = v170;
            sub_1000A4A30(v170, type metadata accessor for MarkdownStyle);
            v127 = v125;
            v113 = v126;
            (*v167)(v127, v123);
            v58 = v169;
            goto LABEL_108;
          }

          v128 = v149;
          (*v150)(v149, &v7[v122], v123);
          LODWORD(v165) = sub_1000B4D40();
          v129 = *v167;
          (*v167)(v128, v123);
          v130 = v170;
          sub_1000A4A30(v170, type metadata accessor for MarkdownStyle);
          v131 = v125;
          v113 = v130;
          v129(v131, v123);
          v7 = v148;
          v58 = v169;
          if (v165)
          {
LABEL_113:
            sub_1000A4A30(v7, type metadata accessor for MarkdownStyle);
            sub_1000A4A30(v58, type metadata accessor for MarkdownStyle);
            v132 = v164[v119];
            v164[v119] = v132 & ~v120;
            v86 = (v132 & v120) == 0;
            a2 = v121;
            v27 = v158;
            v55 = v175;
            v52 = v161;
            v101 = v152;
            v102 = v168;
            v96 = v151;
            if (!v86)
            {
              v100 = v163 - 1;
              if (__OFSUB__(v163, 1))
              {
                __break(1u);
              }

              if (v163 == 1)
              {

                a2 = &_swiftEmptySetSingleton;
                goto LABEL_118;
              }

              goto LABEL_59;
            }

            continue;
          }

          sub_1000A4A30(v148, type metadata accessor for MarkdownStyle);
        }

        else
        {
          if (v124 > 4)
          {
            if (v124 == 5)
            {
              sub_1000A4A30(v113, type metadata accessor for MarkdownStyle);
              if (v176(&v7[v122], 6, v123) == 5)
              {
                goto LABEL_113;
              }
            }

            else
            {
              sub_1000A4A30(v113, type metadata accessor for MarkdownStyle);
              if (v176(&v7[v122], 6, v123) == 6)
              {
                goto LABEL_113;
              }
            }
          }

          else if (v124 == 3)
          {
            sub_1000A4A30(v113, type metadata accessor for MarkdownStyle);
            if (v176(&v7[v122], 6, v123) == 3)
            {
              goto LABEL_113;
            }
          }

          else
          {
            sub_1000A4A30(v113, type metadata accessor for MarkdownStyle);
            if (v176(&v7[v122], 6, v123) == 4)
            {
              goto LABEL_113;
            }
          }

LABEL_108:
          sub_100036320(v7, &qword_1001080A0, &qword_1000CCEC0);
        }

        a2 = v121;
        v118 = (v118 + 1) & v171;
        v119 = v118 >> 6;
        v120 = 1 << v118;
        if ((v173[v118 >> 6] & (1 << v118)) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_89;
      }

      break;
    }

    if (v101 <= v62 + 1)
    {
      v104 = v62 + 1;
    }

    else
    {
      v104 = v101;
    }

    v105 = v104 - 1;
    while (1)
    {
      v103 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v103 >= v101)
      {
        v107 = 0;
        v108 = 1;
        v62 = v105;
        goto LABEL_72;
      }

      v102 = *(v52 + 8 * v103);
      ++v62;
      if (v102)
      {
        v62 = v103;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    v135 = v56;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v96 = v151;
      continue;
    }

    break;
  }

  v136 = swift_slowAlloc();
  memcpy(v136, v173, v135);
  v137 = v140;
  v138 = sub_1000A0368(v136, v145, a2, v55, &v178);

  if (v137)
  {

    __break(1u);
  }

  else
  {

    a2 = v138;
LABEL_118:
    v133 = v178;
LABEL_119:
    sub_100035A5C(v133);
    return a2;
  }

  return result;
}

uint64_t sub_10009FCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000B4DB0();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  __chkstk_darwin(v55, v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for MarkdownStyle(0);
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v52 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v43 - v17;
  v19 = v2;
  v20 = *v2;
  sub_1000B5FB0();
  v56 = a1;
  sub_1000997C4(v57);
  v21 = sub_1000B5FE0();
  v22 = v20 + 56;
  v23 = -1 << *(v20 + 32);
  v24 = v21 & ~v23;
  if (((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    v37 = 1;
    return (*(v12 + 56))(a2, v37, 1, v11);
  }

  v46 = v11;
  v43 = v19;
  v47 = a2;
  v53 = ~v23;
  v45 = v12;
  v54 = *(v12 + 72);
  v25 = v49;
  v26 = (v49 + 6);
  v49 += 4;
  v50 = (v25 + 1);
  v51 = v20;
  while (1)
  {
    v27 = v54 * v24;
    sub_1000A49C8(*(v20 + 48) + v54 * v24, v18, type metadata accessor for MarkdownStyle);
    v28 = *(v55 + 48);
    sub_1000A49C8(v18, v10, type metadata accessor for MarkdownStyle);
    sub_1000A49C8(v56, &v10[v28], type metadata accessor for MarkdownStyle);
    v29 = *v26;
    v30 = (*v26)(v10, 6, v5);
    if (v30 > 2)
    {
      if (v30 > 4)
      {
        if (v30 == 5)
        {
          sub_1000A4A30(v18, type metadata accessor for MarkdownStyle);
          if (v29(&v10[v28], 6, v5) == 5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1000A4A30(v18, type metadata accessor for MarkdownStyle);
          if (v29(&v10[v28], 6, v5) == 6)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v30 == 3)
      {
        sub_1000A4A30(v18, type metadata accessor for MarkdownStyle);
        if (v29(&v10[v28], 6, v5) == 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1000A4A30(v18, type metadata accessor for MarkdownStyle);
        if (v29(&v10[v28], 6, v5) == 4)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    v31 = v22;
    v32 = v52;
    if (v30)
    {
      break;
    }

    sub_1000A49C8(v10, v52, type metadata accessor for MarkdownStyle);
    if (v29(&v10[v28], 6, v5))
    {
      sub_1000A4A30(v18, type metadata accessor for MarkdownStyle);
      (*v50)(v32, v5);
      v22 = v31;
      v20 = v51;
LABEL_23:
      sub_100036320(v10, &qword_1001080A0, &qword_1000CCEC0);
      goto LABEL_24;
    }

    v34 = v48;
    (*v49)(v48, &v10[v28], v5);
    v44 = sub_1000B4D40();
    v35 = v34;
    v36 = *v50;
    (*v50)(v35, v5);
    sub_1000A4A30(v18, type metadata accessor for MarkdownStyle);
    v36(v32, v5);
    v22 = v31;
    v20 = v51;
    if (v44)
    {
      goto LABEL_29;
    }

    sub_1000A4A30(v10, type metadata accessor for MarkdownStyle);
LABEL_24:
    v24 = (v24 + 1) & v53;
    if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      v37 = 1;
      a2 = v47;
      goto LABEL_32;
    }
  }

  if (v30 == 1)
  {
    sub_1000A4A30(v18, type metadata accessor for MarkdownStyle);
    v33 = v29(&v10[v28], 6, v5) == 1;
  }

  else
  {
    sub_1000A4A30(v18, type metadata accessor for MarkdownStyle);
    v33 = v29(&v10[v28], 6, v5) == 2;
  }

  v22 = v31;
  v20 = v51;
  if (!v33)
  {
    goto LABEL_23;
  }

LABEL_29:
  sub_1000A4A30(v10, type metadata accessor for MarkdownStyle);
  v38 = v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v38;
  v57[0] = *v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100086C44();
    v40 = v57[0];
  }

  v41 = *(v40 + 48) + v27;
  a2 = v47;
  sub_1000A47A4(v41, v47, type metadata accessor for MarkdownStyle);
  sub_1000A12CC(v24);
  v37 = 0;
  *v38 = v57[0];
LABEL_32:
  v12 = v45;
  v11 = v46;
  return (*(v12 + 56))(a2, v37, 1, v11);
}

void *sub_1000A0368(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v75[0] = a2;
  v91 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  __chkstk_darwin(v91, v9);
  v11 = v75 - v10;
  v95 = sub_1000B4DB0();
  v12 = *(v95 - 8);
  v14 = __chkstk_darwin(v95, v13);
  v79 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v77 = v75 - v17;
  v18 = sub_100030480(&qword_1001083A8, &unk_1000CDA50);
  __chkstk_darwin(v18 - 8, v19);
  v82 = v75 - v20;
  v85 = type metadata accessor for MarkdownStyle(0);
  v22 = __chkstk_darwin(v85, v21);
  v24 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v22, v25);
  v28 = v75 - v27;
  v30 = __chkstk_darwin(v26, v29);
  v87 = v75 - v31;
  result = __chkstk_darwin(v30, v32);
  v96 = v75 - v34;
  v35 = *(a3 + 16);
  v36 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v37 = *(a1 + v36) & ((-1 << a4) - 1);
  v78 = a1;
  *(a1 + v36) = v37;
  v38 = v35 - 1;
  v84 = (v39 + 56);
  v88 = v39;
  v83 = (v39 + 48);
  v98 = (v12 + 48);
  v80 = (v12 + 32);
  v89 = (v12 + 8);
  v97 = a3;
  v94 = a3 + 56;
  v81 = a5;
  v90 = v24;
LABEL_2:
  v76 = v38;
LABEL_4:
  while (2)
  {
    v41 = *a5;
    v40 = a5[1];
    v43 = a5[2];
    v42 = a5[3];
    v44 = a5[4];
    v93 = v43;
    if (v44)
    {
      v45 = v42;
LABEL_13:
      v49 = (v44 - 1) & v44;
      v50 = v82;
      sub_1000A49C8(*(v41 + 48) + *(v88 + 72) * (__clz(__rbit64(v44)) | (v45 << 6)), v82, type metadata accessor for MarkdownStyle);
      v51 = 0;
      v48 = v45;
LABEL_14:
      v52 = v85;
      (*v84)(v50, v51, 1, v85);
      *a5 = v41;
      a5[1] = v40;
      a5[2] = v93;
      a5[3] = v48;
      a5[4] = v49;
      if ((*v83)(v50, 1, v52) == 1)
      {
        sub_100036320(v50, &qword_1001083A8, &unk_1000CDA50);
        v74 = v97;

        return sub_1000A0E0C(v78, v75[0], v76, v74);
      }

      v53 = v96;
      sub_1000A47A4(v50, v96, type metadata accessor for MarkdownStyle);
      sub_1000B5FB0();
      v54 = v53;
      v55 = v87;
      sub_1000A49C8(v54, v87, type metadata accessor for MarkdownStyle);
      v56 = *v98;
      v57 = v95;
      v58 = (*v98)(v55, 6, v95);
      if (v58 <= 2)
      {
        v59 = v90;
        if (!v58)
        {
          v61 = v77;
          (*v80)(v77, v87, v57);
          sub_1000B5FC0(6uLL);
          sub_1000A2F08(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          sub_1000B55A0();
          (*v89)(v61, v57);
LABEL_28:
          v62 = sub_1000B5FE0();
          v63 = -1 << *(v97 + 32);
          v64 = v62 & ~v63;
          v65 = v64 >> 6;
          v66 = 1 << v64;
          if (((1 << v64) & *(v94 + 8 * (v64 >> 6))) == 0)
          {
LABEL_3:
            result = sub_1000A4A30(v96, type metadata accessor for MarkdownStyle);
            a5 = v81;
            continue;
          }

          v92 = ~v63;
          v93 = *(v88 + 72);
          while (1)
          {
            sub_1000A49C8(*(v97 + 48) + v93 * v64, v28, type metadata accessor for MarkdownStyle);
            v67 = *(v91 + 48);
            sub_1000A49C8(v28, v11, type metadata accessor for MarkdownStyle);
            sub_1000A49C8(v96, &v11[v67], type metadata accessor for MarkdownStyle);
            v68 = v95;
            v69 = v56(v11, 6, v95);
            if (v69 > 2)
            {
              if (v69 > 4)
              {
                if (v69 == 5)
                {
                  sub_1000A4A30(v28, type metadata accessor for MarkdownStyle);
                  if (v56(&v11[v67], 6, v68) == 5)
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  sub_1000A4A30(v28, type metadata accessor for MarkdownStyle);
                  if (v56(&v11[v67], 6, v68) == 6)
                  {
                    goto LABEL_54;
                  }
                }
              }

              else if (v69 == 3)
              {
                sub_1000A4A30(v28, type metadata accessor for MarkdownStyle);
                if (v56(&v11[v67], 6, v68) == 3)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                sub_1000A4A30(v28, type metadata accessor for MarkdownStyle);
                if (v56(&v11[v67], 6, v68) == 4)
                {
                  goto LABEL_54;
                }
              }

              goto LABEL_49;
            }

            if (v69)
            {
              break;
            }

            sub_1000A49C8(v11, v59, type metadata accessor for MarkdownStyle);
            if (v56(&v11[v67], 6, v68))
            {
              sub_1000A4A30(v28, type metadata accessor for MarkdownStyle);
              (*v89)(v59, v68);
LABEL_49:
              sub_100036320(v11, &qword_1001080A0, &qword_1000CCEC0);
              goto LABEL_50;
            }

            v70 = v79;
            (*v80)(v79, &v11[v67], v68);
            v86 = sub_1000B4D40();
            v71 = *v89;
            v72 = v70;
            v59 = v90;
            (*v89)(v72, v68);
            sub_1000A4A30(v28, type metadata accessor for MarkdownStyle);
            v71(v59, v95);
            if (v86)
            {
LABEL_54:
              sub_1000A4A30(v11, type metadata accessor for MarkdownStyle);
              result = sub_1000A4A30(v96, type metadata accessor for MarkdownStyle);
              v73 = v78[v65];
              v78[v65] = v73 & ~v66;
              a5 = v81;
              if ((v73 & v66) != 0)
              {
                v38 = v76 - 1;
                if (__OFSUB__(v76, 1))
                {
                  goto LABEL_60;
                }

                if (v76 == 1)
                {
                  return &_swiftEmptySetSingleton;
                }

                goto LABEL_2;
              }

              goto LABEL_4;
            }

            sub_1000A4A30(v11, type metadata accessor for MarkdownStyle);
LABEL_50:
            v64 = (v64 + 1) & v92;
            v65 = v64 >> 6;
            v66 = 1 << v64;
            if ((*(v94 + 8 * (v64 >> 6)) & (1 << v64)) == 0)
            {
              goto LABEL_3;
            }
          }

          if (v69 == 1)
          {
            sub_1000A4A30(v28, type metadata accessor for MarkdownStyle);
            if (v56(&v11[v67], 6, v68) == 1)
            {
              goto LABEL_54;
            }
          }

          else
          {
            sub_1000A4A30(v28, type metadata accessor for MarkdownStyle);
            if (v56(&v11[v67], 6, v68) == 2)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_49;
        }

        v60 = v58 != 1;
      }

      else
      {
        v59 = v90;
        if (v58 > 4)
        {
          if (v58 == 5)
          {
            v60 = 4;
          }

          else
          {
            v60 = 5;
          }
        }

        else if (v58 == 3)
        {
          v60 = 2;
        }

        else
        {
          v60 = 3;
        }
      }

      sub_1000B5FC0(v60);
      goto LABEL_28;
    }

    break;
  }

  v46 = (v43 + 64) >> 6;
  if (v46 <= v42 + 1)
  {
    v47 = v42 + 1;
  }

  else
  {
    v47 = (v43 + 64) >> 6;
  }

  v48 = v47 - 1;
  while (1)
  {
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v45 >= v46)
    {
      v49 = 0;
      v51 = 1;
      v50 = v82;
      goto LABEL_14;
    }

    v44 = *(v40 + 8 * v45);
    ++v42;
    if (v44)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1000A0E0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = sub_1000B4DB0();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MarkdownStyle(0);
  v48 = *(v12 - 8);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v50 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v43 - v17;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100030480(&qword_1001080A8, &qword_1000CCEC8);
  result = sub_1000B5BF0();
  v19 = result;
  v45 = v11;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v46 = a4;
  v47 = (v8 + 48);
  v43 = (v8 + 8);
  v44 = (v8 + 32);
  v23 = result + 56;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_16:
    v27 = *(a4 + 48);
    v49 = *(v48 + 72);
    sub_1000A49C8(v27 + v49 * (v24 | (v22 << 6)), v18, type metadata accessor for MarkdownStyle);
    sub_1000B5FB0();
    v28 = v18;
    v29 = v18;
    v30 = v50;
    sub_1000A49C8(v29, v50, type metadata accessor for MarkdownStyle);
    v31 = (*v47)(v30, 6, v51);
    if (v31 <= 2)
    {
      if (!v31)
      {
        (*v44)(v45, v50, v51);
        sub_1000B5FC0(6uLL);
        sub_1000A2F08(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v33 = v51;
        sub_1000B55A0();
        (*v43)(v45, v33);
        v18 = v28;
        goto LABEL_28;
      }

      v18 = v28;
      v32 = v31 != 1;
    }

    else if (v31 > 4)
    {
      v18 = v28;
      if (v31 == 5)
      {
        v32 = 4;
      }

      else
      {
        v32 = 5;
      }
    }

    else
    {
      v18 = v28;
      if (v31 == 3)
      {
        v32 = 2;
      }

      else
      {
        v32 = 3;
      }
    }

    sub_1000B5FC0(v32);
LABEL_28:
    result = sub_1000B5FE0();
    v34 = -1 << *(v19 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v23 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_38;
        }
      }

      goto LABEL_43;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
    *(v23 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    result = sub_1000A47A4(v18, *(v19 + 48) + v37 * v49, type metadata accessor for MarkdownStyle);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_44;
    }

    a4 = v46;
    if (!a3)
    {
LABEL_40:

      return v19;
    }
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      goto LABEL_40;
    }

    v26 = a1[v22];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v21 = (v26 - 1) & v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1000A12CC(int64_t a1)
{
  v43 = sub_1000B4DB0();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43, v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for MarkdownStyle(0);
  v6 = *(v39 - 8);
  v8 = __chkstk_darwin(v39, v7);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8, v10);
  v44 = &v36 - v12;
  v13 = *v1;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  v41 = *v1 + 56;
  if (((1 << v15) & *(v41 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = v41;
    v18 = sub_1000B5B30();
    if ((*(v17 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v19 = (v18 + 1) & v16;
      v20 = *(v6 + 72);
      v40 = (v3 + 48);
      v36 = (v3 + 8);
      v37 = (v3 + 32);
      while (1)
      {
        v21 = v16;
        v22 = v20;
        v23 = v20 * v15;
        v24 = v44;
        sub_1000A49C8(*(v13 + 48) + v20 * v15, v44, type metadata accessor for MarkdownStyle);
        sub_1000B5FB0();
        v25 = v42;
        sub_1000A49C8(v24, v42, type metadata accessor for MarkdownStyle);
        v26 = (*v40)(v25, 6, v43);
        if (v26 <= 2)
        {
          if (v26)
          {
            sub_1000B5FC0(v26 != 1);
          }

          else
          {
            v28 = v38;
            v29 = v43;
            (*v37)(v38, v42, v43);
            sub_1000B5FC0(6uLL);
            sub_1000A2F08(&unk_100107790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            sub_1000B55A0();
            (*v36)(v28, v29);
          }

          v16 = v21;
        }

        else
        {
          if (v26 > 4)
          {
            v16 = v21;
            v27 = v26 == 5 ? 4 : 5;
          }

          else
          {
            v16 = v21;
            v27 = v26 == 3 ? 2 : 3;
          }

          sub_1000B5FC0(v27);
        }

        v30 = sub_1000B5FE0();
        sub_1000A4A30(v44, type metadata accessor for MarkdownStyle);
        v31 = v30 & v16;
        if (a1 >= v19)
        {
          break;
        }

        v20 = v22;
        if (v31 < v19)
        {
          goto LABEL_24;
        }

LABEL_25:
        v32 = v20 * a1;
        if (v20 * a1 < v23 || *(v13 + 48) + v20 * a1 >= (*(v13 + 48) + v23 + v20))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v15;
          if (v32 == v23)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v15;
LABEL_6:
        v15 = (v15 + 1) & v16;
        if (((*(v41 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v20 = v22;
      if (v31 < v19)
      {
        goto LABEL_6;
      }

LABEL_24:
      if (a1 < v31)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_29:

    *(v41 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v41 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v13 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v35;
    ++*(v13 + 36);
  }

  return result;
}

uint64_t sub_1000A1774(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B4DB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MarkdownStyle(0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  v15 = __chkstk_darwin(v13 - 8, v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1000A49C8(a1, &v24 - v16, type metadata accessor for MarkdownStyle);
  sub_1000A49C8(a2, &v17[v18], type metadata accessor for MarkdownStyle);
  v19 = *(v5 + 48);
  v20 = v19(v17, 6, v4);
  if (v20 <= 2)
  {
    if (!v20)
    {
      sub_1000A49C8(v17, v12, type metadata accessor for MarkdownStyle);
      if (!v19(&v17[v18], 6, v4))
      {
        (*(v5 + 32))(v8, &v17[v18], v4);
        v21 = sub_1000B4D40();
        v23 = *(v5 + 8);
        v23(v8, v4);
        v23(v12, v4);
        sub_1000A4A30(v17, type metadata accessor for MarkdownStyle);
        return v21 & 1;
      }

      (*(v5 + 8))(v12, v4);
      goto LABEL_20;
    }

    if (v20 == 1)
    {
      if (v19(&v17[v18], 6, v4) != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v19(&v17[v18], 6, v4) == 2)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_100036320(v17, &qword_1001080A0, &qword_1000CCEC0);
    v21 = 0;
    return v21 & 1;
  }

  if (v20 > 4)
  {
    if (v20 == 5)
    {
      if (v19(&v17[v18], 6, v4) != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v19(&v17[v18], 6, v4) == 6)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v20 == 3)
  {
    if (v19(&v17[v18], 6, v4) != 3)
    {
      goto LABEL_20;
    }
  }

  else if (v19(&v17[v18], 6, v4) != 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_1000A4A30(v17, type metadata accessor for MarkdownStyle);
  v21 = 1;
  return v21 & 1;
}

id sub_1000A1B30(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 57);
  result = [a1 attributedString];
  v8 = result;
  v44 = a2;
  if (v6)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    [result ic_range];

    v8 = sub_1000B5A80();
    v9 = [a2 managedObjectContext];
    v10 = *(a3 + 60);
    v53 = _swiftEmptyArrayStorage;
    v11 = [v8 string];
    v12 = sub_1000B5620();
    v14 = v13;

    v51 = v12;
    v52 = v14;
    v15 = [v8 ic_range];
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = &v51;
    *(v18 + 24) = v9;
    *(v18 + 32) = v10;
    a2 = swift_allocObject();
    a2[2] = sub_1000A73C8;
    a2[3] = v18;
    v49 = sub_1000A7388;
    v50 = a2;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100092444;
    v48 = &unk_1000F5A18;
    v19 = _Block_copy(&aBlock);
    v20 = v9;

    [v8 enumerateAttributesInRange:v15 options:v17 usingBlock:{0, v19}];
    sub_10004CE38(a3);

    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_7:
      v43 = v51;

      return v43;
    }

    __break(1u);
  }

  if (v8)
  {
    v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v8];

    v23 = ICTTAttributeNameReplicaID;
    v24 = v22;
    v25 = [v24 ic_range];
    [v24 removeAttribute:v23 range:{v25, v26}];

    v27 = ICTTAttributeNameTimestamp;
    v28 = [v24 ic_range];
    [v24 removeAttribute:v27 range:{v28, v29}];

    v30 = [a2 managedObjectContext];
    v31 = *(a3 + 60);
    v53 = _swiftEmptyArrayStorage;
    v32 = [v24 string];
    v33 = sub_1000B5620();
    v35 = v34;

    v51 = v33;
    v52 = v35;
    v36 = [v24 ic_range];
    v38 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = &v51;
    *(v39 + 24) = v30;
    *(v39 + 32) = v31;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1000A2054;
    *(v40 + 24) = v39;
    v49 = sub_1000A2070;
    v50 = v40;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100092444;
    v48 = &unk_1000F59A0;
    v41 = _Block_copy(&aBlock);
    v42 = v30;

    [v24 enumerateAttributesInRange:v36 options:v38 usingBlock:{0, v41}];
    sub_10004CE38(a3);

    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if ((v41 & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000A201C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000A2098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A2110(void *a1, char a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100030990(_swiftEmptyArrayStorage);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v25 = ICTTAttributeNameParagraphStyle;
  v10 = [a1 ic_range];
  v23 = v11;
  v24 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = a1;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v12 + 48) = v7;
  *(v12 + 56) = a2;
  *(v12 + 64) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000A2D74;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000A2DB4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000905D8;
  aBlock[3] = &unk_1000F5B08;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  v16 = a3;

  [v15 enumerateAttribute:v25 inRange:v24 options:v23 usingBlock:{0, v14}];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v19 = *(v6 + 16);
    v20 = *(v6 + 24);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
    }

    else
    {
      v22 = [v15 string];
      v19 = sub_1000B5620();
    }

    return v19;
  }

  return result;
}

uint64_t sub_1000A2420(void *a1, id a2, uint64_t a3)
{
  v5 = [a2 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 attributedString];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v7];

      v10 = ICTTAttributeNameReplicaID;
      v11 = v9;
      v12 = [v11 ic_range];
      [v11 removeAttribute:v10 range:{v12, v13}];

      v14 = ICTTAttributeNameTimestamp;
      v15 = [v11 ic_range];
      [v11 removeAttribute:v14 range:{v15, v16}];

      v17 = sub_1000A2110(v11, *(a3 + 1), v6);
      return v17;
    }

    __break(1u);
  }

  if (qword_100106A88 != -1)
  {
    swift_once();
  }

  v19 = sub_1000B5530();
  sub_100036380(v19, qword_100108350);
  v20 = sub_1000B5520();
  v21 = sub_1000B5920();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "no context found for markdown export of note", v22, 2u);
  }

  result = sub_1000B5CE0();
  __break(1u);
  return result;
}

uint64_t sub_1000A2674(CGColor *a1)
{
  v2 = CGColorGetColorSpace(a1);
  if (v2)
  {
    v3 = v2;
    v4 = CGColorSpaceCopyName(v2);

    if (v4)
    {
      v5 = sub_1000B58D0();
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          v26 = _swiftEmptyArrayStorage;
          v7 = v5;
          sub_1000434D4(0, v6, 0);
          v8 = v7;
          v9 = _swiftEmptyArrayStorage;
          v10 = _swiftEmptyArrayStorage[2];
          v11 = 32;
          do
          {
            v12 = *(v8 + v11);
            v26 = v9;
            v13 = v9[3];
            if (v10 >= v13 >> 1)
            {
              sub_1000434D4((v13 > 1), v10 + 1, 1);
              v8 = v7;
              v9 = v26;
            }

            v9[2] = v10 + 1;
            v9[v10 + 4] = v12;
            v11 += 8;
            ++v10;
            --v6;
          }

          while (v6);
        }

        v25 = sub_1000B5620();

        return v25;
      }
    }
  }

  if (qword_100106A88 != -1)
  {
    swift_once();
  }

  v14 = sub_1000B5530();
  sub_100036380(v14, qword_100108350);
  v15 = a1;
  v16 = sub_1000B5520();
  v17 = sub_1000B5920();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    type metadata accessor for CGColor(0);
    v20 = v15;
    v21 = sub_1000B5660();
    v23 = sub_100062B20(v21, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cannot create color from CGColor — returning nil {cgColor: %s}", v18, 0xCu);
    sub_100035DA8(v19);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000A2914(uint64_t result)
{
  if (result > 4)
  {
    if (result <= 100)
    {
      if (result == 5)
      {
        return 4;
      }

      if (result == 100)
      {
        return 6;
      }
    }

    else
    {
      switch(result)
      {
        case 'e':
          return 7;
        case 'f':
          return 8;
        case 'g':
          return 9;
      }
    }
  }

  else
  {
    if (result > 1)
    {
      if (result != 2 && result != 3)
      {
        return 5;
      }

      return result;
    }

    if (result <= 1)
    {
      return result;
    }
  }

  if (qword_100106A88 != -1)
  {
    swift_once();
  }

  v1 = sub_1000B5530();
  sub_100036380(v1, qword_100108350);
  v2 = sub_1000B5520();
  v3 = sub_1000B5930();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unknown named paragraph style — returning nil", v4, 2u);
  }

  return 10;
}

unint64_t sub_1000A2A8C(unint64_t result)
{
  if (result >= 5)
  {
    if (qword_100106A88 != -1)
    {
      swift_once();
    }

    v1 = sub_1000B5530();
    sub_100036380(v1, qword_100108350);
    v2 = sub_1000B5520();
    v3 = sub_1000B5930();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unknown text alignment — returning nil", v4, 2u);
    }

    return 5;
  }

  return result;
}

unint64_t sub_1000A2B74(unint64_t a1)
{
  if (a1 < 6)
  {
    return 0x40302010005uLL >> (8 * a1);
  }

  if (qword_100106A88 != -1)
  {
    swift_once();
  }

  v2 = sub_1000B5530();
  sub_100036380(v2, qword_100108350);
  v3 = sub_1000B5520();
  v4 = sub_1000B5930();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown emphasis color type — returning nil", v5, 2u);
  }

  return 5;
}

uint64_t sub_1000A2C94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2CCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2D14()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000A2DDC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000A2E94()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A2F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A2F50(void *a1)
{
  v3 = sub_100030480(&qword_100108898, &qword_1000CE290);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A670C();
  sub_1000B6010();
  if (!v1)
  {
    v11 = 0;
    v8 = sub_1000B5DC0();
    sub_100030480(&qword_1001088A8, &qword_1000CE298);
    v10[15] = 1;
    sub_1000A6760(&qword_1001088B0, &qword_1001088B8, &unk_1000CDE7C, &protocol conformance descriptor for <A> [A]);
    sub_1000B5E00();
    (*(v4 + 8))(v7, v3);
  }

  sub_100035DA8(a1);
  return v8;
}

uint64_t sub_1000A318C(void *a1)
{
  v3 = sub_100030480(&qword_100108980, &qword_1000CEA48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A718C();
  sub_1000B6010();
  if (!v1)
  {
    v11 = 0;
    v8 = sub_1000B5DC0();
    sub_100030480(&qword_100108990, &qword_1000CEA50);
    v10[15] = 1;
    sub_1000A71E0(&qword_100108998, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
    sub_1000B5E00();
    (*(v4 + 8))(v7, v3);
  }

  sub_100035DA8(a1);
  return v8;
}

uint64_t sub_1000A33B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A6953746E696F70 && a2 == 0xE900000000000065 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C6F427369 && a2 == 0xE600000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C6174497369 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C7265646E557369 && a2 == 0xEB00000000656E69 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656B697274537369 && a2 == 0xEF6867756F726874 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7263737265707573 && a2 == 0xEB00000000747069 || (sub_1000B5F20() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1000A3658@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100030480(&qword_100108760, &qword_1000CE240);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v33 - v8;
  v71 = 1;
  v68 = 1;
  v10 = a1[3];
  v43 = a1;
  sub_1000458B4(a1, v10);
  sub_1000A5F18();
  sub_1000B6010();
  if (v2)
  {
    v72 = v2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 2;
    v16 = 2;
    v17 = 2;
    v18 = 2;
LABEL_4:
    sub_100035DA8(v43);
    *&v52 = v14;
    *(&v52 + 1) = v13;
    v53 = v12;
    v54 = v71;
    v55 = v18;
    v56 = v17;
    v57 = v16;
    v58 = v15;
    v59 = v69;
    v60 = v70;
    v61 = v11;
    v62 = v68;
    *v63 = *v67;
    *&v63[3] = *&v67[3];
    v64 = 0;
    v65 = 0;
    v66 = 0;
    return sub_1000A5F6C(&v52);
  }

  LOBYTE(v52) = 0;
  *&v42 = sub_1000B5D70();
  *(&v42 + 1) = v20;
  LOBYTE(v52) = 1;
  v41 = sub_1000B5D90();
  v71 = v21 & 1;
  LOBYTE(v52) = 2;
  v40 = sub_1000B5D80();
  LOBYTE(v52) = 3;
  v39 = sub_1000B5D80();
  LOBYTE(v52) = 4;
  v38 = sub_1000B5D80();
  LOBYTE(v52) = 5;
  v15 = sub_1000B5D80();
  LOBYTE(v52) = 6;
  v22 = sub_1000B5DA0();
  v72 = 0;
  v11 = v22;
  v68 = v23 & 1;
  v49 = 7;
  sub_1000A5F9C();
  v24 = v72;
  sub_1000B5DB0();
  v72 = v24;
  if (v24)
  {
    (*(v6 + 8))(v9, v5);
    v13 = *(&v42 + 1);
    v14 = v42;
    v12 = v41;
    v18 = v40;
    v17 = v39;
    v16 = v38;
    goto LABEL_4;
  }

  (*(v6 + 8))(v9, v5);
  v35 = *(&v50 + 1);
  v36 = v50;
  v34 = v51;
  v25 = v42;
  v44 = v42;
  v26 = v41;
  *&v45 = v41;
  v37 = v71;
  BYTE8(v45) = v71;
  v27 = v40;
  BYTE9(v45) = v40;
  v28 = v39;
  BYTE10(v45) = v39;
  v29 = v38;
  BYTE11(v45) = v38;
  BYTE12(v45) = v15;
  *&v46 = v11;
  v30 = v68;
  BYTE8(v46) = v68;
  v47 = v50;
  v48 = v51;
  sub_1000A5FF0(&v44, &v52);
  sub_100035DA8(v43);
  v52 = __PAIR128__(*(&v42 + 1), v25);
  v53 = v26;
  v54 = v37;
  v55 = v27;
  v56 = v28;
  v57 = v29;
  v58 = v15;
  v61 = v11;
  v62 = v30;
  v64 = v36;
  v65 = v35;
  v66 = v34;
  result = sub_1000A5F6C(&v52);
  v31 = v47;
  *(a2 + 32) = v46;
  *(a2 + 48) = v31;
  *(a2 + 64) = v48;
  v32 = v45;
  *a2 = v44;
  *(a2 + 16) = v32;
  return result;
}

unint64_t sub_1000A3CAC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F36B0;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000A3CF8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F3748;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000A3D44(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F3858;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000A3D90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65646E69 && a2 == 0xE600000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000C7B40 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73696C6B63656863 && a2 == 0xED00006D65744974 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F75516B636F6C62 && a2 == 0xEF6C6576654C6574 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}