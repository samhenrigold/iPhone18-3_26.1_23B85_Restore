uint64_t sub_1B0B1FF48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v7 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = *(a1 + 43);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = *(a1 + 6);
  v25 = a1[5];
  v24 = *(a1 + 48);
  sub_1B03BCDD0(a2, &v22 - v11, type metadata accessor for MessageBatches);
  LOWORD(a2) = *(v23 + 4);
  *(a4 + 36) = 1;
  *(a4 + 104) = 0;
  *(a4 + 112) = 1;
  *a4 = v14;
  *(a4 + 8) = v15;
  *(a4 + 16) = v13;
  *(a4 + 24) = v16;
  *(a4 + 32) = v17;
  v26 = v16;
  v27 = v17;
  *(a4 + 40) = &type metadata for DetectRemovedMessages;
  sub_1B0451F2C();
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  sub_1B03BCDD0(v12, v9, type metadata accessor for MessageBatches);
  v18 = sub_1B0B48350(v9, v25, v24 & 1);
  v20 = v19;
  result = sub_1B0B238BC(v12, type metadata accessor for MessageBatches);
  *(a4 + 88) = v18;
  *(a4 + 96) = v20;
  *(a4 + 100) = BYTE4(v20) & 1;
  *(a4 + 101) = a2;
  return result;
}

double sub_1B0B20110@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v9 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28[-v13];
  v29 = *(a1 + 43);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *(a1 + 6);
  v32 = a1[5];
  v31 = *(a1 + 48);
  LOBYTE(a2) = *(a2 + 1);
  v19 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  LODWORD(a1) = *(v19 + *(_s13SelectedStateV7WrappedVMa(0) + 20) + 32);
  sub_1B03BCDD0(v30, v14, type metadata accessor for MessageBatches);
  *(&v37 + 1) = sub_1B03D0770(&unk_1F27113A8);
  LOBYTE(v38) = 1;
  v42 = 0uLL;
  v43[0] = 1;
  *&v35 = v15;
  *(&v35 + 1) = v16;
  LOWORD(v36) = v29;
  *(&v36 + 1) = v17;
  LODWORD(v37) = v18;
  BYTE8(v41) = a2;
  BYTE9(v41) = a1 == 0;
  v33 = v17;
  v34 = v18;
  *(&v38 + 1) = &type metadata for DetectChangesToMessages;
  sub_1B0451F2C();
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  sub_1B03BCDD0(v14, v11, type metadata accessor for MessageBatches);
  LOBYTE(v33) = 0;
  sub_1B0B3EDEC(0xFFFFFFFFLL);
  v20 = sub_1B0B48350(v11, v32, v31 & 1);
  v22 = v21;
  sub_1B0B238BC(v14, type metadata accessor for MessageBatches);
  *&v43[8] = v20;
  *&v43[16] = v22;
  v43[20] = BYTE4(v22) & 1;
  v23 = v42;
  *(a5 + 96) = v41;
  *(a5 + 112) = v23;
  v24 = v38;
  *(a5 + 32) = v37;
  *(a5 + 48) = v24;
  v25 = v40;
  *(a5 + 64) = v39;
  *(a5 + 80) = v25;
  v26 = v36;
  *a5 = v35;
  *(a5 + 16) = v26;
  result = *v43;
  *(a5 + 128) = *v43;
  *(a5 + 141) = *&v43[13];
  return result;
}

unint64_t sub_1B0B203CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_u64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_u64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_u64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_u64(v9.u64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1B0B20480()
{
  v32 = v0[3];
  v33 = v0[1];
  v28 = v0[7];
  v29 = v0[5];
  v47[0] = *v0;
  v30 = v47[0];
  v1 = *(v47[0] + 16);
  sub_1B03B5C80(v47, &v38, &qword_1EB6E45C8, &qword_1B0EC5940);

  if (v1)
  {
    v2 = 0;
    v3 = (v30 + 64);
    while (1)
    {
      v4 = v2 + 1;
      v5 = *v3;
      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *(v3 - 3);
      LODWORD(v38) = *(v3 - 8);
      v39 = v8;
      v40 = v6;
      v41 = v7;
      v42 = v5;
      sub_1B03B2000(v8, v6);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v33(&v34, &v38);
      sub_1B0391D50(v39, v40);

      v9 = v34;
      v10 = v35;
      v11 = v37;
      v12 = v36;
      v43 = v34;
      v44 = v35;
      v46 = v37;
      v45 = v36;
      if (v32(&v43))
      {
        break;
      }

      v3 += 40;
      ++v2;
      if (v1 == v4)
      {
        goto LABEL_5;
      }
    }

    v38 = v9;
    v39 = v10;
    LOWORD(v40) = v12;
    BYTE2(v40) = (v12 | (v11 << 16)) >> 16;
    v29(&v43, &v38);
    LODWORD(v38) = v43;
    v39 = v44;
    LOWORD(v40) = v45;
    BYTE2(v40) = v46;
    result = v28(&v43, &v38);
    v14 = v43;
    if (v1 - 1 != v2)
    {
      v15 = v30 + 64;
      v27 = v30 + 64;
      do
      {
        v31 = v14;
        v16 = (v15 + 40 * v4);
        while (1)
        {
          if (v4 >= v1)
          {
            __break(1u);
LABEL_21:
            __break(1u);
            return result;
          }

          v17 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_21;
          }

          v18 = *v16;
          v19 = *(v16 - 2);
          v20 = *(v16 - 1);
          v21 = *(v16 - 3);
          LODWORD(v38) = *(v16 - 8);
          v39 = v21;
          v40 = v19;
          v41 = v20;
          v42 = v18;
          sub_1B03B2000(v21, v19);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v33(&v34, &v38);
          sub_1B0391D50(v39, v40);

          v23 = v34;
          v22 = v35;
          v24 = v37;
          v25 = v36;
          v43 = v34;
          v44 = v35;
          v46 = v37;
          v45 = v36;
          result = v32(&v43);
          if (result)
          {
            break;
          }

          ++v4;
          v16 += 40;
          if (v17 == v1)
          {
            v14 = v31;
            goto LABEL_18;
          }
        }

        v38 = v23;
        v39 = v22;
        LOWORD(v40) = v25;
        BYTE2(v40) = (v25 | (v24 << 16)) >> 16;
        v29(&v43, &v38);
        LODWORD(v38) = v43;
        v39 = v44;
        LOWORD(v40) = v45;
        BYTE2(v40) = v46;
        result = v28(&v43, &v38);
        if (v31 <= v43)
        {
          v14 = v43;
        }

        else
        {
          v14 = v31;
        }

        ++v4;
        v15 = v27;
      }

      while (v17 != v1);
    }

LABEL_18:
    v26 = v14;
    sub_1B0398EFC(v47, &qword_1EB6E45C8, &qword_1B0EC5940);

    return v26;
  }

  else
  {
LABEL_5:
    sub_1B0398EFC(v47, &qword_1EB6E45C8, &qword_1B0EC5940);

    return 5;
  }
}

uint64_t sub_1B0B20838(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0B8C8B0(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B0B208F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 24 * v2 + 25;
  v7 = 49;
  v16 = v2 >> 1;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 16);
    if (v3 >= v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_12;
    }

    v19 = *(v1 + v7 - 17);
    v18 = *(v1 + v7 - 9);
    v17 = *(v1 + v7 - 1);
    v11 = *(v1 + v7);
    v12 = *(v1 + v6 - 17);
    v13 = *(v1 + v6 - 9);
    v14 = *(v1 + v6 - 1);
    v15 = *(v1 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0B8C98C(v1);
      v1 = result;
    }

    v8 = (v1 + v7);
    *(v8 - 17) = v12;
    *(v8 - 9) = v13;
    *(v8 - 1) = v14;
    *v8 = v15;
    v9 = (v1 + v6);
    *(v9 - 17) = v19;
    *(v9 - 9) = v18;
    *(v9 - 1) = v17;
    *v9 = v11;
    v4 = v16;
LABEL_5:
    ++v3;
    --v5;
    v6 -= 24;
    v7 += 24;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B0B20A30(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v4 = a2;
  v8 = a3;
  v9 = a4;
  sub_1B0E46AD8();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v9 >> 1, v8))
  {
    goto LABEL_22;
  }

  if (v11 != (v9 >> 1) - v8)
  {
LABEL_23:
    swift_unknownObjectRelease();
    a3 = v8;
    a4 = v9;
    a2 = v4;
LABEL_2:
    sub_1B0B21D00(a1, a2, a3, a4);
    v7 = v6;
    goto LABEL_9;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_10;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v12 = *(v7 + 16);
  if (v12 >= 2)
  {
    a1 = 0;
    v14 = v12 >> 1;
    v9 = v12 - 1;
    v8 = 24 * v12 + 25;
    v15 = 49;
    v23 = v12 >> 1;
    do
    {
      if (a1 != v9)
      {
        v18 = *(v7 + 16);
        if (a1 >= v18)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (v9 >= v18)
        {
          goto LABEL_21;
        }

        v26 = *(v7 + v15 - 17);
        v25 = *(v7 + v15 - 9);
        v24 = *(v7 + v15 - 1);
        v19 = *(v7 + v15);
        v4 = *(v7 + v8 - 17);
        v20 = *(v7 + v8 - 9);
        v21 = *(v7 + v8 - 1);
        v22 = *(v7 + v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1B0B8C98C(v7);
        }

        v16 = (v7 + v15);
        *(v16 - 17) = v4;
        *(v16 - 9) = v20;
        *(v16 - 1) = v21;
        *v16 = v22;
        v17 = (v7 + v8);
        *(v17 - 17) = v26;
        *(v17 - 9) = v25;
        *(v17 - 1) = v24;
        *v17 = v19;
        v14 = v23;
      }

      ++a1;
      --v9;
      v8 -= 24;
      v15 += 24;
    }

    while (v14 != a1);
  }

  return v7;
}

char *sub_1B0B20C24(char **a1, uint64_t a2, uint64_t *a3)
{
  v5 = a3[1];
  v83 = *a3;
  v6 = a3[2];
  v88 = a3[3];
  v89 = v5;
  v7 = a3[4];
  v84 = a3[5];
  v77 = a3;
  v85 = a3[6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  v82 = a1;
  v13 = *a1;
  sub_1B03B5C80(a2, &v77 - v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v81 = a2;
  v14 = MessageIdentifierSet.startIndex.getter(v8);
  v16 = v15;
  v79 = 0;
  while (v14 != MessageIdentifierSet.endIndex.getter(v8) || v16 != v22)
  {
    MessageIdentifierSet.subscript.getter(v16, v8, &v99);
    v17 = v99;
    MessageIdentifierSet.index(_:offsetBy:)(v14, v16, 1);
    v14 = v18;
    v16 = v19;
    v20 = sub_1B03FE284(v17);
    if (v21)
    {
      v23 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0B8DCCC();
        v13 = v99;
      }

      sub_1B0B90410(v23, v13);
    }
  }

  v86 = v13;
  v25 = &v12[*(v10 + 36)];
  *v25 = v14;
  v25[1] = v16;
  sub_1B0398EFC(v12, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v26 = v83;
  v98 = v83;
  v27 = *(v83 + 16);
  sub_1B03B5C80(&v98, &v99, &qword_1EB6E45C8, &qword_1B0EC5940);
  v28 = v6;

  v90 = v7;

  if (v27)
  {
    v29 = 0;
    v30 = v26 + 64;
    v87 = v8;
    v78 = v26 + 64;
    do
    {
      v31 = (v30 + 40 * v29);
      v32 = v29;
      while (1)
      {
        if (v32 >= v27)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v29 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_43;
        }

        v33 = *v31;
        v34 = *(v31 - 2);
        v35 = *(v31 - 1);
        v36 = *(v31 - 3);
        LODWORD(v99) = *(v31 - 8);
        v100 = v36;
        v101 = v34;
        v102 = v35;
        LOBYTE(v103) = v33;
        sub_1B03B2000(v36, v34);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v37 = v28;
        v89(&v91, &v99);
        sub_1B0391D50(v100, v101);

        v38 = v91;
        v39 = v92;
        v40 = v94;
        v41 = v93;
        v95[0] = v91;
        v95[1] = v92;
        v97 = v94;
        v96 = v93;
        if ((v88)(v95))
        {
          v99 = v38;
          v100 = v39;
          LOWORD(v101) = v41;
          BYTE2(v101) = (v41 | (v40 << 16)) >> 16;
          v84(v95, &v99);
          v42 = sub_1B03FE284(LODWORD(v95[0]));
          if (v43)
          {
            break;
          }
        }

        ++v32;
        v31 += 40;
        v8 = v87;
        if (v29 == v27)
        {
          goto LABEL_20;
        }
      }

      v44 = v42;
      v45 = v86;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v99 = v45;
      if ((v46 & 1) == 0)
      {
        sub_1B0B8DCCC();
        v45 = v99;
      }

      v86 = v45;
      sub_1B0B90410(v44, v45);
      v28 = v37;
      v8 = v87;
      v30 = v78;
    }

    while (v29 != v27);
  }

LABEL_20:
  sub_1B0398EFC(&v98, &qword_1EB6E45C8, &qword_1B0EC5940);
  v47 = v28;

  v48 = v86;
  v49 = *(v86 + 2);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49 && (v50 = sub_1B0B890F8(*(v86 + 2), 0), v51 = sub_1B0B8C390(&v99, (v50 + 32), v49, v48), v52 = v99, v27 = v102, v78 = v103, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), sub_1B03D91F8(v52), v51 != v49))
  {
LABEL_44:
    __break(1u);
  }

  else
  {
    v99 = v50;

    v27 = v79;
    sub_1B0B219D8(&v99);
    v53 = v81;
    v54 = v80;
    if (!v27)
    {

      v79 = v99;
      type metadata accessor for MessagesPendingDownload(0);
      MessageIdentifierSet.union(_:)(v53, v54);
      v55 = MessageIdentifierSet.startIndex.getter(v8);
      v57 = v56;
      v59 = v55 == MessageIdentifierSet.endIndex.getter(v8) && v57 == v58;
      v60 = v59;
      LODWORD(v78) = v60;
      if (v59)
      {
        sub_1B0398EFC(v54, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v87 = 0;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v57, v8, &v99);
        sub_1B0398EFC(v54, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v87 = v99;
      }

      v99 = v83;
      v100 = v89;
      v101 = v47;
      v102 = v88;
      v103 = v90;
      v104 = v84;
      v105 = v85;
      v106 = sub_1B0B42278;
      v107 = 0;
      sub_1B03B5C80(&v98, v95, &qword_1EB6E45C8, &qword_1B0EC5940);

      v61 = sub_1B0B20480();
      sub_1B0398EFC(&v98, &qword_1EB6E45C8, &qword_1B0EC5940);

      if (v61 == 5)
      {
        sub_1B0398EFC(&v98, &qword_1EB6E45C8, &qword_1B0EC5940);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v62);
        *(&v77 - 2) = v53;
        *(&v77 - 8) = v61;
        sub_1B03B5C80(&v98, v95, &qword_1EB6E45C8, &qword_1B0EC5940);

        v95[0] = sub_1B0B21548(sub_1B0B23A6C);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B21858(v95);

        sub_1B0398EFC(&v98, &qword_1EB6E45C8, &qword_1B0EC5940);

        v63 = v95[0];
        v64 = *(v95[0] + 2);
        if (v64)
        {
          v95[0] = MEMORY[0x1E69E7CC0];
          sub_1B0B0A244(0, v64, 0);
          v65 = 0;
          v66 = v95[0];
          v67 = *(v95[0] + 2);
          v68 = 24 * v67;
          do
          {
            v69 = *&v63[v65 + 32];
            v70 = *&v63[v65 + 40];
            v71 = v63[v65 + 48];
            v72 = v63[v65 + 49];
            v95[0] = v66;
            v73 = *(v66 + 3);
            v74 = v67 + 1;
            if (v67 >= v73 >> 1)
            {
              sub_1B0B0A244((v73 > 1), v67 + 1, 1);
              v66 = v95[0];
            }

            *(v66 + 2) = v74;
            v75 = &v66[v68 + v65];
            *(v75 + 8) = v69;
            *(v75 + 5) = v70;
            v75[48] = v71;
            v75[49] = v72;
            v65 += 24;
            v67 = v74;
            --v64;
          }

          while (v64);
          sub_1B0B238BC(v82, type metadata accessor for MessagesPendingDownload);

          v53 = v81;
          goto LABEL_41;
        }
      }

      sub_1B0B238BC(v82, type metadata accessor for MessagesPendingDownload);

LABEL_41:
      sub_1B0398EFC(v53, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      LOBYTE(v99) = v78;
      return v79;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B0B21548(uint64_t result)
{
  v3 = v2;
  v30 = result;
  v4 = *v1;
  v34 = v1[3];
  v35 = v1[1];
  v29 = v1[5];
  v54 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 64;
    v33 = *(v4 + 16);
    v28 = v5 - 1;
    v32 = MEMORY[0x1E69E7CC0];
    do
    {
      v31 = v3;
      v8 = (v7 + 40 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v6 = v9 + 1;
        v10 = *v8;
        v11 = *(v8 - 2);
        v12 = *(v8 - 1);
        v13 = *(v8 - 3);
        LODWORD(v40) = *(v8 - 8);
        v41 = v13;
        v42 = v11;
        v43 = v12;
        v44 = v10;
        sub_1B03B2000(v13, v11);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v35(&v36, &v40);
        sub_1B0391D50(v41, v42);

        v14 = v36;
        v15 = v37;
        v16 = v39;
        v17 = v38;
        v45 = v36;
        v46 = v37;
        v48 = v39;
        v47 = v38;
        result = v34(&v45);
        if (result)
        {
          break;
        }

        v8 += 40;
        ++v9;
        if (v33 == v6)
        {
          goto LABEL_18;
        }
      }

      v40 = v14;
      v41 = v15;
      LOWORD(v42) = v17;
      BYTE2(v42) = (v17 | (v16 << 16)) >> 16;
      v29(&v45, &v40);
      v18 = v45;
      v19 = v46;
      v20 = v47;
      v21 = HIBYTE(v47);
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v27 = v48;
      v52 = v48;
      result = v30(&v49);
      v3 = v31;
      if (v31)
      {
        sub_1B0398EFC(&v54, &qword_1EB6E45C8, &qword_1B0EC5940);

        goto LABEL_19;
      }

      if (result)
      {
        v22 = v32;
        result = swift_isUniquelyReferenced_nonNull_native();
        v53 = v32;
        if ((result & 1) == 0)
        {
          result = sub_1B0B0A2E4(0, *(v32 + 16) + 1, 1);
          v22 = v53;
        }

        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          result = sub_1B0B0A2E4((v23 > 1), v24 + 1, 1);
          v25 = v24 + 1;
          v22 = v53;
        }

        *(v22 + 16) = v25;
        v32 = v22;
        v26 = v22 + 24 * v24;
        *(v26 + 32) = v18;
        *(v26 + 40) = v19;
        *(v26 + 48) = v20;
        *(v26 + 49) = v21;
        *(v26 + 50) = v27;
        v3 = v31;
      }

      v7 = v4 + 64;
    }

    while (v28 != v9);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  sub_1B0398EFC(&v54, &qword_1EB6E45C8, &qword_1B0EC5940);

LABEL_19:

  return v32;
}

uint64_t sub_1B0B21858(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B94680(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 2))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          result = v12[34];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12[10] = result;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45D0, &qword_1B0EC5948);
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1B0B2266C(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0B219D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B946B8(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 2))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1B0B22C58(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1B0B21B68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (v6 != a3)
      {
LABEL_7:
        memcpy(v10 + 4, (a2 + 4 * a3), 4 * v7);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 29;
      }

      v10[2] = v7;
      v10[3] = 2 * (v12 >> 2);
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B0B21C30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B0B21D00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4388, &qword_1B0EC50D0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 24 * a3), 24 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_1B0B21DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1B0B8904C(*(a3 + 16), 0);
  v8 = sub_1B0B8C4AC(&v10, v7 + 32, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

void *sub_1B0B21EB0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B03D0298(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_1B0B21F40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4728, &qword_1B0EC5B88);
      v8 = sub_1B0E466A8();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      v32 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(v4 + 56);
        v18 = *(v4 + 48) + 16 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v33 = *(v17 + v16);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v20 | (v20 << 32));
        v21 = sub_1B0E46CB8();
        v22 = -1 << *(v9 + 32);
        v23 = v21 & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
        {
          v26 = 0;
          v27 = (63 - v22) >> 6;
          while (++v24 != v27 || (v26 & 1) == 0)
          {
            v28 = v24 == v27;
            if (v24 == v27)
            {
              v24 = 0;
            }

            v26 |= v28;
            v29 = *(v12 + 8 * v24);
            if (v29 != -1)
            {
              v25 = __clz(__rbit64(~v29)) + (v24 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v9 + 48) + 16 * v25;
        *v30 = v19;
        *(v30 + 8) = v20;
        *(*(v9 + 56) + v25) = v33;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v4 = v32;
        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t sub_1B0B22180(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4730, qword_1B0EC5B90);
  result = sub_1B0E466A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v39 = v4;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(v4 + 56);
      v18 = *(v4 + 48) + 16 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = (v17 + 72 * v16);
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v45 = *(v21 + 32);
      v43 = v23;
      v44 = v24;
      v41 = *v21;
      v42 = v22;
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v20 | (v20 << 32));
      result = sub_1B0E46CB8();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        break;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = *(v9 + 48) + 16 * v28;
      *v33 = v19;
      *(v33 + 8) = v20;
      v34 = *(v9 + 56) + 72 * v28;
      *v34 = v41;
      v35 = v42;
      v36 = v43;
      v37 = v44;
      *(v34 + 64) = v45;
      *(v34 + 32) = v36;
      *(v34 + 48) = v37;
      *(v34 + 16) = v35;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (!v5)
      {
        sub_1B03BB0B4(&v41, v40);
        return v9;
      }

      result = sub_1B03BB0B4(&v41, v40);
      v4 = v39;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v29 = 0;
    v30 = (63 - v25) >> 6;
    while (++v27 != v30 || (v29 & 1) == 0)
    {
      v31 = v27 == v30;
      if (v27 == v30)
      {
        v27 = 0;
      }

      v29 |= v31;
      v32 = *(v12 + 8 * v27);
      if (v32 != -1)
      {
        v28 = __clz(__rbit64(~v32)) + (v27 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_1B0B22418(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4710, &unk_1B0EC5A90);
      v8 = sub_1B0E466A8();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      v31 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(*(v4 + 48) + 4 * v16);
        v18 = *(v4 + 56) + 24 * v16;
        v19 = *(v18 + 8);
        v32 = *(v18 + 16);
        v33 = *v18;
        sub_1B0E46C28();
        sub_1B0E46C88();
        v20 = sub_1B0E46CB8();
        v21 = -1 << *(v9 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          v25 = 0;
          v26 = (63 - v21) >> 6;
          while (++v23 != v26 || (v25 & 1) == 0)
          {
            v27 = v23 == v26;
            if (v23 == v26)
            {
              v23 = 0;
            }

            v25 |= v27;
            v28 = *(v12 + 8 * v23);
            if (v28 != -1)
            {
              v24 = __clz(__rbit64(~v28)) + (v23 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v9 + 48) + 4 * v24) = v17;
        v29 = *(v9 + 56) + 24 * v24;
        *v29 = v33;
        *(v29 + 8) = v19;
        *(v29 + 16) = v32;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v4 = v31;
        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t sub_1B0B2266C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v90 = (v8 + 16);
    v91 = *(v8 + 16);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = (v8 + 16 * v91);
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_1B0B23234((*a3 + 24 * *v92), (*a3 + 24 * *v94), *a3 + 24 * v95, v99);
        if (v5)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_114;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_115;
        }

        *v92 = v93;
        v92[1] = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_116;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v97 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 18;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 18);
            v24 = v29 + v18;
            v25 = *(v22 - 10);
            v26 = *(v22 - 2);
            v27 = *(v22 - 1);
            v28 = *v22;
            result = *v24;
            *(v22 - 18) = *(v24 - 16);
            *(v22 - 2) = result;
            *(v24 - 16) = v23;
            *(v24 - 8) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
            *(v24 + 2) = v28;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v43 = *(v8 + 16);
    v42 = *(v8 + 24);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_1B0AFF300((v42 > 1), v43 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v44;
    v45 = v8 + 32;
    v46 = (v8 + 32 + 16 * v43);
    *v46 = v9;
    v46[1] = v7;
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_127;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 32);
          v49 = *(v8 + 40);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_57:
          if (v51)
          {
            goto LABEL_104;
          }

          v64 = (v8 + 16 * v44);
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_106;
          }

          v70 = (v45 + 16 * v47);
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_111;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v44 < 2)
        {
          goto LABEL_112;
        }

        v74 = (v8 + 16 * v44);
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_72:
        if (v69)
        {
          goto LABEL_108;
        }

        v77 = (v45 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_110;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v47 - 1 >= v44)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v85 = (v45 + 16 * (v47 - 1));
        v86 = *v85;
        v87 = (v45 + 16 * v47);
        v88 = v87[1];
        sub_1B0B23234((*a3 + 24 * *v85), (*a3 + 24 * *v87), *a3 + 24 * v88, v99);
        if (v5)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_99;
        }

        if (v47 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *(v8 + 16);
        if (v47 >= v89)
        {
          goto LABEL_101;
        }

        v44 = v89 - 1;
        result = memmove((v45 + 16 * v47), v87 + 2, 16 * (v89 - 1 - v47));
        *(v8 + 16) = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v52 = v45 + 16 * v44;
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_102;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_103;
      }

      v59 = (v8 + 16 * v44);
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_105;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_107;
      }

      if (v63 >= v55)
      {
        v81 = (v45 + 16 * v47);
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v97;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (v36 >= *v34)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    result = *(v34 + 42);
    *v35 = *v34;
    v40 = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    *(v34 + 18) = result;
    v34 -= 24;
    *(v35 + 16) = v40;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0B22C58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v89 = (v8 + 16);
    v90 = *(v8 + 16);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = (v8 + 16 * v90);
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1B0B23234((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v98);
        if (v5)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 17;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 17);
            v24 = (v29 + v18);
            v25 = *(v22 - 9);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = *v24;
            *(v22 - 17) = *(v24 - 1);
            *(v22 - 1) = v28;
            *(v24 - 4) = v23;
            *(v24 - 1) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 16);
    v41 = *(v8 + 24);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1B0AFF300((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v43;
    v44 = v8 + 32;
    v45 = (v8 + 32 + 16 * v42);
    *v45 = v9;
    v45[1] = v7;
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
    }

    if (v42)
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
          v47 = *(v8 + 32);
          v48 = *(v8 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = (v8 + 16 * v43);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = (v44 + 16 * v46);
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = (v8 + 16 * v43);
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = (v44 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = (v44 + 16 * (v46 - 1));
        v85 = *v84;
        v86 = (v44 + 16 * v46);
        v87 = v86[1];
        sub_1B0B23234((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v98);
        if (v5)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *(v8 + 16);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        result = memmove((v44 + 16 * v46), v86 + 2, 16 * (v88 - 1 - v46));
        *(v8 + 16) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = v44 + 16 * v43;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = (v8 + 16 * v43);
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = (v44 + 16 * v46);
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v96;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (v36 >= *v34)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    *v35 = *v34;
    result = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    v34 -= 24;
    *(v35 + 16) = result;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0B23234(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v19 - 24);
      v19 -= 24;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v23;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v13)
      {
        v22 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v22;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
  }

  return 1;
}

uint64_t sub_1B0B23474@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16) | (*(result + 18) << 16);
  if ((*(result + 16) & 0xFF00) == 0x200)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 8);
    *a2 = *result;
    *(a2 + 8) = v3;
    *(a2 + 16) = v2 & 1;
    *(a2 + 17) = BYTE1(v2) & 1;
    *(a2 + 18) = BYTE2(v2);
  }

  return result;
}

uint64_t sub_1B0B234B8(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v72 = a1 + 32;
  v7 = v6 == 0;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (v7)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v33 = (v72 + 192 * v5);
    v34 = v33[9];
    v35 = v33[7];
    v68 = v33[8];
    v69 = v34;
    v36 = v33[9];
    v70[0] = v33[10];
    *(v70 + 9) = *(v33 + 169);
    v37 = v33[5];
    v38 = v33[3];
    v64 = v33[4];
    v65 = v37;
    v39 = v33[5];
    v40 = v33[7];
    v66 = v33[6];
    v67 = v40;
    v41 = v33[1];
    v60 = *v33;
    v61 = v41;
    v42 = v33[3];
    v44 = *v33;
    v43 = v33[1];
    v62 = v33[2];
    v63 = v42;
    *&v71[128] = v68;
    *&v71[144] = v36;
    *&v71[160] = v33[10];
    *&v71[169] = *(v33 + 169);
    *&v71[64] = v64;
    *&v71[80] = v39;
    *&v71[96] = v66;
    *&v71[112] = v35;
    *v71 = v44;
    *&v71[16] = v43;
    *&v71[32] = v62;
    *&v71[48] = v38;
    v14 = __OFADD__(v5++, 1);
    if (!v14)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      sub_1B03B5C80(&v60, &v48, &qword_1EB6E43A8, &qword_1B0EC50F0);
      while (1)
      {
        v68 = *&v71[128];
        v69 = *&v71[144];
        v70[0] = *&v71[160];
        *(v70 + 9) = *&v71[169];
        v64 = *&v71[64];
        v65 = *&v71[80];
        v66 = *&v71[96];
        v67 = *&v71[112];
        v60 = *v71;
        v61 = *&v71[16];
        v62 = *&v71[32];
        v63 = *&v71[48];
        result = sub_1B0B23A2C(&v60);
        if (result == 1)
        {
          return result;
        }

        v8 = *v71;
        v56 = *&v71[136];
        v57 = *&v71[152];
        v58 = *&v71[168];
        v59 = v71[184];
        v52 = *&v71[72];
        v53 = *&v71[88];
        v54 = *&v71[104];
        v55 = *&v71[120];
        v48 = *&v71[8];
        v49 = *&v71[24];
        v50 = *&v71[40];
        v51 = *&v71[56];
        v9 = *a3;
        v10 = sub_1B03FE284(*v71);
        v12 = *(v9 + 16);
        v13 = (v11 & 1) == 0;
        v14 = __OFADD__(v12, v13);
        v15 = v12 + v13;
        if (v14)
        {
          __break(1u);
          goto LABEL_21;
        }

        v16 = v11;
        if (*(v9 + 24) < v15)
        {
          break;
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v28 = v10;
        sub_1B0B8D810();
        v10 = v28;
        if (v16)
        {
LABEL_9:
          v18 = *(*a3 + 56) + 184 * v10;
          v19 = *(v18 + 48);
          v21 = *v18;
          v20 = *(v18 + 16);
          v46[2] = *(v18 + 32);
          v46[3] = v19;
          v46[0] = v21;
          v46[1] = v20;
          v22 = *(v18 + 112);
          v24 = *(v18 + 64);
          v23 = *(v18 + 80);
          v46[6] = *(v18 + 96);
          v46[7] = v22;
          v46[4] = v24;
          v46[5] = v23;
          v26 = *(v18 + 144);
          v25 = *(v18 + 160);
          v27 = *(v18 + 128);
          v47 = *(v18 + 176);
          v46[9] = v26;
          v46[10] = v25;
          v46[8] = v27;
          *(v18 + 128) = v56;
          *(v18 + 144) = v57;
          *(v18 + 160) = v58;
          *(v18 + 176) = v59;
          *(v18 + 64) = v52;
          *(v18 + 80) = v53;
          *(v18 + 96) = v54;
          *(v18 + 112) = v55;
          *v18 = v48;
          *(v18 + 16) = v49;
          *(v18 + 32) = v50;
          *(v18 + 48) = v51;
          sub_1B075E728(v46);
          goto LABEL_13;
        }

LABEL_11:
        v29 = *a3;
        *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
        *(v29[6] + 4 * v10) = v8;
        v30 = v29[7] + 184 * v10;
        *(v30 + 112) = v55;
        *(v30 + 96) = v54;
        *(v30 + 80) = v53;
        *(v30 + 64) = v52;
        *(v30 + 176) = v59;
        *(v30 + 160) = v58;
        *(v30 + 144) = v57;
        *(v30 + 128) = v56;
        *v30 = v48;
        *(v30 + 16) = v49;
        *(v30 + 32) = v50;
        *(v30 + 48) = v51;
        v31 = v29[2];
        v14 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v14)
        {
          goto LABEL_23;
        }

        v29[2] = v32;
LABEL_13:
        a2 = 1;
        v7 = v5 >= v6;
        if (v5 != v6)
        {
          goto LABEL_14;
        }

LABEL_17:
        sub_1B0B23A40(&v60);
        *&v71[128] = v68;
        *&v71[144] = v69;
        *&v71[160] = v70[0];
        *&v71[169] = *(v70 + 9);
        *&v71[64] = v64;
        *&v71[80] = v65;
        *&v71[96] = v66;
        *&v71[112] = v67;
        *v71 = v60;
        *&v71[16] = v61;
        v5 = v6;
        *&v71[32] = v62;
        *&v71[48] = v63;
      }

      sub_1B0B30248(v15, a2 & 1);
      v10 = sub_1B03FE284(v8);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B238BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0B23938(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0x1FuLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_1B0B23974()
{
  result = qword_1EB6E45B0;
  if (!qword_1EB6E45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E45B0);
  }

  return result;
}

unint64_t sub_1B0B239C8(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0x1FuLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_1B0B23A2C(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

double sub_1B0B23A40(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
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
  *(a1 + 184) = -2;
  return result;
}

void sub_1B0B23B40(uint64_t a1@<X8>)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 39))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 37))
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if (!*(v1 + 36))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 35))
  {
    v6 = 0;
  }

  sub_1B0B1F618(*(v1 + 16), *(v1 + 24), ((v6 | (*(v1 + 33) << 8) | (*(v1 + 34) << 16) | v5 | v4 | v3) + v2) | *(v1 + 32), a1);
}

uint64_t sub_1B0B23BC0@<X0>(uint64_t a1@<X8>)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 47))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 46))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 45))
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if (!*(v1 + 44))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 43))
  {
    v6 = 0;
  }

  return sub_1B0B1C53C(*(v1 + 16), *(v1 + 24), *(v1 + 32), ((v6 | (*(v1 + 41) << 8) | (*(v1 + 42) << 16) | v5 | v4 | v3) + v2) | *(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_1B0B23C60(uint64_t (*a1)(void, void, void, void, unint64_t))
{
  v2 = 0x100000000000000;
  if (!*(v1 + 55))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 54))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 53))
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if (!*(v1 + 52))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 51))
  {
    v6 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), ((v6 | (*(v1 + 49) << 8) | (*(v1 + 50) << 16) | v5 | v4 | v3) + v2) | *(v1 + 48));
}

double sub_1B0B23E80(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0B23F6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1B0B23FD8(uint64_t a1)
{
  if (!qword_1EB6DD2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4720, "̨\t");
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DD2C8);
    }
  }
}

void sub_1B0B24054(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v4 <= 0x3F)
  {
    sub_1B0B23FD8(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B0B240CC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1B0B24104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B0B241AC()
{
  result = qword_1EB6E4738;
  if (!qword_1EB6E4738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4738);
  }

  return result;
}

uint64_t sub_1B0B24200()
{
  sub_1B0E46C28();
  sub_1B0E46C78();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B24248(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C78();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B2428C(__int16 a1)
{
  v2 = sub_1B0E46CE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4740, &qword_1B0EC5C58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v14[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4748, &qword_1B0EC5C60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B0EC3500;
  *(v9 + 32) = 0x696C696269736976;
  *(v9 + 40) = 0xEA00000000007974;
  *(v9 + 48) = a1 < 0;
  *(v9 + 72) = &_s11UserVisibleON;
  *(v9 + 80) = 0x797469726F697270;
  *(v9 + 88) = 0xE800000000000000;
  *(v9 + 120) = &_s12PriorityInfoV5OrderVN;
  *(v9 + 96) = a1 & 0x3FFF;
  v10 = *MEMORY[0x1E69E75B8];
  v11 = sub_1B0E46CD8();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return sub_1B0E46CF8();
}

uint64_t sub_1B0B244F8()
{
  if (*v0 == 0x3FFF)
  {
    return 0x656E6F6E2ELL;
  }

  else
  {
    return sub_1B0E469C8();
  }
}

unint64_t sub_1B0B245DC()
{
  result = qword_1EB6E4750;
  if (!qword_1EB6E4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4750);
  }

  return result;
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0B24668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B246B0(uint64_t result, int a2, int a3)
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
      *(result + 76) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B24714(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v23 = *(a1 + 16);
  sub_1B0B0A384(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1B0E460B8();
  v6 = v23;
  v7 = 0;
  v8 = *(a1 + 36);
  v24 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(a1 + 48) + 4 * result);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = result;
      sub_1B0B0A384((v13 > 1), v14 + 1, 1);
      v6 = v23;
      v8 = v24;
      result = v22;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 4 * v14 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v15 = *(v4 + 8 * v10);
    if ((v15 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 72 + 8 * v10);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1B0425168(result, v24, 0);
          v6 = v23;
          v8 = v24;
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v24, 0);
      v6 = v23;
      v8 = v24;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1B0B24950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  if (*(v5 + 24) != 1)
  {
    goto LABEL_17;
  }

  v16 = *(*v5 + 16);
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = 0;
  while (1)
  {
    v18 = (*v5 + 32 + 176 * v17);
    if (v18[1] == a2)
    {
      v19 = *v18;
      v20 = *(*v18 + 16);
      if (v20 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v17 == v16)
    {
      goto LABEL_17;
    }
  }

  if (v20)
  {
    v21 = v19 == a1;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
LABEL_15:
    v24 = v18[12];
    if (v24)
    {
      v25 = v24 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v26 = _s13SelectedStateV7WrappedVMa(0);
      v27 = v25 + *(v26 + 20);
      if ((*(v27 + 20) & 1) == 0)
      {
        v38 = *(v27 + 16);
        v39 = v5[3];
        v68 = v5[2];
        v69[0] = v39;
        *(v69 + 12) = *(v5 + 60);
        v40 = v5[1];
        v66 = *v5;
        v67 = v40;
        MEMORY[0x1EEE9AC00](v26);
        *(&v54 - 2) = a3;
        v41 = sub_1B0B26274(a1, a2, sub_1B0B37C04);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD8, &unk_1B0E9AEB0);
        v60[3] = v42;
        v43 = sub_1B03CFB8C(&qword_1EB6DB350, &qword_1EB6E1AD8, &unk_1B0E9AEB0);
        v44 = MEMORY[0x1E69E7CC0];
        if (v41)
        {
          v44 = v41;
        }

        v60[4] = v43;
        v60[0] = v44;
        v45 = __swift_project_boxed_opaque_existential_0(v60, v42);
        v46 = MEMORY[0x1EEE9AC00](v45);
        v48 = (&v54 - v47);
        (*(v49 + 16))(&v54 - v47, v46);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
        *boxed_opaque_existential_1 = *v48;
        boxed_opaque_existential_1[1] = 0;
        __swift_mutable_project_boxed_opaque_existential_1(v57, AssociatedTypeWitness);
        sub_1B0E45E38();
        v51 = v56;
        if (v56 >> 60 != 15)
        {
          v52 = v55;
          do
          {
            v53 = static MonotonicTime.now()();
            v61[0] = v52;
            v61[1] = v51;
            v62 = v38;
            v63 = a1;
            v64 = a2;
            v65 = v53;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0B37C0C(v52, v51);
            sub_1B0AB7920(v61);
            sub_1B0391D50(v52, v51);

            sub_1B050755C(v52, v51);
            __swift_mutable_project_boxed_opaque_existential_1(v57, AssociatedTypeWitness);
            sub_1B0E45E38();
            v52 = v55;
            v51 = v56;
          }

          while (v56 >> 60 != 15);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        return;
      }
    }

LABEL_17:
    sub_1B03B1BD0(a4, v15, type metadata accessor for MailboxTaskLogger);
    sub_1B03B1BD0(a4, v12, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v28 = sub_1B0E43988();
    v29 = sub_1B0E458E8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v61[0] = v31;
      *v30 = 0x204100703;
      *(v30 + 8) = 256;
      v32 = &v12[*(v10 + 20)];
      *(v30 + 10) = *v32;
      *(v30 + 11) = 2082;
      v33 = &v15[*(v10 + 20)];
      *(v30 + 13) = sub_1B0399D64(*(v33 + 1), *(v33 + 2), v61);
      *(v30 + 21) = 1040;
      *(v30 + 23) = 2;
      *(v30 + 27) = 512;
      LOWORD(v32) = *(v32 + 12);
      sub_1B03B1DC0(v12, type metadata accessor for MailboxTaskLogger);
      *(v30 + 29) = v32;
      *(v30 + 31) = 2160;
      *(v30 + 33) = 0x786F626C69616DLL;
      *(v30 + 41) = 2085;
      v34 = *(v33 + 4);
      LODWORD(v32) = *(v33 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1DC0(v15, type metadata accessor for MailboxTaskLogger);
      *&v66 = v34;
      DWORD2(v66) = v32;
      v35 = sub_1B0E44BA8();
      v37 = sub_1B0399D64(v35, v36, v61);

      *(v30 + 43) = v37;
      _os_log_impl(&dword_1B0389000, v28, v29, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Trying to add message-to-skip, but mailbox has no UID validity.", v30, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v31, -1, -1);
      MEMORY[0x1B272C230](v30, -1, -1);
    }

    else
    {
      sub_1B03B1DC0(v12, type metadata accessor for MailboxTaskLogger);

      sub_1B03B1DC0(v15, type metadata accessor for MailboxTaskLogger);
    }

    return;
  }

  v22 = (v19 + 32);
  v23 = (a1 + 32);
  while (v20)
  {
    if (*v22 != *v23)
    {
      goto LABEL_4;
    }

    ++v22;
    ++v23;
    if (!--v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1B0B24FD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = a3;
  v27 = a2;
  v25 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = 0;
  while (v8)
  {
LABEL_10:
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(*(a1 + 48) + (v12 | (v10 << 6)));
      v15 = sub_1B0B86138(v28, v26);
      if (*(v14 + 96))
      {
        break;
      }

      v15(v28, 0);
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v16 = v14;
    v29 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = *(v16 + 96);
      v18 = a1;
      v19 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v20 = v17 + v19;
      a1 = v18;
      v21 = v24;
      sub_1B03B1BD0(v20, v24, _s13SelectedStateV7WrappedVMa);
      _s13SelectedStateV8_StorageCMa(0);
      v22 = swift_allocObject();
      sub_1B0B37C3C(v21, v22 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
      *(v16 + 96) = v22;
    }

    swift_beginAccess();
    sub_1B03BDE74(v13);
    swift_endAccess();
    v29(v28, 0);
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1B0B2524C(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = 0;
  v57 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_4:
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(v3 + 48) + ((v9 << 10) | (16 * v11));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = v2[1];
    v16 = v15 + 32;
    v17 = *(v15 + 16);
    if (*v2)
    {
      v18 = sub_1B0BA7CA4(v13, v14, v16, v17, (*v2 + 16), *v2 + 32);
      if ((v20 & 1) == 0)
      {
        v21 = v18;
        v59 = v14;
        v67 = v13;
        v24 = v2;
        v23 = *v2;
        v22 = v24[1];
        v25 = *(v22 + 16);
        if (v23)
        {
          v26 = v19;
          swift_beginAccess();
          if ((*(v23 + 16) & 0x3FLL) == (*(v23 + 24) & 0x3FLL))
          {
            v2 = a2;
            if (v25)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v2 = a2;
            if (v25 > MEMORY[0x1B2725680]())
            {
LABEL_14:
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
              v28 = *v2;
              if ((isUniquelyReferenced_native & 1) == 0)
              {
                if (!v28)
                {
                  goto LABEL_60;
                }

                v29 = sub_1B0E43578();

                *a2 = v29;
                v28 = v29;
                v2 = a2;
              }

              if (!v28)
              {
                goto LABEL_59;
              }

              sub_1B0BCB424(v26, (v28 + 16), v28 + 32, v2);
              v30 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                goto LABEL_57;
              }

              if (v30 < v21)
              {
                goto LABEL_58;
              }

              sub_1B0BCB7E4(v21, v30, v22, (v28 + 16), v28 + 32);
              sub_1B0BCB130(v21);
              goto LABEL_46;
            }
          }

          v13 = v67;
        }

        else
        {
          v2 = a2;
          v13 = v67;
          if (v25)
          {
LABEL_33:
            v67 = v13;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0BCB130(v21);
            goto LABEL_47;
          }
        }

        v67 = v13;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BCB130(v21);
        v36 = *v2;
        if (*v2)
        {
          swift_beginAccess();
          v37 = *(v36 + 24) & 0x3FLL;
        }

        else
        {
          v37 = 0;
        }

        v38 = v2[1];
        v39 = *(v38 + 16);
        if (v37 || v39 >= 0x10)
        {
          v40 = MEMORY[0x1B27256A0](v39);
          if (v37 <= v40)
          {
            v41 = v40;
          }

          else
          {
            v41 = v37;
          }

          v42 = sub_1B0BCA150(v38, v41, 0, v37);

          v2 = a2;
          *a2 = v42;
        }

        else
        {

          v2 = a2;
          *a2 = 0;
        }

LABEL_46:
        v3 = v57;
LABEL_47:

        v43 = v2[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1B0B946F0(v43);
        }

        v44 = *(v43 + 2);
        if (v21 >= v44)
        {
          goto LABEL_56;
        }

        v45 = v44 - 1;
        v46 = &v43[176 * v21];
        v47 = *(v46 + 2);
        v48 = *(v46 + 4);
        v61[1] = *(v46 + 3);
        v61[2] = v48;
        v61[0] = v47;
        v49 = *(v46 + 5);
        v50 = *(v46 + 6);
        v51 = *(v46 + 8);
        v61[5] = *(v46 + 7);
        v62 = v51;
        v61[3] = v49;
        v61[4] = v50;
        v52 = *(v46 + 9);
        v53 = *(v46 + 10);
        v54 = *(v46 + 12);
        v65 = *(v46 + 11);
        v66 = v54;
        v63 = v52;
        v64 = v53;
        memmove(v46 + 32, v46 + 208, 176 * (v45 - v21));
        *(v43 + 2) = v45;
        v2[2] = v43;
        v55 = v62;

        sub_1B03A3614(v61);
        if (v55)
        {

          v56 = v67;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(&v60, v56, v59);
        }
      }
    }

    else if (v17)
    {
      v21 = 0;
      while (1)
      {
        v31 = (v16 + 16 * v21);
        if ((v31[2] | (v31[2] << 32)) == (v14 | (v14 << 32)))
        {
          v32 = *v31;
          v33 = *(*v31 + 16);
          if (v33 == *(v13 + 16))
          {
            if (!v33 || v32 == v13)
            {
LABEL_31:
              v59 = *(v12 + 8);
              goto LABEL_33;
            }

            v34 = (v32 + 32);
            v35 = (v13 + 32);
            while (*v34 == *v35)
            {
              ++v34;
              ++v35;
              if (!--v33)
              {
                goto LABEL_31;
              }
            }
          }
        }

        if (++v21 == v17)
        {
          goto LABEL_4;
        }
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_1B0B256B4(uint64_t result, unsigned int a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) == 1)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(*v3 + 16);
    if (!v7)
    {
LABEL_18:
      *v3 = v5;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = v5 + 32 + 176 * v8;
      if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a2 | (a2 << 32)))
      {
        v11 = *(v10 + 16);
        v12 = *(v11 + 16);
        if (v12 == *(result + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v7)
      {
        goto LABEL_18;
      }
    }

    if (v12)
    {
      v13 = v11 == result;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      v4 = a3;
      sub_1B03B9A2C(*v3, *(v3 + 8), *(v3 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if (result)
      {
LABEL_16:
        if (v8 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        v4(v16 + 176 * v8 + 72);
        result = sub_1B03BB638(v5, v6, v9, 1);
        v5 = v16;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (result + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_1B03D0E54(v5);
    v16 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0B25834(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 24) == 1)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = *(*v3 + 16);
    if (!v6)
    {
LABEL_19:
      *v3 = v4;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v7 = result;
    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = (v4 + 32 + 176 * v8);
      if (v10[1] == a3)
      {
        v11 = *v10;
        v12 = *(*v10 + 16);
        if (v12 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v6)
      {
        goto LABEL_19;
      }
    }

    if (v12)
    {
      v13 = v11 == a2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      sub_1B03B9A2C(*v3, *(v3 + 8), *(v3 + 16), 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v4;
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (a2 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_1B03D0E54(v4);
    v16 = result;
LABEL_16:
    if (v8 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = v16 + 176 * v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = sub_1B0B363DC((v17 + 184), v7);

      v19 = *(*(v17 + 184) + 16);
      if (v19 >= v18)
      {
        sub_1B0BAD260(v18, v19);

        result = sub_1B03BB638(v4, v5, v9, 1);
        v4 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B259F0(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  if (*(v4 + 24) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(*v4 + 16);
    if (!v9)
    {
LABEL_18:
      *v4 = v7;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 1;
      return result;
    }

    v10 = 0;
    v11 = *(v4 + 16);
    while (1)
    {
      v12 = (v7 + 32 + 176 * v10);
      if (v12[1] == a2)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(result + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v10 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v15 = v13 == result;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_15:
      v6 = a3;
      v5 = a4;
      sub_1B03B9A2C(*v4, *(v4 + 8), *(v4 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if (result)
      {
LABEL_16:
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1B0B13A74(v6, v5);
        result = sub_1B03BB638(v7, v8, v11, 1);
        v7 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (result + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_4;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_1B03D0E54(v7);
    v18 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0B25B64(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(v3 + 24) == 1)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(*v3 + 16);
    if (!v7)
    {
LABEL_18:
      *v3 = v5;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = v5 + 32 + 176 * v8;
      if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a3 | (a3 << 32)))
      {
        v11 = *(v10 + 16);
        v12 = *(v11 + 16);
        if (v12 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v7)
      {
        goto LABEL_18;
      }
    }

    if (v12)
    {
      v13 = v11 == a2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      v4 = result;
      sub_1B03B9A2C(*v3, *(v3 + 8), *(v3 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if (result)
      {
LABEL_16:
        if (v8 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1B0B13B6C(v4);
        result = sub_1B03BB638(v5, v6, v9, 1);
        v5 = v16;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (a2 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_1B03D0E54(v5);
    v16 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0B25CD4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (a1[3])
  {
    if (a2[3])
    {

      return sub_1B0B63BF8(v4, v5);
    }

    return 0;
  }

  if (a2[3])
  {
    return 0;
  }

  v8 = a2[1];
  v7 = a2[2];
  v10 = a1[1];
  v9 = a1[2];
  if ((sub_1B0B733CC(v4, v5) & 1) == 0 || (sub_1B0B63A04(v10, v8) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0B63AFC(v9, v7);
}

uint64_t sub_1B0B25D88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 12) = *(a1 + 60);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 12) = *(a2 + 60);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B0B35FC8(v7, v9) & 1;
}

uint64_t sub_1B0B25DE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) != 1)
  {
    return 1;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (1)
  {
    v10 = (v5 + 32 + 176 * v7);
    if (v10[1] == a2)
    {
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v6)
    {
      return 1;
    }
  }

  if (v12)
  {
    v13 = v11 == a1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_15:
    v4 = a3;
    sub_1B03B9A2C(*v3, *(v3 + 8), *(v3 + 16), 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v17 = v5;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = (v11 + 32);
    v15 = (a1 + 32);
    while (v12)
    {
      if (*v14 != *v15)
      {
        goto LABEL_4;
      }

      ++v14;
      ++v15;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_1B03D0E54(v5);
  v17 = result;
LABEL_16:
  if (v7 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    v4(v17 + 176 * v7 + 32);
    sub_1B03BB638(v5, v8, v9, 1);
    result = 0;
    *v3 = v17;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B0B25F5C(uint64_t a1, unsigned int a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) != 1)
  {
    return 1;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (1)
  {
    v10 = v5 + 32 + 176 * v7;
    if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v11 = *(v10 + 16);
      v12 = *(v11 + 16);
      if (v12 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v6)
    {
      return 1;
    }
  }

  if (v12)
  {
    v13 = v11 == a1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_15:
    v4 = a3;
    sub_1B03B9A2C(*v3, *(v3 + 8), *(v3 + 16), 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v17 = v5;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = (v11 + 32);
    v15 = (a1 + 32);
    while (v12)
    {
      if (*v14 != *v15)
      {
        goto LABEL_4;
      }

      ++v14;
      ++v15;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_1B03D0E54(v5);
  v17 = result;
LABEL_16:
  if (v7 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    v4(v17 + 176 * v7 + 32);
    sub_1B03BB638(v5, v8, v9, 1);
    result = 0;
    *v3 = v17;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B0B260E0(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  if (*(a3 + 24) != 1)
  {
    return 0;
  }

  v6 = *a3;
  v7 = *(*a3 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v10 = a3 + 1;
  v9 = a3[1];
  v11 = a3[2];
  while (1)
  {
    v12 = v6 + 32 + 176 * v8;
    if ((*(v12 + 24) | (*(v12 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v13 = *(v12 + 16);
      v14 = *(v13 + 16);
      if (v14 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      return 0;
    }
  }

  if (v14)
  {
    v15 = v13 == a1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_15:
    v5 = a4;
    v4 = a3;
    sub_1B03B9A2C(*a3, a3[1], a3[2], 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = (v13 + 32);
    v17 = (a1 + 32);
    while (v14)
    {
      if (*v16 != *v17)
      {
        goto LABEL_4;
      }

      ++v16;
      ++v17;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_1B03D0E54(v6);
  v19 = result;
LABEL_16:
  if (v8 >= *(v19 + 16))
  {
    __break(1u);
  }

  else
  {
    v20 = v19 + 176 * v8;
    v21 = *(v5 + 16);
    *(v20 + 64) = *v5;
    *(v20 + 80) = v21;
    *(v20 + 96) = *(v5 + 32);
    v22 = *(v20 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03BB638(v6, v9, v11, 1);
    result = v22;
    *v4 = v19;
    *v10 = 0;
    v10[1] = 0;
    *(v4 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B0B26274(uint64_t result, uint64_t a2, void (*a3)(void *__return_ptr, _OWORD *))
{
  if ((v3[24] & 1) == 0)
  {
    return 0;
  }

  v4 = *(*v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *v3 + 32 + 176 * v5;
    if (*(v6 + 8) == a2)
    {
      v7 = *v6;
      v8 = *(*v6 + 16);
      if (v8 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  if (v8)
  {
    v9 = v7 == result;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    v12 = *v6;
    v13 = *(v6 + 32);
    v22[1] = *(v6 + 16);
    v22[2] = v13;
    v22[0] = v12;
    v14 = *(v6 + 48);
    v15 = *(v6 + 64);
    v16 = *(v6 + 96);
    v22[5] = *(v6 + 80);
    v22[6] = v16;
    v22[3] = v14;
    v22[4] = v15;
    v17 = *(v6 + 112);
    v18 = *(v6 + 128);
    v19 = *(v6 + 160);
    v22[9] = *(v6 + 144);
    v22[10] = v19;
    v22[7] = v17;
    v22[8] = v18;
    sub_1B03A35B8(v22, v21);
    a3(v21, v22);
    sub_1B03A3614(v22);
    return v21[0];
  }

  else
  {
    v10 = (v7 + 32);
    v11 = (result + 32);
    while (v8)
    {
      if (*v10 != *v11)
      {
        goto LABEL_4;
      }

      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B2639C(uint64_t result, unsigned int a2, _BYTE *a3)
{
  if ((a3[24] & 1) == 0)
  {
    return 0;
  }

  v3 = *(*a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *a3 + 32 + 176 * v4;
    if ((*(v5 + 24) | (*(v5 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_15:
    if (*(v5 + 168) > 1u)
    {
      return 0;
    }

    else
    {
      return *(v5 + 160);
    }
  }

  else
  {
    v9 = (v6 + 32);
    v10 = (result + 32);
    while (v7)
    {
      if (*v9 != *v10)
      {
        goto LABEL_4;
      }

      ++v9;
      ++v10;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B2648C(uint64_t a1, char *a2)
{
  v3 = v2;
  v64 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  sub_1B03B1BD0(a2, &v61 - v17, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = sub_1B0E43988();
  v20 = sub_1B0E45908();
  v21 = os_log_type_enabled(v19, v20);
  v62 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 68158208;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v23 = v18[*(v64 + 20)];
    sub_1B03B1DC0(v18, type metadata accessor for State.Logger);
    *(v22 + 10) = v23;
    *(v22 + 11) = 2048;
    *(v22 + 13) = *(a1 + 16);

    _os_log_impl(&dword_1B0389000, v19, v20, "[%.*hhx] Received %ld locally known mailboxes.", v22, 0x15u);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  else
  {
    sub_1B03B1DC0(v18, type metadata accessor for State.Logger);
  }

  sub_1B0B26DAC(a1, a2);
  v25 = sub_1B0B27010(v24, a2);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = sub_1B0BAC3F0(MEMORY[0x1E69E7CC0]);

  *(v3 + 32) = v32;
  v33 = v63;
  if (*(v25 + 16))
  {
    sub_1B03B1BD0(a2, v15, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v34 = sub_1B0E43988();
    v35 = sub_1B0E45908();
    if (!os_log_type_enabled(v34, v35))
    {
      sub_1B03B1DC0(v15, type metadata accessor for State.Logger);

      if (!*(v27 + 16))
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v36 = swift_slowAlloc();
    v61 = v31;
    v37 = v36;
    *v36 = 68158208;
    *(v36 + 4) = 2;
    *(v36 + 8) = 256;
    v38 = v12;
    v39 = v15[*(v64 + 20)];
    sub_1B03B1DC0(v15, type metadata accessor for State.Logger);
    *(v37 + 10) = v39;
    v12 = v38;
    v33 = v63;
    *(v37 + 11) = 2048;
    *(v37 + 13) = *(v25 + 16);

    _os_log_impl(&dword_1B0389000, v34, v35, "[%.*hhx] Added %ld locally known mailboxes.", v37, 0x15u);
    v40 = v37;
    v31 = v61;
    MEMORY[0x1B272C230](v40, -1, -1);
  }

  if (!*(v27 + 16))
  {
LABEL_12:
    if (!*(v29 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_10:
  sub_1B03B1BD0(a2, v12, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = sub_1B0E43988();
  v42 = sub_1B0E45908();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 68158208;
    *(v43 + 4) = 2;
    *(v43 + 8) = 256;
    v44 = v12;
    v45 = v33;
    v46 = v31;
    v47 = *(v44 + *(v64 + 20));
    sub_1B03B1DC0(v44, type metadata accessor for State.Logger);
    *(v43 + 10) = v47;
    v31 = v46;
    v33 = v45;
    *(v43 + 11) = 2048;
    *(v43 + 13) = *(v27 + 16);

    _os_log_impl(&dword_1B0389000, v41, v42, "[%.*hhx] Removed %ld locally known mailboxes.", v43, 0x15u);
    MEMORY[0x1B272C230](v43, -1, -1);

    goto LABEL_12;
  }

  sub_1B03B1DC0(v12, type metadata accessor for State.Logger);

  if (!*(v29 + 16))
  {
    goto LABEL_17;
  }

LABEL_15:
  v48 = v62;
  sub_1B03B1BD0(a2, v62, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v49 = sub_1B0E43988();
  v50 = sub_1B0E45908();
  if (!os_log_type_enabled(v49, v50))
  {
    sub_1B03B1DC0(v48, type metadata accessor for State.Logger);

    if (!*(v31 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v51 = swift_slowAlloc();
  *v51 = 68158208;
  *(v51 + 4) = 2;
  *(v51 + 8) = 256;
  v52 = *(v64 + 20);
  v63 = a2;
  v53 = v33;
  v54 = v31;
  v55 = *(v48 + v52);
  sub_1B03B1DC0(v48, type metadata accessor for State.Logger);
  *(v51 + 10) = v55;
  v31 = v54;
  v33 = v53;
  a2 = v63;
  *(v51 + 11) = 2048;
  *(v51 + 13) = *(v29 + 16);

  _os_log_impl(&dword_1B0389000, v49, v50, "[%.*hhx] Updated %ld locally known mailboxes.", v51, 0x15u);
  MEMORY[0x1B272C230](v51, -1, -1);

LABEL_17:
  if (!*(v31 + 16))
  {
    goto LABEL_23;
  }

LABEL_20:
  sub_1B03B1BD0(a2, v33, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56 = sub_1B0E43988();
  v57 = sub_1B0E45908();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 68158208;
    *(v58 + 4) = 2;
    *(v58 + 8) = 256;
    v59 = *(v33 + *(v64 + 20));
    sub_1B03B1DC0(v33, type metadata accessor for State.Logger);
    *(v58 + 10) = v59;
    *(v58 + 11) = 2048;
    *(v58 + 13) = *(v29 + 16);

    _os_log_impl(&dword_1B0389000, v56, v57, "[%.*hhx] Need to de-select %ld locally known mailboxes.", v58, 0x15u);
    MEMORY[0x1B272C230](v58, -1, -1);
  }

  else
  {
    sub_1B03B1DC0(v33, type metadata accessor for State.Logger);
  }

LABEL_23:

  return v31;
}

void sub_1B0B26DAC(uint64_t a1, uint64_t a2)
{
  v33 = MEMORY[0x1E69E7CD0];
  v34 = MEMORY[0x1E69E7CD0];
  v2 = *(a1 + 16);
  v3 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = v3;
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v23 = v3 + 32;
    do
    {
      v7 = (v5 + 96 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v2)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v9 = v7[3];
        v29 = v7[2];
        v30 = v9;
        v31[0] = v7[4];
        *(v31 + 9) = *(v7 + 73);
        v10 = v7[1];
        v27 = *v7;
        v28 = v10;
        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        v11 = v27;
        v12 = v28;
        v13 = DWORD2(v28);
        v14 = (sub_1B03B5DDC(v28, DWORD2(v28), v34) & 1) != 0 ? 0 : sub_1B0A93330(v11, *(&v11 + 1), v33) ^ 1;
        sub_1B0B11A84(&v27, v26);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03AB2E0(v26, v12, v13);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B019E4(v26, v11, *(&v11 + 1));

        if (v14)
        {
          break;
        }

        sub_1B0B11AE0(&v27);
        ++v8;
        v7 += 6;
        if (v4 == v2)
        {
          goto LABEL_19;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0B0A324(0, *(v6 + 16) + 1, 1);
        v6 = v32;
      }

      v5 = v23;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B0B0A324((v16 > 1), v17 + 1, 1);
        v6 = v32;
      }

      *(v6 + 16) = v17 + 1;
      v18 = (v6 + 96 * v17);
      v19 = v28;
      v18[2] = v27;
      v18[3] = v19;
      v20 = v29;
      v21 = v30;
      v22 = v31[0];
      *(v18 + 105) = *(v31 + 9);
      v18[5] = v21;
      v18[6] = v22;
      v18[4] = v20;
    }

    while (v4 != v2);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:

  if (*(v6 + 16) != v2)
  {
    sub_1B0B2E56C(v25, v6, a2);
  }
}

uint64_t sub_1B0B27010(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v148 = (v2 + 8);
  v6 = *(v2 + 16);
  v7 = MEMORY[0x1E69E7CD0];
  if ((*(v2 + 24) & 1) == 0)
  {
    *__dst = MEMORY[0x1E69E7CD0];
    v30 = *(a1 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v30)
    {
      v31 = (v3 + 56);
      do
      {
        v32 = *v31;
        v33 = *(v31 - 1);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03AB2E0(v188, v33, v32);

        v31 += 24;
        --v30;
      }

      while (v30);
      v7 = *__dst;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v34 = sub_1B0B36DA8(v3, v4, v151);
    swift_bridgeObjectRelease_n();
    sub_1B03BB638(v4, v5, v6, 0);
    *v151 = v34;
    *v148 = 0;
    *(v2 + 16) = 0;
    *(v151 + 24) = 1;
    v35 = sub_1B0BAC91C(MEMORY[0x1E69E7CC0]);
    sub_1B0B28040(v5, v35);

    sub_1B0B284C8(v6, a2);

    return v7;
  }

  v200 = MEMORY[0x1E69E7CD0];
  v201 = MEMORY[0x1E69E7CD0];
  v202 = MEMORY[0x1E69E7CD0];
  v203 = MEMORY[0x1E69E7CD0];
  v8 = *(v4 + 16);
  v146 = v5;
  v147 = v6;
  v144 = v8;
  v145 = v4;
  if (v8)
  {
    *&v156 = MEMORY[0x1E69E7CC0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0A364(0, v8, 0);
    v9 = v8;
    v10 = v156;
    v11 = (v4 + 32);
    do
    {
      v12 = v11[1];
      v178 = *v11;
      v179 = v12;
      v13 = v11[2];
      v14 = v11[3];
      v15 = v11[4];
      *&v182[9] = *(v11 + 73);
      v181 = v14;
      *v182 = v15;
      v180 = v13;
      v16 = v179;
      v17 = DWORD2(v179);
      v18 = *v11;
      *&__dst[20] = v11[1];
      *&__dst[4] = v18;
      v19 = v11[2];
      v20 = v11[3];
      v21 = v11[4];
      *&__dst[77] = *(v11 + 73);
      *&__dst[68] = v21;
      *&__dst[52] = v20;
      *&__dst[36] = v19;
      *v188 = *__dst;
      *&v188[16] = *&__dst[16];
      *&v191[13] = *&__dst[77];
      *v191 = *&__dst[64];
      v190 = *&__dst[48];
      v189 = *&__dst[32];
      sub_1B0B11A84(&v178, &v166);
      *&v156 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v23 >= v22 >> 1)
      {
        sub_1B0B0A364((v22 > 1), v23 + 1, 1);
        v10 = v156;
      }

      *(v10 + 16) = v23 + 1;
      v24 = v10 + 112 * v23;
      *(v24 + 32) = v16;
      *(v24 + 40) = v17;
      v25 = *v188;
      *(v24 + 60) = *&v188[16];
      *(v24 + 44) = v25;
      v26 = v189;
      v27 = v190;
      v28 = *v191;
      *(v24 + 121) = *&v191[13];
      *(v24 + 108) = v28;
      *(v24 + 92) = v27;
      *(v24 + 76) = v26;
      v11 += 11;
      --v9;
    }

    while (v9);
    v5 = v146;
    v4 = v145;
    v3 = a1;
    if (*(v10 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4790, &qword_1B0EC5E70);
      v36 = sub_1B0E466A8();
      goto LABEL_17;
    }
  }

  v36 = MEMORY[0x1E69E7CC8];
LABEL_17:
  *v188 = v36;
  sub_1B0B370D4(v10, 1, v188);

  v37 = *v188;
  if (v144)
  {
    v149 = *v188;
    *&v156 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A344(0, v144, 0);
    v38 = v156;
    v39 = (v4 + 32);
    for (i = v144 - 1; ; --i)
    {
      v41 = *v39;
      v42 = v39[2];
      v179 = v39[1];
      v180 = v42;
      v178 = v41;
      v43 = v39[3];
      v44 = v39[4];
      v45 = v39[6];
      *&v182[16] = v39[5];
      v183 = v45;
      v181 = v43;
      *v182 = v44;
      v46 = v39[7];
      v47 = v39[8];
      v48 = v39[10];
      v186 = v39[9];
      v187 = v48;
      v184 = v46;
      v185 = v47;
      v49 = v179;
      v50 = DWORD2(v179);
      *&__dst[100] = v39[6];
      *&__dst[84] = v39[5];
      *&__dst[68] = v39[4];
      *&__dst[52] = v39[3];
      *&__dst[164] = v39[10];
      *&__dst[148] = v39[9];
      *&__dst[132] = v39[8];
      *&__dst[116] = v39[7];
      *&__dst[4] = *v39;
      *&__dst[20] = v39[1];
      *&__dst[36] = v39[2];
      v194 = *&__dst[128];
      v195 = *&__dst[144];
      v196 = *&__dst[160];
      v197 = *&__dst[176];
      *v191 = *&__dst[64];
      *&v191[16] = *&__dst[80];
      v192 = *&__dst[96];
      v193 = *&__dst[112];
      *v188 = *__dst;
      *&v188[16] = *&__dst[16];
      v189 = *&__dst[32];
      v190 = *&__dst[48];
      sub_1B03A35B8(&v178, &v166);
      *&v156 = v38;
      v52 = *(v38 + 16);
      v51 = *(v38 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v52 >= v51 >> 1)
      {
        sub_1B0B0A344((v51 > 1), v52 + 1, 1);
        v38 = v156;
      }

      *(v38 + 16) = v52 + 1;
      v53 = v38 + 192 * v52;
      *(v53 + 32) = v49;
      *(v53 + 40) = v50;
      v54 = *v188;
      v55 = *&v188[16];
      v56 = v189;
      *(v53 + 92) = v190;
      *(v53 + 76) = v56;
      *(v53 + 60) = v55;
      *(v53 + 44) = v54;
      v57 = *v191;
      v58 = *&v191[16];
      v59 = v192;
      *(v53 + 156) = v193;
      *(v53 + 140) = v59;
      *(v53 + 124) = v58;
      *(v53 + 108) = v57;
      v60 = v194;
      v61 = v195;
      v62 = v196;
      *(v53 + 220) = v197;
      *(v53 + 204) = v62;
      *(v53 + 188) = v61;
      *(v53 + 172) = v60;
      if (!i)
      {
        break;
      }

      v39 += 11;
    }

    sub_1B03BB638(v145, v146, v147, 1);
    v37 = v149;
    v3 = a1;
  }

  else
  {
    sub_1B03BB638(v4, v5, v6, 1);
  }

  *v188 = 0;
  *&v188[8] = MEMORY[0x1E69E7CC0];
  *&v188[16] = MEMORY[0x1E69E7CC0];
  v63 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B37370(v63, sub_1B0B35EC8, 0, v188);
  swift_bridgeObjectRelease_n();
  v198 = *v188;
  v199 = *&v188[8];
  v64 = *(v3 + 16);
  if (!v64)
  {
LABEL_70:
    v138 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AFBA04(v138);
    v139 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2524C(v139, &v198);

    v140 = v198;
    v141 = v199;

    v142 = sub_1B0B21DE4(v140, v141, *(&v141 + 1));

    sub_1B03BB638(v145, v146, v147, 1);
    *v151 = v142;
    *v148 = 0;
    v148[1] = 0;
    *(v151 + 24) = 1;
    v7 = v200;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    return v7;
  }

  v65 = v3 + 69;
  while (1)
  {
    v153 = v64;
    v70 = *(v65 - 5);
    *(v208 + 9) = *(v65 + 36);
    v208[0] = *(v65 + 27);
    v71 = *(v65 + 11);
    v206 = v70;
    v207 = v71;
    v72 = *(v65 - 21);
    v204 = *(v65 - 37);
    v205 = v72;
    v73 = BYTE4(v70);
    *(v224 + 15) = *(v65 + 15);
    v224[0] = *v65;
    v67 = *(&v207 + 1);
    v74 = v208[0];
    v75 = v72;
    v66 = v70;
    v76 = DWORD2(v72);
    if (!*(v37 + 16) || (v77 = sub_1B03AB888(v205, DWORD2(v205)), (v78 & 1) == 0))
    {
      sub_1B0B11A84(&v204, __dst);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(__dst, v75, v76);

      v93 = *(v151 + 32);
      if (*(v93 + 16))
      {
        v94 = v37;
        v95 = sub_1B03B8A9C(v204, *(&v204 + 1));
        if (v96)
        {
          v97 = *(*(v93 + 56) + 8 * v95);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_42:
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          Set<>.makeNonEmpty()(v97);
          v99 = v98;

          v100 = *(v151 + 72);
          *(v151 + 72) = (v100 + 1) & 0xFFFFFF;
          v158 = v206;
          v159 = v207;
          *v160 = v208[0];
          *&v160[9] = *(v208 + 9);
          v156 = v204;
          v157 = v205;
          if (v73)
          {
            v66 = 0;
            v67 = 0;
            v68 = 1;
            v37 = v94;
          }

          else
          {
            v37 = v94;
            if (v74)
            {
              v66 = 0;
              v67 = 0;
              v68 = 1;
            }

            else
            {
              v68 = 0;
            }
          }

          v168 = v158;
          v169 = v159;
          v170 = *v160;
          v171 = *&v160[16];
          v166 = v156;
          v167 = v157;
          v180 = v158;
          v181 = v159;
          *v182 = *v160;
          *&v182[16] = *&v160[16];
          LOBYTE(v155[0]) = 1;
          v154[0] = v68;
          *&v172 = 0;
          DWORD2(v172) = 0;
          BYTE12(v172) = 1;
          *&v173 = v66;
          *(&v173 + 1) = v67;
          LOBYTE(v174) = v68;
          *(&v174 + 1) = v99;
          *&v175 = MEMORY[0x1E69E7CC0];
          *(&v175 + 1) = MEMORY[0x1E69E7CC0];
          *&v176 = 0;
          BYTE8(v176) = 2;
          HIDWORD(v176) = v100;
          v178 = v156;
          v179 = v157;
          *&v183 = 0;
          DWORD2(v183) = 0;
          BYTE12(v183) = 1;
          *&v184 = v66;
          *(&v184 + 1) = v67;
          LOBYTE(v185) = v68;
          *(&v185 + 1) = v99;
          *&v186 = MEMORY[0x1E69E7CC0];
          *(&v186 + 1) = MEMORY[0x1E69E7CC0];
          *&v187 = 0;
          BYTE8(v187) = 2;
          HIDWORD(v187) = v100;
          sub_1B0B11A84(&v204, __dst);
          sub_1B03A35B8(&v166, __dst);
          sub_1B03A3614(&v178);
          *&__dst[128] = v174;
          *&__dst[144] = v175;
          *&__dst[160] = v176;
          *&__dst[64] = v170;
          *&__dst[80] = v171;
          *&__dst[96] = v172;
          *&__dst[112] = v173;
          *__dst = v166;
          *&__dst[16] = v167;
          *&__dst[32] = v168;
          *&__dst[48] = v169;
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v194 = *&__dst[128];
          v195 = *&__dst[144];
          v196 = *&__dst[160];
          *v191 = *&__dst[64];
          *&v191[16] = *&__dst[80];
          v193 = *&__dst[112];
          v192 = *&__dst[96];
          *v188 = *__dst;
          *&v188[16] = *&__dst[16];
          v190 = *&__dst[48];
          v189 = *&__dst[32];
          sub_1B0BC918C(v188, v75, v76);
          sub_1B0B11AE0(&v204);
          goto LABEL_29;
        }
      }

      else
      {
        v94 = v37;
      }

      v97 = MEMORY[0x1E69E7CD0];
      goto LABEL_42;
    }

    v79 = (*(v37 + 56) + 96 * v77);
    v80 = v79[1];
    v217 = *v79;
    v218 = v80;
    v82 = v79[3];
    v81 = v79[4];
    v83 = v79[2];
    *(v221 + 9) = *(v79 + 73);
    v220 = v82;
    v221[0] = v81;
    v219 = v83;
    sub_1B0B11A84(&v204, __dst);
    sub_1B0B11A84(&v217, __dst);
    if ((static MailboxOfInterest.__derived_struct_equals(_:_:)(&v217, &v204) & 1) == 0)
    {
      break;
    }

    sub_1B0B11AE0(&v217);
    v84 = sub_1B03AB888(v75, v76);
    if (v85)
    {
      v86 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v178 = v37;
      v69 = v153;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

LABEL_68:
      sub_1B0B8E450();
      v37 = v178;
LABEL_36:

      v88 = (*(v37 + 56) + 96 * v86);
      v89 = v88[1];
      *__dst = *v88;
      *&__dst[16] = v89;
      v91 = v88[3];
      v90 = v88[4];
      v92 = v88[2];
      *&__dst[73] = *(v88 + 73);
      *&__dst[48] = v91;
      *&__dst[64] = v90;
      *&__dst[32] = v92;
      sub_1B0B11AE0(__dst);
      sub_1B0B905EC(v86, v37);
      goto LABEL_69;
    }

    sub_1B0B11AE0(&v204);
LABEL_29:
    v69 = v153;
LABEL_30:
    v65 += 96;
    v64 = v69 - 1;
    if (!v64)
    {
      goto LABEL_70;
    }
  }

  v150 = v37;
  v222 = DWORD1(v208[1]);
  v223 = BYTE8(v208[1]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03AB2E0(__dst, v75, v76);

  v209[0] = v217;
  v209[1] = v218;
  *&__dst[16] = *(&v221[1] + 1);
  *__dst = *(v221 + 1);
  __dst[23] = v223;
  *&__dst[19] = v222;
  v210 = v66;
  v211 = v73;
  *&v212[15] = *(v224 + 15);
  *v212 = v224[0];
  v213 = v67;
  v214 = v74;
  v215 = *(v221 + 1);
  v216 = *&__dst[16];
  v101 = static MailboxOfInterest.__derived_struct_equals(_:_:)(&v204, v209);
  sub_1B0B11AE0(v209);
  if (v101)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v102 = sub_1B0B28630(&v178, v75, v76);
    v104 = v103;
    memmove(__dst, v103, 0xB0uLL);
    if (sub_1B03BCF14(__dst) != 1)
    {
      v104[21] = v222;
      *(v104 + 88) = v223;
    }

    v102(&v178, 0);

    v37 = v150;
    v69 = v153;
    goto LABEL_66;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v105 = sub_1B0B28630(&v156, v75, v76);
  v107 = v106;
  memmove(__dst, v106, 0xB0uLL);
  if (sub_1B03BCF14(__dst) != 1)
  {
    v108 = v107[1];
    v178 = *v107;
    v179 = v108;
    v109 = v107[2];
    v110 = v107[3];
    v111 = v107[4];
    *&v182[9] = *(v107 + 73);
    v181 = v110;
    *v182 = v111;
    v180 = v109;
    v112 = v208[0];
    v113 = v207;
    v114 = v206;
    *(v107 + 73) = *(v208 + 9);
    v107[3] = v113;
    v107[4] = v112;
    v107[2] = v114;
    v115 = v205;
    *v107 = v204;
    v107[1] = v115;
    sub_1B0B11A84(&v204, &v166);
    sub_1B0B11AE0(&v178);
  }

  v105(&v156, 0);

  v116 = *(&v199 + 1);
  v117 = *(v199 + 16);
  v37 = v150;
  v118 = v199 + 32;
  if (!v198)
  {
    v119 = sub_1B03A912C(v75, v76, v118, v117);
    if ((v121 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_55:
    sub_1B0B378E0(&v166);
    v185 = v174;
    v186 = v175;
    v187 = v176;
    *v182 = v170;
    *&v182[16] = v171;
    v183 = v172;
    v184 = v173;
    v178 = v166;
    v179 = v167;
    v180 = v168;
    v181 = v169;
LABEL_60:
    v174 = v185;
    v175 = v186;
    v176 = v187;
    v170 = *v182;
    v171 = *&v182[16];
    v172 = v183;
    v173 = v184;
    v166 = v178;
    v167 = v179;
    v168 = v180;
    v169 = v181;
    v69 = v153;
    if (sub_1B03BCF14(&v166) == 1)
    {
      v163 = v185;
      v164 = v186;
      v165 = v187;
      *v160 = *v182;
      *&v160[16] = *&v182[16];
      v161 = v183;
      v162 = v184;
      v156 = v178;
      v157 = v179;
      v158 = v180;
      v159 = v181;
      sub_1B0398EFC(&v156, &qword_1EB6E4798, &qword_1B0EC5E78);
    }

    else
    {
      v131 = v183;
      v163 = v185;
      v164 = v186;
      v165 = v187;
      *v160 = *v182;
      *&v160[16] = *&v182[16];
      v161 = v183;
      v162 = v184;
      v156 = v178;
      v157 = v179;
      v158 = v180;
      v159 = v181;

      sub_1B0398EFC(&v156, &qword_1EB6E4798, &qword_1B0EC5E78);
      if (v131)
      {

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v132 = sub_1B0B28630(v154, v75, v76);
        v134 = v133;
        memmove(v155, v133, 0xB0uLL);
        if (sub_1B03BCF14(v155) != 1)
        {
          v134[12] = 0;
        }

        v132(v154, 0);
        v37 = v150;

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03AB2E0(v154, v75, v76);
      }
    }

LABEL_66:
    v135 = sub_1B03AB888(v75, v76);
    if (v136)
    {
      v86 = v135;
      v137 = swift_isUniquelyReferenced_nonNull_native();
      *&v178 = v37;
      if ((v137 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_36;
    }

LABEL_69:
    sub_1B0B11AE0(&v204);
    goto LABEL_30;
  }

  v119 = sub_1B0BA7CA4(v75, v76, v118, v117, (v198 + 16), v198 + 32);
  if (v120)
  {
    goto LABEL_55;
  }

LABEL_57:
  if ((v119 & 0x8000000000000000) == 0)
  {
    if (v119 >= *(v116 + 16))
    {
      goto LABEL_73;
    }

    v122 = (v116 + 176 * v119);
    v123 = v122[2];
    v124 = v122[4];
    v167 = v122[3];
    v168 = v124;
    v166 = v123;
    v125 = v122[5];
    v126 = v122[6];
    v127 = v122[8];
    v171 = v122[7];
    v172 = v127;
    v169 = v125;
    v170 = v126;
    v128 = v122[9];
    v129 = v122[10];
    v130 = v122[12];
    v175 = v122[11];
    v176 = v130;
    v173 = v128;
    v174 = v129;
    memmove(&v178, v122 + 2, 0xB0uLL);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B03A35B8(&v166, &v156);
    goto LABEL_60;
  }

  __break(1u);
LABEL_73:
  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B0B28040(unint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47A0, &qword_1B0EC5E80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v32 - v6);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4400, &qword_1B0EC5168);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v32 - v10;
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  if (v14)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    for (i = *(v11 + 2); i; i = *(v11 + 2))
    {
      v32 = v13;
      v33 = v14;
      v34 = v2;
      v17 = 0;
      v14 = 0;
      v18 = a1[2];
      v13 = (v45 + 48);
      v36 = a1 + 6;
      v37 = v11 + 32;
      v38 = v18;
      v39 = v11;
      v40 = v12;
      v41 = a2;
      while (v17 < i)
      {
        v20 = &v37[176 * v17];
        v2 = *(v20 + 2);
        v42 = v20;
        v43 = v17;
        v21 = *(v20 + 6);
        v22 = *(a2 + 16);
        v46 = v2;
        if (v22)
        {
          v23 = sub_1B03AB888(v2, v21);
          if (v24)
          {
            v50 = 0;
            v49 = *(*(a2 + 56) + 8 * v23);
          }

          else
          {
            v49 = 0;
            v50 = 1;
          }

          v2 = v46;
        }

        else
        {
          v49 = 0;
          v50 = 1;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v18)
        {
          a1 = v36;
          v25 = v18;
          v19 = MEMORY[0x1E69E7CC0];
          do
          {
            v26 = *(a1 - 1);
            v27 = *a1;
            v51 = *(a1 - 4);
            v52 = v26;
            v53 = v27;
            sub_1B09AFB1C(v26, v27);
            sub_1B0B29AC4(&v51, v2, v21, v49, v50, v7);
            sub_1B09AFBA0(v26, v27);
            if ((*v13)(v7, 1, v48) == 1)
            {
              sub_1B0398EFC(v7, &qword_1EB6E47A0, &qword_1B0EC5E80);
            }

            else
            {
              v28 = v44;
              sub_1B03C60A4(v7, v44, &qword_1EB6E4400, &qword_1B0EC5168);
              sub_1B03C60A4(v28, v47, &qword_1EB6E4400, &qword_1B0EC5168);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_1B0B003DC(0, v19[2] + 1, 1, v19);
              }

              v30 = v19[2];
              v29 = v19[3];
              v2 = v46;
              if (v30 >= v29 >> 1)
              {
                v19 = sub_1B0B003DC((v29 > 1), v30 + 1, 1, v19);
              }

              v19[2] = v30 + 1;
              sub_1B03C60A4(v47, v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v30, &qword_1EB6E4400, &qword_1B0EC5168);
            }

            a1 += 3;
            --v25;
          }

          while (v25);
        }

        else
        {
          v19 = MEMORY[0x1E69E7CC0];
        }

        sub_1B0B35884(v19, v42 + 19);

        v17 = v43 + 1;
        v11 = v39;
        v12 = v40;
        i = *(v39 + 2);
        a2 = v41;
        v18 = v38;
        if (v43 + 1 == i)
        {
          result = sub_1B03BB638(v35, v40, v32, 1);
          v2 = v34;
          LOBYTE(v14) = v33;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_27:
      v11 = sub_1B03D0E54(v35);
    }

    result = sub_1B03BB638(v35, v12, v13, 1);
LABEL_29:
    a1 = 0;
    v13 = 0;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B03BB638(v11, v12, v13, 0);
  }

  *v2 = v11;
  *(v2 + 8) = a1;
  *(v2 + 16) = v13;
  *(v2 + 24) = v14;
  return result;
}

uint64_t sub_1B0B284C8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 24);
  if (v5)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_11;
    }

    for (i = *(v4 + 16); i; i = *(isUniquelyReferenced_nonNull_native + 16))
    {
      v9 = 0;
      v10 = (v4 + 176);
      while (v9 < i)
      {
        MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
        v15[2] = v11;
        v15[3] = v2;
        v15[4] = a2;
        *v10 = sub_1B0B3E618(sub_1B0B37900, v15, a1);
        v10 += 22;

        ++v9;
        i = *(v4 + 16);
        if (v9 == i)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_11:
      isUniquelyReferenced_nonNull_native = sub_1B03D0E54(v4);
      v4 = isUniquelyReferenced_nonNull_native;
    }

LABEL_7:
    result = sub_1B03BB638(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    v13 = 0;
    a1 = 0;
  }

  else
  {
    v13 = *(v2 + 8);
    v14 = *(v2 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B03BB638(v4, v13, v14, 0);
  }

  *v2 = v4;
  *(v2 + 8) = v13;
  *(v2 + 16) = a1;
  *(v2 + 24) = v5;
  return result;
}

void (*sub_1B0B28630(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x448uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 1064) = v3;
  *(v7 + 1088) = a3;
  *(v7 + 1056) = a2;
  sub_1B0B378E0(v7);
  v9 = *(v8 + 144);
  *(v8 + 304) = *(v8 + 128);
  *(v8 + 320) = v9;
  *(v8 + 336) = *(v8 + 160);
  v10 = *(v8 + 80);
  *(v8 + 240) = *(v8 + 64);
  *(v8 + 256) = v10;
  v11 = *(v8 + 112);
  *(v8 + 272) = *(v8 + 96);
  *(v8 + 288) = v11;
  v12 = *(v8 + 16);
  *(v8 + 176) = *v8;
  *(v8 + 192) = v12;
  v13 = *(v8 + 48);
  *(v8 + 208) = *(v8 + 32);
  *(v8 + 224) = v13;
  *(v8 + 1072) = sub_1B0B35474(a2, a3, (v8 + 176));
  *(v8 + 1092) = v14;
  *(v8 + 1080) = v15;
  return sub_1B0B28708;
}

void sub_1B0B28708(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 880);
  v4 = *(*a1 + 1092);
  if (a2)
  {
    v5 = *(v2 + 288);
    v7 = *(v2 + 304);
    v6 = *(v2 + 320);
    *(v2 + 480) = v7;
    *(v2 + 496) = v6;
    v8 = *(v2 + 224);
    v10 = *(v2 + 240);
    v9 = *(v2 + 256);
    *(v2 + 416) = v10;
    *(v2 + 432) = v9;
    v11 = *(v2 + 256);
    v13 = *(v2 + 272);
    v12 = *(v2 + 288);
    *(v2 + 448) = v13;
    *(v2 + 464) = v12;
    v14 = *(v2 + 192);
    *(v2 + 352) = *(v2 + 176);
    *(v2 + 368) = v14;
    v15 = *(v2 + 224);
    v17 = *(v2 + 176);
    v16 = *(v2 + 192);
    *(v2 + 384) = *(v2 + 208);
    *(v2 + 400) = v15;
    v121 = *(v2 + 304);
    v122 = *(v2 + 320);
    v123 = *(v2 + 336);
    v18 = *(v2 + 208);
    v117 = *(v2 + 240);
    v118 = *(v2 + 256);
    v119 = *(v2 + 272);
    v120 = *(v2 + 288);
    v113 = *(v2 + 176);
    v114 = *(v2 + 192);
    v115 = v18;
    v116 = *(v2 + 224);
    *(v2 + 640) = v5;
    *(v2 + 656) = v7;
    v19 = *(v2 + 336);
    *(v2 + 672) = *(v2 + 320);
    *(v2 + 688) = v19;
    *(v2 + 576) = v8;
    *(v2 + 592) = v10;
    *(v2 + 608) = v11;
    *(v2 + 624) = v13;
    *(v2 + 512) = v19;
    *(v2 + 528) = v17;
    *(v2 + 544) = v16;
    *(v2 + 560) = v18;
    v20 = sub_1B03BCF14((v2 + 528));
    v21 = v20 == 1;
    if (v4)
    {
      if (v20 != 1)
      {
LABEL_4:
        v22 = *(v2 + 1080);
        v23 = *(v2 + 1064);
        v24 = *(v2 + 1088);
        v25 = *(v2 + 1056);
        sub_1B03B5C80(v2 + 352, v2 + 704, &qword_1EB6E4798, &qword_1B0EC5E78);
        sub_1B03A5284(v25, v24, v22);
        v28 = *(v23 + 16);
        v26 = (v23 + 16);
        v27 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B0B09D24(0, *(v27 + 16) + 1, 1);
          v27 = *v26;
        }

        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_1B0B09D24((v30 > 1), v31 + 1, 1);
          v32 = v31 + 1;
          v27 = *v26;
        }

        v128 = v117;
        v129 = v118;
        v126 = v115;
        v127 = v116;
        v133 = v122;
        v134 = v123;
        v131 = v120;
        v132 = v121;
        v130 = v119;
        v124 = v113;
        v125 = v114;
        *(v27 + 16) = v32;
        v33 = (v27 + 176 * v31);
        v34 = v124;
        v35 = v126;
        v33[3] = v125;
        v33[4] = v35;
        v33[2] = v34;
        v36 = v127;
        v37 = v128;
        v38 = v130;
        v33[7] = v129;
        v33[8] = v38;
        v33[5] = v36;
        v33[6] = v37;
        v39 = v131;
        v40 = v132;
        v41 = v134;
        v33[11] = v133;
        v33[12] = v41;
        v33[9] = v39;
        v33[10] = v40;
        *v26 = v27;
        goto LABEL_27;
      }

LABEL_11:
      sub_1B03B5C80(v2 + 352, v2 + 704, &qword_1EB6E4798, &qword_1B0EC5E78);
      goto LABEL_27;
    }
  }

  else
  {
    v42 = *(v2 + 288);
    v44 = *(v2 + 304);
    v43 = *(v2 + 320);
    *(v2 + 480) = v44;
    *(v2 + 496) = v43;
    v45 = *(v2 + 224);
    v47 = *(v2 + 240);
    v46 = *(v2 + 256);
    *(v2 + 416) = v47;
    *(v2 + 432) = v46;
    v48 = *(v2 + 256);
    v50 = *(v2 + 272);
    v49 = *(v2 + 288);
    *(v2 + 448) = v50;
    *(v2 + 464) = v49;
    v51 = *(v2 + 192);
    *(v2 + 352) = *(v2 + 176);
    *(v2 + 368) = v51;
    v52 = *(v2 + 224);
    v54 = *(v2 + 176);
    v53 = *(v2 + 192);
    *(v2 + 384) = *(v2 + 208);
    *(v2 + 400) = v52;
    v121 = *(v2 + 304);
    v122 = *(v2 + 320);
    v123 = *(v2 + 336);
    v55 = *(v2 + 208);
    v117 = *(v2 + 240);
    v118 = *(v2 + 256);
    v119 = *(v2 + 272);
    v120 = *(v2 + 288);
    v113 = *(v2 + 176);
    v114 = *(v2 + 192);
    v115 = v55;
    v116 = *(v2 + 224);
    *(v2 + 640) = v42;
    *(v2 + 656) = v44;
    v56 = *(v2 + 336);
    *(v2 + 672) = *(v2 + 320);
    *(v2 + 688) = v56;
    *(v2 + 576) = v45;
    *(v2 + 592) = v47;
    *(v2 + 608) = v48;
    *(v2 + 624) = v50;
    *(v2 + 512) = v56;
    *(v2 + 528) = v54;
    *(v2 + 544) = v53;
    *(v2 + 560) = v55;
    v57 = sub_1B03BCF14((v2 + 528));
    v21 = v57 == 1;
    if (v4)
    {
      if (v57 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  if (v21)
  {
    v58 = *(v2 + 1072);
    v59 = *(v2 + 1064);
    v61 = *(v59 + 16);
    v60 = (v59 + 16);
    v62 = v2 + 352;
    if (v58 >= *(v61 + 16))
    {
      sub_1B03B5C80(v62, v2 + 704, &qword_1EB6E4798, &qword_1B0EC5E78);
    }

    else
    {
      sub_1B03B5C80(v62, v3, &qword_1EB6E4798, &qword_1B0EC5E78);
      sub_1B0BCB2E8(v58, &v124);
      v63 = v133;
      *(v2 + 832) = v132;
      *(v2 + 848) = v63;
      *(v2 + 864) = v134;
      v64 = v129;
      *(v2 + 768) = v128;
      *(v2 + 784) = v64;
      v65 = v131;
      *(v2 + 800) = v130;
      *(v2 + 816) = v65;
      v66 = v125;
      *(v2 + 704) = v124;
      *(v2 + 720) = v66;
      v67 = v127;
      *(v2 + 736) = v126;
      *(v2 + 752) = v67;
      v68 = *v60;
      sub_1B03A35B8(v2 + 704, v3);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *v60 = v68;
      if ((v69 & 1) == 0)
      {
        sub_1B0B09D24(0, *(v68 + 16) + 1, 1);
        v68 = *v60;
      }

      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1B0B09D24((v70 > 1), v71 + 1, 1);
      }

      v72 = v133;
      v3[8] = v132;
      v3[9] = v72;
      v3[10] = v134;
      v73 = v129;
      v3[4] = v128;
      v3[5] = v73;
      v74 = v131;
      v3[6] = v130;
      v3[7] = v74;
      v75 = v125;
      *v3 = v124;
      v3[1] = v75;
      v76 = v127;
      v3[2] = v126;
      v3[3] = v76;
      sub_1B03A3614(v3);
      v77 = *v60;
      *(v77 + 16) = v71 + 1;
      v78 = (v77 + 176 * v71);
      v79 = *(v2 + 816);
      v80 = *(v2 + 832);
      v81 = *(v2 + 864);
      v78[11] = *(v2 + 848);
      v78[12] = v81;
      v78[9] = v79;
      v78[10] = v80;
      v82 = *(v2 + 752);
      v83 = *(v2 + 768);
      v84 = *(v2 + 800);
      v78[7] = *(v2 + 784);
      v78[8] = v84;
      v78[5] = v82;
      v78[6] = v83;
      v86 = *(v2 + 704);
      v85 = *(v2 + 720);
      v87 = *(v2 + 736);
      v78[3] = v85;
      v78[4] = v87;
      v78[2] = v86;
      *v60 = v77;
    }

    sub_1B0BCAE88(*(v2 + 1072), *(v2 + 1080), v85);
  }

  else
  {
    v88 = *(v2 + 1064);
    v91 = *(v88 + 16);
    v89 = (v88 + 16);
    v90 = v91;
    sub_1B03B5C80(v2 + 352, v2 + 704, &qword_1EB6E4798, &qword_1B0EC5E78);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    *v89 = v90;
    if ((v92 & 1) == 0)
    {
      sub_1B0B09D24(0, *(v90 + 16) + 1, 1);
      v90 = *v89;
    }

    v93 = *(v90 + 16);
    v94 = *(v90 + 24);
    v95 = v93 + 1;
    if (v93 >= v94 >> 1)
    {
      v111 = *(v90 + 16);
      v112 = v93 + 1;
      sub_1B0B09D24((v94 > 1), v93 + 1, 1);
      v95 = v112;
      v93 = v111;
      v90 = *v89;
    }

    v96 = *(v2 + 1072);
    v128 = v117;
    v129 = v118;
    v126 = v115;
    v127 = v116;
    v133 = v122;
    v134 = v123;
    v131 = v120;
    v132 = v121;
    v130 = v119;
    v124 = v113;
    v125 = v114;
    *(v90 + 16) = v95;
    v97 = (v90 + 176 * v93);
    v98 = v124;
    v99 = v126;
    v97[3] = v125;
    v97[4] = v99;
    v97[2] = v98;
    v100 = v127;
    v101 = v128;
    v102 = v130;
    v97[7] = v129;
    v97[8] = v102;
    v97[5] = v100;
    v97[6] = v101;
    v103 = v131;
    v104 = v132;
    v105 = v134;
    v97[11] = v133;
    v97[12] = v105;
    v97[9] = v103;
    v97[10] = v104;
    *v89 = v90;
    sub_1B0B3555C(v96, v93);
  }

LABEL_27:
  v106 = *(v2 + 320);
  *(v2 + 656) = *(v2 + 304);
  *(v2 + 672) = v106;
  *(v2 + 688) = *(v2 + 336);
  v107 = *(v2 + 256);
  *(v2 + 592) = *(v2 + 240);
  *(v2 + 608) = v107;
  v108 = *(v2 + 288);
  *(v2 + 624) = *(v2 + 272);
  *(v2 + 640) = v108;
  v109 = *(v2 + 192);
  *(v2 + 528) = *(v2 + 176);
  *(v2 + 544) = v109;
  v110 = *(v2 + 224);
  *(v2 + 560) = *(v2 + 208);
  *(v2 + 576) = v110;
  sub_1B0398EFC(v2 + 528, &qword_1EB6E4798, &qword_1B0EC5E78);

  free(v2);
}

void sub_1B0B28CA4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 24) == 1)
  {
    v13 = (v3 + 8);
    v12 = *(v3 + 8);
    v14 = *(v3 + 16);
    v37 = *v3;
    v11 = v37;
    v15 = *(v37 + 2);
    if (!v15)
    {
LABEL_23:
      *v3 = v37;
      *v13 = 0;
      v13[1] = 0;
      *(v3 + 24) = 1;
      return;
    }

    v16 = 0;
    while (1)
    {
      v17 = &v37[176 * v16 + 32];
      if ((*(v17 + 24) | (*(v17 + 24) << 32)) == (a2 | (a2 << 32)))
      {
        v18 = *(v17 + 16);
        v19 = *(v18 + 16);
        if (v19 == *(a1 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v16 == v15)
      {
        goto LABEL_23;
      }
    }

    if (v19)
    {
      v20 = v18 == a1;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
LABEL_15:
      v32[1] = v8;
      v34 = v12;
      sub_1B03B9A2C(v37, v12, v14, 1);
      v23 = v11;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_16:
        if (v16 >= *(v23 + 2))
        {
          __break(1u);
          return;
        }

        v33 = v3;
        v24 = &v23[176 * v16];
        v25 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B00C8(v25);
        Set<>.formNonEmpty()();
        *(v24 + 34) = 0;
        v24[140] = 1;
        v37 = v23;
        v27 = sub_1B0B86138(v36, v16);
        if (*(v26 + 96))
        {
          v28 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = *(v28 + 96);
            v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            sub_1B03B1BD0(v29 + v30, v10, _s13SelectedStateV7WrappedVMa);
            _s13SelectedStateV8_StorageCMa(0);
            v31 = swift_allocObject();
            sub_1B0B37C3C(v10, v31 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
            *(v28 + 96) = v31;
          }

          swift_beginAccess();
          sub_1B03BDE74(a3);
          sub_1B03BDD7C(&v35, a3);
          swift_endAccess();
          v27(v36, 0);
        }

        else
        {
          v27(v36, 0);
        }

        sub_1B03BB638(v11, v34, v14, 1);
        v3 = v33;
        goto LABEL_23;
      }
    }

    else
    {
      v21 = (v18 + 32);
      v22 = (a1 + 32);
      while (v19)
      {
        if (*v21 != *v22)
        {
          goto LABEL_4;
        }

        ++v21;
        ++v22;
        if (!--v19)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    v23 = sub_1B03D0E54(v11);
    goto LABEL_16;
  }
}

void sub_1B0B28FD0(char **a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v37 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v6;
  v9 = *a1;
  v46 = *(*a1 + 2);
  if (v46)
  {
    v36 = v7;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v41 = &v36 - v6;
    v42 = a1;
    v43 = a2;
    do
    {
      if (v13 >= *(v9 + 2))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v14 = *&v9[v10 + 48];
      v15 = *&v9[v10 + 56];
      if ((sub_1B03B5DDC(v14, v15, a2) & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B03D0E54(v9);
        }

        if (v13 >= *(v9 + 2))
        {
          goto LABEL_30;
        }

        if (*(*&v9[v10 + 168] + 16))
        {
          *&v9[v10 + 168] = MEMORY[0x1E69E7CD0];

          *a1 = v9;
          if (v12 > 4)
          {

            v29 = __OFADD__(v11++, 1);
            if (v29)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v13 >= *(v9 + 2))
            {
              goto LABEL_32;
            }

            v45 = *&v9[v10 + 204];
            sub_1B03B1BD0(v44, v8, type metadata accessor for State.Logger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v16 = sub_1B0E43988();
            v17 = sub_1B0E45908();

            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              v40 = v12;
              v19 = v18;
              v20 = swift_slowAlloc();
              v38 = v16;
              v39 = v20;
              v49 = v20;
              *v19 = 0x204100603;
              *(v19 + 8) = 256;
              v21 = v8[*(v37 + 20)];
              sub_1B03B1DC0(v8, type metadata accessor for State.Logger);
              *(v19 + 10) = v21;
              *(v19 + 11) = 1040;
              *(v19 + 13) = 2;
              *(v19 + 17) = 512;
              *(v19 + 19) = v45;
              *(v19 + 21) = 2160;
              *(v19 + 23) = 0x786F626C69616DLL;
              *(v19 + 31) = 2085;
              v47 = v14;
              v48 = v15;
              v22 = sub_1B0E44BA8();
              v24 = sub_1B0399D64(v22, v23, &v49);

              *(v19 + 33) = v24;
              v25 = v17;
              v26 = v38;
              _os_log_impl(&dword_1B0389000, v38, v25, "[%.*hhx] [{%.*hx}-%{sensitive,mask.mailbox}s] Did mark as sync complete.", v19, 0x29u);
              v27 = v39;
              __swift_destroy_boxed_opaque_existential_0Tm(v39);
              MEMORY[0x1B272C230](v27, -1, -1);
              v28 = v19;
              v12 = v40;
              MEMORY[0x1B272C230](v28, -1, -1);
            }

            else
            {
              sub_1B03B1DC0(v8, type metadata accessor for State.Logger);
            }

            a1 = v42;
            a2 = v43;
            ++v12;
            v8 = v41;
            v29 = __OFADD__(v11++, 1);
            if (v29)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {

          *a1 = v9;
        }
      }

      ++v13;
      v10 += 176;
    }

    while (v46 != v13);
    v30 = v36;
    if (v12 >= v11)
    {
      return;
    }

    sub_1B03B1BD0(v44, v36, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v31 = sub_1B0E43988();
    v32 = sub_1B0E45908();
    if (!os_log_type_enabled(v31, v32))
    {
      sub_1B03B1DC0(v30, type metadata accessor for State.Logger);
      goto LABEL_27;
    }

    v33 = v12;
    v34 = swift_slowAlloc();
    *v34 = 68158208;
    *(v34 + 4) = 2;
    *(v34 + 8) = 256;
    v35 = *(v30 + *(v37 + 20));
    sub_1B03B1DC0(v30, type metadata accessor for State.Logger);
    *(v34 + 10) = v35;
    *(v34 + 11) = 2048;
    if (!__OFSUB__(v11, v33))
    {
      *(v34 + 13) = v11 - v33;
      _os_log_impl(&dword_1B0389000, v31, v32, "[%.*hhx] Did mark %ld more mailboxes as sync complete.", v34, 0x15u);
      MEMORY[0x1B272C230](v34, -1, -1);
LABEL_27:

      return;
    }

LABEL_33:
    __break(1u);
  }
}

void sub_1B0B294B8(uint64_t a1, unsigned int a2)
{
  if (v2[24])
  {
    v3 = *(*v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = a2 | (a2 << 32);
      while (1)
      {
        v6 = *v2 + 32 + 176 * v4;
        if ((*(v6 + 24) | (*(v6 + 24) << 32)) == v5)
        {
          v7 = *(v6 + 16);
          v8 = *(v7 + 16);
          if (v8 == *(a1 + 16))
          {
            break;
          }
        }

LABEL_4:
        if (++v4 == v3)
        {
          return;
        }
      }

      if (v8)
      {
        v9 = v7 == a1;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
LABEL_15:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      else
      {
        v10 = (v7 + 32);
        v11 = (a1 + 32);
        while (v8)
        {
          if (*v10 != *v11)
          {
            goto LABEL_4;
          }

          ++v10;
          ++v11;
          if (!--v8)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1B0B29590(uint64_t result, unsigned int a2)
{
  if ((v2[24] & 1) == 0)
  {
    return 0xFFFFLL;
  }

  v3 = *(*v2 + 16);
  if (!v3)
  {
    return 0xFFFFLL;
  }

  v4 = 0;
  while (1)
  {
    v5 = *v2 + 32 + 176 * v4;
    if ((*(v5 + 24) | (*(v5 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0xFFFFLL;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return *(v5 + 172);
  }

  v9 = (v6 + 32);
  v10 = (result + 32);
  while (v7)
  {
    if (*v9 != *v10)
    {
      goto LABEL_4;
    }

    ++v9;
    ++v10;
    if (!--v7)
    {
      return *(v5 + 172);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B29640(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(v3 + 24) != 1)
  {
    return result;
  }

  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v16 = v4;
  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_16:
    *v3 = v4;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
    return result;
  }

  v8 = 0;
  while (1)
  {
    v9 = v4 + 32 + 176 * v8;
    if ((*(v9 + 24) | (*(v9 + 24) << 32)) == (a3 | (a3 << 32)))
    {
      v10 = *(v9 + 16);
      v11 = *(v10 + 16);
      if (v11 == *(a2 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      goto LABEL_16;
    }
  }

  if (v11)
  {
    v12 = v10 == a2;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_15:
    v15 = result;
    sub_1B03B9A2C(v4, v5, v6, 1);
    sub_1B0B24FD4(v15, &v16, v8);
    result = sub_1B03BB638(v4, v5, v6, 1);
    v4 = v16;
    goto LABEL_16;
  }

  v13 = (v10 + 32);
  v14 = (a2 + 32);
  while (v11)
  {
    if (*v13 != *v14)
    {
      goto LABEL_4;
    }

    ++v13;
    ++v14;
    if (!--v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B29784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v25 = a5;
  v9 = type metadata accessor for Task.Logger(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MailboxTaskLogger(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03B1BD0(a3, v12, type metadata accessor for Task.Logger);
  LODWORD(a3) = *(a1 + 172);
  v17 = sub_1B0E439A8();
  (*(*(v17 - 8) + 16))(v16, v12, v17);
  v18 = &v12[*(v10 + 28)];
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1DC0(v12, type metadata accessor for Task.Logger);
  v22 = &v16[*(v14 + 28)];
  *v22 = v20;
  *(v22 + 1) = v19;
  *(v22 + 2) = v21;
  *(v22 + 12) = a3;
  *(v22 + 4) = a4;
  *(v22 + 10) = v25;
  sub_1B0B13E58(a2, v16);
  return sub_1B03B1DC0(v16, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B29950(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(*v4 + 16);
    if (!v9)
    {
LABEL_18:
      *v4 = v7;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 1;
      return result;
    }

    v10 = 0;
    v11 = *(v4 + 16);
    while (1)
    {
      v12 = (v7 + 32 + 176 * v10);
      if (v12[1] == a3)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v10 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v15 = v13 == a2;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_15:
      v6 = result;
      v5 = a4;
      sub_1B03B9A2C(*v4, *(v4 + 8), *(v4 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if (result)
      {
LABEL_16:
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1B0B13584(v6, v5);
        result = sub_1B03BB638(v7, v8, v11, 1);
        v7 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (a2 + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_4;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_1B03D0E54(v7);
    v18 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0B29AC4@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, _DWORD *a6@<X8>)
{
  v47 = a5;
  v46 = a4;
  v50 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = *a1;
  v23 = *(a1 + 1);
  v24 = *(a1 + 2);
  v25 = *(v23 + 16);
  if ((v24 & 4) != 0)
  {
    if (v25)
    {
      v38 = v22;
      v39 = sub_1B03AB888(a2, a3);
      if (v40)
      {
        sub_1B03B5C80(*(v23 + 56) + *(v13 + 72) * v39, v18, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03C60A4(v18, v21, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v35 = v50;
        *v50 = v38;
        sub_1B03B5C80(v21, v15, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03D06F8();
        sub_1B0E46EE8();
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4400, &qword_1B0EC5168);
        v41 = v35 + *(v34 + 48);
        sub_1B0398EFC(v21, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
        (*(v48 + 56))(v41 + *(MessagesVMa + 24), 1, 1, v49);
        sub_1B03C60A4(v15, v41, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03C60A4(v11, v41 + *(MessagesVMa + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _s19UserInitiatedSearchV5StateOMa(0);
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (v25)
    {
      v26 = v22;
      v27 = sub_1B03AB888(a2, a3);
      if (v28)
      {
        v29 = *(v23 + 56) + 24 * v27;
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = *(v29 + 16);
        if (v47 & 1) != 0 || (v31 != v46 ? (v33 = 1) : (v33 = *(v29 + 16)), v46 && (v33))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4400, &qword_1B0EC5168);
          v35 = v50;
          v36 = v50 + *(v34 + 48);
          *v50 = v26;
          sub_1B09AFB1C(v23, v24);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B09AE83C(v24);
          v37 = sub_1B0B80CB4(v24);

          sub_1B09AEA14(v24);
          *v36 = v37;
          *(v36 + 1) = v30;
          *(v36 + 2) = v31;
          v36[24] = v32;
          _s19UserInitiatedSearchV5StateOMa(0);
LABEL_14:
          swift_storeEnumTagMultiPayload();
          return (*(*(v34 - 8) + 56))(v35, 0, 1, v34);
        }
      }

      sub_1B09AFB1C(v23, v24);
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B09AE83C(v24);
    }

    sub_1B09AEA14(v24);
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4400, &qword_1B0EC5168);
  return (*(*(v44 - 8) + 56))(v50, 1, 1, v44);
}

void sub_1B0B29FA0(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v10 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1[4] | (a1[4] << 32)) == (*(a2 + 24) | (*(a2 + 24) << 32)))
  {
    v35 = *a1;
    v14 = *(a1 + 3);
    v13 = *(a1 + 4);
    v15 = *(a1 + 5);
    v36 = *(a1 + 1);
    v37 = v15;
    v16 = *(a1 + 48);
    if (sub_1B04520BC(v36, *(a2 + 16)))
    {
      v32 = v16;
      v34 = v5;
      v17 = *(a3 + 48);
      v33 = *(a3 + 64);
      v19 = *a2;
      v18 = *(a2 + 8);
      sub_1B03B2000(v14, v13);
      sub_1B03B2000(v14, v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v18) = sub_1B0AB6F5C(v14, v13, v19, v18, v17);

      sub_1B0391D50(v14, v13);
      if ((v18 & 1) == 0)
      {
        *a5 = v35;
        *(a5 + 8) = v14;
        v30 = v37;
        *(a5 + 16) = v13;
        *(a5 + 24) = v30;
        *(a5 + 32) = v32;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return;
      }

      sub_1B03B1BD0(v38, v12, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B2000(v14, v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = sub_1B0E43988();
      v21 = sub_1B0E458E8();

      sub_1B0391D50(v14, v13);

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        LODWORD(v38) = v21;
        v24 = v23;
        v39 = v23;
        *v22 = 68158210;
        *(v22 + 4) = 2;
        *(v22 + 8) = 256;
        v25 = v12[*(v10 + 20)];
        sub_1B03B1DC0(v12, type metadata accessor for State.Logger);
        *(v22 + 10) = v25;
        *(v22 + 11) = 2080;
        v26 = OpaquePersistedMessageIdentifier.description.getter(v14, v13);
        v28 = v27;
        sub_1B0391D50(v14, v13);
        v29 = sub_1B0399D64(v26, v28, &v39);

        *(v22 + 13) = v29;
        _os_log_impl(&dword_1B0389000, v20, v38, "[%.*hhx] Skipping download request for %s. Did previously not request any sections.", v22, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x1B272C230](v24, -1, -1);
        MEMORY[0x1B272C230](v22, -1, -1);
      }

      else
      {
        sub_1B03B1DC0(v12, type metadata accessor for State.Logger);
        sub_1B0391D50(v14, v13);
      }
    }
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  *(a5 + 32) = 0;
}

void sub_1B0B2A30C(char **a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *a1;
  v15 = *(*a1 + 2);
  if (v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = &v14[176 * v16 + 32];
      if ((*(v17 + 24) | (*(v17 + 24) << 32)) == (a3 | (a3 << 32)))
      {
        v18 = *(v17 + 16);
        v19 = *(v18 + 16);
        if (v19 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v16 == v15)
      {
        return;
      }
    }

    if (v19)
    {
      v20 = v18 == a2;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
LABEL_14:
      v23 = *(v17 + 96);
      if (!v23)
      {
        return;
      }

      v24 = v23 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v25 = _s13SelectedStateV7WrappedVMa(0);
      sub_1B03B1BD0(v24 + *(v25 + 20), v10, type metadata accessor for MailboxSyncState);
      v26 = sub_1B0B37C3C(v10, v13, type metadata accessor for MailboxSyncState);
      MEMORY[0x1EEE9AC00](v26);
      *(&v29 - 2) = a4;
      sub_1B0B3E814(sub_1B0B37C20, (&v29 - 4), v27);
      v10 = sub_1B03D74A0(v28);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }
    }

    else
    {
      v21 = (v18 + 32);
      v22 = (a2 + 32);
      while (v19)
      {
        if (*v21 != *v22)
        {
          goto LABEL_3;
        }

        ++v21;
        ++v22;
        if (!--v19)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v14 = sub_1B03D0E54(v14);
LABEL_16:
    if (v16 >= *(v14 + 2))
    {
      __break(1u);
    }

    else
    {
      sub_1B0B13B6C(v10);

      sub_1B03B1DC0(v13, type metadata accessor for MailboxSyncState);
      *a1 = v14;
    }
  }
}

uint64_t sub_1B0B2A59C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = MessageIdentifierSet.contains(_:)(&v7, v5);
  if (result)
  {
    result = sub_1B03B2000(v3, v4);
  }

  else
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B0B2A624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v40 - v6;
  sub_1B03B5C80(a2, &v40 - v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = MessageIdentifierSet.startIndex.getter(v8);
  v11 = v10;
  if (v9 == MessageIdentifierSet.endIndex.getter(v8) && v11 == v12)
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
    v41 = a3;
    do
    {
      do
      {
        while (1)
        {
          MessageIdentifierSet.subscript.getter(v11, v8, &v44);
          v15 = v44;
          MessageIdentifierSet.index(_:offsetBy:)(v9, v11, 1);
          v9 = v16;
          v11 = v17;
          v18 = *(a1 + 96);
          if (!v18)
          {
            break;
          }

          v19 = v18 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v20 = v19 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
          result = type metadata accessor for MailboxSyncState(0);
          v22 = 0;
          v23 = *(v20 + *(result + 56));
          v24 = 1 << *(v23 + 32);
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          else
          {
            v25 = -1;
          }

          v26 = v25 & *(v23 + 64);
          v27 = (v24 + 63) >> 6;
          do
          {
            if (!v26)
            {
              while (1)
              {
                v28 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  break;
                }

                if (v28 >= v27)
                {
                  goto LABEL_6;
                }

                v26 = *(v23 + 64 + 8 * v28);
                ++v22;
                if (v26)
                {
                  v22 = v28;
                  goto LABEL_19;
                }
              }

              __break(1u);
              return result;
            }

            v28 = v22;
LABEL_19:
            v29 = __clz(__rbit64(v26));
            v26 &= v26 - 1;
            v30 = v29 | (v28 << 6);
          }

          while (v15 != *(*(v23 + 56) + 24 * v30));
          v31 = (*(v23 + 48) + 16 * v30);
          v33 = *v31;
          v32 = v31[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v33, v32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_1B0B006F4(0, *(v43 + 2) + 1, 1, v43);
          }

          v35 = *(v43 + 2);
          v34 = *(v43 + 3);
          if (v35 >= v34 >> 1)
          {
            v43 = sub_1B0B006F4((v34 > 1), v35 + 1, 1, v43);
          }

          v36 = v43;
          *(v43 + 2) = v35 + 1;
          v37 = &v36[16 * v35];
          *(v37 + 4) = v33;
          *(v37 + 5) = v32;
          v38 = MessageIdentifierSet.endIndex.getter(v8);
          a3 = v41;
          if (v9 == v38)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        ;
      }

      while (v9 != MessageIdentifierSet.endIndex.getter(v8));
LABEL_7:
      ;
    }

    while (v11 != v14);
  }

  v39 = &v7[*(v42 + 36)];
  *v39 = v9;
  v39[1] = v11;
  result = sub_1B0398EFC(v7, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  *a3 = v43;
  return result;
}

uint64_t sub_1B0B2A948(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v6 = (v1 + 8);
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (*(v1 + 24))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_10;
    }

    for (i = *(v4 + 16); i; i = *(v8 + 2))
    {
      v10 = 0;
      v11 = v8 + 168;
      while (v10 < i)
      {
        sub_1B0B929D0(a1);
        ++v10;
        i = *(v8 + 2);
        v11 += 176;
        if (v10 == i)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      v8 = sub_1B03D0E54(v4);
    }

LABEL_7:
    result = sub_1B03BB638(v4, v5, v7, 1);
    *v2 = v8;
    *v6 = 0;
    v6[1] = 0;
    *(v2 + 24) = 1;
  }

  else
  {
    v15 = *v1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = sub_1B0B8FDDC(a1);
    sub_1B0B36244(v13, v14);
    result = sub_1B03BB638(v4, v5, v7, 0);
    *v1 = v15;
    *(v1 + 8) = v5;
    *(v1 + 16) = v7;
    *(v1 + 24) = 0;
  }

  return result;
}

char **sub_1B0B2AA88(char **result)
{
  v1 = *result;
  v2 = *(*result + 2);
  if (v2)
  {
    v3 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v1 = sub_1B03D0E54(v1);
    }

    v4 = 0;
    v5 = 168;
    v6 = MEMORY[0x1E69E7CD0];
    do
    {
      if (v4 >= *(v1 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      ++v4;

      *&v1[v5] = v6;
      v5 += 176;
    }

    while (v2 != v4);
    *v3 = v1;
  }

  return result;
}

void sub_1B0B2AB20(char **a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(char *))
{
  v10 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;
  v15 = *(*a1 + 2);
  if (v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = &v14[176 * v16 + 32];
      if (*(v17 + 1) == a3)
      {
        v18 = *v17;
        v19 = *(*v17 + 16);
        if (v19 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v16 == v15)
      {
        return;
      }
    }

    if (v19)
    {
      v20 = v18 == a2;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
LABEL_14:
      a3 = *(v17 + 12);
      if (!a3)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v23 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1B03B1BD0(a3 + v24, v13, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v25 = swift_allocObject();
        sub_1B0B37C3C(v13, v25 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a3 = v25;
      }

      v26 = (a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      v27 = *(v23 + 20);
      v28 = type metadata accessor for MailboxSyncState(0);
      a5(&v26[v27 + *(v28 + 52)]);
      swift_endAccess();
      if (v16 < *(v14 + 2))
      {
        v29 = *(v17 + 12);
        if (!v29 || (v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v29 + v30) != *v26))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v21 = (v18 + 32);
      v22 = (a2 + 32);
      while (v19)
      {
        if (*v21 != *v22)
        {
          goto LABEL_3;
        }

        ++v21;
        ++v22;
        if (!--v19)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v14 = sub_1B03D0E54(v14);
LABEL_21:
    if (v16 < *(v14 + 2))
    {
      *&v14[176 * v16 + 128] = a3;

LABEL_28:
      *a1 = v14;
      return;
    }

    __break(1u);
LABEL_34:
    v14 = sub_1B03D0E54(v14);
LABEL_26:
    if (v16 >= *(v14 + 2))
    {
      __break(1u);
      return;
    }

    v31 = &v14[176 * v16];
    sub_1B03B00C8(MEMORY[0x1E69E7CD0]);
    Set<>.formNonEmpty()();
    *(v31 + 34) = 0;
    v31[140] = 1;
    goto LABEL_28;
  }
}

void sub_1B0B2AE44(char **a1, uint64_t a2, unsigned int a3, char a4)
{
  v8 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  v13 = *(*a1 + 2);
  if (v13)
  {
    v14 = 0;
    v15 = a3 | (a3 << 32);
    while (1)
    {
      v16 = &v12[176 * v14 + 32];
      if ((*(v16 + 24) | (*(v16 + 24) << 32)) == v15)
      {
        v17 = *(v16 + 16);
        v18 = *(v17 + 16);
        if (v18 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v14 == v13)
      {
        return;
      }
    }

    if (v18)
    {
      v19 = v17 == a2;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
LABEL_14:
      a2 = *(v16 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v22 = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1B03B1BD0(a2 + v23, v11, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v24 = swift_allocObject();
        sub_1B0B37C3C(v11, v24 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v24;
      }

      v25 = (a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      sub_1B0A96304(v25 + *(v22 + 20));
      swift_endAccess();
      if (v14 < *(v12 + 2))
      {
        v26 = *(v16 + 96);
        if (!v26 || (v27 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v26 + v27) != *v25))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v20 = (v17 + 32);
      v21 = (a2 + 32);
      while (v18)
      {
        if (*v20 != *v21)
        {
          goto LABEL_3;
        }

        ++v20;
        ++v21;
        if (!--v18)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v12 = sub_1B03D0E54(v12);
LABEL_21:
    if (v14 < *(v12 + 2))
    {
      *&v12[176 * v14 + 128] = a2;

LABEL_28:
      *a1 = v12;
      return;
    }

    __break(1u);
LABEL_34:
    v12 = sub_1B03D0E54(v12);
LABEL_26:
    if (v14 >= *(v12 + 2))
    {
      __break(1u);
      return;
    }

    v28 = &v12[176 * v14];
    sub_1B03B00C8(MEMORY[0x1E69E7CD0]);
    Set<>.formNonEmpty()();
    *(v28 + 34) = 0;
    v28[140] = 1;
    goto LABEL_28;
  }
}

void sub_1B0B2B14C(char **a1, uint64_t a2, unsigned int a3, char a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7)
{
  v14 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(*a1 + 2);
  if (v19)
  {
    v20 = 0;
    v21 = a3 | (a3 << 32);
    while (1)
    {
      v22 = &v18[176 * v20 + 32];
      if ((*(v22 + 24) | (*(v22 + 24) << 32)) == v21)
      {
        v23 = *(v22 + 16);
        v24 = *(v23 + 16);
        if (v24 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v20 == v19)
      {
        return;
      }
    }

    if (v24)
    {
      v25 = v23 == a2;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
LABEL_14:
      a2 = *(v22 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v36[1] = a6;
      v28 = v15;

      v29 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1B03B1BD0(a2 + v30, v17, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v31 = swift_allocObject();
        sub_1B0B37C3C(v17, v31 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v31;
        v29 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
      }

      v32 = (a2 + v29[81]);
      swift_beginAccess();
      a5(&v32[*(v28 + 20)], a7 & 0x101010101FFFF01);
      swift_endAccess();
      if (v20 < *(v18 + 2))
      {
        v33 = *(v22 + 96);
        if (!v33 || (v34 = v29[81], swift_beginAccess(), *(v33 + v34) != *v32))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v26 = (v23 + 32);
      v27 = (a2 + 32);
      while (v24)
      {
        if (*v26 != *v27)
        {
          goto LABEL_3;
        }

        ++v26;
        ++v27;
        if (!--v24)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v18 = sub_1B03D0E54(v18);
LABEL_21:
    if (v20 < *(v18 + 2))
    {
      *&v18[176 * v20 + 128] = a2;

LABEL_28:
      *a1 = v18;
      return;
    }

    __break(1u);
LABEL_34:
    v18 = sub_1B03D0E54(v18);
LABEL_26:
    if (v20 >= *(v18 + 2))
    {
      __break(1u);
      return;
    }

    v35 = &v18[176 * v20];
    sub_1B03B00C8(MEMORY[0x1E69E7CD0]);
    Set<>.formNonEmpty()();
    *(v35 + 34) = 0;
    v35[140] = 1;
    goto LABEL_28;
  }
}

void sub_1B0B2B484(char **a1, uint64_t a2, unsigned int a3, char a4, void (*a5)(char *))
{
  v10 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;
  v15 = *(*a1 + 2);
  if (v15)
  {
    v16 = 0;
    v17 = a3 | (a3 << 32);
    while (1)
    {
      v18 = &v14[176 * v16 + 32];
      if ((*(v18 + 24) | (*(v18 + 24) << 32)) == v17)
      {
        v19 = *(v18 + 16);
        v20 = *(v19 + 16);
        if (v20 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v16 == v15)
      {
        return;
      }
    }

    if (v20)
    {
      v21 = v19 == a2;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
LABEL_14:
      a2 = *(v18 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v24 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1B03B1BD0(a2 + v25, v13, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v26 = swift_allocObject();
        sub_1B0B37C3C(v13, v26 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v26;
      }

      v27 = (a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      v28 = *(v24 + 20);
      v29 = type metadata accessor for MailboxSyncState(0);
      a5(&v27[v28 + *(v29 + 52)]);
      swift_endAccess();
      if (v16 < *(v14 + 2))
      {
        v30 = *(v18 + 96);
        if (!v30 || (v31 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v30 + v31) != *v27))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v22 = (v19 + 32);
      v23 = (a2 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_3;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v14 = sub_1B03D0E54(v14);
LABEL_21:
    if (v16 < *(v14 + 2))
    {
      *&v14[176 * v16 + 128] = a2;

LABEL_28:
      *a1 = v14;
      return;
    }

    __break(1u);
LABEL_34:
    v14 = sub_1B03D0E54(v14);
LABEL_26:
    if (v16 >= *(v14 + 2))
    {
      __break(1u);
      return;
    }

    v32 = &v14[176 * v16];
    sub_1B03B00C8(MEMORY[0x1E69E7CD0]);
    Set<>.formNonEmpty()();
    *(v32 + 34) = 0;
    v32[140] = 1;
    goto LABEL_28;
  }
}

void sub_1B0B2B7B4(char **a1, uint64_t a2, unsigned int a3, char a4)
{
  v8 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(*a1 + 2);
  if (v12)
  {
    v13 = 0;
    v14 = a3 | (a3 << 32);
    while (1)
    {
      v15 = &v11[176 * v13 + 32];
      if ((*(v15 + 24) | (*(v15 + 24) << 32)) == v14)
      {
        v16 = *(v15 + 16);
        v17 = *(v16 + 16);
        if (v17 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v13 == v12)
      {
        return;
      }
    }

    if (v17)
    {
      v18 = v16 == a2;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
LABEL_14:
      a2 = *(v15 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1B03B1BD0(a2 + v21, v10, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v22 = swift_allocObject();
        sub_1B0B37C3C(v10, v22 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v22;
      }

      v23 = (a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      sub_1B03BDE74(8u);
      sub_1B03BDD7C(&v28, 8);
      swift_endAccess();
      if (v13 < *(v11 + 2))
      {
        v24 = *(v15 + 96);
        if (!v24 || (v25 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v24 + v25) != *v23))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v19 = (v16 + 32);
      v20 = (a2 + 32);
      while (v17)
      {
        if (*v19 != *v20)
        {
          goto LABEL_3;
        }

        ++v19;
        ++v20;
        if (!--v17)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v11 = sub_1B03D0E54(v11);
LABEL_21:
    if (v13 < *(v11 + 2))
    {
      *&v11[176 * v13 + 128] = a2;

LABEL_28:
      *a1 = v11;
      return;
    }

    __break(1u);
LABEL_34:
    v11 = sub_1B03D0E54(v11);
LABEL_26:
    if (v13 >= *(v11 + 2))
    {
      __break(1u);
      return;
    }

    v26 = &v11[176 * v13];
    sub_1B03B00C8(MEMORY[0x1E69E7CD0]);
    Set<>.formNonEmpty()();
    *(v26 + 34) = 0;
    v26[140] = 1;
    goto LABEL_28;
  }
}

void sub_1B0B2BAD4(char **a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = *(*a1 + 2);
  if (v16)
  {
    v17 = 0;
    v18 = a3 | (a3 << 32);
    while (1)
    {
      v19 = &v15[176 * v17 + 32];
      if ((*(v19 + 24) | (*(v19 + 24) << 32)) == v18)
      {
        v20 = *(v19 + 16);
        v21 = *(v20 + 16);
        if (v21 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v17 == v16)
      {
        return;
      }
    }

    if (v21)
    {
      v22 = v20 == a2;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
LABEL_14:
      a2 = *(v19 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v25 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1B03B1BD0(a2 + v26, v14, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v27 = swift_allocObject();
        sub_1B0B37C3C(v14, v27 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v27;
        v25 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
      }

      v28 = (a2 + v25[81]);
      swift_beginAccess();
      sub_1B0B3AE00(a5 & 0x101010101FFFF01, a6 & 0x101010101FFFF01);
      swift_endAccess();
      if (v17 < *(v15 + 2))
      {
        v29 = *(v19 + 96);
        if (!v29 || (v30 = v25[81], swift_beginAccess(), *(v29 + v30) != *v28))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v23 = (v20 + 32);
      v24 = (a2 + 32);
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_3;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v15 = sub_1B03D0E54(v15);
LABEL_21:
    if (v17 < *(v15 + 2))
    {
      *&v15[176 * v17 + 128] = a2;

LABEL_28:
      *a1 = v15;
      return;
    }

    __break(1u);
LABEL_34:
    v15 = sub_1B03D0E54(v15);
LABEL_26:
    if (v17 >= *(v15 + 2))
    {
      __break(1u);
      return;
    }

    v31 = &v15[176 * v17];
    sub_1B03B00C8(MEMORY[0x1E69E7CD0]);
    Set<>.formNonEmpty()();
    *(v31 + 34) = 0;
    v31[140] = 1;
    goto LABEL_28;
  }
}

void sub_1B0B2BE00(char **a1, uint64_t a2, unsigned int a3, char a4, void (*a5)(char *))
{
  v10 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;
  v15 = *(*a1 + 2);
  if (v15)
  {
    v16 = 0;
    v17 = a3 | (a3 << 32);
    while (1)
    {
      v18 = &v14[176 * v16 + 32];
      if ((*(v18 + 24) | (*(v18 + 24) << 32)) == v17)
      {
        v19 = *(v18 + 16);
        v20 = *(v19 + 16);
        if (v20 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v16 == v15)
      {
        return;
      }
    }

    if (v20)
    {
      v21 = v19 == a2;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
LABEL_14:
      a2 = *(v18 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v24 = v11;

      v25 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1B03B1BD0(a2 + v26, v13, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v27 = swift_allocObject();
        sub_1B0B37C3C(v13, v27 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v27;
        v25 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
      }

      v28 = (a2 + v25[81]);
      swift_beginAccess();
      a5(&v28[*(v24 + 20)]);
      swift_endAccess();
      if (v16 < *(v14 + 2))
      {
        v29 = *(v18 + 96);
        if (!v29 || (v30 = v25[81], swift_beginAccess(), *(v29 + v30) != *v28))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v22 = (v19 + 32);
      v23 = (a2 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_3;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v14 = sub_1B03D0E54(v14);
LABEL_21:
    if (v16 < *(v14 + 2))
    {
      *&v14[176 * v16 + 128] = a2;

LABEL_28:
      *a1 = v14;
      return;
    }

    __break(1u);
LABEL_34:
    v14 = sub_1B03D0E54(v14);
LABEL_26:
    if (v16 >= *(v14 + 2))
    {
      __break(1u);
      return;
    }

    v31 = &v14[176 * v16];
    sub_1B03B00C8(MEMORY[0x1E69E7CD0]);
    Set<>.formNonEmpty()();
    *(v31 + 34) = 0;
    v31[140] = 1;
    goto LABEL_28;
  }
}

uint64_t sub_1B0B2C120(uint64_t result, char a2, uint64_t a3, unsigned int a4)
{
  if (*(v4 + 24) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(*v4 + 16);
    if (!v9)
    {
LABEL_18:
      *v4 = v7;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 1;
      return result;
    }

    v10 = 0;
    v11 = *(v4 + 16);
    while (1)
    {
      v12 = v7 + 32 + 176 * v10;
      if ((*(v12 + 24) | (*(v12 + 24) << 32)) == (a4 | (a4 << 32)))
      {
        v13 = *(v12 + 16);
        v14 = *(v13 + 16);
        if (v14 == *(a3 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v10 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v15 = v13 == a3;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_15:
      v6 = result;
      v5 = a2;
      sub_1B03B9A2C(*v4, *(v4 + 8), *(v4 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if (result)
      {
LABEL_16:
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = v18 + 176 * v10;
        *(v19 + 88) = v6;
        *(v19 + 96) = v5 & 1;
        result = sub_1B03BB638(v7, v8, v11, 1);
        v7 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (a3 + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_4;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_1B03D0E54(v7);
    v18 = result;
    goto LABEL_16;
  }

  return result;
}

void sub_1B0B2C294(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v220 = a7;
  v203 = a4;
  v204 = a6;
  v202 = a5;
  v205 = a3;
  v216 = a2;
  v218 = a1;
  v207 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v207);
  v206 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1B0E439A8();
  v210 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v215 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v212 = (&v191 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v208 = &v191 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v209 = &v191 - v14;
  v217 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v217);
  v16 = &v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v191 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v191 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v191 - v24;
  v26 = _s12LocalMailboxV6LoggerVMa(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v191 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v191 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v191 - v36);
  v38 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  v44 = (&v191 - v43);
  if (v42 >> 62)
  {
    if (v42 >> 62 == 1)
    {
      v45 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v46 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1B0390664(v45, v46);
      sub_1B039868C(v45, v46, v220);

      sub_1B0390678(v45, v46);
    }

    return;
  }

  v47 = v19;
  v196 = v22;
  v197 = v25;
  v200 = v28;
  v201 = v16;
  v194 = v37;
  v195 = v31;
  v48 = v212;
  v193 = v34;
  v211 = v26;
  LODWORD(v213) = *(v42 + 16);
  v49 = *(v42 + 24);
  LODWORD(v31) = *(v42 + 32);
  v50 = *(v42 + 48);
  v198 = *(v42 + 40);
  v199 = v49;
  v51 = v49 >> 60;
  if ((v49 >> 60) <= 3)
  {
    if (v51 <= 1)
    {
      v92 = v216;
      if (!v51)
      {
        return;
      }

LABEL_45:
      v150 = *v214;
      v151 = (v214 + 8);
      v152 = *(v214 + 8);
      v153 = *(v214 + 16);
      if ((*(v214 + 24) & 1) == 0)
      {
LABEL_53:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v174 = v199;
        sub_1B044CD04(v199);
        sub_1B03B9A2C(v150, v152, v153, 0);

        goto LABEL_57;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B044CD04(v199);
      sub_1B03B9A2C(v150, v152, v153, 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = v150;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v155 = sub_1B03D0E54(v150);
      }

      v156 = v155[2];
      v157 = v215;
      v158 = v201;
      v218 = v155;
      if (v156)
      {
        v206 = v153;
        v207 = v152;
        v208 = v150;
        v209 = v151;
        v192 = v50;
        v159 = 0;
        v243 = 0u;
        memset(v244, 0, 27);
        v241 = 0u;
        v242 = 0u;
        v160 = (v155 + 4);
        v216 = v210 + 16;
        v212 = (v210 + 32);
        v153 = v219;
        while (1)
        {
          sub_1B03B1BD0(v220, v158, type metadata accessor for State.Logger);
          v162 = v160[1];
          v161 = v160[2];
          v230 = *v160;
          v231 = v162;
          v232 = v161;
          v163 = v160[6];
          v165 = v160[3];
          v164 = v160[4];
          v235 = v160[5];
          v236 = v163;
          v233 = v165;
          v234 = v164;
          v166 = v160[10];
          v168 = v160[7];
          v167 = v160[8];
          v239 = v160[9];
          v240 = v166;
          v237 = v168;
          v238 = v167;
          (*v216)(v157, v158, v153);
          v152 = *(v158 + *(v217 + 20));
          sub_1B03A35B8(&v230, &v225);
          sub_1B03B1DC0(v158, type metadata accessor for State.Logger);
          v169 = v231;
          v170 = WORD6(v240);
          v150 = DWORD2(v231);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03A3614(&v230);
          v171 = v200;
          (*v212)();
          v172 = v171 + *(v211 + 20);
          *v172 = v152;
          *(v172 + 1) = v170;
          *(v172 + 1) = v169;
          *(v172 + 4) = v150;
          sub_1B0B12E34(&v241, v213, v92, v171);
          sub_1B03B1DC0(v171, _s12LocalMailboxV6LoggerVMa);
          ++v159;
          v173 = v218[2];
          if (v159 == v173)
          {
            break;
          }

          v160 += 11;
          v157 = v215;
          v158 = v201;
          if (v159 >= v173)
          {
            __break(1u);
            goto LABEL_53;
          }
        }

        sub_1B03BB638(v208, v207, v206, 1);
        sub_1B044CEF8(v199);

        v95 = v214;
        v151 = v209;
      }

      else
      {
        sub_1B03BB638(v150, v152, v153, 1);
        sub_1B044CEF8(v199);

        v95 = v214;
      }

      *v95 = v218;
      *v151 = 0;
      *(v151 + 1) = 0;
LABEL_69:
      *(v95 + 24) = 1;
      return;
    }

    if (v51 == 2)
    {
      v93 = v199;
      v94 = *((v199 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v222 = *((v199 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v223 = v94;
      v224[0] = *((v199 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      *(v224 + 11) = *((v199 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
      v221 = *((v199 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v95 = v214;
      v96 = *v214;
      v97 = *(v214 + 8);
      v98 = *(v214 + 16);
      if (*(v214 + 24))
      {
        v207 = v214 + 8;
        v215 = v47;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B044CD04(v93);
        sub_1B0B37A20(&v221, &v230);
        v208 = v98;
        sub_1B03B9A2C(v96, v97, v98, 1);
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v96;
        if ((v99 & 1) == 0)
        {
          v100 = sub_1B03D0E54(v96);
        }

        v101 = v100[2];
        v102 = v217;
        v218 = v100;
        if (v101)
        {
          v103 = v48;
          v205 = v97;
          v206 = v96;
          v192 = v50;
          v104 = 0;
          v243 = v223;
          v244[0] = v224[0];
          *(v244 + 11) = *(v224 + 11);
          v241 = v221;
          v242 = v222;
          v31 = v100 + 4;
          v209 = (v210 + 16);
          v210 += 32;
          v105 = v195;
          while (1)
          {
            v106 = v215;
            sub_1B03B1BD0(v220, v215, type metadata accessor for State.Logger);
            v108 = v31[1];
            v107 = v31[2];
            v230 = *v31;
            v231 = v108;
            v232 = v107;
            v109 = v31[6];
            v111 = v31[3];
            v110 = v31[4];
            v235 = v31[5];
            v236 = v109;
            v233 = v111;
            v234 = v110;
            v112 = v31[10];
            v114 = v31[7];
            v113 = v31[8];
            v239 = v31[9];
            v240 = v112;
            v237 = v114;
            v238 = v113;
            v115 = v219;
            (*v209)(v103, v106, v219);
            v116 = *(v106 + *(v102 + 20));
            sub_1B03A35B8(&v230, &v225);
            sub_1B03B1DC0(v106, type metadata accessor for State.Logger);
            v50 = v231;
            LOWORD(v106) = WORD6(v240);
            v117 = DWORD2(v231);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03A3614(&v230);
            (*v210)(v105, v103, v115);
            v118 = v105 + *(v211 + 20);
            *v118 = v116;
            *(v118 + 1) = v106;
            *(v118 + 1) = v50;
            *(v118 + 4) = v117;
            sub_1B0B12E34(&v241, v213, v216, v105);
            v40 = sub_1B03B1DC0(v105, _s12LocalMailboxV6LoggerVMa);
            ++v104;
            v119 = v218[2];
            if (v104 == v119)
            {
              break;
            }

            v31 += 11;
            v102 = v217;
            if (v104 >= v119)
            {
              __break(1u);
              goto LABEL_33;
            }
          }

          sub_1B0B37A7C(&v221);
          sub_1B03BB638(v206, v205, v208, 1);
          v95 = v214;
          v93 = v199;
        }

        else
        {
          sub_1B0B37A7C(&v221);
          sub_1B03BB638(v96, v97, v208, 1);
        }

        sub_1B044CEF8(v93);

        *v95 = v218;
        v175 = v207;
        *v207 = 0;
        *(v175 + 8) = 0;
        goto LABEL_69;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B044CD04(v93);
      sub_1B0B37A20(&v221, &v230);
      sub_1B03B9A2C(v96, v97, v98, 0);

      sub_1B0B37A7C(&v221);
      sub_1B044CEF8(v93);

LABEL_83:

      return;
    }

LABEL_33:
    v212 = v40;
    v215 = v41;
    v192 = v50;
    v120 = v199;
    v121 = v44;
    v122 = swift_projectBox();
    v218 = v121;
    sub_1B03B1BD0(v122, v121, type metadata accessor for UntaggedResponse);
    v61 = v214;
    v60 = *v214;
    v58 = (v214 + 8);
    v123 = *(v214 + 8);
    v124 = *(v214 + 16);
    if ((*(v214 + 24) & 1) == 0)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B044CD04(v120);
      sub_1B03B9A2C(v60, v123, v124, 0);

LABEL_79:
      v184 = v215;
      sub_1B03B1BD0(v218, v215, type metadata accessor for UntaggedResponse);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v185 = *v184;
        v186 = *(v184 + 8);
        v187 = *(v184 + 96);
        v234 = *(v184 + 80);
        v235 = v187;
        v188 = *(v184 + 128);
        v236 = *(v184 + 112);
        v237 = v188;
        v189 = *(v184 + 32);
        v230 = *(v184 + 16);
        v231 = v189;
        v190 = *(v184 + 64);
        v232 = *(v184 + 48);
        v233 = v190;
        sub_1B0B379C4(&v230, &v225);
        sub_1B0B36750(v185, v186, v61, &v230);
        sub_1B0B11B9C(&v230);
        sub_1B0B11B9C(&v230);
      }

      else
      {
        sub_1B03B1DC0(v184, type metadata accessor for UntaggedResponse);
      }

      sub_1B03B1DC0(v218, type metadata accessor for UntaggedResponse);
      sub_1B044CEF8(v120);

      goto LABEL_83;
    }

    LODWORD(v201) = v31;
    v125 = v60[2];
    if (!v125)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_71:
      sub_1B044CD04(v120);
LABEL_78:
      *v61 = v60;
      *v58 = 0;
      v58[1] = 0;
      *(v61 + 24) = 1;
      goto LABEL_79;
    }

    v200 = v124;
    v208 = v123;
    v66 = 0;
    v53 = 128;
    v54 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
    while (1)
    {
      v126 = *(v60 + v53);
      if (v126)
      {
        v127 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        if (*(v126 + v127) == v213)
        {
          break;
        }
      }

      ++v66;
      v53 += 176;
      if (v125 == v66)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v120 = v199;
        goto LABEL_71;
      }
    }

    v128 = v197;
    sub_1B03B1BD0(v220, v197, type metadata accessor for State.Logger);
    v59 = v60 + v53;
    v130 = *(v60 + v53 - 80);
    v129 = *(v60 + v53 - 64);
    v230 = *(v60 + v53 - 96);
    v231 = v130;
    v232 = v129;
    v131 = *(v60 + v53);
    v133 = *(v60 + v53 - 48);
    v132 = *(v60 + v53 - 32);
    v235 = *(v60 + v53 - 16);
    v236 = v131;
    v233 = v133;
    v234 = v132;
    v134 = *(v60 + v53 + 64);
    v136 = *(v60 + v53 + 16);
    v135 = *(v60 + v53 + 32);
    v239 = *(v60 + v53 + 48);
    v240 = v134;
    v237 = v136;
    v238 = v135;
    LODWORD(v220) = HIDWORD(v134);
    v137 = v210;
    (*(v210 + 16))(v209, v128, v219);
    LODWORD(v217) = *(v128 + *(v217 + 20));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B044CD04(v199);
    sub_1B03B9A2C(v60, v208, v200, 1);
    v196 = v126;

    sub_1B03A35B8(&v230, &v225);
    sub_1B03B1DC0(v128, type metadata accessor for State.Logger);
    v138 = v231;
    LODWORD(v213) = DWORD2(v231);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A3614(&v230);
    v76 = v194;
    (*(v137 + 32))(v194, v209, v219);
    v139 = v76 + *(v211 + 20);
    *v139 = v217;
    *(v139 + 1) = v220;
    *(v139 + 1) = v138;
    *(v139 + 4) = v213;
    v213 = v60;
    if (v66 >= v60[2])
    {
      __break(1u);
LABEL_86:
      __break(1u);
    }

    else
    {
      v140 = *(v59 - 96);
      v141 = *(v59 - 80);
      v219 = *(v59 - 24);
      v220 = v141;
      LODWORD(v217) = *(v59 - 16);
      v142 = v204;
      v143 = v205;
      if (v204 && *(v204 + 16) && (v144 = sub_1B03AB888(v220, *(v59 - 72)), (v145 & 1) != 0))
      {
        v146 = *(v142 + 56) + 72 * v144;
        v221 = *v146;
        v148 = *(v146 + 32);
        v147 = *(v146 + 48);
        v149 = *(v146 + 64);
        v222 = *(v146 + 16);
        v223 = v148;
        LOWORD(v224[1]) = v149;
        v224[0] = v147;
        v242 = *(v146 + 16);
        v243 = *(v146 + 32);
        v244[0] = *(v146 + 48);
        LOWORD(v244[1]) = *(v146 + 64);
        v241 = *v146;
        sub_1B03BB0B4(&v221, &v225);
        v227 = v243;
        v228 = v244[0];
        v229 = v244[1];
        v225 = v241;
        v226 = v242;
      }

      else
      {
        v229 = 0;
        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
      }

      v176 = v203;
      v59 = v202;
      v243 = v227;
      v244[0] = v228;
      LOWORD(v244[1]) = v229;
      v241 = v225;
      v242 = v226;
      LODWORD(v211) = *(v216 + 3);
      v216 = v140;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07C9330(v219);
      v177 = WindowOfInterestSizes.subscript.getter(&v241, v143, v176);
      v179 = v178;
      sub_1B0398EFC(&v225, &qword_1EB6E4568, &qword_1B0EC55C0);
      v76 = v196;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v59 = v206;
        sub_1B03B1BD0(v76 + v180, v206, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v181 = swift_allocObject();
        sub_1B0B37C3C(v59, v181 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        v76 = v181;
      }

      swift_beginAccess();
      v54 = v194;
      sub_1B0B39958(v218, v201, v198, v192, v211, v177, v179 & 1, v194);
      swift_endAccess();

      sub_1B07C936C(v219);

      v60 = v213;
      v182 = v213;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_76;
      }
    }

    v182 = sub_1B03D0E54(v60);
LABEL_76:
    sub_1B03B1DC0(v54, _s12LocalMailboxV6LoggerVMa);

    v183 = v66 >= *(v182 + 2);
    v61 = v214;
    v120 = v199;
    if (v183)
    {
      __break(1u);
      goto LABEL_89;
    }

    *&v182[v53] = v76;

    sub_1B03BB638(v60, v208, v200, 1);
    v60 = v182;
    goto LABEL_78;
  }

  if ((v51 - 5) < 3)
  {
    return;
  }

  if (v51 != 4)
  {
    v92 = v216;
    if (v199 != 0x8000000000000000)
    {
      return;
    }

    goto LABEL_45;
  }

  v52 = v214;
  v53 = *v214;
  v54 = (v214 + 8);
  v55 = *(v214 + 8);
  v56 = *(v214 + 16);
  if (*(v214 + 24))
  {
    v57 = *(v53 + 16);
    if (!v57)
    {
      goto LABEL_66;
    }

    v216 = *(v214 + 16);
    v218 = v55;
    v192 = v50;
    v58 = 0;
    v59 = 128;
    v60 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
    while (1)
    {
      v61 = *(v53 + v59);
      if (v61)
      {
        v62 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v63 = *(v61 + v62);
        v64 = v219;
        if (v63 == v213)
        {
          break;
        }
      }

      v58 = (v58 + 1);
      v59 += 176;
      if (v57 == v58)
      {
        v52 = v214;
        goto LABEL_66;
      }
    }

    LODWORD(v201) = v31;
    v65 = v196;
    sub_1B03B1BD0(v220, v196, type metadata accessor for State.Logger);
    v66 = v53 + v59;
    v68 = *(v53 + v59 - 80);
    v67 = *(v53 + v59 - 64);
    v230 = *(v53 + v59 - 96);
    v231 = v68;
    v232 = v67;
    v69 = *(v53 + v59);
    v71 = *(v53 + v59 - 48);
    v70 = *(v53 + v59 - 32);
    v235 = *(v53 + v59 - 16);
    v236 = v69;
    v233 = v71;
    v234 = v70;
    v72 = *(v53 + v59 + 64);
    v74 = *(v53 + v59 + 16);
    v73 = *(v53 + v59 + 32);
    v239 = *(v53 + v59 + 48);
    v240 = v72;
    v237 = v74;
    v238 = v73;
    LODWORD(v220) = HIDWORD(v72);
    (*(v210 + 16))(v208, v65, v64);
    LODWORD(v217) = *(v65 + *(v217 + 20));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B044CD04(v199);
    sub_1B03B9A2C(v53, v218, v216, 1);

    sub_1B03A35B8(&v230, &v225);
    sub_1B03B1DC0(v65, type metadata accessor for State.Logger);
    v75 = v231;
    LODWORD(v215) = DWORD2(v231);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A3614(&v230);
    v76 = v193;
    (*(v210 + 32))();
    v77 = v76 + *(v211 + 20);
    *v77 = v217;
    *(v77 + 1) = v220;
    *(v77 + 1) = v75;
    *(v77 + 4) = v215;
    if (v58 >= *(v53 + 16))
    {
      goto LABEL_86;
    }

    v78 = *(v66 - 96);
    v79 = *(v66 - 80);
    v80 = *(v66 - 24);
    v81 = *(v66 - 16);
    v220 = v78;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v215 = v79;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v219 = v80;
    LODWORD(v217) = v81;
    sub_1B07C9330(v80);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v206;
    if ((v82 & 1) == 0)
    {
      v84 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      sub_1B03B1BD0(v61 + v84, v83, _s13SelectedStateV7WrappedVMa);
      _s13SelectedStateV8_StorageCMa(0);
      v85 = swift_allocObject();
      sub_1B0B37C3C(v83, v85 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      v61 = v85;
    }

    v86 = v61 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v87 = *(v207 + 20);
    v88 = v86 + v87 + *(type metadata accessor for MailboxSyncState(0) + 48);
    v89 = *(v88 + 24);
    v90 = *(v88 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
    (*(v90 + 56))(v201, v198, v192, v89, v90);
    swift_endAccess();

    sub_1B07C936C(v219);

    v91 = v53;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_19:
      sub_1B03B1DC0(v193, _s12LocalMailboxV6LoggerVMa);

      v52 = v214;
      if (v58 >= *(v91 + 2))
      {
        __break(1u);
        return;
      }

      *&v91[v59] = v61;

      sub_1B03BB638(v53, v218, v216, 1);
      sub_1B044CEF8(v199);

      v53 = v91;
LABEL_66:
      *v52 = v53;
      *v54 = 0;
      v54[1] = 0;
      *(v52 + 24) = 1;
      return;
    }

LABEL_89:
    v91 = sub_1B03D0E54(v53);
    goto LABEL_19;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v174 = v199;
  sub_1B044CD04(v199);
  sub_1B03B9A2C(v53, v55, v56, 0);

LABEL_57:

  sub_1B044CEF8(v174);
}