uint64_t assignWithCopy for WidgetAuxiliaryViewMetadata(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v124 = a3;
  v12 = a3[6];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v19 = v17(v14, 1, v15);
  if (v18)
  {
    if (!v19)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = *v14;
        *v13 = *v14;
        v21 = v20;
      }

      else
      {
        *v13 = *v14;
        *(v13 + 1) = *(v14 + 1);
        v26 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v27 = v26[5];
        v28 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(&v13[v27], &v14[v27], *(*(v28 - 8) + 64));
        }

        else
        {
          v32 = type metadata accessor for URL();
          (*(*(v32 - 8) + 16))(&v13[v27], &v14[v27], v32);
          swift_storeEnumTagMultiPayload();
        }

        v33 = v26[6];
        v34 = &v13[v33];
        v35 = &v14[v33];
        v36 = *v35;
        v34[4] = v35[4];
        *v34 = v36;
        v13[v26[7]] = v14[v26[7]];
        *&v13[v26[8]] = *&v14[v26[8]];
        v37 = v26[9];
        v38 = &v13[v37];
        v39 = &v14[v37];
        v40 = *v39;
        v38[16] = v39[16];
        *v38 = v40;
        v13[v26[10]] = v14[v26[10]];
        *&v13[v26[11]] = *&v14[v26[11]];
        v41 = v26[12];
        v42 = &v13[v41];
        v43 = &v14[v41];
        v44 = *&v14[v41];
        v121 = v43[12];
        v122 = *(v43 + 2);
        v45 = v43[13];

        outlined copy of ContentTransition.Storage(v44, v122 | (v121 << 32), v45);
        *v42 = v44;
        v42[12] = v121;
        *(v42 + 2) = v122;
        v42[13] = v45;
        v42[14] = v43[14];
      }

      swift_storeEnumTagMultiPayload();
      (*(v16 + 56))(v13, 0, 1, v15);
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  if (v19)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v13, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
LABEL_7:
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
    memcpy(v13, v14, *(*(v22 - 8) + 64));
    goto LABEL_18;
  }

  v23 = v124;
  if (a1 == a2)
  {
    goto LABEL_19;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v13, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v14;
    *v13 = *v14;
    v25 = v24;
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  *v13 = *v14;
  *(v13 + 1) = *(v14 + 1);
  v29 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  v30 = v29[5];
  v31 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&v13[v30], &v14[v30], *(*(v31 - 8) + 64));
  }

  else
  {
    v106 = type metadata accessor for URL();
    (*(*(v106 - 8) + 16))(&v13[v30], &v14[v30], v106);
    swift_storeEnumTagMultiPayload();
  }

  v107 = v29[6];
  v108 = &v13[v107];
  v109 = &v14[v107];
  v110 = *v109;
  v108[4] = v109[4];
  *v108 = v110;
  v13[v29[7]] = v14[v29[7]];
  *&v13[v29[8]] = *&v14[v29[8]];
  v111 = v29[9];
  v112 = &v13[v111];
  v113 = &v14[v111];
  v114 = *v113;
  v112[16] = v113[16];
  *v112 = v114;
  v13[v29[10]] = v14[v29[10]];
  *&v13[v29[11]] = *&v14[v29[11]];
  v115 = v29[12];
  v116 = &v13[v115];
  v117 = &v14[v115];
  v118 = *&v14[v115];
  v119 = v117[12];
  v123 = *(v117 + 2);
  v120 = v117[13];

  outlined copy of ContentTransition.Storage(v118, v123 | (v119 << 32), v120);
  *v116 = v118;
  v116[12] = v119;
  *(v116 + 2) = v123;
  v116[13] = v120;
  v116[14] = v117[14];
  swift_storeEnumTagMultiPayload();
LABEL_18:
  v23 = v124;
LABEL_19:
  *(a1 + v23[7]) = *(a2 + v23[7]);

  v46 = v23[8];
  v47 = (a1 + v46);
  v48 = (a2 + v46);
  v49 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v50 = *(v49 - 1);
  v51 = *(v50 + 48);
  v52 = v51(v47, 1, v49);
  v53 = v51(v48, 1, v49);
  if (v52)
  {
    if (!v53)
    {
      v54 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v55 = type metadata accessor for Date();
        v56 = *(*(v55 - 8) + 16);
        v56(v47, v48, v55);
        type metadata accessor for ClosedRange<Date>(0);
        v56(&v47[*(v57 + 36)], &v48[*(v57 + 36)], v55);
        v23 = v124;
        type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
        v47[*(v58 + 48)] = v48[*(v58 + 48)];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v47, v48, *(*(v54 - 8) + 64));
      }

      *&v47[v49[5]] = *&v48[v49[5]];
      *&v47[v49[6]] = *&v48[v49[6]];
      v65 = v49[7];
      v66 = &v47[v65];
      v67 = &v48[v65];
      *v66 = *v67;
      v66[8] = v67[8];
      v68 = *(v67 + 3);
      v66[16] = v67[16];
      *(v66 + 3) = v68;
      v69 = *(v50 + 56);

      v69(v47, 0, 1, v49);
      goto LABEL_33;
    }

LABEL_25:
    type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
    memcpy(v47, v48, *(*(v59 - 8) + 64));
    goto LABEL_33;
  }

  if (v53)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v47, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress);
    goto LABEL_25;
  }

  if (a1 != a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v47, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
    v60 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = type metadata accessor for Date();
      v62 = *(*(v61 - 8) + 16);
      v62(v47, v48, v61);
      type metadata accessor for ClosedRange<Date>(0);
      v62(&v47[*(v63 + 36)], &v48[*(v63 + 36)], v61);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
      v47[*(v64 + 48)] = v48[*(v64 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v47, v48, *(*(v60 - 8) + 64));
    }
  }

  *&v47[v49[5]] = *&v48[v49[5]];

  *&v47[v49[6]] = *&v48[v49[6]];

  v70 = v49[7];
  v71 = &v47[v70];
  v72 = &v48[v70];
  *&v47[v70] = *v72;

  v71[8] = v72[8];
  v73 = *(v72 + 3);
  v71[16] = v72[16];
  *(v71 + 3) = v73;
LABEL_33:
  v74 = v23[9];
  v75 = a1 + v74;
  v76 = (a2 + v74);
  v77 = *(a1 + v74 + 8);
  v78 = *(a2 + v74 + 8);
  if (v77)
  {
    if (v78)
    {
      *v75 = *v76;
      *(v75 + 8) = *(v76 + 1);

      *(v75 + 16) = *(v76 + 2);

      *(v75 + 24) = *(v76 + 3);

      *(v75 + 32) = *(v76 + 4);

      *(v75 + 40) = *(v76 + 5);

      *(v75 + 48) = *(v76 + 48);
      v79 = *(v76 + 13);
      *(v75 + 56) = *(v76 + 56);
      *(v75 + 52) = v79;
    }

    else
    {
      outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v75);
      v82 = v76[1];
      v81 = v76[2];
      v83 = *v76;
      *(v75 + 41) = *(v76 + 41);
      *(v75 + 16) = v82;
      *(v75 + 32) = v81;
      *v75 = v83;
    }
  }

  else if (v78)
  {
    *v75 = *v76;
    *(v75 + 8) = *(v76 + 1);
    *(v75 + 16) = *(v76 + 2);
    *(v75 + 24) = *(v76 + 3);
    *(v75 + 32) = *(v76 + 4);
    *(v75 + 40) = *(v76 + 5);
    *(v75 + 48) = *(v76 + 48);
    v80 = *(v76 + 13);
    *(v75 + 56) = *(v76 + 56);
    *(v75 + 52) = v80;
  }

  else
  {
    v84 = *v76;
    v85 = v76[1];
    v86 = v76[2];
    *(v75 + 41) = *(v76 + 41);
    *(v75 + 16) = v85;
    *(v75 + 32) = v86;
    *v75 = v84;
  }

  v87 = v23[10];
  v88 = type metadata accessor for URL();
  v89 = *(v88 - 8);
  v90 = *(v89 + 48);
  v91 = v90(a1 + v87, 1, v88);
  v92 = v90(a2 + v87, 1, v88);
  if (v91)
  {
    if (!v92)
    {
      (*(v89 + 16))(a1 + v87, a2 + v87, v88);
      (*(v89 + 56))(a1 + v87, 0, 1, v88);
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v92)
  {
    (*(v89 + 8))(a1 + v87, v88);
LABEL_45:
    type metadata accessor for URL?(0);
    memcpy((a1 + v87), (a2 + v87), *(*(v93 - 8) + 64));
    goto LABEL_46;
  }

  (*(v89 + 24))(a1 + v87, a2 + v87, v88);
LABEL_46:
  v94 = v23[11];
  v95 = a1 + v94;
  v96 = (a2 + v94);
  v97 = *(a1 + v94 + 8);
  v98 = *(v96 + 1);
  if (v97 == 1)
  {
    if (v98 == 1)
    {
      v99 = *v96;
      v100 = v96[1];
      v101 = v96[3];
      *(v95 + 32) = v96[2];
      *(v95 + 48) = v101;
      *v95 = v99;
      *(v95 + 16) = v100;
    }

    else
    {
      *v95 = *v96;
      *(v95 + 8) = *(v96 + 1);
      *(v95 + 16) = *(v96 + 2);
      *(v95 + 24) = *(v96 + 3);
      *(v95 + 32) = *(v96 + 4);
      *(v95 + 40) = *(v96 + 5);
      *(v95 + 48) = *(v96 + 6);
      *(v95 + 56) = *(v96 + 7);
    }
  }

  else if (v98 == 1)
  {
    outlined destroy of WidgetAuxiliaryViewMetadata.Accessibility(v95);
    v102 = v96[3];
    v104 = *v96;
    v103 = v96[1];
    *(v95 + 32) = v96[2];
    *(v95 + 48) = v102;
    *v95 = v104;
    *(v95 + 16) = v103;
  }

  else
  {
    *v95 = *v96;
    *(v95 + 8) = *(v96 + 1);

    *(v95 + 16) = *(v96 + 2);
    *(v95 + 24) = *(v96 + 3);

    *(v95 + 32) = *(v96 + 4);
    *(v95 + 40) = *(v96 + 5);

    *(v95 + 48) = *(v96 + 6);
    *(v95 + 56) = *(v96 + 7);
  }

  return a1;
}

char *initializeWithTake for WidgetAuxiliaryViewMetadata(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[6];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v7, v8, *(v10 + 64));
    }

    else
    {
      *v7 = *v8;
      v12 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
      v13 = v12[5];
      v14 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(&v7[v13], &v8[v13], *(*(v14 - 8) + 64));
      }

      else
      {
        v15 = type metadata accessor for URL();
        (*(*(v15 - 8) + 32))(&v7[v13], &v8[v13], v15);
        swift_storeEnumTagMultiPayload();
      }

      v16 = v12[6];
      v17 = &v7[v16];
      v18 = &v8[v16];
      *v17 = *v18;
      v17[4] = v18[4];
      v7[v12[7]] = v8[v12[7]];
      *&v7[v12[8]] = *&v8[v12[8]];
      v19 = v12[9];
      v20 = &v7[v19];
      v21 = &v8[v19];
      *v20 = *v21;
      v20[16] = v21[16];
      v7[v12[10]] = v8[v12[10]];
      *&v7[v12[11]] = *&v8[v12[11]];
      v22 = v12[12];
      v23 = &v7[v22];
      v24 = &v8[v22];
      *v23 = *v24;
      *(v23 + 7) = *(v24 + 7);
      swift_storeEnumTagMultiPayload();
    }

    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v25 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v26 = &a1[v25];
  v27 = &a2[v25];
  v28 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v29 = *(v28 - 1);
  if ((*(v29 + 48))(v27, 1, v28))
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
    memcpy(v26, v27, *(*(v30 - 8) + 64));
  }

  else
  {
    v31 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = type metadata accessor for Date();
      v33 = *(*(v32 - 8) + 32);
      v33(v26, v27, v32);
      type metadata accessor for ClosedRange<Date>(0);
      v33(&v26[*(v34 + 36)], &v27[*(v34 + 36)], v32);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
      v26[*(v35 + 48)] = v27[*(v35 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v26, v27, *(*(v31 - 8) + 64));
    }

    *&v26[v28[5]] = *&v27[v28[5]];
    *&v26[v28[6]] = *&v27[v28[6]];
    v36 = v28[7];
    v37 = &v26[v36];
    v38 = &v27[v36];
    v37[16] = v38[16];
    *v37 = *v38;
    (*(v29 + 56))(v26, 0, 1, v28);
  }

  v39 = a3[9];
  v40 = a3[10];
  v41 = &a1[v39];
  v42 = &a2[v39];
  v43 = *(v42 + 1);
  *v41 = *v42;
  *(v41 + 1) = v43;
  *(v41 + 2) = *(v42 + 2);
  *(v41 + 41) = *(v42 + 41);
  v44 = type metadata accessor for URL();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(&a2[v40], 1, v44))
  {
    type metadata accessor for URL?(0);
    memcpy(&a1[v40], &a2[v40], *(*(v46 - 8) + 64));
  }

  else
  {
    (*(v45 + 32))(&a1[v40], &a2[v40], v44);
    (*(v45 + 56))(&a1[v40], 0, 1, v44);
  }

  v47 = a3[11];
  v48 = &a1[v47];
  v49 = &a2[v47];
  v50 = *(v49 + 1);
  *v48 = *v49;
  *(v48 + 1) = v50;
  v51 = *(v49 + 3);
  *(v48 + 2) = *(v49 + 2);
  *(v48 + 3) = v51;
  return a1;
}

void **assignWithTake for WidgetAuxiliaryViewMetadata(void **a1, void **a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a1[1];
  a1[1] = a2[1];

  v8 = a3[6];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v15 = v13(v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      if (a1 == a2)
      {
        goto LABEL_19;
      }

      outlined destroy of ResolvableTextSegmentAttribute.Value?(v9, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
      if (!swift_getEnumCaseMultiPayload())
      {
        *v9 = *v10;
        v21 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v22 = v21[5];
        v23 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(&v9[v22], &v10[v22], *(*(v23 - 8) + 64));
        }

        else
        {
          v82 = type metadata accessor for URL();
          (*(*(v82 - 8) + 32))(&v9[v22], &v10[v22], v82);
          swift_storeEnumTagMultiPayload();
        }

        v83 = v21[6];
        v84 = &v9[v83];
        v85 = &v10[v83];
        *v84 = *v85;
        v84[4] = v85[4];
        v9[v21[7]] = v10[v21[7]];
        *&v9[v21[8]] = *&v10[v21[8]];
        v86 = v21[9];
        v87 = &v9[v86];
        v88 = &v10[v86];
        *v87 = *v88;
        v87[16] = v88[16];
        v9[v21[10]] = v10[v21[10]];
        *&v9[v21[11]] = *&v10[v21[11]];
        v89 = v21[12];
        v90 = &v9[v89];
        v91 = &v10[v89];
        *v90 = *v91;
        *(v90 + 7) = *(v91 + 7);
        swift_storeEnumTagMultiPayload();
        goto LABEL_19;
      }

      v17 = *(v12 + 64);
LABEL_8:
      memcpy(v9, v10, v17);
      goto LABEL_19;
    }

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v9, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
LABEL_7:
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
    v17 = *(*(v16 - 8) + 64);
    goto LABEL_8;
  }

  if (v15)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(v9, v10, *(v12 + 64));
  }

  else
  {
    *v9 = *v10;
    v18 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
    v19 = v18[5];
    v20 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&v9[v19], &v10[v19], *(*(v20 - 8) + 64));
    }

    else
    {
      v24 = type metadata accessor for URL();
      (*(*(v24 - 8) + 32))(&v9[v19], &v10[v19], v24);
      swift_storeEnumTagMultiPayload();
    }

    v25 = v18[6];
    v26 = &v9[v25];
    v27 = &v10[v25];
    *v26 = *v27;
    v26[4] = v27[4];
    v9[v18[7]] = v10[v18[7]];
    *&v9[v18[8]] = *&v10[v18[8]];
    v28 = v18[9];
    v29 = &v9[v28];
    v30 = &v10[v28];
    *v29 = *v30;
    v29[16] = v30[16];
    v9[v18[10]] = v10[v18[10]];
    *&v9[v18[11]] = *&v10[v18[11]];
    v31 = v18[12];
    v32 = &v9[v31];
    v33 = &v10[v31];
    *v32 = *v33;
    *(v32 + 7) = *(v33 + 7);
    swift_storeEnumTagMultiPayload();
  }

  (*(v12 + 56))(v9, 0, 1, v11);
LABEL_19:
  *(a1 + a3[7]) = *(a2 + a3[7]);

  v34 = a3[8];
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v38 = *(v37 - 1);
  v39 = *(v38 + 48);
  v40 = v39(v35, 1, v37);
  v41 = v39(v36, 1, v37);
  if (v40)
  {
    if (!v41)
    {
      v42 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = type metadata accessor for Date();
        v44 = *(*(v43 - 8) + 32);
        v44(v35, v36, v43);
        type metadata accessor for ClosedRange<Date>(0);
        v44(&v35[*(v45 + 36)], &v36[*(v45 + 36)], v43);
        type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
        v35[*(v46 + 48)] = v36[*(v46 + 48)];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v35, v36, *(*(v42 - 8) + 64));
      }

      *&v35[v37[5]] = *&v36[v37[5]];
      *&v35[v37[6]] = *&v36[v37[6]];
      v53 = v37[7];
      v54 = &v35[v53];
      v55 = &v36[v53];
      v54[16] = v55[16];
      *v54 = *v55;
      (*(v38 + 56))(v35, 0, 1, v37);
      goto LABEL_33;
    }

LABEL_25:
    type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
    memcpy(v35, v36, *(*(v47 - 8) + 64));
    goto LABEL_33;
  }

  if (v41)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v35, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress);
    goto LABEL_25;
  }

  if (a1 != a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v35, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
    v48 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = type metadata accessor for Date();
      v50 = *(*(v49 - 8) + 32);
      v50(v35, v36, v49);
      type metadata accessor for ClosedRange<Date>(0);
      v50(&v35[*(v51 + 36)], &v36[*(v51 + 36)], v49);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
      v35[*(v52 + 48)] = v36[*(v52 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v35, v36, *(*(v48 - 8) + 64));
    }
  }

  *&v35[v37[5]] = *&v36[v37[5]];

  *&v35[v37[6]] = *&v36[v37[6]];

  v56 = v37[7];
  v57 = &v35[v56];
  v58 = &v36[v56];
  *v57 = *v58;

  v57[8] = v58[8];
  *(v57 + 3) = *(v58 + 3);
  v57[16] = v58[16];
LABEL_33:
  v59 = a3[9];
  v60 = a1 + v59;
  v61 = a2 + v59;
  if (*(a1 + v59 + 8))
  {
    v62 = *(v61 + 1);
    if (v62)
    {
      *v60 = *v61;
      *(v60 + 1) = v62;

      *(v60 + 2) = *(v61 + 2);

      *(v60 + 3) = *(v61 + 3);

      *(v60 + 4) = *(v61 + 4);

      *(v60 + 5) = *(v61 + 5);

      v60[48] = v61[48];
      *(v60 + 13) = *(v61 + 13);
      v60[56] = v61[56];
      goto LABEL_38;
    }

    outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v60);
  }

  v63 = *(v61 + 1);
  *v60 = *v61;
  *(v60 + 1) = v63;
  *(v60 + 2) = *(v61 + 2);
  *(v60 + 41) = *(v61 + 41);
LABEL_38:
  v64 = a3;
  v65 = a3[10];
  v66 = type metadata accessor for URL();
  v67 = *(v66 - 8);
  v68 = *(v67 + 48);
  v69 = v68(a1 + v65, 1, v66);
  v70 = v68(a2 + v65, 1, v66);
  if (v69)
  {
    if (!v70)
    {
      (*(v67 + 32))(a1 + v65, a2 + v65, v66);
      (*(v67 + 56))(a1 + v65, 0, 1, v66);
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (v70)
  {
    (*(v67 + 8))(a1 + v65, v66);
LABEL_43:
    type metadata accessor for URL?(0);
    memcpy(a1 + v65, a2 + v65, *(*(v71 - 8) + 64));
    goto LABEL_44;
  }

  (*(v67 + 40))(a1 + v65, a2 + v65, v66);
LABEL_44:
  v72 = v64[11];
  v73 = (a1 + v72);
  v74 = a2 + v72;
  if (*(a1 + v72 + 8) != 1)
  {
    v75 = *(v74 + 1);
    if (v75 != 1)
    {
      *v73 = *v74;
      v73[1] = v75;

      v78 = *(v74 + 3);
      v73[2] = *(v74 + 2);
      v73[3] = v78;

      v79 = *(v74 + 5);
      v73[4] = *(v74 + 4);
      v73[5] = v79;

      v80 = *(v74 + 7);
      v73[6] = *(v74 + 6);
      v73[7] = v80;

      return a1;
    }

    outlined destroy of WidgetAuxiliaryViewMetadata.Accessibility(v73);
  }

  v76 = *(v74 + 1);
  *v73 = *v74;
  *(v73 + 1) = v76;
  v77 = *(v74 + 3);
  *(v73 + 2) = *(v74 + 2);
  *(v73 + 3) = v77;
  return a1;
}

char *initializeBufferWithCopyOfBuffer for WidgetAuxiliaryViewMetadata.Text.Metadata(char *a1, char **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];
  }

  else
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v22 = *a2;
          *a1 = *a2;
          v23 = v22;
        }

        else
        {
          v32 = *(a2 + 3);
          *(a1 + 24) = v32;
          (**(v32 - 8))(a1, a2);
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v10 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v10;
        a1[16] = *(a2 + 16);
        type metadata accessor for (String, Bool, TimeZone?)(0);
        v12 = *(v11 + 64);
        v13 = type metadata accessor for TimeZone();
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);

        if (v15(a2 + v12, 1, v13))
        {
          type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
          memcpy(&a1[v12], a2 + v12, *(*(v16 - 8) + 64));
        }

        else
        {
          (*(v14 + 16))(&a1[v12], a2 + v12, v13);
          (*(v14 + 56))(&a1[v12], 0, 1, v13);
        }
      }

      else
      {
        v26 = type metadata accessor for DateInterval();
        (*(*(v26 - 8) + 16))(a1, a2, v26);
        type metadata accessor for (DateInterval, Double?, Bool)(0);
        v28 = *(v27 + 48);
        v29 = &a1[v28];
        v30 = a2 + v28;
        *v29 = *v30;
        v29[8] = v30[8];
        a1[*(v27 + 64)] = *(a2 + *(v27 + 64));
      }
    }

    else if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v17 = type metadata accessor for Date();
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530], MEMORY[0x1E69810F0]);
        v19 = *(v18 + 48);
        v20 = &a1[v19];
        v21 = a2 + v19;
        *v20 = *v21;
        v20[16] = v21[16];
      }

      else
      {
        v31 = type metadata accessor for DateInterval();
        (*(*(v31 - 8) + 16))(a1, a2, v31);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = *a2;
        *a1 = *a2;
        v25 = v24;
      }

      else
      {
        v33 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v33;
        v34 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v35 = v34[5];
        v36 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(&a1[v35], a2 + v35, *(*(v36 - 8) + 64));
        }

        else
        {
          v37 = type metadata accessor for URL();
          (*(*(v37 - 8) + 16))(&a1[v35], a2 + v35, v37);
          swift_storeEnumTagMultiPayload();
        }

        v38 = v34[6];
        v39 = &a1[v38];
        v40 = a2 + v38;
        *v39 = *v40;
        v39[4] = v40[4];
        a1[v34[7]] = *(a2 + v34[7]);
        *&a1[v34[8]] = *(a2 + v34[8]);
        v41 = v34[9];
        v42 = &a1[v41];
        v43 = a2 + v41;
        *v42 = *v43;
        v42[16] = v43[16];
        a1[v34[10]] = *(a2 + v34[10]);
        *&a1[v34[11]] = *(a2 + v34[11]);
        v44 = v34[12];
        v45 = &a1[v44];
        v46 = a2 + v44;
        v47 = *(a2 + v44);
        v48 = *(a2 + v44 + 12);
        v53 = *(a2 + v44 + 8);
        v49 = *(a2 + v44 + 13);

        outlined copy of ContentTransition.Storage(v47, v53 | (v48 << 32), v49);
        *v45 = v47;
        v45[12] = v48;
        *(v45 + 2) = v53;
        v45[13] = v49;
        v45[14] = v46[14];
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v8 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v8;
    }

    swift_storeEnumTagMultiPayload();
    v50 = a3[6];
    *&a1[a3[5]] = *(a2 + a3[5]);
    *&a1[v50] = *(a2 + v50);
    v51 = a3[8];
    *&a1[a3[7]] = *(a2 + a3[7]);
    a1[v51] = *(a2 + v51);
  }

  return a1;
}

void type metadata accessor for (ClosedRange<Date>, Bool)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (String, Bool, TimeZone?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (String, Bool, TimeZone?))
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(255, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (String, Bool, TimeZone?));
    }
  }
}

void type metadata accessor for (DateInterval, Double?, Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (DateInterval, Double?, Bool))
  {
    type metadata accessor for DateInterval();
    type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(255, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (DateInterval, Double?, Bool));
    }
  }
}

uint64_t destroy for WidgetAuxiliaryViewMetadata.Text.Metadata(id *a1)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {

        goto LABEL_23;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_23;
      }

      type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v3 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v4 = *(v3 + 20);
        type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
        if (!swift_getEnumCaseMultiPayload())
        {
          v5 = type metadata accessor for URL();
          (*(*(v5 - 8) + 8))(a1 + v4, v5);
        }

        outlined consume of ContentTransition.Storage(*(a1 + *(v3 + 48)), *(a1 + *(v3 + 48) + 8) | (*(a1 + *(v3 + 48) + 12) << 32), *(a1 + *(v3 + 48) + 13));
        goto LABEL_23;
      }

LABEL_17:

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v6 = type metadata accessor for Date();
      goto LABEL_22;
    }

LABEL_13:
    v6 = type metadata accessor for DateInterval();
LABEL_22:
    (*(*(v6 - 8) + 8))(a1, v6);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 7)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_13;
    }

    type metadata accessor for (String, Bool, TimeZone?)(0);
    v8 = *(v7 + 64);
    v9 = type metadata accessor for TimeZone();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(a1 + v8, 1, v9))
    {
      (*(v10 + 8))(a1 + v8, v9);
    }
  }

LABEL_23:
}

uint64_t initializeWithCopy for WidgetAuxiliaryViewMetadata.Text.Metadata(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v20 = *a2;
        *a1 = *a2;
        v21 = v20;
      }

      else
      {
        v30 = *(a2 + 24);
        *(a1 + 24) = v30;
        (**(v30 - 8))(a1, a2);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v8 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v8;
      *(a1 + 16) = *(a2 + 16);
      type metadata accessor for (String, Bool, TimeZone?)(0);
      v10 = *(v9 + 64);
      v11 = type metadata accessor for TimeZone();
      v12 = *(v11 - 8);
      v13 = *(v12 + 48);

      if (v13(a2 + v10, 1, v11))
      {
        type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
        memcpy((a1 + v10), (a2 + v10), *(*(v14 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(a1 + v10, a2 + v10, v11);
        (*(v12 + 56))(a1 + v10, 0, 1, v11);
      }
    }

    else
    {
      v24 = type metadata accessor for DateInterval();
      (*(*(v24 - 8) + 16))(a1, a2, v24);
      type metadata accessor for (DateInterval, Double?, Bool)(0);
      v26 = *(v25 + 48);
      v27 = a1 + v26;
      v28 = a2 + v26;
      *v27 = *v28;
      *(v27 + 8) = *(v28 + 8);
      *(a1 + *(v25 + 64)) = *(a2 + *(v25 + 64));
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = type metadata accessor for Date();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530], MEMORY[0x1E69810F0]);
      v17 = *(v16 + 48);
      v18 = a1 + v17;
      v19 = a2 + v17;
      *v18 = *v19;
      *(v18 + 16) = *(v19 + 16);
    }

    else
    {
      v29 = type metadata accessor for DateInterval();
      (*(*(v29 - 8) + 16))(a1, a2, v29);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *a2;
      *a1 = *a2;
      v23 = v22;
    }

    else
    {
      v31 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v31;
      v32 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
      v33 = v32[5];
      v34 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

      if (swift_getEnumCaseMultiPayload())
      {
        memcpy((a1 + v33), (a2 + v33), *(*(v34 - 8) + 64));
      }

      else
      {
        v35 = type metadata accessor for URL();
        (*(*(v35 - 8) + 16))(a1 + v33, a2 + v33, v35);
        swift_storeEnumTagMultiPayload();
      }

      v36 = v32[6];
      v37 = a1 + v36;
      v38 = a2 + v36;
      *v37 = *v38;
      *(v37 + 4) = *(v38 + 4);
      *(a1 + v32[7]) = *(a2 + v32[7]);
      *(a1 + v32[8]) = *(a2 + v32[8]);
      v39 = v32[9];
      v40 = a1 + v39;
      v41 = a2 + v39;
      *v40 = *v41;
      *(v40 + 16) = *(v41 + 16);
      *(a1 + v32[10]) = *(a2 + v32[10]);
      *(a1 + v32[11]) = *(a2 + v32[11]);
      v42 = v32[12];
      v43 = a1 + v42;
      v44 = a2 + v42;
      v45 = *(a2 + v42);
      v46 = *(a2 + v42 + 12);
      v51 = *(a2 + v42 + 8);
      v47 = *(a2 + v42 + 13);

      outlined copy of ContentTransition.Storage(v45, v51 | (v46 << 32), v47);
      *v43 = v45;
      *(v43 + 12) = v46;
      *(v43 + 8) = v51;
      *(v43 + 13) = v47;
      *(v43 + 14) = *(v44 + 14);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v7 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v7;
  }

  swift_storeEnumTagMultiPayload();
  v48 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v48) = *(a2 + v48);
  v49 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v49) = *(a2 + v49);

  return a1;
}

uint64_t assignWithCopy for WidgetAuxiliaryViewMetadata.Text.Metadata(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind);
    type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v19 = *a2;
          *a1 = *a2;
          v20 = v19;
        }

        else
        {
          v30 = *(a2 + 24);
          *(a1 + 24) = v30;
          *(a1 + 32) = *(a2 + 32);
          (**(v30 - 8))(a1, a2);
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        type metadata accessor for (String, Bool, TimeZone?)(0);
        v8 = *(v7 + 64);
        v9 = type metadata accessor for TimeZone();
        v10 = *(v9 - 8);
        v11 = *(v10 + 48);

        if (v11(a2 + v8, 1, v9))
        {
          type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
          memcpy((a1 + v8), (a2 + v8), *(*(v12 - 8) + 64));
        }

        else
        {
          (*(v10 + 16))(a1 + v8, a2 + v8, v9);
          (*(v10 + 56))(a1 + v8, 0, 1, v9);
        }
      }

      else
      {
        v23 = type metadata accessor for DateInterval();
        (*(*(v23 - 8) + 16))(a1, a2, v23);
        type metadata accessor for (DateInterval, Double?, Bool)(0);
        v25 = *(v24 + 48);
        v26 = a1 + v25;
        v27 = a2 + v25;
        v28 = *(v27 + 8);
        *v26 = *v27;
        *(v26 + 8) = v28;
        *(a1 + *(v24 + 64)) = *(a2 + *(v24 + 64));
      }
    }

    else if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = type metadata accessor for Date();
        (*(*(v13 - 8) + 16))(a1, a2, v13);
        type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530], MEMORY[0x1E69810F0]);
        v15 = *(v14 + 48);
        v16 = a1 + v15;
        v17 = a2 + v15;
        v18 = *(v17 + 16);
        *v16 = *v17;
        *(v16 + 16) = v18;
      }

      else
      {
        v29 = type metadata accessor for DateInterval();
        (*(*(v29 - 8) + 16))(a1, a2, v29);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = *a2;
        *a1 = *a2;
        v22 = v21;
      }

      else
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v31 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v32 = v31[5];
        v33 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

        if (swift_getEnumCaseMultiPayload())
        {
          memcpy((a1 + v32), (a2 + v32), *(*(v33 - 8) + 64));
        }

        else
        {
          v34 = type metadata accessor for URL();
          (*(*(v34 - 8) + 16))(a1 + v32, a2 + v32, v34);
          swift_storeEnumTagMultiPayload();
        }

        v35 = v31[6];
        v36 = a1 + v35;
        v37 = (a2 + v35);
        v38 = *v37;
        *(v36 + 4) = *(v37 + 4);
        *v36 = v38;
        *(a1 + v31[7]) = *(a2 + v31[7]);
        *(a1 + v31[8]) = *(a2 + v31[8]);
        v39 = v31[9];
        v40 = a1 + v39;
        v41 = (a2 + v39);
        v42 = *v41;
        *(v40 + 16) = *(v41 + 16);
        *v40 = v42;
        *(a1 + v31[10]) = *(a2 + v31[10]);
        *(a1 + v31[11]) = *(a2 + v31[11]);
        v43 = v31[12];
        v44 = a1 + v43;
        v45 = a2 + v43;
        v46 = *(a2 + v43);
        v47 = *(a2 + v43 + 12);
        v53 = *(a2 + v43 + 8);
        v48 = *(a2 + v43 + 13);

        outlined copy of ContentTransition.Storage(v46, v53 | (v47 << 32), v48);
        *v44 = v46;
        *(v44 + 12) = v47;
        *(v44 + 8) = v53;
        *(v44 + 13) = v48;
        *(v44 + 14) = *(v45 + 14);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
    }

    swift_storeEnumTagMultiPayload();
  }

  v49 = a3[5];
  v50 = (a1 + v49);
  v51 = (a2 + v49);
  *v50 = *v51;
  v50[1] = v51[1];
  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

_BYTE *initializeWithTake for WidgetAuxiliaryViewMetadata.Text.Metadata(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v24 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v25 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v26 = v25[5];
        v27 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(&a1[v26], &a2[v26], *(*(v27 - 8) + 64));
        }

        else
        {
          v28 = type metadata accessor for URL();
          (*(*(v28 - 8) + 32))(&a1[v26], &a2[v26], v28);
          swift_storeEnumTagMultiPayload();
        }

        v29 = v25[6];
        v30 = &a1[v29];
        v31 = &a2[v29];
        *v30 = *v31;
        v30[4] = v31[4];
        a1[v25[7]] = a2[v25[7]];
        *&a1[v25[8]] = *&a2[v25[8]];
        v32 = v25[9];
        v33 = &a1[v32];
        v34 = &a2[v32];
        *v33 = *v34;
        v33[16] = v34[16];
        a1[v25[10]] = a2[v25[10]];
        *&a1[v25[11]] = *&a2[v25[11]];
        v35 = v25[12];
        v36 = &a1[v35];
        v37 = &a2[v35];
        *v36 = *v37;
        *(v36 + 7) = *(v37 + 7);
        swift_storeEnumTagMultiPayload();
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v13 = type metadata accessor for Date();
      (*(*(v13 - 8) + 32))(a1, a2, v13);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530], MEMORY[0x1E69810F0]);
      v15 = *(v14 + 48);
      v16 = &a1[v15];
      v17 = &a2[v15];
      *v16 = *v17;
      v16[16] = v17[16];
      goto LABEL_21;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v18 = type metadata accessor for DateInterval();
        (*(*(v18 - 8) + 32))(a1, a2, v18);
        goto LABEL_21;
      case 4:
        *a1 = *a2;
        a1[16] = a2[16];
        type metadata accessor for (String, Bool, TimeZone?)(0);
        v20 = *(v19 + 64);
        v21 = type metadata accessor for TimeZone();
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(&a2[v20], 1, v21))
        {
          type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
          memcpy(&a1[v20], &a2[v20], *(*(v23 - 8) + 64));
        }

        else
        {
          (*(v22 + 32))(&a1[v20], &a2[v20], v21);
          (*(v22 + 56))(&a1[v20], 0, 1, v21);
        }

        goto LABEL_21;
      case 5:
        v8 = type metadata accessor for DateInterval();
        (*(*(v8 - 8) + 32))(a1, a2, v8);
        type metadata accessor for (DateInterval, Double?, Bool)(0);
        v10 = *(v9 + 48);
        v11 = &a1[v10];
        v12 = &a2[v10];
        *v11 = *v12;
        v11[8] = v12[8];
        a1[*(v9 + 64)] = a2[*(v9 + 64)];
LABEL_21:
        swift_storeEnumTagMultiPayload();
        goto LABEL_22;
    }
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_22:
  v38 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v38] = *&a2[v38];
  v39 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  a1[v39] = a2[v39];
  return a1;
}

_BYTE *assignWithTake for WidgetAuxiliaryViewMetadata.Text.Metadata(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind);
    v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v24 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(*(v24 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v25 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
          v26 = v25[5];
          v27 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(&a1[v26], &a2[v26], *(*(v27 - 8) + 64));
          }

          else
          {
            v28 = type metadata accessor for URL();
            (*(*(v28 - 8) + 32))(&a1[v26], &a2[v26], v28);
            swift_storeEnumTagMultiPayload();
          }

          v29 = v25[6];
          v30 = &a1[v29];
          v31 = &a2[v29];
          *v30 = *v31;
          v30[4] = v31[4];
          a1[v25[7]] = a2[v25[7]];
          *&a1[v25[8]] = *&a2[v25[8]];
          v32 = v25[9];
          v33 = &a1[v32];
          v34 = &a2[v32];
          *v33 = *v34;
          v33[16] = v34[16];
          a1[v25[10]] = a2[v25[10]];
          *&a1[v25[11]] = *&a2[v25[11]];
          v35 = v25[12];
          v36 = &a1[v35];
          v37 = &a2[v35];
          *v36 = *v37;
          *(v36 + 7) = *(v37 + 7);
          swift_storeEnumTagMultiPayload();
        }

        goto LABEL_22;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v13 = type metadata accessor for Date();
        (*(*(v13 - 8) + 32))(a1, a2, v13);
        type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530], MEMORY[0x1E69810F0]);
        v15 = *(v14 + 48);
        v16 = &a1[v15];
        v17 = &a2[v15];
        *v16 = *v17;
        v16[16] = v17[16];
        goto LABEL_22;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v18 = type metadata accessor for DateInterval();
          (*(*(v18 - 8) + 32))(a1, a2, v18);
          goto LABEL_22;
        case 4:
          *a1 = *a2;
          a1[16] = a2[16];
          type metadata accessor for (String, Bool, TimeZone?)(0);
          v20 = *(v19 + 64);
          v21 = type metadata accessor for TimeZone();
          v22 = *(v21 - 8);
          if ((*(v22 + 48))(&a2[v20], 1, v21))
          {
            type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
            memcpy(&a1[v20], &a2[v20], *(*(v23 - 8) + 64));
          }

          else
          {
            (*(v22 + 32))(&a1[v20], &a2[v20], v21);
            (*(v22 + 56))(&a1[v20], 0, 1, v21);
          }

          goto LABEL_22;
        case 5:
          v8 = type metadata accessor for DateInterval();
          (*(*(v8 - 8) + 32))(a1, a2, v8);
          type metadata accessor for (DateInterval, Double?, Bool)(0);
          v10 = *(v9 + 48);
          v11 = &a1[v10];
          v12 = &a2[v10];
          *v11 = *v12;
          v11[8] = v12[8];
          a1[*(v9 + 64)] = a2[*(v9 + 64)];
LABEL_22:
          swift_storeEnumTagMultiPayload();
          goto LABEL_23;
      }
    }

    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_23:
  v38 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v38] = *&a2[v38];

  *&a1[a3[7]] = *&a2[a3[7]];

  a1[a3[8]] = a2[a3[8]];
  return a1;
}

uint64_t type metadata completion function for WidgetAuxiliaryViewMetadata.Text.Metadata(uint64_t a1)
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = &v8[(v5 + 16) & ~v5];
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v21 = *a2;
          *a1 = *a2;
          v22 = v21;
        }

        else
        {
          v31 = *(a2 + 3);
          *(a1 + 24) = v31;
          (**(v31 - 8))(a1, a2);
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v9 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v9;
        a1[16] = *(a2 + 16);
        type metadata accessor for (String, Bool, TimeZone?)(0);
        v11 = *(v10 + 64);
        v12 = type metadata accessor for TimeZone();
        v13 = *(v12 - 8);
        v14 = *(v13 + 48);

        if (v14(a2 + v11, 1, v12))
        {
          type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
          memcpy(&a1[v11], a2 + v11, *(*(v15 - 8) + 64));
        }

        else
        {
          (*(v13 + 16))(&a1[v11], a2 + v11, v12);
          (*(v13 + 56))(&a1[v11], 0, 1, v12);
        }
      }

      else
      {
        v25 = type metadata accessor for DateInterval();
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        type metadata accessor for (DateInterval, Double?, Bool)(0);
        v27 = *(v26 + 48);
        v28 = &a1[v27];
        v29 = a2 + v27;
        *v28 = *v29;
        v28[8] = v29[8];
        a1[*(v26 + 64)] = *(a2 + *(v26 + 64));
      }
    }

    else if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = type metadata accessor for Date();
        (*(*(v16 - 8) + 16))(a1, a2, v16);
        type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530], MEMORY[0x1E69810F0]);
        v18 = *(v17 + 48);
        v19 = &a1[v18];
        v20 = a2 + v18;
        *v19 = *v20;
        v19[16] = v20[16];
      }

      else
      {
        v30 = type metadata accessor for DateInterval();
        (*(*(v30 - 8) + 16))(a1, a2, v30);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = *a2;
        *a1 = *a2;
        v24 = v23;
      }

      else
      {
        v32 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v32;
        v33 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v34 = v33[5];
        v35 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(&a1[v34], a2 + v34, *(*(v35 - 8) + 64));
        }

        else
        {
          v36 = type metadata accessor for URL();
          (*(*(v36 - 8) + 16))(&a1[v34], a2 + v34, v36);
          swift_storeEnumTagMultiPayload();
        }

        v37 = v33[6];
        v38 = &a1[v37];
        v39 = a2 + v37;
        *v38 = *v39;
        v38[4] = v39[4];
        a1[v33[7]] = *(a2 + v33[7]);
        *&a1[v33[8]] = *(a2 + v33[8]);
        v40 = v33[9];
        v41 = &a1[v40];
        v42 = a2 + v40;
        *v41 = *v42;
        v41[16] = v42[16];
        a1[v33[10]] = *(a2 + v33[10]);
        *&a1[v33[11]] = *(a2 + v33[11]);
        v43 = v33[12];
        v44 = &a1[v43];
        v45 = a2 + v43;
        v46 = *(a2 + v43);
        v47 = v45[12];
        v48 = *(v45 + 2);
        v49 = v45[13];

        outlined copy of ContentTransition.Storage(v46, v48 | (v47 << 32), v49);
        *v44 = v46;
        v44[12] = v47;
        *(v44 + 2) = v48;
        v44[13] = v49;
        v44[14] = v45[14];
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          return;
        }

        type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          v4 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
          v5 = *(v4 + 20);
          type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            v6 = type metadata accessor for URL();
            (*(*(v6 - 8) + 8))(a1 + v5, v6);
          }

          v7 = a1 + *(v4 + 48);
          v8 = *v7;
          v9 = *(v7 + 2) | (v7[12] << 32);
          v10 = v7[13];

          outlined consume of ContentTransition.Storage(v8, v9, v10);
          return;
        }

        goto LABEL_21;
      }

      return;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v11 = type metadata accessor for Date();
      goto LABEL_30;
    }

LABEL_15:
    v11 = type metadata accessor for DateInterval();
LABEL_30:
    v16 = *(*(v11 - 8) + 8);
    v17 = v11;
    v18 = a1;
LABEL_31:

    v16(v18, v17);
    return;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {

      type metadata accessor for (String, Bool, TimeZone?)(0);
      v14 = *(v13 + 64);
      v15 = type metadata accessor for TimeZone();
      v19 = *(v15 - 8);
      if ((*(v19 + 48))(a1 + v14, 1, v15))
      {
        return;
      }

      v16 = *(v19 + 8);
      v18 = (a1 + v14);
      v17 = v15;
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 6)
  {
LABEL_21:
    v12 = *a1;

    return;
  }

  if (EnumCaseMultiPayload == 7)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t initializeWithCopy for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v19 = *a2;
        *a1 = *a2;
        v20 = v19;
      }

      else
      {
        v29 = *(a2 + 24);
        *(a1 + 24) = v29;
        (**(v29 - 8))(a1, a2);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v7 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v7;
      *(a1 + 16) = *(a2 + 16);
      type metadata accessor for (String, Bool, TimeZone?)(0);
      v9 = *(v8 + 64);
      v10 = type metadata accessor for TimeZone();
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);

      if (v12(a2 + v9, 1, v10))
      {
        type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
        memcpy((a1 + v9), (a2 + v9), *(*(v13 - 8) + 64));
      }

      else
      {
        (*(v11 + 16))(a1 + v9, a2 + v9, v10);
        (*(v11 + 56))(a1 + v9, 0, 1, v10);
      }
    }

    else
    {
      v23 = type metadata accessor for DateInterval();
      (*(*(v23 - 8) + 16))(a1, a2, v23);
      type metadata accessor for (DateInterval, Double?, Bool)(0);
      v25 = *(v24 + 48);
      v26 = a1 + v25;
      v27 = a2 + v25;
      *v26 = *v27;
      *(v26 + 8) = *(v27 + 8);
      *(a1 + *(v24 + 64)) = *(a2 + *(v24 + 64));
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = type metadata accessor for Date();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530], MEMORY[0x1E69810F0]);
      v16 = *(v15 + 48);
      v17 = a1 + v16;
      v18 = a2 + v16;
      *v17 = *v18;
      *(v17 + 16) = *(v18 + 16);
    }

    else
    {
      v28 = type metadata accessor for DateInterval();
      (*(*(v28 - 8) + 16))(a1, a2, v28);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
    }

    else
    {
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
      v31 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
      v32 = v31[5];
      v33 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

      if (swift_getEnumCaseMultiPayload())
      {
        memcpy((a1 + v32), (a2 + v32), *(*(v33 - 8) + 64));
      }

      else
      {
        v34 = type metadata accessor for URL();
        (*(*(v34 - 8) + 16))(a1 + v32, a2 + v32, v34);
        swift_storeEnumTagMultiPayload();
      }

      v35 = v31[6];
      v36 = a1 + v35;
      v37 = a2 + v35;
      *v36 = *v37;
      *(v36 + 4) = *(v37 + 4);
      *(a1 + v31[7]) = *(a2 + v31[7]);
      *(a1 + v31[8]) = *(a2 + v31[8]);
      v38 = v31[9];
      v39 = a1 + v38;
      v40 = a2 + v38;
      *v39 = *v40;
      *(v39 + 16) = *(v40 + 16);
      *(a1 + v31[10]) = *(a2 + v31[10]);
      *(a1 + v31[11]) = *(a2 + v31[11]);
      v41 = v31[12];
      v42 = a1 + v41;
      v43 = a2 + v41;
      v44 = *(a2 + v41);
      v45 = *(v43 + 12);
      v46 = *(v43 + 8);
      v47 = *(v43 + 13);

      outlined copy of ContentTransition.Storage(v44, v46 | (v45 << 32), v47);
      *v42 = v44;
      *(v42 + 12) = v45;
      *(v42 + 8) = v46;
      *(v42 + 13) = v47;
      *(v42 + 14) = *(v43 + 14);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v6;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v18 = *a2;
          *a1 = *a2;
          v19 = v18;
        }

        else
        {
          v29 = *(a2 + 24);
          *(a1 + 24) = v29;
          *(a1 + 32) = *(a2 + 32);
          (**(v29 - 8))(a1, a2);
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        type metadata accessor for (String, Bool, TimeZone?)(0);
        v7 = *(v6 + 64);
        v8 = type metadata accessor for TimeZone();
        v9 = *(v8 - 8);
        v10 = *(v9 + 48);

        if (v10(a2 + v7, 1, v8))
        {
          type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
          memcpy((a1 + v7), (a2 + v7), *(*(v11 - 8) + 64));
        }

        else
        {
          (*(v9 + 16))(a1 + v7, a2 + v7, v8);
          (*(v9 + 56))(a1 + v7, 0, 1, v8);
        }
      }

      else
      {
        v22 = type metadata accessor for DateInterval();
        (*(*(v22 - 8) + 16))(a1, a2, v22);
        type metadata accessor for (DateInterval, Double?, Bool)(0);
        v24 = *(v23 + 48);
        v25 = a1 + v24;
        v26 = a2 + v24;
        v27 = *(v26 + 8);
        *v25 = *v26;
        *(v25 + 8) = v27;
        *(a1 + *(v23 + 64)) = *(a2 + *(v23 + 64));
      }
    }

    else if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v12 = type metadata accessor for Date();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530], MEMORY[0x1E69810F0]);
        v14 = *(v13 + 48);
        v15 = a1 + v14;
        v16 = a2 + v14;
        v17 = *(v16 + 16);
        *v15 = *v16;
        *(v15 + 16) = v17;
      }

      else
      {
        v28 = type metadata accessor for DateInterval();
        (*(*(v28 - 8) + 16))(a1, a2, v28);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = *a2;
        *a1 = *a2;
        v21 = v20;
      }

      else
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v30 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v31 = v30[5];
        v32 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

        if (swift_getEnumCaseMultiPayload())
        {
          memcpy((a1 + v31), (a2 + v31), *(*(v32 - 8) + 64));
        }

        else
        {
          v33 = type metadata accessor for URL();
          (*(*(v33 - 8) + 16))(a1 + v31, a2 + v31, v33);
          swift_storeEnumTagMultiPayload();
        }

        v34 = v30[6];
        v35 = a1 + v34;
        v36 = (a2 + v34);
        v37 = *v36;
        *(v35 + 4) = *(v36 + 4);
        *v35 = v37;
        *(a1 + v30[7]) = *(a2 + v30[7]);
        *(a1 + v30[8]) = *(a2 + v30[8]);
        v38 = v30[9];
        v39 = a1 + v38;
        v40 = (a2 + v38);
        v41 = *v40;
        *(v39 + 16) = *(v40 + 16);
        *v39 = v41;
        *(a1 + v30[10]) = *(a2 + v30[10]);
        *(a1 + v30[11]) = *(a2 + v30[11]);
        v42 = v30[12];
        v43 = a1 + v42;
        v44 = a2 + v42;
        v45 = *(a2 + v42);
        v46 = *(v44 + 12);
        v47 = *(v44 + 8);
        v48 = *(v44 + 13);

        outlined copy of ContentTransition.Storage(v45, v47 | (v46 << 32), v48);
        *v43 = v45;
        *(v43 + 12) = v46;
        *(v43 + 8) = v47;
        *(v43 + 13) = v48;
        *(v43 + 14) = *(v44 + 14);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *initializeWithTake for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v23 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v26 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v27 = v26[5];
        v28 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(&a1[v27], &a2[v27], *(*(v28 - 8) + 64));
        }

        else
        {
          v29 = type metadata accessor for URL();
          (*(*(v29 - 8) + 32))(&a1[v27], &a2[v27], v29);
          swift_storeEnumTagMultiPayload();
        }

        v30 = v26[6];
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        v31[4] = v32[4];
        a1[v26[7]] = a2[v26[7]];
        *&a1[v26[8]] = *&a2[v26[8]];
        v33 = v26[9];
        v34 = &a1[v33];
        v35 = &a2[v33];
        *v34 = *v35;
        v34[16] = v35[16];
        a1[v26[10]] = a2[v26[10]];
        *&a1[v26[11]] = *&a2[v26[11]];
        v36 = v26[12];
        v37 = &a1[v36];
        v38 = &a2[v36];
        *v37 = *v38;
        *(v37 + 7) = *(v38 + 7);
        swift_storeEnumTagMultiPayload();
      }

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v12 = type metadata accessor for Date();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530], MEMORY[0x1E69810F0]);
      v14 = *(v13 + 48);
      v15 = &a1[v14];
      v16 = &a2[v14];
      *v15 = *v16;
      v15[16] = v16[16];
      goto LABEL_23;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v17 = type metadata accessor for DateInterval();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        goto LABEL_23;
      case 4:
        *a1 = *a2;
        a1[16] = a2[16];
        type metadata accessor for (String, Bool, TimeZone?)(0);
        v19 = *(v18 + 64);
        v20 = type metadata accessor for TimeZone();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
          memcpy(&a1[v19], &a2[v19], *(*(v22 - 8) + 64));
        }

        else
        {
          (*(v21 + 32))(&a1[v19], &a2[v19], v20);
          (*(v21 + 56))(&a1[v19], 0, 1, v20);
        }

        goto LABEL_23;
      case 5:
        v7 = type metadata accessor for DateInterval();
        (*(*(v7 - 8) + 32))(a1, a2, v7);
        type metadata accessor for (DateInterval, Double?, Bool)(0);
        v9 = *(v8 + 48);
        v10 = &a1[v9];
        v11 = &a2[v9];
        *v10 = *v11;
        v10[8] = v11[8];
        a1[*(v8 + 64)] = a2[*(v8 + 64)];
LABEL_23:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v24 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v24);
}

_BYTE *assignWithTake for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v23 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v26 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
        v27 = v26[5];
        v28 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(&a1[v27], &a2[v27], *(*(v28 - 8) + 64));
        }

        else
        {
          v29 = type metadata accessor for URL();
          (*(*(v29 - 8) + 32))(&a1[v27], &a2[v27], v29);
          swift_storeEnumTagMultiPayload();
        }

        v30 = v26[6];
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        v31[4] = v32[4];
        a1[v26[7]] = a2[v26[7]];
        *&a1[v26[8]] = *&a2[v26[8]];
        v33 = v26[9];
        v34 = &a1[v33];
        v35 = &a2[v33];
        *v34 = *v35;
        v34[16] = v35[16];
        a1[v26[10]] = a2[v26[10]];
        *&a1[v26[11]] = *&a2[v26[11]];
        v36 = v26[12];
        v37 = &a1[v36];
        v38 = &a2[v36];
        *v37 = *v38;
        *(v37 + 7) = *(v38 + 7);
        swift_storeEnumTagMultiPayload();
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v12 = type metadata accessor for Date();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (Date, Text.DateStyle), MEMORY[0x1E6969530], MEMORY[0x1E69810F0]);
      v14 = *(v13 + 48);
      v15 = &a1[v14];
      v16 = &a2[v14];
      *v15 = *v16;
      v15[16] = v16[16];
      goto LABEL_24;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v17 = type metadata accessor for DateInterval();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        goto LABEL_24;
      case 4:
        *a1 = *a2;
        a1[16] = a2[16];
        type metadata accessor for (String, Bool, TimeZone?)(0);
        v19 = *(v18 + 64);
        v20 = type metadata accessor for TimeZone();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
          memcpy(&a1[v19], &a2[v19], *(*(v22 - 8) + 64));
        }

        else
        {
          (*(v21 + 32))(&a1[v19], &a2[v19], v20);
          (*(v21 + 56))(&a1[v19], 0, 1, v20);
        }

        goto LABEL_24;
      case 5:
        v7 = type metadata accessor for DateInterval();
        (*(*(v7 - 8) + 32))(a1, a2, v7);
        type metadata accessor for (DateInterval, Double?, Bool)(0);
        v9 = *(v8 + 48);
        v10 = &a1[v9];
        v11 = &a2[v9];
        *v10 = *v11;
        v10[8] = v11[8];
        a1[*(v8 + 64)] = a2[*(v8 + 64)];
LABEL_24:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v24 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v24);
}

void type metadata completion function for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(uint64_t a1)
{
  v10 = &unk_18CDCB6D0;
  v1 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(319);
  if (v2 <= 0x3F)
  {
    v11 = *(v1 - 8) + 64;
    type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v12 = &v9;
      v4 = type metadata accessor for DateInterval();
      if (v5 <= 0x3F)
      {
        v13 = *(v4 - 8) + 64;
        type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(319, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
        if (v6 <= 0x3F)
        {
          swift_getTupleTypeLayout3();
          v14 = &v8;
          swift_getTupleTypeLayout3();
          v15 = &v7;
          v16 = MEMORY[0x1E69E5CE0] + 64;
          v17 = &unk_18CDCB730;
          swift_initEnumMetadataMultiPayload();
        }
      }
    }
  }
}

char *initializeBufferWithCopyOfBuffer for WidgetAuxiliaryViewMetadata.Graphic(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      v7 = v6;
    }

    else
    {
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v9;
      v10 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
      v11 = v10[5];
      v12 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(&a1[v11], &a2[v11], *(*(v12 - 8) + 64));
      }

      else
      {
        v13 = type metadata accessor for URL();
        (*(*(v13 - 8) + 16))(&a1[v11], &a2[v11], v13);
        swift_storeEnumTagMultiPayload();
      }

      v14 = v10[6];
      v15 = &a1[v14];
      v16 = &a2[v14];
      *v15 = *v16;
      v15[4] = v16[4];
      a1[v10[7]] = a2[v10[7]];
      *&a1[v10[8]] = *&a2[v10[8]];
      v17 = v10[9];
      v18 = &a1[v17];
      v19 = &a2[v17];
      *v18 = *v19;
      v18[16] = v19[16];
      a1[v10[10]] = a2[v10[10]];
      *&a1[v10[11]] = *&a2[v10[11]];
      v20 = v10[12];
      v21 = &a1[v20];
      v22 = &a2[v20];
      v23 = *&a2[v20];
      v24 = v22[12];
      v25 = *(v22 + 2);
      v26 = v22[13];

      outlined copy of ContentTransition.Storage(v23, v25 | (v24 << 32), v26);
      *v21 = v23;
      v21[12] = v24;
      *(v21 + 2) = v25;
      v21[13] = v26;
      v21[14] = v22[14];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_OWORD *initializeWithTake for WidgetAuxiliaryViewMetadata.Graphic(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
    v9 = v8[5];
    v10 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1 + v9, a2 + v9, *(*(v10 - 8) + 64));
    }

    else
    {
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 32))(a1 + v9, a2 + v9, v11);
      swift_storeEnumTagMultiPayload();
    }

    v12 = v8[6];
    v13 = a1 + v12;
    v14 = a2 + v12;
    *v13 = *v14;
    v13[4] = v14[4];
    *(a1 + v8[7]) = *(a2 + v8[7]);
    *(a1 + v8[8]) = *(a2 + v8[8]);
    v15 = v8[9];
    v16 = a1 + v15;
    v17 = a2 + v15;
    *v16 = *v17;
    v16[16] = v17[16];
    *(a1 + v8[10]) = *(a2 + v8[10]);
    *(a1 + v8[11]) = *(a2 + v8[11]);
    v18 = v8[12];
    v19 = (a1 + v18);
    v20 = (a2 + v18);
    *v19 = *v20;
    *(v19 + 7) = *(v20 + 7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for WidgetAuxiliaryViewMetadata.Graphic(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
    v9 = v8[5];
    v10 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v9], &a2[v9], *(*(v10 - 8) + 64));
    }

    else
    {
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 32))(&a1[v9], &a2[v9], v11);
      swift_storeEnumTagMultiPayload();
    }

    v12 = v8[6];
    v13 = &a1[v12];
    v14 = &a2[v12];
    *v13 = *v14;
    v13[4] = v14[4];
    a1[v8[7]] = a2[v8[7]];
    *&a1[v8[8]] = *&a2[v8[8]];
    v15 = v8[9];
    v16 = &a1[v15];
    v17 = &a2[v15];
    *v16 = *v17;
    v16[16] = v17[16];
    a1[v8[10]] = a2[v8[10]];
    *&a1[v8[11]] = *&a2[v8[11]];
    v18 = v8[12];
    v19 = &a1[v18];
    v20 = &a2[v18];
    *v19 = *v20;
    *(v19 + 7) = *(v20 + 7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

char *initializeBufferWithCopyOfBuffer for WidgetAuxiliaryViewMetadata.Graphic.Named(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&v4[v8], &a2[v8], *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 16))(&v4[v8], &a2[v8], v11);
      swift_storeEnumTagMultiPayload();
    }

    v12 = a3[6];
    v13 = a3[7];
    v14 = &v4[v12];
    v15 = &a2[v12];
    *v14 = *v15;
    v14[4] = v15[4];
    v4[v13] = a2[v13];
    v16 = a3[9];
    *&v4[a3[8]] = *&a2[a3[8]];
    v17 = &v4[v16];
    v18 = &a2[v16];
    *v17 = *v18;
    v17[16] = v18[16];
    v19 = a3[11];
    v4[a3[10]] = a2[a3[10]];
    *&v4[v19] = *&a2[v19];
    v20 = a3[12];
    v21 = &v4[v20];
    v22 = &a2[v20];
    v23 = *&a2[v20];
    v24 = v22[12];
    v25 = *(v22 + 2);
    v26 = v22[13];

    outlined copy of ContentTransition.Storage(v23, v25 | (v24 << 32), v26);
    *v21 = v23;
    v21[12] = v24;
    *(v21 + 2) = v25;
    v21[13] = v26;
    v21[14] = v22[14];
  }

  return v4;
}

char *initializeWithCopy for WidgetAuxiliaryViewMetadata.Graphic.Named(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&a1[v7], &a2[v7], *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 16))(&a1[v7], &a2[v7], v9);
    swift_storeEnumTagMultiPayload();
  }

  v10 = a3[6];
  v11 = a3[7];
  v12 = &a1[v10];
  v13 = &a2[v10];
  *v12 = *v13;
  v12[4] = v13[4];
  a1[v11] = a2[v11];
  v14 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v15[16] = v16[16];
  v17 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  *&a1[v17] = *&a2[v17];
  v18 = a3[12];
  v19 = &a1[v18];
  v20 = &a2[v18];
  v21 = *&a2[v18];
  v22 = v20[12];
  v23 = *(v20 + 2);
  v24 = v20[13];

  outlined copy of ContentTransition.Storage(v21, v23 | (v22 << 32), v24);
  *v19 = v21;
  v19[12] = v22;
  *(v19 + 2) = v23;
  v19[13] = v24;
  v19[14] = v20[14];
  return a1;
}

char *assignWithCopy for WidgetAuxiliaryViewMetadata.Graphic.Named(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  if (a1 != a2)
  {
    v6 = a3[5];
    outlined destroy of ResolvableTextSegmentAttribute.Value?(&a1[v6], type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
    v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
    }

    else
    {
      v8 = type metadata accessor for URL();
      (*(*(v8 - 8) + 16))(&a1[v6], &a2[v6], v8);
      swift_storeEnumTagMultiPayload();
    }
  }

  v9 = a3[6];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *v11;
  v10[4] = v11[4];
  *v10 = v12;
  a1[a3[7]] = a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];

  v13 = a3[9];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *v15;
  v14[16] = v15[16];
  *v14 = v16;
  a1[a3[10]] = a2[a3[10]];
  *&a1[a3[11]] = *&a2[a3[11]];

  v17 = a3[12];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *&a2[v17];
  v21 = v19[12];
  v22 = *(v19 + 2);
  v23 = v19[13];
  outlined copy of ContentTransition.Storage(v20, v22 | (v21 << 32), v23);
  v24 = *v18;
  v25 = *(v18 + 2) | (v18[12] << 32);
  *v18 = v20;
  *(v18 + 2) = v22;
  v18[12] = v21;
  v26 = v18[13];
  v18[13] = v23;
  outlined consume of ContentTransition.Storage(v24, v25, v26);
  v18[14] = v19[14];
  return a1;
}

char *initializeWithTake for WidgetAuxiliaryViewMetadata.Graphic.Named(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
    swift_storeEnumTagMultiPayload();
  }

  v9 = a3[6];
  v10 = a3[7];
  v11 = &a1[v9];
  v12 = &a2[v9];
  *v11 = *v12;
  v11[4] = v12[4];
  a1[v10] = a2[v10];
  v13 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v14[16] = v15[16];
  v16 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  *&a1[v16] = *&a2[v16];
  v17 = a3[12];
  v18 = &a1[v17];
  v19 = &a2[v17];
  *(v18 + 7) = *(v19 + 7);
  *v18 = *v19;
  return a1;
}

char *assignWithTake for WidgetAuxiliaryViewMetadata.Graphic.Named(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  if (a1 != a2)
  {
    v7 = a3[5];
    outlined destroy of ResolvableTextSegmentAttribute.Value?(&a1[v7], type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
    v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v7], &a2[v7], *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = type metadata accessor for URL();
      (*(*(v9 - 8) + 32))(&a1[v7], &a2[v7], v9);
      swift_storeEnumTagMultiPayload();
    }
  }

  v10 = a3[6];
  v11 = a3[7];
  v12 = &a1[v10];
  v13 = &a2[v10];
  *v12 = *v13;
  v12[4] = v13[4];
  a1[v11] = a2[v11];
  *&a1[a3[8]] = *&a2[a3[8]];

  v14 = a3[9];
  v15 = a3[10];
  v16 = &a1[v14];
  v17 = &a2[v14];
  *v16 = *v17;
  v16[16] = v17[16];
  a1[v15] = a2[v15];
  *&a1[a3[11]] = *&a2[a3[11]];

  v18 = a3[12];
  v19 = &a1[v18];
  v20 = &a2[v18];
  v21 = *(v20 + 6);
  v22 = *(v20 + 2);
  v23 = *&a1[v18];
  v24 = *&a1[v18 + 8] | (a1[v18 + 12] << 32);
  *v19 = *v20;
  *(v19 + 2) = v22;
  v25 = a1[v18 + 13];
  *(v19 + 6) = v21;
  outlined consume of ContentTransition.Storage(v23, v24, v25);
  v19[14] = v20[14];
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (!swift_getEnumCaseMultiPayload())
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(v5 + 64);

  return memcpy(a1, a2, v7);
}

void *assignWithCopy for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void *assignWithTake for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void *initializeBufferWithCopyOfBuffer for WidgetAuxiliaryViewMetadata.Progress(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 16);
      v9(a1, a2, v8);
      type metadata accessor for ClosedRange<Date>(0);
      v9((a1 + *(v10 + 36)), (a2 + *(v10 + 36)), v8);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
      *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    v13 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v13) = *(a2 + v13);
    v14 = a3[7];
    v15 = a1 + v14;
    v16 = a2 + v14;
    *v15 = *v16;
    v15[8] = v16[8];
    *(v15 + 3) = *(v16 + 3);
    v15[16] = v16[16];
  }

  return a1;
}

uint64_t destroy for WidgetAuxiliaryViewMetadata.Progress(uint64_t a1)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for Date();
    v3 = *(*(v2 - 8) + 8);
    v3(a1, v2);
    type metadata accessor for ClosedRange<Date>(0);
    v3(a1 + *(v4 + 36), v2);
  }
}

_BYTE *initializeWithCopy for WidgetAuxiliaryViewMetadata.Progress(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>(0);
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[7];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  v13[8] = v14[8];
  *(v13 + 3) = *(v14 + 3);
  v13[16] = v14[16];

  return a1;
}

_BYTE *assignWithCopy for WidgetAuxiliaryViewMetadata.Progress(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
    v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 16);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>(0);
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *&a1[a3[5]] = *&a2[a3[5]];

  *&a1[a3[6]] = *&a2[a3[6]];

  v11 = a3[7];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *&a1[v11] = *&a2[v11];

  v12[8] = v13[8];
  v14 = *(v13 + 3);
  v12[16] = v13[16];
  *(v12 + 3) = v14;
  return a1;
}

_BYTE *initializeWithTake for WidgetAuxiliaryViewMetadata.Progress(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 32);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>(0);
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[7];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  v13[16] = v14[16];
  return a1;
}

_BYTE *assignWithTake for WidgetAuxiliaryViewMetadata.Progress(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
    v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 32);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>(0);
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *&a1[a3[5]] = *&a2[a3[5]];

  *&a1[a3[6]] = *&a2[a3[6]];

  v11 = a3[7];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *&a1[v11] = *v13;

  v12[8] = v13[8];
  *(v12 + 3) = *(v13 + 3);
  v12[16] = v13[16];
  return a1;
}

void *initializeBufferWithCopyOfBuffer for WidgetAuxiliaryViewMetadata.Progress.Kind(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>(0);
    v8((a1 + *(v9 + 36)), (a2 + *(v9 + 36)), v7);
    type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
    *(a1 + *(v10 + 48)) = *(a2 + *(v10 + 48));
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

_BYTE *initializeWithCopy for WidgetAuxiliaryViewMetadata.Progress.Kind(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>(0);
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

_BYTE *assignWithCopy for WidgetAuxiliaryViewMetadata.Progress.Kind(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>(0);
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *initializeWithTake for WidgetAuxiliaryViewMetadata.Progress.Kind(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 32);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>(0);
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

_BYTE *assignWithTake for WidgetAuxiliaryViewMetadata.Progress.Kind(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 32);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>(0);
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (ClosedRange<Date>, Bool)(0, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool), type metadata accessor for ClosedRange<Date>, MEMORY[0x1E69E6370]);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t destroy for WidgetAuxiliaryViewMetadata.Gauge()
{
}

uint64_t initializeWithCopy for WidgetAuxiliaryViewMetadata.Gauge(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for WidgetAuxiliaryViewMetadata.Gauge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = v4;
  return a1;
}

uint64_t assignWithTake for WidgetAuxiliaryViewMetadata.Gauge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for WidgetAuxiliaryViewMetadata.Gauge(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for WidgetAuxiliaryViewMetadata.Gauge(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for WidgetAuxiliaryViewMetadata.Accessibility()
{
}

void *initializeWithCopy for WidgetAuxiliaryViewMetadata.Accessibility(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;

  return a1;
}

void *assignWithCopy for WidgetAuxiliaryViewMetadata.Accessibility(void *a1, void *a2)
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

void *assignWithTake for WidgetAuxiliaryViewMetadata.Accessibility(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  v7 = a2[7];
  a1[6] = a2[6];
  a1[7] = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for WidgetAuxiliaryViewMetadata.Accessibility(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for WidgetAuxiliaryViewMetadata.Accessibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized SymbolEffectArray.init(effects:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v17;
    v4 = v2 - 1;
    for (i = 32; ; i += 64)
    {
      v6 = *(a1 + i + 16);
      v14 = *(a1 + i);
      v15 = v6;
      v16[0] = *(a1 + i + 32);
      *(v16 + 13) = *(a1 + i + 45);
      outlined init with copy of _SymbolEffect.Identified(&v14, &v13);
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = (v3 + 48 * v8);
      v10 = v15;
      v11 = v16[0];
      *(v9 + 61) = *(v16 + 13);
      v9[2] = v10;
      v9[3] = v11;
      if (!v4)
      {
        break;
      }

      --v4;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t specialized WidgetAuxiliaryViewMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xEC00000074786554;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018CD52E00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63696870617267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567756167 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xED00007974696C69)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized WidgetAuxiliaryViewMetadata.Accessibility.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953393000 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized WidgetAuxiliaryViewMetadata.Gauge.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786F426C6562616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018CD52E40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018CD52E60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018CD52E80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E69745FLL && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized WidgetAuxiliaryViewMetadata.Graphic.Named.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F626D79537369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726F6C6F635FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6F43746E69745FLL && a2 == 0xEA0000000000726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F6D5FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x456C6F626D79735FLL && a2 == 0xEE00737463656666 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018CD52E20 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t specialized WidgetAuxiliaryViewMetadata.Progress.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786F426C6562616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018CD52E40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E69745FLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized SymbolEffectArray.init(from:)(void *a1)
{
  v3 = specialized SymbolEffectArray.init(effects:)(MEMORY[0x1E69E7CC0]);
  v4 = a1[1];
  if (v4 >= a1[2])
  {
LABEL_18:
    a1[3] = 0;
    return v3;
  }

  while (1)
  {
    v5 = a1[3];
    if (v5)
    {
      v6 = a1[4];
      if (v4 < v6)
      {
        goto LABEL_8;
      }

      if (v6 < v4)
      {
        break;
      }

      a1[3] = 0;
    }

    v5 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_21;
    }

    if (v5 < 8)
    {
      break;
    }

LABEL_8:
    if ((v5 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      ProtobufDecoder.messageField<A>(_:)();
      if (v1)
      {
        goto LABEL_21;
      }

      *v15 = *v17;
      *&v15[13] = *&v17[13];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
      }

      v7 = *(v3 + 16);
      v8 = *(v3 + 24);
      v9 = v7 + 1;
      if (v7 >= v8 >> 1)
      {
        v11 = v3;
        v12 = *(v3 + 16);
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1, v11);
        v7 = v12;
        v3 = v13;
      }

      *(v3 + 16) = v9;
      v10 = (v3 + 48 * v7);
      *(v10 + 61) = *&v17[13];
      v10[2] = v16;
      v10[3] = *v15;
    }

    else
    {
      *&v16 = v5;
      ProtobufDecoder.skipField(_:)();
      if (v1)
      {
        goto LABEL_21;
      }
    }

    v4 = a1[1];
    if (v4 >= a1[2])
    {
      goto LABEL_18;
    }
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_21:

  return v3;
}

uint64_t outlined assign with copy of WidgetAuxiliaryViewMetadata.Graphic?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)()
{
  if (!lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    }
  }
}

unint64_t lazy protocol witness table accessor for type AuxiliaryViewMetadataPreferenceWriter and conformance AuxiliaryViewMetadataPreferenceWriter()
{
  result = lazy protocol witness table cache variable for type AuxiliaryViewMetadataPreferenceWriter and conformance AuxiliaryViewMetadataPreferenceWriter;
  if (!lazy protocol witness table cache variable for type AuxiliaryViewMetadataPreferenceWriter and conformance AuxiliaryViewMetadataPreferenceWriter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuxiliaryViewMetadataPreferenceWriter, &unk_1EFF886F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AuxiliaryViewMetadataPreferenceWriter and conformance AuxiliaryViewMetadataPreferenceWriter);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys(255, a2, a3, a4);
    v8 = v7;
    v9 = lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(&lazy protocol witness table cache variable for type MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys and conformance MutableBox<A><A>.CodingKeys, type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?><A>.CodingKeys, protocol conformance descriptor for MutableBox<A><A>.CodingKeys);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [WidgetAuxiliaryViewMetadata] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9 = a3();
    result = swift_getWitnessTable(a4, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t type metadata accessor for ResolvableStringAttribute()
{
  result = lazy cache variable for type metadata for ResolvableStringAttribute;
  if (!lazy cache variable for type metadata for ResolvableStringAttribute)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ResolvableStringAttribute);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata.Graphic and conformance WidgetAuxiliaryViewMetadata.Graphic(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for [NSDictionary](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [NSDictionary])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [NSDictionary]);
    }
  }
}

uint64_t initializeWithCopy for LazyWidgetAuxiliaryMetadataTextImage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for LazyWidgetAuxiliaryMetadataTextImage(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

uint64_t assignWithTake for LazyWidgetAuxiliaryMetadataTextImage(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyWidgetAuxiliaryMetadataTextImage(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for LazyWidgetAuxiliaryMetadataTextImage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of WidgetAuxiliaryTextImagePreference??(uint64_t result)
{
  if (result != 2)
  {
    return outlined consume of WidgetAuxiliaryTextImagePreference?(result);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetAuxiliaryMetadataTextImageWriter and conformance WidgetAuxiliaryMetadataTextImageWriter()
{
  result = lazy protocol witness table cache variable for type WidgetAuxiliaryMetadataTextImageWriter and conformance WidgetAuxiliaryMetadataTextImageWriter;
  if (!lazy protocol witness table cache variable for type WidgetAuxiliaryMetadataTextImageWriter and conformance WidgetAuxiliaryMetadataTextImageWriter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetAuxiliaryMetadataTextImageWriter, &type metadata for WidgetAuxiliaryMetadataTextImageWriter, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetAuxiliaryMetadataTextImageWriter and conformance WidgetAuxiliaryMetadataTextImageWriter);
  }

  return result;
}

void type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for AccessoryBarContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessoryBarContent and conformance AccessoryBarContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect()
{
  result = lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect;
  if (!lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CustomDisabledHoverEffect, &unk_1EFFE8D00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect;
  if (!lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CustomDisabledHoverEffect, &unk_1EFFE8D00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect;
  if (!lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CustomDisabledHoverEffect, &unk_1EFFE8D00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect;
  if (!lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CustomDisabledHoverEffect, &unk_1EFFE8D00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect);
  }

  return result;
}

void protocol witness for PrimitiveCustomHoverContextEffect.makeContextValue() in conformance _CustomDisabledHoverEffect(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  *a1 = v2;
}

uint64_t protocol witness for static CustomHoverEffect._makeCustomHoverEffect(effect:inputs:body:) in conformance _CustomDisabledHoverEffect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect();

  return MEMORY[0x1EEDE2740](a1, a2, a3, a4, a5, v10);
}

uint64_t specialized PrimitiveCustomHoverContextEffect.systemHoverEffect.getter@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 3;
  a2[1] = result ^ 1;
  return result;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributedString.Runs.Index();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  type metadata accessor for AttributedString.Runs();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v10 = type metadata accessor for AttributedString.Runs.Run();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687D0]);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v13 = *(v4 + 8);
    v13(v6, v3);
    v14 = dispatch thunk of Collection.subscript.read();
    v16 = v15;
    v17 = type metadata accessor for AttributedString.Runs.Run();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, v16, v17);
    v14(v19, 0);
    v13(v9, v3);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t AttributedTextSelection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttributedTextSelection.Indices(0);
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a1, type metadata accessor for AttributedTextSelection.Indices?);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for AttributedTextSelection(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for AttributeContainer();
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *(a1 + *(v4 + 24)) = 0;
  return result;
}

uint64_t AttributedTextSelection.Indices.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = v45 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v47 = v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v54 = v45 - v17;
  v52 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v49 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v48 = v45 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v45 - v25;
  v27 = *(a1 + 16);
  v53 = a2;
  if (v27)
  {
    v28 = a1;
    outlined init with copy of AttributedTextSelection.Indices?(a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v45 - v25, type metadata accessor for Range<AttributedString.Index>);
    if (v27 == 1)
    {
      v29 = type metadata accessor for AttributedString.Index();
      v61 = v8;
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {

        (*(*(v29 - 8) + 16))(v53, v26, v29);
        _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v26, type metadata accessor for Range<AttributedString.Index>);
        return swift_storeEnumTagMultiPayload();
      }
    }

    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v26, type metadata accessor for Range<AttributedString.Index>);
    a1 = v28;
    a2 = v53;
  }

  v31 = type metadata accessor for AttributedString.Index();
  v32 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  v33 = v54;
  v60 = v32;
  v61 = v31;
  RangeSet.init()();
  v34 = v15;
  v35 = *(v6 + 16);
  v35(v34, v33, v5);
  if (v27)
  {
    v36 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v45[1] = a1;
    v46 = v6;
    v37 = a1 + v36;
    v38 = *(v20 + 72);
    v57 = (v6 + 32);
    v58 = v38;
    v59 = (v6 + 8);
    v45[0] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55 = v6 + 16;
    v56 = v35;
    v39 = v49;
    v40 = v50;
    v41 = v47;
    v42 = v48;
    do
    {
      outlined init with copy of AttributedTextSelection.Indices?(v37, v42, type metadata accessor for Range<AttributedString.Index>);
      v56(v40, v34, v5);
      outlined init with copy of AttributedTextSelection.Indices?(v42, v39, type metadata accessor for Range<AttributedString.Index>);
      RangeSet.init(_:)();
      RangeSet.union(_:)();
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v42, type metadata accessor for Range<AttributedString.Index>);
      v43 = *v59;
      (*v59)(v34, v5);
      (*v57)(v34, v41, v5);
      v37 += v58;
      --v27;
    }

    while (v27);

    a2 = v53;
    v6 = v46;
  }

  else
  {

    v43 = *(v6 + 8);
  }

  v43(v54, v5);
  v44 = v51;
  (*(v6 + 32))(v51, v34, v5);
  swift_storeEnumTagMultiPayload();
  return outlined init with take of AttributedTextSelection.Indices(v44, a2, type metadata accessor for AttributedTextSelection.Indices);
}

uint64_t specialized AttributedTextSelection.Indices.typingAttributes<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributeContainer?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized AttributedTextSelection.Indices.typingAttributesRun<A>(in:)(a1, v6);
  v10 = type metadata accessor for AttributedString.Runs.Run();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v6, type metadata accessor for AttributedString.Runs.Run?);
    v12 = type metadata accessor for AttributeContainer();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v9, 1, 1, v12);
    AttributeContainer.init()();
    result = (*(v13 + 48))(v9, 1, v12);
    if (result != 1)
    {
      return _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v9, type metadata accessor for AttributeContainer?);
    }
  }

  else
  {
    AttributedString.Runs.Run.attributes.getter();
    (*(v11 + 8))(v6, v10);
    v15 = type metadata accessor for AttributeContainer();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v9, 0, 1, v15);
    return (*(v16 + 32))(a2, v9, v15);
  }

  return result;
}

uint64_t AttributedTextSelection.nsRanges(in:removingInvalid:)(char *a1, int a2)
{
  v3 = v2;
  LODWORD(v76) = a2;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v73 = *(v5 - 1);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  v69 = type metadata accessor for AttributedString();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v75 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v62 - v14;
  type metadata accessor for Range<AttributedString.Index>(0);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString.Index();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v78 = &v62 - v24;
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AttributedTextSelection.Indices(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedTextSelection.Indices?(v3, v27, type metadata accessor for AttributedTextSelection.Indices?);
  v32 = *(v29 + 48);
  v33 = v32(v27, 1, v28);
  v77 = a1;
  if (v33 == 1)
  {
    AttributedString.endIndex.getter();
    swift_storeEnumTagMultiPayload();
    if (v32(v27, 1, v28) != 1)
    {
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v27, type metadata accessor for AttributedTextSelection.Indices?);
    }
  }

  else
  {
    outlined init with take of AttributedTextSelection.Indices(v27, v31, type metadata accessor for AttributedTextSelection.Indices);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = v78;
  if (EnumCaseMultiPayload == 1)
  {
    v37 = v70;
    v36 = v71;
    (*(v70 + 32))(v9, v31, v71);
    v38 = v72;
    v39 = RangeSet.ranges.getter();
    MEMORY[0x1EEE9AC00](v39);
    *(&v62 - 16) = v76 & 1;
    *(&v62 - 1) = v77;
    v40 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in AttributedTextSelection.nsRanges(in:removingInvalid:), (&v62 - 4));
    (v73[1])(v38, v74);
    (*(v37 + 8))(v9, v36);
    return v40;
  }

  v74 = v18[4];
  v74(v78, v31, v17);
  if (v76 & 1) != 0 && (AttributedString.endIndex.getter(), _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]), v41 = dispatch thunk of static Comparable.> infix(_:_:)(), v76 = v18[1], v76(v22, v17), (v41))
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_NSRange>, type metadata accessor for _NSRange, MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_18CD63400;
    AttributedString.endIndex.getter();
    v42 = v62;
    AttributedString.endIndex.getter();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v44 = v63;
      v45 = v74;
      v74(v63, v22, v17);
      v45(v44 + *(v75 + 48), v42, v17);
      v46 = v64;
      outlined init with copy of AttributedTextSelection.Indices?(v44, v64, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v47 = *(v75 + 48);
      v48 = v65;
      v45(v65, v46, v17);
      v49 = v46 + v47;
      v50 = v76;
      v76(v49, v17);
      outlined init with take of AttributedTextSelection.Indices(v44, v46, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v74(&v48[*(v66 + 36)], (v46 + *(v75 + 48)), v17);
      v50(v46, v17);
LABEL_13:
      v60 = v78;
      (*(v67 + 16))(v68, v77, v69);
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      *(v40 + 32) = _NSRange.init<A, B>(_:in:)();
      *(v40 + 40) = v61;
      v50(v60, v17);
      return v40;
    }
  }

  else
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_NSRange>, type metadata accessor for _NSRange, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18CD63400;
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v52 = v18[2];
      v73 = v18 + 4;
      v53 = v18;
      v76 = v51;
      v54 = v74;
      v55 = v63;
      v52(v63, v35, v17);
      v56 = v75;
      v52((v55 + *(v75 + 48)), v35, v17);
      v57 = v64;
      outlined init with copy of AttributedTextSelection.Indices?(v55, v64, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v58 = *(v56 + 48);
      v59 = v65;
      v54(v65, v57, v17);
      v50 = v53[1];
      v50(v57 + v58, v17);
      outlined init with take of AttributedTextSelection.Indices(v55, v57, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v54(&v59[*(v66 + 36)], v57 + *(v56 + 48), v17);
      v40 = v76;
      v50(v57, v17);
      goto LABEL_13;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AttributedTextSelection.indices(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedTextSelection.Indices(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedTextSelection.Indices?(v3, v8, type metadata accessor for AttributedTextSelection.Indices?);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = type metadata accessor for AttributedTextSelection.Indices?;
    v14 = v8;
  }

  else
  {
    outlined init with take of AttributedTextSelection.Indices(v8, v12, type metadata accessor for AttributedTextSelection.Indices);
    if (specialized AttributedTextSelection.Indices.areValid<A>(within:)(a1))
    {
      return outlined init with take of AttributedTextSelection.Indices(v12, a2, type metadata accessor for AttributedTextSelection.Indices);
    }

    v13 = type metadata accessor for AttributedTextSelection.Indices;
    v14 = v12;
  }

  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v14, v13);
  AttributedString.endIndex.getter();
  return swift_storeEnumTagMultiPayload();
}

uint64_t AttributedTextSelection.typingAttributes(in:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for AttributeContainer();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized AttributedTextSelection.typingAttributeContainer<A>(in:)(a1, v6);
  AttributeContainer.filter(inheritedByAddedText:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t specialized AttributedTextSelection.Indices.areValid<A>(within:)(uint64_t a1)
{
  v45 = a1;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v43 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v41 = v37 - v5;
  type metadata accessor for Range<AttributedString.Index>(0);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v37 - v11;
  v13 = type metadata accessor for AttributedString.Index();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v37 - v18;
  v20 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedTextSelection.Indices?(v1, v22, type metadata accessor for AttributedTextSelection.Indices);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v22, v9);
    type metadata accessor for AttributedString();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v23 = RangeSet<>.isValid<A>(within:)();
    (*(v10 + 8))(v12, v9);
    return v23 & 1;
  }

  v39 = *(v14 + 32);
  v37[3] = v14 + 32;
  v39(v19, v22, v13);
  v24 = v14;
  v25 = type metadata accessor for AttributedString();
  v26 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  dispatch thunk of AttributedStringProtocol.startIndex.getter();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  v27 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v38 = v24;
  v28 = *(v24 + 8);
  v28(v16, v13);
  if ((v27 & 1) == 0 || (dispatch thunk of AttributedStringProtocol.endIndex.getter(), v29 = dispatch thunk of static Comparable.<= infix(_:_:)(), v28(v16, v13), (v29 & 1) == 0))
  {
    v28(v19, v13);
    v23 = 0;
    return v23 & 1;
  }

  v37[1] = v26;
  v37[2] = v25;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v31 = *(v38 + 16);
    v32 = v41;
    v31(v41, v19, v13);
    v33 = v44;
    v31((v32 + *(v44 + 48)), v19, v13);
    v34 = v43;
    outlined init with copy of AttributedTextSelection.Indices?(v32, v43, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v38 = *(v33 + 48);
    v35 = v42;
    v36 = v39;
    v39(v42, v34, v13);
    v28((v34 + v38), v13);
    outlined init with take of AttributedTextSelection.Indices(v32, v34, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v36(v35 + *(v40 + 36), v34 + *(v33 + 48), v13);
    v28(v34, v13);
    v23 = Range<>.isValid<A>(within:)();
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v35, type metadata accessor for Range<AttributedString.Index>);
    v28(v19, v13);
    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AttributedTextSelection.init(range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v40 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  type metadata accessor for AttributeContainer?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v41 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString.Index();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v38 = v15;
    v22 = *(v19 + 16);
    v40 = a1;
    v22(v21, a1, v18);
    v23 = type metadata accessor for AttributeContainer();
    v24 = *(v23 - 8);
    v37 = *(v24 + 56);
    v37(v41, 1, 1, v23);
    v25 = type metadata accessor for AttributedTextSelection.Indices(0);
    v26 = *(*(v25 - 8) + 56);
    v26(a2, 1, 1, v25);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a2, type metadata accessor for AttributedTextSelection.Indices?);
    (*(v19 + 32))(a2, v21, v18);
    swift_storeEnumTagMultiPayload();
    v26(a2, 0, 1, v25);
    if ((*(v24 + 48))(v41, 1, v23) == 1)
    {
      v27 = v38;
      v37(v38, 1, 1, v23);
    }

    else
    {
      v34 = v39;
      (*(v24 + 32))(v39, v41, v23);
      v37(v34, 0, 1, v23);
      v27 = v38;
      outlined init with take of AttributedTextSelection.Indices(v34, v38, type metadata accessor for AttributedTextSelection.TypingAttributes);
    }

    v35 = type metadata accessor for AttributedTextSelection(0);
    outlined init with take of AttributedTextSelection.Indices(v27, a2 + *(v35 + 20), type metadata accessor for AttributedTextSelection.TypingAttributes);
    *(a2 + *(v35 + 24)) = 0;
    return _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v40, type metadata accessor for Range<AttributedString.Index>);
  }

  else
  {
    outlined init with copy of AttributedTextSelection.Indices?(a1, v6, type metadata accessor for Range<AttributedString.Index>);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    RangeSet.init(_:)();
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a1, type metadata accessor for Range<AttributedString.Index>);
    v28 = type metadata accessor for AttributedTextSelection.Indices(0);
    v29 = *(*(v28 - 8) + 56);
    v29(a2, 1, 1, v28);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a2, type metadata accessor for AttributedTextSelection.Indices?);
    (*(v8 + 32))(a2, v10, v40);
    swift_storeEnumTagMultiPayload();
    v29(a2, 0, 1, v28);
    v30 = type metadata accessor for AttributedTextSelection(0);
    v31 = *(v30 + 20);
    v32 = type metadata accessor for AttributeContainer();
    result = (*(*(v32 - 8) + 56))(a2 + v31, 1, 1, v32);
    *(a2 + *(v30 + 24)) = 0;
  }

  return result;
}

uint64_t AttributedTextSelection.init(insertionPoint:typingAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for AttributedTextSelection.Indices(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a3, 1, 1, v12);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a3, type metadata accessor for AttributedTextSelection.Indices?);
  v14 = type metadata accessor for AttributedString.Index();
  (*(*(v14 - 8) + 32))(a3, a1, v14);
  swift_storeEnumTagMultiPayload();
  v13(a3, 0, 1, v12);
  v15 = type metadata accessor for AttributeContainer();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a2, 1, v15) == 1)
  {
    (*(v16 + 56))(v11, 1, 1, v15);
  }

  else
  {
    (*(v16 + 32))(v8, a2, v15);
    (*(v16 + 56))(v8, 0, 1, v15);
    outlined init with take of AttributedTextSelection.Indices(v8, v11, type metadata accessor for AttributedTextSelection.TypingAttributes);
  }

  v17 = type metadata accessor for AttributedTextSelection(0);
  result = outlined init with take of AttributedTextSelection.Indices(v11, a3 + *(v17 + 20), type metadata accessor for AttributedTextSelection.TypingAttributes);
  *(a3 + *(v17 + 24)) = 0;
  return result;
}

uint64_t AttributedTextSelection.init(ranges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedTextSelection.Indices(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a2, 1, 1, v4);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a2, type metadata accessor for AttributedTextSelection.Indices?);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  swift_storeEnumTagMultiPayload();
  v5(a2, 0, 1, v4);
  v7 = type metadata accessor for AttributedTextSelection(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for AttributeContainer();
  result = (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  *(a2 + *(v7 + 24)) = 0;
  return result;
}

uint64_t AttributedTextSelection.affinity(in:)@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributedTextSelection(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t _s10Foundation16AttributedStringV7SwiftUIE9transform8updating4bodyyAD0B13TextSelectionVz_yACzxYKXEtxYKs5ErrorRzlF(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v134 = a6;
  v139 = a5;
  v137 = a2;
  v138 = a3;
  v144 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v144);
  v122 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v119 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for AttributeContainer();
  v146 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v114 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v111 - v13;
  v141 = a4;
  v133 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v136 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v112 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v111 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v111 - v21;
  type metadata accessor for AttributeContainer?(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v121 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v111 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v147 = &v111 - v27;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v132 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v131 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v31 = *(v30 - 8);
  v129 = v30;
  v130 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v111 - v32;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v128 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v126 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v127 = &v111 - v37;
  v38 = type metadata accessor for AttributedString.Index();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v115 = &v111 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v111 - v42;
  v44 = type metadata accessor for AttributedTextSelection.Indices(0);
  v124 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v123 = &v111 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v111 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v111 - v50;
  v143 = a1;
  AttributedTextSelection.indices(in:)(v148, &v111 - v50);
  v145 = v51;
  outlined init with copy of AttributedTextSelection.Indices?(v51, v48, type metadata accessor for AttributedTextSelection.Indices);
  v125 = v44;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v117 = v38;
  v116 = v39;
  if (EnumCaseMultiPayload == 1)
  {
    v53 = v129;
    v54 = v130;
    (*(v130 + 32))(v33, v48, v129);
    RangeSet.ranges.getter();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BB8]);
    dispatch thunk of Sequence._copyToContiguousArray()();
    (*(v54 + 8))(v33, v53);
  }

  else
  {
    v55 = v39;
    v56 = v39 + 32;
    v57 = *(v39 + 32);
    v57(v43, v48, v38);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<AttributedString.Index>>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E6F90]);
    type metadata accessor for Range<AttributedString.Index>(0);
    v131 = v58;
    v59 = (*(*(v58 - 1) + 80) + 32) & ~*(*(v58 - 1) + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_18CD63400;
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v62 = v60 + v59;
    v132 = v57;
    v63 = *(v55 + 16);
    v64 = v126;
    v129 = v56;
    v65 = v127;
    v111 = v43;
    v63(v127, v43, v38);
    v130 = v60;
    v66 = v128;
    v63((v65 + *(v128 + 48)), v43, v38);
    outlined init with copy of AttributedTextSelection.Indices?(v65, v64, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v67 = *(v66 + 48);
    v132(v62, v64, v38);
    v68 = *(v55 + 8);
    v68(v64 + v67, v38);
    outlined init with take of AttributedTextSelection.Indices(v65, v64, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v132(v62 + *(v131 + 9), v64 + *(v66 + 48), v38);
    v68(v64, v38);
    v68(v111, v38);
  }

  v69 = *(v144 + 20);
  v70 = v135;
  outlined init with copy of AttributedTextSelection.Indices?(v143 + v69, v135, type metadata accessor for AttributedTextSelection.TypingAttributes);
  v71 = v146;
  v72 = *(v146 + 48);
  v73 = v142;
  if (v72(v70, 1, v142) == 1)
  {
    v74 = *(v71 + 56);
    v74(v147, 1, 1, v73);
  }

  else
  {
    v75 = v147;
    specialized AttributedTextSelection.Indices.typingAttributes<A>(in:)(v148, v147);
    v76 = *(v71 + 56);
    v76(v75, 0, 1, v73);
    v77 = v70;
    v74 = v76;
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v77, type metadata accessor for AttributedTextSelection.TypingAttributes);
  }

  v78 = v140;
  v79 = v141;
  v80 = v136;
  v81 = _s10Foundation16AttributedStringV9transform8updating4bodySaySnyAC5IndexVGGSgAJ_yACzxYKXEtxYKs5ErrorRzlF();

  if (v78)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v147, type metadata accessor for AttributeContainer?);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v145, type metadata accessor for AttributedTextSelection.Indices);
    return (*(v133 + 32))(v134, v80, v79);
  }

  v141 = v74;
  if (v81)
  {
    v82 = v123;
    AttributedTextSelection.Indices.init(_:)(v81, v123);
    v83 = v147;
    v84 = v120;
    outlined init with copy of AttributedTextSelection.Indices?(v147, v120, type metadata accessor for AttributeContainer?);
    v85 = v142;
    if (v72(v84, 1, v142) == 1)
    {
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v83, type metadata accessor for AttributeContainer?);
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v145, type metadata accessor for AttributedTextSelection.Indices);
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v84, type metadata accessor for AttributeContainer?);
      v86 = v82;
    }

    else
    {
      v94 = v146;
      v95 = v113;
      (*(v146 + 32))(v113, v84, v85);
      v96 = v85;
      v97 = v114;
      specialized AttributedTextSelection.Indices.typingAttributes<A>(in:)(v148, v114);
      v98 = static AttributeContainer.== infix(_:_:)();
      v99 = *(v94 + 8);
      v100 = v97;
      v85 = v96;
      v99(v100, v96);
      v99(v95, v96);
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v83, type metadata accessor for AttributeContainer?);
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v145, type metadata accessor for AttributedTextSelection.Indices);
      if (v98)
      {
        v101 = v143;
        *(v143 + *(v144 + 24)) = 0;
        _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v101, type metadata accessor for AttributedTextSelection.Indices?);
        outlined init with take of AttributedTextSelection.Indices(v123, v101, type metadata accessor for AttributedTextSelection.Indices);
        return (*(v124 + 56))(v101, 0, 1, v125);
      }

      v86 = v123;
    }

    v107 = v119;
    outlined init with take of AttributedTextSelection.Indices(v86, v119, type metadata accessor for AttributedTextSelection.Indices);
    v108 = *(v124 + 56);
    v109 = v125;
    v108(v107, 0, 1, v125);
    v110 = v143;
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v143, type metadata accessor for AttributedTextSelection);
    v141(v110 + v69, 1, 1, v85);
    v108(v110, 1, 1, v109);
    result = _s7SwiftUI23AttributedTextSelectionVWOdTm_0(v107, v110, type metadata accessor for AttributedTextSelection.Indices?);
    *(v110 + *(v144 + 24)) = 0;
  }

  else
  {
    v87 = v115;
    AttributedString.endIndex.getter();
    v88 = v142;
    v148 = v146 + 56;
    v74(v121, 1, 1, v142);
    v89 = *(v124 + 56);
    v90 = v122;
    v91 = v125;
    v89(v122, 1, 1, v125);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v90, type metadata accessor for AttributedTextSelection.Indices?);
    (*(v116 + 32))(v90, v87, v117);
    swift_storeEnumTagMultiPayload();
    v89(v90, 0, 1, v91);
    v92 = v121;
    if (v72(v121, 1, v88) == 1)
    {
      v93 = v118;
      v141(v118, 1, 1, v88);
    }

    else
    {
      v102 = v92;
      v103 = v112;
      (*(v146 + 32))(v112, v102, v88);
      v141(v103, 0, 1, v88);
      v93 = v118;
      outlined init with take of AttributedTextSelection.Indices(v103, v118, type metadata accessor for AttributedTextSelection.TypingAttributes);
    }

    v104 = v147;
    v105 = v144;
    v106 = v122;
    outlined init with take of AttributedTextSelection.Indices(v93, &v122[*(v144 + 20)], type metadata accessor for AttributedTextSelection.TypingAttributes);
    *(v106 + *(v105 + 24)) = 0;
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v104, type metadata accessor for AttributeContainer?);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v145, type metadata accessor for AttributedTextSelection.Indices);
    return _s7SwiftUI23AttributedTextSelectionVWOdTm_0(v106, v143, type metadata accessor for AttributedTextSelection);
  }

  return result;
}

uint64_t specialized AttributedTextSelection.typingAttributeContainer<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for AttributedTextSelection.Indices(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  outlined init with copy of AttributedTextSelection.Indices?(v2, &v23 - v15, type metadata accessor for AttributedTextSelection.Indices?);
  v17 = *(v5 + 48);
  if (v17(v16, 1, v4) == 1)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v16, type metadata accessor for AttributedTextSelection.Indices?);
  }

  else
  {
    v18 = specialized AttributedTextSelection.Indices.areValid<A>(within:)(a1);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v16, type metadata accessor for AttributedTextSelection.Indices);
    if ((v18 & 1) == 0)
    {
      return specialized AttributedTextSelection.fallbackTypingAttributes<A>(in:)(v24);
    }
  }

  v19 = type metadata accessor for AttributedTextSelection(0);
  outlined init with copy of AttributedTextSelection.Indices?(v2 + *(v19 + 20), v10, type metadata accessor for AttributedTextSelection.TypingAttributes);
  v20 = type metadata accessor for AttributeContainer();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v10, 1, v20) != 1)
  {
    return (*(v21 + 32))(v24, v10, v20);
  }

  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v10, type metadata accessor for AttributedTextSelection.TypingAttributes);
  outlined init with copy of AttributedTextSelection.Indices?(v2, v13, type metadata accessor for AttributedTextSelection.Indices?);
  if (v17(v13, 1, v4) == 1)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v13, type metadata accessor for AttributedTextSelection.Indices?);
    return specialized AttributedTextSelection.fallbackTypingAttributes<A>(in:)(v24);
  }

  outlined init with take of AttributedTextSelection.Indices(v13, v7, type metadata accessor for AttributedTextSelection.Indices);
  specialized AttributedTextSelection.Indices.typingAttributes<A>(in:)(a1, v24);
  return _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v7, type metadata accessor for AttributedTextSelection.Indices);
}

void _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _s7SwiftUI23AttributedTextSelectionV7IndicesOSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t specialized AttributedTextSelection.fallbackTypingAttributes<A>(in:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributedString.Runs();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributeContainer?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  dispatch thunk of AttributedStringProtocol.runs.getter();
  specialized BidirectionalCollection.last.getter(v9);
  (*(v4 + 8))(v6, v3);
  v13 = type metadata accessor for AttributedString.Runs.Run();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v9, type metadata accessor for AttributedString.Runs.Run?);
    v15 = type metadata accessor for AttributeContainer();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v12, 1, 1, v15);
    AttributeContainer.init()();
    result = (*(v16 + 48))(v12, 1, v15);
    if (result != 1)
    {
      return _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v12, type metadata accessor for AttributeContainer?);
    }
  }

  else
  {
    AttributedString.Runs.Run.attributes.getter();
    (*(v14 + 8))(v9, v13);
    v18 = type metadata accessor for AttributeContainer();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v12, 0, 1, v18);
    return (*(v19 + 32))(a1, v12, v18);
  }

  return result;
}

uint64_t AttributedTextSelection.attributes(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgMaTm_1(0, &lazy cache variable for type metadata for AttributedTextSelection.Attributes<AttributedString>, MEMORY[0x1E6968848], type metadata accessor for AttributedTextSelection.Attributes);
  return outlined init with copy of AttributedTextSelection.Indices?(v2, a2 + *(v6 + 28), type metadata accessor for AttributedTextSelection);
}

uint64_t AttributedTextSelection.Attributes.makeIterator()@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v62 = a1;
  type metadata accessor for LazySequence<AttributedString.Runs>(0, a2);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AttributedString.Runs();
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DiscontiguousAttributedSubstring();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LazyMapSequence<AttributedString.Runs, AttributeContainer>(0, &lazy cache variable for type metadata for LazyMapSequence<AttributedString.Runs, AttributeContainer>, MEMORY[0x1E69E6C98], v7);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v47 - v11;
  type metadata accessor for LazyMapSequence<AttributedString.Runs, AttributeContainer>.Iterator(0, v10);
  v56 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v47 - v15;
  type metadata accessor for AttributeContainer?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v48 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributeContainer();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgMaTm_1(0, &lazy cache variable for type metadata for CollectionOfOne<AttributeContainer>, MEMORY[0x1E69688E0], MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v47 - v23;
  type metadata accessor for CollectionOfOne<AttributeContainer>.Iterator(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedTextSelection.indices(in:)(v2, v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v49;
    v31 = v50;
    v33 = v51;
    (*(v50 + 32))(v49, v30, v51);
    v34 = v53;
    AttributedString.subscript.getter();
    v35 = v60;
    DiscontiguousAttributedSubstring.runs.getter();
    (*(v54 + 8))(v34, v55);
    v36 = v59;
    v37 = *(v58 + 32);
    v38 = v61;
    v37(v59, v35, v61);
    v39 = v52;
    v37(v52, v36, v38);
    v37(v35, v39, v38);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687D8]);
    v40 = v57;
    dispatch thunk of Sequence.makeIterator()();
    v41 = (*(v31 + 8))(v32, v33);
    v42 = (v40 + *(v56 + 44));
    *v42 = specialized implicit closure #1 in AttributedTextSelection.Attributes.makeIterator();
    v42[1] = 0;
    type metadata accessor for _IteratorBox<LazyMapSequence<AttributedString.Runs, AttributeContainer>.Iterator>(0, v41);
    v43 = swift_allocObject();
    result = outlined init with take of AttributedTextSelection.Indices(v40, v43 + *(*v43 + *MEMORY[0x1E69E6AD0] + 16), type metadata accessor for LazyMapSequence<AttributedString.Runs, AttributeContainer>.Iterator);
  }

  else
  {
    specialized AttributedTextSelection.typingAttributeContainer<A>(in:)(v2, v21);
    AttributeContainer.filter(inheritedByAddedText:)();
    (*(v19 + 8))(v21, v18);
    v45 = v48;
    (*(v19 + 32))(v48, v24, v18);
    v46 = *(v19 + 56);
    v46(v45, 0, 1, v18);
    v46(v27, 1, 1, v18);
    _s7SwiftUI23AttributedTextSelectionVWOdTm_0(v45, v27, type metadata accessor for AttributeContainer?);
    type metadata accessor for _IteratorBox<CollectionOfOne<AttributeContainer>.Iterator>(0);
    v43 = swift_allocObject();
    outlined init with take of AttributedTextSelection.Indices(v27, v43 + *(*v43 + *MEMORY[0x1E69E6AD0] + 16), type metadata accessor for CollectionOfOne<AttributeContainer>.Iterator);
    result = _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v30, type metadata accessor for AttributedTextSelection.Indices);
  }

  *v62 = v43;
  return result;
}

uint64_t AttributedTextSelection.Attributes.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v78 = a4;
  v8 = type metadata accessor for AttributedString.Runs.AttributesSlice1();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6968778], v8);
  v10 = type metadata accessor for LazySequence();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v52 - v11;
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v52 - v13;
  v61 = type metadata accessor for AttributedString.Runs();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DiscontiguousAttributedSubstring();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a2;
  v77 = a3;
  swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v68 = WitnessTable;
  v69 = v8;
  v66 = type metadata accessor for LazyMapSequence();
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v52 - v17;
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v62 = *(v18 - 8);
  v63 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v54 = &v52 - v21;
  v53 = type metadata accessor for AttributeContainer();
  v22 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  v75 = v16;
  v28 = type metadata accessor for CollectionOfOne();
  MEMORY[0x1EEE9AC00](v28);
  v29 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v32 = v74;
  AttributedTextSelection.indices(in:)(v74, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v62;
    v33 = v63;
    v35 = v60;
    (*(v62 + 32))(v60, v31, v63);
    v36 = v55;
    AttributedString.subscript.getter();
    v37 = v58;
    DiscontiguousAttributedSubstring.runs.getter();
    (*(v56 + 8))(v36, v57);
    v38 = v65;
    v40 = v76;
    v39 = v77;
    AttributedString.Runs.subscript.getter();
    (*(v59 + 8))(v37, v61);
    v41 = v71;
    v42 = v69;
    MEMORY[0x18D00CB50](v69, v68);
    v43 = (*(v67 + 8))(v38, v42);
    MEMORY[0x1EEE9AC00](v43);
    v44 = *(v70 + 16);
    *(&v52 - 4) = v44;
    *(&v52 - 3) = v40;
    *(&v52 - 2) = v39;
    KeyPath = swift_getKeyPath();
    v46 = swift_allocObject();
    v46[2] = v44;
    v46[3] = v40;
    v46[4] = v39;
    v46[5] = KeyPath;
    v47 = v73;
    swift_getWitnessTable(MEMORY[0x1E69E6A68], v73);
    LazySequenceProtocol.map<A>(_:)();

    (*(v72 + 8))(v41, v47);
    swift_getWitnessTable(MEMORY[0x1E69E6CC8], v66);
    v48 = AnySequence.init<A>(_:)();
    result = (*(v34 + 8))(v35, v33);
  }

  else
  {
    specialized AttributedTextSelection.typingAttributeContainer<A>(in:)(v32, v24);
    AttributeContainer.filter(inheritedByAddedText:)();
    v50 = *(v22 + 8);
    v51 = v53;
    v50(v24, v53);
    AttributeContainer.subscript.getter();
    v50(v27, v51);
    CollectionOfOne.init(_:)();
    swift_getWitnessTable(MEMORY[0x1E69E6BD0], v28);
    v48 = AnySequence.init<A>(_:)();
    result = _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v31, type metadata accessor for AttributedTextSelection.Indices);
  }

  *v78 = v48;
  return result;
}

uint64_t implicit closure #1 in AttributedTextSelection.Attributes.subscript.getter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x1E69E77B0];
  v5 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v6 + 16))(&v15 - v11, v10);
  v13 = *(v5 + 48);
  (*(*(*(v3 + *v4 + 8) - 8) + 32))(v8, v12);
  outlined init with take of AttributedTextSelection.Indices(&v12[v13], &v8[v13], type metadata accessor for Range<AttributedString.Index>);
  swift_getAtKeyPath();
  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AttributedTextSelection.Attributes<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  AttributedTextSelection.Attributes.makeIterator()(a2, a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t AttributedString.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = a1;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v37 - v6;
  type metadata accessor for Range<AttributedString.Index>(0);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v48 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttributedString.Index();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  AttributedTextSelection.indices(in:)(v2, &v37 - v21);
  outlined init with copy of AttributedTextSelection.Indices?(v22, v19, type metadata accessor for AttributedTextSelection.Indices);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v48;
    (*(v10 + 32))(v12, v19, v48);
    AttributedString.subscript.getter();
    (*(v10 + 8))(v12, v23);
    return _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v22, type metadata accessor for AttributedTextSelection.Indices);
  }

  v41 = v12;
  v42 = v10;
  v50 = v2;
  v24 = *(v14 + 32);
  v24(v16, v19, v13);
  v25 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v39 = v25;
    v40 = v22;
    v27 = v14;
    v28 = *(v14 + 16);
    v29 = v43;
    v28(v43, v16, v13);
    v30 = v47;
    v28((v29 + *(v47 + 48)), v16, v13);
    v38 = v16;
    v31 = v24;
    v32 = v46;
    outlined init with copy of AttributedTextSelection.Indices?(v29, v46, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v33 = *(v30 + 48);
    v34 = v44;
    v31(v44, v32, v13);
    v35 = *(v27 + 8);
    v35(v32 + v33, v13);
    outlined init with take of AttributedTextSelection.Indices(v29, v32, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v31(&v34[*(v45 + 36)], v32 + *(v30 + 48), v13);
    v35(v32, v13);
    v36 = v41;
    RangeSet.init(_:)();
    AttributedString.subscript.getter();
    (*(v42 + 8))(v36, v48);
    v35(v38, v13);
    v22 = v40;
    return _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v22, type metadata accessor for AttributedTextSelection.Indices);
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation16AttributedStringV7SwiftUIE19transformAttributes2in4bodyyAD0B13TextSelectionVz_yAA18AttributeContainerVzxYKXEtxYKs5ErrorRzlF(uint64_t a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v127 = a6;
  v137 = a2;
  v7 = v6;
  v125 = a5;
  v136 = a3;
  v119 = type metadata accessor for AttributedString.CharacterView();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v120 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v107 - v14;
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v110 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for AttributedString.Runs.Run();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v109 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for AttributedString.Runs();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v107 - v20;
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v113 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v123 = &v107 - v24;
  v135 = type metadata accessor for AttributeContainer();
  v128 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v124 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v134 = &v107 - v27;
  v129 = type metadata accessor for AttributedString.Index();
  v139 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v116 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v122 = &v107 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v140 = &v107 - v32;
  v133 = a4;
  v126 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v132 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v107 - v36;
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v39 = v38;
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v107 - v41;
  v43 = type metadata accessor for AttributedTextSelection.Indices(0);
  v130 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v107 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedTextSelection.indices(in:)(v7, v45);
  v131 = v43;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v132 = a1;
    v46 = *(v40 + 32);
    v47 = v39;
    v48 = v46(v42, v45, v39);
    MEMORY[0x1EEE9AC00](v48);
    v49 = v133;
    v50 = v125;
    *(&v107 - 4) = v133;
    *(&v107 - 3) = v50;
    v51 = v136;
    *(&v107 - 2) = v137;
    *(&v107 - 1) = v51;
    v52 = v138;
    _s10Foundation16AttributedStringV7SwiftUIE9transform8updating4bodyys8RangeSetVyAC5IndexVGz_yACz_SnyAKGtxYKXEtxYKs5ErrorRzlF();
    if (v52)
    {
      (*(v126 + 32))(v127, v37, v49);
      v53 = v132;
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v132, type metadata accessor for AttributedTextSelection.Indices?);
      v46(v53, v42, v47);
      v54 = v131;
      swift_storeEnumTagMultiPayload();
      return (*(v130 + 56))(v53, 0, 1, v54);
    }

    else
    {
      v65 = v132;
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v132, type metadata accessor for AttributedTextSelection.Indices?);
      v46(v65, v42, v47);
      v66 = v131;
      swift_storeEnumTagMultiPayload();
      return (*(v130 + 56))(v65, 0, 1, v66);
    }
  }

  else
  {
    v56 = (v139 + 32);
    v57 = v129;
    v125 = *(v139 + 32);
    (v125)(v140, v45, v129);
    v58 = v124;
    specialized AttributedTextSelection.typingAttributeContainer<A>(in:)(v7, v124);
    v59 = v134;
    AttributeContainer.filter(inheritedByAddedText:)();
    v61 = (v128 + 8);
    v60 = *(v128 + 8);
    v62 = v58;
    v63 = v135;
    v60(v62, v135);
    v64 = v138;
    (v137)(v59, v132);
    if (v64)
    {
      (*(v139 + 8))(v140, v57);
      (*(v126 + 32))(v127, v132, v133);
      return (v60)(v59, v63);
    }

    else
    {
      v127 = 0;
      v136 = v61;
      v137 = v56;
      v138 = v60;
      v132 = a1;
      v67 = v122;
      AttributedString.endIndex.getter();
      v68 = static AttributedString.Index.< infix(_:_:)();
      v133 = *(v139 + 8);
      (v133)(v67, v57);
      v69 = (v111 + 8);
      if (v68)
      {
        v70 = v107;
        AttributedString.runs.getter();
        v71 = v109;
        AttributedString.Runs.subscript.getter();
        (*v69)(v70, v112);
        v72 = v113;
        AttributedString.Runs.Run.range.getter();
        (*(v114 + 8))(v71, v115);
        v73 = 0;
        v74 = v128;
      }

      else
      {
        v75 = v108;
        v126 = v7;
        AttributedString.runs.getter();
        v76 = v110;
        specialized BidirectionalCollection.last.getter(v110);
        (*v69)(v75, v112);
        v77 = v114;
        v78 = v115;
        v79 = (*(v114 + 48))(v76, 1, v115);
        v74 = v128;
        if (v79 == 1)
        {
          _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v76, type metadata accessor for AttributedString.Runs.Run?);
          v73 = 1;
          v72 = v113;
        }

        else
        {
          v72 = v113;
          AttributedString.Runs.Run.range.getter();
          (*(v77 + 8))(v76, v78);
          v73 = 0;
        }
      }

      type metadata accessor for Range<AttributedString.Index>(0);
      (*(*(v80 - 8) + 56))(v72, v73, 1, v80);
      v81 = v123;
      outlined init with take of AttributedTextSelection.Indices(v72, v123, type metadata accessor for Range<AttributedString.Index>?);
      v82 = *(type metadata accessor for AttributedTextSelection(0) + 20);
      v83 = v132;
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v132 + v82, type metadata accessor for AttributedTextSelection.TypingAttributes);
      v84 = v134;
      v85 = v135;
      (*(v74 + 16))(v83 + v82, v134, v135);
      v86 = (*(v74 + 56))(v83 + v82, 0, 1, v85);
      MEMORY[0x1EEE9AC00](v86);
      *(&v107 - 2) = v84;
      *(&v107 - 1) = v81;
      _s10Foundation16AttributedStringV7SwiftUIE9transform8updating4bodyyAC5IndexVz_yACzxYKXEtxYKs5ErrorRzlF();
      v87 = v117;
      AttributedString.characters.getter();
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968690]);
      v88 = v122;
      v89 = v119;
      dispatch thunk of Collection.startIndex.getter();
      v90 = v116;
      dispatch thunk of Collection.endIndex.getter();
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
      v91 = v129;
      LOBYTE(v83) = dispatch thunk of static Equatable.== infix(_:_:)();
      v92 = v90;
      v93 = v133;
      (v133)(v92, v91);
      (v93)(v88, v91);
      v94 = v87;
      v95 = v91;
      (*(v118 + 8))(v94, v89);
      v96 = 1;
      v97 = v120;
      v98 = v139;
      if ((v83 & 1) == 0)
      {
        AttributedString.startIndex.getter();
        v99 = static AttributedString.Index.== infix(_:_:)();
        (v93)(v88, v95);
        if (v99)
        {
          (*(v98 + 16))(v97, v140, v95);
        }

        else
        {
          type metadata accessor for AttributedString();
          _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
          AttributedStringProtocol.index(beforeCharacter:)();
        }

        v96 = 0;
      }

      (*(v98 + 56))(v97, v96, 1, v95);
      v100 = v97;
      v101 = v121;
      v102 = outlined init with take of AttributedTextSelection.Indices(v100, v121, type metadata accessor for AttributedString.Index?);
      MEMORY[0x1EEE9AC00](v102);
      v103 = v134;
      *(&v107 - 2) = v101;
      *(&v107 - 1) = v103;
      v104 = v140;
      _s10Foundation16AttributedStringV7SwiftUIE9transform8updating4bodyyAC5IndexVz_yACzxYKXEtxYKs5ErrorRzlF();
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v101, type metadata accessor for AttributedString.Index?);
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v123, type metadata accessor for Range<AttributedString.Index>?);
      v105 = v132;
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v132, type metadata accessor for AttributedTextSelection.Indices?);
      (v125)(v105, v104, v95);
      v106 = v131;
      swift_storeEnumTagMultiPayload();
      (*(v130 + 56))(v105, 0, 1, v106);
      return (v138)(v103, v135);
    }
  }
}

uint64_t _s10Foundation16AttributedStringV7SwiftUIE19transformAttributes2in4bodyyAD0B13TextSelectionVz_yAA18AttributeContainerVzxYKXEtxYKs5ErrorRzlFyACz_SnyAC5IndexVGtxYKXEfU_(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v32 = a3;
  v31 = a4;
  v35 = a2;
  v26 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.Runs.Run();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString.Runs();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AttributeContainer();
  v17 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = a1;
  AttributedString.runs.getter();
  AttributedString.Runs.subscript.getter();
  (*(v14 + 8))(v16, v13);
  AttributedString.Runs.Run.attributes.getter();
  v20 = v9;
  v21 = v29;
  (*(v10 + 8))(v12, v20);
  v22 = v33;
  v32(v19, v21);
  if (v22)
  {
    (*(v17 + 8))(v19, v30);
    return (*(v26 + 32))(v27, v21, v28);
  }

  else
  {
    type metadata accessor for Range<AttributedString.Index>(0);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    v24 = AttributedString.subscript.modify();
    AttributedSubstring.setAttributes(_:)();
    v24(v34, 0);
    return (*(v17 + 8))(v19, v30);
  }
}

uint64_t _s10Foundation16AttributedStringV7SwiftUIE19transformAttributes2in4bodyyAD0B13TextSelectionVz_yAA18AttributeContainerVzxYKXEtxYKs5ErrorRzlFyACzXEfU0_(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v45 = a3;
  v38[1] = a1;
  v5 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v38[0] = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.AttributeRunBoundaries?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributeContainer();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v38 - v22;
  (*(v17 + 16))(v19, a2, v16, v21);
  v24 = *MEMORY[0x1E6968710];
  v25 = type metadata accessor for AttributedString.AttributeRunBoundaries();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v15, v24, v25);
  (*(v26 + 56))(v15, 0, 1, v25);
  v44 = v23;
  AttributeContainer.filter(runBoundaries:)();
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v15, type metadata accessor for AttributedString.AttributeRunBoundaries?);
  v27 = *(v17 + 8);
  v46 = v16;
  v28 = v16;
  v29 = v42;
  v27(v19, v28);
  outlined init with copy of AttributedTextSelection.Indices?(v45, v9, type metadata accessor for Range<AttributedString.Index>?);
  if ((*(v43 + 48))(v9, 1, v29) == 1)
  {
    v27(v44, v46);
    return _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v9, type metadata accessor for Range<AttributedString.Index>?);
  }

  else
  {
    v31 = v9;
    v32 = v38[0];
    outlined init with take of AttributedTextSelection.Indices(v31, v38[0], type metadata accessor for Range<AttributedString.Index>);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    v33 = AttributedString.subscript.modify();
    v35 = v39;
    v34 = v40;
    v36 = v41;
    (*(v40 + 104))(v39, *MEMORY[0x1E69686E8], v41);
    v37 = v44;
    AttributedSubstring.mergeAttributes(_:mergePolicy:)();
    (*(v34 + 8))(v35, v36);
    v33(v47, 0);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v32, type metadata accessor for Range<AttributedString.Index>);
    return (v27)(v37, v46);
  }
}

uint64_t _s10Foundation16AttributedStringV7SwiftUIE19transformAttributes2in4bodyyAD0B13TextSelectionVz_yAA18AttributeContainerVzxYKXEtxYKs5ErrorRzlFyACzXEfU1_(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, double a4)
{
  v65 = a3;
  v68 = a1;
  v69 = a2;
  v5 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v58 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = v56 - v10;
  type metadata accessor for ClosedRange<AttributedString.Index>(0);
  v60 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v66 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for AttributedString.CharacterView();
  v13 = *(v64 - 1);
  MEMORY[0x1EEE9AC00](v64);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.AttributeRunBoundaries?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for AttributeContainer();
  v19 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v67 = v56 - v23;
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AttributedString.Index();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v70 = v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedTextSelection.Indices?(v69, v26, type metadata accessor for AttributedString.Index?);
  v69 = v28;
  if ((*(v28 + 6))(v26, 1, v27) == 1)
  {
    return _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v26, type metadata accessor for AttributedString.Index?);
  }

  v31 = *(v69 + 4);
  v56[1] = v69 + 32;
  v56[2] = v4;
  v56[0] = v31;
  v31(v70, v26, v27);
  (*(v19 + 16))(v21, v65, v72);
  AttributedString.characters.getter();
  v32 = AttributedString.CharacterView.subscript.getter();
  v34 = v33;
  (*(v13 + 8))(v15, v64);
  *v18 = v32;
  v18[1] = v34;
  v35 = *MEMORY[0x1E6968700];
  v36 = type metadata accessor for AttributedString.AttributeRunBoundaries();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v18, v35, v36);
  (*(v37 + 56))(v18, 0, 1, v36);
  AttributeContainer.filter(runBoundaries:)();
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v18, type metadata accessor for AttributedString.AttributeRunBoundaries?);
  v38 = *(v19 + 8);
  v65 = v19 + 8;
  v38(v21, v72);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v39 = v69;
    v40 = v70;
    v64 = v38;
    v41 = *(v69 + 2);
    v42 = v57;
    v41(v57, v70, v27);
    v43 = v59;
    v41((v42 + *(v59 + 48)), v40, v27);
    v44 = v58;
    outlined init with copy of AttributedTextSelection.Indices?(v42, v58, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v45 = *(v43 + 48);
    v46 = v56[0];
    (v56[0])(v66, v44, v27);
    v47 = *(v39 + 1);
    v47((v44 + v45), v27);
    v69 = v47;
    outlined init with take of AttributedTextSelection.Indices(v42, v44, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v48 = *(v43 + 48);
    v49 = v66;
    v46(&v66[*(v60 + 36)], v44 + v48, v27);
    v47(v44, v27);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type ClosedRange<AttributedString.Index> and conformance ClosedRange<A>, type metadata accessor for ClosedRange<AttributedString.Index>, MEMORY[0x1E69E5FB8]);
    v50 = v49;
    v51 = AttributedString.subscript.modify();
    v53 = v61;
    v52 = v62;
    v54 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x1E69686E8], v63);
    v55 = v67;
    AttributedSubstring.mergeAttributes(_:mergePolicy:)();
    (*(v52 + 8))(v53, v54);
    v51(v71, 0);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v50, type metadata accessor for ClosedRange<AttributedString.Index>);
    v64(v55, v72);
    return (v69)(v70, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized AttributedTextSelection.Indices.typingAttributesRun<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v101 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedSubstring();
  v103 = *(v6 - 8);
  v104 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v88 - v9;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v93 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v88 - v13;
  type metadata accessor for ClosedRange<AttributedString.Index>(0);
  v95 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for AttributedString.CharacterView();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString.Runs();
  v112 = *(v17 - 8);
  v113 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v88 - v20;
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v105 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v106 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v98 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v107 = *(v31 - 1);
  v108 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v115 = &v88 - v32;
  v33 = type metadata accessor for AttributedString.Index();
  v109 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v102 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v88 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v110 = &v88 - v39;
  v40 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v88 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a1;
  if ((specialized AttributedTextSelection.Indices.areValid<A>(within:)(a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  outlined init with copy of AttributedTextSelection.Indices?(v2, v42, type metadata accessor for AttributedTextSelection.Indices);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v48 = v109;
    v47 = v110;
    v49 = v109 + 32;
    v108 = *(v109 + 32);
    v108(v110, v42, v33);
    v50 = type metadata accessor for AttributedString();
    v51 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    v115 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v52 = dispatch thunk of static Comparable.> infix(_:_:)();
    v53 = *(v48 + 8);
    v53(v37, v33);
    if ((v52 & 1) == 0)
    {
      v78 = v111;
      dispatch thunk of AttributedStringProtocol.runs.getter();
      specialized Collection.first.getter(v114);
      (*(v112 + 8))(v78, v113);
      v79 = v47;
      return (v53)(v79, v33);
    }

    v101 = v49;
    v54 = v102;
    AttributedStringProtocol.index(beforeCharacter:)();
    v105 = v51;
    v106 = v50;
    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    v55 = static AttributedString.Index.< infix(_:_:)();
    v107 = v53;
    v53(v37, v33);
    if ((v55 & 1) == 0)
    {
      goto LABEL_17;
    }

    v56 = v89;
    dispatch thunk of AttributedStringProtocol.characters.getter();
    v57 = AttributedString.CharacterView.subscript.getter();
    v59 = v58;
    (*(v90 + 8))(v56, v91);
    v60 = specialized Collection.first.getter(v57, v59);
    if ((v60 & 0x100000000) != 0)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v61 = v60;

    if ((v61 - 14) > 0xFFFFFFFB || (v61 - 8232) < 2 || v61 == 133)
    {
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v62 = *(v109 + 16);
        v63 = v92;
        v62(v92, v47, v33);
        v64 = v47;
        v65 = v93;
        v62((v63 + *(v93 + 48)), v64, v33);
        v66 = v94;
        outlined init with copy of AttributedTextSelection.Indices?(v63, v94, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v67 = *(v65 + 48);
        v68 = v96;
        v69 = v108;
        v108(v96, v66, v33);
        v107(v66 + v67, v33);
        outlined init with take of AttributedTextSelection.Indices(v63, v66, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v69(v68 + *(v95 + 36), v66 + *(v65 + 48), v33);
LABEL_19:
        v53 = v107;
        v107(v66, v33);
        _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type ClosedRange<AttributedString.Index> and conformance ClosedRange<A>, type metadata accessor for ClosedRange<AttributedString.Index>, MEMORY[0x1E69E5FB8]);
        v85 = v97;
        dispatch thunk of AttributedStringProtocol.subscript.getter();
        _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v68, type metadata accessor for ClosedRange<AttributedString.Index>);
        v86 = v111;
        AttributedSubstring.runs.getter();
        (*(v103 + 8))(v85, v104);
        specialized Collection.first.getter(v114);
        (*(v112 + 8))(v86, v113);
        v53(v102, v33);
        v79 = v110;
        return (v53)(v79, v33);
      }
    }

    else
    {
LABEL_17:
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v80 = *(v109 + 16);
        v81 = v92;
        v80(v92, v54, v33);
        v82 = v93;
        v80((v81 + *(v93 + 48)), v54, v33);
        v66 = v94;
        outlined init with copy of AttributedTextSelection.Indices?(v81, v94, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v83 = *(v82 + 48);
        v68 = v96;
        v84 = v108;
        v108(v96, v66, v33);
        v107(v66 + v83, v33);
        outlined init with take of AttributedTextSelection.Indices(v81, v66, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v84(v68 + *(v95 + 36), v66 + *(v82 + 48), v33);
        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v44 = v107;
  v43 = v108;
  (*(v107 + 4))(v115, v42, v108);
  RangeSet.ranges.getter();
  specialized Collection.first.getter(v23);
  (*(v25 + 8))(v27, v105);
  if ((*(v29 + 48))(v23, 1, v106) == 1)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v23, type metadata accessor for Range<AttributedString.Index>?);
    v46 = v112;
    v45 = v113;
LABEL_15:
    type metadata accessor for AttributedString();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v76 = v111;
    dispatch thunk of AttributedStringProtocol.runs.getter();
    specialized BidirectionalCollection.last.getter(v114);
    (*(v46 + 8))(v76, v45);
    return (*(v44 + 1))(v115, v43);
  }

  v70 = v98;
  outlined init with take of AttributedTextSelection.Indices(v23, v98, type metadata accessor for Range<AttributedString.Index>);
  type metadata accessor for AttributedString();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  v71 = v100;
  dispatch thunk of AttributedStringProtocol.subscript.getter();
  v72 = v99;
  AttributedSubstring.runs.getter();
  (*(v103 + 8))(v71, v104);
  v73 = v101;
  specialized Collection.first.getter(v101);
  v46 = v112;
  v45 = v113;
  (*(v112 + 8))(v72, v113);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v70, type metadata accessor for Range<AttributedString.Index>);
  v74 = type metadata accessor for AttributedString.Runs.Run();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v73, 1, v74) == 1)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v73, type metadata accessor for AttributedString.Runs.Run?);
    goto LABEL_15;
  }

  (*(v44 + 1))(v115, v43);
  v87 = v114;
  (*(v75 + 32))(v114, v73, v74);
  return (*(v75 + 56))(v87, 0, 1, v74);
}

uint64_t AttributedString.replaceSelection<A>(_:withCharacters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v23 = a2;
  v25 = a4;
  v24 = type metadata accessor for AttributeContainer();
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributedString();
  v15 = *(v21 - 8);
  v16 = MEMORY[0x1EEE9AC00](v21);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v23, a3, v16);
  specialized AttributedTextSelection.typingAttributeContainer<A>(in:)(v22, v9);
  AttributeContainer.filter(inheritedByAddedText:)();
  (*(v7 + 8))(v9, v24);
  AttributedString.init<A>(_:attributes:)();
  specialized AttributedString.replaceSelection<A>(_:with:)(a1, v18);
  return (*(v15 + 8))(v18, v21);
}

uint64_t specialized AttributedString.replaceSelection<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v120 = a2;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v103 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v102 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributeContainer?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v118 = v10;
  v115 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v96 - v13;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v107 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v96 - v17;
  type metadata accessor for Range<AttributedString.Index>(0);
  v112 = *(v18 - 8);
  v113 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v97 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v96 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v96 - v23;
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v108 = (&v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v109 = &v96 - v27;
  v28 = type metadata accessor for AttributedString.Index();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v116 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v96 - v32;
  v34 = type metadata accessor for AttributedTextSelection.Indices(0);
  v98 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v3;
  v37 = a1;
  AttributedTextSelection.indices(in:)(v3, v36);
  v99 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v117 = v9;
  v111 = v29;
  if (EnumCaseMultiPayload == 1)
  {
    v109 = v28;
    v39 = v114;
    v40 = v115;
    v41 = v115 + 32;
    v42 = *(v115 + 32);
    v43 = v118;
    v42(v114, v36, v118);
    v44 = v39;
    if (RangeSet.isEmpty.getter())
    {
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v37, type metadata accessor for AttributedTextSelection);
      type metadata accessor for AttributedString();
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      AttributedString.append<A>(_:)();
      v45 = v116;
      AttributedString.endIndex.getter();
      v46 = type metadata accessor for AttributeContainer();
      v47 = v117;
      (*(*(v46 - 8) + 56))(v117, 1, 1, v46);
      AttributedTextSelection.init(insertionPoint:typingAttributes:)(v45, v47, v37);
      return (*(v40 + 8))(v44, v43);
    }

    v107 = v41;
    v108 = v42;
    v110 = v37;
    RangeSet.ranges.getter();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BB8]);
    v69 = dispatch thunk of Sequence._copyToContiguousArray()();
    v70 = v69;
    v121 = v69;
    v71 = *(v69 + 16);
    if (v71)
    {
      for (i = 0; i != v71; ++i)
      {
        MEMORY[0x1EEE9AC00](v69);
        *(&v96 - 4) = i;
        *(&v96 - 3) = &v121;
        *(&v96 - 2) = v120;

        v73 = _s10Foundation16AttributedStringV9transform8updating4bodySaySnyAC5IndexVGGSgAJ_yACzxYKXEtxYKs5ErrorRzlF();

        if (v73)
        {
          v70 = v73;
        }

        else
        {
        }

        v121 = v70;
      }
    }

    v74 = v110;
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v110, type metadata accessor for AttributedTextSelection);
    v75 = v118;
    v77 = v114;
    v76 = v115;
    v78 = v108;
    if (*(v70 + 16))
    {
      v79 = v97;
      outlined init with copy of AttributedTextSelection.Indices?(v70 + ((*(v112 + 80) + 32) & ~*(v112 + 80)), v97, type metadata accessor for Range<AttributedString.Index>);
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
      v80 = v109;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v81 = v116;
        (*(v111 + 16))(v116, v79, v80);
        v82 = type metadata accessor for AttributeContainer();
        v83 = v117;
        (*(*(v82 - 8) + 56))(v117, 1, 1, v82);
        AttributedTextSelection.init(insertionPoint:typingAttributes:)(v81, v83, v74);
        _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v79, type metadata accessor for Range<AttributedString.Index>);
        (*(v76 + 8))(v77, v75);
      }

      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v79, type metadata accessor for Range<AttributedString.Index>);
    }

    v90 = v100;
    _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufC10Foundation16AttributedStringV5IndexV_SaySnyALGGTt1g5(v89);
    (*(v76 + 8))(v77, v75);
    v91 = *(v98 + 56);
    v92 = v99;
    v91(v74, 1, 1, v99);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v74, type metadata accessor for AttributedTextSelection.Indices?);
    v78(v74, v90, v75);
    swift_storeEnumTagMultiPayload();
    v91(v74, 0, 1, v92);
    v93 = type metadata accessor for AttributedTextSelection(0);
    v94 = *(v93 + 20);
    v95 = type metadata accessor for AttributeContainer();
    (*(*(v95 - 8) + 56))(v74 + v94, 1, 1, v95);

    *(v74 + *(v93 + 24)) = 0;
  }

  else
  {
    v110 = a1;
    v49 = *(v29 + 32);
    v49(v33, v36, v28);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v50 = *(v29 + 16);
      v51 = v104;
      v50(v104, v33, v28);
      v114 = (v29 + 16);
      v115 = 0;
      v118 = v33;
      v52 = v107;
      v53 = v51 + *(v107 + 48);
      v103 = v50;
      v50(v53, v33, v28);
      v54 = v105;
      outlined init with copy of AttributedTextSelection.Indices?(v51, v105, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v55 = *(v52 + 48);
      v56 = v106;
      v49(v106, v54, v28);
      v57 = *(v111 + 8);
      v57(v54 + v55, v28);
      outlined init with take of AttributedTextSelection.Indices(v51, v54, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v58 = *(v52 + 48);
      v59 = v113;
      v49((v56 + *(v113 + 36)), (v54 + v58), v28);
      v60 = (v57)(v54, v28);
      MEMORY[0x1EEE9AC00](v60);
      v61 = v120;
      *(&v96 - 2) = v118;
      *(&v96 - 1) = v61;
      v62 = v109;
      _s10Foundation16AttributedStringV9transform8updating4bodySnyAC5IndexVGSgAI_yACzxYKXEtxYKs5ErrorRzlF();
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v56, type metadata accessor for Range<AttributedString.Index>);
      v63 = v110;
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v110, type metadata accessor for AttributedTextSelection);
      v64 = v108;
      outlined init with copy of AttributedTextSelection.Indices?(v62, v108, type metadata accessor for Range<AttributedString.Index>?);
      v65 = v28;
      if ((*(v112 + 48))(v64, 1, v59) == 1)
      {
        _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v64, type metadata accessor for Range<AttributedString.Index>?);
        v66 = v116;
        AttributedString.endIndex.getter();
        v67 = type metadata accessor for AttributeContainer();
        v68 = v117;
        (*(*(v67 - 8) + 56))(v117, 1, 1, v67);
        AttributedTextSelection.init(insertionPoint:typingAttributes:)(v66, v68, v63);
      }

      else
      {
        v84 = v64;
        v85 = v101;
        outlined init with take of AttributedTextSelection.Indices(v84, v101, type metadata accessor for Range<AttributedString.Index>);
        v86 = v116;
        v103(v116, v85, v28);
        v87 = type metadata accessor for AttributeContainer();
        v88 = v117;
        (*(*(v87 - 8) + 56))(v117, 1, 1, v87);
        AttributedTextSelection.init(insertionPoint:typingAttributes:)(v86, v88, v63);
        _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v85, type metadata accessor for Range<AttributedString.Index>);
      }

      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v62, type metadata accessor for Range<AttributedString.Index>?);
      return (v57)(v118, v65);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t AttributedString.replaceSelection<A>(_:with:)(uint64_t a1, char *a2, char *a3, char *a4)
{
  v5 = v4;
  v123 = a2;
  v124 = a4;
  v122 = a3;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v107 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v106 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v118 = *(v9 - 1);
  v119 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v101 - v12;
  type metadata accessor for AttributeContainer?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v110 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v108 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v101 - v19;
  type metadata accessor for Range<AttributedString.Index>(0);
  v116 = *(v20 - 8);
  v117 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v101 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v121 = &v101 - v25;
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v111 = (&v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v112 = (&v101 - v29);
  v30 = type metadata accessor for AttributedString.Index();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v120 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v101 - v34;
  v36 = type metadata accessor for AttributedTextSelection.Indices(0);
  v102 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v5;
  v39 = v5;
  v40 = a1;
  AttributedTextSelection.indices(in:)(v39, v38);
  v103 = v36;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v112 = v31;
    v121 = v30;
    v41 = v118;
    v42 = v119;
    v43 = v118 + 32;
    v44 = *(v118 + 32);
    v45 = v115;
    v44(v115, v38, v119);
    if (RangeSet.isEmpty.getter())
    {
      v46 = v40;
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v40, type metadata accessor for AttributedTextSelection);
      AttributedString.append<A>(_:)();
      v47 = v120;
      AttributedString.endIndex.getter();
      v48 = type metadata accessor for AttributeContainer();
      (*(*(v48 - 8) + 56))(v15, 1, 1, v48);
      AttributedTextSelection.init(insertionPoint:typingAttributes:)(v47, v15, v46);
      return (*(v41 + 8))(v45, v42);
    }

    v110 = v43;
    v111 = v44;
    v113 = v15;
    v114 = v40;
    v71 = v45;
    RangeSet.ranges.getter();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BB8]);
    v72 = dispatch thunk of Sequence._copyToContiguousArray()();
    v73 = v72;
    v126 = v72;
    v74 = *(v72 + 16);
    if (v74)
    {
      for (i = 0; i != v74; ++i)
      {
        MEMORY[0x1EEE9AC00](v72);
        v76 = v123;
        v77 = v124;
        *(&v101 - 6) = v122;
        *(&v101 - 5) = v77;
        *(&v101 - 4) = i;
        *(&v101 - 3) = &v126;
        *(&v101 - 2) = v76;

        v78 = _s10Foundation16AttributedStringV9transform8updating4bodySaySnyAC5IndexVGGSgAJ_yACzxYKXEtxYKs5ErrorRzlF();

        if (v78)
        {
          v73 = v78;
        }

        else
        {
        }

        v126 = v73;
      }
    }

    v79 = v114;
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v114, type metadata accessor for AttributedTextSelection);
    v80 = v113;
    v81 = v118;
    v82 = v71;
    v83 = v111;
    if (*(v73 + 16))
    {
      v84 = v101;
      outlined init with copy of AttributedTextSelection.Indices?(v73 + ((*(v116 + 80) + 32) & ~*(v116 + 80)), v101, type metadata accessor for Range<AttributedString.Index>);
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
      v85 = v121;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v86 = v120;
        v112[2](v120, v84, v85);
        v87 = type metadata accessor for AttributeContainer();
        (*(*(v87 - 8) + 56))(v80, 1, 1, v87);
        AttributedTextSelection.init(insertionPoint:typingAttributes:)(v86, v80, v79);
        _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v84, type metadata accessor for Range<AttributedString.Index>);
        (*(v81 + 8))(v82, v119);
      }

      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v84, type metadata accessor for Range<AttributedString.Index>);
    }

    v94 = v104;
    _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufC10Foundation16AttributedStringV5IndexV_SaySnyALGGTt1g5(v93);
    v95 = v119;
    (*(v81 + 8))(v82, v119);
    v96 = *(v102 + 56);
    v97 = v103;
    v96(v79, 1, 1, v103);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v79, type metadata accessor for AttributedTextSelection.Indices?);
    v83(v79, v94, v95);
    swift_storeEnumTagMultiPayload();
    v96(v79, 0, 1, v97);
    v98 = type metadata accessor for AttributedTextSelection(0);
    v99 = *(v98 + 20);
    v100 = type metadata accessor for AttributeContainer();
    (*(*(v100 - 8) + 56))(v79 + v99, 1, 1, v100);

    *(v79 + *(v98 + 24)) = 0;
  }

  else
  {
    v113 = v15;
    v114 = a1;
    v50 = v31[4];
    v50(v35, v38, v30);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v51 = v31[2];
      v52 = v109;
      v51(v109, v35, v30);
      v118 = 0;
      v53 = v35;
      v54 = v110;
      v55 = v52 + *(v110 + 48);
      v115 = (v31 + 2);
      v107 = v51;
      v51(v55, v53, v30);
      v56 = v108;
      outlined init with copy of AttributedTextSelection.Indices?(v52, v108, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v57 = *(v54 + 48);
      v50(v121, v56, v30);
      v58 = v31[1];
      v58(v56 + v57, v30);
      outlined init with take of AttributedTextSelection.Indices(v52, v56, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v59 = *(v54 + 48);
      v60 = v117;
      v61 = v121;
      v50(&v121[*(v117 + 36)], (v56 + v59), v30);
      v119 = v58;
      v62 = (v58)(v56, v30);
      MEMORY[0x1EEE9AC00](v62);
      v63 = v123;
      v64 = v124;
      *(&v101 - 4) = v122;
      *(&v101 - 3) = v64;
      v124 = v53;
      *(&v101 - 2) = v53;
      *(&v101 - 1) = v63;
      v65 = v112;
      _s10Foundation16AttributedStringV9transform8updating4bodySnyAC5IndexVGSgAI_yACzxYKXEtxYKs5ErrorRzlF();
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v61, type metadata accessor for Range<AttributedString.Index>);
      v66 = v114;
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v114, type metadata accessor for AttributedTextSelection);
      v67 = v111;
      outlined init with copy of AttributedTextSelection.Indices?(v65, v111, type metadata accessor for Range<AttributedString.Index>?);
      if ((*(v116 + 48))(v67, 1, v60) == 1)
      {
        _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v67, type metadata accessor for Range<AttributedString.Index>?);
        v68 = v120;
        AttributedString.endIndex.getter();
        v69 = type metadata accessor for AttributeContainer();
        v70 = v113;
        (*(*(v69 - 8) + 56))(v113, 1, 1, v69);
        AttributedTextSelection.init(insertionPoint:typingAttributes:)(v68, v70, v66);
      }

      else
      {
        v88 = v67;
        v89 = v105;
        outlined init with take of AttributedTextSelection.Indices(v88, v105, type metadata accessor for Range<AttributedString.Index>);
        v90 = v120;
        v107(v120, v89, v30);
        v91 = type metadata accessor for AttributeContainer();
        v92 = v113;
        (*(*(v91 - 8) + 56))(v113, 1, 1, v91);
        AttributedTextSelection.init(insertionPoint:typingAttributes:)(v90, v92, v66);
        _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v89, type metadata accessor for Range<AttributedString.Index>);
      }

      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v65, type metadata accessor for Range<AttributedString.Index>?);
      return (v119)(v124, v30);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized closure #1 in AttributedString.replaceSelection<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  type metadata accessor for Range<AttributedString.Index>(0);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttributedString.Index();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v17 = *(v15 - 8);
    v30 = a1;
    v18 = v17;
    v19 = *(v17 + 16);
    v29 = a3;
    v19(v11, a2, v15);
    v20 = v32;
    v19(&v11[*(v32 + 48)], a2, v15);
    outlined init with copy of AttributedTextSelection.Indices?(v11, v8, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v27 = *(v20 + 48);
    v21 = *(v18 + 32);
    v21(v14, v8, v15);
    v28 = v14;
    v22 = v11;
    v23 = v31;
    v24 = *(v18 + 8);
    v24(&v8[v27], v15);
    outlined init with take of AttributedTextSelection.Indices(v22, v8, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v25 = *(v20 + 48);
    v26 = v28;
    v21(&v28[*(v23 + 36)], &v8[v25], v15);
    v24(v8, v15);
    type metadata accessor for AttributedString();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    AttributedString.replaceSubrange<A, B>(_:with:)();
    return _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v26, type metadata accessor for Range<AttributedString.Index>);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in AttributedString.replaceSelection<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[4] = a4;
  v29 = a3;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - v13;
  type metadata accessor for Range<AttributedString.Index>(0);
  v28 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString.Index();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v20 = *(v18 - 8);
    v27[2] = a5;
    v21 = v20;
    v22 = *(v20 + 16);
    v27[1] = a1;
    v22(v14, a2, v18);
    v22(&v14[*(v9 + 48)], a2, v18);
    outlined init with copy of AttributedTextSelection.Indices?(v14, v11, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v23 = *(v9 + 48);
    v24 = *(v21 + 32);
    v24(v17, v11, v18);
    v27[0] = v17;
    v25 = *(v21 + 8);
    v25(&v11[v23], v18);
    outlined init with take of AttributedTextSelection.Indices(v14, v11, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v26 = v27[0];
    v24((v27[0] + *(v28 + 36)), &v11[*(v9 + 48)], v18);
    v25(v11, v18);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    AttributedString.replaceSubrange<A, B>(_:with:)();
    return _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v26, type metadata accessor for Range<AttributedString.Index>);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized closure #2 in AttributedString.replaceSelection<A>(_:with:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v14 + 16) > a2)
    {
      outlined init with copy of AttributedTextSelection.Indices?(v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a2, &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Range<AttributedString.Index>);
      AttributedString.init()();
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      AttributedString.replaceSubrange<A, B>(_:with:)();
      (*(v7 + 8))(v9, v6);
LABEL_7:
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v13, type metadata accessor for Range<AttributedString.Index>);
      return;
    }

    __break(1u);
  }

  else if (*(v14 + 16))
  {
    outlined init with copy of AttributedTextSelection.Indices?(v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Range<AttributedString.Index>);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    AttributedString.replaceSubrange<A, B>(_:with:)();
    goto LABEL_7;
  }

  __break(1u);
}

void closure #2 in AttributedString.replaceSelection<A>(_:with:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[0] = a6;
  v17[1] = a1;
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v16 + 16) > a2)
    {
      outlined init with copy of AttributedTextSelection.Indices?(v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a2, v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Range<AttributedString.Index>);
      AttributedString.init()();
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      AttributedString.replaceSubrange<A, B>(_:with:)();
      (*(v9 + 8))(v11, v8);
LABEL_7:
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v15, type metadata accessor for Range<AttributedString.Index>);
      return;
    }

    __break(1u);
  }

  else if (*(v16 + 16))
  {
    outlined init with copy of AttributedTextSelection.Indices?(v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Range<AttributedString.Index>);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    AttributedString.replaceSubrange<A, B>(_:with:)();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufCSS5IndexV_SaySnyAIGGTt1g5(uint64_t a1)
{
  type metadata accessor for RangeSet<String.Index>();
  MEMORY[0x1EEE9AC00](v2);
  RangeSet.init()();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      RangeSet.init(_:)();
      RangeSet.formUnion(_:)();
      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufC10Foundation16AttributedStringV5IndexV_SaySnyALGGTt1g5(uint64_t a1)
{
  type metadata accessor for Range<AttributedString.Index>(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for AttributedString.Index();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  RangeSet.init()();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      outlined init with copy of AttributedTextSelection.Indices?(v8, v5, type metadata accessor for Range<AttributedString.Index>);
      RangeSet.init(_:)();
      RangeSet.formUnion(_:)();
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

uint64_t closure #1 in AttributedTextSelection.nsRanges(in:removingInvalid:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v25 = a3;
  v23 = a4;
  v24 = a1;
  v22 = type metadata accessor for AttributedString();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString.Index();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 & 1) != 0 && (v21 = v4, AttributedString.endIndex.getter(), _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]), v16 = dispatch thunk of static Comparable.> infix(_:_:)(), result = (*(v13 + 8))(v15, v12), (v16))
  {
    v18 = v23;
    *v23 = 0;
    v18[1] = 0;
    *(v18 + 16) = 1;
  }

  else
  {
    outlined init with copy of AttributedTextSelection.Indices?(v24, v11, type metadata accessor for Range<AttributedString.Index>);
    (*(v6 + 16))(v8, v25, v22);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    result = _NSRange.init<A, B>(_:in:)();
    v19 = v23;
    *v23 = result;
    v19[1] = v20;
    *(v19 + 16) = 0;
  }

  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t specialized static AttributedTextSelection.TypingAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for AttributeContainer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributedTextSelection.TypingAttributes, AttributedTextSelection.TypingAttributes)(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  outlined init with copy of AttributedTextSelection.Indices?(a1, v14, type metadata accessor for AttributedTextSelection.TypingAttributes);
  outlined init with copy of AttributedTextSelection.Indices?(a2, &v14[v16], type metadata accessor for AttributedTextSelection.TypingAttributes);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    v18 = 1;
    v19 = v17(&v14[v16], 1, v5);
    v20 = type metadata accessor for AttributedTextSelection.TypingAttributes;
    if (v19 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of AttributedTextSelection.Indices?(v14, v11, type metadata accessor for AttributedTextSelection.TypingAttributes);
    if (v17(&v14[v16], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v14[v16], v5);
      v18 = static AttributeContainer.== infix(_:_:)();
      v21 = *(v6 + 8);
      v21(v8, v5);
      v21(v11, v5);
      v20 = type metadata accessor for AttributedTextSelection.TypingAttributes;
      goto LABEL_8;
    }

    (*(v6 + 8))(v11, v5);
  }

  v18 = 0;
  v20 = type metadata accessor for (AttributedTextSelection.TypingAttributes, AttributedTextSelection.TypingAttributes);
LABEL_8:
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v14, v20);
  return v18 & 1;
}

uint64_t specialized static AttributedTextSelection.Indices.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v30 = type metadata accessor for AttributedString.Index();
  v6 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  type metadata accessor for (AttributedTextSelection.Indices, AttributedTextSelection.Indices)(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 56);
  outlined init with copy of AttributedTextSelection.Indices?(a1, v17, type metadata accessor for AttributedTextSelection.Indices);
  outlined init with copy of AttributedTextSelection.Indices?(v31, &v17[v19], type metadata accessor for AttributedTextSelection.Indices);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AttributedTextSelection.Indices?(v17, v11, type metadata accessor for AttributedTextSelection.Indices);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v28;
      v20 = v29;
      (*(v28 + 32))(v5, &v17[v19], v29);
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      v22 = static RangeSet.== infix(_:_:)();
      v23 = *(v21 + 8);
      v23(v5, v20);
      v23(v11, v20);
LABEL_9:
      v24 = type metadata accessor for AttributedTextSelection.Indices;
      goto LABEL_10;
    }

    (*(v28 + 8))(v11, v29);
  }

  else
  {
    outlined init with copy of AttributedTextSelection.Indices?(v17, v14, type metadata accessor for AttributedTextSelection.Indices);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = v30;
      (*(v6 + 32))(v8, &v17[v19], v30);
      v22 = static AttributedString.Index.== infix(_:_:)();
      v26 = *(v6 + 8);
      v26(v8, v25);
      v26(v14, v25);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v30);
  }

  v22 = 0;
  v24 = type metadata accessor for (AttributedTextSelection.Indices, AttributedTextSelection.Indices);
LABEL_10:
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v17, v24);
  return v22 & 1;
}

BOOL specialized static AttributedTextSelection.== infix(_:_:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for AttributeContainer();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributedTextSelection.TypingAttributes, AttributedTextSelection.TypingAttributes)(0);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedTextSelection.Indices(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributedTextSelection.Indices?, AttributedTextSelection.Indices?)(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 56);
  v48 = a1;
  outlined init with copy of AttributedTextSelection.Indices?(a1, v21, type metadata accessor for AttributedTextSelection.Indices?);
  v49 = a2;
  outlined init with copy of AttributedTextSelection.Indices?(a2, &v21[v23], type metadata accessor for AttributedTextSelection.Indices?);
  v24 = *(v13 + 48);
  if (v24(v21, 1, v12) == 1)
  {
    if (v24(&v21[v23], 1, v12) == 1)
    {
      _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v21, type metadata accessor for AttributedTextSelection.Indices?);
      goto LABEL_8;
    }

LABEL_6:
    v25 = type metadata accessor for (AttributedTextSelection.Indices?, AttributedTextSelection.Indices?);
    v26 = v21;
LABEL_15:
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v26, v25);
    return 0;
  }

  outlined init with copy of AttributedTextSelection.Indices?(v21, v18, type metadata accessor for AttributedTextSelection.Indices?);
  if (v24(&v21[v23], 1, v12) == 1)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v18, type metadata accessor for AttributedTextSelection.Indices);
    goto LABEL_6;
  }

  outlined init with take of AttributedTextSelection.Indices(&v21[v23], v15, type metadata accessor for AttributedTextSelection.Indices);
  v27 = specialized static AttributedTextSelection.Indices.== infix(_:_:)(v18, v15);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v15, type metadata accessor for AttributedTextSelection.Indices);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v18, type metadata accessor for AttributedTextSelection.Indices);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v21, type metadata accessor for AttributedTextSelection.Indices?);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v28 = type metadata accessor for AttributedTextSelection(0);
  v29 = *(v28 + 20);
  v30 = *(v45 + 48);
  v31 = v48;
  outlined init with copy of AttributedTextSelection.Indices?(v48 + v29, v11, type metadata accessor for AttributedTextSelection.TypingAttributes);
  v32 = v49;
  outlined init with copy of AttributedTextSelection.Indices?(v49 + v29, &v11[v30], type metadata accessor for AttributedTextSelection.TypingAttributes);
  v34 = v46;
  v33 = v47;
  v35 = *(v46 + 48);
  if (v35(v11, 1, v47) == 1)
  {
    if (v35(&v11[v30], 1, v33) == 1)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v36 = v44;
  outlined init with copy of AttributedTextSelection.Indices?(v11, v44, type metadata accessor for AttributedTextSelection.TypingAttributes);
  if (v35(&v11[v30], 1, v33) == 1)
  {
    (*(v34 + 8))(v36, v33);
LABEL_13:
    v37 = type metadata accessor for (AttributedTextSelection.TypingAttributes, AttributedTextSelection.TypingAttributes);
LABEL_14:
    v25 = v37;
    v26 = v11;
    goto LABEL_15;
  }

  v39 = v43;
  (*(v34 + 32))(v43, &v11[v30], v33);
  v40 = static AttributeContainer.== infix(_:_:)();
  v41 = *(v34 + 8);
  v41(v39, v33);
  v41(v36, v33);
  if ((v40 & 1) == 0)
  {
    v37 = type metadata accessor for AttributedTextSelection.TypingAttributes;
    goto LABEL_14;
  }

LABEL_18:
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v11, type metadata accessor for AttributedTextSelection.TypingAttributes);
  return *(v31 + *(v28 + 24)) == *(v32 + *(v28 + 24));
}

void type metadata accessor for LazySequence<AttributedString.Runs>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for LazySequence<AttributedString.Runs>)
  {
    type metadata accessor for AttributedString.Runs();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687D8]);
    v2 = type metadata accessor for LazySequence();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for LazySequence<AttributedString.Runs>);
    }
  }
}

void type metadata accessor for LazyMapSequence<AttributedString.Runs, AttributeContainer>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    v7 = type metadata accessor for AttributedString.Runs();
    v8 = type metadata accessor for AttributeContainer();
    v9 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687D8]);
    v10 = a3(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for _IteratorBox<LazyMapSequence<AttributedString.Runs, AttributeContainer>.Iterator>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for _IteratorBox<LazyMapSequence<AttributedString.Runs, AttributeContainer>.Iterator>)
  {
    type metadata accessor for LazyMapSequence<AttributedString.Runs, AttributeContainer>.Iterator(255, a2);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type LazyMapSequence<AttributedString.Runs, AttributeContainer>.Iterator and conformance LazyMapSequence<A, B>.Iterator, type metadata accessor for LazyMapSequence<AttributedString.Runs, AttributeContainer>.Iterator, MEMORY[0x1E69E6C90]);
    v2 = type metadata accessor for _IteratorBox();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for _IteratorBox<LazyMapSequence<AttributedString.Runs, AttributeContainer>.Iterator>);
    }
  }
}

uint64_t _s7SwiftUI23AttributedTextSelectionVWOdTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _IteratorBox<CollectionOfOne<AttributeContainer>.Iterator>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _IteratorBox<CollectionOfOne<AttributeContainer>.Iterator>)
  {
    type metadata accessor for CollectionOfOne<AttributeContainer>.Iterator(255);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(&lazy protocol witness table cache variable for type CollectionOfOne<AttributeContainer>.Iterator and conformance CollectionOfOne<A>.Iterator, type metadata accessor for CollectionOfOne<AttributeContainer>.Iterator, MEMORY[0x1E69E6BB8]);
    v1 = type metadata accessor for _IteratorBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _IteratorBox<CollectionOfOne<AttributeContainer>.Iterator>);
    }
  }
}

uint64_t outlined init with take of AttributedTextSelection.Indices(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedTextSelection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for AttributedTextSelection.Indices(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v12 = v11;
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 16))(a1, a2);
      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v13 = *(a3 + 20);
    v14 = type metadata accessor for AttributeContainer();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(a2 + v13, 1, v14))
    {
      v16 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(a1 + v13, a2 + v13, *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(a1 + v13, a2 + v13, v14);
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
    }

    *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return a1;
}

uint64_t destroy for AttributedTextSelection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTextSelection.Indices(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    }

    else
    {
      v5 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v5 - 8) + 8))(a1, v5);
  }

  v6 = *(a2 + 20);
  v7 = type metadata accessor for AttributeContainer();
  v10 = *(v7 - 8);
  result = (*(v10 + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v6, v7);
  }

  return result;
}

char *initializeWithCopy for AttributedTextSelection(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedTextSelection.Indices(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      v10 = v9;
    }

    else
    {
      v10 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v10 - 8) + 16))(a1, a2);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v11 = *(a3 + 20);
  v12 = type metadata accessor for AttributeContainer();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a2[v11], 1, v12))
  {
    v14 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(&a1[v11], &a2[v11], v12);
    (*(v13 + 56))(&a1[v11], 0, 1, v12);
  }

  a1[*(a3 + 24)] = a2[*(a3 + 24)];
  return a1;
}

char *assignWithCopy for AttributedTextSelection(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedTextSelection.Indices(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v12 = v11;
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 16))(a1, a2);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_14;
    }

LABEL_7:
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_14;
  }

  if (v10)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a1, type metadata accessor for AttributedTextSelection.Indices);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a1, type metadata accessor for AttributedTextSelection.Indices);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    }

    else
    {
      v14 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v14 - 8) + 16))(a1, a2, v14);
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v15 = *(a3 + 20);
  v16 = type metadata accessor for AttributeContainer();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&a1[v15], 1, v16);
  v20 = v18(&a2[v15], 1, v16);
  if (!v19)
  {
    if (!v20)
    {
      (*(v17 + 24))(&a1[v15], &a2[v15], v16);
      goto LABEL_20;
    }

    (*(v17 + 8))(&a1[v15], v16);
    goto LABEL_19;
  }

  if (v20)
  {
LABEL_19:
    v21 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&a1[v15], &a2[v15], *(*(v21 - 8) + 64));
    goto LABEL_20;
  }

  (*(v17 + 16))(&a1[v15], &a2[v15], v16);
  (*(v17 + 56))(&a1[v15], 0, 1, v16);
LABEL_20:
  a1[*(a3 + 24)] = a2[*(a3 + 24)];
  return a1;
}

char *initializeWithTake for AttributedTextSelection(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedTextSelection.Indices(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      v10 = v9;
    }

    else
    {
      v10 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v10 - 8) + 32))(a1, a2);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v11 = *(a3 + 20);
  v12 = type metadata accessor for AttributeContainer();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a2[v11], 1, v12))
  {
    v14 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v13 + 32))(&a1[v11], &a2[v11], v12);
    (*(v13 + 56))(&a1[v11], 0, 1, v12);
  }

  a1[*(a3 + 24)] = a2[*(a3 + 24)];
  return a1;
}

char *assignWithTake for AttributedTextSelection(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedTextSelection.Indices(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v12 = v11;
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 32))(a1, a2);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_14;
    }

LABEL_7:
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_14;
  }

  if (v10)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a1, type metadata accessor for AttributedTextSelection.Indices);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a1, type metadata accessor for AttributedTextSelection.Indices);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    }

    else
    {
      v14 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v14 - 8) + 32))(a1, a2, v14);
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v15 = *(a3 + 20);
  v16 = type metadata accessor for AttributeContainer();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&a1[v15], 1, v16);
  v20 = v18(&a2[v15], 1, v16);
  if (!v19)
  {
    if (!v20)
    {
      (*(v17 + 40))(&a1[v15], &a2[v15], v16);
      goto LABEL_20;
    }

    (*(v17 + 8))(&a1[v15], v16);
    goto LABEL_19;
  }

  if (v20)
  {
LABEL_19:
    v21 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&a1[v15], &a2[v15], *(*(v21 - 8) + 64));
    goto LABEL_20;
  }

  (*(v17 + 32))(&a1[v15], &a2[v15], v16);
  (*(v17 + 56))(&a1[v15], 0, 1, v16);
LABEL_20:
  a1[*(a3 + 24)] = a2[*(a3 + 24)];
  return a1;
}

void type metadata completion function for AttributedTextSelection(uint64_t a1)
{
  type metadata accessor for AttributedTextSelection.Indices?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributedTextSelection.TypingAttributes(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedTextSelection.Indices(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    }

    else
    {
      v6 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for AttributedTextSelection.Indices(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  }

  else
  {
    v3 = type metadata accessor for AttributedString.Index();
  }

  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t initializeWithCopy for AttributedTextSelection.Indices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    v6 = v5;
  }

  else
  {
    v6 = type metadata accessor for AttributedString.Index();
  }

  (*(*(v6 - 8) + 16))(a1, a2);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for AttributedTextSelection.Indices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a1, type metadata accessor for AttributedTextSelection.Indices);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      v6 = v5;
    }

    else
    {
      v6 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v6 - 8) + 16))(a1, a2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for AttributedTextSelection.Indices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    v6 = v5;
  }

  else
  {
    v6 = type metadata accessor for AttributedString.Index();
  }

  (*(*(v6 - 8) + 32))(a1, a2);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for AttributedTextSelection.Indices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(a1, type metadata accessor for AttributedTextSelection.Indices);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      v6 = v5;
    }

    else
    {
      v6 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v6 - 8) + 32))(a1, a2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void type metadata completion function for AttributedTextSelection.Indices(uint64_t a1)
{
  type metadata accessor for AttributedString.Index();
  if (v1 <= 0x3F)
  {
    _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(319, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
    }
  }
}

uint64_t type metadata completion function for AttributedTextSelection.Attributes(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AttributedTextSelection(319);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedTextSelection.Attributes(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 28);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = type metadata accessor for AttributedTextSelection.Indices(0);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v9, v10, *(*(v13 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v16 = v15;
      }

      else
      {
        v16 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v16 - 8) + 16))(v9, v10);
      swift_storeEnumTagMultiPayload();
      (*(v12 + 56))(v9, 0, 1, v11);
    }

    v17 = type metadata accessor for AttributedTextSelection(0);
    v18 = *(v17 + 20);
    v19 = type metadata accessor for AttributeContainer();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(&v10[v18], 1, v19))
    {
      v21 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v9[v18], &v10[v18], *(*(v21 - 8) + 64));
    }

    else
    {
      (*(v20 + 16))(&v9[v18], &v10[v18], v19);
      (*(v20 + 56))(&v9[v18], 0, 1, v19);
    }

    v9[*(v17 + 24)] = v10[*(v17 + 24)];
  }

  return a1;
}

uint64_t destroy for AttributedTextSelection.Attributes(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a1 + *(a2 + 28);
  v6 = type metadata accessor for AttributedTextSelection.Indices(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    }

    else
    {
      v7 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v7 - 8) + 8))(v5, v7);
  }

  v8 = *(type metadata accessor for AttributedTextSelection(0) + 20);
  v9 = type metadata accessor for AttributeContainer();
  v12 = *(v9 - 8);
  result = (*(v12 + 48))(v5 + v8, 1, v9);
  if (!result)
  {
    v11 = *(v12 + 8);

    return v11(v5 + v8, v9);
  }

  return result;
}

uint64_t initializeWithCopy for AttributedTextSelection.Attributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 28);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for AttributedTextSelection.Indices(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      v14 = v13;
    }

    else
    {
      v14 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v14 - 8) + 16))(v8, v9);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  v15 = type metadata accessor for AttributedTextSelection(0);
  v16 = *(v15 + 20);
  v17 = type metadata accessor for AttributeContainer();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(&v9[v16], 1, v17))
  {
    v19 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v8[v16], &v9[v16], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v18 + 16))(&v8[v16], &v9[v16], v17);
    (*(v18 + 56))(&v8[v16], 0, 1, v17);
  }

  v8[*(v15 + 24)] = v9[*(v15 + 24)];
  return a1;
}

uint64_t assignWithCopy for AttributedTextSelection.Attributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 28);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for AttributedTextSelection.Indices(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (v13)
  {
    if (!v14)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v16 = v15;
      }

      else
      {
        v16 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v16 - 8) + 16))(v8, v9);
      swift_storeEnumTagMultiPayload();
      (*(v11 + 56))(v8, 0, 1, v10);
      goto LABEL_14;
    }

LABEL_7:
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v17 - 8) + 64));
    goto LABEL_14;
  }

  if (v14)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v8, type metadata accessor for AttributedTextSelection.Indices);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v8, type metadata accessor for AttributedTextSelection.Indices);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    }

    else
    {
      v18 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v18 - 8) + 16))(v8, v9, v18);
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v19 = type metadata accessor for AttributedTextSelection(0);
  v20 = *(v19 + 20);
  v21 = type metadata accessor for AttributeContainer();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(&v8[v20], 1, v21);
  v25 = v23(&v9[v20], 1, v21);
  if (!v24)
  {
    if (!v25)
    {
      (*(v22 + 24))(&v8[v20], &v9[v20], v21);
      goto LABEL_20;
    }

    (*(v22 + 8))(&v8[v20], v21);
    goto LABEL_19;
  }

  if (v25)
  {
LABEL_19:
    v26 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v8[v20], &v9[v20], *(*(v26 - 8) + 64));
    goto LABEL_20;
  }

  (*(v22 + 16))(&v8[v20], &v9[v20], v21);
  (*(v22 + 56))(&v8[v20], 0, 1, v21);
LABEL_20:
  v8[*(v19 + 24)] = v9[*(v19 + 24)];
  return a1;
}

uint64_t initializeWithTake for AttributedTextSelection.Attributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 28);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for AttributedTextSelection.Indices(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      v14 = v13;
    }

    else
    {
      v14 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v14 - 8) + 32))(v8, v9);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  v15 = type metadata accessor for AttributedTextSelection(0);
  v16 = *(v15 + 20);
  v17 = type metadata accessor for AttributeContainer();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(&v9[v16], 1, v17))
  {
    v19 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v8[v16], &v9[v16], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(&v8[v16], &v9[v16], v17);
    (*(v18 + 56))(&v8[v16], 0, 1, v17);
  }

  v8[*(v15 + 24)] = v9[*(v15 + 24)];
  return a1;
}

uint64_t assignWithTake for AttributedTextSelection.Attributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 28);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for AttributedTextSelection.Indices(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (v13)
  {
    if (!v14)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v16 = v15;
      }

      else
      {
        v16 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v16 - 8) + 32))(v8, v9);
      swift_storeEnumTagMultiPayload();
      (*(v11 + 56))(v8, 0, 1, v10);
      goto LABEL_14;
    }

LABEL_7:
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v17 - 8) + 64));
    goto LABEL_14;
  }

  if (v14)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v8, type metadata accessor for AttributedTextSelection.Indices);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOSgWOhTm_0(v8, type metadata accessor for AttributedTextSelection.Indices);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    }

    else
    {
      v18 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v18 - 8) + 32))(v8, v9, v18);
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v19 = type metadata accessor for AttributedTextSelection(0);
  v20 = *(v19 + 20);
  v21 = type metadata accessor for AttributeContainer();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(&v8[v20], 1, v21);
  v25 = v23(&v9[v20], 1, v21);
  if (!v24)
  {
    if (!v25)
    {
      (*(v22 + 40))(&v8[v20], &v9[v20], v21);
      goto LABEL_20;
    }

    (*(v22 + 8))(&v8[v20], v21);
    goto LABEL_19;
  }

  if (v25)
  {
LABEL_19:
    v26 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v8[v20], &v9[v20], *(*(v26 - 8) + 64));
    goto LABEL_20;
  }

  (*(v22 + 32))(&v8[v20], &v9[v20], v21);
  (*(v22 + 56))(&v8[v20], 0, 1, v21);
LABEL_20:
  v8[*(v19 + 24)] = v9[*(v19 + 24)];
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedTextSelection.TypingAttributes(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4)
{
  v6 = *(*(a3 - 8) + 80);
  if ((v6 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v6 + 16) & ~v6));

    return a1;
  }

  v7 = *(a3 - 8);
  v8 = type metadata accessor for AttributeContainer();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a2, 1, v8))
  {
    (*(v9 + 16))(a1, a2, v8);
    (*(v9 + 56))(a1, 0, 1, v8);
    return a1;
  }

  v10 = *(v7 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for AttributedTextSelection.TypingAttributes(uint64_t a1, double a2)
{
  v3 = type metadata accessor for AttributeContainer();
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *initializeWithCopy for AttributedTextSelection.TypingAttributes(void *a1, const void *a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for AttributeContainer();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2, 1, v7))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }
}

void *assignWithCopy for AttributedTextSelection.TypingAttributes(void *a1, void *a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for AttributeContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 1, v7);
  v11 = v9(a2, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
      return a1;
    }
  }

  else
  {
    if (!v11)
    {
      (*(v8 + 24))(a1, a2, v7);
      return a1;
    }

    (*(v8 + 8))(a1, v7);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *initializeWithTake for AttributedTextSelection.TypingAttributes(void *a1, const void *a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for AttributeContainer();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2, 1, v7))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    (*(v8 + 32))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }
}

void *assignWithTake for AttributedTextSelection.TypingAttributes(void *a1, void *a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for AttributeContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 1, v7);
  v11 = v9(a2, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 32))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
      return a1;
    }
  }

  else
  {
    if (!v11)
    {
      (*(v8 + 40))(a1, a2, v7);
      return a1;
    }

    (*(v8 + 8))(a1, v7);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t getEnumTag for AttributedTextSelection.TypingAttributes(uint64_t a1, double a2)
{
  v3 = type metadata accessor for AttributeContainer();
  v4 = *(*(v3 - 8) + 48);

  return v4(a1, 1, v3);
}

uint64_t destructiveInjectEnumTag for AttributedTextSelection.TypingAttributes(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for AttributeContainer();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, a2, 1, v5);
}

uint64_t type metadata completion function for AttributedTextSelection.TypingAttributes(uint64_t a1, double a2)
{
  result = type metadata accessor for AttributeContainer();
  if (v3 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of AttributedTextSelection.Indices?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (AttributedTextSelection.TypingAttributes, AttributedTextSelection.TypingAttributes)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void EnvironmentValues.documentConfiguration.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

void type metadata accessor for EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void key path getter for EnvironmentValues.documentConfiguration : EnvironmentValues(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

uint64_t key path setter for EnvironmentValues.documentConfiguration : EnvironmentValues(uint64_t a1)
{
  _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for DocumentConfiguration?, type metadata accessor for DocumentConfiguration);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  _s10Foundation3URLVSgWOcTm_1(a1, &v6 - v3, &lazy cache variable for type metadata for DocumentConfiguration?, type metadata accessor for DocumentConfiguration);
  return EnvironmentValues.documentConfiguration.setter(v4);
}

uint64_t EnvironmentValues.documentConfiguration.setter(uint64_t a1)
{
  _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for DocumentConfiguration?, type metadata accessor for DocumentConfiguration);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  _s10Foundation3URLVSgWOcTm_1(a1, &v10 - v7, &lazy cache variable for type metadata for DocumentConfiguration?, type metadata accessor for DocumentConfiguration);
  _s10Foundation3URLVSgWOcTm_1(v8, v5, &lazy cache variable for type metadata for DocumentConfiguration?, type metadata accessor for DocumentConfiguration);
  type metadata accessor for EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DocumentConfigurationEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of DocumentConfiguration?(a1);
  return outlined destroy of DocumentConfiguration?(v8);
}

uint64_t type metadata accessor for DocumentConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for DocumentConfiguration;
  if (!type metadata singleton initialization cache for DocumentConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for DocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
      memcpy(&v4[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(&v4[v6], &a2[v6], v7);
      (*(v8 + 56))(&v4[v6], 0, 1, v7);
    }
  }

  return v4;
}

_BYTE *initializeWithCopy for DocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

_BYTE *assignWithCopy for DocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

_BYTE *initializeWithTake for DocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

_BYTE *assignWithTake for DocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

void type metadata completion function for DocumentConfiguration(uint64_t a1)
{
  _s10Foundation3URLVSgMaTm_5(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance DocumentConfigurationEnvironmentKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for DocumentConfiguration?, type metadata accessor for DocumentConfiguration);
  v3 = __swift_project_value_buffer(v2, static DocumentConfigurationEnvironmentKey.defaultValue);
  return _s10Foundation3URLVSgWOcTm_1(v3, a1, &lazy cache variable for type metadata for DocumentConfiguration?, type metadata accessor for DocumentConfiguration);
}

uint64_t _s10Foundation3URLVSgWOcTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation3URLVSgMaTm_5(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of DocumentConfiguration?(uint64_t a1)
{
  _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for DocumentConfiguration?, type metadata accessor for DocumentConfiguration);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OscillationDetector.deinit()
{

  return v0;
}

double OscillationDetector.__deallocating_deinit()
{
  OscillationDetector.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t NavigationLink.init(destination:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(v16 + 16))(v20, a1, v21, v18);
  a2(v22);
  NavigationLink.init(destination:label:)(v20, v14, a3, a4, a5, v25, a7);
  return (*(v16 + 8))(a1, a4);
}

uint64_t NavigationLink<>.init(_:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *(a6 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v16, v17, v13);
  NavigationLink<>.init(destination:titleKey:)(v15, a6, a7, a8);
  return (*(v12 + 8))(a5, a6);
}

uint64_t NavigationLink<>.init<A>(_:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23[1] = a6;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, v19);
  (*(v13 + 16))(v15, a1, a4);
  NavigationLink<>.init<A>(destination:title:)(v21, v15, a3, a4, a5, a7);
  (*(v17 + 8))(a2, a3);
  return (*(v13 + 8))(a1, a4);
}

uint64_t NavigationLink.init(destination:isActive:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v29 = a4;
  v27 = a2;
  v28 = a3;
  v26 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (*(v18 + 16))(v22, a1, v23, v20);
  a5(v24);
  NavigationLink.init(destination:label:isActive:)(v22, v16, v27, v28, v29, a6, a7, v26, a8, a10);
  return (*(v18 + 8))(a1, a7);
}

uint64_t NavigationLink.init<A>(destination:tag:selection:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42 = a1;
  v43 = a6;
  v47 = a5;
  v48 = a4;
  v45 = a3;
  v51 = a9;
  v52 = a10;
  v49 = a12;
  v50 = a11;
  type metadata accessor for Optional();
  v46 = type metadata accessor for Binding();
  v16 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v39 - v17;
  v41 = *(a8 - 8);
  v18 = v41;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a7;
  v25 = *(a7 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = (*(v25 + 16))(v29, a1, v27);
  v48(v30);
  v31 = *(v18 + 16);
  v32 = a8;
  v31(v21, a2, a8);
  v33 = v44;
  v34 = v45;
  v35 = v46;
  (*(v16 + 16))(v44, v45, v46);
  v36 = v33;
  v37 = v40;
  NavigationLink.init<A>(destination:label:tag:selection:)(v29, v24, v21, v36, v43, v40, v32, v52, v51, v50, v49);
  (*(v16 + 8))(v34, v35);
  (*(v41 + 8))(a2, v32);
  return (*(v25 + 8))(v42, v37);
}

uint64_t NavigationLink<>.init(_:destination:isActive:)@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v22 = a8;
  v20 = a6;
  v21 = a7;
  v13 = *(a10 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v17, a10, v14);
  NavigationLink<>.init(destination:titleKey:isActive:)(v16, v20, v21, v22, a9, a10, a11);
  return (*(v13 + 8))(a5, a10);
}

uint64_t NavigationLink<>.init<A>(_:destination:isActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a8;
  v27 = a5;
  v25 = a3;
  v26 = a4;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v23, v21);
  (*(v15 + 16))(v17, a1, a7);
  NavigationLink<>.init<A>(destination:title:isActive:)(v23, v17, v25, v26, v27, a6, a7, v28, a9, a10);
  (*(v19 + 8))(a2, a6);
  return (*(v15 + 8))(a1, a7);
}

uint64_t NavigationLink<>.init<A>(_:destination:tag:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v36 = a9;
  v34 = a12;
  v35 = a11;
  type metadata accessor for Optional();
  v33 = type metadata accessor for Binding();
  v15 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v17 = &v32 - v16;
  v18 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a8;
  v22 = *(a8 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v26, v41, a8, v24);
  v27 = a6;
  (*(v18 + 16))(v21, a6, a10);
  v28 = v33;
  (*(v15 + 16))(v17, a7, v33);
  v29 = v17;
  v30 = v32;
  NavigationLink<>.init<A>(destination:titleKey:tag:selection:)(v26, v37, v38, v39, v40, v21, v29, v32, v36, a10, v35, v34);
  (*(v15 + 8))(a7, v28);
  (*(v18 + 8))(v27, a10);
  return (*(v22 + 8))(v41, v30);
}

uint64_t NavigationLink<>.init<A, B>(_:destination:tag:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a8;
  v54 = a1;
  v47 = a3;
  v44 = a2;
  v52 = a9;
  v51 = a10;
  v49 = a4;
  v50 = a11;
  type metadata accessor for Optional();
  v48 = type metadata accessor for Binding();
  v15 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v41 - v16;
  v43 = *(a7 - 8);
  v17 = v43;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a6;
  v45 = *(a6 - 8);
  v21 = v45;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a5;
  v25 = *(a5 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v29, a2, v27);
  (*(v21 + 16))(v24, v54, a6);
  v30 = v47;
  (*(v17 + 16))(v20, v47, a7);
  v31 = v15;
  v32 = *(v15 + 16);
  v33 = v46;
  v34 = v48;
  v35 = v49;
  v32(v46, v49, v48);
  v36 = v29;
  v37 = v24;
  v38 = v41;
  v39 = v42;
  NavigationLink<>.init<A, B>(destination:title:tag:selection:)(v36, v37, v20, v33, v42, v41, a7, v53, v52, v51, v50);
  (*(v31 + 8))(v35, v34);
  (*(v43 + 8))(v30, a7);
  (*(v25 + 8))(v44, v39);
  return (*(v45 + 8))(v54, v38);
}

void NavigationLink<>.init(destinationName:label:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void NavigationLink<>.init(destinationName:isActive:label:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void NavigationLink<>.init<A>(destinationName:tag:selection:label:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t View.accessibilityIntentAction(_:lnAction:perform:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18CD63400;
  KeyPath = swift_getKeyPath();
  v23 = 0;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
  *(v13 + 56) = v15;
  *(v13 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v16 = swift_allocObject();
  *(v13 + 32) = v16;
  *(v16 + 16) = v9;
  *(v16 + 24) = v10;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  *(v16 + 48) = KeyPath;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = a2;
  *(v16 + 80) = a3;
  *(v16 + 88) = a4;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 112) = 0;
  *(v16 + 120) = 2;
  *(v16 + 128) = 0u;
  *(v16 + 144) = 0u;
  *(v16 + 160) = 0;
  *(v16 + 168) = 1;
  *(v13 + 72) = 1;
  v22 = v13;
  outlined copy of AccessibilityActionKind.ActionKind(v9, v10, v12, v11);
  v17 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  v18 = a2;

  View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v22, 1, a5, &type metadata for AccessibilityProperties.ActionsKey, a6, v17);
}

uint64_t View.accessibilityIntentAction(named:lnAction:perform:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18CD63400;
  KeyPath = swift_getKeyPath();
  v25 = 0;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
  *(v16 + 56) = v18;
  *(v16 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v19 = swift_allocObject();
  *(v16 + 32) = v19;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3 & 1;
  *(v19 + 40) = a4;
  *(v19 + 48) = KeyPath;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = a5;
  *(v19 + 80) = a6;
  *(v19 + 88) = a7;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 112) = 0;
  *(v19 + 120) = 2;
  *(v19 + 128) = 0u;
  *(v19 + 144) = 0u;
  *(v19 + 160) = 0;
  *(v19 + 168) = 1;
  *(v16 + 72) = 1;
  v24 = v16;
  outlined copy of Text.Storage(a1, a2, a3 & 1);
  v20 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

  v21 = a5;

  View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v24, 1, a8, &type metadata for AccessibilityProperties.ActionsKey, a9, v20);
}

uint64_t View.accessibilityIntentAction<A>(lnAction:perform:label:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v23 = a6;
  v22 = a4;
  v13 = *(a5 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v14);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v19 = a1;

  View.accessibilityAttachment<A>(content:_:)(v16, partial apply for closure #1 in View.accessibilityIntentAction<A>(lnAction:perform:label:), v18, v22, a5, v23, a8, a7);

  return (*(v13 + 8))(v16, a5);
}

void *closure #1 in View.accessibilityIntentAction<A>(lnAction:perform:label:)(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  AccessibilityAttachment.Tree.attachment.getter(__src);
  outlined destroy of AccessibilityAttachment.Tree(a1);
  if (*&__src[280])
  {
    AccessibilityAttachment.mergedProperties.getter(v28);
    outlined destroy of AccessibilityAttachment(__src);
  }

  else
  {
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_3(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    memset(v28, 0, sizeof(v28));
  }

  AccessibilityAttachment.init()();
  outlined init with copy of AccessibilityAppIntentAction?(v28, v22, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  if (!v26)
  {
    v18 = MEMORY[0x1E6980108];
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_3(v28, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    v19 = v22;
    v20 = v18;
LABEL_11:
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_3(v19, &lazy cache variable for type metadata for AccessibilityProperties?, v20);
    goto LABEL_12;
  }

  v8 = v23;

  outlined destroy of AccessibilityProperties(v22);
  if (!v8)
  {
LABEL_10:
    v20 = MEMORY[0x1E6980108];
    v19 = v28;
    goto LABEL_11;
  }

  if (!*(v8 + 16))
  {

    goto LABEL_10;
  }

  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  v12 = *(v8 + 56);
  outlined copy of Text.Storage(v9, v10, *(v8 + 48));

  KeyPath = swift_getKeyPath();
  LOBYTE(v22[0]) = 0;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
  v23 = v14;
  v24 = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v15 = swift_allocObject();
  v22[0] = v15;
  *(v15 + 16) = v9;
  *(v15 + 24) = v10;
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  *(v15 + 48) = KeyPath;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = a2;
  *(v15 + 80) = a3;
  *(v15 + 88) = a4;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 112) = 0;
  *(v15 + 120) = 2;
  *(v15 + 128) = 0u;
  *(v15 + 144) = 0u;
  *(v15 + 160) = 0;
  *(v15 + 168) = 1;
  v25 = 1;
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18CD63400;
  outlined init with copy of AnyAccessibilityAction(v22, v16 + 32);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  v17 = a2;

  AccessibilityProperties.subscript.setter();
  _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_3(v28, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  outlined destroy of AnyAccessibilityAction(v22);
LABEL_12:
  result = memcpy(a1, __src, 0x128uLL);
  a1[296] = 0;
  return result;
}

uint64_t ModifiedContent<>.accessibilityIntentAction(_:lnAction:perform:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  KeyPath = swift_getKeyPath();
  v24 = 0;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
  *(v14 + 56) = v16;
  *(v14 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v17 = swift_allocObject();
  *(v14 + 32) = v17;
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  *(v17 + 48) = KeyPath;
  *(v17 + 56) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = a2;
  *(v17 + 80) = a3;
  *(v17 + 88) = a4;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 112) = 0;
  *(v17 + 120) = 2;
  *(v17 + 128) = 0u;
  *(v17 + 144) = 0u;
  *(v17 + 160) = 0;
  *(v17 + 168) = 1;
  *(v14 + 72) = 1;
  v23 = v14;
  outlined copy of AccessibilityActionKind.ActionKind(v10, v11, v12, v13);
  v18 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  v19 = lazy protocol witness table accessor for type [AnyAccessibilityAction] and conformance [A]();
  v20 = a2;

  ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v23, 1, a5, &type metadata for AccessibilityProperties.ActionsKey, v18, v19, a6);
}

uint64_t ModifiedContent<>.accessibilityIntentAction(named:lnAction:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18CD63400;
  KeyPath = swift_getKeyPath();
  v27 = 0;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
  *(v16 + 56) = v18;
  *(v16 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v19 = swift_allocObject();
  *(v16 + 32) = v19;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3 & 1;
  *(v19 + 40) = a4;
  *(v19 + 48) = KeyPath;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = a5;
  *(v19 + 80) = a6;
  *(v19 + 88) = a7;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 112) = 0;
  *(v19 + 120) = 2;
  *(v19 + 128) = 0u;
  *(v19 + 144) = 0u;
  *(v19 + 160) = 0;
  *(v19 + 168) = 1;
  *(v16 + 72) = 1;
  v26 = v16;
  outlined copy of Text.Storage(a1, a2, a3 & 1);
  v20 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  v21 = lazy protocol witness table accessor for type [AnyAccessibilityAction] and conformance [A]();

  v22 = a5;

  ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v26, 1, a8, &type metadata for AccessibilityProperties.ActionsKey, v20, v21, a9);
}

BOOL AccessibilityAppIntentAction.impliedRole(for:)(uint64_t *a1)
{
  v2 = a1[1];
  if (*(v1 + 24) | v2 & 1)
  {
    return 0;
  }

  v4 = AccessibilityNullableOptionSet<>.subscript.getter();
  result = 0;
  if ((v4 & 1) == 0 && (v2 & 0x20000) == 0)
  {
    v5 = AccessibilityNullableOptionSet<>.subscript.getter();
    result = 0;
    if ((v5 & 1) == 0 && (v2 & 8) == 0)
    {
      v6 = AccessibilityNullableOptionSet<>.subscript.getter();
      result = 0;
      if ((v6 & 1) == 0 && (v2 & 2) == 0)
      {
        return (AccessibilityNullableOptionSet<>.subscript.getter() & 1) == 0;
      }
    }
  }

  return result;
}