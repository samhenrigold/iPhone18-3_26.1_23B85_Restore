void sub_2621E29E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  v16 = v15;

  sub_2621E1B1C(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_2621E2A20(uint64_t result, float32x2_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v79 = a2[-1];
        v80 = *v8;
        if (vcgt_f32(*v8, v79).u8[0])
        {
          *v8 = v79;
          a2[-1] = v80;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v85 = v8 + 1;
      v86 = v8[1];
      v87 = v8 + 2;
      v88 = v8[2];
      v89 = *v8;
      v90 = v88.f32[0];
      v91 = vcgt_f32(v86, v88).u8[0];
      if (vcgt_f32(*v8, v86).u32[0])
      {
        LODWORD(v92) = *v8->f32;
        if (v91)
        {
          v93 = v8;
          v94 = v8 + 2;
          v86 = *v8;
          goto LABEL_180;
        }

        *v8 = v86;
        v8[1] = v89;
        v93 = v8 + 1;
        v94 = v8 + 2;
        v86 = v89;
        if (vcgt_f32(v89, v88).u32[0])
        {
LABEL_180:
          *v93 = v88;
          *v94 = v89;
          v90 = v92;
          goto LABEL_182;
        }
      }

      else if (v91)
      {
        *v85 = v88;
        *v87 = v86;
        v93 = v8;
        v94 = v8 + 1;
        v92 = v86.f32[0];
        v90 = v86.f32[0];
        if (vcgt_f32(v89, v88).u32[0])
        {
          goto LABEL_180;
        }

LABEL_182:
        v138 = a2[-1];
        if (v138.f32[0] >= v90)
        {
          return result;
        }

        *v87 = v138;
        a2[-1] = v86;
        v133 = *v87;
        v139 = *v85;
        goto LABEL_193;
      }

      v86 = v88;
      goto LABEL_182;
    }

    if (v9 == 5)
    {
      v66 = v8 + 1;
      v67 = v8[1];
      v68 = v8 + 2;
      v69 = v8[2];
      v70 = *v8;
      v71 = v69.f32[0];
      v72 = vcgt_f32(v67, v69).u8[0];
      if (vcgt_f32(*v8, v67).u32[0])
      {
        LODWORD(v73) = *v8->f32;
        if (v72)
        {
          v74 = v8;
          v75 = v8 + 2;
          v76 = v8[2];
          v77 = v8[1];
          v78 = *v8;
          goto LABEL_174;
        }

        v74 = v8 + 1;
        *v8 = v67;
        v8[1] = v70;
        v75 = v8 + 2;
        v76 = v67;
        v77 = v69;
        v78 = v70;
        if (vcgt_f32(v70, v69).u32[0])
        {
LABEL_174:
          *v74 = v69;
          *v75 = v70;
          v70 = v77;
          v71 = v73;
          v69 = v78;
        }

        else
        {
          v76 = v67;
        }
      }

      else if (v72)
      {
        LODWORD(v73) = v8[1];
        v74 = v8;
        *v66 = v69;
        *v68 = v67;
        v75 = v8 + 1;
        v76 = v69;
        v77 = v70;
        v78 = v67;
        if (vcgt_f32(v70, v69).u32[0])
        {
          goto LABEL_174;
        }

        v76 = v70;
        v70 = v69;
        v71 = v67.f32[0];
        v69 = v67;
      }

      else
      {
        v76 = *v8;
        v70 = v8[1];
      }

      v140 = v8[3];
      if (v140.f32[0] >= v71)
      {
        v69 = v8[3];
      }

      else
      {
        v8[2] = v140;
        v8[3] = v69;
        if (vcgt_f32(v70, v140).u8[0])
        {
          *v66 = v140;
          *v68 = v70;
          if (vcgt_f32(v76, v140).u8[0])
          {
            *v8 = v140;
            v8[1] = v76;
          }
        }
      }

      v141 = a2[-1];
      if ((vcgt_f32(v69, v141).u8[0] & 1) == 0)
      {
        return result;
      }

      v8[3] = v141;
      a2[-1] = v69;
      v142 = v8[2];
      v133 = v8[3];
      if ((vcgt_f32(v142, v133).u8[0] & 1) == 0)
      {
        return result;
      }

      v8[2] = v133;
      v8[3] = v142;
      v139 = v8[1];
LABEL_193:
      if ((vcgt_f32(v139, v133).u8[0] & 1) == 0)
      {
        return result;
      }

      v8[1] = v133;
      v8[2] = v139;
LABEL_195:
      v143 = *v8;
      if (vcgt_f32(*v8, v133).u8[0])
      {
        *v8 = v133;
        v8[1] = v143;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = v8 + 1;
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 8;
          v99 = v8;
          do
          {
            v101 = *v99;
            v100 = v99[1];
            v99 = v95;
            if (vcgt_f32(v101, v100).u8[0])
            {
              v102 = v98;
              while (1)
              {
                *(v8 + v102) = v101;
                v103 = v102 - 8;
                if (v102 == 8)
                {
                  break;
                }

                v101 = *(v8 + v102 - 16);
                v102 -= 8;
                if ((vcgt_f32(v101, v100).u8[0] & 1) == 0)
                {
                  v104 = (v8 + v103);
                  goto LABEL_126;
                }
              }

              v104 = v8;
LABEL_126:
              *v104 = v100;
            }

            v95 = v99 + 1;
            v98 += 8;
          }

          while (&v99[1] != a2);
        }
      }

      else if (!v97)
      {
        do
        {
          v135 = *v7;
          v134 = v7[1];
          v7 = v95;
          if (vcgt_f32(v135, v134).u8[0])
          {
            v136 = v95;
            do
            {
              *v136 = v135;
              v135 = v136[-2];
              --v136;
            }

            while ((vcgt_f32(v135, v134).u8[0] & 1) != 0);
            *v136 = v134;
          }

          ++v95;
        }

        while (&v7[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v8[v108];
            if (2 * v107 + 2 < v9 && COERCE_FLOAT(*v109) < COERCE_FLOAT(*&v109[1]))
            {
              ++v109;
              v108 = 2 * v107 + 2;
            }

            v110 = &v8[v107];
            v111 = *v109;
            v112 = *v110;
            if ((vcgt_f32(*v110, *v109).u8[0] & 1) == 0)
            {
              do
              {
                v113 = v109;
                *v110 = v111;
                if (v105 < v108)
                {
                  break;
                }

                v114 = 2 * v108;
                v108 = (2 * v108) | 1;
                v109 = &v8[v108];
                v115 = v114 + 2;
                if (v115 < v9 && COERCE_FLOAT(*v109) < COERCE_FLOAT(*&v109[1]))
                {
                  ++v109;
                  v108 = v115;
                }

                v111 = *v109;
                v110 = v113;
              }

              while ((vcgt_f32(v112, *v109).u8[0] & 1) == 0);
              *v113 = v112;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v116 = 0;
          v117 = *v8;
          v118 = v8;
          do
          {
            v119 = v118;
            v120 = &v118[v116];
            v118 = v120 + 1;
            v121 = 2 * v116;
            v116 = (2 * v116) | 1;
            v122 = v121 + 2;
            if (v122 < v9)
            {
              v124 = v120[2];
              v123 = v120 + 2;
              if (COERCE_FLOAT(*&v123[-1]) < v124.f32[0])
              {
                v118 = v123;
                v116 = v122;
              }
            }

            *v119 = *v118;
          }

          while (v116 <= ((v9 - 2) >> 1));
          if (v118 == --a2)
          {
            *v118 = v117;
          }

          else
          {
            *v118 = *a2;
            *a2 = v117;
            v125 = (v118 - v8 + 8) >> 3;
            v126 = v125 < 2;
            v127 = v125 - 2;
            if (!v126)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v129;
              v131 = *v118;
              if (vcgt_f32(*v118, *v129).u8[0])
              {
                do
                {
                  v132 = v129;
                  *v118 = v130;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v130 = *v129;
                  v118 = v132;
                }

                while ((vcgt_f32(v131, *v129).u8[0] & 1) != 0);
                *v132 = v131;
              }
            }
          }

          v126 = v9-- <= 2;
        }

        while (!v126);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = a2[-1];
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      v15 = vcgt_f32(*v10, v12).u8[0];
      if (vcgt_f32(*v8, *v10).u32[0])
      {
        if (v15)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v13;
        *v10 = v14;
        v21 = a2[-1];
        if (vcgt_f32(v14, v21).u8[0])
        {
          *v10 = v21;
LABEL_27:
          a2[-1] = v14;
        }
      }

      else if (v15)
      {
        *v10 = v12;
        a2[-1] = v13;
        v19 = *v8;
        if (vcgt_f32(*v8, *v10).u8[0])
        {
          *v8 = *v10;
          *v10 = v19;
        }
      }

      v22 = v10 - 1;
      v23 = v10[-1];
      v24 = v8[1];
      v25 = a2[-2];
      v26 = vcgt_f32(v23, v25).u8[0];
      if (vcgt_f32(v24, v23).u32[0])
      {
        if (v26)
        {
          v8[1] = v25;
          goto LABEL_39;
        }

        v8[1] = v23;
        *v22 = v24;
        v29 = a2[-2];
        if (vcgt_f32(v24, v29).u8[0])
        {
          *v22 = v29;
LABEL_39:
          a2[-2] = v24;
        }
      }

      else if (v26)
      {
        *v22 = v25;
        a2[-2] = v23;
        v27 = v8[1];
        if (vcgt_f32(v27, *v22).u8[0])
        {
          v8[1] = *v22;
          *v22 = v27;
        }
      }

      v31 = v10[1];
      v30 = v10 + 1;
      v32 = v31;
      v33 = v8[2];
      v34 = a2[-3];
      v35 = vcgt_f32(v31, v34).u8[0];
      if (vcgt_f32(v33, v31).u32[0])
      {
        if (v35)
        {
          v8[2] = v34;
          goto LABEL_48;
        }

        v8[2] = v32;
        *v30 = v33;
        v37 = a2[-3];
        if (vcgt_f32(v33, v37).u8[0])
        {
          *v30 = v37;
LABEL_48:
          a2[-3] = v33;
        }
      }

      else if (v35)
      {
        *v30 = v34;
        a2[-3] = v32;
        v36 = v8[2];
        if (vcgt_f32(v36, *v30).u8[0])
        {
          v8[2] = *v30;
          *v30 = v36;
        }
      }

      v38 = *v11;
      v39 = *v22;
      v40 = *v30;
      v41 = vcgt_f32(*v11, *v30).u8[0];
      if (vcgt_f32(*v22, *v11).u32[0])
      {
        if ((v41 & 1) == 0)
        {
          *v22 = v38;
          *v11 = v39;
          v22 = v11;
          v38 = v40;
          if ((vcgt_f32(v39, v40).u32[0] & 1) == 0)
          {
            v38 = v39;
LABEL_56:
            v42 = *v8;
            *v8 = v38;
            *v11 = v42;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if ((v41 & 1) == 0)
        {
          goto LABEL_56;
        }

        *v11 = v40;
        *v30 = v38;
        v30 = v11;
        v38 = v39;
        if ((vcgt_f32(v39, v40).u32[0] & 1) == 0)
        {
          v38 = v40;
          goto LABEL_56;
        }
      }

      *v22 = v40;
      *v30 = v39;
      goto LABEL_56;
    }

    v16 = *v8;
    v17 = *v10;
    v18 = vcgt_f32(*v8, v12).u8[0];
    if ((vcgt_f32(*v10, *v8).u32[0] & 1) == 0)
    {
      if (v18)
      {
        *v8 = v12;
        a2[-1] = v16;
        v20 = *v10;
        if (vcgt_f32(*v10, *v8).u8[0])
        {
          *v10 = *v8;
          *v8 = v20;
        }
      }

      goto LABEL_57;
    }

    if (v18)
    {
      *v10 = v12;
    }

    else
    {
      *v10 = v16;
      *v8 = v17;
      v28 = a2[-1];
      if ((vcgt_f32(v17, v28).u8[0] & 1) == 0)
      {
        goto LABEL_57;
      }

      *v8 = v28;
    }

    a2[-1] = v17;
LABEL_57:
    --a3;
    v43 = *v8;
    if ((a4 & 1) != 0 || COERCE_FLOAT(*&v8[-1]) < v43.f32[0])
    {
      v44 = v8;
      do
      {
        v45 = v44;
        v46 = v44[1];
        ++v44;
        v47 = v46;
      }

      while (v46.f32[0] < v43.f32[0]);
      v48 = a2;
      if (v45 == v8)
      {
        v48 = a2;
        do
        {
          if (v44 >= v48)
          {
            break;
          }

          v50 = v48[-1];
          --v48;
        }

        while (v50.f32[0] >= v43.f32[0]);
      }

      else
      {
        do
        {
          v49 = v48[-1];
          --v48;
        }

        while (v49.f32[0] >= v43.f32[0]);
      }

      if (v44 < v48)
      {
        v51 = *v48;
        v52 = v44;
        v53 = v48;
        do
        {
          *v52 = v51;
          *v53 = v47;
          do
          {
            v45 = v52;
            v54 = v52[1];
            ++v52;
            v47 = v54;
          }

          while (v54.f32[0] < v43.f32[0]);
          do
          {
            v55 = v53[-1];
            --v53;
            v51 = v55;
          }

          while (v55.f32[0] >= v43.f32[0]);
        }

        while (v52 < v53);
      }

      if (v45 != v8)
      {
        *v8 = *v45;
      }

      *v45 = v43;
      if (v44 < v48)
      {
        goto LABEL_78;
      }

      v56 = sub_2621E3880(v8, v45);
      v8 = v45 + 1;
      result = sub_2621E3880(v45 + 1, a2);
      if (result)
      {
        a2 = v45;
        if (!v56)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v56)
      {
LABEL_78:
        result = sub_2621E2A20(v7, v45, a3, a4 & 1);
        a4 = 0;
        v8 = v45 + 1;
      }
    }

    else
    {
      if (v43.f32[0] >= COERCE_FLOAT(*&a2[-1]))
      {
        v58 = &v8[1];
        do
        {
          v8 = v58;
          if (v58 >= a2)
          {
            break;
          }

          v58 += 8;
        }

        while (v43.f32[0] >= COERCE_FLOAT(*v8));
      }

      else
      {
        do
        {
          v57 = v8[1];
          ++v8;
        }

        while (v43.f32[0] >= v57.f32[0]);
      }

      v59 = a2;
      if (v8 < a2)
      {
        v59 = a2;
        do
        {
          v60 = v59[-1];
          --v59;
        }

        while (v43.f32[0] < v60.f32[0]);
      }

      if (v8 < v59)
      {
        v61 = *v8;
        v62 = *v59;
        do
        {
          *v8 = v62;
          *v59 = v61;
          do
          {
            v63 = v8[1];
            ++v8;
            v61 = v63;
          }

          while ((vcgt_f32(v63, v43).u8[0] & 1) == 0);
          do
          {
            v64 = v59[-1];
            --v59;
            v62 = v64;
          }

          while ((vcgt_f32(v64, v43).u8[0] & 1) != 0);
        }

        while (v8 < v59);
      }

      v65 = v8 - 1;
      if (&v8[-1] != v7)
      {
        *v7 = *v65;
      }

      a4 = 0;
      *v65 = v43;
    }
  }

  v81 = *v8;
  v82 = v8[1];
  v83 = a2[-1];
  v84 = vcgt_f32(v82, v83).u8[0];
  if ((vcgt_f32(*v8, v82).u32[0] & 1) == 0)
  {
    if ((v84 & 1) == 0)
    {
      return result;
    }

    v8[1] = v83;
    a2[-1] = v82;
    v133 = v8[1];
    goto LABEL_195;
  }

  if (v84)
  {
    *v8 = v83;
  }

  else
  {
    *v8 = v82;
    v8[1] = v81;
    v137 = a2[-1];
    if ((vcgt_f32(v81, v137).u8[0] & 1) == 0)
    {
      return result;
    }

    v8[1] = v137;
  }

  a2[-1] = v81;
  return result;
}

__int128 **sub_2621E3438(__int128 **result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v16 = 0x4EC4EC4EC4EC4EC5 * (v3 - *result);
    v17 = v16 + 1;
    if ((v16 + 1) > 0x13B13B13B13B13BLL)
    {
      sub_2621CBEB0();
    }

    v18 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *result) >> 4);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x9D89D89D89D89DLL)
    {
      v19 = 0x13B13B13B13B13BLL;
    }

    else
    {
      v19 = v17;
    }

    v39 = v2;
    if (v19)
    {
      sub_2621E3680(v19);
    }

    v20 = 208 * v16;
    v36 = 0;
    v37 = v20;
    *(&v38 + 1) = 0;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[3];
    *(v20 + 32) = a2[2];
    *(v20 + 48) = v23;
    v24 = a2[7];
    v26 = a2[4];
    v25 = a2[5];
    *(v20 + 96) = a2[6];
    *(v20 + 112) = v24;
    *(v20 + 64) = v26;
    *(v20 + 80) = v25;
    v27 = a2[11];
    v29 = a2[8];
    v28 = a2[9];
    *(v20 + 160) = a2[10];
    *(v20 + 176) = v27;
    *(v20 + 128) = v29;
    *(v20 + 144) = v28;
    *v20 = v21;
    *(v20 + 16) = v22;
    v30 = a2[12];
    a2[12] = 0uLL;
    *(v20 + 192) = v30;
    *&v38 = 208 * v16 + 208;
    v31 = v2[1];
    v32 = (208 * v16 + *v2 - v31);
    sub_2621E36DC(v2, *v2, v31, v32);
    v33 = *v2;
    *v2 = v32;
    v34 = v2[2];
    v35 = v38;
    *(v2 + 1) = v38;
    *&v38 = v33;
    *(&v38 + 1) = v34;
    v36 = v33;
    v37 = v33;
    result = sub_2621E37B4(&v36);
    v15 = v35;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[7];
    v3[6] = a2[6];
    v3[7] = v10;
    v3[4] = v8;
    v3[5] = v9;
    v11 = a2[8];
    v12 = a2[9];
    v13 = a2[11];
    v3[10] = a2[10];
    v3[11] = v13;
    v3[8] = v11;
    v3[9] = v12;
    v14 = a2[12];
    a2[12] = 0uLL;
    v3[12] = v14;
    v15 = v3 + 13;
  }

  v2[1] = v15;
  return result;
}

void sub_2621E35E4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {

        v4 -= 26;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2621E3680(unint64_t a1)
{
  if (a1 < 0x13B13B13B13B13CLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_2621E36DC(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v21 = a4;
  v20 = a4;
  v18[0] = a1;
  v18[1] = &v20;
  v18[2] = &v21;
  if (a2 == a3)
  {
    v19 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];
      a4[2] = v6[2];
      a4[3] = v9;
      *a4 = v7;
      a4[1] = v8;
      v10 = v6[4];
      v11 = v6[5];
      v12 = v6[7];
      a4[6] = v6[6];
      a4[7] = v12;
      a4[4] = v10;
      a4[5] = v11;
      v13 = v6[8];
      v14 = v6[9];
      v15 = v6[11];
      a4[10] = v6[10];
      a4[11] = v15;
      a4[8] = v13;
      a4[9] = v14;
      v16 = v6[12];
      *(v6 + 24) = 0;
      *(v6 + 25) = 0;
      a4[12] = v16;
      v6 += 13;
      a4 += 13;
    }

    while (v6 != a3);
    v21 = a4;
    v19 = 1;
    while (v5 != a3)
    {

      v5 += 13;
    }
  }

  return sub_2621E3818(v18);
}

uint64_t sub_2621E37B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 208;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2621E3818(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 208)
    {
    }
  }

  return a1;
}

BOOL sub_2621E3880(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v19 = *a1;
      v20 = a1[1];
      v21 = a2[-1];
      v22 = vcgt_f32(v20, v21).u8[0];
      if (vcgt_f32(*a1, v20).u32[0])
      {
        if (v22)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v20;
          a1[1] = v19;
          v49 = a2[-1];
          if ((vcgt_f32(v19, v49).u8[0] & 1) == 0)
          {
            return 1;
          }

          a1[1] = v49;
        }

        a2[-1] = v19;
        return 1;
      }

      if ((v22 & 1) == 0)
      {
        return 1;
      }

      a1[1] = v21;
      a2[-1] = v20;
      v40 = a1[1];
LABEL_68:
      v55 = *a1;
      if (vcgt_f32(*a1, v40).u8[0])
      {
        *a1 = v40;
        a1[1] = v55;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v6 = a1 + 2;
      v7 = a1[2];
      v8 = *a1;
      v9 = v7.f32[0];
      v10 = vcgt_f32(v5, v7).u8[0];
      if (vcgt_f32(*a1, v5).u32[0])
      {
        LODWORD(v11) = *a1->f32;
        if (v10)
        {
          v12 = a1;
          v13 = a1 + 2;
          v14 = a1[2];
          v15 = a1[1];
          v16 = *a1;
        }

        else
        {
          v12 = a1 + 1;
          *a1 = v5;
          a1[1] = v8;
          v13 = a1 + 2;
          v14 = v5;
          v15 = v7;
          v16 = v8;
          if ((vcgt_f32(v8, v7).u32[0] & 1) == 0)
          {
            v14 = v5;
            goto LABEL_58;
          }
        }
      }

      else
      {
        if ((v10 & 1) == 0)
        {
          v14 = *a1;
          v8 = a1[1];
          goto LABEL_58;
        }

        LODWORD(v11) = a1[1];
        v12 = a1;
        *v4 = v7;
        *v6 = v5;
        v13 = a1 + 1;
        v14 = v7;
        v15 = v8;
        v16 = v5;
        if ((vcgt_f32(v8, v7).u32[0] & 1) == 0)
        {
          v14 = v8;
          v8 = v7;
          v9 = v5.f32[0];
          v7 = v5;
LABEL_58:
          v52 = a1[3];
          if (v52.f32[0] >= v9)
          {
            v7 = a1[3];
          }

          else
          {
            a1[2] = v52;
            a1[3] = v7;
            if (vcgt_f32(v8, v52).u8[0])
            {
              *v4 = v52;
              *v6 = v8;
              if (vcgt_f32(v14, v52).u8[0])
              {
                *a1 = v52;
                a1[1] = v14;
              }
            }
          }

          v53 = a2[-1];
          if ((vcgt_f32(v7, v53).u8[0] & 1) == 0)
          {
            return 1;
          }

          a1[3] = v53;
          a2[-1] = v7;
          v54 = a1[2];
          v40 = a1[3];
          if ((vcgt_f32(v54, v40).u8[0] & 1) == 0)
          {
            return 1;
          }

          a1[2] = v40;
          a1[3] = v54;
          v51 = a1[1];
LABEL_66:
          if ((vcgt_f32(v51, v40).u8[0] & 1) == 0)
          {
            return 1;
          }

          a1[1] = v40;
          a1[2] = v51;
          goto LABEL_68;
        }
      }

      *v12 = v7;
      *v13 = v8;
      v8 = v15;
      v9 = v11;
      v7 = v16;
      goto LABEL_58;
    }

    v30 = a1 + 1;
    v31 = a1[1];
    v32 = a1 + 2;
    v33 = a1[2];
    v34 = *a1;
    v35 = v33.f32[0];
    v36 = vcgt_f32(v31, v33).u8[0];
    if (vcgt_f32(*a1, v31).u32[0])
    {
      LODWORD(v37) = *a1->f32;
      if (v36)
      {
        v38 = a1;
        v39 = a1 + 2;
        v31 = *a1;
LABEL_52:
        *v38 = v33;
        *v39 = v34;
        v35 = v37;
LABEL_54:
        v50 = a2[-1];
        if (v50.f32[0] >= v35)
        {
          return 1;
        }

        *v32 = v50;
        a2[-1] = v31;
        v40 = *v32;
        v51 = *v30;
        goto LABEL_66;
      }

      *a1 = v31;
      a1[1] = v34;
      v38 = a1 + 1;
      v39 = a1 + 2;
      v31 = v34;
      if (vcgt_f32(v34, v33).u32[0])
      {
        goto LABEL_52;
      }
    }

    else if (v36)
    {
      *v30 = v33;
      *v32 = v31;
      v38 = a1;
      v39 = a1 + 1;
      v37 = v31.f32[0];
      v35 = v31.f32[0];
      if ((vcgt_f32(v34, v33).u32[0] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v31 = v33;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v17 = a2[-1];
    v18 = *a1;
    if (vcgt_f32(*a1, v17).u8[0])
    {
      *a1 = v17;
      a2[-1] = v18;
    }

    return 1;
  }

LABEL_16:
  v23 = a1 + 2;
  v24 = a1[2];
  v25 = a1[1];
  v26 = *a1;
  v27 = vcgt_f32(v25, v24).u8[0];
  if (vcgt_f32(*a1, v25).u32[0])
  {
    v28 = a1;
    v29 = a1 + 2;
    if ((v27 & 1) == 0)
    {
      *a1 = v25;
      a1[1] = v26;
      v28 = a1 + 1;
      v29 = a1 + 2;
      if ((vcgt_f32(v26, v24).u8[0] & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v28 = v24;
    *v29 = v26;
    goto LABEL_28;
  }

  if (v27)
  {
    a1[1] = v24;
    *v23 = v25;
    v28 = a1;
    v29 = a1 + 1;
    if (vcgt_f32(v26, v24).u8[0])
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v41 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v42 = 0;
  for (i = 24; ; i += 8)
  {
    v44 = *v41;
    v45 = *v23;
    if (vcgt_f32(*v23, *v41).u8[0])
    {
      v46 = i;
      while (1)
      {
        *(a1 + v46) = v45;
        v47 = v46 - 8;
        if (v46 == 8)
        {
          break;
        }

        v45 = *(a1 + v46 - 16);
        v46 -= 8;
        if ((vcgt_f32(v45, v44).u8[0] & 1) == 0)
        {
          v48 = (a1 + v47);
          goto LABEL_36;
        }
      }

      v48 = a1;
LABEL_36:
      *v48 = v44;
      if (++v42 == 8)
      {
        break;
      }
    }

    v23 = v41++;
    if (v41 == a2)
    {
      return 1;
    }
  }

  return &v41[1] == a2;
}

uint64_t sub_2621E3C78(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v19 = a4;
  v20 = a4;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];
      *(v4 + 32) = v6[2];
      *(v4 + 48) = v9;
      *v4 = v7;
      *(v4 + 16) = v8;
      v10 = v6[4];
      v11 = v6[5];
      v12 = v6[7];
      *(v4 + 96) = v6[6];
      *(v4 + 112) = v12;
      *(v4 + 64) = v10;
      *(v4 + 80) = v11;
      v13 = v6[8];
      v14 = v6[9];
      v15 = v6[11];
      *(v4 + 160) = v6[10];
      *(v4 + 176) = v15;
      *(v4 + 128) = v13;
      *(v4 + 144) = v14;
      *(v4 + 192) = *(v6 + 24);
      *(v4 + 200) = *(v6 + 25);
      v6 += 13;
      v4 += 208;
    }

    while (v6 != a3);
    v20 = v4;
  }

  v18 = 1;
  sub_2621E3818(v17);
  return v4;
}

id sub_2621E3D3C(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6)
{
  v915[1] = *MEMORY[0x277D85DE8];
  v769 = a2;
  v767 = a3;
  v9 = a4;
  v766 = v9;
  if (!a1)
  {
    v316 = 0;
    goto LABEL_459;
  }

  if (!v9)
  {
    v313 = MEMORY[0x277CBEA60];
    v316 = objc_msgSend_init(v313, v314, v315);
    goto LABEL_459;
  }

  v785 = objc_msgSend_GetAllObjects(v9, v10, v11);
  v12 = @"lshaped";
  v15 = 0;
  v824 = 0uLL;
  v823 = 0;
  while (objc_msgSend_count(v785, v13, v14) > v15)
  {
    v17 = 0;
    v906[1] = 0;
    v906[0] = 0;
    v907.i64[0] = 0;
    v18 = objc_msgSend_objectAtIndexedSubscript_(v785, v16, v15);
    v21 = objc_msgSend_logits(v18, v19, v20);
    v24 = objc_msgSend_count(v21, v22, v23) != 0;

    if (v24)
    {
      v26 = objc_msgSend_objectAtIndexedSubscript_(v785, v25, v15);
      v29 = objc_msgSend_logits(v26, v27, v28);
      v31 = objc_msgSend_objectAtIndex_(v29, v30, 0);
      objc_msgSend_floatValue(v31, v32, v33);

      sub_2621C7F54(1uLL);
    }

    v907.i64[0] = 0;
    v906[1] = 0;
    v906[0] = 0;
    v34 = objc_msgSend_objectAtIndexedSubscript_(v785, v25, v15);
    hasBoxesDict = objc_msgSend_hasBoxesDict_(v34, v35, @"lshaped");

    if (hasBoxesDict)
    {
      v852 = 0u;
      v853 = 0u;
      v850 = 0u;
      v851 = 0u;
      v848 = 0u;
      v849 = 0u;
      memset(v847, 0, sizeof(v847));
      v37 = objc_msgSend_objectAtIndexedSubscript_(v785, v13, v15);
      v40 = objc_msgSend_boxesDict(v37, v38, v39);
      v42 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"lshaped");
      sub_262211250(v847, v42);

      v44 = objc_msgSend_objectAtIndexedSubscript_(v785, v43, v15);
      *&v894 = objc_msgSend_type(v44, v45, v46);
      v48 = objc_msgSend_objectAtIndexedSubscript_(v785, v47, v15);
      objc_msgSend_confidence(v48, v49, v50);
      v52 = v51;
      v54 = objc_msgSend_objectAtIndexedSubscript_(v785, v53, v15);
      v57 = objc_msgSend_identifier(v54, v55, v56);
      sub_2622116A8(buf, v847, &v894, v57, v906, v52);
      v58 = v824.i64[0];
      if (v824.i64[0] >= v824.i64[1])
      {
        v69 = 0xAAAAAAAAAAAAAAABLL * ((v824.i64[0] - v823) >> 6);
        v70 = v69 + 1;
        if (v69 + 1 > 0x155555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * ((v824.i64[1] - v823) >> 6) > v70)
        {
          v70 = 0x5555555555555556 * ((v824.i64[1] - v823) >> 6);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v824.i64[1] - v823) >> 6) >= 0xAAAAAAAAAAAAAALL)
        {
          v71 = 0x155555555555555;
        }

        else
        {
          v71 = v70;
        }

        v835.i64[0] = &v823;
        if (v71)
        {
          sub_2621EAE84(v71);
        }

        v72 = (v824.i64[0] - v823) >> 6 << 6;
        *v833 = 0;
        *&v833[8] = v72;
        v834.i64[1] = 0;
        v73 = buf[0];
        v74 = buf[1];
        v75 = v861;
        *(v72 + 32) = v860;
        *(v72 + 48) = v75;
        v76 = v865;
        v77 = v863;
        v78 = v862;
        *(v72 + 96) = v864;
        *(v72 + 112) = v76;
        *(v72 + 64) = v78;
        *(v72 + 80) = v77;
        *v72 = v73;
        *(v72 + 16) = v74;
        v79 = v866.i64[0];
        v866.i64[0] = 0;
        *(v72 + 128) = v79;
        *(v72 + 136) = v866.i32[2];
        v80 = *__p;
        *__p = 0;
        *(v72 + 144) = v80;
        *(v72 + 152) = 0;
        *(v72 + 160) = 0;
        *(v72 + 168) = 0;
        *(v72 + 152) = *&__p[8];
        *(v72 + 168) = *&__p[24];
        memset(&__p[8], 0, 24);
        v81 = v868.i64[0];
        v868.i64[0] = 0;
        *(v72 + 176) = v81;
        *(v72 + 184) = v868.i16[4];
        v834.i64[0] = 192 * v69 + 192;
        v82 = (&v823[12 * v69] - v824.i64[0]);
        sub_2622117DC(&v823, v823, v824.i64[0], v82);
        v83 = v823;
        v84 = v824.i64[1];
        v823 = v82;
        v812 = v834.i64[0];
        v824 = v834;
        v834.i64[0] = v83;
        v834.i64[1] = v84;
        *&v833[8] = v83;
        *v833 = v83;
        sub_2622118D8(v833);
        v68 = v812;
      }

      else
      {
        v59 = buf[0];
        v60 = buf[1];
        v61 = v861;
        *(v824.i64[0] + 32) = v860;
        *(v58 + 48) = v61;
        *v58 = v59;
        *(v58 + 16) = v60;
        v62 = v862;
        v63 = v863;
        v64 = v865;
        *(v58 + 96) = v864;
        *(v58 + 112) = v64;
        *(v58 + 64) = v62;
        *(v58 + 80) = v63;
        v65 = v866.i64[0];
        v866.i64[0] = 0;
        *(v58 + 128) = v65;
        *(v58 + 136) = v866.i32[2];
        v66 = *__p;
        *__p = 0;
        *(v58 + 144) = v66;
        *(v58 + 152) = 0;
        *(v58 + 160) = 0;
        *(v58 + 168) = 0;
        *(v58 + 152) = *&__p[8];
        *(v58 + 168) = *&__p[24];
        memset(&__p[8], 0, 24);
        v67 = v868.i64[0];
        v868.i64[0] = 0;
        *(v58 + 176) = v67;
        *(v58 + 184) = v868.i16[4];
        v68 = v58 + 192;
      }

      v824.i64[0] = v68;

      if (*&__p[8])
      {
        *&__p[16] = *&__p[8];
        operator delete(*&__p[8]);
      }

      v17 = v906[0];
    }

    if (v17)
    {
      v906[1] = v17;
      operator delete(v17);
    }

    ++v15;
  }

  v87 = objc_msgSend_mutableCopy(v785, v85, v86);
  v768 = v87;
  if (v769)
  {
    obj = v769;
    v88 = v767;
    v780 = v88;
    objc_opt_self();
    v828 = 0uLL;
    *&v829 = 0;
    v788 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v89 = 0;
    for (i = objc_msgSend_count(v88, v90, v91); i > v89; i = objc_msgSend_count(v780, v117, v118))
    {
      v95 = objc_msgSend_objectAtIndexedSubscript_(v88, v93, v89);
      sub_2621E283C(buf, v95);
      sub_2621E3438(&v828, buf);

      v98 = objc_msgSend_parentIdentifier(v95, v96, v97);
      v100 = objc_msgSend_objectForKey_(v788, v99, v98);
      v101 = v100 == 0;

      if (v101)
      {
        v104 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v102, v89);
        v881[0] = v104;
        v106 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v110, v881, 1);
        v108 = objc_msgSend_mutableCopy(v106, v111, v112);
        v115 = objc_msgSend_parentIdentifier(v95, v113, v114);
        objc_msgSend_setObject_forKey_(v788, v116, v108, v115);
      }

      else
      {
        v104 = objc_msgSend_parentIdentifier(v95, v102, v103);
        v106 = objc_msgSend_objectForKey_(v788, v105, v104);
        v108 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v107, v89);
        objc_msgSend_addObject_(v106, v109, v108);
      }

      ++v89;
      v88 = v780;
    }

    v783 = 0;
    v826 = 0;
    *v827 = 0uLL;
    while (v783 < objc_msgSend_count(obj, v93, v94))
    {
      v786 = objc_msgSend_objectAtIndexedSubscript_(obj, v119, v783);
      sub_2621E283C(v847, v786);
      if (v788)
      {
        v122 = objc_msgSend_identifier(v786, v120, v121);
        v126 = objc_msgSend_objectForKey_(v788, v123, v122);
        if (v126)
        {
          v127 = objc_msgSend_identifier(v786, v124, v125);
          v129 = objc_msgSend_objectForKey_(v788, v128, v127);
          v132 = objc_msgSend_count(v129, v130, v131) == 0;

          if (!v132)
          {
            v841 = v854;
            v842 = *v855;
            v843 = *&v855[16];
            v844 = v856;
            v837 = v850;
            v838 = v851;
            v839 = v852;
            v840 = v853;
            *v833 = v847[0];
            v834 = v847[1];
            v835 = v848;
            v836 = v849;
            v133 = v857;
            v845 = v133;
            v136 = v858;
            v846 = v136;
            *&v903 = 0;
            v902 = 0uLL;
            v906[0] = &v902;
            LOBYTE(v906[1]) = 0;
            if (*(&v828 + 1) != v828)
            {
              v137 = 0x4EC4EC4EC4EC4EC5 * ((*(&v828 + 1) - v828) >> 4);
              if (v137 <= 0x13B13B13B13B13BLL)
              {
                sub_2621E3680(v137);
              }

              sub_2621CBEB0();
            }

            v138 = objc_msgSend_identifier(v786, v134, v135);
            v777 = objc_msgSend_objectForKey_(v788, v139, v138);
            if (RSObjectAlign)
            {
              v140 = v777;
              objc_opt_self();
              if (v140 && objc_msgSend_count(v140, v141, v142) && v902.i64[0] != v902.i64[1])
              {
                v883 = 0uLL;
                v884 = 0;
                v145 = __sincosf_stret(*(&v839 + 1));
                v144.i32[0] = LODWORD(v145.__cosval);
                v143.i32[0] = LODWORD(v145.__sinval);
                v146 = v144;
                *&v146.i32[1] = -v145.__sinval;
                v771 = vzip1q_s32(vzip1q_s32(v146, 0), v143);
                *&v147 = -v145.__sinval;
                HIDWORD(v147) = LODWORD(v145.__cosval);
                v148 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v771, v837.f32[0]), v147, *v837.f32, 1), xmmword_2623A7700, v837, 2);
                v149 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v771, v838.f32[0]), v147, *v838.f32, 1), xmmword_2623A7700, v838, 2);
                if (vmovn_s32(vcgtq_f32(v149, v148)).i8[2])
                {
                  v150 = vzip2_s32(*v148.f32, *v149.f32);
                }

                else
                {
                  v150 = vzip2_s32(*v149.f32, *v148.f32);
                }

                exception_object = v150;
                v897 = 0u;
                v896 = 0u;
                v895 = 0u;
                v894 = 0u;
                v177 = v140;
                v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v178, &v894, v906, 16);
                if (v181)
                {
                  v182 = *v895.i64[0];
                  do
                  {
                    for (j = 0; j != v181; ++j)
                    {
                      if (*v895.i64[0] != v182)
                      {
                        objc_enumerationMutation(v177);
                      }

                      v184 = objc_msgSend_intValue(*(*(&v894 + 1) + 8 * j), v179, v180);
                      if (0x4EC4EC4EC4EC4EC5 * ((v902.i64[1] - v902.i64[0]) >> 4) > v184)
                      {
                        sub_2621CBEC8(1uLL);
                      }

                      if (qword_27FF0C060 != -1)
                      {
                        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                      }

                      v185 = qword_27FF0C058;
                      if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
                      {
                        buf[0].i16[0] = 0;
                        _os_log_error_impl(&dword_2621C3000, v185, OS_LOG_TYPE_ERROR, "The index of wall opening is larger is out of range, skip.", buf, 2u);
                      }
                    }

                    v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v179, &v894, v906, 16);
                  }

                  while (v181);
                }

                v186 = exception_object;
                if (vcgt_f32(exception_object, vdup_lane_s32(exception_object, 1)).u8[0])
                {
                  do
                  {
                    v187 = vrev64_s32(v186);
                    v188 = vcgt_f32(vdup_lane_s32(v186, 1), v186).u8[0];
                    v186 = v187;
                  }

                  while ((v188 & 1) != 0);
                }

                else
                {
                  v187 = exception_object;
                }

                *&v888 = v187;
                v879[0] = 0;
                v878[0] = 0;
                v878[1] = 0;
                sub_2621CC6AC(v878, &v888, &v888 + 1, 1uLL);
              }

              v866 = v841;
              *__p = v842;
              *&__p[16] = v843;
              v868 = v844;
              v862 = v837;
              v863 = v838;
              v864 = v839;
              v865 = v840;
              buf[0] = *v833;
              buf[1] = v834;
              v860 = v835;
              v861 = v836;
              v869 = v133;
              v870 = v136;
              *&v905[0] = 0;
              v904[0] = 0;
              v904[1] = 0;
              v906[0] = v904;
              LOBYTE(v906[1]) = 0;
              operator new();
            }

            v904[1] = 0;
            v904[0] = 0;
            *&v905[0] = 0;

            buf[0].i64[0] = &v902;
            sub_2621E35E4(buf);
            v189 = v904[0];
            v190 = v904[1] - v904[0];
            if (v904[1] - v904[0] >= 1)
            {
              v191 = v827[0];
              if (v827[1] - v827[0] >= v190)
              {
                v827[0] = sub_2621E3C78(&v826, v904[0], v904[1], v827[0]);
              }

              else
              {
                v192 = 0x4EC4EC4EC4EC4EC5 * ((v827[0] - v826) >> 4) + 0x4EC4EC4EC4EC4EC5 * (v190 >> 4);
                if (v192 > 0x13B13B13B13B13BLL)
                {
                  sub_2621CBEB0();
                }

                if (0x9D89D89D89D89D8ALL * ((v827[1] - v826) >> 4) > v192)
                {
                  v192 = 0x9D89D89D89D89D8ALL * ((v827[1] - v826) >> 4);
                }

                if ((0x4EC4EC4EC4EC4EC5 * ((v827[1] - v826) >> 4)) >= 0x9D89D89D89D89DLL)
                {
                  v193 = 0x13B13B13B13B13BLL;
                }

                else
                {
                  v193 = v192;
                }

                v860.i64[0] = &v826;
                if (v193)
                {
                  sub_2621E3680(v193);
                }

                v194 = 16 * ((v827[0] - v826) >> 4);
                buf[0].i64[0] = 0;
                buf[0].i64[1] = v194;
                buf[1] = v194;
                v195 = (v194 + v190);
                do
                {
                  v196 = *v189;
                  v197 = *(v189 + 1);
                  v198 = *(v189 + 3);
                  *(v194 + 32) = *(v189 + 2);
                  *(v194 + 48) = v198;
                  *v194 = v196;
                  *(v194 + 16) = v197;
                  v199 = *(v189 + 4);
                  v200 = *(v189 + 5);
                  v201 = *(v189 + 7);
                  *(v194 + 96) = *(v189 + 6);
                  *(v194 + 112) = v201;
                  *(v194 + 64) = v199;
                  *(v194 + 80) = v200;
                  v202 = *(v189 + 8);
                  v203 = *(v189 + 9);
                  v204 = *(v189 + 11);
                  *(v194 + 160) = *(v189 + 10);
                  *(v194 + 176) = v204;
                  *(v194 + 128) = v202;
                  *(v194 + 144) = v203;
                  *(v194 + 192) = *(v189 + 24);
                  *(v194 + 200) = *(v189 + 25);
                  v194 += 208;
                  v189 += 208;
                }

                while (v194 != v195);
                buf[1].i64[0] = v195;
                sub_2621E36DC(&v826, v191, v827[0], v195);
                buf[1].i64[0] += v827[0] - v191;
                v827[0] = v191;
                v205 = (buf[0].i64[1] + v826 - v191);
                sub_2621E36DC(&v826, v826, v191, v205);
                v206 = v826;
                v207 = v827[1];
                v826 = v205;
                *v827 = buf[1];
                buf[1].i64[0] = v206;
                buf[1].i64[1] = v207;
                buf[0].i64[1] = v206;
                buf[0].i64[0] = v206;
                sub_2621E37B4(buf);
              }
            }

            buf[0].i64[0] = v904;
            sub_2621E35E4(buf);
            goto LABEL_95;
          }
        }

        else
        {
        }
      }

      v151 = v827[0];
      if (v827[0] >= v827[1])
      {
        v162 = 0x4EC4EC4EC4EC4EC5 * ((v827[0] - v826) >> 4) + 1;
        if (v162 > 0x13B13B13B13B13BLL)
        {
          sub_2621CBEB0();
        }

        if (0x9D89D89D89D89D8ALL * ((v827[1] - v826) >> 4) > v162)
        {
          v162 = 0x9D89D89D89D89D8ALL * ((v827[1] - v826) >> 4);
        }

        if ((0x4EC4EC4EC4EC4EC5 * ((v827[1] - v826) >> 4)) >= 0x9D89D89D89D89DLL)
        {
          v163 = 0x13B13B13B13B13BLL;
        }

        else
        {
          v163 = v162;
        }

        v860.i64[0] = &v826;
        if (v163)
        {
          sub_2621E3680(v163);
        }

        v164 = 16 * ((v827[0] - v826) >> 4);
        buf[0].i64[0] = 0;
        buf[0].i64[1] = v164;
        buf[1].i64[1] = 0;
        v165 = v847[0];
        v166 = v847[1];
        v167 = v849;
        *(v164 + 32) = v848;
        *(v164 + 48) = v167;
        v168 = v853;
        v170 = v850;
        v169 = v851;
        *(v164 + 96) = v852;
        *(v164 + 112) = v168;
        *(v164 + 64) = v170;
        *(v164 + 80) = v169;
        v171 = v856;
        v172 = *v855;
        v173 = v854;
        *(v164 + 160) = *&v855[16];
        *(v164 + 176) = v171;
        *(v164 + 128) = v173;
        *(v164 + 144) = v172;
        *v164 = v165;
        *(v164 + 16) = v166;
        *(v164 + 192) = v857;
        *(v164 + 200) = v858;
        buf[1].i64[0] = v164 + 208;
        v174 = (v164 + v826 - v827[0]);
        sub_2621E36DC(&v826, v826, v827[0], v174);
        v175 = v826;
        v176 = v827[1];
        v826 = v174;
        v807 = buf[1].i64[0];
        *v827 = buf[1];
        buf[1].i64[0] = v175;
        buf[1].i64[1] = v176;
        buf[0].i64[1] = v175;
        buf[0].i64[0] = v175;
        sub_2621E37B4(buf);
        v161 = v807;
      }

      else
      {
        v152 = v847[0];
        v153 = v847[1];
        v154 = v849;
        *(v827[0] + 2) = v848;
        v151[3] = v154;
        *v151 = v152;
        v151[1] = v153;
        v155 = v850;
        v156 = v851;
        v157 = v853;
        v151[6] = v852;
        v151[7] = v157;
        v151[4] = v155;
        v151[5] = v156;
        v158 = v854;
        v159 = *v855;
        v160 = v856;
        v151[10] = *&v855[16];
        v151[11] = v160;
        v151[8] = v158;
        v151[9] = v159;
        v151[12].i64[0] = v857;
        v151[12].i64[1] = v858;
        v161 = v151 + 13;
      }

      v827[0] = v161;
LABEL_95:

      ++v783;
    }

    buf[0].i64[0] = &v828;
    sub_2621E35E4(buf);

    v890[1] = 0;
    v890[0] = 0;
    v891 = 0;
    v209 = v823;
    v210 = v824.i64[0];
    if (v823 == v824.i64[0])
    {
      v318 = 0;
      v317 = 0;
      v319 = 0;
      goto LABEL_210;
    }

    v789 = 0;
    v770 = v824.i64[0];
    while (1)
    {
      v828 = 0u;
      v829 = 0u;
      LODWORD(v830) = 1065353216;
      if (a5)
      {
        break;
      }

      buf[0].i32[0] = 0;
      if (v827[0] != v826)
      {
        sub_262236A5C(v209);
      }

      sub_262236B50(v890, v209);
      v264 = v789;
      v265 = v789 >> 2;
      if (((v789 >> 2) + 1) >> 62)
      {
        sub_2621CBEB0();
      }

      if (v789 >> 2 != -1)
      {
        sub_2621C7F54((v789 >> 2) + 1);
      }

      *(4 * v265) = -1;
      v789 = 4 * v265 + 4;
      memcpy(0, 0, v264);
LABEL_205:
      sub_2621C74C4(&v828);
      v209 += 12;
      if (v209 == v210)
      {
        v317 = v890[0];
        v318 = v890[1];
        v319 = v789;
LABEL_210:
        v883 = 0uLL;
        v884 = 0;
        sub_2622395E8(&v883, v317, v318, 0xAAAAAAAAAAAAAAABLL * ((v318 - v317) >> 6));
        v886 = 0;
        v885 = 0;
        v887 = 0;
        sub_2621C8B60(&v885, 0, v319, v319 >> 2);
        buf[0].i64[0] = v890;
        sub_2621EAAB0(buf);
        v320 = *(&v883 + 1);
        v321 = *(&v883 + 1) - v883;
        if (v824.i64[1] - v823 < *(&v883 + 1) - v883)
        {
          v322 = 0xAAAAAAAAAAAAAAABLL * (v321 >> 6);
          sub_2621EADF4(&v823);
          if (v322 <= 0x155555555555555)
          {
            v323 = 0x5555555555555556 * ((v824.i64[1] - v823) >> 6);
            if (v323 <= v322)
            {
              v323 = v322;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v824.i64[1] - v823) >> 6) >= 0xAAAAAAAAAAAAAALL)
            {
              v324 = 0x155555555555555;
            }

            else
            {
              v324 = v323;
            }

            if (v324 <= 0x155555555555555)
            {
              sub_2621EAE84(v324);
            }
          }

          sub_2621CBEB0();
        }

        if (v824.i64[0] - v823 >= v321)
        {
          sub_2621EAC08(v883, *(&v883 + 1), v823);
          sub_2621EAB94(&v823, v326);
        }

        else
        {
          v325 = sub_2621EAC08(v883, v883 + v824.i64[0] - v823, v823);
          v824.i64[0] = sub_2621EACD8(&v823, v325, v320, v824.i64[0]);
        }

        memset(buf, 0, 24);
        sub_2621C8B60(buf, v885, v886, (v886 - v885) >> 2);
        v328 = v768;
        v329 = v823;
        v330 = v824.i64[0];
        v331 = 0xAAAAAAAAAAAAAAABLL * ((v824.i64[0] - v823) >> 6);
        v332 = buf[0].i64[0];
        v333 = buf[0].i64[1] - buf[0].i64[0];
        if (v331 != (buf[0].i64[1] - buf[0].i64[0]) >> 2)
        {
          if (qword_27FF0C060 != -1)
          {
            dispatch_once(&qword_27FF0C060, &unk_2874EE100);
          }

          v334 = qword_27FF0C058;
          if (os_log_type_enabled(v334, OS_LOG_TYPE_ERROR))
          {
            v847[0].i32[0] = 134218240;
            *(v847[0].i64 + 4) = v331;
            v847[0].i16[6] = 2048;
            *(&v847[0].i64[1] + 6) = v333 >> 2;
            _os_log_error_impl(&dword_2621C3000, v334, OS_LOG_TYPE_ERROR, "The input wall and wall-ids should be of the same length (%zu vs %zu)", v847, 0x16u);
          }

          v329 = v823;
          v330 = v824.i64[0];
        }

        if (v330 != v329)
        {
          v335 = 0;
          do
          {
            if (objc_msgSend_isEqualToString_(*&v329[12 * v335 + 8], v327, @"Fireplace"))
            {
              v337 = v332[v335];
              if ((v337 & 0x80000000) != 0 || 0x4EC4EC4EC4EC4EC5 * ((v827[0] - v826) >> 4) <= v337)
              {
                if (qword_27FF0C060 != -1)
                {
                  dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                }

                v366 = qword_27FF0C058;
                if (os_log_type_enabled(v366, OS_LOG_TYPE_ERROR))
                {
                  v847[0].i32[0] = 67109120;
                  v847[0].i32[1] = v337;
                  _os_log_error_impl(&dword_2621C3000, v366, OS_LOG_TYPE_ERROR, "Invalid wall_ids: %d", v847, 8u);
                }
              }

              else
              {
                v338.i64[0] = 0x3F0000003F000000;
                v338.i64[1] = 0x3F0000003F000000;
                v339 = vmulq_f32(vaddq_f32(v823[12 * v335 + 3], v823[12 * v335]), v338);
                v340 = &v826[13 * v337];
                v341 = v340[4];
                v342 = vsubq_f32(v341, v339);
                v343 = vsubq_f32(*(v340 + 5), v341);
                v344 = vcvtq_f64_f32(*v343.f32);
                v342.f32[0] = -(COERCE_FLOAT(vmulq_f32(v342, v343).i32[1]) + (v342.f32[0] * v343.f32[0])) / vaddvq_f64(vmulq_f64(v344, v344));
                *v341.f32 = vmla_n_f32(*v341.f32, *v343.f32, v342.f32[0]);
                v341.i32[2] = 0;
                v345 = vsubq_f32(v339, v341);
                v346 = v340[11];
                v347 = vmulq_f32(v345, v346);
                v348 = vmulq_f32(v346, v346);
                if (((v347.f32[2] + vaddv_f32(*v347.f32)) / sqrtf(v348.f32[2] + vaddv_f32(*v348.f32))) < -0.01)
                {
                  for (k = 0; objc_msgSend_count(v328, v327, v336) > k; ++k)
                  {
                    v350 = objc_msgSend_objectAtIndexedSubscript_(v328, v327, k);
                    v353 = objc_msgSend_identifier(v350, v351, v352);
                    isEqual = objc_msgSend_isEqual_(v353, v354, *&v823[12 * v335 + 9]);

                    if (isEqual)
                    {
                      v358 = objc_msgSend_copy(*&v826[13 * v337 + 12], v356, v357);
                      sub_26223FCCC(v350, v358);

                      if (qword_27FF0C060 != -1)
                      {
                        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                      }

                      v359 = qword_27FF0C058;
                      if (os_log_type_enabled(v359, OS_LOG_TYPE_DEBUG))
                      {
                        v362 = objc_msgSend_type(v350, v360, v361);
                        v365 = objc_msgSend_parent_id(v350, v363, v364);
                        v847[0].i32[0] = 138412546;
                        *(v847[0].i64 + 4) = v362;
                        v847[0].i16[6] = 2112;
                        *(&v847[0].i64[1] + 6) = v365;
                        _os_log_debug_impl(&dword_2621C3000, v359, OS_LOG_TYPE_DEBUG, "The wall-parentID of fireplace %@ is: %@", v847, 0x16u);
                      }
                    }
                  }
                }
              }
            }

            ++v335;
            v329 = v823;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v824.i64[0] - v823) >> 6) > v335);
        }

        sub_2621E1F3C(v328, &v823, @"wallaligned");
        if (v332)
        {
          operator delete(v332);
        }

        if (v885)
        {
          v886 = v885;
          operator delete(v885);
        }

        buf[0].i64[0] = &v883;
        sub_2621EAAB0(buf);
        buf[0].i64[0] = &v826;
        sub_2621E35E4(buf);
        v87 = v768;
        goto LABEL_254;
      }
    }

    if (objc_msgSend_isEqualToString_(*(v209 + 16), v208, @"Fireplace"))
    {
      v211 = (sub_262238EE8)(&v826, v209, &v828, 0.3);
    }

    else
    {
      v211 = (sub_26223926C)(&v826, v209, &v828, 0.3);
    }

    v213 = v211;
    isEqualToString = objc_msgSend_isEqualToString_(*(v209 + 16), v212, @"Fireplace");
    v216 = sub_2622381E8;
    if (isEqualToString)
    {
      v216 = sub_262237CBC;
    }

    *&v888 = &unk_2874EE3D0;
    *(&v888 + 1) = v216;
    *(&v889 + 1) = &v888;
    v217 = MEMORY[0x277CBEB98];
    v877 = @"Chair";
    v218 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v215, &v877, 1);
    v784 = objc_msgSend_setWithArray_(v217, v219, v218);

    v220 = MEMORY[0x277CBEB98];
    v874 = @"Toilet";
    v875 = @"Sink";
    v222 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v221, &v874, 2);
    v801 = objc_msgSend_setWithArray_(v220, v223, v222);

    v225 = v826;
    v224 = v827[0];
    v226 = v209[3];
    v228 = *v209;
    v227 = v209[1];
    v848 = v209[2];
    v849 = v226;
    v847[0] = v228;
    v847[1] = v227;
    v229 = v209[7];
    v231 = v209[4];
    v230 = v209[5];
    v852 = v209[6];
    v853 = v229;
    v850 = v231;
    v851 = v230;
    v854.i64[0] = *(v209 + 16);
    v854.i32[2] = *(v209 + 34);
    *v855 = *(v209 + 18);
    v232 = *(v209 + 19);
    memset(&v855[8], 0, 24);
    v233 = *(v209 + 20);
    v234 = (v233 - v232) >> 2;
    if (v224 == v225)
    {
      sub_2621C8E70(&v855[8], v232, v233, v234);
      v856.i64[0] = *(v209 + 22);
      v856.i16[4] = *(v209 + 92);
      goto LABEL_199;
    }

    sub_2621C8E70(&v855[8], v232, v233, v234);
    v856.i64[0] = *(v209 + 22);
    v856.i16[4] = *(v209 + 92);
    v825 = *(v209 + 16);
    sub_26220F644(v892, v209);
    v235 = v826;
    v237 = v825;
    if (a5)
    {
      if (qword_27FF0C100 != -1)
      {
        dispatch_once(&qword_27FF0C100, &unk_2874EE380);
      }

      v238 = 0.55;
      if (qword_27FF0C0F8)
      {
        v239 = objc_msgSend_objectForKey_(qword_27FF0C0F8, v236, v237);
        v240 = v239 == 0;

        v238 = 0.55;
        if (!v240)
        {
          v242 = objc_msgSend_objectForKey_(qword_27FF0C0F8, v241, v237);
          objc_msgSend_floatValue(v242, v243, v244);
LABEL_120:
          v238 = v245;
        }
      }
    }

    else
    {
      if (qword_27FF0C0F0 != -1)
      {
        dispatch_once(&qword_27FF0C0F0, &unk_2874EE360);
      }

      v238 = 0.55;
      if (qword_27FF0C0E8)
      {
        v246 = objc_msgSend_objectForKey_(qword_27FF0C0E8, v236, v237);
        v247 = v246 == 0;

        v238 = 0.55;
        if (!v247)
        {
          v242 = objc_msgSend_objectForKey_(qword_27FF0C0E8, v248, v237);
          objc_msgSend_floatValue(v242, v249, v250);
          goto LABEL_120;
        }
      }
    }

    v251 = *v209;
    v252 = v209[1];
    v253 = v209[2];
    v897 = v209[3];
    v896 = v253;
    v895 = v252;
    v894 = v251;
    v254 = v209[4];
    v255 = v209[5];
    v256 = v209[6];
    v901 = v209[7];
    v900 = v256;
    v899 = v255;
    v898 = v254;
    if (objc_msgSend_containsObject_(v784, v257, v825))
    {
      goto LABEL_122;
    }

    v261 = v892[0];
    v262 = *(v892[0] + 6);
    v263 = fmodf(*(&v235[13 * v213 + 6] + 1) - v262, 1.5708);
    if (v263 < 0.0)
    {
      v263 = fmodf(v263 + 1.5708, 1.5708);
    }

    if (fabsf(v263) >= v238)
    {
      if (fabsf(v263 + -1.5708) >= v238)
      {
LABEL_122:
        v258 = 0;
        v259 = 0;
        *v879 = 0u;
        *v878 = 0u;
        v260 = 0.0;
        v880 = 1065353216;
        if ((a5 & 1) == 0)
        {
LABEL_123:
          v880 = v830;
          v259 = v258;
          if (v829)
          {
            operator new();
          }

          goto LABEL_143;
        }

        goto LABEL_143;
      }

      v266 = v262 + v263;
      if (v263 <= 0.0)
      {
        v267 = 1.5708;
      }

      else
      {
        v267 = -1.5708;
      }

      v260 = v266 + v267;
    }

    else
    {
      v260 = v262 + v263;
    }

    v261[6] = v260;
    sub_26220FF88(buf, v892);
    v898 = v862;
    v899 = v863;
    v900 = v864;
    v901 = v865;
    v894 = buf[0];
    v895 = buf[1];
    v896 = v860;
    v897 = v861;
    *v879 = 0u;
    *v878 = 0u;
    v880 = 1065353216;
    if ((a5 & 1) == 0)
    {
      buf[0].i32[0] = 0;
      if (v827[0] != v826)
      {
        sub_262236A5C(&v894);
      }

      v258 = 1;
      goto LABEL_123;
    }

    v259 = 1;
LABEL_143:
    v269 = v825;
    if (qword_27FF0C110 != -1)
    {
      dispatch_once(&qword_27FF0C110, &unk_2874EE3A0);
    }

    v270 = 0.0;
    if (qword_27FF0C108)
    {
      v271 = objc_msgSend_objectForKey_(qword_27FF0C108, v268, v269);
      v272 = v271 == 0;

      if (!v272)
      {
        v274 = objc_msgSend_objectForKey_(qword_27FF0C108, v273, v269);
        objc_msgSend_floatValue(v274, v275, v276);
        v270 = v277;
      }
    }

    v278 = v826;
    if (v827[0] != v826)
    {
      v279 = 0;
      v280 = 0;
      v281 = v238;
      if (*(&v213 + 1) >= 0.0)
      {
        v282 = *(&v213 + 1) * 0.05;
      }

      else
      {
        v282 = v270;
      }

      do
      {
        if ((a5 & 1) == 0 && !sub_2621C719C(v878, v280))
        {
          goto LABEL_189;
        }

        v283 = &v278[v279];
        v284 = &v278[v279 + 4];
        v285 = vsubq_f32(*v284, v278[v279 + 5]);
        v286 = sqrtf(vaddv_f32(*&vmulq_f32(v285, v285)));
        if (v286 > 0.02)
        {
          v287 = v259;
        }

        else
        {
          v287 = 0;
        }

        if (v287 == 1)
        {
          v289 = fmodf((v283[6].f32[1] + 6.2832) - v260, 6.2832);
          v290 = fabsf(v289) < v238 || fabsf(v289 + -6.2832) < v238 || fabs(v289 + -3.14159265) < v281 || fabs(v289 + 3.14159265) < v281;
          v291 = objc_msgSend_containsObject_(v801, v288, v825);
          v292 = fmodf(v289, 1.5708);
          v293 = fabsf(v292) < v238;
          v294 = fabs(v292 + -1.57079633);
          v295 = v293 || v290;
          if (v294 < v281)
          {
            v295 = 1;
          }

          if ((v295 & (v291 ^ 1) & 1) != 0 || v213 == v280)
          {
            v296 = 0.1;
            if (v213 == v280)
            {
              v296 = v282;
            }

            *v833 = v296;
            LOBYTE(v906[0]) = v290;
            LOBYTE(v904[0]) = a5 ^ 1;
            v902.i8[0] = v213 == v280;
            buf[0].i64[0] = &v894;
            if (!*(&v889 + 1))
            {
              sub_2621C7250();
            }

            (*(**(&v889 + 1) + 48))(*(&v889 + 1), v283, v833, &v825, v906, v904, &v902, buf);
          }
        }

        v297 = v286 <= 0.5 ? 1 : v259;
        if (v297)
        {
          goto LABEL_189;
        }

        v808 = v283[5];
        v813 = v283[4];
        sub_262236D98(v904, v895, v897, v813, v808);
        sub_262236D98(&v902, v896, v894, v813, v808);
        v862 = v898;
        v863 = v899;
        v864 = v900;
        v865 = v901;
        buf[0] = v894;
        buf[1] = v895;
        v860 = v896;
        v861 = v897;
        if (LOBYTE(v905[0]) == 1)
        {
          if (v903)
          {
            v839 = 0u;
            v840 = 0u;
            v837 = 0u;
            v838 = 0u;
            v835 = 0u;
            v836 = 0u;
            *v833 = 0u;
            v834 = 0u;
            sub_262236F30(v833, &v894, v284, *v904);
            v913 = 0u;
            v912 = 0u;
            v911 = 0u;
            v910 = 0u;
            v909 = 0u;
            v908 = 0u;
            v907 = 0u;
            *v906 = 0u;
            sub_262236F30(v906, &v894, v284, v902);
            sub_26220F644(v881, v833);
            sub_26220F644(&v914, v906);
            v298 = v833;
            if ((*(v881[0] + 3) * *(v881[0] + 4)) <= (*(v914 + 12) * *(v914 + 16)))
            {
              v298 = v906;
            }

            v299 = v298[5];
            v862 = v298[4];
            v863 = v299;
            v300 = v298[7];
            v864 = v298[6];
            v865 = v300;
            v301 = v298[1];
            buf[0] = *v298;
            buf[1] = v301;
            v302 = v298[3];
            v860 = v298[2];
            v861 = v302;
            *(&v914 + 1) = v914;
            operator delete(v914);
            if (v881[0])
            {
              v881[1] = v881[0];
              operator delete(v881[0]);
            }

            goto LABEL_187;
          }

          v303 = v904;
        }

        else
        {
          if (!v903)
          {
            goto LABEL_187;
          }

          v303 = &v902;
        }

        sub_262236F30(buf, &v894, v284, *v303);
LABEL_187:
        memset(v833, 0, sizeof(v833));
        v834.i64[0] = 0;
        sub_26220FA14(v833, &v894, buf);
        if (v834.f32[0] >= 0.25)
        {
          v898 = v862;
          v899 = v863;
          v900 = v864;
          v901 = v865;
          v894 = buf[0];
          v895 = buf[1];
          v896 = v860;
          v897 = v861;
        }

LABEL_189:
        ++v280;
        v278 = v826;
        v279 += 13;
      }

      while (0x4EC4EC4EC4EC4EC5 * ((v827[0] - v826) >> 4) > v280);
    }

    sub_2622116A8(buf, &v894, &v825, *(v209 + 18), v209 + 152, *(v209 + 34));
    v850 = v862;
    v851 = v863;
    v852 = v864;
    v853 = v865;
    v847[0] = buf[0];
    v847[1] = buf[1];
    v848 = v860;
    v849 = v861;
    v304 = v866.i64[0];
    v866.i64[0] = 0;
    v305 = v854.i64[0];
    v854.i64[0] = v304;

    v210 = v770;
    v854.i32[2] = v866.i32[2];
    v306 = *__p;
    *__p = 0;
    v307 = *v855;
    *v855 = v306;

    if (*&v855[8])
    {
      *&v855[16] = *&v855[8];
      operator delete(*&v855[8]);
    }

    *&v855[8] = *&__p[8];
    v308 = *&__p[24];
    v309 = v868.i64[0];
    memset(&__p[8], 0, 24);
    v868.i64[0] = 0;
    v310 = v856.i64[0];
    *&v855[24] = v308;
    v856.i64[0] = v309;

    v856.i16[4] = v868.i16[4];
    if (*&__p[8])
    {
      *&__p[16] = *&__p[8];
      operator delete(*&__p[8]);
    }

    sub_2621C74C4(v878);
    if (v892[0])
    {
      v892[1] = v892[0];
      operator delete(v892[0]);
    }

LABEL_199:
    sub_2622371D0(&v888);
    sub_262236B50(v890, v847);
    v311 = v789;
    v312 = v789 >> 2;
    if (((v789 >> 2) + 1) >> 62)
    {
      sub_2621CBEB0();
    }

    if (v789 >> 2 != -1)
    {
      sub_2621C7F54((v789 >> 2) + 1);
    }

    *(4 * v312) = v213;
    v789 = 4 * v312 + 4;
    memcpy(0, 0, v311);

    if (*&v855[8])
    {
      *&v855[16] = *&v855[8];
      operator delete(*&v855[8]);
    }

    goto LABEL_205;
  }

LABEL_254:
  if (a5 && a6)
  {
    v821 = 0u;
    v822 = 0u;
    v819 = 0u;
    v820 = 0u;
    v367 = v785;
    v369 = objc_msgSend_countByEnumeratingWithState_objects_count_(v367, v368, &v819, v832, 16);
    if (v369)
    {
      v370 = *v820;
      do
      {
        for (m = 0; m != v369; ++m)
        {
          if (*v820 != v370)
          {
            objc_enumerationMutation(v367);
          }

          v372 = *(*(&v819 + 1) + 8 * m);
          v373 = @"ChairGroup";
          if (v372 && sub_26223FB54(@"ChairGroup"))
          {
            objc_msgSend_setObject_forKeyedSubscript_(*(v372 + 8), v374, 0, @"ChairGroup");
          }
        }

        v369 = objc_msgSend_countByEnumeratingWithState_objects_count_(v367, v375, &v819, v832, 16);
      }

      while (v369);
    }

    buf[0].i32[0] = 2;
    sub_262333B04(&v828, &v823, buf);
    sub_2621E1F3C(v768, &v828, @"ultimate");
    v376 = *(&v829 + 1);
    v377 = v768;
    v814 = v376;
    if (!v814)
    {
LABEL_312:

      v488 = v830;
      v377;
      v488;
      *v906 = xmmword_2623A7710;
      memset(buf, 0, 24);
      sub_2621DD5D0(buf, v906, &v907, 4uLL);
      v894 = xmmword_2623A7720;
      buf[1].i64[1] = 0;
      v860 = 0uLL;
      sub_2621DD5D0(&buf[1].i64[1], &v894, &v895, 4uLL);
      v883 = xmmword_2623A7730;
      v862.i64[0] = 0;
      v861 = 0uLL;
      sub_2621DD5D0(&v861, &v883, &v884, 4uLL);
      *v878 = xmmword_2623A7740;
      v862.i64[1] = 0;
      v863 = 0uLL;
      sub_2621DD5D0(&v862.i64[1], v878, v879, 4uLL);
      *v904 = xmmword_2623A7750;
      *&v865 = 0;
      v864 = 0uLL;
      sub_2621DD5D0(&v864, v904, v905, 4uLL);
      v902 = xmmword_2623A7760;
      *(&v865 + 1) = 0;
      v866 = 0uLL;
      sub_2621DD5D0(&v865 + 1, &v902, &v903, 4uLL);
      v888 = xmmword_2623A7770;
      memset(__p, 0, 24);
      sub_2621DD5D0(__p, &v888, &v889, 4uLL);
      *v881 = xmmword_2623A7780;
      *&__p[24] = 0;
      v868 = 0uLL;
      sub_2621DD5D0(&__p[24], v881, &v882, 4uLL);
      v914 = xmmword_2623A7790;
      v871 = 0;
      v869 = 0;
      v870 = 0;
      sub_2621DD5D0(&v869, &v914, v915, 4uLL);
      *v892 = xmmword_2623A77A0;
      memset(v872, 0, sizeof(v872));
      sub_2621DD5D0(v872, v892, &v893, 4uLL);
      *v890 = xmmword_2623A77B0;
      memset(v873, 0, sizeof(v873));
      sub_2621DD5D0(v873, v890, &v891, 4uLL);
      v875 = 0;
      v874 = 0;
      v876 = 0;
      *v833 = &v874;
      v833[8] = 0;
      operator new();
    }

    v380 = 0;
LABEL_268:
    if (v380 >= objc_msgSend_count(v377, v378, v379))
    {
      goto LABEL_312;
    }

    v382 = objc_msgSend_objectAtIndexedSubscript_(v377, v381, v380);
    v385 = objc_msgSend_identifier(v382, v383, v384);
    v387 = objc_msgSend_objectForKey_(v814, v386, v385);

    if (!v387)
    {
      goto LABEL_284;
    }

    v390 = objc_msgSend_type(v382, v388, v389);
    v392 = objc_msgSend_isEqualToString_(v390, v391, @"Chair");

    if ((v392 & 1) == 0)
    {
      goto LABEL_284;
    }

    sub_26223FCCC(v382, 0);
    v396 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v393, @"Table", @"Storage", 0);
    for (n = 0; ; ++n)
    {
      if (n >= objc_msgSend_count(v377, v394, v395))
      {
        goto LABEL_283;
      }

      v399 = objc_msgSend_objectAtIndexedSubscript_(v377, v398, n);
      v402 = objc_msgSend_identifier(v399, v400, v401);
      if (objc_msgSend_isEqual_(v402, v403, v387))
      {
        v406 = objc_msgSend_type(v399, v404, v405);
        v408 = objc_msgSend_containsObject_(v396, v407, v406);

        if (v408)
        {
          v411 = objc_msgSend_copy(v387, v409, v410);
          sub_26223FCCC(v382, v411);

          if (qword_27FF0C060 != -1)
          {
            dispatch_once(&qword_27FF0C060, &unk_2874EE100);
          }

          v412 = qword_27FF0C058;
          if (os_log_type_enabled(v412, OS_LOG_TYPE_DEBUG))
          {
            v415 = objc_msgSend_identifier(v382, v413, v414);
            v418 = objc_msgSend_parent_id(v382, v416, v417);
            buf[0].i32[0] = 138412546;
            *(buf[0].i64 + 4) = v415;
            buf[0].i16[6] = 2112;
            *(&buf[0].i64[1] + 6) = v418;
            _os_log_debug_impl(&dword_2621C3000, v412, OS_LOG_TYPE_DEBUG, "Chair %@ is assigned parent-id as: %@", buf, 0x16u);
          }

LABEL_283:
LABEL_284:

          ++v380;
          goto LABEL_268;
        }
      }

      else
      {
      }
    }
  }

  v421 = v87;
  for (ii = 0; ii < objc_msgSend_count(v421, v419, v420); ++ii)
  {
    v423 = objc_msgSend_objectAtIndexedSubscript_(v421, v422, ii);
    v426 = objc_msgSend_type(v423, v424, v425);
    if (!objc_msgSend_isEqualToString_(v426, v427, @"Chair"))
    {
      goto LABEL_310;
    }

    v430 = objc_msgSend_boxesDict(v423, v428, v429);
    v432 = objc_msgSend_objectForKey_(v430, v431, @"rawdetection");
    v433 = v432 == 0;

    if (!v433)
    {
      v426 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v434, @"Table", @"Storage", @"Cabinet", 0);
      v437 = 0;
      v438 = -1;
      v439 = 1.1755e-38;
      while (1)
      {
        if (v437 >= objc_msgSend_count(v421, v435, v436))
        {
          if ((v438 & 0x80000000) == 0)
          {
            v474 = objc_msgSend_objectAtIndexedSubscript_(v421, v440, v438);
            v477 = objc_msgSend_identifier(v474, v475, v476);
            v480 = objc_msgSend_copy(v477, v478, v479);
            sub_26223FCCC(v423, v480);

            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v481 = qword_27FF0C058;
            if (os_log_type_enabled(v481, OS_LOG_TYPE_DEBUG))
            {
              v484 = objc_msgSend_identifier(v423, v482, v483);
              v487 = objc_msgSend_parent_id(v423, v485, v486);
              buf[0].i32[0] = 138412546;
              *(buf[0].i64 + 4) = v484;
              buf[0].i16[6] = 2112;
              *(&buf[0].i64[1] + 6) = v487;
              _os_log_debug_impl(&dword_2621C3000, v481, OS_LOG_TYPE_DEBUG, "Online Chair %@ is assigned parent-id as: %@", buf, 0x16u);
            }
          }

LABEL_310:

          goto LABEL_311;
        }

        v441 = objc_msgSend_objectAtIndexedSubscript_(v421, v440, v437);
        v444 = objc_msgSend_type(v441, v442, v443);
        if ((objc_msgSend_containsObject_(v426, v445, v444) & 1) == 0)
        {

          goto LABEL_303;
        }

        v448 = objc_msgSend_boxesDict(v441, v446, v447);
        v450 = objc_msgSend_objectForKey_(v448, v449, @"rawdetection");
        v451 = v450 == 0;

        if (v451)
        {
          goto LABEL_303;
        }

        v865 = 0u;
        v864 = 0u;
        v863 = 0u;
        v862 = 0u;
        v861 = 0u;
        v860 = 0u;
        memset(buf, 0, sizeof(buf));
        v454 = objc_msgSend_boxesDict(v441, v452, v453);
        v456 = objc_msgSend_objectForKey_(v454, v455, @"rawdetection");
        sub_262211250(buf, v456);

        v457 = v862.f32[2];
        v458 = buf[0].f32[2];
        v461 = objc_msgSend_type(v441, v459, v460);
        v465 = v457 - v458;
        if (objc_msgSend_isEqualToString_(v461, v462, @"Cabinet"))
        {
          break;
        }

        v469 = objc_msgSend_type(v441, v463, v464);
        if (objc_msgSend_isEqualToString_(v469, v470, @"Storage"))
        {
          v466 = v465 > 1.3;

LABEL_298:
          if (v466)
          {
            goto LABEL_303;
          }

          goto LABEL_301;
        }

LABEL_301:
        v852 = 0u;
        v853 = 0u;
        v850 = 0u;
        v851 = 0u;
        v848 = 0u;
        v849 = 0u;
        memset(v847, 0, sizeof(v847));
        v471 = objc_msgSend_boxesDict(v423, v467, v468);
        v473 = objc_msgSend_objectForKey_(v471, v472, @"rawdetection");
        sub_262211250(v847, v473);

        memset(v833, 0, sizeof(v833));
        v834.i64[0] = 0;
        sub_26220FA14(v833, v847, buf);
        if (*v833 > v439)
        {
          v439 = *v833;
          v438 = v437;
        }

LABEL_303:

        ++v437;
      }

      v466 = v465 > 1.3;

      goto LABEL_298;
    }

LABEL_311:
  }

  v489 = v768;
  v490 = v785;
  v816 = v489;
  v775 = v490;
  v493 = objc_msgSend_count(v816, v491, v492);
  v496 = objc_msgSend_count(v775, v494, v495);
  v847[0].i32[0] = -1082130432;
  sub_2621CD1D8(buf, v496, v847);
  sub_2621E1B50(v833, v493, buf);
  if (buf[0].i64[0])
  {
    buf[0].i64[1] = buf[0].i64[0];
    operator delete(buf[0].i64[0]);
  }

  if (v493)
  {
    for (jj = 0; jj != v493; ++jj)
    {
      v499 = objc_msgSend_objectAtIndexedSubscript_(v816, v497, jj);
      v502 = objc_msgSend_boxesDict(v499, v500, v501);
      v504 = objc_msgSend_objectForKey_(v502, v503, @"rawdetection");
      v505 = v504 == 0;

      if (!v505)
      {
        v865 = 0u;
        v864 = 0u;
        v863 = 0u;
        v862 = 0u;
        v861 = 0u;
        v860 = 0u;
        memset(buf, 0, sizeof(buf));
        v506 = objc_msgSend_objectAtIndexedSubscript_(v816, v497, jj);
        v509 = objc_msgSend_boxesDict(v506, v507, v508);
        v511 = objc_msgSend_objectForKeyedSubscript_(v509, v510, @"rawdetection");
        sub_262211250(buf, v511);

        if (v496)
        {
          for (kk = 0; kk != v496; ++kk)
          {
            v513 = objc_msgSend_objectAtIndexedSubscript_(v816, v497, jj);
            v516 = objc_msgSend_type(v513, v514, v515);
            v518 = objc_msgSend_objectAtIndexedSubscript_(v775, v517, kk);
            v521 = objc_msgSend_type(v518, v519, v520);
            v522 = v516 == v521;

            if (v522)
            {
              v523 = objc_msgSend_objectAtIndexedSubscript_(v775, v497, kk);
              v526 = objc_msgSend_boxesDict(v523, v524, v525);
              v528 = objc_msgSend_objectForKey_(v526, v527, @"rawdetection");
              v529 = v528 == 0;

              if (!v529)
              {
                v852 = 0u;
                v853 = 0u;
                v850 = 0u;
                v851 = 0u;
                v848 = 0u;
                v849 = 0u;
                memset(v847, 0, sizeof(v847));
                v530 = objc_msgSend_objectAtIndexedSubscript_(v775, v497, kk);
                v533 = objc_msgSend_boxesDict(v530, v531, v532);
                v535 = objc_msgSend_objectForKeyedSubscript_(v533, v534, @"rawdetection");
                sub_262211250(v847, v535);

                sub_26220FA14(v906, buf, v847);
                *(*(*v833 + 24 * jj) + 4 * kk) = v906[0];
              }
            }
          }
        }
      }
    }
  }

  v847[0].i32[0] = -1;
  sub_2621DE86C(buf, v496, v847);
  if (v496)
  {
    v536 = 0;
    v537 = *v833;
    do
    {
      if (v493)
      {
        v538 = 0;
        v539 = 0.0;
        v540 = buf[0].i64[0];
        v541 = v537;
        do
        {
          v542 = *(*v541 + 4 * v536);
          if (v542 > 0.3 && v542 > v539)
          {
            *(v540 + 4 * v536) = v538;
            v539 = v542;
          }

          ++v538;
          v541 += 3;
        }

        while (v493 != v538);
      }

      ++v536;
    }

    while (v536 != v496);
  }

  sub_2621E1C0C(v847, v493);
  if (v493)
  {
    for (mm = 0; mm != v493; ++mm)
    {
      if (v496)
      {
        for (nn = 0; nn != v496; ++nn)
        {
          if (*(*(*v833 + 24 * mm) + 4 * nn) > 0.3 && mm == *(buf[0].i64[0] + 4 * nn))
          {
            v547 = v847[0].i64[0] + 24 * mm;
            v549 = *(v547 + 8);
            v548 = *(v547 + 16);
            if (v549 >= v548)
            {
              v551 = *v547;
              v552 = v549 - *v547;
              v553 = v552 >> 2;
              v554 = (v552 >> 2) + 1;
              if (v554 >> 62)
              {
                sub_2621CBEB0();
              }

              v555 = v548 - v551;
              if (v555 >> 1 > v554)
              {
                v554 = v555 >> 1;
              }

              if (v555 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v556 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v556 = v554;
              }

              if (v556)
              {
                sub_2621C7F54(v556);
              }

              *(4 * v553) = nn;
              v550 = 4 * v553 + 4;
              memcpy(0, v551, v552);
              v557 = *v547;
              *v547 = 0;
              *(v547 + 8) = v550;
              *(v547 + 16) = 0;
              if (v557)
              {
                operator delete(v557);
              }
            }

            else
            {
              *v549 = nn;
              v550 = (v549 + 1);
            }

            *(v547 + 8) = v550;
          }
        }
      }
    }

    v558 = 0;
    v559 = 0;
    while (1)
    {
      v560 = objc_msgSend_objectAtIndexedSubscript_(v816, v544, v559);
      v907.i64[0] = 0;
      v906[0] = 0;
      v906[1] = 0;
      sub_2621C8B60(v906, *(v847[0].i64[0] + v558), *(v847[0].i64[0] + v558 + 8), (*(v847[0].i64[0] + v558 + 8) - *(v847[0].i64[0] + v558)) >> 2);
      v562 = v906[0];
      if (v906[1] != v906[0])
      {
        break;
      }

      if (v906[0])
      {
        goto LABEL_361;
      }

LABEL_362:

      ++v559;
      v558 += 24;
      if (v493 == v559)
      {
        goto LABEL_363;
      }
    }

    v563 = objc_msgSend_objectAtIndexedSubscript_(v775, v561, *v906[0]);
    v566 = objc_msgSend_identifier(v563, v564, v565);
    sub_26223FCBC(v560, v566);

LABEL_361:
    operator delete(v562);
    goto LABEL_362;
  }

LABEL_363:
  v906[0] = v847;
  sub_2621E1CB0(v906);
  if (buf[0].i64[0])
  {
    buf[0].i64[1] = buf[0].i64[0];
    operator delete(buf[0].i64[0]);
  }

  buf[0].i64[0] = v833;
  sub_2621E1D40(buf);

  if ((a5 & 1) == 0)
  {
    v567 = v816;
    if (v567)
    {
      v830 = 0u;
      v831 = 0u;
      v828 = 0u;
      v829 = 0u;
      v796 = v567;
      v802 = v567;
      v569 = objc_msgSend_countByEnumeratingWithState_objects_count_(v802, v568, &v828, buf, 16);
      if (v569)
      {
        v809 = *v829;
        v572 = vdup_n_s32(0xBCA3D70A);
        do
        {
          v573 = v569;
          for (i1 = 0; i1 != v573; ++i1)
          {
            if (*v829 != v809)
            {
              objc_enumerationMutation(v802);
            }

            v575 = *(*(&v828 + 1) + 8 * i1);
            *v904 = 0u;
            memset(v905, 0, sizeof(v905));
            v576 = objc_msgSend_boxesDict(v575, v570, v571);
            v579 = objc_msgSend_allKeys(v576, v577, v578);

            v583 = objc_msgSend_countByEnumeratingWithState_objects_count_(v579, v580, v904, v847, 16);
            if (v583)
            {
              v584 = **&v905[0];
              do
              {
                for (i2 = 0; i2 != v583; ++i2)
                {
                  if (**&v905[0] != v584)
                  {
                    objc_enumerationMutation(v579);
                  }

                  v586 = *(v904[1] + i2);
                  v839 = 0u;
                  v840 = 0u;
                  v837 = 0u;
                  v838 = 0u;
                  v835 = 0u;
                  v836 = 0u;
                  *v833 = 0u;
                  v834 = 0u;
                  v587 = objc_msgSend_boxesDict(v575, v581, v582);
                  v589 = objc_msgSend_objectForKeyedSubscript_(v587, v588, v586);
                  sub_262211250(v833, v589);

                  sub_26220F644(&v914, v833);
                  *(v914 + 12) = vadd_f32(*(v914 + 12), v572);
                  sub_26220FF88(v906, &v914);
                  v837 = v910;
                  v838 = v911;
                  v839 = v912;
                  v840 = v913;
                  *v833 = *v906;
                  v834 = v907;
                  v835 = v908;
                  v836 = v909;
                  sub_26223FC2C(v575, v833, v586);
                  if (v914)
                  {
                    *(&v914 + 1) = v914;
                    operator delete(v914);
                  }
                }

                v583 = objc_msgSend_countByEnumeratingWithState_objects_count_(v579, v581, v904, v847, 16);
              }

              while (v583);
            }
          }

          v569 = objc_msgSend_countByEnumeratingWithState_objects_count_(v802, v570, &v828, buf, 16);
        }

        while (v569);
      }

      v567 = v796;
    }
  }

  v797 = v769;
  v590 = v816;
  v593 = v590;
  if (v769)
  {
    if (v590)
    {
      v792 = v590;
      v738 = objc_msgSend_count(v797, v591, v592);
      v593 = v792;
      if (v738)
      {
        v741 = 0;
        v742 = 3.4028e38;
        while (v741 < objc_msgSend_count(v797, v739, v740))
        {
          v744 = objc_msgSend_objectAtIndexedSubscript_(v797, v743, v741);
          sub_2621E283C(buf, v744);
          if (*&__p[20] < v742)
          {
            v742 = *&__p[20];
          }

          ++v741;
        }

        v909 = 0u;
        v908 = 0u;
        v907 = 0u;
        *v906 = 0u;
        v795 = v792;
        v811 = objc_msgSend_countByEnumeratingWithState_objects_count_(v795, v745, v906, buf, 16);
        if (v811)
        {
          v805 = *v907.i64[0];
          do
          {
            for (i3 = 0; i3 != v811; ++i3)
            {
              if (*v907.i64[0] != v805)
              {
                objc_enumerationMutation(v795);
              }

              v748 = *(v906[1] + i3);
              v828 = 0u;
              v829 = 0u;
              v830 = 0u;
              v831 = 0u;
              v749 = objc_msgSend_boxesDict(v748, v746, v747);
              v752 = objc_msgSend_allKeys(v749, v750, v751);

              v755 = objc_msgSend_countByEnumeratingWithState_objects_count_(v752, v753, &v828, v847, 16);
              if (v755)
              {
                v756 = *v829;
                do
                {
                  for (i4 = 0; i4 != v755; ++i4)
                  {
                    if (*v829 != v756)
                    {
                      objc_enumerationMutation(v752);
                    }

                    v758 = *(*(&v828 + 1) + 8 * i4);
                    if ((objc_msgSend_isEqualToString_(v758, v754, @"wallaligned") & 1) != 0 || objc_msgSend_isEqualToString_(v758, v754, @"ultimate"))
                    {
                      v839 = 0u;
                      v840 = 0u;
                      v837 = 0u;
                      v838 = 0u;
                      v835 = 0u;
                      v836 = 0u;
                      *v833 = 0u;
                      v834 = 0u;
                      v761 = objc_msgSend_boxesDict(v748, v754, v759);
                      v763 = objc_msgSend_objectForKeyedSubscript_(v761, v762, v758);
                      sub_262211250(v833, v763);

                      LODWORD(v760) = *&v833[8];
                      if (*&v833[8] <= (v742 + 0.3))
                      {
                        *&v833[8] = v742;
                        v834.f32[2] = v742;
                        v835.f32[2] = v742;
                        v836.f32[2] = v742;
                        sub_26223FC2C(v748, v833, v758);
                      }
                    }
                  }

                  v755 = objc_msgSend_countByEnumeratingWithState_objects_count_(v752, v754, &v828, v847, 16, v760);
                }

                while (v755);
              }
            }

            v811 = objc_msgSend_countByEnumeratingWithState_objects_count_(v795, v746, v906, buf, 16);
          }

          while (v811);
        }

        v593 = v792;
      }
    }
  }

  v594 = v593;

  v595 = v594;
  v828 = 0u;
  v829 = 0u;
  v830 = 0u;
  v831 = 0u;
  v776 = v595;
  exception_objecta = objc_msgSend_countByEnumeratingWithState_objects_count_(v776, v596, &v828, v906, 16);
  if (exception_objecta)
  {
    v772 = *v829;
    do
    {
      v779 = 0;
      do
      {
        if (*v829 != v772)
        {
          objc_enumerationMutation(v776);
        }

        v781 = *(*(&v828 + 1) + 8 * v779);
        v599 = objc_msgSend_type(v781, v597, v598);
        v601 = objc_msgSend_isEqualToString_(v599, v600, @"Dishwasher");

        if (v601 & 1) != 0 || (objc_msgSend_type(v781, v602, v603), v604 = objc_claimAutoreleasedReturnValue(), v606 = objc_msgSend_isEqualToString_(v604, v605, @"Oven"), v604, (v606))
        {
          v810 = 0;
          v794 = 1;
          v609 = 0.03;
        }

        else
        {
          v717 = objc_msgSend_type(v781, v607, v608);
          v719 = objc_msgSend_isEqualToString_(v717, v718, @"Sink");

          if ((v719 & 1) == 0)
          {
            goto LABEL_444;
          }

          v794 = 0;
          v810 = 1;
          v609 = 0.0;
        }

        v610 = v781;
        v611 = v776;
        v817 = v610;
        v614 = objc_msgSend_parent_id(v610, v612, v613);
        v615 = v611;
        v778 = v615;
        v803 = v614;
        if (v803)
        {
          v848 = 0u;
          v849 = 0u;
          memset(v847, 0, sizeof(v847));
          v798 = v615;
          v618 = objc_msgSend_countByEnumeratingWithState_objects_count_(v798, v617, v847, buf, 16);
          if (v618)
          {
            v619 = *v847[1].i64[0];
LABEL_399:
            v620 = 0;
            while (1)
            {
              if (*v847[1].i64[0] != v619)
              {
                objc_enumerationMutation(v798);
              }

              v616 = *(v847[0].i64[1] + 8 * v620);
              v625 = objc_msgSend_identifier(v616, v621, v622);
              if (v625)
              {
                v626 = objc_msgSend_identifier(v616, v623, v624);
                v629 = objc_msgSend_UUIDString(v626, v627, v628);
                v632 = objc_msgSend_UUIDString(v803, v630, v631);
                v634 = objc_msgSend_isEqualToString_(v629, v633, v632);

                if (v634)
                {
                  break;
                }
              }

              if (v618 == ++v620)
              {
                v618 = objc_msgSend_countByEnumeratingWithState_objects_count_(v798, v635, v847, buf, 16);
                if (v618)
                {
                  goto LABEL_399;
                }

                goto LABEL_406;
              }
            }
          }

          else
          {
LABEL_406:
            v616 = 0;
          }
        }

        else
        {
          v616 = 0;
        }

        if (v616)
        {
          v636 = @"wallaligned";
          v892[0] = @"wallaligned";
          v637 = @"ultimate";
          v638 = 0;
          v892[1] = @"ultimate";
          do
          {
            v639 = v892[v638];
            v642 = objc_msgSend_boxesDict(v817, v640, v641);
            v644 = objc_msgSend_objectForKey_(v642, v643, v639);

            v647 = objc_msgSend_boxesDict(v616, v645, v646);
            v649 = objc_msgSend_objectForKey_(v647, v648, v639);

            if (v644 && v649)
            {
              v865 = 0u;
              v864 = 0u;
              v863 = 0u;
              v862 = 0u;
              v861 = 0u;
              v860 = 0u;
              memset(buf, 0, sizeof(buf));
              sub_262211250(buf, v649);
              sub_26220F644(v904, buf);
              v650 = *(v904[0] + 6);
              v852 = 0u;
              v853 = 0u;
              v850 = 0u;
              v851 = 0u;
              v848 = 0u;
              v849 = 0u;
              memset(v847, 0, sizeof(v847));
              sub_262211250(v847, v644);
              sub_26220F644(&v914, v847);
              v651 = v914;
                ;
              }

              v653 = v650 + (i5 / 1.57079633) * 1.57079633;
              *(v914 + 24) = v653;
              v654 = *(v651 + 8);
              v655 = *(v651 + 20);
              v656 = v904[0];
              v657 = *(v904[0] + 2) + (*(v904[0] + 5) * 0.5);
              v658 = (v654 - v657) < 0.03;
              v659 = v657 - (v654 + (v655 * 0.5));
              if (!v810)
              {
                v658 = v659 < v609;
              }

              v660 = v659 - v609;
              if (!v658)
              {
                v660 = 0.0;
              }

              *(v651 + 8) = v654 + (v660 * 0.5);
              *(v651 + 20) = v655 + v660;
              if (v794)
              {
                  ;
                }

                v804 = *v651;
                v799 = *(v651 + 16);
                v662 = (fmodf(i6, 6.2832) / 1.57079633);
                if (v662 >= 4)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x266727130](exception, "");
                  __cxa_throw(exception, &unk_2874EF270, MEMORY[0x277D82600]);
                }

                v663 = -1.57079633 - v653;
                v665 = __sincosf_stret(v663);
                v664.f32[0] = v665.__cosval;
                v666.i32[1] = v804.i32[1];
                v667 = 3;
                if ((v662 & 1) == 0)
                {
                  v667 = 4;
                }

                v666.f32[0] = v656[1];
                v668 = vdup_lane_s32(v804, 0);
                v668.f32[0] = *v656;
                v669 = vmla_n_f32(vmul_n_f32(v666, v665.__sinval), v668, v665.__cosval);
                v668.f32[0] = v656[v667];
                v668.f32[1] = v799;
                v670 = vadd_f32(v669, vmul_f32(v668, 0x3F0000003F000000));
                *v670.i32 = vsub_f32(v670, vdup_lane_s32(v670, 1)).f32[0];
                *(v651 + 16) = v799 + *v670.i32;
                v664.i32[1] = LODWORD(v665.__sinval);
                *v651 = vadd_f32(v804, vmul_f32(vmul_n_f32(v664, *v670.i32), 0x3F0000003F000000));
              }

              sub_26220FF88(v833, &v914);
              v850 = v837;
              v851 = v838;
              v852 = v839;
              v853 = v840;
              v847[0] = *v833;
              v847[1] = v834;
              v848 = v835;
              v849 = v836;
              v673 = objc_msgSend_boxesDict(v817, v671, v672);
              v676 = sub_2622113C0(v847, v674, v675);
              objc_msgSend_setValue_forKey_(v673, v677, v676, v639);

              if (v810)
              {
                v682 = __sincosf_stret(*(v904[0] + 6));
                *v681.i32 = v682.__cosval;
                *v680.i32 = v682.__sinval;
                v683 = 0;
                v684 = vdupq_lane_s32(*v681.i8, 0);
                *&v681.i32[1] = -v682.__sinval;
                v685 = vzip1q_s32(v681, 0);
                v686 = vzip1q_s32(v685, v680);
                v687 = vzip2q_s32(v685, v684);
                v686.i32[3] = v787;
                v688 = v687;
                v688.i32[3] = v790;
                v689 = xmmword_2623A7700;
                v689.i32[3] = v793;
                v800 = v689.i64[1];
                v806 = v686.i64[1];
                v690 = vzip1q_s32(v686, v689);
                v691 = vzip1q_s32(v688, 0);
                v692 = vzip2q_s32(v690, v691);
                v693.i64[0] = 0x80000000800000;
                v693.i64[1] = 0x80000000800000;
                v694 = vnegq_f32(v693);
                do
                {
                  v695 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__PAIR64__(LODWORD(v682.__sinval), LODWORD(v682.__cosval)), COERCE_FLOAT(*&buf[v683])), v687, *buf[v683].f32, 1), xmmword_2623A7700, buf[v683], 2);
                  buf[v683] = v695;
                  v694.i32[3] = 0;
                  v695.i32[3] = 0;
                  v694 = vminnmq_f32(v694, v695);
                  v693.i32[3] = 0;
                  v693 = vmaxnmq_f32(v693, v695);
                  ++v683;
                }

                while (v683 != 4);
                v696 = 0;
                v697 = vmvn_s8(vcgt_f32(vsub_f32(*v693.f32, *v694.f32), vdup_n_s32(0x3D75C28Fu)));
                v698 = v697.i8[0] | v697.i8[4];
                v699 = vzip1q_s32(v690, v691);
                v700.i64[1] = v800;
                v700.i64[0] = v806;
                v701 = vadd_f32(*v694.f32, vdup_n_s32(0x3CF5C28Fu));
                v702 = vadd_f32(*v693.f32, vdup_n_s32(0xBCF5C28F));
                if (v698)
                {
                  v703 = -1;
                }

                else
                {
                  v703 = 0;
                }

                v704 = vdup_n_s32(v703);
                v705 = vbsl_s8(v704, *v694.f32, v701);
                v706 = vbsl_s8(v704, *v693.f32, v702);
                do
                {
                  v707 = &v847[v696];
                  v708 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__PAIR64__(LODWORD(v682.__sinval), LODWORD(v682.__cosval)), COERCE_FLOAT(*&v847[v696])), v687, *v847[v696].f32, 1), xmmword_2623A7700, v847[v696], 2);
                  *v707 = v708;
                  v847[v696].i32[2] = v708.i32[2];
                  *v707->f32 = vminnm_f32(vmaxnm_f32(*v708.f32, v705), v706);
                  v709 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v699, COERCE_FLOAT(*&v847[v696])), v692, *v847[v696].f32, 1), v700, v847[v696], 2);
                  *v707 = v709;
                  v707[4].i64[0] = v709.i64[0];
                  ++v696;
                }

                while (v696 != 4);
                v710 = objc_msgSend_boxesDict(v817, v678, *&v679);
                v713 = sub_2622113C0(v847, v711, v712);
                objc_msgSend_setValue_forKey_(v710, v714, v713, v639);

                v787 = HIDWORD(v806);
                v793 = HIDWORD(v800);
              }

              if (v914)
              {
                *(&v914 + 1) = v914;
                operator delete(v914);
              }

              if (v904[0])
              {
                v904[1] = v904[0];
                operator delete(v904[0]);
              }
            }

            ++v638;
          }

          while (v638 != 2);
          for (i7 = 1; i7 != -1; --i7)
          {
          }
        }

LABEL_444:
        ++v779;
      }

      while (v779 != exception_objecta);
      v720 = objc_msgSend_countByEnumeratingWithState_objects_count_(v776, v716, &v828, v906, 16);
      exception_objecta = v720;
    }

    while (v720);
  }

  v721 = v776;
  memset(v847, 0, sizeof(v847));
  v848 = 0u;
  v849 = 0u;
  v316 = v721;
  v725 = objc_msgSend_countByEnumeratingWithState_objects_count_(v316, v722, v847, buf, 16);
  if (v725)
  {
    v726 = *v847[1].i64[0];
    do
    {
      for (i8 = 0; i8 != v725; ++i8)
      {
        if (*v847[1].i64[0] != v726)
        {
          objc_enumerationMutation(v316);
        }

        v728 = *(v847[0].i64[1] + 8 * i8);
        v729 = objc_msgSend_beautified_parts(v728, v723, v724);
        v732 = objc_msgSend_count(v729, v730, v731) == 0;

        if (v732)
        {
          v733 = objc_msgSend_parts(v728, v723, v724);
          v736 = objc_msgSend_copy(v733, v734, v735);
          sub_26223FCDC(v728, v736);
        }
      }

      v725 = objc_msgSend_countByEnumeratingWithState_objects_count_(v316, v723, v847, buf, 16);
    }

    while (v725);
  }

  buf[0].i64[0] = &v823;
  sub_2621EAAB0(buf);

LABEL_459:

  return v316;
}

void sub_2621E9BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2621EAB04(&STACK[0x690]);
  STACK[0x380] = &a65;
  sub_2621E35E4(&STACK[0x380]);

  *(v65 - 192) = &v72;
  sub_2621EAAB0((v65 - 192));

  _Unwind_Resume(v70);
}

void sub_2621E9BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v66)
  {
    operator delete(v66);
  }

  STACK[0x450] = &STACK[0x690];
  sub_2621E35E4(&STACK[0x450]);
  v68 = STACK[0x378];
  v69 = STACK[0x370];

  STACK[0x450] = &STACK[0x810];
  sub_2621E35E4(&STACK[0x450]);

  STACK[0x380] = &a65;
  sub_2621E35E4(&STACK[0x380]);

  STACK[0x380] = &a66;
  sub_2621E35E4(&STACK[0x380]);

  JUMPOUT(0x2621EAA48);
}

void sub_2621E9BE4()
{
  while (1)
  {
    if (*(v0 - 1) < 0)
    {
      operator delete(*(v0 - 3));
    }

    v0 -= 4;
    if (v0 == &STACK[0x450])
    {
      v3 = &v4;
      sub_2621E1CB0(&v3);

      JUMPOUT(0x2621EA518);
    }
  }
}

void sub_2621E9C30()
{
  v2 = &v3;
  sub_2621E1CB0(&v2);

  JUMPOUT(0x2621EA518);
}

void sub_2621E9C38()
{
  sub_2621E1CB0(&STACK[0x2B0]);
  v0 = &STACK[0x548];
  v1 = -264;
  while (1)
  {
    v2 = *(v0 - 1);
    if (v2)
    {
      *v0 = v2;
      operator delete(v2);
    }

    v0 -= 3;
    v1 += 24;
    if (!v1)
    {
      JUMPOUT(0x2621EA1ECLL);
    }
  }
}

void sub_2621E9C80()
{
  *(v0 - 192) = &v7;
  sub_2621EAAB0((v0 - 192));

  _Unwind_Resume(v5);
}

void sub_2621E9D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x770];
  if (STACK[0x770])
  {
    STACK[0x778] = v68;
    operator delete(v68);
  }

  sub_262211790(&STACK[0x380]);
  sub_2622371D0(&STACK[0x710]);
  sub_2621C74C4(&a66);
  JUMPOUT(0x2621EA5E8);
}

void sub_2621E9D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x770];
  if (STACK[0x770])
  {
    STACK[0x778] = v67;
    operator delete(v67);
  }

  sub_262211790(&STACK[0x380]);
  sub_2622371D0(&STACK[0x710]);
  JUMPOUT(0x2621EA5E0);
}

void sub_2621E9DA8()
{
  sub_2621E35E4(&STACK[0x890]);

  JUMPOUT(0x2621EA6D8);
}

void sub_2621E9DE4()
{
  *(v5 - 192) = &v12;
  sub_2621EAAB0((v5 - 192));

  _Unwind_Resume(v10);
}

void sub_2621E9E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (STACK[0x5D0])
  {
    operator delete(STACK[0x5D0]);
  }

  if (v66)
  {
    operator delete(v66);
  }

  STACK[0x450] = &STACK[0x690];
  sub_2621E35E4(&STACK[0x450]);
  v69 = STACK[0x378];
  v70 = STACK[0x370];

  STACK[0x450] = &STACK[0x810];
  sub_2621E35E4(&STACK[0x450]);

  STACK[0x380] = &a65;
  sub_2621E35E4(&STACK[0x380]);

  STACK[0x380] = &a66;
  sub_2621E35E4(&STACK[0x380]);

  *(v68 - 192) = &v77;
  sub_2621EAAB0((v68 - 192));

  _Unwind_Resume(v75);
}

void sub_2621E9E74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_2621E9E98()
{
  __cxa_end_catch();
  sub_2621C74C4(&STACK[0x5D0]);
  JUMPOUT(0x2621EA534);
}

void sub_2621E9EA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2621C5294(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2621E9EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = STACK[0x770];
  if (STACK[0x770])
  {
    STACK[0x778] = v65;
    operator delete(v65);
  }

  sub_262211790(&STACK[0x380]);
  sub_2622371D0(&STACK[0x710]);
  JUMPOUT(0x2621EA5E0);
}

void sub_2621E9F5C()
{
  sub_2623129C0(1, v0);
  sub_262312958(&STACK[0x890]);
  v1 = &STACK[0x598];
  v2 = -352;
  while (1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    v1 -= 4;
    v2 += 32;
    if (!v2)
    {
      JUMPOUT(0x2621EA1DCLL);
    }
  }
}

void sub_2621E9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x450] = &STACK[0x850];
  sub_2621E35E4(&STACK[0x450]);
  if (v66)
  {
    JUMPOUT(0x2621E9FD4);
  }

  if (v67)
  {
    operator delete(v67);
  }

  STACK[0x450] = &STACK[0x690];
  sub_2621E35E4(&STACK[0x450]);
  v69 = STACK[0x378];
  v70 = STACK[0x370];

  STACK[0x450] = &STACK[0x810];
  sub_2621E35E4(&STACK[0x450]);

  STACK[0x380] = &a65;
  sub_2621E35E4(&STACK[0x380]);

  STACK[0x380] = &a66;
  sub_2621E35E4(&STACK[0x380]);

  JUMPOUT(0x2621EAA48);
}

void sub_2621EA040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_262211790(&STACK[0x450]);

  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA07C()
{
  operator delete(v1);

  STACK[0x890] = &STACK[0x380];
  sub_2621E1CB0(&STACK[0x890]);
  JUMPOUT(0x2621EA3F4);
}

void sub_2621EA0EC()
{
  v0 = STACK[0x650];
  if (STACK[0x650])
  {
    STACK[0x658] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2621EA528);
}

void sub_2621EA104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_262211790(&STACK[0x380]);
  sub_2621C74C4(&a65);
  JUMPOUT(0x2621EA5E8);
}

void sub_2621EA154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, void *a47)
{
  *(v47 - 192) = &v54;
  sub_2621EAAB0((v47 - 192));

  _Unwind_Resume(v52);
}

void sub_2621EA228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA258()
{
  sub_26220AA28(&STACK[0x380]);
  STACK[0x5B8] = v0;
  JUMPOUT(0x2621EA268);
}

void sub_2621EA3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA490()
{
  operator delete(v0);
  sub_2621C74C4(&STACK[0x5D0]);
  JUMPOUT(0x2621EA534);
}

void sub_2621EA594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  *(v31 - 192) = &v38;
  sub_2621EAAB0((v31 - 192));

  _Unwind_Resume(v36);
}

void sub_2621EA5B0()
{
  *(v1 - 192) = &v8;
  sub_2621EAAB0((v1 - 192));

  _Unwind_Resume(v6);
}

void sub_2621EA644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  STACK[0x450] = &STACK[0x2B0];
  sub_2621E1D40(&STACK[0x450]);

  *(v53 - 192) = &v60;
  sub_2621EAAB0((v53 - 192));

  _Unwind_Resume(v58);
}

void sub_2621EA784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA78C()
{
  *(v1 - 192) = &v8;
  sub_2621EAAB0((v1 - 192));

  _Unwind_Resume(v6);
}

void sub_2621EA7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x8A0] = v68;
  STACK[0x898] = v64;
  STACK[0x890] = v63;

  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x8A0] = v67;
  STACK[0x898] = v64;
  STACK[0x890] = v63;

  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA828()
{
  STACK[0x8A0] = v2;
  STACK[0x898] = v1;
  STACK[0x890] = v0;
  JUMPOUT(0x2621EA860);
}

void sub_2621EA9FC()
{
  v1 = *(v0 - 192);
  if (v1)
  {
    *(v0 - 184) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x2621EAA34);
}

void sub_2621EAAB0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2621EAB94(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_2621EAB04(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  sub_2621EAAB0(&v4);
  return a1;
}

void **sub_2621EAB4C(void **a1)
{
  v3 = a1;
  sub_2621EAAB0(&v3);
  return a1;
}

void sub_2621EAB94(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 192)
  {

    v5 = *(i - 40);
    if (v5)
    {
      *(i - 32) = v5;
      operator delete(v5);
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_2621EAC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = a2;
  v5 = a1 + 160;
  do
  {
    v6 = v5 - 160;
    v7 = *(v5 - 160);
    v8 = *(v5 - 144);
    v9 = *(v5 - 112);
    *(a3 + 32) = *(v5 - 128);
    *(a3 + 48) = v9;
    *a3 = v7;
    *(a3 + 16) = v8;
    v10 = *(v5 - 96);
    v11 = *(v5 - 80);
    v12 = *(v5 - 48);
    *(a3 + 96) = *(v5 - 64);
    *(a3 + 112) = v12;
    *(a3 + 64) = v10;
    *(a3 + 80) = v11;
    objc_storeStrong((a3 + 128), *(v5 - 32));
    *(a3 + 136) = *(v5 - 24);
    objc_storeStrong((a3 + 144), *(v5 - 16));
    if (a3 != v5 - 160)
    {
      sub_2621CA9DC((a3 + 152), *(v5 - 8), *v5, (*v5 - *(v5 - 8)) >> 2);
    }

    objc_storeStrong((a3 + 176), *(v5 + 16));
    *(a3 + 184) = *(v5 + 24);
    a3 += 192;
    v5 += 192;
  }

  while (v6 + 192 != v4);
  return v4;
}

uint64_t sub_2621EACD8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];
      *(v4 + 32) = v6[2];
      *(v4 + 48) = v9;
      *v4 = v7;
      *(v4 + 16) = v8;
      v10 = v6[4];
      v11 = v6[5];
      v12 = v6[7];
      *(v4 + 96) = v6[6];
      *(v4 + 112) = v12;
      *(v4 + 64) = v10;
      *(v4 + 80) = v11;
      *(v4 + 128) = *(v6 + 16);
      *(v4 + 136) = *(v6 + 34);
      v13 = *(v6 + 18);
      *(v4 + 152) = 0;
      *(v4 + 144) = v13;
      *(v4 + 160) = 0;
      *(v4 + 168) = 0;
      sub_2621C8E70((v4 + 152), *(v6 + 19), *(v6 + 20), (*(v6 + 20) - *(v6 + 19)) >> 2);
      *(v4 + 176) = *(v6 + 22);
      *(v4 + 184) = *(v6 + 92);
      v6 += 12;
      v4 = v18 + 192;
      v18 += 192;
    }

    while (v6 != a3);
  }

  v16 = 1;
  sub_2621EAEDC(v15);
  return v4;
}

void sub_2621EADF4(uint64_t *a1)
{
  if (*a1)
  {
    sub_2621EAB94(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2621EAE34(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    sub_2621EAE84(a2);
  }

  sub_2621CBEB0();
}

void sub_2621EAE84(unint64_t a1)
{
  if (a1 < 0x155555555555556)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_2621EAEDC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 192)
    {

      v6 = *(v4 - 40);
      if (v6)
      {
        *(v4 - 32) = v6;
        operator delete(v6);
      }
    }
  }

  return a1;
}

void sub_2621EB3AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2621EB460(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v13 = 0;
    v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4);
    isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v6, v7, v5, &v13);

    if (!isDirectory || (v13 & 1) == 0)
    {
      v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10);
      objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v11, v12, v5, 1, 0, 0);
    }
  }
}

void sub_2621EB520(uint64_t a1, void *a2, uint64_t a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a1)
  {
    if (*(a1 + 177) == 1)
    {
      if (!a3 || *(a1 + 96) != 0.0 && (!*(a1 + 80) || (objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timeIntervalSinceDate_(v8, v9, *(a1 + 80)), v11 = v10, v12 = 1.0 / *(a1 + 96), v8, v11 >= v12)))
      {
        v13 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
        v14 = *(a1 + 80);
        *(a1 + 80) = v13;

        v16 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 24), v15, @"Live");
        v17 = *(a1 + 16);
        v20 = objc_msgSend_copy(v7, v18, v19);
        v21 = *(a1 + 88);
        dispatch_group_enter(v17);
        v22 = *(a1 + 8);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2621EBA28;
        block[3] = &unk_279B30520;
        v66 = v20;
        v68 = v66;
        v23 = v21;
        v69 = v23;
        v24 = v16;
        v70 = v24;
        v71 = a1;
        v25 = v17;
        v72 = v25;
        dispatch_async(v22, block);
        v28 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v26, v27);
        v30 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, a3);
        objc_msgSend_setObject_forKeyedSubscript_(v28, v31, v30, @"skipped");

        v34 = *(a1 + 104);
        if (v34)
        {
          v35 = MEMORY[0x277CCABB0];
          objc_msgSend_timestamp(v34, v32, v33);
          v38 = objc_msgSend_numberWithDouble_(v35, v36, v37);
          objc_msgSend_setObject_forKeyedSubscript_(v28, v39, v38, @"timestamp");

          v40 = MEMORY[0x277CCABB0];
          objc_msgSend_timestamp(*(a1 + 104), v41, v42);
          v46 = objc_msgSend_numberWithDouble_(v40, v44, v45, v43 - *(a1 + 72));
          objc_msgSend_setObject_forKeyedSubscript_(v28, v47, v46, @"video_timestamp");
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v28, v32, &unk_2874FAB68, @"timestamp");
          objc_msgSend_setObject_forKeyedSubscript_(v28, v49, &unk_2874FAB68, @"video_timestamp");
        }

        objc_msgSend_addObject_(*(a1 + 32), v48, v28);
        if (*(a1 + 177) == 1 && ((*(a1 + 178) & 1) != 0 || *(a1 + 179) == 1))
        {
          v51 = *(a1 + 24);
          if (v51 && *(a1 + 104))
          {
            v63 = objc_msgSend_stringByAppendingPathComponent_(v51, v50, @"Live");
            v52 = *(a1 + 72);
            v64 = *(a1 + 104);
            v53 = *(a1 + 128);
            v85 = *(a1 + 112);
            v86 = v53;
            v54 = *(a1 + 160);
            v87 = *(a1 + 144);
            v88 = v54;
            v62 = objc_msgSend_count(*(a1 + 32), v55, v56);
            v61 = *(a1 + 178);
            v57 = *(a1 + 16);
            dispatch_group_enter(v57);
            queue = *(a1 + 8);
            v73[0] = MEMORY[0x277D85DD0];
            v73[1] = 3221225472;
            v73[2] = sub_2621EC0A4;
            v73[3] = &unk_279B30548;
            v78 = v63;
            v79 = v64;
            v81 = v57;
            v82 = v62;
            v83 = v52;
            v74 = v85;
            v75 = v86;
            v76 = v87;
            v77 = v88;
            v84 = v61;
            v80 = a1;
            v58 = v57;
            v59 = v64;
            v60 = v63;
            dispatch_async(queue, v73);
          }
        }
      }
    }
  }
}

void sub_2621EBA28(uint64_t a1, const char *a2, uint64_t a3)
{
  v111 = *MEMORY[0x277D85DE8];
  v93 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  obj = *(a1 + 32);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v103, v110, 16);
  if (v6)
  {
    v94 = *v104;
    do
    {
      v7 = 0;
      do
      {
        if (*v104 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v103 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v10 = objc_msgSend_identifier(v8, v4, v5);
        v12 = objc_msgSend_objectForKeyedSubscript_(v9, v11, v10);

        if (v12)
        {
          objc_copyStruct(dest, (v12 + 96), 480, 1, 0);
        }

        else
        {
          memset(dest, 0, sizeof(dest));
        }

        v13 = v8;
        v16 = 0;
        v17 = 0;
        v20 = (objc_msgSend_count(v13, v14, v15) + 29) / 0x1EuLL;
        v21 = 1;
        while (v17 < objc_msgSend_count(v13, v18, v19))
        {
          v24 = *(objc_msgSend_points(v13, v22, v23) + 16 * v17);
          *&__src[v16 * 16] = v24;
          v25 = vabdq_f32(dest[v16], v24);
          v21 &= fmaxf(fmaxf(v25.f32[0], v25.f32[2]), v25.f32[1]) <= 0.000001;
          v17 += v20;
          ++v16;
        }

        if (!v12)
        {
          goto LABEL_19;
        }

        v28 = *(v12 + 16);
        if (v28 != objc_msgSend_count(v13, v26, v27))
        {
          goto LABEL_19;
        }

        objc_msgSend_cameraPose(v13, v29, v30);
        dest[0] = v31;
        dest[1] = v32;
        dest[2] = v33;
        dest[3] = v34;
        v35 = *(v12 + 48);
        v36 = *(v12 + 64);
        v37 = *(v12 + 80);
        v100[0] = *(v12 + 32);
        v100[1] = v35;
        v100[2] = v36;
        v100[3] = v37;
        if (vmaxvq_f32(vabdq_f32(v31, v100[0])) > 0.001)
        {
          goto LABEL_19;
        }

        v38 = 1;
        while (v38 != 4)
        {
          v39 = v38;
          v40 = vmaxvq_f32(vabdq_f32(dest[v38], v100[v38]));
          ++v38;
          if (v40 > 0.001)
          {
            if ((v39 - 1) < 3)
            {
              goto LABEL_19;
            }

            break;
          }
        }

        if ((v21 & 1) == 0)
        {
LABEL_19:
          v41 = objc_alloc_init(RSKeyframeMetaExtend);
          v44 = objc_msgSend_count(v13, v42, v43);
          if (v41)
          {
            v41->super._size = v44;
          }

          v47 = objc_msgSend_identifier(v13, v45, v46);
          sub_2622AD434(v41, v47);

          objc_msgSend_cameraPose(v13, v48, v49);
          if (v41)
          {
            *v41->_anon_20 = v52;
            *&v41->_anon_20[16] = v53;
            *&v41->_anon_20[32] = v54;
            *&v41->_anon_20[48] = v55;
          }

          objc_msgSend_timestamp(v13, v50, v51);
          if (v41)
          {
            v41->super._timestamp = v58;
            memcpy(dest, __src, sizeof(dest));
            objc_copyStruct(&v41[1], dest, 480, 1, 0);
          }

          v59 = *(a1 + 40);
          v60 = objc_msgSend_identifier(v13, v56, v57);
          objc_msgSend_setObject_forKeyedSubscript_(v59, v61, v41, v60);

          objc_msgSend_addObject_(v93, v62, v13);
        }

        ++v7;
      }

      while (v7 != v6);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v103, v110, 16);
      v6 = v63;
    }

    while (v63);
  }

  v64 = objc_alloc_init(MEMORY[0x277CCA968]);
  objc_msgSend_setDateFormat_(v64, v65, @"MM_dd_yyyy_HH_mm_ss_SSS");
  v66 = MEMORY[0x277CCACA8];
  v67 = *(a1 + 48);
  v70 = objc_msgSend_date(MEMORY[0x277CBEAA8], v68, v69);
  v72 = objc_msgSend_stringFromDate_(v64, v71, v70);
  v74 = objc_msgSend_stringWithFormat_(v66, v73, @"%@/%@_fp_input.plist", v67, v72);

  v77 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v75, v76);
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v78 = v93;
  v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v79, &v96, v109, 16);
  if (v82)
  {
    v83 = *v97;
    do
    {
      for (i = 0; i != v82; ++i)
      {
        if (*v97 != v83)
        {
          objc_enumerationMutation(v78);
        }

        v85 = *(*(&v96 + 1) + 8 * i);
        v86 = objc_msgSend_identifier(v85, v80, v81);
        objc_msgSend_setObject_forKeyedSubscript_(v77, v87, v85, v86);
      }

      v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v80, &v96, v109, 16);
    }

    while (v82);
  }

  v107 = @"keyframes";
  v88 = RSKeyframeSequenceToDictionary(v77);
  v108 = v88;
  v90 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v89, &v108, &v107, 1);

  sub_2621EB460(*(a1 + 56), *(a1 + 48));
  objc_msgSend_writeToFile_atomically_(v90, v91, v74, 0);
  dispatch_group_leave(*(a1 + 64));
}

void sub_2621EC0A4(uint64_t a1)
{
  texture[1] = *MEMORY[0x277D85DE8];
  v88 = objc_alloc_init(MEMORY[0x277CCA968]);
  objc_msgSend_setDateFormat_(v88, v2, @"MM_dd_yyyy_HH_mm_ss_SSS");
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 96);
  v7 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
  v9 = objc_msgSend_stringFromDate_(v88, v8, v7);
  v11 = objc_msgSend_stringWithFormat_(v3, v10, @"%@/%@_Image.plist", v4, v9);

  v12 = sub_2621EC7FC(RSInternalInfoDumper, *(a1 + 104));
  v14 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v13, *(a1 + 128));
  objc_msgSend_setObject_forKeyedSubscript_(v12, v15, v14, @"keyframe_index");

  v16 = MEMORY[0x277CCABB0];
  objc_msgSend_timestamp(*(a1 + 104), v17, v18);
  v22 = objc_msgSend_numberWithDouble_(v16, v20, v21, v19 - *(a1 + 136));
  objc_msgSend_setObject_forKeyedSubscript_(v12, v23, v22, @"video_timestamp");

  v25 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v24, a1 + 32, 64);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v26, v25, @"cameraPose");

  v29 = objc_msgSend_depthBuffer(*(a1 + 104), v27, v28);
  Width = CVPixelBufferGetWidth(v29);
  Height = CVPixelBufferGetHeight(v29);
  if (Height * Width)
  {
    v34 = v29 == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;
  if (*(a1 + 144))
  {
    v36 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v31, v32);
    v39 = v36;
    if (v35)
    {
      v40 = objc_msgSend_colorBuffer(*(a1 + 104), v37, v38);
      v41 = MEMORY[0x277CCABB0];
      v42 = CVPixelBufferGetWidth(v40);
      v44 = objc_msgSend_numberWithUnsignedLong_(v41, v43, v42);
      objc_msgSend_setObject_forKeyedSubscript_(v39, v45, v44, @"width");

      v46 = MEMORY[0x277CCABB0];
      v47 = CVPixelBufferGetHeight(v40);
      v49 = objc_msgSend_numberWithUnsignedLong_(v46, v48, v47);
      objc_msgSend_setObject_forKeyedSubscript_(v39, v50, v49, @"height");

      if (!*(a1 + 112) || (pixelTransferSessionOut.data = 0, pixelBufferOut.data = 0, VTPixelTransferSessionCreate(0, &pixelTransferSessionOut)) || (v91 = *MEMORY[0x277CC4DE8], texture[0] = MEMORY[0x277CBEC10], v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, texture, &v91, 1), CVPixelBufferCreate(0, Width, Height, 0x20u, v52, &pixelBufferOut)) || !pixelBufferOut.data)
      {
        v53 = 0;
      }

      else
      {
        VTPixelTransferSessionTransferImage(pixelTransferSessionOut.data, v40, pixelBufferOut.data);
        VTPixelTransferSessionInvalidate(pixelTransferSessionOut.data);
        CFRelease(pixelTransferSessionOut.data);
        v53 = sub_2621ECB1C(pixelBufferOut.data, v86, v87);
        CVPixelBufferRelease(pixelBufferOut.data);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v39, v51, v53, @"data");

      objc_msgSend_setObject_forKeyedSubscript_(v39, v54, @"PNG", @"type");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v36, v37, &unk_2874FAB78, @"width");
      objc_msgSend_setObject_forKeyedSubscript_(v39, v56, &unk_2874FAB78, @"height");
      v57 = objc_alloc_init(MEMORY[0x277CBEA90]);
      objc_msgSend_setObject_forKeyedSubscript_(v39, v58, v57, @"data");

      objc_msgSend_setObject_forKeyedSubscript_(v39, v59, @"PNG", @"type");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v12, v55, v39, @"image");
  }

  if (*(a1 + 145) == 1)
  {
    v60 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v31, v32);
    v63 = v60;
    if (!v35)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v60, v61, &unk_2874FAB78, @"width");
      objc_msgSend_setObject_forKeyedSubscript_(v63, v78, &unk_2874FAB78, @"height");
      v79 = objc_alloc_init(MEMORY[0x277CBEA90]);
      objc_msgSend_setObject_forKeyedSubscript_(v63, v80, v79, @"data");

      objc_msgSend_setObject_forKeyedSubscript_(v63, v81, @"PNG", @"type");
LABEL_25:
      objc_msgSend_setObject_forKeyedSubscript_(v12, v82, v63, @"depth");

      goto LABEL_26;
    }

    v64 = objc_msgSend_depthBuffer(*(a1 + 104), v61, v62);
    v66 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v65, Width);
    objc_msgSend_setObject_forKeyedSubscript_(v63, v67, v66, @"width");

    v69 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v68, Height);
    objc_msgSend_setObject_forKeyedSubscript_(v63, v70, v69, @"height");

    if (*(a1 + 112))
    {
      CVPixelBufferLockBaseAddress(v64, 1uLL);
      v72 = CVPixelBufferGetWidth(v64);
      v73 = CVPixelBufferGetHeight(v64);
      pixelTransferSessionOut.width = CVPixelBufferGetWidth(v64);
      pixelTransferSessionOut.height = CVPixelBufferGetHeight(v64);
      pixelTransferSessionOut.rowBytes = CVPixelBufferGetBytesPerRow(v64);
      BaseAddress = CVPixelBufferGetBaseAddress(v64);
      pixelBufferOut.height = v73;
      pixelBufferOut.width = v72;
      pixelBufferOut.rowBytes = 32 * v72;
      pixelTransferSessionOut.data = BaseAddress;
      pixelBufferOut.data = malloc_type_malloc(32 * v72 * v73, 0x1000040E0EAB150uLL);
      vImageConvert_FTo16U(&pixelTransferSessionOut, &pixelBufferOut, 0.0, 0.001, 0);
      CVPixelBufferUnlockBaseAddress(v64, 1uLL);
      texture[0] = 0;
      if (!CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], v72, v73, 0x62313667u, pixelBufferOut.data, pixelBufferOut.rowBytes, 0, 0, 0, texture))
      {
        v77 = sub_2621ECB1C(texture[0], v75, v76);
        free(pixelBufferOut.data);
        CVPixelBufferRelease(texture[0]);
        objc_msgSend_setObject_forKeyedSubscript_(v63, v83, v77, @"data");
        goto LABEL_24;
      }

      free(pixelBufferOut.data);
    }

    v77 = 0;
    objc_msgSend_setObject_forKeyedSubscript_(v63, v71, 0, @"data");
LABEL_24:

    objc_msgSend_setObject_forKeyedSubscript_(v63, v84, @"PNG", @"type");
    goto LABEL_25;
  }

LABEL_26:
  sub_2621EB460(*(a1 + 112), *(a1 + 96));
  objc_msgSend_writeToFile_atomically_(v12, v85, v11, 0);
  dispatch_group_leave(*(a1 + 120));
}

id sub_2621EC7FC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v3, v4);
  v6 = MEMORY[0x277CCABB0];
  objc_msgSend_timestamp(v2, v7, v8);
  v11 = objc_msgSend_numberWithDouble_(v6, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v12, v11, @"timestamp");

  v13 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_vioTrackingState(v2, v14, v15);
  v18 = objc_msgSend_numberWithInteger_(v13, v17, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v19, v18, @"vioTrackingState");

  v22 = objc_msgSend_camera(v2, v20, v21);
  objc_msgSend_transform(v22, v23, v24);
  v79 = v25;
  v80 = v26;
  v81 = v27;
  v82 = v28;

  v30 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v29, &v79, 64);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v31, v30, @"cameraTransform");

  v34 = objc_msgSend_camera(v2, v32, v33, 0, 0, 0, 0, 0, 0, v79, v80, v81, v82);
  objc_msgSend_intrinsics(v34, v35, v36);
  DWORD2(v76) = v37;
  DWORD2(v77) = v38;
  *&v76 = v39;
  *&v77 = v40;
  DWORD2(v78) = v41;
  *&v78 = v42;

  v44 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v43, &v76, 48);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v45, v44, @"intrinsics", v76, v77, v78);

  v46 = MEMORY[0x277CCABB0];
  v49 = objc_msgSend_camera(v2, v47, v48);
  v52 = objc_msgSend_trackingState(v49, v50, v51);
  v54 = objc_msgSend_numberWithInteger_(v46, v53, v52);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v55, v54, @"cameraTrackingState");

  v58 = objc_msgSend_rawFeaturePoints(v2, v56, v57);
  v61 = objc_msgSend_count(v58, v59, v60);

  v63 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v62, v61);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v64, v63, @"rawFeaturePointsCount");

  v65 = MEMORY[0x277CBEA90];
  v68 = objc_msgSend_rawFeaturePoints(v2, v66, v67);
  v71 = objc_msgSend_points(v68, v69, v70);
  v73 = objc_msgSend_dataWithBytes_length_(v65, v72, v71, 16 * v61);

  objc_msgSend_setObject_forKeyedSubscript_(v5, v74, v73, @"rawFeaturePoints");

  return v5;
}

void sub_2621ECAA0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFData *sub_2621ECB1C(__CVBuffer *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_data(MEMORY[0x277CBEB28], a2, a3);
  v5 = CGImageDestinationCreateWithData(v4, @"public.png", 1uLL, 0);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 1647392359)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v12 = CGBitmapContextCreate(BaseAddress, Width, Height, 0x10uLL, BytesPerRow, DeviceGray, 0x1000u);
    CGColorSpaceRelease(DeviceGray);
  }

  else if (PixelFormatType == 32)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v11 = CVPixelBufferGetBytesPerRow(a1);
    v12 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, v11, DeviceRGB, 6u);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v12 = 0;
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  if (v12)
  {
    Image = CGBitmapContextCreateImage(v12);
  }

  else
  {
    Image = 0;
  }

  CGContextRelease(v12);
  if (v5 && Image)
  {
    CGImageDestinationAddImage(v5, Image, 0);
    CGImageDestinationFinalize(v5);
  }

  else if (!v5)
  {
    goto LABEL_14;
  }

  CFRelease(v5);
LABEL_14:
  CGImageRelease(Image);

  return v4;
}

void sub_2621ECCF8(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = v3;
  if (a1 && *(a1 + 177) == 1)
  {
    v7 = *(a1 + 40);
    v12 = @"final";
    v8 = objc_msgSend_dictionaryRepresentation(v3, v4, v5);
    v13[0] = v8;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v13, &v12, 1);
    objc_msgSend_addObject_(v7, v11, v10);
  }
}

void sub_2621ECDF8(uint64_t a1)
{
  v28 = objc_alloc_init(MEMORY[0x277CCA968]);
  objc_msgSend_setDateFormat_(v28, v2, @"MM_dd_yyyy_HH_mm_ss_SSS");
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 96);
  v7 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
  v9 = objc_msgSend_stringFromDate_(v28, v8, v7);
  v11 = objc_msgSend_stringWithFormat_(v3, v10, @"%@/%@_ARFrame.plist", v4, v9);

  v12 = sub_2621EC7FC(RSInternalInfoDumper, *(a1 + 104));
  v14 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v13, *(a1 + 128));
  objc_msgSend_setObject_forKeyedSubscript_(v12, v15, v14, @"keyframesCount");

  v16 = MEMORY[0x277CCABB0];
  objc_msgSend_timestamp(*(a1 + 104), v17, v18);
  v22 = objc_msgSend_numberWithDouble_(v16, v20, v21, v19 - *(a1 + 136));
  objc_msgSend_setObject_forKeyedSubscript_(v12, v23, v22, @"video_timestamp");

  v25 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v24, a1 + 32, 64);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v26, v25, @"cameraPose");

  sub_2621EB460(*(a1 + 112), *(a1 + 96));
  objc_msgSend_writeToFile_atomically_(v12, v27, v11, 0);
  dispatch_group_leave(*(a1 + 120));
}

void sub_2621ECFF8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v4 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 40), a2, @"fp_debug_log.plist");
  objc_msgSend_writeToFile_atomically_(v2, v3, v4, 1);
}

void sub_2621ED930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a33 == 1)
  {
    sub_2621C50C4(&a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621EE2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_26224C4F4(&a27);
  sub_26224C4F4(&a67);
  sub_2622C94CC(&a51);
  a27 = &a65;
  sub_2621DED18(&a27);
  a27 = &a66;
  sub_2621DED18(&a27);

  _Unwind_Resume(a1);
}

id sub_2621EEA88(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    a1 = sub_2621EEBA0(a1, v5, v6);
  }

  return a1;
}

void *sub_2621EEB10(void *a1, const char *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = a1[22];
    v4 = @"floorPlanDebug";
    v5[0] = v2;
    a1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, &v4, 1);
  }

  return a1;
}

RSFloorPlan *sub_2621EEBA0(uint64_t a1, void *a2, void *a3)
{
  v1160 = *MEMORY[0x277D85DE8];
  v1022 = a2;
  v1024 = a3;
  v1075 = 14205;
  v1076 = 0;
  kdebug_trace();
  v1029 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
  if (*(a1 + 184) == 1)
  {
    objc_msgSend_addObject_(*(a1 + 176), v7, v1029);
  }

  std::chrono::steady_clock::now();
  v1018.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  kdebug_trace();
  v8 = *(a1 + 64);
  v1030 = v1022;
  if (!v8)
  {
    goto LABEL_205;
  }

  objc_msgSend_removeAllObjects(*(v8 + 40), v9, v10);
  objc_msgSend_removeAllObjects(*(v8 + 48), v11, v12);
  v1067 = v8;
  v1036 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
  v1123 = 0u;
  v1124 = 0u;
  v1121 = 0u;
  v1122 = 0u;
  v17 = objc_msgSend_allValues(v1030, v15, v16);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v1121, v1151, 16);
  if (v21)
  {
    v22 = *v1122;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v1122 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v1121 + 1) + 8 * i);
        v25 = objc_msgSend_identifier(v24, v19, v20);
        if (v25)
        {
          v26 = objc_msgSend_count(v24, v19, v20) == 0;

          if (!v26)
          {
            v27 = objc_msgSend_identifier(v24, v19, v20);
            objc_msgSend_setObject_forKey_(v1036, v28, v24, v27);
          }
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v1121, v1151, 16);
    }

    while (v21);
  }

  __p = v1036;
  v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30);
  memset(v1128, 0, sizeof(v1128));
  v34 = objc_msgSend_allValues(__p, v32, v33);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, v1128, buf, 16);
  if (v38)
  {
    v39 = **&v1128[1];
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (**&v1128[1] != v39)
        {
          objc_enumerationMutation(v34);
        }

        v41 = *(*(&v1128[0] + 1) + 8 * j);
        if (objc_msgSend_count(v41, v36, v37) >= 10)
        {
          v42 = objc_alloc_init(RSKeyframeMeta);
          v45 = objc_msgSend_identifier(v41, v43, v44);
          sub_2622AD434(v42, v45);

          objc_msgSend_cameraPose(v41, v46, v47);
          if (v42)
          {
            *&v42[1].super.isa = v50;
            *&v42[1]._size = v51;
            *&v42[2].super.isa = v52;
            *&v42[2]._size = v53;
          }

          v54 = objc_msgSend_count(v41, v48, v49);
          if (v42)
          {
            v42->_size = v54;
          }

          objc_msgSend_timestamp(v41, v55, v56);
          if (v42)
          {
            v42->_timestamp = v58;
          }

          objc_msgSend_addObject_(v31, v57, v42);
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, v1128, buf, 16);
    }

    while (v38);
  }

  v59 = v31;
  v61 = objc_msgSend_sortedArrayUsingComparator_(v59, v60, &unk_2874EEF10);

  v1101 = 0uLL;
  *&v1102 = 0;
  v1117 = 0u;
  v1118 = 0u;
  v1119 = 0u;
  v1120 = 0u;
  obj = v61;
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v1117, buf, 16);
  if (v63)
  {
    v1052 = *v1118;
    do
    {
      v1059 = v63;
      for (k = 0; k != v1059; ++k)
      {
        if (*v1118 != v1052)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v1117 + 1) + 8 * k);
        if (v65)
        {
          v66 = *(v65 + 8);
        }

        else
        {
          v66 = 0;
        }

        v67 = *(v1067 + 32);
        v68 = v66;
        v70 = objc_msgSend_objectForKeyedSubscript_(v67, v69, v68);
        LODWORD(v67) = v70 == 0;

        if (v67)
        {
          v73 = *(v1067 + 56);
          v74 = MEMORY[0x277CCABB0];
          v75 = objc_msgSend_count(v73, v71, v72);
          v77 = objc_msgSend_numberWithInt_(v74, v76, v75);
          if (v65)
          {
            v78 = *(v65 + 8);
          }

          else
          {
            v78 = 0;
          }

          v79 = v78;
          objc_msgSend_setObject_forKey_(v73, v80, v77, v79);

          if (v65)
          {
            v81 = *(v65 + 8);
          }

          else
          {
            v81 = 0;
          }

          v82 = *(v1067 + 40);
          v83 = v81;
          v85 = objc_msgSend_objectForKeyedSubscript_(__p, v84, v83);
          objc_msgSend_addObject_(v82, v86, v85);

          if (v65)
          {
            v87 = *(v65 + 8);
            v88 = *(v65 + 8);
          }

          else
          {
            v87 = 0;
            v88 = 0;
          }

          v89 = *(v1067 + 56);
          v90 = v88;
          v92 = objc_msgSend_objectForKeyedSubscript_(v89, v91, v90);
          v95 = objc_msgSend_intValue(v92, v93, v94);
          *&v1128[0] = v87;
          DWORD2(v1128[0]) = v95;
          sub_262361A44(&v1101, v1128);
        }

        if (v65)
        {
          v96 = *(v65 + 8);
        }

        else
        {
          v96 = 0;
        }

        v97 = *(v1067 + 32);
        v98 = v96;
        v100 = objc_msgSend_objectForKeyedSubscript_(v97, v99, v98);
        if (!v100)
        {
          goto LABEL_59;
        }

        if (v65)
        {
          v101 = *(v65 + 8);
          v102 = *(v65 + 16);
        }

        else
        {
          v102 = 0;
          v101 = 0;
        }

        v103 = *(v1067 + 32);
        v104 = v101;
        v106 = objc_msgSend_objectForKeyedSubscript_(v103, v105, v104);
        v107 = v106;
        if (v106)
        {
          v108 = v106[2];
        }

        else
        {
          v108 = 0;
        }

        if (v102 != v108)
        {

          goto LABEL_59;
        }

        if (v65)
        {
          v109 = *(v65 + 48);
          v110 = *(v65 + 64);
          v111 = *(v65 + 80);
          *v1046 = *(v65 + 32);
          v1128[0] = *v1046;
          v1128[1] = v109;
          v1128[2] = v110;
          v1128[3] = v111;
          v112 = *(v65 + 8);
        }

        else
        {
          v112 = 0;
          *v1046 = 0u;
          memset(v1128, 0, sizeof(v1128));
        }

        v113 = *(v1067 + 32);
        v114 = v112;
        v116 = objc_msgSend_objectForKeyedSubscript_(v113, v115, v114);
        if (v116)
        {
          v117 = v116[2];
          v118 = v116[3];
          v119 = v116[4];
          v120 = v116[5];
        }

        else
        {
          v119 = 0uLL;
          v118 = 0uLL;
          v117 = 0uLL;
          v120 = 0uLL;
        }

        v1156 = v117;
        v1157 = v118;
        v1158 = v119;
        v1159 = v120;
        if (vmaxvq_f32(vabdq_f32(*v1046, v117)) > 0.001)
        {

LABEL_59:
LABEL_60:
          if (v65)
          {
            v121 = *(v65 + 8);
          }

          else
          {
            v121 = 0;
          }

          v122 = *(v1067 + 48);
          v123 = v121;
          v125 = objc_msgSend_objectForKeyedSubscript_(__p, v124, v123);
          objc_msgSend_addObject_(v122, v126, v125);

          continue;
        }

        v128 = 1;
        while (v128 != 4)
        {
          v129 = vmaxvq_f32(vabdq_f32(v1128[v128], *(&v1156 + v128)));
          ++v128;
          if (v129 > 0.001)
          {
            v130 = v128 - 2;
            goto LABEL_70;
          }
        }

        v130 = 3;
LABEL_70:
        v131 = v130 < 3;

        if (v131)
        {
          goto LABEL_60;
        }
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v127, &v1117, buf, 16);
    }

    while (v63);
  }

  v132 = 126 - 2 * __clz((*(&v1101 + 1) - v1101) >> 4);
  if (*(&v1101 + 1) == v1101)
  {
    v133 = 0;
  }

  else
  {
    v133 = v132;
  }

  sub_262361BB8(v1101, *(&v1101 + 1), v133, 1);
  if (*(&v1101 + 1) == v1101)
  {
    if (*(v1067 + 24) < 4uLL || !objc_msgSend_count(*(v1067 + 48), v134, v135))
    {
      v289 = *(v1067 + 16);
      if (v289)
      {
        *(v289 + 104) = 0;
      }

      ++*(v1067 + 24);
      goto LABEL_204;
    }

    v265 = objc_msgSend_lastObject(*(v1067 + 48), v263, v264);
    v266 = *(v1067 + 40);
    v269 = objc_msgSend_identifier(v265, v267, v268);
    v271 = objc_msgSend_objectForKeyedSubscript_(__p, v270, v269);
    objc_msgSend_addObject_(v266, v272, v271);

    v275 = objc_msgSend_identifier(v265, v273, v274);
    v276 = *(v1067 + 56);
    v279 = objc_msgSend_identifier(v265, v277, v278);
    v281 = objc_msgSend_objectForKeyedSubscript_(v276, v280, v279);
    v284 = objc_msgSend_intValue(v281, v282, v283);
    *&v1128[0] = v275;
    DWORD2(v1128[0]) = v284;
    sub_262361A44(&v1101, v1128);
  }

  v136 = *(v1067 + 16);
  if (v136)
  {
    *(v136 + 104) = 1;
    v136 = *(v1067 + 16);
    if (v136)
    {
      v136 = *(v136 + 112);
    }
  }

  v137 = v136;
  objc_msgSend_removeAllObjects(v137, v138, v139);

  v140 = *(v1067 + 16);
  if (v140)
  {
    *(v140 + 88) = *(v140 + 80);
  }

  v1115 = 0u;
  v1116 = 0u;
  v1113 = 0u;
  v1114 = 0u;
  v141 = obj;
  v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v141, v142, &v1113, v1128, 16);
  if (v143)
  {
    v144 = *v1114;
    do
    {
      v145 = 0;
      do
      {
        if (*v1114 != v144)
        {
          objc_enumerationMutation(v141);
        }

        v146 = *(*(&v1113 + 1) + 8 * v145);
        if (v146)
        {
          v147 = *(v146 + 8);
        }

        else
        {
          v147 = 0;
        }

        v148 = *(v1067 + 32);
        v149 = v147;
        objc_msgSend_setObject_forKey_(v148, v150, v146, v149);

        ++v145;
      }

      while (v143 != v145);
      v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v141, v151, &v1113, v1128, 16);
      v143 = v152;
    }

    while (v152);
  }

  v1053 = objc_msgSend_array(MEMORY[0x277CBEB18], v153, v154);
  v1111 = 0u;
  v1112 = 0u;
  v1109 = 0u;
  v1110 = 0u;
  v1047 = *(v1067 + 48);
  v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1047, v155, &v1109, &v1156, 16);
  if (v156)
  {
    v157 = *v1110;
    do
    {
      for (m = 0; m != v156; ++m)
      {
        if (*v1110 != v157)
        {
          objc_enumerationMutation(v1047);
        }

        v159 = *(*(&v1109 + 1) + 8 * m);
        v160 = [RSKeyframeExtended alloc];
        v162 = objc_msgSend_initWithKeyframe_(v160, v161, v159);
        objc_msgSend_processWithVoxelize_asPythonApproach_resample_outlierRemove_(v162, v163, 1, 1, 1, 1);
        objc_msgSend_addObject_(v1053, v164, v162);
      }

      v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1047, v165, &v1109, &v1156, 16);
    }

    while (v156);
  }

  v166 = v1053;
  v1048 = objc_msgSend_sortedArrayUsingComparator_(v166, v167, &unk_2874EEF30);
  v1026 = v166;

  objc_msgSend_accumulateWithKeyframesInWorld_voxelize_(*(v1067 + 8), v168, v1048, 1);
  v1107 = 0u;
  v1108 = 0u;
  v1105 = 0u;
  v1106 = 0u;
  v171 = objc_msgSend_allValues(*(v1067 + 32), v169, v170);
  v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v171, v172, &v1105, &v1154, 16);
  if (v173)
  {
    v174 = *v1106;
    do
    {
      v175 = 0;
      do
      {
        if (*v1106 != v174)
        {
          objc_enumerationMutation(v171);
        }

        v176 = *(*(&v1105 + 1) + 8 * v175);
        if (v176)
        {
          v177 = *(v176 + 8);
        }

        else
        {
          v177 = 0;
        }

        v178 = v177;
        v181 = objc_msgSend_UUIDString(v178, v179, v180);

        objc_msgSend_mappingIntervalOfKeyframe_(*(v1067 + 8), v182, v181);
        v1060 = v183;
        v184 = objc_alloc_init(RSSubPointsLUT);
        v185 = v184;
        if (v184)
        {
          v184->_size = HIDWORD(v1060);
          v184->_begin = v1060;
          v184->_end = HIDWORD(v1060) + v1060;
        }

        if (v176)
        {
          v186 = *(v176 + 16);
          if (!v184)
          {
            goto LABEL_122;
          }

LABEL_121:
          v184->_rawSize = v186;
          goto LABEL_122;
        }

        v186 = 0;
        if (v184)
        {
          goto LABEL_121;
        }

LABEL_122:
        if (v176)
        {
          v188 = *(v176 + 32);
          v187 = *(v176 + 48);
          v189 = *(v176 + 64);
          v190 = *(v176 + 80);
          if (!v184)
          {
            goto LABEL_125;
          }

LABEL_124:
          *&v184[1].super.isa = v188;
          *&v184[1]._begin = v187;
          *&v184[1]._size = v189;
          *v184[1]._anon_30 = v190;
          goto LABEL_125;
        }

        v189 = 0uLL;
        v187 = 0uLL;
        v188 = 0uLL;
        v190 = 0uLL;
        if (v184)
        {
          goto LABEL_124;
        }

LABEL_125:
        v191 = *(v1067 + 16);
        if (v191)
        {
          v191 = v191[15];
        }

        v192 = v191;
        objc_msgSend_setObject_forKey_(v192, v193, v185, v181);

        ++v175;
      }

      while (v173 != v175);
      v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v171, v194, &v1105, &v1154, 16);
      v173 = v195;
    }

    while (v195);
  }

  v198 = objc_msgSend_rawPoints(*(v1067 + 8), v196, v197);
  updated = objc_msgSend_rawUpdateCursor(*(v1067 + 8), v199, v200);
  v204 = objc_msgSend_rawCount(*(v1067 + 8), v202, v203);
  *v205.i64 = sub_2622CB45C(v198, updated, v204);
  v206 = vdupq_laneq_s64(v205, 1);
  v205.i32[2] = 0;
  v206.i32[2] = 0;
  v1125 = v205;
  v1126 = v206;
  *&v1098 = 0;
  v1097 = 0uLL;
  sub_26225172C(&v1097, v1125.i8, v1127, 2uLL);
  v207 = *(v1067 + 16);
  if (v207)
  {
    sub_26229CA04((v207 + 56), v1097, *(&v1097 + 1), (*(&v1097 + 1) - v1097) >> 4);
  }

  v209 = *(&v1101 + 1);
  for (n = v1101; n != v209; n += 2)
  {
    v210 = *n;
    v211 = *(v1067 + 16);
    if (v211)
    {
      v211 = v211[14];
    }

    v212 = v211;
    v215 = objc_msgSend_UUIDString(v210, v213, v214);
    objc_msgSend_addObject_(v212, v216, v215);

    v217 = *(v1067 + 16);
    v219 = objc_msgSend_objectForKeyedSubscript_(*(v1067 + 32), v218, v210);
    v220 = v219;
    if (v219)
    {
      v221 = v219[2];
      v222 = v219[3];
      v223 = v219[4];
      v224 = v219[5];
    }

    else
    {
      v223 = 0uLL;
      v222 = 0uLL;
      v221 = 0uLL;
      v224 = 0uLL;
    }

    sub_26229CD84(v217, v221, v222, v223, v224);
  }

  v225 = 0;
  v226 = 0;
  v1093 = 0uLL;
  *&v1094 = 0;
  v227 = v1067;
  while (1)
  {
    v228 = *(v227 + 16);
    if (v228)
    {
      v228 = v228[14];
    }

    v229 = v228;
    v232 = objc_msgSend_count(v229, v230, v231) > v226;

    if (!v232)
    {
      break;
    }

    v233 = *(v1067 + 16);
    if (v233)
    {
      v233 = v233[14];
    }

    v234 = *(v1067 + 8);
    v235 = v233;
    v237 = objc_msgSend_objectAtIndexedSubscript_(v235, v236, v226);
    objc_msgSend_mappingIntervalOfKeyframe_(v234, v238, v237);
    v1061 = v239;

    v244 = (objc_msgSend_points(*(v1067 + 8), v240, v241) + 16 * v1061);
    v245 = objc_msgSend_points(*(v1067 + 8), v242, v243) + 16 * v1061 + 16 * HIDWORD(v1061);
    v246 = v245 - v244;
    v247 = (v245 - v244) >> 4;
    if (v247 < 1)
    {
      goto LABEL_163;
    }

    if (-v225 >= v246)
    {
      while (v244 != v245)
      {
        v250 = *v244++;
        *v225 = v250;
        v225 += 16;
      }

LABEL_163:
      v251 = v225;
      goto LABEL_168;
    }

    v248 = v247 + ((v225 - v1093) >> 4);
    if (v248 >> 60)
    {
      sub_2621CBEB0();
    }

    if (-v1093 >> 3 > v248)
    {
      v248 = -v1093 >> 3;
    }

    if (-v1093 >= 0x7FFFFFFFFFFFFFF0)
    {
      v249 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v249 = v248;
    }

    if (v249)
    {
      sub_2621CBF10(v249);
    }

    v252 = 16 * ((v225 - v1093) >> 4);
    v251 = v252 + v246;
    v253 = v252;
    do
    {
      v254 = *v244++;
      *v253++ = v254;
      v246 -= 16;
    }

    while (v246);
    v255 = v1093;
    v256 = (v252 - (v225 - v1093));
    memcpy(v256, v1093, v225 - v1093);
    *&v1093 = v256;
    if (v255)
    {
      operator delete(v255);
    }

LABEL_168:
    v257 = v1093;
    v258 = (v251 - v1093) >> 4;
    v259 = v258 + 1;
    if ((v258 + 1) >> 60)
    {
      sub_2621CBEB0();
    }

    if (-v1093 >> 3 > v259)
    {
      v259 = -v1093 >> 3;
    }

    if (-v1093 >= 0x7FFFFFFFFFFFFFF0)
    {
      v260 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v260 = v259;
    }

    if (v260)
    {
      sub_2621CBF10(v260);
    }

    *(16 * v258) = *(*(*(v1067 + 16) + 80) + (v226 << 6) + 48);
    v225 = 16 * v258 + 16;
    memcpy(0, v257, v251 - v257);
    *&v1093 = 0;
    if (v257)
    {
      operator delete(v257);
    }

    v227 = v1067;
    ++v226;
  }

  *(&v1093 + 1) = v225;
  *&v1094 = 0;
  sub_2622652C4(&v1125, &v1093);
  v261 = v1125.i64[0];
  v262 = (v1125.i64[1] - v1125.i64[0]) >> 4;
  if (v262 >= 3)
  {
    if (v1125.i64[1] != v1125.i64[0])
    {
      __asm { FMOV            V0.2D, #0.5 }

      sub_2621CBF10(1uLL);
    }

    v1089 = 0uLL;
    *&v1090 = 0;
  }

  else
  {
    v1089 = 0uLL;
    *&v1090 = 0;
    sub_2621DDA38(&v1089, v1125.i64[0], v1125.i64[1], v262);
  }

  if (v261)
  {
    v1125.i64[1] = v261;
    operator delete(v261);
  }

  v290 = *(v1067 + 16);
  v291 = v1089;
  v292 = *(&v1089 + 1) - v1089;
  if (v290)
  {
    sub_26229CA04((v290 + 32), v1089, *(&v1089 + 1), v292 >> 4);
  }

  if (v292 > 0x20)
  {
    *(v1067 + 24) = 0;
    if (v291)
    {
      goto LABEL_198;
    }
  }

  else
  {
    v293 = *(v1067 + 16);
    if (v293)
    {
      *(v293 + 104) = 0;
    }

    if (v291)
    {
LABEL_198:
      operator delete(v291);
    }
  }

  if (v1093)
  {
    operator delete(v1093);
  }

  if (v1097)
  {
    operator delete(v1097);
  }

LABEL_204:
  v1125.i64[0] = &v1101;
  sub_262362638(&v1125);

LABEL_205:
  v1023 = sub_2621CD3A4(*(a1 + 64));
  v294 = *(a1 + 64);
  if (v294)
  {
    v1035 = *(v294 + 16);
    v295 = *(a1 + 64);
    if (v295)
    {
      v1021 = *(v295 + 40);
    }

    else
    {
      v1021 = 0;
    }
  }

  else
  {
    v1035 = 0;
    v1021 = 0;
  }

  kdebug_trace();
  if (!v1035 || (v1035[13] & 1) == 0)
  {
    v311 = objc_msgSend_render(a1, v296, v297);
    v312 = sub_26229D698(v311);

    if (v312)
    {
      v1107 = 0u;
      v1108 = 0u;
      v1105 = 0u;
      v1106 = 0u;
      v313 = v312[3];
      v316 = objc_msgSend_countByEnumeratingWithState_objects_count_(v313, v314, &v1105, buf, 16);
      if (v316)
      {
        v317 = *v1106;
        do
        {
          for (ii = 0; ii != v316; ++ii)
          {
            if (*v1106 != v317)
            {
              objc_enumerationMutation(v313);
            }

            v319 = *(*(&v1105 + 1) + 8 * ii);
            if (v319)
            {
              *(v319 + 105) = 2;
            }
          }

          v316 = objc_msgSend_countByEnumeratingWithState_objects_count_(v313, v315, &v1105, buf, 16);
        }

        while (v316);
      }

      memset(v1127, 0, sizeof(v1127));
      v1125 = 0u;
      v1126 = 0u;
      v320 = v312[6];
      v323 = objc_msgSend_countByEnumeratingWithState_objects_count_(v320, v321, &v1125, v1151, 16);
      if (v323)
      {
        v324 = *v1126.i64[0];
        do
        {
          for (jj = 0; jj != v323; ++jj)
          {
            if (*v1126.i64[0] != v324)
            {
              objc_enumerationMutation(v320);
            }

            v326 = *(v1125.i64[1] + 8 * jj);
            if (v326)
            {
              *(v326 + 105) = 2;
            }
          }

          v323 = objc_msgSend_countByEnumeratingWithState_objects_count_(v320, v322, &v1125, v1151, 16);
        }

        while (v323);
      }

      v1103 = 0u;
      v1104 = 0u;
      v1101 = 0u;
      v1102 = 0u;
      v327 = v312[5];
      v330 = objc_msgSend_countByEnumeratingWithState_objects_count_(v327, v328, &v1101, v1128, 16);
      if (v330)
      {
        v331 = *v1102;
        do
        {
          for (kk = 0; kk != v330; ++kk)
          {
            if (*v1102 != v331)
            {
              objc_enumerationMutation(v327);
            }

            v333 = *(*(&v1101 + 1) + 8 * kk);
            if (v333)
            {
              *(v333 + 105) = 2;
            }
          }

          v330 = objc_msgSend_countByEnumeratingWithState_objects_count_(v327, v329, &v1101, v1128, 16);
        }

        while (v330);
      }

      v1099 = 0u;
      v1100 = 0u;
      v1097 = 0u;
      v1098 = 0u;
      v334 = v312[4];
      v337 = objc_msgSend_countByEnumeratingWithState_objects_count_(v334, v335, &v1097, &v1156, 16);
      if (v337)
      {
        v338 = *v1098;
        do
        {
          for (mm = 0; mm != v337; ++mm)
          {
            if (*v1098 != v338)
            {
              objc_enumerationMutation(v334);
            }

            v340 = *(*(&v1097 + 1) + 8 * mm);
            if (v340)
            {
              *(v340 + 105) = 2;
            }
          }

          v337 = objc_msgSend_countByEnumeratingWithState_objects_count_(v334, v336, &v1097, &v1156, 16);
        }

        while (v337);
      }

      v1095 = 0u;
      v1096 = 0u;
      v1093 = 0u;
      v1094 = 0u;
      v341 = v312[7];
      v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v341, v342, &v1093, &v1154, 16);
      if (v344)
      {
        v345 = *v1094;
        do
        {
          for (nn = 0; nn != v344; ++nn)
          {
            if (*v1094 != v345)
            {
              objc_enumerationMutation(v341);
            }

            v347 = *(*(&v1093 + 1) + 8 * nn);
            if (v347)
            {
              *(v347 + 105) = 2;
            }
          }

          v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v341, v343, &v1093, &v1154, 16);
        }

        while (v344);
      }

      v1091 = 0u;
      v1092 = 0u;
      v1089 = 0u;
      v1090 = 0u;
      v348 = v312[9];
      v351 = objc_msgSend_countByEnumeratingWithState_objects_count_(v348, v349, &v1089, &v1121, 16);
      if (v351)
      {
        v352 = *v1090;
        do
        {
          for (i1 = 0; i1 != v351; ++i1)
          {
            if (*v1090 != v352)
            {
              objc_enumerationMutation(v348);
            }

            v354 = *(*(&v1089 + 1) + 8 * i1);
            if (v354)
            {
              *(v354 + 105) = 2;
            }
          }

          v351 = objc_msgSend_countByEnumeratingWithState_objects_count_(v348, v350, &v1089, &v1121, 16);
        }

        while (v351);
      }

      v1087 = 0u;
      v1088 = 0u;
      v1085 = 0u;
      v1086 = 0u;
      v355 = v312[11];
      v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v355, v356, &v1085, &v1117, 16);
      if (v358)
      {
        v359 = *v1086;
        do
        {
          for (i2 = 0; i2 != v358; ++i2)
          {
            if (*v1086 != v359)
            {
              objc_enumerationMutation(v355);
            }

            v361 = *(*(&v1085 + 1) + 8 * i2);
            if (v361)
            {
              *(v361 + 105) = 2;
            }
          }

          v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v355, v357, &v1085, &v1117, 16);
        }

        while (v358);
      }

      v1084 = 0u;
      v1082 = 0u;
      v1083 = 0u;
      v1081 = 0u;
      v362 = v312[12];
      v365 = objc_msgSend_countByEnumeratingWithState_objects_count_(v362, v363, &v1081, &v1113, 16);
      if (v365)
      {
        v366 = *v1082;
        do
        {
          for (i3 = 0; i3 != v365; ++i3)
          {
            if (*v1082 != v366)
            {
              objc_enumerationMutation(v362);
            }

            v368 = *(*(&v1081 + 1) + 8 * i3);
            if (v368)
            {
              *(v368 + 105) = 2;
            }
          }

          v365 = objc_msgSend_countByEnumeratingWithState_objects_count_(v362, v364, &v1081, &v1113, 16);
        }

        while (v365);
      }

      v1079 = 0u;
      v1080 = 0u;
      v1077 = 0u;
      v1078 = 0u;
      v369 = v312[13];
      v372 = objc_msgSend_countByEnumeratingWithState_objects_count_(v369, v370, &v1077, &v1109, 16);
      if (v372)
      {
        v373 = *v1078;
        do
        {
          for (i4 = 0; i4 != v372; ++i4)
          {
            if (*v1078 != v373)
            {
              objc_enumerationMutation(v369);
            }

            v375 = *(*(&v1077 + 1) + 8 * i4);
            if (v375)
            {
              *(v375 + 105) = 2;
            }
          }

          v372 = objc_msgSend_countByEnumeratingWithState_objects_count_(v369, v371, &v1077, &v1109, 16);
        }

        while (v372);
      }
    }

    kdebug_trace();
    v376 = sub_26235E988(*(a1 + 128), v312, v1024, 0, 0, 0);

    kdebug_trace();
    v1027 = v376;
    if (*(a1 + 184) == 1)
    {
      v379 = objc_msgSend_dictionaryRepresentation(v376, v377, v378);
      objc_msgSend_setObject_forKeyedSubscript_(v1029, v380, v379, @"no_temporal_update");
    }

    goto LABEL_914;
  }

  v298 = *(a1 + 72);
  v1054 = v1023;
  v301 = v1035;
  v1035 = v301;
  if (v298 && objc_msgSend_rawCount(v1054, v299, v300))
  {
    v302 = *(v298 + 8);
    if (v302)
    {
      v303 = *(v302 + 28);
    }

    else
    {
      v303 = 0;
    }

    v305 = *(v298 + 56);
    v304 = *(v298 + 60);
    v306 = v301[14];
    v309 = objc_msgSend_count(v306, v307, v308) == 0;

    if (v309)
    {
      v310 = 0.0;
    }

    else
    {
      v310 = *(v1035[10] + 14);
    }

    v381 = v1054;
    if (objc_msgSend_rawCount(v381, v382, v383))
    {
      v386 = objc_msgSend_rawCount(v381, v384, v385);
      LODWORD(v1151[0].__locale_) = 0;
      sub_2621CD1D8(buf, (v386 - 1) / 3 + 1, v1151);
      v389 = 0;
      v390 = 0;
      v391 = 8;
      while (objc_msgSend_rawCount(v381, v387, v388) > v390)
      {
        v394 = objc_msgSend_rawPoints(v381, v392, v393);
        *(*buf + v389) = *(v394 + v391);
        v390 += 3;
        v391 += 48;
        v389 += 4;
      }

      sub_2621CD2EC(buf);
      v396 = v395;
      sub_2621CD2EC(buf);
      v398 = v397;
      v401 = objc_msgSend_rawPoints(v381, v399, v400);
      v404 = objc_msgSend_rawCount(v381, v402, v403);
      v1049 = v398 + 0.0;
      if (v404)
      {
        v408 = 16 * v404;
        v409 = 0uLL;
        do
        {
          v410 = *v401++;
          v411.i32[1] = v410.i32[1];
          v409 = vaddq_f32(v409, v410);
          v408 -= 16;
        }

        while (v408);
        *v411.i32 = v404;
        v412 = vdivq_f32(v409, vdupq_lane_s32(v411, 0));
      }

      else
      {
        v412 = 0uLL;
      }

      v1031 = v412;
      v413 = 0;
      obja = v396 + -0.1;
      v1151[0].__locale_ = 0;
      v1151[1].__locale_ = 0;
      *&v1152 = 0;
      v407.i64[0] = 0;
      v1063 = v407;
      v414 = 8;
      v407.i64[0] = 0;
      v1068 = v407;
      while (objc_msgSend_count(v381, v405, v406) > v413)
      {
        v3.i32[0] = *(objc_msgSend_semanticLabels(v381, v415, v416) + 4 * v413);
        v421 = vmovl_u8(v3).u8[0];
        _ZF = *(objc_msgSend_points(v381, v417, v418) + v414) <= v310 && v421 == 1;
        if (_ZF && *(objc_msgSend_semanticVotes(v381, v419, v420) + 8 * v413))
        {
          objc_msgSend_points(v381, v419, v420);
          sub_2621C7F54(1uLL);
        }

        if (*(objc_msgSend_points(v381, v419, v420) + v414) >= (v1049 + -0.1) && v421 == 3)
        {
          v424 = objc_msgSend_semanticVotes(v381, v405, v406);
          v425 = v1068;
          if (*(v424 + 8 * v413))
          {
            *v425.i32 = *v1068.i32 + 1.0;
          }

          v1068 = v425;
        }

        v413 += 3;
        v414 += 48;
      }

      v1151[1].__locale_ = 0;
      *&v1152 = 0;
      v1151[0].__locale_ = 0;
      v426 = v1063;
      v426.i32[1] = v1068.i32[0];
      v1062 = v426;
      v1037 = __PAIR64__(LODWORD(v1049), LODWORD(obja));
      if (buf[0])
      {
        buf[1] = buf[0];
        operator delete(*buf);
      }
    }

    else
    {
      v1031 = 0u;
      v1037 = 0;
      v396 = 0.0;
      v398 = 0.0;
      v1049 = 0.0;
      obja = 0.0;
      v1062 = 0u;
    }

    v432 = *(v298 + 8);
    if (v432)
    {
      v430 = v1062;
      *(v432 + 48) = v1062.i64[0];
    }

    v433 = v304 * v305;
    v301 = v1035;
    if (*(v298 + 36) == 1 && *(v298 + 64) >= 1)
    {
      v434 = *(v298 + 8);
      if (v434)
      {
        v435 = 1.0 / *(v434 + 80) * 20.0;
        v436 = 1.0 / *(v434 + 96) * 0.5;
        *&v436 = v436;
        *v1028 = *(v434 + 64);
      }

      else
      {
        *v1028 = 0u;
        *&v436 = 2139095040;
        v435 = INFINITY;
      }

      if (*(v298 + 56) < 1)
      {
        v438 = 0;
      }

      else
      {
        if (v434)
        {
          v437 = *(v434 + 16);
        }

        else
        {
          v437 = 0.0;
        }

        v438 = vabds_f32(v437, obja) > *&v436;
      }

      v439 = objc_msgSend_rawPoints(v381, v427, v428, v436);
      v442 = objc_msgSend_rawCount(v381, v440, v441);
      *v444.i64 = sub_2622CB45C(v439, 0, v442);
      v443 = vdupq_laneq_s64(v444, 1);
      *&v444.i32[2] = obja;
      v445 = v433 + obja;
      if (v1049 < (v433 + obja))
      {
        v445 = v1049;
      }

      *&v443.i32[2] = v445;
      *buf[0].i8 = v444;
      *buf[2].i8 = v443;
      v1151[1].__locale_ = 0;
      *&v1152 = 0;
      v1151[0].__locale_ = 0;
      sub_26225172C(v1151, buf, &buf[4], 2uLL);
      memset(buf, 0, 24);
      sub_2621DDA38(buf, v1151[0].__locale_, v1151[1].__locale_, (v1151[1].__locale_ - v1151[0].__locale_) >> 4);
      if (*buf != *&buf[1])
      {
        sub_2621CBF10(1uLL);
      }

      v446 = vsubq_f32(*v1028, v1031);
      v447 = vmulq_f32(v446, v446).u64[0];
      v301 = v1035;
      if (buf[0])
      {
        buf[1] = buf[0];
        v1069 = v447;
        operator delete(*buf);
        v447 = v1069;
      }

      v448 = 0;
      v449 = vaddv_f32(v447);
      if ((MEMORY[0] & 0x80000000) == 0 && (MEMORY[4] & 0x80000000) == 0)
      {
        v448 = MEMORY[0x14] < v303;
        if (MEMORY[0x10] >= v303)
        {
          v448 = 0;
        }
      }

      v450 = sqrtf(v449);
      if (MEMORY[4] - MEMORY[0] >= v303 || MEMORY[0x14] - MEMORY[0x10] >= v303)
      {
        v452 = *(v298 + 8);
        if (v452)
        {
          v453 = *(v452 + 12) + -0.06;
        }

        else
        {
          v453 = -0.06;
        }

        v451 = fabsf(v453) < 0.001;
      }

      else
      {
        v451 = 0;
      }

      v454 = *(v298 + 56);
      v456 = v454 < 1 || MEMORY[8] < 0;
      if (!v454)
      {
        v456 = 0;
      }

      if (v450 > v435 || v438 || v456 || !v448 && !v451)
      {
        operator delete(0);
        if (v1151[0].__locale_)
        {
          operator delete(v1151[0].__locale_);
        }

        goto LABEL_373;
      }

      v633 = *(v298 + 8);
      if (v633)
      {
        *(v633 + 8) = 0;
        v634 = *(v298 + 8);
        ++*(v298 + 64);
        if (v634)
        {
          *(v634 + 36) = v396;
          v635 = *(v298 + 8);
          if (v635)
          {
            *(v635 + 40) = v398;
          }
        }
      }

      else
      {
        ++*(v298 + 64);
      }

      operator delete(0);
      if (v1151[0].__locale_)
      {
        operator delete(v1151[0].__locale_);
      }
    }

    else
    {
LABEL_373:
      v457 = *(v298 + 8);
      v429.f64[0] = 0.0;
      if (v457)
      {
        *(v457 + 8) = 1;
        v458 = *(v298 + 8);
        if (v458)
        {
          LODWORD(v429.f64[0]) = *(v458 + 12);
        }
      }

      v459 = *(v298 + 60);
      if (*(v298 + 45) == 1)
      {
        v460 = objc_msgSend_rawPoints(v381, v427, v428, v429.f64[0]);
        v463 = objc_msgSend_rawCount(v381, v461, v462);
        if (v463 > 1)
        {
          v464 = v460 + 1;
          v465 = *v460;
          v466 = 16 * v463 - 16;
          v467 = v460 + 1;
          do
          {
            v468 = vsubq_f32(v465, v1031);
            v469 = vmulq_f32(v468, v468);
            v469.f32[0] = vaddv_f32(*v469.f32);
            v470 = *v467++;
            v431 = v470;
            v471 = vsubq_f32(v470, v1031);
            v472 = vmulq_f32(v471, v471);
            v472.f32[0] = vaddv_f32(*v472.f32);
            v465 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v472, v469), 0), v470, v465);
            if (v469.f32[0] < v472.f32[0])
            {
              v460 = v464;
            }

            v464 = v467;
            v466 -= 16;
          }

          while (v466);
        }

        v430 = v1031;
        v473 = vsubq_f32(*v460, v1031);
        v429 = vmulq_f32(v473, v473);
        *v429.f64 = sqrtf(vaddv_f32(*&v429.f64[0]));
        while (1)
        {
          v474 = *(v298 + 20);
          v475 = (*v429.f64 + *v429.f64) / v303;
          if (v303 >= v474 || v475 <= 0.03)
          {
            break;
          }

          if (*(v298 + 68) + v303 >= v474)
          {
            v303 = *(v298 + 20);
          }

          else
          {
            v303 += *(v298 + 68);
          }

          v476 = *(v298 + 8);
          if (v476)
          {
            *(v476 + 28) = v303;
          }
        }

        v477 = 0.06;
        if (v475 <= 0.06)
        {
          v477 = (*v429.f64 + *v429.f64) / v303;
        }

        v478 = v477 * 100.0;
        v479 = 3.0;
        if (v475 >= 0.03)
        {
          v479 = v478;
        }

        *v429.f64 = ceilf(v479) / 100.0;
      }

      v480 = *(v298 + 8);
      if (v480)
      {
        v430.i32[0] = 0;
        v481 = *(v298 + 56);
        v431.i32[0] = v481;
        v482 = v1031;
        *&v482.i32[2] = (v433 * 0.5) + *&v1037;
        v483 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v431, v430), 0), v482, v1031);
        v480[4] = v483;
        v484 = *(v298 + 8);
        if (v484)
        {
          *(v484 + 12) = LODWORD(v429.f64[0]);
          v485 = *(v298 + 8);
          if (v485)
          {
            v486 = *v429.f64;
            v429.f64[0] = v459;
            v487.f64[0] = v486;
            v487.f64[1] = v486;
            __asm { FMOV            V4.2D, #1.0 }

            v489 = vdivq_f64(_Q4, v487);
            v490 = vdivq_f64(_Q4, v429);
            v485[5] = v489;
            v485[6] = v490;
            v491 = *(v298 + 8);
            if (v491)
            {
              v490.f64[0] = v481;
              __asm { FMOV            V3.2D, #0.5 }

              v493 = vmulq_f64(vmulq_f64(v490, v429), _Q3);
              v494 = vmulq_f64(vmulq_n_f64(vdupq_lane_s64(COERCE__INT64(v303), 0), v486), _Q3);
              v495 = vcvtq_f64_f32(*&v483.f64[0]);
              *&v494.f64[1] = vextq_s8(v494, v494, 8uLL).u64[0];
              v483.f64[0] = *&v483.f64[1];
              v491[7] = vsubq_f64(v494, v495);
              v491[8] = vsubq_f64(v493, v483);
              v496 = *(v298 + 8);
              if (v496)
              {
                *(v496 + 16) = v1037;
                v497 = *(v298 + 8);
                if (v497)
                {
                  *(v497 + 20) = HIDWORD(v1037);
                  v498 = *(v298 + 8);
                  if (v498)
                  {
                    *(v498 + 24) = v433;
                    v499 = *(v298 + 8);
                    if (v499)
                    {
                      *(v499 + 36) = v396;
                      v500 = *(v298 + 8);
                      if (v500)
                      {
                        *(v500 + 40) = v398;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++*(v298 + 64);
    }
  }

  v1020 = sub_2621CD3A4(*(a1 + 72));
  v503 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v501, v502);
  v505 = objc_msgSend_BOOLForKey_(v503, v504, @"fp_earlyout_accumulation");

  if (!v505)
  {
    kdebug_trace();
    v506 = *(a1 + 88);
    v1070 = v1054;
    v507 = v1035;
    v510 = v1020;
    v1035 = v507;
    if (!v506 || !objc_msgSend_count(v1070, v508, v509))
    {
      goto LABEL_610;
    }

    v511 = *(v506 + 8);
    if (v511)
    {
      v512 = *(v511 + 48);
      if (v510)
      {
        if (v512 == v510[7])
        {
          goto LABEL_419;
        }

        v513 = v510[7];
        goto LABEL_418;
      }

      if (v512)
      {
        v513 = 0;
LABEL_418:
        *(v511 + 40) = v513;
        *(v511 + 48) = v513;
        sub_2622C58F8(v511);
        sub_2622C5A18(v511, v514);
      }
    }

LABEL_419:
    v515 = *(v506 + 16);
    if (!v515)
    {
      goto LABEL_424;
    }

    v516 = *(v515 + 48);
    if (v510)
    {
      if (v516 == v510[7])
      {
        goto LABEL_424;
      }

      v517 = v510[7];
    }

    else
    {
      if (!v516)
      {
LABEL_424:
        v519 = *(v506 + 72);
        if (!v519)
        {
          goto LABEL_429;
        }

        v520 = *(v519 + 48);
        if (v510)
        {
          if (v520 == v510[7])
          {
            goto LABEL_429;
          }

          v521 = v510[7];
        }

        else
        {
          if (!v520)
          {
LABEL_429:
            v523 = *(v506 + 80);
            if (!v523)
            {
              goto LABEL_434;
            }

            v524 = *(v523 + 48);
            if (v510)
            {
              if (v524 == v510[7])
              {
                goto LABEL_434;
              }

              v525 = v510[7];
            }

            else
            {
              if (!v524)
              {
LABEL_434:
                v527 = *(v506 + 88);
                if (!v527)
                {
                  goto LABEL_439;
                }

                v528 = v527[6];
                if (v510)
                {
                  if (v528 == v510[7])
                  {
                    goto LABEL_439;
                  }

                  v529 = v510[7];
                }

                else
                {
                  if (!v528)
                  {
LABEL_439:
                    v531 = *(v506 + 96);
                    if (v531)
                    {
                      v532 = v531[6];
                      if (v510)
                      {
                        if (v532 == v510[7])
                        {
LABEL_442:
                          memset(buf, 0, 24);
LABEL_443:
                          if (v510[2])
                          {
                            sub_2622C5BB4(*(v506 + 8));
                            sub_2622C5BB4(*(v506 + 72));
                            sub_2622C5BB4(*(v506 + 88));
                            *(v506 + 24) = vcvt_s32_f32(*(v506 + 32));
                            v535 = objc_msgSend_count(v1070, v533, v534);
                            v1151[0].__locale_ = 0;
                            sub_262247F68(buf, v535, v1151);
                            v536 = buf[0];
                            if (*buf != *&buf[1])
                            {
                              v537 = 0;
                              v538 = (*&buf[1] - *buf - 8) >> 3;
                              v539 = vdupq_n_s64(v538);
                              v540 = (v538 + 2) & 0x3FFFFFFFFFFFFFFELL;
                              v541 = xmmword_2623A7620;
                              v542 = vdupq_n_s64(2uLL);
                              do
                              {
                                v543 = vmovn_s64(vcgeq_u64(v539, v541));
                                if (v543.i8[0])
                                {
                                  v536[v537] = v537;
                                }

                                if (v543.i8[4])
                                {
                                  v536[v537 + 1] = v537 + 1;
                                }

                                v537 += 2;
                                v541 = vaddq_s64(v541, v542);
                              }

                              while (v540 != v537);
                            }

                            v544 = *(v506 + 8);
                            if (v544 && *(v544 + 64) == 1)
                            {
                              v545 = *(v544 + 8);
                            }

                            else
                            {
                              v545 = 0;
                            }

                            CVPixelBufferLockBaseAddress(v545, 0);
                            v636 = *(v506 + 72);
                            if (v636 && *(v636 + 64) == 1)
                            {
                              v637 = *(v636 + 8);
                            }

                            else
                            {
                              v637 = 0;
                            }

                            CVPixelBufferLockBaseAddress(v637, 0);
                            v638 = *(v506 + 88);
                            if (v638 && *(v638 + 64) == 1)
                            {
                              v639 = *(v638 + 8);
                            }

                            else
                            {
                              v639 = 0;
                            }

                            CVPixelBufferLockBaseAddress(v639, 0);
                            v640 = sub_2622B5158(v1070, buf, v510, *(v506 + 8), *(v506 + 24), *(v506 + 28), *(v506 + 72), *(v506 + 88), 0);
                            v641 = *(v506 + 8);
                            if (v641 && *(v641 + 64) == 1)
                            {
                              v642 = *(v641 + 8);
                            }

                            else
                            {
                              v642 = 0;
                            }

                            CVPixelBufferUnlockBaseAddress(v642, 0);
                            v643 = *(v506 + 72);
                            if (v643 && *(v643 + 64) == 1)
                            {
                              v644 = *(v643 + 8);
                            }

                            else
                            {
                              v644 = 0;
                            }

                            CVPixelBufferUnlockBaseAddress(v644, 0);
                            v645 = *(v506 + 88);
                            if (v645 && *(v645 + 64) == 1)
                            {
                              v646 = *(v645 + 8);
                            }

                            else
                            {
                              v646 = 0;
                            }

                            CVPixelBufferUnlockBaseAddress(v646, 0);
                            v1038 = v640;
                            v632 = HIDWORD(v640);
LABEL_604:
                            v647 = *(v506 + 24);
                            v648 = *(v506 + 28);
                            if (v647 <= v1038)
                            {
                              v647 = v1038;
                            }

                            if (v648 <= v632)
                            {
                              v648 = v632;
                            }

                            *(v506 + 24) = v647;
                            *(v506 + 28) = v648;
                            if (v536)
                            {
                              operator delete(v536);
                            }

LABEL_610:

                            v1019 = sub_2621CD3A4(*(a1 + 88));
                            v649 = *(a1 + 88);
                            if (v649)
                            {
                              v1013 = *(v649 + 88);
                            }

                            else
                            {
                              v1013 = 0;
                            }

                            kdebug_trace();
                            v652 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v650, v651);
                            v654 = objc_msgSend_BOOLForKey_(v652, v653, @"fp_earlyout_projection2DZ");

                            if (v654)
                            {
                              if (qword_27FF0C090 != -1)
                              {
                                dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                              }

                              log = qword_27FF0C088;
                              if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                              {
                                buf[0].i32[0] = 138412290;
                                *(buf + 4) = @"fp_earlyout_projection2DZ";
                                _os_log_debug_impl(&dword_2621C3000, log, OS_LOG_TYPE_DEBUG, "pnp measurement: %@", buf, 0xCu);
                              }

                              v1027 = 0;
                              goto LABEL_912;
                            }

                            v655 = *(a1 + 56);
                            v656 = v1019;
                            v657 = v510;
                            if (v655)
                            {
                              LODWORD(v1154) = 15083;
                              *(&v1154 + 1) = 0;
                              kdebug_trace();
                              v1151[0].__locale_ = 0;
                              v1151[1].__locale_ = 0;
                              *&v1152 = 0;
                              memset(v1128, 0, 24);
                              *buf[0].i8 = xmmword_2623A8670;
                              *buf[2].i8 = unk_2623A8680;
                              v1156 = 0uLL;
                              v1157.i64[0] = 0;
                              sub_2622AB9E8(&v1156, buf, &buf[4], 4uLL);
                              if (v656 && v656[8].isa == 1)
                              {
                                isa = v656[1].isa;
                              }

                              else
                              {
                                isa = 0;
                              }

                              sub_26222B1A0(v655 + 8, isa);
                              if (v657)
                              {
                                v659 = v657[10];
                                v660 = *(v657 + 7);
                              }

                              else
                              {
                                v660 = 0uLL;
                                v659 = 0.0;
                              }

                              *&v661 = *&v660;
                              v662 = *(&v660 + 1);
                              *(&v661 + 1) = v662;
                              v1064 = v661;
                              v663 = sub_2622CAAA8(v1151, 0, v659, v661);
                              v664 = sub_2622CAAA8(v1128, 3, v659, v1064);
                              v665 = objc_alloc_init(RSFloorPlan);
                              sub_2622AE900(v665, v663);
                              v1027 = v665;
                              sub_2622AE920(v665, v664);
                              if (v657)
                              {
                                v666 = *(v657 + 9);
                              }

                              else
                              {
                                v666 = 0.0;
                              }

                              if (v665)
                              {
                                v665->floorHeight = v666;
                              }

                              if (v657)
                              {
                                v667 = *(v657 + 10);
                              }

                              else
                              {
                                v667 = 0.0;
                              }

                              if (v665)
                              {
                                v665->ceilingHeight = v667;
                              }

                              sub_2622B1630(&v665->super.isa);

                              if (v1156.i64[0])
                              {
                                operator delete(v1156.i64[0]);
                              }

                              if (*&v1128[0])
                              {
                                operator delete(*&v1128[0]);
                              }

                              if (v1151[0].__locale_)
                              {
                                operator delete(v1151[0].__locale_);
                              }

                              sub_2621CD534(&v1154);
                            }

                            else
                            {
                              v1027 = 0;
                            }

                            if (*(a1 + 184) == 1)
                            {
                              v670 = objc_msgSend_dictionaryRepresentation(v1027, v668, v669);
                              objc_msgSend_setObject_forKeyedSubscript_(v1029, v671, v670, @"lcnn");
                            }

                            v672 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v668, v669);
                            v674 = objc_msgSend_BOOLForKey_(v672, v673, @"fp_earlyout_wallOpeningDetect");

                            if (v674)
                            {
                              if (qword_27FF0C090 != -1)
                              {
                                dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                              }

                              log = qword_27FF0C088;
                              if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                              {
                                buf[0].i32[0] = 138412290;
                                *(buf + 4) = @"fp_earlyout_wallOpeningDetect";
                                _os_log_debug_impl(&dword_2621C3000, log, OS_LOG_TYPE_DEBUG, "pnp measurement: %@", buf, 0xCu);
                              }

                              goto LABEL_912;
                            }

                            v675 = *(a1 + 32);
                            v676 = *(a1 + 88);
                            if (v676)
                            {
                              v677 = *(v676 + 24);
                            }

                            else
                            {
                              v677 = 0.0;
                            }

                            log = v1027;
                            v1008 = v1070;
                            v1035 = v1035;
                            v1009 = v657;
                            v1012 = v656;
                            v1010 = v1013;
                            if (v675)
                            {
                              v1125.i32[0] = 13555;
                              v1125.i64[1] = 0;
                              kdebug_trace();
                              v1014 = objc_msgSend_copy(log, v678, v679);
                              v680 = v1035[14];
                              v683 = objc_msgSend_count(v680, v681, v682) == 0;

                              if (!v683)
                              {
                                if ((*(v675 + 1953) & 1) == 0)
                                {
                                  v686 = v1012;
                                  if (v1012)
                                  {
                                    if (*(v675 + 1824) != v1012[5].isa)
                                    {
                                      goto LABEL_659;
                                    }

                                    v687 = v1012[6].isa;
                                  }

                                  else
                                  {
                                    v687 = *(v675 + 1824);
                                    if (v687)
                                    {
LABEL_960:
                                      v688 = 0;
                                      v1156.i64[0] = 0;
                                      goto LABEL_660;
                                    }
                                  }

                                  if (*(v675 + 1832) == v687)
                                  {
                                    goto LABEL_691;
                                  }
                                }

                                v686 = v1012;
                                if (!v1012)
                                {
                                  goto LABEL_960;
                                }

LABEL_659:
                                v688 = v686[6].isa;
                                *v1156.f32 = v686[5];
LABEL_660:
                                *&v1154 = v688;
                                sub_262223490(v1128, &v1156, &v1154);
                                sub_2622035C8(buf, v1128);
                                if (BYTE1(v1143) == 1)
                                {
                                  v689 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
                                  v690 = sub_2621D552C(v689, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
                                  sub_2621D552C(v690, " ", 1);
                                  v691 = MEMORY[0x277D82670];
                                  v692 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
                                  sub_2621D552C(v692, " ", 1);
                                  sub_2621D552C(v692, "operator=", 9);
                                  std::ios_base::getloc((v692 + *(*v692 - 24)));
                                  v693 = std::locale::use_facet(v1151, MEMORY[0x277D82680]);
                                  (v693->__vftable[2].~facet_0)(v693, 10);
                                  std::locale::~locale(v1151);
                                  std::ostream::put();
                                  std::ostream::flush();
                                  sub_2621D5EE8("err", "scalar assign should create a storage first");
                                  std::ios_base::getloc((v691 + *(*v691 - 24)));
                                  v694 = std::locale::use_facet(v1151, MEMORY[0x277D82680]);
                                  (v694->__vftable[2].~facet_0)(v694, 10);
                                  std::locale::~locale(v1151);
                                  std::ostream::put();
                                  std::ostream::flush();
                                }

                                v1152 = 0u;
                                v1153 = 0u;
                                *&v1151[0].__locale_ = 0u;
                                v695 = v1141;
                                v696 = *(&v1143 + 1);
                                if (v1143)
                                {
                                  if (v1141)
                                  {
                                    v697 = (v1141 + 7) & 0xFFFFFFFFFFFFFFF8;
                                    v698 = vdupq_n_s64(v1141 - 1);
                                    v699 = xmmword_2623A77F0;
                                    v700 = xmmword_2623A7800;
                                    v701 = xmmword_2623A7630;
                                    v702 = (*(&v1143 + 1) + 8);
                                    v703 = xmmword_2623A7620;
                                    v704 = vdupq_n_s64(8uLL);
                                    do
                                    {
                                      v705 = vmovn_s64(vcgeq_u64(v698, v703));
                                      if (vuzp1_s8(vuzp1_s16(v705, *v698.i8), *v698.i8).u8[0])
                                      {
                                        *(v702 - 4) = 0;
                                      }

                                      if (vuzp1_s8(vuzp1_s16(v705, *&v698), *&v698).i8[1])
                                      {
                                        *(v702 - 3) = 0;
                                      }

                                      if (vuzp1_s8(vuzp1_s16(*&v698, vmovn_s64(vcgeq_u64(v698, *&v701))), *&v698).i8[2])
                                      {
                                        *(v702 - 2) = 0;
                                        *(v702 - 1) = 0;
                                      }

                                      v706 = vmovn_s64(vcgeq_u64(v698, v700));
                                      if (vuzp1_s8(*&v698, vuzp1_s16(v706, *&v698)).i32[1])
                                      {
                                        *v702 = 0;
                                      }

                                      if (vuzp1_s8(*&v698, vuzp1_s16(v706, *&v698)).i8[5])
                                      {
                                        v702[1] = 0;
                                      }

                                      if (vuzp1_s8(*&v698, vuzp1_s16(*&v698, vmovn_s64(vcgeq_u64(v698, *&v699)))).i8[6])
                                      {
                                        v702[2] = 0;
                                        v702[3] = 0;
                                      }

                                      v700 = vaddq_s64(v700, v704);
                                      v701 = vaddq_s64(v701, v704);
                                      v703 = vaddq_s64(v703, v704);
                                      v702 += 8;
                                      v699 = vaddq_s64(v699, v704);
                                      v697 -= 8;
                                    }

                                    while (v697);
                                  }
                                }

                                else if (v1141)
                                {
                                  v707 = 0;
                                  v708 = buf[7];
                                  v709 = buf[8];
                                  do
                                  {
                                    v710 = 0;
                                    *(v696 + 2 * *&v709 * v1151[1].__locale_ + 2 * *&v708 * v1151[0].__locale_) = 0;
                                    do
                                    {
                                      v711 = (v1151[v710 + 1].__locale_ + 1);
                                      v1151[v710 + 1].__locale_ = v711;
                                      if (v711 != buf[v710 + 2])
                                      {
                                        break;
                                      }

                                      v1151[v710-- + 1].__locale_ = 0;
                                    }

                                    while (v710 != -2);
                                    ++v707;
                                  }

                                  while (v707 != v695);
                                }

                                *(v675 + 1872) = *buf[7].i8;
                                *(v675 + 1888) = v1139;
                                *(v675 + 1904) = v1140;
                                *(v675 + 1920) = v1141;
                                *(v675 + 1824) = *buf[1].i8;
                                *(v675 + 1840) = *buf[3].i8;
                                *(v675 + 1856) = *buf[5].i8;
                                v712 = v1142;
                                if (*(&v1142 + 1))
                                {
                                  atomic_fetch_add_explicit((*(&v1142 + 1) + 8), 1uLL, memory_order_relaxed);
                                }

                                *(v675 + 1936) = v712;
                                v713 = *(v675 + 1944);
                                *(v675 + 1944) = *(&v712 + 1);
                                if (v713)
                                {
                                  sub_2621D1B78(v713);
                                }

                                *(v675 + 1960) = *(&v1143 + 1);
                                *(v675 + 1952) = v1143;
                                buf[0] = &unk_2874EE7C8;
                                if (*(&v1142 + 1))
                                {
                                  sub_2621D1B78(*(&v1142 + 1));
                                }

LABEL_691:
                                if (v1012 && v1012[8].isa == 1)
                                {
                                  v714 = v1012[1].isa;
                                }

                                else
                                {
                                  v714 = 0;
                                }

                                CVPixelBufferLockBaseAddress(v714, 1uLL);
                                v715 = v1012;
                                v716 = sub_2622C57A4(v1012, 0x1AuLL);
                                if (v1012)
                                {
                                  v717 = v1012[6].isa * v1012[5].isa;
                                  if (v717)
                                  {
                                    v718 = *(v675 + 1960);
                                    do
                                    {
                                      v719 = *v716;
                                      v716 = (v716 + 2);
                                      _H0 = v719;
                                      __asm { FCVT            S0, H0 }

                                      _S0 = v677 * _S0;
                                      __asm { FCVT            H0, S0 }

                                      *v718++ = LOWORD(_S0);
                                      --v717;
                                    }

                                    while (v717);
                                    v723 = v1012;
                                  }

                                  else
                                  {
                                    v723 = v1012;
                                  }

                                  v726 = v723[7].isa - 27;
                                  v724 = v723[5].isa;
                                  v725 = v723[6].isa;
                                }

                                else
                                {
                                  v724 = 0;
                                  v725 = 0;
                                  v726 = -27;
                                }

                                *&v1101 = v726;
                                *&v1128[0] = v724;
                                v1156.i64[0] = v725;
                                sub_262293FD4(buf, &v1101, v1128, &v1156);
                                v727 = v1012;
                                v728 = sub_2622C57A4(v1012, 0x1BuLL);
                                sub_262294264(v1151, buf, v728);
                                v729 = v1008;
                                v1025 = v1035;
                                LODWORD(v1128[0]) = 7601;
                                *(&v1128[0] + 1) = 0;
                                v1011 = v729;
                                kdebug_trace();
                                for (i5 = 0; ; ++i5)
                                {
                                  v731 = v1035[14];
                                  v734 = i5 < objc_msgSend_count(v731, v732, v733);

                                  if (!v734)
                                  {
                                    sub_2621CD534(v1128);

                                    v775 = v1025[4];
                                    v776 = v1025[5];
                                    v1121 = 0uLL;
                                    *&v1122 = 0;
                                    sub_2621DDA38(&v1121, v775, v776, (v776 - v775) >> 4);
                                    v777 = v1035[14];
                                    v780 = objc_msgSend_count(v777, v778, v779) != 0;

                                    if (v780)
                                    {
                                      sub_2621CBF10(1uLL);
                                    }

                                    v1117 = 0uLL;
                                    *&v1118 = 0;
                                    v781 = v1025[15];
                                    v782 = v1035[14];
                                    v784 = objc_msgSend_objectAtIndexedSubscript_(v782, v783, 0);
                                    v1072 = objc_msgSend_objectForKey_(v781, v785, v784);

                                    v786 = v1025[10];
                                    v787 = v1035[14];
                                    v790 = objc_msgSend_count(v787, v788, v789);
                                    if (v1072)
                                    {
                                      v794 = *(v1072 + 48);
                                      v795 = *(v1072 + 64);
                                      v796 = *(v1072 + 80);
                                      LODWORD(v791) = *(v1072 + 8);
                                      LODWORD(v792) = *(v1072 + 12);
                                      v797 = *&v791;
                                      v798 = *&v792;
                                    }

                                    else
                                    {
                                      v797 = 0;
                                      v798 = 0;
                                      *&v794 = 0;
                                      DWORD2(v794) = 0;
                                      *&v795 = 0;
                                      DWORD2(v795) = 0;
                                      v796 = 0uLL;
                                    }

                                    buf[1].i32[0] = DWORD2(v794);
                                    buf[3].i32[0] = DWORD2(v795);
                                    buf[0] = v794;
                                    buf[2] = v795;
                                    buf[5].i32[0] = v796.n128_i32[2];
                                    buf[4] = v796.n128_u64[0];
                                    sub_26224041C(v786, v790, buf, v797, v798, &v1117, v796, *&v794, *&v795, v791, v792, v793);

                                    sub_26229D6C8();
                                    v799 = v1117;
                                    v800 = sub_26229DA10(&v1121, MEMORY[0], *v1117);
                                    DWORD2(v1154) = v800.n128_u32[2];
                                    *&v1154 = v800.n128_u64[0];
                                    DWORD2(v1155) = v801;
                                    *&v1155 = v802;
                                    v1113 = 0uLL;
                                    *&v1114 = 0;
                                    sub_2621D9F60(&v1113, &v1154);
                                    sub_2621D9F60(&v1113, &v1155);
                                    v803 = *(v675 + 1696);
                                    sub_26229D6C8();
                                    sub_26229D730(&v1109, &v1121, MEMORY[0], *v799, v803);
                                    v804 = *(v675 + 1700);
                                    sub_26229D6C8();
                                    sub_26229D730(&v1105, &v1121, MEMORY[0], *v799, v804);
                                    v805 = objc_alloc_init(RSMajorViewInfo);
                                    p_isa = &v805->super.isa;
                                    if (v805)
                                    {
                                      sub_26229CC54(&v805[1].super.isa, v799, *(&v1117 + 1), (*(&v1117 + 1) - v799) >> 4);
                                      sub_26229CC54(p_isa + 7, v1113, *(&v1113 + 1), (*(&v1113 + 1) - v1113) >> 4);
                                      sub_26229CC54(p_isa + 1, v1109, *(&v1109 + 1), (*(&v1109 + 1) - v1109) >> 4);
                                      sub_26229CC54(p_isa + 4, v1105, *(&v1105 + 1), (*(&v1105 + 1) - v1105) >> 4);
                                    }

                                    buf[0] = &unk_2874EED80;
                                    memset(&buf[1], 0, 64);
                                    v1139 = 0u;
                                    v1140 = 0u;
                                    v1141 = 0u;
                                    v1142 = 0u;
                                    v1143 = 0u;
                                    v1144 = 0u;
                                    v1145 = 0;
                                    v1146 = &unk_2874EEE20;
                                    v1147 = 0;
                                    v1148 = 0;
                                    v1149 = 0;
                                    sub_2621C5224(v1150);
                                    memset(&v1150[176], 0, 24);
                                    sub_262245CF8(buf, log);
                                    kdebug_trace();
                                    if (v1010 && v1010[8] == 1)
                                    {
                                      v807 = v1010[1];
                                    }

                                    else
                                    {
                                      v807 = 0;
                                    }

                                    CVPixelBufferLockBaseAddress(v807, 1uLL);
                                    v808 = v1010;
                                    if (v1010)
                                    {
                                      v809 = v1010[5];
                                      v808 = v1010[6];
                                    }

                                    else
                                    {
                                      v809 = 0;
                                    }

                                    *&v1097 = v809;
                                    *&v1093 = v808;
                                    sub_262223490(&v1156, &v1097, &v1093);
                                    v810 = v1010;
                                    sub_2622C5800(v1010);
                                    v1130 = 0u;
                                    v1131 = 0u;
                                    *(v1128 + 8) = v1156;
                                    *&v1128[0] = &unk_2874EE7C8;
                                    v1135 = 0;
                                    v1136 = 1;
                                    *(&v1128[1] + 8) = v1157;
                                    *(&v1128[2] + 8) = v1158;
                                    *(&v1128[3] + 1) = v1156.i64[1];
                                    v1129 = 1;
                                    v1133 = 0;
                                    v1134 = 0;
                                    v1132 = v1156.i64[0] * v1156.i64[1];
                                    if (v1156.i64[0] * v1156.i64[1])
                                    {
                                      operator new();
                                    }

                                    v1137 = 1;
                                    sub_262270A20((v675 + 16), buf, v675 + 736, v1009, v675 + 1816, v1151, v1128, p_isa);
                                  }

                                  v735 = v1025[15];
                                  v736 = v1035[14];
                                  v738 = objc_msgSend_objectAtIndexedSubscript_(v736, v737, i5);
                                  v740 = objc_msgSend_objectForKey_(v735, v739, v738);

                                  if (v740)
                                  {
                                    break;
                                  }

LABEL_775:
                                }

                                v1055 = objc_msgSend_points(v729, v741, v742);
                                v744 = v740[2];
                                v743 = v740[3];
                                v745.i32[0] = *(v675 + 1648);
                                memset(buf, 0, 32);
                                buf[4].i32[0] = 1065353216;
                                objb = v743;
                                if (v744 >= v743)
                                {
                                  sub_2621C74C4(buf);
                                  goto LABEL_775;
                                }

                                v1015 = i5;
                                v1017 = v740;
                                v1065 = 0;
                                *v745.i32 = *v745.i32 * 0.5;
                                v1039 = vdupq_lane_s32(v745, 0).u64[0];
                                while (1)
                                {
                                  v1071 = *(v1055 + 16 * v744);
                                  v746 = vcvt_s32_f32(vrnda_f32(vdiv_f32(*&v1071, v1039)));
                                  HIWORD(v1074) = v746.i16[2];
                                  LOWORD(v1074) = v746.i16[0];
                                  if (!*&buf[1])
                                  {
                                    goto LABEL_739;
                                  }

                                  v747 = vcnt_s8(buf[1]);
                                  v747.i16[0] = vaddlv_u8(v747);
                                  if (v747.u32[0] > 1uLL)
                                  {
                                    v748 = v1074;
                                    if (*&buf[1] <= v1074)
                                    {
                                      v748 = v1074 % buf[1].i32[0];
                                    }
                                  }

                                  else
                                  {
                                    v748 = (buf[1].i32[0] - 1) & v1074;
                                  }

                                  v749 = *(*buf + 8 * v748);
                                  if (v749)
                                  {
                                    for (i6 = *v749; i6; i6 = *i6)
                                    {
                                      v751 = i6[1];
                                      if (v751 == v1074)
                                      {
                                        if (*(i6 + 4) == v1074)
                                        {
                                          goto LABEL_744;
                                        }
                                      }

                                      else
                                      {
                                        if (v747.u32[0] > 1uLL)
                                        {
                                          if (v751 >= *&buf[1])
                                          {
                                            v751 %= *&buf[1];
                                          }
                                        }

                                        else
                                        {
                                          v751 &= *&buf[1] - 1;
                                        }

                                        if (v751 != v748)
                                        {
                                          break;
                                        }
                                      }
                                    }
                                  }

                                  if (v747.u32[0] > 1uLL)
                                  {
                                    v752 = v1074;
                                    if (*&buf[1] <= v1074)
                                    {
                                      v752 = v1074 % buf[1].i32[0];
                                    }
                                  }

                                  else
                                  {
                                    v752 = (buf[1].i32[0] - 1) & v1074;
                                  }

                                  v753 = *(*buf + 8 * v752);
                                  if (!v753 || (v754 = *v753) == 0)
                                  {
LABEL_739:
                                    operator new();
                                  }

                                  while (1)
                                  {
                                    v755 = v754[1];
                                    if (v755 == v1074)
                                    {
                                      break;
                                    }

                                    if (v747.u32[0] > 1uLL)
                                    {
                                      if (v755 >= *&buf[1])
                                      {
                                        v755 %= *&buf[1];
                                      }
                                    }

                                    else
                                    {
                                      v755 &= *&buf[1] - 1;
                                    }

                                    if (v755 != v752)
                                    {
                                      goto LABEL_739;
                                    }

LABEL_738:
                                    v754 = *v754;
                                    if (!v754)
                                    {
                                      goto LABEL_739;
                                    }
                                  }

                                  if (*(v754 + 4) != v1074)
                                  {
                                    goto LABEL_738;
                                  }

                                  v756 = v1065;
                                  v757 = v1065 >> 3;
                                  if (((v1065 >> 3) + 1) >> 61)
                                  {
                                    sub_2621CBEB0();
                                  }

                                  if (v1065 >> 3 != -1)
                                  {
                                    sub_2621CBEC8((v1065 >> 3) + 1);
                                  }

                                  *(8 * v757) = v1071;
                                  v1065 = 8 * v757 + 8;
                                  memcpy(0, 0, v756);
LABEL_744:
                                  if (++v744 == objb)
                                  {
                                    sub_2621C74C4(buf);
                                    if (!v1065)
                                    {
                                      goto LABEL_774;
                                    }

                                    v758 = v1017[18];
                                    v759 = 0;
                                    while (1)
                                    {
                                      v760 = *v759;
                                      v761 = vsub_f32(v758, *v759);
                                      v762 = vmul_f32(v761, v761);
                                      *v762.i32 = sqrtf(vaddv_f32(v762));
                                      v763 = *(v675 + 1648);
                                      if (*v762.i32 < v763)
                                      {
                                        v762.i32[0] = *(v675 + 1648);
                                      }

                                      v764 = (*v762.i32 / v763);
                                      if (v764 < 0)
                                      {
                                        goto LABEL_773;
                                      }

                                      v765 = 0;
                                      v766 = vdup_lane_s32(v762, 0);
                                      v767 = vdiv_f32(v761, v766);
                                      while (2)
                                      {
                                        v766.i32[0] = *(v675 + 1648);
                                        v768 = vcvt_s32_f32(vrndm_f32(vdiv_f32(vmla_n_f32(v760, vmul_n_f32(v767, v765), *v766.i32), vdup_lane_s32(v766, 0))));
                                        if (sub_262295160((v675 + 1656), v768))
                                        {
                                          goto LABEL_771;
                                        }

                                        v769 = *(v675 + 1664);
                                        if (!*&v769)
                                        {
                                          goto LABEL_770;
                                        }

                                        v770 = vcnt_s8(v769);
                                        v770.i16[0] = vaddlv_u8(v770);
                                        if (v770.u32[0] > 1uLL)
                                        {
                                          v771 = v768;
                                          if (*&v769 <= v768)
                                          {
                                            v771 = v768 % *&v769;
                                          }
                                        }

                                        else
                                        {
                                          v771 = (*&v769 - 1) & v768;
                                        }

                                        v772 = *(*(v675 + 1656) + 8 * v771);
                                        if (!v772 || (v773 = *v772) == 0)
                                        {
LABEL_770:
                                          operator new();
                                        }

                                        while (1)
                                        {
                                          v774 = v773[1];
                                          if (v774 == v768)
                                          {
                                            break;
                                          }

                                          if (v770.u32[0] > 1uLL)
                                          {
                                            if (v774 >= *&v769)
                                            {
                                              v774 %= *&v769;
                                            }
                                          }

                                          else
                                          {
                                            v774 &= *&v769 - 1;
                                          }

                                          if (v774 != v771)
                                          {
                                            goto LABEL_770;
                                          }

LABEL_769:
                                          v773 = *v773;
                                          if (!v773)
                                          {
                                            goto LABEL_770;
                                          }
                                        }

                                        if (v773[2] != v768)
                                        {
                                          goto LABEL_769;
                                        }

                                        *(v773 + 24) = 1;
LABEL_771:
                                        _ZF = v765++ == v764;
                                        if (!_ZF)
                                        {
                                          continue;
                                        }

                                        break;
                                      }

LABEL_773:
                                      if (++v759 == v1065)
                                      {
LABEL_774:
                                        v729 = v1011;
                                        v740 = v1017;
                                        i5 = v1015;
                                        goto LABEL_775;
                                      }
                                    }
                                  }
                                }
                              }

                              v811 = objc_msgSend_copy(v1014, v684, v685);
                              v812 = *(v675 + 1632);
                              *(v675 + 1632) = v811;

                              sub_2621CD534(&v1125);
                            }

                            else
                            {
                              v1014 = 0;
                            }

                            if (*(a1 + 184) == 1)
                            {
                              v815 = objc_msgSend_dictionaryRepresentation(v1014, v813, v814);
                              objc_msgSend_setObject_forKeyedSubscript_(v1029, v816, v815, @"consistency");
                            }

                            v817 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v813, v814);
                            v819 = objc_msgSend_BOOLForKey_(v817, v818, @"fp_earlyout_consistency");

                            if (v819)
                            {
                              if (qword_27FF0C090 != -1)
                              {
                                dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                              }

                              v820 = qword_27FF0C088;
                              if (!os_log_type_enabled(v820, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_911;
                              }

                              buf[0].i32[0] = 138412290;
                              *(buf + 4) = @"fp_earlyout_consistency";
LABEL_879:
                              _os_log_debug_impl(&dword_2621C3000, v820, OS_LOG_TYPE_DEBUG, "pnp measurement: %@", buf, 0xCu);
LABEL_911:

                              v1027 = v1014;
LABEL_912:

                              goto LABEL_913;
                            }

                            v821 = *(a1 + 80);
                            v822 = v1014;
                            v1073 = v1035;
                            v1050 = v1009;
                            v1056 = v822;
                            objc = v821;
                            if (!v821)
                            {
                              v1014 = 0;
LABEL_816:

                              v865 = v1014;
                              if (*(a1 + 184) == 1)
                              {
                                v866 = objc_msgSend_dictionaryRepresentation(v1014, v863, v864);
                                objc_msgSend_setObject_forKeyedSubscript_(v1029, v867, v866, @"scanui_formatter");
                              }

                              if (*(a1 + 136) == 1)
                              {
                                v868 = sub_262350304(*(a1 + 144), v1014, v1073);
                                v869 = *(a1 + 152);
                                *(a1 + 152) = v868;
                              }

                              v870 = objc_msgSend_copy(v1014, v863, v864);
                              v871 = *(a1 + 168);
                              *(a1 + 168) = v870;

                              if (v1014)
                              {
                                v874 = objc_msgSend_array(MEMORY[0x277CBEB18], v872, v873);
                                v1123 = 0u;
                                v1124 = 0u;
                                v1121 = 0u;
                                v1122 = 0u;
                                v875 = v1014[3];
                                v878 = objc_msgSend_countByEnumeratingWithState_objects_count_(v875, v876, &v1121, buf, 16);
                                if (v878)
                                {
                                  v879 = *v1122;
                                  do
                                  {
                                    for (i7 = 0; i7 != v878; ++i7)
                                    {
                                      if (*v1122 != v879)
                                      {
                                        objc_enumerationMutation(v875);
                                      }

                                      v881 = *(*(&v1121 + 1) + 8 * i7);
                                      if (!v881 || *(v881 + 116) != 3)
                                      {
                                        objc_msgSend_addObject_(v874, v877, v881);
                                      }
                                    }

                                    v878 = objc_msgSend_countByEnumeratingWithState_objects_count_(v875, v877, &v1121, buf, 16);
                                  }

                                  while (v878);
                                }

                                objc_storeStrong(v1014 + 3, v874);
                                v884 = objc_msgSend_array(MEMORY[0x277CBEB18], v882, v883);
                                v1119 = 0u;
                                v1120 = 0u;
                                v1117 = 0u;
                                v1118 = 0u;
                                v885 = v1014[6];
                                v888 = objc_msgSend_countByEnumeratingWithState_objects_count_(v885, v886, &v1117, v1151, 16);
                                if (v888)
                                {
                                  v889 = *v1118;
                                  do
                                  {
                                    for (i8 = 0; i8 != v888; ++i8)
                                    {
                                      if (*v1118 != v889)
                                      {
                                        objc_enumerationMutation(v885);
                                      }

                                      v891 = *(*(&v1117 + 1) + 8 * i8);
                                      if (!v891 || *(v891 + 120) != 3)
                                      {
                                        objc_msgSend_addObject_(v884, v887, v891);
                                      }
                                    }

                                    v888 = objc_msgSend_countByEnumeratingWithState_objects_count_(v885, v887, &v1117, v1151, 16);
                                  }

                                  while (v888);
                                }

                                objc_storeStrong(v1014 + 6, v884);
                                v894 = objc_msgSend_array(MEMORY[0x277CBEB18], v892, v893);
                                v1115 = 0u;
                                v1116 = 0u;
                                v1113 = 0u;
                                v1114 = 0u;
                                v895 = v1014[5];
                                v898 = objc_msgSend_countByEnumeratingWithState_objects_count_(v895, v896, &v1113, v1128, 16);
                                if (v898)
                                {
                                  v899 = *v1114;
                                  do
                                  {
                                    for (i9 = 0; i9 != v898; ++i9)
                                    {
                                      if (*v1114 != v899)
                                      {
                                        objc_enumerationMutation(v895);
                                      }

                                      v901 = *(*(&v1113 + 1) + 8 * i9);
                                      if (!v901 || *(v901 + 120) != 3)
                                      {
                                        objc_msgSend_addObject_(v894, v897, v901);
                                      }
                                    }

                                    v898 = objc_msgSend_countByEnumeratingWithState_objects_count_(v895, v897, &v1113, v1128, 16);
                                  }

                                  while (v898);
                                }

                                objc_storeStrong(v1014 + 5, v894);
                                v904 = objc_msgSend_array(MEMORY[0x277CBEB18], v902, v903);
                                v1111 = 0u;
                                v1112 = 0u;
                                v1109 = 0u;
                                v1110 = 0u;
                                v905 = v1014[4];
                                v908 = objc_msgSend_countByEnumeratingWithState_objects_count_(v905, v906, &v1109, &v1156, 16);
                                if (v908)
                                {
                                  v909 = *v1110;
                                  do
                                  {
                                    for (i10 = 0; i10 != v908; ++i10)
                                    {
                                      if (*v1110 != v909)
                                      {
                                        objc_enumerationMutation(v905);
                                      }

                                      v911 = *(*(&v1109 + 1) + 8 * i10);
                                      if (!v911 || *(v911 + 120) != 3)
                                      {
                                        objc_msgSend_addObject_(v904, v907, v911);
                                      }
                                    }

                                    v908 = objc_msgSend_countByEnumeratingWithState_objects_count_(v905, v907, &v1109, &v1156, 16);
                                  }

                                  while (v908);
                                }

                                objc_storeStrong(v1014 + 4, v904);
                                v914 = objc_msgSend_array(MEMORY[0x277CBEB18], v912, v913);
                                v1107 = 0u;
                                v1108 = 0u;
                                v1105 = 0u;
                                v1106 = 0u;
                                v915 = v1014[7];
                                v918 = objc_msgSend_countByEnumeratingWithState_objects_count_(v915, v916, &v1105, &v1154, 16);
                                if (v918)
                                {
                                  v919 = *v1106;
                                  do
                                  {
                                    for (i11 = 0; i11 != v918; ++i11)
                                    {
                                      if (*v1106 != v919)
                                      {
                                        objc_enumerationMutation(v915);
                                      }

                                      v921 = *(*(&v1105 + 1) + 8 * i11);
                                      if (!v921 || *(v921 + 120) != 3)
                                      {
                                        objc_msgSend_addObject_(v914, v917, v921);
                                      }
                                    }

                                    v918 = objc_msgSend_countByEnumeratingWithState_objects_count_(v915, v917, &v1105, &v1154, 16);
                                  }

                                  while (v918);
                                }

                                v922 = v1014[7];
                                v1014[7] = v914;

                                v865 = v1014;
                              }

                              if (*(a1 + 184) == 1)
                              {
                                v923 = objc_msgSend_dictionaryRepresentation(v865, v872, v873);
                                objc_msgSend_setObject_forKeyedSubscript_(v1029, v924, v923, @"filter_other_type_wall");
                              }

                              v925 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v872, v873);
                              v927 = objc_msgSend_BOOLForKey_(v925, v926, @"fp_earlyout_curvedWall");

                              if (v927)
                              {
                                if (qword_27FF0C090 != -1)
                                {
                                  dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                                }

                                v820 = qword_27FF0C088;
                                if (!os_log_type_enabled(v820, OS_LOG_TYPE_DEBUG))
                                {
                                  goto LABEL_911;
                                }

                                buf[0].i32[0] = 138412290;
                                *(buf + 4) = @"fp_earlyout_curvedWall";
                                goto LABEL_879;
                              }

                              v928 = sub_2621DF4F8(*(a1 + 96), v865, v1008, v1024, 1);

                              if (*(a1 + 184) == 1)
                              {
                                v931 = objc_msgSend_dictionaryRepresentation(v928, v929, v930);
                                objc_msgSend_setObject_forKeyedSubscript_(v1029, v932, v931, @"height_estimator");
                              }

                              if (objc_msgSend_isDoorWindowEnabled(a1, v929, v930))
                              {
                                v935 = *(a1 + 40);
                                v936 = objc_msgSend_firstObject(v1021, v933, v934);
                                v939 = objc_msgSend_openings(log, v937, v938);
                                v940 = sub_26223C878(v935, v1008, v936, v1073, v1050, v928, v939);

                                if (*(a1 + 184) == 1)
                                {
                                  v943 = objc_msgSend_dictionaryRepresentation(v940, v941, v942);
                                  objc_msgSend_setObject_forKeyedSubscript_(v1029, v944, v943, @"door_window");
                                }

                                if (sub_2621F5A14())
                                {
                                  v1014 = v940;
                                  if (qword_27FF0C090 != -1)
                                  {
                                    dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                                  }

                                  v820 = qword_27FF0C088;
                                  if (!os_log_type_enabled(v820, OS_LOG_TYPE_DEBUG))
                                  {
                                    goto LABEL_911;
                                  }

                                  buf[0].i32[0] = 138412290;
                                  *(buf + 4) = @"fp_earlyout_windowDoorDetect";
                                  goto LABEL_879;
                                }
                              }

                              else
                              {
                                v940 = v928;
                              }

                              kdebug_trace();
                              v945 = sub_262383C48(*(a1 + 104), v940, v1008, v1073);

                              if (*(a1 + 184) == 1)
                              {
                                v948 = objc_msgSend_dictionaryRepresentation(v945, v946, v947);
                                objc_msgSend_setObject_forKeyedSubscript_(v1029, v949, v948, @"opening_height_alignment");
                              }

                              kdebug_trace();
                              if (objc_msgSend_isDoorWindowEnabled(a1, v950, v951) && *(a1 + 164) == 1)
                              {
                                v952 = sub_2622958B4(*(a1 + 112), v945);

                                if (*(a1 + 184) == 1)
                                {
                                  v955 = objc_msgSend_dictionaryRepresentation(v952, v953, v954);
                                  objc_msgSend_setObject_forKeyedSubscript_(v1029, v956, v955, @"recessed_area_recon");
                                }

                                v957 = v952;
                              }

                              else
                              {
                                v957 = v945;
                              }

                              v958 = sub_2621C441C(*(a1 + 120), v957, *(a1 + 161), *(a1 + 162), *(a1 + 163));

                              if (*(a1 + 184) == 1)
                              {
                                v961 = objc_msgSend_dictionaryRepresentation(v958, v959, v960);
                                objc_msgSend_setObject_forKeyedSubscript_(v1029, v962, v961, @"parent_association");
                              }

                              v963 = objc_msgSend_render(a1, v959, v960);
                              v964 = sub_26229D35C(v963, v958, v1050, *(a1 + 56) + 1968);

                              if (*(a1 + 184) == 1)
                              {
                                v967 = objc_msgSend_dictionaryRepresentation(v964, v965, v966);
                                objc_msgSend_setObject_forKeyedSubscript_(v1029, v968, v967, @"render");
                              }

                              kdebug_trace();
                              v969 = sub_26235E988(*(a1 + 128), v964, v1024, v1073, 0, 0);

                              if (*(a1 + 184) == 1)
                              {
                                v972 = objc_msgSend_dictionaryRepresentation(v969, v970, v971);
                                objc_msgSend_setObject_forKeyedSubscript_(v1029, v973, v972, @"floor_estimation");
                              }

                              kdebug_trace();
                              v974.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
                              if (qword_27FF0C090 != -1)
                              {
                                dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                              }

                              v820 = qword_27FF0C088;
                              if (os_log_type_enabled(v820, OS_LOG_TYPE_DEFAULT))
                              {
                                v977 = objc_msgSend_walls(v969, v975, v976);
                                v1051 = objc_msgSend_count(v977, v978, v979);
                                v1066 = objc_msgSend_openings(v969, v980, v981);
                                objd = objc_msgSend_count(v1066, v982, v983);
                                __pa = objc_msgSend_windows(v969, v984, v985);
                                v988 = objc_msgSend_count(__pa, v986, v987);
                                v991 = objc_msgSend_doors(v969, v989, v990);
                                v994 = objc_msgSend_count(v991, v992, v993);
                                v997 = objc_msgSend_opendoors(v969, v995, v996);
                                v1000 = objc_msgSend_count(v997, v998, v999);
                                v1003 = objc_msgSend_curvedWalls(v969, v1001, v1002);
                                v1006 = objc_msgSend_count(v1003, v1004, v1005);
                                buf[0].i32[0] = 134219520;
                                *(buf + 4) = v1051;
                                buf[1].i16[2] = 2048;
                                *(&buf[1] + 6) = objd;
                                buf[2].i16[3] = 2048;
                                buf[3] = v988;
                                buf[4].i16[0] = 2048;
                                *(&buf[4] + 2) = v994;
                                buf[5].i16[1] = 2048;
                                *(&buf[5] + 4) = v1000;
                                buf[6].i16[2] = 2048;
                                *(&buf[6] + 6) = v1006;
                                buf[7].i16[3] = 2048;
                                buf[8] = ((v974.__d_.__rep_ - v1018.__d_.__rep_) / 1000000);
                                _os_log_impl(&dword_2621C3000, v820, OS_LOG_TYPE_DEFAULT, "Overall walls: %lu, openings: %lu, windows: %lu, doors: %lu, opendoors: %lu, curvedWalls: %lu, consume: %lld", buf, 0x48u);
                              }

                              v1014 = v969;
                              goto LABEL_911;
                            }

                            sub_2622B1630(v822);
                            v823 = v1073[14];
                            v826 = objc_msgSend_count(v823, v824, v825) == 0;

                            if (v826)
                            {
                              v856 = v1056;
                              v855 = objc_msgSend_copy(v1056, v827, v828);
                            }

                            else
                            {
                              v1033 = v1056;
                              v829 = v1073;
                              v830 = v1050;
                              v1151[0].__locale_ = 0;
                              v1151[1].__locale_ = 0;
                              *&v1152 = 0;
                              v831 = v829[15];
                              v832 = v1073[14];
                              v834 = objc_msgSend_objectAtIndexedSubscript_(v832, v833, 0);
                              v1040 = objc_msgSend_objectForKey_(v831, v835, v834);

                              v836 = v829[10];
                              v837 = v1073[14];
                              v840 = objc_msgSend_count(v837, v838, v839);
                              if (v1040)
                              {
                                v844 = *(v1040 + 48);
                                v845 = *(v1040 + 64);
                                v846 = *(v1040 + 80);
                                LODWORD(v841) = *(v1040 + 8);
                                LODWORD(v842) = *(v1040 + 12);
                                v847 = *&v841;
                                v848 = *&v842;
                              }

                              else
                              {
                                v847 = 0;
                                v848 = 0;
                                *&v844 = 0;
                                DWORD2(v844) = 0;
                                *&v845 = 0;
                                DWORD2(v845) = 0;
                                v846 = 0uLL;
                              }

                              buf[1].i32[0] = DWORD2(v844);
                              buf[3].i32[0] = DWORD2(v845);
                              buf[0] = v844;
                              buf[2] = v845;
                              buf[5].i32[0] = v846.n128_i32[2];
                              buf[4] = v846.n128_u64[0];
                              sub_26224041C(v836, v840, buf, v847, v848, v1151, v846, *&v844, *&v845, v841, v842, v843);

                              v849 = v1073[14];
                              v852 = objc_msgSend_count(v849, v850, v851) != 0;

                              if (v852)
                              {
                                sub_2621CBF10(1uLL);
                              }

                              v855 = objc_msgSend_copy(v1033, v853, v854);

                              if (v1151[0].__locale_)
                              {
                                operator delete(v1151[0].__locale_);
                              }

                              v856 = v1056;
                            }

                            if (v856)
                            {
                              v857 = *(v856 + 3);
                              if (!v855)
                              {
                                goto LABEL_812;
                              }
                            }

                            else
                            {
                              v857 = 0;
                              if (!v855)
                              {
LABEL_812:
                                if (v856)
                                {
                                  v858 = *(v856 + 4);
                                  if (!v855)
                                  {
LABEL_815:
                                    sub_2622B1630(v855);
                                    v861 = objc_msgSend_copy(v855, v859, v860);
                                    v1014 = v855;
                                    v862 = *(objc + 8);
                                    *(objc + 8) = v861;

                                    goto LABEL_816;
                                  }
                                }

                                else
                                {
                                  v858 = 0;
                                  if (!v855)
                                  {
                                    goto LABEL_815;
                                  }
                                }

                                *(v855 + 16) = v858;
                                goto LABEL_815;
                              }
                            }

                            *(v855 + 12) = v857;
                            goto LABEL_812;
                          }

LABEL_456:
                          sub_2622C5BB4(*(v506 + 16));
                          sub_2622C5BB4(*(v506 + 80));
                          sub_2622C5BB4(*(v506 + 96));
                          v548 = v507[7];
                          v549 = v507[8];
                          v1151[1].__locale_ = 0;
                          *&v1152 = 0;
                          v1151[0].__locale_ = 0;
                          sub_2621DDA38(v1151, v548, v549, (v549 - v548) >> 4);
                          v552 = 0;
                          v553 = 0;
                          locale = v1151[0].__locale_;
                          v555 = buf[1];
                          v556 = buf[2];
                          v557 = buf[0];
                          while (objc_msgSend_count(v1070, v550, v551) > v553)
                          {
                            v560 = *(objc_msgSend_points(v1070, v558, v559) + v552);
                            v561 = vmovn_s32(vmvnq_s8(vcgeq_f32(v560, *locale)));
                            if ((v561.i8[0] & 1) == 0)
                            {
                              v562 = vmovn_s32(vmvnq_s8(vcgeq_f32(locale[1], v560)));
                              if ((v562.i8[0] & 1) == 0 && (v561.i8[2] & 1) == 0 && (v562.i8[2] & 1) == 0)
                              {
                                if (v555 >= *&v556)
                                {
                                  v563 = v555 - v557;
                                  v564 = (v555 - v557) >> 3;
                                  v565 = v564 + 1;
                                  if ((v564 + 1) >> 61)
                                  {
                                    buf[0] = v557;
                                    sub_2621CBEB0();
                                  }

                                  if ((*&v556 - v557) >> 2 > v565)
                                  {
                                    v565 = (*&v556 - v557) >> 2;
                                  }

                                  if (*&v556 - v557 >= 0x7FFFFFFFFFFFFFF8uLL)
                                  {
                                    v566 = 0x1FFFFFFFFFFFFFFFLL;
                                  }

                                  else
                                  {
                                    v566 = v565;
                                  }

                                  if (v566)
                                  {
                                    sub_2621CBEC8(v566);
                                  }

                                  v567 = (8 * v564);
                                  v556 = 0;
                                  *v567 = v553;
                                  v555 = v567 + 1;
                                  memcpy(0, v557, v563);
                                  if (v557)
                                  {
                                    operator delete(v557);
                                  }

                                  v557 = 0;
                                }

                                else
                                {
                                  *v555++ = v553;
                                }
                              }
                            }

                            ++v553;
                            v552 += 16;
                          }

                          buf[1] = v555;
                          buf[2] = v556;
                          buf[0] = v557;
                          v568 = *(v506 + 8);
                          if (v568)
                          {
                            if (*(v568 + 64) == 1)
                            {
                              v569 = *(v568 + 8);
                            }

                            else
                            {
                              v569 = 0;
                            }
                          }

                          else
                          {
                            v569 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v569, 0);
                          v570 = *(v506 + 16);
                          if (v570 && *(v570 + 64) == 1)
                          {
                            v571 = *(v570 + 8);
                          }

                          else
                          {
                            v571 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v571, 0);
                          v572 = *(v506 + 72);
                          if (v572 && *(v572 + 64) == 1)
                          {
                            v573 = *(v572 + 8);
                          }

                          else
                          {
                            v573 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v573, 0);
                          v574 = *(v506 + 80);
                          if (v574 && *(v574 + 64) == 1)
                          {
                            v575 = *(v574 + 8);
                          }

                          else
                          {
                            v575 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v575, 0);
                          v576 = *(v506 + 88);
                          if (v576 && *(v576 + 64) == 1)
                          {
                            v577 = *(v576 + 8);
                          }

                          else
                          {
                            v577 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v577, 0);
                          v578 = *(v506 + 96);
                          if (v578 && *(v578 + 64) == 1)
                          {
                            v579 = *(v578 + 8);
                          }

                          else
                          {
                            v579 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v579, 0);
                          v580 = sub_2622B5158(v1070, buf, v510, *(v506 + 16), *(v506 + 24), *(v506 + 28), *(v506 + 80), *(v506 + 96), 0);
                          v581 = *(v506 + 8);
                          if (v581)
                          {
                            v582 = v581[6] * v581[5];
                          }

                          else
                          {
                            v582 = 0;
                          }

                          v583 = *(v506 + 24);
                          if (v583 < v580)
                          {
                            v584 = sub_2622C57A4(v581, *(v506 + 48));
                            for (i12 = *(v506 + 48); i12; --i12)
                            {
                              _H1 = *v584;
                              __asm { FCVT            S1, H1 }

                              _S1 = (v583 / v580) * _S1;
                              __asm { FCVT            H1, S1 }

                              *v584 = LOWORD(_S1);
                              v584 = (v584 + 2);
                            }
                          }

                          v589 = *(v506 + 28);
                          v1032 = HIDWORD(v580);
                          if (v589 < SHIDWORD(v580))
                          {
                            v590 = sub_2622C57A4(*(v506 + 8), *(v506 + 48) + 1);
                            for (i13 = v582 * *(v506 + 44); i13; --i13)
                            {
                              _H1 = *v590;
                              __asm { FCVT            S1, H1 }

                              _S1 = (v589 / HIDWORD(v580)) * _S1;
                              __asm { FCVT            H1, S1 }

                              *v590 = LOWORD(_S1);
                              v590 = (v590 + 2);
                            }
                          }

                          memset(v1128, 0, 24);
                          sub_2621DDA38(v1128, v1151[0].__locale_, v1151[1].__locale_, (v1151[1].__locale_ - v1151[0].__locale_) >> 4);
                          v1038 = v580;
                          if (*&v1128[0] != *(&v1128[0] + 1))
                          {
                            sub_2621CBF10(1uLL);
                          }

                          if (*&v1128[0])
                          {
                            *(&v1128[0] + 1) = *&v1128[0];
                            operator delete(*&v1128[0]);
                          }

                          v595 = vsubq_s32(MEMORY[0x10], MEMORY[0]).u64[0];
                          if (v510)
                          {
                            v596 = v510[7];
                          }

                          else
                          {
                            v596 = 0;
                          }

                          v597 = v595;
                          v598 = MEMORY[4] + MEMORY[0] * v596;
                          if (*(v506 + 56))
                          {
                            v599 = 0;
                            v600 = 2 * SHIDWORD(v595);
                            do
                            {
                              v601 = sub_2622C57A4(*(v506 + 8), v599);
                              v602 = sub_2622C57A4(*(v506 + 16), v599);
                              if (v597 >= 1)
                              {
                                v603 = v602;
                                for (i14 = 0; i14 != v597; ++i14)
                                {
                                  if (v510)
                                  {
                                    v605 = v510[7];
                                  }

                                  else
                                  {
                                    v605 = 0;
                                  }

                                  memcpy(v601 + 2 * v598 + 2 * v605 * i14, v603 + 2 * v598 + 2 * v605 * i14, v600);
                                }
                              }

                              ++v599;
                            }

                            while (*(v506 + 56) > v599);
                          }

                          else
                          {
                            v600 = 2 * SHIDWORD(v595);
                          }

                          for (i15 = 0; ; ++i15)
                          {
                            v607 = *(v506 + 72);
                            if (!v607 || v607[7] <= i15)
                            {
                              break;
                            }

                            v608 = sub_2622C57A4(v607, i15);
                            v609 = sub_2622C57A4(*(v506 + 80), i15);
                            if (v597 >= 1)
                            {
                              v610 = v609;
                              for (i16 = 0; i16 != v597; ++i16)
                              {
                                if (v510)
                                {
                                  v612 = v510[7];
                                }

                                else
                                {
                                  v612 = 0;
                                }

                                memcpy(v608 + 2 * v598 + 2 * v612 * i16, v610 + 2 * v598 + 2 * v612 * i16, v600);
                              }
                            }
                          }

                          for (i17 = 0; ; ++i17)
                          {
                            v614 = *(v506 + 88);
                            if (!v614 || v614[7] <= i17)
                            {
                              break;
                            }

                            v615 = sub_2622C57A4(v614, i17);
                            v616 = sub_2622C57A4(*(v506 + 96), i17);
                            if (v597 >= 1)
                            {
                              v617 = v616;
                              for (i18 = 0; i18 != v597; ++i18)
                              {
                                if (v510)
                                {
                                  v619 = v510[7];
                                }

                                else
                                {
                                  v619 = 0;
                                }

                                memcpy(v615 + 2 * v598 + 2 * v619 * i18, v617 + 2 * v598 + 2 * v619 * i18, v600);
                              }
                            }
                          }

                          v620 = *(v506 + 8);
                          if (v620 && *(v620 + 64) == 1)
                          {
                            v621 = *(v620 + 8);
                          }

                          else
                          {
                            v621 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v621, 0);
                          v622 = *(v506 + 16);
                          if (v622 && *(v622 + 64) == 1)
                          {
                            v623 = *(v622 + 8);
                          }

                          else
                          {
                            v623 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v623, 0);
                          v624 = *(v506 + 72);
                          if (v624 && *(v624 + 64) == 1)
                          {
                            v625 = *(v624 + 8);
                          }

                          else
                          {
                            v625 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v625, 0);
                          v626 = *(v506 + 80);
                          if (v626 && *(v626 + 64) == 1)
                          {
                            v627 = *(v626 + 8);
                          }

                          else
                          {
                            v627 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v627, 0);
                          v628 = *(v506 + 88);
                          if (v628 && *(v628 + 64) == 1)
                          {
                            v629 = *(v628 + 8);
                          }

                          else
                          {
                            v629 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v629, 0);
                          v630 = *(v506 + 96);
                          if (v630 && *(v630 + 64) == 1)
                          {
                            v631 = *(v630 + 8);
                          }

                          else
                          {
                            v631 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v631, 0);
                          operator delete(0);
                          if (v1151[0].__locale_)
                          {
                            operator delete(v1151[0].__locale_);
                          }

                          v536 = buf[0];
                          LODWORD(v632) = v1032;
                          goto LABEL_604;
                        }

                        v546 = v510[7];
LABEL_455:
                        v531[5] = v546;
                        v531[6] = v546;
                        v531[7] = 1;
                        sub_2622C58F8(v531);
                        sub_2622C5A18(v531, v547);
                        memset(buf, 0, 24);
                        if (!v510)
                        {
                          goto LABEL_456;
                        }

                        goto LABEL_443;
                      }

                      if (v532)
                      {
                        v546 = 0;
                        goto LABEL_455;
                      }
                    }

                    else if (v510)
                    {
                      goto LABEL_442;
                    }

                    memset(buf, 0, 24);
                    goto LABEL_456;
                  }

                  v529 = 0;
                }

                v527[5] = v529;
                v527[6] = v529;
                v527[7] = 1;
                sub_2622C58F8(v527);
                sub_2622C5A18(v527, v530);
                goto LABEL_439;
              }

              v525 = 0;
            }

            *(v523 + 40) = v525;
            *(v523 + 48) = v525;
            sub_2622C58F8(v523);
            sub_2622C5A18(v523, v526);
            goto LABEL_434;
          }

          v521 = 0;
        }

        *(v519 + 40) = v521;
        *(v519 + 48) = v521;
        sub_2622C58F8(v519);
        sub_2622C5A18(v519, v522);
        goto LABEL_429;
      }

      v517 = 0;
    }

    *(v515 + 40) = v517;
    *(v515 + 48) = v517;
    sub_2622C58F8(v515);
    sub_2622C5A18(v515, v518);
    goto LABEL_424;
  }

  if (qword_27FF0C090 != -1)
  {
    dispatch_once(&qword_27FF0C090, &unk_2874EE160);
  }

  v1019 = qword_27FF0C088;
  if (os_log_type_enabled(v1019, OS_LOG_TYPE_DEBUG))
  {
    buf[0].i32[0] = 138412290;
    *(buf + 4) = @"fp_earlyout_accumulation";
    _os_log_debug_impl(&dword_2621C3000, v1019, OS_LOG_TYPE_DEBUG, "pnp measurement: %@", buf, 0xCu);
  }

  v1027 = 0;
LABEL_913:

LABEL_914:
  sub_2621CD534(&v1075);

  return v1027;
}

void sub_2621F4C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _Unwind_Exception *exception_object, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_2621CD534(&a55);

  _Unwind_Resume(a1);
}

uint64_t sub_2621F5A14()
{
  v0 = @"fp_earlyout_windowDoorDetect";
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v1, v2);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"fp_earlyout_windowDoorDetect");

  return v5;
}

void sub_2621F5E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2621F5F0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 48);
    v61 = v3;
    v5 = v3;
    if (v4)
    {
      v77 = 4992;
      v78 = 0;
      kdebug_trace();
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v8 = objc_msgSend_depthBuffer(v5, v6, v7);
      Width = CVPixelBufferGetWidth(v8);
      v12 = objc_msgSend_depthBuffer(v5, v10, v11);
      Height = CVPixelBufferGetHeight(v12);
      if (Height * Width)
      {
        sub_2622ABC20(&v74, Height * Width);
        v72 = objc_msgSend_depthBuffer(v5, v14, v15);
        CVPixelBufferLockBaseAddress(v72, 1uLL);
        v16 = CVPixelBufferGetWidth(v72);
        v73 = CVPixelBufferGetHeight(v72);
        BaseAddress = CVPixelBufferGetBaseAddress(v72);
        BytesPerRow = CVPixelBufferGetBytesPerRow(v72);
        v62 = v5;
        v66 = Height;
        if (Height)
        {
          v64 = BytesPerRow;
          v21 = 0;
          v23 = v75;
          v22 = v76;
          v24 = v74;
          do
          {
            v69 = v21;
            if (Width)
            {
              v25 = 0;
              v26 = v21;
              do
              {
                v27 = v25;
                v28 = 0;
                if ((v27 & 0x80000000) == 0 && v16 > v27 && (v26 & 0x80000000) == 0 && v73 > v26)
                {
                  v28 = *&BaseAddress[4 * v27 + v64 * v26];
                }

                if (v23 >= v22)
                {
                  v29 = v23 - v24;
                  v30 = (v23 - v24) >> 2;
                  v31 = v30 + 1;
                  if ((v30 + 1) >> 62)
                  {
                    v74 = v24;
                    sub_2621CBEB0();
                  }

                  if ((v22 - v24) >> 1 > v31)
                  {
                    v31 = (v22 - v24) >> 1;
                  }

                  if (v22 - v24 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v32 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v32 = v31;
                  }

                  if (v32)
                  {
                    sub_2621C7F54(v32);
                  }

                  v33 = (4 * v30);
                  v22 = 0;
                  *v33 = v28;
                  v23 = (v33 + 1);
                  memcpy(0, v24, v29);
                  if (v24)
                  {
                    operator delete(v24);
                  }

                  v24 = 0;
                }

                else
                {
                  *v23 = v28;
                  v23 += 4;
                }

                ++v25;
              }

              while (Width != v25);
            }

            v21 = v69 + 1;
          }

          while (v69 + 1 != v66);
          v75 = v23;
          v76 = v22;
          v74 = v24;
          v5 = v62;
        }

        v34 = objc_msgSend_semanticLabelBuffer(v5, v19, v20);
        v35 = CVPixelBufferGetWidth(v34);
        v38 = objc_msgSend_semanticLabelBuffer(v5, v36, v37);
        v67 = CVPixelBufferGetHeight(v38);
        pixelBuffer = objc_msgSend_semanticLabelBuffer(v5, v39, v40);
        CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
        CVPixelBufferGetWidth(pixelBuffer);
        CVPixelBufferGetHeight(pixelBuffer);
        CVPixelBufferGetBaseAddress(pixelBuffer);
        CVPixelBufferGetBytesPerRow(pixelBuffer);
        v43 = v67 * v35;
        if (v67 * v35)
        {
          if (!(v43 >> 62))
          {
            sub_2621C7F54(v43);
          }

          sub_2621CBEB0();
        }

        if (v67)
        {
          v44 = 0;
          do
          {
            v70 = v44;
            if (v35)
            {
              sub_2621C7F54(1uLL);
            }

            ++v44;
          }

          while (v70 + 1 != v67);
        }

        v45 = objc_msgSend_camera(v62, v41, v42);
        objc_msgSend_imageResolution(v45, v46, v47);

        v50 = objc_msgSend_camera(v62, v48, v49);
        objc_msgSend_intrinsics(v50, v51, v52);
        v53.i32[3] = 0;
        v54.i32[3] = 0;
        v63 = v53;
        v65 = v54;
        v55.i32[3] = 0;
        v68 = v55;

        v80.columns[0] = v63;
        v80.columns[1] = v65;
        v80.columns[2] = v68;
        v80.columns[3] = xmmword_2623A7810;
        __invert_f4(v80);
        v60 = objc_msgSend_camera(v62, v56, v57);
        objc_msgSend_pose(v60, v58, v59);
        v5 = v62;

        CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
        CVPixelBufferUnlockBaseAddress(v72, 1uLL);
        if (v74)
        {
          operator delete(v74);
        }
      }

      sub_2621CD534(&v77);
    }

    v3 = v61;
  }
}