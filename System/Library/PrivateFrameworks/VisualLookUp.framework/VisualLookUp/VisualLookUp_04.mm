uint64_t sub_1D99D7110(uint64_t a1, double *a2)
{
  v3 = sub_1D9C7C57C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D99DEBE4(a2, v15);
  sub_1D9C7C0CC();
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  sub_1D9C7C56C();
  v16.origin.x = VIFlipOriginNormalizedRect(v4, v5, v6, v7);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  CGRectGetMinX(v16);
  sub_1D9C7C4FC();
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGRectGetMinY(v17);
  sub_1D9C7C51C();
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGRectGetWidth(v18);
  sub_1D9C7C53C();
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGRectGetHeight(v19);
  sub_1D9C7C55C();
  sub_1D9C7C91C();
  v12 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v13 = [v12 operatingSystemVersionString];

  sub_1D9C7DC7C();
  sub_1D9C7C94C();
  return sub_1D9C7C92C();
}

uint64_t sub_1D99D72D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9C7C0EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[1];
  v36[0] = *v1;
  v36[1] = v7;
  v8 = v1[3];
  v36[2] = v1[2];
  v36[3] = v8;
  v9 = *&v36[0];
  v37 = *&v36[0];
  v10 = sub_1D9C7DC7C();
  v12 = v11;
  if (v10 == sub_1D9C7DC7C() && v12 == v13)
  {
    v29 = v9;

    sub_1D99DEDE4(&v37, type metadata accessor for VNBarcodeSymbology);
    goto LABEL_15;
  }

  v15 = sub_1D9C7E7DC();
  v16 = v9;

  sub_1D99DEDE4(&v37, type metadata accessor for VNBarcodeSymbology);
  if (v15)
  {
LABEL_15:
    v28 = MEMORY[0x1E69BD158];
    goto LABEL_16;
  }

  v17 = sub_1D9C7DC7C();
  v19 = v18;
  if (v17 == sub_1D9C7DC7C() && v19 == v20)
  {
    v32 = v16;

    sub_1D99DEDE4(&v37, type metadata accessor for VNBarcodeSymbology);
    goto LABEL_20;
  }

  v22 = sub_1D9C7E7DC();
  v23 = v16;

  sub_1D99DEDE4(&v37, type metadata accessor for VNBarcodeSymbology);
  if (v22)
  {
LABEL_20:
    v28 = MEMORY[0x1E69BD150];
    goto LABEL_16;
  }

  v24 = sub_1D9C7DC7C();
  v26 = v25;
  if (v24 == sub_1D9C7DC7C() && v26 == v27)
  {

    v28 = MEMORY[0x1E69BD160];
LABEL_16:
    sub_1D99DEDE4(&v37, type metadata accessor for VNBarcodeSymbology);
    goto LABEL_17;
  }

  v33 = sub_1D9C7E7DC();

  sub_1D99DEDE4(&v37, type metadata accessor for VNBarcodeSymbology);
  if ((v33 & 1) == 0)
  {
    v34 = sub_1D9C7C0FC();
    return (*(*(v34 - 8) + 56))(a1, 1, 1, v34);
  }

  v28 = MEMORY[0x1E69BD160];
LABEL_17:
  (*(v4 + 104))(v6, *v28, v3);
  v30 = sub_1D9C7C0FC();
  MEMORY[0x1EEE9AC00](v30);
  *&v35[-16] = v6;
  *&v35[-8] = v36;
  sub_1D99DEF28(&qword_1ECB51588, MEMORY[0x1E69BD168], MEMORY[0x1E69BD148]);
  sub_1D9C7D6BC();
  (*(*(v30 - 8) + 56))(a1, 0, 1, v30);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D99D773C(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = sub_1D9C7C0FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D9C7C57C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[6];
  v13 = a2[7];
  sub_1D9C7C56C();
  v27.origin.x = VIFlipOriginNormalizedRect(v10, v11, v12, v13);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  CGRectGetMinX(v27);
  sub_1D9C7C4FC();
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGRectGetMinY(v28);
  sub_1D9C7C51C();
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectGetWidth(v29);
  sub_1D9C7C53C();
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectGetHeight(v30);
  sub_1D9C7C55C();
  sub_1D9C7C2FC();
  (*(v6 + 16))(v8, a3, v5);
  v18 = sub_1D9C7C36C();
  v20 = v19;
  v21 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1D9AF9448(0, v21[2] + 1, 1, v21);
    *v20 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1D9AF9448((v23 > 1), v24 + 1, 1, v21);
    *v20 = v21;
  }

  v21[2] = v24 + 1;
  (*(v6 + 32))(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, v5);
  return v18(v26, 0);
}

uint64_t sub_1D99D79E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51578, &qword_1D9C86580);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v10 = sub_1D9C7C38C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  sub_1D99AB100(a1, v9, &qword_1ECB51578, &qword_1D9C86580);
  v21 = *(v4 + 48);
  v73 = v9;
  v22 = *&v9[v21];
  if (*(v22 + 16))
  {
    v53 = v2;
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v24 = *(v11 + 16);
    v63 = v11 + 16;
    v64 = v23;
    v62 = v24;
    v24(v17, (v22 + v23), v10);

    v25 = *(v11 + 32);
    v69 = v20;
    v70 = v10;
    v67 = v25;
    v68 = v11 + 32;
    v25(v20, v17, v10);
    v26 = sub_1D9C7C57C();
    v27 = *(v26 - 8);
    v28 = v6;
    v29 = *(v27 + 8);
    v30 = v27 + 8;
    v29(v73, v26);
    sub_1D99AB100(a1, v28, &qword_1ECB51578, &qword_1D9C86580);
    v31 = *(*(v28 + *(v4 + 48)) + 16);

    if (v31)
    {
      v33 = v4;
      v71 = v11;
      v60 = v30;
      v61 = v29;
      v29(v28, v26);
      v34 = v70;
      if (v31 == 1)
      {
LABEL_7:
        v51 = v54;
        v67(v54, v69, v34);
        return (*(v71 + 56))(v51, 0, 1, v34);
      }

      v55 = v71 + 8;
      v56 = v31;
      v35 = 1;
      v58 = a1;
      v59 = v33;
      v57 = v26;
      v36 = v66;
      while (1)
      {
        result = sub_1D99AB100(a1, v28, &qword_1ECB51578, &qword_1D9C86580);
        v37 = *(v28 + *(v33 + 48));
        if (v35 >= *(v37 + 16))
        {
          break;
        }

        v73 = (v35 + 1);
        v38 = v71;
        v39 = v62;
        v62(v36, (v37 + v64 + *(v71 + 72) * v35), v34);

        v40 = v65;
        v41 = v69;
        v39(v65, v69, v34);
        v42 = sub_1D9C7C31C();
        v43 = sub_1D9C7C30C();
        sub_1D9A188A8(v42);
        v43(v72, 0);
        v44 = sub_1D9C7C34C();
        v45 = sub_1D9C7C33C();
        sub_1D9A1887C(v44);
        v45(v72, 0);
        v46 = sub_1D9C7C37C();
        v47 = sub_1D9C7C36C();
        sub_1D9A18850(v46);
        v47(v72, 0);
        v34 = v70;
        v48 = *(v38 + 8);
        a1 = v58;
        v33 = v59;
        v48(v36, v70);
        v48(v41, v34);
        v61(v28, v57);
        v49 = v41;
        v50 = v56;
        v67(v49, v40, v34);
        v35 = v73;
        if (v50 == v73)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v52 = sub_1D9C7C57C();
    (*(*(v52 - 8) + 8))(v73, v52);
    return (*(v11 + 56))(v54, 1, 1, v10);
  }

  return result;
}

void *sub_1D99D7F70(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v76 = a4;
  v75 = a2;
  v70 = a1;
  v71 = sub_1D9C7C11C();
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D9C7C38C();
  v78 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v62 - v13;
  v14 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v62 - v21);
  v23 = a3[9];
  v88 = a3[8];
  v89 = v23;
  v90 = a3[10];
  v91 = *(a3 + 22);
  v24 = a3[5];
  v84 = a3[4];
  v85 = v24;
  v25 = a3[7];
  v86 = a3[6];
  v87 = v25;
  v26 = a3[1];
  v80 = *a3;
  v81 = v26;
  v27 = a3[2];
  v28 = a3[3];
  v68 = a3;
  v82 = v27;
  v83 = v28;
  result = sub_1D99DAEA8(&v80);
  v30 = result[2];
  if (v30)
  {
    v31 = 0;
    while (1)
    {
      if (v31 >= result[2])
      {
        __break(1u);
        return result;
      }

      v32 = result;
      sub_1D99DED7C(result + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v31, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (*(v19 + 11))
      {
        break;
      }

      ++v31;
      sub_1D99DEDE4(v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      result = v32;
      if (v30 == v31)
      {
        goto LABEL_9;
      }
    }

    sub_1D99DEB20(v19, v22, type metadata accessor for VisualUnderstanding.ImageRegion);
    v33 = v22[11];
    v34 = v22[12];
    v77 = v22[10];
    sub_1D99CB864(v77, v33, v34);
    sub_1D99DEDE4(v22, type metadata accessor for VisualUnderstanding.ImageRegion);
    result = v32;
    v92 = v33;
    if (!v33)
    {
      goto LABEL_9;
    }

    result = v32;
  }

  else
  {
LABEL_9:
    v92 = 0x80000001D9CA48B0;
    v77 = 0xD000000000000019;
  }

  v35 = result[2];
  if (v35)
  {
    v63 = a5;
    *&v80 = MEMORY[0x1E69E7CC0];
    v36 = result;
    sub_1D99FE3D8(0, v35, 0);
    v37 = v80;
    v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v62 = v36;
    v39 = v36 + v38;
    v73 = *(v15 + 72);
    v72 = v78 + 32;
    v40 = v67;
    v41 = v66;
    do
    {
      v42 = v74;
      v43 = sub_1D99DED7C(v39, v74, type metadata accessor for VisualUnderstanding.ImageRegion);
      MEMORY[0x1EEE9AC00](v43);
      v44 = v75;
      *(&v62 - 6) = v42;
      *(&v62 - 5) = v44;
      v45 = v77;
      *(&v62 - 4) = v76;
      *(&v62 - 3) = v45;
      *(&v62 - 2) = v92;
      sub_1D99DEF28(&qword_1ECB51550, MEMORY[0x1E69BD2C8], MEMORY[0x1E69BD2C0]);
      sub_1D9C7D6BC();
      sub_1D99DEDE4(v42, type metadata accessor for VisualUnderstanding.ImageRegion);
      *&v80 = v37;
      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1D99FE3D8((v46 > 1), v47 + 1, 1);
        v37 = v80;
      }

      *(v37 + 16) = v47 + 1;
      (*(v78 + 32))(v37 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v47, v41, v40);
      v39 += v73;
      --v35;
    }

    while (v35);

    LOBYTE(a5) = v63;
  }

  else
  {

    v37 = MEMORY[0x1E69E7CC0];
  }

  v79 = v37;
  v48 = v68;
  v49 = v68[9];
  v88 = v68[8];
  v89 = v49;
  v90 = v68[10];
  v91 = *(v68 + 22);
  v50 = v68[5];
  v84 = v68[4];
  v85 = v50;
  v51 = v68[7];
  v86 = v68[6];
  v87 = v51;
  v52 = v68[1];
  v80 = *v68;
  v81 = v52;
  v53 = v68[3];
  v82 = v68[2];
  v83 = v53;
  sub_1D99DA05C(&v80);
  if (v54)
  {
    sub_1D9A188D4(v54);
  }

  if (a5)
  {
    if (*(v79 + 16))
    {
      v56 = v78;
      v57 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v77 = *(v78 + 16);
      v58 = v64;
      v92 = v5;
      v59 = v67;
      (v77)(v64, v79 + v57, v67);

      v60 = v65;
      (*(v56 + 32))(v65, v58, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51560, &qword_1D9C86570);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1D9C85660;
      (v77)(v61 + v57, v60, v59);
      sub_1D99DAA78(v61);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1D9C7C10C();
      v55 = (*(v56 + 8))(v60, v59);
    }

    else
    {
    }
  }

  else
  {
    sub_1D99DAA78(v79);

    v55 = sub_1D9C7C10C();
  }

  MEMORY[0x1EEE9AC00](v55);
  *(&v62 - 2) = v48;
  sub_1D99DEF28(&qword_1ECB51558, MEMORY[0x1E69BD178], MEMORY[0x1E69BD170]);
  sub_1D9C7D6BC();
  return sub_1D9C7C3DC();
}

void sub_1D99D883C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t *a4, double *a5)
{
  v42 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  LOBYTE(v43) = *a1;
  sub_1D99AB100(a3, &v38 - v12, &unk_1ECB51B10, &qword_1D9C86550);
  Context = type metadata accessor for VisualQueryContext(0);
  v15 = *(*(Context - 8) + 48);
  if (v15(v13, 1, Context) == 1)
  {
    sub_1D99A6AE0(v13, &unk_1ECB51B10, &qword_1D9C86550);
    v16 = 0;
  }

  else
  {
    v16 = *&v13[*(Context + 44)];
    v17 = v16;
    sub_1D99DEDE4(v13, type metadata accessor for VisualQueryContext);
  }

  v39 = sub_1D9A6BC34();

  v18 = sub_1D9A6D108();
  v40 = v19;
  v41 = v20;
  sub_1D99AB100(a3, v10, &unk_1ECB51B10, &qword_1D9C86550);
  v21 = v15(v10, 1, Context);
  if (v21 == 1)
  {
    sub_1D99A6AE0(v10, &unk_1ECB51B10, &qword_1D9C86550);
    v22 = 0;
  }

  else
  {
    v22 = *&v10[*(Context + 52)];
    sub_1D99DEDE4(v10, type metadata accessor for VisualQueryContext);
  }

  v23 = v42;
  sub_1D9B8598C(v22, v21 == 1, v18);
  if (*(*v23 + 16) && (v25 = a5[2], v24 = a5[3], v27 = *a5, v26 = a5[1], sub_1D99EE1AC(*a5, v26, v25, v24), (v28 & 1) != 0))
  {
  }

  else
  {
    if (qword_1ECB50D58 != -1)
    {
      swift_once();
    }

    v27 = *a5;
    v26 = a5[1];
    v25 = a5[2];
    v24 = a5[3];
  }

  v43 = v39;

  sub_1D9A18AF8(v29);
  v30 = v43;
  v43 = v18;

  sub_1D9A18AE0(v31);
  v32 = v43;
  v43 = v40;

  sub_1D9A189EC(v33);
  v34 = v43;
  v43 = v41;

  sub_1D9A18900(v35);

  v36 = v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_1D9C112BC(v30, v32, v34, v36, isUniquelyReferenced_nonNull_native, v27, v26, v25, v24);
  *v23 = v43;
}

uint64_t sub_1D99D8C20(double *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v81 = a4;
  v7 = sub_1D9C7C57C();
  v8 = *(v7 - 8);
  v86 = v7;
  v87 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7CF9C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v79 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v74 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515C8, &qword_1D9C865B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v80 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v22 = v74 - v20;
  v23 = *(a2 + 16);
  if (v23)
  {
    v75 = v74 - v20;
    v78 = a3;
    v24 = a1[2];
    v25 = a1[3];
    v27 = *a1;
    v26 = a1[1];
    v77 = a1;
    v76 = v12;
    v28 = v12 + 16;
    v85 = *(v12 + 16);
    v29 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v30 = (*&v87 + 8);
    v82 = *(v28 + 56);
    v84 = -0.0001;
    v83 = 0.0001;
    v74[1] = v29;
    v89 = v26;
    v90 = v24;
    v88 = v27;
    v85(v16, v29, v11);
    while (1)
    {
      sub_1D9C7CF6C();
      sub_1D9C7C4EC();
      v32 = v31;
      sub_1D9C7C50C();
      v34 = v33;
      sub_1D9C7C52C();
      v36 = v35;
      sub_1D9C7C54C();
      v38 = VIFlipOriginNormalizedRect(v32, v34, v36, v37);
      v40 = v39;
      v42 = v41;
      v44 = v43;
      (*v30)(v10, v86);
      v92.origin.x = v27;
      v92.origin.y = v26;
      v92.size.width = v24;
      v92.size.height = v25;
      MinX = CGRectGetMinX(v92);
      v46 = v25;
      v47 = v84;
      v48 = MinX + v84;
      v87 = v38;
      v93.origin.x = v38;
      v93.origin.y = v40;
      v93.size.width = v42;
      v93.size.height = v44;
      v49 = CGRectGetMinX(v93);
      v50 = v83;
      v51 = v48 > v49;
      v25 = v46;
      v51 = v51 || v49 > MinX + v83;
      if (!v51)
      {
        v94.origin.x = v88;
        v94.origin.y = v89;
        v94.size.width = v90;
        v94.size.height = v46;
        MinY = CGRectGetMinY(v94);
        v95.origin.x = v87;
        v95.origin.y = v40;
        v95.size.width = v42;
        v95.size.height = v44;
        v53 = CGRectGetMinY(v95);
        v25 = v46;
        if (MinY + v47 <= v53 && v53 <= MinY + v50)
        {
          v96.origin.x = v88;
          v96.origin.y = v89;
          v96.size.width = v90;
          v96.size.height = v46;
          Width = CGRectGetWidth(v96);
          v97.origin.x = v87;
          v97.origin.y = v40;
          v97.size.width = v42;
          v97.size.height = v44;
          v56 = CGRectGetWidth(v97);
          v25 = v46;
          if (Width + v47 <= v56 && v56 <= Width + v50)
          {
            v98.origin.x = v88;
            v98.origin.y = v89;
            v98.size.width = v90;
            v98.size.height = v46;
            Height = CGRectGetHeight(v98);
            v99.origin.x = v87;
            v99.origin.y = v40;
            v99.size.width = v42;
            v99.size.height = v44;
            v59 = CGRectGetHeight(v99);
            if (Height + v47 <= v59 && v59 <= Height + v50)
            {
              v60 = v76;
              v22 = v75;
              (*(v76 + 32))(v75, v16, v11);
              (*(v60 + 56))(v22, 0, 1, v11);
              a3 = v78;
              a1 = v77;
              goto LABEL_22;
            }
          }
        }
      }

      (*(v28 - 8))(v16, v11);
      v29 += v82;
      --v23;
      v26 = v89;
      v24 = v90;
      v27 = v88;
      if (!v23)
      {
        break;
      }

      v85(v16, v29, v11);
    }

    v60 = v76;
    v22 = v75;
    v61 = (*(v76 + 56))(v75, 1, 1, v11);
    v62 = sub_1D9A6F7C8(v61);
    a1 = v77;
    v63 = *v77;
    v64 = v77[1];
    v65 = v77[2];
    v66 = v77[3];
    a3 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *a3;
    *a3 = 0x8000000000000000;
    sub_1D9C112BC(MEMORY[0x1E69E7CC0], v62, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], isUniquelyReferenced_nonNull_native, v63, v64, v65, v66);
    *a3 = v91;
  }

  else
  {
    (*(v12 + 56))(v74 - v20, 1, 1, v11, v21);
    v60 = v12;
  }

LABEL_22:
  v68 = v80;
  sub_1D99AB100(v22, v80, &qword_1ECB515C8, &qword_1D9C865B0);
  if ((*(v60 + 48))(v68, 1, v11) == 1)
  {
    sub_1D99A6AE0(v22, &qword_1ECB515C8, &qword_1D9C865B0);
    return sub_1D99A6AE0(v68, &qword_1ECB515C8, &qword_1D9C865B0);
  }

  else
  {
    v70 = v79;
    (*(v60 + 32))(v79, v68, v11);
    sub_1D9B67DFC();
    v72 = v71;
    MEMORY[0x1EEE9AC00](v71);
    v74[-4] = v70;
    v74[-3] = v73;
    v74[-2] = a3;
    v74[-1] = a1;
    sub_1D9B099F4(sub_1D99DEFC4, &v74[-6], v72);

    sub_1D99A6AE0(v22, &qword_1ECB515C8, &qword_1D9C865B0);
    return (*(v60 + 8))(v70, v11);
  }
}

void sub_1D99D92F8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t *a4, double *a5)
{
  v35 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  LOBYTE(v36) = *a1;
  sub_1D99AB100(a3, &v33 - v12, &unk_1ECB51B10, &qword_1D9C86550);
  Context = type metadata accessor for VisualQueryContext(0);
  v15 = *(*(Context - 8) + 48);
  if (v15(v13, 1, Context) == 1)
  {
    sub_1D99A6AE0(v13, &unk_1ECB51B10, &qword_1D9C86550);
    v16 = 0;
  }

  else
  {
    v16 = *&v13[*(Context + 44)];
    v17 = v16;
    sub_1D99DEDE4(v13, type metadata accessor for VisualQueryContext);
  }

  v34 = sub_1D9A6BC34();

  v19 = sub_1D9A6F7C8(v18);
  sub_1D99AB100(a3, v10, &unk_1ECB51B10, &qword_1D9C86550);
  v20 = v15(v10, 1, Context);
  if (v20 == 1)
  {
    sub_1D99A6AE0(v10, &unk_1ECB51B10, &qword_1D9C86550);
    v21 = 0;
  }

  else
  {
    v21 = *&v10[*(Context + 52)];
    sub_1D99DEDE4(v10, type metadata accessor for VisualQueryContext);
  }

  v22 = v35;
  sub_1D9B8598C(v21, v20 == 1, v19);
  if (*(*v22 + 16) && (v24 = a5[2], v23 = a5[3], v26 = *a5, v25 = a5[1], sub_1D99EE1AC(*a5, v25, v24, v23), (v27 & 1) != 0))
  {
  }

  else
  {
    if (qword_1ECB50D58 != -1)
    {
      swift_once();
    }

    v26 = *a5;
    v25 = a5[1];
    v24 = a5[2];
    v23 = a5[3];
  }

  v36 = v34;

  sub_1D9A18AF8(v28);
  v29 = v36;
  v36 = v19;

  sub_1D9A18AE0(v30);

  v31 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v22;
  *v22 = 0x8000000000000000;
  sub_1D9C112BC(v29, v31, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], isUniquelyReferenced_nonNull_native, v26, v25, v24, v23);
  *v22 = v36;
}

uint64_t sub_1D99D969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D9C7C0EC();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v5);
  v8 = sub_1D9C7C0DC();
  sub_1D9C7C0BC();
  v8(v11, 0);

  v9 = sub_1D9C7C0DC();
  sub_1D9C7C0CC();
  return v9(v11, 0);
}

uint64_t sub_1D99D97F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265755174786574 && a2 == 0xE900000000000079;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575516567616D69 && a2 == 0xEA00000000007972 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9CA4910 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9CA4930 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

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

void sub_1D99D9970(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51618, &qword_1D9C86888);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D99DF2A8();
  sub_1D9C7E95C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_1D99B3C44(0, 0xF000000000000000);
    sub_1D99B3C44(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v23) = 0;
    v9 = sub_1D9C7E5AC();
    v11 = v10;
    v22 = v9;
    v25 = 1;
    v12 = sub_1D99DF350();
    sub_1D9C7E5EC();
    v20 = a2;
    v21 = v12;
    v13 = v23;
    v14 = v24;
    sub_1D99B3C44(0, 0xF000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608, &qword_1D9C86880);
    v25 = 2;
    sub_1D99DF3A4(&qword_1EDD2C638, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1D9C7E65C();
    v19 = v23;
    v25 = 3;
    sub_1D9C7E5EC();
    (*(v6 + 8))(v8, v5);
    v15 = v23;
    v16 = v24;
    sub_1D99B3C44(0, 0xF000000000000000);

    sub_1D99DF410(v13, v14);
    v17 = v19;

    sub_1D99DF410(v15, v16);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_1D99B3C44(v13, v14);

    sub_1D99B3C44(v15, v16);
    v18 = v20;
    *v20 = v22;
    v18[1] = v11;
    v18[2] = v13;
    v18[3] = v14;
    v18[4] = v17;
    v18[5] = v15;
    v18[6] = v16;
  }
}

unint64_t sub_1D99D9D04(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void *sub_1D99D9D14(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1D9C7D8DC();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515A0, &qword_1D9C86590);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = a3 + 40;
  v12 = *(a3 + 16) + 1;
  do
  {
    if (!--v12)
    {

      return a1;
    }

    v13 = v11 + 16;
    v16 = v11 - 8;
    v14 = *(v11 - 8);
    v15 = *(v16 + 8);
    v35 = a1;
    v36 = a2;
    v33 = v14;
    v34 = v15;
    v17 = sub_1D9C7B98C();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    sub_1D99A57F8();

    sub_1D9C7E2EC();
    v19 = v18;
    sub_1D99A6AE0(v10, &qword_1ECB515A0, &qword_1D9C86590);

    v11 = v13;
  }

  while ((v19 & 1) != 0);
  v20 = v28;
  static Logger.argos.getter(v28);

  v21 = sub_1D9C7D8BC();
  v22 = sub_1D9C7E09C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1D9A0E224(a1, a2, &v35);
    _os_log_impl(&dword_1D9962000, v21, v22, "Remove model urn suffix for model %s", v23, 0xCu);
    v25 = __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x1DA7405F0](v24, -1, -1, v25);
    MEMORY[0x1DA7405F0](v23, -1, -1);
  }

  (*(v29 + 8))(v20, v30);
  v35 = a1;
  v36 = a2;
  v33 = 707673948;
  v34 = 0xE400000000000000;
  v31 = 0;
  v32 = 0xE000000000000000;
  return sub_1D9C7E2CC();
}

void sub_1D99DA05C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51580, &qword_1D9C86588);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_1D9C7C0FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51570, &qword_1D9C86578);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_1D9C7C38C();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  if (*(a1 + 8) != 1)
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = *(v13 + 16);

      if (v14)
      {
        v15 = 0;
        v43 = 0;
        v16 = v6;
        v17 = (v13 + 32);
        v42 = (v16 + 48);
        v35 = (v16 + 32);
        v41 = (v31 + 56);
        v34 = (v16 + 8);
        v33 = (v31 + 48);
        v40 = MEMORY[0x1E69E7CC0];
        v32 = (v31 + 32);
        v37 = v13;
        v36 = v14;
        while (1)
        {
          if (v15 >= *(v13 + 16))
          {
            __break(1u);
            return;
          }

          v18 = *v17;
          v19 = v17[1];
          v20 = v17[3];
          v49[2] = v17[2];
          v49[3] = v20;
          v49[0] = v18;
          v49[1] = v19;
          v21 = v17[1];
          v45 = *v17;
          v46 = v21;
          v22 = v17[3];
          v47 = v17[2];
          v48 = v22;
          sub_1D99DEC94(v49, v44);
          sub_1D99D72D0(v4);
          if ((*v42)(v4, 1, v5) == 1)
          {
            sub_1D99DECF0(v49);
            sub_1D99A6AE0(v4, &qword_1ECB51580, &qword_1D9C86588);
            (*v41)(v10, 1, 1, v11);
          }

          else
          {
            v23 = v39;
            v24 = (*v35)(v39, v4, v5);
            MEMORY[0x1EEE9AC00](v24);
            *(&v31 - 2) = v49;
            *(&v31 - 1) = v23;
            sub_1D99DEF28(&qword_1ECB51550, MEMORY[0x1E69BD2C8], MEMORY[0x1E69BD2C0]);
            v25 = v43;
            sub_1D9C7D6BC();
            v43 = v25;
            sub_1D99DECF0(v49);
            (*v41)(v10, 0, 1, v11);
            (*v34)(v23, v5);
            if ((*v33)(v10, 1, v11) != 1)
            {
              v26 = v5;
              v27 = *v32;
              (*v32)(v38, v10, v11);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = sub_1D9AF9420(0, *(v40 + 2) + 1, 1, v40);
              }

              v13 = v37;
              v29 = *(v40 + 2);
              v28 = *(v40 + 3);
              if (v29 >= v28 >> 1)
              {
                v40 = sub_1D9AF9420((v28 > 1), v29 + 1, 1, v40);
              }

              v30 = v40;
              *(v40 + 2) = v29 + 1;
              v27(&v30[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29], v38, v11);
              v5 = v26;
              v14 = v36;
              goto LABEL_7;
            }

            v13 = v37;
            v14 = v36;
          }

          sub_1D99A6AE0(v10, &qword_1ECB51570, &qword_1D9C86578);
LABEL_7:
          ++v15;
          v17 += 4;
          if (v14 == v15)
          {
            goto LABEL_18;
          }
        }
      }

      v40 = MEMORY[0x1E69E7CC0];
LABEL_18:
    }
  }
}

void *sub_1D99DA668(uint64_t a1)
{
  v2 = sub_1D9C7C57C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D9C7C38C();
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v39 - v9;
  v10 = MEMORY[0x1E69E7CC8];
  v55 = MEMORY[0x1E69E7CC8];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v13 = *(v6 + 16);
  v12 = v6 + 16;
  v14 = *(v12 + 64);
  v15 = *(v12 + 56);
  v49 = (v14 + 32) & ~v14;
  v50 = v13;
  v16 = a1 + v49;
  v52 = (v12 + 16);
  v42 = v3 + 32;
  v43 = v14;
  v41 = (v3 + 8);
  v40 = xmmword_1D9C85660;
  v45 = v3;
  v46 = v2;
  v17 = v2;
  v47 = v5;
  v48 = v15;
  v44 = v12;
  v13(v53, a1 + v49, v54);
  while (1)
  {
    sub_1D9C7C2EC();
    v20 = sub_1D99EE340(v5);
    v21 = v10[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v10[3] < v23)
    {
      sub_1D9C09324(v23, 1);
      v10 = v55;
      v25 = sub_1D99EE340(v5);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

      v20 = v25;
    }

    if (v24)
    {
      (*v41)(v5, v17);
      v27 = v10[7];
      v28 = *v52;
      (*v52)(v51, v53, v54);
      v29 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1D9AF9420(0, *(v29 + 2) + 1, 1, v29);
        *(v27 + 8 * v20) = v29;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = sub_1D9AF9420((v31 > 1), v32 + 1, 1, v29);
        *(v27 + 8 * v20) = v29;
      }

      *(v29 + 2) = v32 + 1;
      v5 = v47;
      v18 = v48;
      v28(&v29[v49 + v32 * v48], v51, v54);
      v17 = v46;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51560, &qword_1D9C86570);
      v33 = v49;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      (*v52)((v34 + v33), v53, v54);
      v10[(v20 >> 6) + 8] |= 1 << v20;
      (*(v45 + 32))(v10[6] + *(v45 + 72) * v20, v5, v17);
      *(v10[7] + 8 * v20) = v34;
      v35 = v10[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_19;
      }

      v10[2] = v37;
      v18 = v48;
    }

    v16 += v18;
    if (!--v11)
    {
      return v10;
    }

    v50(v53, v16, v54);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

char *sub_1D99DAA78(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51570, &qword_1D9C86578);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v31 - v2;
  v41 = sub_1D9C7C38C();
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v31 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51578, &qword_1D9C86580);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v31 - v8;

  v11 = sub_1D99DA668(v10);

  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11[8];
  v15 = (v12 + 63) >> 6;
  v39 = (v4 + 48);
  v34 = v4;
  v35 = (v4 + 32);

  v16 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v16;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v14)) | (v16 << 6);
    v19 = v11[6];
    v20 = sub_1D9C7C57C();
    (*(*(v20 - 8) + 16))(v9, v19 + *(*(v20 - 8) + 72) * v18, v20);
    *&v9[*(v40 + 48)] = *(v11[7] + 8 * v18);

    sub_1D99D79E8(v9, v3);
    v14 &= v14 - 1;
    sub_1D99A6AE0(v9, &qword_1ECB51578, &qword_1D9C86580);
    if ((*v39)(v3, 1, v41) == 1)
    {
      sub_1D99A6AE0(v3, &qword_1ECB51570, &qword_1D9C86578);
    }

    else
    {
      v33 = *v35;
      v21 = v41;
      v33(v36, v3, v41);
      v22 = v21;
      v23 = v33;
      v33(v37, v36, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1D9AF9420(0, *(v38 + 2) + 1, 1, v38);
      }

      v25 = *(v38 + 2);
      v24 = *(v38 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v32 = v25 + 1;
        v29 = sub_1D9AF9420((v24 > 1), v25 + 1, 1, v38);
        v26 = v32;
        v38 = v29;
      }

      v27 = v37;
      v28 = v38;
      *(v38 + 2) = v26;
      v23(&v28[((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25], v27, v41);
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return v38;
    }

    v14 = v11[v16 + 8];
    ++v17;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_1D99A6AE0(v9, &qword_1ECB51578, &qword_1D9C86580);

  __break(1u);
  return result;
}

void *sub_1D99DAEA8(uint64_t *a1)
{
  v2 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v72 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v57 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v69 = v57 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v70 = v57 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v57 - v13;
  v15 = *a1;
  v16 = a1[19];
  if (v16)
  {
    v17 = a1[21];
    v66 = a1[20];
    v18 = *(v15 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v59 = v2;
      v60 = v4;
      v20 = v17;
      v21 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      *&v71 = v15 + v21;
      v67 = v16;

      v68 = v20;

      LODWORD(v65) = 0;
      v64 = v18 - 1;
      v63 = xmmword_1D9C85660;
      v22 = 0;
      do
      {
        while (1)
        {
          if (v22 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_34;
          }

          v4 = *(v72 + 72);
          v23 = v22 + 1;
          sub_1D99DED7C(v71 + v4 * v22, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (v14[104] != 1)
          {
            break;
          }

          v26 = v70;
          sub_1D99DED7C(v14, v70, type metadata accessor for VisualUnderstanding.ImageRegion);
          v27 = *(v26 + 112);
          v28 = *v14;
          v62 = *(v14 + 1);
          v65 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515B8, &unk_1D9C865A0);
          v29 = swift_allocObject();
          *(v29 + 16) = v63;
          v30 = v66;
          *(v29 + 32) = v67;
          *(v29 + 40) = v30;
          v61 = v29;
          *(v29 + 48) = v68;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = sub_1D9AF8CE0(0, *(v27 + 2) + 1, 1, v27);
            v32 = v27;
            v27 = v41;
          }

          v34 = *(v27 + 2);
          v33 = *(v27 + 3);
          v35 = v34 + 1;
          if (v34 >= v33 >> 1)
          {
            v58 = v34 + 1;
            v57[1] = v32;
            v42 = v27;
            v43 = v34;
            v44 = sub_1D9AF8CE0((v33 > 1), v34 + 1, 1, v42);
            v35 = v58;
            v34 = v43;
            v27 = v44;
          }

          *(v27 + 2) = v35;
          v36 = &v27[48 * v34];
          v37 = v62;
          *(v36 + 2) = v65;
          *(v36 + 3) = v37;
          *(v36 + 8) = v61;
          *(v36 + 9) = MEMORY[0x1E69E7CC0];

          v39 = v69;
          v38 = v70;
          *(v70 + 112) = v27;
          sub_1D99DED7C(v38, v39, type metadata accessor for VisualUnderstanding.ImageRegion);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1D9AF8A90(0, v19[2] + 1, 1, v19);
          }

          v40 = v19[3];
          *&v65 = v19[2];
          *&v62 = v65 + 1;
          if (v65 >= v40 >> 1)
          {
            v19 = sub_1D9AF8A90((v40 > 1), v65 + 1, 1, v19);
          }

          sub_1D99DEDE4(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
          v19[2] = v62;
          sub_1D99DEB20(v69, v19 + v21 + v65 * v4, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D99DEDE4(v70, type metadata accessor for VisualUnderstanding.ImageRegion);
          LODWORD(v65) = 1;
          if (v64 == v22)
          {
            goto LABEL_24;
          }

          ++v22;
        }

        sub_1D99DED7C(v14, v7, type metadata accessor for VisualUnderstanding.ImageRegion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D9AF8A90(0, v19[2] + 1, 1, v19);
        }

        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          v19 = sub_1D9AF8A90((v24 > 1), v25 + 1, 1, v19);
        }

        sub_1D99DEDE4(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        v19[2] = v25 + 1;
        sub_1D99DEB20(v7, v19 + v21 + v25 * v4, type metadata accessor for VisualUnderstanding.ImageRegion);
        v22 = v23;
      }

      while (v18 != v23);
      v16 = v67;
      if (v65)
      {
LABEL_24:

        return v19;
      }

      v2 = v59;
      v4 = v60;
      v17 = v68;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515B0, &qword_1D9C86598);
    v45 = swift_allocObject();
    v71 = xmmword_1D9C85660;
    *(v45 + 16) = xmmword_1D9C85660;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515B8, &unk_1D9C865A0);
    v46 = swift_allocObject();
    *(v46 + 16) = v71;
    v47 = v66;
    *(v46 + 32) = v16;
    *(v46 + 40) = v47;
    *(v46 + 48) = v17;
    *(v45 + 32) = 0;
    *(v45 + 40) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v71 = _Q0;
    *(v45 + 48) = _Q0;
    *(v45 + 64) = v46;
    v53 = MEMORY[0x1E69E7CC0];
    *(v45 + 72) = MEMORY[0x1E69E7CC0];
    sub_1D9C7B92C();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = v71;
    *(v4 + 32) = 1;
    *(v4 + 40) = v53;
    *(v4 + 48) = v53;
    *(v4 + 56) = v53;
    *(v4 + 64) = v53;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 1;
    *(v4 + 112) = v45;
    *(v4 + *(v2 + 64)) = 0;
    *(v4 + *(v2 + 68)) = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_34:
      v19 = sub_1D9AF8A90(0, v19[2] + 1, 1, v19);
    }

    v55 = v19[2];
    v54 = v19[3];
    if (v55 >= v54 >> 1)
    {
      v19 = sub_1D9AF8A90((v54 > 1), v55 + 1, 1, v19);
    }

    v19[2] = v55 + 1;
    sub_1D99DEB20(v4, v19 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v55, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  else
  {

    return v15;
  }

  return v19;
}

uint64_t sub_1D99DB590(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v96 = a4;
  v93 = a2;
  v111 = sub_1D9C7C57C();
  v6 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7CF9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v92 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515C8, &qword_1D9C865B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v108 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  v20 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v106 = (&v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *a3;
  v24 = *(a1 + *(type metadata accessor for NetworkService.NetworkSearchResponse(0) + 20));
  v25 = MEMORY[0x1E69E7CC0];
  result = sub_1D9A448A4(MEMORY[0x1E69E7CC0]);
  v123 = result;
  v103 = *(v23 + 16);
  if (v103)
  {
    v107 = v19;
    v27 = 0;
    v99 = 0;
    v28 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v95 = v24;
    v112 = *(v24 + 16);
    v102 = v23 + v28;
    v110 = v10 + 16;
    v29 = (v6 + 8);
    v30 = (v10 + 8);
    v94 = (v10 + 32);
    v98 = (v10 + 56);
    v97 = (v10 + 48);
    v105 = MEMORY[0x1E69E7CC0];
    v113 = -0.0001;
    v31 = v108;
    v32 = v106;
    v100 = v23;
    v101 = v21;
    v115 = 0.0001;
    while (v27 < *(v23 + 16))
    {
      v41 = *(v21 + 72);
      v109 = v27;
      result = sub_1D99DED7C(v102 + v41 * v27, v32, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v112)
      {
        v42 = v32;
        v43 = 0;
        v45 = v42[2];
        v44 = v42[3];
        v46 = *v42;
        v47 = v42[1];
        v48 = v95;
        v49 = v95 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v116 = v45;
        v117 = v46;
        while (v43 < *(v48 + 16))
        {
          (*(v10 + 16))(v14, v49 + *(v10 + 72) * v43, v9);
          sub_1D9C7CF6C();
          sub_1D9C7C4EC();
          v51 = v50;
          sub_1D9C7C50C();
          v53 = v52;
          sub_1D9C7C52C();
          v55 = v54;
          sub_1D9C7C54C();
          v57 = VIFlipOriginNormalizedRect(v51, v53, v55, v56);
          v118 = *&v58;
          v60 = v59;
          v62 = v61;
          (*v29)(v8, v111);
          v124.origin.x = v46;
          v124.origin.y = v47;
          v124.size.width = v45;
          v124.size.height = v44;
          v63 = v44;
          MinX = CGRectGetMinX(v124);
          v65 = v113;
          v66 = MinX + v113;
          v114 = v57;
          v125.origin.x = v57;
          v67 = v118;
          v125.origin.y = v118;
          v125.size.width = v60;
          v125.size.height = v62;
          v68 = CGRectGetMinX(v125);
          v70 = v66 > v68;
          v69 = v63;
          v70 = v70 || v68 > MinX + v115;
          if (!v70)
          {
            v126.size.width = v116;
            v126.origin.x = v117;
            v126.origin.y = v47;
            v126.size.height = v63;
            MinY = CGRectGetMinY(v126);
            v127.origin.x = v114;
            v127.origin.y = v67;
            v127.size.width = v60;
            v127.size.height = v62;
            v72 = CGRectGetMinY(v127);
            v69 = v63;
            if (MinY + v65 <= v72 && v72 <= MinY + v115)
            {
              v128.size.width = v116;
              v128.origin.x = v117;
              v128.origin.y = v47;
              v128.size.height = v63;
              Width = CGRectGetWidth(v128);
              v129.origin.x = v114;
              v129.origin.y = v67;
              v129.size.width = v60;
              v129.size.height = v62;
              v75 = CGRectGetWidth(v129);
              v69 = v63;
              if (Width + v65 <= v75 && v75 <= Width + v115)
              {
                v130.size.width = v116;
                v130.origin.x = v117;
                v130.origin.y = v47;
                v130.size.height = v63;
                Height = CGRectGetHeight(v130);
                v78 = Height + v113;
                v131.origin.x = v114;
                v131.origin.y = v67;
                v131.size.width = v60;
                v131.size.height = v62;
                v79 = CGRectGetHeight(v131);
                if (v78 <= v79 && v79 <= Height + v115)
                {
                  (*v94)(v107, v14, v9);
                  v80 = 0;
LABEL_26:
                  v31 = v108;
                  v32 = v106;
                  goto LABEL_28;
                }
              }
            }
          }

          ++v43;
          result = (*v30)(v14, v9);
          v44 = v69;
          v45 = v116;
          v46 = v117;
          if (v112 == v43)
          {
            v80 = 1;
            goto LABEL_26;
          }
        }

        __break(1u);
        break;
      }

      v80 = 1;
LABEL_28:
      v81 = v107;
      (*v98)(v107, v80, 1, v9);
      sub_1D99AB100(v81, v31, &qword_1ECB515C8, &qword_1D9C865B0);
      if ((*v97)(v31, 1, v9) == 1)
      {
        sub_1D99A6AE0(v31, &qword_1ECB515C8, &qword_1D9C865B0);
        v82 = v96;
        v83 = v96;
        v84 = v105;
        if (!v96)
        {
          v121 = 0;
          v122 = 0xE000000000000000;
          v85 = v106[1];
          v119 = *v106;
          v120 = v85;
          sub_1D9C7E4DC();
          v86 = v121;
          v87 = v122;
          sub_1D99DF020();
          v83 = swift_allocError();
          v82 = v96;
          *v88 = v86;
          *(v88 + 8) = v87;
          *(v88 + 16) = 1;
        }

        v89 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_1D9AF94C0(0, v84[2] + 1, 1, v84);
        }

        v91 = v84[2];
        v90 = v84[3];
        if (v91 >= v90 >> 1)
        {
          v84 = sub_1D9AF94C0((v90 > 1), v91 + 1, 1, v84);
        }

        sub_1D99A6AE0(v107, &qword_1ECB515C8, &qword_1D9C865B0);
        v84[2] = v91 + 1;
        v105 = v84;
        v84[v91 + 4] = v83;
        v37 = v106;
      }

      else
      {
        v33 = v104;
        (*v94)(v104, v31, v9);
        sub_1D9B67DFC();
        v35 = v34;
        v118 = COERCE_DOUBLE(&v92);
        MEMORY[0x1EEE9AC00](v34);
        v36 = v93;
        *(&v92 - 4) = v33;
        *(&v92 - 3) = v36;
        *(&v92 - 2) = &v123;
        *(&v92 - 1) = v32;
        v37 = v32;
        v38 = v99;
        sub_1D9B099F4(sub_1D99DF074, (&v92 - 6), v35);
        v99 = v38;

        sub_1D99A6AE0(v81, &qword_1ECB515C8, &qword_1D9C865B0);
        (*v30)(v104, v9);
      }

      v39 = v109 + 1;
      result = sub_1D99DEDE4(v37, type metadata accessor for VisualUnderstanding.ImageRegion);
      v27 = v39;
      v40 = v39 == v103;
      v31 = v108;
      v21 = v101;
      v32 = v37;
      v23 = v100;
      if (v40)
      {
        return v123;
      }
    }

    __break(1u);
  }

  else
  {
    v105 = v25;
  }

  return result;
}

unint64_t sub_1D99DBF04(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_1D9C7CF9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a3;
  v17 = *(a1 + *(type metadata accessor for NetworkService.NetworkSearchResponse(0) + 20));
  result = sub_1D9A448A4(MEMORY[0x1E69E7CC0]);
  v33 = result;
  if (a4)
  {
    a2 = result;
    v20 = a4;
    v19 = sub_1D9AF94C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = v19[2];
    v21 = v19[3];
    v8 = (v11 + 1);
    if (v11 < v21 >> 1)
    {
LABEL_3:
      v19[2] = v8;
      v19[v11 + 4] = a4;
      return a2;
    }

LABEL_15:
    v19 = sub_1D9AF94C0((v21 > 1), v8, 1, v19);
    goto LABEL_3;
  }

  v22 = *(v16 + 16);
  if (v22)
  {
    v31 = v9;
    v23 = 0;
    a4 = 0;
    while (1)
    {
      v21 = *(v16 + 16);
      if (v23 >= v21)
      {
        break;
      }

      sub_1D99DED7C(v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99D8C20(v15, v17, &v33, a2);
      ++v23;
      sub_1D99DEDE4(v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v22 == v23)
      {
        result = v33;
        v9 = v31;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:
  if (!*(result + 16) && *(v17 + 16))
  {
    (*(v9 + 16))(v11, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = 1.0;
    v34.size.height = 1.0;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = 0.0;
    v35.origin.y = 0.0;
    v35.size.width = 1.0;
    v35.size.height = 1.0;
    v25 = 1.0 - CGRectGetMaxY(v35);
    v36.origin.x = 0.0;
    v36.origin.y = 0.0;
    v36.size.width = 1.0;
    v36.size.height = 1.0;
    Width = CGRectGetWidth(v36);
    v37.origin.x = 0.0;
    v37.origin.y = 0.0;
    v37.size.width = 1.0;
    v37.size.height = 1.0;
    Height = CGRectGetHeight(v37);
    v28 = sub_1D9A6F7C8(Height);
    v29 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v29;
    sub_1D9C112BC(MEMORY[0x1E69E7CC0], v28, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], isUniquelyReferenced_nonNull_native, MinX, v25, Width, Height);
    a2 = v32;
    (*(v9 + 8))(v11, v8);
    return a2;
  }

  return result;
}

unint64_t sub_1D99DC2C8(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v189 = a6;
  v184 = a5;
  v207 = a4;
  v164 = a2;
  v197 = a1;
  v171 = type metadata accessor for ObjectKnowledge(0);
  v163 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v172 = v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v165 = v151 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510, &qword_1D9C86540);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v162 = v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v166 = (v151 - v13);
  v175 = sub_1D9C7BEDC();
  v203 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v200 = v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_1D9C7C03C();
  v202 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v206 = v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v198 = (v151 - v17);
  v195 = sub_1D9C7D9DC();
  v196 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v204 = v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v193 = v151 - v20;
  v187 = sub_1D9C7DA0C();
  v190 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v178 = v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v183 = v151 - v23;
  v24 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v199 = v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v186 = v151 - v27;
  v192 = sub_1D9C7D36C();
  v181 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v180 = v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v185 = v151 - v30;
  v31 = sub_1D9C7D9BC();
  v176 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D9C7CFFC();
  v179 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D9C7CB0C();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v151 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v151 - v42;
  v44 = *a3;
  v45 = MEMORY[0x1E69E7CC0];
  v191 = sub_1D9A448A4(MEMORY[0x1E69E7CC0]);
  v215 = v45;
  if (*(v207 + 2))
  {

    sub_1D9A18C94(v46);
    return v191;
  }

  v167 = v40;
  v170 = v38;
  v151[0] = v44;
  v168 = v36;
  v169 = v34;
  v194 = v43;
  v182 = v33;
  v188 = v31;
  v177 = v37;
  v213 = v45;
  v214 = v45;
  v48 = v197;
  v152 = *(v197 + 16);
  if (!v152)
  {
    v205 = 0;
LABEL_40:
    v118 = v151[0];
    if (*(v151[0] + 16))
    {
      v119 = *(type metadata accessor for VisualUnderstanding.ImageRegion(0) - 8);
      v120 = (v118 + ((*(v119 + 80) + 32) & ~*(v119 + 80)));
      MinX = *v120;
      v122 = v120[1];
      Width = v120[2];
      Height = v120[3];
    }

    else
    {
      v216.origin.x = 0.0;
      v216.origin.y = 0.0;
      v216.size.width = 1.0;
      v216.size.height = 1.0;
      MinX = CGRectGetMinX(v216);
      v217.origin.x = 0.0;
      v217.origin.y = 0.0;
      v217.size.width = 1.0;
      v217.size.height = 1.0;
      v122 = 1.0 - CGRectGetMaxY(v217);
      v218.origin.x = 0.0;
      v218.origin.y = 0.0;
      v218.size.width = 1.0;
      v218.size.height = 1.0;
      Width = CGRectGetWidth(v218);
      v219.origin.x = 0.0;
      v219.origin.y = 0.0;
      v219.size.width = 1.0;
      v219.size.height = 1.0;
      Height = CGRectGetHeight(v219);
    }

    v126 = v172;
    v127 = v171;
    type metadata accessor for Reranker();
    swift_allocObject();
    v128 = v205;
    sub_1D9B3DF04();
    v129 = v213;
    v130 = v128;
    if (!v128)
    {
      v131 = v214;
      v132 = v165;
      sub_1D99AB100(v164, v165, &unk_1ECB51B10, &qword_1D9C86550);
      Context = type metadata accessor for VisualQueryContext(0);
      if ((*(*(Context - 8) + 48))(v132, 1, Context) == 1)
      {
        sub_1D99A6AE0(v132, &unk_1ECB51B10, &qword_1D9C86550);
        v134 = 0;
      }

      else
      {
        v134 = *(v132 + *(Context + 44));
        v135 = v134;
        sub_1D99DEDE4(v132, type metadata accessor for VisualQueryContext);
      }

      v136 = v166;
      sub_1D9B406F8(v129, v131, v134, v166);

      v141 = v162;
      sub_1D99AB100(v136, v162, &qword_1ECB51510, &qword_1D9C86540);
      v142 = v163;
      if ((*(v163 + 48))(v141, 1, v127) == 1)
      {
        sub_1D99A6AE0(v141, &qword_1ECB51510, &qword_1D9C86540);
        v143 = v191;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v209 = v143;
        sub_1D9C112BC(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], isUniquelyReferenced_nonNull_native, MinX, v122, Width, Height);

        v145 = v209;
      }

      else
      {
        sub_1D99DEB20(v141, v126, type metadata accessor for ObjectKnowledge);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51530, &qword_1D9C86558);
        v147 = (*(v142 + 80) + 32) & ~*(v142 + 80);
        v148 = swift_allocObject();
        *(v148 + 16) = xmmword_1D9C85660;
        sub_1D99DED7C(v126, v148 + v147, type metadata accessor for ObjectKnowledge);
        v149 = v191;
        v150 = swift_isUniquelyReferenced_nonNull_native();
        *&v209 = v149;
        sub_1D9C112BC(v148, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v150, MinX, v122, Width, Height);

        v145 = v209;
        sub_1D99DEDE4(v126, type metadata accessor for ObjectKnowledge);
      }

      sub_1D99A6AE0(v166, &qword_1ECB51510, &qword_1D9C86540);
      return v145;
    }

    v94 = v191;
    v54 = v130;
    goto LABEL_57;
  }

  v49 = sub_1D9C7D04C();
  v50 = 0;
  v205 = 0;
  v51 = *(v49 - 8);
  v52 = v170;
  v157 = v170 + 16;
  v156 = v170 + 32;
  v155 = v179 + 1;
  v179 = v181 + 1;
  v53 = v189;
  v151[1] = v189 + 40;
  v181 = (v196 + 1);
  v161 = v190 + 16;
  v160 = v190 + 8;
  v196 = (v203 + 8);
  v54 = v202;
  v207 = v202 + 32;
  v203 = v202 + 16;
  v153 = (v176 + 8);
  v154 = (v170 + 8);
  v159 = v48 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v158 = *(v51 + 72);
  v55 = v195;
  v56 = v193;
  v57 = v177;
  v58 = v182;
  while (1)
  {
    v176 = v50;
    v59 = sub_1D9C7CF4C();
    if (!*(v59 + 16))
    {

      sub_1D99DEA78();
      v137 = swift_allocError();
      *v138 = 0;
      v54 = v137;
      swift_willThrow();
      goto LABEL_43;
    }

    (*(v52 + 16))(v167, v59 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v57);

    v60 = v194;
    (*(v52 + 32))();
    v61 = v168;
    sub_1D9C7CAFC();
    v62 = sub_1D9C7CFEC();
    v63 = v61;
    LOBYTE(v61) = v62;
    (*v155)(v63, v169);
    if (v61)
    {

      sub_1D99DEA78();
      v139 = swift_allocError();
      *v140 = 1;
      v54 = v139;
      swift_willThrow();
      (*v154)(v60, v177);
      goto LABEL_43;
    }

    v64 = v185;
    sub_1D9C7CAEC();
    v65 = sub_1D9C7D34C();
    v67 = v66;
    v68 = v64;
    v69 = *v179;
    (*v179)(v68, v192);
    *&v212 = v65;
    *(&v212 + 1) = v67;
    v211 = 0;
    v209 = 0u;
    v210 = 0u;
    sub_1D9C7D43C();
    sub_1D99DEF28(&qword_1ECB51120, MEMORY[0x1E69945B8], MEMORY[0x1E69945B0]);
    v70 = v205;
    sub_1D9C7D67C();
    v205 = v70;
    if (v70)
    {
      goto LABEL_56;
    }

    if (v184)
    {
      ObjectType = swift_getObjectType();
      v72 = v180;
      sub_1D9C7CAEC();
      v73 = sub_1D9C7D34C();
      v75 = v74;
      v69(v72, v192);
      v76 = v205;
      v77 = (*(v53 + 40))(v73, v75, ObjectType, v53);
      v205 = v76;
      if (v76)
      {
        v146 = sub_1D99A5748(v73, v75);
        (*v153)(v182, v188, v146);
LABEL_56:
        (*v154)(v194, v177);

        v94 = v191;
        v54 = v205;
        goto LABEL_57;
      }

      v78 = v77;
      sub_1D99A5748(v73, v75);
      v55 = v195;
      v56 = v193;
      v58 = v182;
      v79 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v79 = MEMORY[0x1E69E7CC0];
      v78 = MEMORY[0x1E69E7CC0];
    }

    sub_1D9C7D9AC();
    v80 = sub_1D9C7D98C();
    v174 = *v181;
    v174(v56, v55);
    v81 = *(v80 + 16);
    v82 = v204;
    v83 = v183;
    if (v81)
    {
      v84 = v190;
      v85 = v187;
      (*(v190 + 16))(v183, v80 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v190 + 72) * (v81 - 1), v187);

      v86 = sub_1D9C7D9EC();
      v87 = v85;
      v88 = v86;
      (*(v84 + 8))(v83, v87);
      v89 = *(v88 + 16);
      if (v89)
      {
        v173 = v78;
        v208 = v79;
        v90 = &v208;
        v197 = v89;
        sub_1D99FE438(0, v89, 0);
        v92 = 0;
        v93 = v208;
        v94 = v205;
        v95 = v175;
        v96 = v200;
        while (1)
        {
          v97 = *(v88 + 16);
          if (v92 >= v97)
          {
            goto LABEL_62;
          }

          v98 = v88;
          v212 = *(v88 + 16 * v92 + 32);
          v211 = 0;
          v209 = 0u;
          v210 = 0u;
          v99 = *(&v212 + 1);
          v100 = v212;
          sub_1D99AF2FC(v212, *(&v212 + 1));
          sub_1D99AF2FC(v100, v99);
          sub_1D9C7D43C();
          sub_1D99DEF28(&qword_1ECB51528, MEMORY[0x1E69BCE80], MEMORY[0x1E69BCE78]);
          sub_1D9C7D67C();
          if (v94)
          {
            break;
          }

          v205 = 0;
          v54 = v198;
          v90 = v96;
          sub_1D9C7BECC();
          v101 = sub_1D99A5748(v100, v99);
          (*v196)(v96, v95, v101);
          v102 = v93;
          v208 = v93;
          v104 = *(v93 + 16);
          v103 = *(v93 + 24);
          if (v104 >= v103 >> 1)
          {
            v90 = &v208;
            sub_1D99FE438((v103 > 1), v104 + 1, 1);
            v95 = v175;
            v102 = v208;
          }

          ++v92;
          *(v102 + 16) = v104 + 1;
          v93 = v102;
          (*(v202 + 4))(v102 + ((v202[80] + 32) & ~v202[80]) + *(v202 + 9) * v104, v54, v201);
          v96 = v200;
          v82 = v204;
          v94 = v205;
          v88 = v98;
          if (v197 == v92)
          {

            v54 = v202;
            v58 = v182;
            v79 = MEMORY[0x1E69E7CC0];
            v78 = v173;
            goto LABEL_22;
          }
        }

        v54 = v94;

        v125 = sub_1D99A5748(v100, v99);
        (*v153)(v182, v188, v125);
        (*v154)(v194, v177);

LABEL_43:
        v94 = v191;
LABEL_57:
        v91 = sub_1D9AF94C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v90 = v91[2];
        v97 = v91[3];
        v96 = v90 + 1;
        if (v90 >= v97 >> 1)
        {
          goto LABEL_63;
        }

        goto LABEL_58;
      }
    }

    v93 = v79;
LABEL_22:
    sub_1D9C7D9AC();
    v105 = sub_1D9C7D98C();
    v174(v82, v195);
    v106 = *(v105 + 16);
    if (v106)
    {
      v107 = v190;
      v108 = v178;
      v109 = v187;
      (*(v190 + 16))(v178, v105 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v190 + 72) * (v106 - 1), v187);

      v96 = sub_1D9C7D9FC();
      (*(v107 + 8))(v108, v109);
      v94 = *(v96 + 16);
      if (v94)
      {
        break;
      }

      goto LABEL_35;
    }

    v96 = v79;
    v94 = *(v79 + 16);
    if (v94)
    {
      break;
    }

LABEL_35:

LABEL_36:
    v116 = v176 + 1;
    sub_1D9A18764(v78);
    sub_1D9A18B24(v79);
    (*v153)(v58, v188);
    v57 = v177;
    (*v154)(v194, v177);
    v50 = v116;
    v117 = v116 == v152;
    v53 = v189;
    v55 = v195;
    v56 = v193;
    v52 = v170;
    if (v117)
    {
      goto LABEL_40;
    }
  }

  v173 = v78;
  *&v209 = v79;
  sub_1D99FE438(0, v94, 0);
  v79 = v209;
  v110 = *(v93 + 16);
  v111 = 32;
  v90 = v201;
  v112 = v206;
  while (1)
  {
    if (!v110 || (v97 = *(v96 + v111), v97 >= v110))
    {
      sub_1D9C7C02C();
      goto LABEL_30;
    }

    if (v97 >= *(v93 + 16))
    {
      break;
    }

    v54[2](v112, v93 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v54[9] * v97, v90);
LABEL_30:
    *&v209 = v79;
    v114 = *(v79 + 16);
    v113 = *(v79 + 24);
    if (v114 >= v113 >> 1)
    {
      sub_1D99FE438((v113 > 1), v114 + 1, 1);
      v90 = v201;
      v79 = v209;
    }

    *(v79 + 16) = v114 + 1;
    v115 = v79 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v54[9] * v114;
    v112 = v206;
    v54[4](v115, v206, v90);
    v111 += 8;
    if (!--v94)
    {

      v58 = v182;
      v78 = v173;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  v91 = sub_1D9AF94C0((v97 > 1), v96, 1, v91);
LABEL_58:
  v91[2] = v96;
  v91[v90 + 4] = v54;
  return v94;
}

unint64_t sub_1D99DDAC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v141 = a1;
  v142 = a6;
  v145 = a5;
  v146 = a2;
  v147 = a4;
  v7 = type metadata accessor for ObjectKnowledge(0);
  v8 = *(v7 - 8);
  v130 = v7;
  v131 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v128 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510, &qword_1D9C86540);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v129 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v132 = (&v118 - v13);
  v138 = sub_1D9C7C16C();
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v139 = (&v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v140 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1D9C7BEDC();
  v137 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9C7D36C();
  v134 = *(v18 - 8);
  v135 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51518, &qword_1D9C86548);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v118 - v22;
  v24 = sub_1D9C7CB0C();
  v133 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v118 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v118 - v34;
  v36 = *a3;
  v37 = *(a3 + 15);
  v38 = *(a3 + 19);
  v168 = *(a3 + 17);
  v169 = v38;
  v170 = *(a3 + 21);
  v39 = *(a3 + 7);
  v40 = *(a3 + 11);
  v164 = *(a3 + 9);
  v165 = v40;
  v166 = *(a3 + 13);
  v167 = v37;
  v41 = *(a3 + 3);
  v160 = *(a3 + 1);
  v161 = v41;
  v162 = *(a3 + 5);
  v163 = v39;
  v42 = sub_1D9A448A4(MEMORY[0x1E69E7CC0]);
  if (v147)
  {
    v43 = v147;
    v44 = v147;
    v45 = sub_1D9AF94C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v47 = v45[2];
    v46 = v45[3];
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1D9AF94C0((v46 > 1), v47 + 1, 1, v45);
    }

    v45[2] = v47 + 1;
    v45[v47 + 4] = v43;
    return v42;
  }

  v147 = v32;
  v126 = v36;
  v127 = v23;
  v124 = v26;
  v125 = v20;
  v123 = v29;
  v48 = v146;
  sub_1D99AB100(v146, v35, &unk_1ECB51B10, &qword_1D9C86550);
  Context = type metadata accessor for VisualQueryContext(0);
  v50 = *(Context - 8);
  v51 = *(v50 + 48);
  v52 = v50 + 48;
  if (v51(v35, 1, Context) == 1)
  {
    v53 = v42;
LABEL_10:
    sub_1D99A6AE0(v35, &unk_1ECB51B10, &qword_1D9C86550);
    goto LABEL_11;
  }

  v121 = v52;
  v122 = v51;
  v53 = v42;
  v54 = *&v35[*(Context + 44)];
  v55 = v54;
  sub_1D99DEDE4(v35, type metadata accessor for VisualQueryContext);
  if (v54)
  {
    [v55 coordinate];
    v57 = v56;

    v58 = v48;
    v59 = v147;
    sub_1D99AB100(v58, v147, &unk_1ECB51B10, &qword_1D9C86550);
    if (v122(v59, 1, Context) == 1)
    {
      v35 = v59;
      goto LABEL_10;
    }

    v66 = *&v59[*(Context + 44)];
    v67 = v66;
    sub_1D99DEDE4(v59, type metadata accessor for VisualQueryContext);
    if (!v66)
    {
      goto LABEL_11;
    }

    [v67 coordinate];
    v69 = v68;

    sub_1D9ABDA50(7, v57, v69);
    v119 = Context;
    if (!v145)
    {

      v80 = 0;
      v81 = 0;
      v147 = 0xC000000000000000;
      v82 = 0xC000000000000000;
      v78 = v144;
LABEL_34:
      v158 = v81;
      v159 = v82;
      memset(v148, 0, sizeof(v148));
      v94 = v82;
      sub_1D99AF2FC(v81, v82);
      sub_1D9C7D43C();
      sub_1D99DEF28(&qword_1ECB51528, MEMORY[0x1E69BCE80], MEMORY[0x1E69BCE78]);
      sub_1D9C7D67C();
      v145 = v94;
      sub_1D9C7BEBC();
      v95 = v126;
      if (*(v126 + 16))
      {
        v96 = *(type metadata accessor for VisualUnderstanding.ImageRegion(0) - 8);
        v97 = (v95 + ((*(v96 + 80) + 32) & ~*(v96 + 80)));
        MinX = *v97;
        v99 = v97[1];
        Width = v97[2];
        Height = v97[3];
      }

      else
      {
        v171.origin.x = 0.0;
        v171.origin.y = 0.0;
        v171.size.width = 1.0;
        v171.size.height = 1.0;
        MinX = CGRectGetMinX(v171);
        v172.origin.x = 0.0;
        v172.origin.y = 0.0;
        v172.size.width = 1.0;
        v172.size.height = 1.0;
        v99 = 1.0 - CGRectGetMaxY(v172);
        v173.origin.x = 0.0;
        v173.origin.y = 0.0;
        v173.size.width = 1.0;
        v173.size.height = 1.0;
        Width = CGRectGetWidth(v173);
        v174.origin.x = 0.0;
        v174.origin.y = 0.0;
        v174.size.width = 1.0;
        v174.size.height = 1.0;
        Height = CGRectGetHeight(v174);
      }

      type metadata accessor for Reranker();
      swift_allocObject();
      sub_1D9B3DF04();
      v142 = v81;
      v154 = v167;
      v155 = v168;
      v156 = v169;
      v157 = v170;
      v150 = v163;
      v151 = v164;
      v152 = v165;
      v153 = v166;
      *&v148[1] = v160;
      *&v148[3] = v161;
      v148[0] = v95;
      v149 = v162;
      v102 = v123;
      sub_1D99AB100(v146, v123, &unk_1ECB51B10, &qword_1D9C86550);
      v103 = v119;
      v104 = v122(v102, 1, v119);
      v105 = v139;
      v144 = v80;
      if (v104 == 1)
      {
        sub_1D99A6AE0(v102, &unk_1ECB51B10, &qword_1D9C86550);
        v106 = 0;
      }

      else
      {
        v106 = *(v102 + *(v103 + 44));
        v107 = v106;
        sub_1D99DEDE4(v102, type metadata accessor for VisualQueryContext);
      }

      v108 = v132;
      sub_1D9B41274(v105, v148, v106, v132);

      v109 = v129;
      sub_1D99AB100(v108, v129, &qword_1ECB51510, &qword_1D9C86540);
      v110 = v131;
      v111 = v108;
      if ((*(v131 + 48))(v109, 1, v130) == 1)
      {
        sub_1D99A6AE0(v109, &qword_1ECB51510, &qword_1D9C86540);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v148[0] = v53;
        sub_1D9C112BC(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], isUniquelyReferenced_nonNull_native, MinX, v99, Width, Height);

        sub_1D99A5748(v144, v147);
        sub_1D99A5748(v142, v145);
        v42 = v148[0];
        v113 = v108;
      }

      else
      {
        v114 = v128;
        sub_1D99DEB20(v109, v128, type metadata accessor for ObjectKnowledge);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51530, &qword_1D9C86558);
        v115 = (*(v110 + 80) + 32) & ~*(v110 + 80);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_1D9C85660;
        sub_1D99DED7C(v114, v116 + v115, type metadata accessor for ObjectKnowledge);
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v148[0] = v53;
        sub_1D9C112BC(v116, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v117, MinX, v99, Width, Height);

        sub_1D99A5748(v144, v147);
        sub_1D99A5748(v142, v145);
        v42 = v148[0];
        sub_1D99DEDE4(v114, type metadata accessor for ObjectKnowledge);
        v113 = v111;
      }

      sub_1D99A6AE0(v113, &qword_1ECB51510, &qword_1D9C86540);
      (*(v136 + 8))(v139, v138);
      (*(v137 + 8))(v143, v78);
      return v42;
    }

    v120 = v70;
    v147 = v71;
    v72 = type metadata accessor for NetworkService.NetworkEncryptedSearchResponse(0);
    v73 = v127;
    sub_1D99AB100(v141 + *(v72 + 20), v127, &qword_1ECB51518, &qword_1D9C86548);
    v74 = sub_1D9C7D04C();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      sub_1D99A6AE0(v73, &qword_1ECB51518, &qword_1D9C86548);
      v76 = 0;
      v77 = 0xC000000000000000;
      v78 = v144;
      v79 = v142;
    }

    else
    {
      v83 = sub_1D9C7CF4C();
      (*(v75 + 8))(v73, v74);
      v79 = v142;
      if (*(v83 + 16))
      {
        v84 = v133;
        v85 = v124;
        (*(v133 + 16))(v124, v83 + ((*(v84 + 80) + 32) & ~*(v84 + 80)), v24);

        v86 = v125;
        sub_1D9C7CAEC();
        (*(v84 + 8))(v85, v24);
        v76 = sub_1D9C7D34C();
        v77 = v87;
        (*(v134 + 8))(v86, v135);
      }

      else
      {

        v76 = 0;
        v77 = 0xC000000000000000;
      }

      v78 = v144;
    }

    ObjectType = swift_getObjectType();
    v80 = (*(v79 + 40))(v76, v77, v120, v147, ObjectType, v79);
    v90 = v89;

    sub_1D99A5748(v76, v77);
    v147 = v90;
    v91 = v90 >> 62;
    if ((v90 >> 62) > 1)
    {
      if (v91 != 2)
      {
        goto LABEL_32;
      }

      v92 = *(v80 + 16);
      v93 = *(v80 + 24);
    }

    else
    {
      if (!v91)
      {
        if ((v147 & 0xFF000000000000) == 0)
        {
          goto LABEL_32;
        }

LABEL_33:
        v81 = Data.inflate(algorithm:)(3, v80, v147);
        goto LABEL_34;
      }

      v92 = v80;
      v93 = v80 >> 32;
    }

    if (v92 != v93)
    {
      goto LABEL_33;
    }

LABEL_32:
    v81 = 0;
    v82 = 0xC000000000000000;
    goto LABEL_34;
  }

LABEL_11:
  sub_1D99DEA78();
  v60 = swift_allocError();
  *v61 = 2;
  swift_willThrow();
  v62 = sub_1D9AF94C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v64 = v62[2];
  v63 = v62[3];
  v42 = v53;
  if (v64 >= v63 >> 1)
  {
    v62 = sub_1D9AF94C0((v63 > 1), v64 + 1, 1, v62);
  }

  v62[2] = v64 + 1;
  v62[v64 + 4] = v60;
  return v42;
}

unint64_t sub_1D99DEA78()
{
  result = qword_1ECB51520;
  if (!qword_1ECB51520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51520);
  }

  return result;
}

uint64_t sub_1D99DEB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99DED7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99DEDE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99DEE70()
{

  sub_1D9C7C0CC();
  return sub_1D9C7C96C();
}

uint64_t sub_1D99DEF28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D99DEF70()
{
  result = qword_1ECB515C0;
  if (!qword_1ECB515C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB515C0);
  }

  return result;
}

unint64_t sub_1D99DF020()
{
  result = qword_1ECB515D0;
  if (!qword_1ECB515D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB515D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D99DF0F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D99DF13C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D99DF1AC()
{
  result = qword_1ECB515D8;
  if (!qword_1ECB515D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB515D8);
  }

  return result;
}

unint64_t sub_1D99DF200()
{
  result = qword_1ECB515E0;
  if (!qword_1ECB515E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB515E0);
  }

  return result;
}

unint64_t sub_1D99DF254()
{
  result = qword_1ECB515E8;
  if (!qword_1ECB515E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB515E8);
  }

  return result;
}

unint64_t sub_1D99DF2A8()
{
  result = qword_1ECB515F8;
  if (!qword_1ECB515F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB515F8);
  }

  return result;
}

unint64_t sub_1D99DF2FC()
{
  result = qword_1ECB51600;
  if (!qword_1ECB51600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51600);
  }

  return result;
}

unint64_t sub_1D99DF350()
{
  result = qword_1ECB51620;
  if (!qword_1ECB51620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51620);
  }

  return result;
}

uint64_t sub_1D99DF3A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51608, &qword_1D9C86880);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D99DF410(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D99AF2FC(result, a2);
  }

  return result;
}

unint64_t sub_1D99DF438()
{
  result = qword_1ECB51628;
  if (!qword_1ECB51628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51628);
  }

  return result;
}

unint64_t sub_1D99DF490()
{
  result = qword_1ECB51630;
  if (!qword_1ECB51630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51630);
  }

  return result;
}

unint64_t sub_1D99DF4E8()
{
  result = qword_1ECB51638;
  if (!qword_1ECB51638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51638);
  }

  return result;
}

uint64_t type metadata accessor for CustomDetectionDomainAssignmentRule(uint64_t a1)
{
  result = qword_1EDD30768;
  if (!qword_1EDD30768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99DF618(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D99DF6A0(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_1D9C7D8DC();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0, &qword_1D9C8AF90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v78 - v13;
  v15 = _s14DetectedResultVMa(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51640, &qword_1D9C869F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v78 - v19;
  v21 = a1[7];
  v126 = a1[6];
  v127 = v21;
  v128[0] = a1[8];
  *(v128 + 13) = *(a1 + 141);
  v22 = a1[3];
  v122 = a1[2];
  v123 = v22;
  v23 = a1[5];
  v124 = a1[4];
  v125 = v23;
  v24 = a1[1];
  v120 = *a1;
  v121 = v24;
  if (*(a2 + 104) == 1)
  {
    v25 = a1[7];
    a4[6] = a1[6];
    a4[7] = v25;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v26 = a1[3];
    a4[2] = a1[2];
    a4[3] = v26;
    v27 = a1[5];
    a4[4] = a1[4];
    a4[5] = v27;
    v28 = *a1;
    v29 = a1[1];
LABEL_14:
    *a4 = v28;
    a4[1] = v29;
    sub_1D99AB100(&v120, &v111, &qword_1ECB510B8, &unk_1D9C864F0);
    return;
  }

  v30 = *(a2 + 56);
  v31 = type metadata accessor for DomainAssignmentSignals(0);
  sub_1D99AB100(a3 + *(v31 + 24), v20, &qword_1ECB51640, &qword_1D9C869F0);
  v32 = type metadata accessor for DomainAssignmentSignals.ImageMetadata(0);
  if ((*(*(v32 - 8) + 48))(v20, 1, v32) == 1)
  {
    sub_1D99A6AE0(v20, &qword_1ECB51640, &qword_1D9C869F0);
    v33 = 0;
  }

  else
  {
    v33 = *&v20[*(v32 + 32)];

    sub_1D99E02BC(v20, type metadata accessor for DomainAssignmentSignals.ImageMetadata);
  }

  v34 = v82;
  v35 = v83;
  sub_1D99DFFD8(v33);
  v37 = v36;

  if (!*(v37 + 16))
  {

    goto LABEL_13;
  }

  v38 = type metadata accessor for CustomDetectionDomainAssignmentRule(0);
  *&v111 = *&v34[*(v38 + 28)];

  sub_1D9A5FF38(v37, &v111, v30, v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D99A6AE0(v14, &qword_1ECB510C0, &qword_1D9C8AF90);
    if (*v34 == 1)
    {
      v39 = v78;
      static Logger.argos.getter(v78);
      sub_1D9A3E0E0(v35);
      v40 = v80;
      v41 = *(v79 + 8);
      v41(v39, v80);
      sub_1D99AB100(&v120, &v111, &qword_1ECB510B8, &unk_1D9C864F0);
      v42 = sub_1D9C7D8BC();
      v43 = sub_1D9C7E09C();
      sub_1D99A6AE0(&v120, &qword_1ECB510B8, &unk_1D9C864F0);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v104[0] = v45;
        *v44 = 136315138;
        v117 = v126;
        v118 = v127;
        v119[0] = v128[0];
        *(v119 + 13) = *(v128 + 13);
        v113 = v122;
        v114 = v123;
        v115 = v124;
        v116 = v125;
        v111 = v120;
        v112 = v121;
        if (sub_1D99AE104(&v111) == 1)
        {
          v46 = 0;
          v47 = 0xE000000000000000;
        }

        else
        {
          v46 = sub_1D9A15C94(v111);
          v47 = v72;
        }

        v73 = sub_1D9A0E224(v46, v47, v104);

        *(v44 + 4) = v73;
        _os_log_impl(&dword_1D9962000, v42, v43, "No satisfied customized detector label, reject %s", v44, 0xCu);
        v74 = __swift_destroy_boxed_opaque_existential_0Tm(v45);
        MEMORY[0x1DA7405F0](v45, -1, -1, v74);
        MEMORY[0x1DA7405F0](v44, -1, -1);

        v41(v83, v80);
      }

      else
      {

        v41(v35, v40);
      }

      sub_1D99D3B54(&v111);
      v75 = v118;
      a4[6] = v117;
      a4[7] = v75;
      a4[8] = v119[0];
      *(a4 + 141) = *(v119 + 13);
      v76 = v114;
      a4[2] = v113;
      a4[3] = v76;
      v77 = v116;
      a4[4] = v115;
      a4[5] = v77;
      v70 = v111;
      v71 = v112;
      goto LABEL_28;
    }

LABEL_13:
    v48 = v127;
    a4[6] = v126;
    a4[7] = v48;
    a4[8] = v128[0];
    *(a4 + 141) = *(v128 + 13);
    v49 = v123;
    a4[2] = v122;
    a4[3] = v49;
    v50 = v125;
    a4[4] = v124;
    a4[5] = v50;
    v28 = v120;
    v29 = v121;
    goto LABEL_14;
  }

  v51 = v14;
  v52 = v81;
  sub_1D99E03D4(v51, v81, _s14DetectedResultVMa);
  v53 = v34[*(v38 + 20)];
  v54 = (v52 + *(v15 + 28));
  v55 = *v54;
  v56 = v54[1];
  v57 = v54[2];
  v58 = v54[3];
  v59 = *(v52 + *(v15 + 32));
  LOBYTE(v104[0]) = v53;
  *(&v104[1] + 8) = 0u;
  *(v104 + 8) = 0u;
  BYTE8(v104[2]) = 0;
  v105 = 0u;
  v106 = 0u;
  *&v107 = v55;
  *(&v107 + 1) = v56;
  *&v108 = v57;
  *(&v108 + 1) = v58;
  LODWORD(v109) = 0;
  DWORD1(v109) = v59;
  LOWORD(v110[0]) = 0;
  *(&v109 + 1) = 0;
  *(&v110[1] + 5) = 0;
  *(&v110[0] + 1) = 0;
  *&v110[1] = 0;
  v117 = v126;
  v118 = v127;
  v119[0] = v128[0];
  *(v119 + 13) = *(v128 + 13);
  v113 = v122;
  v114 = v123;
  v115 = v124;
  v116 = v125;
  v111 = v120;
  v112 = v121;
  if (sub_1D99AE104(&v111) != 1)
  {
    v62 = sub_1D9A15C94(v111);
    v64 = v63;
    if (v62 == sub_1D9A15C94(v53) && v64 == v65)
    {
    }

    else
    {
      v66 = sub_1D9C7E7DC();

      if ((v66 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v101 = v117;
    v102 = v118;
    v103[0] = v119[0];
    *(v103 + 13) = *(v119 + 13);
    v97 = v113;
    v98 = v114;
    v99 = v115;
    v100 = v116;
    v95 = v111;
    v96 = v112;
    v92 = v108;
    v93 = v109;
    v94[0] = v110[0];
    *(v94 + 13) = *(v110 + 13);
    v88 = v104[2];
    v89 = v105;
    v90 = v106;
    v91 = v107;
    v86 = v104[0];
    v87 = v104[1];
    sub_1D9B67854(&v95, &v86, v84);
    sub_1D99E02BC(v52, _s14DetectedResultVMa);
    sub_1D99AE0B0(v104);
    v92 = v84[6];
    v93 = v84[7];
    v94[0] = v85[0];
    *(v94 + 13) = *(v85 + 13);
    v88 = v84[2];
    v89 = v84[3];
    v90 = v84[4];
    v91 = v84[5];
    v60 = v84[0];
    v61 = v84[1];
    goto LABEL_23;
  }

LABEL_17:
  sub_1D99E02BC(v52, _s14DetectedResultVMa);
  v92 = v108;
  v93 = v109;
  v94[0] = v110[0];
  *(v94 + 13) = *(v110 + 13);
  v88 = v104[2];
  v89 = v105;
  v90 = v106;
  v91 = v107;
  v60 = v104[0];
  v61 = v104[1];
LABEL_23:
  v86 = v60;
  v87 = v61;
  faiss::NormalizationTransform::~NormalizationTransform(&v86);
  v101 = v92;
  v102 = v93;
  v103[0] = v94[0];
  *(v103 + 13) = *(v94 + 13);
  v97 = v88;
  v98 = v89;
  v99 = v90;
  v100 = v91;
  v95 = v86;
  v96 = v87;
  v67 = v93;
  a4[6] = v92;
  a4[7] = v67;
  a4[8] = v103[0];
  *(a4 + 141) = *(v103 + 13);
  v68 = v98;
  a4[2] = v97;
  a4[3] = v68;
  v69 = v100;
  a4[4] = v99;
  a4[5] = v69;
  v70 = v95;
  v71 = v96;
LABEL_28:
  *a4 = v70;
  a4[1] = v71;
}

void sub_1D99DFFD8(uint64_t a1)
{
  v32 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v5 = type metadata accessor for CustomDetectionDomainAssignmentRule(0);
    v6 = sub_1D9A15C94(*(v1 + *(v5 + 20)));
    if (*(a1 + 16))
    {
      v8 = sub_1D99ED894(v6, v7);
      v10 = v9;

      if (v10)
      {
        v11 = *(*(a1 + 56) + 8 * v8);
        v14 = *(v11 + 64);
        v13 = v11 + 64;
        v12 = v14;
        v15 = 1 << *(*(*(a1 + 56) + 8 * v8) + 32);
        v16 = -1;
        if (v15 < 64)
        {
          v16 = ~(-1 << v15);
        }

        v17 = v16 & v12;
        v18 = (v15 + 63) >> 6;
        v31 = *(*(a1 + 56) + 8 * v8);

        v20 = 0;
        v21 = MEMORY[0x1E69E7CC0];
        v30 = v3;
        if (v17)
        {
          goto LABEL_11;
        }

        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v18)
          {

            return;
          }

          v17 = *(v13 + 8 * v22);
          ++v20;
          if (v17)
          {
            v20 = v22;
            do
            {
LABEL_11:
              v23 = *(*(v31 + 48) + 16 * (__clz(__rbit64(v17)) | (v20 << 6)) + 8);
              v24 = MEMORY[0x1EEE9AC00](v19);
              *(&v29 - 4) = v25;
              *(&v29 - 3) = v23;
              *(&v29 - 2) = v24;
              sub_1D99E037C();

              sub_1D9C7D6BC();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_1D9AF9C08(0, v21[2] + 1, 1, v21);
              }

              v26 = v30;
              v28 = v21[2];
              v27 = v21[3];
              if (v28 >= v27 >> 1)
              {
                v21 = sub_1D9AF9C08((v27 > 1), v28 + 1, 1, v21);
              }

              v17 &= v17 - 1;
              v21[2] = v28 + 1;
              v19 = sub_1D99E03D4(v33, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v28, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
            }

            while (v17);
          }
        }

        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1D99E02BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

float sub_1D99E031C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);

  *a1 = v4;
  *(a1 + 8) = v3;
  result = v5;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D99E037C()
{
  result = qword_1EDD2D000;
  if (!qword_1EDD2D000)
  {
    type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2D000);
  }

  return result;
}

uint64_t sub_1D99E03D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D99E04A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0;
  v3 = a1 + 40;
  v4 = *(a1 + 16);
  while (1)
  {

    v5 = sub_1D9C7DBEC();

    if ((v5 & 1) != 0 && __OFADD__(v2++, 1))
    {
      break;
    }

    v3 += 16;
    if (!--v4)
    {
      return v2 / v1;
    }
  }

  __break(1u);
  return v2 / v1;
}

void sub_1D99E053C(unint64_t a1, unint64_t a2, unint64_t *a3, unint64_t a4)
{
  v9 = sub_1D9C7DD7C();
  v65 = a3;
  v66 = a4;
  v10 = sub_1D9C7DD7C();
  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    goto LABEL_116;
  }

  if (v11 < 0)
  {
    goto LABEL_117;
  }

  v6 = v10;
  if (v10 == -1)
  {
    a3 = MEMORY[0x1E69E7CC0];
    v12 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    a3 = sub_1D9C7DF5C();
    a3[2] = v11;
    bzero(a3 + 4, 8 * v6 + 8);
    v12 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
LABEL_5:
      v11 = sub_1D9AE6618(a3, v12);

      if (v9 < 0)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_119;
      }

      if (!*(v11 + 16))
      {
        goto LABEL_120;
      }

LABEL_8:
      v5 = (v11 + 32);
      a3 = *(v11 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 32) = a3;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!a3[2])
        {
          goto LABEL_122;
        }
      }

      else
      {
        while (1)
        {
          a3 = sub_1D9B1A6C0(a3);
          *v5 = a3;
          if (a3[2])
          {
            break;
          }

LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          a3 = sub_1D9B1A6C0(a3);
          *v5 = a3;
          if (!a3[2])
          {
            goto LABEL_126;
          }

LABEL_23:
          a3[4] = 0;
          if (!v6)
          {
            goto LABEL_129;
          }

          v18 = 0;
          while (*(v11 + 16))
          {
            a3 = *v5;
            v19 = swift_isUniquelyReferenced_nonNull_native();
            *v5 = a3;
            if ((v19 & 1) == 0)
            {
              a3 = sub_1D9B1A6C0(a3);
              *v5 = a3;
            }

            v20 = v18 + 1;
            if (v18 + 1 >= a3[2])
            {
              goto LABEL_112;
            }

            a3[v18++ + 5] = v20;
            if (v6 == v20)
            {
              if (!v9)
              {
                goto LABEL_129;
              }

              v60 = v9;
              v9 = 0;
              if ((a2 & 0x2000000000000000) != 0)
              {
                v21 = HIBYTE(a2) & 0xF;
              }

              else
              {
                v21 = a1 & 0xFFFFFFFFFFFFLL;
              }

              v22 = HIBYTE(v66) & 0xF;
              if ((v66 & 0x2000000000000000) == 0)
              {
                v22 = v65 & 0xFFFFFFFFFFFFLL;
              }

              v61 = v22;
              v62 = v21;
              v23 = 1;
              v63 = v5;
              v64 = v11;
LABEL_38:
              v24 = 1;
              while (1)
              {
                v25 = sub_1D9C7DD7C();
                if (v25)
                {
                  v11 = v25;
                  if (v25 < 1)
                  {
                    v26 = MEMORY[0x1E69E7CC0];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51668, &qword_1D9C86A20);
                    v26 = swift_allocObject();
                    v27 = _swift_stdlib_malloc_size(v26);
                    v28 = v27 - 32;
                    if (v27 < 32)
                    {
                      v28 = v27 - 17;
                    }

                    v26[2] = v11;
                    v26[3] = 2 * (v28 >> 4);
                  }

                  v69 = a1;
                  v70 = a2;
                  v71 = 0;
                  v72 = v62;

                  if (v11 < 1)
                  {
                    goto LABEL_96;
                  }

                  a3 = &v69;
                  v29 = sub_1D9C7DDDC();
                  if (!v30)
                  {
                    goto LABEL_114;
                  }

                  v31 = 4;
                  while (1)
                  {
                    v32 = &v26[v31];
                    *v32 = v29;
                    v32[1] = v30;
                    if (!--v11)
                    {
                      break;
                    }

                    v31 += 2;
                    a3 = &v69;
                    v29 = sub_1D9C7DDDC();
                    if (!v30)
                    {
                      goto LABEL_114;
                    }
                  }
                }

                else
                {
                  v26 = MEMORY[0x1E69E7CC0];
                }

                if (v23 > v26[2])
                {
                  break;
                }

                v4 = v6;
                v5 = v9;
                v33 = &v26[2 * v9];
                v6 = v33[4];
                v11 = v33[5];

                v34 = sub_1D9C7DD7C();
                if (v34)
                {
                  v9 = v34;
                  if (v34 < 1)
                  {
                    v35 = MEMORY[0x1E69E7CC0];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51668, &qword_1D9C86A20);
                    v35 = swift_allocObject();
                    v36 = _swift_stdlib_malloc_size(v35);
                    v37 = v36 - 32;
                    if (v36 < 32)
                    {
                      v37 = v36 - 17;
                    }

                    v35[2] = v9;
                    v35[3] = 2 * (v37 >> 4);
                  }

                  v69 = v65;
                  v70 = v66;
                  v71 = 0;
                  v72 = v61;

                  if (v9 < 1)
                  {
                    goto LABEL_97;
                  }

                  a3 = &v69;
                  v38 = sub_1D9C7DDDC();
                  if (!v39)
                  {
                    goto LABEL_115;
                  }

                  v40 = 4;
                  while (1)
                  {
                    v41 = &v35[v40];
                    *v41 = v38;
                    v41[1] = v39;
                    if (!--v9)
                    {
                      break;
                    }

                    v40 += 2;
                    a3 = &v69;
                    v38 = sub_1D9C7DDDC();
                    if (!v39)
                    {
                      goto LABEL_115;
                    }
                  }
                }

                else
                {
                  v35 = MEMORY[0x1E69E7CC0];
                }

                v42 = v24 - 1;
                if (v24 - 1 >= v35[2])
                {
                  goto LABEL_102;
                }

                v43 = &v35[2 * v42];
                v44 = v43[4];
                a3 = v43[5];

                v45 = v6 == v44 && v11 == a3;
                if (v45)
                {

                  v47 = 0;
                }

                else
                {
                  v46 = sub_1D9C7E7DC();

                  v47 = (v46 & 1) == 0;
                }

                v6 = v4;
                v4 = v64;
                v9 = v5;
                v48 = *(v64 + 16);
                v5 = v63;
                if (v23 > v48)
                {
                  goto LABEL_103;
                }

                v49 = v63[v9];
                if (v24 >= v49[2])
                {
                  goto LABEL_104;
                }

                v50 = v49 + 4;
                v51 = v49[v24 + 4];
                v52 = __OFADD__(v51, 1);
                v53 = v51 + 1;
                if (v52)
                {
                  goto LABEL_105;
                }

                if (v23 >= v48)
                {
                  goto LABEL_106;
                }

                a3 = v63[v23];
                if (v42 >= a3[2])
                {
                  goto LABEL_107;
                }

                v54 = a3[v42 + 4];
                v52 = __OFADD__(v54, 1);
                v55 = v54 + 1;
                if (v52)
                {
                  goto LABEL_108;
                }

                v56 = v50[v42];
                v52 = __OFADD__(v56, v47);
                v57 = v56 + v47;
                if (v52)
                {
                  goto LABEL_109;
                }

                if (v55 < v53)
                {
                  v53 = v55;
                }

                if (v57 >= v53)
                {
                  v58 = v53;
                }

                else
                {
                  v58 = v57;
                }

                v59 = swift_isUniquelyReferenced_nonNull_native();
                v63[v23] = a3;
                if ((v59 & 1) == 0)
                {
                  a3 = sub_1D9B1A6C0(a3);
                  v63[v23] = a3;
                }

                if (v24 >= a3[2])
                {
                  goto LABEL_110;
                }

                a3[v24 + 4] = v58;
                v45 = v24++ == v6;
                if (v45)
                {
                  v9 = v23;
                  v45 = v23++ == v60;
                  if (v45)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_38;
                }
              }

              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
LABEL_109:
              __break(1u);
LABEL_110:
              __break(1u);
              break;
            }
          }

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
          v11 = sub_1D9B1A74C(v11);
          if (*(v11 + 16))
          {
            goto LABEL_8;
          }

LABEL_120:
          __break(1u);
        }
      }

      a3[4] = 0;
      if (!v9)
      {
        goto LABEL_19;
      }

      v14 = (v11 + 40);
      v4 = 1;
      v15 = v9;
      while (1)
      {
        if (v4 >= *(v11 + 16))
        {
          goto LABEL_113;
        }

        a3 = *v14;
        v16 = swift_isUniquelyReferenced_nonNull_native();
        *v14 = a3;
        if (v16)
        {
          if (!a3[2])
          {
            goto LABEL_18;
          }
        }

        else
        {
          a3 = sub_1D9B1A6C0(a3);
          *v14 = a3;
          if (!a3[2])
          {
LABEL_18:
            __break(1u);
LABEL_19:
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_123;
            }

            if (!*(v11 + 16))
            {
              goto LABEL_124;
            }

            a3 = *v5;
            v17 = swift_isUniquelyReferenced_nonNull_native();
            *v5 = a3;
            if ((v17 & 1) == 0)
            {
              goto LABEL_125;
            }

            if (a3[2])
            {
              goto LABEL_23;
            }

LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }
        }

        a3[4] = v4++;
        ++v14;
        if (!--v15)
        {
          goto LABEL_19;
        }
      }
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  if (v60 >= *(v4 + 16))
  {
    goto LABEL_127;
  }

  if (v6 >= v5[v60][2])
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1D99E0BAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  v4 = *(a2 + 16);
  v5 = v4 >= v3;
  if (v4 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  if (v5)
  {
    v7 = result;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(v7 + 16);
  v9 = *(v6 + 16);
  if (!v8)
  {
    return v9;
  }

  v10 = v8 - 1;
  if (v8 - 1 >= a3)
  {
    v10 = a3;
  }

  v11 = __OFADD__(v8, v10);
  v12 = v8 + v10;
  if (!v11)
  {
    if (v9 < v12)
    {
      v12 = *(v6 + 16);
    }

    v23 = v12;
    if (v12 < v8)
    {
      goto LABEL_41;
    }

    v13 = (2 * v8) | 1;
    v14 = *(v6 + 16);
    while (2)
    {
      if (__OFSUB__(v9, v8))
      {
LABEL_38:
        __break(1u);
      }

      else if (((v9 - v8) & 0x8000000000000000) == 0)
      {
        v15 = 0;
        v24 = v13;
        while (1)
        {
          if (v8 + v15 < v15)
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

          if (v15 - v9 == 1)
          {
            goto LABEL_35;
          }

          if (v9 < v8 + v15)
          {
            goto LABEL_36;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51648, &qword_1D9C86A10);
          sub_1D99C7C60(&qword_1ECB51650, &qword_1ECB51648, &qword_1D9C86A10, MEMORY[0x1E69E6968]);
          v16 = sub_1D9C7DE8C();
          v18 = v17;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51658, &qword_1D9C86A18);
          sub_1D99C7C60(&qword_1ECB51660, &qword_1ECB51658, &qword_1D9C86A18, MEMORY[0x1E69E6328]);
          v19 = sub_1D9C7DE8C();
          sub_1D99E053C(v19, v20, v16, v18);
          v22 = v21;

          if (v22 < v14)
          {
            v14 = v22;
            if (!v22)
            {
              return 0;
            }
          }

          if (!(v8 - v9 + v15))
          {
            break;
          }

          ++v15;
          v13 += 2;
          if (__OFADD__(v15, v8))
          {
            goto LABEL_37;
          }
        }

        if (v8 != v23)
        {
          v13 = v24 + 2;
          v11 = __OFADD__(v8++, 1);
          if (!v11)
          {
            continue;
          }

          __break(1u);
          return 0;
        }

        return v14;
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

id sub_1D99E0E5C(void *a1, double a2)
{
  [a1 course];
  v5 = v4 * 3.14159265 / 180.0;
  [a1 coordinate];
  v7 = v6 * 3.14159265 / 180.0;
  [a1 coordinate];
  v17 = v8 * 3.14159265 / 180.0;
  v9 = __sincos_stret(v7);
  v10 = __sincos_stret(a2 / 6371000.0);
  v11 = __sincos_stret(v5);
  v12 = asin(v10.__cosval * v9.__sinval + v11.__cosval * (v10.__sinval * v9.__cosval));
  v13 = sin(v12);
  v14 = (atan2(v10.__sinval * v11.__sinval * v9.__cosval, v10.__cosval - v9.__sinval * v13) + v17) * 180.0 / 3.14159265;
  v15 = objc_allocWithZone(MEMORY[0x1E6985C40]);

  return [v15 initWithLatitude:(v12 * 180.0 / 3.14159265) longitude:v14];
}

uint64_t sub_1D99E0FC0(uint64_t a1, void *a2)
{
  v70 = sub_1D9C7BB6C();
  v3 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D9C7BFBC();
  v60 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v69 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51670, &unk_1D9C960D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = (v58 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51678, &unk_1D9C86A50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v58 - v13;
  v15 = *(sub_1D9C7C15C() + 16);

  if (v15)
  {
    v16 = sub_1D9C7DF5C();
    *(v16 + 16) = v15;
    bzero((v16 + 32), 8 * v15);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v73 = sub_1D99E0E5C(a2, 10.0);
  result = sub_1D9C7C15C();
  v18 = result;
  v19 = 0;
  v20 = *(result + 16);
  v58[1] = v60 + 16;
  v71 = (v7 + 48);
  v72 = (v7 + 56);
  v66 = (v3 + 8);
  v67 = (v60 + 32);
  v65 = (v60 + 8);
  v61 = v16 + 32;
  v63 = result;
  v64 = v11;
  v62 = v20;
  v21 = v70;
  if (v20)
  {
    goto LABEL_6;
  }

LABEL_5:
  v22 = 1;
  v23 = v20;
  while (1)
  {
    (*v72)(v11, v22, 1, v6);
    sub_1D99B1C20(v11, v14, &qword_1ECB51678, &unk_1D9C86A50);
    if ((*v71)(v14, 1, v6) == 1)
    {

      return v16;
    }

    v74 = v23;
    v28 = v16;
    v29 = *v14;
    v30 = v6;
    v31 = v69;
    (*v67)(v69, &v14[*(v6 + 48)], v75);
    v32 = v68;
    sub_1D9C7BF8C();
    sub_1D9C7BB4C();
    v34 = v33;
    v35 = *v66;
    (*v66)(v32, v21);
    sub_1D9C7BF8C();
    sub_1D9C7BB5C();
    v37 = v36;
    v35(v32, v21);
    v38 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v34 longitude:v37];
    v39 = v73;
    [v73 coordinate];
    v41 = v40 * 3.14159265 / 180.0;
    [v39 coordinate];
    v43 = v42 * 3.14159265 / 180.0;
    [v38 coordinate];
    v45 = v44 * 3.14159265 / 180.0;
    [v38 coordinate];
    v47 = v46;

    v48 = sin((v45 - v41) * 0.5);
    v49 = v48 * v48;
    v50 = cos(v41);
    v51 = v50 * cos(v45);
    v52 = sin((v47 * 3.14159265 / 180.0 - v43) * 0.5);
    v53 = v49 + v52 * (v51 * v52);
    v54 = sqrt(v53);
    v55 = sqrt(1.0 - v53);
    v56 = atan2(v54, v55);
    v57 = exp(v56 * 12742000.0 * (v56 * 12742000.0) / -20000.0);
    result = (*v65)(v31, v75);
    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v29 >= *(v28 + 16))
    {
      goto LABEL_16;
    }

    v16 = v28;
    *(v61 + 8 * v29) = v57;
    v6 = v30;
    v18 = v63;
    v11 = v64;
    v20 = v62;
    v19 = v74;
    if (v74 == v62)
    {
      goto LABEL_5;
    }

LABEL_6:
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (v19 >= *(v18 + 16))
    {
      goto LABEL_18;
    }

    v23 = v19 + 1;
    v24 = v60;
    v25 = v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
    v26 = *(v6 + 48);
    v27 = v59;
    *v59 = v19;
    (*(v24 + 16))(v27 + v26, v25, v75);
    sub_1D99B1C20(v27, v11, &qword_1ECB51670, &unk_1D9C960D0);
    v22 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1D99E161C(void *a1, id a2)
{
  [a2 coordinate];
  v5 = v4;
  [a1 coordinate];
  v7 = v5 - v6;
  [a2 coordinate];
  v9 = v8;
  [a1 coordinate];
  v11 = v9 - v10;
  v12 = sqrt(v7 * v7 + v11 * v11);
  if (v12 != 0.0)
  {
    v13 = v11 / v12;
    v14 = v7 / v12;
    [a1 course];
    v16 = cos((90.0 - v15) * 3.14159265 / 180.0);
    [a1 course];
    v18 = sin((90.0 - v17) * 3.14159265 / 180.0);
    acos(v13 * v16 + v14 * v18);
  }
}

uint64_t sub_1D99E1740(uint64_t a1, void *a2)
{
  v56 = a2;
  v55 = sub_1D9C7BB6C();
  v2 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D9C7BFBC();
  v44 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v54 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51670, &unk_1D9C960D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = (v42 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51678, &unk_1D9C86A50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v42 - v12);
  v14 = *(sub_1D9C7C15C() + 16);

  if (v14)
  {
    v15 = sub_1D9C7DF5C();
    *(v15 + 16) = v14;
    v57 = v15;
    bzero((v15 + 32), 8 * v14);
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  [v56 course];
  if (v16 < 0.0)
  {
    return v57;
  }

  result = sub_1D9C7C15C();
  v18 = result;
  v19 = 0;
  v20 = *(result + 16);
  v42[1] = v44 + 16;
  v51 = (v6 + 48);
  v52 = (v6 + 56);
  v49 = (v2 + 8);
  v50 = (v44 + 32);
  v47 = v20;
  v48 = (v44 + 8);
  v45 = v57 + 32;
  v46 = result;
  if (v20)
  {
    goto LABEL_7;
  }

LABEL_6:
  v21 = 1;
  v22 = v20;
  while (1)
  {
    (*v52)(v10, v21, 1, v5);
    sub_1D99B1C20(v10, v13, &qword_1ECB51678, &unk_1D9C86A50);
    if ((*v51)(v13, 1, v5) == 1)
    {

      return v57;
    }

    v58 = v22;
    v27 = v10;
    v28 = *v13;
    v29 = v5;
    v30 = v13;
    v31 = v54;
    (*v50)(v54, v13 + *(v5 + 48), v59);
    v32 = v53;
    sub_1D9C7BF8C();
    sub_1D9C7BB4C();
    v34 = v33;
    v35 = *v49;
    v36 = v55;
    (*v49)(v32, v55);
    sub_1D9C7BF8C();
    sub_1D9C7BB5C();
    v38 = v37;
    v35(v32, v36);
    v39 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v34 longitude:v38];
    sub_1D99E161C(v56, v39);
    v41 = v40;

    result = (*v48)(v31, v59);
    if ((v28 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v28 >= *(v57 + 16))
    {
      goto LABEL_18;
    }

    *(v45 + 8 * v28) = v41 / -180.0 + 1.0;
    v5 = v29;
    v10 = v27;
    v13 = v30;
    v18 = v46;
    v20 = v47;
    v19 = v58;
    if (v58 == v47)
    {
      goto LABEL_6;
    }

LABEL_7:
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    if (v19 >= *(v18 + 16))
    {
      goto LABEL_20;
    }

    v22 = v19 + 1;
    v24 = v43;
    v23 = v44;
    v25 = v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19;
    v26 = *(v5 + 48);
    *v43 = v19;
    (*(v23 + 16))(v24 + v26, v25, v59);
    sub_1D99B1C20(v24, v10, &qword_1ECB51670, &unk_1D9C960D0);
    v21 = 0;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D99E1C88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a3;
  v37 = sub_1D9C7D8DC();
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - v9;
  v11 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  v36 = a1;
  v16 = sub_1D9C7DC4C();
  v17 = [v15 contentsAtPath_];

  if (v17)
  {
    v35[4] = v7;
    v18 = sub_1D9C7B87C();
    v20 = v19;

    v27 = v12;
    v28 = sub_1D9B88EB8(v18, v20);
    v29 = v18;
    v31 = v30;
    sub_1D99A5748(v29, v20);

    v41 = v28;
    v42 = v31;
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_1D99AF2FC(v28, v31);
    sub_1D9C7D43C();
    sub_1D99E31EC(v32);
    v35[3] = v27;
    sub_1D9C7D67C();
    v33 = sub_1D99A5748(v28, v31);
    return sub_1D99E3244(v14, v38, v33);
  }

  else
  {

    static Logger.argos.getter(v10);

    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v39[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1D9A0E224(v36, a2, v39);
      _os_log_impl(&dword_1D9962000, v21, v22, "Failed to load data at path %s", v23, 0xCu);
      v25 = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1DA7405F0](v24, -1, -1, v25);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v5 + 8))(v10, v37);
    v26 = v38;
    *v38 = MEMORY[0x1E69E7CC0];
    *(v26 + 2) = 0;
    return sub_1D9C7D3BC();
  }
}

void sub_1D99E21C0(char **a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7D8DC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v24 = *a1;
  v23 = a1[1];
  if (*a1)
  {
    v61 = a1[1];
    v25 = *(*a2 + 16);

    if (v25)
    {
      v60 = a4;
      static Logger.argos.getter(v22);
      sub_1D9A3E0E0(v19);
      v59 = v12;
      v26 = *(v12 + 8);
      v26(v22, v11);
      v27 = sub_1D9C7D8BC();
      v28 = sub_1D9C7E09C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v58 = a3;
        v30 = v29;
        *v29 = 0;
        _os_log_impl(&dword_1D9962000, v27, v28, "Filter scenenet labels", v29, 2u);
        v31 = v30;
        a3 = v58;
        MEMORY[0x1DA7405F0](v31, -1, -1);
      }

      v32 = (v26)(v19, v11);
      MEMORY[0x1EEE9AC00](v32);
      *(&v58 - 2) = a3;
      *(&v58 - 1) = a2;
      sub_1D9A197A4(sub_1D99E2740, (&v58 - 4), v24);
      v24 = v33;
      v12 = v59;
      a4 = v60;
    }

    v64 = v24;

    sub_1D99E2760(&v64);

    v34 = v64;
    v35 = a2[2];
    if (v35 <= 0)
    {
      goto LABEL_20;
    }

    static Logger.argos.getter(v16);
    sub_1D9A3E0E0(v63);
    v36 = *(v12 + 8);
    v37 = v36(v16, v11);
    v38 = a2;
    v39 = v62;
    sub_1D99E28D0(v38, v62, v37);
    v40 = sub_1D9C7D8BC();
    v41 = sub_1D9C7E09C();
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v44 = v39;
      v45 = v43;
      *v43 = 134217984;
      v46 = *(v44 + 8);
      sub_1D99E2934(v44, COERCE_DOUBLE(134217984));
      *(v45 + 1) = v46;
      _os_log_impl(&dword_1D9962000, v40, v41, "Limit scenenet labels to %ld", v45, 0xCu);
      MEMORY[0x1DA7405F0](v45, -1, -1);
    }

    else
    {
      sub_1D99E2934(v39, v42);
    }

    v36(v63, v11);
    v50 = sub_1D9B06190(v35, v34);
    if (v49)
    {
      v52 = a4;
      v53 = v49;
      v54 = v48;
      v55 = v47;
      sub_1D9C7E80C();
      swift_unknownObjectRetain_n();
      v56 = swift_dynamicCastClass();
      if (!v56)
      {
        swift_unknownObjectRelease();
        v56 = MEMORY[0x1E69E7CC0];
      }

      v57 = *(v56 + 16);

      if (__OFSUB__(v53 >> 1, v54))
      {
        __break(1u);
      }

      else if (v57 == (v53 >> 1) - v54)
      {
        v34 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        a4 = v52;
        if (v34)
        {
LABEL_20:
          v23 = v61;
          goto LABEL_21;
        }

        v34 = MEMORY[0x1E69E7CC0];
LABEL_19:
        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      v49 = v53;
      v48 = v54;
      v47 = v55;
      a4 = v52;
    }

    sub_1D9A08474(v50, v47, v48, v49);
    v34 = v51;
    goto LABEL_19;
  }

  v34 = 0;
LABEL_21:
  *a4 = v34;
  a4[1] = v23;
}

uint64_t sub_1D99E268C(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 16);
  v5 = sub_1D9C7DC4C();
  v6 = [v4 nodeForName_];

  if (!v6)
  {
    return 0;
  }

  v7 = *a3;
  v8 = [v6 sceneClassId];
  v9 = *(v7 + 16);
  v10 = (v7 + 32);
  do
  {
    v11 = v9-- != 0;
    v12 = v11;
    if (!v11)
    {
      break;
    }

    v13 = *v10++;
  }

  while (v13 != v8);

  return v12;
}

uint64_t sub_1D99E2760(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E9228(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1D9C7E79C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 72;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[56 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 6) >= v11)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = *(v13 + 40);
          v17 = *(v13 + 56);
          v18 = *(v13 - 24);
          *(v13 + 1) = *(v13 - 40);
          *(v13 + 2) = v18;
          *(v13 + 3) = *(v13 - 8);
          *(v13 + 8) = *(v13 + 1);
          *(v13 - 5) = v14;
          *(v13 - 4) = v15;
          *(v13 - 6) = v11;
          *(v13 - 1) = v16;
          *v13 = v17;
          v13 -= 56;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 56;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D9C7DF5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1D99E2990(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D99E28D0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99E2934(uint64_t a1, double a2)
{
  v3 = type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99E2990(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v101 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D99E8FDC(v7);
      v7 = result;
    }

    v93 = (v7 + 16);
    v94 = *(v7 + 16);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = (v7 + 16 * v94);
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        sub_1D99E2F88((*a3 + 56 * *v95), (*a3 + 56 * *v97), *a3 + 56 * v98, v102);
        if (v4)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_114;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_115;
        }

        *v95 = v96;
        v95[1] = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_116;
        }

        v94 = *v93 - 1;
        result = memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v100 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 56 * v6 + 16);
      v10 = *a3 + 56 * v8;
      v11 = *(v10 + 16);
      v12 = v8 + 2;
      v13 = (v10 + 128);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 14;
        v16 = v14 >= v15;
        ++v12;
        v14 = v15;
        if ((((v11 < v9) ^ v16) & 1) == 0)
        {
          v6 = v12 - 1;
          if (v11 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 56 * v6 - 16;
        v18 = 56 * v8 + 40;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v31 + v18);
            v22 = v31 + v17;
            v23 = *(v21 - 5);
            v24 = *(v21 - 4);
            v25 = *(v21 - 6);
            v26 = *(v21 - 1);
            v27 = *v21;
            v28 = *(v22 - 24);
            v29 = *(v22 - 8);
            v30 = *(v22 + 8);
            *(v21 - 40) = *(v22 - 40);
            *(v21 + 1) = v30;
            *(v21 - 8) = v29;
            *(v21 - 24) = v28;
            *(v22 - 40) = v23;
            *(v22 - 32) = v24;
            *(v22 - 24) = v25;
            *(v22 - 16) = v26;
            *v22 = v27;
          }

          ++v20;
          v17 -= 56;
          v18 += 56;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v46 = *(v7 + 16);
    v45 = *(v7 + 24);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1D99E8FF0((v45 > 1), v46 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v47;
    v48 = v7 + 32;
    v49 = (v7 + 32 + 16 * v46);
    *v49 = v8;
    v49[1] = v6;
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_127;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v7 + 32);
          v52 = *(v7 + 40);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_104;
          }

          v67 = (v7 + 16 * v47);
          v69 = *v67;
          v68 = v67[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_106;
          }

          v73 = (v48 + 16 * v50);
          v75 = *v73;
          v74 = v73[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_111;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_112;
        }

        v77 = (v7 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_72:
        if (v72)
        {
          goto LABEL_108;
        }

        v80 = (v48 + 16 * v50);
        v82 = *v80;
        v81 = v80[1];
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_110;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = (v48 + 16 * (v50 - 1));
        v89 = *v88;
        v90 = (v48 + 16 * v50);
        v91 = v90[1];
        sub_1D99E2F88((*a3 + 56 * *v88), (*a3 + 56 * *v90), *a3 + 56 * v91, v102);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_99;
        }

        if (v50 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *(v7 + 16);
        if (v50 >= v92)
        {
          goto LABEL_101;
        }

        v47 = v92 - 1;
        result = memmove((v48 + 16 * v50), v90 + 2, 16 * (v92 - 1 - v50));
        *(v7 + 16) = v92 - 1;
        if (v92 <= 2)
        {
          goto LABEL_3;
        }
      }

      v55 = v48 + 16 * v47;
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_102;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_103;
      }

      v62 = (v7 + 16 * v47);
      v64 = *v62;
      v63 = v62[1];
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_105;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_107;
      }

      if (v66 >= v58)
      {
        v84 = (v48 + 16 * v50);
        v86 = *v84;
        v85 = v84[1];
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v100;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 56 * v6 - 56;
  v34 = v8 - v6;
LABEL_30:
  v35 = *(v32 + 56 * v6 + 16);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (*(v37 + 16) >= v35)
    {
LABEL_29:
      ++v6;
      v33 += 56;
      --v34;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v39 = *(v37 + 56);
    v38 = *(v37 + 64);
    v40 = *(v37 + 16);
    v41 = *(v37 + 48);
    *(v37 + 56) = *v37;
    v42 = *(v37 + 80);
    v43 = *(v37 + 96);
    *(v37 + 72) = v40;
    *(v37 + 88) = *(v37 + 32);
    *(v37 + 104) = v41;
    *v37 = v39;
    *(v37 + 8) = v38;
    *(v37 + 16) = v35;
    *(v37 + 24) = v42;
    *(v37 + 40) = v43;
    v37 -= 56;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D99E2F88(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[14 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[14 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 14;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 14;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 14;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[14 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[14 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v5 -= 56;
    do
    {
      v18 = (v5 + 56);
      if (*(v6 - 10) < *(v12 - 10))
      {
        v23 = v6 - 14;
        if (v18 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 10);
          v26 = *(v6 - 6);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v25;
          *(v5 + 32) = v26;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 14, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v12 - 14;
      if (v18 != v12)
      {
        v20 = *v19;
        v21 = *(v12 - 10);
        v22 = *(v12 - 6);
        *(v5 + 48) = *(v12 - 1);
        *(v5 + 16) = v21;
        *(v5 + 32) = v22;
        *v5 = v20;
      }

      v5 -= 56;
      v12 -= 14;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_31:
  v27 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v28 = (v27 >> 4) + (v27 >> 63);
  if (v6 != v4 || v6 >= &v4[14 * v28])
  {
    memmove(v6, v4, 56 * v28);
  }

  return 1;
}

unint64_t sub_1D99E31EC(double a1)
{
  result = qword_1ECB51680;
  if (!qword_1ECB51680)
  {
    type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51680);
  }

  return result;
}

uint64_t sub_1D99E3244(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12VisualLookUp11TextContextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12VisualLookUp12ImageContent_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12VisualLookUp0A13UnderstandingV10AnnotationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D99E3338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1D99E3380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1D99E33F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 textContext];
  if (!v4)
  {
    v7 = 0;
    v47 = 0;
    v15 = 0;
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [v4 surroundingText];
  v7 = sub_1D9C7DC7C();
  v9 = v8;

  v10 = [v5 normalizedBoundingBoxes];
  sub_1D99E3774();
  v11 = sub_1D9C7DF2C();

  if (v11 >> 62)
  {
    v12 = sub_1D9C7E50C();
    v47 = v9;
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_15:

    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v47 = v9;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_4:
  *&v48[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D99FE478(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
    return result;
  }

  v43 = v5;
  v14 = 0;
  v15 = *&v48[0];
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1DA73E610](v14, v11);
    }

    else
    {
      v16 = *(v11 + 8 * v14 + 32);
    }

    v17 = v16;
    [v16 rectValue];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    *&v48[0] = v15;
    v27 = *(v15 + 16);
    v26 = *(v15 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1D99FE478((v26 > 1), v27 + 1, 1);
      v15 = *&v48[0];
    }

    ++v14;
    *(v15 + 16) = v27 + 1;
    v28 = (v15 + 32 * v27);
    v28[4] = v19;
    v28[5] = v21;
    v28[6] = v23;
    v28[7] = v25;
  }

  while (v12 != v14);

LABEL_16:
  v29 = [v2 queryTerm];
  v30 = sub_1D9C7DC7C();
  v32 = v31;

  v33 = [v2 hintDomain];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1D9C7DC7C();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  if ([v2 imageContext])
  {
    swift_getObjectType();
    sub_1D9AF6CF8(&v49);
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
  }

  v38 = [v2 annotation];
  if (v38)
  {
    v39 = v38;
    VIAnnotation.mappedAnnotation.getter(v48);

    v45 = v48[1];
    *v46 = v48[0];
    v44 = v48[2];
    v40 = [v2 queryContext];
  }

  else
  {
    v45 = 0u;
    *v46 = xmmword_1D9C86A60;
    v44 = 0u;
    v40 = [v2 queryContext];
  }

  result = v40;
  v41 = v50;
  *(a1 + 56) = v49;
  *a1 = v30;
  *(a1 + 8) = v32;
  *(a1 + 16) = v7;
  *(a1 + 24) = v47;
  *(a1 + 32) = v15;
  *(a1 + 40) = v35;
  *(a1 + 48) = v37;
  *(a1 + 72) = v41;
  *(a1 + 88) = v51;
  *(a1 + 96) = *v46;
  *(a1 + 112) = v45;
  *(a1 + 128) = v44;
  *(a1 + 144) = v42;
  *(a1 + 160) = result;
  return result;
}

unint64_t sub_1D99E3774()
{
  result = qword_1ECB51688;
  if (!qword_1ECB51688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB51688);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D99E37D4(uint64_t a1, int a2)
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

uint64_t sub_1D99E381C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D99E386C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(a1 + *(type metadata accessor for MLModelInfo(0) + 36));
  if (*(v7 + 16) && (v8 = sub_1D99EE004(1), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = sub_1D9C7B80C();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, v11 + *(v13 + 72) * v10, v12);
    (*(v13 + 56))(v6, 0, 1, v12);
  }

  else
  {
    v14 = sub_1D9C7B80C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  type metadata accessor for FileMapper();
  swift_allocObject();
  v15 = sub_1D9B1E230(v6);
  sub_1D99A404C(a1);
  *(v2 + 16) = v15;
  return v2;
}

uint64_t sub_1D99E3A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1D99FE164(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_1D9C7E35C();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_1D9A15C94(*(*(a1 + 48) + v5));
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_1D99FE164((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D99E92E4(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D99E92E4(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
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

uint64_t sub_1D99E3CA8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517F0, &qword_1D9C86F30);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D99E96D4();
  sub_1D9C7E96C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517E8, &unk_1D9C86F20);
  sub_1D99E97D4();
  sub_1D9C7E74C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D99E3E0C()
{
  sub_1D9C7E8DC();
  MEMORY[0x1DA73EAC0](0);
  return sub_1D9C7E93C();
}

uint64_t sub_1D99E3E50()
{
  sub_1D9C7E8DC();
  MEMORY[0x1DA73EAC0](0);
  return sub_1D9C7E93C();
}

uint64_t sub_1D99E3EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9C7E7DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D99E3F28(uint64_t a1)
{
  v2 = sub_1D99E96D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D99E3F64(uint64_t a1)
{
  v2 = sub_1D99E96D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D99E3FA0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D99E93E8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D99E3FE8(uint64_t a1)
{
  if (!a1)
  {
    return 1819042094;
  }

  if (a1 == 1)
  {
    return 0x64656C626169642ELL;
  }

  v6 = 0x28656D6F732ELL;
  v7 = 0xE600000000000000;
  v5 = sub_1D99E3A84(a1);

  sub_1D99E6144(&v5);

  v2 = MEMORY[0x1DA73E110](v5, MEMORY[0x1E69E6158]);
  v4 = v3;

  MEMORY[0x1DA73DF90](v2, v4);

  return v6;
}

uint64_t sub_1D99E40D8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return v3 == 0;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 >= 2)
  {
    return sub_1D99E6368(v2, v3);
  }

  return 0;
}

uint64_t sub_1D99E4120(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, __int128 *a5)
{
  v6 = v5;
  v57 = a3;
  v9 = sub_1D9C7D8DC();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9C7B80C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7B75C();

  v16 = sub_1D9C7B81C();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  sub_1D9C7B6EC();
  swift_allocObject();
  sub_1D9C7B6DC();
  sub_1D99E9670();
  sub_1D9C7B6CC();
  v53 = v16;
  v54 = v18;
  v32 = v59;
  if (v59[2] && (v33 = sub_1D99ED894(5459817, 0xE300000000000000), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * v33);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v59 = MEMORY[0x1E69E7CD0];
  v36 = *(v35 + 16);
  if (v36)
  {
    v50 = a4;
    v51 = a5;
    v37 = 0;
    v38 = 0;
    v39 = -v36;
    v40 = v35 + 40;
    v49 = v35 + 40;
LABEL_11:
    v52 = v37;
    v41 = (v40 + 16 * v38++);
    while ((v38 - 1) < *(v35 + 16))
    {
      v44 = *(v41 - 1);
      v43 = *v41;
      swift_bridgeObjectRetain_n();
      v45 = sub_1D9A163E0(v44, v43);
      if (v45 == 27)
      {
        if (v44 == 0xD000000000000010 && 0x80000001D9CA4BB0 == v43)
        {

LABEL_23:
          v37 = 1;
          v40 = v49;
          if (v39 + v38)
          {
            goto LABEL_11;
          }

          sub_1D99A5748(v53, v54);

          a4 = v50;
          a5 = v51;
LABEL_26:

          *(v6 + 16) = 0;
          goto LABEL_2;
        }

        v47 = sub_1D9C7E7DC();

        if (v47)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v42 = v45;

        result = sub_1D9B92014(&v58, v42);
      }

      ++v38;
      v41 += 2;
      if (v39 + v38 == 1)
      {
        sub_1D99A5748(v53, v54);

        v48 = v59;
        a4 = v50;
        a5 = v51;
        if ((v52 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1D99A5748(v53, v54);

    v48 = MEMORY[0x1E69E7CD0];
LABEL_28:
    if (*(v48 + 16))
    {
      *(v6 + 16) = v48;
    }

    else
    {

      *(v6 + 16) = 1;
    }

LABEL_2:
    static Logger.argos.getter(v11);

    v19 = sub_1D9C7D8BC();
    v20 = sub_1D9C7E09C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v59 = v22;
      *v21 = 136315138;
      v23 = sub_1D99E3FE8(*(v6 + 16));
      v25 = sub_1D9A0E224(v23, v24, &v59);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1D9962000, v19, v20, "Domains from config file: %s", v21, 0xCu);
      v26 = __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x1DA7405F0](v22, -1, -1, v26);
      MEMORY[0x1DA7405F0](v21, -1, -1);
    }

    (*(v55 + 8))(v11, v56);
    v27 = v57;
    v28 = v57[1];
    *(v6 + 24) = *v57;
    *(v6 + 40) = v28;
    v29 = *(a4 + 16);
    *(v6 + 64) = *a4;
    *(v6 + 80) = v29;
    v30 = *a5;
    *(v6 + 120) = a5[1];
    *(v6 + 56) = *(v27 + 4);
    *(v6 + 96) = *(a4 + 32);
    *(v6 + 136) = *(a5 + 4);
    *(v6 + 104) = v30;
    return v6;
  }

  return result;
}

uint64_t sub_1D99E465C(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 320) = a1;
  v3 = sub_1D9C7D8DC();
  *(v2 + 184) = v3;
  *(v2 + 192) = *(v3 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D99E4798, 0, 0);
}

uint64_t sub_1D99E4798()
{
  v1 = objc_opt_self();
  v2 = sub_1D9C7DC4C();
  LOBYTE(v1) = [v1 BOOLForEntitlement_];

  if (v1)
  {
    static Logger.argos.getter(*(v0 + 200));
    v3 = sub_1D9C7D8BC();
    v4 = sub_1D9C7E09C();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Process has bypass entitlement, all domains allowed";
LABEL_14:
      _os_log_impl(&dword_1D9962000, v3, v4, v10, v9, 2u);
      MEMORY[0x1DA7405F0](v9, -1, -1);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v11 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EDD355A8;
  }

  v12 = *(*v11 + 32);

  v13 = sub_1D9C7DC4C();
  LOBYTE(v12) = [v12 BOOLForKey_];

  if (v12)
  {
    static Logger.argos.getter(*(v0 + 208));
    v3 = sub_1D9C7D8BC();
    v4 = sub_1D9C7E09C();
    v14 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 208);
    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    if (v14)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Availability checking is disabled";
      goto LABEL_14;
    }

LABEL_15:

    (*(v7 + 8))(v6, v8);
    v38 = 0;
LABEL_16:

    v15 = *(v0 + 8);

    return v15(v38);
  }

  v17 = *(v0 + 320);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v18 = 0x80000001D9CA4B70;
  v19 = 104;
  v20 = 0xE000000000000000;
  v21 = 24;
  v22 = 0xD000000000000014;
  if (v17 == 3)
  {
    v21 = 104;
  }

  else
  {
    v22 = 0;
  }

  if (v17 == 3)
  {
    v20 = 0x80000001D9CA4B90;
  }

  if (v17 == 4)
  {
    v23 = 0xD000000000000013;
  }

  else
  {
    v19 = v21;
    v23 = v22;
  }

  if (v17 != 4)
  {
    v18 = v20;
  }

  if (v17 == 2)
  {
    v24 = 104;
  }

  else
  {
    v24 = v19;
  }

  if (v17 == 2)
  {
    v25 = 0x6C2D6172656D6163;
  }

  else
  {
    v25 = v23;
  }

  if (v17 == 2)
  {
    v26 = 0xEB00000000657669;
  }

  else
  {
    v26 = v18;
  }

  *(v0 + 288) = v25;
  *(v0 + 296) = v26;
  v27 = *(v0 + 176);
  sub_1D99E9360(v0 + 16);
  sub_1D99E92F0(v27 + v24, v0 + 16);
  sub_1D99E92F0(v0 + 16, v0 + 96);
  if (!*(v0 + 120))
  {
    v31 = *(v0 + 216);

    sub_1D99E9360(v0 + 96);
    static Logger.argos.getter(v31);
    v32 = sub_1D9C7D8BC();
    v33 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D9962000, v32, v33, "nil domainProvider", v34, 2u);
      MEMORY[0x1DA7405F0](v34, -1, -1);
    }

    v35 = *(v0 + 216);
    v36 = *(v0 + 184);
    v37 = *(v0 + 192);

    (*(v37 + 8))(v35, v36);
    sub_1D99E9360(v0 + 16);
    v38 = 1;
    goto LABEL_16;
  }

  sub_1D9979B9C((v0 + 96), v0 + 56);
  v28 = *(v0 + 80);
  v29 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v28);
  v39 = (*(v29 + 24) + **(v29 + 24));
  v30 = swift_task_alloc();
  *(v0 + 304) = v30;
  *v30 = v0;
  v30[1] = sub_1D99E4D44;

  return v39(v25, v26, v28, v29);
}

uint64_t sub_1D99E4D44(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D99E4E44, 0, 0);
}

uint64_t sub_1D99E4E44(uint64_t a1)
{
  v93 = v1;
  v2 = *(v1 + 176);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 16);
    if (v3 != 1)
    {
      v5 = *(v1 + 312);

      v4 = sub_1D9B125E8(v3, v5);
    }
  }

  else
  {
    v4 = *(v1 + 312);
  }

  v7 = *(v1 + 272);
  v6 = *(v1 + 280);
  v8 = *(v1 + 184);
  v9 = *(v1 + 192);
  static Logger.argos.getter(v6);
  sub_1D9A3E0E0(v7);
  v10 = *(v9 + 8);
  v10(v6, v8);
  sub_1D99A17C8(v1 + 56, v1 + 136);

  v11 = sub_1D9C7D8BC();
  v12 = sub_1D9C7E09C();

  v90 = v4;
  if (os_log_type_enabled(v11, v12))
  {
    v88 = v10;
    v13 = *(v1 + 320);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v92[0] = v15;
    *v14 = 136315650;
    v16 = 0xE900000000000073;
    v17 = 0x6F746F6850554C56;
    v18 = 0xD000000000000012;
    v19 = 0x80000001D9CA4B30;
    v20 = 0x80000001D9CA4B10;
    v21 = 0xD000000000000015;
    if (v13 != 4)
    {
      v21 = 4280662;
      v20 = 0xE300000000000000;
    }

    if (v13 != 3)
    {
      v18 = v21;
      v19 = v20;
    }

    v22 = 0xD000000000000012;
    v23 = 0x80000001D9CA4B50;
    if (v13 != 1)
    {
      v22 = 0x72656D6143554C56;
      v23 = 0xEE00656D61724661;
    }

    if (v13)
    {
      v17 = v22;
      v16 = v23;
    }

    if (v13 <= 2)
    {
      v24 = v17;
    }

    else
    {
      v24 = v18;
    }

    if (v13 <= 2)
    {
      v25 = v16;
    }

    else
    {
      v25 = v19;
    }

    v27 = *(v1 + 288);
    v26 = *(v1 + 296);
    v86 = *(v1 + 184);
    v87 = *(v1 + 272);
    v28 = sub_1D9A0E224(v24, v25, v92);

    *(v14 + 4) = v28;
    *(v14 + 12) = 2080;
    v29 = sub_1D9A0E224(v27, v26, v92);

    *(v14 + 14) = v29;
    *(v14 + 22) = 2080;
    __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
    swift_getDynamicType();
    v30 = sub_1D9C7E99C();
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 136));
    v33 = sub_1D9A0E224(v30, v32, v92);

    *(v14 + 24) = v33;
    _os_log_impl(&dword_1D9962000, v11, v12, "checkAvailableDomains useCase %s, domain key %s, domainProvider: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v15, -1, -1);
    MEMORY[0x1DA7405F0](v14, -1, -1);

    v10 = v88;
    v88(v87, v86);
  }

  else
  {
    v34 = *(v1 + 272);
    v35 = *(v1 + 184);

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 136));
    v10(v34, v35);
  }

  v36 = *(v1 + 256);
  v37 = *(v1 + 264);
  v38 = *(v1 + 184);
  static Logger.argos.getter(v37);
  sub_1D9A3E0E0(v36);
  v10(v37, v38);

  v39 = sub_1D9C7D8BC();
  v40 = sub_1D9C7E09C();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v1 + 256);
  v43 = *(v1 + 184);
  if (v41)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v92[0] = v45;
    *v44 = 136315138;
    v46 = sub_1D99E3FE8(v3);
    v48 = sub_1D9A0E224(v46, v47, v92);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_1D9962000, v39, v40, "checkAvailableDomains availableDomainsFromConfig: %s", v44, 0xCu);
    v49 = __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x1DA7405F0](v45, -1, -1, v49);
    MEMORY[0x1DA7405F0](v44, -1, -1);
  }

  v10(v42, v43);
  v51 = *(v1 + 240);
  v50 = *(v1 + 248);
  v52 = *(v1 + 184);
  static Logger.argos.getter(v50);
  sub_1D9A3E0E0(v51);
  v10(v50, v52);

  v53 = sub_1D9C7D8BC();
  v54 = sub_1D9C7E09C();

  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v1 + 312);
  if (v55)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v91 = v58;
    *v57 = 136315138;
    v59 = sub_1D99E3A84(v56);

    v92[0] = v59;

    sub_1D99E6144(v92);
    v62 = *(v1 + 240);
    v89 = *(v1 + 184);

    v63 = MEMORY[0x1DA73E110](v92[0], MEMORY[0x1E69E6158]);
    v64 = v10;
    v66 = v65;

    v67 = sub_1D9A0E224(v63, v66, &v91);
    v10 = v64;
    v68 = v90;

    *(v57 + 4) = v67;
    _os_log_impl(&dword_1D9962000, v53, v54, "checkAvailableDomains fetchedDomains: %s", v57, 0xCu);
    v69 = __swift_destroy_boxed_opaque_existential_0Tm(v58);
    MEMORY[0x1DA7405F0](v58, -1, -1, v69);
    MEMORY[0x1DA7405F0](v57, -1, -1);

    v10(v62, v89);
  }

  else
  {
    v60 = *(v1 + 240);
    v61 = *(v1 + 184);

    v10(v60, v61);
    v68 = v90;
  }

  v70 = *(v1 + 224);
  v71 = *(v1 + 232);
  v72 = *(v1 + 184);
  static Logger.argos.getter(v71);
  sub_1D9A3E0E0(v70);
  v10(v71, v72);
  sub_1D99E93C8(v68);
  v73 = sub_1D9C7D8BC();
  v74 = sub_1D9C7E09C();
  sub_1D99E93D8(v68);
  v75 = os_log_type_enabled(v73, v74);
  v76 = *(v1 + 224);
  v77 = *(v1 + 184);
  if (v75)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v92[0] = v79;
    *v78 = 136315138;
    v80 = sub_1D99E3FE8(v68);
    v82 = sub_1D9A0E224(v80, v81, v92);

    *(v78 + 4) = v82;
    _os_log_impl(&dword_1D9962000, v73, v74, "checkAvailableDomains effectiveDomains: %s", v78, 0xCu);
    v83 = __swift_destroy_boxed_opaque_existential_0Tm(v79);
    MEMORY[0x1DA7405F0](v79, -1, -1, v83);
    MEMORY[0x1DA7405F0](v78, -1, -1);
  }

  v10(v76, v77);
  sub_1D99E9360(v1 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 56));

  v84 = *(v1 + 8);

  return v84(v90);
}

uint64_t sub_1D99E56AC()
{
  v1[22] = v0;
  v2 = sub_1D9C7D8DC();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D99E5790, 0, 0);
}

uint64_t sub_1D99E5790()
{
  sub_1D99E92F0(*(v0 + 176) + 24, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 176);
    sub_1D9979B9C((v0 + 56), v0 + 16);
    sub_1D99E92F0(v1 + 64, v0 + 136);
    if (*(v0 + 160))
    {
      sub_1D9979B9C((v0 + 136), v0 + 96);
      v2 = *(v0 + 40);
      v3 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
      v22 = (*(v3 + 8) + **(v3 + 8));
      v4 = swift_task_alloc();
      *(v0 + 232) = v4;
      *v4 = v0;
      v4[1] = sub_1D99E5ABC;

      return v22(v2, v3);
    }

    v14 = *(v0 + 208);
    sub_1D99E9360(v0 + 136);
    static Logger.argos.getter(v14);
    v15 = sub_1D9C7D8BC();
    v16 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D9962000, v15, v16, "nil vluEncryptedDomainProvider", v17, 2u);
      MEMORY[0x1DA7405F0](v17, -1, -1);
    }

    v18 = *(v0 + 208);
    v19 = *(v0 + 184);
    v20 = *(v0 + 192);

    (*(v20 + 8))(v18, v19);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    v6 = *(v0 + 200);
    sub_1D99E9360(v0 + 56);
    static Logger.argos.getter(v6);
    v7 = sub_1D9C7D8BC();
    v8 = sub_1D9C7E0AC();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 192);
    v10 = *(v0 + 200);
    v12 = *(v0 + 184);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D9962000, v7, v8, "nil vluPhotosDomainProvider", v13, 2u);
      MEMORY[0x1DA7405F0](v13, -1, -1);
    }

    (*(v11 + 8))(v10, v12);
  }

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_1D99E5ABC(char a1)
{
  *(*v1 + 248) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D99E5BBC, 0, 0);
}

uint64_t sub_1D99E5BBC()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_1D99E5CE0;

  return v5(v1, v2);
}

uint64_t sub_1D99E5CE0(char a1)
{
  *(*v1 + 249) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D99E5DE0, 0, 0);
}

uint64_t sub_1D99E5DE0(uint64_t a1)
{
  if ((*(v1 + 248) & 1) == 0)
  {
    static Logger.argos.getter(*(v1 + 224));
    v2 = sub_1D9C7D8BC();
    v3 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D9962000, v2, v3, "vluPhotosEnabled is false", v4, 2u);
      MEMORY[0x1DA7405F0](v4, -1, -1);
    }

    v5 = *(v1 + 224);
    v6 = *(v1 + 184);
    v7 = *(v1 + 192);

    (*(v7 + 8))(v5, v6);
  }

  if (*(v1 + 249))
  {
    v8 = 1;
  }

  else
  {
    static Logger.argos.getter(*(v1 + 216));
    v9 = sub_1D9C7D8BC();
    v10 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D9962000, v9, v10, "vluEncryptedEnabled is false", v11, 2u);
      MEMORY[0x1DA7405F0](v11, -1, -1);
    }

    v12 = *(v1 + 216);
    v13 = *(v1 + 184);
    v14 = *(v1 + 192);

    (*(v14 + 8))(v12, v13);
    v8 = *(v1 + 249);
  }

  v15 = *(v1 + 248) & v8;
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  v16 = *(v1 + 8);

  return v16(v15 & 1);
}

uint64_t sub_1D99E5FCC()
{
  sub_1D99E93D8(*(v0 + 16));
  sub_1D99E9360(v0 + 24);
  sub_1D99E9360(v0 + 64);
  sub_1D99E9360(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_12VisualLookUp16AvailableDomainsO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D99E6064(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D99E60B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1D99E6114(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D99E6144(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E90F4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D99E8584(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D99E61B0(uint64_t result, uint64_t a2)
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
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1D9C7E8DC();

    sub_1D9C7DD6C();
    v16 = sub_1D9C7E93C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1D9C7E7DC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

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
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D99E6368(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v30 = v9;
  v31 = result;
  if (v8)
  {
LABEL_7:
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
    goto LABEL_13;
  }

LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
LABEL_13:
      v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      sub_1D9C7E8DC();
      sub_1D9A15C94(v15);
      sub_1D9C7DD6C();

      v16 = sub_1D9C7E93C();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }

      v32 = v12;
      v19 = ~v17;
      while (2)
      {
        v20 = 0xE300000000000000;
        v21 = 7631457;
        switch(*(*(a2 + 48) + v18))
        {
          case 1:
            v20 = 0xE600000000000000;
            v21 = 0x65727574616ELL;
            break;
          case 2:
            v20 = 0xE800000000000000;
            v21 = 0x6B72616D646E616CLL;
            break;
          case 3:
            v21 = 0x4C6C61727574616ELL;
            v20 = 0xEF6B72616D646E61;
            break;
          case 4:
            v20 = 0xE500000000000000;
            v21 = 0x616964656DLL;
            break;
          case 5:
            v20 = 0xE400000000000000;
            v21 = 1802465122;
            break;
          case 6:
            v20 = 0xE500000000000000;
            v21 = 0x6D75626C61;
            break;
          case 7:
            v20 = 0xE400000000000000;
            v21 = 1937006947;
            break;
          case 8:
            v20 = 0xE400000000000000;
            v21 = 1936158564;
            break;
          case 9:
            v20 = 0xE700000000000000;
            v22 = 1835626081;
            goto LABEL_34;
          case 0xA:
            v20 = 0xE500000000000000;
            v21 = 0x7364726962;
            break;
          case 0xB:
            v20 = 0xE700000000000000;
            v21 = 0x73746365736E69;
            break;
          case 0xC:
            v20 = 0xE800000000000000;
            v21 = 0x73656C6974706572;
            break;
          case 0xD:
            v20 = 0xE700000000000000;
            v22 = 1835884909;
LABEL_34:
            v21 = v22 | 0x736C6100000000;
            break;
          case 0xE:
            v21 = 0xD000000000000010;
            v20 = 0x80000001D9CA2910;
            break;
          case 0xF:
            v20 = 0xE700000000000000;
            v21 = 0x6C657261707061;
            break;
          case 0x10:
            v21 = 0x726F737365636361;
            v20 = 0xEB00000000736569;
            break;
          case 0x11:
            v20 = 0xE400000000000000;
            v21 = 1685024614;
            break;
          case 0x12:
            v20 = 0xEA0000000000746ELL;
            v21 = 0x6F726665726F7473;
            break;
          case 0x13:
            v23 = 1852270963;
            goto LABEL_41;
          case 0x14:
            v21 = 0xD000000000000011;
            v20 = 0x80000001D9CA2950;
            break;
          case 0x15:
            v23 = 1869903201;
LABEL_41:
            v21 = v23 | 0x626D795300000000;
            v20 = 0xEA00000000006C6FLL;
            break;
          case 0x16:
            v21 = 0x676F4C646E617262;
            v20 = 0xEF6C6F626D79536FLL;
            break;
          case 0x17:
            v20 = 0xE700000000000000;
            v21 = 0x65646F63726162;
            break;
          case 0x18:
            v21 = 0x727574706C756373;
            v20 = 0xE900000000000065;
            break;
          case 0x19:
            v20 = 0xE700000000000000;
            v21 = 0x656E696C796B73;
            break;
          case 0x1A:
            v20 = 0xE800000000000000;
            v21 = 0x44327463656A626FLL;
            break;
          default:
            break;
        }

        v24 = 0xE300000000000000;
        v25 = 7631457;
        switch(v15)
        {
          case 1:
            v24 = 0xE600000000000000;
            if (v21 == 0x65727574616ELL)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          case 2:
            v24 = 0xE800000000000000;
            if (v21 != 0x6B72616D646E616CLL)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 3:
            v24 = 0xEF6B72616D646E61;
            if (v21 != 0x4C6C61727574616ELL)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 4:
            v24 = 0xE500000000000000;
            if (v21 != 0x616964656DLL)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 5:
            v24 = 0xE400000000000000;
            if (v21 != 1802465122)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 6:
            v24 = 0xE500000000000000;
            if (v21 != 0x6D75626C61)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 7:
            v24 = 0xE400000000000000;
            if (v21 != 1937006947)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 8:
            v24 = 0xE400000000000000;
            if (v21 != 1936158564)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 9:
            v24 = 0xE700000000000000;
            v27 = 1835626081;
            goto LABEL_77;
          case 10:
            v24 = 0xE500000000000000;
            if (v21 != 0x7364726962)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 11:
            v24 = 0xE700000000000000;
            v26 = 0x746365736E69;
            goto LABEL_78;
          case 12:
            v24 = 0xE800000000000000;
            if (v21 != 0x73656C6974706572)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 13:
            v24 = 0xE700000000000000;
            v27 = 1835884909;
LABEL_77:
            v26 = v27 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_78:
            if (v21 != (v26 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 14:
            v24 = 0x80000001D9CA2910;
            if (v21 != 0xD000000000000010)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 15:
            v24 = 0xE700000000000000;
            if (v21 != 0x6C657261707061)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 16:
            v24 = 0xEB00000000736569;
            if (v21 != 0x726F737365636361)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 17:
            v24 = 0xE400000000000000;
            if (v21 != 1685024614)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 18:
            v24 = 0xEA0000000000746ELL;
            if (v21 != 0x6F726665726F7473)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 19:
            v28 = 1852270963;
            goto LABEL_91;
          case 20:
            v24 = 0x80000001D9CA2950;
            if (v21 != 0xD000000000000011)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 21:
            v28 = 1869903201;
LABEL_91:
            v24 = 0xEA00000000006C6FLL;
            if (v21 != (v28 | 0x626D795300000000))
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 22:
            v24 = 0xEF6C6F626D79536FLL;
            if (v21 != 0x676F4C646E617262)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 23:
            v24 = 0xE700000000000000;
            v25 = 0x65646F63726162;
            goto LABEL_94;
          case 24:
            v24 = 0xE900000000000065;
            if (v21 != 0x727574706C756373)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 25:
            v24 = 0xE700000000000000;
            if (v21 != 0x656E696C796B73)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          case 26:
            v24 = 0xE800000000000000;
            if (v21 != 0x44327463656A626FLL)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          default:
LABEL_94:
            if (v21 != v25)
            {
              goto LABEL_96;
            }

LABEL_95:
            if (v20 != v24)
            {
LABEL_96:
              v29 = sub_1D9C7E7DC();

              if (v29)
              {
                goto LABEL_102;
              }

              v18 = (v18 + 1) & v19;
              if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
              {
                return 0;
              }

              continue;
            }

LABEL_102:
            v9 = v30;
            v3 = v31;
            v8 = v32;
            if (!v32)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
        }
      }
    }
  }

  __break(1u);
  return result;
}

char *sub_1D99E6B18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110, &qword_1D9C9C280);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D99E6C38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512F0, &unk_1D9C85F90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D99E6D8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51730, &qword_1D9C86DC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D99E6ED8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51728, &qword_1D9C99930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D99E7018(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1D99E7174(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1D99E7270(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51250, &unk_1D9C99920);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51258, &qword_1D9C86D20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D99E74A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB516E8, &qword_1D9C86D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB516F0, &qword_1D9C86D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D99E75EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51710, &qword_1D9C86DA0);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1D99E7714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51718, &qword_1D9C86DA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D99E7834(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51780, &qword_1D9C86E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1D99E79A4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1D99E7AD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51788, &qword_1D9C86E20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D99E7BF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51798, &qword_1D9C86E30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1D99E7D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517A0, &qword_1D9C86E38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

char *sub_1D99E7E54(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D99E7F70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB516E0, &qword_1D9C86D70);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D99E80CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517C8, &qword_1D9C86E68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D99E8230(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1D99E83A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1D99E8584(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D9C7E79C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D9C7DF5C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D99E874C(v7, v8, a1, v4);
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
    return sub_1D99E867C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D99E867C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D9C7E7DC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D99E874C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D99E8FDC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D99E8D28((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D9C7E7DC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D9C7E7DC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D99E8FF0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D99E8D28((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D99E8FDC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D99E8F50(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D9C7E7DC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}