uint64_t sub_1E58B6628(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v82 = a2 + 56;
  v75 = result + 56;
  v76 = result;
  v74 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v77 = (v7 - 1) & v7;
LABEL_13:
    v78 = v3;
    v12 = *(result + 48) + 48 * (v9 | (v3 << 6));
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    v94 = *v12;
    v13 = v94;
    v95 = v14;
    v96 = v15;
    v97 = v16;
    v98 = v17;
    v99 = v18;
    sub_1E5A2C1B4();
    sub_1E58BACE0(v13, v14, v15, v16, v17, v18);
    WorkoutPlanCreationFilterItem.hash(into:)(v86);
    v19 = sub_1E5A2C204();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    v22 = v94;
    v23 = v95;
    v24 = v96;
    v84 = v97;
    v85 = v98;
    v25 = v99;
    if (((*(v82 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_149:
      sub_1E58BACAC(v22, v23, v24, v84, v85, v25);
      return 0;
    }

    v80 = ~v20;
    v79 = v94;
    v83 = v96;
    while (1)
    {
      v34 = *(v2 + 48) + 48 * v21;
      v35 = *v34;
      v36 = *(v34 + 8);
      v38 = *(v34 + 16);
      v37 = *(v34 + 24);
      v39 = *(v34 + 32);
      v40 = *(v34 + 40);
      v86[0] = *v34;
      v86[1] = v36;
      v86[2] = v38;
      v86[3] = v37;
      v86[4] = v39;
      v87 = v40;
      v88 = v22;
      v89 = v23;
      v90 = v24;
      v91 = v84;
      v92 = v85;
      v93 = v25;
      v41 = v25;
      if (v40 > 3)
      {
        if (v40 <= 5)
        {
          if (v40 == 4)
          {
            if (v25 != 4)
            {
              goto LABEL_90;
            }

            if (v35 == v22 && v36 == v23)
            {
              sub_1E58BACE0(v22, v23, v38, v37, v39, 4u);
              v67 = v22;
              v68 = v23;
              v69 = v83;
              v70 = v84;
              v71 = v85;
              v72 = 4;
              goto LABEL_144;
            }

            v27 = sub_1E5A2C114();
            sub_1E58BACE0(v35, v36, v38, v37, v39, 4u);
            v28 = v22;
            v29 = v23;
            v30 = v83;
            v31 = v84;
            v32 = v85;
            v33 = 4;
          }

          else
          {
            if (v25 != 5)
            {
              goto LABEL_90;
            }

            if (v35 == v22 && v36 == v23)
            {
              sub_1E58BACE0(v22, v23, v38, v37, v39, 5u);
              v67 = v22;
              v68 = v23;
              v69 = v83;
              v70 = v84;
              v71 = v85;
              v72 = 5;
              goto LABEL_144;
            }

            v27 = sub_1E5A2C114();
            sub_1E58BACE0(v35, v36, v38, v37, v39, 5u);
            v28 = v22;
            v29 = v23;
            v30 = v83;
            v31 = v84;
            v32 = v85;
            v33 = 5;
          }

          goto LABEL_20;
        }

        if (v40 == 6)
        {
          if (v25 != 6)
          {
            goto LABEL_90;
          }

          if (v35 == v22 && v36 == v23)
          {
            sub_1E58BACE0(v22, v23, v38, v37, v39, 6u);
            v67 = v22;
            v68 = v23;
            v69 = v83;
            v70 = v84;
            v71 = v85;
            v72 = 6;
            goto LABEL_144;
          }

          v27 = sub_1E5A2C114();
          sub_1E58BACE0(v35, v36, v38, v37, v39, 6u);
          v28 = v22;
          v29 = v23;
          v30 = v83;
          v31 = v84;
          v32 = v85;
          v33 = 6;
          goto LABEL_20;
        }

        if (v40 == 7)
        {
          if (v25 != 7)
          {
            goto LABEL_90;
          }

          if (v35 == v22 && v36 == v23)
          {
            sub_1E58BACE0(v22, v23, v38, v37, v39, 7u);
            v67 = v22;
            v68 = v23;
            v69 = v83;
            v70 = v84;
            v71 = v85;
            v72 = 7;
            goto LABEL_144;
          }

          v27 = sub_1E5A2C114();
          sub_1E58BACE0(v35, v36, v38, v37, v39, 7u);
          v28 = v22;
          v29 = v23;
          v30 = v83;
          v31 = v84;
          v32 = v85;
          v33 = 7;
          goto LABEL_20;
        }

        if (v25 != 8)
        {
          goto LABEL_91;
        }

        v50 = v35;
        v2 = a2;
        if (v35 > 3u)
        {
          if (v35 <= 5u)
          {
            if (v35 == 4)
            {
              v52 = 0xE700000000000000;
              v51 = 0x7261655977656ELL;
            }

            else
            {
              v52 = 0xE500000000000000;
              v51 = 0x6564697270;
            }

            goto LABEL_106;
          }

          if (v35 == 6)
          {
            v51 = 0x576D6172676F7270;
            v52 = 0xEE0074756F6B726FLL;
            goto LABEL_106;
          }

          v51 = 0x6967736B6E616874;
          v55 = 1735289206;
        }

        else
        {
          if (v35 <= 1u)
          {
            v51 = 0x7053747369747261;
            v52 = 0xEF746867696C746FLL;
            if (v50)
            {
              v52 = 0xE90000000000006ELL;
              v51 = 0x6565776F6C6C6168;
            }

            goto LABEL_106;
          }

          if (v35 == 2)
          {
            v52 = 0xE700000000000000;
            v51 = 0x796164696C6F68;
LABEL_106:
            v56 = 0x576D6172676F7270;
            if (v79 != 6)
            {
              v56 = 0x6967736B6E616874;
            }

            v57 = 0xEE0074756F6B726FLL;
            if (v79 != 6)
            {
              v57 = 0xEC000000676E6976;
            }

            v58 = 0x7261655977656ELL;
            if (v79 != 4)
            {
              v58 = 0x6564697270;
            }

            v59 = 0xE500000000000000;
            if (v79 == 4)
            {
              v59 = 0xE700000000000000;
            }

            if (v79 <= 5)
            {
              v56 = v58;
              v57 = v59;
            }

            v60 = 0x796164696C6F68;
            if (v79 != 2)
            {
              v60 = 0x77654E72616E756CLL;
            }

            v61 = 0xEC00000072616559;
            if (v79 == 2)
            {
              v61 = 0xE700000000000000;
            }

            v62 = 0x7053747369747261;
            if (v79)
            {
              v62 = 0x6565776F6C6C6168;
            }

            v63 = 0xEF746867696C746FLL;
            if (v79)
            {
              v63 = 0xE90000000000006ELL;
            }

            if (v79 <= 1)
            {
              v60 = v62;
              v61 = v63;
            }

            if (v79 <= 3)
            {
              v64 = v60;
            }

            else
            {
              v64 = v56;
            }

            if (v79 <= 3)
            {
              v65 = v61;
            }

            else
            {
              v65 = v57;
            }

            if (v51 == v64 && v52 == v65)
            {

              goto LABEL_145;
            }

            v66 = sub_1E5A2C114();

            sub_1E58BAD14(v86, &qword_1ECFFB620, &qword_1E5A2CDC8);
            if (v66)
            {
              goto LABEL_146;
            }

            goto LABEL_21;
          }

          v51 = 0x77654E72616E756CLL;
          v55 = 1918985561;
        }

        v52 = v55 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        goto LABEL_106;
      }

      if (v40 > 1)
      {
        if (v40 == 2)
        {
          if (v25 != 2)
          {
            goto LABEL_90;
          }

          if (v35 == v22 && v36 == v23)
          {
            sub_1E58BACE0(v22, v23, v38, v37, v39, 2u);
            v67 = v22;
            v68 = v23;
            v69 = v83;
            v70 = v84;
            v71 = v85;
            v72 = 2;
            goto LABEL_144;
          }

          v27 = sub_1E5A2C114();
          sub_1E58BACE0(v35, v36, v38, v37, v39, 2u);
          v28 = v22;
          v29 = v23;
          v30 = v83;
          v31 = v84;
          v32 = v85;
          v33 = 2;
        }

        else
        {
          if (v25 != 3)
          {
            goto LABEL_90;
          }

          if (v35 == v22 && v36 == v23)
          {
            sub_1E58BACE0(v22, v23, v38, v37, v39, 3u);
            v67 = v22;
            v68 = v23;
            v69 = v83;
            v70 = v84;
            v71 = v85;
            v72 = 3;
            goto LABEL_144;
          }

          v27 = sub_1E5A2C114();
          sub_1E58BACE0(v35, v36, v38, v37, v39, 3u);
          v28 = v22;
          v29 = v23;
          v30 = v83;
          v31 = v84;
          v32 = v85;
          v33 = 3;
        }

        goto LABEL_20;
      }

      if (!v40)
      {
        break;
      }

      if (v25 != 1)
      {
        goto LABEL_90;
      }

      if (*&v35 != *&v22)
      {
        v41 = 1;
LABEL_90:
        sub_1E58BACE0(v35, v36, v38, v37, v39, v40);
        v24 = v83;
LABEL_91:
        sub_1E58BACE0(v22, v23, v24, v84, v85, v41);
        sub_1E58BAD14(v86, &qword_1ECFFB620, &qword_1E5A2CDC8);
        v2 = a2;
        goto LABEL_21;
      }

      v46 = *&v39;
      if (v36 == v23 && v38 == v83)
      {
        sub_1E58BACE0(v35, v23, v83, v37, v39, 1u);
        sub_1E58BACE0(v22, v23, v83, v84, v85, 1u);
        sub_1E58BAD14(v86, &qword_1ECFFB620, &qword_1E5A2CDC8);
        v54 = *&v37 == *&v84 && *&v39 == *&v85;
        v2 = a2;
        if (v54)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v73 = sub_1E5A2C114();
        sub_1E58BACE0(v35, v36, v38, v37, v39, 1u);
        sub_1E58BACE0(v22, v23, v83, v84, v85, 1u);
        sub_1E58BAD14(v86, &qword_1ECFFB620, &qword_1E5A2CDC8);
        v2 = a2;
        if ((v73 & 1) != 0 && *&v37 == *&v84 && v46 == *&v85)
        {
          goto LABEL_146;
        }
      }

LABEL_21:
      v21 = (v21 + 1) & v80;
      v24 = v83;
      if (((*(v82 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    if (v25)
    {
      goto LABEL_90;
    }

    if (v35 != v22 || v36 != v23)
    {
      v27 = sub_1E5A2C114();
      sub_1E58BACE0(v35, v36, v38, v37, v39, 0);
      v28 = v22;
      v29 = v23;
      v30 = v83;
      v31 = v84;
      v32 = v85;
      v33 = 0;
LABEL_20:
      sub_1E58BACE0(v28, v29, v30, v31, v32, v33);
      sub_1E58BAD14(v86, &qword_1ECFFB620, &qword_1E5A2CDC8);
      v2 = a2;
      if (v27)
      {
        goto LABEL_146;
      }

      goto LABEL_21;
    }

    sub_1E58BACE0(v22, v23, v38, v37, v39, 0);
    v67 = v22;
    v68 = v23;
    v69 = v83;
    v70 = v84;
    v71 = v85;
    v72 = 0;
LABEL_144:
    sub_1E58BACE0(v67, v68, v69, v70, v71, v72);
    v2 = a2;
LABEL_145:
    sub_1E58BAD14(v86, &qword_1ECFFB620, &qword_1E5A2CDC8);
LABEL_146:
    sub_1E58BACAC(v22, v23, v83, v84, v85, v25);
    v4 = v75;
    result = v76;
    v7 = v77;
    v3 = v78;
    v8 = v74;
  }

  while (v77);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v77 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B7160(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v29 = v8;
  v30 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v31 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(result + 48) + 40 * (v10 | (v3 << 6));
      v14 = *v13;
      v16 = *(v13 + 8);
      v15 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v33 = *v13;
      v34 = v16;
      v35 = v15;
      v36 = v17;
      v37 = v18;
      sub_1E5A2C1B4();

      WorkoutPlanDuration.hash(into:)(v32);
      v19 = sub_1E5A2C204();
      v20 = -1 << *(a2 + 32);
      v21 = v19 & ~v20;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        break;
      }

      v22 = ~v20;
      v23 = *(a2 + 48);
      while (1)
      {
        v25 = v23 + 40 * v21;
        if (*v25 == v14)
        {
          v27 = *(v25 + 24);
          v26 = *(v25 + 32);
          v28 = *(v25 + 8) == v16 && *(v25 + 16) == v15;
          if (v28 || (sub_1E5A2C114()) && v27 == v17 && v26 == v18)
          {
            break;
          }
        }

        v21 = (v21 + 1) & v22;
        if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v8 = v29;
      result = v30;
      v7 = v31;
      if (!v31)
      {
        goto LABEL_8;
      }
    }

LABEL_30:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B7378(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v56 = v4;
    v10 = __clz(__rbit64(v7));
    v53 = (v7 - 1) & v7;
    v54 = v8;
LABEL_13:
    v55 = v3;
    v57 = result;
    v13 = (*(result + 48) + 56 * (v10 | (v3 << 6)));
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v18 = v13[4];
    v17 = v13[5];
    v19 = v13[6];
    v74 = *v13;
    v76 = *v13;
    v77 = v14;
    v65 = v15;
    v78 = v15;
    v79 = v16;
    v80 = v18;
    v81 = v17;
    v58 = v17;
    v82 = v19;
    sub_1E5A2C1B4();
    v63 = v19;

    v67 = v18;

    WorkoutPlanFilterConfiguration.hash(into:)(v75);
    result = sub_1E5A2C204();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_73:

      return 0;
    }

    v73 = ~v20;
    v64 = (v14 + 40);
    v62 = v16;
    while (1)
    {
      v22 = (*(v2 + 48) + 56 * v21);
      if (*v22 != v74)
      {
        goto LABEL_16;
      }

      v72 = v22[1];
      v23 = *(v72 + 16);
      if (v23 != *(v14 + 16))
      {
        goto LABEL_16;
      }

      v24 = v22[2];
      v70 = v22[4];
      v71 = v22[3];
      v68 = v22[5];
      if (v23)
      {
        v25 = v72 == v14;
      }

      else
      {
        v25 = 1;
      }

      v69 = v22[6];
      if (!v25)
      {
        v32 = (v72 + 40);
        v33 = v64;
        while (v23)
        {
          result = *(v32 - 1);
          if (result != *(v33 - 1) || *v32 != *v33)
          {
            result = sub_1E5A2C114();
            if ((result & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v32 += 2;
          v33 += 2;
          if (!--v23)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_76;
      }

LABEL_24:
      if (v71)
      {
        if (!v16)
        {
          goto LABEL_16;
        }

        if (v24 != v65 || v71 != v16)
        {
          result = sub_1E5A2C114();
          if ((result & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else if (v16)
      {
        goto LABEL_16;
      }

      if (v70 == v67)
      {
        break;
      }

      if (*(v70 + 16) == *(v67 + 16))
      {
        v59 = v14;
        v60 = v9;
        v61 = v2;
        v26 = v70;
        v27 = 1 << *(v70 + 32);
        if (v27 < 64)
        {
          v28 = ~(-1 << v27);
        }

        else
        {
          v28 = -1;
        }

        v29 = v28 & *(v70 + 64);
        v30 = (v27 + 63) >> 6;

        v31 = 0;
        while (v29)
        {
          v35 = __clz(__rbit64(v29));
          v66 = (v29 - 1) & v29;
LABEL_51:
          v39 = 16 * (v35 | (v31 << 6));
          v40 = (*(v26 + 48) + v39);
          v41 = *v40;
          v42 = v40[1];
          v43 = (*(v26 + 56) + v39);
          v44 = *v43;
          v45 = v43[1];

          v46 = sub_1E58EF508(v41, v42);
          v48 = v47;

          if ((v48 & 1) == 0)
          {

            goto LABEL_68;
          }

          v49 = (*(v67 + 56) + 16 * v46);
          if (*v49 == v44 && v49[1] == v45)
          {

            v26 = v70;
            v29 = v66;
          }

          else
          {
            v51 = sub_1E5A2C114();

            v26 = v70;
            v29 = v66;
            if ((v51 & 1) == 0)
            {

LABEL_68:

              v9 = v60;
              v2 = v61;
              v14 = v59;
              v16 = v62;
              goto LABEL_16;
            }
          }
        }

        v36 = v31;
        v9 = v60;
        v2 = v61;
        v14 = v59;
        v37 = v69;
        while (1)
        {
          v31 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v31 >= v30)
          {
            goto LABEL_59;
          }

          v38 = *(v70 + 64 + 8 * v31);
          ++v36;
          if (v38)
          {
            v35 = __clz(__rbit64(v38));
            v66 = (v38 - 1) & v38;
            goto LABEL_51;
          }
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_16:
      v21 = (v21 + 1) & v73;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    v37 = v69;

LABEL_59:
    if (!v37)
    {
      v16 = v62;
      if (!v63)
      {
        goto LABEL_69;
      }

LABEL_66:

      goto LABEL_16;
    }

    v16 = v62;
    if (!v63)
    {
      goto LABEL_66;
    }

    if (v68 != v58 || v37 != v63)
    {
      v52 = sub_1E5A2C114();

      if (v52)
      {
        goto LABEL_70;
      }

      goto LABEL_16;
    }

LABEL_69:

LABEL_70:

    v4 = v56;
    result = v57;
    v8 = v54;
    v3 = v55;
    v7 = v53;
    if (v53)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v54 = v8;
      v56 = v4;
      v10 = __clz(__rbit64(v12));
      v53 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_1E58B79BC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v26 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v30 = a2;
  v31 = a2 + 56;
  v27 = v6;
  v28 = result;
  if (v5)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v29 = (v5 - 1) & v5;
LABEL_13:
      v10 = (*(result + 48) + 32 * (v7 | (v2 << 6)));
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = a2;
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      sub_1E5A2BB74();
      v16 = sub_1E5A2C204();
      v17 = -1 << *(v15 + 32);
      v18 = v16 & ~v17;
      if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      v20 = *(v30 + 48);
      while (1)
      {
        v21 = (v20 + 32 * v18);
        v22 = v21[2];
        v23 = v21[3];
        v24 = *v21 == v12 && v21[1] == v11;
        if (v24 || (sub_1E5A2C114() & 1) != 0)
        {
          v25 = v22 == v14 && v23 == v13;
          if (v25 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }
        }

        v18 = (v18 + 1) & v19;
        if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v5 = v29;
      a2 = v30;
      v6 = v27;
      result = v28;
      if (!v29)
      {
        goto LABEL_8;
      }
    }

LABEL_29:

    return 0;
  }

LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v26 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v29 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B7BF8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v42 = a2 + 56;
  v34 = result + 56;
  v35 = result;
  v38 = a2;
  v33 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v36 = v2;
    v37 = (v6 - 1) & v6;
    v8 = __clz(__rbit64(v6)) | (v2 << 6);
LABEL_13:
    v12 = (*(result + 48) + 48 * v8);
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = v12[5];
    v40 = v12[4];
    v18 = a2;
    sub_1E5A2C1B4();

    v41 = v17;

    sub_1E5A2BB74();
    v39 = v15;
    if (v16)
    {
      sub_1E5A2C1D4();
      v19 = v16;
      sub_1E5A2BB74();
    }

    else
    {
      v19 = 0;
      sub_1E5A2C1D4();
    }

    sub_1E5A2BB74();
    v20 = sub_1E5A2C204();
    v21 = -1 << *(v18 + 32);
    v22 = v20 & ~v21;
    if (((*(v42 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_40:

      return 0;
    }

    v23 = ~v21;
    v24 = *(v38 + 48);
    while (1)
    {
      v25 = (v24 + 48 * v22);
      v26 = v25[2];
      v27 = v25[3];
      v28 = v25[4];
      v29 = v25[5];
      v30 = *v25 == v14 && v25[1] == v13;
      if (!v30 && (sub_1E5A2C114() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v27)
      {
        break;
      }

      if (!v19)
      {
        goto LABEL_32;
      }

LABEL_19:
      v22 = (v22 + 1) & v23;
      if (((*(v42 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    if (!v19)
    {
      goto LABEL_19;
    }

    v31 = v26 == v39 && v27 == v19;
    if (!v31 && (sub_1E5A2C114() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_32:
    v32 = v28 == v40 && v29 == v41;
    if (!v32 && (sub_1E5A2C114() & 1) == 0)
    {
      goto LABEL_19;
    }

    v3 = v34;
    result = v35;
    v6 = v37;
    a2 = v38;
    v7 = v33;
    v2 = v36;
  }

  while (v37);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v10);
    ++v9;
    if (v11)
    {
      v36 = v10;
      v37 = (v11 - 1) & v11;
      v8 = __clz(__rbit64(v11)) | (v10 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B7EE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v36 = a2 + 56;
  v30 = result + 56;
  v31 = result;
  v33 = a2;
  v29 = v7;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v32 = (v6 - 1) & v6;
LABEL_13:
      v11 = *(result + 48) + 40 * (v8 | (v2 << 6));
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);
      v17 = a2;
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      v35 = v14;
      sub_1E5A2BB74();
      v34 = v16;
      sub_1E5A2C1E4();
      v18 = sub_1E5A2C204();
      v19 = -1 << *(v17 + 32);
      v20 = v18 & ~v19;
      if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      v22 = *(v33 + 48);
      while (1)
      {
        v23 = v22 + 40 * v20;
        v24 = *(v23 + 16);
        v25 = *(v23 + 24);
        v26 = *(v23 + 32);
        v27 = *v23 == v13 && *(v23 + 8) == v12;
        if (v27 || (sub_1E5A2C114() & 1) != 0)
        {
          v28 = v24 == v35 && v25 == v15;
          if (v28 || (sub_1E5A2C114()) && v26 == v34)
          {
            break;
          }
        }

        v20 = (v20 + 1) & v21;
        if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v3 = v30;
      result = v31;
      v6 = v32;
      a2 = v33;
      v7 = v29;
      if (!v32)
      {
        goto LABEL_8;
      }
    }

LABEL_31:

    return 0;
  }

LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B8154(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v47 = a2 + 56;
  v40 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v36 = (v7 - 1) & v7;
LABEL_13:
    v39 = result;
    v12 = (*(result + 48) + 56 * (v9 | (v3 << 6)));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = v12[4];
    v41 = v12[5];
    v18 = v12[6];
    sub_1E5A2C1B4();

    v43 = v18;

    v48 = v13;
    sub_1E58B892C(v49, v13);
    v45 = v14;
    v46 = v15;
    sub_1E5A2BB74();
    v44 = v17;
    v37 = v3;
    v42 = v16;
    sub_1E5A2C1D4();
    if (v17)
    {
      sub_1E5A2BB74();
    }

    v38 = v4;
    sub_1E5A2BB74();
    v19 = sub_1E5A2C204();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v47 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_43:

      return 0;
    }

    v22 = ~v20;
    while (1)
    {
      v23 = v2;
      v24 = (*(v2 + 48) + 56 * v21);
      v25 = *v24;
      v26 = v24[1];
      v28 = v24[2];
      v27 = v24[3];
      v29 = v24[4];
      v30 = v24[5];
      v31 = v24[6];

      if ((sub_1E58B4D88(v25, v48) & 1) == 0 || (v26 == v45 ? (v32 = v28 == v46) : (v32 = 0), !v32 && (sub_1E5A2C114() & 1) == 0))
      {
LABEL_18:

        v2 = v23;
        goto LABEL_19;
      }

      if (v29)
      {
        if (!v44)
        {
          goto LABEL_18;
        }

        v33 = v27 == v42 && v29 == v44;
        if (!v33 && (sub_1E5A2C114() & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if (v44)
      {
        goto LABEL_18;
      }

      if (v30 == v41 && v31 == v43)
      {
        break;
      }

      v35 = sub_1E5A2C114();

      v2 = v23;
      if (v35)
      {
        goto LABEL_40;
      }

LABEL_19:
      v21 = (v21 + 1) & v22;
      if (((*(v47 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v2 = v23;
LABEL_40:
    v3 = v37;
    v4 = v38;

    result = v39;
    v8 = v40;
    v7 = v36;
  }

  while (v36);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t WorkoutPlanModalityPreference.hash(into:)(__int128 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1E5A2BB74();
  sub_1E58B93C8(a1, v4);

  return sub_1E58B93C8(a1, v3);
}

uint64_t WorkoutPlanModalityPreference.hashValue.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E58B93C8(v4, v2);
  sub_1E58B93C8(v4, v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E58B85F0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E58B93C8(v4, v2);
  sub_1E58B93C8(v4, v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E58B8660(__int128 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1E5A2BB74();
  sub_1E58B93C8(a1, v4);

  return sub_1E58B93C8(a1, v3);
}

uint64_t sub_1E58B86B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E58B93C8(v5, v3);
  sub_1E58B93C8(v5, v2);
  return sub_1E5A2C204();
}

uint64_t sub_1E58B8724(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1E5A2C114() & 1) == 0 || (sub_1E58B61B8(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B61B8(v3, v4);
}

uint64_t sub_1E58B87B8(__int128 *a1, uint64_t a2)
{
  sub_1E5A2C204();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v16)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(a2 + 48) + 24 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v15);

    sub_1E5A2BB74();
    v16 = sub_1E5A2C204();
    result = sub_1E58BAAC0(v13, v14, v15);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E6932DE0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B892C(__int128 *a1, uint64_t a2)
{
  v54 = sub_1E5A29D44();
  v57 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_1E5A2A064();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v40 - v12;
  v53 = type metadata accessor for WorkoutPlanArtwork(0);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v58 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v40 - v15;
  v16 = a1[3];
  v61 = a1[2];
  v62 = v16;
  v63 = *(a1 + 8);
  v18 = *a1;
  v17 = a1[1];
  v40 = a1;
  v59 = v18;
  v60 = v17;
  v50 = sub_1E5A2C204();
  v19 = a2 + 56;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 56);
  v23 = (v20 + 63) >> 6;
  v49 = (v9 + 48);
  v44 = (v9 + 32);
  v43 = (v9 + 8);
  v48 = (v57 + 48);
  v42 = (v57 + 32);
  v41 = (v57 + 8);
  v55 = a2;

  v25 = 0;
  v26 = 0;
  v46 = v8;
  while (v22)
  {
    v57 = v25;
    v32 = v56;
LABEL_13:
    v34 = v51;
    sub_1E58BAAD8(*(v55 + 48) + *(v52 + 72) * (__clz(__rbit64(v22)) | (v26 << 6)), v51);
    v35 = v34;
    v36 = v58;
    sub_1E58BAB3C(v35, v58);
    sub_1E5A2C1B4();
    sub_1E58BABA0(v36, v32, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
    if ((*v49)(v32, 1, v8) == 1)
    {
      sub_1E5A2C1D4();
    }

    else
    {
      v37 = v45;
      (*v44)(v45, v32, v8);
      sub_1E5A2C1D4();
      sub_1E58BAC64(&qword_1ECFFB5F0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
      sub_1E5A2BA44();
      (*v43)(v37, v8);
    }

    v38 = v53;
    sub_1E5A2BB74();

    sub_1E58BABA0(v58 + *(v38 + 24), v7, &qword_1ECFFB5E0, &qword_1E5A3AC70);
    v39 = v54;
    if ((*v48)(v7, 1, v54) == 1)
    {
      sub_1E5A2C1D4();
    }

    else
    {
      v27 = v7;
      v28 = v47;
      (*v42)(v47, v27, v39);
      sub_1E5A2C1D4();
      sub_1E58BAC64(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1E5A2BA44();
      v29 = v28;
      v7 = v27;
      v8 = v46;
      (*v41)(v29, v39);
    }

    v30 = v57;
    v22 &= v22 - 1;
    v31 = sub_1E5A2C204();
    result = sub_1E58BAC08(v58);
    v25 = v31 ^ v30;
  }

  v32 = v56;
  while (1)
  {
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v33 >= v23)
    {

      return MEMORY[0x1E6932DE0](v25);
    }

    v22 = *(v19 + 8 * v33);
    ++v26;
    if (v22)
    {
      v57 = v25;
      v26 = v33;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B90BC(__int128 *a1, uint64_t a2)
{
  result = sub_1E5A2C204();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v12);
    result = sub_1E5A2C204();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1E6932DE0](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B91E8(__int128 *a1, uint64_t a2)
{
  sub_1E5A2C204();
  v22 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v23 = v9;
LABEL_11:
    v13 = *(v22 + 48) + ((v10 << 11) | (32 * __clz(__rbit64(v6))));
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    MEMORY[0x1E6932DE0](*(v14 + 16));
    v16 = *(v14 + 16);
    if (v16)
    {
      v17 = (v14 + 32);
      do
      {
        v18 = *v17++;
        MEMORY[0x1E6932DE0](v18);
        --v16;
      }

      while (v16);
    }

    MEMORY[0x1E6932DE0](*(v15 + 16));
    v19 = *(v15 + 16);
    if (v19)
    {
      v20 = (v15 + 32);
      do
      {
        v21 = *v20++;
        MEMORY[0x1E6932DE0](v21);
        --v19;
      }

      while (v19);
    }

    v6 &= v6 - 1;
    v11 = sub_1E5A2C204();

    v9 = v11 ^ v23;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x1E6932DE0](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v23 = v9;
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B93C8(__int128 *a1, uint64_t a2)
{
  sub_1E5A2C204();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E6932DE0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v11 = sub_1E5A2C204();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E58B9528()
{
  result = qword_1ECFFB5C0;
  if (!qword_1ECFFB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB5C0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E58B9588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E58B95D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanModalityPreference.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanModalityPreference.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58B9764()
{
  result = qword_1ECFFB5C8;
  if (!qword_1ECFFB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB5C8);
  }

  return result;
}

unint64_t sub_1E58B97BC()
{
  result = qword_1ECFFB5D0;
  if (!qword_1ECFFB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB5D0);
  }

  return result;
}

unint64_t sub_1E58B9814()
{
  result = qword_1ECFFB5D8;
  if (!qword_1ECFFB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB5D8);
  }

  return result;
}

uint64_t sub_1E58B9868(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v18[13] = *(a1 + 32);
  *&v18[15] = v3;
  v18[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v18[9] = *a1;
  *&v18[11] = v4;
  sub_1E5A2C204();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v17)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = *(a2 + 48) + ((v12 << 11) | (32 * v13));
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    sub_1E58B93C8(v18, v15);
    sub_1E58B93C8(v18, v16);
    v17 = sub_1E5A2C204();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1E6932DE0](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1E58B9A00(__int128 *a1, uint64_t a2)
{
  sub_1E5A2C204();
  v22 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v11 = *(v22 + 48) + 48 * (__clz(__rbit64(v6)) | (v9 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 24);
      v24 = *(v11 + 16);
      v15 = *(v11 + 32);
      v16 = *(v11 + 40);
      sub_1E5A2C1B4();
      v23 = v8;
      if (v16 <= 3)
      {
        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v17 = 2;
          }

          else
          {
            v17 = 3;
          }
        }

        else
        {
          if (v16)
          {
            MEMORY[0x1E6932DE0](1);
            if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v18 = v12;
            }

            else
            {
              v18 = 0;
            }

            MEMORY[0x1E6932E10](v18);

            sub_1E5A2BB74();
            if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v19 = v14;
            }

            else
            {
              v19 = 0;
            }

            MEMORY[0x1E6932E10](v19);
            if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v20 = v15;
            }

            else
            {
              v20 = 0;
            }

            MEMORY[0x1E6932E10](v20);
            goto LABEL_35;
          }

          v17 = 0;
        }

        goto LABEL_34;
      }

      if (v16 <= 5)
      {
        if (v16 == 4)
        {
          v17 = 4;
        }

        else
        {
          v17 = 5;
        }

        goto LABEL_34;
      }

      if (v16 == 6)
      {
        break;
      }

      if (v16 == 7)
      {
        v17 = 7;
LABEL_34:
        MEMORY[0x1E6932DE0](v17);

        sub_1E5A2BB74();
        goto LABEL_35;
      }

      MEMORY[0x1E6932DE0](8);
      sub_1E5A2BB74();

LABEL_35:
      v6 &= v6 - 1;
      v21 = sub_1E5A2C204();
      sub_1E58BACAC(v12, v13, v24, v14, v15, v16);
      v8 = v21 ^ v23;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    v17 = 6;
    goto LABEL_34;
  }

LABEL_4:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      MEMORY[0x1E6932DE0](v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1E58B9D88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v18[13] = *(a1 + 32);
  *&v18[15] = v3;
  v18[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v18[9] = *a1;
  *&v18[11] = v4;
  sub_1E5A2C204();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
    v17 = v10;
LABEL_11:
    v14 = (*(a2 + 48) + 56 * (__clz(__rbit64(v7)) | (v11 << 6)));
    v15 = *v14;
    v16 = v14[4];
    sub_1E5A2C1B4();

    sub_1E58B892C(v18, v15);
    sub_1E5A2BB74();
    sub_1E5A2C1D4();
    if (v16)
    {
      sub_1E5A2BB74();
    }

    v7 &= v7 - 1;
    sub_1E5A2BB74();
    v12 = sub_1E5A2C204();

    v10 = v12 ^ v17;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return MEMORY[0x1E6932DE0](v10);
    }

    v7 = *(a2 + 56 + 8 * v13);
    ++v11;
    if (v7)
    {
      v17 = v10;
      v11 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B9F70(__int128 *a1, uint64_t a2)
{
  sub_1E5A2C204();
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1E6932DE0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      do
      {
LABEL_9:
        v6 &= v6 - 1;
        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        sub_1E5A2BB74();
        sub_1E5A2C1E4();
        v12 = sub_1E5A2C204();

        v9 ^= v12;
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58BA100(__int128 *a1, uint64_t a2)
{
  sub_1E5A2C204();
  v14 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v15 = v9;
LABEL_11:
    v13 = *(*(v14 + 48) + 48 * (__clz(__rbit64(v6)) | (v10 << 6)) + 24);
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    sub_1E5A2C1D4();
    if (v13)
    {
      sub_1E5A2BB74();
    }

    v6 &= v6 - 1;
    sub_1E5A2BB74();
    v11 = sub_1E5A2C204();

    v9 = v11 ^ v15;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x1E6932DE0](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v15 = v9;
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58BA2C4(__int128 *a1, uint64_t a2)
{
  sub_1E5A2C204();
  v30 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v28 = v7;
  v29 = a2 + 56;
  while (v6)
  {
LABEL_11:
    v13 = (*(v30 + 48) + 56 * (__clz(__rbit64(v6)) | (v10 << 6)));
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[3];
    v17 = v13[4];
    v18 = v13[6];
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v14);
    MEMORY[0x1E6932DE0](*(v15 + 16));
    v19 = *(v15 + 16);
    v31 = v18;
    if (v19)
    {

      v20 = v15 + 40;
      do
      {

        sub_1E5A2BB74();

        v20 += 16;
        --v19;
      }

      while (v19);
    }

    else
    {
    }

    v32 = v9;
    sub_1E5A2C1D4();
    if (v16)
    {
      sub_1E5A2BB74();
    }

    v6 &= v6 - 1;
    v21 = 1 << *(v17 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v17 + 64);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    v26 = 0;
    if (v23)
    {
      while (1)
      {
        v33 = v25;
LABEL_27:
        v23 &= v23 - 1;

        sub_1E5A2BB74();

        sub_1E5A2BB74();

        result = sub_1E5A2C204();
        v25 = result ^ v33;
        if (!v23)
        {
          goto LABEL_23;
        }
      }
    }

    while (1)
    {
LABEL_23:
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v27 >= v24)
      {
        break;
      }

      v23 = *(v17 + 64 + 8 * v27);
      ++v26;
      if (v23)
      {
        v33 = v25;
        v26 = v27;
        goto LABEL_27;
      }
    }

    MEMORY[0x1E6932DE0](v25);
    sub_1E5A2C1D4();
    if (v31)
    {
      sub_1E5A2BB74();
    }

    v7 = v28;
    v3 = v29;
    v11 = sub_1E5A2C204();

    v9 = v11 ^ v32;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x1E6932DE0](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1E58BA66C(__int128 *a1, uint64_t a2)
{
  sub_1E5A2C204();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v19)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + 40 * (v11 | (v10 << 6)));
    v13 = *v12;
    v14 = v12[3];
    v15 = v12[4];
    sub_1E5A2C1B4();
    if (v13 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v13;
    }

    MEMORY[0x1E6932E10](*&v16);

    sub_1E5A2BB74();
    if (v14 == 0.0)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v14;
    }

    MEMORY[0x1E6932E10](*&v17);
    if (v15 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v15;
    }

    MEMORY[0x1E6932E10](*&v18);
    v19 = sub_1E5A2C204();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E6932DE0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58BA820(__int128 *a1, uint64_t a2)
{
  sub_1E5A2C204();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E6932DE0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        sub_1E5A2BB74();
        v11 = sub_1E5A2C204();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58BA9A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001E5A45E20 == a2;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A45E40 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A45E60 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E58BAAC0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1E58BAAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58BAB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58BABA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E58BAC08(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58BAC64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E58BACAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = a6 - 2 < 6 || a6 == 0;
  if (v6 || a6 == 1)
  {
  }
}

void sub_1E58BACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = a6 - 2 < 6 || a6 == 0;
  if (v6 || a6 == 1)
  {
  }
}

uint64_t sub_1E58BAD14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

FitnessWorkoutPlan::WorkoutPlanCatalogModalityKind_optional __swiftcall WorkoutPlanCatalogModalityKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E5A2BF34();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WorkoutPlanCatalogModalityKind.rawValue.getter()
{
  result = 0x436C7566646E694DLL;
  switch(*v0)
  {
    case 1:
      result = 1701998403;
      break;
    case 2:
      v2 = 1818458435;
      goto LABEL_11;
    case 3:
      result = 0x65636E6144;
      break;
    case 4:
      result = 7238994;
      break;
    case 5:
      v2 = 1802264919;
LABEL_11:
      result = v2 | 0x676E6900000000;
      break;
    case 6:
      result = 1414089032;
      break;
    case 7:
      result = 0x69786F626B63696BLL;
      break;
    case 8:
      result = 0x697461746964654DLL;
      break;
    case 9:
      result = 0x736574616C6950;
      break;
    case 0xA:
      result = 0x676E69776F52;
      break;
    case 0xB:
      result = 0x6874676E65727453;
      break;
    case 0xC:
      result = 0x6C696D6461657254;
      break;
    case 0xD:
      result = 1634168665;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E58BAF4C()
{
  result = qword_1ECFFB628;
  if (!qword_1ECFFB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB628);
  }

  return result;
}

uint64_t sub_1E58BAFA0()
{
  sub_1E5A2C1B4();
  WorkoutPlanCatalogModalityKind.rawValue.getter();
  sub_1E5A2BB74();

  return sub_1E5A2C204();
}

uint64_t sub_1E58BB008(uint64_t a1)
{
  WorkoutPlanCatalogModalityKind.rawValue.getter();
  sub_1E5A2BB74();
}

uint64_t sub_1E58BB06C(uint64_t a1)
{
  sub_1E5A2C1B4();
  WorkoutPlanCatalogModalityKind.rawValue.getter();
  sub_1E5A2BB74();

  return sub_1E5A2C204();
}

uint64_t sub_1E58BB0DC@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutPlanCatalogModalityKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1E58BB108()
{
  result = qword_1ECFFB630;
  if (!qword_1ECFFB630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB638, &qword_1E5A2CE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB630);
  }

  return result;
}

uint64_t sub_1E58BB22C()
{
  v0 = WorkoutPlanCatalogModalityKind.rawValue.getter();
  v2 = v1;
  if (v0 == WorkoutPlanCatalogModalityKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E5A2C114();
  }

  return v5 & 1;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanCatalogModalityKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanCatalogModalityKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58BB418()
{
  result = qword_1ECFFB640;
  if (!qword_1ECFFB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB640);
  }

  return result;
}

uint64_t sub_1E58BB490(uint64_t a1)
{
  v2 = sub_1E58BBA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BB4CC(uint64_t a1)
{
  v2 = sub_1E58BBA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BB508()
{
  if (*v0)
  {
    return 0x657669746361;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_1E58BB538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E58BB610(uint64_t a1)
{
  v2 = sub_1E58BB9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BB64C(uint64_t a1)
{
  v2 = sub_1E58BB9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BB688(uint64_t a1)
{
  v2 = sub_1E58BBA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BB6C4(uint64_t a1)
{
  v2 = sub_1E58BBA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlanCompletionMonitorState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB648, &qword_1E5A2CF80);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB650, &qword_1E5A2CF88);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB658, &qword_1E5A2CF90);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58BB9B0();
  sub_1E5A2C224();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E58BBA04();
    v14 = v18;
    sub_1E5A2C024();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E58BBA58();
    sub_1E5A2C024();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E58BB9B0()
{
  result = qword_1ECFFB660;
  if (!qword_1ECFFB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB660);
  }

  return result;
}

unint64_t sub_1E58BBA04()
{
  result = qword_1ECFFB668;
  if (!qword_1ECFFB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB668);
  }

  return result;
}

unint64_t sub_1E58BBA58()
{
  result = qword_1ECFFB670;
  if (!qword_1ECFFB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB670);
  }

  return result;
}

uint64_t PlanCompletionMonitorState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB678, &qword_1E5A2CF98);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB680, &qword_1E5A2CFA0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB688, &qword_1E5A2CFA8);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58BB9B0();
  v13 = v31;
  sub_1E5A2C214();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1E5A2C004();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1E5A2BE84();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v21 = &type metadata for PlanCompletionMonitorState;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1E58BBA04();
    sub_1E5A2BF44();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1E58BBA58();
    sub_1E5A2BF44();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E58BBF00()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 31;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BBF34()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BBF68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BBF9C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BBFD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BC004()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BC038()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E58BC06C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E58BC098()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlanCompletionMonitorState.hashValue.getter()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  return sub_1E5A2C204();
}

unint64_t sub_1E58BC174()
{
  result = qword_1ECFFB698;
  if (!qword_1ECFFB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB698);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreatePersonalizedWorkoutPlanButtonAction.CreatePersonalizedWorkoutPlanTappedCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CreatePersonalizedWorkoutPlanButtonAction.CreatePersonalizedWorkoutPlanTappedCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58BC33C()
{
  result = qword_1ECFFB6A0;
  if (!qword_1ECFFB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6A0);
  }

  return result;
}

unint64_t sub_1E58BC394()
{
  result = qword_1ECFFB6A8;
  if (!qword_1ECFFB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6A8);
  }

  return result;
}

unint64_t sub_1E58BC3EC()
{
  result = qword_1ECFFB6B0;
  if (!qword_1ECFFB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6B0);
  }

  return result;
}

unint64_t sub_1E58BC444()
{
  result = qword_1ECFFB6B8;
  if (!qword_1ECFFB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6B8);
  }

  return result;
}

unint64_t sub_1E58BC49C()
{
  result = qword_1ECFFB6C0;
  if (!qword_1ECFFB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6C0);
  }

  return result;
}

unint64_t sub_1E58BC4F4()
{
  result = qword_1ECFFB6C8;
  if (!qword_1ECFFB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6C8);
  }

  return result;
}

unint64_t sub_1E58BC54C()
{
  result = qword_1ECFFB6D0;
  if (!qword_1ECFFB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6D0);
  }

  return result;
}

uint64_t WorkoutPlanFilterResult.init(bodyFocusIdentifiers:durationIdentifiers:equipmentIdentifiers:modalityIdentifiers:musicGenreIdentifiers:skillLevelIdentifiers:themeIdentifiers:trainerIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

unint64_t sub_1E58BC630()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD000000000000010;
  if (v2 != 6)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v3 = 0xD000000000000015;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v1 = v4;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E58BC704@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58BD950(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58BC738(uint64_t a1)
{
  v2 = sub_1E58BCB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BC774(uint64_t a1)
{
  v2 = sub_1E58BCB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanFilterResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB6D8, &unk_1E5A2D320);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v21 = v1[2];
  v22 = v8;
  v11 = v1[5];
  v19 = v1[4];
  v20 = v10;
  v12 = v1[7];
  v17 = v1[6];
  v18 = v11;
  v16 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58BCB0C();

  sub_1E5A2C224();
  v24 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5A0, &qword_1E5A3F610);
  sub_1E58B4A18(&qword_1ECFFB5A8, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
  v13 = v4;
  sub_1E5A2C0B4();
  if (v2)
  {
  }

  else
  {
    v14 = v21;

    v24 = v22;
    v23 = 1;
    sub_1E5A2C0B4();
    v24 = v14;
    v23 = 2;
    sub_1E5A2C0B4();
    v24 = v20;
    v23 = 3;
    sub_1E5A2C0B4();
    v24 = v19;
    v23 = 4;
    sub_1E5A2C0B4();
    v24 = v18;
    v23 = 5;
    sub_1E5A2C0B4();
    v24 = v17;
    v23 = 6;
    sub_1E5A2C0B4();
    v24 = v16;
    v23 = 7;
    sub_1E5A2C0B4();
  }

  return (*(v5 + 8))(v7, v13);
}

unint64_t sub_1E58BCB0C()
{
  result = qword_1ECFFB6E0;
  if (!qword_1ECFFB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6E0);
  }

  return result;
}

uint64_t WorkoutPlanFilterResult.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB6E8, &qword_1E5A2D330);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58BCB0C();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5A0, &qword_1E5A3F610);
  LOBYTE(v30) = 0;
  sub_1E58B4A18(&qword_1ECFFB5B8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
  sub_1E5A2BFE4();
  v28 = v34[0];
  LOBYTE(v30) = 1;
  sub_1E5A2BFE4();
  v27 = v34[0];
  LOBYTE(v30) = 2;
  sub_1E5A2BFE4();
  v26 = v34[0];
  LOBYTE(v30) = 3;
  sub_1E5A2BFE4();
  v25 = v34[0];
  LOBYTE(v30) = 4;
  sub_1E5A2BFE4();
  v24 = v34[0];
  LOBYTE(v30) = 5;
  v23 = 0;
  sub_1E5A2BFE4();
  v22 = v34[0];
  LOBYTE(v30) = 6;
  sub_1E5A2BFE4();
  v21 = v34[0];
  v35[0] = 7;
  sub_1E5A2BFE4();
  (*(v6 + 8))(v8, v5);
  v23 = v36;
  v10 = v27;
  v9 = v28;
  *&v30 = v28;
  *(&v30 + 1) = v27;
  v11 = v26;
  v12 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v25;
  v13 = v24;
  v14 = v22;
  *&v32 = v24;
  *(&v32 + 1) = v22;
  v15 = v21;
  *&v33 = v21;
  *(&v33 + 1) = v36;
  v16 = v31;
  v17 = v29;
  *v29 = v30;
  v17[1] = v16;
  v18 = v33;
  v17[2] = v32;
  v17[3] = v18;
  sub_1E58BD154(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v9;
  v34[1] = v10;
  v34[2] = v11;
  v34[3] = v12;
  v34[4] = v13;
  v34[5] = v14;
  v34[6] = v15;
  v34[7] = v23;
  return sub_1E58BD18C(v34);
}

uint64_t WorkoutPlanFilterResult.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  sub_1E58B93C8(a1, v3);
  sub_1E58B93C8(a1, v4);
  sub_1E58B93C8(a1, v5);
  sub_1E58B93C8(a1, v6);
  sub_1E58B93C8(a1, v7);
  sub_1E58B93C8(a1, v8);
  sub_1E58B93C8(a1, v10);

  return sub_1E58B93C8(a1, v9);
}

uint64_t WorkoutPlanFilterResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1E5A2C1B4();
  sub_1E58B93C8(v10, v1);
  sub_1E58B93C8(v10, v2);
  sub_1E58B93C8(v10, v3);
  sub_1E58B93C8(v10, v4);
  sub_1E58B93C8(v10, v5);
  sub_1E58B93C8(v10, v6);
  sub_1E58B93C8(v10, v8);
  sub_1E58B93C8(v10, v7);
  return sub_1E5A2C204();
}

uint64_t sub_1E58BD360(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  sub_1E58B93C8(a1, v3);
  sub_1E58B93C8(a1, v4);
  sub_1E58B93C8(a1, v5);
  sub_1E58B93C8(a1, v6);
  sub_1E58B93C8(a1, v7);
  sub_1E58B93C8(a1, v8);
  sub_1E58B93C8(a1, v10);

  return sub_1E58B93C8(a1, v9);
}

uint64_t sub_1E58BD40C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  sub_1E5A2C1B4();
  sub_1E58B93C8(v11, v2);
  sub_1E58B93C8(v11, v3);
  sub_1E58B93C8(v11, v4);
  sub_1E58B93C8(v11, v5);
  sub_1E58B93C8(v11, v6);
  sub_1E58B93C8(v11, v7);
  sub_1E58B93C8(v11, v9);
  sub_1E58B93C8(v11, v8);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC12FilterResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v16 = a1[6];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v14 = a1[7];
  v15 = a2[6];
  v13 = a2[7];
  if ((sub_1E58B61B8(*a1, *a2) & 1) == 0 || (sub_1E58B61B8(v2, v7) & 1) == 0 || (sub_1E58B61B8(v3, v8) & 1) == 0 || (sub_1E58B61B8(v4, v9) & 1) == 0 || (sub_1E58B61B8(v6, v11) & 1) == 0 || (sub_1E58B61B8(v5, v10) & 1) == 0 || (sub_1E58B61B8(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B61B8(v14, v13);
}

unint64_t sub_1E58BD5E8()
{
  result = qword_1ECFFB6F0;
  if (!qword_1ECFFB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6F0);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E58BD650(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E58BD698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanFilterResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanFilterResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58BD84C()
{
  result = qword_1ECFFB6F8;
  if (!qword_1ECFFB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6F8);
  }

  return result;
}

unint64_t sub_1E58BD8A4()
{
  result = qword_1ECFFB700;
  if (!qword_1ECFFB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB700);
  }

  return result;
}

unint64_t sub_1E58BD8FC()
{
  result = qword_1ECFFB708;
  if (!qword_1ECFFB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB708);
  }

  return result;
}

uint64_t sub_1E58BD950(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001E5A45EB0 == a2;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5A45ED0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A45EF0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5A45F10 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5A45F30 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5A45F50 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5A45F70 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A45F90 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

unint64_t sub_1E58BDBE4(char a1)
{
  result = 0x684374696D6D6F63;
  switch(a1)
  {
    case 1:
    case 15:
    case 18:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x63416574656C6564;
      break;
    case 6:
      result = 0x567373696D736964;
      break;
    case 7:
      result = 0x61437265746C6966;
      break;
    case 8:
    case 13:
      result = 0xD000000000000017;
      break;
    case 9:
    case 27:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 17:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x45746E6573657270;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 16:
    case 22:
      result = 0xD000000000000015;
      break;
    case 19:
    case 24:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0x6353657461647075;
      break;
    case 26:
      result = 0xD00000000000001ALL;
      break;
    case 28:
      result = 0x4164694477656976;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    case 30:
      result = 0x537961646B656577;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1E58BDF28(uint64_t a1)
{
  v2 = sub_1E58C3A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BDF64(uint64_t a1)
{
  v2 = sub_1E58C3A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BDFA0(uint64_t a1)
{
  v2 = sub_1E58C3A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BDFDC(uint64_t a1)
{
  v2 = sub_1E58C3A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58CA53C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58BE054(uint64_t a1)
{
  v2 = sub_1E58C2838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE090(uint64_t a1)
{
  v2 = sub_1E58C2838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE0CC(uint64_t a1)
{
  v2 = sub_1E58C39CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE108(uint64_t a1)
{
  v2 = sub_1E58C39CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7472656C417369 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E58BE1EC(uint64_t a1)
{
  v2 = sub_1E58C3978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE228(uint64_t a1)
{
  v2 = sub_1E58C3978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE264(uint64_t a1)
{
  v2 = sub_1E58C3924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE2A0(uint64_t a1)
{
  v2 = sub_1E58C3924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE2DC(uint64_t a1)
{
  v2 = sub_1E58C38D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE318(uint64_t a1)
{
  v2 = sub_1E58C38D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE368@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58CAED8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58BE390(uint64_t a1)
{
  v2 = sub_1E58C37D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE3CC(uint64_t a1)
{
  v2 = sub_1E58C37D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5A45E20 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5A2C114();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E58BE4B8(uint64_t a1)
{
  v2 = sub_1E58C377C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE4F4(uint64_t a1)
{
  v2 = sub_1E58C377C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE530(uint64_t a1)
{
  v2 = sub_1E58C3728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE56C(uint64_t a1)
{
  v2 = sub_1E58C3728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE5B4(uint64_t a1)
{
  v2 = sub_1E58C36D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE5F0(uint64_t a1)
{
  v2 = sub_1E58C36D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE62C(uint64_t a1)
{
  v2 = sub_1E58C362C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE668(uint64_t a1)
{
  v2 = sub_1E58C362C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE6A4(uint64_t a1)
{
  v2 = sub_1E58C35D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE6E0(uint64_t a1)
{
  v2 = sub_1E58C35D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE71C(uint64_t a1)
{
  v2 = sub_1E58C3584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE758(uint64_t a1)
{
  v2 = sub_1E58C3584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE794(uint64_t a1)
{
  v2 = sub_1E58C3530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE7D0(uint64_t a1)
{
  v2 = sub_1E58C3530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE80C()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x64696C61567369;
  }
}

uint64_t sub_1E58BE844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64696C61567369 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E58BE91C(uint64_t a1)
{
  v2 = sub_1E58C3488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE958(uint64_t a1)
{
  v2 = sub_1E58C3488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE994()
{
  v1 = 0x7961646B656577;
  if (*v0 != 1)
  {
    v1 = 0x7865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E6572727563;
  }
}

uint64_t sub_1E58BE9F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58CAFD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58BEA1C(uint64_t a1)
{
  v2 = sub_1E58C33CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEA58(uint64_t a1)
{
  v2 = sub_1E58C33CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEA94(uint64_t a1)
{
  v2 = sub_1E58C32B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEAD0(uint64_t a1)
{
  v2 = sub_1E58C32B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEB0C(uint64_t a1)
{
  v2 = sub_1E58C3260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEB48(uint64_t a1)
{
  v2 = sub_1E58C3260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEB84(uint64_t a1)
{
  v2 = sub_1E58C320C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEBC0(uint64_t a1)
{
  v2 = sub_1E58C320C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E58BECD0(uint64_t a1)
{
  v2 = sub_1E58C30BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BED0C(uint64_t a1)
{
  v2 = sub_1E58C30BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BED48(uint64_t a1)
{
  v2 = sub_1E58C2F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BED84(uint64_t a1)
{
  v2 = sub_1E58C2F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEDC0(uint64_t a1)
{
  v2 = sub_1E58C2FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEDFC(uint64_t a1)
{
  v2 = sub_1E58C2FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEE38()
{
  v1 = *v0;
  v2 = 0x7961646B656577;
  v3 = 0x76654C6C6C696B73;
  if (v1 != 5)
  {
    v3 = 0x656D656874;
  }

  v4 = 0x75636F4679646F62;
  if (v1 != 3)
  {
    v4 = 0x6E656D7069757165;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461727564;
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

uint64_t sub_1E58BEF18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58CB0F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58BEF4C(uint64_t a1)
{
  v2 = sub_1E58C2D34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEF88(uint64_t a1)
{
  v2 = sub_1E58C2D34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEFC4(uint64_t a1)
{
  v2 = sub_1E58C2C8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF000(uint64_t a1)
{
  v2 = sub_1E58C2C8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5A45E20 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E5A2C114();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E58BF120(uint64_t a1)
{
  v2 = sub_1E58C2BE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF15C(uint64_t a1)
{
  v2 = sub_1E58C2BE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF198(uint64_t a1)
{
  v2 = sub_1E58C2B3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF1D4(uint64_t a1)
{
  v2 = sub_1E58C2B3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF210(uint64_t a1)
{
  v2 = sub_1E58C2A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF24C(uint64_t a1)
{
  v2 = sub_1E58C2A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF288(uint64_t a1)
{
  v2 = sub_1E58C2A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF2C4(uint64_t a1)
{
  v2 = sub_1E58C2A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF300(uint64_t a1)
{
  v2 = sub_1E58C29EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF33C(uint64_t a1)
{
  v2 = sub_1E58C29EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF378(uint64_t a1)
{
  v2 = sub_1E58C2998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF3B4(uint64_t a1)
{
  v2 = sub_1E58C2998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF3F0()
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  return sub_1E5A2C204();
}

uint64_t sub_1E58BF434(uint64_t a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  return sub_1E5A2C204();
}

uint64_t sub_1E58BF474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E58BF4F4(uint64_t a1)
{
  v2 = sub_1E58C28F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF530(uint64_t a1)
{
  v2 = sub_1E58C28F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WorkoutPlanCreationAction.encode(to:)(void *a1)
{
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB710, &qword_1E5A2D5A0);
  *(&v251 + 1) = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  *&v251 = &v168 - v2;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB718, &qword_1E5A2D5A8);
  v249 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v248 = &v168 - v3;
  *(&v247 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB720, &qword_1E5A2D5B0);
  *&v247 = *(*(&v247 + 1) - 8);
  MEMORY[0x1EEE9AC00](*(&v247 + 1));
  v246 = &v168 - v4;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB728, &qword_1E5A2D5B8);
  v240 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v237 = &v168 - v5;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB730, &qword_1E5A2D5C0);
  v241 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v238 = &v168 - v6;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB738, &qword_1E5A2D5C8);
  v235 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v234 = &v168 - v7;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB740, &qword_1E5A2D5D0);
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v239 = &v168 - v8;
  v232[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB748, &qword_1E5A2D5D8);
  v231 = *(v232[0] - 8);
  MEMORY[0x1EEE9AC00](v232[0]);
  v228 = &v168 - v9;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB750, &qword_1E5A2D5E0);
  v254 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v255 = &v168 - v10;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB758, &qword_1E5A2D5E8);
  v232[1] = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v230 = &v168 - v11;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB760, &qword_1E5A2D5F0);
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v223 = &v168 - v12;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB768, &qword_1E5A2D5F8);
  v227 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v226 = &v168 - v13;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB770, &qword_1E5A2D600);
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v217 = &v168 - v14;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB778, &qword_1E5A2D608);
  v213 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v212 = &v168 - v15;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB780, &qword_1E5A2D610);
  v214 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v211 = &v168 - v16;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB788, &qword_1E5A2D618);
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v218 = &v168 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v256 = &v168 - v19;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB798, &qword_1E5A2D628);
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v208 = &v168 - v20;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7A0, &qword_1E5A2D630);
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v202 = &v168 - v21;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7A8, &qword_1E5A2D638);
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v199 = &v168 - v22;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7B0, &qword_1E5A2D640);
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v196 = &v168 - v23;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7B8, &qword_1E5A2D648);
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v203 = &v168 - v24;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7C0, &qword_1E5A2D650);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v191 = &v168 - v25;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7C8, &qword_1E5A2D658);
  v186 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v184 = &v168 - v26;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7D0, &qword_1E5A2D660);
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v185 = &v168 - v27;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7D8, &qword_1E5A2D668);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v190 = &v168 - v28;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7E0, &qword_1E5A2D670);
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v181 = &v168 - v29;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7E8, &qword_1E5A2D678);
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v176 = &v168 - v30;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7F0, &qword_1E5A2D680);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v175 = &v168 - v31;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7F8, &qword_1E5A2D688);
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v172 = &v168 - v32;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB800, &qword_1E5A2D690);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v34 = &v168 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB808, &qword_1E5A2D698);
  v169 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v168 - v36;
  v38 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB810, &unk_1E5A2D6A0);
  v257 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v42 = &v168 - v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58C2838();
  v260 = v42;
  sub_1E5A2C224();
  sub_1E58C288C(v259, v40);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v114 = *(v40 + 2);
      LOBYTE(v267) = 6;
      sub_1E58C37D0();
      v115 = v190;
      v116 = v261;
      v117 = v260;
      sub_1E5A2C024();
      LOBYTE(v267) = 0;
      v118 = v193;
      v119 = v258;
      sub_1E5A2C034();
      if (!v119)
      {

        *&v267 = v114;
        LOBYTE(v262) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB970, &unk_1E5A2D6B0);
        sub_1E58C3824();
        sub_1E5A2C054();

        LOBYTE(v267) = 2;
        sub_1E5A2C074();
        (*(v192 + 8))(v115, v118);
        v129 = *(v257 + 8);
        v130 = v117;
        goto LABEL_58;
      }

      (*(v192 + 8))(v115, v118);
      (*(v257 + 8))(v117, v116);
      return;
    case 2u:
      LOBYTE(v267) = 7;
      sub_1E58C377C();
      v53 = v185;
      v44 = v261;
      v54 = v260;
      sub_1E5A2C024();
      v55 = v189;
      sub_1E5A2C064();

      v57 = &v219;
      goto LABEL_30;
    case 3u:
      LOBYTE(v267) = 9;
      sub_1E58C36D4();
      v53 = v191;
      v44 = v261;
      v54 = v260;
      sub_1E5A2C024();
      v55 = v195;
      sub_1E5A2C064();

      v57 = &v226;
      goto LABEL_30;
    case 4u:
      v88 = *v40;
      v87 = *(v40 + 1);
      v90 = *(v40 + 2);
      v89 = *(v40 + 3);
      v91 = *(v40 + 5);
      v269 = *(v40 + 4);
      v270 = v91;
      *&v271 = *(v40 + 12);
      v92 = *(v40 + 3);
      v267 = *(v40 + 2);
      v268 = v92;
      LOBYTE(v262) = 10;
      sub_1E58C362C();
      v93 = v203;
      v94 = v261;
      v95 = v260;
      sub_1E5A2C024();
      *&v262 = v88;
      *(&v262 + 1) = v87;
      *&v263 = v90;
      *(&v263 + 1) = v89;
      v273 = 0;
      sub_1E58C3680();
      v96 = v207;
      v97 = v258;
      sub_1E5A2C0B4();
      if (!v97)
      {

        v264 = v269;
        v265 = v270;
        *&v266 = v271;
        v262 = v267;
        v263 = v268;
        v273 = 1;
        sub_1E58C31B8();
        sub_1E5A2C0B4();
        (*(v206 + 8))(v93, v96);
        (*(v257 + 8))(v95, v94);
        goto LABEL_53;
      }

      sub_1E58C3164(&v267);
      (*(v206 + 8))(v93, v96);
      (*(v257 + 8))(v95, v94);

LABEL_24:

      return;
    case 5u:
      LOBYTE(v267) = 12;
      sub_1E58C3584();
      v43 = v199;
      v44 = v261;
      v45 = v260;
      sub_1E5A2C024();
      v46 = v201;
      sub_1E5A2C074();
      v47 = v232;
      goto LABEL_40;
    case 6u:
      LOBYTE(v267) = 13;
      sub_1E58C3530();
      v43 = v202;
      v44 = v261;
      v45 = v260;
      sub_1E5A2C024();
      v46 = v205;
      sub_1E5A2C074();
      v47 = &v235;
      goto LABEL_40;
    case 7u:
      v108 = v40[1];
      LOBYTE(v267) = 14;
      sub_1E58C3488();
      v109 = v208;
      v110 = v261;
      v111 = v260;
      sub_1E5A2C024();
      LOBYTE(v267) = 0;
      v112 = v210;
      v113 = v258;
      sub_1E5A2C074();
      if (v113)
      {
        (*(v209 + 8))(v109, v112);
        (*(v257 + 8))(v111, v110);
        return;
      }

      LOBYTE(v267) = v108;
      LOBYTE(v262) = 1;
      sub_1E58C34DC();
      sub_1E5A2C054();
      (*(v209 + 8))(v109, v112);
      v129 = *(v257 + 8);
      v130 = v111;
LABEL_58:
      v142 = v261;
      goto LABEL_42;
    case 8u:
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
      LODWORD(v259) = v40[*(v132 + 48)];
      v133 = v40[*(v132 + 64) + 8];
      v134 = v256;
      sub_1E58C335C(v40, v256);
      LOBYTE(v267) = 15;
      sub_1E58C33CC();
      v135 = v218;
      v44 = v261;
      v136 = v260;
      sub_1E5A2C024();
      LOBYTE(v267) = 0;
      type metadata accessor for WorkoutPlanScheduledItem(0);
      sub_1E58C79BC(&qword_1ECFFB910, &protocol conformance descriptor for WorkoutPlanScheduledItem);
      v137 = v222;
      v138 = v258;
      sub_1E5A2C054();
      if (!v138)
      {
        LODWORD(v258) = v133;
        LOBYTE(v267) = v259;
        LOBYTE(v262) = 1;
        sub_1E58C2944();
        sub_1E5A2C054();
        LOBYTE(v267) = 2;
        sub_1E5A2C044();
        v134 = v256;
      }

      (*(v221 + 8))(v135, v137);
      sub_1E58C3420(v134);
      v129 = *(v257 + 8);
      v130 = v136;
      goto LABEL_41;
    case 9u:
      v104 = *v40;
      LOBYTE(v267) = 16;
      sub_1E58C32B4();
      v43 = v211;
      v44 = v261;
      v45 = v260;
      sub_1E5A2C024();
      LOBYTE(v267) = v104;
      sub_1E58C3308();
      v46 = v216;
      sub_1E5A2C0B4();
      v47 = &v245;
      goto LABEL_40;
    case 0xAu:
      LOBYTE(v267) = 18;
      sub_1E58C320C();
      v43 = v217;
      v44 = v261;
      v45 = v260;
      sub_1E5A2C024();
      v46 = v220;
      sub_1E5A2C094();
      v47 = &v249;
      goto LABEL_40;
    case 0xBu:
      v75 = *v40;
      v256 = *(v40 + 1);
      v76 = *(v40 + 2);
      v255 = *(v40 + 3);
      v77 = *(v40 + 4);
      v78 = *(v40 + 5);
      v79 = *(v40 + 6);
      v80 = *(v40 + 72);
      v81 = *(v40 + 104);
      v269 = *(v40 + 88);
      v270 = v81;
      *&v271 = *(v40 + 15);
      v267 = *(v40 + 56);
      v268 = v80;
      LOBYTE(v262) = 19;
      sub_1E58C30BC();
      v82 = v226;
      v83 = v261;
      v84 = v260;
      sub_1E5A2C024();
      *&v259 = v75;
      *&v262 = v75;
      *(&v262 + 1) = v256;
      *&v263 = v76;
      *(&v263 + 1) = v255;
      *&v264 = v77;
      *(&v264 + 1) = v78;
      *&v265 = v79;
      v273 = 0;
      sub_1E58C3110();
      v85 = v229;
      v86 = v258;
      sub_1E5A2C0B4();
      if (v86)
      {
        sub_1E58C3164(&v267);
        (*(v227 + 8))(v82, v85);
        (*(v257 + 8))(v84, v83);
      }

      else
      {

        v264 = v269;
        v265 = v270;
        *&v266 = v271;
        v262 = v267;
        v263 = v268;
        v273 = 1;
        sub_1E58C31B8();
        sub_1E5A2C0B4();
        (*(v227 + 8))(v82, v85);
        (*(v257 + 8))(v260, v83);
LABEL_53:
        sub_1E58C3164(&v267);
      }

      return;
    case 0xCu:
      v98 = *(v40 + 3);
      v269 = *(v40 + 2);
      v270 = v98;
      v271 = *(v40 + 4);
      v99 = *(v40 + 1);
      v267 = *v40;
      v268 = v99;
      LOBYTE(v262) = 20;
      sub_1E58C2FC0();
      v100 = v223;
      v101 = v261;
      v102 = v260;
      sub_1E5A2C024();
      v264 = v269;
      v265 = v270;
      v266 = v271;
      v262 = v267;
      v263 = v268;
      sub_1E58C3014();
      v103 = v225;
      sub_1E5A2C0B4();
      (*(v224 + 8))(v100, v103);
      (*(v257 + 8))(v102, v101);
      sub_1E58C3068(&v267);
      return;
    case 0xDu:
      v126 = *(v40 + 2);
      v267 = *(v40 + 1);
      v268 = v126;
      v127 = *(v40 + 4);
      v269 = *(v40 + 3);
      v270 = v127;
      LOBYTE(v262) = 21;
      sub_1E58C2F6C();
      v53 = v230;
      v44 = v261;
      v54 = v260;
      sub_1E5A2C024();
      LOBYTE(v262) = 0;
      v55 = v233;
      v128 = v258;
      sub_1E5A2C064();
      if (v128)
      {

        sub_1E58BD18C(&v267);
        v57 = &v261;
        goto LABEL_30;
      }

      v262 = v267;
      v263 = v268;
      v264 = v269;
      v265 = v270;
      v273 = 1;
      sub_1E58C2C38();
      sub_1E5A2C0B4();
      v147 = &v261;
      goto LABEL_57;
    case 0xEu:
      v58 = *v40;
      v59 = *(v40 + 2);
      v239 = *(v40 + 1);
      v241 = v59;
      v238 = *(v40 + 3);
      LODWORD(v237) = v40[32];
      v60 = *(v40 + 6);
      v240 = *(v40 + 5);
      v61 = *(v40 + 7);
      v62 = *(v40 + 8);
      v63 = *(v40 + 10);
      v242 = *(v40 + 9);
      v244 = v63;
      v64 = *(v40 + 12);
      v243 = *(v40 + 11);
      v245 = v64;
      v65 = *(v40 + 14);
      *&v247 = *(v40 + 13);
      *(&v247 + 1) = v65;
      v66 = *(v40 + 16);
      *&v251 = *(v40 + 15);
      *(&v251 + 1) = v66;
      v67 = *(v40 + 18);
      v248 = *(v40 + 17);
      v249 = v67;
      v68 = *(v40 + 20);
      v250 = *(v40 + 19);
      v252 = v68;
      v69 = *(v40 + 22);
      v256 = *(v40 + 21);
      *&v259 = v69;
      LODWORD(v246) = *(v40 + 46);
      LOBYTE(v267) = 22;
      sub_1E58C2D34();
      v70 = v255;
      v71 = v261;
      v72 = v260;
      sub_1E5A2C024();
      LOBYTE(v267) = v58;
      LOBYTE(v262) = 0;
      sub_1E58C2944();
      v73 = v253;
      v74 = v258;
      sub_1E5A2C054();
      if (v74)
      {

        sub_1E58C2D88(v240, v60, v61, v62);
        sub_1E58C2D88(v242, v244, v243, v245);
        sub_1E58C2DCC(v247, *(&v247 + 1), v251, *(&v251 + 1), v248, v249);
        sub_1E58C2D88(v250, v252, v256, v259);
        (*(v254 + 8))(v70, v73);
        (*(v257 + 8))(v72, v71);
      }

      else
      {
        v148 = v240;
        LOBYTE(v267) = 1;
        sub_1E5A2C034();

        LOBYTE(v267) = 2;
        sub_1E5A2C044();
        v149 = v148;
        *&v267 = v148;
        *(&v267 + 1) = v60;
        v258 = v60;
        *&v268 = v61;
        *(&v268 + 1) = v62;
        LOBYTE(v262) = 3;
        sub_1E58C2E1C();
        sub_1E5A2C054();
        v150 = v244;
        v151 = v242;
        sub_1E58C2D88(v149, v258, v61, v62);
        *&v267 = v151;
        *(&v267 + 1) = v150;
        v152 = v150;
        v153 = v151;
        v154 = v243;
        v155 = v245;
        *&v268 = v243;
        *(&v268 + 1) = v245;
        LOBYTE(v262) = 4;
        sub_1E58C2E70();
        v156 = v255;
        sub_1E5A2C054();
        v157 = v249;
        sub_1E58C2D88(v153, v152, v154, v155);
        v160 = v247;
        v159 = v160 >> 64;
        v158 = v160;
        v267 = v247;
        v268 = v251;
        v161 = v248;
        *&v269 = v248;
        *(&v269 + 1) = v157;
        LOBYTE(v262) = 5;
        sub_1E58C2EC4();
        v162 = v156;
        sub_1E5A2C054();
        v163 = v252;
        v164 = v158;
        v165 = v259;
        LODWORD(v155) = v246;
        sub_1E58C2DCC(v164, v159, v251, *(&v251 + 1), v161, v157);
        v166 = v250;
        *&v267 = v250;
        *(&v267 + 1) = v163;
        v167 = v256;
        *&v268 = v256;
        *(&v268 + 1) = v165;
        LODWORD(v269) = v155;
        LOBYTE(v262) = 6;
        sub_1E58C2F18();
        sub_1E5A2C054();
        (*(v254 + 8))(v162, v73);
        (*(v257 + 8))(v260, v261);
        sub_1E58C2D88(v166, v252, v167, v165);
      }

      return;
    case 0xFu:
      v107 = *v40;
      LOBYTE(v267) = 23;
      sub_1E58C2C8C();
      v43 = v228;
      v44 = v261;
      v45 = v260;
      sub_1E5A2C024();
      LOBYTE(v267) = v107;
      sub_1E58C2CE0();
      v46 = v232[0];
      sub_1E5A2C0B4();
      v47 = &v259 + 1;
      goto LABEL_40;
    case 0x10u:
      v51 = *(v40 + 2);
      v267 = *(v40 + 1);
      v268 = v51;
      v52 = *(v40 + 4);
      v269 = *(v40 + 3);
      v270 = v52;
      LOBYTE(v262) = 24;
      sub_1E58C2BE4();
      v53 = v239;
      v44 = v261;
      v54 = v260;
      sub_1E5A2C024();
      LOBYTE(v262) = 0;
      v55 = v245;
      v56 = v258;
      sub_1E5A2C064();
      if (v56)
      {

        sub_1E58BD18C(&v267);
        v57 = &v267 + 1;
LABEL_30:
        (*(*(v57 - 32) + 8))(v53, v55);
        v129 = *(v257 + 8);
        v130 = v54;
LABEL_41:
        v142 = v44;
LABEL_42:
        v129(v130, v142);
      }

      else
      {

        v262 = v267;
        v263 = v268;
        v264 = v269;
        v265 = v270;
        v273 = 1;
        sub_1E58C2C38();
        sub_1E5A2C0B4();
        v147 = &v267 + 1;
LABEL_57:
        (*(*(v147 - 32) + 8))(v53, v55);
        (*(v257 + 8))(v54, v44);
        sub_1E58BD18C(&v267);
      }

      return;
    case 0x11u:
      v120 = *v40;
      LOBYTE(v267) = 25;
      sub_1E58C2B3C();
      v121 = v234;
      v122 = v261;
      v123 = v260;
      sub_1E5A2C024();
      *&v267 = v120;
      sub_1E58C2B90();
      v124 = v236;
      sub_1E5A2C0B4();
      (*(v235 + 8))(v121, v124);
      (*(v257 + 8))(v123, v122);
      goto LABEL_24;
    case 0x12u:
      v259 = *v40;
      v131 = *(v40 + 2);
      LOBYTE(v267) = 26;
      sub_1E58C2A94();
      v43 = v238;
      v44 = v261;
      v45 = v260;
      sub_1E5A2C024();
      v267 = v259;
      *&v268 = v131;
      sub_1E58C2AE8();
      v46 = v243;
      sub_1E5A2C0B4();
      v47 = &v266;
      goto LABEL_40;
    case 0x13u:
      LOBYTE(v267) = 29;
      sub_1E58C2998();
      v43 = v248;
      v44 = v261;
      v45 = v260;
      sub_1E5A2C024();
      v46 = v250;
      sub_1E5A2C094();
      v47 = &v270 + 1;
      goto LABEL_40;
    case 0x14u:
      v125 = *v40;
      LOBYTE(v267) = 30;
      sub_1E58C28F0();
      v43 = v251;
      v44 = v261;
      v45 = v260;
      sub_1E5A2C024();
      LOBYTE(v267) = v125;
      sub_1E58C2944();
      v46 = v252;
      sub_1E5A2C0B4();
      v47 = &v272;
      goto LABEL_40;
    case 0x15u:
      LOBYTE(v267) = 0;
      sub_1E58C3A74();
      v49 = v261;
      v50 = v260;
      sub_1E5A2C024();
      (*(v169 + 8))(v37, v35);
      goto LABEL_47;
    case 0x16u:
      LOBYTE(v267) = 1;
      sub_1E58C3A20();
      v140 = v261;
      v141 = v260;
      sub_1E5A2C024();
      (*(v170 + 8))(v34, v171);
      (*(v257 + 8))(v141, v140);
      return;
    case 0x17u:
      LOBYTE(v267) = 2;
      sub_1E58C39CC();
      v143 = v172;
      v49 = v261;
      v50 = v260;
      sub_1E5A2C024();
      (*(v173 + 8))(v143, v174);
      goto LABEL_47;
    case 0x18u:
      LOBYTE(v267) = 4;
      sub_1E58C3924();
      v106 = v176;
      v49 = v261;
      v50 = v260;
      sub_1E5A2C024();
      (*(v179 + 8))(v106, v180);
      goto LABEL_47;
    case 0x19u:
      LOBYTE(v267) = 5;
      sub_1E58C38D0();
      v105 = v181;
      v49 = v261;
      v50 = v260;
      sub_1E5A2C024();
      (*(v182 + 8))(v105, v183);
      goto LABEL_47;
    case 0x1Au:
      LOBYTE(v267) = 8;
      sub_1E58C3728();
      v146 = v184;
      v49 = v261;
      v50 = v260;
      sub_1E5A2C024();
      (*(v186 + 8))(v146, v188);
      goto LABEL_47;
    case 0x1Bu:
      LOBYTE(v267) = 11;
      sub_1E58C35D8();
      v48 = v196;
      v49 = v261;
      v50 = v260;
      sub_1E5A2C024();
      (*(v197 + 8))(v48, v198);
      goto LABEL_47;
    case 0x1Cu:
      LOBYTE(v267) = 17;
      sub_1E58C3260();
      v144 = v212;
      v49 = v261;
      v50 = v260;
      sub_1E5A2C024();
      (*(v213 + 8))(v144, v215);
      goto LABEL_47;
    case 0x1Du:
      LOBYTE(v267) = 27;
      sub_1E58C2A40();
      v145 = v237;
      v49 = v261;
      v50 = v260;
      sub_1E5A2C024();
      (*(v240 + 8))(v145, v242);
      goto LABEL_47;
    case 0x1Eu:
      LOBYTE(v267) = 28;
      sub_1E58C29EC();
      v139 = v246;
      v49 = v261;
      v50 = v260;
      sub_1E5A2C024();
      (*(v247 + 8))(v139, *(&v247 + 1));
LABEL_47:
      (*(v257 + 8))(v50, v49);
      return;
    default:
      LOBYTE(v267) = 3;
      sub_1E58C3978();
      v43 = v175;
      v44 = v261;
      v45 = v260;
      sub_1E5A2C024();
      v46 = v178;
      sub_1E5A2C074();
      v47 = &v209;
LABEL_40:
      (*(*(v47 - 32) + 8))(v43, v46);
      v129 = *(v257 + 8);
      v130 = v45;
      goto LABEL_41;
  }
}

uint64_t type metadata accessor for WorkoutPlanCreationAction(uint64_t a1)
{
  result = qword_1ECFFBB50;
  if (!qword_1ECFFBB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E58C2838()
{
  result = qword_1ECFFB818;
  if (!qword_1ECFFB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB818);
  }

  return result;
}

uint64_t sub_1E58C288C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanCreationAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E58C28F0()
{
  result = qword_1ECFFB820;
  if (!qword_1ECFFB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB820);
  }

  return result;
}

unint64_t sub_1E58C2944()
{
  result = qword_1ECFFB828;
  if (!qword_1ECFFB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB828);
  }

  return result;
}

unint64_t sub_1E58C2998()
{
  result = qword_1ECFFB830;
  if (!qword_1ECFFB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB830);
  }

  return result;
}

unint64_t sub_1E58C29EC()
{
  result = qword_1ECFFB838;
  if (!qword_1ECFFB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB838);
  }

  return result;
}

unint64_t sub_1E58C2A40()
{
  result = qword_1ECFFB840;
  if (!qword_1ECFFB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB840);
  }

  return result;
}

unint64_t sub_1E58C2A94()
{
  result = qword_1ECFFB848;
  if (!qword_1ECFFB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB848);
  }

  return result;
}

unint64_t sub_1E58C2AE8()
{
  result = qword_1ECFFB850;
  if (!qword_1ECFFB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB850);
  }

  return result;
}

unint64_t sub_1E58C2B3C()
{
  result = qword_1ECFFB858;
  if (!qword_1ECFFB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB858);
  }

  return result;
}

unint64_t sub_1E58C2B90()
{
  result = qword_1ECFFB860;
  if (!qword_1ECFFB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB860);
  }

  return result;
}

unint64_t sub_1E58C2BE4()
{
  result = qword_1ECFFB868;
  if (!qword_1ECFFB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB868);
  }

  return result;
}

unint64_t sub_1E58C2C38()
{
  result = qword_1ECFFB870;
  if (!qword_1ECFFB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB870);
  }

  return result;
}

unint64_t sub_1E58C2C8C()
{
  result = qword_1ECFFB878;
  if (!qword_1ECFFB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB878);
  }

  return result;
}

unint64_t sub_1E58C2CE0()
{
  result = qword_1ECFFB880;
  if (!qword_1ECFFB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB880);
  }

  return result;
}

unint64_t sub_1E58C2D34()
{
  result = qword_1ECFFB888;
  if (!qword_1ECFFB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB888);
  }

  return result;
}

void sub_1E58C2D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_1E58C2DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t sub_1E58C2E1C()
{
  result = qword_1ECFFB890;
  if (!qword_1ECFFB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB890);
  }

  return result;
}

unint64_t sub_1E58C2E70()
{
  result = qword_1ECFFB898;
  if (!qword_1ECFFB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB898);
  }

  return result;
}

unint64_t sub_1E58C2EC4()
{
  result = qword_1ECFFB8A0;
  if (!qword_1ECFFB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8A0);
  }

  return result;
}

unint64_t sub_1E58C2F18()
{
  result = qword_1ECFFB8A8;
  if (!qword_1ECFFB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8A8);
  }

  return result;
}

unint64_t sub_1E58C2F6C()
{
  result = qword_1ECFFB8B0;
  if (!qword_1ECFFB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8B0);
  }

  return result;
}

unint64_t sub_1E58C2FC0()
{
  result = qword_1ECFFB8B8;
  if (!qword_1ECFFB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8B8);
  }

  return result;
}

unint64_t sub_1E58C3014()
{
  result = qword_1ECFFB8C0;
  if (!qword_1ECFFB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8C0);
  }

  return result;
}

unint64_t sub_1E58C30BC()
{
  result = qword_1ECFFB8C8;
  if (!qword_1ECFFB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8C8);
  }

  return result;
}

unint64_t sub_1E58C3110()
{
  result = qword_1ECFFB8D0;
  if (!qword_1ECFFB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8D0);
  }

  return result;
}

unint64_t sub_1E58C31B8()
{
  result = qword_1ECFFB8D8;
  if (!qword_1ECFFB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8D8);
  }

  return result;
}

unint64_t sub_1E58C320C()
{
  result = qword_1ECFFB8E0;
  if (!qword_1ECFFB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8E0);
  }

  return result;
}

unint64_t sub_1E58C3260()
{
  result = qword_1ECFFB8E8;
  if (!qword_1ECFFB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8E8);
  }

  return result;
}

unint64_t sub_1E58C32B4()
{
  result = qword_1ECFFB8F0;
  if (!qword_1ECFFB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8F0);
  }

  return result;
}

unint64_t sub_1E58C3308()
{
  result = qword_1ECFFB8F8;
  if (!qword_1ECFFB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8F8);
  }

  return result;
}

uint64_t sub_1E58C335C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E58C33CC()
{
  result = qword_1ECFFB908;
  if (!qword_1ECFFB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB908);
  }

  return result;
}

uint64_t sub_1E58C3420(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E58C3488()
{
  result = qword_1ECFFB918;
  if (!qword_1ECFFB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB918);
  }

  return result;
}

unint64_t sub_1E58C34DC()
{
  result = qword_1ECFFB920;
  if (!qword_1ECFFB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB920);
  }

  return result;
}

unint64_t sub_1E58C3530()
{
  result = qword_1ECFFB928;
  if (!qword_1ECFFB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB928);
  }

  return result;
}

unint64_t sub_1E58C3584()
{
  result = qword_1ECFFB930;
  if (!qword_1ECFFB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB930);
  }

  return result;
}

unint64_t sub_1E58C35D8()
{
  result = qword_1ECFFB938;
  if (!qword_1ECFFB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB938);
  }

  return result;
}

unint64_t sub_1E58C362C()
{
  result = qword_1ECFFB940;
  if (!qword_1ECFFB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB940);
  }

  return result;
}

unint64_t sub_1E58C3680()
{
  result = qword_1ECFFB948;
  if (!qword_1ECFFB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB948);
  }

  return result;
}

unint64_t sub_1E58C36D4()
{
  result = qword_1ECFFB950;
  if (!qword_1ECFFB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB950);
  }

  return result;
}

unint64_t sub_1E58C3728()
{
  result = qword_1ECFFB958;
  if (!qword_1ECFFB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB958);
  }

  return result;
}

unint64_t sub_1E58C377C()
{
  result = qword_1ECFFB960;
  if (!qword_1ECFFB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB960);
  }

  return result;
}

unint64_t sub_1E58C37D0()
{
  result = qword_1ECFFB968;
  if (!qword_1ECFFB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB968);
  }

  return result;
}

unint64_t sub_1E58C3824()
{
  result = qword_1ECFFB978;
  if (!qword_1ECFFB978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB970, &unk_1E5A2D6B0);
    sub_1E58C7B54(&qword_1ECFFB980, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB978);
  }

  return result;
}

unint64_t sub_1E58C38D0()
{
  result = qword_1ECFFB990;
  if (!qword_1ECFFB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB990);
  }

  return result;
}

unint64_t sub_1E58C3924()
{
  result = qword_1ECFFB998;
  if (!qword_1ECFFB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB998);
  }

  return result;
}

unint64_t sub_1E58C3978()
{
  result = qword_1ECFFB9A0;
  if (!qword_1ECFFB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB9A0);
  }

  return result;
}

unint64_t sub_1E58C39CC()
{
  result = qword_1ECFFB9A8;
  if (!qword_1ECFFB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB9A8);
  }

  return result;
}

unint64_t sub_1E58C3A20()
{
  result = qword_1ECFFB9B0;
  if (!qword_1ECFFB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB9B0);
  }

  return result;
}

unint64_t sub_1E58C3A74()
{
  result = qword_1ECFFB9B8;
  if (!qword_1ECFFB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB9B8);
  }

  return result;
}

uint64_t WorkoutPlanCreationAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v418 = a2;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9C0, &qword_1E5A2D6C0);
  v383 = *(v367 - 8);
  MEMORY[0x1EEE9AC00](v367);
  v424 = &v311 - v3;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9C8, &qword_1E5A2D6C8);
  v381 = *(v382 - 8);
  MEMORY[0x1EEE9AC00](v382);
  v416 = &v311 - v4;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9D0, &qword_1E5A2D6D0);
  v379 = *(v380 - 8);
  MEMORY[0x1EEE9AC00](v380);
  v415 = &v311 - v5;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9D8, &qword_1E5A2D6D8);
  v375 = *(v377 - 8);
  MEMORY[0x1EEE9AC00](v377);
  *(&v413 + 1) = &v311 - v6;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9E0, &qword_1E5A2D6E0);
  v376 = *(v378 - 8);
  MEMORY[0x1EEE9AC00](v378);
  v414 = &v311 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9E8, &qword_1E5A2D6E8);
  v372 = *(v8 - 8);
  v373 = v8;
  MEMORY[0x1EEE9AC00](v8);
  *(&v412 + 1) = &v311 - v9;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9F0, &qword_1E5A2D6F0);
  v371 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  *&v413 = &v311 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9F8, &qword_1E5A2D6F8);
  v369 = *(v11 - 8);
  v370 = v11;
  MEMORY[0x1EEE9AC00](v11);
  *&v412 = &v311 - v12;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA00, &qword_1E5A2D700);
  v388 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389);
  v417 = &v311 - v13;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA08, &qword_1E5A2D708);
  v423 = *(v368 - 8);
  MEMORY[0x1EEE9AC00](v368);
  *(&v411 + 1) = &v311 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA10, &qword_1E5A2D710);
  v364 = *(v15 - 8);
  v365 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v410 = &v311 - v16;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA18, &qword_1E5A2D718);
  v387 = *(v366 - 8);
  MEMORY[0x1EEE9AC00](v366);
  *&v411 = &v311 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA20, &qword_1E5A2D720);
  v361 = *(v18 - 8);
  v362 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v408 = &v311 - v19;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA28, &qword_1E5A2D728);
  v357 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359);
  v406 = &v311 - v20;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA30, &qword_1E5A2D730);
  v358 = *(v360 - 8);
  MEMORY[0x1EEE9AC00](v360);
  v407 = &v311 - v21;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA38, &qword_1E5A2D738);
  v386 = *(v363 - 8);
  MEMORY[0x1EEE9AC00](v363);
  v409 = &v311 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA40, &qword_1E5A2D740);
  v355 = *(v23 - 8);
  v356 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v405 = &v311 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA48, &qword_1E5A2D748);
  v353 = *(v25 - 8);
  v354 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v404 = &v311 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA50, &qword_1E5A2D750);
  v350 = *(v27 - 8);
  v351 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v402 = &v311 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA58, &qword_1E5A2D758);
  v348 = *(v29 - 8);
  v349 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v401 = &v311 - v30;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA60, &qword_1E5A2D760);
  v385 = *(v352 - 8);
  MEMORY[0x1EEE9AC00](v352);
  v403 = &v311 - v31;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA68, &qword_1E5A2D768);
  v421 = *(v346 - 8);
  MEMORY[0x1EEE9AC00](v346);
  v399 = &v311 - v32;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA70, &qword_1E5A2D770);
  v343 = *(v345 - 8);
  MEMORY[0x1EEE9AC00](v345);
  v398 = &v311 - v33;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA78, &qword_1E5A2D778);
  v342 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v397 = &v311 - v34;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA80, &qword_1E5A2D780);
  v384 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v347);
  v400 = &v311 - v35;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA88, &qword_1E5A2D788);
  v419 = *(v420 - 8);
  MEMORY[0x1EEE9AC00](v420);
  v396 = &v311 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA90, &qword_1E5A2D790);
  v340 = *(v37 - 8);
  v341 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v395 = &v311 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA98, &qword_1E5A2D798);
  v338 = *(v39 - 8);
  v339 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v394 = &v311 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBAA0, &qword_1E5A2D7A0);
  v336 = *(v41 - 8);
  v337 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v393 = &v311 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBAA8, &qword_1E5A2D7A8);
  v334 = *(v43 - 8);
  v335 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v392 = &v311 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBAB0, &qword_1E5A2D7B0);
  v332 = *(v45 - 8);
  v333 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v391 = &v311 - v46;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBAB8, &unk_1E5A2D7B8);
  v422 = *(v426 - 8);
  MEMORY[0x1EEE9AC00](v426);
  v429 = &v311 - v47;
  v425 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v425);
  v331 = (&v311 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49);
  v329 = (&v311 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v330 = (&v311 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v328 = (&v311 - v54);
  MEMORY[0x1EEE9AC00](v55);
  v321 = (&v311 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v327 = &v311 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v316 = &v311 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v319 = (&v311 - v62);
  MEMORY[0x1EEE9AC00](v63);
  v326 = &v311 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v320 = &v311 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v324 = (&v311 - v68);
  MEMORY[0x1EEE9AC00](v69);
  v325 = &v311 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v390 = &v311 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v317 = (&v311 - v74);
  MEMORY[0x1EEE9AC00](v75);
  v323 = &v311 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v322 = (&v311 - v78);
  MEMORY[0x1EEE9AC00](v79);
  v318 = (&v311 - v80);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v311 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v311 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v89 = (&v311 - v88);
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v311 - v91;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v311 - v94;
  v96 = a1[3];
  v427 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v96);
  sub_1E58C2838();
  v97 = v428;
  sub_1E5A2C214();
  if (v97)
  {
    goto LABEL_9;
  }

  v312 = v92;
  v313 = v86;
  v314 = v83;
  v315 = v95;
  v311 = v89;
  v98 = v423;
  v99 = v424;
  v428 = 0;
  v100 = v429;
  v101 = sub_1E5A2C004();
  v102 = (2 * *(v101 + 16)) | 1;
  v448 = v101;
  v449 = v101 + 32;
  v450 = 0;
  v451 = v102;
  v103 = sub_1E58BBF00();
  if (v450 != v451 >> 1)
  {
LABEL_6:
    v112 = sub_1E5A2BE84();
    swift_allocError();
    v114 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v114 = v425;
    v115 = v426;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v112 - 8) + 104))(v114, *MEMORY[0x1E69E6AF8], v112);
    swift_willThrow();
LABEL_7:
    (*(v422 + 8))(v100, v115);
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v116 = v427;
    return __swift_destroy_boxed_opaque_existential_1(v116);
  }

  v104 = v98;
  v105 = v421;
  v106 = v420;
  v107 = v419;
  switch(v103)
  {
    case 0:
      LOBYTE(v435) = 0;
      sub_1E58C3A74();
      v108 = v391;
      v109 = v426;
      v110 = v428;
      sub_1E5A2BF44();
      if (v110)
      {
        goto LABEL_72;
      }

      (*(v332 + 8))(v108, v333);
      (*(v422 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v111 = v315;
      goto LABEL_68;
    case 1:
      LOBYTE(v435) = 1;
      sub_1E58C3A20();
      v171 = v392;
      v109 = v426;
      v172 = v428;
      sub_1E5A2BF44();
      if (v172)
      {
        goto LABEL_72;
      }

      (*(v334 + 8))(v171, v335);
      (*(v422 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v111 = v315;
      goto LABEL_68;
    case 2:
      LOBYTE(v435) = 2;
      sub_1E58C39CC();
      v154 = v393;
      v109 = v426;
      v155 = v428;
      sub_1E5A2BF44();
      if (v155)
      {
        goto LABEL_72;
      }

      (*(v336 + 8))(v154, v337);
      (*(v422 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v111 = v315;
      goto LABEL_68;
    case 3:
      LOBYTE(v435) = 3;
      sub_1E58C3978();
      v160 = v394;
      v161 = v426;
      v162 = v428;
      sub_1E5A2BF44();
      if (v162)
      {
        goto LABEL_70;
      }

      v163 = v339;
      v164 = sub_1E5A2BFA4();
      v165 = v422;
      v242 = v164;
      (*(v338 + 8))(v160, v163);
      (*(v165 + 8))(v100, v161);
      swift_unknownObjectRelease();
      v243 = v242 & 1;
      v228 = v312;
      *v312 = v243;
      goto LABEL_82;
    case 4:
      LOBYTE(v435) = 4;
      sub_1E58C3924();
      v132 = v395;
      v109 = v426;
      v133 = v428;
      sub_1E5A2BF44();
      if (v133)
      {
        goto LABEL_72;
      }

      (*(v340 + 8))(v132, v341);
      (*(v422 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v111 = v315;
      goto LABEL_68;
    case 5:
      LOBYTE(v435) = 5;
      sub_1E58C38D0();
      v179 = v396;
      v109 = v426;
      v180 = v428;
      sub_1E5A2BF44();
      if (v180)
      {
        goto LABEL_72;
      }

      (*(v107 + 8))(v179, v106);
      (*(v422 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v111 = v315;
      goto LABEL_68;
    case 6:
      LOBYTE(v435) = 6;
      sub_1E58C37D0();
      v189 = v400;
      v150 = v426;
      v190 = v428;
      sub_1E5A2BF44();
      if (v190)
      {
        goto LABEL_50;
      }

      LOBYTE(v435) = 0;
      v218 = v347;
      v255 = sub_1E5A2BF64();
      v257 = v256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB970, &unk_1E5A2D6B0);
      LOBYTE(v430) = 1;
      sub_1E58C7AA8();
      v258 = v189;
      sub_1E5A2BF84();
      v281 = v435;
      LOBYTE(v430) = 2;
      v282 = sub_1E5A2BFA4();
      v428 = 0;
      v297 = v282;
      (*(v384 + 8))(v258, v218);
      (*(v422 + 8))(v100, v150);
      swift_unknownObjectRelease();
      v273 = v311;
      *v311 = v255;
      v273[1] = v257;
      v273[2] = v281;
      *(v273 + 24) = v297 & 1;
      goto LABEL_80;
    case 7:
      LOBYTE(v435) = 7;
      sub_1E58C377C();
      v166 = v397;
      v125 = v426;
      v167 = v428;
      sub_1E5A2BF44();
      if (v167)
      {
        goto LABEL_74;
      }

      v168 = v344;
      v169 = sub_1E5A2BF94();
      v170 = v422;
      v244 = v169;
      v246 = v245;
      (*(v342 + 8))(v166, v168);
      (*(v170 + 8))(v100, v125);
      swift_unknownObjectRelease();
      v247 = v313;
      *v313 = v244;
      v247[1] = v246;
      swift_storeEnumTagMultiPayload();
      v296 = v247;
      goto LABEL_81;
    case 8:
      LOBYTE(v435) = 8;
      sub_1E58C3728();
      v200 = v398;
      v109 = v426;
      v201 = v428;
      sub_1E5A2BF44();
      if (v201)
      {
        goto LABEL_72;
      }

      (*(v343 + 8))(v200, v345);
      (*(v422 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v111 = v315;
      goto LABEL_68;
    case 9:
      LOBYTE(v435) = 9;
      sub_1E58C36D4();
      v139 = v399;
      v115 = v426;
      v140 = v428;
      sub_1E5A2BF44();
      if (v140)
      {
        goto LABEL_7;
      }

      v141 = v346;
      v142 = sub_1E5A2BF94();
      v143 = v139;
      v144 = v422;
      v232 = *(v105 + 8);
      v233 = v142;
      v235 = v234;
      v232(v143, v141);
      (*(v144 + 8))(v100, v115);
      swift_unknownObjectRelease();
      v236 = v314;
      *v314 = v233;
      *(v236 + 8) = v235;
      swift_storeEnumTagMultiPayload();
      v111 = v315;
      sub_1E58C7568(v236, v315);
      v237 = v427;
      goto LABEL_85;
    case 10:
      LOBYTE(v435) = 10;
      sub_1E58C362C();
      v196 = v403;
      v197 = v100;
      v198 = v426;
      v199 = v428;
      sub_1E5A2BF44();
      if (v199)
      {
        (*(v422 + 8))(v197, v198);
        goto LABEL_55;
      }

      v219 = v197;
      LOBYTE(v435) = 0;
      sub_1E58C7A54();
      v220 = v352;
      sub_1E5A2BFE4();
      v261 = v430;
      v428 = v431;
      v262 = v196;
      v263 = *(&v431 + 1);
      LOBYTE(v444) = 1;
      sub_1E58C7914();
      sub_1E5A2BFE4();
      (*(v385 + 8))(v262, v220);
      (*(v422 + 8))(v219, v198);
      swift_unknownObjectRelease();
      v228 = v318;
      *v318 = v261;
      *(v228 + 2) = v428;
      *(v228 + 3) = v263;
      v283 = v438;
      *(v228 + 4) = v437;
      *(v228 + 5) = v283;
      *(v228 + 12) = v439;
      v284 = v436;
      *(v228 + 2) = v435;
      *(v228 + 3) = v284;
      goto LABEL_82;
    case 11:
      LOBYTE(v435) = 11;
      sub_1E58C35D8();
      v130 = v401;
      v109 = v426;
      v131 = v428;
      sub_1E5A2BF44();
      if (v131)
      {
        goto LABEL_72;
      }

      (*(v348 + 8))(v130, v349);
      (*(v422 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v111 = v315;
      goto LABEL_68;
    case 12:
      LOBYTE(v435) = 12;
      sub_1E58C3584();
      v134 = v402;
      v125 = v426;
      v135 = v428;
      sub_1E5A2BF44();
      if (v135)
      {
        goto LABEL_74;
      }

      v136 = v351;
      v137 = sub_1E5A2BFA4();
      v138 = v422;
      v230 = v137;
      (*(v350 + 8))(v134, v136);
      (*(v138 + 8))(v100, v125);
      swift_unknownObjectRelease();
      v231 = v230 & 1;
      v273 = v322;
      *v322 = v231;
      goto LABEL_80;
    case 13:
      LOBYTE(v435) = 13;
      sub_1E58C3530();
      v184 = v404;
      v109 = v426;
      v185 = v428;
      sub_1E5A2BF44();
      if (v185)
      {
        goto LABEL_72;
      }

      v186 = v354;
      v187 = sub_1E5A2BFA4();
      v188 = v422;
      v253 = v187;
      (*(v353 + 8))(v184, v186);
      (*(v188 + 8))(v100, v426);
      swift_unknownObjectRelease();
      v254 = v253 & 1;
      v228 = v323;
      *v323 = v254;
      goto LABEL_82;
    case 14:
      LOBYTE(v435) = 14;
      sub_1E58C3488();
      v124 = v405;
      v125 = v426;
      v126 = v428;
      sub_1E5A2BF44();
      if (!v126)
      {
        LOBYTE(v435) = 0;
        v127 = v356;
        v128 = sub_1E5A2BFA4();
        v129 = v422;
        v229 = v128;
        LOBYTE(v430) = 1;
        sub_1E58C7A00();
        sub_1E5A2BF84();
        (*(v355 + 8))(v124, v127);
        (*(v129 + 8))(v100, v125);
        swift_unknownObjectRelease();
        v272 = v435;
        v273 = v317;
        *v317 = v229 & 1;
        *(v273 + 1) = v272;
        goto LABEL_80;
      }

LABEL_74:
      (*(v422 + 8))(v100, v125);
      swift_unknownObjectRelease();
      v116 = v427;
      return __swift_destroy_boxed_opaque_existential_1(v116);
    case 15:
      LOBYTE(v435) = 15;
      sub_1E58C33CC();
      v156 = v409;
      v115 = v426;
      v157 = v428;
      sub_1E5A2BF44();
      if (v157)
      {
        goto LABEL_7;
      }

      type metadata accessor for WorkoutPlanScheduledItem(0);
      LOBYTE(v435) = 0;
      sub_1E58C79BC(&qword_1ECFFBB28, &protocol conformance descriptor for WorkoutPlanScheduledItem);
      v158 = v363;
      sub_1E5A2BF84();
      v159 = v422;
      v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
      LOBYTE(v435) = 1;
      sub_1E58C7514();
      sub_1E5A2BF84();
      LOBYTE(v435) = 2;
      v276 = sub_1E5A2BF74();
      v277 = v156;
      v428 = 0;
      v293 = v292;
      v294 = v390;
      v295 = &v390[*(v241 + 64)];
      (*(v386 + 8))(v277, v158);
      (*(v159 + 8))(v100, v115);
      swift_unknownObjectRelease();
      *v295 = v276;
      v295[8] = v293 & 1;
      swift_storeEnumTagMultiPayload();
      v296 = v294;
      goto LABEL_81;
    case 16:
      LOBYTE(v435) = 16;
      sub_1E58C32B4();
      v120 = v407;
      v109 = v426;
      v121 = v428;
      sub_1E5A2BF44();
      if (v121)
      {
        goto LABEL_72;
      }

      sub_1E58C7968();
      v122 = v360;
      sub_1E5A2BFE4();
      v123 = v422;
      (*(v358 + 8))(v120, v122);
      (*(v123 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v228 = v325;
      *v325 = v435;
      goto LABEL_82;
    case 17:
      LOBYTE(v435) = 17;
      sub_1E58C3260();
      v173 = v406;
      v109 = v426;
      v174 = v428;
      sub_1E5A2BF44();
      if (v174)
      {
        goto LABEL_72;
      }

      (*(v357 + 8))(v173, v359);
      (*(v422 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v111 = v315;
      goto LABEL_68;
    case 18:
      LOBYTE(v435) = 18;
      sub_1E58C320C();
      v191 = v408;
      v161 = v426;
      v192 = v428;
      sub_1E5A2BF44();
      if (v192)
      {
        goto LABEL_70;
      }

      v193 = v362;
      v194 = sub_1E5A2BFC4();
      v195 = v422;
      v259 = v194;
      (*(v361 + 8))(v191, v193);
      (*(v195 + 8))(v100, v161);
      swift_unknownObjectRelease();
      v260 = v324;
      *v324 = v259;
      goto LABEL_79;
    case 19:
      LOBYTE(v435) = 19;
      sub_1E58C30BC();
      v205 = v411;
      v109 = v426;
      v206 = v428;
      sub_1E5A2BF44();
      if (v206)
      {
        goto LABEL_72;
      }

      LOBYTE(v435) = 0;
      sub_1E58C78C0();
      v207 = v366;
      sub_1E5A2BFE4();
      v265 = v205;
      v424 = *(&v430 + 1);
      v266 = v430;
      v423 = *(&v431 + 1);
      v267 = v431;
      v428 = v432;
      v421 = v433;
      v268 = v434;
      LOBYTE(v444) = 1;
      sub_1E58C7914();
      sub_1E5A2BFE4();
      (*(v387 + 8))(v265, v207);
      (*(v422 + 8))(v100, v426);
      swift_unknownObjectRelease();
      v287 = v435;
      v228 = v320;
      *(v320 + 72) = v436;
      v288 = v438;
      *(v228 + 88) = v437;
      *(v228 + 104) = v288;
      v289 = v424;
      *v228 = v266;
      *(v228 + 1) = v289;
      v290 = v423;
      *(v228 + 2) = v267;
      *(v228 + 3) = v290;
      v291 = v421;
      *(v228 + 4) = v428;
      *(v228 + 5) = v291;
      *(v228 + 6) = v268;
      *(v228 + 15) = v439;
      *(v228 + 56) = v287;
      goto LABEL_82;
    case 20:
      LOBYTE(v435) = 20;
      sub_1E58C2FC0();
      v175 = v410;
      v109 = v426;
      v176 = v428;
      sub_1E5A2BF44();
      if (v176)
      {
        goto LABEL_72;
      }

      sub_1E58C786C();
      v177 = v365;
      sub_1E5A2BFE4();
      v178 = (v422 + 8);
      (*(v364 + 8))(v175, v177);
      (*v178)(v100, v109);
      swift_unknownObjectRelease();
      v248 = v438;
      v228 = v326;
      *(v326 + 2) = v437;
      *(v228 + 3) = v248;
      *(v228 + 4) = v439;
      v249 = v436;
      *v228 = v435;
      *(v228 + 1) = v249;
      goto LABEL_82;
    case 21:
      LOBYTE(v435) = 21;
      sub_1E58C2F6C();
      v181 = *(&v411 + 1);
      v150 = v426;
      v182 = v428;
      sub_1E5A2BF44();
      if (v182)
      {
        goto LABEL_50;
      }

      LOBYTE(v435) = 0;
      v183 = v368;
      v428 = sub_1E5A2BF94();
      v251 = v250;
      LOBYTE(v430) = 1;
      sub_1E58C7674();
      sub_1E5A2BFE4();
      v252 = (v422 + 8);
      (*(v104 + 8))(v181, v183);
      (*v252)(v100, v150);
      swift_unknownObjectRelease();
      v278 = v319;
      *v319 = v428;
      *(v278 + 8) = v251;
      v279 = v436;
      *(v278 + 16) = v435;
      *(v278 + 32) = v279;
      v280 = v438;
      *(v278 + 48) = v437;
      *(v278 + 64) = v280;
      swift_storeEnumTagMultiPayload();
      v111 = v315;
      sub_1E58C7568(v278, v315);
      v237 = v427;
      goto LABEL_85;
    case 22:
      LOBYTE(v435) = 22;
      sub_1E58C2D34();
      v109 = v426;
      v204 = v428;
      sub_1E5A2BF44();
      if (v204)
      {
        goto LABEL_72;
      }

      LOBYTE(v435) = 0;
      sub_1E58C7514();
      sub_1E5A2BF84();
      v264 = v454;
      LOBYTE(v435) = 1;
      v424 = sub_1E5A2BF64();
      v286 = v285;
      LOBYTE(v435) = 2;
      v298 = sub_1E5A2BF74();
      v300 = v299;
      LOBYTE(v435) = 3;
      sub_1E58C771C();
      sub_1E5A2BF84();
      v420 = v444;
      v421 = v445;
      v301 = v447;
      v423 = v446;
      LOBYTE(v435) = 4;
      sub_1E58C7770();
      sub_1E5A2BF84();
      v414 = v440;
      v415 = v441;
      v416 = v442;
      v419 = v443;
      LOBYTE(v430) = 5;
      sub_1E58C77C4();
      sub_1E5A2BF84();
      v428 = 0;
      v411 = v435;
      v412 = v436;
      v413 = v437;
      v453 = 6;
      sub_1E58C7818();
      v302 = v428;
      sub_1E5A2BF84();
      if (v302)
      {

        sub_1E58C2D88(v420, v421, v423, v301);
        sub_1E58C2D88(v414, v415, v416, v419);
        sub_1E58C2DCC(v411, *(&v411 + 1), v412, *(&v412 + 1), v413, *(&v413 + 1));
        (*(v388 + 8))(v417, v389);
        (*(v422 + 8))(v100, v426);
        goto LABEL_55;
      }

      (*(v388 + 8))(v417, v389);
      (*(v422 + 8))(v100, v426);
      swift_unknownObjectRelease();
      v303 = v431;
      v228 = v316;
      *(v316 + 152) = v430;
      v304 = v432;
      v452 = v300 & 1;
      *v228 = v264;
      *(v228 + 1) = v424;
      *(v228 + 2) = v286;
      *(v228 + 3) = v298;
      v228[32] = v300 & 1;
      v305 = v421;
      *(v228 + 5) = v420;
      *(v228 + 6) = v305;
      *(v228 + 7) = v423;
      *(v228 + 8) = v301;
      v306 = v415;
      *(v228 + 9) = v414;
      *(v228 + 10) = v306;
      v307 = v419;
      *(v228 + 11) = v416;
      *(v228 + 12) = v307;
      v308 = *(&v411 + 1);
      *(v228 + 13) = v411;
      *(v228 + 14) = v308;
      v309 = *(&v412 + 1);
      *(v228 + 15) = v412;
      *(v228 + 16) = v309;
      v310 = *(&v413 + 1);
      *(v228 + 17) = v413;
      *(v228 + 18) = v310;
      *(v228 + 168) = v303;
      *(v228 + 46) = v304;
LABEL_82:
      swift_storeEnumTagMultiPayload();
      v270 = v228;
      goto LABEL_83;
    case 23:
      LOBYTE(v435) = 23;
      sub_1E58C2C8C();
      v208 = v412;
      v109 = v426;
      v209 = v428;
      sub_1E5A2BF44();
      if (v209)
      {
        goto LABEL_72;
      }

      sub_1E58C76C8();
      v210 = v370;
      sub_1E5A2BFE4();
      v211 = v422;
      (*(v369 + 8))(v208, v210);
      (*(v211 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v228 = v327;
      *v327 = v435;
      goto LABEL_82;
    case 24:
      LOBYTE(v435) = 24;
      sub_1E58C2BE4();
      v149 = v413;
      v150 = v426;
      v151 = v428;
      sub_1E5A2BF44();
      if (!v151)
      {
        LOBYTE(v435) = 0;
        v152 = v374;
        v153 = sub_1E5A2BF94();
        v239 = v238;
        v424 = v153;
        LOBYTE(v430) = 1;
        sub_1E58C7674();
        sub_1E5A2BFE4();
        v240 = (v422 + 8);
        v428 = 0;
        (*(v371 + 8))(v149, v152);
        (*v240)(v100, v150);
        swift_unknownObjectRelease();
        v273 = v321;
        *v321 = v424;
        v273[1] = v239;
        v274 = v436;
        *(v273 + 1) = v435;
        *(v273 + 2) = v274;
        v275 = v438;
        *(v273 + 3) = v437;
        *(v273 + 4) = v275;
        goto LABEL_80;
      }

LABEL_50:
      (*(v422 + 8))(v100, v150);
      goto LABEL_55;
    case 25:
      LOBYTE(v435) = 25;
      sub_1E58C2B3C();
      v145 = *(&v412 + 1);
      v109 = v426;
      v146 = v428;
      sub_1E5A2BF44();
      if (v146)
      {
        goto LABEL_72;
      }

      sub_1E58C7620();
      v147 = v373;
      sub_1E5A2BFE4();
      v148 = v422;
      (*(v372 + 8))(v145, v147);
      (*(v148 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v228 = v328;
      *v328 = v435;
      goto LABEL_82;
    case 26:
      LOBYTE(v435) = 26;
      sub_1E58C2A94();
      v216 = v414;
      v109 = v426;
      v217 = v428;
      sub_1E5A2BF44();
      if (v217)
      {
        goto LABEL_72;
      }

      sub_1E58C75CC();
      v226 = v378;
      sub_1E5A2BFE4();
      v227 = v422;
      (*(v376 + 8))(v216, v226);
      (*(v227 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v271 = v436;
      v228 = v330;
      *v330 = v435;
      *(v228 + 2) = v271;
      goto LABEL_82;
    case 27:
      LOBYTE(v435) = 27;
      sub_1E58C2A40();
      v118 = *(&v413 + 1);
      v109 = v426;
      v119 = v428;
      sub_1E5A2BF44();
      if (v119)
      {
        goto LABEL_72;
      }

      (*(v375 + 8))(v118, v377);
      (*(v422 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v111 = v315;
      goto LABEL_68;
    case 28:
      LOBYTE(v435) = 28;
      sub_1E58C29EC();
      v212 = v415;
      v109 = v426;
      v213 = v428;
      sub_1E5A2BF44();
      if (v213)
      {
LABEL_72:
        (*(v422 + 8))(v100, v109);
        goto LABEL_8;
      }

      (*(v379 + 8))(v212, v380);
      (*(v422 + 8))(v100, v109);
      swift_unknownObjectRelease();
      v111 = v315;
LABEL_68:
      swift_storeEnumTagMultiPayload();
      goto LABEL_84;
    case 29:
      LOBYTE(v435) = 29;
      sub_1E58C2998();
      v214 = v416;
      v161 = v426;
      v215 = v428;
      sub_1E5A2BF44();
      if (v215)
      {
LABEL_70:
        (*(v422 + 8))(v100, v161);
        goto LABEL_8;
      }

      v223 = v382;
      v224 = sub_1E5A2BFC4();
      v225 = v422;
      v269 = v224;
      (*(v381 + 8))(v214, v223);
      (*(v225 + 8))(v100, v161);
      swift_unknownObjectRelease();
      v260 = v329;
      *v329 = v269;
LABEL_79:
      swift_storeEnumTagMultiPayload();
      v270 = v260;
LABEL_83:
      v111 = v315;
      sub_1E58C7568(v270, v315);
LABEL_84:
      v237 = v427;
      goto LABEL_85;
    case 30:
      LOBYTE(v435) = 30;
      sub_1E58C28F0();
      v202 = v426;
      v203 = v428;
      sub_1E5A2BF44();
      if (v203)
      {
        (*(v422 + 8))(v100, v202);
LABEL_55:
        swift_unknownObjectRelease();
        v116 = v427;
        return __swift_destroy_boxed_opaque_existential_1(v116);
      }

      sub_1E58C7514();
      v221 = v367;
      sub_1E5A2BFE4();
      v222 = v422;
      (*(v383 + 8))(v99, v221);
      (*(v222 + 8))(v100, v202);
      swift_unknownObjectRelease();
      v273 = v331;
      *v331 = v435;
LABEL_80:
      swift_storeEnumTagMultiPayload();
      v296 = v273;
LABEL_81:
      v111 = v315;
      sub_1E58C7568(v296, v315);
      v237 = v427;
LABEL_85:
      sub_1E58C7568(v111, v418);
      result = __swift_destroy_boxed_opaque_existential_1(v237);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

unint64_t sub_1E58C7514()
{
  result = qword_1ECFFBAC0;
  if (!qword_1ECFFBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAC0);
  }

  return result;
}

uint64_t sub_1E58C7568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanCreationAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E58C75CC()
{
  result = qword_1ECFFBAC8;
  if (!qword_1ECFFBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAC8);
  }

  return result;
}

unint64_t sub_1E58C7620()
{
  result = qword_1ECFFBAD0;
  if (!qword_1ECFFBAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAD0);
  }

  return result;
}

unint64_t sub_1E58C7674()
{
  result = qword_1ECFFBAD8;
  if (!qword_1ECFFBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAD8);
  }

  return result;
}

unint64_t sub_1E58C76C8()
{
  result = qword_1ECFFBAE0;
  if (!qword_1ECFFBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAE0);
  }

  return result;
}

unint64_t sub_1E58C771C()
{
  result = qword_1ECFFBAE8;
  if (!qword_1ECFFBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAE8);
  }

  return result;
}

unint64_t sub_1E58C7770()
{
  result = qword_1ECFFBAF0;
  if (!qword_1ECFFBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAF0);
  }

  return result;
}

unint64_t sub_1E58C77C4()
{
  result = qword_1ECFFBAF8;
  if (!qword_1ECFFBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAF8);
  }

  return result;
}

unint64_t sub_1E58C7818()
{
  result = qword_1ECFFBB00;
  if (!qword_1ECFFBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB00);
  }

  return result;
}

unint64_t sub_1E58C786C()
{
  result = qword_1ECFFBB08;
  if (!qword_1ECFFBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB08);
  }

  return result;
}

unint64_t sub_1E58C78C0()
{
  result = qword_1ECFFBB10;
  if (!qword_1ECFFBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB10);
  }

  return result;
}

unint64_t sub_1E58C7914()
{
  result = qword_1ECFFBB18;
  if (!qword_1ECFFBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB18);
  }

  return result;
}

unint64_t sub_1E58C7968()
{
  result = qword_1ECFFBB20;
  if (!qword_1ECFFBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB20);
  }

  return result;
}

uint64_t sub_1E58C79BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutPlanScheduledItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E58C7A00()
{
  result = qword_1ECFFBB30;
  if (!qword_1ECFFBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB30);
  }

  return result;
}

unint64_t sub_1E58C7A54()
{
  result = qword_1ECFFBB38;
  if (!qword_1ECFFBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB38);
  }

  return result;
}

unint64_t sub_1E58C7AA8()
{
  result = qword_1ECFFBB40;
  if (!qword_1ECFFBB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB970, &unk_1E5A2D6B0);
    sub_1E58C7B54(&qword_1ECFFBB48, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB40);
  }

  return result;
}

uint64_t sub_1E58C7B54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB988, &qword_1E5A3A470);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E58C7C40(uint64_t a1)
{
  sub_1E58C7E08();
  if (v1 <= 0x3F)
  {
    sub_1E58C7E38(319);
    if (v2 <= 0x3F)
    {
      sub_1E58C7EC8();
      if (v3 <= 0x3F)
      {
        sub_1E58C8020(319, &qword_1ECFFBB88, &type metadata for WorkoutPlanMusicGenre, &type metadata for WorkoutPlanModality, " modality ");
        if (v4 <= 0x3F)
        {
          sub_1E58C7EF8(319);
          if (v5 <= 0x3F)
          {
            sub_1E58C7F70(319);
            if (v6 <= 0x3F)
            {
              sub_1E58C8020(319, &qword_1ECFFBBB8, &type metadata for WorkoutPlanTrainer, &type metadata for WorkoutPlanModality, " modality ");
              if (v7 <= 0x3F)
              {
                sub_1E58C8020(319, &qword_1ECFFBBC0, MEMORY[0x1E69E6158], &type metadata for WorkoutPlanFilterResult, "modalityIdentifier result ");
                if (v8 <= 0x3F)
                {
                  sub_1E58C8078(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E58C7E08()
{
  result = qword_1ECFFBB60;
  if (!qword_1ECFFBB60)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1ECFFBB60);
  }

  return result;
}

void sub_1E58C7E38(uint64_t a1)
{
  if (!qword_1ECFFBB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBB70, &qword_1E5A2D840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBB78, &qword_1E5A2D848);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECFFBB68);
    }
  }
}

uint64_t sub_1E58C7EC8()
{
  result = qword_1ECFFBB80;
  if (!qword_1ECFFBB80)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ECFFBB80);
  }

  return result;
}

void sub_1E58C7EF8(uint64_t a1)
{
  if (!qword_1ECFFBB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBB98, &qword_1E5A2D850);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECFFBB90);
    }
  }
}

void sub_1E58C7F70(uint64_t a1)
{
  if (!qword_1ECFFBBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB790, &qword_1E5A2D620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBA8, &qword_1E5A2D858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBB0, &qword_1E5A2D860);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECFFBBA0);
    }
  }
}

void sub_1E58C8020(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1E58C8078(uint64_t a1)
{
  if (!qword_1ECFFBBC8)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBA8, &qword_1E5A2D858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBB70, &qword_1E5A2D840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBB0, &qword_1E5A2D860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBD0, &qword_1E5A2D868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBD8, &qword_1E5A2D870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBE0, &qword_1E5A2D878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBE8, &qword_1E5A2D880);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ECFFBBC8);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutPlanCreationAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanCreationAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanWeekday(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanWeekday(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlanCompletionState.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PlanCompletionState.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1E58C87B0()
{
  result = qword_1ECFFBBF0;
  if (!qword_1ECFFBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBBF0);
  }

  return result;
}

unint64_t sub_1E58C8808()
{
  result = qword_1ECFFBBF8;
  if (!qword_1ECFFBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBBF8);
  }

  return result;
}

unint64_t sub_1E58C8860()
{
  result = qword_1ECFFBC00;
  if (!qword_1ECFFBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC00);
  }

  return result;
}

unint64_t sub_1E58C88B8()
{
  result = qword_1ECFFBC08;
  if (!qword_1ECFFBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC08);
  }

  return result;
}

unint64_t sub_1E58C8910()
{
  result = qword_1ECFFBC10;
  if (!qword_1ECFFBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC10);
  }

  return result;
}

unint64_t sub_1E58C8968()
{
  result = qword_1ECFFBC18;
  if (!qword_1ECFFBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC18);
  }

  return result;
}

unint64_t sub_1E58C89C0()
{
  result = qword_1ECFFBC20;
  if (!qword_1ECFFBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC20);
  }

  return result;
}

unint64_t sub_1E58C8A18()
{
  result = qword_1ECFFBC28;
  if (!qword_1ECFFBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC28);
  }

  return result;
}

unint64_t sub_1E58C8A70()
{
  result = qword_1ECFFBC30;
  if (!qword_1ECFFBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC30);
  }

  return result;
}

unint64_t sub_1E58C8AC8()
{
  result = qword_1ECFFBC38;
  if (!qword_1ECFFBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC38);
  }

  return result;
}

unint64_t sub_1E58C8B20()
{
  result = qword_1ECFFBC40;
  if (!qword_1ECFFBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC40);
  }

  return result;
}

unint64_t sub_1E58C8B78()
{
  result = qword_1ECFFBC48;
  if (!qword_1ECFFBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC48);
  }

  return result;
}

unint64_t sub_1E58C8BD0()
{
  result = qword_1ECFFBC50;
  if (!qword_1ECFFBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC50);
  }

  return result;
}

unint64_t sub_1E58C8C28()
{
  result = qword_1ECFFBC58;
  if (!qword_1ECFFBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC58);
  }

  return result;
}

unint64_t sub_1E58C8C80()
{
  result = qword_1ECFFBC60;
  if (!qword_1ECFFBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC60);
  }

  return result;
}

unint64_t sub_1E58C8CD8()
{
  result = qword_1ECFFBC68;
  if (!qword_1ECFFBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC68);
  }

  return result;
}

unint64_t sub_1E58C8D30()
{
  result = qword_1ECFFBC70;
  if (!qword_1ECFFBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC70);
  }

  return result;
}

unint64_t sub_1E58C8D88()
{
  result = qword_1ECFFBC78;
  if (!qword_1ECFFBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC78);
  }

  return result;
}

unint64_t sub_1E58C8DE0()
{
  result = qword_1ECFFBC80;
  if (!qword_1ECFFBC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC80);
  }

  return result;
}

unint64_t sub_1E58C8E38()
{
  result = qword_1ECFFBC88;
  if (!qword_1ECFFBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC88);
  }

  return result;
}

unint64_t sub_1E58C8E90()
{
  result = qword_1ECFFBC90;
  if (!qword_1ECFFBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC90);
  }

  return result;
}

unint64_t sub_1E58C8EE8()
{
  result = qword_1ECFFBC98;
  if (!qword_1ECFFBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC98);
  }

  return result;
}

unint64_t sub_1E58C8F40()
{
  result = qword_1ECFFBCA0;
  if (!qword_1ECFFBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCA0);
  }

  return result;
}

unint64_t sub_1E58C8F98()
{
  result = qword_1ECFFBCA8;
  if (!qword_1ECFFBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCA8);
  }

  return result;
}

unint64_t sub_1E58C8FF0()
{
  result = qword_1ECFFBCB0;
  if (!qword_1ECFFBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCB0);
  }

  return result;
}

unint64_t sub_1E58C9048()
{
  result = qword_1ECFFBCB8;
  if (!qword_1ECFFBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCB8);
  }

  return result;
}

unint64_t sub_1E58C90A0()
{
  result = qword_1ECFFBCC0;
  if (!qword_1ECFFBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCC0);
  }

  return result;
}

unint64_t sub_1E58C90F8()
{
  result = qword_1ECFFBCC8;
  if (!qword_1ECFFBCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCC8);
  }

  return result;
}

unint64_t sub_1E58C9150()
{
  result = qword_1ECFFBCD0;
  if (!qword_1ECFFBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCD0);
  }

  return result;
}

unint64_t sub_1E58C91A8()
{
  result = qword_1ECFFBCD8;
  if (!qword_1ECFFBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCD8);
  }

  return result;
}

unint64_t sub_1E58C9200()
{
  result = qword_1ECFFBCE0;
  if (!qword_1ECFFBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCE0);
  }

  return result;
}

unint64_t sub_1E58C9258()
{
  result = qword_1ECFFBCE8;
  if (!qword_1ECFFBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCE8);
  }

  return result;
}

unint64_t sub_1E58C92B0()
{
  result = qword_1ECFFBCF0;
  if (!qword_1ECFFBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCF0);
  }

  return result;
}

unint64_t sub_1E58C9308()
{
  result = qword_1ECFFBCF8;
  if (!qword_1ECFFBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBCF8);
  }

  return result;
}

unint64_t sub_1E58C9360()
{
  result = qword_1ECFFBD00;
  if (!qword_1ECFFBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD00);
  }

  return result;
}

unint64_t sub_1E58C93B8()
{
  result = qword_1ECFFBD08;
  if (!qword_1ECFFBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD08);
  }

  return result;
}

unint64_t sub_1E58C9410()
{
  result = qword_1ECFFBD10;
  if (!qword_1ECFFBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD10);
  }

  return result;
}

unint64_t sub_1E58C9468()
{
  result = qword_1ECFFBD18;
  if (!qword_1ECFFBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD18);
  }

  return result;
}

unint64_t sub_1E58C94C0()
{
  result = qword_1ECFFBD20;
  if (!qword_1ECFFBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD20);
  }

  return result;
}

unint64_t sub_1E58C9518()
{
  result = qword_1ECFFBD28;
  if (!qword_1ECFFBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD28);
  }

  return result;
}

unint64_t sub_1E58C9570()
{
  result = qword_1ECFFBD30;
  if (!qword_1ECFFBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD30);
  }

  return result;
}

unint64_t sub_1E58C95C8()
{
  result = qword_1ECFFBD38;
  if (!qword_1ECFFBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD38);
  }

  return result;
}

unint64_t sub_1E58C9620()
{
  result = qword_1ECFFBD40;
  if (!qword_1ECFFBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD40);
  }

  return result;
}

unint64_t sub_1E58C9678()
{
  result = qword_1ECFFBD48;
  if (!qword_1ECFFBD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD48);
  }

  return result;
}

unint64_t sub_1E58C96D0()
{
  result = qword_1ECFFBD50;
  if (!qword_1ECFFBD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD50);
  }

  return result;
}

unint64_t sub_1E58C9728()
{
  result = qword_1ECFFBD58;
  if (!qword_1ECFFBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD58);
  }

  return result;
}

unint64_t sub_1E58C9780()
{
  result = qword_1ECFFBD60;
  if (!qword_1ECFFBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD60);
  }

  return result;
}

unint64_t sub_1E58C97D8()
{
  result = qword_1ECFFBD68;
  if (!qword_1ECFFBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD68);
  }

  return result;
}

unint64_t sub_1E58C9830()
{
  result = qword_1ECFFBD70;
  if (!qword_1ECFFBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD70);
  }

  return result;
}

unint64_t sub_1E58C9888()
{
  result = qword_1ECFFBD78;
  if (!qword_1ECFFBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD78);
  }

  return result;
}

unint64_t sub_1E58C98E0()
{
  result = qword_1ECFFBD80;
  if (!qword_1ECFFBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD80);
  }

  return result;
}

unint64_t sub_1E58C9938()
{
  result = qword_1ECFFBD88;
  if (!qword_1ECFFBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD88);
  }

  return result;
}

unint64_t sub_1E58C9990()
{
  result = qword_1ECFFBD90;
  if (!qword_1ECFFBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD90);
  }

  return result;
}

unint64_t sub_1E58C99E8()
{
  result = qword_1ECFFBD98;
  if (!qword_1ECFFBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBD98);
  }

  return result;
}

unint64_t sub_1E58C9A40()
{
  result = qword_1ECFFBDA0;
  if (!qword_1ECFFBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBDA0);
  }

  return result;
}

unint64_t sub_1E58C9A98()
{
  result = qword_1ECFFBDA8;
  if (!qword_1ECFFBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBDA8);
  }

  return result;
}

unint64_t sub_1E58C9AF0()
{
  result = qword_1ECFFBDB0;
  if (!qword_1ECFFBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBDB0);
  }

  return result;
}

unint64_t sub_1E58C9B48()
{
  result = qword_1ECFFBDB8;
  if (!qword_1ECFFBDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBDB8);
  }

  return result;
}