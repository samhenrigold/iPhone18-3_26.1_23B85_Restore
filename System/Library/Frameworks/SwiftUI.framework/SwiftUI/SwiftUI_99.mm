void destroy for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  outlined consume of StateOrBinding<TextFieldState>(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 180));
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = a1 + *(v4 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v7 = v6;
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v8 = *(v7 + 32);
    v9 = type metadata accessor for TextSelection(0);
    if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
    {
      type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v10 - 8) + 8))(v5 + v8, v10);
      }
    }
  }

  v11 = a1 + *(a2 + 20);

  v12 = *(v11 + 32);
  if (v12 != 1)
  {

    v13 = *(v11 + 184);
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v15 = *(v11 + 64);
      if (v15 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v11 + 56), v15);
        v13 = *(v11 + 184);
        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v14 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v11 + 168), *(v11 + 176), v13, *(v11 + 192));
      }

      swift_unknownObjectRelease();
    }
  }

  if (*(v11 + 304) != 1)
  {
    swift_unknownObjectRelease();
  }

  if (*(v11 + 608))
  {

    v16 = *(v11 + 416);
    if (v16)
    {
      if (v16 == 1)
      {
LABEL_22:
        if (*(v11 + 568) != 1)
        {
        }

        return;
      }

      __swift_destroy_boxed_opaque_existential_1((v11 + 392));
    }

    goto LABEL_22;
  }
}

uint64_t initializeWithCopy for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v7 = a2[8];

  if (v7)
  {
    v8 = a2[5];
    v9 = a2[6];
    v10 = *(a2 + 56);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = a2[8];
  }

  else
  {
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 56) = *(a2 + 7);
  }

  v11 = a2[9];
  v12 = a2[10];
  v13 = a2[11];
  v14 = a2[12];
  v15 = a2[13];
  v16 = a2[14];
  v18 = a2[15];
  v17 = a2[16];
  v85 = a2[17];
  v86 = a2[18];
  v87 = a2[19];
  v88 = a2[20];
  v89 = a2[21];
  __dsta = *(a2 + 44);
  v92 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v11, v12, v13, v14, v15, v16, v18, v17, v85, v86, v87, v88, v89, __dsta, v92);
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = v16;
  *(a1 + 120) = v18;
  *(a1 + 128) = v17;
  *(a1 + 136) = v85;
  *(a1 + 144) = v86;
  *(a1 + 152) = v87;
  *(a1 + 160) = v88;
  *(a1 + 168) = v89;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v92;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v20 = *(v19 + 56);
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = a1;
  if ((*(v25 + 48))(v22, 1, v23))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v21, v22, *(*(v27 - 8) + 64));
  }

  else
  {
    v28 = v22[1];
    *v21 = *v22;
    v21[1] = v28;
    v29 = *(v24 + 32);
    __dst = v21 + v29;
    v30 = v22 + v29;
    v31 = type metadata accessor for TextSelection(0);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    v34 = v30;
    v35 = v31;

    if (v33(v34, 1, v35))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v34, *(*(v36 - 8) + 64));
    }

    else
    {
      v37 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v38 - 8) + 16))(__dst, v34, v38);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v34, *(*(v37 - 8) + 64));
      }

      __dst[*(v35 + 20)] = *(v34 + *(v35 + 20));
      (*(v32 + 56))(__dst, 0, 1, v35);
    }

    (*(v25 + 56))(v21, 0, 1, v24);
    v26 = a1;
  }

  v39 = *(a3 + 20);
  v40 = v26 + v39;
  v41 = a2 + v39;
  v42 = *(a2 + v39);
  v43 = *(a2 + v39 + 8);
  *v40 = v42;
  *(v40 + 8) = v43;
  *(v40 + 16) = *(v41 + 2);
  *(v40 + 24) = v41[24];
  *(v40 + 28) = *(v41 + 7);
  v44 = *(v41 + 4);

  if (v44 == 1)
  {
    v45 = *(v41 + 15);
    *(v40 + 224) = *(v41 + 14);
    *(v40 + 240) = v45;
    *(v40 + 256) = *(v41 + 16);
    v46 = *(v41 + 11);
    *(v40 + 160) = *(v41 + 10);
    *(v40 + 176) = v46;
    v47 = *(v41 + 13);
    *(v40 + 192) = *(v41 + 12);
    *(v40 + 208) = v47;
    v48 = *(v41 + 7);
    *(v40 + 96) = *(v41 + 6);
    *(v40 + 112) = v48;
    v49 = *(v41 + 9);
    *(v40 + 128) = *(v41 + 8);
    *(v40 + 144) = v49;
    v50 = *(v41 + 3);
    *(v40 + 32) = *(v41 + 2);
    *(v40 + 48) = v50;
    v51 = *(v41 + 5);
    *(v40 + 64) = *(v41 + 4);
    *(v40 + 80) = v51;
  }

  else
  {
    v52 = *(v41 + 5);
    v53 = *(v41 + 6);
    *(v40 + 32) = v44;
    *(v40 + 40) = v52;
    *(v40 + 48) = v53;
    v54 = *(v41 + 23);
    v55 = v44;
    v56 = v52;
    v57 = v53;
    if (v54 >> 1 == 4294967294)
    {
      *(v40 + 184) = *(v41 + 184);
      *(v40 + 200) = *(v41 + 200);
      *(v40 + 216) = *(v41 + 216);
      *(v40 + 227) = *(v41 + 227);
      *(v40 + 120) = *(v41 + 120);
      *(v40 + 136) = *(v41 + 136);
      *(v40 + 152) = *(v41 + 152);
      *(v40 + 168) = *(v41 + 168);
      *(v40 + 56) = *(v41 + 56);
      *(v40 + 72) = *(v41 + 72);
      *(v40 + 88) = *(v41 + 88);
      *(v40 + 104) = *(v41 + 104);
    }

    else
    {
      v58 = v41[64];
      if (v58 == 255)
      {
        *(v40 + 56) = *(v41 + 7);
        *(v40 + 64) = v41[64];
      }

      else
      {
        v59 = *(v41 + 7);
        outlined copy of GraphicsImage.Contents(v59, v41[64]);
        *(v40 + 56) = v59;
        *(v40 + 64) = v58;
        v54 = *(v41 + 23);
      }

      *(v40 + 72) = *(v41 + 9);
      *(v40 + 80) = *(v41 + 5);
      *(v40 + 96) = v41[96];
      *(v40 + 100) = *(v41 + 100);
      *(v40 + 113) = *(v41 + 113);
      v60 = *(v41 + 9);
      *(v40 + 128) = *(v41 + 8);
      *(v40 + 144) = v60;
      *(v40 + 160) = *(v41 + 80);
      *(v40 + 162) = v41[162];
      *(v40 + 163) = v41[163];
      if (v54 >> 1 == 0xFFFFFFFF)
      {
        *(v40 + 168) = *(v41 + 168);
        *(v40 + 184) = *(v41 + 184);
      }

      else
      {
        v61 = *(v41 + 21);
        v62 = *(v41 + 22);
        v63 = *(v41 + 24);
        outlined copy of AccessibilityImageLabel(v61, v62, v54, v63);
        *(v40 + 168) = v61;
        *(v40 + 176) = v62;
        *(v40 + 184) = v54;
        *(v40 + 192) = v63;
      }

      v64 = *(v41 + 26);
      *(v40 + 200) = *(v41 + 25);
      *(v40 + 208) = v64;
      *(v40 + 216) = *(v41 + 108);
      *(v40 + 220) = *(v41 + 55);
      *(v40 + 224) = v41[224];
      v65 = *(v41 + 29);
      *(v40 + 232) = v65;
      *(v40 + 240) = *(v41 + 120);
      *(v40 + 242) = v41[242];
      swift_unknownObjectRetain();

      v66 = v65;
    }

    *(v40 + 248) = *(v41 + 31);
    *(v40 + 256) = v41[256];
    *(v40 + 264) = *(v41 + 33);
  }

  *(v40 + 272) = *(v41 + 34);
  v67 = *(v41 + 38);

  if (v67 == 1)
  {
    v68 = *(v41 + 296);
    *(v40 + 280) = *(v41 + 280);
    *(v40 + 296) = v68;
  }

  else
  {
    *(v40 + 280) = *(v41 + 35);
    *(v40 + 288) = *(v41 + 18);
    *(v40 + 304) = v67;
    swift_unknownObjectRetain();
  }

  *(v40 + 312) = *(v41 + 39);
  *(v40 + 320) = v41[320];
  if (!*(v41 + 76))
  {
    memcpy((v40 + 328), v41 + 328, 0x129uLL);
    return v26;
  }

  v69 = *(v41 + 42);
  *(v40 + 328) = *(v41 + 41);
  *(v40 + 336) = v69;
  *(v40 + 344) = v41[344];
  *(v40 + 352) = *(v41 + 44);
  *(v40 + 360) = v41[360];
  *(v40 + 368) = *(v41 + 23);
  *(v40 + 384) = v41[384];
  v70 = (v40 + 392);
  v71 = v41 + 392;
  v72 = *(v41 + 52);

  if (!v72)
  {
    v74 = *(v41 + 408);
    *v70 = *v71;
    *(v40 + 408) = v74;
    *(v40 + 424) = *(v41 + 53);
LABEL_35:
    *(v40 + 432) = *(v41 + 54);

    goto LABEL_36;
  }

  if (v72 != 1)
  {
    v75 = *(v41 + 53);
    *(v40 + 416) = v72;
    *(v40 + 424) = v75;
    (**(v72 - 8))(v40 + 392, (v41 + 392), v72);
    goto LABEL_35;
  }

  v73 = *(v41 + 408);
  *v70 = *v71;
  *(v40 + 408) = v73;
  *(v40 + 424) = *(v41 + 424);
LABEL_36:
  *(v40 + 440) = *(v41 + 55);
  *(v40 + 448) = v41[448];
  v76 = (v40 + 456);
  v77 = v41 + 456;
  v78 = *(v41 + 71);
  if (v78 == 1)
  {
    v79 = *(v41 + 568);
    *(v40 + 552) = *(v41 + 552);
    *(v40 + 568) = v79;
    *(v40 + 584) = *(v41 + 584);
    *(v40 + 600) = v41[600];
    v80 = *(v41 + 504);
    *(v40 + 488) = *(v41 + 488);
    *(v40 + 504) = v80;
    v81 = *(v41 + 536);
    *(v40 + 520) = *(v41 + 520);
    *(v40 + 536) = v81;
    v82 = *(v41 + 472);
    *v76 = *v77;
    *(v40 + 472) = v82;
  }

  else
  {
    *v76 = *v77;
    *(v40 + 464) = v41[464];
    *(v40 + 472) = *(v41 + 59);
    *(v40 + 480) = v41[480];
    *(v40 + 481) = *(v41 + 481);
    *(v40 + 483) = v41[483];
    *(v40 + 484) = v41[484];
    *(v40 + 488) = *(v41 + 61);
    v83 = *(v41 + 32);
    *(v40 + 496) = *(v41 + 31);
    *(v40 + 512) = v83;
    *(v40 + 528) = *(v41 + 66);
    *(v40 + 536) = *(v41 + 268);
    *(v40 + 544) = *(v41 + 34);
    *(v40 + 560) = v41[560];
    *(v40 + 568) = v78;
    *(v40 + 576) = *(v41 + 36);
    *(v40 + 592) = *(v41 + 74);
    *(v40 + 600) = v41[600];
  }

  *(v40 + 608) = *(v41 + 76);
  *(v40 + 616) = *(v41 + 77);
  *(v40 + 624) = v41[624];

  return v26;
}

uint64_t *assignWithCopy for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v5 = a2[8];
  if (a1[8])
  {
    if (v5)
    {
      v6 = a2[5];
      v7 = a2[6];
      v8 = *(a2 + 56);
      outlined copy of Text.Storage(v6, v7, v8);
      v9 = a1[5];
      v10 = a1[6];
      v11 = *(a1 + 56);
      a1[5] = v6;
      a1[6] = v7;
      *(a1 + 56) = v8;
      outlined consume of Text.Storage(v9, v10, v11);
      a1[8] = a2[8];
    }

    else
    {
      outlined destroy of Text((a1 + 5));
      v15 = *(a2 + 7);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 7) = v15;
    }
  }

  else if (v5)
  {
    v12 = a2[5];
    v13 = a2[6];
    v14 = *(a2 + 56);
    outlined copy of Text.Storage(v12, v13, v14);
    a1[5] = v12;
    a1[6] = v13;
    *(a1 + 56) = v14;
    a1[8] = a2[8];
  }

  else
  {
    v16 = *(a2 + 5);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 5) = v16;
  }

  v17 = a2[9];
  v18 = a2[10];
  v19 = a2[11];
  v20 = a2[12];
  v274 = a2;
  v21 = a2[13];
  v22 = a2[14];
  v23 = a2[15];
  v24 = a2[16];
  v266 = a2[17];
  v25 = a2[18];
  v267 = v274[19];
  v268 = v274[20];
  v269 = v274[21];
  __dsta = *(v274 + 44);
  v272 = *(v274 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v17, v18, v19, v20, v21, v22, v23, v24, v266, v25, v267, v268, v269, __dsta, v272);
  v26 = a1[9];
  v27 = a1[10];
  v28 = a1[11];
  v29 = a1[12];
  v30 = a1[13];
  v31 = a1[14];
  v32 = a1[15];
  v33 = a1[16];
  v34 = *(a1 + 17);
  v35 = *(a1 + 19);
  v36 = a1[21];
  v37 = *(a1 + 44);
  v38 = *(a1 + 180);
  a1[9] = v17;
  a1[10] = v18;
  a1[11] = v19;
  a1[12] = v20;
  a1[13] = v21;
  a1[14] = v22;
  v39 = v274;
  a1[15] = v23;
  a1[16] = v24;
  a1[17] = v266;
  a1[18] = v25;
  a1[19] = v267;
  a1[20] = v268;
  a1[21] = v269;
  *(a1 + 44) = __dsta;
  *(a1 + 180) = v272;
  outlined consume of StateOrBinding<TextFieldState>(v26, v27, v28, v29, v30, v31, v32, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v41 = *(v40 + 56);
  v42 = (a1 + v41);
  v43 = (v274 + v41);
  type metadata accessor for Binding<TextSelection?>(0);
  v45 = v44;
  v46 = *(v44 - 8);
  v47 = *(v46 + 48);
  LODWORD(v24) = v47(v42, 1, v44);
  v48 = v47(v43, 1, v45);
  v49 = a1;
  if (v24)
  {
    if (!v48)
    {
      *v42 = *v43;
      v42[1] = v43[1];
      v50 = *(v45 + 32);
      __dst = v42 + v50;
      v51 = v43 + v50;
      v52 = type metadata accessor for TextSelection(0);
      v53 = *(v52 - 8);
      v54 = *(v53 + 48);

      if (v54(v51, 1, v52))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v51, *(*(v55 - 8) + 64));
      }

      else
      {
        v67 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v68 - 8) + 16))(__dst, v51, v68);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v51, *(*(v67 - 8) + 64));
        }

        __dst[*(v52 + 20)] = v51[*(v52 + 20)];
        (*(v53 + 56))(__dst, 0, 1, v52);
      }

      v49 = a1;
      (*(v46 + 56))(v42, 0, 1, v45);
      goto LABEL_27;
    }

LABEL_14:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v42, v43, *(*(v56 - 8) + 64));
    goto LABEL_28;
  }

  if (v48)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v42, type metadata accessor for Binding<TextSelection?>);
    goto LABEL_14;
  }

  *v42 = *v43;

  v42[1] = v43[1];

  v57 = *(v45 + 32);
  v58 = v42 + v57;
  v59 = v43 + v57;
  v60 = type metadata accessor for TextSelection(0);
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  v63 = v62(v58, 1, v60);
  v64 = v62(v59, 1, v60);
  if (v63)
  {
    if (!v64)
    {
      v65 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v66 - 8) + 16))(v58, v59, v66);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v58, v59, *(*(v65 - 8) + 64));
      }

      v58[*(v60 + 20)] = v59[*(v60 + 20)];
      (*(v61 + 56))(v58, 0, 1, v60);
      goto LABEL_27;
    }

LABEL_23:
    type metadata accessor for TextSelection?(0);
    memcpy(v58, v59, *(*(v69 - 8) + 64));
LABEL_27:
    v39 = v274;
    goto LABEL_28;
  }

  if (v64)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v58, type metadata accessor for TextSelection);
    goto LABEL_23;
  }

  v39 = v274;
  if (a1 != v274)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v58, type metadata accessor for TextSelection.Indices);
    v173 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v174 - 8) + 16))(v58, v59, v174);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v58, v59, *(*(v173 - 8) + 64));
    }
  }

  v58[*(v60 + 20)] = v59[*(v60 + 20)];
LABEL_28:
  v70 = *(a3 + 20);
  v71 = v49 + v70;
  v72 = v39 + v70;
  *(v49 + v70) = *(v39 + v70);

  *(v71 + 1) = *(v72 + 1);

  *(v71 + 2) = *(v72 + 2);
  v71[24] = v72[24];
  *(v71 + 7) = *(v72 + 7);
  v73 = (v71 + 32);
  v74 = *(v71 + 4);
  v76 = (v72 + 32);
  v75 = *(v72 + 4);
  if (v74 == 1)
  {
    if (v75 == 1)
    {
      v77 = *v76;
      v78 = *(v72 + 4);
      *(v71 + 3) = *(v72 + 3);
      *(v71 + 4) = v78;
      *v73 = v77;
      v79 = *(v72 + 5);
      v80 = *(v72 + 6);
      v81 = *(v72 + 8);
      *(v71 + 7) = *(v72 + 7);
      *(v71 + 8) = v81;
      *(v71 + 5) = v79;
      *(v71 + 6) = v80;
      v82 = *(v72 + 9);
      v83 = *(v72 + 10);
      v84 = *(v72 + 12);
      *(v71 + 11) = *(v72 + 11);
      *(v71 + 12) = v84;
      *(v71 + 9) = v82;
      *(v71 + 10) = v83;
      v85 = *(v72 + 13);
      v86 = *(v72 + 14);
      v87 = *(v72 + 16);
      *(v71 + 15) = *(v72 + 15);
      *(v71 + 16) = v87;
      *(v71 + 13) = v85;
      *(v71 + 14) = v86;
    }

    else
    {
      *(v71 + 4) = v75;
      v99 = *(v72 + 5);
      *(v71 + 5) = v99;
      v100 = *(v72 + 6);
      *(v71 + 6) = v100;
      v101 = *(v72 + 23);
      v102 = v75;
      v103 = v99;
      v104 = v100;
      if (v101 >> 1 == 4294967294)
      {
        v105 = *(v72 + 56);
        v106 = *(v72 + 72);
        v107 = *(v72 + 88);
        *(v71 + 104) = *(v72 + 104);
        *(v71 + 88) = v107;
        *(v71 + 72) = v106;
        *(v71 + 56) = v105;
        v108 = *(v72 + 120);
        v109 = *(v72 + 136);
        v110 = *(v72 + 152);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 152) = v110;
        *(v71 + 136) = v109;
        *(v71 + 120) = v108;
        v111 = *(v72 + 184);
        v112 = *(v72 + 200);
        v113 = *(v72 + 216);
        *(v71 + 227) = *(v72 + 227);
        *(v71 + 216) = v113;
        *(v71 + 200) = v112;
        *(v71 + 184) = v111;
      }

      else
      {
        v131 = v72[64];
        if (v131 == 255)
        {
          v148 = *(v72 + 7);
          v71[64] = v72[64];
          *(v71 + 7) = v148;
        }

        else
        {
          v132 = *(v72 + 7);
          outlined copy of GraphicsImage.Contents(v132, v72[64]);
          *(v71 + 7) = v132;
          v71[64] = v131;
        }

        *(v71 + 9) = *(v72 + 9);
        *(v71 + 5) = *(v72 + 5);
        v71[96] = v72[96];
        v149 = *(v72 + 100);
        *(v71 + 113) = *(v72 + 113);
        *(v71 + 100) = v149;
        v150 = *(v72 + 8);
        v151 = *(v72 + 9);
        v71[160] = v72[160];
        *(v71 + 8) = v150;
        *(v71 + 9) = v151;
        v71[161] = v72[161];
        v71[162] = v72[162];
        v71[163] = v72[163];
        v152 = *(v72 + 23);
        if (v152 >> 1 == 0xFFFFFFFF)
        {
          v153 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v153;
        }

        else
        {
          v154 = *(v72 + 21);
          v155 = *(v72 + 22);
          v156 = *(v72 + 24);
          outlined copy of AccessibilityImageLabel(v154, v155, *(v72 + 23), v156);
          *(v71 + 21) = v154;
          *(v71 + 22) = v155;
          *(v71 + 23) = v152;
          *(v71 + 24) = v156;
        }

        *(v71 + 25) = *(v72 + 25);
        *(v71 + 26) = *(v72 + 26);
        v71[216] = v72[216];
        v71[217] = v72[217];
        v157 = *(v72 + 55);
        v71[224] = v72[224];
        *(v71 + 55) = v157;
        v158 = *(v72 + 29);
        *(v71 + 29) = v158;
        *(v71 + 120) = *(v72 + 120);
        v71[242] = v72[242];
        swift_unknownObjectRetain();

        v159 = v158;
      }

      *(v71 + 31) = *(v72 + 31);
      v71[256] = v72[256];
      *(v71 + 33) = *(v72 + 33);
    }
  }

  else if (v75 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent((v71 + 32));
    v89 = *(v72 + 3);
    v88 = *(v72 + 4);
    *v73 = *v76;
    *(v71 + 3) = v89;
    *(v71 + 4) = v88;
    v90 = *(v72 + 8);
    v92 = *(v72 + 5);
    v91 = *(v72 + 6);
    *(v71 + 7) = *(v72 + 7);
    *(v71 + 8) = v90;
    *(v71 + 5) = v92;
    *(v71 + 6) = v91;
    v93 = *(v72 + 12);
    v95 = *(v72 + 9);
    v94 = *(v72 + 10);
    *(v71 + 11) = *(v72 + 11);
    *(v71 + 12) = v93;
    *(v71 + 9) = v95;
    *(v71 + 10) = v94;
    v96 = *(v72 + 16);
    v98 = *(v72 + 13);
    v97 = *(v72 + 14);
    *(v71 + 15) = *(v72 + 15);
    *(v71 + 16) = v96;
    *(v71 + 13) = v98;
    *(v71 + 14) = v97;
  }

  else
  {
    *(v71 + 4) = v75;
    v114 = v75;

    v115 = *(v71 + 5);
    v116 = *(v72 + 5);
    *(v71 + 5) = v116;
    v117 = v116;

    v118 = *(v71 + 6);
    v119 = *(v72 + 6);
    *(v71 + 6) = v119;
    v120 = v119;

    v121 = *(v72 + 23) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v71 + 23) >> 1 == 4294967294)
    {
      if (v121 == 0x1FFFFFFFCLL)
      {
        v122 = *(v72 + 56);
        v123 = *(v72 + 72);
        v124 = *(v72 + 88);
        *(v71 + 104) = *(v72 + 104);
        *(v71 + 88) = v124;
        *(v71 + 72) = v123;
        *(v71 + 56) = v122;
        v125 = *(v72 + 120);
        v126 = *(v72 + 136);
        v127 = *(v72 + 152);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 152) = v127;
        *(v71 + 136) = v126;
        *(v71 + 120) = v125;
        v128 = *(v72 + 184);
        v129 = *(v72 + 200);
        v130 = *(v72 + 216);
        *(v71 + 227) = *(v72 + 227);
        *(v71 + 216) = v130;
        *(v71 + 200) = v129;
        *(v71 + 184) = v128;
      }

      else
      {
        v142 = v72[64];
        if (v142 == 255)
        {
          v160 = *(v72 + 7);
          v71[64] = v72[64];
          *(v71 + 7) = v160;
        }

        else
        {
          v143 = *(v72 + 7);
          outlined copy of GraphicsImage.Contents(v143, v72[64]);
          *(v71 + 7) = v143;
          v71[64] = v142;
        }

        *(v71 + 9) = *(v72 + 9);
        *(v71 + 5) = *(v72 + 5);
        v71[96] = v72[96];
        v161 = *(v72 + 100);
        *(v71 + 113) = *(v72 + 113);
        *(v71 + 100) = v161;
        v162 = *(v72 + 8);
        v163 = *(v72 + 9);
        v71[160] = v72[160];
        *(v71 + 8) = v162;
        *(v71 + 9) = v163;
        v71[161] = v72[161];
        v71[162] = v72[162];
        v71[163] = v72[163];
        v164 = *(v72 + 23);
        if (v164 >> 1 == 0xFFFFFFFF)
        {
          v165 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v165;
        }

        else
        {
          v166 = *(v72 + 21);
          v167 = *(v72 + 22);
          v168 = *(v72 + 24);
          outlined copy of AccessibilityImageLabel(v166, v167, *(v72 + 23), v168);
          *(v71 + 21) = v166;
          *(v71 + 22) = v167;
          *(v71 + 23) = v164;
          *(v71 + 24) = v168;
        }

        *(v71 + 25) = *(v72 + 25);
        *(v71 + 26) = *(v72 + 26);
        v71[216] = v72[216];
        v71[217] = v72[217];
        v169 = *(v72 + 55);
        v71[224] = v72[224];
        *(v71 + 55) = v169;
        v170 = *(v72 + 29);
        *(v71 + 29) = v170;
        *(v71 + 120) = *(v72 + 120);
        v71[242] = v72[242];
        swift_unknownObjectRetain();

        v171 = v170;
      }
    }

    else if (v121 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved((v71 + 56));
      v133 = *(v72 + 72);
      v134 = *(v72 + 88);
      v135 = *(v72 + 104);
      *(v71 + 56) = *(v72 + 56);
      *(v71 + 104) = v135;
      *(v71 + 88) = v134;
      *(v71 + 72) = v133;
      v136 = *(v72 + 136);
      v137 = *(v72 + 152);
      v138 = *(v72 + 168);
      *(v71 + 120) = *(v72 + 120);
      *(v71 + 168) = v138;
      *(v71 + 152) = v137;
      *(v71 + 136) = v136;
      v139 = *(v72 + 200);
      v140 = *(v72 + 216);
      v141 = *(v72 + 227);
      *(v71 + 184) = *(v72 + 184);
      *(v71 + 227) = v141;
      *(v71 + 216) = v140;
      *(v71 + 200) = v139;
    }

    else
    {
      v144 = v72[64];
      if (v71[64] == 255)
      {
        if (v144 == 255)
        {
          v176 = *(v72 + 7);
          v71[64] = v72[64];
          *(v71 + 7) = v176;
        }

        else
        {
          v172 = *(v72 + 7);
          outlined copy of GraphicsImage.Contents(v172, v72[64]);
          *(v71 + 7) = v172;
          v71[64] = v144;
        }
      }

      else if (v144 == 255)
      {
        outlined destroy of GraphicsImage.Contents((v71 + 56));
        v175 = v72[64];
        *(v71 + 7) = *(v72 + 7);
        v71[64] = v175;
      }

      else
      {
        v145 = *(v72 + 7);
        outlined copy of GraphicsImage.Contents(v145, v72[64]);
        v146 = *(v71 + 7);
        *(v71 + 7) = v145;
        v147 = v71[64];
        v71[64] = v144;
        outlined consume of GraphicsImage.Contents(v146, v147);
      }

      *(v71 + 9) = *(v72 + 9);
      *(v71 + 10) = *(v72 + 10);
      *(v71 + 11) = *(v72 + 11);
      v71[96] = v72[96];
      v177 = *(v72 + 100);
      *(v71 + 113) = *(v72 + 113);
      *(v71 + 100) = v177;
      v178 = *(v72 + 8);
      v179 = *(v72 + 9);
      v71[160] = v72[160];
      *(v71 + 8) = v178;
      *(v71 + 9) = v179;
      v71[161] = v72[161];
      v71[162] = v72[162];
      v71[163] = v72[163];
      v180 = *(v72 + 23);
      v181 = v180 & 0xFFFFFFFFFFFFFFFELL;
      if (*(v71 + 23) >> 1 == 0xFFFFFFFFLL)
      {
        if (v181 == 0x1FFFFFFFELL)
        {
          v182 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v182;
        }

        else
        {
          v184 = *(v72 + 21);
          v185 = *(v72 + 22);
          v186 = *(v72 + 24);
          outlined copy of AccessibilityImageLabel(v184, v185, *(v72 + 23), v186);
          *(v71 + 21) = v184;
          *(v71 + 22) = v185;
          *(v71 + 23) = v180;
          *(v71 + 24) = v186;
        }
      }

      else if (v181 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel((v71 + 168));
        v183 = *(v72 + 184);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 184) = v183;
      }

      else
      {
        v187 = *(v72 + 21);
        v188 = *(v72 + 22);
        v189 = *(v72 + 24);
        outlined copy of AccessibilityImageLabel(v187, v188, *(v72 + 23), v189);
        v190 = *(v71 + 21);
        v191 = *(v71 + 22);
        v192 = *(v71 + 23);
        v193 = *(v71 + 24);
        *(v71 + 21) = v187;
        *(v71 + 22) = v188;
        *(v71 + 23) = v180;
        *(v71 + 24) = v189;
        outlined consume of AccessibilityImageLabel(v190, v191, v192, v193);
      }

      *(v71 + 25) = *(v72 + 25);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v71 + 26) = *(v72 + 26);

      v71[216] = v72[216];
      v71[217] = v72[217];
      v194 = *(v72 + 55);
      v71[224] = v72[224];
      *(v71 + 55) = v194;
      v195 = *(v71 + 29);
      v196 = *(v72 + 29);
      *(v71 + 29) = v196;
      v197 = v196;

      *(v71 + 120) = *(v72 + 120);
      v71[242] = v72[242];
    }

    *(v71 + 31) = *(v72 + 31);

    v71[256] = v72[256];
    *(v71 + 33) = *(v72 + 33);
  }

  *(v71 + 34) = *(v72 + 34);

  v198 = v71 + 280;
  v199 = v72 + 280;
  v200 = *(v72 + 38);
  if (*(v71 + 38) == 1)
  {
    if (v200 == 1)
    {
      v201 = *(v72 + 296);
      *v198 = *v199;
      *(v71 + 296) = v201;
    }

    else
    {
      *(v71 + 35) = *(v72 + 35);
      *(v71 + 36) = *(v72 + 36);
      *(v71 + 37) = *(v72 + 37);
      *(v71 + 38) = *(v72 + 38);
      swift_unknownObjectRetain();
    }
  }

  else if (v200 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent((v71 + 280));
    v202 = *(v72 + 296);
    *v198 = *v199;
    *(v71 + 296) = v202;
  }

  else
  {
    *(v71 + 70) = *(v72 + 70);
    *(v71 + 71) = *(v72 + 71);
    *(v71 + 72) = *(v72 + 72);
    *(v71 + 73) = *(v72 + 73);
    *(v71 + 37) = *(v72 + 37);
    *(v71 + 38) = *(v72 + 38);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v203 = *(v72 + 39);
  v71[320] = v72[320];
  *(v71 + 39) = v203;
  v204 = *(v72 + 76);
  if (*(v71 + 76))
  {
    if (v204)
    {
      *(v71 + 41) = *(v72 + 41);
      *(v71 + 42) = *(v72 + 42);

      v71[344] = v72[344];
      *(v71 + 44) = *(v72 + 44);

      v71[360] = v72[360];
      v205 = *(v72 + 23);
      v71[384] = v72[384];
      *(v71 + 23) = v205;
      v206 = v71 + 392;
      v207 = v72 + 392;
      v208 = *(v71 + 52);
      v209 = *(v72 + 52);
      if (v208 != 1)
      {
        if (v209 == 1)
        {
          outlined destroy of AccessibilityValueStorage((v71 + 392));
          v219 = *(v72 + 408);
          v218 = *(v72 + 424);
          *v206 = *v207;
          *(v71 + 408) = v219;
          *(v71 + 424) = v218;
        }

        else
        {
          if (v208)
          {
            if (v209)
            {
              __swift_assign_boxed_opaque_existential_1(v71 + 49, v72 + 49);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue((v71 + 392));
              v237 = *(v72 + 53);
              v238 = *(v72 + 408);
              *v206 = *v207;
              *(v71 + 408) = v238;
              *(v71 + 53) = v237;
            }
          }

          else if (v209)
          {
            *(v71 + 52) = v209;
            *(v71 + 53) = *(v72 + 53);
            (**(v209 - 8))((v71 + 392), (v72 + 392));
          }

          else
          {
            v239 = *v207;
            v240 = *(v72 + 408);
            *(v71 + 53) = *(v72 + 53);
            *v206 = v239;
            *(v71 + 408) = v240;
          }

          *(v71 + 54) = *(v72 + 54);
        }

        goto LABEL_115;
      }

      if (v209)
      {
        if (v209 == 1)
        {
          v210 = *v207;
          v211 = *(v72 + 424);
          *(v71 + 408) = *(v72 + 408);
          *(v71 + 424) = v211;
          *v206 = v210;
LABEL_115:
          v241 = *(v72 + 55);
          v71[448] = v72[448];
          *(v71 + 55) = v241;
          v242 = v71 + 456;
          v243 = v72 + 456;
          v244 = *(v72 + 71);
          if (*(v71 + 71) == 1)
          {
            if (v244 == 1)
            {
              v245 = *(v72 + 472);
              *v242 = *v243;
              *(v71 + 472) = v245;
              v246 = *(v72 + 488);
              v247 = *(v72 + 504);
              v248 = *(v72 + 536);
              *(v71 + 520) = *(v72 + 520);
              *(v71 + 536) = v248;
              *(v71 + 488) = v246;
              *(v71 + 504) = v247;
              v249 = *(v72 + 552);
              v250 = *(v72 + 568);
              v251 = *(v72 + 584);
              v71[600] = v72[600];
              *(v71 + 568) = v250;
              *(v71 + 584) = v251;
              *(v71 + 552) = v249;
            }

            else
            {
              v259 = *v243;
              v71[464] = v72[464];
              *v242 = v259;
              v260 = *(v72 + 59);
              v71[480] = v72[480];
              *(v71 + 59) = v260;
              v71[481] = v72[481];
              v71[482] = v72[482];
              v71[483] = v72[483];
              v71[484] = v72[484];
              *(v71 + 61) = *(v72 + 61);
              *(v71 + 62) = *(v72 + 62);
              *(v71 + 63) = *(v72 + 63);
              *(v71 + 64) = *(v72 + 64);
              *(v71 + 65) = *(v72 + 65);
              *(v71 + 66) = *(v72 + 66);
              v71[536] = v72[536];
              v71[537] = v72[537];
              *(v71 + 68) = *(v72 + 68);
              *(v71 + 69) = *(v72 + 69);
              v71[560] = v72[560];
              *(v71 + 71) = *(v72 + 71);
              v261 = *(v72 + 36);
              *(v71 + 74) = *(v72 + 74);
              *(v71 + 36) = v261;
              v71[600] = v72[600];
            }
          }

          else if (v244 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties((v71 + 456));
            v252 = *(v72 + 472);
            *v242 = *v243;
            *(v71 + 472) = v252;
            v253 = *(v72 + 536);
            v255 = *(v72 + 488);
            v254 = *(v72 + 504);
            *(v71 + 520) = *(v72 + 520);
            *(v71 + 536) = v253;
            *(v71 + 488) = v255;
            *(v71 + 504) = v254;
            v257 = *(v72 + 568);
            v256 = *(v72 + 584);
            v258 = *(v72 + 552);
            v71[600] = v72[600];
            *(v71 + 568) = v257;
            *(v71 + 584) = v256;
            *(v71 + 552) = v258;
          }

          else
          {
            v262 = *v243;
            v71[464] = v72[464];
            *v242 = v262;
            v263 = *(v72 + 59);
            v71[480] = v72[480];
            *(v71 + 59) = v263;
            v71[481] = v72[481];
            v71[482] = v72[482];
            v71[483] = v72[483];
            v71[484] = v72[484];
            *(v71 + 61) = *(v72 + 61);
            *(v71 + 62) = *(v72 + 62);
            *(v71 + 63) = *(v72 + 63);
            *(v71 + 64) = *(v72 + 64);
            *(v71 + 65) = *(v72 + 65);
            *(v71 + 66) = *(v72 + 66);
            v71[536] = v72[536];
            v71[537] = v72[537];
            *(v71 + 68) = *(v72 + 68);
            *(v71 + 69) = *(v72 + 69);
            v71[560] = v72[560];
            *(v71 + 71) = *(v72 + 71);

            v264 = *(v72 + 36);
            *(v71 + 74) = *(v72 + 74);
            *(v71 + 36) = v264;
            v71[600] = v72[600];
          }

          *(v71 + 76) = *(v72 + 76);

          *(v71 + 154) = *(v72 + 154);
          *(v71 + 155) = *(v72 + 155);
          v71[624] = v72[624];
          return v49;
        }

        *(v71 + 52) = v209;
        *(v71 + 53) = *(v72 + 53);
        (**(v209 - 8))((v71 + 392), (v72 + 392));
      }

      else
      {
        v235 = *v207;
        v236 = *(v72 + 408);
        *(v71 + 53) = *(v72 + 53);
        *v206 = v235;
        *(v71 + 408) = v236;
      }

      *(v71 + 54) = *(v72 + 54);

      goto LABEL_115;
    }

    outlined destroy of PlatformItem.AccessibilityContent((v71 + 328));
LABEL_94:
    memcpy(v71 + 328, v72 + 328, 0x129uLL);
    return v49;
  }

  if (!v204)
  {
    goto LABEL_94;
  }

  *(v71 + 41) = *(v72 + 41);
  *(v71 + 42) = *(v72 + 42);
  v71[344] = v72[344];
  *(v71 + 44) = *(v72 + 44);
  v71[360] = v72[360];
  v212 = *(v72 + 23);
  v71[384] = v72[384];
  *(v71 + 23) = v212;
  v213 = v71 + 392;
  v214 = (v72 + 392);
  v215 = *(v72 + 52);

  if (!v215)
  {
    v220 = *v214;
    v221 = *(v72 + 408);
    *(v71 + 53) = *(v72 + 53);
    *v213 = v220;
    *(v71 + 408) = v221;
LABEL_102:
    *(v71 + 54) = *(v72 + 54);

    goto LABEL_103;
  }

  if (v215 != 1)
  {
    *(v71 + 52) = v215;
    *(v71 + 53) = *(v72 + 53);
    (**(v215 - 8))((v71 + 392), (v72 + 392), v215);
    goto LABEL_102;
  }

  v216 = *v214;
  v217 = *(v72 + 424);
  *(v71 + 408) = *(v72 + 408);
  *(v71 + 424) = v217;
  *v213 = v216;
LABEL_103:
  v222 = *(v72 + 55);
  v71[448] = v72[448];
  *(v71 + 55) = v222;
  v223 = v71 + 456;
  v224 = v72 + 456;
  if (*(v72 + 71) == 1)
  {
    v225 = *(v72 + 472);
    *v223 = *v224;
    *(v71 + 472) = v225;
    v226 = *(v72 + 488);
    v227 = *(v72 + 504);
    v228 = *(v72 + 536);
    *(v71 + 520) = *(v72 + 520);
    *(v71 + 536) = v228;
    *(v71 + 488) = v226;
    *(v71 + 504) = v227;
    v229 = *(v72 + 552);
    v230 = *(v72 + 568);
    v231 = *(v72 + 584);
    v71[600] = v72[600];
    *(v71 + 568) = v230;
    *(v71 + 584) = v231;
    *(v71 + 552) = v229;
  }

  else
  {
    v232 = *v224;
    v71[464] = v72[464];
    *v223 = v232;
    v233 = *(v72 + 59);
    v71[480] = v72[480];
    *(v71 + 59) = v233;
    v71[481] = v72[481];
    v71[482] = v72[482];
    v71[483] = v72[483];
    v71[484] = v72[484];
    *(v71 + 61) = *(v72 + 61);
    *(v71 + 62) = *(v72 + 62);
    *(v71 + 63) = *(v72 + 63);
    *(v71 + 64) = *(v72 + 64);
    *(v71 + 65) = *(v72 + 65);
    *(v71 + 66) = *(v72 + 66);
    v71[536] = v72[536];
    v71[537] = v72[537];
    *(v71 + 68) = *(v72 + 68);
    *(v71 + 69) = *(v72 + 69);
    v71[560] = v72[560];
    *(v71 + 71) = *(v72 + 71);
    v234 = *(v72 + 36);
    *(v71 + 74) = *(v72 + 74);
    *(v71 + 36) = v234;
    v71[600] = v72[600];
  }

  *(v71 + 76) = *(v72 + 76);
  *(v71 + 77) = *(v72 + 77);
  v71[624] = v72[624];

  return v49;
}

uint64_t initializeWithTake for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v8 = *(v7 + 56);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  type metadata accessor for Binding<TextSelection?>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v10, 1, v11))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = v10[1];
    *v9 = *v10;
    v9[1] = v15;
    v16 = *(v12 + 32);
    v17 = v9 + v16;
    v18 = v10 + v16;
    v19 = type metadata accessor for TextSelection(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v18, 1, v19))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v17, v18, *(*(v21 - 8) + 64));
    }

    else
    {
      v25 = a3;
      v22 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v23 - 8) + 32))(v17, v18, v23);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v17, v18, *(*(v22 - 8) + 64));
      }

      v17[*(v19 + 20)] = v18[*(v19 + 20)];
      (*(v20 + 56))(v17, 0, 1, v19);
      a3 = v25;
    }

    (*(v13 + 56))(v9, 0, 1, v12);
  }

  memcpy((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), 0x271uLL);
  return a1;
}

uint64_t *assignWithTake for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  if (a1[8])
  {
    if (a2[8])
    {
      v7 = *(a2 + 56);
      v8 = a1[5];
      v9 = a1[6];
      v10 = *(a1 + 56);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      a1[8] = a2[8];

      goto LABEL_6;
    }

    outlined destroy of Text((a1 + 5));
  }

  *(a1 + 5) = *(a2 + 5);
  *(a1 + 7) = *(a2 + 7);
LABEL_6:
  v11 = a2[21];
  v12 = *(a2 + 44);
  v13 = *(a2 + 180);
  v14 = a1[9];
  v15 = a1[10];
  v16 = a1[11];
  v17 = a1[12];
  v18 = a1[13];
  v19 = a1[14];
  v20 = a1[15];
  v21 = a1[16];
  v22 = *(a1 + 17);
  v23 = *(a1 + 19);
  v24 = a1[21];
  v25 = *(a1 + 44);
  v26 = *(a1 + 180);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 19) = *(a2 + 19);
  a1[21] = v11;
  *(a1 + 44) = v12;
  *(a1 + 180) = v13;
  outlined consume of StateOrBinding<TextFieldState>(v14, v15, v16, v17, v18, v19, v20, v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v28 = *(v27 + 56);
  v29 = a1 + v28;
  v30 = a2 + v28;
  type metadata accessor for Binding<TextSelection?>(0);
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v29, 1, v31);
  v36 = v34(v30, 1, v32);
  if (v35)
  {
    if (!v36)
    {
      v37 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v37;
      v38 = *(v32 + 32);
      v39 = &v29[v38];
      v40 = &v30[v38];
      v41 = type metadata accessor for TextSelection(0);
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v40, 1, v41))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v39, v40, *(*(v43 - 8) + 64));
      }

      else
      {
        v110 = a3;
        v59 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v60 - 8) + 32))(v39, v40, v60);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v39, v40, *(*(v59 - 8) + 64));
        }

        v39[*(v41 + 20)] = v40[*(v41 + 20)];
        (*(v42 + 56))(v39, 0, 1, v41);
        a3 = v110;
      }

      (*(v33 + 56))(v29, 0, 1, v32);
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (v36)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v29, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    v45 = *(*(v44 - 8) + 64);
    v46 = v29;
    v47 = v30;
LABEL_13:
    memcpy(v46, v47, v45);
    goto LABEL_26;
  }

  v48 = a3;
  *v29 = *v30;

  *(v29 + 1) = *(v30 + 1);

  v49 = *(v32 + 32);
  v50 = &v29[v49];
  v51 = &v30[v49];
  v52 = type metadata accessor for TextSelection(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  v55 = v54(v50, 1, v52);
  v56 = v54(v51, 1, v52);
  a3 = v48;
  if (v55)
  {
    if (!v56)
    {
      v57 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v58 - 8) + 32))(v50, v51, v58);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v50, v51, *(*(v57 - 8) + 64));
      }

      v50[*(v52 + 20)] = v51[*(v52 + 20)];
      (*(v53 + 56))(v50, 0, 1, v52);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v56)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v50, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v45 = *(*(v61 - 8) + 64);
    v46 = v50;
    v47 = v51;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v50, type metadata accessor for TextSelection.Indices);
    v79 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v80 - 8) + 32))(v50, v51, v80);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v50, v51, *(*(v79 - 8) + 64));
    }
  }

  v50[*(v52 + 20)] = v51[*(v52 + 20)];
LABEL_26:
  v62 = *(a3 + 20);
  v63 = a1 + v62;
  v64 = a2 + v62;
  *(a1 + v62) = *(a2 + v62);

  *(v63 + 1) = *(v64 + 1);

  *(v63 + 2) = *(v64 + 2);
  v63[24] = v64[24];
  *(v63 + 7) = *(v64 + 7);
  v65 = *(v63 + 4);
  v66 = *(v64 + 4);
  if (v65 == 1)
  {
LABEL_29:
    v67 = *(v64 + 15);
    *(v63 + 14) = *(v64 + 14);
    *(v63 + 15) = v67;
    *(v63 + 16) = *(v64 + 16);
    v68 = *(v64 + 11);
    *(v63 + 10) = *(v64 + 10);
    *(v63 + 11) = v68;
    v69 = *(v64 + 13);
    *(v63 + 12) = *(v64 + 12);
    *(v63 + 13) = v69;
    v70 = *(v64 + 7);
    *(v63 + 6) = *(v64 + 6);
    *(v63 + 7) = v70;
    v71 = *(v64 + 9);
    *(v63 + 8) = *(v64 + 8);
    *(v63 + 9) = v71;
    v72 = *(v64 + 3);
    *(v63 + 2) = *(v64 + 2);
    *(v63 + 3) = v72;
    v73 = *(v64 + 5);
    *(v63 + 4) = *(v64 + 4);
    *(v63 + 5) = v73;
    goto LABEL_51;
  }

  if (v66 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent((v63 + 32));
    goto LABEL_29;
  }

  *(v63 + 4) = v66;

  v74 = *(v63 + 5);
  *(v63 + 5) = *(v64 + 5);

  v75 = *(v63 + 6);
  *(v63 + 6) = *(v64 + 6);

  if (*(v63 + 23) >> 1 == 4294967294)
  {
    goto LABEL_33;
  }

  if (*(v64 + 23) >> 1 != 4294967294)
  {
    v76 = v63[64];
    if (v76 != 255)
    {
      v77 = v64[64];
      if (v77 != 255)
      {
        v78 = *(v63 + 7);
        *(v63 + 7) = *(v64 + 7);
        v63[64] = v77;
        outlined consume of GraphicsImage.Contents(v78, v76);
        goto LABEL_44;
      }

      outlined destroy of GraphicsImage.Contents((v63 + 56));
    }

    *(v63 + 7) = *(v64 + 7);
    v63[64] = v64[64];
LABEL_44:
    *(v63 + 72) = *(v64 + 72);
    *(v63 + 11) = *(v64 + 11);
    v63[96] = v64[96];
    *(v63 + 100) = *(v64 + 100);
    *(v63 + 113) = *(v64 + 113);
    v81 = *(v64 + 9);
    *(v63 + 8) = *(v64 + 8);
    *(v63 + 9) = v81;
    v63[160] = v64[160];
    v63[161] = v64[161];
    v82 = *(v63 + 23);
    *(v63 + 81) = *(v64 + 81);
    if (v82 >> 1 != 0xFFFFFFFF)
    {
      v83 = *(v64 + 23);
      if (v83 >> 1 != 0xFFFFFFFF)
      {
        v84 = *(v64 + 24);
        v85 = *(v63 + 21);
        v86 = *(v63 + 22);
        v87 = *(v63 + 24);
        *(v63 + 168) = *(v64 + 168);
        *(v63 + 23) = v83;
        *(v63 + 24) = v84;
        outlined consume of AccessibilityImageLabel(v85, v86, v82, v87);
        goto LABEL_49;
      }

      outlined destroy of AccessibilityImageLabel((v63 + 168));
    }

    *(v63 + 168) = *(v64 + 168);
    *(v63 + 184) = *(v64 + 184);
LABEL_49:
    *(v63 + 25) = *(v64 + 25);
    swift_unknownObjectRelease();
    *(v63 + 26) = *(v64 + 26);

    v63[216] = v64[216];
    v63[217] = v64[217];
    *(v63 + 55) = *(v64 + 55);
    v63[224] = v64[224];
    v88 = *(v63 + 29);
    *(v63 + 29) = *(v64 + 29);

    *(v63 + 120) = *(v64 + 120);
    v63[242] = v64[242];
    goto LABEL_50;
  }

  outlined destroy of Image.Resolved((v63 + 56));
LABEL_33:
  *(v63 + 184) = *(v64 + 184);
  *(v63 + 200) = *(v64 + 200);
  *(v63 + 216) = *(v64 + 216);
  *(v63 + 227) = *(v64 + 227);
  *(v63 + 120) = *(v64 + 120);
  *(v63 + 136) = *(v64 + 136);
  *(v63 + 152) = *(v64 + 152);
  *(v63 + 168) = *(v64 + 168);
  *(v63 + 56) = *(v64 + 56);
  *(v63 + 72) = *(v64 + 72);
  *(v63 + 88) = *(v64 + 88);
  *(v63 + 104) = *(v64 + 104);
LABEL_50:
  *(v63 + 31) = *(v64 + 31);

  v63[256] = v64[256];
  *(v63 + 33) = *(v64 + 33);

LABEL_51:
  *(v63 + 34) = *(v64 + 34);

  v89 = v63 + 280;
  v90 = v64 + 280;
  if (*(v63 + 38) == 1)
  {
LABEL_54:
    v92 = *(v64 + 296);
    *v89 = *v90;
    *(v63 + 296) = v92;
    goto LABEL_56;
  }

  v91 = *(v64 + 38);
  if (v91 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent((v63 + 280));
    goto LABEL_54;
  }

  *v89 = *v90;
  *(v63 + 37) = *(v64 + 37);
  *(v63 + 38) = v91;
  swift_unknownObjectRelease();
LABEL_56:
  *(v63 + 39) = *(v64 + 39);
  v63[320] = v64[320];
  if (*(v63 + 76))
  {
    if (*(v64 + 76))
    {
      v93 = *(v64 + 42);
      *(v63 + 41) = *(v64 + 41);
      *(v63 + 42) = v93;

      v63[344] = v64[344];
      *(v63 + 44) = *(v64 + 44);

      v63[360] = v64[360];
      *(v63 + 23) = *(v64 + 23);
      v63[384] = v64[384];
      v94 = v63 + 392;
      v95 = v64 + 392;
      v96 = *(v63 + 52);
      if (v96 != 1)
      {
        v97 = *(v64 + 52);
        if (v97 != 1)
        {
          if (v96)
          {
            v99 = v63 + 392;
            if (v97)
            {
              __swift_destroy_boxed_opaque_existential_1(v99);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v99);
            }
          }

          v100 = *(v64 + 408);
          *v94 = *v95;
          *(v63 + 408) = v100;
          *(v63 + 53) = *(v64 + 53);
          *(v63 + 54) = *(v64 + 54);

LABEL_69:
          *(v63 + 55) = *(v64 + 55);
          v63[448] = v64[448];
          v101 = v63 + 456;
          v102 = v64 + 456;
          if (*(v63 + 71) != 1)
          {
            v103 = *(v64 + 71);
            if (v103 != 1)
            {
              *v101 = *v102;
              v63[464] = v64[464];
              *(v63 + 59) = *(v64 + 59);
              v63[480] = v64[480];
              *(v63 + 481) = *(v64 + 481);
              v63[483] = v64[483];
              v63[484] = v64[484];
              *(v63 + 61) = *(v64 + 61);
              v108 = *(v64 + 32);
              *(v63 + 31) = *(v64 + 31);
              *(v63 + 32) = v108;
              *(v63 + 66) = *(v64 + 66);
              v63[536] = v64[536];
              v63[537] = v64[537];
              *(v63 + 34) = *(v64 + 34);
              v63[560] = v64[560];
              *(v63 + 71) = v103;

              *(v63 + 36) = *(v64 + 36);
              *(v63 + 74) = *(v64 + 74);
              v63[600] = v64[600];
              goto LABEL_74;
            }

            outlined destroy of AccessibilityTextLayoutProperties((v63 + 456));
          }

          v104 = *(v64 + 568);
          *(v63 + 552) = *(v64 + 552);
          *(v63 + 568) = v104;
          *(v63 + 584) = *(v64 + 584);
          v63[600] = v64[600];
          v105 = *(v64 + 504);
          *(v63 + 488) = *(v64 + 488);
          *(v63 + 504) = v105;
          v106 = *(v64 + 536);
          *(v63 + 520) = *(v64 + 520);
          *(v63 + 536) = v106;
          v107 = *(v64 + 472);
          *v101 = *v102;
          *(v63 + 472) = v107;
LABEL_74:
          *(v63 + 76) = *(v64 + 76);

          *(v63 + 77) = *(v64 + 77);
          v63[624] = v64[624];
          return a1;
        }

        outlined destroy of AccessibilityValueStorage((v63 + 392));
      }

      v98 = *(v64 + 408);
      *v94 = *v95;
      *(v63 + 408) = v98;
      *(v63 + 424) = *(v64 + 424);
      goto LABEL_69;
    }

    outlined destroy of PlatformItem.AccessibilityContent((v63 + 328));
  }

  memcpy(v63 + 328, v64 + 328, 0x129uLL);
  return a1;
}

void type metadata completion function for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(319, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>> and conformance PlatformItemsReader<A, B, C>()
{
  result = lazy protocol witness table cache variable for type PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>> and conformance PlatformItemsReader<A, B, C>;
  if (!lazy protocol witness table cache variable for type PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>> and conformance PlatformItemsReader<A, B, C>)
  {
    type metadata accessor for PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697F778], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>> and conformance PlatformItemsReader<A, B, C>);
  }

  return result;
}

void type metadata accessor for PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>>)
  {
    type metadata accessor for PlatformItemListTextFieldStyle.PlatformItemListWriter(255);
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(255, &lazy cache variable for type metadata for _ConditionalContent<Text, _TextFieldStyleLabel>, MEMORY[0x1E6981148], &type metadata for _TextFieldStyleLabel, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>();
    v1 = type metadata accessor for PlatformItemsReader();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems and conformance PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems()
{
  result = lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems and conformance PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems;
  if (!lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems and conformance PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems, &unk_1EFFC1F80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems and conformance PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems);
  }

  return result;
}

uint64_t outlined destroy of TextField<_TextFieldStyleLabel>(uint64_t a1)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of TextField<_TextFieldStyleLabel>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems(uint64_t a1)
{
}

uint64_t initializeWithCopy for PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

double View.submitLabel(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void EnvironmentValues.submitLabel.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.submitLabel : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.submitLabel : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double View.returnKey(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SubmitLabel>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SubmitLabel>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SubmitLabel>);
    }
  }
}

uint64_t getEnumTagSinglePayload for SubmitLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubmitLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubmitLabel.Role and conformance SubmitLabel.Role()
{
  result = lazy protocol witness table cache variable for type SubmitLabel.Role and conformance SubmitLabel.Role;
  if (!lazy protocol witness table cache variable for type SubmitLabel.Role and conformance SubmitLabel.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubmitLabel.Role, &type metadata for SubmitLabel.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitLabel.Role and conformance SubmitLabel.Role);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type AnimatedValueKeyframeInterpolation.Storage and conformance AnimatedValueKeyframeInterpolation.Storage()
{
  result = lazy protocol witness table cache variable for type AnimatedValueKeyframeInterpolation.Storage and conformance AnimatedValueKeyframeInterpolation.Storage;
  if (!lazy protocol witness table cache variable for type AnimatedValueKeyframeInterpolation.Storage and conformance AnimatedValueKeyframeInterpolation.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueKeyframeInterpolation.Storage, &type metadata for AnimatedValueKeyframeInterpolation.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedValueKeyframeInterpolation.Storage and conformance AnimatedValueKeyframeInterpolation.Storage);
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance NavigationTransitionKey(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  outlined init with copy of _NavigationTransitionOutputs?(a1, v6);
  if (v6[4] != 1)
  {
    return _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(v6, type metadata accessor for _NavigationTransitionOutputs?);
  }

  _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(a1, type metadata accessor for _NavigationTransitionOutputs?);
  v4 = _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(v6, type metadata accessor for _NavigationTransitionOutputs?);
  return a2(v4);
}

double AutomaticNavigationTransition._outputs(for:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double View.tabBarMinimizeBehavior(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void EnvironmentValues.tabBarMinimizeBehavior.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.tabBarMinimizeBehavior : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.tabBarMinimizeBehavior : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

Swift::Int TabBarMinimizeBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TabBarMinimizeBehavior and conformance TabBarMinimizeBehavior()
{
  result = lazy protocol witness table cache variable for type TabBarMinimizeBehavior and conformance TabBarMinimizeBehavior;
  if (!lazy protocol witness table cache variable for type TabBarMinimizeBehavior and conformance TabBarMinimizeBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabBarMinimizeBehavior, &type metadata for TabBarMinimizeBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarMinimizeBehavior and conformance TabBarMinimizeBehavior);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TabBarMinimizeBehavior.Behavior and conformance TabBarMinimizeBehavior.Behavior()
{
  result = lazy protocol witness table cache variable for type TabBarMinimizeBehavior.Behavior and conformance TabBarMinimizeBehavior.Behavior;
  if (!lazy protocol witness table cache variable for type TabBarMinimizeBehavior.Behavior and conformance TabBarMinimizeBehavior.Behavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabBarMinimizeBehavior.Behavior, &type metadata for TabBarMinimizeBehavior.Behavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarMinimizeBehavior.Behavior and conformance TabBarMinimizeBehavior.Behavior);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _ViewInputs.requestedDividerRepresentation.getter()
{
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();

  PropertyList.subscript.getter();

  return v1;
}

unint64_t Divider.Child.value.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result == 2 && (*MEMORY[0x1E698D3F8] == HIDWORD(result) || (v2 = a2, type metadata accessor for Axis?(), Value = AGGraphGetValue(), a2 = v2, result = *Value, result == 2)))
  {
    v4 = 0;
  }

  else
  {
    v4 = result ^ 1;
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t _GraphInputs.requestedDividerRepresentation.getter()
{
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t (*_ViewInputs.requestedDividerRepresentation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.getter();
  *v4 = v4[1];
  return _ViewInputs.requestedDividerRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedDividerRepresentation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.getter();
  *v4 = v4[1];
  return _GraphInputs.requestedDividerRepresentation.modify;
}

void _ViewInputs.requestedDividerRepresentation.modify(_OWORD **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  PropertyList.subscript.setter();

  free(v1);
}

uint64_t getEnumTagSinglePayload for Divider.Child(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

void type metadata accessor for Axis?()
{
  if (!lazy cache variable for type metadata for Axis?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Axis?);
    }
  }
}

uint64_t DragAndDropBridge.outermostDropResponder()()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 24))(ObjectType, v3);
    v6 = swift_unknownObjectRelease();
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      dispatch thunk of ResponderNode.visit(applying:)();

      return 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void UIDropSession.itemProviders(for:)(uint64_t a1)
{
  v4 = [v1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v8 = 0;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v18 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x18D00E9C0](v8, v5);
      }

      else
      {
        if (v8 >= *(v9 + 16))
        {
          goto LABEL_27;
        }

        v10 = *(v5 + 8 * v8 + 32);
      }

      v2 = v10;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v19 = v10;
      if (closure #1 in UIDropSession.itemProviders(for:)(&v19, a1))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v20;
        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_16:

  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_30:

    return;
  }

  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_19:
  v20 = v7;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v13 < 0)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x18D00E9C0](v14, v12);
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 itemProvider];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v13 != v14);
  }
}

id closure #1 in closure #1 in DragAndDropBridge.dragItems(_:_:)(void (*a1)(void **__return_ptr))
{
  a1(&v5);
  v1 = v5;
  if (!v5)
  {
    return 0;
  }

  v2 = v6;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC998]) initWithView:v5 parameters:v6];

  return v3;
}

id thunk for @escaping @callee_guaranteed () -> (@owned UIDragPreview?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void closure #1 in DragAndDropBridge.itemsInListForSession(_:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v7[5] = a1;
  type metadata accessor for ResponderNode();
  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DragPayloadProvider, &protocol descriptor for DragPayloadProvider, 1);

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = a1;

    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

void closure #1 in DragAndDropBridge.updateSpringLoadedInteraction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder];
    if (v5)
    {
      v6 = *(v5 + 224);

      v6(v7);
    }

    else
    {
    }
  }
}

void closure #2 in DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(**v4 + 96);

      v7 = v5(v6);
      if (v7)
      {
        v9 = v7;
        v10 = v8;
        v11 = v2;
        v7(&v11);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v9, v10);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }
}

double thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double closure #1 in DragAndDropBridge.dragInteraction(_:item:willAnimateCancelWith:)(uint64_t a1, id a2, double result)
{
  if (!a1)
  {
    v14 = v3;
    v15 = v4;
    if ([a2 localObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      type metadata accessor for DragSourceContext();
      if (swift_dynamicCast())
      {

        v5 = DragPayload.resolve()();

        v6 = *(*v5 + 120);

        v8 = v6(v7);
        v10 = v9;

        if (v8)
        {
          v8(1);

          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v8, v10);
        }

        else
        {
        }
      }
    }

    else
    {
      _sypSgWOhTm_2(v13, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    }
  }

  return result;
}

void closure #1 in DragAndDropBridge.outermostDropResponder()(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = *a1;
  v7 = type metadata accessor for DragDropDefaultPreviewResponder(0);
  v8 = dynamic_cast_existential_1_superclass_conditional(a1, v6, v7, &protocol descriptor for DropPayloadProvider);
  if (v8)
  {
    *a2 = v8;
    a2[1] = v9;

    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
}

void @objc DragAndDropBridge.dropInteraction(_:sessionDidEnter:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;

  swift_unknownObjectRelease();
}

double closure #1 in DragAndDropBridge.dropInteraction(_:item:willAnimateDropWith:)(uint64_t a1, uint64_t a2, void *a3, double result)
{
  if (a1)
  {
    return v12;
  }

  v26 = v4;
  v27 = v5;
  v7 = (a2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop);
  swift_beginAccess();
  if (*v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7[1] == 1;
  }

  if (!v8)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v7[1] + 8))(v19, *Strong);
      if (v19[3])
      {
        type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate, 1);
        type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate_Private, &protocol descriptor for DropDelegate_Private, 1);
        if (swift_dynamicCast())
        {
          if (*(&v21 + 1))
          {
            outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v20, &v23);
            v10 = *(&v24 + 1);
            v11 = v25;
            __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
            (*(v11 + 16))(v10, v11);

            __swift_destroy_boxed_opaque_existential_1(&v23);
            goto LABEL_15;
          }
        }

        else
        {
          v22 = 0;
          v20 = 0u;
          v21 = 0u;
        }
      }

      else
      {

        outlined destroy of DragPayloadProvider?(v19, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
        v20 = 0u;
        v21 = 0u;
        v22 = 0;
      }

      outlined destroy of DragPayloadProvider?(&v20, &lazy cache variable for type metadata for DropDelegate_Private?, &lazy cache variable for type metadata for DropDelegate_Private, &protocol descriptor for DropDelegate_Private);
    }
  }

LABEL_15:
  if ([a3 localObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v23 = v20;
  v24 = v21;
  if (*(&v21 + 1))
  {
    type metadata accessor for DragSourceContext();
    if (swift_dynamicCast())
    {

      v13 = DragPayload.resolve()();

      v14 = *(*v13 + 120);

      v16 = v14(v15);
      v18 = v17;

      if (v16)
      {
        v16(0);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16, v18);
      }

      else
      {
      }
    }
  }

  else
  {
    _sypSgWOhTm_2(&v23, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  }

  return v12;
}

void @objc DragAndDropBridge.dragInteraction(_:sessionWillBegin:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

id @objc DragAndDropBridge.dragInteraction(_:previewForCancelling:withDefault:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id, id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  v14 = a6(v11, v12);

  return v14;
}

uint64_t DragAndDropBridge.springLoadedResponder(from:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 window];
  [a1 locationInView_];

  MEMORY[0x18D00ABE0]();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = *(v3 + 8);
  v10 = swift_getObjectType();
  v11 = (*(v9 + 24))(v10, v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_11:
    static Update.end()();
    goto LABEL_12;
  }

  type metadata accessor for ViewResponder();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_11;
  }

  v12 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();

  static Update.end()();
  if (!v12)
  {
LABEL_12:

    return 0;
  }

  type metadata accessor for SpringLoadedViewResponder(0);
  ResponderNode.firstAncestor<A>(ofType:)();

  result = v13;
  if (v13 && (*(v13 + 216) & 1) == 0)
  {

    return 0;
  }

  return result;
}

uint64_t DragAndDropBridge.__ivar_destroyer()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host);

  _sypSgWOhTm_2(v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionBegan), *(v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionBegan + 8));
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded + 8);

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1, v2);
}

void DragAndDropBridge.SpringLoadedEffect.interaction(_:didChangeWith:)(void *a1, id a2)
{
  v4 = [a2 state];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        LOBYTE(v18[0]) = 1;
        specialized DragAndDropBridge.SpringLoadedEffect.updateHighlightState(_:interaction:)(v18);
      }

      return;
    }

    goto LABEL_7;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      return;
    }

LABEL_7:
    LOBYTE(v18[0]) = 0;
    specialized DragAndDropBridge.SpringLoadedEffect.updateHighlightState(_:interaction:)(v18);
    v5 = OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_blinkTimer;
    v6 = *(v2 + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_blinkTimer);
    if (v6)
    {
      [v6 invalidate];
      v7 = *(v2 + v5);
      *(v2 + v5) = 0;
    }

    return;
  }

  v8 = OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_blinkTimer;
  if (!*(v2 + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_blinkTimer))
  {
    LOBYTE(v18[0]) = 1;
    specialized DragAndDropBridge.SpringLoadedEffect.updateHighlightState(_:interaction:)(v18);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    v18[4] = partial apply for closure #1 in DragAndDropBridge.SpringLoadedEffect.interaction(_:didChangeWith:);
    v18[5] = v10;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v18[3] = &block_descriptor_30;
    v11 = _Block_copy(v18);
    v12 = objc_opt_self();

    v13 = a1;
    v14 = [v12 timerWithTimeInterval:1 repeats:v11 block:0.1];
    _Block_release(v11);

    v15 = *(v2 + v8);
    *(v2 + v8) = v14;
    v16 = v14;

    v17 = [objc_opt_self() mainRunLoop];
    [v17 addTimer:v16 forMode:*MEMORY[0x1E695DA28]];
  }
}

void closure #1 in DragAndDropBridge.SpringLoadedEffect.interaction(_:didChangeWith:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_previousHighlightState) == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = v5;
    specialized DragAndDropBridge.SpringLoadedEffect.updateHighlightState(_:interaction:)(&v6);
  }

  else
  {
    [a1 invalidate];
  }
}

Swift::Void __swiftcall DragAndDropBridge.SpringLoadedBehavior.interactionDidFinish(_:)(UISpringLoadedInteraction a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge20SpringLoadedBehavior_base);
  if ([v3 respondsToSelector_])
  {
    [v3 interactionDidFinish_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder;
    v6 = *&Strong[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder];
    if (v6)
    {
      v7 = *(v6 + 256);
      v9 = Strong;

      v7(v8);

      *&v9[v5] = 0;
    }

    else
    {
    }
  }
}

id AnyDragAndDropBridge.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double DragSourceContext.__deallocating_deinit()
{
  *(*(v0 + 24) + 176) = 0;

  swift_deallocClassInstance();
  return result;
}

double DropInfoTargetStore.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

double destroy for DropDestination(void *a1)
{
  swift_weakDestroy();
  if (a1[5])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 2);
  }

  return result;
}

uint64_t initializeWithCopy for DropDestination(uint64_t a1, uint64_t a2)
{
  *(swift_weakCopyInit() + 8) = *(a2 + 8);
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 48);
    *(a1 + 40) = v4;
    *(a1 + 48) = v5;
    (**(v4 - 8))(a1 + 16, a2 + 16);
  }

  else
  {
    v6 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v6;
    *(a1 + 48) = *(a2 + 48);
  }

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for DropDestination(uint64_t a1, uint64_t a2)
{
  v4 = swift_weakCopyAssign();
  *(v4 + 8) = *(a2 + 8);
  v5 = *(a2 + 40);
  if (!*(v4 + 40))
  {
    if (v5)
    {
      *(a1 + 40) = v5;
      *(a1 + 48) = *(a2 + 48);
      (**(v5 - 8))(a1 + 16, a2 + 16);
      goto LABEL_8;
    }

LABEL_7:
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
    goto LABEL_8;
  }

  v6 = (a1 + 16);
  if (!v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v6, (a2 + 16));
LABEL_8:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

__n128 initializeWithTake for DropDestination(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  result = *(a2 + 48);
  *(v3 + 48) = result;
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 72) = *(a2 + 72);
  return result;
}

uint64_t assignWithTake for DropDestination(uint64_t a1, uint64_t a2)
{
  v4 = swift_weakTakeAssign();
  *(v4 + 8) = *(a2 + 8);
  if (*(v4 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 16));
  }

  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t storeEnumTagSinglePayload for DropDestination(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DropInfoAdaptor.localDragContexts.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = [Strong localDragSession], swift_unknownObjectRelease(), !v1))
  {
    v6 = 0u;
    v7 = 0u;
LABEL_6:
    _sypSgWOhTm_2(&v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [v1 localContext];
  swift_unknownObjectRelease();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_6;
  }

  _sypSgMaTm_2(0, &lazy cache variable for type metadata for [Any], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if (swift_dynamicCast())
  {
    return v4;
  }

  return MEMORY[0x1E69E7CC0];
}

void DropInfoAdaptor.originContentPath.getter(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = 0uLL;
  if (!Strong)
  {
    LOBYTE(v10) = -1;
    v11 = 0uLL;
LABEL_21:
    *a1 = v3;
    *(a1 + 16) = v11;
    *(a1 + 32) = v10;
    return;
  }

  v4 = [Strong localDragSession];
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = [v4 items];
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_5;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (__CocoaSet.count.getter() != 1)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x18D00E9C0](0, v6);
LABEL_8:
    v8 = v7;

    v9 = [v8 localObject];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16 = v14;
    v17 = v15;
    if (*(&v15 + 1))
    {
      type metadata accessor for DragSourceContext();
      if (swift_dynamicCast())
      {

        UIViewSnapshotResponder.contentPath.getter(&v16);
        v12 = v16;
        v13 = v17;
        v10 = v18;

        if (v10 != 255)
        {
          v3 = v12;
          v11 = v13;
          goto LABEL_21;
        }

LABEL_20:
        v11 = 0uLL;
        v3 = 0uLL;
        goto LABEL_21;
      }
    }

    else
    {
      _sypSgWOhTm_2(&v16, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    }

LABEL_19:
    LOBYTE(v10) = -1;
    goto LABEL_20;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

Swift::Bool __swiftcall UIDropSession.hasItemsConforming(to:)(Swift::OpaquePointer to)
{
  v2 = v1;
  v27 = type metadata accessor for UTType();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(to._rawValue + 2);
  if (v7)
  {
    v23 = v1;
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v28;
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = to._rawValue + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v25 = *(v9 + 56);
    v26 = v10;
    v24 = (v9 - 8);
    do
    {
      v12 = v27;
      v13 = v9;
      v26(v6, v11, v27);
      v14 = UTType.identifier.getter();
      v16 = v15;
      (*v24)(v6, v12);
      v28 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v8 = v28;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v11 += v25;
      --v7;
      v9 = v13;
    }

    while (v7);
    v2 = v23;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v2 hasItemsConformingToTypeIdentifiers_];

  return v21;
}

uint64_t UIDropSession.registeredContentTypes()()
{
  v1 = type metadata accessor for UTType();
  v28 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v34 = MEMORY[0x1E69E7CD0];
  v8 = [v0 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    v29 = v9;
    v30 = v9 & 0xC000000000000001;
    v25 = v9 + 32;
    v26 = v9 & 0xFFFFFFFFFFFFFF8;
    v12 = (v28 + 8);
    v27 = i;
    while (v30)
    {
      v13 = MEMORY[0x18D00E9C0](v11, v9);
      v14 = __OFADD__(v11, 1);
      v15 = v11 + 1;
      if (v14)
      {
        goto LABEL_17;
      }

LABEL_12:
      v33 = v15;
      v16 = v13;
      v17 = [v13 itemProvider];
      v18 = [v17 registeredContentTypes];

      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = *(v19 + 16);
      if (v20)
      {
        v31 = v19;
        v32 = v16;
        v21 = v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v22 = *(v28 + 72);
        v23 = *(v28 + 16);
        do
        {
          v23(v3, v21, v1);
          specialized Set._Variant.insert(_:)(v7, v3);
          (*v12)(v7, v1);
          v21 += v22;
          --v20;
        }

        while (v20);

        v9 = v29;
        i = v27;
      }

      else
      {

        v9 = v29;
      }

      v11 = v33;
      if (v33 == i)
      {

        return v34;
      }
    }

    if (v11 >= *(v26 + 16))
    {
      goto LABEL_18;
    }

    v13 = *(v25 + 8 * v11);
    v14 = __OFADD__(v11, 1);
    v15 = v11 + 1;
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CD0];
}

BOOL closure #1 in UIDropSession.itemProviders(for:)(void **a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a2 + 16);
  do
  {
    v5 = v2;
    if (v4 == v2)
    {
      break;
    }

    type metadata accessor for UTType();
    ++v2;
    v6 = [v3 itemProvider];
    v7 = UTType.identifier.getter();
    v8 = MEMORY[0x18D00C850](v7);

    v9 = [v6 hasItemConformingToTypeIdentifier_];
  }

  while (!v9);
  return v4 != v5;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UISpringLoadedInteraction, @guaranteed UISpringLoadedInteractionContext) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

uint64_t specialized DragAndDropBridge.hitTestedResponder(session:)(void *a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(ObjectType, v5);
    swift_unknownObjectRelease();
    if (!v7)
    {
      return 0;
    }

    type metadata accessor for ViewResponder();
    if (!swift_dynamicCastClass())
    {
LABEL_9:

      return 0;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v3 + 8);
      v9 = swift_getObjectType();
      v10 = ViewGraphDelegate.uiView.getter(v9, *(*(v8 + 16) + 8));
      swift_unknownObjectRelease();
      if (v10)
      {
        v11 = [v10 window];
        if (v11)
        {
          v12 = v11;
          MEMORY[0x18D00ABE0]([a1 locationInView_]);
          v13 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();
          static Update.end()();

          return v13;
        }
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized DragAndDropBridge.dragItems(_:_:)(void *a1, uint64_t a2, __n128 a3)
{
  v5 = DragPayload.resolve()();
  if (((*(*v5 + 80))() & 1) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for DragSourceContext();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = v6;
  v27 = v8;
  *(v8 + 40) = v7;
  v9 = *(*v5 + 160);

  v11 = v9(v10);
  v12 = v11;
  if (!(v11 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  v30 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = v5;
    v15 = (*(*a1 + class metadata base offset for DragDropDefaultPreviewResponder + 64))(result);
    v16 = 0;
    v26 = v29;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x18D00E9C0](v16, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 preferredPresentationSize];
      if (v21 == 0.0 && v20 == 0.0)
      {
        (*(*a1 + class metadata base offset for DragDropDefaultPreviewResponder + 32))(v19);
        [v18 setPreferredPresentationSize_];
      }

      v22 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
      [v22 setLocalObject_];
      if (v15)
      {
        v23 = swift_allocObject();
        *(v23 + 16) = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in DragAndDropBridge.dragItems(_:_:);
        *(v23 + 24) = a1;
        v29[2] = partial apply for closure #1 in closure #1 in DragAndDropBridge.dragItems(_:_:);
        v29[3] = v23;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v29[0] = thunk for @escaping @callee_guaranteed () -> (@owned UIDragPreview?);
        v29[1] = &block_descriptor_46;
        v24 = _Block_copy(aBlock);
        swift_retain_n();

        [v22 setPreviewProvider_];

        _Block_release(v24);
      }

      else
      {
      }

      ++v16;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v13 != v16);

    return v30;
  }

  return result;
}

uint64_t specialized DragAndDropBridge.itemsInListForSession(_:)()
{
  v8 = 0;
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 24))(ObjectType, v3);
    v6 = swift_unknownObjectRelease();
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    v7 = MEMORY[0x1E69E7CC0];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized static UIDropProposal.fromActiveDrop(_:session:responder:host:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  if (*a1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 8) == 1;
  }

  if (v10 || (Strong = swift_weakLoadStrong()) == 0)
  {
    if (!a3)
    {
      goto LABEL_62;
    }

    goto LABEL_14;
  }

  v12 = Strong;
  swift_unknownObjectRelease();
  if (!a3)
  {
    v26 = 1;
    goto LABEL_15;
  }

  if (v12 != a3)
  {
LABEL_14:
    v26 = 0;
LABEL_15:
    if (*a1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(a1 + 8) == 1;
    }

    if (!v27)
    {
      v28 = swift_weakLoadStrong();
      if (v28)
      {
        v29 = v28;
        v30 = *(a1 + 8);
        v31 = *v28;
        *&v114 = v28;
        (*(v30 + 8))(&v123, v31);
        if (v125)
        {
          v106 = a4;
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v123, v138);
          v136 = &type metadata for DropInfoAdaptor;
          v137 = &protocol witness table for DropInfoAdaptor;
          v105 = swift_allocObject();
          *&v135 = v105;
          swift_unknownObjectWeakInit();
          *(&v123 + 1) = 0;
          swift_unknownObjectWeakAssign();

          [a2 locationInView_];
          v121 = v32;
          v122 = v33;
          v34 = MEMORY[0x1E697DF20];
          v35 = MEMORY[0x1E697DF18];
          type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18]);
          lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, v34, v35);
          if (static SemanticFeature.isEnabled.getter())
          {
            hostingViewCoordinateSpace.getter();
            v112[0] = v108;
            v113 = 1;
            v36 = *(*v29 + class metadata base offset for UIViewSnapshotResponder + 80);

            v36(&v114, v37);

            v109 = v114;
            v110 = v115;
            v111 = v116;
            type metadata accessor for CGPoint(0);
            ApplyViewTransform.convert(from:transform:)();

            outlined destroy of CoordinateSpace(v112);
          }

          v38 = v121;
          v39 = v122;
          v133 = v121;
          v134 = v122;
          swift_unknownObjectRetain();
          v40 = a5;
          if ([a2 localDragSession])
          {
            swift_unknownObjectRelease();
            v41 = [a2 items];
          }

          else
          {
            v41 = [a2 items];
          }

          v77 = v41;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
          v78 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v78 >> 62)
          {
            v79 = __CocoaSet.count.getter();
          }

          else
          {
            v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if ([swift_unknownObjectRetain() localDragSession])
          {
            swift_unknownObjectRelease();
            v80 = &selRef_allowsMoveOperation;
            v81 = 3;
          }

          else
          {
            v80 = &selRef_isRestrictedToDraggingApplication;
            v81 = 4;
          }

          v82 = [a2 *v80];
          swift_unknownObjectRelease();
          if (v82)
          {
            v83 = v81;
          }

          else
          {
            v83 = 1;
          }

          [v40 bounds];
          v85 = v84;
          v87 = v86;

          swift_unknownObjectRelease();

          v124 = a2;
          LOBYTE(v125) = 6;
          v126 = v104;
          v127 = v79;
          v128 = v83;
          v129 = v85;
          v130 = v87;
          v131 = v38;
          v132 = v39;
          outlined init with take of DropInfoAdaptor(&v123, v105 + 16);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v135, &v114);
          v88 = v139;
          v89 = v140;
          __swift_project_boxed_opaque_existential_1(v138, v139);
          (*(v89 + 40))(&v114, v88, v89);

          outlined destroy of DropInfo(&v114);
          __swift_destroy_boxed_opaque_existential_1(v138);
          a4 = v106;
          if (v26)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        outlined destroy of DragPayloadProvider?(&v123, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
      }
    }

    if ((v26 & 1) == 0)
    {
LABEL_28:
      v42 = *a3;
      *&v114 = a3;
      v43 = *(a4 + 8);

      v43(&v123, v42, a4);
      if (v125)
      {
        v107 = a4;
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v123, v138);
        v136 = &type metadata for DropInfoAdaptor;
        v137 = &protocol witness table for DropInfoAdaptor;
        v44 = swift_allocObject();
        *&v135 = v44;
        swift_unknownObjectWeakInit();
        *(&v123 + 1) = 0;
        swift_unknownObjectWeakAssign();

        [a2 locationInView_];
        v121 = v45;
        v122 = v46;
        v47 = MEMORY[0x1E697DF20];
        v48 = MEMORY[0x1E697DF18];
        type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18]);
        lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, v47, v48);
        if (static SemanticFeature.isEnabled.getter())
        {
          hostingViewCoordinateSpace.getter();
          v113 = 1;
          v49 = *(*a3 + class metadata base offset for UIViewSnapshotResponder + 80);

          v49(&v114, v50);

          v109 = v114;
          v110 = v115;
          v111 = v116;
          type metadata accessor for CGPoint(0);
          ApplyViewTransform.convert(from:transform:)();

          outlined destroy of CoordinateSpace(v112);
        }

        v51 = v121;
        v52 = v122;
        v133 = v121;
        v134 = v122;
        swift_unknownObjectRetain();
        v53 = a5;
        if ([a2 localDragSession])
        {
          swift_unknownObjectRelease();
          v54 = 0;
        }

        else
        {
          v54 = 1;
        }

        v55 = [a2 items];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
        v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v56 >> 62)
        {
          v57 = __CocoaSet.count.getter();
        }

        else
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if ([swift_unknownObjectRetain() localDragSession])
        {
          swift_unknownObjectRelease();
          v58 = &selRef_allowsMoveOperation;
          v59 = 3;
        }

        else
        {
          v58 = &selRef_isRestrictedToDraggingApplication;
          v59 = 4;
        }

        v60 = [a2 *v58];
        swift_unknownObjectRelease();
        if (v60)
        {
          v61 = v59;
        }

        else
        {
          v61 = 1;
        }

        [v53 bounds];
        v63 = v62;
        v65 = v64;

        swift_unknownObjectRelease();

        v124 = a2;
        LOBYTE(v125) = 6;
        v126 = v54;
        v127 = v57;
        v128 = v61;
        v129 = v63;
        v130 = v65;
        v131 = v51;
        v132 = v52;
        outlined init with take of DropInfoAdaptor(&v123, v44 + 16);
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v135, &v109);
        v66 = v139;
        v67 = v140;
        __swift_project_boxed_opaque_existential_1(v138, v139);
        if ((*(v67 + 8))(&v109, v66, v67))
        {
          v68 = v139;
          v69 = v140;
          __swift_project_boxed_opaque_existential_1(v138, v139);
          (*(v69 + 24))(&v109, v68, v69);
          v70 = v139;
          v71 = v140;
          __swift_project_boxed_opaque_existential_1(v138, v139);
          (*(v71 + 32))(&v114, &v109, v70, v71);
          if (v114 == 6)
          {
            v72 = 2;
            v73 = v107;
          }

          else
          {
            v72 = 0;
            v73 = v107;
            if (v114 > 2u)
            {
              if (v114 == 3)
              {
                v72 = 3;
              }

              else if (v114 != 4)
              {
                goto LABEL_99;
              }
            }

            else if (v114)
            {
              if (v114 == 1)
              {
                v72 = 1;
              }

              else
              {
                v72 = 2;
              }
            }
          }

          v117 = 0;
          v116 = 0u;
          v115 = 0u;
          *(&v114 + 1) = v73;
          swift_weakInit();
          v118 = v72;
          type metadata accessor for DropInfoTargetStore();
          v74 = swift_allocObject();
          v75 = MEMORY[0x1E69E7CC0];
          *(v74 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So7CGPointVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So17CGAffineTransformVTt0g5Tf4g_n(v75);

          outlined destroy of DropInfo(&v109);
          *(v74 + 24) = v76;
          v119 = v74;
          v120 = 0;
          outlined assign with take of DropDestination?(&v114, a1);
        }

        else
        {
          outlined destroy of DropInfo(&v109);

          _sypSgWOhTm_2(a1, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
          *a1 = xmmword_18CD633F0;
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *(a1 + 48) = 0u;
          *(a1 + 57) = 0u;
          v72 = 1;
        }

LABEL_92:
        __swift_destroy_boxed_opaque_existential_1(v138);
        return [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
      }

      goto LABEL_33;
    }

LABEL_62:
    _sypSgWOhTm_2(a1, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
    v72 = 0;
    *a1 = xmmword_18CD633F0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 57) = 0u;
    return [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
  }

  v13 = *a3;
  *&v114 = a3;
  v14 = *(a4 + 8);

  v14(&v123, v13, a4);
  if (!v125)
  {
LABEL_33:
    outlined destroy of DragPayloadProvider?(&v123, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);

    goto LABEL_62;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v123, v138);
  v136 = &type metadata for DropInfoAdaptor;
  v137 = &protocol witness table for DropInfoAdaptor;
  v15 = swift_allocObject();
  *&v135 = v15;
  swift_unknownObjectWeakInit();
  *(&v123 + 1) = 0;
  swift_unknownObjectWeakAssign();

  [a2 locationInView_];
  v121 = v16;
  v122 = v17;
  v18 = MEMORY[0x1E697DF20];
  v19 = MEMORY[0x1E697DF18];
  type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, v18, v19);
  if (static SemanticFeature.isEnabled.getter())
  {
    hostingViewCoordinateSpace.getter();
    v113 = 1;
    v20 = *(*a3 + class metadata base offset for UIViewSnapshotResponder + 80);

    v20(&v114, v21);

    v109 = v114;
    v110 = v115;
    v111 = v116;
    type metadata accessor for CGPoint(0);
    ApplyViewTransform.convert(from:transform:)();

    outlined destroy of CoordinateSpace(v112);
  }

  v22 = v121;
  v23 = v122;
  v133 = v121;
  v134 = v122;
  swift_unknownObjectRetain();
  v24 = a5;
  if ([a2 localDragSession])
  {
    swift_unknownObjectRelease();
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v90 = [a2 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v91 >> 62)
  {
    v92 = __CocoaSet.count.getter();
  }

  else
  {
    v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ([swift_unknownObjectRetain() localDragSession])
  {
    swift_unknownObjectRelease();
    v93 = &selRef_allowsMoveOperation;
    v94 = 3;
  }

  else
  {
    v93 = &selRef_isRestrictedToDraggingApplication;
    v94 = 4;
  }

  v95 = [a2 *v93];
  swift_unknownObjectRelease();
  if (v95)
  {
    v96 = v94;
  }

  else
  {
    v96 = 1;
  }

  [v24 bounds];
  v98 = v97;
  v100 = v99;

  swift_unknownObjectRelease();

  v124 = a2;
  LOBYTE(v125) = 6;
  v126 = v25;
  v127 = v92;
  v128 = v96;
  v129 = v98;
  v130 = v100;
  v131 = v22;
  v132 = v23;
  outlined init with take of DropInfoAdaptor(&v123, v15 + 16);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v135, &v114);
  v101 = v139;
  v102 = v140;
  __swift_project_boxed_opaque_existential_1(v138, v139);
  (*(v102 + 32))(&v109, &v114, v101, v102);
  if (v109 == 6)
  {
    if (*a1 || *(a1 + 8) != 1)
    {
      outlined destroy of DropInfo(&v114);

      v72 = *(a1 + 56);
      goto LABEL_92;
    }

    __break(1u);
    goto LABEL_98;
  }

  v72 = 0;
  if (v109 <= 2u)
  {
    if (v109)
    {
      if (v109 == 1)
      {
        v72 = 1;
      }

      else
      {
        v72 = 2;
      }
    }

LABEL_89:
    if (*a1 || *(a1 + 8) != 1)
    {
      outlined destroy of DropInfo(&v114);

      *(a1 + 56) = v72;
      goto LABEL_92;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v109 == 3)
  {
    v72 = 3;
    goto LABEL_89;
  }

  if (v109 == 4)
  {
    goto LABEL_89;
  }

LABEL_99:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t specialized DragAndDropBridge.dragInteraction(_:itemsForBeginning:)(void *a1)
{
  swift_getObjectType();
  if (!specialized DragAndDropBridge.hitTestedResponder(session:)(a1, v1))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_6;
  }

  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DragPayloadProvider, &protocol descriptor for DragPayloadProvider, 1);
  ResponderNode.firstAncestor<A>(ofType:)();

  if (!*(&v11 + 1))
  {
LABEL_6:
    outlined destroy of DragPayloadProvider?(&v10, &lazy cache variable for type metadata for DragPayloadProvider?, &lazy cache variable for type metadata for DragPayloadProvider, &protocol descriptor for DragPayloadProvider);
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v10, v13);
  outlined init with copy of _Benchmark(v13, &v10);
  type metadata accessor for DragDropDefaultPreviewResponder(0);
  if (swift_dynamicCast())
  {
    v3 = v14;
    v4 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v5 = (*(v4 + 8))(v3, v4);
    v7 = specialized DragAndDropBridge.dragItems(_:_:)(v9, v5, v6);

    __swift_destroy_boxed_opaque_existential_1(v13);
    return v7;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized DragAndDropBridge.dragInteraction(_:itemsForAddingTo:withTouchAt:)(void *a1, double a2, double a3)
{
  v7 = v3 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  Strong = swift_unknownObjectWeakLoadStrong();
  result = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v13 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v11 + 16) + 8));
    if (!v13)
    {
      goto LABEL_63;
    }

    v14 = v13;
    v15 = [v13 window];
    if (!v15)
    {
      swift_unknownObjectRelease();

      return MEMORY[0x1E69E7CC0];
    }

    v16 = v15;
    MEMORY[0x18D00ABE0]([v15 convertPoint:v14 fromCoordinateSpace:{a2, a3}]);
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = *(v7 + 8);
    v18 = swift_getObjectType();
    v19 = (*(v17 + 24))(v18, v17);
    swift_unknownObjectRelease();
    if (v19)
    {
      type metadata accessor for ViewResponder();
      if (swift_dynamicCastClass())
      {
        v20 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();

        static Update.end()();
        if (v20)
        {
          type metadata accessor for DragDropDefaultPreviewResponder(0);
          ResponderNode.firstAncestor<A>(ofType:)();

          v21 = v52;
          if (v52)
          {
            *&v49 = v52;
            type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DragPayloadProvider, &protocol descriptor for DragPayloadProvider, 1);

            if ((swift_dynamicCast() & 1) == 0)
            {
              swift_unknownObjectRelease();

              v54 = 0;
              v52 = 0u;
              v53 = 0u;
              outlined destroy of DragPayloadProvider?(&v52, &lazy cache variable for type metadata for DragPayloadProvider?, &lazy cache variable for type metadata for DragPayloadProvider, &protocol descriptor for DragPayloadProvider);
              return MEMORY[0x1E69E7CC0];
            }

            v22 = *(&v53 + 1);
            v23 = v54;
            __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
            v24 = (*(v23 + 8))(v22, v23);
            __swift_destroy_boxed_opaque_existential_1(&v52);
            if (*(v24 + 24) == 1)
            {
              swift_unknownObjectRelease();

              return MEMORY[0x1E69E7CC0];
            }

            v43 = v24;
            v44 = *(v24 + 16);
            v25 = [a1 items];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
            v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v27 = v26;
            if (v26 >> 62)
            {
LABEL_42:
              v33 = v27;
              v47 = v27 & 0xFFFFFFFFFFFFFF8;
              v28 = __CocoaSet.count.getter();
              v27 = v33;
              if (v28)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v47 = v26 & 0xFFFFFFFFFFFFFF8;
              v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v28)
              {
LABEL_19:
                v29 = 0;
                v45 = v27 & 0xC000000000000001;
                v30 = MEMORY[0x1E69E7CC0];
                v42 = v21;
                while (1)
                {
                  v21 = v29;
                  while (1)
                  {
                    if (v45)
                    {
                      v31 = v27;
                      v27 = MEMORY[0x18D00E9C0](v21);
                    }

                    else
                    {
                      if (v21 >= *(v47 + 16))
                      {
                        goto LABEL_41;
                      }

                      v31 = v27;
                      v27 = *(v27 + 8 * v21 + 32);
                    }

                    v32 = v27;
                    v29 = (v21 + 1);
                    if (__OFADD__(v21, 1))
                    {
                      __break(1u);
LABEL_41:
                      __break(1u);
                      goto LABEL_42;
                    }

                    if ([v27 localObject])
                    {
                      _bridgeAnyObjectToAny(_:)();
                      swift_unknownObjectRelease();
                    }

                    else
                    {

                      v49 = 0u;
                      v50 = 0u;
                    }

                    v52 = v49;
                    v53 = v50;
                    if (*(&v50 + 1))
                    {
                      break;
                    }

                    _sypSgWOhTm_2(&v52, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
LABEL_22:
                    ++v21;
                    v27 = v31;
                    if (v29 == v28)
                    {
                      v21 = v42;
                      goto LABEL_44;
                    }
                  }

                  type metadata accessor for DragSourceContext();
                  if ((swift_dynamicCast() & 1) == 0 || !v51)
                  {
                    goto LABEL_22;
                  }

                  MEMORY[0x18D00CC30]();
                  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v30 = v10;
                  v21 = v42;
                  v27 = v31;
                  if (v29 == v28)
                  {
                    goto LABEL_44;
                  }
                }
              }
            }

            v30 = MEMORY[0x1E69E7CC0];
LABEL_44:

            if (v30 >> 62)
            {
LABEL_67:
              v46 = v30 & 0xFFFFFFFFFFFFFF8;
              v48 = __CocoaSet.count.getter();
            }

            else
            {
              v46 = v30 & 0xFFFFFFFFFFFFFF8;
              v48 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v34 = 0;
            while (1)
            {
              if (v48 == v34)
              {
                goto LABEL_58;
              }

              if ((v30 & 0xC000000000000001) != 0)
              {
                v35 = MEMORY[0x18D00E9C0](v34, v30);
                if (__OFADD__(v34, 1))
                {
LABEL_57:
                  __break(1u);
LABEL_58:

                  v41 = specialized DragAndDropBridge.dragItems(_:_:)(v21, v43, v40);
                  swift_unknownObjectRelease();

                  return v41;
                }
              }

              else
              {
                if (v34 >= *(v46 + 16))
                {
                  __break(1u);
                  goto LABEL_67;
                }

                v35 = *(v30 + 8 * v34 + 32);

                if (__OFADD__(v34, 1))
                {
                  goto LABEL_57;
                }
              }

              if (*(v35 + 16) == v21)
              {
                break;
              }

              v36 = v21;
              v37 = *(v35 + 32);
              v38 = *(v35 + 40);

              if (v38 == 1)
              {

                goto LABEL_62;
              }

              ++v34;
              v39 = v37 == v44;
              v21 = v36;
              if (!v39)
              {

                goto LABEL_61;
              }
            }

LABEL_61:

LABEL_62:

LABEL_63:
            swift_unknownObjectRelease();
            return MEMORY[0x1E69E7CC0];
          }
        }

LABEL_15:

        swift_unknownObjectRelease();
        return MEMORY[0x1E69E7CC0];
      }
    }

    static Update.end()();
    goto LABEL_15;
  }

  return result;
}

id specialized DragAndDropBridge.dragInteraction(_:previewForLifting:session:)(void *a1)
{
  if ([a1 localObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
LABEL_12:
    _sypSgWOhTm_2(v13, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_14;
  }

  type metadata accessor for DragSourceContext();
  if (swift_dynamicCast())
  {
    v2 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v3 + 16) + 8));
      swift_unknownObjectRelease();
      if (!v5)
      {

        goto LABEL_14;
      }

      v6 = *(*(v10 + 16) + 312);

      v7 = DragDropDefaultPreviewResponder.previewParameters.getter();
      v8 = specialized UIViewSnapshotResponder.portalTargetedPreview<A>(kind:id:host:parameters:options:)(2, v6, v5, v7, 9);

      if (v8)
      {

        return v8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id specialized DragAndDropBridge.dragInteraction(_:previewForCancelling:withDefault:)(void *a1, id a2)
{
  if ([a1 localObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v80 = v91;
  v81 = v92;
  if (!*(&v92 + 1))
  {
    _sypSgWOhTm_2(&v80, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_18;
  }

  type metadata accessor for DragSourceContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v35 = a2;
    return a2;
  }

  v4 = v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v6 + 16) + 8));
    v9 = swift_unknownObjectRelease();
    if (v8)
    {
      v10 = *(v88.i64[0] + 16);
      if ((*(*v10 + class metadata base offset for DragDropDefaultPreviewResponder + 40))(v9))
      {
        v11 = *(v10 + 312);

        v12 = DragDropDefaultPreviewResponder.previewParameters.getter();
        v13 = [v8 window];
        if (v13 && (v13, AGSubgraphIsValid()) && (v14 = MEMORY[0x1E697DF50], v15 = MEMORY[0x1E697DF48], type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48]), lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, v14, v15), (static SemanticFeature.isEnabled.getter() & 1) != 0) && (v91.i8[0] = 17, static Update.dispatchImmediately<A>(reason:_:)(), v80.u8[0] == 1) && (v80.i32[0] = v11, (v16 = UIView.findPortal(kind:id:excludingGroups:)(2, &v80, 1)) != 0))
        {
          v18 = v17;
          v19 = v16;
          MEMORY[0x18D00ABE0]();
          AGGraphClearUpdate();
          v20 = *(v10 + 136);
          v82 = *(v10 + 120);
          v83 = v20;
          v84 = *(v10 + 152);
          v85 = *(v10 + 168);
          v21 = *(v10 + 104);
          v80 = *(v10 + 88);
          v81 = v21;
          _ViewInputs.position.getter();
          type metadata accessor for CGPoint(0);
          Value = AGGraphGetValue();
          v23 = *Value;
          v24 = Value[1];
          AGGraphSetUpdate();
          v25 = v23 - *(v10 + 240);
          v26 = v24 - *(v10 + 248);
          UIViewSnapshotResponder.contentPath.getter(v86);
          v27 = v87;
          if (v87 == 255)
          {
            v34 = 0uLL;
            v31 = 0.0;
            v33 = 0.0;
          }

          else
          {
            v88 = v86[0];
            v89 = v86[1];
            v90 = v87;
            Path.boundingRect.getter();
            v78 = v28;
            v79 = v29;
            v31 = v30;
            v33 = v32;
            _sypSgWOhTm_2(v86, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
            v34.i64[0] = v78;
            v34.i64[1] = v79;
          }

          v80 = v34;
          *&v81 = v31;
          *(&v81 + 1) = v33;
          LOBYTE(v82) = v27 == 255;
          v58 = v19;
          [v58 convertPoint:v8 toCoordinateSpace:{0.0, 0.0}];
          v60 = v59;
          v62 = v61;
          v63.f64[0] = v25;
          v64 = closure #1 in closure #1 in UIViewSnapshotResponder.portalPreviewTarget<A>(inHost:portalResult:options:preferredContainer:)(4, &v80, v10, v63, v26);
          v66 = v65;

          if (v18)
          {
            v67 = v60 - v64;
          }

          else
          {
            v67 = v64 - v60;
          }

          if (v18)
          {
            v68 = v62 - v66;
          }

          else
          {
            v68 = v66 - v62;
          }

          if (v27 == 255)
          {
            [v58 bounds];
            v31 = v69;
            v33 = v70;
          }

          v96.origin.x = v67;
          v96.origin.y = v68;
          v96.size.width = v31;
          v96.size.height = v33;
          v97 = CGRectOffset(v96, v25, v26);
          v91.i64[0] = *&v97.origin.x;
          v91.i64[1] = *&v97.origin.y;
          *&v92 = v97.size.width;
          *(&v92 + 1) = *&v97.size.height;
          v93 = 0;
          v71 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v91, v8, 4, 0);
          v73 = v72;
          v75 = [objc_allocWithZone(MEMORY[0x1E69DCE38]) initWithContainer:v72 center:{v71, v74}];

          static Update.end()();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITargetedDragPreview, 0x1E69DD068);
          v76 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v77 = v58;
          a2 = [v76 initWithView:v77 parameters:v12 target:v75];
        }

        else
        {

          MEMORY[0x18D00ABE0]();
          AGGraphClearUpdate();
          v36 = *(v10 + 136);
          v82 = *(v10 + 120);
          v83 = v36;
          v84 = *(v10 + 152);
          v85 = *(v10 + 168);
          v37 = *(v10 + 104);
          v80 = *(v10 + 88);
          v81 = v37;
          _ViewInputs.position.getter();
          type metadata accessor for CGPoint(0);
          v38 = AGGraphGetValue();
          v39 = *v38;
          v40 = v38[1];
          AGGraphSetUpdate();
          v41 = v39 - *(v10 + 240);
          v42 = v40 - *(v10 + 248);
          UIViewSnapshotResponder.contentPath.getter(&v88);
          if (v90 == 255)
          {
            v48 = *(v10 + 224);
            v50 = *(v10 + 232);
            v44 = 0.0;
            v46 = 0.0;
          }

          else
          {
            v91 = v88;
            v92 = v89;
            v93 = v90;
            Path.boundingRect.getter();
            v44 = v43;
            v46 = v45;
            v48 = v47;
            v50 = v49;
            _sypSgWOhTm_2(&v88, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
          }

          v94.origin.x = v44;
          v94.origin.y = v46;
          v94.size.width = v48;
          v94.size.height = v50;
          v95 = CGRectOffset(v94, v41, v42);
          v80.i64[0] = *&v95.origin.x;
          v80.i64[1] = *&v95.origin.y;
          *&v81 = v95.size.width;
          *(&v81 + 1) = *&v95.size.height;
          LOBYTE(v82) = 0;
          v51 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v80, v8, 8, 0);
          v53 = v52;
          v54 = v51;
          v56 = v55;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragPreviewTarget, 0x1E69DC9A8);
          v57 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainer:v53 center:{v54, v56}];

          static Update.end()();
          a2 = [a2 retargetedPreviewWithTarget_];
        }
      }

      else
      {

        return 0;
      }

      return a2;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t specialized DragAndDropBridge.dragInteraction(_:prefersFullSizePreviewsFor:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18D00E9C0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v6 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v13 = 0u;
        v14 = 0u;
      }

      v15[0] = v13;
      v15[1] = v14;
      if (*(&v14 + 1))
      {
        type metadata accessor for DragSourceContext();
        if (swift_dynamicCast())
        {
          v9 = *(v12 + 16);

          v10 = *(v9 + 296);

          if (v10)
          {
            i = 1;
            goto LABEL_19;
          }
        }
      }

      else
      {
        _sypSgWOhTm_2(v15, &lazy cache variable for type metadata for Any?, v5 + 8);
      }

      ++v4;
      if (v8 == i)
      {
        i = 0;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_19:

  return i;
}

void specialized DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:)(char **a1, id a2)
{
  v3 = [a2 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_28:
    v5 = __CocoaSet.count.getter();
    v35 = a1;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_29:
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = a1;
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_3:
  v6 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  a1 = &selRef_bundleIdentifier;
  v7 = MEMORY[0x1E69E7CA0];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18D00E9C0](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if ([v9 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      aBlock = v43;
      v38 = v44;
      if (*(&v44 + 1))
      {
        break;
      }

      _sypSgWOhTm_2(&aBlock, &lazy cache variable for type metadata for Any?, v7 + 8);
LABEL_6:
      ++v8;
      if (v6 == v5)
      {
        goto LABEL_30;
      }
    }

    type metadata accessor for DragSourceContext();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_6;
    }

    v11 = *(v42 + 24);

    if (*(v11 + 176))
    {
    }

    else
    {
      swift_beginAccess();
      outlined init with copy of DropDestination?(v11 + 32, &aBlock, &lazy cache variable for type metadata for _DraggingModifier?, &type metadata for _DraggingModifier);
      if (!v41)
      {
        goto LABEL_40;
      }

      v13 = _DraggingModifier.resolve()();

      *(v11 + 176) = v13;
    }

    MEMORY[0x18D00CC30](v12);
    if (*(v45 + 16) >= *(v45 + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v36 = v45;
  }

  while (v6 != v5);
LABEL_30:

  v14 = *(v36 + 16);
  if (v14)
  {
    v15 = v36 + 32;
    do
    {
      v16 = *(**v15 + 96);

      v18 = v16(v17);
      if (v18)
      {
        v20 = v18;
        v21 = v19;
        LOBYTE(aBlock) = 0;
        v18(&aBlock);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v20, v21);
      }

      v15 += 8;
      --v14;
    }

    while (v14);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v36;
  v39 = partial apply for closure #2 in DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:);
  v40 = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v38 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  *(&v38 + 1) = &block_descriptor_84_0;
  v23 = _Block_copy(&aBlock);

  [v35 addCompletion_];
  _Block_release(v23);
  v24 = v34 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);

    ObjectType = swift_getObjectType();
    v27 = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for SubviewsManagingPlatformView, &protocol descriptor for SubviewsManagingPlatformView, 0);
    (*(*(*(v25 + 16) + 8) + 16))(&aBlock, v27, v27, ObjectType);
    swift_unknownObjectRelease();
    v28 = aBlock;
    if (aBlock)
    {
      v29 = *(&aBlock + 1);
      v30 = swift_getObjectType();
      (*(v29 + 8))(v30, v29);
      v31 = swift_allocObject();
      *(v31 + 16) = v28;
      *(v31 + 24) = v29;
      v39 = partial apply for closure #3 in DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:);
      v40 = v31;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v38 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      *(&v38 + 1) = &block_descriptor_90;
      v32 = _Block_copy(&aBlock);
      v33 = v28;

      [v35 addCompletion_];
      _Block_release(v32);
    }
  }

  else
  {
    __break(1u);
LABEL_40:
    __break(1u);
  }
}

void specialized DragAndDropBridge.dragInteraction(_:sessionWillBegin:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_28:
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_29:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_29;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x18D00E9C0](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if ([v7 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v48 = v52;
      v49 = v53;
      if (*(&v53 + 1))
      {
        break;
      }

      _sypSgWOhTm_2(&v48, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
LABEL_6:
      ++v6;
      if (v4 == v3)
      {
        goto LABEL_30;
      }
    }

    type metadata accessor for DragSourceContext();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_6;
    }

    v9 = *(v51 + 24);

    if (*(v9 + 176))
    {
    }

    else
    {
      swift_beginAccess();
      outlined init with copy of DropDestination?(v9 + 32, &v48, &lazy cache variable for type metadata for _DraggingModifier?, &type metadata for _DraggingModifier);
      if (!v50)
      {
        goto LABEL_63;
      }

      v11 = _DraggingModifier.resolve()();

      *(v9 + 176) = v11;
    }

    MEMORY[0x18D00CC30](v10);
    if (*(v54 + 16) >= *(v54 + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = v54;
  }

  while (v4 != v3);
LABEL_30:

  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v5 + 32;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v13 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v16 = *(**(v14 + 8 * v13) + 128);

      v16(&v48, v17);
      v52 = v48;
      v53 = v49;

      if (*(&v53 + 1))
      {
        outlined init with take of Any(&v52, &v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        outlined init with take of Any(&v48, &v15[32 * v19 + 32]);
      }

      else
      {
        _sypSgWOhTm_2(&v52, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      }

      ++v13;
    }

    while (v12 != v13);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1 setLocalContext_];

    for (i = 0; i != v12; ++i)
    {
      v22 = *(**(v14 + 8 * i) + 104);

      v24 = v22(v23);
      if (v24)
      {
        v26 = v25;
        v27 = v24;
        v24();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27, v26);
      }
    }

    v28 = 0;
    v29 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v30 = v28;
    while (v30 < *(v5 + 16))
    {
      v28 = v30 + 1;
      v31 = *(**(v14 + 8 * v30) + 112);

      v33 = v31(v32);
      if (v33)
      {
        v35 = v33;
        v36 = v34;
        v37 = swift_allocObject();
        *(v37 + 16) = v35;
        *(v37 + 24) = v36;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
        }

        v39 = v29[2];
        v38 = v29[3];
        if (v39 >= v38 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v29);
        }

        v29[2] = v39 + 1;
        v40 = &v29[2 * v39];
        v40[4] = partial apply for thunk for @callee_guaranteed () -> ();
        v40[5] = v37;
        if (v12 - 1 != v30)
        {
          goto LABEL_46;
        }

        goto LABEL_58;
      }

      ++v30;
      if (v12 == v28)
      {
        goto LABEL_58;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    v41 = Array._bridgeToObjectiveC()().super.isa;

    [a1 setLocalContext_];

LABEL_58:

    if (v29[2])
    {
      v42 = swift_allocObject();
      *(v42 + 16) = v29;
      v43 = (v46 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded);
      v45 = *(v46 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded);
      v44 = *(v46 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded + 8);
      *v43 = partial apply for closure #2 in DragAndDropBridge.dragInteraction(_:sessionWillBegin:);
      v43[1] = v42;
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v45, v44);
    }

    else
    {
    }
  }
}

id specialized DragAndDropBridge._dragInteraction(_:sessionPropertiesForSession:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18D00E9C0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v6 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
      }

      v15[0] = v13;
      v15[1] = v14;
      if (*(&v14 + 1))
      {
        type metadata accessor for DragSourceContext();
        if (swift_dynamicCast())
        {
          v9 = *(*(v12 + 16) + 316);
          if (v9 != 2)
          {

            v10 = [objc_allocWithZone(MEMORY[0x1E69DD480]) init];
            [v10 set:v9 & 1 supportsSystemDrag:?];

            return v10;
          }
        }
      }

      else
      {

        _sypSgWOhTm_2(v15, &lazy cache variable for type metadata for Any?, v5 + 8);
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  return 0;
}

id specialized DragAndDropBridge.dropInteraction(_:sessionDidUpdate:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (specialized DragAndDropBridge.hitTestedResponder(session:)(a1, v1))
  {
    type metadata accessor for DragDropDefaultPreviewResponder & DropPayloadProvider();
    ResponderNode.firstAncestor<A>(ofType:)();

    v4 = v37[0];
    v5 = v37[1];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop;
  swift_beginAccess();
  outlined init with copy of DropDestination?(v6, &aBlock, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
  if (aBlock == __PAIR128__(1, 0))
  {
    _sypSgWOhTm_2(&aBlock, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
    goto LABEL_29;
  }

  outlined init with take of DropDestination(&aBlock, v37);
  if (v38)
  {
    outlined destroy of DropDestination(v37);
    goto LABEL_29;
  }

  v7 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_28:
    outlined destroy of DropDestination(v37);

    goto LABEL_29;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x18D00E9C0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;

  if (!v4)
  {
    outlined destroy of DropDestination(v37);

    v35 = 0;
    aBlock = 0u;
    v34 = 0u;
LABEL_21:
    outlined destroy of DragPayloadProvider?(&aBlock, &lazy cache variable for type metadata for CustomDropPreviewProvider?, &lazy cache variable for type metadata for CustomDropPreviewProvider, &protocol descriptor for CustomDropPreviewProvider);
    goto LABEL_29;
  }

  v39 = v4;
  v40 = v5;
  type metadata accessor for DragDropDefaultPreviewResponder & DropPayloadProvider();
  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for CustomDropPreviewProvider, &protocol descriptor for CustomDropPreviewProvider, 1);

  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
    aBlock = 0u;
    v34 = 0u;
    goto LABEL_20;
  }

  if (!*(&v34 + 1))
  {
LABEL_20:
    outlined destroy of DropDestination(v37);

    goto LABEL_21;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&aBlock, v30);
  v12 = v31;
  v13 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v14 = [v11 itemProvider];
  v15 = [v14 registeredContentTypes];

  type metadata accessor for UTType();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&aBlock = 0;
  (*(v13 + 8))(v16, &aBlock, v12, v13);

  v17 = *(*v4 + class metadata base offset for DragDropDefaultPreviewResponder + 72);

  v17(&v39, v18);

  v19 = v39;
  if (v39)
  {
    v20 = v40;
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    *(v21 + 32) = v41;
    *(v21 + 48) = v42;
    v35 = partial apply for closure #1 in DragAndDropBridge.dropInteraction(_:sessionDidUpdate:);
    v36 = v21;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v34 = thunk for @escaping @callee_guaranteed () -> (@owned UIDragPreview?);
    *(&v34 + 1) = &block_descriptor_63;
    v22 = _Block_copy(&aBlock);
    v23 = v19;
    v24 = v20;

    [v11 setPreviewProvider_];

    _Block_release(v22);
    v11 = v23;
  }

  else
  {
    [v11 setPreviewProvider_];
  }

  outlined destroy of DropDestination(v37);
  if (*v6 || *(v6 + 8) != 1)
  {
    *(v6 + 72) = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_29:
  v25 = v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v26 = *(v25 + 8);
  ObjectType = swift_getObjectType();
  v28 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v26 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v28)
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  swift_beginAccess();
  v29 = specialized static UIDropProposal.fromActiveDrop(_:session:responder:host:)(v6, a1, v4, v5, v28);
  swift_endAccess();

  return v29;
}

void specialized DragAndDropBridge.dropInteraction(_:sessionDidEnd:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    return;
  }

  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v6 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v4 + 16) + 8));
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = (v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop);
    swift_beginAccess();
    if (*v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7[1] == 1;
    }

    if (v8 || (Strong = swift_weakLoadStrong()) == 0)
    {
    }

    else
    {
      v10 = Strong;
      *&v35 = Strong;
      (*(v7[1] + 8))(&v38, *Strong);
      if (*(&v39 + 1))
      {
        type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate, 1);
        type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate_Private, &protocol descriptor for DropDelegate_Private, 1);
        if (swift_dynamicCast())
        {
          if (*(&v46 + 1))
          {
            outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v45, v55);
            v53 = &type metadata for DropInfoAdaptor;
            v54 = &protocol witness table for DropInfoAdaptor;
            v11 = swift_allocObject();
            *&v52 = v11;
            swift_unknownObjectWeakInit();
            *(&v45 + 1) = 0;
            swift_unknownObjectWeakAssign();
            v12 = v6;

            [a1 locationInView_];
            v43 = v13;
            v44 = v14;
            v15 = MEMORY[0x1E697DF20];
            v16 = MEMORY[0x1E697DF18];
            type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18]);
            lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, v15, v16);
            if (static SemanticFeature.isEnabled.getter())
            {
              hostingViewCoordinateSpace.getter();
              v42 = 1;
              v17 = *(*v10 + class metadata base offset for UIViewSnapshotResponder + 80);

              v17(&v38, v18);

              v35 = v38;
              v36 = v39;
              v37 = v40;
              type metadata accessor for CGPoint(0);
              ApplyViewTransform.convert(from:transform:)();
              outlined destroy of CoordinateSpace(v41);
            }

            v19 = v43;
            v20 = v44;
            v50 = v43;
            v51 = v44;
            if ([swift_unknownObjectRetain() localDragSession])
            {
              swift_unknownObjectRelease();
              v21 = 0;
            }

            else
            {
              v21 = 1;
            }

            v22 = [a1 items];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
            v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v23 >> 62)
            {
              v24 = __CocoaSet.count.getter();
            }

            else
            {
              v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if ([swift_unknownObjectRetain() localDragSession])
            {
              swift_unknownObjectRelease();
              v25 = &selRef_allowsMoveOperation;
              v26 = 3;
            }

            else
            {
              v25 = &selRef_isRestrictedToDraggingApplication;
              v26 = 4;
            }

            v27 = [a1 *v25];
            swift_unknownObjectRelease();
            if (v27)
            {
              v28 = v26;
            }

            else
            {
              v28 = 1;
            }

            [v12 bounds];
            v30 = v29;
            v32 = v31;

            swift_unknownObjectRelease();

            *&v46 = a1;
            BYTE8(v46) = 6;
            *&v47 = v21;
            *(&v47 + 1) = v24;
            *v48 = v28;
            *&v48[8] = v30;
            *&v48[16] = v32;
            *&v48[24] = v19;
            v49 = v20;
            outlined init with take of DropInfoAdaptor(&v45, v11 + 16);
            outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v52, &v38);
            v33 = v56;
            v34 = v57;
            __swift_project_boxed_opaque_existential_1(v55, v56);
            (*(v34 + 32))(&v38, v33, v34);

            outlined destroy of DropInfo(&v38);
            __swift_destroy_boxed_opaque_existential_1(v55);
            goto LABEL_20;
          }
        }

        else
        {
          *&v47 = 0;
          v45 = 0u;
          v46 = 0u;
        }
      }

      else
      {

        outlined destroy of DragPayloadProvider?(&v38, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
        v45 = 0u;
        v46 = 0u;
        *&v47 = 0;
      }

      outlined destroy of DragPayloadProvider?(&v45, &lazy cache variable for type metadata for DropDelegate_Private?, &lazy cache variable for type metadata for DropDelegate_Private, &protocol descriptor for DropDelegate_Private);
    }

LABEL_20:
    v45 = xmmword_18CD633F0;
    v46 = 0u;
    v47 = 0u;
    memset(v48, 0, 25);
    swift_beginAccess();
    outlined assign with take of DropDestination?(&v45, v7);
    swift_endAccess();
  }
}

void specialized DragAndDropBridge.dropInteraction(_:performDrop:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = (v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop);
      swift_beginAccess();
      if (*v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8[1] == 1;
      }

      if (v9 || (Strong = swift_weakLoadStrong()) == 0)
      {
      }

      else
      {
        v11 = Strong;
        v12 = v8[1];
        swift_unknownObjectWeakInit();
        v49 = 0;
        swift_unknownObjectWeakAssign();
        v13 = v7;

        [a1 locationInView_];
        v46 = v14;
        v47 = v15;
        v16 = MEMORY[0x1E697DF20];
        v17 = MEMORY[0x1E697DF18];
        type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18]);
        lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, v16, v17);
        if (static SemanticFeature.isEnabled.getter())
        {
          hostingViewCoordinateSpace.getter();
          v44 = 1;
          v18 = *(*v11 + class metadata base offset for UIViewSnapshotResponder + 80);

          v18(v61, v19);

          v38 = v61[0];
          v39 = v61[1];
          v40 = v61[2];
          type metadata accessor for CGPoint(0);
          ApplyViewTransform.convert(from:transform:)();
          outlined destroy of CoordinateSpace(v41);
        }

        v20 = v46;
        v21 = v47;
        v59 = v46;
        v60 = v47;
        if ([swift_unknownObjectRetain() localDragSession])
        {
          swift_unknownObjectRelease();
          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        v23 = [a1 items];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if ([swift_unknownObjectRetain() localDragSession])
        {
          swift_unknownObjectRelease();
          v26 = &selRef_allowsMoveOperation;
          v27 = 3;
        }

        else
        {
          v26 = &selRef_isRestrictedToDraggingApplication;
          v27 = 4;
        }

        v28 = [a1 *v26];
        swift_unknownObjectRelease();
        if (v28)
        {
          v29 = v27;
        }

        else
        {
          v29 = 1;
        }

        [v13 bounds];
        v31 = v30;
        v33 = v32;

        swift_unknownObjectRelease();

        v50 = a1;
        v51 = 6;
        v52 = v22;
        v53 = v25;
        v54 = v29;
        v55 = v31;
        v56 = v33;
        v57 = v20;
        v58 = v21;
        outlined init with take of DropInfoAdaptor(v48, v61);
        if (*v8 || v8[1] != 1)
        {
          v34 = v8[8];
        }

        else
        {
          v34 = 0;
        }

        *(&v61[0] + 1) = v34;
        *(&v39 + 1) = &type metadata for DropInfoAdaptor;
        *&v40 = &protocol witness table for DropInfoAdaptor;
        *&v38 = swift_allocObject();
        outlined init with copy of DropInfoAdaptor(v61, v38 + 16);
        v35 = *v11;
        v45 = v11;
        (*(v12 + 8))(v41, v35, v12);
        v36 = v42;
        if (v42)
        {
          v37 = v43;
          __swift_project_boxed_opaque_existential_1(v41, v42);
          (*(v37 + 16))(&v38, v36, v37);

          outlined destroy of DropInfo(&v38);
          __swift_destroy_boxed_opaque_existential_1(v41);
        }

        else
        {

          outlined destroy of DropInfo(&v38);
          outlined destroy of DragPayloadProvider?(v41, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
        }

        outlined destroy of DropInfoAdaptor(v61);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized DragAndDropBridge.dropInteraction(_:concludeDrop:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    return;
  }

  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v6 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v4 + 16) + 8));
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = (v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop);
    swift_beginAccess();
    if (*v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7[1] == 1;
    }

    if (v8 || (Strong = swift_weakLoadStrong()) == 0)
    {

      return;
    }

    v10 = Strong;
    *&v35 = Strong;
    (*(v7[1] + 8))(&v38, *Strong);
    if (*(&v39 + 1))
    {
      type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate, 1);
      type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate_Private, &protocol descriptor for DropDelegate_Private, 1);
      if (swift_dynamicCast())
      {
        if (*(&v46 + 1))
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v45, v59);
          v57 = &type metadata for DropInfoAdaptor;
          v58 = &protocol witness table for DropInfoAdaptor;
          v11 = swift_allocObject();
          *&v56 = v11;
          swift_unknownObjectWeakInit();
          *(&v45 + 1) = 0;
          swift_unknownObjectWeakAssign();
          v12 = v6;

          [a1 locationInView_];
          v43 = v13;
          v44 = v14;
          v15 = MEMORY[0x1E697DF20];
          v16 = MEMORY[0x1E697DF18];
          type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18]);
          lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, v15, v16);
          if (static SemanticFeature.isEnabled.getter())
          {
            hostingViewCoordinateSpace.getter();
            v42 = 1;
            v17 = *(*v10 + class metadata base offset for UIViewSnapshotResponder + 80);

            v17(&v38, v18);

            v35 = v38;
            v36 = v39;
            v37 = v40;
            type metadata accessor for CGPoint(0);
            ApplyViewTransform.convert(from:transform:)();
            outlined destroy of CoordinateSpace(v41);
          }

          v19 = v43;
          v20 = v44;
          v54 = v43;
          v55 = v44;
          if ([swift_unknownObjectRetain() localDragSession])
          {
            swift_unknownObjectRelease();
            v21 = 0;
          }

          else
          {
            v21 = 1;
          }

          v22 = [a1 items];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
          v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v23 >> 62)
          {
            v24 = __CocoaSet.count.getter();
          }

          else
          {
            v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if ([swift_unknownObjectRetain() localDragSession])
          {
            swift_unknownObjectRelease();
            v25 = &selRef_allowsMoveOperation;
            v26 = 3;
          }

          else
          {
            v25 = &selRef_isRestrictedToDraggingApplication;
            v26 = 4;
          }

          v27 = [a1 *v25];
          swift_unknownObjectRelease();
          if (v27)
          {
            v28 = v26;
          }

          else
          {
            v28 = 1;
          }

          [v12 bounds];
          v30 = v29;
          v32 = v31;

          swift_unknownObjectRelease();

          *&v46 = a1;
          BYTE8(v46) = 6;
          v47 = v21;
          v48 = v24;
          v49 = v28;
          v50 = v30;
          v51 = v32;
          v52 = v19;
          v53 = v20;
          outlined init with take of DropInfoAdaptor(&v45, v11 + 16);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v56, &v38);
          v33 = v60;
          v34 = v61;
          __swift_project_boxed_opaque_existential_1(v59, v60);
          (*(v34 + 24))(&v38, v33, v34);

          outlined destroy of DropInfo(&v38);
          __swift_destroy_boxed_opaque_existential_1(v59);
          return;
        }
      }

      else
      {
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
      }
    }

    else
    {

      outlined destroy of DragPayloadProvider?(&v38, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
      v45 = 0u;
      v46 = 0u;
      v47 = 0;
    }

    outlined destroy of DragPayloadProvider?(&v45, &lazy cache variable for type metadata for DropDelegate_Private?, &lazy cache variable for type metadata for DropDelegate_Private, &protocol descriptor for DropDelegate_Private);
  }
}

id specialized DragAndDropBridge.dropInteraction(_:previewForDropping:withDefault:)(void *a1, id a2)
{
  v5 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop;
  swift_beginAccess();
  outlined init with copy of DropDestination?(v2 + v5, &v59, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
  if (v59)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&v59 + 1) == 1;
  }

  if (v6)
  {
    _sypSgWOhTm_2(&v59, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
    goto LABEL_15;
  }

  outlined init with take of DropDestination(&v59, v63);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    outlined destroy of DropDestination(v63);
    goto LABEL_15;
  }

  v8 = Strong;
  v9 = v64;
  v10 = v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v14 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v12 + 16) + 8));
    swift_unknownObjectRelease();
    if (v14)
    {
      v66 = v8;
      v67 = v9;
      type metadata accessor for DragDropDefaultPreviewResponder & DropPayloadProvider();
      type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for CustomDropPreviewProvider, &protocol descriptor for CustomDropPreviewProvider, 1);

      if (swift_dynamicCast())
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v56.i8, &v59);
        v15 = *(&v60 + 1);
        v16 = v61;
        __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
        v17 = [a1 itemProvider];
        v18 = [v17 registeredContentTypes];

        type metadata accessor for UTType();
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v56.i64[0] = a2;
        v20 = *(v16 + 8);
        v21 = a2;
        v20(v19, &v56, v15, v16);

        v22 = *(*v8 + class metadata base offset for DragDropDefaultPreviewResponder + 72);

        v22(&v66, v23);

        v24 = v66;
        if (!v66)
        {

          outlined destroy of DropDestination(v63);
          __swift_destroy_boxed_opaque_existential_1(&v59);
          return 0;
        }

        v25 = v67;
        v26 = v69;
        v53 = v68;
        __swift_destroy_boxed_opaque_existential_1(&v59);
        if (v26)
        {

          v14 = v24;
LABEL_21:

          outlined destroy of DropDestination(v63);
          return 0;
        }

        v32 = v53;
      }

      else
      {
        v58 = 0;
        v56 = 0u;
        v57 = 0u;
        outlined destroy of DragPayloadProvider?(&v56, &lazy cache variable for type metadata for CustomDropPreviewProvider?, &lazy cache variable for type metadata for CustomDropPreviewProvider, &protocol descriptor for CustomDropPreviewProvider);
        v28 = v65;
        swift_beginAccess();
        v29 = *(v28 + 16);
        if (!*(v29 + 16) || (v30 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v31 & 1) == 0))
        {
          swift_endAccess();

          goto LABEL_21;
        }

        v54 = *(*(v29 + 56) + 16 * v30);
        swift_endAccess();
        v32 = v54;
        v25 = 0;
        v24 = 0;
      }

      v56 = 0uLL;
      v57 = vaddq_f64(v32, v32);
      LOBYTE(v58) = 0;

      v33 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v56, v14, 8, 0);
      v35 = v34;
      v36 = v33;
      v38 = v37;

      v39 = v65;
      swift_beginAccess();
      v40 = *(v39 + 24);
      v55 = xmmword_18CD683C0;
      v52 = xmmword_18CDA05A0;
      v41 = 0;
      if (*(v40 + 16))
      {
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
        v43 = 0;
        if (v44)
        {
          v45 = *(v40 + 56) + 48 * v42;
          v52 = *v45;
          v55 = *(v45 + 16);
          v41 = *(v45 + 32);
          v43 = *(v45 + 40);
        }
      }

      else
      {
        v43 = 0;
      }

      swift_endAccess();
      v46 = objc_allocWithZone(MEMORY[0x1E69DC9A8]);
      v60 = v55;
      v59 = v52;
      v61 = v41;
      v62 = v43;
      v47 = [v46 initWithContainer:v35 center:&v59 transform:{v36, v38}];
      if (v24)
      {
        v48 = v24;
        if (v25)
        {
          v49 = v25;
        }

        else
        {
          v49 = [a2 parameters];
        }

        v50 = objc_allocWithZone(MEMORY[0x1E69DD068]);
        v51 = v25;
        a2 = [v50 initWithView:v24 parameters:v49 target:v47];
      }

      else
      {
        a2 = [a2 retargetedPreviewWithTarget_];
      }

      outlined destroy of DropDestination(v63);
      return a2;
    }

    outlined destroy of DropDestination(v63);

LABEL_15:
    v27 = a2;
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t specialized DragAndDropBridge.shouldAllow(_:with:)(void *a1)
{
  v3 = DragAndDropBridge.springLoadedResponder(from:)(a1);
  v4 = v3;
  v5 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder;
  v6 = *(v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder);
  if (!v3)
  {
    if (!v6)
    {
      return 0;
    }

LABEL_6:
    v7 = *(v6 + 256);

    v7(v8);

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (v3 == v6)
  {
LABEL_15:

    return 1;
  }

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = *(v4 + 240);

  v10 = [a1 state];
  if (v10)
  {
    v11 = v10 == 3;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v14 = v12;
  v9(&v14);

LABEL_14:
  *(v1 + v5) = v4;

  if (v4)
  {
    goto LABEL_15;
  }

  return 0;
}

void specialized DragAndDropBridge.SpringLoadedEffect.updateHighlightState(_:interaction:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (*(v1 + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_previousHighlightState) != v2)
  {
    *(v1 + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_previousHighlightState) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *&Strong[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder];
      if (v4)
      {
        v5 = *(v4 + 240);
        v7 = v2;
        v6 = Strong;

        v5(&v7);
      }

      else
      {
      }
    }
  }
}

double partial apply for implicit closure #2 in implicit closure #1 in closure #1 in DragAndDropBridge.dragItems(_:_:)@<D0>(uint64_t a1@<X8>)
{
  (*(*v1 + class metadata base offset for DragDropDefaultPreviewResponder + 72))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t outlined init with take of DropDestination(uint64_t a1, uint64_t a2)
{
  swift_weakTakeInit();
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  v6 = *(a1 + 64);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = v6;
  *(a2 + 72) = *(a1 + 72);
  return a2;
}

unint64_t type metadata accessor for DragDropDefaultPreviewResponder & DropPayloadProvider()
{
  result = lazy cache variable for type metadata for DragDropDefaultPreviewResponder & DropPayloadProvider;
  if (!lazy cache variable for type metadata for DragDropDefaultPreviewResponder & DropPayloadProvider)
  {
    type metadata accessor for DragDropDefaultPreviewResponder(255);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DragDropDefaultPreviewResponder & DropPayloadProvider);
  }

  return result;
}

void type metadata accessor for CustomDropPreviewProvider?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for DropDelegate(255, a3, a4, 1);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined destroy of DragPayloadProvider?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for CustomDropPreviewProvider?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

id partial apply for closure #1 in DragAndDropBridge.dropInteraction(_:sessionDidUpdate:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(MEMORY[0x1E69DC998]);

  return [v3 initWithView:v1 parameters:v2];
}

uint64_t outlined init with copy of DropDestination?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _sypSgMaTm_2(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #3 in DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:)()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t destroy for DropInfoAdaptor(uint64_t a1)
{
  MEMORY[0x18D011290]();

  result = *(a1 + 32);
  if (result != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for DropInfoAdaptor(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);

  if (v5 != 1)
  {
  }

  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithCopy for DropInfoAdaptor(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 8) = *(a2 + 8);

  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5 == 1)
  {
    if (v6 != 1)
    {
      *v4 = v6;

      goto LABEL_9;
    }

    v7 = 1;
  }

  else
  {
    if (v6 != 1)
    {
      *v4 = v6;

      goto LABEL_9;
    }

    outlined destroy of DropSession.LocalSession(a1 + 32);
    v7 = *(a2 + 32);
  }

  *v4 = v7;
LABEL_9:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

__n128 initializeWithTake for DropInfoAdaptor(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  v4 = *(a2 + 64);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 80);
  v5 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v5;
  result = *(a2 + 88);
  *(v3 + 88) = result;
  return result;
}

uint64_t assignWithTake for DropInfoAdaptor(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v4 != 1)
  {
    if (v6 != 1)
    {
      *v5 = v6;

      goto LABEL_6;
    }

    outlined destroy of DropSession.LocalSession(a1 + 32);
    v6 = *(a2 + 32);
  }

  *v5 = v6;
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for DropInfoAdaptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for DropInfoAdaptor(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

double ButtonMenuStyle.Automatic.makeBody(configuration:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v11[96] = 0;
  v11[88] = 0;
  v11[80] = 0;
  v11[72] = 0;
  LOBYTE(v13) = 2;
  *(&v13 + 1) = swift_getKeyPath();
  LOBYTE(v14) = 0;
  *(&v14 + 1) = swift_getKeyPath();
  LOBYTE(v15) = 0;
  *(&v15 + 1) = swift_getKeyPath();
  LOBYTE(v16) = 0;
  *(&v16 + 1) = swift_getKeyPath();
  v17 = 0;
  *&v12[7] = v13;
  v12[71] = 0;
  *&v12[55] = v16;
  *&v12[39] = v15;
  *&v12[23] = v14;
  v18[0] = 2;
  v19 = *(&v13 + 1);
  v20 = 0;
  v21 = *(&v14 + 1);
  v22 = 0;
  v23 = *(&v15 + 1);
  v24 = 0;
  v25 = *(&v16 + 1);
  v26 = 0;
  outlined copy of AppIntentExecutor?(v3, v4);
  outlined copy of AppIntentExecutor?(v5, v6);
  outlined init with copy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(&v13, v11, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
  outlined destroy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(v18, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
  KeyPath = swift_getKeyPath();
  v8 = *v12;
  *(a2 + 49) = *&v12[16];
  result = *&v12[32];
  v10 = *&v12[48];
  *(a2 + 65) = *&v12[32];
  *(a2 + 81) = v10;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  *(a2 + 97) = *&v12[64];
  *(a2 + 33) = v8;
  *(a2 + 112) = KeyPath;
  *(a2 + 120) = 0;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFeature<Sema(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_Seman)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFeature<Seman, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<ButtonMenuStyle.Automatic>, lazy protocol witness table accessor for type ButtonMenuStyle.Automatic and conformance ButtonMenuStyle.Automatic, &type metadata for ButtonMenuStyle.Automatic, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_Seman);
    }
  }
}

void type metadata accessor for StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<GlassButtonStyle>, lazy protocol witness table accessor for type GlassButtonStyle and conformance GlassButtonStyle, &type metadata for GlassButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<GlassButtonMenuStyle>, lazy protocol witness table accessor for type GlassButtonMenuStyle and conformance GlassButtonMenuStyle, &type metadata for GlassButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassButtonMenuStyle and conformance GlassButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type GlassButtonMenuStyle and conformance GlassButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type GlassButtonMenuStyle and conformance GlassButtonMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlassButtonMenuStyle, &type metadata for GlassButtonMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GlassButtonMenuStyle and conformance GlassButtonMenuStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<GlassProminentButtonStyle>, lazy protocol witness table accessor for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle, &type metadata for GlassProminentButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<GlassProminentButtonMenuStyle>, lazy protocol witness table accessor for type GlassProminentButtonMenuStyle and conformance GlassProminentButtonMenuStyle, &type metadata for GlassProminentButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassProminentButtonMenuStyle and conformance GlassProminentButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type GlassProminentButtonMenuStyle and conformance GlassProminentButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type GlassProminentButtonMenuStyle and conformance GlassProminentButtonMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlassProminentButtonMenuStyle, &type metadata for GlassProminentButtonMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GlassProminentButtonMenuStyle and conformance GlassProminentButtonMenuStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_2(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<CustomButtonMenuStyle>, lazy protocol witness table accessor for type CustomButtonMenuStyle and conformance CustomButtonMenuStyle, &type metadata for CustomButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFeature<S()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFea;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFea)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFeature<Seman, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFea);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, ;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, )
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<GlassProminentButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A,);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<GlassButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<GlassButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<GlassButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<GlassButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<GlassButtonStyle>, lazy protocol witness table accessor for type GlassButtonStyle and conformance GlassButtonStyle, &type metadata for GlassButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStylePredicate<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<GlassButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<GlassProminentButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<GlassProminentButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<GlassProminentButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<GlassProminentButtonStyle>, lazy protocol witness table accessor for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle, &type metadata for GlassProminentButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStylePredicate<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<GlassProminentButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>();
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<BorderlessButtonMenuStyle>, lazy protocol witness table accessor for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle, &type metadata for BorderlessButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_S(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = &protocol witness table for MenuStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<ConditionallyBorderedMenuButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<ConditionallyBorderedMenuButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<ConditionallyBorderedMenuButtonStyle>, lazy protocol witness table accessor for type ConditionallyBorderedMenuButtonStyle and conformance ConditionallyBorderedMenuButtonStyle, &type metadata for ConditionallyBorderedMenuButtonStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<ConditionallyBorderedMenuButtonStyle>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_2(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<_BorderedButtonMenuStyle>, lazy protocol witness table accessor for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle, &type metadata for _BorderedButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>);
    }
  }
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ConditionallyBorderedMenuButtonStyle and conformance ConditionallyBorderedMenuButtonStyle()
{
  result = lazy protocol witness table cache variable for type ConditionallyBorderedMenuButtonStyle and conformance ConditionallyBorderedMenuButtonStyle;
  if (!lazy protocol witness table cache variable for type ConditionallyBorderedMenuButtonStyle and conformance ConditionallyBorderedMenuButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConditionallyBorderedMenuButtonStyle, &type metadata for ConditionallyBorderedMenuButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionallyBorderedMenuButtonStyle and conformance ConditionallyBorderedMenuButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, protocol conformance descriptor for Menu<A, B>);
    v5[1] = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E69808F0]);
    v5[1] = &protocol witness table for MenuStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

id HostingScrollView.PlatformContainer.next.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (MEMORY[0x18D008800]())
  {
    if (swift_weakLoadStrong())
    {
      v3 = ViewResponder.parentGestureContainer.getter();

      if (v3)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_nextResponder);
}

id HostingScrollView.PlatformContainer._parentContainer.getter()
{
  ObjectType = swift_getObjectType();
  if ((MEMORY[0x18D008800]() & 1) == 0)
  {
    v13.receiver = v0;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel__parentGestureRecognizerContainer);
  }

  if (!swift_weakLoadStrong())
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_4;
    }

    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    v7 = *(v5 + 208);

    if (!v6)
    {
      goto LABEL_4;
    }

    v8 = swift_getObjectType();
    v9 = type metadata accessor for EventGraphHost();
    (*(v7 + 16))(v12, v9, v9, v8, v7);
    swift_unknownObjectRelease();
    if (!v12[0])
    {
      goto LABEL_4;
    }

    v10 = v12[1];
    v11 = swift_getObjectType();
    (*(v10 + 16))(v11, v10);
    swift_unknownObjectRelease();
  }

LABEL_4:
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = ViewResponder.parentGestureContainer.getter();

    return v3;
  }

  return result;
}

void specialized HostingScrollView.PlatformContainer.renderPlatformGroup(_:in:size:renderer:)(uint64_t *a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(v2 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView);
  v4 = type metadata accessor for HostingScrollView();
  v6.receiver = v3;
  v6.super_class = v4;

  objc_msgSendSuper2(&v6, sel_bounds);
  v5.receiver = v3;
  v5.super_class = v4;
  objc_msgSendSuper2(&v5, sel_bounds);
  GraphicsContext.translateBy(x:y:)();
  Path.init(_:)();
  GraphicsContext.clip(to:style:options:)();
  outlined destroy of Path(v8);
  DisplayList.GraphicsRenderer.render(list:in:)();
}

BOOL NavigationColumnState.ColumnContent.isShowingOriginalRoot.getter()
{
  outlined init with copy of NavigationColumnState.ColumnContent(v0, v11);
  if ((v11[120] & 1) == 0)
  {
    v2 = outlined init with copy of NavigationColumnState.ColumnContent(v11, v7);
    v3 = v10;
    if (v8 == 255)
    {
      v5 = (*(*v9 + 80))(v2);

      if (v5)
      {
        v6 = *(v3 + 16);

        v1 = v6 == 0;
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_6:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v7, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
LABEL_7:
    v1 = 0;
    goto LABEL_8;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v11, v7);
  if (v8 != 255)
  {
    goto LABEL_6;
  }

  v1 = 1;
LABEL_8:
  outlined destroy of NavigationColumnState.ColumnContent(v11);
  return v1;
}

uint64_t NavigationColumnState.ColumnContent.replacedRootMatchesView(identifiedBy:)(void *a1)
{
  outlined init with copy of NavigationColumnState.ColumnContent(v1, v8);
  if ((v8[120] & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v8, v5);

    if (v7 != 255)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

LABEL_8:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v5, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    goto LABEL_9;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v8, v5);
  if (v7 == 255)
  {
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
LABEL_4:
    outlined destroy of NavigationColumnState.ReplacedRoot(v5);
LABEL_9:
    outlined destroy of NavigationColumnState.ColumnContent(v8);
    v3 = 0;
    return v3 & 1;
  }

LABEL_7:
  v9[2] = v5[2];
  v9[3] = v5[3];
  v9[4] = v5[4];
  v10 = v6;
  v9[0] = v5[0];
  v9[1] = v5[1];
  outlined destroy of NavigationColumnState.ColumnContent(v8);
  v3 = NavigationLinkSelectionIdentifier.matches(_:)(a1);
  outlined destroy of NavigationViewDestinationView(v9);
  return v3 & 1;
}

Swift::Void __swiftcall NavigationColumnState.ColumnContent.dismissReplacedRootView()()
{
  outlined init with copy of NavigationColumnState.ColumnContent(v0, v7);
  if ((v9 & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v7, v4);

    if (v6 != 255)
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_7:
      v10[2] = v4[2];
      v10[3] = v4[3];
      v10[4] = v4[4];
      v11 = v5;
      v10[0] = v4[0];
      v10[1] = v4[1];
      outlined destroy of NavigationColumnState.ColumnContent(v7);
      LOBYTE(v4[0]) = 17;
      outlined init with copy of NavigationViewDestinationView(v10, v7);
      v1 = swift_allocObject();
      v2 = v7[3];
      *(v1 + 48) = v7[2];
      *(v1 + 64) = v2;
      *(v1 + 80) = v7[4];
      *(v1 + 96) = v8;
      v3 = v7[1];
      *(v1 + 16) = v7[0];
      *(v1 + 32) = v3;
      static Update.enqueueAction(reason:_:)();

      outlined destroy of NavigationViewDestinationView(v10);
      return;
    }

LABEL_8:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v4, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    goto LABEL_9;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v7, v4);
  if (v6 == 255)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  outlined destroy of NavigationColumnState.ReplacedRoot(v4);
LABEL_9:
  outlined destroy of NavigationColumnState.ColumnContent(v7);
}

uint64_t NavigationColumnState.ColumnContent.replaceRoot(_:)(uint64_t a1)
{
  *&v9[9] = *(v1 + 105);
  v2 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v2;
  *v9 = *(v1 + 96);
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v4 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v4;
  v5 = v9[24];
  if (v9[24])
  {
    outlined init with copy of AnyNavigationLinkPresentedValue(a1, v1);
    *(v1 + 88) = 0;
  }

  else
  {
    v6 = *&v9[16];
    outlined init with copy of AnyNavigationLinkPresentedValue(a1, v1);
    *(v1 + 88) = 0;
    *(v1 + 96) = *v9;
    *(v1 + 112) = v6;
  }

  *(v1 + 120) = v5;
  return outlined destroy of NavigationColumnState.ReplacedRoot?(v8, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
}

{
  *&v9[9] = *(v1 + 105);
  v2 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v2;
  *v9 = *(v1 + 96);
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v4 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v4;
  v5 = v9[24];
  if (v9[24])
  {
    outlined init with copy of NavigationViewDestinationView(a1, v1);
    *(v1 + 88) = 1;
  }

  else
  {
    v6 = *&v9[16];
    outlined init with copy of NavigationViewDestinationView(a1, v1);
    *(v1 + 88) = 1;
    *(v1 + 96) = *v9;
    *(v1 + 112) = v6;
  }

  *(v1 + 120) = v5;
  return outlined destroy of NavigationColumnState.ReplacedRoot?(v8, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
}

Swift::Void __swiftcall NavigationColumnState.ColumnContent.resetRoot()()
{
  *&v6[9] = *(v0 + 105);
  v1 = *(v0 + 80);
  v5[4] = *(v0 + 64);
  v5[5] = v1;
  *v6 = *(v0 + 96);
  v2 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v2;
  v3 = *(v0 + 48);
  v5[2] = *(v0 + 32);
  v5[3] = v3;
  if (v6[24])
  {
    *(v0 + 80) = 0;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *v0 = 0u;
    *(v0 + 88) = -1;
    *(v0 + 120) = 1;
    outlined destroy of NavigationColumnState.ColumnContent(v0);
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0;
    *(v0 + 88) = -1;
    *(v0 + 120) = 1;
  }

  else
  {
    v4 = *&v6[16];
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0;
    *(v0 + 88) = -1;
    *(v0 + 120) = 1;
    outlined destroy of NavigationColumnState.ColumnContent(v0);
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0;
    *(v0 + 88) = -1;
    *(v0 + 96) = *v6;
    *(v0 + 112) = v4;
    *(v0 + 120) = 0;
  }

  outlined destroy of NavigationColumnState.ReplacedRoot?(v5, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
}

Swift::Void __swiftcall NavigationColumnState.ColumnContent.clearAll(popReplacedRoots:)(Swift::Bool popReplacedRoots)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v36 = *(v1 + 32);
  v37 = v4;
  v5 = *(v1 + 80);
  v38[0] = *(v1 + 64);
  v38[1] = v5;
  v6 = *(v1 + 16);
  v34 = *v1;
  v35 = v6;
  if (*(v1 + 120))
  {
    v7 = *(v1 + 48);
    v31 = *(v1 + 32);
    v32 = v7;
    *v33 = *(v1 + 64);
    *&v33[9] = *(v1 + 73);
    v8 = *(v1 + 16);
    v29 = *v1;
    v30 = v8;
    if (popReplacedRoots)
    {
      outlined destroy of NavigationColumnState.ReplacedRoot?(&v29, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      v9 = 0;
      v10 = 0uLL;
      v11 = -1;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
    }

    else
    {
      v10 = v29;
      v12 = v30;
      v13 = v31;
      v14 = v32;
      v15 = *v33;
      v9 = *&v33[16];
      v11 = v33[24];
    }

    *v1 = v10;
    *(v1 + 16) = v12;
    *(v1 + 32) = v13;
    *(v1 + 48) = v14;
    *(v1 + 64) = v15;
    *(v1 + 80) = v9;
    *(v1 + 88) = v11;
    *(v1 + 120) = 1;
  }

  else
  {
    v16 = *(v1 + 96);

    v31 = v36;
    v32 = v37;
    *v33 = v38[0];
    *&v33[9] = *(v38 + 9);
    v29 = v34;
    v30 = v35;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0;
    *(v2 + 88) = -1;
    *(v2 + 120) = 1;
    v17 = outlined destroy of NavigationColumnState.ColumnContent(v2);
    v18 = (*(*v16 + 88))(v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = (*(*v16 + 104))();

      v16 = v19;
    }

    (*(*v16 + 128))(v18);
    v20 = MEMORY[0x1E69E7CC0];
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (popReplacedRoots)
    {
      outlined destroy of NavigationColumnState.ReplacedRoot?(&v29, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      v22 = 0;
      v23 = 0uLL;
      v24 = -1;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
    }

    else
    {
      v23 = v29;
      v25 = v30;
      v26 = v31;
      v27 = v32;
      v28 = *v33;
      v22 = *&v33[16];
      v24 = v33[24];
    }

    *v2 = v23;
    *(v2 + 16) = v25;
    *(v2 + 32) = v26;
    *(v2 + 48) = v27;
    *(v2 + 64) = v28;
    *(v2 + 80) = v22;
    *(v2 + 88) = v24;
    *(v2 + 96) = v16;
    *(v2 + 104) = v20;
    *(v2 + 112) = v21;
    *(v2 + 120) = 0;
  }
}

void NavigationColumnState.ColumnContent.presentView(_:from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of NavigationColumnState.ColumnContent(v2, v29);
  if (v33)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v29);
    return;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v2);
  v6 = v31;
  v8 = *(&v32 + 1);
  v7 = v32;
  v37 = v29[2];
  v38 = v29[3];
  v39[0] = v30[0];
  *(v39 + 9) = *(v30 + 9);
  v35 = v29[0];
  v36 = v29[1];
  v34 = v32;
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  *(v2 + 88) = -1;
  *(v2 + 120) = 1;

  v9 = outlined destroy of NavigationColumnState.ColumnContent(v2);
  v10 = *(*v6 + 88);
  v11 = (v10)(v9);

  if (v11 > a2)
  {
    v13 = (v10)(v12);
    v14 = __OFSUB__(v13, a2);
    v15 = v13 - a2;
    if (!v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = (*(*v6 + 104))();

        v6 = v24;
      }

      (*(*v6 + 128))(v15);
      specialized Collection<>.dismiss(from:)(0, v7, v8);

      v7 = MEMORY[0x1E69E7CC0];
      v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *&v34 = v7;
      *(&v34 + 1) = v25;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_20;
  }

  v16 = *(v7 + 16);
  v17 = (v10)(v12);
  if (__OFADD__(v16, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v16 + v17 <= a2)
  {
    goto LABEL_18;
  }

  v18 = v10();
  v19 = a2 - v18;
  if (__OFSUB__(a2, v18))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  specialized Collection<>.dismiss(from:)((a2 - v18), v7, v8);
  v20 = *(v7 + 16);
  v21 = v20 - v19;
  if (__OFSUB__(v20, v19))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v21)
  {
LABEL_18:
    v26 = *(v7 + 16);
    outlined init with copy of NavigationViewDestinationView(a1, v29);
    specialized IdentifiedArray.replaceSubrange<A>(_:with:)(v26, v26, v29);
    outlined destroy of NavigationColumnState.ReplacedRoot?(v29, &lazy cache variable for type metadata for CollectionOfOne<NavigationViewDestinationView>, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6BC0]);
    v27 = v38;
    *(v3 + 32) = v37;
    *(v3 + 48) = v27;
    *(v3 + 64) = v39[0];
    *(v3 + 73) = *(v39 + 9);
    v28 = v36;
    *v3 = v35;
    *(v3 + 16) = v28;
    *(v3 + 96) = v6;
    *(v3 + 104) = v34;
    *(v3 + 120) = 0;
    return;
  }

  if (v21 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*(v7 + 16), v19 - v20, 0, v7);
  if ((v23 & 1) == 0)
  {
    if (v20 < v22)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    specialized IdentifiedArray.replaceSubrange<A>(_:with:)(v22, v20);
    v7 = v34;
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
}

uint64_t NavigationColumnState.ColumnContent.replaceViewDestinationView(_:identifier:)(uint64_t a1, void *a2)
{
  v3 = v2;
  outlined init with copy of NavigationColumnState.ColumnContent(v2, v36);
  if (v36[120] == 1)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v36, v30);
    if (v32 != 255)
    {
      if (v32)
      {
        v18 = v30[2];
        v19 = v30[3];
        *v20 = v30[4];
        *&v20[16] = v31;
        v16 = v30[0];
        v17 = v30[1];
        if (NavigationLinkSelectionIdentifier.matches(_:)(a2))
        {
          outlined destroy of NavigationColumnState.ColumnContent(v2);
          *v2 = 0u;
          *(v2 + 16) = 0u;
          *(v2 + 32) = 0u;
          *(v2 + 48) = 0u;
          *(v2 + 64) = 0u;
          *(v2 + 80) = 0;
          *(v2 + 88) = -1;
          v6 = 1;
          *(v3 + 120) = 1;
          outlined destroy of NavigationColumnState.ColumnContent(v3);

          *&v16 = a1;
          outlined init with copy of NavigationViewDestinationView(&v16, v3);
          *(v3 + 88) = 1;
          *(v3 + 120) = 1;
          outlined destroy of NavigationViewDestinationView(&v16);
LABEL_25:
          outlined destroy of NavigationColumnState.ColumnContent(v36);
          return v6;
        }

        outlined destroy of NavigationViewDestinationView(&v16);
      }

      else
      {
        outlined destroy of NavigationColumnState.ReplacedRoot(v30);
      }

LABEL_20:
      v6 = 0;
      goto LABEL_25;
    }

LABEL_19:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v30, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    goto LABEL_20;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v36, v30);
  v8 = v33;
  v7 = v34;
  v9 = v35;
  if (v32 == 255)
  {
  }

  else
  {
    outlined init with copy of NavigationColumnState.ReplacedRoot?(v30, &v16);
    if (v20[24] == 1)
    {
      v27 = v18;
      v28 = v19;
      *v29 = *v20;
      *&v29[16] = *&v20[16];
      v25 = v16;
      v26 = v17;
      if (NavigationLinkSelectionIdentifier.matches(_:)(a2))
      {
        outlined destroy of NavigationColumnState.ColumnContent(v2);
        *v2 = 0u;
        *(v2 + 16) = 0u;
        *(v2 + 32) = 0u;
        *(v2 + 48) = 0u;
        *(v2 + 64) = 0u;
        *(v2 + 80) = 0;
        *(v2 + 88) = -1;
        v6 = 1;
        *(v3 + 120) = 1;
        outlined destroy of NavigationColumnState.ColumnContent(v3);

        *&v25 = a1;
        outlined init with copy of NavigationViewDestinationView(&v25, v3);
        *(v3 + 88) = 1;
        *(v3 + 96) = v8;
        *(v3 + 104) = v7;
        *(v3 + 112) = v9;
        *(v3 + 120) = 0;
        outlined destroy of NavigationViewDestinationView(&v25);
        outlined destroy of NavigationColumnState.ReplacedRoot?(v30, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        goto LABEL_25;
      }

      outlined destroy of NavigationViewDestinationView(&v25);
    }

    else
    {

      outlined destroy of NavigationColumnState.ReplacedRoot(&v16);
    }
  }

  specialized IdentifiedArray.subscript.getter(a2, v7, v9, &v16);

  if (!v16)
  {
    outlined destroy of (NavigationViewDestinationView, Int)?(&v16);
    goto LABEL_19;
  }

  v10 = *&v20[24];
  outlined destroy of NavigationViewDestinationView(&v16);
  outlined init with copy of NavigationColumnState.ColumnContent(v2, &v16);
  if (v23)
  {
    outlined destroy of NavigationColumnState.ColumnContent(&v16);
LABEL_24:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v30, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v6 = 1;
    goto LABEL_25;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v2);
  v11 = v21;
  v27 = v18;
  v28 = v19;
  *v29 = *v20;
  *&v29[9] = *&v20[9];
  v25 = v16;
  v26 = v17;
  v15 = v22;
  v24 = v22;
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  *(v2 + 88) = -1;
  *(v2 + 120) = 1;
  result = outlined destroy of NavigationColumnState.ColumnContent(v2);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(v15 + 16))
  {
    outlined init with copy of NavigationViewDestinationView(v15 + 88 * v10 + 32, &v16);

    *&v16 = a1;
    specialized IdentifiedArray.subscript.setter(&v16, v10);
    v13 = v28;
    *(v2 + 32) = v27;
    *(v2 + 48) = v13;
    *(v2 + 64) = *v29;
    *(v2 + 73) = *&v29[9];
    v14 = v26;
    *v2 = v25;
    *(v2 + 16) = v14;
    *(v2 + 96) = v11;
    *(v2 + 104) = v24;
    *(v2 + 120) = 0;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t specialized IdentifiedArray.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 8 * result);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(a2 + 16))
    {
      result = outlined init with copy of NavigationViewDestinationView(a2 + 88 * v8 + 32, a4);
      *(a4 + 88) = v8;
      return result;
    }

    __break(1u);
  }

  else
  {
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t specialized IdentifiedArray.subscript.setter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v3;
  v5 = a2;
  v6 = *v3;
  if (*(*v3 + 2) <= a2)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    goto LABEL_6;
  }

  v4 = a1;
  outlined init with copy of NavigationViewDestinationView(&v6[88 * a2 + 32], v10);
  outlined init with copy of NavigationLinkSelectionIdentifier(&v11, v12);
  outlined destroy of NavigationViewDestinationView(v10);
  outlined init with copy of NavigationLinkSelectionIdentifier(v4 + 8, v10);
  if (!specialized static NavigationLinkSelectionIdentifier.== infix(_:_:)(v10, v12))
  {
    outlined init with copy of NavigationLinkSelectionIdentifier(v12, v9);
    specialized Dictionary.subscript.setter(0, 1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = v3[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, v10, isUniquelyReferenced_nonNull_native);
    v3[1] = v9[0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  outlined destroy of NavigationLinkSelectionIdentifier(v10);
  result = outlined destroy of NavigationLinkSelectionIdentifier(v12);
  if (*(v6 + 2) <= v5)
  {
    __break(1u);
  }

  else
  {
    result = outlined assign with take of NavigationViewDestinationView(v4, &v6[88 * v5 + 32]);
    *v2 = v6;
  }

  return result;
}

uint64_t outlined destroy of (NavigationViewDestinationView, Int)?(uint64_t a1)
{
  type metadata accessor for (NavigationViewDestinationView, Int)?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (NavigationViewDestinationView, Int)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (NavigationViewDestinationView, Int)?)
  {
    type metadata accessor for (NavigationViewDestinationView, Int)();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (NavigationViewDestinationView, Int)?);
    }
  }
}

void type metadata accessor for (NavigationViewDestinationView, Int)()
{
  if (!lazy cache variable for type metadata for (NavigationViewDestinationView, Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationViewDestinationView, Int));
    }
  }
}

void type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>)
  {
    type metadata accessor for CallbacksGesture<PressableGestureCallbacks<Bool>>(255);
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type CallbacksGesture<PressableGestureCallbacks<Bool>> and conformance CallbacksGesture<A>, type metadata accessor for CallbacksGesture<PressableGestureCallbacks<Bool>>, MEMORY[0x1E697E958]);
    lazy protocol witness table accessor for type LongRemoteTouchGesture and conformance LongRemoteTouchGesture();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>);
    }
  }
}

void type metadata accessor for CallbacksGesture<PressableGestureCallbacks<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<Bool>>)
  {
    type metadata accessor for PressableGestureCallbacks<Bool>(255, &lazy cache variable for type metadata for PressableGestureCallbacks<Bool>, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for PressableGestureCallbacks);
    lazy protocol witness table accessor for type PressableGestureCallbacks<Bool> and conformance PressableGestureCallbacks<A>();
    v1 = type metadata accessor for CallbacksGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PressableGestureCallbacks<Bool> and conformance PressableGestureCallbacks<A>()
{
  result = lazy protocol witness table cache variable for type PressableGestureCallbacks<Bool> and conformance PressableGestureCallbacks<A>;
  if (!lazy protocol witness table cache variable for type PressableGestureCallbacks<Bool> and conformance PressableGestureCallbacks<A>)
  {
    type metadata accessor for PressableGestureCallbacks<Bool>(255, &lazy cache variable for type metadata for PressableGestureCallbacks<Bool>, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for PressableGestureCallbacks);
    result = swift_getWitnessTable(protocol conformance descriptor for PressableGestureCallbacks<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PressableGestureCallbacks<Bool> and conformance PressableGestureCallbacks<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type LongRemoteTouchGesture and conformance LongRemoteTouchGesture()
{
  result = lazy protocol witness table cache variable for type LongRemoteTouchGesture and conformance LongRemoteTouchGesture;
  if (!lazy protocol witness table cache variable for type LongRemoteTouchGesture and conformance LongRemoteTouchGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LongRemoteTouchGesture, &unk_1EFFC2C98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LongRemoteTouchGesture and conformance LongRemoteTouchGesture);
  }

  return result;
}

void type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.dependency(_:)>>.0>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.dependency(_:)>>.0>)
  {
    type metadata accessor for EventFilter<Bool>(255, &lazy cache variable for type metadata for EventFilter<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697DCD8]);
    type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(255);
    lazy protocol witness table accessor for type EventFilter<Bool> and conformance EventFilter<A>();
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>(255);
    type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>(255);
    v1 = MEMORY[0x1E697E860];
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>, MEMORY[0x1E697E860]);
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v2 = type metadata accessor for ModifierGesture();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.dependency(_:)>>.0>);
    }
  }
}

void type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0)
  {
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>(255);
    type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>(255);
    v1 = MEMORY[0x1E697E860];
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>, MEMORY[0x1E697E860]);
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>, v1);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<[EventID : TouchEvent]>, MultiEventListener<TouchEvent>>(255);
    lazy protocol witness table accessor for type CoordinateSpaceGesture<[EventID : TouchEvent]> and conformance CoordinateSpaceGesture<A>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<[EventID : TouchEvent]>, MultiEventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<[EventID : TouchEvent]>, MultiEventListener<TouchEvent>>, MEMORY[0x1E697E860]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0);
    }
  }
}

void type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>(255);
    type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>(255);
    v1 = MEMORY[0x1E697E860];
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>, MEMORY[0x1E697E860]);
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>(255);
    type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>(255);
    v1 = MEMORY[0x1E697E860];
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>, MEMORY[0x1E697E860]);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(255);
    type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>(255);
    type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>(255);
    v1 = MEMORY[0x1E697E860];
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>, MEMORY[0x1E697E860]);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>, v1);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>(255);
    type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>(255);
    v1 = MEMORY[0x1E697E860];
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>, MEMORY[0x1E697E860]);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>(255);
    type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>(255);
    v1 = MEMORY[0x1E697E860];
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>, MEMORY[0x1E697E860]);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, v1);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(255);
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>(255);
    type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>(255);
    v1 = MEMORY[0x1E697E860];
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>, MEMORY[0x1E697E860]);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

void type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>)
  {
    type metadata accessor for PressableGestureCallbacks<Bool>(255, &lazy cache variable for type metadata for MapGesture<TouchEvent, Bool>, &type metadata for TouchEvent, MEMORY[0x1E69E6370], MEMORY[0x1E697DA98]);
    type metadata accessor for EventListener<TouchEvent>(255);
    lazy protocol witness table accessor for type MapGesture<TouchEvent, Bool> and conformance MapGesture<A, B>();
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<TouchEvent> and conformance EventListener<A>, type metadata accessor for EventListener<TouchEvent>, MEMORY[0x1E697E128]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>);
    }
  }
}

void type metadata accessor for PressableGestureCallbacks<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapGesture<TouchEvent, Bool> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<TouchEvent, Bool> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<TouchEvent, Bool> and conformance MapGesture<A, B>)
  {
    type metadata accessor for PressableGestureCallbacks<Bool>(255, &lazy cache variable for type metadata for MapGesture<TouchEvent, Bool>, &type metadata for TouchEvent, MEMORY[0x1E69E6370], MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable(MEMORY[0x1E697DAA0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<TouchEvent, Bool> and conformance MapGesture<A, B>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>)
  {
    type metadata accessor for EventFilter<Bool>(255, &lazy cache variable for type metadata for DurationGesture<TouchEvent>, &type metadata for TouchEvent, MEMORY[0x1E697E6A8]);
    type metadata accessor for EventListener<TouchEvent>(255);
    lazy protocol witness table accessor for type DurationGesture<TouchEvent> and conformance DurationGesture<A>();
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<TouchEvent> and conformance EventListener<A>, type metadata accessor for EventListener<TouchEvent>, MEMORY[0x1E697E128]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>);
    }
  }
}

void type metadata accessor for EventFilter<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type DurationGesture<TouchEvent> and conformance DurationGesture<A>()
{
  result = lazy protocol witness table cache variable for type DurationGesture<TouchEvent> and conformance DurationGesture<A>;
  if (!lazy protocol witness table cache variable for type DurationGesture<TouchEvent> and conformance DurationGesture<A>)
  {
    type metadata accessor for EventFilter<Bool>(255, &lazy cache variable for type metadata for DurationGesture<TouchEvent>, &type metadata for TouchEvent, MEMORY[0x1E697E6A8]);
    result = swift_getWitnessTable(MEMORY[0x1E697E6B0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DurationGesture<TouchEvent> and conformance DurationGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventFilter<Bool> and conformance EventFilter<A>()
{
  result = lazy protocol witness table cache variable for type EventFilter<Bool> and conformance EventFilter<A>;
  if (!lazy protocol witness table cache variable for type EventFilter<Bool> and conformance EventFilter<A>)
  {
    type metadata accessor for EventFilter<Bool>(255, &lazy cache variable for type metadata for EventFilter<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697DCD8]);
    result = swift_getWitnessTable(MEMORY[0x1E697DCE0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EventFilter<Bool> and conformance EventFilter<A>);
  }

  return result;
}

uint64_t static CustomizationBehaviorModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v21 = a2[2];
  v22[0] = v5;
  *(v22 + 12) = *(a2 + 60);
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a2[3];
  v18 = v21;
  v19[0] = v7;
  *(v19 + 12) = *(a2 + 60);
  v8 = *a1;
  v9 = v6;
  v16 = v20[0];
  v17 = v4;
  swift_beginAccess();
  LODWORD(v25[0]) = *(v9 + 16);
  DWORD1(v25[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(v20, v27);
  lazy protocol witness table accessor for type CustomizationBehaviorModifier.ChildEnvironment and conformance CustomizationBehaviorModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v18;
  v24[0] = v19[0];
  *(v24 + 12) = *(v19 + 12);
  v23[0] = v16;
  v23[1] = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 12) = *(v19 + 12);
  v12 = v16;
  v13 = v17;
  v10 = outlined init with copy of _ToolbarInputs(v23, v27);
  a3(v10, &v12);
  v25[2] = v14;
  v26[0] = v15[0];
  *(v26 + 12) = *(v15 + 12);
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ToolbarInputs(v25);
  v27[2] = v18;
  v28[0] = v19[0];
  *(v28 + 12) = *(v19 + 12);
  v27[0] = v16;
  v27[1] = v17;
  return outlined destroy of _ToolbarInputs(v27);
}

double CustomizationBehaviorModifier.ChildEnvironment.value.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.toolbarCustomizationBehavior.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

unint64_t lazy protocol witness table accessor for type ToolbarCustomizationBehavior.Role and conformance ToolbarCustomizationBehavior.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarCustomizationBehavior.Role and conformance ToolbarCustomizationBehavior.Role;
  if (!lazy protocol witness table cache variable for type ToolbarCustomizationBehavior.Role and conformance ToolbarCustomizationBehavior.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarCustomizationBehavior.Role, &type metadata for ToolbarCustomizationBehavior.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarCustomizationBehavior.Role and conformance ToolbarCustomizationBehavior.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomizationBehaviorModifier.ChildEnvironment and conformance CustomizationBehaviorModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type CustomizationBehaviorModifier.ChildEnvironment and conformance CustomizationBehaviorModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type CustomizationBehaviorModifier.ChildEnvironment and conformance CustomizationBehaviorModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomizationBehaviorModifier.ChildEnvironment, &unk_1EFFC2ED8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomizationBehaviorModifier.ChildEnvironment and conformance CustomizationBehaviorModifier.ChildEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneLaunchBehavior.Role and conformance SceneLaunchBehavior.Role()
{
  result = lazy protocol witness table cache variable for type SceneLaunchBehavior.Role and conformance SceneLaunchBehavior.Role;
  if (!lazy protocol witness table cache variable for type SceneLaunchBehavior.Role and conformance SceneLaunchBehavior.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneLaunchBehavior.Role, &type metadata for SceneLaunchBehavior.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneLaunchBehavior.Role and conformance SceneLaunchBehavior.Role);
  }

  return result;
}

void TextFieldLink.init(prompt:label:onSubmit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  outlined consume of Text?(a1, a2, a3, a4);
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void TextFieldLink<>.init(_:prompt:onSubmit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  outlined consume of Text?(a5, a6, a7, a8);

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void TextFieldLink<>.init<A>(_:prompt:onSubmit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  outlined consume of Text?(a2, a3, a4, a5);
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void type metadata completion function for TextFieldLink(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<Locale>.Content(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TextFieldLink(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v10 & 0xF8 | 7;
  if (*(v9 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v9 + 64);
  }

  v13 = v10 | *(v6 + 80);
  if ((v13 & 0x1000F8) != 0 || v12 - ((-41 - v11 - ((((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v11) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v13 & 0xF8 | 7u) + 16) & ~(v13 & 0xF8 | 7u)));
LABEL_30:

    return a1;
  }

  v41 = *(v8 - 8);
  (*(v6 + 16))(a1, a2, v5);
  v16 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v17 + 24) < 0xFFFFFFFFuLL)
  {
    v21 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v21;
  }

  else
  {
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    outlined copy of Text.Storage(*v17, v19, v20);
    *v16 = v18;
    *(v16 + 8) = v19;
    *(v16 + 16) = v20;
    *(v16 + 24) = *(v17 + 24);
  }

  v22 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  v25 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v25 = *v26;
  *(v25 + 8) = *(v26 + 8);
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  v27[1] = v28[1];
  v27[2] = v28[2];
  v29 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  v32 = *(v30 + 8);

  outlined copy of Environment<Selector?>.Content(v31, v32);
  *v29 = v31;
  *(v29 + 8) = v32;
  v33 = ((v28 + 47) & 0xFFFFFFFFFFFFFFF8);
  v34 = v33[v12];
  v35 = v34 - 2;
  if (v34 >= 2)
  {
    if (v12 <= 3)
    {
      v36 = v12;
    }

    else
    {
      v36 = 4;
    }

    if (v36 <= 1)
    {
      if (!v36)
      {
        goto LABEL_27;
      }

      v37 = *v33;
    }

    else if (v36 == 2)
    {
      v37 = *v33;
    }

    else if (v36 == 3)
    {
      v37 = *v33 | (v33[2] << 16);
    }

    else
    {
      v37 = *v33;
    }

    v38 = (v37 | (v35 << (8 * v12))) + 2;
    v34 = v37 + 2;
    if (v12 < 4)
    {
      v34 = v38;
    }
  }

LABEL_27:
  v39 = ((v27 + 47) & 0xFFFFFFFFFFFFFFF8);
  if (v34 != 1)
  {
    *v39 = *v33;
    *(v39 + v12) = 0;
    goto LABEL_30;
  }

  (*(v41 + 16))(v39);
  *(v39 + v12) = 1;
  return a1;
}

double destroy for TextFieldLink(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
  }

  v5 = (((((((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*v5, *(v5 + 8));
  v6 = *(type metadata accessor for Locale() - 8);
  v7 = *(v6 + 80) & 0xF8 | 7;
  v8 = ((v5 + v7 + 9) & ~v7);
  v9 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v9 = *(v6 + 64);
  }

  v10 = v8[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *v8;
    }

    else if (v12 == 2)
    {
      v13 = *v8;
    }

    else if (v12 == 3)
    {
      v13 = *v8 | (v8[2] << 16);
    }

    else
    {
      v13 = *v8;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 + 8);

    v15();
  }

  else
  {
  }

  return result;
}

uint64_t initializeWithCopy for TextFieldLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 24) < 0xFFFFFFFFuLL)
  {
    v12 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v12;
  }

  else
  {
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    outlined copy of Text.Storage(*v8, v10, v11);
    *v7 = v9;
    *(v7 + 8) = v10;
    *(v7 + 16) = v11;
    *(v7 + 24) = *(v8 + 24);
  }

  v13 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  *v13 = *v14;
  v13[1] = v15;
  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v18[1] = v19[1];
  v18[2] = v19[2];
  v20 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 8);

  outlined copy of Environment<Selector?>.Content(v22, v23);
  *v20 = v22;
  *(v20 + 8) = v23;
  v24 = *(type metadata accessor for Locale() - 8);
  v25 = *(v24 + 80) & 0xF8;
  v26 = v25 + 16;
  v27 = v25 + 16 + v20;
  v28 = ~v25 & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 & v28);
  v30 = ((v26 + v21) & v28);
  if (*(v24 + 64) <= 8uLL)
  {
    v31 = 8;
  }

  else
  {
    v31 = *(v24 + 64);
  }

  v32 = v30[v31];
  v33 = v32 - 2;
  if (v32 < 2)
  {
    goto LABEL_21;
  }

  if (v31 <= 3)
  {
    v34 = v31;
  }

  else
  {
    v34 = 4;
  }

  if (v34 <= 1)
  {
    if (!v34)
    {
      goto LABEL_21;
    }

    v35 = *v30;
  }

  else if (v34 == 2)
  {
    v35 = *v30;
  }

  else if (v34 == 3)
  {
    v35 = *v30 | (v30[2] << 16);
  }

  else
  {
    v35 = *v30;
  }

  v36 = (v35 | (v33 << (8 * v31))) + 2;
  v32 = v35 + 2;
  if (v31 < 4)
  {
    v32 = v36;
  }

LABEL_21:
  if (v32 == 1)
  {
    (*(v24 + 16))(v29);
    v37 = 1;
  }

  else
  {
    *v29 = *v30;

    v37 = 0;
  }

  *(v29 + v31) = v37;
  return a1;
}

uint64_t assignWithCopy for TextFieldLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  if (*(v7 + 24) < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v16 = *v8;
      v17 = *(v8 + 8);
      v18 = *(v8 + 16);
      outlined copy of Text.Storage(*v8, v17, v18);
      *v7 = v16;
      *(v7 + 8) = v17;
      *(v7 + 16) = v18;
      *(v7 + 24) = *(v8 + 24);

      goto LABEL_8;
    }
  }

  else
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v10 = *v8;
      v11 = *(v8 + 8);
      v12 = *(v8 + 16);
      outlined copy of Text.Storage(*v8, v11, v12);
      v13 = *v7;
      v14 = *(v7 + 8);
      v15 = *(v7 + 16);
      *v7 = v10;
      *(v7 + 8) = v11;
      *(v7 + 16) = v12;
      outlined consume of Text.Storage(v13, v14, v15);
      *(v7 + 24) = *(v8 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }

  v19 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v19;
LABEL_8:
  v20 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;

  v23 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);

  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v25[1] = v26[1];

  v25[2] = v26[2];

  v27 = (v25 + 31) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v26 + 31) & 0xFFFFFFFFFFFFFFF8;
  v29 = *v28;
  LOBYTE(v25) = *(v28 + 8);
  outlined copy of Environment<Selector?>.Content(*v28, v25);
  v30 = *v27;
  v31 = *(v27 + 8);
  *v27 = v29;
  *(v27 + 8) = v25;
  outlined consume of Environment<Selector?>.Content(v30, v31);
  v32 = type metadata accessor for Locale();
  v33 = *(v32 - 8);
  v34 = *(v33 + 80) & 0xF8;
  v35 = v34 + 16;
  v36 = v34 + 16 + v27;
  v37 = ~v34 & 0xFFFFFFFFFFFFFFF8;
  v38 = (v36 & v37);
  v39 = v35 + v28;
  v40 = (v39 & v37);
  if ((v36 & v37) == (v39 & v37))
  {
    return a1;
  }

  v41 = v32;
  v42 = *(v32 - 8);
  if (*(v33 + 64) <= 8uLL)
  {
    v43 = 8;
  }

  else
  {
    v43 = *(v33 + 64);
  }

  v44 = v38[v43];
  v45 = v44 - 2;
  if (v44 >= 2)
  {
    if (v43 <= 3)
    {
      v46 = v43;
    }

    else
    {
      v46 = 4;
    }

    if (v46 <= 1)
    {
      if (!v46)
      {
        goto LABEL_26;
      }

      v47 = *v38;
    }

    else if (v46 == 2)
    {
      v47 = *v38;
    }

    else if (v46 == 3)
    {
      v47 = *v38 | (v38[2] << 16);
    }

    else
    {
      v47 = *v38;
    }

    v48 = (v47 | (v45 << (8 * v43))) + 2;
    v44 = v47 + 2;
    if (v43 < 4)
    {
      v44 = v48;
    }
  }

LABEL_26:
  if (v44 == 1)
  {
    (*(v33 + 8))(v38, v32);
  }

  else
  {
  }

  v49 = *(v40 + v43);
  v50 = v49 - 2;
  if (v49 < 2)
  {
    goto LABEL_43;
  }

  if (v43 <= 3)
  {
    v51 = v43;
  }

  else
  {
    v51 = 4;
  }

  if (v51 > 1)
  {
    if (v51 == 2)
    {
      v52 = *v40;
    }

    else if (v51 == 3)
    {
      v52 = *v40 | (*(v40 + 2) << 16);
    }

    else
    {
      v52 = *v40;
    }

LABEL_41:
    v53 = (v52 | (v50 << (8 * v43))) + 2;
    v49 = v52 + 2;
    if (v43 < 4)
    {
      v49 = v53;
    }

    goto LABEL_43;
  }

  if (v51)
  {
    v52 = *v40;
    goto LABEL_41;
  }

LABEL_43:
  if (v49 == 1)
  {
    (*(v42 + 16))(v38, v40, v41);
    v38[v43] = 1;
  }

  else
  {
    *v38 = *v40;
    v38[v43] = 0;
  }

  return a1;
}