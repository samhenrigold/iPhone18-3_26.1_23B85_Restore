uint64_t sub_24A7B64A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v69 - v5;
  v7 = sub_24A6BBA94(&qword_27EF5ED48, &unk_24A83BA70);
  MEMORY[0x28223BE20](v7);
  v9 = &v69 - v8;
  v82 = type metadata accessor for FMIPDeviceConnectedState(0);
  v91 = *(v82 - 8);
  v10 = MEMORY[0x28223BE20](v82);
  v92 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v80 = &v69 - v14;
  v15 = sub_24A82CAA4();
  v83 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v84 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v87 = &v69 - v18;
  v19 = sub_24A6BBA94(&qword_27EF5E208, &qword_24A837810);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v79 = a2;
  v81 = &v69 - v24;
  v71 = v6;
  v25 = 0;
  v74 = a1;
  v77 = v7;
  v26 = *(a1 + 64);
  v70 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v72 = v83 + 16;
  v93 = (v83 + 32);
  v86 = (v83 + 8);
  v75 = v30;
  v76 = (v83 + 48);
  v78 = v9;
  v31 = v85;
  v73 = v15;
  v89 = v22;
  while (1)
  {
    if (!v29)
    {
      if (v30 <= v25 + 1)
      {
        v37 = v25 + 1;
      }

      else
      {
        v37 = v30;
      }

      v38 = v37 - 1;
      v39 = v81;
      while (1)
      {
        v40 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v40 >= v30)
        {
          v67 = sub_24A6BBA94(&qword_27EF5E200, &qword_24A83BA80);
          (*(*(v67 - 8) + 56))(v22, 1, 1, v67);
          v90 = 0;
          v25 = v38;
          goto LABEL_18;
        }

        v41 = *(v70 + 8 * v40);
        ++v25;
        if (v41)
        {
          v35 = v31;
          v90 = (v41 - 1) & v41;
          v36 = __clz(__rbit64(v41)) | (v40 << 6);
          v25 = v40;
          goto LABEL_17;
        }
      }

      __break(1u);
      return result;
    }

    v35 = v31;
    v90 = (v29 - 1) & v29;
    v36 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_17:
    v15 = v73;
    v42 = v74;
    v43 = v83;
    (*(v83 + 16))(v87, *(v74 + 48) + *(v83 + 72) * v36, v73);
    v44 = v80;
    sub_24A7B85AC(*(v42 + 56) + *(v91 + 72) * v36, v80, type metadata accessor for FMIPDeviceConnectedState);
    v45 = sub_24A6BBA94(&qword_27EF5E200, &qword_24A83BA80);
    v46 = *(v45 + 48);
    v22 = v89;
    (*(v43 + 32))();
    sub_24A7B8614(v44, &v22[v46], type metadata accessor for FMIPDeviceConnectedState);
    (*(*(v45 - 8) + 56))(v22, 0, 1, v45);
    v39 = v81;
    v31 = v35;
LABEL_18:
    sub_24A67E8FC(v22, v39, &qword_27EF5E208, &qword_24A837810);
    v47 = sub_24A6BBA94(&qword_27EF5E200, &qword_24A83BA80);
    v48 = (*(*(v47 - 8) + 48))(v39, 1, v47);
    v88 = v48 == 1;
    if (v48 == 1)
    {
      return v88;
    }

    v49 = *(v47 + 48);
    v50 = *v93;
    v51 = v84;
    (*v93)(v84, v39, v15);
    sub_24A7B8614(v39 + v49, v31, type metadata accessor for FMIPDeviceConnectedState);
    v52 = v79;
    v53 = sub_24A77EDF8(v51);
    v54 = v31;
    v56 = v55;
    v57 = *v86;
    (*v86)(v51, v15);
    if ((v56 & 1) == 0)
    {
      break;
    }

    v58 = *(v52 + 56) + *(v91 + 72) * v53;
    v59 = v92;
    sub_24A7B85AC(v58, v92, type metadata accessor for FMIPDeviceConnectedState);
    v60 = *(v77 + 48);
    v61 = v59;
    v62 = v78;
    sub_24A67E964(v61, v78, &qword_27EF5D020, &qword_24A830E40);
    sub_24A67E964(v54, v62 + v60, &qword_27EF5D020, &qword_24A830E40);
    v63 = *v76;
    if ((*v76)(v62, 1, v15) == 1)
    {
      if (v63(v62 + v60, 1, v15) != 1)
      {
        sub_24A7B867C(v92, type metadata accessor for FMIPDeviceConnectedState);
        sub_24A7B867C(v85, type metadata accessor for FMIPDeviceConnectedState);
        goto LABEL_31;
      }

      sub_24A67F378(v62, &qword_27EF5D020, &qword_24A830E40);
      v31 = v85;
    }

    else
    {
      v64 = v71;
      sub_24A67E964(v62, v71, &qword_27EF5D020, &qword_24A830E40);
      if (v63(v62 + v60, 1, v15) == 1)
      {
        sub_24A7B867C(v92, type metadata accessor for FMIPDeviceConnectedState);
        sub_24A7B867C(v85, type metadata accessor for FMIPDeviceConnectedState);
        v57(v64, v15);
LABEL_31:
        sub_24A67F378(v62, &qword_27EF5ED48, &unk_24A83BA70);
        return 0;
      }

      v65 = v87;
      v50(v87, v62 + v60, v15);
      sub_24A7B8564(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v66 = sub_24A82CF84();
      v57(v65, v15);
      v57(v64, v15);
      sub_24A67F378(v62, &qword_27EF5D020, &qword_24A830E40);
      v31 = v85;
      if ((v66 & 1) == 0)
      {
        sub_24A7B867C(v92, type metadata accessor for FMIPDeviceConnectedState);
        v68 = v31;
        goto LABEL_32;
      }
    }

    v32 = v82;
    v33 = *(v92 + *(v82 + 20));
    sub_24A7B867C(v92, type metadata accessor for FMIPDeviceConnectedState);
    v34 = *(v31 + *(v32 + 20));
    result = sub_24A7B867C(v31, type metadata accessor for FMIPDeviceConnectedState);
    v30 = v75;
    v22 = v89;
    v29 = v90;
    if (v33 != v34)
    {
      return v88;
    }
  }

  v68 = v54;
LABEL_32:
  sub_24A7B867C(v68, type metadata accessor for FMIPDeviceConnectedState);
  return 0;
}

uint64_t sub_24A7B6DF0(uint64_t a1, uint64_t a2)
{
  v56 = sub_24A82CAA4();
  v51 = *(v56 - 8);
  v4 = MEMORY[0x28223BE20](v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = v46 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5ED18, &qword_24A83BA38);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = v46 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v11;
  v13 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46[0] = v15;
  v46[1] = v51 + 16;
  v53 = v46 - v10;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v19)
  {
    v55 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
    v26 = v47;
    v27 = v50;
    v28 = v51;
    v29 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v21, v56);
    v30 = *(*(v26 + 56) + v21);
    v31 = sub_24A6BBA94(&qword_27EF5ED20, &qword_24A83BA40);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v34 = v49;
    v33(v49, v27, v29);
    *(v34 + v32) = v30;
    (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
    v12 = v53;
LABEL_17:
    sub_24A67E8FC(v34, v12, &qword_27EF5ED18, &qword_24A83BA38);
    v35 = sub_24A6BBA94(&qword_27EF5ED20, &qword_24A83BA40);
    v36 = (*(*(v35 - 8) + 48))(v12, 1, v35);
    v37 = v36 == 1;
    if (v36 != 1)
    {
      v38 = *(v35 + 48);
      v39 = v52;
      v40 = v56;
      (*v54)(v52, v12, v56);
      v41 = v12[v38];
      v42 = sub_24A77EDF8(v39);
      LOBYTE(v38) = v43;
      result = (*v48)(v39, v40);
      if (v38)
      {
        v44 = v41 == *(*(a2 + 56) + v42);
        v12 = v53;
        v19 = v55;
        if (v44)
        {
          continue;
        }
      }
    }

    return v37;
  }

  if (v20 <= v13 + 1)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v45 = sub_24A6BBA94(&qword_27EF5ED20, &qword_24A83BA40);
      v34 = v49;
      (*(*(v45 - 8) + 56))(v49, 1, 1, v45);
      v55 = 0;
      v13 = v23;
      goto LABEL_17;
    }

    v25 = *(v46[0] + 8 * v24);
    ++v13;
    if (v25)
    {
      v55 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B7274(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v73 = *(v70 - 8);
  v4 = MEMORY[0x28223BE20](v70);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v57 - v8;
  MEMORY[0x28223BE20](v7);
  v68 = &v57 - v10;
  v74 = sub_24A82CAA4();
  v11 = *(v74 - 8);
  v12 = MEMORY[0x28223BE20](v74);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = &v57 - v15;
  v16 = sub_24A6BBA94(&qword_27EF5ED60, &qword_24A83BA98);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v72 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(v72 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v66 = &v57 - v21;
  v22 = 0;
  v23 = *(v72 + 64);
  v57 = v72 + 64;
  v24 = 1 << *(v72 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v59 = v11 + 16;
  v60 = v19;
  v71 = (v11 + 32);
  v62 = v14;
  v63 = v11;
  v64 = v6;
  v65 = (v11 + 8);
  v58 = v27;
  v61 = a2;
  while (v26)
  {
    v28 = v9;
    v69 = (v26 - 1) & v26;
    v29 = __clz(__rbit64(v26)) | (v22 << 6);
LABEL_16:
    v35 = v72;
    v36 = v63;
    v37 = v67;
    v38 = v74;
    (*(v63 + 16))(v67, *(v72 + 48) + *(v63 + 72) * v29, v74);
    v39 = v68;
    sub_24A7B85AC(*(v35 + 56) + *(v73 + 72) * v29, v68, type metadata accessor for FMIPDeviceLostModeMetadata);
    v40 = sub_24A6BBA94(&qword_27EF5ED68, qword_24A83BAA0);
    v41 = *(v40 + 48);
    v42 = *(v36 + 32);
    v43 = v60;
    v42(v60, v37, v38);
    v44 = v39;
    v19 = v43;
    sub_24A7B8614(v44, &v43[v41], type metadata accessor for FMIPDeviceLostModeMetadata);
    (*(*(v40 - 8) + 56))(v43, 0, 1, v40);
    v9 = v28;
    a2 = v61;
    v14 = v62;
    v32 = v66;
LABEL_17:
    sub_24A67E8FC(v19, v32, &qword_27EF5ED60, &qword_24A83BA98);
    v45 = sub_24A6BBA94(&qword_27EF5ED68, qword_24A83BAA0);
    v46 = (*(*(v45 - 8) + 48))(v32, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v48 = *(v45 + 48);
    v49 = v74;
    (*v71)(v14, v32, v74);
    sub_24A7B8614(v32 + v48, v9, type metadata accessor for FMIPDeviceLostModeMetadata);
    v50 = sub_24A77EDF8(v14);
    v52 = v51;
    (*v65)(v14, v49);
    if ((v52 & 1) == 0)
    {
      goto LABEL_38;
    }

    v53 = v64;
    sub_24A7B85AC(*(a2 + 56) + *(v73 + 72) * v50, v64, type metadata accessor for FMIPDeviceLostModeMetadata);
    if ((sub_24A82C9E4() & 1) == 0 || qword_24A83BD70[v53[56]] != qword_24A83BD70[v9[56]] || (*(v53 + 5) != *(v9 + 5) || *(v53 + 6) != *(v9 + 6)) && (sub_24A82DC04() & 1) == 0 || (*(v53 + 1) != *(v9 + 1) || *(v53 + 2) != *(v9 + 2)) && (sub_24A82DC04() & 1) == 0 || (*(v53 + 3) != *(v9 + 3) || *(v53 + 4) != *(v9 + 4)) && (sub_24A82DC04() & 1) == 0 || *v53 != *v9 || v53[1] != v9[1] || v53[2] != v9[2])
    {
      sub_24A7B867C(v53, type metadata accessor for FMIPDeviceLostModeMetadata);
LABEL_38:
      sub_24A7B867C(v9, type metadata accessor for FMIPDeviceLostModeMetadata);
      return 0;
    }

    v54 = v53[3];
    v55 = v9[3];
    sub_24A7B867C(v53, type metadata accessor for FMIPDeviceLostModeMetadata);
    result = sub_24A7B867C(v9, type metadata accessor for FMIPDeviceLostModeMetadata);
    v27 = v58;
    v26 = v69;
    if (v54 != v55)
    {
      return v47;
    }
  }

  if (v27 <= v22 + 1)
  {
    v30 = v22 + 1;
  }

  else
  {
    v30 = v27;
  }

  v31 = v30 - 1;
  v32 = v66;
  while (1)
  {
    v33 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v33 >= v27)
    {
      v56 = sub_24A6BBA94(&qword_27EF5ED68, qword_24A83BAA0);
      (*(*(v56 - 8) + 56))(v19, 1, 1, v56);
      v69 = 0;
      v22 = v31;
      goto LABEL_17;
    }

    v34 = *(v57 + 8 * v33);
    ++v22;
    if (v34)
    {
      v28 = v9;
      v69 = (v34 - 1) & v34;
      v29 = __clz(__rbit64(v34)) | (v33 << 6);
      v22 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B7994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v68 = sub_24A82CAA4();
  v60 = *(v68 - 8);
  v12 = MEMORY[0x28223BE20](v68);
  v61 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v53 - v14;
  v63 = a3;
  v64 = a4;
  v15 = sub_24A6BBA94(a3, a4);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  result = MEMORY[0x28223BE20](v16);
  v65 = &v53 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v62 = v18;
  v20 = 0;
  v56 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v54 = v22;
  v55 = v60 + 16;
  v66 = (v60 + 32);
  v57 = v27;
  v58 = (v60 + 8);
  while (v26)
  {
    v67 = (v26 - 1) & v26;
    v28 = __clz(__rbit64(v26)) | (v20 << 6);
LABEL_16:
    v35 = v56;
    v37 = v59;
    v36 = v60;
    v38 = v68;
    (*(v60 + 16))(v59, *(v56 + 48) + *(v60 + 72) * v28, v68);
    LOBYTE(v35) = *(*(v35 + 56) + v28);
    v39 = sub_24A6BBA94(a5, a6);
    v40 = *(v39 + 48);
    v41 = *(v36 + 32);
    v31 = v62;
    v41(v62, v37, v38);
    *(v31 + v40) = v35;
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    v32 = v65;
LABEL_17:
    sub_24A67E8FC(v31, v32, v63, v64);
    v42 = sub_24A6BBA94(a5, a6);
    v43 = (*(*(v42 - 8) + 48))(v32, 1, v42);
    v44 = v43 == 1;
    if (v43 != 1)
    {
      v45 = *(v42 + 48);
      v46 = v61;
      v47 = v68;
      (*v66)(v61, v32, v68);
      v48 = *(v32 + v45);
      v49 = sub_24A77EDF8(v46);
      v51 = v50;
      result = (*v58)(v46, v47);
      if (v51)
      {
        v27 = v57;
        v26 = v67;
        if (*(*(a2 + 56) + v49) == v48)
        {
          continue;
        }
      }
    }

    return v44;
  }

  if (v27 <= v20 + 1)
  {
    v29 = v20 + 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v29 - 1;
  v31 = v62;
  v32 = v65;
  while (1)
  {
    v33 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v33 >= v27)
    {
      v52 = sub_24A6BBA94(a5, a6);
      (*(*(v52 - 8) + 56))(v31, 1, 1, v52);
      v67 = 0;
      v20 = v30;
      goto LABEL_17;
    }

    v34 = *(v54 + 8 * v33);
    ++v20;
    if (v34)
    {
      v67 = (v34 - 1) & v34;
      v28 = __clz(__rbit64(v34)) | (v33 << 6);
      v20 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_24A7B7DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v73 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v69 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_24A6BBA94(&qword_27EF5ED28, &qword_24A83BA48);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v60 = a1;
    v61 = a2;
    v18 = 0;
    v19 = *(a1 + 64);
    v58 = a1 + 64;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v64 = v15;
    v65 = (v73 + 32);
    v71 = v11;
    v72 = (v73 + 8);
    v63 = &v56 - v16;
    v59 = v23;
    v70 = v73 + 16;
    v57 = v9;
    while (v22)
    {
      v24 = v9;
      v62 = (v22 - 1) & v22;
      v25 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_17:
      v30 = v60;
      v31 = v73;
      (*(v73 + 16))(v11, *(v60 + 48) + *(v73 + 72) * v25, v4);
      v32 = *(*(v30 + 56) + 8 * v25);
      v33 = sub_24A6BBA94(&qword_27EF5ED30, &qword_24A83BA50);
      v34 = *(v33 + 48);
      v35 = *(v31 + 32);
      v36 = v64;
      v35(v64, v11, v4);
      *&v36[v34] = v32;
      v15 = v36;
      (*(*(v33 - 8) + 56))(v36, 0, 1, v33);

      v17 = v63;
      v9 = v24;
LABEL_18:
      sub_24A67E8FC(v15, v17, &qword_27EF5ED28, &qword_24A83BA48);
      v37 = sub_24A6BBA94(&qword_27EF5ED30, &qword_24A83BA50);
      if ((*(*(v37 - 8) + 48))(v17, 1, v37) == 1)
      {
        return;
      }

      v38 = *(v37 + 48);
      (*v65)(v9, v17, v4);
      v39 = *&v17[v38];
      v40 = v61;
      v41 = sub_24A77EDF8(v9);
      v43 = v42;
      v44 = *v72;
      (*v72)(v9, v4);
      if ((v43 & 1) == 0 || (v45 = *(*(v40 + 56) + 8 * v41), v46 = *(v45 + 16), v46 != *(v39 + 16)))
      {
LABEL_32:

        return;
      }

      if (v46 && v45 != v39)
      {
        v47 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v67 = v45 + v47;
        v68 = v39;
        v66 = v39 + v47;

        v48 = 0;
        while (v48 < *(v45 + 16))
        {
          v49 = *(v73 + 72) * v48;
          v50 = *(v73 + 16);
          v51 = v71;
          v50(v71, v67 + v49, v4);
          if (v48 >= *(v68 + 16))
          {
            goto LABEL_36;
          }

          v52 = v66 + v49;
          v53 = v69;
          v50(v69, v52, v4);
          sub_24A7B8564(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v54 = sub_24A82CF84();
          v44(v53, v4);
          v44(v51, v4);
          if ((v54 & 1) == 0)
          {

            goto LABEL_32;
          }

          if (v46 == ++v48)
          {

            v9 = v57;
            goto LABEL_6;
          }
        }

        goto LABEL_35;
      }

LABEL_6:

      v11 = v71;
      v17 = v63;
      v15 = v64;
      v23 = v59;
      v22 = v62;
    }

    if (v23 <= v18 + 1)
    {
      v26 = v18 + 1;
    }

    else
    {
      v26 = v23;
    }

    v27 = v26 - 1;
    while (1)
    {
      v28 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
        v55 = sub_24A6BBA94(&qword_27EF5ED30, &qword_24A83BA50);
        (*(*(v55 - 8) + 56))(v15, 1, 1, v55);
        v62 = 0;
        v18 = v27;
        goto LABEL_18;
      }

      v29 = *(v58 + 8 * v28);
      ++v18;
      if (v29)
      {
        v24 = v9;
        v62 = (v29 - 1) & v29;
        v25 = __clz(__rbit64(v29)) | (v28 << 6);
        v18 = v28;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

void sub_24A7B83E4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_24A6A2D48(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_24A82D5E4();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A7B8564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A7B85AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7B8614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7B867C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24A7B86E0()
{
  result = qword_27EF5ED70;
  if (!qword_27EF5ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ED70);
  }

  return result;
}

unint64_t sub_24A7B8738()
{
  result = qword_27EF5ED78;
  if (!qword_27EF5ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ED78);
  }

  return result;
}

unint64_t sub_24A7B8790()
{
  result = qword_27EF5ED80;
  if (!qword_27EF5ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ED80);
  }

  return result;
}

unint64_t sub_24A7B87E8()
{
  result = qword_27EF5ED88;
  if (!qword_27EF5ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ED88);
  }

  return result;
}

unint64_t sub_24A7B8840()
{
  result = qword_27EF5ED90;
  if (!qword_27EF5ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ED90);
  }

  return result;
}

uint64_t sub_24A7B8894@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 groupIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_24A82CA84();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_24A82CAA4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_24A7B8938(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  sub_24A82CA84();
}

uint64_t sub_24A7B8994()
{
  v1 = [*v0 taskInformation];
  type metadata accessor for SPBeaconTaskName(0);
  sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
  sub_24A7B8D08();
  v2 = sub_24A82CEF4();

  return v2;
}

uint64_t sub_24A7B8A20()
{
  v1 = [*v0 serialNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24A82CFC4();

  return v3;
}

uint64_t sub_24A7B8A88(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_24A82CFC4();

  return v5;
}

uint64_t sub_24A7B8ADC()
{
  v1 = [*v0 safeLocations];
  sub_24A679170(0, &qword_27EF5D720, 0x277D496B0);
  sub_24A72931C();
  v2 = sub_24A82D3A4();

  return v2;
}

unint64_t sub_24A7B8D08()
{
  result = qword_27EF5CEF8;
  if (!qword_27EF5CEF8)
  {
    type metadata accessor for SPBeaconTaskName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5CEF8);
  }

  return result;
}

void *FMIPAddMultipleSafeLocationsItemAction.__allocating_init(beaconUUIDs:location:originalIdentifier:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  memcpy(v8 + 2, a2, 0x160uLL);
  v8[47] = a4;
  v8[48] = a1;
  v8[46] = a3;
  return v8;
}

uint64_t FMIPAssignMultipleSafeLocationsItemAction.__allocating_init(beaconUUIDs:location:)(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  memcpy((v4 + 16), a2, 0x160uLL);
  *(v4 + 368) = a1;
  return v4;
}

uint64_t FMIPAssignMultipleSafeLocationsItemAction.init(beaconUUIDs:location:)(uint64_t a1, const void *a2)
{
  memcpy((v2 + 16), a2, 0x160uLL);
  *(v2 + 368) = a1;
  return v2;
}

uint64_t FMIPAddMultipleSafeLocationsItemAction.originalIdentifier.getter()
{
  v1 = *(v0 + 368);

  return v1;
}

void *FMIPAddMultipleSafeLocationsItemAction.init(beaconUUIDs:location:originalIdentifier:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  memcpy(v4 + 2, a2, 0x160uLL);
  v4[47] = a4;
  v4[48] = a1;
  v4[46] = a3;
  return v4;
}

uint64_t sub_24A7B9034()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_24A6CC294(v2);
}

void *FMIPAddMultipleSafeLocationsItemAction.deinit()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_24A6CC294(v2);

  return v0;
}

uint64_t FMIPAddMultipleSafeLocationsItemAction.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 16), 0x160uLL);

  sub_24A6CC294(__dst);

  return swift_deallocClassInstance();
}

uint64_t FMIPAddSafeLocationItemAction.beaconUUID.getter()
{
  v1 = *(v0 + 368);

  return v1;
}

void *FMIPAddSafeLocationItemAction.__allocating_init(beaconUUID:location:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  memcpy(v6 + 2, a3, 0x160uLL);
  v6[46] = a1;
  v6[47] = a2;
  return v6;
}

void *FMIPAddSafeLocationItemAction.init(beaconUUID:location:)(uint64_t a1, uint64_t a2, void *__src)
{
  memcpy(v3 + 2, __src, 0x160uLL);
  v3[46] = a1;
  v3[47] = a2;
  return v3;
}

uint64_t sub_24A7B9280()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_24A6CC294(v2);
}

uint64_t _s8FMIPCore41FMIPAssignMultipleSafeLocationsItemActionCfd_0()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_24A6CC294(v2);

  return v0;
}

uint64_t _s8FMIPCore41FMIPAssignMultipleSafeLocationsItemActionCfD_0()
{
  memcpy(__dst, (v0 + 16), 0x160uLL);

  sub_24A6CC294(__dst);

  return swift_deallocClassInstance();
}

uint64_t FMIPEditSafeLocationItemAction.__allocating_init(safeLocation:)(const void *a1)
{
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x160uLL);
  return v2;
}

uint64_t FMIPEditSafeLocationItemAction.deinit()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_24A6CC294(v2);
  return v0;
}

uint64_t _s8FMIPCore30FMIPEditSafeLocationItemActionCfD_0()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_24A6CC294(v2);
  return swift_deallocClassInstance();
}

uint64_t _s8FMIPCore29FMIPAddSafeLocationItemActionC8locationAA08FMIPSafeD0Vvg_0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x160uLL);
  memcpy(a1, (v1 + 16), 0x160uLL);
  return sub_24A6CC988(__dst, v4);
}

uint64_t sub_24A7B9594()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_24A6CC294(v2);
}

uint64_t _s8FMIPCore29FMIPAddSafeLocationItemActionCfd_0()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_24A6CC294(v2);

  return v0;
}

uint64_t _s8FMIPCore29FMIPAddSafeLocationItemActionCfD_0()
{
  memcpy(__dst, (v0 + 16), 0x160uLL);

  sub_24A6CC294(__dst);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7B9C80(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A688138(*a1);
  if (v3 == sub_24A688138(v2))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24A82DC04();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24A7B9CF0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A688138(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7B9D4C(uint64_t a1)
{
  sub_24A688138(*v1);
  sub_24A82D094();
}

uint64_t sub_24A7B9D98(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A688138(v2);
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A7B9DF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A7BA728(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24A7B9E20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A688138(*v1);
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

unint64_t sub_24A7B9E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7BA728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7B9E84(uint64_t a1)
{
  v2 = sub_24A685F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7B9EC0(uint64_t a1)
{
  v2 = sub_24A685F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPFeatures.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5EDA0, &qword_24A83C1D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A685F08();
  sub_24A82DD84();
  v9 = 0;
  sub_24A82DB14();
  if (!v1)
  {
    v9 = 1;
    sub_24A82DB14();
    v9 = 2;
    sub_24A82DB14();
    v9 = 3;
    sub_24A82DB14();
    v9 = 4;
    sub_24A82DB14();
    v9 = 5;
    sub_24A82DB14();
    v9 = 6;
    sub_24A82DB14();
    v9 = 7;
    sub_24A82DB14();
    v9 = 8;
    sub_24A82DB14();
    v9 = 9;
    sub_24A82DB14();
    v9 = 10;
    sub_24A82DB14();
    v9 = 11;
    sub_24A82DB14();
    v9 = 12;
    sub_24A82DB14();
    v9 = 13;
    sub_24A82DB14();
    v9 = 14;
    sub_24A82DB14();
    v9 = 15;
    sub_24A82DB14();
    v9 = 16;
    sub_24A82DB14();
    v9 = 17;
    sub_24A82DB14();
    v9 = 18;
    sub_24A82DB14();
    v9 = 19;
    sub_24A82DB14();
    v9 = 20;
    sub_24A82DB14();
    v9 = 21;
    sub_24A82DB14();
    v9 = 22;
    sub_24A82DB14();
    v9 = 23;
    sub_24A82DB14();
    v9 = 24;
    sub_24A82DB14();
    v9 = 25;
    sub_24A82DB14();
    v9 = 26;
    sub_24A82DB14();
    v9 = 27;
    sub_24A82DB14();
    v9 = 28;
    sub_24A82DB14();
    v9 = 29;
    sub_24A82DB14();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24A7BA4D4()
{
  result = qword_27EF5EDA8;
  if (!qword_27EF5EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDA8);
  }

  return result;
}

unint64_t sub_24A7BA52C()
{
  result = qword_27EF5EDB0;
  if (!qword_27EF5EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDB0);
  }

  return result;
}

unint64_t sub_24A7BA584()
{
  result = qword_27EF5EDB8;
  if (!qword_27EF5EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDB8);
  }

  return result;
}

unint64_t sub_24A7BA5DC()
{
  result = qword_27EF5EDC0;
  if (!qword_27EF5EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPFeatures.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A7BA6D4()
{
  result = qword_27EF5EDC8;
  if (!qword_27EF5EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDC8);
  }

  return result;
}

unint64_t sub_24A7BA728(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82DC24();

  if (v2 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for FMIPValidatePasswordRequest(uint64_t a1)
{
  result = qword_27EF5EDD0;
  if (!qword_27EF5EDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7BA7C8(uint64_t a1)
{
  result = type metadata accessor for FMIPDevice(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A7BA874(unsigned __int8 a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BA97C(char a1)
{
  sub_24A82DCC4();
  if (a1)
  {
    v2 = 0x4050800000000000;
  }

  else
  {
    v2 = 0x4042800000000000;
  }

  MEMORY[0x24C21D610](v2);
  return sub_24A82DD24();
}

uint64_t sub_24A7BA9D8(unsigned __int8 a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BAB04(unsigned __int8 a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BAC14(unsigned __int8 a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BAD14(unsigned __int8 a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BAE10(unsigned __int8 a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BAF38(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB03C(uint64_t a1, char a2)
{
  sub_24A82DCC4();
  if (a2)
  {
    v3 = 0x4050800000000000;
  }

  else
  {
    v3 = 0x4042800000000000;
  }

  MEMORY[0x24C21D610](v3);
  return sub_24A82DD24();
}

uint64_t sub_24A7BB094(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB1B8(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB330(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB458(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB554(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB64C(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB758(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BB8B4(uint64_t a1)
{
  sub_24A82D094();
}

unint64_t sub_24A7BB9A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A7BC080(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A7BB9D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6573617265;
  v5 = 0xE800000000000000;
  v6 = 0x65646F4D74736F6CLL;
  v7 = 0xE600000000000000;
  v8 = 0x65766F6D6572;
  if (v2 != 4)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000657361;
  v10 = 0x72456C65636E6163;
  if (v2 != 1)
  {
    v10 = 1801678700;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_24A7BBA8C()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78EC0);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = 0xE800000000000000;
      v4 = 0x65646F4D74736F6CLL;
    }

    else if (v2 == 4)
    {
      v3 = 0xE600000000000000;
      v4 = 0x65766F6D6572;
    }

    else
    {
      v3 = 0xE700000000000000;
      v4 = 0x6E776F6E6B6E75;
    }
  }

  else if (*(v0 + qword_27EF78EC0))
  {
    if (v2 == 1)
    {
      v3 = 0xEB00000000657361;
      v4 = 0x72456C65636E6163;
    }

    else
    {
      v3 = 0xE400000000000000;
      v4 = 1801678700;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x6573617265;
  }

  v5 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  *&v29 = v4;
  *(&v29 + 1) = v3;
  v6 = qword_27EF5D920;
  v7 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock(v7 + 6);

  os_unfair_lock_unlock(v7 + 6);

  sub_24A6A50DC(&v29, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = sub_24A6A4F8C(v28, 0xD000000000000017, 0x800000024A849010, isUniquelyReferenced_nonNull_native);
  v10 = *(v1 + v6);
  MEMORY[0x28223BE20](v9);

  os_unfair_lock_lock((v10 + 24));
  sub_24A6A3D28((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));

  v12 = *(v1 + qword_27EF78EB8);
  v11 = *(v1 + qword_27EF78EB8 + 8);
  v30 = v5;
  *&v29 = v12;
  *(&v29 + 1) = v11;
  v13 = *(v1 + v6);

  os_unfair_lock_lock(v13 + 6);

  os_unfair_lock_unlock(v13 + 6);

  sub_24A6A50DC(&v29, v28);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v15 = sub_24A6A4F8C(v28, 0x656B6F5468747561, 0xE90000000000006ELL, v14);
  v16 = *(v1 + v6);
  MEMORY[0x28223BE20](v15);

  os_unfair_lock_lock((v16 + 24));
  sub_24A6FF740((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));

  v30 = MEMORY[0x277D83B88];
  *&v29 = 1;
  v17 = *(v1 + v6);

  os_unfair_lock_lock(v17 + 6);

  os_unfair_lock_unlock(v17 + 6);

  sub_24A6A50DC(&v29, v28);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v19 = sub_24A6A4F8C(v28, 0x7372655668747561, 0xEB000000006E6F69, v18);
  v20 = *(v1 + v6);
  MEMORY[0x28223BE20](v19);

  os_unfair_lock_lock((v20 + 24));
  sub_24A6FF740((v20 + 16));
  os_unfair_lock_unlock((v20 + 24));

  v22 = *(v1 + qword_27EF78EC8);
  v21 = *(v1 + qword_27EF78EC8 + 8);
  v30 = v5;
  *&v29 = v22;
  *(&v29 + 1) = v21;
  v23 = *(v1 + v6);

  os_unfair_lock_lock(v23 + 6);

  os_unfair_lock_unlock(v23 + 6);

  sub_24A6A50DC(&v29, v28);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v25 = sub_24A6A4F8C(v28, 0x656369766564, 0xE600000000000000, v24);
  v26 = *(v1 + v6);
  MEMORY[0x28223BE20](v25);

  os_unfair_lock_lock((v26 + 24));
  sub_24A6FF740((v26 + 16));
  os_unfair_lock_unlock((v26 + 24));
}

uint64_t sub_24A7BBF34()
{

  v1 = v0 + qword_27EF78EC8;

  return sub_24A6FE094(v1);
}

uint64_t sub_24A7BBF78()
{
  v0 = sub_24A6F8F90();

  sub_24A6FE094(v0 + qword_27EF78EC8);

  return swift_deallocClassInstance();
}

unint64_t sub_24A7BC02C()
{
  result = qword_27EF5EDE0;
  if (!qword_27EF5EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDE0);
  }

  return result;
}

unint64_t sub_24A7BC080(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

void sub_24A7BC0CC()
{
  v0 = sub_24A82CF94();
  v1 = MGGetBoolAnswer();

  byte_27EF5EDE8 = v1;
}

uint64_t sub_24A7BC120(uint64_t a1, uint64_t a2)
{
  if (qword_27EF5CC08 != -1)
  {
    swift_once();
  }

  if (byte_27EF5EDE8)
  {
    v2 = 1312902231;
  }

  else
  {
    v2 = 1229343063;
  }

  MEMORY[0x24C21C9E0](95, 0xE100000000000000);

  MEMORY[0x24C21C9E0](v2, 0xE400000000000000);

  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_24A82C6F4();

  return v5;
}

FMIPCore::FMIPMapInteractionEvent __swiftcall FMIPMapInteractionEvent.init(mapPOITapped:mapPOIOpenInMaps:)(Swift::Bool_optional mapPOITapped, Swift::Bool_optional mapPOIOpenInMaps)
{
  v2->value = mapPOITapped.value;
  v2[1].value = mapPOIOpenInMaps.value;
  result.mapPOITapped = mapPOITapped;
  return result;
}

void sub_24A7BC314(unsigned int a1)
{
  v2 = a1;
  v3 = BYTE1(a1);
  v10 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  sub_24A7BE35C(v4, 0x6154494F5070616DLL, 0xEC00000064657070);
  if (v3 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  sub_24A7BE35C(v5, 0xD000000000000010, 0x800000024A849050);
  v6 = sub_24A82CF94();
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  aBlock[4] = sub_24A6AEBB4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6AEADC;
  aBlock[3] = &unk_285DCA290;
  v8 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

uint64_t _s8FMIPCore13FMIPAnalyticsV23sendMapInteractionEvent5eventyAA07FMIPMapeF0V_tFZ_0(char *a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CE54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 17) = v11;
  aBlock[4] = sub_24A7BC8E0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCA240;
  v13 = _Block_copy(aBlock);
  sub_24A82CE24();
  v15[1] = MEMORY[0x277D84F90];
  sub_24A6FA9B0();
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v5, v13);
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t getEnumTagSinglePayload for FMIPMapInteractionEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for FMIPMapInteractionEvent(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t FMIPZeusProductInformation.init(beacon:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_24A67DF6C(a1, v4);
  v6 = (*(v5 + 136))(v4, v5);
  v7 = a1[3];
  v8 = a1[4];
  sub_24A67DF6C(a1, v7);
  v9 = (*(v8 + 144))(v7, v8);
  v10 = a1[3];
  v11 = a1[4];
  sub_24A67DF6C(a1, v10);
  v12 = (*(v11 + 128))(v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 modelName];

    v15 = sub_24A82CFC4();
    v17 = v16;
  }

  else
  {
    v18 = a1[3];
    v19 = a1[4];
    sub_24A67DF6C(a1, v18);
    v15 = (*(v19 + 56))(v18, v19);
    v17 = v20;
  }

  *a2 = v6;
  a2[1] = v9;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = 0x656C707041;
  a2[5] = 0xE500000000000000;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0x4010000000000000;

  return sub_24A6876E8(a1);
}

uint64_t FMIPZeusProductInformation.modelName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPZeusProductInformation.manufacturerName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FMIPZeusProductInformation.appBundleIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_24A7BCB1C(uint64_t a1)
{
  v2 = sub_24A7BD374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7BCB58(uint64_t a1)
{
  v2 = sub_24A7BD374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPZeusProductInformation.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5EDF0, &qword_24A83C800);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v18[5] = v1[2];
  v18[6] = v8;
  v10 = v1[5];
  v18[3] = v1[4];
  v18[4] = v9;
  v11 = v1[6];
  v12 = v1[7];
  v18[1] = v10;
  v18[2] = v11;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  sub_24A67DF6C(v14, v13);
  sub_24A7BD374();
  sub_24A82DD84();
  v24 = 0;
  sub_24A82DB34();
  if (!v2)
  {
    v18[0] = v12;
    v23 = 1;
    sub_24A82DB34();
    v22 = 2;
    sub_24A82DB04();
    v21 = 3;
    sub_24A82DB04();
    v20 = 4;
    sub_24A82DAD4();
    v19 = 5;
    sub_24A82DB24();
  }

  return (*(v5 + 8))(v7, v16);
}

uint64_t FMIPZeusProductInformation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  MEMORY[0x24C21D5E0](*v1);
  MEMORY[0x24C21D5E0](v2);
  sub_24A82D094();
  sub_24A82D094();
  sub_24A82DCE4();
  if (v3)
  {
    sub_24A82D094();
  }

  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  return MEMORY[0x24C21D610](*&v5);
}

uint64_t FMIPZeusProductInformation.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPZeusProductInformation.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t FMIPZeusProductInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5EE00, &qword_24A83C808);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7BD374();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = sub_24A82DA74();
  LOBYTE(v33[0]) = 1;
  v27 = sub_24A82DA74();
  LOBYTE(v33[0]) = 2;
  v10 = sub_24A82DA44();
  *(&v26 + 1) = v11;
  *&v26 = v10;
  LOBYTE(v33[0]) = 3;
  *&v25 = sub_24A82DA44();
  *(&v25 + 1) = v12;
  LOBYTE(v33[0]) = 4;
  v24 = sub_24A82DA04();
  v14 = v13;
  v34[0] = 5;
  sub_24A82DA64();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v18 = *(&v26 + 1);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v26;
  v29 = v26;
  v20 = *(&v25 + 1);
  v30 = v25;
  *&v31 = v24;
  *(&v31 + 1) = v14;
  v32 = v16;
  v21 = v31;
  *(a2 + 32) = v25;
  *(a2 + 48) = v21;
  *(a2 + 64) = v32;
  v22 = v29;
  *a2 = v28;
  *(a2 + 16) = v22;
  sub_24A7BD3C8(&v28, v33);
  sub_24A6876E8(a1);
  v33[0] = v9;
  v33[1] = v17;
  v33[2] = v19;
  v33[3] = v18;
  v33[4] = v25;
  v33[5] = v20;
  v33[6] = v24;
  v33[7] = v14;
  v33[8] = v16;
  return sub_24A6D23CC(v33);
}

__n128 sub_24A7BD274@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  FMIPZeusProductInformation.init(beacon:)(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_24A7BD2F4()
{
  sub_24A82DCC4();
  FMIPZeusProductInformation.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7BD338(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPZeusProductInformation.hash(into:)(v2);
  return sub_24A82DD24();
}

unint64_t sub_24A7BD374()
{
  result = qword_27EF5EDF8;
  if (!qword_27EF5EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EDF8);
  }

  return result;
}

unint64_t sub_24A7BD400(void *a1)
{
  a1[2] = sub_24A6D27B8();
  a1[3] = sub_24A6D25D0();
  result = sub_24A7BD438();
  a1[4] = result;
  return result;
}

unint64_t sub_24A7BD438()
{
  result = qword_27EF5EE08;
  if (!qword_27EF5EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE08);
  }

  return result;
}

unint64_t sub_24A7BD490()
{
  result = qword_27EF5EE10;
  if (!qword_27EF5EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE10);
  }

  return result;
}

unint64_t sub_24A7BD508()
{
  result = qword_27EF5EE18;
  if (!qword_27EF5EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE18);
  }

  return result;
}

unint64_t sub_24A7BD560()
{
  result = qword_27EF5EE20;
  if (!qword_27EF5EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE20);
  }

  return result;
}

unint64_t sub_24A7BD5B8()
{
  result = qword_27EF5EE28;
  if (!qword_27EF5EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE28);
  }

  return result;
}

uint64_t type metadata accessor for FMIPLostModeRequest(uint64_t a1)
{
  result = qword_27EF5EE30;
  if (!qword_27EF5EE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7BD6A8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x676E696B63617274;
    v6 = 0x7478655472657375;
    if (a1 != 8)
    {
      v6 = 0x6C69616D65;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x646E756F73;
    if (a1 != 5)
    {
      v7 = 1954047348;
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
    v1 = 0x656369766564;
    v2 = 0x65646F4D74736F6CLL;
    v3 = 0x72624E72656E776FLL;
    if (a1 != 3)
    {
      v3 = 0x65646F6373736170;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6470556C69616D65;
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

uint64_t sub_24A7BD7F0()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78EE0);
  v4 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8);
  v71 = MEMORY[0x277D837D0];
  *&v70 = v4;
  *(&v70 + 1) = v3;
  v5 = qword_27EF5D920;
  v6 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  sub_24A6A50DC(&v70, v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v7;
  sub_24A6A4F8C(v68, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v9 = *(v1 + v5);

  os_unfair_lock_lock((v9 + 24));
  sub_24A6A3D28((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));

  v10 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isEmailUpdatesEnabled);
  v11 = MEMORY[0x277D839B0];
  v71 = MEMORY[0x277D839B0];
  LOBYTE(v70) = v10;
  v12 = *(v1 + v5);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  v69 = v13;
  if (v71)
  {
    sub_24A6A50DC(&v70, v68);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_24A6A4F8C(v68, 0x6470556C69616D65, 0xEC00000073657461, v14);
  }

  else
  {
    sub_24A6F6C40(&v70);
    sub_24A7C3F0C(0x6470556C69616D65, 0xEC00000073657461, v68);
    v15 = sub_24A6F6C40(v68);
  }

  v16 = *(v1 + v5);
  MEMORY[0x28223BE20](v15);

  os_unfair_lock_lock((v16 + 24));
  sub_24A6FF740((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));

  v71 = v11;
  LOBYTE(v70) = 1;
  v17 = *(v1 + v5);

  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);

  os_unfair_lock_unlock((v17 + 24));

  v69 = v18;
  if (v71)
  {
    sub_24A6A50DC(&v70, v68);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_24A6A4F8C(v68, 0x65646F4D74736F6CLL, 0xEF64656C62616E45, v19);
  }

  else
  {
    sub_24A6F6C40(&v70);
    sub_24A7C3F0C(0x65646F4D74736F6CLL, 0xEF64656C62616E45, v68);
    v20 = sub_24A6F6C40(v68);
  }

  v21 = *(v1 + v5);
  MEMORY[0x28223BE20](v20);

  os_unfair_lock_lock((v21 + 24));
  sub_24A6FF740((v21 + 16));
  os_unfair_lock_unlock((v21 + 24));

  v22 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled);
  v71 = v11;
  LOBYTE(v70) = v22;
  v23 = *(v1 + v5);

  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);

  os_unfair_lock_unlock((v23 + 24));

  v69 = v24;
  if (v71)
  {
    sub_24A6A50DC(&v70, v68);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_24A6A4F8C(v68, 0x676E696B63617274, 0xEF64656C62616E45, v25);
  }

  else
  {
    sub_24A6F6C40(&v70);
    sub_24A7C3F0C(0x676E696B63617274, 0xEF64656C62616E45, v68);
    v26 = sub_24A6F6C40(v68);
  }

  v27 = *(v1 + v5);
  MEMORY[0x28223BE20](v26);

  os_unfair_lock_lock((v27 + 24));
  sub_24A6FF740((v27 + 16));
  os_unfair_lock_unlock((v27 + 24));

  v71 = v11;
  LOBYTE(v70) = 0;
  v28 = *(v1 + v5);

  os_unfair_lock_lock((v28 + 24));
  v29 = *(v28 + 16);

  os_unfair_lock_unlock((v28 + 24));

  v69 = v29;
  if (v71)
  {
    sub_24A6A50DC(&v70, v68);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_24A6A4F8C(v68, 0x646E756F73, 0xE500000000000000, v30);
  }

  else
  {
    sub_24A6F6C40(&v70);
    sub_24A7C3F0C(0x646E756F73, 0xE500000000000000, v68);
    v31 = sub_24A6F6C40(v68);
  }

  v32 = *(v1 + v5);
  MEMORY[0x28223BE20](v31);

  os_unfair_lock_lock((v32 + 24));
  sub_24A6FF740((v32 + 16));
  os_unfair_lock_unlock((v32 + 24));

  v33 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isUserTextEnabled);
  v71 = v11;
  LOBYTE(v70) = v33;
  v34 = *(v1 + v5);

  os_unfair_lock_lock((v34 + 24));
  v35 = *(v34 + 16);

  os_unfair_lock_unlock((v34 + 24));

  v69 = v35;
  if (v71)
  {
    sub_24A6A50DC(&v70, v68);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = sub_24A6A4F8C(v68, 0x7478655472657375, 0xE800000000000000, v36);
  }

  else
  {
    sub_24A6F6C40(&v70);
    sub_24A7C3F0C(0x7478655472657375, 0xE800000000000000, v68);
    v37 = sub_24A6F6C40(v68);
  }

  v38 = MEMORY[0x277D837D0];
  v39 = *(v1 + v5);
  MEMORY[0x28223BE20](v37);

  os_unfair_lock_lock((v39 + 24));
  sub_24A6FF740((v39 + 16));
  os_unfair_lock_unlock((v39 + 24));

  v40 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);
  if (v40)
  {
    v41 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message);
    v71 = v38;
    *&v70 = v41;
    *(&v70 + 1) = v40;
    v42 = *(v1 + v5);

    os_unfair_lock_lock((v42 + 24));
    v43 = *(v42 + 16);

    os_unfair_lock_unlock((v42 + 24));

    sub_24A6A50DC(&v70, v68);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v43;
    v45 = sub_24A6A4F8C(v68, 1954047348, 0xE400000000000000, v44);
    v46 = *(v1 + v5);
    MEMORY[0x28223BE20](v45);

    os_unfair_lock_lock((v46 + 24));
    sub_24A6FF740((v46 + 16));
    os_unfair_lock_unlock((v46 + 24));
  }

  v47 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8);
  if (v47)
  {
    v48 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber);
    v71 = v38;
    *&v70 = v48;
    *(&v70 + 1) = v47;
    v49 = *(v1 + v5);

    os_unfair_lock_lock((v49 + 24));
    v50 = *(v49 + 16);

    os_unfair_lock_unlock((v49 + 24));

    sub_24A6A50DC(&v70, v68);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v50;
    v52 = sub_24A6A4F8C(v68, 0x72624E72656E776FLL, 0xE800000000000000, v51);
    v53 = *(v1 + v5);
    MEMORY[0x28223BE20](v52);

    os_unfair_lock_lock((v53 + 24));
    sub_24A6FF740((v53 + 16));
    os_unfair_lock_unlock((v53 + 24));
  }

  v54 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode + 8);
  if (v54)
  {
    v55 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode);
    v71 = v38;
    *&v70 = v55;
    *(&v70 + 1) = v54;
    v56 = *(v1 + v5);

    os_unfair_lock_lock((v56 + 24));
    v57 = *(v56 + 16);

    os_unfair_lock_unlock((v56 + 24));

    sub_24A6A50DC(&v70, v68);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v57;
    v59 = sub_24A6A4F8C(v68, 0x65646F6373736170, 0xE800000000000000, v58);
    v60 = *(v1 + v5);
    MEMORY[0x28223BE20](v59);

    os_unfair_lock_lock((v60 + 24));
    sub_24A6FF740((v60 + 16));
    os_unfair_lock_unlock((v60 + 24));
  }

  result = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8);
  if (result)
  {
    v62 = *(v2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email);
    v71 = v38;
    *&v70 = v62;
    *(&v70 + 1) = result;
    v63 = *(v1 + v5);

    os_unfair_lock_lock((v63 + 24));
    v64 = *(v63 + 16);

    os_unfair_lock_unlock((v63 + 24));

    sub_24A6A50DC(&v70, v68);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v64;
    v66 = sub_24A6A4F8C(v68, 0x6C69616D65, 0xE500000000000000, v65);
    v67 = *(v1 + v5);
    MEMORY[0x28223BE20](v66);

    os_unfair_lock_lock((v67 + 24));
    sub_24A6FF740((v67 + 16));
    os_unfair_lock_unlock((v67 + 24));
  }

  return result;
}

uint64_t sub_24A7BE2E0()
{
  sub_24A6F8F90();

  return swift_deallocClassInstance();
}

uint64_t sub_24A7BE388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A6BBA94(&qword_27EF5E148, qword_24A837790);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_24A67F378(a1, &qword_27EF5E148, qword_24A837790);
    sub_24A7C4080(a2, a3, v9);

    return sub_24A67F378(v9, &qword_27EF5E148, qword_24A837790);
  }

  else
  {
    sub_24A67E8FC(a1, v12, &unk_27EF5E150, &unk_24A83CCC0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24A784D98(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24A7BE58C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v19;
  }

  else
  {
    v14 = sub_24A6A2D48(a2, a3);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!v17)
      {
        a5();
        v18 = v20;
      }

      result = sub_24A7C4A94(v14, v18);
      *v6 = v18;
    }
  }

  return result;
}

uint64_t sub_24A7BE694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A6BBA94(&qword_27EF5EE70, &unk_24A83CC80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for FMIPMonitoredDevice(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_24A67F378(a1, &qword_27EF5EE70, &unk_24A83CC80);
    sub_24A7C4208(a2, a3, v9);

    return sub_24A67F378(v9, &qword_27EF5EE70, &unk_24A83CC80);
  }

  else
  {
    sub_24A68D690(a1, v12, type metadata accessor for FMIPMonitoredDevice);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24A784F1C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

_OWORD *sub_24A7BE868(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_24A6A50DC(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_24A785088(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_24A67F378(a1, &qword_27EF5D898, qword_24A8354A0);
    v7 = sub_24A77EFD4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_24A7876C0();
        v11 = v13;
      }

      sub_24A6A50DC((*(v11 + 56) + 32 * v9), v14);
      sub_24A7C5150(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_24A67F378(v14, &qword_27EF5D898, qword_24A8354A0);
  }

  return result;
}

unint64_t FMIPConfigValue.rawValue.getter()
{
  v1 = 0x626154736D657469;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000014;
  if (!*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24A7BE9FC()
{
  v7 = sub_24A82D554();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24A82D534();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24A82CE54();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  sub_24A82CE24();
  v8 = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24A82D594();
  qword_27EF5EE40 = result;
  return result;
}

FMIPCore::FMIPConfigValue_optional __swiftcall FMIPConfigValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A7BECC4()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7BED9C(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7BEE60(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7BEF40(unint64_t *a1@<X8>)
{
  v2 = 0xEF64656C62616E45;
  v3 = 0x626154736D657469;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024A843F00;
  }

  v4 = 0x800000024A843EB0;
  v5 = 0xD000000000000014;
  if (*v1)
  {
    v4 = 0x800000024A843ED0;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void *FMIPGlobalConfig<A>(_:fallback:)(char *a1)
{
  if (qword_27EF5CC10 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  return sub_24A82D574();
}

uint64_t sub_24A7BF0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EF5CC18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27EF78EF8;
  if (*(qword_27EF78EF8 + 16) && (v6 = sub_24A77EFD4(a1), (v7 & 1) != 0))
  {
    sub_24A67E168(*(v5 + 56) + 32 * v6, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_endAccess();
  sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  return a2;
}

uint64_t sub_24A7BF1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24A82D634();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  if (qword_27EF5CC18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_27EF78EF8;
  if (*(qword_27EF78EF8 + 16) && (v13 = sub_24A77EFD4(a1), (v14 & 1) != 0))
  {
    sub_24A67E168(*(v12 + 56) + 32 * v13, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  swift_endAccess();
  sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  v15 = swift_dynamicCast();
  v16 = *(a3 - 8);
  v17 = *(v16 + 56);
  if (v15)
  {
    v17(v11, 0, 1, a3);
    return (*(v16 + 32))(a4, v11, a3);
  }

  else
  {
    v17(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    return (*(v16 + 16))(a4, a2, a3);
  }
}

uint64_t sub_24A7BF428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EF5CC18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27EF78EF8;
  if (*(qword_27EF78EF8 + 16) && (v6 = sub_24A77EFD4(a1), (v7 & 1) != 0))
  {
    sub_24A67E168(*(v5 + 56) + 32 * v6, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_endAccess();
  sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  return a2;
}

uint64_t sub_24A7BF534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EF5CC18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27EF78EF8;
  if (*(qword_27EF78EF8 + 16) && (v6 = sub_24A77EFD4(a1), (v7 & 1) != 0))
  {
    sub_24A67E168(*(v5 + 56) + 32 * v6, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_endAccess();
  sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  if (swift_dynamicCast())
  {
    return v10;
  }

  return a2;
}

uint64_t FMIPNoItemsKBArticleLink.getter(uint64_t a1)
{
  if (qword_27EF5CC10 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_24A82D574();
  v1 = objc_opt_self();
  v2 = sub_24A82CF94();
  v3 = sub_24A82CF94();
  v4 = [v1 stringForKey:v2 inDomain:v3];

  if (v4)
  {
    v5 = sub_24A82CFC4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_24A82CF94();
  v9 = sub_24A82CF94();
  v10 = [v1 stringForKey:v8 inDomain:v9];

  if (!v10)
  {
    if (!v7)
    {
      return v15;
    }

LABEL_11:

    return v5;
  }

  v11 = sub_24A82CFC4();
  v13 = v12;

  if (v7)
  {
    goto LABEL_11;
  }

  if (!v13)
  {
    return v15;
  }

  return v11;
}

uint64_t sub_24A7BF898()
{
  sub_24A6BBA94(&qword_27EF5EE80, &unk_24A83CCA0);
  inited = swift_initStackObject();
  *(inited + 32) = 1;
  v1 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_24A8343E0;
  *(inited + 64) = v1;
  *(inited + 40) = 0xD000000000000020;
  *(inited + 48) = 0x800000024A849280;
  *(inited + 72) = 3;
  *(inited + 104) = v1;
  *(inited + 80) = 0xD000000000000025;
  *(inited + 88) = 0x800000024A8492B0;
  *(inited + 112) = 2;
  *(inited + 144) = MEMORY[0x277D839B0];
  *(inited + 120) = 0;
  *(inited + 152) = 0;
  *(inited + 184) = MEMORY[0x277D83B88];
  *(inited + 160) = 200;
  v2 = sub_24A78AE98(inited);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5E6B8, &qword_24A838CD8);
  result = swift_arrayDestroy();
  qword_27EF78EF8 = v2;
  return result;
}

uint64_t sub_24A7BF9B8@<X0>(void *a1@<X8>)
{
  v3 = qword_27EF5EE50;
  swift_beginAccess();
  sub_24A67E964(v1 + v3, &v10, &qword_27EF5EE78, &unk_24A83CC90);
  if (v11)
  {
    return sub_24A696E80(&v10, a1);
  }

  sub_24A67F378(&v10, &qword_27EF5EE78, &unk_24A83CC90);
  v5 = sub_24A82C514();
  v11 = v5;
  v12 = sub_24A67A06C(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v6 = sub_24A697E3C(&v10);
  (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D08A08], v5);
  LOBYTE(v5) = sub_24A82C4D4();
  sub_24A6876E8(&v10);
  if (v5)
  {
    v7 = type metadata accessor for StewieStateProviderImpl();
    v8 = swift_allocObject();
    v9 = &protocol witness table for StewieStateProviderImpl;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D496C0]) init];
    v7 = sub_24A679170(0, &qword_27EF5EE90, 0x277D496C0);
    v9 = &protocol witness table for SPSecureLocationsManager;
  }

  a1[3] = v7;
  a1[4] = v9;
  *a1 = v8;
  sub_24A698230(a1, &v10);
  swift_beginAccess();
  sub_24A7C6598(&v10, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24A7BFB9C()
{

  sub_24A6BAF88(v0 + qword_2815147C0);

  v1 = qword_281518F30;
  v2 = sub_24A82CA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return sub_24A67F378(v0 + qword_27EF5EE50, &qword_27EF5EE78, &unk_24A83CC90);
}

uint64_t sub_24A7BFC8C()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v7 = *(v1 + qword_281512FE8);
    v8 = *(v1 + qword_281512FE8 + 8);

    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v24);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPServerInteractionController<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v20 = sub_24A82CC44();

  sub_24A6BAF88(v20 + qword_2815147C0);

  v21 = qword_281518F30;
  v22 = sub_24A82CA34();
  (*(*(v22 - 8) + 8))(v20 + v21, v22);

  sub_24A67F378(v20 + qword_27EF5EE50, &qword_27EF5EE78, &unk_24A83CC90);
  return v20;
}

uint64_t sub_24A7BFF34()
{
  sub_24A7BFC8C();

  return swift_deallocClassInstance();
}

id sub_24A7BFF88(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void **a5, void (*a6)(void, void *), uint64_t a7, void *a8, uint64_t a9)
{
  v55 = a6;
  v16 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v54 - v17;
  if (a3)
  {
    v19 = sub_24A82C514();
    v56[3] = v19;
    v56[4] = sub_24A67A06C(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
    v20 = sub_24A697E3C(v56);
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D089E0], v19);
    LOBYTE(v19) = sub_24A82C4D4();
    sub_24A6876E8(v56);
    if (v19)
    {
      v54[1] = a7;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = a3;
      v23 = sub_24A82CD94();
      v24 = sub_24A82D504();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v54[0] = a8;
        v27 = v26;
        v56[0] = v26;
        *v25 = 136315138;
        swift_getErrorValue();
        v28 = sub_24A82DC74();
        v30 = sub_24A68761C(v28, v29, v56);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_24A675000, v23, v24, "FMIPServerInteractionController: didn't complete because of error (will check Stewie): %s", v25, 0xCu);
        sub_24A6876E8(v27);
        v31 = v27;
        a8 = v54[0];
        MEMORY[0x24C21E1D0](v31, -1, -1);
        MEMORY[0x24C21E1D0](v25, -1, -1);
      }

      sub_24A7BF9B8(v56);
      v32 = sub_24A71A040(v56);
      v33 = sub_24A6876E8(v56);
      if (v32 & 1) != 0 && ((*(*a5 + qword_281518EC0 + 200))(v33))
      {
        v34 = sub_24A82CD94();
        v35 = sub_24A82D504();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_24A675000, v34, v35, "FMIPServerInteractionController: discarded alert because refresh request and Stewie-enabled", v36, 2u);
          MEMORY[0x24C21E1D0](v36, -1, -1);
        }
      }

      else
      {
        v39 = sub_24A82CD94();
        v40 = sub_24A82D504();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_24A675000, v39, v40, "FMIPServerInteractionController: proceeding with alert", v41, 2u);
          MEMORY[0x24C21E1D0](v41, -1, -1);
        }

        sub_24A7C2A68(a5, a3);
      }
    }

    v55(0, a3);
    return [a8 signal];
  }

  v37 = *a5;
  if (type metadata accessor for FMIPInitClientRequest(0) == v37)
  {
    *(a4 + qword_281518F28) = 1;
  }

  if (a2 >> 60 != 15)
  {
    v38 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v38)
      {
        if ((a2 & 0xFF000000000000) == 0)
        {
          goto LABEL_26;
        }

LABEL_36:
        v51 = sub_24A82D354();
        (*(*(v51 - 8) + 56))(v18, 1, 1, v51);
        v52 = swift_allocObject();
        v52[2] = 0;
        v52[3] = 0;
        v52[4] = a9;
        v52[5] = a1;
        v52[6] = a2;
        v52[7] = a4;
        v52[8] = v55;
        v52[9] = a7;
        v52[10] = a8;

        v53 = a8;
        sub_24A7382F4(0, 0, v18, &unk_24A83CCB8, v52);
      }

      if (a1 == a1 >> 32)
      {
        goto LABEL_28;
      }

LABEL_35:
      sub_24A7C6480(a1, a2);
      goto LABEL_36;
    }

    if (v38 != 2)
    {
LABEL_26:
      sub_24A67E8E8(a1, a2);
      goto LABEL_28;
    }

    if (*(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_35;
    }
  }

LABEL_28:
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v43 = sub_24A82CDC4();
  sub_24A6797D0(v43, qword_281518F88);
  v44 = sub_24A82CD94();
  v45 = sub_24A82D504();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = a8;
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_24A675000, v44, v45, "FMIPServerInteractionController: received empty data", v47, 2u);
    v48 = v47;
    a8 = v46;
    MEMORY[0x24C21E1D0](v48, -1, -1);
  }

  sub_24A7C642C();
  v49 = swift_allocError();
  *v50 = 1;
  v55(0, v49);

  return [a8 signal];
}

uint64_t sub_24A7C0658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v13;
  v8[22] = v14;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = sub_24A82CDF4();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  v10 = sub_24A82CE54();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A7C0788, 0, 0);
}

uint64_t sub_24A7C0788()
{
  v45 = v0;
  sub_24A82C574();
  swift_allocObject();
  sub_24A82C564();
  swift_getWitnessTable();
  sub_24A82C554();

  v1 = v0[11];
  v0[29] = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44 = v6;
    *v5 = 136315138;
    v0[15] = v1;

    v7 = sub_24A82D024();
    v9 = sub_24A68761C(v7, v8, &v44);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPServerInteractionController: received response?: %s", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v10 = swift_conformsToProtocol2();
  v0[30] = v10;
  if (v10)
  {
    v11 = *v1;
    v0[31] = *v1;
    v12 = *(v10 + 16);
    v13 = v10;

    v14 = v12(v11, v13);
    v0[32] = v14;
    if (v14)
    {
      v15 = v14;
      v16 = sub_24A82CD94();
      v17 = sub_24A82D504();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_24A675000, v16, v17, "FMIPServerInteractionController: received devices containing response, shifting the devices", v18, 2u);
        MEMORY[0x24C21E1D0](v18, -1, -1);
      }

      type metadata accessor for FMLocationShifter();
      swift_allocObject();
      v19 = FMLocationShifter.init()();
      v0[33] = v19;
      v20 = swift_task_alloc();
      v0[34] = v20;
      *(v20 + 16) = v19;
      *(v20 + 24) = v15;
      v21 = swift_task_alloc();
      v0[35] = v21;
      v22 = sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
      *v21 = v0;
      v21[1] = sub_24A7C0FA8;

      return MEMORY[0x2822007B8](v0 + 14, 0, 0, 0x6564287466696873, 0xEF293A7365636976, sub_24A7C6590, v20, v22);
    }
  }

  v23 = v0[29];

  sub_24A7C2808(v24);
  if (*(v23 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;

      sub_24A81E3A8(v28, v27, v26);
      swift_unknownObjectRelease();
    }
  }

  v29 = v0[28];
  v30 = v0[29];
  v42 = v0[27];
  v43 = v0[26];
  v31 = v0[25];
  v41 = v0[24];
  v32 = v0[22];
  v33 = v0[23];
  v34 = v0[19];
  v35 = v0[18];

  v34(v36, 0);

  v37 = swift_allocObject();
  v37[2] = v32;
  v37[3] = v30;
  v37[4] = v35;
  v0[6] = sub_24A7C6584;
  v0[7] = v37;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A699BA0;
  v0[5] = &unk_285DCA730;
  v38 = _Block_copy(v0 + 2);

  sub_24A82CE24();
  v0[13] = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v29, v31, v38);
  _Block_release(v38);

  (*(v41 + 8))(v31, v33);
  (*(v42 + 8))(v29, v43);

  [v0[21] signal];

  v39 = v0[1];

  return v39();
}

uint64_t sub_24A7C0FA8()
{

  return MEMORY[0x2822009F8](sub_24A7C10DC, 0, 0);
}

uint64_t sub_24A7C10DC()
{
  v2 = v0[30];
  v1 = v0[31];

  (*(v2 + 24))(v0[14], v1, v2);

  v3 = v0[29];

  sub_24A7C2808(v4);
  if (*(v3 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;

      sub_24A81E3A8(v8, v7, v6);
      swift_unknownObjectRelease();
    }
  }

  v9 = v0[28];
  v10 = v0[29];
  v22 = v0[27];
  v23 = v0[26];
  v20 = v0[25];
  v21 = v0[24];
  v11 = v0[22];
  v12 = v0[23];
  v13 = v0[19];
  v14 = v0[18];

  v13(v15, 0);

  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v10;
  v16[4] = v14;
  v0[6] = sub_24A7C6584;
  v0[7] = v16;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A699BA0;
  v0[5] = &unk_285DCA730;
  v17 = _Block_copy(v0 + 2);

  sub_24A82CE24();
  v0[13] = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v20, v17);
  _Block_release(v17);

  (*(v21 + 8))(v20, v12);
  (*(v22 + 8))(v9, v23);

  [v0[21] signal];

  v18 = v0[1];

  return v18();
}

uint64_t sub_24A7C1408(uint64_t a1)
{
  type metadata accessor for FMIPRefreshClientResponse();
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;

    sub_24A7C1E80(v2);
  }

  return result;
}

uint64_t sub_24A7C1484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v4 = sub_24A82CDF4();
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24A82CE54();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPDevice(0);
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);
  sub_24A68FE6C(a1, v12, type metadata accessor for FMIPDevice);
  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_24A68761C(0x6E756F5379616C70, 0xE900000000000064, aBlock);
    *(v17 + 12) = 2080;
    v19 = FMIPDevice.debugDescription.getter();
    v20 = a1;
    v22 = v21;
    sub_24A69010C(v12, type metadata accessor for FMIPDevice);
    v23 = sub_24A68761C(v19, v22, aBlock);
    a1 = v20;

    *(v17 + 14) = v23;
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPServerInteractionController: startMonitoring: action: %s, device: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v18, -1, -1);
    v24 = v17;
    v4 = v36;
    MEMORY[0x24C21E1D0](v24, -1, -1);
  }

  else
  {

    sub_24A69010C(v12, type metadata accessor for FMIPDevice);
  }

  v25 = v41;
  sub_24A68FE6C(a1, v10, type metadata accessor for FMIPDevice);
  v26 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v27 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_24A68D690(v10, v28 + v26, type metadata accessor for FMIPDevice);
  v29 = (v28 + v27);
  v30 = v39;
  *v29 = v38;
  v29[1] = v30;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_24A7C6360;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCA640;
  v31 = _Block_copy(aBlock);

  v32 = v40;
  sub_24A82CE24();
  v46 = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v33 = v43;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v32, v33, v31);
  _Block_release(v31);
  (*(v45 + 8))(v33, v4);
  (*(v42 + 8))(v32, v44);
}

uint64_t sub_24A7C1A2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24A6BBA94(&qword_27EF5EE70, &unk_24A83CC80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for FMIPMonitoredDevice(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A68FE6C(a1, v13, type metadata accessor for FMIPDevice);
  v14 = &v13[*(v10 + 24)];
  *v14 = a2;
  *(v14 + 1) = a3;
  v16 = *a1;
  v15 = a1[1];
  sub_24A68FE6C(v13, v9, type metadata accessor for FMIPMonitoredDevice);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_24A7BE694(v9, v16, v15);
  swift_endAccess();
  return sub_24A69010C(v13, type metadata accessor for FMIPMonitoredDevice);
}

uint64_t sub_24A7C1C0C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5EE70, &unk_24A83CC80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = *a2;
  v11 = a2[1];
  v12 = qword_281518D88;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_24A6A2D48(v10, v11);
    if (v15)
    {
      v16 = v14;
      v17 = *(v13 + 56);
      v18 = type metadata accessor for FMIPMonitoredDevice(0);
      v19 = *(v18 - 8);
      v25 = v10;
      v20 = v19;
      sub_24A68FE6C(v17 + *(v19 + 72) * v16, v9, type metadata accessor for FMIPMonitoredDevice);

      v21 = *(v20 + 56);
      v21(v9, 0, 1, v18);
      sub_24A67F378(v9, &qword_27EF5EE70, &unk_24A83CC80);
      v21(v7, 1, 1, v18);
      swift_beginAccess();

      sub_24A7BE694(v7, v25, v11);
      return swift_endAccess();
    }
  }

  v23 = type metadata accessor for FMIPMonitoredDevice(0);
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  return sub_24A67F378(v9, &qword_27EF5EE70, &unk_24A83CC80);
}

void sub_24A7C1E80(uint64_t a1)
{
  v75 = a1;
  v72 = sub_24A82CDF4();
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_24A82CE54();
  v2 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPMonitoredDevice(0);
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v67 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v66 = &v53 - v8;
  MEMORY[0x28223BE20](v7);
  v76 = &v53 - v9;
  v10 = type metadata accessor for FMIPDevice(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v65 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v53 - v14);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPServerInteractionController: evaluating devices for monitoring", v19, 2u);
    MEMORY[0x24C21E1D0](v19, -1, -1);
  }

  v20 = qword_281518D88;
  v21 = v77;
  swift_beginAccess();
  if (*(*(v21 + v20) + 16))
  {
    v22 = *(v75 + 56);
    if (v22)
    {
      v23 = v2;
      v24 = *(v22 + 16);
      if (!v24)
      {
        return;
      }

      v62 = qword_2815147D8;
      v25 = *(v11 + 80);
      v60 = ~v25;
      v26 = v22 + ((v25 + 32) & ~v25);
      v27 = *(v11 + 72);
      v61 = v25;
      v58 = v5 + v25;
      v57 = v12 + 7;
      v56 = v80;
      v55 = (v74 + 8);
      v54 = (v23 + 8);
      v64 = v22;

      v63 = v20;
      v59 = v27;
      v53 = v15;
      while (1)
      {
        sub_24A68FE6C(v26, v15, type metadata accessor for FMIPDevice);
        v28 = *(v77 + v20);
        if (*(v28 + 16))
        {
          v30 = *v15;
          v29 = v15[1];

          v31 = sub_24A6A2D48(v30, v29);
          if (v32)
          {
            v33 = v68;
            v34 = v66;
            sub_24A68FE6C(*(v28 + 56) + *(v68 + 72) * v31, v66, type metadata accessor for FMIPMonitoredDevice);

            v35 = v76;
            sub_24A68D690(v34, v76, type metadata accessor for FMIPMonitoredDevice);
            v75 = *(v77 + v62);
            v36 = v67;
            v74 = type metadata accessor for FMIPMonitoredDevice;
            sub_24A68FE6C(v35, v67, type metadata accessor for FMIPMonitoredDevice);
            v37 = v15;
            v38 = v65;
            v73 = type metadata accessor for FMIPDevice;
            sub_24A68FE6C(v37, v65, type metadata accessor for FMIPDevice);
            v39 = (*(v33 + 80) + 16) & ~*(v33 + 80);
            v40 = (v58 + v39) & v60;
            v41 = (v57 + v40) & 0xFFFFFFFFFFFFFFF8;
            v42 = swift_allocObject();
            sub_24A68D690(v36, v42 + v39, type metadata accessor for FMIPMonitoredDevice);
            v43 = v38;
            v15 = v53;
            sub_24A68D690(v43, v42 + v40, type metadata accessor for FMIPDevice);
            *(v42 + v41) = v64;
            v80[2] = sub_24A7C6268;
            v80[3] = v42;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v80[0] = sub_24A699BA0;
            v80[1] = &unk_285DCA5F0;
            v44 = _Block_copy(aBlock);

            v45 = v69;
            sub_24A82CE24();
            v78 = MEMORY[0x277D84F90];
            sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
            sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
            v46 = v71;
            v47 = v72;
            v27 = v59;
            sub_24A82D6B4();
            MEMORY[0x24C21CE90](0, v45, v46, v44);
            _Block_release(v44);
            v48 = v47;
            v20 = v63;
            (*v55)(v46, v48);
            (*v54)(v45, v70);
            sub_24A69010C(v76, v74);
            sub_24A69010C(v15, v73);

            goto LABEL_11;
          }
        }

        sub_24A69010C(v15, type metadata accessor for FMIPDevice);
LABEL_11:
        v26 += v27;
        if (!--v24)
        {

          return;
        }
      }
    }

    v49 = sub_24A82CD94();
    v50 = sub_24A82D504();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "FMIPServerInteractionController: no devices detected, bypassing";
      goto LABEL_20;
    }
  }

  else
  {
    v49 = sub_24A82CD94();
    v50 = sub_24A82D504();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "FMIPServerInteractionController: nothing to monitor, bypassing";
LABEL_20:
      _os_log_impl(&dword_24A675000, v49, v50, v52, v51, 2u);
      MEMORY[0x24C21E1D0](v51, -1, -1);
    }
  }
}

uint64_t sub_24A7C26F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPServerInteractionController: device monitored so calling callback", v9, 2u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v10 = type metadata accessor for FMIPMonitoredDevice(0);
  return (*(a1 + *(v10 + 24)))(a2, a3);
}

uint64_t sub_24A7C2808(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    *(v1 + qword_2815147D0) = v2;

    if (!*(v2 + 16))
    {
      return sub_24A7C3324(v2);
    }

    v3 = sub_24A6A2D48(0xD000000000000012, 0x800000024A849380);
    if ((v4 & 1) == 0)
    {
      return sub_24A7C3324(v2);
    }

    sub_24A67E168(*(v2 + 56) + 32 * v3, v19);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return sub_24A7C3324(v2);
    }

    v5 = objc_opt_self();
    v6 = sub_24A82CF94();
    v7 = sub_24A82CF94();
    v8 = [v5 stringForKey:v6 inDomain:v7];

    if (v8)
    {
      v9 = sub_24A82CFC4();
      v11 = v10;

      if (v9 == v17 && v11 == v18)
      {

        goto LABEL_12;
      }

      v12 = sub_24A82DC04();

      if (v12)
      {
        goto LABEL_12;
      }
    }

    v13 = sub_24A82CF94();
    v14 = sub_24A82CF94();
    v15 = sub_24A82CF94();
    [v5 setString:v13 forKey:v14 inDomain:v15];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_24A7C5870(v17, v18, Strong);

      swift_unknownObjectRelease();
      return sub_24A7C3324(v2);
    }

LABEL_12:

    return sub_24A7C3324(v2);
  }

  return result;
}

void sub_24A7C2A68(void **a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v5 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = a1;
  v69 = &v64 - v8;
  v73 = *a1;
  v72 = type metadata accessor for FMIPInitClientRequest(0);
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_24A82C6F4();
  v14 = v13;

  v15 = [v10 bundleForClass_];
  v67 = sub_24A82C6F4();
  v76 = v16;

  v65 = v10;
  v66 = ObjCClassFromMetadata;
  v17 = [v10 bundleForClass_];
  v18 = sub_24A82C6F4();
  v75 = v19;

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v64 = v18;
  v20 = sub_24A82CDC4();
  sub_24A6797D0(v20, qword_281518F88);

  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v3;
  v71 = v12;
  if (v23)
  {
    v25 = v72;
    v26 = v73;
    v27 = v72 == v73;
    v28 = v24;
    v29 = swift_slowAlloc();
    *v29 = 67109376;
    *(v29 + 4) = v27;
    *(v29 + 8) = 1024;
    *(v29 + 10) = v28[qword_281518F28];

    _os_log_impl(&dword_24A675000, v21, v22, "FMIPServerInteractionController: createNetworkAlertIfNeeded: %{BOOL}d %{BOOL}d", v29, 0xEu);
    v30 = v29;
    v24 = v28;
    MEMORY[0x24C21E1D0](v30, -1, -1);
  }

  else
  {

    v25 = v72;
    v26 = v73;
  }

  if (v25 == v26 && (v24[qword_281518F28] & 1) == 0)
  {

    v77 = 3;
    v38 = sub_24A82496C(&v77);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_24A81E3A8(v40, v38, Strong);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (!v74)
    {
LABEL_18:

      return;
    }

    v73 = v24;
    v31 = sub_24A82C7E4();
    v32 = [v31 domain];
    v33 = sub_24A82CFC4();
    v35 = v34;

    if (v33 == sub_24A82CFC4() && v35 == v36)
    {
    }

    else
    {
      v37 = sub_24A82DC04();

      if ((v37 & 1) == 0)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    if (v25 == v26 || [v31 code] == -1001 || objc_msgSend(v31, sel_code) == -999 || objc_msgSend(v31, sel_code) == -1005)
    {
      goto LABEL_17;
    }

    v72 = v31;
    swift_getErrorValue();
    if (sub_24A774514(v78, v79))
    {

      v42 = v65;
      v41 = v66;
      v43 = [v65 bundleForClass_];
      v71 = sub_24A82C6F4();
      v45 = v44;

      v46 = [v42 bundleForClass_];
      v47 = sub_24A82C6F4();
      v76 = v48;

      v49 = [v42 bundleForClass_];
      v50 = sub_24A82C6F4();
      v52 = v51;
    }

    else
    {
      v45 = v14;
      v52 = v75;
      v47 = v67;
      v50 = v64;
    }

    v53 = sub_24A82C8B4();
    v54 = *(*(v53 - 8) + 56);
    v55 = v69;
    v54(v69, 1, 1, v53);
    v56 = v70;
    v57 = (v54)(v70, 1, 1, v53);
    if ((*(*v68 + qword_281518EC0 + 200))(v57))
    {
      v58 = 1;
    }

    else
    {
      v58 = 2;
    }

    type metadata accessor for FMIPAlert(0);
    v59 = swift_allocObject();
    v59[2] = v71;
    v59[3] = v45;
    v60 = v76;
    v59[4] = v47;
    v59[5] = v60;
    v59[6] = v50;
    v59[7] = v52;
    v61 = (v59 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
    *v61 = 0;
    v61[1] = 0;
    sub_24A67E8FC(v55, v59 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL, &unk_27EF5CCB8, &qword_24A82FDB0);
    sub_24A67E8FC(v56, v59 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL, &unk_27EF5CCB8, &qword_24A82FDB0);
    *(v59 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = v58;
    v62 = swift_unknownObjectWeakLoadStrong();
    if (v62)
    {
      sub_24A81E3A8(v63, v59, v62);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_24A7C3324(uint64_t a1)
{
  v3 = sub_24A82CDF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE54();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CC10 != -1)
  {
    swift_once();
  }

  v13[1] = qword_27EF5EE40;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_24A7C6260;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCA5A0;
  v11 = _Block_copy(aBlock);

  sub_24A82CE24();
  v15 = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_24A7C361C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = sub_24A6A2D48(0xD000000000000014, 0x800000024A843ED0);
    if (v4)
    {
      sub_24A67E168(*(a1 + 56) + 32 * v3, &v43);
      v5 = MEMORY[0x277D837D0];
      if (swift_dynamicCast())
      {
        if (v41 == sub_24A7BF428(1, 0, 0xE000000000000000) && v42 == v6)
        {
        }

        else
        {
          v7 = sub_24A82DC04();

          if (v7)
          {
          }

          else
          {
            if (qword_27EF5CC18 != -1)
            {
              swift_once();
            }

            v45 = v5;
            v43 = v41;
            v44 = v42;
            swift_beginAccess();
            sub_24A7BE868(&v43, 1);
            swift_endAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              sub_24A7C5A30(1u, Strong);
              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }

  if (*(a1 + 16) && (v9 = sub_24A6A2D48(0x626154736D657469, 0xEF64656C62616E45), (v10 & 1) != 0) && (sub_24A67E168(*(a1 + 56) + 32 * v9, &v43), swift_dynamicCast()))
  {
    v11 = v41;
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_opt_self();
  v13 = sub_24A82CF94();
  v14 = sub_24A82CF94();
  v15 = [v12 BOOLForKey:v13 inDomain:v14];

  if ((v11 & 1) == 0 && (v15 & 1) == 0)
  {
    if (qword_27EF5CC18 != -1)
    {
      swift_once();
    }

    v45 = MEMORY[0x277D839B0];
    LOBYTE(v43) = 0;
    swift_beginAccess();
    sub_24A7BE868(&v43, 2);
    swift_endAccess();
    v16 = sub_24A82CF94();
    v17 = sub_24A82CF94();
    [v12 setBool:0 forKey:v16 inDomain:v17];

    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      sub_24A7C5A30(2u, v18);
      swift_unknownObjectRelease();
    }
  }

  if (*(a1 + 16) && (v19 = sub_24A6A2D48(0xD000000000000010, 0x800000024A843F00), (v20 & 1) != 0))
  {
    sub_24A67E168(*(a1 + 56) + 32 * v19, &v43);
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v41;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v42;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = sub_24A82CF94();
  v25 = sub_24A82CF94();
  v26 = [v12 stringForKey:v24 inDomain:v25];

  if (v26)
  {
    v27 = sub_24A82CFC4();
    v29 = v28;

    result = sub_24A7BF534(3, 0, 0);
    v32 = result;
    v33 = v31;
    if (v23)
    {
LABEL_38:

      if (v33)
      {
        goto LABEL_39;
      }

      goto LABEL_46;
    }

    if (v29)
    {
      v22 = v27;
      v23 = v29;
      if (v31)
      {
LABEL_39:
        if (v22 == v32 && v23 == v33)
        {

LABEL_51:

          goto LABEL_52;
        }

        v35 = sub_24A82DC04();

        if (v35)
        {
          goto LABEL_51;
        }
      }

LABEL_46:
      if (qword_27EF5CC18 != -1)
      {
        swift_once();
      }

      v45 = MEMORY[0x277D837D0];
      v43 = v22;
      v44 = v23;
      swift_beginAccess();

      sub_24A7BE868(&v43, 3);
      swift_endAccess();
      v36 = sub_24A82CF94();

      v37 = sub_24A82CF94();
      v38 = sub_24A82CF94();
      [v12 setString:v36 forKey:v37 inDomain:v38];

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_24A7C5A30(3u, result);
        result = swift_unknownObjectRelease();
      }

      goto LABEL_52;
    }
  }

  else
  {
    result = sub_24A7BF534(3, 0, 0);
    v33 = v34;
    if (v23)
    {
      v32 = result;
      goto LABEL_38;
    }
  }

  if (v33)
  {
    goto LABEL_51;
  }

LABEL_52:
  if (*(a1 + 16))
  {
    result = sub_24A6A2D48(0xD000000000000019, 0x800000024A843EB0);
    if (v39)
    {
      sub_24A67E168(*(a1 + 56) + 32 * result, &v43);
      v40 = MEMORY[0x277D83B88];
      result = swift_dynamicCast();
      if (result)
      {
        if (qword_27EF5CC18 != -1)
        {
          swift_once();
        }

        v45 = v40;
        v43 = v41;
        swift_beginAccess();
        sub_24A7BE868(&v43, 0);
        return swift_endAccess();
      }
    }
  }

  return result;
}

double sub_24A7C3D80()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24A7C3DCC()
{
  v1 = sub_24A82CA34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_24A82CA24();
  v6 = qword_281518F30;
  swift_beginAccess();
  (*(v2 + 40))(v5 + v6, v4, v1);
  return swift_endAccess();
}

double sub_24A7C3F0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_24A6A2D48(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A6A62AC();
      v10 = v12;
    }

    sub_24A6A50DC((*(v10 + 56) + 32 * v8), a3);
    sub_24A7C4524(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_24A7C3FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_24A6A2D48(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A78629C();
      v10 = v17;
    }

    v11 = *(v10 + 56) + 24 * v8;
    v12 = *(v11 + 1);
    v13 = *(v11 + 2);
    v14 = *(v11 + 3);
    v15 = *(v11 + 8);
    v16 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 1) = v12;
    *(a3 + 2) = v13;
    *(a3 + 3) = v14;
    *(a3 + 8) = v15;
    *(a3 + 16) = v16;
    result = sub_24A7C46D4(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_24A7C4080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24A6A2D48(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A786440();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
    v19 = *(v12 - 8);
    sub_24A67E8FC(v11 + *(v19 + 72) * v8, a3, &unk_27EF5E150, &unk_24A83CCC0);
    sub_24A7C4890(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_24A7C4208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24A6A2D48(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A787468();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for FMIPMonitoredDevice(0);
    v19 = *(v12 - 8);
    sub_24A68D690(v11 + *(v19 + 72) * v8, a3, type metadata accessor for FMIPMonitoredDevice);
    sub_24A7C4F64(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for FMIPMonitoredDevice(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_24A7C4374(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    do
    {
      sub_24A82DCC4();

      sub_24A82D094();
      v9 = sub_24A82DD24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A7C4524(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    do
    {
      sub_24A82DCC4();

      sub_24A82D094();
      v10 = sub_24A82DD24();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A7C46D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    do
    {
      sub_24A82DCC4();

      sub_24A82D094();
      v10 = sub_24A82DD24();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A7C4890(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    while (1)
    {
      sub_24A82DCC4();

      sub_24A82D094();
      v9 = sub_24A82DD24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A7C4A94(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    do
    {
      sub_24A82DCC4();

      sub_24A82D094();
      v9 = sub_24A82DD24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A7C4C44(int64_t a1, uint64_t a2)
{
  v40 = sub_24A82CAA4();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_24A82D6D4();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_24A67A06C(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_24A82CF54();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_24A7C4F64(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    while (1)
    {
      sub_24A82DCC4();

      sub_24A82D094();
      v9 = sub_24A82DD24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for FMIPMonitoredDevice(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A7C5150(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A82D6D4() + 1) & ~v5;
    do
    {
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A7C5384(int64_t a1, uint64_t a2)
{
  v40 = sub_24A82CAA4();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_24A82D6D4();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_24A67A06C(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_24A82CF54();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + a1);
          v30 = (v28 + v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_24A7C56A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A7BF0A0(*(v1 + 16), **(v1 + 24), *(*(v1 + 24) + 8));
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_24A7C56E0()
{
  result = qword_27EF5EE48;
  if (!qword_27EF5EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE48);
  }

  return result;
}

uint64_t sub_24A7C5794(uint64_t a1)
{
  result = type metadata accessor for FMIPDevice(319);
  if (v2 <= 0x3F)
  {
    result = sub_24A7C5820();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24A7C5820()
{
  result = qword_27EF5EE68;
  if (!qword_27EF5EE68)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EF5EE68);
  }

  return result;
}

uint64_t sub_24A7C5870(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);

  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_24A68761C(a1, a2, v15);
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPManager: didReceive new image version: %s", v9, 0xCu);
    sub_24A6876E8(v10);
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v11 = a3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 96))(a3, a1, a2, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7C5A30(unsigned __int8 a1, uint64_t a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315138;
    v9 = 0xEF64656C62616E45;
    v10 = 0x626154736D657469;
    if (a1 != 2)
    {
      v10 = 0xD000000000000010;
      v9 = 0x800000024A843F00;
    }

    v11 = 0x800000024A843EB0;
    v12 = 0xD000000000000014;
    if (a1)
    {
      v11 = 0x800000024A843ED0;
    }

    else
    {
      v12 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    if (a1 <= 1u)
    {
      v14 = v11;
    }

    else
    {
      v14 = v9;
    }

    v15 = sub_24A68761C(v13, v14, v21);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: didChangeServerConfiguration: %s", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v16 = a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    v20 = a1;
    (*(v18 + 104))(a2, &v20, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7C5C70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_24A82CE54();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPDevice(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  sub_24A68FE6C(a1, v13, type metadata accessor for FMIPDevice);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = v1;
    v18 = v17;
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v18 = 136315394;
    *(v18 + 4) = sub_24A68761C(0x6E756F5379616C70, 0xE900000000000064, aBlock);
    *(v18 + 12) = 2080;
    v19 = FMIPDevice.debugDescription.getter();
    v20 = v7;
    v21 = a1;
    v23 = v22;
    sub_24A69010C(v13, type metadata accessor for FMIPDevice);
    v24 = sub_24A68761C(v19, v23, aBlock);
    a1 = v21;
    v7 = v20;
    v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPServerInteractionController: stopMonitoring: action: %s, device: %s", v18, 0x16u);
    v25 = v34;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v25, -1, -1);
    v26 = v18;
    v2 = v35;
    MEMORY[0x24C21E1D0](v26, -1, -1);
  }

  else
  {

    sub_24A69010C(v13, type metadata accessor for FMIPDevice);
  }

  sub_24A68FE6C(a1, v11, type metadata accessor for FMIPDevice);
  v27 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  sub_24A68D690(v11, v28 + v27, type metadata accessor for FMIPDevice);
  aBlock[4] = sub_24A7C61FC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCA550;
  v29 = _Block_copy(aBlock);

  sub_24A82CE24();
  v42 = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v30 = v38;
  v31 = v41;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v7, v30, v29);
  _Block_release(v29);
  (*(v40 + 8))(v30, v31);
  (*(v37 + 8))(v7, v39);
}

uint64_t sub_24A7C61FC()
{
  v1 = *(type metadata accessor for FMIPDevice(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_24A7C1C0C(v2, v3);
}

uint64_t sub_24A7C6268()
{
  v1 = *(type metadata accessor for FMIPMonitoredDevice(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FMIPDevice(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24A7C26F8(v0 + v2, v0 + v5, v6);
}

uint64_t sub_24A7C6360()
{
  v1 = *(type metadata accessor for FMIPDevice(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_24A7C1A2C((v0 + v2), v6, v7, v8);
}

unint64_t sub_24A7C642C()
{
  result = qword_27EF5EE88;
  if (!qword_27EF5EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EE88);
  }

  return result;
}

uint64_t sub_24A7C6480(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A681458(result, a2);
  }

  return result;
}

uint64_t sub_24A7C6494(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A69BD40;

  return sub_24A7C0658(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24A7C6598(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5EE78, &unk_24A83CC90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FMIPDeviceLostModeMetadata.ownerNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FMIPDeviceLostModeMetadata.email.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FMIPDeviceLostModeMetadata.message.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FMIPDeviceLostModeMetadata.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPDeviceLostModeMetadata(0) + 48);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24A7C6774()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A821900(v3, v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7C67C4(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A821900(v4, v2);
  return sub_24A82DD24();
}

unint64_t sub_24A7C6808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A7C6FB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24A7C6838@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A68EBCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A7C6864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7C6FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7C6898(uint64_t a1)
{
  v2 = sub_24A6882B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7C68D4(uint64_t a1)
{
  v2 = sub_24A6882B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void FMIPDeviceLostModeMetadata.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5EEA0, &unk_24A83CCE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v10 = v1;
  v8 = sub_24A82C994();
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6882B0();
  sub_24A82DD84();
  [v8 fm_epoch];
  LOBYTE(v11) = 8;
  sub_24A82DB54();
  if (!v2)
  {
    v11 = qword_24A83CF40[*(v10 + 56)];
    sub_24A82DB84();
    LOBYTE(v11) = 4;
    sub_24A82DB04();

    LOBYTE(v11) = 6;
    sub_24A82DB04();
    LOBYTE(v11) = 1;
    sub_24A82DB04();
    LOBYTE(v11) = 2;
    sub_24A82DB04();
    LOBYTE(v11) = 5;
    sub_24A82DB14();
    LOBYTE(v11) = 0;
    sub_24A82DB14();
    LOBYTE(v11) = 3;
    sub_24A82DB14();
    LOBYTE(v11) = 7;
    sub_24A82DB14();
  }

  (*(v5 + 8))(v7, v4);
}

double FMIPDeviceLostModeMetadata.init(lostModeInfo:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_24A82CA34();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = [a1 timestamp];
  if (v14)
  {
    v15 = v14;
    sub_24A82C9F4();

    v16 = *(v8 + 32);
    v16(v6, v11, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v16(v13, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_24A82C964();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_24A793F90(v6);
    }
  }

  v17 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  (*(v8 + 32))(a2 + *(v17 + 48), v13, v7);
  v18 = [a1 message];
  if (v18)
  {
    v19 = v18;
    v20 = sub_24A82CFC4();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  *(a2 + 40) = v20;
  *(a2 + 48) = v22;
  v23 = [a1 email];
  if (v23)
  {
    v24 = v23;
    v25 = sub_24A82CFC4();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  *(a2 + 24) = v25;
  *(a2 + 32) = v27;
  v28 = [a1 phoneNumber];
  if (v28)
  {
    v29 = v28;
    v30 = sub_24A82CFC4();
    v32 = v31;
  }

  else
  {

    v30 = 0;
    v32 = 0xE000000000000000;
  }

  *(a2 + 8) = v30;
  *(a2 + 16) = v32;
  *&result = 0x100000001;
  *a2 = 1;
  *(a2 + 56) = 2;
  return result;
}

unint64_t sub_24A7C6F60()
{
  result = qword_27EF5EEA8;
  if (!qword_27EF5EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EEA8);
  }

  return result;
}

unint64_t sub_24A7C6FB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A7C7004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24A82D6C4();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *&v15 = sub_24A7C76B8(&v16, result, *(a1 + 36), 0, a1);
    *(&v15 + 1) = v5;
    v6 = v16;
    v7 = BYTE1(v16);
    v8 = BYTE2(v16);
    v9 = BYTE3(v16);
    v10 = *(&v16 + 1);
    v11 = v17;
    *&v18 = v15;
    *(&v18 + 1) = v5;
    LODWORD(v19) = v16;
    *(&v19 + 1) = *(&v16 + 1);
    v20 = v17;
    v12 = v18;
    v13 = v19;
    *(a2 + 32) = v17;
    *a2 = v12;
    *(a2 + 16) = v13;
    v21[0] = v15;
    v21[1] = v5;
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;

    v14 = v10;
    sub_24A7C7BD4(&v18, v28);
    sub_24A67F378(v21, &qword_27EF5DF40, &qword_24A837160);
    v28[0] = v15;
    v28[1] = v16;
    v29 = v17;
    return sub_24A67F378(v28, &qword_27EF5DF40, &qword_24A837160);
  }

  return result;
}

uint64_t sub_24A7C71D0(uint64_t a1, int a2, void *a3, char *a4, double a5)
{
  LODWORD(v8) = a2;
  v10 = sub_24A82CDF4();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82CE54();
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A7C7004(a1, &aBlock);
  if (v40)
  {
    a5 = *&v43;
    v8 = v41;
    v16 = v42;

    v17 = (v8 >> 8) & 1;
    v18 = (v8 >> 16) & 1;
    v19 = v8 >> 24;
  }

  else
  {
    LODWORD(v18) = (v8 >> 16) & 1;
    LODWORD(v17) = (v8 >> 8) & 1;
    LODWORD(v19) = v8 >> 24;
    v16 = a3;
  }

  v20 = 256;
  if (!v17)
  {
    v20 = 0;
  }

  v21 = v20 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v22 = 0x10000;
  if (!v18)
  {
    v22 = 0;
  }

  v23 = (v21 | v22) & 0xFFFFFFFF00FFFFFFLL | (v19 << 24);
  v24 = &a4[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_currentLocation];
  v25 = *&a4[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_currentLocation + 8];
  *v24 = v23;
  *(v24 + 1) = v16;
  *(v24 + 2) = a5;
  v26 = v16;

  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = v8 & 1;
  *(v27 + 25) = v17;
  *(v27 + 26) = v18;
  *(v27 + 27) = v19;
  *(v27 + 32) = v26;
  *(v27 + 40) = a5;
  v43 = sub_24A7C7B90;
  v44 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_24A699BA0;
  v42 = &unk_285DCA838;
  v28 = _Block_copy(&aBlock);
  v29 = v26;
  v30 = a4;
  sub_24A82CE24();
  v38 = MEMORY[0x277D84F90];
  sub_24A695668(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v31 = v37;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v15, v12, v28);
  _Block_release(v28);

  (*(v36 + 8))(v12, v31);
  (*(v34 + 8))(v15, v35);
}

void sub_24A7C7560(char *a1, int a2, void *a3, double a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = a2 & 0x101;
    v10 = BYTE2(a2) & 1;
    v11 = HIBYTE(a2);
    v12 = a3;
    v13 = a4;
    v8 = a3;
    sub_24A74A7F0(a1, &v9);
    swift_unknownObjectRelease();
  }
}

id FMIPLocationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMIPLocationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A7C76B8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *(v6 + 1);
    v8 = *(v6 + 2);
    v9 = *(v6 + 3);
    v10 = *(v6 + 8);
    v11 = *(v6 + 16);
    *result = *v6;
    *(result + 1) = v7;
    *(result + 2) = v8;
    *(result + 3) = v9;
    *(result + 8) = v10;
    *(result + 16) = v11;

    v12 = v10;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_24A7C7778(void *a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = a1;
  oslog = sub_24A82CD94();
  v4 = sub_24A82D4E4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_24A82DC74();
    v9 = sub_24A68761C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A675000, oslog, v4, "FMIPLocationController: location manager failed with error: %s", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  else
  {
  }
}

void *sub_24A7C7910()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0EBC8]) init];
  if (v0)
  {
    v1 = v0;
    v2 = 36;
    v3 = &unk_285DBF5C8;
    do
    {
      v4 = [objc_allocWithZone(MEMORY[0x277D0EB58]) initWithLatitude:*v3 longitude:*(v3 - 1)];
      [v1 addVertex_];

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);
    v6 = sub_24A82CD94();
    v7 = sub_24A82D4E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24A675000, v6, v7, "Unable to instantiate GEOMapRegion for denylist region.", v8, 2u);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_24A7C7B4C(uint64_t a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 16);
  if (*(v1 + 18))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_24A7C71D0(a1, v3 | v4 | (*(v1 + 19) << 24), *(v1 + 24), *(v1 + 40), *(v1 + 32));
}

void sub_24A7C7B90()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  sub_24A7C7560(*(v0 + 16), v2 | v3 | (*(v0 + 27) << 24), *(v0 + 32), *(v0 + 40));
}

uint64_t sub_24A7C7BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DF40, &qword_24A837160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPPlaySoundChannels.description.getter()
{
  v1 = 0xE400000000000000;
  v2 = *v0;
  v3 = 1952867692;
  v4 = 0xE400000000000000;
  v5 = 1702060387;
  v6 = 0xEA0000000000656ELL;
  v7 = 0x6F6C61646E617473;
  if (v2 != 3)
  {
    v7 = 1702131053;
    v6 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v0)
  {
    v3 = 0x7468676972;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v0 <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  return 46;
}

uint64_t FMIPPlaySoundChannels.rawValue.getter()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 1702060387;
  v4 = 0x6F6C61646E617473;
  if (v1 != 3)
  {
    v4 = 1702131053;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7468676972;
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

FMIPCore::FMIPPlaySoundChannels_optional __swiftcall FMIPPlaySoundChannels.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A7C7DF8()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7C7EC4(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7C7F7C(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7C8050(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  v5 = 0xE400000000000000;
  v6 = 1702060387;
  v7 = 0xEA0000000000656ELL;
  v8 = 0x6F6C61646E617473;
  if (v2 != 3)
  {
    v8 = 1702131053;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7468676972;
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

uint64_t sub_24A7C80D8()
{
  v1 = 0xE400000000000000;
  v2 = *v0;
  v3 = 1952867692;
  v4 = 0xE400000000000000;
  v5 = 1702060387;
  v6 = 0xEA0000000000656ELL;
  v7 = 0x6F6C61646E617473;
  if (v2 != 3)
  {
    v7 = 1702131053;
    v6 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v0)
  {
    v3 = 0x7468676972;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v0 <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  return 46;
}

FMIPCore::FMIPPlaySoundReason_optional __swiftcall FMIPPlaySoundReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPPlaySoundReason.rawValue.getter()
{
  v1 = 0x6E756F5379616C50;
  v2 = 0x6F536574756D6E55;
  if (*v0 != 2)
  {
    v2 = 0x6E756F53706F7453;
  }

  if (*v0)
  {
    v1 = 0x6E756F536574754DLL;
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

unint64_t sub_24A7C8280()
{
  result = qword_27EF5EF78;
  if (!qword_27EF5EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EF78);
  }

  return result;
}

unint64_t sub_24A7C82E4()
{
  result = qword_27EF5EF80;
  if (!qword_27EF5EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EF80);
  }

  return result;
}

uint64_t sub_24A7C8338()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7C8400(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7C84B4(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7C8584(uint64_t *a1@<X8>)
{
  v2 = 0x6E756F5379616C50;
  v3 = 0xEB00000000646E75;
  v4 = 0x6F536574756D6E55;
  if (*v1 != 2)
  {
    v4 = 0x6E756F53706F7453;
    v3 = 0xE900000000000064;
  }

  if (*v1)
  {
    v2 = 0x6E756F536574754DLL;
  }

  if (*v1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 <= 1u)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = v3;
  }

  *a1 = v5;
  a1[1] = v6;
}

uint64_t type metadata accessor for FMIPPlaySoundRequest(uint64_t a1)
{
  result = qword_27EF5EF88;
  if (!qword_27EF5EF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7C8674(uint64_t a1)
{
  result = type metadata accessor for FMIPDevice(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A7C8724()
{
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_24A82C6F4();

  v4 = [v2 bundleForClass_];
  sub_24A82C6F4();

  v5 = v0 + qword_27EF78F00;
  if ((*(v0 + qword_27EF78F00 + 217) & 2) == 0)
  {
    v6 = *(v5 + 104);
    v7 = *(v5 + 112);
    v8 = v6 == 1684099177 && v7 == 0xE400000000000000;
    if (!v8 && (sub_24A82DC04() & 1) == 0 && (v6 != 1685016681 || v7 != 0xE400000000000000) && (sub_24A82DC04() & 1) == 0 && (v6 != 0x726F737365636341 || v7 != 0xE900000000000079))
    {
      sub_24A82DC04();
    }
  }

  v9 = [v2 bundleForClass_];
  v10 = sub_24A82C6F4();
  v12 = v11;

  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24A8327A0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_24A6B243C();
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  v14 = sub_24A82CFF4();

  return v14;
}

uint64_t sub_24A7C8AB4()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78F08);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v55 = v1;
    *&v58 = MEMORY[0x277D84F90];
    sub_24A6FC900(0, v3, 0);
    v4 = v58;
    v5 = (v2 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 == 3;
      if (v7 == 3)
      {
        v9 = 0x6F6C61646E617473;
      }

      else
      {
        v9 = 1702131053;
      }

      if (v8)
      {
        v10 = 0xEA0000000000656ELL;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      if (v6 == 2)
      {
        v9 = 1702060387;
        v10 = 0xE400000000000000;
      }

      if (v6)
      {
        v11 = 0x7468676972;
      }

      else
      {
        v11 = 1952867692;
      }

      if (v6)
      {
        v12 = 0xE500000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      if (v6 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      *&v58 = v4;
      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24A6FC900((v15 > 1), v16 + 1, 1);
        v4 = v58;
      }

      *(v4 + 16) = v16 + 1;
      v17 = v4 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      --v3;
    }

    while (v3);
    v1 = v55;
  }

  v59 = sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
  *&v58 = v4;
  v18 = qword_27EF5D920;
  v19 = *(v1 + qword_27EF5D920);

  os_unfair_lock_lock((v19 + 24));
  v20 = *(v19 + 16);

  os_unfair_lock_unlock((v19 + 24));

  v57 = v20;
  if (v59)
  {
    sub_24A6A50DC(&v58, v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = sub_24A6A4F8C(v56, 0x736C656E6E616863, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_24A6F6C40(&v58);
    sub_24A7C3F0C(0x736C656E6E616863, 0xE800000000000000, v56);
    v22 = sub_24A6F6C40(v56);
  }

  v23 = *(v1 + v18);
  MEMORY[0x28223BE20](v22);

  os_unfair_lock_lock((v23 + 24));
  sub_24A6A3D28((v23 + 16));
  os_unfair_lock_unlock((v23 + 24));

  v24 = MEMORY[0x277D837D0];
  v26 = *(v1 + qword_27EF78F00);
  v25 = *(v1 + qword_27EF78F00 + 8);
  v59 = MEMORY[0x277D837D0];
  *&v58 = v26;
  *(&v58 + 1) = v25;
  v27 = *(v1 + v18);

  os_unfair_lock_lock((v27 + 24));
  v28 = *(v27 + 16);

  os_unfair_lock_unlock((v27 + 24));

  sub_24A6A50DC(&v58, v56);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v28;
  v30 = sub_24A6A4F8C(v56, 0x656369766564, 0xE600000000000000, v29);
  v31 = *(v1 + v18);
  MEMORY[0x28223BE20](v30);

  os_unfair_lock_lock((v31 + 24));
  sub_24A6FF740((v31 + 16));
  os_unfair_lock_unlock((v31 + 24));

  v32 = sub_24A7C8724();
  v59 = v24;
  *&v58 = v32;
  *(&v58 + 1) = v33;
  v34 = *(v1 + v18);

  os_unfair_lock_lock((v34 + 24));
  v35 = *(v34 + 16);

  os_unfair_lock_unlock((v34 + 24));

  sub_24A6A50DC(&v58, v56);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v35;
  v37 = sub_24A6A4F8C(v56, 0x7463656A627573, 0xE700000000000000, v36);
  v38 = *(v1 + v18);
  MEMORY[0x28223BE20](v37);

  os_unfair_lock_lock((v38 + 24));
  sub_24A6FF740((v38 + 16));
  os_unfair_lock_unlock((v38 + 24));

  v39 = *(v2 + 16);
  v40 = 0x6E756F5379616C50;
  if (v39 == 1)
  {
    v40 = 0x6E756F536574754DLL;
  }

  v8 = v39 == 0;
  v41 = 0x6E756F53706F7453;
  if (!v8)
  {
    v41 = v40;
  }

  v59 = v24;
  *&v58 = v41;
  *(&v58 + 1) = 0xE900000000000064;
  v42 = *(v1 + v18);

  os_unfair_lock_lock((v42 + 24));
  v43 = *(v42 + 16);

  os_unfair_lock_unlock((v42 + 24));

  sub_24A6A50DC(&v58, v56);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v43;
  v45 = sub_24A6A4F8C(v56, 0x6974634172657375, 0xEA00000000006E6FLL, v44);
  v46 = *(v1 + v18);
  MEMORY[0x28223BE20](v45);

  os_unfair_lock_lock((v46 + 24));
  sub_24A6FF740((v46 + 16));
  os_unfair_lock_unlock((v46 + 24));

  v47 = sub_24A7C9288();
  v48 = sub_24A82D5B4();
  v59 = v47;
  *&v58 = v48;
  v49 = *(v1 + v18);

  os_unfair_lock_lock((v49 + 24));
  v50 = *(v49 + 16);

  os_unfair_lock_unlock((v49 + 24));

  v57 = v50;
  if (v47)
  {
    sub_24A6A50DC(&v58, v56);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v52 = sub_24A6A4F8C(v56, 0xD00000000000001ALL, 0x800000024A8495C0, v51);
  }

  else
  {
    sub_24A6F6C40(&v58);
    sub_24A7C3F0C(0xD00000000000001ALL, 0x800000024A8495C0, v56);
    v52 = sub_24A6F6C40(v56);
  }

  v53 = *(v1 + v18);
  MEMORY[0x28223BE20](v52);

  os_unfair_lock_lock((v53 + 24));
  sub_24A6FF740((v53 + 16));
  os_unfair_lock_unlock((v53 + 24));
}

uint64_t sub_24A7C91AC()
{
  sub_24A6FE094(v0 + qword_27EF78F00);
}

uint64_t sub_24A7C91EC()
{
  sub_24A6F8F90();
  v0 = qword_27EF78F00;

  sub_24A6FE094(v1 + v0);

  return swift_deallocClassInstance();
}

unint64_t sub_24A7C9288()
{
  result = qword_27EF5EF98;
  if (!qword_27EF5EF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5EF98);
  }

  return result;
}

uint64_t FMReverseGeocodingCache.__allocating_init(preferredLocale:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FMReverseGeocodingCache.init(preferredLocale:)(a1);
  return v2;
}

void *FMReverseGeocodingCache.init(preferredLocale:)(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = *v1;
  v4 = sub_24A82D554();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82D534();
  MEMORY[0x28223BE20](v6);
  v7 = sub_24A82CE54();
  MEMORY[0x28223BE20](v7 - 8);
  sub_24A82CA04();
  v8 = qword_27EF5EFA8;
  type metadata accessor for FMReverseGeocodingCache.FMReverseGeocodingCacheContext(0, *(v3 + 80), *(v3 + 88), v9);
  *(v2 + v8) = sub_24A82CEB4();
  v10 = qword_27EF5EFB0;
  *(v2 + v10) = sub_24A82CEB4();
  *(v2 + qword_27EF5EFB8) = MEMORY[0x277D84F98];
  *(v2 + qword_27EF5EFC0) = 0;
  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_27EF78C00);

  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    v16 = sub_24A82DDB4();
    v18 = sub_24A68761C(v16, v17, &v29);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_24A675000, v12, v13, "%s: initialized", v14, 0xCu);
    sub_24A6876E8(v15);
    MEMORY[0x24C21E1D0](v15, -1, -1);
    MEMORY[0x24C21E1D0](v14, -1, -1);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD000000000000022, 0x800000024A849680);
  v20 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v20);

  MEMORY[0x24C21C9E0](0x6974617265706F2ELL, 0xEF65756575516E6FLL);
  v21 = sub_24A82CF94();

  [v19 setName_];

  [v19 setMaxConcurrentOperationCount_];
  sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_24A82D854();

  v29 = 0xD000000000000022;
  v30 = 0x800000024A849680;
  v22 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v22);

  MEMORY[0x24C21C9E0](0x737365636F72702ELL, 0xED00006575657551);
  sub_24A82CE44();
  v29 = MEMORY[0x277D84F90];
  sub_24A7C98D0();
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A7964DC();
  sub_24A82D6B4();
  (*(v26 + 104))(v25, *MEMORY[0x277D85260], v27);
  v23 = sub_24A82D594();
  *(v2 + qword_27EF5EFC8) = v19;
  sub_24A67FC08(v28, v2 + qword_27EF78F28);
  *(v2 + qword_27EF5EFD0) = v23;
  return v2;
}

unint64_t sub_24A7C98D0()
{
  result = qword_2815146D0;
  if (!qword_2815146D0)
  {
    sub_24A82D534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815146D0);
  }

  return result;
}

uint64_t FMReverseGeocodingCache.deinit()
{
  v1 = qword_27EF5EFA0;
  v2 = sub_24A82CA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24A793A8C(v0 + qword_27EF78F28);
  return v0;
}

uint64_t FMReverseGeocodingCache.__deallocating_deinit()
{
  FMReverseGeocodingCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A7C9A40(uint64_t (*a1)(void))
{
  a1();

  return sub_24A82DDB4();
}

uint64_t sub_24A7C9AC4(uint64_t a1)
{
  result = sub_24A679170(319, &qword_27EF5D830, 0x277CE41F8);
  if (v2 <= 0x3F)
  {
    result = sub_24A82CA34();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24A7C9B8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24A82CA34() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = *(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (*(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) == -1)
  {
    v22 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v21 = *(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + 1;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  return v14 + (v22 | v20) + 1;
}

void sub_24A7C9E28(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24A82CA34() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v10 + 64) + ((v13 + ((v12 + 40) & ~v12) + v14) & ~v14) + 1;
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (*(v10 + 64) + ((v13 + ((v12 + 40) & ~v12) + v14) & ~v14) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v24 = *(v8 + 56);

      v24((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, a2);
    }

    else
    {
      v25 = *(v10 + 56);

      v25((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t sub_24A7CA1E4(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F0F8, &unk_24A83D568);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7CE178();
  sub_24A82DD84();
  v8[15] = 0;
  sub_24A82DB34();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24A82DB34();
  v8[13] = 2;
  sub_24A82DB34();
  v8[12] = 3;
  sub_24A82DB34();
  v8[11] = 4;
  sub_24A82DB34();
  v8[10] = 5;
  sub_24A82DB34();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24A7CA3E4()
{
  v1 = *v0;
  v2 = 0x3156676174726961;
  v3 = 0x3256616E6D66;
  if (v1 != 3)
  {
    v3 = 0x6E6D66656C707061;
  }

  v4 = 0x3256676174726961;
  if (v1 != 1)
  {
    v4 = 0x3156616E6D66;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_24A7CA4A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A7CDD44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A7CA4C8(uint64_t a1)
{
  v2 = sub_24A7CE178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7CA504(uint64_t a1)
{
  v2 = sub_24A7CE178();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A7CA540@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_24A7CDF3C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

void sub_24A7CA59C()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  oslog = sub_24A82CD94();
  v3 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (*(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_24A68761C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24A675000, oslog, v3, "FMIPRefreshingController: auto refreshing set to: %s", v4, 0xCu);
    sub_24A6876E8(v5);
    MEMORY[0x24C21E1D0](v5, -1, -1);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }
}

uint64_t sub_24A7CA72C()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v21);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPRefreshingController<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  sub_24A6BAF88(v1 + 32);
  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_selectedDevice, &qword_27EF5DF08, &qword_24A837770);
  sub_24A6876E8((v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController));

  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_lastRefreshTime, &qword_27EF5E0E0, &qword_24A836D90);

  return v1;
}

uint64_t sub_24A7CA99C()
{
  sub_24A7CA72C();

  return swift_deallocClassInstance();
}

uint64_t sub_24A7CA9FC(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A82CDC4();
    sub_24A6797D0(v7, qword_281518F88);
    v8 = sub_24A82CD94();
    v9 = sub_24A82D504();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24A675000, v8, v9, "FMIPRefreshingController: initClientRequest completed", v10, 2u);
      MEMORY[0x24C21E1D0](v10, -1, -1);
    }

    if (!a1)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_39:
        *(v6 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isInitializing) = 0;
      }

      sub_24A74F980(a2);
LABEL_37:
      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    v11 = *(a1 + 24);
    if (!v11)
    {
      swift_retain_n();
LABEL_27:
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (*(a1 + 56))
        {
          v52 = *(a1 + 56);
        }

        else
        {
          v52 = MEMORY[0x277D84F90];
        }

        sub_24A750128(v52);

        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_24A74FDAC();
        swift_unknownObjectRelease();
      }

      v53 = *(a1 + 40);

      if (v53 != 1 || !swift_unknownObjectWeakLoadStrong())
      {

        goto LABEL_39;
      }

      sub_24A74F7E0();

      goto LABEL_37;
    }

    v12 = *(v11 + 16);
    v13 = *(v11 + 32);
    v14 = *(v11 + 48);
    v15 = *(v11 + 80);
    v81 = *(v11 + 64);
    v82 = v15;
    v83 = *(v11 + 96);
    v79 = v13;
    v80 = v14;
    v78 = v12;
    v16 = *(a1 + 16);
    v67 = v6;
    v68 = v11;
    v17 = *(v6 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber + 8);
    v57 = *(v6 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber);
    v69 = a1;
    if (v16)
    {
      v18 = *(v16 + 16);
      swift_retain_n();

      if (v18)
      {
        sub_24A6EF948(&v78, &v72);

        v19 = sub_24A6A2D48(0x4153487369, 0xE500000000000000);
        if (v20)
        {
          v58 = v17;
          sub_24A67E168(*(v16 + 56) + 32 * v19, v70);

          if (swift_dynamicCast())
          {
            v64 = v72;
            v21 = *(&v78 + 1);
            v61 = v78;
            v22 = *(&v79 + 1);
            v55 = v79;
            v23 = *(&v80 + 1);
            v24 = v81;
            v25 = BYTE2(v80);
            v26 = BYTE1(v80);
            v27 = *(&v81 + 1);
            v30 = *(&v82 + 1);
            v29 = v82;
            v28 = v83;

            sub_24A6EF9B4(&v78);
            v31 = v21;
            v32 = v22;
            v33 = v26;
            v34 = v55;
            v35 = v25;
            v36 = v64;
            v37 = v27;
            v39 = v58;
            v38 = v61;
            v40 = v80;
            if (!v58)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v30 = *(&v82 + 1);
            v28 = v83;
            v37 = *(&v81 + 1);
            v29 = v82;
            v23 = *(&v80 + 1);
            v24 = v81;
            v36 = BYTE3(v80);
            v35 = BYTE2(v80);
            v33 = BYTE1(v80);
            v32 = *(&v79 + 1);
            v34 = v79;
            v31 = *(&v78 + 1);
            v38 = v78;
            v39 = v58;
            v40 = v80;
            if (!v58)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_22;
        }

        v39 = v17;
      }

      else
      {
        sub_24A6EF948(&v78, &v72);
        v39 = v17;
      }

      v30 = *(&v82 + 1);
      v28 = v83;
      v37 = *(&v81 + 1);
      v29 = v82;
      v23 = *(&v80 + 1);
      v24 = v81;
      v36 = BYTE3(v80);
      v35 = BYTE2(v80);
      v33 = BYTE1(v80);
      v32 = *(&v79 + 1);
      v34 = v79;
      v31 = *(&v78 + 1);
      v38 = v78;
      v40 = v80;
      if (!v39)
      {
LABEL_23:
        *&v72 = v38;
        *(&v72 + 1) = v31;
        *&v73 = v34;
        *(&v73 + 1) = v32;
        LOBYTE(v74) = v40;
        BYTE1(v74) = v33;
        BYTE2(v74) = v35;
        BYTE3(v74) = v36;
        *(&v74 + 1) = v23;
        *&v75 = v24;
        *(&v75 + 1) = v37;
        *&v76 = v29;
        *(&v76 + 1) = v30;
        v77 = v28;
        v6 = v67;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v70[2] = v74;
          v70[3] = v75;
          v70[4] = v76;
          v71 = v77;
          v70[0] = v72;
          v70[1] = v73;
          v51 = *(v68 + 104);

          sub_24A750480(v70, v51);

          swift_unknownObjectRelease();
          sub_24A6EF9B4(&v72);
        }

        else
        {
          sub_24A6EF9B4(&v72);
        }

        a1 = v69;
        goto LABEL_27;
      }
    }

    else
    {
      v65 = *(&v81 + 1);
      v54 = v83;
      v56 = v82;
      v24 = v81;
      v59 = *(&v82 + 1);
      v62 = *(&v80 + 1);
      v41 = BYTE3(v80);
      v42 = BYTE2(v80);
      v43 = BYTE1(v80);
      v44 = *(&v79 + 1);
      v34 = v79;
      v45 = *(&v78 + 1);
      v38 = v78;
      swift_retain_n();
      v39 = v17;

      sub_24A6EF948(&v78, &v72);

      v31 = v45;
      v32 = v44;
      v33 = v43;
      v35 = v42;
      v36 = v41;
      v28 = v54;
      v29 = v56;
      v30 = v59;
      v23 = v62;
      v37 = v65;
      v40 = v80;
      if (!v39)
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    *&v72 = v38;
    *(&v72 + 1) = v31;
    *&v73 = v34;
    *(&v73 + 1) = v32;
    LOBYTE(v74) = v40;
    BYTE1(v74) = v33;
    BYTE2(v74) = v35;
    BYTE3(v74) = v36;
    *(&v74 + 1) = v23;
    *&v75 = v24;
    *(&v75 + 1) = v37;
    *&v76 = v29;
    *(&v76 + 1) = v30;
    v77 = v28;
    v46 = v32;
    v47 = v31;
    v63 = v23;
    v66 = v37;
    v48 = v35;
    v60 = v39;
    v49 = v33;
    v50 = v40;

    sub_24A6EF9B4(&v72);
    v40 = v50;
    v31 = v47;
    v32 = v46;
    v33 = v49;
    v35 = v48;
    v23 = v63;
    v37 = v66;
    v30 = v57;
    v28 = v60;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_24A7CAFA4(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing) = 1;
  sub_24A7CA59C();
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 24);
  v3 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 32);
  sub_24A67DF6C((a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController), v2);
  (*(v3 + 64))(v2, v3);
  sub_24A69A660();
  return sub_24A7CB348(0.0);
}

uint64_t sub_24A7CB038()
{
  v1 = sub_24A82CDF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue);
  aBlock[4] = sub_24A7CE304;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCADC8;
  v8 = _Block_copy(aBlock);

  sub_24A82CE24();
  v12 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

id sub_24A7CB2E0(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing) = 0;
  sub_24A7CA59C();
  sub_24A790F48();
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshTimer);

  return [v2 invalidate];
}

uint64_t sub_24A7CB348(double a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CE54();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_maxCallbackInterval) < a1)
  {
    a1 = *(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_maxCallbackInterval);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);

  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    swift_beginAccess();
    v15 = *(v10 + 16);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_callbackInterval);
    _os_log_impl(&dword_24A675000, v12, v13, "FMIPRefreshingController: scheduleNextRefresh scheduling next target interval: %f callback: %f", v14, 0x16u);
    MEMORY[0x24C21E1D0](v14, -1, -1);
  }

  else
  {
  }

  v20 = *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v10;
  aBlock[4] = sub_24A7CE1D4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCAD78;
  v18 = _Block_copy(aBlock);

  sub_24A82CE24();
  v24 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v6, v18);
  _Block_release(v18);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
}

void sub_24A7CB7A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing) == 1)
    {
      v15 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_lastRefreshTime;
      swift_beginAccess();
      sub_24A67E964(v14 + v15, v5, &qword_27EF5E0E0, &qword_24A836D90);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_24A67F378(v5, &qword_27EF5E0E0, &qword_24A836D90);
      }

      else
      {
        (*(v7 + 32))(v12, v5, v6);
        swift_beginAccess();
        v20 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_minCallbackInterval;
        if (*(a2 + 16) >= *(v14 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_minCallbackInterval))
        {
          (*(v7 + 8))(v12, v6);
        }

        else
        {
          sub_24A82CA24();
          sub_24A82C9D4();
          v22 = v21;
          v23 = *(v7 + 8);
          v23(v10, v6);
          sub_24A82C9D4();
          if (qword_281515DC8 != -1)
          {
            v40 = v24;
            swift_once();
            v24 = v40;
          }

          v25 = v22 - v24;
          v26 = sub_24A82CDC4();
          sub_24A6797D0(v26, qword_281518F88);
          v27 = sub_24A82CD94();
          v28 = sub_24A82D504();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 134217984;
            *(v29 + 4) = v25;
            _os_log_impl(&dword_24A675000, v27, v28, "FMIPRefreshingController: last refresh interval %f ms", v29, 0xCu);
            MEMORY[0x24C21E1D0](v29, -1, -1);
          }

          v23(v12, v6);
          v30 = *(v14 + v20);
          if (v25 < v30)
          {
            v31 = v30 + v25 * -1000.0;
            swift_beginAccess();
            v32 = 0.0;
            if (v31 > 0.0)
            {
              v32 = v31;
            }

            *(a2 + 16) = v32;
          }
        }
      }

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v33 = sub_24A82CDC4();
      sub_24A6797D0(v33, qword_281518F88);

      v34 = sub_24A82CD94();
      v35 = sub_24A82D504();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        swift_beginAccess();
        *(v36 + 4) = *(a2 + 16);
        _os_log_impl(&dword_24A675000, v34, v35, "FMIPRefreshingController: scheduling next refresh in %f ms", v36, 0xCu);
        MEMORY[0x24C21E1D0](v36, -1, -1);
      }

      v37 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshTimer;
      [*(v14 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshTimer) invalidate];
      swift_beginAccess();
      v38 = [objc_opt_self() timerWithTimeInterval:v14 target:sel_refreshTimerFired selector:0 userInfo:0 repeats:*(a2 + 16) / 1000.0];
      v39 = [objc_opt_self() mainRunLoop];
      [v39 addTimer:v38 forMode:*MEMORY[0x277CBE640]];

      v17 = *(v14 + v37);
      *(v14 + v37) = v38;
    }

    else
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v16 = sub_24A82CDC4();
      sub_24A6797D0(v16, qword_281518F88);
      v17 = sub_24A82CD94();
      v18 = sub_24A82D504();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_24A675000, v17, v18, "FMIPRefreshingController: Not scheduling another refresh because refreshing is disabled", v19, 2u);
        MEMORY[0x24C21E1D0](v19, -1, -1);
      }
    }
  }
}

uint64_t sub_24A7CBDC4()
{
  v1 = sub_24A82CDF4();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24A7CE1CC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCAC10;
  v8 = _Block_copy(aBlock);

  sub_24A82CE24();
  v13 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_24A7CC0A0(uint64_t a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A82CDC4();
  sub_24A6797D0(v1, qword_281518F88);
  v2 = sub_24A82CD94();
  v3 = sub_24A82D504();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A675000, v2, v3, "FMIPRefreshingController: refreshTimerFired", v4, 2u);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = 1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_24A74F104;
    *(v8 + 24) = v7;
    aBlock[4] = sub_24A6806A0;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DCAC88;
    v9 = _Block_copy(aBlock);
    v10 = _Block_copy(v9);
    v11 = qword_281513E40;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = _os_activity_create(&dword_24A675000, "FMIPRefreshingController.refresh", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = _Block_copy(v10);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_24A6A0BC0;
    *(v15 + 24) = v14;
    v18[4] = sub_24A680674;
    v18[5] = v15;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24A6805E4;
    v18[3] = &unk_285DCAD00;
    v16 = _Block_copy(v18);

    os_activity_apply(v12, v16);
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    _Block_release(v9);
    _Block_release(v10);
    result = swift_unknownObjectRelease();
    if (v16)
    {
      __break(1u);
    }

    else
    {

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_24A7CC4A0(uint64_t a1, char a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPRefreshingController: Refreshing", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    sub_24A6BBA94(&qword_27EF5F100, &qword_24A83D578);
    v12 = sub_24A82D624();
    v14 = sub_24A68761C(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPRefreshingController: Refreshing request itemCounts: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  v22 = MEMORY[0x24C21D990](v15, v16, v17, v18, v19, v20, v21);
  sub_24A7CC6C4(a1, a2 & 1);
  objc_autoreleasePoolPop(v22);
}

uint64_t sub_24A7CC6C4(uint64_t a1, int a2)
{
  v45 = a2;
  v3 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v38 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v41 = sub_24A82CA34();
  v39 = *(v41 - 8);
  v44 = *(v39 + 64);
  v8 = MEMORY[0x28223BE20](v41);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v38 - v10;
  sub_24A82CA24();
  v11 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_tapContexts;
  swift_beginAccess();
  v47 = *(a1 + v11);
  v12 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_selectedDevice;
  swift_beginAccess();
  sub_24A67E964(a1 + v12, v7, &qword_27EF5DF08, &qword_24A837770);
  v13 = (a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts);
  v15 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 32);
  v14 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 40);
  v16 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 48);
  type metadata accessor for FMIPRefreshClientRequest(0);
  v17 = swift_allocObject();
  v18 = v13[1];
  v40 = *v13;
  v38 = v18;
  sub_24A67E964(v7, v17 + qword_281518E68, &qword_27EF5DF08, &qword_24A837770);
  *(v17 + qword_281518E70) = v47;
  *(v17 + qword_281518E60) = 0;
  v19 = v17 + qword_27EF78FB0;
  v20 = v38;
  *v19 = v40;
  *(v19 + 16) = v20;
  *(v19 + 32) = v15;
  *(v19 + 40) = v14;
  *(v19 + 48) = v16;
  swift_bridgeObjectRetain_n();
  *&v40 = sub_24A6A183C(0x4368736572666572, 0xED0000746E65696CLL, 0, 0, 1);
  sub_24A67F378(v7, &qword_27EF5DF08, &qword_24A837770);
  v21 = v39;
  v22 = *(v39 + 16);
  v24 = v41;
  v23 = v42;
  v25 = v46;
  v22(v42, v46, v41);
  (*(v21 + 56))(v23, 0, 1, v24);
  v26 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_lastRefreshTime;
  swift_beginAccess();
  sub_24A7CE1DC(v23, a1 + v26);
  swift_endAccess();
  v27 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 24);
  *&v38 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 32);
  v42 = sub_24A67DF6C((a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController), v27);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v43;
  v22(v43, v25, v24);
  v30 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v31 = (v44 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  (*(v21 + 32))(v32 + v30, v29, v24);
  v33 = v32 + v31;
  *v33 = v47;
  *(v33 + 8) = v45;
  v34 = v38;
  v35 = *(v38 + 56);
  v36 = type metadata accessor for FMIPRefreshClientResponse();
  v35(v40, sub_24A7CE24C, v32, v36, v27, v34);

  return (*(v21 + 8))(v46, v24);
}

uint64_t sub_24A7CCB7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v94 = a4;
  v97 = a1;
  v93 = sub_24A82CA34();
  v9 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v95 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v96 = result;
  if (result)
  {
    v92 = v9;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      if (v97)
      {
        v91 = a6;
        v14 = qword_281515DC8;

        if (v14 != -1)
        {
          swift_once();
        }

        v15 = sub_24A82CDC4();
        sub_24A6797D0(v15, qword_281518F88);
        v16 = sub_24A82CD94();
        v17 = sub_24A82D504();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v90 = v13;
          v19 = a5;
          v20 = v18;
          *v18 = 0;
          _os_log_impl(&dword_24A675000, v16, v17, "FMIPRefreshingController: refreshClientRequest completed", v18, 2u);
          v21 = v20;
          a5 = v19;
          v13 = v90;
          MEMORY[0x24C21E1D0](v21, -1, -1);
        }

        v22 = *(v97 + 24);
        if (!v22)
        {

LABEL_37:

          v70 = sub_24A7CD670(v69);

          if ((v70 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
          {
            *&v105 = *(v13 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_rangingParameters);
            sub_24A7507F8(&v105);
            swift_unknownObjectRelease();
          }

          sub_24A7CD4D8(v71);

          v72 = swift_unknownObjectWeakLoadStrong();
          v73 = MEMORY[0x277D84F90];
          if (v72)
          {
            if (*(v97 + 56))
            {
              v74 = *(v97 + 56);
            }

            else
            {
              v74 = MEMORY[0x277D84F90];
            }

            sub_24A750128(v74);

            swift_unknownObjectRelease();
          }

          v75 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_tapContexts;
          swift_beginAccess();
          *(v13 + v75) = v73;

          if (swift_unknownObjectWeakLoadStrong())
          {
            v76 = v95;
            sub_24A82CA04();
            sub_24A750950(v94, v76, a5);
            swift_unknownObjectRelease();
            (*(v92 + 8))(v76, v93);
          }

          if (v91)
          {
            v77 = *(v96 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 24);
            v78 = *(v96 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 32);
            sub_24A67DF6C((v96 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController), v77);
            v79 = *((*(v78 + 32))(v77, v78) + 16);

            v80 = &OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_callbackInterval;
            if (v79)
            {
              v80 = &OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_minCallbackInterval;
            }

            sub_24A7CB348(*(v13 + *v80));
          }

          v81 = *(v97 + 40);

          if (v81 == 1 && swift_unknownObjectWeakLoadStrong())
          {
            sub_24A74F7E0();

            return swift_unknownObjectRelease();
          }
        }

        v23 = *(v22 + 64);
        v107 = *(v22 + 48);
        v108 = v23;
        *v109 = *(v22 + 80);
        *&v109[16] = *(v22 + 96);
        v24 = *(v22 + 32);
        v105 = *(v22 + 16);
        v106 = v24;
        v25 = *(v97 + 16);
        swift_beginAccess();
        v26 = swift_weakLoadStrong();
        if (v26)
        {
          v27 = *(v26 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber + 8);
          v88 = *(v26 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber);

          sub_24A6EF948(&v105, &v100);
          v90 = v27;
        }

        else
        {

          sub_24A6EF948(&v105, &v100);

          v88 = 0;
          v90 = 0;
        }

        v89 = a5;
        if (v25)
        {
          if (*(v25 + 16) && (v42 = sub_24A6A2D48(0x4153487369, 0xE500000000000000), (v43 & 1) != 0))
          {
            sub_24A67E168(*(v25 + 56) + 32 * v42, &v100);

            if (swift_dynamicCast())
            {
              v85 = LOBYTE(v98[0]);
              v44 = *(&v105 + 1);
              v45 = *(&v106 + 1);
              v83 = v106;
              v84 = v105;
              v46 = v108;
              v86 = *(&v107 + 1);
              v87 = v22;
              v47 = BYTE2(v107);
              v48 = BYTE1(v107);
              v50 = *(&v108 + 1);
              v49 = *v109;
              v82 = *&v109[8];

              sub_24A6EF9B4(&v105);
              v51 = v44;
              v52 = v82;
              v53 = v45;
              v54 = v48;
              v56 = v83;
              v55 = v84;
              v57 = v47;
              v58 = v85;
              v59 = v86;
              v22 = v87;
              v60 = v50;
LABEL_30:
              v61 = v107;
              if (v90)
              {
                *&v100 = v55;
                *(&v100 + 1) = v51;
                *&v101 = v56;
                *(&v101 + 1) = v53;
                LOBYTE(v102) = v107;
                BYTE1(v102) = v54;
                BYTE2(v102) = v57;
                BYTE3(v102) = v58;
                *(&v102 + 1) = v59;
                *&v103 = v46;
                *(&v103 + 1) = v60;
                *&v104[0] = v49;
                *(v104 + 8) = v52;
                v62 = v51;
                v84 = v60;
                v86 = v59;
                v87 = v22;
                v85 = v58;
                LODWORD(v83) = v57;
                v63 = v54;
                v64 = v55;
                v65 = v107;

                sub_24A6EF9B4(&v100);
                v61 = v65;
                v51 = v62;
                v55 = v64;
                v54 = v63;
                LOBYTE(v57) = v83;
                LOBYTE(v58) = v85;
                v59 = v86;
                v22 = v87;
                v60 = v84;
                v66 = v90;
                v67 = v88;
              }

              else
              {
                v66 = *(&v52 + 1);
                v67 = v52;
              }

              *&v100 = v55;
              *(&v100 + 1) = v51;
              *&v101 = v56;
              *(&v101 + 1) = v53;
              LOBYTE(v102) = v61;
              BYTE1(v102) = v54;
              BYTE2(v102) = v57;
              BYTE3(v102) = v58;
              *(&v102 + 1) = v59;
              *&v103 = v46;
              *(&v103 + 1) = v60;
              *&v104[0] = v49;
              *(&v104[0] + 1) = v67;
              *&v104[1] = v66;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v98[2] = v102;
                v98[3] = v103;
                v98[4] = v104[0];
                v99 = *&v104[1];
                v98[0] = v100;
                v98[1] = v101;
                v68 = *(v22 + 104);

                sub_24A750480(v98, v68);

                swift_unknownObjectRelease();
                sub_24A6EF9B4(&v100);
              }

              else
              {
                sub_24A6EF9B4(&v100);
              }

              a5 = v89;
              goto LABEL_37;
            }
          }

          else
          {
          }
        }

        v52 = *&v109[8];
        v60 = *(&v108 + 1);
        v49 = *v109;
        v59 = *(&v107 + 1);
        v46 = v108;
        v58 = BYTE3(v107);
        v57 = BYTE2(v107);
        v54 = BYTE1(v107);
        v53 = *(&v106 + 1);
        v56 = v106;
        v51 = *(&v105 + 1);
        v55 = v105;
        goto LABEL_30;
      }

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v32 = sub_24A82CDC4();
      sub_24A6797D0(v32, qword_281518F88);
      v33 = a2;
      v34 = sub_24A82CD94();
      v35 = sub_24A82D504();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v105 = v37;
        *v36 = 136315138;
        *&v100 = a2;
        v38 = a2;
        sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
        v39 = sub_24A82D024();
        v41 = sub_24A68761C(v39, v40, &v105);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_24A675000, v34, v35, "FMIPRefreshingController: refreshClientRequest completed with error: %s", v36, 0xCu);
        sub_24A6876E8(v37);
        MEMORY[0x24C21E1D0](v37, -1, -1);
        MEMORY[0x24C21E1D0](v36, -1, -1);
      }

      sub_24A7CB348(*(v13 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_callbackInterval));
    }

    else
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v28 = sub_24A82CDC4();
      sub_24A6797D0(v28, qword_281518F88);
      v29 = sub_24A82CD94();
      v30 = sub_24A82D504();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_24A675000, v29, v30, "FMIPRefreshingController: Not handling request controller deallocated", v31, 2u);
        MEMORY[0x24C21E1D0](v31, -1, -1);
      }
    }
  }

  return result;
}

double sub_24A7CD4D8(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;
    if (*(a1 + 16))
    {
      v4 = sub_24A6A2D48(0xD000000000000017, 0x800000024A849960);
      if (v6)
      {
        sub_24A67E168(*(a1 + 56) + 32 * v4, v12);
        if (swift_dynamicCast())
        {
          result = v11;
          *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_minCallbackInterval) = v11;
        }
      }
    }

    if (*(a1 + 16))
    {
      v7 = sub_24A6A2D48(0xD000000000000017, 0x800000024A849980);
      if (v8)
      {
        sub_24A67E168(*(a1 + 56) + 32 * v7, v12);
        if (swift_dynamicCast())
        {
          result = v11;
          *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_maxCallbackInterval) = v11;
        }
      }
    }

    if (*(a1 + 16))
    {
      v9 = sub_24A6A2D48(0xD000000000000014, 0x800000024A8499A0);
      if (v10)
      {
        sub_24A67E168(*(a1 + 56) + 32 * v9, v12);
        if (swift_dynamicCast())
        {
          result = v11;
          *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_callbackInterval) = v11;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24A7CD670(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    if (*(result + 16) && (v4 = sub_24A6A2D48(0xD000000000000019, 0x800000024A8434B0), (v5 & 1) != 0) && (sub_24A67E168(*(v3 + 56) + 32 * v4, v7), (swift_dynamicCast() & 1) != 0) && v6 != *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_rangingParameters))
    {
      *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_rangingParameters) = v6;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A7CD76C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A7CD7EC()
{
  v1 = *(v0 + 16);
  v2 = sub_24A82CF94();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A82CFC4();

  return v4;
}

void sub_24A7CD8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  if (a2)
  {
    v8 = sub_24A82CF94();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_24A82CF94();
  [v7 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t sub_24A7CD954()
{
  v1 = *(v0 + 16);
  v2 = sub_24A82CF94();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A82CFC4();

  return v4;
}

void sub_24A7CD9EC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = sub_24A82CF94();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_24A82CF94();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t sub_24A7CDA90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_24A7CDB28(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);

  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = sub_24A82CED4();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPRefreshingController: connectionHandler didReceive message: %@", v7, 0xCu);
    sub_24A67F378(v8, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v10 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_tapContexts;
  swift_beginAccess();
  v11 = *(v2 + v10);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_24A7807B0(0, v11[2] + 1, 1, v11);
    *(v2 + v10) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_24A7807B0((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v11[v14 + 4] = a1;
  *(v2 + v10) = v11;
  swift_endAccess();
  return sub_24A7CB348(0.0);
}

uint64_t sub_24A7CDD44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x3156676174726961 && a2 == 0xE800000000000000;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3256676174726961 && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3156616E6D66 && a2 == 0xE600000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3256616E6D66 && a2 == 0xE600000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6D66656C707061 && a2 == 0xEB00000000315661 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6D66656C707061 && a2 == 0xEB00000000325661)
  {

    return 5;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24A7CDF3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F0E8, &qword_24A83D560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7CE178();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v23 = 0;
  v9 = sub_24A82DA74();
  v22 = 1;
  v10 = sub_24A82DA74();
  v21 = 2;
  v17 = sub_24A82DA74();
  v20 = 3;
  v16 = sub_24A82DA74();
  v19 = 4;
  v15 = sub_24A82DA74();
  v18 = 5;
  v14 = sub_24A82DA74();
  (*(v6 + 8))(v8, v5);
  result = sub_24A6876E8(a1);
  *a2 = v9;
  a2[1] = v10;
  v12 = v16;
  a2[2] = v17;
  a2[3] = v12;
  v13 = v14;
  a2[4] = v15;
  a2[5] = v13;
  return result;
}

unint64_t sub_24A7CE178()
{
  result = qword_27EF5F0F0;
  if (!qword_27EF5F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F0F0);
  }

  return result;
}

uint64_t sub_24A7CE1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7CE24C(uint64_t a1, void *a2)
{
  v5 = *(sub_24A82CA34() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_24A7CCB7C(a1, a2, v7, v2 + v6, v9, v10);
}

unint64_t sub_24A7CE328()
{
  result = qword_27EF5F118;
  if (!qword_27EF5F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F118);
  }

  return result;
}

unint64_t sub_24A7CE380()
{
  result = qword_27EF5F120;
  if (!qword_27EF5F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F120);
  }

  return result;
}

unint64_t sub_24A7CE3D8()
{
  result = qword_27EF5F128;
  if (!qword_27EF5F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F128);
  }

  return result;
}

FMIPCore::FMIPActionStatus sub_24A7CE44C@<W0>(_BYTE *a1@<X8>)
{
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + 56);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = type metadata accessor for FMIPDevice(0);
    sub_24A7CE7DC(v7 + *(v9 + 116) + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)), v6);
    v10 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
    if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
    {
      result = sub_24A7CE84C(v6);
LABEL_5:
      LOBYTE(v8) = 0;
      goto LABEL_8;
    }

    v11 = v6[56];
    sub_24A7CE8B4(v6);
    result = FMIPActionStatus.init(rawValue:)(qword_24A83D6D8[v11]).value;
    LOBYTE(v8) = v13;
    if (v13 == 18)
    {
      LOBYTE(v8) = 0;
    }
  }

LABEL_8:
  *a1 = v8;
  return result;
}