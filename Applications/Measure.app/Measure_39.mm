unint64_t *sub_10029EC4C(unint64_t *result, unint64_t *a2)
{
  v4 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
  if (v4 >= 0x7FF0000000000001)
  {
    *result = 0x7FFFFFFFFFFFFFFFLL;
    return result;
  }

  if (v4 == 0x7FF0000000000000)
  {
    if (*a2 == 0x7FF0000000000000)
    {
      *result = 0x7FF0000000000000;
    }

    else
    {
      *result = 0;
    }

    return result;
  }

  v51[3] = v2;
  v51[4] = v3;
  v5 = result;
  if (atomic_load_explicit(byte_1004BD6A0, memory_order_acquire))
  {
    if (atomic_load_explicit(byte_1004BD6B0, memory_order_acquire))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v31 = a2;
    sub_1003C867C();
    a2 = v31;
    if (atomic_load_explicit(byte_1004BD6B0, memory_order_acquire))
    {
LABEL_8:
      if (atomic_load_explicit(byte_1004BD6C0, memory_order_acquire))
      {
        goto LABEL_9;
      }

      goto LABEL_87;
    }
  }

  v32 = a2;
  sub_1003C86F0();
  a2 = v32;
  if (atomic_load_explicit(byte_1004BD6C0, memory_order_acquire))
  {
LABEL_9:
    if (atomic_load_explicit(byte_1004BD6D0, memory_order_acquire))
    {
      goto LABEL_10;
    }

    goto LABEL_88;
  }

LABEL_87:
  v33 = a2;
  sub_1003C8770();
  a2 = v33;
  if (atomic_load_explicit(byte_1004BD6D0, memory_order_acquire))
  {
LABEL_10:
    if (atomic_load_explicit(byte_1004BD6E0, memory_order_acquire))
    {
      goto LABEL_11;
    }

LABEL_89:
    v35 = a2;
    sub_1003C8870();
    a2 = v35;
    if (atomic_load_explicit(byte_1004BD6F0, memory_order_acquire))
    {
      goto LABEL_12;
    }

    goto LABEL_90;
  }

LABEL_88:
  v34 = a2;
  sub_1003C87F0();
  a2 = v34;
  if ((atomic_load_explicit(byte_1004BD6E0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_11:
  if (atomic_load_explicit(byte_1004BD6F0, memory_order_acquire))
  {
    goto LABEL_12;
  }

LABEL_90:
  v36 = a2;
  sub_1003C88F0();
  a2 = v36;
LABEL_12:
  v6 = a2;
  v7 = *a2;
  if ((v7 & 0x7FE0000000000000) < 0x4090000000000001)
  {
    sub_10029E004(v6, &qword_1003E3D38, v51);
    v8 = v51[0];
  }

  else
  {
    v8 = v7 & 0x8000000000000000 | 0x4107700000000000;
  }

  v51[0] = v8;
  v9 = v8 & 0xFFFFFFFFFFFFFLL;
  v10 = (v8 & 0xFFFFFFFFFFFFFLL) == 0;
  v11 = (v8 >> 52) & 0x7FF;
  if (v11)
  {
    v12 = v9 | 0x10000000000000;
  }

  else
  {
    v12 = v8 & 0xFFFFFFFFFFFFFLL;
  }

  if (v11 != 2047)
  {
    v10 = 1;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
  }

  if (v11 <= 0x426)
  {
    if (v11 < 0x3E9)
    {
      v12 = v12 != 0;
LABEL_29:
      v13 = ((v12 + 2048) >> 12) & ~((v12 & 0xFFF) == 2048);
      if (v10)
      {
        v14 = -v13;
      }

      else
      {
        v14 = ((v12 + 2048) >> 12) & ~((v12 & 0xFFF) == 2048);
      }

      if (!v13 || ((v10 ^ (v14 >= 0)) & 1) != 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v12 = ((v8 & 0xFFFFFFFFFFFFFLL | 0x10000000000000) >> (39 - v11)) | ((v8 & 0xFFFFFFFFFFFFFLL | 0x10000000000000) << ((v8 >> 52) + 25) != 0);
  }

  if (v12 <= 0xFFFFFFFF7FFLL)
  {
    goto LABEL_29;
  }

LABEL_34:
  if (v10)
  {
    v14 = 0x80000000;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

LABEL_37:
  v15 = v14 >> 6;
  if (v14 >> 6 >= 1024)
  {
    v15 = 1024;
  }

  if (v15 <= -1023)
  {
    v15 = -1023;
  }

  v50 = (v15 + 1023) << 52;
  v16 = (v8 >> 52) & 0x7FF;
  if (v16 > 0x3FE)
  {
    if (v16 < 0x433)
    {
      v22 = 1 << (51 - (v8 >> 52));
      v23 = v8 + (v22 >> 1);
      v24 = -1;
      if ((v23 & (v22 - 1)) == 0)
      {
        v24 = ~v22;
      }

      v19 = v24 & -v22 & v23;
    }

    else
    {
      v19 = v8;
      if (v9)
      {
        v19 = v8;
        if (v16 == 2047)
        {
          if ((v8 & 0x7FFFFFFFFFFFFLL) != 0 && (v8 & 0x7FF8000000000000) == 0x7FF0000000000000 || (~v8 & 0x7FF0000000000000) == 0)
          {
            v19 = v8 | 0x8000000000000;
          }

          else
          {
            v19 = 0x8000000000000;
          }
        }
      }
    }
  }

  else
  {
    v17 = v16 != 1022 || v9 == 0;
    v18 = v8 & 0x8000000000000000 | 0x3FF0000000000000;
    if (v17)
    {
      v18 = v8 & 0x8000000000000000;
    }

    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v8;
    }
  }

  v25 = v8 >> 63;
  if (((v19 ^ v8) & 0x8000000000000000) != 0)
  {
    sub_1002A062C(&v49, v8, v19, v25);
  }

  else
  {
    sub_1002A0834(&v49, v8, v19, v25);
  }

  sub_10029E004(&v49, &qword_1003E3D40, v51);
  sub_10029E004(&v50, &qword_1003E3D30, &v48);
  v47 = qword_1003E3E58[v14 & 0x3F];
  sub_10029E004(&v48, &v47, &v49);
  sub_10029E004(&qword_1004BD6E8, v51, &v37);
  v26 = v37 >> 63;
  if (((qword_1004BD6D8 ^ v37) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v38, v37, qword_1004BD6D8, v26);
  }

  else
  {
    sub_1002A062C(&v38, v37, qword_1004BD6D8, v26);
  }

  sub_10029E004(&v38, v51, &v39);
  v27 = v39 >> 63;
  if (((qword_1004BD6C8 ^ v39) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v40, v39, qword_1004BD6C8, v27);
  }

  else
  {
    sub_1002A062C(&v40, v39, qword_1004BD6C8, v27);
  }

  sub_10029E004(&v40, v51, &v41);
  v28 = v41 >> 63;
  if (((qword_1004BD6B8 ^ v41) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v42, v41, qword_1004BD6B8, v28);
  }

  else
  {
    sub_1002A062C(&v42, v41, qword_1004BD6B8, v28);
  }

  sub_10029E004(&v42, v51, &v43);
  v29 = v43 >> 63;
  if (((qword_1004BD6A8 ^ v43) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v44, v43, qword_1004BD6A8, v29);
  }

  else
  {
    sub_1002A062C(&v44, v43, qword_1004BD6A8, v29);
  }

  sub_10029E004(&v44, v51, &v45);
  v30 = v45 >> 63;
  if (((qword_1004BD698 ^ v45) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v46, v45, qword_1004BD698, v30);
  }

  else
  {
    sub_1002A062C(&v46, v45, qword_1004BD698, v30);
  }

  return sub_10029E004(&v49, &v46, v5);
}

unint64_t *sub_10029F110(unint64_t *result, void *a2)
{
  v4 = *a2;
  v5 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 > 0x7FF0000000000000)
  {
    goto LABEL_2;
  }

  if ((~v4 & 0x7FF0000000000000) != 0 || (v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (v4 < 0)
    {
      if (v5)
      {
LABEL_2:
        *result = 0x7FFFFFFFFFFFFFFFLL;
        return result;
      }
    }

    else if (v4)
    {
      goto LABEL_10;
    }

    *result = 0xFFF0000000000000;
    return result;
  }

LABEL_10:
  v56[7] = v2;
  v56[8] = v3;
  v7 = result;
  if (atomic_load_explicit(byte_1004BD700, memory_order_acquire))
  {
    if (atomic_load_explicit(byte_1004BD710, memory_order_acquire))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v27 = a2;
    sub_1003C8970();
    a2 = v27;
    if (atomic_load_explicit(byte_1004BD710, memory_order_acquire))
    {
LABEL_12:
      if (atomic_load_explicit(byte_1004BD720, memory_order_acquire))
      {
        goto LABEL_13;
      }

      goto LABEL_67;
    }
  }

  v28 = a2;
  sub_1003C89BC();
  a2 = v28;
  if (atomic_load_explicit(byte_1004BD720, memory_order_acquire))
  {
LABEL_13:
    if (atomic_load_explicit(byte_1004BD730, memory_order_acquire))
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_67:
  v29 = a2;
  sub_1003C8A30();
  a2 = v29;
  if (atomic_load_explicit(byte_1004BD730, memory_order_acquire))
  {
LABEL_14:
    if (atomic_load_explicit(byte_1004BD740, memory_order_acquire))
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

LABEL_68:
  v30 = a2;
  sub_1003C8AA4();
  a2 = v30;
  if (atomic_load_explicit(byte_1004BD740, memory_order_acquire))
  {
LABEL_15:
    if (atomic_load_explicit(byte_1004BD750, memory_order_acquire))
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_69:
  v31 = a2;
  sub_1003C8B18();
  a2 = v31;
  if (atomic_load_explicit(byte_1004BD750, memory_order_acquire))
  {
LABEL_16:
    if (atomic_load_explicit(byte_1004BD760, memory_order_acquire))
    {
      goto LABEL_17;
    }

LABEL_71:
    v33 = a2;
    sub_1003C8C00();
    a2 = v33;
    if (atomic_load_explicit(byte_1004BD770, memory_order_acquire))
    {
      goto LABEL_18;
    }

LABEL_72:
    v34 = a2;
    sub_1003C8C74();
    a2 = v34;
    goto LABEL_18;
  }

LABEL_70:
  v32 = a2;
  sub_1003C8B8C();
  a2 = v32;
  if ((atomic_load_explicit(byte_1004BD760, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_17:
  if ((atomic_load_explicit(byte_1004BD770, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_18:
  v8 = *a2;
  v9 = *a2 >> 44;
  v55 = *a2 & 0xFFFFFFFFFFFLL | 0x3FF0000000000000;
  sub_1002A0834(&v55, v55, 0x3FF0000000000000uLL, 0);
  v10 = qword_1003E4060[2 * v9];
  v54 = qword_1003E4060[(2 * v9) | 1u];
  sub_10029E004(&v55, &v54, &v53);
  if (v9 == 255)
  {
    v50 = 0x4080000000000000;
    v51 = 0xBFF0000000000000;
    sub_10029E2BC(&v51, &v50, &v52);
    v11 = v53 >> 63;
    if (((v52 ^ v53) & 0x8000000000000000) != 0)
    {
      sub_1002A0834(v56, v53, v52, v11);
    }

    else
    {
      sub_1002A062C(v56, v53, v52, v11);
    }

    v53 = v56[0];
  }

  sub_10029E004(&v53, &v53, v56);
  v12 = ((v8 >> 52) & 0x7FF) - 1023;
  if (((v8 >> 52) & 0x7FF) == 0x3FF)
  {
    v17 = 0;
  }

  else
  {
    if (v12 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1023 - ((v8 >> 52) & 0x7FF);
    }

    if (v13 >= 0x100)
    {
      v14 = 16;
    }

    else
    {
      v14 = 24;
    }

    v15 = byte_1003E3D58[(v13 << v14) >> 24];
    if (v13 >= 0x100)
    {
      v16 = 37;
    }

    else
    {
      v16 = 45;
    }

    v17 = (v13 << (v15 + v16)) + ((v12 >> 31) << 63) + ((1074 - (v15 + v16)) << 52);
  }

  v49 = v17;
  sub_10029E004(&unk_1003E3D48, &v49, &v50);
  v18 = v50 >> 63;
  if (((v50 ^ v10) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v51, v50, v10, v18);
  }

  else
  {
    sub_1002A062C(&v51, v50, v10, v18);
  }

  sub_10029E004(&qword_1004BD768, v56, &v42);
  v19 = v42 >> 63;
  if (((qword_1004BD748 ^ v42) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v43, v42, qword_1004BD748, v19);
  }

  else
  {
    sub_1002A062C(&v43, v42, qword_1004BD748, v19);
  }

  sub_10029E004(&v43, v56, &v44);
  v20 = v44 >> 63;
  if (((qword_1004BD728 ^ v44) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v45, v44, qword_1004BD728, v20);
  }

  else
  {
    sub_1002A062C(&v45, v44, qword_1004BD728, v20);
  }

  sub_10029E004(&v45, v56, &v46);
  v21 = v46 >> 63;
  if (((qword_1004BD708 ^ v46) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v47, v46, qword_1004BD708, v21);
  }

  else
  {
    sub_1002A062C(&v47, v46, qword_1004BD708, v21);
  }

  sub_10029E004(&v47, v56, &v48);
  v22 = v51 >> 63;
  if (((v48 ^ v51) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v52, v51, v48, v22);
  }

  else
  {
    sub_1002A062C(&v52, v51, v48, v22);
  }

  sub_10029E004(&qword_1004BD758, v56, &v35);
  v23 = v35 >> 63;
  if (((qword_1004BD738 ^ v35) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v36, v35, qword_1004BD738, v23);
  }

  else
  {
    sub_1002A062C(&v36, v35, qword_1004BD738, v23);
  }

  sub_10029E004(&v36, v56, &v37);
  v24 = v37 >> 63;
  if (((qword_1004BD718 ^ v37) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v38, v37, qword_1004BD718, v24);
  }

  else
  {
    sub_1002A062C(&v38, v37, qword_1004BD718, v24);
  }

  sub_10029E004(&v38, v56, &v39);
  v25 = v39 >> 63;
  if (((qword_1004BD6F8 ^ v39) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v40, v39, qword_1004BD6F8, v25);
  }

  else
  {
    sub_1002A062C(&v40, v39, qword_1004BD6F8, v25);
  }

  sub_10029E004(&v40, &v53, &v41);
  v26 = v52 >> 63;
  if (((v41 ^ v52) & 0x8000000000000000) != 0)
  {
    return sub_1002A0834(v7, v52, v41, v26);
  }

  else
  {
    return sub_1002A062C(v7, v52, v41, v26);
  }
}

uint64_t sub_10029F608@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v53 = *a2;
  v54 = v3;
  if (atomic_load_explicit(byte_1004BD7A0, memory_order_acquire))
  {
    if (atomic_load_explicit(byte_1004BD7B0, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v49 = a3;
    sub_1003C8CE8();
    a3 = v49;
    if (atomic_load_explicit(byte_1004BD7B0, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(byte_1004BD7C0, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_172:
      v51 = a3;
      sub_1003C8D7C();
      a3 = v51;
      if (atomic_load_explicit(byte_1004BD7D0, memory_order_acquire))
      {
        goto LABEL_5;
      }

LABEL_173:
      v52 = a3;
      sub_1003C8DC8();
      a3 = v52;
      goto LABEL_5;
    }
  }

  v50 = a3;
  sub_1003C8D30();
  a3 = v50;
  if ((atomic_load_explicit(byte_1004BD7C0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_172;
  }

LABEL_4:
  if ((atomic_load_explicit(byte_1004BD7D0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_173;
  }

LABEL_5:
  v4 = v53;
  v5 = v54;
  v6 = qword_1004BD798;
  v7 = (qword_1004BD798 & 0xFFFFFFFFFFFFFLL) != 0 && (~qword_1004BD798 & 0x7FF0000000000000) == 0;
  if (v7 || (~v53 & 0x7FF0000000000000) == 0 && (v53 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_15;
  }

  if (((qword_1004BD798 ^ v53) & 0x8000000000000000) == 0)
  {
    if (qword_1004BD798 != v53)
    {
      v8 = (qword_1004BD798 < 0) ^ (qword_1004BD798 < v53);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((qword_1004BD798 & 0x8000000000000000) == 0)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = ((qword_1004BD798 | v53) & 0x7FFFFFFFFFFFFFFFLL) != 0;
LABEL_16:
  v9 = v54 & 0x7FFFFFFFFFFFFFFFLL;
  v10 = v53 & 0x7FFFFFFFFFFFFFFFLL;
  v11 = qword_1004BD7A8;
  v12 = (qword_1004BD7A8 & 0xFFFFFFFFFFFFFLL) != 0 && (~qword_1004BD7A8 & 0x7FF0000000000000) == 0;
  if (v12 || (~v54 & 0x7FF0000000000000) == 0 && (v54 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v13 = 0;
    *a3 = 0;
    result = 0x7FF0000000000001;
    if (v10 >= 0x7FF0000000000001)
    {
LABEL_48:
      if (a3 != &qword_1004BD7C8)
      {
        *a3 = qword_1004BD7C8;
      }

      return result;
    }
  }

  else
  {
    v13 = qword_1004BD7A8 < v9;
    if (qword_1004BD7A8 < 0)
    {
      v13 = ((qword_1004BD7A8 | v54) & 0x7FFFFFFFFFFFFFFFLL) != 0;
    }

    *a3 = 0;
    result = 0x7FF0000000000001;
    if (v10 >= 0x7FF0000000000001)
    {
      goto LABEL_48;
    }
  }

  if (v10 != 0x7FF0000000000000)
  {
    result = v4 & 0x7FF0000000000000;
    v20 = (v4 & 0x7FF0000000000000) != 0x7FF0000000000000;
    v21 = v4 & 0xFFFFFFFFFFFFFLL;
    if ((v4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v20 = 1;
    }

    if (v20)
    {
      if (!v7 && (v4 == v6 || ((v6 | v4) & 0x7FFFFFFFFFFFFFFFLL) == 0))
      {
        if (a3 != &qword_1004BD7A8)
        {
          *a3 = v11;
        }

        return result;
      }

      if (!v12 && (v4 == v11 || ((v11 | v4) & 0x7FFFFFFFFFFFFFFFLL) == 0))
      {
        *a3 = v5;
        return result;
      }
    }

    if (v9 >= 0x7FF0000000000001)
    {
      goto LABEL_48;
    }

    if (v9 == 0x7FF0000000000000)
    {
      if (!v7 && v20)
      {
        if (((v6 ^ v4) & 0x8000000000000000) != 0)
        {
          if ((v4 & 0x8000000000000000) != 0 && ((v6 | v4) & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
LABEL_137:
            v19 = &qword_1004BD798;
            if (&qword_1004BD798 == a3)
            {
              return result;
            }

            goto LABEL_109;
          }
        }

        else if (v4 != v6 && ((v4 & 0x8000000000000000) != 0) != v4 < v6)
        {
          goto LABEL_137;
        }
      }

      v19 = &qword_1004BD7B8;
      if (&qword_1004BD7B8 == a3)
      {
        return result;
      }

      goto LABEL_109;
    }

    v25 = (v4 >> 52) & 0x7FF;
    if (v25 > 0x3FE)
    {
      if (v25 < 0x433)
      {
        v30 = 1 << (51 - (v4 >> 52));
        v31 = v4 + (v30 >> 1);
        v32 = -1;
        if ((v31 & (v30 - 1)) == 0)
        {
          v32 = ~v30;
        }

        v26 = v32 & -v30 & v31;
      }

      else
      {
        v26 = v4;
        if (v21 && v25 == 2047)
        {
          v28 = (v4 & 0x7FFFFFFFFFFFFLL) != 0 && (v4 & 0x7FF8000000000000) == 0x7FF0000000000000;
          v29 = v28 || result == 0x7FF0000000000000;
          v26 = v4 | 0x8000000000000;
          if (!v29)
          {
            v26 = 0x8000000000000;
          }
        }
      }
    }

    else
    {
      v26 = v4;
      if (v10)
      {
        v26 = v4 & 0x8000000000000000;
        if (v25 == 1022 && v21 != 0)
        {
          v26 |= 0x3FF0000000000000uLL;
        }
      }
    }

    if (!v20 || (~v26 & 0x7FF0000000000000) == 0 && (v26 & 0xFFFFFFFFFFFFFLL) != 0 || v4 != v26 && ((v26 | v4) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v33 = (~v5 & 0x7FF0000000000000) == 0;
      if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v33 = 0;
      }

      if (!v33 && !v7)
      {
        if (((v6 ^ v5) & 0x8000000000000000) != 0)
        {
          if (v5 < 0 && ((v6 | v5) & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_48;
          }
        }

        else if (v5 != v6 && v5 < 0 != v5 < v6)
        {
          goto LABEL_48;
        }
      }

      v34 = a3;
      if (sub_10029E5A0(&v54, &qword_1004BD798))
      {
        result = sub_10029E5F0(&v53, &qword_1004BD798);
        if (result)
        {
          v35 = &qword_1004BD7B8;
        }

        else
        {
          result = sub_10029E5A0(&v53, &qword_1004BD798);
          v35 = &qword_1004BD7A8;
          if (!result)
          {
            v35 = &qword_1004BD798;
          }
        }

        if (v35 != v34)
        {
          *v34 = *v35;
        }
      }

      else
      {
        v58 = v5;
        sub_10029F110(&v57, &v58);
        sub_10029E004(&v53, &v57, &v58);
        return sub_10029EC4C(v34, &v58);
      }

      return result;
    }

    v36 = (v4 >> 52) & 0x7FF;
    if (((v4 >> 52) & 0x7FF) != 0)
    {
      v37 = v21 | 0x10000000000000;
    }

    else
    {
      v37 = v4 & 0xFFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v38 = v36 == 2047;
    }

    else
    {
      v38 = 0;
    }

    v40 = !v38 && (v4 & 0x8000000000000000) != 0;
    if (v36 <= 0x426)
    {
      if (v36 < 0x3E9)
      {
        v37 = v37 != 0;
        goto LABEL_142;
      }

      v37 = ((v21 | 0x10000000000000uLL) >> (39 - (v4 >> 52))) | ((v21 | 0x10000000000000) << ((v4 >> 52) + 25) != 0);
    }

    if (v37 > 0xFFFFFFFF7FFLL)
    {
LABEL_147:
      if (v40)
      {
        v42 = 0x80000000;
      }

      else
      {
        v42 = 0x7FFFFFFF;
      }

LABEL_150:
      v43 = (~v5 & 0x7FF0000000000000) != 0;
      if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v43 = 1;
      }

      if (v9 || !v43)
      {
        v56 = v5;
        v57 = 0x3FF0000000000000;
        if (v42 >= 0)
        {
          v45 = v42;
        }

        else
        {
          v45 = -v42;
        }

        if (v42 < 0)
        {
          v55 = 0x3FF0000000000000;
          v46 = a3;
          sub_10029E2BC(&v55, &v56, &v58);
          a3 = v46;
          v56 = v58;
        }

        v47 = a3;
        if (v45 >= 2)
        {
          do
          {
            if (v45)
            {
              sub_10029E004(&v57, &v56, &v58);
              v57 = v58;
            }

            sub_10029E004(&v56, &v56, &v58);
            v56 = v58;
            v48 = v45 > 3;
            v45 >>= 1;
          }

          while (v48);
        }

        result = sub_10029E004(&v57, &v56, &v58);
        *v47 = v58;
      }

      else
      {
        v44 = 0x3FF0000000000000;
        if (v42)
        {
          v44 = 0;
        }

        if (v42 < 0)
        {
          v44 = 0x7FF0000000000000;
        }

        *a3 = v44;
      }

      return result;
    }

LABEL_142:
    v41 = ((v37 + 2048) >> 12) & ~((v37 & 0xFFF) == 2048);
    if (v40)
    {
      v42 = -v41;
    }

    else
    {
      v42 = ((v37 + 2048) >> 12) & ~((v37 & 0xFFF) == 2048);
    }

    if (!v41 || ((v40 ^ (v42 >= 0)) & 1) != 0)
    {
      goto LABEL_150;
    }

    goto LABEL_147;
  }

  v15 = v8 ^ v13;
  v16 = (~v5 & 0x7FF0000000000000) == 0;
  if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v16 = 0;
  }

  if (v16 || v12)
  {
    v23 = v15 == 0;
    v17 = 368;
    if (!v23)
    {
      v17 = 336;
    }

    v18 = (&unk_1004BD648 + v17);
    if (v9 <= 0x7FF0000000000000)
    {
      v19 = v18;
    }

    else
    {
      v19 = &qword_1004BD7C8;
    }

    if (v19 == a3)
    {
      return result;
    }

LABEL_109:
    *a3 = *v19;
    return result;
  }

  v23 = v15 == 0;
  v22 = 368;
  if (!v23)
  {
    v22 = 336;
  }

  v23 = v9 > 0x7FF0000000000000 || ((v11 | v5) & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v23 || v9 == v11)
  {
    v22 = 384;
  }

  v19 = (&unk_1004BD648 + v22);
  if ((&unk_1004BD648 + v22) != a3)
  {
    goto LABEL_109;
  }

  return result;
}

unint64_t *sub_10029FD58@<X0>(unint64_t *result@<X0>, unsigned int *a2@<X8>)
{
  v2 = *result;
  v3 = *result & 0x7FFFFFFF;
  if (v3 >= 0x7F800001)
  {
    *a2 = 0x7FFFFFFF;
    return result;
  }

  if (v3 == 2139095040)
  {
    *a2 = v2;
    return result;
  }

  v5 = ((v2 >> 23) - 127) % 3;
  if (v5 >= 0)
  {
    v6 = -3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + v5;
  v28 = 0x4046A09E6653BA70;
  v29 = ((*&v2 & 0x7FFFFFLL) << 29) | ((v6 + v5 + 1023) << 52);
  v27 = 0x402D9E20660EDB21;
  sub_10029E004(&v28, &v29, &v18);
  if ((v18 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v19, v18, 0x406808F46C6116E0uLL, 1);
  }

  else
  {
    sub_1002A062C(&v19, v18, 0x406808F46C6116E0uLL, 0);
  }

  sub_10029E004(&v19, &v29, &v20);
  if ((v20 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v21, v20, 0x405DCA97439CAE14uLL, 1);
  }

  else
  {
    sub_1002A062C(&v21, v20, 0x405DCA97439CAE14uLL, 0);
  }

  sub_10029E004(&v21, &v29, &v22);
  if ((v22 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v23, v22, 0x402ADD70D2827500uLL, 1);
  }

  else
  {
    sub_1002A062C(&v23, v22, 0x402ADD70D2827500uLL, 0);
  }

  sub_10029E004(&v23, &v29, &v24);
  if ((v24 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v25, v24, 0x3FC4F15F83F55D2DuLL, 1);
  }

  else
  {
    sub_1002A062C(&v25, v24, 0x3FC4F15F83F55D2DuLL, 0);
  }

  sub_10029E004(&v27, &v29, &v10);
  if ((v10 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v11, v10, 0x4062FF15C0285815uLL, 1);
  }

  else
  {
    sub_1002A062C(&v11, v10, 0x4062FF15C0285815uLL, 0);
  }

  sub_10029E004(&v11, &v29, &v12);
  if ((v12 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v13, v12, 0x406510D06A8112CEuLL, 1);
  }

  else
  {
    sub_1002A062C(&v13, v12, 0x406510D06A8112CEuLL, 0);
  }

  sub_10029E004(&v13, &v29, &v14);
  if ((v14 & 0x8000000000000000) == 0)
  {
    sub_1002A062C(&v15, v14, 0x4040FECBC9E2C375uLL, 0);
    sub_10029E004(&v15, &v29, &v16);
    v8 = v16;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    sub_1002A0834(&v17, v8, 0x3FF0000000000000uLL, 1);
    result = sub_10029E2BC(&v25, &v17, &v26);
    if (v3)
    {
      goto LABEL_29;
    }

LABEL_32:
    v9 = 0;
    goto LABEL_33;
  }

  sub_1002A0834(&v15, v14, 0x4040FECBC9E2C375uLL, 1);
  sub_10029E004(&v15, &v29, &v16);
  v8 = v16;
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  sub_1002A062C(&v17, v8, 0x3FF0000000000000uLL, 0);
  result = sub_10029E2BC(&v25, &v17, &v26);
  if (!v3)
  {
    goto LABEL_32;
  }

LABEL_29:
  v9 = (((v2 & 0x80000000) + ((((21846 * ((v2 >> 23) - 127 - v7)) >> 16) + ((21846 * ((v2 >> 23) - 127 - v7)) >> 31)) << 23)) | (v26 >> 29) & 0x7FFFFF) + 1056964608;
LABEL_33:
  *a2 = v9;
  return result;
}

int *sub_1002A0124(int *result, int a2, unsigned int a3)
{
  v3 = (a2 >> 23);
  v4 = a2 & 0x7FFFFF;
  v5 = a3 & 0x7FFFFF;
  v6 = (a3 >> 23);
  v7 = v3 - v6;
  if (v3 == v6)
  {
    if (v3 == 255)
    {
      if (!(v5 | v4))
      {
        *result = -4194304;
        return result;
      }

LABEL_13:
      if ((a2 & 0x7FC00000) == 0x7F800000 && (a2 & 0x3FFFFF) != 0)
      {
        *result = a2 | 0x400000;
      }

      else
      {
        if (v4)
        {
          v11 = (~a2 & 0x7F800000) == 0;
        }

        else
        {
          v11 = 0;
        }

        if (!v11)
        {
          a2 = a3;
        }

        *result = a2 | 0x400000;
      }

      return result;
    }

    v10 = v4 - v5;
    if (v4 == v5)
    {
      *result = 0;
    }

    else
    {
      v15 = v3 != 0;
      v16 = v3 - 1;
      if (!v15)
      {
        v16 = 0;
      }

      if (v10 >= 0)
      {
        v17 = v4 - v5;
      }

      else
      {
        v17 = v5 - v4;
      }

      v18 = v10 ^ a2;
      v19 = v17 << 16;
      if (v17 >= 0x10000)
      {
        v19 = v17;
      }

      LODWORD(v20) = v19 << 8;
      if (HIBYTE(v19))
      {
        v20 = v19;
      }

      else
      {
        v20 = v20;
      }

      if (HIBYTE(v19))
      {
        v21 = 16 * (v17 < 0x10000);
      }

      else
      {
        v21 = (16 * (v17 < 0x10000)) | 8;
      }

      v22 = v21 + byte_1003E3D58[v20 >> 24] - 8;
      v23 = v16 - v22;
      if (v23 >= 0)
      {
        LOBYTE(v16) = v22;
      }

      *result = (v18 & 0x80000000) + ((v23 & ~(v23 >> 31)) << 23) + (v17 << v16);
    }
  }

  else
  {
    v8 = v4 << 7;
    v9 = v5 << 7;
    if ((v7 & 0x80000000) != 0)
    {
      if (v6 == 255)
      {
        if (!v5)
        {
          *result = (a2 & 0x80000000) - 0x800000;
          return result;
        }

        goto LABEL_13;
      }

      v14 = a2 >= 0;
      if (v3)
      {
        v24 = 0x40000000;
      }

      else
      {
        v24 = v4 << 7;
      }

      v13 = v24 + v8;
      v7 = -v7;
    }

    else
    {
      if (v3 == 255)
      {
        if (!v4)
        {
          *result = a2;
          return result;
        }

        goto LABEL_13;
      }

      if ((a3 & 0x7F800000) != 0)
      {
        v12 = 0x40000000;
      }

      else
      {
        v12 = v5 << 7;
      }

      v13 = v12 + v9;
      v14 = a2 >> 31;
      v6 = v3;
      v9 = v8;
    }

    v25 = v9 | 0x40000000;
    v26 = v13 != 0;
    v27 = (v13 >> v7) | (v13 << -v7 != 0);
    if (v7 <= 0x1E)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    return sub_1002A04E4(result, v14, v6 - 1, v25 - v28);
  }

  return result;
}

unsigned int *sub_1002A02DC(unsigned int *result, unsigned int a2, unsigned int a3)
{
  v3 = (a2 >> 23);
  v4 = a2 & 0x7FFFFF;
  v5 = (a3 >> 23);
  v6 = a3 & 0x7FFFFF;
  v7 = v3 - v5;
  if (v3 != v5)
  {
    v8 = v4 << 6;
    v9 = v6 << 6;
    if ((v7 & 0x80000000) != 0)
    {
      if (v5 == 255)
      {
        if (!v6)
        {
          goto LABEL_44;
        }

LABEL_13:
        if ((a2 & 0x7FC00000) == 0x7F800000 && (a2 & 0x3FFFFF) != 0)
        {
          *result = a2 | 0x400000;
        }

        else
        {
          if (v4)
          {
            v16 = (~a2 & 0x7F800000) == 0;
          }

          else
          {
            v16 = 0;
          }

          if (!v16)
          {
            a2 = a3;
          }

          *result = a2 | 0x400000;
        }

        return result;
      }

      if ((a2 >> 23))
      {
        v17 = 0x20000000;
      }

      else
      {
        v17 = v4 << 6;
      }

      v18 = v17 + v8;
      v19 = v18 != 0;
      v20 = (v18 >> -v7) | (v18 << v7 != 0);
      if (-v7 <= 0x1E)
      {
        v19 = v20;
      }

      v3 = (a3 >> 23);
      v15 = v19 + 0x20000000 + v9;
      if (v15 >> 30)
      {
LABEL_39:
        if (v3 < 0xFD)
        {
          goto LABEL_48;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v3 == 255)
      {
        if (!v4)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }

      if ((a3 >> 23))
      {
        v11 = 0x20000000;
      }

      else
      {
        v11 = v6 << 6;
      }

      v12 = v11 + v9;
      v13 = v12 != 0;
      v14 = (v12 >> (v3 - v5)) | (v12 << (v5 - v3) != 0);
      if (v7 <= 0x1E)
      {
        v13 = v14;
      }

      v15 = v8 + 0x20000000 + v13;
      if (v15 >> 30)
      {
        goto LABEL_39;
      }
    }

    --v3;
    v15 *= 2;
    goto LABEL_39;
  }

  if (!(a2 >> 23))
  {
    *result = v6 + a2;
    return result;
  }

  if (v3 == 255)
  {
    if (!(v6 | v4))
    {
LABEL_5:
      *result = a2;
      return result;
    }

    goto LABEL_13;
  }

  v10 = (v6 + v4) | 0x1000000;
  if (v3 <= 0xFD && (v10 & 1) == 0)
  {
    *result = (a2 & 0x80000000 | (v3 << 23)) + (v10 >> 1);
    return result;
  }

  v15 = v10 << 6;
  if (v3 >= 0xFD)
  {
LABEL_40:
    if ((v3 & 0x80000000) != 0)
    {
      v15 = (v15 >> -v3) | (v15 << v3 != 0);
      v3 = 0;
      goto LABEL_48;
    }

    if (v3 == 253 && ((v15 + 64) & 0x80000000) == 0)
    {
      v3 = 253;
      goto LABEL_48;
    }

LABEL_44:
    *result = a2 & 0x80000000 | 0x7F800000;
    return result;
  }

LABEL_48:
  v21 = v3 << 23;
  v22 = ~((v15 & 0x7F) == 64) & ((v15 + 64) >> 7);
  if (!v22)
  {
    v21 = 0;
  }

  *result = (v22 | a2 & 0x80000000) + v21;
  return result;
}

int *sub_1002A04E4(int *result, int a2, int a3, unsigned int a4)
{
  v4 = a4 << 16;
  if (a4 >= 0x10000)
  {
    v4 = a4;
  }

  LODWORD(v5) = v4 << 8;
  if (HIBYTE(v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = v5;
  }

  v6 = byte_1003E3D58[v5 >> 24];
  if (HIBYTE(v4))
  {
    v7 = 16 * (a4 < 0x10000);
  }

  else
  {
    v7 = (16 * (a4 < 0x10000)) | 8;
  }

  v8 = (v7 + v6 - 1);
  v9 = a3 - v8;
  v10 = v8 - 7;
  if (v8 >= 7 && (a3 - v8) <= 0xFCu)
  {
    if (a2)
    {
      v11 = 0x80000000;
    }

    else
    {
      v11 = 0;
    }

    v12 = v9 << 23;
    if (!a4)
    {
      v12 = 0;
    }

    *result = (a4 << v10) + v11 + v12;
    return result;
  }

  v13 = a4 << v8;
  if ((a3 - v8) >= 0xFDu)
  {
    if ((v9 & 0x8000) != 0)
    {
      v14 = v13 != 0;
      v13 = (v13 >> (v8 - a3)) | (v13 << (a3 - v8) != 0);
      v9 = 0;
      if ((v8 - a3) > 0x1Eu)
      {
        v13 = v14;
      }
    }

    else
    {
      if ((a3 - v8) != 253 || ((v13 + 64) & 0x80000000) != 0)
      {
        if (a2)
        {
          v20 = -8388608;
        }

        else
        {
          v20 = 2139095040;
        }

        *result = v20;
        return result;
      }

      v9 = 253;
    }
  }

  v15 = v13 + 64;
  v16 = ~((v13 & 0x7F) == 64);
  if (a2)
  {
    v17 = 0x80000000;
  }

  else
  {
    v17 = 0;
  }

  v18 = v9 << 23;
  v19 = v16 & (v15 >> 7);
  if (!v19)
  {
    v18 = 0;
  }

  *result = (v19 | v17) + v18;
  return result;
}

unint64_t *sub_1002A062C(unint64_t *result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = (a2 >> 52) & 0x7FF;
  v5 = a2 & 0xFFFFFFFFFFFFFLL;
  v6 = (a3 >> 52) & 0x7FF;
  v7 = a3 & 0xFFFFFFFFFFFFFLL;
  v8 = v4 - v6;
  if (v4 != v6)
  {
    v9 = v5 << 9;
    v10 = v7 << 9;
    if (v4 - v6 < 0)
    {
      if (v6 == 2047)
      {
        if (!v7)
        {
          goto LABEL_44;
        }

        goto LABEL_13;
      }

      v17 = v9 | 0x2000000000000000;
      v18 = v5 << 10;
      if (v4)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      v20 = v19 != 0;
      v21 = (v19 >> -v8) | (v19 << v8 != 0);
      if (-v8 <= 0x3E)
      {
        v20 = v21;
      }

      v11 = v20 + 0x2000000000000000 + v10;
      if (!(v11 >> 62))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v4 == 2047)
      {
        if (v5)
        {
          goto LABEL_13;
        }

LABEL_8:
        *result = a2;
        return result;
      }

      if (v6)
      {
        v12 = v10 | 0x2000000000000000;
      }

      else
      {
        v12 = v7 << 10;
      }

      v13 = v12 != 0;
      v14 = (v12 >> v8) | (v12 << -v8 != 0);
      if (v8 <= 0x3E)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      v6 = (a2 >> 52) & 0x7FF;
      v11 = v9 + 0x2000000000000000 + v15;
      if (!(v11 >> 62))
      {
LABEL_25:
        v4 = (v6 - 1);
        v11 *= 2;
        if (v4 < 0x7FD)
        {
          goto LABEL_49;
        }

LABEL_40:
        if ((v4 & 0x80000000) != 0)
        {
          v11 = (v11 >> -v4) | (v11 << v4 != 0);
          v4 = 0;
          goto LABEL_49;
        }

        if (v4 == 2045 && ((v11 + 512) & 0x8000000000000000) == 0)
        {
          v4 = 2045;
          goto LABEL_49;
        }

LABEL_44:
        if (a4)
        {
          v22 = 0xFFF0000000000000;
        }

        else
        {
          v22 = 0x7FF0000000000000;
        }

        *result = v22;
        return result;
      }
    }

    v4 = v6;
    if (v6 < 0x7FD)
    {
LABEL_49:
      v23 = v11 + 512;
      v24 = ~((v11 & 0x3FF) == 512);
      v25 = 0x8000000000000000;
      if (!a4)
      {
        v25 = 0;
      }

      v26 = v4 << 52;
      v27 = v24 & (v23 >> 10);
      if (!v27)
      {
        v26 = 0;
      }

      *result = (v27 | v25) + v26;
      return result;
    }

    goto LABEL_40;
  }

  if (v4 != 2047)
  {
    if (!v4)
    {
      *result = v7 + a2;
      return result;
    }

    v11 = ((v7 + v5) << 9) | 0x4000000000000000;
    if (v4 < 0x7FD)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  if (!(v7 | v5))
  {
    goto LABEL_8;
  }

LABEL_13:
  if ((a2 & 0x7FF8000000000000) == 0x7FF0000000000000 && (a2 & 0x7FFFFFFFFFFFFLL) != 0)
  {
    *result = a2 | 0x8000000000000;
  }

  else
  {
    if (v5)
    {
      v16 = (~a2 & 0x7FF0000000000000) == 0;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      a2 = a3;
    }

    *result = a2 | 0x8000000000000;
  }

  return result;
}

unint64_t *sub_1002A0834(unint64_t *result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = (a2 >> 52) & 0x7FF;
  v5 = a2 & 0xFFFFFFFFFFFFFLL;
  v6 = (a3 >> 52) & 0x7FF;
  v7 = a3 & 0xFFFFFFFFFFFFFLL;
  v8 = v4 - v6;
  if (v4 == v6)
  {
    if (v4 == 2047)
    {
      if (!(v7 | v5))
      {
        *result = 0xFFF8000000000000;
        return result;
      }

      goto LABEL_30;
    }

    v11 = v5 - v7;
    if (v5 == v7)
    {
      *result = 0;
    }

    else
    {
      v12 = v4 != 0;
      v13 = v4 - 1;
      if (!v12)
      {
        v13 = 0;
      }

      v14 = a4 ^ 1;
      if ((v11 & 0x8000000000000000) != 0)
      {
        v11 = v7 - v5;
      }

      else
      {
        v14 = a4;
      }

      v15 = HIDWORD(v11);
      v16 = 32 * (HIDWORD(v11) == 0);
      if (!HIDWORD(v11))
      {
        v15 = v11;
      }

      if (v15 < 0x10000)
      {
        v16 = (32 * (HIDWORD(v11) == 0)) | 0x10;
        LODWORD(v15) = v15 << 16;
      }

      v17 = v16 | 8;
      if (BYTE3(v15))
      {
        v17 = v16;
        v15 = v15;
      }

      else
      {
        v15 = (v15 << 8);
      }

      v18 = byte_1003E3D58[v15 >> 24] + v17 - 11;
      v19 = v13 - v18;
      v20 = (v13 - v18);
      if (v20 >= 0)
      {
        LOBYTE(v13) = v18;
      }

      v22 = v14 == 0;
      v21 = 0x8000000000000000;
      if (v22)
      {
        v21 = 0;
      }

      *result = v21 + ((v19 & ~(v20 >> 31)) << 52) + (v11 << v13);
    }

    return result;
  }

  v9 = v5 << 10;
  v10 = v7 << 10;
  if (v4 - v6 >= 0)
  {
    if (v4 == 2047)
    {
      if (!v5)
      {
        *result = a2;
        return result;
      }

      goto LABEL_30;
    }

    v22 = v6 == 0;
    v23 = 0x4000000000000000;
    if (v22)
    {
      v23 = v7 << 10;
    }

    v24 = v23 + v10;
    v25 = v24 != 0;
    v26 = (v24 >> v8) | (v24 << -v8 != 0);
    if (v8 <= 0x3E)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    v28 = ((a2 >> 52) & 0x7FF) - 1;
    v29 = a4;
    v30 = (v9 | 0x4000000000000000) - v27;
    return sub_1002A0A48(result, v29, v28, v30);
  }

  if (v6 != 2047)
  {
    v31 = a4 ^ 1;
    v22 = v4 == 0;
    v32 = 0x4000000000000000;
    if (v22)
    {
      v32 = v5 << 10;
    }

    v33 = v32 + v9;
    v34 = v33 != 0;
    v35 = (v33 >> -v8) | (v33 << v8 != 0);
    if (-v8 <= 0x3E)
    {
      v36 = v35;
    }

    else
    {
      v36 = v34;
    }

    v28 = v6 - 1;
    v29 = v31;
    v30 = (v10 | 0x4000000000000000) - v36;
    return sub_1002A0A48(result, v29, v28, v30);
  }

  if (v7)
  {
LABEL_30:
    if ((a2 & 0x7FF8000000000000) == 0x7FF0000000000000 && (a2 & 0x7FFFFFFFFFFFFLL) != 0)
    {
      *result = a2 | 0x8000000000000;
    }

    else
    {
      if (v5)
      {
        v22 = (~a2 & 0x7FF0000000000000) == 0;
      }

      else
      {
        v22 = 0;
      }

      if (!v22)
      {
        a2 = a3;
      }

      *result = a2 | 0x8000000000000;
    }

    return result;
  }

  if (a4)
  {
    v37 = 0x7FF0000000000000;
  }

  else
  {
    v37 = 0xFFF0000000000000;
  }

  *result = v37;
  return result;
}

unint64_t *sub_1002A0A48(unint64_t *result, int a2, int a3, unint64_t a4)
{
  v4 = HIDWORD(a4);
  v5 = 32 * (HIDWORD(a4) == 0);
  if (!HIDWORD(a4))
  {
    v4 = a4;
  }

  if (v4 < 0x10000)
  {
    v5 = (32 * (HIDWORD(a4) == 0)) | 0x10;
    LODWORD(v4) = v4 << 16;
  }

  v6 = v5 | 8;
  v7 = BYTE3(v4);
  if (BYTE3(v4))
  {
    v4 = v4;
  }

  else
  {
    v4 = (v4 << 8);
  }

  v8 = byte_1003E3D58[v4 >> 24];
  if (v7)
  {
    v6 = v5;
  }

  v9 = (v6 + v8 - 1);
  v10 = (a3 - v9);
  v11 = v9 - 10;
  if (v9 >= 10 && (a3 - v9) <= 0x7FCu)
  {
    v12 = 0x8000000000000000;
    if (!a2)
    {
      v12 = 0;
    }

    v13 = v10 << 52;
    if (!a4)
    {
      v13 = 0;
    }

    *result = (a4 << v11) + v12 + v13;
    return result;
  }

  v14 = a4 << v9;
  if ((a3 - v9) < 0x7FDu)
  {
    goto LABEL_24;
  }

  if (((a3 - v9) & 0x8000) != 0)
  {
    v15 = -(a3 - v9);
    v16 = v14 != 0;
    v14 = (v14 >> v15) | (v14 << v10 != 0);
    v10 = 0;
    if (v15 > 0x3E)
    {
      v14 = v16;
    }

    goto LABEL_24;
  }

  if ((a3 - v9) == 2045 && ((v14 + 512) & 0x8000000000000000) == 0)
  {
    v10 = 2045;
LABEL_24:
    v17 = v14 + 512;
    v18 = ~((v14 & 0x3FF) == 512);
    v19 = 0x8000000000000000;
    if (!a2)
    {
      v19 = 0;
    }

    v20 = v10 << 52;
    v21 = v18 & (v17 >> 10);
    if (!v21)
    {
      v20 = 0;
    }

    *result = (v21 | v19) + v20;
    return result;
  }

  v22 = 0x7FF0000000000000;
  if (a2)
  {
    v22 = 0xFFF0000000000000;
  }

  *result = v22;
  return result;
}

uint64_t sub_1002A0BBC(uint64_t a1)
{
  sub_1002ACE7C(v28, &off_100475398);
  if ((sub_100271A88(a1, -1) & 0xFF8) != 0)
  {
    v20 = 0uLL;
    v2 = sub_1002A80E0(&v20, 7);
    *(v2 + 3) = 824196413;
    *v2 = 1025535587;
    sub_1002A8980(-215, &v20, "countNonZero", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 1358);
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v3 = *(a1 + 8);
    v4 = *v3;
    v5 = *(v3 + 16);
    v20 = *v3;
    v21 = v5;
    v22 = *(v3 + 32);
    v6 = *(v3 + 56);
    v23 = *(v3 + 48);
    v24 = v6;
    v25 = &v20 + 8;
    v26 = v27;
    v27[0] = 0;
    v27[1] = 0;
    if (v6)
    {
      atomic_fetch_add((v6 + 20), 1u);
      if (*(v3 + 4) <= 2)
      {
LABEL_6:
        v7 = *(v3 + 72);
        v8 = v26;
        *v26 = *v7;
        v8[1] = v7[1];
        goto LABEL_10;
      }
    }

    else if (SDWORD1(v4) <= 2)
    {
      goto LABEL_6;
    }

    DWORD1(v20) = 0;
    sub_100269B58(&v20, v3);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v20);
  }

LABEL_10:
  v9 = v20 & 7;
  v10 = off_1004753F8[v9];
  if (v9 == 7)
  {
    v18[0] = 0;
    v18[1] = 0;
    v11 = sub_1002A80E0(v18, 9);
    *(v11 + 8) = 48;
    *v11 = *"func != 0";
    sub_1002A8980(-215, v18, "countNonZero", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 1374);
  }

  v30[0] = &v20;
  v30[1] = 0;
  v29 = 0;
  sub_100267CC8(v18, v30, &v29, 0xFFFFFFFFLL);
  v12 = 0;
  v13 = v19;
  v14 = -1;
  while (++v14 < v18[4])
  {
    v12 = (v10)(v29, v13) + v12;
    sub_100267D14(v18);
  }

  if (v24 && atomic_fetch_add((v24 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v20);
  }

  v24 = 0;
  v21 = 0u;
  v22 = 0u;
  if (SDWORD1(v20) >= 1)
  {
    v15 = 0;
    v16 = v25;
    do
    {
      *&v16[4 * v15++] = 0;
    }

    while (v15 < SDWORD1(v20));
  }

  if (v26 != v27)
  {
    j__free(v26);
  }

  if (v28[2])
  {
    sub_1002ACC1C(v28);
  }

  return v12;
}

void sub_1002A0E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A0F30(uint64_t a1, double *a2, unint64_t *a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  sub_1002ACE7C(v100, &off_1004753B8);
  v12 = sub_100271A88(a1, -1);
  v13 = v12;
  v14 = (v12 >> 3) & 0x1FF;
  if (v14)
  {
    v15 = sub_1002743D4(a6);
    if (a5 || a4 || !v15)
    {
      goto LABEL_8;
    }
  }

  else if (!sub_1002743D4(a6) && sub_100271A88(a6, -1))
  {
LABEL_8:
    v92 = 0uLL;
    qmemcpy(sub_1002A80E0(&v92, 100), "(cn == 1 && (_mask.empty() || _mask.type() == 0)) || (cn > 1 && _mask.empty() && !minIdx && !maxIdx)", 100);
    sub_1002A8980(-215, &v92, "minMaxIdx", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 2709);
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v16 = *(a1 + 8);
    v17 = *v16;
    v18 = *(v16 + 16);
    v92 = *v16;
    v93 = v18;
    v94 = *(v16 + 32);
    v19 = *(v16 + 56);
    v95 = *(v16 + 48);
    v96 = v19;
    v97 = &v92 + 8;
    v98 = v99;
    v99[0] = 0;
    v99[1] = 0;
    if (v19)
    {
      atomic_fetch_add((v19 + 20), 1u);
      if (*(v16 + 4) <= 2)
      {
LABEL_12:
        v20 = *(v16 + 72);
        v21 = v98;
        *v98 = *v20;
        v21[1] = v20[1];
        goto LABEL_16;
      }
    }

    else if (SDWORD1(v17) <= 2)
    {
      goto LABEL_12;
    }

    DWORD1(v92) = 0;
    sub_100269B58(&v92, v16);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v92);
  }

LABEL_16:
  if (sub_100271148(a6) == 0x10000)
  {
    v22 = *(a6 + 8);
    v23 = *v22;
    v24 = *(v22 + 16);
    v84 = *v22;
    v85 = v24;
    v86 = *(v22 + 32);
    v25 = *(v22 + 56);
    v87 = *(v22 + 48);
    v88 = v25;
    v89 = &v84 + 8;
    v90 = v91;
    v91[0] = 0;
    v91[1] = 0;
    if (v25)
    {
      atomic_fetch_add((v25 + 20), 1u);
      if (*(v22 + 4) <= 2)
      {
LABEL_19:
        v26 = *(v22 + 72);
        v27 = v90;
        *v90 = *v26;
        v27[1] = v26[1];
        goto LABEL_23;
      }
    }

    else if (SDWORD1(v23) <= 2)
    {
      goto LABEL_19;
    }

    DWORD1(v84) = 0;
    sub_100269B58(&v84, v22);
  }

  else
  {
    sub_1002703C0(a6, 0xFFFFFFFFLL, &v84);
  }

LABEL_23:
  v72 = a3;
  v28 = v13 & 7;
  v29 = off_100475438[v13 & 7];
  if (v28 == 7)
  {
    v81[0] = 0;
    v81[1] = 0;
    v30 = sub_1002A80E0(v81, 9);
    *(v30 + 8) = 48;
    *v30 = *"func != 0";
    sub_1002A8980(-215, v81, "minMaxIdx", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 2722);
  }

  v104[0] = &v92;
  v104[1] = &v84;
  v104[2] = 0;
  v102 = 0;
  v103 = 0;
  sub_100267CC8(v81, v104, &v102, 0xFFFFFFFFLL);
  v77 = 0x80000000;
  v78 = 0x7FFFFFFF;
  v75 = -INFINITY;
  v76 = INFINITY;
  v31 = &v78;
  if (v28 == 6)
  {
    v31 = &v74;
  }

  v32 = &v77;
  v79 = 0;
  v80 = 0;
  if (v28 == 6)
  {
    v32 = &v73;
  }

  v73 = 0xFFF0000000000000;
  v74 = INFINITY;
  if (v28 == 5)
  {
    v33 = &v76;
  }

  else
  {
    v33 = v31;
  }

  if (v28 == 5)
  {
    v34 = &v75;
  }

  else
  {
    v34 = v32;
  }

  if (v82)
  {
    v35 = 0;
    v36 = ((v14 + 1) * v83);
    v37 = 1;
    do
    {
      (v29)(v102, v103, v33, v34, &v80, &v79, v36, v37);
      sub_100267D14(v81);
      ++v35;
      v37 += v36;
    }

    while (v35 < v82);
  }

  if (v93)
  {
    if (SDWORD1(v92) >= 3)
    {
      v39 = (v97 + 4);
      v40 = 1;
      v41 = DWORD1(v92) & 0x7FFFFFFE;
      v42 = 1;
      do
      {
        v40 *= *(v39 - 1);
        v42 *= *v39;
        v39 += 2;
        v41 -= 2;
      }

      while (v41);
      v38 = v42 * v40;
      v43 = DWORD1(v92) - (DWORD1(v92) & 0x7FFFFFFE);
      if (v43)
      {
        v44 = &v97[8 * ((DWORD1(v92) >> 1) & 0x3FFFFFFF)];
        do
        {
          v45 = *v44;
          v44 += 4;
          v38 *= v45;
          --v43;
        }

        while (v43);
      }
    }

    else
    {
      v38 = SHIDWORD(v92) * SDWORD2(v92);
    }

    if (DWORD1(v92) && v38)
    {
      if (!v85)
      {
        goto LABEL_58;
      }

      if (SDWORD1(v84) >= 3)
      {
        v47 = (v89 + 4);
        v48 = 1;
        v49 = DWORD1(v84) & 0x7FFFFFFE;
        v50 = 1;
        do
        {
          v48 *= *(v47 - 1);
          v50 *= *v47;
          v47 += 2;
          v49 -= 2;
        }

        while (v49);
        v46 = v50 * v48;
        v51 = DWORD1(v84) - (DWORD1(v84) & 0x7FFFFFFE);
        if (v51)
        {
          v52 = &v89[8 * ((DWORD1(v84) >> 1) & 0x3FFFFFFF)];
          do
          {
            v53 = *v52;
            v52 += 4;
            v46 *= v53;
            --v51;
          }

          while (v51);
        }
      }

      else
      {
        v46 = SHIDWORD(v84) * SDWORD2(v84);
      }

      if (!DWORD1(v84) || !v46)
      {
LABEL_58:
        if (v80)
        {
          if (v79)
          {
            goto LABEL_60;
          }

LABEL_106:
          v79 = 1;
          v54 = v80;
LABEL_61:
          if (v28 == 5)
          {
            v74 = v76;
            v55 = v75;
          }

          else
          {
            if (v28 > 4)
            {
              goto LABEL_66;
            }

            v74 = v78;
            v55 = v77;
          }

          v73 = *&v55;
LABEL_66:
          if (!a2)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }

        v80 = 1;
        if (!v79)
        {
          goto LABEL_106;
        }
      }
    }
  }

LABEL_60:
  v54 = v80;
  if (v80)
  {
    goto LABEL_61;
  }

  v73 = 0;
  v74 = 0.0;
  if (a2)
  {
LABEL_67:
    *a2 = v74;
  }

LABEL_68:
  if (v72)
  {
    *v72 = v73;
  }

  if (a4)
  {
    if (v54)
    {
      if (SDWORD1(v92) >= 1)
      {
        v56 = v97;
        v57 = v54 - 1;
        v58 = DWORD1(v92) - 1;
        do
        {
          v59 = *&v56[4 * v58];
          v60 = v57 / v59;
          a4[v58] = v57 % v59;
          v61 = v58-- + 1;
          v57 = v60;
        }

        while (v61 > 1);
      }
    }

    else if (SDWORD1(v92) >= 1)
    {
      memset(a4, 255, 4 * DWORD1(v92));
    }
  }

  if (a5)
  {
    if (v79)
    {
      if (SDWORD1(v92) >= 1)
      {
        v62 = v97;
        v63 = v79 - 1;
        v64 = DWORD1(v92) - 1;
        do
        {
          v65 = *&v62[4 * v64];
          v66 = v63 / v65;
          a5[v64] = v63 % v65;
          v67 = v64-- + 1;
          v63 = v66;
        }

        while (v67 > 1);
      }
    }

    else if (SDWORD1(v92) >= 1)
    {
      memset(a5, 255, 4 * DWORD1(v92));
    }
  }

  if (v88 && atomic_fetch_add((v88 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v84);
  }

  v88 = 0;
  v85 = 0u;
  v86 = 0u;
  if (SDWORD1(v84) >= 1)
  {
    v68 = 0;
    v69 = v89;
    do
    {
      *&v69[4 * v68++] = 0;
    }

    while (v68 < SDWORD1(v84));
  }

  if (v90 != v91)
  {
    j__free(v90);
  }

  if (v96 && atomic_fetch_add((v96 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v92);
  }

  v96 = 0;
  v93 = 0u;
  v94 = 0u;
  if (SDWORD1(v92) >= 1)
  {
    v70 = 0;
    v71 = v97;
    do
    {
      *&v71[4 * v70++] = 0;
    }

    while (v70 < SDWORD1(v92));
  }

  if (v98 != v99)
  {
    j__free(v98);
  }

  if (v101)
  {
    sub_1002ACC1C(v100);
  }
}

void sub_1002A1670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_1002A1748(uint64_t a1, char a2, uint64_t a3)
{
  sub_1002ACE7C(v178, &off_1004753D8);
  v6 = a2 & 7;
  v7 = a2 & 6;
  if (v7 != 4 && v6 - 1 >= 2 && (v7 != 6 || sub_100271A88(a1, -1)))
  {
    v170 = 0uLL;
    qmemcpy(sub_1002A80E0(&v170, 173), "normType == NORM_INF || normType == NORM_L1 || normType == NORM_L2 || normType == NORM_L2SQR || ((normType == NORM_HAMMING || normType == NORM_HAMMING2) && _src.type() == 0)", 173);
    sub_1002A8980(-215, &v170, "norm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 3186);
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v8 = *(a1 + 8);
    v9 = *v8;
    v10 = *(v8 + 16);
    v170 = *v8;
    v171 = v10;
    v172 = *(v8 + 32);
    v11 = *(v8 + 56);
    v173 = *(v8 + 48);
    v174 = v11;
    v175 = &v170 + 8;
    v176 = v177;
    v177[0] = 0;
    v177[1] = 0;
    if (v11)
    {
      atomic_fetch_add((v11 + 20), 1u);
      if (*(v8 + 4) <= 2)
      {
LABEL_9:
        v12 = *(v8 + 72);
        v13 = v176;
        *v176 = *v12;
        v13[1] = v12[1];
        goto LABEL_13;
      }
    }

    else if (SDWORD1(v9) <= 2)
    {
      goto LABEL_9;
    }

    DWORD1(v170) = 0;
    sub_100269B58(&v170, v8);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v170);
  }

LABEL_13:
  if (sub_100271148(a3) == 0x10000)
  {
    v14 = *(a3 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v162 = *v14;
    v17 = *(v14 + 32);
    v163 = v16;
    v164 = v17;
    v18 = *(v14 + 56);
    v165 = *(v14 + 48);
    v166 = v18;
    v167 = &v162 + 8;
    v168 = v169;
    v169[0] = 0;
    v169[1] = 0;
    if (v18)
    {
      atomic_fetch_add((v18 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_16:
        v19 = *(v14 + 72);
        v20 = v168;
        *v168 = *v19;
        v20[1] = v19[1];
        goto LABEL_20;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_16;
    }

    DWORD1(v162) = 0;
    sub_100269B58(&v162, v14);
  }

  else
  {
    sub_1002703C0(a3, 0xFFFFFFFFLL, &v162);
  }

LABEL_20:
  v21 = v170 & 7;
  v155 = ((v170 >> 3) & 0x1FF) + 1;
  if ((v170 & 0x4000) != 0)
  {
    if (!v163)
    {
      goto LABEL_31;
    }

    if (SDWORD1(v162) >= 3)
    {
      v23 = (v167 + 4);
      v24 = 1;
      v25 = DWORD1(v162) & 0x7FFFFFFE;
      v26 = 1;
      do
      {
        v24 *= *(v23 - 1);
        v26 *= *v23;
        v23 += 2;
        v25 -= 2;
      }

      while (v25);
      v22 = v26 * v24;
      v27 = DWORD1(v162) - (DWORD1(v162) & 0x7FFFFFFE);
      if (v27)
      {
        v28 = &v167[8 * ((DWORD1(v162) >> 1) & 0x3FFFFFFF)];
        do
        {
          v29 = *v28;
          v28 += 4;
          v22 *= v29;
          --v27;
        }

        while (v27);
      }
    }

    else
    {
      v22 = SHIDWORD(v162) * SDWORD2(v162);
    }

    if (!DWORD1(v162) || !v22)
    {
LABEL_31:
      if (SDWORD1(v170) >= 3)
      {
        v31 = (v175 + 4);
        v32 = 1;
        v33 = DWORD1(v170) & 0x7FFFFFFE;
        v34 = 1;
        do
        {
          v32 *= *(v31 - 1);
          v34 *= *v31;
          v31 += 2;
          v33 -= 2;
        }

        while (v33);
        v30 = v34 * v32;
        v35 = DWORD1(v170) - (DWORD1(v170) & 0x7FFFFFFE);
        if (v35)
        {
          v36 = &v175[8 * ((DWORD1(v170) >> 1) & 0x3FFFFFFF)];
          do
          {
            v37 = *v36;
            v36 += 4;
            v30 *= v37;
            --v35;
          }

          while (v35);
        }
      }

      else
      {
        v30 = SHIDWORD(v170) * SDWORD2(v170);
      }

      v38 = v30 * v155;
      if (v30 * v155 == v30 * v155)
      {
        if ((v170 & 7) == 0)
        {
          if (v6 == 7)
          {
            v43 = sub_1002A2EC8(v171, v30 * v155, 2);
          }

          else
          {
            if (v6 != 6)
            {
              goto LABEL_76;
            }

            v43 = sub_1002A7F44(v171, v30 * v155);
          }

          v44 = v43;
          v45 = v166;
          if (!v166)
          {
            goto LABEL_194;
          }

          goto LABEL_192;
        }

        if (v21 == 5)
        {
          v39 = v171;
          switch(v6)
          {
            case 4u:
              v40 = (v38 - 4);
              if (v38 < 4)
              {
                v41 = 0;
                v42 = 0.0;
                goto LABEL_64;
              }

              if (v40 > 0xB)
              {
                v47 = (v40 >> 2) + 1;
                v46 = 4 * (v47 & 0x3FFFFFFC);
                v48 = (v171 + 32);
                v42 = 0.0;
                v49 = v47 & 0x3FFFFFFC;
                do
                {
                  v50 = v48 - 8;
                  v186 = vld4_f32(v50);
                  v187 = vld4_f32(v48);
                  v51 = vcvtq_f64_f32(v186.val[0]);
                  v52 = vcvtq_f64_f32(v187.val[0]);
                  v53 = vcvtq_f64_f32(v186.val[1]);
                  v54 = vcvtq_f64_f32(v187.val[1]);
                  v55 = vcvtq_f64_f32(v186.val[2]);
                  v56 = vcvtq_f64_f32(v187.val[2]);
                  *v186.val[0].f32 = vcvtq_f64_f32(v186.val[3]);
                  *v186.val[1].f32 = vcvtq_f64_f32(v187.val[3]);
                  *v186.val[2].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v53, v53), v51, v51), v55, v55), *v186.val[0].f32, *v186.val[0].f32);
                  *v186.val[3].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v54, v54), v52, v52), v56, v56), *v186.val[1].f32, *v186.val[1].f32);
                  v42 = v42 + *&v186.val[2] + v57 + *&v186.val[3] + v58;
                  v48 += 16;
                  v49 -= 4;
                }

                while (v49);
                if (v47 == (v47 & 0x3FFFFFFC))
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v46 = 0;
                v42 = 0.0;
              }

              v59 = (v171 + 4 * v46 + 8);
              do
              {
                v60 = *(v59 - 2);
                v61 = *(v59 - 1);
                v62 = *v59;
                v63 = v59[1];
                v59 += 4;
                v42 = v42 + v61 * v61 + v60 * v60 + v62 * v62 + v63 * v63;
                v46 += 4;
              }

              while (v46 <= v40);
LABEL_63:
              v41 = (v40 & 0xFFFFFFFC) + 4;
LABEL_64:
              if (v41 >= v38)
              {
                goto LABEL_215;
              }

              v64 = v41;
              v65 = (~v41 + v38);
              if (v65 > 6)
              {
                v138 = v65 + 1;
                v139 = (v65 + 1) & 0x1FFFFFFF8;
                v66 = v139 + v64;
                v140 = (v171 + 4 * v64 + 16);
                v141 = v139;
                do
                {
                  v142 = *v140[-2].f32;
                  v143 = vcvtq_f64_f32(*v142.f32);
                  v144 = vcvt_hight_f64_f32(v142);
                  v145 = vcvtq_f64_f32(*v140);
                  v146 = vcvt_hight_f64_f32(*v140->f32);
                  v147 = vmulq_f64(v144, v144);
                  v148 = vmulq_f64(v143, v143);
                  v149 = vmulq_f64(v146, v146);
                  v150 = vmulq_f64(v145, v145);
                  v42 = v42 + v148.f64[0] + v148.f64[1] + v147.f64[0] + v147.f64[1] + v150.f64[0] + v150.f64[1] + v149.f64[0] + v149.f64[1];
                  v140 += 4;
                  v141 -= 8;
                }

                while (v141);
                if (v138 == v139)
                {
LABEL_215:
                  v44 = sqrt(v42);
                  v45 = v166;
                  if (v166)
                  {
                    goto LABEL_192;
                  }

                  goto LABEL_194;
                }
              }

              else
              {
                v66 = v64;
              }

              v151 = (v171 + 4 * v66);
              do
              {
                v152 = *v151++;
                v42 = v42 + v152 * v152;
                LODWORD(v66) = v66 + 1;
              }

              while (v38 > v66);
              goto LABEL_215;
            case 5u:
              *v158 = 0;
              sub_1002A26AC(v171, 0, v158, v38, 1u);
              goto LABEL_56;
            case 2u:
              *v158 = 0;
              sub_1002A2A20(v171, 0, v158, v38, 1u);
LABEL_56:
              v44 = *v158;
              v45 = v166;
              if (!v166)
              {
                goto LABEL_194;
              }

              goto LABEL_192;
            case 1u:
              v67 = 0.0;
              if (v38 >= 1)
              {
                v68 = -(v38 & 0x7FFFFFFF);
                do
                {
                  v69 = *v39++;
                  v70 = fabsf(v69);
                  if (v67 < v70)
                  {
                    v67 = v70;
                  }
                }

                while (!__CFADD__(v68++, 1));
              }

              v44 = fmaxf(v67, 0.0);
              v45 = v166;
              if (v166)
              {
                goto LABEL_192;
              }

              goto LABEL_194;
          }
        }
      }
    }
  }

LABEL_76:
  if (v163)
  {
    if (SDWORD1(v162) >= 3)
    {
      v73 = (v167 + 4);
      v74 = 1;
      v75 = DWORD1(v162) & 0x7FFFFFFE;
      v76 = 1;
      do
      {
        v74 *= *(v73 - 1);
        v76 *= *v73;
        v73 += 2;
        v75 -= 2;
      }

      while (v75);
      v72 = v76 * v74;
      v77 = DWORD1(v162) - (DWORD1(v162) & 0x7FFFFFFE);
      if (v77)
      {
        v78 = &v167[8 * ((DWORD1(v162) >> 1) & 0x3FFFFFFF)];
        do
        {
          v79 = *v78;
          v78 += 4;
          v72 *= v79;
          --v77;
        }

        while (v77);
      }
    }

    else
    {
      v72 = SHIDWORD(v162) * SDWORD2(v162);
    }

    if (DWORD1(v162) && v72 && (v162 & 0xFFF) != 0)
    {
      *v158 = 0uLL;
      qmemcpy(sub_1002A80E0(v158, 32), "mask.empty() || mask.type() == 0", 32);
      sub_1002A8980(-215, v158, "norm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 3253);
    }
  }

  if (v7 != 6)
  {
    v81 = *(&off_100475478[8 * (v6 >> 1)] + v21);
    if (!v81)
    {
      *v158 = 0uLL;
      v82 = sub_1002A80E0(v158, 9);
      *(v82 + 8) = 48;
      *v82 = *"func != 0";
      sub_1002A8980(-215, v158, "norm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 3280);
    }

    v183 = &v170;
    v184 = &v162;
    v185 = 0;
    v180 = 0;
    v181 = 0;
    v157[0] = 0.0;
    sub_100267CC8(v158, &v183, &v180, 0xFFFFFFFFLL);
    v83 = *&v158[40];
    v154 = v6;
    v153 = v21;
    if (v6 == 2 && v21 <= 3)
    {
      v156 = 0;
    }

    else
    {
      v156 = 0;
      if (v7 != 4 || v21 > 1)
      {
        if (*&v158[40] >= 1)
        {
          v130 = -1;
          while (++v130 < *&v158[32])
          {
            v81(v180, v181, v157, v83, v155);
            if (v181)
            {
              v181 = (v181 + (v83 & 0x7FFFFFFF));
            }

            sub_100267D14(v158);
          }

          goto LABEL_178;
        }

LABEL_175:
        v131 = -1;
        while (++v131 < *&v158[32])
        {
          sub_100267D14(v158);
        }

LABEL_178:
        if (v154 != 1)
        {
          v132 = sqrt(v157[0]);
          if (v154 == 4)
          {
            v44 = v132;
          }

          else
          {
            v44 = v157[0];
          }

          v45 = v166;
          if (v166)
          {
            goto LABEL_192;
          }

          goto LABEL_194;
        }

        if (v153 == 5)
        {
          v44 = *v157;
          v45 = v166;
          if (v166)
          {
            goto LABEL_192;
          }

          goto LABEL_194;
        }

        if (v153 == 6)
        {
          v44 = v157[0];
          v45 = v166;
          if (v166)
          {
            goto LABEL_192;
          }

          goto LABEL_194;
        }

        v44 = SLODWORD(v157[0]);
LABEL_191:
        v45 = v166;
        if (!v166)
        {
          goto LABEL_194;
        }

        goto LABEL_192;
      }
    }

    if (v21 < 2 && v6 == 2)
    {
      v85 = 0x800000;
    }

    else
    {
      v85 = 0x8000;
    }

    v86 = v85 / v155;
    if (v86 >= *&v158[40])
    {
      v87 = *&v158[40];
    }

    else
    {
      v87 = v86;
    }

    if (SDWORD1(v170) < 1)
    {
      v88 = 0;
      if (*&v158[40] <= 0)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v88 = v176[DWORD1(v170) - 1];
      if (*&v158[40] <= 0)
      {
        goto LABEL_175;
      }
    }

    v119 = 0;
    v120 = 0;
    v121 = v86 - v87;
    while (v120 < *&v158[32])
    {
      v122 = 0;
      ++v120;
      v123 = v180;
      v124 = v181;
      v125 = v83;
      do
      {
        while (1)
        {
          if (v87 >= v125)
          {
            v126 = v125;
          }

          else
          {
            v126 = v87;
          }

          v81(v123, v124, &v156, v126, v155);
          v119 += v126;
          if (v119 >= v121 || (v87 >= v125 ? (v127 = v125) : (v127 = v87), (v128 = v127 + v122, v120 >= *&v158[32]) ? (v129 = v128 < v83) : (v129 = 1), !v129))
          {
            v119 = 0;
            v157[0] = v157[0] + v156;
            v156 = 0;
          }

          v123 = v180 + v88 * v126;
          v180 = v123;
          if (!v181)
          {
            break;
          }

          v124 = (v181 + v126);
          v181 = v124;
          v122 += v87;
          v125 -= v87;
          if (v122 >= v83)
          {
            goto LABEL_150;
          }
        }

        v124 = 0;
        v122 += v87;
        v125 -= v87;
      }

      while (v122 < v83);
LABEL_150:
      sub_100267D14(v158);
    }

    goto LABEL_178;
  }

  if (v163)
  {
    if (SDWORD1(v162) >= 3)
    {
      v89 = (v167 + 4);
      v90 = 1;
      v91 = DWORD1(v162) & 0x7FFFFFFE;
      v92 = 1;
      do
      {
        v90 *= *(v89 - 1);
        v92 *= *v89;
        v89 += 2;
        v91 -= 2;
      }

      while (v91);
      v80 = v92 * v90;
      v93 = DWORD1(v162) - (DWORD1(v162) & 0x7FFFFFFE);
      if (v93)
      {
        v94 = &v167[8 * ((DWORD1(v162) >> 1) & 0x3FFFFFFF)];
        do
        {
          v95 = *v94;
          v94 += 4;
          v80 *= v95;
          --v93;
        }

        while (v93);
      }
    }

    else
    {
      v80 = SHIDWORD(v162) * SDWORD2(v162);
    }

    if (DWORD1(v162) && v80)
    {
      *v158 = 1124007936;
      memset(&v158[4], 0, 60);
      v159 = &v158[8];
      v160 = v161;
      v161[0] = 0;
      v161[1] = 0;
      v185 = 0;
      LODWORD(v183) = 16842752;
      v184 = &v170;
      v182 = 0;
      LODWORD(v180) = 16842752;
      v181 = &v162;
      LODWORD(v157[0]) = 33619968;
      *&v157[1] = v158;
      v157[2] = 0.0;
      v96 = sub_100276DA4();
      sub_1001D9360(&v183, &v180, v157, v96);
      v185 = 0;
      LODWORD(v183) = 16842752;
      v184 = v158;
      v97 = sub_100276DA4();
      v44 = sub_1002A1748(&v183, v6, v97);
      if (*&v158[56] && atomic_fetch_add((*&v158[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v158);
      }

      *&v158[56] = 0;
      memset(&v158[16], 0, 32);
      if (*&v158[4] >= 1)
      {
        v98 = 0;
        v99 = v159;
        do
        {
          *&v99[4 * v98++] = 0;
        }

        while (v98 < *&v158[4]);
      }

      if (v160 != v161)
      {
        j__free(v160);
      }

      goto LABEL_191;
    }
  }

  v183 = &v170;
  v184 = 0;
  v180 = 0;
  sub_100267CC8(v158, &v183, &v180, 0xFFFFFFFFLL);
  v100 = 0;
  v101 = 0;
  v102 = *&v158[40];
  v103 = (*&v158[40] - 4);
  while (v101 < *&v158[32])
  {
    if (v6 == 6)
    {
      v104 = sub_1002A7F44(v180, v102);
      goto LABEL_128;
    }

    if (v102 >= 4)
    {
      v106 = 0;
      v104 = 0;
      do
      {
        v104 += byte_1003E5168[*(v180 + v106)] + byte_1003E5168[*(v180 + v106 + 1)] + byte_1003E5168[*(v180 + v106 + 2)] + byte_1003E5168[*(v180 + v106 + 3)];
        v106 += 4;
      }

      while (v106 <= v103);
      v105 = (v103 & 0xFFFFFFFC) + 4;
      if (v105 >= v102)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v105 = 0;
      v104 = 0;
      if (v102 <= 0)
      {
        goto LABEL_128;
      }
    }

    v107 = v105;
    v108 = (~v105 + v102);
    if (!v108)
    {
      v112 = v107;
LABEL_143:
      v117 = (v180 + v112);
      do
      {
        v118 = *v117++;
        v104 += byte_1003E5168[v118];
        LODWORD(v112) = v112 + 1;
      }

      while (v112 < v102);
      goto LABEL_128;
    }

    v109 = 0;
    v110 = v108 + 1;
    v111 = (v108 + 1) & 0x1FFFFFFFELL;
    v112 = v111 + v107;
    v113 = (v180 + v107 + 1);
    v114 = v111;
    do
    {
      v115 = *(v113 - 1);
      v116 = *v113;
      v113 += 2;
      v104 += byte_1003E5168[v115];
      v109 += byte_1003E5168[v116];
      v114 -= 2;
    }

    while (v114);
    v104 += v109;
    if (v110 != v111)
    {
      goto LABEL_143;
    }

LABEL_128:
    v100 += v104;
    ++v101;
    sub_100267D14(v158);
  }

  v44 = v100;
  v45 = v166;
  if (!v166)
  {
    goto LABEL_194;
  }

LABEL_192:
  if (atomic_fetch_add((v45 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v162);
  }

LABEL_194:
  v166 = 0;
  v163 = 0u;
  v164 = 0u;
  if (SDWORD1(v162) >= 1)
  {
    v133 = 0;
    v134 = v167;
    do
    {
      *&v134[4 * v133++] = 0;
    }

    while (v133 < SDWORD1(v162));
  }

  if (v168 != v169)
  {
    j__free(v168);
  }

  if (v174 && atomic_fetch_add((v174 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v170);
  }

  v174 = 0;
  v171 = 0u;
  v172 = 0u;
  if (SDWORD1(v170) >= 1)
  {
    v135 = 0;
    v136 = v175;
    do
    {
      *&v136[4 * v135++] = 0;
    }

    while (v135 < SDWORD1(v170));
  }

  if (v176 != v177)
  {
    j__free(v176);
  }

  if (v179)
  {
    sub_1002ACC1C(v178);
  }

  return v44;
}

void sub_1002A2598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  sub_100006D14(&a29);
  sub_100006D14(va);
  sub_1001D8BF4(v40 - 184);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A26AC(float32x2_t *a1, unsigned __int8 *a2, double *a3, unsigned int a4, unsigned int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v9 = a5 * a4;
    v10 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v11 = 0;
      v12 = 0.0;
      if (v9 <= 0)
      {
        goto LABEL_42;
      }

LABEL_35:
      v46 = v11;
      v47 = (v9 + ~v11);
      if (v47 > 6)
      {
        v49 = v47 + 1;
        v50 = (v47 + 1) & 0x1FFFFFFF8;
        v48 = v50 + v46;
        v51 = (a1 + 4 * v46 + 16);
        v52 = v50;
        do
        {
          v53 = *v51[-2].f32;
          v54 = vcvtq_f64_f32(*v53.f32);
          v55 = vcvt_hight_f64_f32(v53);
          v56 = vcvtq_f64_f32(*v51);
          v57 = vcvt_hight_f64_f32(*v51->f32);
          v58 = vmulq_f64(v55, v55);
          v59 = vmulq_f64(v54, v54);
          v60 = vmulq_f64(v57, v57);
          v61 = vmulq_f64(v56, v56);
          v12 = v12 + v59.f64[0] + v59.f64[1] + v58.f64[0] + v58.f64[1] + v61.f64[0] + v61.f64[1] + v60.f64[0] + v60.f64[1];
          v51 += 4;
          v52 -= 8;
        }

        while (v52);
        if (v49 == v50)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v48 = v46;
      }

      v62 = a1 + v48;
      do
      {
        v63 = *v62++;
        v12 = v12 + v63 * v63;
        LODWORD(v48) = v48 + 1;
      }

      while (v9 > v48);
LABEL_42:
      v5 = v5 + v12;
      goto LABEL_43;
    }

    if (v10 > 0xB)
    {
      v29 = (v10 >> 2) + 1;
      v13 = 4 * (v29 & 0x3FFFFFFC);
      v30 = a1 + 4;
      v12 = 0.0;
      v31 = v29 & 0x3FFFFFFC;
      do
      {
        v32 = &v30[-4];
        v65 = vld4_f32(v32);
        v66 = vld4_f32(v30);
        v33 = vcvtq_f64_f32(v65.val[0]);
        v34 = vcvtq_f64_f32(v66.val[0]);
        v35 = vcvtq_f64_f32(v65.val[1]);
        v36 = vcvtq_f64_f32(v66.val[1]);
        v37 = vcvtq_f64_f32(v65.val[2]);
        v38 = vcvtq_f64_f32(v66.val[2]);
        *v65.val[0].f32 = vcvtq_f64_f32(v65.val[3]);
        *v65.val[1].f32 = vcvtq_f64_f32(v66.val[3]);
        *v65.val[2].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v35, v35), v33, v33), v37, v37), *v65.val[0].f32, *v65.val[0].f32);
        *v65.val[3].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v36, v36), v34, v34), v38, v38), *v65.val[1].f32, *v65.val[1].f32);
        v12 = v12 + *&v65.val[2] + v39 + *&v65.val[3] + v40;
        v30 += 8;
        v31 -= 4;
      }

      while (v31);
      if (v29 == (v29 & 0x3FFFFFFC))
      {
LABEL_34:
        v11 = (v10 & 0xFFFFFFFC) + 4;
        if (v11 >= v9)
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0.0;
    }

    v41 = &a1[v13 / 2 + 1];
    do
    {
      v42 = v41[-1].f32[0];
      v43 = v41[-1].f32[1];
      v44 = v41->f32[0];
      v45 = v41->f32[1];
      v41 += 2;
      v12 = v12 + v43 * v43 + v42 * v42 + v44 * v44 + v45 * v45;
      v13 += 4;
    }

    while (v13 <= v10);
    goto LABEL_34;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = a4;
    if (a5 >= 8)
    {
      v14 = 0;
      v15 = a1 + 2;
      v16 = 4 * a5;
      do
      {
        if (a2[v14])
        {
          v17 = a5 & 0x7FFFFFF8;
          v18 = v15;
          do
          {
            v19 = *v18[-2].f32;
            v20 = vcvtq_f64_f32(*v19.f32);
            v21 = vcvt_hight_f64_f32(v19);
            v22 = vcvtq_f64_f32(*v18);
            v23 = vcvt_hight_f64_f32(*v18->f32);
            v24 = vmulq_f64(v21, v21);
            v25 = vmulq_f64(v20, v20);
            v26 = vmulq_f64(v23, v23);
            v27 = vmulq_f64(v22, v22);
            v5 = v5 + v25.f64[0] + v25.f64[1] + v24.f64[0] + v24.f64[1] + v27.f64[0] + v27.f64[1] + v26.f64[0] + v26.f64[1];
            v18 += 4;
            v17 -= 8;
          }

          while (v17);
          if ((a5 & 0x7FFFFFF8) != a5)
          {
            v28 = a5 & 0x7FFFFFF8;
            do
            {
              v5 = v5 + a1->f32[v28] * a1->f32[v28];
              ++v28;
            }

            while (a5 != v28);
          }
        }

        ++v14;
        v15 = (v15 + v16);
        a1 = (a1 + v16);
      }

      while (v14 != a4);
    }

    else
    {
      v7 = &a1[1] + 1;
      do
      {
        if (*a2++)
        {
          v5 = v5 + *(v7 - 3) * *(v7 - 3);
          if (a5 != 1)
          {
            v5 = v5 + *(v7 - 2) * *(v7 - 2);
            if (a5 != 2)
            {
              v5 = v5 + *(v7 - 1) * *(v7 - 1);
              if (a5 != 3)
              {
                v5 = v5 + *v7 * *v7;
                if (a5 != 4)
                {
                  v5 = v5 + v7[1] * v7[1];
                  if (a5 != 5)
                  {
                    v5 = v5 + v7[2] * v7[2];
                    if (a5 != 6)
                    {
                      v5 = v5 + v7[3] * v7[3];
                    }
                  }
                }
              }
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
    }
  }

LABEL_43:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A2A20(float32x4_t *a1, unsigned __int8 *a2, double *a3, unsigned int a4, unsigned int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v9 = a5 * a4;
    v10 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v11 = 0;
      v12 = 0.0;
      if (v9 <= 0)
      {
        goto LABEL_42;
      }

LABEL_35:
      v45 = v11;
      v46 = (v9 + ~v11);
      if (v46 > 6)
      {
        v48 = v46 + 1;
        v49 = (v46 + 1) & 0x1FFFFFFF8;
        v47 = v49 + v45;
        v50 = (a1 + 4 * v45 + 16);
        v51 = v49;
        do
        {
          v52 = vabsq_f32(v50[-1]);
          v53 = vabsq_f32(*v50);
          v54 = vcvt_hight_f64_f32(v52);
          v55 = vcvtq_f64_f32(*v52.f32);
          v56 = vcvt_hight_f64_f32(v53);
          v57 = vcvtq_f64_f32(*v53.f32);
          v12 = v12 + v55.f64[0] + v55.f64[1] + v54.f64[0] + v54.f64[1] + v57.f64[0] + v57.f64[1] + v56.f64[0] + v56.f64[1];
          v50 += 2;
          v51 -= 8;
        }

        while (v51);
        if (v48 == v49)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v47 = v45;
      }

      v58 = &a1->f32[v47];
      do
      {
        v59 = *v58++;
        v12 = v12 + fabsf(v59);
        LODWORD(v47) = v47 + 1;
      }

      while (v9 > v47);
LABEL_42:
      v5 = v5 + v12;
      goto LABEL_43;
    }

    if (v10 > 0x1B)
    {
      v26 = (v10 >> 2) + 1;
      v13 = v26 & 0x3FFFFFF8;
      v27 = a1 + 4;
      v12 = 0.0;
      v28 = v26 & 0x3FFFFFF8;
      do
      {
        f32 = v27[-4].f32;
        v61 = vld4q_f32(f32);
        v62 = vld4q_f32(v27->f32);
        v30 = vabsq_f32(v61.val[0]);
        v31 = vabsq_f32(v62.val[0]);
        v32 = vcvtq_f64_f32(*v30.f32);
        v33 = vcvtq_f64_f32(*v31.f32);
        v34 = vabsq_f32(v61.val[1]);
        v35 = vabsq_f32(v62.val[1]);
        v36 = vaddq_f64(vcvt_hight_f64_f32(v30), vcvt_hight_f64_f32(v34));
        v37 = vaddq_f64(v32, vcvtq_f64_f32(*v34.f32));
        v38 = vaddq_f64(vcvt_hight_f64_f32(v31), vcvt_hight_f64_f32(v35));
        v39 = vaddq_f64(v33, vcvtq_f64_f32(*v35.f32));
        v40 = vabsq_f32(v61.val[2]);
        v41 = vabsq_f32(v62.val[2]);
        v61.val[0] = vabsq_f32(v61.val[3]);
        v61.val[1] = vabsq_f32(v62.val[3]);
        v61.val[2] = vcvtq_f64_f32(*v61.val[0].f32);
        v61.val[3] = vcvtq_f64_f32(*v61.val[1].f32);
        v61.val[0] = vaddq_f64(vaddq_f64(v36, vcvt_hight_f64_f32(v40)), vcvt_hight_f64_f32(v61.val[0]));
        v61.val[2] = vaddq_f64(vaddq_f64(v37, vcvtq_f64_f32(*v40.f32)), v61.val[2]);
        v61.val[1] = vaddq_f64(vaddq_f64(v38, vcvt_hight_f64_f32(v41)), vcvt_hight_f64_f32(v61.val[1]));
        v61.val[3] = vaddq_f64(vaddq_f64(v39, vcvtq_f64_f32(*v41.f32)), v61.val[3]);
        v12 = v12 + *v61.val[2].i64 + *&v61.val[2].i64[1] + *v61.val[0].i64 + *&v61.val[0].i64[1] + *v61.val[3].i64 + *&v61.val[3].i64[1] + *v61.val[1].i64 + *&v61.val[1].i64[1];
        v27 += 8;
        v28 -= 8;
      }

      while (v28);
      if (v26 == (v26 & 0x3FFFFFF8))
      {
LABEL_34:
        v11 = (v10 & 0xFFFFFFFC) + 4;
        if (v11 >= v9)
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0.0;
    }

    v42 = v13 * 4 + 2;
    v43 = &a1[v13].f32[3];
    do
    {
      v12 = v12 + vaddvq_f64(vcvtq_f64_f32(vabs_f32(*(v43 - 3)))) + fabsf(*(v43 - 1)) + fabsf(*v43);
      v44 = v42 + 2;
      v42 += 4;
      v43 += 4;
    }

    while (v44 <= v10);
    goto LABEL_34;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = a4;
    if (a5 >= 8)
    {
      v14 = 0;
      v15 = a1 + 1;
      v16 = 4 * a5;
      do
      {
        if (a2[v14])
        {
          v17 = a5 & 0x7FFFFFF8;
          v18 = v15;
          do
          {
            v19 = vabsq_f32(v18[-1]);
            v20 = vabsq_f32(*v18);
            v21 = vcvt_hight_f64_f32(v19);
            v22 = vcvtq_f64_f32(*v19.f32);
            v23 = vcvt_hight_f64_f32(v20);
            v24 = vcvtq_f64_f32(*v20.f32);
            v5 = v5 + v22.f64[0] + v22.f64[1] + v21.f64[0] + v21.f64[1] + v24.f64[0] + v24.f64[1] + v23.f64[0] + v23.f64[1];
            v18 += 2;
            v17 -= 8;
          }

          while (v17);
          if ((a5 & 0x7FFFFFF8) != a5)
          {
            v25 = a5 & 0x7FFFFFF8;
            do
            {
              v5 = v5 + fabsf(a1->f32[v25++]);
            }

            while (a5 != v25);
          }
        }

        ++v14;
        v15 = (v15 + v16);
        a1 = (a1 + v16);
      }

      while (v14 != a4);
    }

    else
    {
      v7 = &a1->f32[3];
      do
      {
        if (*a2++)
        {
          v5 = v5 + fabsf(*(v7 - 3));
          if (a5 != 1)
          {
            v5 = v5 + fabsf(*(v7 - 2));
            if (a5 != 2)
            {
              v5 = v5 + fabsf(*(v7 - 1));
              if (a5 != 3)
              {
                v5 = v5 + fabsf(*v7);
                if (a5 != 4)
                {
                  v5 = v5 + fabsf(v7[1]);
                  if (a5 != 5)
                  {
                    v5 = v5 + fabsf(v7[2]);
                    if (a5 != 6)
                    {
                      v5 = v5 + fabsf(v7[3]);
                    }
                  }
                }
              }
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
    }
  }

LABEL_43:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A2E20(float *a1, uint64_t a2, float *a3, int a4, int a5)
{
  v5 = *a3;
  if (a2)
  {
    if (a4 >= 1 && a5 >= 1)
    {
      for (i = 0; i != a4; ++i)
      {
        if (*(a2 + i))
        {
          for (j = 0; j != a5; ++j)
          {
            v8 = fabsf(a1[j]);
            if (v5 < v8)
            {
              v5 = v8;
            }
          }
        }

        a1 += a5;
      }
    }
  }

  else
  {
    v9 = (a5 * a4);
    v10 = 0.0;
    if (v9 >= 1)
    {
      do
      {
        v11 = *a1++;
        v12 = fabsf(v11);
        if (v10 < v12)
        {
          v10 = v12;
        }

        --v9;
      }

      while (v9);
    }

    if (v5 < v10)
    {
      v5 = v10;
    }
  }

  *a3 = v5;
  return 0;
}

uint64_t sub_1002A2EC8(uint64_t a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case 4:
      v5 = &unk_1003E5268;
      v6 = (a2 - 4);
      if (a2 < 4)
      {
LABEL_6:
        v7 = 0;
        result = 0;
        if (a2 <= 0)
        {
          return result;
        }

LABEL_12:
        v15 = v7;
        v16 = ~v7 + a2;
        if (v16)
        {
          v17 = 0;
          v18 = v16 + 1;
          v19 = (v16 + 1) & 0x1FFFFFFFELL;
          v20 = v19 + v15;
          v21 = (v15 + a1 + 1);
          v22 = v19;
          do
          {
            v23 = *(v21 - 1);
            v24 = *v21;
            v21 += 2;
            LODWORD(result) = result + v5[v23];
            v17 += v5[v24];
            v22 -= 2;
          }

          while (v22);
          result = (v17 + result);
          if (v18 == v19)
          {
            return result;
          }
        }

        else
        {
          v20 = v15;
        }

        v25 = (a1 + v20);
        do
        {
          v26 = *v25++;
          result = result + v5[v26];
          LODWORD(v20) = v20 + 1;
        }

        while (v20 < a2);
        return result;
      }

      break;
    case 2:
      v5 = byte_1003E5168;
      v6 = (a2 - 4);
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      break;
    case 1:
      return sub_1002A7F44(a1, a2);
    default:
      return 0xFFFFFFFFLL;
  }

  v8 = 0;
  LODWORD(result) = 0;
  v9 = v6 & 0xFFFFFFFC;
  v10 = (a1 + 3);
  do
  {
    v11 = v5[*(v10 - 3)];
    v12 = v5[*(v10 - 2)];
    v13 = v5[*(v10 - 1)];
    v14 = *v10;
    v10 += 4;
    result = result + v11 + v12 + v13 + v5[v14];
    v8 += 4;
  }

  while (v8 <= v6);
  v7 = v9 + 4;
  if (v9 + 4 < a2)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1002A3000(uint64_t a1, signed int a2, double a3, double a4, int8x16_t a5)
{
  v5 = a2 & 0xFFFFFFF0;
  if ((a2 & 0xFFFFFFF0) < 1)
  {
    v6 = 0;
    v7 = 0uLL;
  }

  else
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = a1;
    do
    {
      if (v5 - v6 >= 15360)
      {
        v9 = 15360;
      }

      else
      {
        v9 = v5 - v6;
      }

      if (v5 - v6 >= 1)
      {
        v10 = 0;
        do
        {
          if (v9 - v10 >= 240)
          {
            v13 = 240;
          }

          else
          {
            v13 = v9 - v10;
          }

          v14 = 0uLL;
          if (v9 - v10 >= 16)
          {
            v15 = 0;
            do
            {
              v14 = vsubq_s8(v14, vceqzq_s8(*(v8 + v15)));
              v15 += 16;
            }

            while (v15 <= v13 - 16);
          }

          v11 = vmovl_u8(*v14.i8);
          v12 = vmovl_high_u8(v14);
          a5 = vextq_s8(v11, v11, 8uLL);
          v7 = vaddw_u16(vaddw_u16(v7, *&vaddw_u8(a5, *v14.i8)), *&vaddw_u8(vextq_s8(v12, v12, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
          v8 += v13;
          v10 += v13;
        }

        while (v10 < v9);
      }

      v6 += v9;
    }

    while (v6 < v5);
  }

  v16 = vaddvq_s32(v7);
  if (v16 >= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v6 - v16;
  if (v6 < a2)
  {
    v18 = a2 - v6;
    if (v18 < 4)
    {
      v19 = v6;
      goto LABEL_34;
    }

    if (v18 >= 0x20)
    {
      v20 = v18 & 0xFFFFFFFFFFFFFFE0;
      v21 = 0uLL;
      v22 = v17;
      v23.i64[0] = 0x100000001;
      v23.i64[1] = 0x100000001;
      v24 = (v6 + a1 + 16);
      v25 = v18 & 0xFFFFFFFFFFFFFFE0;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v32 = vtstq_s8(v24[-1], v24[-1]);
        v33 = vmovl_u8(*v32.i8);
        v34 = vmovl_high_u8(v32);
        v35 = vtstq_s8(*v24, *v24);
        v36 = vmovl_u8(*v35.i8);
        v37 = vmovl_high_u8(v35);
        v27 = vaddq_s32(v27, vandq_s8(vmovl_high_u16(v34), v23));
        v26 = vaddq_s32(v26, vandq_s8(vmovl_u16(*v34.i8), v23));
        v21 = vaddq_s32(v21, vandq_s8(vmovl_high_u16(v33), v23));
        v22 = vaddq_s32(v22, vandq_s8(vmovl_u16(*v33.i8), v23));
        v31 = vaddq_s32(v31, vandq_s8(vmovl_high_u16(v37), v23));
        v30 = vaddq_s32(v30, vandq_s8(vmovl_u16(*v37.i8), v23));
        v29 = vaddq_s32(v29, vandq_s8(vmovl_high_u16(v36), v23));
        v28 = vaddq_s32(v28, vandq_s8(vmovl_u16(*v36.i8), v23));
        v24 += 2;
        v25 -= 32;
      }

      while (v25);
      a5 = vaddq_s32(v31, v27);
      v17 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v28, v22), vaddq_s32(v30, v26)), vaddq_s32(vaddq_s32(v29, v21), a5)));
      if (v18 == v20)
      {
        return v17;
      }

      if ((v18 & 0x1C) == 0)
      {
        v19 = v20 + v6;
LABEL_34:
        v44 = (a1 + v19);
        v45 = a2 - v19;
        do
        {
          if (*v44++)
          {
            v17 = (v17 + 1);
          }

          else
          {
            v17 = v17;
          }

          --v45;
        }

        while (v45);
        return v17;
      }
    }

    else
    {
      v20 = 0;
    }

    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + v6;
    v38 = v17;
    v39 = (a1 + v20 + v6);
    v40 = v20 - (v18 & 0xFFFFFFFFFFFFFFFCLL);
    v41.i64[0] = 0x100000001;
    v41.i64[1] = 0x100000001;
    do
    {
      v42 = *v39++;
      a5.i32[0] = v42;
      v43 = vmovl_u8(*a5.i8).u64[0];
      a5 = vandq_s8(vmovl_u16(vtst_s16(v43, v43)), v41);
      v38 = vaddq_s32(v38, a5);
      v40 += 4;
    }

    while (v40);
    v17 = vaddvq_s32(v38);
    if (v18 == (v18 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v17;
    }

    goto LABEL_34;
  }

  return v17;
}

uint64_t sub_1002A3284(int16x8_t *a1, int a2)
{
  v2 = a2 & 0xFFFFFFF8;
  if ((a2 & 0xFFFFFFF8) < 1)
  {
    v3 = 0;
    v4 = 0uLL;
  }

  else
  {
    v3 = 0;
    v4 = 0uLL;
    do
    {
      if (v2 - v3 >= 0x200000)
      {
        v5 = 0x200000;
      }

      else
      {
        v5 = v2 - v3;
      }

      if (v2 - v3 >= 1)
      {
        v6 = 0;
        do
        {
          if (v5 - v6 >= 0x8000)
          {
            v7 = 0x8000;
          }

          else
          {
            v7 = v5 - v6;
          }

          v8 = 0uLL;
          if (v5 - v6 >= 8)
          {
            v9 = 0;
            v10 = a1;
            do
            {
              v11 = *v10++;
              v8 = vsubq_s16(v8, vceqzq_s16(v11));
              v9 += 8;
            }

            while (v9 <= v7 - 8);
          }

          v4 = vaddw_u16(vaddw_high_u16(v4, v8), *v8.i8);
          a1 = (a1 + 2 * v7);
          v6 += v7;
        }

        while (v6 < v5);
      }

      v3 += v5;
    }

    while (v3 < v2);
  }

  v12 = a2 - v3;
  v13 = (a2 - v3 - 4);
  if (a2 - v3 >= 4)
  {
    if (v13 < 0xC)
    {
      v16 = 0;
      v15 = 0;
      goto LABEL_34;
    }

    v17 = (v13 >> 2) + 1;
    if (v13 >= 0x3C)
    {
      v18 = v17 & 0x3FFFFFF0;
      v19 = a1 + 4;
      v20 = 0uLL;
      v21.i64[0] = 0x100000001;
      v21.i64[1] = 0x100000001;
      v22 = v18;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      do
      {
        i16 = v19[-4].i16;
        v65 = vld4q_s16(i16);
        v66 = vld4q_s16(v19->i16);
        v27 = vtstq_s16(v65.val[0], v65.val[0]);
        v28 = vtstq_s16(v66.val[0], v66.val[0]);
        v29 = vtstq_s16(v65.val[1], v65.val[1]);
        v30 = vtstq_s16(v66.val[1], v66.val[1]);
        v31 = vtstq_s16(v65.val[2], v65.val[2]);
        v32 = vtstq_s16(v66.val[2], v66.val[2]);
        v65.val[0] = vtstq_s16(v65.val[3], v65.val[3]);
        v65.val[2] = vtstq_s16(v66.val[3], v66.val[3]);
        v23 = vaddq_s32(vaddq_s32(vaddq_s32(v23, vandq_s8(vmovl_high_u16(v27), v21)), vaddq_s32(vandq_s8(vmovl_high_u16(v29), v21), vandq_s8(vmovl_high_u16(v31), v21))), vandq_s8(vmovl_high_u16(v65.val[0]), v21));
        v20 = vaddq_s32(vaddq_s32(vaddq_s32(v20, vandq_s8(vmovl_u16(*v27.i8), v21)), vaddq_s32(vandq_s8(vmovl_u16(*v29.i8), v21), vandq_s8(vmovl_u16(*v31.i8), v21))), vandq_s8(vmovl_u16(*v65.val[0].i8), v21));
        v25 = vaddq_s32(vaddq_s32(vaddq_s32(v25, vandq_s8(vmovl_high_u16(v28), v21)), vaddq_s32(vandq_s8(vmovl_high_u16(v30), v21), vandq_s8(vmovl_high_u16(v32), v21))), vandq_s8(vmovl_high_u16(v65.val[2]), v21));
        v19 += 8;
        v24 = vaddq_s32(vaddq_s32(vaddq_s32(v24, vandq_s8(vmovl_u16(*v28.i8), v21)), vaddq_s32(vandq_s8(vmovl_u16(*v30.i8), v21), vandq_s8(vmovl_u16(*v32.i8), v21))), vandq_s8(vmovl_u16(*v65.val[2].i8), v21));
        v22 -= 16;
      }

      while (v22);
      v15 = vaddvq_s32(vaddq_s32(vaddq_s32(v24, v20), vaddq_s32(v25, v23)));
      if (v17 == v18)
      {
        goto LABEL_36;
      }

      if ((v17 & 0xC) == 0)
      {
        v16 = 4 * v18;
LABEL_34:
        v37 = (a1 + 2 * v16);
        do
        {
          v38 = *v37++;
          v39 = vbic_s8(0x8000400020001, vceqz_s16(v38));
          v39.i32[0] = vaddv_s16(v39) & 0xF;
          v40 = vcnt_s8(v39);
          v40.i16[0] = vaddlv_u8(v40);
          v15 += v40.i32[0];
          v16 += 4;
        }

        while (v16 <= v13);
        goto LABEL_36;
      }
    }

    else
    {
      v15 = 0;
      v18 = 0;
    }

    v16 = 4 * (v17 & 0x3FFFFFFC);
    v33 = v15;
    v34 = &a1->i16[4 * v18];
    v35 = v18 - (v17 & 0x3FFFFFFC);
    v36.i64[0] = 0x100000001;
    v36.i64[1] = 0x100000001;
    do
    {
      v64 = vld4_s16(v34);
      v34 += 16;
      v33 = vaddq_s32(vaddq_s32(vaddq_s32(v33, vandq_s8(vmovl_u16(vtst_s16(v64.val[0], v64.val[0])), v36)), vaddq_s32(vandq_s8(vmovl_u16(vtst_s16(v64.val[1], v64.val[1])), v36), vandq_s8(vmovl_u16(vtst_s16(v64.val[2], v64.val[2])), v36))), vandq_s8(vmovl_u16(vtst_s16(v64.val[3], v64.val[3])), v36));
      v35 += 4;
    }

    while (v35);
    v15 = vaddvq_s32(v33);
    if (v17 != (v17 & 0x3FFFFFFC))
    {
      goto LABEL_34;
    }

LABEL_36:
    v14 = (v13 & 0xFFFFFFFC) + 4;
    if (v14 >= v12)
    {
      goto LABEL_54;
    }

    goto LABEL_37;
  }

  v14 = 0;
  v15 = 0;
  if (v12 <= 0)
  {
    goto LABEL_54;
  }

LABEL_37:
  v41 = v14;
  v42 = ~v3 + a2 - v14;
  if (v42 < 3)
  {
    v43 = v14;
    goto LABEL_50;
  }

  v44 = v42 + 1;
  if (v42 < 0xF)
  {
    v45 = 0;
LABEL_45:
    v43 = (v44 & 0x1FFFFFFFCLL) + v41;
    v55 = v15;
    v56 = v45 - (v44 & 0x1FFFFFFFCLL);
    v57 = (a1 + 2 * v45 + 2 * v41);
    v58.i64[0] = 0x100000001;
    v58.i64[1] = 0x100000001;
    do
    {
      v59 = *v57++;
      v55 = vaddq_s32(v55, vandq_s8(vmovl_u16(vtst_s16(v59, v59)), v58));
      v56 += 4;
    }

    while (v56);
    v15 = vaddvq_s32(v55);
    if (v44 == (v44 & 0x1FFFFFFFCLL))
    {
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  v45 = v44 & 0x1FFFFFFF0;
  v46 = 0uLL;
  v47 = v15;
  v48 = (a1 + 2 * v41 + 16);
  v49.i64[0] = 0x100000001;
  v49.i64[1] = 0x100000001;
  v50 = v44 & 0x1FFFFFFF0;
  v51 = 0uLL;
  v52 = 0uLL;
  do
  {
    v53 = vtstq_s16(v48[-1], v48[-1]);
    v54 = vtstq_s16(*v48, *v48);
    v46 = vaddq_s32(v46, vandq_s8(vmovl_high_u16(v53), v49));
    v47 = vaddq_s32(v47, vandq_s8(vmovl_u16(*v53.i8), v49));
    v52 = vaddq_s32(v52, vandq_s8(vmovl_high_u16(v54), v49));
    v51 = vaddq_s32(v51, vandq_s8(vmovl_u16(*v54.i8), v49));
    v48 += 2;
    v50 -= 16;
  }

  while (v50);
  v15 = vaddvq_s32(vaddq_s32(vaddq_s32(v51, v47), vaddq_s32(v52, v46)));
  if (v44 == v45)
  {
    goto LABEL_54;
  }

  if ((v44 & 0xC) != 0)
  {
    goto LABEL_45;
  }

  v43 = v45 + v41;
LABEL_50:
  v60 = a1 + v43;
  do
  {
    if (*v60++)
    {
      ++v15;
    }

    LODWORD(v43) = v43 + 1;
  }

  while (v12 > v43);
LABEL_54:
  v62 = vaddvq_s32(v4);
  if (v62 >= 0x7FFFFFFF)
  {
    v62 = 0x7FFFFFFF;
  }

  return v3 - v62 + v15;
}

uint64_t sub_1002A36F0(uint64_t a1, int a2)
{
  v2 = a2 & 0xFFFFFFF8;
  if ((a2 & 0xFFFFFFF8) < 1)
  {
    v3 = 0;
    v4 = 0uLL;
  }

  else
  {
    v3 = 0;
    v4 = 0uLL;
    do
    {
      if (v2 - v3 >= 0x200000)
      {
        v5 = 0x200000;
      }

      else
      {
        v5 = v2 - v3;
      }

      if (v2 - v3 >= 1)
      {
        v6 = 0;
        do
        {
          if (v5 - v6 >= 0x8000)
          {
            v7 = 0x8000;
          }

          else
          {
            v7 = v5 - v6;
          }

          v8 = 0uLL;
          if (v5 - v6 >= 8)
          {
            v9 = 0;
            v10 = (a1 + 16);
            do
            {
              v8 = vsubq_s16(v8, vuzp1q_s16(vceqzq_s32(v10[-1]), vceqzq_s32(*v10)));
              v9 += 8;
              v10 += 2;
            }

            while (v9 <= v7 - 8);
          }

          v4 = vaddw_u16(vaddw_high_u16(v4, v8), *v8.i8);
          a1 += 4 * v7;
          v6 += v7;
        }

        while (v6 < v5);
      }

      v3 += v5;
    }

    while (v3 < v2);
  }

  v11 = a2 - v3;
  v12 = (a2 - v3 - 4);
  if (a2 - v3 >= 4)
  {
    if (v12 > 0x1B)
    {
      v16 = (v12 >> 2) + 1;
      v15 = 4 * (v16 & 0x3FFFFFF8);
      v17 = (a1 + 64);
      v18 = 0uLL;
      v19 = v16 & 0x3FFFFFF8;
      v20 = 0uLL;
      do
      {
        v21 = v17 - 16;
        v38 = vld4q_f32(v21);
        v39 = vld4q_f32(v17);
        v18 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v18, vtstq_s32(v38.val[0], v38.val[0])), vtstq_s32(v38.val[1], v38.val[1])), vtstq_s32(v38.val[2], v38.val[2])), vtstq_s32(v38.val[3], v38.val[3]));
        v20 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v20, vtstq_s32(v39.val[0], v39.val[0])), vtstq_s32(v39.val[1], v39.val[1])), vtstq_s32(v39.val[2], v39.val[2])), vtstq_s32(v39.val[3], v39.val[3]));
        v17 += 32;
        v19 -= 8;
      }

      while (v19);
      v14 = vaddvq_s32(vaddq_s32(v20, v18));
      if (v16 == (v16 & 0x3FFFFFF8))
      {
LABEL_28:
        v13 = (v12 & 0xFFFFFFFC) + 4;
        if (v13 >= v11)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v22 = (a1 + 4 * v15);
    do
    {
      v23 = *v22++;
      v24 = vbicq_s8(xmmword_1003E3A20, vceqzq_s32(v23));
      v24.i32[0] = vaddvq_s32(v24) & 0xF;
      *v24.i8 = vcnt_s8(*v24.i8);
      v24.i16[0] = vaddlv_u8(*v24.i8);
      v14 += v24.i32[0];
      v15 += 4;
    }

    while (v15 <= v12);
    goto LABEL_28;
  }

  v13 = 0;
  v14 = 0;
  if (v11 <= 0)
  {
    goto LABEL_38;
  }

LABEL_29:
  v25 = v13;
  v26 = (~v3 + a2 - v13);
  if (v26 > 6)
  {
    v28 = v26 + 1;
    v29 = (v26 + 1) & 0x1FFFFFFF8;
    v27 = v29 + v25;
    v30 = 0uLL;
    v31 = v14;
    v32 = (a1 + 4 * v25 + 16);
    v33 = v29;
    do
    {
      v31 = vsubq_s32(v31, vtstq_s32(v32[-1], v32[-1]));
      v30 = vsubq_s32(v30, vtstq_s32(*v32, *v32));
      v32 += 2;
      v33 -= 8;
    }

    while (v33);
    v14 = vaddvq_s32(vaddq_s32(v30, v31));
    if (v28 == v29)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v27 = v25;
  }

  v34 = (a1 + 4 * v27);
  do
  {
    if (*v34++)
    {
      ++v14;
    }

    LODWORD(v27) = v27 + 1;
  }

  while (v11 > v27);
LABEL_38:
  v36 = vaddvq_s32(v4);
  if (v36 >= 0x7FFFFFFF)
  {
    v36 = 0x7FFFFFFF;
  }

  return v3 - v36 + v14;
}

uint64_t sub_1002A3970(float32x4_t *a1, int a2)
{
  v2 = a2 & 0xFFFFFFF8;
  if ((a2 & 0xFFFFFFF8) < 1)
  {
    v3 = 0;
    v4 = 0uLL;
  }

  else
  {
    v3 = 0;
    v4 = 0uLL;
    do
    {
      if (v2 - v3 >= 0x200000)
      {
        v5 = 0x200000;
      }

      else
      {
        v5 = v2 - v3;
      }

      if (v2 - v3 >= 1)
      {
        v6 = 0;
        do
        {
          if (v5 - v6 >= 0x8000)
          {
            v7 = 0x8000;
          }

          else
          {
            v7 = v5 - v6;
          }

          v8 = 0uLL;
          if (v5 - v6 >= 8)
          {
            v9 = 0;
            v10 = a1 + 1;
            do
            {
              v8 = vsubq_s16(v8, vuzp1q_s16(vceqzq_f32(v10[-1]), vceqzq_f32(*v10)));
              v9 += 8;
              v10 += 2;
            }

            while (v9 <= v7 - 8);
          }

          v4 = vaddw_u16(vaddw_high_u16(v4, v8), *v8.i8);
          a1 = (a1 + 4 * v7);
          v6 += v7;
        }

        while (v6 < v5);
      }

      v3 += v5;
    }

    while (v3 < v2);
  }

  v11 = a2 - v3;
  v12 = (a2 - v3 - 4);
  if (a2 - v3 >= 4)
  {
    if (v12 > 0x1B)
    {
      v16 = (v12 >> 2) + 1;
      v15 = 4 * (v16 & 0x3FFFFFF8);
      v17 = a1 + 4;
      v18 = 0uLL;
      v19 = v16 & 0x3FFFFFF8;
      v20 = 0uLL;
      do
      {
        f32 = v17[-4].f32;
        v38 = vld4q_f32(f32);
        v39 = vld4q_f32(v17->f32);
        v18 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v18, vmvnq_s8(vceqzq_f32(v38.val[0]))), vmvnq_s8(vceqzq_f32(v38.val[1]))), vmvnq_s8(vceqzq_f32(v38.val[2]))), vmvnq_s8(vceqzq_f32(v38.val[3])));
        v20 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v20, vmvnq_s8(vceqzq_f32(v39.val[0]))), vmvnq_s8(vceqzq_f32(v39.val[1]))), vmvnq_s8(vceqzq_f32(v39.val[2]))), vmvnq_s8(vceqzq_f32(v39.val[3])));
        v17 += 8;
        v19 -= 8;
      }

      while (v19);
      v14 = vaddvq_s32(vaddq_s32(v20, v18));
      if (v16 == (v16 & 0x3FFFFFF8))
      {
LABEL_28:
        v13 = (v12 & 0xFFFFFFFC) + 4;
        if (v13 >= v11)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v22 = &a1[v15 / 4];
    do
    {
      v23 = *v22++;
      v24 = vbicq_s8(xmmword_1003E3A20, vceqzq_f32(v23));
      v24.i32[0] = vaddvq_s32(v24) & 0xF;
      *v24.i8 = vcnt_s8(*v24.i8);
      v24.i16[0] = vaddlv_u8(*v24.i8);
      v14 += v24.i32[0];
      v15 += 4;
    }

    while (v15 <= v12);
    goto LABEL_28;
  }

  v13 = 0;
  v14 = 0;
  if (v11 <= 0)
  {
    goto LABEL_38;
  }

LABEL_29:
  v25 = v13;
  v26 = (~v3 + a2 - v13);
  if (v26 > 6)
  {
    v28 = v26 + 1;
    v29 = (v26 + 1) & 0x1FFFFFFF8;
    v27 = v29 + v25;
    v30 = 0uLL;
    v31 = v14;
    v32 = (a1 + 4 * v25 + 16);
    v33 = v29;
    do
    {
      v31 = vsubq_s32(v31, vmvnq_s8(vceqzq_f32(v32[-1])));
      v30 = vsubq_s32(v30, vmvnq_s8(vceqzq_f32(*v32)));
      v32 += 2;
      v33 -= 8;
    }

    while (v33);
    v14 = vaddvq_s32(vaddq_s32(v30, v31));
    if (v28 == v29)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v27 = v25;
  }

  v34 = &a1->f32[v27];
  do
  {
    v35 = *v34++;
    if (v35 != 0.0)
    {
      ++v14;
    }

    LODWORD(v27) = v27 + 1;
  }

  while (v11 > v27);
LABEL_38:
  v36 = vaddvq_s32(v4);
  if (v36 >= 0x7FFFFFFF)
  {
    v36 = 0x7FFFFFFF;
  }

  return v3 - v36 + v14;
}

uint64_t sub_1002A3C18(uint64_t a1, int a2)
{
  v2 = (a2 - 4);
  if (a2 < 4)
  {
    v3 = 0;
    v4 = 0;
    if (a2 <= 0)
    {
      return v4;
    }

    goto LABEL_12;
  }

  if (v2 <= 0x1B)
  {
    v5 = 0;
    LODWORD(v4) = 0;
LABEL_9:
    v14 = (a1 + 8 * v5);
    do
    {
      v15 = *v14;
      v16 = v14[1];
      v14 += 2;
      v17 = vbicq_s8(xmmword_1003E3A20, vuzp1q_s32(vceqzq_f64(v15), vceqzq_f64(v16)));
      v17.i32[0] = vaddvq_s32(v17);
      *v17.i8 = vcnt_s8(*v17.i8);
      v17.i16[0] = vaddlv_u8(*v17.i8);
      v4 = (v4 + v17.i32[0]);
      v5 += 4;
    }

    while (v5 <= v2);
    goto LABEL_11;
  }

  v6 = (v2 >> 2) + 1;
  v5 = 4 * (v6 & 0x3FFFFFF8);
  v7 = (a1 + 128);
  v8 = 0uLL;
  v9 = v6 & 0x3FFFFFF8;
  v10 = 0uLL;
  do
  {
    v11 = v7 - 16;
    v12 = v7 - 8;
    v34 = vld4q_f64(v11);
    v35 = vld4q_f64(v12);
    v13 = v7;
    v36 = vld4q_f64(v13);
    v13 += 8;
    v37 = vld4q_f64(v13);
    v8 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v8, vmvnq_s8(vuzp1q_s32(vceqzq_f64(v34.val[0]), vceqzq_f64(v35.val[0])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v34.val[1]), vceqzq_f64(v35.val[1])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v34.val[2]), vceqzq_f64(v35.val[2])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v34.val[3]), vceqzq_f64(v35.val[3]))));
    v10 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v10, vmvnq_s8(vuzp1q_s32(vceqzq_f64(v36.val[0]), vceqzq_f64(v37.val[0])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v36.val[1]), vceqzq_f64(v37.val[1])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v36.val[2]), vceqzq_f64(v37.val[2])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v36.val[3]), vceqzq_f64(v37.val[3]))));
    v7 += 32;
    v9 -= 8;
  }

  while (v9);
  v4 = vaddvq_s32(vaddq_s32(v10, v8));
  if (v6 != (v6 & 0x3FFFFFF8))
  {
    goto LABEL_9;
  }

LABEL_11:
  v3 = (v2 & 0xFFFFFFFC) + 4;
  if (v3 >= a2)
  {
    return v4;
  }

LABEL_12:
  v18 = v3;
  v19 = (~v3 + a2);
  if (v19 > 6)
  {
    v21 = v19 + 1;
    v22 = (v19 + 1) & 0x1FFFFFFF8;
    v20 = v22 + v18;
    v23 = 0uLL;
    v24 = v4;
    v25 = (a1 + 8 * v18 + 32);
    v26 = v22;
    do
    {
      v27 = v25[-2];
      v28 = v25[-1];
      v29 = *v25;
      v30 = v25[1];
      v25 += 4;
      v24 = vsubq_s32(v24, vmvnq_s8(vuzp1q_s32(vceqzq_f64(v27), vceqzq_f64(v28))));
      v23 = vsubq_s32(v23, vmvnq_s8(vuzp1q_s32(vceqzq_f64(v29), vceqzq_f64(v30))));
      v26 -= 8;
    }

    while (v26);
    v4 = vaddvq_s32(vaddq_s32(v23, v24));
    if (v21 == v22)
    {
      return v4;
    }
  }

  else
  {
    v20 = v18;
  }

  v31 = (a1 + 8 * v20);
  do
  {
    v32 = *v31++;
    if (v32 == 0.0)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v4 + 1);
    }

    LODWORD(v20) = v20 + 1;
  }

  while (v20 < a2);
  return v4;
}

unsigned __int8 *sub_1002A3E60(unsigned __int8 *result, unsigned __int8 *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, unsigned int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v14 = *result++;
        v13 = v14;
        v16 = *a2++;
        v15 = v16;
        if (v8 <= v13)
        {
          v17 = v10;
        }

        else
        {
          v17 = a8;
        }

        if (v8 >= v13)
        {
          v18 = v13;
        }

        else
        {
          v18 = v8;
        }

        if (v9 >= v13)
        {
          v19 = v11;
        }

        else
        {
          v19 = a8;
        }

        if (v9 > v13)
        {
          v13 = v9;
        }

        if (v15)
        {
          v10 = v17;
          v8 = v18;
          v11 = v19;
          v9 = v13;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v20 = a7;
    do
    {
      v22 = *result++;
      v21 = v22;
      v24 = __OFSUB__(v8, v22);
      v23 = v8 - v22 < 0;
      if (v8 > v22)
      {
        v10 = a8;
      }

      if (v23 == v24)
      {
        v8 = v21;
      }

      if (v9 < v21)
      {
        v11 = a8;
      }

      if (v9 <= v21)
      {
        v9 = v21;
      }

      ++a8;
      --v20;
    }

    while (v20);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

char *sub_1002A3F08(char *result, unsigned __int8 *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, unsigned int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v14 = *result++;
        v13 = v14;
        v16 = *a2++;
        v15 = v16;
        if (v8 <= v13)
        {
          v17 = v10;
        }

        else
        {
          v17 = a8;
        }

        if (v8 >= v13)
        {
          v18 = v13;
        }

        else
        {
          v18 = v8;
        }

        if (v9 >= v13)
        {
          v19 = v11;
        }

        else
        {
          v19 = a8;
        }

        if (v9 > v13)
        {
          v13 = v9;
        }

        if (v15)
        {
          v10 = v17;
          v8 = v18;
          v11 = v19;
          v9 = v13;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v20 = a7;
    do
    {
      v22 = *result++;
      v21 = v22;
      v24 = __OFSUB__(v8, v22);
      v23 = v8 - v22 < 0;
      if (v8 > v22)
      {
        v10 = a8;
      }

      if (v23 == v24)
      {
        v8 = v21;
      }

      if (v9 < v21)
      {
        v11 = a8;
      }

      if (v9 <= v21)
      {
        v9 = v21;
      }

      ++a8;
      --v20;
    }

    while (v20);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

unsigned __int16 *sub_1002A3FB0(unsigned __int16 *result, unsigned __int8 *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, unsigned int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v14 = *result++;
        v13 = v14;
        v16 = *a2++;
        v15 = v16;
        if (v8 <= v13)
        {
          v17 = v10;
        }

        else
        {
          v17 = a8;
        }

        if (v8 >= v13)
        {
          v18 = v13;
        }

        else
        {
          v18 = v8;
        }

        if (v9 >= v13)
        {
          v19 = v11;
        }

        else
        {
          v19 = a8;
        }

        if (v9 > v13)
        {
          v13 = v9;
        }

        if (v15)
        {
          v10 = v17;
          v8 = v18;
          v11 = v19;
          v9 = v13;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v20 = a7;
    do
    {
      v22 = *result++;
      v21 = v22;
      v24 = __OFSUB__(v8, v22);
      v23 = v8 - v22 < 0;
      if (v8 > v22)
      {
        v10 = a8;
      }

      if (v23 == v24)
      {
        v8 = v21;
      }

      if (v9 < v21)
      {
        v11 = a8;
      }

      if (v9 <= v21)
      {
        v9 = v21;
      }

      ++a8;
      --v20;
    }

    while (v20);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

__int16 *sub_1002A4058(__int16 *result, unsigned __int8 *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, unsigned int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v14 = *result++;
        v13 = v14;
        v16 = *a2++;
        v15 = v16;
        if (v8 <= v13)
        {
          v17 = v10;
        }

        else
        {
          v17 = a8;
        }

        if (v8 >= v13)
        {
          v18 = v13;
        }

        else
        {
          v18 = v8;
        }

        if (v9 >= v13)
        {
          v19 = v11;
        }

        else
        {
          v19 = a8;
        }

        if (v9 > v13)
        {
          v13 = v9;
        }

        if (v15)
        {
          v10 = v17;
          v8 = v18;
          v11 = v19;
          v9 = v13;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v20 = a7;
    do
    {
      v22 = *result++;
      v21 = v22;
      v24 = __OFSUB__(v8, v22);
      v23 = v8 - v22 < 0;
      if (v8 > v22)
      {
        v10 = a8;
      }

      if (v23 == v24)
      {
        v8 = v21;
      }

      if (v9 < v21)
      {
        v11 = a8;
      }

      if (v9 <= v21)
      {
        v9 = v21;
      }

      ++a8;
      --v20;
    }

    while (v20);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

int *sub_1002A4100(int *result, unsigned __int8 *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, unsigned int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v14 = *result++;
        v13 = v14;
        v15 = *a2++;
        v16 = v15 != 0;
        if (v15 != 0 && v13 < v8)
        {
          v10 = a8;
          v8 = v13;
        }

        if (v16 && v13 > v9)
        {
          v11 = a8;
          v9 = v13;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v17 = a7;
    do
    {
      v19 = *result++;
      v18 = v19;
      if (v19 < v8)
      {
        v10 = a8;
        v8 = v18;
      }

      if (v18 > v9)
      {
        v11 = a8;
        v9 = v18;
      }

      ++a8;
      --v17;
    }

    while (v17);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

float *sub_1002A41AC(float *result, unsigned __int8 *a2, float *a3, float *a4, uint64_t *a5, uint64_t *a6, unsigned int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v13 = *result++;
        v14 = v13;
        v15 = *a2++;
        v16 = v15 != 0;
        if (v15 != 0 && v14 < v8)
        {
          v10 = a8;
          v8 = v14;
        }

        if (v16 && v14 > v9)
        {
          v11 = a8;
          v9 = v14;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v17 = a7;
    do
    {
      v18 = *result++;
      v19 = v18;
      if (v18 < v8)
      {
        v10 = a8;
        v8 = v19;
      }

      if (v19 > v9)
      {
        v11 = a8;
        v9 = v19;
      }

      ++a8;
      --v17;
    }

    while (v17);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

double *sub_1002A4258(double *result, unsigned __int8 *a2, double *a3, double *a4, uint64_t *a5, uint64_t *a6, unsigned int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v13 = *result++;
        v14 = v13;
        LODWORD(v13) = *a2++;
        v15 = LODWORD(v13) != 0;
        if (LODWORD(v13) != 0 && v14 < v8)
        {
          v10 = a8;
          v8 = v14;
        }

        if (v15 && v14 > v9)
        {
          v11 = a8;
          v9 = v14;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v16 = a7;
    do
    {
      v17 = *result++;
      v18 = v17;
      if (v17 < v8)
      {
        v10 = a8;
        v8 = v18;
      }

      if (v18 > v9)
      {
        v11 = a8;
        v9 = v18;
      }

      ++a8;
      --v16;
    }

    while (v16);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

uint64_t sub_1002A4304(int8x16_t *a1, unsigned __int8 *a2, signed int *a3, unsigned int a4, unsigned int a5, double a6, int32x4_t a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = *a3;
  if (a2)
  {
    if (a4 < 1 || a5 < 1)
    {
      goto LABEL_51;
    }

    v12 = a4;
    if (a5 < 4)
    {
      v13 = &a1->u8[2];
      do
      {
        if (*a2++)
        {
          if (v11 <= *(v13 - 2))
          {
            v11 = *(v13 - 2);
          }

          if (a5 != 1)
          {
            if (v11 <= *(v13 - 1))
            {
              v11 = *(v13 - 1);
            }

            if (a5 != 2 && v11 <= *v13)
            {
              v11 = *v13;
            }
          }
        }

        v13 += a5;
        --v12;
      }

      while (v12);
      goto LABEL_51;
    }

    v18 = 0;
    v19 = a5 & 0x7FFFFFFC;
    v20 = a1 + 1;
    while (1)
    {
      if (a2[v18])
      {
        if (a5 >= 0x20)
        {
          v22 = a5 & 0x7FFFFFE0;
          v23 = vdupq_n_s32(v11);
          v24 = v20;
          v25 = v23;
          v26 = v23;
          v27 = v23;
          v28 = v23;
          v29 = v23;
          v30 = v23;
          v31 = v23;
          do
          {
            v32 = v24[-1];
            v26 = vmaxq_s32(v26, vqtbl1q_s8(v32, xmmword_1003E3700));
            v25 = vmaxq_s32(v25, vqtbl1q_s8(v32, xmmword_1003E3730));
            v23 = vmaxq_s32(v23, vqtbl1q_s8(v32, xmmword_1003E3720));
            v27 = vmaxq_s32(v27, vqtbl1q_s8(v32, xmmword_1003E3710));
            v30 = vmaxq_s32(v30, vqtbl1q_s8(*v24, xmmword_1003E3700));
            v29 = vmaxq_s32(v29, vqtbl1q_s8(*v24, xmmword_1003E3730));
            v28 = vmaxq_s32(v28, vqtbl1q_s8(*v24, xmmword_1003E3720));
            v31 = vmaxq_s32(v31, vqtbl1q_s8(*v24, xmmword_1003E3710));
            v24 += 2;
            v22 -= 32;
          }

          while (v22);
          v33 = vmaxq_s32(vmaxq_u32(v23, v28), vmaxq_u32(v26, v30));
          a11 = vmaxq_s32(vmaxq_u32(v25, v29), vmaxq_u32(v27, v31));
          v11 = vmaxvq_s32(vmaxq_s32(v33, a11));
          if ((a5 & 0x7FFFFFE0) == a5)
          {
            goto LABEL_21;
          }

          v21 = a5 & 0x7FFFFFE0;
          v34 = v21;
          if ((a5 & 0x1C) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v21 = 0;
        }

        v35 = vdupq_n_s32(v11);
        do
        {
          a11.i32[0] = *(a1->i32 + v21);
          a11 = vmovl_u16(*&vmovl_u8(*a11.i8));
          v35 = vmaxq_s32(v35, a11);
          v21 += 4;
        }

        while (v19 != v21);
        v11 = vmaxvq_s32(v35);
        v34 = a5 & 0x7FFFFFFC;
        if (v19 != a5)
        {
          do
          {
LABEL_32:
            if (v11 <= a1->u8[v34])
            {
              v11 = a1->u8[v34];
            }

            ++v34;
          }

          while (a5 != v34);
        }
      }

LABEL_21:
      ++v18;
      a1 = (a1 + a5);
      v20 = (v20 + a5);
      if (v18 == v12)
      {
        goto LABEL_51;
      }
    }
  }

  v15 = a5 * a4;
  if (v15 < 1)
  {
    v17 = 0;
    goto LABEL_49;
  }

  if (v15 < 4)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_45;
  }

  if (v15 >= 0x20)
  {
    v16 = v15 & 0x7FFFFFE0;
    v36 = a1 + 1;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = v16;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    do
    {
      v46 = v36[-1];
      v40 = vmaxq_s32(v40, vqtbl1q_s8(v46, xmmword_1003E3700));
      v38 = vmaxq_s32(v38, vqtbl1q_s8(v46, xmmword_1003E3730));
      v37 = vmaxq_s32(v37, vqtbl1q_s8(v46, xmmword_1003E3720));
      v41 = vmaxq_s32(v41, vqtbl1q_s8(v46, xmmword_1003E3710));
      v44 = vmaxq_s32(v44, vqtbl1q_s8(*v36, xmmword_1003E3700));
      v43 = vmaxq_s32(v43, vqtbl1q_s8(*v36, xmmword_1003E3730));
      v42 = vmaxq_s32(v42, vqtbl1q_s8(*v36, xmmword_1003E3720));
      v45 = vmaxq_s32(v45, vqtbl1q_s8(*v36, xmmword_1003E3710));
      v36 += 2;
      v39 -= 32;
    }

    while (v39);
    a7 = vmaxq_s32(vmaxq_u32(v38, v43), vmaxq_u32(v41, v45));
    v17 = vmaxvq_s32(vmaxq_s32(vmaxq_s32(vmaxq_u32(v37, v42), vmaxq_u32(v40, v44)), a7));
    if (v16 == v15)
    {
      goto LABEL_49;
    }

    if (((a5 * a4) & 0x1C) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v47 = v16;
  v16 = v15 & 0x7FFFFFFC;
  v48 = vdupq_n_s32(v17);
  v49 = (a1->i32 + v47);
  v50 = v47 - v16;
  do
  {
    v51 = *v49++;
    a7.i32[0] = v51;
    a7 = vmovl_u16(*&vmovl_u8(*a7.i8));
    v48 = vmaxq_s32(v48, a7);
    v50 += 4;
  }

  while (v50);
  v17 = vmaxvq_s32(v48);
  if (v16 != v15)
  {
LABEL_45:
    v52 = v15 - v16;
    v53 = &a1->u8[v16];
    do
    {
      v55 = *v53++;
      v54 = v55;
      if (v17 <= v55)
      {
        v17 = v54;
      }

      --v52;
    }

    while (v52);
  }

LABEL_49:
  if (v11 <= v17)
  {
    v11 = v17;
  }

LABEL_51:
  *a3 = v11;
  return 0;
}

uint64_t sub_1002A4660(int8x16_t *a1, unsigned __int8 *a2, signed int *a3, unsigned int a4, unsigned int a5, double a6, int32x4_t a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = *a3;
  if (a2)
  {
    if (a4 < 1 || a5 < 1)
    {
      goto LABEL_61;
    }

    v12 = a4;
    if (a5 < 4)
    {
      v13 = &a1->i8[2];
      do
      {
        if (*a2++)
        {
          v15 = *(v13 - 2);
          if (v15 < 0)
          {
            v15 = -v15;
          }

          if (v11 <= v15)
          {
            v11 = v15;
          }

          if (a5 != 1)
          {
            v16 = *(v13 - 1);
            if (v16 < 0)
            {
              v16 = -v16;
            }

            if (v11 <= v16)
            {
              v11 = v16;
            }

            if (a5 != 2)
            {
              v17 = *v13;
              if (v17 < 0)
              {
                v17 = -v17;
              }

              if (v11 <= v17)
              {
                v11 = v17;
              }
            }
          }
        }

        v13 += a5;
        --v12;
      }

      while (v12);
      goto LABEL_61;
    }

    v21 = 0;
    v22 = a5 & 0x7FFFFFFC;
    v23 = a1 + 1;
    while (1)
    {
      if (a2[v21])
      {
        if (a5 >= 0x20)
        {
          v25 = a5 & 0x7FFFFFE0;
          v26 = vdupq_n_s32(v11);
          v27 = v23;
          v28 = v26;
          v29 = v26;
          v30 = v26;
          v31 = v26;
          v32 = v26;
          v33 = v26;
          v34 = v26;
          do
          {
            v35 = vabsq_s8(v27[-1]);
            v36 = vabsq_s8(*v27);
            v30 = vmaxq_s32(v30, vqtbl1q_s8(v35, xmmword_1003E3710));
            v29 = vmaxq_s32(v29, vqtbl1q_s8(v35, xmmword_1003E3700));
            v28 = vmaxq_s32(v28, vqtbl1q_s8(v35, xmmword_1003E3730));
            v26 = vmaxq_s32(v26, vqtbl1q_s8(v35, xmmword_1003E3720));
            v34 = vmaxq_s32(v34, vqtbl1q_s8(v36, xmmword_1003E3710));
            v33 = vmaxq_s32(v33, vqtbl1q_s8(v36, xmmword_1003E3700));
            v32 = vmaxq_s32(v32, vqtbl1q_s8(v36, xmmword_1003E3730));
            v31 = vmaxq_s32(v31, vqtbl1q_s8(v36, xmmword_1003E3720));
            v27 += 2;
            v25 -= 32;
          }

          while (v25);
          v37 = vmaxq_s32(vmaxq_u32(v26, v31), vmaxq_u32(v29, v33));
          a11 = vmaxq_s32(vmaxq_u32(v28, v32), vmaxq_u32(v30, v34));
          v11 = vmaxvq_s32(vmaxq_s32(v37, a11));
          if ((a5 & 0x7FFFFFE0) == a5)
          {
            goto LABEL_27;
          }

          v24 = a5 & 0x7FFFFFE0;
          v38 = v24;
          if ((a5 & 0x1C) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v24 = 0;
        }

        v39 = vdupq_n_s32(v11);
        do
        {
          a11.i32[0] = *(a1->i32 + v24);
          a11 = vmovl_u16(vabs_s16(*&vmovl_s8(*a11.i8)));
          v39 = vmaxq_s32(v39, a11);
          v24 += 4;
        }

        while (v22 != v24);
        v11 = vmaxvq_s32(v39);
        v38 = a5 & 0x7FFFFFFC;
        if (v22 != a5)
        {
          do
          {
LABEL_38:
            v40 = a1->i8[v38];
            if (v40 < 0)
            {
              v40 = -v40;
            }

            if (v11 <= v40)
            {
              v11 = v40;
            }

            ++v38;
          }

          while (a5 != v38);
        }
      }

LABEL_27:
      ++v21;
      a1 = (a1 + a5);
      v23 = (v23 + a5);
      if (v21 == v12)
      {
        goto LABEL_61;
      }
    }
  }

  v18 = a5 * a4;
  if (v18 < 1)
  {
    v20 = 0;
    goto LABEL_59;
  }

  if (v18 < 4)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_53;
  }

  if (v18 >= 0x20)
  {
    v19 = v18 & 0x7FFFFFE0;
    v41 = a1 + 1;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = v19;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    do
    {
      v51 = vabsq_s8(v41[-1]);
      v52 = vabsq_s8(*v41);
      v46 = vmaxq_s32(v46, vqtbl1q_s8(v51, xmmword_1003E3710));
      v45 = vmaxq_s32(v45, vqtbl1q_s8(v51, xmmword_1003E3700));
      v43 = vmaxq_s32(v43, vqtbl1q_s8(v51, xmmword_1003E3730));
      v42 = vmaxq_s32(v42, vqtbl1q_s8(v51, xmmword_1003E3720));
      v50 = vmaxq_s32(v50, vqtbl1q_s8(v52, xmmword_1003E3710));
      v49 = vmaxq_s32(v49, vqtbl1q_s8(v52, xmmword_1003E3700));
      v48 = vmaxq_s32(v48, vqtbl1q_s8(v52, xmmword_1003E3730));
      v47 = vmaxq_s32(v47, vqtbl1q_s8(v52, xmmword_1003E3720));
      v41 += 2;
      v44 -= 32;
    }

    while (v44);
    a7 = vmaxq_s32(vmaxq_u32(v43, v48), vmaxq_u32(v46, v50));
    v20 = vmaxvq_s32(vmaxq_s32(vmaxq_s32(vmaxq_u32(v42, v47), vmaxq_u32(v45, v49)), a7));
    if (v19 == v18)
    {
      goto LABEL_59;
    }

    if (((a5 * a4) & 0x1C) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v53 = v19;
  v19 = v18 & 0x7FFFFFFC;
  v54 = vdupq_n_s32(v20);
  v55 = (a1->i32 + v53);
  v56 = v53 - v19;
  do
  {
    v57 = *v55++;
    a7.i32[0] = v57;
    a7 = vmovl_u16(vabs_s16(*&vmovl_s8(*a7.i8)));
    v54 = vmaxq_s32(v54, a7);
    v56 += 4;
  }

  while (v56);
  v20 = vmaxvq_s32(v54);
  if (v19 != v18)
  {
LABEL_53:
    v58 = v18 - v19;
    v59 = &a1->i8[v19];
    do
    {
      v61 = *v59++;
      v60 = v61;
      if (v61 < 0)
      {
        v60 = -v60;
      }

      if (v20 <= v60)
      {
        v20 = v60;
      }

      --v58;
    }

    while (v58);
  }

LABEL_59:
  if (v11 <= v20)
  {
    v11 = v20;
  }

LABEL_61:
  *a3 = v11;
  return 0;
}

uint64_t sub_1002A49FC(uint16x8_t *a1, unsigned __int8 *a2, signed int *a3, unsigned int a4, unsigned int a5)
{
  v5 = *a3;
  if (a2)
  {
    if (a4 < 1 || a5 < 1)
    {
      goto LABEL_51;
    }

    v6 = a4;
    if (a5 < 4)
    {
      v7 = &a1->u16[2];
      do
      {
        if (*a2++)
        {
          if (v5 <= *(v7 - 2))
          {
            v5 = *(v7 - 2);
          }

          if (a5 != 1)
          {
            if (v5 <= *(v7 - 1))
            {
              v5 = *(v7 - 1);
            }

            if (a5 != 2 && v5 <= *v7)
            {
              v5 = *v7;
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
      goto LABEL_51;
    }

    v12 = 0;
    v13 = a5 & 0x7FFFFFFC;
    v14 = a1 + 1;
    v15 = 2 * a5;
    while (1)
    {
      if (a2[v12])
      {
        if (a5 >= 0x10)
        {
          v17 = a5 & 0x7FFFFFF0;
          v18 = vdupq_n_s32(v5);
          v19 = v14;
          v20 = v18;
          v21 = v18;
          v22 = v18;
          do
          {
            v23 = v19[-1];
            v20 = vmaxq_s32(v20, vmovl_high_u16(v23));
            v18 = vmaxq_s32(v18, vmovl_u16(*v23.i8));
            v22 = vmaxq_s32(v22, vmovl_high_u16(*v19));
            v21 = vmaxq_s32(v21, vmovl_u16(*v19->i8));
            v19 += 2;
            v17 -= 16;
          }

          while (v17);
          v5 = vmaxvq_s32(vmaxq_s32(vmaxq_u32(v18, v21), vmaxq_u32(v20, v22)));
          if ((a5 & 0x7FFFFFF0) == a5)
          {
            goto LABEL_21;
          }

          v16 = a5 & 0x7FFFFFF0;
          v24 = v16;
          if ((a5 & 0xC) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v16 = 0;
        }

        v25 = vdupq_n_s32(v5);
        v26 = 2 * v16;
        v27 = v16 - v13;
        do
        {
          v25 = vmaxq_s32(v25, vmovl_u16(*&a1->i8[v26]));
          v26 += 8;
          v27 += 4;
        }

        while (v27);
        v5 = vmaxvq_s32(v25);
        v24 = a5 & 0x7FFFFFFC;
        if (v13 != a5)
        {
          do
          {
LABEL_32:
            if (v5 <= a1->u16[v24])
            {
              v5 = a1->u16[v24];
            }

            ++v24;
          }

          while (a5 != v24);
        }
      }

LABEL_21:
      ++v12;
      v14 = (v14 + v15);
      a1 = (a1 + v15);
      if (v12 == v6)
      {
        goto LABEL_51;
      }
    }
  }

  v9 = a5 * a4;
  if (v9 < 1)
  {
    v11 = 0;
    goto LABEL_49;
  }

  if (v9 < 4)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_45;
  }

  if (v9 >= 0x10)
  {
    v10 = v9 & 0x7FFFFFF0;
    v28 = a1 + 1;
    v29 = 0uLL;
    v30 = v10;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    do
    {
      v34 = v28[-1];
      v31 = vmaxq_s32(v31, vmovl_high_u16(v34));
      v29 = vmaxq_s32(v29, vmovl_u16(*v34.i8));
      v33 = vmaxq_s32(v33, vmovl_high_u16(*v28));
      v32 = vmaxq_s32(v32, vmovl_u16(*v28->i8));
      v28 += 2;
      v30 -= 16;
    }

    while (v30);
    v11 = vmaxvq_s32(vmaxq_s32(vmaxq_u32(v29, v32), vmaxq_u32(v31, v33)));
    if (v10 == v9)
    {
      goto LABEL_49;
    }

    if (((a5 * a4) & 0xC) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v35 = v10;
  v10 = v9 & 0x7FFFFFFC;
  v36 = vdupq_n_s32(v11);
  v37 = (a1 + 2 * v35);
  v38 = v35 - v10;
  do
  {
    v39 = *v37++;
    v36 = vmaxq_s32(v36, vmovl_u16(v39));
    v38 += 4;
  }

  while (v38);
  v11 = vmaxvq_s32(v36);
  if (v10 != v9)
  {
LABEL_45:
    v40 = v9 - v10;
    v41 = a1 + v10;
    do
    {
      v43 = *v41++;
      v42 = v43;
      if (v11 <= v43)
      {
        v11 = v42;
      }

      --v40;
    }

    while (v40);
  }

LABEL_49:
  if (v5 <= v11)
  {
    v5 = v11;
  }

LABEL_51:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A4CA4(int16x8_t *a1, unsigned __int8 *a2, signed int *a3, unsigned int a4, unsigned int a5)
{
  v5 = *a3;
  if (a2)
  {
    if (a4 < 1 || a5 < 1)
    {
      goto LABEL_61;
    }

    v6 = a4;
    if (a5 < 4)
    {
      v7 = &a1->i16[2];
      do
      {
        if (*a2++)
        {
          v9 = *(v7 - 2);
          if (v9 < 0)
          {
            v9 = -v9;
          }

          if (v5 <= v9)
          {
            v5 = v9;
          }

          if (a5 != 1)
          {
            v10 = *(v7 - 1);
            if (v10 < 0)
            {
              v10 = -v10;
            }

            if (v5 <= v10)
            {
              v5 = v10;
            }

            if (a5 != 2)
            {
              v11 = *v7;
              if (v11 < 0)
              {
                v11 = -v11;
              }

              if (v5 <= v11)
              {
                v5 = v11;
              }
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
      goto LABEL_61;
    }

    v15 = 0;
    v16 = a5 & 0x7FFFFFFC;
    v17 = a1 + 1;
    v18 = 2 * a5;
    while (1)
    {
      if (a2[v15])
      {
        if (a5 >= 0x10)
        {
          v20 = a5 & 0x7FFFFFF0;
          v21 = vdupq_n_s32(v5);
          v22 = v17;
          v23 = v21;
          v24 = v21;
          v25 = v21;
          do
          {
            v26 = vabsq_s16(v22[-1]);
            v27 = vabsq_s16(*v22);
            v23 = vmaxq_s32(v23, vmovl_high_u16(v26));
            v21 = vmaxq_s32(v21, vmovl_u16(*v26.i8));
            v25 = vmaxq_s32(v25, vmovl_high_u16(v27));
            v24 = vmaxq_s32(v24, vmovl_u16(*v27.i8));
            v22 += 2;
            v20 -= 16;
          }

          while (v20);
          v5 = vmaxvq_s32(vmaxq_s32(vmaxq_u32(v21, v24), vmaxq_u32(v23, v25)));
          if ((a5 & 0x7FFFFFF0) == a5)
          {
            goto LABEL_27;
          }

          v19 = a5 & 0x7FFFFFF0;
          v28 = v19;
          if ((a5 & 0xC) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v19 = 0;
        }

        v29 = vdupq_n_s32(v5);
        v30 = 2 * v19;
        v31 = v19 - v16;
        do
        {
          v29 = vmaxq_s32(v29, vmovl_u16(vabs_s16(*&a1->i8[v30])));
          v30 += 8;
          v31 += 4;
        }

        while (v31);
        v5 = vmaxvq_s32(v29);
        v28 = a5 & 0x7FFFFFFC;
        if (v16 != a5)
        {
          do
          {
LABEL_38:
            v32 = a1->i16[v28];
            if (v32 < 0)
            {
              v32 = -v32;
            }

            if (v5 <= v32)
            {
              v5 = v32;
            }

            ++v28;
          }

          while (a5 != v28);
        }
      }

LABEL_27:
      ++v15;
      v17 = (v17 + v18);
      a1 = (a1 + v18);
      if (v15 == v6)
      {
        goto LABEL_61;
      }
    }
  }

  v12 = a5 * a4;
  if (v12 < 1)
  {
    v14 = 0;
    goto LABEL_59;
  }

  if (v12 < 4)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_53;
  }

  if (v12 >= 0x10)
  {
    v13 = v12 & 0x7FFFFFF0;
    v33 = a1 + 1;
    v34 = 0uLL;
    v35 = v13;
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v39 = vabsq_s16(v33[-1]);
      v40 = vabsq_s16(*v33);
      v36 = vmaxq_s32(v36, vmovl_high_u16(v39));
      v34 = vmaxq_s32(v34, vmovl_u16(*v39.i8));
      v38 = vmaxq_s32(v38, vmovl_high_u16(v40));
      v37 = vmaxq_s32(v37, vmovl_u16(*v40.i8));
      v33 += 2;
      v35 -= 16;
    }

    while (v35);
    v14 = vmaxvq_s32(vmaxq_s32(vmaxq_u32(v34, v37), vmaxq_u32(v36, v38)));
    if (v13 == v12)
    {
      goto LABEL_59;
    }

    if (((a5 * a4) & 0xC) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v41 = v13;
  v13 = v12 & 0x7FFFFFFC;
  v42 = vdupq_n_s32(v14);
  v43 = (a1 + 2 * v41);
  v44 = v41 - v13;
  do
  {
    v45 = *v43++;
    v42 = vmaxq_s32(v42, vmovl_u16(vabs_s16(v45)));
    v44 += 4;
  }

  while (v44);
  v14 = vmaxvq_s32(v42);
  if (v13 != v12)
  {
LABEL_53:
    v46 = v12 - v13;
    v47 = &a1->i16[v13];
    do
    {
      v49 = *v47++;
      v48 = v49;
      if (v49 < 0)
      {
        v48 = -v48;
      }

      if (v14 <= v48)
      {
        v14 = v48;
      }

      --v46;
    }

    while (v46);
  }

LABEL_59:
  if (v5 <= v14)
  {
    v5 = v14;
  }

LABEL_61:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A4F8C(int32x4_t *a1, unsigned __int8 *a2, signed int *a3, unsigned int a4, unsigned int a5)
{
  v5 = *a3;
  if (a2)
  {
    if (a4 >= 1 && a5 >= 1)
    {
      v6 = a4;
      if (a5 >= 8)
      {
        v19 = 0;
        v20 = a1 + 1;
        v21 = 4 * a5;
        do
        {
          if (a2[v19])
          {
            v22 = vdupq_n_s32(v5);
            v23 = a5 & 0x7FFFFFF8;
            v24 = v20;
            v25 = v22;
            do
            {
              v22 = vmaxq_s32(v22, vabsq_s32(v24[-1]));
              v25 = vmaxq_s32(v25, vabsq_s32(*v24));
              v24 += 2;
              v23 -= 8;
            }

            while (v23);
            v5 = vmaxvq_s32(vmaxq_u32(v22, v25));
            if ((a5 & 0x7FFFFFF8) != a5)
            {
              v26 = a5 & 0x7FFFFFF8;
              do
              {
                v27 = a1->i32[v26];
                if (v27 < 0)
                {
                  v27 = -v27;
                }

                if (v5 <= v27)
                {
                  v5 = v27;
                }

                ++v26;
              }

              while (a5 != v26);
            }
          }

          ++v19;
          v20 = (v20 + v21);
          a1 = (a1 + v21);
        }

        while (v19 != a4);
      }

      else
      {
        v7 = &a1->i32[3];
        do
        {
          if (*a2++)
          {
            v9 = *(v7 - 3);
            if (v9 < 0)
            {
              v9 = -v9;
            }

            if (v5 <= v9)
            {
              v5 = v9;
            }

            if (a5 != 1)
            {
              v10 = *(v7 - 2);
              if (v10 < 0)
              {
                v10 = -v10;
              }

              if (v5 <= v10)
              {
                v5 = v10;
              }

              if (a5 != 2)
              {
                v11 = *(v7 - 1);
                if (v11 < 0)
                {
                  v11 = -v11;
                }

                if (v5 <= v11)
                {
                  v5 = v11;
                }

                if (a5 != 3)
                {
                  v12 = *v7;
                  if (*v7 < 0)
                  {
                    v12 = -v12;
                  }

                  if (v5 <= v12)
                  {
                    v5 = v12;
                  }

                  if (a5 != 4)
                  {
                    v13 = v7[1];
                    if (v13 < 0)
                    {
                      v13 = -v13;
                    }

                    if (v5 <= v13)
                    {
                      v5 = v13;
                    }

                    if (a5 != 5)
                    {
                      v14 = v7[2];
                      if (v14 < 0)
                      {
                        v14 = -v14;
                      }

                      if (v5 <= v14)
                      {
                        v5 = v14;
                      }

                      if (a5 != 6)
                      {
                        v15 = v7[3];
                        if (v15 < 0)
                        {
                          v15 = -v15;
                        }

                        if (v5 <= v15)
                        {
                          v5 = v15;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v7 += a5;
          --v6;
        }

        while (v6);
      }
    }

    goto LABEL_70;
  }

  v16 = a5 * a4;
  if (v16 < 1)
  {
    v18 = 0;
  }

  else
  {
    if (v16 < 8)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_62;
    }

    v17 = v16 & 0x7FFFFFF8;
    v28 = a1 + 1;
    v29 = 0uLL;
    v30 = v17;
    v31 = 0uLL;
    do
    {
      v29 = vmaxq_s32(v29, vabsq_s32(v28[-1]));
      v31 = vmaxq_s32(v31, vabsq_s32(*v28));
      v28 += 2;
      v30 -= 8;
    }

    while (v30);
    v18 = vmaxvq_s32(vmaxq_u32(v29, v31));
    if (v17 != v16)
    {
LABEL_62:
      v32 = v16 - v17;
      v33 = &a1->i32[v17];
      do
      {
        v35 = *v33++;
        v34 = v35;
        if (v35 < 0)
        {
          v34 = -v34;
        }

        if (v18 <= v34)
        {
          v18 = v34;
        }

        --v32;
      }

      while (v32);
    }
  }

  if (v5 <= v18)
  {
    v5 = v18;
  }

LABEL_70:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A51DC(double *a1, uint64_t a2, double *a3, int a4, int a5)
{
  v5 = *a3;
  if (a2)
  {
    if (a4 >= 1 && a5 >= 1)
    {
      for (i = 0; i != a4; ++i)
      {
        if (*(a2 + i))
        {
          for (j = 0; j != a5; ++j)
          {
            v8 = fabs(a1[j]);
            if (v5 < v8)
            {
              v5 = v8;
            }
          }
        }

        a1 += a5;
      }
    }
  }

  else
  {
    v9 = (a5 * a4);
    v10 = 0.0;
    if (v9 >= 1)
    {
      do
      {
        v11 = *a1++;
        v12 = fabs(v11);
        if (v10 < v12)
        {
          v10 = v12;
        }

        --v9;
      }

      while (v9);
    }

    if (v5 < v10)
    {
      v5 = v10;
    }
  }

  *a3 = v5;
  return 0;
}

uint64_t sub_1002A5284(uint8x8_t *a1, unsigned __int8 *a2, unsigned int *a3, unsigned int a4, unsigned int a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *a3;
  if (!a2)
  {
    v11 = a5 * a4;
    v12 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v13 = 0;
      v14 = 0;
      if (v11 <= 0)
      {
        goto LABEL_58;
      }

      goto LABEL_43;
    }

    if (v12 < 0x1C)
    {
      v15 = 0;
      v13 = 0;
      goto LABEL_41;
    }

    v37 = (v12 >> 2) + 1;
    if (v12 >= 0x3C)
    {
      v38 = v37 & 0x3FFFFFF0;
      v45 = 0uLL;
      v46 = v38;
      v47 = a1;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      do
      {
        v86 = vld4q_s8(v47);
        v47 += 8;
        v51 = vmovl_high_u8(v86.val[0]);
        v52 = vmovl_u8(*v86.val[0].i8);
        v53 = vmovl_u8(*v86.val[1].i8);
        v54 = vmovl_high_u8(v86.val[1]);
        v55 = vmovl_high_u8(v86.val[2]);
        v56 = vmovl_u8(*v86.val[2].i8);
        v57 = vmovl_u8(*v86.val[3].i8);
        v86.val[0] = vmovl_high_u8(v86.val[3]);
        v50 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v50, v51), v54), v55), v86.val[0]);
        v49 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v49, *v51.i8), *v54.i8), *v55.i8), *v86.val[0].i8);
        v48 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v48, v52), v53), v56), v57);
        v45 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v45, *v52.i8), *v53.i8), *v56.i8), *v57.i8);
        v46 -= 16;
      }

      while (v46);
      a7 = vaddq_s32(v48, v50);
      a6 = vaddq_s32(vaddq_s32(v45, v49), a7);
      v13 = vaddvq_s32(a6);
      if (v37 == v38)
      {
        goto LABEL_42;
      }

      if ((v37 & 8) == 0)
      {
        v15 = 4 * v38;
        do
        {
LABEL_41:
          a6.i32[0] = a1->i32[v15 / 4];
          a6 = vmovl_u16(*&vmovl_u8(*a6.i8));
          v13 += vaddvq_s32(a6);
          v15 += 4;
        }

        while (v15 <= v12);
        goto LABEL_42;
      }
    }

    else
    {
      v13 = 0;
      v38 = 0;
    }

    v15 = 4 * (v37 & 0x3FFFFFF8);
    v39 = 0uLL;
    a7 = v13;
    v40 = a1 + 4 * v38;
    v41 = v38 - (v37 & 0x3FFFFFF8);
    do
    {
      v85 = vld4_s8(v40);
      v40 += 32;
      v42 = vmovl_u8(v85.val[0]);
      v43 = vmovl_u8(v85.val[1]);
      v44 = vmovl_u8(v85.val[2]);
      *v85.val[0].i8 = vmovl_u8(v85.val[3]);
      v39 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v39, v42), v43), v44), *v85.val[0].i8);
      a7 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(a7, *v42.i8), *v43.i8), *v44.i8), v85.val[0]);
      v41 += 8;
    }

    while (v41);
    a6 = vaddq_s32(a7, v39);
    v13 = vaddvq_s32(a6);
    if (v37 != (v37 & 0x3FFFFFF8))
    {
      goto LABEL_41;
    }

LABEL_42:
    v14 = (v12 & 0xFFFFFFFC) + 4;
    if (v14 >= v11)
    {
LABEL_58:
      v7 += v13;
      goto LABEL_59;
    }

LABEL_43:
    v58 = v14;
    v59 = v11 + ~v14;
    if (v59 < 3)
    {
      v60 = v14;
      goto LABEL_56;
    }

    v61 = v59 + 1;
    if (v59 >= 0x1F)
    {
      v62 = v61 & 0x1FFFFFFE0;
      v63 = 0uLL;
      v64 = v13;
      v65 = (a1 + v58 + 16);
      v66 = v61 & 0x1FFFFFFE0;
      v67 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      do
      {
        v73 = *v65[-2].i8;
        v74 = vmovl_u8(*v73.i8);
        v75 = vmovl_high_u8(v73);
        v76 = vmovl_u8(*v65);
        v77 = vmovl_high_u8(*v65->i8);
        v68 = vaddw_high_u16(v68, v75);
        v67 = vaddw_u16(v67, *v75.i8);
        v63 = vaddw_high_u16(v63, v74);
        v64 = vaddw_u16(v64, *v74.i8);
        v72 = vaddw_high_u16(v72, v77);
        v71 = vaddw_u16(v71, *v77.i8);
        v70 = vaddw_high_u16(v70, v76);
        v69 = vaddw_u16(v69, *v76.i8);
        v65 += 4;
        v66 -= 32;
      }

      while (v66);
      a7 = vaddq_s32(vaddq_s32(v70, v63), vaddq_s32(v72, v68));
      v13 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v69, v64), vaddq_s32(v71, v67)), a7));
      if (v61 == v62)
      {
        goto LABEL_58;
      }

      if ((v61 & 0x1C) == 0)
      {
        v60 = v62 + v58;
LABEL_56:
        v82 = a1 + v60;
        do
        {
          v83 = *v82++;
          v13 += v83;
          LODWORD(v60) = v60 + 1;
        }

        while (v11 > v60);
        goto LABEL_58;
      }
    }

    else
    {
      v62 = 0;
    }

    v60 = (v61 & 0x1FFFFFFFCLL) + v58;
    v78 = v13;
    v79 = (a1 + v62 + v58);
    v80 = v62 - (v61 & 0x1FFFFFFFCLL);
    do
    {
      v81 = *v79++;
      a7.i32[0] = v81;
      a7.i64[0] = vmovl_u8(*a7.i8).u64[0];
      v78 = vaddw_u16(v78, *a7.i8);
      v80 += 4;
    }

    while (v80);
    v13 = vaddvq_s32(v78);
    if (v61 == (v61 & 0x1FFFFFFFCLL))
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (a4 < 1 || a5 < 1)
  {
    goto LABEL_59;
  }

  v8 = a4;
  if (a5 >= 4)
  {
    v16 = 0;
    v17 = a5 & 0x7FFFFFFC;
    v18 = a1 + 2;
    while (!a2[v16])
    {
LABEL_17:
      ++v16;
      a1 = (a1 + a5);
      v18 = (v18 + a5);
      if (v16 == v8)
      {
        goto LABEL_59;
      }
    }

    if (a5 >= 0x20)
    {
      v20 = 0uLL;
      v21 = v7;
      v22 = a5 & 0x7FFFFFE0;
      v23 = v18;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = *v23[-2].i8;
        v31 = vmovl_u8(*v30.i8);
        v32 = vmovl_high_u8(v30);
        v33 = vmovl_u8(*v23);
        v34 = vmovl_high_u8(*v23->i8);
        v25 = vaddw_high_u16(v25, v32);
        v24 = vaddw_u16(v24, *v32.i8);
        v20 = vaddw_high_u16(v20, v31);
        v21 = vaddw_u16(v21, *v31.i8);
        v29 = vaddw_high_u16(v29, v34);
        v28 = vaddw_u16(v28, *v34.i8);
        v27 = vaddw_high_u16(v27, v33);
        v26 = vaddw_u16(v26, *v33.i8);
        v23 += 4;
        v22 -= 32;
      }

      while (v22);
      a7 = vaddq_s32(vaddq_s32(v27, v20), vaddq_s32(v29, v25));
      v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v26, v21), vaddq_s32(v28, v24)), a7));
      if ((a5 & 0x7FFFFFE0) == a5)
      {
        goto LABEL_17;
      }

      v19 = a5 & 0x7FFFFFE0;
      v35 = v19;
      if ((a5 & 0x1C) == 0)
      {
        do
        {
LABEL_28:
          v7 += a1->u8[v35++];
        }

        while (a5 != v35);
        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
    }

    v36 = v7;
    do
    {
      a7.i32[0] = *(a1->i32 + v19);
      a7.i64[0] = vmovl_u8(*a7.i8).u64[0];
      v36 = vaddw_u16(v36, *a7.i8);
      v19 += 4;
    }

    while (v17 != v19);
    v7 = vaddvq_s32(v36);
    v35 = a5 & 0x7FFFFFFC;
    if (v17 == a5)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v9 = (a1 + 2);
  do
  {
    if (*a2++)
    {
      v7 += v9[-1].u8[6];
      if (a5 != 1)
      {
        v7 += v9[-1].u8[7];
        if (a5 != 2)
        {
          v7 += v9->u8[0];
        }
      }
    }

    v9 = (v9 + a5);
    --v8;
  }

  while (v8);
LABEL_59:
  *a3 = v7;
  return 0;
}

uint64_t sub_1002A5710(const char *a1, uint64_t a2, unsigned int *a3, unsigned int a4, unsigned int a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *a3;
  if (!a2)
  {
    v32 = a5 * a4;
    v33 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v34 = 0;
      v35 = 0;
      if (v32 <= 0)
      {
        goto LABEL_57;
      }

      goto LABEL_40;
    }

    if (v33 < 0x1C)
    {
      v36 = 0;
      v34 = 0;
      goto LABEL_38;
    }

    v37 = (v33 >> 2) + 1;
    if (v33 >= 0x3C)
    {
      v38 = v37 & 0x3FFFFFF0;
      v45 = 0uLL;
      v46 = v38;
      v47 = a1;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      do
      {
        v90 = vld4q_s8(v47);
        v47 += 64;
        v51 = vabsq_s8(v90.val[0]);
        v52 = vmovl_high_u8(v51);
        v53 = vmovl_u8(*v51.i8);
        v54 = vabsq_s8(v90.val[1]);
        v55 = vmovl_u8(*v54.i8);
        v56 = vmovl_high_u8(v54);
        v57 = vabsq_s8(v90.val[2]);
        v58 = vmovl_high_u8(v57);
        v59 = vmovl_u8(*v57.i8);
        v90.val[0] = vabsq_s8(v90.val[3]);
        v90.val[1] = vmovl_u8(*v90.val[0].i8);
        v90.val[0] = vmovl_high_u8(v90.val[0]);
        v50 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v50, v52), v56), v58), v90.val[0]);
        v49 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v49, *v52.i8), *v56.i8), *v58.i8), *v90.val[0].i8);
        v48 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v48, v53), v55), v59), v90.val[1]);
        v45 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v45, *v53.i8), *v55.i8), *v59.i8), *v90.val[1].i8);
        v46 -= 16;
      }

      while (v46);
      a7 = vaddq_s32(v48, v50);
      a6 = vaddq_s32(vaddq_s32(v45, v49), a7);
      v34 = vaddvq_s32(a6);
      if (v37 == v38)
      {
        goto LABEL_39;
      }

      if ((v37 & 8) == 0)
      {
        v36 = 4 * v38;
        do
        {
LABEL_38:
          a6.i32[0] = *&a1[v36];
          a6 = vmovl_u16(vabs_s16(*&vmovl_s8(*a6.i8)));
          v34 += vaddvq_s32(a6);
          v36 += 4;
        }

        while (v36 <= v33);
        goto LABEL_39;
      }
    }

    else
    {
      v34 = 0;
      v38 = 0;
    }

    v36 = 4 * (v37 & 0x3FFFFFF8);
    v39 = 0uLL;
    a7 = v34;
    v40 = &a1[4 * v38];
    v41 = v38 - (v37 & 0x3FFFFFF8);
    do
    {
      v89 = vld4_s8(v40);
      v40 += 32;
      v42 = vmovl_u8(vabs_s8(v89.val[0]));
      v43 = vmovl_u8(vabs_s8(v89.val[1]));
      v44 = vmovl_u8(vabs_s8(v89.val[2]));
      *v89.val[0].i8 = vmovl_u8(vabs_s8(v89.val[3]));
      v39 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v39, v42), v43), v44), *v89.val[0].i8);
      a7 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(a7, *v42.i8), *v43.i8), *v44.i8), v89.val[0]);
      v41 += 8;
    }

    while (v41);
    a6 = vaddq_s32(a7, v39);
    v34 = vaddvq_s32(a6);
    if (v37 != (v37 & 0x3FFFFFF8))
    {
      goto LABEL_38;
    }

LABEL_39:
    v35 = (v33 & 0xFFFFFFFC) + 4;
    if (v35 >= v32)
    {
LABEL_57:
      v7 += v34;
      goto LABEL_58;
    }

LABEL_40:
    v60 = v35;
    v61 = v32 + ~v35;
    if (v61 < 3)
    {
      v62 = v35;
      goto LABEL_53;
    }

    v63 = v61 + 1;
    if (v61 >= 0x1F)
    {
      v64 = v63 & 0x1FFFFFFE0;
      v65 = 0uLL;
      v66 = v34;
      v67 = &a1[v60 + 16];
      v68 = v63 & 0x1FFFFFFE0;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      do
      {
        v75 = vabsq_s8(v67[-1]);
        v76 = vabsq_s8(*v67);
        v77 = vmovl_u8(*v75.i8);
        v78 = vmovl_high_u8(v75);
        v79 = vmovl_u8(*v76.i8);
        v80 = vmovl_high_u8(v76);
        v70 = vaddw_high_u16(v70, v78);
        v69 = vaddw_u16(v69, *v78.i8);
        v65 = vaddw_high_u16(v65, v77);
        v66 = vaddw_u16(v66, *v77.i8);
        v74 = vaddw_high_u16(v74, v80);
        v73 = vaddw_u16(v73, *v80.i8);
        v72 = vaddw_high_u16(v72, v79);
        v71 = vaddw_u16(v71, *v79.i8);
        v67 += 2;
        v68 -= 32;
      }

      while (v68);
      a7 = vaddq_s32(vaddq_s32(v72, v65), vaddq_s32(v74, v70));
      v34 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v71, v66), vaddq_s32(v73, v69)), a7));
      if (v63 == v64)
      {
        goto LABEL_57;
      }

      if ((v63 & 0x1C) == 0)
      {
        v62 = v64 + v60;
        goto LABEL_53;
      }
    }

    else
    {
      v64 = 0;
    }

    v62 = (v63 & 0x1FFFFFFFCLL) + v60;
    v81 = v34;
    v82 = &a1[v64 + v60];
    v83 = v64 - (v63 & 0x1FFFFFFFCLL);
    do
    {
      v84 = *v82;
      v82 += 4;
      a7.i32[0] = v84;
      *a7.i8 = vabs_s16(*&vmovl_s8(*a7.i8));
      v81 = vaddw_u16(v81, *a7.i8);
      v83 += 4;
    }

    while (v83);
    v34 = vaddvq_s32(v81);
    if (v63 == (v63 & 0x1FFFFFFFCLL))
    {
      goto LABEL_57;
    }

LABEL_53:
    v85 = &a1[v62];
    do
    {
      v87 = *v85++;
      v86 = v87;
      if (v87 < 0)
      {
        v86 = -v86;
      }

      v34 += v86;
      LODWORD(v62) = v62 + 1;
    }

    while (v32 > v62);
    goto LABEL_57;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v8 = 0;
    v9 = a4;
    v10 = a5 & 0x7FFFFFFC;
    v11 = a1 + 16;
    do
    {
      if (*(a2 + v8))
      {
        if (a5 < 4)
        {
          for (i = 0; i != a5; ++i)
          {
LABEL_18:
            v31 = a1[i];
            if (v31 < 0)
            {
              v31 = -v31;
            }

            v7 += v31;
          }

          goto LABEL_5;
        }

        if (a5 >= 0x20)
        {
          v14 = 0uLL;
          v15 = v7;
          v16 = a5 & 0x7FFFFFE0;
          v17 = v11;
          v18 = 0uLL;
          v19 = 0uLL;
          v20 = 0uLL;
          v21 = 0uLL;
          v22 = 0uLL;
          v23 = 0uLL;
          do
          {
            v24 = vabsq_s8(v17[-1]);
            v25 = vabsq_s8(*v17);
            v26 = vmovl_u8(*v24.i8);
            v27 = vmovl_high_u8(v24);
            v28 = vmovl_u8(*v25.i8);
            v29 = vmovl_high_u8(v25);
            v19 = vaddw_high_u16(v19, v27);
            v18 = vaddw_u16(v18, *v27.i8);
            v14 = vaddw_high_u16(v14, v26);
            v15 = vaddw_u16(v15, *v26.i8);
            v23 = vaddw_high_u16(v23, v29);
            v22 = vaddw_u16(v22, *v29.i8);
            v21 = vaddw_high_u16(v21, v28);
            v20 = vaddw_u16(v20, *v28.i8);
            v17 += 2;
            v16 -= 32;
          }

          while (v16);
          a7 = vaddq_s32(vaddq_s32(v21, v14), vaddq_s32(v23, v19));
          v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v20, v15), vaddq_s32(v22, v18)), a7));
          if ((a5 & 0x7FFFFFE0) == a5)
          {
            goto LABEL_5;
          }

          v13 = a5 & 0x7FFFFFE0;
          i = v13;
          if ((a5 & 0x1C) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 0;
        }

        v30 = v7;
        do
        {
          a7.i32[0] = *&a1[v13];
          *a7.i8 = vabs_s16(*&vmovl_s8(*a7.i8));
          v30 = vaddw_u16(v30, *a7.i8);
          v13 += 4;
        }

        while (v10 != v13);
        v7 = vaddvq_s32(v30);
        i = a5 & 0x7FFFFFFC;
        if (v10 != a5)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v8;
      a1 += a5;
      v11 += a5;
    }

    while (v8 != v9);
  }

LABEL_58:
  *a3 = v7;
  return 0;
}

uint64_t sub_1002A5BA8(uint16x8_t *a1, unsigned __int8 *a2, unsigned int *a3, unsigned int a4, unsigned int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v9 = a5 * a4;
    v10 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v11 = 0;
      v12 = 0;
      if (v9 <= 0)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }

    if (v10 < 0xC)
    {
      v13 = 0;
      v11 = 0;
      goto LABEL_41;
    }

    v30 = (v10 >> 2) + 1;
    if (v10 >= 0x3C)
    {
      v31 = v30 & 0x3FFFFFF0;
      v32 = a1 + 4;
      v33 = 0uLL;
      v34 = v31;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      do
      {
        i16 = v32[-4].i16;
        v64 = vld4q_s16(i16);
        v65 = vld4q_s16(v32->i16);
        v35 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v35, v64.val[0]), v64.val[1]), v64.val[2]), v64.val[3]);
        v33 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v33, *v64.val[0].i8), *v64.val[1].i8), *v64.val[2].i8), *v64.val[3].i8);
        v37 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v37, v65.val[0]), v65.val[1]), v65.val[2]), v65.val[3]);
        v36 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v36, *v65.val[0].i8), *v65.val[1].i8), *v65.val[2].i8), *v65.val[3].i8);
        v32 += 8;
        v34 -= 16;
      }

      while (v34);
      v11 = vaddvq_s32(vaddq_s32(vaddq_s32(v36, v33), vaddq_s32(v37, v35)));
      if (v30 == v31)
      {
        goto LABEL_43;
      }

      if ((v30 & 0xC) == 0)
      {
        v13 = 4 * v31;
LABEL_41:
        v42 = (a1 + 2 * v13);
        do
        {
          v43 = *v42++;
          v11 += vaddvq_s32(vmovl_u16(v43));
          v13 += 4;
        }

        while (v13 <= v10);
        goto LABEL_43;
      }
    }

    else
    {
      v11 = 0;
      v31 = 0;
    }

    v13 = 4 * (v30 & 0x3FFFFFFC);
    v39 = v11;
    v40 = &a1->i16[4 * v31];
    v41 = v31 - (v30 & 0x3FFFFFFC);
    do
    {
      v63 = vld4_s16(v40);
      v40 += 16;
      v39 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v39, v63.val[0]), v63.val[1]), v63.val[2]), v63.val[3]);
      v41 += 4;
    }

    while (v41);
    v11 = vaddvq_s32(v39);
    if (v30 != (v30 & 0x3FFFFFFC))
    {
      goto LABEL_41;
    }

LABEL_43:
    v12 = (v10 & 0xFFFFFFFC) + 4;
    if (v12 >= v9)
    {
LABEL_59:
      v5 += v11;
      goto LABEL_60;
    }

LABEL_44:
    v44 = v12;
    v45 = v9 + ~v12;
    if (v45 < 3)
    {
      v46 = v12;
      goto LABEL_57;
    }

    v47 = v45 + 1;
    if (v45 >= 0xF)
    {
      v48 = v47 & 0x1FFFFFFF0;
      v49 = v11;
      v50 = 0uLL;
      v51 = (a1 + 2 * v44 + 16);
      v52 = v47 & 0x1FFFFFFF0;
      v53 = 0uLL;
      v54 = 0uLL;
      do
      {
        v55 = v51[-1];
        v50 = vaddw_high_u16(v50, v55);
        v49 = vaddw_u16(v49, *v55.i8);
        v54 = vaddw_high_u16(v54, *v51);
        v53 = vaddw_u16(v53, *v51->i8);
        v51 += 2;
        v52 -= 16;
      }

      while (v52);
      v11 = vaddvq_s32(vaddq_s32(vaddq_s32(v53, v49), vaddq_s32(v54, v50)));
      if (v47 == v48)
      {
        goto LABEL_59;
      }

      if ((v47 & 0xC) == 0)
      {
        v46 = v48 + v44;
LABEL_57:
        v60 = a1 + v46;
        do
        {
          v61 = *v60++;
          v11 += v61;
          LODWORD(v46) = v46 + 1;
        }

        while (v9 > v46);
        goto LABEL_59;
      }
    }

    else
    {
      v48 = 0;
    }

    v46 = (v47 & 0x1FFFFFFFCLL) + v44;
    v56 = v11;
    v57 = (a1 + 2 * v48 + 2 * v44);
    v58 = v48 - (v47 & 0x1FFFFFFFCLL);
    do
    {
      v59 = *v57++;
      v56 = vaddw_u16(v56, v59);
      v58 += 4;
    }

    while (v58);
    v11 = vaddvq_s32(v56);
    if (v47 == (v47 & 0x1FFFFFFFCLL))
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  if (a4 < 1 || a5 < 1)
  {
    goto LABEL_60;
  }

  v6 = a4;
  if (a5 >= 4)
  {
    v14 = 0;
    v15 = a5 & 0x7FFFFFFC;
    v16 = a1 + 1;
    v17 = 2 * a5;
    while (!a2[v14])
    {
LABEL_17:
      ++v14;
      v16 = (v16 + v17);
      a1 = (a1 + v17);
      if (v14 == v6)
      {
        goto LABEL_60;
      }
    }

    if (a5 >= 0x10)
    {
      v19 = 0uLL;
      v20 = v5;
      v21 = a5 & 0x7FFFFFF0;
      v22 = v16;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = v22[-1];
        v19 = vaddw_high_u16(v19, v25);
        v20 = vaddw_u16(v20, *v25.i8);
        v24 = vaddw_high_u16(v24, *v22);
        v23 = vaddw_u16(v23, *v22->i8);
        v22 += 2;
        v21 -= 16;
      }

      while (v21);
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(v23, v20), vaddq_s32(v24, v19)));
      if ((a5 & 0x7FFFFFF0) == a5)
      {
        goto LABEL_17;
      }

      v18 = a5 & 0x7FFFFFF0;
      v26 = v18;
      if ((a5 & 0xC) == 0)
      {
        do
        {
LABEL_28:
          v5 += a1->u16[v26++];
        }

        while (a5 != v26);
        goto LABEL_17;
      }
    }

    else
    {
      v18 = 0;
    }

    v27 = v5;
    v28 = 2 * v18;
    v29 = v18 - v15;
    do
    {
      v27 = vaddw_u16(v27, *&a1->i8[v28]);
      v28 += 8;
      v29 += 4;
    }

    while (v29);
    v5 = vaddvq_s32(v27);
    v26 = a5 & 0x7FFFFFFC;
    if (v15 == a5)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v7 = &a1->u16[2];
  do
  {
    if (*a2++)
    {
      v5 += *(v7 - 2);
      if (a5 != 1)
      {
        v5 += *(v7 - 1);
        if (a5 != 2)
        {
          v5 += *v7;
        }
      }
    }

    v7 += a5;
    --v6;
  }

  while (v6);
LABEL_60:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A5F90(int16x8_t *a1, uint64_t a2, unsigned int *a3, unsigned int a4, unsigned int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v25 = a5 * a4;
    v26 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v27 = 0;
      v28 = 0;
      if (v25 <= 0)
      {
        goto LABEL_58;
      }

      goto LABEL_41;
    }

    if (v26 < 0xC)
    {
      v29 = 0;
      v27 = 0;
      goto LABEL_38;
    }

    v30 = (v26 >> 2) + 1;
    if (v26 >= 0x3C)
    {
      v31 = v30 & 0x3FFFFFF0;
      v32 = a1 + 4;
      v33 = 0uLL;
      v34 = v31;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      do
      {
        i16 = v32[-4].i16;
        v72 = vld4q_s16(i16);
        v73 = vld4q_s16(v32->i16);
        v39 = vabsq_s16(v72.val[0]);
        v40 = vabsq_s16(v73.val[0]);
        v41 = vabsq_s16(v72.val[1]);
        v42 = vabsq_s16(v73.val[1]);
        v43 = vabsq_s16(v72.val[2]);
        v44 = vabsq_s16(v73.val[2]);
        v72.val[0] = vabsq_s16(v72.val[3]);
        v72.val[1] = vabsq_s16(v73.val[3]);
        v35 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v35, v39), v41), v43), v72.val[0]);
        v33 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v33, *v39.i8), *v41.i8), *v43.i8), *v72.val[0].i8);
        v37 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v37, v40), v42), v44), v72.val[1]);
        v36 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v36, *v40.i8), *v42.i8), *v44.i8), *v72.val[1].i8);
        v32 += 8;
        v34 -= 16;
      }

      while (v34);
      v27 = vaddvq_s32(vaddq_s32(vaddq_s32(v36, v33), vaddq_s32(v37, v35)));
      if (v30 == v31)
      {
        goto LABEL_40;
      }

      if ((v30 & 0xC) == 0)
      {
        v29 = 4 * v31;
LABEL_38:
        v48 = (a1 + 2 * v29);
        do
        {
          v49 = *v48++;
          v27 += vaddvq_s32(vmovl_u16(vabs_s16(v49)));
          v29 += 4;
        }

        while (v29 <= v26);
        goto LABEL_40;
      }
    }

    else
    {
      v27 = 0;
      v31 = 0;
    }

    v29 = 4 * (v30 & 0x3FFFFFFC);
    v45 = v27;
    v46 = &a1->i16[4 * v31];
    v47 = v31 - (v30 & 0x3FFFFFFC);
    do
    {
      v71 = vld4_s16(v46);
      v46 += 16;
      v45 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v45, vabs_s16(v71.val[0])), vabs_s16(v71.val[1])), vabs_s16(v71.val[2])), vabs_s16(v71.val[3]));
      v47 += 4;
    }

    while (v47);
    v27 = vaddvq_s32(v45);
    if (v30 != (v30 & 0x3FFFFFFC))
    {
      goto LABEL_38;
    }

LABEL_40:
    v28 = (v26 & 0xFFFFFFFC) + 4;
    if (v28 >= v25)
    {
LABEL_58:
      v5 += v27;
      goto LABEL_59;
    }

LABEL_41:
    v50 = v28;
    v51 = v25 + ~v28;
    if (v51 < 3)
    {
      v52 = v28;
      goto LABEL_54;
    }

    v53 = v51 + 1;
    if (v51 >= 0xF)
    {
      v54 = v53 & 0x1FFFFFFF0;
      v55 = v27;
      v56 = 0uLL;
      v57 = (a1 + 2 * v50 + 16);
      v58 = v53 & 0x1FFFFFFF0;
      v59 = 0uLL;
      v60 = 0uLL;
      do
      {
        v61 = vabsq_s16(v57[-1]);
        v62 = vabsq_s16(*v57);
        v56 = vaddw_high_u16(v56, v61);
        v55 = vaddw_u16(v55, *v61.i8);
        v60 = vaddw_high_u16(v60, v62);
        v59 = vaddw_u16(v59, *v62.i8);
        v57 += 2;
        v58 -= 16;
      }

      while (v58);
      v27 = vaddvq_s32(vaddq_s32(vaddq_s32(v59, v55), vaddq_s32(v60, v56)));
      if (v53 == v54)
      {
        goto LABEL_58;
      }

      if ((v53 & 0xC) == 0)
      {
        v52 = v54 + v50;
        goto LABEL_54;
      }
    }

    else
    {
      v54 = 0;
    }

    v52 = (v53 & 0x1FFFFFFFCLL) + v50;
    v63 = v27;
    v64 = (a1 + 2 * v54 + 2 * v50);
    v65 = v54 - (v53 & 0x1FFFFFFFCLL);
    do
    {
      v66 = *v64++;
      v63 = vaddw_u16(v63, vabs_s16(v66));
      v65 += 4;
    }

    while (v65);
    v27 = vaddvq_s32(v63);
    if (v53 == (v53 & 0x1FFFFFFFCLL))
    {
      goto LABEL_58;
    }

LABEL_54:
    v67 = &a1->i16[v52];
    do
    {
      v69 = *v67++;
      v68 = v69;
      if (v69 < 0)
      {
        v68 = -v68;
      }

      v27 += v68;
      LODWORD(v52) = v52 + 1;
    }

    while (v25 > v52);
    goto LABEL_58;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = 0;
    v7 = a4;
    v8 = a5 & 0x7FFFFFFC;
    v9 = a1 + 1;
    v10 = 2 * a5;
    do
    {
      if (*(a2 + v6))
      {
        if (a5 < 4)
        {
          for (i = 0; i != a5; ++i)
          {
LABEL_18:
            v24 = a1->i16[i];
            if (v24 < 0)
            {
              v24 = -v24;
            }

            v5 += v24;
          }

          goto LABEL_5;
        }

        if (a5 >= 0x10)
        {
          v13 = 0uLL;
          v14 = v5;
          v15 = a5 & 0x7FFFFFF0;
          v16 = v9;
          v17 = 0uLL;
          v18 = 0uLL;
          do
          {
            v19 = vabsq_s16(v16[-1]);
            v20 = vabsq_s16(*v16);
            v13 = vaddw_high_u16(v13, v19);
            v14 = vaddw_u16(v14, *v19.i8);
            v18 = vaddw_high_u16(v18, v20);
            v17 = vaddw_u16(v17, *v20.i8);
            v16 += 2;
            v15 -= 16;
          }

          while (v15);
          v5 = vaddvq_s32(vaddq_s32(vaddq_s32(v17, v14), vaddq_s32(v18, v13)));
          if ((a5 & 0x7FFFFFF0) == a5)
          {
            goto LABEL_5;
          }

          v12 = a5 & 0x7FFFFFF0;
          i = v12;
          if ((a5 & 0xC) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v12 = 0;
        }

        v21 = v5;
        v22 = 2 * v12;
        v23 = v12 - v8;
        do
        {
          v21 = vaddw_u16(v21, vabs_s16(*&a1->i8[v22]));
          v22 += 8;
          v23 += 4;
        }

        while (v23);
        v5 = vaddvq_s32(v21);
        i = a5 & 0x7FFFFFFC;
        if (v8 != a5)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v6;
      v9 = (v9 + v10);
      a1 = (a1 + v10);
    }

    while (v6 != v7);
  }

LABEL_59:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A6390(uint64_t a1, unsigned __int8 *a2, double *a3, unsigned int a4, unsigned int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v16 = a5 * a4;
    v17 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v18 = 0;
      v19 = 0.0;
      if (v16 <= 0)
      {
        goto LABEL_64;
      }

      goto LABEL_55;
    }

    if (v17 > 0x1B)
    {
      v35 = (v17 >> 2) + 1;
      v20 = 4 * (v35 & 0x3FFFFFF8);
      v36 = (a1 + 64);
      v19 = 0.0;
      v37 = v35 & 0x3FFFFFF8;
      do
      {
        v38 = v36 - 16;
        v79 = vld4q_f32(v38);
        v80 = vld4q_f32(v36);
        v39 = vaddq_s32(vabsq_s32(v79.val[1]), vabsq_s32(v79.val[0]));
        v40 = vaddq_s32(vabsq_s32(v80.val[1]), vabsq_s32(v80.val[0]));
        v41.i64[0] = v39.u32[2];
        v41.i64[1] = v39.u32[3];
        v42 = vcvtq_f64_u64(v41);
        v41.i64[0] = v39.u32[0];
        v41.i64[1] = v39.u32[1];
        v43 = vcvtq_f64_u64(v41);
        v41.i64[0] = v40.u32[2];
        v41.i64[1] = v40.u32[3];
        v44 = vcvtq_f64_u64(v41);
        v41.i64[0] = v40.u32[0];
        v41.i64[1] = v40.u32[1];
        v45 = vcvtq_f64_u64(v41);
        v46 = vabsq_s32(v79.val[2]);
        v47 = vabsq_s32(v80.val[2]);
        v41.i64[0] = v46.u32[2];
        v41.i64[1] = v46.u32[3];
        v48 = vcvtq_f64_u64(v41);
        v41.i64[0] = v46.u32[0];
        v41.i64[1] = v46.u32[1];
        v49 = vcvtq_f64_u64(v41);
        v41.i64[0] = v47.u32[2];
        v41.i64[1] = v47.u32[3];
        v50 = vcvtq_f64_u64(v41);
        v41.i64[0] = v47.u32[0];
        v41.i64[1] = v47.u32[1];
        v51 = vaddq_f64(v45, vcvtq_f64_u64(v41));
        v79.val[0] = vabsq_s32(v79.val[3]);
        v79.val[1] = vabsq_s32(v80.val[3]);
        v41.i64[0] = v79.val[0].u32[0];
        v41.i64[1] = v79.val[0].u32[1];
        v79.val[2] = vcvtq_f64_u64(v41);
        v41.i64[0] = v79.val[0].u32[2];
        v41.i64[1] = v79.val[0].u32[3];
        v79.val[0] = vcvtq_f64_u64(v41);
        v41.i64[0] = v79.val[1].u32[0];
        v41.i64[1] = v79.val[1].u32[1];
        v79.val[3] = vcvtq_f64_u64(v41);
        v41.i64[0] = v79.val[1].u32[2];
        v41.i64[1] = v79.val[1].u32[3];
        v79.val[0] = vaddq_f64(vaddq_f64(v42, v48), v79.val[0]);
        v79.val[2] = vaddq_f64(vaddq_f64(v43, v49), v79.val[2]);
        v79.val[1] = vaddq_f64(vaddq_f64(v44, v50), vcvtq_f64_u64(v41));
        v79.val[3] = vaddq_f64(v51, v79.val[3]);
        v19 = v19 + *v79.val[2].i64 + *&v79.val[2].i64[1] + *v79.val[0].i64 + *&v79.val[0].i64[1] + *v79.val[3].i64 + *&v79.val[3].i64[1] + *v79.val[1].i64 + *&v79.val[1].i64[1];
        v36 += 32;
        v37 -= 8;
      }

      while (v37);
      if (v35 == (v35 & 0x3FFFFFF8))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v20 = 0;
      v19 = 0.0;
    }

    v52 = v20 + 2;
    v53 = (a1 + 4 * v20 + 12);
    do
    {
      v54 = vabs_s32(*(v53 - 3));
      v55 = vadd_s32(vdup_lane_s32(v54, 1), v54).u32[0];
      v56 = *(v53 - 1);
      if (v56 < 0)
      {
        v56 = -v56;
      }

      v57 = v55 + v56;
      v59 = *v53;
      v53 += 4;
      v58 = v59;
      if (v59 < 0)
      {
        v58 = -v58;
      }

      v19 = v19 + v57 + v58;
      v60 = v52 + 2;
      v52 += 4;
    }

    while (v60 <= v17);
LABEL_54:
    v18 = (v17 & 0xFFFFFFFC) + 4;
    if (v18 >= v16)
    {
LABEL_64:
      v5 = v5 + v19;
      goto LABEL_65;
    }

LABEL_55:
    v61 = v18;
    v62 = (v16 + ~v18);
    if (v62 > 6)
    {
      v64 = v62 + 1;
      v65 = (v62 + 1) & 0x1FFFFFFF8;
      v63 = v65 + v61;
      v66 = (a1 + 4 * v61 + 16);
      v67 = v65;
      do
      {
        v68 = vabsq_s32(v66[-1]);
        v69 = vabsq_s32(*v66);
        v70.i64[0] = v68.u32[2];
        v70.i64[1] = v68.u32[3];
        v71 = vcvtq_f64_u64(v70);
        v70.i64[0] = v68.u32[0];
        v70.i64[1] = v68.u32[1];
        v72 = vcvtq_f64_u64(v70);
        v70.i64[0] = v69.u32[2];
        v70.i64[1] = v69.u32[3];
        v73 = vcvtq_f64_u64(v70);
        v70.i64[0] = v69.u32[0];
        v70.i64[1] = v69.u32[1];
        v74 = vcvtq_f64_u64(v70);
        v19 = v19 + v72.f64[0] + v72.f64[1] + v71.f64[0] + v71.f64[1] + v74.f64[0] + v74.f64[1] + v73.f64[0] + v73.f64[1];
        v66 += 2;
        v67 -= 8;
      }

      while (v67);
      if (v64 == v65)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v63 = v61;
    }

    v75 = (a1 + 4 * v63);
    do
    {
      v77 = *v75++;
      v76 = v77;
      if (v77 < 0)
      {
        v76 = -v76;
      }

      v19 = v19 + v76;
      LODWORD(v63) = v63 + 1;
    }

    while (v16 > v63);
    goto LABEL_64;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = a4;
    if (a5 >= 8)
    {
      v21 = 0;
      v22 = (a1 + 16);
      v23 = 4 * a5;
      do
      {
        if (a2[v21])
        {
          v24 = a5 & 0x7FFFFFF8;
          v25 = v22;
          do
          {
            v26 = vabsq_s32(v25[-1]);
            v27 = vabsq_s32(*v25);
            v28.i64[0] = v26.u32[2];
            v28.i64[1] = v26.u32[3];
            v29 = vcvtq_f64_u64(v28);
            v28.i64[0] = v26.u32[0];
            v28.i64[1] = v26.u32[1];
            v30 = vcvtq_f64_u64(v28);
            v28.i64[0] = v27.u32[2];
            v28.i64[1] = v27.u32[3];
            v31 = vcvtq_f64_u64(v28);
            v28.i64[0] = v27.u32[0];
            v28.i64[1] = v27.u32[1];
            v32 = vcvtq_f64_u64(v28);
            v5 = v5 + v30.f64[0] + v30.f64[1] + v29.f64[0] + v29.f64[1] + v32.f64[0] + v32.f64[1] + v31.f64[0] + v31.f64[1];
            v25 += 2;
            v24 -= 8;
          }

          while (v24);
          if ((a5 & 0x7FFFFFF8) != a5)
          {
            v33 = a5 & 0x7FFFFFF8;
            do
            {
              v34 = *(a1 + 4 * v33);
              if (v34 < 0)
              {
                v34 = -v34;
              }

              v5 = v5 + v34;
              ++v33;
            }

            while (a5 != v33);
          }
        }

        ++v21;
        v22 = (v22 + v23);
        a1 += v23;
      }

      while (v21 != a4);
    }

    else
    {
      v7 = (a1 + 12);
      do
      {
        if (*a2++)
        {
          v9 = *(v7 - 3);
          if (v9 < 0)
          {
            v9 = -v9;
          }

          v5 = v5 + v9;
          if (a5 != 1)
          {
            v10 = *(v7 - 2);
            if (v10 < 0)
            {
              v10 = -v10;
            }

            v5 = v5 + v10;
            if (a5 != 2)
            {
              v11 = *(v7 - 1);
              if (v11 < 0)
              {
                v11 = -v11;
              }

              v5 = v5 + v11;
              if (a5 != 3)
              {
                v12 = *v7;
                if ((*v7 & 0x80000000) != 0)
                {
                  v12 = -v12;
                }

                v5 = v5 + v12;
                if (a5 != 4)
                {
                  v13 = v7[1];
                  if (v13 < 0)
                  {
                    v13 = -v13;
                  }

                  v5 = v5 + v13;
                  if (a5 != 5)
                  {
                    v14 = v7[2];
                    if (v14 < 0)
                    {
                      v14 = -v14;
                    }

                    v5 = v5 + v14;
                    if (a5 != 6)
                    {
                      v15 = v7[3];
                      if (v15 < 0)
                      {
                        v15 = -v15;
                      }

                      v5 = v5 + v15;
                    }
                  }
                }
              }
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
    }
  }

LABEL_65:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A67FC(float64x2_t *a1, unsigned __int8 *a2, double *a3, unsigned int a4, unsigned int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v9 = a5 * a4;
    v10 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v11 = 0;
      v12 = 0.0;
      if (v9 <= 0)
      {
        goto LABEL_38;
      }

LABEL_31:
      v30 = v11;
      v31 = (v9 + ~v11);
      if (v31 > 2)
      {
        v33 = v31 + 1;
        v34 = (v31 + 1) & 0x1FFFFFFFCLL;
        v32 = v34 + v30;
        v35 = (a1 + 8 * v30 + 16);
        v36 = v34;
        do
        {
          v37 = vabsq_f64(v35[-1]);
          v38 = vabsq_f64(*v35);
          v12 = v12 + v37.f64[0] + v37.f64[1] + v38.f64[0] + v38.f64[1];
          v35 += 2;
          v36 -= 4;
        }

        while (v36);
        if (v33 == v34)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v32 = v30;
      }

      v39 = &a1->f64[v32];
      do
      {
        v40 = *v39++;
        v12 = v12 + fabs(v40);
        LODWORD(v32) = v32 + 1;
      }

      while (v9 > v32);
LABEL_38:
      v5 = v5 + v12;
      goto LABEL_39;
    }

    if (v10 > 0xB)
    {
      v22 = (v10 >> 2) + 1;
      v13 = 4 * (v22 & 0x3FFFFFFC);
      v23 = a1 + 4;
      v12 = 0.0;
      v24 = v22 & 0x3FFFFFFC;
      do
      {
        f64 = v23[-4].f64;
        v42 = vld4q_f64(f64);
        v43 = vld4q_f64(v23->f64);
        v42.val[0] = vaddq_f64(vaddq_f64(vaddq_f64(vabsq_f64(v42.val[0]), vabsq_f64(v42.val[1])), vabsq_f64(v42.val[2])), vabsq_f64(v42.val[3]));
        v42.val[1] = vaddq_f64(vaddq_f64(vaddq_f64(vabsq_f64(v43.val[0]), vabsq_f64(v43.val[1])), vabsq_f64(v43.val[2])), vabsq_f64(v43.val[3]));
        v12 = v12 + v42.val[0].f64[0] + v42.val[0].f64[1] + v42.val[1].f64[0] + v42.val[1].f64[1];
        v23 += 8;
        v24 -= 4;
      }

      while (v24);
      if (v22 == (v22 & 0x3FFFFFFC))
      {
LABEL_30:
        v11 = (v10 & 0xFFFFFFFC) + 4;
        if (v11 >= v9)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0.0;
    }

    v26 = &a1[v13 / 2 + 1];
    do
    {
      v27 = fabs(v26[-1].f64[0]) + fabs(v26[-1].f64[1]);
      v28 = v26->f64[0];
      v29 = v26->f64[1];
      v26 += 2;
      v12 = v12 + v27 + fabs(v28) + fabs(v29);
      v13 += 4;
    }

    while (v13 <= v10);
    goto LABEL_30;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = a4;
    if (a5 >= 4)
    {
      v14 = 0;
      v15 = a1 + 1;
      v16 = 8 * a5;
      do
      {
        if (a2[v14])
        {
          v17 = a5 & 0x7FFFFFFC;
          v18 = v15;
          do
          {
            v19 = vabsq_f64(v18[-1]);
            v20 = vabsq_f64(*v18);
            v5 = v5 + v19.f64[0] + v19.f64[1] + v20.f64[0] + v20.f64[1];
            v18 += 2;
            v17 -= 4;
          }

          while (v17);
          if ((a5 & 0x7FFFFFFC) != a5)
          {
            v21 = a5 & 0x7FFFFFFC;
            do
            {
              v5 = v5 + fabs(a1->f64[v21++]);
            }

            while (a5 != v21);
          }
        }

        ++v14;
        v15 = (v15 + v16);
        a1 = (a1 + v16);
      }

      while (v14 != a4);
    }

    else
    {
      v7 = a1 + 1;
      do
      {
        if (*a2++)
        {
          v5 = v5 + fabs(v7[-1].f64[0]);
          if (a5 != 1)
          {
            v5 = v5 + fabs(v7[-1].f64[1]);
            if (a5 != 2)
            {
              v5 = v5 + fabs(v7->f64[0]);
            }
          }
        }

        v7 = (v7 + 8 * a5);
        --v6;
      }

      while (v6);
    }
  }

LABEL_39:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A6AB4(uint8x16_t *a1, unsigned __int8 *a2, unsigned int *a3, unsigned int a4, unsigned int a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *a3;
  if (!a2)
  {
    v11 = a5 * a4;
    v12 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v13 = 0;
      v14 = 0;
      if (v11 <= 0)
      {
        goto LABEL_58;
      }

      goto LABEL_43;
    }

    if (v12 < 0x1C)
    {
      v15 = 0;
      v14 = 0;
      goto LABEL_41;
    }

    v38 = (v12 >> 2) + 1;
    if (v12 >= 0x3C)
    {
      v39 = v38 & 0x3FFFFFF0;
      v46 = 0uLL;
      v47 = v39;
      v48 = a1;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      do
      {
        v89 = vld4q_s8(v48->i8);
        v48 += 4;
        v52 = vmull_high_u8(v89.val[0], v89.val[0]);
        v53 = vmull_u8(*v89.val[0].i8, *v89.val[0].i8);
        v54 = vmull_u8(*v89.val[1].i8, *v89.val[1].i8);
        v55 = vmull_high_u8(v89.val[1], v89.val[1]);
        v56 = vmull_high_u8(v89.val[2], v89.val[2]);
        v57 = vmull_u8(*v89.val[2].i8, *v89.val[2].i8);
        v58 = vmull_u8(*v89.val[3].i8, *v89.val[3].i8);
        v89.val[0] = vmull_high_u8(v89.val[3], v89.val[3]);
        v51 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v51, v52), v55), v56), v89.val[0]);
        v50 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v50, *v52.i8), *v55.i8), *v56.i8), *v89.val[0].i8);
        v49 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v49, v53), v54), v57), v58);
        v46 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v46, *v53.i8), *v54.i8), *v57.i8), *v58.i8);
        v47 -= 16;
      }

      while (v47);
      a7 = vaddq_s32(v49, v51);
      a6 = vaddq_s32(vaddq_s32(v46, v50), a7);
      v14 = vaddvq_s32(a6);
      if (v38 == v39)
      {
        goto LABEL_42;
      }

      if ((v38 & 8) == 0)
      {
        v15 = 4 * v39;
        do
        {
LABEL_41:
          a6.i32[0] = a1->i32[v15 / 4];
          v59 = vmovl_u8(*a6.i8).u64[0];
          a6 = vmull_u16(v59, v59);
          v14 += vaddvq_s32(a6);
          v15 += 4;
        }

        while (v15 <= v12);
        goto LABEL_42;
      }
    }

    else
    {
      v14 = 0;
      v39 = 0;
    }

    v15 = 4 * (v38 & 0x3FFFFFF8);
    v40 = 0uLL;
    a7 = v14;
    v41 = &a1->i8[4 * v39];
    v42 = v39 - (v38 & 0x3FFFFFF8);
    do
    {
      v88 = vld4_s8(v41);
      v41 += 32;
      v43 = vmull_u8(v88.val[0], v88.val[0]);
      v44 = vmull_u8(v88.val[1], v88.val[1]);
      v45 = vmull_u8(v88.val[2], v88.val[2]);
      *v88.val[0].i8 = vmull_u8(v88.val[3], v88.val[3]);
      v40 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v40, v43), v44), v45), *v88.val[0].i8);
      a7 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(a7, *v43.i8), *v44.i8), *v45.i8), v88.val[0]);
      v42 += 8;
    }

    while (v42);
    a6 = vaddq_s32(a7, v40);
    v14 = vaddvq_s32(a6);
    if (v38 != (v38 & 0x3FFFFFF8))
    {
      goto LABEL_41;
    }

LABEL_42:
    v13 = (v12 & 0xFFFFFFFC) + 4;
    if (v13 >= v11)
    {
LABEL_58:
      v7 += v14;
      goto LABEL_59;
    }

LABEL_43:
    v60 = v13;
    v61 = v11 + ~v13;
    if (v61 < 3)
    {
      v62 = v13;
      goto LABEL_56;
    }

    v63 = v61 + 1;
    if (v61 >= 0x1F)
    {
      v64 = v63 & 0x1FFFFFFE0;
      v65 = 0uLL;
      v66 = v14;
      v67 = (a1 + v60 + 16);
      v68 = v63 & 0x1FFFFFFE0;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      do
      {
        v75 = v67[-1];
        v76 = *v67;
        v77 = vmull_u8(*v75.i8, *v75.i8);
        v78 = vmull_high_u8(v75, v75);
        v79 = vmull_u8(*v76.i8, *v76.i8);
        v80 = vmull_high_u8(v76, v76);
        v70 = vaddw_high_u16(v70, v78);
        v69 = vaddw_u16(v69, *v78.i8);
        v65 = vaddw_high_u16(v65, v77);
        v66 = vaddw_u16(v66, *v77.i8);
        v74 = vaddw_high_u16(v74, v80);
        v73 = vaddw_u16(v73, *v80.i8);
        v72 = vaddw_high_u16(v72, v79);
        v71 = vaddw_u16(v71, *v79.i8);
        v67 += 2;
        v68 -= 32;
      }

      while (v68);
      a7 = vaddq_s32(vaddq_s32(v72, v65), vaddq_s32(v74, v70));
      v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v71, v66), vaddq_s32(v73, v69)), a7));
      if (v63 == v64)
      {
        goto LABEL_58;
      }

      if ((v63 & 0x1C) == 0)
      {
        v62 = v64 + v60;
LABEL_56:
        v85 = &a1->u8[v62];
        do
        {
          v86 = *v85++;
          v14 += v86 * v86;
          LODWORD(v62) = v62 + 1;
        }

        while (v11 > v62);
        goto LABEL_58;
      }
    }

    else
    {
      v64 = 0;
    }

    v62 = (v63 & 0x1FFFFFFFCLL) + v60;
    v81 = v14;
    v82 = (a1->i32 + v64 + v60);
    v83 = v64 - (v63 & 0x1FFFFFFFCLL);
    do
    {
      v84 = *v82++;
      a7.i32[0] = v84;
      a7.i64[0] = vmovl_u8(*a7.i8).u64[0];
      v81 = vmlal_u16(v81, *a7.i8, *a7.i8);
      v83 += 4;
    }

    while (v83);
    v14 = vaddvq_s32(v81);
    if (v63 == (v63 & 0x1FFFFFFFCLL))
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (a4 < 1 || a5 < 1)
  {
    goto LABEL_59;
  }

  v8 = a4;
  if (a5 >= 4)
  {
    v16 = 0;
    v17 = a5 & 0x7FFFFFFC;
    v18 = a1 + 1;
    while (!a2[v16])
    {
LABEL_17:
      ++v16;
      a1 = (a1 + a5);
      v18 = (v18 + a5);
      if (v16 == v8)
      {
        goto LABEL_59;
      }
    }

    if (a5 >= 0x20)
    {
      v20 = 0uLL;
      v21 = v7;
      v22 = a5 & 0x7FFFFFE0;
      v23 = v18;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = v23[-1];
        v31 = *v23;
        v32 = vmull_u8(*v30.i8, *v30.i8);
        v33 = vmull_high_u8(v30, v30);
        v34 = vmull_u8(*v31.i8, *v31.i8);
        v35 = vmull_high_u8(v31, v31);
        v25 = vaddw_high_u16(v25, v33);
        v24 = vaddw_u16(v24, *v33.i8);
        v20 = vaddw_high_u16(v20, v32);
        v21 = vaddw_u16(v21, *v32.i8);
        v29 = vaddw_high_u16(v29, v35);
        v28 = vaddw_u16(v28, *v35.i8);
        v27 = vaddw_high_u16(v27, v34);
        v26 = vaddw_u16(v26, *v34.i8);
        v23 += 2;
        v22 -= 32;
      }

      while (v22);
      a7 = vaddq_s32(vaddq_s32(v27, v20), vaddq_s32(v29, v25));
      v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v26, v21), vaddq_s32(v28, v24)), a7));
      if ((a5 & 0x7FFFFFE0) == a5)
      {
        goto LABEL_17;
      }

      v19 = a5 & 0x7FFFFFE0;
      v36 = v19;
      if ((a5 & 0x1C) == 0)
      {
        do
        {
LABEL_28:
          v7 += a1->u8[v36] * a1->u8[v36];
          ++v36;
        }

        while (a5 != v36);
        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
    }

    v37 = v7;
    do
    {
      a7.i32[0] = *(a1->i32 + v19);
      a7.i64[0] = vmovl_u8(*a7.i8).u64[0];
      v37 = vmlal_u16(v37, *a7.i8, *a7.i8);
      v19 += 4;
    }

    while (v17 != v19);
    v7 = vaddvq_s32(v37);
    v36 = a5 & 0x7FFFFFFC;
    if (v17 == a5)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v9 = &a1->u8[2];
  do
  {
    if (*a2++)
    {
      v7 += *(v9 - 2) * *(v9 - 2);
      if (a5 != 1)
      {
        v7 += *(v9 - 1) * *(v9 - 1);
        if (a5 != 2)
        {
          v7 += *v9 * *v9;
        }
      }
    }

    v9 += a5;
    --v8;
  }

  while (v8);
LABEL_59:
  *a3 = v7;
  return 0;
}

uint64_t sub_1002A6F40(int8x16_t *a1, unsigned __int8 *a2, unsigned int *a3, unsigned int a4, unsigned int a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *a3;
  if (!a2)
  {
    v11 = a5 * a4;
    v12 = a5 * a4 - 4;
    if ((a5 * a4) < 4)
    {
      v13 = 0;
      v14 = 0;
      if (v11 <= 0)
      {
        goto LABEL_58;
      }

      goto LABEL_43;
    }

    if (v12 < 0x1C)
    {
      v15 = 0;
      v14 = 0;
      goto LABEL_41;
    }

    v38 = (v12 >> 2) + 1;
    if (v12 >= 0x3C)
    {
      v39 = v38 & 0x3FFFFFF0;
      v46 = 0uLL;
      v47 = v39;
      v48 = a1;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      do
      {
        v89 = vld4q_s8(v48->i8);
        v48 += 4;
        v52 = vmull_high_s8(v89.val[0], v89.val[0]);
        v53 = vmull_s8(*v89.val[0].i8, *v89.val[0].i8);
        v54 = vmull_s8(*v89.val[1].i8, *v89.val[1].i8);
        v55 = vmull_high_s8(v89.val[1], v89.val[1]);
        v56 = vmull_high_s8(v89.val[2], v89.val[2]);
        v57 = vmull_s8(*v89.val[2].i8, *v89.val[2].i8);
        v58 = vmull_s8(*v89.val[3].i8, *v89.val[3].i8);
        v89.val[0] = vmull_high_s8(v89.val[3], v89.val[3]);
        v51 = vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(v51, v52), v55), v56), v89.val[0]);
        v50 = vaddw_s16(vaddw_s16(vaddw_s16(vaddw_s16(v50, *v52.i8), *v55.i8), *v56.i8), *v89.val[0].i8);
        v49 = vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(v49, v53), v54), v57), v58);
        v46 = vaddw_s16(vaddw_s16(vaddw_s16(vaddw_s16(v46, *v53.i8), *v54.i8), *v57.i8), *v58.i8);
        v47 -= 16;
      }

      while (v47);
      a7 = vaddq_s32(v49, v51);
      a6 = vaddq_s32(vaddq_s32(v46, v50), a7);
      v14 = vaddvq_s32(a6);
      if (v38 == v39)
      {
        goto LABEL_42;
      }

      if ((v38 & 8) == 0)
      {
        v15 = 4 * v39;
        do
        {
LABEL_41:
          a6.i32[0] = a1->i32[v15 / 4];
          v59 = vmovl_s8(*a6.i8).u64[0];
          a6 = vmull_s16(v59, v59);
          v14 += vaddvq_s32(a6);
          v15 += 4;
        }

        while (v15 <= v12);
        goto LABEL_42;
      }
    }

    else
    {
      v14 = 0;
      v39 = 0;
    }

    v15 = 4 * (v38 & 0x3FFFFFF8);
    v40 = 0uLL;
    a7 = v14;
    v41 = &a1->i8[4 * v39];
    v42 = v39 - (v38 & 0x3FFFFFF8);
    do
    {
      v88 = vld4_s8(v41);
      v41 += 32;
      v43 = vmull_s8(v88.val[0], v88.val[0]);
      v44 = vmull_s8(v88.val[1], v88.val[1]);
      v45 = vmull_s8(v88.val[2], v88.val[2]);
      *v88.val[0].i8 = vmull_s8(v88.val[3], v88.val[3]);
      v40 = vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(v40, v43), v44), v45), *v88.val[0].i8);
      a7 = vaddw_s16(vaddw_s16(vaddw_s16(vaddw_s16(a7, *v43.i8), *v44.i8), *v45.i8), v88.val[0]);
      v42 += 8;
    }

    while (v42);
    a6 = vaddq_s32(a7, v40);
    v14 = vaddvq_s32(a6);
    if (v38 != (v38 & 0x3FFFFFF8))
    {
      goto LABEL_41;
    }

LABEL_42:
    v13 = (v12 & 0xFFFFFFFC) + 4;
    if (v13 >= v11)
    {
LABEL_58:
      v7 += v14;
      goto LABEL_59;
    }

LABEL_43:
    v60 = v13;
    v61 = v11 + ~v13;
    if (v61 < 3)
    {
      v62 = v13;
      goto LABEL_56;
    }

    v63 = v61 + 1;
    if (v61 >= 0x1F)
    {
      v64 = v63 & 0x1FFFFFFE0;
      v65 = 0uLL;
      v66 = v14;
      v67 = (a1 + v60 + 16);
      v68 = v63 & 0x1FFFFFFE0;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      do
      {
        v75 = v67[-1];
        v76 = *v67;
        v77 = vmull_s8(*v75.i8, *v75.i8);
        v78 = vmull_high_s8(v75, v75);
        v79 = vmull_s8(*v76.i8, *v76.i8);
        v80 = vmull_high_s8(v76, v76);
        v70 = vaddw_high_s16(v70, v78);
        v69 = vaddw_s16(v69, *v78.i8);
        v65 = vaddw_high_s16(v65, v77);
        v66 = vaddw_s16(v66, *v77.i8);
        v74 = vaddw_high_s16(v74, v80);
        v73 = vaddw_s16(v73, *v80.i8);
        v72 = vaddw_high_s16(v72, v79);
        v71 = vaddw_s16(v71, *v79.i8);
        v67 += 2;
        v68 -= 32;
      }

      while (v68);
      a7 = vaddq_s32(vaddq_s32(v72, v65), vaddq_s32(v74, v70));
      v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v71, v66), vaddq_s32(v73, v69)), a7));
      if (v63 == v64)
      {
        goto LABEL_58;
      }

      if ((v63 & 0x1C) == 0)
      {
        v62 = v64 + v60;
LABEL_56:
        v85 = &a1->i8[v62];
        do
        {
          v86 = *v85++;
          v14 += v86 * v86;
          LODWORD(v62) = v62 + 1;
        }

        while (v11 > v62);
        goto LABEL_58;
      }
    }

    else
    {
      v64 = 0;
    }

    v62 = (v63 & 0x1FFFFFFFCLL) + v60;
    v81 = v14;
    v82 = (a1->i32 + v64 + v60);
    v83 = v64 - (v63 & 0x1FFFFFFFCLL);
    do
    {
      v84 = *v82++;
      a7.i32[0] = v84;
      a7.i64[0] = vmovl_s8(*a7.i8).u64[0];
      v81 = vmlal_s16(v81, *a7.i8, *a7.i8);
      v83 += 4;
    }

    while (v83);
    v14 = vaddvq_s32(v81);
    if (v63 == (v63 & 0x1FFFFFFFCLL))
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (a4 < 1 || a5 < 1)
  {
    goto LABEL_59;
  }

  v8 = a4;
  if (a5 >= 4)
  {
    v16 = 0;
    v17 = a5 & 0x7FFFFFFC;
    v18 = a1 + 1;
    while (!a2[v16])
    {
LABEL_17:
      ++v16;
      a1 = (a1 + a5);
      v18 = (v18 + a5);
      if (v16 == v8)
      {
        goto LABEL_59;
      }
    }

    if (a5 >= 0x20)
    {
      v20 = 0uLL;
      v21 = v7;
      v22 = a5 & 0x7FFFFFE0;
      v23 = v18;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = v23[-1];
        v31 = *v23;
        v32 = vmull_s8(*v30.i8, *v30.i8);
        v33 = vmull_high_s8(v30, v30);
        v34 = vmull_s8(*v31.i8, *v31.i8);
        v35 = vmull_high_s8(v31, v31);
        v25 = vaddw_high_s16(v25, v33);
        v24 = vaddw_s16(v24, *v33.i8);
        v20 = vaddw_high_s16(v20, v32);
        v21 = vaddw_s16(v21, *v32.i8);
        v29 = vaddw_high_s16(v29, v35);
        v28 = vaddw_s16(v28, *v35.i8);
        v27 = vaddw_high_s16(v27, v34);
        v26 = vaddw_s16(v26, *v34.i8);
        v23 += 2;
        v22 -= 32;
      }

      while (v22);
      a7 = vaddq_s32(vaddq_s32(v27, v20), vaddq_s32(v29, v25));
      v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v26, v21), vaddq_s32(v28, v24)), a7));
      if ((a5 & 0x7FFFFFE0) == a5)
      {
        goto LABEL_17;
      }

      v19 = a5 & 0x7FFFFFE0;
      v36 = v19;
      if ((a5 & 0x1C) == 0)
      {
        do
        {
LABEL_28:
          v7 += a1->i8[v36] * a1->i8[v36];
          ++v36;
        }

        while (a5 != v36);
        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
    }

    v37 = v7;
    do
    {
      a7.i32[0] = *(a1->i32 + v19);
      a7.i64[0] = vmovl_s8(*a7.i8).u64[0];
      v37 = vmlal_s16(v37, *a7.i8, *a7.i8);
      v19 += 4;
    }

    while (v17 != v19);
    v7 = vaddvq_s32(v37);
    v36 = a5 & 0x7FFFFFFC;
    if (v17 == a5)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v9 = &a1->i8[2];
  do
  {
    if (*a2++)
    {
      v7 += *(v9 - 2) * *(v9 - 2);
      if (a5 != 1)
      {
        v7 += *(v9 - 1) * *(v9 - 1);
        if (a5 != 2)
        {
          v7 += *v9 * *v9;
        }
      }
    }

    v9 += a5;
    --v8;
  }

  while (v8);
LABEL_59:
  *a3 = v7;
  return 0;
}