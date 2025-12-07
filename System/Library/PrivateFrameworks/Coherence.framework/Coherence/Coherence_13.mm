unint64_t sub_1ADED9F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB50;
  if (!qword_1EB5BAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB50);
  }

  return result;
}

unint64_t sub_1ADED9FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BAB58;
  if (!qword_1EB5BAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB58);
  }

  return result;
}

uint64_t sub_1ADEDA030(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 > 8)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_1ADEDA0C8(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1ADEDA0E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1ADEDA154(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t sub_1ADEDA180(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_1ADEDA27C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = -1;
  return result;
}

uint64_t sub_1ADEDA2A0(uint64_t a1, __int128 *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = *(a1 + 80);
  v12 = *(a1 + 112);
  v34[6] = *(a1 + 96);
  v34[7] = v12;
  v13 = *(a1 + 16);
  v14 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v14;
  v15 = *(a1 + 48);
  v16 = *(a1 + 80);
  v34[4] = *(a1 + 64);
  v34[5] = v16;
  v17 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v17;
  v18 = a2[4];
  *(&v34[13] + 8) = a2[5];
  v19 = a2[7];
  *(&v34[14] + 8) = a2[6];
  *(&v34[15] + 8) = v19;
  v20 = *a2;
  *(&v34[9] + 8) = a2[1];
  v21 = a2[3];
  *(&v34[10] + 8) = a2[2];
  *(&v34[11] + 8) = v21;
  *(&v34[12] + 8) = v18;
  *(&v34[8] + 8) = v20;
  v22 = *(a1 + 112);
  v44[6] = v34[6];
  v44[7] = v22;
  v44[2] = v34[2];
  v44[3] = v15;
  v44[4] = v34[4];
  v44[5] = v11;
  LOBYTE(v34[8]) = *(a1 + 128);
  BYTE8(v34[16]) = *(a2 + 128);
  v45 = *(a1 + 128);
  v44[0] = v34[0];
  v44[1] = v13;
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v44) == 1)
  {
    v33[6] = *(&v34[14] + 8);
    v33[7] = *(&v34[15] + 8);
    LOBYTE(v33[8]) = BYTE8(v34[16]);
    v33[2] = *(&v34[10] + 8);
    v33[3] = *(&v34[11] + 8);
    v33[4] = *(&v34[12] + 8);
    v33[5] = *(&v34[13] + 8);
    v33[0] = *(&v34[8] + 8);
    v33[1] = *(&v34[9] + 8);
    if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v33) == 1)
    {
      v41 = v34[6];
      v42 = v34[7];
      v43 = v34[8];
      v37 = v34[2];
      v38 = v34[3];
      v40 = v34[5];
      v39 = v34[4];
      v35 = v34[0];
      v36 = v34[1];
      sub_1ADEDA22C(a1, v31);
      sub_1ADEDA22C(a2, v31);
      sub_1ADDCEDE0(&v35, &qword_1EB5BABB0, &qword_1AE2463C8);
LABEL_8:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v23 = sub_1AE23CCBC();
      v25 = *(v5 + 8);
      v25(v7, v4);
      v25(v10, v4);
      return v23 & 1;
    }

    goto LABEL_5;
  }

  v31[6] = *(&v34[14] + 8);
  v31[7] = *(&v34[15] + 8);
  v32 = BYTE8(v34[16]);
  v31[2] = *(&v34[10] + 8);
  v31[3] = *(&v34[11] + 8);
  v31[4] = *(&v34[12] + 8);
  v31[5] = *(&v34[13] + 8);
  v31[0] = *(&v34[8] + 8);
  v31[1] = *(&v34[9] + 8);
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v31) == 1)
  {
LABEL_5:
    memcpy(v33, v34, 0x109uLL);
    sub_1ADEDA22C(a1, &v35);
    sub_1ADEDA22C(a2, &v35);
    sub_1ADDCEDE0(v33, &qword_1EB5BABA8, &qword_1AE2463C0);
    goto LABEL_6;
  }

  v27[6] = *(&v34[14] + 8);
  v27[7] = *(&v34[15] + 8);
  v28 = BYTE8(v34[16]);
  v27[2] = *(&v34[10] + 8);
  v27[3] = *(&v34[11] + 8);
  v27[4] = *(&v34[12] + 8);
  v27[5] = *(&v34[13] + 8);
  v27[0] = *(&v34[8] + 8);
  v27[1] = *(&v34[9] + 8);
  v33[6] = *(&v34[14] + 8);
  v33[7] = *(&v34[15] + 8);
  LOBYTE(v33[8]) = BYTE8(v34[16]);
  v33[2] = *(&v34[10] + 8);
  v33[3] = *(&v34[11] + 8);
  v33[4] = *(&v34[12] + 8);
  v33[5] = *(&v34[13] + 8);
  v33[0] = *(&v34[8] + 8);
  v33[1] = *(&v34[9] + 8);
  v41 = v34[6];
  v42 = v34[7];
  v43 = v34[8];
  v37 = v34[2];
  v38 = v34[3];
  v40 = v34[5];
  v39 = v34[4];
  v35 = v34[0];
  v36 = v34[1];
  sub_1ADEDA22C(a1, v29);
  sub_1ADEDA22C(a2, v29);
  v24 = sub_1ADEDA6E4(&v35, v33);
  sub_1ADDCEDE0(v27, &qword_1EB5BABB0, &qword_1AE2463C8);
  v29[6] = v34[6];
  v29[7] = v34[7];
  v30 = v34[8];
  v29[2] = v34[2];
  v29[3] = v34[3];
  v29[4] = v34[4];
  v29[5] = v34[5];
  v29[0] = v34[0];
  v29[1] = v34[1];
  sub_1ADDCEDE0(v29, &qword_1EB5BABB0, &qword_1AE2463C8);
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_6:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1ADEDA6E4(uint64_t a1, __int128 *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63 - v9;
  v11 = *(a1 + 112);
  v80[6] = *(a1 + 96);
  v80[7] = v11;
  v81 = *(a1 + 128);
  v12 = *(a1 + 48);
  v80[2] = *(a1 + 32);
  v80[3] = v12;
  v13 = *(a1 + 80);
  v80[4] = *(a1 + 64);
  v80[5] = v13;
  v14 = *(a1 + 16);
  v80[0] = *a1;
  v80[1] = v14;
  v15 = sub_1ADEDC4B4(v80);
  v16 = sub_1ADE1F544(v80);
  if (v15 <= 1)
  {
    if (v15)
    {
      v55 = *(v16 + 16);
      v82 = *v16;
      v83 = v55;
      *&v84 = *(v16 + 32);
      v56 = a2[7];
      v77 = a2[6];
      v78 = v56;
      v79 = *(a2 + 128);
      v57 = a2[3];
      v73 = a2[2];
      v74 = v57;
      v58 = a2[5];
      v75 = a2[4];
      v76 = v58;
      v59 = a2[1];
      v71 = *a2;
      v72 = v59;
      if (sub_1ADEDC4B4(&v71) == 1)
      {
LABEL_17:
        v60 = sub_1ADE1F544(&v71);
        v61 = *(v60 + 16);
        v63 = *v60;
        v64 = v61;
        *&v65 = *(v60 + 32);
        v38 = sub_1ADEDB84C(&v82, &v63);
        return v38 & 1;
      }
    }

    else
    {
      v25 = *(v16 + 80);
      v86 = *(v16 + 64);
      v87 = v25;
      v26 = *(v16 + 112);
      v88 = *(v16 + 96);
      v89 = v26;
      v27 = *(v16 + 16);
      v82 = *v16;
      v83 = v27;
      v28 = *(v16 + 48);
      v84 = *(v16 + 32);
      v85 = v28;
      v29 = a2[7];
      v77 = a2[6];
      v78 = v29;
      v79 = *(a2 + 128);
      v30 = a2[3];
      v73 = a2[2];
      v74 = v30;
      v31 = a2[5];
      v75 = a2[4];
      v76 = v31;
      v32 = a2[1];
      v71 = *a2;
      v72 = v32;
      if (!sub_1ADEDC4B4(&v71))
      {
LABEL_8:
        v33 = sub_1ADE1F544(&v71);
        v34 = v33[5];
        v67 = v33[4];
        v68 = v34;
        v35 = v33[7];
        v69 = v33[6];
        v70 = v35;
        v36 = v33[1];
        v63 = *v33;
        v64 = v36;
        v37 = v33[3];
        v65 = v33[2];
        v66 = v37;
        v38 = sub_1AE1B86E8(&v82, &v63);
        return v38 & 1;
      }
    }

LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (v15 == 2)
  {
    v39 = *(v16 + 16);
    v82 = *v16;
    v83 = v39;
    *&v84 = *(v16 + 32);
    v40 = a2[7];
    v77 = a2[6];
    v78 = v40;
    v79 = *(a2 + 128);
    v41 = a2[3];
    v73 = a2[2];
    v74 = v41;
    v42 = a2[5];
    v75 = a2[4];
    v76 = v42;
    v43 = a2[1];
    v71 = *a2;
    v72 = v43;
    if (sub_1ADEDC4B4(&v71) != 2)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v15 == 3)
  {
    v17 = *(v16 + 80);
    v86 = *(v16 + 64);
    v87 = v17;
    v18 = *(v16 + 112);
    v88 = *(v16 + 96);
    v89 = v18;
    v19 = *(v16 + 16);
    v82 = *v16;
    v83 = v19;
    v20 = *(v16 + 48);
    v84 = *(v16 + 32);
    v85 = v20;
    v21 = a2[7];
    v77 = a2[6];
    v78 = v21;
    v79 = *(a2 + 128);
    v22 = a2[3];
    v73 = a2[2];
    v74 = v22;
    v23 = a2[5];
    v75 = a2[4];
    v76 = v23;
    v24 = a2[1];
    v71 = *a2;
    v72 = v24;
    if (sub_1ADEDC4B4(&v71) != 3)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v44 = *v16;
  v45 = *(v16 + 8);
  v46 = *(v16 + 16);
  v47 = a2[7];
  v77 = a2[6];
  v78 = v47;
  v79 = *(a2 + 128);
  v48 = a2[3];
  v73 = a2[2];
  v74 = v48;
  v49 = a2[5];
  v75 = a2[4];
  v76 = v49;
  v50 = a2[1];
  v71 = *a2;
  v72 = v50;
  if (sub_1ADEDC4B4(&v71) != 4)
  {
    goto LABEL_18;
  }

  v51 = sub_1ADE1F544(&v71);
  v52 = v51[2];
  if (!sub_1ADDD6F8C(v44, v45, *v51, v51[1]))
  {
    goto LABEL_18;
  }

  if (v46 != v52)
  {
    goto LABEL_18;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v53 = sub_1AE23CCBC();
  v54 = *(v5 + 8);
  v54(v7, v4);
  v54(v10, v4);
  if ((v53 & 1) == 0)
  {
    goto LABEL_18;
  }

  v38 = 1;
  return v38 & 1;
}

uint64_t sub_1ADEDAAA0(_BOOL8 a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  v19 = sub_1ADDD6F8C(a1, a2, a4, a5);
  v20 = 0;
  if (v19 && a3 == a6)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v20 = sub_1AE23CCBC();
    v21 = *(v13 + 8);
    v21(v15, v12);
    v21(v18, v12);
  }

  return v20 & 1;
}

uint64_t sub_1ADEDAC10(uint64_t a1, __int128 *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = *(a1 + 80);
  v12 = *(a1 + 112);
  v34[6] = *(a1 + 96);
  v34[7] = v12;
  v13 = *(a1 + 16);
  v14 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v14;
  v15 = *(a1 + 48);
  v16 = *(a1 + 80);
  v34[4] = *(a1 + 64);
  v34[5] = v16;
  v17 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v17;
  v18 = a2[4];
  *(&v34[13] + 8) = a2[5];
  v19 = a2[7];
  *(&v34[14] + 8) = a2[6];
  *(&v34[15] + 8) = v19;
  v20 = *a2;
  *(&v34[9] + 8) = a2[1];
  v21 = a2[3];
  *(&v34[10] + 8) = a2[2];
  *(&v34[11] + 8) = v21;
  *(&v34[12] + 8) = v18;
  *(&v34[8] + 8) = v20;
  v22 = *(a1 + 112);
  v44[6] = v34[6];
  v44[7] = v22;
  v44[2] = v34[2];
  v44[3] = v15;
  v44[4] = v34[4];
  v44[5] = v11;
  LOBYTE(v34[8]) = *(a1 + 128);
  BYTE8(v34[16]) = *(a2 + 128);
  v45 = *(a1 + 128);
  v44[0] = v34[0];
  v44[1] = v13;
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v44) == 1)
  {
    v33[6] = *(&v34[14] + 8);
    v33[7] = *(&v34[15] + 8);
    LOBYTE(v33[8]) = BYTE8(v34[16]);
    v33[2] = *(&v34[10] + 8);
    v33[3] = *(&v34[11] + 8);
    v33[4] = *(&v34[12] + 8);
    v33[5] = *(&v34[13] + 8);
    v33[0] = *(&v34[8] + 8);
    v33[1] = *(&v34[9] + 8);
    if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v33) == 1)
    {
      v41 = v34[6];
      v42 = v34[7];
      v43 = v34[8];
      v37 = v34[2];
      v38 = v34[3];
      v40 = v34[5];
      v39 = v34[4];
      v35 = v34[0];
      v36 = v34[1];
      sub_1ADEDA1E8(a1, v31);
      sub_1ADEDA1E8(a2, v31);
      sub_1ADDCEDE0(&v35, &qword_1EB5BAB98, &unk_1AE2463B0);
LABEL_8:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v23 = sub_1AE23CCBC();
      v25 = *(v5 + 8);
      v25(v7, v4);
      v25(v10, v4);
      return v23 & 1;
    }

    goto LABEL_5;
  }

  v31[6] = *(&v34[14] + 8);
  v31[7] = *(&v34[15] + 8);
  v32 = BYTE8(v34[16]);
  v31[2] = *(&v34[10] + 8);
  v31[3] = *(&v34[11] + 8);
  v31[4] = *(&v34[12] + 8);
  v31[5] = *(&v34[13] + 8);
  v31[0] = *(&v34[8] + 8);
  v31[1] = *(&v34[9] + 8);
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v31) == 1)
  {
LABEL_5:
    memcpy(v33, v34, 0x109uLL);
    sub_1ADEDA1E8(a1, &v35);
    sub_1ADEDA1E8(a2, &v35);
    sub_1ADDCEDE0(v33, &qword_1EB5BAB90, &qword_1AE2463A8);
    goto LABEL_6;
  }

  v27[6] = *(&v34[14] + 8);
  v27[7] = *(&v34[15] + 8);
  v28 = BYTE8(v34[16]);
  v27[2] = *(&v34[10] + 8);
  v27[3] = *(&v34[11] + 8);
  v27[4] = *(&v34[12] + 8);
  v27[5] = *(&v34[13] + 8);
  v27[0] = *(&v34[8] + 8);
  v27[1] = *(&v34[9] + 8);
  v33[6] = *(&v34[14] + 8);
  v33[7] = *(&v34[15] + 8);
  LOBYTE(v33[8]) = BYTE8(v34[16]);
  v33[2] = *(&v34[10] + 8);
  v33[3] = *(&v34[11] + 8);
  v33[4] = *(&v34[12] + 8);
  v33[5] = *(&v34[13] + 8);
  v33[0] = *(&v34[8] + 8);
  v33[1] = *(&v34[9] + 8);
  v41 = v34[6];
  v42 = v34[7];
  v43 = v34[8];
  v37 = v34[2];
  v38 = v34[3];
  v40 = v34[5];
  v39 = v34[4];
  v35 = v34[0];
  v36 = v34[1];
  sub_1ADEDA1E8(a1, v29);
  sub_1ADEDA1E8(a2, v29);
  v24 = sub_1ADEDB054(&v35, v33);
  sub_1ADDCEDE0(v27, &qword_1EB5BAB98, &unk_1AE2463B0);
  v29[6] = v34[6];
  v29[7] = v34[7];
  v30 = v34[8];
  v29[2] = v34[2];
  v29[3] = v34[3];
  v29[4] = v34[4];
  v29[5] = v34[5];
  v29[0] = v34[0];
  v29[1] = v34[1];
  sub_1ADDCEDE0(v29, &qword_1EB5BAB98, &unk_1AE2463B0);
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_6:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1ADEDB054(uint64_t a1, __int128 *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - v9;
  v11 = *(a1 + 112);
  v79[6] = *(a1 + 96);
  v79[7] = v11;
  v80 = *(a1 + 128);
  v12 = *(a1 + 48);
  v79[2] = *(a1 + 32);
  v79[3] = v12;
  v13 = *(a1 + 80);
  v79[4] = *(a1 + 64);
  v79[5] = v13;
  v14 = *(a1 + 16);
  v79[0] = *a1;
  v79[1] = v14;
  v15 = sub_1ADEDC3FC(v79);
  if (v15 <= 1)
  {
    if (!v15)
    {
      v27 = sub_1ADE1F544(v79);
      v28 = v27[5];
      v85 = v27[4];
      v86 = v28;
      v29 = v27[7];
      v87 = v27[6];
      v88 = v29;
      v30 = v27[1];
      v81 = *v27;
      v82 = v30;
      v31 = v27[3];
      v83 = v27[2];
      v84 = v31;
      v32 = a2[7];
      v76 = a2[6];
      v77 = v32;
      v78 = *(a2 + 128);
      v33 = a2[3];
      v72 = a2[2];
      v73 = v33;
      v34 = a2[5];
      v74 = a2[4];
      v75 = v34;
      v35 = a2[1];
      v70 = *a2;
      v71 = v35;
      if (!sub_1ADEDC3FC(&v70))
      {
        v36 = sub_1ADE1F544(&v70);
        v37 = v36[5];
        v66 = v36[4];
        v67 = v37;
        v38 = v36[7];
        v68 = v36[6];
        v69 = v38;
        v39 = v36[1];
        v62 = *v36;
        v63 = v39;
        v40 = v36[3];
        v64 = v36[2];
        v65 = v40;
        v26 = sub_1AE1B86E8(&v81, &v62);
        return v26 & 1;
      }

LABEL_17:
      v26 = 0;
      return v26 & 1;
    }

    v53 = sub_1ADE1F544(v79);
    v54 = *(v53 + 16);
    v81 = *v53;
    v82 = v54;
    *&v83 = *(v53 + 32);
    v55 = a2[3];
    v72 = a2[2];
    v73 = v55;
    v56 = a2[1];
    v70 = *a2;
    v71 = v56;
    v78 = *(a2 + 128);
    v57 = a2[7];
    v76 = a2[6];
    v77 = v57;
    v58 = a2[5];
    v74 = a2[4];
    v75 = v58;
    if (sub_1ADEDC3FC(&v70) != 1)
    {
      goto LABEL_17;
    }

LABEL_16:
    v59 = sub_1ADE1F544(&v70);
    v60 = *(v59 + 16);
    v62 = *v59;
    v63 = v60;
    *&v64 = *(v59 + 32);
    v26 = sub_1ADEDB84C(&v81, &v62);
    return v26 & 1;
  }

  if (v15 == 2)
  {
    v41 = sub_1ADE1F544(v79);
    v42 = *(v41 + 16);
    v81 = *v41;
    v82 = v42;
    *&v83 = *(v41 + 32);
    v43 = a2[3];
    v72 = a2[2];
    v73 = v43;
    v44 = a2[1];
    v70 = *a2;
    v71 = v44;
    v78 = *(a2 + 128);
    v45 = a2[7];
    v76 = a2[6];
    v77 = v45;
    v46 = a2[5];
    v74 = a2[4];
    v75 = v46;
    if (sub_1ADEDC3FC(&v70) != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v15 != 3)
  {
    v47 = a2[7];
    v76 = a2[6];
    v77 = v47;
    v78 = *(a2 + 128);
    v48 = a2[3];
    v72 = a2[2];
    v73 = v48;
    v49 = a2[5];
    v74 = a2[4];
    v75 = v49;
    v50 = a2[1];
    v70 = *a2;
    v71 = v50;
    if (sub_1ADEDC3FC(&v70) == 4)
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v51 = sub_1AE23CCBC();
      v52 = *(v5 + 8);
      v52(v7, v4);
      v52(v10, v4);
      v26 = v51;
      return v26 & 1;
    }

    goto LABEL_17;
  }

  v16 = sub_1ADE1F544(v79);
  v17 = *v16;
  v18 = v16[1];
  v19 = a2[7];
  v76 = a2[6];
  v77 = v19;
  v78 = *(a2 + 128);
  v20 = a2[3];
  v72 = a2[2];
  v73 = v20;
  v21 = a2[5];
  v74 = a2[4];
  v75 = v21;
  v22 = a2[1];
  v70 = *a2;
  v71 = v22;
  if (sub_1ADEDC3FC(&v70) != 3)
  {
    goto LABEL_17;
  }

  v23 = sub_1ADE1F544(&v70);
  if (!sub_1ADDD6F8C(v17, v18, *v23, *(v23 + 8)))
  {
    goto LABEL_17;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v24 = sub_1AE23CCBC();
  v25 = *(v5 + 8);
  v25(v7, v4);
  v25(v10, v4);
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1ADEDB454(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = *(a1 + 88);
  v61 = *(a1 + 72);
  v62 = v11;
  v12 = *(a1 + 120);
  v63 = *(a1 + 104);
  v64 = v12;
  v13 = *(a1 + 24);
  v57 = *(a1 + 8);
  v58 = v13;
  v14 = *(a1 + 56);
  v59 = *(a1 + 40);
  v60 = v14;
  v15 = *(a2 + 8);
  v16 = *(a2 + 24);
  v17 = *(a2 + 56);
  v67 = *(a2 + 40);
  v68 = v17;
  v65 = v15;
  v66 = v16;
  v18 = *(a2 + 72);
  v19 = *(a2 + 88);
  v20 = *(a2 + 120);
  v71 = *(a2 + 104);
  v72 = v20;
  v69 = v18;
  v70 = v19;
  v21 = *(a1 + 8);
  v22 = *(a1 + 24);
  v23 = *(a1 + 56);
  v81[2] = *(a1 + 40);
  v81[3] = v23;
  v81[0] = v21;
  v81[1] = v22;
  v24 = *(a1 + 72);
  v25 = *(a1 + 88);
  v26 = *(a1 + 120);
  v81[6] = *(a1 + 104);
  v81[7] = v26;
  v81[4] = v24;
  v81[5] = v25;
  if (sub_1ADEDA0E0(v81) != 1)
  {
    v32[4] = v69;
    v32[5] = v70;
    v32[6] = v71;
    v32[7] = v72;
    v32[0] = v65;
    v32[1] = v66;
    v32[2] = v67;
    v32[3] = v68;
    if (sub_1ADEDA0E0(v32) != 1)
    {
      v31[4] = v69;
      v31[5] = v70;
      v31[6] = v71;
      v31[7] = v72;
      v31[0] = v65;
      v31[1] = v66;
      v31[2] = v67;
      v31[3] = v68;
      v35 = v67;
      v36 = v68;
      v33 = v65;
      v34 = v66;
      v39 = v71;
      v40 = v72;
      v37 = v69;
      v38 = v70;
      v75 = v59;
      v76 = v60;
      v73 = v57;
      v74 = v58;
      v79 = v63;
      v80 = v64;
      v77 = v61;
      v78 = v62;
      sub_1ADEDA1A4(a1, &v41);
      sub_1ADEDA1A4(a2, &v41);
      v27 = sub_1AE1B86E8(&v73, &v33);
      sub_1ADDCEDE0(v31, &qword_1EB5BB400, &qword_1AE246370);
      v45 = v61;
      v46 = v62;
      v47 = v63;
      v48 = v64;
      v41 = v57;
      v42 = v58;
      v43 = v59;
      v44 = v60;
      sub_1ADDCEDE0(&v41, &qword_1EB5BB400, &qword_1AE246370);
      if ((v27 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_5:
    v53 = v69;
    v54 = v70;
    v55 = v71;
    v56 = v72;
    v49 = v65;
    v50 = v66;
    v51 = v67;
    v52 = v68;
    v45 = v61;
    v46 = v62;
    v47 = v63;
    v48 = v64;
    v41 = v57;
    v42 = v58;
    v43 = v59;
    v44 = v60;
    sub_1ADEDA1A4(a1, &v33);
    sub_1ADEDA1A4(a2, &v33);
    sub_1ADDCEDE0(&v41, &qword_1EB5BAB88, &qword_1AE2463A0);
    goto LABEL_8;
  }

  v37 = v69;
  v38 = v70;
  v39 = v71;
  v40 = v72;
  v33 = v65;
  v34 = v66;
  v35 = v67;
  v36 = v68;
  if (sub_1ADEDA0E0(&v33) != 1)
  {
    goto LABEL_5;
  }

  v77 = v61;
  v78 = v62;
  v79 = v63;
  v80 = v64;
  v73 = v57;
  v74 = v58;
  v75 = v59;
  v76 = v60;
  sub_1ADEDA1A4(a1, &v41);
  sub_1ADEDA1A4(a2, &v41);
  sub_1ADDCEDE0(&v73, &qword_1EB5BB400, &qword_1AE246370);
LABEL_7:
  if (((*a1 ^ *a2) & 1) == 0)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v28 = sub_1AE23CCBC();
    v30 = *(v5 + 8);
    v30(v7, v4);
    v30(v10, v4);
    return v28 & 1;
  }

LABEL_8:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1ADEDB84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v10 = *(a1 + 24);
  v31 = *(a1 + 8);
  v32 = v10;
  v11 = *(a2 + 24);
  v30[0] = *(a2 + 8);
  v30[1] = v11;
  v12 = v31;
  v13 = v32;
  v14 = v30[0];
  v15 = v11;
  if (!v32)
  {
    if (!v11)
    {
      v24 = &v23 - v7;
      v25 = v9;
      v26 = v8;
      v27 = v6;
      sub_1ADEDC41C(&v31, v29);
      sub_1ADEDC41C(v30, v29);
      sub_1ADE73B5C(v12, *(&v12 + 1), 0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!v11)
  {
LABEL_6:
    sub_1ADEDC41C(&v31, v29);
    sub_1ADEDC41C(v30, v29);
    sub_1ADE73B5C(v12, *(&v12 + 1), v13);
    sub_1ADE73B5C(v14, *(&v14 + 1), v15);
    goto LABEL_10;
  }

  v24 = &v23 - v7;
  v25 = v9;
  v26 = v8;
  v27 = v6;
  sub_1ADEDC41C(&v31, v29);
  sub_1ADEDC41C(v30, v29);
  v28 = sub_1AE1CE4B8(v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1));
  sub_1ADE73B5C(v14, *(&v14 + 1), v15);
  sub_1ADE73B5C(v12, *(&v12 + 1), v13);
  if ((v28 & 1) == 0)
  {
LABEL_10:
    v20 = 0;
    return v20 & 1;
  }

LABEL_8:
  sub_1ADE49E00(*a1, *a2);
  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = v24;
  sub_1AE23C31C();
  v18 = v25;
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v19 = v27;
  v20 = sub_1AE23CCBC();
  v21 = *(v26 + 8);
  v21(v18, v19);
  v21(v17, v19);
  return v20 & 1;
}

uint64_t sub_1ADEDBADC(_OWORD *a1, _OWORD *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = a1[5];
  v12 = a1[7];
  v34[6] = a1[6];
  v34[7] = v12;
  *(&v34[7] + 9) = *(a1 + 121);
  v13 = a1[1];
  v14 = a1[3];
  v34[2] = a1[2];
  v34[3] = v14;
  v15 = a1[3];
  v16 = a1[5];
  v34[4] = a1[4];
  v34[5] = v16;
  v17 = a1[1];
  v34[0] = *a1;
  v34[1] = v17;
  *(&v34[16] + 9) = *(a2 + 121);
  v18 = a2[7];
  v34[15] = a2[6];
  v34[16] = v18;
  v19 = a2[3];
  v34[11] = a2[2];
  v34[12] = v19;
  v20 = a2[5];
  v34[13] = a2[4];
  v34[14] = v20;
  v21 = a2[1];
  v34[9] = *a2;
  v34[10] = v21;
  v22 = a1[7];
  v43[6] = v34[6];
  v44[0] = v22;
  *(v44 + 9) = *(a1 + 121);
  v43[2] = v34[2];
  v43[3] = v15;
  v43[4] = v34[4];
  v43[5] = v11;
  v43[0] = v34[0];
  v43[1] = v13;
  if (sub_1ADEDA030(v43) == 1)
  {
    v33[6] = v34[15];
    v33[7] = v34[16];
    *(&v33[7] + 9) = *(&v34[16] + 9);
    v33[2] = v34[11];
    v33[3] = v34[12];
    v33[4] = v34[13];
    v33[5] = v34[14];
    v33[0] = v34[9];
    v33[1] = v34[10];
    if (sub_1ADEDA030(v33) == 1)
    {
      v41 = v34[6];
      v42[0] = v34[7];
      *(v42 + 9) = *(&v34[7] + 9);
      v37 = v34[2];
      v38 = v34[3];
      v40 = v34[5];
      v39 = v34[4];
      v35 = v34[0];
      v36 = v34[1];
      sub_1ADEDA04C(a1, v31);
      sub_1ADEDA04C(a2, v31);
      sub_1ADDCEDE0(&v35, &qword_1EB5BAB80, &qword_1AE246398);
LABEL_8:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v23 = sub_1AE23CCBC();
      v25 = *(v5 + 8);
      v25(v7, v4);
      v25(v10, v4);
      return v23 & 1;
    }

    goto LABEL_5;
  }

  v31[6] = v34[15];
  v32[0] = v34[16];
  *(v32 + 9) = *(&v34[16] + 9);
  v31[2] = v34[11];
  v31[3] = v34[12];
  v31[4] = v34[13];
  v31[5] = v34[14];
  v31[0] = v34[9];
  v31[1] = v34[10];
  if (sub_1ADEDA030(v31) == 1)
  {
LABEL_5:
    memcpy(v33, v34, 0x119uLL);
    sub_1ADEDA04C(a1, &v35);
    sub_1ADEDA04C(a2, &v35);
    sub_1ADDCEDE0(v33, &qword_1EB5BAB78, &qword_1AE246390);
    goto LABEL_6;
  }

  v27[6] = v34[15];
  v28[0] = v34[16];
  *(v28 + 9) = *(&v34[16] + 9);
  v27[2] = v34[11];
  v27[3] = v34[12];
  v27[4] = v34[13];
  v27[5] = v34[14];
  v27[0] = v34[9];
  v27[1] = v34[10];
  v33[6] = v34[15];
  v33[7] = v34[16];
  *(&v33[7] + 9) = *(&v34[16] + 9);
  v33[2] = v34[11];
  v33[3] = v34[12];
  v33[4] = v34[13];
  v33[5] = v34[14];
  v33[0] = v34[9];
  v33[1] = v34[10];
  v41 = v34[6];
  v42[0] = v34[7];
  *(v42 + 9) = *(&v34[7] + 9);
  v37 = v34[2];
  v38 = v34[3];
  v40 = v34[5];
  v39 = v34[4];
  v35 = v34[0];
  v36 = v34[1];
  sub_1ADEDA04C(a1, v29);
  sub_1ADEDA04C(a2, v29);
  v24 = sub_1ADEDBEF4(&v35, v33);
  sub_1ADDCEDE0(v27, &qword_1EB5BAB80, &qword_1AE246398);
  v29[6] = v34[6];
  v30[0] = v34[7];
  *(v30 + 9) = *(&v34[7] + 9);
  v29[2] = v34[2];
  v29[3] = v34[3];
  v29[4] = v34[4];
  v29[5] = v34[5];
  v29[0] = v34[0];
  v29[1] = v34[1];
  sub_1ADDCEDE0(v29, &qword_1EB5BAB80, &qword_1AE246398);
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_6:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1ADEDBEF4(_OWORD *a1, __int128 *a2)
{
  v3 = a1[7];
  v117[6] = a1[6];
  v118[0] = v3;
  *(v118 + 9) = *(a1 + 121);
  v4 = a1[3];
  v117[2] = a1[2];
  v117[3] = v4;
  v5 = a1[5];
  v117[4] = a1[4];
  v117[5] = v5;
  v6 = a1[1];
  v117[0] = *a1;
  v117[1] = v6;
  v7 = sub_1ADEDA044(v117);
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v117);
        v32 = v31[5];
        v123 = v31[4];
        v124 = v32;
        v33 = v31[7];
        v125 = v31[6];
        v126 = v33;
        v34 = v31[1];
        v119 = *v31;
        v120 = v34;
        v35 = v31[3];
        v121 = v31[2];
        v122 = v35;
        v36 = a2[7];
        v115 = a2[6];
        v116[0] = v36;
        *(v116 + 9) = *(a2 + 121);
        v37 = a2[3];
        v111 = a2[2];
        v112 = v37;
        v38 = a2[5];
        v113 = a2[4];
        v114 = v38;
        v39 = a2[1];
        v109 = *a2;
        v110 = v39;
        if (sub_1ADEDA044(&v109) != 2)
        {
          goto LABEL_27;
        }

        goto LABEL_16;
      }

      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v117);
      v69 = *v74;
      v75 = a2[7];
      v115 = a2[6];
      v116[0] = v75;
      *(v116 + 9) = *(a2 + 121);
      v76 = a2[3];
      v111 = a2[2];
      v112 = v76;
      v77 = a2[5];
      v113 = a2[4];
      v114 = v77;
      v78 = a2[1];
      v109 = *a2;
      v110 = v78;
      if (sub_1ADEDA044(&v109) != 3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (!v7)
      {
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v117);
        v24 = *v23;
        v25 = v23[1];
        v26 = a2[7];
        v115 = a2[6];
        v116[0] = v26;
        *(v116 + 9) = *(a2 + 121);
        v27 = a2[3];
        v111 = a2[2];
        v112 = v27;
        v28 = a2[5];
        v113 = a2[4];
        v114 = v28;
        v29 = a2[1];
        v109 = *a2;
        v110 = v29;
        if (!sub_1ADEDA044(&v109))
        {
          Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v109);
          v22 = sub_1ADDD6F8C(v24, v25, *v30, *(v30 + 8));
          return v22 & 1;
        }

LABEL_27:
        v22 = 0;
        return v22 & 1;
      }

      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v117);
      v69 = *v68;
      v70 = a2[7];
      v115 = a2[6];
      v116[0] = v70;
      *(v116 + 9) = *(a2 + 121);
      v71 = a2[3];
      v111 = a2[2];
      v112 = v71;
      v72 = a2[5];
      v113 = a2[4];
      v114 = v72;
      v73 = a2[1];
      v109 = *a2;
      v110 = v73;
      if (sub_1ADEDA044(&v109) != 1)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v109);
    v22 = v69 ^ *v84 ^ 1;
    return v22 & 1;
  }

  if (v7 <= 5)
  {
    if (v7 != 4)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v117);
      v86 = v85[7];
      v125 = v85[6];
      v126 = v86;
      v127 = *(v85 + 16);
      v87 = v85[3];
      v121 = v85[2];
      v122 = v87;
      v88 = v85[5];
      v123 = v85[4];
      v124 = v88;
      v89 = v85[1];
      v119 = *v85;
      v120 = v89;
      *(v116 + 9) = *(a2 + 121);
      v90 = a2[7];
      v115 = a2[6];
      v116[0] = v90;
      v91 = a2[5];
      v113 = a2[4];
      v114 = v91;
      v92 = a2[3];
      v111 = a2[2];
      v112 = v92;
      v93 = a2[1];
      v109 = *a2;
      v110 = v93;
      if (sub_1ADEDA044(&v109) == 5)
      {
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v109);
        v95 = *(v94 + 112);
        v106 = *(v94 + 96);
        v107 = v95;
        v108 = *(v94 + 128);
        v96 = *(v94 + 48);
        v102 = *(v94 + 32);
        v103 = v96;
        v97 = *(v94 + 80);
        v104 = *(v94 + 64);
        v105 = v97;
        v98 = *(v94 + 16);
        v100 = *v94;
        v101 = v98;
        v22 = sub_1ADEDB454(&v119, &v100);
        return v22 & 1;
      }

      goto LABEL_27;
    }

    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v117);
    v41 = v40[5];
    v123 = v40[4];
    v124 = v41;
    v42 = v40[7];
    v125 = v40[6];
    v126 = v42;
    v43 = v40[1];
    v119 = *v40;
    v120 = v43;
    v44 = v40[3];
    v121 = v40[2];
    v122 = v44;
    v45 = a2[7];
    v115 = a2[6];
    v116[0] = v45;
    *(v116 + 9) = *(a2 + 121);
    v46 = a2[3];
    v111 = a2[2];
    v112 = v46;
    v47 = a2[5];
    v113 = a2[4];
    v114 = v47;
    v48 = a2[1];
    v109 = *a2;
    v110 = v48;
    if (sub_1ADEDA044(&v109) != 4)
    {
      goto LABEL_27;
    }

LABEL_16:
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v109);
    v50 = v49[5];
    v104 = v49[4];
    v105 = v50;
    v51 = v49[7];
    v106 = v49[6];
    v107 = v51;
    v52 = v49[1];
    v100 = *v49;
    v101 = v52;
    v53 = v49[3];
    v102 = v49[2];
    v103 = v53;
    v22 = sub_1AE1CE814(&v119, &v100);
    return v22 & 1;
  }

  if (v7 == 6)
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v117);
    v55 = v54[7];
    v125 = v54[6];
    v126 = v55;
    LOBYTE(v127) = *(v54 + 128);
    v56 = v54[3];
    v121 = v54[2];
    v122 = v56;
    v57 = v54[5];
    v123 = v54[4];
    v124 = v57;
    v58 = v54[1];
    v119 = *v54;
    v120 = v58;
    *(v116 + 9) = *(a2 + 121);
    v59 = a2[7];
    v115 = a2[6];
    v116[0] = v59;
    v60 = a2[5];
    v113 = a2[4];
    v114 = v60;
    v61 = a2[3];
    v111 = a2[2];
    v112 = v61;
    v62 = a2[1];
    v109 = *a2;
    v110 = v62;
    if (sub_1ADEDA044(&v109) == 6)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v109);
      v64 = *(v63 + 112);
      v106 = *(v63 + 96);
      v107 = v64;
      LOBYTE(v108) = *(v63 + 128);
      v65 = *(v63 + 48);
      v102 = *(v63 + 32);
      v103 = v65;
      v66 = *(v63 + 80);
      v104 = *(v63 + 64);
      v105 = v66;
      v67 = *(v63 + 16);
      v100 = *v63;
      v101 = v67;
      v22 = sub_1ADEDAC10(&v119, &v100);
      return v22 & 1;
    }

    goto LABEL_27;
  }

  if (v7 != 7)
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v117);
    v69 = *v79;
    v80 = a2[7];
    v115 = a2[6];
    v116[0] = v80;
    *(v116 + 9) = *(a2 + 121);
    v81 = a2[3];
    v111 = a2[2];
    v112 = v81;
    v82 = a2[5];
    v113 = a2[4];
    v114 = v82;
    v83 = a2[1];
    v109 = *a2;
    v110 = v83;
    if (sub_1ADEDA044(&v109) != 8)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v117);
  v9 = v8[7];
  v125 = v8[6];
  v126 = v9;
  LOBYTE(v127) = *(v8 + 128);
  v10 = v8[3];
  v121 = v8[2];
  v122 = v10;
  v11 = v8[5];
  v123 = v8[4];
  v124 = v11;
  v12 = v8[1];
  v119 = *v8;
  v120 = v12;
  *(v116 + 9) = *(a2 + 121);
  v13 = a2[7];
  v115 = a2[6];
  v116[0] = v13;
  v14 = a2[5];
  v113 = a2[4];
  v114 = v14;
  v15 = a2[3];
  v111 = a2[2];
  v112 = v15;
  v16 = a2[1];
  v109 = *a2;
  v110 = v16;
  if (sub_1ADEDA044(&v109) != 7)
  {
    goto LABEL_27;
  }

  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v109);
  v18 = *(v17 + 112);
  v106 = *(v17 + 96);
  v107 = v18;
  LOBYTE(v108) = *(v17 + 128);
  v19 = *(v17 + 48);
  v102 = *(v17 + 32);
  v103 = v19;
  v20 = *(v17 + 80);
  v104 = *(v17 + 64);
  v105 = v20;
  v21 = *(v17 + 16);
  v100 = *v17;
  v101 = v21;
  v22 = sub_1ADEDA2A0(&v119, &v100);
  return v22 & 1;
}

uint64_t sub_1ADEDC3FC(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 48) >> 60) & 3;
  }
}

uint64_t sub_1ADEDC41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BABA0, &unk_1AE2580C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(uint64_t a1)
{
  v1 = (*(a1 + 48) >> 60) & 3 | (4 * *(a1 + 128));
  v2 = v1 ^ 0x3FF;
  v3 = 1024 - v1;
  if (v2 >= 0x3FB)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1ADEDC4B4(uint64_t a1)
{
  if (*(a1 + 128))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  return (*(a1 + 48) >> 60) & 3 | v1;
}

unint64_t sub_1ADEDC4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BABB8;
  if (!qword_1EB5BABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABB8);
  }

  return result;
}

unint64_t sub_1ADEDC528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BABC0;
  if (!qword_1EB5BABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABC0);
  }

  return result;
}

double sub_1ADEDC57C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_1ADEDC604(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1ADE73B5C(a2, a3, a4);
  }

  return result;
}

unint64_t sub_1ADEDC664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BABC8;
  if (!qword_1EB5BABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABC8);
  }

  return result;
}

uint64_t sub_1ADEDC720(uint64_t result)
{
  *(result + 48) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 128) = 1;
  return result;
}

unint64_t sub_1ADEDC738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BABD0;
  if (!qword_1EB5BABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABD0);
  }

  return result;
}

uint64_t sub_1ADEDC78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1AE23C32C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1ADEDC888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BABD8;
  if (!qword_1EB5BABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABD8);
  }

  return result;
}

unint64_t sub_1ADEDC8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED9694A8[0];
  if (!qword_1ED9694A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9694A8);
  }

  return result;
}

unint64_t sub_1ADEDC930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A808;
  if (!qword_1ED96A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A808);
  }

  return result;
}

unint64_t sub_1ADEDC984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BABE0;
  if (!qword_1EB5BABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABE0);
  }

  return result;
}

unint64_t sub_1ADEDC9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BABE8;
  if (!qword_1EB5BABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABE8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence14Proto_DocumentV10OneOf_RootOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_9Coherence15Proto_ConstantsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1ADEDCAC8(uint64_t result, char a2)
{
  *(result + 48) = *(result + 48) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 128) = (a2 & 4) != 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0O(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 48) >> 60) & 3;
  }
}

uint64_t sub_1ADEDCB14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 129))
  {
    return (*a1 + 1020);
  }

  v3 = ((*(a1 + 48) >> 60) & 3 | (4 * *(a1 + 128))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1ADEDCB68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 1020;
    if (a3 >= 0x3FC)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (-a2 & 3) << 60;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0;
      *(result + 128) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1ADEDCBFC(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 48) = *(result + 48) & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0;
  }

  *(result + 128) = a2 > 3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence14Proto_DocumentVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1ADEDCCB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 137))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 136);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1ADEDCD00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 136) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence12Peer_MessageV012OneOf_TaggeddE0OSg(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 > 8)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADEDCD94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 137))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 136);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1ADEDCDE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 136) = ~a2;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1ADEDCE8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1ADEDCEE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1ADEDCF7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FB && *(a1 + 129))
  {
    return (*a1 + 1019);
  }

  v3 = (*(a1 + 48) >> 60) & 3 | (4 * *(a1 + 128));
  v4 = v3 ^ 0x3FF;
  v5 = 1022 - v3;
  if (v4 >= 0x3FB)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1ADEDCFD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 1019;
    if (a3 >= 0x3FB)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (~a2 & 3) << 60;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0;
      *(result + 128) = ~a2 >> 2;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ADEDD0A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ADEDD0E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADEDD190(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v10 = a3;
  v11 = [a1 length];
  if (!v10)
  {
    if (v11 <= a2)
    {
      goto LABEL_10;
    }

    v12 = 2;
    goto LABEL_7;
  }

  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v11 + 1 > a2)
  {
    v12 = a3 == 2;
LABEL_7:
    v13 = [a1 mergeableIndexForCharacterIndex:a2 affinity:v12];
    if (v13)
    {
      return (*(a5 + 32))(v13, a4, a5);
    }
  }

LABEL_10:
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t sub_1ADEDD2B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char *a6@<X8>)
{
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v37 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - v19;
  if (v21 < 0)
  {
    goto LABEL_14;
  }

  v22 = [a1 length];
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v22 + 1 <= a3)
  {
    goto LABEL_14;
  }

  v23 = [a1 mergeableIndexForCharacterIndex:a3 affinity:0];
  if (!v23)
  {
    goto LABEL_14;
  }

  v24 = v23;
  v38 = v14;
  v39 = a6;
  v25 = a5[4];
  v25(v23, a4, a5);
  if (__OFSUB__(a3, a2))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a3 != a2)
  {
    v27 = v24;
    v28 = [a1 mergeableIndexForCharacterIndex:a2 affinity:1];
    if (v28)
    {
      v29 = v28;

      v26 = v40;
      v25(v29, a4, a5);
      goto LABEL_11;
    }

    while (1)
    {
LABEL_14:
      sub_1AE23DC5C();
      __break(1u);
    }
  }

  v26 = v40;
  (*(v12 + 16))(v40, v20, a4);
LABEL_11:
  v30 = *(v12 + 32);
  v31 = v38;
  v30(v38, v20, a4);
  v33 = a5[1];
  v32 = a5[2];
  v34 = v39;
  v30(v39, v26, a4);
  v35 = type metadata accessor for CursorRange(0, a4, v33, v32);
  return (v30)(&v34[*(v35 + 44)], v31, a4);
}

id sub_1ADEDD5A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 24))(a3, a4);
  objc_opt_self();
  v6 = [a1 characterIndexForIndex_];

  if (v6 == sub_1AE23BB0C())
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id sub_1ADEDD634(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4[3];
  v8 = v7(a3, a4);
  objc_opt_self();
  v9 = [a1 characterIndexForIndex_];

  type metadata accessor for CursorRange(0, a3, a4[1], a4[2]);
  v10 = v7(a3, a4);
  objc_opt_self();
  v11 = [a1 characterIndexForIndex_];

  if (v9 == sub_1AE23BB0C())
  {
    return 0;
  }

  result = sub_1AE23BB0C();
  if (v11 == result)
  {
    return 0;
  }

  if (v11 >= v9)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t CursorRange.init(lowerBound:upperBound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(*(a3 - 8) + 32);
  v13(a3 - 8, a6, a1);
  v11 = a6 + *(type metadata accessor for CursorRange(0, a3, a4, a5) + 44);

  return v13(v11, a2, a3);
}

uint64_t CRAffinity.hashValue.getter(unsigned __int8 a1)
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](a1);
  return sub_1AE23E34C();
}

void CursorRange.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  Array<A>.init(from:)(v8, a2, a3);
  if (!v4)
  {
    if (sub_1AE23D0AC() == 2)
    {
      sub_1AE23D15C();
      type metadata accessor for CursorRange(0, a2, a3, a4);
      sub_1AE23D15C();

      return;
    }

    sub_1ADE42E40(v9, v10, v11);
    swift_allocError();
    *v12 = 0xD000000000000010;
    *(v12 + 8) = 0x80000001AE260EA0;
    *(v12 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t CursorRange.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  sub_1ADE0FC48(v6, v6);
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  swift_allocObject();
  v9 = sub_1AE23CFFC();
  v11 = v10;
  v12 = *(v7 + 16);
  v12(v10, v3, v6);
  v12(v11 + v8, v3 + *(a2 + 44), v6);
  sub_1ADE0FCBC(v9, v6);
  Array<A>.encode(to:)(a1, v13, v6, *(a2 + 24));
}

Swift::Bool __swiftcall CursorRange.needToFinalizeTimestamps()()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 8);
  v3 = *(v2 + 56);
  if (v3(v1, v2))
  {
    return 1;
  }

  else
  {
    return v3(v1, v2) & 1;
  }
}

uint64_t CursorRange.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  v5 = *(v4 + 64);
  v5(a1, v3, v4);
  return (v5)(a1, v3, v4);
}

uint64_t static CursorRange.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_1AE23CCBC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CursorRange(0, a3, a4, a5);
  return sub_1AE23CCBC() & 1;
}

unint64_t sub_1ADEDDE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BABF0;
  if (!qword_1EB5BABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABF0);
  }

  return result;
}

uint64_t sub_1ADEDDECC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADEDDF3C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1ADEDE08C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t SharedTagged_1.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_1.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_1.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_1.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_1, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_1, a5);
}

uint64_t SharedTagged_1.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_1(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

uint64_t SharedTagged_1.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 0;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_1(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

uint64_t SharedTagged_1.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 0;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_1(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

uint64_t SharedTagged_1.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = *a1;
  v9 = *(type metadata accessor for WeakTagged_1(0, a2, a3, a5) + 36);
  v11 = *(type metadata accessor for SharedTagged_1(0, a2, a3, v10) + 36);
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedConformanceWitness();
  v14[2] = &protocol witness table for Int;
  v14[3] = MEMORY[0x1E69E6540];
  v12 = type metadata accessor for CRExtensible(0, v14);
  return (*(*(v12 - 8) + 32))(&a4[v11], &a1[v9], v12);
}

uint64_t SharedTagged_1.tagged1.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0])
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  else
  {
    v9 = *v2;
    v10 = v3[1];
    v11.n128_u64[0] = v9;
    v11.n128_u64[1] = v10;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v8 = v12.n128_u64[1];
    v7 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v9, v10);
  }

  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t SharedTagged_1.unknown.getter@<X0>(__int128 *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_i64[0] < 1)
  {
    v9 = xmmword_1AE2427C0;
  }

  else
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12;
    result = sub_1ADDD86D8(v7, v8);
    v9 = v10;
  }

  *a2 = v9;
  return result;
}

uint64_t SharedTagged_1.any.getter@<X0>(__n128 *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  CRExtensible.rawValue.getter(v5, &v15);
  v6 = *v2;
  v7 = v3[1];
  v12.n128_u64[0] = v6;
  v12.n128_u64[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v6, v7);
}

uint64_t SharedTagged_1.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v25[3] = a1;
  v26 = a3;
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v9);
  v25[1] = v25 - v10;
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29.n128_u64[0] = v11;
  v29.n128_u64[1] = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v29);
  CRExtensible.rawValue.getter(v13, &v32);
  v14 = a4;
  v25[2] = a4 + 8;
  if (v32)
  {
    v16 = v6[1];
    v28.n128_u64[0] = *v6;
    v15 = v28.n128_u64[0];
    v28.n128_u64[1] = v16;
    v17 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v28, &v29);
    v28 = v29;
    v18 = v14;
    v19 = *(v14 + 8);
    sub_1ADDD86D8(v15, v16);
    v19(&v28, AssociatedTypeWitness, v17, v26, v18);
  }

  else
  {
    v20 = *v6;
    v21 = v6[1];
    v28.n128_u64[0] = v20;
    v28.n128_u64[1] = v21;
    v22 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v28, &v29);
    v28 = v29;
    v23 = *(a4 + 8);
    sub_1ADDD86D8(v20, v21);
    v23(&v28, v9, v22, v26, a4);
  }

  sub_1ADDCC35C(v28.n128_i64[0], v28.n128_u64[1]);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADEDF574(uint64_t a1)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v6);
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23.n128_u64[0] = v7;
  v23.n128_u64[1] = AssociatedConformanceWitness;
  v24 = &protocol witness table for Int;
  v25 = MEMORY[0x1E69E6540];
  v9 = type metadata accessor for CRExtensible(0, &v23);
  CRExtensible.rawValue.getter(v9, &v26);
  v11 = v3[1];
  v22.n128_u64[0] = *v4;
  v10 = v22.n128_u64[0];
  v22.n128_u64[1] = v11;
  if (v26)
  {
    v12 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v22, &v23);
    v13 = v23;
    v22 = v23;
    sub_1ADDD86D8(v10, v11);
    v15 = type metadata accessor for Ref(0, AssociatedTypeWitness, v12, v14);
    sub_1AE002018(a1, v15);
    sub_1ADDCC35C(v13.n128_i64[0], v13.n128_u64[1]);
  }

  else
  {
    v16 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v22, &v23);
    v17 = v23;
    v22 = v23;
    sub_1ADDD86D8(v10, v11);
    v19 = type metadata accessor for Ref(0, v6, v16, v18);
    sub_1AE002018(a1, v19);
    sub_1ADDCC35C(v17.n128_i64[0], v17.n128_u64[1]);
  }

  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADEDF874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v38 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = &v30 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v30 - v8;
  v36 = swift_getAssociatedTypeWitness();
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v30 - v10;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40.n128_u64[0] = v12;
  v40.n128_u64[1] = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v40);
  CRExtensible.rawValue.getter(v14, &v43);
  v35 = v9 + 16;
  v16 = v3[1];
  v39.n128_u64[0] = *v4;
  v15 = v39.n128_u64[0];
  v39.n128_u64[1] = v16;
  if (v43)
  {
    v17 = swift_getAssociatedConformanceWitness();
    v18 = Ref.init(id:)(&v39, &v40);
    v19 = v40;
    v20 = v38;
    v21 = v36;
    (*(v9 + 16))(v11, v38, v36, v18);
    sub_1ADDD86D8(v15, v16);
    v22 = v33;
    swift_dynamicCast();
    v39 = v19;
    sub_1ADECCBCC(v22, &v39, AssociatedTypeWitness, v17);
    (*(v34 + 8))(v22, AssociatedTypeWitness);

    return (*(v9 + 8))(v20, v21);
  }

  else
  {
    v24 = swift_getAssociatedConformanceWitness();
    v25 = Ref.init(id:)(&v39, &v40);
    v26 = v40;
    v27 = v38;
    v28 = v36;
    (*(v9 + 16))(v11, v38, v36, v25);
    sub_1ADDD86D8(v15, v16);
    v29 = v31;
    swift_dynamicCast();
    v39 = v26;
    sub_1ADECCBCC(v29, &v39, v7, v24);
    (*(v32 + 8))(v29, v7);

    return (*(v9 + 8))(v27, v28);
  }
}

double sub_1ADEDFCD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = type metadata accessor for SharedTagged_1(0, *(a3 + a4 - 32), *(a3 + a4 - 16), a4);

  sub_1ADF4A990(a1, v5, v6, &protocol requirements base descriptor for Tagged_1, &associated type descriptor for Tagged_1.AnyType, sub_1ADEDF874);

  return result;
}

uint64_t SharedTagged_1.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_1, &associated type descriptor for Tagged_1.AnyType, sub_1ADEDF874);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*SharedTagged_1.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  SharedTagged_1.subscript.getter(a2, a3);
  return sub_1ADEDFF54;
}

void SharedTagged_1.visitReferences(_:)(void *a1, uint64_t a2)
{
  v13.n128_u64[0] = swift_getAssociatedTypeWitness();
  v13.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v14 = &protocol witness table for Int;
  v15 = MEMORY[0x1E69E6540];
  v4 = type metadata accessor for CRExtensible(0, &v13);
  CRExtensible.rawValue.getter(v4, &v16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = v2[1];
  v12.n128_u64[0] = *v2;
  v8 = v12.n128_u64[0];
  v12.n128_u64[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v12, &v13);
  v12 = v13;
  v11 = *(v6 + 16);
  sub_1ADDD86D8(v8, v7);
  v11(&v12, AssociatedTypeWitness, AssociatedConformanceWitness, v5, v6);
  sub_1ADDCC35C(v12.n128_i64[0], v12.n128_u64[1]);
}

void SharedTagged_1.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v20 = 0xD000000000000017;
    *(v20 + 8) = 0x80000001AE25FB70;
    *(v20 + 16) = 0;
    swift_willThrow();
LABEL_12:

    return;
  }

  v7 = v4;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v11 = *(v6 + 16);
  if ((~v11 & 0xF000000000000007) != 0 && ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 0xB)
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v12 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v57 = v12[2];
  v14 = *(type metadata accessor for SharedTagged_1(0, a2, a3, v13) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v55 = AssociatedTypeWitness;
  v56 = v14;
  v54 = AssociatedConformanceWitness;
  CRExtensible.init(rawValue:)(&v57, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a4 + v14));
  if (*(a1 + 57) >= 3u)
  {
    v17 = *(a1 + 72);
    if (!v17)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v18 = *(v17 + 16);
    if ((~v18 & 0xF000000000000007) != 0 && ((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xB)
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v19 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v19[3])
    {
      inited = v19[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v22 = *(inited + 16);
    sub_1ADE51B2C(v22);

    if ((~v22 & 0xF000000000000007) != 0)
    {
      if (((v22 >> 59) & 0x1E | (v22 >> 2) & 1) == 0x10)
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v22);
        v27 = *(a1 + 40);
        v28 = *(v27 + 16);
        if (v28 && v23 < v28)
        {
          v29 = *(v27 + 16 * v23 + 32);
          *a4 = v29;
          sub_1ADDD86D8(v29, *(&v29 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40(v24, v25, v26);
        swift_allocError();
        *v51 = 0xD000000000000013;
        *(v51 + 8) = 0x80000001AE25FC60;
        *(v51 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_48:
        *&v57 = v55;
        *(&v57 + 1) = v54;
        v58 = &protocol witness table for Int;
        v59 = MEMORY[0x1E69E6540];
        v50 = type metadata accessor for CRExtensible(0, &v57);
        (*(*(v50 - 8) + 8))(a4 + v56, v50);
        return;
      }

      sub_1ADE51B48(v22);
    }
  }

  v30 = *(a1 + 72);
  if (!v30)
  {
    __break(1u);
    goto LABEL_52;
  }

  v31 = *(v30 + 16);
  if ((~v31 & 0xF000000000000007) != 0 && ((v31 >> 59) & 0x1E | (v31 >> 2) & 1) == 0xB)
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v32 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v33 = v32[3];
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v34 = swift_initStaticObject();
  }

  v35 = *(v34 + 16);
  if ((~v35 & 0xF000000000000007) != 0 && ((v35 >> 59) & 0x1E | (v35 >> 2) & 1) == 7)
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v36 = swift_initStaticObject();
  }

  swift_beginAccess();
  v37 = v36[8];
  if (v37)
  {
    v39 = v36[9];
    v38 = v36[10];

    sub_1ADDD86D8(v39, v38);
  }

  else
  {
    v39 = 0;
    v38 = 0xC000000000000000;
    v37 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDE94BC(v37, v39, v38, &v57);
  if (v7)
  {
    goto LABEL_39;
  }

  *a4 = v57;
LABEL_41:
  *&v57 = v55;
  *(&v57 + 1) = AssociatedConformanceWitness;
  v58 = &protocol witness table for Int;
  v59 = MEMORY[0x1E69E6540];
  v40 = type metadata accessor for CRExtensible(0, &v57);
  CRExtensible.rawValue.getter(v40, &v60);
  v41 = *(a1 + 16);
  if (v60)
  {
    if (v41)
    {
      v42 = swift_getAssociatedTypeWitness();
      v44 = *(a4 + 8);
      *&v57 = *a4;
      v43 = v57;
      *(&v57 + 1) = v44;
      v52 = *(*v41 + 200);

      sub_1ADDD86D8(v43, v44);
      v45 = swift_getAssociatedConformanceWitness();
      v52(v42, &v57, a1, 0, v42, v45);
      if (v7)
      {
        goto LABEL_47;
      }

LABEL_49:
      sub_1ADDCC35C(v57, *(&v57 + 1));

      goto LABEL_12;
    }

    goto LABEL_53;
  }

  if (v41)
  {
    v46 = swift_getAssociatedTypeWitness();
    v48 = *(a4 + 8);
    *&v57 = *a4;
    v47 = v57;
    *(&v57 + 1) = v48;
    v53 = *(*v41 + 200);

    sub_1ADDD86D8(v47, v48);
    v49 = swift_getAssociatedConformanceWitness();
    v53(v46, &v57, a1, 0, v46, v49);
    if (v7)
    {
LABEL_47:
      sub_1ADDCC35C(v57, *(&v57 + 1));

      sub_1ADDCC35C(*a4, *(a4 + 8));
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_54:
  __break(1u);
}

uint64_t SharedTagged_2.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_2.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_2.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_2.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_2, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_2, a5);
}

uint64_t SharedTagged_2.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_2(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_2(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

uint64_t SharedTagged_2.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 0;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_2(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 1;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_2(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

uint64_t SharedTagged_2.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 0;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_2(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 1;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_2(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

uint64_t SharedTagged_2.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = *a1;
  v9 = *(type metadata accessor for WeakTagged_2(0, a2, a3, a5) + 36);
  v11 = *(type metadata accessor for SharedTagged_2(0, a2, a3, v10) + 36);
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedConformanceWitness();
  v14[2] = &protocol witness table for Int;
  v14[3] = MEMORY[0x1E69E6540];
  v12 = type metadata accessor for CRExtensible(0, v14);
  return (*(*(v12 - 8) + 32))(&a4[v11], &a1[v9], v12);
}

uint64_t SharedTagged_2.unknown.getter@<X0>(__int128 *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_i64[0] >= 2)
  {
    v8 = *v2;
    v9 = v3[1];
    v11.n128_u64[0] = v8;
    v11.n128_u64[1] = v9;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12;
    result = sub_1ADDD86D8(v8, v9);
    v7 = v10;
  }

  else
  {
    v7 = xmmword_1AE2427C0;
  }

  *a2 = v7;
  return result;
}

uint64_t SharedTagged_2.any.getter@<X0>(__n128 *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  CRExtensible.rawValue.getter(v5, &v15);
  v6 = *v2;
  v7 = v3[1];
  v12.n128_u64[0] = v6;
  v12.n128_u64[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v6, v7);
}

uint64_t SharedTagged_2.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v30 = a4;
  v32 = a1;
  v33 = a3;
  v34 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29[2] = v29 - v8;
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v9);
  v29[1] = v29 - v10;
  v11 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v11);
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36.n128_u64[0] = v12;
  v36.n128_u64[1] = AssociatedConformanceWitness;
  v37 = &protocol witness table for Int;
  v38 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v36);
  v15 = v30;
  CRExtensible.rawValue.getter(v14, &v39);
  v31 = v15 + 8;
  if (v39 == 1)
  {
    v22 = v6[1];
    v35.n128_u64[0] = *v6;
    v21 = v35.n128_u64[0];
    v35.n128_u64[1] = v22;
    v23 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v35, &v36);
    v35 = v36;
    v24 = v15;
    v25 = *(v15 + 8);
    sub_1ADDD86D8(v21, v22);
    v25(&v35, v9, v23, v33, v24);
    sub_1ADDCC35C(v35.n128_i64[0], v35.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    v17 = v6[1];
    v35.n128_u64[0] = *v6;
    v16 = v35.n128_u64[0];
    v35.n128_u64[1] = v17;
    if (v39)
    {
      v26 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v35, &v36);
      v35 = v36;
      v27 = *(v15 + 8);
      sub_1ADDD86D8(v16, v17);
      v27(&v35, AssociatedTypeWitness, v26, v33, v15);
    }

    else
    {
      v18 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v35, &v36);
      v35 = v36;
      v19 = v15;
      v20 = *(v15 + 8);
      sub_1ADDD86D8(v16, v17);
      v20(&v35, v11, v18, v33, v19);
    }

    sub_1ADDCC35C(v35.n128_i64[0], v35.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEE2448@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v34 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32[2] = v32 - v6;
  v7 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v7);
  v32[1] = v32 - v8;
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v9);
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36.n128_u64[0] = v10;
  v36.n128_u64[1] = AssociatedConformanceWitness;
  v37 = &protocol witness table for Int;
  v38 = MEMORY[0x1E69E6540];
  v12 = type metadata accessor for CRExtensible(0, &v36);
  CRExtensible.rawValue.getter(v12, &v39);
  if (v39 == 1)
  {
    v20 = v3[1];
    v35.n128_u64[0] = *v4;
    v19 = v35.n128_u64[0];
    v35.n128_u64[1] = v20;
    v21 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v35, &v36);
    v22 = v36;
    v35 = v36;
    sub_1ADDD86D8(v19, v20);
    v24 = type metadata accessor for Ref(0, v7, v21, v23);
    sub_1AE002018(v33, v24);
    sub_1ADDCC35C(v22.n128_i64[0], v22.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    if (v39)
    {
      v26 = v3[1];
      v35.n128_u64[0] = *v4;
      v25 = v35.n128_u64[0];
      v35.n128_u64[1] = v26;
      v27 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v35, &v36);
      v28 = v36;
      v35 = v36;
      sub_1ADDD86D8(v25, v26);
      v30 = type metadata accessor for Ref(0, AssociatedTypeWitness, v27, v29);
      sub_1AE002018(v33, v30);
      sub_1ADDCC35C(v28.n128_i64[0], v28.n128_u64[1]);
    }

    else
    {
      v14 = v3[1];
      v35.n128_u64[0] = *v3;
      v13 = v35.n128_u64[0];
      v35.n128_u64[1] = v14;
      v15 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v35, &v36);
      v16 = v36;
      v35 = v36;
      sub_1ADDD86D8(v13, v14);
      v18 = type metadata accessor for Ref(0, v9, v15, v17);
      sub_1AE002018(v33, v18);
      sub_1ADDCC35C(v16.n128_i64[0], v16.n128_u64[1]);
    }

    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEE2870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v47 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v41 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v41 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v49 = swift_getAssociatedTypeWitness();
  v12 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v41 - v13;
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53.n128_u64[0] = v15;
  v53.n128_u64[1] = AssociatedConformanceWitness;
  v54 = &protocol witness table for Int;
  v55 = MEMORY[0x1E69E6540];
  v17 = type metadata accessor for CRExtensible(0, &v53);
  CRExtensible.rawValue.getter(v17, &v56);
  v48 = v12 + 16;
  if (v56 == 1)
  {
    v27 = *v3;
    v26 = v4[1];
    v52.n128_u64[0] = v27;
    v52.n128_u64[1] = v26;
    v28 = v44;
    v29 = swift_getAssociatedConformanceWitness();
    v30 = Ref.init(id:)(&v52, &v53);
    v31 = v53;
    v32 = v51;
    v33 = v49;
    (*(v12 + 16))(v14, v51, v49, v30);
    sub_1ADDD86D8(v27, v26);
    v34 = v42;
    swift_dynamicCast();
    v52 = v31;
    sub_1ADECCBCC(v34, &v52, v28, v29);
    v35 = v43;
  }

  else
  {
    if (!v56)
    {
      v19 = *v3;
      v18 = v4[1];
      v52.n128_u64[0] = v19;
      v52.n128_u64[1] = v18;
      v20 = swift_getAssociatedConformanceWitness();
      v21 = Ref.init(id:)(&v52, &v53);
      v22 = v53.n128_u64[1];
      v47 = v53.n128_u64[0];
      v23 = v51;
      v24 = v49;
      (*(v12 + 16))(v14, v51, v49, v21);
      sub_1ADDD86D8(v19, v18);
      swift_dynamicCast();
      v52.n128_u64[0] = v47;
      v52.n128_u64[1] = v22;
      sub_1ADECCBCC(v11, &v52, v9, v20);
      (*(v41 + 8))(v11, v9);

      return (*(v12 + 8))(v23, v24);
    }

    v37 = *v3;
    v36 = v4[1];
    v52.n128_u64[0] = v37;
    v52.n128_u64[1] = v36;
    v28 = v47;
    v38 = swift_getAssociatedConformanceWitness();
    v39 = Ref.init(id:)(&v52, &v53);
    v40 = v53;
    v32 = v51;
    v33 = v49;
    (*(v12 + 16))(v14, v51, v49, v39);
    sub_1ADDD86D8(v37, v36);
    v34 = v45;
    swift_dynamicCast();
    v52 = v40;
    sub_1ADECCBCC(v34, &v52, v28, v38);
    v35 = v46;
  }

  (*(v35 + 8))(v34, v28);

  return (*(v12 + 8))(v32, v33);
}

double sub_1ADEE2E14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = type metadata accessor for SharedTagged_2(0, *(a3 + a4 - 32), *(a3 + a4 - 16), a4);

  sub_1ADF4A990(a1, v5, v6, &protocol requirements base descriptor for Tagged_2, &associated type descriptor for Tagged_2.AnyType, sub_1ADEE2870);

  return result;
}

uint64_t SharedTagged_2.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_2, &associated type descriptor for Tagged_2.AnyType, sub_1ADEE2870);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*SharedTagged_2.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  SharedTagged_2.subscript.getter(a2, a3);
  return sub_1ADEE3098;
}

void sub_1ADEE30D4(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = (*a1)[5];
  v10 = (*a1)[6];
  v11 = (*a1)[3];
  v12 = (*a1)[4];
  v13 = (*a1)[1];
  v14 = **a1;
  if (a2)
  {
    (*(v12 + 16))((*a1)[5], v10, v11);

    a6(v9, v14, v13, a3, a4, a5);

    v15 = *(v12 + 8);
    v15(v9, v11);
    v15(v10, v11);
  }

  else
  {

    a6(v10, v14, v13, a3, a4, a5);

    (*(v12 + 8))(v10, v11);
  }

  free(v10);
  free(v9);

  free(v8);
}

uint64_t sub_1ADEE3268@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a5)(char *, uint64_t *, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v26 = a5;
  v7 = v6;
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = &protocol witness table for Int;
  v30 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &AssociatedTypeWitness);
  v14 = *(v13 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = *a1;
  if (!*(v18 + 16))
  {
    return (*(*(a2 - 8) + 16))(a6, v7, a2, v15);
  }

  v19 = sub_1ADDD878C(*v7, v7[1], MEMORY[0x1E6969048], sub_1ADDDE7F8);
  if ((v20 & 1) == 0)
  {
    return (*(*(a2 - 8) + 16))(a6, v7, a2, v15);
  }

  v21 = (*(v18 + 56) + 16 * v19);
  v22 = *v21;
  v23 = v21[1];
  (*(v14 + 16))(v17, v7 + *(a2 + 36), v13);
  AssociatedTypeWitness = v22;
  AssociatedConformanceWitness = v23;
  v26(v17, &AssociatedTypeWitness, v12, v11);
  return sub_1ADDD86D8(v22, v23);
}

uint64_t sub_1ADEE3494(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_1AE23E31C();
  a2(v5, a1);
  return sub_1AE23E34C();
}

uint64_t SharedTagged_3.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_3.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_3.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_3.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_3, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_3, a5);
}

uint64_t SharedTagged_3.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_3(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_3(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_3(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

uint64_t SharedTagged_3.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 0;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_3(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 1;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_3(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 2;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_3(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

uint64_t SharedTagged_3.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 0;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_3(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 1;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_3(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 2;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_3(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

uint64_t SharedTagged_3.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = *a1;
  v9 = *(type metadata accessor for WeakTagged_3(0, a2, a3, a5) + 36);
  v11 = *(type metadata accessor for SharedTagged_3(0, a2, a3, v10) + 36);
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedConformanceWitness();
  v14[2] = &protocol witness table for Int;
  v14[3] = MEMORY[0x1E69E6540];
  v12 = type metadata accessor for CRExtensible(0, v14);
  return (*(*(v12 - 8) + 32))(&a4[v11], &a1[v9], v12);
}

uint64_t SharedTagged_3.tagged1.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0])
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  else
  {
    v9 = *v2;
    v10 = v3[1];
    v11.n128_u64[0] = v9;
    v11.n128_u64[1] = v10;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v8 = v12.n128_u64[1];
    v7 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v9, v10);
  }

  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t SharedTagged_3.tagged2.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0] == 1)
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12.n128_u64[1];
    v9 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v7, v8);
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t SharedTagged_3.tagged3.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0] == 2)
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12.n128_u64[1];
    v9 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v7, v8);
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t SharedTagged_3.unknown.getter@<X0>(__int128 *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_i64[0] >= 3)
  {
    v8 = *v2;
    v9 = v3[1];
    v11.n128_u64[0] = v8;
    v11.n128_u64[1] = v9;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12;
    result = sub_1ADDD86D8(v8, v9);
    v7 = v10;
  }

  else
  {
    v7 = xmmword_1AE2427C0;
  }

  *a2 = v7;
  return result;
}

uint64_t SharedTagged_3.any.getter@<X0>(__n128 *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  CRExtensible.rawValue.getter(v5, &v15);
  v6 = *v2;
  v7 = v3[1];
  v12.n128_u64[0] = v6;
  v12.n128_u64[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v6, v7);
}

uint64_t SharedTagged_3.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v42 = a1;
  v43 = a3;
  v45 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = v37 - v8;
  v38 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v38);
  v37[1] = v37 - v9;
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v10);
  v37[0] = v37 - v11;
  v12 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47.n128_u64[0] = v13;
  v47.n128_u64[1] = AssociatedConformanceWitness;
  v48 = &protocol witness table for Int;
  v49 = MEMORY[0x1E69E6540];
  v15 = type metadata accessor for CRExtensible(0, &v47);
  CRExtensible.rawValue.getter(v15, &v50);
  v44 = a4;
  v41 = a4 + 8;
  if (v50 == 2)
  {
    v27 = v6[1];
    v46.n128_u64[0] = *v6;
    v26 = v46.n128_u64[0];
    v46.n128_u64[1] = v27;
    v28 = v38;
    v29 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v46, &v47);
    v46 = v47;
    v30 = v44;
    v31 = *(v44 + 8);
    sub_1ADDD86D8(v26, v27);
    v31(&v46, v28, v29, v43, v30);
    sub_1ADDCC35C(v46.n128_i64[0], v46.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else if (v50 == 1)
  {
    v22 = v6[1];
    v46.n128_u64[0] = *v6;
    v21 = v46.n128_u64[0];
    v46.n128_u64[1] = v22;
    v23 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v46, &v47);
    v46 = v47;
    v24 = v44;
    v25 = *(v44 + 8);
    sub_1ADDD86D8(v21, v22);
    v25(&v46, v10, v23, v43, v24);
    sub_1ADDCC35C(v46.n128_i64[0], v46.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    v17 = v6[1];
    v46.n128_u64[0] = *v6;
    v16 = v46.n128_u64[0];
    v46.n128_u64[1] = v17;
    if (v50)
    {
      v32 = AssociatedTypeWitness;
      v33 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v46, &v47);
      v46 = v47;
      v34 = v44;
      v35 = *(v44 + 8);
      sub_1ADDD86D8(v16, v17);
      v35(&v46, v32, v33, v43, v34);
    }

    else
    {
      v18 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v46, &v47);
      v46 = v47;
      v19 = v44;
      v20 = *(v44 + 8);
      sub_1ADDD86D8(v16, v17);
      v20(&v46, v12, v18, v43, v19);
    }

    sub_1ADDCC35C(v46.n128_i64[0], v46.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEE5DFC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a1;
  v41 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v38[3] = v38 - v5;
  v6 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v6);
  v38[2] = v38 - v7;
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v8);
  v38[1] = v38 - v9;
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v10);
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43.n128_u64[0] = v11;
  v43.n128_u64[1] = AssociatedConformanceWitness;
  v44 = &protocol witness table for Int;
  v45 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v43);
  CRExtensible.rawValue.getter(v13, &v46);
  if (v46 == 2)
  {
    v27 = v3[1];
    v42.n128_u64[0] = *v4;
    v26 = v42.n128_u64[0];
    v42.n128_u64[1] = v27;
    v28 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v42, &v43);
    v29 = v43;
    v42 = v43;
    sub_1ADDD86D8(v26, v27);
    v31 = type metadata accessor for Ref(0, v6, v28, v30);
    sub_1AE002018(v40, v31);
    sub_1ADDCC35C(v29.n128_i64[0], v29.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else if (v46 == 1)
  {
    v21 = v3[1];
    v42.n128_u64[0] = *v3;
    v20 = v42.n128_u64[0];
    v42.n128_u64[1] = v21;
    v22 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v42, &v43);
    v23 = v43;
    v42 = v43;
    sub_1ADDD86D8(v20, v21);
    v25 = type metadata accessor for Ref(0, v8, v22, v24);
    sub_1AE002018(v40, v25);
    sub_1ADDCC35C(v23.n128_i64[0], v23.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    v15 = v3[1];
    v42.n128_u64[0] = *v4;
    v14 = v42.n128_u64[0];
    v42.n128_u64[1] = v15;
    if (v46)
    {
      v32 = AssociatedTypeWitness;
      v33 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v42, &v43);
      v34 = v43;
      v42 = v43;
      sub_1ADDD86D8(v14, v15);
      v36 = type metadata accessor for Ref(0, v32, v33, v35);
      sub_1AE002018(v40, v36);
      sub_1ADDCC35C(v34.n128_i64[0], v34.n128_u64[1]);
    }

    else
    {
      v16 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v42, &v43);
      v17 = v43;
      v42 = v43;
      sub_1ADDD86D8(v14, v15);
      v19 = type metadata accessor for Ref(0, v10, v16, v18);
      sub_1AE002018(v40, v19);
      sub_1ADDCC35C(v17.n128_i64[0], v17.n128_u64[1]);
    }

    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEE6350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a2;
  v62 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v58 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = &v49 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v49 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v49 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v60 = swift_getAssociatedTypeWitness();
  v14 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v16 = &v49 - v15;
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64.n128_u64[0] = v17;
  v64.n128_u64[1] = AssociatedConformanceWitness;
  v65 = &protocol witness table for Int;
  v66 = MEMORY[0x1E69E6540];
  v19 = type metadata accessor for CRExtensible(0, &v64);
  CRExtensible.rawValue.getter(v19, &v67);
  v20 = v14;
  v59 = v14 + 16;
  switch(v67)
  {
    case 2:
      v39 = v3[1];
      v63.n128_u64[0] = *v4;
      v40 = v63.n128_u64[0];
      v63.n128_u64[1] = v39;
      v31 = v55;
      v41 = swift_getAssociatedConformanceWitness();
      v42 = Ref.init(id:)(&v63, &v64);
      v43 = v64;
      v35 = v62;
      v36 = v60;
      (*(v20 + 16))(v16, v62, v60, v42);
      sub_1ADDD86D8(v40, v39);
      v37 = v53;
      swift_dynamicCast();
      v63 = v43;
      sub_1ADECCBCC(v37, &v63, v31, v41);
      v38 = v54;
      break;
    case 1:
      v29 = v3[1];
      v63.n128_u64[0] = *v4;
      v30 = v63.n128_u64[0];
      v63.n128_u64[1] = v29;
      v31 = v52;
      v32 = swift_getAssociatedConformanceWitness();
      v33 = Ref.init(id:)(&v63, &v64);
      v34 = v64;
      v35 = v62;
      v36 = v60;
      (*(v20 + 16))(v16, v62, v60, v33);
      sub_1ADDD86D8(v30, v29);
      v37 = v50;
      swift_dynamicCast();
      v63 = v34;
      sub_1ADECCBCC(v37, &v63, v31, v32);
      v38 = v51;
      break;
    case 0:
      v21 = v3[1];
      v63.n128_u64[0] = *v4;
      v22 = v63.n128_u64[0];
      v63.n128_u64[1] = v21;
      v23 = swift_getAssociatedConformanceWitness();
      v24 = Ref.init(id:)(&v63, &v64);
      v25 = v64.n128_u64[1];
      v58 = v64.n128_u64[0];
      v26 = v62;
      v27 = v60;
      (*(v20 + 16))(v16, v62, v60, v24);
      sub_1ADDD86D8(v22, v21);
      swift_dynamicCast();
      v63.n128_u64[0] = v58;
      v63.n128_u64[1] = v25;
      sub_1ADECCBCC(v13, &v63, v11, v23);
      (*(v49 + 8))(v13, v11);

      return (*(v20 + 8))(v26, v27);
    default:
      v44 = v3[1];
      v63.n128_u64[0] = *v4;
      v45 = v63.n128_u64[0];
      v63.n128_u64[1] = v44;
      v31 = v58;
      v46 = swift_getAssociatedConformanceWitness();
      v47 = Ref.init(id:)(&v63, &v64);
      v48 = v64;
      v35 = v62;
      v36 = v60;
      (*(v20 + 16))(v16, v62, v60, v47);
      sub_1ADDD86D8(v45, v44);
      v37 = v56;
      swift_dynamicCast();
      v63 = v48;
      sub_1ADECCBCC(v37, &v63, v31, v46);
      v38 = v57;
      break;
  }

  (*(v38 + 8))(v37, v31);

  return (*(v20 + 8))(v35, v36);
}

double sub_1ADEE6A40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = type metadata accessor for SharedTagged_3(0, *(a3 + a4 - 32), *(a3 + a4 - 16), a4);

  sub_1ADF4A990(a1, v5, v6, &protocol requirements base descriptor for Tagged_3, &associated type descriptor for Tagged_3.AnyType, sub_1ADEE6350);

  return result;
}

uint64_t SharedTagged_3.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_3, &associated type descriptor for Tagged_3.AnyType, sub_1ADEE6350);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*SharedTagged_3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  SharedTagged_3.subscript.getter(a2, a3);
  return sub_1ADEE6CC4;
}

void SharedTagged_3.visitReferences(_:)(void *a1, uint64_t a2)
{
  v13.n128_u64[0] = swift_getAssociatedTypeWitness();
  v13.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v14 = &protocol witness table for Int;
  v15 = MEMORY[0x1E69E6540];
  v4 = type metadata accessor for CRExtensible(0, &v13);
  CRExtensible.rawValue.getter(v4, &v16);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = v2[1];
  v12.n128_u64[0] = *v2;
  v8 = v12.n128_u64[0];
  v12.n128_u64[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v12, &v13);
  v12 = v13;
  v11 = *(v5 + 16);
  sub_1ADDD86D8(v8, v7);
  v11(&v12, AssociatedTypeWitness, AssociatedConformanceWitness, v6, v5);
  sub_1ADDCC35C(v12.n128_i64[0], v12.n128_u64[1]);
}

void SharedTagged_3.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v20 = 0xD000000000000017;
    *(v20 + 8) = 0x80000001AE25FB70;
    *(v20 + 16) = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v7 = v4;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v11 = *(v6 + 16);
  if ((~v11 & 0xF000000000000007) != 0 && ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 0xB)
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v12 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v52 = v12[2];
  v14 = *(type metadata accessor for SharedTagged_3(0, a2, a3, v13) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v50 = AssociatedTypeWitness;
  v51 = v14;
  v49 = AssociatedConformanceWitness;
  CRExtensible.init(rawValue:)(&v52, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a4 + v14));
  if (*(a1 + 57) >= 3u)
  {
    v17 = *(a1 + 72);
    if (!v17)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v18 = *(v17 + 16);
    if ((~v18 & 0xF000000000000007) != 0 && ((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xB)
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v19 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v19[3])
    {
      inited = v19[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v22 = *(inited + 16);
    sub_1ADE51B2C(v22);

    if ((~v22 & 0xF000000000000007) != 0)
    {
      if (((v22 >> 59) & 0x1E | (v22 >> 2) & 1) == 0x10)
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v22);
        v27 = *(a1 + 40);
        v28 = *(v27 + 16);
        if (v28 && v23 < v28)
        {
          v29 = *(v27 + 16 * v23 + 32);
          *a4 = v29;
          sub_1ADDD86D8(v29, *(&v29 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40(v24, v25, v26);
        swift_allocError();
        *v47 = 0xD000000000000013;
        *(v47 + 8) = 0x80000001AE25FC60;
        *(v47 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_53:
        *&v52 = v50;
        *(&v52 + 1) = v49;
        v53 = &protocol witness table for Int;
        v54 = MEMORY[0x1E69E6540];
        v46 = type metadata accessor for CRExtensible(0, &v52);
        (*(*(v46 - 8) + 8))(a4 + v51, v46);
        return;
      }

      sub_1ADE51B48(v22);
    }
  }

  v30 = *(a1 + 72);
  if (!v30)
  {
    __break(1u);
    goto LABEL_57;
  }

  v31 = *(v30 + 16);
  if ((~v31 & 0xF000000000000007) != 0 && ((v31 >> 59) & 0x1E | (v31 >> 2) & 1) == 0xB)
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v32 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v33 = v32[3];
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v34 = swift_initStaticObject();
  }

  v35 = *(v34 + 16);
  if ((~v35 & 0xF000000000000007) != 0 && ((v35 >> 59) & 0x1E | (v35 >> 2) & 1) == 7)
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v36 = swift_initStaticObject();
  }

  swift_beginAccess();
  v37 = v36[8];
  if (v37)
  {
    v39 = v36[9];
    v38 = v36[10];

    sub_1ADDD86D8(v39, v38);
  }

  else
  {
    v39 = 0;
    v38 = 0xC000000000000000;
    v37 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDE94BC(v37, v39, v38, &v52);
  if (v7)
  {
    goto LABEL_39;
  }

  *a4 = v52;
LABEL_41:
  *&v52 = v50;
  *(&v52 + 1) = AssociatedConformanceWitness;
  v53 = &protocol witness table for Int;
  v54 = MEMORY[0x1E69E6540];
  v40 = type metadata accessor for CRExtensible(0, &v52);
  CRExtensible.rawValue.getter(v40, &v55);
  v41 = *(a1 + 16);
  switch(v55)
  {
    case 2:
      if (v41)
      {
        goto LABEL_51;
      }

      goto LABEL_60;
    case 1:
      if (v41)
      {
        goto LABEL_51;
      }

      goto LABEL_58;
    case 0:
      if (v41)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
  }

  if (v41)
  {
LABEL_51:
    v42 = swift_getAssociatedTypeWitness();
    v44 = *(a4 + 8);
    *&v52 = *a4;
    v43 = v52;
    *(&v52 + 1) = v44;
    v48 = *(*v41 + 200);

    sub_1ADDD86D8(v43, v44);
    v45 = swift_getAssociatedConformanceWitness();
    v48(v42, &v52, a1, 0, v42, v45);
    if (v7)
    {
      sub_1ADDCC35C(v52, *(&v52 + 1));

      sub_1ADDCC35C(*a4, *(a4 + 8));
      goto LABEL_53;
    }

    sub_1ADDCC35C(v52, *(&v52 + 1));

LABEL_12:

    return;
  }

LABEL_61:
  __break(1u);
}

uint64_t SharedTagged_4.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_4.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_4.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_4.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_4, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_4, a5);
}

uint64_t SharedTagged_4.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_4(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_4(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_4(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 3;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_4(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

uint64_t SharedTagged_4.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 0;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_4(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 1;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_4(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 2;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_4(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 3;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_4(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

uint64_t SharedTagged_4.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 0;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_4(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 1;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_4(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 2;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_4(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 3;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_4(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

uint64_t SharedTagged_4.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = *a1;
  v9 = *(type metadata accessor for WeakTagged_4(0, a2, a3, a5) + 36);
  v11 = *(type metadata accessor for SharedTagged_4(0, a2, a3, v10) + 36);
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedConformanceWitness();
  v14[2] = &protocol witness table for Int;
  v14[3] = MEMORY[0x1E69E6540];
  v12 = type metadata accessor for CRExtensible(0, v14);
  return (*(*(v12 - 8) + 32))(&a4[v11], &a1[v9], v12);
}

uint64_t SharedTagged_4.tagged1.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0])
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  else
  {
    v9 = *v2;
    v10 = v3[1];
    v11.n128_u64[0] = v9;
    v11.n128_u64[1] = v10;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v8 = v12.n128_u64[1];
    v7 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v9, v10);
  }

  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t SharedTagged_4.tagged2.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0] == 1)
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12.n128_u64[1];
    v9 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v7, v8);
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t SharedTagged_4.tagged3.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0] == 2)
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12.n128_u64[1];
    v9 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v7, v8);
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t SharedTagged_4.tagged4.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0] == 3)
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12.n128_u64[1];
    v9 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v7, v8);
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t SharedTagged_4.unknown.getter@<X0>(__int128 *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_i64[0] >= 4)
  {
    v8 = *v2;
    v9 = v3[1];
    v11.n128_u64[0] = v8;
    v11.n128_u64[1] = v9;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12;
    result = sub_1ADDD86D8(v8, v9);
    v7 = v10;
  }

  else
  {
    v7 = xmmword_1AE2427C0;
  }

  *a2 = v7;
  return result;
}

uint64_t SharedTagged_4.any.getter@<X0>(__n128 *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  CRExtensible.rawValue.getter(v5, &v15);
  v6 = *v2;
  v7 = v3[1];
  v12.n128_u64[0] = v6;
  v12.n128_u64[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v6, v7);
}

uint64_t SharedTagged_4.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v45 = a1;
  v46 = a3;
  v48 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = v38 - v8;
  v41 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v41);
  v40 = v38 - v9;
  v39 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v39);
  v38[1] = v38 - v10;
  v11 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v11);
  v38[0] = v38 - v12;
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v13);
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50.n128_u64[0] = v14;
  v50.n128_u64[1] = AssociatedConformanceWitness;
  v51 = &protocol witness table for Int;
  v52 = MEMORY[0x1E69E6540];
  v16 = type metadata accessor for CRExtensible(0, &v50);
  CRExtensible.rawValue.getter(v16, &v53);
  v47 = a4;
  v44 = a4 + 8;
  if (v53 > 1)
  {
    if (v53 == 2)
    {
      v32 = *v6;
      v31 = v6[1];
      v49.n128_u64[0] = v32;
      v49.n128_u64[1] = v31;
      v33 = v39;
      v34 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v49, &v50);
      v49 = v50;
      v35 = v47;
      v36 = *(v47 + 8);
      sub_1ADDD86D8(v32, v31);
      v36(&v49, v33, v34, v46, v35);
      goto LABEL_12;
    }

    if (v53 == 3)
    {
      v23 = *v6;
      v22 = v6[1];
      v49.n128_u64[0] = v23;
      v49.n128_u64[1] = v22;
      v11 = v41;
      v19 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v49, &v50);
      v49 = v50;
      v20 = v47;
      v21 = *(v47 + 8);
      sub_1ADDD86D8(v23, v22);
      goto LABEL_9;
    }

LABEL_8:
    v25 = *v6;
    v24 = v6[1];
    v49.n128_u64[0] = v25;
    v49.n128_u64[1] = v24;
    v11 = AssociatedTypeWitness;
    v19 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v49, &v50);
    v49 = v50;
    v20 = v47;
    v21 = *(v47 + 8);
    sub_1ADDD86D8(v25, v24);
    goto LABEL_9;
  }

  if (v53)
  {
    if (v53 == 1)
    {
      v18 = *v6;
      v17 = v6[1];
      v49.n128_u64[0] = v18;
      v49.n128_u64[1] = v17;
      v19 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v49, &v50);
      v49 = v50;
      v20 = v47;
      v21 = *(v47 + 8);
      sub_1ADDD86D8(v18, v17);
LABEL_9:
      v21(&v49, v11, v19, v46, v20);
LABEL_12:
      sub_1ADDCC35C(v49.n128_i64[0], v49.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    goto LABEL_8;
  }

  v27 = *v6;
  v26 = v6[1];
  v49.n128_u64[0] = v27;
  v49.n128_u64[1] = v26;
  v28 = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v49, &v50);
  v49 = v50;
  v29 = v47;
  v30 = *(v47 + 8);
  sub_1ADDD86D8(v27, v26);
  v30(&v49, v13, v28, v46, v29);
  sub_1ADDCC35C(v49.n128_i64[0], v49.n128_u64[1]);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADEEAB30@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v52 = a1;
  v53 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = v46 - v5;
  v49 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v49);
  v48 = v46 - v6;
  v47 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v47);
  v46[1] = v46 - v7;
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v8);
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v9);
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55.n128_u64[0] = v10;
  v55.n128_u64[1] = AssociatedConformanceWitness;
  v56 = &protocol witness table for Int;
  v57 = MEMORY[0x1E69E6540];
  v12 = type metadata accessor for CRExtensible(0, &v55);
  CRExtensible.rawValue.getter(v12, &v58);
  if (v58 > 1)
  {
    if (v58 == 2)
    {
      v39 = v3[1];
      v54.n128_u64[0] = *v3;
      v38 = v54.n128_u64[0];
      v54.n128_u64[1] = v39;
      v40 = v47;
      v41 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v54, &v55);
      v42 = v55;
      v54 = v55;
      sub_1ADDD86D8(v38, v39);
      v44 = type metadata accessor for Ref(0, v40, v41, v43);
      sub_1AE002018(v52, v44);
      sub_1ADDCC35C(v42.n128_i64[0], v42.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    if (v58 == 3)
    {
      v20 = v3[1];
      v54.n128_u64[0] = *v4;
      v19 = v54.n128_u64[0];
      v54.n128_u64[1] = v20;
      v21 = v49;
      v22 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v54, &v55);
      v24 = v55.n128_u64[1];
      v23 = v55.n128_u64[0];
      v54 = v55;
      sub_1ADDD86D8(v19, v20);
      v26 = type metadata accessor for Ref(0, v21, v22, v25);
LABEL_9:
      sub_1AE002018(v52, v26);
      sub_1ADDCC35C(v23, v24);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

LABEL_8:
    v28 = v3[1];
    v54.n128_u64[0] = *v4;
    v27 = v54.n128_u64[0];
    v54.n128_u64[1] = v28;
    v29 = AssociatedTypeWitness;
    v30 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v54, &v55);
    v24 = v55.n128_u64[1];
    v23 = v55.n128_u64[0];
    v54 = v55;
    sub_1ADDD86D8(v27, v28);
    v26 = type metadata accessor for Ref(0, v29, v30, v31);
    goto LABEL_9;
  }

  if (!v58)
  {
    v33 = v3[1];
    v54.n128_u64[0] = *v4;
    v32 = v54.n128_u64[0];
    v54.n128_u64[1] = v33;
    v34 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v54, &v55);
    v35 = v55;
    v54 = v55;
    sub_1ADDD86D8(v32, v33);
    v37 = type metadata accessor for Ref(0, v9, v34, v36);
    sub_1AE002018(v52, v37);
    sub_1ADDCC35C(v35.n128_i64[0], v35.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  if (v58 != 1)
  {
    goto LABEL_8;
  }

  v14 = v3[1];
  v54.n128_u64[0] = *v4;
  v13 = v54.n128_u64[0];
  v54.n128_u64[1] = v14;
  v15 = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v54, &v55);
  v16 = v55;
  v54 = v55;
  sub_1ADDD86D8(v13, v14);
  v18 = type metadata accessor for Ref(0, v8, v15, v17);
  sub_1AE002018(v52, v18);
  sub_1ADDCC35C(v16.n128_i64[0], v16.n128_u64[1]);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADEEB16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a2;
  v75 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  v70 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v68 = &v58 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v58 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v58 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v61 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v58 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v73 = swift_getAssociatedTypeWitness();
  v16 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v58 - v17;
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v77.n128_u64[0] = v18;
  v77.n128_u64[1] = AssociatedConformanceWitness;
  v78 = &protocol witness table for Int;
  v79 = MEMORY[0x1E69E6540];
  v20 = type metadata accessor for CRExtensible(0, &v77);
  CRExtensible.rawValue.getter(v20, &v80);
  v21 = v16;
  v71 = v16 + 16;
  if (v80 <= 1)
  {
    if (!v80)
    {
      v46 = v3[1];
      v76.n128_u64[0] = *v4;
      v47 = v76.n128_u64[0];
      v76.n128_u64[1] = v46;
      v48 = swift_getAssociatedConformanceWitness();
      v49 = Ref.init(id:)(&v76, &v77);
      v70 = v77.n128_u64[1];
      v50 = v77.n128_u64[0];
      v51 = v73;
      v52 = v75;
      (*(v21 + 16))(v72, v75, v73, v49);
      sub_1ADDD86D8(v47, v46);
      swift_dynamicCast();
      v76.n128_u64[0] = v50;
      v76.n128_u64[1] = v70;
      sub_1ADECCBCC(v15, &v76, v13, v48);
      (*(v59 + 8))(v15, v13);

      return (*(v21 + 8))(v52, v51);
    }

    if (v80 == 1)
    {
      v22 = v3[1];
      v76.n128_u64[0] = *v4;
      v23 = v76.n128_u64[0];
      v76.n128_u64[1] = v22;
      v24 = swift_getAssociatedConformanceWitness();
      v25 = Ref.init(id:)(&v76, &v77);
      v26 = v77;
      v27 = v73;
      v28 = v75;
      (*(v21 + 16))(v72, v75, v73, v25);
      sub_1ADDD86D8(v23, v22);
      v29 = v60;
      swift_dynamicCast();
      v76 = v26;
      sub_1ADECCBCC(v29, &v76, v11, v24);
      (*(v61 + 8))(v29, v11);

      return (*(v21 + 8))(v28, v27);
    }

LABEL_8:
    v41 = v3[1];
    v76.n128_u64[0] = *v4;
    v42 = v76.n128_u64[0];
    v76.n128_u64[1] = v41;
    v33 = v70;
    v43 = swift_getAssociatedConformanceWitness();
    v44 = Ref.init(id:)(&v76, &v77);
    v45 = v77;
    v37 = v73;
    v38 = v75;
    (*(v21 + 16))(v72, v75, v73, v44);
    sub_1ADDD86D8(v42, v41);
    v39 = v68;
    swift_dynamicCast();
    v76 = v45;
    sub_1ADECCBCC(v39, &v76, v33, v43);
    v40 = v69;
    goto LABEL_11;
  }

  if (v80 == 2)
  {
    v53 = v3[1];
    v76.n128_u64[0] = *v4;
    v54 = v76.n128_u64[0];
    v76.n128_u64[1] = v53;
    v33 = v64;
    v55 = swift_getAssociatedConformanceWitness();
    v56 = Ref.init(id:)(&v76, &v77);
    v57 = v77;
    v37 = v73;
    v38 = v75;
    (*(v21 + 16))(v72, v75, v73, v56);
    sub_1ADDD86D8(v54, v53);
    v39 = v62;
    swift_dynamicCast();
    v76 = v57;
    sub_1ADECCBCC(v39, &v76, v33, v55);
    v40 = v63;
    goto LABEL_11;
  }

  if (v80 != 3)
  {
    goto LABEL_8;
  }

  v31 = v3[1];
  v76.n128_u64[0] = *v4;
  v32 = v76.n128_u64[0];
  v76.n128_u64[1] = v31;
  v33 = v67;
  v34 = swift_getAssociatedConformanceWitness();
  v35 = Ref.init(id:)(&v76, &v77);
  v36 = v77;
  v37 = v73;
  v38 = v75;
  (*(v21 + 16))(v72, v75, v73, v35);
  sub_1ADDD86D8(v32, v31);
  v39 = v65;
  swift_dynamicCast();
  v76 = v36;
  sub_1ADECCBCC(v39, &v76, v33, v34);
  v40 = v66;
LABEL_11:
  (*(v40 + 8))(v39, v33);

  return (*(v21 + 8))(v38, v37);
}

double sub_1ADEEBA08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = type metadata accessor for SharedTagged_4(0, *(a3 + a4 - 32), *(a3 + a4 - 16), a4);

  sub_1ADF4A990(a1, v5, v6, &protocol requirements base descriptor for Tagged_4, &associated type descriptor for Tagged_4.AnyType, sub_1ADEEB16C);

  return result;
}

uint64_t SharedTagged_4.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_4, &associated type descriptor for Tagged_4.AnyType, sub_1ADEEB16C);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*SharedTagged_4.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  SharedTagged_4.subscript.getter(a2, a3);
  return sub_1ADEEBC8C;
}

void SharedTagged_4.visitReferences(_:)(void *a1, uint64_t a2)
{
  v13.n128_u64[0] = swift_getAssociatedTypeWitness();
  v13.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v14 = &protocol witness table for Int;
  v15 = MEMORY[0x1E69E6540];
  v4 = type metadata accessor for CRExtensible(0, &v13);
  CRExtensible.rawValue.getter(v4, &v16);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = v2[1];
  v12.n128_u64[0] = *v2;
  v8 = v12.n128_u64[0];
  v12.n128_u64[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v12, &v13);
  v12 = v13;
  v11 = *(v5 + 16);
  sub_1ADDD86D8(v8, v7);
  v11(&v12, AssociatedTypeWitness, AssociatedConformanceWitness, v6, v5);
  sub_1ADDCC35C(v12.n128_i64[0], v12.n128_u64[1]);
}

void SharedTagged_4.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v20 = 0xD000000000000017;
    *(v20 + 8) = 0x80000001AE25FB70;
    *(v20 + 16) = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v7 = v4;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v11 = *(v6 + 16);
  if ((~v11 & 0xF000000000000007) != 0 && ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 0xB)
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v12 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v52 = v12[2];
  v14 = *(type metadata accessor for SharedTagged_4(0, a2, a3, v13) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v50 = AssociatedTypeWitness;
  v51 = v14;
  v49 = AssociatedConformanceWitness;
  CRExtensible.init(rawValue:)(&v52, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a4 + v14));
  if (*(a1 + 57) >= 3u)
  {
    v17 = *(a1 + 72);
    if (!v17)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v18 = *(v17 + 16);
    if ((~v18 & 0xF000000000000007) != 0 && ((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xB)
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v19 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v19[3])
    {
      inited = v19[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v22 = *(inited + 16);
    sub_1ADE51B2C(v22);

    if ((~v22 & 0xF000000000000007) != 0)
    {
      if (((v22 >> 59) & 0x1E | (v22 >> 2) & 1) == 0x10)
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v22);
        v27 = *(a1 + 40);
        v28 = *(v27 + 16);
        if (v28 && v23 < v28)
        {
          v29 = *(v27 + 16 * v23 + 32);
          *a4 = v29;
          sub_1ADDD86D8(v29, *(&v29 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40(v24, v25, v26);
        swift_allocError();
        *v47 = 0xD000000000000013;
        *(v47 + 8) = 0x80000001AE25FC60;
        *(v47 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_57:
        *&v52 = v50;
        *(&v52 + 1) = v49;
        v53 = &protocol witness table for Int;
        v54 = MEMORY[0x1E69E6540];
        v46 = type metadata accessor for CRExtensible(0, &v52);
        (*(*(v46 - 8) + 8))(a4 + v51, v46);
        return;
      }

      sub_1ADE51B48(v22);
    }
  }

  v30 = *(a1 + 72);
  if (!v30)
  {
    __break(1u);
    goto LABEL_61;
  }

  v31 = *(v30 + 16);
  if ((~v31 & 0xF000000000000007) != 0 && ((v31 >> 59) & 0x1E | (v31 >> 2) & 1) == 0xB)
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v32 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v33 = v32[3];
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v34 = swift_initStaticObject();
  }

  v35 = *(v34 + 16);
  if ((~v35 & 0xF000000000000007) != 0 && ((v35 >> 59) & 0x1E | (v35 >> 2) & 1) == 7)
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v36 = swift_initStaticObject();
  }

  swift_beginAccess();
  v37 = v36[8];
  if (v37)
  {
    v39 = v36[9];
    v38 = v36[10];

    sub_1ADDD86D8(v39, v38);
  }

  else
  {
    v39 = 0;
    v38 = 0xC000000000000000;
    v37 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDE94BC(v37, v39, v38, &v52);
  if (v7)
  {
    goto LABEL_39;
  }

  *a4 = v52;
LABEL_41:
  *&v52 = v50;
  *(&v52 + 1) = AssociatedConformanceWitness;
  v53 = &protocol witness table for Int;
  v54 = MEMORY[0x1E69E6540];
  v40 = type metadata accessor for CRExtensible(0, &v52);
  CRExtensible.rawValue.getter(v40, &v55);
  v41 = *(a1 + 16);
  if (v55 <= 1)
  {
    if (!v55)
    {
      if (v41)
      {
        goto LABEL_55;
      }

      goto LABEL_65;
    }

    if (v55 == 1)
    {
      if (v41)
      {
        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_50;
  }

  if (v55 != 2)
  {
    if (v55 == 3)
    {
      if (v41)
      {
        goto LABEL_55;
      }

      goto LABEL_64;
    }

LABEL_50:
    if (v41)
    {
      goto LABEL_55;
    }

    goto LABEL_62;
  }

  if (v41)
  {
LABEL_55:
    v42 = swift_getAssociatedTypeWitness();
    v44 = *(a4 + 8);
    *&v52 = *a4;
    v43 = v52;
    *(&v52 + 1) = v44;
    v48 = *(*v41 + 200);

    sub_1ADDD86D8(v43, v44);
    v45 = swift_getAssociatedConformanceWitness();
    v48(v42, &v52, a1, 0, v42, v45);
    if (v7)
    {
      sub_1ADDCC35C(v52, *(&v52 + 1));

      sub_1ADDCC35C(*a4, *(a4 + 8));
      goto LABEL_57;
    }

    sub_1ADDCC35C(v52, *(&v52 + 1));

LABEL_12:

    return;
  }

LABEL_66:
  __break(1u);
}

uint64_t SharedTagged_5.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_5.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_5.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_5.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_5, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_5, a5);
}

uint64_t SharedTagged_5.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_5(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_5(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_5(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 3;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_5(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 4;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_5(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

uint64_t SharedTagged_5.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 0;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_5(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 1;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_5(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 2;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_5(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 3;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_5(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 4;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_5(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

uint64_t SharedTagged_5.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 0;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_5(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 1;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_5(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 2;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_5(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 3;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_5(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

{
  v29 = a2;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v33 = AssociatedTypeWitness;
  *(&v33 + 1) = AssociatedConformanceWitness;
  v34 = &protocol witness table for Int;
  v35 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v33);
  v25 = *(v14 - 8);
  v26 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a3;
  v18 = a3[1];
  v27 = a1;
  v31 = v17;
  v32 = v18;

  sub_1ADDD86D8(v17, v18);
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v29, v19, &v33);

  sub_1ADDE1588(v31, v32);
  *v30 = v33;
  *&v33 = 4;
  sub_1AE23CF7C();
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v19 - 8) + 8))(v29, v19);
    sub_1ADDCC35C(v17, v18);

    (*(v20 + 32))(v16, v13, AssociatedTypeWitness);
    v22 = v26;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_5(0, a4, a5, v23);
    return (*(v25 + 32))(&v30[*(v24 + 36)], v16, v22);
  }

  return result;
}

uint64_t SharedTagged_5.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = *a1;
  v9 = *(type metadata accessor for WeakTagged_5(0, a2, a3, a5) + 36);
  v11 = *(type metadata accessor for SharedTagged_5(0, a2, a3, v10) + 36);
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedConformanceWitness();
  v14[2] = &protocol witness table for Int;
  v14[3] = MEMORY[0x1E69E6540];
  v12 = type metadata accessor for CRExtensible(0, v14);
  return (*(*(v12 - 8) + 32))(&a4[v11], &a1[v9], v12);
}

uint64_t SharedTagged_5.tagged1.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0])
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  else
  {
    v9 = *v2;
    v10 = v3[1];
    v11.n128_u64[0] = v9;
    v11.n128_u64[1] = v10;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v8 = v12.n128_u64[1];
    v7 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v9, v10);
  }

  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t SharedTagged_5.tagged2.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0] == 1)
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12.n128_u64[1];
    v9 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v7, v8);
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t SharedTagged_5.tagged3.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0] == 2)
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12.n128_u64[1];
    v9 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v7, v8);
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t SharedTagged_5.tagged4.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0] == 3)
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12.n128_u64[1];
    v9 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v7, v8);
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t SharedTagged_5.tagged5.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0] == 4)
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12.n128_u64[1];
    v9 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v7, v8);
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t SharedTagged_5.unknown.getter@<X0>(__int128 *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_i64[0] >= 5)
  {
    v8 = *v2;
    v9 = v3[1];
    v11.n128_u64[0] = v8;
    v11.n128_u64[1] = v9;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12;
    result = sub_1ADDD86D8(v8, v9);
    v7 = v10;
  }

  else
  {
    v7 = xmmword_1AE2427C0;
  }

  *a2 = v7;
  return result;
}

uint64_t SharedTagged_5.any.getter@<X0>(__n128 *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  CRExtensible.rawValue.getter(v5, &v15);
  v6 = *v2;
  v7 = v3[1];
  v12.n128_u64[0] = v6;
  v12.n128_u64[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v6, v7);
}

uint64_t SharedTagged_5.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v50 = a5;
  v51 = a4;
  v48 = a1;
  v49 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = v41 - v7;
  v44 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v44);
  v43 = v41 - v8;
  v42 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v42);
  v41[1] = v41 - v9;
  v47 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v47);
  v41[0] = v41 - v10;
  v11 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v11);
  v12 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53.n128_u64[0] = v13;
  v53.n128_u64[1] = AssociatedConformanceWitness;
  v54 = &protocol witness table for Int;
  v55 = MEMORY[0x1E69E6540];
  v15 = type metadata accessor for CRExtensible(0, &v53);
  v16 = v51;
  CRExtensible.rawValue.getter(v15, &v56);
  if (v56 <= 1)
  {
    v47 = v16 + 8;
    if (v56)
    {
      if (v56 != 1)
      {
        goto LABEL_12;
      }

      v23 = *v6;
      v22 = v6[1];
      v52.n128_u64[0] = v23;
      v52.n128_u64[1] = v22;
      v24 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v52, &v53);
      v52 = v53;
      v25 = *(v16 + 8);
      sub_1ADDD86D8(v23, v22);
      v25(&v52, v11, v24, v49, v16);
      sub_1ADDCC35C(v52.n128_i64[0], v52.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }

    else
    {
      v34 = *v6;
      v33 = v6[1];
      v52.n128_u64[0] = v34;
      v52.n128_u64[1] = v33;
      v35 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v52, &v53);
      v52 = v53;
      v36 = v16;
      v37 = *(v16 + 8);
      sub_1ADDD86D8(v34, v33);
      v37(&v52, v12, v35, v49, v36);
      sub_1ADDCC35C(v52.n128_i64[0], v52.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }
  }

  else
  {
    if (v56 != 2)
    {
      v47 = v16 + 8;
      if (v56 == 3)
      {
        v32 = *v6;
        v31 = v6[1];
        v52.n128_u64[0] = v32;
        v52.n128_u64[1] = v31;
        v19 = v42;
        v20 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v52, &v53);
        v52 = v53;
        v21 = *(v16 + 8);
        sub_1ADDD86D8(v32, v31);
        goto LABEL_13;
      }

      if (v56 == 4)
      {
        v18 = *v6;
        v17 = v6[1];
        v52.n128_u64[0] = v18;
        v52.n128_u64[1] = v17;
        v19 = v44;
        v20 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v52, &v53);
        v52 = v53;
        v21 = *(v16 + 8);
        sub_1ADDD86D8(v18, v17);
LABEL_13:
        v21(&v52, v19, v20, v49, v16);
        sub_1ADDCC35C(v52.n128_i64[0], v52.n128_u64[1]);
        swift_getAssociatedTypeWitness();
        return swift_dynamicCast();
      }

LABEL_12:
      v39 = *v6;
      v38 = v6[1];
      v52.n128_u64[0] = v39;
      v52.n128_u64[1] = v38;
      v19 = AssociatedTypeWitness;
      v20 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v52, &v53);
      v52 = v53;
      v21 = *(v16 + 8);
      sub_1ADDD86D8(v39, v38);
      goto LABEL_13;
    }

    v27 = *v6;
    v26 = v6[1];
    v52.n128_u64[0] = v27;
    v52.n128_u64[1] = v26;
    v28 = v47;
    v29 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v52, &v53);
    v52 = v53;
    v30 = *(v16 + 8);
    sub_1ADDD86D8(v27, v26);
    v30(&v52, v28, v29, v49, v16);
    sub_1ADDCC35C(v52.n128_i64[0], v52.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEF0740@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a1;
  v61 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = v52 - v5;
  v57 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v57);
  v56 = v52 - v6;
  v55 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v55);
  v54 = v52 - v7;
  v53 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v53);
  v52[1] = v52 - v8;
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v9);
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v10);
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63.n128_u64[0] = v11;
  v63.n128_u64[1] = AssociatedConformanceWitness;
  v64 = &protocol witness table for Int;
  v65 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v63);
  CRExtensible.rawValue.getter(v13, &v66);
  if (v66 <= 1)
  {
    if (v66)
    {
      if (v66 != 1)
      {
        goto LABEL_12;
      }

      v23 = v3[1];
      v62.n128_u64[0] = *v4;
      v22 = v62.n128_u64[0];
      v62.n128_u64[1] = v23;
      v24 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v62, &v63);
      v25 = v63;
      v62 = v63;
      sub_1ADDD86D8(v22, v23);
      v27 = type metadata accessor for Ref(0, v9, v24, v26);
      sub_1AE002018(v60, v27);
      sub_1ADDCC35C(v25.n128_i64[0], v25.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }

    else
    {
      v41 = v3[1];
      v62.n128_u64[0] = *v3;
      v40 = v62.n128_u64[0];
      v62.n128_u64[1] = v41;
      v42 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v62, &v63);
      v43 = v63;
      v62 = v63;
      sub_1ADDD86D8(v40, v41);
      v45 = type metadata accessor for Ref(0, v10, v42, v44);
      sub_1AE002018(v60, v45);
      sub_1ADDCC35C(v43.n128_i64[0], v43.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }
  }

  else
  {
    if (v66 != 2)
    {
      if (v66 == 3)
      {
        v36 = v3[1];
        v62.n128_u64[0] = *v4;
        v35 = v62.n128_u64[0];
        v62.n128_u64[1] = v36;
        v37 = v55;
        v38 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v62, &v63);
        v19 = v63.n128_u64[1];
        v18 = v63.n128_u64[0];
        v62 = v63;
        sub_1ADDD86D8(v35, v36);
        v21 = type metadata accessor for Ref(0, v37, v38, v39);
        goto LABEL_13;
      }

      if (v66 == 4)
      {
        v15 = v3[1];
        v62.n128_u64[0] = *v4;
        v14 = v62.n128_u64[0];
        v62.n128_u64[1] = v15;
        v16 = v57;
        v17 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v62, &v63);
        v19 = v63.n128_u64[1];
        v18 = v63.n128_u64[0];
        v62 = v63;
        sub_1ADDD86D8(v14, v15);
        v21 = type metadata accessor for Ref(0, v16, v17, v20);
LABEL_13:
        sub_1AE002018(v60, v21);
        sub_1ADDCC35C(v18, v19);
        swift_getAssociatedTypeWitness();
        return swift_dynamicCast();
      }

LABEL_12:
      v47 = v3[1];
      v62.n128_u64[0] = *v4;
      v46 = v62.n128_u64[0];
      v62.n128_u64[1] = v47;
      v48 = AssociatedTypeWitness;
      v49 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v62, &v63);
      v19 = v63.n128_u64[1];
      v18 = v63.n128_u64[0];
      v62 = v63;
      sub_1ADDD86D8(v46, v47);
      v21 = type metadata accessor for Ref(0, v48, v49, v50);
      goto LABEL_13;
    }

    v29 = v3[1];
    v62.n128_u64[0] = *v4;
    v28 = v62.n128_u64[0];
    v62.n128_u64[1] = v29;
    v30 = v53;
    v31 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v62, &v63);
    v32 = v63;
    v62 = v63;
    sub_1ADDD86D8(v28, v29);
    v34 = type metadata accessor for Ref(0, v30, v31, v33);
    sub_1AE002018(v60, v34);
    sub_1ADDCC35C(v32.n128_i64[0], v32.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEF0E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v80 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  v76 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v63 - v4;
  v5 = swift_getAssociatedTypeWitness();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v63 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v63 - v8;
  v77 = swift_getAssociatedTypeWitness();
  v67 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v66 = &v63 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v64 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  v79 = swift_getAssociatedTypeWitness();
  v16 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v63 - v17;
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84.n128_u64[0] = v18;
  v84.n128_u64[1] = AssociatedConformanceWitness;
  v85 = &protocol witness table for Int;
  v86 = MEMORY[0x1E69E6540];
  v20 = type metadata accessor for CRExtensible(0, &v84);
  v21 = v82;
  CRExtensible.rawValue.getter(v20, &v87);
  v22 = v16;
  if (v87 <= 1)
  {
    v77 = v16 + 16;
    if (!v87)
    {
      v50 = v21[1];
      v83.n128_u64[0] = *v21;
      v51 = v83.n128_u64[0];
      v83.n128_u64[1] = v50;
      v52 = swift_getAssociatedConformanceWitness();
      v53 = Ref.init(id:)(&v83, &v84);
      v54 = v84.n128_u64[1];
      v82 = v84.n128_u64[0];
      v55 = v79;
      v56 = v81;
      (*(v22 + 16))(v78, v81, v79, v53);
      sub_1ADDD86D8(v51, v50);
      swift_dynamicCast();
      v83.n128_u64[0] = v82;
      v83.n128_u64[1] = v54;
      sub_1ADECCBCC(v15, &v83, v13, v52);
      (*(v64 + 8))(v15, v13);

      return (*(v22 + 8))(v56, v55);
    }

    if (v87 != 1)
    {
      goto LABEL_12;
    }

    v33 = v21[1];
    v83.n128_u64[0] = *v21;
    v34 = v83.n128_u64[0];
    v83.n128_u64[1] = v33;
    v35 = swift_getAssociatedConformanceWitness();
    v36 = Ref.init(id:)(&v83, &v84);
    v37 = v84.n128_u64[1];
    v82 = v84.n128_u64[0];
    v29 = v79;
    v30 = v81;
    (*(v22 + 16))(v78, v81, v79, v36);
    sub_1ADDD86D8(v34, v33);
    swift_dynamicCast();
    v83.n128_u64[0] = v82;
    v83.n128_u64[1] = v37;
    sub_1ADECCBCC(v12, &v83, v10, v35);
    (*(v65 + 8))(v12, v10);
  }

  else
  {
    if (v87 != 2)
    {
      v77 = v16 + 16;
      if (v87 == 3)
      {
        v45 = v21[1];
        v83.n128_u64[0] = *v21;
        v46 = v83.n128_u64[0];
        v83.n128_u64[1] = v45;
        v25 = v70;
        v47 = swift_getAssociatedConformanceWitness();
        v48 = Ref.init(id:)(&v83, &v84);
        v49 = v84;
        v29 = v79;
        v30 = v81;
        (*(v22 + 16))(v78, v81, v79, v48);
        sub_1ADDD86D8(v46, v45);
        v31 = v68;
        swift_dynamicCast();
        v83 = v49;
        sub_1ADECCBCC(v31, &v83, v25, v47);
        v32 = v69;
        goto LABEL_13;
      }

      if (v87 == 4)
      {
        v23 = v21[1];
        v83.n128_u64[0] = *v21;
        v24 = v83.n128_u64[0];
        v83.n128_u64[1] = v23;
        v25 = v73;
        v26 = swift_getAssociatedConformanceWitness();
        v27 = Ref.init(id:)(&v83, &v84);
        v28 = v84;
        v29 = v79;
        v30 = v81;
        (*(v22 + 16))(v78, v81, v79, v27);
        sub_1ADDD86D8(v24, v23);
        v31 = v71;
        swift_dynamicCast();
        v83 = v28;
        sub_1ADECCBCC(v31, &v83, v25, v26);
        v32 = v72;
LABEL_13:
        (*(v32 + 8))(v31, v25);
        goto LABEL_14;
      }

LABEL_12:
      v58 = v21[1];
      v83.n128_u64[0] = *v21;
      v59 = v83.n128_u64[0];
      v83.n128_u64[1] = v58;
      v25 = v76;
      v60 = swift_getAssociatedConformanceWitness();
      v61 = Ref.init(id:)(&v83, &v84);
      v62 = v84;
      v29 = v79;
      v30 = v81;
      (*(v22 + 16))(v78, v81, v79, v61);
      sub_1ADDD86D8(v59, v58);
      v31 = v74;
      swift_dynamicCast();
      v83 = v62;
      sub_1ADECCBCC(v31, &v83, v25, v60);
      v32 = v75;
      goto LABEL_13;
    }

    v38 = v21[1];
    v83.n128_u64[0] = *v21;
    v39 = v83.n128_u64[0];
    v83.n128_u64[1] = v38;
    v40 = v77;
    v41 = swift_getAssociatedConformanceWitness();
    v42 = Ref.init(id:)(&v83, &v84);
    v82 = v84.n128_u64[1];
    v43 = v84.n128_u64[0];
    v29 = v79;
    v30 = v81;
    (*(v22 + 16))(v78, v81, v79, v42);
    sub_1ADDD86D8(v39, v38);
    v44 = v66;
    swift_dynamicCast();
    v83.n128_u64[0] = v43;
    v83.n128_u64[1] = v82;
    sub_1ADECCBCC(v44, &v83, v40, v41);
    (*(v67 + 8))(v44, v40);
  }

LABEL_14:

  return (*(v22 + 8))(v30, v29);
}

double sub_1ADEF185C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = type metadata accessor for SharedTagged_5(0, *(a3 + a4 - 32), *(a3 + a4 - 16), a4);

  sub_1ADF4A990(a1, v5, v6, &protocol requirements base descriptor for Tagged_5, &associated type descriptor for Tagged_5.AnyType, sub_1ADEF0E60);

  return result;
}

uint64_t SharedTagged_5.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_5, &associated type descriptor for Tagged_5.AnyType, sub_1ADEF0E60);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*SharedTagged_5.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  SharedTagged_5.subscript.getter(a2, a3);
  return sub_1ADEF1AE0;
}

void SharedTagged_5.visitReferences(_:)(void *a1, uint64_t a2)
{
  v13.n128_u64[0] = swift_getAssociatedTypeWitness();
  v13.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v14 = &protocol witness table for Int;
  v15 = MEMORY[0x1E69E6540];
  v4 = type metadata accessor for CRExtensible(0, &v13);
  CRExtensible.rawValue.getter(v4, &v16);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = v2[1];
  v12.n128_u64[0] = *v2;
  v8 = v12.n128_u64[0];
  v12.n128_u64[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v12, &v13);
  v12 = v13;
  v11 = *(v5 + 16);
  sub_1ADDD86D8(v8, v7);
  v11(&v12, AssociatedTypeWitness, AssociatedConformanceWitness, v6, v5);
  sub_1ADDCC35C(v12.n128_i64[0], v12.n128_u64[1]);
}

void SharedTagged_5.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v20 = 0xD000000000000017;
    *(v20 + 8) = 0x80000001AE25FB70;
    *(v20 + 16) = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v7 = v4;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v11 = *(v6 + 16);
  if ((~v11 & 0xF000000000000007) != 0 && ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 0xB)
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v12 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v52 = v12[2];
  v14 = *(type metadata accessor for SharedTagged_5(0, a2, a3, v13) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v50 = AssociatedTypeWitness;
  v51 = v14;
  v49 = AssociatedConformanceWitness;
  CRExtensible.init(rawValue:)(&v52, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a4 + v14));
  if (*(a1 + 57) >= 3u)
  {
    v17 = *(a1 + 72);
    if (!v17)
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v18 = *(v17 + 16);
    if ((~v18 & 0xF000000000000007) != 0 && ((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xB)
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v19 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v19[3])
    {
      inited = v19[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v22 = *(inited + 16);
    sub_1ADE51B2C(v22);

    if ((~v22 & 0xF000000000000007) != 0)
    {
      if (((v22 >> 59) & 0x1E | (v22 >> 2) & 1) == 0x10)
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v22);
        v27 = *(a1 + 40);
        v28 = *(v27 + 16);
        if (v28 && v23 < v28)
        {
          v29 = *(v27 + 16 * v23 + 32);
          *a4 = v29;
          sub_1ADDD86D8(v29, *(&v29 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40(v24, v25, v26);
        swift_allocError();
        *v47 = 0xD000000000000013;
        *(v47 + 8) = 0x80000001AE25FC60;
        *(v47 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_60:
        *&v52 = v50;
        *(&v52 + 1) = v49;
        v53 = &protocol witness table for Int;
        v54 = MEMORY[0x1E69E6540];
        v46 = type metadata accessor for CRExtensible(0, &v52);
        (*(*(v46 - 8) + 8))(a4 + v51, v46);
        return;
      }

      sub_1ADE51B48(v22);
    }
  }

  v30 = *(a1 + 72);
  if (!v30)
  {
    __break(1u);
    goto LABEL_64;
  }

  v31 = *(v30 + 16);
  if ((~v31 & 0xF000000000000007) != 0 && ((v31 >> 59) & 0x1E | (v31 >> 2) & 1) == 0xB)
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v32 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v33 = v32[3];
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v34 = swift_initStaticObject();
  }

  v35 = *(v34 + 16);
  if ((~v35 & 0xF000000000000007) != 0 && ((v35 >> 59) & 0x1E | (v35 >> 2) & 1) == 7)
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v36 = swift_initStaticObject();
  }

  swift_beginAccess();
  v37 = v36[8];
  if (v37)
  {
    v39 = v36[9];
    v38 = v36[10];

    sub_1ADDD86D8(v39, v38);
  }

  else
  {
    v39 = 0;
    v38 = 0xC000000000000000;
    v37 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDE94BC(v37, v39, v38, &v52);
  if (v7)
  {
    goto LABEL_39;
  }

  *a4 = v52;
LABEL_41:
  *&v52 = v50;
  *(&v52 + 1) = AssociatedConformanceWitness;
  v53 = &protocol witness table for Int;
  v54 = MEMORY[0x1E69E6540];
  v40 = type metadata accessor for CRExtensible(0, &v52);
  CRExtensible.rawValue.getter(v40, &v55);
  v41 = *(a1 + 16);
  if (v55 <= 1)
  {
    if (!v55)
    {
      if (v41)
      {
        goto LABEL_58;
      }

      goto LABEL_69;
    }

    if (v55 == 1)
    {
      if (v41)
      {
        goto LABEL_58;
      }

      goto LABEL_66;
    }
  }

  else
  {
    switch(v55)
    {
      case 2:
        if (v41)
        {
          goto LABEL_58;
        }

        goto LABEL_67;
      case 3:
        if (v41)
        {
          goto LABEL_58;
        }

        goto LABEL_68;
      case 4:
        if (v41)
        {
          goto LABEL_58;
        }

        goto LABEL_65;
    }
  }

  if (v41)
  {
LABEL_58:
    v42 = swift_getAssociatedTypeWitness();
    v44 = *(a4 + 8);
    *&v52 = *a4;
    v43 = v52;
    *(&v52 + 1) = v44;
    v48 = *(*v41 + 200);

    sub_1ADDD86D8(v43, v44);
    v45 = swift_getAssociatedConformanceWitness();
    v48(v42, &v52, a1, 0, v42, v45);
    if (v7)
    {
      sub_1ADDCC35C(v52, *(&v52 + 1));

      sub_1ADDCC35C(*a4, *(a4 + 8));
      goto LABEL_60;
    }

    sub_1ADDCC35C(v52, *(&v52 + 1));

LABEL_12:

    return;
  }

LABEL_70:
  __break(1u);
}

uint64_t SharedTagged_6.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_6.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_6.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_6.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_6, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_6, a5);
}

uint64_t SharedTagged_6.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_6(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_6(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_6(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 3;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_6(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 4;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_6(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = AssociatedConformanceWitness;
  v30 = &protocol witness table for Int;
  v31 = MEMORY[0x1E69E6540];
  v14 = type metadata accessor for CRExtensible(0, &v29);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v26 = a1;
  v28 = xmmword_1AE2427C0;
  v17 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v18 = v27;
  sub_1ADEAFD1C(a2, v17, &v29);

  *v18 = v29;
  *&v29 = 5;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 8))(a2, v17);

    (*(v19 + 32))(v16, v12, AssociatedTypeWitness);
    v21 = v25;
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for SharedTagged_6(0, a3, a4, v22);
    return (*(v24 + 32))(&v18[*(v23 + 36)], v16, v21);
  }

  return result;
}

uint64_t SharedTagged_6.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 0;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_6(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 1;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_6(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 2;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_6(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 3;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_6(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 4;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_6(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}

{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  v41 = &protocol witness table for Int;
  v42 = MEMORY[0x1E69E6540];
  v13 = type metadata accessor for CRExtensible(0, &v39);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v36 = a1;
  v39 = v16;
  v40 = v17;
  v31 = v19;
  v32 = v18;
  v41 = v18;
  v42 = v19;
  v33 = v20;
  v43 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v39, v21, v22, v23);
  v24 = v38;

  *v24 = v16;
  v24[1] = v17;
  v39 = 5;
  sub_1ADDD86D8(v16, v17);
  sub_1AE23CF7C();
  v25 = *(AssociatedTypeWitness - 8);
  result = (*(v25 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v16, v17);
    sub_1ADDCC35C(v32, v31);

    (*(v25 + 32))(v15, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SharedTagged_6(0, a3, a4, v28);
    return (*(v34 + 32))(v24 + *(v29 + 36), v15, v27);
  }

  return result;
}