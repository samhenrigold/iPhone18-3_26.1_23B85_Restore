uint16x8_t *sub_100203560(uint16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a2 >> 1;
  v10 = v8 - 4;
  v11 = (v8 - 16);
  if (v8 >= 16)
  {
    v17 = 0;
    v18 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v19 = (v11 & 0xFFFFFFF0) + 16;
    v20 = v19 | 4;
    if ((v19 | 4) <= v10 + 1)
    {
      v20 = v10 + 1;
    }

    v21 = ~v19 + v20;
    v22 = &a5->i8[(v21 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v23 = &result->i64[(v21 >> 2) + 1];
    v24 = &a5->i8[v8];
    v25 = &result->i8[2 * v8];
    v111 = (v21 >> 2) + 1;
    v26 = result + 1;
    v27 = 2 * v9;
    v28 = &result->i8[4];
    v29.i64[0] = 0x7F007F007F007FLL;
    v29.i64[1] = 0x7F007F007F007FLL;
    while (1)
    {
      v30 = 0;
      v31 = 0;
      v32 = 16;
      v33 = v26;
      do
      {
        *(a5 + v31) = vqmovn_high_s16(vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vmovl_u16(v33[-2])), vmovl_high_u16(*v33[-2].i8))), vqmovn_high_s32(vqmovn_s32(vmovl_u16(*v33)), vmovl_high_u16(*v33->i8)));
        v34 = v32;
        v31 += 16;
        v30 += 0x1000000000;
        v33 += 4;
        v32 += 16;
      }

      while (v31 <= v11);
      if (v10 >= v31)
      {
        v31 = v30 >> 32;
        if (v21 <= 0x3B || &a5->i8[v31] < v23 + v18 * v17 + (v30 >> 31) && &result->i8[v30 >> 31] < &v22[v17 * a6 + v31])
        {
          goto LABEL_29;
        }

        v31 += 4 * (v111 & 0x7FFFFFFFFFFFFFF0);
        v35 = v34;
        v36 = 2 * v34;
        v37 = v111 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v38 = (a5 + v35);
          v39 = vuzp1q_s8(vminq_u16(*(&result[2] + v36), v29), vminq_u16(*(&result[3] + v36), v29));
          v40 = vuzp1q_s8(vminq_u16(*(result + v36), v29), vminq_u16(*(&result[1] + v36), v29));
          v41 = vuzp1q_s8(vminq_u16(*(&result[6] + v36), v29), vminq_u16(*(&result[7] + v36), v29));
          v38[2] = vuzp1q_s8(vminq_u16(*(&result[4] + v36), v29), vminq_u16(*(&result[5] + v36), v29));
          v38[3] = v41;
          *v38 = v40;
          v38[1] = v39;
          v35 += 64;
          v36 += 128;
          v37 -= 16;
        }

        while (v37);
        if (v111 != (v111 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_29:
          v42 = v31 + 1;
          v43 = &v28[2 * v31];
          do
          {
            v44 = *(v43 - 2);
            if (v44 >= 0x7F)
            {
              LOBYTE(v44) = 127;
            }

            v45 = result->u16[v42];
            if (v45 >= 0x7F)
            {
              LOBYTE(v45) = 127;
            }

            v46 = &a5->i8[v42];
            *(v46 - 1) = v44;
            *v46 = v45;
            v47 = *v43;
            if (v47 >= 0x7F)
            {
              LOBYTE(v47) = 127;
            }

            v48 = *(v43 + 1);
            if (v48 >= 0x7F)
            {
              LOBYTE(v48) = 127;
            }

            v46[1] = v47;
            v46[2] = v48;
            v49 = v42 + 4;
            v50 = v42 + 3;
            v43 += 8;
            v42 += 4;
          }

          while (v50 <= v10);
          LODWORD(v31) = v49 - 1;
        }
      }

      if (v31 >= v8)
      {
        goto LABEL_19;
      }

      v51 = v31;
      v52 = v8 - v31;
      if (v52 < 4)
      {
        goto LABEL_55;
      }

      v53 = (result + 2 * v51);
      if (&a5->i8[v51] < &v25[v18 * v17] && v53 < &v24[v17 * a6])
      {
        goto LABEL_55;
      }

      if (v52 >= 0x20)
      {
        v54 = v52 & 0xFFFFFFFFFFFFFFE0;
        v55 = (a5 + v51);
        v56 = v52 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v57 = vuzp1q_s8(vminq_u16(v53[2], v29), vminq_u16(v53[3], v29));
          *v55 = vuzp1q_s8(vminq_u16(*v53, v29), vminq_u16(v53[1], v29));
          v55[1] = v57;
          v55 += 2;
          v53 += 4;
          v56 -= 32;
        }

        while (v56);
        if (v52 == v54)
        {
          goto LABEL_19;
        }

        if ((v52 & 0x1C) == 0)
        {
          v51 += v54;
          do
          {
LABEL_55:
            v62 = result->u16[v51];
            if (v62 >= 0x7F)
            {
              LOBYTE(v62) = 127;
            }

            a5->i8[v51++] = v62;
          }

          while (v8 != v51);
          goto LABEL_19;
        }
      }

      else
      {
        v54 = 0;
      }

      v58 = (v52 & 0xFFFFFFFFFFFFFFFCLL) + v51;
      v59 = v54 - (v52 & 0xFFFFFFFFFFFFFFFCLL);
      v60 = v54 + v51;
      v61 = 2 * v60;
      do
      {
        *(a5->i32 + v60) = vuzp1_s8(vmin_u16(*&result->i8[v61], 0x7F007F007F007FLL), 0x7F007F007F007FLL).u32[0];
        v61 += 8;
        v60 += 4;
        v59 += 4;
      }

      while (v59);
      v51 = v58;
      if (v52 != (v52 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_55;
      }

LABEL_19:
      result = (result + v27);
      a5 = (a5 + a6);
      ++v17;
      v26 = (v26 + v27);
      v28 += v27;
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    v63 = 0;
    if (v10 <= 3)
    {
      v64 = 3;
    }

    else
    {
      v64 = v8 - 4;
    }

    v65 = ((v64 << 32) & 0x7FFFFFFC00000000) + 0x400000000;
    v66 = v65 >> 32;
    if (((v65 >> 32) | 1) > v8)
    {
      v67 = v66 + 1;
    }

    else
    {
      v67 = *a7;
    }

    v68 = v67 - v66;
    v69 = (v7 - 1);
    v70 = &a5->i8[v69 * a6 + 4 + (v64 & 0x7FFFFFFC)];
    v71 = &result->i8[2 * (v64 & 0x7FFFFFFC) + 8 + 2 * v9 * v69];
    v72 = (v64 >> 2) + 1;
    v73 = &a5->i8[v67 - v66];
    v75 = v71 > a5 && v70 > result;
    v76 = v68 & 0xFFFFFFFFFFFFFFE0;
    v77 = v10 < 60 || ((a6 | a2) & 0x8000000000000000) != 0 || v75;
    v78 = &result->i8[4];
    v79 = 2 * v9;
    v80 = (v66 & 0xFFFFFFFFFFFFFFFCLL | v67 & 3) - v67;
    v81.i64[0] = 0x7F007F007F007FLL;
    v81.i64[1] = 0x7F007F007F007FLL;
    v82 = result;
    while (1)
    {
      if (v77)
      {
        v83 = 0;
      }

      else
      {
        v84 = vuzp1q_s8(vminq_u16(v82[2], v81), vminq_u16(v82[3], v81));
        v85 = vuzp1q_s8(vminq_u16(*v82, v81), vminq_u16(v82[1], v81));
        v86 = vuzp1q_s8(vminq_u16(v82[6], v81), vminq_u16(v82[7], v81));
        a5[2] = vuzp1q_s8(vminq_u16(v82[4], v81), vminq_u16(v82[5], v81));
        a5[3] = v86;
        *a5 = v85;
        a5[1] = v84;
        v83 = 4 * (v72 & 0x3FFFFFF0);
        v87 = 4 * (v72 & 0x3FFFFFF0);
        if (v72 == (v72 & 0x3FFFFFF0))
        {
          goto LABEL_87;
        }
      }

      v88 = v83 + 1;
      v89 = &v78[2 * v83];
      do
      {
        v90 = *(v89 - 2);
        if (v90 >= 0x7F)
        {
          LOBYTE(v90) = 127;
        }

        v91 = v82->u16[v88];
        if (v91 >= 0x7F)
        {
          LOBYTE(v91) = 127;
        }

        v92 = &a5->i8[v88];
        *(v92 - 1) = v90;
        *v92 = v91;
        v93 = *v89;
        if (v93 >= 0x7F)
        {
          LOBYTE(v93) = 127;
        }

        v94 = *(v89 + 1);
        if (v94 >= 0x7F)
        {
          LOBYTE(v94) = 127;
        }

        v92[1] = v93;
        v92[2] = v94;
        v95 = v88 + 4;
        v96 = v88 + 3;
        v89 += 8;
        v88 += 4;
      }

      while (v96 <= v10);
      v87 = v95 - 1;
LABEL_87:
      if (v8 > v87)
      {
        v97 = v87;
        if (v68 < 4)
        {
          goto LABEL_103;
        }

        v98 = &v73[v63 * a6 + v87];
        v99 = &v82->i8[2 * v87];
        if (&a5->i8[v97] < result + 2 * v67 + 2 * v97 + (a2 & 0xFFFFFFFFFFFFFFFELL) * v63 - (v65 >> 31) && v99 < v98)
        {
          goto LABEL_103;
        }

        if (v68 >= 0x20)
        {
          v102 = (a5 + v97);
          v103 = (v82 + 2 * v97);
          v104 = v68 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v105 = vuzp1q_s8(vminq_u16(v103[2], v81), vminq_u16(v103[3], v81));
            *v102 = vuzp1q_s8(vminq_u16(*v103, v81), vminq_u16(v103[1], v81));
            v102[1] = v105;
            v102 += 2;
            v103 += 4;
            v104 -= 32;
          }

          while (v104);
          if (v68 == v76)
          {
            goto LABEL_72;
          }

          v101 = v68 & 0xFFFFFFFFFFFFFFE0;
          if ((v68 & 0x1C) == 0)
          {
            v97 += v76;
            do
            {
LABEL_103:
              v110 = v82->u16[v97];
              if (v110 >= 0x7F)
              {
                LOBYTE(v110) = 127;
              }

              a5->i8[v97++] = v110;
            }

            while (v97 < v8);
            goto LABEL_72;
          }
        }

        else
        {
          v101 = 0;
        }

        v106 = v97 + v68 - (v67 & 3);
        v107 = v80 + v101;
        v108 = v101 + v97;
        v109 = 2 * v108;
        do
        {
          *(a5->i32 + v108) = vuzp1_s8(vmin_u16(*&v82->i8[v109], 0x7F007F007F007FLL), 0x7F007F007F007FLL).u32[0];
          v109 += 8;
          v108 += 4;
          v107 += 4;
        }

        while (v107);
        v97 = v106;
        if ((v67 & 3) != 0)
        {
          goto LABEL_103;
        }
      }

LABEL_72:
      v82 = (v82 + v79);
      a5 = (a5 + a6);
      ++v63;
      v78 += v79;
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 1)
  {
    v12 = &result->u16[2];
    v13 = &a5->i8[2];
    do
    {
      v14 = *(v12 - 2);
      if (v14 >= 0x7F)
      {
        LOBYTE(v14) = 127;
      }

      *(v13 - 2) = v14;
      if (v8 != 1)
      {
        v15 = *(v12 - 1);
        if (v15 >= 0x7F)
        {
          LOBYTE(v15) = 127;
        }

        *(v13 - 1) = v15;
        if (v8 != 2)
        {
          v16 = *v12;
          if (v16 >= 0x7F)
          {
            LOBYTE(v16) = 127;
          }

          *v13 = v16;
        }
      }

      v12 += v9;
      v13 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

int16x8_t *sub_100203C20(int16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = 0;
    v9 = *a7;
    v10 = v9 - 4;
    v11 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v12 = &result->i64[1];
    v13 = &result->i8[2 * v9];
    v14 = result + 1;
    v15 = 2 * (a2 >> 1);
    v16 = a5;
    do
    {
      if (v9 >= 16)
      {
        v20 = 0;
        v21 = v14;
        do
        {
          *(v16 + v20) = vqmovn_high_s16(vqmovn_s16(v21[-1]), *v21);
          v20 += 16;
          v21 += 2;
        }

        while (v20 <= (v9 - 16));
        LODWORD(v17) = v20;
        v18 = a5 + v8 * a6;
        v19 = v11 * v8;
        if (v17 > v10)
        {
          goto LABEL_39;
        }
      }

      else
      {
        LODWORD(v17) = 0;
        v18 = a5 + v8 * a6;
        v19 = v11 * v8;
        if (v10 < 0)
        {
          goto LABEL_39;
        }
      }

      v22 = v17;
      v23 = v10 - v17;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v18 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + v22, v26 = 2 * v22, v16 + v22 < &v12[v24] + 2 * v22 + v19) ? (v27 = result + 2 * v22 >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        v29 = (v24 + 1) & 0x7FFFFFFFFFFFFFF0;
        v17 = v22 + 4 * v29;
        v30 = v29;
        do
        {
          v31 = (v16 + v22);
          v32 = vqmovn_high_s16(vqmovn_s16(*(&result[2] + v26)), *(&result[3] + v26));
          v33 = vqmovn_high_s16(vqmovn_s16(*(result + v26)), *(&result[1] + v26));
          v34 = vqmovn_high_s16(vqmovn_s16(*(&result[6] + v26)), *(&result[7] + v26));
          v31[2] = vqmovn_high_s16(vqmovn_s16(*(&result[4] + v26)), *(&result[5] + v26));
          v31[3] = v34;
          *v31 = v33;
          v31[1] = v32;
          v22 += 64;
          v26 += 128;
          v30 -= 16;
        }

        while (v30);
        if (v28 == v29)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v17 = v22;
      }

      v35 = 2 * v17 + 6;
      do
      {
        v36 = *(&result->i16[-3] + v35);
        if (v36 <= -128)
        {
          v36 = -128;
        }

        if (v36 >= 127)
        {
          LOBYTE(v36) = 127;
        }

        v37 = &result->i8[2 * v17];
        v38 = *(v37 + 1);
        if (v38 <= -128)
        {
          v38 = -128;
        }

        if (v38 >= 127)
        {
          LOBYTE(v38) = 127;
        }

        v39 = (v16 + v17);
        *v39 = v36;
        v39[1] = v38;
        v40 = *(v37 + 2);
        if (v40 <= -128)
        {
          v40 = -128;
        }

        if (v40 >= 127)
        {
          LOBYTE(v40) = 127;
        }

        v41 = *(result->i16 + v35);
        if (v41 <= -128)
        {
          v41 = -128;
        }

        if (v41 >= 127)
        {
          LOBYTE(v41) = 127;
        }

        v39[2] = v40;
        v39[3] = v41;
        v17 += 4;
        v35 += 8;
      }

      while (v17 <= v10);
LABEL_39:
      if (v17 < v9)
      {
        v42 = v17;
        v43 = v9 - v17;
        if (v43 < 4)
        {
          goto LABEL_54;
        }

        v44 = &v13[v19];
        v45 = (result + 2 * v42);
        if (v16 + v42 < v44 && v45 < v18 + v9)
        {
          goto LABEL_54;
        }

        if (v43 >= 0x20)
        {
          v46 = v43 & 0xFFFFFFFFFFFFFFE0;
          v47 = (v16 + v42);
          v48 = v43 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v49 = vqmovn_high_s16(vqmovn_s16(v45[2]), v45[3]);
            *v47 = vqmovn_high_s16(vqmovn_s16(*v45), v45[1]);
            v47[1] = v49;
            v47 += 2;
            v45 += 4;
            v48 -= 32;
          }

          while (v48);
          if (v43 == v46)
          {
            goto LABEL_3;
          }

          if ((v43 & 0x1C) == 0)
          {
            v42 += v46;
            do
            {
LABEL_54:
              v54 = result->i16[v42];
              if (v54 <= -128)
              {
                v54 = -128;
              }

              if (v54 >= 127)
              {
                LOBYTE(v54) = 127;
              }

              *(v16 + v42++) = v54;
            }

            while (v9 != v42);
            goto LABEL_3;
          }
        }

        else
        {
          v46 = 0;
        }

        v50 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + v42;
        v51 = v46 - (v43 & 0xFFFFFFFFFFFFFFFCLL);
        v52 = v46 + v42;
        v53 = 2 * v52;
        do
        {
          *(v16 + v52) = vuzp1_s8(vmin_s16(vmax_s16(*&result->i8[v53], 0x7F007F007F007FLL), 0x7F007F007F007FLL), 0x7F007F007F007FLL).u32[0];
          v53 += 8;
          v52 += 4;
          v51 += 4;
        }

        while (v51);
        v42 = v50;
        if (v43 != (v43 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_54;
        }
      }

LABEL_3:
      result = (result + v15);
      v16 += a6;
      ++v8;
      v14 = (v14 + v15);
      --v7;
    }

    while (v7);
  }

  return result;
}

int32x4_t *sub_100203F40(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = 0;
    v9 = *a7;
    v10 = v9 - 4;
    v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = result + 1;
    v13 = &result->i8[4 * v9];
    v14 = result + 2;
    v15 = 4 * (a2 >> 2);
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    v17.i64[0] = 0x7F0000007FLL;
    v17.i64[1] = 0x7F0000007FLL;
    v18 = a5;
    do
    {
      if (v9 >= 16)
      {
        v22 = 0;
        v23 = v14;
        do
        {
          v24 = v23[-2];
          v25 = v23[-1];
          v26 = *v23;
          v27 = v23[1];
          v23 += 4;
          *(v18 + v22) = vqmovn_high_s16(vqmovn_s16(vqmovn_high_s32(vqmovn_s32(v24), v25)), vqmovn_high_s32(vqmovn_s32(v26), v27));
          v22 += 16;
        }

        while (v22 <= (v9 - 16));
        LODWORD(v19) = v22;
        v20 = a5 + v8 * a6;
        v21 = v11 * v8;
        if (v19 > v10)
        {
          goto LABEL_39;
        }
      }

      else
      {
        LODWORD(v19) = 0;
        v20 = a5 + v8 * a6;
        v21 = v11 * v8;
        if (v10 < 0)
        {
          goto LABEL_39;
        }
      }

      v28 = v19;
      v29 = v10 - v19;
      if (v29 > 0x3B && ((v30 = v29 >> 2, v31 = v20 + 4 + (v29 & 0xFFFFFFFFFFFFFFFCLL) + v28, v32 = 4 * v28, v18 + v28 < &v12[v30] + 4 * v28 + v21) ? (v33 = result + 4 * v28 >= v31) : (v33 = 1), v33))
      {
        v34 = v30 + 1;
        v35 = (v30 + 1) & 0x7FFFFFFFFFFFFFF0;
        v19 = v28 + 4 * v35;
        v36 = v35;
        do
        {
          v37 = (v18 + v28);
          v38 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[4] + v32), v16), v17), vminq_s32(vmaxq_s32(*(&result[5] + v32), v16), v17)), vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[6] + v32), v16), v17), vminq_s32(vmaxq_s32(*(&result[7] + v32), v16), v17)));
          v39 = vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[2] + v32), v16), v17), vminq_s32(vmaxq_s32(*(&result[3] + v32), v16), v17));
          v40 = vuzp1q_s16(vminq_s32(vmaxq_s32(*(result + v32), v16), v17), vminq_s32(vmaxq_s32(*(&result[1] + v32), v16), v17));
          v41 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[12] + v32), v16), v17), vminq_s32(vmaxq_s32(*(&result[13] + v32), v16), v17)), vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[14] + v32), v16), v17), vminq_s32(vmaxq_s32(*(&result[15] + v32), v16), v17)));
          v37[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[8] + v32), v16), v17), vminq_s32(vmaxq_s32(*(&result[9] + v32), v16), v17)), vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[10] + v32), v16), v17), vminq_s32(vmaxq_s32(*(&result[11] + v32), v16), v17)));
          v37[3] = v41;
          *v37 = vuzp1q_s8(v40, v39);
          v37[1] = v38;
          v28 += 64;
          v32 += 256;
          v36 -= 16;
        }

        while (v36);
        if (v34 == v35)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v19 = v28;
      }

      v42 = 4 * v19 + 12;
      do
      {
        v43 = *(&result->i32[-3] + v42);
        if (v43 <= -128)
        {
          v43 = -128;
        }

        if (v43 >= 127)
        {
          LOBYTE(v43) = 127;
        }

        v44 = &result->i8[4 * v19];
        v45 = *(v44 + 1);
        if (v45 <= -128)
        {
          v45 = -128;
        }

        if (v45 >= 127)
        {
          LOBYTE(v45) = 127;
        }

        v46 = (v18 + v19);
        *v46 = v43;
        v46[1] = v45;
        v47 = *(v44 + 2);
        if (v47 <= -128)
        {
          v47 = -128;
        }

        if (v47 >= 127)
        {
          LOBYTE(v47) = 127;
        }

        v48 = *(result->i32 + v42);
        if (v48 <= -128)
        {
          v48 = -128;
        }

        if (v48 >= 127)
        {
          LOBYTE(v48) = 127;
        }

        v46[2] = v47;
        v46[3] = v48;
        v19 += 4;
        v42 += 16;
      }

      while (v19 <= v10);
LABEL_39:
      if (v19 < v9)
      {
        v49 = v19;
        v50 = v9 - v19;
        if (v50 < 4)
        {
          goto LABEL_54;
        }

        v51 = &v13[v21];
        v52 = (result + 4 * v49);
        if (v18 + v49 < v51 && v52 < v20 + v9)
        {
          goto LABEL_54;
        }

        if (v50 >= 0x20)
        {
          v53 = v50 & 0xFFFFFFFFFFFFFFE0;
          v54 = (v18 + v49);
          v55 = v50 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v62.val[3] = vminq_s32(vmaxq_s32(v52[3], v16), v17);
            v62.val[2] = vminq_s32(vmaxq_s32(v52[2], v16), v17);
            v62.val[1] = vminq_s32(vmaxq_s32(v52[1], v16), v17);
            v62.val[0] = vminq_s32(vmaxq_s32(*v52, v16), v17);
            v61.val[3] = vminq_s32(vmaxq_s32(v52[7], v16), v17);
            v61.val[2] = vminq_s32(vmaxq_s32(v52[6], v16), v17);
            v61.val[1] = vminq_s32(vmaxq_s32(v52[5], v16), v17);
            v61.val[0] = vminq_s32(vmaxq_s32(v52[4], v16), v17);
            *v54 = vqtbl4q_s8(v62, xmmword_1003E36F0);
            v54[1] = vqtbl4q_s8(v61, xmmword_1003E36F0);
            v54 += 2;
            v52 += 8;
            v55 -= 32;
          }

          while (v55);
          if (v50 == v53)
          {
            goto LABEL_3;
          }

          if ((v50 & 0x1C) == 0)
          {
            v49 += v53;
            do
            {
LABEL_54:
              v60 = result->i32[v49];
              if (v60 <= -128)
              {
                v60 = -128;
              }

              if (v60 >= 127)
              {
                LOBYTE(v60) = 127;
              }

              *(v18 + v49++) = v60;
            }

            while (v9 != v49);
            goto LABEL_3;
          }
        }

        else
        {
          v53 = 0;
        }

        v56 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + v49;
        v57 = v53 - (v50 & 0xFFFFFFFFFFFFFFFCLL);
        v58 = v53 + v49;
        v59 = 4 * v58;
        do
        {
          *(v18 + v58) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(*(result + v59), v16), v17)), *v16.i8).u32[0];
          v59 += 16;
          v58 += 4;
          v57 += 4;
        }

        while (v57);
        v49 = v56;
        if (v50 != (v50 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_54;
        }
      }

LABEL_3:
      result = (result + v15);
      v18 += a6;
      ++v8;
      v14 = (v14 + v15);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_10020435C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = result;
    v9 = 0;
    v10 = *a7;
    v11 = v10 - 4;
    v51 = result + 4 * v10;
    v52 = result + 16;
    v53 = 4 * (a2 >> 2);
    v54 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = a5;
    do
    {
      v13 = a6;
      v56 = a5 + v9 * a6;
      v14 = v54 * v9;
      result = sub_1002105B4(&v57, v8, v12, v10);
      v15.i64[0] = 0x7F0000007FLL;
      v15.i64[1] = 0x7F0000007FLL;
      v16.i64[0] = 0x7F0000007FLL;
      v16.i64[1] = 0x7F0000007FLL;
      if (result > v11)
      {
        goto LABEL_35;
      }

      v17 = result;
      v18 = v11 - result;
      if (v18 > 0x3B && ((v19 = v18 >> 2, v20 = v56 + 4 + (v18 & 0xFFFFFFFFFFFFFFFCLL) + result, v21 = 4 * result, v12 + result < v52 + v14 + 16 * v19 + v21) ? (v22 = v8->u64 + 4 * result >= v20) : (v22 = 1), v22))
      {
        v23 = v19 + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = *(&v8[11] + v21);
          v26 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[1].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[1] + v21), *(&v8[1] + v21), 8uLL)))));
          v27 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8->f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v8 + v21), *(v8 + v21), 8uLL)))));
          v28 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[4].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[4] + v21), *(&v8[4] + v21), 8uLL))))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[5].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[5] + v21), *(&v8[5] + v21), 8uLL))))), v16), v15)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[6].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[6] + v21), *(&v8[6] + v21), 8uLL))))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[7].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[7] + v21), *(&v8[7] + v21), 8uLL))))), v16), v15)));
          v29 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[2].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[2] + v21), *(&v8[2] + v21), 8uLL))))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[3].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[3] + v21), *(&v8[3] + v21), 8uLL))))), v16), v15));
          v30 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[12].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[12] + v21), *(&v8[12] + v21), 8uLL))))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[13].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[13] + v21), *(&v8[13] + v21), 8uLL))))), v16), v15)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[14].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[14] + v21), *(&v8[14] + v21), 8uLL))))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[15].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[15] + v21), *(&v8[15] + v21), 8uLL))))), v16), v15)));
          v31 = (v12 + v17);
          v31[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[8].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[8] + v21), *(&v8[8] + v21), 8uLL))))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[9].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[9] + v21), *(&v8[9] + v21), 8uLL))))), v16), v15)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[10].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[10] + v21), *(&v8[10] + v21), 8uLL))))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v25.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v25, v25, 8uLL))))), v16), v15)));
          v31[3] = v30;
          *v31 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(v27, v16), v15), vminq_s32(vmaxq_s32(v26, v16), v15)), v29);
          v31[1] = v28;
          v17 += 64;
          v21 += 256;
          v24 -= 16;
        }

        while (v24);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v32 = 4 * result + 12;
      do
      {
        v33 = rintf(*(&v8->f32[-3] + v32));
        if (v33 <= -128)
        {
          LODWORD(v33) = -128;
        }

        v34 = &v8->f32[result];
        v35 = rintf(v34[1]);
        if (v33 >= 127)
        {
          LOBYTE(v33) = 127;
        }

        if (v35 <= -128)
        {
          LODWORD(v35) = -128;
        }

        v36 = (v12 + result);
        if (v35 >= 127)
        {
          LOBYTE(v35) = 127;
        }

        *v36 = v33;
        v36[1] = v35;
        v37 = rintf(v34[2]);
        if (v37 <= -128)
        {
          LODWORD(v37) = -128;
        }

        if (v37 >= 127)
        {
          v38 = 127;
        }

        else
        {
          v38 = v37;
        }

        v39 = rintf(*(v8->f32 + v32));
        if (v39 <= -128)
        {
          LODWORD(v39) = -128;
        }

        if (v39 >= 127)
        {
          LOBYTE(v39) = 127;
        }

        v36[2] = v38;
        v36[3] = v39;
        result += 4;
        v32 += 16;
      }

      while (result <= v11);
LABEL_35:
      a6 = v13;
      if (result < v10)
      {
        v40 = v10 - result;
        if (v40 < 4)
        {
          v41 = result;
          goto LABEL_52;
        }

        if (v12 + result < v51 + v14 && v8->u64 + 4 * result < v56 + v10)
        {
          v41 = result;
          goto LABEL_52;
        }

        if (v40 >= 0x10)
        {
          v42 = v40 & 0xFFFFFFFFFFFFFFF0;
          v43 = 4 * result;
          v44 = result;
          v45 = v40 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v58.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[3].f32[v43 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[3] + v43), *(&v8[3] + v43), 8uLL))))), v16), v15);
            v58.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[2].f32[v43 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[2] + v43), *(&v8[2] + v43), 8uLL))))), v16), v15);
            v58.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8[1].f32[v43 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v8[1] + v43), *(&v8[1] + v43), 8uLL))))), v16), v15);
            v58.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8->f32[v43 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v8 + v43), *(v8 + v43), 8uLL))))), v16), v15);
            *(v12 + v44) = vqtbl4q_s8(v58, xmmword_1003E36F0);
            v43 += 64;
            v44 += 16;
            v45 -= 16;
          }

          while (v45);
          if (v40 == v42)
          {
            goto LABEL_3;
          }

          if ((v40 & 0xC) == 0)
          {
            v41 = v42 + result;
            do
            {
LABEL_52:
              v50 = rintf(v8->f32[v41]);
              if (v50 <= -128)
              {
                LODWORD(v50) = -128;
              }

              if (v50 >= 127)
              {
                LOBYTE(v50) = 127;
              }

              *(v12 + v41++) = v50;
            }

            while (v10 != v41);
            goto LABEL_3;
          }
        }

        else
        {
          v42 = 0;
        }

        v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v46 = v42 - (v40 & 0xFFFFFFFFFFFFFFFCLL);
        v47 = v42 + result;
        v48 = v47;
        do
        {
          v49 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v8->f32[v48]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v8 + v48 * 4), *(v8 + v48 * 4), 8uLL))))), v16), v15));
          *(v12 + v47) = vuzp1_s8(v49, v49).u32[0];
          v48 += 4;
          v47 += 4;
          v46 += 4;
        }

        while (v46);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v8 = (v8 + v53);
      v12 += v13;
      ++v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_100204A38(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = result;
    v9 = 0;
    v10 = *a7;
    v11 = v10 - 4;
    v50 = result + 8 * v10;
    v51 = result + 32;
    v52 = 8 * (a2 >> 3);
    v53 = a2 & 0xFFFFFFFFFFFFFFF8;
    v12 = a5;
    do
    {
      v13 = a6;
      v55 = a5 + v9 * a6;
      v14 = v53 * v9;
      result = sub_1002109C4(&v56, v8, v12, v10);
      v15.i64[0] = 0x7F0000007FLL;
      v15.i64[1] = 0x7F0000007FLL;
      v16.i64[0] = 0x7F0000007FLL;
      v16.i64[1] = 0x7F0000007FLL;
      if (result > v11)
      {
        goto LABEL_35;
      }

      v17 = result;
      v18 = v11 - result;
      if (v18 > 0x3B && ((v19 = v18 >> 2, v20 = v55 + 4 + (v18 & 0xFFFFFFFFFFFFFFFCLL) + result, v21 = 8 * result, v12 + result < v51 + v14 + 32 * v19 + v21) ? (v22 = &v8->f64[result] >= v20) : (v22 = 1), v22))
      {
        v23 = v19 + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 160))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 176))));
          v26 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 128))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 144))));
          v27 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 16)))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 32))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 48)))), v16), v15)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 64))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 80)))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 96))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 112)))), v16), v15)));
          v28 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 192))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 208)))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 224))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 240)))), v16), v15));
          v29 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 384))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 400)))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 416))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 432)))), v16), v15)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 448))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 464)))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 480))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 496)))), v16), v15)));
          v30 = (v12 + v17);
          v30[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 256))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 272)))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 288))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 304)))), v16), v15)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 320))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 336)))), v16), v15), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 352))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v21 + 368)))), v16), v15)));
          v30[3] = v29;
          *v30 = v27;
          v30[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(v26, v16), v15), vminq_s32(vmaxq_s32(v25, v16), v15)), v28);
          v17 += 64;
          v21 += 512;
          v24 -= 16;
        }

        while (v24);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v31 = 8 * result + 24;
      do
      {
        v32 = rint(*(&v8[-1] + v31 - 8));
        if (v32 <= -128)
        {
          LODWORD(v32) = -128;
        }

        v33 = &v8->f64[result];
        v34 = rint(v33[1]);
        if (v32 >= 127)
        {
          LOBYTE(v32) = 127;
        }

        if (v34 <= -128)
        {
          LODWORD(v34) = -128;
        }

        v35 = (v12 + result);
        if (v34 >= 127)
        {
          LOBYTE(v34) = 127;
        }

        *v35 = v32;
        v35[1] = v34;
        v36 = rint(v33[2]);
        if (v36 <= -128)
        {
          LODWORD(v36) = -128;
        }

        if (v36 >= 127)
        {
          v37 = 127;
        }

        else
        {
          v37 = v36;
        }

        v38 = rint(*(v8->f64 + v31));
        if (v38 <= -128)
        {
          LODWORD(v38) = -128;
        }

        if (v38 >= 127)
        {
          LOBYTE(v38) = 127;
        }

        v35[2] = v37;
        v35[3] = v38;
        result += 4;
        v31 += 32;
      }

      while (result <= v11);
LABEL_35:
      a6 = v13;
      if (result < v10)
      {
        v39 = v10 - result;
        if (v39 < 4)
        {
          v40 = result;
          goto LABEL_52;
        }

        if (v12 + result < v50 + v14 && &v8->f64[result] < v55 + v10)
        {
          v40 = result;
          goto LABEL_52;
        }

        if (v39 >= 0x10)
        {
          v41 = v39 & 0xFFFFFFFFFFFFFFF0;
          v42 = 8 * result;
          v43 = result;
          v44 = v39 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v57.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v42 + 96))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v42 + 112)))), v16), v15);
            v57.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v42 + 64))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v42 + 80)))), v16), v15);
            v57.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v42 + 32))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v42 + 48)))), v16), v15);
            v57.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v42))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v42 + 16)))), v16), v15);
            *(v12 + v43) = vqtbl4q_s8(v57, xmmword_1003E36F0);
            v42 += 128;
            v43 += 16;
            v44 -= 16;
          }

          while (v44);
          if (v39 == v41)
          {
            goto LABEL_3;
          }

          if ((v39 & 0xC) == 0)
          {
            v40 = v41 + result;
            do
            {
LABEL_52:
              v49 = rint(v8->f64[v40]);
              if (v49 <= -128)
              {
                LODWORD(v49) = -128;
              }

              if (v49 >= 127)
              {
                LOBYTE(v49) = 127;
              }

              *(v12 + v40++) = v49;
            }

            while (v10 != v40);
            goto LABEL_3;
          }
        }

        else
        {
          v41 = 0;
        }

        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v45 = v41 - (v39 & 0xFFFFFFFFFFFFFFFCLL);
        v46 = v41 + result;
        v47 = 8 * v46;
        do
        {
          v48 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v8 + v47))), vcvtq_s64_f64(vrndxq_f64(*(v8 + v47 + 16)))), v16), v15));
          *(v12 + v46) = vuzp1_s8(v48, v48).u32[0];
          v47 += 32;
          v46 += 4;
          v45 += 4;
        }

        while (v45);
        if (v39 != (v39 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v8 = (v8 + v52);
      v12 += v13;
      ++v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint8x16_t *sub_100205044(uint8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint8x16_t *a5, unint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a6 >> 1;
  v10 = v7 - 1;
  if (v8 >= 8)
  {
    v13 = 0;
    v14 = (v8 - 8);
    v15 = (v8 - 4);
    v16 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v17 = (v14 & 0xFFFFFFF8) + 8;
    v18 = v17 | 4;
    if ((v17 | 4uLL) <= v15 + 1)
    {
      v18 = v15 + 1;
    }

    v19 = ~v17 + v18;
    v20 = &a5->i64[(v19 >> 2) + 1];
    v21 = &result->i8[(v19 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v22 = &a5->i8[2 * v8];
    v23 = &result->i8[v8];
    v108 = (v19 >> 2) + 1;
    v24 = 2 * v9;
    v25 = &a5->i8[6];
    v26 = &a5[2];
    v27 = result + 1;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v30 = v10;
      v31 = 8;
      v32 = a5;
      do
      {
        v33 = v31;
        *v32++ = vmovl_u8(*&result->i8[v29]);
        v29 += 8;
        v28 += 0x800000000;
        v31 += 8;
      }

      while (v29 <= v14);
      if (v15 >= v29)
      {
        v34 = v28 >> 32;
        if (v19 <= 0x3B || &a5->i8[v28 >> 31] < &v21[v13 * a2 + v34] && &result->i8[v34] < v20 + v16 * v13 + (v28 >> 31))
        {
          goto LABEL_24;
        }

        v34 += 4 * (v108 & 0x7FFFFFFFFFFFFFF0);
        v35 = v33;
        v36 = 2 * v33;
        v37 = v108 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v39 = *(&result[2] + v35);
          v38 = *(&result[3] + v35);
          v41 = *(result + v35);
          v40 = *(&result[1] + v35);
          v42 = &a5->i8[v36];
          v42[6] = vmovl_u8(*v38.i8);
          v42[7] = vmovl_high_u8(v38);
          v42[4] = vmovl_u8(*v39.i8);
          v42[5] = vmovl_high_u8(v39);
          v42[2] = vmovl_u8(*v40.i8);
          v42[3] = vmovl_high_u8(v40);
          *v42 = vmovl_u8(*v41.i8);
          v42[1] = vmovl_high_u8(v41);
          v36 += 128;
          v35 += 64;
          v37 -= 16;
        }

        while (v37);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_24:
          v43 = &v25[2 * v34];
          do
          {
            v44 = result->u8[v34 + 1];
            *(v43 - 3) = result->u8[v34];
            v45 = &a5->i8[2 * v34];
            *(v45 + 1) = v44;
            v46 = result->u8[v34 + 3];
            *(v45 + 2) = result->u8[v34 + 2];
            *v43 = v46;
            v43 += 8;
            v34 += 4;
          }

          while (v34 <= v15);
        }
      }

      else
      {
        LODWORD(v34) = v29;
      }

      if (v34 >= v8)
      {
        goto LABEL_13;
      }

      v47 = v34;
      v48 = v8 - v34;
      if (v48 >= 8 && (a5 + 2 * v47 >= &v23[v13 * a2] || &result->i8[v47] >= &v22[v16 * v13]))
      {
        if (v48 < 0x20)
        {
          v49 = 0;
LABEL_36:
          v56 = (v48 & 0xFFFFFFFFFFFFFFF8) + v47;
          v57 = v49 - (v48 & 0xFFFFFFFFFFFFFFF8);
          v58 = v49 + v47;
          v59 = 2 * v58;
          do
          {
            *(a5 + v59) = vmovl_u8(*&result->i8[v58]);
            v58 += 8;
            v59 += 16;
            v57 += 8;
          }

          while (v57);
          v47 = v56;
          if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_13;
          }

          goto LABEL_41;
        }

        v49 = v48 & 0xFFFFFFFFFFFFFFE0;
        v50 = (v26 + 2 * v47);
        v51 = &v27->i8[v47];
        v52 = v48 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v53 = *v51[-2].i8;
          v54 = vmovl_u8(*v51);
          v55 = vmovl_high_u8(*v51->i8);
          v50[-2] = vmovl_u8(*v53.i8);
          v50[-1] = vmovl_high_u8(v53);
          *v50 = v54;
          v50[1] = v55;
          v50 += 4;
          v51 += 4;
          v52 -= 32;
        }

        while (v52);
        if (v48 == v49)
        {
          goto LABEL_13;
        }

        if ((v48 & 0x18) != 0)
        {
          goto LABEL_36;
        }

        v47 += v49;
      }

      do
      {
LABEL_41:
        a5->i16[v47] = result->u8[v47];
        ++v47;
      }

      while (v8 != v47);
LABEL_13:
      result = (result + a2);
      a5 = (a5 + v24);
      LODWORD(v10) = v30 - 1;
      ++v13;
      v25 += v24;
      v26 = (v26 + v24);
      v27 = (v27 + a2);
      if (!v30)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    v60 = (v8 - 4);
    v61 = v60 & 0x7FFFFFFC;
    v62 = v61 + 4;
    v63 = &a5->i8[((2 * v60) & 0xFFFFFFF8) + 8];
    v64 = v9 * v10;
    if (v61 + 5 <= v8)
    {
      v65 = *a7;
    }

    else
    {
      v65 = (v60 & 0x7FFFFFFC) + 5;
    }

    v66 = &a5->i8[2 * v64 + 2 * v65];
    v67 = &result->i8[v62];
    v68 = &result->i8[v65 + v10 * a2];
    v69 = v65 - v61 - 4;
    v70 = &v63[2 * v64];
    v71 = (v60 >> 2) + 1;
    v73 = &result->i8[v62 + v10 * a2] > a5 && v70 > result;
    v74 = ((a6 | a2) & 0x8000000000000000) != 0;
    v76 = v63 < v68 && v67 < v66;
    v77 = v60 < 0x3C || v74 || v73;
    v78 = v69 < 8 || v74 || v76;
    v79 = 2 * v9;
    v80 = &a5->i8[8 * ((v60 >> 2) & 0x1FFFFFFF)];
    v81 = v80 + 40;
    v82 = (result[1].i64 + v61 + 4);
    v83 = v80 + 8;
    while (1)
    {
      v84 = v10;
      if (v77)
      {
        break;
      }

      v86 = v71 & 0x3FFFFFF0;
      v87 = result;
      v88 = a5;
      do
      {
        v90 = v87[2];
        v89 = v87[3];
        v92 = *v87;
        v91 = v87[1];
        v87 += 4;
        v88[6] = vmovl_u8(*v89.i8);
        v88[7] = vmovl_high_u8(v89);
        v88[4] = vmovl_u8(*v90.i8);
        v88[5] = vmovl_high_u8(v90);
        v88[2] = vmovl_u8(*v91.i8);
        v88[3] = vmovl_high_u8(v91);
        *v88 = vmovl_u8(*v92.i8);
        v88[1] = vmovl_high_u8(v92);
        v88 += 8;
        v86 -= 16;
      }

      while (v86);
      v85 = 4 * (v71 & 0x3FFFFFF0);
      if (v71 != (v71 & 0x3FFFFFF0))
      {
        goto LABEL_65;
      }

LABEL_67:
      if (v8 > v85)
      {
        v96 = (v60 & 0x7FFFFFFC) + 4;
        if (!v78)
        {
          if (v69 >= 0x20)
          {
            v98 = v82;
            v99 = v81;
            v100 = v69 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v101 = *v98[-2].i8;
              v102 = vmovl_u8(*v98);
              v103 = vmovl_high_u8(*v98->i8);
              v99[-2] = vmovl_u8(*v101.i8);
              v99[-1] = vmovl_high_u8(v101);
              *v99 = v102;
              v99[1] = v103;
              v99 += 4;
              v98 += 4;
              v100 -= 32;
            }

            while (v100);
            if (v69 == (v69 & 0xFFFFFFFFFFFFFFE0))
            {
              goto LABEL_59;
            }

            v97 = v69 & 0xFFFFFFFFFFFFFFE0;
            v96 = v62 + (v69 & 0xFFFFFFFFFFFFFFE0);
            if ((v69 & 0x18) != 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v97 = 0;
LABEL_75:
            v104 = v97 - (v69 & 0xFFFFFFFFFFFFFFF8);
            v105 = &v67[v97];
            v106 = &v83[2 * v97];
            do
            {
              v107 = *v105++;
              *v106++ = vmovl_u8(v107);
              v104 += 8;
            }

            while (v104);
            v96 = v62 + (v69 & 0xFFFFFFFFFFFFFFF8);
            if (v69 == (v69 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_59;
            }
          }
        }

        do
        {
          a5->i16[v96] = result->u8[v96];
          ++v96;
        }

        while (v96 < v8);
      }

LABEL_59:
      result = (result + a2);
      LODWORD(v10) = v84 - 1;
      a5 = (a5 + v79);
      v81 += v79;
      v82 = (v82 + a2);
      v67 += a2;
      v83 += v79;
      if (!v84)
      {
        return result;
      }
    }

    v85 = 0;
LABEL_65:
    v93 = &a5->i16[v85];
    do
    {
      v94 = result->u8[v85 + 1];
      *v93 = result->u8[v85];
      v93[1] = v94;
      v95 = result->u8[v85 + 3];
      v93[2] = result->u8[v85 + 2];
      v93[3] = v95;
      v85 += 4;
      v93 += 4;
    }

    while (v85 <= v60);
    goto LABEL_67;
  }

  if (v8 >= 1)
  {
    v11 = &result->u8[2];
    v12 = &a5->i16[2];
    do
    {
      *(v12 - 2) = *(v11 - 2);
      if (v8 != 1)
      {
        *(v12 - 1) = *(v11 - 1);
        if (v8 != 2)
        {
          *v12 = *v11;
        }
      }

      v11 += a2;
      v12 += v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

int8x16_t *sub_100205604(int8x16_t *result, uint64_t a2, double a3, uint16x8_t a4, uint64_t a5, uint64_t a6, int16x8_t *a7, unint64_t a8, int *a9)
{
  v9 = a9[1];
  if (!v9)
  {
    return result;
  }

  v10 = a7;
  v11 = *a9;
  v12 = a8 >> 1;
  v13 = v11 - 4;
  v14 = (v11 - 8);
  if (v11 >= 8)
  {
    v17 = 0;
    v18 = a8 & 0xFFFFFFFFFFFFFFFELL;
    v19 = (v14 & 0xFFFFFFF8) + 8;
    v20 = v19 | 4;
    if ((v19 | 4) <= v13 + 1)
    {
      v20 = v13 + 1;
    }

    v21 = ~v19 + v20;
    v22 = &a7->i64[(v21 >> 2) + 1];
    v23 = &result->i8[(v21 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v24 = &a7->i8[2 * v11];
    v25 = &result->i8[v11];
    v104 = (v21 >> 2) + 1;
    v26 = 2 * v12;
    v27 = &a7->i8[6];
    v28 = a7 + 2;
    v29 = result + 1;
    while (1)
    {
      v30 = 0;
      v31 = 0;
      v32 = 8;
      v33 = v10;
      do
      {
        v34 = v32;
        v35 = vmovl_s8(*&result->i8[v31]);
        v36 = vmovl_s16(*v35.i8);
        v37 = vmovl_high_s16(v35);
        *v33++ = vqmovun_high_s32(vqmovun_s32(v36), v37);
        v31 += 8;
        v30 += 0x800000000;
        v32 += 8;
      }

      while (v31 <= v14);
      if (v13 >= v31)
      {
        v31 = v30 >> 32;
        if (v21 <= 0x3B || &v10->i8[v30 >> 31] < &v23[v17 * a2 + v31] && &result->i8[v31] < v22 + v18 * v17 + (v30 >> 31))
        {
          goto LABEL_23;
        }

        v31 += 4 * (v104 & 0x7FFFFFFFFFFFFFF0);
        v38 = v34;
        v39 = 2 * v34;
        v40 = v104 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v41 = &v10->i8[v39];
          v42 = vmaxq_s8(*(&result[3] + v38), 0);
          v43 = vmaxq_s8(*(&result[2] + v38), 0);
          v44 = vmaxq_s8(*(&result[1] + v38), 0);
          v45 = vmaxq_s8(*(result + v38), 0);
          v46 = vmovl_u8(*v45.i8);
          v41[6] = vmovl_u8(*v42.i8);
          v41[7] = vmovl_high_u8(v42);
          v37 = vmovl_high_u8(v45);
          v41[4] = vmovl_u8(*v43.i8);
          v41[5] = vmovl_high_u8(v43);
          v41[2] = vmovl_u8(*v44.i8);
          v41[3] = vmovl_high_u8(v44);
          *v41 = v46;
          v41[1] = v37;
          v39 += 128;
          v38 += 64;
          v40 -= 16;
        }

        while (v40);
        if (v104 != (v104 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_23:
          v47 = &v27[2 * v31];
          do
          {
            v48 = result->i8[v31 + 1] & ~(result->i8[v31 + 1] >> 31);
            *(v47 - 3) = result->i8[v31] & ~(result->i8[v31] >> 31);
            v49 = &v10->i8[2 * v31];
            *(v49 + 1) = v48;
            v50 = result->i8[v31 + 3] & ~(result->i8[v31 + 3] >> 31);
            *(v49 + 2) = result->i8[v31 + 2] & ~(result->i8[v31 + 2] >> 31);
            *v47 = v50;
            v47 += 8;
            v31 += 4;
          }

          while (v31 <= v13);
        }
      }

      if (v31 >= v11)
      {
        goto LABEL_13;
      }

      v51 = v31;
      v52 = v11 - v31;
      if (v52 >= 4 && (v10 + 2 * v51 >= &v25[v17 * a2] || &result->i8[v51] >= &v24[v18 * v17]))
      {
        if (v52 < 0x20)
        {
          v53 = 0;
LABEL_35:
          v60 = (v52 & 0xFFFFFFFFFFFFFFFCLL) + v51;
          v61 = v53 - (v52 & 0xFFFFFFFFFFFFFFFCLL);
          v62 = v53 + v51;
          v63 = 2 * v62;
          do
          {
            v37.i32[0] = *(result->i32 + v62);
            v37.i64[0] = *&vmax_s16(*&vmovl_s8(*v37.i8), 0) & 0x80FF80FF80FF80FFLL;
            *(v10->i64 + v63) = v37.i64[0];
            v62 += 4;
            v63 += 8;
            v61 += 4;
          }

          while (v61);
          v51 = v60;
          if (v52 == (v52 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }

          goto LABEL_40;
        }

        v53 = v52 & 0xFFFFFFFFFFFFFFE0;
        v54 = (v28 + 2 * v51);
        v55 = (v29 + v51);
        v56 = v52 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v57 = vmaxq_s8(v55[-1], 0);
          v58 = vmaxq_s8(*v55, 0);
          v59 = vmovl_u8(*v57.i8);
          v37 = vmovl_high_u8(v57);
          v54[-2] = v59;
          v54[-1] = v37;
          *v54 = vmovl_u8(*v58.i8);
          v54[1] = vmovl_high_u8(v58);
          v54 += 4;
          v55 += 2;
          v56 -= 32;
        }

        while (v56);
        if (v52 == v53)
        {
          goto LABEL_13;
        }

        if ((v52 & 0x1C) != 0)
        {
          goto LABEL_35;
        }

        v51 += v53;
      }

      do
      {
LABEL_40:
        v10->i16[v51] = result->i8[v51] & ~(result->i8[v51] >> 31);
        ++v51;
      }

      while (v11 != v51);
LABEL_13:
      result = (result + a2);
      v10 = (v10 + v26);
      ++v17;
      v27 += v26;
      v28 = (v28 + v26);
      v29 = (v29 + a2);
      if (!--v9)
      {
        return result;
      }
    }
  }

  if (v11 >= 4)
  {
    v64 = 0;
    if (v13 <= 3)
    {
      v65 = 3;
    }

    else
    {
      v65 = v11 - 4;
    }

    v66 = ((v65 << 32) & 0x7FFFFFFC00000000) + 0x400000000;
    v67 = v11 - (v66 >> 32);
    v68 = (v9 - 1);
    v69 = &a7->i8[2 * v12 * v68 + 8 + ((2 * v65) & 0xFFFFFFF8)];
    v70 = &result->i8[v68 * a2 + 4 + (v65 & 0x7FFFFFFC)];
    v71 = (v65 >> 2) + 1;
    v72 = &result->i8[v67];
    v74 = v70 > v10 && v69 > result;
    v75 = v67 & 0xFFFFFFFFFFFFFFE0;
    v76 = v13 < 60 || ((a8 | a2) & 0x8000000000000000) != 0 || v74;
    v77 = &v10->i8[6];
    v78 = 2 * v12;
    v79 = v10 + 2;
    v80 = result + 1;
    v81 = v10;
    while (1)
    {
      if (v76)
      {
        v82 = 0;
      }

      else
      {
        v83 = vmaxq_s8(result[3], 0);
        v84 = vmaxq_s8(result[2], 0);
        v85 = vmaxq_s8(result[1], 0);
        v86 = vmaxq_s8(*result, 0);
        v87 = vmovl_u8(*v86.i8);
        v81[6] = vmovl_u8(*v83.i8);
        v81[7] = vmovl_high_u8(v83);
        a4 = vmovl_high_u8(v86);
        v81[4] = vmovl_u8(*v84.i8);
        v81[5] = vmovl_high_u8(v84);
        v81[2] = vmovl_u8(*v85.i8);
        v81[3] = vmovl_high_u8(v85);
        *v81 = v87;
        v81[1] = a4;
        v82 = 4 * (v71 & 0x3FFFFFF0);
        if (v71 == (v71 & 0x3FFFFFF0))
        {
          goto LABEL_58;
        }
      }

      v88 = &v77[2 * v82];
      do
      {
        v89 = result->i8[v82 + 1] & ~(result->i8[v82 + 1] >> 31);
        *(v88 - 3) = result->i8[v82] & ~(result->i8[v82] >> 31);
        v90 = &v81->i8[2 * v82];
        *(v90 + 1) = v89;
        v91 = result->i8[v82 + 3] & ~(result->i8[v82 + 3] >> 31);
        *(v90 + 2) = result->i8[v82 + 2] & ~(result->i8[v82 + 2] >> 31);
        *v88 = v91;
        v88 += 8;
        v82 += 4;
      }

      while (v82 <= v13);
LABEL_58:
      if (v11 > v82)
      {
        v92 = v82;
        if (v67 >= 4 && (v81 + 2 * v82 >= &v72[v64 * a2 + v82] || &result->i8[v82] >= v10 + 2 * v82 + 2 * v11 + (a8 & 0xFFFFFFFFFFFFFFFELL) * v64 - (v66 >> 31)))
        {
          if (v67 >= 0x20)
          {
            v94 = (v79 + 2 * v82);
            v95 = (v80 + v92);
            v96 = v67 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v97 = vmaxq_s8(v95[-1], 0);
              v98 = vmaxq_s8(*v95, 0);
              v99 = vmovl_u8(*v97.i8);
              a4 = vmovl_high_u8(v97);
              v94[-2] = v99;
              v94[-1] = a4;
              *v94 = vmovl_u8(*v98.i8);
              v94[1] = vmovl_high_u8(v98);
              v94 += 4;
              v95 += 2;
              v96 -= 32;
            }

            while (v96);
            if (v67 == v75)
            {
              goto LABEL_52;
            }

            v93 = v67 & 0xFFFFFFFFFFFFFFE0;
            if (((v11 - BYTE4(v66)) & 0x1C) != 0)
            {
              goto LABEL_68;
            }

            v92 += v75;
          }

          else
          {
            v93 = 0;
LABEL_68:
            v100 = v92 + v67 - (v11 & 3);
            v101 = ((v66 >> 32) & 0xFFFFFFFFFFFFFFFCLL | v11 & 3) - v11 + v93;
            v102 = v93 + v92;
            v103 = 2 * v102;
            do
            {
              a4.i32[0] = *(result->i32 + v102);
              a4.i64[0] = *&vmax_s16(*&vmovl_s8(*a4.i8), 0) & 0x80FF80FF80FF80FFLL;
              *(v81->i64 + v103) = a4.i64[0];
              v102 += 4;
              v103 += 8;
              v101 += 4;
            }

            while (v101);
            v92 = v100;
            if ((v11 & 3) == 0)
            {
              goto LABEL_52;
            }
          }
        }

        do
        {
          v81->i16[v92] = result->i8[v92] & ~(result->i8[v92] >> 31);
          ++v92;
        }

        while (v11 != v92);
      }

LABEL_52:
      result = (result + a2);
      v81 = (v81 + v78);
      ++v64;
      v77 += v78;
      v79 = (v79 + v78);
      v80 = (v80 + a2);
      if (!--v9)
      {
        return result;
      }
    }
  }

  if (v11 >= 1)
  {
    v15 = &result->i8[2];
    v16 = &a7->i16[2];
    do
    {
      *(v16 - 2) = *(v15 - 2) & ~(*(v15 - 2) >> 31);
      if (v11 != 1)
      {
        *(v16 - 1) = *(v15 - 1) & ~(*(v15 - 1) >> 31);
        if (v11 != 2)
        {
          *v16 = *v15 & ~(*v15 >> 31);
        }
      }

      v15 += a2;
      v16 += v12;
      --v9;
    }

    while (v9);
  }

  return result;
}

char *sub_100205C68(char *__src, unint64_t a2, int a3, int a4, char *__dst, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = __src;
    v10 = 2 * *a7;
    v11 = 2 * (a2 >> 1);
    v12 = 2 * (a6 >> 1);
    do
    {
      --v7;
      __src = memcpy(__dst, v9, v10);
      v9 += v11;
      __dst += v12;
    }

    while (v7);
  }

  return __src;
}

unint64_t sub_100205CDC(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a2 >> 1;
  v10 = a6 >> 1;
  v11 = v7 - 1;
  if (v8 >= 8)
  {
    v14 = 0;
    v15 = (v8 - 8);
    v16 = (v8 - 4);
    v17 = a5 - result;
    v18 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v19 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v20 = (v15 & 0xFFFFFFF8) + 8;
    v21 = v20 | 4;
    if ((v20 | 4uLL) <= v16 + 1)
    {
      v21 = v16 + 1;
    }

    v22 = ~v20 + v21;
    v23 = ((2 * v22) & 0xFFFFFFFFFFFFFFF8) + 8;
    v24 = (v22 >> 2) + 1;
    v25 = a5 + v23;
    v26 = result + v23;
    v27 = 2 * v10;
    v28 = 2 * v9;
    while (1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = v11;
      v33 = 8;
      do
      {
        *(a5 + v29) = vqmovun_high_s32(vqmovun_s32(vmovl_s16(*(result + v29))), vmovl_high_s16(*(result + v29)));
        v34 = v33;
        v31 += 8;
        v30 += 0x800000000;
        v29 += 16;
        v33 += 8;
      }

      while (v31 <= v15);
      if (v16 >= v31)
      {
        v35 = v30 >> 32;
        if (v22 <= 0x1B || a5 < v26 + v18 * v14 && result < v25 + (a6 & 0xFFFFFFFFFFFFFFFELL) * v14)
        {
          goto LABEL_23;
        }

        v35 += 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v36 = 2 * v34;
        v37 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v38 = (a5 + v36);
          v39 = vmaxq_s16(*(result + v36 + 16), 0);
          v40 = vmaxq_s16(*(result + v36), 0);
          v41 = vmaxq_s16(*(result + v36 + 48), 0);
          v38[2] = vmaxq_s16(*(result + v36 + 32), 0);
          v38[3] = v41;
          *v38 = v40;
          v38[1] = v39;
          v36 += 64;
          v37 -= 8;
        }

        while (v37);
        LODWORD(v31) = v35;
        if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_23:
          v42 = 2 * v35;
          v43 = result;
          v44 = a5;
          v31 = v35;
          do
          {
            v45 = *(v43 + v42 + 2) & ~(*(v43 + v42 + 2) >> 15);
            *(v44 + 2 * v35) = *(v43 + 2 * v35) & ~(*(v43 + 2 * v35) >> 15);
            v46 = (v44 + v42);
            v46[1] = v45;
            v47 = *(v43 + v42 + 6) & ~(*(v43 + v42 + 6) >> 31);
            v46[2] = *(v43 + v42 + 4) & ~(*(v43 + v42 + 4) >> 15);
            v46[3] = v47;
            v31 += 4;
            v44 += 8;
            v43 += 8;
          }

          while (v31 <= v16);
        }
      }

      if (v31 >= v8)
      {
        goto LABEL_13;
      }

      v48 = v31;
      v49 = v8 - v31;
      if (v49 >= 4 && v17 + v19 * v14 >= 0x20)
      {
        if (v49 < 0x10)
        {
          v50 = 0;
LABEL_34:
          v55 = v50 - (v49 & 0xFFFFFFFFFFFFFFFCLL);
          v56 = 2 * (v50 + v48);
          do
          {
            *(a5 + v56) = vmax_s16(*(result + v56), 0);
            v56 += 8;
            v55 += 4;
          }

          while (v55);
          v48 += v49 & 0xFFFFFFFFFFFFFFFCLL;
          if (v49 == (v49 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }

          goto LABEL_39;
        }

        v50 = v49 & 0xFFFFFFFFFFFFFFF0;
        v51 = 2 * v31;
        v52 = v49 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v53 = vmaxq_s16(*(result + v51 + 16), 0);
          v54 = (a5 + v51);
          *v54 = vmaxq_s16(*(result + v51), 0);
          v54[1] = v53;
          v51 += 32;
          v52 -= 16;
        }

        while (v52);
        if (v49 == v50)
        {
          goto LABEL_13;
        }

        if ((v49 & 0xC) != 0)
        {
          goto LABEL_34;
        }

        v48 += v50;
      }

      do
      {
LABEL_39:
        *(a5 + 2 * v48) = *(result + 2 * v48) & ~(*(result + 2 * v48) >> 15);
        ++v48;
      }

      while (v8 != v48);
LABEL_13:
      result += v28;
      a5 += v27;
      LODWORD(v11) = v32 - 1;
      ++v14;
      if (!v32)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    v57 = (v8 - 4);
    v58 = v57 & 0x7FFFFFFC;
    v59 = v58 + 4;
    v60 = ((2 * v57) & 0xFFFFFFF8) + 8;
    v61 = a5 + v60;
    v62 = v10 * v11;
    if (v58 + 5 <= v8)
    {
      v63 = v8;
    }

    else
    {
      v63 = (v57 & 0x7FFFFFFC) + 5;
    }

    v64 = a5 + 2 * (v62 + v63);
    v65 = result + v60;
    v66 = v63 - 4 - v58;
    v67 = a5 + 2 * (v62 + v58) + 8;
    v68 = (v57 >> 2) + 1;
    v70 = result + 2 * (v9 * v11 + v58) + 8 > a5 && v67 > result;
    v71 = ((a6 | a2) & 0x8000000000000000) != 0;
    v73 = v61 < result + 2 * (v9 * v11 + v63) && v65 < v64;
    v74 = v63 & 3;
    v75 = v57 < 0x1C || v71 || v70;
    v76 = v66 < 4 || v71 || v73;
    v77 = 2 * v10;
    v78 = 2 * v9;
    v79 = a5 + 4;
    v80 = 8 * ((v57 >> 2) & 0x1FFFFFFF);
    v105 = v80 + 24;
    v81 = v63 - 4 - v74 - v58;
    v82 = v80 + 8;
    while (1)
    {
      v83 = v11;
      v84 = 0;
      if (v75)
      {
        goto LABEL_62;
      }

      v85 = v68 & 0x3FFFFFF8;
      do
      {
        v86 = (a5 + v84);
        v87 = vmaxq_s16(*(result + v84 + 16), 0);
        v88 = vmaxq_s16(*(result + v84), 0);
        v89 = vmaxq_s16(*(result + v84 + 48), 0);
        v86[2] = vmaxq_s16(*(result + v84 + 32), 0);
        v86[3] = v89;
        *v86 = v88;
        v86[1] = v87;
        v84 += 64;
        v85 -= 8;
      }

      while (v85);
      v84 = 4 * (v68 & 0x3FFFFFF8);
      LODWORD(v90) = 4 * (v68 & 0x3FFFFFF8);
      if (v68 != (v68 & 0x3FFFFFF8))
      {
LABEL_62:
        v91 = 2 * v84;
        v92 = v79;
        v93 = result;
        v90 = v84;
        do
        {
          v94 = *(v93 + v91 + 2) & ~(*(v93 + v91 + 2) >> 15);
          v95 = v92 + v91;
          *(v95 - 4) = *(v93 + 2 * v84) & ~(*(v93 + 2 * v84) >> 15);
          *(v95 - 2) = v94;
          v96 = *(v93 + v91 + 6);
          *(v92 + 2 * v84) = *(v93 + 2 * v84 + 4) & ~(*(v93 + 2 * v84 + 4) >> 15);
          *(v95 + 2) = v96 & ~(v96 >> 31);
          v90 += 4;
          v93 += 8;
          v92 += 8;
        }

        while (v90 <= v57);
      }

      if (v8 <= v90)
      {
        goto LABEL_57;
      }

      v97 = (v57 & 0x7FFFFFFC) + 4;
      if (!v76)
      {
        if (v66 < 0x10)
        {
          v98 = 0;
LABEL_72:
          v103 = v81 - v98;
          v104 = v82 + 2 * v98;
          do
          {
            *(a5 + v104) = vmax_s16(*(result + v104), 0);
            v104 += 8;
            v103 -= 4;
          }

          while (v103);
          v97 = v59 + v66 - v74;
          if (!v74)
          {
            goto LABEL_57;
          }

          goto LABEL_75;
        }

        v99 = v105;
        v100 = v66 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v101 = vmaxq_s16(*(result + v99), 0);
          v102 = (a5 + v99);
          v102[-1] = vmaxq_s16(*(result + v99 - 16), 0);
          *v102 = v101;
          v99 += 32;
          v100 -= 16;
        }

        while (v100);
        if (v66 == (v66 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_57;
        }

        v98 = v66 & 0xFFFFFFFFFFFFFFF0;
        v97 = v59 + (v66 & 0xFFFFFFFFFFFFFFF0);
        if ((v66 & 0xC) != 0)
        {
          goto LABEL_72;
        }
      }

      do
      {
LABEL_75:
        *(a5 + 2 * v97) = *(result + 2 * v97) & ~(*(result + 2 * v97) >> 15);
        ++v97;
      }

      while (v97 < v8);
LABEL_57:
      LODWORD(v11) = v83 - 1;
      a5 += v77;
      result += v78;
      v79 += v77;
      if (!v83)
      {
        return result;
      }
    }
  }

  if (v8 >= 1)
  {
    v12 = (result + 4);
    v13 = (a5 + 4);
    do
    {
      *(v13 - 2) = *(v12 - 2) & ~(*(v12 - 2) >> 15);
      if (v8 != 1)
      {
        *(v13 - 1) = *(v12 - 1) & ~(*(v12 - 1) >> 15);
        if (v8 != 2)
        {
          *v13 = *v12 & ~(*v12 >> 15);
        }
      }

      v12 += v9;
      v13 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

int32x4_t *sub_100206294(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = v8 - 4;
    v10 = 2 * (a6 >> 1);
    v11 = result + 1;
    v12 = 4 * (a2 >> 2);
    v13 = a5 + 1;
    v14.i64[0] = 0xFFFF0000FFFFLL;
    v14.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (v8 >= 8)
      {
        v15 = 0;
        v16 = v11;
        v17 = a5;
        do
        {
          *v17++ = vqmovun_high_s32(vqmovun_s32(v16[-1]), *v16);
          v15 += 8;
          v16 += 2;
        }

        while (v15 <= (v8 - 8));
        if (v15 > v9)
        {
          goto LABEL_16;
        }
      }

      else
      {
        LODWORD(v15) = 0;
        if (v9 < 0)
        {
          goto LABEL_16;
        }
      }

      v18 = v15;
      v19 = v9 - v15;
      v15 = v15;
      if (v19 <= 0x1B)
      {
        goto LABEL_14;
      }

      v20 = (v19 >> 2) + 1;
      v15 = v15 + 4 * (v20 & 0x7FFFFFFFFFFFFFF8);
      v21 = 2 * v18;
      v22 = 4 * v18;
      v23 = v20 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v24 = (a5 + v21);
        v25 = vminq_s32(vmaxq_s32(*(&result[3] + v22), 0), v14);
        v26 = vminq_s32(vmaxq_s32(*(&result[2] + v22), 0), v14);
        v27 = vuzp1q_s16(vminq_s32(vmaxq_s32(*(result + v22), 0), v14), vminq_s32(vmaxq_s32(*(&result[1] + v22), 0), v14));
        v28 = vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[6] + v22), 0), v14), vminq_s32(vmaxq_s32(*(&result[7] + v22), 0), v14));
        v24[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[4] + v22), 0), v14), vminq_s32(vmaxq_s32(*(&result[5] + v22), 0), v14));
        v24[3] = v28;
        *v24 = v27;
        v24[1] = vuzp1q_s16(v26, v25);
        v21 += 64;
        v22 += 128;
        v23 -= 8;
      }

      while (v23);
      if (v20 != (v20 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_14:
        v29 = 2 * v15;
        v30 = 4 * v15;
        do
        {
          *&a5->i8[v29] = vmovn_s32(vminq_s32(vmaxq_s32(*(result + v30), 0), v14));
          v15 += 4;
          v29 += 8;
          v30 += 16;
        }

        while (v15 <= v9);
      }

LABEL_16:
      if (v15 < v8)
      {
        v31 = v15;
        v32 = v8 - v15;
        v33 = v31;
        if (v32 < 4)
        {
          goto LABEL_29;
        }

        if (v32 >= 0x10)
        {
          v34 = v32 & 0xFFFFFFFFFFFFFFF0;
          v35 = (v13 + 2 * v31);
          v36 = (result + 4 * v31);
          v37 = v32 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v38 = vuzp1q_s16(vminq_s32(vmaxq_s32(v36[2], 0), v14), vminq_s32(vmaxq_s32(v36[3], 0), v14));
            v35[-1] = vuzp1q_s16(vminq_s32(vmaxq_s32(*v36, 0), v14), vminq_s32(vmaxq_s32(v36[1], 0), v14));
            *v35 = v38;
            v35 += 2;
            v36 += 4;
            v37 -= 16;
          }

          while (v37);
          if (v32 == v34)
          {
            goto LABEL_3;
          }

          if ((v32 & 0xC) == 0)
          {
            v33 = v34 + v31;
            do
            {
LABEL_29:
              v43 = result->i32[v33] & ~(result->i32[v33] >> 31);
              if (v43 >= 0xFFFF)
              {
                LOWORD(v43) = -1;
              }

              a5->i16[v33++] = v43;
            }

            while (v8 != v33);
            goto LABEL_3;
          }
        }

        else
        {
          v34 = 0;
        }

        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + v31;
        v39 = v34 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
        v40 = v34 + v31;
        v41 = 4 * v40;
        v42 = 2 * v40;
        do
        {
          *&a5->i8[v42] = vmovn_s32(vminq_s32(vmaxq_s32(*(result + v41), 0), v14));
          v41 += 16;
          v42 += 8;
          v39 += 4;
        }

        while (v39);
        if (v32 != (v32 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }
      }

LABEL_3:
      a5 = (a5 + v10);
      v11 = (v11 + v12);
      result = (result + v12);
      v13 = (v13 + v10);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_100206524(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = result;
    v10 = *a7;
    v11 = v10 - 4;
    v12 = 2 * (a6 >> 1);
    v13 = 4 * (a2 >> 2);
    do
    {
      result = sub_100210C04(&v36, v9, a5, v10);
      v14.i64[0] = 0xFFFF0000FFFFLL;
      v14.i64[1] = 0xFFFF0000FFFFLL;
      if (result <= v11)
      {
        v15 = result;
        v16 = v11 - result;
        result = result;
        if (v16 <= 0x1B)
        {
          goto LABEL_9;
        }

        v17 = (v16 >> 2) + 1;
        result = result + 4 * (v17 & 0x7FFFFFFFFFFFFFF8);
        v18 = 2 * v15;
        v19 = 4 * v15;
        v20 = v17 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v21 = (a5 + v18);
          v22 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9->f32[v19 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v9 + v19), *(v9 + v19), 8uLL))))), 0);
          v23 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[1].f32[v19 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[1] + v19), *(&v9[1] + v19), 8uLL))))), 0);
          v24 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[3].f32[v19 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[3] + v19), *(&v9[3] + v19), 8uLL))))), 0), v14);
          v25 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[2].f32[v19 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[2] + v19), *(&v9[2] + v19), 8uLL))))), 0), v14);
          v26 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[6].f32[v19 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[6] + v19), *(&v9[6] + v19), 8uLL))))), 0), v14), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[7].f32[v19 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[7] + v19), *(&v9[7] + v19), 8uLL))))), 0), v14));
          v21[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[4].f32[v19 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[4] + v19), *(&v9[4] + v19), 8uLL))))), 0), v14), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[5].f32[v19 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[5] + v19), *(&v9[5] + v19), 8uLL))))), 0), v14));
          v21[3] = v26;
          *v21 = vuzp1q_s16(vminq_s32(v22, v14), vminq_s32(v23, v14));
          v21[1] = vuzp1q_s16(v25, v24);
          v18 += 64;
          v19 += 128;
          v20 -= 8;
        }

        while (v20);
        if (v17 != (v17 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v27 = 2 * result;
          v28 = result;
          do
          {
            *&a5->i8[v27] = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9->f32[v28]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v9 + v28 * 4), *(v9 + v28 * 4), 8uLL))))), 0), v14));
            result += 4;
            v27 += 8;
            v28 += 4;
          }

          while (result <= v11);
        }
      }

      if (result < v10)
      {
        v29 = v10 - result;
        v30 = result;
        if (v29 <= 7)
        {
          goto LABEL_22;
        }

        v30 = (v29 & 0xFFFFFFFFFFFFFFF8) + result;
        v31 = 4 * result;
        v32 = 2 * result;
        v33 = v29 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          *(a5 + v32) = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9->f32[v31 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v9 + v31), *(v9 + v31), 8uLL))))), 0), v14), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[1].f32[v31 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[1] + v31), *(&v9[1] + v31), 8uLL))))), 0), v14));
          v31 += 32;
          v32 += 16;
          v33 -= 8;
        }

        while (v33);
        if (v29 != (v29 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_22:
          do
          {
            v34 = rintf(v9->f32[v30]);
            v35 = v34 & ~(v34 >> 31);
            if (v35 >= 0xFFFF)
            {
              LOWORD(v35) = -1;
            }

            a5->i16[v30++] = v35;
          }

          while (v10 != v30);
        }
      }

      v9 = (v9 + v13);
      a5 = (a5 + v12);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1002068A4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = result;
    v10 = *a7;
    v11 = v10 - 4;
    v12 = 2 * (a6 >> 1);
    v13 = 8 * (a2 >> 3);
    do
    {
      result = sub_100210DF4(&v35, v9, a5, v10);
      v14.i64[0] = 0xFFFF0000FFFFLL;
      v14.i64[1] = 0xFFFF0000FFFFLL;
      if (result <= v11)
      {
        v15 = result;
        v16 = v11 - result;
        result = result;
        if (v16 <= 0x1B)
        {
          goto LABEL_9;
        }

        v17 = (v16 >> 2) + 1;
        result = result + 4 * (v17 & 0x7FFFFFFFFFFFFFF8);
        v18 = 2 * v15;
        v19 = 8 * v15;
        v20 = v17 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v21 = (a5 + v18);
          v22 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 96))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 112)))), 0), v14);
          v23 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 64))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 80)))), 0), v14);
          v24 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v19))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 16)))), 0), v14), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 32))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 48)))), 0), v14));
          v25 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 192))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 208)))), 0), v14), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 224))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 240)))), 0), v14));
          v21[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 128))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 144)))), 0), v14), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 160))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v19 + 176)))), 0), v14));
          v21[3] = v25;
          *v21 = v24;
          v21[1] = vuzp1q_s16(v23, v22);
          v18 += 64;
          v19 += 256;
          v20 -= 8;
        }

        while (v20);
        if (v17 != (v17 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v26 = 2 * result;
          v27 = 8 * result;
          do
          {
            *&a5->i8[v26] = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v27))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v27 + 16)))), 0), v14));
            result += 4;
            v26 += 8;
            v27 += 32;
          }

          while (result <= v11);
        }
      }

      if (result < v10)
      {
        v28 = v10 - result;
        v29 = result;
        if (v28 <= 7)
        {
          goto LABEL_22;
        }

        v29 = (v28 & 0xFFFFFFFFFFFFFFF8) + result;
        v30 = 8 * result;
        v31 = 2 * result;
        v32 = v28 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          *(a5 + v31) = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v30))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v30 + 16)))), 0), v14), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v30 + 32))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v30 + 48)))), 0), v14));
          v30 += 64;
          v31 += 16;
          v32 -= 8;
        }

        while (v32);
        if (v28 != (v28 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_22:
          do
          {
            v33 = rint(v9->f64[v29]);
            v34 = v33 & ~(v33 >> 31);
            if (v34 >= 0xFFFF)
            {
              LOWORD(v34) = -1;
            }

            a5->i16[v29++] = v34;
          }

          while (v10 != v29);
        }
      }

      v9 = (v9 + v13);
      a5 = (a5 + v12);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint8x16_t *sub_100206BB8(uint8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint8x16_t *a5, unint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a6 >> 1;
  v10 = v7 - 1;
  if (v8 >= 8)
  {
    v13 = 0;
    v14 = (v8 - 8);
    v15 = (v8 - 4);
    v16 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v17 = (v14 & 0xFFFFFFF8) + 8;
    v18 = v17 | 4;
    if ((v17 | 4uLL) <= v15 + 1)
    {
      v18 = v15 + 1;
    }

    v19 = ~v17 + v18;
    v20 = &a5->i64[(v19 >> 2) + 1];
    v21 = &result->i8[(v19 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v22 = &a5->i8[2 * v8];
    v23 = &result->i8[v8];
    v108 = (v19 >> 2) + 1;
    v24 = 2 * v9;
    v25 = &a5->i8[6];
    v26 = &a5[2];
    v27 = result + 1;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v30 = v10;
      v31 = 8;
      v32 = a5;
      do
      {
        v33 = v31;
        *v32++ = vmovl_u8(*&result->i8[v29]);
        v29 += 8;
        v28 += 0x800000000;
        v31 += 8;
      }

      while (v29 <= v14);
      if (v15 >= v29)
      {
        v34 = v28 >> 32;
        if (v19 <= 0x3B || &a5->i8[v28 >> 31] < &v21[v13 * a2 + v34] && &result->i8[v34] < v20 + v16 * v13 + (v28 >> 31))
        {
          goto LABEL_24;
        }

        v34 += 4 * (v108 & 0x7FFFFFFFFFFFFFF0);
        v35 = v33;
        v36 = 2 * v33;
        v37 = v108 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v39 = *(&result[2] + v35);
          v38 = *(&result[3] + v35);
          v41 = *(result + v35);
          v40 = *(&result[1] + v35);
          v42 = &a5->i8[v36];
          v42[6] = vmovl_u8(*v38.i8);
          v42[7] = vmovl_high_u8(v38);
          v42[4] = vmovl_u8(*v39.i8);
          v42[5] = vmovl_high_u8(v39);
          v42[2] = vmovl_u8(*v40.i8);
          v42[3] = vmovl_high_u8(v40);
          *v42 = vmovl_u8(*v41.i8);
          v42[1] = vmovl_high_u8(v41);
          v36 += 128;
          v35 += 64;
          v37 -= 16;
        }

        while (v37);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_24:
          v43 = &v25[2 * v34];
          do
          {
            v44 = result->u8[v34 + 1];
            *(v43 - 3) = result->u8[v34];
            v45 = &a5->i8[2 * v34];
            *(v45 + 1) = v44;
            v46 = result->u8[v34 + 3];
            *(v45 + 2) = result->u8[v34 + 2];
            *v43 = v46;
            v43 += 8;
            v34 += 4;
          }

          while (v34 <= v15);
        }
      }

      else
      {
        LODWORD(v34) = v29;
      }

      if (v34 >= v8)
      {
        goto LABEL_13;
      }

      v47 = v34;
      v48 = v8 - v34;
      if (v48 >= 8 && (a5 + 2 * v47 >= &v23[v13 * a2] || &result->i8[v47] >= &v22[v16 * v13]))
      {
        if (v48 < 0x20)
        {
          v49 = 0;
LABEL_36:
          v56 = (v48 & 0xFFFFFFFFFFFFFFF8) + v47;
          v57 = v49 - (v48 & 0xFFFFFFFFFFFFFFF8);
          v58 = v49 + v47;
          v59 = 2 * v58;
          do
          {
            *(a5 + v59) = vmovl_u8(*&result->i8[v58]);
            v58 += 8;
            v59 += 16;
            v57 += 8;
          }

          while (v57);
          v47 = v56;
          if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_13;
          }

          goto LABEL_41;
        }

        v49 = v48 & 0xFFFFFFFFFFFFFFE0;
        v50 = (v26 + 2 * v47);
        v51 = &v27->i8[v47];
        v52 = v48 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v53 = *v51[-2].i8;
          v54 = vmovl_u8(*v51);
          v55 = vmovl_high_u8(*v51->i8);
          v50[-2] = vmovl_u8(*v53.i8);
          v50[-1] = vmovl_high_u8(v53);
          *v50 = v54;
          v50[1] = v55;
          v50 += 4;
          v51 += 4;
          v52 -= 32;
        }

        while (v52);
        if (v48 == v49)
        {
          goto LABEL_13;
        }

        if ((v48 & 0x18) != 0)
        {
          goto LABEL_36;
        }

        v47 += v49;
      }

      do
      {
LABEL_41:
        a5->i16[v47] = result->u8[v47];
        ++v47;
      }

      while (v8 != v47);
LABEL_13:
      result = (result + a2);
      a5 = (a5 + v24);
      LODWORD(v10) = v30 - 1;
      ++v13;
      v25 += v24;
      v26 = (v26 + v24);
      v27 = (v27 + a2);
      if (!v30)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    v60 = (v8 - 4);
    v61 = v60 & 0x7FFFFFFC;
    v62 = v61 + 4;
    v63 = &a5->i8[((2 * v60) & 0xFFFFFFF8) + 8];
    v64 = v9 * v10;
    if (v61 + 5 <= v8)
    {
      v65 = *a7;
    }

    else
    {
      v65 = (v60 & 0x7FFFFFFC) + 5;
    }

    v66 = &a5->i8[2 * v64 + 2 * v65];
    v67 = &result->i8[v62];
    v68 = &result->i8[v65 + v10 * a2];
    v69 = v65 - v61 - 4;
    v70 = &v63[2 * v64];
    v71 = (v60 >> 2) + 1;
    v73 = &result->i8[v62 + v10 * a2] > a5 && v70 > result;
    v74 = ((a6 | a2) & 0x8000000000000000) != 0;
    v76 = v63 < v68 && v67 < v66;
    v77 = v60 < 0x3C || v74 || v73;
    v78 = v69 < 8 || v74 || v76;
    v79 = 2 * v9;
    v80 = &a5->i8[8 * ((v60 >> 2) & 0x1FFFFFFF)];
    v81 = v80 + 40;
    v82 = (result[1].i64 + v61 + 4);
    v83 = v80 + 8;
    while (1)
    {
      v84 = v10;
      if (v77)
      {
        break;
      }

      v86 = v71 & 0x3FFFFFF0;
      v87 = result;
      v88 = a5;
      do
      {
        v90 = v87[2];
        v89 = v87[3];
        v92 = *v87;
        v91 = v87[1];
        v87 += 4;
        v88[6] = vmovl_u8(*v89.i8);
        v88[7] = vmovl_high_u8(v89);
        v88[4] = vmovl_u8(*v90.i8);
        v88[5] = vmovl_high_u8(v90);
        v88[2] = vmovl_u8(*v91.i8);
        v88[3] = vmovl_high_u8(v91);
        *v88 = vmovl_u8(*v92.i8);
        v88[1] = vmovl_high_u8(v92);
        v88 += 8;
        v86 -= 16;
      }

      while (v86);
      v85 = 4 * (v71 & 0x3FFFFFF0);
      if (v71 != (v71 & 0x3FFFFFF0))
      {
        goto LABEL_65;
      }

LABEL_67:
      if (v8 > v85)
      {
        v96 = (v60 & 0x7FFFFFFC) + 4;
        if (!v78)
        {
          if (v69 >= 0x20)
          {
            v98 = v82;
            v99 = v81;
            v100 = v69 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v101 = *v98[-2].i8;
              v102 = vmovl_u8(*v98);
              v103 = vmovl_high_u8(*v98->i8);
              v99[-2] = vmovl_u8(*v101.i8);
              v99[-1] = vmovl_high_u8(v101);
              *v99 = v102;
              v99[1] = v103;
              v99 += 4;
              v98 += 4;
              v100 -= 32;
            }

            while (v100);
            if (v69 == (v69 & 0xFFFFFFFFFFFFFFE0))
            {
              goto LABEL_59;
            }

            v97 = v69 & 0xFFFFFFFFFFFFFFE0;
            v96 = v62 + (v69 & 0xFFFFFFFFFFFFFFE0);
            if ((v69 & 0x18) != 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v97 = 0;
LABEL_75:
            v104 = v97 - (v69 & 0xFFFFFFFFFFFFFFF8);
            v105 = &v67[v97];
            v106 = &v83[2 * v97];
            do
            {
              v107 = *v105++;
              *v106++ = vmovl_u8(v107);
              v104 += 8;
            }

            while (v104);
            v96 = v62 + (v69 & 0xFFFFFFFFFFFFFFF8);
            if (v69 == (v69 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_59;
            }
          }
        }

        do
        {
          a5->i16[v96] = result->u8[v96];
          ++v96;
        }

        while (v96 < v8);
      }

LABEL_59:
      result = (result + a2);
      LODWORD(v10) = v84 - 1;
      a5 = (a5 + v79);
      v81 += v79;
      v82 = (v82 + a2);
      v67 += a2;
      v83 += v79;
      if (!v84)
      {
        return result;
      }
    }

    v85 = 0;
LABEL_65:
    v93 = &a5->i16[v85];
    do
    {
      v94 = result->u8[v85 + 1];
      *v93 = result->u8[v85];
      v93[1] = v94;
      v95 = result->u8[v85 + 3];
      v93[2] = result->u8[v85 + 2];
      v93[3] = v95;
      v85 += 4;
      v93 += 4;
    }

    while (v85 <= v60);
    goto LABEL_67;
  }

  if (v8 >= 1)
  {
    v11 = &result->u8[2];
    v12 = &a5->i16[2];
    do
    {
      *(v12 - 2) = *(v11 - 2);
      if (v8 != 1)
      {
        *(v12 - 1) = *(v11 - 1);
        if (v8 != 2)
        {
          *v12 = *v11;
        }
      }

      v11 += a2;
      v12 += v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

int8x16_t *sub_100207178(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, unint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a6 >> 1;
  v10 = v7 - 1;
  if (v8 >= 8)
  {
    v13 = 0;
    v14 = (v8 - 8);
    v15 = (v8 - 4);
    v16 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v17 = (v14 & 0xFFFFFFF8) + 8;
    v18 = v17 | 4;
    if ((v17 | 4uLL) <= v15 + 1)
    {
      v18 = v15 + 1;
    }

    v19 = ~v17 + v18;
    v20 = &a5->i64[(v19 >> 2) + 1];
    v21 = &result->i8[(v19 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v22 = &a5->i8[2 * v8];
    v23 = &result->i8[v8];
    v108 = (v19 >> 2) + 1;
    v24 = 2 * v9;
    v25 = &a5->i8[6];
    v26 = &a5[2];
    v27 = result + 1;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v30 = v10;
      v31 = 8;
      v32 = a5;
      do
      {
        v33 = v31;
        *v32++ = vmovl_s8(*&result->i8[v29]);
        v29 += 8;
        v28 += 0x800000000;
        v31 += 8;
      }

      while (v29 <= v14);
      if (v15 >= v29)
      {
        v34 = v28 >> 32;
        if (v19 <= 0x3B || &a5->i8[v28 >> 31] < &v21[v13 * a2 + v34] && &result->i8[v34] < v20 + v16 * v13 + (v28 >> 31))
        {
          goto LABEL_24;
        }

        v34 += 4 * (v108 & 0x7FFFFFFFFFFFFFF0);
        v35 = v33;
        v36 = 2 * v33;
        v37 = v108 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v39 = *(&result[2] + v35);
          v38 = *(&result[3] + v35);
          v41 = *(result + v35);
          v40 = *(&result[1] + v35);
          v42 = &a5->i8[v36];
          v42[6] = vmovl_s8(*v38.i8);
          v42[7] = vmovl_high_s8(v38);
          v42[4] = vmovl_s8(*v39.i8);
          v42[5] = vmovl_high_s8(v39);
          v42[2] = vmovl_s8(*v40.i8);
          v42[3] = vmovl_high_s8(v40);
          *v42 = vmovl_s8(*v41.i8);
          v42[1] = vmovl_high_s8(v41);
          v36 += 128;
          v35 += 64;
          v37 -= 16;
        }

        while (v37);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_24:
          v43 = &v25[2 * v34];
          do
          {
            v44 = result->i8[v34 + 1];
            *(v43 - 3) = result->i8[v34];
            v45 = &a5->i8[2 * v34];
            *(v45 + 1) = v44;
            v46 = result->i8[v34 + 3];
            *(v45 + 2) = result->i8[v34 + 2];
            *v43 = v46;
            v43 += 8;
            v34 += 4;
          }

          while (v34 <= v15);
        }
      }

      else
      {
        LODWORD(v34) = v29;
      }

      if (v34 >= v8)
      {
        goto LABEL_13;
      }

      v47 = v34;
      v48 = v8 - v34;
      if (v48 >= 8 && (a5 + 2 * v47 >= &v23[v13 * a2] || &result->i8[v47] >= &v22[v16 * v13]))
      {
        if (v48 < 0x20)
        {
          v49 = 0;
LABEL_36:
          v56 = (v48 & 0xFFFFFFFFFFFFFFF8) + v47;
          v57 = v49 - (v48 & 0xFFFFFFFFFFFFFFF8);
          v58 = v49 + v47;
          v59 = 2 * v58;
          do
          {
            *(a5 + v59) = vmovl_s8(*&result->i8[v58]);
            v58 += 8;
            v59 += 16;
            v57 += 8;
          }

          while (v57);
          v47 = v56;
          if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_13;
          }

          goto LABEL_41;
        }

        v49 = v48 & 0xFFFFFFFFFFFFFFE0;
        v50 = (v26 + 2 * v47);
        v51 = &v27->i8[v47];
        v52 = v48 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v53 = *v51[-2].i8;
          v54 = vmovl_s8(*v51);
          v55 = vmovl_high_s8(*v51->i8);
          v50[-2] = vmovl_s8(*v53.i8);
          v50[-1] = vmovl_high_s8(v53);
          *v50 = v54;
          v50[1] = v55;
          v50 += 4;
          v51 += 4;
          v52 -= 32;
        }

        while (v52);
        if (v48 == v49)
        {
          goto LABEL_13;
        }

        if ((v48 & 0x18) != 0)
        {
          goto LABEL_36;
        }

        v47 += v49;
      }

      do
      {
LABEL_41:
        a5->i16[v47] = result->i8[v47];
        ++v47;
      }

      while (v8 != v47);
LABEL_13:
      result = (result + a2);
      a5 = (a5 + v24);
      LODWORD(v10) = v30 - 1;
      ++v13;
      v25 += v24;
      v26 = (v26 + v24);
      v27 = (v27 + a2);
      if (!v30)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    v60 = (v8 - 4);
    v61 = v60 & 0x7FFFFFFC;
    v62 = v61 + 4;
    v63 = &a5->i8[((2 * v60) & 0xFFFFFFF8) + 8];
    v64 = v9 * v10;
    if (v61 + 5 <= v8)
    {
      v65 = *a7;
    }

    else
    {
      v65 = (v60 & 0x7FFFFFFC) + 5;
    }

    v66 = &a5->i8[2 * v64 + 2 * v65];
    v67 = &result->i8[v62];
    v68 = &result->i8[v65 + v10 * a2];
    v69 = v65 - v61 - 4;
    v70 = &v63[2 * v64];
    v71 = (v60 >> 2) + 1;
    v73 = &result->i8[v62 + v10 * a2] > a5 && v70 > result;
    v74 = ((a6 | a2) & 0x8000000000000000) != 0;
    v76 = v63 < v68 && v67 < v66;
    v77 = v60 < 0x3C || v74 || v73;
    v78 = v69 < 8 || v74 || v76;
    v79 = 2 * v9;
    v80 = &a5->i8[8 * ((v60 >> 2) & 0x1FFFFFFF)];
    v81 = v80 + 40;
    v82 = (result[1].i64 + v61 + 4);
    v83 = v80 + 8;
    while (1)
    {
      v84 = v10;
      if (v77)
      {
        break;
      }

      v86 = v71 & 0x3FFFFFF0;
      v87 = result;
      v88 = a5;
      do
      {
        v90 = v87[2];
        v89 = v87[3];
        v92 = *v87;
        v91 = v87[1];
        v87 += 4;
        v88[6] = vmovl_s8(*v89.i8);
        v88[7] = vmovl_high_s8(v89);
        v88[4] = vmovl_s8(*v90.i8);
        v88[5] = vmovl_high_s8(v90);
        v88[2] = vmovl_s8(*v91.i8);
        v88[3] = vmovl_high_s8(v91);
        *v88 = vmovl_s8(*v92.i8);
        v88[1] = vmovl_high_s8(v92);
        v88 += 8;
        v86 -= 16;
      }

      while (v86);
      v85 = 4 * (v71 & 0x3FFFFFF0);
      if (v71 != (v71 & 0x3FFFFFF0))
      {
        goto LABEL_65;
      }

LABEL_67:
      if (v8 > v85)
      {
        v96 = (v60 & 0x7FFFFFFC) + 4;
        if (!v78)
        {
          if (v69 >= 0x20)
          {
            v98 = v82;
            v99 = v81;
            v100 = v69 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v101 = *v98[-2].i8;
              v102 = vmovl_s8(*v98);
              v103 = vmovl_high_s8(*v98->i8);
              v99[-2] = vmovl_s8(*v101.i8);
              v99[-1] = vmovl_high_s8(v101);
              *v99 = v102;
              v99[1] = v103;
              v99 += 4;
              v98 += 4;
              v100 -= 32;
            }

            while (v100);
            if (v69 == (v69 & 0xFFFFFFFFFFFFFFE0))
            {
              goto LABEL_59;
            }

            v97 = v69 & 0xFFFFFFFFFFFFFFE0;
            v96 = v62 + (v69 & 0xFFFFFFFFFFFFFFE0);
            if ((v69 & 0x18) != 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v97 = 0;
LABEL_75:
            v104 = v97 - (v69 & 0xFFFFFFFFFFFFFFF8);
            v105 = &v67[v97];
            v106 = &v83[2 * v97];
            do
            {
              v107 = *v105++;
              *v106++ = vmovl_s8(v107);
              v104 += 8;
            }

            while (v104);
            v96 = v62 + (v69 & 0xFFFFFFFFFFFFFFF8);
            if (v69 == (v69 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_59;
            }
          }
        }

        do
        {
          a5->i16[v96] = result->i8[v96];
          ++v96;
        }

        while (v96 < v8);
      }

LABEL_59:
      result = (result + a2);
      LODWORD(v10) = v84 - 1;
      a5 = (a5 + v79);
      v81 += v79;
      v82 = (v82 + a2);
      v67 += a2;
      v83 += v79;
      if (!v84)
      {
        return result;
      }
    }

    v85 = 0;
LABEL_65:
    v93 = &a5->i16[v85];
    do
    {
      v94 = result->i8[v85 + 1];
      *v93 = result->i8[v85];
      v93[1] = v94;
      v95 = result->i8[v85 + 3];
      v93[2] = result->i8[v85 + 2];
      v93[3] = v95;
      v85 += 4;
      v93 += 4;
    }

    while (v85 <= v60);
    goto LABEL_67;
  }

  if (v8 >= 1)
  {
    v11 = &result->i8[2];
    v12 = &a5->i16[2];
    do
    {
      *(v12 - 2) = *(v11 - 2);
      if (v8 != 1)
      {
        *(v12 - 1) = *(v11 - 1);
        if (v8 != 2)
        {
          *v12 = *v11;
        }
      }

      v11 += a2;
      v12 += v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

unint64_t sub_100207738(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a2 >> 1;
  v10 = a6 >> 1;
  v11 = v7 - 1;
  if (v8 >= 8)
  {
    v17 = 0;
    v18 = (v8 - 8);
    v19 = (v8 - 4);
    v20 = a5 - result;
    v21 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v22 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v23 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v18 & 0xFFFFFFF8) + 8;
    v25 = v24 | 4;
    if ((v24 | 4uLL) <= v19 + 1)
    {
      v25 = v19 + 1;
    }

    v26 = ~v24 + v25;
    v27 = ((2 * v26) & 0xFFFFFFFFFFFFFFF8) + 8;
    v28 = a5 + v27;
    v29 = result + v27;
    v119 = (v26 >> 2) + 1;
    v30 = 2 * v10;
    v31 = 2 * v9;
    v32.i64[0] = 0x8000800080008000;
    v32.i64[1] = 0x8000800080008000;
    while (1)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = v11;
      v37 = 8;
      do
      {
        *(a5 + v33) = vqmovn_high_s32(vqmovn_s32(vmovl_u16(*(result + v33))), vmovl_high_u16(*(result + v33)));
        v38 = v37;
        v35 += 8;
        v34 += 0x800000000;
        v33 += 16;
        v37 += 8;
      }

      while (v35 <= v18);
      if (v19 >= v35)
      {
        v39 = v34 >> 32;
        if (v26 <= 0x1B || a5 < v29 + v22 * v17 && result < v28 + v21 * v17)
        {
          goto LABEL_29;
        }

        v39 += 4 * (v119 & 0x7FFFFFFFFFFFFFF8);
        v40 = 2 * v38;
        v41 = v119 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v42 = (a5 + v40);
          v43 = vminq_u16(*(result + v40 + 16), v32);
          v44 = vminq_u16(*(result + v40), v32);
          v45 = vminq_u16(*(result + v40 + 48), v32);
          v42[2] = vminq_u16(*(result + v40 + 32), v32);
          v42[3] = v45;
          *v42 = v44;
          v42[1] = v43;
          v40 += 64;
          v41 -= 8;
        }

        while (v41);
        LODWORD(v35) = v39;
        if (v119 != (v119 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_29:
          v46 = 2 * v39;
          v47 = result;
          v48 = a5;
          v35 = v39;
          do
          {
            v49 = (v47 + v46);
            v50 = *(v47 + 2 * v39);
            if (v50 >= 0x7FFF)
            {
              LOWORD(v50) = 0x7FFF;
            }

            v51 = v49[1];
            if (v51 >= 0x7FFF)
            {
              LOWORD(v51) = 0x7FFF;
            }

            v52 = v48 + v46;
            *(v48 + 2 * v39) = v50;
            *(v48 + v46 + 2) = v51;
            v53 = v49[2];
            if (v53 >= 0x7FFF)
            {
              LOWORD(v53) = 0x7FFF;
            }

            v54 = v49[3];
            if (v54 >= 0x7FFF)
            {
              LOWORD(v54) = 0x7FFF;
            }

            *(v52 + 4) = v53;
            *(v52 + 6) = v54;
            v35 += 4;
            v48 += 8;
            v47 += 8;
          }

          while (v35 <= v19);
        }
      }

      if (v35 >= v8)
      {
        goto LABEL_19;
      }

      v55 = v35;
      v56 = v8 - v35;
      if (v56 < 4 || v20 + v23 * v17 < 0x20)
      {
        goto LABEL_53;
      }

      if (v56 >= 0x10)
      {
        v57 = v56 & 0xFFFFFFFFFFFFFFF0;
        v58 = 2 * v35;
        v59 = v56 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v60 = vminq_u16(*(result + v58 + 16), v32);
          v61 = (a5 + v58);
          *v61 = vminq_u16(*(result + v58), v32);
          v61[1] = v60;
          v58 += 32;
          v59 -= 16;
        }

        while (v59);
        if (v56 == v57)
        {
          goto LABEL_19;
        }

        if ((v56 & 0xC) == 0)
        {
          v55 += v57;
          do
          {
LABEL_53:
            v64 = *(result + 2 * v55);
            if (v64 >= 0x7FFF)
            {
              LOWORD(v64) = 0x7FFF;
            }

            *(a5 + 2 * v55++) = v64;
          }

          while (v8 != v55);
          goto LABEL_19;
        }
      }

      else
      {
        v57 = 0;
      }

      v62 = v57 - (v56 & 0xFFFFFFFFFFFFFFFCLL);
      v63 = 2 * (v57 + v55);
      do
      {
        *(a5 + v63) = vmin_u16(*(result + v63), 0x8000800080008000);
        v63 += 8;
        v62 += 4;
      }

      while (v62);
      v55 += v56 & 0xFFFFFFFFFFFFFFFCLL;
      if (v56 != (v56 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_53;
      }

LABEL_19:
      result += v31;
      a5 += v30;
      LODWORD(v11) = v36 - 1;
      ++v17;
      if (!v36)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    v65 = (v8 - 4);
    v66 = v65 & 0x7FFFFFFC;
    v67 = v66 + 4;
    v68 = ((2 * v65) & 0xFFFFFFF8) + 8;
    v69 = a5 + v68;
    v70 = v10 * v11;
    if (v66 + 5 <= v8)
    {
      v71 = v8;
    }

    else
    {
      v71 = (v65 & 0x7FFFFFFC) + 5;
    }

    v72 = a5 + 2 * (v70 + v71);
    v73 = result + v68;
    v74 = v71 - 4 - v66;
    v75 = a5 + 2 * (v70 + v66) + 8;
    v76 = (v65 >> 2) + 1;
    v78 = result + 2 * (v9 * v11 + v66) + 8 > a5 && v75 > result;
    v79 = ((a6 | a2) & 0x8000000000000000) != 0;
    v81 = v69 < result + 2 * (v9 * v11 + v71) && v73 < v72;
    v82 = v71 & 3;
    v83 = v65 < 0x1C || v79 || v78;
    v84 = v74 < 4 || v79 || v81;
    v85 = 2 * v10;
    v86 = 2 * v9;
    v87 = a5 + 4;
    v88 = (v65 >> 2) & 0x1FFFFFFF;
    v118 = 8 * v88 + 24;
    v89 = v71 - 4 - v82 - v66;
    v90 = 8 * v88 + 8;
    v91.i64[0] = 0x8000800080008000;
    v91.i64[1] = 0x8000800080008000;
    while (1)
    {
      v92 = v11;
      v93 = 0;
      if (v83)
      {
        goto LABEL_78;
      }

      v94 = v76 & 0x3FFFFFF8;
      do
      {
        v95 = (a5 + v93);
        v96 = vminq_u16(*(result + v93 + 16), v91);
        v97 = vminq_u16(*(result + v93), v91);
        v98 = vminq_u16(*(result + v93 + 48), v91);
        v95[2] = vminq_u16(*(result + v93 + 32), v91);
        v95[3] = v98;
        *v95 = v97;
        v95[1] = v96;
        v93 += 64;
        v94 -= 8;
      }

      while (v94);
      v93 = 4 * (v76 & 0x3FFFFFF8);
      LODWORD(v99) = 4 * (v76 & 0x3FFFFFF8);
      if (v76 != (v76 & 0x3FFFFFF8))
      {
LABEL_78:
        v100 = 2 * v93;
        v101 = v87;
        v102 = result;
        v99 = v93;
        do
        {
          v103 = *(v102 + 2 * v93);
          if (v103 >= 0x7FFF)
          {
            LOWORD(v103) = 0x7FFF;
          }

          v104 = v102 + v100;
          v105 = *(v102 + v100 + 2);
          if (v105 >= 0x7FFF)
          {
            LOWORD(v105) = 0x7FFF;
          }

          v106 = v101 + v100;
          *(v106 - 4) = v103;
          *(v106 - 2) = v105;
          v107 = *(v104 + 4);
          if (v107 >= 0x7FFF)
          {
            LOWORD(v107) = 0x7FFF;
          }

          v108 = *(v104 + 6);
          *(v101 + 2 * v93) = v107;
          if (v108 >= 0x7FFF)
          {
            LOWORD(v108) = 0x7FFF;
          }

          *(v106 + 2) = v108;
          v99 += 4;
          v102 += 8;
          v101 += 8;
        }

        while (v99 <= v65);
      }

      if (v8 <= v99)
      {
        goto LABEL_73;
      }

      v109 = (v65 & 0x7FFFFFFC) + 4;
      if (v84)
      {
        do
        {
LABEL_99:
          v117 = *(result + 2 * v109);
          if (v117 >= 0x7FFF)
          {
            LOWORD(v117) = 0x7FFF;
          }

          *(a5 + 2 * v109++) = v117;
        }

        while (v109 < v8);
        goto LABEL_73;
      }

      if (v74 >= 0x10)
      {
        v111 = v118;
        v112 = v74 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v113 = vminq_u16(*(result + v111), v91);
          v114 = (a5 + v111);
          v114[-1] = vminq_u16(*(result + v111 - 16), v91);
          *v114 = v113;
          v111 += 32;
          v112 -= 16;
        }

        while (v112);
        if (v74 == (v74 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_73;
        }

        v110 = v74 & 0xFFFFFFFFFFFFFFF0;
        v109 = v67 + (v74 & 0xFFFFFFFFFFFFFFF0);
        if ((v74 & 0xC) == 0)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v110 = 0;
      }

      v115 = v89 - v110;
      v116 = v90 + 2 * v110;
      do
      {
        *(a5 + v116) = vmin_u16(*(result + v116), 0x8000800080008000);
        v116 += 8;
        v115 -= 4;
      }

      while (v115);
      v109 = v67 + v74 - v82;
      if (v82)
      {
        goto LABEL_99;
      }

LABEL_73:
      LODWORD(v11) = v92 - 1;
      a5 += v85;
      result += v86;
      v87 += v85;
      if (!v92)
      {
        return result;
      }
    }
  }

  if (v8 >= 1)
  {
    v12 = (result + 4);
    v13 = (a5 + 4);
    do
    {
      v14 = *(v12 - 2);
      if (v14 >= 0x7FFF)
      {
        LOWORD(v14) = 0x7FFF;
      }

      *(v13 - 2) = v14;
      if (v8 != 1)
      {
        v15 = *(v12 - 1);
        if (v15 >= 0x7FFF)
        {
          LOWORD(v15) = 0x7FFF;
        }

        *(v13 - 1) = v15;
        if (v8 != 2)
        {
          v16 = *v12;
          if (v16 >= 0x7FFF)
          {
            LOWORD(v16) = 0x7FFF;
          }

          *v13 = v16;
        }
      }

      v12 += v9;
      v13 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

int32x4_t *sub_100207D4C(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = v8 - 4;
    v10 = 2 * (a6 >> 1);
    v11 = result + 1;
    v12 = 4 * (a2 >> 2);
    v13 = a5 + 1;
    do
    {
      if (v8 >= 8)
      {
        v14 = 0;
        v15 = v11;
        v16 = a5;
        do
        {
          *v16++ = vqmovn_high_s32(vqmovn_s32(v15[-1]), *v15);
          v14 += 8;
          v15 += 2;
        }

        while (v14 <= (v8 - 8));
        if (v14 > v9)
        {
          goto LABEL_16;
        }
      }

      else
      {
        LODWORD(v14) = 0;
        if (v9 < 0)
        {
          goto LABEL_16;
        }
      }

      v17 = v14;
      v18 = v9 - v14;
      v14 = v14;
      if (v18 <= 0x1B)
      {
        goto LABEL_14;
      }

      v19 = (v18 >> 2) + 1;
      v14 = v14 + 4 * (v19 & 0x7FFFFFFFFFFFFFF8);
      v20 = 2 * v17;
      v21 = 4 * v17;
      v22 = v19 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v23 = (a5 + v20);
        v24 = vqmovn_high_s32(vqmovn_s32(*(result + v21)), *(&result[1] + v21));
        v25 = vqmovn_high_s32(vqmovn_s32(*(&result[2] + v21)), *(&result[3] + v21));
        v26 = vqmovn_high_s32(vqmovn_s32(*(&result[6] + v21)), *(&result[7] + v21));
        v23[2] = vqmovn_high_s32(vqmovn_s32(*(&result[4] + v21)), *(&result[5] + v21));
        v23[3] = v26;
        *v23 = v24;
        v23[1] = v25;
        v20 += 64;
        v21 += 128;
        v22 -= 8;
      }

      while (v22);
      if (v19 != (v19 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_14:
        v27 = 2 * v14;
        v28 = 4 * v14;
        do
        {
          *&a5->i8[v27] = vqmovn_s32(*(result + v28));
          v14 += 4;
          v27 += 8;
          v28 += 16;
        }

        while (v14 <= v9);
      }

LABEL_16:
      if (v14 < v8)
      {
        v29 = v14;
        v30 = v8 - v14;
        v31 = v29;
        if (v30 < 4)
        {
          goto LABEL_29;
        }

        if (v30 >= 0x10)
        {
          v32 = v30 & 0xFFFFFFFFFFFFFFF0;
          v33 = (v13 + 2 * v29);
          v34 = (result + 4 * v29);
          v35 = v30 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v36 = vqmovn_high_s32(vqmovn_s32(v34[2]), v34[3]);
            v33[-1] = vqmovn_high_s32(vqmovn_s32(*v34), v34[1]);
            *v33 = v36;
            v33 += 2;
            v34 += 4;
            v35 -= 16;
          }

          while (v35);
          if (v30 == v32)
          {
            goto LABEL_3;
          }

          if ((v30 & 0xC) == 0)
          {
            v31 = v32 + v29;
            do
            {
LABEL_29:
              v41 = result->i32[v31];
              if (v41 <= -32768)
              {
                v41 = -32768;
              }

              if (v41 >= 0x7FFF)
              {
                LOWORD(v41) = 0x7FFF;
              }

              a5->i16[v31++] = v41;
            }

            while (v8 != v31);
            goto LABEL_3;
          }
        }

        else
        {
          v32 = 0;
        }

        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + v29;
        v37 = v32 - (v30 & 0xFFFFFFFFFFFFFFFCLL);
        v38 = v32 + v29;
        v39 = 4 * v38;
        v40 = 2 * v38;
        do
        {
          *&a5->i8[v40] = vqmovn_s32(*(result + v39));
          v39 += 16;
          v40 += 8;
          v37 += 4;
        }

        while (v37);
        if (v30 != (v30 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }
      }

LABEL_3:
      a5 = (a5 + v10);
      v11 = (v11 + v12);
      result = (result + v12);
      v13 = (v13 + v10);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_100207F8C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = result;
    v10 = *a7;
    v11 = v10 - 4;
    v12 = 2 * (a6 >> 1);
    v13 = 4 * (a2 >> 2);
    do
    {
      result = sub_100211030(&v33, v9, a5, v10);
      if (result <= v11)
      {
        v14 = result;
        v15 = v11 - result;
        result = result;
        if (v15 <= 0x1B)
        {
          goto LABEL_9;
        }

        v16 = (v15 >> 2) + 1;
        result = result + 4 * (v16 & 0x7FFFFFFFFFFFFFF8);
        v17 = 2 * v14;
        v18 = 4 * v14;
        v19 = v16 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v20 = (a5 + v17);
          v21 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[3].f32[v18 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[3] + v18), *(&v9[3] + v18), 8uLL)))));
          v22 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9->f32[v18 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v9 + v18), *(v9 + v18), 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[1].f32[v18 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[1] + v18), *(&v9[1] + v18), 8uLL))))));
          v23 = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[2].f32[v18 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[2] + v18), *(&v9[2] + v18), 8uLL))))));
          v24 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[6].f32[v18 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[6] + v18), *(&v9[6] + v18), 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[7].f32[v18 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[7] + v18), *(&v9[7] + v18), 8uLL))))));
          v20[2] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[4].f32[v18 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[4] + v18), *(&v9[4] + v18), 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[5].f32[v18 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[5] + v18), *(&v9[5] + v18), 8uLL))))));
          v20[3] = v24;
          *v20 = v22;
          v20[1] = vqmovn_high_s32(v23, v21);
          v17 += 64;
          v18 += 128;
          v19 -= 8;
        }

        while (v19);
        if (v16 != (v16 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v25 = 2 * result;
          v26 = result;
          do
          {
            *&a5->i8[v25] = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9->f32[v26]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v9 + v26 * 4), *(v9 + v26 * 4), 8uLL))))));
            result += 4;
            v25 += 8;
            v26 += 4;
          }

          while (result <= v11);
        }
      }

      if (result < v10)
      {
        v27 = v10 - result;
        v28 = result;
        if (v27 <= 7)
        {
          goto LABEL_24;
        }

        v28 = (v27 & 0xFFFFFFFFFFFFFFF8) + result;
        v29 = 4 * result;
        v30 = 2 * result;
        v31 = v27 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          *(a5 + v30) = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9->f32[v29 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v9 + v29), *(v9 + v29), 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[1].f32[v29 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[1] + v29), *(&v9[1] + v29), 8uLL))))));
          v29 += 32;
          v30 += 16;
          v31 -= 8;
        }

        while (v31);
        if (v27 != (v27 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_24:
          do
          {
            v32 = rintf(v9->f32[v28]);
            if (v32 <= -32768)
            {
              LODWORD(v32) = -32768;
            }

            if (v32 >= 0x7FFF)
            {
              LOWORD(v32) = 0x7FFF;
            }

            a5->i16[v28++] = v32;
          }

          while (v10 != v28);
        }
      }

      v9 = (v9 + v13);
      a5 = (a5 + v12);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1002082D0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = result;
    v10 = *a7;
    v11 = v10 - 4;
    v12 = 2 * (a6 >> 1);
    v13 = 8 * (a2 >> 3);
    do
    {
      result = sub_100211220(&v33, v9, a5, v10);
      if (result <= v11)
      {
        v14 = result;
        v15 = v11 - result;
        result = result;
        if (v15 <= 0x1B)
        {
          goto LABEL_9;
        }

        v16 = (v15 >> 2) + 1;
        result = result + 4 * (v16 & 0x7FFFFFFFFFFFFFF8);
        v17 = 2 * v14;
        v18 = 8 * v14;
        v19 = v16 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v20 = (a5 + v17);
          v21 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 96))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 112))));
          v22 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v18))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 16))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 32))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 48)))));
          v23 = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 64))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 80)))));
          v24 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 192))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 208))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 224))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 240)))));
          v20[2] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 128))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 144))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 160))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v18 + 176)))));
          v20[3] = v24;
          *v20 = v22;
          v20[1] = vqmovn_high_s32(v23, v21);
          v17 += 64;
          v18 += 256;
          v19 -= 8;
        }

        while (v19);
        if (v16 != (v16 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v25 = 2 * result;
          v26 = 8 * result;
          do
          {
            *&a5->i8[v25] = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v26))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v26 + 16)))));
            result += 4;
            v25 += 8;
            v26 += 32;
          }

          while (result <= v11);
        }
      }

      if (result < v10)
      {
        v27 = v10 - result;
        v28 = result;
        if (v27 <= 7)
        {
          goto LABEL_24;
        }

        v28 = (v27 & 0xFFFFFFFFFFFFFFF8) + result;
        v29 = 8 * result;
        v30 = 2 * result;
        v31 = v27 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          *(a5 + v30) = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v29))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v29 + 16))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v29 + 32))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v29 + 48)))));
          v29 += 64;
          v30 += 16;
          v31 -= 8;
        }

        while (v31);
        if (v27 != (v27 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_24:
          do
          {
            v32 = rint(v9->f64[v28]);
            if (v32 <= -32768)
            {
              LODWORD(v32) = -32768;
            }

            if (v32 >= 0x7FFF)
            {
              LOWORD(v32) = 0x7FFF;
            }

            a5->i16[v28++] = v32;
          }

          while (v10 != v28);
        }
      }

      v9 = (v9 + v13);
      a5 = (a5 + v12);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint8x16_t *sub_1002085A8(uint8x16_t *result, uint64_t a2, double a3, double a4, double a5, double a6, __n128 a7, uint64_t a8, uint64_t a9, int8x16_t *a10, unint64_t a11, int *a12)
{
  v12 = a12[1];
  if (!v12)
  {
    return result;
  }

  v13 = *a12;
  v14 = a11 >> 2;
  v15 = v13 - 4;
  v16 = (v13 - 8);
  if (v13 >= 8)
  {
    v19 = 0;
    v20 = a11 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = (v16 & 0xFFFFFFF8) + 8;
    v22 = v21 | 4;
    if ((v21 | 4) <= v15 + 1)
    {
      v22 = v15 + 1;
    }

    v23 = ~v21 + v22;
    v24 = a10 + 1;
    v25 = &a10[(v23 >> 2) + 1];
    v26 = &result->i8[(v23 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v27 = a10->i64 + 4 * v13;
    v28 = &result->i8[v13];
    v126 = ((v23 >> 2) + 1) & 0x7FFFFFFFFFFFFFF0;
    v29 = 4 * v14;
    v30 = &a10->i64[1] + 4;
    v31 = a10 + 4;
    v32 = result + 1;
    while (1)
    {
      v33 = 0;
      v34 = 0;
      v35 = 8;
      v36 = v24;
      do
      {
        v37 = v35;
        v38 = vmovl_u8(*&result->i8[v34]);
        v39 = vmovl_u16(*v38.i8);
        v40 = vmovl_high_u16(v38);
        v34 += 8;
        v36[-1] = v39;
        *v36 = v40;
        v33 += 0x800000000;
        v36 += 2;
        v35 += 8;
      }

      while (v34 <= v16);
      if (v15 >= v34)
      {
        v34 = v33 >> 32;
        if (v23 <= 0x3B || &a10->i8[v33 >> 30] < &v26[v19 * a2 + v34] && result->u64 + v34 < v25 + v20 * v19 + (v33 >> 30))
        {
          goto LABEL_23;
        }

        v34 += 4 * v126;
        v41 = v37;
        v42 = 4 * v37;
        v43 = ((v23 >> 2) + 1) & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v45 = *(&result[2] + v41);
          v44 = *(&result[3] + v41);
          v47 = *(result + v41);
          v46 = *(&result[1] + v41);
          v48 = (a10 + v42);
          v48[14] = vqtbl1q_s8(v44, xmmword_1003E3700);
          v48[15] = vqtbl1q_s8(v44, xmmword_1003E3710);
          v48[12] = vqtbl1q_s8(v44, xmmword_1003E3720);
          v48[13] = vqtbl1q_s8(v44, xmmword_1003E3730);
          v40 = vqtbl1q_s8(v45, xmmword_1003E3730);
          v48[10] = vqtbl1q_s8(v45, xmmword_1003E3700);
          v48[11] = vqtbl1q_s8(v45, xmmword_1003E3710);
          v48[8] = vqtbl1q_s8(v45, xmmword_1003E3720);
          v48[9] = v40;
          v48[6] = vqtbl1q_s8(v46, xmmword_1003E3700);
          v48[7] = vqtbl1q_s8(v46, xmmword_1003E3710);
          v48[4] = vqtbl1q_s8(v46, xmmword_1003E3720);
          v48[5] = vqtbl1q_s8(v46, xmmword_1003E3730);
          v48[2] = vqtbl1q_s8(v47, xmmword_1003E3700);
          v48[3] = vqtbl1q_s8(v47, xmmword_1003E3710);
          v42 += 256;
          v41 += 64;
          *v48 = vqtbl1q_s8(v47, xmmword_1003E3720);
          v48[1] = vqtbl1q_s8(v47, xmmword_1003E3730);
          v43 -= 16;
        }

        while (v43);
        if ((v23 >> 2) + 1 != v126)
        {
LABEL_23:
          v49 = (v30 + 4 * v34);
          do
          {
            v50 = result->u8[v34 + 1];
            *(v49 - 3) = result->u8[v34];
            v51 = a10->i64 + 4 * v34;
            *(v51 + 4) = v50;
            v52 = result->u8[v34 + 3];
            *(v51 + 8) = result->u8[v34 + 2];
            *v49 = v52;
            v49 += 4;
            v34 += 4;
          }

          while (v34 <= v15);
        }
      }

      if (v34 >= v13)
      {
        goto LABEL_13;
      }

      v53 = v34;
      v54 = v13 - v34;
      if (v54 >= 4 && (a10 + 4 * v53 >= &v28[v19 * a2] || result->u64 + v53 >= v27 + v20 * v19))
      {
        if (v54 < 0x20)
        {
          v55 = 0;
LABEL_35:
          v65 = (v54 & 0xFFFFFFFFFFFFFFFCLL) + v53;
          v66 = v55 - (v54 & 0xFFFFFFFFFFFFFFFCLL);
          v67 = v55 + v53;
          v68 = 4 * v67;
          do
          {
            v40.i32[0] = *(result->i32 + v67);
            v40 = vmovl_u16(*&vmovl_u8(*v40.i8));
            *(a10 + v68) = v40;
            v67 += 4;
            v68 += 16;
            v66 += 4;
          }

          while (v66);
          v53 = v65;
          if (v54 == (v54 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }

          goto LABEL_40;
        }

        v55 = v54 & 0xFFFFFFFFFFFFFFE0;
        v56 = (v31 + 4 * v53);
        v57 = &v32->i8[v53];
        v58 = v54 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v59 = v57[-1];
          v60 = *v57;
          v61 = vqtbl1q_s8(v59, xmmword_1003E3720);
          v62 = vqtbl1q_s8(v59, xmmword_1003E3730);
          v63 = vqtbl1q_s8(*v57, xmmword_1003E3720);
          v64 = vqtbl1q_s8(*v57, xmmword_1003E3730);
          v56[-2] = vqtbl1q_s8(v59, xmmword_1003E3700);
          v56[-1] = vqtbl1q_s8(v59, xmmword_1003E3710);
          v40 = vqtbl1q_s8(v60, xmmword_1003E3700);
          v56[-4] = v61;
          v56[-3] = v62;
          v56[2] = v40;
          v56[3] = vqtbl1q_s8(v60, xmmword_1003E3710);
          *v56 = v63;
          v56[1] = v64;
          v56 += 8;
          v57 += 2;
          v58 -= 32;
        }

        while (v58);
        if (v54 == v55)
        {
          goto LABEL_13;
        }

        if ((v54 & 0x1C) != 0)
        {
          goto LABEL_35;
        }

        v53 += v55;
      }

      do
      {
LABEL_40:
        a10->i32[v53] = result->u8[v53];
        ++v53;
      }

      while (v13 != v53);
LABEL_13:
      result = (result + a2);
      a10 = (a10 + v29);
      ++v19;
      v24 = (v24 + v29);
      v30 += v29;
      v31 = (v31 + v29);
      v32 = (v32 + a2);
      if (!--v12)
      {
        return result;
      }
    }
  }

  if (v13 >= 4)
  {
    v69 = 0;
    if (v15 <= 3)
    {
      v70 = 3;
    }

    else
    {
      v70 = v13 - 4;
    }

    v71 = ((v70 << 32) & 0x7FFFFFFC00000000) + 0x400000000;
    v72 = v71 >> 32;
    v73 = a11 & 0xFFFFFFFFFFFFFFFCLL;
    if (((v71 >> 32) | 1) > v13)
    {
      v74 = v72 + 1;
    }

    else
    {
      v74 = *a12;
    }

    v75 = v74 - v72;
    v76 = (v12 - 1);
    v77 = &a10[1] + 4 * v14 * v76 + ((4 * v70) & 0x1FFFFFFF0);
    v78 = &result->i8[v76 * a2 + 4 + (v70 & 0x7FFFFFFC)];
    v79 = (v70 >> 2) + 1;
    v80 = v71 >> 30;
    v81 = &result->i8[v74 - v72];
    v83 = v78 > a10 && v77 > result;
    v84 = ((a11 | a2) & 0x8000000000000000) != 0;
    v85 = v75 & 0xFFFFFFFFFFFFFFE0;
    v86 = v15 < 60 || v84 || v83;
    v87 = &a10->i64[1] + 4;
    v88 = 4 * v14;
    v89 = a10 + 4;
    v90 = result + 1;
    v91 = (v72 & 0xFFFFFFFFFFFFFFFCLL | v74 & 3) - v74;
    v92 = -v80;
    v93 = a10;
    while (1)
    {
      if (v86)
      {
        v94 = 0;
      }

      else
      {
        v96 = result[2];
        v95 = result[3];
        v98 = *result;
        v97 = result[1];
        v99 = vmovl_u8(*result->i8);
        a7 = vmovl_u16(*v99.i8);
        v100 = vmovl_u8(*v97.i8);
        v101 = vmovl_u8(*v96.i8);
        v102 = vmovl_high_u8(v95);
        *(v93 + 224) = vmovl_u16(*v102.i8);
        *(v93 + 240) = vmovl_high_u16(v102);
        v103 = vmovl_high_u8(v96);
        *(v93 + 160) = vmovl_u16(*v103.i8);
        *(v93 + 176) = vmovl_high_u16(v103);
        v104 = vmovl_high_u8(v97);
        *(v93 + 96) = vmovl_u16(*v104.i8);
        *(v93 + 112) = vmovl_high_u16(v104);
        v105 = vmovl_high_u8(v98);
        *(v93 + 32) = vmovl_u16(*v105.i8);
        *(v93 + 48) = vmovl_high_u16(v105);
        v106 = vmovl_u8(*v95.i8);
        *(v93 + 192) = vmovl_u16(*v106.i8);
        *(v93 + 208) = vmovl_high_u16(v106);
        *(v93 + 128) = vmovl_u16(*v101.i8);
        *(v93 + 144) = vmovl_high_u16(v101);
        *(v93 + 64) = vmovl_u16(*v100.i8);
        *(v93 + 80) = vmovl_high_u16(v100);
        v94 = 4 * (v79 & 0x3FFFFFF0);
        *v93 = a7;
        *(v93 + 16) = vmovl_high_u16(v99);
        if (v79 == (v79 & 0x3FFFFFF0))
        {
          goto LABEL_61;
        }
      }

      v107 = (v87 + 4 * v94);
      do
      {
        v108 = result->u8[v94 + 1];
        *(v107 - 3) = result->u8[v94];
        v109 = v93 + 4 * v94;
        *(v109 + 4) = v108;
        v110 = result->u8[v94 + 3];
        *(v109 + 8) = result->u8[v94 + 2];
        *v107 = v110;
        v107 += 4;
        v94 += 4;
      }

      while (v94 <= v15);
LABEL_61:
      if (v13 > v94)
      {
        v111 = v94;
        if (v75 >= 4 && (v93 + 4 * v94 >= &v81[v69 * a2 + v94] || &result->i8[v94] >= a10 + 4 * v74 + 4 * v94 + v92 + v73 * v69))
        {
          if (v75 >= 0x20)
          {
            v113 = v89->i64 + 4 * v94;
            v114 = &v90->i8[v111];
            v115 = v75 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v116 = v114[-1];
              v117 = *v114;
              v118 = vqtbl1q_s8(v116, xmmword_1003E3720);
              v119 = vqtbl1q_s8(v116, xmmword_1003E3730);
              v120 = vqtbl1q_s8(*v114, xmmword_1003E3720);
              v121 = vqtbl1q_s8(*v114, xmmword_1003E3730);
              *(v113 - 32) = vqtbl1q_s8(v116, xmmword_1003E3700);
              *(v113 - 16) = vqtbl1q_s8(v116, xmmword_1003E3710);
              a7 = vqtbl1q_s8(v117, xmmword_1003E3700);
              *(v113 - 64) = v118;
              *(v113 - 48) = v119;
              *(v113 + 32) = a7;
              *(v113 + 48) = vqtbl1q_s8(v117, xmmword_1003E3710);
              *v113 = v120;
              *(v113 + 16) = v121;
              v113 += 128;
              v114 += 2;
              v115 -= 32;
            }

            while (v115);
            if (v75 == v85)
            {
              goto LABEL_55;
            }

            v112 = v75 & 0xFFFFFFFFFFFFFFE0;
            if ((v75 & 0x1C) != 0)
            {
              goto LABEL_71;
            }

            v111 += v85;
          }

          else
          {
            v112 = 0;
LABEL_71:
            v122 = v111 + v75 - (v74 & 3);
            v123 = v91 + v112;
            v124 = v112 + v111;
            v125 = 4 * v124;
            do
            {
              a7.n128_u32[0] = *(result->u32 + v124);
              a7 = vmovl_u16(*&vmovl_u8(a7.n128_u64[0]));
              *(v93 + v125) = a7;
              v124 += 4;
              v125 += 16;
              v123 += 4;
            }

            while (v123);
            v111 = v122;
            if ((v74 & 3) == 0)
            {
              goto LABEL_55;
            }
          }
        }

        do
        {
          *(v93 + 4 * v111) = result->u8[v111];
          ++v111;
        }

        while (v111 < v13);
      }

LABEL_55:
      result = (result + a2);
      v93 += v88;
      ++v69;
      v87 += v88;
      v89 = (v89 + v88);
      v90 = (v90 + a2);
      if (!--v12)
      {
        return result;
      }
    }
  }

  if (v13 >= 1)
  {
    v17 = &result->u8[2];
    v18 = &a10->i32[2];
    do
    {
      *(v18 - 2) = *(v17 - 2);
      if (v13 != 1)
      {
        *(v18 - 1) = *(v17 - 1);
        if (v13 != 2)
        {
          *v18 = *v17;
        }
      }

      v17 += a2;
      v18 += v14;
      --v12;
    }

    while (v12);
  }

  return result;
}

int8x16_t *sub_100208C98(int8x16_t *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int32x4_t *a6, unint64_t a7, int *a8)
{
  v8 = a8[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a8;
  v10 = a7 >> 2;
  v11 = v9 - 4;
  v12 = (v9 - 8);
  if (v9 >= 8)
  {
    v15 = 0;
    v16 = a7 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = (v12 & 0xFFFFFFF8) + 8;
    v18 = v17 | 4;
    if ((v17 | 4) <= v11 + 1)
    {
      v18 = v11 + 1;
    }

    v19 = ~v17 + v18;
    v20 = a6 + 1;
    v21 = &a6[(v19 >> 2) + 1];
    v22 = &result->i8[(v19 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v23 = a6->i64 + 4 * v9;
    v24 = &result->i8[v9];
    v132 = ((v19 >> 2) + 1) & 0x7FFFFFFFFFFFFFF0;
    v25 = 4 * v10;
    v26 = &a6->i64[1] + 4;
    v27 = a6 + 4;
    v28 = result + 1;
    while (1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 8;
      v32 = v20;
      do
      {
        v33 = v31;
        v34 = vmovl_s8(*&result->i8[v30]);
        v35 = vmovl_s16(*v34.i8);
        v36 = vmovl_high_s16(v34);
        v30 += 8;
        v32[-1] = v35;
        *v32 = v36;
        v29 += 0x800000000;
        v32 += 2;
        v31 += 8;
      }

      while (v30 <= v12);
      if (v11 >= v30)
      {
        v30 = v29 >> 32;
        if (v19 <= 0x3B || &a6->i8[v29 >> 30] < &v22[v15 * a2 + v30] && result->u64 + v30 < v21 + v16 * v15 + (v29 >> 30))
        {
          goto LABEL_23;
        }

        v30 += 4 * v132;
        v37 = v33;
        v38 = 4 * v33;
        v39 = ((v19 >> 2) + 1) & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v41 = *(&result[2] + v37);
          v40 = *(&result[3] + v37);
          v43 = *(result + v37);
          v42 = *(&result[1] + v37);
          v44 = (a6 + v38);
          v45 = vmovl_s8(*v43.i8);
          v36 = vmovl_s16(*v45.i8);
          v46 = vmovl_s8(*v42.i8);
          v47 = vmovl_s8(*v41.i8);
          v48 = vmovl_high_s8(v40);
          v44[14] = vmovl_s16(*v48.i8);
          v44[15] = vmovl_high_s16(v48);
          v49 = vmovl_high_s8(v41);
          v44[10] = vmovl_s16(*v49.i8);
          v44[11] = vmovl_high_s16(v49);
          v50 = vmovl_high_s8(v42);
          v44[6] = vmovl_s16(*v50.i8);
          v44[7] = vmovl_high_s16(v50);
          v51 = vmovl_high_s8(v43);
          v44[2] = vmovl_s16(*v51.i8);
          v44[3] = vmovl_high_s16(v51);
          v52 = vmovl_s8(*v40.i8);
          v44[12] = vmovl_s16(*v52.i8);
          v44[13] = vmovl_high_s16(v52);
          v44[8] = vmovl_s16(*v47.i8);
          v44[9] = vmovl_high_s16(v47);
          v44[4] = vmovl_s16(*v46.i8);
          v44[5] = vmovl_high_s16(v46);
          *v44 = v36;
          v44[1] = vmovl_high_s16(v45);
          v38 += 256;
          v37 += 64;
          v39 -= 16;
        }

        while (v39);
        if ((v19 >> 2) + 1 != v132)
        {
LABEL_23:
          v53 = (v26 + 4 * v30);
          do
          {
            v54 = result->i8[v30 + 1];
            *(v53 - 3) = result->i8[v30];
            v55 = a6->i64 + 4 * v30;
            *(v55 + 4) = v54;
            v56 = result->i8[v30 + 3];
            *(v55 + 8) = result->i8[v30 + 2];
            *v53 = v56;
            v53 += 4;
            v30 += 4;
          }

          while (v30 <= v11);
        }
      }

      if (v30 >= v9)
      {
        goto LABEL_13;
      }

      v57 = v30;
      v58 = v9 - v30;
      if (v58 >= 4 && (a6 + 4 * v57 >= &v24[v15 * a2] || result->u64 + v57 >= v23 + v16 * v15))
      {
        if (v58 < 0x20)
        {
          v59 = 0;
LABEL_35:
          v70 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + v57;
          v71 = v59 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
          v72 = v59 + v57;
          v73 = 4 * v72;
          do
          {
            v36.i32[0] = *(result->i32 + v72);
            v36 = vmovl_s16(*&vmovl_s8(*v36.i8));
            *(a6 + v73) = v36;
            v72 += 4;
            v73 += 16;
            v71 += 4;
          }

          while (v71);
          v57 = v70;
          if (v58 == (v58 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }

          goto LABEL_40;
        }

        v59 = v58 & 0xFFFFFFFFFFFFFFE0;
        v60 = (v27 + 4 * v57);
        v61 = &v28->i8[v57];
        v62 = v58 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v63 = *v61[-2].i8;
          v64 = *v61->i8;
          v65 = vmovl_s8(*v63.i8);
          v66 = vmovl_high_s8(v63);
          v67 = vmovl_s8(*v61);
          v60[-2] = vmovl_s16(*v66.i8);
          v60[-1] = vmovl_high_s16(v66);
          v68 = vmovl_high_s8(v64);
          v69 = vmovl_s16(*v68.i8);
          v60[-4] = vmovl_s16(*v65.i8);
          v60[-3] = vmovl_high_s16(v65);
          v36 = vmovl_high_s16(v68);
          v60[2] = v69;
          v60[3] = v36;
          *v60 = vmovl_s16(*v67.i8);
          v60[1] = vmovl_high_s16(v67);
          v60 += 8;
          v61 += 4;
          v62 -= 32;
        }

        while (v62);
        if (v58 == v59)
        {
          goto LABEL_13;
        }

        if ((v58 & 0x1C) != 0)
        {
          goto LABEL_35;
        }

        v57 += v59;
      }

      do
      {
LABEL_40:
        a6->i32[v57] = result->i8[v57];
        ++v57;
      }

      while (v9 != v57);
LABEL_13:
      result = (result + a2);
      a6 = (a6 + v25);
      ++v15;
      v20 = (v20 + v25);
      v26 += v25;
      v27 = (v27 + v25);
      v28 = (v28 + a2);
      if (!--v8)
      {
        return result;
      }
    }
  }

  if (v9 >= 4)
  {
    v74 = 0;
    if (v11 <= 3)
    {
      v75 = 3;
    }

    else
    {
      v75 = v9 - 4;
    }

    v76 = ((v75 << 32) & 0x7FFFFFFC00000000) + 0x400000000;
    v77 = v76 >> 32;
    v78 = a7 & 0xFFFFFFFFFFFFFFFCLL;
    if (((v76 >> 32) | 1) > v9)
    {
      v79 = v77 + 1;
    }

    else
    {
      v79 = *a8;
    }

    v80 = v79 - v77;
    v81 = (v8 - 1);
    v82 = &a6[1] + 4 * v10 * v81 + ((4 * v75) & 0x1FFFFFFF0);
    v83 = &result->i8[v81 * a2 + 4 + (v75 & 0x7FFFFFFC)];
    v84 = (v75 >> 2) + 1;
    v85 = v76 >> 30;
    v86 = &result->i8[v79 - v77];
    v88 = v83 > a6 && v82 > result;
    v89 = ((a7 | a2) & 0x8000000000000000) != 0;
    v90 = v80 & 0xFFFFFFFFFFFFFFE0;
    v91 = v11 < 60 || v89 || v88;
    v92 = &a6->i64[1] + 4;
    v93 = 4 * v10;
    v94 = a6 + 4;
    v95 = result + 1;
    v96 = (v77 & 0xFFFFFFFFFFFFFFFCLL | v79 & 3) - v79;
    v97 = -v85;
    v98 = a6;
    while (1)
    {
      if (v91)
      {
        v99 = 0;
      }

      else
      {
        v101 = result[2];
        v100 = result[3];
        v103 = *result;
        v102 = result[1];
        v104 = vmovl_s8(*result->i8);
        a3 = vmovl_s16(*v104.i8);
        v105 = vmovl_s8(*v102.i8);
        v106 = vmovl_s8(*v101.i8);
        v107 = vmovl_high_s8(v100);
        *(v98 + 224) = vmovl_s16(*v107.i8);
        *(v98 + 240) = vmovl_high_s16(v107);
        v108 = vmovl_high_s8(v101);
        *(v98 + 160) = vmovl_s16(*v108.i8);
        *(v98 + 176) = vmovl_high_s16(v108);
        v109 = vmovl_high_s8(v102);
        *(v98 + 96) = vmovl_s16(*v109.i8);
        *(v98 + 112) = vmovl_high_s16(v109);
        v110 = vmovl_high_s8(v103);
        *(v98 + 32) = vmovl_s16(*v110.i8);
        *(v98 + 48) = vmovl_high_s16(v110);
        v111 = vmovl_s8(*v100.i8);
        *(v98 + 192) = vmovl_s16(*v111.i8);
        *(v98 + 208) = vmovl_high_s16(v111);
        *(v98 + 128) = vmovl_s16(*v106.i8);
        *(v98 + 144) = vmovl_high_s16(v106);
        *(v98 + 64) = vmovl_s16(*v105.i8);
        *(v98 + 80) = vmovl_high_s16(v105);
        v99 = 4 * (v84 & 0x3FFFFFF0);
        *v98 = a3;
        *(v98 + 16) = vmovl_high_s16(v104);
        if (v84 == (v84 & 0x3FFFFFF0))
        {
          goto LABEL_61;
        }
      }

      v112 = (v92 + 4 * v99);
      do
      {
        v113 = result->i8[v99 + 1];
        *(v112 - 3) = result->i8[v99];
        v114 = v98 + 4 * v99;
        *(v114 + 4) = v113;
        v115 = result->i8[v99 + 3];
        *(v114 + 8) = result->i8[v99 + 2];
        *v112 = v115;
        v112 += 4;
        v99 += 4;
      }

      while (v99 <= v11);
LABEL_61:
      if (v9 > v99)
      {
        v116 = v99;
        if (v80 >= 4 && (v98 + 4 * v99 >= &v86[v74 * a2 + v99] || &result->i8[v99] >= a6 + 4 * v79 + 4 * v99 + v97 + v78 * v74))
        {
          if (v80 >= 0x20)
          {
            v118 = v94->i64 + 4 * v99;
            v119 = &v95->i8[v116];
            v120 = v80 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v121 = *v119[-2].i8;
              v122 = *v119->i8;
              v123 = vmovl_s8(*v121.i8);
              v124 = vmovl_high_s8(v121);
              v125 = vmovl_s8(*v119);
              *(v118 - 32) = vmovl_s16(*v124.i8);
              *(v118 - 16) = vmovl_high_s16(v124);
              v126 = vmovl_high_s8(v122);
              v127 = vmovl_s16(*v126.i8);
              *(v118 - 64) = vmovl_s16(*v123.i8);
              *(v118 - 48) = vmovl_high_s16(v123);
              a3 = vmovl_high_s16(v126);
              *(v118 + 32) = v127;
              *(v118 + 48) = a3;
              *v118 = vmovl_s16(*v125.i8);
              *(v118 + 16) = vmovl_high_s16(v125);
              v118 += 128;
              v119 += 4;
              v120 -= 32;
            }

            while (v120);
            if (v80 == v90)
            {
              goto LABEL_55;
            }

            v117 = v80 & 0xFFFFFFFFFFFFFFE0;
            if ((v80 & 0x1C) != 0)
            {
              goto LABEL_71;
            }

            v116 += v90;
          }

          else
          {
            v117 = 0;
LABEL_71:
            v128 = v116 + v80 - (v79 & 3);
            v129 = v96 + v117;
            v130 = v117 + v116;
            v131 = 4 * v130;
            do
            {
              a3.n128_u32[0] = *(result->u32 + v130);
              a3 = vmovl_s16(*&vmovl_s8(a3.n128_u64[0]));
              *(v98 + v131) = a3;
              v130 += 4;
              v131 += 16;
              v129 += 4;
            }

            while (v129);
            v116 = v128;
            if ((v79 & 3) == 0)
            {
              goto LABEL_55;
            }
          }
        }

        do
        {
          *(v98 + 4 * v116) = result->i8[v116];
          ++v116;
        }

        while (v116 < v9);
      }

LABEL_55:
      result = (result + a2);
      v98 += v93;
      ++v74;
      v92 += v93;
      v94 = (v94 + v93);
      v95 = (v95 + a2);
      if (!--v8)
      {
        return result;
      }
    }
  }

  if (v9 >= 1)
  {
    v13 = &result->i8[2];
    v14 = &a6->i32[2];
    do
    {
      *(v14 - 2) = *(v13 - 2);
      if (v9 != 1)
      {
        *(v14 - 1) = *(v13 - 1);
        if (v9 != 2)
        {
          *v14 = *v13;
        }
      }

      v13 += a2;
      v14 += v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint16x8_t *sub_100209388(uint16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint32x4_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a2 >> 1;
  v10 = a6 >> 2;
  v11 = v8 - 4;
  v12 = (v8 - 8);
  if (v8 >= 8)
  {
    v15 = (v12 & 0xFFFFFFF8) + 8;
    v16 = v15 | 4;
    if ((v15 | 4) <= v11 + 1)
    {
      v16 = v11 + 1;
    }

    v17 = ~v15 + v16;
    v18 = (v17 >> 2) + 1;
    v19 = a5 + 1;
    v20 = 4 * v10;
    v21 = a5 + 2;
    while (1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 8;
      v25 = result;
      v26 = v19;
      do
      {
        v27 = v24;
        v28 = *v25++;
        v23 += 8;
        v26[-1] = vmovl_u16(*v28.i8);
        *v26 = vmovl_high_u16(v28);
        v22 += 0x800000000;
        v26 += 2;
        v24 += 8;
      }

      while (v23 <= v12);
      if (v11 >= v23)
      {
        v29 = v22 >> 32;
        if (v17 <= 0x1B)
        {
          goto LABEL_22;
        }

        v29 += 4 * (v18 & 0x7FFFFFFFFFFFFFF8);
        v30 = 4 * v27;
        v31 = 2 * v27;
        v32 = v18 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v34 = *(&result[2] + v31);
          v33 = *(&result[3] + v31);
          v36 = *(result + v31);
          v35 = *(&result[1] + v31);
          v37 = (a5 + v30);
          v37[6] = vmovl_u16(*v33.i8);
          v37[7] = vmovl_high_u16(v33);
          v37[4] = vmovl_u16(*v34.i8);
          v37[5] = vmovl_high_u16(v34);
          v37[2] = vmovl_u16(*v35.i8);
          v37[3] = vmovl_high_u16(v35);
          *v37 = vmovl_u16(*v36.i8);
          v37[1] = vmovl_high_u16(v36);
          v30 += 128;
          v31 += 64;
          v32 -= 8;
        }

        while (v32);
        if (v18 != (v18 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_22:
          v38 = 4 * v29;
          v39 = 2 * v29;
          do
          {
            *(a5 + v38) = vmovl_u16(*&result->i8[v39]);
            v29 += 4;
            v38 += 16;
            v39 += 8;
          }

          while (v29 <= v11);
        }
      }

      else
      {
        LODWORD(v29) = v23;
      }

      if (v29 >= v8)
      {
        goto LABEL_13;
      }

      v40 = v29;
      v41 = v8 - v29;
      v42 = v40;
      if (v41 >= 4)
      {
        if (v41 < 0x10)
        {
          v43 = 0;
LABEL_32:
          v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + v40;
          v49 = v43 - (v41 & 0xFFFFFFFFFFFFFFFCLL);
          v50 = v43 + v40;
          v51 = 2 * v50;
          v52 = 4 * v50;
          do
          {
            *(a5 + v52) = vmovl_u16(*&result->i8[v51]);
            v51 += 8;
            v52 += 16;
            v49 += 4;
          }

          while (v49);
          if (v41 == (v41 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }

          goto LABEL_37;
        }

        v43 = v41 & 0xFFFFFFFFFFFFFFF0;
        v44 = (v21 + 4 * v40);
        v45 = (result + 2 * v40);
        v46 = v41 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v47 = *v45;
          v48 = v45[1];
          v45 += 2;
          v44[-2] = vmovl_u16(*v47.i8);
          v44[-1] = vmovl_high_u16(v47);
          *v44 = vmovl_u16(*v48.i8);
          v44[1] = vmovl_high_u16(v48);
          v44 += 4;
          v46 -= 16;
        }

        while (v46);
        if (v41 == v43)
        {
          goto LABEL_13;
        }

        if ((v41 & 0xC) != 0)
        {
          goto LABEL_32;
        }

        v42 = v43 + v40;
      }

      do
      {
LABEL_37:
        a5->i32[v42] = result->u16[v42];
        ++v42;
      }

      while (v8 != v42);
LABEL_13:
      v19 = (v19 + v20);
      result = (result + 2 * v9);
      a5 = (a5 + v20);
      v21 = (v21 + v20);
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    if (v11 <= 3)
    {
      v53 = 3;
    }

    else
    {
      v53 = v8 - 4;
    }

    v54 = (((v53 << 32) & 0x7FFFFFFC00000000) + 0x400000000) >> 32;
    if ((v54 | 1) > v8)
    {
      v55 = v54 + 1;
    }

    else
    {
      v55 = v8;
    }

    v56 = v55 - v54;
    v57 = (v53 >> 2) + 1;
    v58 = (v55 - v54) & 0xFFFFFFFFFFFFFFF0;
    v59 = (v55 - v54) & 0xC;
    v60 = v55 & 3;
    v61 = v55 - v54 - v60;
    v62 = 4 * v10;
    v63 = 2 * v9;
    v64 = a5 + 2;
    v65 = (v54 & 0xFFFFFFFFFFFFFFFCLL | v60) - v55;
    while (1)
    {
      if (v11 >= 28)
      {
        v68 = result[2];
        v67 = result[3];
        v69 = result[1];
        v70 = vmovl_u16(*result->i8);
        v71 = vmovl_high_u16(*result);
        a5[6] = vmovl_u16(*v67.i8);
        a5[7] = vmovl_high_u16(v67);
        a5[4] = vmovl_u16(*v68.i8);
        a5[5] = vmovl_high_u16(v68);
        a5[2] = vmovl_u16(*v69.i8);
        a5[3] = vmovl_high_u16(v69);
        *a5 = v70;
        a5[1] = v71;
        v66 = 4 * (v57 & 0x3FFFFFF8);
        if (v57 == (v57 & 0x3FFFFFF8))
        {
          goto LABEL_52;
        }
      }

      else
      {
        v66 = 0;
      }

      v72 = 4 * v66;
      v73 = 2 * v66;
      do
      {
        *(a5 + v72) = vmovl_u16(*&result->i8[v73]);
        v66 += 4;
        v72 += 16;
        v73 += 8;
      }

      while (v66 <= v11);
LABEL_52:
      if (v8 > v66)
      {
        v74 = v66;
        if (v56 >= 4)
        {
          if (v56 >= 0x10)
          {
            v76 = (v64 + 4 * v66);
            v77 = v58;
            v78 = (result + 2 * v66);
            do
            {
              v79 = *v78;
              v80 = v78[1];
              v78 += 2;
              v76[-2] = vmovl_u16(*v79.i8);
              v76[-1] = vmovl_high_u16(v79);
              *v76 = vmovl_u16(*v80.i8);
              v76[1] = vmovl_high_u16(v80);
              v76 += 4;
              v77 -= 16;
            }

            while (v77);
            if (v56 == v58)
            {
              goto LABEL_46;
            }

            v75 = v58;
            if (v59)
            {
              goto LABEL_60;
            }

            v74 = v66 + v58;
          }

          else
          {
            v75 = 0;
LABEL_60:
            v74 = v66 + v61;
            v81 = v65 + v75;
            v82 = v75 + v66;
            v83 = 2 * v82;
            v84 = 4 * v82;
            do
            {
              *(a5 + v84) = vmovl_u16(*&result->i8[v83]);
              v83 += 8;
              v84 += 16;
              v81 += 4;
            }

            while (v81);
            if (!v60)
            {
              goto LABEL_46;
            }
          }
        }

        do
        {
          a5->i32[v74] = result->u16[v74];
          ++v74;
        }

        while (v74 < v8);
      }

LABEL_46:
      result = (result + v63);
      a5 = (a5 + v62);
      v64 = (v64 + v62);
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 1)
  {
    v13 = &result->u16[2];
    v14 = &a5->i64[1];
    do
    {
      *(v14 - 2) = *(v13 - 2);
      if (v8 != 1)
      {
        *(v14 - 1) = *(v13 - 1);
        if (v8 != 2)
        {
          *v14 = *v13;
        }
      }

      v13 += v9;
      v14 = (v14 + 4 * v10);
      --v7;
    }

    while (v7);
  }

  return result;
}

int16x8_t *sub_1002097EC(int16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int32x4_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a2 >> 1;
  v10 = a6 >> 2;
  v11 = v8 - 4;
  v12 = (v8 - 8);
  if (v8 >= 8)
  {
    v15 = (v12 & 0xFFFFFFF8) + 8;
    v16 = v15 | 4;
    if ((v15 | 4) <= v11 + 1)
    {
      v16 = v11 + 1;
    }

    v17 = ~v15 + v16;
    v18 = (v17 >> 2) + 1;
    v19 = a5 + 1;
    v20 = 4 * v10;
    v21 = a5 + 2;
    while (1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 8;
      v25 = result;
      v26 = v19;
      do
      {
        v27 = v24;
        v28 = *v25++;
        v23 += 8;
        v26[-1] = vmovl_s16(*v28.i8);
        *v26 = vmovl_high_s16(v28);
        v22 += 0x800000000;
        v26 += 2;
        v24 += 8;
      }

      while (v23 <= v12);
      if (v11 >= v23)
      {
        v29 = v22 >> 32;
        if (v17 <= 0x1B)
        {
          goto LABEL_22;
        }

        v29 += 4 * (v18 & 0x7FFFFFFFFFFFFFF8);
        v30 = 4 * v27;
        v31 = 2 * v27;
        v32 = v18 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v34 = *(&result[2] + v31);
          v33 = *(&result[3] + v31);
          v36 = *(result + v31);
          v35 = *(&result[1] + v31);
          v37 = (a5 + v30);
          v37[6] = vmovl_s16(*v33.i8);
          v37[7] = vmovl_high_s16(v33);
          v37[4] = vmovl_s16(*v34.i8);
          v37[5] = vmovl_high_s16(v34);
          v37[2] = vmovl_s16(*v35.i8);
          v37[3] = vmovl_high_s16(v35);
          *v37 = vmovl_s16(*v36.i8);
          v37[1] = vmovl_high_s16(v36);
          v30 += 128;
          v31 += 64;
          v32 -= 8;
        }

        while (v32);
        if (v18 != (v18 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_22:
          v38 = 4 * v29;
          v39 = 2 * v29;
          do
          {
            *(a5 + v38) = vmovl_s16(*&result->i8[v39]);
            v29 += 4;
            v38 += 16;
            v39 += 8;
          }

          while (v29 <= v11);
        }
      }

      else
      {
        LODWORD(v29) = v23;
      }

      if (v29 >= v8)
      {
        goto LABEL_13;
      }

      v40 = v29;
      v41 = v8 - v29;
      v42 = v40;
      if (v41 >= 4)
      {
        if (v41 < 0x10)
        {
          v43 = 0;
LABEL_32:
          v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + v40;
          v49 = v43 - (v41 & 0xFFFFFFFFFFFFFFFCLL);
          v50 = v43 + v40;
          v51 = 2 * v50;
          v52 = 4 * v50;
          do
          {
            *(a5 + v52) = vmovl_s16(*&result->i8[v51]);
            v51 += 8;
            v52 += 16;
            v49 += 4;
          }

          while (v49);
          if (v41 == (v41 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }

          goto LABEL_37;
        }

        v43 = v41 & 0xFFFFFFFFFFFFFFF0;
        v44 = (v21 + 4 * v40);
        v45 = (result + 2 * v40);
        v46 = v41 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v47 = *v45;
          v48 = v45[1];
          v45 += 2;
          v44[-2] = vmovl_s16(*v47.i8);
          v44[-1] = vmovl_high_s16(v47);
          *v44 = vmovl_s16(*v48.i8);
          v44[1] = vmovl_high_s16(v48);
          v44 += 4;
          v46 -= 16;
        }

        while (v46);
        if (v41 == v43)
        {
          goto LABEL_13;
        }

        if ((v41 & 0xC) != 0)
        {
          goto LABEL_32;
        }

        v42 = v43 + v40;
      }

      do
      {
LABEL_37:
        a5->i32[v42] = result->i16[v42];
        ++v42;
      }

      while (v8 != v42);
LABEL_13:
      v19 = (v19 + v20);
      result = (result + 2 * v9);
      a5 = (a5 + v20);
      v21 = (v21 + v20);
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    if (v11 <= 3)
    {
      v53 = 3;
    }

    else
    {
      v53 = v8 - 4;
    }

    v54 = (((v53 << 32) & 0x7FFFFFFC00000000) + 0x400000000) >> 32;
    if ((v54 | 1) > v8)
    {
      v55 = v54 + 1;
    }

    else
    {
      v55 = v8;
    }

    v56 = v55 - v54;
    v57 = (v53 >> 2) + 1;
    v58 = (v55 - v54) & 0xFFFFFFFFFFFFFFF0;
    v59 = (v55 - v54) & 0xC;
    v60 = v55 & 3;
    v61 = v55 - v54 - v60;
    v62 = 4 * v10;
    v63 = 2 * v9;
    v64 = a5 + 2;
    v65 = (v54 & 0xFFFFFFFFFFFFFFFCLL | v60) - v55;
    while (1)
    {
      if (v11 >= 28)
      {
        v68 = result[2];
        v67 = result[3];
        v69 = result[1];
        v70 = vmovl_s16(*result->i8);
        v71 = vmovl_high_s16(*result);
        a5[6] = vmovl_s16(*v67.i8);
        a5[7] = vmovl_high_s16(v67);
        a5[4] = vmovl_s16(*v68.i8);
        a5[5] = vmovl_high_s16(v68);
        a5[2] = vmovl_s16(*v69.i8);
        a5[3] = vmovl_high_s16(v69);
        *a5 = v70;
        a5[1] = v71;
        v66 = 4 * (v57 & 0x3FFFFFF8);
        if (v57 == (v57 & 0x3FFFFFF8))
        {
          goto LABEL_52;
        }
      }

      else
      {
        v66 = 0;
      }

      v72 = 4 * v66;
      v73 = 2 * v66;
      do
      {
        *(a5 + v72) = vmovl_s16(*&result->i8[v73]);
        v66 += 4;
        v72 += 16;
        v73 += 8;
      }

      while (v66 <= v11);
LABEL_52:
      if (v8 > v66)
      {
        v74 = v66;
        if (v56 >= 4)
        {
          if (v56 >= 0x10)
          {
            v76 = (v64 + 4 * v66);
            v77 = v58;
            v78 = (result + 2 * v66);
            do
            {
              v79 = *v78;
              v80 = v78[1];
              v78 += 2;
              v76[-2] = vmovl_s16(*v79.i8);
              v76[-1] = vmovl_high_s16(v79);
              *v76 = vmovl_s16(*v80.i8);
              v76[1] = vmovl_high_s16(v80);
              v76 += 4;
              v77 -= 16;
            }

            while (v77);
            if (v56 == v58)
            {
              goto LABEL_46;
            }

            v75 = v58;
            if (v59)
            {
              goto LABEL_60;
            }

            v74 = v66 + v58;
          }

          else
          {
            v75 = 0;
LABEL_60:
            v74 = v66 + v61;
            v81 = v65 + v75;
            v82 = v75 + v66;
            v83 = 2 * v82;
            v84 = 4 * v82;
            do
            {
              *(a5 + v84) = vmovl_s16(*&result->i8[v83]);
              v83 += 8;
              v84 += 16;
              v81 += 4;
            }

            while (v81);
            if (!v60)
            {
              goto LABEL_46;
            }
          }
        }

        do
        {
          a5->i32[v74] = result->i16[v74];
          ++v74;
        }

        while (v74 < v8);
      }

LABEL_46:
      result = (result + v63);
      a5 = (a5 + v62);
      v64 = (v64 + v62);
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 1)
  {
    v13 = &result->i16[2];
    v14 = &a5->i64[1];
    do
    {
      *(v14 - 2) = *(v13 - 2);
      if (v8 != 1)
      {
        *(v14 - 1) = *(v13 - 1);
        if (v8 != 2)
        {
          *v14 = *v13;
        }
      }

      v13 += v9;
      v14 = (v14 + 4 * v10);
      --v7;
    }

    while (v7);
  }

  return result;
}

char *sub_100209C50(char *__src, unint64_t a2, int a3, int a4, char *__dst, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = __src;
    v10 = 4 * *a7;
    v11 = 4 * (a2 >> 2);
    v12 = 4 * (a6 >> 2);
    do
    {
      --v7;
      __src = memcpy(__dst, v9, v10);
      v9 += v11;
      __dst += v12;
    }

    while (v7);
  }

  return __src;
}

uint64_t sub_100209CC4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a2 >> 2;
  v10 = a6 >> 2;
  v11 = v8 - 4;
  if (v8 >= 4)
  {
    v16 = v8 & 3;
    v17 = 4 * v9;
    v18 = 4 * v10;
    v19 = v16 - v8;
    while (1)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 4;
      do
      {
        v24 = v23;
        v25 = *(result + v20);
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v44 = result;
          v46 = a5;
          v42 = v7;
          v38 = v16;
          v40 = v8;
          v34 = v18;
          v36 = v17;
          v32 = v19;
          v30 = v25;
          sub_1003C83B4();
          v25 = v30;
          v19 = v32;
          v18 = v34;
          v17 = v36;
          v16 = v38;
          v8 = v40;
          v7 = v42;
          result = v44;
          a5 = v46;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        v45 = result;
        v47 = a5;
        v43 = v7;
        v39 = v16;
        v41 = v8;
        v35 = v18;
        v37 = v17;
        v33 = v19;
        v31 = v25;
        sub_1003C83FC();
        v25 = v31;
        v19 = v33;
        v18 = v35;
        v17 = v37;
        v16 = v39;
        v8 = v41;
        v7 = v43;
        result = v45;
        a5 = v47;
LABEL_14:
        *(a5 + v20) = vcvtq_s32_f32(vaddq_f32(v25, vorrq_s8(vandq_s8(xmmword_1004B0010, v25), xmmword_1004B0030)));
        v22 += 0x400000000;
        v21 += 4;
        v20 += 16;
        v23 = v24 + 4;
      }

      while (v11 >= v21);
      if (v8 > v21)
      {
        v26 = v22 >> 32;
        v27 = v8 - (v22 >> 32);
        if (v27 < 4)
        {
          goto LABEL_27;
        }

        v26 += v27 - v16;
        v28 = v19 + v24;
        v29 = 4 * v24;
        do
        {
          *(a5 + v29) = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*(result + v29)))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(result + v29), *(result + v29), 8uLL)))));
          v29 += 16;
          v28 += 4;
        }

        while (v28);
        if (v16)
        {
LABEL_27:
          do
          {
            *(a5 + 4 * v26) = rintf(*(result + 4 * v26));
            ++v26;
          }

          while (v26 < v8);
        }
      }

      result += v17;
      a5 += v18;
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 1)
  {
    v12 = (result + 8);
    v13 = 4 * v9;
    v14 = (a5 + 8);
    v15 = 4 * v10;
    do
    {
      *(v14 - 2) = rintf(*(v12 - 2));
      if (v8 != 1)
      {
        *(v14 - 1) = rintf(*(v12 - 1));
        if (v8 != 2)
        {
          *v14 = rintf(*v12);
        }
      }

      v12 = (v12 + v13);
      v14 = (v14 + v15);
      --v7;
    }

    while (v7);
  }

  return result;
}

float64x2_t *sub_100209F30(float64x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int32x4_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a2 >> 3;
  v10 = a6 >> 2;
  v11 = v8 - 4;
  if (v8 >= 4)
  {
    v16 = v8 & 3;
    v17 = 4 * v10;
    v18 = result + 1;
    v19 = 8 * v9;
    v20 = v16 - v8;
    while (1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 4;
      v24 = v18;
      v25 = a5;
      do
      {
        v26 = v23;
        v27 = v24[-1];
        v28 = *v24;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v55 = a5;
          v53 = result;
          v51 = v7;
          v47 = v16;
          v49 = v8;
          v43 = v18;
          v45 = v17;
          v39 = v20;
          v41 = v19;
          v35 = v27;
          v37 = v28;
          sub_1003C83B4();
          v27 = v35;
          v28 = v37;
          v20 = v39;
          v19 = v41;
          v18 = v43;
          v17 = v45;
          v16 = v47;
          v8 = v49;
          v7 = v51;
          result = v53;
          a5 = v55;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        v56 = a5;
        v54 = result;
        v52 = v7;
        v48 = v16;
        v50 = v8;
        v44 = v18;
        v46 = v17;
        v40 = v20;
        v42 = v19;
        v36 = v27;
        v38 = v28;
        sub_1003C83FC();
        v27 = v36;
        v28 = v38;
        v20 = v40;
        v19 = v42;
        v18 = v44;
        v17 = v46;
        v16 = v48;
        v8 = v50;
        v7 = v52;
        result = v54;
        a5 = v56;
LABEL_14:
        v29 = vcvt_hight_f32_f64(vcvt_f32_f64(v27), v28);
        *v25++ = vcvtq_s32_f32(vaddq_f32(v29, vorrq_s8(vandq_s8(xmmword_1004B0010, v29), xmmword_1004B0030)));
        v22 += 0x400000000;
        v21 += 4;
        v24 += 2;
        v23 = v26 + 4;
      }

      while (v11 >= v21);
      if (v8 > v21)
      {
        v30 = v22 >> 32;
        v31 = v8 - (v22 >> 32);
        if (v31 < 4)
        {
          goto LABEL_27;
        }

        v30 += v31 - v16;
        v32 = v20 + v26;
        v33 = 8 * v26;
        v34 = 4 * v26;
        do
        {
          *(a5 + v34) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(result + v33))), vcvtq_s64_f64(vrndxq_f64(*(result + v33 + 16))));
          v33 += 32;
          v34 += 16;
          v32 += 4;
        }

        while (v32);
        if (v16)
        {
LABEL_27:
          do
          {
            a5->i32[v30] = rint(result->f64[v30]);
            ++v30;
          }

          while (v30 < v8);
        }
      }

      a5 = (a5 + v17);
      v18 = (v18 + v19);
      result = (result + v19);
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 1)
  {
    v12 = result + 1;
    v13 = 8 * v9;
    v14 = &a5->i64[1];
    v15 = 4 * v10;
    do
    {
      *(v14 - 2) = rint(v12[-1].f64[0]);
      if (v8 != 1)
      {
        *(v14 - 1) = rint(v12[-1].f64[1]);
        if (v8 != 2)
        {
          *v14 = rint(v12->f64[0]);
        }
      }

      v12 = (v12 + v13);
      v14 = (v14 + v15);
      --v7;
    }

    while (v7);
  }

  return result;
}

int8x16_t *sub_10020A1D0(int8x16_t *result, uint64_t a2, float a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unsigned int *a8)
{
  v10 = a8[1];
  if (!v10)
  {
    return result;
  }

  v11 = *a8;
  v12 = a7 >> 2;
  v13 = v10 - 1;
  if (v11 >= 8)
  {
    v16 = 0;
    v17 = (v11 - 8);
    v18 = (v11 - 4);
    v19 = a7 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (v17 & 0xFFFFFFF8) + 8;
    v21 = v20 | 4;
    if ((v20 | 4uLL) <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    v22 = ~v20 + v21;
    v23 = (v22 >> 2) + 1;
    v24 = (a6 + 16);
    v25 = a6 + 16 + 16 * (v22 >> 2);
    v26 = &result->i8[(v22 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v27 = a6 + 4 * v11;
    v28 = &result->i8[v11];
    v29 = 4 * v12;
    v30 = a6 + 12;
    while (1)
    {
      v31 = 0;
      v32 = 0;
      v33 = v13;
      v34 = 8;
      v35 = v24;
      do
      {
        v36 = v34;
        v37 = vmovl_u8(*&result->i8[v32]);
        v38 = vcvtq_f32_u32(vmovl_u16(*v37.i8));
        v39 = vcvtq_f32_u32(vmovl_high_u16(v37));
        v32 += 8;
        v35[-1] = v38;
        *v35 = v39;
        v31 += 0x800000000;
        v35 += 2;
        v34 += 8;
      }

      while (v32 <= v17);
      if (v18 >= v32)
      {
        v32 = v31 >> 32;
        if (v22 <= 0x3B || a6 + (v31 >> 30) < &v26[v16 * a2 + v32] && result->u64 + v32 < v25 + v19 * v16 + (v31 >> 30))
        {
          goto LABEL_23;
        }

        v32 += 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v40 = v36;
        v41 = 4 * v36;
        v42 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v44 = *(result + v40);
          v43 = *(&result[1] + v40);
          v121.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v43, xmmword_1003E3850));
          v121.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v43, xmmword_1003E3840));
          v46 = *(&result[2] + v40);
          v45 = *(&result[3] + v40);
          v121.val[3] = vcvtq_f32_u32(vqtbl1q_s8(v43, xmmword_1003E3870));
          v121.val[2] = vcvtq_f32_u32(vqtbl1q_s8(v43, xmmword_1003E3860));
          v123.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v44, xmmword_1003E3850));
          v123.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v44, xmmword_1003E3840));
          v123.val[3] = vcvtq_f32_u32(vqtbl1q_s8(v44, xmmword_1003E3870));
          v123.val[2] = vcvtq_f32_u32(vqtbl1q_s8(v44, xmmword_1003E3860));
          v47 = (a6 + v41);
          vst4q_f32(v47, v123);
          v47 += 16;
          vst4q_f32(v47, v121);
          v48 = (a6 + v41 + 128);
          v49 = (a6 + v41 + 192);
          v121.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v45, xmmword_1003E3850));
          v121.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v45, xmmword_1003E3840));
          v121.val[3] = vcvtq_f32_u32(vqtbl1q_s8(v45, xmmword_1003E3870));
          v121.val[2] = vcvtq_f32_u32(vqtbl1q_s8(v45, xmmword_1003E3860));
          v50 = vcvtq_f32_u32(vqtbl1q_s8(v46, xmmword_1003E3850));
          v38 = vcvtq_f32_u32(vqtbl1q_s8(v46, xmmword_1003E3840));
          v39 = vqtbl1q_s8(v46, xmmword_1003E3860);
          v51 = vcvtq_f32_u32(vqtbl1q_s8(v46, xmmword_1003E3870));
          v52 = vcvtq_f32_u32(v39);
          vst4q_f32(v48, *v38.f32);
          vst4q_f32(v49, v121);
          v41 += 256;
          v40 += 64;
          v42 -= 16;
        }

        while (v42);
        if (v23 != (v23 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_23:
          v53 = (v30 + 4 * v32);
          do
          {
            v39.i8[0] = result->i8[v32];
            v54 = v39.u32[0];
            v38.i8[0] = result->i8[v32 + 1];
            v55 = v38.u32[0];
            *(v53 - 3) = v54;
            v56 = a6 + 4 * v32;
            *(v56 + 4) = v55;
            LOBYTE(v54) = result->i8[v32 + 2];
            *v39.i32 = LODWORD(v54);
            LOBYTE(v55) = result->i8[v32 + 3];
            v38.f32[0] = LODWORD(v55);
            *(v56 + 8) = v39.i32[0];
            *v53 = v38.f32[0];
            v53 += 4;
            v32 += 4;
          }

          while (v32 <= v18);
        }
      }

      if (v32 >= v11)
      {
        goto LABEL_13;
      }

      v57 = v32;
      v58 = v11 - v32;
      if (v58 >= 4)
      {
        if (a6 + 4 * v57 >= &v28[v16 * a2] || result->u64 + v57 >= v27 + v19 * v16)
        {
          if (v58 < 0x10)
          {
            v60 = 0;
LABEL_37:
            v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + v57;
            v69 = v60 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
            v70 = v60 + v57;
            v71 = 4 * v70;
            do
            {
              v39.i32[0] = *(result->i32 + v70);
              v39 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v39.i8)));
              *(a6 + v71) = v39;
              v70 += 4;
              v71 += 16;
              v69 += 4;
            }

            while (v69);
            if (v58 == (v58 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_13;
            }

            goto LABEL_42;
          }

          v60 = v58 & 0xFFFFFFFFFFFFFFF0;
          v61 = 4 * v57;
          v62 = v57;
          v63 = v58 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v64 = *(result + v62);
            v65 = vqtbl1q_s8(v64, xmmword_1003E3710);
            v66 = vqtbl1q_s8(v64, xmmword_1003E3700);
            v67 = vqtbl1q_s8(v64, xmmword_1003E3730);
            v39 = vcvtq_f32_u32(vqtbl1q_s8(v64, xmmword_1003E3720));
            v68 = a6 + v61;
            *(v68 + 32) = vcvtq_f32_u32(v66);
            *(v68 + 48) = vcvtq_f32_u32(v65);
            *v68 = v39;
            *(v68 + 16) = vcvtq_f32_u32(v67);
            v62 += 16;
            v61 += 64;
            v63 -= 16;
          }

          while (v63);
          if (v58 == v60)
          {
            goto LABEL_13;
          }

          if ((v58 & 0xC) != 0)
          {
            goto LABEL_37;
          }

          v59 = v60 + v57;
        }

        else
        {
          v59 = v57;
        }
      }

      else
      {
        v59 = v57;
      }

      do
      {
LABEL_42:
        v39.i8[0] = result->i8[v59];
        *v39.i32 = v39.u32[0];
        *(a6 + 4 * v59++) = v39.i32[0];
      }

      while (v11 != v59);
LABEL_13:
      result = (result + a2);
      a6 += v29;
      LODWORD(v13) = v33 - 1;
      ++v16;
      v24 = (v24 + v29);
      v30 += v29;
      if (!v33)
      {
        return result;
      }
    }
  }

  if (v11 >= 4)
  {
    v72 = (v11 - 4);
    v73 = (v72 & 0x7FFFFFFC) + 4;
    v74 = a6 + ((4 * v72) & 0x1FFFFFFF0) + 16;
    v75 = v12 * v13;
    if ((v72 & 0x7FFFFFFC) + 5 <= v11)
    {
      v76 = *a8;
    }

    else
    {
      v76 = (v72 & 0x7FFFFFFC) + 5;
    }

    v77 = a6 + 4 * (v75 + v76);
    v78 = v76 - (v72 & 0x7FFFFFFC) - 4;
    v79 = v74 + 4 * v75;
    v80 = (v72 >> 2) + 1;
    v82 = result->u64 + v73 + v13 * a2 > a6 && v79 > result;
    v83 = ((a7 | a2) & 0x8000000000000000) != 0;
    v85 = v74 < result->u64 + v76 + v13 * a2 && result->u64 + v73 < v77;
    v86 = v76 & 3;
    v87 = v72 < 0x3C || v83 || v82;
    v88 = v78 < 4 || v83 || v85;
    v89 = 4 * v12;
    v90 = v76 & 0xFFFFFFFC;
    v91 = a6 + 16 * ((v72 >> 2) & 0x1FFFFFFF) + 16;
    while (1)
    {
      v92 = v13;
      if (v87)
      {
        break;
      }

      v94 = v80 & 0x3FFFFFF0;
      v95 = result;
      v96 = a6;
      do
      {
        v97 = v95[1];
        v122.val[1] = vcvtq_f32_u32(vqtbl1q_s8(*v95, xmmword_1003E3850));
        v122.val[0] = vcvtq_f32_u32(vqtbl1q_s8(*v95, xmmword_1003E3840));
        v99 = v95[2];
        v98 = v95[3];
        v122.val[3] = vcvtq_f32_u32(vqtbl1q_s8(*v95, xmmword_1003E3870));
        v122.val[2] = vcvtq_f32_u32(vqtbl1q_s8(*v95, xmmword_1003E3860));
        v100 = v96;
        vst4q_f32(v100, v122);
        v100 += 16;
        v122.val[3] = vcvtq_f32_u32(vqtbl1q_s8(v98, xmmword_1003E3850));
        v124.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v99, xmmword_1003E3850));
        v120.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v97, xmmword_1003E3850));
        v120.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v97, xmmword_1003E3840));
        v120.val[3] = vcvtq_f32_u32(vqtbl1q_s8(v97, xmmword_1003E3870));
        v120.val[2] = vcvtq_f32_u32(vqtbl1q_s8(v97, xmmword_1003E3860));
        vst4q_f32(v100, v120);
        v124.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v99, xmmword_1003E3840));
        v124.val[3] = vcvtq_f32_u32(vqtbl1q_s8(v99, xmmword_1003E3870));
        v124.val[2] = vcvtq_f32_u32(vqtbl1q_s8(v99, xmmword_1003E3860));
        v101 = (v96 + 128);
        vst4q_f32(v101, v124);
        v122.val[2] = vcvtq_f32_u32(vqtbl1q_s8(v98, xmmword_1003E3840));
        v8 = vqtbl1q_s8(v98, xmmword_1003E3860);
        v9 = vqtbl1q_s8(v98, xmmword_1003E3870);
        v102 = vcvtq_f32_u32(v9);
        v103 = vcvtq_f32_u32(v8);
        v104 = (v96 + 192);
        vst4q_f32(v104, *(&v122 + 32));
        v96 += 256;
        v95 += 4;
        v94 -= 16;
      }

      while (v94);
      v93 = 4 * (v80 & 0x3FFFFFF0);
      if (v80 != (v80 & 0x3FFFFFF0))
      {
        goto LABEL_66;
      }

LABEL_68:
      if (v11 > v93)
      {
        v108 = (v72 & 0x7FFFFFFC) + 4;
        if (!v88)
        {
          if (v78 >= 0x10)
          {
            v110 = 16 * ((v72 >> 2) & 0x1FFFFFFF) + 16;
            v111 = (v72 & 0x7FFFFFFC) + 4;
            v112 = v78 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v113 = *(result + v111);
              v114 = vqtbl1q_s8(v113, xmmword_1003E3710);
              v115 = vqtbl1q_s8(v113, xmmword_1003E3700);
              v116 = vqtbl1q_s8(v113, xmmword_1003E3730);
              v8 = vcvtq_f32_u32(vqtbl1q_s8(v113, xmmword_1003E3720));
              v117 = a6 + v110;
              *(v117 + 32) = vcvtq_f32_u32(v115);
              *(v117 + 48) = vcvtq_f32_u32(v114);
              v9 = vcvtq_f32_u32(v116);
              *v117 = v8;
              *(v117 + 16) = v9;
              v111 += 16;
              v110 += 64;
              v112 -= 16;
            }

            while (v112);
            if (v78 == (v78 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_60;
            }

            v109 = v78 & 0xFFFFFFFFFFFFFFF0;
            v108 = v73 + (v78 & 0xFFFFFFFFFFFFFFF0);
            if ((v78 & 0xC) != 0)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v109 = 0;
LABEL_76:
            v118 = v73 + v109;
            v119 = (v91 + 4 * v109);
            do
            {
              v8.i32[0] = *(result->i32 + v118);
              v8 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v8.i8)));
              *v119++ = v8;
              v118 += 4;
            }

            while (v90 != v118);
            v108 = v73 + v78 - v86;
            if (!v86)
            {
              goto LABEL_60;
            }
          }
        }

        do
        {
          v8.i8[0] = result->i8[v108];
          *v8.i32 = v8.u32[0];
          *(a6 + 4 * v108++) = v8.i32[0];
        }

        while (v108 < v11);
      }

LABEL_60:
      result = (result + a2);
      LODWORD(v13) = v92 - 1;
      a6 += v89;
      v91 += v89;
      if (!v92)
      {
        return result;
      }
    }

    v93 = 0;
LABEL_66:
    v105 = a6 + 4 * v93;
    do
    {
      v8.i8[0] = result->i8[v93];
      v106 = v8.u32[0];
      v9.i8[0] = result->i8[v93 + 1];
      v107 = v9.u32[0];
      *v105 = v106;
      *(v105 + 4) = v107;
      LOBYTE(v106) = result->i8[v93 + 2];
      *v8.i32 = LODWORD(v106);
      LOBYTE(v107) = result->i8[v93 + 3];
      *v9.i32 = LODWORD(v107);
      *(v105 + 8) = v8.i32[0];
      *(v105 + 12) = v9.i32[0];
      v93 += 4;
      v105 += 16;
    }

    while (v93 <= v72);
    goto LABEL_68;
  }

  if (v11 >= 1)
  {
    v14 = &result->i8[2];
    v15 = (a6 + 8);
    do
    {
      LOBYTE(a3) = *(v14 - 2);
      a3 = LODWORD(a3);
      *(v15 - 2) = a3;
      if (v11 != 1)
      {
        LOBYTE(a3) = *(v14 - 1);
        a3 = LODWORD(a3);
        *(v15 - 1) = a3;
        if (v11 != 2)
        {
          LOBYTE(a3) = *v14;
          a3 = LODWORD(a3);
          *v15 = a3;
        }
      }

      v14 += a2;
      v15 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

int8x16_t *sub_10020A960(int8x16_t *result, uint64_t a2, double a3, uint64_t a4, uint64_t a5, int8x16_t *a6, unint64_t a7, unsigned int *a8)
{
  v10 = a8[1];
  if (!v10)
  {
    return result;
  }

  v11 = *a8;
  v12 = a7 >> 2;
  v13 = v10 - 1;
  if (v11 >= 8)
  {
    v16 = 0;
    v17 = (v11 - 8);
    v18 = (v11 - 4);
    v19 = a7 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (v17 & 0xFFFFFFF8) + 8;
    v21 = v20 | 4;
    if ((v20 | 4uLL) <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    v22 = ~v20 + v21;
    v23 = (v22 >> 2) + 1;
    v24 = a6 + 1;
    v25 = &a6[(v22 >> 2) + 1];
    v26 = &result->i8[(v22 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v27 = a6->i64 + 4 * v11;
    v28 = &result->i8[v11];
    v29 = 4 * v12;
    v30 = &a6->i64[1] + 4;
    while (1)
    {
      v31 = 0;
      v32 = 0;
      v33 = v13;
      v34 = 8;
      v35 = v24;
      do
      {
        v36 = v34;
        v37 = vmovl_s8(*&result->i8[v32]);
        v38 = vcvtq_f32_s32(vmovl_s16(*v37.i8));
        v39 = vcvtq_f32_s32(vmovl_high_s16(v37));
        v32 += 8;
        v35[-1] = v38;
        *v35 = v39;
        v31 += 0x800000000;
        v35 += 2;
        v34 += 8;
      }

      while (v32 <= v17);
      if (v18 >= v32)
      {
        v32 = v31 >> 32;
        if (v22 <= 0x3B || &a6->i8[v31 >> 30] < &v26[v16 * a2 + v32] && result->u64 + v32 < v25 + v19 * v16 + (v31 >> 30))
        {
          goto LABEL_23;
        }

        v32 += 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v40 = v36;
        v41 = v36;
        v42 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v44 = *(result + v40);
          v43 = *(&result[1] + v40);
          v121.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v43, xmmword_1003E3890), 0x18uLL);
          v121.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v43, xmmword_1003E3880), 0x18uLL);
          v46 = *(&result[2] + v40);
          v45 = *(&result[3] + v40);
          v121.val[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v43, xmmword_1003E38B0), 0x18uLL);
          v121.val[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v43, xmmword_1003E38A0), 0x18uLL);
          v123.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v44, xmmword_1003E3890), 0x18uLL);
          v123.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v44, xmmword_1003E3880), 0x18uLL);
          v123.val[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v44, xmmword_1003E38B0), 0x18uLL);
          v123.val[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v44, xmmword_1003E38A0), 0x18uLL);
          v47 = &a6->i32[v41];
          vst4q_f32(v47, v123);
          v47 += 16;
          vst4q_f32(v47, v121);
          v48 = &a6[8].i32[v41];
          v49 = &a6[12].i32[v41];
          v121.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v45, xmmword_1003E3890), 0x18uLL);
          v121.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v45, xmmword_1003E3880), 0x18uLL);
          v121.val[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v45, xmmword_1003E38B0), 0x18uLL);
          v121.val[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v45, xmmword_1003E38A0), 0x18uLL);
          v50 = vcvtq_n_f32_s32(vqtbl1q_s8(v46, xmmword_1003E3890), 0x18uLL);
          v38 = vcvtq_n_f32_s32(vqtbl1q_s8(v46, xmmword_1003E3880), 0x18uLL);
          v39 = vqtbl1q_s8(v46, xmmword_1003E38A0);
          v51 = vcvtq_n_f32_s32(vqtbl1q_s8(v46, xmmword_1003E38B0), 0x18uLL);
          v52 = vcvtq_n_f32_s32(v39, 0x18uLL);
          vst4q_f32(v48, *v38.f32);
          vst4q_f32(v49, v121);
          v41 += 64;
          v40 += 64;
          v42 -= 16;
        }

        while (v42);
        if (v23 != (v23 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_23:
          v53 = (v30 + 4 * v32);
          do
          {
            v39.i8[0] = result->i8[v32];
            v54 = vmovl_s16(*&vmovl_s8(*v39.i8)).u64[0];
            *v54.i32 = v54.i32[0];
            v38.i8[0] = result->i8[v32 + 1];
            v55 = vmovl_s16(*&vmovl_s8(*v38.f32)).u64[0];
            *v55.i32 = v55.i32[0];
            *(v53 - 3) = v54.i32[0];
            v56 = a6->i64 + 4 * v32;
            *(v56 + 4) = v55.i32[0];
            v54.i8[0] = result->i8[v32 + 2];
            v39 = vmovl_s16(*&vmovl_s8(v54));
            *v39.i32 = v39.i32[0];
            v55.i8[0] = result->i8[v32 + 3];
            v38.i64[0] = vmovl_s16(*&vmovl_s8(v55)).u64[0];
            v38.f32[0] = v38.i32[0];
            *(v56 + 8) = v39.i32[0];
            *v53 = v38.i32[0];
            v53 += 4;
            v32 += 4;
          }

          while (v32 <= v18);
        }
      }

      if (v32 >= v11)
      {
        goto LABEL_13;
      }

      v57 = v32;
      v58 = v11 - v32;
      if (v58 >= 4)
      {
        if (a6 + 4 * v57 >= &v28[v16 * a2] || result->u64 + v57 >= v27 + v19 * v16)
        {
          if (v58 < 0x10)
          {
            v60 = 0;
LABEL_37:
            v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + v57;
            v69 = v60 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
            v70 = v60 + v57;
            v71 = 4 * v70;
            do
            {
              v39.i32[0] = *(result->i32 + v70);
              v39 = vcvtq_n_f32_s32(vqtbl1q_s8(v39, xmmword_1003E3760), 0x18uLL);
              *(a6 + v71) = v39;
              v70 += 4;
              v71 += 16;
              v69 += 4;
            }

            while (v69);
            if (v58 == (v58 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_13;
            }

            goto LABEL_42;
          }

          v60 = v58 & 0xFFFFFFFFFFFFFFF0;
          v61 = 4 * v57;
          v62 = v57;
          v63 = v58 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v64 = *(result + v62);
            v65 = vqtbl1q_s8(v64, xmmword_1003E3750);
            v66 = vqtbl1q_s8(v64, xmmword_1003E3740);
            v67 = vqtbl1q_s8(v64, xmmword_1003E3770);
            v39 = vcvtq_n_f32_s32(vqtbl1q_s8(v64, xmmword_1003E3760), 0x18uLL);
            v68 = a6->i64 + v61;
            *(v68 + 32) = vcvtq_n_f32_s32(v66, 0x18uLL);
            *(v68 + 48) = vcvtq_n_f32_s32(v65, 0x18uLL);
            *v68 = v39;
            *(v68 + 16) = vcvtq_n_f32_s32(v67, 0x18uLL);
            v62 += 16;
            v61 += 64;
            v63 -= 16;
          }

          while (v63);
          if (v58 == v60)
          {
            goto LABEL_13;
          }

          if ((v58 & 0xC) != 0)
          {
            goto LABEL_37;
          }

          v59 = v60 + v57;
        }

        else
        {
          v59 = v57;
        }
      }

      else
      {
        v59 = v57;
      }

      do
      {
LABEL_42:
        v39.i8[0] = result->i8[v59];
        v39.i64[0] = vmovl_s16(*&vmovl_s8(*v39.i8)).u64[0];
        *v39.i32 = v39.i32[0];
        a6->i32[v59++] = v39.i32[0];
      }

      while (v11 != v59);
LABEL_13:
      result = (result + a2);
      a6 = (a6 + v29);
      LODWORD(v13) = v33 - 1;
      ++v16;
      v24 = (v24 + v29);
      v30 += v29;
      if (!v33)
      {
        return result;
      }
    }
  }

  if (v11 >= 4)
  {
    v72 = (v11 - 4);
    v73 = (v72 & 0x7FFFFFFC) + 4;
    v74 = a6[1].u64 + ((4 * v72) & 0x1FFFFFFF0);
    v75 = v12 * v13;
    if ((v72 & 0x7FFFFFFC) + 5 <= v11)
    {
      v76 = *a8;
    }

    else
    {
      v76 = (v72 & 0x7FFFFFFC) + 5;
    }

    v77 = a6 + 4 * v75 + 4 * v76;
    v78 = v76 - (v72 & 0x7FFFFFFC) - 4;
    v79 = v74 + 4 * v75;
    v80 = (v72 >> 2) + 1;
    v82 = &result->i8[v73 + v13 * a2] > a6 && v79 > result;
    v83 = ((a7 | a2) & 0x8000000000000000) != 0;
    v85 = v74 < result->u64 + v76 + v13 * a2 && result->u64 + v73 < v77;
    v86 = v76 & 3;
    v87 = v72 < 0x3C || v83 || v82;
    v88 = v78 < 4 || v83 || v85;
    v89 = 4 * v12;
    v90 = v76 & 0xFFFFFFFC;
    v91 = &a6[((v72 >> 2) & 0x1FFFFFFF) + 1];
    while (1)
    {
      v92 = v13;
      if (v87)
      {
        break;
      }

      v94 = v80 & 0x3FFFFFF0;
      v95 = result;
      v96 = a6;
      do
      {
        v97 = v95[1];
        v122.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(*v95, xmmword_1003E3890), 0x18uLL);
        v122.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(*v95, xmmword_1003E3880), 0x18uLL);
        v99 = v95[2];
        v98 = v95[3];
        v122.val[3] = vcvtq_n_f32_s32(vqtbl1q_s8(*v95, xmmword_1003E38B0), 0x18uLL);
        v122.val[2] = vcvtq_n_f32_s32(vqtbl1q_s8(*v95, xmmword_1003E38A0), 0x18uLL);
        v100 = v96;
        vst4q_f32(v100, v122);
        v100 += 16;
        v122.val[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v98, xmmword_1003E3890), 0x18uLL);
        v124.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v99, xmmword_1003E3890), 0x18uLL);
        v120.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v97, xmmword_1003E3890), 0x18uLL);
        v120.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v97, xmmword_1003E3880), 0x18uLL);
        v120.val[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v97, xmmword_1003E38B0), 0x18uLL);
        v120.val[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v97, xmmword_1003E38A0), 0x18uLL);
        vst4q_f32(v100, v120);
        v124.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v99, xmmword_1003E3880), 0x18uLL);
        v124.val[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v99, xmmword_1003E38B0), 0x18uLL);
        v124.val[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v99, xmmword_1003E38A0), 0x18uLL);
        v101 = (v96 + 128);
        vst4q_f32(v101, v124);
        v122.val[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v98, xmmword_1003E3880), 0x18uLL);
        v8 = vqtbl1q_s8(v98, xmmword_1003E38A0);
        v9 = vqtbl1q_s8(v98, xmmword_1003E38B0);
        v102 = vcvtq_n_f32_s32(v9, 0x18uLL);
        v103 = vcvtq_n_f32_s32(v8, 0x18uLL);
        v104 = (v96 + 192);
        vst4q_f32(v104, *(&v122 + 32));
        v96 += 256;
        v95 += 4;
        v94 -= 16;
      }

      while (v94);
      v93 = 4 * (v80 & 0x3FFFFFF0);
      if (v80 != (v80 & 0x3FFFFFF0))
      {
        goto LABEL_66;
      }

LABEL_68:
      if (v11 > v93)
      {
        v108 = (v72 & 0x7FFFFFFC) + 4;
        if (!v88)
        {
          if (v78 >= 0x10)
          {
            v110 = 16 * ((v72 >> 2) & 0x1FFFFFFF) + 16;
            v111 = (v72 & 0x7FFFFFFC) + 4;
            v112 = v78 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v113 = *(result + v111);
              v114 = vqtbl1q_s8(v113, xmmword_1003E3750);
              v115 = vqtbl1q_s8(v113, xmmword_1003E3740);
              v116 = vqtbl1q_s8(v113, xmmword_1003E3770);
              v8 = vcvtq_n_f32_s32(vqtbl1q_s8(v113, xmmword_1003E3760), 0x18uLL);
              v117 = a6->i64 + v110;
              *(v117 + 32) = vcvtq_n_f32_s32(v115, 0x18uLL);
              *(v117 + 48) = vcvtq_n_f32_s32(v114, 0x18uLL);
              v9 = vcvtq_n_f32_s32(v116, 0x18uLL);
              *v117 = v8;
              *(v117 + 16) = v9;
              v111 += 16;
              v110 += 64;
              v112 -= 16;
            }

            while (v112);
            if (v78 == (v78 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_60;
            }

            v109 = v78 & 0xFFFFFFFFFFFFFFF0;
            v108 = v73 + (v78 & 0xFFFFFFFFFFFFFFF0);
            if ((v78 & 0xC) != 0)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v109 = 0;
LABEL_76:
            v118 = v73 + v109;
            v119 = (v91 + 4 * v109);
            do
            {
              v8.i32[0] = *(result->i32 + v118);
              v8 = vcvtq_n_f32_s32(vqtbl1q_s8(v8, xmmword_1003E3760), 0x18uLL);
              *v119++ = v8;
              v118 += 4;
            }

            while (v90 != v118);
            v108 = v73 + v78 - v86;
            if (!v86)
            {
              goto LABEL_60;
            }
          }
        }

        do
        {
          v8.i8[0] = result->i8[v108];
          v8.i64[0] = vmovl_s16(*&vmovl_s8(*v8.i8)).u64[0];
          *v8.i32 = v8.i32[0];
          a6->i32[v108++] = v8.i32[0];
        }

        while (v108 < v11);
      }

LABEL_60:
      result = (result + a2);
      LODWORD(v13) = v92 - 1;
      a6 = (a6 + v89);
      v91 = (v91 + v89);
      if (!v92)
      {
        return result;
      }
    }

    v93 = 0;
LABEL_66:
    v105 = &a6[v93 / 4];
    do
    {
      v8.i8[0] = result->i8[v93];
      v106 = vmovl_s16(*&vmovl_s8(*v8.i8)).u64[0];
      *v106.i32 = v106.i32[0];
      v9.i8[0] = result->i8[v93 + 1];
      v107 = vmovl_s16(*&vmovl_s8(*v9.i8)).u64[0];
      *v107.i32 = v107.i32[0];
      v105->i32[0] = v106.i32[0];
      v105->i32[1] = v107.i32[0];
      v106.i8[0] = result->i8[v93 + 2];
      v8 = vmovl_s16(*&vmovl_s8(v106));
      *v8.i32 = v8.i32[0];
      v107.i8[0] = result->i8[v93 + 3];
      v9.i64[0] = vmovl_s16(*&vmovl_s8(v107)).u64[0];
      *v9.i32 = v9.i32[0];
      v105->i32[2] = v8.i32[0];
      v105->i32[3] = v9.i32[0];
      v93 += 4;
      ++v105;
    }

    while (v93 <= v72);
    goto LABEL_68;
  }

  if (v11 >= 1)
  {
    v14 = &result->i8[2];
    v15 = &a6->i32[2];
    do
    {
      LOBYTE(a3) = *(v14 - 2);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3);
      *(v15 - 2) = LODWORD(a3);
      if (v11 != 1)
      {
        LOBYTE(a3) = *(v14 - 1);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3);
        *(v15 - 1) = LODWORD(a3);
        if (v11 != 2)
        {
          LOBYTE(a3) = *v14;
          *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
          *&a3 = SLODWORD(a3);
          *v15 = LODWORD(a3);
        }
      }

      v14 += a2;
      v15 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint16x8_t *sub_10020B150(uint16x8_t *result, unint64_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, unint64_t a7, unsigned int *a8)
{
  v8 = a8[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a8;
  v10 = a2 >> 1;
  v11 = a7 >> 2;
  v12 = v8 - 1;
  if (v9 >= 8)
  {
    v15 = (v9 - 8);
    v16 = (v9 - 4);
    v17 = (v15 & 0xFFFFFFF8) + 8;
    v18 = v17 | 4;
    if ((v17 | 4uLL) <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    v19 = ~v17 + v18;
    v20 = (v19 >> 2) + 1;
    v21 = a6 + 4;
    v22 = 4 * v11;
    v23 = 2 * v10;
    v24 = a6 + 8;
    while (1)
    {
      v25 = 0;
      v26 = 0;
      v27 = v12;
      v28 = 8;
      v29 = result;
      v30 = v21;
      do
      {
        v31 = *v29++;
        v32 = v28;
        v33 = vcvtq_f32_u32(vmovl_high_u16(v31));
        v26 += 8;
        *(v30 - 1) = vcvtq_f32_u32(vmovl_u16(*v31.i8));
        *v30 = v33;
        v25 += 0x800000000;
        v30 += 2;
        v28 += 8;
      }

      while (v26 <= v15);
      if (v16 >= v26)
      {
        v34 = v25 >> 32;
        if (v19 <= 0x1B)
        {
          goto LABEL_22;
        }

        v34 += 4 * (v20 & 0x7FFFFFFFFFFFFFF8);
        v35 = v32;
        v36 = 2 * v32;
        v37 = v20 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v94 = *&result[2].i8[v36];
          v96 = *&result->i8[v36];
          v98.val[1] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v94, xmmword_1003E38C0)));
          v38 = &a6[v35];
          v98.val[0] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v94, xmmword_1003E38D0)));
          v98.val[3] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v94, xmmword_1003E38E0)));
          v98.val[2] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v94, xmmword_1003E38F0)));
          v100.val[1] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v96, xmmword_1003E38C0)));
          v100.val[0] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v96, xmmword_1003E38D0)));
          v100.val[3] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v96, xmmword_1003E38E0)));
          v33 = vmovl_u16(*&vqtbl2q_s8(v96, xmmword_1003E38F0));
          v100.val[2] = vcvtq_f32_u32(v33);
          vst4q_f32(v38, v100);
          v38 += 16;
          vst4q_f32(v38, v98);
          v35 += 32;
          v36 += 64;
          v37 -= 8;
        }

        while (v37);
        if (v20 != (v20 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_22:
          v39 = v34;
          v40 = 2 * v34;
          do
          {
            v33 = vcvtq_f32_u32(vmovl_u16(*&result->i8[v40]));
            *&a6[v39] = v33;
            v34 += 4;
            v39 += 4;
            v40 += 8;
          }

          while (v34 <= v16);
        }
      }

      else
      {
        LODWORD(v34) = v26;
      }

      if (v34 >= v9)
      {
        goto LABEL_13;
      }

      v41 = v34;
      v42 = v9 - v34;
      v43 = v41;
      if (v42 >= 4)
      {
        if (v42 < 0x10)
        {
          v44 = 0;
LABEL_32:
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + v41;
          v50 = v44 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
          v51 = v44 + v41;
          v52 = 2 * v51;
          v53 = v51;
          do
          {
            v33 = vcvtq_f32_u32(vmovl_u16(*&result->i8[v52]));
            *&a6[v53] = v33;
            v52 += 8;
            v53 += 4;
            v50 += 4;
          }

          while (v50);
          if (v42 == (v42 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }

          goto LABEL_37;
        }

        v44 = v42 & 0xFFFFFFFFFFFFFFF0;
        v45 = &v24[v41];
        v46 = (result + 2 * v41);
        v47 = v42 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v48 = *v46;
          v49 = v46[1];
          v46 += 2;
          *(v45 - 2) = vcvtq_f32_u32(vmovl_u16(*v48.i8));
          *(v45 - 1) = vcvtq_f32_u32(vmovl_high_u16(v48));
          v33 = vcvtq_f32_u32(vmovl_high_u16(v49));
          *v45 = vcvtq_f32_u32(vmovl_u16(*v49.i8));
          *(v45 + 1) = v33;
          v45 += 16;
          v47 -= 16;
        }

        while (v47);
        if (v42 == v44)
        {
          goto LABEL_13;
        }

        if ((v42 & 0xC) != 0)
        {
          goto LABEL_32;
        }

        v43 = v44 + v41;
      }

      do
      {
LABEL_37:
        v33.i16[0] = result->i16[v43];
        *v33.i32 = v33.u32[0];
        a6[v43++] = *v33.i32;
      }

      while (v9 != v43);
LABEL_13:
      --v12;
      v21 = (v21 + v22);
      result = (result + v23);
      a6 = (a6 + v22);
      v24 = (v24 + v22);
      if (!v27)
      {
        return result;
      }
    }
  }

  if (v9 >= 4)
  {
    v54 = (v9 - 4);
    v55 = v54 & 0x7FFFFFFC;
    v56 = v55 + 4;
    if (v55 + 5 <= v9)
    {
      v57 = v9;
    }

    else
    {
      v57 = (v54 & 0x7FFFFFFC) + 5;
    }

    v58 = v57 - 4;
    v59 = v57 - 4 - v55;
    v60 = (v54 >> 2) + 1;
    v61 = v57 & 3;
    v62 = 4 * v11;
    v63 = 2 * v10;
    v64 = (v54 >> 2) & 0x1FFFFFFF;
    v65 = &result->i8[8 * v64];
    v66 = (v65 + 24);
    v67 = &a6[4 * v64];
    v68 = v67 + 12;
    v69 = v58 - v61 - v55;
    v70 = v65 + 8;
    v71 = v67 + 4;
    while (1)
    {
      v72 = v12;
      if (v54 < 0x1C)
      {
        break;
      }

      v74 = v60 & 0x3FFFFFF8;
      v75 = result;
      v76 = a6;
      do
      {
        v95 = *v75[2].i8;
        v97 = *v75->i8;
        v75 += 4;
        v99.val[1] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v95, xmmword_1003E38C0)));
        v99.val[0] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v95, xmmword_1003E38D0)));
        v99.val[3] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v95, xmmword_1003E38E0)));
        v99.val[2] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v95, xmmword_1003E38F0)));
        v101.val[1] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v97, xmmword_1003E38C0)));
        v101.val[0] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v97, xmmword_1003E38D0)));
        v101.val[3] = vcvtq_f32_u32(vmovl_u16(*&vqtbl2q_s8(v97, xmmword_1003E38E0)));
        v77 = vmovl_u16(*&vqtbl2q_s8(v97, xmmword_1003E38F0));
        v101.val[2] = vcvtq_f32_u32(v77);
        v78 = v76 + 32;
        vst4q_f32(v76, v101);
        v79 = v76 + 16;
        vst4q_f32(v79, v99);
        v76 = v78;
        v74 -= 8;
      }

      while (v74);
      v73 = 4 * (v60 & 0x3FFFFFF8);
      if (v60 != (v60 & 0x3FFFFFF8))
      {
        goto LABEL_49;
      }

LABEL_51:
      if (v9 > v73)
      {
        v82 = (v54 & 0x7FFFFFFC) + 4;
        if (v59 >= 4)
        {
          if (v59 >= 0x10)
          {
            v84 = v68;
            v85 = v66;
            v86 = v59 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v87 = *v85[-2].i8;
              v88 = vcvtq_f32_u32(vmovl_u16(*v85));
              v89 = vmovl_high_u16(*v85->i8);
              v84[-2] = vcvtq_f32_u32(vmovl_u16(*v87.i8));
              v84[-1] = vcvtq_f32_u32(vmovl_high_u16(v87));
              v77 = vcvtq_f32_u32(v89);
              *v84 = v88;
              v84[1] = v77;
              v84 += 4;
              v85 += 4;
              v86 -= 16;
            }

            while (v86);
            if (v59 == (v59 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_43;
            }

            v83 = v59 & 0xFFFFFFFFFFFFFFF0;
            v82 = v56 + (v59 & 0xFFFFFFFFFFFFFFF0);
            if ((v59 & 0xC) != 0)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v83 = 0;
LABEL_59:
            v90 = v69 - v83;
            v91 = &v70[2 * v83];
            v92 = &v71[v83];
            do
            {
              v93 = *v91++;
              v77 = vcvtq_f32_u32(vmovl_u16(v93));
              *v92++ = v77;
              v90 -= 4;
            }

            while (v90);
            v82 = v56 + v59 - v61;
            if (!v61)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v77.i16[0] = result->i16[v82];
          *v77.i32 = v77.u32[0];
          a6[v82++] = *v77.i32;
        }

        while (v82 < v9);
      }

LABEL_43:
      v12 = v72 - 1;
      a6 = (a6 + v62);
      result = (result + v63);
      v66 = (v66 + v63);
      v68 = (v68 + v62);
      v70 += v63;
      v71 = (v71 + v62);
      if (!v72)
      {
        return result;
      }
    }

    v73 = 0;
LABEL_49:
    v80 = v73;
    v81 = 2 * v73;
    do
    {
      v77 = vcvtq_f32_u32(vmovl_u16(*&result->i8[v81]));
      *&a6[v80] = v77;
      v73 += 4;
      v80 += 4;
      v81 += 8;
    }

    while (v73 <= v54);
    goto LABEL_51;
  }

  if (v9 >= 1)
  {
    v13 = &result->i16[2];
    v14 = a6 + 2;
    do
    {
      LOWORD(a3) = *(v13 - 2);
      a3 = LODWORD(a3);
      *(v14 - 2) = a3;
      if (v9 != 1)
      {
        LOWORD(a3) = *(v13 - 1);
        a3 = LODWORD(a3);
        *(v14 - 1) = a3;
        if (v9 != 2)
        {
          LOWORD(a3) = *v13;
          a3 = LODWORD(a3);
          *v14 = a3;
        }
      }

      v13 += v10;
      v14 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

int16x8_t *sub_10020B6F4(int16x8_t *result, unint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int *a8)
{
  v8 = a8[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a8;
  v10 = a2 >> 1;
  v11 = a7 >> 2;
  v12 = v8 - 1;
  if (v9 >= 8)
  {
    v15 = (v9 - 8);
    v16 = (v9 - 4);
    v17 = (v15 & 0xFFFFFFF8) + 8;
    v18 = v17 | 4;
    if ((v17 | 4uLL) <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    v19 = ~v17 + v18;
    v20 = (v19 >> 2) + 1;
    v21 = (a6 + 16);
    v22 = 4 * v11;
    v23 = 2 * v10;
    v24 = a6 + 32;
    while (1)
    {
      v25 = 0;
      v26 = 0;
      v27 = v12;
      v28 = 8;
      v29 = result;
      v30 = v21;
      do
      {
        v31 = *v29++;
        v32 = v28;
        v33 = vcvtq_f32_s32(vmovl_high_s16(v31));
        v26 += 8;
        v30[-1] = vcvtq_f32_s32(vmovl_s16(*v31.i8));
        *v30 = v33;
        v25 += 0x800000000;
        v30 += 2;
        v28 += 8;
      }

      while (v26 <= v15);
      if (v16 >= v26)
      {
        v34 = v25 >> 32;
        if (v19 <= 0x1B)
        {
          goto LABEL_22;
        }

        v34 += 4 * (v20 & 0x7FFFFFFFFFFFFFF8);
        v35 = 4 * v32;
        v36 = 2 * v32;
        v37 = v20 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v94 = *&result[2].i8[v36];
          v96 = *&result->i8[v36];
          v98.val[1] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v94, xmmword_1003E38C0)));
          v38 = (a6 + v35);
          v98.val[0] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v94, xmmword_1003E38D0)));
          v98.val[3] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v94, xmmword_1003E38E0)));
          v98.val[2] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v94, xmmword_1003E38F0)));
          v100.val[1] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v96, xmmword_1003E38C0)));
          v100.val[0] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v96, xmmword_1003E38D0)));
          v100.val[3] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v96, xmmword_1003E38E0)));
          v33 = vmovl_s16(*&vqtbl2q_s8(v96, xmmword_1003E38F0));
          v100.val[2] = vcvtq_f32_s32(v33);
          vst4q_f32(v38, v100);
          v38 += 16;
          vst4q_f32(v38, v98);
          v35 += 128;
          v36 += 64;
          v37 -= 8;
        }

        while (v37);
        if (v20 != (v20 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_22:
          v39 = 4 * v34;
          v40 = 2 * v34;
          do
          {
            v33 = vcvtq_f32_s32(vmovl_s16(*&result->i8[v40]));
            *(a6 + v39) = v33;
            v34 += 4;
            v39 += 16;
            v40 += 8;
          }

          while (v34 <= v16);
        }
      }

      else
      {
        LODWORD(v34) = v26;
      }

      if (v34 >= v9)
      {
        goto LABEL_13;
      }

      v41 = v34;
      v42 = v9 - v34;
      v43 = v41;
      if (v42 >= 4)
      {
        if (v42 < 0x10)
        {
          v44 = 0;
LABEL_32:
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + v41;
          v50 = v44 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
          v51 = v44 + v41;
          v52 = 2 * v51;
          v53 = 4 * v51;
          do
          {
            v33 = vcvtq_f32_s32(vmovl_s16(*&result->i8[v52]));
            *(a6 + v53) = v33;
            v52 += 8;
            v53 += 16;
            v50 += 4;
          }

          while (v50);
          if (v42 == (v42 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }

          goto LABEL_37;
        }

        v44 = v42 & 0xFFFFFFFFFFFFFFF0;
        v45 = v24 + 4 * v41;
        v46 = (result + 2 * v41);
        v47 = v42 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v48 = *v46;
          v49 = v46[1];
          v46 += 2;
          *(v45 - 32) = vcvtq_f32_s32(vmovl_s16(*v48.i8));
          *(v45 - 16) = vcvtq_f32_s32(vmovl_high_s16(v48));
          v33 = vcvtq_f32_s32(vmovl_high_s16(v49));
          *v45 = vcvtq_f32_s32(vmovl_s16(*v49.i8));
          *(v45 + 16) = v33;
          v45 += 64;
          v47 -= 16;
        }

        while (v47);
        if (v42 == v44)
        {
          goto LABEL_13;
        }

        if ((v42 & 0xC) != 0)
        {
          goto LABEL_32;
        }

        v43 = v44 + v41;
      }

      do
      {
LABEL_37:
        v33.i16[0] = result->i16[v43];
        v33.i64[0] = vmovl_s16(*v33.i8).u64[0];
        *v33.i32 = v33.i32[0];
        *(a6 + 4 * v43++) = v33.i32[0];
      }

      while (v9 != v43);
LABEL_13:
      --v12;
      v21 = (v21 + v22);
      result = (result + v23);
      a6 += v22;
      v24 += v22;
      if (!v27)
      {
        return result;
      }
    }
  }

  if (v9 >= 4)
  {
    v54 = (v9 - 4);
    v55 = v54 & 0x7FFFFFFC;
    v56 = v55 + 4;
    if (v55 + 5 <= v9)
    {
      v57 = v9;
    }

    else
    {
      v57 = (v54 & 0x7FFFFFFC) + 5;
    }

    v58 = v57 - 4;
    v59 = v57 - 4 - v55;
    v60 = (v54 >> 2) + 1;
    v61 = v57 & 3;
    v62 = 4 * v11;
    v63 = 2 * v10;
    v64 = (v54 >> 2) & 0x1FFFFFFF;
    v65 = &result->i8[8 * v64];
    v66 = (v65 + 24);
    v67 = (a6 + 16 * v64);
    v68 = v67 + 3;
    v69 = v58 - v61 - v55;
    v70 = v65 + 8;
    v71 = v67 + 1;
    while (1)
    {
      v72 = v12;
      if (v54 < 0x1C)
      {
        break;
      }

      v74 = v60 & 0x3FFFFFF8;
      v75 = result;
      v76 = a6;
      do
      {
        v95 = *v75[2].i8;
        v97 = *v75->i8;
        v75 += 4;
        v99.val[1] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v95, xmmword_1003E38C0)));
        v99.val[0] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v95, xmmword_1003E38D0)));
        v99.val[3] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v95, xmmword_1003E38E0)));
        v99.val[2] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v95, xmmword_1003E38F0)));
        v101.val[1] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v97, xmmword_1003E38C0)));
        v101.val[0] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v97, xmmword_1003E38D0)));
        v101.val[3] = vcvtq_f32_s32(vmovl_s16(*&vqtbl2q_s8(v97, xmmword_1003E38E0)));
        v77 = vmovl_s16(*&vqtbl2q_s8(v97, xmmword_1003E38F0));
        v101.val[2] = vcvtq_f32_s32(v77);
        v78 = v76 + 32;
        vst4q_f32(v76, v101);
        v79 = v76 + 16;
        vst4q_f32(v79, v99);
        v76 = v78;
        v74 -= 8;
      }

      while (v74);
      v73 = 4 * (v60 & 0x3FFFFFF8);
      if (v60 != (v60 & 0x3FFFFFF8))
      {
        goto LABEL_49;
      }

LABEL_51:
      if (v9 > v73)
      {
        v82 = (v54 & 0x7FFFFFFC) + 4;
        if (v59 >= 4)
        {
          if (v59 >= 0x10)
          {
            v84 = v68;
            v85 = v66;
            v86 = v59 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v87 = *v85[-2].i8;
              v88 = vcvtq_f32_s32(vmovl_s16(*v85));
              v89 = vmovl_high_s16(*v85->i8);
              v84[-2] = vcvtq_f32_s32(vmovl_s16(*v87.i8));
              v84[-1] = vcvtq_f32_s32(vmovl_high_s16(v87));
              v77 = vcvtq_f32_s32(v89);
              *v84 = v88;
              v84[1] = v77;
              v84 += 4;
              v85 += 4;
              v86 -= 16;
            }

            while (v86);
            if (v59 == (v59 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_43;
            }

            v83 = v59 & 0xFFFFFFFFFFFFFFF0;
            v82 = v56 + (v59 & 0xFFFFFFFFFFFFFFF0);
            if ((v59 & 0xC) != 0)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v83 = 0;
LABEL_59:
            v90 = v69 - v83;
            v91 = &v70[2 * v83];
            v92 = &v71->f32[v83];
            do
            {
              v93 = *v91++;
              v77 = vcvtq_f32_s32(vmovl_s16(v93));
              *v92++ = v77;
              v90 -= 4;
            }

            while (v90);
            v82 = v56 + v59 - v61;
            if (!v61)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v77.i16[0] = result->i16[v82];
          v77.i64[0] = vmovl_s16(*v77.i8).u64[0];
          *v77.i32 = v77.i32[0];
          *(a6 + 4 * v82++) = v77.i32[0];
        }

        while (v82 < v9);
      }

LABEL_43:
      v12 = v72 - 1;
      a6 += v62;
      result = (result + v63);
      v66 = (v66 + v63);
      v68 = (v68 + v62);
      v70 += v63;
      v71 = (v71 + v62);
      if (!v72)
      {
        return result;
      }
    }

    v73 = 0;
LABEL_49:
    v80 = 4 * v73;
    v81 = 2 * v73;
    do
    {
      v77 = vcvtq_f32_s32(vmovl_s16(*&result->i8[v81]));
      *(a6 + v80) = v77;
      v73 += 4;
      v80 += 16;
      v81 += 8;
    }

    while (v73 <= v54);
    goto LABEL_51;
  }

  if (v9 >= 1)
  {
    v13 = &result->i16[2];
    v14 = (a6 + 8);
    do
    {
      LOWORD(a3) = *(v13 - 2);
      *&a3 = vmovl_s16(*&a3).u64[0];
      *&a3 = SLODWORD(a3);
      *(v14 - 2) = LODWORD(a3);
      if (v9 != 1)
      {
        LOWORD(a3) = *(v13 - 1);
        *&a3 = vmovl_s16(*&a3).u64[0];
        *&a3 = SLODWORD(a3);
        *(v14 - 1) = LODWORD(a3);
        if (v9 != 2)
        {
          LOWORD(a3) = *v13;
          *&a3 = vmovl_s16(*&a3).u64[0];
          *&a3 = SLODWORD(a3);
          *v14 = LODWORD(a3);
        }
      }

      v13 += v10;
      v14 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_10020BCAC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 >> 2;
    v10 = a6 >> 2;
    if (v8 >= 4)
    {
      v13 = (v8 - 4);
      v14 = (v13 & 0xFFFFFFFC) + 4;
      v15 = v14 + 4;
      if (v14 + 4 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      v16 = v15 + ~v14;
      v17 = (v16 >> 2) + 1;
      v18 = v7 - 1;
      v19 = 4 * v10;
      do
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = v18;
        v24 = 4;
        do
        {
          *(a5 + v20) = vcvtq_f32_s32(*(result + v20));
          v25 = v24;
          v22 += 4;
          v21 += 0x400000000;
          v20 += 16;
          v24 += 4;
        }

        while (v22 <= v13);
        if (v13 >= v22)
        {
          v26 = v21 >> 32;
          if (v16 <= 0xB)
          {
            goto LABEL_21;
          }

          v26 += 4 * (v17 & 0x7FFFFFFFFFFFFFFCLL);
          v27 = 4 * v25;
          v28 = v17 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = *(result + v27 + 32);
            v29 = *(result + v27 + 48);
            v32 = *(result + v27);
            v31 = *(result + v27 + 16);
            v33.i64[0] = vzip1q_s32(v32, v31).u64[0];
            v34 = vzip1q_s32(v30, v29);
            v33.i64[1] = vextq_s8(v30, v34, 8uLL).i64[1];
            v35 = (a5 + v27);
            v36.i64[0] = vtrn2q_s32(v32, v31).u64[0];
            v36.i64[1] = v34.i64[1];
            v37.i64[0] = vuzp2q_s32(vuzp2q_s32(v32, v31), v32).u64[0];
            v37.i64[1] = vzip2q_s32(*&v30, v29).i64[1];
            v45.val[1] = vcvtq_f32_s32(v36);
            v30.i32[3] = *(result + v27 + 56);
            v45.val[0] = vcvtq_f32_s32(v33);
            v29.i64[0] = vzip2q_s32(v32, v31).u64[0];
            v29.i64[1] = v30.i64[1];
            v45.val[2] = vcvtq_f32_s32(v29);
            v45.val[3] = vcvtq_f32_s32(v37);
            vst4q_f32(v35, v45);
            v27 += 64;
            v28 -= 4;
          }

          while (v28);
          if (v17 != (v17 & 0x7FFFFFFFFFFFFFFCLL))
          {
LABEL_21:
            v38 = 4 * v26;
            do
            {
              *(a5 + v38) = vcvtq_f32_s32(*(result + v38));
              v26 += 4;
              v38 += 16;
            }

            while (v26 <= v13);
          }
        }

        else
        {
          LODWORD(v26) = v22;
        }

        if (v26 < v8)
        {
          v39 = v26;
          v40 = v8 - v26;
          v26 = v26;
          if (v40 <= 7)
          {
            goto LABEL_32;
          }

          v26 = (v40 & 0xFFFFFFFFFFFFFFF8) + v26;
          v41 = 4 * v39;
          v42 = v40 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v43 = vcvtq_f32_s32(*(result + v41 + 16));
            v44 = (a5 + v41);
            *v44 = vcvtq_f32_s32(*(result + v41));
            v44[1] = v43;
            v41 += 32;
            v42 -= 8;
          }

          while (v42);
          if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_32:
            do
            {
              *(a5 + 4 * v26) = *(result + 4 * v26);
              ++v26;
            }

            while (v8 != v26);
          }
        }

        v18 = v23 - 1;
        result += 4 * v9;
        a5 += v19;
      }

      while (v23);
    }

    else if (v8 >= 1)
    {
      v11 = (result + 8);
      v12 = (a5 + 8);
      do
      {
        *(v12 - 2) = *(v11 - 2);
        if (v8 != 1)
        {
          *(v12 - 1) = *(v11 - 1);
          if (v8 != 2)
          {
            *v12 = *v11;
          }
        }

        v11 += v9;
        v12 += v10;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

float64x2_t *sub_10020BEEC(float64x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, unint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 >> 3;
    v10 = a6 >> 2;
    if (v8 >= 4)
    {
      v16 = v7 - 1;
      v17 = (v8 - 4);
      v18 = (v17 & 0xFFFFFFFC) + 4;
      v19 = v18 + 4;
      if (v18 + 4 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      v20 = v19 + ~v18;
      v21 = (v20 >> 2) + 1;
      v22 = 4 * v10;
      v23 = result + 1;
      v24 = 8 * v9;
      v25 = a5 + 1;
      do
      {
        v26 = 0;
        v27 = 0;
        v28 = v16;
        v29 = 4;
        v30 = v23;
        v31 = a5;
        do
        {
          *v31++ = vcvt_hight_f32_f64(vcvt_f32_f64(v30[-1]), *v30);
          v32 = v29;
          v27 += 4;
          v26 += 0x400000000;
          v30 += 2;
          v29 += 4;
        }

        while (v27 <= v17);
        if (v17 >= v27)
        {
          v33 = v26 >> 32;
          if (v20 <= 0xB)
          {
            goto LABEL_21;
          }

          v33 += 4 * (v21 & 0x7FFFFFFFFFFFFFFCLL);
          v34 = v32;
          v35 = 8 * v32;
          v36 = v21 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v38 = *(&result[2] + v35);
            v37 = *(&result[3] + v35);
            v40 = *(result + v35);
            v39 = *(&result[1] + v35);
            v42 = *(&result[6] + v35);
            v41 = *(&result[7] + v35);
            v44 = *(&result[4] + v35);
            v43 = *(&result[5] + v35);
            v45 = &a5->f32[v34];
            v55.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vzip2q_s64(v40, v38)), vzip2q_s64(v44, v42));
            v55.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vzip1q_s64(v40, v38)), vzip1q_s64(v44, v42));
            v55.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(vzip2q_s64(v39, v37)), vzip2q_s64(v43, v41));
            v55.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vzip1q_s64(v39, v37)), vzip1q_s64(v43, v41));
            vst4q_f32(v45, v55);
            v34 += 16;
            v35 += 128;
            v36 -= 4;
          }

          while (v36);
          if (v21 != (v21 & 0x7FFFFFFFFFFFFFFCLL))
          {
LABEL_21:
            v46 = 4 * v33;
            v47 = 8 * v33;
            do
            {
              *(a5 + v46) = vcvt_hight_f32_f64(vcvt_f32_f64(*(result + v47)), *(result + v47 + 16));
              v33 += 4;
              v46 += 16;
              v47 += 32;
            }

            while (v33 <= v17);
          }
        }

        else
        {
          LODWORD(v33) = v27;
        }

        if (v33 < v8)
        {
          v48 = v33;
          v49 = v8 - v33;
          v33 = v33;
          if (v49 <= 7)
          {
            goto LABEL_32;
          }

          v33 = (v49 & 0xFFFFFFFFFFFFFFF8) + v33;
          v50 = (v25 + 4 * v48);
          v51 = (result + 8 * v48);
          v52 = v49 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v53 = vcvt_hight_f32_f64(vcvt_f32_f64(v51[2]), v51[3]);
            v50[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(*v51), v51[1]);
            *v50 = v53;
            v50 += 2;
            v51 += 4;
            v52 -= 8;
          }

          while (v52);
          if (v49 != (v49 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_32:
            do
            {
              v54 = result->f64[v33];
              a5->f32[v33++] = v54;
            }

            while (v8 != v33);
          }
        }

        v16 = v28 - 1;
        a5 = (a5 + v22);
        v23 = (v23 + v24);
        result = (result + v24);
        v25 = (v25 + v22);
      }

      while (v28);
    }

    else if (v8 >= 1)
    {
      v11 = result + 1;
      v12 = &a5->f32[2];
      do
      {
        v13 = v11[-1].f64[0];
        *(v12 - 2) = v13;
        if (v8 != 1)
        {
          v14 = v11[-1].f64[1];
          *(v12 - 1) = v14;
          if (v8 != 2)
          {
            v15 = v11->f64[0];
            *v12 = v15;
          }
        }

        v11 = (v11 + 8 * v9);
        v12 += v10;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

unint64_t sub_10020C174(unint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, __n128 a8, __n128 a9, uint64_t a10, uint64_t a11, float64x2_t *a12, unint64_t a13, unsigned int *a14)
{
  v14 = a14[1];
  if (!v14)
  {
    return result;
  }

  v15 = *a14;
  v16 = a13 >> 3;
  v17 = v14 - 1;
  if (v15 >= 8)
  {
    v20 = 0;
    v21 = (v15 - 8);
    v22 = (v15 - 4);
    v23 = a13 & 0xFFFFFFFFFFFFFFF8;
    v24 = (v21 & 0xFFFFFFF8) + 8;
    v25 = v24 | 4;
    if ((v24 | 4uLL) <= v22 + 1)
    {
      v25 = v22 + 1;
    }

    v26 = ~v24 + v25;
    v27 = a12 + 2;
    v28 = &a12[2 * (v26 >> 2) + 2];
    v29 = result + (v26 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v30 = (a12 + 8 * v15);
    v31 = result + v15;
    v219 = (v26 >> 2) + 1;
    v32 = 8 * v16;
    v33 = (a12 + 24);
    v220 = v26;
    v221 = v23;
    while (1)
    {
      v34 = 0;
      v35 = 0;
      v36 = v17;
      v37 = v30 + v23 * v20;
      v38 = 8;
      v39 = v27;
      do
      {
        v40 = v38;
        v41 = vmovl_u8(*(result + v35));
        v42 = vmovl_u16(*v41.i8);
        v43 = vmovl_high_u16(v41);
        v44.i64[0] = v42.u32[0];
        v44.i64[1] = v42.u32[1];
        v45 = vcvtq_f64_u64(v44);
        v44.i64[0] = v42.u32[2];
        v44.i64[1] = v42.u32[3];
        v39[-2] = v45;
        v39[-1] = vcvtq_f64_u64(v44);
        v44.i64[0] = v43.u32[0];
        v44.i64[1] = v43.u32[1];
        v46 = vcvtq_f64_u64(v44);
        v44.i64[0] = v43.u32[2];
        v44.i64[1] = v43.u32[3];
        v47 = vcvtq_f64_u64(v44);
        v35 += 8;
        *v39 = v46;
        v39[1] = v47;
        v39 += 4;
        v34 += 0x800000000;
        v38 += 8;
      }

      while (v35 <= v21);
      if (v22 >= v35)
      {
        v35 = v34 >> 32;
        if (v26 <= 0x3B)
        {
          goto LABEL_23;
        }

        v48 = v34 >> 29;
        if (a12 + v48 < v29 + v20 * a2 + v35 && result + v35 < v28 + v23 * v20 + v48)
        {
          goto LABEL_23;
        }

        v35 += 4 * (v219 & 0x7FFFFFFFFFFFFFF0);
        v49 = v40;
        v50 = v40;
        v51 = v219 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v47 = *(result + v49 + 32);
          v46 = *(result + v49 + 48);
          v222.val[2] = *(result + v49);
          v222.val[3] = *(result + v49 + 16);
          v52 = vqtbl2q_s8(*v222.val[2].f64, xmmword_1003E3900).u64[0];
          v53 = vqtbl2q_s8(*v222.val[2].f64, xmmword_1003E3780).u64[0];
          v54 = vqtbl2q_s8(*v222.val[2].f64, xmmword_1003E3910).u64[0];
          *&v222.val[2].f64[0] = vqtbl2q_s8(*v222.val[2].f64, xmmword_1003E3920).u64[0];
          LODWORD(v222.val[3].f64[0]) = v52.u8[0];
          HIDWORD(v222.val[3].f64[0]) = v52.u8[1];
          *&v222.val[3].f64[0] = vand_s8(*&v222.val[3].f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v222.val[3].f64[0]);
          v55.i64[1] = HIDWORD(v222.val[3].f64[0]);
          v56 = vcvtq_f64_u64(v55);
          v57.i32[0] = v53;
          v57.i32[1] = BYTE1(v53);
          v58 = vand_s8(v57, 0xFF000000FFLL);
          v55.i64[0] = v58.u32[0];
          v55.i64[1] = v58.u32[1];
          v222.val[3] = vcvtq_f64_u64(v55);
          v58.i32[0] = v54;
          v58.i32[1] = BYTE1(v54);
          v59 = vand_s8(v58, 0xFF000000FFLL);
          v55.i64[0] = v59.u32[0];
          v55.i64[1] = v59.u32[1];
          v60 = vcvtq_f64_u64(v55);
          v59.i32[0] = LOBYTE(v222.val[2].f64[0]);
          v59.i32[1] = BYTE1(v222.val[2].f64[0]);
          v61 = vand_s8(v59, 0xFF000000FFLL);
          v55.i64[0] = v61.u32[0];
          v55.i64[1] = v61.u32[1];
          v62 = vcvtq_f64_u64(v55);
          v61.i32[0] = v52.u8[2];
          v61.i32[1] = v52.u8[3];
          v63 = vand_s8(v61, 0xFF000000FFLL);
          v64 = &a12[8].f64[v50];
          v65 = &a12->f64[v50];
          vst4q_f64(v65, *(&v222 + 48));
          v65 += 8;
          v55.i64[0] = v63.u32[0];
          v55.i64[1] = v63.u32[1];
          LODWORD(v56.f64[0]) = BYTE2(v53);
          HIDWORD(v56.f64[0]) = BYTE3(v53);
          v224.val[1] = vcvtq_f64_u64(v55);
          *&v222.val[3].f64[0] = vand_s8(*&v56.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v222.val[3].f64[0]);
          v55.i64[1] = HIDWORD(v222.val[3].f64[0]);
          v224.val[0] = vcvtq_f64_u64(v55);
          LODWORD(v222.val[3].f64[0]) = BYTE2(v54);
          HIDWORD(v222.val[3].f64[0]) = BYTE3(v54);
          *&v222.val[3].f64[0] = vand_s8(*&v222.val[3].f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v222.val[3].f64[0]);
          v55.i64[1] = HIDWORD(v222.val[3].f64[0]);
          v224.val[3] = vcvtq_f64_u64(v55);
          LODWORD(v222.val[3].f64[0]) = BYTE2(v222.val[2].f64[0]);
          HIDWORD(v222.val[3].f64[0]) = BYTE3(v222.val[2].f64[0]);
          *&v222.val[3].f64[0] = vand_s8(*&v222.val[3].f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v222.val[3].f64[0]);
          v55.i64[1] = HIDWORD(v222.val[3].f64[0]);
          v224.val[2] = vcvtq_f64_u64(v55);
          LODWORD(v222.val[3].f64[0]) = v52.u8[4];
          HIDWORD(v222.val[3].f64[0]) = v52.u8[5];
          *&v222.val[3].f64[0] = vand_s8(*&v222.val[3].f64[0], 0xFF000000FFLL);
          vst4q_f64(v65, v224);
          v55.i64[0] = LODWORD(v222.val[3].f64[0]);
          v55.i64[1] = HIDWORD(v222.val[3].f64[0]);
          LODWORD(v56.f64[0]) = BYTE4(v53);
          HIDWORD(v56.f64[0]) = BYTE5(v53);
          v224.val[1] = vcvtq_f64_u64(v55);
          *&v222.val[3].f64[0] = vand_s8(*&v56.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v222.val[3].f64[0]);
          v55.i64[1] = HIDWORD(v222.val[3].f64[0]);
          v224.val[0] = vcvtq_f64_u64(v55);
          LODWORD(v222.val[3].f64[0]) = BYTE4(v54);
          HIDWORD(v222.val[3].f64[0]) = BYTE5(v54);
          *&v222.val[3].f64[0] = vand_s8(*&v222.val[3].f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v222.val[3].f64[0]);
          v55.i64[1] = HIDWORD(v222.val[3].f64[0]);
          v224.val[3] = vcvtq_f64_u64(v55);
          LODWORD(v222.val[3].f64[0]) = BYTE4(v222.val[2].f64[0]);
          HIDWORD(v222.val[3].f64[0]) = BYTE5(v222.val[2].f64[0]);
          *&v222.val[3].f64[0] = vand_s8(*&v222.val[3].f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v222.val[3].f64[0]);
          v55.i64[1] = HIDWORD(v222.val[3].f64[0]);
          v224.val[2] = vcvtq_f64_u64(v55);
          vst4q_f64(v64, v224);
          *&v224.val[0].f64[0] = vqtbl2q_s8(*v47.f64, xmmword_1003E3900).u64[0];
          *&v56.f64[0] = vqtbl2q_s8(*v47.f64, xmmword_1003E3780).u64[0];
          *&v222.val[3].f64[0] = vqtbl2q_s8(*v47.f64, xmmword_1003E3910).u64[0];
          *&v47.f64[0] = vqtbl2q_s8(*v47.f64, xmmword_1003E3920).u64[0];
          LODWORD(v46.f64[0]) = v52.u8[6];
          HIDWORD(v46.f64[0]) = v52.u8[7];
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v224.val[2] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = BYTE6(v53);
          HIDWORD(v46.f64[0]) = HIBYTE(v53);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v52.i32[0] = BYTE6(v54);
          v52.i32[1] = HIBYTE(v54);
          v224.val[1] = vcvtq_f64_u64(v55);
          *&v46.f64[0] = vand_s8(v52, 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v66 = vcvtq_f64_u64(v55);
          v67 = &a12[12].f64[v50];
          v68 = &a12[16].f64[v50];
          v69 = &a12[20].f64[v50];
          LODWORD(v46.f64[0]) = BYTE6(v222.val[2].f64[0]);
          HIDWORD(v46.f64[0]) = HIBYTE(v222.val[2].f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v224.val[3] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = LOBYTE(v224.val[0].f64[0]);
          HIDWORD(v46.f64[0]) = BYTE1(v224.val[0].f64[0]);
          vst4q_f64(v67, *(&v224 + 16));
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v224.val[2] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = LOBYTE(v56.f64[0]);
          HIDWORD(v46.f64[0]) = BYTE1(v56.f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v224.val[1] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = LOBYTE(v222.val[3].f64[0]);
          HIDWORD(v46.f64[0]) = BYTE1(v222.val[3].f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v70 = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = LOBYTE(v47.f64[0]);
          HIDWORD(v46.f64[0]) = BYTE1(v47.f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v224.val[3] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = BYTE2(v224.val[0].f64[0]);
          HIDWORD(v46.f64[0]) = BYTE3(v224.val[0].f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          vst4q_f64(v68, *(&v224 + 16));
          v224.val[2] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = BYTE2(v56.f64[0]);
          HIDWORD(v46.f64[0]) = BYTE3(v56.f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v224.val[1] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = BYTE2(v222.val[3].f64[0]);
          HIDWORD(v46.f64[0]) = BYTE3(v222.val[3].f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v71 = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = BYTE2(v47.f64[0]);
          HIDWORD(v46.f64[0]) = BYTE3(v47.f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v224.val[3] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = BYTE4(v224.val[0].f64[0]);
          HIDWORD(v46.f64[0]) = BYTE5(v224.val[0].f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          vst4q_f64(v69, *(&v224 + 16));
          v224.val[2] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = BYTE4(v56.f64[0]);
          HIDWORD(v46.f64[0]) = BYTE5(v56.f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v224.val[1] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = BYTE4(v222.val[3].f64[0]);
          HIDWORD(v46.f64[0]) = BYTE5(v222.val[3].f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v72 = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = BYTE4(v47.f64[0]);
          HIDWORD(v46.f64[0]) = BYTE5(v47.f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v224.val[3] = vcvtq_f64_u64(v55);
          v73 = &a12[24].f64[v50];
          vst4q_f64(v73, *(&v224 + 16));
          LODWORD(v46.f64[0]) = BYTE6(v224.val[0].f64[0]);
          HIDWORD(v46.f64[0]) = HIBYTE(v224.val[0].f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v52.i32[0] = BYTE6(v56.f64[0]);
          v52.i32[1] = HIBYTE(v56.f64[0]);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v222.val[1] = vcvtq_f64_u64(v55);
          *&v46.f64[0] = vand_s8(v52, 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          v222.val[0] = vcvtq_f64_u64(v55);
          LODWORD(v46.f64[0]) = BYTE6(v222.val[3].f64[0]);
          HIDWORD(v46.f64[0]) = HIBYTE(v222.val[3].f64[0]);
          *&v46.f64[0] = vand_s8(*&v46.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v46.f64[0]);
          v55.i64[1] = HIDWORD(v46.f64[0]);
          *&v46.f64[0] = LODWORD(v46.f64[0]);
          v222.val[3] = vcvtq_f64_u64(v55);
          LODWORD(v47.f64[0]) = BYTE6(v47.f64[0]);
          HIDWORD(v47.f64[0]) = HIBYTE(v47.f64[0]);
          *&v47.f64[0] = vand_s8(*&v47.f64[0], 0xFF000000FFLL);
          v55.i64[0] = LODWORD(v47.f64[0]);
          v55.i64[1] = HIDWORD(v47.f64[0]);
          *&v47.f64[0] = LODWORD(v47.f64[0]);
          v222.val[2] = vcvtq_f64_u64(v55);
          v74 = &a12[28].f64[v50];
          vst4q_f64(v74, v222);
          v50 += 64;
          v49 += 64;
          v51 -= 16;
        }

        while (v51);
        v26 = v220;
        v23 = v221;
        if (v219 != (v219 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_23:
          v75 = &v33->f64[v35];
          do
          {
            LOBYTE(v47.f64[0]) = *(result + v35);
            v76 = *&v47.f64[0];
            LOBYTE(v46.f64[0]) = *(result + v35 + 1);
            v77 = *&v46.f64[0];
            *(v75 - 3) = v76;
            v78 = (a12 + 8 * v35);
            v78->f64[1] = v77;
            LOBYTE(v76) = *(result + v35 + 2);
            v47.f64[0] = *&v76;
            LOBYTE(v77) = *(result + v35 + 3);
            v46.f64[0] = *&v77;
            v78[1].f64[0] = v47.f64[0];
            *v75 = v46.f64[0];
            v75 += 4;
            v35 += 4;
          }

          while (v35 <= v22);
        }
      }

      if (v35 >= v15)
      {
        goto LABEL_13;
      }

      v79 = v35;
      v80 = v15 - v35;
      if (v80 >= 4)
      {
        if (&a12->f64[v79] >= v31 + v20 * a2 || result + v79 >= v37)
        {
          if (v80 < 0x10)
          {
            v82 = 0;
LABEL_37:
            v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL) + v79;
            v110 = v82 - (v80 & 0xFFFFFFFFFFFFFFFCLL);
            v111 = v82 + v79;
            v112 = 8 * v111;
            do
            {
              LODWORD(v47.f64[0]) = *(result + v111);
              v113 = vmovl_u16(*&vmovl_u8(*&v47.f64[0]));
              v114 = vand_s8(*&vextq_s8(v113, v113, 8uLL), 0xFF000000FFLL);
              v115.i64[0] = v114.u32[0];
              v115.i64[1] = v114.u32[1];
              v116 = vcvtq_f64_u64(v115);
              *v113.i8 = vand_s8(*v113.i8, 0xFF000000FFLL);
              v115.i64[0] = v113.u32[0];
              v115.i64[1] = v113.u32[1];
              v47 = vcvtq_f64_u64(v115);
              v117 = (a12 + v112);
              *v117 = v47;
              v117[1] = v116;
              v111 += 4;
              v112 += 32;
              v110 += 4;
            }

            while (v110);
            if (v80 == (v80 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_13;
            }

            goto LABEL_42;
          }

          v82 = v80 & 0xFFFFFFFFFFFFFFF0;
          v83 = 8 * v79;
          v84 = v79;
          v85 = v80 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v86 = *(result + v84);
            v87 = vextq_s8(v86, v86, 8uLL).u64[0];
            v88.i32[0] = v87;
            v88.i32[1] = BYTE1(v87);
            v89 = vand_s8(v88, 0xFF000000FFLL);
            v90.i64[0] = v89.u32[0];
            v90.i64[1] = v89.u32[1];
            v91.i32[0] = BYTE2(v87);
            v92 = vcvtq_f64_u64(v90);
            v91.i32[1] = BYTE3(v87);
            v93 = vand_s8(v91, 0xFF000000FFLL);
            v90.i64[0] = v93.u32[0];
            v90.i64[1] = v93.u32[1];
            v94.i32[0] = BYTE4(v87);
            v94.i32[1] = BYTE5(v87);
            v95 = vcvtq_f64_u64(v90);
            v96 = vand_s8(v94, 0xFF000000FFLL);
            v90.i64[0] = v96.u32[0];
            v90.i64[1] = v96.u32[1];
            v97 = vcvtq_f64_u64(v90);
            v98.i32[0] = BYTE6(v87);
            v98.i32[1] = HIBYTE(v87);
            v99 = vand_s8(v98, 0xFF000000FFLL);
            v90.i64[0] = v99.u32[0];
            v90.i64[1] = v99.u32[1];
            v100 = v90;
            v98.i32[0] = v86.u8[0];
            v98.i32[1] = v86.u8[1];
            v101 = vand_s8(v98, 0xFF000000FFLL);
            v90.i64[0] = v101.u32[0];
            v90.i64[1] = v101.u32[1];
            v102 = vcvtq_f64_u64(v90);
            v103.i32[0] = v86.u8[2];
            v103.i32[1] = v86.u8[3];
            v104 = vand_s8(v103, 0xFF000000FFLL);
            v105.i32[0] = v86.u8[4];
            v105.i32[1] = v86.u8[5];
            v106 = vand_s8(v105, 0xFF000000FFLL);
            v90.i64[0] = v106.u32[0];
            v90.i64[1] = v106.u32[1];
            v107 = vcvtq_f64_u64(v90);
            v108.i32[0] = v86.u8[6];
            v108.i32[1] = v86.u8[7];
            *v86.i8 = vand_s8(v108, 0xFF000000FFLL);
            v90.i64[0] = v86.u32[0];
            v90.i64[1] = v86.u32[1];
            v109 = (a12 + v83);
            v109[2] = v107;
            v109[3] = vcvtq_f64_u64(v90);
            v90.i64[0] = v104.u32[0];
            v90.i64[1] = v104.u32[1];
            *v109 = v102;
            v109[1] = vcvtq_f64_u64(v90);
            v47 = vcvtq_f64_u64(v100);
            v109[6] = v97;
            v109[7] = v47;
            v109[4] = v92;
            v109[5] = v95;
            v84 += 16;
            v83 += 128;
            v85 -= 16;
          }

          while (v85);
          if (v80 == v82)
          {
            goto LABEL_13;
          }

          if ((v80 & 0xC) != 0)
          {
            goto LABEL_37;
          }

          v81 = v82 + v79;
        }

        else
        {
          v81 = v79;
        }
      }

      else
      {
        v81 = v79;
      }

      do
      {
LABEL_42:
        LOBYTE(v47.f64[0]) = *(result + v81);
        v47.f64[0] = *&v47.f64[0];
        a12->f64[v81++] = v47.f64[0];
      }

      while (v15 != v81);
LABEL_13:
      result += a2;
      a12 = (a12 + v32);
      LODWORD(v17) = v36 - 1;
      ++v20;
      v27 = (v27 + v32);
      v33 = (v33 + v32);
      if (!v36)
      {
        return result;
      }
    }
  }

  if (v15 >= 4)
  {
    v118 = (v15 - 4);
    v119 = (v118 & 0x7FFFFFFC) + 4;
    v120 = &a12[2] + ((8 * v118) & 0x3FFFFFFE0);
    v121 = v16 * v17;
    if ((v118 & 0x7FFFFFFC) + 5 <= v15)
    {
      v122 = *a14;
    }

    else
    {
      v122 = (v118 & 0x7FFFFFFC) + 5;
    }

    v123 = (a12 + 8 * v121 + 8 * v122);
    v124 = v122 - (v118 & 0x7FFFFFFC) - 4;
    v125 = v120 + 8 * v121;
    v126 = (v118 >> 2) + 1;
    v128 = result + v119 + v17 * a2 > a12 && v125 > result;
    v129 = ((a13 | a2) & 0x8000000000000000) != 0;
    v131 = v120 < result + v122 + v17 * a2 && result + v119 < v123;
    v132 = v122 & 3;
    v133 = v118 < 0x3C || v129 || v128;
    v134 = v124 < 4 || v129 || v131;
    v135 = 8 * v16;
    v136 = v122 & 0xFFFFFFFC;
    v137 = &a12[2 * ((v118 >> 2) & 0x1FFFFFFF) + 2];
    while (1)
    {
      v138 = v17;
      if (v133)
      {
        break;
      }

      v140 = v126 & 0x3FFFFFF0;
      v141 = result;
      v142 = a12;
      do
      {
        a8 = *(v141 + 32);
        a9 = *(v141 + 48);
        v143 = vqtbl2q_s8(*v141, xmmword_1003E3900).u64[0];
        v144 = vqtbl2q_s8(*v141, xmmword_1003E3780).u64[0];
        v145 = vqtbl2q_s8(*v141, xmmword_1003E3910).u64[0];
        v146 = vqtbl2q_s8(*v141, xmmword_1003E3920).u64[0];
        v147.i32[0] = v143.u8[0];
        v147.i32[1] = v143.u8[1];
        v148 = vand_s8(v147, 0xFF000000FFLL);
        v149.i64[0] = v148.u32[0];
        v149.i64[1] = v148.u32[1];
        v223.val[1] = vcvtq_f64_u64(v149);
        v148.i32[0] = v144.u8[0];
        v148.i32[1] = v144.u8[1];
        v150 = vand_s8(v148, 0xFF000000FFLL);
        v149.i64[0] = v150.u32[0];
        v149.i64[1] = v150.u32[1];
        v223.val[0] = vcvtq_f64_u64(v149);
        v150.i32[0] = v145;
        v150.i32[1] = BYTE1(v145);
        v151 = vand_s8(v150, 0xFF000000FFLL);
        v149.i64[0] = v151.u32[0];
        v149.i64[1] = v151.u32[1];
        v223.val[3] = vcvtq_f64_u64(v149);
        v151.i32[0] = v146;
        v151.i32[1] = BYTE1(v146);
        v152 = vand_s8(v151, 0xFF000000FFLL);
        v149.i64[0] = v152.u32[0];
        v149.i64[1] = v152.u32[1];
        v223.val[2] = vcvtq_f64_u64(v149);
        v152.i32[0] = v143.u8[2];
        v152.i32[1] = v143.u8[3];
        v153 = vand_s8(v152, 0xFF000000FFLL);
        v149.i64[0] = v153.u32[0];
        v149.i64[1] = v153.u32[1];
        v154 = v142;
        vst4q_f64(v154, v223);
        v154 += 8;
        v223.val[1] = vcvtq_f64_u64(v149);
        v153.i32[0] = v144.u8[2];
        v153.i32[1] = v144.u8[3];
        v155 = vand_s8(v153, 0xFF000000FFLL);
        v149.i64[0] = v155.u32[0];
        v149.i64[1] = v155.u32[1];
        v223.val[0] = vcvtq_f64_u64(v149);
        v155.i32[0] = BYTE2(v145);
        v155.i32[1] = BYTE3(v145);
        v156 = vand_s8(v155, 0xFF000000FFLL);
        v149.i64[0] = v156.u32[0];
        v149.i64[1] = v156.u32[1];
        v223.val[3] = vcvtq_f64_u64(v149);
        v156.i32[0] = BYTE2(v146);
        v156.i32[1] = BYTE3(v146);
        v157 = vand_s8(v156, 0xFF000000FFLL);
        v149.i64[0] = v157.u32[0];
        v149.i64[1] = v157.u32[1];
        v223.val[2] = vcvtq_f64_u64(v149);
        v157.i32[0] = v143.u8[4];
        v157.i32[1] = v143.u8[5];
        v158 = vand_s8(v157, 0xFF000000FFLL);
        v149.i64[0] = v158.u32[0];
        v149.i64[1] = v158.u32[1];
        vst4q_f64(v154, v223);
        v223.val[1] = vcvtq_f64_u64(v149);
        v158.i32[0] = v144.u8[4];
        v158.i32[1] = v144.u8[5];
        v159 = vand_s8(v158, 0xFF000000FFLL);
        v149.i64[0] = v159.u32[0];
        v149.i64[1] = v159.u32[1];
        v223.val[0] = vcvtq_f64_u64(v149);
        v159.i32[0] = BYTE4(v145);
        v159.i32[1] = BYTE5(v145);
        v160 = vand_s8(v159, 0xFF000000FFLL);
        v149.i64[0] = v160.u32[0];
        v149.i64[1] = v160.u32[1];
        v223.val[3] = vcvtq_f64_u64(v149);
        v160.i32[0] = BYTE4(v146);
        v160.i32[1] = BYTE5(v146);
        v161 = vand_s8(v160, 0xFF000000FFLL);
        v149.i64[0] = v161.u32[0];
        v149.i64[1] = v161.u32[1];
        v223.val[2] = vcvtq_f64_u64(v149);
        v162 = (v142 + 128);
        vst4q_f64(v162, v223);
        v163 = vqtbl2q_s8(*a8.n128_u64, xmmword_1003E3900).u64[0];
        LODWORD(v223.val[0].f64[0]) = v163.u8[4];
        HIDWORD(v223.val[0].f64[0]) = v163.u8[5];
        v143.i32[0] = v143.u8[6];
        v143.i32[1] = v143.u8[7];
        v164 = vand_s8(v143, 0xFF000000FFLL);
        v149.i64[0] = v164.u32[0];
        v149.i64[1] = v164.u32[1];
        LODWORD(v223.val[1].f64[0]) = v144.u8[6];
        HIDWORD(v223.val[1].f64[0]) = v144.u8[7];
        v223.val[3] = vcvtq_f64_u64(v149);
        v165 = vand_s8(*&v223.val[1].f64[0], 0xFF000000FFLL);
        v149.i64[0] = v165.u32[0];
        v149.i64[1] = v165.u32[1];
        v223.val[2] = vcvtq_f64_u64(v149);
        v166 = vqtbl2q_s8(*a8.n128_u64, xmmword_1003E3780).u64[0];
        v144.i32[0] = BYTE6(v145);
        v144.i32[1] = HIBYTE(v145);
        v167 = vand_s8(v144, 0xFF000000FFLL);
        v149.i64[0] = v167.u32[0];
        v149.i64[1] = v167.u32[1];
        v168 = vcvtq_f64_u64(v149);
        v167.i32[0] = BYTE6(v146);
        v167.i32[1] = HIBYTE(v146);
        v169 = vqtbl2q_s8(*a8.n128_u64, xmmword_1003E3910).u64[0];
        v170 = vand_s8(v167, 0xFF000000FFLL);
        v149.i64[0] = v170.u32[0];
        v149.i64[1] = v170.u32[1];
        v171 = vcvtq_f64_u64(v149);
        v170.i32[0] = v163.u8[0];
        v170.i32[1] = v163.u8[1];
        v172 = (v142 + 192);
        vst4q_f64(v172, *(&v223 + 32));
        a8.n128_u64[0] = vqtbl2q_s8(*a8.n128_u64, xmmword_1003E3920).u64[0];
        a9.n128_u64[0] = vand_s8(v170, 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v223.val[2] = vcvtq_f64_u64(v149);
        a9.n128_u32[0] = v166;
        a9.n128_u32[1] = BYTE1(v166);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v170.i32[0] = v169;
        v223.val[1] = vcvtq_f64_u64(v149);
        v170.i32[1] = BYTE1(v169);
        a9.n128_u64[0] = vand_s8(v170, 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v170.i32[0] = a8.n128_u8[0];
        v170.i32[1] = a8.n128_u8[1];
        v173 = vcvtq_f64_u64(v149);
        a9.n128_u64[0] = vand_s8(v170, 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v223.val[3] = vcvtq_f64_u64(v149);
        a9.n128_u32[0] = v163.u8[2];
        a9.n128_u32[1] = v163.u8[3];
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v174 = (v142 + 256);
        vst4q_f64(v174, *(&v223 + 16));
        v223.val[2] = vcvtq_f64_u64(v149);
        a9.n128_u32[0] = BYTE2(v166);
        a9.n128_u32[1] = BYTE3(v166);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v223.val[1] = vcvtq_f64_u64(v149);
        a9.n128_u32[0] = BYTE2(v169);
        a9.n128_u32[1] = BYTE3(v169);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v175 = vcvtq_f64_u64(v149);
        a9.n128_u32[0] = a8.n128_u8[2];
        a9.n128_u32[1] = a8.n128_u8[3];
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v223.val[3] = vcvtq_f64_u64(v149);
        a9.n128_u64[0] = vand_s8(*&v223.val[0].f64[0], 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v176 = (v142 + 320);
        vst4q_f64(v176, *(&v223 + 16));
        v177 = vcvtq_f64_u64(v149);
        a9.n128_u32[0] = BYTE4(v166);
        a9.n128_u32[1] = BYTE5(v166);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v178 = vcvtq_f64_u64(v149);
        a9.n128_u32[0] = BYTE4(v169);
        a9.n128_u32[1] = BYTE5(v169);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v223.val[1] = vcvtq_f64_u64(v149);
        a9.n128_u32[0] = a8.n128_u8[4];
        a9.n128_u32[1] = a8.n128_u8[5];
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v223.val[0] = vcvtq_f64_u64(v149);
        v179 = (v142 + 384);
        vst4q_f64(v179, v223);
        a9.n128_u32[0] = v163.u8[6];
        a9.n128_u32[1] = v163.u8[7];
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v163.i32[0] = BYTE6(v166);
        v163.i32[1] = HIBYTE(v166);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v180 = vcvtq_f64_u64(v149);
        a9.n128_u64[0] = vand_s8(v163, 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        v181 = vcvtq_f64_u64(v149);
        a9.n128_u32[0] = BYTE6(v169);
        a9.n128_u32[1] = HIBYTE(v169);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v149.i64[0] = a9.n128_u32[0];
        v149.i64[1] = a9.n128_u32[1];
        a9.n128_u64[0] = a9.n128_u32[0];
        v223.val[1] = vcvtq_f64_u64(v149);
        a8.n128_u32[0] = a8.n128_u8[6];
        a8.n128_u32[1] = a8.n128_u8[7];
        a8.n128_u64[0] = vand_s8(a8.n128_u64[0], 0xFF000000FFLL);
        v149.i64[0] = a8.n128_u32[0];
        v149.i64[1] = a8.n128_u32[1];
        a8.n128_u64[0] = a8.n128_u32[0];
        v223.val[0] = vcvtq_f64_u64(v149);
        v182 = (v142 + 448);
        vst4q_f64(v182, v223);
        v142 += 512;
        v141 += 64;
        v140 -= 16;
      }

      while (v140);
      v139 = 4 * (v126 & 0x3FFFFFF0);
      if (v126 != (v126 & 0x3FFFFFF0))
      {
        goto LABEL_66;
      }

LABEL_68:
      if (v15 > v139)
      {
        v186 = (v118 & 0x7FFFFFFC) + 4;
        if (!v134)
        {
          if (v124 >= 0x10)
          {
            v188 = 32 * ((v118 >> 2) & 0x1FFFFFFF) + 32;
            v189 = (v118 & 0x7FFFFFFC) + 4;
            v190 = v124 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v191 = *(result + v189);
              v192 = vextq_s8(v191, v191, 8uLL).u64[0];
              v193.i32[0] = v192;
              v193.i32[1] = BYTE1(v192);
              v194 = vand_s8(v193, 0xFF000000FFLL);
              v195.i64[0] = v194.u32[0];
              v195.i64[1] = v194.u32[1];
              v196.i32[0] = BYTE2(v192);
              a9 = vcvtq_f64_u64(v195);
              v196.i32[1] = BYTE3(v192);
              v197 = vand_s8(v196, 0xFF000000FFLL);
              v195.i64[0] = v197.u32[0];
              v195.i64[1] = v197.u32[1];
              v198.i32[0] = BYTE4(v192);
              v198.i32[1] = BYTE5(v192);
              v199 = vcvtq_f64_u64(v195);
              v200 = vand_s8(v198, 0xFF000000FFLL);
              v195.i64[0] = v200.u32[0];
              v195.i64[1] = v200.u32[1];
              v201 = vcvtq_f64_u64(v195);
              v202.i32[0] = BYTE6(v192);
              v202.i32[1] = HIBYTE(v192);
              v203 = vand_s8(v202, 0xFF000000FFLL);
              v195.i64[0] = v203.u32[0];
              v195.i64[1] = v203.u32[1];
              v204 = v195;
              v202.i32[0] = v191.u8[0];
              v202.i32[1] = v191.u8[1];
              v205 = vand_s8(v202, 0xFF000000FFLL);
              v195.i64[0] = v205.u32[0];
              v195.i64[1] = v205.u32[1];
              v206 = vcvtq_f64_u64(v195);
              v207.i32[0] = v191.u8[2];
              v207.i32[1] = v191.u8[3];
              v208 = vand_s8(v207, 0xFF000000FFLL);
              v209.i32[0] = v191.u8[4];
              v209.i32[1] = v191.u8[5];
              v210 = vand_s8(v209, 0xFF000000FFLL);
              v195.i64[0] = v210.u32[0];
              v195.i64[1] = v210.u32[1];
              v211 = vcvtq_f64_u64(v195);
              v212.i32[0] = v191.u8[6];
              v212.i32[1] = v191.u8[7];
              *v191.i8 = vand_s8(v212, 0xFF000000FFLL);
              v195.i64[0] = v191.u32[0];
              v195.i64[1] = v191.u32[1];
              v213 = a12 + v188;
              *(v213 + 32) = v211;
              *(v213 + 48) = vcvtq_f64_u64(v195);
              v195.i64[0] = v208.u32[0];
              v195.i64[1] = v208.u32[1];
              *v213 = v206;
              *(v213 + 16) = vcvtq_f64_u64(v195);
              a8 = vcvtq_f64_u64(v204);
              *(v213 + 96) = v201;
              *(v213 + 112) = a8;
              *(v213 + 64) = a9;
              *(v213 + 80) = v199;
              v189 += 16;
              v188 += 128;
              v190 -= 16;
            }

            while (v190);
            if (v124 == (v124 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_60;
            }

            v187 = v124 & 0xFFFFFFFFFFFFFFF0;
            v186 = v119 + (v124 & 0xFFFFFFFFFFFFFFF0);
            if ((v124 & 0xC) != 0)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v187 = 0;
LABEL_76:
            v214 = v119 + v187;
            v215 = &v137->f64[v187];
            do
            {
              a8.n128_u32[0] = *(result + v214);
              v216 = vmovl_u16(*&vmovl_u8(a8.n128_u64[0]));
              v217 = vand_s8(*&vextq_s8(v216, v216, 8uLL), 0xFF000000FFLL);
              v218.i64[0] = v217.u32[0];
              v218.i64[1] = v217.u32[1];
              a9 = vcvtq_f64_u64(v218);
              *v216.i8 = vand_s8(*v216.i8, 0xFF000000FFLL);
              v218.i64[0] = v216.u32[0];
              v218.i64[1] = v216.u32[1];
              a8 = vcvtq_f64_u64(v218);
              *v215 = a8;
              v215[1] = a9;
              v215 += 2;
              v214 += 4;
            }

            while (v136 != v214);
            v186 = v119 + v124 - v132;
            if (!v132)
            {
              goto LABEL_60;
            }
          }
        }

        do
        {
          a8.n128_u8[0] = *(result + v186);
          a8.n128_f64[0] = a8.n128_u64[0];
          *&a12->f64[v186++] = a8.n128_u64[0];
        }

        while (v186 < v15);
      }

LABEL_60:
      result += a2;
      LODWORD(v17) = v138 - 1;
      a12 = (a12 + v135);
      v137 = (v137 + v135);
      if (!v138)
      {
        return result;
      }
    }

    v139 = 0;
LABEL_66:
    v183 = &a12[v139 / 2];
    do
    {
      a8.n128_u8[0] = *(result + v139);
      v184 = a8.n128_u64[0];
      a9.n128_u8[0] = *(result + v139 + 1);
      v185 = a9.n128_u64[0];
      v183->f64[0] = v184;
      v183->f64[1] = v185;
      LOBYTE(v184) = *(result + v139 + 2);
      a8.n128_f64[0] = *&v184;
      LOBYTE(v185) = *(result + v139 + 3);
      a9.n128_f64[0] = *&v185;
      *&v183[1].f64[0] = a8.n128_u64[0];
      *&v183[1].f64[1] = a9.n128_u64[0];
      v139 += 4;
      v183 += 2;
    }

    while (v139 <= v118);
    goto LABEL_68;
  }

  if (v15 >= 1)
  {
    v18 = (result + 2);
    f64 = a12[1].f64;
    do
    {
      LOBYTE(a3) = *(v18 - 2);
      a3 = *&a3;
      *(f64 - 2) = a3;
      if (v15 != 1)
      {
        LOBYTE(a3) = *(v18 - 1);
        a3 = *&a3;
        *(f64 - 1) = a3;
        if (v15 != 2)
        {
          LOBYTE(a3) = *v18;
          a3 = *&a3;
          *f64 = a3;
        }
      }

      v18 += a2;
      f64 += v16;
      --v14;
    }

    while (v14);
  }

  return result;
}