uint64_t SparsePartInfo.part.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 SparsePartInfo.init(part:status:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  *a3 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3;
  return result;
}

BOOL sub_1B0CB1204(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v5, v7);
}

BOOL static SparsePartInfo.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2))
  {
    v4 = *(a1 + 24);
    v10[0] = *(a1 + 8);
    v10[1] = v4;
    v11 = *(a1 + 40);
    v5 = *(a2 + 24);
    v8[0] = *(a2 + 8);
    v8[1] = v5;
    v9 = *(a2 + 40);
    return _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v8);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B0CB12CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v8[0] = *(a1 + 1);
  v8[1] = v3;
  v9 = *(a1 + 40);
  v4 = *a2;
  v5 = *(a2 + 3);
  v10[0] = *(a2 + 1);
  v10[1] = v5;
  v11 = *(a2 + 40);
  return (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v2, v4) & 1) != 0 && _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v8, v10);
}

BOOL SparsePartInfo.Status.isEmpty.getter()
{
  result = 0;
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 3)
    {
      return 1;
    }

    v1 = *(v0 + 8);
    v2 = *(v0 + 16) | *(v0 + 24);
    if (v2 | *v0 | v1)
    {
      v3 = v2 | v1;
      if (*v0 != 1 || v3 != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

char *Message.findPartsMissingData(cache:)(uint64_t a1)
{

  v3 = sub_1B0CA192C(v1, a1);

  return v3;
}

char *sub_1B0CB13DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char **a6@<X8>)
{
  result = sub_1B0CB0F14(a5, a1, a2, a3, a4);
  *a6 = result;
  return result;
}

uint64_t sub_1B0CB1424(uint64_t *a1, char **a2, void *a3)
{
  v5 = *(a1 + 8);
  v55[1] = *(a1 + 7);
  v56 = v5;
  v55[0] = *(a1 + 6);
  if (*(&v5 + 1))
  {
    v6 = v5 > 0xFu;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v21 = *a1;
    v22 = *a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1B0C81B48(0, *(v22 + 2) + 1, 1, v22);
      *a2 = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B0C81B48((v24 > 1), v25 + 1, 1, v22);
      *a2 = v22;
    }

    *(v22 + 2) = v25 + 1;
    v26 = &v22[48 * v25];
    *(v26 + 4) = v21;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
LABEL_26:
    v32 = 3;
LABEL_32:
    v26[72] = v32;
    return 2;
  }

  v7 = a1[8];
  if (!v7 || !*(&v56 + 1) || (v8 = a1[5], v9 = a1[6], v10 = a1[7], (sub_1B0C63FAC(v8, v9, v10 & 1, a1[8], v55) & 1) == 0))
  {
    if (*(a1 + 184) != 2)
    {
      v33 = sub_1B0C82E8C();
      v34 = *a1;
      v36 = v35 & 1;
      v37 = *a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v37;
      if ((v38 & 1) == 0)
      {
        v37 = sub_1B0C81B48(0, *(v37 + 2) + 1, 1, v37);
        *a2 = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = sub_1B0C81B48((v39 > 1), v40 + 1, 1, v37);
        *a2 = v37;
      }

      *(v37 + 2) = v40 + 1;
      v26 = &v37[48 * v40];
      *(v26 + 4) = v34;
      *(v26 + 5) = v33;
      *(v26 + 7) = 0;
      *(v26 + 8) = 0;
      *(v26 + 6) = v36;
      v32 = 1;
      goto LABEL_32;
    }

    v27 = *a1;
    v28 = *a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_1B0C81B48(0, *(v28 + 2) + 1, 1, v28);
      *a2 = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_1B0C81B48((v30 > 1), v31 + 1, 1, v28);
      *a2 = v28;
    }

    *(v28 + 2) = v31 + 1;
    v26 = &v28[48 * v31];
    *(v26 + 4) = v27;
    *(v26 + 5) = 1;
    *(v26 + 7) = 0;
    *(v26 + 8) = 0;
    *(v26 + 6) = 0;
    goto LABEL_26;
  }

  v12 = sub_1B0C795A8(a3, v8, v9, v10 & 1, v7);
  v14 = v13;
  if (*(a1 + 184) != 2)
  {
    v42 = sub_1B0C82E8C();
    v43 = *a1;
    v45 = v44 & 1;
    v46 = *a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v46;
    if ((v47 & 1) == 0)
    {
      v46 = sub_1B0C81B48(0, *(v46 + 2) + 1, 1, v46);
      *a2 = v46;
    }

    v48 = *(v46 + 2);
    v49 = *(v46 + 3);
    v50 = v48 + 1;
    if (v48 >= v49 >> 1)
    {
      v54 = v48 + 1;
      v51 = v46;
      v52 = *(v46 + 2);
      v53 = sub_1B0C81B48((v49 > 1), v48 + 1, 1, v51);
      v48 = v52;
      v50 = v54;
      v46 = v53;
      *a2 = v53;
    }

    *(v46 + 2) = v50;
    v26 = &v46[48 * v48];
    *(v26 + 4) = v43;
    *(v26 + 5) = v42;
    *(v26 + 6) = v45;
    *(v26 + 7) = v12;
    *(v26 + 8) = v14;
    v32 = 2;
    goto LABEL_32;
  }

  v15 = *a1;
  v16 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_1B0C81B48(0, *(v16 + 2) + 1, 1, v16);
    *a2 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1B0C81B48((v18 > 1), v19 + 1, 1, v16);
    *a2 = v16;
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[48 * v19];
  *(v20 + 4) = v15;
  *(v20 + 5) = v12;
  *(v20 + 7) = 0;
  *(v20 + 8) = 0;
  *(v20 + 6) = v14;
  v20[72] = 0;
  return 2;
}

BOOL _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = (*(a1 + 9) << 8) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 40) | v4;
  if (v5 <= 1)
  {
    if (!*(a1 + 32))
    {
      if (a2[2].i8[0])
      {
        return 0;
      }

      v7 = a2->i64[1];
      if (v6)
      {
        if (v7)
        {
          if (v3 != a2->i64[0] || v6 != v7)
          {
            return (sub_1B0E46A78() & 1) != 0;
          }

          return 1;
        }

        return 0;
      }

      return !v7;
    }

    if (a2[2].i8[0] != 1)
    {
      return 0;
    }

    if ((v4 & 1) == 0)
    {
      return (a2->i8[8] & 1) == 0 && v3 == a2->i64[0];
    }

    return (a2->i8[8] & 1) != 0;
  }

  v9 = a1[2];
  v8 = a1[3];
  if (v5 != 2)
  {
    if (v6 | v9 | v3 | v8)
    {
      if (a2[2].i8[0] != 3 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
      {
        return 0;
      }
    }

    else
    {
      if (a2[2].i8[0] != 3)
      {
        return 0;
      }

      v10 = vorrq_s8(*a2, a2[1]);
      if (vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  v7 = a2[1].i64[1];
  if (v4)
  {
    if ((a2->i8[8] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (a2->i8[8])
  {
    return 0;
  }

  v11 = v3 == a2->i64[0];
  result = 0;
  if (v11)
  {
LABEL_29:
    if (!v8)
    {
      return !v7;
    }

    if (!v7)
    {
      return 0;
    }

    if (v9 != a2[1].i64[0] || v8 != v7)
    {
      return (sub_1B0E46A78() & 1) != 0;
    }

    return 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9IMAP2MIME14SparsePartInfoV6StatusO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1B0CB19F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0CB1A40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0CB1A88(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1B0CB1AD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[2];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v8;
    v11 = result;
    LODWORD(v12) = 0;
    v13 = 0;
    v14 = 0;
    v15 = *v8;
    while (1)
    {
      while (1)
      {
        v30 = v12;
        v31 = v13;
        if (v13)
        {
          break;
        }

        if (v14 == v9)
        {
          goto LABEL_38;
        }

        v18 = *(v15 + v14);
        v19 = *(v15 + v14++);
        if (v18 < 0)
        {
          LODWORD(v12) = v12 & 0xFFFFFF00 | v19;
          v13 = 8;
          goto LABEL_7;
        }

LABEL_25:
        LODWORD(v12) = v30;
        v13 = v31;
        v16 = v11[1];
        v28 = *v11;
        v29 = v16;
        result = sub_1B0E44C58();
        v17 = v29;
        *v11 = v28;
        v11[1] = v17;
      }

      if ((v12 & 0x80) == 0)
      {
        sub_1B0CB1F34();
        result = sub_1B0C14AB0();
        v27 = *(v26 + 4);
        if (!v27)
        {
          goto LABEL_40;
        }

        *v26 >>= 8;
        *(v26 + 4) = v27 - 8;
        (result)(&v28, 0);
        goto LABEL_25;
      }

LABEL_7:
      if (v14 == v9)
      {
        v20 = v13;
      }

      else
      {
        v21 = v14 + 1;
        LODWORD(v12) = (*(v15 + v14) << v13) | ((-255 << v13) - 1) & v12;
        v20 = v13 + 8;
        if ((v13 + 8) > 0x1Fu)
        {
          goto LABEL_20;
        }

        if (v21 != v9)
        {
          v22 = *(v15 + v21);
          v21 = v14 + 2;
          LODWORD(v12) = (v22 << v20) | ((-255 << v20) - 1) & v12;
          v20 = v13 + 16;
          if ((v13 + 16) > 0x1Fu)
          {
            goto LABEL_20;
          }

          if (v21 != v9)
          {
            v23 = *(v15 + v21);
            v21 = v14 + 3;
            LODWORD(v12) = (v23 << v20) | ((-255 << v20) - 1) & v12;
            v20 = v13 + 24;
            if ((v13 + 24) > 0x1Fu)
            {
              goto LABEL_20;
            }

            if (v21 != v9)
            {
              v24 = *(v15 + v21);
              v21 = v14 + 4;
              LODWORD(v12) = (v24 << v20) | ((-255 << v20) - 1) & v12;
              v20 = v13 + 32;
              if (v13 < 0xE0u)
              {
LABEL_20:
                v14 = v21;
                goto LABEL_21;
              }

              if (v21 != v9)
              {
                v14 += 5;
                LODWORD(v12) = (*(v15 + v21) << v13) | ((-255 << v13) - 1) & v12;
                v20 = v13 + 40;
                goto LABEL_21;
              }
            }
          }
        }
      }

      v14 = v9;
      if (!v20)
      {
LABEL_38:
        v10[2] = 0;
        return result;
      }

LABEL_21:
      if ((v12 & 0xC0E0) == 0x80C0)
      {
        if ((v12 & 0x1E) != 0)
        {
          v25 = 16;
LABEL_24:
          v30 = v12 >> v25;
          v31 = v20 - v25;
          goto LABEL_25;
        }
      }

      else if ((v12 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v12 & 0x200F) != 0 && (v12 & 0x200F) != 0x200D)
        {
          v25 = 24;
          goto LABEL_24;
        }
      }

      else if ((v12 & 0xC0C0C0F8) == 0x808080F0 && (v12 & 0x3007) != 0 && __rev16(v12 & 0x3007) <= 0x400)
      {
        v25 = 32;
        goto LABEL_24;
      }

      result = sub_1B0E46D58();
      v12 = v12 >> ((8 * result) & 0x38);
      v13 = v20 - 8 * result;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB1ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _BYTE *a7, uint64_t a8)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = 0;
  sub_1B0CAC0EC(v9, a3, a4, a5, a6, a7, a7, a8);
}

unint64_t sub_1B0CB1F34()
{
  result = qword_1EB6DA308;
  if (!qword_1EB6DA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DA308);
  }

  return result;
}

uint64_t sub_1B0CB1F88(uint64_t result)
{
  v2 = *(v1 + 4);
  if (v2)
  {
    if (result <= 0xF7u)
    {
      v3 = (*v1 >> result);
      *v1 = (*v1 >> (((result + 8) >> 1) & 0x1C) >> (((result + 8) >> 1) & 0x1C) << ((result + 8 - ((((((result + 8) - result) & 0xE000u) >> 13) + 8) & 0xF8)) & 0x18)) | *v1 & ((1 << ((result >> 1) & 0x1C) << ((result >> 1) & 0x1C)) - 1);
      *(v1 + 4) = v2 - ((((((result + 8) - result) & 0xE000u) >> 13) + 8) & 0xF8);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1B0CB2014@<X0>(char *result@<X0>, int8x8_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, unsigned __int8 a6@<W5>, _BYTE *a7@<X6>, _BYTE *a8@<X8>)
{
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (a5 == 74)
  {
    v9 = 23;
  }

  else
  {
    v9 = byte_1B0EE0955[a5];
  }

  result = CompactEncDet_detectEncoding(a2, a3, result, a4 & 1, v9, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1B0CB20D8(__int16 a1)
{
  result = CompactEncDet_EncodingName();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = sub_1B0E44D88();
  MEMORY[0x1B2726E80](v3);

  MEMORY[0x1B2726E80](10016, 0xE200000000000000);
  result = CompactEncDet_MimeEncodingName();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = sub_1B0E44D88();
  MEMORY[0x1B2726E80](v4);

  MEMORY[0x1B2726E80](8231, 0xE200000000000000);
  if ((a1 & 0x100) != 0)
  {
    v5 = 0x656C6261696C6572;
  }

  else
  {
    v5 = 0x6261696C65726E75;
  }

  if ((a1 & 0x100) != 0)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA0000000000656CLL;
  }

  MEMORY[0x1B2726E80](v5, v6);

  return 0;
}

uint64_t sub_1B0CB21E4()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1B0CB20D8(v1 | *v0);
}

uint64_t sub_1B0CB2200()
{
  if (*v0)
  {
    return 0x656C6261696C6572;
  }

  else
  {
    return 0x6261696C65726E75;
  }
}

uint64_t sub_1B0CB2264()
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CB22EC(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CB2338@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0CB2428(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B0CB237C()
{
  result = CompactEncDet_EncodingName();
  if (result)
  {

    return sub_1B0E44D88();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CB23BC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0CB2F3C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B0CB23F4()
{
  result = CompactEncDet_LanguageName();
  if (result)
  {

    return sub_1B0E44D88();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CB2428(unsigned __int8 a1)
{
  if (a1 > 0x4Au)
  {
    return 74;
  }

  else
  {
    return byte_1B0EE090A[a1];
  }
}

uint64_t sub_1B0CB2450(unsigned __int8 *a1, unsigned __int8 *a2, char a3, int8x8_t *a4, uint64_t a5, char a6, void *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    v12 = a1;
    v13 = a2 - a1;
    if (a1 && v13 > 119 || (v14 = sub_1B0CA1F60(a1, a2), v15 = sub_1B0CB2428(v14), v15 == 74))
    {
      v15 = 74;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    if (v12)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    v17 = MEMORY[0x1B2726D20](v16);
    if (v12 && a2 != v12)
    {
      v19 = v31;
      v18 = v32;
      do
      {
        v17 = *v12;
        if ((v17 - 1) <= 0x7D)
        {
          v29[0] = v19;
          v29[1] = v32;
          v17 = sub_1B0E44C58();
          v19 = v29[0];
        }

        ++v12;
      }

      while (v12 != a2);
      v31 = v19;
    }

    else
    {
      v18 = v32;
    }

    LOBYTE(v29[0]) = 0;
    MEMORY[0x1EEE9AC00](v17);
    v32 = v18 & 0xFFFFFFFFFFFFFFLL;
    if (v20 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      __break(1u);
    }

    else if (v20 <= 0x7FFFFFFF)
    {
      if (v15 == 74)
      {
        v22 = 23;
      }

      else
      {
        v22 = byte_1B0EE0955[v15];
      }

      v30 = CompactEncDet_detectEncoding(a4, v20, &v31, a6 & 1, v22, 0x1Au, v29);
      goto LABEL_30;
    }

    __break(1u);
    __break(1u);
  }

  LOBYTE(v29[0]) = 0;
  if (!a4)
  {
    LODWORD(v10) = 0;
LABEL_23:
    v21 = CompactEncDet_detectEncoding(a4, v10, 0, a6 & 1, 23, 0x1Au, v29);
    goto LABEL_31;
  }

  v10 = a5 - a4;
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  __break(1u);
  type metadata accessor for CompactEncDet_Encoding(0);
  sub_1B0E46258();
LABEL_30:

  v21 = v30;
LABEL_31:
  if (sub_1B0CB2428(v21) == 74)
  {
    return 0;
  }

  v23 = CompactEncDet_MimeEncodingName();
  if (!v23)
  {
    return v23;
  }

  v23 = sub_1B0CB31A4(v23, a7);
  if (!v23)
  {
    return v23;
  }

  swift_beginAccess();
  v24 = a7[4];
  if (!v24)
  {

    result = sub_1B0CB31A4("euc-cn", a7);
    if (!result)
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v24 = result;
    a7[4] = result;
  }

  swift_endAccess();
  if (v24 == v23)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v26 = a7[5];
  if (!v26)
  {

    result = sub_1B0CB31A4("gb-2312-80", a7);
    if (!result)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v26 = result;
    a7[5] = result;
  }

  swift_endAccess();
  if (v26 == v23)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v27 = a7[6];
  if (!v27)
  {

    result = sub_1B0CB31A4("gbk", a7);
    if (!result)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v27 = result;
    a7[6] = result;
  }

  swift_endAccess();
  if (v27 == v23)
  {
LABEL_47:
    swift_beginAccess();
    v23 = a7[7];
    if (v23)
    {
LABEL_50:
      swift_endAccess();
      return v23;
    }

    result = sub_1B0CB31A4("gb-18030", a7);
    if (result)
    {
      v23 = result;
      a7[7] = result;
      goto LABEL_50;
    }

    goto LABEL_64;
  }

  swift_beginAccess();
  v28 = a7[8];
  if (!v28)
  {

    result = sub_1B0CB31A4("big5", a7);
    if (!result)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v28 = result;
    a7[8] = result;
  }

  swift_endAccess();
  if (v28 != v23)
  {
    return v23;
  }

  swift_beginAccess();
  v23 = a7[9];
  if (v23)
  {
    goto LABEL_50;
  }

  result = sub_1B0CB31A4("big5-hkscs", a7);
  if (result)
  {
    v23 = result;
    a7[9] = result;
    goto LABEL_50;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for CharacterSetDetection.Encoding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB7)
  {
    goto LABEL_17;
  }

  if (a2 + 73 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 73) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 73;
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

      return (*a1 | (v4 << 8)) - 73;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 73;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4A;
  v8 = v6 - 74;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CharacterSetDetection.Encoding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 73 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 73) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB7)
  {
    v4 = 0;
  }

  if (a2 > 0xB6)
  {
    v5 = ((a2 - 183) >> 8) + 1;
    *result = a2 + 73;
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
    *result = a2 + 73;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CharacterSetDetection.Language(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x60)
  {
    goto LABEL_17;
  }

  if (a2 + 160 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 160) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 160;
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

      return (*a1 | (v4 << 8)) - 160;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 160;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA1;
  v8 = v6 - 161;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CharacterSetDetection.Language(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 160 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 160) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x60)
  {
    v4 = 0;
  }

  if (a2 > 0x5F)
  {
    v5 = ((a2 - 96) >> 8) + 1;
    *result = a2 - 96;
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
    *result = a2 - 96;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0CB2E38()
{
  result = qword_1EB6E6040;
  if (!qword_1EB6E6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6040);
  }

  return result;
}

unint64_t sub_1B0CB2E90()
{
  result = qword_1EB6E6048;
  if (!qword_1EB6E6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6048);
  }

  return result;
}

unint64_t sub_1B0CB2EE8()
{
  result = qword_1EB6E6050;
  if (!qword_1EB6E6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6050);
  }

  return result;
}

uint64_t sub_1B0CB2F3C(uint64_t result)
{
  if (result >= -95)
  {
    v1 = -95;
  }

  else
  {
    v1 = result;
  }

  if ((result & 0x80u) == 0)
  {
    return result;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ICUCanonicalConverterName(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ICUCanonicalConverterName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

char *sub_1B0CB2FF8()
{
  v0 = ucnv_countAvailable();
  result = sub_1B0C80E48(0, v0 & ~(v0 >> 31), 0, MEMORY[0x1E69E7CC0]);
  if (v0 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (v0)
    {
      for (i = 0; i != v0; ++i)
      {
        AvailableName = ucnv_getAvailableName();
        if (AvailableName)
        {
          v6 = *(v2 + 2);
          v5 = *(v2 + 3);
          if (v6 >= v5 >> 1)
          {
            v7 = AvailableName;
            v2 = sub_1B0C80E48((v5 > 1), v6 + 1, 1, v2);
            AvailableName = v7;
          }

          *(v2 + 2) = v6 + 1;
          *&v2[8 * v6 + 32] = AvailableName;
        }
      }
    }

    return v2;
  }

  return result;
}

unint64_t sub_1B0CB30C4()
{
  result = qword_1EB6E6058;
  if (!qword_1EB6E6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6058);
  }

  return result;
}

uint64_t sub_1B0CB3118()
{
  v0 = sub_1B0E44B68();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B0E44B58();
  result = sub_1B0E44B28();
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0CB31A4(uint64_t a1, uint64_t a2)
{
  CanonicalName = ucnv_getCanonicalName();
  if (CanonicalName)
  {
    v4 = CanonicalName;
    if (*(a2 + 16))
    {
      v5 = *(a2 + 16);
    }

    else
    {
      v5 = sub_1B0CB2FF8();
      *(a2 + 16) = v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    v6 = *(v5 + 2);
    v7 = 32;
    while (v6)
    {
      v8 = *&v5[v7];
      v7 += 8;
      --v6;
      if (v8 == v4)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_32;
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    if (*(a2 + 16))
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = sub_1B0CB2FF8();
      *(a2 + 16) = v9;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    v10 = *(v9 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = 0;
    while (v10 != v11)
    {
      if (v11 >= *(v9 + 2))
      {
        goto LABEL_39;
      }

      v12 = *&v9[8 * v11++ + 32];
      if (!ucnv_compareNames())
      {

        return v12;
      }
    }
  }

  v13 = *(a2 + 16);
  if (!v13)
  {
    v14 = sub_1B0CB2FF8();
    *(a2 + 16) = v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v15 = *(v14 + 2);
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_34:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_35:

    return 0;
  }

  v14 = *(a2 + 16);
  v15 = *(v13 + 16);
  if (!v15)
  {
    goto LABEL_34;
  }

LABEL_20:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = 0;
  while (1)
  {
    if (v16 >= *(v14 + 2))
    {
      goto LABEL_38;
    }

    v4 = *&v14[8 * v16 + 32];
    v17 = ucnv_countAliases();
    if (v17)
    {
      break;
    }

LABEL_22:
    if (++v16 == v15)
    {
      goto LABEL_35;
    }
  }

  v18 = v17;
  v19 = v17 + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6060, &qword_1B0EE0A70);
  v20 = sub_1B0E45278();
  v20[2] = v19;
  v20[4] = 0;
  bzero(v20 + 5, 8 * v18);
  ucnv_getAliases();
  v21 = v20[2];
  if (!v21)
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = 0;
  while (1)
  {
    if (v22 >= v20[2])
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    if (v20[v22 + 4] && !ucnv_compareNames())
    {
      break;
    }

    if (v21 == ++v22)
    {
      goto LABEL_21;
    }
  }

LABEL_32:

  return v4;
}

uint64_t sub_1B0CB34B0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v21[5] = *MEMORY[0x1E69E9840];
  result = sub_1B0CB36B4(a1, a2, a3);
  if (!v4)
  {
    if (result >= a2)
    {
      *a4 = 0;
      a4[1] = 0;
      return result;
    }

    if (a2 + 0x4000000000000000 >= 0)
    {
      v11 = 2 * a2;
      if (2 * a2 < 0)
      {
        __break(1u);
      }

      else if (v11 + 0x4000000000000000 >= 0)
      {
        v5 = result;
        result = 4 * a2;
        if (4 * a2 <= 1024)
        {
LABEL_7:
          MEMORY[0x1EEE9AC00](result);
          v21[1] = sub_1B0CB3848(a1, a2, v21 - v13, v12, v5, a3);
          v21[2] = v14;
          v21[3] = v15;
          v21[4] = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6068, &qword_1B0EE0A78);
          sub_1B0CB39C4();
          sub_1B0CB3A28();
          result = sub_1B0E44BD8();
          if (v17)
          {
            *a4 = result;
            a4[1] = v17;
          }

          else
          {
            __break(1u);
          }

          return result;
        }

LABEL_13:
        v21[0] = result;
        v18 = v11;
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        result = v21[0];
        if (!isStackAllocationSafe)
        {
          v20 = swift_slowAlloc();
          sub_1B0CB378C(v20, a1, a2, a4, v18, a3, v5);
          return MEMORY[0x1B272C230](v20, -1, -1);
        }

        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1B0CB36B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  return unorm2_spanQuickCheckYes();
}

uint64_t sub_1B0CB378C@<X0>(void *__dst@<X0>, char *__src@<X3>, uint64_t a3@<X4>, void *a4@<X8>, uint64_t a5@<X1>, uint64_t a6@<X2>, uint64_t a7@<X5>)
{
  result = sub_1B0CB3848(__src, a3, __dst, a5, a7, a6);
  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6068, &qword_1B0EE0A78);
    sub_1B0CB39C4();
    sub_1B0CB3A28();
    result = sub_1B0E44BD8();
    if (v10)
    {
      *a4 = result;
      a4[1] = v10;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0CB3848(char *__src, uint64_t a2, void *__dst, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a5 && a4)
  {
    if (a5 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a5;
    }

    memcpy(__dst, __src, 2 * v9);
  }

  if (a2 < a5)
  {
    goto LABEL_16;
  }

  if (a5 >> 31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a2 - a5 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if ((unorm2_normalizeSecondAndAppend() & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  return 0;
}

unint64_t sub_1B0CB39C4()
{
  result = qword_1EB6E6070;
  if (!qword_1EB6E6070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6068, &qword_1B0EE0A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6070);
  }

  return result;
}

unint64_t sub_1B0CB3A28()
{
  result = qword_1EB6DA2F8;
  if (!qword_1EB6DA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DA2F8);
  }

  return result;
}

uint64_t sub_1B0CB3A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a1 + 32) & 0xF0) != 0x50 || (*(a1 + 16))
  {
    goto LABEL_3;
  }

  if (sub_1B0C895C4(*a1, *(a1 + 8)) == 1819112552 && v23 == 0xE400000000000000)
  {

    v11 = 1;
    goto LABEL_4;
  }

  v25 = sub_1B0E46A78();

  if (v25)
  {
    v11 = 1;
  }

  else
  {
LABEL_3:
    v11 = 0;
  }

LABEL_4:
  v12 = sub_1B0C7E938();
  v14 = v13;
  v16 = v15;
  sub_1B0C7DD1C(a1);
  if (!a4 || a3 == a2 || (v18 = sub_1B0CB2450(v12, v14, v16 & 1, (a4 + a2), a4 + a3, v11, a6)) == 0)
  {

    return 0;
  }

  v19 = v18;
  swift_beginAccess();
  v20 = a6[3];
  if (!v20)
  {

    result = sub_1B0CB31A4("utf-8", a6);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    a6[3] = result;
  }

  v21 = swift_endAccess();
  if (v20 == v19)
  {
    v22 = sub_1B0E44C68();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    v22 = sub_1B0C78104(v19, a6, sub_1B0CACFA8);
  }

  return v22;
}

void sub_1B0CB3CC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  isStackAllocationSafe = sub_1B0E45DC8();
  if (isStackAllocationSafe + 0x4000000000000000 >= 0)
  {
    if (2 * isStackAllocationSafe < 0)
    {
      __break(1u);
    }

    else if (2 * isStackAllocationSafe + 0x4000000000000000 >= 0)
    {
      if (4 * isStackAllocationSafe < 1025)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
LABEL_9:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v13 = swift_slowAlloc();
    sub_1B0CB47A0(v13, a1, a2, a3, a4, a5);
    MEMORY[0x1B272C230](v13, -1, -1);
    return;
  }

LABEL_5:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_1B0CB47A0(v14 - v12, a1, a2, a3, a4, a5);
  if (v5)
  {
    swift_willThrow();
  }
}

double sub_1B0CB3E60@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  ucnv_setFallback();
  if (a3)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  sub_1B0CB3EE4(a3, v11, 1, v10, a1, 1);
  if (!v5)
  {
    v13 = a1[3];
    *a5 = a1[2];
    a5[1] = v13;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0CB3EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v29 = a6;
  v30 = a3;
  v28 = a5;
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v8 = 0;
  v35 = 0;
  v36 = v6;
  v37 = a1;
  v38 = a2;
  while (1)
  {
    v9 = v37;
    if (v37)
    {
      v10 = v38 - v37;
    }

    else
    {
      v10 = 0;
    }

    if ((v8 & 0x8000000000000000) != 0 || v10 < v8)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    if ((v6 & 0x8000000000000000) != 0 || v10 < v6)
    {
      goto LABEL_45;
    }

    MinCharSize = ucnv_getMinCharSize();
    if (!MinCharSize)
    {
      goto LABEL_46;
    }

    v12 = (v6 - v8) / MinCharSize;
    v13 = __OFADD__(v12, 3);
    v14 = v12 + 3;
    if (v13)
    {
      goto LABEL_47;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_48;
    }

    v15 = 2 * v14;
    if (2 * v14 < 0)
    {
      goto LABEL_54;
    }

    if (v15 >= 1025)
    {
      MinCharSize = swift_stdlib_isStackAllocationSafe();
      if ((MinCharSize & 1) == 0)
      {
        v23 = swift_slowAlloc();
        v24 = v31;
        sub_1B0CB4200(&v35, v23, v23 + v15, v30 & 1, a4, v28, v29 & 1, v25);
        result = MEMORY[0x1B272C230](v23, -1, -1);
        if (v24)
        {
          return result;
        }

        v31 = 0;
        v21 = v35;
        v6 = v36;
        goto LABEL_36;
      }
    }

    MEMORY[0x1EEE9AC00](MinCharSize);
    v17 = &v27 - v16;
    v18 = v9 ? v9 + v8 : 0;
    v33 = v18;
    v34 = &v27 - v16;
    v32 = 0;
    result = ucnv_toUnicode();
    if (v33)
    {
      v20 = v33 - v18;
      if (!v18)
      {
        v20 = 0;
      }

      v21 = v8 + v20;
      if (__OFADD__(v8, v20))
      {
        goto LABEL_49;
      }

      if ((v21 & 0x8000000000000000) != 0 || v10 < v21)
      {
        goto LABEL_50;
      }

      if (v6 < v21)
      {
        goto LABEL_51;
      }

      if (v21 < v8)
      {
        goto LABEL_52;
      }

      v35 = v8 + v20;
      v36 = v6;
    }

    else
    {
      v21 = v8;
    }

    if (v32 != 15 && v32 > 0)
    {
      break;
    }

    if (v34)
    {
      if (v34 - v17 < -1)
      {
        goto LABEL_53;
      }

      v22 = v31;
      result = sub_1B0CB43F8(v17, (v34 - v17) / 2, v28, v29 & 1);
      v31 = v22;
      if (v22)
      {
        return swift_willThrow();
      }
    }

LABEL_36:
    v8 = v21;
    if (v21 == v6)
    {
      return result;
    }
  }

  sub_1B0C826F8();
  swift_allocError();
  *v26 = 1;
  *(v26 + 4) = 1;
  swift_willThrow();
  return swift_willThrow();
}

uint64_t sub_1B0CB4200(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, __n128 a8)
{
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  if (v14)
  {
    v16 = v14 + *a1;
  }

  else
  {
    v16 = 0;
  }

  ucnv_toUnicode();
  if (v16)
  {
    v17 = v15 - v14;
    if (!v14)
    {
      v17 = 0;
    }

    if (v13 < 0 || v17 < v13)
    {
      __break(1u);
    }

    else if (v12 >= v13)
    {
      *a1 = v13;
      a1[1] = v12;
      a1[2] = v14;
      a1[3] = v15;
      goto LABEL_11;
    }

    __break(1u);
    __break(1u);
    goto LABEL_21;
  }

LABEL_11:
  if (a2)
  {
    if (!a2)
    {
      v18 = 0;
LABEL_16:
      result = sub_1B0CB43F8(a2, v18, a6, a7 & 1);
      if (v8)
      {
        return result;
      }

      return 1;
    }

    if (a2 - a2 >= -1)
    {
      v18 = (a2 - a2) / 2;
      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
  }

  return 1;
}

uint64_t sub_1B0CB43F8(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = result;
  if ((*(a3 + 13) & 1) == 0 && (a4 & 1) != 0 && a2 >= 201)
  {
    v23 = result;
    v24 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6078, &qword_1B0EE0A80);
    sub_1B0CB473C();
    sub_1B0CB3A28();
    result = sub_1B0E44BD8();
    if (!v6)
    {
      goto LABEL_42;
    }

    MEMORY[0x1B2726E80](result);
  }

  *(a3 + 13) = 1;
  if (result)
  {
    v7 = (result + 2 * a2);
  }

  else
  {
    v7 = 0;
  }

  while (1)
  {
    LODWORD(v11) = *(a3 + 8);
    v12 = *(a3 + 12);
    v25 = v11;
    v26 = v12;
    if (v12)
    {
      break;
    }

    if (!v5 || v5 == v7)
    {
      v14 = v11;
LABEL_40:
      *(a3 + 8) = v14;
      *(a3 + 12) = 0;
      return result;
    }

    result = *v5;
    v13 = v5 + 1;
    if ((*v5 & 0xF800) != 0xD800)
    {
      v8 = 0;
      ++v5;
      goto LABEL_10;
    }

    LODWORD(v11) = v11 & 0xFFFF0000 | result;
    v12 = 16;
    ++v5;
    if (v13 == v7)
    {
LABEL_27:
      v14 = v11;
      goto LABEL_28;
    }

LABEL_16:
    v5 = v13 + 1;
    v14 = (*v13 << v12) | ((-65535 << v12) - 1) & v11;
    v15 = v12 + 16;
    if ((v12 + 16) >= 0x20u)
    {
      goto LABEL_23;
    }

    if (v5 == v7)
    {
      goto LABEL_21;
    }

    v5 = v13 + 2;
    v14 = (v13[1] << v15) | ((-65535 << v15) - 1) & v14;
    v15 = v12 + 32;
    if (v12 < 0xE0)
    {
LABEL_23:
      LOBYTE(v12) = v15;
    }

    else if (v5 == v7 || (v5 = v13 + 3, v14 = (v13[2] << v12) | ((-65535 << v12) - 1) & v14, v15 = v12 + 48, LOBYTE(v12) = v12 + 48, v12 < 0x20u))
    {
LABEL_21:
      LOBYTE(v12) = v15;
      if (!v15)
      {
        goto LABEL_40;
      }
    }

LABEL_28:
    v16 = v14 & 0xFC00FC00;
    if ((v14 & 0xFC00FC00) == 0xDC00D800)
    {
      v17 = 32;
    }

    else
    {
      v17 = 16;
    }

    v8 = v12 - v17;
    v18 = v16 == -603924480;
    if (v16 == -603924480)
    {
      v19 = 32;
    }

    else
    {
      v19 = 16;
    }

    v11 = v14 >> v19;
    if (!v18)
    {
      *(a3 + 8) = v11;
      *(a3 + 12) = v8;
      sub_1B0C826F8();
      swift_allocError();
      *v22 = 0;
      *(v22 + 4) = 1;
      return swift_willThrow();
    }

LABEL_10:
    *(a3 + 8) = v11;
    *(a3 + 12) = v8;
    v9 = *(a3 + 24);
    v23 = *(a3 + 16);
    v24 = v9;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0xE000000000000000;
    result = sub_1B0E44C58();
    v10 = v24;
    *(a3 + 16) = v23;
    *(a3 + 24) = v10;
  }

  if ((v11 & 0xF800) == 0xD800)
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    v13 = v5;
    if (v5 == v7)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  sub_1B0C16CB8();
  result = sub_1B0C14AB0();
  v21 = *(v20 + 4);
  if (v21)
  {
    *v20 = *(v20 + 2);
    *(v20 + 4) = v21 - 16;
    (result)(&v23, 0);
    LODWORD(v11) = v25;
    v8 = v26;
    goto LABEL_10;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_1B0CB473C()
{
  result = qword_1EB6DB6E0;
  if (!qword_1EB6DB6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6078, &qword_1B0EE0A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB6E0);
  }

  return result;
}

void sub_1B0CB47A0(char *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = a3 >> 14;
  v32 = a2 >> 14;
  if (a2 >> 14 == a3 >> 14)
  {
    v8 = 0;
    goto LABEL_54;
  }

  v11 = a2;
  v28 = a6;
  v12 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v29 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v30 = a5 & 0xFFFFFFFFFFFFFFLL;
  v14 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a5) & 0xF;
  }

  v31 = v14;
  v27 = a1 + 2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = 0;
  v36 = v13;
  do
  {
    v15 = v11 & 0xC;
    v16 = (v11 & 1) == 0 || v15 == v13;
    v17 = v16;
    if (v16)
    {
      v18 = v11;
      if (v15 == v13)
      {
        v18 = sub_1B0A6D6C4(v11, a4, a5);
      }

      if (v18 >> 14 < v32 || v18 >> 14 >= v7)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }

      if ((v18 & 1) == 0)
      {
        sub_1B0C04F4C(v18, a4, a5);
      }
    }

    else if (v11 >> 14 < v32 || v11 >> 14 >= v7)
    {
      goto LABEL_56;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v19 = sub_1B0E46288();
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v33 = a4;
        v34 = v30;
      }

      else if ((a4 & 0x1000000000000000) == 0)
      {
        sub_1B0E46368();
      }

      v19 = sub_1B0E46378();
      if (!v17)
      {
LABEL_29:
        if (v31 <= v11 >> 16)
        {
          goto LABEL_58;
        }

LABEL_37:
        if ((a5 & 0x1000000000000000) != 0)
        {
          goto LABEL_47;
        }

        goto LABEL_38;
      }
    }

    if (v15 == v36)
    {
      v11 = sub_1B0A6D6C4(v11, a4, a5);
    }

    if (v31 <= v11 >> 16)
    {
      goto LABEL_57;
    }

    if (v11)
    {
      goto LABEL_37;
    }

    v11 = v11 & 0xC | sub_1B0C04F4C(v11, a4, a5) & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a5 & 0x1000000000000000) != 0)
    {
LABEL_47:
      v11 = sub_1B0E44C18();
      goto LABEL_48;
    }

LABEL_38:
    v20 = v11 >> 16;
    if ((a5 & 0x2000000000000000) != 0)
    {
      v33 = a4;
      v34 = v30;
      v22 = *(&v33 + v20);
    }

    else
    {
      v21 = v29;
      if ((a4 & 0x1000000000000000) == 0)
      {
        v21 = sub_1B0E46368();
      }

      v22 = *(v21 + v20);
    }

    v23 = v22;
    v24 = __clz(v22 ^ 0xFF) - 24;
    if (v23 >= 0)
    {
      LOBYTE(v24) = 1;
    }

    v11 = ((v20 + v24) << 16) | 5;
LABEL_48:
    if (v19 >= 0x10000)
    {
      *&a1[2 * v8] = ((v19 + 983040) >> 10) & 0x3FF | 0xD800;
      v19 = (((v19 + 983040) >> 10) & 0x3FF | ((v19 & 0x3FF) << 16) | 0xDC00D800) >> 16;
      v25 = v27;
      v26 = 2;
    }

    else
    {
      v25 = a1;
      v26 = 1;
    }

    *&v25[2 * v8] = v19;
    v8 += v26;
    v13 = v36;
  }

  while (v7 != v11 >> 14);

  a6 = v28;
  if (v8 < 0)
  {
    goto LABEL_59;
  }

LABEL_54:
  sub_1B0CB34B0(a1, v8, a6, &v35);
}

uint64_t sub_1B0CB4AF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == a2)
  {
LABEL_2:
    if (result == a2)
    {
      return result;
    }

    v4 = a4 - a3;
    if (!a3)
    {
      v4 = 0;
    }

    while (1)
    {
      v5 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
        break;
      }

      if (v5 >= a2 || v5 < result || v5 < 0 || v5 >= v4)
      {
        goto LABEL_28;
      }

      v6 = *(a3 + v5);
      v7 = v6 > 0x20;
      v8 = (1 << v6) & 0x100002600;
      if (!v7 && v8 != 0)
      {
        --a2;
        if (result != v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    if (a2 <= result)
    {
      v10 = result;
    }

    else
    {
      v10 = a2;
    }

    while (v10 != result)
    {
      v11 = *(a3 + result);
      v7 = v11 > 0x20;
      v12 = (1 << v11) & 0x100002600;
      if (v7 || v12 == 0)
      {
        goto LABEL_2;
      }

      if (a2 == ++result)
      {
        return a2;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB4BC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == a2)
  {
    v4 = 0;
    return v4 | ((result == a2) << 8);
  }

  v5 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = a4 - a3;
    if (!a3)
    {
      v6 = 0;
    }

    if (v5 < a2 && v5 >= result && (v5 & 0x8000000000000000) == 0 && v5 < v6)
    {
      v4 = *(a3 + v5);
      return v4 | ((result == a2) << 8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CB4C28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a6)
  {
    v7 = a7 - a6;
  }

  else
  {
    v7 = 0;
  }

  if (a4 < 0 || v7 < a4)
  {
    goto LABEL_18;
  }

  if (a5 < 0 || v7 < a5)
  {
    goto LABEL_19;
  }

  if (a5 - a4 < a2)
  {
    return 0;
  }

  v8 = a4 + a2;
  if (__OFADD__(a4, a2))
  {
    goto LABEL_20;
  }

  if ((v8 & 0x8000000000000000) != 0 || v7 < v8)
  {
    goto LABEL_21;
  }

  if (v8 < a4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 <= a5)
  {
    return sub_1B0CB4CAC(a1, a2, a3, a4, a4 + a2, a6, a7, v8);
  }

LABEL_23:
  __break(1u);
  return a1;
}

unint64_t sub_1B0CB4CAC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  if (a3)
  {
    a8 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      a8 = a1 & 0xFFFFF800;
      v15 = 55296;
      if (a8 == 55296)
      {
        __break(1u);
LABEL_55:
        v27 = (v15 | (a1 >> 6) & 0x3F) << 8;
        v28 = (a1 >> 18) + ((v27 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v29 = (a1 >> 12) + v27 + 8487393;
        if (a8)
        {
          v16 = v28;
        }

        else
        {
          v16 = v29;
        }

LABEL_26:
        v17 = 4 - (__clz(v16) >> 3);
        v30 = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * v17));
        v18 = &v30;
        v19 = &v30 | v17;
        a8 = a7 - a6;
        if (a6)
        {
          v20 = a7 - a6;
        }

        else
        {
          v20 = 0;
        }

        v21 = a4;
        while (1)
        {
          if (v21 == a5)
          {
            v22 = 0;
            v23 = a5;
            if (v19 != v18)
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v21 < a4 || v21 >= a5)
            {
              goto LABEL_47;
            }

            if (v21 < 0 || v21 >= v20)
            {
              goto LABEL_48;
            }

            v23 = v21 + 1;
            v22 = *(a6 + v21) | 0x20;
            if (v19 != v18)
            {
LABEL_32:
              v25 = (v18 + 1);
              v24 = *v18;
              if (v21 == a5)
              {
                return v19 == v18;
              }

              goto LABEL_40;
            }
          }

          v24 = 0;
          v25 = v18;
          if (v21 == a5)
          {
            return v19 == v18;
          }

LABEL_40:
          a8 = 0;
          if (v19 != v18)
          {
            v18 = v25;
            v21 = v23;
            if (v22 == v24)
            {
              continue;
            }
          }

          return a8;
        }
      }

      a8 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v16 = a1 + 1;
          goto LABEL_26;
        }

        goto LABEL_52;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      v15 = (a1 & 0x3F) << 8;
      if (a1 < 0x800)
      {
        v16 = (a1 >> 6) + v15 + 33217;
        goto LABEL_26;
      }

      goto LABEL_55;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!a1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v8 = a1 + a2;
  a8 = a7 - a6;
  if (a6)
  {
    v9 = a7 - a6;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  do
  {
    if (v10 == a5)
    {
      v11 = 0;
      v12 = a5;
      goto LABEL_14;
    }

    if (v10 < a4 || v10 >= a5)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v10 < 0 || v10 >= v9)
    {
      goto LABEL_46;
    }

    v12 = v10 + 1;
    v11 = *(a6 + v10) | 0x20;
LABEL_14:
    a8 = v8 == a1;
    if (v8 == a1)
    {
      v13 = 0;
      v14 = a1;
      if (v10 == a5)
      {
        return a8;
      }
    }

    else
    {
      v14 = a1 + 1;
      v13 = *a1;
      if (v10 == a5)
      {
        return a8;
      }
    }

    a8 = 0;
    if (v8 == a1)
    {
      break;
    }

    a1 = v14;
    v10 = v12;
  }

  while (v11 == v13);
  return a8;
}

uint64_t sub_1B0CB4F08(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3(0);
    if (v5)
    {
      return v5 + v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0CB4F5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == a2)
  {
LABEL_2:
    if (result == a2)
    {
      return result;
    }

    v4 = a4 - a3;
    if (!a3)
    {
      v4 = 0;
    }

    while (1)
    {
      v5 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
        break;
      }

      if (v5 >= a2 || v5 < result || v5 < 0 || v5 >= v4)
      {
        goto LABEL_30;
      }

      v6 = *(a3 + v5);
      if (v6 == 32 || v6 == 9)
      {
        --a2;
        if (result != v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    if (a2 <= result)
    {
      v8 = result;
    }

    else
    {
      v8 = a2;
    }

    while (v8 != result)
    {
      v9 = *(a3 + result);
      if (v9 != 32 && v9 != 9)
      {
        goto LABEL_2;
      }

      if (a2 == ++result)
      {
        return a2;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB5000(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a4 - a3;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < 0)
  {
    goto LABEL_44;
  }

  v8 = 0;
  if (!v7)
  {
LABEL_33:
    if (result)
    {
      v16 = v8 + result;
    }

    else
    {
      v16 = 0;
    }

    if (result)
    {
      v17 = v8;
    }

    else
    {
      v17 = 0;
    }

    return sub_1B0CAE440(0, v17, result, v16, a5, a6, a7);
  }

  v9 = 0;
  while (1)
  {
    if (v7 < v9 + 1)
    {
      goto LABEL_42;
    }

    v10 = *(a3 + v9);
    if (v10 == 37)
    {
      break;
    }

    ++v9;
LABEL_30:
    *(result + v8) = v10;
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_43;
    }

    if (v9 == v7)
    {
      goto LABEL_32;
    }
  }

  if (v9 + 1 == v7)
  {
LABEL_32:
    if (v8 < 0)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  v9 += 3;
  while (v7 >= v9 - 1)
  {
    if (v9 - v7 == 1)
    {
      goto LABEL_32;
    }

    if (v7 < v9)
    {
      goto LABEL_41;
    }

    v11 = *(a3 + v9 - 2);
    v12 = *(a3 + v9 - 1);
    if ((v11 - 58) > 0xF5u)
    {
      v13 = -48;
    }

    else if ((v11 - 71) > 0xF9u)
    {
      v13 = -55;
    }

    else
    {
      if ((v11 - 103) <= 0xF9u)
      {
        goto LABEL_23;
      }

      v13 = -87;
    }

    if ((v12 - 58) > 0xF5u)
    {
      v14 = -48;
LABEL_29:
      LOBYTE(v10) = (v12 + v14) | (16 * (v11 + v13));
      goto LABEL_30;
    }

    if ((v12 - 71) > 0xF9u)
    {
      v14 = -55;
      goto LABEL_29;
    }

    if ((v12 - 103) >= 0xFAu)
    {
      v14 = -87;
      goto LABEL_29;
    }

LABEL_23:
    v9 += 2;
    if (v9 - v7 == 2)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB518C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned __int8 *a4@<X4>, unsigned __int8 *a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, void *a9, uint64_t a10)
{
  v12 = sub_1B0CB5490(a1, a2, a3, a4, a5, a6 & 1, a7, a9, a10);

  if (!v10)
  {
    *a8 = v12 & 1;
  }

  return result;
}

uint64_t sub_1B0CB521C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
LABEL_90:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v7 = result;
    result = 0;
    while (1)
    {
      if (result != v4)
      {
        if (v4 <= result)
        {
          v8 = result;
        }

        else
        {
          v8 = v4;
        }

        v9 = result;
        while (v8 != v9)
        {
          v10 = *(v7 + v9);
          if (v10 == 13 || v10 == 10)
          {
            v12 = 0;
            if (v9 < result)
            {
              goto LABEL_81;
            }

            goto LABEL_22;
          }

          if (v4 == ++v9)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_78;
      }

LABEL_19:
      v12 = 1;
      v9 = v4;
      if (v4 < result)
      {
        goto LABEL_81;
      }

LABEL_22:
      if (v4 < v9)
      {
        goto LABEL_82;
      }

      if (result == v9)
      {
        v13 = 0;
      }

      else
      {
        v14 = v9 - 1;
        if (__OFSUB__(v9, 1))
        {
          goto LABEL_87;
        }

        if (v14 >= v9 || v14 >= v4 || v14 < result)
        {
          goto LABEL_88;
        }

        v15 = *(v7 + v14);
        v13 = v15 == 32 || v15 == 9;
      }

      v17 = sub_1B0C772B0(result, v9, v7, a2, a4 & 1);
      MEMORY[0x1B2726E80](v17);

      v18 = v9;
      if ((v12 & 1) == 0)
      {
        while (1)
        {
          if (v4 == v18)
          {
            __break(1u);
            goto LABEL_77;
          }

          v19 = *(v7 + v18);
          if (v19 != 13 && v19 != 10)
          {
            break;
          }

          if (v4 == ++v18)
          {
            v18 = v4;
            break;
          }
        }

        v21 = v18 < v9;
        v9 = v18;
        if (v21)
        {
          goto LABEL_80;
        }
      }

      if (v4 < v9)
      {
        goto LABEL_83;
      }

      if (v13)
      {
        break;
      }

      result = v4;
      v24 = v9;
      if (v9 != v4)
      {
        while (1)
        {
          if (v4 == v24)
          {
            goto LABEL_79;
          }

          v25 = *(v7 + v24);
          if (v25 != 32 && v25 != 9)
          {
            break;
          }

          if (v4 == ++v24)
          {
            result = v4;
            if (v4 < v9)
            {
              goto LABEL_86;
            }

            goto LABEL_70;
          }
        }

        result = v24;
        if (v24 < v9)
        {
          goto LABEL_86;
        }

LABEL_70:
        if (v4 < result)
        {
          goto LABEL_89;
        }
      }

      if (v9 < result)
      {
        v21 = result-- < 1;
        if (v21)
        {
          __break(1u);
          return result;
        }
      }

LABEL_7:
      if (result == v4)
      {
        return result;
      }
    }

    result = v9;
    if (v9 == v4)
    {
      return result;
    }

    while (v4 != result)
    {
      v22 = *(v7 + result);
      if (v22 != 32 && v22 != 9)
      {
        goto LABEL_56;
      }

      if (v4 == ++result)
      {
        result = v4;
LABEL_56:
        if (result < v9)
        {
          goto LABEL_84;
        }

        if (v4 >= result)
        {
          goto LABEL_7;
        }

        goto LABEL_85;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  return result;
}

uint64_t sub_1B0CB5490(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, char a6, uint64_t a7, void *a8, uint64_t a9)
{
  if (a2)
  {
    v9 = a3 - a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9 < 0)
  {
    goto LABEL_40;
  }

  v14 = 0;
  if (!v9)
  {
LABEL_33:
    v22 = v14 + result;
    if (!result)
    {
      v22 = 0;
      v14 = 0;
    }

    v24[0] = 0;
    v24[1] = v14;
    v24[2] = result;
    v24[3] = v22;
    v25 = 0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v23 = sub_1B0CAF08C(v24, a4, a5, a6 & 1, a8, a9);

    return v23 & 1;
  }

  v15 = 0;
  while (1)
  {
    if (v9 < v15 + 1)
    {
      goto LABEL_38;
    }

    v16 = *(a2 + v15);
    if (v16 == 37)
    {
      break;
    }

    ++v15;
LABEL_30:
    *(result + v14) = v16;
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_39;
    }

    if (v15 == v9)
    {
      goto LABEL_32;
    }
  }

  if (v15 + 1 == v9)
  {
LABEL_32:
    if (v14 < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v15 += 3;
  while (v9 >= v15 - 1)
  {
    if (v15 - v9 == 1)
    {
      goto LABEL_32;
    }

    if (v9 < v15)
    {
      goto LABEL_37;
    }

    v17 = *(a2 + v15 - 2);
    v18 = *(a2 + v15 - 1);
    if ((v17 - 58) > 0xF5u)
    {
      v19 = -48;
    }

    else if ((v17 - 71) > 0xF9u)
    {
      v19 = -55;
    }

    else
    {
      if ((v17 - 103) <= 0xF9u)
      {
        goto LABEL_23;
      }

      v19 = -87;
    }

    if ((v18 - 58) > 0xF5u)
    {
      v20 = -48;
LABEL_29:
      LOBYTE(v16) = (v18 + v20) | (16 * (v17 + v19));
      goto LABEL_30;
    }

    if ((v18 - 71) > 0xF9u)
    {
      v20 = -55;
      goto LABEL_29;
    }

    if ((v18 - 103) >= 0xFAu)
    {
      v20 = -87;
      goto LABEL_29;
    }

LABEL_23:
    v15 += 2;
    if (v15 - v9 == 2)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB569C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, char a5, uint64_t a6, void *a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = a8;
  if (!a1)
  {
    swift_bridgeObjectRetain_n();
    isStackAllocationSafe = swift_retain_n();
LABEL_8:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v22 = v26 - v21;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v23 = v22;
    v24 = v26[1];
    v20 = sub_1B0CB5490(v23, a1, a2, a3, a4, a5 & 1, a6, a7, v27);

    if (!v24)
    {

      goto LABEL_12;
    }

    swift_willThrow();
LABEL_10:
  }

  v16 = a2 - a1;
  if (a2 - a1 < 0)
  {
    __break(1u);
  }

  v17 = v8;
  swift_bridgeObjectRetain_n();
  isStackAllocationSafe = swift_retain_n();
  if (v16 < 1025)
  {
    goto LABEL_8;
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_8;
  }

  v19 = swift_slowAlloc();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0CB518C(v19, a1, a2, a3, a4, a5 & 1, a6, &v28, a7, v27);
  MEMORY[0x1B272C230](v19, -1, -1);
  if (v17)
  {
    goto LABEL_10;
  }

  v20 = v28;
LABEL_12:

  return v20 & 1;
}

uint64_t sub_1B0CB5900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1B0E46D98();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  v11 = sub_1B0433338(a1, a2, a3, a4);
  result = MEMORY[0x1B2726D20](v11);
  v13 = 0;
  LODWORD(v14) = 0;
  v15 = 0;
  v16 = a4 - a3;
  if (!a3)
  {
    v16 = 0;
  }

  v36 = a3;
  v37 = v16;
  v17 = (v8 + 8);
  v31 = 8 * a2;
  v34 = xmmword_1B0EE0600;
  v33 = xmmword_1B0EE0610;
  v32 = xmmword_1B0EE0620;
  v18 = a1;
  v19 = a1;
  while (1)
  {
    while (1)
    {
      v20 = v13;
      v40 = v14;
      v41 = v15;
      if (!v15)
      {
        break;
      }

      if ((v14 & 0x80) == 0)
      {
        sub_1B0CB1F34();
        v29 = sub_1B0C14AB0();
        sub_1B0CB1F88(0);
        (v29)(&v38, 0);
        goto LABEL_53;
      }

LABEL_13:
      if (v19 == a2)
      {
        v19 = a2;
        goto LABEL_49;
      }

      if (v19 < v18 || v19 >= a2)
      {
        goto LABEL_71;
      }

      if (v19 < 0 || v19 >= v37)
      {
        goto LABEL_72;
      }

      v22 = v19 + 1;
      LODWORD(v14) = (*(v36 + v19) << v15) | ((-255 << v15) - 1) & v14;
      v23 = v15 + 8;
      if ((v15 + 8) > 0x1Fu)
      {
LABEL_47:
        v15 = v23;
LABEL_48:
        v19 = v22;
        goto LABEL_49;
      }

      if (v22 != a2)
      {
        if (v19 < v18 || v22 >= a2)
        {
          goto LABEL_71;
        }

        if (v19 < 0 || v22 >= v37)
        {
          goto LABEL_72;
        }

        v24 = *(v36 + v22);
        v22 = v19 + 2;
        LODWORD(v14) = (v24 << v23) | ((-255 << v23) - 1) & v14;
        v23 = v15 + 16;
        if ((v15 + 16) > 0x1Fu)
        {
          goto LABEL_47;
        }

        if (v22 != a2)
        {
          if (v19 < v18 || v22 >= a2)
          {
            goto LABEL_71;
          }

          if (v19 < 0 || v22 >= v37)
          {
            goto LABEL_72;
          }

          v25 = *(v36 + v22);
          v22 = v19 + 3;
          LODWORD(v14) = (v25 << v23) | ((-255 << v23) - 1) & v14;
          v23 = v15 + 24;
          if ((v15 + 24) > 0x1Fu)
          {
            goto LABEL_47;
          }

          if (v22 != a2)
          {
            if (v19 < v18 || v22 >= a2)
            {
              goto LABEL_71;
            }

            if (v19 < 0 || v22 >= v37)
            {
              goto LABEL_72;
            }

            v26 = *(v36 + v22);
            v22 = v19 + 4;
            LODWORD(v14) = (v26 << v23) | ((-255 << v23) - 1) & v14;
            if (v15 < 0xE0u)
            {
              v15 += 32;
              goto LABEL_48;
            }

            if (v22 != a2)
            {
              if (v19 < v18 || v22 >= a2)
              {
                goto LABEL_71;
              }

              if (v19 < 0 || v22 >= v37)
              {
                goto LABEL_72;
              }

              LODWORD(v14) = (*(v36 + v22) << v15) | ((-255 << v15) - 1) & v14;
              if ((v15 + 40) >= 0x20u)
              {
                v19 += 5;
                v15 += 40;
                goto LABEL_49;
              }
            }
          }
        }
      }

      v15 = v31 + v15 - 8 * v19;
      v19 = a2;
      if (!v15)
      {
        return v42;
      }

LABEL_49:
      if ((v14 & 0xC0E0) == 0x80C0)
      {
        if ((v14 & 0x1E) != 0)
        {
          v27 = 16;
LABEL_52:
          v40 = v14 >> v27;
          v41 = v15 - v27;
          goto LABEL_53;
        }
      }

      else if ((v14 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v14 & 0x200F) != 0 && (v14 & 0x200F) != 0x200D)
        {
          v27 = 24;
          goto LABEL_52;
        }
      }

      else if ((v14 & 0xC0C0C0F8) == 0x808080F0 && (v14 & 0x3007) != 0 && __rev16(v14 & 0x3007) <= 0x400)
      {
        v27 = 32;
        goto LABEL_52;
      }

      result = sub_1B0E46D58();
      v13 = 0;
      v14 = v14 >> ((8 * result) & 0x38);
      v15 -= 8 * result;
    }

    if (v19 == a2)
    {
      return v42;
    }

    if (v19 < v18 || v19 >= a2)
    {
      break;
    }

    if (v19 < 0 || v19 >= v37)
    {
      goto LABEL_70;
    }

    v21 = *(v36 + v19++);
    if ((v21 & 0x80) != 0)
    {
      LODWORD(v14) = v14 & 0xFFFFFF00 | v21;
      v15 = 8;
      goto LABEL_13;
    }

LABEL_53:
    LODWORD(v14) = v40;
    v15 = v41;
    sub_1B0E46DA8();
    v28 = sub_1B0E46D88();
    result = (*v17)(v10, v35);
    if (v28)
    {
      v13 = 1;
      if ((v20 & 1) == 0)
      {
        result = MEMORY[0x1B2726E80](32, 0xE100000000000000);
        v13 = 1;
      }
    }

    else
    {
      v38 = v42;
      v39 = v43;
      result = sub_1B0E44C58();
      v13 = 0;
      v42 = v38;
      v43 = v39;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1B0CB5F18()
{
  v1 = v0[1] >> 14;
  if (v1 == *v0 >> 14)
  {
    return 0;
  }

  v3 = sub_1B0E45E18();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0E45DD8();

  if (v1 < v4 >> 14)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1B0E45E28();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    *v0 = v5;
    v0[1] = v7;
    v0[2] = v9;
    v0[3] = v11;
    return v3;
  }

  return result;
}

unint64_t sub_1B0CB6010()
{
  v14 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CB5F18();

  v1 = v0[1] >> 14;
  if (v1 == *v0 >> 14)
  {
    goto LABEL_9;
  }

  while (sub_1B0E45E18() != 93 || v2 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_8;
    }

    if (v1 == sub_1B0E45DD8() >> 14)
    {
      goto LABEL_9;
    }
  }

LABEL_8:
  v4 = sub_1B0E45DD8() >> 14;
  if (v1 < v4)
  {
LABEL_9:

    return 0;
  }

  else
  {
    v6 = sub_1B0E45E28();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    *v0 = v6;
    v0[1] = v8;
    result = v14;
    v0[2] = v10;
    v0[3] = v12;
    if (v4 >= v14 >> 14)
    {
      v13 = sub_1B0E45E28();

      return v13;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1B0CB61E0()
{
  v2 = *v0;
  v1 = v0[1];
  if ((v1 ^ *v0) < 0x4000)
  {
    return;
  }

  v4 = v0[2];
  v3 = v0[3];
  if (sub_1B0E45E18() == 91 && v5 == 0xE100000000000000)
  {
  }

  else
  {
    v7 = sub_1B0E46A78();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  v28 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CB5F18();

  v9 = *v0;
  v8 = v0[1];
  if ((v8 ^ *v0) < 0x4000)
  {
LABEL_36:

    *v0 = v2;
    v0[1] = v1;
    v0[2] = v28;
    v0[3] = v3;
    return;
  }

  v26 = v2;
  v27 = v1;
  v10 = 0;
  while (v8 >> 14 != v9 >> 14)
  {
    v11 = sub_1B0E45E18();
    v13 = v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = sub_1B0E45DD8();

    if (v8 >> 14 < v14 >> 14)
    {
      goto LABEL_44;
    }

    v9 = sub_1B0E45E28();
    v8 = v15;
    v17 = v16;
    v19 = v18;

    v20 = v19;
    if (v11 == 2573 && v13 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      goto LABEL_41;
    }

    if ((v13 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v21 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
      goto LABEL_45;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v22 = sub_1B0E44C18();
    }

    else
    {
      v22 = sub_1B0E46278() << 16;
    }

    if (v22 >> 14 != 4 * v21)
    {
      goto LABEL_34;
    }

    v23 = sub_1B0C04CF0(v11, v13);
    if ((v23 & 0x100000000) != 0)
    {
      goto LABEL_47;
    }

    if ((v23 & 0xFFFFFF80) != 0)
    {
LABEL_34:

LABEL_35:
      *v0 = v9;
      v0[1] = v8;
      v0[2] = v17;
      v0[3] = v20;
      v1 = v27;
      v2 = v26;
      goto LABEL_36;
    }

    v24 = sub_1B0C04CF0(v11, v13);
    if ((v24 & 0x100000000) != 0)
    {
      goto LABEL_48;
    }

    v25 = v24;

    if ((v25 & 0xFFFFFF00) != 0)
    {
      goto LABEL_46;
    }

    if (v25 == 93)
    {
      *v0 = v9;
      v0[1] = v8;
      v0[2] = v17;
      v0[3] = v20;
      if (v10)
      {

        return;
      }

LABEL_41:

      *v0 = v26;
      v0[1] = v27;
      v0[2] = v28;
      v0[3] = v3;
      return;
    }

    if (v25 <= 0x2Fu || v25 >= 0x40u)
    {
      goto LABEL_41;
    }

    v10 = 1;
    if ((v9 ^ v8) < 0x4000)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1B0CB64FC()
{
  v0 = sub_1B0E431A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DB940);
  __swift_project_value_buffer(v0, qword_1EB6DB940);
  return sub_1B0E43168();
}

unint64_t sub_1B0CB6568(uint64_t a1, unint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C40, &qword_1B0EA4010);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v134 - v3;
  v5 = sub_1B0E44EE8();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = 0;
  v151 = v5;
  v152 = v7;
  v13 = &unk_1F2722D80;
  v14 = 1;
  v153 = v9;
  v154 = v11;
  v15 = MEMORY[0x1E69E7CC0];
  v141 = v4;
LABEL_2:
  while (2)
  {
    v135 = v15;
    v16 = v12;
    v12 = v14;
    v136 = v16;
LABEL_3:
    while (2)
    {
      v17 = v151;
      v18 = v152;
      v20 = v153;
      v19 = v154;
      while (1)
      {
        v21 = v18 >> 14;
        v143 = v17 >> 14;
        if (v17 >> 14 == v18 >> 14)
        {
          v21 = v17 >> 14;
          goto LABEL_9;
        }

        sub_1B0E45E18();
        v22 = sub_1B0E44808();

        if ((v22 & 1) == 0)
        {
          break;
        }

        sub_1B0E45E18();

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v23 = sub_1B0E45DD8();

        if (v21 < v23 >> 14)
        {
LABEL_90:
          __break(1u);
LABEL_91:
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
          return result;
        }

        v17 = sub_1B0E45E28();
        v18 = v25;
        v20 = v26;
        v28 = v27;

        v19 = v28;
        v151 = v17;
        v152 = v18;
        v153 = v20;
        v154 = v28;
      }

      if (sub_1B0E45E18() != 91 || v57 != 0xE100000000000000)
      {
        v59 = sub_1B0E46A78();

        if (v59)
        {
          goto LABEL_34;
        }

LABEL_9:
        v139 = v19;
        v140 = v21;
        HIDWORD(v134) = v12;
        v29 = 36;
        v144 = v20;
        v142 = v18;
        do
        {
          v31 = *(v13 - 1);
          v30 = *v13;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0E44CF8();
          result = sub_1B0E45DF8();
          if (v32)
          {
          }

          else
          {
            v33 = result >> 14;
            if (result >> 14 < v143)
            {
              __break(1u);
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            v147 = v17;
            v148 = v18;
            v149 = v20;
            v150 = v19;
            v145 = v31;
            v146 = v30;
            v34 = qword_1EB6DB938;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v35 = v19;
            if (v34 != -1)
            {
              swift_once();
            }

            v36 = sub_1B0E431A8();
            v37 = __swift_project_value_buffer(v36, qword_1EB6DB940);
            v38 = *(v36 - 8);
            v39 = v141;
            (*(v38 + 16))(v141, v37, v36);
            (*(v38 + 56))(v39, 0, 1, v36);
            sub_1B0A6F53C();
            sub_1B07C7F5C();
            v40 = sub_1B0E45F48();
            sub_1B0A6F494(v39);

            v19 = v35;
            v20 = v144;
            v18 = v142;
            if (!v40)
            {
              if (v140 < v33)
              {
                goto LABEL_91;
              }

              v147 = sub_1B0E45E28();
              v148 = v41;
              v149 = v42;
              v150 = v43;
              sub_1B0CB61E0();
              v44 = v148 >> 14;
              if (v148 >> 14 != v147 >> 14)
              {
                v137 = sub_1B0E45E18();
                v138 = v45;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v46 = sub_1B0E45DD8();

                if (v44 < v46 >> 14)
                {
                  goto LABEL_95;
                }

                v47 = sub_1B0E45E28();
                v49 = v48;
                v51 = v50;
                v53 = v52;

                v147 = v47;
                v148 = v49;
                v149 = v51;
                v150 = v53;
                v54 = v137;
                v55 = v138;
                if (v137 == 58 && v138 == 0xE100000000000000 || (sub_1B0E46A78() & 1) != 0 || v54 == 10140911 && v55 == 0xA300000000000000)
                {
                  v64 = v51;

LABEL_38:

                  v151 = v47;
                  v152 = v49;
                  v16 = v136;
                  v12 = v136;
                  v153 = v64;
                  v154 = v53;
                  v13 = &unk_1F2722D80;
                  goto LABEL_3;
                }

                v56 = sub_1B0E46A78();

                if (v56)
                {
                  v64 = v51;
                  goto LABEL_38;
                }
              }

              v19 = v139;
              v20 = v144;
            }
          }

          v13 += 2;
          --v29;
        }

        while (v29);
        v79 = &unk_1F2722FE0;
        v80 = 32;
        while (1)
        {
          v82 = *(v79 - 1);
          v81 = *v79;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0E44CF8();
          result = sub_1B0E45DF8();
          if (v83)
          {
          }

          else
          {
            v84 = result >> 14;
            if (result >> 14 < v143)
            {
              goto LABEL_89;
            }

            v147 = v17;
            v148 = v18;
            v149 = v20;
            v150 = v19;
            v145 = v82;
            v146 = v81;
            v85 = qword_1EB6DB938;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v86 = v19;
            if (v85 != -1)
            {
              swift_once();
            }

            v87 = sub_1B0E431A8();
            v88 = __swift_project_value_buffer(v87, qword_1EB6DB940);
            v89 = *(v87 - 8);
            v90 = v141;
            (*(v89 + 16))(v141, v88, v87);
            (*(v89 + 56))(v90, 0, 1, v87);
            sub_1B0A6F53C();
            sub_1B07C7F5C();
            v91 = sub_1B0E45F48();
            sub_1B0A6F494(v90);

            v19 = v86;
            v20 = v144;
            v18 = v142;
            if (!v91)
            {
              if (v140 < v84)
              {
                goto LABEL_94;
              }

              v147 = sub_1B0E45E28();
              v148 = v92;
              v149 = v93;
              v150 = v94;
              sub_1B0CB61E0();
              v95 = v148 >> 14;
              if (v148 >> 14 != v147 >> 14)
              {
                v137 = sub_1B0E45E18();
                v138 = v96;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v97 = sub_1B0E45DD8();

                if (v95 < v97 >> 14)
                {
                  goto LABEL_96;
                }

                v98 = sub_1B0E45E28();
                v100 = v99;
                v102 = v101;
                v104 = v103;

                v147 = v98;
                v148 = v100;
                v149 = v102;
                v150 = v104;
                v106 = v137;
                v105 = v138;
                if (v137 == 58 && v138 == 0xE100000000000000 || (sub_1B0E46A78() & 1) != 0 || v106 == 10140911 && v105 == 0xA300000000000000)
                {

                  goto LABEL_67;
                }

                v107 = v104;
                v108 = sub_1B0E46A78();

                if (v108)
                {

                  v104 = v107;
LABEL_67:
                  v151 = v98;
                  v152 = v100;
                  v12 = HIDWORD(v134);
                  v14 = HIDWORD(v134);
                  v153 = v102;
                  v154 = v104;
                  v15 = v135;
                  v13 = &unk_1F2722D80;
                  goto LABEL_2;
                }
              }

              v19 = v139;
              v20 = v144;
            }
          }

          v79 += 2;
          if (!--v80)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_34:
      v60 = sub_1B0CB6010();
      if (v63 == 1)
      {
        sub_1B0CB7330(v60, v61, v62, 1uLL);
        v12 = v16;
        continue;
      }

      break;
    }

    if (!v63)
    {
      sub_1B0CB7330(v60, v61, v62, 0);
      v14 = v12;
      v15 = v135;
      continue;
    }

    break;
  }

  if (v63 != 2)
  {
    v65 = v13;
    v66 = v60;
    v67 = v61;
    v68 = v62;
    v69 = v63;
    sub_1B0CB7354(v60, v61, v62, v63);
    v70 = v135;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_1B0C81648(0, *(v70 + 2) + 1, 1, v70);
    }

    v72 = *(v70 + 2);
    v71 = *(v70 + 3);
    if (v72 >= v71 >> 1)
    {
      v78 = sub_1B0C81648((v71 > 1), v72 + 1, 1, v70);
      v76 = v69;
      v74 = v67;
      v73 = v68;
      v70 = v78;
      v75 = v66;
    }

    else
    {
      v73 = v68;
      v74 = v67;
      v75 = v66;
      v76 = v69;
    }

    *(v70 + 2) = v72 + 1;
    v135 = v70;
    v77 = &v70[32 * v72];
    *(v77 + 4) = v75;
    *(v77 + 5) = v74;
    *(v77 + 6) = v73;
    *(v77 + 7) = v76;
    sub_1B0CB7330(v75, v74, v73, v76);
    v16 = v136;
    v13 = v65;
    v12 = v136;
    goto LABEL_3;
  }

LABEL_69:
  v109 = v151;
  v110 = v152;
  v111 = v153;
  v112 = v154;
  while (1)
  {
    v113 = v109 >> 14;
    v114 = v110 >> 14;
    if (v109 >> 14 == v110 >> 14)
    {
      break;
    }

    sub_1B0E45E18();
    v115 = sub_1B0E44808();

    if ((v115 & 1) == 0)
    {
      v113 = v109 >> 14;
      v114 = v110 >> 14;
      break;
    }

    sub_1B0E45E18();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v116 = sub_1B0E45DD8();

    if (v114 < v116 >> 14)
    {
      goto LABEL_92;
    }

    v109 = sub_1B0E45E28();
    v110 = v117;
    v111 = v118;
    v120 = v119;

    v112 = v120;
    v151 = v109;
    v152 = v110;
    v153 = v111;
    v154 = v120;
  }

  v121 = v135;
  if (v113 != v114)
  {
    while (1)
    {
      sub_1B0E45DE8();
      sub_1B0E45E18();
      v123 = sub_1B0E44808();

      if ((v123 & 1) == 0)
      {
        break;
      }

      sub_1B0E45DE8();
      sub_1B0E45E18();
      result = sub_1B0E45DE8();
      if (v113 > result >> 14)
      {
        goto LABEL_93;
      }

      v109 = sub_1B0E45E28();
      v110 = v124;
      v111 = v125;
      v122 = v126;

      v113 = v109 >> 14;
      v112 = v122;
      if (v109 >> 14 == v110 >> 14)
      {
        goto LABEL_80;
      }
    }
  }

  v122 = v112;
LABEL_80:
  v127 = MEMORY[0x1B2726D00](v109, v110, v111, v122);
  v129 = v128;

  if (*(v121 + 16))
  {
    v130 = HIBYTE(v129) & 0xF;
    if ((v129 & 0x2000000000000000) == 0)
    {
      v130 = v127 & 0xFFFFFFFFFFFFLL;
    }

    if (v130)
    {
      v147 = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C08, &unk_1B0E9FC00);
      sub_1B0CB72CC();
      sub_1B0A6F53C();
      v131 = sub_1B0E450B8();
      v133 = v132;

      v147 = v131;
      v148 = v133;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](32, 0xE100000000000000);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](v127, v129);

      return v147;
    }

    else
    {

      v147 = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C08, &unk_1B0E9FC00);
      sub_1B0CB72CC();
      sub_1B0A6F53C();
      v127 = sub_1B0E450B8();
    }
  }

  else
  {
  }

  return v127;
}

unint64_t sub_1B0CB72CC()
{
  result = qword_1EB6E6080;
  if (!qword_1EB6E6080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2C08, &unk_1B0E9FC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6080);
  }

  return result;
}

uint64_t sub_1B0CB7330(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 != 2)
  {
    return sub_1B0CB7340(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1B0CB7340(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
  }

  return result;
}

double sub_1B0CB7354(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0CB7368@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2 - result;
  if (!result)
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = v4;
    *(a4 + 16) = result;
    *(a4 + 24) = a2;
    *(a4 + 32) = 0;
    *(a4 + 40) = v4;
    *(a4 + 48) = result;
    *(a4 + 56) = a2;
    *(a4 + 64) = a3;
  }

  return result;
}

unint64_t sub_1B0CB7394(char a1)
{
  result = 0x6275732D6F747561;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 6513506;
      break;
    case 3:
      result = 25443;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x2D746E65746E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x2D746E65746E6F63;
      break;
    case 10:
      result = 1702125924;
      break;
    case 11:
      result = 1836020326;
      break;
    case 12:
      result = 0x64692D7473696CLL;
      break;
    case 13:
      result = 0x2D6567617373656DLL;
      break;
    case 14:
      result = 0x7265762D656D696DLL;
      break;
    case 15:
      result = 0x69726F6972702D78;
      break;
    case 16:
      result = 0x6465766965636572;
      break;
    case 17:
      result = 0x702D6E7275746572;
      break;
    case 18:
      result = 0x7463656A627573;
      break;
    case 19:
      result = 28532;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1B0CB75A8()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0CB7394(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CB760C(uint64_t a1)
{
  sub_1B0CB7394(*v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0CB7660(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  sub_1B0CB7394(v2);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

unint64_t sub_1B0CB76C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0CB84CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1B0CB76F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B0CB7394(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B0CB771C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1B0CB7394(*a1);
  v5 = v4;
  if (v3 == sub_1B0CB7394(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B0E46A78();
  }

  return v8 & 1;
}

uint64_t sub_1B0CB77A4(char *a1, char *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = (a3 + 32);
    v6 = a2 - a1;
    do
    {
      v11 = *v5++;
      v10 = v11;
      v12 = 0xEE0064657474696DLL;
      v13 = 0x6275732D6F747561;
      switch(v11)
      {
        case 1u:
          break;
        case 2u:
          v12 = 0xE300000000000000;
          v13 = 6513506;
          break;
        case 3u:
          v12 = 0xE200000000000000;
          v13 = 25443;
          break;
        case 4u:
          v13 = 0xD000000000000013;
          v12 = 0x80000001B0F2E4C0;
          break;
        case 5u:
          v13 = 0xD000000000000013;
          v12 = 0x80000001B0F2E4E0;
          break;
        case 6u:
          v13 = 0x2D746E65746E6F63;
          goto LABEL_21;
        case 7u:
          v13 = 0xD000000000000010;
          v12 = 0x80000001B0F2E500;
          break;
        case 8u:
          v13 = 0xD000000000000019;
          v12 = 0x80000001B0F2E520;
          break;
        case 9u:
          v13 = 0x2D746E65746E6F63;
          v12 = 0xEC00000065707974;
          break;
        case 0xAu:
          v12 = 0xE400000000000000;
          v13 = 1702125924;
          break;
        case 0xBu:
          v12 = 0xE400000000000000;
          v13 = 1836020326;
          break;
        case 0xCu:
          v12 = 0xE700000000000000;
          v13 = 0x64692D7473696CLL;
          break;
        case 0xDu:
          v13 = 0x2D6567617373656DLL;
LABEL_21:
          v12 = 0xEA00000000006469;
          break;
        case 0xEu:
          v13 = 0x7265762D656D696DLL;
          v12 = 0xEC0000006E6F6973;
          break;
        case 0xFu:
          v12 = 0xEA00000000007974;
          v13 = 0x69726F6972702D78;
          break;
        case 0x10u:
          v12 = 0xE800000000000000;
          v13 = 0x6465766965636572;
          break;
        case 0x11u:
          v13 = 0x702D6E7275746572;
          v12 = 0xEB00000000687461;
          break;
        case 0x12u:
          v12 = 0xE700000000000000;
          v13 = 0x7463656A627573;
          break;
        case 0x13u:
          v12 = 0xE200000000000000;
          v13 = 28532;
          break;
        default:
          v13 = 0xD000000000000016;
          v12 = 0x80000001B0F2E490;
          break;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v14 = sub_1B0E44DC8();

        if (a1)
        {
          goto LABEL_31;
        }
      }

      else
      {

        if ((v12 & 0x2000000000000000) != 0)
        {
          v14 = HIBYTE(v12) & 0xF;
        }

        else
        {
          v14 = v13 & 0x7F7F7F7F7F7FLL;
        }

        if (a1)
        {
LABEL_31:
          if (v14 == v6)
          {
            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }

      if (!v14)
      {
LABEL_3:
        v7 = sub_1B0CB7394(v10);
        v9 = sub_1B0CADCDC(v7, v8, a1, a2, sub_1B0C95118);

        if (v9)
        {
          return v10;
        }
      }

LABEL_4:
      --v3;
    }

    while (v3);
  }

  return 20;
}

uint64_t sub_1B0CB7AEC(char *a1, char *a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  v8 = v4 == 120 && v5 == 45;
  v9 = v8;
  if (v8 && v6 == 97 && v7 == 112)
  {
    v10 = a1;
    v11 = a2;
    v12 = 0;
LABEL_61:
    result = sub_1B0C7BFF8(v10, v11, v12);
LABEL_62:
    if (result != 20)
    {
      return result;
    }

    return 20;
  }

  if (v4 <= 0x63u)
  {
    switch(v4)
    {
      case 'a':
        if (v5 == 117 && v6 == 116 && v7 == 111)
        {
          v10 = a1;
          v11 = a2;
          v12 = 1;
          goto LABEL_61;
        }

        break;
      case 'b':
        if (v5 == 99 && v6 == 99 && !v7)
        {
          v10 = a1;
          v11 = a2;
          v12 = 2;
          goto LABEL_61;
        }

        break;
      case 'c':
        if (v5 == 111)
        {
          if (v6 == 110 && v7 == 116)
          {
            result = sub_1B0CB77A4(a1, a2, &unk_1F27225D8);
            goto LABEL_62;
          }
        }

        else if (v5 == 99 && !(v6 | v7))
        {
          v10 = a1;
          v11 = a2;
          v12 = 3;
          goto LABEL_61;
        }

        break;
    }
  }

  else if (v4 > 0x6Bu)
  {
    if (v4 == 108)
    {
      if (v5 == 105 && v6 == 115 && v7 == 116)
      {
        v10 = a1;
        v11 = a2;
        v12 = 12;
        goto LABEL_61;
      }
    }

    else if (v4 == 109)
    {
      if (v5 == 105)
      {
        if (v6 == 109 && v7 == 101)
        {
          v10 = a1;
          v11 = a2;
          v12 = 14;
          goto LABEL_61;
        }
      }

      else if (v5 == 101 && v6 == 115 && v7 == 115)
      {
        v10 = a1;
        v11 = a2;
        v12 = 13;
        goto LABEL_61;
      }
    }
  }

  else if (v4 == 100)
  {
    if (v5 == 97 && v6 == 116 && v7 == 101)
    {
      v10 = a1;
      v11 = a2;
      v12 = 10;
      goto LABEL_61;
    }
  }

  else if (v4 == 102 && v5 == 114 && v6 == 111 && v7 == 109)
  {
    v10 = a1;
    v11 = a2;
    v12 = 11;
    goto LABEL_61;
  }

  if (v6 != 112)
  {
    v9 = 0;
  }

  if (v9 == 1 && v7 == 114)
  {
    v10 = a1;
    v11 = a2;
    v12 = 15;
    goto LABEL_61;
  }

  if (v4 == 116)
  {
    if (v5 == 111 && !v6 && !v7)
    {
      v10 = a1;
      v11 = a2;
      v12 = 19;
      goto LABEL_61;
    }
  }

  else if (v4 == 115)
  {
    if (v5 == 117 && v6 == 98 && v7 == 106)
    {
      v10 = a1;
      v11 = a2;
      v12 = 18;
      goto LABEL_61;
    }
  }

  else if (v4 == 114 && v5 == 101)
  {
    if (v6 == 116)
    {
      if (v7 == 117)
      {
        v10 = a1;
        v11 = a2;
        v12 = 17;
        goto LABEL_61;
      }
    }

    else if (v6 == 99 && v7 == 101)
    {
      v10 = a1;
      v11 = a2;
      v12 = 16;
      goto LABEL_61;
    }
  }

  return 20;
}

void sub_1B0CB7ED8(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (!a1)
  {
    if (!a3)
    {
      v7 = 0;
      v17 = 0;
      v16 = 0;
      goto LABEL_13;
    }

    goto LABEL_43;
  }

  v6 = &a1[a3];
  v7 = a1;
  if (!a3)
  {
    goto LABEL_9;
  }

  v8 = a3 - 1;
  if (!__OFSUB__(a3, 1))
  {
    if (v8 < 0 || v8 >= a3)
    {
      goto LABEL_45;
    }

    v9 = &a1[v8];
    v7 = &a1[a3];
    if (a1[v8] != 58 || (v10 = a1, v11 = a2, v12 = a5, v13 = a3, v14 = sub_1B0CB7AEC(a1, v9), a2 = v11, a3 = v13, a5 = v12, v15 = v14, a1 = v10, v7 = v9, v15 == 20))
    {
LABEL_9:
      if (a2 - a1 >= a3)
      {
        v16 = a2;
        v17 = v6;
LABEL_13:
        v18 = 0;
        v19 = a4 & 1 | 0xA000000000000000;
        v6 = a1;
LABEL_14:
        *a5 = v6;
        a5[1] = v7;
        a5[2] = v17;
        a5[3] = v16;
        a5[4] = v19;
        a5[5] = v18;
        return;
      }

      goto LABEL_42;
    }

    if (v11 - a1 >= v13)
    {
      v7 = v11;
      v19 = 0x1000000000000000;
      v17 = 0;
      v20 = v15;
      v16 = 0;
      v18 = 0;
      switch(v20)
      {
        case 1:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x800000000000000;
          break;
        case 2:
          goto LABEL_14;
        case 3:
          v17 = 0;
          v16 = 0;
          v18 = 0;
          v19 = 0x1800000000000000;
          break;
        case 4:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x2000000000000000;
          break;
        case 5:
          sub_1B0CB0678(v6, a2, a4 & 1);
          v16 = MEMORY[0x1E69E7CC0];
          if (v23)
          {
            v24 = v23;
            v6 = v21;
            v7 = v22;
            v25 = sub_1B0C7A138(v21, v22);
            v17 = v25 == 3;
            if (v25 != 3)
            {
              v6 = v25;
              v7 = 0;
            }

            v26[0] = v16;
            sub_1B0CAD53C(v24, v26);

            v16 = v26[0];
          }

          else
          {
            v17 = 1;
          }

          v18 = 0;
          v19 = 0x2800000000000000;
          a5 = v12;
          break;
        case 6:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x3000000000000000;
          break;
        case 7:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x3800000000000000;
          break;
        case 8:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x4000000000000000;
          break;
        case 9:
          sub_1B0C7F160(v6, a2, v26, a4 & 1);
          a5 = v12;
          v6 = v26[0];
          v7 = v26[1];
          v17 = v26[2];
          v16 = v26[3];
          v18 = v28;
          v19 = v27 | 0x4800000000000000;
          break;
        case 10:
          v17 = 0;
          v16 = 0;
          v18 = 0;
          v19 = 0x5000000000000000;
          break;
        case 11:
          v17 = 0;
          v16 = 0;
          v18 = 0;
          v19 = 0x5800000000000000;
          break;
        case 12:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x6000000000000000;
          break;
        case 13:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x6800000000000000;
          break;
        case 14:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x7000000000000000;
          break;
        case 15:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x7800000000000000;
          break;
        case 16:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x8000000000000000;
          break;
        case 17:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x8800000000000000;
          break;
        case 18:
          v16 = 0;
          v18 = 0;
          v17 = a4 & 1;
          v19 = 0x9000000000000000;
          break;
        case 19:
          v17 = 0;
          v16 = 0;
          v18 = 0;
          v19 = 0x9800000000000000;
          break;
        default:
          v16 = 0;
          v19 = 0;
          v18 = 0;
          v17 = a4 & 1;
          break;
      }

      goto LABEL_14;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1B0CB8238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 5) & 0xFFFFFFF8 | (*(a1 + 32) >> 1) & 7;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0CB828C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (32 * -a2) & 0x1FFFFFFF00 | (2 * (-a2 & 7));
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeHeader.Field.Known(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeHeader.Field.Known(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0CB8478()
{
  result = qword_1EB6E6088;
  if (!qword_1EB6E6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6088);
  }

  return result;
}

unint64_t sub_1B0CB84CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E46B08();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

char *sub_1B0CB8540()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  result = sub_1B0C94424(*(v0 + 64), v1, v2, v3);
  if (v8)
  {
    v9 = v2;
    if (v2 >= v1)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v9 = v7;
  if (v7 < v1)
  {
    goto LABEL_77;
  }

  if (v2 < v7)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_6:
  *(v0 + 32) = v9;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  result = sub_1B0C94618(0x3Au, v1, v9, v3);
  if (v11)
  {
    return 0;
  }

  v12 = v10;
  if (v9 != v2)
  {
    v13 = v3;
    while (1)
    {
      v14 = v2 - v9;
      if (v2 <= v9)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v15 = v3 + v9;
      v16 = *(v3 + v9);
      if (v16 != 32 && v16 != 9)
      {
        goto LABEL_66;
      }

      v18 = v2;
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (!v3)
          {
            goto LABEL_62;
          }

          result = memchr((v3 + v9), 10, v2 - v9);
          v18 = v2;
          if (!result)
          {
            goto LABEL_62;
          }

          v18 = v2;
          v21 = &result[-v15];
          if (&result[-v15] < 0)
          {
            goto LABEL_62;
          }

          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_82;
          }

          v18 = v2;
          if (v14 < v22)
          {
            goto LABEL_62;
          }

          if (__OFADD__(v21, v9))
          {
            goto LABEL_87;
          }

          v18 = &v22[v9];
          if (__OFADD__(v22, v9))
          {
            goto LABEL_91;
          }

          if (v22 < v21 || v18 < &v21[v9])
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (!v3)
          {
            goto LABEL_62;
          }

          result = memchr((v3 + v9), 10, v2 - v9);
          v18 = v2;
          if (!result)
          {
            goto LABEL_62;
          }

          v18 = v2;
          v25 = &result[-v15];
          if (&result[-v15] < 0)
          {
            goto LABEL_62;
          }

          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_80;
          }

          v18 = v2;
          if (v14 < v26)
          {
            goto LABEL_62;
          }

          v27 = &v25[v9];
          if (__OFADD__(v25, v9))
          {
            goto LABEL_86;
          }

          v18 = &v26[v9];
          if (__OFADD__(v26, v9))
          {
            goto LABEL_89;
          }

          if (v26 < v25 || v18 < v27)
          {
            goto LABEL_95;
          }

          if (v9 < v27 && v27 > v2)
          {
            goto LABEL_96;
          }
        }
      }

      else if (v5)
      {
        if (!v3)
        {
          goto LABEL_62;
        }

        result = memchr((v3 + v9), 13, v2 - v9);
        v18 = v2;
        if (!result)
        {
          goto LABEL_62;
        }

        v18 = v2;
        v23 = &result[-v15];
        if (&result[-v15] < 0)
        {
          goto LABEL_62;
        }

        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_81;
        }

        v18 = v2;
        if (v14 < v24)
        {
          goto LABEL_62;
        }

        if (__OFADD__(v23, v9))
        {
          goto LABEL_84;
        }

        v18 = &v24[v9];
        if (__OFADD__(v24, v9))
        {
          goto LABEL_90;
        }

        if (v24 < v23 || v18 < &v23[v9])
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_62;
        }

        result = memmem((v3 + v9), v2 - v9, "\r\n", 2uLL);
        v18 = v2;
        if (!result)
        {
          goto LABEL_62;
        }

        v18 = v2;
        v19 = &result[-v15];
        if (&result[-v15] < 0)
        {
          goto LABEL_62;
        }

        v20 = v19 + 2;
        if (__OFADD__(v19, 2))
        {
          goto LABEL_83;
        }

        v18 = v2;
        if (v14 < v20)
        {
          goto LABEL_62;
        }

        if (__OFADD__(v19, v9))
        {
          goto LABEL_85;
        }

        v18 = &v20[v9];
        if (__OFADD__(v20, v9))
        {
          goto LABEL_88;
        }

        if (v20 < v19 || v18 < &v19[v9])
        {
          goto LABEL_93;
        }
      }

      if (v18 < v9)
      {
        goto LABEL_75;
      }

      if (v2 < v18)
      {
        goto LABEL_76;
      }

LABEL_62:
      *(v0 + 32) = v18;
      *(v0 + 40) = v2;
      *(v0 + 48) = v3;
      *(v0 + 56) = v4;
      if (v18 < v1)
      {
        goto LABEL_72;
      }

      if (v1 < *v0)
      {
        goto LABEL_73;
      }

      if (*(v0 + 8) < v18)
      {
        goto LABEL_74;
      }

      v13 = *(v0 + 16);
      v9 = v18;
      if (v18 == v2)
      {
LABEL_66:
        v3 = v13;
        break;
      }
    }
  }

  if (!__OFSUB__(v12, v1))
  {
    if (v3)
    {
      return (v3 + v1);
    }

    else
    {
      return 0;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
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
  return result;
}

uint64_t sub_1B0CB88C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0CB8918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t WatchOSHeaderInfo.from.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t WatchOSHeaderInfo.from.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WatchOSHeaderInfo.to.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t WatchOSHeaderInfo.cc.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t WatchOSHeaderInfo.bcc.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t WatchOSHeaderInfo.subject.getter()
{
  v1 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t WatchOSHeaderInfo.subject.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t WatchOSHeaderInfo.messageIDHeader.getter()
{
  v1 = *(v0 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t WatchOSHeaderInfo.messageIDHeader.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t WatchOSHeaderInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for WatchOSHeaderInfo(0) + 40);
  v5 = sub_1B0E43108();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t type metadata accessor for WatchOSHeaderInfo(uint64_t a1)
{
  result = qword_1EB6E6090;
  if (!qword_1EB6E6090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WatchOSHeaderInfo.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchOSHeaderInfo(0) + 40);
  v4 = sub_1B0E43108();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchOSHeaderInfo.init(from:to:cc:bcc:subject:messageIDHeader:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  v12 = *(type metadata accessor for WatchOSHeaderInfo(0) + 40);
  v13 = sub_1B0E43108();
  v14 = *(*(v13 - 8) + 32);

  return v14(&a9[v12], a11, v13);
}

uint64_t WatchOSHeaderInfo.init(message:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3D58, &qword_1B0EE0DD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-v10];
  v12 = type metadata accessor for WatchOSHeaderInfo(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v20[-v17];
  *v18 = 0;
  v18[1] = 0;
  sub_1B0C9A6A4(a1, a2, v11);
  sub_1B0CB90F4(a1, type metadata accessor for Message);
  sub_1B03C60A4(v11, v8, &qword_1EB6E3D58, &qword_1B0EE0DD0);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B0398EFC(v8, &qword_1EB6E3D58, &qword_1B0EE0DD0);
    return (*(v13 + 56))(a3, 1, 1, v12);
  }

  else
  {
    sub_1B0A81BE0(v8, v15);
    sub_1B0A81BE0(v15, v18);
    sub_1B0CB9090(v18, a3);
    (*(v13 + 56))(a3, 0, 1, v12);
    return sub_1B0CB90F4(v18, type metadata accessor for WatchOSHeaderInfo);
  }
}

uint64_t sub_1B0CB9090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchOSHeaderInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CB90F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0CB917C(uint64_t a1)
{
  sub_1B0CB9264(319, &qword_1EB6DB6A8, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B0CB9264(319, &qword_1EB6DB088, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B0E43108();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0CB9264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B0CB9328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v111 = a4;
  v112 = a5;
  v109 = a6;
  v110 = a3;
  v8 = sub_1B0E43108();
  v107 = *(v8 - 8);
  v108 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v91 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v91 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v91 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v91 - v24;
  sub_1B0CA33D0(3, a1, a2, v110, v111);
  v27 = v26;
  v104 = v14;
  v105 = 0;
  v102 = v19;
  v103 = v22;
  v28 = v112;
  v93 = v13;
  v94 = v16;
  v101 = v10;
  v30 = v29;
  v32 = v31;
  v33 = v107;
  v34 = *(v107 + 56);
  v35 = v25;
  result = v34(v25, 1, 1, v108);
  if (v27 < 0)
  {
    __break(1u);
    return result;
  }

  if (v30)
  {
    v37 = v30 + v27;
  }

  else
  {
    v37 = 0;
  }

  sub_1B0CB7368(v30, v37, v32, &v115);
  v38 = sub_1B0CB8540();
  if (v41 == 2)
  {

    v42 = v25;
    goto LABEL_61;
  }

  v91[0] = v34;
  v91[1] = v33 + 56;
  v43 = 0;
  v44 = 0;
  v95 = 0;
  v96 = 0;
  v106 = 0;
  v100 = (v33 + 48);
  v92 = (v33 + 32);
  v45 = MEMORY[0x1E69E7CC0];
  v110 = MEMORY[0x1E69E7CC0];
  v111 = MEMORY[0x1E69E7CC0];
  v107 = v35;
  v46 = v28;
  v47 = 0;
  v48 = v102;
  do
  {
    sub_1B0CB7ED8(v38, v39, v40, v41 & 1, v116);
    v50 = v116[0];
    v49 = v116[1];
    v51 = v117 >> 59;
    if ((v117 >> 59) <= 10)
    {
      if (v51 == 2)
      {

        v45 = sub_1B0CB9D44(v50, v49, v46);
        goto LABEL_9;
      }

      if (v51 == 3)
      {

        v111 = sub_1B0CB9D44(v50, v49, v46);
        goto LABEL_9;
      }

      if (v51 != 10)
      {
        goto LABEL_26;
      }

      sub_1B0C8A0E8(v116, v46, &v122);
      if (v124 != 10)
      {
        if (v124 == 255)
        {
          goto LABEL_9;
        }

        v52 = &v122;
        goto LABEL_38;
      }

      v98 = v44;
      v99 = v45;
      v102 = v47;
      v97 = v43;
      if ((v123 & 0x1000000000000000) == 0)
      {
        if ((v123 & 0x2000000000000000) != 0)
        {
          v67 = v100;
          v68 = v108;
          v113 = v122;
          v114 = v123 & 0xFFFFFFFFFFFFFFLL;
          v69 = &v113;
          goto LABEL_48;
        }

        if ((v122 & 0x1000000000000000) != 0)
        {
          v67 = v100;
          v68 = v108;
          v69 = ((v123 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_48:
          v70 = v105;
          sub_1B0C918AC(v69, v48);
LABEL_49:
          v105 = v70;
          v71 = *v67;
          if (v71(v48, 1, v68) == 1)
          {
            v72 = v103;
            sub_1B0C90B4C(v103);
            sub_1B0398EFC(&v122, &qword_1EB6E5F88, &unk_1B0EE0E00);
            v73 = v107;
            sub_1B0398EFC(v107, &unk_1EB6E2990, &qword_1B0E9B060);
            if (v71(v48, 1, v68) != 1)
            {
              sub_1B0398EFC(v48, &unk_1EB6E2990, &qword_1B0E9B060);
            }
          }

          else
          {
            sub_1B0398EFC(&v122, &qword_1EB6E5F88, &unk_1B0EE0E00);
            v73 = v107;
            sub_1B0398EFC(v107, &unk_1EB6E2990, &qword_1B0E9B060);
            v72 = v103;
            (*v92)(v103, v48, v68);
            (v91[0])(v72, 0, 1, v68);
          }

          sub_1B03C60A4(v72, v73, &unk_1EB6E2990, &qword_1B0E9B060);
          v44 = v98;
          v45 = v99;
          v47 = v102;
          v43 = v97;
          goto LABEL_9;
        }
      }

      v67 = v100;
      v68 = v108;
      v70 = v105;
      sub_1B0E46258();
      goto LABEL_49;
    }

    if (v51 > 17)
    {
      if (v51 != 18)
      {
        if (v51 == 19)
        {

          v110 = sub_1B0CB9D44(v50, v49, v46);
          goto LABEL_9;
        }

LABEL_26:
        sub_1B0CA39F4(v116);
        goto LABEL_9;
      }

      sub_1B0C8A0E8(v116, v46, v118);
      if (v119 != 18)
      {
        if (v119 == 255)
        {
          goto LABEL_9;
        }

        v52 = v118;
        goto LABEL_38;
      }

      v65 = v118[1];
      v95 = v118[0];

      v44 = v65;
    }

    else if (v51 == 11)
    {

      v53 = sub_1B0CB4AE0(v50, v49);
      v55 = v54;

      v56 = sub_1B0CACDC4(v53, v55, v46);
      v57 = sub_1B0C80520(v56);

      if (*(v57 + 2))
      {
        v58 = *(v57 + 5);
        v127 = *(v57 + 4);
        v128 = v58;
        v59 = *(v57 + 7);
        v129 = *(v57 + 6);
        v130 = v59;
        v60 = *(v57 + 3);
        v125 = *(v57 + 2);
        v126 = v60;
        sub_1B0C826C0(&v125, &v113);

        v61 = *(&v125 + 1);
        if (!*(&v125 + 1))
        {
          goto LABEL_34;
        }

        v62 = v125;
        v63 = HIBYTE(*(&v125 + 1)) & 0xFLL;
        if ((*(&v125 + 1) & 0x2000000000000000) == 0)
        {
          v63 = v125 & 0xFFFFFFFFFFFFLL;
        }

        if (v63 && v125 != v126 && (sub_1B0E46A78() & 1) == 0)
        {
          v113 = sub_1B0C82014(v62, v61);
          v114 = v74;
          MEMORY[0x1B2726E80](15392, 0xE200000000000000);
          v75 = sub_1B0C80214(v46);
          MEMORY[0x1B2726E80](v75);

          MEMORY[0x1B2726E80](62, 0xE100000000000000);
          sub_1B0C8274C(&v125);
          v43 = v113;
          v47 = v114;
        }

        else
        {
LABEL_34:
          v43 = sub_1B0C80214(v46);
          v47 = v64;
          sub_1B0C8274C(&v125);
        }
      }

      else
      {

        v43 = 0;
        v47 = 0;
      }
    }

    else
    {
      if (v51 != 13)
      {
        goto LABEL_26;
      }

      sub_1B0C8A0E8(v116, v46, v120);
      if (v121 != 13)
      {
        if (v121 == 255)
        {
          goto LABEL_9;
        }

        v52 = v120;
LABEL_38:
        sub_1B0398EFC(v52, &qword_1EB6E5F88, &unk_1B0EE0E00);
        goto LABEL_9;
      }

      v66 = v120[1];
      v96 = v120[0];

      v106 = v66;
    }

LABEL_9:
    v38 = sub_1B0CB8540();
  }

  while (v41 != 2);

  v76 = v101;
  if (!v44)
  {
    v42 = v107;
    goto LABEL_61;
  }

  v77 = v43;
  v78 = v106;
  v42 = v107;
  if (!v106)
  {
LABEL_61:
    sub_1B0398EFC(v42, &unk_1EB6E2990, &qword_1B0E9B060);

LABEL_62:
    v81 = type metadata accessor for WatchOSHeaderInfo(0);
    return (*(*(v81 - 8) + 56))(v109, 1, 1, v81);
  }

  v79 = v94;
  sub_1B03C60A4(v107, v94, &unk_1EB6E2990, &qword_1B0E9B060);
  v80 = v108;
  if ((*v100)(v79, 1, v108) == 1)
  {

    sub_1B0398EFC(v79, &unk_1EB6E2990, &qword_1B0E9B060);
    goto LABEL_62;
  }

  v106 = v78;
  v82 = v93;
  v102 = v47;
  v83 = *v92;
  (*v92)(v93, v79, v80);
  v83(v76, v82, v80);
  v84 = v76;
  v85 = v109;
  v86 = v102;
  *v109 = v77;
  v85[1] = v86;
  v87 = v111;
  v85[2] = v110;
  v85[3] = v87;
  v89 = v95;
  v88 = v96;
  v85[4] = v45;
  v85[5] = v89;
  v85[6] = v44;
  v85[7] = v88;
  v85[8] = v106;
  v90 = type metadata accessor for WatchOSHeaderInfo(0);
  v83(v85 + *(v90 + 40), v84, v80);
  return (*(*(v90 - 8) + 56))(v85, 0, 1, v90);
}

uint64_t sub_1B0CB9D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = sub_1B0CB4AE0(a1, a2);
  v6 = v5;

  v7 = sub_1B0CACDC4(v4, v6, a3);

  v8 = sub_1B0C80520(v7);

  v9 = *(v8 + 2);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v66 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v9, 0);
  v10 = 0;
  v11 = 32;
  v12 = v66;
  v61 = v8;
  v62 = a3;
  v60 = v9;
  do
  {
    if (v10 >= *(v8 + 2))
    {
      __break(1u);
LABEL_37:
      __break(1u);
    }

    v13 = *&v8[v11 + 16];
    v70 = *&v8[v11];
    v71 = v13;
    v14 = *&v8[v11 + 32];
    v15 = *&v8[v11 + 48];
    v16 = *&v8[v11 + 80];
    v74 = *&v8[v11 + 64];
    v75 = v16;
    v72 = v14;
    v73 = v15;
    v17 = *(&v70 + 1);
    v65 = v11;
    if (*(&v70 + 1))
    {
      v18 = v70;
      v19 = HIBYTE(*(&v70 + 1)) & 0xFLL;
      if ((*(&v70 + 1) & 0x2000000000000000) == 0)
      {
        v19 = v70 & 0xFFFFFFFFFFFFLL;
      }

      if (v19 && v70 != v71 && (sub_1B0E46A78() & 1) == 0)
      {
        sub_1B0C826C0(&v70, &v68);
        v68 = sub_1B0C82014(v18, v17);
        v69 = v37;
        MEMORY[0x1B2726E80](15392, 0xE200000000000000);
        v38 = sub_1B0C80214(a3);
        MEMORY[0x1B2726E80](v38);

        MEMORY[0x1B2726E80](62, 0xE100000000000000);
        sub_1B0C8274C(&v70);
        v39 = v68;
        v40 = v69;
        goto LABEL_27;
      }
    }

    if (*(&v74 + 1) >> 14 < v74 >> 14)
    {
      goto LABEL_37;
    }

    v63 = v10;
    v64 = v12;
    sub_1B0C826C0(&v70, &v68);
    v20 = sub_1B0E45E28();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    LODWORD(v68) = 0;
    NFCInstance = unorm2_getNFCInstance();
    v28 = v68;
    if (NFCInstance && v68 <= 0)
    {
      sub_1B0CB3CC8(v20, v22, v24, v26, NFCInstance);
      v35 = v30;
      if (v30)
      {
        v33 = v29;
      }

      else
      {
        v33 = MEMORY[0x1B2726D00](v20, v22, v24, v26);
        v35 = v41;
      }

      if (*(a3 + 96))
      {
LABEL_15:
        LODWORD(v68) = 0;
        v36 = MEMORY[0x1B272C4F0](60, &v68);
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B0C826F8();
      v31 = swift_allocError();
      *v32 = v28;
      *(v32 + 4) = 0;
      swift_willThrow();
      v33 = MEMORY[0x1B2726D00](v20, v22, v24, v26);
      v35 = v34;

      if (*(a3 + 96))
      {
        goto LABEL_15;
      }
    }

    v36 = *(a3 + 88);
LABEL_22:
    v67 = v36;
    sub_1B0C8BD64(&v67, v33, v35, &v68);

    v42 = v72;
    v43 = v73;
    *(a3 + 88) = v36;
    *(a3 + 96) = 0;
    v45 = v68;
    v44 = v69;
    LODWORD(v68) = 0;
    v46 = unorm2_getNFCInstance();
    v47 = v68;
    if (v46 && v68 <= 0)
    {
      sub_1B0CB3CC8(v42, *(&v42 + 1), v43, *(&v43 + 1), v46);
      v54 = v49;
      if (v49)
      {
        v52 = v48;
      }

      else
      {
        v52 = MEMORY[0x1B2726D00](v42, *(&v42 + 1), v43, *(&v43 + 1));
        v54 = v58;
      }
    }

    else
    {
      sub_1B0C826F8();
      v50 = swift_allocError();
      *v51 = v47;
      *(v51 + 4) = 0;
      swift_willThrow();
      v52 = MEMORY[0x1B2726D00](v42, *(&v42 + 1), v43, *(&v43 + 1));
      v54 = v53;
    }

    v68 = v52;
    v69 = v54;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](64, 0xE100000000000000);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v45, v44);

    sub_1B0C8274C(&v70);
    v39 = v68;
    v40 = v69;
    v9 = v60;
    v8 = v61;
    v10 = v63;
    v12 = v64;
LABEL_27:
    v56 = *(v12 + 16);
    v55 = *(v12 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_1B041D32C((v55 > 1), v56 + 1, 1);
    }

    ++v10;
    *(v12 + 16) = v56 + 1;
    v57 = v12 + 16 * v56;
    *(v57 + 32) = v39;
    *(v57 + 40) = v40;
    v11 = v65 + 96;
    a3 = v62;
  }

  while (v9 != v10);

  return v12;
}

char *sub_1B0CBA274(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60A0, &qword_1B0EE0E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CBA380(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60A8, &qword_1B0EE0E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CBA48C(char *a1, int64_t a2, char a3)
{
  result = sub_1B0CBA274(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0CBA4AC(char *a1, int64_t a2, char a3)
{
  result = sub_1B0CBA380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t AccountLoggerID.init(accountIdentifier:)(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60B0, &qword_1B0EE0E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __src - v5;
  v7 = sub_1B0E43158();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __src - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __dst = 0;
  if (!a2)
  {
    return 0;
  }

  sub_1B0E43118();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B0CBADB0(v6);
    if ((a2 & 0x1000000000000000) != 0)
    {
      a1 = sub_1B0A6C2B0(a1, a2);
      v17 = v16;

      a2 = v17;
      if ((v17 & 0x2000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
LABEL_5:
      if ((a1 & 0x1000000000000000) != 0)
      {
        v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v12 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = sub_1B0E46368();
      }

      v13 = 4;
      if (v12 < 4)
      {
        v13 = v12;
      }

      if (!v11)
      {
        v13 = 0;
      }

      if (v13 < 0)
      {
        __break(1u);
      }

      if (v11)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = 0;
      }

      sub_1B0CBAD44(0, v13, v11, v14, &__dst);
      goto LABEL_23;
    }

    __src[0] = a1;
    __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a2 & 0xC00000000000000) != 0)
    {
      v18 = 4;
    }

    else
    {
      v18 = HIBYTE(a2) & 0xF;
    }

    memcpy(&__dst, __src, v18);
LABEL_23:

    return bswap32(__dst);
  }

  (*(v8 + 32))(v10, v6, v7);
  __dst = sub_1B0E43148();
  (*(v8 + 8))(v10, v7);
  return bswap32(__dst);
}

uint64_t AccountLoggerID.debugDescription.getter(int a1)
{
  sub_1B07467B8();
  v1 = sub_1B0E44E98();
  v3 = v2;
  result = sub_1B0E44CF8();
  if (__OFSUB__(8, result))
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1B0E44E88();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v1, v3);

    return v5;
  }

  return result;
}

uint64_t sub_1B0CBA840()
{
  sub_1B07467B8();
  v0 = sub_1B0E44E98();
  v2 = v1;
  result = sub_1B0E44CF8();
  if (__OFSUB__(8, result))
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1B0E44E88();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v0, v2);

    return v4;
  }

  return result;
}

uint64_t EngineAccountMailboxLoggerID.mailbox.setter(uint64_t a1, int a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

double variable initialization expression of MessageSectionData.Segment.initial@<D0>(uint64_t a1@<X8>)
{
  sub_1B04FAA88(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double variable initialization expression of MessageSectionData.Segment.Initial.bodyStructure@<D0>(uint64_t a1@<X8>)
{
  sub_1B075FEBC(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double variable initialization expression of RemoteMailbox.status@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 41) = 1;
  return result;
}

uint64_t sub_1B0CBACC8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

char *sub_1B0CBAD44(char *result, uint64_t a2, uint64_t a3, uint64_t a4, void *__dst)
{
  if (__dst)
  {
    if (a3)
    {
      v5 = a4 - a3;
      if (a4 - a3 < 0)
      {
        __break(1u);
      }

      else if (v5 >= result)
      {
        if (v5 >= a2)
        {
          if (!__OFADD__(result, a2 - result))
          {
            if (a2 >= result)
            {
              return memmove(__dst, &result[a3], a2 - result);
            }

            goto LABEL_16;
          }

LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_14;
    }

    if (result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (a2)
    {
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0CBADB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60B0, &qword_1B0EE0E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0CBAE5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60B8, &qword_1B0EE0F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Action.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

unint64_t Action.kind.getter(unint64_t a1)
{
  v1 = a1;
  v2 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  result = 1;
  switch(v2)
  {
    case 1uLL:
      result = 5;
      break;
    case 2uLL:
      result = 6;
      break;
    case 3uLL:
      result = 7;
      break;
    case 4uLL:
      result = 8;
      break;
    case 5uLL:
      result = 10;
      break;
    case 6uLL:
      result = 11;
      break;
    case 7uLL:
      result = 12;
      break;
    case 8uLL:
      result = 13;
      break;
    case 9uLL:
      result = 14;
      break;
    case 0xAuLL:
      result = 15;
      break;
    case 0xBuLL:
      result = 16;
      break;
    case 0xCuLL:
      result = 17;
      break;
    case 0xDuLL:
      result = 18;
      break;
    case 0xEuLL:
      result = 19;
      break;
    case 0xFuLL:
      result = 20;
      break;
    case 0x10uLL:
      result = 21;
      break;
    case 0x11uLL:
      result = 22;
      break;
    case 0x12uLL:
      result = 23;
      break;
    case 0x13uLL:
      result = 24;
      break;
    case 0x14uLL:
      result = 25;
      break;
    case 0x15uLL:
      result = 26;
      break;
    case 0x16uLL:
      result = 27;
      break;
    case 0x17uLL:
      result = 28;
      break;
    case 0x18uLL:
      result = 29;
      break;
    case 0x19uLL:
      result = 34;
      break;
    case 0x1AuLL:
      result = 35;
      break;
    case 0x1BuLL:
      result = 37;
      break;
    case 0x1CuLL:
      result = 30;
      break;
    case 0x1DuLL:
      result = 31;
      break;
    case 0x1EuLL:
      result = 32;
      break;
    case 0x1FuLL:
      result = 33;
      break;
    case 0x20uLL:
      result = 36;
      break;
    case 0x21uLL:
      result = 38;
      break;
    case 0x22uLL:
      result = 39;
      break;
    case 0x23uLL:
      result = 40;
      break;
    case 0x24uLL:
      result = 41;
      break;
    case 0x25uLL:
      result = 42;
      break;
    case 0x26uLL:
      result = 43;
      break;
    case 0x27uLL:
      result = 44;
      break;
    case 0x28uLL:
      result = 45;
      break;
    case 0x29uLL:
      result = 46;
      break;
    case 0x2AuLL:
      result = 47;
      break;
    case 0x2BuLL:
      result = 48;
      break;
    case 0x2CuLL:
      result = 0x904030200uLL >> (v1 & 0xF8);
      break;
    default:
      return result;
  }

  return result;
}

unint64_t Action.Kind.description.getter(char a1)
{
  result = 0x6944656E69676E65;
  switch(a1)
  {
    case 1:
      result = 0x64657243646E6573;
      break;
    case 2:
      result = 0x6568747541646964;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 10:
    case 25:
    case 47:
      result = 0xD00000000000001BLL;
      break;
    case 5:
    case 9:
    case 19:
    case 26:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x614E657461647075;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
    case 37:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 12:
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
    case 16:
    case 42:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x617373654D746567;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
    case 34:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD000000000000025;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0xD00000000000002DLL;
      break;
    case 23:
      result = 0xD000000000000021;
      break;
    case 24:
    case 40:
      result = 0xD000000000000012;
      break;
    case 27:
    case 30:
    case 31:
      result = 0xD000000000000018;
      break;
    case 28:
    case 33:
      result = 0xD000000000000016;
      break;
    case 29:
      result = 0x6C46657461647075;
      break;
    case 32:
    case 43:
      result = 0xD000000000000010;
      break;
    case 35:
      result = 0xD00000000000002ALL;
      break;
    case 36:
    case 45:
      result = 0xD000000000000019;
      break;
    case 38:
      result = 0xD000000000000015;
      break;
    case 39:
    case 41:
      result = 0xD00000000000001ELL;
      break;
    case 44:
    case 48:
      result = 0xD00000000000001DLL;
      break;
    case 46:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MailboxMetadata.validity.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxMetadata.fetchedWindow.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t MailboxMetadata.highestModificationSequenceValue.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MailboxMetadata.init(validity:fetchedWindow:highestModificationSequenceValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = BYTE4(result) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

BOOL sub_1B0CBB7A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t MailboxSyncStatus.latestSyncedChange.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxSyncStatus.serverUnreadCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t static MailboxSyncStatus.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a1 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }

    return 0;
  }

  v6 = a1;
  result = 0;
  if ((a4 & 0x100000000) == 0 && v6 == a4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1B0CBB8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v4 = *(a2 + 16);
    }

    else
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MessageFlagUpdate.flags.setter(uint64_t result, char a2)
{
  *(v2 + 4) = result;
  *(v2 + 12) = a2;
  return result;
}

uint64_t MessageFlagUpdate.gmailLabels.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t MessageFlagUpdate.init(message:flags:gmailLabels:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2 && a4 == 0)
  {
    return 0;
  }

  else
  {
    return a1 | (a2 << 32);
  }
}

BOOL static MessageFlagUpdate.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&var10[4] = HIDWORD(a4);
  *&var10[8] = a5;
  v6 = *&var10[4];
  *var10 = a1;
  *&var10[4] = __PAIR64__(a2, HIDWORD(a1));
  var10[12] = BYTE4(a2);
  v7 = *var10;
  v8 = *&var10[8];
  *var10 = a4;
  *&var10[4] = v6;
  var10[12] = BYTE4(a5);
  return sub_1B0CBDF78(v7, v8, a3, *var10, *&var10[8], a6);
}

BOOL sub_1B0CBBA7C(uint64_t a1, uint64_t a2)
{
  *(&v4 + 4) = *(a1 + 4);
  BYTE12(v4) = *(a1 + 12);
  v2 = v4;
  LODWORD(v4) = *a2;
  *(&v4 + 4) = *(a2 + 4);
  BYTE12(v4) = *(a2 + 12);
  return sub_1B0CBDF78(v2, *(&v2 + 1), *(a1 + 16), v4, *(&v4 + 1), *(a2 + 16));
}

uint64_t Action.UnreadCountOutsideWindowOfInterest.Count.serverUnreadCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_1B0CBBC00(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 == 0);
  if (a1)
  {
    v4 = a4 & (a3 != 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a3 == a1) & ~a4;
  }
}

uint64_t sub_1B0CBBC34(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if ((a4 & 0x100) != 0)
  {
    if (a3 | a2 | a1 || a4)
    {
      if (a7 | a6 | a5)
      {
        v11 = 0;
      }

      else
      {
        v11 = a8 == 0;
      }

      v10 = !v11;
    }

    else
    {
      if (a7 | a6 | a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = a8 == 0;
      }

      v10 = v9;
    }

    if ((a8 & 0x100) != 0)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((a8 & 0x100) == 0 && a1 == a5 && a6 == a2)
    {
      if (a4)
      {
        if (a8)
        {
          return 1;
        }
      }

      else if ((a8 & 1) == 0 && a3 == a7)
      {
        return 1;
      }
    }

    return 0;
  }
}

void _s16IMAP2Persistence6ActionO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2)
{
  v240 = a2;
  v2 = type metadata accessor for Activity(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v238 = (v234 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v235 = (v234 - v5);
  v6 = type metadata accessor for MessageSectionData(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v234 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v234 - v10;
  v12 = type metadata accessor for MessageHeader(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v237 = v234 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v239 = v234 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v236 = v234 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v234 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v234 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v234 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v234 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v234 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v39 = v234 - v38;
  switch((v37 >> 58) & 0x3C | (v37 >> 1) & 3)
  {
    case 1uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 1)
      {
        v96 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v97 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1B03B6298(v96, v97);
      }

      return;
    case 2uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 2)
      {
        v76 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v75 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v77 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v78 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v79 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v80 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        static Namespace.__derived_struct_equals(_:_:)(v77, v76, v75, v78, v79, v80, v81);

        goto LABEL_163;
      }

      return;
    case 3uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 3)
      {
        v94 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v95 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B72F70(v94, v95);
        goto LABEL_163;
      }

      return;
    case 4uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 4)
      {
        v61 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v62 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1B0AFDD30(v61, v62);
      }

      return;
    case 5uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 5)
      {
        v135 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v134 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v136 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v137 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v138 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v139 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v140 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v141 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x28);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        static PushRegistrationResponse.__derived_struct_equals(_:_:)(v137, v136, v135, v134, v138, v139, v140, v141);

        goto LABEL_163;
      }

      return;
    case 6uLL:
      v155 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v156 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v157 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v282[0] = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v282[1] = v157;
      LOBYTE(v282[2]) = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x40);
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 6)
      {
        v158 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v159 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v160 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v283[0] = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v283[1] = v160;
        LOBYTE(v283[2]) = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x40);
        if (v156 == v159 && (sub_1B04520BC(v155, v158) & 1) != 0)
        {
          _s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v282, v283);
        }
      }

      return;
    case 7uLL:
      v46 = v240;
      if (((v46 >> 58) & 0x3C | (v46 >> 1) & 3) == 7)
      {
        goto LABEL_70;
      }

      return;
    case 8uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 8 && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v183 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v184 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v185 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v186 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x28);
        if ((sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) != 0 && (v184 & 1) == 0 && (v186 & 1) == 0)
        {
          sub_1B0CC590C(v183, v185);
        }
      }

      return;
    case 9uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 9 && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        goto LABEL_109;
      }

      return;
    case 0xAuLL:
      v177 = swift_projectBox();
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0xA)
      {
        v178 = v177;
        v179 = v177[1];
        v239 = *v177;
        v180 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0) + 48);
        v181 = swift_projectBox();
        v182 = v181[1];
        v240 = *v181;
        sub_1B03B5C80(v178 + v180, v39, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03B5C80(v181 + v180, v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
        if (v179 == v182 && (sub_1B04520BC(v239, v240) & 1) != 0)
        {
          sub_1B03D06F8();
          sub_1B0E46E08();
          sub_1B0398EFC(v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v71 = v39;
          goto LABEL_123;
        }

        v206 = &unk_1EB6E26C0;
        v207 = &unk_1B0E9DE10;
        sub_1B0398EFC(v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v208 = v39;
        goto LABEL_172;
      }

      return;
    case 0xBuLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0xB && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v59 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v60 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          sub_1B0CCDF48(v59, v60);
        }
      }

      return;
    case 0xCuLL:
      v65 = swift_projectBox();
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0xC)
      {
        v66 = v65;
        v67 = v65[1];
        v239 = *v65;
        v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390) + 48);
        v69 = swift_projectBox();
        v70 = v69[1];
        v240 = *v69;
        sub_1B03B5C80(v66 + v68, v32, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03B5C80(v69 + v68, v29, &unk_1EB6E26C0, &unk_1B0E9DE10);
        if (v67 != v70 || (sub_1B04520BC(v239, v240) & 1) == 0)
        {
          v206 = &unk_1EB6E26C0;
          v207 = &unk_1B0E9DE10;
          sub_1B0398EFC(v29, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v208 = v32;
          goto LABEL_172;
        }

        sub_1B03D06F8();
        sub_1B0E46E08();
        sub_1B0398EFC(v29, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v71 = v32;
LABEL_123:
        sub_1B0398EFC(v71, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      return;
    case 0xDuLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0xD && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
LABEL_109:
        sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10));
      }

      return;
    case 0xEuLL:
      v51 = swift_projectBox();
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0xE)
      {
        v52 = v51;
        v53 = v51[1];
        v239 = *v51;
        v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390) + 48);
        v55 = swift_projectBox();
        v56 = v55[1];
        v240 = *v55;
        sub_1B03B5C80(v52 + v54, v26, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03B5C80(v55 + v54, v23, &unk_1EB6E26C0, &unk_1B0E9DE10);
        if (v53 != v56 || (sub_1B04520BC(v239, v240) & 1) == 0)
        {
          sub_1B0398EFC(v23, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v208 = v26;
          v209 = &unk_1EB6E26C0;
          v210 = &unk_1B0E9DE10;
          goto LABEL_173;
        }

        sub_1B03D06F8();
        sub_1B0E46E08();
        sub_1B0398EFC(v23, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B0398EFC(v26, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      return;
    case 0xFuLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0xF)
      {
        v82 = v240 & 0xFFFFFFFFFFFFFF9;
        if (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18))
        {
          v83 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
          v84 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
          v240 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
          v85 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x30);
          v86 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x38);
          v87 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x39);
          v88 = *(v82 + 32);
          v89 = *(v82 + 40);
          v90 = *(v82 + 48);
          v91 = *(v82 + 56);
          v92 = *(v82 + 57);
          if (sub_1B04520BC(v83, *(v82 + 16)))
          {
            v93 = v240;

            sub_1B0CBBC34(v93, v84, v85, v86 | (v87 << 8), v88, v89, v90, v91 | (v92 << 8));
          }
        }
      }

      return;
    case 0x10uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x10)
      {
        v49 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v50 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1B0CE5398(v49, v50);
      }

      return;
    case 0x11uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x11 && (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v240 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v240 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v99 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v100 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v101 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v102 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x28);
        if ((sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) != 0 && (v100 & 1) == 0 && (v102 & 1) == 0 && (v101 | v99) < 0)
        {
          __break(1u);
        }
      }

      return;
    case 0x12uLL:
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35F8, &unk_1B0EC4DC0);
      v162 = swift_projectBox();
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x12)
      {
        v163 = v162;
        LODWORD(v238) = *(v162 + 16);
        v164 = v161[20];
        v165 = *(v162 + v164);
        LODWORD(v237) = *(v162 + v164 + 8);
        v166 = v161[24];
        v167 = *(v162 + v166);
        v234[2] = v165;
        v234[3] = v167;
        v168 = *(v162 + 8);
        v239 = *v162;
        v169 = v161[16];
        v170 = swift_projectBox();
        v172 = *v170;
        v171 = *(v170 + 8);
        LODWORD(v240) = *(v170 + 16);
        v173 = *(v170 + v164);
        LODWORD(v235) = *(v170 + v164 + 8);
        v174 = *(v170 + v166);
        v234[0] = v173;
        v234[1] = v174;
        v175 = v163 + v169;
        v176 = v236;
        sub_1B03B5C80(v175, v236, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03B5C80(v170 + v169, v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v168 != v171 || (sub_1B04520BC(v239, v172) & 1) == 0 || (sub_1B0CEC380(v238, v240) & 1) == 0)
        {
          v206 = &unk_1EB6E1AF0;
          v207 = &unk_1B0E9AF40;
          sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v208 = v176;
LABEL_172:
          v209 = v206;
          v210 = v207;
          goto LABEL_173;
        }

        sub_1B03D06F8();
        sub_1B0E46E08();
        sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v176, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      return;
    case 0x13uLL:
      v72 = v240;
      if (((v72 >> 58) & 0x3C | (v72 >> 1) & 3) == 0x13)
      {
        goto LABEL_165;
      }

      return;
    case 0x14uLL:
      v105 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v106 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v107 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x1C);
      v109 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v108 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x24);
      v110 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v111 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x38);
      v112 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x58);
      v300 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x48);
      v301 = v112;
      v113 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x78);
      v114 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x68);
      v115 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x98);
      v304 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x88);
      v305 = v115;
      v116 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0xA8);
      v309 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0xD8);
      v117 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0xC8);
      v118 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0xB8);
      v306 = v116;
      v307 = v118;
      v308 = v117;
      v302 = v114;
      v303 = v113;
      v298 = v110;
      v299 = v111;
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) != 0x14)
      {
        return;
      }

      v119 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v120 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v121 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x1C);
      v123 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v122 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x24);
      v124 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v125 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x38);
      v126 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x58);
      v288 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x48);
      v289 = v126;
      v127 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x78);
      v128 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x68);
      v129 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x98);
      v292 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x88);
      v293 = v129;
      v130 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0xA8);
      v297 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0xD8);
      v131 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0xC8);
      v132 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0xB8);
      v294 = v130;
      v295 = v132;
      v296 = v131;
      v290 = v128;
      v291 = v127;
      v286 = v124;
      v287 = v125;
      if ((v106 | (v106 << 32)) != (v120 | (v120 << 32)) || (sub_1B04520BC(v105, v119) & 1) == 0 || (sub_1B0CEC380(v107, v121) & 1) == 0 || v123 != v109 || v108 != v122)
      {
        return;
      }

      v283[8] = v306;
      v283[9] = v307;
      v283[10] = v308;
      v283[4] = v302;
      v283[5] = v303;
      v283[6] = v304;
      v283[7] = v305;
      v283[0] = v298;
      v283[1] = v299;
      v283[2] = v300;
      v283[3] = v301;
      *(&v283[20] + 8) = v295;
      *(&v283[21] + 8) = v296;
      *(&v283[16] + 8) = v291;
      *(&v283[17] + 8) = v292;
      *(&v283[18] + 8) = v293;
      *(&v283[19] + 8) = v294;
      *(&v283[15] + 8) = v290;
      *(&v283[11] + 8) = v286;
      *(&v283[12] + 8) = v287;
      *(&v283[13] + 8) = v288;
      *(&v283[14] + 8) = v289;
      v284[8] = v306;
      v284[9] = v307;
      v284[10] = v308;
      v284[4] = v302;
      v284[5] = v303;
      v284[6] = v304;
      v284[7] = v305;
      v284[0] = v298;
      v284[1] = v299;
      LOBYTE(v283[11]) = v309;
      BYTE8(v283[22]) = v297;
      v285 = v309;
      v284[2] = v300;
      v284[3] = v301;
      if (sub_1B07AB810(v284) == 1)
      {
        v282[8] = *(&v283[19] + 8);
        v282[9] = *(&v283[20] + 8);
        v282[10] = *(&v283[21] + 8);
        LOBYTE(v282[11]) = BYTE8(v283[22]);
        v282[5] = *(&v283[16] + 8);
        v282[6] = *(&v283[17] + 8);
        v282[7] = *(&v283[18] + 8);
        v282[0] = *(&v283[11] + 8);
        v282[1] = *(&v283[12] + 8);
        v282[2] = *(&v283[13] + 8);
        v282[3] = *(&v283[14] + 8);
        v282[4] = *(&v283[15] + 8);
        if (sub_1B07AB810(v282) == 1)
        {
          v278 = v283[8];
          v279 = v283[9];
          v280 = v283[10];
          v281 = v283[11];
          v274 = v283[4];
          v275 = v283[5];
          v276 = v283[6];
          v277 = v283[7];
          v270 = v283[0];
          v271 = v283[1];
          v272 = v283[2];
          v273 = v283[3];
          sub_1B03B5C80(&v298, v268, &qword_1EB6E4148, &qword_1B0EE17F0);
          sub_1B03B5C80(&v286, v268, &qword_1EB6E4148, &qword_1B0EE17F0);
          v133 = &v270;
LABEL_183:
          sub_1B0398EFC(v133, &qword_1EB6E4148, &qword_1B0EE17F0);
          return;
        }

        goto LABEL_178;
      }

      v282[8] = *(&v283[19] + 8);
      v282[9] = *(&v283[20] + 8);
      v282[10] = *(&v283[21] + 8);
      LOBYTE(v282[11]) = BYTE8(v283[22]);
      v282[5] = *(&v283[16] + 8);
      v282[6] = *(&v283[17] + 8);
      v282[7] = *(&v283[18] + 8);
      v282[0] = *(&v283[11] + 8);
      v282[1] = *(&v283[12] + 8);
      v282[2] = *(&v283[13] + 8);
      v282[3] = *(&v283[14] + 8);
      v282[4] = *(&v283[15] + 8);
      if (sub_1B07AB810(v282) != 1)
      {
        v268[8] = *(&v283[19] + 8);
        v268[9] = *(&v283[20] + 8);
        v268[10] = *(&v283[21] + 8);
        v269 = BYTE8(v283[22]);
        v268[4] = *(&v283[15] + 8);
        v268[5] = *(&v283[16] + 8);
        v268[6] = *(&v283[17] + 8);
        v268[7] = *(&v283[18] + 8);
        v268[0] = *(&v283[11] + 8);
        v268[1] = *(&v283[12] + 8);
        v268[2] = *(&v283[13] + 8);
        v268[3] = *(&v283[14] + 8);
        v278 = v283[8];
        v279 = v283[9];
        v280 = v283[10];
        v281 = v283[11];
        v274 = v283[4];
        v275 = v283[5];
        v276 = v283[6];
        v277 = v283[7];
        v270 = v283[0];
        v271 = v283[1];
        v272 = v283[2];
        v273 = v283[3];
        if (sub_1B075FACC(&v270) == 1)
        {
          v264 = *(&v283[19] + 8);
          v265 = *(&v283[20] + 8);
          v266 = *(&v283[21] + 8);
          v267 = BYTE8(v283[22]);
          v260 = *(&v283[15] + 8);
          v261 = *(&v283[16] + 8);
          v262 = *(&v283[17] + 8);
          v263 = *(&v283[18] + 8);
          v256 = *(&v283[11] + 8);
          v257 = *(&v283[12] + 8);
          v258 = *(&v283[13] + 8);
          v259 = *(&v283[14] + 8);
          if (sub_1B075FACC(&v256) == 1)
          {
            sub_1B03B5C80(&v298, v254, &qword_1EB6E4148, &qword_1B0EE17F0);
            sub_1B03B5C80(&v286, v254, &qword_1EB6E4148, &qword_1B0EE17F0);
            sub_1B0398EFC(v268, &qword_1EB6E4148, &qword_1B0EE17F0);
LABEL_182:
            v264 = v283[8];
            v265 = v283[9];
            v266 = v283[10];
            v267 = v283[11];
            v260 = v283[4];
            v261 = v283[5];
            v262 = v283[6];
            v263 = v283[7];
            v256 = v283[0];
            v257 = v283[1];
            v258 = v283[2];
            v259 = v283[3];
            v133 = &v256;
            goto LABEL_183;
          }

          goto LABEL_185;
        }

        v264 = *(&v283[19] + 8);
        v265 = *(&v283[20] + 8);
        v266 = *(&v283[21] + 8);
        v267 = BYTE8(v283[22]);
        v260 = *(&v283[15] + 8);
        v261 = *(&v283[16] + 8);
        v262 = *(&v283[17] + 8);
        v263 = *(&v283[18] + 8);
        v256 = *(&v283[11] + 8);
        v257 = *(&v283[12] + 8);
        v258 = *(&v283[13] + 8);
        v259 = *(&v283[14] + 8);
        if (sub_1B075FACC(&v256) == 1)
        {
LABEL_185:
          sub_1B03B5C80(&v298, v254, &qword_1EB6E4148, &qword_1B0EE17F0);
          v211 = v254;
LABEL_186:
          sub_1B03B5C80(&v286, v211, &qword_1EB6E4148, &qword_1B0EE17F0);
          sub_1B0398EFC(v268, &qword_1EB6E4148, &qword_1B0EE17F0);
          goto LABEL_187;
        }

        v254[8] = v278;
        v254[9] = v279;
        v254[10] = v280;
        v255 = v281;
        v254[4] = v274;
        v254[5] = v275;
        v254[6] = v276;
        v254[7] = v277;
        v254[0] = v270;
        v254[1] = v271;
        v254[2] = v272;
        v254[3] = v273;
        if (sub_1B0717014(v254) == 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v213 = v212[5];
          v314 = v212[4];
          v315 = v213;
          v316 = v212[6];
          *&v317 = *(v212 + 14);
          v214 = v212[1];
          v310 = *v212;
          v311 = v214;
          v215 = v212[3];
          v312 = v212[2];
          v313 = v215;
          v250 = v264;
          v251 = v265;
          v252 = v266;
          v253 = v267;
          v246 = v260;
          v247 = v261;
          v248 = v262;
          v249 = v263;
          v242 = v256;
          v243 = v257;
          v244 = v258;
          v245 = v259;
          if (sub_1B0717014(&v242) == 1)
          {
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
            v217 = v216[5];
            v325 = v216[4];
            v326 = v217;
            v327 = v216[6];
            v218 = v216[1];
            v321 = *v216;
            v322 = v218;
            v219 = v216[3];
            v323 = v216[2];
            *&v328 = *(v216 + 14);
            v324 = v219;
            sub_1B03B5C80(&v298, v241, &qword_1EB6E4148, &qword_1B0EE17F0);
            sub_1B03B5C80(&v286, v241, &qword_1EB6E4148, &qword_1B0EE17F0);
            v220 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v310, &v321);
            goto LABEL_194;
          }
        }

        else
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v222 = v221[6];
          v317 = v221[7];
          v223 = v221[9];
          v318 = v221[8];
          v319 = v223;
          v320 = v221[10];
          v224 = v221[5];
          v314 = v221[4];
          v315 = v224;
          v316 = v222;
          v225 = v221[1];
          v310 = *v221;
          v311 = v225;
          v226 = v221[3];
          v312 = v221[2];
          v313 = v226;
          v253 = v267;
          v251 = v265;
          v252 = v266;
          v249 = v263;
          v250 = v264;
          v247 = v261;
          v248 = v262;
          v245 = v259;
          v246 = v260;
          v243 = v257;
          v244 = v258;
          v242 = v256;
          if (sub_1B0717014(&v242) != 1)
          {
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
            v228 = v227[6];
            v328 = v227[7];
            v229 = v227[9];
            v329 = v227[8];
            v330 = v229;
            v331 = v227[10];
            v230 = v227[2];
            v324 = v227[3];
            v231 = v227[5];
            v325 = v227[4];
            v326 = v231;
            v327 = v228;
            v232 = v227[1];
            v321 = *v227;
            v322 = v232;
            v323 = v230;
            sub_1B03B5C80(&v298, v241, &qword_1EB6E4148, &qword_1B0EE17F0);
            sub_1B03B5C80(&v286, v241, &qword_1EB6E4148, &qword_1B0EE17F0);
            v220 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v310, &v321);
LABEL_194:
            v233 = v220;
            sub_1B0398EFC(v268, &qword_1EB6E4148, &qword_1B0EE17F0);
            if (v233)
            {
              goto LABEL_182;
            }

LABEL_187:
            v264 = v283[8];
            v265 = v283[9];
            v266 = v283[10];
            v267 = v283[11];
            v260 = v283[4];
            v261 = v283[5];
            v262 = v283[6];
            v263 = v283[7];
            v256 = v283[0];
            v257 = v283[1];
            v258 = v283[2];
            v259 = v283[3];
            v209 = &qword_1EB6E4148;
            v210 = &qword_1B0EE17F0;
            v208 = &v256;
            goto LABEL_173;
          }
        }

        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        sub_1B03B5C80(&v298, v241, &qword_1EB6E4148, &qword_1B0EE17F0);
        v211 = v241;
        goto LABEL_186;
      }

LABEL_178:
      memcpy(v282, v283, 0x169uLL);
      sub_1B03B5C80(&v298, &v270, &qword_1EB6E4148, &qword_1B0EE17F0);
      sub_1B03B5C80(&v286, &v270, &qword_1EB6E4148, &qword_1B0EE17F0);
      v209 = &unk_1EB6E60D8;
      v210 = &unk_1B0EE17F8;
      v208 = v282;
LABEL_173:
      sub_1B0398EFC(v208, v209, v210);
      return;
    case 0x15uLL:
      v142 = swift_projectBox();
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x15)
      {
        v143 = v142;
        v144 = *v142;
        v145 = *(v142 + 8);
        LODWORD(v238) = *(v142 + 12);
        v146 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35E8, &qword_1B0EA2048) + 64);
        v147 = swift_projectBox();
        v148 = *v147;
        v149 = *(v147 + 8);
        v150 = *(v147 + 12);
        v151 = v143 + v146;
        v152 = v239;
        sub_1B0CBE54C(v151, v239, type metadata accessor for MessageHeader);
        v153 = v147 + v146;
        v154 = v237;
        sub_1B0CBE54C(v153, v237, type metadata accessor for MessageHeader);
        if ((v145 | (v145 << 32)) == (v149 | (v149 << 32)) && (sub_1B04520BC(v144, v148) & 1) != 0 && v150 == v238)
        {
          sub_1B0CCFAD8();
          sub_1B0CBE5B4(v154, type metadata accessor for MessageHeader);
          sub_1B0CBE5B4(v152, type metadata accessor for MessageHeader);
        }

        else
        {
          sub_1B0CBE5B4(v154, type metadata accessor for MessageHeader);
          sub_1B0CBE5B4(v152, type metadata accessor for MessageHeader);
        }
      }

      return;
    case 0x16uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x16)
      {
        v192 = swift_projectBox();
        v193 = swift_projectBox();
        sub_1B0CBE54C(v192, v11, type metadata accessor for MessageSectionData);
        sub_1B0CBE54C(v193, v8, type metadata accessor for MessageSectionData);
        _s16IMAP2Persistence18MessageSectionDataV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v8);
        sub_1B0CBE5B4(v8, type metadata accessor for MessageSectionData);
        sub_1B0CBE5B4(v11, type metadata accessor for MessageSectionData);
      }

      return;
    case 0x17uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x17 && (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v240 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v240 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v196 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x1C);
        v197 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x1C);
        if (sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          sub_1B0CEC380(v196, v197);
        }
      }

      return;
    case 0x18uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x18 && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v73 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v74 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1B0CCE54C(v73, v74);
        }
      }

      return;
    case 0x19uLL:
      v72 = v240;
      if (((v72 >> 58) & 0x3C | (v72 >> 1) & 3) == 0x19)
      {
        goto LABEL_165;
      }

      return;
    case 0x1AuLL:
      v72 = v240;
      if (((v72 >> 58) & 0x3C | (v72 >> 1) & 3) == 0x1A)
      {
LABEL_165:
        v198 = v37 & 0xFFFFFFFFFFFFFF9;
        v199 = v72 & 0xFFFFFFFFFFFFFF9;
        if (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v72 & 0xFFFFFFFFFFFFFF9) + 0x18))
        {
          goto LABEL_166;
        }
      }

      return;
    case 0x1BuLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x1B && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v47 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v48 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1B0CE54A4(v47, v48);
        }
      }

      return;
    case 0x1CuLL:
      v191 = v240;
      if (((v191 >> 58) & 0x3C | (v191 >> 1) & 3) == 0x1C)
      {
        goto LABEL_153;
      }

      return;
    case 0x1DuLL:
      v98 = v240;
      if (((v98 >> 58) & 0x3C | (v98 >> 1) & 3) == 0x1D)
      {
        goto LABEL_156;
      }

      return;
    case 0x1EuLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x1E && (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v240 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v240 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v187 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v188 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v189 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v190 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x28);
        if (sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          sub_1B0AB8858(v187, v188, v189, v190);
        }
      }

      return;
    case 0x1FuLL:
      v98 = v240;
      if (((v98 >> 58) & 0x3C | (v98 >> 1) & 3) == 0x1F)
      {
LABEL_156:
        if ((*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v98 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v98 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
        {
          v200 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
          v201 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
          v202 = *((v98 & 0xFFFFFFFFFFFFFF9) + 0x20);
          v203 = *((v98 & 0xFFFFFFFFFFFFFF9) + 0x28);
          if (sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v98 & 0xFFFFFFFFFFFFFF9) + 0x10)))
          {

            sub_1B0AB8858(v200, v201, v202, v203);
          }
        }
      }

      return;
    case 0x20uLL:
      v191 = v240;
      if (((v191 >> 58) & 0x3C | (v191 >> 1) & 3) == 0x20)
      {
LABEL_153:
        v198 = v37 & 0xFFFFFFFFFFFFFF9;
        v199 = v191 & 0xFFFFFFFFFFFFFF9;
        if ((*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v191 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v191 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
        {
LABEL_166:
          sub_1B04520BC(*(v198 + 16), *(v199 + 16));
        }
      }

      return;
    case 0x21uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x21 && (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v240 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v240 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v57 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v58 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1B0CE55B0(v57, v58);
        }
      }

      return;
    case 0x22uLL:
      v46 = v240;
      if (((v46 >> 58) & 0x3C | (v46 >> 1) & 3) == 0x22)
      {
        goto LABEL_70;
      }

      return;
    case 0x23uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x23)
      {
        v44 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v45 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1B0CCDE80(v44, v45);
      }

      return;
    case 0x24uLL:
      v46 = v240;
      if (((v46 >> 58) & 0x3C | (v46 >> 1) & 3) == 0x24)
      {
LABEL_70:
        if (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v46 & 0xFFFFFFFFFFFFFF9) + 0x18))
        {
          sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v46 & 0xFFFFFFFFFFFFFF9) + 0x10));
        }
      }

      return;
    case 0x25uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x25)
      {
        v40 = swift_projectBox();
        v41 = swift_projectBox();
        v42 = v235;
        sub_1B0CBE54C(v40, v235, type metadata accessor for Activity);
        v43 = v238;
        sub_1B0CBE54C(v41, v238, type metadata accessor for Activity);
        _s16IMAP2Persistence8ActivityV23__derived_struct_equalsySbAC_ACtFZ_0(v42, v43);
        sub_1B0CBE5B4(v43, type metadata accessor for Activity);
        sub_1B0CBE5B4(v42, type metadata accessor for Activity);
      }

      return;
    case 0x26uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x26)
      {
        v204 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v205 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CE5798(v204, v205);
LABEL_163:
      }

      return;
    case 0x27uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x27 && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10) == *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10))
      {
        v194 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v195 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x18);

        sub_1B0CE5920(v194, v195);
      }

      return;
    case 0x28uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x28)
      {
        v63 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v64 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);

        goto LABEL_43;
      }

      return;
    case 0x29uLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x29 && (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v240 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v240 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v103 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v104 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1B04520BC(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1B03D1D9C(v103, v104);
        }
      }

      return;
    case 0x2AuLL:
      if (((v240 >> 58) & 0x3C | (v240 >> 1) & 3) == 0x2A)
      {
        v63 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v64 = *((v240 & 0xFFFFFFFFFFFFFF9) + 0x10);

LABEL_43:
        sub_1B0BE9028(v63, v64);
      }

      return;
    default:
      return;
  }
}

BOOL sub_1B0CBDF78(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a4 != a1)
  {
    return 0;
  }

  if (BYTE4(a1) == 2)
  {
    if (BYTE4(a4) != 2)
    {
      return 0;
    }
  }

  else
  {
    if (BYTE4(a4) == 2)
    {
      return 0;
    }

    v6 = a3;
    v7 = a6;
    v8 = sub_1B0CC9810(__PAIR64__(a2, HIDWORD(a1)) & 0xFFFFFFFF01010101, SHIDWORD(a2), __PAIR64__(a5, HIDWORD(a4)) & 0xFFFFFFFF01010101, SHIDWORD(a5));
    a3 = v6;
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    v9 = a6;
    v10 = a3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v10) = sub_1B0AFDF14(v10, v9);

    return (v10 & 1) != 0;
  }

  return !a6;
}

uint64_t sub_1B0CBE04C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  result = 0;
  if (a1 == a5 && a6 == a2)
  {
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a3 == a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1B0CBE094()
{
  result = qword_1EB6E60D0;
  if (!qword_1EB6E60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E60D0);
  }

  return result;
}

unint64_t sub_1B0CBE0EC()
{
  result = qword_1EB6DC9F8;
  if (!qword_1EB6DC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC9F8);
  }

  return result;
}

uint64_t sub_1B0CBE140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x54 && *(a1 + 8))
  {
    return (*a1 + 84);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x53)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0CBE19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x53)
  {
    *result = a2 - 84;
    if (a3 >= 0x54)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x54)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1B0CBE200(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x2C)
  {
    *result = ((a2 << 58) | (2 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 44)) | 0xB000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Action.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Action.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0CBE3AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0CBE3CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for MailboxSyncStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}