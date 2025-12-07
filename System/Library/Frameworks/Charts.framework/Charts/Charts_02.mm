void sub_1AACCFD50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AACCFDA0()
{
  result = qword_1ED9B2F10;
  if (!qword_1ED9B2F10)
  {
    sub_1AACCBC4C(255, &qword_1ED9B2F08, sub_1AACCF840, &type metadata for ChartLayout, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2F10);
  }

  return result;
}

unint64_t sub_1AACCFE30()
{
  result = qword_1ED9B4548;
  if (!qword_1ED9B4548)
  {
    sub_1AACCBC4C(255, &qword_1ED9B2F08, sub_1AACCF840, &type metadata for ChartLayout, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4548);
  }

  return result;
}

unint64_t sub_1AACCFEC0()
{
  result = qword_1ED9B2EE0;
  if (!qword_1ED9B2EE0)
  {
    sub_1AACCF78C(255);
    sub_1AACCFE30();
    sub_1AACCC5FC(&qword_1ED9B2AE0, sub_1AACCBE34, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2EE0);
  }

  return result;
}

uint64_t sub_1AACCFFA4(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    while (1)
    {
      sub_1AAD81760(v3, v13);
      sub_1AAD81760(v4, v8);
      if (v14 == 9)
      {
        if (v9 != 9)
        {
          goto LABEL_24;
        }
      }

      else if (v14 != v9)
      {
        goto LABEL_24;
      }

      if (v15)
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((v10 & 1) != 0 || (sub_1AAF8F0F4() & 1) == 0)
      {
        goto LABEL_24;
      }

      v5 = v12;
      if (v17)
      {
        if (!v12)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v16 != v11)
        {
          v5 = 1;
        }

        if (v5)
        {
LABEL_24:
          sub_1AAD817BC(v8);
          sub_1AAD817BC(v13);
          return 0;
        }
      }

      sub_1AAD81810();
      v6 = AGCompareValues();
      sub_1AAD817BC(v8);
      sub_1AAD817BC(v13);
      if (v6)
      {
        v3 += 120;
        v4 += 120;
        if (--v2)
        {
          continue;
        }
      }

      return v6;
    }
  }

  return 1;
}

BOOL sub_1AACD012C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for AxisMarkValues.Storage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAF1E8(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  sub_1AACD0840(0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *a2;
  if (v15 == 3)
  {
    if (v16 != 3)
    {
      return 0;
    }
  }

  else if (v15 != v16)
  {
    return 0;
  }

  v17 = a1[1];
  v18 = a2[1];
  if (v17 == 4)
  {
    if (v18 != 4)
    {
      return 0;
    }
  }

  else if (v17 != v18)
  {
    return 0;
  }

  v44 = v7;
  v19 = v12;
  v20 = a2;
  v45 = type metadata accessor for AxisMarksConfiguration(0);
  v21 = *(v45 + 24);
  v22 = *(v19 + 48);
  v23 = MEMORY[0x1E69E6720];
  v46 = a1;
  sub_1AACAEB98(&a1[v21], v14, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720], sub_1AACAF1E8);
  v24 = &v20[v21];
  v25 = v20;
  sub_1AACAEB98(v24, &v14[v22], &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, v23, sub_1AACAF1E8);
  v26 = *(v5 + 48);
  if (v26(v14, 1, v4) == 1)
  {
    if (v26(&v14[v22], 1, v4) == 1)
    {
      goto LABEL_11;
    }

LABEL_18:
    v33 = sub_1AACD0840;
    v34 = v14;
LABEL_19:
    sub_1AACD1D1C(v34, v33);
    return 0;
  }

  sub_1AACAEB98(v14, v10, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720], sub_1AACAF1E8);
  if (v26(&v14[v22], 1, v4) == 1)
  {
    sub_1AACD1D1C(v10, type metadata accessor for AxisMarkValues.Storage);
    goto LABEL_18;
  }

  v35 = v44;
  sub_1AACBB0F8(&v14[v22], v44);
  if ((sub_1AACD08D4(v10, v35) & 1) == 0)
  {
    goto LABEL_37;
  }

  v36 = *(v4 + 20);
  v37 = v10[v36];
  v38 = *(v35 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      goto LABEL_37;
    }
  }

  else if (v38 == 2 || ((v38 ^ v37) & 1) != 0)
  {
    goto LABEL_37;
  }

  v39 = *(v4 + 24);
  v40 = v10[v39];
  v41 = *(v35 + v39);
  if (v40 == 2)
  {
    if (v41 == 2)
    {
      goto LABEL_36;
    }

LABEL_37:
    sub_1AACD1D1C(v35, type metadata accessor for AxisMarkValues.Storage);
    sub_1AACD1D1C(v10, type metadata accessor for AxisMarkValues.Storage);
    sub_1AACDCFD0(v14, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720], sub_1AACAF1E8);
    return 0;
  }

  if (v41 == 2 || ((v41 ^ v40) & 1) != 0)
  {
    goto LABEL_37;
  }

LABEL_36:
  sub_1AACD1D1C(v35, type metadata accessor for AxisMarkValues.Storage);
  sub_1AACD1D1C(v10, type metadata accessor for AxisMarkValues.Storage);
LABEL_11:
  sub_1AACDCFD0(v14, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720], sub_1AACAF1E8);
  v27 = v45;
  v28 = v46;
  if ((sub_1AACD1578(&v46[*(v45 + 28)], &v25[*(v45 + 28)]) & 1) == 0)
  {
    return 0;
  }

  v29 = v25;
  v30 = *(v27 + 32);
  v31 = MEMORY[0x1E69E6720];
  sub_1AACAEB98(&v28[v30], v50, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720], sub_1AACB61E4);
  sub_1AACAEB98(&v29[v30], &v52, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, v31, sub_1AACB61E4);
  if (!v51)
  {
    if (!*(&v53 + 1))
    {
      sub_1AACDCFD0(v50, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720], sub_1AACB61E4);
      return 1;
    }

    goto LABEL_33;
  }

  sub_1AACAEB98(v50, v49, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720], sub_1AACB61E4);
  if (!*(&v53 + 1))
  {
    sub_1AADDA608(v49);
LABEL_33:
    v33 = sub_1AADDA580;
    v34 = v50;
    goto LABEL_19;
  }

  v47[0] = v52;
  v47[1] = v53;
  v48 = v54;
  sub_1AAD45E1C(0, &qword_1ED9B2EF0, MEMORY[0x1E697DFD0]);
  v32 = AGCompareValues();
  sub_1AADDA608(v47);
  sub_1AADDA608(v49);
  sub_1AACDCFD0(v50, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720], sub_1AACB61E4);
  return (v32 & 1) != 0;
}

void sub_1AACD0840(uint64_t a1)
{
  if (!qword_1ED9B2578)
  {
    sub_1AACAF1E8(255, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B2578);
    }
  }
}

BOOL sub_1AACD08D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8CBA4();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD265C(0);
  v95 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAF184(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v90 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v90 - v13;
  v14 = sub_1AAF8CB94();
  v15 = *(v14 - 8);
  v102 = v14;
  v103 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AxisMarkValues.Storage.Stride(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v90 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v90 - v27);
  sub_1AACD1CB8(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &v31[*(v32 + 56)];
  sub_1AACB81D4(a1, v31, type metadata accessor for AxisMarkValues.Storage.Stride);
  sub_1AACB81D4(a2, v33, type metadata accessor for AxisMarkValues.Storage.Stride);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1AACB81D4(v31, v22, type metadata accessor for AxisMarkValues.Storage.Stride);
      v42 = swift_getEnumCaseMultiPayload();
      v39 = sub_1AACD1CB8;
      if (v42 != 2)
      {
LABEL_28:
        v43 = 0;
        goto LABEL_43;
      }

      v43 = *v22 == *v33;
LABEL_42:
      v39 = type metadata accessor for AxisMarkValues.Storage.Stride;
      goto LABEL_43;
    }

    sub_1AACB81D4(v31, v19, type metadata accessor for AxisMarkValues.Storage.Stride);
    v71 = *v19;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_23;
    }

    v72 = *(v33 + 8);
    if (v19[8])
    {
      if (v19[8] == 1)
      {
        if (v72 == 1)
        {
          goto LABEL_33;
        }
      }

      else if (v72 == 2)
      {
        v76 = sub_1AAD79E64(v71, *v33);
LABEL_36:
        v77 = v76;

        v39 = type metadata accessor for AxisMarkValues.Storage.Stride;
        if (v77)
        {
          goto LABEL_52;
        }

        goto LABEL_41;
      }
    }

    else if (!*(v33 + 8))
    {
LABEL_33:
      v76 = sub_1AAD79E08(v71, *v33);
      goto LABEL_36;
    }

    goto LABEL_41;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1AACB81D4(v31, v28, type metadata accessor for AxisMarkValues.Storage.Stride);
    v35 = *v28;
    v36 = v28[2];
    v37 = *(v28 + 24);
    v38 = swift_getEnumCaseMultiPayload();
    v39 = sub_1AACD1CB8;
    if (!v38)
    {
      v40 = *(v33 + 8);
      v41 = *(v33 + 24);
      if (v28[1])
      {
        v39 = type metadata accessor for AxisMarkValues.Storage.Stride;
        if (*(v33 + 8))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v35 != *v33)
        {
          v40 = 1;
        }

        v39 = type metadata accessor for AxisMarkValues.Storage.Stride;
        if ((v40 & 1) == 0)
        {
LABEL_29:
          if (v37)
          {
            v39 = type metadata accessor for AxisMarkValues.Storage.Stride;
            if (*(v33 + 24))
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (v36 != *(v33 + 16))
            {
              v41 = 1;
            }

            v39 = type metadata accessor for AxisMarkValues.Storage.Stride;
            if ((v41 & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_41;
        }
      }
    }

    goto LABEL_28;
  }

  sub_1AACB81D4(v31, v25, type metadata accessor for AxisMarkValues.Storage.Stride);
  sub_1AACAF0D8(0);
  v45 = *(v44 + 48);
  v46 = *&v25[v45];
  v47 = *(v44 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v91 = *(v33 + v45);
    v92 = v46;
    v48 = v102;
    v49 = v103;
    v50 = v99;
    (*(v103 + 32))(v99, v33, v102);
    v51 = MEMORY[0x1E6969AE8];
    v52 = v101;
    sub_1AACB75FC(&v25[v47], v101, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
    v53 = v33 + v47;
    v54 = v100;
    sub_1AACB75FC(v53, v100, &qword_1ED9B6B90, v51);
    v55 = sub_1AAF8CB84();
    v58 = *(v49 + 8);
    v57 = v49 + 8;
    v56 = v58;
    v59 = v25;
    v60 = v48;
    v58(v59, v48);
    if (v55)
    {
      if (v92 == v91)
      {
        v103 = v57;
        v61 = *(v95 + 48);
        v62 = MEMORY[0x1E6969AE8];
        v63 = v101;
        v64 = v98;
        sub_1AACAEB18(v101, v98, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
        v65 = v100;
        sub_1AACAEB18(v100, v64 + v61, &qword_1ED9B6B90, v62);
        v66 = v97;
        v67 = *(v96 + 48);
        if (v67(v64, 1, v97) == 1)
        {
          v68 = MEMORY[0x1E6969AE8];
          v69 = MEMORY[0x1E69E6720];
          sub_1AACD1518(v65, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
          v70 = v98;
          sub_1AACD1518(v63, &qword_1ED9B6B90, v68, v69, sub_1AACAF184);
          v56(v99, v102);
          if (v67(v70 + v61, 1, v97) == 1)
          {
            sub_1AACD1518(v70, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
            v43 = 1;
            goto LABEL_42;
          }
        }

        else
        {
          v79 = v94;
          sub_1AACAEB18(v64, v94, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
          v80 = v66;
          if (v67(v64 + v61, 1, v66) != 1)
          {
            v84 = v96;
            v85 = v93;
            (*(v96 + 32))(v93, v64 + v61, v80);
            sub_1AACED314(&qword_1ED9B6B98, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B00]);
            LODWORD(v95) = sub_1AAF8F5F4();
            v86 = *(v84 + 8);
            v86(v85, v80);
            v87 = v64;
            v88 = MEMORY[0x1E6969AE8];
            v89 = MEMORY[0x1E69E6720];
            sub_1AACD1518(v100, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
            sub_1AACD1518(v101, &qword_1ED9B6B90, v88, v89, sub_1AACAF184);
            v56(v99, v102);
            v86(v94, v80);
            sub_1AACD1518(v87, &qword_1ED9B6B90, v88, v89, sub_1AACAF184);
            v39 = type metadata accessor for AxisMarkValues.Storage.Stride;
            if (v95)
            {
LABEL_52:
              v43 = 1;
              goto LABEL_43;
            }

            goto LABEL_41;
          }

          v81 = v79;
          v82 = MEMORY[0x1E6969AE8];
          v83 = MEMORY[0x1E69E6720];
          sub_1AACD1518(v100, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
          v70 = v98;
          sub_1AACD1518(v101, &qword_1ED9B6B90, v82, v83, sub_1AACAF184);
          v56(v99, v102);
          (*(v96 + 8))(v81, v80);
        }

        sub_1AACB767C(v70, sub_1AACD265C);
LABEL_41:
        v43 = 0;
        goto LABEL_42;
      }

      v73 = MEMORY[0x1E6969AE8];
      v74 = MEMORY[0x1E69E6720];
      sub_1AACD1518(v100, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
      v75 = v101;
    }

    else
    {
      v73 = MEMORY[0x1E6969AE8];
      v74 = MEMORY[0x1E69E6720];
      sub_1AACD1518(v54, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
      v75 = v52;
    }

    sub_1AACD1518(v75, &qword_1ED9B6B90, v73, v74, sub_1AACAF184);
    v56(v50, v60);
    goto LABEL_41;
  }

  sub_1AACD1518(&v25[v47], &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
  (*(v103 + 8))(v25, v102);
LABEL_23:
  v43 = 0;
  v39 = sub_1AACD1CB8;
LABEL_43:
  sub_1AACB767C(v31, v39);
  return v43;
}

uint64_t sub_1AACD1518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AACD1578(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_1AACB4B38(a1, v13);
  sub_1AACB4B38(a2, v15);
  if (v14)
  {
    if (v14 == 1)
    {
      sub_1AACB4B38(v13, v11);
      if (v16 == 1)
      {
        v9[0] = v11[0];
        v7[0] = *v15;
        sub_1AACD1D7C();
        v3 = AGCompareValues();

        sub_1AACD9464(v13);
        return v3;
      }
    }

    else if (v16 == 2)
    {
      v5 = vorrq_s8(*&v15[8], *&v15[24]);
      if (!(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *v15))
      {
        sub_1AACD9464(v13);
        return 1;
      }
    }
  }

  else
  {
    sub_1AACB4B38(v13, v11);
    if (!v16)
    {
      v9[0] = v11[0];
      v9[1] = v11[1];
      v10 = v12;
      v7[0] = *v15;
      v7[1] = *&v15[16];
      v8 = *&v15[32];
      sub_1AAD45E1C(0, &qword_1EB424C40, &protocol descriptor for AxisMark);
      v6 = AGCompareValues();
      sub_1AACE1B40(v7);
      sub_1AACE1B40(v9);
      sub_1AACD9464(v13);
      return v6;
    }

    sub_1AACE1B40(v11);
  }

  sub_1AACD1D1C(v13, sub_1AADDA43C);
  return 0;
}

uint64_t sub_1AACD1764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACD1838(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1AC5956A0]() & 1) != 0 && (v4 = type metadata accessor for ChartEnvironmentValues(0), (MEMORY[0x1AC595760](a1 + v4[5], a2 + v4[5])) && (sub_1AAF8DF04() & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]) && (sub_1AAF8DCC4())
  {
    v5 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

__n128 initializeBufferWithCopyOfBuffer for DimensionOffset(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AACD18FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1AACD1944(uint64_t a1)
{
  v2 = *v1;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v2);
  return sub_1AAF906F4();
}

uint64_t sub_1AACD198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == 3)
  {
    if (a4 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (a4 == 3)
    {
      return 0;
    }

    v9 = a5;
    v10 = sub_1AAF8D874();
    a5 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v11 = a5;

    v12 = sub_1AACD1A58(a2, v11);

    if (!v12)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  return sub_1AACCFFA4(a3, a6);
}

BOOL sub_1AACD1A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AxisMarksConfiguration(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1AAD816FC(v13, v10);
        sub_1AAD816FC(v14, v6);
        v16 = sub_1AACD012C(v10, v6);
        sub_1AAD80EB0(v6, type metadata accessor for AxisMarksConfiguration);
        sub_1AAD80EB0(v10, type metadata accessor for AxisMarksConfiguration);
        if (!v16)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    return 0;
  }

  return v16;
}

uint64_t sub_1AACD1BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACD1C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AACD1CB8(uint64_t a1)
{
  if (!qword_1ED9B2580)
  {
    type metadata accessor for AxisMarkValues.Storage.Stride(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B2580);
    }
  }
}

uint64_t sub_1AACD1D1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AACD1D7C()
{
  result = qword_1ED9B2730;
  if (!qword_1ED9B2730)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1ED9B2730);
  }

  return result;
}

uint64_t sub_1AACD1DD4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACD21D4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL sub_1AACD1E54(uint64_t a1, uint64_t a2)
{
  sub_1AACD1DD4(a1, v13, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  sub_1AACD1DD4(a2, &v15, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  if (v14 != 255)
  {
    sub_1AACD1DD4(v13, v12, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
    if (v16[24] != 255)
    {
      v10 = v15;
      v11[0] = *v16;
      *(v11 + 9) = *&v16[9];
      v4 = sub_1AAE89970(v12, &v10);
      sub_1AAD9E1BC(&v10);
      sub_1AAD9E1BC(v12);
      sub_1AACD2288(v13, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    sub_1AAD9E1BC(v12);
LABEL_12:
    v6 = &unk_1EB4267A8;
    v7 = &unk_1ED9B4890;
    v8 = &type metadata for AnyPrimitivePlottableOptionalBinding;
    goto LABEL_18;
  }

  if (v16[24] != 255)
  {
    goto LABEL_12;
  }

  sub_1AACD2288(v13, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
LABEL_7:
  sub_1AACD1DD4(a1 + 48, v13, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding);
  sub_1AACD1DD4(a2 + 48, &v15, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding);
  if (v14 == 255)
  {
    if (v16[24] == 255)
    {
      sub_1AACD2288(v13, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding);
      return 1;
    }
  }

  else
  {
    sub_1AACD1DD4(v13, v12, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding);
    if (v16[24] != 255)
    {
      v10 = v15;
      v11[0] = *v16;
      *(v11 + 9) = *&v16[9];
      v5 = sub_1AAE89B0C(v12, &v10);
      sub_1AAE2CD54(&v10);
      sub_1AAE2CD54(v12);
      sub_1AACD2288(v13, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding);
      return (v5 & 1) != 0;
    }

    sub_1AAE2CD54(v12);
  }

  v6 = &unk_1EB4267B0;
  v7 = &qword_1ED9B48A0;
  v8 = &type metadata for AnyPrimitivePlottableRangeBinding;
LABEL_18:
  sub_1AAE995F8(v13, v6, v7, v8);
  return 0;
}

uint64_t sub_1AACD20AC(uint64_t a1, uint64_t a2)
{
  if (!sub_1AACD1E54(a1, a2) || !sub_1AACD1E54(a1 + 96, a2 + 96) || !sub_1AACD1E54(a1 + 192, a2 + 192) || !sub_1AACD1E54(a1 + 288, a2 + 288))
  {
    goto LABEL_10;
  }

  v4 = *(a2 + 392);
  if (!*(a1 + 392))
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    sub_1AAE995A0(0);
    if (AGCompareValues())
    {
LABEL_8:
      LOBYTE(v4) = (*(a1 + 417) ^ *(a2 + 417) | *(a1 + 418) ^ *(a2 + 418)) ^ 1;
      return v4 & 1;
    }

LABEL_10:
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void sub_1AACD21D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AACD222C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAE2CF60(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AACD2288(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACD21D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL sub_1AACD22F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  v17 = *(a2 + 64);
  if (v2 == 255)
  {
    if (v10 != 255)
    {
      return 0;
    }

LABEL_11:
    if (v6 >> 8 <= 0xFE)
    {
      v32 = v4;
      v33 = v3;
      v34 = v5;
      v35 = v6;
      if (v14 >> 8 <= 0xFE)
      {
        v27 = v9;
        v23 = v8;
        v24 = v7;
        v25 = v16;
        v26 = v15;
        v28 = v12;
        v29 = v11;
        v30 = v13;
        v31 = v14;
        sub_1AACAF2D0(v4, v3, v5, v6);
        sub_1AACAF2D0(v12, v11, v13, v14);
        sub_1AACAF2D0(v4, v3, v5, v6);
        v21 = sub_1AACD26F0(&v32, &v28);
        sub_1AACAF350(v28, v29, v30, v31, HIBYTE(v31));
        sub_1AACAF350(v32, v33, v34, v35, HIBYTE(v35));
        sub_1AACAF33C(v4, v3, v5, v6);
        if ((v21 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_20;
      }

      sub_1AACAF2D0(v4, v3, v5, v6);
      sub_1AACAF2D0(v12, v11, v13, v14);
      sub_1AACAF2D0(v4, v3, v5, v6);
      sub_1AACAF350(v4, v3, v5, v6, BYTE1(v6));
    }

    else
    {
      v27 = v9;
      v23 = v8;
      v24 = v7;
      v25 = *(a2 + 56);
      v26 = *(a2 + 48);
      sub_1AACAF2D0(v4, v3, v5, v6);
      sub_1AACAF2D0(v12, v11, v13, v14);
      if (v14 >> 8 > 0xFE)
      {
        sub_1AACAF33C(v4, v3, v5, v6);
LABEL_20:
        if (v27 <= 0xFB)
        {
          if (v17 > 0xFB)
          {
            return 0;
          }

          sub_1AADC67CC(v26, v25, v17);
          v22 = sub_1AAEF52C0(v24, v23, v27, v26, v25, v17);
          sub_1AACC0710(v26, v25, v17);
          return (v22 & 1) != 0;
        }

        return v17 > 0xFB;
      }
    }

    sub_1AACAF33C(v4, v3, v5, v6);
    sub_1AACAF33C(v12, v11, v13, v14);
    return 0;
  }

  if (v10 == 255)
  {
    return 0;
  }

  v18 = *a1;
  v19 = *a2;
  if (!*(a1 + 8))
  {
    result = 0;
    if (*(a2 + 8))
    {
      return result;
    }

LABEL_10:
    if (v18 != v19)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    result = 0;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (*&v18 <= 1)
  {
    result = 0;
    if (v18 == 0.0)
    {
      if (v10 == 2 && v19 == 0.0)
      {
        goto LABEL_11;
      }
    }

    else if (v10 == 2 && *&v19 == 1)
    {
      goto LABEL_11;
    }
  }

  else if (*&v18 == 2)
  {
    result = 0;
    if (v10 == 2 && *&v19 == 2)
    {
      goto LABEL_11;
    }
  }

  else if (*&v18 == 3)
  {
    result = 0;
    if (v10 == 2 && *&v19 == 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if (v10 == 2 && *&v19 == 4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

void sub_1AACD265C(uint64_t a1)
{
  if (!qword_1ED9B4440)
  {
    sub_1AACAF184(255, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B4440);
    }
  }
}

uint64_t sub_1AACD26F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  v11 = *(a2 + 25);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v11 == 2)
      {
        v14 = sub_1AAD79E64(*a1, *a2);
        sub_1AACAF2E4(v8, v7, v9, v10, 2u);
        sub_1AACAF2E4(v3, v2, v4, v5, 2u);
        sub_1AACAF350(v3, v2, v4, v5, 2u);
        sub_1AACAF350(v8, v7, v9, v10, 2u);
        return v14 & 1;
      }

      goto LABEL_18;
    }

    if (v11 != 3)
    {
LABEL_18:
      sub_1AACAF2E4(*a2, a2[1], v9, v10, v11);
      sub_1AACAF2E4(v3, v2, v4, v5, v6);
      sub_1AACAF350(v3, v2, v4, v5, v6);
      sub_1AACAF350(v8, v7, v9, v10, v11);
      return 0;
    }

    sub_1AACAF2E4(v8, v7, v9, v10, 3u);
    sub_1AACAF2E4(v3, v2, v4, v5, 3u);
    sub_1AACAF2E4(v8, v7, v9, v10, 3u);
    sub_1AACAF2E4(v3, v2, v4, v5, 3u);
    v13 = AGCompareValues();
    sub_1AACAF350(v3, v2, v4, v5, 3u);
    sub_1AACAF350(v8, v7, v9, v10, 3u);
    sub_1AACAF350(v3, v2, v4, v5, 3u);
    v17 = v8;
    v18 = v7;
    v19 = v9;
    v20 = v10;
    v21 = 3;
  }

  else
  {
    if (!*(a1 + 25))
    {
      if (!*(a2 + 25))
      {
        v12 = *(v3 + 16);
        if (v12 != *(v8 + 16))
        {
          v13 = 0;
          goto LABEL_36;
        }

        if (!v12 || v3 == v8)
        {
          v13 = 1;
LABEL_36:
          sub_1AACAF2E4(*a2, a2[1], v9, v10, 0);
          sub_1AACAF2E4(v3, v2, v4, v5, 0);
          sub_1AACAF350(v3, v2, v4, v5, 0);
          v17 = v8;
          v18 = v7;
          v19 = v9;
          v20 = v10;
          v21 = 0;
          goto LABEL_37;
        }

        v28 = (v3 + 32);
        v29 = (v8 + 32);
        while (v12)
        {
          v30 = *v28++;
          v31 = v30;
          v32 = *v29++;
          v13 = v31 == v32;
          if (v31 != v32 || v12-- == 1)
          {
            goto LABEL_36;
          }
        }

LABEL_40:
        __break(1u);
      }

      goto LABEL_18;
    }

    if (v11 != 1)
    {
      goto LABEL_18;
    }

    v16 = *(v3 + 16);
    if (v16 == *(v8 + 16))
    {
      if (v16 && v3 != v8)
      {
        v22 = (v3 + 32);
        v23 = (v8 + 32);
        while (v16)
        {
          v24 = *v22++;
          v25 = v24;
          v26 = *v23++;
          v13 = v25 == v26;
          if (v25 != v26 || v16-- == 1)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

LABEL_28:
    sub_1AACAF2E4(*a2, a2[1], v9, v10, 1u);
    sub_1AACAF2E4(v3, v2, v4, v5, 1u);
    sub_1AACAF350(v3, v2, v4, v5, 1u);
    v17 = v8;
    v18 = v7;
    v19 = v9;
    v20 = v10;
    v21 = 1;
  }

LABEL_37:
  sub_1AACAF350(v17, v18, v19, v20, v21);
  return v13;
}

uint64_t sub_1AACD2B20(_OWORD *a1, _OWORD *a2)
{
  swift_beginAccess();
  if (*(v2 + 953) == 2)
  {
    if ((v5 = a1[7], v23[6] = a1[6], v23[7] = v5, v23[8] = a1[8], v6 = a1[3], v23[2] = a1[2], v23[3] = v6, v7 = a1[5], v23[4] = a1[4], v23[5] = v7, v8 = a1[1], v23[0] = *a1, v23[1] = v8, v9 = sub_1AACDB99C(v23), v10 = sub_1AACD2C84(v23), ((1 << v9) & 0x32) == 0) && ((v11 = 0, ((1 << v9) & 5) == 0) || (v11 = 0, v12 = *(v10 + 48), v12 < 0) || v12 == 2) || (v13 = a2[6], v14 = a2[8], v22[7] = a2[7], v22[8] = v14, v15 = a2[3], v22[2] = a2[2], v22[3] = v15, v16 = a2[4], v22[5] = a2[5], v22[6] = v13, v22[4] = v16, v17 = a2[1], v22[0] = *a2, v22[1] = v17, v18 = sub_1AACDB99C(v22), v19 = sub_1AACD2C84(v22), v11 = 1, ((1 << v18) & 0x32) == 0) && (((1 << v18) & 5) == 0 || (v20 = *(v19 + 48), v20 < 0) || v20 == 2))
    {
      *(v2 + 953) = v11;
    }
  }

  sub_1AACD2E6C(a1, 0);
  return sub_1AACD2E6C(a2, 1);
}

void sub_1AACD2CE0(uint64_t a1)
{
  type metadata accessor for AxisMarkValues.Storage.Stride(319);
  if (v1 <= 0x3F)
  {
    sub_1AACD2D88(319, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AACD2D88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AACD2DD8(_OWORD *a1)
{
  v1 = a1[7];
  v13[6] = a1[6];
  v13[7] = v1;
  v2 = a1[9];
  v13[8] = a1[8];
  v3 = a1[3];
  v13[2] = a1[2];
  v13[3] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[14];
  v7 = a1[16];
  v8 = a1[17];
  v14[6] = a1[15];
  v14[7] = v7;
  v14[8] = v8;
  v9 = a1[10];
  v10 = a1[12];
  v11 = a1[13];
  v14[2] = a1[11];
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v6;
  v14[0] = v2;
  v14[1] = v9;
  return sub_1AACD2B20(v13, v14);
}

uint64_t sub_1AACD2E6C(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1[7];
  v99[6] = a1[6];
  v99[7] = v5;
  v99[8] = a1[8];
  v6 = a1[3];
  v99[2] = a1[2];
  v99[3] = v6;
  v7 = a1[5];
  v99[4] = a1[4];
  v99[5] = v7;
  v8 = a1[1];
  v99[0] = *a1;
  v99[1] = v8;
  v9 = sub_1AACDB99C(v99);
  result = sub_1AACD2C84(v99);
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      goto LABEL_33;
    }

    v11 = *(result + 40);
    v12 = *(result + 48);
    v13 = *(result + 56);
    v14 = *(result + 64);
    v15 = *(result + 32);
    if ((v12 & 0x80000000) != 0)
    {
      if (v12)
      {
        sub_1AACD38BC(v15, 0, 1, v4);
        v15 = v11;
        v16 = 0;
        v12 = 1;
      }

      else
      {
        sub_1AACD38BC(v15, 0, 0, v4);
        v15 = v11;
        v16 = 0;
        v12 = 0;
      }

      v17 = v4;
    }

    else
    {
      v16 = v11;
      v17 = v4;
    }

    sub_1AACD38BC(v15, v16, v12, v17);
    v37 = v13;
    goto LABEL_31;
  }

  if (v9 == 3)
  {
    v27 = *(result + 40);
    v28 = *(result + 48);
    v29 = *(result + 56);
    v30 = *(result + 64);
    v32 = *(result + 104);
    v31 = *(result + 112);
    v33 = *(result + 120);
    v14 = *(result + 136);
    v84 = *(result + 128);
    v34 = *(result + 32);
    if ((v28 & 0x80000000) != 0)
    {
      if (v28)
      {
        sub_1AACD38BC(v34, 0, 1, v4);
        v34 = v27;
        v35 = 0;
        v28 = 1;
      }

      else
      {
        sub_1AACD38BC(v34, 0, 0, v4);
        v34 = v27;
        v35 = 0;
        v28 = 0;
      }

      v36 = v4;
    }

    else
    {
      v35 = v27;
      v36 = v4;
    }

    sub_1AACD38BC(v34, v35, v28, v36);
    sub_1AACD3A44(v29, v30, v4);
    v40 = v32;
    if ((v33 & 0x80000000) != 0)
    {
      if (v33)
      {
        sub_1AACD38BC(v32, 0, 1, v4);
        v40 = v31;
        v41 = 0;
        v42 = 1;
      }

      else
      {
        sub_1AACD38BC(v32, 0, 0, v4);
        v40 = v31;
        v41 = 0;
        v42 = 0;
      }

      v43 = v4;
    }

    else
    {
      v41 = v31;
      v42 = v33;
      v43 = v4;
    }

    sub_1AACD38BC(v40, v41, v42, v43);
    v37 = v84;
LABEL_31:
    v38 = v14;
    v39 = v4;
    goto LABEL_32;
  }

  if (v9 == 4)
  {
    goto LABEL_33;
  }

  v18 = *(result + 32);
  v79 = *(result + 64);
  v80 = *(result + 56);
  v81 = *(result + 72);
  v19 = *(result + 73);
  v82 = *(result + 74);
  v83 = *(result + 48);
  v20 = *(result + 80);
  v21 = *(result + 88);
  v22 = *(result + 96);
  swift_beginAccess();
  memcpy(__dst, (v3 + 696), 0x102uLL);
  sub_1AACBB21C(__dst, v92);
  sub_1AACD7C50(v20, v21, v22);
  sub_1AACDBAD0((v19 & 1) == 0, &v93);
  result = sub_1AACBB254(__dst);
  v23 = v95;
  if (v95)
  {
    v24 = v98;
    v25 = v97;
    v26 = v96;
    v101 = v93;
    v102 = v94;
    sub_1AACD7C50(v96, v97, v98);
    sub_1AAD6E0DC(&v101);
    v100 = v23;
    sub_1AAE0BE80(&v100, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    result = sub_1AAD0E818(v26, v25, v24);
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = -4;
  }

  v92[0] = v81;
  v92[1] = v19 & 1;
  v92[2] = v82 & 1;
  *&v92[8] = v20;
  *&v92[16] = v21;
  v92[24] = v22;
  *&v92[32] = v26;
  *&v92[40] = v25;
  v92[48] = v24;
  v104 = v24;
  v103[2] = *&v92[32];
  v103[0] = *v92;
  v103[1] = *&v92[16];
  if (v83 < 0)
  {
    __break(1u);
    goto LABEL_126;
  }

  if (v83)
  {
LABEL_126:
    __break(1u);
    return result;
  }

  sub_1AACDC988(v103, v18);
  sub_1AACDC920(v92);
  v38 = v79;
  v37 = v80;
  v39 = v4;
LABEL_32:
  result = sub_1AACD3A44(v37, v38, v39);
LABEL_33:
  if (v4 == 1)
  {
    swift_beginAccess();
    result = memcpy(v92, (v3 + 696), sizeof(v92));
    if (*&v92[112])
    {
      v52 = (v3 + 784);
    }

    else
    {
      if (v92[257] == 2)
      {
        return result;
      }

      sub_1AACBB21C(v92, v85);
      v61 = sub_1AAF8E7A4();
      if (v61 != sub_1AAF8E7A4())
      {
        return sub_1AACBB254(v92);
      }

      v52 = &v92[176];
      sub_1AACDB9A8(&v92[176], v85, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      result = sub_1AACBB254(v92);
      if (!*&v92[200])
      {
        return result;
      }
    }

    v53 = *(v52 + 3);
    v88 = *(v52 + 2);
    v89 = v53;
    v90 = *(v52 + 4);
    v91 = v52[80];
    v54 = *(v52 + 1);
    v86 = *v52;
    v87 = v54;
    v55 = v88;
    v56 = v89;
    v57 = *(&v89 + 1);
    v58 = v90;
    if (v89 < 0)
    {
      v66 = *(&v88 + 1);
      v67 = v88;
      v68 = v88 & 0x7FF0000000000000;
      if (v89)
      {
        swift_beginAccess();
        if (v68 != 0x7FF0000000000000)
        {
          if (*(v3 + 360))
          {
            v69 = *&v55;
          }

          else
          {
            v69 = *(v3 + 344);
            if (v69 >= *&v55)
            {
              v69 = *&v55;
            }

            if (*(v3 + 352) >= *&v55)
            {
              v67 = *(v3 + 352);
            }
          }

          *(v3 + 344) = v69;
          *(v3 + 352) = v67;
          *(v3 + 360) = 0;
        }

        if ((~*(&v55 + 1) & 0x7FF0000000000000) != 0)
        {
          if (*(v3 + 360))
          {
            v75 = *(&v55 + 1);
          }

          else
          {
            v75 = *(v3 + 344);
            if (v75 >= *(&v55 + 1))
            {
              v75 = *(&v55 + 1);
            }

            if (*(v3 + 352) >= *(&v55 + 1))
            {
              v66 = *(v3 + 352);
            }
          }

          *(v3 + 344) = v75;
          *(v3 + 352) = v66;
          *(v3 + 360) = 0;
        }
      }

      else
      {
        swift_beginAccess();
        if (v68 != 0x7FF0000000000000)
        {
          if (*(v3 + 336))
          {
            v71 = *&v55;
          }

          else
          {
            v71 = *(v3 + 320);
            if (v71 >= *&v55)
            {
              v71 = *&v55;
            }

            if (*(v3 + 328) >= *&v55)
            {
              v67 = *(v3 + 328);
            }
          }

          *(v3 + 320) = v71;
          *(v3 + 328) = v67;
          *(v3 + 336) = 0;
        }

        if ((~*(&v55 + 1) & 0x7FF0000000000000) != 0)
        {
          if (*(v3 + 336))
          {
            v76 = *(&v55 + 1);
          }

          else
          {
            v76 = *(v3 + 320);
            if (v76 >= *(&v55 + 1))
            {
              v76 = *(&v55 + 1);
            }

            if (*(v3 + 328) >= *(&v55 + 1))
            {
              v66 = *(v3 + 328);
            }
          }

          *(v3 + 320) = v76;
          *(v3 + 328) = v66;
          *(v3 + 336) = 0;
        }
      }

      v77 = MEMORY[0x1E69E6720];
      sub_1AACDB9A8(&v92[88], v85, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACDB9A8(&v86, v85, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v77);
    }

    else
    {
      swift_beginAccess();
      v59 = MEMORY[0x1E69E6720];
      sub_1AACDB9A8(&v92[88], v85, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACDB9A8(&v86, v85, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v59);
      sub_1AACD3D44(v55, *(&v55 + 1), v56);
      swift_endAccess();
    }

    swift_beginAccess();
    if (*(v3 + 385) << 8 == 512)
    {
      nullsub_1();
      *(v3 + 384) = sub_1AACD3F0C(v57, v58) & 0x1FF;
    }

    goto LABEL_123;
  }

  if (v4)
  {
    return result;
  }

  v44 = (v3 + 696);
  swift_beginAccess();
  result = memcpy(v92, (v3 + 696), sizeof(v92));
  if (*&v92[24])
  {
    goto LABEL_36;
  }

  if (v92[257] == 2)
  {
    return result;
  }

  sub_1AACBB21C(v92, v85);
  v60 = sub_1AAF8E7A4();
  if (v60 != sub_1AAF8E7A4())
  {
    return sub_1AACBB254(v92);
  }

  v44 = &v92[176];
  sub_1AACDB9A8(&v92[176], v85, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
  result = sub_1AACBB254(v92);
  if (!*&v92[200])
  {
    return result;
  }

LABEL_36:
  v45 = *(v44 + 3);
  v88 = *(v44 + 2);
  v89 = v45;
  v90 = *(v44 + 4);
  v91 = v44[80];
  v46 = *(v44 + 1);
  v86 = *v44;
  v87 = v46;
  v47 = v88;
  v48 = v89;
  v49 = *(&v89 + 1);
  v50 = v90;
  if (v89 < 0)
  {
    v62 = *(&v88 + 1);
    v63 = v88;
    v64 = v88 & 0x7FF0000000000000;
    if (v89)
    {
      swift_beginAccess();
      if (v64 != 0x7FF0000000000000)
      {
        if (*(v3 + 288))
        {
          v65 = *&v47;
        }

        else
        {
          v65 = *(v3 + 272);
          if (v65 >= *&v47)
          {
            v65 = *&v47;
          }

          if (*(v3 + 280) >= *&v47)
          {
            v63 = *(v3 + 280);
          }
        }

        *(v3 + 272) = v65;
        *(v3 + 280) = v63;
        *(v3 + 288) = 0;
      }

      if ((~*(&v47 + 1) & 0x7FF0000000000000) != 0)
      {
        if (*(v3 + 288))
        {
          v72 = *(&v47 + 1);
        }

        else
        {
          v72 = *(v3 + 272);
          if (v72 >= *(&v47 + 1))
          {
            v72 = *(&v47 + 1);
          }

          if (*(v3 + 280) >= *(&v47 + 1))
          {
            v62 = *(v3 + 280);
          }
        }

        *(v3 + 272) = v72;
        *(v3 + 280) = v62;
        *(v3 + 288) = 0;
      }
    }

    else
    {
      swift_beginAccess();
      if (v64 != 0x7FF0000000000000)
      {
        if (*(v3 + 264))
        {
          v70 = *&v47;
        }

        else
        {
          v70 = *(v3 + 248);
          if (v70 >= *&v47)
          {
            v70 = *&v47;
          }

          if (*(v3 + 256) >= *&v47)
          {
            v63 = *(v3 + 256);
          }
        }

        *(v3 + 248) = v70;
        *(v3 + 256) = v63;
        *(v3 + 264) = 0;
      }

      if ((~*(&v47 + 1) & 0x7FF0000000000000) != 0)
      {
        if (*(v3 + 264))
        {
          v73 = *(&v47 + 1);
        }

        else
        {
          v73 = *(v3 + 248);
          if (v73 >= *(&v47 + 1))
          {
            v73 = *(&v47 + 1);
          }

          if (*(v3 + 256) >= *(&v47 + 1))
          {
            v62 = *(v3 + 256);
          }
        }

        *(v3 + 248) = v73;
        *(v3 + 256) = v62;
        *(v3 + 264) = 0;
      }
    }

    v74 = MEMORY[0x1E69E6720];
    sub_1AACDB9A8(v92, v85, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AACDB9A8(&v86, v85, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v74);
  }

  else
  {
    swift_beginAccess();
    v51 = MEMORY[0x1E69E6720];
    sub_1AACDB9A8(v92, v85, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AACDB9A8(&v86, v85, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v51);
    sub_1AACD3D44(v47, *(&v47 + 1), v48);
    swift_endAccess();
  }

  swift_beginAccess();
  if (*(v3 + 313) << 8 == 512)
  {
    nullsub_1();
    *(v3 + 312) = sub_1AACD3F0C(v49, v50) & 0x1FF;
  }

LABEL_123:
  swift_endAccess();
  v78 = MEMORY[0x1E69E6720];
  sub_1AAE0BE80(&v86, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
  return sub_1AAE0BE80(&v86, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v78);
}

uint64_t sub_1AACD38BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a3;
  swift_beginAccess();
  sub_1AACD3D44(a1, a2, v4);
  return swift_endAccess();
}

uint64_t sub_1AACD3A44(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        swift_beginAccess();
        if (*(v3 + 233) << 8 == 512)
        {
          nullsub_1();
          *(v3 + 232) = sub_1AACD3F0C(a1, a2) & 0x1FF;
        }
      }

      else
      {
        swift_beginAccess();
        if (*(v3 + 313) << 8 == 512)
        {
          nullsub_1();
          *(v3 + 312) = sub_1AACD3F0C(a1, a2) & 0x1FF;
        }
      }
    }

    else if (a3)
    {
      swift_beginAccess();
      if (*(v3 + 161) << 8 == 512)
      {
        nullsub_1();
        *(v3 + 160) = sub_1AACD3F0C(a1, a2) & 0x1FF;
      }
    }

    else
    {
      swift_beginAccess();
      if (*(v3 + 89) << 8 == 512)
      {
        nullsub_1();
        *(v3 + 88) = sub_1AACD3F0C(a1, a2) & 0x1FF;
      }
    }
  }

  else if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      swift_beginAccess();
      if (*(v3 + 385) << 8 == 512)
      {
        nullsub_1();
        *(v3 + 384) = sub_1AACD3F0C(a1, a2) & 0x1FF;
      }
    }

    else
    {
      swift_beginAccess();
      if (*(v3 + 457) << 8 == 512)
      {
        nullsub_1();
        *(v3 + 456) = sub_1AACD3F0C(a1, a2) & 0x1FF;
      }
    }
  }

  else if (a3 == 6)
  {
    swift_beginAccess();
    if (*(v3 + 529) << 8 == 512)
    {
      nullsub_1();
      *(v3 + 528) = sub_1AACD3F0C(a1, a2) & 0x1FF;
    }
  }

  else if (a3 == 7)
  {
    swift_beginAccess();
    if (*(v3 + 601) << 8 == 512)
    {
      nullsub_1();
      *(v3 + 600) = sub_1AACD3F0C(a1, a2) & 0x1FF;
    }
  }

  else
  {
    swift_beginAccess();
    if (*(v3 + 673) << 8 == 512)
    {
      nullsub_1();
      *(v3 + 672) = sub_1AACD3F0C(a1, a2) & 0x1FF;
    }
  }

  return swift_endAccess();
}

uint64_t sub_1AACD3D44(uint64_t result, uint64_t a2, char a3)
{
  v4 = result;
  if (a3)
  {
    if (a3 == 1)
    {
      if ((~result & 0x7FF0000000000000) != 0)
      {
        if (*(v3 + 40))
        {
          *(v3 + 24) = *&result;
          *(v3 + 32) = *&result;
          *(v3 + 40) = 0;
        }

        else
        {
          v13 = result;
          v14 = *(v3 + 24);
          if (v14 >= *&result)
          {
            v14 = *&result;
          }

          if (*(v3 + 32) >= *&result)
          {
            v13 = *(v3 + 32);
          }

          *(v3 + 24) = v14;
          *(v3 + 32) = v13;
          *(v3 + 40) = 0;
        }
      }
    }

    else
    {
      v6 = *(v3 + 56);

      if (sub_1AAD77848(v4, a2, v6))
      {

        *&result = COERCE_DOUBLE(sub_1AACCA728(v4, a2, 2));
      }

      else
      {

        v7 = v3;
        sub_1AAD7AAA4(&v19, v4, a2);

        v8 = *(v3 + 48);
        *&result = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
        if ((result & 1) == 0)
        {
          *&result = COERCE_DOUBLE(sub_1AAD67908(0, *(v8 + 16) + 1, 1, v8));
          v8 = result;
        }

        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        v11 = v9 + 1;
        if (v9 >= v10 >> 1)
        {
          v17 = v8;
          v18 = *(v8 + 16);
          *&result = COERCE_DOUBLE(sub_1AAD67908((v10 > 1), v9 + 1, 1, v17));
          v9 = v18;
          v8 = result;
        }

        *(v8 + 16) = v11;
        v12 = v8 + 16 * v9;
        *(v12 + 32) = v4;
        *(v12 + 40) = a2;
        *(v7 + 48) = v8;
      }
    }
  }

  else if ((~result & 0x7FF0000000000000) != 0)
  {
    if (*(v3 + 16))
    {
      *v3 = *&result;
      *(v3 + 8) = *&result;
    }

    else
    {
      v15 = result;
      v16 = *v3;
      if (*v3 >= *&result)
      {
        v16 = *&result;
      }

      if (*(v3 + 8) >= *&result)
      {
        v15 = *(v3 + 8);
      }

      *v3 = v16;
      *(v3 + 8) = v15;
    }

    *(v3 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AACD3F0C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  return word_1AAFB2A3A[v5] | byte_1AAFB2A2A[v5];
}

unint64_t sub_1AACD3FC4(unsigned __int8 *a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (v7 = sub_1AACDBD1C(a1), (v8 & 1) == 0))
  {
    v10 = 0.0;
    v11 = 0.0;
    if (a2 >= 0.0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v12 = v11 + 0.0;
    goto LABEL_7;
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v11 = *v9;
  v10 = v9[1];
  if (a2 < 0.0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v12 = v11 + a2;
  a2 = 0.0;
LABEL_7:
  v13 = a2 + v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  result = sub_1AACDBD88(a1, isUniquelyReferenced_nonNull_native, v12, v13);
  *v3 = v16;
  return result;
}

unint64_t sub_1AACD4088()
{
  result = qword_1ED9B0560[0];
  if (!qword_1ED9B0560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B0560);
  }

  return result;
}

unint64_t sub_1AACD40E0()
{
  result = qword_1ED9B09C0;
  if (!qword_1ED9B09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B09C0);
  }

  return result;
}

uint64_t static Optional<A>._layoutChartContent(_:_:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v12 + 32))(v15, v11, a3);
  v18 = v17;
  (*(a4 + 32))(v15, &v18, a3, a4);
  return (*(v12 + 8))(v15, a3);
}

unint64_t sub_1AACD4348(uint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  v5 = v4;
  v7 = a3;
  v10 = *v4;
  result = sub_1AACB6398(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1AAD95A40();
      result = v19;
      goto LABEL_8;
    }

    sub_1AACD4478(v16, a4 & 1);
    result = sub_1AACB6398(v7);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1AAF905B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2;
    *(v22 + 9) = HIBYTE(a2) & 1;
  }

  else
  {

    return sub_1AACD473C(result, v7, a1, a2 & 0x1FF, v21);
  }

  return result;
}

void sub_1AACD4478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B1E28, sub_1AACB62F8, &type metadata for Spec.Channel, &type metadata for PartialSpec.Values);
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 16 * v20;
      v22 = *(*(v5 + 48) + v20);
      v36 = *(v21 + 9);
      v23 = *(v21 + 8);
      v24 = *v21;
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v22);
      v25 = sub_1AAF906F4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 9) = v36;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

unint64_t sub_1AACD473C(unint64_t result, char a2, uint64_t a3, __int16 a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  *(v5 + 9) = HIBYTE(a4) & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_1AACD4790(uint64_t a1)
{
  sub_1AACD4820(319);
  if (v1 <= 0x3F)
  {
    sub_1AACAF0D8(319);
    if (v2 <= 0x3F)
    {
      sub_1AACD48D8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1AACD4820(uint64_t a1)
{
  if (!qword_1ED9B29C0)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1AACD2D88(255, &qword_1ED9B29B8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1AACD2D88(255, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B29C0);
    }
  }
}

uint64_t sub_1AACD48D8()
{
  result = qword_1ED9B2A18;
  if (!qword_1ED9B2A18)
  {
    result = MEMORY[0x1E69E63B0];
    atomic_store(MEMORY[0x1E69E63B0], &qword_1ED9B2A18);
  }

  return result;
}

uint64_t static BuilderTuple<each A>._layoutChartContent(_:_:)(uint64_t TupleTypeMetadata, __int128 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (a3 != 1)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_8;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_8;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v7)
      {
LABEL_8:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v48 = &v46;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v54 = *a2;
  v47 = v23;
  v24 = *(v23 + 16);
  v55 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v25;
  result = v24();
  if (!v7)
  {
    return (*(v47 + 8))(v55, v49);
  }

  v27 = 0;
  v53 = v54;
  v52 = a4 & 0xFFFFFFFFFFFFFFFELL;
  v51 = a5 & 0xFFFFFFFFFFFFFFFELL;
  v28 = (v49 + 32);
  v50 = v7;
  while (1)
  {
    v56 = &v46;
    v29 = *(v52 + 8 * v27);
    v57 = *(v51 + 8 * v27);
    v31.n128_f64[0] = MEMORY[0x1EEE9AC00](result);
    v33 = &v46 - v32;
    v34 = v7 == 1 ? 0 : *v28;
    v58 = v30;
    (*(v30 + 16))(v33, &v55[v34], v29, v31);
    v35 = *(v53 + 16);
    v36 = *(v35 + 16);
    v37 = *(v36 + 32);
    *&v60[0] = v27;

    sub_1AAF90024();
    v62 = v37;
    swift_beginAccess();
    v38 = *(v36 + 16);
    if (*(v38 + 16) && (v39 = sub_1AACCAE28(&v62), (v40 & 1) != 0))
    {
      v41 = *(*(v38 + 56) + 8 * v39);
    }

    else
    {
      swift_endAccess();
      sub_1AAF90704();
      MEMORY[0x1AC5992C0](v27);
      MEMORY[0x1AC5992F0](v37);
      v65 = v60[2];
      v66 = v60[3];
      v67 = v61;
      v63 = v60[0];
      v64 = v60[1];
      v42 = sub_1AAF906E4();
      v41 = sub_1AACCB060(v42);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(v36 + 16);
      *(v36 + 16) = 0x8000000000000000;
      sub_1AACCB154(v41, &v62, isUniquelyReferenced_nonNull_native);
      *(v36 + 16) = v59;
    }

    swift_endAccess();
    sub_1AACCAFF0(&v62);
    v44 = *(v36 + 32);
    *(v36 + 32) = v41;
    v45 = *(v35 + 24);
    *(v35 + 24) = v41;
    v60[0] = v54;
    (*(v57 + 32))(v33, v60, v29);
    *(v35 + 24) = v45;

    *(v36 + 32) = v44;

    result = (*(v58 + 8))(v33, v29);
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    ++v27;
    v28 += 4;
    v7 = v50;
    if (v50 == v27)
    {
      return (*(v47 + 8))(v55, v49);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AACD4E48()
{
  result = qword_1ED9B4250;
  if (!qword_1ED9B4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4250);
  }

  return result;
}

unint64_t sub_1AACD4EA0()
{
  result = qword_1ED9B6740[0];
  if (!qword_1ED9B6740[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B6740);
  }

  return result;
}

uint64_t static BuilderConditional<>._layoutChartContent(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v44 = a5;
  v45 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BuilderConditional.Storage(0, v17, v18, v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - v21;
  v23 = *a2;
  v24 = a2[1];
  (*(v25 + 16))(&v42 - v21, a1, v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v45;
    (*(v45 + 32))(v11, v22, a4);
    v27 = *(v23 + 16);
    v28 = *(v27 + 16);
    v29 = *(v28 + 32);

    v31 = sub_1AACD5520(0, v29, v30);
    v32 = *(v28 + 32);
    *(v28 + 32) = v31;
    v33 = *(v27 + 24);
    *(v27 + 24) = v31;
    v46 = v23;
    v47 = v24;
    (*(v43 + 32))(v11, &v46, a4);
    *(v27 + 24) = v33;

    *(v28 + 32) = v32;

    return (*(v26 + 8))(v11, a4);
  }

  else
  {
    (*(v13 + 32))(v16, v22, a3);
    v35 = *(v23 + 16);
    v36 = *(v35 + 16);
    v37 = *(v36 + 32);

    v39 = sub_1AACD5520(1, v37, v38);
    v40 = *(v36 + 32);
    *(v36 + 32) = v39;
    v41 = *(v35 + 24);
    *(v35 + 24) = v39;
    v46 = v23;
    v47 = v24;
    (*(v44 + 32))(v16, &v46, a3);
    *(v35 + 24) = v41;

    *(v36 + 32) = v40;

    return (*(v13 + 8))(v16, a3);
  }
}

uint64_t static ChartContent._layoutChartContent(_:_:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(a4 + 24))(a3, a4, v9);
  v14 = *a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v11, &v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1AACD53C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PlottableValue.Storage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AACD5440()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 72);
  return (*(v2 + 32))(v1, &v4);
}

uint64_t sub_1AACD5490(uint64_t a1)
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1AACD5520(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  sub_1AAF90024();
  v15 = a2;
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (v8 = sub_1AACCAE28(&v15), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    swift_endAccess();
    sub_1AAF90704();
    MEMORY[0x1AC5992C0](a1);
    MEMORY[0x1AC5992F0](a2);
    v11 = sub_1AAF906E4();
    v10 = sub_1AACCB060(v11);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_1AACCB154(v10, &v15, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v14;
  }

  swift_endAccess();
  sub_1AACCAFF0(&v15);
  return v10;
}

uint64_t sub_1AACD5668(uint64_t a1, uint64_t a2)
{
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AACD56E8(uint64_t a1, uint64_t a2)
{
  sub_1AACD575C(0, &qword_1ED9B4460, "lower upper ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AACD575C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1AAF8CA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AACD57C4(uint64_t a1)
{
  if (!qword_1ED9B4460)
  {
    sub_1AAF8CA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B4460);
    }
  }
}

uint64_t sub_1AACD582C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACD5894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACD58FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACD5964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static PlottableValue.value(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_1AAF8EA44();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v12 + 16))(v14, a5, a6);
  return sub_1AACD6EC4(v15, v17, v19 & 1, v21, v14, a6, a7, x8_0);
}

void *BarMark.init<A, B>(x:y:width:height:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a4;
  v44 = a7;
  v37 = a6;
  v36 = a5;
  v41 = a2;
  v42 = a3;
  v38 = a1;
  v45 = a9;
  v40 = a10;
  v39 = a12;
  v13 = type metadata accessor for PlottableValue(0, a10, a12, a4);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v35 - v15);
  v18 = type metadata accessor for PlottableValue(0, a8, a11, v17);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v35 - v21);
  v23 = v38;
  (*(v19 + 16))(&v35 - v21, v38, v18, v20);
  sub_1AACD6F84(v22, a8, a11, &v65);
  v24 = v41;
  (*(v14 + 16))(v16, v41, v13);
  sub_1AACD6F84(v16, v40, v39, &v70);
  (*(v14 + 8))(v24, v13);
  (*(v19 + 8))(v23, v18);
  v25 = v72;
  v26 = v73;
  if (!v73)
  {
    v28 = v67;
    v48 = v67;
    v49 = v68;
    v46 = v65;
    v47 = v66;
    *&v50 = v69;
    *(&v50 + 1) = v42;
    LOBYTE(v51) = v43;
    v29 = v68;
    sub_1AACD7CA8(&v46);
    v64[6] = v52;
    v64[7] = v53;
    v64[8] = v54;
    v64[2] = v48;
    v64[3] = v49;
    v64[4] = v50;
    v64[5] = v51;
    v64[0] = v46;
    v64[1] = v47;
    v57 = v72;
    v58 = v73;
    *&v59 = v74;
    v55 = v70;
    v56 = v71;
    BYTE8(v59) = v44;
    *(&v59 + 9) = 1;
    v60 = v28;
    LOBYTE(v61) = v29;
    *(&v61 + 1) = 0;
    *&v62 = 0;
    BYTE8(v62) = -4;
    sub_1AACD7C5C(&v55);
    v64[15] = v61;
    v64[16] = v62;
    v64[17] = v63;
    v64[11] = v57;
    v64[12] = v58;
    v64[13] = v59;
    v64[14] = v60;
    v64[9] = v55;
    v64[10] = v56;
    sub_1AACD7C50(v25, *(&v25 + 1), 0);
    v31 = v28 >> 64;
    v30 = v28;
    v32 = v29;
LABEL_6:
    sub_1AACD7C50(v30, v31, v32);
    return memcpy(v45, v64, 0x120uLL);
  }

  v27 = v44;
  if (!v68)
  {
    v33 = v67;
    v48 = v72;
    v49 = v73;
    v46 = v70;
    v47 = v71;
    *&v50 = v74;
    *(&v50 + 1) = v36;
    LOBYTE(v51) = v37;
    sub_1AACD7CA8(&v46);
    v64[15] = v52;
    v64[16] = v53;
    v64[17] = v54;
    v64[11] = v48;
    v64[12] = v49;
    v64[13] = v50;
    v64[14] = v51;
    v64[9] = v46;
    v64[10] = v47;
    v57 = v67;
    v58 = v68;
    *&v59 = v69;
    v55 = v65;
    v56 = v66;
    BYTE8(v59) = v27;
    *(&v59 + 9) = 0;
    v60 = v25;
    LOBYTE(v61) = v26;
    *(&v61 + 1) = 0;
    *&v62 = 0;
    BYTE8(v62) = -4;
    sub_1AACD7C5C(&v55);
    v64[6] = v61;
    v64[7] = v62;
    v64[8] = v63;
    v64[2] = v57;
    v64[3] = v58;
    v64[4] = v59;
    v64[5] = v60;
    v64[0] = v55;
    v64[1] = v56;
    sub_1AACD7C50(v25, *(&v25 + 1), v26);
    v31 = v33 >> 64;
    v30 = v33;
    v32 = 0;
    goto LABEL_6;
  }

  v48 = v67;
  v49 = v68;
  v46 = v65;
  v47 = v66;
  *&v50 = v69;
  *(&v50 + 1) = v42;
  LOBYTE(v51) = v43;
  sub_1AACD7CA8(&v46);
  v64[6] = v52;
  v64[7] = v53;
  v64[8] = v54;
  v64[2] = v48;
  v64[3] = v49;
  v64[4] = v50;
  v64[5] = v51;
  v64[0] = v46;
  v64[1] = v47;
  v57 = v72;
  v58 = v73;
  v55 = v70;
  v56 = v71;
  *&v59 = v74;
  *(&v59 + 1) = v36;
  LOBYTE(v60) = v37;
  sub_1AACD7CA8(&v55);
  v64[15] = v61;
  v64[16] = v62;
  v64[17] = v63;
  v64[11] = v57;
  v64[12] = v58;
  v64[13] = v59;
  v64[14] = v60;
  v64[9] = v55;
  v64[10] = v56;
  return memcpy(v45, v64, 0x120uLL);
}

void sub_1AACD5FDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AACD6030(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AACD6084(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for Resolved3DContentList.Item(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AACD60D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B2978, sub_1AACD4E48, &type metadata for IDGenerator.Key, MEMORY[0x1E69E76D8]);
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 48 * v22);
      if (v4)
      {
        v24 = *v23;
        v25 = v23[2];
        v38 = v23[1];
        v39 = v25;
        v37 = v24;
      }

      else
      {
        sub_1AACCAEA4(v23, &v37);
      }

      v26 = *(*(v5 + 56) + 8 * v22);
      sub_1AAF90694();
      MEMORY[0x1AC5992F0](v37);
      sub_1AAF90014();
      v27 = sub_1AAF906F4();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      v17 = v37;
      v18 = v39;
      v16[1] = v38;
      v16[2] = v18;
      *v16 = v17;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t ForEach<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1AAF8EF84();

  return (*(*(a4 - 8) + 8))(a1, a4);
}

__n128 sub_1AACD64FC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t static PlottableValue.value<>(_:_:unit:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v81 = a6;
  v82 = a5;
  v78 = a4;
  v79 = a8;
  v76 = a3;
  v73 = a2;
  v75 = a1;
  sub_1AACD57C4(0);
  v72 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - v12;
  v83 = sub_1AAF8CA64();
  v71 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - v16;
  sub_1AACD6C54(0);
  v77 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v66 - v21;
  sub_1AACD6DA4(0, &qword_1ED9B1678, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v66 - v23;
  v85 = sub_1AAF8C6F4();
  v25 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v66 - v28;
  v30 = sub_1AAF8CBA4();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD5668(a7, v29);
  v34 = *(v31 + 48);
  v35 = v34(v29, 1, v30);
  v68 = v30;
  if (v35 == 1)
  {
    sub_1AAF8CB34();
    v36 = v31;
    if (v34(v29, 1, v30) != 1)
    {
      sub_1AAE8D1FC(v29);
    }
  }

  else
  {
    (*(v31 + 32))(v33, v29, v30);
    v36 = v31;
  }

  v82 = v33;
  sub_1AAF8CAD4();
  v37 = v85;
  result = (*(v25 + 48))(v24, 1, v85);
  if (result != 1)
  {
    (*(v25 + 32))(v84, v24, v37);
    sub_1AAF8C6E4();
    v39 = v80;
    sub_1AAF8C6D4();
    sub_1AACD6CE8();
    result = sub_1AAF8F584();
    if (result)
    {
      v40 = v71;
      v41 = v69;
      v81 = v36;
      v42 = v83;
      v66 = v25;
      v43 = *(v71 + 32);
      v43(v13, v17, v83);
      v44 = v72;
      v43(&v13[*(v72 + 48)], v39, v42);
      v45 = v43;
      sub_1AACD56E8(v13, v41);
      v46 = *(v44 + 48);
      v47 = v70;
      v45(v70, v41, v42);
      v67 = v45;
      v48 = *(v40 + 8);
      v48(v41 + v46, v42);
      sub_1AACD58FC(v13, v41, sub_1AACD57C4);
      v49 = *(v44 + 48);
      v50 = v77;
      v45(&v47[*(v77 + 36)], v41 + v49, v42);
      v48(v41, v42);

      v51 = sub_1AAF8EA44();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      (*(v66 + 8))(v84, v85);
      (*(v81 + 8))(v82, v68);
      v58 = v47;
      v59 = v74;
      sub_1AACD58FC(v58, v74, sub_1AACD6C54);
      v60 = v79;
      *v79 = v51;
      v60[1] = v53;
      *(v60 + 16) = v55 & 1;
      v60[3] = v57;
      sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
      v62 = v60 + *(v61 + 36);
      sub_1AACD6E60(0);
      v64 = *(v63 + 48);
      v65 = v67;
      v67(v62, v59, v42);
      v65(&v62[v64], v59 + *(v50 + 36), v42);
      sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AACD6C54(uint64_t a1)
{
  if (!qword_1ED9B0690)
  {
    sub_1AAF8CA64();
    sub_1AACECB5C(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = sub_1AAF8FCA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B0690);
    }
  }
}

unint64_t sub_1AACD6CE8()
{
  result = qword_1ED9B6BA8;
  if (!qword_1ED9B6BA8)
  {
    sub_1AAF8CA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B6BA8);
  }

  return result;
}

void sub_1AACD6D40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AACD6DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AACD6DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
{
  if (!*a2)
  {
    v6 = sub_1AAF8CA64();
    v7 = a3(a1, v6, &protocol witness table for Date);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AACD6E60(uint64_t a1)
{
  if (!qword_1ED9B09C8)
  {
    sub_1AAF8CA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B09C8);
    }
  }
}

uint64_t sub_1AACD6EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a4;
  v12 = type metadata accessor for PlottableValue(0, a6, a7, a4);
  (*(*(a6 - 8) + 32))(a8 + *(v12 + 36), a5, a6);
  type metadata accessor for PlottableValue.Storage(0, a6, a7, v13);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AACD6F84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v17 = type metadata accessor for PlottableValue.Storage(0, v14, v15, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  v21 = *a1;
  v48 = a1[1];
  v49 = v21;
  v47 = *(a1 + 16);
  v22 = a1[3];
  v45 = a3;
  v46 = v22;
  v24 = type metadata accessor for PlottableValue(0, a2, a3, v23);
  (*(v18 + 16))(v20, a1 + *(v24 + 36), v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(swift_getTupleTypeMetadata2() + 48);
    v26 = v13;
    v43 = v13;
    v27 = v8;
    v28 = *(v8 + 32);
    v28(v26, v20, a2);
    v28(v10, &v20[v25], a2);
    sub_1AACD7304(v49, v48, v47);

    v29 = v43;
    v30 = v45;
    v31 = sub_1AACD7314(v43, v10, a2, v45);
    v33 = v32;
    v44 = v34;
    (*(*(v24 - 8) + 8))(a1, v24);
    v35 = *(v27 + 8);
    v35(v10, a2);
    result = (v35)(v29, a2);
    v37 = v44 & 1 | 0x80;
  }

  else
  {
    (*(v8 + 32))(v13, v20, a2);
    sub_1AACD7304(v49, v48, v47);

    v30 = v45;
    v31 = sub_1AACD78AC(v13, a2, v45);
    v33 = v38;
    v39 = v8;
    v37 = v40;
    (*(*(v24 - 8) + 8))(a1, v24);
    result = (*(v39 + 8))(v13, a2);
  }

  v41 = v47;
  v42 = v48;
  *a4 = v49;
  *(a4 + 8) = v42;
  *(a4 + 16) = v41;
  *(a4 + 24) = v46;
  *(a4 + 32) = v31;
  *(a4 + 40) = v33;
  *(a4 + 48) = v37;
  *(a4 + 56) = a2;
  *(a4 + 64) = v30;
  return result;
}

void sub_1AACD7304(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1AACD7330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v39, AssociatedTypeWitness, AssociatedConformanceWitness);
  switch(v39)
  {
    case 1:
      v21 = MEMORY[0x1E69E7290];
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7290], &v38);
      v22.i16[0] = v38;
      _D8 = vmovl_s16(v22).i32[0];
      sub_1AACB09D0(a2, AssociatedTypeWitness, v21, &v38);
      return *&_D8;
    case 2:
      v18 = MEMORY[0x1E69E72F0];
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E72F0], &v38);
      _D8 = v38;
      sub_1AACB09D0(a2, AssociatedTypeWitness, v18, &v38);
      return *&_D8;
    case 3:
      v13 = MEMORY[0x1E69E7360];
      goto LABEL_9;
    case 4:
      v13 = MEMORY[0x1E69E6530];
LABEL_9:
      sub_1AACB09D0(a1, AssociatedTypeWitness, v13, &v38);
      _D8 = v38;
      sub_1AACB09D0(a2, AssociatedTypeWitness, v13, &v38);
      return *&_D8;
    case 5:
      v23 = MEMORY[0x1E69E7508];
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7508], &v38);
      LOBYTE(v24) = v38;
      _D8 = v24;
      sub_1AACB09D0(a2, AssociatedTypeWitness, v23, &v38);
      return *&_D8;
    case 6:
      v27 = MEMORY[0x1E69E75F8];
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E75F8], &v38);
      LOWORD(v28) = v38;
      _D8 = v28;
      sub_1AACB09D0(a2, AssociatedTypeWitness, v27, &v38);
      return *&_D8;
    case 7:
      v19 = MEMORY[0x1E69E7668];
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7668], &v38);
      LODWORD(v20) = v38;
      _D8 = v20;
      sub_1AACB09D0(a2, AssociatedTypeWitness, v19, &v38);
      return *&_D8;
    case 8:
      v17 = MEMORY[0x1E69E76D8];
      goto LABEL_18;
    case 9:
      v17 = MEMORY[0x1E69E6810];
LABEL_18:
      sub_1AACB09D0(a1, AssociatedTypeWitness, v17, &v38);
      _D8 = v38;
      sub_1AACB09D0(a2, AssociatedTypeWitness, v17, &v38);
      return *&_D8;
    case 10:
      v29 = MEMORY[0x1E69E7788];
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7788], &v38);
      _H0 = v38;
      __asm { FCVT            D8, H0 }

      sub_1AACB09D0(a2, AssociatedTypeWitness, v29, &v38);
      _H0 = v38;
      __asm { FCVT            D0, H0 }

      return *&_D8;
    case 11:
      v12 = MEMORY[0x1E69E6448];
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E6448], &v38);
      _D8 = *&v38;
      sub_1AACB09D0(a2, AssociatedTypeWitness, v12, &v38);
      return *&_D8;
    case 12:
      v14 = MEMORY[0x1E69E63B0];
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &v38);
      v15 = v38;
      sub_1AACB09D0(a2, AssociatedTypeWitness, v14, &v37);
      return v15;
    case 13:
      sub_1AACB0534(a1, AssociatedTypeWitness, a3, a4);
      v26 = v25;
      sub_1AACB0534(a2, AssociatedTypeWitness, a3, a4);
      return v26;
    case 14:
      sub_1AAF902C4();
      __break(1u);
      JUMPOUT(0x1AACD7870);
    default:
      v10 = MEMORY[0x1E69E7230];
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7230], &v38);
      _D8 = v38;
      sub_1AACB09D0(a2, AssociatedTypeWitness, v10, &v38);
      return *&_D8;
  }
}

double sub_1AACD78B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  switch(v20)
  {
    case 1:
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7290], &v19);
      v13.i16[0] = v19;
      return vmovl_s16(v13).i32[0];
    case 2:
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E72F0], &v19);
      return v19;
    case 3:
      v9 = MEMORY[0x1E69E7360];
      goto LABEL_10;
    case 4:
      v9 = MEMORY[0x1E69E6530];
LABEL_10:
      sub_1AACB09D0(a1, AssociatedTypeWitness, v9, &v19);
      return v19;
    case 5:
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7508], &v19);
      LOBYTE(v12) = v19;
      goto LABEL_20;
    case 6:
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E75F8], &v19);
      LOWORD(v12) = v19;
      goto LABEL_20;
    case 7:
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7668], &v19);
      LODWORD(v12) = v19;
      goto LABEL_20;
    case 8:
      v10 = MEMORY[0x1E69E76D8];
      goto LABEL_19;
    case 9:
      v10 = MEMORY[0x1E69E6810];
LABEL_19:
      sub_1AACB09D0(a1, AssociatedTypeWitness, v10, &v19);
      v12 = v19;
LABEL_20:
      result = v12;
      break;
    case 10:
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7788], &v19);
      _H0 = v19;
      __asm { FCVT            D0, H0 }

      break;
    case 11:
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E6448], &v19);
      result = *&v19;
      break;
    case 12:
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &v19);
      break;
    case 13:
      sub_1AACB0534(a1, AssociatedTypeWitness, a2, a3);
      break;
    case 14:
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E6158], &v19);
      break;
    default:
      sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7230], &v19);
      result = v19;
      break;
  }

  return result;
}

uint64_t sub_1AACD7C50(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    return sub_1AACCAE10(a1, a2, a3);
  }

  return a1;
}

int8x16_t sub_1AACD7C5C(uint64_t a1)
{
  v1 = *(a1 + 64) & 0xFFFFFFFFFFFFFF8;
  v2 = *(a1 + 136) & 0xFFFFFFFFFFFFFF8 | 0xA000000000000000;
  *(a1 + 48) = vandq_s8(*(a1 + 48), xmmword_1AAF92DB0);
  *(a1 + 64) = v1;
  result = vandq_s8(*(a1 + 120), xmmword_1AAF92DC0);
  *(a1 + 120) = result;
  *(a1 + 136) = v2;
  return result;
}

int8x16_t sub_1AACD7CA8(uint64_t a1)
{
  v1 = *(a1 + 64) & 0xFFFFFFFFFFFFFF8;
  v2 = *(a1 + 136) & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
  *(a1 + 48) = vandq_s8(*(a1 + 48), xmmword_1AAF92DB0);
  *(a1 + 64) = v1;
  result = vandq_s8(*(a1 + 120), xmmword_1AAF92DC0);
  *(a1 + 120) = result;
  *(a1 + 136) = v2;
  return result;
}

uint64_t ChartContent.foregroundStyle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  v21[3] = a3;
  v21[4] = a5;
  v12 = sub_1AACB2508(v21);
  v13 = *(*(a3 - 8) + 16);
  v13(v12, a1, a3);
  v22 = 1;
  v14 = swift_getKeyPath();
  v19[3] = a3;
  v19[4] = a5;
  v15 = sub_1AACB2508(v19);
  v13(v15, a1, a3);
  v20 = 1;
  sub_1AACD7E50(KeyPath, v21, v14, v19, a2, a4, a6);

  v16 = MEMORY[0x1E69E6720];
  sub_1AACD84B4(v19, &unk_1ED9B3898, &type metadata for ModifierForegroundStyle, MEMORY[0x1E69E6720]);
  return sub_1AACD84B4(v21, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading, v16);
}

double sub_1AACD7E50@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a2;
  v39 = a7;
  v40 = a6;
  v33 = a5;
  v34 = a4;
  v38 = a1;
  v35 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v33 - v9;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v16 + v17 + 8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  v25 = type metadata accessor for _ContainerValueWritingChartContentModifier(0, v18, v23, v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (&v33 - v27);
  (*(v19 + 16))(v22, v34, v18, v26);
  sub_1AACD81EC(a3, v22, v29, v30, v28);
  v31 = v33;
  (*(v12 + 16))(v15, v36, v33);
  (*(v8 + 16))(v10, v37, v35);
  sub_1AACD8344(v15, v38, v10, v28, v31, v25, v40, &off_1EE75E340, v39);

  return result;
}

uint64_t sub_1AACD8148(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AACD819C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AACD81EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v7 = *a1;
  *a5 = a1;
  v8 = *(v7 + *MEMORY[0x1E69E6CE8] + 8);
  v9 = type metadata accessor for _ContainerValueWritingChartContentModifier(0, v8, a3, a4);
  v10 = *(*(v8 - 8) + 32);
  v11 = a5 + *(v9 + 28);

  return v10(v11, a2, v8);
}

uint64_t sub_1AACD82D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (((v1 >> 1) & 0x3E) != 0)
  {
    return 64 - ((v1 >> 1) & 0x3E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AACD82F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AACD8344@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a2;
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v18 = *(v17 + *MEMORY[0x1E69E6CE8] + 8);
  v21[0] = a5;
  v21[1] = v18;
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v19 = type metadata accessor for CombinedModifiedChartContent_Environment(0, v21);
  *(a9 + v19[15]) = a2;
  (*(*(v18 - 8) + 32))(a9 + v19[16], a3, v18);
  return (*(*(a6 - 8) + 32))(a9 + v19[17], a4, a6);
}

uint64_t sub_1AACD84B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AACAA194(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_1AACD857C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[6] = a2;
  v11[7] = a3;

  sub_1AACD8620(a1, sub_1AACD87C0, v11, a4, a5, a6);

  return result;
}

uint64_t sub_1AACD8620(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1AACD8688(a1, *(v6 + 32), a4, a6);
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;
  result = a2();
  *(v6 + 32) = v9;
  return result;
}

uint64_t sub_1AACD8688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1AAF90404();
  v15 = a2;
  swift_beginAccess();
  v7 = *(v4 + 16);
  if (*(v7 + 16) && (v8 = sub_1AACCAE28(&v15), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    swift_endAccess();
    sub_1AAF90704();
    sub_1AAF8F484();
    MEMORY[0x1AC5992F0](a2);
    v11 = sub_1AAF906E4();
    v10 = sub_1AACCB060(v11);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    sub_1AACCB154(v10, &v15, isUniquelyReferenced_nonNull_native);
    *(v5 + 16) = v14;
  }

  swift_endAccess();
  sub_1AACCAFF0(&v15);
  return v10;
}

uint64_t sub_1AACD87C0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v3 + 24);
  *(v3 + 24) = a1;
  result = v2();
  *(v3 + 24) = v4;
  return result;
}

uint64_t sub_1AACD883C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  result = v3(a1);
  *(a1 + v4) = result & 1;
  return result;
}

uint64_t sub_1AACD889C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 248);
  v4 = sub_1AAF8FE74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  sub_1AACD8DD8();
  v8 = *(*v1 + 256);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v7, 1, v3) != 1)
  {
    return (*(v9 + 32))(a1, v7, v3);
  }

  (*(v5 + 8))(v7, v4);
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AACD8A90@<X0>(void (**a1)(double)@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v25 = a3;
  v5 = *(*a2 + 248);
  v6 = sub_1AAF8FE74();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v22 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v16 = *(v15 + 48);
  (*a1)(v12);
  v17 = *(v5 - 8);
  v18 = *(v17 + 32);
  v18(v14, v10, v5);
  v14[v16] = v10[v16];
  (*(v26 + 16))(v10, v14, TupleTypeMetadata2);
  v19 = v22;
  v18(v22, v10, v5);
  (*(v17 + 56))(v19, 0, 1, v5);
  v20 = *(*a2 + 256);
  swift_beginAccess();
  (*(v23 + 40))(a2 + v20, v19, v24);
  swift_endAccess();
  (*(v26 + 32))(v10, v14, TupleTypeMetadata2);
  *v25 = v10[*(TupleTypeMetadata2 + 48)];
  return (*(v17 + 8))(v10, v5);
}

uint64_t sub_1AACD8D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AACD8DD8()
{
  if (*(v0 + 16))
  {
    return;
  }

  v1 = v0;
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    v3 = sub_1AAF8FFB4();
    if (v3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_4:
      if (v3 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v3; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1AC598D40](i, v2);
        }

        else
        {
        }

        sub_1AACD8DD8();
      }
    }
  }

  if (*(v0 + 17) == 1 && ((*(*v0 + 232))() & 1) == 0)
  {
    swift_beginAccess();
    v5 = *(v0 + 32);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;

      do
      {
        sub_1AACD9378(v7, &v9);
        Strong = swift_weakLoadStrong();
        sub_1AACD93DC(&v9);
        if (Strong)
        {
          *(Strong + 17) = 1;
        }

        v7 += 8;
        --v6;
      }

      while (v6);
    }
  }

  *(v1 + 16) = 1;
}

uint64_t sub_1AACD8F5C()
{
  v1 = v0;
  v2 = *v0;
  v3 = (v1 + *(v2 + 264));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    v6[2] = *(v2 + 248);
    v6[3] = v4;
    v6[4] = v5;
    v7 = sub_1AACD883C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_1AACBD93C(v4, v5);
  v8 = MEMORY[0x1E69E6370];
  swift_getTupleTypeMetadata2();
  swift_getFunctionTypeMetadata0();
  sub_1AAF8FE74();
  sub_1AACD90D0(sub_1AACD9438, v1, MEMORY[0x1E69E73E0], v8, v9, &v11);
  sub_1AACB4A98(v7, v6);
  return (v11 == 2) | v11 & 1u;
}

uint64_t sub_1AACD90D0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

uint64_t sub_1AACD9378(uint64_t a1, uint64_t a2)
{
  sub_1AACC9B7C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AACD93DC(uint64_t a1)
{
  sub_1AACC9B7C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AACD94B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AACCF364(0);
  sub_1AACB62F8();
  KeyPath = swift_getKeyPath();

  v5 = sub_1AACDA8B8(a1, KeyPath);

  *a2 = v5;
  return result;
}

__n128 sub_1AACD9574(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1AACD958C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v107 = a1;
  v109 = a2;
  sub_1AACDCB48(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v113 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AAF8DF14();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v106 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AAF8CA64();
  v111 = *(v17 - 8);
  v112 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v110 = v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9B59F0 != -1)
  {
LABEL_117:
    swift_once();
  }

  v19 = v7[18];
  swift_beginAccess();
  if ((*(v19 + 56) & 1) != 0 || *(v19 + 40) != a3 || *(v19 + 48) != a4)
  {
    *(v19 + 40) = a3;
    *(v19 + 48) = a4;
    *(v19 + 56) = 0;

    sub_1AACDCA88();
    *(v19 + 16) = 1;
    swift_beginAccess();
    v20 = *(v19 + 32);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 32;

      do
      {
        sub_1AACDCB7C(v22, v160, sub_1AACC9B7C);
        Strong = swift_weakLoadStrong();
        sub_1AACC9B18(v160, sub_1AACC9B7C);
        if (Strong)
        {
          *(Strong + 17) = 1;
        }

        v22 += 8;
        --v21;
      }

      while (v21);
    }
  }

  v118.val[0].f64[0] = 0.0;
  v24 = v7[19];
  swift_beginAccess();
  v25 = *(v24 + 56);
  v116 = v14;
  v108 = v15;
  if ((v25 & 1) != 0 || *(v24 + 40) != a5 || *(v24 + 48) != a6)
  {
    *(v24 + 40) = a5;
    *(v24 + 48) = a6;
    *(v24 + 56) = 0;

    sub_1AACDCA88();
    *(v24 + 16) = 1;
    swift_beginAccess();
    v26 = *(v24 + 32);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = v26 + 32;

      do
      {
        sub_1AACDCB7C(v28, v160, sub_1AACC9B7C);
        v29 = swift_weakLoadStrong();
        sub_1AACC9B18(v160, sub_1AACC9B7C);
        if (v29)
        {
          *(v29 + 17) = 1;
        }

        v28 += 8;
        --v27;
      }

      while (v27);
    }
  }

  swift_beginAccess();
  v30 = v7[35];
  v15 = v30 + 64;
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v35 = 0;
  v121 = v7;
  v119 = v30;
  while (v33)
  {
LABEL_30:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = (*(v30 + 56) + ((v35 << 10) | (16 * v37)));
    v39 = *v38;
    v14 = v38[1];
    swift_beginAccess();
    if (*(v39 + 40))
    {

      v40 = *(v39 + 40);
      *(v39 + 40) = 0;
      sub_1AAE28C84(v40);
      sub_1AACDCA88();
      *(v39 + 16) = 1;
      swift_beginAccess();
      v41 = *(v39 + 32);
      v42 = *(v41 + 16);
      if (v42)
      {
        v120 = v14;
        v43 = v41 + 32;

        do
        {
          sub_1AACDCB7C(v43, v160, sub_1AACC9B7C);
          v44 = swift_weakLoadStrong();
          sub_1AACC9B18(v160, sub_1AACC9B7C);
          if (v44)
          {
            *(v44 + 17) = 1;
          }

          v43 += 8;
          --v42;
        }

        while (v42);

        v30 = v119;
        v14 = v120;
      }

      else
      {
      }

      v7 = v121;
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(v15 + 8 * v36);
    ++v35;
    if (v33)
    {
      v35 = v36;
      goto LABEL_30;
    }
  }

  v46 = v118.val[0].f64[0];
  v47 = sub_1AACDDBCC(v45);
  *v105 = v46;

  v48 = v7[35];
  v49 = v48 + 64;
  v50 = -1 << *(v48 + 32);
  if (-v50 < 64)
  {
    v51 = ~(-1 << -v50);
  }

  else
  {
    v51 = -1;
  }

  v14 = v51 & *(v48 + 64);
  v105[1] = -1 << *(v48 + 32);
  v52 = (63 - v50) >> 6;
  v120 = v47 + 32;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v53 = 0;
  v54 = 0.0;
  v15 = v116;
  v114 = v48;
  v115 = v47;
  while (1)
  {
    v55 = v54;
    if (!v14)
    {
      while (1)
      {
        *&v57 = *&v55 + 1;
        if (__OFADD__(*&v55, 1))
        {
          goto LABEL_115;
        }

        if (*&v57 >= v52)
        {
          goto LABEL_73;
        }

        v56 = *(v49 + 8 * *&v57);
        ++*&v55;
        if (v56)
        {
          v54 = v57;
          goto LABEL_49;
        }
      }
    }

    v56 = v14;
LABEL_49:
    v14 = (v56 - 1) & v56;
    v58 = *(v47 + 16);
    if (v53 == v58)
    {
      break;
    }

    if (v53 >= v58)
    {
      goto LABEL_116;
    }

    v59 = *(v120 + 8 * v53++);
    if (v59 != 1)
    {
      v117 = v53;
      v118.val[0].f64[0] = v54;
      v60 = (*(v48 + 56) + ((*&v54 << 10) | (16 * __clz(__rbit64(v56)))));
      v61 = *v60;
      v119 = v60[1];
      swift_beginAccess();
      v62 = *(v61 + 40);
      if (v62 != 1)
      {
        if (v59)
        {
          if (v62)
          {
            v68 = *(v59 + 16);
            if (v68 == *(v62 + 16))
            {
              if (!v68 || v59 == v62)
              {
LABEL_67:
                sub_1AAE28C94(v59);

                goto LABEL_70;
              }

              v69 = 32;
              while (*(v59 + v69) == *(v62 + v69))
              {
                v69 += 8;
                if (!--v68)
                {
                  goto LABEL_67;
                }
              }
            }
          }
        }

        else if (!v62)
        {
          sub_1AAE28C94(0);
          goto LABEL_70;
        }
      }

      sub_1AAE28C94(v59);
      sub_1AAE28C94(v59);

      v63 = *(v61 + 40);
      *(v61 + 40) = v59;
      sub_1AAE28C94(v59);
      sub_1AAE28C84(v63);
      sub_1AACDCA88();
      *(v61 + 16) = 1;
      swift_beginAccess();
      v64 = *(v61 + 32);
      v65 = *(v64 + 16);
      if (v65)
      {
        v66 = v64 + 32;

        do
        {
          sub_1AACDCB7C(v66, v160, sub_1AACC9B7C);
          v67 = swift_weakLoadStrong();
          sub_1AACC9B18(v160, sub_1AACC9B7C);
          if (v67)
          {
            *(v67 + 17) = 1;
          }

          v66 += 8;
          --v65;
        }

        while (v65);

        v15 = v116;
        v7 = v121;
      }

      else
      {

        v15 = v116;
      }

      sub_1AAE28C84(v59);
      v48 = v114;
      v47 = v115;
LABEL_70:
      v53 = v117;
      v54 = v118.val[0].f64[0];
    }
  }

LABEL_73:

  sub_1AACC9C00(v48);

  if (v7[29])
  {

    sub_1AACDAA58(&v154);
    v70 = v113;
    v71 = &v148;
    if (v7[30])
    {
      goto LABEL_75;
    }

LABEL_81:
    v152 = 0u;
    memset(v153, 0, 24);
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    BYTE8(v153[1]) = -1;
    if (!v7[31])
    {
      goto LABEL_82;
    }

LABEL_76:

    sub_1AAE9F898(&v141);
    if (v7[32])
    {
      goto LABEL_77;
    }

LABEL_83:
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v140 = -1;
    if (!v7[33])
    {
      goto LABEL_84;
    }

LABEL_78:

    sub_1AACDAA58(&v126);
    if (v7[34])
    {
      goto LABEL_79;
    }

LABEL_85:
    sub_1AACDB97C(v124);
  }

  else
  {
    v71 = &v148;
    v158 = 0u;
    memset(v159, 0, 24);
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    BYTE8(v159[1]) = -1;
    v70 = v113;
    if (!v7[30])
    {
      goto LABEL_81;
    }

LABEL_75:

    sub_1AACDAA58(&v148);
    if (v7[31])
    {
      goto LABEL_76;
    }

LABEL_82:
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v147 = -1;
    if (!v7[32])
    {
      goto LABEL_83;
    }

LABEL_77:

    sub_1AAE9FE1C(&v132);
    if (v7[33])
    {
      goto LABEL_78;
    }

LABEL_84:
    memset(v131, 0, 24);
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    BYTE8(v131[1]) = -1;
    if (!v7[34])
    {
      goto LABEL_85;
    }

LABEL_79:

    sub_1AAE9FB40(v124);
  }

  v178[8] = v124[6];
  v178[9] = v124[7];
  v179 = v125;
  v178[4] = v124[2];
  v178[5] = v124[3];
  v178[6] = v124[4];
  v178[7] = v124[5];
  v178[2] = v124[0];
  v178[3] = v124[1];
  v160[3] = v157;
  v160[4] = v158;
  v161[0] = v159[0];
  *(v161 + 9) = *(v159 + 9);
  v160[0] = v154;
  v160[1] = v155;
  v160[2] = v156;
  v161[2] = v148;
  v161[3] = v149;
  *(v162 + 9) = *(v153 + 9);
  v161[6] = v152;
  v162[0] = v153[0];
  v161[4] = v150;
  v161[5] = v151;
  v162[2] = v141;
  v162[3] = v142;
  v163 = v147;
  v162[6] = v145;
  v162[7] = v146;
  v162[4] = v143;
  v162[5] = v144;
  v170 = v138;
  v171 = v139;
  v168 = v136;
  v169 = v137;
  v166 = v134;
  v167 = v135;
  v164 = v132;
  v165 = v133;
  v172 = v140;
  *(v178 + 9) = *(v131 + 9);
  v177 = v130;
  v178[0] = v131[0];
  v173 = v126;
  v174 = v127;
  v175 = v128;
  v176 = v129;
  v72 = v7[14];
  v73 = __OFADD__(v72, 1);
  v74 = v72 + 1;
  if (v73)
  {
    __break(1u);
    goto LABEL_119;
  }

  v7[14] = v74;
  v75 = v110;
  sub_1AAF8CA54();
  sub_1AAF8C854();
  v77 = v76;
  (*(v111 + 8))(v75, v112);
  a6 = v77 * 1000.0;
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (a6 >= 9.22337204e18)
  {
LABEL_121:
    __break(1u);
    __break(1u);
    goto LABEL_122;
  }

  v78 = v7[36];
  if (!v78)
  {
    v120 = 0xE000000000000000;
    v79 = v7[37];
    if (!v79)
    {
      goto LABEL_100;
    }

LABEL_93:

    sub_1AACD8DD8();
    swift_beginAccess();
    v71 = *(v79 + 40);
    if ((~v71 & 0xF000000000000007) == 0)
    {
      goto LABEL_127;
    }

    sub_1AACE4720(*(v79 + 40));

    v80 = v7[38];
    if (!v80)
    {
      goto LABEL_101;
    }

LABEL_95:

    sub_1AACD8DD8();
    swift_beginAccess();
    v48 = *(v80 + 40);
    if ((~v48 & 0xF000000000000007) == 0)
    {
      goto LABEL_127;
    }

    sub_1AACE4720(*(v80 + 40));

    v81 = v7[39];
    if (!v81)
    {
      goto LABEL_102;
    }

LABEL_97:

    sub_1AACD8DD8();
    swift_beginAccess();
    sub_1AACC9A40(v81 + 48, v123, &unk_1ED9B3630, &type metadata for ChartInternalOverlayListenerModifier);
    if (v123[53] != 1)
    {

      memcpy(v122, v123, 0x1F8uLL);
      memcpy(v123, v122, 0x1F8uLL);
      goto LABEL_105;
    }

    sub_1AACC140C(v123, &unk_1ED9B3630, &type metadata for ChartInternalOverlayListenerModifier);
    goto LABEL_127;
  }

  sub_1AACD8DD8();
  swift_beginAccess();
  v120 = *(v78 + 40);
  if ((~v120 & 0xF000000000000007) == 0)
  {
    goto LABEL_127;
  }

  sub_1AACE4720(v120);

  v79 = v7[37];
  if (v79)
  {
    goto LABEL_93;
  }

LABEL_100:
  v71 = 0xE000000000000000;
  v80 = v7[38];
  if (v80)
  {
    goto LABEL_95;
  }

LABEL_101:
  v48 = 0xE000000000000000;
  v81 = v7[39];
  if (v81)
  {
    goto LABEL_97;
  }

LABEL_102:
  memset(v122, 0, 424);
  v122[53] = 1;
  memset(&v122[54], 0, 72);
  if (qword_1ED9B5A00 != -1)
  {
LABEL_122:
    swift_once();
  }

  sub_1AAD0F924(&qword_1ED9C36D0, v123);
  if (v122[53] != 1)
  {
    sub_1AACC140C(v122, &unk_1ED9B3630, &type metadata for ChartInternalOverlayListenerModifier);
  }

LABEL_105:
  sub_1AAD050BC(v160, v122);
  v82 = v7[18];

  sub_1AACD8DD8();
  swift_beginAccess();
  if (*(v82 + 56))
  {
    goto LABEL_127;
  }

  v84 = *(v82 + 40);
  v83 = *(v82 + 48);

  v85 = v7[19];

  sub_1AACD8DD8();
  swift_beginAccess();
  if (*(v85 + 56))
  {
    goto LABEL_127;
  }

  v87 = *(v85 + 40);
  v86 = *(v85 + 48);

  v88 = v7[20];
  if (!v88)
  {
    __break(1u);
    goto LABEL_124;
  }

  sub_1AACD8DD8();
  swift_beginAccess();
  v89 = *(v88 + 40);
  if (v89 == 2)
  {
    goto LABEL_127;
  }

  v90 = v7[28];
  if (!v90)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  sub_1AACD8DD8();
  swift_beginAccess();
  if ((*(v90 + 72) & 1) == 0)
  {
    LODWORD(v119) = v89;
    v91 = v48;
    v92 = v71;
    v93 = *(v90 + 40);
    v118.val[0] = *(v90 + 56);
    v118.val[1] = v93;

    v94 = v7[21];

    sub_1AACD8DD8();
    v95 = *(*v94 + 256);
    swift_beginAccess();
    sub_1AACDCB7C(v94 + v95, v70, sub_1AACDCB48);
    v96 = v108;
    v7 = v70;
    if ((*(v108 + 48))(v70, 1, v15) != 1)
    {

      sub_1AAD09944(v160);
      v97 = *(v96 + 32);
      v98 = v106;
      v97(v106, v7, v15);
      v99 = type metadata accessor for ChartModel.Scenegraph(0);
      v100 = v15;
      v101 = v109;
      sub_1AACBFDA4(v107, v109 + v99[17]);
      v102 = v120;
      *v101 = a6;
      *(v101 + 8) = v102;
      *(v101 + 16) = v92;
      *(v101 + 24) = v91;
      memcpy((v101 + 32), v123, 0x1F8uLL);
      memcpy((v101 + 536), v122, 0x2C1uLL);
      *(v101 + 1248) = v84;
      *(v101 + 1256) = v83;
      *(v101 + 1264) = v87;
      *(v101 + 1272) = v86;
      *(v101 + 1280) = v119 & 1;
      v103 = (v101 + 1288);
      v180 = v118;
      vst2q_f64(v103, v180);
      result = v97(v101 + v99[14], v98, v100);
      *(v101 + v99[15]) = 0;
      *(v101 + v99[16]) = 0;
      return result;
    }

LABEL_125:
    sub_1AACC9B18(v7, sub_1AACDCB48);
  }

LABEL_127:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AACDA6E8(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t *a3)
{
  sub_1AACC9BB0(0, qword_1ED9B3E60, &type metadata for AnyChartContent, MEMORY[0x1E69E6720]);
  sub_1AACC9E68(0);
  sub_1AACCA000(0, &qword_1ED9B2AB8, MEMORY[0x1E69E5E28]);
  sub_1AACC9CF4(0);
  sub_1AACC9D70(0);
  sub_1AACC9DEC(0);

  sub_1AACD889C(v5);

  v11[0] = v5;

  sub_1AACD889C(v6);

  v11[1] = v6;

  sub_1AACD889C(&v7);

  v11[2] = &v7;

  sub_1AACD889C(v8);

  v11[3] = v8;

  sub_1AACD889C(v9);

  v11[4] = v9;

  sub_1AACD889C(v10);

  v11[5] = v10;
  (a1)(&v12, v11);
  sub_1AACD8D78(v5, sub_1AACE45C8);
  return v12;
}

void *sub_1AACDA8B8(uint64_t a1, uint64_t a2)
{
  sub_1AACCA000(0, &qword_1ED9B2960, MEMORY[0x1E69E6EC8]);
  result = sub_1AAF90384();
  v4 = result;
  v5 = 0;
  v22 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v13 = result + 8;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v5 << 6);
      v18 = *(*(v22 + 48) + v17);
      __src[15] = *(*(v22 + 56) + 8 * v17);

      swift_getAtKeyPath();

      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(v4[6] + v17) = v18;
      result = memmove((v4[7] + 112 * v17), __src, 0x69uLL);
      v19 = v4[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v4[2] = v21;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return v4;
      }

      v16 = *(v7 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AACDAA58(uint64_t a2@<X8>)
{
  sub_1AACC9C70(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    sub_1AACD8DD8();
    swift_beginAccess();
    v5 = *(v4 + 40);
    v6 = *(v4 + 96);
    v23 = *(v4 + 80);
    v24 = v6;
    v7 = *(v4 + 128);
    v25 = *(v4 + 112);
    v26 = v7;
    v8 = *(v4 + 64);
    v21 = *(v4 + 48);
    v22 = v8;
    if (v5)
    {
      *v20 = v5;
      *&v20[40] = v23;
      *&v20[56] = v24;
      *&v20[72] = v25;
      *&v20[88] = v26;
      *&v20[8] = v21;
      *&v20[24] = v22;
      sub_1AACDACCC(v20, v19, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0]);

      v32 = *&v20[64];
      v33 = *&v20[80];
      v34 = *&v20[96];
      v28 = *v20;
      v29 = *&v20[16];
      v30 = *&v20[32];
      v31 = *&v20[48];
      v27 = 0;
LABEL_7:
      v15 = v27;
      v16 = v33;
      *(a2 + 64) = v32;
      *(a2 + 80) = v16;
      *(a2 + 96) = v34;
      v17 = v29;
      *a2 = v28;
      *(a2 + 16) = v17;
      v18 = v31;
      *(a2 + 32) = v30;
      *(a2 + 48) = v18;
LABEL_8:
      *(a2 + 104) = v15;
      return;
    }
  }

  else
  {
    sub_1AAEAF504(0);
    v9 = swift_dynamicCastClass();
    if (!v9)
    {

      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v15 = -1;
      goto LABEL_8;
    }

    v10 = v9;
    sub_1AACD8DD8();
    swift_beginAccess();
    v11 = *(v10 + 40);
    v12 = *(v10 + 96);
    v23 = *(v10 + 80);
    v24 = v12;
    v13 = *(v10 + 128);
    v25 = *(v10 + 112);
    v26 = v13;
    v14 = *(v10 + 64);
    v21 = *(v10 + 48);
    v22 = v14;
    if (v11)
    {
      *v20 = v11;
      *&v20[40] = v23;
      *&v20[56] = v24;
      *&v20[72] = v25;
      *&v20[88] = v26;
      *&v20[8] = v21;
      *&v20[24] = v22;
      sub_1AACDACCC(v20, v19, qword_1ED9B40B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0]);

      v32 = *&v20[64];
      v33 = *&v20[80];
      v34 = *&v20[96];
      v28 = *v20;
      v29 = *&v20[16];
      v30 = *&v20[32];
      v31 = *&v20[48];
      v27 = 1;
      goto LABEL_7;
    }
  }

  sub_1AAF902C4();
  __break(1u);
}

uint64_t sub_1AACDACCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1AACC9C1C(0, a3, a4, a5, type metadata accessor for ConcreteScale);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

double sub_1AACDAD50@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 255;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = -1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1;
  v2 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v3 = v2[11];
  v4 = sub_1AAF8E244();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + v2[12];
  *v5 = 0;
  *(v5 + 8) = 3;
  *(a1 + v2[13]) = 0x3FF0000000000000;
  v6 = v2[14];
  v7 = sub_1AAF8F154();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = a1 + v2[15];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(a1 + v2[16]) = 0;
  v9 = a1 + v2[17];
  *(v9 + 64) = 0;
  result = 0.0;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v11 = a1 + v2[18];
  *(v11 + 64) = 0;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = a1 + v2[19];
  *(v12 + 64) = 0;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  v13 = a1 + v2[20];
  *(v13 + 64) = 0;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  v14 = (a1 + v2[21]);
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  v15 = (a1 + v2[22]);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v16 = (a1 + v2[23]);
  *v16 = 0u;
  v16[1] = 0u;
  v17 = (a1 + v2[24]);
  *v17 = 0u;
  v17[1] = 0u;
  v18 = (a1 + v2[25]);
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v2[26]) = 0;
  v19 = (a1 + v2[27]);
  *v19 = 0u;
  v19[1] = 0u;
  return result;
}

uint64_t sub_1AACDAF30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACC9BB0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AACDAFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACDB064(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  sub_1AAF90024();
  v15 = a2;
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (v8 = sub_1AACCAE28(&v15), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    swift_endAccess();
    sub_1AAF90704();
    MEMORY[0x1AC5992C0](a1);
    MEMORY[0x1AC5992F0](a2);
    v11 = sub_1AAF906E4();
    v10 = sub_1AACCB060(v11);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_1AACCB154(v10, &v15, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v14;
  }

  swift_endAccess();
  sub_1AACCAFF0(&v15);
  return v10;
}

double sub_1AACDB194(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 16);
  v10 = *(v9 + 16);
  v11 = *(v10 + 32);

  v13 = sub_1AACDB064(a4, v11, v12);
  v14 = *(v10 + 32);
  *(v10 + 32) = v13;
  v15 = *(v9 + 24);
  *(v9 + 24) = v13;
  v18[0] = a2 & 1;
  v19 = a3;
  (*(a5 + 40))(a1, v18, a4, a5);
  *(v9 + 24) = v15;
  *(v10 + 32) = v14;

  return result;
}

uint64_t sub_1AACDB280@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  v7[0] = *(v1 + 32);
  v7[1] = v5;
  v7[2] = *(v1 + 64);
  result = sub_1AACDA6E8(v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t sub_1AACDB2C8(uint64_t a1, uint64_t a2)
{
  sub_1AACC9CF4(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1AACDB32C(uint64_t a1@<X8>)
{

  sub_1AACDAA58(a1);
}

unint64_t sub_1AACDB374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AACF59C0(0, &qword_1ED9B09E0, type metadata accessor for SgLine.Points, sub_1AAD9B85C, &type metadata for LineSeriesKey);
    v3 = sub_1AAF903A4();

    for (i = (a1 + 104); ; i += 10)
    {
      v5 = *(i - 7);
      v6 = *(i - 3);
      v20 = *(i - 5);
      v21 = v6;
      v22 = *(i - 8);
      v18 = *(i - 9);
      v19 = v5;
      v7 = *i;
      sub_1AAD9B8B0(&v18, v17);

      result = sub_1AADB0B14(&v18);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 72 * result;
      *v10 = v18;
      v11 = v19;
      v12 = v20;
      v13 = v21;
      *(v10 + 64) = v22;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *(v10 + 16) = v11;
      *(v3[7] + 8 * result) = v7;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AACDB4E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

unint64_t sub_1AACDB530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AACF59C0(0, &qword_1ED9AEEE0, type metadata accessor for SgArea.Points, sub_1AAD9BA1C, &type metadata for AreaSeriesKey);
    v3 = sub_1AAF903A4();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 2);
      v16 = *(i - 3);
      v17[0] = v5;
      *(v17 + 9) = *(i - 23);
      v6 = *i;
      sub_1AADD48A8(&v16, &v15);

      result = sub_1AADB0AA8(&v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 48 * result);
      v10 = v16;
      v11 = v17[0];
      *(v9 + 25) = *(v17 + 9);
      *v9 = v10;
      v9[1] = v11;
      *(v3[7] + 8 * result) = v6;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AACDB684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1AACDB6C8(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_1AACDB93C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_1AACDB97C(uint64_t a1)
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
  *(a1 + 128) = -1;
  return result;
}

uint64_t sub_1AACDB9A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AACAE398(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AACDBA18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AACC7228(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AACDBA88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1AACDBAD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 1) == 0)
  {
    v4 = *(v2 + 24);
    if (v4)
    {
      v25 = *(v2 + 80);
      v23 = *(v2 + 64);
      v24 = *(v2 + 72);
      v21 = *(v2 + 49) | ((*(v2 + 53) | (*(v2 + 55) << 16)) << 32);
      v22 = *(v2 + 56);
      v5 = *(v2 + 48);
      v6 = *(v2 + 32);
      v7 = *(v2 + 40);
      v8 = *(v2 + 17) | ((*(v2 + 21) | (*(v2 + 23) << 16)) << 32);
      v9 = *(v2 + 16);
      v10 = *v2;
      v11 = *(v2 + 8);
      goto LABEL_6;
    }

    if (*(v2 + 257) == 2)
    {
LABEL_12:
      v10 = 0;
      v11 = 0;
      v4 = 0;
      v6 = 0;
      v7 = 0;
      v12 = 0;
      v15 = 0;
      v16 = 0;
      v14 = 0;
      v5 = 0;
      v13 = 0;
      v9 = 0;
      v8 = 0;
      goto LABEL_13;
    }

LABEL_10:
    v17 = sub_1AAF8E7A4();
    result = sub_1AAF8E7A4();
    if (v17 == result)
    {
      v18 = *(v2 + 208);
      v19 = *(v2 + 240);
      v30 = *(v2 + 224);
      v31 = v19;
      v32 = *(v2 + 256);
      v20 = *(v2 + 192);
      v27 = *(v2 + 176);
      v28 = v20;
      v29 = v18;
      result = sub_1AACDB9A8(&v27, v26, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      v11 = *(&v27 + 1);
      v10 = v27;
      v4 = *(&v28 + 1);
      v9 = v28;
      v8 = v28 >> 8;
      v7 = *(&v29 + 1);
      v6 = v29;
      v5 = v30;
      v12 = *(&v30 + 1);
      v13 = v30 >> 8;
      v16 = *(&v31 + 1);
      v15 = v31;
      v14 = v32;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v4 = *(v2 + 112);
  if (!v4)
  {
    if (*(v2 + 257) == 2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v25 = *(v2 + 168);
  v23 = *(v2 + 152);
  v24 = *(v2 + 160);
  v21 = *(v2 + 137) | ((*(v2 + 141) | (*(v2 + 143) << 16)) << 32);
  v22 = *(v2 + 144);
  v5 = *(v2 + 136);
  v6 = *(v2 + 120);
  v7 = *(v2 + 128);
  v8 = *(v2 + 105) | ((*(v2 + 109) | (*(v2 + 111) << 16)) << 32);
  v9 = *(v2 + 104);
  v10 = *(v2 + 88);
  v11 = *(v2 + 96);
LABEL_6:
  sub_1AACD7304(v10, v11, v9 & 1);

  result = sub_1AACD7C50(v6, v7, v5);
  v13 = v21;
  v12 = v22;
  v14 = v25;
  v15 = v23;
  v16 = v24;
LABEL_13:
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v9 | (v8 << 8);
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v5 | (v13 << 8);
  *(a2 + 56) = v12;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v14;
  return result;
}

unint64_t sub_1AACDBD1C(unsigned __int8 *a1)
{
  sub_1AAF90694();
  sub_1AACDBEEC(v4);
  v2 = sub_1AAF906F4();

  return sub_1AACDC544(a1, v2);
}

unint64_t sub_1AACDBD88(unsigned __int8 *a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AACDBD1C(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_1AAD956E4();
    result = v19;
    goto LABEL_8;
  }

  sub_1AACDC070(v16, a2 & 1);
  result = sub_1AACDBD1C(a1);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a3;
      v22[1] = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v23 = v21[6] + 56 * result;
    v24 = *a1;
    v25 = *(a1 + 1);
    v26 = *(a1 + 2);
    *(v23 + 48) = a1[48];
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    *v23 = v24;
    v27 = (v21[7] + 16 * result);
    *v27 = a3;
    v27[1] = a4;
    v28 = v21[2];
    v15 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v15)
    {
      v21[2] = v29;
      return sub_1AACDC8C4(a1, v30);
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AACDBEEC(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1AC5992C0](*v2);
  sub_1AAF8E7A4();
  sub_1AAF906B4();
  MEMORY[0x1AC5992C0](v2[2]);
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = v2[24];
  if (v6 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AACDC020(a1, v4, v5, v6 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    sub_1AAE86E08(a1, v4, v5, v6);
  }

  v7 = v2[48];
  if (v7 >= 0xFC)
  {
    return sub_1AAF906B4();
  }

  v10 = *(v2 + 4);
  v9 = *(v2 + 5);
  sub_1AAF906B4();
  if ((v7 & 0x80) != 0)
  {
    MEMORY[0x1AC5992C0](1);

    return sub_1AACDC020(a1, v10, v9, v7 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);

    return sub_1AAE86E08(a1, v10, v9, v7);
  }
}

uint64_t sub_1AACDC020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1AC5992C0](a4 & 1);
  MEMORY[0x1AC5992F0](v4);
  return MEMORY[0x1AC5992F0](v5);
}

void sub_1AACDC070(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9AEEE8, sub_1AACD4088, &type metadata for StackGroup, &type metadata for StackContext.Item);
  v53 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v50 = v3;
    v51 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    v52 = v6;
    while (1)
    {
      if (!v12)
      {
        v22 = v8;
        while (1)
        {
          v8 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v8 >= v13)
          {
            break;
          }

          v23 = v9[v8];
          ++v22;
          if (v23)
          {
            v20 = __clz(__rbit64(v23));
            v21 = (v23 - 1) & v23;
            goto LABEL_15;
          }
        }

        if (v53)
        {
          v49 = 1 << *(v5 + 32);
          if (v49 >= 64)
          {
            bzero(v9, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v9 = -1 << v49;
          }

          *(v5 + 16) = 0;
        }

        v3 = v50;
        goto LABEL_58;
      }

      v20 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v54 = v21;
      v25 = *(v5 + 56);
      v26 = (*(v5 + 48) + 56 * v24);
      if (v53)
      {
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[2];
        v30 = *(v26 + 1);
        v60 = *(v26 + 2);
        v31 = v26[24];
        v59 = *(v26 + 4);
        v58 = *(v26 + 5);
        v56 = v26[48];
        v55 = *(v25 + 16 * v24);
      }

      else
      {
        v32 = *v26;
        v33 = *(v26 + 1);
        v34 = *(v26 + 2);
        v56 = v26[48];
        v62 = v26[48];
        v61[1] = v33;
        v61[2] = v34;
        v61[0] = v32;
        v55 = *(v25 + 16 * v24);
        v58 = *(&v34 + 1);
        v59 = v34;
        v30 = *(&v32 + 1);
        v60 = v33;
        v31 = BYTE8(v33);
        v29 = BYTE2(v32);
        v28 = BYTE1(v32);
        v27 = v32;
        sub_1AACDC8C4(v61, v63);
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v27);
      v57 = v28;
      sub_1AAF8E7A4();
      sub_1AAF906B4();
      MEMORY[0x1AC5992C0](v29);
      v35 = v31;
      if ((v31 & 0x80) != 0)
      {
        MEMORY[0x1AC5992C0](1);
        sub_1AACDC020(v61, v30, v60, v31 & 1);
        v36 = v56;
        goto LABEL_29;
      }

      MEMORY[0x1AC5992C0](0);
      v36 = v56;
      if (v35)
      {
        if (v35 != 1)
        {
          MEMORY[0x1AC5992C0](2);
          sub_1AAF8F6C4();
          goto LABEL_29;
        }

        v37 = 1;
      }

      else
      {
        v37 = 0;
      }

      MEMORY[0x1AC5992C0](v37);
      if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v38 = v30;
      }

      else
      {
        v38 = 0;
      }

      MEMORY[0x1AC5992F0](v38);
LABEL_29:
      if (v36 >= 0xFC)
      {
        sub_1AAF906B4();
        goto LABEL_42;
      }

      sub_1AAF906B4();
      if ((v36 & 0x80) != 0)
      {
        MEMORY[0x1AC5992C0](1);
        sub_1AACDC020(v61, v59, v58, v36 & 1);
        goto LABEL_42;
      }

      MEMORY[0x1AC5992C0](0);
      if (v36)
      {
        if (v36 != 1)
        {
          MEMORY[0x1AC5992C0](2);
          sub_1AAF8F6C4();
          goto LABEL_42;
        }

        v39 = 1;
      }

      else
      {
        v39 = 0;
      }

      MEMORY[0x1AC5992C0](v39);
      if ((v59 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v40 = v59;
      }

      else
      {
        v40 = 0;
      }

      MEMORY[0x1AC5992F0](v40);
LABEL_42:
      v41 = sub_1AAF906F4();
      v7 = v52;
      v42 = -1 << *(v52 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v14 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v17 = v57;
        v16 = v29;
        v18 = v27;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v14 + 8 * v44);
          if (v48 != -1)
          {
            v15 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_60:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v43) & ~*(v14 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v17 = v57;
      v16 = v29;
      v18 = v27;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = *(v52 + 48) + 56 * v15;
      *v19 = v18;
      *(v19 + 1) = v17;
      *(v19 + 2) = v16;
      *(v19 + 8) = v30;
      *(v19 + 16) = v60;
      *(v19 + 24) = v35;
      *(v19 + 32) = v59;
      *(v19 + 40) = v58;
      *(v19 + 48) = v36;
      *(*(v52 + 56) + 16 * v15) = v55;
      ++*(v52 + 16);
      v5 = v51;
      v12 = v54;
    }
  }

LABEL_58:
  *v3 = v7;
}

unint64_t sub_1AACDC544(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    do
    {
      v8 = *(v2 + 48) + 56 * v4;
      v10 = *(v8 + 16);
      v9 = *(v8 + 32);
      v11 = *v8;
      v38 = *(v8 + 48);
      *&v36[16] = v10;
      v37 = v9;
      *v36 = v11;
      if (v11 != v7)
      {
        goto LABEL_5;
      }

      sub_1AACDC8C4(v36, v35);
      v12 = sub_1AAF8E7A4();
      if (v12 != sub_1AAF8E7A4() || v36[2] != a1[2])
      {
        goto LABEL_4;
      }

      v13 = *(a1 + 1);
      v14 = *(a1 + 2);
      v15 = a1[24];
      if ((v36[24] & 0x80000000) != 0)
      {
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        if (v36[24])
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if (v15)
        {
          goto LABEL_4;
        }

        if (*&v36[8] != v13 || *&v36[16] != v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v15 < 0)
        {
          goto LABEL_4;
        }

        if (!v36[24])
        {
          if (a1[24])
          {
            goto LABEL_4;
          }

LABEL_19:
          if (*&v36[8] != v13)
          {
            goto LABEL_4;
          }

          goto LABEL_28;
        }

        if (v36[24] == 1)
        {
          if (v15 != 1)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }

        if (v15 != 2 || *&v36[8] != __PAIR128__(*&v14, *&v13) && (sub_1AAF904F4() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_28:
      v16 = v38;
      v18 = *(a1 + 4);
      v17 = *(a1 + 5);
      v19 = a1[48];
      if (v38 > 0xFBu)
      {
        v20 = *(a1 + 5);
        sub_1AACDC974(*(a1 + 4), v20, a1[48]);
        sub_1AACDC920(v36);
        if (v19 > 0xFB)
        {
          return v4;
        }

LABEL_30:
        v21 = v18;
        v22 = v20;
LABEL_31:
        sub_1AADB2F88(v21, v22, v19);
        goto LABEL_5;
      }

      if (v19 > 0xFB)
      {
        goto LABEL_4;
      }

      if ((v38 & 0x80) != 0)
      {
        v30 = *(&v37 + 1);
        v31 = *(a1 + 5);
        v33 = *&v37;
        sub_1AACD7C50(v18, v17, v19);
        sub_1AACDC920(v36);
        if ((v19 & 0x80) == 0)
        {
          v21 = v18;
          v22 = *&v31;
          goto LABEL_31;
        }

        if (v16)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else if (v19)
        {
          goto LABEL_5;
        }

        if (v33 == *&v18 && v30 == v31)
        {
          return v4;
        }
      }

      else
      {
        if ((v19 & 0x80) != 0)
        {
          sub_1AACD7C50(*(a1 + 4), *(a1 + 5), a1[48]);
LABEL_4:
          sub_1AACDC920(v36);
          goto LABEL_5;
        }

        if (!v38)
        {
          v34 = *&v37;
          v20 = *(a1 + 5);
          sub_1AACD7C50(v18, v17, v19);
          sub_1AACDC920(v36);
          if (v19)
          {
            goto LABEL_30;
          }

          v23 = v34;
          v24 = *&v18;
          v25 = v18;
          v26 = v20;
          v27 = 0;
          goto LABEL_47;
        }

        if (v38 == 1)
        {
          v32 = *&v37;
          v20 = *(a1 + 5);
          sub_1AACD7C50(v18, v17, v19);
          sub_1AACDC920(v36);
          if (v19 != 1)
          {
            goto LABEL_30;
          }

          v23 = v32;
          v24 = *&v18;
          v25 = v18;
          v26 = v20;
          v27 = 1;
LABEL_47:
          sub_1AADB2F88(v25, v26, v27);
          if (v23 == v24)
          {
            return v4;
          }

          goto LABEL_5;
        }

        if (v19 != 2)
        {
          goto LABEL_4;
        }

        if (v37 == __PAIR128__(v17, v18))
        {
          sub_1AACDC920(v36);
          return v4;
        }

        v28 = sub_1AAF904F4();
        sub_1AACDC920(v36);
        if (v28)
        {
          return v4;
        }
      }

LABEL_5:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1AACDC974(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_1AACD7C50(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AACDC988(unsigned __int8 *a1, double a2)
{
  if (*a1 == 3)
  {
    v3 = a1[1];
    sub_1AACD38BC(0, 0, 0, v3);

    return sub_1AACD38BC(*&a2, 0, 0, v3);
  }

  else
  {
    swift_beginAccess();
    sub_1AACD3FC4(a1, a2);
    return swift_endAccess();
  }
}

uint64_t sub_1AACDCA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AACDCA88()
{
  if (*(v0 + 16) == 1)
  {
    swift_beginAccess();
    v1 = *(v0 + 32);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v1 + 32;

      do
      {
        sub_1AACD9378(v3, &v4);
        if (swift_weakLoadStrong())
        {
          sub_1AACDCA88();
        }

        sub_1AACD93DC(&v4);
        v3 += 8;
        --v2;
      }

      while (v2);
    }

    *(v0 + 16) = 0;
  }
}

uint64_t sub_1AACDCB7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACDCBE4(float64x2_t *a1, void (*a2)(_OWORD *__return_ptr), uint64_t a3, uint64_t a4)
{
  a2(v13);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v11 = v13[1];
  v12 = v13[0];
  v9 = *(a4 + 56);
  v10 = *(a4 + 40);
  v6 = *(a4 + 72);

  v7 = vmovn_s32(vuzp1q_s32(vceqq_f64(v12, v10), vceqq_f64(v11, v9)));
  v7.i16[0] = vminv_u16(v7);
  *a1 = v12;
  a1[1] = v11;
  return v7.i32[0] & ~v6 & 1;
}

uint64_t sub_1AACDCC9C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1AACFE8D4(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v12 = a1;
      v7 = 0;
      v6 = v15;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1AC598D40](v7, a3);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v5 = sub_1AAF8FFB4();
            goto LABEL_3;
          }

          if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(a3 + 8 * v7 + 32);
        }

        sub_1AACD8DD8();
        swift_beginAccess();
        if (*(v8 + 72) == 1)
        {
          goto LABEL_21;
        }

        v13 = *(v8 + 56);
        v14 = *(v8 + 40);

        v15 = v6;
        a1 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (a1 >= v9 >> 1)
        {
          sub_1AACFE8D4((v9 > 1), a1 + 1, 1);
          v6 = v15;
        }

        ++v7;
        *(v6 + 16) = a1 + 1;
        v10 = v6 + 32 * a1;
        *(v10 + 32) = v14;
        *(v10 + 48) = v13;
        if (v5 == v7)
        {
          a1 = v12;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_21:
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
LABEL_16:
    (a1)(&v15, v6);
  }

  return result;
}

uint64_t sub_1AACDCEA0@<X0>(void *a1@<X8>)
{
  result = sub_1AACDCC9C(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

uint64_t sub_1AACDCEE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1AACDCF10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACDCF70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACDCFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AACDD030(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACC9BB0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1AACDD0C4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = *v4;
  v11 = v4[1];
  v12 = v5;
  v13[0] = v6;
  *(v13 + 9) = *(v4 + 57);
  v10 = v7;
  LOBYTE(v9) = a2 & 1;
  sub_1AACDD128(*&a1, a2 & 1, *&a3, a4 & 1, &v9);
  return v9;
}

uint64_t sub_1AACDD128@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v51 = a1;
  v49 = sub_1AAF8DB24();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  sub_1AAF8DC34();
  sub_1AACDCA40(&qword_1ED9B5580, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1AAF8FB24();
  sub_1AAF8FBA4();
  if (sub_1AAF8FB94() < 2)
  {
    v17 = a4;
    v18 = v49;
    v19 = v51;
    v20 = v48;
    sub_1AAF8DC44();
    if (a2)
    {
      v21 = v19;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = v19 - (v5[1] + v5[3]);
      if (v17)
      {
LABEL_8:
        v24 = a2 & 1;
        LOBYTE(v59[0]) = v24;
        v25 = v17 & 1;
        LOBYTE(v58) = v17 & 1;
        v51 = v21;
        sub_1AAF8DAF4();
        v26 = *v5;
        v27 = v5[1];
        v22 = v39 + v27 + v5[3];
        v23 = v40 + *v5 + v5[2];
        v34 = sub_1AAF8DFB4();
        v42 = v41;
        v38 = v43;
        v45 = v44;
        result = (*(v50 + 8))(v10, v18);
        LOBYTE(v59[0]) = v24;
        LOBYTE(v58) = v25;
        v37 = v42 & 1;
        v55 = v42 & 1;
        v29 = v45 & 1;
        v53 = v29;
        v36 = 0uLL;
        goto LABEL_9;
      }
    }

    v20 = v20 - (*v5 + v5[2]);
    goto LABEL_8;
  }

  sub_1AAF8DC44();
  sub_1AAF8DC44();
  LOBYTE(v59[0]) = a2 & 1;
  LOBYTE(v58) = a4 & 1;
  sub_1AAE33AEC(v51, a2 & 1, v48, a4 & 1, *&v16, *&v13, v59);
  v22 = *v59;
  v23 = *&v59[1];
  v51 = *&v59[2];
  v24 = v60;
  v57[0] = *v61;
  *(v57 + 3) = *&v61[3];
  v25 = v63;
  v56[0] = *v64;
  *(v56 + 3) = *&v64[3];
  v27 = v65;
  v26 = v66;
  v48 = v67;
  v47 = v68;
  *(v54 + 3) = *&v69[3];
  v54[0] = *v69;
  v28 = v70;
  v29 = v71;
  *(v52 + 3) = *&v72[3];
  v52[0] = *v72;
  v46 = v73;
  v30 = *(v50 + 8);
  v31 = v13;
  v20 = v62;
  v32 = v49;
  v30(v31, v49);
  v33 = v32;
  v34 = *&v48;
  result = (v30)(v16, v33);
  v36 = v46;
  v37 = v47;
  v38 = v28;
LABEL_9:
  *a5 = v22;
  *(a5 + 8) = v23;
  *(a5 + 16) = v51;
  *(a5 + 24) = v24;
  *(a5 + 25) = v57[0];
  *(a5 + 28) = *(v57 + 3);
  *(a5 + 32) = v20;
  *(a5 + 40) = v25;
  *(a5 + 41) = v56[0];
  *(a5 + 44) = *(v56 + 3);
  *(a5 + 48) = v27;
  *(a5 + 56) = v26;
  *(a5 + 64) = v34;
  *(a5 + 72) = v37;
  *(a5 + 76) = *(v54 + 3);
  *(a5 + 73) = v54[0];
  *(a5 + 80) = v38;
  *(a5 + 88) = v29;
  *(a5 + 92) = *(v52 + 3);
  *(a5 + 89) = v52[0];
  *(a5 + 96) = v36;
  return result;
}

void *sub_1AACDD5D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AAF8DF14();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AACDD6A4(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

uint64_t sub_1AACDD75C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = type metadata accessor for ChartModel.Scenegraph(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RenderBasedChartView(0, a3, a4, v11);
  sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);
  sub_1AAF8F1D4();
  sub_1AAF8DA64();
  v14 = v13;
  v16 = v15;
  sub_1AAF8DA64();
  v18 = v17;
  v20 = v19;
  sub_1AAE2FAEC(v12, v22);
  sub_1AACD958C(v22, v10, v14, v16, v18, v20);

  sub_1AAD10630(v22);
  sub_1AAD09998(v10, v12, x8_0);
  return sub_1AACDCF70(v10, type metadata accessor for ChartModel.Scenegraph);
}

uint64_t sub_1AACDD8F8(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  v10 = sub_1AAF8DB24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v22[0] = a2 & 1;
  v21[0] = a4 & 1;
  sub_1AACDD128(*&a1, a2 & 1, *&a3, a4 & 1, v22);
  sub_1AAF8DC44();
  v14 = v22[24];
  v15 = v22[40];
  sub_1AAF8F1F4();
  v21[0] = v14;
  LOBYTE(v20) = v15;
  sub_1AAF8DB04();
  v16 = *(v11 + 8);
  v16(v13, v10);
  sub_1AAF8DC34();
  sub_1AACDCA40(&qword_1ED9B5580, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1AAF8FB24();
  sub_1AAF8FBA4();
  result = sub_1AAF8FB94();
  if (result >= 2)
  {
    sub_1AAF8DC44();
    v18 = v22[72];
    v19 = v22[88];
    sub_1AAF8F1F4();
    v21[0] = v18;
    LOBYTE(v20) = v19;
    sub_1AAF8DB04();
    return (v16)(v13, v10);
  }

  return result;
}

uint64_t sub_1AACDDBCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1AAD413AC(0, v1, 0);
  v2 = v28;
  v4 = v3 + 64;
  v5 = sub_1AAF8FF74();
  v6 = 0;
  v24 = v3 + 72;
  v25 = v1;
  v26 = v3 + 64;
  v27 = v3;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v9 = *(v3 + 36);
    v10 = *(*(v3 + 56) + 16 * v5 + 8);
    if (v10)
    {
      v11 = *(v3 + 36);

      sub_1AACD8DD8();
      swift_beginAccess();
      v12 = *(v10 + 40);
      if (v12 == 1)
      {
        goto LABEL_29;
      }

      v9 = v11;
    }

    else
    {
      v12 = 1;
    }

    v29 = v2;
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = v9;
      sub_1AAD413AC((v13 > 1), v14 + 1, 1);
      v9 = v22;
      v2 = v29;
    }

    *(v2 + 16) = v14 + 1;
    *(v2 + 8 * v14 + 32) = v12;
    v3 = v27;
    v7 = 1 << *(v27 + 32);
    if (v5 >= v7)
    {
      goto LABEL_26;
    }

    v4 = v26;
    v15 = *(v26 + 8 * v8);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_27;
    }

    if (v9 != *(v27 + 36))
    {
      goto LABEL_28;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v8 << 6;
      v18 = v8 + 1;
      v19 = (v24 + 8 * v8);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1AACAA2EC(v5, v9, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1AACAA2EC(v5, v9, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AACDDE98(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CGSize(0);

  sub_1AACD889C(v9);

  v10[0] = v9;

  sub_1AACD889C(v8);

  v10[1] = v8;

  sub_1AACD889C(&v7);

  v10[2] = &v7;
  (a1)(&v11, v10);
  return v11;
}

uint64_t sub_1AACDDF68@<X0>(uint64_t (*a1)(void, void, void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(v2[2], v2[3], v2[4], v2[5], v2[6]);
  *a2 = result;
  return result;
}

uint64_t sub_1AACDDFC8@<X0>(double **a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a1[1];
  v8 = *a1[2];
  if (a2)
  {
    v6 = *a1 + 1;
  }

  v9 = *v6;
  sub_1AACDE090(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1AAF9E2B0;
  if (a3)
  {
    *(result + 32) = v9 - v7;
    v11 = v8 + 0.0;
  }

  else
  {
    *(result + 32) = v7 + 0.0;
    v11 = v9 - v8;
  }

  *(result + 40) = v11;
  *a4 = result;
  return result;
}

void sub_1AACDE090(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AACDE0E0(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v11 = MEMORY[0x1E69E62F8];
  sub_1AACC9BB0(0, a5, a6, MEMORY[0x1E69E62F8]);
  sub_1AACC9BB0(0, a7, a8, v11);

  sub_1AACD889C(&v14);

  v15[0] = &v14;

  sub_1AACD889C(&v13);

  v15[1] = &v13;
  (a1)(v15);
}

uint64_t sub_1AACDE234@<X0>(void *a1@<X0>, uint64_t a2@<X1>, long double a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v6 = a5;
  LODWORD(a5) = a4;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_7;
    }

    sub_1AAF42808(a1, v9, a3);
    a5 = *(a2 + 16);
    if (a5)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  sub_1AAF429CC(a1, v9, a3);
  a5 = *(a2 + 16);
  if (a5)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_7:
  if (a5 == 2)
  {
    v7 = *&a3 == 2;
    if (*&a3 < 2uLL)
    {
      a1 = sub_1AACDE39C(a1, v9);
      a5 = *(a2 + 16);
      if (a5)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    if (!v7)
    {
      goto LABEL_16;
    }

    sub_1AAF425F4(a1, v9);
    a5 = *(a2 + 16);
    if (a5)
    {
LABEL_14:
      sub_1AACDE510(v9, v6, *(a2 + 32), *(a2 + 32 + 8 * a5 - 8));

      sub_1AACB4A98(*&v9[2], *&v9[3]);
      v10 = v9[4];
      return sub_1AACDE82C(&v10);
    }

    __break(1u);
  }

LABEL_16:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AACDE39C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) == 2)
  {
    v3 = result;
    v5 = *(result + 32);
    v4 = *(result + 40);
    if (v5 == v4)
    {
      v6 = swift_allocObject();
      v7 = 0;
      *(v6 + 16) = v5;
      v8 = xmmword_1AAFAB900;
      v9 = sub_1AAF42D44;
      v10 = sub_1AAF42558;
    }

    else
    {
      v11 = 1.0 / (v4 - v5);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v11;
      v6 = swift_allocObject();
      *&v8 = v11;
      *(v6 + 16) = v11;
      *(v6 + 24) = v5;
      *(&v8 + 1) = -(v5 * v11);
      v9 = sub_1AAF425CC;
      v10 = sub_1AACE4010;
    }

    *a2 = v10;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
    *(a2 + 24) = v6;
    *(a2 + 32) = v3;
    *(a2 + 40) = xmmword_1AAFC5400;
    *(a2 + 56) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AACDE510(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  if (v8)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;

    v11 = sub_1AAEF3ED8;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v6;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v24 = *(a1 + 4);
  sub_1AACDE7DC(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AAF9E2B0;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  sub_1AACDE754(&v24, v23);
  sub_1AACBD93C(v8, v9);
  sub_1AACB4A98(v11, v10);
  v14 = *(a1 + 5);
  v15 = *(a1 + 6);
  v16 = a1[7];
  v17 = a1[8];
  if (v15 != 255)
  {
    *v18.i64 = a3;
    *&v18.i64[1] = a4;
    v19 = vorrq_s8(vandq_s8(v18, vnegq_f64(0)), vabsq_f64(v18));
    v20 = vsubq_f64(vdupq_laneq_s64(v19, 1), v19).f64[0];
    v16 = v16 * v20;
    v17 = v17 * v20 + v19.f64[0];
    v15 = *(a1 + 6);
  }

  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *a2 = sub_1AACE3D30;
  *(a2 + 48) = v24;
  *(a2 + 56) = v13;
  *(a2 + 64) = 0;
  *(a2 + 32) = v11;
  *(a2 + 40) = v10;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  *(a2 + 96) = v17;
}

uint64_t sub_1AACDE6DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AACDE714()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AACDE754(uint64_t a1, uint64_t a2)
{
  sub_1AACDE7DC(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AACDE7DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AACDE82C(uint64_t a1)
{
  sub_1AACDE090(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

float64_t sub_1AACDE8AC@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 48);
    v4 = 0uLL;
    v5 = 0uLL;
    do
    {
      v4 = vbslq_s8(vcgtq_f64(v3[-1], v4), v3[-1], v4);
      v5 = vbslq_s8(vcgtq_f64(*v3, v5), *v3, v5);
      v3 += 2;
      --v2;
    }

    while (v2);
    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    v4.f64[0] = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return v4.f64[0];
}

uint64_t sub_1AACDE8F8(void (*a1)(void *, __n128), uint64_t a2, uint64_t *a3)
{
  type metadata accessor for CGSize(0);
  type metadata accessor for SgMeasurements(0);
  v3 = MEMORY[0x1E69E6720];
  sub_1AACC9BB0(0, &qword_1ED9B4100, &type metadata for StackContext, MEMORY[0x1E69E6720]);
  sub_1AACC9BB0(0, qword_1ED9B3CE8, &type metadata for SubPositionContext, v3);

  sub_1AACD889C(__src);

  v7[0] = __src;

  sub_1AACD889C(&__src[16]);

  v7[1] = &__src[16];

  sub_1AACD889C(&__src[24]);

  v7[2] = &__src[24];

  sub_1AACD889C(&__src[32]);

  v7[3] = &__src[32];

  sub_1AACD889C(&__src[64]);

  v7[4] = &__src[64];

  sub_1AACD889C(&__src[80]);

  v7[5] = &__src[80];
  (a1)(v7);
  memcpy(__dst, __src, 0x152uLL);
  return sub_1AACD8D78(__dst, sub_1AACDEBD4);
}

uint64_t sub_1AACDEAC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v5[0] = *(v0 + 32);
  v5[1] = v3;
  v5[2] = *(v0 + 64);
  return sub_1AACDE8F8(v1, v2, v5);
}

uint64_t sub_1AACDEB00@<X0>(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1[1];
  v4 = a1[3];
  v5 = *a1[2];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *v6;
  v9 = v6[1];
  v13 = *v4;
  v11 = **a1;
  v12 = v4[1];
  memcpy(__dst, v7, 0x102uLL);
  *a2 = v11;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v13;
  *(a2 + 48) = v12;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  memcpy((a2 + 80), v7, 0x102uLL);

  sub_1AACBB2CC(v8, v9);
  return sub_1AACDAF30(__dst, v14, qword_1ED9B3CE8, &type metadata for SubPositionContext);
}

void sub_1AACDEBD4(uint64_t a1)
{
  if (!qword_1ED9B2990)
  {
    type metadata accessor for CGSize(255);
    type metadata accessor for SgMeasurements(255);
    v1 = MEMORY[0x1E69E6720];
    sub_1AACC9BB0(255, &qword_1ED9B4100, &type metadata for StackContext, MEMORY[0x1E69E6720]);
    sub_1AACC9BB0(255, qword_1ED9B3CE8, &type metadata for SubPositionContext, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B2990);
    }
  }
}

double sub_1AACDECF4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 104) = -1;
  return result;
}

double sub_1AACDED18@<D0>(uint64_t a1@<X8>)
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
  *(a1 + 128) = -1;
  return result;
}

__n128 sub_1AACDED38@<Q0>(uint64_t a1@<X8>)
{
  sub_1AACDB97C(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

double sub_1AACDEDA0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = -1;
  return result;
}

double sub_1AACDEDC8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  *&v51 = a2;
  v52 = a4;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.n128_u64[0] = *(v11 + 24);
  v13 = type metadata accessor for AxisValueLabel.LabelContent(0, v7, v50.n128_i64[0], v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (v50.n128_u64 - v15);
  v18 = *a1;
  v17 = a1[1];
  v19 = *(a1 + 16);
  (*(v20 + 16))(&v50 - v15, v4 + *(a3 + 64), v13, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 32))(v10, v16, v7);
      sub_1AACDF25C(v10, v51, v7, v50.n128_i64[0], v58);
      v51 = *&v58[16];
      v50 = *v58;
      v22 = *&v58[32];
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v27 = v51;
      swift_beginAccess();
      sub_1AADDDC34(v27 + 72, &v55);
      if (v56[24] == 255)
      {
        memset(v58, 0, 40);
        v58[40] = 3;
      }

      else
      {
        *v58 = v55;
        *&v58[16] = *v56;
        *&v58[25] = *&v56[9];
      }

      v38 = sub_1AAF75A98(v18, v17, v19);
      v40 = v39;
      sub_1AAD57C94(v58);
      *v58 = v38;
      *&v58[8] = v40;
      sub_1AADA6144();
      v41 = sub_1AAF8EA64();
      v43 = v42;
      v55.n128_u64[0] = v41;
      v55.n128_u64[1] = v42;
      v45 = v44 & 1;
      v56[0] = v44 & 1;
      *&v56[8] = v46;
      sub_1AACDF25C(&v55, v27, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v58);
      v51 = *&v58[16];
      v50 = *v58;
      v22 = *&v58[32];
      sub_1AAD04750(v41, v43, v45);
    }
  }

  else
  {
    v23 = v16[1];
    *v58 = *v16;
    *&v58[16] = v23;
    *&v58[26] = *(v16 + 26);
    sub_1AADABA40(v58, &v55);
    if (v57)
    {
      v53 = v55;
      *v54 = *v56;
      *&v54[9] = *&v56[9];
      v24 = sub_1AAF75A98(v18, v17, v19);
      v26 = v25;
      sub_1AAD57C94(&v53);
    }

    else
    {
      sub_1AACBB198(&v55, &v53);
      v28 = *&v54[8];
      v29 = *&v54[16];
      sub_1AACBB42C(&v53, *&v54[8]);
      v24 = (*(v29 + 8))(v18, v17, v19, v28, v29);
      v26 = v30;
      sub_1AACB634C(&v53);
    }

    v31 = v51;
    v55.n128_u64[0] = v24;
    v55.n128_u64[1] = v26;
    sub_1AADA6144();
    v32 = sub_1AAF8EA64();
    v34 = v33;
    v53.n128_u64[0] = v32;
    v53.n128_u64[1] = v33;
    v36 = v35 & 1;
    v54[0] = v35 & 1;
    *&v54[8] = v37;
    sub_1AACDF25C(&v53, v31, MEMORY[0x1E6981148], MEMORY[0x1E6981138], &v55);
    v51 = *v56;
    v50 = v55;
    v22 = *&v56[16];
    sub_1AAD04750(v32, v34, v36);

    sub_1AAD784B8(v58);
  }

  v47 = v52;
  v48 = v51;
  result = v50.n128_f64[0];
  *v52 = v50;
  v47[1] = v48;
  *(v47 + 4) = v22;
  return result;
}

__n128 sub_1AACDF25C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, __n128 *a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(a2 + 40))
  {
    v13 = *(a2 + 40);
    v14 = *(a2 + 32);
    if (v14)
    {
LABEL_3:
      (*(v10 + 16))(v12, a1, a3);

      sub_1AAF513AC(v12, v13, v14, a3, a4, v21);
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1ED9B1DA8 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED9C34B8;

    v14 = *(a2 + 32);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  (*(v10 + 16))(v12, a1, a3);
  v15 = qword_1ED9B1D98;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED9C34B0;

  sub_1AACDF494(v12, v13, v16, a3, a4, v21);
LABEL_10:
  v17 = v22;
  result = v21[0];
  v19 = v21[1];
  *a5 = v21[0];
  a5[1] = v19;
  a5[2].n128_u64[0] = v17;
  return result;
}

uint64_t sub_1AACDF474()
{
  result = sub_1AAF8E7F4();
  qword_1ED9C34B8 = result;
  return result;
}

uint64_t sub_1AACDF494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v45 = a3;
  sub_1AAF67D3C(255, &qword_1ED9B1708, &qword_1ED9B1700, MEMORY[0x1E6980F50]);
  v11 = sub_1AAF8DF74();
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  sub_1AAF67D3C(255, &qword_1ED9B1E80, &qword_1ED9B1E58, MEMORY[0x1E69815C0]);
  v14 = sub_1AAF8DF74();
  MEMORY[0x1EEE9AC00](v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v44 = v18;
  (*(v18 + 16))(&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4, v16);
  v19 = swift_dynamicCast();
  v43 = a1;
  if (v19)
  {
    v39 = v51;
    v40 = v50;
    v38 = v52;
    v41 = v53;

    v20 = sub_1AAF8EA24();
    v42 = a6;
    v22 = v21;
    v24 = v23;

    v25 = sub_1AAF8E9E4();
    v27 = v26;
    v37 = v28;
    v30 = v29;

    v31 = v22;
    a6 = v42;
    sub_1AAD04750(v20, v31, v24 & 1);

    sub_1AAD04750(v40, v39, v38);

    result = (*(v44 + 8))(v43, a4);
    v33 = v37 & 1;
  }

  else
  {

    sub_1AAF8EBE4();

    v34 = sub_1AAF67DA8(&qword_1ED9B11E8, &qword_1ED9B1708, &qword_1ED9B1700, MEMORY[0x1E6980F50]);
    v48 = a5;
    v49 = v34;
    v41 = a2;

    WitnessTable = swift_getWitnessTable();
    sub_1AAF8EB14();

    (v42[1])(v13, v11);
    v36 = sub_1AAF67DA8(&qword_1ED9B1E88, &qword_1ED9B1E80, &qword_1ED9B1E58, MEMORY[0x1E69815C0]);
    v46 = WitnessTable;
    v47 = v36;
    swift_getWitnessTable();
    v25 = sub_1AAF8EF44();

    result = (*(v44 + 8))(v43, a4);
    v27 = 0;
    v30 = 0;
    v33 = 0x8000000000000000;
  }

  *a6 = v25;
  a6[1] = v27;
  a6[2] = v33;
  a6[3] = v30;
  a6[4] = 0;
  return result;
}

void sub_1AACDF8EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AACDF93C(uint64_t a1)
{
  if (!qword_1ED9B1708)
  {
    sub_1AACDF8EC(255, &qword_1ED9B1700, MEMORY[0x1E6980F50], MEMORY[0x1E69E6720]);
    v1 = sub_1AAF8E724();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B1708);
    }
  }
}

void sub_1AACDF9B8(uint64_t a1)
{
  if (!qword_1ED9B1EA0)
  {
    sub_1AACDFFDC(255);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B1EA0);
    }
  }
}

double sub_1AACDFA18(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v7 = v6;
  v51 = a6;
  v49 = a4;
  v47 = a2;
  v48 = a3;
  v50 = *a1;
  sub_1AACDF9B8(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1E69E6720];
  sub_1AACC6DA0(0, &qword_1ED9B1E60, MEMORY[0x1E69810B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v46 = v42 - v16;
  sub_1AACC6DA0(0, &qword_1ED9B1E68, MEMORY[0x1E6980F88], v14);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v43 = v42 - v18;
  v19 = sub_1AAF8E9B4();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1AAF8E9D4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACC6DA0(0, &qword_1ED9B5518, MEMORY[0x1E6980F98], v14);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v42 - v27;
  if (((*(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    KeyPath = swift_getKeyPath();
    v32 = OBJC_IVAR____TtC6Charts14SgMeasurements__dynamicTypeSize;
    swift_beginAccess();
    v33 = a5;
    v34 = (v13 + *(v11 + 36));
    sub_1AACC6DA0(0, &qword_1ED9B1E90, MEMORY[0x1E697E730], MEMORY[0x1E6980A08]);
    v36 = *(v35 + 28);
    v37 = sub_1AAF8DCD4();
    (*(*(v37 - 8) + 16))(v34 + v36, v7 + v32, v37);
    *v34 = KeyPath;
    *v13 = v50;

    v53 = v49 & 1;
    v52 = v51 & 1;
    v30 = sub_1AACE0034(v13, v47, v48, v49 & 1, v33, v51 & 1);
    sub_1AACFD3F0(v13);
  }

  else
  {
    v47 = a1[1];
    v42[1] = *(a1 + 16);
    v29 = OBJC_IVAR____TtC6Charts14SgMeasurements__measurements;
    swift_beginAccess();
    sub_1AAF51190(v7 + v29, v28);
    if ((*(v23 + 48))(v28, 1, v22))
    {
      sub_1AAF51104(v28);
      return 0.0;
    }

    else
    {
      (*(v23 + 16))(v25, v28, v22);
      sub_1AAF51104(v28);
      v38 = sub_1AAF8E984();
      (*(*(v38 - 8) + 56))(v43, 1, 1, v38);
      v39 = sub_1AAF8EA34();
      (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
      sub_1AAF8E9A4();
      sub_1AAF8E994();
      v30 = v40;
      (*(v44 + 8))(v21, v45);
      (*(v23 + 8))(v25, v22);
    }
  }

  return v30;
}

void sub_1AACDFFDC(uint64_t a1)
{
  if (!qword_1ED9B1E90)
  {
    sub_1AAF8DCD4();
    v1 = sub_1AAF8E724();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B1E90);
    }
  }
}

double sub_1AACE0034(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  v25 = a4;
  sub_1AACDF9B8(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  swift_beginAccess();
  v24 = a2;
  sub_1AACE039C(a2);
  v17 = v16;
  swift_endAccess();
  if (!v17)
  {
    goto LABEL_5;
  }

  v23[1] = a5;
  sub_1AACE4D00(0, &qword_1ED9B1D40, type metadata accessor for SgMeasurements.ImageRendererCacheContent);
  if (!swift_dynamicCastClass())
  {

LABEL_5:
    sub_1AAEF0EC0(a1, v15, sub_1AACDF9B8);
    sub_1AACE4D00(0, &qword_1ED9B1D40, type metadata accessor for SgMeasurements.ImageRendererCacheContent);
    v19 = swift_allocObject();
    sub_1AAEF0EC0(v15, v12, sub_1AACDF9B8);
    sub_1AACE4D00(0, &qword_1ED9B1728, MEMORY[0x1E697E158]);
    swift_allocObject();
    v20 = MEMORY[0x1AC5966E0](v12);
    sub_1AAEF0E60(v15, sub_1AACDF9B8);
    *(v19 + 16) = v20;
    swift_beginAccess();
    sub_1AACE4DD8(v19, v24);
    swift_endAccess();
    LOBYTE(v27) = v25 & 1;
    v26 = a6 & 1;
    v21 = sub_1AAF8DAA4();
    v27 = 0.0;
    v28 = 0;
    MEMORY[0x1EEE9AC00](v21);
    v23[-2] = &v27;
    sub_1AAF8DAB4();

    return v27;
  }

  sub_1AAEF0EC0(a1, v15, sub_1AACDF9B8);
  sub_1AAF8DAD4();
  LOBYTE(v27) = v25 & 1;
  v26 = a6 & 1;
  v18 = sub_1AAF8DAA4();
  v27 = 0.0;
  v28 = 0;
  MEMORY[0x1EEE9AC00](v18);
  v23[-2] = &v27;
  sub_1AAF8DAB4();

  return v27;
}

void sub_1AACE039C(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  if (*(v3 + 16))
  {
    v4 = sub_1AACC9B78(a1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = *(v2 + 8);
        if (v6 == *(v2 + 16))
        {
          goto LABEL_7;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 8) = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_11;
        }

        while (1)
        {
          v9 = v7[2];
          v10[0] = (v7 + 4);
          v10[1] = v9;
          sub_1AACFD36C(v10, v6, v2);
          *(v2 + 8) = v7;
LABEL_7:
          if (v6 < v7[2])
          {
            break;
          }

          __break(1u);
LABEL_11:
          v7 = sub_1AADB8130(v7);
          *(v2 + 8) = v7;
        }
      }
    }
  }
}

unint64_t sub_1AACE046C()
{
  result = qword_1ED9B1718;
  if (!qword_1ED9B1718)
  {
    sub_1AACDF9B8(255);
    sub_1AAEF0F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1718);
  }

  return result;
}

void sub_1AACE0504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9AFC4();
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_1AAF90684();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_1AACE075C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AACE0804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_1AACE0800();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_1AACE0800();
  return (v13)(v11, a4);
}

uint64_t sub_1AACE0938(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9)
{
  sub_1AACC9BB0(0, a7, a8, MEMORY[0x1E69E62F8]);

  sub_1AACD889C(v13);

  v17[0] = v13;

  sub_1AACD889C(v14);

  v17[1] = v14;

  sub_1AACD889C(v15);

  v17[2] = v15;

  sub_1AACD889C(&v16);

  v17[3] = &v16;
  (a1)(v17);
  return sub_1AACE1350(v13, a9, a7, a8, sub_1AACE48F0);
}

uint64_t sub_1AACE0AF4@<X0>(char **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = **a1;
  v8 = *a1[1];
  v9 = *a1[3];
  sub_1AACE0A98(a1[2], v12);
  type metadata accessor for AxisMarkRenderContext();
  v10 = swift_allocObject();
  *(v10 + 200) = 0u;
  *(v10 + 216) = 0u;
  *(v10 + 232) = 0u;
  *(v10 + 248) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 264) = 0u;
  *(v10 + 280) = 0u;
  *(v10 + 296) = 0;
  *(v10 + 304) = 0x7FF8000000000000;
  *(v10 + 312) = 0u;
  *(v10 + 328) = 0u;
  *(v10 + 344) = 0x3FF0000000000000;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 72) = 0u;
  *(v10 + 352) = 0u;
  *(v10 + 368) = 0u;
  *(v10 + 112) = -1;
  *(v10 + 128) = 0;
  *(v10 + 144) = 0;
  *(v10 + 152) = 0;
  *(v10 + 160) = 255;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = a2;
  *(v10 + 24) = v7;
  *(v10 + 64) = v8;
  *(v10 + 136) = a3;
  swift_beginAccess();

  sub_1AACE13B0(v12, v10 + 72);
  result = swift_endAccess();
  *(v10 + 120) = v9;
  *a4 = v10;
  return result;
}

uint64_t sub_1AACE0C2C(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SgMeasurements(0);

  sub_1AACD889C(&v8);

  v12[0] = &v8;

  sub_1AACD889C(v9);

  v12[1] = v9;

  sub_1AACD889C(v10);

  v12[2] = v10;

  sub_1AACD889C(&v11);

  v12[3] = &v11;
  (a1)(&v13, v12);
  sub_1AACD8D78(&v8, sub_1AACE4A3C);
  return v13;
}

uint64_t sub_1AACE0D48(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = v3;
  sub_1AACE4C50();
  sub_1AAF90024();
  v16 = a3;
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1AACCAE28(&v16), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    swift_endAccess();
    sub_1AAF90704();
    MEMORY[0x1AC5992C0](a1);
    MEMORY[0x1AC5992C0](a2);
    MEMORY[0x1AC5992F0](a3);
    v12 = sub_1AAF906E4();
    v11 = sub_1AACCB060(v12);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_1AACCB154(v11, &v16, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v15;
  }

  swift_endAccess();
  sub_1AACCAFF0(&v16);
  return v11;
}

uint64_t sub_1AACE0E94(uint64_t a1)
{
  sub_1AACE4490(0, qword_1ED9B4010, &type metadata for AnyFormatStyle, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AACE0F40@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(a1 + 16);
  v6 = *a1;
  v7 = v4;
  v8 = *(a1 + 24);
  *(a2 + 24) = *(v2 + 16);
  sub_1AACB2508(a2);
  return v3(&v6);
}

uint64_t sub_1AACE0FAC(void *a1, uint64_t *a2, char **a3)
{
  v5 = *a2;
  a1[16] = *(*a2 + 24);
  result = sub_1AACB4B38((a2 + 2), v35);
  v7 = a1[20];
  if (*(a1 + 160) == 0xFF)
  {
    __break(1u);
  }

  else
  {
    v9 = a1[18];
    v8 = a1[19];
    v11 = a1[21];
    v10 = a1[22];
    sub_1AACB4B38(v35, v32);
    if (v34)
    {
      if (v34 == 1)
      {
        v12 = *&v32[0];
        *&v39 = v9;
        *(&v39 + 1) = v8;
        LOBYTE(v40) = v7;
        *(&v40 + 1) = v11;
        v41 = v10;
        sub_1AACCAE10(v9, v8, v7);
        v12(&v36, &v39);

        sub_1AACD9464(v35);
        sub_1AACCA714(v9, v8, v7);
      }

      else
      {
        sub_1AADD7908(0);
        v39 = 0u;
        v40 = 0u;
        v41 = 0;
        *(&v37 + 1) = v13;
        v38 = sub_1AADD79FC();
        v14 = swift_allocObject();
        *&v36 = v14;
        sub_1AACCAE10(v9, v8, v7);
        sub_1AADCF710(&v39, (v14 + 16));
        sub_1AACCA714(v9, v8, v7);
        sub_1AACD9464(v35);
      }
    }

    else
    {
      sub_1AACD9464(v35);
      v36 = v32[0];
      v37 = v32[1];
      v38 = v33;
    }

    v15 = *(&v37 + 1);
    v16 = v38;
    v17 = sub_1AACBB42C(&v36, *(&v37 + 1));

    sub_1AACE4738(v17, a1, v15, v16);

    v18 = v35[0];
    v19 = type metadata accessor for SgGroup(0);
    v20 = swift_allocBox();
    v22 = v21;
    v23 = *(v5 + 24);
    sub_1AACC9BB0(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1AAF92AB0;
    *(v24 + 32) = v18;
    v25 = v19[6];
    v26 = type metadata accessor for SgClipRect(0);
    (*(*(v26 - 8) + 56))(&v22[v25], 1, 1, v26);
    *v22 = v23;
    *(v22 + 1) = v24;
    *&v22[v19[7]] = 0x3FF0000000000000;
    *&v22[v19[8]] = 0;
    *&v22[v19[9]] = MEMORY[0x1E69E7CC0];
    v22[v19[10]] = 0;
    v27 = *a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1AACE3508(0, *(v27 + 2) + 1, 1, v27);
      *a3 = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      *a3 = sub_1AACE3508((v29 > 1), v30 + 1, 1, v27);
    }

    v31 = *a3;
    *(v31 + 2) = v30 + 1;
    *&v31[8 * v30 + 32] = v20;
    return sub_1AACE1B40(&v36);
  }

  return result;
}

uint64_t sub_1AACE12E8()
{

  if (!*(v0 + 330) && (*(v0 + 329) != 1 || *(v0 + 328) <= 2u))
  {
    sub_1AACB634C((v0 + 288));
  }

  return MEMORY[0x1EEE6BDD0](v0, 331, 7);
}

uint64_t sub_1AACE1350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AACE13B0(uint64_t a1, uint64_t a2)
{
  sub_1AACC14E4(0, qword_1ED9B4010, &type metadata for AnyFormatStyle, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AACE148C(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t a5, unint64_t *a6, unint64_t *a7)
{
  type metadata accessor for AxisMarkRenderContext();
  sub_1AACC9C1C(0, a4, a5, MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  type metadata accessor for CGSize(0);
  sub_1AACE49D8(0);
  sub_1AACC9BB0(0, a6, a5, type metadata accessor for MarksDescriptor);
  sub_1AACC9BB0(0, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);

  sub_1AACD889C(v15);

  v22[0] = v15;

  sub_1AACD889C(v16);

  v22[1] = v16;

  sub_1AACD889C(v17);

  v22[2] = v17;

  sub_1AACD889C(v18);

  v22[3] = v18;

  sub_1AACD889C(&v19);

  v22[4] = &v19;

  sub_1AACD889C(v20);

  v22[5] = v20;

  sub_1AACD889C(v21);

  v22[6] = v21;
  (a1)(&v23, v22);
  sub_1AAD1D1C4(v15, a7, a4, a5, a6);
  return v23;
}

uint64_t sub_1AACE16E8()
{

  sub_1AACE0E94((v0 + 9));

  sub_1AACCA714(v0[18], v0[19], v0[20]);

  return swift_deallocClassInstance();
}

uint64_t *sub_1AACE1768(uint64_t *result, uint64_t a2, char a3, uint64_t a4, char **a5, uint64_t a6)
{
  v45 = result;
  v6 = result[1];
  v7 = *(v6 + 16);
  if (v7)
  {
    if (a3 > 1u)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    v47 = *a4;
    v40 = *result;
    v41 = a3;
    v42 = *(v6 + 16);
    do
    {
      v19 = v9;
      v46 = v6 + 8 * v9;
      v20 = *(v46 + 32);
      ++v9;
      v21 = *(a2 + 144);
      v22 = *(a2 + 152);
      v23 = v6;
      v24 = *(a2 + 160);
      *(a2 + 144) = v20;
      *(a2 + 152) = 0;
      *(a2 + 160) = v41;
      *(a2 + 168) = v19;
      *(a2 + 176) = v7;
      sub_1AACCAE10(v20, 0, a3);
      sub_1AACCA714(v21, v22, v24);
      sub_1AACCA728(v20, 0, a3);
      *&v48 = v20;
      v47(v51, &v48);
      v10 = *v51;
      if (*(a2 + 136) == 2)
      {
        v25 = *(a4 + 16);
        if (*(a4 + 24))
        {
          v25 = 0.0;
        }

        v12 = *v51 + v25;
        v6 = v23;
      }

      else
      {
        v12 = *v51;
        v6 = v23;
        if (v9 < *(v23 + 16))
        {
          *&v48 = *(v46 + 40);
          v47(v51, &v48);
          v12 = *v51;
        }
      }

      if (*(a2 + 64) > 1u)
      {
        if (*(a2 + 64) == 2)
        {
          v26 = *(a2 + 272);
        }

        else
        {
          v26 = *(a2 + 280);
        }

        v11 = v26;
      }

      else
      {
        v26 = v10;
        if (*(a2 + 64))
        {
          v10 = *(a2 + 296);
        }

        else
        {
          v10 = *(a2 + 288);
        }

        v11 = v12;
        v12 = v10;
      }

      *(a2 + 352) = v26;
      *(a2 + 360) = v10;
      *(a2 + 368) = v11;
      *(a2 + 376) = v12;
      v13 = *(v40 + 16);
      v14 = *(v13 + 32);

      v15.n128_u64[0] = v20;
      v16 = sub_1AACE1B94(v14, v15);
      v17 = *(v13 + 32);
      *(v13 + 32) = v16;
      v18 = *(v40 + 24);
      *(v40 + 24) = v16;
      sub_1AACE0FAC(a2, v45, a5);
      *(v40 + 24) = v18;
      *(v13 + 32) = v17;

      v7 = v42;
    }

    while (v42 != v9);
  }

  sub_1AACDAF30(a6, &v48, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
  if (*(&v49 + 1))
  {
    v51[0] = v48;
    v51[1] = v49;
    v52 = v50;
    v27 = swift_allocObject();
    v28 = *(*v45 + 24);
    v29 = *a5;
    sub_1AACBB198(v51, v27 + 32);
    *(v27 + 16) = v28;
    *(v27 + 24) = v29;
    v30 = v27 | 0x2000000000000000;
    *(v27 + 72) = 0;
  }

  else
  {
    sub_1AACDD030(&v48, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
    v31 = type metadata accessor for SgGroup(0);
    v30 = swift_allocBox();
    v33 = v32;
    v34 = *(*v45 + 24);
    v35 = *a5;
    v36 = v31[6];
    v37 = type metadata accessor for SgClipRect(0);
    (*(*(v37 - 8) + 56))(&v33[v36], 1, 1, v37);
    *v33 = v34;
    *(v33 + 1) = v35;
    *&v33[v31[7]] = 0x3FF0000000000000;
    *&v33[v31[8]] = 0;
    *&v33[v31[9]] = MEMORY[0x1E69E7CC0];
    v33[v31[10]] = 0;
  }

  return v30;
}

uint64_t sub_1AACE1AF8()
{

  if (*(v0 + 56))
  {
    sub_1AACB634C((v0 + 32));
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AACE1B94(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = a2.n128_f64[0];
  sub_1AAF90024();
  v15 = a1;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16) && (v7 = sub_1AACCAE28(&v15), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    swift_endAccess();
    sub_1AAF90704();
    v10 = 0.0;
    if (v5 != 0.0)
    {
      v10 = v5;
    }

    MEMORY[0x1AC5992F0](*&v10);
    MEMORY[0x1AC5992F0](a1);
    v11 = sub_1AAF906E4();
    v9 = sub_1AACCB060(v11);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    sub_1AACCB154(v9, &v15, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v14;
  }

  swift_endAccess();
  sub_1AACCAFF0(&v15);
  return v9;
}

uint64_t sub_1AACE1CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_1AACE1D48(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = *(a1 + 8);
  v6 = **a1;
  v7 = *(v5 + 80);
  v52 = *(v5 + 64);
  v53 = v7;
  v54 = *(v5 + 96);
  v8 = *(v5 + 16);
  v50[0] = *v5;
  v50[1] = v8;
  v9 = *(v5 + 48);
  v50[2] = *(v5 + 32);
  v51 = v9;
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *v10;
  v12 = v10[1];
  v14 = *v11;
  v15 = v11[1];
  v16 = *(a1 + 40);
  v17 = **(a1 + 32);
  v46 = *(a1 + 48);
  if (*(v17 + 16) && (v18 = sub_1AACE1760(*(v16 + 57)), (v19 & 1) != 0))
  {
    v20 = (*(v17 + 56) + 56 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v25 = v20[3];
    v24 = v20[4];
    v26 = v20[5];
    v27 = v20[6];
  }

  else
  {
    v24 = sub_1AAD1704C(MEMORY[0x1E69E7CC0]);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  swift_beginAccess();
  *(v6 + 184) = v21;
  *(v6 + 192) = v22;
  *(v6 + 200) = v23;
  *(v6 + 208) = v25;
  *(v6 + 216) = v24;
  *(v6 + 224) = v26;
  *(v6 + 232) = v27;

  *(v6 + 240) = 0;
  *(v6 + 248) = v13;
  *(v6 + 256) = 0;
  *(v6 + 264) = v12;
  *(v6 + 272) = 0;
  *(v6 + 280) = v14;
  *(v6 + 288) = 0;
  *(v6 + 296) = v15;
  v28 = *(v16 + 8);
  if (v28 <= 0.0)
  {
    v28 = 2.0;
  }

  *(v6 + 304) = v28;
  v29 = 0.0;
  v30 = 0.0;
  if (v52 != 255 && (v52 & 1) == 0 && *(*(&v51 + 1) + 16))
  {
    v30 = *(*(&v51 + 1) + 32);
  }

  v31 = COERCE_DOUBLE(sub_1AACE1D40());
  if (v32)
  {
    v31 = 0.0;
  }

  if (*(v6 + 64) > 1u)
  {
    if (*(v6 + 64) == 2)
    {
      v14 = 0.0;
      v29 = v30;
      v33 = 0.0;
    }

    else
    {
      v29 = v30;
      v33 = v14;
    }

    v34 = v31;
  }

  else
  {
    v14 = v30;
    v33 = v31;
    v34 = 0.0;
    if (*(v6 + 64))
    {
      v14 = v30;
      v29 = v15;
      v33 = v31;
      v34 = v15;
    }
  }

  *(v6 + 312) = v14;
  *(v6 + 320) = v29;
  *(v6 + 328) = v33;
  *(v6 + 336) = v34;
  v35 = v30 < v31;
  v36 = -1.0;
  if (v35)
  {
    v36 = 1.0;
  }

  *(v6 + 344) = v36;
  v37 = *(v51 + 16);
  if (v37 && *(v51 + 32 + 8 * v37 - 8) < *(v51 + 32) && a2 != 2)
  {
    *(v6 + 344) = -v36;
  }

  v49 = MEMORY[0x1E69E7CC0];
  v38 = *v16;
  v39 = *(*v16 + 16);
  v40 = *(v39 + 32);

  v41 = sub_1AACE0D48(a3, a4, v40);
  v42 = *(v39 + 32);
  *(v39 + 32) = v41;
  v43 = *(v38 + 24);
  *(v38 + 24) = v41;
  v44 = sub_1AACE1768(v16, v6, a2, v50, &v49, v46);
  *(v38 + 24) = v43;

  *(v39 + 32) = v42;

  return v44;
}

void static AxisTick._renderAxisMark(_:_:)(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v95 = a3;
  sub_1AACE4ACC(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SgShapeStyle(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v96) = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v12 = *(a1 + 3);
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  v15 = *(a1 + 6);
  v16 = a1[7];
  v17 = *(a1 + 64);
  LODWORD(v97) = *(a1 + 65);
  v18 = a1[9];
  v19 = *a2;
  v20 = *(*a2 + 24);
  if (v11 <= 1)
  {
    if (!v11)
    {
      v21 = *(v19 + 128);
      swift_beginAccess();
      v22 = *(v19 + 216);
      if (v22)
      {
        v23 = 0.0;
        if (*(v22 + 16))
        {
          v24 = sub_1AACC9B78(v21);
          if (v25)
          {
            v23 = *(*(v22 + 56) + 8 * v24);
          }
        }

        swift_endAccess();
        v26 = v23 + v10;
        goto LABEL_14;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v27 = v10;
LABEL_12:
    swift_beginAccess();
    if (*(v19 + 216))
    {
      v26 = v27 + *(v19 + 208);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_88;
  }

  if (v11 == 2)
  {
    v26 = v10;
    goto LABEL_14;
  }

  v27 = 0.0;
  v26 = 4.0;
  if (v20 - 1 >= 2)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v15)
  {
    v28 = HIDWORD(v13);
    v29 = v15;
  }

  else
  {
    sub_1AADCFF50(*(v19 + 64), &v100);
    v29 = v104;
    v14 = v103;
    LODWORD(v13) = v101;
    v28 = v102;
    v12 = v100;
    v16 = v105;
  }

  v94 = v18;
  if ((v17 & 1) == 0)
  {
    v32 = *(v19 + 64);
    if (v20 > 1)
    {
      v30 = 0.0;
      if ((v32 | 2) == 2)
      {
        if (*(v19 + 64) > 1u)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }

    else if ((v32 | 2) != 2)
    {
      v30 = 0.0;
      if (*(v19 + 64) > 1u)
      {
LABEL_32:
        if (v32 == 2)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }

LABEL_29:
      if (!*(v19 + 64))
      {
        v31 = *(v19 + 256);
        goto LABEL_39;
      }

      goto LABEL_35;
    }

    v30 = -v26;
    v26 = 0.0;
    if (*(v19 + 64) > 1u)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (*(v19 + 64) > 1u)
  {
    if (*(v19 + 64) == 2)
    {
      v26 = *(v19 + 280) - *(v19 + 272);
      v30 = 0.0;
LABEL_33:
      v31 = *(v19 + 240);
      goto LABEL_39;
    }

    v30 = *(v19 + 272) - *(v19 + 280);
    v26 = 0.0;
LABEL_37:
    v33 = *(v19 + 248);
    goto LABEL_38;
  }

  if (!*(v19 + 64))
  {
    v26 = *(v19 + 296) - *(v19 + 288);
    v30 = 0.0;
    v31 = *(v19 + 256);
    goto LABEL_39;
  }

  v30 = *(v19 + 288) - *(v19 + 296);
  v26 = 0.0;
LABEL_35:
  v33 = *(v19 + 264);
LABEL_38:
  v31 = -v33;
LABEL_39:
  v34 = v16 + v30 - v31;
  swift_beginAccess();
  v35 = *(v19 + 32);
  if (v35)
  {

    v36 = v35;
  }

  else
  {
    v37 = qword_1ED9B09B8;

    if (v37 != -1)
    {
      swift_once();
    }

    *&v99 = qword_1ED9C3448;

    v36 = sub_1AAF8DA44();
  }

  v98 = 1;
  v38 = v13 | (v28 << 32);
  v39 = *(v7 + 32);
  v40 = sub_1AAF8F154();
  (*(*(v40 - 8) + 56))(&v9[v39], 1, 1, v40);
  *v9 = v36;
  v41 = MEMORY[0x1E697E0B8];
  v42 = MEMORY[0x1E697E0A8];
  *(v9 + 8) = v99;
  *(v9 + 3) = v41;
  *(v9 + 4) = v42;
  v9[40] = v98;
  v9[41] = 0;
  *(v9 + 6) = v12;
  *(v9 + 7) = v38;
  *(v9 + 8) = v14;
  *(v9 + 9) = v29;
  *(v9 + 10) = v34;
  *(v9 + 11) = 0x3FF0000000000000;
  v43 = &v9[*(v7 + 36)];
  *v43 = 0;
  *(v43 + 4) = 0;
  v44 = *(v19 + 64);
  if (LOBYTE(v96))
  {
    v45 = *(v19 + 352);
    v46 = v97;
    if (*(v19 + 136) == 2)
    {
      v45 = (v45 + *(v19 + 368)) * 0.5;
      v47 = (*(v19 + 360) + *(v19 + 376)) * 0.5;
    }

    else
    {
      v47 = *(v19 + 360);
    }
  }

  else
  {
    v45 = *(v19 + 352);
    v47 = *(v19 + 360);
    v46 = v97;
  }

  if (v44 <= 1)
  {
    v48 = v26 + v47;
  }

  else
  {
    v48 = v47;
  }

  if (v44 <= 1)
  {
    v49 = v45;
  }

  else
  {
    v49 = v26 + v45;
  }

  if (v44 <= 1)
  {
    v50 = v30 + v47;
  }

  else
  {
    v50 = v47;
  }

  if (v44 <= 1)
  {
    v51 = v45;
  }

  else
  {
    v51 = v30 + v45;
  }

  v53 = *(v19 + 48);
  v52 = *(v19 + 56);
  if ((LOBYTE(v96) & 1) != 0 || *(v19 + 136) != 2)
  {
    goto LABEL_65;
  }

  if (*(v19 + 160) == 0xFF)
  {
LABEL_89:
    __break(1u);
    return;
  }

  if (!*(v19 + 168))
  {
    v71 = *(v19 + 328);
    v70 = *(v19 + 336);
    if (v44 > 1)
    {
      v72 = v30 + v71;
      v94 = v26 + v71;
      v96 = v70;
      v92 = v70;
    }

    else
    {
      v92 = v30 + v70;
      v96 = v26 + v70;
      v94 = v71;
      v72 = v71;
    }

    v73 = type metadata accessor for SgGroup(0);
    v97 = swift_allocBox();
    v75 = v74;
    v76 = *(*(v19 + 16) + 24);
    sub_1AAD049BC(0, &qword_1ED9B28D0, &type metadata for SgNode);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1AAF9E2B0;
    v78 = type metadata accessor for SgRule(0);
    v79 = swift_allocBox();
    v81 = v80;
    sub_1AADDAB78(v9, v80 + *(v78 + 36));
    *v81 = 0;
    *(v81 + 8) = v51 + v53;
    *(v81 + 16) = v50 + v52;
    *(v81 + 24) = v49 + v53;
    *(v81 + 32) = v48 + v52;
    *(v81 + *(v78 + 40)) = 0;
    *(v77 + 32) = v79 | 0x6000000000000000;
    v82 = swift_allocBox();
    v84 = v83;
    v85 = v53 + v72;
    v86 = v52 + v92;
    v87 = v53 + v94;
    v88 = v52 + v96;
    sub_1AADDAB78(v9, v83 + *(v78 + 36));
    *v84 = 0;
    *(v84 + 8) = v85;
    *(v84 + 16) = v86;
    *(v84 + 24) = v87;
    *(v84 + 32) = v88;
    *(v84 + *(v78 + 40)) = 0;
    *(v77 + 40) = v82 | 0x6000000000000000;
    v89 = type metadata accessor for SgClipRect(0);
    v90 = v93;
    (*(*(v89 - 8) + 56))(v93, 1, 1, v89);

    sub_1AADDABDC(v9);
    *v75 = v76;
    v75[1] = v77;
    sub_1AACE1CD8(v90, v75 + v73[6], sub_1AACE4ACC);
    *(v75 + v73[7]) = 0x3FF0000000000000;
    *(v75 + v73[8]) = 0;
    *(v75 + v73[9]) = MEMORY[0x1E69E7CC0];
    *(v75 + v73[10]) = 0;
    *v95 = v97;
    return;
  }

LABEL_65:
  v54 = *(v19 + 304);
  v55 = v51 + v53;
  v56 = v50 + v52;
  v57 = v49 + v53;
  v58 = v48 + v52;
  v59 = v55 == v49 + v53;
  v60 = v55;
  v61 = v94 / v54;
  if (v59)
  {
    v62 = v55;
    if (v46)
    {
      v62 = round(v55 * v54) / v54;
    }

    v60 = v61 + v62;
  }

  v63 = v56;
  if (v56 == v58)
  {
    v64 = v56;
    if (v46)
    {
      v64 = round(v56 * v54) / v54;
    }

    v63 = v61 + v64;
  }

  if (v55 == v57)
  {
    if (v46)
    {
      v55 = round(v55 * v54) / v54;
    }

    v57 = v61 + v55;
  }

  v65 = *(*(v19 + 16) + 24);
  if (v56 == v58)
  {
    if (v46)
    {
      v56 = round(v56 * v54) / v54;
    }

    v58 = v61 + v56;
  }

  v66 = type metadata accessor for SgRule(0);
  v67 = swift_allocBox();
  v69 = v68;
  sub_1AACE1CD8(v9, v68 + *(v66 + 36), type metadata accessor for SgShapeStyle);
  *v69 = v65;
  *(v69 + 8) = v60;
  *(v69 + 16) = v63;
  *(v69 + 24) = v57;
  *(v69 + 32) = v58;
  *(v69 + *(v66 + 40)) = 0;
  *v95 = v67 | 0x6000000000000000;
}