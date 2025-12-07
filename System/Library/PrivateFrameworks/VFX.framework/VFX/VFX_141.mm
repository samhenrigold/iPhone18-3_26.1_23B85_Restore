uint64_t sub_1AFBD03F8()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v32 = qword_1ED73B840;
  v33 = 0;
  v34 = 2;
  v35 = 0;
  v36 = 2;
  v37 = 0;
  sub_1AF704C90(1, &v15);
  v1 = v16;
  v2 = v17;
  v3 = v19;
  v4 = v18 | 4;
  *(v0 + 16) = v15;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AF704CA4(1, v20);
  v5 = v20[1];
  *(v0 + 56) = v20[0];
  *(v0 + 72) = v5;
  *(v0 + 88) = v21;
  sub_1AF7033E0(1, &v22);
  v6 = v23;
  v7 = v24;
  v8 = v26;
  v9 = v25 | 4;
  *(v0 + 96) = v22;
  *(v0 + 104) = v6;
  *(v0 + 108) = v7;
  *(v0 + 112) = v9;
  *(v0 + 120) = 2;
  *(v0 + 128) = v8;
  sub_1AF704CB8(1, &v27);
  v10 = v28;
  v11 = v29;
  v12 = v31;
  v13 = v30 | 4;
  *(v0 + 136) = v27;
  *(v0 + 144) = v10;
  *(v0 + 148) = v11;
  *(v0 + 152) = v13;
  *(v0 + 160) = 2;
  *(v0 + 168) = v12;
  return v0;
}

uint64_t sub_1AFBD0558()
{
  v0 = swift_allocObject();
  sub_1AFBD03F8();
  return v0;
}

uint64_t sub_1AFBD05B4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBD0698(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFBD0768(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFBD0848@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFBD765C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFBD0878(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007974;
  v4 = 0x69746E456873656DLL;
  v5 = 0xEC0000006E6F6974;
  v6 = 0x7562697274736964;
  v7 = 0xE700000000000000;
  v8 = 0x736E6F6974706FLL;
  if (v2 != 3)
  {
    v8 = 1684366707;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x746E756F63;
    v3 = 0xE500000000000000;
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

uint64_t sub_1AFBD0918()
{
  v1 = *v0;
  v2 = 0x69746E456873656DLL;
  v3 = 0x7562697274736964;
  v4 = 0x736E6F6974706FLL;
  if (v1 != 3)
  {
    v4 = 1684366707;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E756F63;
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

unint64_t sub_1AFBD09B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFBD765C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFBD09DC(uint64_t a1)
{
  v2 = sub_1AFBDDC68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBD0A18(uint64_t a1)
{
  v2 = sub_1AFBDDC68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFBD0AC4(uint64_t a1, int8x16_t a2)
{
  v3 = (*(v2 + 48) + 24 * a1);
  v4 = *(v2 + 8) + 32;
  v5 = *(v4 + 16 * v3[4]);
  v6 = *(v4 + 16 * v3[5]);
  v7 = *(v4 + 16 * v3[6]);
  v8 = vmuls_lane_f32(*a2.i32, v5, 2);
  v9 = vmul_f32(vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
  v10 = vaddq_f32(vaddq_f32(vmulq_n_f32(v5, *a2.i32), vmulq_lane_f32(v6, *a2.i8, 1)), vmulq_laneq_f32(v7, a2, 2));
  v10.f32[2] = (v8 + v9.f32[0]) + v9.f32[1];
  v11 = vabsq_f32(v10);
  result = 0.0;
  if (v11.f32[0] > 0.00000011921 || v11.f32[1] > 0.00000011921 || v11.f32[2] > 0.00000011921)
  {
    v15 = vmulq_f32(v10, v10);
    *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
    *v15.f32 = vrsqrte_f32(v16);
    *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
    *&result = vmulq_n_f32(v10, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]).u64[0];
  }

  return result;
}

__n128 sub_1AFBD0BD0(uint64_t a1, int32x4_t a2)
{
  v3 = 0;
  v4 = (v2[6] + 24 * a1);
  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[6];
  v8 = v2[4] + 32;
  v9 = *(v8 + 8 * v5);
  v10 = v2[5] + 32;
  v11 = *(v10 + 16 * v5);
  v12 = vdupq_lane_s32(*a2.i8, 0);
  v13 = MEMORY[0x1E69E7CC0];
  v65 = v12;
  v68 = v11;
  do
  {
    v81 = v12;
    v15 = *(&v81 & 0xFFFFFFFFFFFFFFF3 | (4 * (v3 & 3)));
    v82 = v11;
    v16 = v15 * *(&v82 & 0xFFFFFFFFFFFFFFF3 | (4 * (v3 & 3)));
    if (v16 > 0.0)
    {
      v80 = v9;
      v17 = *(&v80 & 0xFFFFFFFFFFFFFFF9 | (2 * (v3 & 3)));
      v18 = *(v13 + 2);
      if (v18)
      {
        v19 = 0;
        v20 = *(v13 + 2);
        while (*&v13[v19 + 32] != v17)
        {
          v19 += 8;
          if (!--v20)
          {
            goto LABEL_9;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AFC0DE34(v13);
        }

        v12 = v65;
        v11 = v68;
        *&v13[v19 + 36] = v16 + *&v13[v19 + 36];
      }

      else
      {
LABEL_9:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AF4280BC(0, v18 + 1, 1, v13);
        }

        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        v12 = v65;
        v11 = v68;
        if (v22 >= v21 >> 1)
        {
          v23 = sub_1AF4280BC(v21 > 1, v22 + 1, 1, v13);
          v12 = v65;
          v11 = v68;
          v13 = v23;
        }

        *(v13 + 2) = v22 + 1;
        v14 = &v13[8 * v22];
        *(v14 + 16) = v17;
        *(v14 + 9) = v16;
      }
    }

    ++v3;
  }

  while (v3 != 4);
  v24 = 0;
  v25 = *(v8 + 8 * v6);
  v26 = *(v10 + 16 * v6);
  v27 = vdupq_lane_s32(*a2.i8, 1);
  v66 = v27;
  v69 = v26;
  do
  {
    v78 = v27;
    v29 = *(&v78 & 0xFFFFFFFFFFFFFFF3 | (4 * (v24 & 3)));
    v79 = v26;
    v30 = v29 * *(&v79 & 0xFFFFFFFFFFFFFFF3 | (4 * (v24 & 3)));
    if (v30 > 0.0)
    {
      v77 = v25;
      v31 = *(&v77 & 0xFFFFFFFFFFFFFFF9 | (2 * (v24 & 3)));
      v32 = *(v13 + 2);
      if (v32)
      {
        v33 = 0;
        v34 = *(v13 + 2);
        while (*&v13[v33 + 32] != v31)
        {
          v33 += 8;
          if (!--v34)
          {
            goto LABEL_24;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AFC0DE34(v13);
        }

        v27 = v66;
        v26 = v69;
        *&v13[v33 + 36] = v30 + *&v13[v33 + 36];
      }

      else
      {
LABEL_24:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AF4280BC(0, v32 + 1, 1, v13);
        }

        v36 = *(v13 + 2);
        v35 = *(v13 + 3);
        v27 = v66;
        v26 = v69;
        if (v36 >= v35 >> 1)
        {
          v37 = sub_1AF4280BC(v35 > 1, v36 + 1, 1, v13);
          v27 = v66;
          v26 = v69;
          v13 = v37;
        }

        *(v13 + 2) = v36 + 1;
        v28 = &v13[8 * v36];
        *(v28 + 16) = v31;
        *(v28 + 9) = v30;
      }
    }

    ++v24;
  }

  while (v24 != 4);
  v38 = 0;
  v39 = *(v8 + 8 * v7);
  v40 = *(v10 + 16 * v7);
  v41 = vdupq_laneq_s32(a2, 2);
  v67 = v41;
  v70 = v40;
  do
  {
    v75 = v41;
    v43 = *(&v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v38 & 3)));
    v76 = v40;
    v44 = v43 * *(&v76 & 0xFFFFFFFFFFFFFFF3 | (4 * (v38 & 3)));
    if (v44 > 0.0)
    {
      v74 = v39;
      v45 = *(&v74 & 0xFFFFFFFFFFFFFFF9 | (2 * (v38 & 3)));
      v46 = *(v13 + 2);
      if (v46)
      {
        v47 = 0;
        v48 = *(v13 + 2);
        while (*&v13[v47 + 32] != v45)
        {
          v47 += 8;
          if (!--v48)
          {
            goto LABEL_39;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AFC0DE34(v13);
        }

        v41 = v67;
        v40 = v70;
        *&v13[v47 + 36] = v44 + *&v13[v47 + 36];
      }

      else
      {
LABEL_39:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AF4280BC(0, v46 + 1, 1, v13);
        }

        v50 = *(v13 + 2);
        v49 = *(v13 + 3);
        v41 = v67;
        v40 = v70;
        if (v50 >= v49 >> 1)
        {
          v51 = sub_1AF4280BC(v49 > 1, v50 + 1, 1, v13);
          v41 = v67;
          v40 = v70;
          v13 = v51;
        }

        *(v13 + 2) = v50 + 1;
        v42 = &v13[8 * v50];
        *(v42 + 16) = v45;
        *(v42 + 9) = v44;
      }
    }

    ++v38;
  }

  while (v38 != 4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AFC0DE34(v13);
  }

  v52 = *(v13 + 2);
  v83[0] = (v13 + 32);
  v83[1] = v52;
  sub_1AFBD6CD4(v83);
  v53 = *(v13 + 2);
  if (v53 <= 4)
  {
    if (!v53)
    {
      v57 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v53 = 4;
  }

  v54 = 0;
  v55 = 0uLL;
  v56 = v13 + 36;
  v57 = 0;
  do
  {
    v58 = (&v73 & 0xFFFFFFFFFFFFFFF9 | (2 * (v54 & 3)));
    v59 = (&v72 & 0xFFFFFFFFFFFFFFF3 | (4 * (v54 & 3)));
    v60 = v54 + 1;
    v61 = *(v56 - 2);
    v62 = *v56;
    v56 += 2;
    v73 = v57;
    *v58 = v61;
    v57 = v73;
    v72 = v55;
    *v59 = v62;
    v55 = v72;
    v54 = v60;
  }

  while (v53 != v60);
LABEL_53:
  v71 = v57;

  return v71;
}

char *sub_1AFBD10C4()
{
  result = sub_1AF422C28(0, 4, 0, MEMORY[0x1E69E7CC0]);
  if (*(v0 + 24))
  {
    v3 = *(result + 2);
    v2 = *(result + 3);
    if (v3 >= v2 >> 1)
    {
      result = sub_1AF422C28(v2 > 1, v3 + 1, 1, result);
    }

    *(result + 2) = v3 + 1;
    v4 = &result[16 * v3];
    *(v4 + 4) = &type metadata for Position;
    *(v4 + 5) = &off_1F252EE70;
    if ((*(v0 + 25) & 1) == 0)
    {
LABEL_3:
      if ((*(v0 + 26) & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v0 + 25) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(result + 2);
  v5 = *(result + 3);
  if (v6 >= v5 >> 1)
  {
    result = sub_1AF422C28(v5 > 1, v6 + 1, 1, result);
  }

  *(result + 2) = v6 + 1;
  v7 = &result[16 * v6];
  *(v7 + 4) = &type metadata for Color;
  *(v7 + 5) = &off_1F252CA88;
  if ((*(v0 + 26) & 1) == 0)
  {
LABEL_4:
    if ((*(v0 + 27) & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v9 = *(result + 2);
  v8 = *(result + 3);
  if (v9 >= v8 >> 1)
  {
    result = sub_1AF422C28(v8 > 1, v9 + 1, 1, result);
  }

  *(result + 2) = v9 + 1;
  v10 = &result[16 * v9];
  *(v10 + 4) = &type metadata for Velocity;
  *(v10 + 5) = &off_1F2530AF8;
  if ((*(v0 + 27) & 1) == 0)
  {
LABEL_5:
    if ((*(v0 + 28) & 1) == 0)
    {
      return result;
    }

LABEL_19:
    v14 = result;

    v15 = sub_1AF3CF75C(*v0);

    if (v15)
    {
      if (*(v15 + 16))
      {
        v16 = sub_1AF419914(1702521203, 0xE400000000000000);
        if (v17)
        {
          v18 = *(*(v15 + 56) + 32 * v16 + 24);

          if (v18 != 30)
          {
            result = v14;
            if (v18 != 29)
            {
              if (v18 != 28)
              {
                return result;
              }

              v20 = *(v14 + 2);
              v19 = *(v14 + 3);
              v21 = v20 + 1;
              v22 = &off_1F252F788;
              v23 = &type metadata for Scale1;
              if (v20 < v19 >> 1)
              {
                goto LABEL_30;
              }

              goto LABEL_35;
            }

            v20 = *(v14 + 2);
            v19 = *(v14 + 3);
            v21 = v20 + 1;
            v22 = &off_1F252F838;
            v23 = &type metadata for Scale2;
            if (v20 >= v19 >> 1)
            {
LABEL_35:
              result = sub_1AF422C28(v19 > 1, v21, 1, v14);
            }

LABEL_30:
            *(result + 2) = v21;
            v24 = &result[16 * v20];
            *(v24 + 4) = v23;
            *(v24 + 5) = v22;
            return result;
          }

          v20 = *(v14 + 2);
          v19 = *(v14 + 3);
          v21 = v20 + 1;
          v22 = &off_1F252F998;
          v23 = &type metadata for Scale3;
          if (v20 >= v19 >> 1)
          {
            goto LABEL_35;
          }

LABEL_29:
          result = v14;
          goto LABEL_30;
        }
      }
    }

    v20 = *(v14 + 2);
    v19 = *(v14 + 3);
    v21 = v20 + 1;
    v22 = &off_1F252F788;
    v23 = &type metadata for Scale1;
    if (v20 >= v19 >> 1)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

LABEL_16:
  v12 = *(result + 2);
  v11 = *(result + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_1AF422C28(v11 > 1, v12 + 1, 1, result);
  }

  *(result + 2) = v12 + 1;
  v13 = &result[16 * v12];
  *(v13 + 4) = &type metadata for Orientation;
  *(v13 + 5) = &off_1F252C8A8;
  if (*(v0 + 28))
  {
    goto LABEL_19;
  }

  return result;
}

unint64_t sub_1AFBD13F0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000012;
    v6 = 0x72546E6F69746F6DLL;
    if (a1 != 8)
    {
      v6 = 0x5374697265686E69;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000012;
    if (a1 != 5)
    {
      v7 = 0x6E6F74656C656B73;
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
    v1 = 0x636143746E696F70;
    v2 = 0x5074697265686E69;
    v3 = 0x4374697265686E69;
    if (a1 != 3)
    {
      v3 = 0x5674697265686E69;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x797469636F6C6576;
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

double sub_1AFBD1578@<D0>(uint64_t a1@<X8>)
{
  *&v1 = 0xFFFFFFFFLL;
  *(&v1 + 1) = 0xFFFFFFFFLL;
  *a1 = v1;
  *(a1 + 16) = 0x400000003F800000;
  *&result = 65793;
  *(a1 + 24) = 65793;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1AFBD15A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AFBD13F0(*a1);
  v5 = v4;
  if (v3 == sub_1AFBD13F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFBD162C()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFBD13F0(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBD1690(uint64_t a1)
{
  sub_1AFBD13F0(*v1);
  sub_1AFDFD038();
}

uint64_t sub_1AFBD16E4(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AFBD13F0(v2);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFBD1744@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFBD7440(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AFBD1774@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AFBD13F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AFBD17BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFBD7440(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFBD17E4(uint64_t a1)
{
  v2 = sub_1AFBDDA2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBD1820(uint64_t a1)
{
  v2 = sub_1AFBDDA2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBD185C(void *a1)
{
  v3 = v1;
  sub_1AFBDEAB4(0, &qword_1EB643378, sub_1AFBDDA2C, &type metadata for PointCacheEmitter.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDDA2C();
  sub_1AFDFF3F8();
  v13 = *v3;
  v12 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = v3[2];
    v12 = 1;
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1EB6398A0, MEMORY[0x1E69E6458], MEMORY[0x1E69E66B0]);
    sub_1AFDFE918();
    LOBYTE(v13) = 2;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 3;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 4;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 5;
    sub_1AFDFE8C8();
    v13 = v3[1];
    v12 = 6;
    sub_1AFDFE918();
    LOBYTE(v13) = *(v3 + 29);
    v12 = 7;
    sub_1AF51D648();
    sub_1AFDFE918();
    LOBYTE(v13) = 8;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 9;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v9, v6);
}

double sub_1AFBD1BC0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFBD9A40(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AFBD1C20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[2];
  v8 = *(v7 + 32);
  ecs_stack_allocator_push_snapshot(v8);
  v9 = sub_1AF3CF75C(*v3);
  if (v9)
  {
    v11 = v9;
    v12 = v10;

    sub_1AFB93E58();
    if (v12 >= 1)
    {
      v14 = v13;
      v556 = *(a3 + 8);
      v551 = a2;
      v552 = *(a3 + 12);
      v565 = a1[3];
      v568 = a1[6];
      v567 = a1[7];
      v563 = *(a2 + 104);
      v575 = v3;
      if (*(v3 + 25))
      {
        sub_1AFBD94C4(v11, 0x726F6C6F63, 0xE500000000000000);
        if (v15)
        {
          v17 = v15;
          v18 = v16;
          if ([swift_unknownObjectRetain() storageMode] == 2)
          {
            swift_unknownObjectRelease_n();
          }

          else
          {
            v20 = [v17 contents];
            v21 = v17;
            swift_unknownObjectRelease();
            v22 = sub_1AF70596C(a1[1], a1);
            v23 = v567 - v568;
            if (v567 != v568)
            {
              v24 = v565 + v563;
              v25 = &v22[16 * v568];
              do
              {
                *v25 = *&v20[16 * (v24 % v12) + v18];
                v25 += 16;
                ++v24;
                --v23;
              }

              while (v23);
            }
          }
        }
      }

      if (*(v575 + 28))
      {
        sub_1AFBD94C4(v11, 1702521203, 0xE400000000000000);
        if (v26)
        {
          v29 = v26;
          if (v28 == 28)
          {
            v30 = v27;
            if ([swift_unknownObjectRetain() storageMode] != 2)
            {
              v41 = [v29 contents];
              v42 = v29;
              swift_unknownObjectRelease();
              v43 = &v41[v30];
              v44 = sub_1AF9C5D44();
              if (v45)
              {
                v46 = sub_1AF70641C(a1[1], a1);
                v47 = v567 - v568;
                if (v567 != v568)
                {
                  v48 = v565 + v563;
                  v49 = &v46[16 * v568];
                  do
                  {
                    v50 = &v43[4 * (v48 % v12)];
                    v51 = vld1q_dup_f32(v50);
                    v51.i32[3] = 0;
                    *v49++ = v51;
                    ++v48;
                    --v47;
                  }

                  while (v47);
                }
              }

              else
              {
                v71 = v567 - v568;
                if (v567 != v568)
                {
                  v72 = v565 + v563;
                  v73 = &v44[4 * v568];
                  do
                  {
                    *v73 = *&v43[4 * (v72 % v12)];
                    v73 += 4;
                    ++v72;
                    --v71;
                  }

                  while (v71);
                }
              }

              goto LABEL_57;
            }

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        sub_1AFBD94C4(v11, 1702521203, 0xE400000000000000);
        if (v31)
        {
          v34 = v31;
          if (v33 == 29)
          {
            v35 = v32;
            if ([swift_unknownObjectRetain() storageMode] != 2)
            {
              v52 = [v34 contents];
              v53 = v34;
              swift_unknownObjectRelease();
              v54 = &v52[v35];
              v55 = sub_1AF9C5D58();
              if (v56)
              {
                v57 = sub_1AF70641C(a1[1], a1);
                v59 = v567 - v568;
                if (v567 != v568)
                {
                  v60 = v565 + v563;
                  v61 = &v57[16 * v568];
                  do
                  {
                    *&v58 = *&v54[8 * (v60 % v12)];
                    *v61 = v58;
                    v61 += 16;
                    ++v60;
                    --v59;
                  }

                  while (v59);
                }
              }

              else
              {
                v74 = v567 - v568;
                if (v567 != v568)
                {
                  v75 = v565 + v563;
                  v76 = &v55[8 * v568];
                  do
                  {
                    *v76 = *&v54[8 * (v75 % v12)];
                    v76 += 8;
                    ++v75;
                    --v74;
                  }

                  while (v74);
                }
              }

              goto LABEL_57;
            }

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        sub_1AFBD94C4(v11, 1702521203, 0xE400000000000000);
        if (v36)
        {
          v39 = v36;
          if (v38 != 30)
          {
LABEL_29:
            swift_unknownObjectRelease();
            goto LABEL_57;
          }

          v40 = v37;
          if ([swift_unknownObjectRetain() storageMode] == 2)
          {
            swift_unknownObjectRelease();
            goto LABEL_29;
          }

          v62 = [v39 contents];
          v63 = v39;
          swift_unknownObjectRelease();
          v64 = &v62[v40];
          v65 = sub_1AF9C5E74();
          if (v67)
          {
            v68 = sub_1AF70641C(a1[1], a1);
            v70 = v567 - v568;
            if (v567 != v568)
            {
              v82 = v565 + v563;
              v83 = &v68[16 * v568];
              do
              {
                v84 = &v64[12 * (v82 % v12)];
                *&v85 = *v84;
                DWORD2(v85) = *(v84 + 2);
                HIDWORD(v85) = v69;
                *v83 = v85;
                v83 += 16;
                ++v82;
                --v70;
              }

              while (v70);
            }
          }

          else
          {
            v77 = v567 - v568;
            if (v567 != v568)
            {
              v78 = v565 + v563;
              v79 = &v65[16 * v568];
              do
              {
                v80 = &v64[12 * (v78 % v12)];
                *&v81 = *v80;
                DWORD2(v81) = *(v80 + 2);
                HIDWORD(v81) = v66;
                *v79 = v81;
                v79 += 16;
                ++v78;
                --v77;
              }

              while (v77);
            }
          }
        }
      }

LABEL_57:
      if (*(v11 + 16) && (v86 = sub_1AF419914(0x797469636F6C6576, 0xE800000000000000), (v87 & 1) != 0))
      {
        v88 = *(v11 + 56) + 32 * v86;
        v90 = *v88;
        v89 = *(v88 + 8);
        v91 = *(v88 + 24) == 30;
        swift_unknownObjectRetain();
      }

      else
      {
        v90 = 0;
        v89 = 0;
        v91 = 0;
      }

      if ((*(v575 + 26) & 1) == 0)
      {
        goto LABEL_66;
      }

      if (!v90)
      {
        v560 = 1;
        goto LABEL_94;
      }

      if (!v91)
      {
LABEL_66:
        v560 = 0;
        goto LABEL_94;
      }

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        goto LABEL_66;
      }

      v92 = [v90 contents];
      v93 = v90;
      v94 = &v92[v89];
      v545 = sub_1AF705CCC(a1[1], a1);

      sub_1AFB95E64(v556 | (v552 << 32), &v577);

      if (v580)
      {
        v95 = v567 - v568;
        if (v567 != v568)
        {
          v96 = v565 + v563;
          v97 = &v545[16 * v568];
          do
          {
            v98 = &v94[12 * (v96 % v12)];
            *&v99 = *v98;
            *(&v99 + 1) = *(v98 + 2);
            *v97 = v99;
            v97 += 16;
            ++v96;
            --v95;
          }

          while (v95);
        }

LABEL_93:
        sub_1AFBD9424(v545, v568, v567, (v551 + 8), *(v575 + 16), *(v575 + 20));
        v560 = 0;
LABEL_94:
        sub_1AFBD94C4(v11, 0x6E6F697469736F70, 0xE800000000000000);
        if (!v141)
        {

LABEL_101:
          swift_unknownObjectRelease();
          return ecs_stack_allocator_pop_snapshot(v8);
        }

        v144 = v141;
        if (v143 != 30)
        {

          goto LABEL_100;
        }

        v145 = v142;
        if ([swift_unknownObjectRetain() storageMode] == 2)
        {

          swift_unknownObjectRelease();
LABEL_100:
          swift_unknownObjectRelease();

          goto LABEL_101;
        }

        v146 = [v144 contents];
        v147 = v144;
        swift_unknownObjectRelease();
        sub_1AFBD94C4(v11, 0x6C616D726F6ELL, 0xE600000000000000);
        if (v150)
        {
          if (v149 == 30)
          {
            v546 = v148;
            v151 = swift_unknownObjectRetain();
            if ([v151 storageMode] != 2)
            {
              v158 = [v151 contents];
              v159 = v151;
              swift_unknownObjectRelease();
              v549 = 0;
              v547 = &v158[v546];
              if (!*(v11 + 16))
              {
                goto LABEL_114;
              }

LABEL_109:
              v152 = sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
              if (v153)
              {
                v154 = *(v11 + 56) + 32 * v152;
                if (*(v154 + 24) == 31)
                {
                  v544 = v8;
                  v155 = *v154;
                  v156 = *(v154 + 8);
                  if ([swift_unknownObjectRetain_n() storageMode] == 2)
                  {
                    swift_unknownObjectRelease_n();
                    v157 = 0;
                    v542 = 1;
                  }

                  else
                  {
                    v245 = [v155 contents];
                    v246 = v155;
                    swift_unknownObjectRelease();
                    v542 = 0;
                    v157 = &v245[v156];
                  }

                  v8 = v544;
LABEL_115:
                  v541 = &v146[v145];
                  sub_1AF3C9244(v556 | (v552 << 32), v581);
                  sub_1AF3CB9BC(*(v575 + 8), &v583);
                  if (v584)
                  {
                    v557 = v584;
                    v160 = v586;
                    v161 = v587;
                    v553 = v583;
                    v162 = v585;
                    v163 = *(v7 + 32);
                    ecs_stack_allocator_push_snapshot(v163);
                    v590 = v162;
                    v164 = *(v162 + 16);
                    v165 = ecs_stack_allocator_allocate(v163, v164 << 6, 16);
                    v543 = v163;
                    v166 = ecs_stack_allocator_allocate(v163, v164 << 6, 16);
                    v539 = v165;
                    if (v164)
                    {
                      v167 = v160 + 10;
                      v168 = v165 + 2;
                      v169 = v161;
                      v170 = v161 + 10;
                      v171 = v166 + 2;
                      do
                      {
                        v172 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v167[-4].f32)), xmmword_1AFE20160, v167[-4], 1), xmmword_1AFE20180, *v167[-4].f32, 2), xmmword_1AFE201A0, *v167[-4].f32, 3);
                        v173 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v167[-2].f32)), xmmword_1AFE20160, v167[-2], 1), xmmword_1AFE20180, *v167[-2].f32, 2), xmmword_1AFE201A0, *v167[-2].f32, 3);
                        v174 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v167->f32)), xmmword_1AFE20160, *v167, 1), xmmword_1AFE20180, *v167->f32, 2), xmmword_1AFE201A0, *v167->f32, 3);
                        v168[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v167[-6].f32)), xmmword_1AFE20160, v167[-6], 1), xmmword_1AFE20180, *v167[-6].f32, 2), xmmword_1AFE201A0, *v167[-6].f32, 3);
                        v168[-1] = v172;
                        *v168 = v173;
                        v168[1] = v174;
                        v168 += 4;
                        v175 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v170[-4].f32)), xmmword_1AFE20160, v170[-4], 1), xmmword_1AFE20180, *v170[-4].f32, 2), xmmword_1AFE201A0, *v170[-4].f32, 3);
                        v176 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v170[-2].f32)), xmmword_1AFE20160, v170[-2], 1), xmmword_1AFE20180, *v170[-2].f32, 2), xmmword_1AFE201A0, *v170[-2].f32, 3);
                        v177 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v170->f32)), xmmword_1AFE20160, *v170, 1), xmmword_1AFE20180, *v170->f32, 2), xmmword_1AFE201A0, *v170->f32, 3);
                        v171[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v170[-6].f32)), xmmword_1AFE20160, v170[-6], 1), xmmword_1AFE20180, *v170[-6].f32, 2), xmmword_1AFE201A0, *v170[-6].f32, 3);
                        v171[-1] = v175;
                        v167 += 8;
                        *v171 = v176;
                        v171[1] = v177;
                        v171 += 4;
                        v170 += 8;
                        --v164;
                      }

                      while (v164);
                    }

                    else
                    {
                      v169 = v161;
                    }

                    if (!*(v11 + 16) || (v537 = v166, v187 = sub_1AF419914(0x646E49746E696F6ALL, 0xEC00000073656369), (v188 & 1) == 0) || (v189 = *(v11 + 56) + 32 * v187, *(v189 + 24) != 18))
                    {

                      goto LABEL_146;
                    }

                    v535 = v169;
                    v190 = *v189;
                    v191 = *(v189 + 8);
                    if ([swift_unknownObjectRetain_n() storageMode] == 2)
                    {

                      swift_unknownObjectRelease_n();
LABEL_146:

LABEL_147:
                      ecs_stack_allocator_pop_snapshot(v543);

                      swift_unknownObjectRelease();
                      v591 = v553;
                      sub_1AFBDDAE4(&v591, &qword_1EB643380, type metadata accessor for SkeletonData, MEMORY[0x1E69E6720]);
                      v592 = v557;
                      v232 = MEMORY[0x1E69E62F8];
                      sub_1AFBDDAE4(&v592, &qword_1EB643388, type metadata accessor for simd_float4x4, MEMORY[0x1E69E62F8]);
                      sub_1AFBDDAE4(&v590, &qword_1EB643388, type metadata accessor for simd_float4x4, v232);
                      v593 = v160;
                      sub_1AFBDDAE4(&v593, &qword_1EB643388, type metadata accessor for simd_float4x4, v232);
                      v588.columns[0].i64[0] = v169;
                      sub_1AFBDDAE4(&v588, &qword_1EB643388, type metadata accessor for simd_float4x4, v232);
                      return ecs_stack_allocator_pop_snapshot(v8);
                    }

                    v247 = [v190 contents];
                    v248 = v190;
                    swift_unknownObjectRelease();
                    if (!*(v11 + 16) || (v249 = sub_1AF419914(0x696557746E696F6ALL, 0xEC00000073746867), (v250 & 1) == 0))
                    {

                      goto LABEL_147;
                    }

                    v533 = v160;
                    v251 = *(v11 + 56) + 32 * v249;
                    v252 = *v251;
                    v253 = *(v251 + 8);
                    v254 = *(v251 + 24);
                    swift_unknownObjectRetain();

                    if (v254 != 31)
                    {
                      swift_unknownObjectRelease();
                      goto LABEL_228;
                    }

                    if ([swift_unknownObjectRetain() storageMode] == 2)
                    {
                      swift_unknownObjectRelease_n();
LABEL_228:
                      v169 = v535;
                      goto LABEL_147;
                    }

                    v355 = [v252 contents];
                    v356 = v252;
                    swift_unknownObjectRelease();
                    v357 = a1[1];
                    v572 = sub_1AF705C38(v357, a1);
                    if (v560)
                    {
                      v527 = sub_1AF705CCC(v357, a1);
                    }

                    else
                    {
                      v527 = 0;
                    }

                    v362 = *(v575 + 27);
                    if (v362)
                    {
                      v363 = sub_1AF705C10(v357, a1);
                    }

                    else
                    {
                      v363 = 0;
                    }

                    v364 = &v247[v191];
                    v365 = &v355[v253];
                    v366 = *(v575 + 32) / v14;
                    v367 = v560;
                    v368 = v541;
                    if ((v560 & 1) != 0 || (*(v575 + 24)) && v366 > 0.0)
                    {
                      v369 = v567 - v568;
                      v370 = v537;
                      if (v567 != v568)
                      {
                        v371 = *(v575 + 24);
                        v372 = *(v575 + 29);
                        v373 = v549 | v362 ^ 1;
                        v374 = v565 + v563;
                        v375 = &v572[16 * v568];
                        v376 = &v527[16 * v568];
                        v377 = &v363[16 * v568];
                        v378 = 0uLL;
                        v361.i32[0] = 1.0;
                        __asm { FMOV            V26.4S, #1.0 }

                        v380.i64[0] = 0x8000000080000000;
                        v380.i64[1] = 0x8000000080000000;
                        v526 = v364;
                        v525 = *(v575 + 32) / v14;
                        v523 = v372;
                        v524 = v371;
                        v522 = v373;
                        v521 = _Q26;
                        do
                        {
                          v384 = v360.i32[3];
                          v385 = v374 % v12;
                          v386 = *&v365[16 * (v374 % v12)];
                          v387 = *&v364[8 * (v374 % v12)];
                          v388 = v387 << 6;
                          v389 = vaddq_f32(vmulq_n_f32(*(v539 + v388), v386.f32[0]), v378);
                          v390 = vaddq_f32(vmulq_n_f32(*(v539 + v388 + 16), v386.f32[0]), v378);
                          v391 = vaddq_f32(vmulq_n_f32(*(v539 + v388 + 32), v386.f32[0]), v378);
                          v392 = vaddq_f32(vmulq_n_f32(*(v539 + v388 + 48), v386.f32[0]), v378);
                          v393 = (v370 + v388);
                          v394 = vaddq_f32(vmulq_n_f32(*v393, v386.f32[0]), v378);
                          v395 = vaddq_f32(vmulq_n_f32(v393[1], v386.f32[0]), v378);
                          v396 = vaddq_f32(vmulq_n_f32(v393[2], v386.f32[0]), v378);
                          v397 = vaddq_f32(vmulq_n_f32(v393[3], v386.f32[0]), v378);
                          v398 = SWORD1(v387) << 6;
                          v399 = vaddq_f32(v389, vmulq_lane_f32(*(v539 + v398), *v386.f32, 1));
                          v400 = vaddq_f32(v390, vmulq_lane_f32(*(v539 + v398 + 16), *v386.f32, 1));
                          v401 = vaddq_f32(v391, vmulq_lane_f32(*(v539 + v398 + 32), *v386.f32, 1));
                          v402 = vaddq_f32(v392, vmulq_lane_f32(*(v539 + v398 + 48), *v386.f32, 1));
                          v403 = (v370 + v398);
                          v404 = vaddq_f32(v394, vmulq_lane_f32(*v403, *v386.f32, 1));
                          v405 = vaddq_f32(v395, vmulq_lane_f32(v403[1], *v386.f32, 1));
                          v406 = vaddq_f32(v396, vmulq_lane_f32(v403[2], *v386.f32, 1));
                          v407 = vaddq_f32(v397, vmulq_lane_f32(v403[3], *v386.f32, 1));
                          v408 = SWORD2(v387) << 6;
                          v409 = vaddq_f32(v399, vmulq_laneq_f32(*(v539 + v408), v386, 2));
                          v410 = vaddq_f32(v400, vmulq_laneq_f32(*(v539 + v408 + 16), v386, 2));
                          v411 = vaddq_f32(v401, vmulq_laneq_f32(*(v539 + v408 + 32), v386, 2));
                          v412 = vaddq_f32(v402, vmulq_laneq_f32(*(v539 + v408 + 48), v386, 2));
                          v413 = (v370 + v408);
                          v414 = vaddq_f32(v404, vmulq_laneq_f32(*v413, v386, 2));
                          v415 = vaddq_f32(v405, vmulq_laneq_f32(v413[1], v386, 2));
                          v416 = vaddq_f32(v406, vmulq_laneq_f32(v413[2], v386, 2));
                          v417 = vaddq_f32(v407, vmulq_laneq_f32(v413[3], v386, 2));
                          v418 = SHIWORD(v387) << 6;
                          v419 = vaddq_f32(v409, vmulq_laneq_f32(*(v539 + v418), v386, 3));
                          v420 = vaddq_f32(v410, vmulq_laneq_f32(*(v539 + v418 + 16), v386, 3));
                          v421 = vaddq_f32(v411, vmulq_laneq_f32(*(v539 + v418 + 32), v386, 3));
                          v422 = vaddq_f32(v412, vmulq_laneq_f32(*(v539 + v418 + 48), v386, 3));
                          v423 = &v368[12 * (v374 % v12)];
                          v424 = vld1q_dup_f32(v423++);
                          v412.i32[0] = *&v368[12 * (v374 % v12) + 8];
                          v425 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vaddq_f32(v417, vmulq_laneq_f32(*(v370 + v418 + 48), v386, 3)), vaddq_f32(v416, vmulq_laneq_f32(*(v370 + v418 + 32), v386, 3)), v412.f32[0]), vaddq_f32(v415, vmulq_laneq_f32(*(v370 + v418 + 16), v386, 3)), *v423), vaddq_f32(v414, vmulq_laneq_f32(*(v370 + v418), v386, 3)), v424);
                          v360 = v425;
                          v360.i32[3] = v384;
                          v426 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(v422, v421, v412.f32[0]), v420, *v423), v419, v424);
                          if (v371)
                          {
                            if (v372)
                            {
                              if (v372 == 1)
                              {
                                v573 = v369;
                                v569 = v384;
                                v564 = v420;
                                v566 = v419;
                                v550 = v421;
                                v529 = v425;
                                v531 = v426;
                                v427 = sub_1AF6C0D50();
                                v425 = v529;
                                v426 = v531;
                                v421 = v550;
                                v420 = v564;
                                v419 = v566;
                                v360.i32[3] = v569;
                                v380.i64[0] = 0x8000000080000000;
                                v380.i64[1] = 0x8000000080000000;
                                _Q26 = v521;
                                v361.i32[0] = 1.0;
                                v378 = 0uLL;
                                v373 = v522;
                                v372 = v523;
                                v371 = v524;
                                v369 = v573;
                                v366 = v525;
                                v370 = v537;
                                v364 = v526;
                                v368 = v541;
                                v367 = v560;
                                v430.f32[0] = vcvts_n_f32_u64(v427 & 0xFFFFFF, 0x18uLL);
                                v428 = vsubq_f32(v531, v529);
                                v429 = v529.f32[2] + vmuls_lane_f32(v430.f32[0], v428, 2);
                                *v430.f32 = vadd_f32(*v375, vadd_f32(*v529.f32, vmul_n_f32(*v428.f32, v430.f32[0])));
                                v431 = COERCE_FLOAT(*&v375[1]) + v429;
                              }

                              else
                              {
                                v434 = (1.0 / v12) * v385;
                                v435 = vsubq_f32(v426, v425);
                                v436 = v425.f32[2] + vmuls_lane_f32(v434, v435, 2);
                                *v430.f32 = vadd_f32(vadd_f32(*v425.f32, vmul_n_f32(*v435.f32, v434)), *v375);
                                v431 = v436 + COERCE_FLOAT(*&v375[1]);
                              }

                              v430.f32[2] = v431;
                            }

                            else
                            {
                              v430 = v360;
                            }

                            v430.i32[3] = v361.i32[0];
                            *v375->f32 = v430;
                            if (v367)
                            {
LABEL_248:
                              v432 = vsubq_f32(v426, v425);
                              *&v433 = vmul_n_f32(*v432.f32, v366);
                              *(&v433 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v366, v432, 2));
                              *v376 = v433;
                              if ((v373 & 1) == 0)
                              {
                                goto LABEL_255;
                              }

                              goto LABEL_242;
                            }
                          }

                          else if (v367)
                          {
                            goto LABEL_248;
                          }

                          if ((v373 & 1) == 0)
                          {
LABEL_255:
                            v437 = vmulq_f32(v419, v419);
                            v438 = vmulq_f32(v420, v420);
                            v439 = vmulq_f32(v421, v421);
                            v440 = vzip1q_s32(v437, v439);
                            v441 = vzip2q_s32(v437, v439);
                            v442 = vtrn2q_s32(v437, v438);
                            v442.i32[2] = v439.i32[1];
                            v443 = vaddq_f32(vzip1q_s32(v441, vdupq_laneq_s32(v438, 2)), vaddq_f32(vzip1q_s32(v440, v438), v442));
                            v444 = vceqzq_f32(v443);
                            v444.i32[3] = 0;
                            v445 = vbslq_s8(vcltzq_s32(v444), v443, vdivq_f32(_Q26, v443));
                            v446 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vmulq_laneq_f32(v421, v445, 2), *&v547[12 * v385 + 8]), vmulq_lane_f32(v420, *v445.f32, 1), *&v547[12 * v385 + 4]), vmulq_n_f32(v419, v445.f32[0]), *&v547[12 * v385]);
                            v447 = vmulq_f32(v446, v446);
                            v447.f32[0] = v447.f32[2] + vaddv_f32(*v447.f32);
                            v448 = vdupq_lane_s32(*v447.f32, 0);
                            v448.i32[3] = 0;
                            v449 = vrsqrteq_f32(v448);
                            v450 = vmulq_f32(v449, vrsqrtsq_f32(v448, vmulq_f32(v449, v449)));
                            v451 = vmulq_f32(v450, v450);
                            v452 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v447.f32[0] != 0.0)), 0x1FuLL));
                            v452.i32[3] = 0;
                            v453 = vbslq_s8(vcltzq_s32(v452), vmulq_f32(v446, vmulq_f32(v450, vrsqrtsq_f32(v448, v451))), v446);
                            v451.i32[0] = v453.i32[2];
                            v448.f32[0] = *vbslq_s8(v380, v361, v451).i32;
                            v446.f32[0] = v453.f32[1] / (fabsf(v453.f32[2]) + *v361.i32);
                            *v441.i32 = vmuls_lane_f32(v446.f32[0], *v453.f32, 1);
                            v454 = -(v453.f32[0] * v446.f32[0]);
                            v455 = v453.f32[2] + (v448.f32[0] * *v441.i32);
                            v456 = v448.f32[0] * v454;
                            v457 = *v361.i32 - *v441.i32;
                            v458 = vmuls_lane_f32(-v448.f32[0], *v453.f32, 1);
                            v459 = v453.f32[2] + (v455 + v457);
                            if (v459 > 0.0)
                            {
                              v381 = sqrtf(v459 + *v361.i32);
                              v382.f32[0] = v458 - v453.f32[1];
                              v382.i32[1] = vaddq_f32(v453, v453).u32[0];
                              v382.f32[2] = v456 - v454;
                              v382.f32[3] = v381 * v381;
                              v383 = vmulq_n_f32(v382, 0.5 / v381);
                            }

                            else if (v455 < v457 || v455 < v453.f32[2])
                            {
                              if (v457 <= v453.f32[2])
                              {
                                v465 = sqrtf(((v453.f32[2] + *v361.i32) - v455) - v457);
                                v453.i32[0] = vsubq_f32(v453, v453).u32[0];
                                v453.f32[1] = v453.f32[1] + v458;
                                v453.f32[2] = v465 * v465;
                                v453.f32[3] = v456 - v454;
                                v383 = vmulq_n_f32(v453, 0.5 / v465);
                              }

                              else
                              {
                                v461 = sqrtf(((v457 + *v361.i32) - v455) - v453.f32[2]);
                                v462.f32[0] = v454 + v456;
                                v462.f32[1] = v461 * v461;
                                *&v462.u32[2] = vrev64_s32(vadd_f32(*v453.f32, __PAIR64__(LODWORD(v458), v453.u32[0])));
                                v383 = vmulq_n_f32(v462, 0.5 / v461);
                              }
                            }

                            else
                            {
                              v463 = sqrtf(((v455 + *v361.i32) - v457) - v453.f32[2]);
                              v464.f32[0] = v463 * v463;
                              v464.f32[1] = v454 + v456;
                              *&v464.u32[2] = vsub_f32(__PAIR64__(LODWORD(v458), v453.u32[0]), *v453.f32);
                              v383 = vmulq_n_f32(v464, 0.5 / v463);
                            }

                            *v377 = v383;
                          }

LABEL_242:
                          ++v374;
                          v375 += 2;
                          v376 += 16;
                          ++v377;
                          --v369;
                        }

                        while (v369);
                      }
                    }

                    else
                    {
                      v466 = v567 - v568;
                      if (v567 != v568)
                      {
                        v467 = *(v575 + 24);
                        v468 = v565 + v563;
                        v469 = &v572[16 * v568];
                        v470 = &v527[16 * v568];
                        v471 = &v363[16 * v568];
                        v358.i32[0] = 1.0;
                        __asm { FMOV            V2.4S, #1.0 }

                        v473.i64[0] = 0x8000000080000000;
                        v473.i64[1] = 0x8000000080000000;
                        do
                        {
                          v475 = v468 % v12;
                          v476 = *&v365[16 * (v468 % v12)];
                          v477 = *&v364[8 * (v468 % v12)];
                          v478 = &v539[8 * v477];
                          v479 = &v539[8 * SWORD1(v477)];
                          v480 = &v539[8 * SWORD2(v477)];
                          v481 = &v539[8 * SHIWORD(v477)];
                          v482 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*v478, v476.f32[0]), 0), vmulq_lane_f32(*v479, *v476.f32, 1)), vmulq_laneq_f32(*v480, v476, 2)), vmulq_laneq_f32(*v481, v476, 3));
                          v483 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v478[1], v476.f32[0]), 0), vmulq_lane_f32(v479[1], *v476.f32, 1)), vmulq_laneq_f32(v480[1], v476, 2)), vmulq_laneq_f32(v481[1], v476, 3));
                          v484 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v478[2], v476.f32[0]), 0), vmulq_lane_f32(v479[2], *v476.f32, 1)), vmulq_laneq_f32(v480[2], v476, 2)), vmulq_laneq_f32(v481[2], v476, 3));
                          if (v467)
                          {
                            v485 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v478[3], v476.f32[0]), 0), vmulq_lane_f32(v479[3], *v476.f32, 1)), vmulq_laneq_f32(v480[3], v476, 2)), vmulq_laneq_f32(v481[3], v476, 3)), v484, *&v541[12 * v475 + 8]), v483, *&v541[12 * v475 + 4]), v482, *&v541[12 * v475]);
                            v485.i32[3] = 1.0;
                            *v469 = v485;
                          }

                          if ((v549 | (v560 | v362) ^ 1))
                          {
                            v474 = v359;
                          }

                          else
                          {
                            v486 = vmulq_f32(v482, v482);
                            v487 = vmulq_f32(v483, v483);
                            v488 = vmulq_f32(v484, v484);
                            v489 = vzip2q_s32(v486, v488);
                            v490 = vzip1q_s32(vzip1q_s32(v486, v488), v487);
                            v491 = vtrn2q_s32(v486, v487);
                            v491.i32[2] = v488.i32[1];
                            v492 = vaddq_f32(vzip1q_s32(v489, vdupq_laneq_s32(v487, 2)), vaddq_f32(v490, v491));
                            v493 = vceqzq_f32(v492);
                            v493.i32[3] = 0;
                            v494 = vbslq_s8(vcltzq_s32(v493), v492, vdivq_f32(_Q2, v492));
                            v495 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vmulq_laneq_f32(v484, v494, 2), *&v547[12 * v475 + 8]), vmulq_lane_f32(v483, *v494.f32, 1), *&v547[12 * v475 + 4]), vmulq_n_f32(v482, v494.f32[0]), *&v547[12 * v475]);
                            v474 = v495;
                            v474.i32[3] = v359.i32[3];
                            if (v560)
                            {
                              v496 = v474;
                              v496.i32[3] = 0;
                              *v470 = v496;
                            }

                            if (v362)
                            {
                              v497 = vmulq_f32(v495, v495);
                              v497.f32[0] = v497.f32[2] + vaddv_f32(*v497.f32);
                              v498 = vdupq_lane_s32(*v497.f32, 0);
                              v498.i32[3] = 0;
                              v499 = vrsqrteq_f32(v498);
                              v500 = vmulq_f32(v499, vrsqrtsq_f32(v498, vmulq_f32(v499, v499)));
                              v501 = vmulq_f32(v500, v500);
                              v502 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v497.f32[0] != 0.0)), 0x1FuLL));
                              v502.i32[3] = 0;
                              v503 = vbslq_s8(vcltzq_s32(v502), vmulq_f32(v495, vmulq_f32(v500, vrsqrtsq_f32(v498, v501))), v495);
                              v501.i32[0] = v503.i32[2];
                              v504 = *vbslq_s8(v473, v358, v501).i32;
                              v498.f32[0] = v503.f32[1] / (fabsf(v503.f32[2]) + 1.0);
                              v505 = vmuls_lane_f32(v498.f32[0], *v503.f32, 1);
                              v506 = -(v503.f32[0] * v498.f32[0]);
                              v507 = v503.f32[2] + (v504 * v505);
                              v508 = v504 * v506;
                              v509 = 1.0 - v505;
                              v510 = vmuls_lane_f32(-v504, *v503.f32, 1);
                              v511 = v503.f32[2] + (v507 + v509);
                              if (v511 <= 0.0)
                              {
                                if (v507 < v509 || v507 < v503.f32[2])
                                {
                                  if (v509 <= v503.f32[2])
                                  {
                                    v520 = sqrtf(((v503.f32[2] + 1.0) - v507) - v509);
                                    v503.i32[0] = vsubq_f32(v503, v503).u32[0];
                                    v503.f32[1] = v503.f32[1] + v510;
                                    v503.f32[2] = v520 * v520;
                                    v503.f32[3] = v508 - v506;
                                    v514 = vmulq_n_f32(v503, 0.5 / v520);
                                  }

                                  else
                                  {
                                    v516 = sqrtf(((v509 + 1.0) - v507) - v503.f32[2]);
                                    v517.f32[0] = v506 + v508;
                                    v517.f32[1] = v516 * v516;
                                    *&v517.u32[2] = vrev64_s32(vadd_f32(*v503.f32, __PAIR64__(LODWORD(v510), v503.u32[0])));
                                    v514 = vmulq_n_f32(v517, 0.5 / v516);
                                  }
                                }

                                else
                                {
                                  v518 = sqrtf(((v507 + 1.0) - v509) - v503.f32[2]);
                                  v519.f32[0] = v518 * v518;
                                  v519.f32[1] = v506 + v508;
                                  *&v519.u32[2] = vsub_f32(__PAIR64__(LODWORD(v510), v503.u32[0]), *v503.f32);
                                  v514 = vmulq_n_f32(v519, 0.5 / v518);
                                }
                              }

                              else
                              {
                                v512 = sqrtf(v511 + 1.0);
                                v513.f32[0] = v510 - v503.f32[1];
                                v513.i32[1] = vaddq_f32(v503, v503).u32[0];
                                v513.f32[2] = v508 - v506;
                                v513.f32[3] = v512 * v512;
                                v514 = vmulq_n_f32(v513, 0.5 / v512);
                              }

                              *v471 = v514;
                            }
                          }

                          ++v468;
                          ++v469;
                          v470 += 16;
                          ++v471;
                          v359 = v474;
                          --v466;
                        }

                        while (v466);
                      }
                    }

                    v169 = v535;
                    v160 = v533;
                    if (v367)
                    {
                      sub_1AFBD9424(v527, v568, v567, (v551 + 8), *(v575 + 16), *(v575 + 20));
                    }

                    goto LABEL_147;
                  }

                  if (v582)
                  {
                    if (*(v575 + 24))
                    {
                      v178 = sub_1AF705C38(a1[1], a1);
                      v179 = v568;
                      v180 = v567 - v568;
                      v181 = v547;
                      v182 = v560;
                      if (v567 != v568)
                      {
                        v183 = v565 + v563;
                        v184 = &v178[16 * v568];
                        do
                        {
                          v185 = &v541[12 * (v183 % v12)];
                          *&v186 = *v185;
                          DWORD2(v186) = *(v185 + 2);
                          HIDWORD(v186) = 1.0;
                          *v184 = v186;
                          v184 += 16;
                          ++v183;
                          --v180;
                        }

                        while (v180);
                      }
                    }

                    else
                    {
                      v179 = v568;
                      v181 = v547;
                      v182 = v560;
                    }

                    if (((v549 | v182 ^ 1) & 1) == 0)
                    {
                      v233 = sub_1AF705CCC(a1[1], a1);
                      v234 = v567 - v179;
                      if (v567 != v179)
                      {
                        v235 = v565 + v563;
                        v236 = &v233[16 * v179];
                        do
                        {
                          v237 = &v181[12 * (v235 % v12)];
                          *&v238 = *v237;
                          *(&v238 + 1) = *(v237 + 2);
                          *v236 = v238;
                          v236 += 16;
                          ++v235;
                          --v234;
                        }

                        while (v234);
                      }

                      sub_1AFBD9424(v233, v179, v567, (v551 + 8), *(v575 + 16), *(v575 + 20));
                    }

                    if (*(v575 + 27))
                    {
                      v239 = sub_1AF705C10(a1[1], a1);
                      if (v542)
                      {
                        if ((v549 & 1) == 0)
                        {
                          v242 = v567 - v179;
                          if (v567 != v179)
                          {
                            v300 = v565 + v563;
                            v301 = &v239[16 * v179];
                            v240.i32[0] = 1.0;
                            v302.i64[0] = 0x8000000080000000;
                            v302.i64[1] = 0x8000000080000000;
                            do
                            {
                              v305 = &v181[12 * (v300 % v12)];
                              v241.i64[0] = *v305;
                              v241.i32[2] = *(v305 + 2);
                              v306 = vmulq_f32(v241, v241);
                              v306.f32[0] = v306.f32[2] + vaddv_f32(*v306.f32);
                              v307 = vdupq_lane_s32(*v306.f32, 0);
                              v307.i32[3] = 0;
                              v308 = vrsqrteq_f32(v307);
                              v309 = vmulq_f32(v308, vrsqrtsq_f32(v307, vmulq_f32(v308, v308)));
                              v310 = vmulq_f32(v309, v309);
                              v311 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v306.f32[0] != 0.0)), 0x1FuLL));
                              v311.i32[3] = 0;
                              v312 = vbslq_s8(vcltzq_s32(v311), vmulq_f32(v241, vmulq_f32(v309, vrsqrtsq_f32(v307, v310))), v241);
                              v310.i32[0] = v312.i32[2];
                              v311.i32[0] = vbslq_s8(v302, v240, v310).i32[0];
                              v307.f32[0] = v312.f32[1] / (fabsf(v312.f32[2]) + 1.0);
                              v313 = vmuls_lane_f32(v307.f32[0], *v312.f32, 1);
                              v314 = -(v312.f32[0] * v307.f32[0]);
                              v315 = v312.f32[2] + (*v311.i32 * v313);
                              v316 = *v311.i32 * v314;
                              v317 = 1.0 - v313;
                              v318 = vmuls_lane_f32(-*v311.i32, *v312.f32, 1);
                              v319 = v312.f32[2] + (v315 + v317);
                              if (v319 > 0.0)
                              {
                                v303 = sqrtf(v319 + 1.0);
                                v304.f32[0] = v318 - v312.f32[1];
                                v304.i32[1] = vaddq_f32(v312, v312).u32[0];
                                v304.f32[2] = v316 - v314;
                                v304.f32[3] = v303 * v303;
                                v241 = vmulq_n_f32(v304, 0.5 / v303);
                              }

                              else if (v315 < v317 || v315 < v312.f32[2])
                              {
                                if (v317 <= v312.f32[2])
                                {
                                  v325 = sqrtf(((v312.f32[2] + 1.0) - v315) - v317);
                                  v312.i32[0] = vsubq_f32(v312, v312).u32[0];
                                  v312.f32[1] = v312.f32[1] + v318;
                                  v312.f32[2] = v325 * v325;
                                  v312.f32[3] = v316 - v314;
                                  v241 = vmulq_n_f32(v312, 0.5 / v325);
                                }

                                else
                                {
                                  v321 = sqrtf(((v317 + 1.0) - v315) - v312.f32[2]);
                                  v322.f32[0] = v314 + v316;
                                  v322.f32[1] = v321 * v321;
                                  *&v322.u32[2] = vrev64_s32(vadd_f32(*v312.f32, __PAIR64__(LODWORD(v318), v312.u32[0])));
                                  v241 = vmulq_n_f32(v322, 0.5 / v321);
                                }
                              }

                              else
                              {
                                v323 = sqrtf(((v315 + 1.0) - v317) - v312.f32[2]);
                                v324.f32[0] = v323 * v323;
                                v324.f32[1] = v314 + v316;
                                *&v324.u32[2] = vsub_f32(__PAIR64__(LODWORD(v318), v312.u32[0]), *v312.f32);
                                v241 = vmulq_n_f32(v324, 0.5 / v323);
                              }

                              *v301++ = v241;
                              ++v300;
                              --v242;
                            }

                            while (v242);
                          }
                        }
                      }

                      else
                      {
                        v255 = v567 - v179;
                        if (v567 != v179)
                        {
                          v256 = v565 + v563;
                          v257 = &v239[16 * v179];
                          do
                          {
                            *v257 = *&v157[16 * (v256 % v12)];
                            v257 += 16;
                            ++v256;
                            --v255;
                          }

                          while (v255);
                        }
                      }
                    }

LABEL_158:

                    goto LABEL_101;
                  }

                  v530 = v581[3];
                  v570 = v581[2];
                  v554 = v581[0];
                  v558 = v581[1];
                  v192 = *(a3 + 32);

                  sub_1AFB95040(v192, &v588);
                  v532 = v588;

                  if (v589)
                  {
                    v193 = -1;
                  }

                  else
                  {
                    v193 = 0;
                  }

                  v194 = vdupq_n_s32(v193);
                  v195 = vbslq_s8(v194, xmmword_1AFE20150, v532.columns[0]);
                  v196 = vbslq_s8(v194, xmmword_1AFE20160, v532.columns[1]);
                  v197 = vbslq_s8(v194, xmmword_1AFE20180, v532.columns[2]);
                  v198 = vbslq_s8(v194, xmmword_1AFE201A0, v532.columns[3]);
                  v199 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, v554.f32[0]), v196, *v554.f32, 1), v197, v554, 2), v198, v554, 3);
                  v200 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, v558.f32[0]), v196, *v558.f32, 1), v197, v558, 2), v198, v558, 3);
                  v201 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, v570.f32[0]), v196, *v570.f32, 1), v197, v570, 2), v198, v570, 3);
                  v202 = vmulq_f32(v199, v199);
                  v203 = vmulq_f32(v200, v200);
                  v204 = vmulq_f32(v201, v201);
                  v205 = vzip2q_s32(v202, v204);
                  v206 = vzip1q_s32(vzip1q_s32(v202, v204), v203);
                  v207 = vtrn2q_s32(v202, v203);
                  v207.i32[2] = v204.i32[1];
                  v208 = vaddq_f32(vzip1q_s32(v205, vdupq_laneq_s32(v203, 2)), vaddq_f32(v206, v207));
                  v203.i64[0] = 0x80000000800000;
                  v203.i64[1] = 0x80000000800000;
                  v209 = vcgeq_f32(v203, v208);
                  v208.i32[3] = 0;
                  v210 = vrsqrteq_f32(v208);
                  v211 = vmulq_f32(v210, vrsqrtsq_f32(v208, vmulq_f32(v210, v210)));
                  v212 = v209;
                  v212.i32[3] = 0;
                  v213 = vbslq_s8(vcltzq_s32(v212), v208, vmulq_f32(v211, vrsqrtsq_f32(v208, vmulq_f32(v211, v211))));
                  v214 = vmulq_n_f32(v199, v213.f32[0]);
                  v215 = vmulq_lane_f32(v200, *v213.f32, 1);
                  v216 = vmulq_laneq_f32(v201, v213, 2);
                  v217 = vuzp1q_s32(v216, v216);
                  v218 = vuzp1q_s32(v215, v215);
                  v219 = v214;
                  if (v209.i32[0])
                  {
                    v220 = vmlaq_f32(vmulq_f32(vextq_s8(v217, v216, 0xCuLL), vnegq_f32(v215)), v216, vextq_s8(v218, v215, 0xCuLL));
                    v219 = vextq_s8(vuzp1q_s32(v220, v220), v220, 0xCuLL);
                  }

                  v221 = vuzp1q_s32(v214, v214);
                  v222 = v215;
                  if (v209.i32[1])
                  {
                    v223 = vmlaq_f32(vmulq_f32(vextq_s8(v221, v214, 0xCuLL), vnegq_f32(v216)), v214, vextq_s8(v217, v216, 0xCuLL));
                    v222 = vextq_s8(vuzp1q_s32(v223, v223), v223, 0xCuLL);
                  }

                  v224 = v568;
                  v225 = v575;
                  if (v209.i32[2])
                  {
                    v226 = vmlaq_f32(vmulq_f32(vextq_s8(v218, v215, 0xCuLL), vnegq_f32(v214)), v215, vextq_s8(v221, v214, 0xCuLL));
                    v216 = vextq_s8(vuzp1q_s32(v226, v226), v226, 0xCuLL);
                  }

                  v227 = (*v219.i32 + *&v222.i32[1]) + v216.f32[2];
                  if (v227 > 0.0)
                  {
                    v228 = sqrtf(v227 + 1.0);
                    *v229.f32 = vsub_f32(*&vzip2q_s32(v222, vuzp1q_s32(v222, v216)), *&vtrn2q_s32(v216, vzip2q_s32(v216, v219)));
                    v229.f32[2] = *&v219.i32[1] - *v222.i32;
                    v229.f32[3] = v228 * v228;
                    v230 = 0.5 / v228;
LABEL_144:
                    v231 = vmulq_n_f32(v229, v230);
LABEL_178:
                    v559 = v231;
                    if (*(v575 + 24))
                    {
                      v528 = v198;
                      v534 = v197;
                      v536 = v196;
                      v538 = v195;
                      v540 = v201;
                      v555 = v200;
                      v571 = v199;
                      v263 = sub_1AF705C38(a1[1], a1);
                      v264 = v567 - v568;
                      v265 = v560;
                      if (v567 != v568)
                      {
                        v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v538, v530.f32[0]), v536, *v530.f32, 1), v534, v530, 2), v528, v530, 3);
                        v267 = v565 + v563;
                        v268 = &v263[16 * v568];
                        do
                        {
                          v269 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v266, v540, *&v541[12 * (v267 % v12) + 8]), v555, *&v541[12 * (v267 % v12) + 4]), v571, *&v541[12 * (v267 % v12)]);
                          v269.i32[3] = 1.0;
                          *v268++ = v269;
                          ++v267;
                          --v264;
                        }

                        while (v264);
                      }
                    }

                    else
                    {
                      v265 = v560;
                    }

                    if (((v549 | v265 ^ 1) & 1) == 0)
                    {
                      v561 = sub_1AF705CCC(a1[1], a1);
                      v271 = v567 - v568;
                      if (v567 != v568)
                      {
                        v272 = v565 + v563;
                        v273 = &v561[16 * v568];
                        do
                        {
                          v274 = &v547[12 * (v272 % v12)];
                          v275.i64[0] = *v274;
                          v275.i32[2] = *(v274 + 2);
                          v275.i32[3] = v270;
                          v574 = v270;
                          *&v276 = sub_1AF6AF448(v275, v559);
                          HIDWORD(v276) = 0;
                          *v273 = v276;
                          v273 += 16;
                          ++v272;
                          v270 = v574;
                          --v271;
                        }

                        while (v271);
                      }

                      v225 = v575;
                      v224 = v568;
                      sub_1AFBD9424(v561, v568, v567, (v551 + 8), *(v575 + 16), *(v575 + 20));
                    }

                    if (*(v225 + 27))
                    {
                      v277 = sub_1AF705C10(a1[1], a1);
                      if (v542)
                      {
                        if ((v549 & 1) == 0)
                        {
                          v278 = v567 - v224;
                          if (v567 != v224)
                          {
                            v326 = v565 + v563;
                            v327 = &v277[16 * v224];
                            do
                            {
                              v331 = &v547[12 * (v326 % v12)];
                              v332.i64[0] = *v331;
                              v332.i32[2] = *(v331 + 2);
                              v332.i32[3] = v576;
                              *v333.f32 = sub_1AF6AF448(v332, v559);
                              v334 = vmulq_f32(v333, v333);
                              v334.f32[0] = v334.f32[2] + vaddv_f32(*v334.f32);
                              v335 = vdupq_lane_s32(*v334.f32, 0);
                              v335.i32[3] = 0;
                              v336 = vrsqrteq_f32(v335);
                              v337 = vmulq_f32(v336, vrsqrtsq_f32(v335, vmulq_f32(v336, v336)));
                              v338 = vmulq_f32(v337, v337);
                              v339 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v334.f32[0] != 0.0)), 0x1FuLL));
                              v339.i32[3] = 0;
                              v340 = vbslq_s8(vcltzq_s32(v339), vmulq_f32(v333, vmulq_f32(v337, vrsqrtsq_f32(v335, v338))), v333);
                              v338.i32[0] = v340.i32[2];
                              v341.i32[0] = 1.0;
                              v339.i64[0] = 0x8000000080000000;
                              v339.i64[1] = 0x8000000080000000;
                              v339.i32[0] = vbslq_s8(v339, v341, v338).i32[0];
                              v335.f32[0] = v340.f32[1] / (fabsf(v340.f32[2]) + 1.0);
                              v342 = vmuls_lane_f32(v335.f32[0], *v340.f32, 1);
                              v343 = -(v340.f32[0] * v335.f32[0]);
                              v344 = v340.f32[2] + (*v339.i32 * v342);
                              v345 = *v339.i32 * v343;
                              v346 = 1.0 - v342;
                              v347 = vmuls_lane_f32(-*v339.i32, *v340.f32, 1);
                              v348 = v340.f32[2] + (v344 + v346);
                              if (v348 > 0.0)
                              {
                                v328 = sqrtf(v348 + 1.0);
                                v329.f32[0] = v347 - v340.f32[1];
                                v329.i32[1] = vaddq_f32(v340, v340).u32[0];
                                v329.f32[2] = v345 - v343;
                                v329.f32[3] = v328 * v328;
                                v330 = vmulq_n_f32(v329, 0.5 / v328);
                              }

                              else if (v344 < v346 || v344 < v340.f32[2])
                              {
                                if (v346 <= v340.f32[2])
                                {
                                  v354 = sqrtf(((v340.f32[2] + 1.0) - v344) - v346);
                                  v340.i32[0] = vsubq_f32(v340, v340).u32[0];
                                  v340.f32[1] = v340.f32[1] + v347;
                                  v340.f32[2] = v354 * v354;
                                  v340.f32[3] = v345 - v343;
                                  v330 = vmulq_n_f32(v340, 0.5 / v354);
                                }

                                else
                                {
                                  v350 = sqrtf(((v346 + 1.0) - v344) - v340.f32[2]);
                                  v351.f32[0] = v343 + v345;
                                  v351.f32[1] = v350 * v350;
                                  *&v351.u32[2] = vrev64_s32(vadd_f32(*v340.f32, __PAIR64__(LODWORD(v347), v340.u32[0])));
                                  v330 = vmulq_n_f32(v351, 0.5 / v350);
                                }
                              }

                              else
                              {
                                v352 = sqrtf(((v344 + 1.0) - v346) - v340.f32[2]);
                                v353.f32[0] = v352 * v352;
                                v353.f32[1] = v343 + v345;
                                *&v353.u32[2] = vsub_f32(__PAIR64__(LODWORD(v347), v340.u32[0]), *v340.f32);
                                v330 = vmulq_n_f32(v353, 0.5 / v352);
                              }

                              *v327++ = v330;
                              ++v326;
                              --v278;
                            }

                            while (v278);
                          }
                        }
                      }

                      else
                      {
                        v279 = v567 - v224;
                        if (v567 != v224)
                        {
                          v280 = vdupq_laneq_s32(v559, 3);
                          _S1 = v559.i32[3];
                          v282 = vextq_s8(vuzp1q_s32(v559, v559), v559, 0xCuLL);
                          v283 = vnegq_f32(v559);
                          v284 = v565 + v563;
                          v285 = &v277[16 * v224];
                          do
                          {
                            _Q4 = *&v157[16 * (v284 % v12)];
                            _Q6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL), v283), _Q4, v282);
                            v288 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v559, _Q4, 3), v280, _Q4), vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL));
                            __asm { FMLA            S6, S1, V4.S[3] }

                            v288.i32[3] = _Q6.i32[0];
                            *v285++ = v288;
                            ++v284;
                            --v279;
                          }

                          while (v279);
                        }
                      }
                    }

                    goto LABEL_158;
                  }

                  if (*v219.i32 < *&v222.i32[1] || *v219.i32 < v216.f32[2])
                  {
                    if (*&v222.i32[1] <= v216.f32[2])
                    {
                      v296 = vzip2q_s32(v219, v222).u64[0];
                      v297 = __PAIR64__(v219.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v216.f32[2] + 1.0) - *v219.i32) - *&v222.i32[1])));
                      v298 = vdup_lane_s32(*v222.i8, 0);
                      v299 = vsub_f32(*v219.i8, v298);
                      v298.i32[0] = v297.i32[0];
                      v298.i32[0] = vmul_f32(v297, v298).u32[0];
                      v298.i32[1] = v299.i32[1];
                      *v229.f32 = vadd_f32(v296, *v216.f32);
                      *&v229.u32[2] = v298;
                      v230 = 0.5 / v297.f32[0];
                      goto LABEL_144;
                    }

                    v258 = sqrtf(((*&v222.i32[1] + 1.0) - *v219.i32) - v216.f32[2]);
                    v262.f32[0] = *&v219.i32[1] + *v222.i32;
                    v244 = vzip2q_s32(v219, v222).u64[0];
                    v262.f32[1] = v258 * v258;
                    *&v262.u32[2] = vext_s8(vadd_f32(*v216.f32, v244), vsub_f32(*v216.f32, v244), 4uLL);
                  }

                  else
                  {
                    v258 = sqrtf(((*v219.i32 + 1.0) - *&v222.i32[1]) - v216.f32[2]);
                    v262.f32[0] = v258 * v258;
                    v259 = *&v219.i32[1] + *v222.i32;
                    v260 = vzip2q_s32(v219, v222).u64[0];
                    LODWORD(v261) = vadd_f32(v260, *v216.f32).u32[0];
                    HIDWORD(v261) = vsub_f32(v260, *&v216).i32[1];
                    v262.f32[1] = v259;
                    v262.i64[1] = v261;
                  }

                  v231 = vmulq_n_f32(v262, 0.5 / v258);
                  goto LABEL_178;
                }
              }

LABEL_114:
              v157 = 0;
              v542 = 1;
              goto LABEL_115;
            }

            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v547 = 0;
        v549 = 1;
        if (!*(v11 + 16))
        {
          goto LABEL_114;
        }

        goto LABEL_109;
      }

      v100 = vmulq_f32(v577, v577);
      v101 = vmulq_f32(v578, v578);
      v102 = vmulq_f32(v579, v579);
      v103 = vzip2q_s32(v100, v102);
      v104 = vzip1q_s32(vzip1q_s32(v100, v102), v101);
      v105 = vtrn2q_s32(v100, v101);
      v105.i32[2] = v102.i32[1];
      v106 = vaddq_f32(vzip1q_s32(v103, vdupq_laneq_s32(v101, 2)), vaddq_f32(v104, v105));
      v105.i64[0] = 0x80000000800000;
      v105.i64[1] = 0x80000000800000;
      v107 = vcgeq_f32(v105, v106);
      v106.i32[3] = 0;
      v108 = vrsqrteq_f32(v106);
      v109 = vmulq_f32(v108, vrsqrtsq_f32(v106, vmulq_f32(v108, v108)));
      v110 = v107;
      v110.i32[3] = 0;
      v111 = vbslq_s8(vcltzq_s32(v110), v106, vmulq_f32(v109, vrsqrtsq_f32(v106, vmulq_f32(v109, v109))));
      v112 = vmulq_n_f32(v577, v111.f32[0]);
      v113 = vmulq_lane_f32(v578, *v111.f32, 1);
      v114 = vmulq_laneq_f32(v579, v111, 2);
      v115 = vuzp1q_s32(v114, v114);
      v116 = vuzp1q_s32(v113, v113);
      v117 = v112;
      if (v107.i32[0])
      {
        v118 = vmlaq_f32(vmulq_f32(vextq_s8(v115, v114, 0xCuLL), vnegq_f32(v113)), v114, vextq_s8(v116, v113, 0xCuLL));
        v117 = vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL);
      }

      v119 = vuzp1q_s32(v112, v112);
      v120 = v113;
      if (v107.i32[1])
      {
        v121 = vmlaq_f32(vmulq_f32(vextq_s8(v119, v112, 0xCuLL), vnegq_f32(v114)), v112, vextq_s8(v115, v114, 0xCuLL));
        v120 = vextq_s8(vuzp1q_s32(v121, v121), v121, 0xCuLL);
      }

      if (v107.i32[2])
      {
        v122 = vmlaq_f32(vmulq_f32(vextq_s8(v116, v113, 0xCuLL), vnegq_f32(v112)), v113, vextq_s8(v119, v112, 0xCuLL));
        v114 = vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL);
      }

      v123 = (*v117.i32 + *&v120.i32[1]) + v114.f32[2];
      if (v123 > 0.0)
      {
        v124 = sqrtf(v123 + 1.0);
        *v125.f32 = vsub_f32(*&vzip2q_s32(v120, vuzp1q_s32(v120, v114)), *&vtrn2q_s32(v114, vzip2q_s32(v114, v117)));
        v125.f32[2] = *&v117.i32[1] - *v120.i32;
        v125.f32[3] = v124 * v124;
        v126 = 0.5 / v124;
LABEL_81:
        v127 = vmulq_n_f32(v125, v126);
        goto LABEL_90;
      }

      if (*v117.i32 < *&v120.i32[1] || *v117.i32 < v114.f32[2])
      {
        if (*&v120.i32[1] <= v114.f32[2])
        {
          v292 = vzip2q_s32(v117, v120).u64[0];
          v293 = __PAIR64__(v117.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v114.f32[2] + 1.0) - *v117.i32) - *&v120.i32[1])));
          v294 = vdup_lane_s32(*v120.i8, 0);
          v295 = vsub_f32(*v117.i8, v294);
          v294.i32[0] = v293.i32[0];
          v294.i32[0] = vmul_f32(v293, v294).u32[0];
          v294.i32[1] = v295.i32[1];
          *v125.f32 = vadd_f32(v292, *v114.f32);
          *&v125.u32[2] = v294;
          v126 = 0.5 / v293.f32[0];
          goto LABEL_81;
        }

        v130 = sqrtf(((*&v120.i32[1] + 1.0) - *v117.i32) - v114.f32[2]);
        v134.f32[0] = *&v117.i32[1] + *v120.i32;
        v129 = vzip2q_s32(v117, v120).u64[0];
        v134.f32[1] = v130 * v130;
        *&v134.u32[2] = vext_s8(vadd_f32(*v114.f32, v129), vsub_f32(*v114.f32, v129), 4uLL);
      }

      else
      {
        v130 = sqrtf(((*v117.i32 + 1.0) - *&v120.i32[1]) - v114.f32[2]);
        v134.f32[0] = v130 * v130;
        v131 = *&v117.i32[1] + *v120.i32;
        v132 = vzip2q_s32(v117, v120).u64[0];
        LODWORD(v133) = vadd_f32(v132, *v114.f32).u32[0];
        HIDWORD(v133) = vsub_f32(v132, *&v114).i32[1];
        v134.f32[1] = v131;
        v134.i64[1] = v133;
      }

      v127 = vmulq_n_f32(v134, 0.5 / v130);
LABEL_90:
      v135 = v567 - v568;
      if (v567 != v568)
      {
        v136 = v565 + v563;
        v137 = &v545[16 * v568];
        v548 = v127;
        do
        {
          v138 = &v94[12 * (v136 % v12)];
          v139.i64[0] = *v138;
          v139.i32[2] = *(v138 + 2);
          v139.i32[3] = v120.i32[3];
          v562 = v120.i32[3];
          *&v140 = sub_1AF6AF448(v139, v548);
          HIDWORD(v140) = 0;
          *v137 = v140;
          v137 += 16;
          ++v136;
          v120.i32[3] = v562;
          --v135;
        }

        while (v135);
      }

      goto LABEL_93;
    }
  }

  return ecs_stack_allocator_pop_snapshot(v8);
}

void sub_1AFBD4170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 104);
  v67[0] = *(a3 + 88);
  v67[1] = v3;
  v68 = *(a3 + 120);
  v4 = sub_1AF6B06C0(a2, v67, 0x200000000, &v56);
  if (v56)
  {
    v45 = v63;
    if (v63 >= 1)
    {
      v44 = v60;
      if (v60)
      {
        v5 = 0;
        v43 = v59;
        v6 = v62;
        v42 = v61;
        v7 = *(v61 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = *(v62 + 32);
        v64 = v56;
        v65 = v57;
        v66 = v58;
        v75 = v7;
        do
        {
          v8 = (v43 + 48 * v5);
          v9 = *v8;
          v10 = v8[1];
          v11 = v8[2];
          v12 = *(v8 + 3);
          v54 = *(v8 + 2);
          v14 = *(v8 + 4);
          v13 = *(v8 + 5);
          if (v7)
          {
            v15 = *(v13 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v13 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v50 = *(v6 + 64);
          v51 = *(v6 + 48);
          v49 = *(v6 + 80);
          v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
          *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v16, 8);
          *(v6 + 56) = v16;
          *(v6 + 72) = 0;
          *(v6 + 80) = 0;
          *(v6 + 64) = 0;
          v74 = 1;
          v69[0] = v42;
          v69[1] = v13;
          v52 = v13;
          v69[2] = v6;
          v69[3] = v11;
          v69[4] = (v10 - v9 + v11);
          v69[5] = v45;
          v69[6] = v9;
          v69[7] = v10;
          v69[8] = 0;
          v69[9] = 0;
          v70 = 1;
          v71 = v54;
          v72 = v12;
          v73 = v14;
          sub_1AFBD1C20(v69, a1, a3);
          v17 = *(v6 + 48);
          v18 = *(v6 + 64);
          if (!v18)
          {
            v40 = *(v6 + 56);
            v41 = *(v6 + 32);
            goto LABEL_39;
          }

          v55 = *(v6 + 48);
          v48 = v5;
          for (i = 0; i != v18; ++i)
          {
            v21 = (v55 + 48 * i);
            v22 = *v21;
            v23 = v21[4];
            v24 = *(v6 + 72);
            if (v24)
            {
              v25 = v22 == v24;
            }

            else
            {
              v25 = 0;
            }

            if (v25)
            {
              goto LABEL_11;
            }

            v26 = v64;
            if (!v64[11])
            {
              goto LABEL_11;
            }

            v27 = v21[2];
            v28 = v64 + 41;
            v29 = v64[9];
            if (v29 >= 0x10)
            {
              v30 = &v28[v64[8]];
              v31 = v29 >> 4;
              v32 = v64 + 41;
              while (*v30 != v22)
              {
                ++v32;
                v30 += 16;
                if (!--v31)
                {
                  goto LABEL_27;
                }
              }

              v33 = v32[v64[10]];
              v34 = v33 > 5;
              v35 = (1 << v33) & 0x23;
              if (v34 || v35 == 0)
              {
LABEL_11:

                v23(v20);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v27)
            {
              if (sub_1AF5FC8D8(v27))
              {
                goto LABEL_11;
              }

              v37 = v26[9];
              if (v37 < 0x10)
              {
                goto LABEL_11;
              }

              v38 = &v28[v26[8]];
              v39 = 16 * (v37 >> 4);
              while (*v38 != v27)
              {
                v38 += 16;
                v39 -= 16;
                if (!v39)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v40 = *(v6 + 56);
          v17 = *(v6 + 48);
          v41 = *(v6 + 32);
          if (*(v6 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v5 = v48;
LABEL_39:
          v7 = v75;
          ecs_stack_allocator_deallocate(v41, v17, 48 * v40);
          *(v6 + 48) = v51;
          *(v6 + 64) = v50;
          *(v6 + 80) = v49;
          sub_1AF62D29C(v52);
          ecs_stack_allocator_pop_snapshot(v53);
          if (v7)
          {
            os_unfair_lock_unlock(*(v52 + 344));
            os_unfair_lock_unlock(*(v52 + 376));
          }

          ++v5;
        }

        while (v5 != v44);
      }
    }

    sub_1AFBDD920(&v56, &qword_1ED725EA0, &type metadata for QueryResult, v4);
  }
}

void sub_1AFBD45AC(uint64_t *a1)
{
  v2 = *(a1 + 11);
  v204 = *(a1 + 9);
  v205 = v2;
  v3 = *(a1 + 15);
  v206 = *(a1 + 13);
  v207 = v3;
  v4 = *(a1 + 3);
  v200 = *(a1 + 1);
  v201 = v4;
  v5 = *(a1 + 7);
  v202 = *(a1 + 5);
  v203 = v5;
  v6 = v200;

  sub_1AF3CF88C(*(&v6 + 1), &v191);

  v7 = v194;
  if (v194 == 2)
  {
    LOBYTE(v8) = 0;
    LOBYTE(v9) = 0;
    v10 = 0;
    v169 = 0x40000000;
    v168 = 1065353216;
    v7 = 1;
    v11 = 0xFFFFFFFFLL;
    LOBYTE(v12) = 1;
    LOBYTE(v13) = 1;
  }

  else
  {
    v10 = v195;
    v12 = v194 >> 8;
    v13 = v194 >> 16;
    v168 = v192;
    v169 = v193;
    v8 = v194 >> 24;
    v11 = v191;
    v9 = HIDWORD(v194);
  }

  v212 = v7;
  v211 = v12;
  v210 = v13;
  v209 = v8;
  v208 = v9;

  sub_1AF3C9244(*(&v6 + 1), v196);
  v163 = v196[1];
  v165 = v196[0];
  v161 = v196[2];
  v176 = v196[3];

  if (v197)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1AF3CF75C(v11);
  v167 = v16;

  if (v15)
  {
    v17 = &off_1AFE20000;
    if (!*(v15 + 16))
    {
      v153 = 0;
      v139 = 0;
      v140 = 0;
      v175 = 0;
      v179 = 0;
      v159 = 0;
      v160 = 0;
      v151 = 0;
      goto LABEL_23;
    }

    v18 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
    if (v19)
    {
      v20 = *(v15 + 56) + 32 * v18;
      v140 = *(v20 + 8);
      v153 = *(v20 + 24);
      v139 = *(v20 + 16) << 32;
      v175 = *v20;
      swift_unknownObjectRetain();
      if (!*(v15 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v175 = 0;
      v139 = 0;
      v140 = 0;
      v153 = 0;
      if (!*(v15 + 16))
      {
        goto LABEL_21;
      }
    }

    v23 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
    if (v24)
    {
      v25 = *(v15 + 56) + 32 * v23;
      v160 = *(v25 + 8);
      v159 = *(v25 + 16);
      v151 = *(v25 + 24);
      v179 = *v25;
      swift_unknownObjectRetain();
LABEL_22:
      v17 = &off_1AFE20000;
LABEL_23:
      v26 = vdupq_n_s32(v14);
      v172 = *(v17 + 22);
      if (!*(v15 + 16))
      {
        v150 = 0;
        v157 = 0;
        v158 = 0;
        v178 = 0uLL;
        v155 = 0;
        v156 = 0;
        v30 = 0;
        goto LABEL_33;
      }

      v148 = v26;
      v27 = sub_1AF419914(0x6C616D726F6ELL, 0xE600000000000000);
      if (v28)
      {
        v29 = *(v15 + 56) + 32 * v27;
        v158 = *(v29 + 8);
        v157 = *(v29 + 16);
        v150 = *(v29 + 24);
        *(&v178 + 1) = *v29;
        swift_unknownObjectRetain();
        if (!*(v15 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        *(&v178 + 1) = 0;
        v157 = 0;
        v158 = 0;
        v150 = 0;
        if (!*(v15 + 16))
        {
          goto LABEL_31;
        }
      }

      v31 = sub_1AF419914(0x797469636F6C6576, 0xE800000000000000);
      if (v32)
      {
        v33 = *(v15 + 56) + 32 * v31;
        v156 = *(v33 + 8);
        v155 = *(v33 + 16);
        v30 = *(v33 + 24);
        *&v178 = *v33;
        swift_unknownObjectRetain();
LABEL_32:
        v26 = v148;
LABEL_33:
        v145 = vbslq_s8(v26, xmmword_1AFE20150, v165);
        v146 = vbslq_s8(v26, v172, v163);
        v147 = vbslq_s8(v26, xmmword_1AFE20180, v161);
        v149 = vbslq_s8(v26, xmmword_1AFE201A0, v176);
        if (*(v15 + 16))
        {
          v34 = sub_1AF419914(1702521203, 0xE400000000000000);
          if (v35)
          {
            v36 = *(v15 + 56) + 32 * v34;
            v164 = *(v36 + 8);
            v162 = *(v36 + 16);
            v37 = *(v36 + 24);
            v177 = *v36;
            swift_unknownObjectRetain();
            if (!*(v15 + 16))
            {
              goto LABEL_41;
            }
          }

          else
          {
            v177 = 0;
            v164 = 0;
            v162 = 0;
            v37 = 0;
            if (!*(v15 + 16))
            {
              goto LABEL_41;
            }
          }

          v38 = sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
          if (v39)
          {
            v40 = *(v15 + 56) + 32 * v38;
            v41 = *v40;
            v138 = *(v40 + 8);
            v137 = *(v40 + 16);
            v42 = *(v40 + 24);
            swift_unknownObjectRetain();

            goto LABEL_42;
          }
        }

        else
        {
          v37 = 0;
          v162 = 0;
          v164 = 0;
          v177 = 0;
        }

LABEL_41:

        v41 = 0;
        v137 = 0;
        v138 = 0;
        v42 = 0;
LABEL_42:
        v43 = v202;

        v166 = v43;
        sub_1AFB95040(v43, &v198);
        v143 = v198.columns[1];
        v144 = v198.columns[0];
        v141 = v198.columns[3];
        v142 = v198.columns[2];

        if (v199)
        {
          v44 = -1;
        }

        else
        {
          v44 = 0;
        }

        v45 = vdupq_n_s32(v44);
        v46 = vbslq_s8(v45, xmmword_1AFE20150, v144);
        v47 = vbslq_s8(v45, v172, v143);
        v48 = vbslq_s8(v45, xmmword_1AFE20180, v142);
        v49 = vbslq_s8(v45, xmmword_1AFE201A0, v141);
        v50 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, *v145.i32), v47, *v145.i8, 1), v48, v145, 2), v49, v145, 3);
        v51 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, *v146.i32), v47, *v146.i8, 1), v48, v146, 2), v49, v146, 3);
        v52 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, *v147.i32), v47, *v147.i8, 1), v48, v147, 2), v49, v147, 3);
        v53 = vmulq_n_f32(v46, *v149.i32);
        v54 = v153;
        if (!v175)
        {
          v54 = 0;
        }

        v55 = v151;
        if (!v179)
        {
          v55 = 0;
        }

        v56 = v150;
        if (!*(&v178 + 1))
        {
          v56 = 0;
        }

        v174 = v41;
        if (v41)
        {
          v57 = v42;
        }

        else
        {
          v57 = 0;
        }

        if (v178)
        {
          v58 = v30;
        }

        else
        {
          v58 = 0;
        }

        if (v177)
        {
          v59 = v37;
        }

        else
        {
          v59 = 0;
        }

        v60 = vmulq_f32(v50, v50);
        v61 = vmulq_f32(v51, v51);
        v62 = vmulq_f32(v52, v52);
        v63 = vzip2q_s32(v60, v62);
        v64 = vzip1q_s32(vzip1q_s32(v60, v62), v61);
        v65 = vtrn2q_s32(v60, v61);
        v65.i32[2] = v62.i32[1];
        v66 = vaddq_f32(vzip1q_s32(v63, vdupq_laneq_s32(v61, 2)), vaddq_f32(v64, v65));
        v61.i64[0] = 0x80000000800000;
        v61.i64[1] = 0x80000000800000;
        v67 = vcgeq_f32(v61, v66);
        v66.i32[3] = 0;
        v68 = vrsqrteq_f32(v66);
        v69 = vmulq_f32(v68, vrsqrtsq_f32(v66, vmulq_f32(v68, v68)));
        v70 = v67;
        v70.i32[3] = 0;
        v71 = vbslq_s8(vcltzq_s32(v70), v66, vmulq_f32(v69, vrsqrtsq_f32(v66, vmulq_f32(v69, v69))));
        v72 = vmulq_n_f32(v50, v71.f32[0]);
        v73 = vmulq_lane_f32(v51, *v71.f32, 1);
        v74 = vmulq_laneq_f32(v52, v71, 2);
        v75 = vuzp1q_s32(v74, v74);
        v76 = vuzp1q_s32(v73, v73);
        v77 = v72;
        if (v67.i32[0])
        {
          v78 = vmlaq_f32(vmulq_f32(vextq_s8(v75, v74, 0xCuLL), vnegq_f32(v73)), v74, vextq_s8(v76, v73, 0xCuLL));
          v77 = vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL);
        }

        v79 = vmlaq_lane_f32(v53, v47, *v149.i8, 1);
        v80 = vuzp1q_s32(v72, v72);
        v81 = v73;
        if (v67.i32[1])
        {
          v82 = vmlaq_f32(vmulq_f32(vextq_s8(v80, v72, 0xCuLL), vnegq_f32(v74)), v72, vextq_s8(v75, v74, 0xCuLL));
          v81 = vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL);
        }

        v83 = vmlaq_laneq_f32(v79, v48, v149, 2);
        if (v67.i32[2])
        {
          v84 = vmlaq_f32(vmulq_f32(vextq_s8(v76, v73, 0xCuLL), vnegq_f32(v72)), v73, vextq_s8(v80, v72, 0xCuLL));
          v74 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
        }

        v85 = vmlaq_laneq_f32(v83, v49, v149, 3);
        v86 = (*v77.i32 + *&v81.i32[1]) + v74.f32[2];
        if (v86 > 0.0)
        {
          v87 = sqrtf(v86 + 1.0);
          *v88.f32 = vsub_f32(*&vzip2q_s32(v81, vuzp1q_s32(v81, v74)), *&vtrn2q_s32(v74, vzip2q_s32(v74, v77)));
          v88.f32[2] = *&v77.i32[1] - *v81.i32;
          v88.f32[3] = v87 * v87;
          v89 = 0.5 / v87;
LABEL_68:
          v90 = vmulq_n_f32(v88, v89);
          goto LABEL_77;
        }

        if (*v77.i32 < *&v81.i32[1] || *v77.i32 < v74.f32[2])
        {
          if (*&v81.i32[1] <= v74.f32[2])
          {
            v132 = vzip2q_s32(v77, v81).u64[0];
            v133 = __PAIR64__(v77.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v74.f32[2] + 1.0) - *v77.i32) - *&v81.i32[1])));
            v134 = vdup_lane_s32(*v81.i8, 0);
            v135 = vsub_f32(*v77.i8, v134);
            v134.i32[0] = v133.i32[0];
            v134.i32[0] = vmul_f32(v133, v134).u32[0];
            v134.i32[1] = v135.i32[1];
            *v88.f32 = vadd_f32(v132, *v74.f32);
            *&v88.u32[2] = v134;
            v89 = 0.5 / v133.f32[0];
            goto LABEL_68;
          }

          v93 = sqrtf(((*&v81.i32[1] + 1.0) - *v77.i32) - v74.f32[2]);
          v97.f32[0] = *&v77.i32[1] + *v81.i32;
          v92 = vzip2q_s32(v77, v81).u64[0];
          v97.f32[1] = v93 * v93;
          *&v97.u32[2] = vext_s8(vadd_f32(*v74.f32, v92), vsub_f32(*v74.f32, v92), 4uLL);
        }

        else
        {
          v93 = sqrtf(((*v77.i32 + 1.0) - *&v81.i32[1]) - v74.f32[2]);
          v97.f32[0] = v93 * v93;
          v94 = *&v77.i32[1] + *v81.i32;
          v95 = vzip2q_s32(v77, v81).u64[0];
          LODWORD(v96) = vadd_f32(v95, *v74.f32).u32[0];
          HIDWORD(v96) = vsub_f32(v95, *&v74).i32[1];
          v97.f32[1] = v94;
          v97.i64[1] = v96;
        }

        v90 = vmulq_n_f32(v97, 0.5 / v93);
LABEL_77:
        v170 = v51;
        v171 = v50;
        v180[0] = v50;
        v180[1] = v51;
        v152 = v85;
        v154 = v52;
        v180[2] = v52;
        v180[3] = v85;
        v180[4] = v90;
        v181 = v168;
        v182 = v169;
        v183 = v167;
        v184 = v10;
        v185 = v54;
        v186 = v55;
        v187 = v56;
        v188 = v57;
        v189 = v58;
        v190 = v59;
        v98 = *a1;
        if (*a1)
        {
          ObjectType = swift_getObjectType();
          type metadata accessor for emitter_pointcache_uniforms(0);
          sub_1AF6F4524(v180, 1, ObjectType, v100, v101, v102, v103, v104);
          v105 = a1[18];
          v106 = *(v105 + 208);
          v173 = *(v105 + 216);
          v107 = *(v105 + 224);
          if (v175)
          {
            v108 = v140 | v139;
          }

          else
          {
            v108 = 0;
          }

          swift_getObjectType();
          v109 = swift_unknownObjectRetain();
          sub_1AF6F458C(v109, v108, 0, 6);
          swift_unknownObjectRelease();
          v110 = v179;
          if (v179)
          {
LABEL_82:
            v111 = v110;
            if (v98)
            {
LABEL_83:
              swift_getObjectType();
              swift_unknownObjectRetain();
              sub_1AF6F458C(v111, v160 | (v159 << 32), 0, 7);
              goto LABEL_87;
            }

LABEL_86:
            swift_unknownObjectRetain();
LABEL_87:
            swift_unknownObjectRelease();
            if (*(&v178 + 1))
            {
              v113 = *(&v178 + 1);
              if (v98)
              {
LABEL_89:
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1AF6F458C(v113, v158 | (v157 << 32), 0, 8);
                goto LABEL_92;
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v113 = v106;
              v157 = v107;
              v158 = v173;
              if (v98)
              {
                goto LABEL_89;
              }
            }

            swift_unknownObjectRetain();
LABEL_92:
            swift_unknownObjectRelease();
            if (v178)
            {
              v114 = v178;
              if (v98)
              {
LABEL_94:
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1AF6F458C(v114, v156 | (v155 << 32), 0, 9);
                goto LABEL_97;
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v114 = v106;
              v155 = v107;
              v156 = v173;
              if (v98)
              {
                goto LABEL_94;
              }
            }

            swift_unknownObjectRetain();
LABEL_97:
            swift_unknownObjectRelease();
            if (v177)
            {
              v115 = v177;
              if (v98)
              {
LABEL_99:
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1AF6F458C(v115, v164 | (v162 << 32), 0, 10);
                goto LABEL_102;
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v115 = v106;
              v164 = v173;
              v162 = v107;
              if (v98)
              {
                goto LABEL_99;
              }
            }

            swift_unknownObjectRetain();
LABEL_102:
            swift_unknownObjectRelease();
            if (v174)
            {
              v106 = v174;
              v107 = v137;
              v116 = v138;
              if (v98)
              {
LABEL_104:
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1AF6F458C(v106, v116 | (v107 << 32), 0, 11);
LABEL_107:
                swift_unknownObjectRelease();
                v117 = v212;
                sub_1AFBDE384(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                v118 = swift_allocObject();
                v119 = BYTE13(v202) == 2;
                LOBYTE(v180[0]) = 0;
                if (v175)
                {
                  v120 = v117;
                }

                else
                {
                  v120 = 0;
                }

                *(v118 + 16) = xmmword_1AFE4C630;
                *(v118 + 32) = xmmword_1AFEA3D70;
                *(v118 + 48) = 0;
                *(v118 + 64) = v119;
                *(v118 + 128) = 13;
                v121 = v211;
                *(v118 + 144) = xmmword_1AFEA3D80;
                *(v118 + 160) = 0;
                *(v118 + 176) = v120;
                *(v118 + 240) = 13;
                if (v179)
                {
                  v122 = v121;
                }

                else
                {
                  v122 = 0;
                }

                v123 = v210;
                *(v118 + 256) = xmmword_1AFEA3D90;
                *(v118 + 272) = 0;
                *(v118 + 288) = v122;
                *(v118 + 352) = 13;
                if (v178 == 0)
                {
                  v124 = 0;
                }

                else
                {
                  v124 = v123;
                }

                v125 = v209;
                if (!(*(&v178 + 1) | v174))
                {
                  v125 = 0;
                }

                *(v118 + 368) = xmmword_1AFEA3DA0;
                *(v118 + 384) = 0;
                *(v118 + 400) = v124;
                *(v118 + 464) = 13;
                v126 = v208;
                *(v118 + 480) = xmmword_1AFEA3DB0;
                *(v118 + 496) = 0;
                *(v118 + 512) = v125;
                *(v118 + 576) = 13;
                if (!v177)
                {
                  v126 = 0;
                }

                *(v118 + 592) = xmmword_1AFEA3DC0;
                *(v118 + 608) = 0;
                *(v118 + 624) = v126;
                v127 = vdupq_n_s32(0x358637BDu);
                *(v118 + 688) = 13;
                v129 = (vminvq_u32(vcgtq_f32(v127, vabsq_f32(vaddq_f32(v171, xmmword_1AFE20C00)))) & 0x80000000) == 0 || (vminvq_u32(vcgtq_f32(v127, vabsq_f32(vaddq_f32(v170, xmmword_1AFE20C20)))) & 0x80000000) == 0 || (v128 = vdupq_n_s32(0x358637BDu), (vminvq_u32(vcgtq_f32(v128, vabsq_f32(vaddq_f32(v154, xmmword_1AFE20C10)))) & 0x80000000) == 0) || (vminvq_u32(vcgtq_f32(v128, vabsq_f32(vaddq_f32(v152, xmmword_1AFEA3DD0)))) & 0x80000000) == 0;
                *(v118 + 704) = xmmword_1AFEA3DE0;
                *(v118 + 720) = 0;
                *(v118 + 736) = v129;
                *(v118 + 800) = 13;
                v130 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

                MEMORY[0x1EEE9AC00](v131);
                sub_1AFCBF008(v166, sub_1AFBDDB40);

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return;
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v116 = v173;
              if (v98)
              {
                goto LABEL_104;
              }
            }

            swift_unknownObjectRetain();
            goto LABEL_107;
          }
        }

        else
        {
          v112 = a1[18];
          v106 = *(v112 + 208);
          v173 = *(v112 + 216);
          v107 = *(v112 + 224);
          v110 = v179;
          if (v179)
          {
            goto LABEL_82;
          }
        }

        swift_unknownObjectRetain();
        v111 = v106;
        v159 = v107;
        v160 = v173;
        if (v98)
        {
          goto LABEL_83;
        }

        goto LABEL_86;
      }

LABEL_31:
      *&v178 = 0;
      v155 = 0;
      v156 = 0;
      v30 = 0;
      goto LABEL_32;
    }

LABEL_21:
    v179 = 0;
    v159 = 0;
    v160 = 0;
    v151 = 0;
    goto LABEL_22;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  sub_1AFDFE218();

  *(&v180[0] + 1) = 0x80000001AFF4B060;
  v21 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v21);

  v22 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v136 = v22;
    swift_once();
    v22 = v136;
  }

  *&v180[0] = 0;
  sub_1AF0D4F18(v22, v180, 0xD000000000000014, 0x80000001AFF4B060);
}

unint64_t sub_1AFBD5558()
{
  if (*(v0 + 8))
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000013;
  }
}

char *sub_1AFBD5594(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{

  v6 = sub_1AF3CF75C(a3);

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v6 + 16) || (sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000), (v7 & 1) == 0))
  {
    v8 = MEMORY[0x1E69E7CC0];
    if ((a4 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v8 = sub_1AF422C28(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v48 = sub_1AF422C28(v9 > 1, v10 + 1, 1, v8);
    v11 = v10 + 1;
    v8 = v48;
  }

  *(v8 + 2) = v11;
  v12 = &v8[16 * v10];
  *(v12 + 4) = &type metadata for Position;
  *(v12 + 5) = &off_1F252EE70;
  if ((a4 & 0x100) != 0)
  {
LABEL_9:
    if (*(v6 + 16))
    {
      sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
        }

        v15 = *(v8 + 2);
        v14 = *(v8 + 3);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          v49 = sub_1AF422C28(v14 > 1, v15 + 1, 1, v8);
          v16 = v15 + 1;
          v8 = v49;
        }

        *(v8 + 2) = v16;
        v17 = &v8[16 * v15];
        *(v17 + 4) = &type metadata for Color;
        *(v17 + 5) = &off_1F252CA88;
      }
    }
  }

LABEL_16:
  if ((a4 & 0x1000000) != 0)
  {
    if (!*(v6 + 16))
    {
      goto LABEL_50;
    }

    v23 = sub_1AF419914(1702521203, 0xE400000000000000);
    if (v24)
    {
      v25 = *(v6 + 56) + 32 * v23;
      if (*(v25 + 24) == 28)
      {
        v26 = *v25;
        if ([swift_unknownObjectRetain_n() storageMode] == 2)
        {
          swift_unknownObjectRelease_n();
        }

        else
        {
          [v26 contents];
          v27 = v26;
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
          }

          v29 = *(v8 + 2);
          v28 = *(v8 + 3);
          if (v29 >= v28 >> 1)
          {
            v8 = sub_1AF422C28(v28 > 1, v29 + 1, 1, v8);
          }

          *(v8 + 2) = v29 + 1;
          v30 = &v8[16 * v29];
          *(v30 + 4) = &type metadata for Scale1;
          *(v30 + 5) = &off_1F252F788;
        }
      }
    }

    if (!*(v6 + 16))
    {
      goto LABEL_50;
    }

    v31 = sub_1AF419914(1702521203, 0xE400000000000000);
    if (v32)
    {
      v33 = *(v6 + 56) + 32 * v31;
      if (*(v33 + 24) == 29)
      {
        v34 = *v33;
        if ([swift_unknownObjectRetain_n() storageMode] == 2)
        {
          swift_unknownObjectRelease_n();
        }

        else
        {
          [v34 contents];
          v35 = v34;
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
          }

          v37 = *(v8 + 2);
          v36 = *(v8 + 3);
          if (v37 >= v36 >> 1)
          {
            v8 = sub_1AF422C28(v36 > 1, v37 + 1, 1, v8);
          }

          *(v8 + 2) = v37 + 1;
          v38 = &v8[16 * v37];
          *(v38 + 4) = &type metadata for Scale2;
          *(v38 + 5) = &off_1F252F838;
        }
      }
    }

    if (!*(v6 + 16))
    {
      goto LABEL_50;
    }

    v39 = sub_1AF419914(1702521203, 0xE400000000000000);
    if (v40)
    {
      v41 = *(v6 + 56) + 32 * v39;
      if (*(v41 + 24) == 30)
      {
        v42 = *v41;
        if ([swift_unknownObjectRetain_n() storageMode] == 2)
        {
          swift_unknownObjectRelease_n();
        }

        else
        {
          [v42 contents];
          v44 = v42;
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
          }

          v46 = *(v8 + 2);
          v45 = *(v8 + 3);
          if (v46 >= v45 >> 1)
          {
            v8 = sub_1AF422C28(v45 > 1, v46 + 1, 1, v8);
          }

          *(v8 + 2) = v46 + 1;
          v47 = &v8[16 * v46];
          *(v47 + 4) = &type metadata for Scale3;
          *(v47 + 5) = &off_1F252F998;
        }
      }
    }
  }

  if (!*(v6 + 16))
  {
LABEL_50:

    return v8;
  }

  sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
  v19 = v18;

  if (v19)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
    }

    v21 = *(v8 + 2);
    v20 = *(v8 + 3);
    if (v21 >= v20 >> 1)
    {
      v8 = sub_1AF422C28(v20 > 1, v21 + 1, 1, v8);
    }

    *(v8 + 2) = v21 + 1;
    v22 = &v8[16 * v21];
    *(v22 + 4) = &type metadata for Orientation;
    *(v22 + 5) = &off_1F252C8A8;
  }

  return v8;
}

uint64_t sub_1AFBD5B34(void *a1, uint64_t a2, int a3)
{
  v12[1] = a3;
  sub_1AFBDEAB4(0, &qword_1EB6434B0, sub_1AFBDEA60, &type metadata for PointCacheSpawner.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDEA60();
  sub_1AFDFF3F8();
  v18 = a2;
  v17 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v3)
  {
    v16 = 1;
    sub_1AFDFE8C8();
    v15 = 2;
    sub_1AFDFE8C8();
    v14 = 3;
    sub_1AFDFE8C8();
    v13 = 4;
    sub_1AFDFE8C8();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1AFBD5D64()
{
  v1 = *v0;
  v2 = 0x636143746E696F70;
  v3 = 0x4374697265686E69;
  v4 = 0x5374697265686E69;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1AFBD5E18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AFBD748C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AFBD5E40(uint64_t a1)
{
  v2 = sub_1AFBDEA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBD5E7C(uint64_t a1)
{
  v2 = sub_1AFBDEA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBD5EB8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFBD9EBC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 9) = BYTE1(v5) & 1;
    *(a1 + 10) = BYTE2(v5) & 1;
    *(a1 + 11) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_1AFBD5F08(void *a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 11))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  return sub_1AFBD5B34(a1, *v1, v3 | v4 | v5);
}

char *sub_1AFBD5F64(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 8);
  if (*(v2 + 10))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (*(v2 + 11))
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  return sub_1AFBD5594(a1, a2, *v2, v4 | v5 | v6);
}

double sub_1AFBD5FCC@<D0>(uint64_t a1@<X8>)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 16843009;
  return result;
}

double sub_1AFBD5FE0(uint64_t *a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 11);
  v143 = *(a1 + 9);
  v144 = v3;
  v4 = *(a1 + 15);
  v145 = *(a1 + 13);
  v146 = v4;
  v5 = *(a1 + 3);
  v139 = v2;
  v140 = v5;
  v6 = *(a1 + 7);
  v141 = *(a1 + 5);
  v142 = v6;
  v7 = v2;
  swift_retain_n();
  v8 = sub_1AF3CF964(*(&v7 + 1));
  v10 = v9;

  if (v10 == 2)
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = v8;
  }

  v12 = sub_1AF3CF75C(v11);
  if (v12)
  {
    v14 = v12;
    v15 = v13;

    sub_1AF3C9244(*(&v7 + 1), v135);
    v115 = v135[1];
    v117 = v135[0];
    v114 = v135[2];
    v119 = v135[3];

    if (v136)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    v17 = v141;

    v120 = v17;
    sub_1AFB95040(v17, &v137);
    v128 = v137;

    if (v138)
    {
      v128.columns[0] = xmmword_1AFE20150;
      v128.columns[1] = xmmword_1AFE20160;
      v128.columns[2] = xmmword_1AFE20180;
      v128.columns[3] = xmmword_1AFE201A0;
    }

    if (*(v14 + 16))
    {
      v18 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
      if (v19)
      {
        v106 = vdupq_n_s32(v16);
        v107 = vbslq_s8(v106, xmmword_1AFE20150, v117);
        v125 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128.columns[0], v107.f32[0]), v128.columns[1], *v107.f32, 1), v128.columns[2], v107, 2);
        v108 = vbslq_s8(v106, xmmword_1AFE20160, v115);
        v110 = vbslq_s8(v106, xmmword_1AFE20180, v114);
        v123 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128.columns[0], v108.f32[0]), v128.columns[1], *v108.f32, 1), v128.columns[2], v108, 2);
        v121 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128.columns[0], v110.f32[0]), v128.columns[1], *v110.f32, 1), v128.columns[2], v110, 2);
        v20 = *(v14 + 56) + 32 * v18;
        v105 = *(v20 + 8);
        v104 = *(v20 + 16);
        v116 = *(v20 + 24);
        v21 = *(v14 + 16);
        swift_unknownObjectRetain();
        v113 = v15;
        if (v21)
        {
          v22 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
          if (v23)
          {
            v24 = *(v14 + 56) + 32 * v22;
            v103 = *(v24 + 8);
            v112 = *(v24 + 24);
            v102 = *(v24 + 16) << 32;
            v118 = *v24;
            swift_unknownObjectRetain();
          }

          else
          {
            v118 = 0;
            v102 = 0;
            v103 = 0;
            v112 = 0;
          }

          v27 = v123;
          v26 = v125;
          v28 = v121;
          if (!*(v14 + 16))
          {
            v33 = 0;
            v100 = 0;
            v101 = 0;
            v32 = 0;
LABEL_27:
            v34 = vbslq_s8(v106, xmmword_1AFE201A0, v119);
            v126 = vmlaq_laneq_f32(v26, v128.columns[3], v107, 3);
            v127 = v34;
            v122 = vmlaq_laneq_f32(v28, v128.columns[3], v110, 3);
            v124 = vmlaq_laneq_f32(v27, v128.columns[3], v108, 3);
            if (*(v14 + 16))
            {
              v35 = sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
              if (v36)
              {
                v37 = *(v14 + 56) + 32 * v35;
                v38 = *v37;
                v111 = *(v37 + 8);
                v39 = *(v37 + 24);
                v109 = *(v37 + 16) << 32;
                swift_unknownObjectRetain();
              }

              else
              {
                v38 = 0;
                v111 = 0;
                v109 = 0;
                v39 = 0;
              }

              v34.i32[0] = v127.i32[0];
            }

            else
            {
              v38 = 0;
              v111 = 0;
              v109 = 0;
              v39 = 0;
            }

            v128.columns[0] = vmulq_n_f32(v128.columns[0], *v34.i32);

            v40 = v112;
            if (!v118)
            {
              v40 = 0;
            }

            if (v33)
            {
              v41 = v32;
            }

            else
            {
              v41 = 0;
            }

            if (v38)
            {
              v42 = v39;
            }

            else
            {
              v42 = 0;
            }

            v43 = vmulq_f32(v126, v126);
            v44 = vmulq_f32(v124, v124);
            v45 = vmulq_f32(v122, v122);
            v46 = vtrn2q_s32(v43, v44);
            v46.i32[2] = v45.i32[1];
            v47 = vaddq_f32(vzip1q_s32(vzip2q_s32(v43, v45), vdupq_laneq_s32(v44, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v43, v45), v44), v46));
            v48.i64[0] = 0x80000000800000;
            v48.i64[1] = 0x80000000800000;
            v49 = vcgeq_f32(v48, v47);
            v47.i32[3] = 0;
            v50 = vrsqrteq_f32(v47);
            v51 = vmulq_f32(v50, vrsqrtsq_f32(v47, vmulq_f32(v50, v50)));
            v52 = v49;
            v52.i32[3] = 0;
            v53 = vbslq_s8(vcltzq_s32(v52), v47, vmulq_f32(v51, vrsqrtsq_f32(v47, vmulq_f32(v51, v51))));
            v54 = vmulq_n_f32(v126, v53.f32[0]);
            v55 = vmulq_lane_f32(v124, *v53.f32, 1);
            v56 = vmulq_laneq_f32(v122, v53, 2);
            v57 = vuzp1q_s32(v56, v56);
            v58 = vuzp1q_s32(v55, v55);
            v59 = v54;
            if (v49.i32[0])
            {
              v60 = vmlaq_f32(vmulq_f32(vextq_s8(v57, v56, 0xCuLL), vnegq_f32(v55)), v56, vextq_s8(v58, v55, 0xCuLL));
              v59 = vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL);
            }

            v61 = vmlaq_lane_f32(v128.columns[0], v128.columns[1], *v127.f32, 1);
            v62 = vuzp1q_s32(v54, v54);
            v63 = v55;
            if (v49.i32[1])
            {
              v64 = vmlaq_f32(vmulq_f32(vextq_s8(v62, v54, 0xCuLL), vnegq_f32(v56)), v54, vextq_s8(v57, v56, 0xCuLL));
              v63 = vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL);
            }

            v65 = vmlaq_laneq_f32(v61, v128.columns[2], v127, 2);
            if (v49.i32[2])
            {
              v66 = vmlaq_f32(vmulq_f32(vextq_s8(v58, v55, 0xCuLL), vnegq_f32(v54)), v55, vextq_s8(v62, v54, 0xCuLL));
              v56 = vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL);
            }

            v67 = vmlaq_laneq_f32(v65, v128.columns[3], v127, 3);
            v68 = (*v59.i32 + *&v63.i32[1]) + v56.f32[2];
            if (v68 > 0.0)
            {
              v69 = sqrtf(v68 + 1.0);
              *v70.f32 = vsub_f32(*&vzip2q_s32(v63, vuzp1q_s32(v63, v56)), *&vtrn2q_s32(v56, vzip2q_s32(v56, v59)));
              v70.f32[2] = *&v59.i32[1] - *v63.i32;
              v70.f32[3] = v69 * v69;
              v71 = 0.5 / v69;
LABEL_49:
              v72 = vmulq_n_f32(v70, v71);
LABEL_58:
              *&v80 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL)), vadd_f32(vzip1_s32(*v43.i8, *v44.i8), vzip2_s32(*v43.i8, *v44.i8))));
              *(&v80 + 1) = COERCE_UNSIGNED_INT(sqrtf(*&v45.i32[2] + vaddv_f32(*v45.i8)));
              v129[0] = v126;
              v129[1] = v124;
              v129[2] = v122;
              v129[3] = v67;
              v129[4] = v72;
              v129[5] = v80;
              v130 = v113;
              v131 = v116;
              v132 = v40;
              v133 = v41;
              v134 = v42;
              if (*a1)
              {
                ObjectType = swift_getObjectType();
                type metadata accessor for pointcache_spawner_uniforms(0);
                sub_1AF6F4524(v129, 1, ObjectType, v82, v83, v84, v85, v86);
                swift_getObjectType();
                v87 = swift_unknownObjectRetain();
                sub_1AF6F458C(v87, v105 | (v104 << 32), 0, 6);
                swift_unknownObjectRelease();
                if (v118)
                {
                  v88 = v103 | v102;
                }

                else
                {
                  v88 = 0;
                }

                v89 = swift_unknownObjectRetain();
                sub_1AF6F458C(v89, v88, 0, 7);
                swift_unknownObjectRelease();
                if (v33)
                {
                  v90 = v100 | v101;
                }

                else
                {
                  v90 = 0;
                }

                v91 = swift_unknownObjectRetain();
                sub_1AF6F458C(v91, v90, 0, 8);
                swift_unknownObjectRelease();
                if (v38)
                {
                  v92 = v109 | v111;
                }

                else
                {
                  v92 = 0;
                }

                v93 = swift_unknownObjectRetain();
                sub_1AF6F458C(v93, v92, 0, 9);
                swift_unknownObjectRelease();
              }

              v94 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

              MEMORY[0x1EEE9AC00](v95);
              sub_1AFCBF008(v120, sub_1AFBDDB40);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              return result;
            }

            if (*v59.i32 < *&v63.i32[1] || *v59.i32 < v56.f32[2])
            {
              if (*&v63.i32[1] <= v56.f32[2])
              {
                v96 = vzip2q_s32(v59, v63).u64[0];
                v97 = __PAIR64__(v59.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v56.f32[2] + 1.0) - *v59.i32) - *&v63.i32[1])));
                v98 = vdup_lane_s32(*v63.i8, 0);
                v99 = vsub_f32(*v59.i8, v98);
                v98.i32[0] = v97.i32[0];
                v98.i32[0] = vmul_f32(v97, v98).u32[0];
                v98.i32[1] = v99.i32[1];
                *v70.f32 = vadd_f32(v96, *v56.f32);
                *&v70.u32[2] = v98;
                v71 = 0.5 / v97.f32[0];
                goto LABEL_49;
              }

              v75 = sqrtf(((*&v63.i32[1] + 1.0) - *v59.i32) - v56.f32[2]);
              v79.f32[0] = *&v59.i32[1] + *v63.i32;
              v74 = vzip2q_s32(v59, v63).u64[0];
              v79.f32[1] = v75 * v75;
              *&v79.u32[2] = vext_s8(vadd_f32(*v56.f32, v74), vsub_f32(*v56.f32, v74), 4uLL);
            }

            else
            {
              v75 = sqrtf(((*v59.i32 + 1.0) - *&v63.i32[1]) - v56.f32[2]);
              v79.f32[0] = v75 * v75;
              v76 = *&v59.i32[1] + *v63.i32;
              v77 = vzip2q_s32(v59, v63).u64[0];
              LODWORD(v78) = vadd_f32(v77, *v56.f32).u32[0];
              HIDWORD(v78) = vsub_f32(v77, *&v56).i32[1];
              v79.f32[1] = v76;
              v79.i64[1] = v78;
            }

            v72 = vmulq_n_f32(v79, 0.5 / v75);
            goto LABEL_58;
          }

          v29 = sub_1AF419914(1702521203, 0xE400000000000000);
          if (v30)
          {
            v31 = *(v14 + 56) + 32 * v29;
            v101 = *(v31 + 8);
            v32 = *(v31 + 24);
            v100 = *(v31 + 16) << 32;
            v33 = *v31;
            swift_unknownObjectRetain();
LABEL_25:
            v27 = v123;
            v26 = v125;
            v28 = v121;
            goto LABEL_27;
          }
        }

        else
        {
          v112 = 0;
          v102 = 0;
          v103 = 0;
          v118 = 0;
        }

        v33 = 0;
        v100 = 0;
        v101 = 0;
        v32 = 0;
        goto LABEL_25;
      }
    }
  }

  return result;
}

uint64_t destroy for PointCacheFromModel(uint64_t a1)
{
  MEMORY[0x1B271E060]();
}

void *initializeWithCopy for PointCacheFromModel(void *a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyInit();
  v5 = a2[2];
  *(v4 + 8) = a2[1];
  *(v4 + 16) = v5;
  v6 = a2[4];
  a1[3] = a2[3];
  a1[4] = v6;
  a1[5] = a2[5];

  return a1;
}

void *assignWithCopy for PointCacheFromModel(void *a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyAssign();
  *(v4 + 8) = a2[1];
  *(v4 + 16) = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

__n128 initializeWithTake for PointCacheFromModel(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v3 + 16) = result;
  *(v3 + 32) = v5;
  return result;
}

void *assignWithTake for PointCacheFromModel(void *a1, uint64_t a2)
{
  *(swift_unknownObjectWeakTakeAssign() + 8) = *(a2 + 8);
  a1[3] = *(a2 + 24);

  v4 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for PointCacheFromModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PointCacheFromModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PointCacheGenerator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PointCacheGenerator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1AFBD6C80()
{
  result = qword_1EB643350;
  if (!qword_1EB643350)
  {
    result = swift_getWitnessTable(aA_18, &type metadata for PointCache.Distribution, v0, v1);
    atomic_store(result, &qword_1EB643350);
  }

  return result;
}

uint64_t sub_1AFBD6CD4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1;
      v8 = *a1 + 8;
      v9 = -1;
      for (i = 1; i != v2; ++i)
      {
        v11 = *(v7 + 8 * i + 4);
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 4) = v14;
          *(v13 - 1) = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 8;
        --v9;
      }
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AFBDD990();
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v16[0] = (v6 + 32);
    v16[1] = v5;
    sub_1AFBD6E08(v16, v17, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AFBD6E08(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v64 = *a1;
    v8 = MEMORY[0x1E69E7CC0];
    v63 = a4;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *(*a3 + 8 * v7 + 4);
        v11 = 8 * v9;
        v12 = *a3 + 8 * v9;
        v13 = *(v12 + 4);
        v14 = v9 + 2;
        v15 = (v12 + 20);
        v16 = v10;
        while (v6 != v14)
        {
          v17 = *v15;
          v15 += 2;
          v18 = v16 >= v17;
          ++v14;
          v16 = v17;
          if ((((v13 < v10) ^ v18) & 1) == 0)
          {
            v7 = v14 - 1;
            goto LABEL_10;
          }
        }

        v7 = v6;
LABEL_10:
        if (v13 < v10 && v9 < v7)
        {
          v20 = 0;
          v21 = 8 * v7;
          v22 = v9;
          do
          {
            if (v22 != v7 + v20 - 1)
            {
              v23 = *a3 + v11;
              v24 = *a3 + v21;
              v25 = *v23;
              v26 = *(v23 + 4);
              *v23 = *(v24 - 8);
              *(v24 - 8) = v25;
              *(v24 - 4) = v26;
            }

            ++v22;
            --v20;
            v21 -= 8;
            v11 += 8;
          }

          while (v22 < v7 + v20);
          v6 = a3[1];
        }
      }

      if (v7 < v6 && v7 - v9 < a4)
      {
        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v9 + a4 != v7)
        {
          v46 = *a3;
          v47 = *a3 + 8 * v7;
          v48 = v9 - v7;
          do
          {
            v49 = *(v46 + 8 * v7 + 4);
            v50 = v48;
            v51 = v47;
            do
            {
              if (*(v51 - 1) >= v49)
              {
                break;
              }

              v52 = *v51;
              *v51 = *(v51 - 1);
              *(v51 - 4) = v52;
              *(v51 - 1) = v49;
              v51 -= 2;
            }

            while (!__CFADD__(v50++, 1));
            ++v7;
            v47 += 8;
            --v48;
          }

          while (v7 != v6);
        }

        v7 = v6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF4209A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v28 = *(v8 + 2);
      v27 = *(v8 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v8 = sub_1AF4209A4(v27 > 1, v28 + 1, 1, v8);
      }

      *(v8 + 2) = v29;
      v30 = v8 + 32;
      v31 = &v8[16 * v28 + 32];
      *v31 = v9;
      *(v31 + 1) = v7;
      if (v28)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      a4 = v63;
      if (v7 >= v6)
      {
        goto LABEL_54;
      }
    }

    while (1)
    {
      v32 = v29 - 1;
      if (v29 >= 4)
      {
        v36 = &v30[16 * v29];
        v37 = *(v36 - 7) - *(v36 - 8);
        v35 = *(v36 - 5) - *(v36 - 6);
        v38 = &v8[16 * v29];
        v33 = *v38;
        v34 = *(v38 + 1);
        if (v35 - v33 + v34 >= v37)
        {
          v41 = v29 - 2;
          v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
          goto LABEL_41;
        }
      }

      else
      {
        if (v29 != 3)
        {
          v39 = *&v8[16 * v29 + 8] - *&v8[16 * v29];
          v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
LABEL_38:
          if (v40 < v39)
          {
            goto LABEL_3;
          }

          goto LABEL_43;
        }

        v33 = *(v8 + 6);
        v34 = *(v8 + 7);
        v35 = *(v8 + 5) - *(v8 + 4);
      }

      v39 = v34 - v33;
      v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
      if (v39 + v40 < v35)
      {
        goto LABEL_38;
      }

      v41 = v29 - 2;
LABEL_41:
      if (v35 < v40)
      {
        v32 = v41;
      }

LABEL_43:
      v42 = &v30[16 * v32];
      v43 = *(v42 - 2);
      v44 = *(v42 + 1);
      sub_1AFBD723C((*a3 + 8 * v43), (*a3 + 8 * *v42), (*a3 + 8 * v44), v64);
      if (v4)
      {
      }

      *(v42 - 2) = v43;
      *(v42 - 1) = v44;
      v45 = *(v8 + 2);
      v29 = v45 - 1;
      memmove(&v30[16 * v32], v42 + 16, 16 * (v45 - 1 - v32));
      *(v8 + 2) = v45 - 1;
      if (v45 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v65 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AF650C88(v8);
  }

  v54 = v8 + 16;
  v55 = *(v8 + 2);
  if (v55 >= 2)
  {
    do
    {
      v56 = &v8[16 * v55];
      v57 = *v56;
      v58 = &v54[2 * v55];
      v59 = v58[1];
      sub_1AFBD723C((*a3 + 8 * *v56), (*a3 + 8 * *v58), (*a3 + 8 * v59), v65);
      if (v4)
      {
        break;
      }

      *v56 = v57;
      *(v56 + 1) = v59;
      v60 = *v54 - 1;
      memmove(&v54[2 * v55], v58 + 2, 16 * (*v54 - v55));
      *v54 = v60;
      v55 = v60;
    }

    while (v60 > 1);
  }
}

uint64_t sub_1AFBD723C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v20 >> 3));
  }

  return 1;
}

unint64_t sub_1AFBD7440(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFBD748C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636143746E696F70 && a2 == 0xEA00000000006568;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001AFF29580 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4374697265686E69 && a2 == 0xEC000000726F6C6FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001AFF23530 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5374697265686E69 && a2 == 0xEB00000000657A69)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1AFBD765C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFBD76A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5;
  v373 = *MEMORY[0x1E69E9840];
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*(a1 + 336) != 1)
  {
    v293 = a4;
    v28 = sub_1AF621684(*(result + 204));
    if (v28 == a3)
    {
    }

    v291 = a5;
    if (!*(a2 + 16))
    {
      v275 = 0;
      v280 = 0;
      v277 = 0;
      v273 = 0;
      v274 = 1;
      v278 = 1;
LABEL_37:
      v276 = 1;
LABEL_48:
      v272 = 1;
      goto LABEL_49;
    }

    v29 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
    if ((v30 & 1) != 0 && (v31 = *(a2 + 56) + 32 * v29, *(v31 + 24) == 30))
    {
      v32 = *v31;
      v33 = *(v31 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] == 2)
      {
        swift_unknownObjectRelease_n();
        v280 = 0;
        v278 = 1;
      }

      else
      {
        v44 = [v32 contents];
        v45 = v32;
        swift_unknownObjectRelease();
        v278 = 0;
        v280 = &v44[v33];
      }

      a5 = v291;
      if (!*(a2 + 16))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v280 = 0;
      v278 = 1;
      if (!*(a2 + 16))
      {
LABEL_36:
        v275 = 0;
        v277 = 0;
        v273 = 0;
        v274 = 1;
        goto LABEL_37;
      }
    }

    v34 = sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
    if ((v35 & 1) != 0 && (v36 = *(a2 + 56) + 32 * v34, *(v36 + 24) == 31))
    {
      v37 = *v36;
      v38 = *(v36 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] == 2)
      {
        swift_unknownObjectRelease_n();
        v277 = 0;
        v276 = 1;
      }

      else
      {
        v46 = [v37 contents];
        v47 = v37;
        swift_unknownObjectRelease();
        v276 = 0;
        v277 = &v46[v38];
      }

      a5 = v291;
      if (!*(a2 + 16))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v277 = 0;
      v276 = 1;
      if (!*(a2 + 16))
      {
LABEL_40:
        v275 = 0;
        v273 = 0;
        v274 = 1;
        goto LABEL_48;
      }
    }

    v39 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
    if ((v40 & 1) != 0 && (v41 = *(a2 + 56) + 32 * v39, *(v41 + 24) == 31))
    {
      v42 = *v41;
      v43 = *(v41 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] == 2)
      {
        swift_unknownObjectRelease_n();
        v275 = 0;
        v274 = 1;
      }

      else
      {
        v48 = [v42 contents];
        v49 = v42;
        swift_unknownObjectRelease();
        v274 = 0;
        v275 = &v48[v43];
      }

      a5 = v291;
      if (*(a2 + 16))
      {
LABEL_43:
        v50 = sub_1AF419914(1702521203, 0xE400000000000000);
        if (v51)
        {
          v52 = *(a2 + 56) + 32 * v50;
          if (*(v52 + 24) == 28)
          {
            v53 = *v52;
            v54 = *(v52 + 8);
            if ([swift_unknownObjectRetain_n() storageMode] == 2)
            {
              swift_unknownObjectRelease_n();
              v273 = 0;
              v272 = 1;
            }

            else
            {
              v255 = [v53 contents];
              v256 = v53;
              swift_unknownObjectRelease();
              v272 = 0;
              v273 = &v255[v54];
            }

            a5 = v291;
LABEL_49:
            v322 = v28;
            if (!*(a2 + 16))
            {
              v271 = 0;
              v258 = 0;
              v269 = 1;
              v270 = 1;
LABEL_62:
              v70 = a5[8];
              v69 = a5[9];
              if (qword_1ED72D720 != -1)
              {
                swift_once();
              }

              v340 = qword_1ED73B840;
              v341 = 0;
              v342 = 2;
              v343 = 0;
              v344 = 2;
              v345 = 0;
              sub_1AFBDDA80(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
              v71 = swift_allocObject();
              *(v71 + 16) = xmmword_1AFE431C0;
              *(v71 + 32) = &type metadata for Particle;
              *(v71 + 40) = &off_1F252D7A8;
              sub_1AF5F58E4(v71, 1, v327);
              swift_setDeallocating();
              swift_deallocClassInstance();
              sub_1AFAD0308(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
              v72 = swift_allocObject();
              *(v72 + 16) = xmmword_1AFE431C0;
              *(v72 + 56) = &type metadata for EmitterReference;
              *(v72 + 64) = &off_1F2563D20;
              v289 = v70;
              *(v72 + 32) = v70;
              v73 = (v72 + 32);
              v286 = v69;
              *(v72 + 36) = v69;
              sub_1AF5FC13C(v72, v328, xmmword_1AFE431C0);
              sub_1AF692DB0(v327);
              swift_setDeallocating();
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v73);
              swift_deallocClassInstance();
              v334 = v328[0];
              v335 = 0;
              v336 = 2;
              v337 = v328[2];
              v338 = v329;
              v339 = v330;
              v74 = v322 - a3;
              if (v322 < a3)
              {
                v75 = a3 - v322;
                v76 = v291;
                v77 = *(v291 + 1);
                sub_1AF68A8E0(v291, v346);
                v78 = v293;
                sub_1AF686FBC(v77, v293, a1, v75, v291);
                sub_1AF688940(v291);
LABEL_173:
                v80 = v289;
                v69 = v286;
LABEL_174:
                sub_1AF3C9244(*(v76 + 1), &v363);
                v287 = v366;
                if (v367)
                {
                  v156 = -1;
                }

                else
                {
                  v156 = 0;
                }

                v157 = vdupq_n_s32(v156);
                v300 = vbslq_s8(v157, xmmword_1AFE20150, v363);
                v304 = vbslq_s8(v157, xmmword_1AFE20160, v364);
                v283 = v157;
                v308 = vbslq_s8(v157, xmmword_1AFE20180, v365);

                sub_1AFB95040(v80 | (v69 << 32), &v353);
                v316 = v353.columns[1];
                v319 = v353.columns[0];
                v312 = v353.columns[2];
                v324 = v353.columns[3];

                v159 = v312;
                v158 = v316;
                v161 = v319;
                v160 = v324;
                if (v354)
                {
                  v158 = xmmword_1AFE20160;
                  v161 = xmmword_1AFE20150;
                  v159 = xmmword_1AFE20180;
                  v160 = xmmword_1AFE201A0;
                }

                v162 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v161, v300.f32[0]), v158, *v300.f32, 1), v159, v300, 2), v160, v300, 3);
                v163 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v161, v304.f32[0]), v158, *v304.f32, 1), v159, v304, 2), v160, v304, 3);
                v164 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v161, v308.f32[0]), v158, *v308.f32, 1), v159, v308, 2), v160, v308, 3);
                v165 = vmulq_f32(v162, v162);
                v166 = vmulq_f32(v163, v163);
                v167 = vmulq_f32(v164, v164);
                v168 = vtrn2q_s32(v165, v166);
                v168.i32[2] = v167.i32[1];
                v169 = vaddq_f32(vzip1q_s32(vzip2q_s32(v165, v167), vdupq_laneq_s32(v166, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v165, v167), v166), v168));
                v170.i64[0] = 0x80000000800000;
                v170.i64[1] = 0x80000000800000;
                v171 = vcgeq_f32(v170, v169);
                v169.i32[3] = 0;
                v172 = vrsqrteq_f32(v169);
                v173 = vmulq_f32(v172, vrsqrtsq_f32(v169, vmulq_f32(v172, v172)));
                v174 = v171;
                v174.i32[3] = 0;
                v175 = vbslq_s8(vcltzq_s32(v174), v169, vmulq_f32(v173, vrsqrtsq_f32(v169, vmulq_f32(v173, v173))));
                v176 = vmulq_n_f32(v162, v175.f32[0]);
                v177 = vmulq_lane_f32(v163, *v175.f32, 1);
                v178 = vmulq_laneq_f32(v164, v175, 2);
                v179 = vuzp1q_s32(v178, v178);
                v180 = vuzp1q_s32(v177, v177);
                v181 = v176;
                if (v171.i32[0])
                {
                  v182 = vmlaq_f32(vmulq_f32(vextq_s8(v179, v178, 0xCuLL), vnegq_f32(v177)), v178, vextq_s8(v180, v177, 0xCuLL));
                  v181 = vextq_s8(vuzp1q_s32(v182, v182), v182, 0xCuLL);
                }

                v183 = vuzp1q_s32(v176, v176);
                v184 = v177;
                if (v171.i32[1])
                {
                  v185 = vmlaq_f32(vmulq_f32(vextq_s8(v183, v176, 0xCuLL), vnegq_f32(v178)), v176, vextq_s8(v179, v178, 0xCuLL));
                  v184 = vextq_s8(vuzp1q_s32(v185, v185), v185, 0xCuLL);
                }

                if (v171.i32[2])
                {
                  v186 = vmlaq_f32(vmulq_f32(vextq_s8(v180, v177, 0xCuLL), vnegq_f32(v176)), v177, vextq_s8(v183, v176, 0xCuLL));
                  v178 = vextq_s8(vuzp1q_s32(v186, v186), v186, 0xCuLL);
                }

                v187 = (*v181.i32 + *&v184.i32[1]) + v178.f32[2];
                v267 = v163;
                v268 = v162;
                v266 = v164;
                v320 = v161;
                v325 = v160;
                v313 = v159;
                v317 = v158;
                v305 = v165;
                v309 = v167;
                v301 = v166;
                if (v187 > 0.0)
                {
                  v188 = sqrtf(v187 + 1.0);
                  *v189.f32 = vsub_f32(*&vzip2q_s32(v184, vuzp1q_s32(v184, v178)), *&vtrn2q_s32(v178, vzip2q_s32(v178, v181)));
                  v189.f32[2] = *&v181.i32[1] - *v184.i32;
                  v189.f32[3] = v188 * v188;
                  v279 = vmulq_n_f32(v189, 0.5 / v188);
                  goto LABEL_197;
                }

                if (*v181.i32 < *&v184.i32[1] || *v181.i32 < v178.f32[2])
                {
                  if (*&v184.i32[1] <= v178.f32[2])
                  {
                    v198 = vzip2q_s32(v181, v184).u64[0];
                    v199 = __PAIR64__(v181.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v178.f32[2] + 1.0) - *v181.i32) - *&v184.i32[1])));
                    v200 = vdup_lane_s32(*v184.i8, 0);
                    v201 = vsub_f32(*v181.i8, v200);
                    v200.i32[0] = v199.i32[0];
                    v200.i32[0] = vmul_f32(v199, v200).u32[0];
                    v200.i32[1] = v201.i32[1];
                    *v202.f32 = vadd_f32(v198, *v178.f32);
                    *&v202.u32[2] = v200;
                    v197 = vmulq_n_f32(v202, 0.5 / v199.f32[0]);
                    goto LABEL_196;
                  }

                  v192 = sqrtf(((*&v184.i32[1] + 1.0) - *v181.i32) - v178.f32[2]);
                  v196.f32[0] = *&v181.i32[1] + *v184.i32;
                  v191 = vzip2q_s32(v181, v184).u64[0];
                  v196.f32[1] = v192 * v192;
                  *&v196.u32[2] = vext_s8(vadd_f32(*v178.f32, v191), vsub_f32(*v178.f32, v191), 4uLL);
                }

                else
                {
                  v192 = sqrtf(((*v181.i32 + 1.0) - *&v184.i32[1]) - v178.f32[2]);
                  v196.f32[0] = v192 * v192;
                  v193 = *&v181.i32[1] + *v184.i32;
                  v194 = vzip2q_s32(v181, v184).u64[0];
                  LODWORD(v195) = vadd_f32(v194, *v178.f32).u32[0];
                  HIDWORD(v195) = vsub_f32(v194, *&v178).i32[1];
                  v196.f32[1] = v193;
                  v196.i64[1] = v195;
                }

                v197 = vmulq_n_f32(v196, 0.5 / v192);
LABEL_196:
                v279 = v197;
LABEL_197:
                sub_1AF6B06C0(v78, &v334, 0x200000000, v346);
                if (*v346)
                {
                  if (v348.i64[1] > 0)
                  {
                    v285 = *&v347[8];
                    if (*&v347[8])
                    {
                      v203 = 0;
                      v204 = vbslq_s8(v283, xmmword_1AFE201A0, v287);
                      v265 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v320, v204.f32[0]), v317, *v204.f32, 1), v313, v204, 2), v325, v204, 3);
                      v264 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v305, v305, 8uLL), *&vextq_s8(v301, v301, 8uLL)), vadd_f32(vzip1_s32(*v305.i8, *v301.i8), vzip2_s32(*v305.i8, *v301.i8))));
                      v284 = *&v346[40];
                      v205 = v348.i64[0];
                      v206 = *(v348.i64[0] + 32);
                      v207 = *(*&v347[16] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
                      v368 = *v346;
                      v369 = *&v346[8];
                      v370 = *&v346[24];
                      v208 = sqrtf(*&v309.i32[2] + vaddv_f32(*v309.i8));
                      _S9 = v279.i32[3];
                      v262 = vextq_s8(vuzp1q_s32(v279, v279), v279, 0xCuLL);
                      v263 = vdupq_laneq_s32(v279, 3);
                      v261 = vnegq_f32(v279);
                      v259 = v258 + 8;
                      v260 = v280 + 4;
                      v281 = v207;
                      v282 = v206;
                      while (1)
                      {
                        v321 = v203;
                        v210 = (v284 + 48 * v203);
                        v314 = *v210;
                        v310 = v210[1];
                        v306 = v210[2];
                        v212 = *(v210 + 2);
                        v211 = *(v210 + 3);
                        v213 = *(v210 + 4);
                        v214 = *(v210 + 5);
                        v326 = v6;
                        if (v207)
                        {
                          v215 = *(v214 + 376);

                          os_unfair_lock_lock(v215);
                          os_unfair_lock_lock(*(v214 + 344));
                        }

                        else
                        {
                        }

                        ecs_stack_allocator_push_snapshot(v206);
                        v216 = *(v205 + 64);
                        v351[0] = *(v205 + 48);
                        v351[1] = v216;
                        v352 = *(v205 + 80);
                        v217 = *(*(*(*(v214 + 40) + 16) + 32) + 16) + 1;
                        *(v205 + 48) = ecs_stack_allocator_allocate(*(v205 + 32), 48 * v217, 8);
                        *(v205 + 56) = v217;
                        *(v205 + 72) = 0;
                        *(v205 + 80) = 0;
                        *(v205 + 64) = 0;
                        v302 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v212, v211, v213, v205);
                        v294 = v218;
                        v219 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v212, v211, v213, v205);
                        v290 = v220;
                        v221 = (v220 & 1) != 0 ? 0 : v219;
                        v298 = v221;
                        v222 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v212, v211, v213, v205);
                        v224 = v223;
                        v225 = (v223 & 1) != 0 ? 0 : v222;
                        v296 = v225;
                        v226 = sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v212, v211, v213, v205);
                        v228 = v227;
                        v229 = (v227 & 1) != 0 ? 0 : v226;
                        v292 = v229;
                        v230 = sub_1AF64B110(&type metadata for Scale2, &off_1F252F838, v212, v211, v213, v205);
                        v232 = v231;
                        v233 = (v231 & 1) != 0 ? 0 : v230;
                        v288 = v233;
                        v234 = sub_1AF64B110(&type metadata for Scale3, &off_1F252F998, v212, v211, v213, v205);
                        v236 = (v235 & 1) != 0 ? 0 : v234;
                        if (v314 != v310)
                        {
                          break;
                        }

                        v237 = v326;
                        v207 = v281;
                        v238 = v317;
LABEL_222:
                        v317 = v238;
                        sub_1AF630994(v205, &v368, v351);
                        v6 = v237;
                        sub_1AF62D29C(v214);
                        v206 = v282;
                        ecs_stack_allocator_pop_snapshot(v282);
                        if (v207)
                        {
                          os_unfair_lock_unlock(*(v214 + 344));
                          os_unfair_lock_unlock(*(v214 + 376));
                        }

                        v203 = v321 + 1;
                        if (v321 + 1 == v285)
                        {
                          goto LABEL_241;
                        }
                      }

                      v239 = 0;
                      v240 = v274 | v224;
                      v241 = &v236[16 * v314];
                      v242 = &v260[12 * v306];
                      v243 = &v259[12 * v306];
                      v237 = v326;
                      v207 = v281;
                      v238 = v317;
                      while (1)
                      {
                        if ((v278 | v294))
                        {
                          v244 = 16 * v239;
                          if ((v276 | v290))
                          {
                            goto LABEL_228;
                          }
                        }

                        else
                        {
                          v245 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v265, v266, v242[1]), v267, *v242), v268, *(v242 - 1));
                          v245.i32[3] = v238.i32[3];
                          v238 = v245;
                          v245.i32[3] = 1.0;
                          *&v302[16 * v314 + 16 * v239] = v245;
                          v244 = 16 * v239;
                          if ((v276 | v290))
                          {
LABEL_228:
                            if (v240)
                            {
                              goto LABEL_229;
                            }

                            goto LABEL_235;
                          }
                        }

                        _Q0 = *&v277[16 * v306 + v244];
                        _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), v261), _Q0, v262);
                        v248 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v279, _Q0, 3), v263, _Q0), vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
                        __asm { FMLA            S2, S9, V0.S[3] }

                        v248.i32[3] = _Q2.i32[0];
                        *&v298[16 * v314 + v244] = v248;
                        if (v240)
                        {
LABEL_229:
                          if ((v272 | v228))
                          {
                            goto LABEL_230;
                          }

                          goto LABEL_236;
                        }

LABEL_235:
                        *&v296[16 * v314 + v244] = *&v275[16 * v306 + v244];
                        if ((v272 | v228))
                        {
LABEL_230:
                          if ((v270 | v232))
                          {
                            goto LABEL_231;
                          }

                          goto LABEL_237;
                        }

LABEL_236:
                        *&v292[4 * v314 + 4 * v239] = v264.f32[0] * *&v273[4 * v306 + 4 * v239];
                        if ((v270 | v232))
                        {
LABEL_231:
                          if (((v269 | v235) & 1) == 0)
                          {
                            goto LABEL_238;
                          }

                          goto LABEL_225;
                        }

LABEL_237:
                        *&v288[8 * v314 + 8 * v239] = vmul_f32(v264, *&v271[8 * v306 + 8 * v239]);
                        if (((v269 | v235) & 1) == 0)
                        {
LABEL_238:
                          *&v251 = vmul_f32(v264, *(v243 - 2));
                          *(&v251 + 2) = v208 * *v243;
                          HIDWORD(v251) = 0;
                          *&v241[16 * v239] = v251;
                        }

LABEL_225:
                        ++v239;
                        v242 += 3;
                        v243 += 3;
                        if (v310 - v314 == v239)
                        {
                          goto LABEL_222;
                        }
                      }
                    }
                  }

LABEL_241:
                  sub_1AF692DB0(v328);
                  sub_1AFBDD920(v346, &qword_1ED725EA0, &type metadata for QueryResult, v252);
                }

                else
                {
                  sub_1AF692DB0(v328);
                }
              }

              v78 = v293;
              v79 = sub_1AF6B06C0(v293, &v334, 0x200000000, &v355);
              if (!v355)
              {
LABEL_172:
                v76 = v291;
                goto LABEL_173;
              }

              v80 = v70;
              if (v362 <= 0 || (v299 = v359) == 0)
              {
                sub_1AFBDD920(&v355, &qword_1ED725EA0, &type metadata for QueryResult, v79);
                v76 = v291;
                goto LABEL_174;
              }

              v81 = 0;
              v297 = v358;
              v82 = v361;
              v83 = *(v360 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v307 = *(v361 + 32);
              v331 = v355;
              v332 = v356;
              v333 = v357;
              v311 = v361;
              v295 = v83;
LABEL_71:
              v85 = (v297 + 48 * v81);
              v86 = *v85;
              v87 = v85[1];
              v318 = *(v85 + 2);
              v88 = *(v85 + 5);
              v315 = *(v85 + 4);
              v303 = v81;
              if (v83)
              {
                v89 = *(v88 + 376);

                os_unfair_lock_lock(v89);
                os_unfair_lock_lock(*(v88 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v307);
              v90 = *(v82 + 64);
              v371[0] = *(v82 + 48);
              v371[1] = v90;
              v372 = *(v82 + 80);
              v91 = *(*(*(*(v88 + 40) + 16) + 32) + 16) + 1;
              *(v82 + 48) = ecs_stack_allocator_allocate(*(v82 + 32), 48 * v91, 8);
              *(v82 + 56) = v91;
              *(v82 + 72) = 0;
              *(v82 + 80) = 0;
              *(v82 + 64) = 0;
              v92 = v318;
              v323 = v6;
              if (!v318)
              {
                if (v86 == v87)
                {
                  goto LABEL_123;
                }

                while (2)
                {
                  v126 = v74 - 1;
                  if (v74 < 1)
                  {
                    goto LABEL_127;
                  }

                  v127 = *(v88 + 232);
                  if (v86 >= *(v88 + 256) && v86 < v127)
                  {
                    goto LABEL_126;
                  }

                  v365.i64[0] = 0;
                  v364 = 0u;
                  v363 = 0u;
                  v365.i8[8] = 5;
                  v129 = *(v82 + 104);
                  v130 = *(v129 + 16);
                  if (!v130)
                  {

                    goto LABEL_164;
                  }

                  v131 = v129 + 32;

                  v132 = 0;
LABEL_138:
                  sub_1AF6350F8(v131, &v353);
                  sub_1AF63515C(&v353, v346);
                  sub_1AF63515C(&v363, v347);
                  if (v346[40] > 2u)
                  {
                    if (v346[40] != 3)
                    {
                      if (v346[40] != 4)
                      {
                        sub_1AFBDDB6C(&v353, sub_1AF43A540);
                        if (v349 == 5)
                        {
                          v140 = vorrq_s8(*&v347[8], v348);
                          if (!(*&vorr_s8(*v140.i8, *&vextq_s8(v140, v140, 8uLL)) | *v347))
                          {
                            sub_1AF635250(v346);
LABEL_160:
                            v82 = v311;
                            v142 = sub_1AFBFCA08(v346);
                            v143 = *(v141 + 48);
                            if (v143)
                            {
                              v144 = *(v141 + 64);
                              *(v143 + 8 * v144) = v86;
                              *(v141 + 64) = v144 + 1;
                            }

                            (v142)(v346, 0);

                            sub_1AF635250(&v363);
LABEL_126:
                            v74 = v126;
LABEL_127:
                            if (++v86 == v87)
                            {
                              goto LABEL_123;
                            }

                            continue;
                          }
                        }

                        goto LABEL_136;
                      }

                      sub_1AFBDDB6C(&v353, sub_1AF43A540);
                      sub_1AF63515C(v346, v351);
                      if (v349 != 4)
                      {
                        goto LABEL_136;
                      }

                      v133 = LOBYTE(v351[0]);
                      v134 = v347[0];
                      sub_1AF635250(v346);
                      v135 = v133 == v134;
LABEL_149:
                      if (v135)
                      {
                        goto LABEL_160;
                      }

                      goto LABEL_137;
                    }

                    sub_1AF63515C(v346, v351);
                    if (v349 == 3)
                    {
LABEL_155:
                      sub_1AF616568(v351, &v368);
                      sub_1AF616568(v347, v350);
                      v139 = *(&v370 + 1);
                      v138 = v370;
                      sub_1AF441150(&v368, v370);
                      LOBYTE(v138) = sub_1AF640C98(v350, v138, v139);
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v350);
                      sub_1AFBDDB6C(&v353, sub_1AF43A540);
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v368);
                      sub_1AF635250(v346);
                      if (v138)
                      {
                        goto LABEL_160;
                      }

                      goto LABEL_137;
                    }
                  }

                  else
                  {
                    if (!v346[40])
                    {
                      sub_1AFBDDB6C(&v353, sub_1AF43A540);
                      sub_1AF63515C(v346, v351);
                      if (!v349)
                      {
                        goto LABEL_148;
                      }

                      goto LABEL_136;
                    }

                    if (v346[40] == 1)
                    {
                      sub_1AFBDDB6C(&v353, sub_1AF43A540);
                      sub_1AF63515C(v346, v351);
                      if (v349 == 1)
                      {
LABEL_148:
                        v136 = *&v351[0];
                        v137 = *v347;
                        sub_1AF635250(v346);
                        v135 = v136 == v137;
                        goto LABEL_149;
                      }

LABEL_136:
                      sub_1AFBDDB6C(v346, sub_1AF635194);
LABEL_137:
                      ++v132;
                      v131 += 72;
                      if (v130 == v132)
                      {
                        v127 = *(v88 + 232);
                        v82 = v311;
LABEL_164:
                        v145 = *(v88 + 240) - v127;
                        v146 = ecs_stack_allocator_allocate(*(v82 + 32), 8 * v145, 8);
                        *v146 = v86;
                        sub_1AF63515C(&v363, v346);
                        *v347 = v146;
                        *&v347[8] = v145;
                        *&v347[16] = 1;
                        v147 = *(v82 + 104);
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        *(v82 + 104) = v147;
                        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                        {
                          v147 = sub_1AF420EA0(0, v147[2] + 1, 1, v147);
                          *(v82 + 104) = v147;
                        }

                        v150 = v147[2];
                        v149 = v147[3];
                        if (v150 >= v149 >> 1)
                        {
                          *(v82 + 104) = sub_1AF420EA0(v149 > 1, v150 + 1, 1, v147);
                        }

                        sub_1AF635250(&v363);
                        v151 = *(v82 + 104);
                        *(v151 + 16) = v150 + 1;
                        v152 = v151 + 72 * v150;
                        *(v152 + 32) = *v346;
                        v154 = *&v346[32];
                        v153 = *v347;
                        v155 = *&v346[16];
                        *(v152 + 96) = *&v347[16];
                        *(v152 + 64) = v154;
                        *(v152 + 80) = v153;
                        *(v152 + 48) = v155;
                        *(v82 + 104) = v151;
                        goto LABEL_126;
                      }

                      goto LABEL_138;
                    }

                    sub_1AF63515C(v346, v351);
                    if (v349 == 2)
                    {
                      goto LABEL_155;
                    }
                  }

                  break;
                }

                sub_1AFBDDB6C(&v353, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v351);
                goto LABEL_136;
              }

              v93 = v315;
              if (!v315)
              {
                goto LABEL_123;
              }

              v94 = 0;
LABEL_81:
              v95 = v74 - 1;
              if (v74 < 1)
              {
                goto LABEL_80;
              }

              v96 = *(v92 + 8 * v94);
              v97 = *(v88 + 232);
              if (v96 >= *(v88 + 256) && v96 < v97)
              {
                goto LABEL_79;
              }

              v365.i64[0] = 0;
              v364 = 0u;
              v363 = 0u;
              v365.i8[8] = 5;
              v99 = *(v82 + 104);
              v100 = *(v99 + 16);
              if (!v100)
              {

LABEL_117:
                v115 = *(v88 + 240) - v97;
                v116 = ecs_stack_allocator_allocate(*(v82 + 32), 8 * v115, 8);
                *v116 = v96;
                sub_1AF63515C(&v363, v346);
                *v347 = v116;
                *&v347[8] = v115;
                *&v347[16] = 1;
                v117 = *(v82 + 104);
                v118 = swift_isUniquelyReferenced_nonNull_native();
                *(v82 + 104) = v117;
                if ((v118 & 1) == 0)
                {
                  v117 = sub_1AF420EA0(0, v117[2] + 1, 1, v117);
                  *(v82 + 104) = v117;
                }

                v120 = v117[2];
                v119 = v117[3];
                if (v120 >= v119 >> 1)
                {
                  *(v82 + 104) = sub_1AF420EA0(v119 > 1, v120 + 1, 1, v117);
                }

                sub_1AF635250(&v363);
                v121 = *(v82 + 104);
                *(v121 + 16) = v120 + 1;
                v122 = v121 + 72 * v120;
                *(v122 + 32) = *v346;
                v124 = *&v346[32];
                v123 = *v347;
                v125 = *&v346[16];
                *(v122 + 96) = *&v347[16];
                *(v122 + 64) = v124;
                *(v122 + 80) = v123;
                *(v122 + 48) = v125;
                *(v82 + 104) = v121;
                goto LABEL_78;
              }

              v101 = v99 + 32;

              v102 = 0;
              while (1)
              {
                sub_1AF6350F8(v101, &v353);
                sub_1AF63515C(&v353, v346);
                sub_1AF63515C(&v363, v347);
                if (v346[40] > 2u)
                {
                  if (v346[40] != 3)
                  {
                    if (v346[40] != 4)
                    {
                      sub_1AFBDDB6C(&v353, sub_1AF43A540);
                      if (v349 == 5)
                      {
                        v110 = vorrq_s8(*&v347[8], v348);
                        if (!(*&vorr_s8(*v110.i8, *&vextq_s8(v110, v110, 8uLL)) | *v347))
                        {
                          sub_1AF635250(v346);
LABEL_113:
                          v82 = v311;
                          v112 = sub_1AFBFCA08(v346);
                          v113 = *(v111 + 48);
                          if (v113)
                          {
                            v114 = *(v111 + 64);
                            *(v113 + 8 * v114) = v96;
                            *(v111 + 64) = v114 + 1;
                          }

                          (v112)(v346, 0);

                          sub_1AF635250(&v363);
LABEL_78:
                          v92 = v318;
                          v93 = v315;
LABEL_79:
                          v74 = v95;
LABEL_80:
                          if (++v94 != v93)
                          {
                            goto LABEL_81;
                          }

LABEL_123:
                          sub_1AF630994(v82, &v331, v371);
                          v6 = v323;
                          sub_1AF62D29C(v88);
                          ecs_stack_allocator_pop_snapshot(v307);
                          v83 = v295;
                          if (v295)
                          {
                            os_unfair_lock_unlock(*(v88 + 344));
                            os_unfair_lock_unlock(*(v88 + 376));
                          }

                          v81 = v303 + 1;
                          if (v303 + 1 == v299)
                          {
                            sub_1AFBDD920(&v355, &qword_1ED725EA0, &type metadata for QueryResult, v84);
                            v78 = v293;
                            goto LABEL_172;
                          }

                          goto LABEL_71;
                        }
                      }

                      goto LABEL_89;
                    }

                    sub_1AFBDDB6C(&v353, sub_1AF43A540);
                    sub_1AF63515C(v346, v351);
                    if (v349 != 4)
                    {
                      goto LABEL_89;
                    }

                    v103 = LOBYTE(v351[0]);
                    v104 = v347[0];
                    sub_1AF635250(v346);
                    _ZF = v103 == v104;
                    goto LABEL_102;
                  }

                  sub_1AF63515C(v346, v351);
                  if (v349 != 3)
                  {
                    goto LABEL_88;
                  }
                }

                else
                {
                  if (!v346[40])
                  {
                    sub_1AFBDDB6C(&v353, sub_1AF43A540);
                    sub_1AF63515C(v346, v351);
                    if (v349)
                    {
                      goto LABEL_89;
                    }

                    goto LABEL_101;
                  }

                  if (v346[40] == 1)
                  {
                    sub_1AFBDDB6C(&v353, sub_1AF43A540);
                    sub_1AF63515C(v346, v351);
                    if (v349 != 1)
                    {
                      goto LABEL_89;
                    }

LABEL_101:
                    v106 = *&v351[0];
                    v107 = *v347;
                    sub_1AF635250(v346);
                    _ZF = v106 == v107;
LABEL_102:
                    if (_ZF)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_90;
                  }

                  sub_1AF63515C(v346, v351);
                  if (v349 != 2)
                  {
LABEL_88:
                    sub_1AFBDDB6C(&v353, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v351);
LABEL_89:
                    sub_1AFBDDB6C(v346, sub_1AF635194);
                    goto LABEL_90;
                  }
                }

                sub_1AF616568(v351, &v368);
                sub_1AF616568(v347, v350);
                v109 = *(&v370 + 1);
                v108 = v370;
                sub_1AF441150(&v368, v370);
                LOBYTE(v108) = sub_1AF640C98(v350, v108, v109);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v350);
                sub_1AFBDDB6C(&v353, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v368);
                sub_1AF635250(v346);
                if (v108)
                {
                  goto LABEL_113;
                }

LABEL_90:
                ++v102;
                v101 += 72;
                if (v100 == v102)
                {
                  v97 = *(v88 + 232);
                  v82 = v311;
                  goto LABEL_117;
                }
              }
            }

            v55 = sub_1AF419914(1702521203, 0xE400000000000000);
            if (v56)
            {
              v57 = *(a2 + 56) + 32 * v55;
              if (*(v57 + 24) == 29)
              {
                v58 = *v57;
                v59 = *(v57 + 8);
                if ([swift_unknownObjectRetain_n() storageMode] != 2)
                {
                  v66 = v59;
                  v67 = [v58 contents];
                  v68 = v58;
                  swift_unknownObjectRelease();
                  v270 = 0;
                  v271 = &v67[v66];
                  if (*(a2 + 16))
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_61;
                }

                swift_unknownObjectRelease_n();
              }
            }

            v271 = 0;
            v270 = 1;
            if (*(a2 + 16))
            {
LABEL_55:
              v60 = sub_1AF419914(1702521203, 0xE400000000000000);
              if (v61)
              {
                v62 = *(a2 + 56) + 32 * v60;
                if (*(v62 + 24) == 30)
                {
                  v63 = a5;
                  v64 = *v62;
                  v65 = *(v62 + 8);
                  if ([swift_unknownObjectRetain_n() storageMode] == 2)
                  {
                    swift_unknownObjectRelease_n();
                    v258 = 0;
                    v269 = 1;
                  }

                  else
                  {
                    v253 = [v64 contents];
                    v254 = v64;
                    swift_unknownObjectRelease();
                    v269 = 0;
                    v258 = &v253[v65];
                  }

                  a5 = v63;
                  goto LABEL_62;
                }
              }
            }

LABEL_61:
            v258 = 0;
            v269 = 1;
            goto LABEL_62;
          }
        }
      }
    }

    else
    {
      v275 = 0;
      v274 = 1;
      if (*(a2 + 16))
      {
        goto LABEL_43;
      }
    }

    v273 = 0;
    goto LABEL_48;
  }

  v13 = a4;
  v14 = *(a1 + 528);
  v15 = a3 - v14;
  if (a3 == v14 || a3 <= v14)
  {
  }

  v16 = a5;
  v17 = a5[2];
  v18 = a5[3];
  if ((v17 != -1 || v18) && (v17 & 0x80000000) == 0 && *(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v17)
  {
    v19 = (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v17);
    v20 = *(v19 + 2);
    if (v18 == -1 || v19[2] == v18)
    {
      v21 = *(*(v13 + 144) + 8 * *v19 + 32);
      v22 = *(v21 + 48);
      v23 = (v22 + 32);
      v24 = *(v22 + 16) + 1;
      while (--v24)
      {
        v25 = v23 + 5;
        v26 = *v23;
        v23 += 5;
        if (v26 == &type metadata for ParticleSpawnState)
        {
          v27 = (&(*(v25 - 2))[8 * v20].Kind + *(v21 + 128));
          sub_1AF68A8E0(v16, v346);
          sub_1AFB7F308(v15, v27, v16);
          sub_1AF688940(v16);
        }
      }
    }
  }

  v355 = 0;
  *&v356 = 0xE000000000000000;
  sub_1AF68A8E0(v16, v346);
  sub_1AFDFE218();
  *v346 = v355;
  *&v346[8] = v356;
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v257 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v257);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EB20);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF688940(v16);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFBD9424(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, float a5, float a6)
{
  if (a5 == a6)
  {
    v6 = a3 - a2;
    if (a3 != a2)
    {
      v7 = (result + 16 * a2);
      do
      {
        *v7 = vmulq_n_f32(*v7, a5);
        ++v7;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v8 = a3 - a2;
    if (a3 != a2)
    {
      v9 = a4[2];
      v10 = a4[3];
      v11 = a6 - a5;
      v12 = (result + 16 * a2);
      v13 = *a4;
      v14 = a4[1];
      do
      {
        v15 = 9 * ((((5 * v14) >> 32) >> 25) | (640 * v14));
        v16 = v13 ^ v9;
        v17 = v14 ^ v10;
        v9 ^= v13 ^ (v14 << 17);
        v14 ^= v16;
        v13 ^= v17;
        v10 = __ROR8__(v17, 19);
        *v12 = vmulq_n_f32(*v12, (v11 * vcvts_n_f32_u64(*&v15 & 0xFFFFFFLL, 0x18uLL)) + a5);
        ++v12;
        --v8;
      }

      while (v8);
      *a4 = v13;
      a4[1] = v14;
      a4[2] = v9;
      a4[3] = v10;
    }
  }

  return result;
}

void sub_1AFBD94C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    sub_1AF419914(a2, a3);
    if (v3)
    {
      swift_unknownObjectRetain();
    }
  }
}

void sub_1AFBD9550(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1AF42C7DC(MEMORY[0x1E69E7CC0]);

  *a2 = v8;
  a2[3] = 0;
  sub_1AF44596C(a1, v49);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF4459C8(v49);
  if (!Strong)
  {
    v11 = 0;
    goto LABEL_11;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  v11 = v10;
  if (!v10)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v12 = [v10 nodeRef];
  if (!v12)
  {
LABEL_11:
    sub_1AF44596C(a1, v49);
    v19 = swift_unknownObjectWeakLoadStrong();
    sub_1AF4459C8(v49);
    if (!v19)
    {
      goto LABEL_26;
    }

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (!v20)
    {

      swift_unknownObjectRelease();
      return;
    }

    v21 = [v20 model];
    swift_unknownObjectRelease();
    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = [v21 mesh];

    if (!v22)
    {
      goto LABEL_26;
    }

    v23 = [v22 meshRef];
    v24 = v22;
    v25 = v23;
    v18 = sub_1AF20E1F8(a3, v25, 1);

    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  v14 = v12;
  v15 = sub_1AF1B7558(v12, v13);
  if (!v15)
  {

    goto LABEL_11;
  }

  v16 = v15;
  v50 = v3;
  v17 = [a3 renderResourceForDeformerStack:v15 node:v14 dataKind:1];
  v18 = sub_1AFDE21E0(v17);

  if (!v18)
  {
    v4 = v50;
    goto LABEL_11;
  }

  v4 = v50;
LABEL_16:
  v48 = sub_1AFDEA290(v18);
  a2[3] = v48;
  v27 = sub_1AFDEA180(v18, 0, v26);
  v29 = &selRef_antialiasingMode;
  v50 = v4;
  if (v27)
  {
    v30 = v27;
    v31 = sub_1AFDEA004(v18);
    v32 = [v31 attributes];

    v33 = [v32 objectAtIndexedSubscript_];
    if (v33)
    {
      swift_unknownObjectRetain();
      v46 = [v33 offset];
      v34 = sub_1AF471A88([v33 format]) * v48;
      v35 = [v33 format];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = *a2;
      v37 = v34;
      v29 = &selRef_antialiasingMode;
      sub_1AF85917C(v30, v46, v37, v35, 0x6E6F697469736F70, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

      swift_unknownObjectRelease();
      *a2 = v49[0];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v38 = sub_1AFDEA180(v18, 1, v28);
  if (v38)
  {
    v39 = v38;
    v40 = sub_1AFDEA004(v18);
    v41 = [v40 v29[59]];

    v42 = [v41 objectAtIndexedSubscript_];
    if (v42)
    {
      swift_unknownObjectRetain();
      v47 = [v42 offset];
      v43 = sub_1AF471A88([v42 format]) * v48;
      v44 = [v42 format];
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = *a2;
      sub_1AF85917C(v39, v47, v43, v44, 0x6C616D726F6ELL, 0xE600000000000000, v45);

      swift_unknownObjectRelease();
      *a2 = v49[0];
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_26:
}

uint64_t sub_1AFBD9A40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBDEAB4(0, &qword_1EB643368, sub_1AFBDDA2C, &type metadata for PointCacheEmitter.CodingKeys, MEMORY[0x1E69E6F48]);
  v27 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDDA2C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v6;
  v30 = 0;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v10 = v28;
  sub_1AF48C324();
  v30 = 1;
  sub_1AF48C3D0(&qword_1ED7231A0, MEMORY[0x1E69E6478], MEMORY[0x1E69E66E0]);
  sub_1AFDFE768();
  v11 = v28;
  LOBYTE(v28) = 2;
  v26 = sub_1AFDFE718();
  LOBYTE(v28) = 3;
  v25 = sub_1AFDFE718();
  LOBYTE(v28) = 4;
  v24 = sub_1AFDFE718();
  LOBYTE(v28) = 5;
  v23 = sub_1AFDFE718();
  v30 = 6;
  sub_1AFDFE6E8();
  if (v29)
  {
    v13 = -1;
  }

  else
  {
    v13 = v28;
  }

  if (v29)
  {
    v14 = 0;
  }

  else
  {
    v14 = HIDWORD(v28);
  }

  v30 = 7;
  sub_1AF51D5F4();
  sub_1AFDFE6E8();
  v15 = v28;
  if (v28 == 3)
  {
    v15 = 0;
  }

  v22 = v15;
  LOBYTE(v28) = 8;
  v21 = sub_1AFDFE6C8();
  LOBYTE(v28) = 9;
  v16 = sub_1AFDFE6A8();
  v25 &= 1u;
  v26 &= 1u;
  v24 &= 1u;
  v17 = v23 & 1;
  if ((v21 & 0x100000000) != 0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = *&v21;
  }

  (*(v9 + 8))(v8, v27);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v10;
  *(a2 + 8) = v13;
  *(a2 + 12) = v14;
  *(a2 + 16) = v11;
  v19 = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v19;
  *(a2 + 26) = v24;
  *(a2 + 27) = v17;
  *(a2 + 28) = v16 & 1;
  *(a2 + 29) = v22;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_1AFBD9EBC(void *a1)
{
  sub_1AFBDEAB4(0, &qword_1EB6434A0, sub_1AFBDEA60, &type metadata for PointCacheSpawner.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AFBDEA60();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v15 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v8 = v16;
    v14 = 1;
    sub_1AFDFE718();
    v13 = 2;
    sub_1AFDFE718();
    v12 = 3;
    v10[1] = sub_1AFDFE718();
    v11 = 4;
    sub_1AFDFE718();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AFBDA158(void *a1)
{
  sub_1AFBDEAB4(0, &qword_1EB6433A8, sub_1AFBDDC68, &type metadata for PointCacheGenerator.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AFBDDC68();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v14 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v8 = v15;
    LOBYTE(v15) = 1;
    sub_1AFDFE748();
    v14 = 2;
    sub_1AF51C930();
    sub_1AFDFE768();
    v14 = 3;
    sub_1AFBDDCBC();
    sub_1AFDFE768();
    v13 = v15;
    LOBYTE(v15) = 4;
    v9 = sub_1AFDFE6F8();
    v11 = *(v5 + 8);
    v12 = v9;
    v11(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AFBDA414(void *a1)
{
  v2 = v1;
  sub_1AFBDEAB4(0, &qword_1EB6433D0, sub_1AFBDDD64, &type metadata for REMeshAssetPointCache.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1AF42D33C(MEMORY[0x1E69E7CC0]);
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDDD64();
  sub_1AFDFF3B8();
  if (v1)
  {
  }

  else
  {
    v2 = sub_1AFDFE708();
    (*(v10 + 8))(v7, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AFBDA5E8(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  sub_1AF3CF88C(v3, &v11);

  v4 = v14;
  if (v14 == 2)
  {
    *&v5 = 0xFFFFFFFFLL;
    *(&v5 + 1) = 0xFFFFFFFFLL;
    v6 = 0;
    v7 = 0x40000000;
    v8 = 1065353216;
    v4 = 65793;
  }

  else
  {
    v6 = v15;
    v8 = v12;
    v7 = v13;
    v5 = v11;
  }

  v16 = v5;
  v17 = v8;
  v18 = v7;
  v19 = v4;
  v20 = v6;
  v9 = a1[4];

  sub_1AF68A8E0(a1, &v11);
  sub_1AF689880(v9, v2, v2, a1, &v16);
  sub_1AF688940(a1);
}

uint64_t sub_1AFBDA6D0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81);

  if (v3 == 1 && ((sub_1AFB93E58(), v5 = v4, v6 = a1[1], , v7 = sub_1AF3CF964(v6), v9 = v8, , v9 != 2) ? (v10 = v7) : (v10 = 0xFFFFFFFFLL), (v11 = sub_1AF3CF75C(v10)) != 0))
  {
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    sub_1AF68A8E0(a1, v20);

    sub_1AF68A298(v6, v2, a1, v2, v15, v16, v17, v18, v5);

    sub_1AF688940(a1);
  }

  else
  {
  }
}

unint64_t sub_1AFBDA85C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFBDA8A8(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v221 = a4;
  v243 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74(0);
  *&v231 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v230 = v214 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_1AFDFC298();
  v10 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v228 = v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_1AFDFDCB8();
  v12 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v232 = v214 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF43C9F0(a1, a2);
  *&v239 = a2;
  v14 = sub_1AF758E68(0, a1, a2);
  if (!v15)
  {
    goto LABEL_103;
  }

  v16 = v14;
  v233 = a3;
  v214[1] = v4;
  v17 = v15;
  v18 = sub_1AFDFD048();
  if ((v16 != 0x656863616370 || v17 != 0xE600000000000000) && (sub_1AFDFEE28() & 1) == 0)
  {

LABEL_103:
    sub_1AFBDC8FC();
    swift_allocError();
    *v71 = 0;
    v71[1] = 0;
    swift_willThrow();
    goto LABEL_104;
  }

  v214[2] = v17;
  v19 = v18 + 1;
  v20 = sub_1AF758E68(v18 + 1, a1, v239);
  if (!v21)
  {
    v224 = 0;
    v225 = MEMORY[0x1E69E7CC0];
    goto LABEL_113;
  }

  v22 = v20;
  v23 = v21;
  v224 = 0;
  v238 = (v12 + 104);
  v225 = MEMORY[0x1E69E7CC0];
  v236 = (v12 + 8);
  LODWORD(v235) = *MEMORY[0x1E696A028];
  v24 = v234;
  v25 = v232;
  v222 = v10;
  while (1)
  {
    while (1)
    {
      while (1)
      {

        v27 = sub_1AFDFD048();

        v19 += v27 + 1;
        v28 = objc_allocWithZone(MEMORY[0x1E696AE88]);
        v29 = sub_1AFDFCEC8();
        v30 = [v28 initWithString_];

        sub_1AFDFDC98();
        if (v31)
        {

          goto LABEL_8;
        }

        sub_1AFDFDC98();
        if (!v32)
        {
          break;
        }

        sub_1AFDFDC98();
        if (!v33)
        {

          *&v242 = 0;
          *(&v242 + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          *&v242 = 0xD000000000000012;
          *(&v242 + 1) = 0x80000001AFF4AF20;
          goto LABEL_108;
        }

        (*v238)(v25, v235, v24);
        v34 = sub_1AFDFDCD8();
        (*v236)(v25, v24);
        if ((v34 & 0x100000000) != 0 || *&v34 != 1.0)
        {

          *&v242 = 0xD000000000000010;
          *(&v242 + 1) = 0x80000001AFF4AF40;
LABEL_108:
          MEMORY[0x1B2718AE0](v22, v23);

          MEMORY[0x1B2718AE0](39, 0xE100000000000000);
          v75 = v242;
          sub_1AFBDC8FC();
          swift_allocError();
          *v76 = v75;
LABEL_109:
          swift_willThrow();

LABEL_104:
          v72 = a1;
          v73 = v239;
          return sub_1AF439ED8(v72, v73);
        }

LABEL_8:

        v22 = sub_1AF758E68(v19, a1, v239);
        v23 = v26;
        if (!v26)
        {
          goto LABEL_112;
        }
      }

      sub_1AFDFDC98();
      if (!v35)
      {
        break;
      }

      (*v238)(v25, v235, v24);
      v224 = sub_1AFDFDCC8();
      v69 = v68;
      (*v236)(v25, v24);
      if (v69)
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v211 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v213 = v211;
          swift_once();
          v211 = v213;
        }

        *&v242 = 0;
        sub_1AF0D4F18(v211, &v242, 0xD000000000000016, 0x80000001AFF4AF00);
        sub_1AFBDC8FC();
        swift_allocError();
        *v212 = 0;
        v212[1] = 0;
        goto LABEL_109;
      }

      v22 = sub_1AF758E68(v19, a1, v239);
      v23 = v70;
      v10 = v222;
      if (!v70)
      {
        goto LABEL_113;
      }
    }

    sub_1AFDFDC98();
    if (v36)
    {

      sub_1AFDFDC98();
      if (!v37)
      {

        sub_1AFBDC8FC();
        swift_allocError();
        *v77 = v22;
        v77[1] = v23;
        goto LABEL_109;
      }

      v237 = a1;

      v38 = 0;
LABEL_21:
      v40 = byte_1F2507588[v38++ + 32];
      sub_1AFDFDC98();
      v42 = v41;

      if (!v42)
      {
        v39 = v225;
        goto LABEL_20;
      }

      v39 = v225;
      v43 = *(v225 + 2);
      if (!v43)
      {
LABEL_84:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_1AF427EE4(0, *(v39 + 2) + 1, 1, v39);
        }

        v24 = v234;
        v61 = *(v39 + 2);
        v60 = *(v39 + 3);
        if (v61 >= v60 >> 1)
        {
          v39 = sub_1AF427EE4(v60 > 1, v61 + 1, 1, v39);
        }

        *(v39 + 2) = v61 + 1;
        v62 = &v39[16 * v61];
        v62[32] = v40;
        v63 = 1;
        goto LABEL_93;
      }

      v44 = 0;
      while (1)
      {
        v45 = v39[v44 + 32];
        if (v45 > 3)
        {
          if (v39[v44 + 32] > 5u)
          {
            if (v45 == 6)
            {
              v49 = 0x646E49746E696F6ALL;
              v58 = 1936024425;
            }

            else
            {
              v49 = 0x696557746E696F6ALL;
              v58 = 1937008743;
            }

            v50 = v58 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v40 > 3)
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v45 == 4)
            {
              v49 = 0x726F6C6F63;
            }

            else
            {
              v49 = 1702521203;
            }

            if (v45 == 4)
            {
              v50 = 0xE500000000000000;
            }

            else
            {
              v50 = 0xE400000000000000;
            }

            if (v40 > 3)
            {
              goto LABEL_50;
            }
          }
        }

        else
        {
          v46 = 0x7461746E6569726FLL;
          if (v45 == 2)
          {
            v46 = 0x6C616D726F6ELL;
          }

          v47 = 0xE600000000000000;
          if (v45 != 2)
          {
            v47 = 0xEB000000006E6F69;
          }

          v48 = 0x797469636F6C6576;
          if (!v39[v44 + 32])
          {
            v48 = 0x6E6F697469736F70;
          }

          if (v39[v44 + 32] <= 1u)
          {
            v49 = v48;
          }

          else
          {
            v49 = v46;
          }

          if (v39[v44 + 32] <= 1u)
          {
            v50 = 0xE800000000000000;
          }

          else
          {
            v50 = v47;
          }

          if (v40 > 3)
          {
LABEL_50:
            v52 = 0x696557746E696F6ALL;
            if (v40 == 6)
            {
              v52 = 0x646E49746E696F6ALL;
            }

            v53 = 0xEC00000073746867;
            if (v40 == 6)
            {
              v53 = 0xEC00000073656369;
            }

            v54 = 0x726F6C6F63;
            if (v40 != 4)
            {
              v54 = 1702521203;
            }

            v55 = 0xE500000000000000;
            if (v40 != 4)
            {
              v55 = 0xE400000000000000;
            }

            if (v40 <= 5)
            {
              v56 = v54;
            }

            else
            {
              v56 = v52;
            }

            if (v40 <= 5)
            {
              v51 = v55;
            }

            else
            {
              v51 = v53;
            }

            if (v49 != v56)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          }
        }

        if (v40 > 1)
        {
          if (v40 == 2)
          {
            v57 = 0x6C616D726F6ELL;
          }

          else
          {
            v57 = 0x7461746E6569726FLL;
          }

          if (v40 == 2)
          {
            v51 = 0xE600000000000000;
          }

          else
          {
            v51 = 0xEB000000006E6F69;
          }

          if (v49 != v57)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v51 = 0xE800000000000000;
          if (v40)
          {
            if (v49 != 0x797469636F6C6576)
            {
              goto LABEL_78;
            }
          }

          else if (v49 != 0x6E6F697469736F70)
          {
            goto LABEL_78;
          }
        }

LABEL_77:
        if (v50 == v51)
        {

LABEL_90:
          v39 = v225;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1AFC0DCEC(v39);
          }

          v24 = v234;
          v62 = &v39[v44];
          v63 = *&v39[v44 + 40] + 1;
LABEL_93:
          *(v62 + 5) = v63;
          v25 = v232;
LABEL_20:
          v225 = v39;
          if (v38 == 8)
          {

            v64 = v239;
            a1 = v237;
            goto LABEL_96;
          }

          goto LABEL_21;
        }

LABEL_78:
        v59 = sub_1AFDFEE28();

        if (v59)
        {
          goto LABEL_90;
        }

        v44 += 16;
        --v43;
        v39 = v225;
        if (!v43)
        {
          goto LABEL_84;
        }
      }
    }

    sub_1AFDFDC98();
    v66 = v65;

    v64 = v239;
    if (v66)
    {
      break;
    }

LABEL_96:
    v10 = v222;
    v22 = sub_1AF758E68(v19, a1, v64);
    v23 = v67;
    if (!v67)
    {
      goto LABEL_113;
    }
  }

LABEL_112:
  v10 = v222;
LABEL_113:
  if (!v221)
  {

    v80 = v239;
LABEL_261:

    return sub_1AF439ED8(a1, v80);
  }

  v237 = a1;
  v78 = v225;
  v79 = *(v225 + 2);
  v80 = v239;
  if (v79)
  {
    v227 = "d on this device ";
    v226 = 0x80000001AFF4AEC0;
    v223 = "Failed creating ";
    v222 = v10 + 4;

    v81 = (v78 + 40);
    v220 = xmmword_1AFE431C0;
    v82 = v233;
    while (1)
    {
      v86 = *(v81 - 8);
      v87 = *v81;
      if (v86 < 3)
      {
        break;
      }

      if (v86 == 4)
      {
        v238 = v81;
        if (v87 != 3)
        {
          if (v87 != 4)
          {

            *&v242 = 0;
            *(&v242 + 1) = 0xE000000000000000;
            sub_1AFDFE218();
            LOBYTE(v241) = 4;
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0x2720746E756F6320, 0xE800000000000000);
            v241 = v87;
            v173 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v173);

            v165 = 0x347C33203D212027;
            v166 = 0xE800000000000000;
LABEL_206:
            MEMORY[0x1B2718AE0](v165, v166);
            v174 = v242;
            sub_1AFBDC8FC();
            swift_allocError();
            *v175 = v174;
            swift_willThrow();

            v72 = v237;
            v73 = v80;
            return sub_1AF439ED8(v72, v73);
          }

          v88 = 31;
          goto LABEL_130;
        }

        goto LABEL_122;
      }

      if (v86 != 5)
      {
        goto LABEL_118;
      }

      if (v87 - 1 >= 3)
      {

        *&v242 = 0;
        *(&v242 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        LOBYTE(v241) = 5;
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0x2720746E756F6320, 0xE800000000000000);
        v241 = v87;
        v167 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v167);

        v165 = 0x327C31203D212027;
        v166 = 0xEA0000000000337CLL;
        goto LABEL_206;
      }

      v238 = v81;
      v88 = v87 + 27;
LABEL_130:
      *&v242 = 0;
      *(&v242 + 1) = 0xE000000000000000;
      MEMORY[0x1B2718AE0](0x2D656863616370, 0xE700000000000000);
      LODWORD(v235) = v86;
      LOBYTE(v241) = v86;
      sub_1AFDFE458();
      v89 = v242;
      v234 = v88;
      v90 = (4 * v88 - 108) * v224;
      v91 = *(v221 + 16);

      v92 = v90;
      BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v91, v90, 0);
      v236 = v79;
      if (BufferWithLength)
      {
        v94 = BufferWithLength;
        v95 = sub_1AFDFCEC8();

        [v94 setLabel_];
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v242 = 0;
        *(&v242 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, v227 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](v89, *(&v89 + 1));

        MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
        v241 = v90;
        v96 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v96);

        MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
        v241 = 0;
        type metadata accessor for MTLResourceOptions(0);
        sub_1AFDFE458();
        v97 = v242;
        v98 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v132 = v98;
          swift_once();
          v98 = v132;
        }

        *&v242 = 0;
        sub_1AF0D4F18(v98, &v242, v97, *(&v97 + 1));

        *&v242 = 0xD000000000000010;
        *(&v242 + 1) = v226;
        MEMORY[0x1B2718AE0](v89, *(&v89 + 1));
        MEMORY[0x1B2718AE0](0xD000000000000013, v223 | 0x8000000000000000);
        v241 = v90;
        v99 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v99);

        v100 = v242;
        v101 = sub_1AFDFDA08();
        v234 = *(&v89 + 1);
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        v102 = qword_1ED73B890;
        sub_1AFAD0308(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740]);
        v103 = swift_allocObject();
        *(v103 + 16) = v220;
        *(v103 + 56) = MEMORY[0x1E69E6158];
        *(v103 + 64) = sub_1AF0D544C();
        *(v103 + 32) = v100;

        sub_1AFDFC4C8(v101, &dword_1AF0CE000, v102, "%{public}s", 10, 2, v103);

        LODWORD(v232) = v101;
        v104 = v228;
        sub_1AFDFC288();
        v105 = v230;
        v106 = *(v231 + 48);
        v107 = *(v231 + 64);
        v108 = (v230 + *(v231 + 80));
        (*v222)(v230, v104, v229);
        *(v105 + v106) = v232;
        *(v105 + v107) = 0;
        *v108 = v100;

        sub_1AFDFC608();

        sub_1AFBDDB6C(v105, sub_1AF0D4E74);

        v94 = 0;
        v92 = 0;
        v234 = 0;
        v82 = v233;
        v79 = v236;
      }

      if (v235 > 2)
      {
        if (v235 == 3)
        {
          v110 = 0x7461746E6569726FLL;
          v109 = 0xEB000000006E6F69;
          if (v94)
          {
            goto LABEL_149;
          }
        }

        else if (v235 == 4)
        {
          v109 = 0xE500000000000000;
          v110 = 0x726F6C6F63;
          if (v94)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v109 = 0xE400000000000000;
          v110 = 1702521203;
          if (v94)
          {
LABEL_149:
            v232 = v94;
            v235 = v92;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v242 = *v82;
            v112 = v242;
            v113 = sub_1AF419914(v110, v109);
            v114 = v109;
            v116 = v115;
            v117 = *(v112 + 16) + ((v115 & 1) == 0);
            if (*(v112 + 24) >= v117)
            {
              v119 = v109;
              v118 = v110;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1AF84FE04();
              }
            }

            else
            {
              sub_1AF841984(v117, isUniquelyReferenced_nonNull_native);
              v118 = v110;
              v119 = v114;
              v120 = sub_1AF419914(v110, v114);
              if ((v116 & 1) != (v121 & 1))
              {
                goto LABEL_273;
              }

              v113 = v120;
            }

            v122 = v236;
            v123 = v242;
            if (v116)
            {
              v124 = (*(v242 + 56) + 32 * v113);
              *v124 = v232;
              v124[1] = 0;
              v125 = v234;
              v124[2] = v235;
              v124[3] = v125;

              swift_unknownObjectRelease();
            }

            else
            {
              *(v242 + 8 * (v113 >> 6) + 64) |= 1 << v113;
              v83 = (v123[6] + 16 * v113);
              *v83 = v118;
              v83[1] = v119;
              v84 = (v123[7] + 32 * v113);
              *v84 = v232;
              v84[1] = 0;
              v85 = v234;
              v84[2] = v235;
              v84[3] = v85;
              ++v123[2];
            }

            v82 = v233;
            *v233 = v123;
            v81 = v238;
            v80 = v239;
            v79 = v122;
            goto LABEL_118;
          }
        }
      }

      else if (v235)
      {
        if (v235 == 1)
        {
          v109 = 0xE800000000000000;
          v110 = 0x797469636F6C6576;
          if (v94)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v109 = 0xE600000000000000;
          v110 = 0x6C616D726F6ELL;
          if (v94)
          {
            goto LABEL_149;
          }
        }
      }

      else
      {
        v109 = 0xE800000000000000;
        v110 = 0x6E6F697469736F70;
        if (v94)
        {
          goto LABEL_149;
        }
      }

      v126 = sub_1AF419914(v110, v109);
      v128 = v127;

      v81 = v238;
      v80 = v239;
      if (v128)
      {
        v129 = v238;
        v130 = swift_isUniquelyReferenced_nonNull_native();
        v131 = *v82;
        *&v242 = *v82;
        if (!v130)
        {
          sub_1AF84FE04();
          v131 = v242;
        }

        swift_unknownObjectRelease();
        sub_1AF6B512C(v126, v131);
        *v82 = v131;
        v81 = v129;
      }

LABEL_118:
      v81 += 2;
      v79 = (v79 - 1);
      if (!v79)
      {
        goto LABEL_167;
      }
    }

    if (v87 != 3)
    {

      *&v242 = 0;
      *(&v242 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      LOBYTE(v241) = v86;
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0x2720746E756F6320, 0xE800000000000000);
      v241 = v87;
      v164 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v164);

      v165 = 0x33203D212027;
      v166 = 0xE600000000000000;
      goto LABEL_206;
    }

    v238 = v81;
LABEL_122:
    v88 = 30;
    goto LABEL_130;
  }

  v82 = v233;
LABEL_167:
  v82[3] = v224;
  v133 = *v82;
  if (!*(*v82 + 16))
  {
    *&v220 = 0;
    v216 = 0;
    v218 = 0;
    v217 = 0;
    v222 = 0;
    v219 = 0;
    LODWORD(v226) = 1;
    a1 = v237;
    if (!*(v133 + 16))
    {
      goto LABEL_218;
    }

    goto LABEL_214;
  }

  v134 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
  a1 = v237;
  if (v135)
  {
    v136 = *(v133 + 56) + 32 * v134;
    if (*(v136 + 24) == 30)
    {
      v138 = *v136;
      v137 = *(v136 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] != 2)
      {
        v168 = [v138 contents];
        v169 = v138;
        swift_unknownObjectRelease();
        v218 = &v168[v137];
        v80 = v239;
        if (*(v133 + 16))
        {
          goto LABEL_173;
        }

LABEL_202:
        *&v220 = 0;
        v216 = 0;
        v170 = &v242 + 8;
        goto LABEL_209;
      }

      swift_unknownObjectRelease_n();
    }
  }

  v218 = 0;
  if (!*(v133 + 16))
  {
    goto LABEL_202;
  }

LABEL_173:
  v139 = sub_1AF419914(0x797469636F6C6576, 0xE800000000000000);
  if (v140)
  {
    v141 = *(v133 + 56) + 32 * v139;
    if (*(v141 + 24) == 30)
    {
      v143 = *v141;
      v142 = *(v141 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] != 2)
      {
        v171 = [v143 contents];
        v172 = v143;
        swift_unknownObjectRelease();
        v217 = &v171[v142];
        v80 = v239;
        if (*(v133 + 16))
        {
          goto LABEL_178;
        }

LABEL_204:
        *&v220 = 0;
        v170 = &v242;
        goto LABEL_209;
      }

      swift_unknownObjectRelease_n();
    }
  }

  v217 = 0;
  if (!*(v133 + 16))
  {
    goto LABEL_204;
  }

LABEL_178:
  v144 = sub_1AF419914(0x6C616D726F6ELL, 0xE600000000000000);
  if (v145)
  {
    v146 = *(v133 + 56) + 32 * v144;
    if (*(v146 + 24) == 30)
    {
      v148 = *v146;
      v147 = *(v146 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] != 2)
      {
        v176 = [v148 contents];
        v177 = v148;
        swift_unknownObjectRelease();
        v216 = &v176[v147];
        v80 = v239;
        if (*(v133 + 16))
        {
          goto LABEL_183;
        }

        goto LABEL_208;
      }

      swift_unknownObjectRelease_n();
    }
  }

  v216 = 0;
  if (!*(v133 + 16))
  {
LABEL_208:
    v170 = &v244;
LABEL_209:
    *(v170 - 32) = 0;
    v222 = 0;
    v219 = 0;
    LODWORD(v226) = 1;
    if (!*(v133 + 16))
    {
      goto LABEL_218;
    }

    goto LABEL_214;
  }

LABEL_183:
  v149 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
  if (v150)
  {
    v151 = *(v133 + 56) + 32 * v149;
    if (*(v151 + 24) == 31)
    {
      v153 = *v151;
      v152 = *(v151 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] != 2)
      {
        v178 = [v153 contents];
        v179 = v153;
        swift_unknownObjectRelease();
        LODWORD(v226) = 0;
        v222 = &v178[v152];
        v80 = v239;
        if (*(v133 + 16))
        {
          goto LABEL_188;
        }

LABEL_212:
        *&v220 = 0;
        goto LABEL_213;
      }

      swift_unknownObjectRelease_n();
    }
  }

  v222 = 0;
  LODWORD(v226) = 1;
  if (!*(v133 + 16))
  {
    goto LABEL_212;
  }

LABEL_188:
  v154 = sub_1AF419914(1702521203, 0xE400000000000000);
  if (v155)
  {
    v156 = *(v133 + 56) + 32 * v154;
    if (*(v156 + 24) == 28)
    {
      v158 = *v156;
      v157 = *(v156 + 8);
      if ([swift_unknownObjectRetain_n() storageMode] != 2)
      {
        v207 = [v158 contents];
        v208 = v158;
        swift_unknownObjectRelease();
        *&v220 = &v207[v157];
        if (*(v133 + 16))
        {
          goto LABEL_193;
        }

        goto LABEL_213;
      }

      swift_unknownObjectRelease_n();
    }
  }

  *&v220 = 0;
  if (*(v133 + 16))
  {
LABEL_193:
    v159 = sub_1AF419914(1702521203, 0xE400000000000000);
    if (v160)
    {
      v161 = *(v133 + 56) + 32 * v159;
      if (*(v161 + 24) == 29)
      {
        v163 = *v161;
        v162 = *(v161 + 8);
        if ([swift_unknownObjectRetain_n() storageMode] != 2)
        {
          v209 = [v163 contents];
          v210 = v163;
          swift_unknownObjectRelease();
          v219 = &v209[v162];
          if (!*(v133 + 16))
          {
            goto LABEL_218;
          }

          goto LABEL_214;
        }

        swift_unknownObjectRelease_n();
      }
    }
  }

LABEL_213:
  v219 = 0;
  if (!*(v133 + 16))
  {
LABEL_218:
    v215 = 0;
    goto LABEL_219;
  }

LABEL_214:
  v180 = sub_1AF419914(1702521203, 0xE400000000000000);
  if ((v181 & 1) == 0)
  {
    goto LABEL_218;
  }

  v182 = *(v133 + 56) + 32 * v180;
  if (*(v182 + 24) != 30)
  {
    goto LABEL_218;
  }

  v184 = *v182;
  v183 = *(v182 + 8);
  if ([swift_unknownObjectRetain_n() storageMode] == 2)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_218;
  }

  v205 = [v184 contents];
  v206 = v184;
  swift_unknownObjectRelease();
  v215 = &v205[v183];
LABEL_219:
  if (!v224)
  {
LABEL_260:

    goto LABEL_261;
  }

  v230 = 0;
  v185 = *(v225 + 2);
  v232 = v225 + 32;
  v233 = v185;
  v186 = v80 >> 62;
  v238 = a1;
  __asm { FMOV            V0.4S, #1.0 }

  v231 = _Q0;
  while (!v233)
  {
LABEL_221:
    if (++v230 == v224)
    {
      goto LABEL_260;
    }
  }

  v192 = 0;
  v223 = &v215[12 * v230];
  v229 = &v216[12 * v230];
  v228 = &v217[12 * v230];
  v227 = &v218[12 * v230];
LABEL_228:
  v195 = &v232[16 * v192];
  v196 = *v195;
  v197 = *(v195 + 1);
  if (v197)
  {
    LODWORD(v235) = v196;
    v198 = 0;
    v199 = v197;
    v200 = v231;
    v236 = v197;
    v234 = v19 + 4 * v197;
    while (1)
    {
      if (v186 > 1)
      {
        if (v186 == 2)
        {
          v239 = v200;
          v202 = *(a1 + 16);
          v203 = sub_1AFDFBDB8();
          if (v203)
          {
            v203 = v203 + v202 - sub_1AFDFBDE8();
          }

          sub_1AFDFBDD8();
          v201 = *(v203 + v19);
          a1 = v237;
          v200 = v239;
          goto LABEL_232;
        }

        *(&v242 + 6) = 0;
        *&v242 = 0;
      }

      else
      {
        if (v186)
        {
          v239 = v200;
          v204 = sub_1AFDFBDB8();
          if (v204)
          {
            v204 = v238 + v204 - sub_1AFDFBDE8();
          }

          sub_1AFDFBDD8();
          v201 = *(v204 + v19);
          v200 = v239;
          goto LABEL_232;
        }

        LOBYTE(v242) = v238;
        BYTE1(v242) = BYTE1(a1);
        BYTE2(v242) = BYTE2(a1);
        BYTE3(v242) = BYTE3(a1);
        BYTE4(v242) = BYTE4(a1);
        BYTE5(v242) = BYTE5(a1);
        BYTE6(v242) = BYTE6(a1);
        BYTE7(v242) = HIBYTE(a1);
        WORD4(v242) = v80;
        BYTE10(v242) = BYTE2(v80);
        BYTE11(v242) = BYTE3(v80);
        BYTE12(v242) = BYTE4(v80);
        BYTE13(v242) = BYTE5(v80);
      }

      v201 = *(&v242 + v19);
LABEL_232:
      v19 += 4;
      v240 = v200;
      *(&v240 & 0xFFFFFFFFFFFFFFF3 | (4 * (v198 & 3))) = v201;
      v200 = v240;
      ++v198;
      v199 = (v199 - 1);
      if (!v199)
      {
        v19 = v234;
        v197 = v236;
        v196 = v235;
        if (v235 > 1)
        {
          goto LABEL_244;
        }

LABEL_251:
        if (!v196)
        {
          v193 = &v246;
          goto LABEL_225;
        }

        if (v196 == 1)
        {
          v193 = &v247;
          goto LABEL_225;
        }

LABEL_227:
        if (++v192 == v233)
        {
          goto LABEL_221;
        }

        goto LABEL_228;
      }
    }
  }

  v200 = v231;
  if (v196 <= 1)
  {
    goto LABEL_251;
  }

LABEL_244:
  if (v196 == 2)
  {
    v194 = v229;
LABEL_226:
    *v194 = v200;
    *(v194 + 8) = DWORD2(v200);
    goto LABEL_227;
  }

  if (v196 == 4)
  {
    if ((v226 & 1) == 0)
    {
      *&v222[2 * v230] = v200;
    }

    goto LABEL_227;
  }

  if (v196 != 5)
  {
    goto LABEL_227;
  }

  if (v197 == 3)
  {
    v193 = &v245;
LABEL_225:
    v194 = *(v193 - 32);
    goto LABEL_226;
  }

  if (v197 == 2)
  {
    *&v219[8 * v230] = v200;
    goto LABEL_227;
  }

  if (v197 == 1)
  {
    *(v220 + 4 * v230) = v200;
    goto LABEL_227;
  }

  sub_1AFDFE518();
  __break(1u);
LABEL_273:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

unint64_t sub_1AFBDC8FC()
{
  result = qword_1EB643358;
  if (!qword_1EB643358)
  {
    result = swift_getWitnessTable(aR_9, &type metadata for PCacheError, v0, v1);
    atomic_store(result, &qword_1EB643358);
  }

  return result;
}

unint64_t sub_1AFBDC950()
{
  result = qword_1EB643360;
  if (!qword_1EB643360)
  {
    result = swift_getWitnessTable(aR_10, &type metadata for PointCacheError, v0, v1);
    atomic_store(result, &qword_1EB643360);
  }

  return result;
}

uint64_t sub_1AFBDC9A4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 32);
  sub_1AF3CB184(v1, v30);
  if (v31)
  {
    v2 = v32;
    if (!v32)
    {
      goto LABEL_6;
    }

    Class = object_getClass(v32);
    if (Class == _TtC3VFX13PBRParameters)
    {
      swift_unknownObjectRetain();
      sub_1AFBDD920(v30, &qword_1ED7220C0, &type metadata for Material, v12);
      v13 = v2[4];
    }

    else
    {
      if (Class != _TtC3VFX16PrelitParameters)
      {
LABEL_6:
        sub_1AF3CA6C0(v1, v17);
        v27 = v17[12];
        v28 = v17[13];
        v29 = v17[14];
        v23 = v17[8];
        v24 = v17[9];
        v25 = v17[10];
        v26 = v17[11];
        v19 = v17[4];
        v20 = v17[5];
        v21 = v17[6];
        v22 = v17[7];
        v18[0] = v17[0];
        v18[1] = v17[1];
        v18[2] = v17[2];
        v18[3] = v17[3];
        if (sub_1AF448314(v18) == 1)
        {
          sub_1AFBDD920(v30, &qword_1ED7220C0, &type metadata for Material, v4);
        }

        else if (*(v19 + 16))
        {
          v7 = *(v19 + 32);
          v6 = *(v19 + 40);
          v8 = *(v19 + 48);
          v9 = *(v19 + 56);

          sub_1AF64E4D0(v7, v6, v8, v9);
          sub_1AFBDD920(v17, &qword_1ED7255C8, &type metadata for MaterialRuntime, v10);
          sub_1AFBDD920(v30, &qword_1ED7220C0, &type metadata for Material, v11);

          if (v9 == 2)
          {
            return v7;
          }

          sub_1AF88DCFC(v7, v6, v8, v9);
        }

        else
        {

          sub_1AFBDD920(v17, &qword_1ED7255C8, &type metadata for MaterialRuntime, v15);
          sub_1AFBDD920(v30, &qword_1ED7220C0, &type metadata for Material, v16);
        }

        return 0;
      }

      swift_unknownObjectRetain();
      sub_1AFBDD920(v30, &qword_1ED7220C0, &type metadata for Material, v14);
      v13 = v2[2];
    }

    swift_unknownObjectRelease();
    return v13;
  }

  return 0;
}

uint64_t sub_1AFBDCC00@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF0D4E74(0);
  v144 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v143 = v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v142);
  v141 = v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[3])
  {
LABEL_94:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v134 = a2;
  v8 = a1[5];
  v9 = a1[6];
  v10 = *(v8 + 16);
  v136 = a1;
  v137 = v9;
  v146 = v10;
  if (v10)
  {
    v145 = v8 + 32;
    v139 = (v6 + 32);
    v140 = 0x80000001AFF4B020;
    v133[1] = v8;

    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v138 = xmmword_1AFE431C0;
    while (1)
    {
      v13 = (v145 + 176 * v11);
      v14 = *v13;
      v15 = v13[2];
      v154 = v13[1];
      v155 = v15;
      v153 = v14;
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[6];
      v158 = v13[5];
      v159 = v18;
      v156 = v16;
      v157 = v17;
      v19 = v13[7];
      v20 = v13[8];
      v21 = v13[10];
      v162 = v13[9];
      v163 = v21;
      v160 = v19;
      v161 = v20;
      if (v153 != 3)
      {
        sub_1AF6E52F0(&v153, &v149);
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v39 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v147 = v11;
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        v40 = qword_1ED73B890;
        sub_1AFAD0308(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740]);
        v41 = swift_allocObject();
        *(v41 + 16) = v138;
        *(v41 + 56) = MEMORY[0x1E69E6158];
        *(v41 + 64) = sub_1AF0D544C();
        v42 = v140;
        *(v41 + 32) = 0xD00000000000001CLL;
        *(v41 + 40) = v42;
        sub_1AFDFC4C8(v39, &dword_1AF0CE000, v40, "%{public}s", 10, 2, v41);

        v43 = v141;
        sub_1AFDFC288();
        v44 = v143;
        v45 = v144[12];
        v46 = v144[16];
        v47 = &v143[v144[20]];
        (*v139)(v143, v43, v142);
        *(v44 + v45) = v39;
        *(v44 + v46) = 0;
        *v47 = 0xD00000000000001CLL;
        *(v47 + 1) = v42;
        sub_1AFDFC608();

        sub_1AF6E534C(&v153);
        sub_1AFBDDB6C(v44, sub_1AF0D4E74);
        v11 = v147;
        goto LABEL_5;
      }

      v22 = v155;
      if (v155)
      {
        v23 = *(&v157 + 1);
        v24 = *(&v155 + 1);
        if (v158 == 4)
        {
          swift_unknownObjectRetain_n();
          sub_1AF6E52F0(&v153, &v149);
          if ([v22 storageMode] == 2)
          {
            goto LABEL_94;
          }

          v25 = [v22 contents];
          v26 = v22;
          if (v23 > 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_1AF427FC4(0, *(v12 + 2) + 1, 1, v12);
            }

            v27 = 0;
            v28 = &v25[v24];
            v29 = *(v12 + 2);
            v30 = 24 * v29;
            do
            {
              if (__OFADD__(v27, 3))
              {
                v31 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v31 = v27 + 3;
              }

              v32 = &v28[4 * v27];
              v33 = *v32;
              v34 = *(v32 + 2);
              v35 = *(v12 + 3);
              v36 = v29 + 1;
              if (v29 >= v35 >> 1)
              {
                v12 = sub_1AF427FC4(v35 > 1, v29 + 1, 1, v12);
              }

              *&v37 = v33;
              *(&v37 + 1) = HIDWORD(v33);
              *(v12 + 2) = v36;
              v38 = &v12[v30];
              *(v38 + 2) = v37;
              *(v38 + 6) = v34;
              v30 += 24;
              v29 = v36;
              v27 = v31;
            }

            while (v31 < v23);
          }
        }

        else
        {
          if (v158 != 2)
          {
            goto LABEL_94;
          }

          swift_unknownObjectRetain_n();
          sub_1AF6E52F0(&v153, &v149);
          if ([v22 storageMode] == 2)
          {
            goto LABEL_94;
          }

          v48 = [v22 contents];
          v49 = v22;
          if (v23 > 0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v147 = v11;
            v135 = v22;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v12 = sub_1AF427FC4(0, *(v12 + 2) + 1, 1, v12);
            }

            v51 = 0;
            v52 = &v48[v24];
            v53 = *(v12 + 2);
            v54 = 24 * v53;
            do
            {
              if (__OFADD__(v51, 3))
              {
                v55 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v55 = v51 + 3;
              }

              v56 = &v52[2 * v51];
              v57 = *v56;
              v58 = *(v56 + 1);
              v59 = *(v56 + 2);
              v60 = *(v12 + 3);
              v61 = v53 + 1;
              if (v53 >= v60 >> 1)
              {
                v12 = sub_1AF427FC4(v60 > 1, v53 + 1, 1, v12);
              }

              *(v12 + 2) = v61;
              v62 = &v12[v54];
              *(v62 + 4) = v57;
              *(v62 + 5) = v58;
              *(v62 + 6) = v59;
              v54 += 24;
              v53 = v61;
              v51 = v55;
            }

            while (v55 < v23);
            swift_unknownObjectRelease();
            sub_1AF6E534C(&v153);
            v11 = v147;
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();
        sub_1AF6E534C(&v153);
      }

LABEL_5:
      if (++v11 == v146)
      {

        v9 = v137;
        goto LABEL_43;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v63 = 16 * v9;
  v64 = 8 * v9;
  if (v9 < 1)
  {
    if (!v9)
    {
      sub_1AF8C4D20(0);
      v89 = 1;
      sub_1AF8C4D20(1);
      sub_1AF8C4D20(2);
      v83 = MEMORY[0x1E69E7CC0];
      v75 = MEMORY[0x1E69E7CC0];
      v147 = MEMORY[0x1E69E7CC0];
      if (v137 < 1)
      {
        goto LABEL_68;
      }

LABEL_65:
      sub_1AFBDEAB4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      v90 = sub_1AFDFD488();
      *(v90 + 16) = v137;
      if ((v89 & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_66:
      sub_1AF8C4D20(4);
      v91 = v137;
      goto LABEL_72;
    }

    v66 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v65 = v9;
    sub_1AFBDEAB4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v66 = sub_1AFDFD488();
    *(v66 + 16) = v65;
  }

  v67 = (v66 + 32);
  bzero((v66 + 32), v63);
  v68 = sub_1AF8C4D20(0);
  v70 = v137;
  if (v68)
  {
    v71 = (v68 + 8);
    v72 = v137;
    do
    {
      *&v73 = *(v71 - 1);
      DWORD2(v73) = *v71;
      v71 = (v71 + v69);
      *(&v73 + 1) = DWORD2(v73);
      *v67++ = v73;
      --v72;
    }

    while (v72);
  }

  v147 = v66;
  if (v70 < 1)
  {
    v75 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v74 = v70;
    sub_1AFBDEAB4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v75 = sub_1AFDFD488();
    *(v75 + 16) = v74;
  }

  v76 = (v75 + 32);
  bzero((v75 + 32), v63);
  v77 = sub_1AF8C4D20(1);
  v79 = v137;
  if (v77)
  {
    v80 = (v77 + 8);
    v81 = v137;
    do
    {
      *&v82 = *(v80 - 1);
      DWORD2(v82) = *v80;
      v80 = (v80 + v78);
      *(&v82 + 1) = DWORD2(v82);
      *v76++ = v82;
      --v81;
    }

    while (v81);
  }

  if (v79 < 1)
  {
    v83 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AFBDEAB4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v83 = sub_1AFDFD488();
    *(v83 + 16) = v79;
  }

  bzero((v83 + 32), v64);
  v84 = sub_1AF8C4D20(2);
  if (!v84)
  {
    v89 = 0;
    if (v137 < 1)
    {
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  v86 = 32;
  v87 = v137;
  v88 = v137;
  do
  {
    *(v83 + v86) = *v84;
    v84 = (v84 + v85);
    v86 += 8;
    --v88;
  }

  while (v88);
  v89 = 0;
  if (v87 >= 1)
  {
    goto LABEL_65;
  }

LABEL_68:
  v90 = MEMORY[0x1E69E7CC0];
  if (v89)
  {
    goto LABEL_66;
  }

LABEL_69:
  v92 = (v90 + 32);
  memset_pattern16((v90 + 32), &xmmword_1AFE21160, v63);
  v93 = sub_1AF8C4D20(4);
  v91 = v137;
  if (v93)
  {
    v95 = v137;
    do
    {
      *v92++ = *v93;
      v93 = (v93 + v94);
      --v95;
    }

    while (v95);
  }

LABEL_72:
  v96 = v64;
  if (v91 < 1)
  {
    v97 = MEMORY[0x1E69E7CC0];
    if (v89)
    {
      goto LABEL_74;
    }
  }

  else
  {
    sub_1AFBDEAB4(0, &qword_1ED72F6D8, sub_1AF477AB8, MEMORY[0x1E69E7290], MEMORY[0x1E69E74A8]);
    v97 = sub_1AFDFD488();
    *(v97 + 16) = v137;
    if (v89)
    {
LABEL_74:
      sub_1AF8C4D20(9);
      v98 = v137;
      goto LABEL_79;
    }
  }

  v99 = (v97 + 32);
  bzero((v97 + 32), v96);
  v100 = sub_1AF8C4D20(9);
  v98 = v137;
  if (v100)
  {
    v102 = v137;
    do
    {
      *v99++ = *v100;
      v100 = (v100 + v101);
      --v102;
    }

    while (v102);
  }

LABEL_79:
  if (v98 < 1)
  {
    v103 = MEMORY[0x1E69E7CC0];
    if (v89)
    {
      goto LABEL_81;
    }

LABEL_83:
    v105 = v63;
    v104 = v75;
    v106 = (v103 + 32);
    bzero((v103 + 32), v105);
    v107 = sub_1AF8C4D20(8);
    v109 = v137;
    if (v107)
    {
      do
      {
        *v106++ = *v107;
        v107 = (v107 + v108);
        --v109;
      }

      while (v109);
    }

    goto LABEL_85;
  }

  sub_1AFBDEAB4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v103 = sub_1AFDFD488();
  *(v103 + 16) = v137;
  if ((v89 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_81:
  v104 = v75;
  sub_1AF8C4D20(8);
LABEL_85:
  v110 = *(v12 + 2);
  v111 = sub_1AFDFD488();
  v112 = v111;
  *(v111 + 16) = v110 + 1;
  *(v111 + 32) = 0;
  if (v110)
  {
    bzero((v111 + 36), 4 * v110);
  }

  v113 = *(v12 + 2);
  v114 = v147;
  if (v113)
  {
    v115 = v147 + 32;
    v116 = (v112 + 36);
    v117 = (v12 + 48);
    do
    {
      v118 = *(v117 - 2);
      v119 = *(v117 - 1);
      v120 = *v117;
      v117 += 3;
      v121 = *(v115 + 16 * v118);
      v122 = vsubq_f32(*(v115 + 16 * v119), v121);
      v123 = vsubq_f32(*(v115 + 16 * v120), v121);
      v124 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL), vnegq_f32(v123)), v122, vextq_s8(vuzp1q_s32(v123, v123), v123, 0xCuLL));
      v125 = vmulq_f32(v124, v124);
      *v116++ = sqrtf(v125.f32[1] + (v125.f32[2] + v125.f32[0])) * 0.5;
      --v113;
    }

    while (v113);
    v126 = *(v12 + 2);
    if (v126)
    {
      v127 = *(v112 + 32);
      v128 = (v112 + 36);
      do
      {
        v127 = v127 + *v128;
        *v128++ = v127;
        --v126;
      }

      while (v126);
    }
  }

  *&v149 = v114;
  *(&v149 + 1) = v104;
  *&v150 = v90;
  *(&v150 + 1) = v83;
  *&v151 = v97;
  *(&v151 + 1) = v103;
  *&v152 = v12;
  *(&v152 + 1) = v112;
  *&v153 = v114;
  *(&v153 + 1) = v104;
  *&v154 = v90;
  *(&v154 + 1) = v83;
  *&v155 = v97;
  *(&v155 + 1) = v103;
  *&v156 = v12;
  *(&v156 + 1) = v112;
  sub_1AFBDD9F4(&v149, v148);
  result = sub_1AFBDD8F0(&v153);
  v130 = v150;
  v131 = v134;
  *v134 = v149;
  v131[1] = v130;
  v132 = v152;
  v131[2] = v151;
  v131[3] = v132;
  return result;
}

uint64_t sub_1AFBDD920(uint64_t a1, unint64_t *a2, uint64_t a3, __n128 a4)
{
  sub_1AFBDE384(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AFBDD990()
{
  if (!qword_1EB638598)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638598);
    }
  }
}

unint64_t sub_1AFBDDA2C()
{
  result = qword_1EB643370;
  if (!qword_1EB643370)
  {
    result = swift_getWitnessTable(byte_1AFEA4D04, &type metadata for PointCacheEmitter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643370);
  }

  return result;
}

void sub_1AFBDDA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AFBDDAE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1AFBDDA80(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFBDDB6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AFBDDC14()
{
  result = qword_1EB643398;
  if (!qword_1EB643398)
  {
    result = swift_getWitnessTable(byte_1AFEA4CA4, &type metadata for PointCacheFromModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643398);
  }

  return result;
}

unint64_t sub_1AFBDDC68()
{
  result = qword_1EB6433B0;
  if (!qword_1EB6433B0)
  {
    result = swift_getWitnessTable(aEu, &type metadata for PointCacheGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6433B0);
  }

  return result;
}

unint64_t sub_1AFBDDCBC()
{
  result = qword_1EB6433B8;
  if (!qword_1EB6433B8)
  {
    result = swift_getWitnessTable(aC_8, &type metadata for PointCache.BakingOptions, v0, v1);
    atomic_store(result, &qword_1EB6433B8);
  }

  return result;
}

unint64_t sub_1AFBDDD10()
{
  result = qword_1EB6433C8;
  if (!qword_1EB6433C8)
  {
    result = swift_getWitnessTable(aU_6, &type metadata for PointCache.BakingOptions, v0, v1);
    atomic_store(result, &qword_1EB6433C8);
  }

  return result;
}

unint64_t sub_1AFBDDD64()
{
  result = qword_1EB6433D8;
  if (!qword_1EB6433D8)
  {
    result = swift_getWitnessTable(byte_1AFEA4BB4, &type metadata for REMeshAssetPointCache.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6433D8);
  }

  return result;
}

uint64_t *assignWithCopy for MeshData(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  return a1;
}

uint64_t getEnumTagSinglePayload for PCacheError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PCacheError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TypedBufferSlice(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = a2[3];
  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for TypedBufferSlice(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t *assignWithTake for TypedBufferSlice(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 1) = *(a2 + 1);
  a1[3] = a2[3];
  return a1;
}

uint64_t *initializeWithCopy for PointCacheRuntime(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for PointCacheRuntime(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t *assignWithTake for PointCacheRuntime(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  a1[3] = a2[3];
  return a1;
}

uint64_t getEnumTagSinglePayload for PointCacheEmitter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for PointCacheEmitter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AFBDE320(unint64_t *a1, unint64_t *a2, uint64_t a3, __n128 a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AFBDE384(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AFBDE384(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AFBDE3D8()
{
  result = qword_1EB643408;
  if (!qword_1EB643408)
  {
    result = swift_getWitnessTable(byte_1AFEA4454, &type metadata for PointCache.Distribution, v0, v1);
    atomic_store(result, &qword_1EB643408);
  }

  return result;
}

unint64_t sub_1AFBDE430()
{
  result = qword_1EB643410;
  if (!qword_1EB643410)
  {
    result = swift_getWitnessTable(byte_1AFEA44AC, &type metadata for PointCache.BakingOptions, v0, v1);
    atomic_store(result, &qword_1EB643410);
  }

  return result;
}

unint64_t sub_1AFBDE488()
{
  result = qword_1EB643418;
  if (!qword_1EB643418)
  {
    result = swift_getWitnessTable(byte_1AFEA447C, &type metadata for PointCache.BakingOptions, v0, v1);
    atomic_store(result, &qword_1EB643418);
  }

  return result;
}

unint64_t sub_1AFBDE4E0()
{
  result = qword_1EB643420;
  if (!qword_1EB643420)
  {
    result = swift_getWitnessTable(aMj, &type metadata for PointCache.BakingOptions, v0, v1);
    atomic_store(result, &qword_1EB643420);
  }

  return result;
}

unint64_t sub_1AFBDE538()
{
  result = qword_1EB643428;
  if (!qword_1EB643428)
  {
    result = swift_getWitnessTable(byte_1AFEA450C, &type metadata for PointCache.BakingOptions, v0, v1);
    atomic_store(result, &qword_1EB643428);
  }

  return result;
}

unint64_t sub_1AFBDE594()
{
  result = qword_1EB643430;
  if (!qword_1EB643430)
  {
    result = swift_getWitnessTable(byte_1AFEA478C, &type metadata for PointCacheError, v0, v1);
    atomic_store(result, &qword_1EB643430);
  }

  return result;
}

unint64_t sub_1AFBDE5EC()
{
  result = qword_1EB643438;
  if (!qword_1EB643438)
  {
    result = swift_getWitnessTable(byte_1AFEA487C, &type metadata for PointCacheEmitter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643438);
  }

  return result;
}

unint64_t sub_1AFBDE644()
{
  result = qword_1EB643440;
  if (!qword_1EB643440)
  {
    result = swift_getWitnessTable(byte_1AFEA496C, &type metadata for PointCacheFromModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643440);
  }

  return result;
}

unint64_t sub_1AFBDE69C()
{
  result = qword_1EB643448;
  if (!qword_1EB643448)
  {
    result = swift_getWitnessTable(byte_1AFEA4A5C, &type metadata for PointCacheGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643448);
  }

  return result;
}

unint64_t sub_1AFBDE6F4()
{
  result = qword_1EB643450;
  if (!qword_1EB643450)
  {
    result = swift_getWitnessTable(byte_1AFEA4B4C, &type metadata for REMeshAssetPointCache.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643450);
  }

  return result;
}

unint64_t sub_1AFBDE74C()
{
  result = qword_1EB643458;
  if (!qword_1EB643458)
  {
    result = swift_getWitnessTable(byte_1AFEA43B4, &type metadata for PointCacheProperty, v0, v1);
    atomic_store(result, &qword_1EB643458);
  }

  return result;
}

unint64_t sub_1AFBDE7A4()
{
  result = qword_1EB643460;
  if (!qword_1EB643460)
  {
    result = swift_getWitnessTable(aMp, &type metadata for REMeshAssetPointCache.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643460);
  }

  return result;
}

unint64_t sub_1AFBDE7FC()
{
  result = qword_1EB643468;
  if (!qword_1EB643468)
  {
    result = swift_getWitnessTable(byte_1AFEA4AAC, &type metadata for REMeshAssetPointCache.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643468);
  }

  return result;
}

unint64_t sub_1AFBDE854()
{
  result = qword_1EB643470;
  if (!qword_1EB643470)
  {
    result = swift_getWitnessTable(aQ_21, &type metadata for PointCacheGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643470);
  }

  return result;
}

unint64_t sub_1AFBDE8AC()
{
  result = qword_1EB643478;
  if (!qword_1EB643478)
  {
    result = swift_getWitnessTable(aUm, &type metadata for PointCacheGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643478);
  }

  return result;
}

unint64_t sub_1AFBDE904()
{
  result = qword_1EB643480;
  if (!qword_1EB643480)
  {
    result = swift_getWitnessTable(aMr, &type metadata for PointCacheFromModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643480);
  }

  return result;
}

unint64_t sub_1AFBDE95C()
{
  result = qword_1EB643488;
  if (!qword_1EB643488)
  {
    result = swift_getWitnessTable(aEn, &type metadata for PointCacheFromModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643488);
  }

  return result;
}

unint64_t sub_1AFBDE9B4()
{
  result = qword_1EB643490;
  if (!qword_1EB643490)
  {
    result = swift_getWitnessTable(aS_11, &type metadata for PointCacheEmitter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643490);
  }

  return result;
}

unint64_t sub_1AFBDEA0C()
{
  result = qword_1EB643498;
  if (!qword_1EB643498)
  {
    result = swift_getWitnessTable(aUo, &type metadata for PointCacheEmitter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643498);
  }

  return result;
}

unint64_t sub_1AFBDEA60()
{
  result = qword_1EB6434A8;
  if (!qword_1EB6434A8)
  {
    result = swift_getWitnessTable(byte_1AFEA4F14, &type metadata for PointCacheSpawner.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6434A8);
  }

  return result;
}

void sub_1AFBDEAB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AFBDEB30()
{
  result = qword_1EB6434B8;
  if (!qword_1EB6434B8)
  {
    result = swift_getWitnessTable(asc_1AFEA4EEC, &type metadata for PointCacheSpawner.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6434B8);
  }

  return result;
}

unint64_t sub_1AFBDEB88()
{
  result = qword_1EB6434C0;
  if (!qword_1EB6434C0)
  {
    result = swift_getWitnessTable(byte_1AFEA4E5C, &type metadata for PointCacheSpawner.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6434C0);
  }

  return result;
}

unint64_t sub_1AFBDEBE0()
{
  result = qword_1EB6434C8;
  if (!qword_1EB6434C8)
  {
    result = swift_getWitnessTable(byte_1AFEA4E84, &type metadata for PointCacheSpawner.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6434C8);
  }

  return result;
}

uint64_t sub_1AFBDEC48(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0 || a1 == 0x323374616F6C66 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    return 28;
  }

  if (a1 == 0x7261686375 && a2 == 0xE500000000000000)
  {
    return 45;
  }

  v5 = sub_1AFDFEE28();
  v7 = a1 == 0x38746E6975 && a2 == 0xE500000000000000;
  result = 45;
  if ((v5 & 1) == 0 && !v7)
  {
    if (sub_1AFDFEE28())
    {
      return 45;
    }

    if (a1 == 1918986339 && a2 == 0xE400000000000000)
    {
      return 46;
    }

    v8 = sub_1AFDFEE28();
    v9 = a1 == 947154537 && a2 == 0xE400000000000000;
    v10 = v9;
    result = 46;
    if ((v8 & 1) == 0 && !v10)
    {
      if (sub_1AFDFEE28())
      {
        return 46;
      }

      if (a1 == 0x74726F687375 && a2 == 0xE600000000000000)
      {
        return 49;
      }

      v11 = sub_1AFDFEE28();
      v12 = a1 == 0x3631746E6975 && a2 == 0xE600000000000000;
      v13 = v12;
      result = 49;
      if ((v11 & 1) == 0 && !v13)
      {
        if (sub_1AFDFEE28())
        {
          return 49;
        }

        if (a1 == 0x74726F6873 && a2 == 0xE500000000000000)
        {
          return 50;
        }

        v14 = sub_1AFDFEE28();
        v15 = a1 == 0x3631746E69 && a2 == 0xE500000000000000;
        v16 = v15;
        result = 50;
        if ((v14 & 1) == 0 && !v16)
        {
          if (sub_1AFDFEE28())
          {
            return 50;
          }

          if (a1 == 1953393013 && a2 == 0xE400000000000000)
          {
            return 36;
          }

          v17 = sub_1AFDFEE28();
          v18 = a1 == 0x3233746E6975 && a2 == 0xE600000000000000;
          v19 = v18;
          result = 36;
          if ((v17 & 1) == 0 && !v19)
          {
            if (sub_1AFDFEE28())
            {
              return 36;
            }

            if (a1 == 7630441 && a2 == 0xE300000000000000)
            {
              return 32;
            }

            v20 = sub_1AFDFEE28();
            v22 = a1 == 0x3233746E69 && a2 == 0xE500000000000000;
            result = 32;
            if ((v20 & 1) == 0 && !v22)
            {
              if ((sub_1AFDFEE28() & 1) == 0)
              {
                result = sub_1AFDFE518();
                __break(1u);
                return result;
              }

              return 32;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1AFBDF064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v8 = *a8;
  if (*(*a8 + 16))
  {
    v17 = sub_1AF419914(a1, a2);
    if (v18)
    {
      v19 = (*(v8 + 56) + 32 * v17);
      if (v19[3] == 28)
      {
        if (*(v8 + 16))
        {
          v20 = *v19;
          v71 = v19[1];
          swift_unknownObjectRetain();
          v21 = sub_1AF419914(a3, a4);
          if ((v22 & 1) != 0 && (v73 = v20, v23 = (*(v8 + 56) + 32 * v21), v23[3] == 28))
          {
            v24 = *v23;
            v65 = v23[1];
            v26 = a8[2];
            v25 = a8[3];
            v74 = a8[1];
            v75 = v26;
            v70 = v24;
            swift_unknownObjectRetain();

            MEMORY[0x1B2718AE0](45, 0xE100000000000000);
            MEMORY[0x1B2718AE0](a5, a6);
            v67 = v25;
            v68 = v74;
            v27 = *(a7 + 16);
            v28 = v75;

            v69 = 8 * v25;
            BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v27, 8 * v25, 0);
            if (BufferWithLength)
            {
              v30 = BufferWithLength;
              v31 = sub_1AFDFCEC8();

              [v30 setLabel_];

              if ([swift_unknownObjectRetain() storageMode] == 2)
              {
                swift_unknownObjectRelease();
                v72 = 0;
              }

              else
              {
                v38 = [v73 contents];
                v39 = v73;
                v72 = &v71[v38];
              }

              if ([swift_unknownObjectRetain() storageMode] == 2)
              {
                swift_unknownObjectRelease();
                v66 = 0;
              }

              else
              {
                v40 = [v70 &selRef_commitImmediate];
                v41 = v70;
                v66 = &v65[v40];
              }

              if ([swift_unknownObjectRetain() storageMode] == 2)
              {
                swift_unknownObjectRelease();
                v42 = 0;
              }

              else
              {
                v42 = [v30 &selRef_commitImmediate];
                v43 = v30;
              }

              if (!v67)
              {
                goto LABEL_30;
              }

              if (v67 >= 0x18)
              {
                v44 = 0;
                v54 = 8 * (v67 - 1);
                if (&v42[v54] >= v42 && &v42[v54 + 4] >= v42 + 4 && !((v67 - 1) >> 61))
                {
                  v44 = 0;
                  v55 = &v42[8 * v67];
                  v56 = v42 >= &v66->i8[4 * v67] || v66 >= v55;
                  v57 = !v56;
                  if ((v72 >= v55 || v42 >= &v72->i8[4 * v67]) && !v57)
                  {
                    v44 = v67 & 0x3FFFFFFFFFFFFFF8;
                    v59 = (v42 + 32);
                    v60 = v72 + 1;
                    v61 = v66 + 1;
                    v62 = v67 & 0x3FFFFFFFFFFFFFF8;
                    do
                    {
                      v77.val[0] = v60[-1];
                      v78.val[0] = *v60;
                      v77.val[1] = v61[-1];
                      v78.val[1] = *v61;
                      v63 = v59 - 8;
                      vst2q_f32(v63, v77);
                      vst2q_f32(v59, v78);
                      v59 += 16;
                      v60 += 2;
                      v61 += 2;
                      v62 -= 8;
                    }

                    while (v62);
                    if (v67 == v44)
                    {
                      goto LABEL_30;
                    }
                  }
                }
              }

              else
              {
                v44 = 0;
              }

              v45 = v67 - v44;
              v46 = &v42[8 * v44 + 4];
              v47 = 4 * v44;
              v48 = &v66->i32[v44];
              v49 = (v72 + v47);
              do
              {
                v50 = *v49++;
                v51 = v50;
                v52 = *v48++;
                *(v46 - 1) = v51;
                *v46 = v52;
                v46 += 8;
                --v45;
              }

              while (v45);
LABEL_30:

              sub_1AF8264B8(0, 0, 0, 0, a1, a2);

              sub_1AF8264B8(0, 0, 0, 0, a3, a4);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v74 = *a8;
              sub_1AF85917C(v30, 0, v69, 29, a5, a6, isUniquelyReferenced_nonNull_native);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              *a8 = v74;
              return;
            }

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v75 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
            MEMORY[0x1B2718AE0](v74, v28);

            MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
            v32 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v32);

            MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
            type metadata accessor for MTLResourceOptions(0);
            sub_1AFDFE458();
            v33 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v64 = v33;
              swift_once();
              v33 = v64;
            }

            v74 = 0;
            sub_1AF0D4F18(v33, &v74, 0, 0xE000000000000000);

            v74 = 0;
            v75 = 0xE000000000000000;
            sub_1AFDFE218();

            v74 = 0xD000000000000010;
            v75 = 0x80000001AFF4AEC0;
            MEMORY[0x1B2718AE0](v68, v28);
            MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
            v34 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v34);

            v35 = v74;
            v36 = v75;
            v37 = sub_1AFDFDA08();
            v74 = 0;
            sub_1AF0D4F18(v37, &v74, v35, v36);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

void sub_1AFBDF754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if ((a9 & 0xFFFFFFFFFFFFFFFELL) != 0x1E)
  {
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v11 = *a11;
  if (!*(*a11 + 16))
  {
    return;
  }

  v18 = sub_1AF419914(a1, a2);
  if ((v19 & 1) == 0)
  {
    return;
  }

  v20 = (*(v11 + 56) + 32 * v18);
  if (v20[3] != 28 || !*(v11 + 16))
  {
    return;
  }

  v106 = a8;
  v21 = *v20;
  v103 = v20[1];
  swift_unknownObjectRetain();
  v22 = sub_1AF419914(a3, a4);
  if ((v23 & 1) == 0 || (v105 = v21, v24 = (*(v11 + 56) + 32 * v22), v24[3] != 28) || !*(v11 + 16))
  {
LABEL_16:

    swift_unknownObjectRelease();
    return;
  }

  v25 = *v24;
  v101 = v24[1];
  swift_unknownObjectRetain();
  v26 = sub_1AF419914(a5, a6);
  if ((v27 & 1) == 0 || (v28 = (*(v11 + 56) + 32 * v26), v28[3] != 28))
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v99 = v25;
  v29 = *v28;
  v93 = v28[1];
  v30 = a11[2];
  v31 = a11[3];
  v109 = a11[1];
  v110 = v30;
  v100 = v29;
  swift_unknownObjectRetain();

  MEMORY[0x1B2718AE0](45, 0xE100000000000000);
  MEMORY[0x1B2718AE0](a7, v106);
  v96 = v109;
  v94 = v31;
  v32 = sub_1AF471A88(a9) * v31;
  v33 = *(a10 + 16);

  v98 = v32;
  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v33, v32, 0);
  if (BufferWithLength)
  {
    v35 = BufferWithLength;
    v36 = sub_1AFDFCEC8();

    v95 = v35;
    [v35 setLabel_];

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v104 = 0;
    }

    else
    {
      v43 = [v105 contents];
      v44 = v105;
      v104 = &v103[v43];
    }

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v102 = 0;
    }

    else
    {
      v45 = [v99 contents];
      v46 = v99;
      v102 = &v101[v45];
    }

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v97 = 0;
    }

    else
    {
      v47 = [v100 contents];
      v48 = v100;
      v97 = &v93[v47];
    }

    v49 = swift_unknownObjectRetain();
    v50 = [v49 storageMode];
    if (a9 != 30)
    {
      if (v50 == 2)
      {
        swift_unknownObjectRelease();
        v52 = 0;
      }

      else
      {
        v52 = [v49 contents];
        v66 = v49;
      }

      v67 = v94;
      v69 = v102;
      v68 = v104;
      v70 = v97;
      if (v94)
      {
        __asm { FMOV            V0.4S, #1.0 }

        do
        {
          HIDWORD(v75) = HIDWORD(_Q0);
          LODWORD(v75) = v68->i32[0];
          v68 = (v68 + 4);
          DWORD1(v75) = v69->i32[0];
          v69 = (v69 + 4);
          DWORD2(v75) = v70->i32[0];
          v70 = (v70 + 4);
          *v52++ = v75;
          --v67;
        }

        while (v67);
      }

      goto LABEL_47;
    }

    if (v50 == 2)
    {
      swift_unknownObjectRelease();
      v51 = 0;
    }

    else
    {
      v51 = [v49 contents];
      v53 = v49;
    }

    if (v94)
    {
      if (v94 >= 0x1C)
      {
        v54 = 0;
        v77 = !is_mul_ok(v94 - 1, 0xCuLL);
        v78 = 3 * (v94 - 1);
        if (&v51[v78 + 1] >= v51 + 1 && !v77 && &v51[v78 + 2] >= v51 + 2 && !v77 && &v51[v78] >= v51 && !v77)
        {
          v54 = 0;
          v79 = &v51[3 * v94];
          _CF = v51 >= &v102->f32[v94] || v102 >= v79;
          v81 = !_CF;
          v82 = v51 >= &v97->f32[v94] || v97 >= v79;
          v83 = !v82;
          if ((v104 >= v79 || v51 >= &v104->f32[v94]) && !v81 && !v83)
          {
            v54 = v94 & 0xFFFFFFFFFFFFFFF8;
            v85 = v104 + 1;
            v86 = v102 + 1;
            v87 = v97 + 1;
            v88 = v94 & 0xFFFFFFFFFFFFFFF8;
            v89 = v51;
            do
            {
              v112.val[0] = v85[-1];
              v113.val[0] = *v85;
              v112.val[1] = v86[-1];
              v113.val[1] = *v86;
              v112.val[2] = v87[-1];
              v113.val[2] = *v87;
              v90 = v89 + 24;
              vst3q_f32(v89, v112);
              v91 = v89 + 12;
              vst3q_f32(v91, v113);
              v85 += 2;
              v86 += 2;
              v87 += 2;
              v89 = v90;
              v88 -= 8;
            }

            while (v88);
            if (v94 == v54)
            {
              goto LABEL_47;
            }
          }
        }
      }

      else
      {
        v54 = 0;
      }

      v55 = v94 - v54;
      v56 = 4 * v54;
      v57 = &v104->i32[v54];
      v58 = &v102->i32[v54];
      v59 = &v51[3 * v54 + 1];
      v60 = (v97 + v56);
      do
      {
        v61 = *v57++;
        v62 = v61;
        v63 = *v58++;
        v64 = v63;
        v65 = *v60++;
        *(v59 - 1) = v62;
        *v59 = v64;
        *(v59 + 1) = v65;
        v59 += 3;
        --v55;
      }

      while (v55);
    }

LABEL_47:

    sub_1AF8264B8(0, 0, 0, 0, a1, a2);

    sub_1AF8264B8(0, 0, 0, 0, a3, a4);

    sub_1AF8264B8(0, 0, 0, 0, a5, a6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = *a11;
    sub_1AF85917C(v95, 0, v98, a9, a7, v106, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *a11 = v109;
    return;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v110 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
  MEMORY[0x1B2718AE0](v109, v30);

  MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
  v37 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v37);

  MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
  type metadata accessor for MTLResourceOptions(0);
  sub_1AFDFE458();
  v38 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v92 = v38;
    swift_once();
    v38 = v92;
  }

  v109 = 0;
  sub_1AF0D4F18(v38, &v109, 0, 0xE000000000000000);

  v109 = 0;
  v110 = 0xE000000000000000;
  sub_1AFDFE218();

  v109 = 0xD000000000000010;
  v110 = 0x80000001AFF4AEC0;
  MEMORY[0x1B2718AE0](v96, v30);
  MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
  v39 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v39);

  v40 = v109;
  v41 = v110;
  v42 = sub_1AFDFDA08();
  v109 = 0;
  sub_1AF0D4F18(v42, &v109, v40, v41);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}