uint64_t sub_1D88E3154(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 40);
  v4 = (a2 + 40);
  while (v2)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 4;
    result = *v3 == v6 && *(v3 - 1) == v5;
    v8 = result != 1 || v2-- == 1;
    v3 += 4;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88E31C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v35 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_38:
    v34 = 0;
    return v34 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v36 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    v16 = v14;
    result = sub_1D87A0E38(v14 + v15 * v12, v10, &qword_1ECA67750, &unk_1D8B1E0C0);
    if (v12 == v11)
    {
      break;
    }

    sub_1D87A0E38(v36 + v15 * v12, v7, &qword_1ECA67750, &unk_1D8B1E0C0);
    result = sub_1D8B13200();
    if ((result & 1) == 0 || *&v10[v4[9]] != *&v7[v4[9]] || (v18 = v4[10], (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v10[v18], *&v7[v18]), vceqq_f64(*&v10[v18 + 16], *&v7[v18 + 16])), vuzp1q_s32(vceqq_f64(*&v10[v18 + 32], *&v7[v18 + 32]), vceqq_f64(*&v10[v18 + 48], *&v7[v18 + 48]))))) & 1) == 0) || (v19 = v4[11], v20 = *&v10[v19], v21 = *&v7[v19], v22 = *(v20 + 16), v22 != *(v21 + 16)))
    {
LABEL_37:
      sub_1D87A14E4(v7, &qword_1ECA67750, &unk_1D8B1E0C0);
      sub_1D87A14E4(v10, &qword_1ECA67750, &unk_1D8B1E0C0);
      goto LABEL_38;
    }

    if (v22)
    {
      v23 = v20 == v21;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = (v20 + 40);
      v25 = (v21 + 40);
      while (v22)
      {
        if (*(v24 - 1) != *(v25 - 1) || *v24 != *v25)
        {
          goto LABEL_37;
        }

        v24 += 4;
        v25 += 4;
        if (!--v22)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_22:
    v27 = v4[12];
    v28 = *&v10[v27];
    v29 = *&v7[v27];
    v30 = *(v28 + 16);
    if (v30 != *(v29 + 16))
    {
      goto LABEL_37;
    }

    if (v30)
    {
      v31 = v28 == v29;
    }

    else
    {
      v31 = 1;
    }

    if (!v31)
    {
      v32 = (v28 + 32);
      v33 = (v29 + 32);
      while (v30)
      {
        if (*v32 != *v33)
        {
          goto LABEL_37;
        }

        ++v32;
        ++v33;
        if (!--v30)
        {
          goto LABEL_31;
        }
      }

LABEL_41:
      __break(1u);
      break;
    }

LABEL_31:
    if (*&v10[v4[13]] != *&v7[v4[13]] || *&v10[v4[14]] != *&v7[v4[14]])
    {
      goto LABEL_37;
    }

    v34 = sub_1D88E31C4(*&v10[v4[15]], *&v7[v4[15]]);
    sub_1D87A14E4(v7, &qword_1ECA67750, &unk_1D8B1E0C0);
    sub_1D87A14E4(v10, &qword_1ECA67750, &unk_1D8B1E0C0);
    if (v34)
    {
      ++v12;
      v14 = v16;
      if (v12 != v11)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88E351C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v6 = (a1 + i);
      v7 = (a2 + i);
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      v8 = v6[7];
      v9 = v6[8];
      v10 = v7[7];
      v11 = v7[8];
      v12 = v6[5] == v7[5] && v6[6] == v7[6];
      if (!v12 && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      v13 = v8 == v10 && v9 == v11;
      if (!v13 && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D88E3618(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D88E36A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 > 2)
        {
          if (v7 == 3)
          {
            if (v5 != 3)
            {
              return 0;
            }
          }

          else if (v7 == 4)
          {
            if (v5 != 4)
            {
              return 0;
            }
          }

          else if (v5 != 5)
          {
            return 0;
          }
        }

        else if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D88E37BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_1D87D40A8(v3, v19);
      sub_1D87D40A8(v4, v16);
      v5 = v20;
      v6 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
      {

        sub_1D87D40E0(v16);
        sub_1D87D40E0(v19);
      }

      else
      {
        v14 = sub_1D8B16BA0();

        sub_1D87D40E0(v16);
        sub_1D87D40E0(v19);
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 40;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D88E3934(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_1D87D4040(v3, v19);
      sub_1D87D4040(v4, v16);
      v5 = v20;
      v6 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
      {

        sub_1D87D4078(v16);
        sub_1D87D4078(v19);
      }

      else
      {
        v14 = sub_1D8B16BA0();

        sub_1D87D4078(v16);
        sub_1D87D4078(v19);
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 40;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D88E3AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13000();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63608, &unk_1D8B1F5E0);
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    return 0;
  }

  if (!v15 || a1 == a2)
  {
    return 1;
  }

  v44 = &v39 - v14;
  v16 = a1 + 32;
  v17 = a2 + 32;
  v39 = (v5 + 32);
  v40 = (v5 + 8);
  v42 = (v5 + 48);
  while (1)
  {
    result = sub_1D87D3FD8(v16, v53);
    if (!v15)
    {
      break;
    }

    v46 = v15;
    v47 = v17;
    v19 = v11;
    sub_1D87D3FD8(v17, v50);
    v21 = v54;
    v20 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v22 = (*(v20 + 32))(v21, v20);
    v24 = v51;
    v23 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    if (v22 != (*(v23 + 32))(v24, v23))
    {
      goto LABEL_17;
    }

    v45 = v16;
    v25 = v54;
    v26 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v27 = v4;
    v28 = v44;
    (*(v26 + 16))(v25, v26);
    v29 = v51;
    v30 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v31 = v49;
    (*(v30 + 16))(v29, v30);
    v32 = *(v43 + 48);
    v33 = v48;
    sub_1D87A0E38(v28, v48, &qword_1ECA630C0, &qword_1D8B24530);
    sub_1D87A0E38(v31, v33 + v32, &qword_1ECA630C0, &qword_1D8B24530);
    v34 = *v42;
    if ((*v42)(v33, 1, v27) == 1)
    {
      sub_1D87A14E4(v31, &qword_1ECA630C0, &qword_1D8B24530);
      sub_1D87A14E4(v28, &qword_1ECA630C0, &qword_1D8B24530);
      if (v34(v33 + v32, 1, v27) != 1)
      {
        goto LABEL_16;
      }

      v11 = v19;
      v4 = v27;
      sub_1D87A14E4(v33, &qword_1ECA630C0, &qword_1D8B24530);
      sub_1D87D4010(v50);
      sub_1D87D4010(v53);
    }

    else
    {
      v11 = v19;
      sub_1D87A0E38(v33, v19, &qword_1ECA630C0, &qword_1D8B24530);
      v4 = v27;
      if (v34(v33 + v32, 1, v27) == 1)
      {
        sub_1D87A14E4(v49, &qword_1ECA630C0, &qword_1D8B24530);
        sub_1D87A14E4(v44, &qword_1ECA630C0, &qword_1D8B24530);
        (*v40)(v19, v27);
LABEL_16:
        sub_1D87A14E4(v33, &qword_1ECA63608, &unk_1D8B1F5E0);
LABEL_17:
        sub_1D87D4010(v50);
        sub_1D87D4010(v53);
        return 0;
      }

      v35 = v33 + v32;
      v36 = v41;
      (*v39)(v41, v35, v27);
      sub_1D88F0C68(&qword_1ECA63610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v37 = sub_1D8B158C0();
      v38 = *v40;
      (*v40)(v36, v27);
      sub_1D87A14E4(v49, &qword_1ECA630C0, &qword_1D8B24530);
      sub_1D87A14E4(v44, &qword_1ECA630C0, &qword_1D8B24530);
      v38(v19, v27);
      sub_1D87A14E4(v48, &qword_1ECA630C0, &qword_1D8B24530);
      sub_1D87D4010(v50);
      sub_1D87D4010(v53);
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }

    v16 = v45 + 40;
    v17 = v47 + 40;
    v15 = v46 - 1;
    if (v46 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

void sub_1D88E4098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v3++;
      v9 = v5;
      v6 = *v4++;
      v8 = v6;

      v7 = static CVDetection.== infix(_:_:)(&v9, &v8);

      --v2;
    }

    while ((v7 & 1) != 0 && v2);
  }
}

uint64_t sub_1D88E4158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPin(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1D88F0DD8(v13, v10, type metadata accessor for ActionPin);
        sub_1D88F0DD8(v14, v7, type metadata accessor for ActionPin);
        if ((sub_1D8B13200() & 1) == 0)
        {
          break;
        }

        v16 = v4[5];
        if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v10[v16], *&v7[v16]), vceqq_f64(*&v10[v16 + 16], *&v7[v16 + 16])), vuzp1q_s32(vceqq_f64(*&v10[v16 + 32], *&v7[v16 + 32]), vceqq_f64(*&v10[v16 + 48], *&v7[v16 + 48]))))) & 1) == 0)
        {
          break;
        }

        v17 = v4[6];
        v18 = *&v10[v17];
        v19 = *&v10[v17 + 8];
        v20 = &v7[v17];
        v21 = v18 == *v20 && v19 == *(v20 + 1);
        if (!v21 && (sub_1D8B16BA0() & 1) == 0 || (sub_1D88E245C(*&v10[v4[7]], *&v7[v4[7]]) & 1) == 0)
        {
          break;
        }

        v22 = v10[v4[8]] ^ v7[v4[8]];
        sub_1D88F3180(v7, type metadata accessor for ActionPin);
        sub_1D88F3180(v10, type metadata accessor for ActionPin);
        if ((v22 & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v23 = v22 ^ 1;
        return v23 & 1;
      }

      sub_1D88F3180(v7, type metadata accessor for ActionPin);
      sub_1D88F3180(v10, type metadata accessor for ActionPin);
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1D88E4444(uint64_t a1, uint64_t a2)
{
  v56 = sub_1D8B13240();
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v48 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8, &qword_1D8B22DB0);
  MEMORY[0x1EEE9AC00](v60);
  v15 = &v48 - v14;
  v16 = type metadata accessor for CVBundle(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v61 = &v48 - v22;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_29;
  }

  if (!v23 || a1 == a2)
  {
    v46 = 1;
    return v46 & 1;
  }

  v53 = v20;
  v54 = v9;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v48 = (v4 + 32);
  v49 = v6;
  v50 = (v4 + 8);
  v51 = v12;
  v52 = *(v21 + 72);
  v27 = v59;
  v28 = v61;
  while (1)
  {
    sub_1D88F0DD8(v25, v28, type metadata accessor for CVBundle);
    v57 = v26;
    v58 = v25;
    sub_1D88F0DD8(v26, v19, type metadata accessor for CVBundle);
    v29 = *(v60 + 48);
    sub_1D88F0DD8(v28, v15, type metadata accessor for CVBundle.BundleType);
    sub_1D88F0DD8(v19, &v15[v29], type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v30 = v51;
    sub_1D88F0DD8(v15, v51, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*v50)(v30, v56);
      goto LABEL_27;
    }

    v31 = v19;
    v32 = v8;
    v34 = v55;
    v33 = v56;
    (*v48)(v55, &v15[v29], v56);
    v35 = sub_1D8B13200();
    v36 = *v50;
    v37 = v34;
    v8 = v32;
    v19 = v31;
    v27 = v59;
    (*v50)(v37, v33);
    v38 = v33;
    v6 = v49;
    v36(v30, v38);
    if ((v35 & 1) == 0)
    {
      sub_1D88F3180(v15, type metadata accessor for CVBundle.BundleType);
      v28 = v61;
      goto LABEL_28;
    }

LABEL_18:
    sub_1D88F3180(v15, type metadata accessor for CVBundle.BundleType);
    v45 = v53;
    v28 = v61;
    if ((sub_1D88E4444(*&v61[*(v53 + 20)], *&v19[*(v53 + 20)]) & 1) == 0 || (sub_1D88E4444(*(v28 + *(v45 + 24)), *&v19[*(v45 + 24)]) & 1) == 0)
    {
      goto LABEL_28;
    }

    v46 = sub_1D8854A60(*(v28 + *(v45 + 28)), *&v19[*(v45 + 28)]);
    sub_1D88F3180(v19, type metadata accessor for CVBundle);
    sub_1D88F3180(v28, type metadata accessor for CVBundle);
    if (v46)
    {
      v26 = v57 + v52;
      v25 = v58 + v52;
      if (--v23)
      {
        continue;
      }
    }

    return v46 & 1;
  }

  sub_1D88F0DD8(v15, v27, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D88F31E0(&v15[v29], v8, type metadata accessor for CVTrackSnapshot);
    if ((sub_1D8B13200() & 1) == 0 || (v39 = v6[5], v40 = *(v27 + v39), v62 = *&v8[v39], v63 = v40, , , v41 = static CVDetection.== infix(_:_:)(&v63, &v62), , , (v41 & 1) == 0) || (v42 = v6[6], v43 = *(v27 + v42), v62 = *&v8[v42], v63 = v43, , , v44 = static CVDetection.== infix(_:_:)(&v63, &v62), , , (v44 & 1) == 0) || *(v27 + v6[7]) != v8[v6[7]] || *(v27 + v6[8]) != *&v8[v6[8]] || *(v27 + v6[9]) != *&v8[v6[9]] || *(v27 + v6[10]) != v8[v6[10]])
    {
      sub_1D88F3180(v8, type metadata accessor for CVTrackSnapshot);
      sub_1D88F3180(v27, type metadata accessor for CVTrackSnapshot);
      sub_1D88F3180(v15, type metadata accessor for CVBundle.BundleType);
      goto LABEL_28;
    }

    sub_1D88F3180(v8, type metadata accessor for CVTrackSnapshot);
    sub_1D88F3180(v27, type metadata accessor for CVTrackSnapshot);
    goto LABEL_18;
  }

  sub_1D88F3180(v27, type metadata accessor for CVTrackSnapshot);
LABEL_27:
  sub_1D87A14E4(v15, &qword_1ECA63DA8, &qword_1D8B22DB0);
LABEL_28:
  sub_1D88F3180(v19, type metadata accessor for CVBundle);
  sub_1D88F3180(v28, type metadata accessor for CVBundle);
LABEL_29:
  v46 = 0;
  return v46 & 1;
}

void sub_1D88E4BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 40);
      v8 = *(a1 + v5 + 48);
      v9 = *(a1 + v5 + 56);
      v10 = *(a1 + v5 + 64);
      v21[0] = *(a1 + v5 + 32);
      v7 = v21[0];
      v21[1] = v6;
      v21[2] = v8;
      v21[3] = v9;
      v21[4] = v10;
      v11 = *(a2 + v5 + 40);
      v13 = *(a2 + v5 + 48);
      v14 = *(a2 + v5 + 56);
      v15 = *(a2 + v5 + 64);
      v20[0] = *(a2 + v5 + 32);
      v12 = v20[0];
      v20[1] = v11;
      v20[2] = v13;
      v20[3] = v14;
      v20[4] = v15;

      v16 = *&v7;

      v17 = *&v12;

      LOBYTE(v10) = _s22VisualIntelligenceCore9GeoLookupC0dE6ResultV2eeoiySbAE_AEtFZ_0(v21, v20);
      v18 = v20[0];

      v19 = v21[0];

      if ((LOBYTE(v10) & 1) == 0)
      {
        break;
      }

      v5 += 40;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D88E4D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lens_SearchResult(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_26:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D88F0DD8(v13, v10, type metadata accessor for Lens_SearchResult);
      sub_1D88F0DD8(v14, v7, type metadata accessor for Lens_SearchResult);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_1D8B16BA0() & 1) == 0 || (v10[4] != v7[4] || v10[5] != v7[5]) && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      if ((v10[6] != v7[6] || v10[7] != v7[7]) && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      sub_1D8B14960();
      sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = sub_1D8B158C0();
      sub_1D88F3180(v7, type metadata accessor for Lens_SearchResult);
      sub_1D88F3180(v10, type metadata accessor for Lens_SearchResult);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1D88F3180(v7, type metadata accessor for Lens_SearchResult);
    sub_1D88F3180(v10, type metadata accessor for Lens_SearchResult);
    goto LABEL_26;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D88E5008(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v65 = v2;
  v66 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v9 = *(v5 + 112);
    v50 = *(v5 + 96);
    v51 = v9;
    v10 = *(v5 + 16);
    v11 = *(v5 + 48);
    v46 = *(v5 + 32);
    v47 = v11;
    v12 = *(v5 + 48);
    v13 = *(v5 + 80);
    v48 = *(v5 + 64);
    v49 = v13;
    v14 = *(v5 + 16);
    v45[0] = *v5;
    v45[1] = v14;
    v15 = *(v5 + 112);
    v42 = v50;
    v43 = v15;
    v38 = v46;
    v39 = v12;
    v40 = v48;
    v41 = v8;
    v36 = v45[0];
    v37 = v10;
    v16 = *(v6 + 80);
    v17 = *(v6 + 112);
    v58 = *(v6 + 96);
    v59 = v17;
    v18 = *(v6 + 16);
    v19 = *(v6 + 48);
    v54 = *(v6 + 32);
    v55 = v19;
    v20 = *(v6 + 48);
    v21 = *(v6 + 80);
    v56 = *(v6 + 64);
    v57 = v21;
    v22 = *(v6 + 16);
    v53[0] = *v6;
    v53[1] = v22;
    v23 = *(v6 + 112);
    v33 = v58;
    v34 = v23;
    v29 = v54;
    v30 = v20;
    v31 = v56;
    v32 = v16;
    v52 = *(v5 + 128);
    v44 = *(v5 + 128);
    v60 = *(v6 + 128);
    v35 = *(v6 + 128);
    v27 = v53[0];
    v28 = v18;
    sub_1D8883B74(v45, v26);
    sub_1D8883B74(v53, v26);
    v24 = _s22VisualIntelligenceCore23GeoLookupResultBusinessV2eeoiySbAC_ACtFZ_0(&v36, &v27);
    v61[6] = v33;
    v61[7] = v34;
    v62 = v35;
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_1D8883BD0(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64 = v44;
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_1D8883BD0(v63);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 136;
    v5 += 136;
  }

  return 1;
}

uint64_t sub_1D88E51D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D88E522C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_41;
    }

    v6 = *(v4 + 8 * v3);
    v7 = *(v5 + 8 * v3);
    if (v6)
    {
      break;
    }

    if (v7)
    {
LABEL_39:

      return;
    }

LABEL_6:
    if (++v3 == v2)
    {
      return;
    }
  }

  if (!v7)
  {
    goto LABEL_39;
  }

  v8 = *(v6 + 16);
  if (v8 != *(v7 + 16))
  {
LABEL_37:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  if (v8)
  {
    v9 = v6 == v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_5:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_6;
  }

  v10 = (v6 + 40);
  v11 = (v7 + 40);
  while (v8)
  {
    v14 = *(v10 - 1);
    v15 = *(v11 - 1);
    v16 = *v11;
    if (*v10)
    {
      if (*v10 != 1)
      {
        if (v14 == 0.0)
        {
          if (v16 != 2 || v15 != 0.0)
          {
            goto LABEL_37;
          }
        }

        else if (v16 != 2 || *&v15 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_22;
      }

      v12 = v16 == 1;
    }

    else
    {
      v12 = v16 == 0;
    }

    if (!v12 || v14 != v15)
    {
      goto LABEL_37;
    }

LABEL_22:
    v10 += 2;
    v11 += 2;
    if (!--v8)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

BOOL sub_1D88E5414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVTrackSnapshot(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D88F0DD8(v13, v10, type metadata accessor for CVTrackSnapshot);
      sub_1D88F0DD8(v14, v7, type metadata accessor for CVTrackSnapshot);
      if ((sub_1D8B13200() & 1) == 0)
      {
        break;
      }

      v16 = v4[5];
      v17 = *&v10[v16];
      v24 = *&v7[v16];
      v25 = v17;

      LOBYTE(v17) = static CVDetection.== infix(_:_:)(&v25, &v24);

      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = v4[6];
      v19 = *&v10[v18];
      v24 = *&v7[v18];
      v25 = v19;

      LOBYTE(v19) = static CVDetection.== infix(_:_:)(&v25, &v24);

      if ((v19 & 1) == 0 || v10[v4[7]] != v7[v4[7]] || *&v10[v4[8]] != *&v7[v4[8]] || *&v10[v4[9]] != *&v7[v4[9]])
      {
        break;
      }

      v20 = v4[10];
      v21 = v10[v20];
      v22 = v7[v20];
      sub_1D88F3180(v7, type metadata accessor for CVTrackSnapshot);
      sub_1D88F3180(v10, type metadata accessor for CVTrackSnapshot);
      result = v21 == v22;
      if (v21 == v22)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D88F3180(v7, type metadata accessor for CVTrackSnapshot);
    sub_1D88F3180(v10, type metadata accessor for CVTrackSnapshot);
  }

  return 0;
}

uint64_t sub_1D88E5744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, __n128))
{
  v29 = a6;
  v31 = a5;
  v30 = a3(0);
  v9 = MEMORY[0x1EEE9AC00](v30);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (!v15 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = a1 + v16;
      v18 = a2 + v16;
      v19 = *(v12 + 72);
      while (1)
      {
        sub_1D88F0DD8(v17, v14, a4);
        sub_1D88F0DD8(v18, v11, a4);
        v20 = *(v30 + 20);
        v21 = *&v14[v20];
        v22 = *&v11[v20];
        if (v21 != v22)
        {

          v23 = (v29)(v21, v22);

          if ((v23 & 1) == 0)
          {
            break;
          }
        }

        sub_1D8B14960();
        sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v24 = sub_1D8B158C0();
        v25 = v31;
        sub_1D88F3180(v11, v31);
        sub_1D88F3180(v14, v25);
        if (v24)
        {
          v18 += v19;
          v17 += v19;
          if (--v15)
          {
            continue;
          }
        }

        return v24 & 1;
      }

      v27 = v31;
      sub_1D88F3180(v11, v31);
      sub_1D88F3180(v14, v27);
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1D88E5A04(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for Lens_ImageThumbnail(0);
  v4 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64F60, &qword_1D8B1DB10);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v52 - v10;
  v62 = type metadata accessor for Lens_RelatedSearch(0);
  v11 = MEMORY[0x1EEE9AC00](v62);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v16 = (&v52 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_66:
    v51 = 0;
    return v51 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v51 = 1;
    return v51 & 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v54 = (v4 + 48);
  v55 = v13;
  v21 = *(v14 + 72);
  v52 = 0;
  v53 = v21;
  v56 = &v52 - v15;
  while (1)
  {
    sub_1D88F0DD8(v19, v16, type metadata accessor for Lens_RelatedSearch);
    v58 = v19;
    sub_1D88F0DD8(v20, v13, type metadata accessor for Lens_RelatedSearch);
    v22 = *v16 == *v13 && v16[1] == v13[1];
    if (!v22 && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_65;
    }

    v23 = v16[2] == v13[2] && v16[3] == v13[3];
    if (!v23 && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_65;
    }

    v59 = v17;
    v24 = v20;
    v25 = *(v62 + 28);
    v26 = *(v57 + 48);
    v27 = v13;
    v28 = v61;
    sub_1D87A0E38(v16 + v25, v61, &qword_1ECA62DF0, &qword_1D8B1DB00);
    sub_1D87A0E38(v27 + v25, v28 + v26, &qword_1ECA62DF0, &qword_1D8B1DB00);
    v29 = *v54;
    v30 = v60;
    if ((*v54)(v28, 1, v60) == 1)
    {
      if (v29(v28 + v26, 1, v30) != 1)
      {
        goto LABEL_64;
      }

      sub_1D87A14E4(v28, &qword_1ECA62DF0, &qword_1D8B1DB00);
      v31 = v24;
      v32 = v59;
      v13 = v55;
      v16 = v56;
      goto LABEL_58;
    }

    sub_1D87A0E38(v28, v9, &qword_1ECA62DF0, &qword_1D8B1DB00);
    if (v29(v28 + v26, 1, v30) == 1)
    {
      sub_1D88F3180(v9, type metadata accessor for Lens_ImageThumbnail);
LABEL_64:
      sub_1D87A14E4(v28, &unk_1ECA64F60, &qword_1D8B1DB10);
      v13 = v55;
      v16 = v56;
LABEL_65:
      sub_1D88F3180(v13, type metadata accessor for Lens_RelatedSearch);
      sub_1D88F3180(v16, type metadata accessor for Lens_RelatedSearch);
      goto LABEL_66;
    }

    sub_1D88F31E0(v28 + v26, v6, type metadata accessor for Lens_ImageThumbnail);
    result = *v9;
    v31 = v24;
    v32 = v59;
    v13 = v55;
    v16 = v56;
    if (*v9 != *v6 || *(v9 + 1) != *(v6 + 1))
    {
      result = sub_1D8B16BA0();
      if ((result & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v35 = *(v9 + 2);
    v34 = *(v9 + 3);
    v36 = *(v6 + 2);
    v37 = *(v6 + 3);
    v38 = v34 >> 62;
    v39 = v37 >> 62;
    if (v34 >> 62 != 3)
    {
      break;
    }

    v40 = 0;
    if (v35)
    {
      goto LABEL_35;
    }

    if (v34 != 0xC000000000000000)
    {
      goto LABEL_35;
    }

    if (v37 >> 62 != 3)
    {
      goto LABEL_35;
    }

    v40 = 0;
    if (v36 || v37 != 0xC000000000000000)
    {
      goto LABEL_35;
    }

LABEL_49:
    if ((*(v9 + 4) != *(v6 + 4) || *(v9 + 5) != *(v6 + 5)) && (sub_1D8B16BA0() & 1) == 0 || *(v9 + 12) != *(v6 + 12) || *(v9 + 13) != *(v6 + 13) || (*(v9 + 7) != *(v6 + 7) || *(v9 + 8) != *(v6 + 8)) && (sub_1D8B16BA0() & 1) == 0)
    {
LABEL_62:
      sub_1D88F3180(v6, type metadata accessor for Lens_ImageThumbnail);
      sub_1D88F3180(v9, type metadata accessor for Lens_ImageThumbnail);
      sub_1D87A14E4(v61, &qword_1ECA62DF0, &qword_1D8B1DB00);
      goto LABEL_65;
    }

    sub_1D8B14960();
    sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v50 = sub_1D8B158C0();
    sub_1D88F3180(v6, type metadata accessor for Lens_ImageThumbnail);
    sub_1D88F3180(v9, type metadata accessor for Lens_ImageThumbnail);
    sub_1D87A14E4(v61, &qword_1ECA62DF0, &qword_1D8B1DB00);
    if ((v50 & 1) == 0)
    {
      goto LABEL_65;
    }

LABEL_58:
    sub_1D8B14960();
    sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v51 = sub_1D8B158C0();
    sub_1D88F3180(v13, type metadata accessor for Lens_RelatedSearch);
    sub_1D88F3180(v16, type metadata accessor for Lens_RelatedSearch);
    if (v51)
    {
      v20 = v31 + v53;
      v19 = v58 + v53;
      v17 = v32 - 1;
      if (v17)
      {
        continue;
      }
    }

    return v51 & 1;
  }

  if (v38)
  {
    if (v38 == 1)
    {
      LODWORD(v40) = HIDWORD(v35) - v35;
      if (__OFSUB__(HIDWORD(v35), v35))
      {
        goto LABEL_69;
      }

      v40 = v40;
    }

    else
    {
      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      v43 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (v43)
      {
        goto LABEL_70;
      }
    }
  }

  else
  {
    v40 = BYTE6(v34);
  }

LABEL_35:
  if (v39 <= 1)
  {
    if (v39)
    {
      LODWORD(v44) = HIDWORD(v36) - v36;
      if (__OFSUB__(HIDWORD(v36), v36))
      {
        goto LABEL_68;
      }

      v44 = v44;
    }

    else
    {
      v44 = BYTE6(v37);
    }

LABEL_44:
    if (v40 != v44)
    {
      goto LABEL_62;
    }

    if (v40 >= 1)
    {
      sub_1D87A1544(*(v6 + 2), *(v6 + 3));
      v47 = v37;
      v48 = v52;
      v49 = sub_1D87A0334(v35, v34, v36, v47);
      v52 = v48;
      if ((v49 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_49;
  }

  if (v39 != 2)
  {
    if (v40)
    {
      goto LABEL_62;
    }

    goto LABEL_49;
  }

  v46 = *(v36 + 16);
  v45 = *(v36 + 24);
  v43 = __OFSUB__(v45, v46);
  v44 = v45 - v46;
  if (!v43)
  {
    goto LABEL_44;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_1D88E61B8(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for Lens_ImageThumbnail(0);
  v4 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64F60, &qword_1D8B1DB10);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v53 - v10;
  v63 = type metadata accessor for Lens_Answer(0);
  v11 = MEMORY[0x1EEE9AC00](v63);
  v13 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v16 = (&v53 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_74:
    v50 = 0;
    return v50 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v50 = 1;
    return v50 & 1;
  }

  v53 = 0;
  v54 = v6;
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v55 = *(v14 + 72);
  v56 = (v4 + 48);
  while (1)
  {
    sub_1D88F0DD8(v19, v16, type metadata accessor for Lens_Answer);
    v57 = v19;
    sub_1D88F0DD8(v20, v13, type metadata accessor for Lens_Answer);
    v21 = *v16 == *v13 && v16[1] == v13[1];
    if (!v21 && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_73;
    }

    v22 = v16[2] == v13[2] && v16[3] == v13[3];
    if (!v22 && (sub_1D8B16BA0() & 1) == 0 || (v16[4] != v13[4] || v16[5] != v13[5]) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_73;
    }

    if ((v16[6] != v13[6] || v16[7] != v13[7]) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_73;
    }

    v58 = v20;
    v59 = v17;
    v23 = *(v63 + 36);
    v24 = *(v60 + 48);
    v25 = v62;
    sub_1D87A0E38(v16 + v23, v62, &qword_1ECA62DF0, &qword_1D8B1DB00);
    sub_1D87A0E38(v13 + v23, v25 + v24, &qword_1ECA62DF0, &qword_1D8B1DB00);
    v26 = *v56;
    v27 = v61;
    if ((*v56)(v25, 1, v61) == 1)
    {
      v21 = v26(v25 + v24, 1, v27) == 1;
      v28 = v25;
      if (!v21)
      {
        goto LABEL_71;
      }

      sub_1D87A14E4(v25, &qword_1ECA62DF0, &qword_1D8B1DB00);
      v30 = v58;
      v29 = v59;
      goto LABEL_65;
    }

    sub_1D87A0E38(v25, v9, &qword_1ECA62DF0, &qword_1D8B1DB00);
    if (v26(v25 + v24, 1, v27) == 1)
    {
      sub_1D88F3180(v9, type metadata accessor for Lens_ImageThumbnail);
      v28 = v25;
LABEL_71:
      v51 = &unk_1ECA64F60;
      v52 = &qword_1D8B1DB10;
      goto LABEL_72;
    }

    v31 = v54;
    sub_1D88F31E0(v25 + v24, v54, type metadata accessor for Lens_ImageThumbnail);
    result = *v9;
    v30 = v58;
    v29 = v59;
    if (*v9 != *v31 || *(v9 + 1) != *(v31 + 8))
    {
      result = sub_1D8B16BA0();
      if ((result & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v34 = *(v9 + 2);
    v33 = *(v9 + 3);
    v35 = *(v31 + 16);
    v36 = *(v31 + 24);
    v37 = v33 >> 62;
    v38 = v36 >> 62;
    if (v33 >> 62 == 3)
    {
      v39 = 0;
      if (!v34 && v33 == 0xC000000000000000 && v36 >> 62 == 3)
      {
        v39 = 0;
        if (!v35 && v36 == 0xC000000000000000)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v37)
    {
      if (v37 == 1)
      {
        LODWORD(v39) = HIDWORD(v34) - v34;
        if (__OFSUB__(HIDWORD(v34), v34))
        {
          goto LABEL_79;
        }

        v39 = v39;
      }

      else
      {
        v41 = *(v34 + 16);
        v40 = *(v34 + 24);
        v42 = __OFSUB__(v40, v41);
        v39 = v40 - v41;
        if (v42)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      v39 = BYTE6(v33);
    }

    if (v38 <= 1)
    {
      break;
    }

    if (v38 == 2)
    {
      v45 = *(v35 + 16);
      v44 = *(v35 + 24);
      v42 = __OFSUB__(v44, v45);
      v43 = v44 - v45;
      if (v42)
      {
        goto LABEL_77;
      }

LABEL_51:
      if (v39 != v43)
      {
        goto LABEL_69;
      }

      if (v39 >= 1)
      {
        sub_1D87A1544(*(v31 + 16), *(v31 + 24));
        v46 = v36;
        v47 = v53;
        v48 = sub_1D87A0334(v34, v33, v35, v46);
        v53 = v47;
        if ((v48 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_56;
    }

    if (v39)
    {
      goto LABEL_69;
    }

LABEL_56:
    if ((*(v9 + 4) != *(v31 + 32) || *(v9 + 5) != *(v31 + 40)) && (sub_1D8B16BA0() & 1) == 0 || *(v9 + 12) != *(v31 + 48) || *(v9 + 13) != *(v31 + 52) || (*(v9 + 7) != *(v31 + 56) || *(v9 + 8) != *(v31 + 64)) && (sub_1D8B16BA0() & 1) == 0)
    {
LABEL_69:
      sub_1D88F3180(v31, type metadata accessor for Lens_ImageThumbnail);
      sub_1D88F3180(v9, type metadata accessor for Lens_ImageThumbnail);
      v51 = &qword_1ECA62DF0;
      v52 = &qword_1D8B1DB00;
      v28 = v62;
LABEL_72:
      sub_1D87A14E4(v28, v51, v52);
LABEL_73:
      sub_1D88F3180(v13, type metadata accessor for Lens_Answer);
      sub_1D88F3180(v16, type metadata accessor for Lens_Answer);
      goto LABEL_74;
    }

    sub_1D8B14960();
    sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v49 = sub_1D8B158C0();
    sub_1D88F3180(v31, type metadata accessor for Lens_ImageThumbnail);
    sub_1D88F3180(v9, type metadata accessor for Lens_ImageThumbnail);
    sub_1D87A14E4(v62, &qword_1ECA62DF0, &qword_1D8B1DB00);
    if ((v49 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_65:
    sub_1D8B14960();
    sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v50 = sub_1D8B158C0();
    sub_1D88F3180(v13, type metadata accessor for Lens_Answer);
    sub_1D88F3180(v16, type metadata accessor for Lens_Answer);
    if (v50)
    {
      v20 = v30 + v55;
      v19 = v57 + v55;
      v17 = v29 - 1;
      if (v17)
      {
        continue;
      }
    }

    return v50 & 1;
  }

  if (!v38)
  {
    v43 = BYTE6(v36);
    goto LABEL_51;
  }

  LODWORD(v43) = HIDWORD(v35) - v35;
  if (!__OFSUB__(HIDWORD(v35), v35))
  {
    v43 = v43;
    goto LABEL_51;
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1D88E69A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lens_AdDisclosureData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EB8, &qword_1D8B1DB60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64F50, &qword_1D8B1DB68);
  MEMORY[0x1EEE9AC00](v71);
  v12 = &v58 - v11;
  v73 = type metadata accessor for Lens_ProductAd(0);
  v70 = *(v73 - 8);
  v13 = MEMORY[0x1EEE9AC00](v73);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - v16;
  v18 = type metadata accessor for Lens_AdBlock(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v72 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v58 - v23);
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
LABEL_36:
    v55 = 0;
    return v55 & 1;
  }

  if (!v25 || a1 == a2)
  {
    v55 = 1;
    return v55 & 1;
  }

  v68 = v21;
  v69 = v25;
  v64 = v12;
  v65 = v4;
  v58 = v7;
  v59 = v10;
  v26 = 0;
  v27 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v28 = a1 + v27;
  v66 = a2 + v27;
  v29 = (v5 + 48);
  v30 = *(v22 + 72);
  v60 = v30;
  v61 = a1 + v27;
  v62 = &v58 - v23;
  v63 = v29;
  while (1)
  {
    result = sub_1D88F0DD8(v28 + v30 * v26, v24, type metadata accessor for Lens_AdBlock);
    if (v26 == v69)
    {
      break;
    }

    v67 = v26;
    v32 = v72;
    sub_1D88F0DD8(v66 + v30 * v26, v72, type metadata accessor for Lens_AdBlock);
    v33 = *v24;
    v34 = *v32;
    v35 = *(*v24 + 16);
    if (v35 != *(*v32 + 16))
    {
      goto LABEL_35;
    }

    if (v35 && v33 != v34)
    {
      v36 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v37 = v33 + v36;
      v38 = v34 + v36;
      v39 = *(v70 + 72);
      while (1)
      {
        sub_1D88F0DD8(v37, v17, type metadata accessor for Lens_ProductAd);
        sub_1D88F0DD8(v38, v15, type metadata accessor for Lens_ProductAd);
        v40 = *(v73 + 20);
        v41 = *&v17[v40];
        v42 = *&v15[v40];
        if (v41 != v42)
        {

          v43 = sub_1D87AD9B0(v41, v42);

          if (!v43)
          {
            break;
          }
        }

        sub_1D8B14960();
        sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v44 = sub_1D8B158C0();
        sub_1D88F3180(v15, type metadata accessor for Lens_ProductAd);
        sub_1D88F3180(v17, type metadata accessor for Lens_ProductAd);
        if ((v44 & 1) == 0)
        {
          goto LABEL_35;
        }

        v38 += v39;
        v37 += v39;
        if (!--v35)
        {
          goto LABEL_14;
        }
      }

      sub_1D88F3180(v15, type metadata accessor for Lens_ProductAd);
      sub_1D88F3180(v17, type metadata accessor for Lens_ProductAd);
      goto LABEL_35;
    }

LABEL_14:
    v45 = *(v68 + 28);
    v46 = *(v71 + 48);
    v47 = v64;
    sub_1D87A0E38(v24 + v45, v64, &qword_1ECA62EB8, &qword_1D8B1DB60);
    sub_1D87A0E38(v72 + v45, v47 + v46, &qword_1ECA62EB8, &qword_1D8B1DB60);
    v48 = *v63;
    v49 = v65;
    if ((*v63)(v47, 1, v65) == 1)
    {
      v50 = v48(v47 + v46, 1, v49);
      v24 = v62;
      if (v50 != 1)
      {
        goto LABEL_32;
      }

      sub_1D87A14E4(v47, &qword_1ECA62EB8, &qword_1D8B1DB60);
    }

    else
    {
      v51 = v59;
      sub_1D87A0E38(v47, v59, &qword_1ECA62EB8, &qword_1D8B1DB60);
      if (v48(v47 + v46, 1, v49) == 1)
      {
        sub_1D88F3180(v51, type metadata accessor for Lens_AdDisclosureData);
        v24 = v62;
LABEL_32:
        v56 = &unk_1ECA64F50;
        v57 = &qword_1D8B1DB68;
        goto LABEL_34;
      }

      v52 = v58;
      sub_1D88F31E0(v47 + v46, v58, type metadata accessor for Lens_AdDisclosureData);
      v24 = v62;
      if ((*v51 != *v52 || v51[1] != v52[1]) && (sub_1D8B16BA0() & 1) == 0 || (v51[2] != v52[2] || v51[3] != v52[3]) && (sub_1D8B16BA0() & 1) == 0)
      {
        sub_1D88F3180(v52, type metadata accessor for Lens_AdDisclosureData);
        sub_1D88F3180(v51, type metadata accessor for Lens_AdDisclosureData);
        v56 = &qword_1ECA62EB8;
        v57 = &qword_1D8B1DB60;
LABEL_34:
        sub_1D87A14E4(v47, v56, v57);
LABEL_35:
        sub_1D88F3180(v72, type metadata accessor for Lens_AdBlock);
        sub_1D88F3180(v24, type metadata accessor for Lens_AdBlock);
        goto LABEL_36;
      }

      sub_1D8B14960();
      sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v53 = sub_1D8B158C0();
      sub_1D88F3180(v52, type metadata accessor for Lens_AdDisclosureData);
      sub_1D88F3180(v51, type metadata accessor for Lens_AdDisclosureData);
      sub_1D87A14E4(v47, &qword_1ECA62EB8, &qword_1D8B1DB60);
      if ((v53 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    if (v24[2] != *(v72 + 8))
    {
      goto LABEL_35;
    }

    sub_1D8B14960();
    sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v54 = v72;
    v55 = sub_1D8B158C0();
    sub_1D88F3180(v54, type metadata accessor for Lens_AdBlock);
    sub_1D88F3180(v24, type metadata accessor for Lens_AdBlock);
    if (v55)
    {
      v26 = v67 + 1;
      v30 = v60;
      v28 = v61;
      if (v67 + 1 != v69)
      {
        continue;
      }
    }

    return v55 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88E7244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_1D88F0C68(v31, v32, v33);
    v25 = sub_1D8B158C0();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88E7450(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1D881F764(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1DA71FC20](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1DA71FC20](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1D8B16400();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1D8B16400();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1D8B16610();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1D8B16610();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D88E770C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1D88F0DD8(v20, v17, a4);
        sub_1D88F0DD8(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_1D88F3180(v14, a6);
        sub_1D88F3180(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1D88E78AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88E7910(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4379616C70736964;
  v4 = 0xEF79726F67657461;
  if (v2 != 1)
  {
    v3 = 0x6E6564497370616DLL;
    v4 = 0xEE00726569666974;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x4379616C70736964;
  v8 = 0xEF79726F67657461;
  if (*a2 != 1)
  {
    v7 = 0x6E6564497370616DLL;
    v8 = 0xEE00726569666974;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D8B16BA0();
  }

  return v11 & 1;
}

uint64_t sub_1D88E7A3C()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

double sub_1D88E7AF0(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

uint64_t sub_1D88E7B90(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

unint64_t sub_1D88E7C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D88F2528(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D88E7C70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF79726F67657461;
  v5 = 0x4379616C70736964;
  if (v2 != 1)
  {
    v5 = 0x6E6564497370616DLL;
    v4 = 0xEE00726569666974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D88E7CE0()
{
  v1 = 0x4379616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x6E6564497370616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_1D88E7D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D88F2528(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D88E7D74(uint64_t a1)
{
  v2 = sub_1D88F08E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88E7DB0(uint64_t a1)
{
  v2 = sub_1D88F08E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeoLookupResultBusiness.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GeoLookupResultBusiness.displayCategory.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double GeoLookupResultBusiness.Ratings.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if (v1[4])
  {
    MEMORY[0x1DA720210](1);
    MEMORY[0x1DA720210](v2);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA720250](v4);
  }

  else
  {
    v6 = v1[3];
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](v2);
    sub_1D8B16D60();
    if (v6)
    {
      sub_1D8B16D40();

      sub_1D8B15A60();
    }

    else
    {
      sub_1D8B16D40();
    }
  }

  return result;
}

uint64_t GeoLookupResultBusiness.Ratings.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D8B16D20();
  GeoLookupResultBusiness.Ratings.hash(into:)(v4);
  return sub_1D8B16D80();
}

uint64_t sub_1D88E7F84()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D8B16D20();
  GeoLookupResultBusiness.Ratings.hash(into:)(v4);
  return sub_1D8B16D80();
}

uint64_t sub_1D88E7FDC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1D8B16D20();
  GeoLookupResultBusiness.Ratings.hash(into:)(v5);
  return sub_1D8B16D80();
}

double GeoLookupResultBusiness.ratingsInfo.getter@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 80);
  *(a1 + 32) = v7;
  return sub_1D88EFEF0(v3, v4, v5, v6, v7, a2);
}

uint64_t GeoLookupResultBusiness.priceRangeDescription.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t GeoLookupResultBusiness.operatingHoursDescription.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void GeoLookupResultBusiness.Action.hash(into:)(uint64_t a1)
{
  v2 = sub_1D8B13000();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GeoLookupResultBusiness.Action(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D88F0DD8(v1, v8, type metadata accessor for GeoLookupResultBusiness.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635F8, &qword_1D8B1F5D0);
      (*(v3 + 32))(v5, v8 + *(v10 + 64), v2);
      MEMORY[0x1DA720210](2);
      sub_1D8B15A60();

      sub_1D8B15A60();

      sub_1D88F0C68(&qword_1ECA64C80, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D8B157A0();
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      MEMORY[0x1DA720210](0);
    }
  }

  else
  {
    v11 = *v8;
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
  }
}

uint64_t GeoLookupResultBusiness.Action.hashValue.getter()
{
  sub_1D8B16D20();
  GeoLookupResultBusiness.Action.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D88E8340()
{
  sub_1D8B16D20();
  GeoLookupResultBusiness.Action.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D88E8384(uint64_t a1)
{
  sub_1D8B16D20();
  GeoLookupResultBusiness.Action.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t GeoLookupResultBusiness.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64C88, &qword_1D8B26B98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = v1[1];
  v15 = v1[4];
  v8 = v1[5];
  v13 = v7;
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88F08E0();
  sub_1D8B16DD0();
  v20 = 0;
  v9 = v16;
  sub_1D8B16A90();
  if (!v9)
  {
    v11 = v13;
    v19 = 1;
    sub_1D8B16A50();
    v17 = v11;
    v18 = 2;
    sub_1D881F764(0, &qword_1ECA64C98, 0x1E69A21C0);
    sub_1D88F0934(&qword_1ECA64CA0, &qword_1ECA64C98, 0x1E69A21C0, &protocol conformance descriptor for GEOMapItemIdentifier);
    sub_1D8B16AE0();
  }

  return (*(v4 + 8))(v6, v3);
}

void GeoLookupResultBusiness.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  v7 = *(v1 + 80);
  v9 = *(v1 + 96);
  v10 = *(v1 + 104);
  v11 = *(v1 + 120);
  v12 = *(v1 + 128);
  sub_1D8B16410();
  sub_1D8B16410();
  sub_1D8B15A60();
  if (v3)
  {
    sub_1D8B16D40();
    sub_1D8B15A60();
    if (v7 != 255)
    {
LABEL_3:
      sub_1D8B16D40();
      sub_1D88EFF08(v4, v5, v6, v8, v7 & 1);
      GeoLookupResultBusiness.Ratings.hash(into:)(a1);
      sub_1D88F0978(v4, v5, v6, v8, v7 & 1);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D8B16D40();
    if (v7 != 255)
    {
      goto LABEL_3;
    }
  }

  sub_1D8B16D40();
LABEL_6:
  sub_1D8B16D40();
  if (v9)
  {
    sub_1D8B15A60();
  }

  MEMORY[0x1DA720210](v10);
  sub_1D8B16D40();
  if (v11)
  {
    sub_1D8B15A60();
  }

  sub_1D87D04C4(a1, v12);
}

uint64_t GeoLookupResultBusiness.hashValue.getter()
{
  sub_1D8B16D20();
  GeoLookupResultBusiness.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D88E8844()
{
  sub_1D8B16D20();
  GeoLookupResultBusiness.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D88E8888(uint64_t a1)
{
  sub_1D8B16D20();
  GeoLookupResultBusiness.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t GeoLookup.GeoLookupResult.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

double GeoLookup.GeoLookupResult.debugInfo.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

uint64_t sub_1D88E8914()
{
  v1 = 0x6E6564497370616DLL;
  v2 = 0x65726F6373;
  if (*v0 != 2)
  {
    v2 = 0x666E496775626564;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D88E8994@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D88F25C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D88E89BC(uint64_t a1)
{
  v2 = sub_1D88F0988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88E89F8(uint64_t a1)
{
  v2 = sub_1D88F0988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeoLookup.GeoLookupResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64CA8, &qword_1D8B26BA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v13[1] = *(v1 + 16);
  v13[2] = v7;
  v13[0] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88F0988();
  v9 = v8;
  sub_1D8B16DD0();
  v15 = v9;
  v14 = 0;
  sub_1D881F764(0, &qword_1ECA64CB8, 0x1E696F280);
  sub_1D88F0934(&qword_1ECA64CC0, &qword_1ECA64CB8, 0x1E696F280, MEMORY[0x1E69E8188]);
  v10 = v13[3];
  sub_1D8B16AE0();

  if (!v10)
  {
    v11 = v13[0];
    LOBYTE(v15) = 1;
    sub_1D8B16A90();
    LOBYTE(v15) = 2;
    sub_1D8B16AB0();
    v15 = v11;
    v14 = 3;
    sub_1D88F09DC();

    sub_1D8B16A80();
  }

  return (*(v4 + 8))(v6, v3);
}

void GeoLookup.GeoLookupResult.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1D8B16410();
  sub_1D8B15A60();
  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x1DA720250](*&v5);
  if (v4)
  {
    sub_1D8B16D40();

    sub_1D87CF350(a1, v4);
  }

  else
  {
    sub_1D8B16D40();
  }
}

uint64_t GeoLookup.GeoLookupResult.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1D8B16D20();
  sub_1D8B16410();
  sub_1D8B15A60();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1DA720250](*&v3);
  sub_1D8B16D40();
  if (v2)
  {
    sub_1D87CF350(v5, v2);
  }

  return sub_1D8B16D80();
}

void GeoLookup.GeoLookupResult.init(from:)(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64CD0, &qword_1D8B26BA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88F0988();
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1D881F764(0, &qword_1ECA64CB8, 0x1E696F280);
    v20 = 0;
    sub_1D88F0934(&qword_1ECA64CD8, &qword_1ECA64CB8, 0x1E696F280, MEMORY[0x1E69E8190]);
    sub_1D8B16A10();
    v9 = v21;
    LOBYTE(v21) = 1;
    v10 = sub_1D8B169C0();
    v12 = v11;
    v19 = v10;
    LOBYTE(v21) = 2;
    sub_1D8B169E0();
    v14 = v13;
    v20 = 3;
    sub_1D88F0A30();
    sub_1D8B169B0();
    (*(v6 + 8))(v8, v5);
    v15 = v21;
    v16 = v19;
    *a2 = v9;
    *(a2 + 1) = v16;
    *(a2 + 2) = v12;
    *(a2 + 3) = v14;
    *(a2 + 4) = v15;

    v17 = v9;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1D88E9134()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *&v5[72] = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  sub_1D8B16D20();
  GeoLookup.GeoLookupResult.hash(into:)(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D88E919C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *&v6[72] = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_1D8B16D20();
  GeoLookup.GeoLookupResult.hash(into:)(v6);
  return sub_1D8B16D80();
}

uint64_t GeoLookup.GeoServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D88E92B4(void *a1, uint64_t a2, int a3)
{
  v33 = a2;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64EC0, &qword_1D8B27C18);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64EC8, &qword_1D8B27C20);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64ED0, &qword_1D8B27C28);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64ED8, &qword_1D8B27C30);
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64EE0, &qword_1D8B27C38);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88F2730();
  sub_1D8B16DD0();
  if (v32)
  {
    if (v32 == 1)
    {
      v37 = 3;
      sub_1D88F2784();
      v18 = v29;
      sub_1D8B16A40();
      v19 = v31;
      sub_1D8B16AB0();
      (*(v30 + 8))(v18, v19);
    }

    else if (v33)
    {
      v36 = 2;
      sub_1D88F27D8();
      v20 = v25;
      sub_1D8B16A40();
      (*(v26 + 8))(v20, v27);
    }

    else
    {
      v35 = 1;
      sub_1D88F282C();
      sub_1D8B16A40();
      (*(v23 + 8))(v10, v24);
    }
  }

  else
  {
    v34 = 0;
    sub_1D88F2880();
    sub_1D8B16A40();
    sub_1D8B16AB0();
    (*(v28 + 8))(v13, v11);
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1D88E9774(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = 3;
LABEL_5:
    MEMORY[0x1DA720210](v4);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x1DA720250](v5);
  }

  if (a2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return MEMORY[0x1DA720210](v7);
}

void sub_1D88E97F8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D88E9888(uint64_t a1)
{
  v2 = sub_1D88F2784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88E98C4(uint64_t a1)
{
  v2 = sub_1D88F2784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D88E9900()
{
  v1 = 0x6374614D74786574;
  v2 = 0x4D676E6964616568;
  if (*v0 != 2)
  {
    v2 = 0x79726F6765746163;
  }

  if (*v0)
  {
    v1 = 0x676E697461526F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D88E9988@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D88F28D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D88E99B0(uint64_t a1)
{
  v2 = sub_1D88F2730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88E99EC(uint64_t a1)
{
  v2 = sub_1D88F2730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D88E9A28(uint64_t a1)
{
  v2 = sub_1D88F27D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88E9A64(uint64_t a1)
{
  v2 = sub_1D88F27D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D88E9AA0(uint64_t a1)
{
  v2 = sub_1D88F282C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88E9ADC(uint64_t a1)
{
  v2 = sub_1D88F282C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D88E9B2C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D88E9BB0(uint64_t a1)
{
  v2 = sub_1D88F2880();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88E9BEC(uint64_t a1)
{
  v2 = sub_1D88F2880();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1D88E9C28(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      return v4 == 1 && v2 == v3;
    }

    v7 = v4 == 2 && *&v3 == 0;
    v9 = v4 == 2 && *&v3 == 1;
    if (v2 == 0.0)
    {
      return v7;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    return !*(a2 + 8) && v2 == v3;
  }
}

uint64_t sub_1D88E9CAC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D8B16D20();
  sub_1D88E9774(v4, v1, v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D88E9D08(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D8B16D20();
  sub_1D88E9774(v5, v2, v3);
  return sub_1D8B16D80();
}

uint64_t sub_1D88E9D54@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D88F2A48(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

void sub_1D88E9DD0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61655265726F6373 && a2 == 0xEC000000736E6F73)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D88E9E5C(uint64_t a1)
{
  v2 = sub_1D88F0A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88E9E98(uint64_t a1)
{
  v2 = sub_1D88F0A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeoLookup.GeoLookupResultDebugInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64CE8, &qword_1D8B26BB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88F0A84();

  sub_1D8B16DD0();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64CF8, &qword_1D8B26BB8);
  sub_1D88F0B2C(&qword_1ECA64D00, sub_1D88F0AD8, MEMORY[0x1E69E6300]);
  sub_1D8B16AE0();

  return (*(v4 + 8))(v6, v3);
}

uint64_t GeoLookup.GeoLookupResultDebugInfo.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D87CF350(v3, v1);
  return sub_1D8B16D80();
}

uint64_t GeoLookup.GeoLookupResultDebugInfo.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D10, qword_1D8B26BC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88F0A84();
  sub_1D8B16DB0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64CF8, &qword_1D8B26BB8);
    sub_1D88F0B2C(&qword_1ECA64D18, sub_1D88F0BA4, MEMORY[0x1E69E6330]);
    sub_1D8B16A10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D88EA284()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D87CF350(v3, v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D88EA2D4(uint64_t a1)
{
  v2 = *v1;
  sub_1D8B16D20();
  sub_1D87CF350(v4, v2);
  return sub_1D8B16D80();
}

VisualIntelligenceCore::GeoLookup::GeoLookupDetectionMetadata __swiftcall GeoLookup.GeoLookupDetectionMetadata.init(brandClassifications:imageEmbeddings:)(Swift::OpaquePointer brandClassifications, Swift::OpaquePointer imageEmbeddings)
{
  v2->_rawValue = brandClassifications._rawValue;
  v2[1]._rawValue = imageEmbeddings._rawValue;
  result.imageEmbeddings = imageEmbeddings;
  result.brandClassifications = brandClassifications;
  return result;
}

uint64_t static GeoLookup.DetectionType.~= infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  if (a1[2] < 0)
  {
    if (v6 < 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if (v6 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 1;
LABEL_6:
  sub_1D88F0BF8(*a2, a2[1]);
  sub_1D88F0BF8(v2, v3);
  sub_1D88F0C30(v2, v3);
  sub_1D88F0C30(v4, v5);
  return v7;
}

uint64_t sub_1D88EA400()
{
  type metadata accessor for GeoLookup(0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore9GeoLookup_logger;
  if (qword_1ECA62160 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8B151E0();
  v3 = __swift_project_value_buffer(v2, qword_1ECA66A08);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore9GeoLookup_matcher;
  sub_1D8B14920();
  result = sub_1D8B14910();
  *(v0 + v4) = result;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore9GeoLookup_traits) = 0;
  qword_1ECA64C70 = v0;
  return result;
}

double static GeoLookup.shared.getter()
{
  if (qword_1ECA620F0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D88EA550(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D88EA570, v1, 0);
}

uint64_t sub_1D88EA570()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore9GeoLookup_traits);
  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore9GeoLookup_traits) = v1;
  v4 = v1;

  v8 = (*MEMORY[0x1E69E02D8] + MEMORY[0x1E69E02D8]);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1D88EA644;
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_1D88EA644()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1D88EA768(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 24))
  {
    v1 = a1;
  }

  v2 = *v1;
  [*v1 coordinate];
  v4 = v3;
  [v2 coordinate];
  v6 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:1 isUserLocation:{v4, v5}];
  if (v6)
  {
    v7 = v6;
    [v2 horizontalAccuracy];
    [v7 setHorizontalAccuracy_];
    sub_1D8B147E0();
  }
}

double sub_1D88EA874()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D8B15EA0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_1D88F0C68(&qword_1ECA64D40, type metadata accessor for GeoLookup, &protocol conformance descriptor for GeoLookup);
  v6 = swift_allocObject();
  v6[2] = v0;
  v6[3] = v5;
  v6[4] = v0;
  swift_retain_n();
  sub_1D8891CA0(0, 0, v3, &unk_1D8B26BE0, v6);

  return result;
}

uint64_t sub_1D88EA9D8()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC22VisualIntelligenceCore9GeoLookup_matcher);
  sub_1D8B14920();
  sub_1D88F0C68(&unk_1ECA64FF8, MEMORY[0x1E69E02E0], MEMORY[0x1E69E02E8]);
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88EAAA0, v2, v1);
}

uint64_t sub_1D88EAAA0()
{
  sub_1D8B147F0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88EAB00(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  *(v2 + 64) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1D88EAB30, v1, 0);
}

uint64_t sub_1D88EAB30()
{
  if (*(v0 + 64))
  {
    v1 = (v0 + 24);
  }

  else
  {
    v1 = (v0 + 32);
  }

  v2 = *v1;
  [*v1 coordinate];
  v4 = v3;
  [v2 coordinate];
  v6 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:1 isUserLocation:{v4, v5}];
  *(v0 + 40) = v6;
  if (v6)
  {
    v7 = v6;
    [v2 horizontalAccuracy];
    [v7 setHorizontalAccuracy_];
    v8 = swift_task_alloc();
    *(v0 + 48) = v8;
    *v8 = v0;
    v8[1] = sub_1D88EACD8;

    return MEMORY[0x1EEE4FB50](v7);
  }

  else
  {
    sub_1D88F0D84();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D88EACD8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1D88EAE68;
  }

  else
  {
    v4 = sub_1D88EAE04;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D88EAE04()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88EAE68()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88EAECC(__int128 *a1, uint64_t a2, __int128 *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  v7 = sub_1D8B14830();
  *(v4 + 40) = v7;
  *(v4 + 48) = *(v7 - 8);
  *(v4 + 56) = swift_task_alloc();
  v8 = sub_1D8B148A0();
  *(v4 + 64) = v8;
  *(v4 + 72) = *(v8 - 8);
  *(v4 + 80) = swift_task_alloc();
  v9 = sub_1D8B14850();
  *(v4 + 88) = v9;
  *(v4 + 96) = *(v9 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v10 = sub_1D8B14900();
  *(v4 + 120) = v10;
  *(v4 + 128) = *(v10 - 8);
  *(v4 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D50, &qword_1D8B26BF8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D58, &qword_1D8B26C00);
  *(v4 + 160) = swift_task_alloc();
  v11 = sub_1D8B15270();
  *(v4 + 168) = v11;
  *(v4 + 176) = *(v11 - 8);
  *(v4 + 184) = swift_task_alloc();
  v12 = sub_1D8B148B0();
  *(v4 + 192) = v12;
  *(v4 + 200) = *(v12 - 8);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  v13 = sub_1D8B148D0();
  *(v4 + 224) = v13;
  *(v4 + 232) = *(v13 - 8);
  *(v4 + 240) = swift_task_alloc();
  v14 = sub_1D8B148F0();
  *(v4 + 248) = v14;
  *(v4 + 256) = *(v14 - 8);
  *(v4 + 264) = swift_task_alloc();
  v15 = sub_1D8B15240();
  *(v4 + 272) = v15;
  *(v4 + 280) = *(v15 - 8);
  *(v4 + 288) = swift_task_alloc();
  v16 = sub_1D8B131D0();
  *(v4 + 296) = v16;
  *(v4 + 304) = *(v16 - 8);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = type metadata accessor for TextDetectorResult(0);
  *(v4 + 328) = swift_task_alloc();
  v17 = *a1;
  *(v4 + 416) = *(a1 + 16);
  v18 = *a3;
  *(v4 + 336) = v17;
  *(v4 + 352) = v18;
  *(v4 + 368) = *(a3 + 2);
  *(v4 + 417) = *(a3 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D88EB3C0, v3, 0);
}

uint64_t sub_1D88EB3C0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 32;
    v95 = (*(v0 + 304) + 8);
    v97 = *(v0 + 176);
    v6 = *(v0 + 200);
    v107 = (v6 + 48);
    v94 = *(v0 + 320);
    v92 = *MEMORY[0x1E69E0200];
    v91 = *MEMORY[0x1E69E0218];
    v102 = (v6 + 16);
    v103 = (v6 + 32);
    v101 = (v6 + 8);
    v89 = *(v0 + 280);
    v106 = (v89 + 8);
    v104 = *(v0 + 232);
    v93 = *(v0 + 256);
    v90 = *MEMORY[0x1E69E0210];
    v7 = MEMORY[0x1E69E7CC0];
    v98 = *(v1 + 16);
    v96 = v1 + 32;
    do
    {
      if (*(v5 + 8 * v4) >> 60 == 5)
      {
        v99 = v4;
        v100 = v7;
        v10 = *(v0 + 328);
        v11 = swift_projectBox();
        sub_1D88F0DD8(v11, v10, type metadata accessor for TextDetectorResult);
        v12 = *(v10 + *(v94 + 44));
        v13 = *(v12 + 16);
        if (v13)
        {

          sub_1D87F3F54(0, v13, 0);
          v14 = v3;
          v15 = *(v3 + 16);
          v16 = 16 * v15;
          v17 = (v12 + 48);
          do
          {
            v19 = *(v17 - 1);
            v18 = *v17;
            v20 = v15 + 1;
            v21 = *(v14 + 24);

            if (v15 >= v21 >> 1)
            {
              sub_1D87F3F54((v21 > 1), v20, 1);
            }

            *(v14 + 16) = v20;
            v22 = v14 + v16;
            *(v22 + 32) = v19;
            *(v22 + 40) = v18;
            v16 += 16;
            v17 += 5;
            ++v15;
            --v13;
          }

          while (v13);
        }

        else
        {

          v14 = v3;
        }

        v23 = *(v0 + 312);
        v109 = *(v0 + 296);
        v24 = *(v0 + 168);
        *(v0 + 16) = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
        sub_1D88F0E40();
        sub_1D8B15810();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
        v25 = *(v97 + 72);
        v26 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1D8B1AB70;
        v28 = v27 + v26;
        v29 = *(v97 + 104);
        v29(v28, v92, v24);
        v29(v28 + v25, v91, v24);
        v29(v28 + 2 * v25, v90, v24);
        _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
        v30 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v27, v23, 1);

        (*v95)(v23, v109);
        v31 = v30[2];
        if (v31)
        {
          v32 = v30 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
          v33 = *(v89 + 72);
          v110 = *(v89 + 16);
          v34 = MEMORY[0x1E69E7CC0];
          v105 = v33;
          do
          {
            v37 = *(v0 + 184);
            v36 = *(v0 + 192);
            v38 = *(v0 + 160);
            v39 = *(v0 + 168);
            v110(*(v0 + 288), v32, *(v0 + 272));
            sub_1D8B15220();
            sub_1D8B15250();
            (*(v97 + 8))(v37, v39);
            v40 = (*v107)(v38, 1, v36);
            v41 = *(v0 + 288);
            v42 = *(v0 + 272);
            if (v40 == 1)
            {
              v35 = *(v0 + 160);
              (*v106)(*(v0 + 288), *(v0 + 272));
              sub_1D87A14E4(v35, &qword_1ECA64D58, &qword_1D8B26C00);
            }

            else
            {
              v44 = *(v0 + 208);
              v43 = *(v0 + 216);
              v45 = *(v0 + 192);
              (*v103)(v43, *(v0 + 160), v45);
              (*v102)(v44, v43, v45);
              sub_1D8B15230();
              sub_1D8B148C0();
              (*v101)(v43, v45);
              (*v106)(v41, v42);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_1D87C8CA4(0, v34[2] + 1, 1, v34);
              }

              v47 = v34[2];
              v46 = v34[3];
              v33 = v105;
              if (v47 >= v46 >> 1)
              {
                v34 = sub_1D87C8CA4((v46 > 1), v47 + 1, 1, v34);
              }

              v48 = *(v0 + 240);
              v49 = *(v0 + 224);
              v34[2] = v47 + 1;
              (*(v104 + 32))(v34 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v47, v48, v49);
            }

            v32 += v33;
            --v31;
          }

          while (v31);
        }

        v3 = MEMORY[0x1E69E7CC0];
        sub_1D8B148E0();
        v7 = v100;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D87C8C7C(0, v100[2] + 1, 1, v100);
        }

        v51 = v7[2];
        v50 = v7[3];
        if (v51 >= v50 >> 1)
        {
          v7 = sub_1D87C8C7C((v50 > 1), v51 + 1, 1, v7);
        }

        v8 = *(v0 + 264);
        v9 = *(v0 + 248);
        sub_1D88F3180(*(v0 + 328), type metadata accessor for TextDetectorResult);
        v7[2] = v51 + 1;
        (*(v93 + 32))(v7 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v51, v8, v9);

        v2 = v98;
        v4 = v99;
        v5 = v96;
      }

      ++v4;
    }

    while (v4 != v2);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 376) = v7;
  if (*(v0 + 417))
  {
    v52 = (v0 + 352);
  }

  else
  {
    v52 = (v0 + 360);
  }

  v53 = *v52;
  [*v52 coordinate];
  v55 = v54;
  [v53 coordinate];
  v57 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:1 isUserLocation:{v55, v56}];
  *(v0 + 384) = v57;
  if (v57)
  {
    v58 = v57;
    v59 = *(v0 + 417);
    [v53 horizontalAccuracy];
    [v58 setHorizontalAccuracy_];
    if (v59)
    {
      if (v59 == 1)
      {
LABEL_40:
        v65 = *(v0 + 416);
        v66 = *(v0 + 336);
        v67 = *(v0 + 344);
        v68 = *(v0 + 152);
        v69 = sub_1D8B14870();
        (*(*(v69 - 8) + 56))(v68, v59, 1, v69);
        sub_1D88F0BF8(v66, v67);

        v70 = *(v67 + 16);
        if (v70)
        {
          v108 = v65;
          v71 = *(v0 + 72);
          sub_1D87F478C(0, v70, 0);
          v72 = v3;
          v73 = v67 + 48;
          do
          {

            sub_1D8B14890();
            v75 = *(v72 + 16);
            v74 = *(v72 + 24);
            if (v75 >= v74 >> 1)
            {
              sub_1D87F478C((v74 > 1), v75 + 1, 1);
            }

            v76 = *(v0 + 80);
            v77 = *(v0 + 64);
            *(v72 + 16) = v75 + 1;
            (*(v71 + 32))(v72 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v75, v76, v77);
            v73 += 24;
            --v70;
          }

          while (v70);

          v65 = v108;
        }

        else
        {
        }

        v78 = *(v0 + 96);
        v79 = *(v78 + 104);
        v80 = (v78 + 32);
        v82 = *(v0 + 104);
        v81 = *(v0 + 112);
        if (v65 < 0)
        {
          v83 = *(v0 + 88);
          v79(*(v0 + 104), *MEMORY[0x1E69E02B8], v83);
        }

        else
        {
          v83 = *(v0 + 88);
          v79(*(v0 + 104), *MEMORY[0x1E69E02B0], v83);
        }

        (*v80)(v81, v82, v83);
        v85 = *(v0 + 144);
        v84 = *(v0 + 152);
        sub_1D88F0BF8(*(v0 + 336), *(v0 + 344));

        sub_1D87A0E38(v84, v85, &qword_1ECA64D50, &qword_1D8B26BF8);
        v86 = v58;

        sub_1D8B14880();
        v87 = swift_task_alloc();
        *(v0 + 392) = v87;
        *v87 = v0;
        v87[1] = sub_1D88EC040;
        v88 = *(v0 + 136);

        return MEMORY[0x1EEE4FB18](v88);
      }
    }

    else
    {
      v63 = *(v0 + 352);
      v64 = *(v0 + 360);
      [v63 coordinate];
      [v63 coordinate];
      [v64 coordinate];
      [v64 coordinate];
      GEOBearingFromCoordinateToCoordinate();
    }

    sub_1D8B14860();
    v59 = 0;
    goto LABEL_40;
  }

  sub_1D88F0D84();
  swift_allocError();
  *v60 = 2;
  swift_willThrow();

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1D88EC040(uint64_t a1)
{
  v3 = *v2;
  v3[50] = a1;
  v3[51] = v1;

  if (v1)
  {
    v4 = v3[4];

    v5 = sub_1D88EC4A4;
    v6 = v4;
  }

  else
  {
    v6 = v3[4];
    v5 = sub_1D88EC168;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1D88EC168()
{
  v1 = v0[50];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D87F476C(0, v2, 0);
    v4 = v35;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v32 = *(v3 + 56);
    v33 = v5;
    v34 = v0;
    v31 = (v3 - 8);
    do
    {
      v7 = v0[7];
      v8 = v0[5];
      v33(v7, v6, v8);
      v9 = sub_1D8B14800();
      v10 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

      v11 = sub_1D8B14810();
      v13 = v12;
      sub_1D8B14820();
      v15 = v14;
      (*v31)(v7, v8);
      v17 = *(v35 + 16);
      v16 = *(v35 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D87F476C((v16 > 1), v17 + 1, 1);
      }

      *(v35 + 16) = v17 + 1;
      v18 = (v35 + 40 * v17);
      v18[4] = v10;
      v18[5] = v11;
      v18[6] = v13;
      v18[7] = v15;
      v18[8] = 0;
      v6 += v32;
      --v2;
      v0 = v34;
    }

    while (v2);
    v19 = v34[48];
    v20 = v34[19];
    v22 = v34[16];
    v21 = v34[17];
    v23 = v34[15];

    (*(v22 + 8))(v21, v23);
    sub_1D87A14E4(v20, &qword_1ECA64D50, &qword_1D8B26BF8);
  }

  else
  {
    v24 = v0[48];
    v25 = v0[19];
    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[15];

    (*(v27 + 8))(v26, v28);
    sub_1D87A14E4(v25, &qword_1ECA64D50, &qword_1D8B26BF8);

    v4 = MEMORY[0x1E69E7CC0];
  }

  v29 = v0[1];

  return v29(v4);
}

uint64_t sub_1D88EC4A4()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);

  (*(v3 + 8))(v2, v4);
  sub_1D87A14E4(v1, &qword_1ECA64D50, &qword_1D8B26BF8);

  v5 = *(v0 + 8);

  return v5();
}

void GeoLocationEstimate.heading.getter(double *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  if (*(v1 + 24))
  {
    if (v3 == 1)
    {
      *a1 = 0.0;
    }

    else
    {
      LOBYTE(v3) = 0;
      *a1 = v2;
    }
  }

  else
  {
    v4 = *v1;
    v5 = a1;
    [v4 coordinate];
    [v4 coordinate];
    [v2 coordinate];
    [v2 coordinate];
    GEOBearingFromCoordinateToCoordinate();
    a1 = v5;
    LOBYTE(v3) = 0;
    *v5 = v6 * 3.14159265 / 180.0;
  }

  *(a1 + 8) = v3;
}

void GeoLocationEstimate.headingAccuracy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  if (*(v1 + 24))
  {
    if (v2 == 1)
    {
      v3 = 0;
    }

    else
    {
      LOBYTE(v2) = 0;
      v3 = *(v1 + 16);
    }
  }

  else
  {
    v3 = 0x3FC657184AE74487;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_1D88EC748(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D88EC768, v1, 0);
}

uint64_t sub_1D88EC768()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D8B16810();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v3 += 5;
      v5 = [v4 geoMapItemIdentifier];
      sub_1D8B167E0();
      sub_1D8B16820();
      sub_1D8B16830();
      sub_1D8B167F0();
      --v2;
    }

    while (v2);
  }

  v6 = [objc_opt_self() sharedService];
  if (!v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = v6;
  v15 = v0[4];
  sub_1D881F764(0, &qword_1ECA64C98, 0x1E69A21C0);
  v16 = sub_1D8B15CD0();

  v17 = [v14 ticketForIdentifiers:v16 traits:*(v15 + OBJC_IVAR____TtC22VisualIntelligenceCore9GeoLookup_traits)];
  v0[5] = v17;

  if (v17)
  {
    v18 = v0[4];
    v19 = sub_1D88F0C68(&qword_1ECA64D40, type metadata accessor for GeoLookup, &protocol conformance descriptor for GeoLookup);
    v20 = swift_task_alloc();
    v0[6] = v20;
    *(v20 + 16) = v17;
    *(v20 + 24) = v18;
    v21 = swift_task_alloc();
    v0[7] = v21;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D78, &qword_1D8B26C10);
    *v21 = v0;
    v21[1] = sub_1D88ECA44;
    v11 = sub_1D88F0EA4;
    v6 = v0 + 2;
    v10 = 0x80000001D8B43F00;
    v7 = v18;
    v8 = v19;
    v9 = 0xD000000000000010;
    v12 = v20;

    return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  sub_1D88F0D84();
  swift_allocError();
  *v22 = 1;
  swift_willThrow();
  v23 = v0[1];

  return v23();
}

uint64_t sub_1D88ECA44()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1D88ECBD4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1D88ECB6C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D88ECB6C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D88ECBD4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D88ECC40(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FE0, &unk_1D8B27C88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1D88F3264;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D88ED128;
  aBlock[3] = &block_descriptor_2;
  v13 = _Block_copy(aBlock);

  [a2 submitWithHandler:v13 networkActivity:0];
  _Block_release(v13);
}

uint64_t sub_1D88ECE14(unint64_t a1, id a2, __n128 a3)
{
  if (a2)
  {
    *&v44[0] = a2;
    v3 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FE0, &unk_1D8B27C88);
    return sub_1D8B15E10();
  }

  if (!a1)
  {
    sub_1D88F0D84();
    v14 = swift_allocError();
    *v15 = 0;
    *&v44[0] = v14;
    goto LABEL_3;
  }

  if (a1 >> 62)
  {
LABEL_28:
    v6 = sub_1D8B16610();
    if (v6)
    {
LABEL_7:
      v7 = 0;
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v16 = v8;
        v9 = v7;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1DA71FC20](v9, a1, a3);
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v10 = *(a1 + 8 * v9 + 32);
            swift_unknownObjectRetain();
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }
          }

          sub_1D88ED1C8(v10, &v35);
          swift_unknownObjectRelease();
          v44[6] = v41;
          v44[7] = v42;
          v45 = v43;
          v44[2] = v37;
          v44[3] = v38;
          v44[4] = v39;
          v44[5] = v40;
          v44[0] = v35;
          v44[1] = v36;
          if (sub_1D88F3334(v44) != 1)
          {
            break;
          }

          v32 = v41;
          v33 = v42;
          v34 = v43;
          v28 = v37;
          v29 = v38;
          v30 = v39;
          v31 = v40;
          v26 = v35;
          v27 = v36;
          sub_1D87A14E4(&v26, &qword_1ECA64FF0, &qword_1D8B27CA0);
          ++v9;
          if (v7 == v6)
          {
            v8 = v16;
            goto LABEL_30;
          }
        }

        v32 = v41;
        v33 = v42;
        v34 = v43;
        v28 = v37;
        v29 = v38;
        v30 = v39;
        v31 = v40;
        v26 = v35;
        v27 = v36;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v8 = v16;
        }

        else
        {
          v8 = sub_1D87C8CCC(0, *(v16 + 2) + 1, 1, v16);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_1D87C8CCC((v11 > 1), v12 + 1, 1, v8);
        }

        v19 = v28;
        v20 = v29;
        v25 = v34;
        v23 = v32;
        v24 = v33;
        v21 = v30;
        v22 = v31;
        v17 = v26;
        v18 = v27;
        *(v8 + 2) = v12 + 1;
        v13 = &v8[136 * v12];
        *(v13 + 2) = v17;
        *(v13 + 5) = v20;
        *(v13 + 6) = v21;
        *(v13 + 3) = v18;
        *(v13 + 4) = v19;
        a3 = v22;
        *(v13 + 20) = v25;
        *(v13 + 8) = v23;
        *(v13 + 9) = v24;
        *(v13 + 7) = v22;
      }

      while (v7 != v6);
      goto LABEL_30;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_30:
  *&v44[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FE0, &unk_1D8B27C88);
  return sub_1D8B15E20();
}

double sub_1D88ED128(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FE8, &qword_1D8B27C98);
    v4 = sub_1D8B15CF0();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

void sub_1D88ED1C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = [a1 name];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = v5;
  v7 = sub_1D8B15970();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (v11 = [a1 _identifier]) == 0)
  {

LABEL_22:
    sub_1D88F3248(&v75);
LABEL_23:
    v41 = v82;
    *(a2 + 96) = v81;
    *(a2 + 112) = v41;
    *(a2 + 128) = v83;
    v42 = v78;
    *(a2 + 32) = v77;
    *(a2 + 48) = v42;
    v43 = v80;
    *(a2 + 64) = v79;
    *(a2 + 80) = v43;
    v44 = v76;
    *a2 = v75;
    *(a2 + 16) = v44;
    return;
  }

  v12 = v11;
  v13 = [a1 _localizedCategoryNamesForType_];
  if (!v13 || (v14 = v13, v15 = sub_1D8B15CF0(), v14, v16 = sub_1D8A727DC(v15), , !v16) || (, (v17 = [a1 _localizedCategoryNamesForType_]) == 0) || (v18 = v17, v19 = sub_1D8B15CF0(), v18, v20 = sub_1D8A727DC(v19), , !v20))
  {
LABEL_21:

    goto LABEL_22;
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E696F270]) initWithGeoMapItem:a1 isPlaceHolderPlace:0];
  if (!v21)
  {

    goto LABEL_21;
  }

  v22 = v21;
  [a1 centerCoordinate];
  v24 = v23;
  v26 = v25;
  sub_1D88ED720(a1);
  v74 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v24 longitude:v26];
  v27 = [a1 addressObject];
  if (v27)
  {
    v28 = v27;

    if (![a1 _hasAppleRatings] || (v29 = objc_msgSend(a1, sel__overallAppleRating)) == 0)
    {
      if ([a1 _hasUserRatingScore])
      {
        LODWORD(v32) = [a1 _sampleSizeForUserRatingScore];
        [a1 _normalizedUserRatingScore];
        v36 = v35;
        v37 = [v22 _reviewsDisplayName];
        if (v37)
        {
          v38 = v37;
          v39 = sub_1D8B15970();
          v72 = v40;
          v73 = v39;
        }

        else
        {
          v72 = 0;
          v73 = 0;
        }

        v71 = 0;
        v70 = v36;
      }

      else
      {
        LODWORD(v32) = 0;
        v70 = 0;
        v72 = 0;
        v73 = 0;
        v71 = -1;
      }

      goto LABEL_27;
    }

    v30 = v29;
    v31 = [v29 numberOfRatingsUsedForScore];
    if ((v31 & 0x80000000) == 0)
    {
      LODWORD(v32) = v31;
      [v30 percentage];
      v34 = v33;

      v72 = 0;
      v73 = 0;
      v70 = v34;
      v71 = 1;
LABEL_27:
      if ([v22 _hasBusinessHours] && (v45 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E696F468]), sel_initWithMapItem_localizedHoursStringOptions_conciseStyle_openAt_, v22, 128, 1, 0)) != 0)
      {
        v46 = v45;
        v66 = v32;
        v47 = [v45 localizedOperatingHours];
        if (v47)
        {
          v48 = v47;
          v49 = sub_1D8B15970();
          v68 = v50;
          v69 = v49;
        }

        else
        {
          v68 = 0;
          v69 = 0;
        }

        LODWORD(v32) = v66;
        v67 = [v46 state];
      }

      else
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
      }

      v32 = v32;
      if (v20[2])
      {
        v51 = v20[5];
        v63 = v20[4];
        v52 = v22;
        v64 = v51;
      }

      else
      {
        v53 = v22;

        v63 = 0;
        v64 = 0;
      }

      v65 = v22;
      if ([v22 _hasPriceDescription])
      {
        v62 = v32;
        v54 = [v22 _priceDescription];
      }

      else
      {
        if (![v22 _hasPriceRange])
        {
          v57 = v63;
          v58 = 0;
          v60 = 0;
LABEL_46:
          v61 = sub_1D88EDBB8(ObjectType);

          *&v75 = v65;
          *(&v75 + 1) = v12;
          *&v76 = v7;
          *(&v76 + 1) = v9;
          *&v77 = v57;
          *(&v77 + 1) = v64;
          *&v78 = v32;
          *(&v78 + 1) = v70;
          *&v79 = v73;
          *(&v79 + 1) = v72;
          LOBYTE(v80) = v71;
          *(&v80 + 1) = v58;
          *&v81 = v60;
          *(&v81 + 1) = v67;
          *&v82 = v69;
          *(&v82 + 1) = v68;
          v83 = v61;
          nullsub_3();
          goto LABEL_23;
        }

        v62 = v32;
        v54 = [v22 _priceRangeString];
      }

      v55 = v54;
      if (v55)
      {
        v56 = v55;
        v57 = v63;
        v58 = sub_1D8B15970();
        v60 = v59;
      }

      else
      {
        v57 = v63;
        v58 = 0;
        v60 = 0;
      }

      v32 = v62;
      goto LABEL_46;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1D88ED720(void *a1)
{
  v1 = [a1 geoFenceMapRegion];
  if (v1)
  {
    v2 = v1;
    [v1 centerLat];
    v4 = v3;
    [v2 centerLng];
    v6 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v4 longitude:v5];
    v7 = [v2 vertexs];
    if (v7)
    {
      v8 = v7;
      sub_1D881F764(0, &qword_1ECA64FA8, 0x1E69A1E50);
      sub_1D8B15CE0();
    }

    [v2 centerLat];
    v16 = v15;
    [v2 spanLat];
    v18 = v16 - v17;
    [v2 centerLng];
    v20 = v19;
    [v2 spanLng];
    v22 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v18 longitude:v20 - v21];
    [v2 centerLat];
    v24 = v23;
    [v2 spanLat];
    v26 = v24 + v25;
    [v2 centerLng];
    v28 = v27;
    [v2 spanLng];
    v30 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v26 longitude:v28 + v29];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D8B26B80;
    *(v31 + 32) = v22;
    *(v31 + 40) = v30;
    if (!(v31 >> 62))
    {
      goto LABEL_13;
    }

LABEL_30:
    v32 = sub_1D8B16610();
    if (v32)
    {
      while (1)
      {
        v49 = MEMORY[0x1E69E7CC0];
        sub_1D87F4140(0, v32 & ~(v32 >> 63), 0);
        if ((v32 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
        v46 = sub_1D8B16610();
        if (v46)
        {
          v47 = v2;
          v48 = MEMORY[0x1E69E7CC0];
          sub_1D8B16810();
          if (v46 < 0)
          {
            __break(1u);
            goto LABEL_34;
          }

          v9 = 0;
          do
          {
            if ((v31 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1DA71FC20](v9, v31);
            }

            else
            {
              v10 = *(v31 + 8 * v9 + 32);
            }

            v11 = v10;
            ++v9;
            [v10 lat];
            v13 = v12;
            [v11 lng];
            [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v13 longitude:v14];

            sub_1D8B167E0();
            sub_1D8B16820();
            sub_1D8B16830();
            sub_1D8B167F0();
          }

          while (v46 != v9);

          v2 = v47;
          v31 = v48;
          if (v48 >> 62)
          {
            goto LABEL_30;
          }
        }

        else
        {

          v31 = MEMORY[0x1E69E7CC0];
          if (MEMORY[0x1E69E7CC0] >> 62)
          {
            goto LABEL_30;
          }
        }

LABEL_13:
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v32)
        {
          goto LABEL_31;
        }
      }

      v33 = 0;
      v34 = v49;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1DA71FC20](v33, v31);
        }

        else
        {
          v35 = *(v31 + 8 * v33 + 32);
        }

        v36 = v35;
        [v35 distanceFromLocation_];
        v38 = v37;

        v40 = *(v49 + 16);
        v39 = *(v49 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D87F4140((v39 > 1), v40 + 1, 1);
        }

        ++v33;
        *(v49 + 16) = v40 + 1;
        *(v49 + 8 * v40 + 32) = v38;
      }

      while (v32 != v33);

      v41 = *(v49 + 16);
      if (!v41)
      {
        goto LABEL_32;
      }
    }

    else
    {
LABEL_31:

      v34 = MEMORY[0x1E69E7CC0];
      v41 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v41)
      {
LABEL_32:

        return;
      }
    }

    v42 = (v34 + 32);
    v43 = -INFINITY;
    do
    {
      v44 = *v42++;
      v45 = v44;
      if (v43 <= v44)
      {
        v43 = v45;
      }

      --v41;
    }

    while (v41);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
}

void *sub_1D88EDBB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64F80, &unk_1D8B27C70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v37 - v4);
  v6 = type metadata accessor for GeoLookupResultBusiness.Action(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - v11;
  v13 = [v1 _placecardLayoutData];
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = v13;
  v15 = [v13 currentModuleLayoutEntry];

  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = [v15 modules];

  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v40 = v7;
  sub_1D881F764(0, &qword_1ECA64F88, 0x1E69A2248);
  v17 = sub_1D8B15CF0();

  v43 = a1;
  v44 = v1;
  v41 = v10;
  v42 = v6;
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  v18 = sub_1D8B16610();
  if (!v18)
  {
LABEL_39:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_6:
  v19 = 0;
  while (1)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1DA71FC20](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if ([v20 type] == 39)
    {
      break;
    }

    ++v19;
    if (v22 == v18)
    {
      goto LABEL_39;
    }
  }

  v23 = [v21 configuration];

  if (!v23)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v24 = [v23 unifiedActionConfig];

  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v25 = [v24 buttonItems];

  if (!v25)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D881F764(0, &unk_1ECA64F90, 0x1E69A1BB0);
  v26 = sub_1D8B15CF0();

  if (v26 >> 62)
  {
    v27 = sub_1D8B16610();
    if (v27)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
LABEL_20:
      v28 = 0;
      v17 = 0;
      v38 = v26 & 0xFFFFFFFFFFFFFF8;
      v39 = v26 & 0xC000000000000001;
      v29 = (v40 + 48);
      v30 = MEMORY[0x1E69E7CC0];
      v37 = v27;
      while (1)
      {
        if (v39)
        {
          v31 = MEMORY[0x1DA71FC20](v28, v26);
        }

        else
        {
          if (v28 >= *(v38 + 16))
          {
            goto LABEL_37;
          }

          v31 = *(v26 + 8 * v28 + 32);
        }

        v32 = v31;
        v33 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_36;
        }

        v45 = v31;
        sub_1D88EE1E8(&v45, v44, v5);

        if ((*v29)(v5, 1, v42) == 1)
        {
          sub_1D87A14E4(v5, &qword_1ECA64F80, &unk_1D8B27C70);
        }

        else
        {
          sub_1D88F31E0(v5, v12, type metadata accessor for GeoLookupResultBusiness.Action);
          sub_1D88F31E0(v12, v41, type metadata accessor for GeoLookupResultBusiness.Action);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1D87C8DEC(0, v30[2] + 1, 1, v30);
          }

          v35 = v30[2];
          v34 = v30[3];
          if (v35 >= v34 >> 1)
          {
            v30 = sub_1D87C8DEC((v34 > 1), v35 + 1, 1, v30);
          }

          v30[2] = v35 + 1;
          sub_1D88F31E0(v41, v30 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35, type metadata accessor for GeoLookupResultBusiness.Action);
          v27 = v37;
        }

        ++v28;
        if (v33 == v27)
        {
          goto LABEL_44;
        }
      }
    }
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v30;
}

uint64_t GeoLookup.deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore9GeoLookup_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GeoLookup.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore9GeoLookup_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1D88EE1E8(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = *a1;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    if ([v9 buttonType] == 6)
    {
      v20 = [a2 _webURL];
      if (v20)
      {
        v21 = v20;
        sub_1D8B12FB0();

        v22 = sub_1D8B13000();
        (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
        sub_1D87A14E4(v8, &qword_1ECA630C0, &qword_1D8B24530);
        v19 = type metadata accessor for GeoLookupResultBusiness.Action(0);
        goto LABEL_12;
      }

      v24 = sub_1D8B13000();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      sub_1D87A14E4(v8, &qword_1ECA630C0, &qword_1D8B24530);
    }

    goto LABEL_16;
  }

  v11 = v10;
  v12 = v9;
  if ([v11 groupType] != 2)
  {
    v23 = type metadata accessor for GeoLookupResultBusiness.Action(0);
    (*(*(v23 - 8) + 56))(a3, 1, 1, v23);

    return;
  }

  v13 = [a2 _externalActionLinks];
  if (!v13)
  {

LABEL_16:
    v25 = type metadata accessor for GeoLookupResultBusiness.Action(0);
    (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
    return;
  }

  v14 = v13;
  sub_1D881F764(0, &qword_1ECA64DF0, 0x1E69A2378);
  v15 = sub_1D8B15CF0();

  v16 = [v11 actionDataIndex];
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v17 = MEMORY[0x1DA71FC20]();
    goto LABEL_8;
  }

  if (v16 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 8 * v16 + 32);
LABEL_8:
    v18 = v17;

    *a3 = v18;
    v19 = type metadata accessor for GeoLookupResultBusiness.Action(0);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
    return;
  }

  __break(1u);
}

id sub_1D88EE560@<X0>(void *a1@<X8>)
{
  result = [*v1 muid];
  *a1 = result;
  return result;
}

uint64_t sub_1D88EE59C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616E6964726F6F63;
  v4 = 0xEA00000000006574;
  v5 = 0x80000001D8B40420;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001D8B40420;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1684632941;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x616E6964726F6F63;
  if (*a2 == 1)
  {
    v5 = 0xEA00000000006574;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684632941;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D8B16BA0();
  }

  return v11 & 1;
}

uint64_t sub_1D88EE698()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

double sub_1D88EE73C(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

uint64_t sub_1D88EE7CC(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

unint64_t sub_1D88EE86C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D88F2574(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D88EE89C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA00000000006574;
  v5 = 0x616E6964726F6F63;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001D8B40420;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684632941;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D88EE8FC()
{
  v1 = 0x616E6964726F6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632941;
  }
}

unint64_t sub_1D88EE958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D88F2574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D88EE980(uint64_t a1)
{
  v2 = sub_1D88F0EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88EE9BC(uint64_t a1)
{
  v2 = sub_1D88F0EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GEOMapItemIdentifier.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D88, &qword_1D8B26C18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88F0EAC();
  sub_1D8B16DD0();
  [v3 muid];
  LOBYTE(v13) = 0;
  sub_1D8B16B00();
  if (!v2)
  {
    [v3 coordinate];
    v13 = v9;
    v14 = v10;
    v12[15] = 1;
    type metadata accessor for GEOLocationCoordinate2D(0);
    sub_1D88F0C68(&qword_1ECA64D98, type metadata accessor for GEOLocationCoordinate2D, &protocol conformance descriptor for GEOLocationCoordinate2D);
    sub_1D8B16AE0();
    [v3 resultProviderID];
    LOBYTE(v13) = 2;
    sub_1D8B16AF0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D88EEC1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64757469676E6F6CLL;
  }

  else
  {
    v3 = 0x656475746974616CLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x64757469676E6F6CLL;
  }

  else
  {
    v5 = 0x656475746974616CLL;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();
  }

  return v8 & 1;
}

uint64_t sub_1D88EECC8()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

double sub_1D88EED50(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

uint64_t sub_1D88EEDC4(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

void sub_1D88EEE48(char *a2@<X8>)
{
  v3 = sub_1D8B16930();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D88EEEA8(uint64_t *a1@<X8>)
{
  v2 = 0x656475746974616CLL;
  if (*v1)
  {
    v2 = 0x64757469676E6F6CLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D88EEEEC()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

void sub_1D88EEF2C(char *a3@<X8>)
{
  v4 = sub_1D8B16930();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D88EEF90(uint64_t a1)
{
  v2 = sub_1D88F0F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88EEFCC(uint64_t a1)
{
  v2 = sub_1D88F0F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GEOLocationCoordinate2D.encode(to:)(void *a1, double a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64DA0, &qword_1D8B26C20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88F0F00();
  sub_1D8B16DD0();
  v12 = 0;
  sub_1D8B16AB0();
  if (!v3)
  {
    v11 = 1;
    sub_1D8B16AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL _s22VisualIntelligenceCore9GeoLookupC0dE6ResultV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = a1[3];
  v5 = *(a1 + 4);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = a2[3];
  v9 = *(a2 + 4);
  sub_1D881F764(0, &qword_1EE0E36A0, 0x1E69E58C0);
  if ((sub_1D8B16400() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v11 = sub_1D8B16BA0();
  result = 0;
  if ((v11 & 1) != 0 && v4 == v8)
  {
LABEL_10:
    if (v5)
    {
      if (v9)
      {
        return (sub_1D88E18F4(v5, v9) & 1) != 0;
      }
    }

    else if (!v9)
    {

      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s22VisualIntelligenceCore19GeoLocationEstimateO2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      sub_1D881F764(0, &qword_1EE0E36A0, 0x1E69E58C0);
      sub_1D88F3364(v7, *&v6, *&v8, 0);
      sub_1D88F3364(v3, *&v2, *&v4, 0);
      if (sub_1D8B16400())
      {
        v10 = sub_1D8B16400();
        sub_1D88F33B4(v3, *&v2, *&v4, 0);
        v11 = v7;
        v12 = v6;
        v13 = *&v8;
        v14 = 0;
        goto LABEL_8;
      }

      sub_1D88F33B4(v3, *&v2, *&v4, 0);
      v17 = v7;
      v18 = v6;
      v19 = *&v8;
      v20 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v5 == 1)
  {
    if (v9 == 1)
    {
      sub_1D881F764(0, &qword_1EE0E36A0, 0x1E69E58C0);
      sub_1D88F3364(v7, *&v6, *&v8, 1u);
      sub_1D88F3364(v3, *&v2, *&v4, 1u);
      v10 = sub_1D8B16400();
      sub_1D88F33B4(v3, *&v2, *&v4, 1u);
      v11 = v7;
      v12 = v6;
      v13 = *&v8;
      v14 = 1;
LABEL_8:
      sub_1D88F33B4(v11, *&v12, v13, v14);
      return v10 & 1;
    }

    goto LABEL_13;
  }

  if (v9 != 2)
  {
LABEL_13:
    sub_1D88F3364(*a2, *(a2 + 1), *&v8, v9);
    sub_1D88F3364(v3, *&v2, *&v4, v5);
    sub_1D88F33B4(v3, *&v2, *&v4, v5);
    v17 = v7;
    v18 = v6;
    v19 = *&v8;
    v20 = v9;
LABEL_14:
    sub_1D88F33B4(v17, *&v18, v19, v20);
    return 0;
  }

  sub_1D881F764(0, &qword_1EE0E36A0, 0x1E69E58C0);
  sub_1D88F3364(v7, *&v6, *&v8, 2u);
  sub_1D88F3364(v3, *&v2, *&v4, 2u);
  v16 = sub_1D8B16400();
  sub_1D88F33B4(v3, *&v2, *&v4, 2u);
  sub_1D88F33B4(v7, *&v6, *&v8, 2u);
  result = 0;
  if ((v16 & 1) != 0 && v2 == v6)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t _s22VisualIntelligenceCore14GeoLocateStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v66 = sub_1D8B13240();
  v4 = *(v66 - 8);
  v5 = MEMORY[0x1EEE9AC00](v66);
  v65 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - v7;
  State = type metadata accessor for GeoLocateState(0);
  v10 = MEMORY[0x1EEE9AC00](State);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65028, &qword_1D8B27CB0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v50 - v17;
  v19 = &v50 + *(v16 + 56) - v17;
  sub_1D88F0DD8(a1, &v50 - v17, type metadata accessor for GeoLocateState);
  sub_1D88F0DD8(a2, v19, type metadata accessor for GeoLocateState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D88F0DD8(v18, v14, type metadata accessor for GeoLocateState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v44 = v66;
      (*(v4 + 32))(v8, v19, v66);
      v43 = sub_1D8B13200();
      v45 = *(v4 + 8);
      v45(v8, v44);
      v45(v14, v44);
      goto LABEL_11;
    }

    v12 = v14;
    goto LABEL_9;
  }

  v61 = v4;
  sub_1D88F0DD8(v18, v12, type metadata accessor for GeoLocateState);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA65030, &qword_1D8B27CB8);
  v21 = *(v20 + 48);
  v22 = *&v12[v21 + 8];
  v60 = *&v12[v21];
  v23 = *&v12[v21 + 16];
  v62 = v22;
  v63 = v23;
  v64 = v12[v21 + 24];
  v24 = *(v20 + 64);
  v25 = *&v12[v24];
  v26 = *&v12[v24 + 8];
  v27 = *&v12[v24 + 16];
  v28 = v12[v24 + 24];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D88F33B4(v25, v26, v27, v28);
    sub_1D88F33B4(v60, v62, v63, v64);
    v4 = v61;
LABEL_9:
    (*(v4 + 8))(v12, v66);
    sub_1D87A14E4(v18, &qword_1ECA65028, &qword_1D8B27CB0);
LABEL_15:
    v43 = 0;
    return v43 & 1;
  }

  v52 = v25;
  v53 = v26;
  v54 = v27;
  v55 = v28;
  v29 = *&v19[v21 + 8];
  v56 = *&v19[v21];
  v57 = v29;
  v58 = *&v19[v21 + 16];
  v59 = v19[v21 + 24];
  v30 = *&v19[v24 + 8];
  v51 = *&v19[v24];
  v31 = *&v19[v24 + 16];
  v32 = v19[v24 + 24];
  v33 = v61;
  v34 = v65;
  v35 = v66;
  (*(v61 + 32))(v65, v19, v66);
  v36 = sub_1D8B13200();
  v37 = *(v33 + 8);
  v37(v12, v35);
  if ((v36 & 1) == 0)
  {
    v37(v34, v35);
    sub_1D88F33B4(v51, v30, v31, v32);
    sub_1D88F33B4(v56, v57, v58, v59);
    sub_1D88F33B4(v52, v53, v54, v55);
    v46 = v60;
LABEL_14:
    sub_1D88F33B4(v46, v62, v63, v64);
    sub_1D88F3180(v18, type metadata accessor for GeoLocateState);
    goto LABEL_15;
  }

  v38 = v51;
  v39 = v32;
  v40 = v60;
  v71 = v60;
  v72 = v62;
  v73 = v63;
  v74 = v64;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  v41 = _s22VisualIntelligenceCore19GeoLocationEstimateO2eeoiySbAC_ACtFZ_0(&v71, &v67);
  v42 = v54;
  if (!v41)
  {
    v47 = v35;
    v48 = v55;
    v37(v65, v47);
    sub_1D88F33B4(v38, v30, v31, v39);
    sub_1D88F33B4(v56, v57, v58, v59);
    sub_1D88F33B4(v52, v53, v42, v48);
    v46 = v40;
    goto LABEL_14;
  }

  v71 = v52;
  v72 = v53;
  v73 = v54;
  v74 = v55;
  v67 = v38;
  v68 = v30;
  v69 = v31;
  v70 = v39;
  v43 = _s22VisualIntelligenceCore19GeoLocationEstimateO2eeoiySbAC_ACtFZ_0(&v71, &v67);
  sub_1D88F33B4(v56, v57, v58, v59);
  sub_1D88F33B4(v40, v62, v63, v64);
  v37(v65, v35);
  sub_1D88F33B4(v38, v30, v31, v39);
  sub_1D88F33B4(v52, v53, v54, v55);
LABEL_11:
  sub_1D88F3180(v18, type metadata accessor for GeoLocateState);
  return v43 & 1;
}

BOOL _s22VisualIntelligenceCore23GeoLookupResultBusinessV7RatingsO2eeoiySbAE_AEtFZ_0(double *a1, double *a2, __n128 a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 32);
  v9 = *a2;
  v8 = a2[1];
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v12 = *(a2 + 32);
  if (v7)
  {
    if (a2[4])
    {
      sub_1D88F0978(*a1, *&v4, v5, v6, 1);
      sub_1D88F0978(v9, *&v8, v10, v11, 1);
      if (v3 == v9)
      {
        return v4 == v8;
      }

      return 0;
    }

    goto LABEL_7;
  }

  if (a2[4])
  {

LABEL_7:
    sub_1D88EFF08(v9, *&v8, v10, v11, v12);
    sub_1D88F0978(v3, *&v4, v5, v6, v7);
    v14 = v9;
    v15 = *&v8;
    v16 = v10;
    v17 = v11;
    v18 = v12;
LABEL_23:
    sub_1D88F0978(v14, v15, v16, v17, v18);
    return 0;
  }

  if (v3 != v9)
  {
    sub_1D88EFF08(*a2, *(a2 + 1), v10, v11, 0);
    sub_1D88EFF08(v3, *&v4, v5, v6, 0);
    sub_1D88F0978(v3, *&v4, v5, v6, 0);
    v14 = v9;
LABEL_22:
    v15 = *&v8;
    v16 = v10;
    v17 = v11;
    v18 = 0;
    goto LABEL_23;
  }

  if (*&v4 != *&v8)
  {
    v19 = *a1;
    v20 = *(a2 + 1);
    v21 = v10;
    v22 = v11;
LABEL_20:
    sub_1D88EFF08(v19, v20, v21, v22, 0);
    sub_1D88EFF08(v3, *&v4, v5, v6, 0);
    sub_1D88F0978(v3, *&v4, v5, v6, 0);
LABEL_21:
    v14 = v3;
    goto LABEL_22;
  }

  if (!v6)
  {

    sub_1D88EFF08(v3, *&v8, v10, v11, 0);
    sub_1D88EFF08(v3, *&v4, v5, 0, 0);
    sub_1D88F0978(v3, *&v4, v5, 0, 0);
    sub_1D88F0978(v3, *&v8, v10, v11, 0);
    if (!v11)
    {
      return 1;
    }

    goto LABEL_21;
  }

  if (!v11)
  {
    sub_1D88EFF08(*a1, *(a2 + 1), v10, 0, 0);
    v19 = v3;
    v20 = *&v8;
    v21 = v10;
    v22 = 0;
    goto LABEL_20;
  }

  if (v5 == v10 && v6 == v11)
  {
    sub_1D88EFF08(*a1, *(a2 + 1), v5, v6, 0);
    sub_1D88EFF08(v3, *&v4, v5, v6, 0);
    sub_1D88F0978(v3, *&v4, v5, v6, 0);
    sub_1D88F0978(v3, *&v8, v5, v6, 0);
    return 1;
  }

  v23 = sub_1D8B16BA0();
  sub_1D88EFF08(v3, *&v8, v10, v11, 0);
  sub_1D88EFF08(v3, *&v4, v5, v6, 0);
  sub_1D88F0978(v3, *&v4, v5, v6, 0);
  sub_1D88F0978(v3, *&v8, v10, v11, 0);
  return (v23 & 1) != 0;
}

double sub_1D88EFEF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  if (a5 != -1)
  {
    return sub_1D88EFF08(result, a2, a3, a4, a5 & 1);
  }

  return v6;
}

double sub_1D88EFF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t _s22VisualIntelligenceCore23GeoLookupResultBusinessV6ActionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13000();
  v50 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v43 - v8;
  v9 = type metadata accessor for GeoLookupResultBusiness.Action(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v43 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA65010, &qword_1D8B27CA8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v43 - v17;
  v19 = (&v43 + *(v16 + 56) - v17);
  sub_1D88F0DD8(a1, &v43 - v17, type metadata accessor for GeoLookupResultBusiness.Action);
  sub_1D88F0DD8(a2, v19, type metadata accessor for GeoLookupResultBusiness.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D88F0DD8(v18, v14, type metadata accessor for GeoLookupResultBusiness.Action);
    v35 = *v14;
    if (!swift_getEnumCaseMultiPayload())
    {
      v37 = *v19;
      sub_1D881F764(0, &qword_1EE0E36A0, 0x1E69E58C0);
      v36 = sub_1D8B16400();

      goto LABEL_27;
    }

LABEL_15:
    sub_1D87A14E4(v18, &unk_1ECA65010, &qword_1D8B27CA8);
LABEL_16:
    v36 = 0;
    return v36 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D88F0DD8(v18, v12, type metadata accessor for GeoLookupResultBusiness.Action);
    v21 = *(v12 + 1);
    v48 = *v12;
    v23 = *(v12 + 2);
    v22 = *(v12 + 3);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635F8, &qword_1D8B1F5D0) + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = v23;
      v47 = v22;
      v25 = *v19;
      v26 = v19[1];
      v27 = v19[3];
      v43 = v19[2];
      v44 = v25;
      v45 = v27;
      v28 = *(v50 + 32);
      v29 = &v12[v24];
      v30 = v49;
      v28(v49, v29, v4);
      v28(v7, v19 + v24, v4);
      if (v48 == v44 && v21 == v26)
      {

        v33 = v46;
        v34 = v47;
      }

      else
      {
        v32 = sub_1D8B16BA0();

        v33 = v46;
        v34 = v47;
        if ((v32 & 1) == 0)
        {

LABEL_24:
          v40 = *(v50 + 8);
          v40(v7, v4);
          v40(v30, v4);
          sub_1D88F3180(v18, type metadata accessor for GeoLookupResultBusiness.Action);
          goto LABEL_16;
        }
      }

      if (v33 == v43 && v34 == v45)
      {
      }

      else
      {
        v39 = sub_1D8B16BA0();

        if ((v39 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v36 = sub_1D8B12F90();
      v41 = *(v50 + 8);
      v41(v7, v4);
      v41(v30, v4);
LABEL_27:
      sub_1D88F3180(v18, type metadata accessor for GeoLookupResultBusiness.Action);
      return v36 & 1;
    }

    (*(v50 + 8))(&v12[v24], v4);

    goto LABEL_15;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_15;
  }

  sub_1D88F3180(v18, type metadata accessor for GeoLookupResultBusiness.Action);
  v36 = 1;
  return v36 & 1;
}

uint64_t _s22VisualIntelligenceCore23GeoLookupResultBusinessV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[5];
  v41 = a1[4];
  v48 = a1[6];
  v49 = a1[7];
  v50 = a1[8];
  v51 = a1[9];
  v47 = *(a1 + 80);
  v33 = a1[11];
  v37 = a1[13];
  v28 = a1[14];
  v35 = a1[15];
  v30 = a1[16];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[5];
  v39 = a1[12];
  v40 = a2[4];
  v42 = a2[6];
  v44 = a2[7];
  v45 = a2[8];
  v46 = a2[9];
  v43 = *(a2 + 80);
  v38 = a2[12];
  v36 = a2[13];
  v31 = a2[14];
  v32 = a2[11];
  v34 = a2[15];
  v29 = a2[16];
  sub_1D881F764(0, &qword_1ECA65008, 0x1E696F270);
  if ((sub_1D8B16400() & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1D881F764(0, &qword_1EE0E36A0, 0x1E69E58C0);
  if ((sub_1D8B16400() & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 != v5 || v3 != v6) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v4)
  {
    if (!v7 || (v41 != v40 || v4 != v7) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v7)
  {
    goto LABEL_21;
  }

  if (v47 == 255)
  {
    v10 = v48;
    v9 = v49;
    v11 = v50;
    v12 = v51;
    v22.n128_f64[0] = sub_1D88EFEF0(v48, v49, v50, v51, 255, v8);
    v13 = v43;
    v15 = v45;
    v14 = v46;
    v16 = v44;
    v17 = v42;
    if (v43 == 255)
    {
      sub_1D88EFEF0(v42, v44, v45, v46, 255, v22);
      sub_1D88F334C(v48, v49, v50, v51, 255);
      goto LABEL_24;
    }

    sub_1D88EFEF0(v42, v44, v45, v46, v43, v22);
LABEL_20:
    sub_1D88F334C(v10, v9, v11, v12, v47);
    sub_1D88F334C(v17, v16, v15, v14, v13);
    goto LABEL_21;
  }

  v10 = v48;
  v9 = v49;
  v57 = v48;
  v58 = v49;
  v11 = v50;
  v12 = v51;
  v59 = v50;
  v60 = v51;
  v61 = v47;
  v13 = v43;
  v15 = v45;
  v14 = v46;
  v16 = v44;
  v17 = v42;
  if (v43 == 255)
  {
    v23.n128_f64[0] = sub_1D88EFEF0(v48, v49, v50, v51, v47, v8);
    v24.n128_f64[0] = sub_1D88EFEF0(v42, v44, v45, v46, 255, v23);
    sub_1D88EFEF0(v48, v49, v50, v51, v47, v24);
    sub_1D88F0978(v48, v49, v50, v51, v47 & 1);
    goto LABEL_20;
  }

  v52 = v42;
  v53 = v44;
  v54 = v45;
  v55 = v46;
  v56 = v43 & 1;
  v18.n128_f64[0] = sub_1D88EFEF0(v48, v49, v50, v51, v47, v8);
  v19.n128_f64[0] = sub_1D88EFEF0(v42, v44, v45, v46, v43, v18);
  v20.n128_f64[0] = sub_1D88EFEF0(v48, v49, v50, v51, v47, v19);
  v21 = _s22VisualIntelligenceCore23GeoLookupResultBusinessV7RatingsO2eeoiySbAE_AEtFZ_0(&v57, &v52, v20);
  sub_1D88F0978(v52, v53, v54, v55, v56);
  sub_1D88F0978(v57, v58, v59, v60, v61);
  sub_1D88F334C(v48, v49, v50, v51, v47);
  if (!v21)
  {
    goto LABEL_21;
  }

LABEL_24:
  if (v39)
  {
    if (!v38)
    {
      goto LABEL_21;
    }

    if (v33 == v32 && v39 == v38)
    {
      if (v37 != v36)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }

    v27 = sub_1D8B16BA0();
    v25 = 0;
    if ((v27 & 1) == 0)
    {
      return v25 & 1;
    }
  }

  else
  {
    v25 = 0;
    if (v38)
    {
      return v25 & 1;
    }
  }

  if (v37 != v36)
  {
    return v25 & 1;
  }

LABEL_34:
  if (v35)
  {
    if (v34 && (v28 == v31 && v35 == v34 || (sub_1D8B16BA0() & 1) != 0))
    {
      goto LABEL_41;
    }
  }

  else if (!v34)
  {
LABEL_41:
    v25 = sub_1D88E770C(v30, v29, type metadata accessor for GeoLookupResultBusiness.Action, type metadata accessor for GeoLookupResultBusiness.Action, _s22VisualIntelligenceCore23GeoLookupResultBusinessV6ActionO2eeoiySbAE_AEtFZ_0, type metadata accessor for GeoLookupResultBusiness.Action);
    return v25 & 1;
  }

LABEL_21:
  v25 = 0;
  return v25 & 1;
}

unint64_t sub_1D88F08E0()
{
  result = qword_1ECA64C90;
  if (!qword_1ECA64C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C90);
  }

  return result;
}

uint64_t sub_1D88F0934(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D881F764(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D88F0978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1D88F0988()
{
  result = qword_1ECA64CB0;
  if (!qword_1ECA64CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64CB0);
  }

  return result;
}

unint64_t sub_1D88F09DC()
{
  result = qword_1ECA64CC8;
  if (!qword_1ECA64CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64CC8);
  }

  return result;
}

unint64_t sub_1D88F0A30()
{
  result = qword_1ECA64CE0;
  if (!qword_1ECA64CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64CE0);
  }

  return result;
}

unint64_t sub_1D88F0A84()
{
  result = qword_1ECA64CF0;
  if (!qword_1ECA64CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64CF0);
  }

  return result;
}

unint64_t sub_1D88F0AD8()
{
  result = qword_1ECA64D08;
  if (!qword_1ECA64D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64D08);
  }

  return result;
}

uint64_t sub_1D88F0B2C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA64CF8, &qword_1D8B26BB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D88F0BA4()
{
  result = qword_1ECA64D20;
  if (!qword_1ECA64D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64D20);
  }

  return result;
}

double sub_1D88F0BF8(uint64_t a1, uint64_t a2)
{

  return result;
}

double sub_1D88F0C30(uint64_t a1, uint64_t a2)
{

  return result;
}

uint64_t sub_1D88F0C68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D88F0CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D88EA9B8(a1, v4, v5, v6);
}

unint64_t sub_1D88F0D84()
{
  result = qword_1ECA64D48;
  if (!qword_1ECA64D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64D48);
  }

  return result;
}

uint64_t sub_1D88F0DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D88F0E40()
{
  result = qword_1EE0E3938;
  if (!qword_1EE0E3938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E3938);
  }

  return result;
}

unint64_t sub_1D88F0EAC()
{
  result = qword_1ECA64D90;
  if (!qword_1ECA64D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64D90);
  }

  return result;
}

unint64_t sub_1D88F0F00()
{
  result = qword_1ECA64DA8;
  if (!qword_1ECA64DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64DA8);
  }

  return result;
}

unint64_t sub_1D88F0F58()
{
  result = qword_1ECA64DB0;
  if (!qword_1ECA64DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64DB0);
  }

  return result;
}

unint64_t sub_1D88F0FF8()
{
  result = qword_1ECA64DC0;
  if (!qword_1ECA64DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64DC0);
  }

  return result;
}

unint64_t sub_1D88F1050()
{
  result = qword_1ECA64DC8;
  if (!qword_1ECA64DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64DC8);
  }

  return result;
}

unint64_t sub_1D88F10A8()
{
  result = qword_1ECA64DD0;
  if (!qword_1ECA64DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64DD0);
  }

  return result;
}

unint64_t sub_1D88F1100()
{
  result = qword_1ECA64DD8;
  if (!qword_1ECA64DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64DD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore23GeoLookupResultBusinessV7RatingsOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D88F11B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1D88F11FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D88F1280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1D88F12C8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1D88F132C(uint64_t a1)
{
  sub_1D881F764(319, &qword_1ECA64DF0, 0x1E69A2378);
  if (v1 <= 0x3F)
  {
    sub_1D88F13B0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D88F13B0(uint64_t a1)
{
  if (!qword_1ECA64DF8)
  {
    sub_1D8B13000();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECA64DF8);
    }
  }
}

uint64_t sub_1D88F1428(uint64_t a1)
{
  result = sub_1D8B151E0();
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

uint64_t dispatch thunk of GeoLookup.setTraits(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return v6(a1);
}

uint64_t dispatch thunk of GeoLookup.update(location:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D8864FBC;

  return v6(a1);
}

uint64_t dispatch thunk of GeoLookup.generateMatches(detectionType:textDetections:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 176) + **(*v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D87D34C4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of GeoLookup.lookup(results:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D88F38D8;

  return v6(a1);
}

uint64_t sub_1D88F19F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D88F1A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D88F1A88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D88F1AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D88F1B1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D88F1B64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D88F1BC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D88F1C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1D88F1C98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D88F1CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1D88F1D60(uint64_t a1)
{
  sub_1D88F1DD4();
  if (v1 <= 0x3F)
  {
    sub_1D88F1E1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D88F1DD4()
{
  if (!qword_1ECA64E28)
  {
    v0 = sub_1D8B13240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA64E28);
    }
  }
}

void sub_1D88F1E1C(uint64_t a1)
{
  if (!qword_1ECA64E30)
  {
    sub_1D8B13240();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECA64E30);
    }
  }
}

uint64_t getEnumTagSinglePayload for GeoLookup.GeoLookupResultDebugInfo.ScoreReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoLookup.GeoLookupResultDebugInfo.ScoreReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D88F1F38(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D88F1F50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1D88F1FAC()
{
  result = qword_1ECA64E40;
  if (!qword_1ECA64E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E40);
  }

  return result;
}

unint64_t sub_1D88F2004()
{
  result = qword_1ECA64E48;
  if (!qword_1ECA64E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E48);
  }

  return result;
}

unint64_t sub_1D88F205C()
{
  result = qword_1ECA64E50;
  if (!qword_1ECA64E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E50);
  }

  return result;
}

unint64_t sub_1D88F20B4()
{
  result = qword_1ECA64E58;
  if (!qword_1ECA64E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E58);
  }

  return result;
}

unint64_t sub_1D88F210C()
{
  result = qword_1ECA64E60;
  if (!qword_1ECA64E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E60);
  }

  return result;
}

unint64_t sub_1D88F2164()
{
  result = qword_1ECA64E68;
  if (!qword_1ECA64E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E68);
  }

  return result;
}

unint64_t sub_1D88F21BC()
{
  result = qword_1ECA64E70;
  if (!qword_1ECA64E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E70);
  }

  return result;
}

unint64_t sub_1D88F2214()
{
  result = qword_1ECA64E78;
  if (!qword_1ECA64E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E78);
  }

  return result;
}

unint64_t sub_1D88F226C()
{
  result = qword_1ECA64E80;
  if (!qword_1ECA64E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E80);
  }

  return result;
}

unint64_t sub_1D88F22C4()
{
  result = qword_1ECA64E88;
  if (!qword_1ECA64E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E88);
  }

  return result;
}

unint64_t sub_1D88F231C()
{
  result = qword_1ECA64E90;
  if (!qword_1ECA64E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E90);
  }

  return result;
}

unint64_t sub_1D88F2374()
{
  result = qword_1ECA64E98;
  if (!qword_1ECA64E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64E98);
  }

  return result;
}

unint64_t sub_1D88F23CC()
{
  result = qword_1ECA64EA0;
  if (!qword_1ECA64EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64EA0);
  }

  return result;
}

unint64_t sub_1D88F2424()
{
  result = qword_1ECA64EA8;
  if (!qword_1ECA64EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64EA8);
  }

  return result;
}

unint64_t sub_1D88F247C()
{
  result = qword_1ECA64EB0;
  if (!qword_1ECA64EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64EB0);
  }

  return result;
}

unint64_t sub_1D88F24D4()
{
  result = qword_1ECA64EB8;
  if (!qword_1ECA64EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64EB8);
  }

  return result;
}

unint64_t sub_1D88F2528(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8B16930();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D88F2574(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8B16930();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D88F25C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564497370616DLL && a2 == 0xEE00726569666974;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E496775626564 && a2 == 0xE90000000000006FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D88F2730()
{
  result = qword_1ECA64EE8;
  if (!qword_1ECA64EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64EE8);
  }

  return result;
}

unint64_t sub_1D88F2784()
{
  result = qword_1ECA64EF0;
  if (!qword_1ECA64EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64EF0);
  }

  return result;
}

unint64_t sub_1D88F27D8()
{
  result = qword_1ECA64EF8;
  if (!qword_1ECA64EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64EF8);
  }

  return result;
}

unint64_t sub_1D88F282C()
{
  result = qword_1ECA64F00;
  if (!qword_1ECA64F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64F00);
  }

  return result;
}

unint64_t sub_1D88F2880()
{
  result = qword_1ECA64F08;
  if (!qword_1ECA64F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64F08);
  }

  return result;
}

uint64_t sub_1D88F28D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6374614D74786574 && a2 == 0xE900000000000068;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697461526F6ELL && a2 == 0xE900000000000073 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D676E6964616568 && a2 == 0xEC00000068637461 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D88F2A48(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64F10, &qword_1D8B27C40);
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v34 - v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64F18, &qword_1D8B27C48);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v34 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64F20, &qword_1D8B27C50);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64F28, &qword_1D8B27C58);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64F30, &unk_1D8B27C60);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = a1[3];
  v46 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D88F2730();
  v15 = v45;
  sub_1D8B16DB0();
  if (!v15)
  {
    v16 = v8;
    v35 = v6;
    v18 = v43;
    v17 = v44;
    v45 = v10;
    v19 = sub_1D8B16A20();
    v20 = (2 * *(v19 + 16)) | 1;
    v48 = v19;
    v49 = v19 + 32;
    v50 = 0;
    v51 = v20;
    v21 = sub_1D881F7BC();
    v22 = v9;
    if (v21 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D8B16770();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      v14 = v12;
      *v28 = &type metadata for GeoLookup.GeoLookupResultDebugInfo.ScoreReason;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v45 + 8))(v12, v22);
      swift_unknownObjectRelease();
    }

    else if (v21 > 1u)
    {
      v30 = v45;
      if (v21 == 2)
      {
        v47 = 2;
        sub_1D88F27D8();
        sub_1D8B16950();
        (*(v38 + 8))(v18, v41);
        (*(v30 + 8))(v12, v22);
        swift_unknownObjectRelease();
        v14 = 1;
      }

      else
      {
        v47 = 3;
        sub_1D88F2784();
        sub_1D8B16950();
        v31 = v39;
        sub_1D8B169E0();
        v33 = v32;
        (*(v42 + 8))(v17, v31);
        (*(v30 + 8))(v12, v22);
        swift_unknownObjectRelease();
        v14 = v33;
      }
    }

    else if (v21)
    {
      v47 = 1;
      sub_1D88F282C();
      sub_1D8B16950();
      (*(v36 + 8))(v5, v40);
      (*(v45 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = 0;
    }

    else
    {
      v47 = 0;
      sub_1D88F2880();
      sub_1D8B16950();
      v23 = v35;
      sub_1D8B169E0();
      v25 = v24;
      (*(v37 + 8))(v16, v23);
      (*(v45 + 8))(v12, v22);
      swift_unknownObjectRelease();
      v14 = v25;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v46);
  return v14;
}

uint64_t sub_1D88F3180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D88F31E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D88F3248(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D88F3264(unint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FE0, &unk_1D8B27C88);

  return sub_1D88ECE14(a1, a2, v4);
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D88F3334(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1D88F334C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1D88F0978(a1, a2, a3, a4, a5 & 1);
  }

  return result;
}

id sub_1D88F3364(id result, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 2)
  {
    if (a4)
    {
      return result;
    }

    v5 = result;
    result = a2;
  }

  return result;
}

void sub_1D88F33B4(void *a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 2)
  {
    if (a4)
    {
      return;
    }

    a1 = a2;
  }
}

unint64_t sub_1D88F3458()
{
  result = qword_1ECA65040;
  if (!qword_1ECA65040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65040);
  }

  return result;
}

unint64_t sub_1D88F34B0()
{
  result = qword_1ECA65048;
  if (!qword_1ECA65048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65048);
  }

  return result;
}

unint64_t sub_1D88F3508()
{
  result = qword_1ECA65050;
  if (!qword_1ECA65050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65050);
  }

  return result;
}

unint64_t sub_1D88F3560()
{
  result = qword_1ECA65058;
  if (!qword_1ECA65058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65058);
  }

  return result;
}

unint64_t sub_1D88F35B8()
{
  result = qword_1ECA65060;
  if (!qword_1ECA65060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65060);
  }

  return result;
}

unint64_t sub_1D88F3610()
{
  result = qword_1ECA65068;
  if (!qword_1ECA65068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65068);
  }

  return result;
}

unint64_t sub_1D88F3668()
{
  result = qword_1ECA65070;
  if (!qword_1ECA65070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65070);
  }

  return result;
}

unint64_t sub_1D88F36C0()
{
  result = qword_1ECA65078;
  if (!qword_1ECA65078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65078);
  }

  return result;
}

unint64_t sub_1D88F3718()
{
  result = qword_1ECA65080;
  if (!qword_1ECA65080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65080);
  }

  return result;
}

unint64_t sub_1D88F3770()
{
  result = qword_1ECA65088;
  if (!qword_1ECA65088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65088);
  }

  return result;
}

unint64_t sub_1D88F37C8()
{
  result = qword_1ECA65090;
  if (!qword_1ECA65090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65090);
  }

  return result;
}

unint64_t sub_1D88F3820()
{
  result = qword_1ECA65098;
  if (!qword_1ECA65098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65098);
  }

  return result;
}

unint64_t sub_1D88F3878()
{
  result = qword_1ECA650A0;
  if (!qword_1ECA650A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA650A0);
  }

  return result;
}

uint64_t sub_1D88F38F4(int64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_1D87C7D60(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = v8 - *(v3 + 2);
  result = sub_1D881F7B0();
  if (result < v2)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v15 = *(v3 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_20:
      while (1)
      {
        v19 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_44;
        }

        if (v19 >= ((v13 + 64) >> 6))
        {
          goto LABEL_14;
        }

        v18 = *(v12 + 8 * v19);
        ++v14;
        if (v18)
        {
          goto LABEL_23;
        }
      }
    }

    *(v3 + 2) = v17;
  }

  if (result != v10)
  {
    result = v38;
LABEL_14:
    result = sub_1D87977A0(result);
    *v1 = v3;
    return result;
  }

LABEL_17:
  v6 = *(v3 + 2);
  result = v38;
  v12 = v39;
  v13 = v40;
  v14 = v41;
  v18 = v42;
  if (!v42)
  {
    goto LABEL_20;
  }

  v19 = v41;
LABEL_23:
  v20 = (v18 - 1) & v18;
  v21 = *(*(result + 48) + (__clz(__rbit64(v18)) | (v19 << 6)));
  if (v21 == 21)
  {
    goto LABEL_14;
  }

  v22 = (v13 + 64) >> 6;
  v23 = v19;
  while (1)
  {
    v24 = *(v3 + 3);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v6 + 1)
    {
      v36 = v21;
      v37 = result;
      v35 = v12;
      v30 = v13;
      v31 = v23;
      v32 = v3;
      v33 = v20;
      v34 = sub_1D87C7D60((v24 > 1), v6 + 1, 1, v32);
      v21 = v36;
      v20 = v33;
      v23 = v31;
      v13 = v30;
      v12 = v35;
      v3 = v34;
      result = v37;
      v25 = *(v3 + 3) >> 1;
    }

    if (v6 < v25)
    {
      break;
    }

LABEL_25:
    *(v3 + 2) = v6;
    if (v21 == 21)
    {
      goto LABEL_14;
    }
  }

  while (1)
  {
    v3[v6++ + 32] = v21;
    if (!v20)
    {
      break;
    }

    v26 = v23;
LABEL_36:
    v28 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v21 = *(*(result + 48) + (v28 | (v26 << 6)));
    if (v21 == 21 || v6 >= v25)
    {
      goto LABEL_25;
    }
  }

  v27 = v23;
  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      *(v3 + 2) = v6;
      goto LABEL_14;
    }

    v20 = *(v12 + 8 * v26);
    ++v27;
    if (v20)
    {
      v23 = v26;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1D88F3C34(void *a1)
{
  v66 = type metadata accessor for CVBundle(0);
  v4 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v51 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = a1[2];
  v16 = *v2;
  v17 = *(*v2 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1D87C7E90(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1D881702C(&v67, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, result);
    v27 = v25 + result;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v16[2] = v27;
  }

  if (result != v23)
  {
    result = sub_1D87977A0(v67);
LABEL_14:
    *v2 = v16;
    return result;
  }

LABEL_17:
  v62 = v16[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_1D8901B88(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v14, type metadata accessor for CVBundle);
    v33 = v66;
    v57 = *(v1 + 56);
    v57(v14, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_1D87A0E38(v14, v63, &qword_1ECA67980, &qword_1D8B231C0);
      v35 = *(v1 + 48);
      v1 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_1D87A14E4(v34, &qword_1ECA67980, &qword_1D8B231C0);
        v39 = v16[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v16 = sub_1D87C7E90((v39 > 1), v36 + 1, 1, v16);
          v40 = v16[3] >> 1;
        }

        v41 = v65;
        sub_1D87A0E38(v14, v65, &qword_1ECA67980, &qword_1D8B231C0);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_1D87A14E4(v43, &qword_1ECA67980, &qword_1D8B231C0);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v16[2] = v37;
        v34 = v63;
        sub_1D87A0E38(v14, v63, &qword_1ECA67980, &qword_1D8B231C0);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v16 + v18;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_1D8901C70(v43, v64, type metadata accessor for CVBundle);
        if (v62 == v59)
        {
          sub_1D8901BF0(v47, type metadata accessor for CVBundle);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_1D87A14E4(v14, &qword_1ECA67980, &qword_1D8B231C0);
        sub_1D8901C70(v47, &v58[v4 * v17], type metadata accessor for CVBundle);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_1D8901B88(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v14, type metadata accessor for CVBundle);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v14, v45, 1, v66);
        v43 = v65;
        sub_1D87A0E38(v14, v65, &qword_1ECA67980, &qword_1D8B231C0);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v1 + 56);
      v57(v14, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_1D87A14E4(v14, &qword_1ECA67980, &qword_1D8B231C0);
    sub_1D87977A0(v55);
    result = sub_1D87A14E4(v34, &qword_1ECA67980, &qword_1D8B231C0);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void sub_1D88F42F8(uint64_t a1)
{
  v38 = type metadata accessor for CVTrackSnapshot(0);
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v37 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = *v1;
  v15 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v17 = v14[3] >> 1, v17 < v15))
  {
    v14 = sub_1D87C7834(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v17 = v14[3] >> 1;
  }

  v18 = v14[2];
  v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v20 = *(v3 + 72);
  v21 = v17 - v18;
  v22 = sub_1D881706C(&v39, v14 + v19 + v20 * v18, v17 - v18, a1);
  if (v22 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v22)
  {
    v23 = v14[2];
    v24 = __OFADD__(v23, v22);
    v25 = v23 + v22;
    if (v24)
    {
      __break(1u);
      goto LABEL_16;
    }

    v14[2] = v25;
  }

  if (v22 == v21)
  {
LABEL_12:
    v33 = v1;
    a1 = v14[2];
    sub_1D8900F60(v13);
    v26 = v37;
    sub_1D87A0E38(v13, v37, &qword_1ECA63E20, &qword_1D8B22E50);
    v34 = *(v3 + 48);
    if (v34(v26, 1, v38) == 1)
    {
      v1 = v33;
      v27 = v37;
LABEL_14:
      sub_1D87A14E4(v13, &qword_1ECA63E20, &qword_1D8B22E50);

      sub_1D87A14E4(v27, &qword_1ECA63E20, &qword_1D8B22E50);
      goto LABEL_10;
    }

LABEL_16:
    v1 = v33;
    v27 = v37;
    do
    {
      sub_1D87A14E4(v27, &qword_1ECA63E20, &qword_1D8B22E50);
      v28 = v14[3];
      v29 = v28 >> 1;
      if ((v28 >> 1) < a1 + 1)
      {
        v14 = sub_1D87C7834((v28 > 1), a1 + 1, 1, v14);
        v29 = v14[3] >> 1;
      }

      sub_1D87A0E38(v13, v9, &qword_1ECA63E20, &qword_1D8B22E50);
      if (v34(v9, 1, v38) == 1)
      {
LABEL_17:
        sub_1D87A14E4(v9, &qword_1ECA63E20, &qword_1D8B22E50);
        v35 = a1;
      }

      else
      {
        if (a1 <= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = a1;
        }

        v35 = v30;
        v36 = v14 + v19 + v20 * a1;
        while (1)
        {
          sub_1D8901C70(v9, v5, type metadata accessor for CVTrackSnapshot);
          if (v35 == a1)
          {
            break;
          }

          sub_1D87A14E4(v13, &qword_1ECA63E20, &qword_1D8B22E50);
          v31 = v36;
          sub_1D8901C70(v5, v36, type metadata accessor for CVTrackSnapshot);
          ++a1;
          sub_1D8900F60(v13);
          v1 = v33;
          sub_1D87A0E38(v13, v9, &qword_1ECA63E20, &qword_1D8B22E50);
          v32 = v34(v9, 1, v38);
          v36 = v31 + v20;
          if (v32 == 1)
          {
            goto LABEL_17;
          }
        }

        sub_1D8901BF0(v5, type metadata accessor for CVTrackSnapshot);
        a1 = v35;
      }

      v14[2] = v35;
      v27 = v37;
      sub_1D87A0E38(v13, v37, &qword_1ECA63E20, &qword_1D8B22E50);
    }

    while (v34(v27, 1, v38) != 1);
    goto LABEL_14;
  }

LABEL_10:
  *v1 = v14;
}

void sub_1D88F4864(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D87C8E38(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D88F495C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D87C9058(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1D88F4A54(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D87C8284(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1D88178CC(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1D87C8284((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1D87977A0(result);
  *v1 = v4;
  return result;
}

uint64_t sub_1D88F4D10(void *a1)
{
  v66 = type metadata accessor for CVTrackSnapshot(0);
  v4 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v51 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = a1[2];
  v16 = *v2;
  v17 = *(*v2 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1D87C7834(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1D8817E60(&v67, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, result);
    v27 = v25 + result;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v16[2] = v27;
  }

  if (result != v23)
  {
    result = sub_1D87977A0(v67);
LABEL_14:
    *v2 = v16;
    return result;
  }

LABEL_17:
  v62 = v16[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_1D8901B88(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v14, type metadata accessor for CVTrackSnapshot);
    v33 = v66;
    v57 = *(v1 + 56);
    v57(v14, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_1D87A0E38(v14, v63, &qword_1ECA63E20, &qword_1D8B22E50);
      v35 = *(v1 + 48);
      v1 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_1D87A14E4(v34, &qword_1ECA63E20, &qword_1D8B22E50);
        v39 = v16[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v16 = sub_1D87C7834((v39 > 1), v36 + 1, 1, v16);
          v40 = v16[3] >> 1;
        }

        v41 = v65;
        sub_1D87A0E38(v14, v65, &qword_1ECA63E20, &qword_1D8B22E50);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_1D87A14E4(v43, &qword_1ECA63E20, &qword_1D8B22E50);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v16[2] = v37;
        v34 = v63;
        sub_1D87A0E38(v14, v63, &qword_1ECA63E20, &qword_1D8B22E50);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v16 + v18;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_1D8901C70(v43, v64, type metadata accessor for CVTrackSnapshot);
        if (v62 == v59)
        {
          sub_1D8901BF0(v47, type metadata accessor for CVTrackSnapshot);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_1D87A14E4(v14, &qword_1ECA63E20, &qword_1D8B22E50);
        sub_1D8901C70(v47, &v58[v4 * v17], type metadata accessor for CVTrackSnapshot);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_1D8901B88(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v14, type metadata accessor for CVTrackSnapshot);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v14, v45, 1, v66);
        v43 = v65;
        sub_1D87A0E38(v14, v65, &qword_1ECA63E20, &qword_1D8B22E50);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v1 + 56);
      v57(v14, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_1D87A14E4(v14, &qword_1ECA63E20, &qword_1D8B22E50);
    sub_1D87977A0(v55);
    result = sub_1D87A14E4(v34, &qword_1ECA63E20, &qword_1D8B22E50);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88F53D4(uint64_t a1)
{
  v67 = type metadata accessor for CVTrackSnapshot(0);
  v3 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v64 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650E0, &qword_1D8B28250);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E28, &qword_1D8B22E58);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v56 - v15);
  v69 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = v17[3] >> 1, v20 <= v18))
  {
    v17 = sub_1D87C7834(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v17);
    v20 = v17[3] >> 1;
  }

  v21 = v17[2];
  v22 = v3;
  v23 = *(v3 + 72);
  v24 = v20 - v21;
  v63 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v66 = v23;
  v25 = v17 + v63 + v23 * v21;
  sub_1D87A0E38(a1, v13, &qword_1ECA650E0, &qword_1D8B28250);
  v26 = sub_1D8817EA0(v16, v25, v24);
  sub_1D87A14E4(a1, &qword_1ECA650E0, &qword_1D8B28250);
  if (v26 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v27 = v17[2];
  v25 = v27 + v26;
  if (__OFADD__(v27, v26))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17[2] = v25;
  if (v26 != v24)
  {
    v28 = &qword_1ECA63E28;
    v29 = &qword_1D8B22E58;
    v30 = v16;
    goto LABEL_8;
  }

LABEL_11:
  v32 = v68;
  sub_1D8901800(v16, v68);
  v33 = v22;
  v34 = v22 + 56;
  v35 = *(v22 + 56);
  v36 = v67;
  v57 = v35;
  v58 = v34;
  v35(v16, 1, 1, v67);
  v37 = v32;
  v38 = v64;
  sub_1D87A0E38(v37, v64, &qword_1ECA63E20, &qword_1D8B22E50);
  v40 = *(v33 + 48);
  v39 = v33 + 48;
  v61 = v40;
  if (v40(v38, 1, v36) != 1)
  {
    v41 = &qword_1D8B22E50;
    v42 = v62;
    v60 = v39;
    do
    {
      sub_1D87A14E4(v38, &qword_1ECA63E20, v41);
      v43 = v17[3];
      v44 = v43 >> 1;
      if ((v43 >> 1) < v25 + 1)
      {
        v17 = sub_1D87C7834((v43 > 1), v25 + 1, 1, v17);
        v44 = v17[3] >> 1;
      }

      v45 = v65;
      sub_1D87A0E38(v68, v65, &qword_1ECA63E20, v41);
      if (v61(v45, 1, v67) == 1)
      {
        v46 = v65;
LABEL_26:
        sub_1D87A14E4(v46, &qword_1ECA63E20, v41);
        v47 = v25;
      }

      else
      {
        if (v25 <= v44)
        {
          v47 = v44;
        }

        else
        {
          v47 = v25;
        }

        v46 = v65;
        v48 = v17 + v63 + v66 * v25;
        v59 = v47;
        while (1)
        {
          sub_1D8901C70(v46, v42, type metadata accessor for CVTrackSnapshot);
          if (v47 == v25)
          {
            break;
          }

          v49 = v41;
          v50 = v68;
          sub_1D87A14E4(v68, &qword_1ECA63E20, v49);
          sub_1D8901C70(v42, v48, type metadata accessor for CVTrackSnapshot);
          ++v25;
          sub_1D8901800(v16, v50);
          v51 = v42;
          v52 = v67;
          v57(v16, 1, 1, v67);
          v53 = v50;
          v41 = v49;
          v47 = v59;
          sub_1D87A0E38(v53, v46, &qword_1ECA63E20, v49);
          v54 = v52;
          v42 = v51;
          v55 = v61(v46, 1, v54);
          v48 += v66;
          if (v55 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_1D8901BF0(v42, type metadata accessor for CVTrackSnapshot);
        v25 = v47;
      }

      v17[2] = v47;
      v38 = v64;
      sub_1D87A0E38(v68, v64, &qword_1ECA63E20, v41);
    }

    while (v61(v38, 1, v67) != 1);
  }

  sub_1D87A14E4(v68, &qword_1ECA63E20, &qword_1D8B22E50);
  sub_1D87A14E4(v16, &qword_1ECA63E28, &qword_1D8B22E58);
  v30 = v38;
  v28 = &qword_1ECA63E20;
  v29 = &qword_1D8B22E50;
LABEL_8:
  result = sub_1D87A14E4(v30, v28, v29);
  *v69 = v17;
  return result;
}

void sub_1D88F5A08(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1D88F5B4C(void *a1)
{
  v66 = type metadata accessor for DetectionRequest.Annotation(0);
  v4 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650C8, &qword_1D8B28238);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v51 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = a1[2];
  v16 = *v2;
  v17 = *(*v2 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1D87C9BD8(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1D88182C8(&v67, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, result);
    v27 = v25 + result;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v16[2] = v27;
  }

  if (result != v23)
  {
    result = sub_1D87977A0(v67);
LABEL_14:
    *v2 = v16;
    return result;
  }

LABEL_17:
  v62 = v16[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_1D8901B88(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v14, type metadata accessor for DetectionRequest.Annotation);
    v33 = v66;
    v57 = *(v1 + 56);
    v57(v14, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_1D87A0E38(v14, v63, &qword_1ECA650C8, &qword_1D8B28238);
      v35 = *(v1 + 48);
      v1 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_1D87A14E4(v34, &qword_1ECA650C8, &qword_1D8B28238);
        v39 = v16[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v16 = sub_1D87C9BD8((v39 > 1), v36 + 1, 1, v16);
          v40 = v16[3] >> 1;
        }

        v41 = v65;
        sub_1D87A0E38(v14, v65, &qword_1ECA650C8, &qword_1D8B28238);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_1D87A14E4(v43, &qword_1ECA650C8, &qword_1D8B28238);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v16[2] = v37;
        v34 = v63;
        sub_1D87A0E38(v14, v63, &qword_1ECA650C8, &qword_1D8B28238);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v16 + v18;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_1D8901C70(v43, v64, type metadata accessor for DetectionRequest.Annotation);
        if (v62 == v59)
        {
          sub_1D8901BF0(v47, type metadata accessor for DetectionRequest.Annotation);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_1D87A14E4(v14, &qword_1ECA650C8, &qword_1D8B28238);
        sub_1D8901C70(v47, &v58[v4 * v17], type metadata accessor for DetectionRequest.Annotation);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_1D8901B88(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v14, type metadata accessor for DetectionRequest.Annotation);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v14, v45, 1, v66);
        v43 = v65;
        sub_1D87A0E38(v14, v65, &qword_1ECA650C8, &qword_1D8B28238);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v1 + 56);
      v57(v14, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_1D87A14E4(v14, &qword_1ECA650C8, &qword_1D8B28238);
    sub_1D87977A0(v55);
    result = sub_1D87A14E4(v34, &qword_1ECA650C8, &qword_1D8B28238);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}