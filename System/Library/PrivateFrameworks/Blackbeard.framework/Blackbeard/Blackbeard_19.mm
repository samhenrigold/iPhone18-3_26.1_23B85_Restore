uint64_t sub_1E609097C(uint64_t a1)
{
  v41 = sub_1E65D8368();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E65E2C78();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v30 = v1;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1E601C438(0, v8, 0);
    v44 = a1 + 56;
    v45 = v46;
    result = sub_1E65E6748();
    v10 = result;
    v11 = 0;
    v37 = v5;
    v38 = v3;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v33 = a1;
    v34 = v5 + 32;
    v31 = a1 + 64;
    v32 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v44 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 36);
      v42 = v11;
      v43 = v15;
      v16 = v38;
      v17 = v40;
      v18 = v41;
      (*(v38 + 16))(v40, *(a1 + 48) + *(v38 + 72) * v10, v41);
      sub_1E65D8358();
      sub_1E65D8328();
      sub_1E65D8338();
      sub_1E65D8348();
      sub_1E65E2C58();
      (*(v16 + 8))(v17, v18);
      v19 = v45;
      v46 = v45;
      v21 = *(v45 + 16);
      v20 = *(v45 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E601C438((v20 > 1), v21 + 1, 1);
        v19 = v46;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v45 = v19;
      result = (*(v37 + 32))(v19 + v22 + *(v37 + 72) * v21, v7, v39);
      a1 = v33;
      v12 = 1 << *(v33 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v23 = *(v44 + 8 * v14);
      if ((v23 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v43 != *(v33 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v10 & 0x3F));
      if (v24)
      {
        v12 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v32;
      }

      else
      {
        v25 = v14 << 6;
        v26 = v14 + 1;
        v13 = v32;
        v27 = (v31 + 8 * v14);
        while (v26 < (v12 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1E5F87098(v10, v43, 0);
            v12 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v10, v43, 0);
      }

LABEL_4:
      v11 = v42 + 1;
      v10 = v12;
      if (v42 + 1 == v13)
      {
        return v45;
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
  }

  return result;
}

uint64_t sub_1E6090D6C(uint64_t a1)
{
  v46 = sub_1E65DAF28();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65E2D38();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v41 = v7;
    v33[1] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601C3F4(0, v8, 0);
    v49 = v50;
    v10 = a1 + 56;
    result = sub_1E65E6748();
    v11 = v3;
    v12 = result;
    v13 = 0;
    v42 = v5;
    v43 = v11;
    v39 = v11 + 8;
    v40 = v11 + 16;
    v37 = a1;
    v38 = v5 + 32;
    v34 = a1 + 64;
    v35 = v8;
    v36 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v47 = v13;
      v48 = v16;
      v17 = v43;
      v18 = *(a1 + 48) + *(v43 + 72) * v12;
      v19 = v45;
      v20 = v46;
      (*(v43 + 16))(v45, v18, v46);
      sub_1E65DAF08();
      sub_1E65DAF18();
      v21 = v41;
      sub_1E65E2D28();
      (*(v17 + 8))(v19, v20);
      v22 = v49;
      v50 = v49;
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601C3F4((v23 > 1), v24 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v49 = v22;
      result = (*(v42 + 32))(v22 + v25 + *(v42 + 72) * v24, v21, v44);
      a1 = v37;
      v14 = 1 << *(v37 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v36;
      v26 = *(v36 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v48 != *(v37 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v34 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5F87098(v12, v48, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v12, v48, 0);
      }

LABEL_4:
      v13 = v47 + 1;
      v12 = v14;
      if (v47 + 1 == v35)
      {
        return v49;
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
  }

  return result;
}

uint64_t sub_1E6091150(uint64_t a1)
{
  v42 = sub_1E65D91F8();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v35 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E65E2A88();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v25 = v1;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1E601C3B0(0, v8, 0);
  v9 = v43;
  v41 = a1 + 56;
  result = sub_1E65E6748();
  v11 = result;
  v12 = 0;
  v31 = v3 + 8;
  v32 = v3 + 16;
  v29 = v7;
  v30 = v5 + 32;
  v26 = a1 + 64;
  v27 = v8;
  v33 = v5;
  v28 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    if ((*(v41 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v38 = 1 << v11;
    v39 = v11 >> 6;
    v14 = *(a1 + 36);
    v36 = v12;
    v37 = v14;
    v15 = v35;
    (*(v3 + 16))(v35, *(a1 + 48) + *(v3 + 72) * v11, v42);
    v40 = sub_1E65D91A8();
    sub_1E65D91C8();
    sub_1E65D91B8();
    sub_1E65D91D8();
    sub_1E65D91E8();
    sub_1E65E2A78();
    (*(v3 + 8))(v15, v42);
    v43 = v9;
    v17 = *(v9 + 16);
    v16 = *(v9 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1E601C3B0((v16 > 1), v17 + 1, 1);
      v9 = v43;
    }

    *(v9 + 16) = v17 + 1;
    result = (*(v33 + 32))(v9 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v17, v29, v34);
    a1 = v28;
    v13 = 1 << *(v28 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v18 = *(v41 + 8 * v39);
    if ((v18 & v38) == 0)
    {
      goto LABEL_23;
    }

    if (v37 != *(v28 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v11 & 0x3F));
    if (v19)
    {
      v13 = __clz(__rbit64(v19)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v39 << 6;
      v21 = v39 + 1;
      v22 = (v26 + 8 * v39);
      while (v21 < (v13 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1E5F87098(v11, v37, 0);
          v13 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v11, v37, 0);
    }

LABEL_4:
    v12 = v36 + 1;
    v11 = v13;
    if (v36 + 1 == v27)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6091554(uint64_t a1)
{
  v46 = sub_1E65D7A68();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65E2698();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v41 = v7;
    v33[1] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601C36C(0, v8, 0);
    v49 = v50;
    v10 = a1 + 56;
    result = sub_1E65E6748();
    v11 = v3;
    v12 = result;
    v13 = 0;
    v42 = v5;
    v43 = v11;
    v39 = v11 + 8;
    v40 = v11 + 16;
    v37 = a1;
    v38 = v5 + 32;
    v34 = a1 + 64;
    v35 = v8;
    v36 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v47 = v13;
      v48 = v16;
      v17 = v43;
      v18 = *(a1 + 48) + *(v43 + 72) * v12;
      v19 = v45;
      v20 = v46;
      (*(v43 + 16))(v45, v18, v46);
      sub_1E65D7A48();
      sub_1E65D7A58();
      v21 = v41;
      sub_1E65E2678();
      (*(v17 + 8))(v19, v20);
      v22 = v49;
      v50 = v49;
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601C36C((v23 > 1), v24 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v49 = v22;
      result = (*(v42 + 32))(v22 + v25 + *(v42 + 72) * v24, v21, v44);
      a1 = v37;
      v14 = 1 << *(v37 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v36;
      v26 = *(v36 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v48 != *(v37 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v34 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5F87098(v12, v48, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v12, v48, 0);
      }

LABEL_4:
      v13 = v47 + 1;
      v12 = v14;
      if (v47 + 1 == v35)
      {
        return v49;
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
  }

  return result;
}

uint64_t sub_1E6091938(uint64_t a1)
{
  v38 = sub_1E65D7B18();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65E26B8();
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v27 = v1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1E601C328(0, v8, 0);
  v9 = v45;
  v44 = a1 + 56;
  result = sub_1E65E6748();
  v11 = 0;
  v33 = v3 + 8;
  v34 = v3 + 16;
  v31 = a1;
  v32 = v5 + 32;
  v28 = a1 + 64;
  v29 = v8;
  v35 = v5;
  v30 = v7;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v44 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v41 = 1 << result;
    v42 = result >> 6;
    v13 = *(a1 + 36);
    v39 = v11;
    v40 = v13;
    v14 = *(a1 + 48) + *(v3 + 72) * result;
    v15 = *(v3 + 16);
    v16 = v37;
    v17 = v38;
    v43 = result;
    v15(v37, v14, v38);
    sub_1E65D7AE8();
    sub_1E65D7AF8();
    sub_1E65D7B08();
    sub_1E65E26A8();
    (*(v3 + 8))(v16, v17);
    v45 = v9;
    v19 = *(v9 + 16);
    v18 = *(v9 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1E601C328((v18 > 1), v19 + 1, 1);
      v9 = v45;
    }

    *(v9 + 16) = v19 + 1;
    (*(v35 + 32))(v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v19, v30, v36);
    a1 = v31;
    v12 = 1 << *(v31 + 32);
    result = v43;
    if (v43 >= v12)
    {
      goto LABEL_22;
    }

    v20 = *(v44 + 8 * v42);
    if ((v20 & v41) == 0)
    {
      goto LABEL_23;
    }

    if (v40 != *(v31 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v43 & 0x3F));
    if (v21)
    {
      v12 = __clz(__rbit64(v21)) | v43 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v42 << 6;
      v23 = v42 + 1;
      v24 = (v28 + 8 * v42);
      while (v23 < (v12 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          sub_1E5F87098(v43, v40, 0);
          v12 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(v43, v40, 0);
    }

LABEL_4:
    v11 = v39 + 1;
    result = v12;
    if (v39 + 1 == v29)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6091D24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65E2BC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v70 = sub_1E65D8B68();
  v11 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E65E2BF8();
  v13 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v49 = v10;
    v57 = v15;
    v74 = MEMORY[0x1E69E7CC0];
    v52 = v16;
    sub_1E601C2E4(0, v16, 0);
    v71 = v74;
    v68 = a1 + 56;
    result = sub_1E65E6748();
    v18 = 0;
    v56 = v11 + 16;
    v51 = v5;
    v19 = v13;
    v20 = (v5 + 8);
    v58 = v19;
    v54 = v19 + 32;
    v55 = (v11 + 8);
    v48 = a1 + 64;
    v59 = a1;
    v53 = v11;
    v50 = v5 + 16;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v68 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_27;
      }

      v65 = 1 << result;
      v66 = result >> 6;
      v62 = v18;
      v64 = *(a1 + 36);
      v22 = *(a1 + 48);
      v23 = *(v11 + 72);
      v67 = result;
      (*(v11 + 16))(v69, v22 + v23 * result, v70);
      v24 = sub_1E65D8B58();
      v25 = sub_1E60926CC(v24);
      v63 = v2;

      v26 = *(v25 + 16);
      v27 = sub_1E6093088();
      v73 = MEMORY[0x1E694DC60](v26, v4, v27);
      if (v26)
      {
        v28 = *(v51 + 80);
        v61 = v25;
        v29 = v25 + ((v28 + 32) & ~v28);
        v72 = *(v51 + 72);
        v30 = *(v51 + 16);
        v31 = v20;
        v32 = v49;
        do
        {
          v30(v8, v29, v4);
          sub_1E60F4478(v32, v8);
          (*v31)(v32, v4);
          v29 += v72;
          --v26;
        }

        while (v26);

        v20 = v31;
      }

      else
      {
      }

      v33 = v69;
      sub_1E65D8B28();
      v72 = v34;
      sub_1E65D8B38();
      sub_1E65D8B48();
      v35 = v57;
      sub_1E65E2BE8();
      (*v55)(v33, v70);
      v36 = v71;
      v74 = v71;
      v38 = *(v71 + 16);
      v37 = *(v71 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1E601C2E4((v37 > 1), v38 + 1, 1);
        v36 = v74;
      }

      *(v36 + 16) = v38 + 1;
      v39 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v71 = v36;
      (*(v58 + 32))(v36 + v39 + *(v58 + 72) * v38, v35, v60);
      a1 = v59;
      v21 = 1 << *(v59 + 32);
      result = v67;
      if (v67 >= v21)
      {
        goto LABEL_28;
      }

      v40 = *(v68 + 8 * v66);
      if ((v40 & v65) == 0)
      {
        goto LABEL_29;
      }

      if (v64 != *(v59 + 36))
      {
        goto LABEL_30;
      }

      v41 = v40 & (-2 << (v67 & 0x3F));
      if (v41)
      {
        v21 = __clz(__rbit64(v41)) | v67 & 0x7FFFFFFFFFFFFFC0;
        v2 = v63;
      }

      else
      {
        v42 = v66 << 6;
        v43 = v66 + 1;
        v44 = (v48 + 8 * v66);
        v2 = v63;
        while (v43 < (v21 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            sub_1E5F87098(v67, v64, 0);
            v21 = __clz(__rbit64(v45)) + v42;
            goto LABEL_4;
          }
        }

        sub_1E5F87098(v67, v64, 0);
      }

LABEL_4:
      v18 = v62 + 1;
      result = v21;
      v11 = v53;
      if (v62 + 1 == v52)
      {
        return v71;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E60922E4(uint64_t a1)
{
  v38 = sub_1E65D7F08();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65E2B48();
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v27 = v1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1E601C4C0(0, v8, 0);
  v9 = v45;
  v44 = a1 + 56;
  result = sub_1E65E6748();
  v11 = 0;
  v33 = v3 + 8;
  v34 = v3 + 16;
  v31 = a1;
  v32 = v5 + 32;
  v28 = a1 + 64;
  v29 = v8;
  v35 = v5;
  v30 = v7;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v44 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v41 = 1 << result;
    v42 = result >> 6;
    v13 = *(a1 + 36);
    v39 = v11;
    v40 = v13;
    v14 = *(a1 + 48) + *(v3 + 72) * result;
    v15 = *(v3 + 16);
    v16 = v37;
    v17 = v38;
    v43 = result;
    v15(v37, v14, v38);
    sub_1E65D7ED8();
    sub_1E65D7EE8();
    sub_1E65D7EF8();
    sub_1E65E2B38();
    (*(v3 + 8))(v16, v17);
    v45 = v9;
    v19 = *(v9 + 16);
    v18 = *(v9 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1E601C4C0((v18 > 1), v19 + 1, 1);
      v9 = v45;
    }

    *(v9 + 16) = v19 + 1;
    (*(v35 + 32))(v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v19, v30, v36);
    a1 = v31;
    v12 = 1 << *(v31 + 32);
    result = v43;
    if (v43 >= v12)
    {
      goto LABEL_22;
    }

    v20 = *(v44 + 8 * v42);
    if ((v20 & v41) == 0)
    {
      goto LABEL_23;
    }

    if (v40 != *(v31 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v43 & 0x3F));
    if (v21)
    {
      v12 = __clz(__rbit64(v21)) | v43 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v42 << 6;
      v23 = v42 + 1;
      v24 = (v28 + 8 * v42);
      while (v23 < (v12 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          sub_1E5F87098(v43, v40, 0);
          v12 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(v43, v40, 0);
    }

LABEL_4:
    v11 = v39 + 1;
    result = v12;
    if (v39 + 1 == v29)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E60926CC(uint64_t a1)
{
  v55 = sub_1E65D9A78();
  v3 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = v42 - v9;
  v10 = sub_1E65DAC98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1E65E2BC8();
  v13 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v57 = v10;
    v50 = v15;
    v42[1] = v1;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1E601C504(0, v16, 0);
    v61 = v62;
    v58 = a1 + 56;
    result = sub_1E65E6748();
    v18 = result;
    v19 = 0;
    v48 = (v3 + 8);
    v49 = v11 + 16;
    v51 = v13;
    v52 = a1;
    v46 = v13 + 32;
    v47 = (v11 + 8);
    v43 = a1 + 64;
    v44 = v16;
    v45 = v11;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
    {
      v22 = v18 >> 6;
      if ((*(v58 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_24;
      }

      v56 = *(a1 + 36);
      (*(v11 + 16))(v59, *(a1 + 48) + *(v11 + 72) * v18, v57);
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      v23 = v7;
      sub_1E65D74C8();

      v24 = v54;
      sub_1E65DAC48();
      v25 = sub_1E65D9A68();
      v27 = v26;
      v29 = v28;
      (*v48)(v24, v55);
      if ((v29 & 1) == 0)
      {
        sub_1E5F87058(v25, v27, 0);
      }

      v30 = v50;
      sub_1E65E2BB8();
      (*v47)(v59, v57);
      v31 = v61;
      v62 = v61;
      v33 = *(v61 + 16);
      v32 = *(v61 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1E601C504((v32 > 1), v33 + 1, 1);
        v31 = v62;
      }

      *(v31 + 16) = v33 + 1;
      v34 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v61 = v31;
      result = (*(v51 + 32))(v31 + v34 + *(v51 + 72) * v33, v30, v53);
      a1 = v52;
      v20 = 1 << *(v52 + 32);
      if (v18 >= v20)
      {
        goto LABEL_25;
      }

      v35 = *(v58 + 8 * v22);
      if ((v35 & (1 << v18)) == 0)
      {
        goto LABEL_26;
      }

      if (v56 != *(v52 + 36))
      {
        goto LABEL_27;
      }

      v36 = v35 & (-2 << (v18 & 0x3F));
      if (v36)
      {
        v20 = __clz(__rbit64(v36)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v7 = v23;
        v21 = v44;
      }

      else
      {
        v37 = v22 << 6;
        v38 = v22 + 1;
        v39 = (v43 + 8 * v22);
        v7 = v23;
        v21 = v44;
        while (v38 < (v20 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_1E5F87098(v18, v56, 0);
            v20 = __clz(__rbit64(v40)) + v37;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v18, v56, 0);
      }

LABEL_4:
      ++v19;
      v18 = v20;
      v11 = v45;
      if (v19 == v21)
      {
        return v61;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6092C40@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v49 = sub_1E65D9538();
  v2 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D93D8();
  v5 = sub_1E6090598(v4);

  v42[5] = sub_1E600B07C(v5);

  v6 = sub_1E65D9438();
  v7 = sub_1E609097C(v6);

  v42[4] = sub_1E600B218(v7);

  v8 = sub_1E65D9448();
  v9 = sub_1E6090D6C(v8);

  v42[3] = sub_1E600B3B4(v9);

  v10 = sub_1E65D9408();
  v11 = sub_1E6091150(v10);

  v42[2] = sub_1E600B550(v11);

  v12 = sub_1E65D93E8();
  v13 = sub_1E6091554(v12);

  v42[1] = sub_1E600B6EC(v13);

  v14 = sub_1E65D93F8();
  v15 = sub_1E6091938(v14);

  v42[0] = sub_1E600B888(v15);

  v43 = v1;
  v16 = sub_1E65D93A8();
  v17 = v16 + 56;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 56);
  v21 = (v18 + 63) >> 6;
  v48 = v2;
  v45 = v2 + 8;
  v46 = v2 + 16;
  v50 = v16;

  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  while (v20)
  {
    v51 = v24;
LABEL_11:
    v26 = v49;
    v27 = v47;
    v28 = v48;
    (*(v48 + 16))(v47, *(v50 + 48) + *(v48 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v49);
    v29 = sub_1E65D9518();
    v30 = sub_1E60922E4(v29);

    result = (*(v28 + 8))(v27, v26);
    v31 = *(v30 + 16);
    v24 = v51;
    v32 = v51[2];
    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v33 > v24[3] >> 1)
    {
      if (v32 <= v33)
      {
        v35 = v32 + v31;
      }

      else
      {
        v35 = v32;
      }

      v24 = sub_1E64F6668(isUniquelyReferenced_nonNull_native, v35, 1, v24);
    }

    v20 &= v20 - 1;
    if (*(v30 + 16))
    {
      v36 = (v24[3] >> 1) - v24[2];
      result = sub_1E65E2B48();
      if (v36 < v31)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v31)
      {
        v37 = v24[2];
        v38 = __OFADD__(v37, v31);
        v39 = v37 + v31;
        if (v38)
        {
          goto LABEL_28;
        }

        v24[2] = v39;
      }
    }

    else
    {

      if (v31)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v21)
    {

      sub_1E600BA24(v24);

      v40 = sub_1E65D9418();
      v41 = sub_1E6091D24(v40);

      sub_1E600BBC0(v41);

      return sub_1E65E2768();
    }

    v20 = *(v17 + 8 * v25);
    ++v23;
    if (v20)
    {
      v51 = v24;
      v23 = v25;
      goto LABEL_11;
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
  return result;
}

unint64_t sub_1E6093088()
{
  result = qword_1ED074260;
  if (!qword_1ED074260)
  {
    sub_1E65E2BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074260);
  }

  return result;
}

uint64_t sub_1E60930E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a8;
  v14 = a1;
  ShelfDisplayStyle.sectionDensityFactor(for:dynamicTypeSize:)(a1, a2, a8, &v38);
  v16 = v38;
  switch(v9)
  {
    case 2:
      *a9 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
      goto LABEL_4;
    case 3:
    case 30:
      v22 = sub_1E65DAE38();
      if (v22 == sub_1E65DAE38())
      {
        goto LABEL_41;
      }

      v23 = 1 << v14;
      if (((1 << v14) & 3) != 0)
      {
        goto LABEL_2;
      }

      goto LABEL_46;
    case 5:
      v32 = sub_1E65DAE38();
      if (v32 == sub_1E65DAE38() || v14 <= 1u)
      {
        *a9 = 3;
        goto LABEL_43;
      }

      *a9 = xmmword_1E65EFF20;
      *(a9 + 16) = 0x4034000000000000;
      goto LABEL_51;
    case 7:
      *a9 = v38;
      if (v14 <= 1u)
      {
        goto LABEL_23;
      }

      v24 = MEMORY[0x1E699D848];
      goto LABEL_19;
    case 9:
    case 20:
    case 33:
      v20 = sub_1E65DAE38();
      if (v20 == sub_1E65DAE38())
      {
        goto LABEL_26;
      }

      v21 = sub_1E65DAE38();
      if (v21 != sub_1E65DAE38())
      {
        goto LABEL_2;
      }

      *a9 = 5;
      goto LABEL_3;
    case 10:
      v30 = sub_1E65DAE38();
      if (v30 != sub_1E65DAE38())
      {
        goto LABEL_2;
      }

      *a9 = 0;
      goto LABEL_3;
    case 11:
    case 15:
    case 17:
    case 34:
    case 39:
      if (((1 << v14) & 3) != 0)
      {
        *a9 = v38;
LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
        goto LABEL_4;
      }

      if (((1 << v14) & 0xC) != 0)
      {
        v18 = 2;
        v19 = 0x4034000000000000;
      }

      else
      {
        v18 = 3;
        v19 = 0x4038000000000000;
      }

      *a9 = v18;
      *(a9 + 8) = v19;
      v24 = MEMORY[0x1E699D840];
LABEL_19:
      v25 = *v24;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
      (*(*(v26 - 8) + 104))(a9, v25, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
      goto LABEL_53;
    case 13:
      v27 = sub_1E65DAE38();
      if (v27 == sub_1E65DAE38())
      {
        *a9 = 2;
LABEL_43:
        *(a9 + 8) = 0;
        v35 = MEMORY[0x1E699D870];
        goto LABEL_52;
      }

      *a9 = 2;
      if (v14 <= 1u)
      {
        goto LABEL_43;
      }

      *(a9 + 8) = 2;
      *(a9 + 16) = 0x4034000000000000;
LABEL_51:
      v35 = MEMORY[0x1E699D878];
LABEL_52:
      v36 = *v35;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739C8, &qword_1E65EDD58);
      (*(*(v37 - 8) + 104))(a9, v36, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
LABEL_53:
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
LABEL_4:

      return swift_storeEnumTagMultiPayload();
    case 22:
      v29 = sub_1E65DAE38();
      if (v29 != sub_1E65DAE38())
      {
        goto LABEL_2;
      }

      *a9 = 3;
      goto LABEL_3;
    case 24:
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    case 31:
      v31 = sub_1E65DAE38();
      if (v31 != sub_1E65DAE38())
      {
        goto LABEL_2;
      }

      *a9 = 2;
      goto LABEL_3;
    case 35:
      v33 = sub_1E65DAE38();
      if (v33 == sub_1E65DAE38())
      {
LABEL_41:
        v34 = xmmword_1E65EFF10;
      }

      else
      {
        v23 = 1 << v14;
        if (((1 << v14) & 3) != 0)
        {
          v34 = xmmword_1E65EFF00;
        }

        else
        {
LABEL_46:
          if ((v23 & 0xC) != 0)
          {
            v34 = xmmword_1E65EFEF0;
          }

          else
          {
            v34 = xmmword_1E65EFEE0;
          }
        }
      }

      *a9 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
      goto LABEL_4;
    case 38:
      v28 = sub_1E65DAE38();
      if (v28 != sub_1E65DAE38())
      {
        goto LABEL_2;
      }

LABEL_26:
      *a9 = 1;
      goto LABEL_3;
    case 44:
      *a9 = 1;
      *(a9 + 8) = a4;
      *(a9 + 16) = a5;
      *(a9 + 24) = a6;
      *(a9 + 32) = a7;
      type metadata accessor for ViewDescriptor(0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
      swift_storeEnumTagMultiPayload();

    default:
LABEL_2:
      *a9 = v16;
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
      goto LABEL_4;
  }
}

uint64_t ShelfDisplayStyle.sectionDensityFactor(for:dynamicTypeSize:)@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v4 = 0;
  switch(a3)
  {
    case 2:
    case 4:
    case 10:
    case 14:
    case 16:
    case 36:
    case 38:
    case 44:
      goto LABEL_3;
    case 3:
    case 30:
      *a4 = 2 * (result > 3u);
      break;
    case 6:
      if (a2 >= 7u)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }

      *a4 = v5;
      break;
    case 7:
    case 35:
      *a4 = 2;
      break;
    case 9:
    case 20:
    case 33:
      *a4 = 5;
      break;
    case 22:
      if (a2 < 7u)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      *a4 = v6;
      break;
    case 24:
      result = sub_1E65E69D8();
      __break(1u);
      break;
    case 31:
      *a4 = 1;
      break;
    default:
      v4 = a2 < 7u;
LABEL_3:
      *a4 = v4;
      break;
  }

  return result;
}

uint64_t sub_1E6093784@<X0>(int a2@<W1>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a5;
  v6 = sub_1E65E0A98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E65E05C8();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v27[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v27[-v18];
  switch(a4)
  {
    case 2:
    case 24:
    case 44:
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    case 3:
    case 30:
      v24 = sub_1E65DAE38();
      if (v24 == sub_1E65DAE38() || v28 > 1u)
      {
        goto LABEL_14;
      }

      sub_1E65E08E8();
      sub_1E65E03F8();
      break;
    case 5:
    case 13:
      v21 = v17;
      v22 = v16;
      sub_1E65E0598();
      (*(v21 + 16))(v15, v19, v22);
      sub_1E65E05B8();
      v26 = sub_1E65E4B48();
      if (v26)
      {
        sub_1E65DC368();
      }

      sub_1E65E0768();
      sub_1E65E0AB8();
      (*(v21 + 8))(v19, v22);
      goto LABEL_31;
    case 6:
      sub_1E65E0A48();
      sub_1E65E03F8();
      break;
    case 7:
      if (v28 > 1u)
      {
        (*(v7 + 104))(v9, *MEMORY[0x1E699DAF0], v6);
        sub_1E65E0A78();
        sub_1E65E03F8();
      }

      else
      {
        sub_1E65E0598();
        sub_1E65E0768();
        sub_1E65E0AB8();
LABEL_31:
        sub_1E65E03F8();
      }

      return swift_storeEnumTagMultiPayload();
    case 9:
    case 31:
      sub_1E65DAE38();
      sub_1E65DAE38();
      sub_1E65E0938();
      sub_1E65E03F8();
      break;
    case 10:
    case 11:
      goto LABEL_10;
    case 15:
    case 17:
    case 34:
      if (v28 <= 1u)
      {
        goto LABEL_7;
      }

      goto LABEL_2;
    case 22:
      sub_1E65E07C8();
      v25 = sub_1E65DAE38();
      if (v25 == sub_1E65DAE38())
      {
        if (sub_1E65E4B48())
        {
          sub_1E65DC388();
        }
      }

      else
      {
        if (sub_1E65E4B48())
        {
          sub_1E65DC368();
        }

        sub_1E65E07C8();
      }

      sub_1E65E0838();
      sub_1E65E03F8();
      break;
    case 28:
    case 29:
LABEL_7:
      sub_1E65E0AC8();
      sub_1E65E03F8();
      break;
    case 35:
LABEL_14:
      sub_1E65E09F8();
      sub_1E65E03F8();
      break;
    case 38:
    case 39:
      v23 = sub_1E65DAE38();
      if (v23 == sub_1E65DAE38())
      {
        goto LABEL_2;
      }

LABEL_10:
      sub_1E65E03F8();
      break;
    default:
LABEL_2:
      sub_1E65E0A68();
      sub_1E65E03F8();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6093FD0(uint64_t a1)
{
  v1 = sub_1E65DF6C8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = sub_1E65DAE38();
  if (v8 == sub_1E65DAE38())
  {
    (*(v2 + 104))(v7, *MEMORY[0x1E699E6E0], v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0708();
    v9 = MEMORY[0x1E699E6E8];
    if (v11[15] >= 3u)
    {
      v9 = MEMORY[0x1E699E6F0];
    }

    (*(v2 + 104))(v5, *v9, v1);
    (*(v2 + 32))(v7, v5, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0678();
  return sub_1E65DF638();
}

char *BarButtonItem.__allocating_init<A>(presentationContextKey:rootView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1E60946F0(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  return v10;
}

char *BarButtonItem.init<A>(presentationContextKey:rootView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E60946F0(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  return v6;
}

void sub_1E60942E4()
{
  v1 = [*&v0[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] view];
  if (v1)
  {
    v20 = v1;
    v2 = [v0 customView];
    if (v2)
    {
      v3 = v2;
      [v20 setTranslatesAutoresizingMaskIntoConstraints_];
      v4 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1E65EFF30;
      v6 = [v20 leadingAnchor];
      v7 = [v3 leadingAnchor];
      v8 = [v6 constraintEqualToAnchor_];

      *(v5 + 32) = v8;
      v9 = [v20 trailingAnchor];
      v10 = [v3 trailingAnchor];
      v11 = [v9 constraintEqualToAnchor_];

      *(v5 + 40) = v11;
      v12 = [v20 topAnchor];
      v13 = [v3 topAnchor];
      v14 = [v12 constraintEqualToAnchor_];

      *(v5 + 48) = v14;
      v15 = [v20 bottomAnchor];
      v16 = [v3 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor_];

      *(v5 + 56) = v17;
      sub_1E6094C88();
      v18 = sub_1E65E5EF8();

      [v4 activateConstraints_];

      v19 = v18;
    }

    else
    {
      v19 = v20;
    }
  }
}

id BarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BarButtonItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E60946F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1E65E43B8();
  v37 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  v13 = a1;
  v39 = sub_1E65E4AD8();
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074270, &qword_1E65EFF68));
  v15 = sub_1E65E4058();
  *&v5[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E65EA670;
  v17 = v15;
  sub_1E65E4398();
  v39 = v16;
  sub_1E5E1F2A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5E1F2FC();
  sub_1E65E6738();
  sub_1E65E4028();

  v18 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_presentationContextKey;
  v19 = sub_1E65D76F8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v5[v18], v13, v19);
  v21 = type metadata accessor for BarButtonItem(0);
  v38.receiver = v5;
  v38.super_class = v21;
  v22 = objc_msgSendSuper2(&v38, sel_init, v37);
  v23 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v24 = v22;
  v25 = [v23 init];
  [v24 setCustomView_];

  if (sub_1E65E4B48())
  {
    v26 = [v24 customView];
    if (v26)
    {
      v27 = v26;
      v28 = [objc_opt_self() clearColor];
      [v27 setBackgroundColor_];
    }
  }

  v29 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController;
  v30 = [*&v24[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] view];
  if (v30)
  {
    v31 = v30;
    v32 = [v24 customView];
    v33 = v31;
    if (v32)
    {
      v33 = v32;
      [v32 addSubview_];
    }
  }

  result = [*&v24[v29] view];
  if (result)
  {
    v35 = result;
    if (sub_1E65E4B48())
    {
      v36 = [objc_opt_self() clearColor];
    }

    else
    {
      v36 = 0;
    }

    [v35 setBackgroundColor_];

    sub_1E60942E4();
    (*(v20 + 8))(v13, v19);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for BarButtonItem(uint64_t a1)
{
  result = qword_1EE2DB250;
  if (!qword_1EE2DB250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6094BBC(uint64_t a1)
{
  result = sub_1E65D76F8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E6094C88()
{
  result = qword_1EE2D45D0;
  if (!qword_1EE2D45D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D45D0);
  }

  return result;
}

uint64_t sub_1E6094CD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DF388();
  v6 = sub_1E65DF378();
  v8 = v7;
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  a1[1] = v8;
  if (v5 == 1)
  {
    type metadata accessor for PlaylistType(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for RouteDestination(0);
  sub_1E6094E10(v4, a1 + *(v9 + 20));
  *(a1 + *(v9 + 24)) = MEMORY[0x1E69E7CD0];
  return sub_1E6069714(v4);
}

uint64_t sub_1E6094E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Contributor.< infix(_:_:)()
{
  v0 = sub_1E65D7D48();
  v2 = v1;
  if (v0 == sub_1E65D7D48() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

unint64_t sub_1E6094F04()
{
  result = qword_1ED074288;
  if (!qword_1ED074288)
  {
    sub_1E65D7D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074288);
  }

  return result;
}

uint64_t sub_1E6094F5C()
{
  v0 = sub_1E65D7D48();
  v2 = v1;
  if (v0 == sub_1E65D7D48() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E6094FE8()
{
  v0 = sub_1E65D7D48();
  v2 = v1;
  if (v0 == sub_1E65D7D48() && v2 == v3)
  {

    v4 = 1;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E6095088()
{
  v0 = sub_1E65D7D48();
  v2 = v1;
  if (v0 == sub_1E65D7D48() && v2 == v3)
  {

    v4 = 1;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E6095128()
{
  v0 = sub_1E65D7D48();
  v2 = v1;
  if (v0 == sub_1E65D7D48() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E60951B8(uint64_t a1)
{
  v1 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v3 = v2;
  if (v1 == _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E65E6C18();
  }

  return v5 & 1;
}

uint64_t sub_1E6095238()
{
  sub_1E65E6D28();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t sub_1E6095294(uint64_t a1)
{
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();
}

uint64_t sub_1E60952E4(uint64_t a1)
{
  sub_1E65E6D28();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t MetricIdentifierType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (_s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0() == a1 && v5 == a2)
  {

    v7 = 0;
  }

  else
  {
    v8 = sub_1E65E6C18();

    v7 = v8 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

unint64_t sub_1E60953D4()
{
  result = qword_1ED074290;
  if (!qword_1ED074290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074290);
  }

  return result;
}

uint64_t sub_1E6095428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (_s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0() == v4 && v5 == v3)
  {

    v9 = 0;
  }

  else
  {
    v7 = sub_1E65E6C18();

    v9 = v7 ^ 1;
  }

  *a2 = v9 & 1;
  return result;
}

uint64_t sub_1E60954B4@<X0>(uint64_t *a2@<X8>)
{
  result = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1E609559C()
{
  result = qword_1EE2D9648;
  if (!qword_1EE2D9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9648);
  }

  return result;
}

uint64_t sub_1E60955F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1E65DAC98();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  sub_1E60958EC(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1E609595C(a1);
    sub_1E609595C(v8);
    v16 = 1;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DFA28();
    sub_1E609595C(a1);
    v17 = *(v10 + 8);
    v17(v13, v9);
    v17(v15, v9);
    v16 = 0;
  }

  v18 = sub_1E65DFA38();
  return (*(*(v18 - 8) + 56))(a2, v16, 1, v18);
}

uint64_t sub_1E60958EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E609595C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E60959C4()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x657069636572;
  }
}

uint64_t sub_1E60959F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657069636572 && a2 == 0xE600000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E6095ACC(uint64_t a1)
{
  v2 = sub_1E609759C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6095B08(uint64_t a1)
{
  v2 = sub_1E609759C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6095B44()
{
  if (*v0)
  {
    return 1936154996;
  }

  else
  {
    return 0x786966657270;
  }
}

uint64_t sub_1E6095B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E6095C4C(uint64_t a1)
{
  v2 = sub_1E60976A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6095C88(uint64_t a1)
{
  v2 = sub_1E60976A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6095CC4(uint64_t a1)
{
  v2 = sub_1E6097654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6095D00(uint64_t a1)
{
  v2 = sub_1E6097654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SectionHeaderSubtitleDescriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074298, &unk_1E65F00F0);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742A0, &qword_1E65F0100);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v37 - v7;
  v50 = sub_1E65D72D8();
  v8 = *(v50 - 8);
  v9 = MEMORY[0x1EEE9AC00](v50);
  v48 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v37 - v11;
  v12 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742A8, &qword_1E65F0108);
  v15 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v37 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E609759C();
  sub_1E65E6DA8();
  sub_1E60975F0(v45, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v38;
    sub_1E6012620(v14, v38);
    v54 = 1;
    sub_1E6097654();
    v19 = v39;
    v20 = v46;
    sub_1E65E6B18();
    sub_1E5DF6BC0(&qword_1EE2D7290, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
    v21 = v41;
    sub_1E65E6B38();
    (*(v40 + 8))(v19, v21);
    sub_1E5DFE50C(v18, &qword_1ED072D90, &qword_1E66040F0);
    return (*(v15 + 8))(v17, v20);
  }

  else
  {
    v45 = v15;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110) + 48);
    v24 = *(v8 + 32);
    v25 = v50;
    v24(v44, v14, v50);
    v24(v48, &v14[v23], v25);
    v53 = 0;
    sub_1E60976A8();
    v26 = v46;
    sub_1E65E6B18();
    v52 = 0;
    sub_1E5DF6BC0(&qword_1EE2D7290, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
    v27 = v43;
    v28 = v47;
    sub_1E65E6B78();
    v29 = v26;
    v30 = v8;
    if (v28)
    {
      (*(v42 + 8))(v49, v27);
      v31 = *(v8 + 8);
      v32 = v50;
      v31(v48, v50);
      v31(v44, v32);
      v33 = v45;
    }

    else
    {
      v34 = v44;
      v51 = 1;
      sub_1E65E6B78();
      v33 = v45;
      (*(v42 + 8))(v49, v27);
      v35 = *(v30 + 8);
      v36 = v50;
      v35(v48, v50);
      v35(v34, v36);
    }

    return (*(v33 + 8))(v17, v29);
  }
}

uint64_t SectionHeaderSubtitleDescriptor.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = sub_1E65D72D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E60975F0(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E6012620(v17, v7);
    MEMORY[0x1E694E740](1);
    sub_1E60976FC(v7, v5);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_1E65E6D48();
    }

    else
    {
      (*(v9 + 32))(v14, v5, v8);
      sub_1E65E6D48();
      sub_1E5DF6BC0(&qword_1ED0734B0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
      sub_1E65E5B48();
      (*(v9 + 8))(v14, v8);
    }

    return sub_1E5DFE50C(v7, &qword_1ED072D90, &qword_1E66040F0);
  }

  else
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110) + 48);
    v19 = *(v9 + 32);
    v19(v14, v17, v8);
    v19(v12, &v17[v18], v8);
    MEMORY[0x1E694E740](0);
    sub_1E5DF6BC0(&qword_1ED0734B0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
    sub_1E65E5B48();
    sub_1E65E5B48();
    v20 = *(v9 + 8);
    v20(v12, v8);
    return (v20)(v14, v8);
  }
}

uint64_t SectionHeaderSubtitleDescriptor.hashValue.getter()
{
  sub_1E65E6D28();
  SectionHeaderSubtitleDescriptor.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t SectionHeaderSubtitleDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742B8, &qword_1E65F0118);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v38 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742C0, &qword_1E65F0120);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742C8, &unk_1E65F0128);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E609759C();
  v19 = v48;
  sub_1E65E6D98();
  if (!v19)
  {
    v38 = v12;
    v39 = v15;
    v20 = v45;
    v21 = v46;
    v48 = v9;
    v22 = sub_1E65E6AF8();
    v23 = (2 * *(v22 + 16)) | 1;
    v50 = v22;
    v51 = v22 + 32;
    v52 = 0;
    v53 = v23;
    v24 = sub_1E5FBE3F0();
    if (v24 == 2 || v52 != v53 >> 1)
    {
      v27 = sub_1E65E68F8();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v29 = v48;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v47 + 8))(v8, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        v54 = 1;
        sub_1E6097654();
        sub_1E65E6A68();
        v25 = v6;
        v26 = v47;
        sub_1E65D72D8();
        sub_1E5DF6BC0(&qword_1ED0734A8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
        v34 = v38;
        v35 = v43;
        sub_1E65E6A98();
        (*(v42 + 8))(v21, v35);
        (*(v26 + 8))(v8, v25);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v36 = v34;
      }

      else
      {
        v54 = 0;
        sub_1E60976A8();
        sub_1E65E6A68();
        v31 = v47;
        sub_1E65D72D8();
        v54 = 0;
        sub_1E5DF6BC0(&qword_1ED0734A8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
        v32 = v20;
        v33 = v41;
        sub_1E65E6AD8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110);
        v54 = 1;
        sub_1E65E6AD8();
        (*(v44 + 8))(v32, v33);
        (*(v31 + 8))(v8, v6);
        swift_unknownObjectRelease();
        v37 = v39;
        swift_storeEnumTagMultiPayload();
        v36 = v37;
      }

      sub_1E609776C(v36, v17);
      sub_1E609776C(v17, v40);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1E6096EC8()
{
  sub_1E65E6D28();
  SectionHeaderSubtitleDescriptor.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E6096F0C(uint64_t a1)
{
  sub_1E65E6D28();
  SectionHeaderSubtitleDescriptor.hash(into:)(v2);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard31SectionHeaderSubtitleDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742E8, &qword_1E65F05A8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v44 - v5;
  v6 = sub_1E65D72D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742F0, &unk_1E65F05B0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v44 - v25;
  v27 = &v44 + *(v24 + 56) - v25;
  sub_1E60975F0(v48, &v44 - v25);
  sub_1E60975F0(v49, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E60975F0(v26, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *(v4 + 48);
      v29 = v46;
      sub_1E6012620(v20, v46);
      sub_1E6012620(v27, v29 + v28);
      v30 = v7;
      v31 = v7[6];
      if (v31(v29, 1, v6) == 1)
      {
        if (v31(v29 + v28, 1, v6) == 1)
        {
          sub_1E5DFE50C(v29, &qword_1ED072D90, &qword_1E66040F0);
LABEL_20:
          sub_1E6097B18(v26);
          v38 = 1;
          return v38 & 1;
        }
      }

      else
      {
        v39 = v45;
        sub_1E60976FC(v29, v45);
        if (v31(v29 + v28, 1, v6) != 1)
        {
          v41 = v44;
          (v30[4])(v44, v29 + v28, v6);
          sub_1E5DF6BC0(&qword_1EE2D7288, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          v42 = sub_1E65E5B98();
          v43 = v30[1];
          v43(v41, v6);
          v43(v39, v6);
          sub_1E5DFE50C(v29, &qword_1ED072D90, &qword_1E66040F0);
          if (v42)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        }

        (v30[1])(v39, v6);
      }

      sub_1E5DFE50C(v29, &qword_1ED0742E8, &qword_1E65F05A8);
LABEL_16:
      sub_1E6097B18(v26);
      goto LABEL_17;
    }

    sub_1E5DFE50C(v20, &qword_1ED072D90, &qword_1E66040F0);
LABEL_9:
    sub_1E5DFE50C(v26, &qword_1ED0742F0, &unk_1E65F05B0);
LABEL_17:
    v38 = 0;
    return v38 & 1;
  }

  sub_1E60975F0(v26, v22);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v7[1];
    v33(&v22[v32], v6);
    v33(v22, v6);
    goto LABEL_9;
  }

  v34 = v7[4];
  v34(v16, v27, v6);
  v34(v47, &v22[v32], v6);
  v34(v12, &v27[v32], v6);
  v35 = sub_1E65D7288();
  v36 = v7[1];
  v36(v22, v6);
  if ((v35 & 1) == 0)
  {
    v36(v12, v6);
    v36(v47, v6);
    v36(v16, v6);
    goto LABEL_16;
  }

  v37 = v47;
  v38 = sub_1E65D7288();
  v36(v12, v6);
  v36(v37, v6);
  v36(v16, v6);
  sub_1E6097B18(v26);
  return v38 & 1;
}

unint64_t sub_1E609759C()
{
  result = qword_1EE2D7DC8;
  if (!qword_1EE2D7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DC8);
  }

  return result;
}

uint64_t sub_1E60975F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6097654()
{
  result = qword_1EE2D7DB0;
  if (!qword_1EE2D7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DB0);
  }

  return result;
}

unint64_t sub_1E60976A8()
{
  result = qword_1ED0742B0;
  if (!qword_1ED0742B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0742B0);
  }

  return result;
}

uint64_t sub_1E60976FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E609776C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6097804()
{
  result = qword_1ED0742D0;
  if (!qword_1ED0742D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0742D0);
  }

  return result;
}

unint64_t sub_1E609785C()
{
  result = qword_1ED0742D8;
  if (!qword_1ED0742D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0742D8);
  }

  return result;
}

unint64_t sub_1E60978B4()
{
  result = qword_1ED0742E0;
  if (!qword_1ED0742E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0742E0);
  }

  return result;
}

unint64_t sub_1E609790C()
{
  result = qword_1EE2D7D90;
  if (!qword_1EE2D7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7D90);
  }

  return result;
}

unint64_t sub_1E6097964()
{
  result = qword_1EE2D7D98;
  if (!qword_1EE2D7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7D98);
  }

  return result;
}

unint64_t sub_1E60979BC()
{
  result = qword_1EE2D7DA0;
  if (!qword_1EE2D7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DA0);
  }

  return result;
}

unint64_t sub_1E6097A14()
{
  result = qword_1EE2D7DA8;
  if (!qword_1EE2D7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DA8);
  }

  return result;
}

unint64_t sub_1E6097A6C()
{
  result = qword_1EE2D7DB8;
  if (!qword_1EE2D7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DB8);
  }

  return result;
}

unint64_t sub_1E6097AC4()
{
  result = qword_1EE2D7DC0;
  if (!qword_1EE2D7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DC0);
  }

  return result;
}

uint64_t sub_1E6097B18(uint64_t a1)
{
  v2 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6097B88(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1E65D9998();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6097C48, 0, 0);
}

uint64_t sub_1E6097C48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_1E65DE128();

    return MEMORY[0x1EEE6DFA0](sub_1E6097D1C, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1E6097D1C()
{
  v1 = sub_1E65D9978();
  if ((v2 & 1) == 0 || v1 - 3 >= 0xFFFFFFFE)
  {
    sub_1E6097DD4(0);
  }

  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[8];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6097DD4(void *a1)
{
  v3 = type metadata accessor for AnalyticsConsentDetour.State(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for RouteDestination(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v19 = OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_state;
  swift_beginAccess();
  sub_1E609C080(v1 + v19, v8, type metadata accessor for AnalyticsConsentDetour.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    return sub_1E609CA8C(v8, type metadata accessor for AnalyticsConsentDetour.State);
  }

  v29 = v12;
  v23 = v14;
  v24 = a1;
  v25 = *(v20 + 48);
  (*(v31 + 32))(v18, v8, v30);
  sub_1E5E1E048(&v8[v25], v23, type metadata accessor for RouteDestination);
  (*(v21 + 56))(v6, 1, 1, v20);
  swift_beginAccess();
  sub_1E609C5AC(v6, v1 + v19);
  swift_endAccess();
  if (v24)
  {
    v32 = v24;
    v26 = v24;
    v27 = v30;
    sub_1E65E5FE8();
  }

  else
  {
    sub_1E609C080(v23, v29, type metadata accessor for RouteDestination);
    v27 = v30;
    sub_1E65E5FF8();
  }

  sub_1E609CA8C(v23, type metadata accessor for RouteDestination);
  return (*(v31 + 8))(v18, v27);
}

void sub_1E6098154(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppComposer(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1E65D9988();
  v11 = objc_allocWithZone(sub_1E65E5868());
  v12 = sub_1E65E5848();

  sub_1E65E5858();

  sub_1E609C080(a2, v10, type metadata accessor for AppComposer);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_1E5E1E048(v10, v15 + v13, type metadata accessor for AppComposer);
  *(v15 + v14) = v3;

  sub_1E65E5838();

  v16 = *(a2 + *(v7 + 28) + 8);
  if (v16 < 2)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1E65EA660;
    *(v18 + 32) = v12;
    sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
    v19 = v12;
    v20 = sub_1E65E5EF8();

    [v17 setViewControllers:v20 animated:0];

    [a1 presentViewController:v17 animated:1 completion:0];
LABEL_5:

    return;
  }

  if (v16 == 3)
  {
    [a1 pushViewController:v12 animated:0];
    goto LABEL_5;
  }

  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E6098470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1E65E6058();

  v6 = sub_1E65E6048();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1E64B80F8(0, 0, v4, &unk_1E65F0718, v7);
}

uint64_t sub_1E6098594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1E65E6058();
  v4[4] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E6098614, a4, 0);
}

uint64_t sub_1E6098614()
{
  sub_1E6097DD4(0);
  v1 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F916A0, v1, v0);
}

uint64_t sub_1E60986A8(int a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v22 = a1;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21[-v9];
  v11 = sub_1E65E60A8();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  sub_1E609C080(a2, v7, type metadata accessor for AppComposer);
  sub_1E65E6058();
  v13 = sub_1E65E6048();
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  *(v15 + 32) = v22;
  sub_1E5E1E048(v7, v15 + v14, type metadata accessor for AppComposer);
  sub_1E6059EAC(0, 0, v10, &unk_1E65F06F8, v15);

  v12(v10, 1, 1, v11);
  v17 = v23;

  v18 = sub_1E65E6048();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v16;
  v19[4] = v17;
  sub_1E64B80F8(0, 0, v10, &unk_1E65F0708, v19);
}

uint64_t sub_1E6098928(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 96) = a4;
  v6 = sub_1E65D9998();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  sub_1E65E6058();
  *(v5 + 48) = sub_1E65E6048();
  v8 = sub_1E65E5FC8();
  *(v5 + 56) = v8;
  *(v5 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E6098A20, v8, v7);
}

uint64_t sub_1E6098A20(uint64_t a1)
{
  sub_1E65D9988();
  sub_1E65D9968();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = PrivacyPreferenceService.updateOptInPrivacyPreference.getter();
  v1[9] = v3;
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_1E6098B78;
  v5 = v1[5];

  return v7(v5);
}

uint64_t sub_1E6098B78()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1E6098D60;
  }

  else
  {
    v5 = sub_1E6098CD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E6098CD0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6098D60()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6098DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1E65E6058();
  v4[4] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E6098E70, a4, 0);
}

uint64_t sub_1E6098E70()
{
  sub_1E6097DD4(0);
  v1 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F908BC, v1, v0);
}

uint64_t sub_1E6098F04()
{
  sub_1E609CA8C(v0 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_state, type metadata accessor for AnalyticsConsentDetour.State);

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour__analyticsConsentShowingEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour__forceAnalyticsConsentAcknowledgement, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E609903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[287] = v5;
  v6[281] = a5;
  v6[275] = a4;
  v6[269] = a3;
  v6[263] = a2;
  v6[257] = a1;
  v7 = sub_1E65E3B68();
  v6[293] = v7;
  v6[299] = *(v7 - 8);
  v6[305] = swift_task_alloc();
  v6[311] = swift_task_alloc();
  v8 = sub_1E65D76A8();
  v6[317] = v8;
  v6[323] = *(v8 - 8);
  v6[329] = swift_task_alloc();
  v9 = sub_1E65D9998();
  v6[335] = v9;
  v6[341] = *(v9 - 8);
  v6[347] = swift_task_alloc();
  v6[353] = swift_task_alloc();
  v10 = sub_1E65D92D8();
  v6[359] = v10;
  v6[365] = *(v10 - 8);
  v6[371] = swift_task_alloc();
  v6[372] = swift_task_alloc();
  v11 = type metadata accessor for AppComposer(0);
  v6[373] = v11;
  v12 = *(v11 - 8);
  v6[374] = v12;
  v6[375] = *(v12 + 64);
  v6[376] = swift_task_alloc();
  v6[377] = swift_task_alloc();
  v6[378] = swift_task_alloc();
  v13 = sub_1E65D8DE8();
  v6[379] = v13;
  v6[380] = *(v13 - 8);
  v6[381] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6[382] = v14;
  v6[383] = *(v14 - 8);
  v6[384] = swift_task_alloc();
  v15 = sub_1E65DE3E8();
  v6[385] = v15;
  v6[386] = *(v15 - 8);
  v6[387] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60993E4, v5, 0);
}

uint64_t sub_1E60993E4()
{
  v1 = *(v0 + 3096);
  v2 = *(v0 + 3088);
  v3 = *(v0 + 3080);
  v4 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD40], v3);
  v5 = sub_1E637C87C(v1, v4);

  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = *(v0 + 3072);
    v7 = *(v0 + 3064);
    v8 = *(v0 + 3056);
    v9 = *(v0 + 2296);
    v10 = OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour__analyticsConsentShowingEnabled;
    v11 = *(v7 + 16);
    *(v0 + 3104) = v11;
    *(v0 + 3112) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v6, v9 + v10, v8);
    sub_1E65DDC48();
    v12 = *(v7 + 8);
    *(v0 + 3120) = v12;
    *(v0 + 3128) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v6, v8);
    if (*(v0 + 3232) == 1)
    {
      v13 = sub_1E65DAE38();
      if (v13 == sub_1E65DAE38())
      {
        type metadata accessor for AppEnvironment(0);
        active = RemoteBrowsingService.requireActiveParticipant.getter();
        *(v0 + 3136) = v15;
        v39 = (active + *active);
        v16 = swift_task_alloc();
        *(v0 + 3144) = v16;
        *v16 = v0;
        v16[1] = sub_1E6099A00;
        v17 = *(v0 + 3048);

        return v39(v17);
      }

      else
      {
        v30 = *(v0 + 3024);
        v31 = *(v0 + 3016);
        v32 = *(v0 + 2992);
        v38 = *(v0 + 3008);
        v33 = *(v0 + 2152);
        sub_1E609C080(v33, v30, type metadata accessor for AppComposer);
        v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
        v35 = swift_allocObject();
        *(v0 + 3160) = v35;
        sub_1E5E1E048(v30, v35 + v34, type metadata accessor for AppComposer);
        sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
        swift_asyncLet_begin();
        sub_1E609C080(v33, v31, type metadata accessor for AppComposer);
        v36 = swift_allocObject();
        *(v0 + 3168) = v36;
        sub_1E5E1E048(v31, v36 + v34, type metadata accessor for AppComposer);
        swift_asyncLet_begin();
        sub_1E609C080(v33, v38, type metadata accessor for AppComposer);
        v37 = swift_allocObject();
        *(v0 + 3176) = v37;
        sub_1E5E1E048(v38, v37 + v34, type metadata accessor for AppComposer);
        swift_asyncLet_begin();

        return MEMORY[0x1EEE6DEC0](v0 + 1296, v0 + 2008, sub_1E6099D9C, v0 + 2016);
      }
    }

    sub_1E65DE348();
    v21 = sub_1E65E3B48();
    v22 = sub_1E65E6338();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1E5DE9000, v21, v22, "Analytics Consent showing has been disabled", v23, 2u);
      MEMORY[0x1E694F1C0](v23, -1, -1);
    }

    v24 = *(v0 + 2488);
    v25 = *(v0 + 2392);
    v26 = *(v0 + 2344);
    v27 = *(v0 + 2104);
    v28 = *(v0 + 2056);

    (*(v25 + 8))(v24, v26);
    v19 = v27;
    v20 = v28;
  }

  else
  {
    v19 = *(v0 + 2104);
    v20 = *(v0 + 2056);
  }

  sub_1E609C080(v19, v20, type metadata accessor for RouteDestination);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1E6099A00()
{
  v2 = *v1;
  *(*v1 + 3152) = v0;

  if (v0)
  {
    v3 = v2[287];

    v4 = sub_1E609A7F8;
  }

  else
  {
    v3 = v2[287];
    (*(v2[380] + 8))(v2[381], v2[379]);

    v4 = sub_1E6099B64;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6099B64()
{
  v1 = v0[378];
  v2 = v0[377];
  v3 = v0[374];
  v10 = v0[376];
  v4 = v0[269];
  sub_1E609C080(v4, v1, type metadata accessor for AppComposer);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[395] = v6;
  sub_1E5E1E048(v1, v6 + v5, type metadata accessor for AppComposer);
  sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
  swift_asyncLet_begin();
  sub_1E609C080(v4, v2, type metadata accessor for AppComposer);
  v7 = swift_allocObject();
  v0[396] = v7;
  sub_1E5E1E048(v2, v7 + v5, type metadata accessor for AppComposer);
  swift_asyncLet_begin();
  sub_1E609C080(v4, v10, type metadata accessor for AppComposer);
  v8 = swift_allocObject();
  v0[397] = v8;
  sub_1E5E1E048(v10, v8 + v5, type metadata accessor for AppComposer);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 162, v0 + 251, sub_1E6099D9C, v0 + 252);
}

uint64_t sub_1E6099D9C()
{
  *(v1 + 3184) = v0;
  if (v0)
  {
    v2 = sub_1E609A9BC;
  }

  else
  {
    v2 = sub_1E6099DD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 2296), 0);
}

uint64_t sub_1E6099DD0()
{
  if ([*(v0 + 2008) ams:*MEMORY[0x1E698C4B8] accountFlagValueForAccountFlag:?])
  {
    sub_1E65E6708();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *(v0 + 1976) = v7;
  *(v0 + 1992) = v8;
  if (*(v0 + 2000))
  {
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 3234) == 1)
    {
      v1 = sub_1E65E38E8();
      sub_1E609C44C(&qword_1ED074300, MEMORY[0x1E69CADC8], MEMORY[0x1E69CADD0]);
      v2 = swift_allocError();
      (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69CADB8], v1);
      swift_willThrow();

      sub_1E609C080(*(v0 + 2104), *(v0 + 2056), type metadata accessor for RouteDestination);
      v4 = *(v0 + 2824);

      return MEMORY[0x1EEE6DEB0](v0 + 656, v4, sub_1E609A944, v0 + 2064);
    }
  }

  else
  {
    sub_1E5DFE50C(v0 + 1976, &qword_1ED072B28, &unk_1E65F06A0);
  }

  v5 = *(v0 + 2976);

  return MEMORY[0x1EEE6DEC0](v0 + 16, v5, sub_1E6099FE8, v0 + 2208);
}

uint64_t sub_1E6099FE8()
{
  *(v1 + 3192) = v0;
  if (v0)
  {
    v2 = sub_1E609AAC0;
  }

  else
  {
    v2 = sub_1E609A01C;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 2296), 0);
}

uint64_t sub_1E609A01C()
{
  v1 = v0[371];
  v2 = v0[365];
  v3 = v0[359];
  v4 = v0[329];
  v5 = v0[323];
  v6 = v0[317];
  (*(v2 + 16))(v1, v0[372], v3);
  sub_1E65D7698();
  v7 = sub_1E65D92A8();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  if (v7)
  {
    v8 = v0[353];

    return MEMORY[0x1EEE6DEC0](v0 + 82, v8, sub_1E609A180, v0 + 300);
  }

  else
  {
    sub_1E609C080(v0[263], v0[257], type metadata accessor for RouteDestination);
    v9 = v0[353];

    return MEMORY[0x1EEE6DEB0](v0 + 82, v9, sub_1E609AA48, v0 + 282);
  }
}

uint64_t sub_1E609A180()
{
  *(v1 + 3200) = v0;
  if (v0)
  {
    v2 = sub_1E609AB4C;
  }

  else
  {
    v2 = sub_1E609A1B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 2296), 0);
}

uint64_t sub_1E609A1B4()
{
  v1 = *(v0 + 3120);
  v2 = *(v0 + 3104);
  v3 = *(v0 + 3072);
  v4 = *(v0 + 3056);
  v5 = *(v0 + 2296);
  (*(*(v0 + 2728) + 16))(*(v0 + 2776), *(v0 + 2824), *(v0 + 2680));
  v2(v3, v5 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour__forceAnalyticsConsentAcknowledgement, v4);
  sub_1E65DDC48();
  v1(v3, v4);
  v6 = *(v0 + 2776);
  v7 = *(v0 + 2728);
  v8 = *(v0 + 2680);
  if (*(v0 + 3233) == 1)
  {
    (*(v7 + 8))(*(v0 + 2776), *(v0 + 2680));
    goto LABEL_3;
  }

  v20 = sub_1E65D9978();
  v22 = v21;
  (*(v7 + 8))(v6, v8);
  if ((v22 & 1) == 0 || v20 - 1 >= 2)
  {
LABEL_3:
    v9 = *(v0 + 2296);
    v10 = *(v0 + 2248);
    v11 = *(v0 + 2200);
    v12 = *(v0 + 2152);
    v13 = *(v0 + 2104);
    v14 = swift_task_alloc();
    *(v0 + 3208) = v14;
    v14[2] = v9;
    v14[3] = v13;
    v14[4] = v11;
    v14[5] = v10;
    v14[6] = v12;
    v15 = sub_1E609C44C(&qword_1ED0742F8, type metadata accessor for AnalyticsConsentDetour, &unk_1E65F0638);
    v16 = swift_task_alloc();
    *(v0 + 3216) = v16;
    v17 = type metadata accessor for RouteDestination(0);
    *v16 = v0;
    v16[1] = sub_1E609A44C;
    v18 = *(v0 + 2296);
    v19 = *(v0 + 2056);

    return MEMORY[0x1EEE6DE18](v19, &unk_1E65F06B8, v14, sub_1E609C444, v18, v9, v15, v17);
  }

  sub_1E609C080(*(v0 + 2104), *(v0 + 2056), type metadata accessor for RouteDestination);
  v23 = *(v0 + 2824);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v23, sub_1E609A764, v0 + 2928);
}

uint64_t sub_1E609A44C()
{
  v2 = *v1;
  *(*v1 + 3224) = v0;

  if (v0)
  {
    v3 = *(v2 + 2296);

    return MEMORY[0x1EEE6DFA0](sub_1E609AD7C, v3, 0);
  }

  else
  {

    v4 = *(v2 + 2824);

    return MEMORY[0x1EEE6DEB0](v2 + 656, v4, sub_1E609A594, v2 + 2784);
  }
}

uint64_t sub_1E609A628()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E609A7F8()
{
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2056);

  sub_1E609C080(v1, v2, type metadata accessor for RouteDestination);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E609A9BC()
{
  sub_1E609C080(*(v0 + 2104), *(v0 + 2056), type metadata accessor for RouteDestination);
  v1 = *(v0 + 2824);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v1, sub_1E609A944, v0 + 2064);
}

uint64_t sub_1E609AAC0()
{
  sub_1E609C080(*(v0 + 2104), *(v0 + 2056), type metadata accessor for RouteDestination);
  v1 = *(v0 + 2824);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v1, sub_1E609AA48, v0 + 2256);
}

uint64_t sub_1E609AB4C(uint64_t a1)
{
  v2 = v1[400];
  sub_1E65DE348();
  v3 = v2;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[400];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Analytics Consent — failed to fetch preference with error: %@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v1[263];
  v13 = v1[257];
  (*(v1[299] + 8))(v1[305], v1[293]);
  sub_1E609C080(v12, v13, type metadata accessor for RouteDestination);
  v14 = v1[353];

  return MEMORY[0x1EEE6DEB0](v1 + 82, v14, sub_1E609AD04, v1 + 306);
}

uint64_t sub_1E609AD7C()
{

  v1 = *(v0 + 2824);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v1, sub_1E609ADE8, v0 + 2640);
}

uint64_t sub_1E609AE7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E609AFC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E609AFE0, 0, 0);
}

uint64_t sub_1E609AFE0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AccountService.fetchCurrentAccount.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE1610;

  return v5();
}

uint64_t sub_1E609B0F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E609B114, 0, 0);
}

uint64_t sub_1E609B114()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ServiceSubscriptionService.queryServiceSubscription.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FACF3C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E609B230(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E609B250, 0, 0);
}

uint64_t sub_1E609B250()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = PrivacyPreferenceService.queryOptInPrivacyPreference.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E609B36C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E609B36C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E5FEE4E8;
  }

  else
  {
    v2 = sub_1E5FAC604;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E609B480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E609B4A4, a2, 0);
}

uint64_t sub_1E609B4A4()
{
  v1 = *(v0 + 56);
  v2 = sub_1E609C44C(&qword_1ED0742F8, type metadata accessor for AnalyticsConsentDetour, &unk_1E65F0638);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v9 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v9;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for RouteDestination(0);
  *v5 = v0;
  v5[1] = sub_1E5F8E974;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, v9, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E609C548, v3, v6);
}

uint64_t sub_1E609B5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v37 = a5;
  v38 = a4;
  v39 = a1;
  v8 = type metadata accessor for AppComposer(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for AnalyticsConsentDetour.State(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v19 = OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_state;
  swift_beginAccess();
  sub_1E609C080(a2 + v19, v18, type metadata accessor for AnalyticsConsentDetour.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v18, 1, v20);
  sub_1E609CA8C(v18, type metadata accessor for AnalyticsConsentDetour.State);
  if (v22 == 1)
  {
    v23 = &v16[*(v20 + 48)];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v24 - 8) + 16))(v16, v39, v24);
    sub_1E609C080(a3, v23, type metadata accessor for RouteResource);
    v25 = type metadata accessor for RouteDestination(0);
    sub_1E609C080(a3 + *(v25 + 20), v23 + *(v25 + 20), type metadata accessor for RouteSource);
    v26 = *(a3 + *(v25 + 24));

    *(v23 + *(v25 + 24)) = sub_1E602A670(&unk_1F5FA8390, v26);
    (*(v21 + 56))(v16, 0, 1, v20);
    swift_beginAccess();
    sub_1E609C5AC(v16, a2 + v19);
    swift_endAccess();
    v27 = sub_1E65E60A8();
    (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
    v28 = v36;
    sub_1E609C080(v34, v36, type metadata accessor for AppComposer);
    v29 = sub_1E609C44C(&qword_1ED0742F8, type metadata accessor for AnalyticsConsentDetour, &unk_1E65F0638);
    v30 = (*(v35 + 80) + 56) & ~*(v35 + 80);
    v31 = swift_allocObject();
    v31[2] = a2;
    v31[3] = v29;
    v32 = v37;
    v31[4] = v38;
    v31[5] = v32;
    v31[6] = a2;
    sub_1E5E1E048(v28, v31 + v30, type metadata accessor for AppComposer);
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1E64B80F8(0, 0, v12, &unk_1E65F06E0, v31);
  }

  else
  {
    sub_1E609C558();
    v40 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E609BAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v7[6] = v9;
  v7[7] = *(v9 + 64);
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E609BB8C, a6, 0);
}

uint64_t sub_1E609BB8C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v13 = v0[3];
  ObjectType = swift_getObjectType();
  sub_1E609C080(v2, v1, type metadata accessor for AppComposer);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v4;
  sub_1E5E1E048(v1, v7 + v6, type metadata accessor for AppComposer);
  v8 = *(v13 + 24);

  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1E5F8F278;
  v10 = v0[3];

  return v12(sub_1E609C71C, v7, ObjectType, v10);
}

uint64_t sub_1E609BD58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E64B80F8(0, 0, v4, &unk_1E65F06D0, v6);
}

uint64_t sub_1E609BE84()
{
  v1 = *(v0 + 16);
  sub_1E65E6018();
  sub_1E609C44C(&qword_1ED071E30, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  *(v0 + 24) = swift_allocError();
  sub_1E65E5AE8();

  return MEMORY[0x1EEE6DFA0](sub_1E609BF48, v1, 0);
}

uint64_t sub_1E609BF48()
{
  v1 = *(v0 + 24);
  sub_1E6097DD4(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E609BFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFA78C;

  return sub_1E609903C(a1, a2, a3, a4, a5);
}

uint64_t sub_1E609C080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E609C0E8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E609AFC0(a1, v1 + v5);
}

uint64_t sub_1E609C1C4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E609B0F4(a1, v1 + v5);
}

uint64_t sub_1E609C2A0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E609B230(a1, v1 + v5);
}

uint64_t sub_1E609C37C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E609B480(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E609C44C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E609C494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E609BE64(a1, v4, v5, v6);
}

unint64_t sub_1E609C558()
{
  result = qword_1ED074308;
  if (!qword_1ED074308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074308);
  }

  return result;
}

uint64_t sub_1E609C5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsConsentDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E609C610(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E609BAC0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1E609C790(int a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E60986A8(a1, v1 + v4, v5);
}

uint64_t sub_1E609C82C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6098928(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E609C924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6098DF0(a1, v4, v5, v6);
}

uint64_t sub_1E609C9D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6098594(a1, v4, v5, v6);
}

uint64_t sub_1E609CA8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E609CAEC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6097B88(a1, v1);
}

unint64_t sub_1E609CB98()
{
  result = qword_1ED074310;
  if (!qword_1ED074310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074310);
  }

  return result;
}

uint64_t sub_1E609CBF0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for RouteDestination(0);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1E65E6058();
  v3[20] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v3[21] = v6;
  v3[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E609CD2C, v6, v5);
}

uint64_t sub_1E609CD2C()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  v0[23] = v2;
  if (v2)
  {
    v3 = v0[14];
    sub_1E60A1B20(v1 + ((*(v0[17] + 80) + 32) & ~*(v0[17] + 80)) + *(v0[17] + 72) * (v2 - 1), v0[19], type metadata accessor for RouteDestination);
    v4 = type metadata accessor for UIViewControllerRoutingContext(0);
    v0[24] = v4;
    sub_1E5DFD1CC(v3 + *(v4 + 28), (v0 + 2), &unk_1ED072050, &unk_1E65EEAB0);
    v5 = v0[5];
    if (v5)
    {
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v46 = (*(v6 + 16) + **(v6 + 16));
      v7 = swift_task_alloc();
      v0[25] = v7;
      *v7 = v0;
      v7[1] = sub_1E609D200;
      v8 = v0[19];
      v9 = v0[15];

      return v46(v9, v8, v5, v6);
    }

    else
    {
      v13 = v0[16];
      v14 = v0[17];
      v15 = v0[15];

      sub_1E5DFE50C((v0 + 2), &unk_1ED072050, &unk_1E65EEAB0);
      (*(v14 + 56))(v15, 1, 1, v13);
      v16 = v0[16];
      v17 = v0[17];
      v18 = v0[15];
      sub_1E60A1B20(v0[19], v0[18], type metadata accessor for RouteDestination);
      if ((*(v17 + 48))(v18, 1, v16) != 1)
      {
        sub_1E5DFE50C(v0[15], &unk_1ED072040, &qword_1E65F0860);
      }

      v19 = v0[23];
      v20 = v0[14];
      v21 = v19 - 1;
      if (v19 == 1)
      {
        v22 = *v20;
        v23 = *v20;
      }

      else
      {
        v22 = 0;
      }

      v24 = v0[18];
      v43 = v22;
      v44 = v24;
      v45 = v0[19];
      v26 = v0[12];
      v25 = v0[13];
      v27 = *(v0[24] + 20);
      v28 = v25[3];
      v29 = v25[4];
      v30 = __swift_project_boxed_opaque_existential_1(v25, v28);
      v31 = sub_1E625E57C(v20 + v27, v22, v30, v24, v28, v29);
      sub_1E5FA0A68(v21, v26);
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = swift_task_alloc();
      *(v38 + 16) = v20;
      *(v38 + 24) = v25;

      v39 = sub_1E5FAAAF4(sub_1E60A1B88, v38, v33, v35, v37);
      swift_unknownObjectRelease();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EA660;
      *(inited + 32) = v31;
      v47 = v39;
      v41 = v31;
      sub_1E5FA9E14(inited);

      sub_1E5E262E0(v44, type metadata accessor for RouteDestination);
      sub_1E5E262E0(v45, type metadata accessor for RouteDestination);

      v42 = v0[1];

      return v42(v47);
    }
  }

  else
  {

    sub_1E5FAA54C();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1E609D200()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_1E609D634;
  }

  else
  {
    v5 = sub_1E609D33C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E609D33C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[15];
    sub_1E60A1B20(v0[19], v0[18], type metadata accessor for RouteDestination);
    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      sub_1E5DFE50C(v0[15], &unk_1ED072040, &qword_1E65F0860);
    }
  }

  else
  {
    sub_1E60A1BA8(v0[15], v0[18], type metadata accessor for RouteDestination);
  }

  v7 = v0[23];
  v8 = v0[14];
  v9 = v7 - 1;
  if (v7 == 1)
  {
    v10 = *v8;
    v11 = *v8;
  }

  else
  {
    v10 = 0;
  }

  v12 = v0[18];
  v32 = v10;
  v33 = v12;
  v34 = v0[19];
  v14 = v0[12];
  v13 = v0[13];
  v15 = *(v0[24] + 20);
  v17 = v13[3];
  v16 = v13[4];
  v18 = __swift_project_boxed_opaque_existential_1(v13, v17);
  v19 = sub_1E625E57C(v8 + v15, v10, v18, v12, v17, v16);
  sub_1E5FA0A68(v9, v14);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = swift_task_alloc();
  *(v26 + 16) = v8;
  *(v26 + 24) = v13;

  v27 = sub_1E5FAAAF4(sub_1E60A1B88, v26, v21, v23, v25);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA660;
  *(inited + 32) = v19;
  v35 = v27;
  v29 = v19;
  sub_1E5FA9E14(inited);

  sub_1E5E262E0(v33, type metadata accessor for RouteDestination);
  sub_1E5E262E0(v34, type metadata accessor for RouteDestination);

  v30 = v0[1];

  return v30(v35);
}

uint64_t sub_1E609D634()
{
  v1 = v0[19];

  sub_1E5E262E0(v1, type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

char *sub_1E609D6E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = *(type metadata accessor for UIViewControllerRoutingContext(0) + 20);
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  result = sub_1E625E57C(a2 + v8, 0, v11, a1, v9, v10);
  *a4 = result;
  return result;
}

uint64_t sub_1E609D768(uint64_t a1, char a2)
{
  *(v2 + 112) = a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_1E65E6058();
  *(v2 + 32) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E609D808, v4, v3);
}

uint64_t sub_1E609D808()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v0[7] = *v1;
  v0[8] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v0[9] = v4;
  v0[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E609D924, v4, v3);
}

uint64_t sub_1E609D924(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 112);
  *(v1 + 88) = sub_1E65E6048();
  v4 = swift_task_alloc();
  *(v1 + 96) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  *(v1 + 104) = v5;
  *v5 = v1;
  v5[1] = sub_1E609DA3C;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E609DA3C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E609DB9C, v3, v2);
}

uint64_t sub_1E609DB9C()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1DB4, v1, v2);
}

uint64_t sub_1E609DC00(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  *(v5 + 145) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v8 = *(type metadata accessor for RouteDestination(0) - 8);
  *(v5 + 32) = v8;
  *(v5 + 40) = *(v8 + 64);
  *(v5 + 48) = swift_task_alloc();
  v9 = type metadata accessor for UIViewControllerRoutingContext(0);
  *(v5 + 56) = v9;
  v10 = *(v9 - 8);
  *(v5 + 64) = v10;
  *(v5 + 72) = *(v10 + 64);
  v11 = swift_task_alloc();
  v12 = *a2;
  *(v5 + 80) = v11;
  *(v5 + 88) = v12;
  *(v5 + 146) = *(a2 + 8);
  *(v5 + 147) = *a4;
  sub_1E65E6058();
  *(v5 + 96) = sub_1E65E6048();
  v14 = sub_1E65E5FC8();
  *(v5 + 104) = v14;
  *(v5 + 112) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1E609DD84, v14, v13);
}

uint64_t sub_1E609DD84()
{
  v1 = *(v0 + 147);
  v2 = *(v0 + 80);
  v18 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 72);
  v17 = *(v0 + 145);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v20 = *(v7 + *(*(v0 + 56) + 24) + 8);
  v8 = *(v0 + 146);
  ObjectType = swift_getObjectType();
  *(v0 + 144) = v1;
  sub_1E60A1B20(v7, v2, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E60A1B20(v6, v4, type metadata accessor for RouteDestination);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v16 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v0 + 120) = v11;
  sub_1E60A1BA8(v2, v11 + v9, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E60A1BA8(v4, v11 + v10, type metadata accessor for RouteDestination);
  *(v11 + v10 + v15) = v17;
  v12 = v11 + ((v10 + v15) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 8) = v18;
  *(v12 + 16) = v8;
  sub_1E5FA9D20(v18, v8);
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FA4398;

  return sub_1E61261B8((v0 + 144), &unk_1E65F0890, v11, ObjectType, v20);
}

uint64_t sub_1E609DF8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 569) = a5;
  *(v5 + 232) = a2;
  *(v5 + 240) = a4;
  *(v5 + 568) = a3;
  *(v5 + 224) = a1;
  *(v5 + 248) = type metadata accessor for UIViewControllerRoutingContext(0);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = type metadata accessor for AppComposer(0);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = sub_1E65E6058();
  *(v5 + 304) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  *(v5 + 312) = v7;
  *(v5 + 320) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E609E0AC, v7, v6);
}

uint64_t sub_1E609E0AC()
{
  v27 = *(v0 + 248);
  v1 = (*(v0 + 224) + *(v27 + 20));
  v29 = *(v0 + 280);
  sub_1E5DFD1CC(v1 + *(v29 + 40), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
  if (*(v0 + 80))
  {
    sub_1E5DF599C((v0 + 56), v0 + 16);
  }

  else
  {
    v2 = *(v0 + 224);
    *(v0 + 40) = *(v0 + 248);
    *(v0 + 48) = &off_1F5FAE3A0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_1E60A1B20(v2, boxed_opaque_existential_1, type metadata accessor for UIViewControllerRoutingContext);
    if (*(v0 + 80))
    {
      sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    }
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 288);
  v25 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 224);
  v26 = *(v0 + 232);
  v8 = *v1;
  sub_1E60A1B20(v1 + v4[5], v5 + v4[5], type metadata accessor for AppEnvironment);
  v9 = *(v1 + v4[6]);
  sub_1E60A1B20(v1 + v4[7], v5 + v4[7], type metadata accessor for AppDataItemResolver);
  v10 = (v1 + v4[9]);
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v29 + 40);
  v30 = *(v1 + v4[8]);
  sub_1E5DF650C(v0 + 16, v5 + v13);
  *v5 = v8;
  *(v5 + v4[6]) = v9;
  *(v5 + v4[8]) = v30;
  v14 = (v5 + v4[9]);
  *v14 = v12;
  v14[1] = v11;
  v15 = v12;
  v16 = *v7;
  *(v0 + 328) = *v7;
  sub_1E60A1B20(v5, v25 + *(v27 + 20), type metadata accessor for AppComposer);
  v28 = *(v7 + v6[6]);
  sub_1E5DFD1CC(v7 + v6[7], v25 + v6[7], &unk_1ED072050, &unk_1E65EEAB0);
  v17 = *(v7 + v6[8]);
  *(v0 + 336) = v17;
  *v25 = v16;
  *(v25 + v6[6]) = v28;
  *(v25 + v6[8]) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v18 = *(type metadata accessor for RouteDestination(0) - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v0 + 344) = v20;
  *(v20 + 16) = xmmword_1E65EA670;
  sub_1E60A1B20(v26, v20 + v19, type metadata accessor for RouteDestination);
  *(v0 + 120) = v6;
  *(v0 + 128) = &off_1F5FAE3A0;
  v21 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_1E60A1B20(v25, v21, type metadata accessor for UIViewControllerRoutingContext);

  swift_unknownObjectRetain();
  sub_1E5FA9D34(v15, v11);
  v22 = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = swift_task_alloc();
  *(v0 + 352) = v23;
  *v23 = v0;
  v23[1] = sub_1E609E47C;

  return sub_1E609CBF0(v20, v0 + 96);
}

uint64_t sub_1E609E47C(uint64_t a1)
{
  v3 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  if (v1)
  {
    v4 = v3[39];
    v5 = v3[40];
    v6 = sub_1E609FE30;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 12);
    v4 = v3[39];
    v5 = v3[40];
    v6 = sub_1E609E5A8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

id sub_1E609E5A8()
{
  v2 = *(v1 + 360);
  if (v2 >> 62)
  {
    if (sub_1E65E67C8())
    {
      goto LABEL_3;
    }

LABEL_34:
    v29 = *(v1 + 288);
    v30 = *(v1 + 272);

    sub_1E5FAA54C();
    swift_allocError();
    *v48 = 3;
    swift_willThrow();
    goto LABEL_35;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E694E2D0](0, *(v1 + 360));
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v3 = *(*(v1 + 360) + 32);
  }

  *(v1 + 376) = v3;

  v4 = [v3 presentationController];
  if (v4)
  {
    v5 = v4;
    [v4 setDelegate_];
  }

  v6 = *(v1 + 328);
  v7 = v3;
  if ([v6 isViewLoaded])
  {
    result = [*(v1 + 328) view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result window];

    if (v10)
    {

      swift_getObjectType();
      v11 = swift_conformsToProtocol2();
      *(v1 + 384) = v11;
      if (!v11 || !v7)
      {
        v32 = swift_task_alloc();
        *(v1 + 392) = v32;
        *v32 = v1;
        v33 = sub_1E609ED64;
LABEL_30:
        v32[1] = v33;
        v47 = *(v1 + 568);

        return sub_1E6394EA4(v47);
      }

      v12 = *(v1 + 328);
      *(v1 + 216) = v12;
      sub_1E5DEF094();
      v13 = v12;
      v0 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074330, &qword_1E65F08A0);
      if (swift_dynamicCast())
      {
        sub_1E5DF599C((v1 + 176), v1 + 136);
        __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
        v14 = sub_1E65E51C8();
        *(v1 + 464) = v14;
        if (v14)
        {
          *(v1 + 472) = v15;
          if (qword_1EE2D7790 != -1)
          {
            swift_once();
          }

          v16 = *(v1 + 264);
          v17 = *(v1 + 224);
          v18 = sub_1E65E3B68();
          __swift_project_value_buffer(v18, qword_1EE2EA2A0);
          sub_1E60A1B20(v17, v16, type metadata accessor for UIViewControllerRoutingContext);
          v19 = v0;
          v20 = sub_1E65E3B48();
          v21 = sub_1E65E6338();

          v22 = os_log_type_enabled(v20, v21);
          v23 = *(v1 + 264);
          if (v22)
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            *v24 = 138412546;
            *(v24 + 4) = v19;
            *v25 = v19;
            *(v24 + 12) = 2112;
            v26 = *v23;
            v27 = v19;
            v28 = v26;
            sub_1E5E262E0(v23, type metadata accessor for UIViewControllerRoutingContext);
            *(v24 + 14) = v28;
            v25[1] = v28;
            _os_log_impl(&dword_1E5DE9000, v20, v21, "Presenting %@ on %@", v24, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072130, &qword_1E65EA840);
            swift_arrayDestroy();
            MEMORY[0x1E694F1C0](v25, -1, -1);
            MEMORY[0x1E694F1C0](v24, -1, -1);
          }

          else
          {

            sub_1E5E262E0(v23, type metadata accessor for UIViewControllerRoutingContext);
          }

          v32 = swift_task_alloc();
          *(v1 + 480) = v32;
          *v32 = v1;
          v33 = sub_1E609F468;
          goto LABEL_30;
        }

        __swift_destroy_boxed_opaque_existential_1((v1 + 136));
      }

      else
      {
        *(v1 + 208) = 0;
        *(v1 + 176) = 0u;
        *(v1 + 192) = 0u;
        sub_1E5DFE50C(v1 + 176, &unk_1ED074338, &qword_1E65F08A8);
      }

      if (qword_1EE2D7790 == -1)
      {
LABEL_24:
        v34 = *(v1 + 256);
        v35 = *(v1 + 224);
        v36 = sub_1E65E3B68();
        __swift_project_value_buffer(v36, qword_1EE2EA2A0);
        sub_1E60A1B20(v35, v34, type metadata accessor for UIViewControllerRoutingContext);
        v37 = v0;
        v38 = sub_1E65E3B48();
        v39 = sub_1E65E6328();

        v40 = os_log_type_enabled(v38, v39);
        v41 = *(v1 + 256);
        if (v40)
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 138412546;
          v44 = *v41;
          sub_1E5E262E0(v41, type metadata accessor for UIViewControllerRoutingContext);
          *(v42 + 4) = v44;
          *(v42 + 12) = 2112;
          *(v42 + 14) = v37;
          *v43 = v44;
          v43[1] = v37;
          v45 = v37;
          _os_log_impl(&dword_1E5DE9000, v38, v39, "%@ did not provide a PiP Surrogate, presenting %@ normally", v42, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072130, &qword_1E65EA840);
          swift_arrayDestroy();
          MEMORY[0x1E694F1C0](v43, -1, -1);
          MEMORY[0x1E694F1C0](v42, -1, -1);
        }

        else
        {

          sub_1E5E262E0(v41, type metadata accessor for UIViewControllerRoutingContext);
        }

        v46 = v37;
        *(v1 + 512) = sub_1E65E6048();
        v32 = swift_task_alloc();
        *(v1 + 520) = v32;
        *v32 = v1;
        v33 = sub_1E609F910;
        goto LABEL_30;
      }

LABEL_40:
      swift_once();
      goto LABEL_24;
    }
  }

  v29 = *(v1 + 288);
  v30 = *(v1 + 272);

  sub_1E5FAA54C();
  swift_allocError();
  *v31 = 8;
  swift_willThrow();

LABEL_35:
  sub_1E5E262E0(v30, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v29, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  v49 = *(v1 + 8);

  return v49();
}

uint64_t sub_1E609ED64()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E609EE84, v3, v2);
}

uint64_t sub_1E609EE84()
{
  *(v0 + 400) = sub_1E61AAA48(*(v0 + 376));
  *(v0 + 408) = sub_1E65E6048();
  v1 = swift_task_alloc();
  *(v0 + 416) = v1;
  *v1 = v0;
  v1[1] = sub_1E609EF54;
  v2 = *(v0 + 568);

  return sub_1E6394EA4(v2);
}

uint64_t sub_1E609EF54()
{
  v1 = *v0;

  v3 = sub_1E65E5FC8();
  *(v1 + 424) = v3;
  *(v1 + 432) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E609F098, v3, v2);
}

uint64_t sub_1E609F098(uint64_t a1)
{
  v2 = *(v1 + 400);
  v3 = *(v1 + 328);
  v4 = *(v1 + 568);
  *(v1 + 440) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v1 + 448) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  v6 = swift_task_alloc();
  *(v1 + 456) = v6;
  *v6 = v1;
  v6[1] = sub_1E609F1B4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E609F1B4()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1E609F314, v3, v2);
}

uint64_t sub_1E609F314()
{

  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1E609F380, v1, v2);
}

uint64_t sub_1E609F380()
{
  v1 = v0[47];
  v2 = v0[36];
  v3 = v0[34];

  sub_1E5E262E0(v3, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v2, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E609F468()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E609F588, v3, v2);
}

uint64_t sub_1E609F588(uint64_t a1)
{
  v2 = *(v1 + 568);
  v6 = *(v1 + 464);
  v7 = *(v1 + 376);
  *(v1 + 488) = sub_1E65E6048();
  v3 = swift_task_alloc();
  *(v1 + 496) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v7;
  *(v3 + 48) = v2;
  v4 = swift_task_alloc();
  *(v1 + 504) = v4;
  *v4 = v1;
  v4[1] = sub_1E609F6B0;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E609F6B0()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E609F810, v3, v2);
}

uint64_t sub_1E609F810()
{
  v1 = v0[47];
  v2 = v0[36];
  v3 = v0[34];

  swift_unknownObjectRelease();
  sub_1E5E262E0(v3, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v2, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E609F910()
{
  v1 = *v0;

  v3 = sub_1E65E5FC8();
  *(v1 + 528) = v3;
  *(v1 + 536) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E609FA58, v3, v2);
}

uint64_t sub_1E609FA58(uint64_t a1)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 328);
  v4 = *(v1 + 568);
  *(v1 + 544) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v1 + 552) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  v6 = swift_task_alloc();
  *(v1 + 560) = v6;
  *v6 = v1;
  v6[1] = sub_1E609FB74;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E609FB74()
{
  v1 = *v0;

  v2 = *(v1 + 536);
  v3 = *(v1 + 528);

  return MEMORY[0x1EEE6DFA0](sub_1E609FCD4, v3, v2);
}

uint64_t sub_1E609FCD4()
{

  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1E609FD44, v1, v2);
}

uint64_t sub_1E609FD44()
{
  v1 = v0[47];
  v2 = v0[36];
  v3 = v0[34];

  sub_1E5E262E0(v3, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v2, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E609FE30()
{
  v1 = v0[36];
  v2 = v0[34];

  sub_1E5E262E0(v2, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v1, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E609FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14[1] = a6;
  v15 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  swift_getObjectType();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_1E65E5198();
}

uint64_t sub_1E60A009C(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  *(v5 + 121) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v8 = type metadata accessor for UIViewControllerRoutingContext(0);
  *(v5 + 32) = v8;
  v9 = *(v8 - 8);
  *(v5 + 40) = v9;
  *(v5 + 48) = *(v9 + 64);
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v5 + 56) = v10;
  *(v5 + 64) = v11;
  *(v5 + 122) = *(a2 + 8);
  *(v5 + 123) = *a4;
  sub_1E65E6058();
  *(v5 + 72) = sub_1E65E6048();
  v13 = sub_1E65E5FC8();
  *(v5 + 80) = v13;
  *(v5 + 88) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E60A01C0, v13, v12);
}

uint64_t sub_1E60A01C0()
{
  v1 = *(v0 + 123);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v14 = *(v0 + 121);
  v7 = *(v0 + 16);
  v16 = *(v6 + *(*(v0 + 32) + 24) + 8);
  v8 = *(v0 + 122);
  ObjectType = swift_getObjectType();
  *(v0 + 120) = v1;
  sub_1E60A1B20(v6, v3, type metadata accessor for UIViewControllerRoutingContext);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v0 + 96) = v10;
  *(v10 + 16) = v7;
  sub_1E60A1BA8(v3, v10 + v9, type metadata accessor for UIViewControllerRoutingContext);
  *(v10 + v9 + v5) = v14;
  v11 = v10 + ((v9 + v5) & 0xFFFFFFFFFFFFFFF8);
  *(v11 + 8) = v2;
  *(v11 + 16) = v8;

  sub_1E5FA9D20(v2, v8);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *v12 = v0;
  v12[1] = sub_1E5FA6F74;

  return sub_1E61261B8((v0 + 120), &unk_1E65F0858, v10, ObjectType, v16);
}

uint64_t sub_1E60A036C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 353) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 352) = a3;
  *(v5 + 136) = a1;
  *(v5 + 160) = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = type metadata accessor for AppComposer(0);
  *(v5 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = sub_1E65E6058();
  *(v5 + 208) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  *(v5 + 216) = v7;
  *(v5 + 224) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E60A04AC, v7, v6);
}

id sub_1E60A04AC()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 144);
    v5 = v2 - 1;
    v6 = type metadata accessor for RouteDestination(0);
    v7 = *(v6 - 8);
    sub_1E60A1B20(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v3, type metadata accessor for RouteDestination);
    (*(v7 + 56))(v3, 0, 1, v6);
    sub_1E5DFE50C(v3, &unk_1ED072040, &qword_1E65F0860);
    v8 = *v4;
    *(v0 + 232) = *v4;
    if ([v8 isViewLoaded])
    {
      result = [v8 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      v11 = [result window];

      if (v11)
      {
        v12 = *(v0 + 176);
        v13 = *(v0 + 144);

        v14 = type metadata accessor for UIViewControllerRoutingContext(0);
        v15 = (v13 + *(v14 + 20));
        v43 = v12;
        sub_1E5DFD1CC(v15 + *(v12 + 40), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
        v42 = v14;
        if (*(v0 + 80))
        {
          sub_1E5DF599C((v0 + 56), v0 + 16);
        }

        else
        {
          v21 = *(v0 + 144);
          *(v0 + 40) = v14;
          *(v0 + 48) = &off_1F5FAE3A0;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          sub_1E60A1B20(v21, boxed_opaque_existential_1, type metadata accessor for UIViewControllerRoutingContext);
          if (*(v0 + 80))
          {
            sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
          }
        }

        v23 = *(v0 + 176);
        v24 = *(v0 + 184);
        v26 = *(v0 + 160);
        v25 = *(v0 + 168);
        v41 = *(v0 + 144);
        v27 = *v15;
        sub_1E60A1B20(v15 + v23[5], v24 + v23[5], type metadata accessor for AppEnvironment);
        v28 = *(v15 + v23[6]);
        sub_1E60A1B20(v15 + v23[7], v24 + v23[7], type metadata accessor for AppDataItemResolver);
        v29 = (v15 + v23[9]);
        v30 = *v29;
        v31 = v29[1];
        v32 = *(v43 + 40);
        v44 = *(v15 + v23[8]);
        sub_1E5DF650C(v0 + 16, v24 + v32);
        *v24 = v27;
        *(v24 + v23[6]) = v28;
        *(v24 + v23[8]) = v44;
        v33 = (v24 + v23[9]);
        *v33 = v30;
        v33[1] = v31;
        v34 = objc_allocWithZone(type metadata accessor for NavigationController());

        swift_unknownObjectRetain();
        sub_1E5FA9D34(v30, v31);
        v35 = [v34 init];
        *(v0 + 240) = v35;
        sub_1E60A1B20(v24, v25 + v26[5], type metadata accessor for AppComposer);
        v45 = *(v41 + v42[6]);
        sub_1E5DFD1CC(v41 + v42[7], v25 + v26[7], &unk_1ED072050, &unk_1E65EEAB0);
        v36 = *(v41 + v42[8]);
        *(v0 + 248) = v36;
        *v25 = v35;
        *(v25 + v26[6]) = v45;
        *(v25 + v26[8]) = v36;
        *(v0 + 120) = v26;
        *(v0 + 128) = &off_1F5FA9B10;
        v37 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
        sub_1E60A1B20(v25, v37, type metadata accessor for NavigationControllerRoutingContext);
        v38 = v35;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v39 = swift_task_alloc();
        *(v0 + 256) = v39;
        *v39 = v0;
        v39[1] = sub_1E60A0A18;
        v40 = *(v0 + 136);

        return sub_1E609CBF0(v40, v0 + 96);
      }
    }

    v16 = 8;
  }

  else
  {
    v17 = *(v0 + 192);
    v18 = type metadata accessor for RouteDestination(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    sub_1E5DFE50C(v17, &unk_1ED072040, &qword_1E65F0860);
    v16 = 3;
  }

  sub_1E5FAA54C();
  swift_allocError();
  *v19 = v16;
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1E60A0A18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {

    v5 = *(v4 + 216);
    v6 = *(v4 + 224);
    v7 = sub_1E60A1354;
  }

  else
  {
    *(v4 + 272) = a1;
    __swift_destroy_boxed_opaque_existential_1((v4 + 96));
    v5 = *(v4 + 216);
    v6 = *(v4 + 224);
    v7 = sub_1E60A0B4C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E60A0B4C()
{
  v1 = *(v0 + 240);
  sub_1E5DEF094();
  v2 = sub_1E65E5EF8();

  [v1 setViewControllers:v2 animated:0];

  v3 = [v1 presentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setDelegate_];
  }

  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_1E60A0C64;
  v6 = *(v0 + 352);

  return sub_1E6394EA4(v6);
}

uint64_t sub_1E60A0C64()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1E60A0D84, v3, v2);
}

uint64_t sub_1E60A0D84()
{
  v1 = *(v0 + 240);
  *(v0 + 288) = sub_1E61AAA48(v1);

  *(v0 + 296) = sub_1E65E6048();
  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = sub_1E60A0E5C;
  v3 = *(v0 + 352);

  return sub_1E6394EA4(v3);
}

uint64_t sub_1E60A0E5C()
{
  v1 = *v0;

  v3 = sub_1E65E5FC8();
  *(v1 + 312) = v3;
  *(v1 + 320) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E60A0FA0, v3, v2);
}

uint64_t sub_1E60A0FA0(uint64_t a1)
{
  v2 = *(v1 + 288);
  v3 = *(v1 + 232);
  v4 = *(v1 + 352);
  *(v1 + 328) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v1 + 336) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  v6 = swift_task_alloc();
  *(v1 + 344) = v6;
  *v6 = v1;
  v6[1] = sub_1E60A10BC;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E60A10BC()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E60A121C, v3, v2);
}

uint64_t sub_1E60A121C()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1E60A1288, v1, v2);
}

uint64_t sub_1E60A1288()
{
  v1 = v0[23];
  v2 = v0[21];

  sub_1E5E262E0(v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E262E0(v1, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E60A1354()
{
  v1 = v0[23];
  v2 = v0[21];

  sub_1E5E262E0(v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E262E0(v1, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E60A1434()
{
  sub_1E65E6058();
  *(v0 + 16) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E60A1F7C, v2, v1);
}

uint64_t sub_1E60A14C8()
{
  sub_1E65E6058();
  *(v0 + 16) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E60A155C, v2, v1);
}

uint64_t sub_1E60A155C()
{

  sub_1E5FAA54C();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E60A15F0(char a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  *(v3 + 104) = a1;
  v4 = *(a2 - 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 + 64);
  *(v3 + 48) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 56) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E60A16E0, v6, v5);
}

uint64_t sub_1E60A16E0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 104);
  v6 = *(v4 + *(*(v0 + 24) + 24) + 8);
  ObjectType = swift_getObjectType();
  sub_1E60A1B20(v4, v1, type metadata accessor for UIViewControllerRoutingContext);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v0 + 80) = v9;
  sub_1E60A1BA8(v1, v9 + v8, type metadata accessor for UIViewControllerRoutingContext);
  *(v9 + v8 + v2) = v5;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_1E5FA935C;

  return sub_1E63387E0(&unk_1E65F08B8, v9, ObjectType, v6);
}

uint64_t sub_1E60A183C(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFA78C;

  return sub_1E609DC00(a1, a2, a3, a4);
}

uint64_t sub_1E60A18F8(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60A009C(a1, a2, a3, a4);
}

uint64_t type metadata accessor for UIViewControllerRoutingContext(uint64_t a1)
{
  result = qword_1ED074348;
  if (!qword_1ED074348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E60A1A00()
{
  v2 = *(type metadata accessor for UIViewControllerRoutingContext(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + v4);
  v6 = *(v0 + 16);
  v7 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E60A036C(v6, v0 + v3, v5, v8, v9);
}

uint64_t sub_1E60A1B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E60A1BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E60A1C10()
{
  v2 = *(type metadata accessor for UIViewControllerRoutingContext(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for RouteDestination(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v0 + v7);
  v9 = v0 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1E5DFA78C;

  return sub_1E609DF8C(v0 + v3, v0 + v6, v8, v10, v11);
}

uint64_t sub_1E60A1D98()
{
  v2 = *(type metadata accessor for UIViewControllerRoutingContext(0) - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E609D768(v3, v4);
}

void sub_1E60A1EB0(uint64_t a1)
{
  sub_1E5DEF094();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppComposer(319);
    if (v2 <= 0x3F)
    {
      sub_1E5E04B54();
      if (v3 <= 0x3F)
      {
        sub_1E5E05158(319);
        if (v4 <= 0x3F)
        {
          sub_1E5E051BC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E60A1F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1E601C548(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1E65E6748();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1E601C548((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1E5F87098(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E60A219C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1E601C17C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  result = sub_1E65E6748();
  v6 = v25;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1E601C17C((v13 > 1), v14 + 1, 1);
      v6 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v14 + 1;
    v15 = v26 + 24 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1E5F87098(result, v12, 0);
          v6 = v25;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v12, 0);
      v6 = v25;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E60A23CC(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), char a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v29 = a2;
  v32 = MEMORY[0x1E69E7CC0];
  v30 = *(a1 + 16);
  a2(0, v4, 0);
  v5 = v32;
  v7 = a1 + 56;
  result = sub_1E65E6748();
  v9 = v30;
  v10 = 0;
  v11 = a3;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v13 = result >> 6;
    v14 = 1 << result;
    if ((*(v7 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(*(a1 + 48) + result);
    v16 = *(a1 + 36);
    v18 = *(v32 + 16);
    v17 = *(v32 + 24);
    if (v18 >= v17 >> 1)
    {
      v27 = *(a1 + 36);
      v28 = result;
      v29(v17 > 1, v18 + 1, 1);
      v9 = v30;
      v11 = a3;
      v16 = v27;
      result = v28;
    }

    *(v32 + 16) = v18 + 1;
    v19 = v32 + 24 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = 0;
    *(v19 + 48) = v11;
    v12 = 1 << *(a1 + 32);
    if (result >= v12)
    {
      goto LABEL_22;
    }

    v20 = *(v7 + 8 * v13);
    if ((v20 & v14) == 0)
    {
      goto LABEL_23;
    }

    if (v16 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (result & 0x3F));
    if (v21)
    {
      v12 = __clz(__rbit64(v21)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v13 << 6;
      v23 = v13 + 1;
      v24 = (a1 + 64 + 8 * v13);
      while (v23 < (v12 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          sub_1E5F87098(result, v16, 0);
          v9 = v30;
          v11 = a3;
          v12 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v16, 0);
      v9 = v30;
      v11 = a3;
    }

LABEL_4:
    ++v10;
    result = v12;
    if (v10 == v9)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E60A2620@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v129 = a3;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074358, &qword_1E65F08E8);
  v121 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v97 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729C8, &qword_1E65EC1A0);
  MEMORY[0x1EEE9AC00](v123);
  v118 = &v97 - v9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729C0, &qword_1E65EC198);
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v120 = &v97 - v10;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729B8, &qword_1E65EC190);
  v128 = *(v127 - 8);
  v11 = MEMORY[0x1EEE9AC00](v127);
  v122 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v124 = &v97 - v13;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074360, &qword_1E65F08F0);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v97 - v14;
  v111 = sub_1E65DF488();
  v114 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v139 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppComposer(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8);
  v107 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v105 = &v97 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v101 = &v97 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v100 = &v97 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v97 - v26;
  v28 = sub_1E65DF518();
  v141 = *(v28 - 8);
  v142 = v28;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v108 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v138 = &v97 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8);
  v113 = *(v32 - 8);
  v110 = *(v113 + 64);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v109 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v140 = &v97 - v35;
  v102 = *a2;
  v36 = a2[1];
  v99 = a2 + 1;
  v143 = v36;
  v149 = *(a2 + 1);
  v37 = a2[4];
  v137 = a2[5];
  v38 = a2[6];
  v144 = v37;
  v145 = v38;
  v39 = a2[7];
  v133 = a2[8];
  v135 = a2[9];
  v136 = v39;
  v134 = a2[10];
  sub_1E60A36E8(v102, a4, (a2 + 1), &v97 - v35);
  v40 = v4;
  v106 = v27;
  sub_1E5E1D41C(v4, v27, type metadata accessor for AppComposer);
  v41 = *(v17 + 80);
  v42 = (v41 + 16) & ~v41;
  v43 = swift_allocObject();
  v104 = v43;
  sub_1E5E1E0B0(v27, v43 + v42, type metadata accessor for AppComposer);
  v132 = a1;
  *(v43 + v42 + v18) = a1;
  v44 = v100;
  sub_1E5E1D41C(v40, v100, type metadata accessor for AppComposer);
  v97 = v42 + v18;
  v103 = swift_allocObject();
  v130 = v42;
  sub_1E5E1E0B0(v44, v103 + v42, type metadata accessor for AppComposer);
  v45 = v101;
  sub_1E5E1D41C(v40, v101, type metadata accessor for AppComposer);
  v100 = swift_allocObject();
  sub_1E5E1E0B0(v45, v100 + v42, type metadata accessor for AppComposer);
  v131 = v40;
  v46 = v105;
  sub_1E5E1D41C(v40, v105, type metadata accessor for AppComposer);
  v47 = swift_allocObject();
  *(v47 + 16) = a1;
  sub_1E5E1E0B0(v46, v47 + ((v41 + 17) & ~v41), type metadata accessor for AppComposer);
  v48 = swift_allocObject();
  v49 = *(a2 + 3);
  v50 = *(a2 + 7);
  v48[3] = *(a2 + 5);
  v48[4] = v50;
  v48[5] = *(a2 + 9);
  v48[1] = *v99;
  v48[2] = v49;
  v51 = v107;
  sub_1E5E1D41C(v40, v107, type metadata accessor for AppComposer);
  v52 = v97;
  v53 = swift_allocObject();
  v54 = v130;
  v98 = type metadata accessor for AppComposer;
  sub_1E5E1E0B0(v51, v53 + v130, type metadata accessor for AppComposer);
  swift_retain_n();
  swift_unknownObjectRetain();

  v55 = v138;
  sub_1E65DF508();
  v56 = v131;
  v107 = *v131;
  (*(v141 + 16))(v108, v55, v142);
  sub_1E65DF478();
  v57 = v106;
  sub_1E5E1D41C(v56, v106, type metadata accessor for AppComposer);
  v58 = swift_allocObject();
  sub_1E5E1E0B0(v57, v58 + v54, type metadata accessor for AppComposer);
  LOBYTE(v55) = v132;
  *(v58 + v52) = v132;
  *(swift_allocObject() + 16) = v55;
  type metadata accessor for AppFeature(0);
  sub_1E60C330C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v108 = sub_1E60C330C(&qword_1EE2D67B0, MEMORY[0x1E699E660], MEMORY[0x1E699E658]);
  v59 = v112;
  v60 = v111;
  sub_1E65E4DE8();
  sub_1E5E1D41C(v131, v57, type metadata accessor for AppComposer);
  v61 = swift_allocObject();
  sub_1E5E1E0B0(v57, v61 + v130, v98);
  v62 = v61 + ((v52 + 7) & 0xFFFFFFFFFFFFFFF8);
  v63 = v144;
  *v62 = v143;
  *(v62 + 8) = v149;
  v64 = v136;
  v65 = v137;
  *(v62 + 24) = v63;
  *(v62 + 32) = v65;
  *(v62 + 40) = v145;
  *(v62 + 48) = v64;
  v66 = v133;
  v67 = v134;
  v68 = v135;
  *(v62 + 56) = v133;
  *(v62 + 64) = v68;
  *(v62 + 72) = v67;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1E60AB358;
  *(v69 + 24) = v61;

  v70 = v139;
  v71 = v59;
  v72 = sub_1E65E4F08();

  (*(v115 + 8))(v71, v116);
  (*(v114 + 8))(v70, v60);
  v73 = v109;
  sub_1E5E7D318(v140, v109);
  v74 = (*(v113 + 80) + 16) & ~*(v113 + 80);
  v75 = (v110 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  sub_1E5E7D50C(v73, v76 + v74);
  v77 = v76 + v75;
  v78 = v144;
  *v77 = v143;
  *(v77 + 8) = v149;
  v79 = v136;
  v80 = v137;
  *(v77 + 24) = v78;
  *(v77 + 32) = v80;
  *(v77 + 40) = v145;
  *(v77 + 48) = v79;
  v81 = v135;
  *(v77 + 56) = v66;
  *(v77 + 64) = v81;
  *(v77 + 72) = v67;
  swift_unknownObjectRetain();

  v131 = v72;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074388, &qword_1E65F0978);
  sub_1E60BDF64();
  v82 = v117;
  sub_1E65DF358();
  v147 = 0;
  v148 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD000000000000015, 0x80000001E6610EC0);
  LOBYTE(v66) = v132;
  v146 = v132;
  sub_1E65E69B8();
  sub_1E5FED46C(&qword_1ED0743B8, &qword_1ED074358, &qword_1E65F08E8, MEMORY[0x1E699E5E8]);
  v83 = v118;
  v84 = v119;
  sub_1E65E48C8();

  (*(v121 + 8))(v82, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1E65EA670;
  v147 = 0;
  v148 = 0xE000000000000000;
  v146 = v66;
  sub_1E65E69B8();
  v86 = v148;
  *(v85 + 32) = v147;
  *(v85 + 40) = v86;
  v87 = sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0, MEMORY[0x1E6981810]);
  v88 = v120;
  v89 = v123;
  sub_1E65E4708();

  sub_1E5DFE50C(v83, &qword_1ED0729C8, &qword_1E65EC1A0);
  v147 = v89;
  v148 = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = v122;
  v92 = v125;
  sub_1E65E46D8();

  (*(v126 + 8))(v88, v92);
  (*(v141 + 8))(v138, v142);
  sub_1E5DFE50C(v140, &qword_1ED074368, &qword_1E65F08F8);
  v147 = v92;
  v148 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v93 = v124;
  v94 = v127;
  sub_1E5FEE4C8();
  v95 = *(v128 + 8);
  v95(v91, v94);
  sub_1E5FEE4C8();
  return (v95)(v93, v94);
}

uint64_t sub_1E60A36E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v176 = a2;
  v175 = a1;
  v168 = a4;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v7 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v170 = v136 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v169 = v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v171 = v136 - v12;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v153 = *(v167 - 8);
  v13 = MEMORY[0x1EEE9AC00](v167);
  v149 = v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v150 = v136 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v152 = v136 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v151 = v136 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743A8, &qword_1E65F0980);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v136 - v21;
  v23 = type metadata accessor for AppComposer(0);
  v24 = v23 - 8;
  v25 = *(v23 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v161 = v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v136 - v28;
  v177 = sub_1E65D76F8();
  v172 = *(v177 - 8);
  v30 = *(v172 + 64);
  v31 = MEMORY[0x1EEE9AC00](v177);
  v174 = v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v178 = v136 - v32;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8);
  MEMORY[0x1EEE9AC00](v164);
  v34 = v136 - v33;
  v35 = *(v5 + *(v24 + 28) + 8);
  v166 = v22;
  v165 = v20;
  v163 = v34;
  v162 = v30;
  v173 = v5;
  if (v35 < 2)
  {
    v156 = type metadata accessor for AppComposer;
    sub_1E5E1D41C(v5, v29, type metadata accessor for AppComposer);
    sub_1E5DF650C(v176, &v185);
    v143 = *a3;
    v144 = *(a3 + 24);
    v158 = *(a3 + 40);
    v159 = *(a3 + 56);
    v160 = *(a3 + 72);
    v36 = *(v25 + 80);
    v37 = (v36 + 16) & ~v36;
    v157 = v37 + v26;
    v154 = v36 | 7;
    v38 = (v37 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v142 = v38;
    v155 = (v38 + 47) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    v147 = v39;
    sub_1E5E1E0B0(v29, v39 + v37, type metadata accessor for AppComposer);
    sub_1E5DF599C(&v185, v39 + v38);
    v40 = (v39 + ((v38 + 47) & 0xFFFFFFFFFFFFFFF8));
    v41 = *(a3 + 48);
    v40[2] = *(a3 + 32);
    v40[3] = v41;
    v40[4] = *(a3 + 64);
    v42 = *(a3 + 16);
    *v40 = *a3;
    v40[1] = v42;
    v43 = sub_1E65E3E08();
    (*(*(v43 - 8) + 56))(v171, 1, 1, v43);
    swift_unknownObjectRetain();

    v44 = v178;
    sub_1E65D76E8();
    (*(v7 + 104))(v170, *MEMORY[0x1E699D720], v148);
    v45 = v173;
    v46 = v161;
    v47 = v156;
    sub_1E5E1D41C(v173, v161, v156);
    v148 = swift_allocObject();
    sub_1E5E1E0B0(v46, v148 + v37, type metadata accessor for AppComposer);
    sub_1E5E1D41C(v45, v46, v47);
    v146 = swift_allocObject();
    sub_1E5E1E0B0(v46, v146 + v37, type metadata accessor for AppComposer);
    sub_1E5E1D41C(v45, v46, v47);
    v145 = swift_allocObject();
    v48 = v37;
    v138 = v37;
    v137 = type metadata accessor for AppComposer;
    sub_1E5E1E0B0(v46, v145 + v37, type metadata accessor for AppComposer);
    sub_1E5E1D41C(v45, v46, v47);
    sub_1E5DF650C(v176, &v183);
    v49 = v172;
    v50 = *(v172 + 16);
    v140 = v172 + 16;
    v141 = v50;
    v50(v174, v44, v177);
    v51 = v155;
    v52 = (v155 + 87) & 0xFFFFFFFFFFFFFFF8;
    v139 = v52;
    v53 = (v52 + 8 + *(v49 + 80)) & ~*(v49 + 80);
    v54 = swift_allocObject();
    sub_1E5E1E0B0(v46, v54 + v48, type metadata accessor for AppComposer);
    v55 = v142;
    sub_1E5DF599C(&v183, v54 + v142);
    v162 = v54;
    v56 = (v54 + v51);
    v57 = *(a3 + 48);
    v56[2] = *(a3 + 32);
    v56[3] = v57;
    v56[4] = *(a3 + 64);
    v58 = *(a3 + 16);
    *v56 = *a3;
    v56[1] = v58;
    *(v54 + v52) = v175;
    v59 = *(v49 + 32);
    v60 = v54 + v53;
    v61 = v174;
    v62 = v177;
    v59(v60, v174, v177);
    v63 = v156;
    sub_1E5E1D41C(v173, v46, v156);
    sub_1E5DF650C(v176, &v183);
    v64 = swift_allocObject();
    v65 = v138;
    v66 = v137;
    sub_1E5E1E0B0(v46, v64 + v138, v137);
    sub_1E5DF599C(&v183, v64 + v55);
    v67 = (v64 + v155);
    v176 = v64;
    v68 = *(a3 + 48);
    v67[2] = *(a3 + 32);
    v67[3] = v68;
    v67[4] = *(a3 + 64);
    v69 = *(a3 + 16);
    *v67 = *a3;
    v67[1] = v69;
    *(v64 + v139) = v175;
    sub_1E5E1D41C(v173, v46, v63);
    v173 = swift_allocObject();
    sub_1E5E1E0B0(v46, v173 + v65, v66);
    sub_1E5DFD1CC(v171, v169, &qword_1ED074410, &qword_1E65F0B78);
    v141(v61, v178, v62);
    v161 = type metadata accessor for ActionButtonDescriptor(0);
    swift_retain_n();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
    v159 = type metadata accessor for ArtworkDescriptor(0);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
    v155 = type metadata accessor for ContextMenu(0);
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v143 = type metadata accessor for ItemContext(0);
    v142 = type metadata accessor for ItemMetrics(0);
    v141 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
    v139 = type metadata accessor for SectionMetrics(0);
    v138 = type metadata accessor for ViewDescriptor(0);
    v137 = sub_1E60C330C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
    v136[6] = sub_1E60731B0();
    v136[5] = sub_1E60C330C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    v136[4] = sub_1E5FEB2FC();
    v136[3] = sub_1E60C08DC();
    v136[2] = sub_1E60C15C0();
    v136[1] = sub_1E60C330C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
    v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
    v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v72 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
    *&v183 = v71;
    *(&v183 + 1) = v72;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v183 = v70;
    *(&v183 + 1) = OpaqueTypeConformance2;
    v136[0] = swift_getOpaqueTypeConformance2();
    sub_1E60728B0();
    sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E60C330C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E60C330C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
    sub_1E60C217C();
    sub_1E60C330C(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
    sub_1E5DF11E0();
    sub_1E5DF1338();
    sub_1E60C330C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v74 = v149;
    sub_1E65DC198();
    (*(v172 + 8))(v178, v177);
    sub_1E5DFE50C(v171, &qword_1ED074410, &qword_1E65F0B78);
    v75 = sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
    v76 = v150;
    v77 = v167;
    sub_1E5FEE4C8();
    v78 = *(v153 + 8);
    v78(v74, v77);
    v79 = v152;
    sub_1E5FEE4C8();
    v78(v76, v77);
    v80 = v151;
    sub_1E5FEE4C8();
    v78(v79, v77);
    sub_1E5FEE4C8();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072720, &qword_1E65EBBD0);
    v82 = sub_1E5FEAB1C();
    v83 = v166;
    sub_1E62DFB74(v79, v81, v77, v82, v75);
    v84 = sub_1E60BE0B8();
    v85 = v163;
    sub_1E62DFC6C(v83, v165, MEMORY[0x1E69E73E0], v84, MEMORY[0x1E6982070]);
    sub_1E5DFE50C(v83, &qword_1ED0743A8, &qword_1E65F0980);
    v78(v79, v77);
    v78(v80, v77);
LABEL_7:
    sub_1E60BE02C();
    sub_1E5FEE4C8();
    return sub_1E5DFE50C(v85, &qword_1ED074368, &qword_1E65F08F8);
  }

  v86 = v176;
  if (v35 == 3)
  {
    sub_1E65D76E8();
    sub_1E5E1D41C(v5, v29, type metadata accessor for AppComposer);
    sub_1E5DF650C(v86, &v185);
    v87 = *a3;
    v88 = *(a3 + 24);
    v89 = *(a3 + 40);
    v170 = *(a3 + 56);
    v171 = *(a3 + 72);
    v90 = *(v25 + 80);
    v156 = ~v90;
    v91 = (v90 + 16) & ~v90;
    v155 = v26 + 7;
    v92 = (v26 + 7 + v91) & 0xFFFFFFFFFFFFFFF8;
    v157 = v90 | 7;
    v93 = swift_allocObject();
    sub_1E5E1E0B0(v29, v93 + v91, type metadata accessor for AppComposer);
    sub_1E5DF599C(&v185, v93 + v92);
    v169 = v93;
    v94 = (v93 + ((v92 + 47) & 0xFFFFFFFFFFFFFFF8));
    v95 = *(a3 + 48);
    v94[2] = *(a3 + 32);
    v94[3] = v95;
    v94[4] = *(a3 + 64);
    v96 = *(a3 + 16);
    *v94 = *a3;
    v94[1] = v96;
    v158 = v87;
    swift_unknownObjectRetain();
    v159 = v88;

    v160 = v89;

    LODWORD(v154) = sub_1E65E4418();
    if (qword_1ED071B28 != -1)
    {
      swift_once();
    }

    v97 = sub_1E65E3C48();
    __swift_project_value_buffer(v97, qword_1ED0966C0);
    v98 = v161;
    sub_1E5E1D41C(v173, v161, type metadata accessor for AppComposer);
    sub_1E5DF650C(v176, &v183);
    v99 = v172;
    v100 = v174;
    (*(v172 + 16))(v174, v178, v177);
    v101 = (v90 + 17) & v156;
    v102 = (v155 + v101) & 0xFFFFFFFFFFFFFFF8;
    v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
    v104 = (v103 + 47) & 0xFFFFFFFFFFFFFFF8;
    v105 = (v104 + 87) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v105 + *(v99 + 80) + 16) & ~*(v99 + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = v154;
    sub_1E5E1E0B0(v98, v107 + v101, type metadata accessor for AppComposer);
    *(v107 + v102) = v175;
    sub_1E5DF599C(&v183, v107 + v103);
    v108 = (v107 + v104);
    v109 = *(a3 + 48);
    v108[2] = *(a3 + 32);
    v108[3] = v109;
    v108[4] = *(a3 + 64);
    v110 = *(a3 + 16);
    *v108 = *a3;
    v108[1] = v110;
    v111 = (v107 + v105);
    v112 = v169;
    *v111 = sub_1E60C34A0;
    v111[1] = v112;
    v113 = v172;
    v114 = v177;
    (*(v172 + 32))(v107 + v106, v100, v177);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727B0, &qword_1E65EBC30);
    v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727B8, &qword_1E65EBC38);
    v116 = sub_1E65E0AA8();
    v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727C0, &qword_1E65EBC40);
    v118 = sub_1E5FED46C(&qword_1ED0727C8, &qword_1ED0727C0, &qword_1E65EBC40, MEMORY[0x1E697BE60]);
    *&v180 = v117;
    *(&v180 + 1) = v118;
    v119 = swift_getOpaqueTypeConformance2();
    v120 = sub_1E60C330C(&qword_1EE2D6550, MEMORY[0x1E699DB08], MEMORY[0x1E699DB00]);
    *&v180 = v115;
    *(&v180 + 1) = v116;
    v181 = v119;
    v182 = v120;
    swift_getOpaqueTypeConformance2();
    *&v183 = sub_1E65E3E28();
    *(&v183 + 1) = v121;
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072758, &qword_1E65EBBF0);
    v123 = sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0, MEMORY[0x1E697C268]);
    sub_1E5FEE4C8();

    v183 = v180;
    sub_1E5FEE4C8();
    v179[0] = v179[2];
    v179[1] = v179[3];

    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072748, &qword_1E65EBBE8);
    v125 = sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8, MEMORY[0x1E697E378]);
    sub_1E62DFB74(v179, v124, v122, v125, v123);

    (*(v113 + 8))(v178, v114);

    v126 = v183;
    v180 = v183;
    LOBYTE(v181) = v184;
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072720, &qword_1E65EBBD0);
    v128 = sub_1E5FEAB1C();
    sub_1E5FEE4C8();
    sub_1E5FEBB58(v126, *(&v126 + 1));
    v129 = v183;
    sub_1E5FEE4C8();
    sub_1E5FEBB58(v129, *(&v129 + 1));
    v130 = v185;
    v180 = v185;
    LOBYTE(v181) = v186;
    sub_1E5FEE4C8();
    v131 = v183;
    v180 = v183;
    LOBYTE(v181) = v184;
    v132 = sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
    v133 = v166;
    sub_1E62DFC6C(&v180, v127, v167, v128, v132);
    v134 = sub_1E60BE0B8();
    v85 = v163;
    sub_1E62DFC6C(v133, v165, MEMORY[0x1E69E73E0], v134, MEMORY[0x1E6982070]);
    sub_1E5DFE50C(v133, &qword_1ED0743A8, &qword_1E65F0980);
    sub_1E5FEBB58(v131, *(&v131 + 1));
    sub_1E5FEBB58(v130, *(&v130 + 1));
    goto LABEL_7;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E60A5184(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  sub_1E61E66C8(a1, a3, a4, v15 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v12 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v15[0] = v11;
  v15[1] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v10, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E60A5304@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v83 = a2;
  v76 = a4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v5 = MEMORY[0x1EEE9AC00](v74);
  v77 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v64 - v11;
  v12 = sub_1E65D7848();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = sub_1E65DF4B8();
  MEMORY[0x1EEE9AC00](v64);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C0, &qword_1E65F0988);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v64 - v16;
  v18 = sub_1E65DF438();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v81 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v82 = &v64 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v72 = &v64 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v71 = &v64 - v26;
  v27 = sub_1E65DF658();
  v78 = *(v27 - 8);
  v79 = v27;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - v31;
  v33 = type metadata accessor for AppState(0);
  v34 = v83[*(type metadata accessor for AppComposer(0) + 20) + 8];
  v83 = v32;
  v35 = v65;
  sub_1E6093FD0(v34);
  v80 = v33;
  v36 = *(v33 + 172);
  v75 = a1;
  v37 = *(a1 + v36 + 8);
  if (*(v37 + 16) && (v38 = sub_1E6416C34(v35), (v39 & 1) != 0))
  {
    (*(v19 + 16))(v17, *(v37 + 56) + *(v19 + 72) * v38, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    v40 = v71;
    (*(v19 + 32))(v71, v17, v18);
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    (*(v78 + 16))(v30, v83, v79);
    swift_storeEnumTagMultiPayload();
    sub_1E65D77C8();
    v40 = v71;
    sub_1E65DF3E8();
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_1E5DFE50C(v17, &qword_1ED0743C0, &qword_1E65F0988);
    }
  }

  sub_1E65DF418();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v41 = v67;
  sub_1E65E4C98();
  v42 = v66;
  sub_1E5E1F544(v66);
  sub_1E5DFE50C(v41, &qword_1ED071F78, &unk_1E65EA3F0);
  v44 = v69;
  v43 = v70;
  v45 = *(v69 + 48);
  v46 = v45(v42, 1, v70);
  v47 = v77;
  if (v46 == 1)
  {
    v48 = v18;
    v49 = v40;
    v50 = v68;
    sub_1E65D77C8();
    v51 = v45(v42, 1, v43);
    v52 = v50;
    v40 = v49;
    v18 = v48;
    v47 = v77;
    if (v51 != 1)
    {
      sub_1E5DFE50C(v42, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    v52 = v68;
    (*(v44 + 32))(v68, v42, v43);
  }

  v53 = v81;
  sub_1E65DF3F8();
  (*(v44 + 8))(v52, v43);
  v54 = *(v19 + 8);
  v54(v53, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v55 = v73;
  sub_1E65E4C98();
  sub_1E5FAB460(v55, v47, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    v58 = *v47;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v47, &qword_1ED072910, &qword_1E65EC030);
LABEL_16:
    v58 = MEMORY[0x1E69E7CD0];
    goto LABEL_17;
  }

  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
  v58 = *v47;
  v59 = sub_1E65D76A8();
  (*(*(v59 - 8) + 8))(v47 + v57, v59);
LABEL_17:
  v60 = sub_1E60A1F80(v58);

  sub_1E600BD5C(v60);

  v61 = v72;
  v62 = v82;
  sub_1E65DF3C8();

  v54(v62, v18);
  sub_1E63969B4();
  sub_1E65DF428();
  v54(v61, v18);
  v54(v40, v18);
  return (*(v78 + 8))(v83, v79);
}

uint64_t sub_1E60A5BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C0, &qword_1E65F0988);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1E65DF438();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  type metadata accessor for AppState(0);
  return sub_1E6407998(v7, a3);
}

uint64_t sub_1E60A5CDC(uint64_t a1)
{
  v2 = sub_1E65DF468();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  result = (*(v3 + 88))(v5, v2);
  if (result == *MEMORY[0x1E699E630])
  {
    return (*(v3 + 8))(v5, v2);
  }

  v7 = result == *MEMORY[0x1E699E648] || result == *MEMORY[0x1E699E640];
  v8 = v7 || result == *MEMORY[0x1E699E650];
  if (!v8 && result != *MEMORY[0x1E699E638])
  {
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1E60A5E2C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074388, &qword_1E65F0978);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8);
  v10 = sub_1E60BE02C();
  sub_1E630FCD8(a2, v9, v10, v6);
  sub_1E60BDF64();
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v6, &qword_1ED074388, &qword_1E65F0978);
  sub_1E5FEE4C8();
  return sub_1E5DFE50C(v8, &qword_1ED074388, &qword_1E65F0978);
}

uint64_t sub_1E60A5F7C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E60C34A4;

  return sub_1E60A6108(v3);
}

uint64_t sub_1E60A6018()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5FE99E8;

  return sub_1E60A5F7C(v3, v4);
}

uint64_t sub_1E60A6108(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 520) = a1;
  v3 = sub_1E65D7B58();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  v4 = sub_1E65D8BD8();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_1E65DAEB8();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  v6 = sub_1E65D86C8();
  *(v2 + 112) = v6;
  *(v2 + 120) = *(v6 - 8);
  *(v2 + 128) = swift_task_alloc();
  v7 = sub_1E65DADD8();
  *(v2 + 136) = v7;
  *(v2 + 144) = *(v7 - 8);
  *(v2 + 152) = swift_task_alloc();
  v8 = sub_1E65DF3B8();
  *(v2 + 160) = v8;
  *(v2 + 168) = *(v8 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v9 = sub_1E65D8438();
  *(v2 + 224) = v9;
  *(v2 + 232) = *(v9 - 8);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  *(v2 + 280) = v10;
  *(v2 + 288) = *(v10 - 8);
  *(v2 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60A64EC, 0, 0);
}

uint64_t sub_1E60A64EC()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  sub_1E5FAB460(v4, v5, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 3)
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = **(v0 + 264);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(v0 + 264);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
      v9 = *v7;
      v10 = sub_1E65D76A8();
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
      goto LABEL_8;
    }

    sub_1E5DFE50C(*(v0 + 264), &qword_1ED072910, &qword_1E65EC030);
  }

  v9 = MEMORY[0x1E69E7CD0];
LABEL_8:
  v11 = *(v0 + 520);
  if (v11 > 3)
  {
    if (*(v0 + 520) > 5u)
    {
      if (v11 == 6)
      {

        v27 = swift_task_alloc();
        *(v0 + 512) = v27;
        *v27 = v0;
        v27[1] = sub_1E60A91E4;

        return sub_1E60B3068();
      }
    }

    else if (v11 == 4)
    {

      type metadata accessor for AppComposer(0);
      type metadata accessor for AppEnvironment(0);
      v17 = BookmarkService.queryBookmarksByReferenceTypes.getter();
      *(v0 + 440) = v18;
      v19 = sub_1E5F9B84C(&unk_1F5FA83E0);
      *(v0 + 448) = v19;
      v47 = (v17 + *v17);
      v20 = swift_task_alloc();
      *(v0 + 456) = v20;
      *v20 = v0;
      v21 = sub_1E60A86AC;
      goto LABEL_28;
    }

    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v29 = AssetService.filterAssetBundlesOnCurrentDevice.getter();
    *(v0 + 480) = v30;
    v31 = sub_1E60A23CC(v9, sub_1E601C600, 0);

    sub_1E5FA9F88(&unk_1F5FA8408);
    sub_1E600BE38(v31);

    sub_1E65D8BC8();
    v48 = (v29 + *v29);
    v32 = swift_task_alloc();
    *(v0 + 488) = v32;
    *v32 = v0;
    v32[1] = sub_1E60A8C0C;
    v33 = *(v0 + 80);
LABEL_34:
    v26 = v33;
LABEL_35:
    v42 = v48;

    return v42(v26);
  }

  if (*(v0 + 520) > 1u)
  {
    if (v11 == 2)
    {
      type metadata accessor for AppComposer(0);
      type metadata accessor for AppEnvironment(0);
      v22 = BookmarkService.filterPlaylists.getter();
      *(v0 + 368) = v23;
      v24 = sub_1E60A219C(v9);

      sub_1E600AAA0(v24);

      sub_1E65D86B8();
      v48 = (v22 + *v22);
      v25 = swift_task_alloc();
      *(v0 + 376) = v25;
      *v25 = v0;
      v25[1] = sub_1E60A7ACC;
      v26 = *(v0 + 128);
      goto LABEL_35;
    }

    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v40 = BookmarkService.queryBookmarksByReferenceTypes.getter();
    *(v0 + 400) = v41;
    v19 = sub_1E5F9B84C(&unk_1F5FA83B8);
    *(v0 + 408) = v19;
    v47 = (v40 + *v40);
    v20 = swift_task_alloc();
    *(v0 + 416) = v20;
    *v20 = v0;
    v21 = sub_1E60A814C;
LABEL_28:
    v20[1] = v21;
    v26 = v19;
    v42 = v47;

    return v42(v26);
  }

  if (*(v0 + 520))
  {
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v34 = BookmarkService.filterBookmarks.getter();
    *(v0 + 336) = v35;
    if (qword_1ED071890 != -1)
    {
      swift_once();
    }

    v37 = sub_1E60A23CC(v36, sub_1E601C638, 1);

    v38 = sub_1E60A23CC(v9, sub_1E601C638, 0);

    sub_1E5FA9FA8(v38);
    sub_1E600BD90(v37);

    sub_1E65D8428();
    v48 = (v34 + *v34);
    v39 = swift_task_alloc();
    *(v0 + 344) = v39;
    *v39 = v0;
    v39[1] = sub_1E60A74F8;
    v33 = *(v0 + 240);
    goto LABEL_34;
  }

  v12 = *(v0 + 32);
  v13 = v12 + *(type metadata accessor for AppComposer(0) + 20);
  type metadata accessor for AppEnvironment(0);
  v14 = BookmarkService.filterBookmarks.getter();
  *(v0 + 304) = v15;
  v16 = &unk_1F5FA7FD0;
  if (*(v13 + 8) <= 1u)
  {
    if (!*(v13 + 8))
    {
      v16 = &unk_1F5FA7FA8;
    }

    goto LABEL_33;
  }

  if (*(v13 + 8) != 2)
  {
LABEL_33:
    v43 = sub_1E5F9B388(v16);
    v44 = sub_1E60A23CC(v43, sub_1E601C638, 1);

    v45 = sub_1E60A23CC(v9, sub_1E601C638, 0);

    sub_1E5FA9FA8(v45);
    sub_1E600BD90(v44);

    sub_1E65D8428();
    v48 = (v14 + *v14);
    v46 = swift_task_alloc();
    *(v0 + 312) = v46;
    *v46 = v0;
    v46[1] = sub_1E60A6F24;
    v33 = *(v0 + 248);
    goto LABEL_34;
  }

  return sub_1E65E69D8();
}

uint64_t sub_1E60A6F24(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v5 = *(*v2 + 232);
  v6 = *(*v2 + 224);
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_1E60A94E4;
  }

  else
  {
    v7 = sub_1E60A70BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60A70BC()
{
  v29 = v0;
  v1 = v0[40];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[18];
    v3 = sub_1E64F72CC(*(v1 + 16), 0);
    v5 = sub_1E62594B8(&v28, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    v6 = v28;

    result = sub_1E5E24EE4(v6);
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  v8 = v0[41];
  v28 = v3;
  sub_1E60BB100(&v28);
  if (v8)
  {
  }

  v9 = v28;
  v10 = v28[2];
  if (v10)
  {
    v11 = v0[21];
    v12 = v0[18];
    v28 = MEMORY[0x1E69E7CC0];
    sub_1E601C5BC(0, v10, 0);
    v13 = v28;
    v15 = *(v12 + 16);
    v14 = v12 + 16;
    v16 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v25 = *(v14 + 56);
    v26 = v15;
    do
    {
      v17 = v0[19];
      v18 = v0[17];
      v26(v17, v16, v18);
      sub_1E65DADA8();
      sub_1E65DF368();
      (*(v14 - 8))(v17, v18);
      v28 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1E601C5BC((v19 > 1), v20 + 1, 1);
        v13 = v28;
      }

      v21 = v0[27];
      v22 = v0[20];
      *(v13 + 16) = v20 + 1;
      (*(v11 + 32))(v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v21, v22);
      v16 += v25;
      --v10;
    }

    while (v10);

    if (*(v13 + 16))
    {
      goto LABEL_13;
    }

LABEL_15:

    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  sub_1E65DF4F8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v27 = v23;
  sub_1E65DF4C8();
LABEL_16:

  v24 = v0[1];

  return v24(v27);
}

uint64_t sub_1E60A74F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v5 = *(*v2 + 232);
  v6 = *(*v2 + 224);
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_1E60A961C;
  }

  else
  {
    v7 = sub_1E60A7690;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60A7690()
{
  v29 = v0;
  v1 = v0[44];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[18];
    v3 = sub_1E64F72CC(*(v1 + 16), 0);
    v5 = sub_1E62594B8(&v28, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    v6 = v28;

    result = sub_1E5E24EE4(v6);
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  v8 = v0[45];
  v28 = v3;
  sub_1E60BB100(&v28);
  if (v8)
  {
  }

  v9 = v28;
  v10 = v28[2];
  if (v10)
  {
    v11 = v0[21];
    v12 = v0[18];
    v28 = MEMORY[0x1E69E7CC0];
    sub_1E601C5BC(0, v10, 0);
    v13 = v28;
    v15 = *(v12 + 16);
    v14 = v12 + 16;
    v16 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v25 = *(v14 + 56);
    v26 = v15;
    do
    {
      v17 = v0[19];
      v18 = v0[17];
      v26(v17, v16, v18);
      sub_1E65DADA8();
      sub_1E65DF368();
      (*(v14 - 8))(v17, v18);
      v28 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1E601C5BC((v19 > 1), v20 + 1, 1);
        v13 = v28;
      }

      v21 = v0[26];
      v22 = v0[20];
      *(v13 + 16) = v20 + 1;
      (*(v11 + 32))(v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v21, v22);
      v16 += v25;
      --v10;
    }

    while (v10);

    if (*(v13 + 16))
    {
      goto LABEL_13;
    }

LABEL_15:

    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  sub_1E65DF4F8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v27 = v23;
  sub_1E65DF4C8();
LABEL_16:

  v24 = v0[1];

  return v24(v27);
}

uint64_t sub_1E60A7ACC(uint64_t a1)
{
  v4 = *v2;
  v4[48] = v1;

  v5 = v4[16];
  v6 = v4[15];
  v7 = v4[14];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E60A9754;
  }

  else
  {
    v4[49] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E60A7C78;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

void *sub_1E60A7C78()
{
  v0[2] = v0[49];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743D0, &qword_1E660C9D0);
  sub_1E5FED46C(&qword_1ED0743D8, &qword_1ED0743D0, &qword_1E660C9D0, MEMORY[0x1E69E6508]);
  sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v1 = sub_1E65E5E78();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    v4 = v0[12];
    v21 = MEMORY[0x1E69E7CC0];
    result = sub_1E601C5BC(0, v2, 0);
    v17 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = v3;
    v19 = v1;
    v6 = *(v1 + 16) - 1;
    do
    {
      if (v6 == -1)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

      if (v6 >= *(v1 + 16))
      {
        goto LABEL_16;
      }

      v7 = v0[13];
      v8 = v0[11];
      (*(v4 + 16))(v7, v17 + *(v4 + 72) * v6, v8);
      sub_1E65DAE48();
      sub_1E65DAE78();
      MEMORY[0x1E694D7C0](45, 0xE100000000000000);
      v9 = *(sub_1E65DAE88() + 16);

      v0[3] = v9;
      v10 = sub_1E65E6BC8();
      MEMORY[0x1E694D7C0](v10);

      sub_1E65DF368();
      (*(v4 + 8))(v7, v8);
      v12 = *(v21 + 16);
      v11 = *(v21 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1E601C5BC((v11 > 1), v12 + 1, 1);
      }

      v13 = v0[25];
      v14 = v0[20];
      *(v21 + 16) = v12 + 1;
      result = (*(v18 + 32))(v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v12, v13, v14);
      --v6;
      --v2;
      v1 = v19;
    }

    while (v2);

    if (!*(v21 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_11:

      v20 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  sub_1E65DF4F8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v20 = v15;
  sub_1E65DF4C8();
LABEL_12:

  v16 = v0[1];

  return v16(v20);
}

uint64_t sub_1E60A814C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {
    v4 = sub_1E60A988C;
  }

  else
  {

    v4 = sub_1E60A8270;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E60A8270()
{
  v29 = v0;
  v1 = v0[53];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[18];
    v3 = sub_1E64F72CC(*(v1 + 16), 0);
    v5 = sub_1E62594B8(&v28, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    v6 = v28;

    result = sub_1E5E24EE4(v6);
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  v8 = v0[54];
  v28 = v3;
  sub_1E60BB100(&v28);
  if (v8)
  {
  }

  v9 = v28;
  v10 = v28[2];
  if (v10)
  {
    v11 = v0[21];
    v12 = v0[18];
    v28 = MEMORY[0x1E69E7CC0];
    sub_1E601C5BC(0, v10, 0);
    v13 = v28;
    v15 = *(v12 + 16);
    v14 = v12 + 16;
    v16 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v25 = *(v14 + 56);
    v26 = v15;
    do
    {
      v17 = v0[19];
      v18 = v0[17];
      v26(v17, v16, v18);
      sub_1E65DADA8();
      sub_1E65DF368();
      (*(v14 - 8))(v17, v18);
      v28 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1E601C5BC((v19 > 1), v20 + 1, 1);
        v13 = v28;
      }

      v21 = v0[24];
      v22 = v0[20];
      *(v13 + 16) = v20 + 1;
      (*(v11 + 32))(v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v21, v22);
      v16 += v25;
      --v10;
    }

    while (v10);

    if (*(v13 + 16))
    {
      goto LABEL_13;
    }

LABEL_15:

    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  sub_1E65DF4F8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v27 = v23;
  sub_1E65DF4C8();
LABEL_16:

  v24 = v0[1];

  return v24(v27);
}

uint64_t sub_1E60A86AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {
    v4 = sub_1E60A99D4;
  }

  else
  {

    v4 = sub_1E60A87D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E60A87D0()
{
  v29 = v0;
  v1 = v0[58];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[18];
    v3 = sub_1E64F72CC(*(v1 + 16), 0);
    v5 = sub_1E62594B8(&v28, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    v6 = v28;

    result = sub_1E5E24EE4(v6);
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  v8 = v0[59];
  v28 = v3;
  sub_1E60BB100(&v28);
  if (v8)
  {
  }

  v9 = v28;
  v10 = v28[2];
  if (v10)
  {
    v11 = v0[21];
    v12 = v0[18];
    v28 = MEMORY[0x1E69E7CC0];
    sub_1E601C5BC(0, v10, 0);
    v13 = v28;
    v15 = *(v12 + 16);
    v14 = v12 + 16;
    v16 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v25 = *(v14 + 56);
    v26 = v15;
    do
    {
      v17 = v0[19];
      v18 = v0[17];
      v26(v17, v16, v18);
      sub_1E65DADA8();
      sub_1E65DF368();
      (*(v14 - 8))(v17, v18);
      v28 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1E601C5BC((v19 > 1), v20 + 1, 1);
        v13 = v28;
      }

      v21 = v0[23];
      v22 = v0[20];
      *(v13 + 16) = v20 + 1;
      (*(v11 + 32))(v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v21, v22);
      v16 += v25;
      --v10;
    }

    while (v10);

    if (*(v13 + 16))
    {
      goto LABEL_13;
    }

LABEL_15:

    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  sub_1E65DF4F8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v27 = v23;
  sub_1E65DF4C8();
LABEL_16:

  v24 = v0[1];

  return v24(v27);
}

uint64_t sub_1E60A8C0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  *(v3 + 496) = a1;
  *(v3 + 504) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_1E60A9B1C;
  }

  else
  {
    v7 = sub_1E60A8DA4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60A8DA4()
{
  v29 = v0;
  v1 = v0[62];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[6];
    v3 = sub_1E64F72A4(*(v1 + 16), 0);
    v5 = sub_1E62594A0(&v28, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    v6 = v28;

    result = sub_1E5E24EE4(v6);
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  v8 = v0[63];
  v28 = v3;
  sub_1E60BB008(&v28);
  if (v8)
  {
  }

  v9 = v28;
  v10 = v28[2];
  if (v10)
  {
    v11 = v0[21];
    v12 = v0[6];
    v28 = MEMORY[0x1E69E7CC0];
    sub_1E601C5BC(0, v10, 0);
    v13 = v28;
    v15 = *(v12 + 16);
    v14 = v12 + 16;
    v16 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v25 = *(v14 + 56);
    v26 = v15;
    do
    {
      v17 = v0[7];
      v18 = v0[5];
      v26(v17, v16, v18);
      sub_1E65D7B38();
      sub_1E65DF368();
      (*(v14 - 8))(v17, v18);
      v28 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1E601C5BC((v19 > 1), v20 + 1, 1);
        v13 = v28;
      }

      v21 = v0[22];
      v22 = v0[20];
      *(v13 + 16) = v20 + 1;
      (*(v11 + 32))(v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v21, v22);
      v16 += v25;
      --v10;
    }

    while (v10);

    if (*(v13 + 16))
    {
      goto LABEL_13;
    }

LABEL_15:

    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  sub_1E65DF4F8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v27 = v23;
  sub_1E65DF4C8();
LABEL_16:

  v24 = v0[1];

  return v24(v27);
}

uint64_t sub_1E60A91E4(uint64_t a1)
{
  v7 = *v1;

  v3 = *(v7 + 8);
  if (!v6)
  {
    v2 = a1;
  }

  return v3(v2);
}

uint64_t sub_1E60A94E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60A961C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60A9754()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60A988C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60A99D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60A9B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60A9C54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E60A9C74, 0, 0);
}

uint64_t sub_1E60A9C74()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE1030;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E60A9D90(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E60A9C54(a1, v1 + v5);
}

uint64_t sub_1E60A9E6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E60A9E8C, 0, 0);
}

uint64_t sub_1E60A9E8C()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE4EC4;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E60AA014(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E60A9E6C(a1, v1 + v5);
}

uint64_t sub_1E60AA0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = *(type metadata accessor for AppComposer(0) + 20);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E622F45C(a1, a3 + v7, v5);
}

uint64_t sub_1E60AA1AC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E60AA0F0(a1, v6, v1 + v5);
}

uint64_t sub_1E60AA290(uint64_t a1)
{
  v4 = (*(a1 + 16) + **(a1 + 16));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return v4();
}

uint64_t sub_1E60AA378()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E60AA290(v0 + 16);
}

uint64_t sub_1E60AA40C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v4 - v1;
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  return sub_1E5DFE50C(v2, &qword_1ED072828, &qword_1E65EBE20);
}

uint64_t sub_1E60AA4E0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.requestCatalogSync.getter();
  *(v0 + 24) = v2;
  v3 = sub_1E65D98C8();
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1E60102EC;

  return v6(v3);
}

uint64_t sub_1E60AA610()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E60AA4C0(v0 + v3);
}

void *sub_1E60AA6DC(void *a1, uint64_t a2)
{
  v106 = a1;
  v84 = sub_1E65DF3B8();
  v91 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for LibraryItemContext(0);
  v4 = MEMORY[0x1EEE9AC00](v87);
  v86 = (&v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v98 = &v80 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  MEMORY[0x1EEE9AC00](v80);
  v81 = (&v80 - v7);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v90 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v9 = &v80 - v8;
  v103 = type metadata accessor for ItemContext(0);
  v110 = *(v103 - 8);
  v10 = MEMORY[0x1EEE9AC00](v103);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v80 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v80 - v23;
  swift_getKeyPath();
  sub_1E65E4EC8();

  result = v111;
  if (v112)
  {
    return sub_1E5FED3F8(v111, v112);
  }

  v104 = v24;
  v97 = v22;
  v89 = v21;
  v88 = v20;
  v101 = v18;
  v102 = v15;
  v82 = v12;
  v85 = a2;
  v26 = MEMORY[0x1E69E7CC0];
  v96 = v111[2];
  if (v96)
  {
    v27 = 0;
    v28 = v97;
    v95 = v111 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v94 = v97 + 16;
    v107 = (v90 + 8);
    v108 = v90 + 16;
    v93 = (v97 + 8);
    v29 = v109;
    v30 = v91;
    v31 = v89;
    v92 = v111;
    while (v27 < result[2])
    {
      v34 = *(v28 + 72);
      v105 = v27;
      v35 = v104;
      (*(v28 + 16))(v104, &v95[v34 * v27], v31);
      v36 = sub_1E65E0518();
      swift_getKeyPath();
      v37 = *(v36 + 16);
      if (v37)
      {
        v100 = v26;
        v111 = MEMORY[0x1E69E7CC0];
        sub_1E601BFA8(0, v37, 0);
        v38 = v111;
        v39 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v99 = v36;
        v40 = v36 + v39;
        v41 = *(v90 + 72);
        v42 = *(v90 + 16);
        v43 = v88;
        do
        {
          v42(v9, v40, v29);
          swift_getAtKeyPath();
          (*v107)(v9, v29);
          v111 = v38;
          v45 = *(v38 + 16);
          v44 = *(v38 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_1E601BFA8((v44 > 1), v45 + 1, 1);
            v38 = v111;
          }

          *(v38 + 16) = v45 + 1;
          sub_1E5E1E0B0(v43, v38 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v45, type metadata accessor for ItemContext);
          v40 += v41;
          --v37;
          v29 = v109;
        }

        while (v37);
        v31 = v89;
        (*v93)(v104, v89);

        v26 = v100;
        v30 = v91;
      }

      else
      {

        result = (*v93)(v35, v31);
        v38 = MEMORY[0x1E69E7CC0];
      }

      v46 = *(v38 + 16);
      v47 = v26[2];
      v48 = v47 + v46;
      if (__OFADD__(v47, v46))
      {
        goto LABEL_57;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v48 > v26[3] >> 1)
      {
        if (v47 <= v48)
        {
          v49 = v47 + v46;
        }

        else
        {
          v49 = v47;
        }

        result = sub_1E64F6184(result, v49, 1, v26);
        v26 = result;
      }

      v29 = v109;
      if (*(v38 + 16))
      {
        if ((v26[3] >> 1) - v26[2] < v46)
        {
          goto LABEL_59;
        }

        swift_arrayInitWithCopy();

        v28 = v97;
        result = v92;
        v32 = v105;
        if (v46)
        {
          v50 = v26[2];
          v51 = __OFADD__(v50, v46);
          v52 = v50 + v46;
          if (v51)
          {
            goto LABEL_60;
          }

          v26[2] = v52;
        }
      }

      else
      {

        v28 = v97;
        result = v92;
        v32 = v105;
        if (v46)
        {
          goto LABEL_58;
        }
      }

      v27 = (v32 + 1);
      v33 = v102;
      if (v27 == v96)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v33 = v102;
    v30 = v91;
LABEL_28:
    result = sub_1E5FED3F8(result, 0);
    v109 = v26[2];
    if (!v109)
    {
      v108 = MEMORY[0x1E69E7CC0];
LABEL_54:

      v78 = sub_1E600A878(v108);

      v79 = v81;
      *v81 = v78;
      swift_storeEnumTagMultiPayload();
      sub_1E65E4EE8();
      return sub_1E5DFE50C(v79, &qword_1ED072828, &qword_1E65EBE20);
    }

    v53 = 0;
    v107 = (v30 + 32);
    v105 = (v30 + 8);
    v54 = v106 + 7;
    v108 = MEMORY[0x1E69E7CC0];
    while (v53 < v26[2])
    {
      v55 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v56 = v26;
      v57 = *(v110 + 72);
      v58 = v26 + v55 + v57 * v53;
      v59 = v101;
      sub_1E5E1D41C(v58, v101, type metadata accessor for ItemContext);
      sub_1E5E1D41C(v59, v33, type metadata accessor for ItemContext);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v60 = v98;
        sub_1E5E1E0B0(v33, v98, type metadata accessor for LibraryItemContext);
        v61 = v86;
        sub_1E5E1D41C(v60, v86, type metadata accessor for LibraryItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v62 = v83;
          v63 = v84;
          (*v107)(v83, v61, v84);
          v64 = sub_1E65DF378();
          v66 = v65;
          (*v105)(v62, v63);
        }

        else
        {
          v64 = *v61;
          v66 = v61[1];
        }

        v26 = v56;
        if (v106[2] && (v67 = v106, sub_1E65E6D28(), sub_1E65E5D78(), v68 = sub_1E65E6D78(), v69 = -1 << *(v67 + 32), v70 = v68 & ~v69, ((*(v54 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) != 0))
        {
          v71 = ~v69;
          while (1)
          {
            v72 = (v106[6] + 16 * v70);
            v73 = *v72 == v64 && v72[1] == v66;
            if (v73 || (sub_1E65E6C18() & 1) != 0)
            {
              break;
            }

            v70 = (v70 + 1) & v71;
            if (((*(v54 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          sub_1E60C3430(v98, type metadata accessor for LibraryItemContext);

          sub_1E5E1E0B0(v101, v82, type metadata accessor for ItemContext);
          v74 = v108;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v113 = v74;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E601BFA8(0, *(v74 + 16) + 1, 1);
            v74 = v113;
          }

          v77 = *(v74 + 16);
          v76 = *(v74 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_1E601BFA8((v76 > 1), v77 + 1, 1);
            v74 = v113;
          }

          *(v74 + 16) = v77 + 1;
          v108 = v74;
          result = sub_1E5E1E0B0(v82, v74 + v55 + v77 * v57, type metadata accessor for ItemContext);
        }

        else
        {
LABEL_46:
          sub_1E60C3430(v98, type metadata accessor for LibraryItemContext);

          result = sub_1E60C3430(v101, type metadata accessor for ItemContext);
        }

        v33 = v102;
      }

      else
      {
        sub_1E60C3430(v59, type metadata accessor for ItemContext);
        result = sub_1E60C3430(v33, type metadata accessor for ItemContext);
        v26 = v56;
      }

      if (++v53 == v109)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1E60AB2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  v7 = v6[*(v5 + 64)];

  return sub_1E60A5304(a1, v6, v7, a2);
}

uint64_t sub_1E60AB358(uint64_t a1)
{
  type metadata accessor for AppComposer(0);

  return sub_1E60A5CDC(a1);
}

uint64_t sub_1E60AB404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v58 = a3;
  v51 = type metadata accessor for CanvasTaskIdentifier(0);
  v4 = MEMORY[0x1EEE9AC00](v51);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - v7;
  v9 = type metadata accessor for RouteDestination(0);
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = (&v46 - v12);
  v57 = sub_1E65DF3B8();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LibraryItemContext(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v46 - v22;
  sub_1E5E1D41C(a1, v17, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1E5E1E0B0(v17, v23, type metadata accessor for LibraryItemContext);
    sub_1E5E1D41C(v23, v21, type metadata accessor for LibraryItemContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v55;
      v25 = *(v55 + 32);
      v50 = v14;
      v25(v14, v21, v57);
      v26 = v53;
      sub_1E6094CD4(v53);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
      v28 = v27[12];
      v29 = v27[16];
      v47 = v27[20];
      v30 = v58;
      v48 = (v58 + v27[24]);
      v49 = v28;
      sub_1E5E1D41C(v26, v8, type metadata accessor for RouteDestination);
      sub_1E5E1D41C(v8, v6, type metadata accessor for CanvasTaskIdentifier);
      sub_1E60C330C(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier, &unk_1E65F55A8);
      sub_1E65E6848();
      sub_1E60C3430(v8, type metadata accessor for CanvasTaskIdentifier);
      v31 = *MEMORY[0x1E6999B50];
      v32 = sub_1E65E4EB8();
      (*(*(v32 - 8) + 104))(v30 + v29, v31, v32);
      v33 = *MEMORY[0x1E6999B48];
      v34 = sub_1E65E4EA8();
      (*(*(v34 - 8) + 104))(v30 + v47, v33, v34);
      sub_1E5DF650C(v56, v59);
      v35 = v54;
      sub_1E5E1D41C(v26, v54, type metadata accessor for RouteDestination);
      v36 = (*(v52 + 80) + 56) & ~*(v52 + 80);
      v37 = swift_allocObject();
      sub_1E5DF599C(v59, v37 + 16);
      sub_1E5E1E0B0(v35, v37 + v36, type metadata accessor for RouteDestination);
      v38 = v48;
      *v48 = &unk_1E65F0DE0;
      v38[1] = v37;
      sub_1E65E6068();
      sub_1E60C3430(v26, type metadata accessor for RouteDestination);
      (*(v24 + 8))(v50, v57);
      sub_1E60C3430(v23, type metadata accessor for LibraryItemContext);
      v39 = *MEMORY[0x1E6999AD8];
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
      v41 = *(v40 - 8);
      (*(v41 + 104))(v30, v39, v40);
      return (*(v41 + 56))(v30, 0, 1, v40);
    }

    sub_1E60C3430(v23, type metadata accessor for LibraryItemContext);
    v44 = v21;
    v43 = type metadata accessor for LibraryItemContext;
  }

  else
  {
    v43 = type metadata accessor for ItemContext;
    v44 = v17;
  }

  sub_1E60C3430(v44, v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
  return (*(*(v45 - 8) + 56))(v58, 1, 1, v45);
}

uint64_t sub_1E60ABAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1E60ABB70;

  return sub_1E60ABC70(v4);
}

uint64_t sub_1E60ABB70(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1E60ABC70(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 160) = a1;
  v3 = sub_1E65DF6C8();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v4 = sub_1E65DF658();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = sub_1E65DF4B8();
  *(v2 + 96) = swift_task_alloc();
  v5 = sub_1E65D7848();
  *(v2 + 104) = v5;
  *(v2 + 112) = *(v5 - 8);
  *(v2 + 120) = swift_task_alloc();
  v6 = sub_1E65DF438();
  *(v2 + 128) = v6;
  *(v2 + 136) = *(v6 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60ABE90, 0, 0);
}

uint64_t sub_1E60ABE90()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = *(v0 + 16);
  if (*(v1 + 16) && (v2 = sub_1E6416C34(*(v0 + 160)), (v3 & 1) != 0))
  {
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    (*(v7 + 16))(v5, *(v1 + 56) + *(v7 + 72) * v2, v6);

    (*(v7 + 32))(v4, v5, v6);
    sub_1E65DF3D8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *(v0 + 136);
    if (EnumCaseMultiPayload < 2)
    {
      v11 = *(v0 + 112);
      v10 = *(v0 + 120);
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      v26 = *(v0 + 152);
      v24 = *(v0 + 80);
      v33 = *(v0 + 72);
      v14 = *(v0 + 64);
      v25 = *(v0 + 56);
      v15 = *(v0 + 40);
      v16 = *(v0 + 48);
      v27 = *(v0 + 32);
      v28 = *(v0 + 24);
      v29 = *(v0 + 160);
      v31 = *v12;
      v32 = *(v0 + 128);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074560, &qword_1E65F0DD0);
      v18 = *(v17 + 48);
      (*(v11 + 32))(v10, v12 + *(v17 + 64), v13);
      v30 = *(v33 + 8);
      v30(v12 + v18, v14);
      sub_1E65DF408();
      sub_1E65DF648();
      (*(v15 + 104))(v16, *MEMORY[0x1E699E6E8], v27);
      LOBYTE(v12) = sub_1E65DF6B8();
      v19 = *(v15 + 8);
      v19(v16, v27);
      v19(v25, v27);
      v20 = swift_task_alloc();
      *(v20 + 16) = v28;
      *(v20 + 24) = v12 & 1;
      *(v20 + 25) = v29;
      *(v20 + 32) = v24;
      *(v20 + 40) = v10;
      v21 = sub_1E5F9F73C(sub_1E60C32B4, v20, v31);

      (*(v9 + 8))(v26, v32);
      v30(v24, v14);
      (*(v11 + 8))(v10, v13);
      goto LABEL_7;
    }

    (*(v9 + 8))(*(v0 + 152), *(v0 + 128));
  }

  else
  {
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_7:

  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_1E60AC228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E60C34A4;

  return sub_1E60AC2D4(v4, a1);
}

uint64_t sub_1E60AC2D4(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 312) = a1;
  v4 = sub_1E65D9CC8();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_1E65DF3B8();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = type metadata accessor for ItemContext(0);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = type metadata accessor for LibraryItemContext(0);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  *(v3 + 176) = v6;
  *(v3 + 184) = *(v6 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60AC540, 0, 0);
}

unint64_t sub_1E60AC540()
{
  v1 = *(v0 + 184);
  v114 = *(v0 + 160);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  v4 = sub_1E6427DF8(MEMORY[0x1E69E7CC0]);
  v5 = v3 + 56;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v120 = (v1 + 8);
  v109 = (v2 + 8);
  v110 = (v2 + 32);
  v104 = (v1 + 40);
  v106 = (v1 + 32);

  v10 = 0;
  v118 = v1;
  v119 = v3 + 56;
  v117 = v3;
LABEL_4:
  v111 = v4;
  *(v0 + 224) = v4;
  v11 = v10;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = *(v3 + 48);
    v14 = *(v1 + 72);
    v15 = *(v1 + 16);
    v15(*(v0 + 216), v13 + v14 * (v12 | (v10 << 6)), *(v0 + 176));
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v18 = *(v0 + 160);
      v17 = *(v0 + 168);
      sub_1E5E1E0B0(*(v0 + 112), v17, type metadata accessor for LibraryItemContext);
      sub_1E5E1D41C(v17, v18, type metadata accessor for LibraryItemContext);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v20 = *(v0 + 160);
      if (EnumCaseMultiPayload == 1)
      {
        v21 = *(v0 + 80);
        v22 = *(v0 + 56);
        (*v110)(v21, v20, v22);
        v23 = sub_1E65DF378();
        v100 = v24;
        (*v109)(v21, v22);
      }

      else
      {
        v23 = *v20;
        v100 = *(v114 + 8);
      }

      v15(*(v0 + 208), *(v0 + 216), *(v0 + 176));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v111;
      result = sub_1E6215038(v23, v100);
      v28 = v111[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
LABEL_85:
        __break(1u);
      }

      else
      {
        v32 = v27;
        v98 = v23;
        if (v111[3] >= v31)
        {
          v34 = v100;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = result;
            sub_1E6424B84();
            result = v41;
          }
        }

        else
        {
          sub_1E641BE8C(v31, isUniquelyReferenced_nonNull_native);
          result = sub_1E6215038(v23, v100);
          if ((v32 & 1) != (v33 & 1))
          {
LABEL_81:

            return sub_1E65E6C68();
          }

          v34 = v100;
        }

        v35 = *(v0 + 208);
        v112 = *(v0 + 216);
        v36 = *(v0 + 176);
        v101 = *(v0 + 168);
        if (v32)
        {
          v37 = result;

          v4 = v122;
          (*v104)(v122[7] + v37 * v14, v35, v36);
          sub_1E60C3430(v101, type metadata accessor for LibraryItemContext);
          (*v120)(v112, v36);
LABEL_25:
          v3 = v117;
          v1 = v118;
          v5 = v119;
          goto LABEL_4;
        }

        v4 = v122;
        v122[(result >> 6) + 8] |= 1 << result;
        v38 = (v122[6] + 16 * result);
        *v38 = v98;
        v38[1] = v34;
        (*v106)(v122[7] + result * v14, v35, v36);
        sub_1E60C3430(v101, type metadata accessor for LibraryItemContext);
        result = (*v120)(v112, v36);
        v39 = v122[2];
        v30 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (!v30)
        {
          v122[2] = v40;
          goto LABEL_25;
        }
      }

      __break(1u);
      return result;
    }

    v16 = *(v0 + 112);
    (*v120)(*(v0 + 216), *(v0 + 176));
    sub_1E60C3430(v16, type metadata accessor for ItemContext);
    v11 = v10;
    v3 = v117;
    v1 = v118;
    v5 = v119;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v42 = *(v0 + 312);

  if (((1 << v42) & 0xBB) != 0)
  {
    v43 = -1;
    v44 = -1 << *(v3 + 32);
    if (-v44 < 64)
    {
      v43 = ~(-1 << -v44);
    }

    v45 = v43 & *(v3 + 56);
    v46 = (63 - v44) >> 6;
    v107 = *(v0 + 40);

    v47 = 0;
    v48 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v49 = v47;
    for (i = v48; ; v48 = i)
    {
      *(v0 + 232) = v48;
      if (!v45)
      {
        break;
      }

      v47 = v49;
LABEL_38:
      v53 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      (*(v1 + 16))(*(v0 + 200), *(v3 + 48) + *(v1 + 72) * (v53 | (v47 << 6)), *(v0 + 176));
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v55 = *(v0 + 144);
        v54 = *(v0 + 152);
        sub_1E5E1E0B0(*(v0 + 104), v54, type metadata accessor for LibraryItemContext);
        sub_1E5E1D41C(v54, v55, type metadata accessor for LibraryItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v110)(*(v0 + 72), *(v0 + 144), *(v0 + 56));
          sub_1E65DF378();
          sub_1E65DF388();
          v99 = *(v0 + 176);
          v102 = *(v0 + 200);
          v97 = *(v0 + 152);
          v59 = *(v0 + 72);
          v60 = *(v0 + 56);
          sub_1E65D9C88();
          (*v109)(v59, v60);
          sub_1E60C3430(v97, type metadata accessor for LibraryItemContext);
          (*v120)(v102, v99);
          v48 = i;
          v61 = v1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1E64F610C(0, i[2] + 1, 1, i);
          }

          v5 = v119;
          v63 = v48[2];
          v62 = v48[3];
          if (v63 >= v62 >> 1)
          {
            v48 = sub_1E64F610C((v62 > 1), v63 + 1, 1, v48);
          }

          v64 = *(v0 + 48);
          v65 = *(v0 + 32);
          v48[2] = v63 + 1;
          (*(v107 + 32))(v48 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v63, v64, v65);
          v1 = v61;
          goto LABEL_30;
        }

        v56 = *(v0 + 200);
        v57 = *(v0 + 176);
        v58 = *(v0 + 144);
        sub_1E60C3430(*(v0 + 152), type metadata accessor for LibraryItemContext);
        (*v120)(v56, v57);
        v52 = v58;
        v51 = type metadata accessor for LibraryItemContext;
      }

      else
      {
        v50 = *(v0 + 104);
        (*v120)(*(v0 + 200), *(v0 + 176));
        v51 = type metadata accessor for ItemContext;
        v52 = v50;
      }

      sub_1E60C3430(v52, v51);
      v49 = v47;
      v5 = v119;
    }

    while (1)
    {
      v47 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_80;
      }

      if (v47 >= v46)
      {

        if (v48[2])
        {
          type metadata accessor for AppComposer(0);
          type metadata accessor for AppEnvironment(0);
          v66 = CatalogService.fetchRemoteCatalogLockups.getter();
          *(v0 + 240) = v67;
          v121 = (v66 + *v66);
          v68 = swift_task_alloc();
          *(v0 + 248) = v68;
          *v68 = v0;
          v68[1] = sub_1E60AD388;

          return (v121)(20, v48);
        }

        else
        {

          v69 = *(v0 + 8);
          v70 = MEMORY[0x1E69E7CD0];

          return v69(v70);
        }
      }

      v45 = *(v5 + 8 * v47);
      ++v49;
      if (v45)
      {
        goto LABEL_38;
      }
    }
  }

  if (v42 == 2)
  {
    v113 = *(v0 + 128);
    v71 = -1;
    v72 = -1 << *(v3 + 32);
    if (-v72 < 64)
    {
      v71 = ~(-1 << -v72);
    }

    v73 = v71 & *(v3 + 56);
    v74 = (63 - v72) >> 6;

    v75 = 0;
    v76 = MEMORY[0x1E69E7CC0];
LABEL_57:
    v116 = v76;
    *(v0 + 280) = v76;
    v77 = v75;
    if (!v73)
    {
      goto LABEL_59;
    }

    do
    {
      v75 = v77;
LABEL_62:
      v78 = __clz(__rbit64(v73));
      v73 &= v73 - 1;
      (*(v1 + 16))(*(v0 + 192), *(v3 + 48) + *(v1 + 72) * (v78 | (v75 << 6)), *(v0 + 176));
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v81 = *(v0 + 128);
        v80 = *(v0 + 136);
        sub_1E5E1E0B0(*(v0 + 96), v80, type metadata accessor for LibraryItemContext);
        sub_1E5E1D41C(v80, v81, type metadata accessor for LibraryItemContext);
        v82 = swift_getEnumCaseMultiPayload();
        v83 = *(v0 + 192);
        v84 = *(v0 + 176);
        v85 = *(v0 + 128);
        v86 = *(v0 + 136);
        if (v82 == 1)
        {
          v103 = *(v0 + 176);
          v105 = *(v0 + 192);
          v87 = *(v0 + 80);
          v88 = *(v0 + 56);
          (*v110)(v87, v85, v88);
          v108 = sub_1E65DF378();
          v90 = v89;
          (*v109)(v87, v88);
          sub_1E60C3430(v86, type metadata accessor for LibraryItemContext);
          (*v120)(v105, v103);
        }

        else
        {
          sub_1E60C3430(*(v0 + 136), type metadata accessor for LibraryItemContext);
          (*v120)(v83, v84);
          v108 = *v85;
          v90 = *(v113 + 8);
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v5 = v119;
        if ((result & 1) == 0)
        {
          result = sub_1E64F6718(0, *(v116 + 16) + 1, 1, v116);
          v116 = result;
        }

        v92 = *(v116 + 16);
        v91 = *(v116 + 24);
        if (v92 >= v91 >> 1)
        {
          result = sub_1E64F6718((v91 > 1), v92 + 1, 1, v116);
          v116 = result;
        }

        *(v116 + 16) = v92 + 1;
        v93 = v116 + 16 * v92;
        *(v93 + 32) = v108;
        *(v93 + 40) = v90;
        v76 = v116;
        goto LABEL_57;
      }

      v79 = *(v0 + 96);
      (*v120)(*(v0 + 192), *(v0 + 176));
      result = sub_1E60C3430(v79, type metadata accessor for ItemContext);
      v77 = v75;
      v5 = v119;
    }

    while (v73);
    while (1)
    {
LABEL_59:
      v75 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        __break(1u);
        goto LABEL_85;
      }

      if (v75 >= v74)
      {
        break;
      }

      v73 = *(v5 + 8 * v75);
      ++v77;
      if (v73)
      {
        goto LABEL_62;
      }
    }

    v96 = swift_task_alloc();
    *(v0 + 288) = v96;
    *v96 = v0;
    v96[1] = sub_1E60AD958;

    return sub_1E60AE8FC(v116);
  }

  else
  {

    v94 = swift_task_alloc();
    *(v0 + 272) = v94;
    *v94 = v0;
    v94[1] = sub_1E60AD658;
    v95 = *(v0 + 16);

    return sub_1E60ADEB0(v95);
  }
}

uint64_t sub_1E60AD388(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1E60ADD64;
  }

  else
  {

    *(v4 + 264) = a1;
    v5 = sub_1E60AD4C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60AD4C0()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = sub_1E6404CB8(sub_1E60C22D8, v4, v1);

  v8 = sub_1E600A848(v5);

  v6 = v0[1];

  return v6(v8);
}

uint64_t sub_1E60AD658(uint64_t a1)
{
  v7 = *v1;

  v3 = *(v7 + 8);
  if (!v6)
  {
    v2 = a1;
  }

  return v3(v2);
}

uint64_t sub_1E60AD958(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1E60ADC20;
  }

  else
  {

    *(v4 + 304) = a1;
    v5 = sub_1E60ADA88;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60ADA88()
{
  v1 = v0[38];
  v2 = v0[28];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = sub_1E6404414(sub_1E60C22B4, v4, v1);

  v8 = sub_1E600A848(v5);

  v6 = v0[1];

  return v6(v8);
}

uint64_t sub_1E60ADC20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60ADD64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60ADEB0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1E65DF3B8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for ItemContext(0);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for LibraryItemContext(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60AE050, 0, 0);
}

uint64_t sub_1E60AE050()
{
  v1 = v0[14];
  v58 = v0[11];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_1E6427DF8(MEMORY[0x1E69E7CC0]);
  v5 = v3 + 56;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v64 = v1;
  v62 = (v1 + 8);
  v63 = v3;
  v56 = (v2 + 8);
  v57 = (v2 + 32);
  v54 = (v1 + 40);
  v55 = (v1 + 32);

  v10 = 0;
  v61 = v3 + 56;
  while (2)
  {
    v59 = v4;
    v0[17] = v4;
    v11 = v10;
    if (!v8)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v10 = v11;
LABEL_9:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(v64 + 72);
      v14 = *(v64 + 16);
      v14(v0[16], *(v63 + 48) + v13 * (v12 | (v10 << 6)), v0[13]);
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        break;
      }

      v15 = v0[9];
      (*v62)(v0[16], v0[13]);
      sub_1E60C3430(v15, type metadata accessor for ItemContext);
      v11 = v10;
      v5 = v61;
      if (!v8)
      {
        while (1)
        {
LABEL_6:
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          if (v10 >= v9)
          {
            break;
          }

          v8 = *(v5 + 8 * v10);
          ++v11;
          if (v8)
          {
            goto LABEL_9;
          }
        }

        v65 = *(v0 + 3);

        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074540, &qword_1E65F0D20);
        v50 = swift_task_alloc();
        v0[18] = v50;
        *(v50 + 16) = v65;
        v51 = swift_task_alloc();
        v0[19] = v51;
        *v51 = v0;
        v51[1] = sub_1E60AE5D8;
        v31 = &unk_1E65F0D30;
        v26 = (v0 + 2);
        v27 = v49;
        v28 = v49;
        v29 = 0;
        v30 = 0;
        v32 = v50;
        v33 = v49;

        return MEMORY[0x1EEE6DD58](v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }

    v53 = v13;
    v17 = v0[11];
    v16 = v0[12];
    sub_1E5E1E0B0(v0[9], v16, type metadata accessor for LibraryItemContext);
    sub_1E5E1D41C(v16, v17, type metadata accessor for LibraryItemContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = v0[11];
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v0[7];
      v21 = v0[5];
      (*v57)(v20, v19, v21);
      v22 = sub_1E65DF378();
      v24 = v23;
      (*v56)(v20, v21);
    }

    else
    {
      v22 = *v19;
      v24 = *(v58 + 8);
    }

    v14(v0[15], v0[16], v0[13]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v59;
    v26 = sub_1E6215038(v22, v24);
    v34 = v59[2];
    v35 = (v27 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return MEMORY[0x1EEE6DD58](v26, v27, v28, v29, v30, v31, v32, v33);
    }

    v38 = v27;
    if (v59[3] >= v37)
    {
      v40 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = v26;
        sub_1E6424B84();
        v26 = v48;
      }

LABEL_21:
      v41 = v0[15];
      v60 = v0[16];
      v42 = v0[12];
      v43 = v0[13];
      if (v38)
      {
        v44 = v26;

        (*v54)(v67[7] + v44 * v53, v41, v43);
        sub_1E60C3430(v42, type metadata accessor for LibraryItemContext);
        (*v62)(v60, v43);
        v4 = v67;
        v5 = v61;
        continue;
      }

      v67[(v26 >> 6) + 8] |= 1 << v26;
      v45 = (v67[6] + 16 * v26);
      *v45 = v40;
      v45[1] = v24;
      (*v55)(v67[7] + v26 * v53, v41, v43);
      sub_1E60C3430(v42, type metadata accessor for LibraryItemContext);
      v26 = (*v62)(v60, v43);
      v46 = v67[2];
      v36 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (!v36)
      {
        v67[2] = v47;
        v4 = v67;
        v5 = v61;
        continue;
      }

      goto LABEL_33;
    }

    break;
  }

  sub_1E641BE8C(v37, isUniquelyReferenced_nonNull_native);
  v26 = sub_1E6215038(v22, v24);
  if ((v38 & 1) == (v39 & 1))
  {
    v40 = v22;
    goto LABEL_21;
  }

LABEL_29:

  return sub_1E65E6C68();
}

uint64_t sub_1E60AE5D8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_1E60AE854;
  }

  else
  {

    v2 = sub_1E60AE720;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60AE720()
{
  v1 = v0[17];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = sub_1E6404414(sub_1E60C23B0, v4, v3);

  v6 = sub_1E600A848(v5);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1E60AE854()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60AE8FC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1E65D7F88();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1E65DAEB8();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1E65D86C8();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = sub_1E65D82F8();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60AEB80, 0, 0);
}

uint64_t sub_1E60AEB80()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 184) = v1;
  v2 = *(v0 + 176);
  if (v1)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    (*(v4 + 8))(v2, v3);
    sub_1E5FAB460(v5, v6, &qword_1ED072910, &qword_1E65EC030);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v10 = **(v0 + 144);
        goto LABEL_12;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v8 = *(v0 + 144);
        v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
        v10 = *v8;
        v11 = sub_1E65D76A8();
        (*(*(v11 - 8) + 8))(&v8[v9], v11);
LABEL_12:
        *(v0 + 192) = v10;
        *(v0 + 304) = *(type metadata accessor for AppComposer(0) + 20);
        *(v0 + 200) = type metadata accessor for AppEnvironment(0);
        v15 = ConfigurationService.queryConfiguration.getter();
        *(v0 + 208) = v16;
        v19 = (v15 + *v15);
        v17 = swift_task_alloc();
        *(v0 + 216) = v17;
        *v17 = v0;
        v17[1] = sub_1E60AEE90;
        v18 = *(v0 + 128);

        return v19(v18);
      }

      sub_1E5DFE50C(*(v0 + 144), &qword_1ED072910, &qword_1E65EC030);
    }

    v10 = MEMORY[0x1E69E7CD0];
    goto LABEL_12;
  }

  v12 = *(v0 + 8);
  v13 = MEMORY[0x1E69E7CD0];

  return v12(v13);
}