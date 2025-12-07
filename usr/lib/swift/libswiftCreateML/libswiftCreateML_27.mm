uint64_t sub_1C98B5(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = type metadata accessor for Dense(0);
    v4 = *(a3 + 24) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_1C990D(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = type metadata accessor for Dense(0);
    v6 = *(a4 + 24) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLHandActionClassifier.Torso(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for () + 64;
    result = type metadata accessor for Dense(319);
    if (v3 <= 0x3F)
    {
      v4[2] = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 3, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.SingleStreamBlock(void *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v53 = *a2;
    *v3 = *a2;
    v3 = (v53 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = type metadata accessor for Conv2D(0);
    v6 = *(*(v5 - 8) + 16);
    v62 = v5;
    v6(a1, a2, v5);
    v60 = v6;
    v7 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
    v8 = v7[5];
    *(a1 + v8 + 48) = a2[v8 + 48];
    v9 = *&a2[v8];
    v10 = *&a2[v8 + 16];
    *(a1 + v8 + 32) = *&a2[v8 + 32];
    *(a1 + v8 + 16) = v10;
    *(a1 + v8) = v9;
    v6(a1 + v7[6], &a2[v7[6]], v5);
    v11 = v7[7];
    v56 = v7;
    v61 = type metadata accessor for BatchNorm(0);
    v63 = *(*(v61 - 8) + 16);
    v63(a1 + v11, &a2[v11], v61);
    v12 = v7[8];
    v59 = type metadata accessor for Dropout(0);
    v58 = *(*(v59 - 8) + 16);
    v58(a1 + v12, &a2[v12], v59);
    v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
    v60(a1 + *(v55 + 36), &a2[*(v55 + 36)], v5);
    v63(a1 + *(v55 + 40), &a2[*(v55 + 40)], v61);
    v13 = a3[5];
    v14 = a1 + v13;
    v15 = &a2[v13];
    v60(v14, v15, v5);
    v16 = v56;
    v17 = v56[5];
    v14[v17 + 48] = v15[v17 + 48];
    v18 = *&v15[v17];
    v19 = *&v15[v17 + 16];
    *&v14[v17 + 32] = *&v15[v17 + 32];
    *&v14[v17 + 16] = v19;
    *&v14[v17] = v18;
    v60(&v14[v56[6]], &v15[v56[6]], v62);
    v63(&v14[v16[7]], &v15[v16[7]], v61);
    v58(&v14[v16[8]], &v15[v16[8]], v59);
    v60(&v14[*(v55 + 36)], &v15[*(v55 + 36)], v62);
    v63(&v14[*(v55 + 40)], &v15[*(v55 + 40)], v61);
    v20 = a3[6];
    v21 = a1 + v20;
    v22 = &a2[v20];
    v60(v21, v22, v62);
    v23 = v56;
    v24 = v56[5];
    v21[v24 + 48] = v22[v24 + 48];
    v25 = *&v22[v24];
    v26 = *&v22[v24 + 16];
    *&v21[v24 + 32] = *&v22[v24 + 32];
    *&v21[v24 + 16] = v26;
    *&v21[v24] = v25;
    v60(&v21[v56[6]], &v22[v56[6]], v62);
    v63(&v21[v23[7]], &v22[v23[7]], v61);
    v58(&v21[v23[8]], &v22[v23[8]], v59);
    v60(&v21[*(v55 + 36)], &v22[*(v55 + 36)], v62);
    v63(&v21[*(v55 + 40)], &v22[*(v55 + 40)], v61);
    v27 = a3[7];
    v28 = a1 + v27;
    v29 = &a2[v27];
    v60(v28, v29, v62);
    v30 = v56[5];
    v28[v30 + 48] = v29[v30 + 48];
    v31 = *&v29[v30];
    v32 = *&v29[v30 + 16];
    *&v28[v30 + 32] = *&v29[v30 + 32];
    *&v28[v30 + 16] = v32;
    *&v28[v30] = v31;
    v60(&v28[v56[6]], &v29[v56[6]], v62);
    v63(&v28[v56[7]], &v29[v56[7]], v61);
    v58(&v28[v56[8]], &v29[v56[8]], v59);
    v60(&v28[*(v55 + 36)], &v29[*(v55 + 36)], v62);
    v63(&v28[*(v55 + 40)], &v29[*(v55 + 40)], v61);
    v33 = a3[8];
    v34 = a1 + v33;
    v35 = &a2[v33];
    v60(v34, v35, v62);
    v36 = v56;
    v37 = v56[5];
    v34[v37 + 48] = v35[v37 + 48];
    v38 = *&v35[v37];
    v39 = *&v35[v37 + 16];
    *&v34[v37 + 32] = *&v35[v37 + 32];
    *&v34[v37 + 16] = v39;
    *&v34[v37] = v38;
    v60(&v34[v56[6]], &v35[v56[6]], v62);
    v63(&v34[v36[7]], &v35[v36[7]], v61);
    v58(&v34[v36[8]], &v35[v36[8]], v59);
    v40 = a3[9];
    v41 = a1 + v40;
    v42 = &a2[v40];
    v60(v41, v42, v62);
    v43 = v56[5];
    v41[v43 + 48] = v42[v43 + 48];
    v44 = *&v42[v43];
    v45 = *&v42[v43 + 16];
    *&v41[v43 + 32] = *&v42[v43 + 32];
    *&v41[v43 + 16] = v45;
    *&v41[v43] = v44;
    v60(&v41[v36[6]], &v42[v36[6]], v62);
    v63(&v41[v36[7]], &v42[v36[7]], v61);
    v58(&v41[v36[8]], &v42[v36[8]], v59);
    v60(&v41[*(v55 + 36)], &v42[*(v55 + 36)], v62);
    v63(&v41[*(v55 + 40)], &v42[*(v55 + 40)], v61);
    v46 = a3[10];
    v47 = a1 + v46;
    v48 = &a2[v46];
    v60(a1 + v46, &a2[v46], v62);
    v49 = v56;
    v50 = v56[5];
    v47[v50 + 48] = v48[v50 + 48];
    v51 = *&v48[v50];
    v52 = *&v48[v50 + 16];
    *&v47[v50 + 32] = *&v48[v50 + 32];
    *&v47[v50 + 16] = v52;
    *&v47[v50] = v51;
    v60(&v47[v56[6]], &v48[v56[6]], v62);
    v63(&v47[v49[7]], &v48[v49[7]], v61);
    v58(&v47[v49[8]], &v48[v49[8]], v59);
    v60(&v47[*(v55 + 36)], &v48[*(v55 + 36)], v62);
    v63(&v47[*(v55 + 40)], &v48[*(v55 + 40)], v61);
  }

  return v3;
}

uint64_t destroy for MLHandActionClassifier.SingleStreamBlock(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for Conv2D(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v3(a1 + v4[6], v2);
  v5 = a1 + v4[7];
  v14 = type metadata accessor for BatchNorm(0);
  v18 = *(*(v14 - 8) + 8);
  v18(v5, v14);
  v6 = a1 + v4[8];
  v17 = type metadata accessor for Dropout(0);
  v15 = *(*(v17 - 8) + 8);
  v15(v6, v17);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v3(a1 + *(v16 + 36), v2);
  v18(a1 + *(v16 + 40), v14);
  v7 = a1 + a2[5];
  v3(v7, v2);
  v3(v7 + v4[6], v2);
  v18(v7 + v4[7], v14);
  v15(v7 + v4[8], v17);
  v3(v7 + *(v16 + 36), v2);
  v18(v7 + *(v16 + 40), v14);
  v8 = a1 + a2[6];
  v3(v8, v2);
  v3(v8 + v4[6], v2);
  v18(v8 + v4[7], v14);
  v15(v8 + v4[8], v17);
  v3(v8 + *(v16 + 36), v2);
  v18(v8 + *(v16 + 40), v14);
  v9 = a1 + a2[7];
  v3(v9, v2);
  v3(v9 + v4[6], v2);
  v18(v9 + v4[7], v14);
  v15(v9 + v4[8], v17);
  v3(v9 + *(v16 + 36), v2);
  v18(v9 + *(v16 + 40), v14);
  v10 = a1 + a2[8];
  v3(v10, v2);
  v3(v10 + v4[6], v2);
  v18(v10 + v4[7], v14);
  v15(v10 + v4[8], v17);
  v11 = a1 + a2[9];
  v3(v11, v2);
  v3(v11 + v4[6], v2);
  v18(v11 + v4[7], v14);
  v15(v11 + v4[8], v17);
  v3(v11 + *(v16 + 36), v2);
  v18(v11 + *(v16 + 40), v14);
  v12 = a1 + a2[10];
  v3(v12, v2);
  v3(v12 + v4[6], v2);
  v18(v12 + v4[7], v14);
  v15(v12 + v4[8], v17);
  v3(v12 + *(v16 + 36), v2);
  return (v18)(v12 + *(v16 + 40), v14);
}

uint64_t initializeWithCopy for MLHandActionClassifier.SingleStreamBlock(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = type metadata accessor for Conv2D(0);
  v55 = *(*(v3 - 8) + 16);
  v53 = v3;
  v55(a1, a2, v3);
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 16) = v7;
  *(a1 + v5) = v6;
  v8 = v4;
  v55(a1 + *(v4 + 24), a2 + *(v4 + 24), v3);
  v9 = v8[7];
  v49 = v8;
  v56 = type metadata accessor for BatchNorm(0);
  v54 = *(*(v56 - 8) + 16);
  v54(a1 + v9, a2 + v9, v56);
  v10 = v8[8];
  v51 = type metadata accessor for Dropout(0);
  v50 = *(*(v51 - 8) + 16);
  v50(a1 + v10, a2 + v10, v51);
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v55(a1 + *(v48 + 36), a2 + *(v48 + 36), v3);
  v54(a1 + *(v48 + 40), a2 + *(v48 + 40), v56);
  v11 = a3[5];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v55(v12, v13, v53);
  v14 = v8[5];
  *(v14 + v12 + 48) = *(v14 + v13 + 48);
  v15 = *(v14 + v13);
  v16 = *(v14 + v13 + 16);
  *(v14 + v12 + 32) = *(v14 + v13 + 32);
  *(v14 + v12 + 16) = v16;
  *(v14 + v12) = v15;
  v55(v12 + v8[6], v13 + v8[6], v53);
  v54(v12 + v8[7], v13 + v8[7], v56);
  v50(v12 + v8[8], v13 + v8[8], v51);
  v55(v12 + *(v48 + 36), v13 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v12, *(v48 + 40) + v13, v56);
  v17 = a3[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v55(v18, v19, v53);
  v20 = v8[5];
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v21 = *(v20 + v19);
  v22 = *(v20 + v19 + 16);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 16) = v22;
  *(v20 + v18) = v21;
  v55(v18 + v49[6], v19 + v49[6], v53);
  v54(v18 + v49[7], v19 + v49[7], v56);
  v50(v18 + v49[8], v19 + v49[8], v51);
  v55(v18 + *(v48 + 36), v19 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v18, *(v48 + 40) + v19, v56);
  v23 = a3[7];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v55(v24, v25, v53);
  v26 = v8[5];
  *(v26 + v24 + 48) = *(v26 + v25 + 48);
  v27 = *(v26 + v25);
  v28 = *(v26 + v25 + 16);
  *(v26 + v24 + 32) = *(v26 + v25 + 32);
  *(v26 + v24 + 16) = v28;
  *(v26 + v24) = v27;
  v55(v24 + v49[6], v25 + v49[6], v53);
  v54(v24 + v8[7], v25 + v8[7], v56);
  v50(v24 + v8[8], v25 + v8[8], v51);
  v55(v24 + *(v48 + 36), v25 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v24, *(v48 + 40) + v25, v56);
  v29 = a3[8];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v55(v30, v31, v53);
  v32 = v8[5];
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v33 = *(v32 + v31);
  v34 = *(v32 + v31 + 16);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 16) = v34;
  *(v32 + v30) = v33;
  v55(v49[6] + v30, v31 + v49[6], v53);
  v54(v8[7] + v30, v31 + v8[7], v56);
  v50(v8[8] + v30, v8[8] + v31, v51);
  v35 = a3[9];
  v36 = a1 + v35;
  v37 = a2 + v35;
  v55(v36, v37, v53);
  v38 = v8[5];
  *(v38 + v36 + 48) = *(v38 + v37 + 48);
  v39 = *(v38 + v37);
  v40 = *(v38 + v37 + 16);
  *(v38 + v36 + 32) = *(v38 + v37 + 32);
  *(v38 + v36 + 16) = v40;
  *(v38 + v36) = v39;
  v55(v36 + v8[6], v37 + v8[6], v53);
  v54(v36 + v8[7], v37 + v8[7], v56);
  v50(v36 + v8[8], v37 + v8[8], v51);
  v55(v36 + *(v48 + 36), v37 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v36, *(v48 + 40) + v37, v56);
  v41 = a3[10];
  v42 = a1 + v41;
  v43 = v41 + a2;
  v55(a1 + v41, v41 + a2, v53);
  v44 = v8[5];
  *(v44 + v42 + 48) = *(v44 + v43 + 48);
  v45 = *(v44 + v43);
  v46 = *(v44 + v43 + 16);
  *(v44 + v42 + 32) = *(v44 + v43 + 32);
  *(v44 + v42 + 16) = v46;
  *(v44 + v42) = v45;
  v55(v42 + v8[6], v43 + v8[6], v53);
  v54(v42 + v8[7], v43 + v8[7], v56);
  v50(v42 + v8[8], v43 + v8[8], v51);
  v55(v42 + *(v48 + 36), v43 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v42, *(v48 + 40) + v43, v56);
  return a1;
}

uint64_t assignWithCopy for MLHandActionClassifier.SingleStreamBlock(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = type metadata accessor for Conv2D(0);
  v41 = *(*(v3 - 8) + 24);
  v38 = v3;
  v41(a1, a2, v3);
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  v6 = v4;
  *(a1 + v5) = *(a2 + v5);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  *(a1 + v5 + 16) = *(a2 + v5 + 16);
  *(a1 + v5 + 24) = *(a2 + v5 + 24);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 40) = *(a2 + v5 + 40);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v41(a1 + *(v4 + 24), a2 + *(v4 + 24), v3);
  v7 = v6[7];
  v40 = type metadata accessor for BatchNorm(0);
  v39 = *(*(v40 - 8) + 24);
  v39(a1 + v7, a2 + v7, v40);
  v8 = v6[8];
  v36 = type metadata accessor for Dropout(0);
  v35 = *(*(v36 - 8) + 24);
  v35(a1 + v8, a2 + v8, v36);
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v41(a1 + *(v34 + 36), a2 + *(v34 + 36), v3);
  v39(a1 + *(v34 + 40), a2 + *(v34 + 40), v40);
  v9 = a3[5];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v41(v10, v11, v38);
  v12 = v6[5];
  *(v12 + v10) = *(v12 + v11);
  *(v12 + v10 + 8) = *(v12 + v11 + 8);
  *(v12 + v10 + 16) = *(v12 + v11 + 16);
  *(v12 + v10 + 24) = *(v12 + v11 + 24);
  *(v12 + v10 + 32) = *(v12 + v11 + 32);
  *(v12 + v10 + 40) = *(v12 + v11 + 40);
  *(v12 + v10 + 48) = *(v12 + v11 + 48);
  v41(v10 + v6[6], v11 + v6[6], v38);
  v39(v10 + v6[7], v11 + v6[7], v40);
  v35(v10 + v6[8], v11 + v6[8], v36);
  v41(v10 + *(v34 + 36), v11 + *(v34 + 36), v38);
  v39(*(v34 + 40) + v10, *(v34 + 40) + v11, v40);
  v13 = a3[6];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v41(v14, v15, v38);
  v16 = v6[5];
  *(v16 + v14) = *(v16 + v15);
  *(v16 + v14 + 8) = *(v16 + v15 + 8);
  *(v16 + v14 + 16) = *(v16 + v15 + 16);
  *(v16 + v14 + 24) = *(v16 + v15 + 24);
  *(v16 + v14 + 32) = *(v16 + v15 + 32);
  *(v16 + v14 + 40) = *(v16 + v15 + 40);
  *(v16 + v14 + 48) = *(v16 + v15 + 48);
  v41(v14 + v6[6], v15 + v6[6], v38);
  v39(v14 + v6[7], v15 + v6[7], v40);
  v35(v14 + v6[8], v15 + v6[8], v36);
  v41(v14 + *(v34 + 36), v15 + *(v34 + 36), v38);
  v39(*(v34 + 40) + v14, *(v34 + 40) + v15, v40);
  v17 = a3[7];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v41(v18, v19, v38);
  v20 = v6[5];
  *(v20 + v18) = *(v20 + v19);
  *(v20 + v18 + 8) = *(v20 + v19 + 8);
  *(v20 + v18 + 16) = *(v20 + v19 + 16);
  *(v20 + v18 + 24) = *(v20 + v19 + 24);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 40) = *(v20 + v19 + 40);
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v41(v18 + v6[6], v19 + v6[6], v38);
  v39(v18 + v6[7], v19 + v6[7], v40);
  v35(v18 + v6[8], v19 + v6[8], v36);
  v41(v18 + *(v34 + 36), v19 + *(v34 + 36), v38);
  v39(*(v34 + 40) + v18, *(v34 + 40) + v19, v40);
  v21 = a3[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  v41(v22, v23, v38);
  v24 = v6[5];
  *(v24 + v22) = *(v24 + v23);
  *(v24 + v22 + 8) = *(v24 + v23 + 8);
  *(v24 + v22 + 16) = *(v24 + v23 + 16);
  *(v24 + v22 + 24) = *(v24 + v23 + 24);
  *(v24 + v22 + 32) = *(v24 + v23 + 32);
  *(v24 + v22 + 40) = *(v24 + v23 + 40);
  *(v24 + v22 + 48) = *(v24 + v23 + 48);
  v41(v6[6] + v22, v23 + v6[6], v38);
  v39(v6[7] + v22, v23 + v6[7], v40);
  v35(v6[8] + v22, v6[8] + v23, v36);
  v25 = a3[9];
  v26 = a1 + v25;
  v27 = a2 + v25;
  v41(v26, v27, v38);
  v28 = v6[5];
  *(v28 + v26) = *(v28 + v27);
  *(v28 + v26 + 8) = *(v28 + v27 + 8);
  *(v28 + v26 + 16) = *(v28 + v27 + 16);
  *(v28 + v26 + 24) = *(v28 + v27 + 24);
  *(v28 + v26 + 32) = *(v28 + v27 + 32);
  *(v28 + v26 + 40) = *(v28 + v27 + 40);
  *(v28 + v26 + 48) = *(v28 + v27 + 48);
  v41(v26 + v6[6], v27 + v6[6], v38);
  v39(v26 + v6[7], v27 + v6[7], v40);
  v35(v26 + v6[8], v27 + v6[8], v36);
  v41(v26 + *(v34 + 36), v27 + *(v34 + 36), v38);
  v39(*(v34 + 40) + v26, *(v34 + 40) + v27, v40);
  v29 = a3[10];
  v30 = a1 + v29;
  v31 = v29 + a2;
  v41(a1 + v29, v29 + a2, v38);
  v32 = v6[5];
  *(v32 + v30) = *(v32 + v31);
  *(v32 + v30 + 8) = *(v32 + v31 + 8);
  *(v32 + v30 + 16) = *(v32 + v31 + 16);
  *(v32 + v30 + 24) = *(v32 + v31 + 24);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 40) = *(v32 + v31 + 40);
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v41(v30 + v6[6], v31 + v6[6], v38);
  v39(v30 + v6[7], v31 + v6[7], v40);
  v35(v30 + v6[8], v31 + v6[8], v36);
  v41(v30 + *(v34 + 36), v31 + *(v34 + 36), v38);
  v39(*(v34 + 40) + v30, *(v34 + 40) + v31, v40);
  return a1;
}

uint64_t initializeWithTake for MLHandActionClassifier.SingleStreamBlock(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = type metadata accessor for Conv2D(0);
  v55 = *(*(v3 - 8) + 32);
  v53 = v3;
  v55(a1, a2, v3);
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 16) = v7;
  *(a1 + v5) = v6;
  v8 = v4;
  v55(a1 + *(v4 + 24), a2 + *(v4 + 24), v3);
  v9 = v8[7];
  v49 = v8;
  v56 = type metadata accessor for BatchNorm(0);
  v54 = *(*(v56 - 8) + 32);
  v54(a1 + v9, a2 + v9, v56);
  v10 = v8[8];
  v51 = type metadata accessor for Dropout(0);
  v50 = *(*(v51 - 8) + 32);
  v50(a1 + v10, a2 + v10, v51);
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v55(a1 + *(v48 + 36), a2 + *(v48 + 36), v3);
  v54(a1 + *(v48 + 40), a2 + *(v48 + 40), v56);
  v11 = a3[5];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v55(v12, v13, v53);
  v14 = v8[5];
  *(v14 + v12 + 48) = *(v14 + v13 + 48);
  v15 = *(v14 + v13);
  v16 = *(v14 + v13 + 16);
  *(v14 + v12 + 32) = *(v14 + v13 + 32);
  *(v14 + v12 + 16) = v16;
  *(v14 + v12) = v15;
  v55(v12 + v8[6], v13 + v8[6], v53);
  v54(v12 + v8[7], v13 + v8[7], v56);
  v50(v12 + v8[8], v13 + v8[8], v51);
  v55(v12 + *(v48 + 36), v13 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v12, *(v48 + 40) + v13, v56);
  v17 = a3[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v55(v18, v19, v53);
  v20 = v8[5];
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v21 = *(v20 + v19);
  v22 = *(v20 + v19 + 16);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 16) = v22;
  *(v20 + v18) = v21;
  v55(v18 + v49[6], v19 + v49[6], v53);
  v54(v18 + v49[7], v19 + v49[7], v56);
  v50(v18 + v49[8], v19 + v49[8], v51);
  v55(v18 + *(v48 + 36), v19 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v18, *(v48 + 40) + v19, v56);
  v23 = a3[7];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v55(v24, v25, v53);
  v26 = v8[5];
  *(v26 + v24 + 48) = *(v26 + v25 + 48);
  v27 = *(v26 + v25);
  v28 = *(v26 + v25 + 16);
  *(v26 + v24 + 32) = *(v26 + v25 + 32);
  *(v26 + v24 + 16) = v28;
  *(v26 + v24) = v27;
  v55(v24 + v49[6], v25 + v49[6], v53);
  v54(v24 + v8[7], v25 + v8[7], v56);
  v50(v24 + v8[8], v25 + v8[8], v51);
  v55(v24 + *(v48 + 36), v25 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v24, *(v48 + 40) + v25, v56);
  v29 = a3[8];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v55(v30, v31, v53);
  v32 = v8[5];
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v33 = *(v32 + v31);
  v34 = *(v32 + v31 + 16);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 16) = v34;
  *(v32 + v30) = v33;
  v55(v49[6] + v30, v31 + v49[6], v53);
  v54(v8[7] + v30, v31 + v8[7], v56);
  v50(v8[8] + v30, v8[8] + v31, v51);
  v35 = a3[9];
  v36 = a1 + v35;
  v37 = a2 + v35;
  v55(v36, v37, v53);
  v38 = v8[5];
  *(v38 + v36 + 48) = *(v38 + v37 + 48);
  v39 = *(v38 + v37);
  v40 = *(v38 + v37 + 16);
  *(v38 + v36 + 32) = *(v38 + v37 + 32);
  *(v38 + v36 + 16) = v40;
  *(v38 + v36) = v39;
  v55(v36 + v8[6], v37 + v8[6], v53);
  v54(v36 + v8[7], v37 + v8[7], v56);
  v50(v36 + v8[8], v37 + v8[8], v51);
  v55(v36 + *(v48 + 36), v37 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v36, *(v48 + 40) + v37, v56);
  v41 = a3[10];
  v42 = a1 + v41;
  v43 = v41 + a2;
  v55(a1 + v41, v41 + a2, v53);
  v44 = v8[5];
  *(v44 + v42 + 48) = *(v44 + v43 + 48);
  v45 = *(v44 + v43);
  v46 = *(v44 + v43 + 16);
  *(v44 + v42 + 32) = *(v44 + v43 + 32);
  *(v44 + v42 + 16) = v46;
  *(v44 + v42) = v45;
  v55(v42 + v8[6], v43 + v8[6], v53);
  v54(v42 + v8[7], v43 + v8[7], v56);
  v50(v42 + v8[8], v43 + v8[8], v51);
  v55(v42 + *(v48 + 36), v43 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v42, *(v48 + 40) + v43, v56);
  return a1;
}

uint64_t assignWithTake for MLHandActionClassifier.SingleStreamBlock(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = type metadata accessor for Conv2D(0);
  v39 = *(*(v3 - 8) + 40);
  v41 = v3;
  v39(a1, a2, v3);
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  *(a1 + v5) = *(a2 + v5);
  *(a1 + v5 + 16) = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v6 = v4;
  v39(a1 + *(v4 + 24), a2 + *(v4 + 24), v3);
  v7 = v6[7];
  v40 = type metadata accessor for BatchNorm(0);
  v42 = *(*(v40 - 8) + 40);
  v42(a1 + v7, a2 + v7, v40);
  v8 = v6[8];
  v37 = type metadata accessor for Dropout(0);
  v36 = *(*(v37 - 8) + 40);
  v36(a1 + v8, a2 + v8, v37);
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v39(a1 + *(v35 + 36), a2 + *(v35 + 36), v3);
  v42(a1 + *(v35 + 40), a2 + *(v35 + 40), v40);
  v9 = a3[5];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v39(v10, v11, v41);
  v12 = v6[5];
  *(v12 + v10) = *(v12 + v11);
  *(v12 + v10 + 16) = *(v12 + v11 + 16);
  *(v12 + v10 + 32) = *(v12 + v11 + 32);
  *(v12 + v10 + 48) = *(v12 + v11 + 48);
  v39(v10 + v6[6], v11 + v6[6], v41);
  v42(v10 + v6[7], v11 + v6[7], v40);
  v36(v10 + v6[8], v11 + v6[8], v37);
  v39(v10 + *(v35 + 36), v11 + *(v35 + 36), v41);
  v42(*(v35 + 40) + v10, *(v35 + 40) + v11, v40);
  v13 = a3[6];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v39(v14, v15, v41);
  v16 = v6[5];
  *(v16 + v14) = *(v16 + v15);
  *(v16 + v14 + 16) = *(v16 + v15 + 16);
  *(v16 + v14 + 32) = *(v16 + v15 + 32);
  *(v16 + v14 + 48) = *(v16 + v15 + 48);
  v39(v14 + v6[6], v15 + v6[6], v41);
  v42(v14 + v6[7], v15 + v6[7], v40);
  v36(v14 + v6[8], v15 + v6[8], v37);
  v39(v14 + *(v35 + 36), v15 + *(v35 + 36), v41);
  v42(*(v35 + 40) + v14, *(v35 + 40) + v15, v40);
  v17 = a3[7];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v39(v18, v19, v41);
  v20 = v6[5];
  *(v20 + v18) = *(v20 + v19);
  *(v20 + v18 + 16) = *(v20 + v19 + 16);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v39(v18 + v6[6], v19 + v6[6], v41);
  v42(v18 + v6[7], v19 + v6[7], v40);
  v36(v18 + v6[8], v19 + v6[8], v37);
  v39(v18 + *(v35 + 36), v19 + *(v35 + 36), v41);
  v42(*(v35 + 40) + v18, *(v35 + 40) + v19, v40);
  v21 = a3[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  v39(v22, v23, v41);
  v24 = v6;
  v25 = v6[5];
  *(v25 + v22) = *(v25 + v23);
  *(v25 + v22 + 16) = *(v25 + v23 + 16);
  *(v25 + v22 + 32) = *(v25 + v23 + 32);
  *(v25 + v22 + 48) = *(v25 + v23 + 48);
  v39(v24[6] + v22, v23 + v24[6], v41);
  v42(v24[7] + v22, v23 + v24[7], v40);
  v36(v24[8] + v22, v24[8] + v23, v37);
  v26 = a3[9];
  v27 = a1 + v26;
  v28 = a2 + v26;
  v39(v27, v28, v41);
  v29 = v6[5];
  *(v29 + v27) = *(v29 + v28);
  *(v29 + v27 + 16) = *(v29 + v28 + 16);
  *(v29 + v27 + 32) = *(v29 + v28 + 32);
  *(v29 + v27 + 48) = *(v29 + v28 + 48);
  v39(v27 + v24[6], v28 + v24[6], v41);
  v42(v27 + v24[7], v28 + v24[7], v40);
  v36(v27 + v24[8], v28 + v24[8], v37);
  v39(v27 + *(v35 + 36), v28 + *(v35 + 36), v41);
  v42(*(v35 + 40) + v27, *(v35 + 40) + v28, v40);
  v30 = a3[10];
  v31 = a1 + v30;
  v32 = v30 + a2;
  v39(a1 + v30, v30 + a2, v41);
  v33 = v24[5];
  *(v33 + v31) = *(v33 + v32);
  *(v33 + v31 + 16) = *(v33 + v32 + 16);
  *(v33 + v31 + 32) = *(v33 + v32 + 32);
  *(v33 + v31 + 48) = *(v33 + v32 + 48);
  v39(v31 + v24[6], v32 + v24[6], v41);
  v42(v31 + v24[7], v32 + v24[7], v40);
  v36(v31 + v24[8], v32 + v24[8], v37);
  v39(v31 + *(v35 + 36), v32 + *(v35 + 36), v41);
  v42(*(v35 + 40) + v31, *(v35 + 40) + v32, v40);
  return a1;
}

uint64_t sub_1CB9BE(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.ResidualLayer<MLHandActionClassifier.InvertedResidual>);
    v4 = *(a3 + 32) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_1CBA20(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.ResidualLayer<MLHandActionClassifier.InvertedResidual>);
    v6 = *(a4 + 32) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLHandActionClassifier.SingleStreamBlock(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v5[0] = v3;
    v5[1] = v3;
    v5[2] = v3;
    v5[3] = v3;
    result = type metadata accessor for MLHandActionClassifier.InvertedResidual(319);
    if (v4 <= 0x3F)
    {
      v5[4] = *(result - 8) + 64;
      v5[5] = v3;
      v5[6] = v3;
      swift_initStructMetadata(a1, 256, 7, v5, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>;
  if (!lazy cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>)
  {
    v2 = type metadata accessor for MLHandActionClassifier.InvertedResidual(255);
    v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.InvertedResidual and conformance MLHandActionClassifier.InvertedResidual, type metadata accessor for MLHandActionClassifier.InvertedResidual, &protocol conformance descriptor for MLHandActionClassifier.InvertedResidual);
    result = type metadata accessor for MLHandActionClassifier.DownsampledResidualLayer(a1, v2, v3, v4);
    if (!v5)
    {
      lazy cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual> = result;
    }
  }

  return result;
}

uint64_t type metadata completion function for MLHandActionClassifier.ResidualLayer(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  if (v2 <= 0x3F)
  {
    v4[0] = *(v1 - 8) + 64;
    v1 = 0;
    swift_initStructMetadata(a1, 0, 1, v4, a1 + 32);
  }

  return v1;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.ResidualLayer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5;
  if (v5 > 7u || *(v4 + 64) > 0x18uLL || (v5 & 0x100000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;

    return (v7 + ((v6 + 16) & ~v6));
  }

  else
  {
    (*(v4 + 16))(a1, a2);
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for MLHandActionClassifier.ResidualLayer(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  result = 0;
  if (!a2)
  {
    return result;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = a2 <= v7;
  v9 = a2 - v7;
  if (v8)
  {
    return __swift_getEnumTagSinglePayload(a1, v7, v5);
  }

  v10 = *(v6 + 64);
  if (v10 > 3)
  {
LABEL_4:
    v11 = a1[v10];
    goto LABEL_11;
  }

  v12 = ((~(-1 << (8 * v10)) + v9) >> (8 * v10)) + 1;
  if (v12 > 0xFFFF)
  {
    v11 = *&a1[v10];
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
LABEL_19:
        if (!v7)
        {
          return result;
        }

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }

      goto LABEL_4;
    }

    v11 = *&a1[v10];
  }

LABEL_11:
  if (!v11)
  {
    goto LABEL_19;
  }

  v13 = (v11 - 1) << (8 * v10);
  v14 = 0;
  if (v10 >= 4)
  {
    v13 = 0;
  }

  if (v10)
  {
    v15 = 4;
    if (v10 < 4)
    {
      v15 = *(v6 + 64);
    }

    switch(v15)
    {
      case 1:
        v14 = *a1;
        break;
      case 2:
        v14 = *a1;
        break;
      case 3:
        v14 = *a1 | (a1[2] << 16);
        break;
      case 4:
        v14 = *a1;
        break;
    }
  }

  return v7 + (v13 | v14) + 1;
}

uint64_t storeEnumTagSinglePayload for MLHandActionClassifier.ResidualLayer(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = *(a4 + 16);
  v5 = *(result - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = 0;
  v9 = a3 <= v6;
  v10 = a3 - v6;
  if (!v9)
  {
    if (v7 > 3)
    {
      v15 = 1;
LABEL_9:
      v8 = v15;
      goto LABEL_10;
    }

    v11 = ((~(-1 << (8 * v7)) + v10) >> (8 * v7)) + 1;
    if (v11 > 0xFFFF)
    {
      v15 = 4;
      goto LABEL_9;
    }

    v8 = 0;
    if (v11 >= 2)
    {
      v8 = ((v11 | 0x200000000uLL) - 256) >> 32;
    }
  }

LABEL_10:
  if (v6 < a2)
  {
    v12 = a2 + ~v6;
    if (v7 >= 4)
    {
      v13 = 1;
      __bzero(a1, v7);
      *a1 = v12;
      result = v8;
      switch(v8)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    v13 = (v12 >> (8 * v7)) + 1;
    if (v7)
    {
      v14 = v12 & ~(-1 << (8 * v7));
      __bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v14;
          result = v8;
          switch(v8)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_26;
            case 2u:
              goto LABEL_28;
            case 3u:
              goto LABEL_30;
            case 4u:
              goto LABEL_27;
          }
        }

        *a1 = v12;
        result = v8;
        switch(v8)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_26;
          case 2u:
            goto LABEL_28;
          case 3u:
            goto LABEL_30;
          case 4u:
            goto LABEL_27;
        }
      }

      *a1 = v14;
      *(a1 + 2) = BYTE2(v14);
      result = v8;
      switch(v8)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    result = v8;
    switch(v8)
    {
      case 0u:
        return result;
      case 1u:
LABEL_26:
        *(a1 + v7) = v13;
        return result;
      case 2u:
LABEL_28:
        *(a1 + v7) = v13;
        return result;
      case 3u:
        goto LABEL_30;
      case 4u:
LABEL_27:
        *(a1 + v7) = v13;
        return result;
    }
  }

  switch(v8)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v7) = 0;
      break;
    case 2u:
      *(a1 + v7) = 0;
      break;
    case 3u:
LABEL_30:
      BUG();
    case 4u:
      *(a1 + v7) = 0;
      break;
  }

  if (a2)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, v6, result);
  }

  return result;
}

uint64_t type metadata completion function for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v8[0] = *(v1 - 8) + 64;
    v4 = type metadata accessor for Conv2D(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v8[1] = *(v4 - 8) + 64;
      v2 = type metadata accessor for BatchNorm(319);
      if (v6 <= 0x3F)
      {
        v8[2] = *(v2 - 8) + 64;
        v2 = 0;
        swift_initStructMetadata(a1, 0, 3, v8, a1 + 32);
      }
    }
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.DownsampledResidualLayer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v27 = *(a3 + 16);
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  v25 = type metadata accessor for Conv2D(0);
  v5 = *(v25 - 8);
  v6 = *(v5 + 80);
  v26 = v5;
  v7 = *(v5 + 64);
  v8 = type metadata accessor for BatchNorm(0);
  v9 = v3;
  v10 = *(v8 - 8);
  v11 = *(v10 + 80);
  v12 = v11 | v6 | *(v3 + 80);
  v13 = (v11 | v6 | *(v3 + 80));
  if (v13 > 7 || (v14 = v6 + v4, v15 = ~v6, v16 = *(v10 + 80), v17 = v16 + v7, v18 = ~v16, *(v10 + 64) + (v18 & (v17 + (v15 & v14))) > 0x18) || (v12 & 0x100000) != 0)
  {
    v23 = *a2;
    *a1 = *a2;

    return (v23 + ((v13 + 16) & ~v13));
  }

  else
  {
    v19 = v17;
    v20 = a1;
    v28 = *(v8 - 8);
    v30 = v19;
    v29 = v8;
    (*(v9 + 16))(a1, a2, v27);
    v21 = v15 & (a1 + v14);
    v22 = v15 & (a2 + v14);
    (*(v26 + 16))(v21, v22, v25);
    (*(v28 + 16))(v18 & (v30 + v21), v18 & (v30 + v22), v29);
  }

  return v20;
}

uint64_t destroy for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  (*(v2 + 8))(a1);
  v3 = *(v2 + 64) + a1;
  v4 = type metadata accessor for Conv2D(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + v3) & ~*(v5 + 80);
  (*(v5 + 8))(v6, v4);
  v7 = *(v5 + 64) + v6;
  v8 = type metadata accessor for BatchNorm(0);
  return (*(*(v8 - 8) + 8))((*(*(v8 - 8) + 80) + v7) & ~*(*(v8 - 8) + 80), v8);
}

uint64_t initializeWithCopy for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 16))(a1);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Conv2D(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v7 + v4;
  v9 = ~v7;
  v10 = v9 & (v8 + a1);
  v11 = v9 & (a2 + v8);
  (*(v6 + 16))(v10, v11, v5);
  v12 = *(v6 + 64);
  v13 = type metadata accessor for BatchNorm(0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(~*(v14 + 80) & (*(v14 + 80) + v12 + v10), ~*(v14 + 80) & (v11 + *(v14 + 80) + v12), v13);
  return a1;
}

uint64_t assignWithCopy for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 24))(a1);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Conv2D(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v7 + v4;
  v9 = ~v7;
  v10 = v9 & (v8 + a1);
  v11 = v9 & (a2 + v8);
  (*(v6 + 24))(v10, v11, v5);
  v12 = *(v6 + 64);
  v13 = type metadata accessor for BatchNorm(0);
  v14 = *(v13 - 8);
  (*(v14 + 24))(~*(v14 + 80) & (*(v14 + 80) + v12 + v10), ~*(v14 + 80) & (v11 + *(v14 + 80) + v12), v13);
  return a1;
}

uint64_t initializeWithTake for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 32))(a1);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Conv2D(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v7 + v4;
  v9 = ~v7;
  v10 = v9 & (v8 + a1);
  v11 = v9 & (a2 + v8);
  (*(v6 + 32))(v10, v11, v5);
  v12 = *(v6 + 64);
  v13 = type metadata accessor for BatchNorm(0);
  v14 = *(v13 - 8);
  (*(v14 + 32))(~*(v14 + 80) & (*(v14 + 80) + v12 + v10), ~*(v14 + 80) & (v11 + *(v14 + 80) + v12), v13);
  return a1;
}

uint64_t assignWithTake for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 40))(a1);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Conv2D(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v7 + v4;
  v9 = ~v7;
  v10 = v9 & (v8 + a1);
  v11 = v9 & (a2 + v8);
  (*(v6 + 40))(v10, v11, v5);
  v12 = *(v6 + 64);
  v13 = type metadata accessor for BatchNorm(0);
  v14 = *(v13 - 8);
  (*(v14 + 40))(~*(v14 + 80) & (*(v14 + 80) + v12 + v10), ~*(v14 + 80) & (v11 + *(v14 + 80) + v12), v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLHandActionClassifier.DownsampledResidualLayer(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v28 = *(a3 + 16);
  v4 = *(v28 - 8);
  v5 = *(v4 + 84);
  v30 = 0;
  v29 = type metadata accessor for Conv2D(0);
  v6 = *(v29 - 8);
  v7 = v5;
  v31 = *(v6 + 84);
  if (v31 > v5)
  {
    v7 = *(v6 + 84);
  }

  v8 = type metadata accessor for BatchNorm(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 > v7)
  {
    v7 = *(v9 + 84);
  }

  if (!a2)
  {
    return v30;
  }

  v11 = ~*(v6 + 80);
  v12 = *(v4 + 64) + *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  v15 = ~v14;
  v16 = a2 <= v7;
  v17 = a2 - v7;
  if (v16)
  {
    goto LABEL_24;
  }

  v18 = *(v9 + 64) + (v15 & (v14 + v13 + (v11 & v12)));
  if (v18 > 3)
  {
    goto LABEL_8;
  }

  v20 = ((~(-1 << (8 * v18)) + v17) >> (8 * v18)) + 1;
  if (v20 > 0xFFFF)
  {
    v19 = *&a1[v18];
    goto LABEL_15;
  }

  if (v20 > 0xFF)
  {
    v19 = *&a1[v18];
LABEL_15:
    if (v19)
    {
      v21 = (v19 - 1) << (8 * v18);
      v22 = 0;
      if (v18 >= 4)
      {
        v21 = 0;
      }

      if (v18)
      {
        v23 = 4;
        if (v18 < 4)
        {
          v23 = *(v9 + 64) + (v15 & (v14 + v13 + (v11 & v12)));
        }

        switch(v23)
        {
          case 1:
            v22 = *a1;
            break;
          case 2:
            v22 = *a1;
            break;
          case 3:
            v22 = *a1 | (a1[2] << 16);
            break;
          case 4:
            v22 = *a1;
            break;
        }
      }

      return v7 + (v21 | v22) + 1;
    }

    goto LABEL_23;
  }

  if (v20 >= 2)
  {
LABEL_8:
    v19 = a1[v18];
    goto LABEL_15;
  }

LABEL_23:
  if (!v7)
  {
    return v30;
  }

LABEL_24:
  if (v5 == v7)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v28);
  }

  v25 = v11 & &a1[v12];
  if (v31 == v7)
  {
    v10 = v31;
    v26 = v29;
  }

  else
  {
    v25 = v15 & (v14 + v13 + v25);
    v26 = v8;
  }

  return __swift_getEnumTagSinglePayload(v25, v10, v26);
}

uint64_t storeEnumTagSinglePayload for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v26 = *(a4 + 16);
  v5 = *(v26 - 8);
  v6 = *(v5 + 84);
  v27 = type metadata accessor for Conv2D(0);
  v7 = *(v27 - 8);
  v8 = v6;
  v30 = *(v7 + 84);
  if (*(v7 + 84) > v6)
  {
    v8 = *(v7 + 84);
  }

  result = type metadata accessor for BatchNorm(0);
  v10 = *(result - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = ~*(v7 + 80);
  v13 = *(v5 + 64) + *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64) + (~v15 & (v15 + v14 + (v12 & v13)));
  v17 = a3 <= v8;
  v18 = a3 - v8;
  if (!v17)
  {
    if (v16 <= 3)
    {
      v19 = ((~(-1 << (8 * v16)) + v18) >> (8 * v16)) + 1;
      if (v19 > 0xFFFF)
      {
        HIDWORD(v30) = 4;
      }

      else
      {
        v20 = 0;
        if (v19 >= 2)
        {
          v20 = ((v19 | 0x200000000uLL) - 256) >> 32;
        }

        HIDWORD(v30) = v20;
      }
    }

    else
    {
      HIDWORD(v30) = 1;
    }
  }

  if (v8 < a2)
  {
    v21 = a2 + ~v8;
    if (v16 >= 4)
    {
      v22 = 1;
      __bzero(a1, v16);
      *a1 = v21;
      result = HIDWORD(v30);
      switch(HIDWORD(v30))
      {
        case 0:
          return result;
        case 1:
          goto LABEL_34;
        case 2:
          goto LABEL_36;
        case 3:
          goto LABEL_38;
        case 4:
          goto LABEL_35;
      }
    }

    v22 = (v21 >> (8 * v16)) + 1;
    if (v16)
    {
      v23 = v21 & ~(-1 << (8 * v16));
      __bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v23;
          result = HIDWORD(v30);
          switch(HIDWORD(v30))
          {
            case 0:
              return result;
            case 1:
              goto LABEL_34;
            case 2:
              goto LABEL_36;
            case 3:
              goto LABEL_38;
            case 4:
              goto LABEL_35;
          }
        }

        *a1 = v21;
        result = HIDWORD(v30);
        switch(HIDWORD(v30))
        {
          case 0:
            return result;
          case 1:
            goto LABEL_34;
          case 2:
            goto LABEL_36;
          case 3:
            goto LABEL_38;
          case 4:
            goto LABEL_35;
        }
      }

      *a1 = v23;
      *(a1 + 2) = BYTE2(v23);
      result = HIDWORD(v30);
      switch(HIDWORD(v30))
      {
        case 0:
          return result;
        case 1:
          goto LABEL_34;
        case 2:
          goto LABEL_36;
        case 3:
          goto LABEL_38;
        case 4:
          goto LABEL_35;
      }
    }

    result = HIDWORD(v30);
    switch(HIDWORD(v30))
    {
      case 0:
        return result;
      case 1:
LABEL_34:
        *(a1 + v16) = v22;
        return result;
      case 2:
LABEL_36:
        *(a1 + v16) = v22;
        return result;
      case 3:
        goto LABEL_38;
      case 4:
LABEL_35:
        *(a1 + v16) = v22;
        return result;
    }
  }

  switch(HIDWORD(v30))
  {
    case 0:
      break;
    case 1:
      *(a1 + v16) = 0;
      break;
    case 2:
      *(a1 + v16) = 0;
      break;
    case 3:
LABEL_38:
      BUG();
    case 4:
      *(a1 + v16) = 0;
      break;
  }

  if (a2)
  {
    if (v6 == v8)
    {
      v24 = a1;
      v11 = v6;
      v25 = v26;
    }

    else
    {
      v24 = v12 & (a1 + v13);
      if (v30 == v8)
      {
        v11 = v30;
        v25 = v27;
      }

      else
      {
        v24 = ~v15 & (v15 + v14 + v24);
        v25 = result;
      }
    }

    return __swift_storeEnumTagSinglePayload(v24, a2, v11, v25);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.InvertedResidual(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Conv2D(0);
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v8 = a3[5];
    *(a1 + v8 + 48) = *(a2 + v8 + 48);
    v9 = *(a2 + v8);
    v10 = *(a2 + v8 + 16);
    *(a1 + v8 + 32) = *(a2 + v8 + 32);
    *(a1 + v8 + 16) = v10;
    *(a1 + v8) = v9;
    v7((a1 + a3[6]), (a2 + a3[6]), v6);
    v11 = a3[7];
    v12 = type metadata accessor for BatchNorm(0);
    (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
    v13 = a3[8];
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = type metadata accessor for Dropout(0);
    (*(*(v16 - 8) + 16))(v14, v15, v16);
  }

  return v3;
}

uint64_t destroy for MLHandActionClassifier.InvertedResidual(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for Conv2D(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v3(a1 + a2[6], v2);
  v4 = a1 + a2[7];
  v5 = type metadata accessor for BatchNorm(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = a1 + a2[8];
  v7 = type metadata accessor for Dropout(0);
  return (*(*(v7 - 8) + 8))(v6, v7);
}

uint64_t initializeWithCopy for MLHandActionClassifier.InvertedResidual(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Conv2D(0);
  v5 = *(*(v4 - 8) + 16);
  v5(a1, a2, v4);
  v6 = a3[5];
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v7 = *(a2 + v6);
  v8 = *(a2 + v6 + 16);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  *(a1 + v6 + 16) = v8;
  *(a1 + v6) = v7;
  v5(a1 + a3[6], a2 + a3[6], v4);
  v9 = a3[7];
  v10 = type metadata accessor for BatchNorm(0);
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = a1 + v11;
  v13 = v11 + a2;
  v14 = type metadata accessor for Dropout(0);
  (*(*(v14 - 8) + 16))(v12, v13, v14);
  return a1;
}

uint64_t assignWithCopy for MLHandActionClassifier.InvertedResidual(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Conv2D(0);
  v5 = *(*(v4 - 8) + 24);
  v5(a1, a2, v4);
  v6 = a3[5];
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6 + 24) = *(a2 + v6 + 24);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  *(a1 + v6 + 40) = *(a2 + v6 + 40);
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v7 = a3[7];
  v8 = type metadata accessor for BatchNorm(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  v10 = a1 + v9;
  v11 = v9 + a2;
  v12 = type metadata accessor for Dropout(0);
  (*(*(v12 - 8) + 24))(v10, v11, v12);
  return a1;
}

uint64_t initializeWithTake for MLHandActionClassifier.InvertedResidual(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Conv2D(0);
  v5 = *(*(v4 - 8) + 32);
  v5(a1, a2, v4);
  v6 = a3[5];
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v7 = *(a2 + v6);
  v8 = *(a2 + v6 + 16);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  *(a1 + v6 + 16) = v8;
  *(a1 + v6) = v7;
  v5(a1 + a3[6], a2 + a3[6], v4);
  v9 = a3[7];
  v10 = type metadata accessor for BatchNorm(0);
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = a1 + v11;
  v13 = v11 + a2;
  v14 = type metadata accessor for Dropout(0);
  (*(*(v14 - 8) + 32))(v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for MLHandActionClassifier.InvertedResidual(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Conv2D(0);
  v5 = *(*(v4 - 8) + 40);
  v5(a1, a2, v4);
  v6 = a3[5];
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v7 = a3[7];
  v8 = type metadata accessor for BatchNorm(0);
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  v10 = a1 + v9;
  v11 = v9 + a2;
  v12 = type metadata accessor for Dropout(0);
  (*(*(v12 - 8) + 40))(v10, v11, v12);
  return a1;
}

uint64_t sub_1CCD45(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for Conv2D(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 254)
  {
    v5 = type metadata accessor for BatchNorm(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v8 = a3[7];
    }

    else
    {
      v5 = type metadata accessor for Dropout(0);
      v8 = a3[8];
    }

    v4 = v8 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v6 = *(a1 + a3[5] + 48);
  result = 0;
  if (v6 >= 2u)
  {
    return ((v6 + 2147483646) & 0x7FFFFFFFu) + 1;
  }

  return result;
}

uint64_t sub_1CCDE5(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for Conv2D(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 254)
    {
      result = a4[5];
      *(a1 + result + 48) = a2 + 1;
      return result;
    }

    v7 = type metadata accessor for BatchNorm(0);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v9 = a4[7];
    }

    else
    {
      v7 = type metadata accessor for Dropout(0);
      v9 = a4[8];
    }

    v6 = v9 + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLHandActionClassifier.InvertedResidual(uint64_t a1)
{
  result = type metadata accessor for Conv2D(319);
  if (v2 <= 0x3F)
  {
    v5[0] = *(result - 8) + 64;
    v5[1] = "1";
    v5[2] = v5[0];
    result = type metadata accessor for BatchNorm(319);
    if (v3 <= 0x3F)
    {
      v5[3] = *(result - 8) + 64;
      result = type metadata accessor for Dropout(319);
      if (v4 <= 0x3F)
      {
        v5[4] = *(result - 8) + 64;
        swift_initStructMetadata(a1, 256, 5, v5, a1 + 16);
        return 0;
      }
    }
  }

  return result;
}

uint64_t MLHandActionClassifier.GraphCNN.callAsFunction(_:)(uint64_t a1)
{
  v11 = a1;
  v2 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v1;
  swift_beginAccess(v6, v10, 0, 0);
  outlined init with copy of MLTrainingSessionParameters(v6, &v9, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v7 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  Layer.callAsFunction(_:)(v11, v2, v7);
  return outlined destroy of MLActivityClassifier.ModelParameters(&v9, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
}

uint64_t MLHandActionClassifier.GraphCNNModel.forward(_:)(uint64_t a1)
{
  v3 = v1;
  v54 = type metadata accessor for TensorShape(0);
  v55 = *(v54 - 8);
  v4 = *(v55 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v52 = &v46;
  v9 = type metadata accessor for Tensor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v56 = &v46;
  v57 = v9;
  (*(v10 + 16))(v3, a1);
  v47 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v14 = *(v47 + 36);
  v46 = v2;
  v58 = *(v2 + v14);
  if (v58 == 1)
  {
    v15 = v56;
    Tensor.expandingShape(at:)(&outlined read-only object #0 of MLHandActionClassifier.GraphCNNModel.forward(_:));
    v16 = v57;
    (*(v10 + 8))(v3, v57);
    (*(v10 + 32))(v3, v15, v16);
  }

  v17 = v56;
  Tensor.transposed(permutation:)(&outlined read-only object #1 of MLHandActionClassifier.GraphCNNModel.forward(_:));
  v53 = *(v10 + 8);
  v18 = v57;
  v53(v3, v57);
  v51 = *(v10 + 32);
  v51(v3, v17, v18);
  Tensor.shape.getter(v3, v17, v19);
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v20 = swift_allocObject(v48, 64, 7);
  v20[2] = 4;
  v20[3] = 8;
  v20[4] = TensorShape.subscript.getter(0);
  v20[5] = TensorShape.subscript.getter(1);
  v20[6] = -1;
  v20[7] = 1;
  v50 = &v46;
  TensorShape.init(_:)(v20);
  v21 = v56;
  Tensor.reshaped(to:)(&v46);
  v55 = *(v55 + 8);
  (v55)(&v46, v54);
  v22 = v57;
  v23 = v53;
  v53(v3, v57);
  v24 = v22;
  v25 = v51;
  v51(v3, v21, v24);
  MLHandActionClassifier.GraphCNNModel.poseMotion(_:)();
  v26 = v57;
  v23(v3, v57);
  v27 = v56;
  v25(v3, v56, v26);
  v28 = type metadata accessor for MLHandActionClassifier.Torso(0);
  v29 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.Torso and conformance MLHandActionClassifier.Torso, type metadata accessor for MLHandActionClassifier.Torso, &protocol conformance descriptor for MLHandActionClassifier.Torso);
  Layer.callAsFunction(_:)(v3, v28, v29);
  v30 = v57;
  v53(v3, v57);
  v49 = v3;
  v51(v3, v27, v30);
  v31 = v48;
  v32 = swift_allocObject(v48, 48, 7);
  v32[2] = 2;
  v32[3] = 4;
  v33 = v50;
  Tensor.shape.getter(v31, 48, v34);
  v35 = TensorShape.subscript.getter(0);
  v36 = v54;
  v37 = v55;
  (v55)(v33, v54);
  v32[4] = v35;
  v32[5] = -1;
  v38 = v36;
  TensorShape.init(_:)(v32);
  v39 = v56;
  v40 = v49;
  Tensor.reshaped(to:)(v33);
  v41 = v51;
  v37(v50, v38);
  v42 = v57;
  v53(v40, v57);
  v41(v40, v39, v42);
  if (!v58)
  {
    return (v55)(v52, v54);
  }

  v43 = v56;
  softmax(_:alongAxis:)(v40, 1);
  (v55)(v52, v54);
  v44 = v57;
  v53(v40, v57);
  return (v41)(v40, v43, v44);
}

uint64_t MLHandActionClassifier.GraphCNNModel.poseMotion(_:)()
{
  v75 = v0;
  v90 = type metadata accessor for TensorShape(0);
  v89 = *(v90 - 8);
  v2 = *(v89 + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v72 = &v72;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v78 = &v72;
  v7 = alloca(v2);
  v8 = alloca(v2);
  v82 = &v72;
  v88 = type metadata accessor for Tensor(0);
  v9 = *(v88 - 8);
  v10 = v9[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v79 = &v72;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v77 = &v72;
  v15 = alloca(v10);
  v16 = alloca(v10);
  v17 = alloca(v10);
  v18 = alloca(v10);
  Tensor.transposed(permutation:)(&outlined read-only object #0 of MLHandActionClassifier.GraphCNNModel.poseMotion(_:));
  v76 = type metadata accessor for BatchNorm(0);
  v81 = v1;
  Layer.callAsFunction(_:)(&v72, v76, &protocol witness table for BatchNorm);
  v19 = v9[1];
  v20 = v88;
  v19(&v72, v88);
  v73 = v9;
  v21 = v9[4];
  v21(&v72, &v72, v20);
  Tensor.transposed(permutation:)(&outlined read-only object #1 of MLHandActionClassifier.GraphCNNModel.poseMotion(_:));
  v22 = v88;
  v19(&v72, v88);
  v21(&v72, &v72, v22);
  Tensor.squeezingShape(at:)(&outlined read-only object #2 of MLHandActionClassifier.GraphCNNModel.poseMotion(_:));
  v23 = v88;
  v87 = v19;
  v19(&v72, v88);
  v85 = &v72;
  v83 = v21;
  v21(&v72, &v72, v23);
  v24 = v82;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v25 = v80;
  v26 = swift_allocObject(v80, 48, 7);
  *(v26 + 16) = 2;
  v74 = v26;
  *(v26 + 24) = 4;
  Tensor.shape.getter(v25, 48, v27);
  v86 = TensorShape.subscript.getter(0);
  v28 = *(v89 + 1);
  v29 = v90;
  v28(v24, v90);
  v30 = v78;
  v84 = &v72;
  Tensor.shape.getter(v24, v29, v31);
  v32 = TensorShape.subscript.getter(1);
  v33 = v30;
  v34 = v90;
  v35 = v28;
  v28(v33, v90);
  v38 = v32;
  v37 = v86 * v32;
  if (!is_mul_ok(v86, v38))
  {
    BUG();
  }

  v39 = v74;
  *(v74 + 32) = v37;
  v40 = v84;
  Tensor.shape.getter(v33, v34, v36);
  v41 = TensorShape.subscript.getter(2);
  v89 = v35;
  v35(v24, v90);
  *(v39 + 40) = v41;
  TensorShape.init(_:)(v39);
  v42 = v85;
  Tensor.reshaped(to:)(v24);
  v89(v24, v90);
  v43 = v83;
  v44 = v88;
  v87(v40, v88);
  v43(v40, v42, v44);
  v86 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v45 = type metadata accessor for Dense(0);
  Layer.callAsFunction(_:)(v40, v45, &protocol witness table for Dense);
  v87(v40, v44);
  v43(v40, v42, v44);
  (v73[2])(v79, v40, v44);
  v46 = v80;
  v47 = swift_allocObject(v80, 56, 7);
  v47[2] = 3;
  v47[3] = 6;
  v48 = v72;
  Tensor.shape.getter(v46, 56, v49);
  v50 = TensorShape.subscript.getter(0);
  v51 = v90;
  v52 = v89;
  v89(v48, v90);
  v53 = *(v81 + *(v86 + 40));
  if (!v53)
  {
    BUG();
  }

  if (__OFSUB__(-v50, 1) && v53 == -1)
  {
    BUG();
  }

  v47[4] = v50 / v53;
  v47[5] = v53;
  v54 = v82;
  Tensor.shape.getter(v48, v51, v50 % v53);
  v55 = TensorShape.subscript.getter(1);
  v56 = v90;
  v52(v54, v90);
  v47[6] = v55;
  TensorShape.init(_:)(v47);
  v57 = v77;
  v58 = v79;
  Tensor.reshaped(to:)(v54);
  v52(v54, v56);
  v59 = v58;
  v60 = v88;
  v61 = v87;
  v87(v59, v88);
  v62 = v84;
  v61(v84, v60);
  v83(v62, v57, v60);
  Tensor.shape.getter(v62, v57, v63);
  v64 = swift_allocObject(v80, 64, 7);
  v64[2] = 4;
  v64[3] = 8;
  v64[4] = TensorShape.subscript.getter(0);
  v64[5] = TensorShape.subscript.getter(1);
  v64[6] = TensorShape.subscript.getter(2) / 16;
  v64[7] = 16;
  v65 = v78;
  TensorShape.init(_:)(v64);
  Tensor.reshaped(to:)(v65);
  v89(v65, v90);
  v66 = v88;
  v67 = v87;
  v87(v62, v88);
  v68 = v83;
  v83(v62, v85, v66);
  Tensor.transposed(permutation:)(&outlined read-only object #3 of MLHandActionClassifier.GraphCNNModel.poseMotion(_:));
  v67(v62, v66);
  v69 = v85;
  v68(v62, v85, v66);
  Layer.callAsFunction(_:)(v62, v76, &protocol witness table for BatchNorm);
  v70 = v87;
  v87(v62, v66);
  v68(v62, v69, v66);
  relu(_:)(v62);
  v89(v82, v90);
  return v70(v62, v66);
}

uint64_t MLHandActionClassifier.Torso.forward(_:)(uint64_t a1)
{
  v19 = v2;
  v18 = a1;
  v16[1] = v1;
  v17 = type metadata accessor for Tensor(0);
  v3 = *(*(v17 - 8) + 64);
  v4 = *(v17 - 8);
  v5 = alloca(v3);
  v6 = alloca(v3);
  v7 = alloca(v3);
  v8 = alloca(v3);
  v9 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v10 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.SingleStreamBlock and conformance MLHandActionClassifier.SingleStreamBlock, type metadata accessor for MLHandActionClassifier.SingleStreamBlock, &protocol conformance descriptor for MLHandActionClassifier.SingleStreamBlock);
  Layer.callAsFunction(_:)(v18, v9, v10);
  Layer.callAsFunction(_:)(v16, &type metadata for GlobalAveragePool2D, &protocol witness table for GlobalAveragePool2D);
  v11 = v4;
  v12 = *(v4 + 8);
  v13 = v17;
  v12(v16, v17);
  (*(v11 + 32))(v16, v16, v13);
  type metadata accessor for MLHandActionClassifier.Torso(0);
  v14 = type metadata accessor for Dense(0);
  Layer.callAsFunction(_:)(v16, v14, &protocol witness table for Dense);
  return (v12)(v16, v13);
}

uint64_t static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v28 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v29 = v26;
  if (a1 + 0x4000000000000000 < 0)
  {
    BUG();
  }

  v35 = v9;
  v13 = type metadata accessor for ParameterInitializer(0);
  v34 = a2;
  v32 = v13;
  v31 = type metadata accessor for ComputeDevice(0);
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v31);
  v14 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v26);
  v30 = a3;
  v15 = v14;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &demangling cache variable for type metadata for ComputeDevice?);
  v16 = v29;
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(2 * a1, 1, 1, 1, 1, 0, 0, 1, 1, 1, v15, 0);
  AveragePool2D.init(kernelSize:stride:padding:countIncludesPadding:)(1, 3, 1, 1, 0, 0, 1, 1);
  v17 = *(v35 + 20);
  *(v16 + v17 + 48) = v27;
  v18 = v26[0];
  v19 = v26[1];
  *(v16 + v17 + 32) = v26[2];
  *(v16 + v17 + 16) = v19;
  *(v16 + v17) = v18;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v31);
  v20 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v26);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &demangling cache variable for type metadata for ComputeDevice?);
  v21 = v34;
  v22 = v30;
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(v34, 9, 1, v30, v33, 4, 0, 1, 1, 1, v20, 0);
  v23 = static ParameterInitializer.zeros.getter(v21);
  v24 = static ParameterInitializer.ones.getter();
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v23, v24, 0.1, 0.0000099999997);
  Dropout.init(probability:seed:)(0, 1, 0.2);
  return _s8CreateML22MLHandActionClassifierV24DownsampledResidualLayerV_11filterCount6strideAEy_xGx_S2i1y_Si1xttcfCAC08InvertedG0V_Tt4g5(v16, v34, v22, v33);
}

uint64_t MLHandActionClassifier.SingleStreamBlock.forward(_:)(uint64_t a1)
{
  v39 = a1;
  v35[0] = v1;
  v48 = type metadata accessor for Tensor(0);
  v50 = *(v48 - 8);
  v3 = *(v50 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = alloca(v3);
  v7 = alloca(v3);
  v46 = v35;
  v8 = alloca(v3);
  v9 = alloca(v3);
  v42 = v35;
  v10 = alloca(v3);
  v11 = alloca(v3);
  v41 = v35;
  v12 = alloca(v3);
  v13 = alloca(v3);
  v37 = v35;
  v14 = alloca(v3);
  v15 = alloca(v3);
  v36 = v35;
  v16 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v35[1] = v2 + v16[10];
  v38 = v2 + v16[9];
  v40 = v2 + v16[8];
  v43 = v2 + v16[7];
  v44 = v2 + v16[6];
  v45 = v2 + v16[5];
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v47 = v17;
  v18 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual> and conformance MLHandActionClassifier.DownsampledResidualLayer<A>, &demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>, &protocol conformance descriptor for MLHandActionClassifier.DownsampledResidualLayer<A>);
  Layer.callAsFunction(_:)(v39, v17, v18);
  v19 = v46;
  v49 = v18;
  Layer.callAsFunction(_:)(v35, v17, v18);
  v50 = *(v50 + 8);
  v20 = v48;
  (v50)(v35, v48);
  v21 = v42;
  v22 = v19;
  v23 = v47;
  Layer.callAsFunction(_:)(v22, v47, v18);
  v24 = v50;
  (v50)(v46, v20);
  v25 = v41;
  Layer.callAsFunction(_:)(v21, v23, v49);
  v26 = v48;
  v24(v21, v48);
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.ResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v28 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLHandActionClassifier.ResidualLayer<MLHandActionClassifier.InvertedResidual> and conformance MLHandActionClassifier.ResidualLayer<A>, &demangling cache variable for type metadata for MLHandActionClassifier.ResidualLayer<MLHandActionClassifier.InvertedResidual>, &protocol conformance descriptor for MLHandActionClassifier.ResidualLayer<A>);
  v29 = v37;
  Layer.callAsFunction(_:)(v25, v27, v28);
  v24(v25, v26);
  v30 = v36;
  v31 = v47;
  Layer.callAsFunction(_:)(v29, v47, v49);
  v32 = v29;
  v33 = v48;
  v24(v32, v48);
  Layer.callAsFunction(_:)(v30, v31, v49);
  return (v24)(v30, v33);
}

uint64_t _s8CreateML22MLHandActionClassifierV24DownsampledResidualLayerV_11filterCount6strideAEy_xGx_S2i1y_Si1xttcfCAC08InvertedG0V_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v16 = a3;
  v18 = a2;
  v6 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLTrainingSessionParameters(a1, v6, type metadata accessor for MLHandActionClassifier.InvertedResidual);
  type metadata accessor for ParameterInitializer(0);
  v10 = type metadata accessor for ComputeDevice(0);
  __swift_storeEnumTagSinglePayload(&v16, 1, 1, v10);
  v11 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, &v16);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v16, &demangling cache variable for type metadata for ComputeDevice?);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v12 = v18;
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(v18, 1, 1, v16, v17, 0, 0, 1, 1, 1, v11, 0);
  v13 = static ParameterInitializer.zeros.getter(v12);
  v14 = static ParameterInitializer.ones.getter();
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v13, v14, 0.1, 0.0000099999997);
  return outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLHandActionClassifier.InvertedResidual);
}

uint64_t MLHandActionClassifier.InvertedResidual.forward(_:)(uint64_t a1)
{
  v21 = v1;
  v23 = type metadata accessor for Tensor(0);
  v3 = *(v23 - 8);
  v4 = v3[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v22 = type metadata accessor for Conv2D(0);
  Layer.callAsFunction(_:)(a1, v22, &protocol witness table for Conv2D);
  v26 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v9 = *(v26 + 20);
  v25 = v2;
  v10 = *(v2 + v9 + 48);
  v19[0] = *(v2 + v9);
  v19[1] = *(v2 + v9 + 16);
  v19[2] = *(v2 + v9 + 32);
  v20 = v10;
  Layer.callAsFunction(_:)(v19, &type metadata for AveragePool2D, &protocol witness table for AveragePool2D);
  v27 = v3[1];
  v11 = v23;
  v27(v19, v23);
  v24 = v3[4];
  v24(v19, v19, v11);
  Layer.callAsFunction(_:)(v19, v22, &protocol witness table for Conv2D);
  v12 = v11;
  v13 = v11;
  v14 = v27;
  v27(v19, v13);
  v24(v19, v19, v12);
  v15 = type metadata accessor for BatchNorm(0);
  Layer.callAsFunction(_:)(v19, v15, &protocol witness table for BatchNorm);
  v16 = v23;
  v14(v19, v23);
  v24(v19, v19, v16);
  v17 = type metadata accessor for Dropout(0);
  Layer.callAsFunction(_:)(v19, v17, &protocol witness table for Dropout);
  return (v27)(v19, v16);
}

uint64_t MLHandActionClassifier.ResidualLayer.forward(_:)(uint64_t a1, uint64_t a2)
{
  v8 = v2;
  v3 = type metadata accessor for Tensor(0);
  v9 = *(v3 - 8);
  v4 = *(v9 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  Layer.callAsFunction(_:)(a1, *(a2 + 16), *(a2 + 24));
  static Tensor.+= infix(_:_:)(&v8, a1);
  relu(_:)(&v8);
  return (*(v9 + 8))(&v8, v3);
}

uint64_t MLHandActionClassifier.DownsampledResidualLayer.forward(_:)(uint64_t a1, uint64_t a2)
{
  v17 = v2;
  v18 = type metadata accessor for Tensor(0);
  v19 = *(v18 - 8);
  v3 = *(v19 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = alloca(v3);
  v7 = alloca(v3);
  v21 = &v17;
  v8 = alloca(v3);
  v9 = alloca(v3);
  v20 = &v17;
  Layer.callAsFunction(_:)(a1, *(a2 + 16), *(a2 + 24));
  v10 = type metadata accessor for Conv2D(0);
  Layer.callAsFunction(_:)(a1, v10, &protocol witness table for Conv2D);
  v11 = type metadata accessor for BatchNorm(0);
  v12 = v21;
  Layer.callAsFunction(_:)(&v17, v11, &protocol witness table for BatchNorm);
  v13 = *(v19 + 8);
  v14 = v18;
  v13(&v17, v18);
  v15 = v20;
  static Tensor.+= infix(_:_:)(v20, v12);
  v13(v12, v14);
  relu(_:)(v15);
  return (v13)(v15, v14);
}

void *specialized _ModelCheckpoint<>.trainableSublayers(model:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t a4)
{
  v6 = a2(0);
  v7 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a3, a2, a4);
  v8 = (&dword_0 + 1);
  v29 = Layer.sublayers(recursively:)(1, v6, v7);
  v30 = dispatch thunk of _AnySequenceBox._makeIterator()(1);
  v31 = _swiftEmptyArrayStorage;
  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()(v8);
    if (!v25)
    {
      break;
    }

    outlined init with take of TabularRegressionTask(&v24, v21);
    outlined init with copy of TabularRegressionTask(v21, v20);
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _LayerDictionaryRepresentable);
    if (swift_dynamicCast(v19, v20, v9, v10, 0))
    {
      outlined init with copy of TabularRegressionTask(v21, &v26);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      v11 = v22;
      v12 = v23;
      __swift_project_boxed_opaque_existential_0Tm(v21, v22);
      v13 = Layer.parameters(recursively:)(0, v11, v12);
      v14 = *(v13 + 16);
      v13;
      if (v14)
      {
        outlined init with copy of TabularRegressionTask(v21, &v26);
      }

      else
      {
        v27 = 0;
        v26 = 0;
        v28 = 0;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    if (*(&v27 + 1))
    {
      outlined init with take of TabularRegressionTask(&v26, v18);
      outlined init with take of TabularRegressionTask(v18, &v26);
      if (!swift_isUniquelyReferenced_nonNull_native(v31))
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
      }

      v15 = v31[2];
      if (v31[3] >> 1 <= v15)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31[3] >= 2uLL, v15 + 1, 1, v31);
      }

      v16 = v31;
      v31[2] = v15 + 1;
      v8 = &v26;
      outlined init with take of TabularRegressionTask(&v26, &v16[5 * v15 + 4]);
    }

    else
    {
      v8 = &v26;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v26, &demangling cache variable for type metadata for Layer?);
    }
  }

  return v31;
}

uint64_t specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void), double xmm0_8_0, double xmm1_8_0, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t (*)(void)), void *a9, uint64_t *a10, uint64_t (*a11)(uint64_t), uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a14)(uint64_t, uint64_t))
{
  v141 = a6;
  v142 = v16;
  v137 = a5;
  v140._countAndFlagsBits = a3;
  v122 = a2;
  v129 = a1;
  v123 = type metadata accessor for LayerState(0);
  v116 = *(v123 - 8);
  v19 = *(v116 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v118 = &v114;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v117 = &v114;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v126 = &v114;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v143 = &v114;
  v133 = type metadata accessor for Tensor(0);
  v125 = *(v133 - 8);
  v29 = *(v125 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v115 = &v114;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v124 = &v114;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v131 = &v114;
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v130 = &v114;
  v121 = type metadata accessor for Parameter(0);
  v144 = *(v121 - 8);
  v39 = *(v144 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v114 = &v114;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v134 = &v114;
  v138 = type metadata accessor for BatchNorm(0);
  v44 = *(v138 - 8);
  v45 = *(v44 + 64);
  v46 = alloca(v45);
  v47 = alloca(v45);
  v141 = v141();
  v132 = v17;
  v48 = a4;
  v49 = a7();
  v50 = v137;
  v51 = v142;
  static BatchNorm.loadLayer(from:layerName:)(v137, v140._countAndFlagsBits, v48, xmm0_8_0, xmm1_8_0);
  v142 = v51;
  if (v51)
  {
    v141;
    return v49;
  }

  v136 = v49;
  v135 = v48;
  v145 = &v114;
  v139 = v44;
  v53 = v134;
  BatchNorm.$offset.getter();
  v54 = Parameter.id.getter(v50);
  v55 = *(v144 + 8);
  v55(v53, v121);
  v56 = v54;
  v57 = v141;
  v58 = a8(v56, v141);
  if (!v58)
  {
    v136;
    v57;
    v128._countAndFlagsBits = 0;
    v128._object = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    v128._object;
    v128._countAndFlagsBits = 0xD000000000000019;
    v72._countAndFlagsBits = v140._countAndFlagsBits;
    v72._object = v135;
    String.append(_:)(v72);
    v72._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v72);
    v140 = v128;
    v73 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v73, 0, 0);
    *v74 = v140;
    *(v74 + 16) = 0;
    *(v74 + 32) = 0;
    *(v74 + 48) = 2;
    swift_willThrow();
    goto LABEL_12;
  }

  v119 = v55;
  v59 = v58;
  v144 = v58;
  BatchNorm.offset.getter();
  v60 = *a9 + v132;
  swift_beginAccess(v60, &v128, 33, 0);
  v61 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a10, a11, a12);
  v62 = v130;
  v127 = v61;
  v132 = v60;
  Layer.updateValue<A>(_:for:)(v131, v59, v61, &protocol witness table for Parameter);
  v63 = *(v125 + 8);
  v63(v131, v133);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for Tensor?);
  swift_endAccess(&v128);
  v64 = v124;
  BatchNorm.offset.getter();
  v65 = v143;
  Tensor.shape.getter(&v128, &demangling cache variable for type metadata for Tensor?, v66);
  v134 = v63;
  v63(v64, v133);
  v124 = type metadata accessor for TensorShape(0);
  __swift_storeEnumTagSinglePayload(v65, 0, 1, v124);
  v125 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v67 = swift_allocObject(v125, 72, 7);
  v67[2] = 1;
  v67[3] = 2;
  v67[7] = &type metadata for String;
  v120 = lazy protocol witness table accessor for type String and conformance String();
  v67[8] = v120;
  v67[4] = v140._countAndFlagsBits;
  v67[5] = v135;

  v68 = String.init(format:_:)(0x657366666F2E4025, 0xE900000000000074, v67);
  v70 = v69;
  v71 = v142;
  a13(v144, v65, v137, v68, v69);
  if (v71)
  {

    v136;
    v141;
    v70;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143, &demangling cache variable for type metadata for TensorShape?);
LABEL_12:
    v92 = v145;
    v93 = v138;
    return (*(v139 + 8))(v92, v93);
  }

  v142 = 0;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143, &demangling cache variable for type metadata for TensorShape?);
  v70;
  v75 = v114;
  BatchNorm.$scale.getter(v70, &demangling cache variable for type metadata for TensorShape?);
  v76 = Parameter.id.getter(v70);
  v119(v75, v121);
  LOBYTE(v75) = v141;
  v77 = a8(v76, v141);
  v75;
  if (!v77)
  {
    v136;
    v128._countAndFlagsBits = 0;
    v128._object = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v128._object;
    v128._countAndFlagsBits = 0xD000000000000019;
    v94._countAndFlagsBits = v140._countAndFlagsBits;
    v94._object = v135;
    String.append(_:)(v94);
    v94._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v94);
    v140 = v128;
    v95 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v95, 0, 0);
    *v96 = v140;
    *(v96 + 16) = 0;
    *(v96 + 32) = 0;
    *(v96 + 48) = 2;
    swift_willThrow();
LABEL_11:

    goto LABEL_12;
  }

  v78 = v131;
  BatchNorm.scale.getter();
  swift_beginAccess(v132, &v128, 33, 0);
  v79 = v77;
  v143 = v77;
  v80 = v130;
  Layer.updateValue<A>(_:for:)(v78, v79, v127, &protocol witness table for Parameter);
  v81 = v78;
  v82 = v133;
  (v134)(v81, v133);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v80, &demangling cache variable for type metadata for Tensor?);
  swift_endAccess(&v128);
  v83 = v115;
  BatchNorm.scale.getter();
  v84 = v126;
  Tensor.shape.getter(&v128, &demangling cache variable for type metadata for Tensor?, v85);
  (v134)(v83, v82);
  __swift_storeEnumTagSinglePayload(v84, 0, 1, v124);
  v86 = swift_allocObject(v125, 72, 7);
  v86[2] = 1;
  v86[3] = 2;
  v86[7] = &type metadata for String;
  v86[8] = v120;
  v86[4] = v140._countAndFlagsBits;
  v86[5] = v135;

  v87 = String.init(format:_:)(0x656C6163732E4025, 0xE800000000000000, v86);
  v89 = v88;
  v90 = v142;
  a13(v143, v84, v137, v87, v88);
  v91 = v138;
  if (v90)
  {

    v136;
    v89;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v126, &demangling cache variable for type metadata for TensorShape?);
    v92 = v145;
    v93 = v91;
    return (*(v139 + 8))(v92, v93);
  }

  v142 = 0;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v126, &demangling cache variable for type metadata for TensorShape?);
  v89;
  v97 = v117;
  BatchNorm.$runningMean.getter(v89, &demangling cache variable for type metadata for TensorShape?);
  v98 = LayerState.id.getter();
  v99 = *(v116 + 8);
  (v99)(v97, v123);
  v100 = v98;
  v101 = v136;
  v137 = a14(v100, v136);
  if (!v137)
  {
    v101;
    v128._countAndFlagsBits = 0;
    v128._object = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v108._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v108);
    v108._countAndFlagsBits = v140._countAndFlagsBits;
    v108._object = v135;
    String.append(_:)(v108);
    v108._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v108);
    v140 = v128;
    v109 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v109, 0, 0);
    *v110 = v140;
    *(v110 + 16) = 0;
    *(v110 + 32) = 0;
    *(v110 + 48) = 2;
    swift_willThrow();

    goto LABEL_11;
  }

  v102 = v131;
  v141 = v99;
  BatchNorm.runningMean.getter();
  swift_beginAccess(v132, &v128, 33, 0);
  v103 = v130;
  Layer.updateValue<A>(_:for:)(v102, v137, v127, &protocol witness table for LayerState);
  (v134)(v102, v133);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v103, &demangling cache variable for type metadata for Tensor?);
  swift_endAccess(&v128);
  v104 = v118;
  BatchNorm.$runningVariance.getter(&v128, &demangling cache variable for type metadata for Tensor?);
  v105 = LayerState.id.getter();
  (v141)(v104, v123);
  LOBYTE(v104) = v136;
  v106 = a14(v105, v136);
  v104;
  if (!v106)
  {
    v128._countAndFlagsBits = 0;
    v128._object = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v111._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v111);
    v111._countAndFlagsBits = v140._countAndFlagsBits;
    v111._object = v135;
    String.append(_:)(v111);
    v111._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v111);
    v140 = v128;
    v112 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v112, 0, 0);
    *v113 = v140;
    *(v113 + 16) = 0;
    *(v113 + 32) = 0;
    *(v113 + 48) = 2;
    swift_willThrow();

    goto LABEL_11;
  }

  BatchNorm.runningVariance.getter();
  swift_beginAccess(v132, &v128, 33, 0);
  v107 = v130;
  Layer.updateValue<A>(_:for:)(v102, v106, v127, &protocol witness table for LayerState);
  (v134)(v102, v133);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v107, &demangling cache variable for type metadata for Tensor?);
  swift_endAccess(&v128);

  return (*(v139 + 8))(v145, v138);
}

uint64_t specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v109 = v7;
  v98 = a5;
  *&v103 = a4;
  v104._countAndFlagsBits = a3;
  v96 = a2;
  v93 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v87 = &v85;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v88 = &v85;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v85 = &v85;
  v104._object = type metadata accessor for Tensor(0);
  v95 = *(v104._object - 1);
  v17 = *(v95 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v105 = &v85;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v100 = &v85;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v101 = &v85;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v86 = &v85;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v97 = &v85;
  v94 = type metadata accessor for Parameter(0);
  v110 = *(v94 - 8);
  v29 = *(v110 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v106 = &v85;
  v32 = type metadata accessor for Conv2D(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v99 = v8;
  v37 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v38 = v98;
  v39 = v109;
  static Conv2D.loadLayer(from:layerName:)(v98, v104._countAndFlagsBits, v103, a6, a7);
  v109 = v39;
  if (v39)
  {
    return v37;
  }

  v111 = &v85;
  v108 = v32;
  v107 = v33;
  v41 = v106;
  v42 = v37;
  Conv2D.$weight.getter();
  v43 = Parameter.id.getter(v38);
  v44 = *(v110 + 8);
  v44(v41, v94);
  v45 = specialized Dictionary.subscript.getter(v43, v42);
  if (v45)
  {
    v89 = v44;
    v102 = v42;
    v46 = v101;
    v47 = v45;
    Conv2D.weight.getter(v43, v42);
    v48 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v99;
    swift_beginAccess(OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v99, &v92, 33, 0);
    v49 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v50 = v97;
    v90 = v49;
    v99 = v48;
    Layer.updateValue<A>(_:for:)(v46, v47, v49, &protocol witness table for Parameter);
    v106 = *(v95 + 8);
    v51 = v46;
    v110 = v47;
    object = v104._object;
    (v106)(v51, v104._object);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v92);
    v53 = v100;
    Conv2D.weight.getter(&v92, &demangling cache variable for type metadata for Tensor?);
    v54 = v85;
    Tensor.shape.getter(&v92, &demangling cache variable for type metadata for Tensor?, v55);
    (v106)(v53, object);
    v100 = type metadata accessor for TensorShape(0);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v100);
    v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v56 = swift_allocObject(v101, 72, 7);
    v56[2] = 1;
    v56[3] = 2;
    v56[7] = &type metadata for String;
    v57 = lazy protocol witness table accessor for type String and conformance String();
    v56[8] = v57;
    v56[4] = v104._countAndFlagsBits;
    v56[5] = v103;

    v58 = String.init(format:_:)(0x68676965772E4025, 0xE900000000000074, v56);
    v60 = v59;
    v61 = v109;
    specialized Adam.updateOptimizerState(for:shape:using:name:)(v110, v54, v98, v58, v59);
    if (v61)
    {
      v62 = v107;
      v102;

      v60;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
      return (*(v62 + 8))(v111, v108);
    }

    v91 = v57;
    v66 = v99;
    v109 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
    v60;
    v67 = v86;
    v68 = v111;
    Conv2D.bias.getter();
    v69 = v104._object;
    if (__swift_getEnumTagSinglePayload(v67, 1, v104._object) == 1)
    {
      (*(v107 + 8))(v68, v108);
      v102;

      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for Tensor?);
    }

    (*(v95 + 32))(v105, v67, v69);
    v70 = v87;
    Conv2D.$bias.getter();
    v71 = v94;
    if (__swift_getEnumTagSinglePayload(v70, 1, v94) == 1)
    {
      v102;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for Parameter?);
      v72 = v103;
    }

    else
    {
      v73 = Parameter.id.getter(v70);
      v89(v70, v71);
      v74 = v102;
      v75 = specialized Dictionary.subscript.getter(v73, v102);
      v74;
      v72 = v103;
      if (v75)
      {
        swift_beginAccess(v66, &v92, 33, 0);
        v76 = v97;
        Layer.updateValue<A>(_:for:)(v105, v75, v90, &protocol witness table for Parameter);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for Tensor?);
        swift_endAccess(&v92);
        v77 = v88;
        Tensor.shape.getter(&v92, &demangling cache variable for type metadata for Tensor?, v78);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v100);
        v79 = swift_allocObject(v101, 72, 7);
        v79[2] = 1;
        v79[3] = 2;
        v79[7] = &type metadata for String;
        v79[8] = v91;
        v79[4] = v104._countAndFlagsBits;
        v79[5] = v103;

        v80 = String.init(format:_:)(0x736169622E4025, 0xE700000000000000, v79);
        LOBYTE(v79) = v81;
        specialized Adam.updateOptimizerState(for:shape:using:name:)(v75, v77, v98, v80, v81);

        v79;

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, &demangling cache variable for type metadata for TensorShape?);
LABEL_14:
        (v106)(v105, v104._object);
        return (*(v107 + 8))(v111, v108);
      }
    }

    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    SBYTE8(v92);
    *&v92 = 0xD000000000000019;
    v82._countAndFlagsBits = v104._countAndFlagsBits;
    v82._object = v72;
    String.append(_:)(v82);
    v82._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v82);
    v103 = v92;
    v83 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v83, 0, 0);
    *v84 = v103;
    *(v84 + 16) = 0;
    *(v84 + 32) = 0;
    *(v84 + 48) = 2;
    swift_willThrow();

    goto LABEL_14;
  }

  v42;
  *&v92 = 0;
  *(&v92 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  SBYTE8(v92);
  *&v92 = 0xD000000000000019;
  v63._countAndFlagsBits = v104._countAndFlagsBits;
  v63._object = v103;
  String.append(_:)(v63);
  v63._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v63);
  v103 = v92;
  v64 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v64, 0, 0);
  *v65 = v103;
  *(v65 + 16) = 0;
  *(v65 + 32) = 0;
  *(v65 + 48) = 2;
  swift_willThrow();
  return (*(v107 + 8))(v111, v108);
}

{
  v109 = v7;
  v98 = a5;
  *&v103 = a4;
  v104._countAndFlagsBits = a3;
  v96 = a2;
  v93 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v87 = &v85;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v88 = &v85;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v85 = &v85;
  v104._object = type metadata accessor for Tensor(0);
  v95 = *(v104._object - 1);
  v17 = *(v95 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v105 = &v85;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v100 = &v85;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v101 = &v85;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v86 = &v85;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v97 = &v85;
  v94 = type metadata accessor for Parameter(0);
  v110 = *(v94 - 8);
  v29 = *(v110 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v106 = &v85;
  v32 = type metadata accessor for Conv2D(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v99 = v8;
  v37 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v38 = v98;
  v39 = v109;
  static Conv2D.loadLayer(from:layerName:)(v98, v104._countAndFlagsBits, v103, a6, a7);
  v109 = v39;
  if (v39)
  {
    return v37;
  }

  v111 = &v85;
  v108 = v32;
  v107 = v33;
  v41 = v106;
  v42 = v37;
  Conv2D.$weight.getter();
  v43 = Parameter.id.getter(v38);
  v44 = *(v110 + 8);
  v44(v41, v94);
  v45 = specialized Dictionary.subscript.getter(v43, v42);
  if (v45)
  {
    v89 = v44;
    v102 = v42;
    v46 = v101;
    v47 = v45;
    Conv2D.weight.getter(v43, v42);
    v48 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v99;
    swift_beginAccess(OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v99, &v92, 33, 0);
    v49 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
    v50 = v97;
    v90 = v49;
    v99 = v48;
    Layer.updateValue<A>(_:for:)(v46, v47, v49, &protocol witness table for Parameter);
    v106 = *(v95 + 8);
    v51 = v46;
    v110 = v47;
    object = v104._object;
    (v106)(v51, v104._object);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v92);
    v53 = v100;
    Conv2D.weight.getter(&v92, &demangling cache variable for type metadata for Tensor?);
    v54 = v85;
    Tensor.shape.getter(&v92, &demangling cache variable for type metadata for Tensor?, v55);
    (v106)(v53, object);
    v100 = type metadata accessor for TensorShape(0);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v100);
    v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v56 = swift_allocObject(v101, 72, 7);
    v56[2] = 1;
    v56[3] = 2;
    v56[7] = &type metadata for String;
    v57 = lazy protocol witness table accessor for type String and conformance String();
    v56[8] = v57;
    v56[4] = v104._countAndFlagsBits;
    v56[5] = v103;

    v58 = String.init(format:_:)(0x68676965772E4025, 0xE900000000000074, v56);
    v60 = v59;
    v61 = v109;
    specialized SGD.updateOptimizerState(for:shape:using:name:)(v110, v54, v98, v58, v59, a6, a7);
    if (v61)
    {
      v62 = v107;
      v102;

      v60;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
      return (*(v62 + 8))(v111, v108);
    }

    v91 = v57;
    v66 = v99;
    v109 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
    v60;
    v67 = v86;
    v68 = v111;
    Conv2D.bias.getter();
    v69 = v104._object;
    if (__swift_getEnumTagSinglePayload(v67, 1, v104._object) == 1)
    {
      (*(v107 + 8))(v68, v108);
      v102;

      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for Tensor?);
    }

    (*(v95 + 32))(v105, v67, v69);
    v70 = v87;
    Conv2D.$bias.getter();
    v71 = v94;
    if (__swift_getEnumTagSinglePayload(v70, 1, v94) == 1)
    {
      v102;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for Parameter?);
      v72 = v103;
    }

    else
    {
      v73 = Parameter.id.getter(v70);
      v89(v70, v71);
      v74 = v102;
      v75 = specialized Dictionary.subscript.getter(v73, v102);
      v74;
      v72 = v103;
      if (v75)
      {
        swift_beginAccess(v66, &v92, 33, 0);
        v76 = v97;
        Layer.updateValue<A>(_:for:)(v105, v75, v90, &protocol witness table for Parameter);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for Tensor?);
        swift_endAccess(&v92);
        v77 = v88;
        Tensor.shape.getter(&v92, &demangling cache variable for type metadata for Tensor?, v78);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v100);
        v79 = swift_allocObject(v101, 72, 7);
        v79[2] = 1;
        v79[3] = 2;
        v79[7] = &type metadata for String;
        v79[8] = v91;
        v79[4] = v104._countAndFlagsBits;
        v79[5] = v103;

        v80 = String.init(format:_:)(0x736169622E4025, 0xE700000000000000, v79);
        LOBYTE(v79) = v81;
        specialized SGD.updateOptimizerState(for:shape:using:name:)(v75, v77, v98, v80, v81, a6, a7);

        v79;

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, &demangling cache variable for type metadata for TensorShape?);
LABEL_14:
        (v106)(v105, v104._object);
        return (*(v107 + 8))(v111, v108);
      }
    }

    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    SBYTE8(v92);
    *&v92 = 0xD000000000000019;
    v82._countAndFlagsBits = v104._countAndFlagsBits;
    v82._object = v72;
    String.append(_:)(v82);
    v82._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v82);
    v103 = v92;
    v83 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v83, 0, 0);
    *v84 = v103;
    *(v84 + 16) = 0;
    *(v84 + 32) = 0;
    *(v84 + 48) = 2;
    swift_willThrow();

    goto LABEL_14;
  }

  v42;
  *&v92 = 0;
  *(&v92 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  SBYTE8(v92);
  *&v92 = 0xD000000000000019;
  v63._countAndFlagsBits = v104._countAndFlagsBits;
  v63._object = v103;
  String.append(_:)(v63);
  v63._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v63);
  v103 = v92;
  v64 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v64, 0, 0);
  *v65 = v103;
  *(v65 + 16) = 0;
  *(v65 + 32) = 0;
  *(v65 + 48) = 2;
  swift_willThrow();
  return (*(v107 + 8))(v111, v108);
}

{
  v109 = v7;
  v98 = a5;
  *&v103 = a4;
  v104._countAndFlagsBits = a3;
  v96 = a2;
  v93 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v87 = &v85;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v88 = &v85;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v85 = &v85;
  v104._object = type metadata accessor for Tensor(0);
  v95 = *(v104._object - 1);
  v17 = *(v95 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v105 = &v85;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v100 = &v85;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v101 = &v85;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v86 = &v85;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v97 = &v85;
  v94 = type metadata accessor for Parameter(0);
  v110 = *(v94 - 8);
  v29 = *(v110 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v106 = &v85;
  v32 = type metadata accessor for Dense(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v99 = v8;
  v37 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v38 = v98;
  v39 = v109;
  static Dense.loadLayer(from:layerName:)(v98, v104._countAndFlagsBits, v103, a6, a7);
  v109 = v39;
  if (v39)
  {
    return v37;
  }

  v111 = &v85;
  v108 = v32;
  v107 = v33;
  v41 = v106;
  v42 = v37;
  Dense.$weight.getter();
  v43 = Parameter.id.getter(v38);
  v44 = *(v110 + 8);
  v44(v41, v94);
  v45 = specialized Dictionary.subscript.getter(v43, v42);
  if (v45)
  {
    v89 = v44;
    v102 = v42;
    v46 = v101;
    v47 = v45;
    Dense.weight.getter(v43, v42);
    v48 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v99;
    swift_beginAccess(OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v99, &v92, 33, 0);
    v49 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v50 = v97;
    v90 = v49;
    v99 = v48;
    Layer.updateValue<A>(_:for:)(v46, v47, v49, &protocol witness table for Parameter);
    v106 = *(v95 + 8);
    v51 = v46;
    v110 = v47;
    object = v104._object;
    (v106)(v51, v104._object);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v92);
    v53 = v100;
    Dense.weight.getter(&v92, &demangling cache variable for type metadata for Tensor?);
    v54 = v85;
    Tensor.shape.getter(&v92, &demangling cache variable for type metadata for Tensor?, v55);
    (v106)(v53, object);
    v100 = type metadata accessor for TensorShape(0);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v100);
    v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v56 = swift_allocObject(v101, 72, 7);
    v56[2] = 1;
    v56[3] = 2;
    v56[7] = &type metadata for String;
    v57 = lazy protocol witness table accessor for type String and conformance String();
    v56[8] = v57;
    v56[4] = v104._countAndFlagsBits;
    v56[5] = v103;

    v58 = String.init(format:_:)(0x68676965772E4025, 0xE900000000000074, v56);
    v60 = v59;
    v61 = v109;
    specialized Adam.updateOptimizerState(for:shape:using:name:)(v110, v54, v98, v58, v59);
    if (v61)
    {
      v62 = v107;
      v102;

      v60;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
      return (*(v62 + 8))(v111, v108);
    }

    v91 = v57;
    v66 = v99;
    v109 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
    v60;
    v67 = v86;
    v68 = v111;
    Dense.bias.getter();
    v69 = v104._object;
    if (__swift_getEnumTagSinglePayload(v67, 1, v104._object) == 1)
    {
      (*(v107 + 8))(v68, v108);
      v102;

      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for Tensor?);
    }

    (*(v95 + 32))(v105, v67, v69);
    v70 = v87;
    Dense.$bias.getter();
    v71 = v94;
    if (__swift_getEnumTagSinglePayload(v70, 1, v94) == 1)
    {
      v102;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for Parameter?);
      v72 = v103;
    }

    else
    {
      v73 = Parameter.id.getter(v70);
      v89(v70, v71);
      v74 = v102;
      v75 = specialized Dictionary.subscript.getter(v73, v102);
      v74;
      v72 = v103;
      if (v75)
      {
        swift_beginAccess(v66, &v92, 33, 0);
        v76 = v97;
        Layer.updateValue<A>(_:for:)(v105, v75, v90, &protocol witness table for Parameter);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for Tensor?);
        swift_endAccess(&v92);
        v77 = v88;
        Tensor.shape.getter(&v92, &demangling cache variable for type metadata for Tensor?, v78);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v100);
        v79 = swift_allocObject(v101, 72, 7);
        v79[2] = 1;
        v79[3] = 2;
        v79[7] = &type metadata for String;
        v79[8] = v91;
        v79[4] = v104._countAndFlagsBits;
        v79[5] = v103;

        v80 = String.init(format:_:)(0x736169622E4025, 0xE700000000000000, v79);
        LOBYTE(v79) = v81;
        specialized Adam.updateOptimizerState(for:shape:using:name:)(v75, v77, v98, v80, v81);

        v79;

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, &demangling cache variable for type metadata for TensorShape?);
LABEL_14:
        (v106)(v105, v104._object);
        return (*(v107 + 8))(v111, v108);
      }
    }

    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    SBYTE8(v92);
    *&v92 = 0xD000000000000019;
    v82._countAndFlagsBits = v104._countAndFlagsBits;
    v82._object = v72;
    String.append(_:)(v82);
    v82._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v82);
    v103 = v92;
    v83 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v83, 0, 0);
    *v84 = v103;
    *(v84 + 16) = 0;
    *(v84 + 32) = 0;
    *(v84 + 48) = 2;
    swift_willThrow();

    goto LABEL_14;
  }

  v42;
  *&v92 = 0;
  *(&v92 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  SBYTE8(v92);
  *&v92 = 0xD000000000000019;
  v63._countAndFlagsBits = v104._countAndFlagsBits;
  v63._object = v103;
  String.append(_:)(v63);
  v63._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v63);
  v103 = v92;
  v64 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v64, 0, 0);
  *v65 = v103;
  *(v65 + 16) = 0;
  *(v65 + 32) = 0;
  *(v65 + 48) = 2;
  swift_willThrow();
  return (*(v107 + 8))(v111, v108);
}

{
  v109 = v7;
  v98 = a5;
  *&v103 = a4;
  v104._countAndFlagsBits = a3;
  v96 = a2;
  v93 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v87 = &v85;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v88 = &v85;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v85 = &v85;
  v104._object = type metadata accessor for Tensor(0);
  v95 = *(v104._object - 1);
  v17 = *(v95 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v105 = &v85;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v100 = &v85;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v101 = &v85;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v86 = &v85;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v97 = &v85;
  v94 = type metadata accessor for Parameter(0);
  v110 = *(v94 - 8);
  v29 = *(v110 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v106 = &v85;
  v32 = type metadata accessor for Dense(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v99 = v8;
  v37 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v38 = v98;
  v39 = v109;
  static Dense.loadLayer(from:layerName:)(v98, v104._countAndFlagsBits, v103, a6, a7);
  v109 = v39;
  if (v39)
  {
    return v37;
  }

  v111 = &v85;
  v108 = v32;
  v107 = v33;
  v41 = v106;
  v42 = v37;
  Dense.$weight.getter();
  v43 = Parameter.id.getter(v38);
  v44 = *(v110 + 8);
  v44(v41, v94);
  v45 = specialized Dictionary.subscript.getter(v43, v42);
  if (v45)
  {
    v89 = v44;
    v102 = v42;
    v46 = v101;
    v47 = v45;
    Dense.weight.getter(v43, v42);
    v48 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v99;
    swift_beginAccess(OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v99, &v92, 33, 0);
    v49 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
    v50 = v97;
    v90 = v49;
    v99 = v48;
    Layer.updateValue<A>(_:for:)(v46, v47, v49, &protocol witness table for Parameter);
    v106 = *(v95 + 8);
    v51 = v46;
    v110 = v47;
    object = v104._object;
    (v106)(v51, v104._object);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v92);
    v53 = v100;
    Dense.weight.getter(&v92, &demangling cache variable for type metadata for Tensor?);
    v54 = v85;
    Tensor.shape.getter(&v92, &demangling cache variable for type metadata for Tensor?, v55);
    (v106)(v53, object);
    v100 = type metadata accessor for TensorShape(0);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v100);
    v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v56 = swift_allocObject(v101, 72, 7);
    v56[2] = 1;
    v56[3] = 2;
    v56[7] = &type metadata for String;
    v57 = lazy protocol witness table accessor for type String and conformance String();
    v56[8] = v57;
    v56[4] = v104._countAndFlagsBits;
    v56[5] = v103;

    v58 = String.init(format:_:)(0x68676965772E4025, 0xE900000000000074, v56);
    v60 = v59;
    v61 = v109;
    specialized SGD.updateOptimizerState(for:shape:using:name:)(v110, v54, v98, v58, v59, a6, a7);
    if (v61)
    {
      v62 = v107;
      v102;

      v60;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
      return (*(v62 + 8))(v111, v108);
    }

    v91 = v57;
    v66 = v99;
    v109 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
    v60;
    v67 = v86;
    v68 = v111;
    Dense.bias.getter();
    v69 = v104._object;
    if (__swift_getEnumTagSinglePayload(v67, 1, v104._object) == 1)
    {
      (*(v107 + 8))(v68, v108);
      v102;

      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for Tensor?);
    }

    (*(v95 + 32))(v105, v67, v69);
    v70 = v87;
    Dense.$bias.getter();
    v71 = v94;
    if (__swift_getEnumTagSinglePayload(v70, 1, v94) == 1)
    {
      v102;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for Parameter?);
      v72 = v103;
    }

    else
    {
      v73 = Parameter.id.getter(v70);
      v89(v70, v71);
      v74 = v102;
      v75 = specialized Dictionary.subscript.getter(v73, v102);
      v74;
      v72 = v103;
      if (v75)
      {
        swift_beginAccess(v66, &v92, 33, 0);
        v76 = v97;
        Layer.updateValue<A>(_:for:)(v105, v75, v90, &protocol witness table for Parameter);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for Tensor?);
        swift_endAccess(&v92);
        v77 = v88;
        Tensor.shape.getter(&v92, &demangling cache variable for type metadata for Tensor?, v78);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v100);
        v79 = swift_allocObject(v101, 72, 7);
        v79[2] = 1;
        v79[3] = 2;
        v79[7] = &type metadata for String;
        v79[8] = v91;
        v79[4] = v104._countAndFlagsBits;
        v79[5] = v103;

        v80 = String.init(format:_:)(0x736169622E4025, 0xE700000000000000, v79);
        LOBYTE(v79) = v81;
        specialized SGD.updateOptimizerState(for:shape:using:name:)(v75, v77, v98, v80, v81, a6, a7);

        v79;

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, &demangling cache variable for type metadata for TensorShape?);
LABEL_14:
        (v106)(v105, v104._object);
        return (*(v107 + 8))(v111, v108);
      }
    }

    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    SBYTE8(v92);
    *&v92 = 0xD000000000000019;
    v82._countAndFlagsBits = v104._countAndFlagsBits;
    v82._object = v72;
    String.append(_:)(v82);
    v82._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v82);
    v103 = v92;
    v83 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v83, 0, 0);
    *v84 = v103;
    *(v84 + 16) = 0;
    *(v84 + 32) = 0;
    *(v84 + 48) = 2;
    swift_willThrow();

    goto LABEL_14;
  }

  v42;
  *&v92 = 0;
  *(&v92 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  SBYTE8(v92);
  *&v92 = 0xD000000000000019;
  v63._countAndFlagsBits = v104._countAndFlagsBits;
  v63._object = v103;
  String.append(_:)(v63);
  v63._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v63);
  v103 = v92;
  v64 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v64, 0, 0);
  *v65 = v103;
  *(v65 + 16) = 0;
  *(v65 + 32) = 0;
  *(v65 + 48) = 2;
  swift_willThrow();
  return (*(v107 + 8))(v111, v108);
}

uint64_t specialized _ModelCheckpoint<>.restoreGenericLayer<A, B>(_:optimizer:layerName:checkpointDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *&v92 = v5;
  v84 = a5;
  v86._object = a4;
  v87._countAndFlagsBits = a3;
  v77 = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v76 = &v66;
  v81 = type metadata accessor for MLActivityClassifier.Model(0);
  v10 = *(*(v81 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v82 = &v66;
  v73 = type metadata accessor for Parameter(0);
  v74 = *(v73 - 8);
  v13 = *(v74 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v75 = &v66;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v78 = &v66;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v71 = &v66;
  v89 = type metadata accessor for Tensor(0);
  v87._object = *(v89 - 8);
  v21 = *(v87._object + 8);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = type metadata accessor for LSTM(0);
  v72 = a1;
  v25 = Layer.namedParameterKeyPaths(recursively:)(1, v24, &protocol witness table for LSTM);
  if (!*(v25 + 16))
  {
    return v25;
  }

  v80 = *(v25 + 16);
  v90 = &v66;
  v26 = v6;
  v85 = v6 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
  swift_beginAccess(v6 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, v67, 0, 0);
  v91 = v25;
  v27 = (v25 + 48);
  v28 = v92;
  v29 = v89;
  v79 = v26;
  while (1)
  {
    *&v92 = v28;
    v30 = *(v27 - 2);
    v31 = *(v27 - 1);
    v70 = v27;
    v32 = *v27;

    v93 = v32;

    v33 = v71;
    v86._countAndFlagsBits = v30;
    v34._countAndFlagsBits = v30;
    v88 = v31;
    v34._object = v31;
    v35 = v92;
    Dictionary<>.tensor(forKey:prefix:)(v34, v87._countAndFlagsBits, v86._object, v84);
    if (v35)
    {
      v88;

      return v91;
    }

    if (__swift_getEnumTagSinglePayload(v33, 1, v29) == 1)
    {
      v91;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, &demangling cache variable for type metadata for Tensor?);
      *&v83 = 0;
      *(&v83 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v58._countAndFlagsBits = 0xD000000000000025;
      String.append(_:)(v58);
      v58._countAndFlagsBits = v87._countAndFlagsBits;
      v58._object = v86._object;
      String.append(_:)(v58);
      v58._countAndFlagsBits = 0x74656D6172617020;
      v58._object = 0xEB00000000207265;
      String.append(_:)(v58);
      v58._countAndFlagsBits = v86._countAndFlagsBits;
      v59 = v88;
      v58._object = v88;
      String.append(_:)(v58);
      v92 = v83;
      v60 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v60, 0, 0);
      *v61 = v92;
      *(v61 + 16) = 0;
      *(v61 + 32) = 0;
      *(v61 + 48) = 0;
      v59;
      swift_willThrow();
    }

    *&v92 = 0;
    (*(v87._object + 4))(v90, v33, v29);
    v36 = v93;

    v37 = v75;
    swift_getAtKeyPath(v72, v36);

    v38 = Parameter.id.getter(v36);
    (*(v74 + 8))(v37, v73);
    v39 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
    if (v39[2])
    {
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
      if (v41)
      {
        v42 = *(v39[7] + 8 * v40);

        v39;
        goto LABEL_9;
      }
    }

    v39;
    v43 = v82;
    outlined init with copy of MLTrainingSessionParameters(v85, v82, type metadata accessor for MLActivityClassifier.Model);
    v44 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v45 = Layer.parameterKeyPaths(recursively:)(1, v81, v44);
    v46 = alloca(28);
    v47 = alloca(32);
    v68 = v43;
    v69 = v38;
    v48 = v92;
    v42 = specialized Sequence.first(where:)(partial apply for specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:), &v66, v45);
    *&v92 = v48;
    v45;
    outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLActivityClassifier.Model);
    if (!v42)
    {
      break;
    }

LABEL_9:
    swift_beginAccess(v85, &v83, 33, 0);
    v49 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v50 = v78;
    Layer.updateValue<A>(_:for:)(v90, v42, v49, &protocol witness table for Parameter);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v83);
    v51 = type metadata accessor for TensorShape(0);
    v52 = v76;
    __swift_storeEnumTagSinglePayload(v76, 1, 1, v51);
    *&v83 = v87._countAndFlagsBits;
    *(&v83 + 1) = v86._object;

    v53._countAndFlagsBits = 46;
    v53._object = 0xE100000000000000;
    String.append(_:)(v53);
    v53._countAndFlagsBits = v86._countAndFlagsBits;
    v54 = v88;
    v53._object = v88;
    String.append(_:)(v53);
    v54;
    v55 = BYTE8(v83);
    v56 = v92;
    specialized Adam.updateOptimizerState(for:shape:using:name:)(v42, v52, v84, v83, *(&v83 + 1));
    v28 = v56;
    if (v56)
    {

      v55;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, &demangling cache variable for type metadata for TensorShape?);
      (*(v87._object + 1))(v90, v89);
      return v91;
    }

    v55;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, &demangling cache variable for type metadata for TensorShape?);
    v29 = v89;
    (*(v87._object + 1))(v90, v89);
    v27 = v70 + 3;
    if (!--v80)
    {
      return v91;
    }
  }

  v91;
  *&v83 = 0;
  *(&v83 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v62._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v62);
  v62._countAndFlagsBits = v87._countAndFlagsBits;
  v62._object = v86._object;
  String.append(_:)(v62);
  v62._countAndFlagsBits = 0x74656D6172617020;
  v62._object = 0xEB00000000207265;
  String.append(_:)(v62);
  v62._countAndFlagsBits = v86._countAndFlagsBits;
  v63 = v88;
  v62._object = v88;
  String.append(_:)(v62);
  v92 = v83;
  v64 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v64, 0, 0);
  *v65 = v92;
  *(v65 + 16) = 0;
  *(v65 + 32) = 0;
  *(v65 + 48) = 0;
  v63;
  swift_willThrow();

  return (*(v87._object + 1))(v90, v89);
}

uint64_t specialized _ModelCheckpoint<>.restoreGenericLayer<A, B>(_:optimizer:layerName:checkpointDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  *&v94 = v7;
  v86 = a5;
  v88._object = a4;
  v89._countAndFlagsBits = a3;
  v79 = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v78 = &v68;
  v83 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v12 = *(*(v83 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v84 = &v68;
  v75 = type metadata accessor for Parameter(0);
  v76 = *(v75 - 8);
  v15 = *(v76 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v77 = &v68;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v80 = &v68;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v73 = &v68;
  v91 = type metadata accessor for Tensor(0);
  v89._object = *(v91 - 8);
  v23 = *(v89._object + 8);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = type metadata accessor for LSTM(0);
  v74 = a1;
  v27 = Layer.namedParameterKeyPaths(recursively:)(1, v26, &protocol witness table for LSTM);
  if (!*(v27 + 16))
  {
    return v27;
  }

  v82 = *(v27 + 16);
  v92 = &v68;
  v28 = v8;
  v87 = v8 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v8 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v69, 0, 0);
  v93 = v27;
  v29 = (v27 + 48);
  v30 = v94;
  v31 = v91;
  v81 = v28;
  while (1)
  {
    *&v94 = v30;
    v32 = *(v29 - 2);
    v33 = *(v29 - 1);
    v72 = v29;
    v34 = *v29;

    v95 = v34;

    v35 = v73;
    v88._countAndFlagsBits = v32;
    v36._countAndFlagsBits = v32;
    v90 = v33;
    v36._object = v33;
    v37 = v94;
    Dictionary<>.tensor(forKey:prefix:)(v36, v89._countAndFlagsBits, v88._object, v86);
    if (v37)
    {
      v90;

      return v93;
    }

    if (__swift_getEnumTagSinglePayload(v35, 1, v31) == 1)
    {
      v93;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for Tensor?);
      *&v85 = 0;
      *(&v85 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v60._countAndFlagsBits = 0xD000000000000025;
      String.append(_:)(v60);
      v60._countAndFlagsBits = v89._countAndFlagsBits;
      v60._object = v88._object;
      String.append(_:)(v60);
      v60._countAndFlagsBits = 0x74656D6172617020;
      v60._object = 0xEB00000000207265;
      String.append(_:)(v60);
      v60._countAndFlagsBits = v88._countAndFlagsBits;
      v61 = v90;
      v60._object = v90;
      String.append(_:)(v60);
      v94 = v85;
      v62 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v62, 0, 0);
      *v63 = v94;
      *(v63 + 16) = 0;
      *(v63 + 32) = 0;
      *(v63 + 48) = 0;
      v61;
      swift_willThrow();
    }

    *&v94 = 0;
    (*(v89._object + 4))(v92, v35, v31);
    v38 = v95;

    v39 = v77;
    swift_getAtKeyPath(v74, v38);

    v40 = Parameter.id.getter(v38);
    (*(v76 + 8))(v39, v75);
    v41 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
    if (v41[2])
    {
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
      if (v43)
      {
        v44 = *(v41[7] + 8 * v42);

        v41;
        goto LABEL_9;
      }
    }

    v41;
    v45 = v84;
    outlined init with copy of MLTrainingSessionParameters(v87, v84, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
    v46 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
    v47 = Layer.parameterKeyPaths(recursively:)(1, v83, v46);
    v48 = alloca(28);
    v49 = alloca(32);
    v70 = v45;
    v71 = v40;
    v50 = v94;
    v44 = specialized Sequence.first(where:)(_s14NeuralNetworks5LayerP8CreateMLE16parameterKeyPath18forParameterWithIds08WritablegH0CyxAA0J0VGSgs6UInt32V_tFSbAKXEfU_AD22MLHandActionClassifierV13GraphCNNModelV_TG5TA_0, &v68, v47);
    *&v94 = v50;
    v47;
    outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
    if (!v44)
    {
      break;
    }

LABEL_9:
    swift_beginAccess(v87, &v85, 33, 0);
    v51 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
    v52 = v80;
    Layer.updateValue<A>(_:for:)(v92, v44, v51, &protocol witness table for Parameter);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v85);
    v53 = type metadata accessor for TensorShape(0);
    v54 = v78;
    __swift_storeEnumTagSinglePayload(v78, 1, 1, v53);
    *&v85 = v89._countAndFlagsBits;
    *(&v85 + 1) = v88._object;

    v55._countAndFlagsBits = 46;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    v55._countAndFlagsBits = v88._countAndFlagsBits;
    v56 = v90;
    v55._object = v90;
    String.append(_:)(v55);
    v56;
    v57 = BYTE8(v85);
    v58 = v94;
    specialized SGD.updateOptimizerState(for:shape:using:name:)(v44, v54, v86, v85, *(&v85 + 1), a6, a7);
    v30 = v58;
    if (v58)
    {

      v57;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
      (*(v89._object + 1))(v92, v91);
      return v93;
    }

    v57;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
    v31 = v91;
    (*(v89._object + 1))(v92, v91);
    v29 = v72 + 3;
    if (!--v82)
    {
      return v93;
    }
  }

  v93;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v64._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v64);
  v64._countAndFlagsBits = v89._countAndFlagsBits;
  v64._object = v88._object;
  String.append(_:)(v64);
  v64._countAndFlagsBits = 0x74656D6172617020;
  v64._object = 0xEB00000000207265;
  String.append(_:)(v64);
  v64._countAndFlagsBits = v88._countAndFlagsBits;
  v65 = v90;
  v64._object = v90;
  String.append(_:)(v64);
  v94 = v85;
  v66 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v66, 0, 0);
  *v67 = v94;
  *(v67 + 16) = 0;
  *(v67 + 32) = 0;
  *(v67 + 48) = 0;
  v65;
  swift_willThrow();

  return (*(v89._object + 1))(v92, v91);
}

uint64_t specialized Adam.updateOptimizerState(for:shape:using:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v74 = v5;
  v67 = v6;
  v73 = a5;
  v68 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v64 = &v60;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v61 = &v60;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v71._object = &v60;
  v16 = alloca(v9);
  v17 = alloca(v9);
  v66 = type metadata accessor for Tensor(0);
  v18 = *(v66 - 8);
  v19 = *(v18 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v69 = &v60;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v65 = &v60;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v63 = &v60;
  v62 = &v60;
  v26._countAndFlagsBits = a4;
  v26._object = v73;
  v27 = v74;
  result = Dictionary<>.tensor(forKey:prefix:)(v26, 0x6D6F4D7473726966, 0xEC00000073746E65, a3);
  if (!v27)
  {
    v71._countAndFlagsBits = a4;
    v70 = a3;
    v74 = 0;
    v72 = v18;
    v29 = v62;
    v30 = v66;
    if (__swift_getEnumTagSinglePayload(v62, 1, v66) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for Tensor?);
      v31 = v72;
    }

    else
    {
      v32 = v63;
      v33 = v29;
      v34 = v72;
      (*(v72 + 32))(v63, v33, v30);
      object = v71._object;
      (*(v34 + 16))(v71._object, v32, v30);
      __swift_storeEnumTagSinglePayload(object, 0, 1, v30);
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
      v36 = v30;
      v37 = v68;

      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>);
      v39 = v37;
      v30 = v36;
      OptimizerStateDictionary.subscript.setter(v71._object, v39, v38);
      v31 = v72;
      (*(v72 + 8))(v32, v30);
    }

    v40._object = v73;
    v40._countAndFlagsBits = v71._countAndFlagsBits;
    v41 = v65;
    v42 = v61;
    v43 = v74;
    result = Dictionary<>.tensor(forKey:prefix:)(v40, 0x6F4D646E6F636573, 0xED000073746E656DLL, v70);
    if (!v43)
    {
      v74 = 0;
      if (__swift_getEnumTagSinglePayload(v42, 1, v30) == 1)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, &demangling cache variable for type metadata for Tensor?);
      }

      else
      {
        (*(v31 + 32))(v41, v42, v30);
        v44 = v71._object;
        (*(v72 + 16))(v71._object, v41, v30);
        __swift_storeEnumTagSinglePayload(v44, 0, 1, v30);
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
        v45 = v68;

        v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>);
        v47 = v44;
        v31 = v72;
        v48 = v45;
        v30 = v66;
        OptimizerStateDictionary.subscript.setter(v47, v48, v46);
        (*(v31 + 8))(v41, v30);
      }

      v49 = v69;
      v50 = v64;
      v51._countAndFlagsBits = v71._countAndFlagsBits;
      v51._object = v73;
      v52 = v74;
      result = Dictionary<>.tensor(forKey:prefix:)(v51, 0xD000000000000014, ("usesNesterovMomentum" + 0x8000000000000000), v70);
      if (!v52)
      {
        v74 = 0;
        if (__swift_getEnumTagSinglePayload(v50, 1, v30) == 1)
        {
          return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for Tensor?);
        }

        else
        {
          (*(v31 + 32))(v49, v50, v30);
          v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
          v54 = v49;
          v55 = *(v53 + 72) + v67;
          v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>);
          if (__swift_getEnumTagSinglePayload(v55, 1, v73))
          {
            v56 = v54;
            v57 = v30;
          }

          else
          {
            (*(v31 + 16))(v71._object, v54, v30);
            v58 = v71._object;
            __swift_storeEnumTagSinglePayload(v71._object, 0, 1, v30);
            v59 = v68;

            OptimizerStateDictionary.subscript.setter(v58, v59, v73);
            v56 = v69;
            v57 = v66;
          }

          return (*(v31 + 8))(v56, v57);
        }
      }
    }
  }

  return result;
}

void *outlined release of MLDataTable.ParsingOptions(void *a1)
{
  v6 = a1[2];
  v1 = a1[4];
  v2 = a1[6];
  v3 = a1[9];
  v4 = a1[11];
  v7 = a1[14];
  a1[13];
  v4;
  v3;
  v2;
  v1;
  v6;
  v7;
  return a1;
}

uint64_t outlined assign with take of SGD<MLHandActionClassifier.GraphCNNModel>(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of SGD<MLHandActionClassifier.GraphCNNModel>(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.ModelParameters.ModelAlgorithmType.validate()()
{
  v1 = *(v0 + 16);
  MLSoundClassifier.ModelParameters.FeatureExtractorType.validate()();
  if (!v2 && v1)
  {
    v3 = 0xD000000000000031;
    v4 = v1[2];
    if (v4)
    {
      v5 = "n be converted to double";
      if (v1[4] > 0)
      {
        if (v4 == 1)
        {
          return;
        }

        if (v1[5] > 0)
        {
          if (v4 == 2)
          {
            return;
          }

          for (i = 6; ; ++i)
          {
            v7 = i - 4 + 1;
            if (__OFADD__(1, i - 4))
            {
              BUG();
            }

            if (v1[i] <= 0)
            {
              break;
            }

            if (v7 == v4)
            {
              return;
            }
          }
        }
      }
    }

    else
    {
      v3 = 0xD000000000000036;
      v5 = "positive integers";
    }

    v8 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v8, 0, 0);
    *v9 = v3;
    *(v9 + 8) = v5 | 0x8000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 32) = 0;
    *(v9 + 48) = 0;
    swift_willThrow();
  }
}

unint64_t MLSoundClassifier.ModelParameters.ModelAlgorithmType.description.getter()
{
  v1 = 0xD000000000000012;
  v2 = *(v0 + 16);

  v3 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
  v5 = v4;
  if (v2)
  {
    v2;
    v1 = 0xD000000000000015;
    v6 = "Feature Extractor: ";
  }

  else
  {
    0;
    v6 = "Multilayer Perceptron";
  }

  v7._countAndFlagsBits = v1;
  v7._object = (v6 | 0x8000000000000000);
  String.append(_:)(v7);
  v5;
  v6;
  return v3;
}

char static MLSoundClassifier.ModelParameters.ModelAlgorithmType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  if (*(a1 + 8))
  {
    if (((v3 == v5) & v6) != 1)
    {
      return 0;
    }
  }

  else if ((v3 != v5) | v6 & 1)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v7)
    {
      swift_bridgeObjectRelease_n(0, 2);
      return 1;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v7);
  result = 1;
  if (!v9)
  {
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLSoundClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for MLSoundClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  v2 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v2;
  return a1;
}

uint64_t assignWithTake for MLSoundClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v3;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLSoundClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 & 0xFFFFFFFF00000001;
      v5 = (v3 >> 1) - 1;
      v6 = -1;
      if (v5 >= 0)
      {
        v6 = v5;
      }

      v2 = v4 != 0 ? -1 : v6;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLSoundClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = 2 * a2;
    }
  }
}

uint64_t type metadata completion function for ItemStatistics(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.Int64 + 64;
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  if (v2 <= 0x3F)
  {
    v4[1] = *(v1 - 8) + 64;
    v1 = 0;
    swift_initStructMetadata(a1, 0, 2, v4, a1 + 24);
  }

  return v1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ItemStatistics(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5;
  if (v5 > 7u || (v5 & 0x100000) != 0 || (v5 | (-9 - v5)) - *(v4 + 64) < 0xFFFFFFFFFFFFFFE7)
  {
    v7 = *a2;
    *v3 = *a2;

    return (v7 + ((v6 + 16) & (v6 & 0xFFFFFFF8 ^ 0x1F8)));
  }

  else
  {
    *a1 = *a2;
    (*(v4 + 16))(~v5 & (a1 + v5 + 8), ~v5 & (a2 + v5 + 8));
  }

  return v3;
}

void *initializeWithCopy for ItemStatistics(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 16))(~*(v3 + 80) & (a1 + *(v3 + 80) + 8), (a2 + *(v3 + 80) + 8) & ~*(v3 + 80));
  return a1;
}

void *assignWithCopy for ItemStatistics(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 24))(~*(v3 + 80) & (a1 + *(v3 + 80) + 8), (a2 + *(v3 + 80) + 8) & ~*(v3 + 80));
  return a1;
}

void *initializeWithTake for ItemStatistics(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 32))(~*(v3 + 80) & (a1 + *(v3 + 80) + 8), (a2 + *(v3 + 80) + 8) & ~*(v3 + 80));
  return a1;
}

void *assignWithTake for ItemStatistics(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 40))(~*(v3 + 80) & (a1 + *(v3 + 80) + 8), (a2 + *(v3 + 80) + 8) & ~*(v3 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ItemStatistics(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  result = 0;
  if (!a2)
  {
    return result;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = a2 <= v7;
  v11 = a2 - v7;
  if (v10)
  {
    return __swift_getEnumTagSinglePayload(v9 & &a1[v8 + 8], v7, v5);
  }

  v12 = *(v6 + 64) + ((v8 + 8) & v9);
  if (v12 > 3)
  {
LABEL_4:
    v13 = a1[v12];
    goto LABEL_11;
  }

  v14 = ((~(-1 << (8 * v12)) + v11) >> (8 * v12)) + 1;
  if (v14 > 0xFFFF)
  {
    v13 = *&a1[v12];
  }

  else
  {
    if (v14 <= 0xFF)
    {
      if (v14 < 2)
      {
LABEL_19:
        if (!v7)
        {
          return result;
        }

        return __swift_getEnumTagSinglePayload(v9 & &a1[v8 + 8], v7, v5);
      }

      goto LABEL_4;
    }

    v13 = *&a1[v12];
  }

LABEL_11:
  if (!v13)
  {
    goto LABEL_19;
  }

  v15 = (v13 - 1) << (8 * v12);
  v16 = 0;
  if (v12 >= 4)
  {
    v15 = 0;
  }

  if (v12)
  {
    v17 = 4;
    if (v12 < 4)
    {
      v17 = *(v6 + 64) + ((v8 + 8) & v9);
    }

    switch(v17)
    {
      case 1:
        v16 = *a1;
        break;
      case 2:
        v16 = *a1;
        break;
      case 3:
        v16 = *a1 | (a1[2] << 16);
        break;
      case 4:
        v16 = *a1;
        break;
    }
  }

  return v7 + (v15 | v16) + 1;
}

uint64_t storeEnumTagSinglePayload for ItemStatistics(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = *(a4 + 16);
  v5 = *(result - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + ((v6 + 8) & ~*(v5 + 80));
  v8 = *(v5 + 84);
  v9 = 0;
  v10 = a3 <= v8;
  v11 = a3 - v8;
  if (!v10)
  {
    if (v7 > 3)
    {
      v16 = 1;
LABEL_9:
      v9 = v16;
      goto LABEL_10;
    }

    v12 = ((~(-1 << (8 * v7)) + v11) >> (8 * v7)) + 1;
    if (v12 > 0xFFFF)
    {
      v16 = 4;
      goto LABEL_9;
    }

    v9 = 0;
    if (v12 >= 2)
    {
      v9 = ((v12 | 0x200000000uLL) - 256) >> 32;
    }
  }

LABEL_10:
  if (v8 < a2)
  {
    v13 = a2 + ~v8;
    if (v7 >= 4)
    {
      v14 = 1;
      __bzero(a1, v7);
      *a1 = v13;
      result = v9;
      switch(v9)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    v14 = (v13 >> (8 * v7)) + 1;
    if (v7)
    {
      v15 = v13 & ~(-1 << (8 * v7));
      __bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v15;
          result = v9;
          switch(v9)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_26;
            case 2u:
              goto LABEL_28;
            case 3u:
              goto LABEL_30;
            case 4u:
              goto LABEL_27;
          }
        }

        *a1 = v13;
        result = v9;
        switch(v9)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_26;
          case 2u:
            goto LABEL_28;
          case 3u:
            goto LABEL_30;
          case 4u:
            goto LABEL_27;
        }
      }

      *a1 = v15;
      *(a1 + 2) = BYTE2(v15);
      result = v9;
      switch(v9)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    result = v9;
    switch(v9)
    {
      case 0u:
        return result;
      case 1u:
LABEL_26:
        *(a1 + v7) = v14;
        return result;
      case 2u:
LABEL_28:
        *(a1 + v7) = v14;
        return result;
      case 3u:
        goto LABEL_30;
      case 4u:
LABEL_27:
        *(a1 + v7) = v14;
        return result;
    }
  }

  switch(v9)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v7) = 0;
      break;
    case 2u:
      *(a1 + v7) = 0;
      break;
    case 3u:
LABEL_30:
      BUG();
    case 4u:
      *(a1 + v7) = 0;
      break;
  }

  if (a2)
  {
    return __swift_storeEnumTagSinglePayload(~v6 & (v6 + a1 + 8), a2, v8, result);
  }

  return result;
}

uint64_t static MLLogisticRegressionClassifier.ModelParameters.firstIncompatibility(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*a1 == *a2)
  {
    v4 = *(a1 + 40);
    if (v4 == *(a2 + 40))
    {
      v5 = *(a1 + 48);
      if (v5 == *(a2 + 48))
      {
        v6 = *(a1 + 56);
        if (v6 == *(a2 + 56))
        {
          v7 = *(a1 + 64);
          if (v7 == *(a2 + 64))
          {
            v8 = *(a1 + 72);
            v9 = *(a2 + 72);
            if (v8 == v9)
            {
              v15 = 0;
              v14 = 0;
              v11 = 0;
              v12 = 0;
              result = 0;
              v13 = 0;
            }

            else
            {
              result = 0x65736C6166;
              v11 = 0x65736C6166;
              if (v8)
              {
                v11 = 1702195828;
              }

              v12 = (v8 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56;
              if (v9)
              {
                result = 1702195828;
              }

              v13 = (v9 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56;
              v14 = 0xEF676E696C616373;
              v15 = 0x2065727574616546;
            }
          }

          else
          {
            v14 = "e at least one element" + 0x8000000000000000;
            v26 = *(a2 + 64);
            v11 = Double.description.getter(v7);
            v12 = v22;
            result = Double.description.getter(v26);
            v15 = 0xD000000000000015;
          }
        }

        else
        {
          v25 = *(a2 + 56);
          v11 = Double.description.getter(v6);
          v12 = v21;
          result = Double.description.getter(v25);
          v14 = 0xE900000000000065;
          v15 = 0x7A69732070657453;
        }
      }

      else
      {
        v14 = 0xEA00000000007974;
        v24 = *(a2 + 48);
        v11 = Double.description.getter(v5);
        v12 = v20;
        result = Double.description.getter(v24);
        v15 = 0x6C616E657020324CLL;
      }
    }

    else
    {
      v14 = 0xEA00000000007974;
      v15 = 0x6C616E657020314CLL;
      v23 = *(a2 + 40);
      v11 = Double.description.getter(v4);
      v12 = v19;
      result = Double.description.getter(v23);
    }
  }

  else
  {
    v16 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v18 = v17;
    v11 = v16;
    result = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v12 = v18;
    v14 = 0xEF736E6F69746172;
    v15 = 0x657469202E78614DLL;
  }

  *v3 = v15;
  v3[1] = v14;
  v3[2] = v11;
  v3[3] = v12;
  v3[4] = result;
  v3[5] = v13;
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg563_s8CreateML11MLGazetteerV11predictions4fromSaySSGAF_tKFS2SXEfU_0F2ML0H0VTf1cn_n(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v25 = a2;
    v27 = *(a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v26 = _swiftEmptyArrayStorage;
    v8 = (a1 + 40);
    do
    {
      v9 = *v8;

      v10 = String._bridgeToObjectiveC()();
      v11 = [v25 labelForString:v10];
      v12 = v11;

      if (v12)
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)(v12);
        v24 = v13;
        v9;
      }

      else
      {
        v9;
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      v14 = v26;
      v15 = v26[2];
      v16 = v27;
      if (v26[3] >> 1 <= v15)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26[3] >= 2uLL, v15 + 1, 1);
        v16 = v27;
        v14 = v26;
      }

      v14[2] = v15 + 1;
      v17 = 2 * v15;
      v14[v17 + 4] = v23;
      v26 = v14;
      v14[v17 + 5] = v24;
      v8 += 2;
      v27 = v16 - 1;
    }

    while (v16 != 1);

    a3;
    return v26;
  }

  else
  {

    a3;
    return _swiftEmptyArrayStorage;
  }
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLGazetteer.prediction(from:)(Swift::String from)
{
  v2 = *v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 labelForString:v3];
  v5 = v4;

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(v5);
    v8 = v7;
  }

  else
  {
    v8 = 0xE000000000000000;
    v6 = 0;
  }

  result._countAndFlagsBits = v6;
  result._object = v8;
  return result;
}

void *MLGazetteer.predictions(from:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v8 = *(v1 + 16);
  v4 = *(v1 + 24);
  v4;
  v5 = v2;

  v6 = v8;
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg563_s8CreateML11MLGazetteerV11predictions4fromSaySSGAF_tKFS2SXEfU_0F2ML0H0VTf1cn_n(a1, v5, v3, v6, v4);
}

uint64_t MLGazetteer.predictions(from:)(uint64_t a1, double a2)
{
  v13 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v17 = *v3;
  v15 = *(v3 + 8);
  v14 = *(v3 + 16);
  v16 = *(v3 + 24);
  outlined copy of Result<_DataTable, Error>(*a1, v5);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v4, v5, a2);
  v16;
  v7 = v17;

  v8 = v14;
  LOBYTE(v7) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg563_s8CreateML11MLGazetteerV11predictions4fromSaySSGAF_tKFS2SXEfU_0F2ML0H0VTf1cn_n(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5, v7, v15, v8, v16);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v12 = v7;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  LOBYTE(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5) = v10;
  v12;
  result = v13;
  *v13 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(v13 + 8) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 & 1;
  return result;
}

Class static MLTextClassifier.buildOptions(_:)(uint64_t a1)
{
  v106[0] = v1;
  v2 = a1;
  v110 = type metadata accessor for URL(0);
  v111 = *(v110 - 1);
  v3 = *(v111 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v108 = v106;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v112 = v106;
  v8 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v107 = v106;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v13 = v106;
  v113 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v14 = *(*(v113 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v114 = v106;
  v106[1] = &type metadata for Any + 8;
  v118 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable);
  v17 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v18 = *(v17 + 36);
  v19 = *(a1 + v18 + 8) == 0;
  v115 = v106;
  v116 = a1;
  if (v19)
  {
    if (!kNLPMaximumIterationsKey)
    {
      BUG();
    }

    v20 = *(a1 + v18);
    *&v120 = kNLPMaximumIterationsKey;
    v21 = type metadata accessor for CFStringRef(0);
    v22 = lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    AnyHashable.init<A>(_:)(&v120, v21, v22);
    v121 = &type metadata for Int;
    *&v120 = v20;
    outlined init with take of Any(&v120, v119);
    v23 = v118;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v118);
    v117 = v23;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, isUniquelyReferenced_nonNull_native);
    v2 = v116;
    v118 = v117;
    outlined destroy of AnyHashable(v122);
    v13 = v115;
  }

  v25 = *(v2 + *(v17 + 20));
  if (v25)
  {
    v26 = NLModelConfigurationOptionsKeyLanguage;
    *&v120 = NLModelConfigurationOptionsKeyLanguage;
    v109 = type metadata accessor for NLModelConfigurationOptionsKey(0);
    v27 = lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
    v28 = v25;
    v26;
    AnyHashable.init<A>(_:)(&v120, v109, v27);
    v121 = type metadata accessor for NLLanguage(0);
    *&v120 = v28;
    outlined init with take of Any(&v120, v119);
    v109 = v28;
    v29 = v118;
    v30 = swift_isUniquelyReferenced_nonNull_native(v118);
    v117 = v29;
    v13 = v115;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v30);
    v2 = v116;
    v118 = v117;
    outlined destroy of AnyHashable(v122);
  }

  v31 = v114;
  outlined init with copy of MLTrainingSessionParameters(v2, v114, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v31, v113);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v116 = *v31;
      v33 = NLModelConfigurationOptionsKeyRevision;
      v34 = *(v31 + 8);
      *&v120 = NLModelConfigurationOptionsKeyRevision;
      v35 = type metadata accessor for NLModelConfigurationOptionsKey(0);
      v36 = lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
      v33;
      v115 = v35;
      v37 = v35;
      v38 = v36;
      AnyHashable.init<A>(_:)(&v120, v37, v36);
      if (v34)
      {
        specialized Dictionary._Variant.removeValue(forKey:)(v122);
        outlined destroy of AnyHashable(v122);
        outlined destroy of Any?(&v120);
      }

      else
      {
        v121 = &type metadata for Int;
        *&v120 = v116;
        outlined init with take of Any(&v120, v119);
        v51 = v118;
        v52 = swift_isUniquelyReferenced_nonNull_native(v118);
        v117 = v51;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v52);
        v118 = v117;
        outlined destroy of AnyHashable(v122);
      }

      v53 = &NLModelConfigurationOptionsKeyUseCRF;
      goto LABEL_18;
    }

    v44 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    v113 = *(v31 + v44);
    v45 = *(v31 + v44 + 8);
    outlined init with take of MLTextClassifier.FeatureExtractorType(v31, v13);
    v46 = NLModelConfigurationOptionsKeyRevision;
    *&v120 = NLModelConfigurationOptionsKeyRevision;
    v47 = type metadata accessor for NLModelConfigurationOptionsKey(0);
    v48 = lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
    v46;
    v116 = v47;
    v49 = v47;
    v50 = v48;
    AnyHashable.init<A>(_:)(&v120, v49, v48);
    if (v45)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v122);
      outlined destroy of AnyHashable(v122);
      outlined destroy of Any?(&v120);
    }

    else
    {
      v121 = &type metadata for Int;
      *&v120 = v113;
      outlined init with take of Any(&v120, v119);
      v59 = v118;
      v60 = swift_isUniquelyReferenced_nonNull_native(v118);
      v117 = v59;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v60);
      v118 = v117;
      outlined destroy of AnyHashable(v122);
    }

    *&v120 = NLModelConfigurationOptionsKeyUseTransfer;
    NLModelConfigurationOptionsKeyUseTransfer;
    AnyHashable.init<A>(_:)(&v120, v116, v50);
    v121 = &type metadata for Bool;
    LOBYTE(v120) = 1;
    outlined init with take of Any(&v120, v119);
    v61 = v118;
    v62 = swift_isUniquelyReferenced_nonNull_native(v118);
    v114 = v50;
    v117 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v62);
    v118 = v117;
    outlined destroy of AnyHashable(v122);
    v63 = v115;
    v64 = v107;
    outlined init with copy of MLTrainingSessionParameters(v115, v107, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    v65 = v110;
    switch(__swift_getEnumTagSinglePayload(v64, 4, v110))
    {
      case 0u:
        v67 = v64;
        v68 = v112;
        (*(v111 + 32))(v112, v67, v65);
        *&v120 = NLModelConfigurationOptionsKeyEmbeddingType;
        NLModelConfigurationOptionsKeyEmbeddingType;
        AnyHashable.init<A>(_:)(&v120, v116, v114);
        v69 = NLModelEmbeddingTypeCustom;
        v121 = type metadata accessor for NLModelEmbeddingType(0);
        *&v120 = v69;
        outlined init with take of Any(&v120, v119);
        v69;
        v70 = v118;
        v71 = swift_isUniquelyReferenced_nonNull_native(v118);
        v117 = v70;
        v72 = v68;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v71);
        v73 = v117;
        v118 = v117;
        outlined destroy of AnyHashable(v122);
        v74 = URL.pathExtension.getter();
        v76 = v75;
        v113 = v73;
        if (v74 ^ 0x6C65646F6D6C6DLL | v75 ^ 0xE700000000000000)
        {
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)(v74, v75, 0x6C65646F6D6C6DLL, 0xE700000000000000, 0);
          v76;
          if ((v83 & 1) == 0)
          {
            *&v120 = NLModelConfigurationOptionsKeyEmbeddingURL;
            NLModelConfigurationOptionsKeyEmbeddingURL;
            AnyHashable.init<A>(_:)(&v120, v116, v114);
            v99 = v72;
            v100 = v110;
            v121 = v110;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v120);
            v102 = v99;
            v103 = v111;
            (*(v111 + 16))(boxed_opaque_existential_0, v102, v100);
            outlined init with take of Any(&v120, v119);
            v104 = v118;
            v105 = swift_isUniquelyReferenced_nonNull_native(v118);
            v117 = v104;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v105);
            v58 = v117;
            outlined destroy of AnyHashable(v122);
            (*(v103 + 8))(v112, v100);
            goto LABEL_35;
          }
        }

        else
        {
          v75;
        }

        v84 = objc_opt_self(MLModel);
        URL._bridgeToObjectiveC()(v84);
        v86 = v85;
        v81.super.isa = v122;
        v122[0] = 0;
        v87 = [(NSURL *)v84 compileModelAtURL:v85 error:v122];
        v88 = v87;

        v89 = v122[0];
        if (!v88)
        {
          v98 = v122[0];

          _convertNSErrorToError(_:)(v89);

          swift_willThrow();
          (*(v111 + 8))(v112, v110);
          outlined destroy of MLTextClassifier.FeatureExtractorType(v115);
          return v81.super.isa;
        }

        v90 = v108;
        static URL._unconditionallyBridgeFromObjectiveC(_:)(v88);
        v89;

        *&v120 = NLModelConfigurationOptionsKeyEmbeddingURL;
        NLModelConfigurationOptionsKeyEmbeddingURL;
        AnyHashable.init<A>(_:)(&v120, v116, v114);
        v91 = v110;
        v121 = v110;
        v92 = __swift_allocate_boxed_opaque_existential_0(&v120);
        v93 = v90;
        v94 = v111;
        (*(v111 + 16))(v92, v93, v91);
        outlined init with take of Any(&v120, v119);
        v95 = v118;
        v96 = swift_isUniquelyReferenced_nonNull_native(v118);
        v117 = v95;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v96);
        v58 = v117;
        outlined destroy of AnyHashable(v122);
        v97 = *(v94 + 8);
        v97(v108, v91);
        v97(v112, v91);
LABEL_35:
        v80 = v115;
        goto LABEL_27;
      case 1u:
        *&v120 = NLModelConfigurationOptionsKeyEmbeddingType;
        NLModelConfigurationOptionsKeyEmbeddingType;
        AnyHashable.init<A>(_:)(&v120, v116, v114);
        v66 = &NLModelEmbeddingTypeStatic;
        goto LABEL_26;
      case 2u:
      case 3u:
        *&v120 = NLModelConfigurationOptionsKeyEmbeddingType;
        NLModelConfigurationOptionsKeyEmbeddingType;
        AnyHashable.init<A>(_:)(&v120, v116, v114);
        v66 = &NLModelEmbeddingTypeDynamic;
        goto LABEL_26;
      case 4u:
        *&v120 = NLModelConfigurationOptionsKeyEmbeddingType;
        NLModelConfigurationOptionsKeyEmbeddingType;
        AnyHashable.init<A>(_:)(&v120, v116, v114);
        v66 = &NLModelEmbeddingTypeContextual;
LABEL_26:
        v77 = *v66;
        v121 = type metadata accessor for NLModelEmbeddingType(0);
        *&v120 = v77;
        outlined init with take of Any(&v120, v119);
        v77;
        v78 = v118;
        v79 = swift_isUniquelyReferenced_nonNull_native(v118);
        v117 = v78;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v79);
        v58 = v117;
        outlined destroy of AnyHashable(v122);
        v80 = v63;
LABEL_27:
        outlined destroy of MLTextClassifier.FeatureExtractorType(v80);
        goto LABEL_28;
    }
  }

  v116 = *v31;
  v39 = NLModelConfigurationOptionsKeyRevision;
  v40 = *(v31 + 8);
  *&v120 = NLModelConfigurationOptionsKeyRevision;
  v41 = type metadata accessor for NLModelConfigurationOptionsKey(0);
  v42 = lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
  v39;
  v115 = v41;
  v43 = v41;
  v38 = v42;
  AnyHashable.init<A>(_:)(&v120, v43, v42);
  if (v40)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v122);
    outlined destroy of AnyHashable(v122);
    outlined destroy of Any?(&v120);
  }

  else
  {
    v121 = &type metadata for Int;
    *&v120 = v116;
    outlined init with take of Any(&v120, v119);
    v54 = v118;
    v55 = swift_isUniquelyReferenced_nonNull_native(v118);
    v117 = v54;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v55);
    v118 = v117;
    outlined destroy of AnyHashable(v122);
  }

  v53 = &NLModelConfigurationOptionsKeyUseMaxEnt;
LABEL_18:
  *&v120 = *v53;
  v120;
  AnyHashable.init<A>(_:)(&v120, v115, v38);
  v121 = &type metadata for Bool;
  LOBYTE(v120) = 1;
  outlined init with take of Any(&v120, v119);
  v56 = v118;
  v57 = swift_isUniquelyReferenced_nonNull_native(v118);
  v117 = v56;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v57);
  v58 = v117;
  outlined destroy of AnyHashable(v122);
LABEL_28:
  v81.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v58;
  return v81.super.isa;
}

uint64_t outlined init with take of MLTextClassifier.FeatureExtractorType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = a2(255);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

void AnyTreeClassifierModel.export(internalMetadata:)()
{
  v130 = v0;
  v124 = type metadata accessor for FeatureType(0);
  v123 = *(v124 - 8);
  v3 = *(v123 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v137 = &v111;
  v125 = type metadata accessor for TreeEnsembleClassifierConfiguration.ClassLabels(0);
  v113 = *(v125 - 8);
  v6 = *(v113 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v112 = &v111;
  v131 = type metadata accessor for ModelKind(0);
  v122 = *(v131 - 8);
  v9 = *(v122 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v119 = &v111;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v114 = &v111;
  v132 = type metadata accessor for TreeEnsembleClassifierConfiguration(0);
  v133 = *(v132 - 8);
  v14 = *(v133 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v134 = &v111;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Model?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v115 = &v111;
  v120 = type metadata accessor for Model(0);
  v121 = *(v120 - 8);
  v20 = *(v121 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v140 = &v111;
  v142 = type metadata accessor for URL.DirectoryHint(0);
  v128 = *(v142 - 1);
  v23 = *(v128 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v129 = &v111;
  v26 = type metadata accessor for UUID(0);
  v145 = *(v26 - 8);
  v27 = *(v145 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v139 = &v111;
  v136 = type metadata accessor for URL(0);
  v144 = *(v136 - 8);
  v30 = *(v144 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v111 = &v111;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v143 = &v111;
  v35 = alloca(v30);
  v36 = alloca(v30);
  v146 = &v111;
  v37 = alloca(v30);
  v38 = alloca(v30);
  v39 = v2;
  v40 = v2[2];
  if (!v40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, ("ressorModel.swift" + 0x8000000000000000), "CreateML/AnyTreeClassifierModel+CoreML.swift", 44, 2, 11, 0);
    goto LABEL_16;
  }

  v41 = v39;
  v42 = specialized FeatureVectorizer.Transformer.exportEncoders()(v40, v39[3], v39[4]);
  if (v1)
  {
    return;
  }

  v135 = v41;
  v116 = v40;
  v141 = v42;
  v138 = &v111;
  v43 = objc_opt_self(NSFileManager);
  v44 = [v43 defaultManager];
  v45 = v44;
  NSFileManager.createTemporaryModelDirectory()();
  if (v46)
  {
    v141;

    return;
  }

  v47 = [v43 defaultManager];
  v48 = v47;
  NSFileManager.temporaryModelDirectory.getter();

  v49 = v139;
  UUID.init()();
  v118 = UUID.uuidString.getter();
  v51 = v50;
  v117 = v50;
  (*(v145 + 8))(v49, v26);
  v126 = v118;
  v127 = v51;
  v52 = v129;
  v53 = v128;
  (*(v128 + 104))(v129, enum case for URL.DirectoryHint.inferFromPath(_:), v142);
  v54 = lazy protocol witness table accessor for type String and conformance String();
  v145 = 0;
  v55 = v143;
  URL.appending<A>(component:directoryHint:)(&v126, v52, &type metadata for String, v54);
  (*(v53 + 8))(v52, v142);
  v117;
  v56 = *(v144 + 8);
  v57 = v136;
  v56(v55, v136);
  v58 = v138;
  v59 = v146;
  URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
  v142 = v56;
  v56(v59, v57);
  v60 = type metadata accessor for AnyTreeClassifierModel(0);
  v61 = v145;
  BaseTreeClassifierModel.export(to:)(v58);
  if (v61)
  {
    v142(v138, v136);
    v141;
    return;
  }

  v146 = v60;
  v62 = v111;
  (*(v144 + 16))(v111, v138, v136);
  Model.init(contentsOf:)(v62);
  v145 = 0;
  v63 = v115;
  specialized BidirectionalCollection.last.getter(v141);
  v64 = v120;
  if (__swift_getEnumTagSinglePayload(v63, 1, v120) == 1)
  {
    BUG();
  }

  v65 = Model.outputs.getter();
  v128 = *(v121 + 8);
  (v128)(v63, v64);
  Model.inputs.setter(v65);
  v66 = *v135;
  v67 = v135[1];

  Model.predictedFeatureName.setter(v66, v67);
  v144 = v66;
  v126 = v66;
  v127 = v67;
  v143 = v67;

  v68._countAndFlagsBits = 0x6C696261626F7250;
  v68._object = 0xEB00000000797469;
  String.append(_:)(v68);
  Model.predictedProbabilitiesName.setter(v126, v127);
  v69 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  Model.metadata.setter(v69);
  v70 = v114;
  Model.kind.getter();
  v71 = v70;
  v68._countAndFlagsBits = v70;
  v72 = v131;
  v73 = v122;
  LODWORD(v129) = (*(v122 + 88))(v68._countAndFlagsBits, v131);
  if (v129 != enum case for ModelKind.treeEnsembleClassifier(_:))
  {
    (*(v73 + 8))(v71, v72);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001BLL, ("ClassifierModel+CoreML.swift" + 0x8000000000000000), "CreateML/AnyTreeClassifierModel+CoreML.swift", 44, 2, 32, 0);
LABEL_16:
    BUG();
  }

  (*(v73 + 96))(v71, v72);
  (*(v133 + 32))(v134, v71, v132);
  v74 = *(v146 + 7);
  v75 = *(v135 + v74 + 8) == 0;
  v76 = v112;
  *v112 = *(v135 + v74);
  v77 = *(v113 + 104);
  if (v75)
  {
    v77(v76, enum case for TreeEnsembleClassifierConfiguration.ClassLabels.int(_:), v125);

    TreeEnsembleClassifierConfiguration.classLabels.setter(v76);
    v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v89 = *(type metadata accessor for FeatureDescription(0) - 8);
    v139 = *(v89 + 72);
    v90 = swift_allocObject(v88, ((*(v89 + 80) + 32) & ~*(v89 + 80)) + 2 * v139, *(v89 + 80) | 7);
    *(v90 + 16) = 2;
    *(v90 + 24) = 4;
    v146 = v90;
    v91 = v143;

    v92 = v137;
    FeatureType.IntParameters.init(optional:)(0);
    (*(v123 + 104))(v92, enum case for FeatureType.int(_:), v124);
    v93 = v144;
    FeatureDescription.init(name:type:description:)(v144, v91, v92, 0, 0xE000000000000000);
    v126 = v93;
    v127 = v91;

    v94._countAndFlagsBits = 0x6C696261626F7250;
    v94._object = 0xEB00000000797469;
    String.append(_:)(v94);
    v85 = v126;
    v86 = v127;
    v87 = v137;
    static FeatureType.dictionaryWithIntKeys(optional:)(0);
  }

  else
  {
    v77(v76, enum case for TreeEnsembleClassifierConfiguration.ClassLabels.string(_:), v125);

    TreeEnsembleClassifierConfiguration.classLabels.setter(v76);
    v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v79 = *(type metadata accessor for FeatureDescription(0) - 8);
    v139 = *(v79 + 72);
    v80 = swift_allocObject(v78, ((*(v79 + 80) + 32) & ~*(v79 + 80)) + 2 * v139, *(v79 + 80) | 7);
    *(v80 + 16) = 2;
    *(v80 + 24) = 4;
    v146 = v80;
    v81 = v143;

    v82 = v137;
    FeatureType.StringParameters.init(optional:)(0);
    (*(v123 + 104))(v82, enum case for FeatureType.string(_:), v124);
    v83 = v144;
    FeatureDescription.init(name:type:description:)(v144, v81, v82, 0, 0xE000000000000000);
    v126 = v83;
    v127 = v81;

    v84._countAndFlagsBits = 0x6C696261626F7250;
    v84._object = 0xEB00000000797469;
    String.append(_:)(v84);
    v85 = v126;
    v86 = v127;
    v87 = v137;
    static FeatureType.dictionaryWithStringKeys(optional:)(0);
  }

  FeatureDescription.init(name:type:description:)(v85, v86, v87, 0, 0xE000000000000000);
  Model.outputs.setter(v146);
  v95 = v119;
  (*(v133 + 16))(v119, v134, v132);
  v146 = *(v122 + 104);
  (v146)(v95, v129, v131);
  Model.kind.setter(v95);
  Model.init()();
  Model.specificationVersion.setter(1);
  v96 = v116;

  v97 = v145;
  ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n(v96);
  v145 = v97;
  v96;
  Model.inputs.setter(ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n);
  v99 = Model.outputs.getter();
  Model.outputs.setter(v99);
  v100 = v143;

  v101 = v144;
  Model.predictedFeatureName.setter(v144, v100);
  v126 = v101;
  v127 = v100;

  v102._countAndFlagsBits = 0x6C696261626F7250;
  v102._object = 0xEB00000000797469;
  String.append(_:)(v102);
  Model.predictedProbabilitiesName.setter(v126, v127);
  v103 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
  v104 = v121;
  v105 = *(v121 + 80);
  v106 = (v105 + 32) & ~*(v121 + 80);
  v107 = swift_allocObject(v103, v106 + *(v121 + 72), v105 | 7);
  *(v107 + 16) = 1;
  *(v107 + 24) = 2;
  v102._countAndFlagsBits = v107 + v106;
  v108 = v120;
  (*(v104 + 16))(v102._countAndFlagsBits, v140, v120);
  v126 = v141;
  specialized Array.append<A>(contentsOf:)(v107);
  v109 = v119;
  PipelineClassifierConfiguration.init(models:names:)(v126, _swiftEmptyArrayStorage);
  (v146)(v109, enum case for ModelKind.pipelineClassifier(_:), v131);
  Model.kind.setter(v109);
  (*(v133 + 8))(v134, v132);
  (v128)(v140, v108);
  v110 = v138;
  $defer #1 () in AnyTreeClassifierModel.export(internalMetadata:)();
  v142(v110, v136);
}

NSURL *$defer #1 () in AnyTreeClassifierModel.export(internalMetadata:)()
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v10 = 0;
  v5 = [(NSURL *)v2 removeItemAtURL:v3 error:&v10];

  v6 = v10;
  if (v5)
  {
    return v10;
  }

  v8 = v10;
  v9 = _convertNSErrorToError(_:)(v6);

  swift_willThrow();
  v9;
  return __stack_chk_guard;
}

void MLBoostedTreeRegressor.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    TreeRegressorModel.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLBoostedTreeRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLBoostedTreeRegressor;
  if (!type metadata singleton initialization cache for MLBoostedTreeRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLBoostedTreeRegressor);
  }

  return result;
}

uint64_t *MLBoostedTreeRegressor.predictions(from:)(uint64_t a1, __m128 a2)
{
  v15 = v3;
  v16 = v2;
  v17 = type metadata accessor for DataFrame(0);
  v18 = *(v17 - 8);
  v4 = *(v18 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  outlined copy of Result<_DataTable, Error>(v13, v10);
  DataFrame.init(_:)(&v13);
  v11 = v15;
  MLBoostedTreeRegressor.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

void MLBoostedTreeRegressor.evaluation(on:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1;
  v6 = type metadata accessor for MLBoostedTreeRegressor(0);
  v7._rawValue = *(v3 + *(v6 + 28));
  v16 = a1;
  DataFrame.validateContainsColumns(_:context:)(v7, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v8 || (v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>), inited = swift_initStackObject(v9, v15), v11 = v3, v12 = inited, *(inited + 16) = 1, *(inited + 24) = 2, v13 = *(v6 + 24), v14 = *(v11 + v13 + 8), *(v12 + 32) = *(v11 + v13), *(v12 + 40) = v14, , DataFrame.validateContainsColumns(_:context:)(v12, __PAIR128__(0xE500000000000000, 0x6C6562614CLL)), swift_setDeallocating(v12), specialized _ContiguousArrayStorage.__deallocating_deinit(), v8))
  {
    *v5 = v8;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }

  else
  {
    TreeRegressorModel.computeMetrics(on:)(v16);
  }
}

uint64_t MLBoostedTreeRegressor.evaluation(on:)(uint64_t a1)
{
  v11 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  outlined copy of Result<_DataTable, Error>(v9, v7);
  DataFrame.init(_:)(&v9);
  MLBoostedTreeRegressor.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

NSURL *MLBoostedTreeRegressor.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v43 = v3;
  v48 = a2;
  v49 = a1;
  v4 = *(*(type metadata accessor for TreeRegressorModel(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v45 = &v33;
  v46 = type metadata accessor for Model(0);
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v42 = &v33;
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v41, v48, sizeof(v41));
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v49, 0xD000000000000014, ("Expected a tree classifier." + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v44 = 0;
    v50 = &v33;
    v47 = v7;
    v48 = v11;
    v49 = v12;
    outlined init with copy of MLTrainingSessionParameters(v43, v45, type metadata accessor for TreeRegressorModel);
    v17 = *&v41[8];
    if (*&v41[8])
    {
      v18 = *v41;
      v19 = *&v41[16];
      v20 = *&v41[24];
      v21 = *&v41[32];
      v22 = *&v41[48];
      v23 = *&v41[56];
      v24 = *&v41[64];
    }

    else
    {
      v25 = NSFullUserName();
      v26 = v25;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)(v26);
      v17 = v27;

      v20 = "RandomForestRegressor" + 0x8000000000000000;
      v35[0] = v18;
      v35[1] = v17;
      v35[2] = 0xD000000000000033;
      v35[3] = "RandomForestRegressor" + 0x8000000000000000;
      v36 = 0;
      v37 = 49;
      v38 = 0xE100000000000000;
      v39 = 0;
      *v40 = v18;
      *&v40[8] = v17;
      *&v40[16] = 0xD000000000000033;
      *&v40[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v40[32] = 0;
      *&v40[48] = 49;
      *&v40[56] = 0xE100000000000000;
      *&v40[64] = 0;
      outlined retain of MLModelMetadata(v35);
      outlined release of MLModelMetadata(v40);
      v23 = 0xE100000000000000;
      v22 = 49;
      v21 = 0;
      v19 = 0xD000000000000033;
      v24 = 0;
    }

    *v40 = v18;
    *&v40[8] = v17;
    *&v40[16] = v19;
    *&v40[24] = v20;
    *&v40[32] = v21;
    *&v40[48] = v22;
    *&v40[56] = v23;
    *&v40[64] = v24;
    qmemcpy(v34, v40, sizeof(v34));
    outlined retain of MLModelMetadata?(v41);
    v28 = v42;
    v29 = v45;
    v30 = v44;
    specialized CoreMLExportable.export(metadata:)(v34, TreeRegressorModel.export(internalMetadata:));
    v31 = v48;
    outlined release of MLModelMetadata(v40);
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for TreeRegressorModel);
    if (v30)
    {
      return (*(v49 + 8))(v50, v31);
    }

    else
    {
      Model.write(to:)(v50);
      v32 = v49;
      (*(v47 + 8))(v28, v46);
      return (*(v32 + 8))(v50, v31);
    }
  }

  return result;
}

uint64_t MLBoostedTreeRegressor.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v17 = v3;
  v21 = a3;
  v19 = a2;
  v18 = a1;
  v22 = type metadata accessor for URL.DirectoryHint(0);
  v20 = *(v22 - 8);
  v4 = *(v20 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v23 = v16;
  v10 = type metadata accessor for URL(0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  qmemcpy(v16, v21, sizeof(v16));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v10);
  (*(v20 + 104))(v16, enum case for URL.DirectoryHint.inferFromPath(_:), v22);
  v14 = v19;

  URL.init(filePath:directoryHint:relativeTo:)(v18, v14, v16, v23);
  MLBoostedTreeRegressor.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLBoostedTreeRegressor.debugDescription.getter()
{
  v1 = type metadata accessor for MLBoostedTreeRegressor(0);
  v20 = MLBoostedTreeRegressor.ModelParameters.description.getter();
  v3 = v2;
  v4 = *(v1 + 36);
  v15 = *(v0 + v4);
  v17 = *(v0 + v4 + 8);
  v19 = *(v0 + v4 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v15, v17, v19);
  v22 = MLRegressorMetrics.description.getter();
  v6 = v5;
  outlined consume of Result<_RegressorMetrics, Error>(v15, v17, v19);
  v7 = *(v1 + 40);
  LOBYTE(v1) = *(v0 + v7 + 16) & 1;
  v16 = *(v0 + v7);
  v18 = *(v0 + v7 + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v16, v18, *(v0 + v7 + 16));
  v14._countAndFlagsBits = MLRegressorMetrics.description.getter();
  v14._object = v8;
  outlined consume of Result<_RegressorMetrics, Error>(v16, v18, v1);
  v9._countAndFlagsBits = v20;
  v21 = v3;
  v9._object = v3;
  String.append(_:)(v9);
  v9._countAndFlagsBits = v22;
  v9._object = v6;
  String.append(_:)(v9);
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  String.append(_:)(v9);
  ("ActivityClassifier\n\nParameters\n" + 0x8000000000000000);
  if (v1)
  {
    v10 = v6;
    object = v14._object;
  }

  else
  {
    String.append(_:)(v14);
    v12._countAndFlagsBits = 0xD000000000000020;
    object = ("\nPerformance on Training Data\n" + 0x8000000000000000);
    v12._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    String.append(_:)(v12);
    v6;
    v10 = v14._object;
  }

  v10;
  object;
  v21;
  return 0xD000000000000021;
}

NSAttributedString MLBoostedTreeRegressor.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLBoostedTreeRegressor.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t specialized CoreMLExportable.export(metadata:)(uint64_t *a1)
{
  return specialized CoreMLExportable.export(metadata:)(a1, TreeRegressorModel.export(internalMetadata:));
}

{
  return specialized CoreMLExportable.export(metadata:)(a1, MLLinearRegressor.Model.export(internalMetadata:));
}

{
  return specialized CoreMLExportable.export(metadata:)(a1, AnyTreeClassifierModel.export(internalMetadata:));
}

{
  return specialized CoreMLExportable.export(metadata:)(a1, MLLogisticRegressionClassifier.Model.export(internalMetadata:));
}

uint64_t specialized CoreMLExportable.export(metadata:)(uint64_t *a1, uint64_t (*a2)(char *))
{
  v5 = v2;
  result = a2(v31);
  if (!v3)
  {
    v40 = 0;
    v39._countAndFlagsBits = *a1;
    v33 = a1[1];
    v36 = a1[2];
    v7 = a1[3];
    v8 = v5;
    v9 = a1[5];
    v35 = a1[6];
    v10 = a1[4];
    if (!v9)
    {
      v10 = 0;
    }

    v38 = v10;
    v37 = a1[7];
    v11 = 0xE000000000000000;
    if (v9)
    {
      v11 = v9;
    }

    v39._object = v11;

    Model.modelDescription.setter(v36, v7);
    v12 = v37;

    Model.versionString.setter(v35, v12);
    v13 = v33;

    Model.author.setter(v39._countAndFlagsBits, v13);
    v14 = a1[8];

    Model.license.setter(v38, v39._object);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
    }

    Model.metadata.setter(v15);
    v16 = Model.metadata.modify(v30);
    v17 = v40;
    specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(_swiftEmptyDictionarySingleton, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v18);
    v40 = v17;
    v16(v30, 0);
    v39 = getOSVersion()();
    v34 = v8;
    v38 = Model.metadata.modify(v30);
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v19);
    v32 = *v20;
    *v20 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39._countAndFlagsBits, v39._object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    *v20 = v32;
    v38(v30, 0);
    v22 = Model.nestedModels.getter();
    v23 = v22;
    v24 = v40;
    ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification5ModelVG_Sis5NeverOTg5032_s8CreateML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n(v22);
    v40 = v24;
    v23;
    v26 = specialized Sequence<>.max()(ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n);
    v28 = v27;
    ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n;
    v29 = 1;
    if ((v28 & 1) == 0)
    {
      v29 = v26;
    }

    return Model.specificationVersion.setter(v29);
  }

  return result;
}

uint64_t specialized CoreMLExportable.export(metadata:)(uint64_t a1)
{
  v4 = v1;
  v33 = _swiftEmptyDictionarySingleton;
  MLSoundClassifier.Model.export(internalMetadata:)(&v33);
  if (v2)
  {
    return v33;
  }

  v34 = 0;
  v36 = *a1;
  v37._object = *(a1 + 8);
  v31 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v4;
  v8 = *(a1 + 40);
  v30 = *(a1 + 48);
  v9 = *(a1 + 32);
  if (!v8)
  {
    v9 = 0;
  }

  v35 = v9;
  v32 = *(a1 + 56);
  v10 = 0xE000000000000000;
  if (v8)
  {
    v10 = v8;
  }

  v37._countAndFlagsBits = v10;

  Model.modelDescription.setter(v31, v6);

  Model.versionString.setter(v30, v32);
  object = v37._object;

  Model.author.setter(v36, object);
  v12 = *(a1 + 64);

  Model.license.setter(v35, v37._countAndFlagsBits);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  }

  Model.metadata.setter(v13);
  v14 = v33;
  v35 = v33;

  v15 = Model.metadata.modify(v27);
  v16 = v34;
  specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v14, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v17);
  v34 = v16;
  v15(v27, 0);
  v37 = getOSVersion()();
  v29 = v7;
  v36 = Model.metadata.modify(v27);
  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v18);
  v28 = *v19;
  *v19 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37._countAndFlagsBits, v37._object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  *v19 = v28;
  v36(v27, 0);
  v21 = Model.nestedModels.getter();
  v22 = v21;
  ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification5ModelVG_Sis5NeverOTg5032_s8CreateML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n(v21);
  v35;
  v22;
  v24 = specialized Sequence<>.max()(ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n);
  LOBYTE(v14) = v25;
  ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n;
  v26 = 1;
  if ((v14 & 1) == 0)
  {
    v26 = v24;
  }

  return Model.specificationVersion.setter(v26);
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = *(a1 + 32);
  if (v1 != 1)
  {
    v3 = 0;
    do
    {
      if (result <= *(a1 + 8 * v3 + 40))
      {
        result = *(a1 + 8 * v3 + 40);
      }

      ++v3;
    }

    while (v1 - 1 != v3);
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    do
    {
      v3 = fmax(*(a1 + 8 * v5++ + 40), v2);
      v2 = v3;
    }

    while (v1 - 1 != v5);
  }

  return *&v3;
}

void MLBoostedTreeRegressor.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLBoostedTreeRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLBoostedTreeRegressor.targetColumn.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLBoostedTreeRegressor(0) + 24));

  return v1;
}

uint64_t MLBoostedTreeRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLBoostedTreeRegressor.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLBoostedTreeRegressor.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLBoostedTreeRegressor(0);
  return outlined init with copy of MLBoostedTreeRegressor.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLBoostedTreeRegressor.trainingMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 36);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t MLBoostedTreeRegressor.validationMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 40);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t static MLBoostedTreeRegressor._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLBoostedTreeRegressor._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  return swift_task_switch(MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:)()
{
  v11 = *(v0 + 48);
  v10 = *(v0 + 32);
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MLBoostedTreeRegressor(0);
  *(v0 + 64) = v2;
  v3 = v2[9];
  *(v0 + 96) = v3;
  *(v1 + v3 + 16) = 0;
  *(v1 + v3) = 0;
  v4 = v2[10];
  *(v0 + 100) = v4;
  v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v6 = swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
  *v7 = 0xD0000000000000C0;
  *(v7 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 48) = 0;
  *(v1 + v4) = v6;
  *(v1 + v4 + 8) = 0;
  *(v1 + v4 + 16) = 1;
  *(v1 + v2[7]) = v11;
  *(v1 + v2[6]) = v10;
  v8 = swift_task_alloc(288);
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 100);
  v2 = *(v0 + 96);
  v6 = *(v0 + 48);
  v7 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined destroy of MLBoostedTreeRegressor.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for TreeRegressorModel);
  v7;
  v6;
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v2), *(v3 + v2 + 8), *(v3 + v2 + 16));
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v1), *(v3 + v1 + 8), *(v3 + v1 + 16));
  return (*(v0 + 8))();
}

uint64_t MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = v1;
  v5;
  if (v1)
  {
    v6 = MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 88) = a1;
    v6 = MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v143._rawValue = a4;
  _ = a3;
  v7 = v5;
  v140 = v5;
  v139._countAndFlagsBits = a2;
  v151 = v6;
  v149 = a5;
  v148 = a1;
  v152 = type metadata accessor for DataFrame(0);
  v150 = *(v152 - 8);
  v8 = *(v150 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v132 = &v110;
  v128 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v11 = *(v128 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v126 = &v110;
  v127 = v11;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v141 = &v110;
  v124 = type metadata accessor for TreeRegressor(0);
  v16 = *(*(v124 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v139._object = &v110;
  v136 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v19 = *(*(v136 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v135 = &v110;
  v134 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v22 = *(*(v134 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v138 = &v110;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v129 = &v110;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v144 = &v110;
  v145 = type metadata accessor for BoostedTreeConfiguration(0);
  v147 = *(v145 - 8);
  v29 = *(v147 + 8);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v125 = &v110;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v137 = &v110;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v146 = &v110;
  v36 = type metadata accessor for MLBoostedTreeRegressor(0);
  v37 = *(v36 + 36);
  v130 = v7 + v37;
  *(v7 + v37 + 16) = 0;
  *(v7 + v37) = 0;
  v38 = *(v36 + 40);
  v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v40 = swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
  *v41 = 0xD0000000000000C0;
  *(v41 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v41 + 16) = 0;
  *(v41 + 32) = 0;
  *(v41 + 48) = 0;
  *(v7 + v38) = v40;
  *(v7 + v38 + 8) = 0;
  v131 = v38;
  *(v7 + v38 + 16) = 1;
  v42 = _;
  v43._countAndFlagsBits = 0x6C6562614CLL;
  v43._object = 0xE500000000000000;
  v44._countAndFlagsBits = v139._countAndFlagsBits;
  v44._object = _;
  v45 = v148;
  DataFrame.validateColumnIsNumeric(_:context:)(v44, v43);
  if (v46)
  {
    v42;
    v143._rawValue;
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    v47 = v45;
    v48 = v152;
    v49 = v150;
LABEL_3:
    (*(v49 + 1))(v47, v48);
    v50 = v140;
LABEL_4:
    outlined consume of Result<_RegressorMetrics, Error>(*v130, *(v130 + 8), *(v130 + 16));
    return outlined consume of Result<_RegressorMetrics, Error>(*(v50 + v131), *(v50 + v131 + 8), *(v50 + v131 + 16));
  }

  v133 = v36;
  rawValue = v143._rawValue;
  if (v143._rawValue)
  {

    DataFrame.validateContainsColumns(_:context:)(rawValue, __PAIR128__(0xE700000000000000, 0x65727574616546));
    v50 = v140;
    if (v53)
    {
      v42;
      swift_bridgeObjectRelease_n(rawValue, 2);
      outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
      (*(v150 + 8))(v148, v152);
      goto LABEL_4;
    }

    v151 = 0;
    rawValue;
  }

  else
  {
    v151 = 0;
  }

  v54 = v149;
  v55 = v149;
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters(v149, &v112);
  BoostedTreeConfiguration.init()(v55);
  BoostedTreeConfiguration.maximumDepth.setter(v114);
  BoostedTreeConfiguration.maximumIterations.setter(v115);
  BoostedTreeConfiguration.minimumLossReduction.setter(v116);
  BoostedTreeConfiguration.minimumChildWeight.setter(v117);
  BoostedTreeConfiguration.randomSeed.setter(v118);
  BoostedTreeConfiguration.learningRate.setter(v119);
  BoostedTreeConfiguration.earlyStoppingIterationCount.setter(v120, v121);
  BoostedTreeConfiguration.rowSubsample.setter(v122);
  BoostedTreeConfiguration.columnSubsample.setter(v123);
  outlined destroy of MLBoostedTreeRegressor.ModelParameters(&v112);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &v110, &demangling cache variable for type metadata for Any?);
  v56 = v144;
  if (!v111)
  {
    BUG();
  }

  v57 = (v144 + *(v134 + 48));
  outlined init with take of Any(&v110, &v112);
  v58 = v135;
  swift_dynamicCast(v135, &v112, &type metadata for Any + 8, v136, 7);
  v59 = v56;
  v60 = v148;
  v61 = v151;
  MLBoostedTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v59, v57, v148);
  if (v61)
  {
    _;
    v143._rawValue;
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    (*(v150 + 8))(v60, v152);
    outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
    v47 = v146;
    v48 = v145;
    v49 = v147;
    goto LABEL_3;
  }

  v136 = v57;
  outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  v62 = _;
  v63 = v143._rawValue;
  v64 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v144, v139._countAndFlagsBits, _, v143._rawValue);
  v151 = 0;
  v65 = v63;
  v66 = v64;
  v65;
  v67 = *(v147 + 2);
  v68 = v145;
  v67(v137, v146, v145);
  v69 = v67;
  object = v139._object;
  *v139._object = v139._countAndFlagsBits;
  object[1] = v62;
  v71 = v66;
  object[2] = v66;
  object[3] = v66;
  object[4] = 0xD000000000000013;
  object[5] = "raining samples." + 0x8000000000000000;
  v72 = v125;
  v69(v125, v137, v68);
  v143._rawValue = v71;
  swift_bridgeObjectRetain_n(v71, 2);

  BaseTreeRegressor.init(configuration:)(v72);
  v73 = *(v147 + 1);
  v74 = v145;
  v73(v137, v145);
  v75 = v151;
  TreeRegressor.fitted(to:validateOn:eventHandler:)(v144, v136, 0, 0);
  if (v75)
  {
    _;
    v143._rawValue;
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    (*(v150 + 8))(v148, v152);
    outlined destroy of MLActivityClassifier.ModelParameters(object, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v73(v146, v74);
    v50 = v140;
    goto LABEL_4;
  }

  v147 = v73;
  v151 = 0;
  if (!AnalyticsReporter.init()())
  {
    v76 = v144;
    v77 = v129;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, v129, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v78 = v77 + *(v134 + 48);
    v79 = DataFrame.shape.getter(v76);
    (*(v150 + 8))(v77, v152);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_boostedTreeRegressor, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), v79);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, &demangling cache variable for type metadata for DataFrame?);
  }

  v80 = v133;
  v81 = *(v133 + 24);
  v82 = v140;
  *(v140 + v81) = v139._countAndFlagsBits;
  *(v82 + v81 + 8) = _;
  v139._countAndFlagsBits = v82 + *(v80 + 32);
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters(v149, v139._countAndFlagsBits);
  *(v82 + *(v80 + 28)) = v143;
  v83 = v126;
  outlined init with copy of MLTrainingSessionParameters(v141, v126, type metadata accessor for TreeRegressorModel);
  v84 = *(v128 + 80);
  v85 = ~*(v128 + 80) & (v84 + 16);
  v86 = swift_allocObject(&unk_393038, v85 + v127, v84 | 7);
  outlined init with take of MLClassifierMetrics(v83, v86 + v85, type metadata accessor for TreeRegressorModel);
  v87 = v151;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:), v86);
  if (v87)
  {

    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    (*(v150 + 8))(v148, v152);
    outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v139._object, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v147(v146, v145);
    v143._rawValue;
    _;
    v50 = v82;
LABEL_20:
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v139._countAndFlagsBits);
    goto LABEL_4;
  }

  v89 = v88;

  v90 = *(v133 + 20);
  v135 = v89;
  *(v82 + v90) = v89;
  outlined init with copy of MLTrainingSessionParameters(v141, v82, type metadata accessor for TreeRegressorModel);
  v91 = v144;
  TreeRegressorModel.computeMetrics(on:)(v144);
  v151 = 0;
  v92 = v113;
  v93 = v130;
  outlined consume of Result<_RegressorMetrics, Error>(*v130, *(v130 + 8), *(v130 + 16));
  *v93 = v112;
  *(v93 + 16) = v92;
  v94 = v138;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, v138, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v95 = v94 + *(v134 + 48);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, 1, v152);
  v97 = _;
  v98 = v150;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    v99 = *(v98 + 8);
    v100 = v152;
    v99(v148, v152);
    outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v139._object, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v147(v146, v145);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for DataFrame?);
    return (v99)(v138, v100);
  }

  else
  {
    v101 = v132;
    v102 = v95;
    v103 = v152;
    (*(v150 + 32))(v132, v102, v152);
    v150 = *(v98 + 8);
    (v150)(v138, v103);
    v50 = v140;
    v104 = v151;
    TreeRegressorModel.computeMetrics(on:)(v101);
    if (v104)
    {
      outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
      v105 = v150;
      (v150)(v148, v152);
      v105(v132, v152);
      outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v139._object, type metadata accessor for TreeRegressor);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      v147(v146, v145);
      outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for TreeRegressorModel);
      v143._rawValue;
      v97;

      goto LABEL_20;
    }

    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    v106 = v150;
    (v150)(v148, v152);
    v106(v101, v152);
    outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v139._object, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v147(v146, v145);
    v107 = v50;
    v108 = v113;
    v109 = v131;
    result = outlined consume of Result<_RegressorMetrics, Error>(*(v107 + v131), *(v107 + v131 + 8), *(v107 + v131 + 16));
    *(v107 + v109) = v112;
    *(v107 + v109 + 16) = v108;
  }

  return result;
}

uint64_t closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  v5;
  if (v1)
  {
    return (*(v6 + 8))();
  }

  *(v4 + 32) = a1;
  return swift_task_switch(closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  DataFrame.init(_:)(&v11);
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters(a5, &v11);
  MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLBoostedTreeRegressor.ModelParameters(a5);
}

uint64_t MLBoostedTreeRegressor.init(checkpoint:)(uint64_t a1)
{
  v63 = v2;
  v80 = a1;
  v3 = v1;
  v72 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v4 = *(*(v72 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v73 = v60;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v71 = v60;
  v70 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v9 = *(v70 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = v60;
  v69 = v9;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v79 = v60;
  v64 = type metadata accessor for BoostedTreeConfiguration(0);
  v65 = *(v64 - 8);
  v14 = *(v65 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v66 = v60;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v78 = v60;
  v77 = type metadata accessor for TreeRegressor(0);
  v19 = *(*(v77 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v75 = v60;
  v22 = type metadata accessor for MLBoostedTreeRegressor(0);
  v23 = *(v22 + 36);
  *(v3 + v23 + 16) = 0;
  v62 = v23;
  *(v3 + v23) = 0;
  v76 = v22;
  v24 = *(v22 + 40);
  v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v25 = swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
  *v26 = 0xD0000000000000C0;
  *(v26 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v26 + 16) = 0;
  *(v26 + 32) = 0;
  *(v26 + 48) = 0;
  *(v3 + v24) = v25;
  *(v3 + v24 + 8) = 0;
  v74 = v3;
  v61 = v24;
  *(v3 + v24 + 16) = 1;
  v27 = v80;
  switch(*(v27 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v28 = 0x696C616974696E69;
      v29 = 0xEB0000000064657ALL;
      break;
    case 1:
      v28 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      v30 = 0xE800000000000000;
      0;
      goto LABEL_9;
    case 3:
      v28 = 0x697461756C617665;
LABEL_7:
      v29 = 0xEA0000000000676ELL;
      break;
    case 4:
      v29 = 0xEB00000000676E69;
      v28 = 0x636E657265666E69;
      break;
    case 5:
      JUMPOUT(0x1D7CBCLL);
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)(v28, v29, 0x676E696E69617274, 0xE800000000000000, 0);
  v30 = v29;
  v29;
  if (v31)
  {
LABEL_9:
    v32 = v78;
    BoostedTreeConfiguration.init()(v30);
    v33 = v75;
    *v75 = 0;
    v33[1] = 0xE000000000000000;
    v33[2] = _swiftEmptyArrayStorage;
    v33[3] = _swiftEmptyArrayStorage;
    v33[4] = 0xD000000000000013;
    v33[5] = ("raining samples." + 0x8000000000000000);
    v34 = v66;
    v35 = v32;
    v36 = v64;
    v37 = v65;
    (*(v65 + 16))(v66, v35, v64);
    BaseTreeRegressor.init(configuration:)(v34);
    (*(v37 + 8))(v78, v36);
    v38 = lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor();
    v39 = v79;
    v40 = v80;
    v41 = v63;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v80, v77, v38);
    if (!v41)
    {
      v43 = v68;
      outlined init with copy of MLTrainingSessionParameters(v39, v68, type metadata accessor for TreeRegressorModel);
      v44 = *(v70 + 80);
      v45 = ~*(v70 + 80) & (v44 + 16);
      v46 = swift_allocObject(&unk_393060, v45 + v69, v44 | 7);
      outlined init with take of MLClassifierMetrics(v43, v46 + v45, type metadata accessor for TreeRegressorModel);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLBoostedTreeRegressor.init(checkpoint:), v46);
      v48 = v47;

      v50 = v74;
      *(v74 + v76[5]) = v48;
      outlined init with copy of MLTrainingSessionParameters(v79, v50, type metadata accessor for TreeRegressorModel);
      v51 = v71;
      *v71 = 0;
      *(v51 + 16) = 256;
      v77 = 0;
      v52 = v72;
      swift_storeEnumTagMultiPayload(v51, v72, 0);
      v53 = v76[8];
      *(v50 + v53 + 16) = 0;
      *(v50 + v53) = 0;
      *(v50 + v53 + 32) = 6;
      v54 = _mm_loadh_ps(&qword_33D880);
      *(v50 + v53 + 40) = 10;
      *(v50 + v53 + 48) = v54;
      *(v50 + v53 + 64) = 42;
      *(v50 + v53 + 72) = 0x3FD3333333333333;
      *(v50 + v53 + 80) = 0;
      v78 = (v50 + v53);
      *(v50 + v53 + 88) = 1;
      *(v50 + v53 + 96) = xmmword_343970;
      v55 = v73;
      outlined init with copy of MLTrainingSessionParameters(v51, v73, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
      v60[3] = v52;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
      outlined init with take of MLClassifierMetrics(v55, boxed_opaque_existential_0, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
      outlined assign with take of Any?(v60, v78);
      outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
      v57 = v76;
      v58 = v76[6];
      *(v50 + v58) = 0;
      *(v50 + v58 + 8) = 0xE000000000000000;
      outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for TreeRegressor);
      result = v57[7];
      *(v50 + result) = _swiftEmptyArrayStorage;
      return result;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v33, type metadata accessor for TreeRegressor);
  }

  else
  {
    swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
    *v42 = 0xD000000000000041;
    *(v42 + 8) = "ssor\n\nParameters\n" + 0x8000000000000000;
    *(v42 + 16) = 0;
    *(v42 + 32) = 0;
    *(v42 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLCheckpoint);
  }

  v49 = v74;
  outlined consume of Result<_RegressorMetrics, Error>(*(v74 + v62), *(v74 + v62 + 8), *(v74 + v62 + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(v49 + v61), *(v49 + v61 + 8), *(v49 + v61 + 16));
}

void *static MLBoostedTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = a2;
  v7 = type metadata accessor for DataFrame(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *(a1 + 8);
  v19 = *a1;
  v20 = v12;
  outlined copy of Result<_DataTable, Error>(v19, v12);
  DataFrame.init(_:)(&v19);
  v13 = static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeRegressor>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

__int128 *static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v7 = type metadata accessor for DataFrame(0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 8);
  v14 = *a1;
  v15 = v11;
  outlined copy of Result<_DataTable, Error>(v14, v11);
  DataFrame.init(_:)(&v14);
  v12 = static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLBoostedTreeRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeRegressor>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

__int128 *static MLBoostedTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeRegressor>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

__int128 *static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = v6;
  v67 = a6;
  v64 = a5;
  v65 = a4;
  v59 = a3;
  v60 = a2;
  v69 = a1;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v63 = &v45;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v61 = &v45;
  v12 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v62 = &v45;
  v15 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v19 = *(*(v71 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v70 = &v45;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v66 = &v45;
  v24 = alloca(v19);
  v25 = alloca(v19);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v64, &v57, &demangling cache variable for type metadata for Any?);
  if (!v58)
  {
    BUG();
  }

  v26 = (&v45 + *(v71 + 48));
  v68 = &v45;
  outlined init with take of Any(&v57, &v45);
  v27 = v68;
  swift_dynamicCast(&v45, &v45, &type metadata for Any + 8, v15, 7);
  v28 = v72;
  MLBoostedTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v27, v26, v69);
  outlined destroy of MLActivityClassifier.ModelParameters(&v45, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  if (!v28)
  {
    v69 = 0;
    v29 = v66;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v66, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v30 = v71;
    v72 = v29 + *(v71 + 48);
    v31 = v27;
    v32 = v70;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v70, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v71 = v32 + *(v30 + 48);
    outlined init with copy of MLBoostedTreeRegressor.ModelParameters(v64, &v45);

    v33 = v59;
    v34 = v59;

    v35 = v62;
    BoostedTreeConfiguration.init()(v34);
    BoostedTreeConfiguration.maximumDepth.setter(v47);
    BoostedTreeConfiguration.maximumIterations.setter(v48);
    BoostedTreeConfiguration.minimumLossReduction.setter(v49);
    BoostedTreeConfiguration.minimumChildWeight.setter(v50);
    BoostedTreeConfiguration.randomSeed.setter(v51);
    BoostedTreeConfiguration.learningRate.setter(v52);
    BoostedTreeConfiguration.earlyStoppingIterationCount.setter(v53, v54);
    BoostedTreeConfiguration.rowSubsample.setter(v55);
    BoostedTreeConfiguration.columnSubsample.setter(v56);
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(&v45);
    v36 = v61;
    outlined init with copy of MLTrainingSessionParameters(v67, v61, type metadata accessor for MLTrainingSessionParameters);
    v27 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_allocObject(v27, *(v27 + 12), *(v27 + 26));
    v37 = v69;
    v38 = TreeRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v66, v71, v60, v33, v65, v35, v36);
    if (v37)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      v39 = type metadata accessor for DataFrame(0);
      (*(*(v39 - 8) + 8))(v70, v39);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for DataFrame?);
    }

    else
    {
      v40 = v38;
      v41 = type metadata accessor for DataFrame(0);
      (*(*(v41 - 8) + 8))(v70, v41);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for DataFrame?);
      v46 = v27;
      v47 = &protocol witness table for TreeRegressorTrainingSessionDelegate;
      *&v45 = v40;
      v42 = v63;
      outlined init with copy of MLTrainingSessionParameters(v67, v63, type metadata accessor for MLTrainingSessionParameters);
      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>);
      swift_allocObject(v43, *(v43 + 48), *(v43 + 52));

      v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v45, v42, 4);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    }
  }

  return v27;
}

uint64_t static MLBoostedTreeRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = TreeRegressorTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for TreeRegressorTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLBoostedTreeRegressor.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  if (a2)
  {
    v19 = a1;
    swift_storeEnumTagMultiPayload(&v19, v6, 1);
    swift_errorRetain(a1);
    v23(&v19);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_393098, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:)()
{

  v1 = swift_task_alloc(80);
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLBoostedTreeRegressor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[37] = a2;
  v2[36] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?);
  v2[38] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLBoostedTreeRegressor(0);
  v2[39] = v4;
  v2[40] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[41] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[42] = v6;
  v7 = *(v6 - 8);
  v2[43] = v7;
  v2[44] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[45] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[46] = v9;
  v2[47] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLBoostedTreeRegressor.init(delegate:), 0, 0);
}

uint64_t MLBoostedTreeRegressor.init(delegate:)()
{
  v1 = v0[46];
  v2 = v0[45];
  v3 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v0[37];
  swift_beginAccess(v3, (v0 + 30), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[47];
  v5 = v0[46];
  v6 = v0[44];
  v18 = v0[43];
  v15 = v0[42];
  v16 = v0[41];
  v7 = v0[37];
  v14 = v0[38];
  outlined init with take of MLClassifierMetrics(v0[45], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLBoostedTreeRegressor.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, (v0 + 33), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for TreeRegressorModel?);
  v11 = type metadata accessor for TreeRegressorModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLBoostedTreeRegressor.ModelParameters((v0 + 2), (v0 + 16));

  v12 = swift_task_alloc(112);
  v0[48] = v12;
  *v12 = v0;
  v12[1] = MLBoostedTreeRegressor.init(delegate:);
  return MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(v0[40], v0[38], v17, v19, v9, (v0 + 16));
}

{
  v2 = *(*v1 + 384);
  *(*v1 + 392) = v0;
  v2;
  if (v0)
  {
    v3 = MLBoostedTreeRegressor.init(delegate:);
  }

  else
  {
    v3 = MLBoostedTreeRegressor.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 296);
  outlined init with take of MLClassifierMetrics(*(v0 + 320), *(v0 + 288), type metadata accessor for MLBoostedTreeRegressor);
  v2 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v2 == -1)
  {
    BUG();
  }

  v17 = *(v0 + 376);
  v16 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v18 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  v15 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v18, v15, v2);
  outlined destroy of MLBoostedTreeRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v5 = *(v16 + 36);
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16));
  *(v3 + v5) = v18;
  *(v3 + v5 + 8) = v15;
  *(v3 + v5 + 16) = v2 & 1;
  v6 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
  v7 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
  v19 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  outlined copy of MLRegressorMetrics?(v19, v6, v7);

  if (v7 != -1)
  {
    v8 = *(v0 + 288);
    v9 = *(*(v0 + 312) + 40);
    outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v9), *(v8 + v9 + 8), *(v8 + v9 + 16));
    *(v8 + v9) = v19;
    *(v8 + v9 + 8) = v6;
    *(v8 + v9 + 16) = v7 & 1;
  }

  v10 = *(v0 + 360);
  v11 = *(v0 + 352);
  v12 = *(v0 + 328);
  v20 = *(v0 + 304);
  v13 = *(v0 + 320);
  *(v0 + 376);
  v10;
  v11;
  v12;
  v13;
  v20;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v7 = *(v0 + 328);
  v6 = *(v0 + 320);
  v5 = *(v0 + 304);

  outlined destroy of MLBoostedTreeRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v1;
  v2;
  v3;
  v7;
  v6;
  v5;
  return (*(v0 + 8))();
}

uint64_t outlined copy of Result<_RegressorMetrics, Error>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain(a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  type metadata accessor for TreeRegressorModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor()
{
  result = lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor;
  if (!lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor)
  {
    v1 = type metadata accessor for TreeRegressor(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for TreeRegressor, v1);
    lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor;
  if (!lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor)
  {
    v1 = type metadata accessor for TreeRegressor(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for TreeRegressor, v1);
    lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in MLBoostedTreeRegressor.init(checkpoint:)(uint64_t a1)
{
  type metadata accessor for TreeRegressorModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestRegressor.init(checkpoint:)(a1);
}

id sub_1D8F3E()
{
  v1 = v0;
  result = MLBoostedTreeRegressor.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLBoostedTreeRegressor(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;
    v3 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v6 = a2[2];

    if (v6)
    {
      a1[2] = v6;
      a1[3] = a2[3];
      a1[4] = a2[4];
    }

    else
    {
      a1[4] = a2[4];
      *(a1 + 1) = *(a2 + 1);
    }

    v8 = *(type metadata accessor for TreeRegressorModel(0) + 24);
    v9 = type metadata accessor for BaseTreeRegressorModel(0);
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    v10 = a3[5];
    v11 = *(a2 + v10);
    *(v3 + v10) = v11;
    v12 = a3[6];
    *(v3 + v12) = *(a2 + v12);
    *(v3 + v12 + 8) = *(a2 + v12 + 8);
    *(v3 + a3[7]) = *(a2 + a3[7]);
    v26 = a3;
    v13 = a3[8];
    v14 = v3 + v13;
    v15 = a2 + v13;
    v16 = *(a2 + v13 + 24);
    v11;

    if (v16)
    {
      *(v14 + 3) = v16;
      (**(v16 - 8))(v14, v15, v16);
    }

    else
    {
      v17 = *v15;
      *(v14 + 1) = *(v15 + 1);
      *v14 = v17;
    }

    *(v14 + 2) = *(v15 + 2);
    *(v14 + 3) = *(v15 + 3);
    *(v14 + 4) = *(v15 + 4);
    *(v14 + 10) = *(v15 + 10);
    v14[88] = v15[88];
    *(v14 + 6) = *(v15 + 6);
    v18 = v26[9];
    v19 = *(a2 + v18);
    v20 = *(a2 + v18 + 8);
    v27 = *(a2 + v18 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v19, v20, v27);
    *(v3 + v18) = v19;
    *(v3 + v18 + 8) = v20;
    *(v3 + v18 + 16) = v27;
    v21 = v26[10];
    v22 = *(a2 + v21);
    v23 = *(a2 + v21 + 8);
    v24 = *(a2 + v21 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v22, v23, v24);
    *(v3 + v21) = v22;
    *(v3 + v21 + 8) = v23;
    *(v3 + v21 + 16) = v24;
  }

  return v3;
}

void *initializeWithCopy for MLBoostedTreeRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = a2[2];

  if (v5)
  {
    a1[2] = v5;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v6 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v7 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
  v8 = a3[5];
  v9 = *(a2 + v8);
  *(a1 + v8) = v9;
  v10 = a3[6];
  *(a1 + v10) = *(a2 + v10);
  *(a1 + v10 + 8) = *(a2 + v10 + 8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v24 = a3;
  v11 = a3[8];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(a2 + v11 + 24);
  v9;

  if (v14)
  {
    *(v12 + 3) = v14;
    (**(v14 - 8))(v12, v13, v14);
  }

  else
  {
    v15 = *v13;
    *(v12 + 1) = *(v13 + 1);
    *v12 = v15;
  }

  *(v12 + 2) = *(v13 + 2);
  *(v12 + 3) = *(v13 + 3);
  *(v12 + 4) = *(v13 + 4);
  *(v12 + 10) = *(v13 + 10);
  v12[88] = v13[88];
  *(v12 + 6) = *(v13 + 6);
  v16 = v24[9];
  v17 = *(a2 + v16);
  v18 = *(a2 + v16 + 8);
  v25 = *(a2 + v16 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v17, v18, v25);
  *(a1 + v16) = v17;
  *(a1 + v16 + 8) = v18;
  *(a1 + v16 + 16) = v25;
  v19 = v24[10];
  v20 = *(a2 + v19);
  v21 = *(a2 + v19 + 8);
  v22 = *(a2 + v19 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v20, v21, v22);
  *(a1 + v19) = v20;
  *(a1 + v19 + 8) = v21;
  *(a1 + v19 + 16) = v22;
  return a1;
}

void *assignWithCopy for MLBoostedTreeRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4;
  v5 = a1 + 2;
  v6 = a2 + 2;
  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (v8)
    {
      a1[2] = v8;

      v7;
      a1[3] = a2[3];
      v9 = a1[4];
      a1[4] = a2[4];

      v9;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v5 = *v6;
      a1[4] = a2[4];
    }
  }

  else if (v8)
  {
    a1[2] = v8;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *v5 = *v6;
  }

  v10 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v11 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  v12 = a3[5];
  v13 = *(a2 + v12);
  v14 = *(a1 + v12);
  *(a1 + v12) = v13;
  v13;

  v15 = a3[6];
  *(a1 + v15) = *(a2 + v15);
  v16 = *(a1 + v15 + 8);
  *(a1 + v15 + 8) = *(a2 + v15 + 8);

  v16;
  v17 = a3[7];
  v18 = *(a1 + v17);
  *(a1 + v17) = *(a2 + v17);

  v18;
  v19 = a3[8];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = *(a2 + v19 + 24);
  if (!*(a1 + v19 + 24))
  {
    if (v22)
    {
      *(v20 + 3) = v22;
      (**(v22 - 8))(v20, v21);
      goto LABEL_15;
    }

LABEL_14:
    v25 = *v21;
    *(v20 + 1) = *(v21 + 1);
    *v20 = v25;
    goto LABEL_15;
  }

  v24 = (a1 + v19);
  if (!v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0(v24, (a2 + v19));
LABEL_15:
  *(v20 + 4) = *(v21 + 4);
  *(v20 + 5) = *(v21 + 5);
  *(v20 + 6) = *(v21 + 6);
  *(v20 + 7) = *(v21 + 7);
  *(v20 + 8) = *(v21 + 8);
  *(v20 + 9) = *(v21 + 9);
  *(v20 + 10) = *(v21 + 10);
  v20[88] = v21[88];
  *(v20 + 12) = *(v21 + 12);
  *(v20 + 13) = *(v21 + 13);
  v26 = a3[9];
  v27 = *(a2 + v26);
  v28 = *(a2 + v26 + 8);
  v40 = *(a2 + v26 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v27, v28, v40);
  v29 = *(a1 + v26);
  v30 = *(a1 + v26 + 8);
  *(a1 + v26) = v27;
  *(a1 + v26 + 8) = v28;
  v31 = *(a1 + v26 + 16);
  *(a1 + v26 + 16) = v40;
  outlined consume of Result<_RegressorMetrics, Error>(v29, v30, v31);
  v32 = a3[10];
  v33 = *(a2 + v32);
  v34 = *(a2 + v32 + 8);
  v35 = *(a2 + v32 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v33, v34, v35);
  v36 = *(a1 + v32);
  v37 = *(a1 + v32 + 8);
  *(a1 + v32) = v33;
  *(a1 + v32 + 8) = v34;
  v38 = *(a1 + v32 + 16);
  *(a1 + v32 + 16) = v35;
  outlined consume of Result<_RegressorMetrics, Error>(v36, v37, v38);
  return a1;
}

void *assignWithTake for MLBoostedTreeRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a1[1];
  a1[1] = a2[1];
  v6;
  v7 = a1 + 2;
  v8 = a2 + 2;
  v9 = a1[2];
  if (v9)
  {
    v10 = a2[2];
    if (v10)
    {
      a1[2] = v10;
      v9;
      a1[3] = a2[3];
      v11 = a1[4];
      a1[4] = a2[4];
      v11;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v7 = *v8;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v7 = *v8;
  }

  v12 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v13 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = a3[5];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v16 = a3[6];
  *(a1 + v16) = *(a2 + v16);
  v17 = *(a1 + v16 + 8);
  *(a1 + v16 + 8) = *(a2 + v16 + 8);
  v17;
  v18 = a3[7];
  v19 = *(a1 + v18);
  *(a1 + v18) = *(a2 + v18);
  v19;
  v20 = a3[8];
  v21 = a1 + v20;
  if (*(a1 + v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v20));
  }

  v22 = *(a2 + v20);
  *(v21 + 1) = *(a2 + v20 + 16);
  *v21 = v22;
  *(a1 + v20 + 32) = *(a2 + v20 + 32);
  *(a1 + v20 + 48) = *(a2 + v20 + 48);
  *(a1 + v20 + 64) = *(a2 + v20 + 64);
  *(a1 + v20 + 72) = *(a2 + v20 + 72);
  v21[88] = *(a2 + v20 + 88);
  *(v21 + 10) = *(a2 + v20 + 80);
  *(a1 + v20 + 96) = *(a2 + v20 + 96);
  v23 = a3[9];
  v24 = *(a2 + v23 + 16);
  v25 = *(a1 + v23);
  v26 = *(a1 + v23 + 8);
  *(a1 + v23) = *(a2 + v23);
  v27 = *(a1 + v23 + 16);
  *(a1 + v23 + 16) = v24;
  outlined consume of Result<_RegressorMetrics, Error>(v25, v26, v27);
  v28 = a3[10];
  v29 = *(a2 + v28 + 16);
  v30 = *(a1 + v28);
  v31 = *(a1 + v28 + 8);
  *(a1 + v28) = *(a2 + v28);
  v32 = *(a1 + v28 + 16);
  *(a1 + v28 + 16) = v29;
  outlined consume of Result<_RegressorMetrics, Error>(v30, v31, v32);
  return a1;
}

uint64_t sub_1D985D(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for TreeRegressorModel(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return v4;
}

uint64_t sub_1D98D7(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for TreeRegressorModel(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLBoostedTreeRegressor(uint64_t a1)
{
  result = type metadata accessor for TreeRegressorModel(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.UnknownObject + 64;
    v3[2] = &unk_3451E8;
    v3[3] = &value witness table for Builtin.BridgeObject + 64;
    v3[4] = &unk_345200;
    v3[5] = &unk_345218;
    v3[6] = &unk_345218;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a4);
  v7 = *a4;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, v8, isUniquelyReferenced_nonNull_native, &v7);
  result = v7;
  *a4 = v7;
  return result;
}

{
  v8 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a4);
  v7 = *a4;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, v8, isUniquelyReferenced_nonNull_native, &v7);
  result = v7;
  *a4 = v7;
  return result;
}

uint64_t sub_1D9C3B()
{
  swift_unknownObjectRelease(*(v0 + 16));

  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v5 = v1[6];
  v6 = swift_task_alloc(64);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  DataFrame.init()(v2);
  v4 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
  v5 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
  v7 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
  v9 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
  v11 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics, 1, 1, v11);
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

char *LogisticRegressionClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:modelParameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v85 = v7;
  v9 = v8;
  v80 = a6;
  context = a5;
  _ = a4;
  v73._countAndFlagsBits = a3;
  v83 = a2;
  v81 = a1;
  v69 = *v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v70 = &v66;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v75 = &v66;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v77 = &v66;
  v18 = type metadata accessor for DataFrame(0);
  v84 = *(v18 - 8);
  v19 = *(v84 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v74 = &v66;
  v22 = v8 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  v23 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v71 = v22;
  v72 = v23;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  DataFrame.init()(v22);
  v82 = v18;
  __swift_storeEnumTagSinglePayload(v9 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, 1, 1, v18);
  v24 = v9 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
  v25 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  v26 = v9 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
  v27 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
  v28 = v9 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
  v29 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
  v73._object = v9;
  v30 = v9 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics;
  v31 = context;
  v32 = _;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v29);
  countAndFlagsBits = v73._countAndFlagsBits;
  v34 = v85;
  v35 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v81, v73._countAndFlagsBits, v32, v31);
  if (v34)
  {
    v32;
    v31;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v80);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for DataFrame?);
    v36 = *(v84 + 8);
    v37 = v82;
    v36(v81, v82);
    goto LABEL_4;
  }

  v78 = v35;
  v39 = v31;
  v40 = v74;
  v85 = 0;
  v39;
  v41 = v83;
  v42 = v77;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, v77, &demangling cache variable for type metadata for DataFrame?);
  v43 = v42;
  v44 = v82;
  if (__swift_getEnumTagSinglePayload(v43, 1, v82) == 1)
  {
    v45 = v44;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, &demangling cache variable for type metadata for DataFrame?);
    v46 = v84;
LABEL_7:
    v47 = v70;
    (*(v46 + 16))(v70, v81, v45);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, v75, &demangling cache variable for type metadata for DataFrame?);
    v48 = v72;
    outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v80, v47 + v72[8]);
    v49 = v47 + v48[5];
    v50 = v82;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v82);
    outlined assign with take of MLClassifierMetrics?(v75, v49, &demangling cache variable for type metadata for DataFrame?);
    v51 = v48[6];
    *(v47 + v51) = v73._countAndFlagsBits;
    *(v47 + v51 + 8) = _;
    *(v47 + v48[7]) = v78;
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v80);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for DataFrame?);
    (*(v84 + 8))(v81, v50);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
    v52 = v71;
    swift_beginAccess(v71, v68, 33, 0);
    outlined assign with take of MLClassifierMetrics?(v47, v52, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
    swift_endAccess(v68);
    object = v73._object;
    outlined init with take of MLClassifierMetrics(a7, v73._object + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    return object;
  }

  (*(v84 + 32))(v40, v77, v44);
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v54, v67);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = countAndFlagsBits;
  inited[5] = _;

  context = "Algorithm type: " + 0x8000000000000000;
  v56 = v74;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(("Algorithm type: " + 0x8000000000000000), 0xD00000000000001CLL));
  v85 = v57;
  if (v57)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    _;
    v78;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v80);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for DataFrame?);
    v36 = *(v84 + 8);
    v37 = v82;
    v36(v81, v82);
    v36(v56, v37);
  }

  else
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
    v59 = swift_allocObject(v58, 48, 7);
    v59[2] = 2;
    v59[3] = 4;
    v59[4] = &type metadata for String;
    v59[5] = &type metadata for Int;
    v60._countAndFlagsBits = countAndFlagsBits;
    v61 = v59;
    v62 = _;
    v60._object = _;
    DataFrame.validateColumnTypes(_:_:context:)(v60, v59, __PAIR128__(context, 0xD00000000000001CLL));
    if (!v63)
    {
      v85 = 0;
      v64 = v56;
      v45 = v82;
      v65 = v84;
      (*(v84 + 8))(v64);
      v61;
      v46 = v65;
      v41 = v83;
      goto LABEL_7;
    }

    v62;
    v78;
    v61;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v80);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for DataFrame?);
    v36 = *(v84 + 8);
    v37 = v82;
    v36(v81, v82);
    v36(v56, v37);
  }

LABEL_4:
  object = v73._object;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v73._object + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v36(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData], v37);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData], &demangling cache variable for type metadata for DataFrame?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier], &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model], &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics], &demangling cache variable for type metadata for MLClassifierMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics], &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_deallocPartialClassInstance(object, v69, *(*object + 48), *(*object + 52));
  return object;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> LogisticRegressionClassifierTrainingSessionDelegate.setUp()()
{
  v56 = v0;
  v70 = v1;
  v63 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  v62 = *(v63 - 8);
  v2 = *(v62 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v64 = v53;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v61 = v53;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v71 = v53;
  v58 = type metadata accessor for AnyColumn(0);
  v11 = *(*(v58 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v67 = v53;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v66 = v53;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v57 = v53;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v22 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = v70 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v70 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, v54, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, v53, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v68 = v22;
  if (__swift_getEnumTagSinglePayload(v53, 1, v22) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v53, v53, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  v27 = v70 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
  v60 = v70 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
  swift_beginAccess(v70 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData, v55, 33, 0);
  v59 = type metadata accessor for DataFrame(0);
  (*(*(v59 - 8) + 24))(v27, v53, v59);
  swift_endAccess(v55);
  v28 = v68;
  v29 = &v53[*(v68 + 20)];
  v30 = v70 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
  swift_beginAccess(v70 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, v55, 33, 0);
  outlined assign with copy of DataFrame?(v29, v30);
  swift_endAccess(v55);
  v31 = *(v28 + 24);
  v32 = *&v53[v31];
  v65 = v53;
  v33 = *&v53[v31 + 8];
  swift_beginAccess(v60, v55, 32, 0);
  v69 = v32;
  DataFrame.subscript.getter(v32, v33);
  swift_endAccess(v55);
  swift_beginAccess(v30, v55, 32, 0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v59))
  {
    swift_endAccess(v55);
    v34 = 1;
    v35 = v71;
  }

  else
  {
    v35 = v71;
    DataFrame.subscript.getter(v69, v33);
    swift_endAccess(v55);
    v34 = 0;
  }

  __swift_storeEnumTagSinglePayload(v35, v34, 1, v58);
  v36 = v65;
  v37 = *&v65[*(v68 + 28)];
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(&v65[*(v68 + 32)], v55);

  v38 = v57;
  v39 = v56;
  MLLogisticRegressionClassifier.Classifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:parameters:)(v67, v71, v69, v33, v37, v55);
  v40 = v70;
  if (v39)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  }

  else
  {
    v71 = 0;
    v41 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = v38;
    v43 = v40 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v40 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v55, 33, 0);
    outlined assign with take of MLClassifierMetrics?(v42, v43, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
    swift_endAccess(v55);
    v44 = v43;
    v45 = v66;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, v66, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
    if (__swift_getEnumTagSinglePayload(v45, 1, v41) == 1)
    {
      BUG();
    }

    v69 = *v45;
    v46 = *(v45 + 8);
    v68 = *(v45 + 104);
    LOBYTE(v67) = *(v45 + 112);
    v47 = *(v68 + 16);

    v48 = v64;
    BaseLogisticRegressionClassifier.makeTransformer(classCount:)(v47);
    v49 = v61;
    *v61 = v69;
    *(v49 + 8) = v46;
    v50 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    *(v49 + 32) = 0;
    *(v49 + 16) = 0;
    (*(v62 + 32))(v49 + *(v50 + 24), v48, v63);
    v51 = *(v50 + 28);
    *(v49 + v51) = v68;
    *(v49 + v51 + 8) = v67;

    outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v66, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);
    v52 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v70;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v70, v55, 33, 0);
    outlined assign with take of MLClassifierMetrics?(v49, v52, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
    swift_endAccess(v55);
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> LogisticRegressionClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v81 = v1;
  v87 = v2;
  rawValue = from._rawValue;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v80 = v72;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v76 = v72;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v82 = v72;
  v77 = type metadata accessor for AnyColumn(0);
  v78 = *(v77 - 8);
  v11 = *(v78 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v79 = v72;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v83 = v72;
  v88 = type metadata accessor for MLCheckpoint(0);
  v17 = *(*(v88 - 1) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v84 = v72;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v23 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v27 = v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, v73, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v72, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v86 = v23;
  if (__swift_getEnumTagSinglePayload(v72, 1, v23) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v72, v72, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  v28 = v83;
  specialized BidirectionalCollection.last.getter(rawValue);
  if (__swift_getEnumTagSinglePayload(v28, 1, v88) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for MLCheckpoint?);
    v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
    *v30 = 0xD00000000000001DLL;
    *(v30 + 8) = "reated." + 0x8000000000000000;
    *(v30 + 16) = 0;
    *(v30 + 32) = 0;
    *(v30 + 48) = 0;
    swift_willThrow();
LABEL_15:
    outlined destroy of MLActivityClassifier.ModelParameters(v72, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    return;
  }

  v31 = 0xEB0000000064657ALL;
  v32 = v28;
  v33 = v84;
  outlined init with take of MLClassifierMetrics(v32, v84, type metadata accessor for MLCheckpoint);
  switch(*(v33 + *(v88 + 5)))
  {
    case 0:
      v34 = 0x696C616974696E69;
      break;
    case 1:
      v34 = 0x6974636172747865;
      goto LABEL_10;
    case 2:
      0;
      goto LABEL_12;
    case 3:
      v34 = 0x697461756C617665;
LABEL_10:
      v31 = 0xEA0000000000676ELL;
      break;
    case 4:
      v31 = 0xEB00000000676E69;
      v34 = 0x636E657265666E69;
      break;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)(v34, v31, 0x676E696E69617274, 0xE800000000000000, 0);
  v31;
  if ((v35 & 1) == 0)
  {
    v56 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v56, 0, 0);
    *v57 = 0xD000000000000027;
    *(v57 + 8) = "ingSessionDelegate" + 0x8000000000000000;
    *(v57 + 16) = 0;
    *(v57 + 32) = 0;
    *(v57 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
    goto LABEL_15;
  }

LABEL_12:
  v36 = v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
  v83 = (v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData);
  swift_beginAccess(v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData, v75, 33, 0);
  v37 = type metadata accessor for DataFrame(0);
  (*(*(v37 - 8) + 24))(v36, v72, v37);
  swift_endAccess(v75);
  v38 = v86;
  v39 = &v72[v86[5]];
  v40 = v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
  swift_beginAccess(v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, v75, 33, 0);
  outlined assign with copy of DataFrame?(v39, v40);
  swift_endAccess(v75);
  v41 = v38[6];
  v42 = *&v72[v41];
  v88 = v72;
  v43 = *&v72[v41 + 8];
  swift_beginAccess(v83, v75, 32, 0);
  v44 = v79;
  rawValue = v42;
  v45 = v42;
  v46 = v43;
  DataFrame.subscript.getter(v45, v43);
  swift_endAccess(v75);
  v47 = AnyColumn.wrappedElementType.getter(v75);
  (*(v78 + 8))(v44, v77);
  if (swift_dynamicCastMetatype(v47, &type metadata for String))
  {
    v48 = *&v88[v86[7]];

    v49 = v46;
    v50 = v82;
    MLLogisticRegressionClassifier.Classifier.init(labels:annotationColumnName:featureColumnNames:)(_swiftEmptyArrayStorage, 1, rawValue, v49, v48);
    v51 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
    v52 = v87;
    v53 = v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v75, 33, 0);
    v54 = v50;
    v55 = v51;
  }

  else
  {
    v58 = rawValue;
    v59 = v88;
    if (!swift_dynamicCastMetatype(v47, &type metadata for Int))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ELL, ("essionDelegate.swift" + 0x8000000000000000), "CreateML/_LogisticRegressionClassifierTrainingSessionDelegate.swift", 67, 2, 109, 0);
      BUG();
    }

    v60 = *(v59 + v86[7]);

    v61 = v82;
    MLLogisticRegressionClassifier.Classifier.init(labels:annotationColumnName:featureColumnNames:)(_swiftEmptyArrayStorage, 0, v58, v46, v60);
    v55 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
    v62 = v61;
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v55);
    v52 = v87;
    v53 = v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v87 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v75, 33, 0);
    v54 = v62;
  }

  outlined assign with take of MLClassifierMetrics?(v54, v53, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
  swift_endAccess(v75);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(&v88[v86[8]], v75);
  v63 = v52 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
  swift_beginAccess(v52 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v74, 33, 0);
  type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v55);
  v65 = v76;
  if (EnumTagSinglePayload == 1)
  {
    BUG();
  }

  outlined assign with take of MLLogisticRegressionClassifier.ModelParameters(v75, v63 + 24);
  swift_endAccess(v74);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, v65, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
  if (__swift_getEnumTagSinglePayload(v65, 1, v55) == 1)
  {
    BUG();
  }

  v66 = lazy protocol witness table accessor for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier();
  v67 = v80;
  v68 = v84;
  v69 = v81;
  SupervisedTabularEstimator.read(from:)(v84, v55, v66);
  outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
  if (!v69)
  {
    v70 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v70);
    v71 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v87;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v87, v75, 33, 0);
    outlined assign with take of MLClassifierMetrics?(v67, v71, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
    swift_endAccess(v75);
  }
}

Swift::Int_optional __swiftcall LogisticRegressionClassifierTrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
{
  if (*phase == 2)
  {
    v2 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters + v1;
    v3 = 0;
    v4.value = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 28) + v2);
  }

  else
  {
    v3 = 1;
    v4.value = 0;
  }

  v4.is_nil = v3;
  return v4;
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2[15] = v1;
  v2[14] = a1;
  v3 = type metadata accessor for MetricsKey(0);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v2[21] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
  v2[22] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v2[23] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(LogisticRegressionClassifierTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.train(from:)()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters + v0[15];
  swift_beginAccess(v2, (v0 + 2), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, v1, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v3 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v1, 1, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  if (v2 == 1)
  {
    BUG();
  }

  v4 = v0[14];
  v5 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters + v0[15];
  v6 = type metadata accessor for MLTrainingSessionParameters(0);
  v7 = *(*(v6 + 20) + v5);
  if (__OFADD__(v7, v4))
  {
    BUG();
  }

  v8 = *(v5 + *(v6 + 28));
  v9 = v8 - v4;
  if (__OFSUB__(v8, v4))
  {
    BUG();
  }

  v10 = v0;
  v46 = v8;
  v49 = v7 + v4;
  v11 = (v0 + 5);
  v12 = v0 + 8;
  v56 = (v10 + 11);
  if (v7 < v9)
  {
    v9 = v7;
  }

  v13 = type metadata accessor for EventCollector();
  swift_allocObject(v13, 32, 7);
  v14 = EventCollector.init()();
  if (v9 < 0)
  {
    BUG();
  }

  v50 = v14;
  v48 = v9;
  v55 = v10;
  if (v9)
  {
    v15 = v10[15];
    v16 = v10[20];
    v17 = v12;
    v18 = v15 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
    v44 = (OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v15);
    v53 = v15 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v15 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v11, 0, 0);
    v45 = v18;
    swift_beginAccess(v18, v17, 0, 0);
    v19 = v48;
    v47 = v16;
    do
    {
      v51 = v19;
      v20 = v10[22];
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, v20, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
      v21 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
      if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
      {
        BUG();
      }

      (*(v16 + 16))(v10[21], v45, v10[19]);
      swift_beginAccess(v44, v56, 33, 0);
      v22 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
      if (__swift_getEnumTagSinglePayload(v44, 1, v22) == 1)
      {
        BUG();
      }

      v23 = v10[21];

      MLLogisticRegressionClassifier.Classifier.update(_:with:eventHandler:)(v44, v23, partial apply for closure #1 in LogisticRegressionClassifierTrainingSessionDelegate.train(from:), v50);
      v24 = v10[22];
      v25 = v10[19];
      v26 = v55[21];
      swift_endAccess(v56);

      v27 = v26;
      v10 = v55;
      v16 = v47;
      (*(v47 + 8))(v27, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
      --v19;
    }

    while (v51 != 1);
  }

  v28 = v10[18];
  v57 = v10[16];
  v29 = v10[17];
  static MetricsKey.trainingAccuracy.getter();
  ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v28);
  v32 = v31;
  v33 = *(v29 + 8);
  v34 = v28;
  v33(v28, v57);
  if ((v32 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v34 = 3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
  }

  v36 = v55[16];
  v37 = v55[18];
  static MetricsKey.trainingLoss.getter(v34);
  v58 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v37);
  v39 = v38;
  v33(v37, v36);
  if ((v39 & 1) == 0)
  {
    v40 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v40, *&v58);
  }

  v41 = v55[23];
  v42 = v55[22];
  v52 = v55[18];
  v54 = v55[21];
  v59 = specialized _dictionaryUpCast<A, B, C, D>(_:)(_swiftEmptyDictionarySingleton);

  _swiftEmptyDictionarySingleton;
  v41;
  v42;
  v54;
  v52;
  return (v55[1])(v48, v59, v49 >= v46);
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.evaluate(from:)()
{
  v1[26] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v1[27] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (*(*(type metadata accessor for AnyColumn(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[28] = swift_task_alloc(v3);
  v1[29] = swift_task_alloc(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?);
  v1[30] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v1[31] = v5;
  v6 = *(v5 - 8);
  v1[32] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[33] = swift_task_alloc(v7);
  v1[34] = swift_task_alloc(v7);
  v1[35] = swift_task_alloc(v7);
  v1[36] = swift_task_alloc(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
  v1[37] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v1[38] = v9;
  v1[39] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(LogisticRegressionClassifierTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + *(v0 + 208);
  swift_beginAccess(v3, v0 + 16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 296), &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
LABEL_5:
    v54 = 0;
    goto LABEL_6;
  }

  v4 = *(v0 + 208);
  outlined init with take of MLClassifierMetrics(*(v0 + 296), *(v0 + 312), type metadata accessor for MLLogisticRegressionClassifier.Model);
  v5 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters + v4;
  swift_beginAccess(v5, v0 + 40, 0, 0);
  v6 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for MLLogisticRegressionClassifier.Model);
    goto LABEL_5;
  }

  v42 = *(v0 + 280);
  v55 = *(v0 + 256);
  v48 = *(v0 + 248);
  v12 = *(v6 + 24);
  v39 = *(v5 + v12);
  v13 = *(v5 + v12 + 8);
  v14 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData + *(v0 + 208);
  swift_beginAccess(v14, v0 + 64, 0, 0);
  (*(v55 + 16))(v42, v14, v48);
  v56 = v13;

  MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v42, 0, 0);
  v49 = *(v0 + 248);
  v32 = *(v0 + 240);
  v34 = *(v0 + 232);
  v52 = *(v0 + 224);
  v30 = *(v0 + 208);
  v36 = *(v0 + 216);
  v43 = *(*(v0 + 256) + 8);
  (v43)(*(v0 + 280));
  DataFrame.subscript.getter(v39, v13);
  swift_beginAccess(v14, v0 + 88, 32, 0);
  DataFrame.subscript.getter(v39, v13);
  swift_endAccess(v0 + 88);
  AnyClassificationMetrics.init(_:_:)(v34, v52);
  v35 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v32, v35, 0);
  v53 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v53);
  v15 = v30 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
  swift_beginAccess(v30 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics, v0 + 112, 33, 0);
  outlined assign with take of MLClassifierMetrics?(v32, v15, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v0 + 112);
  v16 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData + v30;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData + v30, v0 + 136, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, v36, &demangling cache variable for type metadata for DataFrame?);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v49);
  v18 = *(v0 + 312);
  if (EnumTagSinglePayload == 1)
  {
    v50 = v0 + 160;
    v19 = *(v0 + 288);
    v20 = *(v0 + 248);
    v40 = *(v0 + 240);
    v21 = *(v0 + 208);
    v45 = *(v0 + 216);
    v56;
    v43(v19, v20);
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLLogisticRegressionClassifier.Model);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v45, &demangling cache variable for type metadata for DataFrame?);
    v22 = v40;
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v53);
  }

  else
  {
    v23 = *(v0 + 272);
    (*(*(v0 + 256) + 32))(v23, *(v0 + 216), *(v0 + 248));
    MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v23, 0, 0);
    v50 = v0 + 184;
    v37 = *(v0 + 312);
    v29 = *(v0 + 288);
    v28 = *(v0 + 272);
    v26 = *(v0 + 264);
    v31 = *(v0 + 248);
    v33 = *(v0 + 240);
    v27 = *(v0 + 232);
    v46 = *(v0 + 208);
    v24 = *(v0 + 224);
    DataFrame.subscript.getter(v39, v56);
    DataFrame.subscript.getter(v39, v56);
    v56;
    AnyClassificationMetrics.init(_:_:)(v27, v24);
    v43(v26, v31);
    v43(v28, v31);
    v43(v29, v31);
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLLogisticRegressionClassifier.Model);
    swift_storeEnumTagMultiPayload(v33, v35, 0);
    v22 = v33;
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v53);
    v21 = v46;
  }

  v25 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics + v21;
  swift_beginAccess(v25, v50, 33, 0);
  outlined assign with take of MLClassifierMetrics?(v22, v25, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v50);
  v54 = 1;
LABEL_6:
  v7 = *(v0 + 296);
  v8 = *(v0 + 288);
  v9 = *(v0 + 280);
  v10 = *(v0 + 272);
  v44 = *(v0 + 264);
  v38 = *(v0 + 240);
  v47 = *(v0 + 232);
  v51 = *(v0 + 216);
  v41 = *(v0 + 224);
  *(v0 + 312);
  v7;
  v8;
  v9;
  v10;
  v44;
  v38;
  v47;
  v41;
  v51;
  return (*(v0 + 8))(v54, 1);
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = v2;
  v30 = v3;
  v32 = a1;
  v5 = 0xEB0000000064657ALL;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v31 = v27;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *a2;
  v29 = v27;
  switch(v12)
  {
    case 0:
      v13 = v2;
      v14 = 0x696C616974696E69;
      break;
    case 1:
      v13 = v2;
      v14 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0;
      goto LABEL_9;
    case 3:
      v13 = v2;
      v14 = 0x697461756C617665;
LABEL_7:
      v5 = 0xEA0000000000676ELL;
      break;
    case 4:
      v13 = v2;
      v5 = 0xEB00000000676E69;
      v14 = 0x636E657265666E69;
      break;
  }

  LODWORD(v15) = 0;
  v16 = _stringCompareWithSmolCheck(_:_:expecting:)(v14, v5, 0x676E696E69617274, 0xE800000000000000, 0);
  v5;
  v17 = (v16 & 1) == 0;
  v4 = v13;
  if (!v17)
  {
LABEL_9:
    v18 = v30;
    v19 = v30 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v30 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v27, 0, 0);
    v20 = v29;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v29, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
    v21 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      BUG();
    }

    v22 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v18;
    swift_beginAccess(v22, v28, 0, 0);
    v23 = v22;
    v15 = v31;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, v31, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
    v24 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v24) == 1)
    {
      BUG();
    }

    v25 = lazy protocol witness table accessor for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier();
    SupervisedTabularEstimator.write(_:to:overwrite:)(v15, v32, 1, v21, v25);
    outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLLogisticRegressionClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
    if (!v4)
    {
      LOBYTE(v15) = 1;
    }
  }

  return v15;
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000030;
    *(v12 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow();
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    MLLogisticRegressionClassifier.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  }
}

NSURL *LogisticRegressionClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v31 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v33 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v34 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = MLLogisticRegressionClassifier.PersistentParameters.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters + v31;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters + v31, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
    v22 = v21;
    v23 = v32;
    if (__swift_getEnumTagSinglePayload(v22, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
      v24 = v33;
      outlined init with take of MLClassifierMetrics(v36, v33, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLClassifierMetrics?(v24, v20, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v35, v34, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
      v26 = v36;
      LogisticRegressionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    }
  }

  return result;
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, char *a2)
{
  v47 = v2;
  v4 = a1;
  v5 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *&a2[v6];
  v46 = a2;
  v10 = *&a2[v6 + 8];
  v48 = a1;
  v49 = v5;
  if (v9 ^ v7 | v10 ^ v8 && (v11 = v7, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v9, v10, 0), v5 = v49, v13 = v11, v4 = v48, (v12 & 1) == 0))
  {
    v42 = v9;
    v43 = v10;
    v48 = v8;
    v49 = v13;

    v20 = String.init<A>(_:)(&v42, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
    v25 = v34;
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v47 = swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    v24 = 0xED00006E6D756C6FLL;
    v21 = 0x6320746567726154;
  }

  else
  {
    v14 = *(v4 + *(v5 + 28));

    v45 = v14;
    v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v14);
    v16 = *&v46[*(v5 + 28)];

    v44 = v16;
    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v16);
    LOBYTE(v16) = v17;
    v18 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v15, v17);
    v15;
    v16;
    if (v18)
    {
      result = static MLLogisticRegressionClassifier.ModelParameters.firstIncompatibility(_:_:)(*(v49 + 32) + v48, &v46[*(v49 + 32)]);
      if (!v37)
      {
        return result;
      }

      v20 = v40;
      v48 = v39;
      v21 = v36;
      v49 = v38;
      v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v47 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
      v24 = v37;
      v25 = v41;
    }

    else
    {
      v46 = "Classifier.swift" + 0x8000000000000000;

      v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v27 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v49 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v26, v27);
      v48 = v28;
      v45;

      v29 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v26, v27);
      v31 = v30;
      v44;
      v42 = v29;
      v43 = v31;
      v20 = String.init<A>(_:)(&v42, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v25 = v32;
      v33 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v47 = swift_allocError(&type metadata for MLCreateError, v33, 0, 0);
      v24 = v46;
      v21 = 0xD000000000000011;
    }
  }

  *v23 = v21;
  *(v23 + 8) = v24;
  *(v23 + 16) = v49;
  *(v23 + 24) = v48;
  *(v23 + 32) = v20;
  *(v23 + 40) = v25;
  *(v23 + 48) = 3;
  return swift_willThrow();
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v1 = v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
  v2 = type metadata accessor for DataFrame(0);
  (*(*(v2 - 8) + 8))(v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
  return v0;
}

uint64_t type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for LogisticRegressionClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for LogisticRegressionClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for LogisticRegressionClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for LogisticRegressionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v9[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    if (v3 <= 0x3F)
    {
      v9[1] = *(result - 8) + 64;
      result = type metadata accessor for DataFrame(319);
      if (v4 <= 0x3F)
      {
        v9[2] = *(result - 8) + 64;
        result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for DataFrame?, &type metadata accessor for DataFrame);
        if (v5 <= 0x3F)
        {
          v9[3] = *(result - 8) + 64;
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
          if (v6 <= 0x3F)
          {
            v9[4] = *(result - 8) + 64;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLogisticRegressionClassifier.Model?, type metadata accessor for MLLogisticRegressionClassifier.Model);
            if (v7 <= 0x3F)
            {
              v9[5] = *(result - 8) + 64;
              result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLClassifierMetrics?, type metadata accessor for MLClassifierMetrics);
              if (v8 <= 0x3F)
              {
                v10 = *(result - 8) + 64;
                v11 = v10;
                result = swift_updateClassMetadata2(a1, 256, 8, v9, a1 + 80);
                if (!result)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance LogisticRegressionClassifierTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(192);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return LogisticRegressionClassifierTrainingSessionDelegate.train(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance LogisticRegressionClassifierTrainingSessionDelegate()
{
  v1 = swift_task_alloc(320);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return LogisticRegressionClassifierTrainingSessionDelegate.evaluate(from:)();
}

uint64_t outlined assign with copy of DataFrame?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  (*(*(v2 - 8) + 24))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLClassifierMetrics?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 40))(a2, a1, v3);
  return a2;
}

uint64_t MLDataValue.stringValue.getter()
{
  if (*(v0 + 16) != 2)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t MLDataValue.intValue.getter()
{
  if (v0[16])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t MLDataValue.doubleValue.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MLDataValue.sequenceValue.getter()
{
  v2 = result;
  if (*(v1 + 16) == 3)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

void *MLDataValue.multiArrayValue.getter()
{
  v2 = result;
  if (*(v1 + 16) == 5)
  {
    v3 = *v1;
    result = *v1;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

uint64_t MLDataValue.dictionaryValue.getter()
{
  v2 = result;
  if (*(v1 + 16) == 4)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

char MLDataValue.init(_:)(uint64_t a1, double a2)
{
  v4 = v2;
  switch(CMLFeatureValue.type.getter())
  {
    case 0u:
      v5 = *(a1 + 16);

      countAndFlagsBits = specialized handling<A, B>(_:_:)(v5);
      a1;
      object = 0;
      result = 0;
      goto LABEL_14;
    case 1u:
      v18 = *(a1 + 16);

      specialized handling<A, B>(_:_:)(v18);
      *&v19[7] = a2;
      a1;
      countAndFlagsBits = *&a2;
      result = 1;
      goto LABEL_13;
    case 2u:

      v12 = CMLFeatureValue.stringValue()();
      if (v13)
      {
        v13;

        BUG();
      }

      countAndFlagsBits = v12._countAndFlagsBits;
      object = v12._object;
      a1;
      result = 2;
      goto LABEL_14;
    case 3u:
      v14 = *(a1 + 16);

      v15 = specialized handling<A, B>(_:_:)(v14);
      if (!v15)
      {
        BUG();
      }

      v16 = v15;
      object = 0;
      v17 = type metadata accessor for CMLSequence();
      countAndFlagsBits = swift_allocObject(v17, 25, 7);
      *(countAndFlagsBits + 16) = v16;
      *(countAndFlagsBits + 24) = 1;
      a1;
      result = 3;
      goto LABEL_14;
    case 4u:
      v9 = *(a1 + 16);

      v10 = specialized handling<A, B>(_:_:)(v9);
      if (!v10)
      {
        BUG();
      }

      object = 0;
      v11 = type metadata accessor for CMLDictionary();
      v19[0] = swift_allocObject(v11, 24, 7);
      v19[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
      v19[2] = 0;
      *(v19[0] + 16) = v10;
      v19[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v19[4] = 0;
      v19[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      v19[6] = 0;
      countAndFlagsBits = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v19);
      a1;
      result = 4;
      goto LABEL_14;
    case 5u:

      result = 6;
      countAndFlagsBits = 0;
      goto LABEL_13;
    case 6u:

      MLDataValue.MultiArrayType.init(from:)(a1);
      countAndFlagsBits = v19[0];
      if (!v19[0])
      {
        BUG();
      }

      result = 5;
LABEL_13:
      object = 0;
LABEL_14:
      *v4 = countAndFlagsBits;
      *(v4 + 8) = object;
      *(v4 + 16) = result;
      return result;
  }
}

uint64_t MLDataValue.featureValue.getter(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *v3;
  switch(*(v3 + 16))
  {
    case 0:
      v5 = specialized handling<A, B>(_:_:)(*v3);
      if (!v5)
      {
        BUG();
      }

      goto LABEL_8;
    case 1:
      v5 = specialized handling<A, B>(_:_:)();
      if (!v5)
      {
        BUG();
      }

LABEL_8:
      v8 = type metadata accessor for CMLFeatureValue();
      swift_allocObject(v8, 25, 7);
      return CMLFeatureValue.init(rawValue:ownsValue:)(v5, 1);
    case 2:
      v7 = *(v3 + 8);
      type metadata accessor for CMLFeatureValue();

      v6 = CMLFeatureValue.__allocating_init(_:)(v4, v7);
      goto LABEL_10;
    case 3:

      v6 = MLDataValue.SequenceType.featureValue.getter(a3);

      goto LABEL_10;
    case 4:
      v10 = *v3;

      v6 = MLDataValue.DictionaryType.featureValue.getter(v4, a2);
      v10;
      goto LABEL_10;
    case 5:
      v11 = *v3;
      v4;
      v6 = MLDataValue.MultiArrayType.featureValue.getter();

LABEL_10:
      result = v6;
      break;
    case 6:
      type metadata accessor for CMLFeatureValue();
      result = CMLFeatureValue.__allocating_init()();
      break;
  }

  return result;
}

uint64_t MLDataValue.ValueType.description.getter()
{
  switch(*v0)
  {
    case 0:
      result = 7630409;
      break;
    case 1:
      result = 0x656C62756F44;
      break;
    case 2:
      result = 0x676E69727453;
      break;
    case 3:
      result = 0x65636E6575716553;
      break;
    case 4:
      result = 0x616E6F6974636944;
      break;
    case 5:
      result = 0x72724169746C754DLL;
      break;
    case 6:
      result = 0x676E697373694DLL;
      break;
  }

  return result;
}

uint64_t MLDataValue.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 0:
      v32 = 0xEA00000000002865;
      v30[0] = v1;
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      object = v3._object;
      String.append(_:)(v3);
      object;
      v5._countAndFlagsBits = 41;
      v5._object = 0xE100000000000000;
      String.append(_:)(v5);
      return 0x756C615661746144;
    case 1:
      v7 = &v31;
      v31 = 0;
      v34._countAndFlagsBits = v1;
      v32 = 0xE000000000000000;
      v23._countAndFlagsBits = 0x756C615661746144;
      v23._object = 0xEA00000000002865;
      String.append(_:)(v23);
      Double.write<A>(to:)(&v31, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      goto LABEL_7;
    case 2:
      v7 = &v31;
      v31 = 0x756C615661746144;
      v32 = 0xEB00000000222865;
      v13._countAndFlagsBits = v1;
      v13._object = v2;
      String.append(_:)(v13);
      v14._object = 0xE200000000000000;
      v14._countAndFlagsBits = 10530;
      goto LABEL_8;
    case 3:
      v30[0] = 0x756C615661746144;
      v30[1] = 0xEA00000000002865;
      v33 = 0;
      outlined copy of MLDataValue(v1, v2, 3u);
      swift_retain_n(v1, 2);
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>);
      v16 = lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>();
      v34._countAndFlagsBits = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v15, v16);
      v18 = v17;

      v31 = 91;
      v32 = 0xE100000000000000;
      v19._countAndFlagsBits = v34._countAndFlagsBits;
      v19._object = v18;
      String.append(_:)(v19);
      v18;

      v19._countAndFlagsBits = 93;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      0;
      v20 = 3;
      outlined consume of MLDataValue(v1, v2, 3);
      LOBYTE(v21) = 0;
      v22._countAndFlagsBits = 91;
      v22._object = 0xE100000000000000;
      v7 = v30;
      goto LABEL_10;
    case 4:
      v7 = &v31;
      v31 = 0x756C615661746144;
      v32 = 0xEA00000000002865;
      outlined copy of MLDataValue(v1, v2, 4u);
      v8 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();
      v9 = Dictionary.description.getter(v1, &type metadata for MLDataValue, &type metadata for MLDataValue, v8);
      v11 = v10;
      outlined consume of MLDataValue(v1, v2, 4);
      v12._countAndFlagsBits = v9;
      v12._object = v11;
      String.append(_:)(v12);
      v11;
LABEL_7:
      v14._countAndFlagsBits = 41;
      v14._object = 0xE100000000000000;
LABEL_8:
      String.append(_:)(v14);
      goto LABEL_11;
    case 5:
      v31 = 0x756C615661746144;
      v32 = 0xEA00000000002865;
      outlined copy of MLDataValue(v1, v2, 5u);
      v24 = v1;
      v25 = [v24 description];
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)(v26);
      v21 = v28;

      v20 = 5;
      outlined consume of MLDataValue(v1, v2, 5);
      v22._countAndFlagsBits = v27;
      v22._object = v21;
      v7 = &v31;
LABEL_10:
      String.append(_:)(v22);
      v21;
      v29._countAndFlagsBits = 41;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      outlined consume of MLDataValue(v1, v2, v20);
LABEL_11:
      result = *v7;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      JUMPOUT(0x1DD7E8);
  }

  return result;
}

uint64_t MLDataValue.init(fromAny:)(void *a1, __m128 a2)
{
  v4 = a1;
  *&v65 = v2;
  outlined init with copy of Any(a1, v67);
  if (!swift_dynamicCast(&v68, v67, &type metadata for Any + 8, &type metadata for MLDataValue, 0))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
    if (swift_dynamicCast(&v68, v67, &type metadata for Any + 8, v8, 0))
    {
      outlined init with take of TabularRegressionTask(&v68, v54);
      v9 = v54[3];
      v79 = a1;
      v10 = v54[4];
      __swift_project_boxed_opaque_existential_0Tm(v54, v54[3]);
      v81 = v3;
      (*(v10 + 32))(v9, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      v6 = *(&v55[0] + 1);
      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = *&v55[0];
      v7 = v55[1];
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      goto LABEL_45;
    }

    if (swift_dynamicCast(&v68, v67, &type metadata for Any + 8, &type metadata for String, 0))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v6 = *(&v68 + 1);
      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = v68;
      v7 = 2;
      goto LABEL_45;
    }

    if (swift_dynamicCast(&v68, v67, &type metadata for Any + 8, &type metadata for Int, 0))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = v68;
      v6 = 0;
      v7 = 0;
      goto LABEL_45;
    }

    if (swift_dynamicCast(&v68, v67, &type metadata for Any + 8, &type metadata for Double, 0))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = v68;
      v7 = 1;
      v6 = 0;
      goto LABEL_45;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
    v12 = swift_dynamicCast(v59, v67, &type metadata for Any + 8, v11, 0);
    v79 = a1;
    if (v12)
    {
      v81 = v3;
      v13 = *&v59[0];
      v14 = *(*&v59[0] + 16);
      if (v14)
      {
        *&v71 = _swiftEmptyArrayStorage;
        v78 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
        v15 = v71;
        v80 = v13;
        v16 = (v13 + 4);
        while (1)
        {
          outlined init with copy of Any(v16, &v68);
          outlined init with copy of Any(&v68, v54);
          v17 = v81;
          MLDataValue.init(fromAny:)(v54);
          v81 = v17;
          if (v17)
          {
            break;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v68);
          a2 = v55[0];
          v18 = v55[1];
          *&v71 = v15;
          v19 = v15[2];
          v20 = v15[3];
          v21 = v19 + 1;
          if (v20 >> 1 <= v19)
          {
            v77 = v19 + 1;
            v66 = v55[0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 >= 2, v19 + 1, 1);
            v21 = v77;
            a2 = v66;
            v15 = v71;
          }

          v15[2] = v21;
          v22 = 3 * v19;
          *&v15[v22 + 4] = a2;
          LOBYTE(v15[v22 + 6]) = v18;
          v16 += 32;
          v23 = v78-- == 1;
          v4 = v79;
          if (v23)
          {
            v80;
            goto LABEL_37;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v68);

        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        v52 = v80;
LABEL_40:
        v52;
        return __swift_destroy_boxed_opaque_existential_1Tm(v67);
      }

      v59[0];
      v15 = _swiftEmptyArrayStorage;
LABEL_37:
      _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = v68;
      v7 = 3;
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyHashable : Any]);
      if (!swift_dynamicCast(&v62, v67, &type metadata for Any + 8, v24, 0))
      {
        *&v68 = 0;
        *(&v68 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(36);
        v49._countAndFlagsBits = 0x20666F2065707954;
        v49._object = 0xEF272065756C6176;
        String.append(_:)(v49);
        _print_unlocked<A, B>(_:_:)(v4, &v68, &type metadata for Any + 8, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v49._object = "DataValue(Missing)" + 0x8000000000000000;
        v49._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v49);
        v65 = v68;
        v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
        *v51 = v65;
        *(v51 + 16) = 0;
        *(v51 + 32) = 0;
        *(v51 + 48) = 1;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(v4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v67);
      }

      v81 = v3;
      v25 = v62;
      v26 = *(v62 + 16);
      if (v26)
      {
        v76 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
        v27 = v76;
        v28 = specialized Dictionary.startIndex.getter(v25);
        v30 = v29;
        v78 = v25 + 64;
        v31 = v26 - 1;
        v75 = v25;
        while (1)
        {
          v77 = v31;
          if (v28 < 0 || v28 >= 1 << *(v25 + 32))
          {
            BUG();
          }

          v32 = v28 >> 6;
          v33 = *(v78 + 8 * (v28 >> 6));
          if (!_bittest64(&v33, v28))
          {
            BUG();
          }

          v66.i64[0] = 1 << v28;
          v80 = v27;
          v64 = v30;
          if (v30 != *(v25 + 36))
          {
            BUG();
          }

          outlined init with copy of AnyHashable(*(v25 + 48) + 40 * v28, &v68);
          v63 = v28;
          outlined init with copy of Any(*(v25 + 56) + 32 * v28, v70);
          outlined init with copy of AnyHashable(&v68, v54);
          outlined init with copy of Any(v70, &v54[5]);
          qmemcpy(v55, v54, 0x48uLL);
          outlined destroy of (key: AnyHashable, value: Any)(&v68);
          outlined init with copy of (key: AnyHashable, value: Any)(v55, v59);
          v56[3] = &type metadata for AnyHashable;
          v34 = swift_allocObject(&unk_3932E8, 56, 7);
          v56[0] = v34;
          v35 = v59[1];
          *(v34 + 16) = v59[0];
          *(v34 + 32) = v35;
          *(v34 + 48) = v60;
          v36 = v81;
          MLDataValue.init(fromAny:)(v56);
          if (v36)
          {
            v81 = v36;
            __swift_destroy_boxed_opaque_existential_1Tm(v61);
            outlined destroy of (key: AnyHashable, value: Any)(v55);

            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            v52 = v75;
            goto LABEL_40;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v61);
          outlined init with copy of (key: AnyHashable, value: Any)(v55, v59);
          MLDataValue.init(fromAny:)(v61);
          v81 = 0;
          v27 = v80;
          outlined destroy of AnyHashable(v59);
          outlined destroy of (key: AnyHashable, value: Any)(v55);
          v37 = v71;
          v38 = v72;
          v39 = v73;
          v40 = v74;
          v76 = v27;
          v41 = v27[2];
          v42 = v27[3];
          v43 = v41 + 1;
          if (v42 >> 1 <= v41)
          {
            v80 = (v41 + 1);
            v82 = v74;
            v57 = v71;
            v58 = v73;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 >= 2, v43, 1);
            v43 = v80;
            v40 = v82;
            v39 = v58;
            v37 = v57;
            v27 = v76;
          }

          v27[2] = v43;
          v44 = 6 * v41;
          *&v27[v44 + 4] = v37;
          LOBYTE(v27[v44 + 6]) = v38;
          *&v27[v44 + 7] = v39;
          LOBYTE(v27[v44 + 9]) = v40;
          v25 = v75;
          v45 = -1 << *(v75 + 32);
          if (v63 >= -v45)
          {
            BUG();
          }

          if ((v66.i64[0] & *(v78 + 8 * v32)) == 0)
          {
            BUG();
          }

          v4 = v79;
          v46 = v77;
          if (v64 != *(v75 + 36))
          {
            BUG();
          }

          v47 = _HashTable.occupiedBucket(after:)(v63, v78, ~v45);
          v48 = v46 == 0;
          v31 = v46 - 1;
          if (v48)
          {
            break;
          }

          v28 = v47;
          v30 = *(v25 + 36);
        }

        v25;
      }

      else
      {
        v62;
        v27 = _swiftEmptyArrayStorage;
      }

      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGSayAG_AGtGTt0g5(v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      v7 = 4;
    }

    v6 = 0;
    goto LABEL_45;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v6 = *(&v68 + 1);
  ML11MLDataValueO_AGSayAG_AGtGTt0g5 = v68;
  v7 = v69;
LABEL_45:
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  result = v65;
  *v65 = ML11MLDataValueO_AGSayAG_AGtGTt0g5;
  *(result + 8) = v6;
  *(result + 16) = v7;
  return result;
}