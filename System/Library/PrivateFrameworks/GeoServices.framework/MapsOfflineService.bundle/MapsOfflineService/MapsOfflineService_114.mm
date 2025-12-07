__int128 *sub_71C2D4(__int128 *a1, int **a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v104 = *a1;
  v105 = v6;
  v106 = *(a1 + 4);
  v7 = a2 - 5;
  v8 = *(a3 + 8);
  v9 = sub_70E2E0(v8, *a3, &v104);
  if (fabs(v9) >= fabs(sub_70E2E0(v8, *a3, v7)))
  {
    v13 = (a1 + 40);
    do
    {
      v10 = v13;
      if (v13 >= v4)
      {
        break;
      }

      v14 = *(a3 + 8);
      v15 = sub_70E2E0(v14, *a3, &v104);
      v16 = sub_70E2E0(v14, *a3, v10);
      v13 = (v10 + 40);
    }

    while (fabs(v15) >= fabs(v16));
  }

  else
  {
    v10 = a1;
    do
    {
      v10 = (v10 + 40);
      v11 = *(a3 + 8);
      v12 = sub_70E2E0(v11, *a3, &v104);
    }

    while (fabs(v12) >= fabs(sub_70E2E0(v11, *a3, v10)));
  }

  if (v10 < v4)
  {
    do
    {
      v4 -= 5;
      v17 = *(a3 + 8);
      v18 = sub_70E2E0(v17, *a3, &v104);
    }

    while (fabs(v18) < fabs(sub_70E2E0(v17, *a3, v4)));
  }

  if (v10 >= v4)
  {
    goto LABEL_166;
  }

  while (2)
  {
    v19 = *v10;
    v20 = v10[1];
    v109 = *(v10 + 4);
    v107 = v19;
    v108 = v20;
    v21 = *v4;
    v22 = *(v4 + 1);
    *(v10 + 4) = v4[4];
    *v10 = v21;
    v10[1] = v22;
    v23 = v107;
    v24 = v108;
    v4[4] = v109;
    *v4 = v23;
    *(v4 + 1) = v24;
    v25 = *a3;
    do
    {
      if (!*(*(a3 + 8) + 912))
      {
        v35 = (*v25 - **v25);
        v36 = *v35;
        if (*(*a3 + 38))
        {
          if (v36 < 0x49)
          {
            goto LABEL_48;
          }

          v37 = v35[36];
          if (!v37)
          {
            goto LABEL_48;
          }
        }

        else if (v36 < 0x4B || (v37 = v35[37]) == 0)
        {
LABEL_48:
          v38 = -1;
          v43 = (v104 - *v104);
          v44 = *v43;
          if (BYTE6(v106))
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        v38 = *(*v25 + v37);
        v43 = (v104 - *v104);
        v44 = *v43;
        if (BYTE6(v106))
        {
LABEL_49:
          if (v44 >= 0x4B)
          {
            v41 = v43[37];
            if (v41)
            {
              goto LABEL_51;
            }
          }

LABEL_53:
          v41 = 0xFFFF;
          goto LABEL_54;
        }

LABEL_45:
        if (v44 >= 0x49)
        {
          v41 = v43[36];
          if (v41)
          {
LABEL_51:
            v42 = v104;
            goto LABEL_52;
          }
        }

        goto LABEL_53;
      }

      v31 = v25[1];
      v32 = (v31 - *v31);
      v33 = *v32;
      if (*(*a3 + 38))
      {
        if (v33 < 5)
        {
          goto LABEL_37;
        }

        v34 = v32[2];
        if (!v34)
        {
          goto LABEL_37;
        }
      }

      else if (v33 < 9 || (v34 = v32[4]) == 0)
      {
LABEL_37:
        v38 = 0;
        v39 = (*(&v104 + 1) - **(&v104 + 1));
        v40 = *v39;
        if (BYTE6(v106))
        {
LABEL_38:
          if (v40 < 9)
          {
LABEL_41:
            v41 = 0;
            goto LABEL_54;
          }

          v41 = v39[4];
          if (!v41)
          {
            goto LABEL_54;
          }

LABEL_40:
          v42 = *(&v104 + 1);
LABEL_52:
          v41 = *(v42 + v41);
          goto LABEL_54;
        }

        goto LABEL_34;
      }

      v38 = *(v31 + v34);
      v39 = (*(&v104 + 1) - **(&v104 + 1));
      v40 = *v39;
      if (BYTE6(v106))
      {
        goto LABEL_38;
      }

LABEL_34:
      if (v40 < 5)
      {
        goto LABEL_41;
      }

      v41 = v39[2];
      if (v41)
      {
        goto LABEL_40;
      }

LABEL_54:
      v45 = v38 + 18000;
      v46 = v38 - 18000;
      if ((v45 >> 5) < 0x465u)
      {
        v46 = v45;
      }

      v47 = v41 - v46;
      if (v47 > 18000)
      {
        v47 -= 36000;
      }

      if (v47 < -17999)
      {
        v47 += 36000;
      }

      if (*(*(a3 + 8) + 912))
      {
        v48 = v25[1];
        v49 = (v48 - *v48);
        v50 = *v49;
        if (*(*a3 + 38))
        {
          if (v50 < 5)
          {
            goto LABEL_75;
          }

          v51 = v49[2];
          if (!v51)
          {
            goto LABEL_75;
          }
        }

        else if (v50 < 9 || (v51 = v49[4]) == 0)
        {
LABEL_75:
          v55 = 0;
          v56 = *(v10 + 6);
          v57 = (v56 - *v56);
          v58 = *v57;
          if (*(v10 + 78))
          {
            goto LABEL_76;
          }

          goto LABEL_72;
        }

        v55 = *(v48 + v51);
        v56 = *(v10 + 6);
        v57 = (v56 - *v56);
        v58 = *v57;
        if (*(v10 + 78))
        {
LABEL_76:
          if (v58 < 9)
          {
            goto LABEL_14;
          }

          v59 = v57[4];
          if (!v59)
          {
            goto LABEL_14;
          }

LABEL_88:
          v26 = *(v56 + v59);
          goto LABEL_15;
        }

LABEL_72:
        if (v58 < 5 || (v59 = v57[2]) == 0)
        {
LABEL_14:
          v26 = 0;
          goto LABEL_15;
        }

        goto LABEL_88;
      }

      v52 = (*v25 - **v25);
      v53 = *v52;
      if (*(*a3 + 38))
      {
        if (v53 >= 0x49)
        {
          v54 = v52[36];
          if (v54)
          {
            goto LABEL_81;
          }
        }
      }

      else if (v53 >= 0x4B)
      {
        v54 = v52[37];
        if (v54)
        {
LABEL_81:
          v55 = *(*v25 + v54);
          v56 = *(v10 + 5);
          v60 = (v56 - *v56);
          v61 = *v60;
          if (*(v10 + 78))
          {
            goto LABEL_86;
          }

          goto LABEL_82;
        }
      }

      v55 = -1;
      v56 = *(v10 + 5);
      v60 = (v56 - *v56);
      v61 = *v60;
      if (*(v10 + 78))
      {
LABEL_86:
        if (v61 >= 0x4B)
        {
          v59 = v60[37];
          if (v59)
          {
            goto LABEL_88;
          }
        }

        goto LABEL_89;
      }

LABEL_82:
      if (v61 >= 0x49)
      {
        v59 = v60[36];
        if (v59)
        {
          goto LABEL_88;
        }
      }

LABEL_89:
      v26 = 0xFFFF;
LABEL_15:
      v10 = (v10 + 40);
      v27 = v47 / 100.0;
      v28 = v55 + 18000;
      v29 = v55 - 18000;
      if ((v28 >> 5) >= 0x465u)
      {
        v28 = v29;
      }

      v30 = v26 - v28;
      if (v30 > 18000)
      {
        v30 -= 36000;
      }

      if (v30 < -17999)
      {
        v30 += 36000;
      }
    }

    while (fabs(v27) >= fabs(v30 / 100.0));
    do
    {
      if (!*(*(a3 + 8) + 912))
      {
        v71 = (*v25 - **v25);
        v72 = *v71;
        if (*(*a3 + 38))
        {
          if (v72 < 0x49)
          {
            goto LABEL_124;
          }

          v73 = v71[36];
          if (!v73)
          {
            goto LABEL_124;
          }
        }

        else if (v72 < 0x4B || (v73 = v71[37]) == 0)
        {
LABEL_124:
          v74 = -1;
          v79 = (v104 - *v104);
          v80 = *v79;
          if (BYTE6(v106))
          {
            goto LABEL_125;
          }

          goto LABEL_121;
        }

        v74 = *(*v25 + v73);
        v79 = (v104 - *v104);
        v80 = *v79;
        if (BYTE6(v106))
        {
LABEL_125:
          if (v80 >= 0x4B)
          {
            v77 = v79[37];
            if (v77)
            {
              goto LABEL_127;
            }
          }

LABEL_129:
          v77 = 0xFFFF;
          goto LABEL_130;
        }

LABEL_121:
        if (v80 >= 0x49)
        {
          v77 = v79[36];
          if (v77)
          {
LABEL_127:
            v78 = v104;
            goto LABEL_128;
          }
        }

        goto LABEL_129;
      }

      v67 = v25[1];
      v68 = (v67 - *v67);
      v69 = *v68;
      if (*(*a3 + 38))
      {
        if (v69 < 5)
        {
          goto LABEL_113;
        }

        v70 = v68[2];
        if (!v70)
        {
          goto LABEL_113;
        }
      }

      else if (v69 < 9 || (v70 = v68[4]) == 0)
      {
LABEL_113:
        v74 = 0;
        v75 = (*(&v104 + 1) - **(&v104 + 1));
        v76 = *v75;
        if (BYTE6(v106))
        {
LABEL_114:
          if (v76 < 9)
          {
LABEL_117:
            v77 = 0;
            goto LABEL_130;
          }

          v77 = v75[4];
          if (!v77)
          {
            goto LABEL_130;
          }

LABEL_116:
          v78 = *(&v104 + 1);
LABEL_128:
          v77 = *(v78 + v77);
          goto LABEL_130;
        }

        goto LABEL_110;
      }

      v74 = *(v67 + v70);
      v75 = (*(&v104 + 1) - **(&v104 + 1));
      v76 = *v75;
      if (BYTE6(v106))
      {
        goto LABEL_114;
      }

LABEL_110:
      if (v76 < 5)
      {
        goto LABEL_117;
      }

      v77 = v75[2];
      if (v77)
      {
        goto LABEL_116;
      }

LABEL_130:
      v81 = v74 + 18000;
      v82 = v74 - 18000;
      if ((v81 >> 5) < 0x465u)
      {
        v82 = v81;
      }

      v83 = v77 - v82;
      if (v83 > 18000)
      {
        v83 -= 36000;
      }

      if (v83 < -17999)
      {
        v83 += 36000;
      }

      if (*(*(a3 + 8) + 912))
      {
        v84 = v25[1];
        v85 = (v84 - *v84);
        v86 = *v85;
        if (*(*a3 + 38))
        {
          if (v86 < 5)
          {
            goto LABEL_151;
          }

          v87 = v85[2];
          if (!v87)
          {
            goto LABEL_151;
          }
        }

        else if (v86 < 9 || (v87 = v85[4]) == 0)
        {
LABEL_151:
          v91 = 0;
          v92 = *(v4 - 4);
          v93 = (v92 - *v92);
          v94 = *v93;
          if (*(v4 - 2))
          {
            goto LABEL_152;
          }

          goto LABEL_148;
        }

        v91 = *(v84 + v87);
        v92 = *(v4 - 4);
        v93 = (v92 - *v92);
        v94 = *v93;
        if (*(v4 - 2))
        {
LABEL_152:
          if (v94 < 9)
          {
            goto LABEL_90;
          }

          v95 = v93[4];
          if (!v95)
          {
            goto LABEL_90;
          }

LABEL_164:
          v62 = *(v92 + v95);
          goto LABEL_91;
        }

LABEL_148:
        if (v94 < 5 || (v95 = v93[2]) == 0)
        {
LABEL_90:
          v62 = 0;
          goto LABEL_91;
        }

        goto LABEL_164;
      }

      v88 = (*v25 - **v25);
      v89 = *v88;
      if (*(*a3 + 38))
      {
        if (v89 >= 0x49)
        {
          v90 = v88[36];
          if (v90)
          {
            goto LABEL_157;
          }
        }
      }

      else if (v89 >= 0x4B)
      {
        v90 = v88[37];
        if (v90)
        {
LABEL_157:
          v91 = *(*v25 + v90);
          v92 = *(v4 - 5);
          v96 = (v92 - *v92);
          v97 = *v96;
          if (*(v4 - 2))
          {
            goto LABEL_162;
          }

          goto LABEL_158;
        }
      }

      v91 = -1;
      v92 = *(v4 - 5);
      v96 = (v92 - *v92);
      v97 = *v96;
      if (*(v4 - 2))
      {
LABEL_162:
        if (v97 >= 0x4B)
        {
          v95 = v96[37];
          if (v95)
          {
            goto LABEL_164;
          }
        }

        goto LABEL_165;
      }

LABEL_158:
      if (v97 >= 0x49)
      {
        v95 = v96[36];
        if (v95)
        {
          goto LABEL_164;
        }
      }

LABEL_165:
      v62 = 0xFFFF;
LABEL_91:
      v4 -= 5;
      v63 = v83 / 100.0;
      v64 = v91 + 18000;
      v65 = v91 - 18000;
      if ((v64 >> 5) >= 0x465u)
      {
        v64 = v65;
      }

      v66 = v62 - v64;
      if (v66 > 18000)
      {
        v66 -= 36000;
      }

      if (v66 < -17999)
      {
        v66 += 36000;
      }
    }

    while (fabs(v63) < fabs(v66 / 100.0));
    if (v10 < v4)
    {
      continue;
    }

    break;
  }

LABEL_166:
  v98 = (v10 - 40);
  if ((v10 - 40) != a1)
  {
    v99 = *v98;
    v100 = *(v10 - 24);
    *(a1 + 4) = *(v10 - 1);
    *a1 = v99;
    a1[1] = v100;
  }

  v101 = v104;
  v102 = v105;
  *(v10 - 1) = v106;
  *v98 = v101;
  *(v10 - 24) = v102;
  return v10;
}

__int128 *sub_71CABC(__int128 *a1, int **a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1[1];
  v101 = *a1;
  v102 = v7;
  v103 = *(a1 + 4);
  do
  {
    v6 += 40;
    v8 = *(a3 + 8);
    v9 = sub_70E2E0(v8, *a3, (a1 + v6));
  }

  while (fabs(v9) < fabs(sub_70E2E0(v8, *a3, &v101)));
  v10 = a1 + v6;
  v11 = (a1 + v6 - 40);
  if (v6 == 40)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      a2 -= 5;
      v14 = *(a3 + 8);
      v15 = sub_70E2E0(v14, *a3, a2);
    }

    while (fabs(v15) >= fabs(sub_70E2E0(v14, *a3, &v101)));
  }

  else
  {
    do
    {
      a2 -= 5;
      v12 = *(a3 + 8);
      v13 = sub_70E2E0(v12, *a3, a2);
    }

    while (fabs(v13) >= fabs(sub_70E2E0(v12, *a3, &v101)));
  }

  if (v10 < a2)
  {
    v16 = v10;
    v17 = a2;
    while (1)
    {
      v19 = *(v16 + 1);
      v104 = *v16;
      v18 = v104;
      v105 = v19;
      v106 = *(v16 + 4);
      v20 = v106;
      v22 = *v17;
      v21 = *(v17 + 1);
      *(v16 + 4) = v17[4];
      *v16 = v22;
      *(v16 + 1) = v21;
      v17[4] = v20;
      *v17 = v18;
      *(v17 + 1) = v19;
      v23 = *a3;
      do
      {
        if (*(*(a3 + 8) + 912))
        {
          v29 = v23[1];
          v30 = (v29 - *v29);
          v31 = *v30;
          if (*(*a3 + 38))
          {
            if (v31 < 5)
            {
              goto LABEL_35;
            }

            v32 = v30[2];
            if (!v32)
            {
              goto LABEL_35;
            }

LABEL_31:
            v36 = *(v29 + v32);
            v37 = *(v16 + 6);
            v38 = (v37 - *v37);
            v39 = *v38;
            if (!v16[78])
            {
              goto LABEL_32;
            }

LABEL_36:
            if (v39 < 9)
            {
              goto LABEL_38;
            }

            v40 = v38[4];
            if (!v40)
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v31 >= 9)
            {
              v32 = v30[4];
              if (v32)
              {
                goto LABEL_31;
              }
            }

LABEL_35:
            v36 = 0;
            v37 = *(v16 + 6);
            v38 = (v37 - *v37);
            v39 = *v38;
            if (v16[78])
            {
              goto LABEL_36;
            }

LABEL_32:
            if (v39 < 5 || (v40 = v38[2]) == 0)
            {
LABEL_38:
              v41 = 0;
              goto LABEL_50;
            }
          }

LABEL_48:
          v41 = *(v37 + v40);
          goto LABEL_50;
        }

        v33 = (*v23 - **v23);
        v34 = *v33;
        if (*(*a3 + 38))
        {
          if (v34 >= 0x49)
          {
            v35 = v33[36];
            if (v35)
            {
              goto LABEL_41;
            }
          }
        }

        else if (v34 >= 0x4B)
        {
          v35 = v33[37];
          if (v35)
          {
LABEL_41:
            v36 = *(*v23 + v35);
            v37 = *(v16 + 5);
            v42 = (v37 - *v37);
            v43 = *v42;
            if (v16[78])
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }
        }

        v36 = -1;
        v37 = *(v16 + 5);
        v42 = (v37 - *v37);
        v43 = *v42;
        if (v16[78])
        {
LABEL_46:
          if (v43 >= 0x4B)
          {
            v40 = v42[37];
            if (v40)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_49;
        }

LABEL_42:
        if (v43 >= 0x49)
        {
          v40 = v42[36];
          if (v40)
          {
            goto LABEL_48;
          }
        }

LABEL_49:
        v41 = 0xFFFF;
LABEL_50:
        v44 = v36 + 18000;
        v45 = v36 - 18000;
        if ((v44 >> 5) < 0x465u)
        {
          v45 = v44;
        }

        v46 = v41 - v45;
        if (v46 > 18000)
        {
          v46 -= 36000;
        }

        if (v46 < -17999)
        {
          v46 += 36000;
        }

        if (!*(*(a3 + 8) + 912))
        {
          v51 = (*v23 - **v23);
          v52 = *v51;
          if (*(*a3 + 38))
          {
            if (v52 < 0x49)
            {
              goto LABEL_82;
            }

            v53 = v51[36];
            if (!v53)
            {
              goto LABEL_82;
            }

LABEL_78:
            v54 = *(*v23 + v53);
            v58 = (v101 - *v101);
            v59 = *v58;
            if (!BYTE6(v103))
            {
              goto LABEL_79;
            }

LABEL_83:
            if (v59 < 0x4B)
            {
              goto LABEL_12;
            }

            v24 = v58[37];
            if (!v24)
            {
              goto LABEL_12;
            }
          }

          else
          {
            if (v52 >= 0x4B)
            {
              v53 = v51[37];
              if (v53)
              {
                goto LABEL_78;
              }
            }

LABEL_82:
            v54 = -1;
            v58 = (v101 - *v101);
            v59 = *v58;
            if (BYTE6(v103))
            {
              goto LABEL_83;
            }

LABEL_79:
            if (v59 < 0x49 || (v24 = v58[36]) == 0)
            {
LABEL_12:
              v24 = 0xFFFF;
              goto LABEL_13;
            }
          }

          v57 = v101;
LABEL_86:
          v24 = *(v57 + v24);
          goto LABEL_13;
        }

        v47 = v23[1];
        v48 = (v47 - *v47);
        v49 = *v48;
        if (*(*a3 + 38))
        {
          if (v49 >= 5)
          {
            v50 = v48[2];
            if (v50)
            {
              goto LABEL_67;
            }
          }
        }

        else if (v49 >= 9)
        {
          v50 = v48[4];
          if (v50)
          {
LABEL_67:
            v54 = *(v47 + v50);
            v55 = (*(&v101 + 1) - **(&v101 + 1));
            v56 = *v55;
            if (BYTE6(v103))
            {
              goto LABEL_72;
            }

            goto LABEL_68;
          }
        }

        v54 = 0;
        v55 = (*(&v101 + 1) - **(&v101 + 1));
        v56 = *v55;
        if (BYTE6(v103))
        {
LABEL_72:
          if (v56 < 9)
          {
LABEL_75:
            v24 = 0;
            goto LABEL_13;
          }

          v24 = v55[4];
          if (!v24)
          {
            goto LABEL_13;
          }

LABEL_74:
          v57 = *(&v101 + 1);
          goto LABEL_86;
        }

LABEL_68:
        if (v56 < 5)
        {
          goto LABEL_75;
        }

        v24 = v55[2];
        if (v24)
        {
          goto LABEL_74;
        }

LABEL_13:
        v16 += 40;
        v25 = v46 / 100.0;
        v26 = v54 + 18000;
        v27 = v54 - 18000;
        if ((v26 >> 5) >= 0x465u)
        {
          v26 = v27;
        }

        v28 = v24 - v26;
        if (v28 > 18000)
        {
          v28 -= 36000;
        }

        if (v28 < -17999)
        {
          v28 += 36000;
        }
      }

      while (fabs(v25) < fabs(v28 / 100.0));
      do
      {
        if (*(*(a3 + 8) + 912))
        {
          v65 = v23[1];
          v66 = (v65 - *v65);
          v67 = *v66;
          if (*(*a3 + 38))
          {
            if (v67 < 5)
            {
              goto LABEL_110;
            }

            v68 = v66[2];
            if (!v68)
            {
              goto LABEL_110;
            }

LABEL_106:
            v72 = *(v65 + v68);
            v73 = *(v17 - 4);
            v74 = (v73 - *v73);
            v75 = *v74;
            if (!*(v17 - 2))
            {
              goto LABEL_107;
            }

LABEL_111:
            if (v75 < 9)
            {
              goto LABEL_113;
            }

            v76 = v74[4];
            if (!v76)
            {
              goto LABEL_113;
            }
          }

          else
          {
            if (v67 >= 9)
            {
              v68 = v66[4];
              if (v68)
              {
                goto LABEL_106;
              }
            }

LABEL_110:
            v72 = 0;
            v73 = *(v17 - 4);
            v74 = (v73 - *v73);
            v75 = *v74;
            if (*(v17 - 2))
            {
              goto LABEL_111;
            }

LABEL_107:
            if (v75 < 5 || (v76 = v74[2]) == 0)
            {
LABEL_113:
              v77 = 0;
              goto LABEL_125;
            }
          }

LABEL_123:
          v77 = *(v73 + v76);
          goto LABEL_125;
        }

        v69 = (*v23 - **v23);
        v70 = *v69;
        if (*(*a3 + 38))
        {
          if (v70 >= 0x49)
          {
            v71 = v69[36];
            if (v71)
            {
              goto LABEL_116;
            }
          }
        }

        else if (v70 >= 0x4B)
        {
          v71 = v69[37];
          if (v71)
          {
LABEL_116:
            v72 = *(*v23 + v71);
            v73 = *(v17 - 5);
            v78 = (v73 - *v73);
            v79 = *v78;
            if (*(v17 - 2))
            {
              goto LABEL_121;
            }

            goto LABEL_117;
          }
        }

        v72 = -1;
        v73 = *(v17 - 5);
        v78 = (v73 - *v73);
        v79 = *v78;
        if (*(v17 - 2))
        {
LABEL_121:
          if (v79 >= 0x4B)
          {
            v76 = v78[37];
            if (v76)
            {
              goto LABEL_123;
            }
          }

          goto LABEL_124;
        }

LABEL_117:
        if (v79 >= 0x49)
        {
          v76 = v78[36];
          if (v76)
          {
            goto LABEL_123;
          }
        }

LABEL_124:
        v77 = 0xFFFF;
LABEL_125:
        v80 = v72 + 18000;
        v81 = v72 - 18000;
        if ((v80 >> 5) < 0x465u)
        {
          v81 = v80;
        }

        v82 = v77 - v81;
        if (v82 > 18000)
        {
          v82 -= 36000;
        }

        if (v82 < -17999)
        {
          v82 += 36000;
        }

        if (!*(*(a3 + 8) + 912))
        {
          v87 = (*v23 - **v23);
          v88 = *v87;
          if (*(*a3 + 38))
          {
            if (v88 < 0x49)
            {
              goto LABEL_157;
            }

            v89 = v87[36];
            if (!v89)
            {
              goto LABEL_157;
            }

LABEL_153:
            v90 = *(*v23 + v89);
            v94 = (v101 - *v101);
            v95 = *v94;
            if (!BYTE6(v103))
            {
              goto LABEL_154;
            }

LABEL_158:
            if (v95 < 0x4B)
            {
              goto LABEL_87;
            }

            v60 = v94[37];
            if (!v60)
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v88 >= 0x4B)
            {
              v89 = v87[37];
              if (v89)
              {
                goto LABEL_153;
              }
            }

LABEL_157:
            v90 = -1;
            v94 = (v101 - *v101);
            v95 = *v94;
            if (BYTE6(v103))
            {
              goto LABEL_158;
            }

LABEL_154:
            if (v95 < 0x49 || (v60 = v94[36]) == 0)
            {
LABEL_87:
              v60 = 0xFFFF;
              goto LABEL_88;
            }
          }

          v93 = v101;
LABEL_161:
          v60 = *(v93 + v60);
          goto LABEL_88;
        }

        v83 = v23[1];
        v84 = (v83 - *v83);
        v85 = *v84;
        if (*(*a3 + 38))
        {
          if (v85 >= 5)
          {
            v86 = v84[2];
            if (v86)
            {
              goto LABEL_142;
            }
          }
        }

        else if (v85 >= 9)
        {
          v86 = v84[4];
          if (v86)
          {
LABEL_142:
            v90 = *(v83 + v86);
            v91 = (*(&v101 + 1) - **(&v101 + 1));
            v92 = *v91;
            if (BYTE6(v103))
            {
              goto LABEL_147;
            }

            goto LABEL_143;
          }
        }

        v90 = 0;
        v91 = (*(&v101 + 1) - **(&v101 + 1));
        v92 = *v91;
        if (BYTE6(v103))
        {
LABEL_147:
          if (v92 < 9)
          {
LABEL_150:
            v60 = 0;
            goto LABEL_88;
          }

          v60 = v91[4];
          if (!v60)
          {
            goto LABEL_88;
          }

LABEL_149:
          v93 = *(&v101 + 1);
          goto LABEL_161;
        }

LABEL_143:
        if (v92 < 5)
        {
          goto LABEL_150;
        }

        v60 = v91[2];
        if (v60)
        {
          goto LABEL_149;
        }

LABEL_88:
        v17 -= 5;
        v61 = v82 / 100.0;
        v62 = v90 + 18000;
        v63 = v90 - 18000;
        if ((v62 >> 5) >= 0x465u)
        {
          v62 = v63;
        }

        v64 = v60 - v62;
        if (v64 > 18000)
        {
          v64 -= 36000;
        }

        if (v64 < -17999)
        {
          v64 += 36000;
        }
      }

      while (fabs(v61) >= fabs(v64 / 100.0));
      if (v16 >= v17)
      {
        v11 = (v16 - 40);
        break;
      }
    }
  }

  if (v11 != a1)
  {
    v96 = *v11;
    v97 = v11[1];
    *(a1 + 4) = *(v11 + 4);
    *a1 = v96;
    a1[1] = v97;
  }

  v98 = v101;
  v99 = v102;
  *(v11 + 4) = v103;
  *v11 = v98;
  v11[1] = v99;
  return v11;
}

BOOL sub_71D26C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = (a2 - 40);
        v8 = *(a3 + 8);
        v9 = sub_70E2E0(v8, *a3, a2 - 5);
        if (fabs(v9) < fabs(sub_70E2E0(v8, *a3, a1)))
        {
          v10 = *a1;
          v11 = a1[1];
          v12 = *(a1 + 4);
          v13 = *(v7 + 4);
          v14 = v7[1];
          *a1 = *v7;
          a1[1] = v14;
          *(a1 + 4) = v13;
          *(v7 + 4) = v12;
          result = 1;
          *v7 = v10;
          v7[1] = v11;
          return result;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_71B4E8(a1, a1 + 5, a2 - 5, a3);
      return 1;
    case 4:
      sub_71B6CC(a1, a1 + 5, a1 + 10, a2 - 5, a3);
      return 1;
    case 5:
      sub_71B820(a1, a1 + 5, a1 + 10, a1 + 15, a2 - 5, a3);
      return 1;
  }

LABEL_11:
  v16 = (a1 + 5);
  sub_71B4E8(a1, a1 + 5, a1 + 10, a3);
  v17 = (a1 + 120);
  if ((a1 + 120) == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v22 = *(a3 + 8);
    v23 = sub_70E2E0(v22, *a3, v17);
    if (fabs(v23) < fabs(sub_70E2E0(v22, *a3, v16)))
    {
      v24 = v17[1];
      v30 = *v17;
      v31 = v24;
      v32 = *(v17 + 4);
      v25 = v18;
      do
      {
        v26 = a1 + v25;
        v27 = *(a1 + v25 + 96);
        *(v26 + 120) = *(a1 + v25 + 80);
        *(v26 + 136) = v27;
        *(v26 + 152) = *(a1 + v25 + 112);
        if (v25 == -80)
        {
          v20 = a1;
          goto LABEL_14;
        }

        v28 = *(a3 + 8);
        v29 = sub_70E2E0(v28, *a3, &v30);
        v25 -= 40;
      }

      while (fabs(v29) < fabs(sub_70E2E0(v28, *a3, (v26 + 40))));
      v20 = a1 + v25 + 120;
LABEL_14:
      v21 = v31;
      *v20 = v30;
      *(v20 + 16) = v21;
      *(v20 + 32) = v32;
      if (++v19 == 8)
      {
        return (v17 + 40) == a2;
      }
    }

    v16 = v17;
    v18 += 40;
    v17 = (v17 + 40);
    if (v17 == a2)
    {
      return 1;
    }
  }
}

char *sub_71D4DC(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return a3;
  }

  v6 = a1;
  v7 = a2 - a1;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (a2 - a1 >= 41)
  {
    v9 = (v8 - 2) >> 1;
    v10 = v9 + 1;
    v11 = &a1[40 * v9];
    do
    {
      sub_71DAC0(v6, a4, v8, v11);
      v11 = (v11 - 40);
      --v10;
    }

    while (v10);
  }

  v12 = a2;
  if (a2 != a3)
  {
    v12 = a2;
    do
    {
      v13 = *(a4 + 8);
      v14 = sub_70E2E0(v13, *a4, v12);
      if (fabs(v14) < fabs(sub_70E2E0(v13, *a4, v6)))
      {
        v15 = *v12;
        v16 = *(v12 + 1);
        v17 = *(v12 + 4);
        v18 = *(v6 + 4);
        v19 = *(v6 + 1);
        *v12 = *v6;
        *(v12 + 1) = v19;
        *(v12 + 4) = v18;
        *(v6 + 4) = v17;
        *v6 = v15;
        *(v6 + 1) = v16;
        sub_71DAC0(v6, a4, v8, v6);
      }

      v12 += 40;
    }

    while (v12 != a3);
  }

  if (v7 < 41)
  {
    return v12;
  }

  v74 = v12;
  v20 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
  v21 = a2;
  while (2)
  {
    while (2)
    {
      v23 = 0;
      v76 = *v6;
      v77 = *(v6 + 1);
      v78 = *(v6 + 4);
      v24 = v6;
      do
      {
        v27 = v24;
        v28 = &v24[40 * v23];
        v24 = v28 + 40;
        v29 = 2 * v23;
        v23 = (2 * v23) | 1;
        v30 = v29 + 2;
        if (v30 >= v20)
        {
          goto LABEL_14;
        }

        v31 = *a4;
        if (*(*(a4 + 8) + 912) == 1)
        {
          v32 = v31[1];
          v33 = (v32 - *v32);
          v34 = *v33;
          if (*(*a4 + 38))
          {
            if (v34 < 5)
            {
              goto LABEL_31;
            }

            v35 = v33[2];
            if (!v35)
            {
              goto LABEL_31;
            }
          }

          else if (v34 < 9 || (v35 = v33[4]) == 0)
          {
LABEL_31:
            v39 = 0;
            v40 = *(v28 + 6);
            v41 = (v40 - *v40);
            v42 = *v41;
            if (v28[78])
            {
              goto LABEL_32;
            }

            goto LABEL_28;
          }

          v39 = *(v32 + v35);
          v40 = *(v28 + 6);
          v41 = (v40 - *v40);
          v42 = *v41;
          if (v28[78])
          {
LABEL_32:
            if (v42 < 9)
            {
              goto LABEL_34;
            }

            v43 = v41[4];
            if (!v43)
            {
              goto LABEL_34;
            }

LABEL_44:
            v44 = *(v40 + v43);
            goto LABEL_46;
          }

LABEL_28:
          if (v42 < 5 || (v43 = v41[2]) == 0)
          {
LABEL_34:
            v44 = 0;
            goto LABEL_46;
          }

          goto LABEL_44;
        }

        v36 = (*v31 - **v31);
        v37 = *v36;
        if (*(*a4 + 38))
        {
          if (v37 >= 0x49)
          {
            v38 = v36[36];
            if (v38)
            {
              goto LABEL_37;
            }
          }
        }

        else if (v37 >= 0x4B)
        {
          v38 = v36[37];
          if (v38)
          {
LABEL_37:
            v39 = *(*v31 + v38);
            v40 = *(v28 + 5);
            v45 = (v40 - *v40);
            v46 = *v45;
            if (v28[78])
            {
              goto LABEL_42;
            }

            goto LABEL_38;
          }
        }

        v39 = -1;
        v40 = *(v28 + 5);
        v45 = (v40 - *v40);
        v46 = *v45;
        if (v28[78])
        {
LABEL_42:
          if (v46 >= 0x4B)
          {
            v43 = v45[37];
            if (v43)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_45;
        }

LABEL_38:
        if (v46 >= 0x49)
        {
          v43 = v45[36];
          if (v43)
          {
            goto LABEL_44;
          }
        }

LABEL_45:
        v44 = 0xFFFF;
LABEL_46:
        v47 = v39 + 18000;
        v48 = v39 - 18000;
        if ((v47 >> 5) < 0x465u)
        {
          v48 = v47;
        }

        v49 = v44 - v48;
        if (v49 > 18000)
        {
          v49 -= 36000;
        }

        if (v49 < -17999)
        {
          v49 += 36000;
        }

        if (!*(*(a4 + 8) + 912))
        {
          v58 = *v31;
          v59 = (v58 - *v58);
          v60 = *v59;
          if (*(*a4 + 38))
          {
            if (v60 < 0x49)
            {
              goto LABEL_76;
            }

            v53 = v59[36];
            if (!v59[36])
            {
              goto LABEL_76;
            }
          }

          else if (v60 < 0x4B || (v53 = v59[37]) == 0)
          {
LABEL_76:
            LOWORD(v53) = -1;
            v54 = *(v28 + 10);
            v62 = (v54 - *v54);
            v63 = *v62;
            if (v28[118])
            {
              goto LABEL_77;
            }

            goto LABEL_73;
          }

          LOWORD(v53) = *(v58 + v53);
          v54 = *(v28 + 10);
          v62 = (v54 - *v54);
          v63 = *v62;
          if (v28[118])
          {
LABEL_77:
            if (v63 < 0x4B)
            {
              goto LABEL_80;
            }

            v57 = v62[37];
            if (!v57)
            {
              goto LABEL_80;
            }

LABEL_79:
            v61 = *(v54 + v57);
            goto LABEL_81;
          }

LABEL_73:
          if (v63 < 0x49 || (v57 = v62[36]) == 0)
          {
LABEL_80:
            v61 = 0xFFFF;
            goto LABEL_81;
          }

          goto LABEL_79;
        }

        v50 = v31[1];
        v51 = (v50 - *v50);
        v52 = *v51;
        if (*(*a4 + 38))
        {
          if (v52 >= 5)
          {
            v53 = v51[2];
            if (!v51[2])
            {
              goto LABEL_56;
            }

LABEL_66:
            LOWORD(v53) = *(v50 + v53);
            v54 = *(v28 + 11);
            v55 = (v54 - *v54);
            v56 = *v55;
            if (v28[118])
            {
              goto LABEL_57;
            }

            goto LABEL_67;
          }

          LOWORD(v53) = 0;
          v54 = *(v28 + 11);
          v55 = (v54 - *v54);
          v56 = *v55;
          if (v28[118])
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v52 >= 9)
          {
            v53 = v51[4];
            if (!v51[4])
            {
LABEL_56:
              v54 = *(v28 + 11);
              v55 = (v54 - *v54);
              v56 = *v55;
              if (v28[118])
              {
                goto LABEL_57;
              }

              goto LABEL_67;
            }

            goto LABEL_66;
          }

          LOWORD(v53) = 0;
          v54 = *(v28 + 11);
          v55 = (v54 - *v54);
          v56 = *v55;
          if (v28[118])
          {
LABEL_57:
            if (v56 >= 9)
            {
              v57 = v55[4];
              if (v57)
              {
                goto LABEL_79;
              }
            }

            goto LABEL_69;
          }
        }

LABEL_67:
        if (v56 >= 5)
        {
          v57 = v55[2];
          if (v57)
          {
            goto LABEL_79;
          }
        }

LABEL_69:
        v61 = 0;
LABEL_81:
        v64 = v53 + 18000;
        v65 = v53 - 18000;
        if ((v64 >> 5) < 0x465u)
        {
          v65 = v64;
        }

        v66 = v61 - v65;
        if (v66 > 18000)
        {
          v66 -= 36000;
        }

        if (v66 < -17999)
        {
          v66 += 36000;
        }

        if (fabs(v49 / 100.0) < fabs(v66 / 100.0))
        {
          v24 = v28 + 80;
          v23 = v30;
        }

LABEL_14:
        v25 = *v24;
        v26 = *(v24 + 1);
        *(v27 + 4) = *(v24 + 4);
        *v27 = v25;
        *(v27 + 1) = v26;
      }

      while (v23 <= ((v20 - 2) >> 1));
      v21 -= 40;
      if (v24 == v21)
      {
        *(v24 + 4) = v78;
        *v24 = v76;
        *(v24 + 1) = v77;
        v22 = v20-- <= 2;
        if (v22)
        {
          return v74;
        }

        continue;
      }

      break;
    }

    v67 = *v21;
    v68 = *(v21 + 1);
    *(v24 + 4) = *(v21 + 4);
    *v24 = v67;
    *(v24 + 1) = v68;
    *v21 = v76;
    *(v21 + 1) = v77;
    *(v21 + 4) = v78;
    v69 = 0xCCCCCCCCCCCCCCCDLL * ((v24 + 40 - v6) >> 3);
    v70 = v6;
    v71 = v6;
    v72 = v21;
    sub_71DCC0(v70, (v24 + 40), a4, v69);
    v21 = v72;
    v6 = v71;
    v22 = v20-- <= 2;
    if (!v22)
    {
      continue;
    }

    return v74;
  }
}

void sub_71DAC0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = a3 - 2;
  if (a3 >= 2)
  {
    v37 = v7;
    v38 = v6;
    v39 = v4;
    v40 = v5;
    v9 = a4;
    v11 = v8 >> 1;
    if ((v8 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v14 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v15 = a1 + 40 * v14;
      v16 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v16 < a3)
      {
        v17 = *(a2 + 8);
        v18 = sub_70E2E0(v17, *a2, (a1 + 40 * v14));
        if (fabs(v18) < fabs(sub_70E2E0(v17, *a2, (v15 + 40))))
        {
          v15 += 40;
          v14 = v16;
        }
      }

      v19 = *(a2 + 8);
      v20 = sub_70E2E0(v19, *a2, v15);
      if (fabs(v20) >= fabs(sub_70E2E0(v19, *a2, v9)))
      {
        v21 = v9[1];
        v34 = *v9;
        v35 = v21;
        v36 = *(v9 + 4);
        do
        {
          v25 = v15;
          v26 = *v15;
          v27 = *(v15 + 16);
          *(v9 + 4) = *(v15 + 32);
          *v9 = v26;
          v9[1] = v27;
          if (v11 < v14)
          {
            break;
          }

          v28 = 2 * v14;
          v14 = (2 * v14) | 1;
          v15 = a1 + 40 * v14;
          v29 = v28 + 2;
          if (v28 + 2 < a3)
          {
            v30 = *(a2 + 8);
            v31 = sub_70E2E0(v30, *a2, v15);
            if (fabs(v31) < fabs(sub_70E2E0(v30, *a2, (v15 + 40))))
            {
              v15 += 40;
              v14 = v29;
            }
          }

          v22 = *(a2 + 8);
          v23 = sub_70E2E0(v22, *a2, v15);
          v24 = sub_70E2E0(v22, *a2, &v34);
          v9 = v25;
        }

        while (fabs(v23) >= fabs(v24));
        v32 = v34;
        v33 = v35;
        *(v25 + 32) = v36;
        *v25 = v32;
        *(v25 + 16) = v33;
      }
    }
  }
}

void sub_71DCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v26 = v7;
    v27 = v6;
    v28 = v4;
    v29 = v5;
    v10 = (a4 - 2) >> 1;
    v11 = (a1 + 40 * v10);
    v12 = (a2 - 40);
    v13 = *(a3 + 8);
    v14 = sub_70E2E0(v13, *a3, v11);
    if (fabs(v14) < fabs(sub_70E2E0(v13, *a3, v12)))
    {
      v15 = v12[1];
      v23 = *v12;
      v24 = v15;
      v25 = *(v12 + 4);
      do
      {
        v16 = v11;
        v17 = *v11;
        v18 = *(v11 + 1);
        *(v12 + 4) = v11[4];
        *v12 = v17;
        v12[1] = v18;
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = (a1 + 40 * v10);
        v19 = *(a3 + 8);
        v20 = sub_70E2E0(v19, *a3, v11);
        v21 = sub_70E2E0(v19, *a3, &v23);
        v12 = v16;
      }

      while (fabs(v20) < fabs(v21));
      v22 = v24;
      *v16 = v23;
      v16[1] = v22;
      *(v16 + 4) = v25;
    }
  }
}

uint64_t sub_71DDDC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 888);
  v8 = sub_2B51D8(v7, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v9 = sub_30C50C(v7 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v12 = v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v12 = 0;
  }

  v128.i64[0] = v8;
  v128.i64[1] = v12;
  *&v129 = sub_31D7E8(v7, a2 & 0xFFFFFFFFFFFFLL, 1);
  *(&v129 + 1) = v13;
  v130 = a2;
  v14 = *(v6 + 888);
  v15 = sub_2B51D8(v14, a3 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, a3, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((a3 >> 30) & 0x3FFFC) + 4 + *(v18 + ((a3 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v124.i64[0] = v15;
  v124.i64[1] = v19;
  v125 = sub_31D7E8(v14, a3 & 0xFFFFFFFFFFFFLL, 1);
  v126 = v20;
  v127 = a3;
  if (**(a1 + 8) == 1)
  {
    v21 = *(*(a1 + 16) + 32);
    if (a2 == v21 && (HIDWORD(a2) & 0xFFFFFF) == (HIDWORD(v21) & 0xFFFFFF))
    {
      return 0;
    }

    v22 = *(*(a1 + 24) + 32);
    if (a3 == v22 && (HIDWORD(a3) & 0xFFFFFF) == (HIDWORD(v22) & 0xFFFFFF))
    {
      return 0;
    }
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  sub_31B8F4(*(v6 + 888), &v128, &v121);
  v24 = v121;
  v25 = v122;
  if (v121 == v122)
  {
LABEL_180:
    v23 = 0;
    v113 = v121;
    if (v121)
    {
      goto LABEL_181;
    }

    return v23;
  }

  while (1)
  {
    v30 = v24[2].u32[0];
    if (v30 == v127 && v24[2].u16[2] == WORD2(v127) && v24[2].u8[6] == BYTE6(v127))
    {
      goto LABEL_31;
    }

    v31 = v24->i64[0];
    v32 = (v24->i64[0] - *v24->i64[0]);
    v33 = *v32;
    if (v24[2].i8[6])
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v34 = v32[77];
      if (!v34 || (*(v31 + v34) & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v35 = v32[77];
      if (!v35 || (*(v31 + v35) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (**(a1 + 8) == 1)
    {
      v36 = *(a1 + 32);
      v37 = *(a1 + 16);
      sub_31A0AC(*(v6 + 888), v37, v30 | (v24[2].u16[2] << 32), v119[0].i64);
      if (!v37[2].i32[0])
      {
        goto LABEL_31;
      }

      v38 = *v37;
      if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v37), vceqzq_s64(v119[0])), xmmword_22671F0)) & 0xF) != 0 || v120 == 0)
      {
        goto LABEL_31;
      }

      v40 = (v38.i64[1] - *v38.i64[1]);
      v41 = *v40;
      if (v37[2].i8[6])
      {
        if (v41 < 5)
        {
          goto LABEL_59;
        }

        v42 = v40[2];
        if (!v42)
        {
          goto LABEL_59;
        }
      }

      else if (v41 < 9 || (v42 = v40[4]) == 0)
      {
LABEL_59:
        v43 = 0;
        v44 = v119[0].i64[1];
        v45 = (v119[0].i64[1] - *v119[0].i64[1]);
        v46 = *v45;
        if (BYTE6(v120))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      v43 = *(v38.i64[1] + v42);
      v44 = v119[0].i64[1];
      v45 = (v119[0].i64[1] - *v119[0].i64[1]);
      v46 = *v45;
      if (BYTE6(v120))
      {
LABEL_60:
        if (v46 >= 9)
        {
          v47 = v45[4];
          if (v47)
          {
LABEL_62:
            v48 = *(v44 + v47);
            goto LABEL_64;
          }
        }

LABEL_63:
        v48 = 0;
LABEL_64:
        v49 = v43 + 18000;
        v50 = v43 - 18000;
        if ((v49 >> 5) < 0x465u)
        {
          v50 = v49;
        }

        v51 = v48 - v50;
        if (v51 > 18000)
        {
          v51 -= 36000;
        }

        if (v51 < -17999)
        {
          v51 += 36000;
        }

        if (fabs(v51 / 100.0) >= *(*v36 + 1016))
        {
          goto LABEL_31;
        }

        v52 = *(a1 + 24);
        v53 = *(a1 + 32);
        sub_31A0AC(*(v6 + 888), v52, v24[2].u32[0] | (v24[2].u16[2] << 32), v117[0].i64);
        if (!v52[2].i32[0])
        {
          goto LABEL_31;
        }

        v54 = *v52;
        if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v52), vceqzq_s64(v117[0])), xmmword_22671F0)) & 0xF) != 0 || !v118)
        {
          goto LABEL_31;
        }

        v55 = (v54.i64[1] - *v54.i64[1]);
        v56 = *v55;
        if (v52[2].i8[6])
        {
          if (v56 < 5)
          {
            goto LABEL_84;
          }

          v57 = v55[2];
          if (!v57)
          {
            goto LABEL_84;
          }
        }

        else if (v56 < 9 || (v57 = v55[4]) == 0)
        {
LABEL_84:
          v58 = 0;
          v59 = v117[0].i64[1];
          v60 = (v117[0].i64[1] - *v117[0].i64[1]);
          v61 = *v60;
          if (BYTE6(v118))
          {
            goto LABEL_85;
          }

          goto LABEL_81;
        }

        v58 = *(v54.i64[1] + v57);
        v59 = v117[0].i64[1];
        v60 = (v117[0].i64[1] - *v117[0].i64[1]);
        v61 = *v60;
        if (BYTE6(v118))
        {
LABEL_85:
          if (v61 >= 9)
          {
            v62 = v60[4];
            if (v62)
            {
LABEL_87:
              v63 = *(v59 + v62);
              goto LABEL_89;
            }
          }

LABEL_88:
          v63 = 0;
LABEL_89:
          v64 = v58 + 18000;
          v65 = v58 - 18000;
          if ((v64 >> 5) < 0x465u)
          {
            v65 = v64;
          }

          v66 = v63 - v65;
          if (v66 > 18000)
          {
            v66 -= 36000;
          }

          if (v66 < -17999)
          {
            v66 += 36000;
          }

          if (fabs(v66 / 100.0) >= *(*v53 + 1016))
          {
            goto LABEL_31;
          }

          goto LABEL_96;
        }

LABEL_81:
        if (v61 >= 5)
        {
          v62 = v60[2];
          if (v62)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_88;
      }

LABEL_56:
      if (v46 >= 5)
      {
        v47 = v45[2];
        if (v47)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_63;
    }

LABEL_96:
    v67 = (v128.i64[0] - *v128.i64[0]);
    v68 = *v67;
    if (v68 < 0x9B || !v67[77] || (~*(v128.i64[0] + v67[77]) & 3) != 0)
    {
      v70 = (v124.i64[0] - *v124.i64[0]);
      if (*v70 >= 0x9Bu && (v71 = v70[77]) != 0)
      {
        v72 = *(v124.i64[0] + v71);
        if (v72)
        {
          v69 = (v72 >> 1) & 1;
        }

        else
        {
          v69 = 0;
        }

        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v69 = 0;
        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }
    }

    else
    {
      v69 = 1;
    }

    v73 = v67[77];
    if (v73)
    {
      v74 = *(v128.i64[0] + v73);
      if ((v74 & 2) != 0)
      {
        v75 = &v128;
      }

      else
      {
        v75 = &v124;
      }

      if (v74)
      {
        v76 = v75;
      }

      else
      {
        v76 = &v124;
      }

      goto LABEL_116;
    }

LABEL_115:
    v76 = &v124;
LABEL_116:
    v77 = v76[1];
    v119[0] = *v76;
    v119[1] = v77;
    v120 = v76[2].i64[0];
    v78 = (v128.i64[0] - *v128.i64[0]);
    if (*v78 >= 0x9Bu && (v79 = v78[77]) != 0)
    {
      v80 = *(v128.i64[0] + v79);
      if ((v80 & 2) != 0)
      {
        v81 = &v124;
      }

      else
      {
        v81 = &v128;
      }

      if (v80)
      {
        v82 = v81;
      }

      else
      {
        v82 = &v128;
      }
    }

    else
    {
      v82 = &v128;
    }

    v83 = v82[1];
    v117[0] = *v82;
    v117[1] = v83;
    v118 = v82[2].i64[0];
    v84 = sub_70E2E0(v6, v119, v117);
    if (!v69)
    {
      goto LABEL_162;
    }

    if (!v120)
    {
      goto LABEL_162;
    }

    v85 = *v24;
    if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v119[0]), vceqzq_s64(*v24)), xmmword_22671F0)) & 0xF) != 0 || !v24[2].i32[0])
    {
      goto LABEL_162;
    }

    v86 = (v119[0].i64[1] - *v119[0].i64[1]);
    v87 = *v86;
    if (BYTE6(v120))
    {
      if (v87 >= 5)
      {
        v88 = v86[2];
        if (v88)
        {
          goto LABEL_135;
        }
      }
    }

    else if (v87 >= 9)
    {
      v88 = v86[4];
      if (v88)
      {
LABEL_135:
        v89 = *(v119[0].i64[1] + v88);
        v90 = v24->i64[1];
        v91 = (v85.i64[1] - *v85.i64[1]);
        v92 = *v91;
        if (v24[2].i8[6])
        {
          goto LABEL_140;
        }

        goto LABEL_136;
      }
    }

    v89 = 0;
    v90 = v24->i64[1];
    v91 = (v85.i64[1] - *v85.i64[1]);
    v92 = *v91;
    if (v24[2].i8[6])
    {
LABEL_140:
      if (v92 >= 9)
      {
        v93 = v91[4];
        if (v93)
        {
          goto LABEL_142;
        }
      }

      goto LABEL_143;
    }

LABEL_136:
    if (v92 >= 5)
    {
      v93 = v91[2];
      if (v93)
      {
LABEL_142:
        v94 = *(v90 + v93);
        goto LABEL_144;
      }
    }

LABEL_143:
    v94 = 0;
LABEL_144:
    v95 = v89 + 18000;
    v96 = v89 - 18000;
    if ((v95 >> 5) < 0x465u)
    {
      v96 = v95;
    }

    v97 = v94 - v96;
    if (v97 > 18000)
    {
      v97 -= 36000;
    }

    if (v97 < -17999)
    {
      v97 += 36000;
    }

    if (fabs(v97 / 100.0) < *(**(a1 + 32) + 1016))
    {
      v98 = (v85.i64[0] - *v85.i64[0]);
      if (*v98 >= 0x9Bu)
      {
        v99 = v98[77];
        if (v99)
        {
          if ((~*(v85.i64[0] + v99) & 3) == 0)
          {
            if (v84 < 0.0)
            {
              v100 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v100 < 0x9Bu)
              {
                break;
              }

              v101 = v100[77];
              if (!v101 || (*(v119[0].i64[0] + v101 + 1) & 0x80) == 0)
              {
                break;
              }
            }

            if (v84 > 0.0)
            {
              v102 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v102 >= 0x9Bu)
              {
                v103 = v102[77];
                if (v103)
                {
                  if ((*(v119[0].i64[0] + v103 + 1) & 0x80) != 0)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_162:
    v104 = *(v6 + 888);
    v116 = v130;
    v115[0] = v128;
    v115[1] = v129;
    BYTE6(v116) = BYTE6(v130) == 0;
    if (!sub_31B71C(v104, v24, v115, &v124) || !v130 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v128), vceqzq_s64(v124)), xmmword_22671F0)) & 0xF) != 0 || !v127)
    {
      goto LABEL_31;
    }

    v105 = (v128.i64[1] - *v128.i64[1]);
    v106 = *v105;
    if (BYTE6(v130))
    {
      if (v106 >= 5)
      {
        v107 = v105[2];
        if (v107)
        {
          goto LABEL_172;
        }
      }
    }

    else if (v106 >= 9)
    {
      v107 = v105[4];
      if (v107)
      {
LABEL_172:
        v108 = *(v128.i64[1] + v107);
        v109 = v124.i64[1];
        v110 = (v124.i64[1] - *v124.i64[1]);
        v111 = *v110;
        if (BYTE6(v127))
        {
          goto LABEL_177;
        }

        goto LABEL_173;
      }
    }

    v108 = 0;
    v109 = v124.i64[1];
    v110 = (v124.i64[1] - *v124.i64[1]);
    v111 = *v110;
    if (BYTE6(v127))
    {
LABEL_177:
      if (v111 < 9)
      {
        goto LABEL_23;
      }

      v112 = v110[4];
      if (!v112)
      {
        goto LABEL_23;
      }

      goto LABEL_179;
    }

LABEL_173:
    if (v111 < 5 || (v112 = v110[2]) == 0)
    {
LABEL_23:
      v26 = 0;
      goto LABEL_24;
    }

LABEL_179:
    v26 = *(v109 + v112);
LABEL_24:
    v27 = v108 + 18000;
    v28 = v108 - 18000;
    if ((v27 >> 5) < 0x465u)
    {
      v28 = v27;
    }

    v29 = v26 - v28;
    if (v29 > 18000)
    {
      v29 -= 36000;
    }

    if (v29 < -17999)
    {
      v29 += 36000;
    }

    if (fabs(v29 / 100.0) < *(**(a1 + 32) + 1016))
    {
      break;
    }

LABEL_31:
    v24 = (v24 + 40);
    if (v24 == v25)
    {
      goto LABEL_180;
    }
  }

  v23 = 1;
  v113 = v121;
  if (!v121)
  {
    return v23;
  }

LABEL_181:
  v122 = v113;
  operator delete(v113);
  return v23;
}

void sub_71E82C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_71E858(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = 0x2127599BF4325C37 * (v6 ^ (v5 >> 23));
  v8 = v7 ^ (v7 >> 47);
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_28;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7 ^ (v7 >> 47);
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = v8 & (*&v9 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_28:
    operator new();
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        if (__PAIR64__(*(v13 + 10), *(v13 + 4)) == __PAIR64__(WORD2(v4), v4) && *(v13 + 22) == BYTE6(v4))
        {
          return v13;
        }
      }

      else if ((v14 & (*&v9 - 1)) != v11)
      {
        goto LABEL_28;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_28;
    }

LABEL_21:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_28;
    }
  }

  if (__PAIR64__(*(v13 + 10), *(v13 + 4)) != __PAIR64__(WORD2(v4), v4) || *(v13 + 22) != BYTE6(v4))
  {
    goto LABEL_21;
  }

  return v13;
}

BOOL sub_71EBFC(uint64_t *a1, int **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (*(a2 + 38))
  {
    if (v7 >= 0x47)
    {
      v8 = v6[35];
      if (v6[35])
      {
        v9 = 2;
LABEL_8:
        v10 = (*&v5[v8] & v9) != 0;
        goto LABEL_10;
      }
    }
  }

  else if (v7 >= 0x47)
  {
    v8 = v6[35];
    if (v6[35])
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_10:
  v11 = *v3;
  v12 = (*v3 - **v3);
  v13 = *v12;
  if (!*(v3 + 38))
  {
    if (v13 >= 0x47 && v12[35])
    {
      if ((v10 ^ ((*(v11 + v12[35]))))
      {
        return 0;
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v10)
    {
      return 0;
    }

    if (v13 < 0x2F)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (v13 < 0x47 || !v12[35])
  {
    goto LABEL_19;
  }

  if ((v10 ^ ((*(v11 + v12[35]) & 2) != 0)))
  {
    return 0;
  }

LABEL_21:
  if (v12[23])
  {
    v14 = *(v11 + v12[23]);
    v15 = v14 > 0x2B || ((1 << v14) & 0x80000001040) == 0;
    if (v15 || v13 >= 0x9B && (v16 = v12[77]) != 0 && (*(v11 + v16 + 2) & 0x20) != 0)
    {
      v17 = v14 == 44;
      if (v7 < 0x2F)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v17 = 1;
      if (v7 < 0x2F)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  v17 = 0;
  if (v7 < 0x2F)
  {
LABEL_44:
    if (!v17)
    {
      goto LABEL_45;
    }

    return 0;
  }

LABEL_34:
  if (!v6[23])
  {
    goto LABEL_44;
  }

  v18 = v5[v6[23]];
  if (v18 <= 0x2B && ((1 << v18) & 0x80000001040) != 0 && (v7 < 0x9B || (v20 = v6[77]) == 0 || (v5[v20 + 2] & 0x20) == 0))
  {
    if (v17)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if ((v17 ^ (v18 == 44)))
  {
    return 0;
  }

LABEL_45:
  if (fabs(sub_70E2E0(*a1, v3, a2)) >= *(v4 + 1016))
  {
    return 0;
  }

  v22 = a1[2];
  v23 = *v22;
  v24 = sub_31ACAC(*(*v22 + 888), v22[1], a2);
  v25 = *(v23 + 888);
  v35 = a2[4];
  v26 = *(a2 + 1);
  v34[0] = *a2;
  v34[1] = v26;
  BYTE6(v35) = BYTE6(v35) == 0;
  v27 = v22[1];
  v28 = *v27;
  v29 = *(v27 + 16);
  v33 = *(v27 + 32);
  v32[0] = v28;
  v32[1] = v29;
  BYTE6(v33) = BYTE6(v33) == 0;
  v30 = sub_31ACAC(v25, v34, v32);
  if (v30 >= v24)
  {
    v30 = v24;
  }

  return v30 < *(v4 + 1904);
}

int **sub_71EE9C(int **result, int **a2, uint64_t a3, int **a4)
{
  if (result != a2)
  {
    v4 = *a4;
    v5 = (*a4 - **a4);
    v6 = *v5;
    if (*(a4 + 38))
    {
      if (v6 <= 0x46)
      {
        while (1)
        {
          v15 = *result;
          v16 = (*result - **result);
          v17 = *v16;
          if (*(result + 38))
          {
            if (v17 < 0x47)
            {
              return result;
            }

            v18 = v16[35];
            if (!v18 || (*&v15[v18] & 2) == 0)
            {
              return result;
            }
          }

          else
          {
            if (v17 < 0x47)
            {
              return result;
            }

            v19 = v16[35];
            if (!v19 || (*&v15[v19] & 1) == 0)
            {
              return result;
            }
          }

          result += 5;
          if (result == a2)
          {
            return a2;
          }
        }
      }

      v7 = v5[35];
      if (!v7)
      {
        v24 = result;
        while (1)
        {
          v25 = *v24;
          v26 = (*v24 - **v24);
          v27 = *v26;
          if (*(v24 + 38))
          {
            if (v27 < 0x47)
            {
              return v24;
            }

            v28 = v26[35];
            if (!v28 || (*(v25 + v28) & 2) == 0)
            {
              return v24;
            }
          }

          else
          {
            if (v27 < 0x47)
            {
              return v24;
            }

            v29 = v26[35];
            if (!v29 || (*(v25 + v29) & 1) == 0)
            {
              return v24;
            }
          }

          v24 += 5;
          result = a2;
          if (v24 == a2)
          {
            return result;
          }
        }
      }

      v8 = *&v4[v7];
      while (1)
      {
        v20 = (*result - **result);
        v21 = *v20;
        if (*(result + 38))
        {
          if (v21 < 0x47)
          {
            goto LABEL_32;
          }

          v22 = v20[35];
          if (!v22)
          {
            goto LABEL_32;
          }

          v23 = 2;
        }

        else
        {
          if (v21 < 0x47 || (v22 = v20[35]) == 0)
          {
LABEL_32:
            if ((v8 & 2) == 0)
            {
              return result;
            }

            goto LABEL_33;
          }

          v23 = 1;
        }

        if (((*(*result + v22) & v23) != 0) == (v8 & 2) >> 1)
        {
          return result;
        }

LABEL_33:
        result += 5;
        if (result == a2)
        {
          return a2;
        }
      }
    }

    while (1)
    {
      v9 = *result;
      v10 = (*result - **result);
      v11 = *v10;
      if (*(result + 38))
      {
        if (v11 >= 0x47)
        {
          v12 = v10[35];
          if (v12)
          {
            v13 = (*&v9[v12] & 2) != 0;
            if (v6 < 0x47)
            {
              goto LABEL_7;
            }

            goto LABEL_19;
          }
        }
      }

      else if (v11 >= 0x47)
      {
        v14 = v10[35];
        if (v14)
        {
          v13 = (*&v9[v14] & 1) != 0;
          if (v6 < 0x47)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        }
      }

      v13 = 0;
      if (v6 < 0x47)
      {
        goto LABEL_7;
      }

LABEL_19:
      if (!v5[35])
      {
LABEL_7:
        if (!v13)
        {
          return result;
        }

        goto LABEL_8;
      }

      if (v13 == (v4[v5[35]] & 1))
      {
        return result;
      }

LABEL_8:
      result += 5;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

uint64_t sub_71F0D0@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ~((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  v14 = *v10;
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v14 + v15);
    v17 = ((v16 ^ v13) - 0x101010101010101) & ~(v16 ^ v13) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_11:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_14;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v19 = (v10[1] + 12 * v18);
    if (__PAIR64__(*(v19 + 2), *v19) == __PAIR64__(WORD2(v4), v4) && *(v19 + 6) == BYTE6(v4))
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  if (v12 == v18)
  {
LABEL_14:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v10;
  a3[1] = (result + 768);
  a3[2] = (v14 + v18);
  a3[3] = v19;
  a3[4] = (v14 + v12);
  return result;
}

uint64_t sub_71F240@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ~((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(v13 + (v11 & v12));
    v16 = ((v15 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_10:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      v21 = result;
      v23 = a3;
      v24 = sub_71F3FC((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v23;
      v18 = v24;
      result = v21;
      v25 = v10[1] + 12 * v18;
      *v25 = *a2;
      *(v25 + 8) = 0;
      v13 = *v10;
      v17 = v10[1];
      v12 = v10[3];
      v20 = 1;
      goto LABEL_14;
    }

    v3 += 8;
    v11 = v3 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    v19 = v17 + 12 * v18;
    if (__PAIR64__(*(v19 + 4), *v19) == __PAIR64__(WORD2(v4), v4) && *(v19 + 6) == BYTE6(v4))
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  v20 = 0;
LABEL_14:
  *a3 = v10;
  *(a3 + 8) = result + 768;
  *(a3 + 16) = v13 + v18;
  *(a3 + 24) = v17 + 12 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v20;
  return result;
}

unint64_t sub_71F3FC(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_71F4F4(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_71F4F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_71F524(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_71F710(a1);
}

uint64_t sub_71F710(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_31;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_31:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 12 * i);
        v19 = (v18 >> 16) & 0xFFFF0000 | (v18 << 32);
        if ((v18 & 0xFF000000000000) != 0)
        {
          v20 = (v18 >> 16) & 0xFFFF0000 | (v18 << 32);
        }

        else
        {
          v20 = v19 + 1;
        }

        v21 = ((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) ^ ~((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) ^ ((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) >> 47)) << 21);
        v22 = 21 * ((265 * (v21 ^ (v21 >> 24))) ^ ((265 * (v21 ^ (v21 >> 24))) >> 14));
        v23 = 2147483649u * (v22 ^ (v22 >> 28));
        v24 = v13 & (v23 >> 7);
        v25 = *(v17->i64 + v24) & (~*(v17->i64 + v24) << 7) & 0x8080808080808080;
        if (v25)
        {
          v15 = v13 & (v23 >> 7);
        }

        else
        {
          v26 = 8;
          v15 = v13 & (v23 >> 7);
          do
          {
            v15 = (v15 + v26) & v13;
            v26 += 8;
            v25 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v25);
        }

        v16 = (v15 + (__clz(__rbit64(v25)) >> 3)) & v13;
        if ((((v16 - v24) ^ (i - v24)) & v13) > 7)
        {
          v27 = v17->u8[v16];
          v17->i8[v16] = v23 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v23 & 0x7F;
          v28 = *(result + 8);
          if (v27 == 128)
          {
            v29 = v28 + 12 * v16;
            v30 = (v28 + 12 * i);
            v31 = *v30;
            *(v29 + 8) = *(v30 + 2);
            *v29 = v31;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v32 = (v28 + 12 * i);
            v33 = *v32;
            v34 = *(v32 + 2);
            v35 = 12 * v16;
            v36 = (v28 + v35);
            v37 = *(v36 + 2);
            *v32 = *v36;
            *(v32 + 2) = v37;
            v38 = *(result + 8) + v35;
            *v38 = v33;
            *(v38 + 8) = v34;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v23 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v23 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v39 = i - (i >> 3);
    v40 = i == 7;
    v41 = 6;
    if (!v40)
    {
      v41 = v39;
    }
  }

  else
  {
    v41 = 0;
  }

  *(result + 40) = v41 - *(result + 16);
  return result;
}

uint64_t sub_71FA28(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_40D5C8((a1 + 824), 2u);
  return a1;
}

void sub_71FB6C(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_71FBB8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 888);
  v8 = sub_2B51D8(v7, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v9 = sub_30C50C(v7 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v12 = v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v12 = 0;
  }

  v128.i64[0] = v8;
  v128.i64[1] = v12;
  *&v129 = sub_31D7E8(v7, a2 & 0xFFFFFFFFFFFFLL, 1);
  *(&v129 + 1) = v13;
  v130 = a2;
  v14 = *(v6 + 888);
  v15 = sub_2B51D8(v14, a3 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, a3, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((a3 >> 30) & 0x3FFFC) + 4 + *(v18 + ((a3 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v124.i64[0] = v15;
  v124.i64[1] = v19;
  v125 = sub_31D7E8(v14, a3 & 0xFFFFFFFFFFFFLL, 1);
  v126 = v20;
  v127 = a3;
  if (**(a1 + 8) == 1)
  {
    v21 = *(*(a1 + 16) + 32);
    if (a2 == v21 && (HIDWORD(a2) & 0xFFFFFF) == (HIDWORD(v21) & 0xFFFFFF))
    {
      return 0;
    }

    v22 = *(*(a1 + 24) + 32);
    if (a3 == v22 && (HIDWORD(a3) & 0xFFFFFF) == (HIDWORD(v22) & 0xFFFFFF))
    {
      return 0;
    }
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  sub_31B8F4(*(v6 + 888), &v128, &v121);
  v24 = v121;
  v25 = v122;
  if (v121 == v122)
  {
LABEL_180:
    v23 = 0;
    v113 = v121;
    if (v121)
    {
      goto LABEL_181;
    }

    return v23;
  }

  while (1)
  {
    v30 = v24[2].u32[0];
    if (v30 == v127 && v24[2].u16[2] == WORD2(v127) && v24[2].u8[6] == BYTE6(v127))
    {
      goto LABEL_31;
    }

    v31 = v24->i64[0];
    v32 = (v24->i64[0] - *v24->i64[0]);
    v33 = *v32;
    if (v24[2].i8[6])
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v34 = v32[77];
      if (!v34 || (*(v31 + v34) & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v35 = v32[77];
      if (!v35 || (*(v31 + v35) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (**(a1 + 8) == 1)
    {
      v36 = *(a1 + 32);
      v37 = *(a1 + 16);
      sub_31A0AC(*(v6 + 888), v37, v30 | (v24[2].u16[2] << 32), v119[0].i64);
      if (!v37[2].i32[0])
      {
        goto LABEL_31;
      }

      v38 = *v37;
      if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v37), vceqzq_s64(v119[0])), xmmword_22671F0)) & 0xF) != 0 || v120 == 0)
      {
        goto LABEL_31;
      }

      v40 = (v38.i64[1] - *v38.i64[1]);
      v41 = *v40;
      if (v37[2].i8[6])
      {
        if (v41 < 5)
        {
          goto LABEL_59;
        }

        v42 = v40[2];
        if (!v42)
        {
          goto LABEL_59;
        }
      }

      else if (v41 < 9 || (v42 = v40[4]) == 0)
      {
LABEL_59:
        v43 = 0;
        v44 = v119[0].i64[1];
        v45 = (v119[0].i64[1] - *v119[0].i64[1]);
        v46 = *v45;
        if (BYTE6(v120))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      v43 = *(v38.i64[1] + v42);
      v44 = v119[0].i64[1];
      v45 = (v119[0].i64[1] - *v119[0].i64[1]);
      v46 = *v45;
      if (BYTE6(v120))
      {
LABEL_60:
        if (v46 >= 9)
        {
          v47 = v45[4];
          if (v47)
          {
LABEL_62:
            v48 = *(v44 + v47);
            goto LABEL_64;
          }
        }

LABEL_63:
        v48 = 0;
LABEL_64:
        v49 = v43 + 18000;
        v50 = v43 - 18000;
        if ((v49 >> 5) < 0x465u)
        {
          v50 = v49;
        }

        v51 = v48 - v50;
        if (v51 > 18000)
        {
          v51 -= 36000;
        }

        if (v51 < -17999)
        {
          v51 += 36000;
        }

        if (fabs(v51 / 100.0) >= *(*v36 + 1016))
        {
          goto LABEL_31;
        }

        v52 = *(a1 + 24);
        v53 = *(a1 + 32);
        sub_31A0AC(*(v6 + 888), v52, v24[2].u32[0] | (v24[2].u16[2] << 32), v117[0].i64);
        if (!v52[2].i32[0])
        {
          goto LABEL_31;
        }

        v54 = *v52;
        if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v52), vceqzq_s64(v117[0])), xmmword_22671F0)) & 0xF) != 0 || !v118)
        {
          goto LABEL_31;
        }

        v55 = (v54.i64[1] - *v54.i64[1]);
        v56 = *v55;
        if (v52[2].i8[6])
        {
          if (v56 < 5)
          {
            goto LABEL_84;
          }

          v57 = v55[2];
          if (!v57)
          {
            goto LABEL_84;
          }
        }

        else if (v56 < 9 || (v57 = v55[4]) == 0)
        {
LABEL_84:
          v58 = 0;
          v59 = v117[0].i64[1];
          v60 = (v117[0].i64[1] - *v117[0].i64[1]);
          v61 = *v60;
          if (BYTE6(v118))
          {
            goto LABEL_85;
          }

          goto LABEL_81;
        }

        v58 = *(v54.i64[1] + v57);
        v59 = v117[0].i64[1];
        v60 = (v117[0].i64[1] - *v117[0].i64[1]);
        v61 = *v60;
        if (BYTE6(v118))
        {
LABEL_85:
          if (v61 >= 9)
          {
            v62 = v60[4];
            if (v62)
            {
LABEL_87:
              v63 = *(v59 + v62);
              goto LABEL_89;
            }
          }

LABEL_88:
          v63 = 0;
LABEL_89:
          v64 = v58 + 18000;
          v65 = v58 - 18000;
          if ((v64 >> 5) < 0x465u)
          {
            v65 = v64;
          }

          v66 = v63 - v65;
          if (v66 > 18000)
          {
            v66 -= 36000;
          }

          if (v66 < -17999)
          {
            v66 += 36000;
          }

          if (fabs(v66 / 100.0) >= *(*v53 + 1016))
          {
            goto LABEL_31;
          }

          goto LABEL_96;
        }

LABEL_81:
        if (v61 >= 5)
        {
          v62 = v60[2];
          if (v62)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_88;
      }

LABEL_56:
      if (v46 >= 5)
      {
        v47 = v45[2];
        if (v47)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_63;
    }

LABEL_96:
    v67 = (v128.i64[0] - *v128.i64[0]);
    v68 = *v67;
    if (v68 < 0x9B || !v67[77] || (~*(v128.i64[0] + v67[77]) & 3) != 0)
    {
      v70 = (v124.i64[0] - *v124.i64[0]);
      if (*v70 >= 0x9Bu && (v71 = v70[77]) != 0)
      {
        v72 = *(v124.i64[0] + v71);
        if (v72)
        {
          v69 = (v72 >> 1) & 1;
        }

        else
        {
          v69 = 0;
        }

        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v69 = 0;
        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }
    }

    else
    {
      v69 = 1;
    }

    v73 = v67[77];
    if (v73)
    {
      v74 = *(v128.i64[0] + v73);
      if ((v74 & 2) != 0)
      {
        v75 = &v128;
      }

      else
      {
        v75 = &v124;
      }

      if (v74)
      {
        v76 = v75;
      }

      else
      {
        v76 = &v124;
      }

      goto LABEL_116;
    }

LABEL_115:
    v76 = &v124;
LABEL_116:
    v77 = v76[1];
    v119[0] = *v76;
    v119[1] = v77;
    v120 = v76[2].i64[0];
    v78 = (v128.i64[0] - *v128.i64[0]);
    if (*v78 >= 0x9Bu && (v79 = v78[77]) != 0)
    {
      v80 = *(v128.i64[0] + v79);
      if ((v80 & 2) != 0)
      {
        v81 = &v124;
      }

      else
      {
        v81 = &v128;
      }

      if (v80)
      {
        v82 = v81;
      }

      else
      {
        v82 = &v128;
      }
    }

    else
    {
      v82 = &v128;
    }

    v83 = v82[1];
    v117[0] = *v82;
    v117[1] = v83;
    v118 = v82[2].i64[0];
    v84 = sub_70E2E0(v6, v119, v117);
    if (!v69)
    {
      goto LABEL_162;
    }

    if (!v120)
    {
      goto LABEL_162;
    }

    v85 = *v24;
    if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v119[0]), vceqzq_s64(*v24)), xmmword_22671F0)) & 0xF) != 0 || !v24[2].i32[0])
    {
      goto LABEL_162;
    }

    v86 = (v119[0].i64[1] - *v119[0].i64[1]);
    v87 = *v86;
    if (BYTE6(v120))
    {
      if (v87 >= 5)
      {
        v88 = v86[2];
        if (v88)
        {
          goto LABEL_135;
        }
      }
    }

    else if (v87 >= 9)
    {
      v88 = v86[4];
      if (v88)
      {
LABEL_135:
        v89 = *(v119[0].i64[1] + v88);
        v90 = v24->i64[1];
        v91 = (v85.i64[1] - *v85.i64[1]);
        v92 = *v91;
        if (v24[2].i8[6])
        {
          goto LABEL_140;
        }

        goto LABEL_136;
      }
    }

    v89 = 0;
    v90 = v24->i64[1];
    v91 = (v85.i64[1] - *v85.i64[1]);
    v92 = *v91;
    if (v24[2].i8[6])
    {
LABEL_140:
      if (v92 >= 9)
      {
        v93 = v91[4];
        if (v93)
        {
          goto LABEL_142;
        }
      }

      goto LABEL_143;
    }

LABEL_136:
    if (v92 >= 5)
    {
      v93 = v91[2];
      if (v93)
      {
LABEL_142:
        v94 = *(v90 + v93);
        goto LABEL_144;
      }
    }

LABEL_143:
    v94 = 0;
LABEL_144:
    v95 = v89 + 18000;
    v96 = v89 - 18000;
    if ((v95 >> 5) < 0x465u)
    {
      v96 = v95;
    }

    v97 = v94 - v96;
    if (v97 > 18000)
    {
      v97 -= 36000;
    }

    if (v97 < -17999)
    {
      v97 += 36000;
    }

    if (fabs(v97 / 100.0) < *(**(a1 + 32) + 1016))
    {
      v98 = (v85.i64[0] - *v85.i64[0]);
      if (*v98 >= 0x9Bu)
      {
        v99 = v98[77];
        if (v99)
        {
          if ((~*(v85.i64[0] + v99) & 3) == 0)
          {
            if (v84 < 0.0)
            {
              v100 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v100 < 0x9Bu)
              {
                break;
              }

              v101 = v100[77];
              if (!v101 || (*(v119[0].i64[0] + v101 + 1) & 0x80) == 0)
              {
                break;
              }
            }

            if (v84 > 0.0)
            {
              v102 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v102 >= 0x9Bu)
              {
                v103 = v102[77];
                if (v103)
                {
                  if ((*(v119[0].i64[0] + v103 + 1) & 0x80) != 0)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_162:
    v104 = *(v6 + 888);
    v116 = v130;
    v115[0] = v128;
    v115[1] = v129;
    BYTE6(v116) = BYTE6(v130) == 0;
    if (!sub_31B71C(v104, v24, v115, &v124) || !v130 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v128), vceqzq_s64(v124)), xmmword_22671F0)) & 0xF) != 0 || !v127)
    {
      goto LABEL_31;
    }

    v105 = (v128.i64[1] - *v128.i64[1]);
    v106 = *v105;
    if (BYTE6(v130))
    {
      if (v106 >= 5)
      {
        v107 = v105[2];
        if (v107)
        {
          goto LABEL_172;
        }
      }
    }

    else if (v106 >= 9)
    {
      v107 = v105[4];
      if (v107)
      {
LABEL_172:
        v108 = *(v128.i64[1] + v107);
        v109 = v124.i64[1];
        v110 = (v124.i64[1] - *v124.i64[1]);
        v111 = *v110;
        if (BYTE6(v127))
        {
          goto LABEL_177;
        }

        goto LABEL_173;
      }
    }

    v108 = 0;
    v109 = v124.i64[1];
    v110 = (v124.i64[1] - *v124.i64[1]);
    v111 = *v110;
    if (BYTE6(v127))
    {
LABEL_177:
      if (v111 < 9)
      {
        goto LABEL_23;
      }

      v112 = v110[4];
      if (!v112)
      {
        goto LABEL_23;
      }

      goto LABEL_179;
    }

LABEL_173:
    if (v111 < 5 || (v112 = v110[2]) == 0)
    {
LABEL_23:
      v26 = 0;
      goto LABEL_24;
    }

LABEL_179:
    v26 = *(v109 + v112);
LABEL_24:
    v27 = v108 + 18000;
    v28 = v108 - 18000;
    if ((v27 >> 5) < 0x465u)
    {
      v28 = v27;
    }

    v29 = v26 - v28;
    if (v29 > 18000)
    {
      v29 -= 36000;
    }

    if (v29 < -17999)
    {
      v29 += 36000;
    }

    if (fabs(v29 / 100.0) < *(**(a1 + 32) + 1016))
    {
      break;
    }

LABEL_31:
    v24 = (v24 + 40);
    if (v24 == v25)
    {
      goto LABEL_180;
    }
  }

  v23 = 1;
  v113 = v121;
  if (!v121)
  {
    return v23;
  }

LABEL_181:
  v122 = v113;
  operator delete(v113);
  return v23;
}

void sub_720608(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_720634(uint64_t *a1, int **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (*(a2 + 38))
  {
    if (v7 >= 0x9B)
    {
      v8 = v6[77];
      if (v6[77])
      {
        v9 = 2;
LABEL_8:
        v10 = (*&v5[v8] & v9) != 0;
        goto LABEL_10;
      }
    }
  }

  else if (v7 >= 0x9B)
  {
    v8 = v6[77];
    if (v6[77])
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_10:
  v11 = *v3;
  v12 = (*v3 - **v3);
  v13 = *v12;
  if (!*(v3 + 38))
  {
    if (v13 >= 0x9B && v12[77])
    {
      if ((v10 ^ ((*(v11 + v12[77]))))
      {
        return 0;
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v10)
    {
      return 0;
    }

    if (v13 < 0x2F)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (v13 < 0x9B || !v12[77])
  {
    goto LABEL_19;
  }

  if ((v10 ^ ((*(v11 + v12[77]) & 2) != 0)))
  {
    return 0;
  }

LABEL_21:
  if (v12[23])
  {
    v14 = *(v11 + v12[23]);
    v15 = v14 > 0x2B || ((1 << v14) & 0x80000001040) == 0;
    if (v15 || v13 >= 0x9B && (v16 = v12[77]) != 0 && (*(v11 + v16 + 2) & 0x20) != 0)
    {
      v17 = v14 == 44;
      if (v7 < 0x2F)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v17 = 1;
      if (v7 < 0x2F)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  v17 = 0;
  if (v7 < 0x2F)
  {
LABEL_44:
    if (!v17)
    {
      goto LABEL_45;
    }

    return 0;
  }

LABEL_34:
  if (!v6[23])
  {
    goto LABEL_44;
  }

  v18 = v5[v6[23]];
  if (v18 <= 0x2B && ((1 << v18) & 0x80000001040) != 0 && (v7 < 0x9B || (v20 = v6[77]) == 0 || (v5[v20 + 2] & 0x20) == 0))
  {
    if (v17)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if ((v17 ^ (v18 == 44)))
  {
    return 0;
  }

LABEL_45:
  if (fabs(sub_70E2E0(*a1, v3, a2)) >= *(v4 + 1016))
  {
    return 0;
  }

  v22 = a1[2];
  v23 = *v22;
  v24 = sub_31ACAC(*(*v22 + 888), v22[1], a2);
  v25 = *(v23 + 888);
  v35 = a2[4];
  v26 = *(a2 + 1);
  v34[0] = *a2;
  v34[1] = v26;
  BYTE6(v35) = BYTE6(v35) == 0;
  v27 = v22[1];
  v28 = *v27;
  v29 = *(v27 + 16);
  v33 = *(v27 + 32);
  v32[0] = v28;
  v32[1] = v29;
  BYTE6(v33) = BYTE6(v33) == 0;
  v30 = sub_31ACAC(v25, v34, v32);
  if (v30 >= v24)
  {
    v30 = v24;
  }

  return v30 < *(v4 + 1904);
}

int **sub_7208D4(int **result, int **a2, uint64_t a3, int **a4)
{
  if (result != a2)
  {
    v4 = *a4;
    v5 = (*a4 - **a4);
    v6 = *v5;
    if (*(a4 + 38))
    {
      if (v6 <= 0x9A)
      {
        while (1)
        {
          v16 = *result;
          v17 = (*result - **result);
          v18 = *v17;
          if (*(result + 38))
          {
            if (v18 < 0x9B)
            {
              return result;
            }

            v19 = v17[77];
            if (!v19 || (*&v16[v19] & 2) == 0)
            {
              return result;
            }
          }

          else
          {
            if (v18 < 0x9B)
            {
              return result;
            }

            v20 = v17[77];
            if (!v20 || (*&v16[v20] & 1) == 0)
            {
              return result;
            }
          }

          result += 5;
          if (result == a2)
          {
            return a2;
          }
        }
      }

      v7 = v5[77];
      if (!v7)
      {
        v26 = result;
        while (1)
        {
          v27 = *v26;
          v28 = (*v26 - **v26);
          v29 = *v28;
          if (*(v26 + 38))
          {
            if (v29 < 0x9B)
            {
              return v26;
            }

            v30 = v28[77];
            if (!v30 || (*(v27 + v30) & 2) == 0)
            {
              return v26;
            }
          }

          else
          {
            if (v29 < 0x9B)
            {
              return v26;
            }

            v31 = v28[77];
            if (!v31 || (*(v27 + v31) & 1) == 0)
            {
              return v26;
            }
          }

          v26 += 5;
          result = a2;
          if (v26 == a2)
          {
            return result;
          }
        }
      }

      v8 = *&v4[v7];
      v9 = (v8 >> 1) & 1;
      while (1)
      {
        v21 = *result;
        v22 = (*result - **result);
        v23 = *v22;
        if (*(result + 38))
        {
          if (v23 < 0x9B)
          {
            goto LABEL_32;
          }

          v24 = v22[77];
          if (!v24)
          {
            goto LABEL_32;
          }

          if (((*&v21[v24] & 2) != 0) == v9)
          {
            return result;
          }
        }

        else
        {
          if (v23 < 0x9B || (v25 = v22[77]) == 0)
          {
LABEL_32:
            if ((v8 & 2) == 0)
            {
              return result;
            }

            goto LABEL_33;
          }

          if ((*&v21[v25]) == v9)
          {
            return result;
          }
        }

LABEL_33:
        result += 5;
        if (result == a2)
        {
          return a2;
        }
      }
    }

    while (1)
    {
      v10 = *result;
      v11 = (*result - **result);
      v12 = *v11;
      if (*(result + 38))
      {
        if (v12 >= 0x9B)
        {
          v13 = v11[77];
          if (v13)
          {
            v14 = (*&v10[v13] & 2) != 0;
            if (v6 < 0x9B)
            {
              goto LABEL_7;
            }

            goto LABEL_19;
          }
        }
      }

      else if (v12 >= 0x9B)
      {
        v15 = v11[77];
        if (v15)
        {
          v14 = (*&v10[v15] & 1) != 0;
          if (v6 < 0x9B)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        }
      }

      v14 = 0;
      if (v6 < 0x9B)
      {
        goto LABEL_7;
      }

LABEL_19:
      if (!v5[77])
      {
LABEL_7:
        if (!v14)
        {
          return result;
        }

        goto LABEL_8;
      }

      if (v14 == (v4[v5[77]] & 1))
      {
        return result;
      }

LABEL_8:
      result += 5;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

uint64_t sub_720B1C(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_40D5C8((a1 + 824), 2u);
  return a1;
}

void sub_720C60(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_720CAC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 888);
  v8 = sub_2B51D8(v7, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v9 = sub_30C50C(v7 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v12 = v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v12 = 0;
  }

  v128.i64[0] = v8;
  v128.i64[1] = v12;
  *&v129 = sub_31D7E8(v7, a2 & 0xFFFFFFFFFFFFLL, 1);
  *(&v129 + 1) = v13;
  v130 = a2;
  v14 = *(v6 + 888);
  v15 = sub_2B51D8(v14, a3 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, a3, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((a3 >> 30) & 0x3FFFC) + 4 + *(v18 + ((a3 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v124.i64[0] = v15;
  v124.i64[1] = v19;
  v125 = sub_31D7E8(v14, a3 & 0xFFFFFFFFFFFFLL, 1);
  v126 = v20;
  v127 = a3;
  if (**(a1 + 8) == 1)
  {
    v21 = *(*(a1 + 16) + 32);
    if (a2 == v21 && (HIDWORD(a2) & 0xFFFFFF) == (HIDWORD(v21) & 0xFFFFFF))
    {
      return 0;
    }

    v22 = *(*(a1 + 24) + 32);
    if (a3 == v22 && (HIDWORD(a3) & 0xFFFFFF) == (HIDWORD(v22) & 0xFFFFFF))
    {
      return 0;
    }
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  sub_31B8F4(*(v6 + 888), &v128, &v121);
  v24 = v121;
  v25 = v122;
  if (v121 == v122)
  {
LABEL_180:
    v23 = 0;
    v113 = v121;
    if (v121)
    {
      goto LABEL_181;
    }

    return v23;
  }

  while (1)
  {
    v30 = v24[2].u32[0];
    if (v30 == v127 && v24[2].u16[2] == WORD2(v127) && v24[2].u8[6] == BYTE6(v127))
    {
      goto LABEL_31;
    }

    v31 = v24->i64[0];
    v32 = (v24->i64[0] - *v24->i64[0]);
    v33 = *v32;
    if (v24[2].i8[6])
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v34 = v32[77];
      if (!v34 || (*(v31 + v34) & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v35 = v32[77];
      if (!v35 || (*(v31 + v35) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (**(a1 + 8) == 1)
    {
      v36 = *(a1 + 32);
      v37 = *(a1 + 16);
      sub_31A0AC(*(v6 + 888), v37, v30 | (v24[2].u16[2] << 32), v119[0].i64);
      if (!v37[2].i32[0])
      {
        goto LABEL_31;
      }

      v38 = *v37;
      if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v37), vceqzq_s64(v119[0])), xmmword_22671F0)) & 0xF) != 0 || v120 == 0)
      {
        goto LABEL_31;
      }

      v40 = (v38.i64[1] - *v38.i64[1]);
      v41 = *v40;
      if (v37[2].i8[6])
      {
        if (v41 < 5)
        {
          goto LABEL_59;
        }

        v42 = v40[2];
        if (!v42)
        {
          goto LABEL_59;
        }
      }

      else if (v41 < 9 || (v42 = v40[4]) == 0)
      {
LABEL_59:
        v43 = 0;
        v44 = v119[0].i64[1];
        v45 = (v119[0].i64[1] - *v119[0].i64[1]);
        v46 = *v45;
        if (BYTE6(v120))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      v43 = *(v38.i64[1] + v42);
      v44 = v119[0].i64[1];
      v45 = (v119[0].i64[1] - *v119[0].i64[1]);
      v46 = *v45;
      if (BYTE6(v120))
      {
LABEL_60:
        if (v46 >= 9)
        {
          v47 = v45[4];
          if (v47)
          {
LABEL_62:
            v48 = *(v44 + v47);
            goto LABEL_64;
          }
        }

LABEL_63:
        v48 = 0;
LABEL_64:
        v49 = v43 + 18000;
        v50 = v43 - 18000;
        if ((v49 >> 5) < 0x465u)
        {
          v50 = v49;
        }

        v51 = v48 - v50;
        if (v51 > 18000)
        {
          v51 -= 36000;
        }

        if (v51 < -17999)
        {
          v51 += 36000;
        }

        if (fabs(v51 / 100.0) >= *(*v36 + 1016))
        {
          goto LABEL_31;
        }

        v52 = *(a1 + 24);
        v53 = *(a1 + 32);
        sub_31A0AC(*(v6 + 888), v52, v24[2].u32[0] | (v24[2].u16[2] << 32), v117[0].i64);
        if (!v52[2].i32[0])
        {
          goto LABEL_31;
        }

        v54 = *v52;
        if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v52), vceqzq_s64(v117[0])), xmmword_22671F0)) & 0xF) != 0 || !v118)
        {
          goto LABEL_31;
        }

        v55 = (v54.i64[1] - *v54.i64[1]);
        v56 = *v55;
        if (v52[2].i8[6])
        {
          if (v56 < 5)
          {
            goto LABEL_84;
          }

          v57 = v55[2];
          if (!v57)
          {
            goto LABEL_84;
          }
        }

        else if (v56 < 9 || (v57 = v55[4]) == 0)
        {
LABEL_84:
          v58 = 0;
          v59 = v117[0].i64[1];
          v60 = (v117[0].i64[1] - *v117[0].i64[1]);
          v61 = *v60;
          if (BYTE6(v118))
          {
            goto LABEL_85;
          }

          goto LABEL_81;
        }

        v58 = *(v54.i64[1] + v57);
        v59 = v117[0].i64[1];
        v60 = (v117[0].i64[1] - *v117[0].i64[1]);
        v61 = *v60;
        if (BYTE6(v118))
        {
LABEL_85:
          if (v61 >= 9)
          {
            v62 = v60[4];
            if (v62)
            {
LABEL_87:
              v63 = *(v59 + v62);
              goto LABEL_89;
            }
          }

LABEL_88:
          v63 = 0;
LABEL_89:
          v64 = v58 + 18000;
          v65 = v58 - 18000;
          if ((v64 >> 5) < 0x465u)
          {
            v65 = v64;
          }

          v66 = v63 - v65;
          if (v66 > 18000)
          {
            v66 -= 36000;
          }

          if (v66 < -17999)
          {
            v66 += 36000;
          }

          if (fabs(v66 / 100.0) >= *(*v53 + 1016))
          {
            goto LABEL_31;
          }

          goto LABEL_96;
        }

LABEL_81:
        if (v61 >= 5)
        {
          v62 = v60[2];
          if (v62)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_88;
      }

LABEL_56:
      if (v46 >= 5)
      {
        v47 = v45[2];
        if (v47)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_63;
    }

LABEL_96:
    v67 = (v128.i64[0] - *v128.i64[0]);
    v68 = *v67;
    if (v68 < 0x9B || !v67[77] || (~*(v128.i64[0] + v67[77]) & 3) != 0)
    {
      v70 = (v124.i64[0] - *v124.i64[0]);
      if (*v70 >= 0x9Bu && (v71 = v70[77]) != 0)
      {
        v72 = *(v124.i64[0] + v71);
        if (v72)
        {
          v69 = (v72 >> 1) & 1;
        }

        else
        {
          v69 = 0;
        }

        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v69 = 0;
        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }
    }

    else
    {
      v69 = 1;
    }

    v73 = v67[77];
    if (v73)
    {
      v74 = *(v128.i64[0] + v73);
      if ((v74 & 2) != 0)
      {
        v75 = &v128;
      }

      else
      {
        v75 = &v124;
      }

      if (v74)
      {
        v76 = v75;
      }

      else
      {
        v76 = &v124;
      }

      goto LABEL_116;
    }

LABEL_115:
    v76 = &v124;
LABEL_116:
    v77 = v76[1];
    v119[0] = *v76;
    v119[1] = v77;
    v120 = v76[2].i64[0];
    v78 = (v128.i64[0] - *v128.i64[0]);
    if (*v78 >= 0x9Bu && (v79 = v78[77]) != 0)
    {
      v80 = *(v128.i64[0] + v79);
      if ((v80 & 2) != 0)
      {
        v81 = &v124;
      }

      else
      {
        v81 = &v128;
      }

      if (v80)
      {
        v82 = v81;
      }

      else
      {
        v82 = &v128;
      }
    }

    else
    {
      v82 = &v128;
    }

    v83 = v82[1];
    v117[0] = *v82;
    v117[1] = v83;
    v118 = v82[2].i64[0];
    v84 = sub_70E2E0(v6, v119, v117);
    if (!v69)
    {
      goto LABEL_162;
    }

    if (!v120)
    {
      goto LABEL_162;
    }

    v85 = *v24;
    if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v119[0]), vceqzq_s64(*v24)), xmmword_22671F0)) & 0xF) != 0 || !v24[2].i32[0])
    {
      goto LABEL_162;
    }

    v86 = (v119[0].i64[1] - *v119[0].i64[1]);
    v87 = *v86;
    if (BYTE6(v120))
    {
      if (v87 >= 5)
      {
        v88 = v86[2];
        if (v88)
        {
          goto LABEL_135;
        }
      }
    }

    else if (v87 >= 9)
    {
      v88 = v86[4];
      if (v88)
      {
LABEL_135:
        v89 = *(v119[0].i64[1] + v88);
        v90 = v24->i64[1];
        v91 = (v85.i64[1] - *v85.i64[1]);
        v92 = *v91;
        if (v24[2].i8[6])
        {
          goto LABEL_140;
        }

        goto LABEL_136;
      }
    }

    v89 = 0;
    v90 = v24->i64[1];
    v91 = (v85.i64[1] - *v85.i64[1]);
    v92 = *v91;
    if (v24[2].i8[6])
    {
LABEL_140:
      if (v92 >= 9)
      {
        v93 = v91[4];
        if (v93)
        {
          goto LABEL_142;
        }
      }

      goto LABEL_143;
    }

LABEL_136:
    if (v92 >= 5)
    {
      v93 = v91[2];
      if (v93)
      {
LABEL_142:
        v94 = *(v90 + v93);
        goto LABEL_144;
      }
    }

LABEL_143:
    v94 = 0;
LABEL_144:
    v95 = v89 + 18000;
    v96 = v89 - 18000;
    if ((v95 >> 5) < 0x465u)
    {
      v96 = v95;
    }

    v97 = v94 - v96;
    if (v97 > 18000)
    {
      v97 -= 36000;
    }

    if (v97 < -17999)
    {
      v97 += 36000;
    }

    if (fabs(v97 / 100.0) < *(**(a1 + 32) + 1016))
    {
      v98 = (v85.i64[0] - *v85.i64[0]);
      if (*v98 >= 0x9Bu)
      {
        v99 = v98[77];
        if (v99)
        {
          if ((~*(v85.i64[0] + v99) & 3) == 0)
          {
            if (v84 < 0.0)
            {
              v100 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v100 < 0x9Bu)
              {
                break;
              }

              v101 = v100[77];
              if (!v101 || (*(v119[0].i64[0] + v101 + 1) & 0x80) == 0)
              {
                break;
              }
            }

            if (v84 > 0.0)
            {
              v102 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v102 >= 0x9Bu)
              {
                v103 = v102[77];
                if (v103)
                {
                  if ((*(v119[0].i64[0] + v103 + 1) & 0x80) != 0)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_162:
    v104 = *(v6 + 888);
    v116 = v130;
    v115[0] = v128;
    v115[1] = v129;
    BYTE6(v116) = BYTE6(v130) == 0;
    if (!sub_31B71C(v104, v24, v115, &v124) || !v130 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v128), vceqzq_s64(v124)), xmmword_22671F0)) & 0xF) != 0 || !v127)
    {
      goto LABEL_31;
    }

    v105 = (v128.i64[1] - *v128.i64[1]);
    v106 = *v105;
    if (BYTE6(v130))
    {
      if (v106 >= 5)
      {
        v107 = v105[2];
        if (v107)
        {
          goto LABEL_172;
        }
      }
    }

    else if (v106 >= 9)
    {
      v107 = v105[4];
      if (v107)
      {
LABEL_172:
        v108 = *(v128.i64[1] + v107);
        v109 = v124.i64[1];
        v110 = (v124.i64[1] - *v124.i64[1]);
        v111 = *v110;
        if (BYTE6(v127))
        {
          goto LABEL_177;
        }

        goto LABEL_173;
      }
    }

    v108 = 0;
    v109 = v124.i64[1];
    v110 = (v124.i64[1] - *v124.i64[1]);
    v111 = *v110;
    if (BYTE6(v127))
    {
LABEL_177:
      if (v111 < 9)
      {
        goto LABEL_23;
      }

      v112 = v110[4];
      if (!v112)
      {
        goto LABEL_23;
      }

      goto LABEL_179;
    }

LABEL_173:
    if (v111 < 5 || (v112 = v110[2]) == 0)
    {
LABEL_23:
      v26 = 0;
      goto LABEL_24;
    }

LABEL_179:
    v26 = *(v109 + v112);
LABEL_24:
    v27 = v108 + 18000;
    v28 = v108 - 18000;
    if ((v27 >> 5) < 0x465u)
    {
      v28 = v27;
    }

    v29 = v26 - v28;
    if (v29 > 18000)
    {
      v29 -= 36000;
    }

    if (v29 < -17999)
    {
      v29 += 36000;
    }

    if (fabs(v29 / 100.0) < *(**(a1 + 32) + 1016))
    {
      break;
    }

LABEL_31:
    v24 = (v24 + 40);
    if (v24 == v25)
    {
      goto LABEL_180;
    }
  }

  v23 = 1;
  v113 = v121;
  if (!v121)
  {
    return v23;
  }

LABEL_181:
  v122 = v113;
  operator delete(v113);
  return v23;
}

void sub_7216FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_721728(uint64_t *a1, int **a2)
{
  v4 = a1[1];
  v5 = *v4;
  v6 = (*v4 - **v4);
  v7 = *v6;
  if (v7 >= 0x2F && v6[23])
  {
    v8 = *(v5 + v6[23]);
    v9 = v8 > 0x2B || ((1 << v8) & 0x80000001040) == 0;
    v11 = !v9 && (v7 < 0x9B || (v10 = v6[77]) == 0 || (*(v5 + v10 + 2) & 0x20) == 0) || v8 == 44;
  }

  else
  {
    v11 = 0;
  }

  v12 = *a1;
  v13 = *a2;
  v14 = (*a2 - **a2);
  v15 = *v14;
  if (v15 >= 0x2F && v14[23])
  {
    v16 = *(v13 + v14[23]);
    v17 = v16 > 0x2B || ((1 << v16) & 0x80000001040) == 0;
    if (v17 || v15 >= 0x9B && (v18 = v14[77]) != 0 && (*(v13 + v18 + 2) & 0x20) != 0)
    {
      if ((v11 ^ (v16 == 44)))
      {
        return 0;
      }
    }

    else if (!v11)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (fabs(sub_70E2E0(*a1, v4, a2)) >= *(v12 + 1016))
  {
    return 0;
  }

  v19 = a1[2];
  v20 = *v19;
  v21 = sub_31ACAC(*(*v19 + 888), v19[1], a2);
  v22 = *(v20 + 888);
  v32 = a2[4];
  v23 = *(a2 + 1);
  v31[0] = *a2;
  v31[1] = v23;
  BYTE6(v32) = BYTE6(v32) == 0;
  v24 = v19[1];
  v25 = *v24;
  v26 = *(v24 + 16);
  v30 = *(v24 + 32);
  v29[0] = v25;
  v29[1] = v26;
  BYTE6(v30) = BYTE6(v30) == 0;
  v27 = sub_31ACAC(v22, v31, v29);
  if (v27 >= v21)
  {
    v27 = v21;
  }

  return v27 < *(v12 + 1904);
}

void sub_721918()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A40B0 = 0u;
  unk_27A40C0 = 0u;
  dword_27A40D0 = 1065353216;
  sub_3A9A34(&xmmword_27A40B0, v0, v0);
  sub_3A9A34(&xmmword_27A40B0, v3, v3);
  sub_3A9A34(&xmmword_27A40B0, __p, __p);
  sub_3A9A34(&xmmword_27A40B0, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A4088 = 0;
    qword_27A4090 = 0;
    qword_27A4080 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_721B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A4098)
  {
    qword_27A40A0 = qword_27A4098;
    operator delete(qword_27A4098);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_721C0C(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 384);
  if ((v4 & 0xFE) == 4)
  {
    v4 = a3;
  }

  if (v4)
  {
    if (v4 == 2)
    {
      if (a4)
      {
        *(result + 32) = *(a2 + 1008);
      }

      ++*(result + 8);
    }

    else if (v4 == 3)
    {
      if (a4)
      {
        *(result + 24) = *(a2 + 1008);
      }

      ++*(result + 4);
    }
  }

  else
  {
    if (a4)
    {
      *(result + 16) = *(a2 + 1008);
    }

    ++*result;
  }

  return result;
}

void sub_721C84(uint64_t result, uint64_t a2, int a3, int a4)
{
  v6 = result;
  switch(*(a2 + 160))
  {
    case 0:
      goto LABEL_71;
    case 1:
      result += 400;
      goto LABEL_71;
    case 2:
      result += 440;
      goto LABEL_71;
    case 3:
      result += 800;
      goto LABEL_71;
    case 4:
      result += 320;
      goto LABEL_71;
    case 5:
      result += 840;
      goto LABEL_71;
    case 6:
      result += 1640;
      goto LABEL_71;
    case 7:
      result += 1680;
      goto LABEL_71;
    case 0xB:
      result += 1040;
      goto LABEL_71;
    case 0xC:
      result += 1000;
      goto LABEL_71;
    case 0x10:
      result += 2600;
      goto LABEL_71;
    case 0x11:
      result += 40;
      goto LABEL_71;
    case 0x12:
      result += 2680;
      goto LABEL_71;
    case 0x14:
      result += 720;
      goto LABEL_71;
    case 0x15:
      result += 760;
      goto LABEL_71;
    case 0x16:
      result += 1280;
      goto LABEL_71;
    case 0x17:
      result += 1320;
      goto LABEL_71;
    case 0x18:
      result += 1360;
      goto LABEL_71;
    case 0x19:
      result += 120;
      goto LABEL_71;
    case 0x1A:
      result += 1800;
      goto LABEL_71;
    case 0x1B:
      result += 640;
      goto LABEL_71;
    case 0x1C:
      result += 680;
      goto LABEL_71;
    case 0x1D:
      result += 1080;
      goto LABEL_71;
    case 0x1E:
      result += 1120;
      goto LABEL_71;
    case 0x21:
      result += 2760;
      goto LABEL_71;
    case 0x22:
      result += 2720;
      goto LABEL_71;
    case 0x23:
      result += 360;
      goto LABEL_71;
    case 0x27:
      result += 2640;
      goto LABEL_71;
    case 0x29:
      result += 1840;
      goto LABEL_71;
    case 0x2A:
      result += 1880;
      goto LABEL_71;
    case 0x2B:
      result += 1920;
      goto LABEL_71;
    case 0x2C:
      result += 1960;
      goto LABEL_71;
    case 0x2D:
      result += 2000;
      goto LABEL_71;
    case 0x2E:
      result += 2040;
      goto LABEL_71;
    case 0x2F:
      result += 2080;
      goto LABEL_71;
    case 0x30:
      result += 2120;
      goto LABEL_71;
    case 0x31:
      result += 2160;
      goto LABEL_71;
    case 0x32:
      result += 2200;
      goto LABEL_71;
    case 0x33:
      result += 2240;
      goto LABEL_71;
    case 0x34:
      result += 2280;
      goto LABEL_71;
    case 0x35:
      result += 2320;
      goto LABEL_71;
    case 0x36:
      result += 2360;
      goto LABEL_71;
    case 0x37:
      result += 2400;
      goto LABEL_71;
    case 0x38:
      result += 2440;
      goto LABEL_71;
    case 0x39:
      result += 2480;
      goto LABEL_71;
    case 0x3A:
      result += 2520;
      goto LABEL_71;
    case 0x3B:
      result += 2560;
      goto LABEL_71;
    case 0x3C:
      result += 480;
      goto LABEL_71;
    case 0x3D:
      result += 520;
      goto LABEL_71;
    case 0x3E:
      result += 560;
      goto LABEL_71;
    case 0x3F:
      result += 600;
      goto LABEL_71;
    case 0x40:
      result += 1160;
      goto LABEL_71;
    case 0x41:
      result += 1200;
      goto LABEL_71;
    case 0x42:
      result += 1240;
      goto LABEL_71;
    case 0x52:
      result += 200;
      goto LABEL_71;
    case 0x53:
      result += 240;
      goto LABEL_71;
    case 0x54:
      result += 280;
      goto LABEL_71;
    case 0x55:
      result += 80;
      goto LABEL_71;
    case 0x56:
      result += 1720;
      goto LABEL_71;
    case 0x57:
      result += 1760;
      goto LABEL_71;
    case 0x58:
      result += 160;
      goto LABEL_71;
    case 0x59:
      result += 880;
      goto LABEL_71;
    case 0x5A:
      result += 920;
      goto LABEL_71;
    case 0x5B:
      result += 1400;
      goto LABEL_71;
    case 0x5C:
      result += 1440;
      goto LABEL_71;
    case 0x5D:
      result += 1480;
      goto LABEL_71;
    case 0x5E:
      result += 1520;
      goto LABEL_71;
    case 0x5F:
      result += 1560;
      goto LABEL_71;
    case 0x60:
      result += 1600;
      goto LABEL_71;
    case 0x61:
      result += 960;
LABEL_71:
      sub_721C0C(result, a2, a3, a4);
      break;
    default:
      break;
  }

  if (a3 == 3 || !a3)
  {
    v7 = *(a2 + 160);
    if (v7 == 26 || (v7 - 41) <= 0x12)
    {
      v9[0] = a3;
      v10 = *(a2 + 296);
      v11 = *(a2 + 288);
      v12 = *(a2 + 312);
      sub_7220F4(v6 + 2800, v9);
    }
  }
}

void sub_7220F4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

void sub_722240(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a2 + 1) == 0x7FFFFFFFFFFFFFFFLL || *(a2 + 2) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = "Maneuvers.Cycling";
  }

  else
  {
    v7 = "Maneuvers.Driving.";
  }

  if (*a2)
  {
    v8 = 17;
  }

  else
  {
    v8 = 18;
  }

  v61 = v8;
  memcpy(&__dst, v7, v8);
  *(&__dst + v8) = 0;
  qmemcpy(v66, "isRoundabout", 12);
  LODWORD(v62) = 1;
  v9 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v10 = v61;
  }

  else
  {
    v10 = v60;
  }

  if (v10 + 12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v10 + 12 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v65 = 0;
  __p[0] = 0;
  HIBYTE(v65) = v10 + 12;
  if (v10)
  {
    if ((v61 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    memmove(__p, p_dst, v10);
  }

  v12 = __p + v10;
  v13 = *v66;
  *(v12 + 2) = *&v66[8];
  *v12 = v13;
  v12[12] = 0;
  v63 = 4;
  sub_725004(a3, __p, &v63, &v62);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__dst);
LABEL_24:
  v61 = v8;
  memcpy(&__dst, v7, v8);
  v14 = 17;
  if (!v6)
  {
    v14 = 18;
  }

  *(&__dst + v14) = 0;
  qmemcpy(v66, "Circumference", 13);
  v15 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v16 = v61;
  }

  else
  {
    v16 = v60;
  }

  if (v16 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v16 + 13 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v65 = 0;
  __p[0] = 0;
  HIBYTE(v65) = v16 + 13;
  if (v16)
  {
    if ((v61 & 0x80u) == 0)
    {
      v17 = &__dst;
    }

    else
    {
      v17 = __dst;
    }

    memmove(__p, v17, v16);
  }

  v18 = __p + v16;
  v19 = *v66;
  *(v18 + 5) = *&v66[5];
  *v18 = v19;
  v18[13] = 0;
  v63 = 7;
  v20 = *(a2 + 1);
  v21 = v20 / 100;
  v22 = v20 % 100;
  if (v20 < 0)
  {
    v23 = -50;
  }

  else
  {
    v23 = 50;
  }

  v62 = v21 + (((5243 * (v23 + v22)) >> 19) + ((5243 * (v23 + v22)) >> 31));
  sub_725298(a3, __p, &v63, &v62);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(__dst);
LABEL_42:
  v61 = v8;
  memcpy(&__dst, v7, v8);
  v24 = 17;
  if (!v6)
  {
    v24 = 18;
  }

  *(&__dst + v24) = 0;
  qmemcpy(v66, "TraversedDistance", 17);
  v25 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v26 = v61;
  }

  else
  {
    v26 = v60;
  }

  if (v26 + 17 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v26 + 17 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v65 = 0;
  __p[0] = 0;
  HIBYTE(v65) = v26 + 17;
  if (v26)
  {
    if ((v61 & 0x80u) == 0)
    {
      v27 = &__dst;
    }

    else
    {
      v27 = __dst;
    }

    memmove(__p, v27, v26);
  }

  v28 = __p + v26;
  v29 = *v66;
  v28[16] = v66[16];
  *v28 = v29;
  v28[17] = 0;
  v63 = 7;
  v30 = *(a2 + 2);
  v31 = v30 / 100;
  v32 = v30 % 100;
  if (v30 < 0)
  {
    v33 = -50;
  }

  else
  {
    v33 = 50;
  }

  v62 = v31 + (((5243 * (v33 + v32)) >> 19) + ((5243 * (v33 + v32)) >> 31));
  sub_725298(a3, __p, &v63, &v62);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

  operator delete(__dst);
LABEL_60:
  v61 = v8;
  memcpy(&__dst, v7, v8);
  v34 = 17;
  if (!v6)
  {
    v34 = 18;
  }

  *(&__dst + v34) = 0;
  qmemcpy(v66, "RoundaboutBranchCount", sizeof(v66));
  LODWORD(v62) = *(a2 + 4);
  v35 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v36 = v61;
  }

  else
  {
    v36 = v60;
  }

  if (v36 + 21 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v36 + 21 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v65 = 0;
  __p[0] = 0;
  HIBYTE(v65) = v36 + 21;
  if (v36)
  {
    if ((v61 & 0x80u) == 0)
    {
      v37 = &__dst;
    }

    else
    {
      v37 = __dst;
    }

    memmove(__p, v37, v36);
  }

  v38 = __p + v36;
  v39 = *v66;
  *(v38 + 13) = *&v66[13];
  *v38 = v39;
  v38[21] = 0;
  v63 = 4;
  sub_725004(a3, __p, &v63, &v62);
  if ((SHIBYTE(v65) & 0x80000000) == 0)
  {
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_84:
    operator delete(__dst);
    if (a2[24] != 1)
    {
      goto LABEL_100;
    }

    goto LABEL_85;
  }

  operator delete(__p[0]);
  if (v35 < 0)
  {
    goto LABEL_84;
  }

LABEL_75:
  if (a2[24] != 1)
  {
LABEL_100:
    if (a2[25] == 1)
    {
      goto LABEL_101;
    }

    goto LABEL_106;
  }

LABEL_85:
  v61 = v8;
  memcpy(&__dst, v7, v8);
  v40 = 17;
  if (!v6)
  {
    v40 = 18;
  }

  *(&__dst + v40) = 0;
  qmemcpy(v66, "IsSimpleRoundabout", 18);
  LODWORD(v62) = 1;
  v41 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v42 = v61;
  }

  else
  {
    v42 = v60;
  }

  if (v42 + 18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v42 + 18 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v65 = 0;
  __p[0] = 0;
  HIBYTE(v65) = v42 + 18;
  if (v42)
  {
    if ((v61 & 0x80u) == 0)
    {
      v43 = &__dst;
    }

    else
    {
      v43 = __dst;
    }

    memmove(__p, v43, v42);
  }

  v44 = __p + v42;
  v45 = *v66;
  *(v44 + 8) = *&v66[16];
  *v44 = v45;
  v44[18] = 0;
  v63 = 4;
  sub_725004(a3, __p, &v63, &v62);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_100;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

  operator delete(__dst);
  if (a2[25] == 1)
  {
LABEL_101:
    v61 = v8;
    memcpy(&__dst, v7, v8);
    v46 = 17;
    if (!v6)
    {
      v46 = 18;
    }

    *(&__dst + v46) = 0;
    operator new();
  }

LABEL_106:
  if (a2[26] != 1)
  {
    goto LABEL_124;
  }

  v61 = v8;
  memcpy(&__dst, v7, v8);
  v47 = 17;
  if (!v6)
  {
    v47 = 18;
  }

  *(&__dst + v47) = 0;
  qmemcpy(v66, "HasTwoStageGuidance", 19);
  LODWORD(v62) = 1;
  v48 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v49 = v61;
  }

  else
  {
    v49 = v60;
  }

  if (v49 + 19 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v49 + 19 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v65 = 0;
  __p[0] = 0;
  HIBYTE(v65) = v49 + 19;
  if (v49)
  {
    if ((v61 & 0x80u) == 0)
    {
      v50 = &__dst;
    }

    else
    {
      v50 = __dst;
    }

    memmove(__p, v50, v49);
  }

  v51 = __p + v49;
  v52 = *v66;
  *(v51 + 15) = *&v66[15];
  *v51 = v52;
  v51[19] = 0;
  v63 = 4;
  sub_725004(a3, __p, &v63, &v62);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
    if (v48 < 0)
    {
      goto LABEL_141;
    }

LABEL_124:
    if (a2[27] != 1)
    {
      return;
    }

    goto LABEL_125;
  }

  if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_124;
  }

LABEL_141:
  operator delete(__dst);
  if (a2[27] != 1)
  {
    return;
  }

LABEL_125:
  v61 = v8;
  memcpy(&__dst, v7, v8);
  v53 = 17;
  if (!v6)
  {
    v53 = 18;
  }

  *(&__dst + v53) = 0;
  qmemcpy(v66, "HasSmallLoop", 12);
  LODWORD(v62) = 1;
  v54 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v55 = v61;
  }

  else
  {
    v55 = v60;
  }

  if (v55 + 12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v55 + 12 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v65 = 0;
  __p[0] = 0;
  HIBYTE(v65) = v55 + 12;
  if (v55)
  {
    if ((v61 & 0x80u) == 0)
    {
      v56 = &__dst;
    }

    else
    {
      v56 = __dst;
    }

    memmove(__p, v56, v55);
  }

  v57 = __p + v55;
  v58 = *v66;
  *(v57 + 2) = *&v66[8];
  *v57 = v58;
  v57[12] = 0;
  v63 = 4;
  sub_725004(a3, __p, &v63, &v62);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
    if ((v54 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((v54 & 0x80000000) == 0)
  {
    return;
  }

  operator delete(__dst);
}

void sub_722E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v24 & 0x80000000) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(a11);
  goto LABEL_6;
}

void sub_722F64(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  v3 = a2 + 24;
  *(a2 + 23) = 9;
  *(a2 + 8) = 115;
  *a2 = *"Maneuvers";
  v80[23] = 6;
  strcpy(v80, "NoTurn");
  v4 = a1[1];
  v77 = *a1;
  v78 = v4;
  v79 = *(a1 + 4);
  sub_724830(v80, &v77, a2 + 24);
  v80[23] = 10;
  strcpy(v80, "StartRoute");
  v5 = a1[6];
  v77 = a1[5];
  v78 = v5;
  v79 = *(a1 + 14);
  sub_724830(v80, &v77, v3);
  v80[23] = 11;
  strcpy(v80, "ResumeRoute");
  v6 = a1[6];
  v77 = a1[5];
  v78 = v6;
  v79 = *(a1 + 14);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "StartRouteUTurn");
  v7 = *(a1 + 136);
  v77 = *(a1 + 120);
  v78 = v7;
  v79 = *(a1 + 19);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "ResumeRouteUTurn");
  v8 = a1[11];
  v77 = a1[10];
  v78 = v8;
  v79 = *(a1 + 24);
  sub_724830(v80, &v77, v3);
  v80[23] = 12;
  strcpy(v80, "WaypointStop");
  v9 = *(a1 + 216);
  v77 = *(a1 + 200);
  v78 = v9;
  v79 = *(a1 + 29);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "WaypointStopLeft");
  v10 = a1[16];
  v77 = a1[15];
  v78 = v10;
  v79 = *(a1 + 34);
  sub_724830(v80, &v77, v3);
  v80[23] = 17;
  strcpy(v80, "WaypointStopRight");
  v11 = *(a1 + 296);
  v77 = *(a1 + 280);
  v78 = v11;
  v79 = *(a1 + 39);
  sub_724830(v80, &v77, v3);
  v80[23] = 5;
  strcpy(v80, "Uturn");
  v12 = a1[21];
  v77 = a1[20];
  v78 = v12;
  v79 = *(a1 + 44);
  sub_724830(v80, &v77, v3);
  v80[23] = 17;
  strcpy(v80, "UturnWhenPossible");
  v13 = *(a1 + 376);
  v77 = *(a1 + 360);
  v78 = v13;
  v79 = *(a1 + 49);
  sub_724830(v80, &v77, v3);
  v80[23] = 8;
  strcpy(v80, "LeftTurn");
  v14 = a1[26];
  v77 = a1[25];
  v78 = v14;
  v79 = *(a1 + 54);
  sub_724830(v80, &v77, v3);
  v80[23] = 9;
  strcpy(v80, "RightTurn");
  v15 = *(a1 + 456);
  v77 = *(a1 + 440);
  v78 = v15;
  v79 = *(a1 + 59);
  sub_724830(v80, &v77, v3);
  v80[23] = 13;
  strcpy(v80, "SharpLeftTurn");
  v16 = a1[31];
  v77 = a1[30];
  v78 = v16;
  v79 = *(a1 + 64);
  sub_724830(v80, &v77, v3);
  v80[23] = 14;
  strcpy(v80, "SharpRightTurn");
  v17 = *(a1 + 536);
  v77 = *(a1 + 520);
  v78 = v17;
  v79 = *(a1 + 69);
  sub_724830(v80, &v77, v3);
  v80[23] = 14;
  strcpy(v80, "SlightLeftTurn");
  v18 = a1[36];
  v77 = a1[35];
  v78 = v18;
  v79 = *(a1 + 74);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "SlightRightTurn");
  v19 = *(a1 + 616);
  v77 = *(a1 + 600);
  v78 = v19;
  v79 = *(a1 + 79);
  sub_724830(v80, &v77, v3);
  v80[23] = 13;
  strcpy(v80, "LeftTurnAtEnd");
  v20 = a1[41];
  v77 = a1[40];
  v78 = v20;
  v79 = *(a1 + 84);
  sub_724830(v80, &v77, v3);
  v80[23] = 14;
  strcpy(v80, "RightTurnAtEnd");
  v21 = *(a1 + 696);
  v77 = *(a1 + 680);
  v78 = v21;
  v79 = *(a1 + 89);
  sub_724830(v80, &v77, v3);
  v80[23] = 8;
  strcpy(v80, "KeepLeft");
  v22 = a1[46];
  v77 = a1[45];
  v78 = v22;
  v79 = *(a1 + 94);
  sub_724830(v80, &v77, v3);
  v80[23] = 9;
  strcpy(v80, "KeepRight");
  v23 = *(a1 + 776);
  v77 = *(a1 + 760);
  v78 = v23;
  v79 = *(a1 + 99);
  sub_724830(v80, &v77, v3);
  v80[23] = 13;
  strcpy(v80, "StraightAhead");
  v24 = a1[51];
  v77 = a1[50];
  v78 = v24;
  v79 = *(a1 + 104);
  sub_724830(v80, &v77, v3);
  v80[23] = 10;
  strcpy(v80, "followRoad");
  v25 = *(a1 + 856);
  v77 = *(a1 + 840);
  v78 = v25;
  v79 = *(a1 + 109);
  sub_724830(v80, &v77, v3);
  v80[23] = 21;
  strcpy(v80, "FollowRoadEnterDetour");
  v26 = a1[56];
  v77 = a1[55];
  v78 = v26;
  v79 = *(a1 + 114);
  sub_724830(v80, &v77, v3);
  v80[23] = 20;
  strcpy(v80, "followRoadExitDetour");
  v27 = *(a1 + 936);
  v77 = *(a1 + 920);
  v78 = v27;
  v79 = *(a1 + 119);
  sub_724830(v80, &v77, v3);
  v80[23] = 10;
  strcpy(v80, "TurnAround");
  v28 = a1[61];
  v77 = a1[60];
  v78 = v28;
  v79 = *(a1 + 124);
  sub_724830(v80, &v77, v3);
  v80[23] = 6;
  strcpy(v80, "OnRamp");
  v29 = *(a1 + 1016);
  v77 = *(a1 + 1000);
  v78 = v29;
  v79 = *(a1 + 129);
  sub_724830(v80, &v77, v3);
  v80[23] = 7;
  strcpy(v80, "OffRamp");
  v30 = a1[66];
  v77 = a1[65];
  v78 = v30;
  v79 = *(a1 + 134);
  sub_724830(v80, &v77, v3);
  v80[23] = 11;
  strcpy(v80, "OffRampLeft");
  v31 = *(a1 + 1096);
  v77 = *(a1 + 1080);
  v78 = v31;
  v79 = *(a1 + 139);
  sub_724830(v80, &v77, v3);
  v80[23] = 12;
  strcpy(v80, "OffRampRight");
  v32 = a1[71];
  v77 = a1[70];
  v78 = v32;
  v79 = *(a1 + 144);
  sub_724830(v80, &v77, v3);
  v80[23] = 13;
  strcpy(v80, "ChangeHighway");
  v33 = *(a1 + 1176);
  v77 = *(a1 + 1160);
  v78 = v33;
  v79 = *(a1 + 149);
  sub_724830(v80, &v77, v3);
  v80[23] = 17;
  strcpy(v80, "ChangeHighwayLeft");
  v34 = a1[76];
  v77 = a1[75];
  v78 = v34;
  v79 = *(a1 + 154);
  sub_724830(v80, &v77, v3);
  v80[23] = 18;
  strcpy(v80, "ChangeHighwayRight");
  v35 = *(a1 + 1256);
  v77 = *(a1 + 1240);
  v78 = v35;
  v79 = *(a1 + 159);
  sub_724830(v80, &v77, v3);
  v80[23] = 10;
  strcpy(v80, "EnterFerry");
  v36 = a1[81];
  v77 = a1[80];
  v78 = v36;
  v79 = *(a1 + 164);
  sub_724830(v80, &v77, v3);
  v80[23] = 9;
  strcpy(v80, "ExitFerry");
  v37 = *(a1 + 1336);
  v77 = *(a1 + 1320);
  v78 = v37;
  v79 = *(a1 + 169);
  sub_724830(v80, &v77, v3);
  v80[23] = 11;
  strcpy(v80, "ChangeFerry");
  v38 = a1[86];
  v77 = a1[85];
  v78 = v38;
  v79 = *(a1 + 174);
  sub_724830(v80, &v77, v3);
  v80[23] = 19;
  strcpy(v80, "EnterRailwayShuttle");
  v39 = *(a1 + 1416);
  v77 = *(a1 + 1400);
  v78 = v39;
  v79 = *(a1 + 179);
  sub_724830(v80, &v77, v3);
  v80[23] = 18;
  strcpy(v80, "ExitRailwayShuttle");
  v40 = a1[91];
  v77 = a1[90];
  v78 = v40;
  v79 = *(a1 + 184);
  sub_724830(v80, &v77, v3);
  v80[23] = 20;
  strcpy(v80, "ChangeRailwayShuttle");
  v41 = *(a1 + 1496);
  v77 = *(a1 + 1480);
  v78 = v41;
  v79 = *(a1 + 189);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "EnterBusShuttle");
  v42 = a1[96];
  v77 = a1[95];
  v78 = v42;
  v79 = *(a1 + 194);
  sub_724830(v80, &v77, v3);
  v80[23] = 14;
  strcpy(v80, "ExitBusShuttle");
  v43 = *(a1 + 1576);
  v77 = *(a1 + 1560);
  v78 = v43;
  v79 = *(a1 + 199);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "ChangeBusShuttle");
  v44 = a1[101];
  v77 = a1[100];
  v78 = v44;
  v79 = *(a1 + 204);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "EnterRoundabout");
  v45 = *(a1 + 1656);
  v77 = *(a1 + 1640);
  v78 = v45;
  v79 = *(a1 + 209);
  sub_724830(v80, &v77, v3);
  v80[23] = 14;
  strcpy(v80, "ExitRoundabout");
  v46 = a1[106];
  v77 = a1[105];
  v78 = v46;
  v79 = *(a1 + 214);
  sub_724830(v80, &v77, v3);
  v80[23] = 18;
  strcpy(v80, "RoundaboutExitLeft");
  v47 = *(a1 + 1736);
  v77 = *(a1 + 1720);
  v78 = v47;
  v79 = *(a1 + 219);
  sub_724830(v80, &v77, v3);
  v80[23] = 19;
  strcpy(v80, "RoundaboutExitRight");
  v48 = a1[111];
  v77 = a1[110];
  v78 = v48;
  v79 = *(a1 + 224);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "UturnRoundabout");
  v49 = *(a1 + 1816);
  v77 = *(a1 + 1800);
  v78 = v49;
  v79 = *(a1 + 229);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "RoundaboutExit1");
  v50 = a1[116];
  v77 = a1[115];
  v78 = v50;
  v79 = *(a1 + 234);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "RoundaboutExit2");
  v51 = *(a1 + 1896);
  v77 = *(a1 + 1880);
  v78 = v51;
  v79 = *(a1 + 239);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "RoundaboutExit3");
  v52 = a1[121];
  v77 = a1[120];
  v78 = v52;
  v79 = *(a1 + 244);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "RoundaboutExit4");
  v53 = *(a1 + 1976);
  v77 = *(a1 + 1960);
  v78 = v53;
  v79 = *(a1 + 249);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "RoundaboutExit5");
  v54 = a1[126];
  v77 = a1[125];
  v78 = v54;
  v79 = *(a1 + 254);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "RoundaboutExit6");
  v55 = *(a1 + 2056);
  v77 = *(a1 + 2040);
  v78 = v55;
  v79 = *(a1 + 259);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "RoundaboutExit7");
  v56 = a1[131];
  v77 = a1[130];
  v78 = v56;
  v79 = *(a1 + 264);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "RoundaboutExit8");
  v57 = *(a1 + 2136);
  v77 = *(a1 + 2120);
  v78 = v57;
  v79 = *(a1 + 269);
  sub_724830(v80, &v77, v3);
  v80[23] = 15;
  strcpy(v80, "RoundaboutExit9");
  v58 = a1[136];
  v77 = a1[135];
  v78 = v58;
  v79 = *(a1 + 274);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "RoundaboutExit10");
  v59 = *(a1 + 2216);
  v77 = *(a1 + 2200);
  v78 = v59;
  v79 = *(a1 + 279);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "RoundaboutExit11");
  v60 = a1[141];
  v77 = a1[140];
  v78 = v60;
  v79 = *(a1 + 284);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "RoundaboutExit12");
  v61 = *(a1 + 2296);
  v77 = *(a1 + 2280);
  v78 = v61;
  v79 = *(a1 + 289);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "RoundaboutExit13");
  v62 = a1[146];
  v77 = a1[145];
  v78 = v62;
  v79 = *(a1 + 294);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "RoundaboutExit14");
  v63 = *(a1 + 2376);
  v77 = *(a1 + 2360);
  v78 = v63;
  v79 = *(a1 + 299);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "RoundaboutExit15");
  v64 = a1[151];
  v77 = a1[150];
  v78 = v64;
  v79 = *(a1 + 304);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "RoundaboutExit16");
  v65 = *(a1 + 2456);
  v77 = *(a1 + 2440);
  v78 = v65;
  v79 = *(a1 + 309);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "RoundaboutExit17");
  v66 = a1[156];
  v77 = a1[155];
  v78 = v66;
  v79 = *(a1 + 314);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "RoundaboutExit18");
  v67 = *(a1 + 2536);
  v77 = *(a1 + 2520);
  v78 = v67;
  v79 = *(a1 + 319);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "RoundaboutExit19");
  v68 = a1[161];
  v77 = a1[160];
  v78 = v68;
  v79 = *(a1 + 324);
  sub_724830(v80, &v77, v3);
  v80[23] = 14;
  strcpy(v80, "ArriveEndOfNav");
  v69 = *(a1 + 2616);
  v77 = *(a1 + 2600);
  v78 = v69;
  v79 = *(a1 + 329);
  sub_724830(v80, &v77, v3);
  v80[23] = 21;
  strcpy(v80, "ArriveEndOfDirections");
  v70 = a1[166];
  v77 = a1[165];
  v78 = v70;
  v79 = *(a1 + 334);
  sub_724830(v80, &v77, v3);
  v80[23] = 12;
  strcpy(v80, "ArriveAtDest");
  v71 = *(a1 + 2696);
  v77 = *(a1 + 2680);
  v78 = v71;
  v79 = *(a1 + 339);
  sub_724830(v80, &v77, v3);
  v80[23] = 16;
  strcpy(v80, "ArriveAtDestLeft");
  v72 = *(a1 + 2776);
  v77 = *(a1 + 2760);
  v78 = v72;
  v79 = *(a1 + 349);
  sub_724830(v80, &v77, v3);
  v80[23] = 17;
  strcpy(v80, "ArriveAtDestRight");
  v73 = a1[171];
  v77 = a1[170];
  v78 = v73;
  v79 = *(a1 + 344);
  sub_724830(v80, &v77, v3);
  v75 = *(a1 + 350);
  for (i = *(a1 + 351); v75 != i; v75 += 40)
  {
    sub_722240(v74, v75, v3);
  }
}

void sub_724830(const void **a1, unsigned int *a2, uint64_t a3)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  if (v3 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v3 + 3 >= 0x17)
  {
    operator new();
  }

  v33 = 0;
  v34 = 0;
  v32 = &loc_6D754C + 2;
  HIBYTE(v34) = v3 + 3;
  if (v3)
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    memmove(&v32 + 3, v7, v3);
  }

  *(&v32 + v3 + 3) = 0;
  if (v34 >= 0)
  {
    v8 = HIBYTE(v34);
  }

  else
  {
    v8 = v33;
  }

  if (v8 + 18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  if (v8 + 18 >= 0x17)
  {
    operator new();
  }

  *&v30 = 11879;
  *v29 = *"Maneuvers.Driving.";
  if (v8)
  {
    if (v34 >= 0)
    {
      v12 = &v32;
    }

    else
    {
      v12 = v32;
    }

    memmove(&v30 + 2, v12, v8);
  }

  *(&v30 + v8 + 2) = 0;
  LODWORD(v39[0]) = v9;
  if (v9)
  {
    LOBYTE(__p[0]) = 4;
    v13 = *(a3 + 8);
    if (v13 >= *(a3 + 16))
    {
      v15 = sub_7250B4(a3, v29, __p, v39);
    }

    else
    {
      if (SBYTE7(v30) < 0)
      {
        sub_325C(*(a3 + 8), v29[0], v29[1]);
      }

      else
      {
        v14 = *v29;
        *(v13 + 16) = v30;
        *v13 = v14;
      }

      *(v13 + 24) = 4;
      *(v13 + 32) = v9;
      *(v13 + 40) = 1;
      v15 = v13 + 48;
      *(a3 + 8) = v13 + 48;
    }

    *(a3 + 8) = v15;
  }

  if (v34 >= 0)
  {
    v16 = HIBYTE(v34);
  }

  else
  {
    v16 = v33;
  }

  if (v16 + 18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v16 + 18 >= 0x17)
  {
    operator new();
  }

  BYTE3(v39[2]) = 0;
  HIDWORD(v39[2]) = 0;
  strcpy(v39, "Maneuvers.Cycling.");
  if (v16)
  {
    if (v34 >= 0)
    {
      v17 = &v32;
    }

    else
    {
      v17 = v32;
    }

    memmove(&v39[2] + 2, v17, v16);
  }

  *(&v39[2] + v16 + 2) = 0;
  LODWORD(__p[0]) = v10;
  if (v10)
  {
    LOBYTE(v38) = 4;
    v18 = *(a3 + 8);
    if (v18 >= *(a3 + 16))
    {
      v20 = sub_7250B4(a3, v29, &v38, __p);
    }

    else
    {
      if (SBYTE7(v30) < 0)
      {
        sub_325C(*(a3 + 8), v29[0], v29[1]);
      }

      else
      {
        v19 = *v29;
        *(v18 + 16) = v30;
        *v18 = v19;
      }

      *(v18 + 24) = 4;
      *(v18 + 32) = v10;
      *(v18 + 40) = 1;
      v20 = v18 + 48;
      *(a3 + 8) = v18 + 48;
    }

    *(a3 + 8) = v20;
  }

  if (v34 >= 0)
  {
    v21 = HIBYTE(v34);
  }

  else
  {
    v21 = v33;
  }

  if (v21 + 18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v21 + 18 >= 0x17)
  {
    operator new();
  }

  v36 = 11879;
  *__p = *"Maneuvers.Walking.";
  if (v21)
  {
    if (v34 >= 0)
    {
      v22 = &v32;
    }

    else
    {
      v22 = v32;
    }

    memmove(&v36 + 2, v22, v21);
  }

  *(&v36 + v21 + 2) = 0;
  v38 = v11;
  if (v11)
  {
    v37 = 4;
    v23 = *(a3 + 8);
    if (v23 >= *(a3 + 16))
    {
      v25 = sub_7250B4(a3, v29, &v37, &v38);
    }

    else
    {
      if (SBYTE7(v30) < 0)
      {
        sub_325C(*(a3 + 8), v29[0], v29[1]);
      }

      else
      {
        v24 = *v29;
        *(v23 + 16) = v30;
        *v23 = v24;
      }

      *(v23 + 24) = 4;
      *(v23 + 32) = v11;
      *(v23 + 40) = 1;
      v25 = v23 + 48;
      *(a3 + 8) = v23 + 48;
    }

    *(a3 + 8) = v25;
  }

  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v39[2]) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_87:
    operator delete(v39[0]);
    if ((SBYTE7(v30) & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_88;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v39[2]) < 0)
  {
    goto LABEL_87;
  }

LABEL_71:
  if ((SBYTE7(v30) & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_88:
  operator delete(v29[0]);
LABEL_72:
  if (*(a1 + 23) >= 0)
  {
    v26 = *(a1 + 23);
  }

  else
  {
    v26 = a1[1];
  }

  if (v26 + 12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v26 + 12 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  HIBYTE(v36) = v26 + 12;
  if (v26)
  {
    if (*(a1 + 23) >= 0)
    {
      v27 = a1;
    }

    else
    {
      v27 = *a1;
    }

    memmove(__p, v27, v26);
  }

  strcpy(__p + v26, "StepDistance");
  v28 = *(a2 + 1);
  *v29 = *a2;
  v30 = v28;
  v31 = *(a2 + 4);
  HIBYTE(v39[2]) = 18;
  strcpy(v39, "Maneuvers.Driving.");
  sub_725534(v39, __p, &v30, a3);
  HIBYTE(v39[2]) = 18;
  strcpy(v39, "Maneuvers.Cycling.");
  sub_725534(v39, __p, &v30 + 1, a3);
  HIBYTE(v39[2]) = 18;
  strcpy(v39, "Maneuvers.Walking.");
  sub_725534(v39, __p, &v31, a3);
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      return;
    }

LABEL_90:
    operator delete(v32);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v34) < 0)
  {
    goto LABEL_90;
  }
}

void sub_724F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  *(v35 + 8) = v36;
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a35 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
LABEL_8:
        if (a22 < 0)
        {
          operator delete(a17);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a9);
      goto LABEL_8;
    }
  }

  else if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a30);
  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

unint64_t sub_725004(uint64_t a1, __int128 *a2, char *a3, unsigned int *a4)
{
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 16))
  {
    v9 = sub_7250B4(a1, a2, a3, a4);
    *(a1 + 8) = v9;
    return v9 - 48;
  }

  else
  {
    v6 = *a3;
    v7 = *a4;
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v8 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v8;
    }

    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 40) = 1;
    *(a1 + 8) = v5 + 48;
    *(a1 + 8) = v5 + 48;
    return v5;
  }
}

unint64_t sub_7250B4(__int128 **a1, uint64_t a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v4)
  {
    v4 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (a1[1] - *a1);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a1 + v10 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 3;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_725284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_725298(uint64_t a1, __int128 *a2, char *a3, void *a4)
{
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 16))
  {
    v8 = sub_725350(a1, a2, a3, a4);
    *(a1 + 8) = v8;
    return v8 - 48;
  }

  else
  {
    v6 = *a3;
    if (*(a2 + 23) < 0)
    {
      v10 = a4;
      sub_325C(*(a1 + 8), *a2, *(a2 + 1));
      a4 = v10;
    }

    else
    {
      v7 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v7;
    }

    *(v5 + 24) = v6;
    *(v5 + 32) = *a4;
    *(v5 + 40) = 1;
    *(a1 + 8) = v5 + 48;
    *(a1 + 8) = v5 + 48;
    return v5;
  }
}

unint64_t sub_725350(__int128 **a1, uint64_t a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v4)
  {
    v4 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * (a1[1] - *a1);
  v9 = *a3;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  v10 = v8;
  *(v8 + 24) = v9;
  *(v8 + 32) = *a4;
  *(v8 + 40) = 1;
  v11 = v8 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a1 + v10 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 3;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_725520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

void sub_725534(const void **a1, const void **a2, uint64_t *a3, __int128 **a4)
{
  if (*a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = a1[1];
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v6 + v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v6 + v5 > 0x16)
    {
      operator new();
    }

    __p[1] = 0;
    v22 = 0;
    __p[0] = 0;
    HIBYTE(v22) = v6 + v5;
    if (v5)
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      memmove(__p, v9, v5);
    }

    v10 = __p + v5;
    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      memmove(v10, v11, v6);
    }

    v10[v6] = 0;
    v20 = 7;
    if (*a3 < 0)
    {
      v12 = -50;
    }

    else
    {
      v12 = 50;
    }

    v13 = *a3 / 100 + (((5243 * (v12 + *a3 % 100)) >> 19) + ((5243 * (v12 + *a3 % 100)) >> 31));
    v19 = v13;
    v14 = a4[1];
    if (v14 >= a4[2])
    {
      v17 = sub_725350(a4, __p, &v20, &v19);
      v18 = HIBYTE(v22);
      a4[1] = v17;
      if ((v18 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    v15 = HIBYTE(v22);
    if (SHIBYTE(v22) < 0)
    {
      sub_325C(a4[1], __p[0], __p[1]);
    }

    else
    {
      v16 = *__p;
      *(v14 + 16) = v22;
      *v14 = v16;
    }

    *(v14 + 24) = 7;
    *(v14 + 32) = v13;
    *(v14 + 40) = 1;
    a4[1] = (v14 + 48);
    a4[1] = (v14 + 48);
    if (v15 < 0)
    {
LABEL_31:
      operator delete(__p[0]);
    }
  }
}

void sub_725760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  *(v17 + 8) = v18;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_725788()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A4108 = 0u;
  unk_27A4118 = 0u;
  dword_27A4128 = 1065353216;
  sub_3A9A34(&xmmword_27A4108, v0, v0);
  sub_3A9A34(&xmmword_27A4108, v3, v3);
  sub_3A9A34(&xmmword_27A4108, __p, __p);
  sub_3A9A34(&xmmword_27A4108, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A40E0 = 0;
    qword_27A40E8 = 0;
    qword_27A40D8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_7259D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A40F0)
  {
    qword_27A40F8 = qword_27A40F0;
    operator delete(qword_27A40F0);
  }

  _Unwind_Resume(exception_object);
}

void sub_725A8C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
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
  *(a1 + 244) = 0;
  *(a1 + 250) = 0;
  *(a1 + 264) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x7FFFFFFFFFFFFFFFLL;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  *(a1 + 304) = v5;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 336) = v5;
  *(a1 + 352) = v5;
  *(a1 + 368) = 0;
  *(a1 + 370) = 0;
  *(a1 + 376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 400) = v5;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 432) = v5;
  *(a1 + 448) = v5;
  *(a1 + 464) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 472) = 0;
  *(a1 + 516) = 0;
  *(a1 + 512) = 0;
  *(a1 + 480) = v5;
  *(a1 + 496) = 0u;
  *(a1 + 520) = 1;
  *(a1 + 521) = 0;
  *(a1 + 525) = 0;
  *(a1 + 528) = v5;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0;
  *(a1 + 560) = v5;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0xBFF0000000000000;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 680) = 1;
  *(a1 + 689) = 0;
  *(a1 + 681) = 0;
  *(a1 + 696) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 720) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 768) = v5;
  *(a1 + 784) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0u;
  *(a1 + 816) = v5;
  *(a1 + 832) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 840) = 0;
  *(a1 + 848) = v5;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 892) = 0;
  *(a1 + 888) = 0;
  *(a1 + 912) = 0;
  *(a1 + 896) = 0u;
  *(a1 + 920) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 928) = 0;
  *(a1 + 930) = 0;
  *(a1 + 936) = 0;
  *(a1 + 944) = v5;
  *(a1 + 986) = 0;
  *(a1 + 992) = v5;
  *(a1 + 1008) = v5;
  *(a1 + 1024) = v5;
  *(a1 + 1040) = v5;
  *(a1 + 1056) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1159) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1184) = 1;
  *(a1 + 1192) = 0x4020000000000000;
  *(a1 + 1200) = 3;
  *(a1 + 1208) = 200;
  *(a1 + 1216) = xmmword_229EB80;
  *(a1 + 1232) = xmmword_229EB90;
  operator new();
}

void sub_725E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_725EB8(double *a1, void *a2)
{
  strcpy(v5, "obvious_straight_angle");
  HIBYTE(v5[2]) = 22;
  v3 = sub_62A70(a2, v5);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + 12);
  switch(v4)
  {
    case 4:
      *a1 = v3[5];
      if (SHIBYTE(v5[2]) < 0)
      {
        goto LABEL_8;
      }

      break;
    case 3:
      *a1 = v3[5];
      if (SHIBYTE(v5[2]) < 0)
      {
LABEL_8:
        operator delete(v5[0]);
      }

      break;
    case 2:
      *a1 = v3[5];
      if ((SHIBYTE(v5[2]) & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_8;
    default:
LABEL_7:
      *a1 = *a1;
      if ((SHIBYTE(v5[2]) & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_8;
  }

  operator new();
}

void sub_72D09C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_72D558(_Unwind_Exception *a1)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x72D550);
}

void sub_72E04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_72E088(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  sub_72E16C(a1, a2, a3, a3 + ((*(a4 + 8) - *a4) >> 3) - 1, *(a4 + 24), v9);
  if (*v9 != -1 || (v6.i64[0] = -1, v6.i64[1] = -1, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v9[8], v6), vceqq_s64(*&v9[24], v6))))) & 1) != 0) || *&v10[0] != -1)
  {
    if (!*(a4 + 24) && (*(a4 + 244) & 1) == 0)
    {
      *(a4 + 24) = 3;
      *(a4 + 232) = 0;
    }

    if (sub_72E82C(a1, a4))
    {
      v7 = *v9;
      *(a4 + 88) = *&v9[16];
      v8 = v10[0];
      *(a4 + 104) = *&v9[32];
      *(a4 + 120) = v8;
      *(a4 + 132) = *(v10 + 12);
      *(a4 + 72) = v7;
    }

    sub_72E9A0(a1, a4);
  }
}

uint64_t sub_72E16C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a2;
  v11 = *(a1 + 48);
  v12 = *(sub_4D1F50(a2, a3) + 32);
  v13 = sub_2B51D8(v11, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    sub_30C50C(v11 + 3896, v12, 0);
  }

  sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  v14 = *(a1 + 48);
  v15 = *(sub_4D1F50(v8, a4) + 32);
  v16 = sub_2B51D8(v14, v15 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    sub_30C50C(v14 + 3896, v15, 0);
  }

  result = sub_31D7E8(v14, v15 & 0xFFFFFFFFFFFFLL, 1);
  if (*a1 & 1) == 0 && (*(a1 + 1) & 1) == 0 && *(a1 + 2) != 1 || (result = sub_72EF68(a1, v8, a3, v18), (result))
  {
    LODWORD(v19) = 0;
    v20 = -1;
    v21 = -1;
    goto LABEL_10;
  }

  result = sub_72F0C4(a1, v8, a3, a4);
  v19 = HIDWORD(result);
  if (result > 1)
  {
    if (result == 3)
    {
      v21 = -1;
      v22 = -1;
      v23 = v20;
      v98 = v13;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    if (result == 2)
    {
      v22 = -1;
      v21 = v20;
      v23 = -1;
      v98 = v13;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v21 = -1;
    if (!result)
    {
      v20 = -1;
      LODWORD(v19) = 0;
LABEL_10:
      v22 = -1;
      v23 = -1;
      v98 = v13;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    v22 = v20;
    if (result == 1)
    {
      v23 = -1;
      v98 = v13;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }
  }

  v21 = -1;
  v22 = -1;
  v23 = -1;
  v98 = v13;
  if (*(a1 + 3) != 1)
  {
    goto LABEL_44;
  }

LABEL_25:
  v24 = (v13 - *v13);
  if (*v24 >= 0x9Bu && v24[77] && (*(v13 + v24[77] + 1) & 4) != 0)
  {
    v25 = v24[23];
    if (!v25 || ((v26 = *(v13 + v25), v27 = v26 > 0x2A, v28 = (1 << v26) & 0x50426810004, !v27) ? (v29 = v28 == 0) : (v29 = 1), v29))
    {
LABEL_44:
      v34 = -1;
      if (*(a1 + 4) != 1)
      {
        goto LABEL_70;
      }

      goto LABEL_56;
    }
  }

  v30 = (v16 - *v16);
  v31 = *v30;
  if (v31 < 0x2F || !v30[23] || *(v16 + v30[23]) != 9)
  {
    goto LABEL_46;
  }

  if ((v15 & 0xFF000000000000) != 0)
  {
    if (v31 < 0x73)
    {
      goto LABEL_46;
    }

    v32 = v30[57];
    if (!v32)
    {
      goto LABEL_46;
    }

    v33 = 1;
  }

  else
  {
    if (v31 < 0x73)
    {
      goto LABEL_46;
    }

    v32 = v30[57];
    if (!v32)
    {
      goto LABEL_46;
    }

    v33 = 2;
  }

  if (*(v16 + v32) == v33)
  {
    goto LABEL_44;
  }

LABEL_46:
  v35 = a6;
  v36 = v8;
  v37 = v19;
  v95 = v16;
  v38 = v21;
  v39 = *(a1 + 8);
  v40 = v20;
  v41 = v36;
  result = sub_731448(a1, v36, a4);
  if (result < v39)
  {
    v34 = -1;
  }

  else
  {
    v34 = v42;
  }

  v100 = v34;
  v101 = v40;
  if (v40 == -1)
  {
    v43 = &v100;
  }

  else
  {
    v43 = &v101;
    if (v34 != -1 && v40 < v34)
    {
      v43 = &v100;
    }
  }

  v21 = v38;
  LODWORD(v19) = v37;
  a6 = v35;
  v20 = *v43;
  v16 = v95;
  v8 = v41;
  v13 = v98;
  if (*(a1 + 4) != 1)
  {
LABEL_70:
    v58 = -1;
    if (*(a1 + 3) != 1)
    {
      goto LABEL_87;
    }

    goto LABEL_71;
  }

LABEL_56:
  v44 = (v13 - *v13);
  if (*v44 >= 0x2Fu)
  {
    v45 = v44[23];
    if (v45)
    {
      if (*(v13 + v45) == 51)
      {
        goto LABEL_70;
      }
    }
  }

  v46 = (v16 - *v16);
  if (*v46 < 0x2Fu)
  {
    goto LABEL_70;
  }

  v47 = v46[23];
  if (!v47 || *(v16 + v47) != 51)
  {
    goto LABEL_70;
  }

  v93 = v34;
  v96 = v16;
  v48 = a6;
  v49 = a4;
  v50 = v19;
  v51 = v21;
  v52 = *(a1 + 16);
  v53 = v20;
  v54 = v8;
  v55 = v8;
  v56 = v49;
  result = sub_7315A0(a1, v55, v49);
  if (result < v52)
  {
    v58 = -1;
  }

  else
  {
    v58 = v57;
  }

  v100 = v58;
  v101 = v53;
  if (v53 == -1)
  {
    v59 = &v100;
  }

  else
  {
    v59 = &v101;
    if (v58 != -1 && v53 < v58)
    {
      v59 = &v100;
    }
  }

  v21 = v51;
  LODWORD(v19) = v50;
  a6 = v48;
  v34 = v93;
  v16 = v96;
  v20 = *v59;
  a4 = v56;
  v8 = v54;
  v13 = v98;
  if (*(a1 + 3) != 1)
  {
LABEL_87:
    v73 = -1;
    v75 = -1;
    v76 = a5;
    if ((a5 - 6) < 2)
    {
      goto LABEL_105;
    }

    goto LABEL_88;
  }

LABEL_71:
  v60 = (v13 - *v13);
  if (*v60 >= 0x9Bu)
  {
    v61 = v60[77];
    if (v61)
    {
      if ((*(v13 + v61 + 1) & 8) != 0)
      {
        goto LABEL_87;
      }
    }
  }

  v94 = v34;
  v97 = v58;
  v62 = a6;
  v63 = v22;
  v64 = v16;
  v65 = v21;
  v66 = a4;
  v67 = v19;
  v68 = *(a1 + 8);
  v69 = v20;
  v70 = v8;
  v71 = v66;
  result = sub_7316C0(a1, v70, v66);
  if (result < v68)
  {
    v73 = -1;
  }

  else
  {
    v73 = v72;
  }

  v100 = v73;
  v101 = v69;
  if (v69 == -1)
  {
    v74 = &v100;
  }

  else
  {
    v74 = &v101;
    if (v73 != -1 && v69 < v73)
    {
      v74 = &v100;
    }
  }

  LODWORD(v19) = v67;
  v21 = v65;
  v22 = v63;
  a6 = v62;
  v34 = v94;
  v58 = v97;
  v20 = *v74;
  a4 = v71;
  v16 = v64;
  v13 = v98;
  v75 = -1;
  v76 = a5;
  if ((a5 - 6) >= 2)
  {
LABEL_88:
    if ((v76 - 86) >= 2)
    {
      if ((v76 - 41) < 0x13 || (v77 = (v13 - *v13), *v77 >= 0x2Fu) && (v78 = v77[23]) != 0 && ((v79 = *(v13 + v78), v27 = v79 > 0x36, v80 = (1 << v79) & 0x44000000000008, !v27) ? (v81 = v80 == 0) : (v81 = 1), !v81) || (v82 = (v16 - *v16), *v82 < 0x2Fu) || (v83 = v82[23]) == 0 || ((v84 = *(v16 + v83), v27 = v84 > 0x36, v85 = (1 << v84) & 0x44000000000008, !v27) ? (v86 = v85 == 0) : (v86 = 1), v86))
      {
        v75 = -1;
      }

      else
      {
        v75 = a4;
      }
    }
  }

LABEL_105:
  if (v23 == -1 && v58 == -1 && v22 == -1 && v34 == -1 && v73 == -1 && v75 == -1 && v21 == -1 && ((v87 = (v16 - *v16), *v87 < 0x2Fu) || (v88 = v87[23]) == 0 || ((v89 = *(v16 + v88), v27 = v89 > 0x36, v90 = (1 << v89) & 0x44000000000008, !v27) ? (v91 = v90 == 0) : (v91 = 1), v91)))
  {
    v20 = -1;
    *(a6 + 48) = -1;
    *&v92 = -1;
    *(&v92 + 1) = -1;
    *(a6 + 16) = v92;
    *(a6 + 32) = v92;
    *a6 = v92;
    *(a6 + 56) = 0;
  }

  else
  {
    *a6 = v23;
    *(a6 + 8) = v58;
    *(a6 + 16) = v22;
    *(a6 + 24) = v34;
    *(a6 + 32) = v73;
    *(a6 + 40) = v75;
    *(a6 + 48) = v21;
    *(a6 + 56) = v19;
  }

  *(a6 + 64) = v20;
  *(a6 + 72) = 0;
  return result;
}

uint64_t sub_72E82C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(a2 + 8) - 8);
  v5 = sub_2B51D8(v3, v4 & 0xFFFFFFFFFFFFLL);
  if (*(v3 + 7772) == 1)
  {
    sub_30C50C(v3 + 3896, v4, 0);
  }

  sub_31D7E8(v3, v4 & 0xFFFFFFFFFFFFLL, 1);
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 0x9B)
  {
    if (v7 < 0x39)
    {
      return 0;
    }
  }

  else if (v6[77] && (*(v5 + v6[77]) & 3) != 0)
  {
    return 0;
  }

  if (!v6[28])
  {
    return 0;
  }

  if ((*(v5 + v6[28]) & 0x23) == 0 && (*(v5 + v6[28]) & 7) != 4)
  {
    return 0;
  }

  if (v7 >= 0x47)
  {
    v10 = v6[35];
    if (v10)
    {
      if ((*(v5 + v10) & 3) != 0)
      {
        return 0;
      }
    }
  }

  v11 = *(a2 + 24);
  if (v11 - 6 >= 2 && v11 - 86 >= 2)
  {
    if (v11 - 41 < 0x13)
    {
      return 0;
    }
  }

  else if (v11 < 0x56)
  {
    return 0;
  }

  result = 0;
  if ((v11 > 0x23 || ((1 << v11) & 0x805C00010) == 0) && v11 - 91 >= 6)
  {
    return 1;
  }

  return result;
}

void sub_72E9A0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72) != -1 || *(a2 + 80) != -1 || *(a2 + 88) != -1 || *(a2 + 120) != -1 || *(a2 + 96) != -1 || *(a2 + 104) != -1)
  {
    v7 = 1;
    switch(*(a2 + 24))
    {
      case 1:
      case 0x14:
      case 0x1B:
      case 0x1D:
      case 0x21:
      case 0x3C:
      case 0x3E:
      case 0x41:
      case 0x56:
        goto LABEL_19;
      case 2:
      case 0x15:
      case 0x1C:
      case 0x1E:
      case 0x22:
      case 0x3D:
      case 0x3F:
      case 0x42:
      case 0x57:
        v7 = 2;
LABEL_19:
        *(a2 + 24) = v7;
        break;
      default:
        return;
    }
  }
}

void sub_72EF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_72EF68(uint64_t a1, void *a2, unint64_t a3, double a4)
{
  v7 = sub_4D23F8(a2, a3, a4);
  if (!a3 || v7 > *(a1 + 32) || sub_4D1DC0(a2) - 1 == a3)
  {
    return 0;
  }

  v9 = sub_4D1F50(a2, a3 - 1);
  v10 = sub_4D1F50(a2, a3 + 1);
  v11 = (*v9 - **v9);
  if (*v11 < 0x2Fu)
  {
    return 0;
  }

  v12 = v11[23];
  if (!v11[23])
  {
    return 0;
  }

  v13 = *(a1 + 1);
  v14 = *(*v9 + v12);
  if (v14 != 9)
  {
    if (v14 == 20 || v13 == 0)
    {
      if (v14 == 20)
      {
        goto LABEL_8;
      }
    }

    else if (v14 == 43)
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v15 = (*v10 - **v10);
  if (*v15 < 0x2Fu)
  {
    return 0;
  }

  v16 = v15[23];
  if (!v16)
  {
    return 0;
  }

  v17 = *(*v10 + v16);
  if (v17 == 9)
  {
    return 1;
  }

  if (v17 != 43)
  {
    LOBYTE(v13) = 0;
  }

  return (v17 == 20) | v13 & 1u;
}

uint64_t sub_72F0C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 48);
  v8 = *(sub_4D1F50(a2, a3) + 32);
  v9 = sub_2B51D8(v7, v8 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v10 = sub_30C50C(v7 + 3896, v8, 0);
    v11 = &v10[-*v10];
    if (*v11 < 5u)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + 2);
      if (v12)
      {
        v12 += &v10[*&v10[v12]];
      }
    }

    v13 = v12 + ((v8 >> 30) & 0x3FFFC) + 4 + *(v12 + ((v8 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v13 = 0;
  }

  v53 = 1;
  v58[0] = v9;
  v58[1] = v13;
  v58[2] = sub_31D7E8(v7, v8 & 0xFFFFFFFFFFFFLL, 1);
  v58[3] = v14;
  v58[4] = v8 & 0xFFFFFFFFFFFFFFLL;
  if (*(a1 + 1) == 1)
  {
    v15 = (v9 - *v9);
    v53 = *v15 >= 0x2Fu && (v16 = v15[23]) != 0 && *(v9 + v16) == 43;
  }

  v17 = a3 + 1;
  v18 = sub_4D1DC0(a2);
  if (a3 + 1 > v18)
  {
    v19 = a3 + 1;
  }

  else
  {
    v19 = v18;
  }

  v55 = v19;
  if (v17 >= v18)
  {
    return 0;
  }

  v20 = 0;
  v21 = 0;
  v54 = 0;
  do
  {
    v24 = sub_4D1F50(a2, v17);
    v26 = *v24;
    v27 = &(*v24)[-**v24];
    v28 = *v27;
    if (v17 < a4)
    {
      if (v28 < 0x2F)
      {
        goto LABEL_22;
      }

      v29 = *(v27 + 23);
      if (!v29)
      {
        goto LABEL_22;
      }

      v30 = v26[v29];
      if (v30 != 9)
      {
        v31 = v30 == 20;
        v32 = v53;
        if (v30 == 20)
        {
          v32 = 1;
        }

        if ((v32 & 1) == 0)
        {
          v31 = v30 == 43;
        }

        if (!v31)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_43;
    }

    if (v28 < 0x2F)
    {
      goto LABEL_62;
    }

    v33 = *(v27 + 23);
    if (!v33)
    {
      goto LABEL_62;
    }

    v34 = v26[v33];
    if (v34 != 9)
    {
      v35 = v34 == 20;
      v36 = v53;
      if (v34 == 20)
      {
        v36 = 1;
      }

      if ((v36 & 1) == 0)
      {
        v35 = v34 == 43;
      }

      if (!v35)
      {
LABEL_62:
        if (!sub_72EF68(a1, a2, v17, v25))
        {
          break;
        }
      }
    }

LABEL_43:
    v37 = *(a1 + 48);
    v38 = v24[4];
    v39 = sub_2B51D8(v37, v38 & 0xFFFFFFFFFFFFLL);
    if (*(v37 + 7772) == 1)
    {
      v40 = sub_30C50C(v37 + 3896, v38, 0);
      v41 = &v40[-*v40];
      if (*v41 < 5u)
      {
        v42 = 0;
      }

      else
      {
        v42 = *(v41 + 2);
        if (v42)
        {
          v42 += &v40[*&v40[v42]];
        }
      }

      v43 = (v42 + ((v38 >> 30) & 0x3FFFC) + 4 + *(v42 + ((v38 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_31D7E8(v37, v38 & 0xFFFFFFFFFFFFLL, 1);
    v57[0] = v39;
    v57[1] = v43;
    v57[2] = v44;
    v57[3] = v45;
    v57[4] = (v38 & 0xFFFFFFFFFFFFFFLL);
    v46 = sub_72F450(a1, v58, v57, v21, v20);
    v48 = v46;
    if (v46)
    {
      v20 = HIDWORD(v46);
      v22 = sub_4D23F8(a2, v17, v47);
      v23 = v54;
      if (v21 != v48)
      {
        v23 = 0;
      }

      v54 = v22 + v23;
    }

    else
    {
      v48 = v21;
    }

    v21 = v48;
LABEL_22:
    ++v17;
  }

  while (v55 != v17);
  v49 = v20 << 32;
  if (v21 != 1)
  {
    if ((v21 & 0xFFFFFFFE) == 2)
    {
      v50 = v54 < *(a1 + 40);
      v51 = v49 | v21;
      goto LABEL_56;
    }

    return 0;
  }

  v50 = v54 < *(a1 + 24);
  v51 = v49 | 1;
LABEL_56:
  if (v50)
  {
    return 0;
  }

  else
  {
    return v51;
  }
}

unint64_t sub_72F450(_BYTE *a1, void *a2, int **a3, int a4, int a5)
{
  if (*a1 == 1)
  {
    v5 = (*a2 - **a2);
    if (*v5 >= 0x2Fu && (v6 = v5[23]) != 0)
    {
      v7 = *(*a2 + v6) != 20;
      if (a1[1] != 1)
      {
LABEL_12:
        v10 = 0;
        if (a1[2] == 1)
        {
          goto LABEL_13;
        }

LABEL_20:
        v13 = 0;
        v15 = !v7;
        if (a4 != 1)
        {
          v15 = 1;
        }

        if (v15)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v7 = 1;
      if (a1[1] != 1)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v7 = 0;
    if (a1[1] != 1)
    {
      goto LABEL_12;
    }
  }

  v8 = (*a2 - **a2);
  if (*v8 < 0x2Fu || (v9 = v8[23]) == 0)
  {
    v10 = 1;
    if (a1[2] == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  v10 = *(*a2 + v9) != 43;
  if (a1[2] != 1)
  {
    goto LABEL_20;
  }

LABEL_13:
  v11 = (*a2 - **a2);
  if (*v11 < 0x2Fu || (v12 = v11[23]) == 0)
  {
    v13 = 1;
    v21 = !v7;
    if (a4 != 1)
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_30;
    }

LABEL_23:
    v16 = *a3;
    v17 = **a3;
    v18 = (*a3 - v17);
    v19 = *v18;
    if (v19 < 0x2F)
    {
      goto LABEL_49;
    }

    v20 = v18[23];
    if (!v20 || *(v16 + v20) != 20)
    {
      goto LABEL_49;
    }

    goto LABEL_43;
  }

  v13 = *(*a2 + v12) != 9;
  v14 = !v7;
  if (a4 != 1)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_30:
  v22 = !v10;
  if (a4 != 2)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    v16 = *a3;
    v17 = **a3;
    v23 = (*a3 - v17);
    v19 = *v23;
    if (v19 >= 0x2F)
    {
      v24 = v23[23];
      if (v24)
      {
        if (*(v16 + v24) == 43)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_49:
    if (v7)
    {
      v30 = *v16;
      if (*(v16 - v30) >= 0x2Fu && *(v16 - v30 + 46) && *(v16 + *(v16 - v30 + 46)) == 20)
      {
        a4 = 1;
        v31 = (v16 - v30);
        v32 = *v31 >= 0x73u;
        if (!*(a3 + 38))
        {
          goto LABEL_71;
        }

        goto LABEL_77;
      }
    }

    if (v10 && (v33 = *v16, *(v16 - v33) >= 0x2Fu) && (v34 = *(v16 - v33 + 46), *(v16 - v33 + 46)))
    {
      v35 = -v33;
      v36 = *(v16 + v34) == 43;
      v37 = !v36;
      if ((v37 & v13 & 1) == 0)
      {
        a4 = 2 * v36;
        v31 = (v16 + v35);
        v32 = *v31 >= 0x73u;
        if (!*(a3 + 38))
        {
LABEL_71:
          if (!v32)
          {
            return a4;
          }

          v38 = v31[57];
          if (!v38)
          {
            return a4;
          }

          if (*(v16 + v38) == 1)
          {
            return a4 | 0x100000000;
          }

          v39 = 2;
          return ((*(v16 + v38) == v39) << 33) | a4;
        }

LABEL_77:
        if (!v32)
        {
          return a4;
        }

        v38 = v31[57];
        if (!v38)
        {
          return a4;
        }

        if (*(v16 + v38) == 2)
        {
          return a4 | 0x100000000;
        }

        v39 = 1;
        return ((*(v16 + v38) == v39) << 33) | a4;
      }
    }

    else
    {
      v35 = -*v16;
      if (!v13)
      {
LABEL_76:
        a4 = 0;
        v31 = (v16 + v35);
        v32 = *v31 >= 0x73u;
        if (!*(a3 + 38))
        {
          goto LABEL_71;
        }

        goto LABEL_77;
      }
    }

    if (*(v16 + v35) >= 0x2Fu && *(v16 + v35 + 46))
    {
      if (*(v16 + *(v16 + v35 + 46)) == 9)
      {
        a4 = 3;
      }

      else
      {
        a4 = 0;
      }

      v31 = (v16 + v35);
      v32 = *v31 >= 0x73u;
      if (!*(a3 + 38))
      {
        goto LABEL_71;
      }

      goto LABEL_77;
    }

    goto LABEL_76;
  }

  v25 = !v13;
  v16 = *a3;
  if (a4 != 3)
  {
    v25 = 1;
  }

  if (v25)
  {
    goto LABEL_49;
  }

  v17 = *v16;
  v19 = *(v16 - v17);
  if (v19 < 0x2F || !*(v16 - v17 + 46) || *(v16 + *(v16 - v17 + 46)) != 9)
  {
    goto LABEL_49;
  }

LABEL_43:
  v26 = v16 - v17;
  if (*(a3 + 38))
  {
    if (v19 < 0x73)
    {
      return a4;
    }

    v27 = *(v26 + 57);
    if (!v27)
    {
      return a4;
    }

    v28 = 1;
    if (a5 == 1 && *(v16 + v27) == 2)
    {
      return a4 | 0x100000000;
    }
  }

  else
  {
    if (v19 < 0x73)
    {
      return a4;
    }

    v27 = *(v26 + 57);
    if (!v27)
    {
      return a4;
    }

    v28 = 2;
    if (a5 == 1 && *(v16 + v27) == 1)
    {
      return a4 | 0x100000000;
    }
  }

  if (a5 == 2 && *(v16 + v27) == v28)
  {
    return a4 | 0x200000000;
  }

  return a4;
}