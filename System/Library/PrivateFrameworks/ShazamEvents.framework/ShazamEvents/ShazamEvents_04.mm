uint64_t sub_1E10380BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0B0, &qword_1E10B4E70);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D98, &qword_1E10B48A8);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x657061706C6C6177, 0xEA00000000007372);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89D98, &qword_1E10B48A8);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89D98, &qword_1E10B48A8);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89D98, &qword_1E10B48A8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E10593B0(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E10593B0((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89D98, &qword_1E10B48A8);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A0B0, &qword_1E10B4E70);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E1038680(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0B8, &qword_1E10B4E78);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DB8, &qword_1E10B6B10);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x61662D6863746177, 0xEB00000000736563);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89DB8, &qword_1E10B6B10);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89DB8, &qword_1E10B6B10);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89DB8, &qword_1E10B6B10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E10594F4(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E10594F4((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89DB8, &qword_1E10B6B10);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A0B8, &qword_1E10B4E78);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E1038C48(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0C0, &qword_1E10B4E80);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DD8, &qword_1E10B48C0);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x6C612D6F65646976, 0xEC000000736D7562);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89DD8, &qword_1E10B48C0);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89DD8, &qword_1E10B48C0);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89DD8, &qword_1E10B48C0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E1059638(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E1059638((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89DD8, &qword_1E10B48C0);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A0C0, &qword_1E10B4E80);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E1039210(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0C8, &qword_1E10B4E88);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D78, &qword_1E10B6B40);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x7473696C79616C70, 0xE900000000000073);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89D78, &qword_1E10B6B40);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89D78, &qword_1E10B6B40);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89D78, &qword_1E10B6B40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E105965C(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E105965C((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89D78, &qword_1E10B6B40);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A0C8, &qword_1E10B4E88);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E10397D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0D8, &qword_1E10B4E98);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E70, &qword_1E10B6B70);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0xD000000000000010, 0x80000001E10BF110);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89E70, &qword_1E10B6B70);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89E70, &qword_1E10B6B70);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89E70, &qword_1E10B6B70);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E10597D0(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E10597D0((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89E70, &qword_1E10B6B70);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A0D8, &qword_1E10B4E98);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E1039D98(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0D0, &qword_1E10B4E90);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B2B0, &qword_1E10B6B60);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E70, &qword_1E10B6B70) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x74697465706D6F63, 0xEB0000000073726FLL);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &unk_1ECE8B2B0, &qword_1E10B6B60);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &unk_1ECE8B2B0, &qword_1E10B6B60);
          sub_1E0FEDEF4(v55, v62, &unk_1ECE8B2B0, &qword_1E10B6B60);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E10597F4(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E10597F4((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &unk_1ECE8B2B0, &qword_1E10B6B60);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A0D0, &qword_1E10B4E90);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E103A360(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0E0, &qword_1E10B4EA0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E18, &qword_1E10B6B80);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x72672D74726F7073, 0xEC0000007370756FLL);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89E18, &qword_1E10B6B80);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89E18, &qword_1E10B6B80);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89E18, &qword_1E10B6B80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E1059818(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E1059818((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89E18, &qword_1E10B6B80);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A0E0, &qword_1E10B4EA0);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E103A928(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0F0, &qword_1E10B4EB0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E38, &qword_1E10B6B90);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x7374726F7073, 0xE600000000000000);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89E38, &qword_1E10B6B90);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89E38, &qword_1E10B6B90);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89E38, &qword_1E10B6B90);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E105983C(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E105983C((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89E38, &qword_1E10B6B90);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A0F0, &qword_1E10B4EB0);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

char *sub_1E103AEE4(void *a1, uint64_t a2)
{
  v380 = a2;
  v360 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A028, &qword_1E10B4E00);
  MEMORY[0x1EEE9AC00](v2, v3);
  v332 = &v305 - v4;
  v331 = type metadata accessor for Nightlife(0);
  v324 = *(v331 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v310 = &v305 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v309 = &v305 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A030, &qword_1E10B4E08);
  MEMORY[0x1EEE9AC00](v11, v12);
  v334 = &v305 - v13;
  v333 = type metadata accessor for Festival(0);
  v325 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v312 = &v305 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v311 = &v305 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A038, &qword_1E10B4E10);
  MEMORY[0x1EEE9AC00](v20, v21);
  v336 = &v305 - v22;
  v335 = type metadata accessor for Apple(0);
  v326 = *(v335 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v314 = &v305 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v313 = &v305 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A040, &qword_1E10B4E18);
  MEMORY[0x1EEE9AC00](v29, v30);
  v338 = &v305 - v31;
  v337 = type metadata accessor for Art(0);
  v327 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v316 = &v305 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v315 = &v305 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A048, &qword_1E10B4E20);
  MEMORY[0x1EEE9AC00](v38, v39);
  v341 = &v305 - v40;
  v340 = type metadata accessor for Dance(0);
  v328 = *(v340 - 8);
  MEMORY[0x1EEE9AC00](v41, v42);
  v318 = &v305 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v317 = &v305 - v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A050, &qword_1E10B4E28);
  MEMORY[0x1EEE9AC00](v47, v48);
  v343 = &v305 - v49;
  v342 = type metadata accessor for Theater(0);
  v329 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v50, v51);
  v320 = &v305 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v319 = &v305 - v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A058, &qword_1E10B4E30);
  MEMORY[0x1EEE9AC00](v56, v57);
  v346 = &v305 - v58;
  v347 = type metadata accessor for Sport(0);
  v330 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v59, v60);
  v322 = &v305 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v321 = &v305 - v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A060, &qword_1E10B4E38);
  MEMORY[0x1EEE9AC00](v65, v66);
  v350 = (&v305 - v67);
  v349 = type metadata accessor for Music(0);
  v68 = *(v349 - 1);
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v305 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73, v74);
  v323 = &v305 - v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C90, &qword_1E10B44E8);
  MEMORY[0x1EEE9AC00](v76, v77);
  v353 = &v305 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79, v80);
  v372 = &v305 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  v357 = &v305 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v345 = &v305 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v348 = &v305 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v351 = &v305 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v361 = (&v305 - v96);
  MEMORY[0x1EEE9AC00](v97, v98);
  v100 = &v305 - v99;
  v374 = type metadata accessor for EventAttributes(0);
  v101 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v102, v103);
  v356 = &v305 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105, v106);
  v359 = &v305 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v362 = &v305 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v364 = &v305 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v366 = &v305 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v369 = &v305 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v123 = &v305 - v122;
  MEMORY[0x1EEE9AC00](v124, v125);
  v127 = &v305 - v126;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
  v375 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v128, v129);
  v355 = &v305 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v131, v132);
  v358 = &v305 - v133;
  MEMORY[0x1EEE9AC00](v134, v135);
  v363 = &v305 - v136;
  MEMORY[0x1EEE9AC00](v137, v138);
  v365 = &v305 - v139;
  MEMORY[0x1EEE9AC00](v140, v141);
  v367 = &v305 - v142;
  MEMORY[0x1EEE9AC00](v143, v144);
  v370 = (&v305 - v145);
  MEMORY[0x1EEE9AC00](v146, v147);
  v371 = (&v305 - v148);
  MEMORY[0x1EEE9AC00](v149, v150);
  v152 = &v305 - v151;
  v153 = MEMORY[0x1E69E7CC0];
  v154 = sub_1E105895C(0, 8, 0, MEMORY[0x1E69E7CC0]);
  v155 = v154;
  v156 = *(v380 + 16);
  v376 = v156;
  v352 = v101;
  if (!v156)
  {
    v339 = v153;
    v101 = v371;
    goto LABEL_22;
  }

  v308 = v72;
  v157 = v68;
  v158 = 0;
  v159 = (v101 + 6);
  v307 = v157;
  v344 = (v157 + 56);
  v339 = MEMORY[0x1E69E7CC0];
  v160 = &v381;
  v354 = v154;
  while (2)
  {
    v155 = v158;
    while (1)
    {
      if (v155 >= v156)
      {
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        v289 = v154;
        v290 = sub_1E105895C((v160 > 1), v153, 1, v155);
        v156 = v376;
        v155 = v290;
        v154 = v289;
LABEL_24:
        *(v155 + 2) = v153;
        v173 = &v155[16 * v152];
        *(v173 + 4) = v154;
        v173[40] = 0;
        v152 = v361;
        if (!v156)
        {
          goto LABEL_46;
        }

        goto LABEL_25;
      }

      v154 = sub_1E0FEDC50(v380 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v155, v152, &qword_1ECE89708, &qword_1E10B31B8);
      v158 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        goto LABEL_225;
      }

      sub_1E0FEDC50(v152 + *(v373 + 44), v100, &qword_1ECE89C90, &qword_1E10B44E8);
      if ((*v159)(v100, 1, v374) == 1)
      {
        v304 = v100;
        goto LABEL_245;
      }

      sub_1E1048374(v100, v127, type metadata accessor for EventAttributes);
      sub_1E10AE06C();
      v153 = v164;
      v165 = sub_1E10AE74C();

      if ((v165 - 1) >= 7)
      {
        break;
      }

      sub_1E10482EC(v127, type metadata accessor for EventAttributes);
      v161 = v152;
      v162 = &qword_1ECE89708;
      v163 = &qword_1E10B31B8;
LABEL_5:
      v154 = sub_1E0FF0440(v161, v162, v163);
      v101 = v371;
      ++v155;
      v156 = v376;
      if (v158 == v376)
      {
        v155 = v354;
        goto LABEL_22;
      }
    }

    if (v165)
    {
      sub_1E1031F0C();
      swift_allocError();
      *v278 = 2;
      swift_willThrow();
      sub_1E0FF0440(v152, &qword_1ECE89708, &qword_1E10B31B8);
      sub_1E10482EC(v127, type metadata accessor for EventAttributes);

      goto LABEL_221;
    }

    sub_1E10482EC(v127, type metadata accessor for EventAttributes);
    v166 = v368;
    sub_1E1042040(v360, &v377);
    v368 = v166;
    if (v166)
    {
      sub_1E0FF0440(v152, &qword_1ECE89708, &qword_1E10B31B8);

      goto LABEL_221;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
    v153 = v350;
    v167 = v349;
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E0FF0440(v152, &qword_1ECE89708, &qword_1E10B31B8);
      (*v344)(v153, 1, 1, v167);
      v161 = v153;
      v162 = &qword_1ECE8A060;
      v163 = &qword_1E10B4E38;
      goto LABEL_5;
    }

    (*v344)(v153, 0, 1, v167);
    v168 = v153;
    v169 = v323;
    sub_1E1048374(v168, v323, type metadata accessor for Music);
    sub_1E10483DC(v169, v308, type metadata accessor for Music);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v371;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v339 = sub_1E1058A90(0, v339[2] + 1, 1, v339);
    }

    v155 = v354;
    v153 = v339[2];
    v171 = v339[3];
    v306 = v153 + 1;
    if (v153 >= v171 >> 1)
    {
      v339 = sub_1E1058A90((v171 > 1), v153 + 1, 1, v339);
    }

    sub_1E10482EC(v323, type metadata accessor for Music);
    sub_1E0FF0440(v152, &qword_1ECE89708, &qword_1E10B31B8);
    v172 = v339;
    v339[2] = v306;
    v154 = sub_1E1048374(v308, v172 + ((*(v307 + 80) + 32) & ~*(v307 + 80)) + *(v307 + 72) * v153, type metadata accessor for Music);
    v156 = v376;
    if (v158 != v376)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v154 = v339;
  if (v339[2])
  {
    v152 = *(v155 + 2);
    v160 = *(v155 + 3);
    v153 = v152 + 1;
    if (v152 < v160 >> 1)
    {
      goto LABEL_24;
    }

    goto LABEL_240;
  }

  v156 = v376;
  v152 = v361;
  if (!v376)
  {
LABEL_46:
    v349 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

LABEL_25:
  v174 = 0;
  v153 = (v352 + 6);
  v350 = (v330 + 56);
  v349 = MEMORY[0x1E69E7CC0];
  v160 = &v381;
  v354 = v155;
  while (2)
  {
    v155 = v174;
    while (2)
    {
      if (v155 >= v156)
      {
        goto LABEL_226;
      }

      v154 = sub_1E0FEDC50(v380 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v155, v101, &qword_1ECE89708, &qword_1E10B31B8);
      v174 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        goto LABEL_227;
      }

      sub_1E0FEDC50(v101 + *(v373 + 44), v152, &qword_1ECE89C90, &qword_1E10B44E8);
      if ((*v153)(v152, 1, v374) == 1)
      {
LABEL_242:
        v304 = v152;
        goto LABEL_245;
      }

      sub_1E1048374(v152, v123, type metadata accessor for EventAttributes);
      sub_1E10AE06C();
      v175 = sub_1E10AE74C();

      if ((v175 - 2) < 6 || !v175)
      {
        sub_1E10482EC(v123, type metadata accessor for EventAttributes);
        v101 = v371;
        v154 = sub_1E0FF0440(v371, &qword_1ECE89708, &qword_1E10B31B8);
        goto LABEL_28;
      }

      v176 = v347;
      if (v175 != 1)
      {
        sub_1E1031F0C();
        swift_allocError();
        *v279 = 2;
        swift_willThrow();
        sub_1E0FF0440(v371, &qword_1ECE89708, &qword_1E10B31B8);
        sub_1E10482EC(v123, type metadata accessor for EventAttributes);
LABEL_208:

        goto LABEL_221;
      }

      sub_1E10482EC(v123, type metadata accessor for EventAttributes);
      v177 = v368;
      sub_1E1042040(v360, &v377);
      if (v177)
      {
        sub_1E0FF0440(v371, &qword_1ECE89708, &qword_1E10B31B8);
        goto LABEL_208;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
      v178 = v346;
      v179 = swift_dynamicCast();
      v368 = 0;
      if ((v179 & 1) == 0)
      {
        v101 = v371;
        sub_1E0FF0440(v371, &qword_1ECE89708, &qword_1E10B31B8);
        (*v350)(v178, 1, 1, v176);
        v154 = sub_1E0FF0440(v178, &qword_1ECE8A058, &qword_1E10B4E30);
LABEL_28:
        ++v155;
        v156 = v376;
        v152 = v361;
        if (v174 == v376)
        {
          v155 = v354;
          goto LABEL_47;
        }

        continue;
      }

      break;
    }

    (*v350)(v178, 0, 1, v176);
    v180 = v178;
    v181 = v321;
    sub_1E1048374(v180, v321, type metadata accessor for Sport);
    sub_1E10483DC(v181, v322, type metadata accessor for Sport);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v349 = sub_1E1058A68(0, v349[2] + 1, 1, v349);
    }

    v155 = v354;
    v183 = v349[2];
    v182 = v349[3];
    if (v183 >= v182 >> 1)
    {
      v349 = sub_1E1058A68((v182 > 1), v183 + 1, 1, v349);
    }

    sub_1E10482EC(v321, type metadata accessor for Sport);
    v101 = v371;
    sub_1E0FF0440(v371, &qword_1ECE89708, &qword_1E10B31B8);
    v184 = v349;
    v349[2] = v183 + 1;
    v154 = sub_1E1048374(v322, v184 + ((*(v330 + 80) + 32) & ~*(v330 + 80)) + *(v330 + 72) * v183, type metadata accessor for Sport);
    v156 = v376;
    v152 = v361;
    if (v174 != v376)
    {
      continue;
    }

    break;
  }

LABEL_47:
  v154 = v349;
  if (!v349[2])
  {

    v156 = v376;
    v186 = v372;
    v123 = v351;
    if (v376)
    {
      goto LABEL_51;
    }

LABEL_71:
    v361 = MEMORY[0x1E69E7CC0];
    goto LABEL_72;
  }

  v152 = *(v155 + 2);
  v185 = *(v155 + 3);
  v186 = v372;
  v123 = v351;
  v187 = v368;
  if (v152 >= v185 >> 1)
  {
    v291 = v349;
    v292 = sub_1E105895C((v185 > 1), v152 + 1, 1, v155);
    v156 = v376;
    v155 = v292;
    v154 = v291;
  }

  *(v155 + 2) = v152 + 1;
  v188 = &v155[16 * v152];
  *(v188 + 4) = v154;
  v188[40] = 1;
  v368 = v187;
  if (!v156)
  {
    goto LABEL_71;
  }

LABEL_51:
  v189 = 0;
  v190 = (v352 + 6);
  v371 = (v329 + 56);
  v361 = MEMORY[0x1E69E7CC0];
  v153 = &qword_1ECE89708;
  v101 = &unk_1F5BED160;
  v160 = &v381;
  v354 = v155;
  do
  {
    v155 = v189;
    while (1)
    {
      if (v155 >= v156)
      {
        goto LABEL_228;
      }

      v152 = v370;
      v154 = sub_1E0FEDC50(v380 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v155, v370, &qword_1ECE89708, &qword_1E10B31B8);
      v189 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        goto LABEL_229;
      }

      sub_1E0FEDC50(v152 + *(v373 + 44), v123, &qword_1ECE89C90, &qword_1E10B44E8);
      if ((*v190)(v123, 1, v374) == 1)
      {
LABEL_241:
        v304 = v123;
LABEL_245:
        sub_1E0FF0440(v304, &qword_1ECE89C90, &qword_1E10B44E8);
        result = sub_1E10AE6FC();
        __break(1u);
        return result;
      }

      sub_1E1048374(v123, v369, type metadata accessor for EventAttributes);
      sub_1E10AE06C();
      v191 = sub_1E10AE74C();

      if (v191 > 7)
      {
        sub_1E1031F0C();
        swift_allocError();
        *v280 = 2;
        swift_willThrow();
        sub_1E0FF0440(v370, &qword_1ECE89708, &qword_1E10B31B8);
        sub_1E10482EC(v369, type metadata accessor for EventAttributes);

        goto LABEL_221;
      }

      v192 = v191 == 4;
      v152 = v370;
      if (v192)
      {
        break;
      }

      sub_1E10482EC(v369, type metadata accessor for EventAttributes);
      v154 = sub_1E0FF0440(v152, &qword_1ECE89708, &qword_1E10B31B8);
      v186 = v372;
LABEL_53:
      ++v155;
      v156 = v376;
      if (v189 == v376)
      {
        v155 = v354;
        goto LABEL_72;
      }
    }

    sub_1E10482EC(v369, type metadata accessor for EventAttributes);
    v193 = v368;
    sub_1E1042040(v360, &v377);
    v368 = v193;
    v186 = v372;
    if (v193)
    {
      sub_1E0FF0440(v370, &qword_1ECE89708, &qword_1E10B31B8);

      goto LABEL_221;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
    v152 = v343;
    v194 = v342;
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E0FF0440(v370, &qword_1ECE89708, &qword_1E10B31B8);
      (*v371)(v152, 1, 1, v194);
      v154 = sub_1E0FF0440(v152, &qword_1ECE8A050, &qword_1E10B4E28);
      v160 = &v379;
      v123 = v351;
      goto LABEL_53;
    }

    (*v371)(v152, 0, 1, v194);
    v195 = v152;
    v196 = v319;
    sub_1E1048374(v195, v319, type metadata accessor for Theater);
    sub_1E10483DC(v196, v320, type metadata accessor for Theater);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v361 = sub_1E1058A40(0, v361[2] + 1, 1, v361);
    }

    v123 = v351;
    v198 = v361[2];
    v197 = v361[3];
    v152 = v198 + 1;
    if (v198 >= v197 >> 1)
    {
      v361 = sub_1E1058A40((v197 > 1), v198 + 1, 1, v361);
    }

    sub_1E10482EC(v319, type metadata accessor for Theater);
    sub_1E0FF0440(v370, &qword_1ECE89708, &qword_1E10B31B8);
    v199 = v361;
    v361[2] = v152;
    v154 = sub_1E1048374(v320, v199 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v198, type metadata accessor for Theater);
    v156 = v376;
    v160 = &v381;
    v155 = v354;
  }

  while (v189 != v376);
LABEL_72:
  v154 = v361;
  if (!v361[2])
  {

    v156 = v376;
    v123 = v348;
    if (v376)
    {
      goto LABEL_76;
    }

LABEL_96:
    v370 = MEMORY[0x1E69E7CC0];
    goto LABEL_97;
  }

  v152 = *(v155 + 2);
  v200 = *(v155 + 3);
  v123 = v348;
  if (v152 >= v200 >> 1)
  {
    v293 = v361;
    v294 = sub_1E105895C((v200 > 1), v152 + 1, 1, v155);
    v156 = v376;
    v155 = v294;
    v154 = v293;
  }

  *(v155 + 2) = v152 + 1;
  v201 = &v155[16 * v152];
  *(v201 + 4) = v154;
  v201[40] = 4;
  if (!v156)
  {
    goto LABEL_96;
  }

LABEL_76:
  v202 = 0;
  v203 = (v352 + 6);
  v371 = (v328 + 56);
  v370 = MEMORY[0x1E69E7CC0];
  v101 = &qword_1ECE89708;
  v153 = &unk_1F5BED160;
  v160 = &v381;
  v354 = v155;
  do
  {
    v155 = v202;
    while (1)
    {
      if (v155 >= v156)
      {
        goto LABEL_230;
      }

      v152 = v367;
      v154 = sub_1E0FEDC50(v380 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v155, v367, &qword_1ECE89708, &qword_1E10B31B8);
      v202 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        goto LABEL_231;
      }

      sub_1E0FEDC50(v152 + *(v373 + 44), v123, &qword_1ECE89C90, &qword_1E10B44E8);
      if ((*v203)(v123, 1, v374) == 1)
      {
        goto LABEL_241;
      }

      sub_1E1048374(v123, v366, type metadata accessor for EventAttributes);
      sub_1E10AE06C();
      v204 = sub_1E10AE74C();

      if (v204 > 7)
      {
        sub_1E1031F0C();
        swift_allocError();
        *v281 = 2;
        swift_willThrow();
        sub_1E0FF0440(v367, &qword_1ECE89708, &qword_1E10B31B8);
        v282 = v366;
        goto LABEL_218;
      }

      v192 = v204 == 3;
      v152 = v367;
      if (v192)
      {
        break;
      }

      sub_1E10482EC(v366, type metadata accessor for EventAttributes);
      v154 = sub_1E0FF0440(v152, &qword_1ECE89708, &qword_1E10B31B8);
      v186 = v372;
LABEL_78:
      ++v155;
      v156 = v376;
      if (v202 == v376)
      {
        v155 = v354;
        goto LABEL_97;
      }
    }

    sub_1E10482EC(v366, type metadata accessor for EventAttributes);
    v205 = v368;
    sub_1E1042040(v360, &v377);
    v368 = v205;
    v186 = v372;
    if (v205)
    {
      v283 = v367;
LABEL_220:
      sub_1E0FF0440(v283, &qword_1ECE89708, &qword_1E10B31B8);

      goto LABEL_221;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
    v152 = v341;
    v206 = v340;
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E0FF0440(v367, &qword_1ECE89708, &qword_1E10B31B8);
      (*v371)(v152, 1, 1, v206);
      v154 = sub_1E0FF0440(v152, &qword_1ECE8A048, &qword_1E10B4E20);
      v160 = &v378;
      v123 = v348;
      goto LABEL_78;
    }

    (*v371)(v152, 0, 1, v206);
    v207 = v152;
    v208 = v317;
    sub_1E1048374(v207, v317, type metadata accessor for Dance);
    sub_1E10483DC(v208, v318, type metadata accessor for Dance);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v370 = sub_1E1058A18(0, v370[2] + 1, 1, v370);
    }

    v123 = v348;
    v210 = v370[2];
    v209 = v370[3];
    v152 = v210 + 1;
    if (v210 >= v209 >> 1)
    {
      v370 = sub_1E1058A18((v209 > 1), v210 + 1, 1, v370);
    }

    sub_1E10482EC(v317, type metadata accessor for Dance);
    sub_1E0FF0440(v367, &qword_1ECE89708, &qword_1E10B31B8);
    v211 = v370;
    v370[2] = v152;
    v154 = sub_1E1048374(v318, v211 + ((*(v328 + 80) + 32) & ~*(v328 + 80)) + *(v328 + 72) * v210, type metadata accessor for Dance);
    v156 = v376;
    v160 = &v381;
    v155 = v354;
  }

  while (v202 != v376);
LABEL_97:
  v154 = v370;
  if (!v370[2])
  {

    v156 = v376;
    v123 = v345;
    if (v376)
    {
      goto LABEL_101;
    }

LABEL_121:
    v370 = MEMORY[0x1E69E7CC0];
    goto LABEL_122;
  }

  v213 = *(v155 + 2);
  v212 = *(v155 + 3);
  v152 = v213 + 1;
  v123 = v345;
  if (v213 >= v212 >> 1)
  {
    v295 = v370;
    v296 = sub_1E105895C((v212 > 1), v213 + 1, 1, v155);
    v156 = v376;
    v155 = v296;
    v154 = v295;
  }

  *(v155 + 2) = v152;
  v214 = &v155[16 * v213];
  *(v214 + 4) = v154;
  v214[40] = 3;
  if (!v156)
  {
    goto LABEL_121;
  }

LABEL_101:
  v215 = 0;
  v216 = (v352 + 6);
  v371 = (v327 + 56);
  v370 = MEMORY[0x1E69E7CC0];
  v101 = &qword_1ECE89708;
  v153 = &unk_1F5BED160;
  v160 = &v381;
  v354 = v155;
  do
  {
    v155 = v215;
    while (1)
    {
      if (v155 >= v156)
      {
        goto LABEL_232;
      }

      v152 = v365;
      v154 = sub_1E0FEDC50(v380 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v155, v365, &qword_1ECE89708, &qword_1E10B31B8);
      v215 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        goto LABEL_233;
      }

      sub_1E0FEDC50(v152 + *(v373 + 44), v123, &qword_1ECE89C90, &qword_1E10B44E8);
      if ((*v216)(v123, 1, v374) == 1)
      {
        goto LABEL_241;
      }

      sub_1E1048374(v123, v364, type metadata accessor for EventAttributes);
      sub_1E10AE06C();
      v217 = sub_1E10AE74C();

      if (v217 > 7)
      {
        sub_1E1031F0C();
        swift_allocError();
        *v284 = 2;
        swift_willThrow();
        sub_1E0FF0440(v365, &qword_1ECE89708, &qword_1E10B31B8);
        v282 = v364;
        goto LABEL_218;
      }

      v192 = v217 == 2;
      v152 = v365;
      if (v192)
      {
        break;
      }

      sub_1E10482EC(v364, type metadata accessor for EventAttributes);
      v154 = sub_1E0FF0440(v152, &qword_1ECE89708, &qword_1E10B31B8);
      v186 = v372;
LABEL_103:
      ++v155;
      v156 = v376;
      if (v215 == v376)
      {
        v155 = v354;
        goto LABEL_122;
      }
    }

    sub_1E10482EC(v364, type metadata accessor for EventAttributes);
    v218 = v368;
    sub_1E1042040(v360, &v377);
    v368 = v218;
    v186 = v372;
    if (v218)
    {
      v283 = v365;
      goto LABEL_220;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
    v152 = v338;
    v219 = v337;
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E0FF0440(v365, &qword_1ECE89708, &qword_1E10B31B8);
      (*v371)(v152, 1, 1, v219);
      v154 = sub_1E0FF0440(v152, &qword_1ECE8A040, &qword_1E10B4E18);
      v160 = &v377;
      v123 = v345;
      goto LABEL_103;
    }

    (*v371)(v152, 0, 1, v219);
    v220 = v152;
    v221 = v315;
    sub_1E1048374(v220, v315, type metadata accessor for Art);
    sub_1E10483DC(v221, v316, type metadata accessor for Art);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v370 = sub_1E10589F0(0, v370[2] + 1, 1, v370);
    }

    v123 = v345;
    v223 = v370[2];
    v222 = v370[3];
    v152 = v223 + 1;
    if (v223 >= v222 >> 1)
    {
      v370 = sub_1E10589F0((v222 > 1), v223 + 1, 1, v370);
    }

    sub_1E10482EC(v315, type metadata accessor for Art);
    sub_1E0FF0440(v365, &qword_1ECE89708, &qword_1E10B31B8);
    v224 = v370;
    v370[2] = v152;
    v154 = sub_1E1048374(v316, v224 + ((*(v327 + 80) + 32) & ~*(v327 + 80)) + *(v327 + 72) * v223, type metadata accessor for Art);
    v156 = v376;
    v160 = &v381;
    v155 = v354;
  }

  while (v215 != v376);
LABEL_122:
  v154 = v370;
  if (!v370[2])
  {

    v156 = v376;
    v123 = v358;
    if (v376)
    {
      goto LABEL_126;
    }

LABEL_146:
    v370 = MEMORY[0x1E69E7CC0];
    goto LABEL_147;
  }

  v226 = *(v155 + 2);
  v225 = *(v155 + 3);
  v152 = v226 + 1;
  v123 = v358;
  if (v226 >= v225 >> 1)
  {
    v297 = v370;
    v298 = sub_1E105895C((v225 > 1), v226 + 1, 1, v155);
    v156 = v376;
    v155 = v298;
    v154 = v297;
  }

  *(v155 + 2) = v152;
  v227 = &v155[16 * v226];
  *(v227 + 4) = v154;
  v227[40] = 2;
  if (!v156)
  {
    goto LABEL_146;
  }

LABEL_126:
  v228 = 0;
  v229 = (v352 + 6);
  v371 = (v326 + 56);
  v370 = MEMORY[0x1E69E7CC0];
  v101 = &qword_1ECE89708;
  v153 = &unk_1F5BED160;
  v160 = &v381;
  v354 = v155;
  do
  {
    v155 = v228;
    while (1)
    {
      if (v155 >= v156)
      {
        goto LABEL_234;
      }

      v152 = v363;
      v154 = sub_1E0FEDC50(v380 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v155, v363, &qword_1ECE89708, &qword_1E10B31B8);
      v228 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        goto LABEL_235;
      }

      v230 = v152 + *(v373 + 44);
      v152 = v357;
      sub_1E0FEDC50(v230, v357, &qword_1ECE89C90, &qword_1E10B44E8);
      if ((*v229)(v152, 1, v374) == 1)
      {
        goto LABEL_242;
      }

      sub_1E1048374(v152, v362, type metadata accessor for EventAttributes);
      sub_1E10AE06C();
      v231 = sub_1E10AE74C();

      if (v231 > 7)
      {
        sub_1E1031F0C();
        swift_allocError();
        *v285 = 2;
        swift_willThrow();
        sub_1E0FF0440(v363, &qword_1ECE89708, &qword_1E10B31B8);
        v282 = v362;
LABEL_218:
        sub_1E10482EC(v282, type metadata accessor for EventAttributes);

LABEL_221:

        return v155;
      }

      v192 = v231 == 5;
      v152 = v363;
      if (v192)
      {
        break;
      }

      sub_1E10482EC(v362, type metadata accessor for EventAttributes);
      v154 = sub_1E0FF0440(v152, &qword_1ECE89708, &qword_1E10B31B8);
      v186 = v372;
LABEL_128:
      ++v155;
      v156 = v376;
      if (v228 == v376)
      {
        v155 = v354;
        goto LABEL_147;
      }
    }

    sub_1E10482EC(v362, type metadata accessor for EventAttributes);
    v232 = v368;
    sub_1E1042040(v360, &v377);
    v368 = v232;
    v186 = v372;
    if (v232)
    {
      v283 = v363;
      goto LABEL_220;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
    v152 = v336;
    v233 = v335;
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E0FF0440(v363, &qword_1ECE89708, &qword_1E10B31B8);
      (*v371)(v152, 1, 1, v233);
      v154 = sub_1E0FF0440(v152, &qword_1ECE8A038, &qword_1E10B4E10);
      v160 = &v382;
      v123 = v358;
      goto LABEL_128;
    }

    (*v371)(v152, 0, 1, v233);
    v234 = v152;
    v235 = v313;
    sub_1E1048374(v234, v313, type metadata accessor for Apple);
    sub_1E10483DC(v235, v314, type metadata accessor for Apple);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v370 = sub_1E10589C8(0, v370[2] + 1, 1, v370);
    }

    v123 = v358;
    v237 = v370[2];
    v236 = v370[3];
    v152 = v237 + 1;
    if (v237 >= v236 >> 1)
    {
      v370 = sub_1E10589C8((v236 > 1), v237 + 1, 1, v370);
    }

    sub_1E10482EC(v313, type metadata accessor for Apple);
    sub_1E0FF0440(v363, &qword_1ECE89708, &qword_1E10B31B8);
    v238 = v370;
    v370[2] = v152;
    v154 = sub_1E1048374(v314, v238 + ((*(v326 + 80) + 32) & ~*(v326 + 80)) + *(v326 + 72) * v237, type metadata accessor for Apple);
    v156 = v376;
    v160 = &v381;
    v155 = v354;
  }

  while (v228 != v376);
LABEL_147:
  v154 = v370;
  if (!v370[2])
  {

    v156 = v376;
    v241 = v352;
    if (!v376)
    {
      goto LABEL_172;
    }

LABEL_151:
    v243 = 0;
    v244 = (v241 + 6);
    v371 = (v325 + 56);
    v370 = MEMORY[0x1E69E7CC0];
    v101 = &qword_1ECE89708;
    v153 = &unk_1F5BED160;
    v160 = &v381;
    v354 = v155;
LABEL_152:
    v155 = v243;
    while (1)
    {
      if (v155 >= v156)
      {
        goto LABEL_236;
      }

      v154 = sub_1E0FEDC50(v380 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v155, v123, &qword_1ECE89708, &qword_1E10B31B8);
      v243 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        goto LABEL_237;
      }

      sub_1E0FEDC50(&v123[*(v373 + 44)], v186, &qword_1ECE89C90, &qword_1E10B44E8);
      if ((*v244)(v186, 1, v374) == 1)
      {
        v304 = v186;
        goto LABEL_245;
      }

      v245 = v359;
      sub_1E1048374(v186, v359, type metadata accessor for EventAttributes);
      sub_1E10AE06C();
      v152 = sub_1E10AE74C();

      if (v152 < 6)
      {
        goto LABEL_154;
      }

      if (v152 != 6)
      {
        break;
      }

      sub_1E10482EC(v359, type metadata accessor for EventAttributes);
      v123 = v358;
      v249 = v368;
      sub_1E1042040(v360, &v377);
      v368 = v249;
      if (v249)
      {
        v283 = v123;
        goto LABEL_220;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
      v152 = v334;
      v250 = v333;
      if (swift_dynamicCast())
      {
        (*v371)(v152, 0, 1, v250);
        v251 = v152;
        v252 = v311;
        sub_1E1048374(v251, v311, type metadata accessor for Festival);
        sub_1E10483DC(v252, v312, type metadata accessor for Festival);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v370 = sub_1E10589A0(0, v370[2] + 1, 1, v370);
        }

        v186 = v372;
        v254 = v370[2];
        v253 = v370[3];
        v152 = v254 + 1;
        if (v254 >= v253 >> 1)
        {
          v370 = sub_1E10589A0((v253 > 1), v254 + 1, 1, v370);
        }

        sub_1E10482EC(v311, type metadata accessor for Festival);
        sub_1E0FF0440(v123, &qword_1ECE89708, &qword_1E10B31B8);
        v255 = v370;
        v370[2] = v152;
        v154 = sub_1E1048374(v312, v255 + ((*(v325 + 80) + 32) & ~*(v325 + 80)) + *(v325 + 72) * v254, type metadata accessor for Festival);
        v156 = v376;
        v160 = &v381;
        v155 = v354;
        if (v243 != v376)
        {
          goto LABEL_152;
        }

        goto LABEL_173;
      }

      sub_1E0FF0440(v123, &qword_1ECE89708, &qword_1E10B31B8);
      (*v371)(v152, 1, 1, v250);
      v246 = v152;
      v247 = &qword_1ECE8A030;
      v248 = &qword_1E10B4E08;
LABEL_155:
      v154 = sub_1E0FF0440(v246, v247, v248);
      ++v155;
      v156 = v376;
      v186 = v372;
      if (v243 == v376)
      {
        v155 = v354;
        goto LABEL_173;
      }
    }

    v245 = v359;
    if (v152 != 7)
    {
      sub_1E1031F0C();
      swift_allocError();
      *v286 = 2;
      swift_willThrow();
      sub_1E0FF0440(v358, &qword_1ECE89708, &qword_1E10B31B8);
      v282 = v245;
      goto LABEL_218;
    }

LABEL_154:
    sub_1E10482EC(v245, type metadata accessor for EventAttributes);
    v123 = v358;
    v246 = v358;
    v247 = &qword_1ECE89708;
    v248 = &qword_1E10B31B8;
    goto LABEL_155;
  }

  v240 = *(v155 + 2);
  v239 = *(v155 + 3);
  v152 = v240 + 1;
  v241 = v352;
  if (v240 >= v239 >> 1)
  {
    v299 = v370;
    v300 = sub_1E105895C((v239 > 1), v240 + 1, 1, v155);
    v156 = v376;
    v155 = v300;
    v154 = v299;
  }

  *(v155 + 2) = v152;
  v242 = &v155[16 * v240];
  *(v242 + 4) = v154;
  v242[40] = 5;
  if (v156)
  {
    goto LABEL_151;
  }

LABEL_172:
  v370 = MEMORY[0x1E69E7CC0];
LABEL_173:
  v154 = v370;
  if (v370[2])
  {
    v257 = *(v155 + 2);
    v256 = *(v155 + 3);
    v152 = v257 + 1;
    v123 = v355;
    if (v257 >= v256 >> 1)
    {
      v301 = v370;
      v302 = sub_1E105895C((v256 > 1), v257 + 1, 1, v155);
      v156 = v376;
      v155 = v302;
      v154 = v301;
    }

    *(v155 + 2) = v152;
    v258 = &v155[16 * v257];
    *(v258 + 4) = v154;
    v258[40] = 6;
    if (v156)
    {
LABEL_177:
      v259 = 0;
      v260 = (v352 + 6);
      v372 = (v324 + 56);
      v371 = MEMORY[0x1E69E7CC0];
      v101 = &qword_1ECE89708;
      v153 = &unk_1F5BED160;
      v160 = &v381;
      v354 = v155;
LABEL_178:
      v155 = v259;
      while (v155 < v156)
      {
        v154 = sub_1E0FEDC50(v380 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v155, v123, &qword_1ECE89708, &qword_1E10B31B8);
        v259 = v155 + 1;
        if (__OFADD__(v155, 1))
        {
          goto LABEL_239;
        }

        v152 = v353;
        sub_1E0FEDC50(&v123[*(v373 + 44)], v353, &qword_1ECE89C90, &qword_1E10B44E8);
        if ((*v260)(v152, 1, v374) == 1)
        {
          goto LABEL_242;
        }

        v264 = v356;
        sub_1E1048374(v152, v356, type metadata accessor for EventAttributes);
        sub_1E10AE06C();
        v152 = v265;
        v266 = sub_1E10AE74C();

        if (v266 < 7)
        {
          sub_1E10482EC(v264, type metadata accessor for EventAttributes);
          v123 = v355;
          v261 = v355;
          v262 = &qword_1ECE89708;
          v263 = &qword_1E10B31B8;
        }

        else
        {
          if (v266 != 7)
          {
            sub_1E1031F0C();
            swift_allocError();
            *v288 = 2;
            swift_willThrow();
            sub_1E0FF0440(v355, &qword_1ECE89708, &qword_1E10B31B8);
            sub_1E10482EC(v356, type metadata accessor for EventAttributes);

            goto LABEL_221;
          }

          sub_1E10482EC(v356, type metadata accessor for EventAttributes);
          v123 = v355;
          v267 = v368;
          sub_1E1042040(v360, &v377);
          v368 = v267;
          if (v267)
          {
            sub_1E0FF0440(v123, &qword_1ECE89708, &qword_1E10B31B8);

            goto LABEL_221;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
          v152 = v332;
          v268 = v331;
          if (swift_dynamicCast())
          {
            (*v372)(v152, 0, 1, v268);
            v269 = v152;
            v270 = v309;
            sub_1E1048374(v269, v309, type metadata accessor for Nightlife);
            sub_1E10483DC(v270, v310, type metadata accessor for Nightlife);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v371 = sub_1E1058978(0, v371[2] + 1, 1, v371);
            }

            v272 = v371[2];
            v271 = v371[3];
            v152 = v272 + 1;
            if (v272 >= v271 >> 1)
            {
              v371 = sub_1E1058978((v271 > 1), v272 + 1, 1, v371);
            }

            sub_1E10482EC(v309, type metadata accessor for Nightlife);
            sub_1E0FF0440(v123, &qword_1ECE89708, &qword_1E10B31B8);
            v273 = v371;
            v371[2] = v152;
            v154 = sub_1E1048374(v310, v273 + ((*(v324 + 80) + 32) & ~*(v324 + 80)) + *(v324 + 72) * v272, type metadata accessor for Nightlife);
            v156 = v376;
            v160 = &v381;
            v155 = v354;
            if (v259 != v376)
            {
              goto LABEL_178;
            }

            goto LABEL_199;
          }

          sub_1E0FF0440(v123, &qword_1ECE89708, &qword_1E10B31B8);
          (*v372)(v152, 1, 1, v268);
          v261 = v152;
          v262 = &qword_1ECE8A028;
          v263 = &qword_1E10B4E00;
        }

        v154 = sub_1E0FF0440(v261, v262, v263);
        ++v155;
        v156 = v376;
        if (v259 == v376)
        {
          v155 = v354;
          goto LABEL_199;
        }
      }

      goto LABEL_238;
    }
  }

  else
  {

    v156 = v376;
    v123 = v355;
    if (v376)
    {
      goto LABEL_177;
    }
  }

  v371 = MEMORY[0x1E69E7CC0];
LABEL_199:
  v274 = v371;
  if (!v371[2])
  {
    goto LABEL_221;
  }

  v276 = *(v155 + 2);
  v275 = *(v155 + 3);
  if (v276 >= v275 >> 1)
  {
    v303 = v371;
    v155 = sub_1E105895C((v275 > 1), v276 + 1, 1, v155);
    v274 = v303;
  }

  *(v155 + 2) = v276 + 1;
  v277 = &v155[16 * v276];
  *(v277 + 4) = v274;
  v277[40] = 7;
  return v155;
}

uint64_t sub_1E103E4A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x656D6954646E65;
  if (v2 != 1)
  {
    v4 = 0x656E6F7A656D6974;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D69547472617473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0xE700000000000000;
  v8 = 0x656D6954646E65;
  if (*a2 != 1)
  {
    v8 = 0x656E6F7A656D6974;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D69547472617473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E10AE8FC();
  }

  return v11 & 1;
}

uint64_t sub_1E103E5A4()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

uint64_t sub_1E103E64C(uint64_t a1)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E103E6E0(uint64_t a1)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

unint64_t sub_1E103E784@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E10490E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E103E7B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE700000000000000;
  v5 = 0x656D6954646E65;
  if (v2 != 1)
  {
    v5 = 0x656E6F7A656D6974;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D69547472617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E103E818()
{
  v1 = 0x656D6954646E65;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7A656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

unint64_t sub_1E103E878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E10490E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E103E8A0(uint64_t a1)
{
  v2 = sub_1E103F988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E103E8DC(uint64_t a1)
{
  v2 = sub_1E103F988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E103E918@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89650, &qword_1E10B2930);
  MEMORY[0x1EEE9AC00](v4, v5);
  v42 = v37 - v6;
  v44 = sub_1E10ADE6C();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E10ADCBC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v37 - v18;
  v20 = sub_1E10ADACC();
  v40 = *(v20 - 8);
  v41 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for EventAttributes.Time(0) + 20);
  sub_1E103F9DC(&qword_1ECE8A0F8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1E10AE02C())
  {
    sub_1E1048554();
    swift_allocError();
    *v26 = 1;
    return swift_willThrow();
  }

  else
  {
    v37[1] = v2;
    v28 = *(v11 + 16);
    v28(v19, v3, v10);
    v28(v15, v3 + v25, v10);
    sub_1E10ADA9C();
    v29 = v42;
    sub_1E10ADE3C();
    v30 = v43;
    v31 = v44;
    if ((*(v43 + 48))(v29, 1, v44) == 1)
    {
      sub_1E0FF0440(v29, &qword_1ECE89650, &qword_1E10B2930);
      sub_1E1048554();
      swift_allocError();
      *v32 = 0;
      swift_willThrow();
      return (*(v40 + 8))(v24, v41);
    }

    else
    {
      v33 = *(v30 + 32);
      v34 = v38;
      v33(v38, v29, v31);
      v35 = v39;
      (*(v40 + 32))(v39, v24, v41);
      v36 = type metadata accessor for Time(0);
      return (v33)(v35 + *(v36 + 20), v34, v31);
    }
  }
}

uint64_t sub_1E103ED2C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A020, &qword_1E10B4DF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E103F988();
  sub_1E10AEA5C();
  LOBYTE(v16[0]) = 0;
  sub_1E10ADCBC();
  sub_1E103F9DC(&qword_1EE17FF68, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1E10AE8AC();
  if (!v2)
  {
    v11 = type metadata accessor for EventAttributes.Time(0);
    LOBYTE(v16[0]) = 1;
    sub_1E10AE8AC();
    v12 = (v3 + *(v11 + 24));
    v14 = *v12;
    v13 = v12[1];
    v16[0] = v14;
    v16[1] = v13;
    v17 = 2;
    sub_1E0FF4F38();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E103EF44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1E10ADCBC();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v33 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A010, &qword_1E10B4DF0);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for EventAttributes.Time(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E103F988();
  v36 = v15;
  v21 = v37;
  sub_1E10AEA3C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = a1;
  v30 = v20;
  LOBYTE(v38) = 0;
  sub_1E103F9DC(&qword_1EE180178, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v22 = v33;
  sub_1E10AE7FC();
  v33 = *(v32 + 32);
  (v33)(v30, v22, v3);
  LOBYTE(v38) = 1;
  sub_1E10AE7FC();
  v23 = v16;
  v24 = *(v16 + 20);
  v25 = v30;
  (v33)(&v30[v24], v7, v3);
  v40 = 2;
  sub_1E0FF4EE4();
  v26 = v36;
  sub_1E10AE7FC();
  (*(v34 + 8))(v26, v35);
  v27 = v39;
  v28 = (v25 + *(v23 + 24));
  *v28 = v38;
  v28[1] = v27;
  sub_1E10483DC(v25, v31, type metadata accessor for EventAttributes.Time);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1E10482EC(v25, type metadata accessor for EventAttributes.Time);
}

uint64_t sub_1E103F39C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A1F8, &qword_1E10B5420);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1049134();
  sub_1E10AEA5C();
  v10[15] = 0;
  sub_1E10ADBBC();
  sub_1E103F9DC(&qword_1ECE88CC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1E10AE8AC();
  if (!v1)
  {
    type metadata accessor for EventAttributes.Tickets.TicketLink(0);
    v10[14] = 1;
    sub_1E10AE86C();
    v10[13] = 2;
    sub_1E10AE89C();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1E103F588@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1E10ADBBC();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A1E8, &qword_1E10B5418);
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for EventAttributes.Tickets.TicketLink(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1049134();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v31;
  v17 = v32;
  v28 = v12;
  v29 = v16;
  v37 = 0;
  sub_1E103F9DC(&qword_1ECE88D38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v20 = v33;
  v19 = v34;
  sub_1E10AE7FC();
  (*(v17 + 32))(v29, v20, v4);
  v36 = 1;
  v21 = sub_1E10AE7BC();
  v22 = &v29[*(v28 + 20)];
  *v22 = v21;
  v22[1] = v23;
  v35 = 2;
  v24 = sub_1E10AE7EC();
  (*(v18 + 8))(v11, v19);
  v25 = v29;
  *&v29[*(v28 + 24)] = v24;
  sub_1E10483DC(v25, v30, type metadata accessor for EventAttributes.Tickets.TicketLink);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E10482EC(v25, type metadata accessor for EventAttributes.Tickets.TicketLink);
}

unint64_t sub_1E103F988()
{
  result = qword_1ECE8A018;
  if (!qword_1ECE8A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A018);
  }

  return result;
}

uint64_t sub_1E103F9DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E103FA44()
{
  v1 = 0x726F646E6576;
  if (*v0 != 1)
  {
    v1 = 0x726564726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1E103FA90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1049188(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E103FAB8(uint64_t a1)
{
  v2 = sub_1E1049134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E103FAF4(uint64_t a1)
{
  v2 = sub_1E1049134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E103FB60()
{
  v32 = type metadata accessor for EventAttributes.Tickets.TicketLink(0);
  v1 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Ticket(0);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v0 + *(type metadata accessor for EventAttributes.Tickets(0) + 24));

  sub_1E1046A58(&v34);
  v11 = v34;
  v12 = *(v34 + 16);
  if (v12)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1E1059DB0(0, v12, 0);
    v13 = v34;
    v14 = v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v15 = *(v1 + 72);
    v28 = v11;
    v29 = v15;
    do
    {
      sub_1E10483DC(v14, v5, type metadata accessor for EventAttributes.Tickets.TicketLink);
      v16 = v32;
      v33 = *&v5[*(v32 + 24)];
      sub_1E10484A4();
      v17 = sub_1E10AE52C();
      v19 = v18;
      v20 = &v5[*(v16 + 20)];
      v22 = *v20;
      v21 = *(v20 + 1);
      v23 = *(v31 + 24);
      v24 = sub_1E10ADBBC();
      (*(*(v24 - 8) + 32))(v10 + v23, v5, v24);
      *v10 = v17;
      v10[1] = v19;
      v10[2] = v22;
      v10[3] = v21;
      v34 = v13;
      v26 = *(v13 + 16);
      v25 = *(v13 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1E1059DB0((v25 > 1), v26 + 1, 1);
        v13 = v34;
      }

      *(v13 + 16) = v26 + 1;
      sub_1E1048374(v10, v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, type metadata accessor for Ticket);
      v14 += v29;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1E103FE60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A270, &qword_1E10B5468);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A548();
  sub_1E10AEA5C();
  v16 = 0;
  sub_1E10ADBBC();
  sub_1E103F9DC(&qword_1ECE88CC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1E10AE8AC();
  if (!v2)
  {
    v11 = type metadata accessor for EventAttributes.Tickets(0);
    v15 = 1;
    sub_1E10AE86C();
    v14 = *(v3 + *(v11 + 24));
    v13[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A258, &qword_1E10B5460);
    sub_1E104A59C(&qword_1ECE8A278, &qword_1ECE8A280, &unk_1E10B52CC, MEMORY[0x1E69E6300]);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E10400B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1E10ADBBC();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A248, &qword_1E10B5458);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for EventAttributes.Tickets(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A548();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v30;
  v17 = v31;
  v27 = v16;
  v28 = a1;
  v37 = 0;
  sub_1E103F9DC(&qword_1ECE88D38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v20 = v32;
  v19 = v33;
  sub_1E10AE7FC();
  (*(v17 + 32))(v27, v20, v4);
  v36 = 1;
  v21 = sub_1E10AE7BC();
  v22 = &v27[*(v12 + 20)];
  *v22 = v21;
  v22[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A258, &qword_1E10B5460);
  v35 = 2;
  sub_1E104A59C(&qword_1ECE8A260, &qword_1ECE8A268, &unk_1E10B52F4, MEMORY[0x1E69E6330]);
  sub_1E10AE7FC();
  (*(v18 + 8))(v11, v19);
  v24 = *(v12 + 24);
  v25 = v27;
  *&v27[v24] = v34;
  sub_1E10483DC(v25, v29, type metadata accessor for EventAttributes.Tickets);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_1E10482EC(v25, type metadata accessor for EventAttributes.Tickets);
}

uint64_t sub_1E10404E8()
{
  v1 = 0x72656469766F7270;
  if (*v0 != 1)
  {
    v1 = 0x736B6E696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1E1040538@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1049298(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E1040560(uint64_t a1)
{
  v2 = sub_1E104A548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E104059C(uint64_t a1)
{
  v2 = sub_1E104A548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1040608(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A240, &qword_1E10B5450);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A4F4();
  sub_1E10AEA5C();
  v11 = v3[1];
  v14 = *v3;
  v15 = v11;
  v13[15] = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    type metadata accessor for EventAttributes.Provider(0);
    LOBYTE(v14) = 1;
    sub_1E10ADBBC();
    sub_1E103F9DC(&qword_1ECE88CC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E10407D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E10ADBBC();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A230, &qword_1E10B5448);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for EventAttributes.Provider(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A4F4();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v12;
  v17 = v16;
  v19 = v28;
  v18 = v29;
  v33 = 0;
  sub_1E0FF4EE4();
  v20 = v30;
  sub_1E10AE7FC();
  v21 = v32;
  *v17 = v31;
  v17[1] = v21;
  v24[0] = v17;
  v24[1] = v21;
  LOBYTE(v31) = 1;
  sub_1E103F9DC(&qword_1ECE88D38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E10AE7FC();
  (*(v19 + 8))(v11, v20);
  v22 = v24[0];
  (*(v26 + 32))(v24[0] + *(v25 + 20), v7, v18);
  sub_1E10483DC(v22, v27, type metadata accessor for EventAttributes.Provider);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E10482EC(v22, type metadata accessor for EventAttributes.Provider);
}

uint64_t sub_1E1040B2C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A228, &qword_1E10B5440);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A468();
  sub_1E10AEA5C();
  v10 = *(v2 + 48);
  v17 = *(v2 + 32);
  v18 = v10;
  v19 = *(v2 + 64);
  v11 = *(v2 + 16);
  v15 = *v2;
  v16 = v11;
  sub_1E104A4BC(v2, v13);
  sub_1E1028D50();
  sub_1E10AE85C();
  v13[2] = v17;
  v13[3] = v18;
  v14 = v19;
  v13[0] = v15;
  v13[1] = v16;
  sub_1E0FF0440(v13, &qword_1ECE89938, &qword_1E10B3C30);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1E1040CC8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7374656B636974;
    v6 = 0x72656469766F7270;
    if (a1 != 8)
    {
      v6 = 0x72616365726F6373;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1701669236;
    if (a1 != 5)
    {
      v7 = 7107189;
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
    v1 = 1684957547;
    v2 = 0x6465766F6D6572;
    v3 = 0x6C7255626577;
    if (a1 != 3)
    {
      v3 = 1701667182;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x646E694B627573;
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

uint64_t sub_1E1040DE8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A2B8, &qword_1E10B5478);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A638();
  sub_1E10AEA5C();
  v11 = v3[1];
  *&v30[0] = *v3;
  *(&v30[0] + 1) = v11;
  LOBYTE(v25) = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    LOBYTE(v30[0]) = 1;
    sub_1E10AE83C();
    LOBYTE(v30[0]) = 2;
    sub_1E10AE87C();
    v22 = type metadata accessor for EventAttributes(0);
    LOBYTE(v30[0]) = 3;
    sub_1E10ADBBC();
    sub_1E103F9DC(&qword_1ECE88CC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E10AE85C();
    v12 = (v3 + *(v22 + 32));
    v14 = *v12;
    v13 = v12[1];
    *&v30[0] = v14;
    *(&v30[0] + 1) = v13;
    LOBYTE(v25) = 4;
    sub_1E10AE8AC();
    LOBYTE(v30[0]) = 5;
    type metadata accessor for EventAttributes.Time(0);
    sub_1E103F9DC(&qword_1ECE8A2C0, type metadata accessor for EventAttributes.Time, &unk_1E10B4D9C);
    sub_1E10AE8AC();
    LOBYTE(v30[0]) = 6;
    sub_1E10AE85C();
    LOBYTE(v30[0]) = 7;
    type metadata accessor for EventAttributes.Tickets(0);
    sub_1E103F9DC(&qword_1ECE8A2C8, type metadata accessor for EventAttributes.Tickets, &unk_1E10B5080);
    sub_1E10AE85C();
    v35 = 8;
    type metadata accessor for EventAttributes.Provider(0);
    sub_1E103F9DC(&qword_1ECE8A2D0, type metadata accessor for EventAttributes.Provider, &unk_1E10B50D0);
    sub_1E10AE85C();
    v15 = v3 + *(v22 + 52);
    v16 = *(v15 + 1);
    v17 = *(v15 + 3);
    v31 = *(v15 + 2);
    v32 = v17;
    v18 = *(v15 + 1);
    v30[0] = *v15;
    v30[1] = v18;
    v19 = *(v15 + 3);
    v27 = v31;
    v28 = v19;
    v33 = *(v15 + 8);
    v29 = *(v15 + 8);
    v25 = v30[0];
    v26 = v16;
    v34 = 9;
    sub_1E0FEDC50(v30, v23, &qword_1ECE8A080, &qword_1E10B4E50);
    sub_1E104A6E0();
    sub_1E10AE85C();
    v23[2] = v27;
    v23[3] = v28;
    v24 = v29;
    v23[1] = v26;
    v23[0] = v25;
    sub_1E0FF0440(v23, &qword_1ECE8A080, &qword_1E10B4E50);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E1041300@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A078, &qword_1E10B4E48);
  MEMORY[0x1EEE9AC00](v3, v4);
  v54 = v49 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A070, &qword_1E10B4E40);
  MEMORY[0x1EEE9AC00](v6, v7);
  v55 = v49 - v8;
  v56 = type metadata accessor for EventAttributes.Time(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v49 - v19;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A288, &qword_1E10B5470);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v49 - v23;
  v25 = type metadata accessor for EventAttributes(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1E104A638();
  v58 = v24;
  v31 = v60;
  sub_1E10AEA3C();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v32 = v57;
  v60 = v25;
  v67 = 0;
  v33 = sub_1E0FF4EE4();
  sub_1E10AE7FC();
  v52 = v33;
  v34 = *(&v62 + 1);
  *v29 = v62;
  *(v29 + 1) = v34;
  LOBYTE(v62) = 1;
  *(v29 + 2) = sub_1E10AE78C();
  *(v29 + 3) = v35;
  LOBYTE(v62) = 2;
  v51 = 0;
  v29[32] = sub_1E10AE7CC() & 1;
  v49[1] = sub_1E10ADBBC();
  LOBYTE(v62) = 3;
  v36 = sub_1E103F9DC(&qword_1ECE88D38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v50 = v29;
  v37 = v36;
  sub_1E10AE7AC();
  v49[0] = v37;
  sub_1E0FEDEF4(v20, &v50[v60[7]], &qword_1ECE88C78, &qword_1E10B5E50);
  v67 = 4;
  sub_1E10AE7FC();
  v38 = *(&v62 + 1);
  v39 = v50;
  v40 = &v50[v60[8]];
  *v40 = v62;
  *(v40 + 1) = v38;
  LOBYTE(v62) = 5;
  sub_1E103F9DC(&qword_1ECE8A298, type metadata accessor for EventAttributes.Time, &unk_1E10B4DC4);
  sub_1E10AE7FC();
  v41 = v12;
  v42 = v60;
  sub_1E1048374(v41, &v39[v60[9]], type metadata accessor for EventAttributes.Time);
  LOBYTE(v62) = 6;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v16, &v39[v42[10]], &qword_1ECE88C78, &qword_1E10B5E50);
  type metadata accessor for EventAttributes.Tickets(0);
  LOBYTE(v62) = 7;
  sub_1E103F9DC(&qword_1ECE8A2A0, type metadata accessor for EventAttributes.Tickets, &unk_1E10B50A8);
  v43 = v55;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v43, &v39[v60[11]], &qword_1ECE8A070, &qword_1E10B4E40);
  type metadata accessor for EventAttributes.Provider(0);
  LOBYTE(v62) = 8;
  sub_1E103F9DC(&qword_1ECE8A2A8, type metadata accessor for EventAttributes.Provider, &unk_1E10B50F8);
  v44 = v54;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v44, &v39[v60[12]], &qword_1ECE8A078, &qword_1E10B4E48);
  v67 = 9;
  sub_1E104A68C();
  sub_1E10AE7AC();
  (*(v32 + 8))(v58, v59);
  v45 = &v29[v60[13]];
  v46 = v65;
  *(v45 + 2) = v64;
  *(v45 + 3) = v46;
  *(v45 + 8) = v66;
  v47 = v63;
  *v45 = v62;
  *(v45 + 1) = v47;
  sub_1E10483DC(v29, v53, type metadata accessor for EventAttributes);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return sub_1E10482EC(v29, type metadata accessor for EventAttributes);
}

uint64_t sub_1E1041D0C(uint64_t a1)
{
  v2 = sub_1E104A4F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1041D48(uint64_t a1)
{
  v2 = sub_1E104A4F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1041DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1041E4C(uint64_t a1)
{
  v2 = sub_1E104A468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1041E88(uint64_t a1)
{
  v2 = sub_1E104A468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E1041EC4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1E10493AC(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1E1041F64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1049570(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E1041F98(uint64_t a1)
{
  v2 = sub_1E104A638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1041FD4(uint64_t a1)
{
  v2 = sub_1E104A638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1042040@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v301 = a2;
  v296 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E18, &qword_1E10B6B80) - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v297 = &v288 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A070, &qword_1E10B4E40);
  MEMORY[0x1EEE9AC00](v6, v7);
  *&v314 = &v288 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  *&v311 = &v288 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v288 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  MEMORY[0x1EEE9AC00](v16, v17);
  v316 = &v288 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A078, &qword_1E10B4E48);
  MEMORY[0x1EEE9AC00](v19, v20);
  v307 = &v288 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v288 - v24;
  type metadata accessor for EventAttributes.Time(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v320 = &v288 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Time(0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v321 = &v288 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C90, &qword_1E10B44E8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v299 = &v288 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  *&v312 = &v288 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  *&v310 = &v288 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v308 = &v288 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v306 = &v288 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v303 = &v288 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v319 = &v288 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v318 = &v288 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v288 - v58;
  v323 = type metadata accessor for EventAttributes(0);
  v344 = *(v323 - 8);
  MEMORY[0x1EEE9AC00](v60, v61);
  v298 = &v288 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  *&v313 = &v288 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v309 = &v288 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v305 = &v288 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v304 = &v288 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v302 = &v288 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  *&v317 = &v288 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v84 = &v288 - v83;
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = &v288 - v87;
  v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0) - 8);
  MEMORY[0x1EEE9AC00](v90, v91);
  v93 = &v288 - v92;
  v300 = a1;
  v94 = a1[2];
  if (v94)
  {
    v95 = sub_1E10369BC(v94);
    if (*(v95 + 16))
    {
      v292 = v15;
      v293 = v25;
      sub_1E0FEDC50(v95 + ((*(v89 + 80) + 32) & ~*(v89 + 80)), v93, &qword_1ECE89C78, &qword_1E10B6BA0);

      sub_1E1030404(v343);
      sub_1E0FF0440(v93, &qword_1ECE89C78, &qword_1E10B6BA0);
      v339 = v343[6];
      v340 = v343[7];
      v341 = v343[8];
      v342 = v343[9];
      v335 = v343[2];
      v336 = v343[3];
      v337 = v343[4];
      v338 = v343[5];
      v333 = v343[0];
      v334 = v343[1];
      v96 = v324;
      v97 = v324[1];
      v291 = *v324;
      v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 44);
      sub_1E0FEDC50(v96 + v98, v59, &qword_1ECE89C90, &qword_1E10B44E8);
      v99 = *(v344 + 48);
      v344 += 48;
      v315 = v99;
      if (v99(v59, 1, v323) == 1)
      {

LABEL_88:
        v287 = v59;
        goto LABEL_91;
      }

      sub_1E1048374(v59, v88, type metadata accessor for EventAttributes);
      v100 = *(v88 + 3);

      sub_1E10482EC(v88, type metadata accessor for EventAttributes);
      v295 = v97;
      if (v100)
      {
        v101 = sub_1E10AE06C();
        v294 = v102;
      }

      else
      {
        v101 = 0;
        v294 = 0xE000000000000000;
      }

      v110 = v96 + v98;
      v111 = v96;
      v112 = v318;
      sub_1E0FEDC50(v110, v318, &qword_1ECE89C90, &qword_1E10B44E8);
      v113 = v323;
      v114 = v315;
      if (v315(v112, 1, v323) != 1)
      {
        v290 = v101;
        sub_1E1048374(v112, v84, type metadata accessor for EventAttributes);
        v115 = &v84[*(v113 + 32)];
        v116 = *(v115 + 1);
        v289 = *v115;

        sub_1E10482EC(v84, type metadata accessor for EventAttributes);
        v318 = v98;
        v117 = v111 + v98;
        v118 = v319;
        sub_1E0FEDC50(v117, v319, &qword_1ECE89C90, &qword_1E10B44E8);
        if (v114(v118, 1, v113) == 1)
        {
          v287 = v118;
          goto LABEL_91;
        }

        v119 = v118;
        v120 = v317;
        sub_1E1048374(v119, v317, type metadata accessor for EventAttributes);
        v121 = v320;
        sub_1E10483DC(v120 + *(v113 + 36), v320, type metadata accessor for EventAttributes.Time);
        sub_1E10482EC(v120, type metadata accessor for EventAttributes);
        v123 = v321;
        v122 = v322;
        v124 = v113;
        sub_1E103E918(v321);
        v322 = v122;
        if (v122)
        {
          sub_1E10482EC(v121, type metadata accessor for EventAttributes.Time);

          sub_1E0FEDAB8(&v333);
        }

        sub_1E10482EC(v121, type metadata accessor for EventAttributes.Time);
        v125 = v303;
        sub_1E0FEDC50(v324 + v318, v303, &qword_1ECE89C90, &qword_1E10B44E8);
        if (v114(v125, 1, v124) == 1)
        {
LABEL_86:
          v287 = v125;
          goto LABEL_91;
        }

        v126 = v125;
        v127 = v302;
        sub_1E1048374(v126, v302, type metadata accessor for EventAttributes);
        v128 = v307;
        sub_1E0FEDC50(v127 + *(v124 + 48), v307, &qword_1ECE8A078, &qword_1E10B4E48);
        sub_1E10482EC(v127, type metadata accessor for EventAttributes);
        v129 = type metadata accessor for EventAttributes.Provider(0);
        v130 = (*(*(v129 - 8) + 48))(v128, 1, v129);
        v288 = v116;
        if (v130 == 1)
        {
          sub_1E0FF0440(v128, &qword_1ECE8A078, &qword_1E10B4E48);
          v131 = type metadata accessor for EventAttribution(0);
          (*(*(v131 - 8) + 56))(v293, 1, 1, v131);
        }

        else
        {
          v132 = v123;
          v133 = *v128;
          v134 = *(v128 + 1);
          v135 = *(v129 + 20);
          v136 = type metadata accessor for EventAttribution(0);
          v137 = *(v136 + 20);
          v138 = sub_1E10ADBBC();
          v139 = v293;
          (*(*(v138 - 8) + 16))(v293 + v137, &v128[v135], v138);
          *v139 = v133;
          v139[1] = v134;
          (*(*(v136 - 8) + 56))(v139, 0, 1, v136);
          v123 = v132;

          sub_1E10482EC(v128, type metadata accessor for EventAttributes.Provider);
        }

        v112 = v306;
        v140 = v324;
        v141 = v318;
        sub_1E0FEDC50(v324 + v318, v306, &qword_1ECE89C90, &qword_1E10B44E8);
        v142 = v323;
        v143 = v315;
        if (v315(v112, 1, v323) != 1)
        {
          v144 = v112;
          v145 = v304;
          sub_1E1048374(v144, v304, type metadata accessor for EventAttributes);
          sub_1E0FEDC50(v145 + *(v142 + 28), v316, &qword_1ECE88C78, &qword_1E10B5E50);
          sub_1E10482EC(v145, type metadata accessor for EventAttributes);
          v146 = v140 + v141;
          v125 = v308;
          sub_1E0FEDC50(v146, v308, &qword_1ECE89C90, &qword_1E10B44E8);
          if (v143(v125, 1, v142) != 1)
          {
            v147 = v125;
            v148 = v305;
            sub_1E1048374(v147, v305, type metadata accessor for EventAttributes);
            v149 = v311;
            sub_1E0FEDC50(v148 + *(v142 + 44), v311, &qword_1ECE8A070, &qword_1E10B4E40);
            sub_1E10482EC(v148, type metadata accessor for EventAttributes);
            v150 = type metadata accessor for EventAttributes.Tickets(0);
            v151 = *(*(v150 - 8) + 48);
            if (v151(v149, 1, v150) == 1)
            {
              sub_1E0FF0440(v149, &qword_1ECE8A070, &qword_1E10B4E40);
              v152 = type metadata accessor for TicketAttribution(0);
              v153 = v292;
              (*(*(v152 - 8) + 56))(v292, 1, 1, v152);
            }

            else
            {
              v154 = (v149 + *(v150 + 20));
              v155 = v151;
              v157 = *v154;
              v156 = v154[1];
              v158 = type metadata accessor for TicketAttribution(0);
              v159 = *(v158 + 20);
              v160 = sub_1E10ADBBC();
              v161 = v292 + v159;
              v153 = v292;
              (*(*(v160 - 8) + 16))(v161, v149, v160);
              *v153 = v157;
              v153[1] = v156;
              v151 = v155;
              v123 = v321;
              (*(*(v158 - 8) + 56))(v153, 0, 1, v158);

              sub_1E10482EC(v149, type metadata accessor for EventAttributes.Tickets);
            }

            v162 = v310;
            sub_1E0FEDC50(v324 + v318, v310, &qword_1ECE89C90, &qword_1E10B44E8);
            v163 = v323;
            if (v315(v162, 1, v323) == 1)
            {
              v287 = v162;
              goto LABEL_91;
            }

            v164 = v309;
            sub_1E1048374(v162, v309, type metadata accessor for EventAttributes);
            v165 = v164 + *(v163 + 44);
            v166 = v314;
            sub_1E0FEDC50(v165, v314, &qword_1ECE8A070, &qword_1E10B4E40);
            sub_1E10482EC(v164, type metadata accessor for EventAttributes);
            if (v151(v166, 1, v150) == 1)
            {
              sub_1E0FF0440(v166, &qword_1ECE8A070, &qword_1E10B4E40);
              v167 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v167 = sub_1E103FB60();
              sub_1E10482EC(v166, type metadata accessor for EventAttributes.Tickets);
            }

            v168 = v293;
            v169 = v291;
            v125 = v312;
            sub_1E0FEDC50(v324 + v318, v312, &qword_1ECE89C90, &qword_1E10B44E8);
            v170 = v315(v125, 1, v323);
            v171 = v313;
            if (v170 != 1)
            {
              sub_1E1048374(v125, v313, type metadata accessor for EventAttributes);
              v172 = sub_1E10AE06C();
              v174 = sub_1E10A215C(v172, v173);
              if (v174 == 8)
              {

                sub_1E0FEDAB8(&v333);
                sub_1E1031F0C();
                v175 = swift_allocError();
                *v176 = 2;
                v322 = v175;
                swift_willThrow();
                sub_1E0FF0440(v153, &qword_1ECE88C80, &qword_1E10AF9D0);
                sub_1E0FF0440(v316, &qword_1ECE88C78, &qword_1E10B5E50);
                sub_1E0FF0440(v168, &qword_1ECE88C70, &qword_1E10AF9C8);
                sub_1E10482EC(v123, type metadata accessor for Time);
                return sub_1E10482EC(v171, type metadata accessor for EventAttributes);
              }

              sub_1E10482EC(v171, type metadata accessor for EventAttributes);
              if (v174 > 3)
              {
                if (v174 > 5)
                {
                  sub_1E0FF0440(v316, &qword_1ECE88C78, &qword_1E10B5E50);
                  if (v174 == 6)
                  {
                    v182 = type metadata accessor for Festival(0);
                    v183 = v301;
                    v301[3] = v182;
                    v184 = &qword_1EE17E678;
                    v185 = type metadata accessor for Festival;
                    v186 = &protocol conformance descriptor for Festival;
                  }

                  else
                  {
                    v182 = type metadata accessor for Nightlife(0);
                    v183 = v301;
                    v301[3] = v182;
                    v184 = &qword_1EE17E598;
                    v185 = type metadata accessor for Nightlife;
                    v186 = &protocol conformance descriptor for Nightlife;
                  }
                }

                else
                {
                  if (v174 != 4)
                  {

                    sub_1E0FF0440(v153, &qword_1ECE88C80, &qword_1E10AF9D0);
                    sub_1E0FF0440(v316, &qword_1ECE88C78, &qword_1E10B5E50);
                    sub_1E0FF0440(v168, &qword_1ECE88C70, &qword_1E10AF9C8);
                    v190 = type metadata accessor for Apple(0);
                    v191 = v301;
                    v301[3] = v190;
                    v191[4] = sub_1E103F9DC(&qword_1EE17EDC0, type metadata accessor for Apple, &protocol conformance descriptor for Apple);
                    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v191);
                    result = sub_1E1048374(v123, boxed_opaque_existential_1 + *(v190 + 28), type metadata accessor for Time);
                    v193 = v295;
                    *boxed_opaque_existential_1 = v169;
                    boxed_opaque_existential_1[1] = v193;
                    v194 = v294;
                    boxed_opaque_existential_1[2] = v290;
                    boxed_opaque_existential_1[3] = v194;
                    boxed_opaque_existential_1[4] = 0;
                    boxed_opaque_existential_1[5] = 0;
                    v195 = v288;
                    boxed_opaque_existential_1[6] = v289;
                    boxed_opaque_existential_1[7] = v195;
                    v196 = (boxed_opaque_existential_1 + *(v190 + 32));
                    v197 = v334;
                    *v196 = v333;
                    v196[1] = v197;
                    v199 = v335;
                    v198 = v336;
                    v200 = v338;
                    v196[4] = v337;
                    v196[5] = v200;
                    v196[2] = v199;
                    v196[3] = v198;
                    v201 = v339;
                    v202 = v340;
                    v203 = v342;
                    v196[8] = v341;
                    v196[9] = v203;
                    v196[6] = v201;
                    v196[7] = v202;
                    return result;
                  }

                  sub_1E0FF0440(v316, &qword_1ECE88C78, &qword_1E10B5E50);
                  v182 = type metadata accessor for Theater(0);
                  v183 = v301;
                  v301[3] = v182;
                  v184 = &qword_1EE17E758;
                  v185 = type metadata accessor for Theater;
                  v186 = &protocol conformance descriptor for Theater;
                }
              }

              else
              {
                if (v174 <= 1)
                {
                  v320 = v167;
                  if (!v174)
                  {
                    v177 = v300;
                    v178 = v300[1];
                    if (v178)
                    {
                      *&v326 = v300[1];
                      v179 = v322;
                      sub_1E1043F20(&v326, v325);
                      v180 = v325[0];
                      *&v326 = v178;

                      sub_1E1044228(&v326, v177, v325);
                      v322 = v179;

                      v181 = v325[0];
                    }

                    else
                    {
                      v181 = MEMORY[0x1E69E7CC0];
                      v180 = MEMORY[0x1E69E7CC0];
                    }

                    if (v177[3])
                    {
                      *&v326 = v177[3];
                      v216 = v322;
                      sub_1E1044720(&v326, &qword_1ECE89D58, &qword_1E10B4890, sub_1E1037AF4, v325);
                      v322 = v216;
                      v217 = v325[0];
                    }

                    else
                    {
                      v217 = MEMORY[0x1E69E7CC0];
                    }

                    v344 = v217;
                    if (v177[5])
                    {
                      *&v326 = v177[5];
                      v224 = v322;
                      sub_1E1044720(&v326, &qword_1ECE89D98, &qword_1E10B48A8, sub_1E10380BC, v325);
                      v322 = v224;
                      v225 = v325[0];
                    }

                    else
                    {
                      v225 = MEMORY[0x1E69E7CC0];
                    }

                    v323 = v225;
                    if (v177[6])
                    {
                      *&v326 = v177[6];
                      v226 = v322;
                      sub_1E1044A7C(&v326, v325);
                      v322 = v226;
                      v227 = v325[0];
                    }

                    else
                    {
                      v227 = MEMORY[0x1E69E7CC0];
                    }

                    if (v177[7])
                    {
                      *&v326 = v177[7];
                      v228 = v322;
                      sub_1E1044E1C(&v326, v325);
                      v322 = v228;
                      v229 = v325[0];
                    }

                    else
                    {
                      v229 = MEMORY[0x1E69E7CC0];
                    }

                    if (v177[4])
                    {
                      *&v326 = v177[4];
                      v230 = v322;
                      sub_1E10451F4(&v326, v325);
                      v322 = v230;
                      v231 = v325[0];
                    }

                    else
                    {
                      v231 = MEMORY[0x1E69E7CC0];
                    }

                    v232 = type metadata accessor for Music(0);
                    v233 = v301;
                    v301[3] = v232;
                    v233[4] = sub_1E103F9DC(&qword_1EE17EB40, type metadata accessor for Music, &protocol conformance descriptor for Music);
                    v234 = __swift_allocate_boxed_opaque_existential_1(v233);
                    sub_1E1048374(v321, v234 + v232[7], type metadata accessor for Time);
                    sub_1E0FEDEF4(v293, v234 + v232[9], &qword_1ECE88C70, &qword_1E10AF9C8);
                    sub_1E0FEDEF4(v316, v234 + v232[10], &qword_1ECE88C78, &qword_1E10B5E50);
                    sub_1E0FEDEF4(v292, v234 + v232[12], &qword_1ECE88C80, &qword_1E10AF9D0);
                    v235 = v295;
                    *v234 = v169;
                    v234[1] = v235;
                    v236 = v294;
                    v234[2] = v290;
                    v234[3] = v236;
                    v234[4] = 0;
                    v234[5] = 0;
                    v237 = v288;
                    v234[6] = v289;
                    v234[7] = v237;
                    v238 = (v234 + v232[8]);
                    v239 = v334;
                    *v238 = v333;
                    v238[1] = v239;
                    v241 = v335;
                    v240 = v336;
                    v242 = v338;
                    v238[4] = v337;
                    v238[5] = v242;
                    v238[2] = v241;
                    v238[3] = v240;
                    v243 = v339;
                    v244 = v340;
                    v245 = v342;
                    v238[8] = v341;
                    v238[9] = v245;
                    v238[6] = v243;
                    v238[7] = v244;
                    v246 = (v234 + v232[11]);
                    *v246 = v180;
                    v246[1] = v180;
                    *(v234 + v232[13]) = v320;
                    *(v234 + v232[14]) = v181;
                    v247 = (v234 + v232[15]);
                    v248 = v323;
                    *v247 = v344;
                    v247[1] = v248;
                    v247[2] = v227;
                    v247[3] = v229;
                    *(v234 + v232[16]) = v231;
                  }

                  v187 = v300;
                  if (v300[12])
                  {
                    *&v326 = v300[12];

                    v188 = v322;
                    sub_1E10453D4(&v326, v187, v325);
                    v322 = v188;

                    v189 = v325[0];
                  }

                  else
                  {
                    v189 = MEMORY[0x1E69E7CC0];
                  }

                  v309 = v189;
                  v218 = v323;
                  v219 = v318;
                  v220 = *(v187 + 72);
                  if (v220)
                  {
                    v221 = sub_1E103A360(v220);
                    if (*(v221 + 16))
                    {
                      v222 = v297;
                      sub_1E0FEDC50(v221 + ((*(v296 + 80) + 32) & ~*(v296 + 80)), v297, &qword_1ECE89E18, &qword_1E10B6B80);

                      sub_1E109A488(&v326);
                      v223 = v222;
                      v219 = v318;
                      sub_1E0FF0440(v223, &qword_1ECE89E18, &qword_1E10B6B80);
                      v317 = v326;
                      v313 = v328;
                      v314 = v327;
                      v310 = v331;
                      v311 = v330;
                      v312 = v329;
                      v319 = v332;
                    }

                    else
                    {

                      v319 = 0;
                      v317 = 0u;
                      v313 = 0u;
                      v314 = 0u;
                      v311 = 0u;
                      v312 = 0u;
                      v310 = 0u;
                    }

                    v218 = v323;
                  }

                  else
                  {
                    v319 = 0;
                    v317 = 0u;
                    v313 = 0u;
                    v314 = 0u;
                    v311 = 0u;
                    v312 = 0u;
                    v310 = 0u;
                  }

                  if (*(v187 + 80))
                  {
                    *&v326 = *(v187 + 80);
                    v249 = v322;
                    sub_1E1045A3C(&v326, v325);
                    v322 = v249;
                    v59 = v299;
                    if (*(v325[0] + 16))
                    {
                      v251 = *(v325[0] + 32);
                      v250 = *(v325[0] + 40);
                      v252 = *(v325[0] + 56);
                      v323 = *(v325[0] + 48);
                      v318 = v252;
                    }

                    else
                    {

                      v251 = 0;
                      v250 = 0;
                      v323 = 0;
                      v318 = 0;
                    }
                  }

                  else
                  {
                    v251 = 0;
                    v250 = 0;
                    v323 = 0;
                    v318 = 0;
                    v59 = v299;
                  }

                  sub_1E0FEDC50(v324 + v219, v59, &qword_1ECE89C90, &qword_1E10B44E8);
                  if (v315(v59, 1, v218) != 1)
                  {
                    v253 = v218;
                    v254 = v169;
                    v255 = v59;
                    v256 = v298;
                    sub_1E1048374(v255, v298, type metadata accessor for EventAttributes);
                    v257 = v256 + *(v253 + 52);
                    *&v330 = *(v257 + 64);
                    v258 = *(v257 + 48);
                    v328 = *(v257 + 32);
                    v329 = v258;
                    v259 = *(v257 + 16);
                    v326 = *v257;
                    v327 = v259;
                    sub_1E0FEDC50(&v326, v325, &qword_1ECE8A080, &qword_1E10B4E50);
                    sub_1E10482EC(v256, type metadata accessor for EventAttributes);
                    v260 = *(&v326 + 1);
                    v344 = v250;
                    if (*(&v326 + 1) >= 2uLL)
                    {
                      v261 = *(&v329 + 1);
                      v262 = v330;
                      v263 = v326;

                      sub_1E0FF0440(&v326, &qword_1ECE8A080, &qword_1E10B4E50);
                    }

                    else
                    {
                      v261 = 0;
                      v262 = 0;
                      v263 = 0;
                      v260 = 0;
                    }

                    v264 = type metadata accessor for Sport(0);
                    v265 = v301;
                    v301[3] = v264;
                    v265[4] = sub_1E103F9DC(&qword_1EE17E918, type metadata accessor for Sport, &protocol conformance descriptor for Sport);
                    v266 = __swift_allocate_boxed_opaque_existential_1(v265);
                    sub_1E1048374(v321, v266 + v264[7], type metadata accessor for Time);
                    sub_1E0FEDEF4(v293, v266 + v264[9], &qword_1ECE88C70, &qword_1E10AF9C8);
                    sub_1E0FEDEF4(v316, v266 + v264[10], &qword_1ECE88C78, &qword_1E10B5E50);
                    result = sub_1E0FEDEF4(v292, v266 + v264[12], &qword_1ECE88C80, &qword_1E10AF9D0);
                    v267 = v295;
                    *v266 = v254;
                    v266[1] = v267;
                    v268 = v294;
                    v266[2] = v290;
                    v266[3] = v268;
                    v266[4] = 0;
                    v266[5] = 0;
                    v269 = v288;
                    v266[6] = v289;
                    v266[7] = v269;
                    v270 = (v266 + v264[8]);
                    v271 = v334;
                    *v270 = v333;
                    v270[1] = v271;
                    v273 = v335;
                    v272 = v336;
                    v274 = v338;
                    v270[4] = v337;
                    v270[5] = v274;
                    v270[2] = v273;
                    v270[3] = v272;
                    v275 = v339;
                    v276 = v340;
                    v277 = v342;
                    v270[8] = v341;
                    v270[9] = v277;
                    v270[6] = v275;
                    v270[7] = v276;
                    *(v266 + v264[11]) = v309;
                    v278 = v319;
                    *(v266 + v264[13]) = v320;
                    v279 = v266 + v264[14];
                    v280 = v314;
                    *v279 = v317;
                    *(v279 + 1) = v280;
                    v281 = v312;
                    *(v279 + 2) = v313;
                    *(v279 + 3) = v281;
                    v282 = v310;
                    *(v279 + 4) = v311;
                    *(v279 + 5) = v282;
                    *(v279 + 12) = v278;
                    v283 = (v266 + v264[15]);
                    *v283 = v261;
                    v283[1] = v262;
                    v283[2] = v263;
                    v283[3] = v260;
                    v284 = (v266 + v264[16]);
                    v285 = v344;
                    *v284 = v251;
                    v284[1] = v285;
                    v286 = v318;
                    v284[2] = v323;
                    v284[3] = v286;
                    return result;
                  }

                  goto LABEL_88;
                }

                sub_1E0FF0440(v316, &qword_1ECE88C78, &qword_1E10B5E50);
                if (v174 == 2)
                {
                  v182 = type metadata accessor for Art(0);
                  v183 = v301;
                  v301[3] = v182;
                  v184 = &qword_1EE17EF50;
                  v185 = type metadata accessor for Art;
                  v186 = &protocol conformance descriptor for Art;
                }

                else
                {
                  v182 = type metadata accessor for Dance(0);
                  v183 = v301;
                  v301[3] = v182;
                  v184 = &qword_1EE17ECE0;
                  v185 = type metadata accessor for Dance;
                  v186 = &protocol conformance descriptor for Dance;
                }
              }

              v183[4] = sub_1E103F9DC(v184, v185, v186);
              v204 = __swift_allocate_boxed_opaque_existential_1(v183);
              sub_1E1048374(v123, v204 + v182[7], type metadata accessor for Time);
              sub_1E0FEDEF4(v168, v204 + v182[9], &qword_1ECE88C70, &qword_1E10AF9C8);
              result = sub_1E0FEDEF4(v153, v204 + v182[10], &qword_1ECE88C80, &qword_1E10AF9D0);
              v205 = v295;
              *v204 = v169;
              v204[1] = v205;
              v206 = v294;
              v204[2] = v290;
              v204[3] = v206;
              v204[4] = 0;
              v204[5] = 0;
              v207 = v288;
              v204[6] = v289;
              v204[7] = v207;
              v208 = (v204 + v182[8]);
              v209 = v334;
              *v208 = v333;
              v208[1] = v209;
              v211 = v335;
              v210 = v336;
              v212 = v338;
              v208[4] = v337;
              v208[5] = v212;
              v208[2] = v211;
              v208[3] = v210;
              v213 = v339;
              v214 = v340;
              v215 = v342;
              v208[8] = v341;
              v208[9] = v215;
              v208[6] = v213;
              v208[7] = v214;
              *(v204 + v182[11]) = v167;
              return result;
            }
          }

          goto LABEL_86;
        }
      }

      v287 = v112;
LABEL_91:
      sub_1E0FF0440(v287, &qword_1ECE89C90, &qword_1E10B44E8);
      result = sub_1E10AE6FC();
      __break(1u);
      return result;
    }
  }

  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v103 = sub_1E10ADF9C();
  __swift_project_value_buffer(v103, qword_1EE185540);
  v104 = sub_1E10ADF7C();
  v105 = sub_1E10AE44C();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_1E0FDF000, v104, v105, "There is no venue for the event", v106, 2u);
    MEMORY[0x1E12EE9E0](v106, -1, -1);
  }

  sub_1E1031F0C();
  v107 = swift_allocError();
  *v108 = 2;
  v322 = v107;
  return swift_willThrow();
}

uint64_t sub_1E1043F20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B2A0, &qword_1E10B3B40);
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v33 - v8);
  v10 = sub_1E1036F78(*a1);
  v11 = *(v10 + 16);
  if (v11)
  {
    v34 = a2;
    v35 = v2;
    v49 = MEMORY[0x1E69E7CC0];
    v12 = v10;
    sub_1E1059DF4(0, v11, 0);
    v13 = v12;
    v14 = 0;
    v15 = v49;
    v36 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v37 = v11;
    v16 = &unk_1ECE8B2A0;
    v38 = v13;
    v39 = v5;
    while (v14 < *(v13 + 16))
    {
      sub_1E0FEDC50(v36 + *(v5 + 72) * v14, v9, v16, &qword_1E10B3B40);
      v17 = v9 + *(v40 + 44);
      v18 = *(v17 + 1);
      if (!v18)
      {
        goto LABEL_15;
      }

      v19 = *v9;
      v20 = v9[1];
      v47 = *v17;
      v48 = v19;
      v21 = *(v17 + 3);
      if (v21)
      {
        v22 = *(v17 + 10);
        v44 = *(v17 + 9);
        v23 = *(v17 + 8);
        v24 = *(v17 + 2);
        v41 = *(v17 + 3);
        v43 = v24;
        v42 = *(v17 + 2);
        v45 = v23;
        v46 = v22;
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v42 = 0;
        v43 = 0u;
        v41 = 0u;
      }

      v25 = v16;
      sub_1E0FF0440(v9, v16, &qword_1E10B3B40);
      v49 = v15;
      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E1059DF4((v26 > 1), v27 + 1, 1);
        v15 = v49;
      }

      ++v14;
      *(v15 + 16) = v27 + 1;
      v28 = v15 + 104 * v27;
      v29 = v47;
      *(v28 + 32) = v48;
      *(v28 + 40) = v20;
      *(v28 + 48) = v29;
      *(v28 + 56) = v18;
      v30 = v46;
      *(v28 + 64) = v44;
      *(v28 + 72) = v30;
      *(v28 + 80) = v42;
      *(v28 + 88) = v21;
      v31 = v41;
      *(v28 + 96) = v43;
      *(v28 + 112) = v31;
      *(v28 + 128) = v45;
      v13 = v38;
      v5 = v39;
      v16 = v25;
      if (v37 == v14)
      {

        a2 = v34;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    result = sub_1E10AE6FC();
    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *a2 = v15;
  }

  return result;
}

uint64_t sub_1E1044228@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v48 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DF8, &unk_1E10B6AB0);
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v47 - v7);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B2A0, &qword_1E10B3B40) - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v47 - v12;
  v13 = sub_1E1036F78(*a1);
  v54 = *(v13 + 16);
  if (v54)
  {
    v14 = 0;
    v15 = *(a2 + 64);
    v52 = v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = MEMORY[0x1E69E7CC8];
    v53 = v15;
    if (v15)
    {
      v16 = v15;
    }

    v50 = v9;
    v51 = v16;
    v17 = &qword_1ECE89DF8;
    v57 = MEMORY[0x1E69E7CC0];
    v58 = v8;
    v18 = v55;
    v49 = v13;
    while (v14 < *(v13 + 16))
    {
      v20 = *(v9 + 72);
      v56 = v14;
      sub_1E0FEDC50(v52 + v20 * v14, v18, &unk_1ECE8B2A0, &qword_1E10B3B40);

      v21 = sub_1E1037538(v51);

      v22 = *(v21 + 16);
      if (v22)
      {
        v64 = MEMORY[0x1E69E7CC0];
        sub_1E1059E14(0, v22, 0);
        v23 = 0;
        v24 = v64;
        v60 = v21 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        while (v23 < *(v21 + 16))
        {
          sub_1E0FEDC50(v60 + *(v61 + 72) * v23, v8, v17, &unk_1E10B6AB0);
          v25 = (v8 + *(v59 + 44));
          v26 = v25[1];
          if (!v26)
          {
            goto LABEL_38;
          }

          v27 = *v8;
          v28 = v8[1];
          v62 = *v25;
          v63 = v27;

          v29 = v8;
          v30 = v17;
          sub_1E0FF0440(v29, v17, &unk_1E10B6AB0);
          v64 = v24;
          v32 = *(v24 + 16);
          v31 = *(v24 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1E1059E14((v31 > 1), v32 + 1, 1);
            v24 = v64;
          }

          ++v23;
          *(v24 + 16) = v32 + 1;
          v33 = (v24 + 32 * v32);
          v34 = v62;
          v33[4] = v63;
          v33[5] = v28;
          v33[6] = v34;
          v33[7] = v26;
          v17 = v30;
          v8 = v58;
          if (v22 == v23)
          {
            sub_1E0FF0440(v55, &unk_1ECE8B2A0, &qword_1E10B3B40);

            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      sub_1E0FF0440(v18, &unk_1ECE8B2A0, &qword_1E10B3B40);
      v24 = MEMORY[0x1E69E7CC0];
LABEL_17:
      v35 = *(v24 + 16);
      v36 = *(v57 + 2);
      v37 = v36 + v35;
      if (__OFADD__(v36, v35))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v57;
      if (!isUniquelyReferenced_nonNull_native || v37 > *(v57 + 3) >> 1)
      {
        if (v36 <= v37)
        {
          v40 = v36 + v35;
        }

        else
        {
          v40 = v36;
        }

        v39 = sub_1E1059150(isUniquelyReferenced_nonNull_native, v40, 1, v57);
      }

      v18 = v55;
      v41 = *(v24 + 16);
      v57 = v39;
      if (v41)
      {
        if ((*(v39 + 3) >> 1) - *(v39 + 2) < v35)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        v13 = v49;
        v9 = v50;
        v19 = v56;
        if (v35)
        {
          v42 = *(v57 + 2);
          v43 = __OFADD__(v42, v35);
          v44 = v42 + v35;
          if (v43)
          {
            goto LABEL_37;
          }

          *(v57 + 2) = v44;
        }
      }

      else
      {

        v13 = v49;
        v9 = v50;
        v19 = v56;
        if (v35)
        {
          goto LABEL_35;
        }
      }

      v14 = v19 + 1;
      if (v14 == v54)
      {

        v46 = v57;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    result = sub_1E10AE6FC();
    __break(1u);
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
LABEL_31:
    *v48 = v46;
  }

  return result;
}

uint64_t sub_1E1044720@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v6 = a3;
  v7 = a2;
  v43 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - v12;
  v14 = a4(*a1);
  v15 = v14;
  v16 = MEMORY[0x1E69E7CC0];
  v48 = *(v14 + 16);
  if (v48)
  {
    v17 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v46 = v7;
    v47 = v6;
    v44 = v14;
    v45 = v13;
    while (v17 < *(v15 + 16))
    {
      v18 = v15 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v19 = *(v49 + 72);
      v51 = v17;
      sub_1E0FEDC50(v18 + v19 * v17, v13, v7, v6);
      v20 = *&v13[*(v50 + 44)];
      if (!v20)
      {
        goto LABEL_33;
      }

      v21 = *(v20 + 16);
      if (v21)
      {
        v53 = v16;
        sub_1E1059E34(0, v21, 0);
        v22 = v53;
        v23 = (v20 + 56);
        do
        {
          v25 = *(v23 - 3);
          v24 = *(v23 - 2);
          v27 = *(v23 - 1);
          v26 = *v23;
          v53 = v22;
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);

          if (v29 >= v28 >> 1)
          {
            sub_1E1059E34((v28 > 1), v29 + 1, 1);
            v22 = v53;
          }

          v23 += 4;
          *(v22 + 16) = v29 + 1;
          v30 = (v22 + 32 * v29);
          v30[4] = v27;
          v30[5] = v26;
          v30[6] = v25;
          v30[7] = v24;
          --v21;
        }

        while (v21);
        v13 = v45;
        v7 = v46;
        v6 = v47;
        sub_1E0FF0440(v45, v46, v47);
        v15 = v44;
        v16 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E0FF0440(v13, v7, v6);
        v22 = v16;
      }

      v31 = *(v22 + 16);
      v32 = *(v52 + 2);
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v52;
      if (!isUniquelyReferenced_nonNull_native || v33 > *(v52 + 3) >> 1)
      {
        if (v32 <= v33)
        {
          v36 = v32 + v31;
        }

        else
        {
          v36 = v32;
        }

        v35 = sub_1E1059280(isUniquelyReferenced_nonNull_native, v36, 1, v52);
      }

      v37 = *(v22 + 16);
      v52 = v35;
      if (v37)
      {
        if ((*(v35 + 3) >> 1) - *(v35 + 2) < v31)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v31)
        {
          v38 = *(v52 + 2);
          v39 = __OFADD__(v38, v31);
          v40 = v38 + v31;
          if (v39)
          {
            goto LABEL_32;
          }

          *(v52 + 2) = v40;
        }
      }

      else
      {

        if (v31)
        {
          goto LABEL_30;
        }
      }

      v17 = v51 + 1;
      if (v51 + 1 == v48)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_1E10AE6FC();
    __break(1u);
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
LABEL_27:

    *v43 = v52;
  }

  return result;
}

uint64_t sub_1E1044A7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DB8, &qword_1E10B6B10);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v39 - v6;
  v8 = sub_1E1038680(*a1);
  v9 = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v43 = *(v8 + 16);
  if (!v43)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v37 = v12;

    *v40 = v37;
    return result;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v41 = v8;
  v42 = v7;
  while (v11 < *(v9 + 16))
  {
    v47 = v12;
    sub_1E0FEDC50(v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v11, v7, &qword_1ECE89DB8, &qword_1E10B6B10);
    v14 = *&v7[*(v45 + 44)];
    if (!v14)
    {
      goto LABEL_34;
    }

    v15 = *(v14 + 16);
    if (v15)
    {
      v46 = v11;
      v50 = v10;
      sub_1E1059E54(0, v15, 0);
      v16 = v50;
      v17 = (v14 + 72);
      do
      {
        v18 = *(v17 - 5);
        v19 = *(v17 - 4);
        v20 = *(v17 - 2);
        v48 = *(v17 - 3);
        v49 = v18;
        v21 = *(v17 - 1);
        v22 = *v17;
        v50 = v16;
        v24 = *(v16 + 16);
        v23 = *(v16 + 24);

        if (v24 >= v23 >> 1)
        {
          sub_1E1059E54((v23 > 1), v24 + 1, 1);
          v16 = v50;
        }

        v17 += 6;
        *(v16 + 16) = v24 + 1;
        v25 = (v16 + 48 * v24);
        v25[4] = v21;
        v25[5] = v22;
        v26 = v49;
        v25[6] = v48;
        v25[7] = v20;
        v25[8] = v26;
        v25[9] = v19;
        --v15;
      }

      while (v15);
      v7 = v42;
      sub_1E0FF0440(v42, &qword_1ECE89DB8, &qword_1E10B6B10);
      v9 = v41;
      v10 = MEMORY[0x1E69E7CC0];
      v11 = v46;
    }

    else
    {
      sub_1E0FF0440(v7, &qword_1ECE89DB8, &qword_1E10B6B10);
      v16 = v10;
    }

    v27 = *(v16 + 16);
    v28 = *(v47 + 2);
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v47;
    if (isUniquelyReferenced_nonNull_native && v29 <= *(v47 + 3) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v28 <= v29)
      {
        v32 = v28 + v27;
      }

      else
      {
        v32 = v28;
      }

      v31 = sub_1E10593D4(isUniquelyReferenced_nonNull_native, v32, 1, v47);
      if (*(v16 + 16))
      {
LABEL_23:
        if ((*(v31 + 3) >> 1) - *(v31 + 2) < v27)
        {
          goto LABEL_32;
        }

        v33 = v31;
        swift_arrayInitWithCopy();

        v12 = v33;
        if (v27)
        {
          v34 = *(v33 + 2);
          v35 = __OFADD__(v34, v27);
          v36 = v34 + v27;
          if (v35)
          {
            goto LABEL_33;
          }

          *(v33 + 2) = v36;
        }

        goto LABEL_4;
      }
    }

    v13 = v31;

    v12 = v13;
    if (v27)
    {
      goto LABEL_31;
    }

LABEL_4:
    if (++v11 == v43)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1E10AE6FC();
  __break(1u);
  return result;
}

uint64_t sub_1E1044E1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DD8, &qword_1E10B48C0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v42 - v6;
  v8 = sub_1E1038C48(*a1);
  v9 = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v46 = *(v8 + 16);
  if (!v46)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v40 = v12;

    *v43 = v40;
    return result;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v44 = v8;
  v45 = v7;
  while (v11 < *(v9 + 16))
  {
    v50 = v12;
    sub_1E0FEDC50(v9 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v11, v7, &qword_1ECE89DD8, &qword_1E10B48C0);
    v14 = *&v7[*(v48 + 44)];
    if (!v14)
    {
      goto LABEL_34;
    }

    v15 = *(v14 + 16);
    if (v15)
    {
      v49 = v11;
      v57 = v10;
      sub_1E1059E74(0, v15, 0);
      v16 = v57;
      v17 = (v14 + 104);
      do
      {
        v18 = *(v17 - 9);
        v19 = *(v17 - 8);
        v20 = *(v17 - 6);
        v56 = *(v17 - 7);
        v21 = *(v17 - 5);
        v22 = *(v17 - 4);
        v54 = v18;
        v55 = v21;
        v23 = *(v17 - 3);
        v52 = *(v17 - 2);
        v53 = v23;
        v24 = *v17;
        v51 = *(v17 - 1);
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        v57 = v16;

        if (v26 >= v25 >> 1)
        {
          sub_1E1059E74((v25 > 1), v26 + 1, 1);
          v16 = v57;
        }

        v17 += 10;
        *(v16 + 16) = v26 + 1;
        v27 = (v16 + 80 * v26);
        v27[4] = v54;
        v27[5] = v19;
        v27[6] = v51;
        v27[7] = v24;
        v28 = v52;
        v27[8] = v53;
        v27[9] = v28;
        v29 = v56;
        v27[10] = v55;
        v27[11] = v22;
        v27[12] = v29;
        v27[13] = v20;
        --v15;
      }

      while (v15);
      v7 = v45;
      sub_1E0FF0440(v45, &qword_1ECE89DD8, &qword_1E10B48C0);
      v9 = v44;
      v10 = MEMORY[0x1E69E7CC0];
      v11 = v49;
    }

    else
    {
      sub_1E0FF0440(v7, &qword_1ECE89DD8, &qword_1E10B48C0);
      v16 = v10;
    }

    v30 = *(v16 + 16);
    v31 = *(v50 + 2);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v50;
    if (isUniquelyReferenced_nonNull_native && v32 <= *(v50 + 3) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v35 = v31 + v30;
      }

      else
      {
        v35 = v31;
      }

      v34 = sub_1E1059518(isUniquelyReferenced_nonNull_native, v35, 1, v50);
      if (*(v16 + 16))
      {
LABEL_23:
        if ((*(v34 + 3) >> 1) - *(v34 + 2) < v30)
        {
          goto LABEL_32;
        }

        v36 = v34;
        swift_arrayInitWithCopy();

        v12 = v36;
        if (v30)
        {
          v37 = *(v36 + 2);
          v38 = __OFADD__(v37, v30);
          v39 = v37 + v30;
          if (v38)
          {
            goto LABEL_33;
          }

          *(v36 + 2) = v39;
        }

        goto LABEL_4;
      }
    }

    v13 = v34;

    v12 = v13;
    if (v30)
    {
      goto LABEL_31;
    }

LABEL_4:
    if (++v11 == v46)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1E10AE6FC();
  __break(1u);
  return result;
}

uint64_t sub_1E10451F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D78, &qword_1E10B6B40) - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v21 - v8);
  v10 = sub_1E1039210(*a1);
  v11 = *(v10 + 16);
  if (v11)
  {
    v22 = a2;
    v23 = v2;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1E1059E94(0, v11, 0);
    v12 = v25;
    v13 = *(v5 + 80);
    v21 = v10;
    v14 = v10 + ((v13 + 32) & ~v13);
    v24 = *(v5 + 72);
    do
    {
      sub_1E0FEDC50(v14, v9, &qword_1ECE89D78, &qword_1E10B6B40);
      v16 = *v9;
      v15 = v9[1];

      sub_1E0FF0440(v9, &qword_1ECE89D78, &qword_1E10B6B40);
      v25 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1E1059E94((v17 > 1), v18 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v14 += v24;
      --v11;
    }

    while (v11);

    a2 = v22;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1E10453D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v56[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B2B0, &qword_1E10B6B60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (v56 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0D0, &qword_1E10B4E90);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v56 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E70, &qword_1E10B6B70);
  v19 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v82 = (v56 - v22);
  v23 = sub_1E10397D4(*a1);
  v80 = *(v23 + 16);
  if (v80)
  {
    v24 = 0;
    v25 = *(a2 + 88);
    v76 = v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v77 = v25;
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC8];
    }

    v74 = (v6 + 56);
    v75 = v26;
    v81 = MEMORY[0x1E69E7CC0];
    v73 = (v6 + 48);
    v61 = v5;
    v60 = v6;
    v59 = v10;
    v58 = v14;
    v57 = v18;
    v78 = v23;
    v79 = v19;
    while (v24 < *(v23 + 16))
    {
      sub_1E0FEDC50(v76 + *(v19 + 72) * v24, v82, &qword_1ECE89E70, &qword_1E10B6B70);

      v27 = sub_1E1039D98(v75);

      if (*(v27 + 16))
      {
        sub_1E0FEDC50(v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v18, &unk_1ECE8B2B0, &qword_1E10B6B60);
        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      (*v74)(v18, v28, 1, v5);
      sub_1E0FEDC50(v18, v14, &qword_1ECE8A0D0, &qword_1E10B4E90);
      if ((*v73)(v14, 1, v5) == 1)
      {
        sub_1E0FF0440(v18, &qword_1ECE8A0D0, &qword_1E10B4E90);
        sub_1E0FF0440(v82, &qword_1ECE89E70, &qword_1E10B6B70);
      }

      else
      {
        sub_1E0FEDEF4(v14, v10, &unk_1ECE8B2B0, &qword_1E10B6B60);
        v29 = (v10 + *(v5 + 44));
        v30 = v29[1];
        if (!v30)
        {
          goto LABEL_30;
        }

        v31 = *v10;
        v71 = v10[1];
        v72 = v31;
        v70 = *v29;
        v32 = v29[4];
        v33 = v29[5];
        v34 = v29[11];
        v35 = v29[12];

        sub_1E0FF0440(v18, &qword_1ECE8A0D0, &qword_1E10B4E90);
        v36 = v81;
        if (v33)
        {
          v69 = v32;
        }

        else
        {
          v34 = 0;
          v35 = 0;
          v69 = 0;
        }

        v68 = v35;
        sub_1E0FF0440(v10, &unk_1ECE8B2B0, &qword_1E10B6B60);
        v37 = v82 + *(v62 + 44);
        v38 = *(v37 + 6);
        if (v38 == 1)
        {
          goto LABEL_30;
        }

        v39 = *(v37 + 1);
        if (v39 >= 2)
        {
          v67 = *v37;
        }

        else
        {
          v67 = 0;
          v39 = 0;
        }

        v40 = v82;
        v41 = v82[1];
        v64 = *v82;
        v42 = *(v37 + 1);
        v65 = *(v37 + 2);
        v66 = v42;
        v63 = v37[56];

        sub_1E0FF0440(v40, &qword_1ECE89E70, &qword_1E10B6B70);
        v43 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1E1059680(0, v36[2] + 1, 1, v36);
        }

        v45 = v36[2];
        v44 = v36[3];
        v81 = v36;
        if (v45 >= v44 >> 1)
        {
          v81 = sub_1E1059680((v44 > 1), v45 + 1, 1, v81);
        }

        v46 = v63 & 1;
        v47 = v81;
        v81[2] = v45 + 1;
        v48 = &v47[18 * v45];
        v48[4] = v64;
        v48[5] = v41;
        v49 = v71;
        v48[6] = v72;
        v48[7] = v49;
        v48[8] = v70;
        v48[9] = v30;
        v51 = v68;
        v50 = v69;
        v48[10] = v34;
        v48[11] = v51;
        v48[12] = v50;
        v48[13] = v43;
        *(v48 + 112) = v46;
        v52 = *&v83[3];
        *(v48 + 113) = *v83;
        *(v48 + 29) = v52;
        v48[15] = v67;
        v48[16] = v39;
        v53 = v66;
        *(v48 + 19) = v65;
        *(v48 + 17) = v53;
        v48[21] = v38;
        v5 = v61;
        v6 = v60;
        v10 = v59;
        v14 = v58;
        v18 = v57;
      }

      ++v24;
      v19 = v79;
      v23 = v78;
      if (v80 == v24)
      {

        v55 = v81;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    result = sub_1E10AE6FC();
    __break(1u);
  }

  else
  {

    v55 = MEMORY[0x1E69E7CC0];
LABEL_28:
    *v56[0] = v55;
  }

  return result;
}

uint64_t sub_1E1045A3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E38, &qword_1E10B6B90);
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - v8;
  v10 = sub_1E103A928(*a1);
  v11 = *(v10 + 16);
  if (v11)
  {
    v28 = a2;
    v29 = v2;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1E1059E34(0, v11, 0);
    if (*(v10 + 16))
    {
      v12 = 0;
      v13 = v40;
      v14 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v32 = v11 - 1;
      v30 = *(v5 + 72);
      v31 = v9;
      while (1)
      {
        sub_1E0FEDC50(v14, v9, &qword_1ECE89E38, &qword_1E10B6B90);
        v15 = &v9[*(v33 + 44)];
        v16 = *(v15 + 3);
        v38[2] = *(v15 + 2);
        v38[3] = v16;
        v39 = *(v15 + 8);
        v17 = *(v15 + 1);
        v38[0] = *v15;
        v38[1] = v17;
        if (!*(&v38[0] + 1))
        {
          break;
        }

        v18 = *(v15 + 3);
        v35[2] = *(v15 + 2);
        v36 = v18;
        v37 = *(v15 + 8);
        v19 = *(v15 + 1);
        v35[0] = *v15;
        v35[1] = v19;
        sub_1E10484F8(v35, v34);
        sub_1E0FF0440(v9, &qword_1ECE89E38, &qword_1E10B6B90);
        v20 = *(&v35[0] + 1);
        v41 = *&v35[0];
        v22 = *(&v36 + 1);
        v21 = v37;

        sub_1E0FF0440(v38, &qword_1ECE8A0E8, &qword_1E10B4EA8);
        v40 = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1E1059E34((v23 > 1), v24 + 1, 1);
          v13 = v40;
        }

        *(v13 + 16) = v24 + 1;
        v25 = (v13 + 32 * v24);
        v25[4] = v22;
        v25[5] = v21;
        v25[6] = v41;
        v25[7] = v20;
        if (v32 == v12)
        {

          a2 = v28;
          goto LABEL_12;
        }

        v14 += v30;
        ++v12;
        v9 = v31;
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      __break(1u);
    }

    result = sub_1E10AE6FC();
    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
LABEL_12:
    *a2 = v13;
  }

  return result;
}

uint64_t sub_1E1045D6C(char a1)
{
  result = 0x652D6D617A616873;
  switch(a1)
  {
    case 1:
      result = 0x73747369747261;
      break;
    case 2:
      result = 0x7365756E6576;
      break;
    case 3:
      v3 = 1953458288;
      goto LABEL_10;
    case 4:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0x657061706C6C6177;
      break;
    case 6:
      result = 0x61662D6863746177;
      break;
    case 7:
      v3 = 1701079414;
LABEL_10:
      result = v3 | 0x6C612D6F00000000;
      break;
    case 8:
      result = 0x7365726E6567;
      break;
    case 9:
      result = 0x72672D74726F7073;
      break;
    case 10:
      result = 0x7374726F7073;
      break;
    case 11:
      result = 0x74697465706D6F63;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E1045EEC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1E1045D6C(*a1);
  v5 = v4;
  if (v3 == sub_1E1045D6C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E10AE8FC();
  }

  return v8 & 1;
}

uint64_t sub_1E1045F74()
{
  v1 = *v0;
  sub_1E10AE9CC();
  sub_1E1045D6C(v1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

uint64_t sub_1E1045FD8(uint64_t a1)
{
  sub_1E1045D6C(*v1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E104602C(uint64_t a1)
{
  v2 = *v1;
  sub_1E10AE9CC();
  sub_1E1045D6C(v2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

unint64_t sub_1E104608C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E104989C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1E10460BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1045D6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E1046104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E104989C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E104612C(uint64_t a1)
{
  v2 = sub_1E104A3DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1046168(uint64_t a1)
{
  v2 = sub_1E104A3DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E10461A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A210, &qword_1E10B5430);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A3DC();
  sub_1E10AEA5C();
  v13 = *v3;
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CF8, &qword_1E10B4870);
  sub_1E1033D5C();
  sub_1E10AE85C();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D10, &qword_1E10B4878);
    sub_1E1033E14();
    sub_1E10AE85C();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D28, &qword_1E10B4880);
    sub_1E1033ECC();
    sub_1E10AE85C();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D40, &qword_1E10B4888);
    sub_1E1033F84();
    sub_1E10AE85C();
    v13 = v3[4];
    HIBYTE(v12) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D60, &qword_1E10B4898);
    sub_1E103403C();
    sub_1E10AE85C();
    v13 = v3[5];
    HIBYTE(v12) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D80, &qword_1E10B48A0);
    sub_1E10340F4();
    sub_1E10AE85C();
    v13 = v3[6];
    HIBYTE(v12) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DA0, &qword_1E10B48B0);
    sub_1E10341AC();
    sub_1E10AE85C();
    v13 = v3[7];
    HIBYTE(v12) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DC0, &qword_1E10B48B8);
    sub_1E1034264();
    sub_1E10AE85C();
    v13 = v3[8];
    HIBYTE(v12) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DE0, &qword_1E10B48C8);
    sub_1E103431C();
    sub_1E10AE85C();
    v13 = v3[9];
    HIBYTE(v12) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E00, &qword_1E10B48D0);
    sub_1E10343D4();
    sub_1E10AE85C();
    v13 = v3[10];
    HIBYTE(v12) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E20, &qword_1E10B48D8);
    sub_1E103448C();
    sub_1E10AE85C();
    v13 = v3[11];
    HIBYTE(v12) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E40, &qword_1E10B48E0);
    sub_1E1034544();
    sub_1E10AE85C();
    v13 = v3[12];
    HIBYTE(v12) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E58, &qword_1E10B48E8);
    sub_1E10345FC();
    sub_1E10AE85C();
  }

  return (*(v6 + 8))(v10, v5);
}

__n128 sub_1E10466FC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1E10498E8(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1E1046774@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 8);
    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    goto LABEL_7;
  }

  v6 = sub_1E10179F8(MEMORY[0x1E69E7CC0]);
  if (!*(v6 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = a1;
  v8 = *a1;
  v7 = v9[1];

  v10 = sub_1E1014100(v8, v7);
  if (v11)
  {
    v12 = v10;
    v13 = *(v6 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
    v15 = *(v14 - 8);
    sub_1E0FEDC50(v13 + *(v15 + 72) * v12, a3, &qword_1ECE89708, &qword_1E10B31B8);

    return (*(v15 + 56))(a3, 0, 1, v14);
  }

LABEL_7:

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
  return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
}

uint64_t sub_1E1046910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 24);
  if (*(v4 + 16) && (v5 = sub_1E1014100(*a1, a1[1]), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0);
    v10 = *(v9 - 8);
    sub_1E0FEDC50(v8 + *(v10 + 72) * v7, a3, &qword_1ECE89C78, &qword_1E10B6BA0);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0);
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

uint64_t sub_1E1046A58(uint64_t *a1)
{
  v2 = *(type metadata accessor for EventAttributes.Tickets.TicketLink(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E1048360(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E1046B00(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E1046B00(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E10AE8CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for EventAttributes.Tickets.TicketLink(0);
        v6 = sub_1E10AE1CC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for EventAttributes.Tickets.TicketLink(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E1046E90(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E1046C2C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E1046C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for EventAttributes.Tickets.TicketLink(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v43 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v34 - v14;
  result = MEMORY[0x1EEE9AC00](v16, v17);
  v21 = &v34 - v20;
  v36 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v41 = -v23;
    v42 = v22;
    v25 = a1 - a3;
    v35 = v23;
    v26 = v22 + v23 * a3;
LABEL_5:
    v39 = v24;
    v40 = a3;
    v37 = v26;
    v38 = v25;
    while (1)
    {
      sub_1E10483DC(v26, v21, type metadata accessor for EventAttributes.Tickets.TicketLink);
      sub_1E10483DC(v24, v15, type metadata accessor for EventAttributes.Tickets.TicketLink);
      v27 = *(v8 + 24);
      v28 = v8;
      v29 = *&v21[v27];
      v30 = *&v15[v27];
      sub_1E10482EC(v15, type metadata accessor for EventAttributes.Tickets.TicketLink);
      result = sub_1E10482EC(v21, type metadata accessor for EventAttributes.Tickets.TicketLink);
      v31 = v29 < v30;
      v8 = v28;
      if (!v31)
      {
LABEL_4:
        a3 = v40 + 1;
        v24 = v39 + v35;
        v25 = v38 - 1;
        v26 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v32 = v43;
      sub_1E1048374(v26, v43, type metadata accessor for EventAttributes.Tickets.TicketLink);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1E1048374(v32, v24, type metadata accessor for EventAttributes.Tickets.TicketLink);
      v24 += v41;
      v26 += v41;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E1046E90(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v131 = type metadata accessor for EventAttributes.Tickets.TicketLink(0);
  v9 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v120 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v128 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v130 = &v112 - v18;
  result = MEMORY[0x1EEE9AC00](v19, v20);
  v129 = &v112 - v22;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_136;
    }

    a4 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v132 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        v108 = v9;
        while (*a3)
        {
          v109 = *(result + 16 * a4);
          v110 = result;
          v9 = *(result + 16 * (a4 - 1) + 40);
          sub_1E10477F0(*a3 + *(v108 + 72) * v109, *a3 + *(v108 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v108 + 72) * v9, v5);
          if (v6)
          {
          }

          if (v9 < v109)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1E1047DA8(v110);
          }

          if (a4 - 2 >= *(v110 + 2))
          {
            goto LABEL_124;
          }

          v111 = &v110[16 * a4];
          *v111 = v109;
          *(v111 + 1) = v9;
          v132 = v110;
          sub_1E1047D1C(a4 - 1);
          result = v132;
          a4 = *(v132 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_1E1047DA8(a4);
    goto LABEL_99;
  }

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v116 = a4;
  v118 = a3;
  v113 = v9;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v121 = v25;
    if (v27 >= v23)
    {
      v23 = v27;
    }

    else
    {
      v114 = v6;
      v28 = *a3;
      v29 = *(v9 + 72);
      v5 = *a3 + v29 * v27;
      v30 = v129;
      sub_1E10483DC(v5, v129, type metadata accessor for EventAttributes.Tickets.TicketLink);
      v31 = v130;
      sub_1E10483DC(v28 + v29 * v26, v130, type metadata accessor for EventAttributes.Tickets.TicketLink);
      v32 = *(v131 + 24);
      v33 = *(v30 + v32);
      v124 = *(v31 + v32);
      v125 = v33;
      sub_1E10482EC(v31, type metadata accessor for EventAttributes.Tickets.TicketLink);
      result = sub_1E10482EC(v30, type metadata accessor for EventAttributes.Tickets.TicketLink);
      v115 = v26;
      v34 = v26 + 2;
      v126 = v29;
      v35 = v28 + v29 * v34;
      while (v23 != v34)
      {
        LODWORD(v127) = v125 < v124;
        v36 = v129;
        sub_1E10483DC(v35, v129, type metadata accessor for EventAttributes.Tickets.TicketLink);
        v37 = v130;
        sub_1E10483DC(v5, v130, type metadata accessor for EventAttributes.Tickets.TicketLink);
        v38 = *(v131 + 24);
        v39 = *(v36 + v38);
        v40 = *(v37 + v38);
        sub_1E10482EC(v37, type metadata accessor for EventAttributes.Tickets.TicketLink);
        result = sub_1E10482EC(v36, type metadata accessor for EventAttributes.Tickets.TicketLink);
        ++v34;
        v35 += v126;
        v5 += v126;
        if (((v127 ^ (v39 >= v40)) & 1) == 0)
        {
          v23 = v34 - 1;
          break;
        }
      }

      a3 = v118;
      v9 = v113;
      v6 = v114;
      v26 = v115;
      a4 = v116;
      if (v125 < v124)
      {
        if (v23 < v115)
        {
          goto LABEL_127;
        }

        if (v115 < v23)
        {
          v41 = v126 * (v23 - 1);
          v42 = v23 * v126;
          v125 = v23;
          v43 = v23;
          v44 = v115;
          v45 = v115 * v126;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v118;
              if (!*v118)
              {
                goto LABEL_133;
              }

              v5 = v46 + v45;
              sub_1E1048374(v46 + v45, v120, type metadata accessor for EventAttributes.Tickets.TicketLink);
              if (v45 < v41 || v5 >= v46 + v42)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1E1048374(v120, v46 + v41, type metadata accessor for EventAttributes.Tickets.TicketLink);
            }

            ++v44;
            v41 -= v126;
            v42 -= v126;
            v45 += v126;
          }

          while (v44 < v43);
          a3 = v118;
          v9 = v113;
          v26 = v115;
          a4 = v116;
          v23 = v125;
        }
      }
    }

    v47 = a3[1];
    if (v23 >= v47)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v23, v26))
    {
      goto LABEL_126;
    }

    if (v23 - v26 >= a4)
    {
LABEL_32:
      v49 = v23;
      if (v23 < v26)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v26, a4))
    {
      goto LABEL_128;
    }

    if ((v26 + a4) >= v47)
    {
      v48 = a3[1];
    }

    else
    {
      v48 = v26 + a4;
    }

    if (v48 < v26)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v23 == v48)
    {
      goto LABEL_32;
    }

    v94 = *a3;
    v95 = *(v9 + 72);
    v96 = *a3 + v95 * (v23 - 1);
    v97 = v26;
    v98 = -v95;
    v114 = v6;
    v115 = v97;
    v99 = v97 - v23;
    v127 = v94;
    v119 = v95;
    v5 = v94 + v23 * v95;
    v100 = v131;
    v122 = v48;
LABEL_86:
    v124 = v99;
    v125 = v23;
    v123 = v5;
    v126 = v96;
    v101 = v96;
LABEL_87:
    a4 = v129;
    sub_1E10483DC(v5, v129, type metadata accessor for EventAttributes.Tickets.TicketLink);
    v102 = v130;
    sub_1E10483DC(v101, v130, type metadata accessor for EventAttributes.Tickets.TicketLink);
    v103 = *(v100 + 24);
    v104 = *(a4 + v103);
    v105 = *(v102 + v103);
    sub_1E10482EC(v102, type metadata accessor for EventAttributes.Tickets.TicketLink);
    result = sub_1E10482EC(a4, type metadata accessor for EventAttributes.Tickets.TicketLink);
    if (v104 < v105)
    {
      break;
    }

    v100 = v131;
LABEL_85:
    v23 = v125 + 1;
    v96 = v126 + v119;
    v99 = v124 - 1;
    v5 = v123 + v119;
    v49 = v122;
    if (v125 + 1 != v122)
    {
      goto LABEL_86;
    }

    v9 = v113;
    v6 = v114;
    a3 = v118;
    v26 = v115;
    if (v122 < v115)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v121;
    }

    else
    {
      result = sub_1E1047EA0(0, *(v121 + 2) + 1, 1, v121);
      v25 = result;
    }

    a4 = *(v25 + 2);
    v50 = *(v25 + 3);
    v5 = a4 + 1;
    if (a4 >= v50 >> 1)
    {
      result = sub_1E1047EA0((v50 > 1), a4 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v5;
    v51 = &v25[16 * a4];
    *(v51 + 4) = v26;
    *(v51 + 5) = v49;
    v52 = *v117;
    if (!*v117)
    {
      goto LABEL_135;
    }

    v122 = v49;
    if (a4)
    {
      while (2)
      {
        v53 = v5 - 1;
        if (v5 >= 4)
        {
          v58 = &v25[16 * v5 + 32];
          v59 = *(v58 - 64);
          v60 = *(v58 - 56);
          v64 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          if (v64)
          {
            goto LABEL_112;
          }

          v63 = *(v58 - 48);
          v62 = *(v58 - 40);
          v64 = __OFSUB__(v62, v63);
          v56 = v62 - v63;
          v57 = v64;
          if (v64)
          {
            goto LABEL_113;
          }

          v65 = &v25[16 * v5];
          v67 = *v65;
          v66 = *(v65 + 1);
          v64 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v64)
          {
            goto LABEL_115;
          }

          v64 = __OFADD__(v56, v68);
          v69 = v56 + v68;
          if (v64)
          {
            goto LABEL_118;
          }

          if (v69 >= v61)
          {
            v87 = &v25[16 * v53 + 32];
            v89 = *v87;
            v88 = *(v87 + 1);
            v64 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v64)
            {
              goto LABEL_122;
            }

            if (v56 < v90)
            {
              v53 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v57)
            {
              goto LABEL_114;
            }

            v70 = &v25[16 * v5];
            v72 = *v70;
            v71 = *(v70 + 1);
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_117;
            }

            v76 = &v25[16 * v53 + 32];
            v78 = *v76;
            v77 = *(v76 + 1);
            v64 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v64)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v74, v79))
            {
              goto LABEL_121;
            }

            if (v74 + v79 < v56)
            {
              goto LABEL_66;
            }

            if (v56 < v79)
            {
              v53 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v54 = *(v25 + 4);
            v55 = *(v25 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
            goto LABEL_52;
          }

          v80 = &v25[16 * v5];
          v82 = *v80;
          v81 = *(v80 + 1);
          v64 = __OFSUB__(v81, v82);
          v74 = v81 - v82;
          v75 = v64;
LABEL_66:
          if (v75)
          {
            goto LABEL_116;
          }

          v83 = &v25[16 * v53];
          v85 = *(v83 + 4);
          v84 = *(v83 + 5);
          v64 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v64)
          {
            goto LABEL_119;
          }

          if (v86 < v74)
          {
            break;
          }
        }

        a4 = v53 - 1;
        if (v53 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v91 = v25;
        v92 = *&v25[16 * a4 + 32];
        v5 = *&v25[16 * v53 + 40];
        sub_1E10477F0(*a3 + *(v9 + 72) * v92, *a3 + *(v9 + 72) * *&v25[16 * v53 + 32], *a3 + *(v9 + 72) * v5, v52);
        if (v6)
        {
        }

        if (v5 < v92)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1E1047DA8(v91);
        }

        if (a4 >= *(v91 + 2))
        {
          goto LABEL_111;
        }

        v93 = &v91[16 * a4];
        *(v93 + 4) = v92;
        *(v93 + 5) = v5;
        v132 = v91;
        result = sub_1E1047D1C(v53);
        v25 = v132;
        v5 = *(v132 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v23 = a3[1];
    v24 = v122;
    a4 = v116;
    if (v122 >= v23)
    {
      goto LABEL_96;
    }
  }

  if (v127)
  {
    v106 = v128;
    sub_1E1048374(v5, v128, type metadata accessor for EventAttributes.Tickets.TicketLink);
    v100 = v131;
    swift_arrayInitWithTakeFrontToBack();
    sub_1E1048374(v106, v101, type metadata accessor for EventAttributes.Tickets.TicketLink);
    v101 += v98;
    v5 += v98;
    if (__CFADD__(v99++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1E10477F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for EventAttributes.Tickets.TicketLink(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12, v13);
  v53 = &v44 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_63;
  }

  v19 = (a2 - a1) / v17;
  v57 = a1;
  v56 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v21;
    if (v21 >= 1)
    {
      v30 = -v17;
      v31 = v29;
      v48 = a4;
      v49 = a1;
      v52 = v8;
      v47 = -v17;
      do
      {
        v45 = v29;
        v32 = a2;
        v33 = a2 + v30;
        v50 = a2;
        v51 = a2 + v30;
        while (1)
        {
          if (v32 <= a1)
          {
            v57 = v32;
            v55 = v45;
            goto LABEL_60;
          }

          v35 = a3;
          v46 = v29;
          a3 += v30;
          v36 = v31 + v30;
          v37 = v53;
          sub_1E10483DC(v31 + v30, v53, type metadata accessor for EventAttributes.Tickets.TicketLink);
          v38 = v54;
          sub_1E10483DC(v33, v54, type metadata accessor for EventAttributes.Tickets.TicketLink);
          v39 = *(v8 + 24);
          v40 = *(v37 + v39);
          v41 = *(v38 + v39);
          sub_1E10482EC(v38, type metadata accessor for EventAttributes.Tickets.TicketLink);
          sub_1E10482EC(v37, type metadata accessor for EventAttributes.Tickets.TicketLink);
          if (v40 < v41)
          {
            break;
          }

          v29 = v36;
          if (v35 < v31 || a3 >= v31)
          {
            v34 = v52;
            swift_arrayInitWithTakeFrontToBack();
            v33 = v51;
            v8 = v34;
            v30 = v47;
          }

          else
          {
            v33 = v51;
            v8 = v52;
            v30 = v47;
            if (v35 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v36;
          a1 = v49;
          v32 = v50;
          if (v36 <= v48)
          {
            a2 = v50;
            goto LABEL_59;
          }
        }

        v42 = v48;
        if (v35 < v50 || a3 >= v50)
        {
          a2 = v51;
          v8 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v46;
          v30 = v47;
        }

        else
        {
          v43 = v35 == v50;
          a2 = v51;
          v8 = v52;
          v29 = v46;
          v30 = v47;
          if (!v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v49;
      }

      while (v31 > v42);
    }

LABEL_59:
    v57 = a2;
    v55 = v29;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v51 = a4 + v20;
    v55 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v50 = a3;
      v52 = v8;
      do
      {
        v23 = v53;
        sub_1E10483DC(a2, v53, type metadata accessor for EventAttributes.Tickets.TicketLink);
        v24 = v54;
        sub_1E10483DC(a4, v54, type metadata accessor for EventAttributes.Tickets.TicketLink);
        v25 = *(v8 + 24);
        v26 = *(v23 + v25);
        v27 = *(v24 + v25);
        sub_1E10482EC(v24, type metadata accessor for EventAttributes.Tickets.TicketLink);
        sub_1E10482EC(v23, type metadata accessor for EventAttributes.Tickets.TicketLink);
        if (v26 >= v27)
        {
          if (a1 < a4 || a1 >= a4 + v17)
          {
            v8 = v52;
            swift_arrayInitWithTakeFrontToBack();
            v28 = v50;
          }

          else
          {
            v28 = v50;
            v8 = v52;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v56 = a4 + v17;
          a4 += v17;
        }

        else if (a1 < a2 || a1 >= a2 + v17)
        {
          v8 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v17;
          v28 = v50;
        }

        else
        {
          v28 = v50;
          v8 = v52;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v17;
        }

        a1 += v17;
        v57 = a1;
      }

      while (a4 < v51 && a2 < v28);
    }
  }

LABEL_60:
  sub_1E1047DBC(&v57, &v56, &v55);
  return 1;
}

uint64_t sub_1E1047D1C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E1047DA8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1E1047DBC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for EventAttributes.Tickets.TicketLink(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1E1047EA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A090, &qword_1E10B6A90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1E1047FA4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1E10AEA0C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1E10AE8FC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E10263D8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1E10480E0(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1E10480E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E10AE58C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1E10AE9CC();

        _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
        v10 = sub_1E10AEA0C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E10482A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3[5];
  v8[4] = v3[4];
  v8[5] = v4;
  v8[6] = v3[6];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  v6 = v3[3];
  v8[2] = v3[2];
  v8[3] = v6;
  return sub_1E1046774(a1, v8, a2);
}

uint64_t sub_1E10482EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1048374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E10483DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E10484A4()
{
  result = qword_1ECE8A088;
  if (!qword_1ECE8A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A088);
  }

  return result;
}

unint64_t sub_1E1048554()
{
  result = qword_1ECE8A100;
  if (!qword_1ECE8A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A100);
  }

  return result;
}

uint64_t sub_1E104863C(uint64_t a1)
{
  result = sub_1E10ADBBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E10486C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E104871C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E10487CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1E1048828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E10488C4(uint64_t a1)
{
  result = sub_1E10ADBBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E10ADBBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_13Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E10ADBBC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1E1048AE4(uint64_t a1)
{
  sub_1E10ADBBC();
  if (v1 <= 0x3F)
  {
    sub_1E1048D80(319, &qword_1ECE8A170, type metadata accessor for EventAttributes.Tickets.TicketLink, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E1048BC8(uint64_t a1)
{
  sub_1E0FEF59C(319, &qword_1EE17E4E0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1E1048D80(319, &qword_1EE17FF78, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EventAttributes.Time(319);
      if (v3 <= 0x3F)
      {
        sub_1E1048D80(319, &qword_1ECE8A188, type metadata accessor for EventAttributes.Tickets, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E1048D80(319, &qword_1ECE8A190, type metadata accessor for EventAttributes.Provider, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1E0FEF59C(319, &qword_1ECE8A198, &type metadata for EventAttributes.Scorecard);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E1048D80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E1048DE4(uint64_t a1)
{
  *(a1 + 8) = sub_1E103F9DC(&qword_1ECE8A1A0, type metadata accessor for EventAttributes, &unk_1E10B503C);
  result = sub_1E103F9DC(&qword_1ECE8A1A8, type metadata accessor for EventAttributes, &unk_1E10B5014);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1048E6C()
{
  result = qword_1ECE8A1B0;
  if (!qword_1ECE8A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1B0);
  }

  return result;
}

unint64_t sub_1E1048F08(uint64_t a1)
{
  *(a1 + 8) = sub_1E1048F38();
  result = sub_1E1048F8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1048F38()
{
  result = qword_1ECE8A1C0;
  if (!qword_1ECE8A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1C0);
  }

  return result;
}

unint64_t sub_1E1048F8C()
{
  result = qword_1ECE8A1C8;
  if (!qword_1ECE8A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1C8);
  }

  return result;
}

unint64_t sub_1E1048FE4()
{
  result = qword_1ECE8A1D0;
  if (!qword_1ECE8A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1D0);
  }

  return result;
}

unint64_t sub_1E104903C()
{
  result = qword_1ECE8A1D8;
  if (!qword_1ECE8A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1D8);
  }

  return result;
}

unint64_t sub_1E1049094()
{
  result = qword_1ECE8A1E0;
  if (!qword_1ECE8A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1E0);
  }

  return result;
}

unint64_t sub_1E10490E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E10AE74C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E1049134()
{
  result = qword_1ECE8A1F0;
  if (!qword_1ECE8A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1F0);
  }

  return result;
}

uint64_t sub_1E1049188(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F646E6576 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E1049298(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E10493AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A218, &qword_1E10B5438);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A468();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1E1028C24();
  sub_1E10AE7AC();
  (*(v6 + 8))(v10, v5);
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v14 = v19;
  v15 = v20;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v12;
  *(a2 + 64) = v18;
  v13 = v15;
  *a2 = v14;
  *(a2 + 16) = v13;
  return result;
}

uint64_t sub_1E1049570(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E694B627573 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C7255626577 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7374656B636974 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x72616365726F6373 && a2 == 0xE900000000000064)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_1E104989C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E10AE74C();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E10498E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A200, &qword_1E10B5428);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A3DC();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CF8, &qword_1E10B4870);
  LOBYTE(v33) = 0;
  sub_1E103339C();
  sub_1E10AE7AC();
  v32 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D10, &qword_1E10B4878);
  LOBYTE(v33) = 1;
  sub_1E1033454();
  sub_1E10AE7AC();
  v31 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D28, &qword_1E10B4880);
  LOBYTE(v33) = 2;
  sub_1E103350C();
  sub_1E10AE7AC();
  v30 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D40, &qword_1E10B4888);
  LOBYTE(v33) = 3;
  sub_1E10335C4();
  sub_1E10AE7AC();
  v29 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D60, &qword_1E10B4898);
  LOBYTE(v33) = 4;
  sub_1E103367C();
  sub_1E10AE7AC();
  v28 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D80, &qword_1E10B48A0);
  LOBYTE(v33) = 5;
  sub_1E1033734();
  sub_1E10AE7AC();
  v27 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DA0, &qword_1E10B48B0);
  LOBYTE(v33) = 6;
  sub_1E10337EC();
  sub_1E10AE7AC();
  v26 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DC0, &qword_1E10B48B8);
  LOBYTE(v33) = 7;
  sub_1E10338A4();
  sub_1E10AE7AC();
  v25 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DE0, &qword_1E10B48C8);
  LOBYTE(v33) = 8;
  sub_1E103395C();
  sub_1E10AE7AC();
  v11 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E00, &qword_1E10B48D0);
  LOBYTE(v33) = 9;
  sub_1E1033A14();
  sub_1E10AE7AC();
  v24 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E20, &qword_1E10B48D8);
  LOBYTE(v33) = 10;
  sub_1E1033ACC();
  sub_1E10AE7AC();
  v23 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E40, &qword_1E10B48E0);
  LOBYTE(v33) = 11;
  sub_1E1033B84();
  sub_1E10AE7AC();
  v22 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E58, &qword_1E10B48E8);
  v41 = 12;
  sub_1E1033C3C();
  sub_1E10AE7AC();
  (*(v6 + 8))(v10, v5);
  v21 = v42;
  *&v33 = v32;
  v12 = v31;
  *(&v33 + 1) = v31;
  v13 = v30;
  *&v34 = v30;
  v14 = v29;
  *(&v34 + 1) = v29;
  v15 = v28;
  *&v35 = v28;
  v16 = v27;
  *(&v35 + 1) = v27;
  *&v36 = v26;
  *(&v36 + 1) = v25;
  *&v37 = v11;
  *(&v37 + 1) = v24;
  *&v38 = v23;
  *(&v38 + 1) = v22;
  v39 = v42;
  sub_1E104A430(&v33, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v40[0] = v32;
  v40[1] = v12;
  v40[2] = v13;
  v40[3] = v14;
  v40[4] = v15;
  v40[5] = v16;
  v40[6] = v26;
  v40[7] = v25;
  v40[8] = v11;
  v40[9] = v24;
  v40[10] = v23;
  v40[11] = v22;
  v40[12] = v21;
  result = sub_1E1032020(v40);
  v18 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v18;
  *(a2 + 96) = v39;
  v19 = v34;
  *a2 = v33;
  *(a2 + 16) = v19;
  v20 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v20;
  return result;
}

unint64_t sub_1E104A3DC()
{
  result = qword_1ECE8A208;
  if (!qword_1ECE8A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A208);
  }

  return result;
}

unint64_t sub_1E104A468()
{
  result = qword_1ECE8A220;
  if (!qword_1ECE8A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A220);
  }

  return result;
}

unint64_t sub_1E104A4F4()
{
  result = qword_1ECE8A238;
  if (!qword_1ECE8A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A238);
  }

  return result;
}

unint64_t sub_1E104A548()
{
  result = qword_1ECE8A250;
  if (!qword_1ECE8A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A250);
  }

  return result;
}

uint64_t sub_1E104A59C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A258, &qword_1E10B5460);
    sub_1E103F9DC(a2, type metadata accessor for EventAttributes.Tickets.TicketLink, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E104A638()
{
  result = qword_1ECE8A290;
  if (!qword_1ECE8A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A290);
  }

  return result;
}

unint64_t sub_1E104A68C()
{
  result = qword_1ECE8A2B0;
  if (!qword_1ECE8A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2B0);
  }

  return result;
}

unint64_t sub_1E104A6E0()
{
  result = qword_1ECE8A2D8;
  if (!qword_1ECE8A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E104A8D8()
{
  result = qword_1ECE8A2E0;
  if (!qword_1ECE8A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2E0);
  }

  return result;
}

unint64_t sub_1E104A930()
{
  result = qword_1ECE8A2E8;
  if (!qword_1ECE8A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2E8);
  }

  return result;
}

unint64_t sub_1E104A988()
{
  result = qword_1ECE8A2F0;
  if (!qword_1ECE8A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2F0);
  }

  return result;
}

unint64_t sub_1E104A9E0()
{
  result = qword_1ECE8A2F8;
  if (!qword_1ECE8A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2F8);
  }

  return result;
}

unint64_t sub_1E104AA38()
{
  result = qword_1ECE8A300;
  if (!qword_1ECE8A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A300);
  }

  return result;
}

unint64_t sub_1E104AA90()
{
  result = qword_1ECE8A308;
  if (!qword_1ECE8A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A308);
  }

  return result;
}

unint64_t sub_1E104AAE8()
{
  result = qword_1ECE8A310;
  if (!qword_1ECE8A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A310);
  }

  return result;
}

unint64_t sub_1E104AB40()
{
  result = qword_1ECE8A318;
  if (!qword_1ECE8A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A318);
  }

  return result;
}

unint64_t sub_1E104AB98()
{
  result = qword_1ECE8A320;
  if (!qword_1ECE8A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A320);
  }

  return result;
}

unint64_t sub_1E104ABF0()
{
  result = qword_1ECE8A328;
  if (!qword_1ECE8A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A328);
  }

  return result;
}

unint64_t sub_1E104AC48()
{
  result = qword_1ECE8A330;
  if (!qword_1ECE8A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A330);
  }

  return result;
}

unint64_t sub_1E104ACA0()
{
  result = qword_1ECE8A338;
  if (!qword_1ECE8A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A338);
  }

  return result;
}

unint64_t sub_1E104ACF8()
{
  result = qword_1ECE8A340;
  if (!qword_1ECE8A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A340);
  }

  return result;
}

unint64_t sub_1E104AD50()
{
  result = qword_1ECE8A348;
  if (!qword_1ECE8A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A348);
  }

  return result;
}

unint64_t sub_1E104ADA8()
{
  result = qword_1ECE8A350;
  if (!qword_1ECE8A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A350);
  }

  return result;
}

unint64_t sub_1E104AE00()
{
  result = qword_1ECE8A358;
  if (!qword_1ECE8A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A358);
  }

  return result;
}

unint64_t sub_1E104AE58()
{
  result = qword_1ECE8A360;
  if (!qword_1ECE8A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A360);
  }

  return result;
}

unint64_t sub_1E104AEB0()
{
  result = qword_1ECE8A368;
  if (!qword_1ECE8A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A368);
  }

  return result;
}

uint64_t type metadata accessor for ResponseData(uint64_t a1)
{
  result = qword_1ECE8A370;
  if (!qword_1ECE8A370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E104AFA8(uint64_t a1)
{
  result = sub_1E10ADBBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E104B034(uint64_t a1)
{
  sub_1E104BB70(319, &qword_1EE17FF78, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E10AE4EC();
    if (v2 <= 0x3F)
    {
      sub_1E104B668(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E104B114(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1E10ADBBC() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(*(a3 + 16) - 8);
  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  if (v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  if (v11)
  {
    v20 = 7;
  }

  else
  {
    v20 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v17 + 7;
  v22 = v18 + 16;
  if (v14 < a2)
  {
    v23 = ((v20 + v19 + ((v22 + ((v21 + ((v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v24 = v23 & 0xFFFFFFF8;
    if ((v23 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v14 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v27)
    {
      v28 = *(a1 + v23);
      if (v28)
      {
LABEL_34:
        v29 = v28 - 1;
        if (v24)
        {
          v29 = 0;
          LODWORD(v24) = *a1;
        }

        return v14 + (v24 | v29) + 1;
      }
    }
  }

  if ((v13 & 0x80000000) != 0)
  {
    if (v10 == v14)
    {
      if (v8 >= 2)
      {
        v32 = (*(v7 + 48))((a1 + v15 + 16) & ~v15);
        goto LABEL_51;
      }
    }

    else if (v11 >= 2)
    {
      v32 = (*(*(*(a3 + 16) - 8) + 48))((v22 + ((v21 + ((a1 + v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18, v11);
LABEL_51:
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v31 = *(a1 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  return (v31 + 1);
}

void sub_1E104B378(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1E10ADBBC() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = *(*(a4 + 16) - 8);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v12 + 84);
  v16 = *(v9 + 64);
  v17 = *(v9 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = v15 - 1;
  if (!v15)
  {
    v20 = 0;
  }

  if (v13 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v13;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (v11)
  {
    v23 = v16;
  }

  else
  {
    v23 = v16 + 1;
  }

  v24 = v23 + 7;
  if (v15)
  {
    v25 = v19;
  }

  else
  {
    v25 = v19 + 1;
  }

  v26 = ((v25 + ((v18 + 16 + ((v24 + ((v17 + 16) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 < a3)
  {
    if (((v25 + ((v18 + 16 + ((v24 + ((v17 + 16) & ~v17)) & 0xFFFFFFF8)) & ~v18) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v27 = a3 - v22 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v8 = v28;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v22)
  {
    if (v26)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v22;
    }

    if (v26)
    {
      v30 = ~v22 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v26) = v29;
      }

      else
      {
        *(a1 + v26) = v29;
      }
    }

    else if (v8)
    {
      *(a1 + v26) = v29;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v26) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v8)
  {
    goto LABEL_47;
  }

  *(a1 + v26) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if ((v21 & 0x80000000) != 0)
  {
    v31 = (a1 + v17 + 16) & ~v17;
    if (v13 == v22)
    {
      if (v11 >= 2)
      {
        v32 = *(v10 + 56);

        v32(v31, a2 + 1);
      }
    }

    else if (v15 >= 2)
    {
      v33 = *(v14 + 56);

      v33((v18 + 16 + ((v24 + v31) & 0xFFFFFFFFFFFFFFF8)) & ~v18, a2 + 1, v15);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void sub_1E104B668(uint64_t a1)
{
  if (!qword_1ECE8A400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECE8A408, qword_1E10B5BA8);
    v1 = sub_1E10AE4EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE8A400);
    }
  }
}