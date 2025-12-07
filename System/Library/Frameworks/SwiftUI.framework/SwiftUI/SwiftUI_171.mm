uint64_t initializeWithTake for ToolbarViewListVisitor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 72) = *(a2 + 72);
  swift_weakTakeInit();
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6 = a3[18];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = v8[1];
      *v7 = *v8;
      v7[1] = v13;
      *(v7 + 32) = *(v8 + 32);
      *(v7 + 40) = *(v8 + 40);
      *(v7 + 56) = *(v8 + 56);
      v14 = v8[13];
      v7[12] = v8[12];
      v7[13] = v14;
      v7[14] = v8[14];
      *(v7 + 235) = *(v8 + 235);
      v15 = v8[9];
      v7[8] = v8[8];
      v7[9] = v15;
      v16 = v8[11];
      v7[10] = v8[10];
      v7[11] = v16;
      v17 = v8[5];
      v7[4] = v8[4];
      v7[5] = v17;
      v18 = v8[7];
      v7[6] = v8[6];
      v7[7] = v18;
      v19 = v8[17];
      v7[16] = v8[16];
      v7[17] = v19;
      v20 = v8[23];
      v7[22] = v8[22];
      v7[23] = v20;
      v7[24] = v8[24];
      *(v7 + 50) = *(v8 + 50);
      v21 = v8[19];
      v7[18] = v8[18];
      v7[19] = v21;
      v22 = v8[21];
      v7[20] = v8[20];
      v7[21] = v22;
      v23 = *(v8 + 456);
      *(v7 + 440) = *(v8 + 440);
      *(v7 + 456) = v23;
      *(v7 + 472) = *(v8 + 472);
      v24 = *(v8 + 424);
      *(v7 + 408) = *(v8 + 408);
      *(v7 + 424) = v24;
      v7[30] = v8[30];
      *(v7 + 489) = *(v8 + 489);
      v7[32] = v8[32];
      *(v7 + 528) = *(v8 + 528);
      memcpy(v7 + 536, v8 + 536, 0x130uLL);
      v25 = *(v8 + 856);
      *(v7 + 840) = *(v8 + 840);
      *(v7 + 856) = v25;
      *(v7 + 872) = *(v8 + 872);
      *(v7 + 111) = *(v8 + 111);
      *(v7 + 112) = *(v8 + 112);
      *(v7 + 904) = *(v8 + 904);
      *(v7 + 920) = *(v8 + 920);
      *(v7 + 117) = *(v8 + 117);
      *(v7 + 118) = *(v8 + 118);
      *(v7 + 952) = *(v8 + 952);
      *(v7 + 953) = *(v8 + 953);
      v26 = type metadata accessor for PlatformItemList.Item(0);
      v27 = v26[28];
      __dst = v7 + v27;
      v28 = v8 + v27;
      v29 = type metadata accessor for CommandOperation(0);
      v44 = *(v29 - 8);
      if ((*(v44 + 48))(v28, 1, v29))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v28, *(*(v30 - 8) + 64));
      }

      else
      {
        *__dst = *v28;
        v31 = *(v29 + 20);
        v42 = &__dst[v31];
        v43 = &v28[v31];
        v32 = *&v28[v31 + 16];
        *v42 = *&v28[v31];
        *(v42 + 1) = v32;
        v41 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v33 = type metadata accessor for UUID();
        (*(*(v33 - 8) + 32))(&v42[v41], &v43[v41], v33);
        *&__dst[*(v29 + 24)] = *&v28[*(v29 + 24)];
        (*(v44 + 56))();
      }

      *(v7 + v26[29]) = *(v8 + v26[29]);
      *(v7 + v26[30]) = *(v8 + v26[30]);
      *(v7 + v26[31]) = *(v8 + v26[31]);
      *(v7 + v26[32]) = *(v8 + v26[32]);
      *(v7 + v26[33]) = *(v8 + v26[33]);
      *(v7 + v26[34]) = *(v8 + v26[34]);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v7, v8, *(*(v12 - 8) + 64));
    }

    *(v7 + *(v9 + 20)) = *(v8 + *(v9 + 20));
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v34 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v34) = *(a2 + v34);
  v35 = a3[21];
  v36 = a3[22];
  v37 = (a1 + v35);
  v38 = (a2 + v35);
  v39 = v38[1];
  *v37 = *v38;
  v37[1] = v39;
  v37[2] = v38[2];
  *(a1 + v36) = *(a2 + v36);
  *(a1 + a3[23]) = *(a2 + a3[23]);
  return a1;
}

uint64_t assignWithTake for ToolbarViewListVisitor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 72) = *(a2 + 72);
  swift_weakTakeAssign();
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v7;

  v8 = a3[18];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v15 = v13(v10, 1, v11);
  if (v14)
  {
    if (!v15)
    {
      v16 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = *(v10 + 16);
        *v9 = *v10;
        *(v9 + 16) = v17;
        *(v9 + 32) = *(v10 + 32);
        *(v9 + 40) = *(v10 + 40);
        *(v9 + 56) = *(v10 + 56);
        v18 = *(v10 + 208);
        *(v9 + 192) = *(v10 + 192);
        *(v9 + 208) = v18;
        *(v9 + 224) = *(v10 + 224);
        *(v9 + 235) = *(v10 + 235);
        v19 = *(v10 + 144);
        *(v9 + 128) = *(v10 + 128);
        *(v9 + 144) = v19;
        v20 = *(v10 + 176);
        *(v9 + 160) = *(v10 + 160);
        *(v9 + 176) = v20;
        v21 = *(v10 + 80);
        *(v9 + 64) = *(v10 + 64);
        *(v9 + 80) = v21;
        v22 = *(v10 + 112);
        *(v9 + 96) = *(v10 + 96);
        *(v9 + 112) = v22;
        v23 = *(v10 + 272);
        *(v9 + 256) = *(v10 + 256);
        *(v9 + 272) = v23;
        v24 = *(v10 + 368);
        *(v9 + 352) = *(v10 + 352);
        *(v9 + 368) = v24;
        *(v9 + 384) = *(v10 + 384);
        *(v9 + 400) = *(v10 + 400);
        v25 = *(v10 + 304);
        *(v9 + 288) = *(v10 + 288);
        *(v9 + 304) = v25;
        v26 = *(v10 + 336);
        *(v9 + 320) = *(v10 + 320);
        *(v9 + 336) = v26;
        v27 = *(v10 + 456);
        *(v9 + 440) = *(v10 + 440);
        *(v9 + 456) = v27;
        *(v9 + 472) = *(v10 + 472);
        v28 = *(v10 + 424);
        *(v9 + 408) = *(v10 + 408);
        *(v9 + 424) = v28;
        *(v9 + 480) = *(v10 + 480);
        *(v9 + 489) = *(v10 + 489);
        *(v9 + 512) = *(v10 + 512);
        *(v9 + 528) = *(v10 + 528);
        memcpy((v9 + 536), (v10 + 536), 0x130uLL);
        v29 = *(v10 + 856);
        *(v9 + 840) = *(v10 + 840);
        *(v9 + 856) = v29;
        *(v9 + 872) = *(v10 + 872);
        *(v9 + 888) = *(v10 + 888);
        *(v9 + 896) = *(v10 + 896);
        *(v9 + 904) = *(v10 + 904);
        *(v9 + 920) = *(v10 + 920);
        *(v9 + 936) = *(v10 + 936);
        *(v9 + 944) = *(v10 + 944);
        *(v9 + 952) = *(v10 + 952);
        *(v9 + 953) = *(v10 + 953);
        v30 = type metadata accessor for PlatformItemList.Item(0);
        v31 = v30[28];
        __dst = (v9 + v31);
        v32 = (v10 + v31);
        v33 = type metadata accessor for CommandOperation(0);
        v86 = *(v33 - 8);
        if ((*(v86 + 48))(v32, 1, v33))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
          memcpy(__dst, v32, *(*(v34 - 8) + 64));
        }

        else
        {
          *__dst = *v32;
          v56 = *(v33 + 20);
          v83 = &__dst[v56];
          v84 = &v32[v56];
          v57 = *&v32[v56 + 16];
          *v83 = *&v32[v56];
          *(v83 + 1) = v57;
          v82 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v58 = type metadata accessor for UUID();
          (*(*(v58 - 8) + 32))(&v83[v82], &v84[v82], v58);
          *&__dst[*(v33 + 24)] = *&v32[*(v33 + 24)];
          (*(v86 + 56))();
        }

        *(v9 + v30[29]) = *(v10 + v30[29]);
        *(v9 + v30[30]) = *(v10 + v30[30]);
        *(v9 + v30[31]) = *(v10 + v30[31]);
        *(v9 + v30[32]) = *(v10 + v30[32]);
        *(v9 + v30[33]) = *(v10 + v30[33]);
        *(v9 + v30[34]) = *(v10 + v30[34]);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v9, v10, *(*(v16 - 8) + 64));
      }

      *(v9 + *(v11 + 20)) = *(v10 + *(v11 + 20));
      (*(v12 + 56))(v9, 0, 1, v11);
      goto LABEL_23;
    }

LABEL_10:
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    memcpy(v9, v10, *(*(v35 - 8) + 64));
    goto LABEL_23;
  }

  if (v15)
  {
    _s7SwiftUI16CommandOperationVWOhTm_3(v9, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
    goto LABEL_10;
  }

  if (a1 != a2)
  {
    _s7SwiftUI16CommandOperationVWOhTm_3(v9, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
    v36 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 16) = v37;
      *(v9 + 32) = *(v10 + 32);
      *(v9 + 40) = *(v10 + 40);
      *(v9 + 56) = *(v10 + 56);
      v38 = *(v10 + 208);
      *(v9 + 192) = *(v10 + 192);
      *(v9 + 208) = v38;
      *(v9 + 224) = *(v10 + 224);
      *(v9 + 235) = *(v10 + 235);
      v39 = *(v10 + 144);
      *(v9 + 128) = *(v10 + 128);
      *(v9 + 144) = v39;
      v40 = *(v10 + 176);
      *(v9 + 160) = *(v10 + 160);
      *(v9 + 176) = v40;
      v41 = *(v10 + 80);
      *(v9 + 64) = *(v10 + 64);
      *(v9 + 80) = v41;
      v42 = *(v10 + 112);
      *(v9 + 96) = *(v10 + 96);
      *(v9 + 112) = v42;
      v43 = *(v10 + 272);
      *(v9 + 256) = *(v10 + 256);
      *(v9 + 272) = v43;
      v44 = *(v10 + 368);
      *(v9 + 352) = *(v10 + 352);
      *(v9 + 368) = v44;
      *(v9 + 384) = *(v10 + 384);
      *(v9 + 400) = *(v10 + 400);
      v45 = *(v10 + 304);
      *(v9 + 288) = *(v10 + 288);
      *(v9 + 304) = v45;
      v46 = *(v10 + 336);
      *(v9 + 320) = *(v10 + 320);
      *(v9 + 336) = v46;
      v47 = *(v10 + 456);
      *(v9 + 440) = *(v10 + 440);
      *(v9 + 456) = v47;
      *(v9 + 472) = *(v10 + 472);
      v48 = *(v10 + 424);
      *(v9 + 408) = *(v10 + 408);
      *(v9 + 424) = v48;
      *(v9 + 480) = *(v10 + 480);
      *(v9 + 489) = *(v10 + 489);
      *(v9 + 512) = *(v10 + 512);
      *(v9 + 528) = *(v10 + 528);
      memcpy((v9 + 536), (v10 + 536), 0x130uLL);
      v49 = *(v10 + 856);
      *(v9 + 840) = *(v10 + 840);
      *(v9 + 856) = v49;
      *(v9 + 872) = *(v10 + 872);
      *(v9 + 888) = *(v10 + 888);
      *(v9 + 896) = *(v10 + 896);
      *(v9 + 904) = *(v10 + 904);
      *(v9 + 920) = *(v10 + 920);
      *(v9 + 936) = *(v10 + 936);
      *(v9 + 944) = *(v10 + 944);
      *(v9 + 952) = *(v10 + 952);
      *(v9 + 953) = *(v10 + 953);
      v50 = type metadata accessor for PlatformItemList.Item(0);
      v51 = v50[28];
      __dsta = (v9 + v51);
      v52 = (v10 + v51);
      v53 = type metadata accessor for CommandOperation(0);
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v52, 1, v53))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dsta, v52, *(*(v55 - 8) + 64));
      }

      else
      {
        *__dsta = *v52;
        v59 = *(v53 + 20);
        v87 = &__dsta[v59];
        __src = &v52[v59];
        v60 = *&v52[v59 + 16];
        *v87 = *&v52[v59];
        *(v87 + 1) = v60;
        v85 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v61 = type metadata accessor for UUID();
        (*(*(v61 - 8) + 32))(&v87[v85], &__src[v85], v61);
        *&__dsta[*(v53 + 24)] = *&v52[*(v53 + 24)];
        (*(v54 + 56))();
      }

      *(v9 + v50[29]) = *(v10 + v50[29]);
      *(v9 + v50[30]) = *(v10 + v50[30]);
      *(v9 + v50[31]) = *(v10 + v50[31]);
      *(v9 + v50[32]) = *(v10 + v50[32]);
      *(v9 + v50[33]) = *(v10 + v50[33]);
      *(v9 + v50[34]) = *(v10 + v50[34]);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v9, v10, *(*(v36 - 8) + 64));
    }
  }

  v62 = *(v11 + 20);
  v63 = *(v9 + v62);
  *(v9 + v62) = *(v10 + v62);

LABEL_23:
  v64 = a3[19];
  v65 = (a1 + v64);
  v66 = (a2 + v64);
  v68 = *v66;
  v67 = v66[1];
  *v65 = v68;
  v65[1] = v67;

  v69 = a3[20];
  v70 = (a1 + v69);
  v71 = (a2 + v69);
  v73 = *v71;
  v72 = v71[1];
  *v70 = v73;
  v70[1] = v72;

  v74 = a3[21];
  v75 = a1 + v74;
  v76 = a2 + v74;
  if (!*(a1 + v74 + 24))
  {
LABEL_27:
    v79 = *(v76 + 16);
    *v75 = *v76;
    *(v75 + 16) = v79;
    *(v75 + 32) = *(v76 + 32);
    goto LABEL_28;
  }

  if (!*(v76 + 24))
  {
    outlined destroy of MatchedTransitionIdentifier(v75);
    goto LABEL_27;
  }

  __swift_destroy_boxed_opaque_existential_1(v75);
  v77 = *(v76 + 16);
  *v75 = *v76;
  *(v75 + 16) = v77;
  v78 = *(v76 + 40);
  *(v75 + 32) = *(v76 + 32);
  *(v75 + 40) = v78;
LABEL_28:
  v80 = a3[23];
  *(a1 + a3[22]) = *(a2 + a3[22]);
  *(a1 + v80) = *(a2 + v80);

  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ToolbarViewListVisitor.ContinuationMode and conformance ToolbarViewListVisitor.ContinuationMode()
{
  result = lazy protocol witness table cache variable for type ToolbarViewListVisitor.ContinuationMode and conformance ToolbarViewListVisitor.ContinuationMode;
  if (!lazy protocol witness table cache variable for type ToolbarViewListVisitor.ContinuationMode and conformance ToolbarViewListVisitor.ContinuationMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarViewListVisitor.ContinuationMode, &type metadata for ToolbarViewListVisitor.ContinuationMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarViewListVisitor.ContinuationMode and conformance ToolbarViewListVisitor.ContinuationMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions()
{
  result = lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions;
  if (!lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemBridgingOptions, &type metadata for ToolbarItemBridgingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions;
  if (!lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemBridgingOptions, &type metadata for ToolbarItemBridgingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions;
  if (!lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemBridgingOptions, &type metadata for ToolbarItemBridgingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions;
  if (!lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemBridgingOptions, &type metadata for ToolbarItemBridgingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions);
  }

  return result;
}

uint64_t outlined assign with take of ToolbarStorage.GroupItem.CollapsedContent?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ToolbarItemRole.Kind and conformance ToolbarItemRole.Kind()
{
  result = lazy protocol witness table cache variable for type ToolbarItemRole.Kind and conformance ToolbarItemRole.Kind;
  if (!lazy protocol witness table cache variable for type ToolbarItemRole.Kind and conformance ToolbarItemRole.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemRole.Kind, &type metadata for ToolbarItemRole.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemRole.Kind and conformance ToolbarItemRole.Kind);
  }

  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18D00E9C0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for AccessibilityNode();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18D00E9C0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void *specialized Dictionary.optimisticFilter(_:)(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) < 0x41uLL)
  {
    v3 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v9 = 0;
    v44 = v1;
    v45 = 0;
    v42 = 1;
    v43 = 1;
    while (v6)
    {
LABEL_13:
      v11 = __clz(__rbit64(v6)) | (v9 << 6);
      v12 = *(*(v1 + 48) + 4 * v11);
      outlined init with copy of ConfirmationDialog(*(v1 + 56) + 184 * v11, v56);
      v55 = v12;
      v54[0] = v12;
      outlined init with take of ConfirmationDialog(v56, &v54[2]);
      outlined init with copy of BoundInputsView?(v54, &v52, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      LODWORD(v50) = v52;
      outlined init with copy of ConfirmationDialog(v53, &v51);
      outlined init with copy of BoundInputsView?(&v50, &v48, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      v46 = v48;
      outlined init with take of ConfirmationDialog(&v49, v47);
      v13 = v47[0];
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v46, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v50, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v54, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      outlined destroy of ConfirmationDialog(v53);
      if (v13 == 1)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v43 = 0;
        v14 = 1 << v8;
        if (v8 >= 0x40)
        {
          v14 = 0;
        }

        v45 |= v14;
      }

      else
      {
        v42 = 0;
      }

      v6 &= v6 - 1;
      ++v8;
      v1 = v44;
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        if (v43)
        {
          return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC18ConfirmationDialogVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        }

        if (v42)
        {

          return v1;
        }

        v16 = 1 << *(v1 + 32);
        v17 = -1;
        if (v16 < 64)
        {
          v17 = ~(-1 << v16);
        }

        v18 = v17 & *(v1 + 64);
        v19 = (v16 + 63) >> 6;

        v20 = 0;
        v21 = 0;
        v22 = MEMORY[0x1E69E7CC8];
        while (v18)
        {
          v23 = v21;
LABEL_38:
          v26 = __clz(__rbit64(v18));
          v18 &= v18 - 1;
          v27 = v26 | (v23 << 6);
          v28 = *(*(v1 + 48) + 4 * v27);
          outlined init with copy of ConfirmationDialog(*(v1 + 56) + 184 * v27, &v52);
          v54[0] = v28;
          outlined init with take of ConfirmationDialog(&v52, &v54[2]);
LABEL_39:
          outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v54, &v55, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)?);
          if (!v56[2])
          {

            return v22;
          }

          v29 = v55;
          outlined init with take of ConfirmationDialog(v56, v54);
          if (v20 == 0x8000000000000000)
          {
            goto LABEL_57;
          }

          if (v20 < 0x40 && ((v45 >> v20) & 1) != 0)
          {
            outlined init with copy of ConfirmationDialog(v54, &v52);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v50 = v22;
            v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
            v33 = v22[2];
            v34 = (v32 & 1) == 0;
            v35 = __OFADD__(v33, v34);
            v36 = v33 + v34;
            if (v35)
            {
              goto LABEL_58;
            }

            v37 = v32;
            if (v22[3] >= v36)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v41 = v31;
                specialized _NativeDictionary.copy()();
                v31 = v41;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
              v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
              if ((v37 & 1) != (v38 & 1))
              {
                goto LABEL_61;
              }
            }

            v22 = v50;
            if (v37)
            {
              outlined assign with take of ConfirmationDialog(&v52, v50[7] + 184 * v31);
              outlined destroy of ConfirmationDialog(v54);
              ++v20;
            }

            else
            {
              v50[(v31 >> 6) + 8] |= 1 << v31;
              *(v22[6] + 4 * v31) = v29;
              outlined init with take of ConfirmationDialog(&v52, v22[7] + 184 * v31);
              outlined destroy of ConfirmationDialog(v54);
              v39 = v22[2];
              v35 = __OFADD__(v39, 1);
              v40 = v39 + 1;
              if (v35)
              {
                goto LABEL_60;
              }

              v22[2] = v40;
              ++v20;
            }
          }

          else
          {
            outlined destroy of ConfirmationDialog(v54);
            ++v20;
          }
        }

        if (v19 <= v21 + 1)
        {
          v24 = v21 + 1;
        }

        else
        {
          v24 = v19;
        }

        v25 = v24 - 1;
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v23 >= v19)
          {
            v18 = 0;
            v21 = v25;
            memset(v54, 0, 186);
            goto LABEL_39;
          }

          v18 = *(v3 + 8 * v23);
          ++v21;
          if (v18)
          {
            v21 = v23;
            goto LABEL_38;
          }
        }

        __break(1u);
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_13;
      }
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
LABEL_61:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return specialized _NativeDictionary.filter(_:)(a1, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  }

  return result;
}

{
  v1 = a1;
  if (*(a1 + 16) >= 0x41uLL)
  {
    return specialized _NativeDictionary.filter(_:)(a1, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  }

  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v115 = 0;
  v113 = 1;
  v10 = 1;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_8:
  v11 = v9;
LABEL_17:
  v14 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v15 = v14 | (v11 << 6);
  LODWORD(v14) = *(*(v1 + 48) + 4 * v15);
  v16 = *(v1 + 56) + 248 * v15;
  v17 = *(v16 + 32);
  v19 = *v16;
  v18 = *(v16 + 16);
  v140 = *(v16 + 48);
  v139 = v17;
  v137 = v19;
  v138 = v18;
  v20 = *(v16 + 96);
  v22 = *(v16 + 64);
  v21 = *(v16 + 80);
  v144 = *(v16 + 112);
  v143 = v20;
  v141 = v22;
  v142 = v21;
  v23 = *(v16 + 160);
  v25 = *(v16 + 128);
  v24 = *(v16 + 144);
  v148 = *(v16 + 176);
  v147 = v23;
  v145 = v25;
  v146 = v24;
  v27 = *(v16 + 208);
  v26 = *(v16 + 224);
  v28 = *(v16 + 192);
  *&v152 = *(v16 + 240);
  v151 = v26;
  v149 = v28;
  v150 = v27;
  *v153 = v14;
  *&v153[200] = v28;
  *&v153[216] = v27;
  *&v153[232] = v26;
  *&v153[248] = v152;
  *&v153[136] = v25;
  *&v153[152] = v146;
  *&v153[168] = v147;
  *&v153[184] = v148;
  *&v153[72] = v141;
  *&v153[88] = v142;
  *&v153[104] = v143;
  *&v153[120] = v144;
  *&v153[8] = v137;
  *&v153[24] = v138;
  *&v153[40] = v139;
  *&v153[56] = v140;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  outlined init with copy of AlertStorage(&v137, &v134);
  while (1)
  {
    v149 = *&v153[192];
    v150 = *&v153[208];
    v151 = *&v153[224];
    v152 = *&v153[240];
    v145 = *&v153[128];
    v146 = *&v153[144];
    v147 = *&v153[160];
    v148 = *&v153[176];
    v141 = *&v153[64];
    v142 = *&v153[80];
    v143 = *&v153[96];
    v144 = *&v153[112];
    v137 = *v153;
    v138 = *&v153[16];
    v139 = *&v153[32];
    v140 = *&v153[48];
    if (getEnumTag for AccessibilityActionCategory.Category(&v137) == 1)
    {
      break;
    }

    v29 = v153[8];
    v134 = *v153;
    v135[4] = v153[8];
    *&v135[197] = *&v153[201];
    *&v135[213] = *&v153[217];
    *&v135[229] = *&v153[233];
    *&v135[244] = *&v153[248];
    *&v135[133] = *&v153[137];
    *&v135[149] = *&v153[153];
    *&v135[165] = *&v153[169];
    *&v135[181] = *&v153[185];
    *&v135[69] = *&v153[73];
    *&v135[85] = *&v153[89];
    *&v135[101] = *&v153[105];
    *&v135[117] = *&v153[121];
    *&v135[5] = *&v153[9];
    *&v135[21] = *&v153[25];
    *&v135[37] = *&v153[41];
    *&v135[53] = *&v153[57];
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v134, &lazy cache variable for type metadata for (key: ViewIdentity, value: AlertStorage), &type metadata for AlertStorage, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
    if (v29)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      v10 = 0;
      v30 = 1 << v8;
      if (v8 >= 0x40)
      {
        v30 = 0;
      }

      v115 |= v30;
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v113 = 0;
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

LABEL_9:
    if (v7 <= v9 + 1)
    {
      v12 = v9 + 1;
    }

    else
    {
      v12 = v7;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_65;
      }

      if (v11 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v11);
      ++v9;
      if (v6)
      {
        v9 = v11;
        goto LABEL_17;
      }
    }

    _s7SwiftUI12ViewIdentityV_AA12AlertStorageVtSgWOi0_(&v137);
    v6 = 0;
    *&v153[192] = v149;
    *&v153[208] = v150;
    *&v153[224] = v151;
    *&v153[240] = v152;
    *&v153[128] = v145;
    *&v153[144] = v146;
    *&v153[160] = v147;
    *&v153[176] = v148;
    *&v153[64] = v141;
    *&v153[80] = v142;
    *&v153[96] = v143;
    *&v153[112] = v144;
    *v153 = v137;
    *&v153[16] = v138;
    v9 = v13;
    *&v153[32] = v139;
    *&v153[48] = v140;
  }

  if (v10)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC12AlertStorageVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  if (v113)
  {

    return v1;
  }

  v32 = 1 << *(v1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v1 + 64);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  v37 = 0;
  v38 = MEMORY[0x1E69E7CC8];
  v114 = v1;
  while (v34)
  {
    v39 = v37;
LABEL_47:
    v42 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v43 = v42 | (v39 << 6);
    v44 = *(*(v1 + 48) + 4 * v43);
    v45 = *(v1 + 56) + 248 * v43;
    v46 = *(v45 + 48);
    v48 = *v45;
    v47 = *(v45 + 16);
    v119 = *(v45 + 32);
    v120 = v46;
    v117 = v48;
    v118 = v47;
    v49 = *(v45 + 112);
    v51 = *(v45 + 64);
    v50 = *(v45 + 80);
    v123 = *(v45 + 96);
    v124 = v49;
    v121 = v51;
    v122 = v50;
    v52 = *(v45 + 176);
    v54 = *(v45 + 128);
    v53 = *(v45 + 144);
    v127 = *(v45 + 160);
    v128 = v52;
    v125 = v54;
    v126 = v53;
    v56 = *(v45 + 208);
    v55 = *(v45 + 224);
    v57 = *(v45 + 192);
    v132 = *(v45 + 240);
    v130 = v56;
    v131 = v55;
    v129 = v57;
    *&v133[196] = *(v45 + 192);
    *&v133[212] = *(v45 + 208);
    *&v133[228] = *(v45 + 224);
    *&v133[244] = *(v45 + 240);
    *&v133[132] = *(v45 + 128);
    *&v133[148] = *(v45 + 144);
    *&v133[164] = *(v45 + 160);
    *&v133[180] = *(v45 + 176);
    *&v133[68] = *(v45 + 64);
    *&v133[84] = *(v45 + 80);
    *&v133[100] = *(v45 + 96);
    *&v133[116] = *(v45 + 112);
    *&v133[4] = *v45;
    *&v133[20] = *(v45 + 16);
    *&v133[36] = *(v45 + 32);
    *&v133[52] = *(v45 + 48);
    v134 = v44;
    *&v135[192] = *&v133[192];
    *&v135[208] = *&v133[208];
    *&v135[224] = *&v133[224];
    *&v135[236] = *&v133[236];
    *&v135[128] = *&v133[128];
    *&v135[144] = *&v133[144];
    *&v135[160] = *&v133[160];
    *&v135[176] = *&v133[176];
    *&v135[64] = *&v133[64];
    *&v135[80] = *&v133[80];
    *&v135[96] = *&v133[96];
    *&v135[112] = *&v133[112];
    *v135 = *v133;
    *&v135[16] = *&v133[16];
    *&v135[32] = *&v133[32];
    *&v135[48] = *&v133[48];
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    outlined init with copy of AlertStorage(&v117, &v116);
    v58 = v134;
    *&v136[192] = *&v135[192];
    *&v136[208] = *&v135[208];
    *&v136[224] = *&v135[224];
    *&v136[236] = *&v135[236];
    *&v136[128] = *&v135[128];
    *&v136[144] = *&v135[144];
    *&v136[160] = *&v135[160];
    *&v136[176] = *&v135[176];
    *&v136[64] = *&v135[64];
    *&v136[80] = *&v135[80];
    *&v136[96] = *&v135[96];
    *&v136[112] = *&v135[112];
    *v136 = *v135;
    *&v136[16] = *&v135[16];
    v59 = *&v135[32];
    v60 = *&v135[48];
LABEL_48:
    *&v136[32] = v59;
    *&v136[48] = v60;
    *&v135[192] = *&v136[192];
    *&v135[208] = *&v136[208];
    *&v135[224] = *&v136[224];
    *&v135[236] = *&v136[236];
    *&v135[128] = *&v136[128];
    *&v135[144] = *&v136[144];
    *&v135[160] = *&v136[160];
    *&v135[176] = *&v136[176];
    *&v135[64] = *&v136[64];
    *&v135[80] = *&v136[80];
    *&v135[96] = *&v136[96];
    *&v135[112] = *&v136[112];
    *v135 = *v136;
    *&v135[16] = *&v136[16];
    *&v135[32] = v59;
    *&v135[48] = v60;
    v61 = v58;
    v134 = v58;
    if (getEnumTag for AccessibilityActionCategory.Category(&v134) == 1)
    {

      return v38;
    }

    *&v133[192] = *&v136[196];
    *&v133[208] = *&v136[212];
    *&v133[224] = *&v136[228];
    *&v133[240] = *&v136[244];
    *&v133[128] = *&v136[132];
    *&v133[144] = *&v136[148];
    *&v133[160] = *&v136[164];
    *&v133[176] = *&v136[180];
    *&v133[64] = *&v136[68];
    *&v133[80] = *&v136[84];
    *&v133[96] = *&v136[100];
    *&v133[112] = *&v136[116];
    *v133 = *&v136[4];
    *&v133[16] = *&v136[20];
    *&v133[32] = *&v136[36];
    *&v133[48] = *&v136[52];
    if (v36 == 0x8000000000000000)
    {
      goto LABEL_67;
    }

    if (v36 >= 0x40 || ((v115 >> v36) & 1) == 0)
    {
      outlined destroy of AlertStorage(v133);
      goto LABEL_36;
    }

    v112 = v36;
    outlined init with copy of AlertStorage(v133, &v117);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v38;
    v63 = specialized __RawDictionaryStorage.find<A>(_:)(v61);
    v65 = v38[2];
    v66 = (v64 & 1) == 0;
    v67 = __OFADD__(v65, v66);
    v68 = v65 + v66;
    if (v67)
    {
      goto LABEL_68;
    }

    v69 = v64;
    if (v38[3] < v68)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, isUniquelyReferenced_nonNull_native);
      v63 = specialized __RawDictionaryStorage.find<A>(_:)(v61);
      if ((v69 & 1) != (v70 & 1))
      {
        goto LABEL_70;
      }

LABEL_58:
      if (v69)
      {
        goto LABEL_59;
      }

      goto LABEL_61;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_58;
    }

    v96 = v63;
    specialized _NativeDictionary.copy()();
    v63 = v96;
    if (v69)
    {
LABEL_59:
      v38 = v116;
      v71 = v116[7] + 248 * v63;
      v72 = *(v71 + 48);
      v74 = *v71;
      v73 = *(v71 + 16);
      v119 = *(v71 + 32);
      v120 = v72;
      v117 = v74;
      v118 = v73;
      v75 = *(v71 + 112);
      v77 = *(v71 + 64);
      v76 = *(v71 + 80);
      v123 = *(v71 + 96);
      v124 = v75;
      v121 = v77;
      v122 = v76;
      v78 = *(v71 + 176);
      v80 = *(v71 + 128);
      v79 = *(v71 + 144);
      v127 = *(v71 + 160);
      v128 = v78;
      v125 = v80;
      v126 = v79;
      v82 = *(v71 + 208);
      v81 = *(v71 + 224);
      v83 = *(v71 + 192);
      v132 = *(v71 + 240);
      v130 = v82;
      v131 = v81;
      v129 = v83;
      v84 = *v133;
      v85 = *&v133[16];
      v86 = *&v133[48];
      *(v71 + 32) = *&v133[32];
      *(v71 + 48) = v86;
      *v71 = v84;
      *(v71 + 16) = v85;
      v87 = *&v133[64];
      v88 = *&v133[80];
      v89 = *&v133[112];
      *(v71 + 96) = *&v133[96];
      *(v71 + 112) = v89;
      *(v71 + 64) = v87;
      *(v71 + 80) = v88;
      v90 = *&v133[128];
      v91 = *&v133[144];
      v92 = *&v133[176];
      *(v71 + 160) = *&v133[160];
      *(v71 + 176) = v92;
      *(v71 + 128) = v90;
      *(v71 + 144) = v91;
      v93 = *&v133[192];
      v94 = *&v133[208];
      v95 = *&v133[224];
      *(v71 + 240) = *&v133[240];
      *(v71 + 208) = v94;
      *(v71 + 224) = v95;
      *(v71 + 192) = v93;
      outlined destroy of AlertStorage(&v117);
      outlined destroy of AlertStorage(v133);
      v36 = v112;
      goto LABEL_36;
    }

LABEL_61:
    v38 = v116;
    v116[(v63 >> 6) + 8] |= 1 << v63;
    *(v38[6] + 4 * v63) = v61;
    v97 = v38[7] + 248 * v63;
    v98 = *&v133[48];
    v100 = *v133;
    v99 = *&v133[16];
    *(v97 + 32) = *&v133[32];
    *(v97 + 48) = v98;
    *v97 = v100;
    *(v97 + 16) = v99;
    v101 = *&v133[112];
    v103 = *&v133[64];
    v102 = *&v133[80];
    *(v97 + 96) = *&v133[96];
    *(v97 + 112) = v101;
    *(v97 + 64) = v103;
    *(v97 + 80) = v102;
    v104 = *&v133[176];
    v106 = *&v133[128];
    v105 = *&v133[144];
    *(v97 + 160) = *&v133[160];
    *(v97 + 176) = v104;
    *(v97 + 128) = v106;
    *(v97 + 144) = v105;
    v107 = *&v133[192];
    v108 = *&v133[208];
    v109 = *&v133[224];
    *(v97 + 240) = *&v133[240];
    *(v97 + 208) = v108;
    *(v97 + 224) = v109;
    *(v97 + 192) = v107;
    outlined destroy of AlertStorage(v133);
    v110 = v38[2];
    v67 = __OFADD__(v110, 1);
    v111 = v110 + 1;
    if (v67)
    {
      goto LABEL_69;
    }

    v38[2] = v111;
    v36 = v112;
LABEL_36:
    ++v36;
    v1 = v114;
  }

  if (v35 <= v37 + 1)
  {
    v40 = v37 + 1;
  }

  else
  {
    v40 = v35;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v35)
    {
      _s7SwiftUI12ViewIdentityV_AA12AlertStorageVtSgWOi0_(&v134);
      v34 = 0;
      v58 = v134;
      *&v136[192] = *&v135[192];
      *&v136[208] = *&v135[208];
      *&v136[224] = *&v135[224];
      *&v136[236] = *&v135[236];
      *&v136[128] = *&v135[128];
      *&v136[144] = *&v135[144];
      *&v136[160] = *&v135[160];
      *&v136[176] = *&v135[176];
      *&v136[64] = *&v135[64];
      *&v136[80] = *&v135[80];
      *&v136[96] = *&v135[96];
      *&v136[112] = *&v135[112];
      *v136 = *v135;
      *&v136[16] = *&v135[16];
      v59 = *&v135[32];
      v60 = *&v135[48];
      v37 = v41;
      goto LABEL_48;
    }

    v34 = *(v3 + 8 * v39);
    ++v37;
    if (v34)
    {
      v37 = v39;
      goto LABEL_47;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIKitDialogBridge.ActivePresentation(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a2 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 4) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 4))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

void UIKitDialogBridge.updateExistingDialog(allDialogs:id:)(uint64_t a1, unsigned int *a2)
{
  v3 = v2;
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a2), (v6 & 1) != 0))
  {
    outlined init with copy of ConfirmationDialog(*(a1 + 56) + 184 * v5, v16);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  outlined init with copy of BoundInputsView?(v16, v14, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
  if (v15)
  {
    v7 = v14[0];
    outlined destroy of ConfirmationDialog(v14);
  }

  else
  {
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v14, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    v7 = 0;
  }

  swift_beginAccess();
  v8 = *(v3 + 48);
  if (v8)
  {
    outlined init with copy of BoundInputsView?(v16, v12, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    if (v13)
    {
      outlined init with take of ConfirmationDialog(v12, v14);
      v9 = [v8 popoverPresentationController];
      if (v9)
      {
        v10 = v9;
        UIKitDialogBridge.updateAnchor(dialog:presentationController:)(v14, v9);
      }

      outlined destroy of ConfirmationDialog(v14);
    }

    else
    {
      v11 = v8;
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v12, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    }

    if ((v7 ^ (*(v3 + 44) > 1u)))
    {
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v16, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        [v8 dismissViewControllerAnimated:1 completion:0];
        UIKitDialogBridge.reset()();
      }

      outlined init with copy of BoundInputsView?(v16, v14, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
      if (v15)
      {

        outlined destroy of ConfirmationDialog(v14);
        v12[0] = v7;
        dispatch thunk of AnyLocation.set(_:transaction:)();

        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v16, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
      }

      else
      {
        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v16, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);

        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v14, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t UIKitDialogBridge.showNewDialog(_:id:)(uint64_t a1, int *a2)
{
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v72 - v6;
  v8 = type metadata accessor for DialogActionContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a2;
  result = AGWeakAttributeGetAttribute();
  v17 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    result = AGWeakAttributeGetAttribute();
    if (result != v17)
    {
      if (*(v2 + 44) < 2u)
      {
LABEL_56:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v80 = a1;
      v73 = v15;
      MEMORY[0x1EEE9AC00](result);
      type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role)(0, &lazy cache variable for type metadata for (PlatformItemList, PlatformItemList), &type metadata for PlatformItemList);
      static Update.ensure<A>(_:)();
      v72[0] = v83;
      v18 = v82;
      PlatformItemList.mergedContentItem.getter(v83, v14);
      v19 = *v14;
      v20 = *v14;
      _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v14, type metadata accessor for PlatformItemList.Item);
      if (v19)
      {
        v21 = [v20 string];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = *(v2 + 104);
      v82 = *(v2 + 96);
      v83 = v25;

      DialogActionContext.init(visiting:presentationType:environment:actionDelegate:)(v18, 1, &v82, v2, v11);
      type metadata accessor for PlatformAlertController();
      v26 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:0 preferredStyle:0];
      v27 = v80;
      v28 = *(v80 + 120) == 2;
      v81 = v26;
      [v26 setSeverity_];
      v29 = *(v27 + 104);
      if (v29 != 2)
      {
        if (v29)
        {
          v30 = 2;
        }

        else
        {
          v30 = 1;
        }

        [v81 setOverrideUserInterfaceStyle_];
      }

      v72[1] = v18;
      v31 = v81;
      if (*(v80 + 112))
      {

        v33 = UIKitDialogBridge.resolveIcon(_:)(v32);
        [v31 setImage_];
      }

      v34 = swift_allocObject();
      swift_weakInit();
      v35 = &v31[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction];
      v36 = *&v31[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction];
      v37 = *&v31[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction + 8];
      *v35 = partial apply for closure #2 in UIKitDialogBridge.showNewDialog(_:id:);
      v35[1] = v34;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v36, v37);

      if (*(v80 + 64) == 1)
      {
        v38 = MEMORY[0x18D00C850](*(v80 + 48), *(v80 + 56));
        [v81 setTitle_];
      }

      if (v24)
      {

        v39 = MEMORY[0x18D00C850](v22, v24);
      }

      else
      {
        v39 = 0;
      }

      v40 = v81;
      v78 = v2;
      v79 = v24;
      [v81 setMessage_];

      v41 = v11[1];
      v74 = v9;
      v75 = v7;
      v76 = v11;
      v77 = v8;
      if (v41 >> 62)
      {
        v42 = __CocoaSet.count.getter();
        if (v42)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v42)
        {
LABEL_21:
          if (v42 >= 1)
          {
            v43 = 0;
            v44 = *(v80 + 84);
            while (1)
            {
              if ((v41 & 0xC000000000000001) != 0)
              {
                v45 = MEMORY[0x18D00E9C0](v43, v41);
                if ((v44 & 1) == 0)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v45 = *&v41[8 * v43 + 32];
                if ((v44 & 1) == 0)
                {
LABEL_29:
                  if ([v45 style] != 2)
                  {
                    v46 = Color.Resolved.kitColor.getter();
                    objc_opt_self();
                    v47 = swift_dynamicCastObjCClass();
                    if (!v47)
                    {
                    }

                    [v45 _setImageTintColor_];
                    [v45 _setTitleTextColor_];

                    v40 = v81;
                  }
                }
              }

              ++v43;
              [v40 addAction_];

              if (v42 == v43)
              {
                goto LABEL_33;
              }
            }
          }

          __break(1u);
          goto LABEL_54;
        }
      }

LABEL_33:
      v48 = v78;
      v40[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_allowsSecureDrawing] = *(v78 + 88);
      static _GraphInputs.defaultInterfaceIdiom.getter();
      v49 = static Solarium.isEnabled(for:)();
      v50 = v76;
      v51 = v77;
      if (v49)
      {
        [v40 setPreferredAction_];
      }

      v52 = [v40 popoverPresentationController];
      if (v52)
      {
        UIKitDialogBridge.updateAnchor(dialog:presentationController:)(v80, v52);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v54 = Strong;
      v55 = [Strong presentedViewController];
      if (v55)
      {
        v56 = v55;
        if (([v55 isBeingDismissed] & 1) == 0)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v57 = [v56 preferredTransition];
            if (v57)
            {

              _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_2(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
              v58 = swift_dynamicCastClass();
              if (v58)
              {
                v59 = v58;
                v60 = swift_unknownObjectWeakLoadStrong();
                if (v60)
                {
                  v61 = v60;
                  v62 = v56;
                  v63 = [v61 window];
                  if (v63)
                  {
                    v64 = v63;

                    v61 = v64;
                  }

                  else
                  {
                    [v59 setPreferredTransition_];
                  }
                }
              }
            }

            [v54 dismissViewControllerAnimated:1 completion:0];
          }
        }
      }

      v65 = swift_unknownObjectWeakLoadStrong();
      if (!v65)
      {
        goto LABEL_55;
      }

      v66 = v65;

      v67 = v81;
      [v66 presentViewController:v81 animated:1 completion:0];

      swift_beginAccess();
      v68 = *(v48 + 48);
      *(v48 + 48) = v67;

      v69 = v50;
      v70 = v75;
      outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v69, v75, type metadata accessor for DialogActionContext);
      (*(v74 + 56))(v70, 0, 1, v51);
      v71 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
      swift_beginAccess();
      outlined assign with take of DialogActionContext?(v70, v48 + v71);
      result = swift_endAccess();
      *(v48 + 40) = v73;
      *(v48 + 44) = 1;
    }
  }

  return result;
}

void UIKitDialogBridge.updateExistingAlert(allAlerts:id:)(uint64_t a1, unsigned int *a2)
{
  v3 = v2;
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a2), (v6 & 1) != 0))
  {
    v7 = (*(a1 + 56) + 248 * v5);
    v8 = v7[3];
    v10 = *v7;
    v9 = v7[1];
    v24[2] = v7[2];
    v24[3] = v8;
    v24[0] = v10;
    v24[1] = v9;
    v11 = v7[7];
    v13 = v7[4];
    v12 = v7[5];
    v24[6] = v7[6];
    v24[7] = v11;
    v24[4] = v13;
    v24[5] = v12;
    v14 = v7[11];
    v16 = v7[8];
    v15 = v7[9];
    v24[10] = v7[10];
    v24[11] = v14;
    v24[8] = v16;
    v24[9] = v15;
    v18 = v7[13];
    v17 = v7[14];
    v19 = v7[12];
    v25 = *(v7 + 30);
    v24[13] = v18;
    v24[14] = v17;
    v24[12] = v19;
    memmove(&__dst, v7, 0xF8uLL);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v20 = LOBYTE(v24[0]);
    outlined init with copy of AlertStorage(v24, &v43);
    v55 = v39;
    v56 = v40;
    v57 = v41;
    v58 = v42;
    v51 = v35;
    v52 = v36;
    v53 = v37;
    v54 = v38;
    v47 = v31;
    v48 = v32;
    v49 = v33;
    v50 = v34;
    v43 = __dst;
    v44 = v28;
    v45 = v29;
    v46 = v30;
  }

  else
  {
    _s7SwiftUI12AlertStorageVSgWOi0_(&v43);
    v20 = 0;
  }

  swift_beginAccess();
  v21 = *(v3 + 48);
  if (v21)
  {
    if ((v20 ^ (*(v3 + 44) > 1u)))
    {
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v43, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
    }

    else
    {
      v22 = v21;
      v23 = v22;
      if ((v20 & 1) == 0)
      {
        [v22 dismissViewControllerAnimated:1 completion:0];
        UIKitDialogBridge.reset()();
      }

      v39 = v55;
      v40 = v56;
      v41 = v57;
      v42 = v58;
      v35 = v51;
      v36 = v52;
      v37 = v53;
      v38 = v54;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v34 = v50;
      __dst = v43;
      v28 = v44;
      v29 = v45;
      v30 = v46;
      if (_s7SwiftUI12AlertStorageVSgWOg(&__dst) == 1)
      {
      }

      else
      {
        v26 = v20;

        dispatch thunk of AnyLocation.set(_:transaction:)();

        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v43, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t UIKitDialogBridge.showNewAlert(_:id:)(uint64_t a1, int *a2)
{
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v96 = v89 - v5;
  v98 = type metadata accessor for DialogActionContext(0);
  v95 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v99 = (v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 28);
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v102 = *(a1 + 48);
  v97 = v12;
  v13 = *(a1 + 65);
  v15 = *(a1 + 72);
  v14 = *(a1 + 80);
  v92 = *(a1 + 88);
  v93 = v11;
  v100 = *(a1 + 96);
  v16 = *(a1 + 97);
  v17 = *(a1 + 208);
  *&v116[32] = *(a1 + 192);
  *&v116[48] = v17;
  *&v116[64] = *(a1 + 224);
  *&v116[80] = *(a1 + 240);
  v18 = *(a1 + 176);
  *v116 = *(a1 + 160);
  *&v116[16] = v18;
  v94 = v10;
  v19 = *a2;
  result = AGWeakAttributeGetAttribute();
  v21 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    return result;
  }

  result = AGWeakAttributeGetAttribute();
  if (result == v21)
  {
    return result;
  }

  v90 = v19;
  if (*(v101 + 44) < 2u)
  {
LABEL_65:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v89[1] = v14;
  MEMORY[0x1EEE9AC00](result);
  type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role)(0, &lazy cache variable for type metadata for (PlatformItemList, PlatformItemList), &type metadata for PlatformItemList);
  static Update.ensure<A>(_:)();
  v91 = v110;
  v89[3] = v111;
  PlatformItemList.mergedContentItem.getter(v111, v9);
  v22 = *v9;
  v23 = *v9;
  _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v9, type metadata accessor for PlatformItemList.Item);
  if (v22)
  {
    v24 = [v23 string];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = v101;
  v29 = *(v101 + 104);
  v110 = *(v101 + 96);
  *&v111 = v29;

  v30 = v91;

  DialogActionContext.init(visiting:presentationType:environment:actionDelegate:)(v30, 0, &v110, v28, v99);
  type metadata accessor for PlatformAlertController();
  v31 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:0 preferredStyle:1];
  v32 = v16 == 2;
  v33 = v31;
  v34 = v32;
  [v31 setSeverity_];
  if (v13 != 2)
  {
    if (v13)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    [v33 setOverrideUserInterfaceStyle_];
  }

  if (v15)
  {

    v37 = UIKitDialogBridge.resolveIcon(_:)(v36);
    [v33 setImage_];
  }

  v38 = swift_allocObject();
  swift_weakInit();
  v39 = &v33[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction];
  v40 = *&v33[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction];
  v41 = *&v33[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction + 8];
  *v39 = partial apply for closure #2 in UIKitDialogBridge.showNewAlert(_:id:);
  v39[1] = v38;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v40, v41);

  v42 = MEMORY[0x18D00C850](v102, v97);
  [v33 setTitle_];

  if (v27)
  {

    v43 = MEMORY[0x18D00C850](v25, v27);
  }

  else
  {
    v43 = 0;
  }

  v44 = v100;
  [v33 setMessage_];

  v45 = v99[1];
  v89[2] = v27;
  if (v45 >> 62)
  {
    v46 = __CocoaSet.count.getter();
    v102 = v33;
    if (v46)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v102 = v33;
    if (v46)
    {
LABEL_22:
      if (v46 >= 1)
      {
        v47 = 0;
        while (1)
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x18D00E9C0](v47, v45);
            if ((v44 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v48 = *(v45 + 8 * v47 + 32);
            if ((v44 & 1) == 0)
            {
LABEL_30:
              if ([v48 style] != 2)
              {
                v49 = Color.Resolved.kitColor.getter();
                objc_opt_self();
                v50 = swift_dynamicCastObjCClass();
                if (!v50)
                {
                }

                [v48 _setImageTintColor_];
                [v48 _setTitleTextColor_];

                v33 = v102;
                v44 = v100;
              }
            }
          }

          ++v47;
          [v33 addAction_];

          if (v46 == v47)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
      goto LABEL_62;
    }
  }

LABEL_34:
  v51 = *(v99 + *(v98 + 32));
  if (v51 >> 62)
  {
    v52 = __CocoaSet.count.getter();
    if (v52)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
LABEL_36:
      if (v52 < 1)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v53 = 0;
      do
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x18D00E9C0](v53, v51);
        }

        else
        {
          v54 = *(v51 + 8 * v53 + 32);
        }

        v55 = v54;
        ++v53;
        v56 = swift_allocObject();
        *(v56 + 16) = v55;
        *(&v112 + 1) = partial apply for closure #3 in UIKitDialogBridge.showNewAlert(_:id:);
        *&v113 = v56;
        v110 = MEMORY[0x1E69E9820];
        *&v111 = 1107296256;
        *(&v111 + 1) = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        *&v112 = &block_descriptor_80;
        v57 = _Block_copy(&v110);
        v58 = v55;

        [v102 addTextFieldWithConfigurationHandler_];
        _Block_release(v57);
      }

      while (v52 != v53);
    }
  }

  v59 = v102;
  if (*v116)
  {
    v110 = *v116;
    v113 = *&v116[40];
    v114 = *&v116[56];
    v115 = *&v116[72];
    v111 = *&v116[8];
    v112 = *&v116[24];
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_2(0, &lazy cache variable for type metadata for UIHostingController<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for UIHostingController);
    v61 = objc_allocWithZone(v60);
    v107 = *&v116[48];
    v108 = *&v116[64];
    v109 = *&v116[80];
    v104 = *v116;
    v105 = *&v116[16];
    v106 = *&v116[32];
    outlined init with copy of BoundInputsView?(v116, v103, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, type metadata accessor for AnyAccessibilityValue?);
    outlined init with copy of BoundInputsView(&v104, v103);
    v62 = specialized UIHostingController.init(rootView:)(&v110);
    v63 = *&v62[direct field offset for UIHostingController.host];
    v64 = objc_opt_self();
    v65 = v63;
    v66 = [v64 clearColor];
    [v65 setBackgroundColor_];

    [v59 setContentViewController_];
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v116, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, type metadata accessor for AnyAccessibilityValue?);
  }

  v59[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_allowsSecureDrawing] = *(v101 + 88);
  [v59 setPreferredAction_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_63;
  }

  v68 = Strong;
  v69 = [Strong presentedViewController];
  if (v69)
  {
    v70 = v69;
    if (([v69 isBeingDismissed] & 1) == 0)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        v71 = [v70 preferredTransition];
        if (v71)
        {

          _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_2(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
          v72 = swift_dynamicCastClass();
          if (v72)
          {
            v73 = v72;
            v74 = swift_unknownObjectWeakLoadStrong();
            if (v74)
            {
              v75 = v74;
              v76 = v70;
              v77 = [v75 window];
              if (v77)
              {
                v78 = v77;

                v75 = v78;
              }

              else
              {
                [v73 setPreferredTransition_];
              }

              v59 = v102;
            }
          }
        }

        [v68 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  v79 = swift_unknownObjectWeakLoadStrong();
  if (!v79)
  {
    goto LABEL_64;
  }

  v80 = v79;

  v81 = swift_allocObject();
  v82 = v101;
  swift_weakInit();
  v83 = swift_allocObject();
  *(v83 + 16) = v81;
  v84 = v93;
  *(v83 + 24) = v94;
  *(v83 + 28) = v84;
  *&v106 = partial apply for closure #4 in UIKitDialogBridge.showNewAlert(_:id:);
  *(&v106 + 1) = v83;
  *&v104 = MEMORY[0x1E69E9820];
  *(&v104 + 1) = 1107296256;
  *&v105 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v105 + 1) = &block_descriptor_26_0;
  v85 = _Block_copy(&v104);

  [v80 presentViewController:v59 animated:1 completion:v85];
  _Block_release(v85);

  swift_beginAccess();
  v86 = *(v82 + 48);
  *(v82 + 48) = v59;

  v87 = v96;
  outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v99, v96, type metadata accessor for DialogActionContext);
  (*(v95 + 56))(v87, 0, 1, v98);
  v88 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
  swift_beginAccess();
  outlined assign with take of DialogActionContext?(v87, v82 + v88);
  result = swift_endAccess();
  *(v82 + 40) = v90;
  *(v82 + 44) = 0;
  return result;
}

double UIKitDialogBridge.updateAnchor(dialog:presentationController:)(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [a2 setBarButtonItem_];
  }

  else
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      [a2 setSourceView_];
      (*(*(v8 + 8) + 8))(ObjectType);
      ViewGraph.transform.getter();

      type metadata accessor for CGRect(0);
      Anchor.convert(to:)();
      v10 = v14;
      v11 = v15;
      v12 = fmin(v14, v15) < 0.0;
      if (v14 <= 0.0 && v12)
      {
        v10 = 0.0;
      }

      if (v12 && v15 <= 0.0)
      {
        v11 = 0.0;
      }

      [a2 setSourceRect_];
      static _GraphInputs.defaultInterfaceIdiom.getter();
      if (static Solarium.isEnabled(for:)())
      {
        [a2 setCanOverlapSourceViewRect_];
      }
    }
  }

  return result;
}

uint64_t UIKitDialogBridge.reset()()
{
  v1 = v0;
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  UIKitDialogBridge.stopTrackingUpdates()();
  v5 = *(v0 + 40);
  if (!*(v0 + 44))
  {
    swift_beginAccess();
    v9 = *(v0 + 80);
    if (v9)
    {
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v11 & 1) != 0))
      {
        v12 = (*(v9 + 56) + 248 * v10);
        v14 = v12[2];
        v13 = v12[3];
        v15 = v12[1];
        v45 = *v12;
        v46 = v15;
        v47 = v14;
        v48 = v13;
        v16 = v12[4];
        v17 = v12[5];
        v18 = v12[7];
        v51 = v12[6];
        v52 = v18;
        v49 = v16;
        v50 = v17;
        v19 = v12[8];
        v20 = v12[9];
        v21 = v12[11];
        v55 = v12[10];
        v56 = v21;
        v53 = v19;
        v54 = v20;
        v22 = v12[12];
        v23 = v12[13];
        v24 = v12[14];
        v60 = *(v12 + 30);
        v58 = v23;
        v59 = v24;
        v57 = v22;
        memmove(&v61, v12, 0xF8uLL);
        destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
        outlined init with copy of AlertStorage(&v45, &v29);
      }

      else
      {
        _s7SwiftUI12AlertStorageVSgWOi0_(&v61);
      }

      v57 = v73;
      v58 = v74;
      v59 = v75;
      v60 = v76;
      v53 = v69;
      v54 = v70;
      v55 = v71;
      v56 = v72;
      v49 = v65;
      v50 = v66;
      v51 = v67;
      v52 = v68;
      v45 = v61;
      v46 = v62;
      v47 = v63;
      v48 = v64;
      if (_s7SwiftUI12AlertStorageVSgWOg(&v45) != 1)
      {
        v41 = v73;
        v42 = v74;
        v43 = v75;
        v37 = v69;
        v38 = v70;
        v39 = v71;
        v40 = v72;
        v33 = v65;
        v34 = v66;
        v35 = v67;
        v36 = v68;
        v29 = v61;
        v30 = v62;
        v44 = v76;
        v31 = v63;
        v32 = v64;

        swift_endAccess();
        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v29, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
        v77 = 0;
        goto LABEL_20;
      }

      v41 = v73;
      v42 = v74;
      v43 = v75;
      v44 = v76;
      v37 = v69;
      v38 = v70;
      v39 = v71;
      v40 = v72;
      v33 = v65;
      v34 = v66;
      v35 = v67;
      v36 = v68;
      v29 = v61;
      v30 = v62;
      v31 = v63;
      v32 = v64;
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v29, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
    }

    goto LABEL_18;
  }

  if (*(v0 + 44) == 1)
  {
    swift_beginAccess();
    v6 = *(v0 + 64);
    if (v6)
    {
      if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) != 0))
      {
        outlined init with copy of ConfirmationDialog(*(v6 + 56) + 184 * v7, &v61);
        if (v62)
        {

          _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v61, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
          swift_endAccess();
          LOBYTE(v45) = 0;
LABEL_20:
          dispatch thunk of AnyLocation.set(_:transaction:)();

          goto LABEL_21;
        }
      }

      else
      {
        LOWORD(v72) = 0;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
      }

      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v61, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    }

LABEL_18:
    swift_endAccess();
  }

LABEL_21:
  *(v1 + 40) = 0;
  *(v1 + 44) = 2;
  swift_beginAccess();
  v25 = *(v1 + 48);
  *(v1 + 48) = 0;

  swift_beginAccess();
  *(v1 + 64) = 0;

  v26 = type metadata accessor for DialogActionContext(0);
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  v27 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
  swift_beginAccess();
  outlined assign with take of DialogActionContext?(v4, v1 + v27);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastPlatformItemList) = 0;
}

uint64_t UIKitDialogBridge.resolveIcon(_:)(uint64_t a1)
{
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for Text.Style?, MEMORY[0x1E6981008]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 96);
  v8 = *(v1 + 104);
  *&v22[0] = v9;
  *(&v22[0] + 1) = v8;
  v10 = type metadata accessor for Text.Style();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);

  MEMORY[0x18D008220](v11);
  ImageResolutionContext.init(environment:textStyle:transaction:)();
  Image.resolve(in:)();
  if (v24)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    outlined destroy of Image.Resolved(v22);
  }

  else
  {
    v18 = v22[4];
    v19[0] = v23[0];
    *(v19 + 12) = *(v23 + 12);
    v14 = v22[0];
    v15 = v22[1];
    v16 = v22[2];
    v17 = v22[3];
    outlined init with copy of GraphicsImage(v22, v20);
    v12 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, 0);
    outlined destroy of Image.Resolved(v22);
    v20[4] = v18;
    v21[0] = v19[0];
    *(v21 + 12) = *(v19 + 12);
    v20[0] = v14;
    v20[1] = v15;
    v20[2] = v16;
    v20[3] = v17;
    outlined destroy of GraphicsImage(v20);
  }

  _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v7, MEMORY[0x1E697FE88]);
  return v12;
}

void UIKitDialogBridge.updateAlertActionsEnabled(_:)(unint64_t a1)
{
  v3 = type metadata accessor for PlatformItemList.Item(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v39 - v8);
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for DialogActionContext(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + 44))
  {
    swift_beginAccess();
    v17 = *(v1 + 48);
    if (v17)
    {
      v45 = v16;
      v18 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
      swift_beginAccess();
      outlined init with copy of DialogActionContext?(v1 + v18, v12);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        outlined destroy of CustomRecursiveStringConvertible?(v12, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
        return;
      }

      v46 = v9;
      v44 = v6;
      v19 = v45;
      outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v12, v45, type metadata accessor for DialogActionContext);
      v20 = v17;
      v21 = [v20 actions];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v22 >> 62)
      {
LABEL_36:
        v23 = __CocoaSet.count.getter();
        if (v23)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
LABEL_8:
          v39 = v20;
          v40 = v1;
          v43 = v4;
          if (v23 < 1)
          {
            __break(1u);
            return;
          }

          v41 = 0;
          v4 = 0;
          v19 = *(v19 + v13[7]);
          v42 = a1;
          while (1)
          {
            v24 = (v22 & 0xC000000000000001) != 0 ? MEMORY[0x18D00E9C0](v4, v22) : *(v22 + 8 * v4 + 32);
            v13 = v24;
            if (*(v19 + 16))
            {
              v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
              if (v26)
              {
                v1 = *(*(v19 + 56) + 8 * v25);
                if ((v1 & 0x8000000000000000) == 0 && v1 < *(a1 + 16))
                {
                  break;
                }
              }
            }

LABEL_11:
            if (v23 == ++v4)
            {

              _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v45, type metadata accessor for DialogActionContext);
              if (v41)
              {
                *(v40 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastPlatformItemList) = a1;
              }

              return;
            }
          }

          v27 = a1;
          a1 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v20 = *(v43 + 72) * v1;
          v28 = v46;
          _s7SwiftUI16PlatformItemListV0D0VWOcTm_3(v27 + a1 + v20, v46, type metadata accessor for PlatformItemList.Item);
          if (v1 >= *(*v45 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v29 = v44;
          _s7SwiftUI16PlatformItemListV0D0VWOcTm_3(*v45 + a1 + v20, v44, type metadata accessor for PlatformItemList.Item);
          v30 = *v29;
          v31 = *v28;
          if (*v29)
          {
            if (v31)
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
              v32 = v31;
              v33 = v30;
              v34 = static NSObject.== infix(_:_:)();

              if (v34)
              {
LABEL_23:
                v35 = *(v44 + 528);
                v36 = *(v46 + 528);
                if (v35 == 4)
                {
                  v37 = v36 == 4;
                }

                else
                {
                  v37 = v35 == v36;
                }

                a1 = v42;
                if (v37)
                {
                  v38 = [v13 isEnabled];
                  if (v38 != *(v46 + 56))
                  {
                    [v13 setEnabled_];
                    v41 = 1;
                  }
                }

                goto LABEL_32;
              }
            }
          }

          else if (!v31)
          {
            goto LABEL_23;
          }

          a1 = v42;
LABEL_32:

          _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v44, type metadata accessor for PlatformItemList.Item);
          _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v46, type metadata accessor for PlatformItemList.Item);
          goto LABEL_11;
        }
      }

      _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v19, type metadata accessor for DialogActionContext);
    }
  }
}

void UIKitDialogBridge.startTrackingUpdates(actions:)(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  static Semantics.v5.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    Attribute = AGWeakAttributeGetAttribute();
    v3 = *MEMORY[0x1E698D3F8];
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      v4 = Attribute;
      v5 = AGGraphGetAttributeSubgraph();
      IsValid = AGSubgraphIsValid();

      if (IsValid)
      {
        MEMORY[0x18D00ABE0]();
        v7 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_actionsChangeDetector;
        swift_beginAccess();
        if (AGWeakAttributeGetAttribute() == v3)
        {
          swift_endAccess();
          v8 = AGGraphGetAttributeSubgraph();
          AGGraphClearUpdate();
          v9 = AGSubgraphGetCurrent();
          AGSubgraphSetCurrent();
          swift_weakInit();
          v14 = v4;
          protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
          lazy protocol witness table accessor for type UIKitDialogBridge.UpdateAlertActions and conformance UIKitDialogBridge.UpdateAlertActions();
          Attribute.init<A>(body:value:flags:update:)();
          outlined destroy of weak AnyGestureResponder?(v13);
          AGGraphGetFlags();
          AGGraphSetFlags();
          v10 = AGCreateWeakAttribute();
          swift_beginAccess();
          *(v1 + v7) = v10;
          AGSubgraphSetCurrent();

          AGGraphSetUpdate();
        }

        else
        {
          v11 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v11);
          MEMORY[0x1EEE9AC00](v12);
          AGGraphMutateAttribute();
          AGGraphGetFlags();
          AGGraphSetFlags();
        }

        static Update.end()();
      }
    }
  }
}

void UIKitDialogBridge.stopTrackingUpdates()()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_actionsChangeDetector);
  swift_beginAccess();
  Attribute = AGWeakAttributeGetAttribute();
  v3 = *MEMORY[0x1E698D3F8];
  swift_endAccess();
  if (Attribute != v3)
  {
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  swift_beginAccess();
  *v1 = 0;
}

uint64_t protocol witness for StatefulRule.updateValue() in conformance UIKitDialogBridge.UpdateAlertActions()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    AGGraphGetValue();

    UIKitDialogBridge.updateAlertActionsEnabled(_:)(v1);
  }

  return result;
}

double protocol witness for ObservedAttribute.destroy() in conformance UIKitDialogBridge.UpdateAlertActions()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = (Strong + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_actionsChangeDetector);
    swift_beginAccess();
    *v2 = 0;
  }

  return result;
}

double protocol witness for static _AttributeBody._destroySelf(_:) in conformance UIKitDialogBridge.UpdateAlertActions(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_actionsChangeDetector);
    swift_beginAccess();
    *v3 = 0;
  }

  return result;
}

void closure #1 in UIKitDialogBridge.showNewDialog(_:id:)(void *a3@<X8>)
{
  AGGraphClearUpdate();
  v4 = *AGGraphGetValue();

  v5 = *AGGraphGetValue();

  AGGraphSetUpdate();
  *a3 = v4;
  a3[1] = v5;
}

double closure #2 in UIKitDialogBridge.showNewDialog(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    static Semantics.v4.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0;

      onNextMainRunLoop(do:)();
    }

    else
    {
      dismissActually #1 () in UIKitDialogBridge.dismiss(triggerCancellation:)(v5, 0);
    }
  }

  return result;
}

void closure #3 in UIKitDialogBridge.showNewAlert(_:id:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v1[8] = 0;
  PlatformTextFieldCoordinator.configure(field:)(v1);
  outlined destroy of weak FallbackResponderProvider?(v1);
  PlatformTextFieldCoordinator.update()();
}

double closure #4 in UIKitDialogBridge.showNewAlert(_:id:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    UIKitDialogBridge.startTrackingUpdates(actions:)(a2);
  }

  return result;
}

Swift::Void __swiftcall UIKitDialogBridge.performDialogAction(_:)(UIAlertAction a1)
{
  v3 = type metadata accessor for PlatformItemList.Item(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = (v1 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext);
  swift_beginAccess();
  v8 = type metadata accessor for DialogActionContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) || (v10 = *(v7 + *(v8 + 28)), !*(v10 + 16)) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1.super.isa), (v12 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastPlatformItemList))
  {
    v14 = *(v1 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastPlatformItemList);
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v9(v7, 1, v8))
  {
    return;
  }

  v14 = *v7;

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v13 >= *(v14 + 16))
  {
LABEL_15:
    __break(1u);
    return;
  }

  _s7SwiftUI16PlatformItemListV0D0VWOcTm_3(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v6, type metadata accessor for PlatformItemList.Item);

  v15 = *(v6 + 456);
  v24 = *(v6 + 440);
  v25 = v15;
  v26 = v6[472];
  v16 = *(v6 + 424);
  v22 = *(v6 + 408);
  v23 = v16;
  outlined init with copy of BoundInputsView?(&v22, v21, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, type metadata accessor for AnyAccessibilityValue?);
  _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v6, type metadata accessor for PlatformItemList.Item);
  v17 = *(&v22 + 1);
  if (*(&v22 + 1) != 1)
  {
    v18 = v23;
    outlined copy of AppIntentExecutor?(*(&v22 + 1), v23);
    v19 = _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v22, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, type metadata accessor for AnyAccessibilityValue?);
    if (v17)
    {
      v17(v19);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17, v18);
    }
  }
}

uint64_t dismissActually #1 () in UIKitDialogBridge.dismiss(triggerCancellation:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for DialogActionContext.CancelType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = *(a1 + 40);
  if (*(a1 + 44))
  {
    if (*(a1 + 44) == 1)
    {
      swift_beginAccess();
      v15 = *(a1 + 64);
      if (v15)
      {
        if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v17 & 1) != 0))
        {
          outlined init with copy of ConfirmationDialog(*(v15 + 56) + 184 * v16, &v77);
          if (v78)
          {

            _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v77, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
            swift_endAccess();
            LOBYTE(v61) = 0;
            goto LABEL_26;
          }
        }

        else
        {
          LOWORD(v88) = 0;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v77 = 0u;
        }

        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v77, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
      }

      swift_endAccess();
      if ((a2 & 1) == 0)
      {
        return UIKitDialogBridge.reset()();
      }

      goto LABEL_21;
    }

LABEL_20:
    if ((a2 & 1) == 0)
    {
      return UIKitDialogBridge.reset()();
    }

    goto LABEL_21;
  }

  swift_beginAccess();
  v18 = *(a1 + 80);
  if (!v18)
  {
LABEL_19:
    swift_endAccess();
    goto LABEL_20;
  }

  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v20 & 1) != 0))
  {
    v21 = (*(v18 + 56) + 248 * v19);
    v23 = v21[2];
    v22 = v21[3];
    v24 = v21[1];
    v61 = *v21;
    v62 = v24;
    v63 = v23;
    v64 = v22;
    v25 = v21[4];
    v26 = v21[5];
    v27 = v21[7];
    v67 = v21[6];
    v68 = v27;
    v65 = v25;
    v66 = v26;
    v28 = v21[8];
    v29 = v21[9];
    v30 = v21[11];
    v71 = v21[10];
    v72 = v30;
    v69 = v28;
    v70 = v29;
    v31 = v21[12];
    v32 = v21[13];
    v33 = v21[14];
    v76 = *(v21 + 30);
    v74 = v32;
    v75 = v33;
    v73 = v31;
    memmove(&v77, v21, 0xF8uLL);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    outlined init with copy of AlertStorage(&v61, &v45);
  }

  else
  {
    _s7SwiftUI12AlertStorageVSgWOi0_(&v77);
  }

  v73 = v89;
  v74 = v90;
  v75 = v91;
  v76 = v92;
  v69 = v85;
  v70 = v86;
  v71 = v87;
  v72 = v88;
  v65 = v81;
  v66 = v82;
  v67 = v83;
  v68 = v84;
  v61 = v77;
  v62 = v78;
  v63 = v79;
  v64 = v80;
  if (_s7SwiftUI12AlertStorageVSgWOg(&v61) == 1)
  {
    v57 = v89;
    v58 = v90;
    v59 = v91;
    v60 = v92;
    v53 = v85;
    v54 = v86;
    v55 = v87;
    v56 = v88;
    v49 = v81;
    v50 = v82;
    v51 = v83;
    v52 = v84;
    v45 = v77;
    v46 = v78;
    v47 = v79;
    v48 = v80;
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v45, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
    goto LABEL_19;
  }

  v57 = v89;
  v58 = v90;
  v59 = v91;
  v53 = v85;
  v54 = v86;
  v55 = v87;
  v56 = v88;
  v49 = v81;
  v50 = v82;
  v51 = v83;
  v52 = v84;
  v45 = v77;
  v46 = v78;
  v60 = v92;
  v47 = v79;
  v48 = v80;

  swift_endAccess();
  _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v45, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
  v93 = 0;
LABEL_26:
  dispatch thunk of AnyLocation.set(_:transaction:)();

  if ((a2 & 1) == 0)
  {
    return UIKitDialogBridge.reset()();
  }

LABEL_21:
  v34 = a1 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
  swift_beginAccess();
  v35 = type metadata accessor for DialogActionContext(0);
  if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
  {
    v36 = *(v35 + 24);
    if (!(*(v5 + 48))(v34 + v36, 1, v4))
    {
      _s7SwiftUI16PlatformItemListV0D0VWOcTm_3(v34 + v36, v10, type metadata accessor for DialogActionContext.CancelType);
      outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v10, v7, type metadata accessor for DialogActionContext.CancelType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v7, v13, type metadata accessor for PlatformItemList.Item);
        v37 = type metadata accessor for PlatformItemList.Item(0);
        (*(*(v37 - 8) + 56))(v13, 0, 1, v37);
      }

      else
      {
        _s7SwiftUI12ViewIdentityV3key_AA18ConfirmationDialogV5valuetWObTm_0(v7, v13, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, type metadata accessor for DialogActionContext?);
      }

      v38 = type metadata accessor for PlatformItemList.Item(0);
      if ((*(*(v38 - 8) + 48))(v13, 1, v38) == 1)
      {
        outlined destroy of CustomRecursiveStringConvertible?(v13, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      }

      else
      {
        LOBYTE(v81) = v13[472];
        v39 = *(v13 + 456);
        v79 = *(v13 + 440);
        v80 = v39;
        v40 = *(v13 + 424);
        v77 = *(v13 + 408);
        v78 = v40;
        outlined init with copy of BoundInputsView?(&v77, &v61, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, type metadata accessor for AnyAccessibilityValue?);
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v13, type metadata accessor for PlatformItemList.Item);
        v41 = *(&v77 + 1);
        if (*(&v77 + 1) != 1)
        {
          v42 = v78;
          outlined copy of AppIntentExecutor?(*(&v77 + 1), v78);
          v43 = _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v77, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, type metadata accessor for AnyAccessibilityValue?);
          if (v41)
          {
            v41(v43);
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v41, v42);
          }
        }
      }
    }
  }

  return UIKitDialogBridge.reset()();
}

uint64_t UIKitDialogBridge.__ivar_destroyer()
{
  MEMORY[0x18D011290](v0 + 16);
  outlined destroy of weak FallbackResponderProvider?(v0 + 24);

  outlined destroy of CustomRecursiveStringConvertible?(v0 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
}

id PlatformAlertController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlatformAlertController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for UIKitDialogBridge.ActivePresentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for UIKitDialogBridge.ActivePresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for UIKitDialogBridge.ActivePresentation(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for UIKitDialogBridge.ActivePresentation(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t UIKitDialogBridge.descriptionChildren.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (v1 && (type metadata accessor for PlatformAlertController(), type metadata accessor for CustomRecursiveStringConvertible(), v2 = v1, (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
      v5 = (*(v4 + 32))(v3, v4);
      __swift_destroy_boxed_opaque_existential_1(&v7);
      return v5;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  outlined destroy of CustomRecursiveStringConvertible?(&v7, &lazy cache variable for type metadata for CustomRecursiveStringConvertible?, type metadata accessor for CustomRecursiveStringConvertible);
  return MEMORY[0x1E69E7CC0];
}

uint64_t UIKitDialogBridge.descriptionAttributes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<(String, String)>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v3 = v1;
  v4 = [v3 title];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  v10 = [v3 message];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, inited);
    *(inited + 16) = 2;
    *(inited + 64) = 0x6567617373656DLL;
    *(inited + 72) = 0xE700000000000000;
    *(inited + 80) = v12;
    *(inited + 88) = v14;
  }

  v15 = [v3 preferredAction];
  if (!v15)
  {
LABEL_13:
    v26 = [v3 severity];

    if (v26 == 1)
    {
      v28 = *(inited + 16);
      v27 = *(inited + 24);
      if (v28 >= v27 >> 1)
      {
        inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, inited);
      }

      *(inited + 16) = v28 + 1;
      v29 = (inited + 32 * v28);
      v29[4] = 0x7974697265766573;
      v29[5] = 0xE800000000000000;
      v29[6] = 0x6C61636974697263;
      v29[7] = 0xE800000000000000;
    }

    v9 = specialized _arrayForceCast<A, B>(_:)(inited);

    return v9;
  }

  v16 = v15;
  v17 = [v3 actions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Collection<>.firstIndex(of:)(v16, v18);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    v24 = *(inited + 16);
    v23 = *(inited + 24);
    if (v24 >= v23 >> 1)
    {
      inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, inited);
    }

    *(inited + 16) = v24 + 1;
    v25 = (inited + 32 * v24);
    v25[4] = 0x6572726566657270;
    v25[5] = 0xEF6E6F6974634164;
    v25[6] = 0;
    v25[7] = 0xE000000000000000;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CustomRecursiveStringConvertible.descriptionName.getter in conformance UIKitDialogBridge()
{
  if (*(*v0 + 44) == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x7472656C41;
  }
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12ViewIdentityVAH12AlertStorageVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI12kl6V_AI12mN4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n03_s7i74UI17UIKitDialogBridgeC20preferencesDidChangeyyAA16PreferenceValuesVFSbAA12kl10V3key_AA12mN69V5valuet_tcfu0_33_14f01767912779fd21523009348d4058AhI_AkLtSbTf3nnpk_nTf1nnc_nTm(v12, v7, v5, a3);
  result = MEMORY[0x18D0110E0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12ViewIdentityVAH12AlertStorageVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI12kl6V_AI12mN4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n03_s7i74UI17UIKitDialogBridgeC20preferencesDidChangeyyAA16PreferenceValuesVFSbAA12kl10V3key_AA12mN69V5valuet_tcfu0_33_14f01767912779fd21523009348d4058AhI_AkLtSbTf3nnpk_nTf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog)?)
  {
    type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)(255, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog)?);
    }
  }
}

uint64_t outlined assign with take of DialogActionContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double _s7SwiftUI12AlertStorageVSgWOi0_(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t _s7SwiftUI12AlertStorageVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UIKitDialogBridge.UpdateAlertActions and conformance UIKitDialogBridge.UpdateAlertActions()
{
  result = lazy protocol witness table cache variable for type UIKitDialogBridge.UpdateAlertActions and conformance UIKitDialogBridge.UpdateAlertActions;
  if (!lazy protocol witness table cache variable for type UIKitDialogBridge.UpdateAlertActions and conformance UIKitDialogBridge.UpdateAlertActions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitDialogBridge.UpdateAlertActions, &unk_1F0006CE0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitDialogBridge.UpdateAlertActions and conformance UIKitDialogBridge.UpdateAlertActions);
  }

  return result;
}

uint64_t outlined init with copy of DialogActionContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for UIKitDialogBridge.UpdateAlertActions(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for UIKitDialogBridge.UpdateAlertActions(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithTake for UIKitDialogBridge.UpdateAlertActions(uint64_t a1, uint64_t a2)
{
  result = swift_weakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for UIKitDialogBridge.UpdateAlertActions(uint64_t a1, uint64_t a2)
{
  result = swift_weakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for NavigationRequest(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    switch(*(a2 + 96))
    {
      case 0:
        v4 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v4;
        *(a1 + 96) = 0;
        goto LABEL_58;
      case 1:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = a2[4];
        *(a1 + 96) = 1;

        goto LABEL_58;
      case 2:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v9 = a2[5];
        *(a1 + 40) = v9;
        *(a1 + 48) = a2[6];
        v10 = **(v9 - 8);

        v10(a1 + 16, a2 + 2, v9);
        *(a1 + 56) = a2[7];
        *(a1 + 64) = a2[8];
        *(a1 + 96) = 2;
        break;
      case 3:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 96) = 3;

        break;
      case 4:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 4;
        goto LABEL_22;
      case 5:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 5;
        goto LABEL_22;
      case 6:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 96) = 6;

        goto LABEL_58;
      case 0xA:
        v12 = a2[3];
        *(a1 + 24) = v12;
        *(a1 + 32) = a2[4];
        (**(v12 - 8))(a1, a2);
        *(a1 + 40) = a2[5];
        *(a1 + 48) = a2[6];
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v8 = 10;
        goto LABEL_22;
      case 0xB:
        v16 = a2[3];
        *(a1 + 24) = v16;
        *(a1 + 32) = a2[4];
        (**(v16 - 8))(a1, a2);
        *(a1 + 96) = 11;
        break;
      case 0xC:
        *a1 = *a2;
        v15 = a2[4];

        if (v15)
        {
          *(a1 + 32) = v15;
          *(a1 + 40) = a2[5];
          (**(v15 - 8))(a1 + 8, a2 + 1, v15);
        }

        else
        {
          v35 = *(a2 + 1);
          v36 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v35;
          *(a1 + 24) = v36;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v37 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v37;
        v25 = 12;
        goto LABEL_57;
      case 0xD:
        *a1 = *a2;
        v6 = a2[4];

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = a2[5];
          (**(v6 - 8))(a1 + 8, a2 + 1, v6);
        }

        else
        {
          v26 = *(a2 + 1);
          v27 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v28 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v28;
        *(a1 + 88) = *(a2 + 88);
        v25 = 13;
        goto LABEL_57;
      case 0xE:
        *a1 = *a2;
        v11 = a2[4];

        if (v11)
        {
          *(a1 + 32) = v11;
          *(a1 + 40) = a2[5];
          (**(v11 - 8))(a1 + 8, a2 + 1, v11);
        }

        else
        {
          v29 = *(a2 + 1);
          v30 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 96) = 14;
        break;
      case 0x11:
        v7 = a2[3];
        *(a1 + 24) = v7;
        *(a1 + 32) = a2[4];
        (**(v7 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = a2[6];
        *(a1 + 56) = a2[7];
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v8 = 17;
LABEL_22:
        *(a1 + 96) = v8;

        goto LABEL_58;
      case 0x12:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v5 = a2[5];

        if (v5)
        {
          *(a1 + 40) = v5;
          *(a1 + 48) = a2[6];
          (**(v5 - 8))(a1 + 16, a2 + 2, v5);
        }

        else
        {
          v22 = *(a2 + 1);
          v23 = *(a2 + 2);
          *(a1 + 48) = a2[6];
          *(a1 + 16) = v22;
          *(a1 + 32) = v23;
        }

        if (a2[8] == 1)
        {
          *(a1 + 56) = *(a2 + 7);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = a2[8];
        }

        *(a1 + 72) = a2[9];
        v24 = a2[11];
        *(a1 + 80) = a2[10];
        *(a1 + 88) = v24;
        v25 = 18;
LABEL_57:
        *(a1 + 96) = v25;
LABEL_58:

        break;
      case 0x13:
        v13 = a2[3];
        if (v13)
        {
          *(a1 + 24) = v13;
          *(a1 + 32) = a2[4];
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v31 = *a2;
          v32 = *(a2 + 1);
          *(a1 + 32) = a2[4];
          *a1 = v31;
          *(a1 + 16) = v32;
        }

        if (a2[6] == 1)
        {
          *(a1 + 40) = *(a2 + 5);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = a2[6];
        }

        *(a1 + 56) = a2[7];
        *(a1 + 96) = 19;
        break;
      case 0x15:
        if (*a2)
        {
          v14 = a2[1];
          *a1 = *a2;
          *(a1 + 8) = v14;
        }

        else
        {
          *a1 = *a2;
        }

        v33 = a2[2];
        if (v33)
        {
          v34 = a2[3];
          *(a1 + 16) = v33;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = *(a2 + 1);
        }

        *(a1 + 96) = 21;
        break;
      default:
        v17 = *a2;
        v18 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v18;
        *a1 = v17;
        v19 = *(a2 + 3);
        v20 = *(a2 + 4);
        v21 = *(a2 + 5);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v20;
        *(a1 + 80) = v21;
        *(a1 + 48) = v19;
        break;
    }
  }

  v38 = *(a2 + 13);
  v39 = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v39;
  *(a1 + 104) = v38;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = a2[20];

  return a1;
}

uint64_t assignWithTake for NavigationRequest(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    v4 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v4;
    *(a1 + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    v6 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for NavigationRequest(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 168) = 1;
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
      result = 0.0;
      *(a1 + 120) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 136) = 2 * -a2;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for NavigationRequest.Action(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0x16)
    {
      v4 = *a1 + 22;
    }

    switch(v4)
    {
      case 0u:
        goto LABEL_32;
      case 1u:

        goto LABEL_32;
      case 2u:

        __swift_destroy_boxed_opaque_existential_1((a1 + 16));
        break;
      case 3u:

        break;
      case 4u:
      case 5u:

        goto LABEL_32;
      case 6u:

        goto LABEL_32;
      case 0xAu:
      case 0x11u:
        __swift_destroy_boxed_opaque_existential_1(a1);

        goto LABEL_32;
      case 0xBu:
        __swift_destroy_boxed_opaque_existential_1(a1);
        break;
      case 0xCu:
      case 0xDu:

        if (*(a1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 8));
        }

        if (*(a1 + 56) != 1)
        {
        }

        goto LABEL_32;
      case 0xEu:

        if (*(a1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 8));
        }

        v5 = *(a1 + 56);
        goto LABEL_27;
      case 0x12u:

        if (*(a1 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 16));
        }

        if (*(a1 + 64) != 1)
        {
        }

        goto LABEL_32;
      case 0x13u:
        if (*(a1 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v5 = *(a1 + 48);
LABEL_27:
        if (v5 == 1)
        {
          break;
        }

        goto LABEL_32;
      case 0x15u:
        if (*a1)
        {
        }

        if (*(a1 + 16))
        {
LABEL_32:
        }

        break;
      default:
        break;
    }

    v6 = *(a2 + 96);
    if (v6 >= 0x16)
    {
      v6 = *a2 + 22;
    }

    switch(v6)
    {
      case 0u:
        v7 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v7;
        *(a1 + 96) = 0;

        return a1;
      case 1u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = a2[4];
        *(a1 + 96) = 1;

        goto LABEL_59;
      case 2u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v15 = a2[5];
        *(a1 + 40) = v15;
        *(a1 + 48) = a2[6];
        v16 = **(v15 - 8);

        v16(a1 + 16, a2 + 2, v15);
        *(a1 + 56) = a2[7];
        *(a1 + 64) = a2[8];
        v9 = 2;
        goto LABEL_99;
      case 3u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 96) = 3;

        return a1;
      case 4u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v12 = 4;
        goto LABEL_63;
      case 5u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v12 = 5;
        goto LABEL_63;
      case 6u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 96) = 6;

LABEL_59:

        return a1;
      case 7u:
        v17 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *a1 = v17;
        v9 = 7;
        goto LABEL_99;
      case 8u:
        *a1 = *a2;
        v9 = 8;
        goto LABEL_99;
      case 9u:
        v14 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *a1 = v14;
        v9 = 9;
        goto LABEL_99;
      case 0xAu:
        v22 = a2[3];
        *(a1 + 24) = v22;
        *(a1 + 32) = a2[4];
        (**(v22 - 8))(a1, a2);
        *(a1 + 40) = a2[5];
        *(a1 + 48) = a2[6];
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v12 = 10;
        goto LABEL_63;
      case 0xBu:
        v11 = a2[3];
        *(a1 + 24) = v11;
        *(a1 + 32) = a2[4];
        (**(v11 - 8))(a1, a2);
        v9 = 11;
        goto LABEL_99;
      case 0xCu:
        *a1 = *a2;
        v13 = a2[4];

        if (v13)
        {
          *(a1 + 32) = v13;
          *(a1 + 40) = a2[5];
          (**(v13 - 8))(a1 + 8, a2 + 1, v13);
        }

        else
        {
          v31 = *(a2 + 1);
          v32 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v31;
          *(a1 + 24) = v32;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v33 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v33;
        v34 = 12;
        goto LABEL_93;
      case 0xDu:
        *a1 = *a2;
        v20 = a2[4];

        if (v20)
        {
          *(a1 + 32) = v20;
          *(a1 + 40) = a2[5];
          (**(v20 - 8))(a1 + 8, a2 + 1, v20);
        }

        else
        {
          v37 = *(a2 + 1);
          v38 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v37;
          *(a1 + 24) = v38;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v39 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v39;
        *(a1 + 88) = *(a2 + 88);
        v34 = 13;
        goto LABEL_93;
      case 0xEu:
        *a1 = *a2;
        v10 = a2[4];

        if (v10)
        {
          *(a1 + 32) = v10;
          *(a1 + 40) = a2[5];
          (**(v10 - 8))(a1 + 8, a2 + 1, v10);
        }

        else
        {
          v29 = *(a2 + 1);
          v30 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        *(a1 + 72) = *(a2 + 72);
        v9 = 14;
        goto LABEL_99;
      case 0xFu:
        *a1 = *a2;
        v9 = 15;
        goto LABEL_99;
      case 0x10u:
        v8 = *a2;
        *(a1 + 7) = *(a2 + 7);
        *a1 = v8;
        v9 = 16;
        goto LABEL_99;
      case 0x11u:
        v18 = a2[3];
        *(a1 + 24) = v18;
        *(a1 + 32) = a2[4];
        (**(v18 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = a2[6];
        *(a1 + 56) = a2[7];
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v12 = 17;
LABEL_63:
        *(a1 + 96) = v12;

        return a1;
      case 0x12u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v21 = a2[5];

        if (v21)
        {
          *(a1 + 40) = v21;
          *(a1 + 48) = a2[6];
          (**(v21 - 8))(a1 + 16, a2 + 2, v21);
        }

        else
        {
          v40 = *(a2 + 1);
          v41 = *(a2 + 2);
          *(a1 + 48) = a2[6];
          *(a1 + 16) = v40;
          *(a1 + 32) = v41;
        }

        if (a2[8] == 1)
        {
          *(a1 + 56) = *(a2 + 7);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = a2[8];
        }

        *(a1 + 72) = a2[9];
        v42 = a2[11];
        *(a1 + 80) = a2[10];
        *(a1 + 88) = v42;
        v34 = 18;
LABEL_93:
        *(a1 + 96) = v34;

        return a1;
      case 0x13u:
        v28 = a2[3];
        if (v28)
        {
          *(a1 + 24) = v28;
          *(a1 + 32) = a2[4];
          (**(v28 - 8))(a1, a2);
        }

        else
        {
          v43 = *a2;
          v44 = *(a2 + 1);
          *(a1 + 32) = a2[4];
          *a1 = v43;
          *(a1 + 16) = v44;
        }

        if (a2[6] == 1)
        {
          *(a1 + 40) = *(a2 + 5);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = a2[6];
        }

        *(a1 + 56) = a2[7];
        v9 = 19;
        goto LABEL_99;
      case 0x14u:
        *a1 = *a2;
        v9 = 20;
        goto LABEL_99;
      case 0x15u:
        if (*a2)
        {
          v19 = a2[1];
          *a1 = *a2;
          *(a1 + 8) = v19;
        }

        else
        {
          *a1 = *a2;
        }

        v35 = a2[2];
        if (v35)
        {
          v36 = a2[3];
          *(a1 + 16) = v35;
          *(a1 + 24) = v36;
        }

        else
        {
          *(a1 + 16) = *(a2 + 1);
        }

        v9 = 21;
LABEL_99:
        *(a1 + 96) = v9;
        break;
      default:
        v23 = *a2;
        v24 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v24;
        *a1 = v23;
        v25 = *(a2 + 3);
        v26 = *(a2 + 4);
        v27 = *(a2 + 5);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v26;
        *(a1 + 80) = v27;
        *(a1 + 48) = v25;
        break;
    }
  }

  return a1;
}

uint64_t assignWithTake for NavigationRequest.Action(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0x16)
    {
      v4 = *a1 + 22;
    }

    switch(v4)
    {
      case 0u:
        goto LABEL_32;
      case 1u:

        goto LABEL_32;
      case 2u:

        __swift_destroy_boxed_opaque_existential_1((a1 + 16));
        break;
      case 3u:

        break;
      case 4u:
      case 5u:

        goto LABEL_32;
      case 6u:

        goto LABEL_32;
      case 0xAu:
      case 0x11u:
        __swift_destroy_boxed_opaque_existential_1(a1);

        goto LABEL_32;
      case 0xBu:
        __swift_destroy_boxed_opaque_existential_1(a1);
        break;
      case 0xCu:
      case 0xDu:

        if (*(a1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 8));
        }

        if (*(a1 + 56) != 1)
        {
        }

        goto LABEL_32;
      case 0xEu:

        if (*(a1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 8));
        }

        v5 = *(a1 + 56);
        goto LABEL_27;
      case 0x12u:

        if (*(a1 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 16));
        }

        if (*(a1 + 64) != 1)
        {
        }

        goto LABEL_32;
      case 0x13u:
        if (*(a1 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v5 = *(a1 + 48);
LABEL_27:
        if (v5 == 1)
        {
          break;
        }

        goto LABEL_32;
      case 0x15u:
        if (*a1)
        {
        }

        if (*(a1 + 16))
        {
LABEL_32:
        }

        break;
      default:
        break;
    }

    v6 = *(a2 + 96);
    if (v6 >= 0x16)
    {
      v6 = *a2 + 22;
    }

    switch(v6)
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 96) = 0;
        return a1;
      case 1u:
        v16 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v16;
        *(a1 + 32) = *(a2 + 32);
        v7 = 1;
        goto LABEL_60;
      case 2u:
        v13 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v13;
        *(a1 + 64) = *(a2 + 64);
        v14 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v14;
        v7 = 2;
        goto LABEL_60;
      case 3u:
        v15 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v15;
        v7 = 3;
        goto LABEL_60;
      case 4u:
        *a1 = *a2;
        *(a1 + 16) = *(a2 + 16);
        v7 = 4;
        goto LABEL_60;
      case 5u:
        *a1 = *a2;
        *(a1 + 16) = *(a2 + 16);
        v7 = 5;
        goto LABEL_60;
      case 6u:
        *a1 = *a2;
        *(a1 + 16) = *(a2 + 16);
        v7 = 6;
        goto LABEL_60;
      case 7u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v7 = 7;
        goto LABEL_60;
      case 8u:
        *a1 = *a2;
        v7 = 8;
        goto LABEL_60;
      case 9u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v7 = 9;
        goto LABEL_60;
      case 0xAu:
        v25 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v25;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 42) = *(a2 + 42);
        v7 = 10;
        goto LABEL_60;
      case 0xBu:
        v10 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v10;
        *(a1 + 32) = *(a2 + 32);
        v7 = 11;
        goto LABEL_60;
      case 0xCu:
        v11 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v11;
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = *(a2 + 80);
        v12 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v12;
        v7 = 12;
        goto LABEL_60;
      case 0xDu:
        v20 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v20;
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 73) = *(a2 + 73);
        v21 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v21;
        v7 = 13;
        goto LABEL_60;
      case 0xEu:
        v8 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v8;
        *(a1 + 57) = *(a2 + 57);
        v9 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v9;
        v7 = 14;
        goto LABEL_60;
      case 0xFu:
        *a1 = *a2;
        v7 = 15;
        goto LABEL_60;
      case 0x10u:
        *a1 = *a2;
        *(a1 + 7) = *(a2 + 7);
        v7 = 16;
        goto LABEL_60;
      case 0x11u:
        v17 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v17;
        *(a1 + 64) = *(a2 + 64);
        v18 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v18;
        v7 = 17;
        goto LABEL_60;
      case 0x12u:
        v22 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v22;
        v23 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v23;
        v24 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v24;
        v7 = 18;
        goto LABEL_60;
      case 0x13u:
        v29 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v29;
        v30 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v30;
        v7 = 19;
        goto LABEL_60;
      case 0x14u:
        *a1 = *a2;
        v7 = 20;
        goto LABEL_60;
      case 0x15u:
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        v7 = 21;
LABEL_60:
        *(a1 + 96) = v7;
        break;
      default:
        v26 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v26;
        *(a1 + 96) = *(a2 + 96);
        v27 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v27;
        v28 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v28;
        break;
    }
  }

  return a1;
}

uint64_t storeEnumTagSinglePayload for NavigationRequest.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE9)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 234;
    if (a3 >= 0xEA)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEA)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for NavigationRequest.Action(uint64_t a1)
{
  result = *(a1 + 96);
  if (result >= 0x16)
  {
    return (*a1 + 22);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationRequest.Action(uint64_t result, unsigned int a2)
{
  if (a2 > 0x15)
  {
    v2 = a2 - 22;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 22;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

__n128 static NavigationRequest.editingChanged<A>(forSelectionType:list:newValue:)@<Q0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *(a4 + 104) = *a1;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 96) = 8;
  *(a4 + 120) = v5;
  *(a4 + 136) = v6 & 1 | 0x4000000000000000;
  *(a4 + 144) = v7;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  return result;
}

__n128 static NavigationRequest.updateView<A>(_:from:identifier:shouldTargetSourceColumn:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = specialized AnyNavigationLinkPresentedView.init<A>(_:)(a1, a5);
  outlined init with copy of NavigationLinkSelectionIdentifier(a3, a6 + 8);
  *(a6 + 72) = a4;
  *(a6 + 96) = 14;
  v10 = *(a2 + 16);
  *(a6 + 104) = *a2;
  *(a6 + 120) = v10;
  result = *(a2 + 32);
  *(a6 + 136) = result;
  *(a6 + 152) = 0;
  *(a6 + 160) = 0;
  return result;
}

__n128 static NavigationRequest.programmaticallyPresentView<A>(_:from:transaction:depth:identifier:dismiss:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = specialized AnyNavigationLinkPresentedView.init<A>(_:)(a1, a8);
  *(a9 + 8) = a4;
  outlined init with copy of NavigationLinkSelectionIdentifier(a5, a9 + 16);
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = 18;

  v15 = Transaction.disablesAnimations.getter();
  v16 = *(a2 + 16);
  *(a9 + 104) = *a2;
  *(a9 + 120) = v16;
  result = *(a2 + 32);
  *(a9 + 136) = result;
  *(a9 + 152) = v15 & 1;
  *(a9 + 160) = 0;
  return result;
}

void NavigationRequest.KeyKind.previous.getter(void *a1@<X8>)
{
  v3 = v1[1];
  v2 = v1[2];
  v4 = v1[4] >> 62;
  if (!v4)
  {
    v9 = *v1;
    goto LABEL_7;
  }

  if (v4 == 1 && v1[2] != 6)
  {
    v9 = v1[1];
    v3 = v1[2];
    v2 = v1[3];
LABEL_7:
    v10 = v3;
    v8 = 0x1FFFFFFFELL;
    if (v10 > 2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      if ((v10 - 3) < 2)
      {
        goto LABEL_15;
      }

      v6 = 2;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      if (!v10)
      {
        goto LABEL_15;
      }

      v6 = v10 != 1 && v2 == 3;
    }

    v8 = 0;
    v5 = v9;
    v7 = v2;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0x1FFFFFFFELL;
LABEL_15:
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = 0;
  a1[4] = v8;
  a1[5] = 0;
}

uint64_t NavigationRequest.TargetedRequest.targeted(to:action:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *a1;
  v15 = a1[1];
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  outlined init with copy of NavigationRequest(v3, v20);
  if (v6 >> 1 == 0xFFFFFFFF)
  {
    v14 = *(v3 + 168);
    v15 = *(v3 + 184);
    v6 = *(v3 + 200);
    v7 = *(v3 + 208);
  }

  outlined init with copy of NavigationRequest.Action?(a2, v16);
  if (v17 == 255)
  {
    outlined init with copy of NavigationRequest.Action?(v3 + 216, v18);
    if (v17 != 255)
    {
      outlined destroy of ToolbarItemPlacement.Role?(v16, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    v18[4] = v16[4];
    v18[5] = v16[5];
    v19 = v17;
    v18[0] = v16[0];
    v18[1] = v16[1];
    v18[2] = v16[2];
    v18[3] = v16[3];
  }

  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 280) = 0u;
  *(a3 + 296) = 0u;
  *(a3 + 264) = 0u;
  *(a3 + 312) = -1;
  v8 = v20[9];
  *(a3 + 128) = v20[8];
  *(a3 + 144) = v8;
  *(a3 + 160) = v21;
  v9 = v20[5];
  *(a3 + 64) = v20[4];
  *(a3 + 80) = v9;
  v10 = v20[7];
  *(a3 + 96) = v20[6];
  *(a3 + 112) = v10;
  v11 = v20[1];
  *a3 = v20[0];
  *(a3 + 16) = v11;
  v12 = v20[3];
  *(a3 + 32) = v20[2];
  *(a3 + 48) = v12;
  *(a3 + 184) = v15;
  *(a3 + 168) = v14;
  *(a3 + 200) = v6;
  *(a3 + 208) = v7;
  return outlined assign with take of NavigationRequest.Action?(v18, a3 + 216);
}

uint64_t static NavigationRequest.setInitialPossibilities<A>(_:stack:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v15);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  result = (*(v13 + 32))(v18 + v17, v16, a5);
  *a7 = partial apply for closure #1 in static NavigationRequest.setInitialPossibilities<A>(_:stack:);
  *(a7 + 8) = v18;
  *(a7 + 96) = 0;
  *(a7 + 104) = a2;
  *(a7 + 112) = a3;
  *(a7 + 160) = 0;
  *(a7 + 120) = a4;
  *(a7 + 128) = 0;
  *(a7 + 136) = 0;
  *(a7 + 144) = 0;
  *(a7 + 152) = 0;
  return result;
}

unint64_t NavigationRequest.description.getter()
{
  _StringGuts.grow(_:)(43);

  v1 = NavigationRequest.Action.description.getter();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](0x203A79656B5B205DLL, 0xE800000000000000);
  v2 = v0[17] >> 62;
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = 0xE500000000000000;
      v3 = 0x74696C7073;
      goto LABEL_7;
    }

    v3 = NavigationState.ListKey.description.getter();
  }

  else
  {
    v3 = NavigationState.StackContent.Key.debugDescription.getter(v0[13], v0[14]);
  }

  v5 = v4;
LABEL_7:
  MEMORY[0x18D00C9B0](v3, v5);

  MEMORY[0x18D00C9B0](93, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

__n128 static NavigationRequest.presentView<A>(_:from:identifier:binding:shouldTargetSourceColumn:transaction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = specialized AnyNavigationLinkPresentedView.init<A>(_:)(a1, a10);
  outlined init with copy of NavigationLinkSelectionIdentifier(a3, a9 + 8);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  *(a9 + 72) = partial apply for closure #1 in View.actionSheet(isPresented:content:);
  *(a9 + 80) = v17;
  *(a9 + 88) = a7;
  *(a9 + 96) = 13;

  v18 = Transaction.disablesAnimations.getter();
  v19 = Transaction.animation.getter();
  v20 = *(a2 + 16);
  *(a9 + 104) = *a2;
  *(a9 + 120) = v20;
  result = *(a2 + 32);
  *(a9 + 136) = result;
  *(a9 + 152) = v18 & 1;
  *(a9 + 160) = v19;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NavigationRequest.KeyKind()
{
  v1 = v0[4] >> 62;
  if (!v1)
  {
    return NavigationState.StackContent.Key.debugDescription.getter(*v0, v0[1]);
  }

  if (v1 == 1)
  {
    return NavigationState.ListKey.description.getter();
  }

  return 0x74696C7073;
}

uint64_t NavigationRequest.Action.equivalenceClass.getter()
{
  outlined init with copy of NavigationRequest.Action(v0, &v3);
  result = 25;
  switch(v15)
  {
    case 0:
      outlined destroy of NavigationRequest.Action(&v3);
      return 5;
    case 1:
    case 4:
      outlined destroy of NavigationRequest.Action(&v3);
      return 20;
    case 2:
      outlined destroy of ToolbarItemPlacement.Role?(&v3, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
      return 20;
    case 3:
    case 5:
      outlined destroy of NavigationRequest.Action(&v3);
      return 15;
    case 6:
      outlined destroy of NavigationRequest.Action(&v3);
      return 30;
    case 7:
      return 30;
    case 8:
      return result;
    case 9:
      return 60;
    case 10:
    case 17:

      outlined destroy of AnyNavigationLinkPresentedValue(&v3);
      return 40;
    case 13:

      outlined destroy of NavigationLinkSelectionIdentifier(&v4);
      return 40;
    case 14:

      outlined destroy of NavigationLinkSelectionIdentifier(&v4);
      return 80;
    case 18:

      outlined destroy of NavigationLinkSelectionIdentifier(&v5);
      return 50;
    case 19:
      outlined destroy of NavigationRequest.Action(&v3);
      return 50;
    case 20:
      return 70;
    case 21:
      outlined destroy of NavigationRequest.Action(&v3);
      return 80;
    case 22:
      result = v8 | v3 | v9 | v14 | v13 | v12 | v11 | v10 | v7 | v6 | v5 | v4;
      if (!result)
      {
        return result;
      }

      v2 = v9 | v8 | v14 | v13 | v12 | v11 | v10 | v7 | v6 | v5 | v4;
      if (v3 == 1 && !v2)
      {
        return 6;
      }

      if (v3 == 4 && !v2)
      {
        return 70;
      }

LABEL_22:
      outlined destroy of NavigationRequest.Action(&v3);
      return 0x7FFFFFFFFFFFFFFFLL;
    default:
      goto LABEL_22;
  }
}

uint64_t NavigationRequest.debugDescription.getter()
{
  _StringGuts.grow(_:)(105);
  MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD584F0);
  v1 = NavigationRequest.Action.description.getter();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](0x203A79656B5B205DLL, 0xE800000000000000);
  v2 = *(v0 + 136) >> 62;
  if (!v2)
  {
    v3 = NavigationState.StackContent.Key.debugDescription.getter(*(v0 + 104), *(v0 + 112));
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = NavigationState.ListKey.description.getter();
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0xE500000000000000;
  v3 = 0x74696C7073;
LABEL_7:
  MEMORY[0x18D00C9B0](v3, v5);

  MEMORY[0x18D00C9B0](0xD000000000000017, 0x800000018CD59900);
  if (*(v0 + 152))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 152))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x18D00C9B0](v6, v7);

  MEMORY[0x18D00C9B0](0x616D696E615B205DLL, 0xEE00203A6E6F6974);
  if (*(v0 + 160))
  {
    v8 = Animation.description.getter();
    v10 = v9;
  }

  else
  {
    v10 = 0xEC0000006E6F6974;
    v8 = 0x616D696E61206F4ELL;
  }

  MEMORY[0x18D00C9B0](v8, v10);

  MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD59920);
  v11 = NavigationRequest.skipFirstColumn.getter();
  v12 = (v11 & 1) == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x18D00C9B0](v13, v14);

  return 0;
}

uint64_t NavigationRequest.TargetedRequest.description.getter()
{
  *&v19[0] = 0;
  *(&v19[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(v21, "Request for ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  v1 = *(v0 + 200);
  if (v1 >> 1 == 0xFFFFFFFF)
  {
    v2 = (v0 + 104);
    v3 = (v0 + 112);
    v4 = (v0 + 120);
    v5 = (v0 + 128);
    v1 = *(v0 + 136);
    v6 = (v0 + 144);
  }

  else
  {
    v2 = (v0 + 168);
    v3 = (v0 + 176);
    v4 = (v0 + 184);
    v5 = (v0 + 192);
    v6 = (v0 + 208);
  }

  v7 = *v4;
  v8 = *v3;
  v9 = *v2;
  if (!(v1 >> 62))
  {
    v12 = NavigationState.StackContent.Key.debugDescription.getter(v9, v8);
    goto LABEL_8;
  }

  if (v1 >> 62 == 1)
  {
    v10 = *v6;
    v11 = *v5;
    v21[2] = v9;
    v21[3] = v8;
    v21[4] = v7;
    v21[5] = v11;
    v22 = v1 & 1;
    v23 = v10;
    v12 = NavigationState.ListKey.description.getter();
LABEL_8:
    v14 = v13;
    goto LABEL_10;
  }

  v14 = 0xE500000000000000;
  v12 = 0x74696C7073;
LABEL_10:
  MEMORY[0x18D00C9B0](v12, v14);

  MEMORY[0x18D00C9B0](8250, 0xE200000000000000);
  outlined init with copy of NavigationRequest.Action?(v0 + 216, v17);
  if (v18 == 255)
  {
    outlined init with copy of NavigationRequest.Action(v0, v19);
    if (v18 != 255)
    {
      outlined destroy of ToolbarItemPlacement.Role?(v17, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    v19[4] = v17[4];
    v19[5] = v17[5];
    v20 = v18;
    v19[0] = v17[0];
    v19[1] = v17[1];
    v19[2] = v17[2];
    v19[3] = v17[3];
  }

  v15 = NavigationRequest.Action.description.getter();
  MEMORY[0x18D00C9B0](v15);

  outlined destroy of NavigationRequest.Action(v19);
  return v21[0];
}

unint64_t NavigationRequest.Action.description.getter()
{
  outlined init with copy of NavigationRequest.Action(v0, v25);
  v1 = *v25;
  v2 = *&v25[16];
  result = 0x43676E6974696465;
  switch(v29)
  {
    case 1:
      outlined destroy of NavigationRequest.Action(v25);
      return 0x68746150746573;
    case 2:
      v21 = *v25;
      v22 = *&v25[16];
      v23 = *&v25[32];
      *&v24 = *&v25[48];
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v20, "setSelection: ");
      HIBYTE(v20[1]) = -18;
      v11 = MEMORY[0x1E6981948];
      _s7SwiftUI7BindingVySiGMaTm_0(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](v19);
      _StringGuts.grow(_:)(20);

      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v12);

      MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD54850);

      outlined destroy of AnyListSelection(v19);
      v13 = v20[0];
      outlined destroy of ToolbarItemPlacement.Role?(&v21, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, v11);
      return v13;
    case 3:
      v5 = *&v25[24];
      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      MEMORY[0x18D00C9B0](0xD00000000000001FLL, 0x800000018CD598A0);
      v6 = type metadata accessor for NavigationDestinationResolverBase();
      v7 = MEMORY[0x18D00CC60](v1, v6);
      v9 = v8;

      MEMORY[0x18D00C9B0](v7, v9);

      MEMORY[0x18D00C9B0](0x706564202020200ALL, 0xEC000000203A6874);
      v19[0] = *(&v1 + 1);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v10);

      MEMORY[0x18D00C9B0](0x616572202020200ALL, 0xED0000203A726564);
      MEMORY[0x18D00C9B0](v2, v5);

      return v21;
    case 4:
      v14 = *&v25[16] >> 8;

      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v15 = "updateRequiredCompactColumn: ";
      v16 = 0xD00000000000001ELL;
      goto LABEL_18;
    case 5:
      v14 = *&v25[16] >> 8;

      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v15 = "boundSelectionChange";
      v16 = 0xD00000000000001DLL;
LABEL_18:
      MEMORY[0x18D00C9B0](v16, v15 | 0x8000000000000000);
      LOBYTE(v19[0]) = v14;
      _print_unlocked<A, B>(_:_:)();
      return v21;
    case 6:
      outlined destroy of NavigationRequest.Action(v25);
      return 0x746150646E756F62;
    case 7:
    case 16:
      return 0xD000000000000014;
    case 8:
      return result;
    case 9:
      return 7368560;
    case 10:

      outlined destroy of AnyNavigationLinkPresentedValue(v25);
      return 0x56746E6573657270;
    case 11:
      outlined destroy of NavigationRequest.Action(v25);
      return 0xD000000000000010;
    case 12:

      outlined destroy of NavigationLinkSelectionIdentifier(&v25[8]);
      return 0x526563616C706572;
    case 13:

      v21 = *&v25[8];
      v22 = *&v25[24];
      v23 = *&v25[40];
      v24 = *&v25[56];
      strcpy(v19, "presentView(");
      BYTE5(v19[1]) = 0;
      HIWORD(v19[1]) = -5120;
      goto LABEL_29;
    case 14:

      outlined destroy of NavigationLinkSelectionIdentifier(&v25[8]);
      return 0x6956657461647075;
    case 15:
      return 0xD000000000000012;
    case 17:

      outlined destroy of AnyNavigationLinkPresentedValue(v25);
      return 0xD000000000000012;
    case 18:

      outlined destroy of NavigationLinkSelectionIdentifier(&v25[16]);
      v4 = 9;
      goto LABEL_21;
    case 19:
      v21 = *v25;
      v22 = *&v25[16];
      v23 = *&v25[32];
      v24 = *&v25[48];
      _StringGuts.grow(_:)(31);

      v19[0] = 0xD00000000000001CLL;
      v19[1] = 0x800000018CD59720;
LABEL_29:
      v18 = NavigationLinkSelectionIdentifier.description.getter();
      MEMORY[0x18D00C9B0](v18);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);
      outlined destroy of NavigationLinkSelectionIdentifier(&v21);
      result = v19[0];
      break;
    case 20:
      result = 0xD000000000000018;
      break;
    case 21:
      outlined destroy of NavigationRequest.Action(v25);
      result = 0xD00000000000001DLL;
      break;
    case 22:
      if (*&v25[8] | *v25 | *&v25[16] | *&v25[40] | *&v25[48] | v28 | v27 | v26 | *&v25[64] | *&v25[56] | *&v25[32] | *&v25[24])
      {
        v17 = *&v25[16] | *&v25[8] | *&v25[40] | *&v25[48] | v28 | v27 | v26 | *&v25[64] | *&v25[56] | *&v25[32] | *&v25[24];
        if (*v25 != 1 || v17)
        {
          if (*v25 != 2 || v17)
          {
            if (*v25 != 3 || v17)
            {
              if (*v25 != 4 || v17)
              {
                if (*v25 != 5 || v17)
                {
                  result = 0xD000000000000017;
                }

                else
                {
                  result = 0xD000000000000011;
                }
              }

              else
              {
                result = 0xD000000000000018;
              }
            }

            else
            {
              result = 0x6C65537261656C63;
            }
          }

          else
          {
            result = 0xD000000000000016;
          }
        }

        else
        {
          result = 0x6F6F527465736572;
        }
      }

      else
      {
        result = 0xD000000000000011;
      }

      break;
    default:
      outlined destroy of NavigationRequest.Action(v25);
      v4 = 5;
LABEL_21:
      result = v4 | 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t initializeWithCopy for NavigationRequest.ListRequest(uint64_t a1, uint64_t *a2)
{
  switch(*(a2 + 96))
  {
    case 0:
      v4 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v4;
      *(a1 + 96) = 0;
      goto LABEL_57;
    case 1:
      v22 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v22;
      v23 = a2[3];
      *(a1 + 16) = a2[2];
      *(a1 + 24) = v23;
      *(a1 + 32) = a2[4];
      *(a1 + 96) = 1;

      goto LABEL_57;
    case 2:
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v14;
      v15 = *(a2 + 5);
      *(a1 + 40) = v15;
      v16 = v15;
      v17 = **(v15 - 8);

      v17(a1 + 16, a2 + 2, v16);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 96) = 2;
      break;
    case 3:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 24) = a2[3];
      *(a1 + 96) = 3;

      break;
    case 4:
      v30 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v30;
      *(a1 + 16) = *(a2 + 8);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v18 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 8);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v24 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = a2[2];
      *(a1 + 96) = 6;

      goto LABEL_57;
    case 0xA:
      v25 = *(a2 + 3);
      *(a1 + 24) = v25;
      (**(v25 - 8))(a1, a2);
      v26 = a2[6];
      *(a1 + 40) = a2[5];
      *(a1 + 48) = v26;
      *(a1 + 56) = *(a2 + 28);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 3);
      *(a1 + 24) = v34;
      (**(v34 - 8))(a1, a2);
      *(a1 + 96) = 11;
      break;
    case 0xC:
      *a1 = *a2;
      v31 = (a1 + 8);
      v32 = a2[4];

      if (v32)
      {
        v33 = a2[5];
        *(a1 + 32) = v32;
        *(a1 + 40) = v33;
        (**(v32 - 8))(a1 + 8, a2 + 1, v32);
      }

      else
      {
        v53 = *(a2 + 3);
        *v31 = *(a2 + 1);
        *(a1 + 24) = v53;
        *(a1 + 40) = a2[5];
      }

      v54 = a2[7];
      if (v54 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v54;
      }

      v55 = a2[9];
      v56 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v55;
      *(a1 + 80) = v56;
      v42 = 12;
      goto LABEL_56;
    case 0xD:
      *a1 = *a2;
      v8 = (a1 + 8);
      v9 = a2[4];

      if (v9)
      {
        v10 = a2[5];
        *(a1 + 32) = v9;
        *(a1 + 40) = v10;
        (**(v9 - 8))(a1 + 8, a2 + 1, v9);
      }

      else
      {
        v43 = *(a2 + 3);
        *v8 = *(a2 + 1);
        *(a1 + 24) = v43;
        *(a1 + 40) = a2[5];
      }

      v44 = a2[7];
      if (v44 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v44;
      }

      v45 = a2[9];
      v46 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v45;
      *(a1 + 80) = v46;
      *(a1 + 88) = *(a2 + 88);
      v42 = 13;
      goto LABEL_56;
    case 0xE:
      *a1 = *a2;
      v19 = (a1 + 8);
      v20 = a2[4];

      if (v20)
      {
        v21 = a2[5];
        *(a1 + 32) = v20;
        *(a1 + 40) = v21;
        (**(v20 - 8))(a1 + 8, a2 + 1, v20);
      }

      else
      {
        v47 = *(a2 + 3);
        *v19 = *(a2 + 1);
        *(a1 + 24) = v47;
        *(a1 + 40) = a2[5];
      }

      v48 = a2[7];
      if (v48 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v48;
      }

      *(a1 + 64) = a2[8];
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 96) = 14;
      break;
    case 0x11:
      v11 = *(a2 + 3);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v12 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v12;
      *(a1 + 64) = *(a2 + 32);
      v13 = 17;
LABEL_21:
      *(a1 + 96) = v13;

      goto LABEL_57;
    case 0x12:
      v5 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v5;
      v6 = a2[5];

      if (v6)
      {
        v7 = a2[6];
        *(a1 + 40) = v6;
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1 + 16, a2 + 2, v6);
      }

      else
      {
        v38 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v38;
        *(a1 + 48) = a2[6];
      }

      v39 = a2[8];
      if (v39 == 1)
      {
        *(a1 + 56) = *(a2 + 7);
      }

      else
      {
        *(a1 + 56) = a2[7];
        *(a1 + 64) = v39;
      }

      v40 = a2[10];
      v41 = a2[11];
      *(a1 + 72) = a2[9];
      *(a1 + 80) = v40;
      *(a1 + 88) = v41;
      v42 = 18;
LABEL_56:
      *(a1 + 96) = v42;
LABEL_57:

      break;
    case 0x13:
      v27 = a2[3];
      if (v27)
      {
        v28 = a2[4];
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        (**(v27 - 8))(a1, a2);
      }

      else
      {
        v49 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v49;
        *(a1 + 32) = a2[4];
      }

      v50 = a2[6];
      if (v50 == 1)
      {
        *(a1 + 40) = *(a2 + 5);
      }

      else
      {
        *(a1 + 40) = a2[5];
        *(a1 + 48) = v50;
      }

      *(a1 + 56) = a2[7];
      *(a1 + 96) = 19;
      break;
    case 0x15:
      if (*a2)
      {
        v29 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v29;
      }

      else
      {
        *a1 = *a2;
      }

      v51 = a2[2];
      if (v51)
      {
        v52 = a2[3];
        *(a1 + 16) = v51;
        *(a1 + 24) = v52;
      }

      else
      {
        *(a1 + 16) = *(a2 + 1);
      }

      *(a1 + 96) = 21;
      break;
    default:
      v35 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v37;
      break;
  }

  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 10);
  *(a1 + 176) = a2[22];
  return a1;
}

uint64_t assignWithCopy for NavigationRequest.ListRequest(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    switch(*(a2 + 96))
    {
      case 0:
        v4 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v4;
        *(a1 + 96) = 0;
        goto LABEL_58;
      case 1:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = a2[4];
        *(a1 + 96) = 1;

        goto LABEL_58;
      case 2:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v9 = a2[5];
        *(a1 + 40) = v9;
        *(a1 + 48) = a2[6];
        v10 = **(v9 - 8);

        v10(a1 + 16, a2 + 2, v9);
        *(a1 + 56) = a2[7];
        *(a1 + 64) = a2[8];
        *(a1 + 96) = 2;
        break;
      case 3:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 96) = 3;

        break;
      case 4:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 4;
        goto LABEL_22;
      case 5:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 5;
        goto LABEL_22;
      case 6:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 96) = 6;

        goto LABEL_58;
      case 0xA:
        v12 = a2[3];
        *(a1 + 24) = v12;
        *(a1 + 32) = a2[4];
        (**(v12 - 8))(a1, a2);
        *(a1 + 40) = a2[5];
        *(a1 + 48) = a2[6];
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v8 = 10;
        goto LABEL_22;
      case 0xB:
        v16 = a2[3];
        *(a1 + 24) = v16;
        *(a1 + 32) = a2[4];
        (**(v16 - 8))(a1, a2);
        *(a1 + 96) = 11;
        break;
      case 0xC:
        *a1 = *a2;
        v15 = a2[4];

        if (v15)
        {
          *(a1 + 32) = v15;
          *(a1 + 40) = a2[5];
          (**(v15 - 8))(a1 + 8, a2 + 1, v15);
        }

        else
        {
          v35 = *(a2 + 1);
          v36 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v35;
          *(a1 + 24) = v36;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v37 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v37;
        v25 = 12;
        goto LABEL_57;
      case 0xD:
        *a1 = *a2;
        v6 = a2[4];

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = a2[5];
          (**(v6 - 8))(a1 + 8, a2 + 1, v6);
        }

        else
        {
          v26 = *(a2 + 1);
          v27 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v28 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v28;
        *(a1 + 88) = *(a2 + 88);
        v25 = 13;
        goto LABEL_57;
      case 0xE:
        *a1 = *a2;
        v11 = a2[4];

        if (v11)
        {
          *(a1 + 32) = v11;
          *(a1 + 40) = a2[5];
          (**(v11 - 8))(a1 + 8, a2 + 1, v11);
        }

        else
        {
          v29 = *(a2 + 1);
          v30 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 96) = 14;
        break;
      case 0x11:
        v7 = a2[3];
        *(a1 + 24) = v7;
        *(a1 + 32) = a2[4];
        (**(v7 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = a2[6];
        *(a1 + 56) = a2[7];
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v8 = 17;
LABEL_22:
        *(a1 + 96) = v8;

        goto LABEL_58;
      case 0x12:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v5 = a2[5];

        if (v5)
        {
          *(a1 + 40) = v5;
          *(a1 + 48) = a2[6];
          (**(v5 - 8))(a1 + 16, a2 + 2, v5);
        }

        else
        {
          v22 = *(a2 + 1);
          v23 = *(a2 + 2);
          *(a1 + 48) = a2[6];
          *(a1 + 16) = v22;
          *(a1 + 32) = v23;
        }

        if (a2[8] == 1)
        {
          *(a1 + 56) = *(a2 + 7);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = a2[8];
        }

        *(a1 + 72) = a2[9];
        v24 = a2[11];
        *(a1 + 80) = a2[10];
        *(a1 + 88) = v24;
        v25 = 18;
LABEL_57:
        *(a1 + 96) = v25;
LABEL_58:

        break;
      case 0x13:
        v13 = a2[3];
        if (v13)
        {
          *(a1 + 24) = v13;
          *(a1 + 32) = a2[4];
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v31 = *a2;
          v32 = *(a2 + 1);
          *(a1 + 32) = a2[4];
          *a1 = v31;
          *(a1 + 16) = v32;
        }

        if (a2[6] == 1)
        {
          *(a1 + 40) = *(a2 + 5);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = a2[6];
        }

        *(a1 + 56) = a2[7];
        *(a1 + 96) = 19;
        break;
      case 0x15:
        if (*a2)
        {
          v14 = a2[1];
          *a1 = *a2;
          *(a1 + 8) = v14;
        }

        else
        {
          *a1 = *a2;
        }

        v33 = a2[2];
        if (v33)
        {
          v34 = a2[3];
          *(a1 + 16) = v33;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = *(a2 + 1);
        }

        *(a1 + 96) = 21;
        break;
      default:
        v17 = *a2;
        v18 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v18;
        *a1 = v17;
        v19 = *(a2 + 3);
        v20 = *(a2 + 4);
        v21 = *(a2 + 5);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v20;
        *(a1 + 80) = v21;
        *(a1 + 48) = v19;
        break;
    }
  }

  *(a1 + 104) = a2[13];
  v38 = *(a2 + 7);
  *(a1 + 128) = a2[16];
  *(a1 + 112) = v38;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = a2[18];
  *(a1 + 152) = *(a2 + 152);
  v39 = *(a2 + 10);
  *(a1 + 176) = a2[22];
  *(a1 + 160) = v39;
  return a1;
}

__n128 assignWithTake for NavigationRequest.ListRequest(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    outlined destroy of NavigationRequest.Action(a1);
    a1 = v3;
    v4 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v4;
    *(v3 + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 48);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  result = *(a2 + 160);
  *(a1 + 160) = result;
  *(a1 + 176) = *(a2 + 176);
  return result;
}

uint64_t getEnumTagSinglePayload for NavigationRequest.ListRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 184))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t storeEnumTagSinglePayload for NavigationRequest.ListRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for NavigationRequest.SplitRequest(uint64_t a1, uint64_t *a2)
{
  switch(*(a2 + 96))
  {
    case 0:
      v4 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v4;
      *(a1 + 96) = 0;
      goto LABEL_57;
    case 1:
      v22 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v22;
      v23 = a2[3];
      *(a1 + 16) = a2[2];
      *(a1 + 24) = v23;
      *(a1 + 32) = a2[4];
      *(a1 + 96) = 1;

      goto LABEL_57;
    case 2:
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v14;
      v15 = *(a2 + 5);
      *(a1 + 40) = v15;
      v16 = v15;
      v17 = **(v15 - 8);

      v17(a1 + 16, a2 + 2, v16);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 96) = 2;
      break;
    case 3:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 24) = a2[3];
      *(a1 + 96) = 3;

      break;
    case 4:
      v30 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v30;
      *(a1 + 16) = *(a2 + 8);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v18 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 8);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v24 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = a2[2];
      *(a1 + 96) = 6;

      goto LABEL_57;
    case 0xA:
      v25 = *(a2 + 3);
      *(a1 + 24) = v25;
      (**(v25 - 8))(a1, a2);
      v26 = a2[6];
      *(a1 + 40) = a2[5];
      *(a1 + 48) = v26;
      *(a1 + 56) = *(a2 + 28);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 3);
      *(a1 + 24) = v34;
      (**(v34 - 8))(a1, a2);
      *(a1 + 96) = 11;
      break;
    case 0xC:
      *a1 = *a2;
      v31 = (a1 + 8);
      v32 = a2[4];

      if (v32)
      {
        v33 = a2[5];
        *(a1 + 32) = v32;
        *(a1 + 40) = v33;
        (**(v32 - 8))(a1 + 8, a2 + 1, v32);
      }

      else
      {
        v53 = *(a2 + 3);
        *v31 = *(a2 + 1);
        *(a1 + 24) = v53;
        *(a1 + 40) = a2[5];
      }

      v54 = a2[7];
      if (v54 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v54;
      }

      v55 = a2[9];
      v56 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v55;
      *(a1 + 80) = v56;
      v42 = 12;
      goto LABEL_56;
    case 0xD:
      *a1 = *a2;
      v8 = (a1 + 8);
      v9 = a2[4];

      if (v9)
      {
        v10 = a2[5];
        *(a1 + 32) = v9;
        *(a1 + 40) = v10;
        (**(v9 - 8))(a1 + 8, a2 + 1, v9);
      }

      else
      {
        v43 = *(a2 + 3);
        *v8 = *(a2 + 1);
        *(a1 + 24) = v43;
        *(a1 + 40) = a2[5];
      }

      v44 = a2[7];
      if (v44 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v44;
      }

      v45 = a2[9];
      v46 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v45;
      *(a1 + 80) = v46;
      *(a1 + 88) = *(a2 + 88);
      v42 = 13;
      goto LABEL_56;
    case 0xE:
      *a1 = *a2;
      v19 = (a1 + 8);
      v20 = a2[4];

      if (v20)
      {
        v21 = a2[5];
        *(a1 + 32) = v20;
        *(a1 + 40) = v21;
        (**(v20 - 8))(a1 + 8, a2 + 1, v20);
      }

      else
      {
        v47 = *(a2 + 3);
        *v19 = *(a2 + 1);
        *(a1 + 24) = v47;
        *(a1 + 40) = a2[5];
      }

      v48 = a2[7];
      if (v48 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v48;
      }

      *(a1 + 64) = a2[8];
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 96) = 14;
      break;
    case 0x11:
      v11 = *(a2 + 3);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v12 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v12;
      *(a1 + 64) = *(a2 + 32);
      v13 = 17;
LABEL_21:
      *(a1 + 96) = v13;

      goto LABEL_57;
    case 0x12:
      v5 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v5;
      v6 = a2[5];

      if (v6)
      {
        v7 = a2[6];
        *(a1 + 40) = v6;
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1 + 16, a2 + 2, v6);
      }

      else
      {
        v38 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v38;
        *(a1 + 48) = a2[6];
      }

      v39 = a2[8];
      if (v39 == 1)
      {
        *(a1 + 56) = *(a2 + 7);
      }

      else
      {
        *(a1 + 56) = a2[7];
        *(a1 + 64) = v39;
      }

      v40 = a2[10];
      v41 = a2[11];
      *(a1 + 72) = a2[9];
      *(a1 + 80) = v40;
      *(a1 + 88) = v41;
      v42 = 18;
LABEL_56:
      *(a1 + 96) = v42;
LABEL_57:

      break;
    case 0x13:
      v27 = a2[3];
      if (v27)
      {
        v28 = a2[4];
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        (**(v27 - 8))(a1, a2);
      }

      else
      {
        v49 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v49;
        *(a1 + 32) = a2[4];
      }

      v50 = a2[6];
      if (v50 == 1)
      {
        *(a1 + 40) = *(a2 + 5);
      }

      else
      {
        *(a1 + 40) = a2[5];
        *(a1 + 48) = v50;
      }

      *(a1 + 56) = a2[7];
      *(a1 + 96) = 19;
      break;
    case 0x15:
      if (*a2)
      {
        v29 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v29;
      }

      else
      {
        *a1 = *a2;
      }

      v51 = a2[2];
      if (v51)
      {
        v52 = a2[3];
        *(a1 + 16) = v51;
        *(a1 + 24) = v52;
      }

      else
      {
        *(a1 + 16) = *(a2 + 1);
      }

      *(a1 + 96) = 21;
      break;
    default:
      v35 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v37;
      break;
  }

  *(a1 + 97) = *(a2 + 97);
  return a1;
}

uint64_t assignWithCopy for NavigationRequest.SplitRequest(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    switch(*(a2 + 96))
    {
      case 0:
        v4 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v4;
        *(a1 + 96) = 0;
        goto LABEL_58;
      case 1:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = a2[4];
        *(a1 + 96) = 1;

        goto LABEL_58;
      case 2:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v9 = a2[5];
        *(a1 + 40) = v9;
        *(a1 + 48) = a2[6];
        v10 = **(v9 - 8);

        v10(a1 + 16, a2 + 2, v9);
        *(a1 + 56) = a2[7];
        *(a1 + 64) = a2[8];
        *(a1 + 96) = 2;
        break;
      case 3:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 96) = 3;

        break;
      case 4:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 4;
        goto LABEL_22;
      case 5:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 5;
        goto LABEL_22;
      case 6:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 96) = 6;

        goto LABEL_58;
      case 0xA:
        v12 = a2[3];
        *(a1 + 24) = v12;
        *(a1 + 32) = a2[4];
        (**(v12 - 8))(a1, a2);
        *(a1 + 40) = a2[5];
        *(a1 + 48) = a2[6];
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v8 = 10;
        goto LABEL_22;
      case 0xB:
        v16 = a2[3];
        *(a1 + 24) = v16;
        *(a1 + 32) = a2[4];
        (**(v16 - 8))(a1, a2);
        *(a1 + 96) = 11;
        break;
      case 0xC:
        *a1 = *a2;
        v15 = a2[4];

        if (v15)
        {
          *(a1 + 32) = v15;
          *(a1 + 40) = a2[5];
          (**(v15 - 8))(a1 + 8, a2 + 1, v15);
        }

        else
        {
          v35 = *(a2 + 1);
          v36 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v35;
          *(a1 + 24) = v36;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v37 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v37;
        v25 = 12;
        goto LABEL_57;
      case 0xD:
        *a1 = *a2;
        v6 = a2[4];

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = a2[5];
          (**(v6 - 8))(a1 + 8, a2 + 1, v6);
        }

        else
        {
          v26 = *(a2 + 1);
          v27 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v28 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v28;
        *(a1 + 88) = *(a2 + 88);
        v25 = 13;
        goto LABEL_57;
      case 0xE:
        *a1 = *a2;
        v11 = a2[4];

        if (v11)
        {
          *(a1 + 32) = v11;
          *(a1 + 40) = a2[5];
          (**(v11 - 8))(a1 + 8, a2 + 1, v11);
        }

        else
        {
          v29 = *(a2 + 1);
          v30 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 96) = 14;
        break;
      case 0x11:
        v7 = a2[3];
        *(a1 + 24) = v7;
        *(a1 + 32) = a2[4];
        (**(v7 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = a2[6];
        *(a1 + 56) = a2[7];
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v8 = 17;
LABEL_22:
        *(a1 + 96) = v8;

        goto LABEL_58;
      case 0x12:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v5 = a2[5];

        if (v5)
        {
          *(a1 + 40) = v5;
          *(a1 + 48) = a2[6];
          (**(v5 - 8))(a1 + 16, a2 + 2, v5);
        }

        else
        {
          v22 = *(a2 + 1);
          v23 = *(a2 + 2);
          *(a1 + 48) = a2[6];
          *(a1 + 16) = v22;
          *(a1 + 32) = v23;
        }

        if (a2[8] == 1)
        {
          *(a1 + 56) = *(a2 + 7);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = a2[8];
        }

        *(a1 + 72) = a2[9];
        v24 = a2[11];
        *(a1 + 80) = a2[10];
        *(a1 + 88) = v24;
        v25 = 18;
LABEL_57:
        *(a1 + 96) = v25;
LABEL_58:

        break;
      case 0x13:
        v13 = a2[3];
        if (v13)
        {
          *(a1 + 24) = v13;
          *(a1 + 32) = a2[4];
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v31 = *a2;
          v32 = *(a2 + 1);
          *(a1 + 32) = a2[4];
          *a1 = v31;
          *(a1 + 16) = v32;
        }

        if (a2[6] == 1)
        {
          *(a1 + 40) = *(a2 + 5);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = a2[6];
        }

        *(a1 + 56) = a2[7];
        *(a1 + 96) = 19;
        break;
      case 0x15:
        if (*a2)
        {
          v14 = a2[1];
          *a1 = *a2;
          *(a1 + 8) = v14;
        }

        else
        {
          *a1 = *a2;
        }

        v33 = a2[2];
        if (v33)
        {
          v34 = a2[3];
          *(a1 + 16) = v33;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = *(a2 + 1);
        }

        *(a1 + 96) = 21;
        break;
      default:
        v17 = *a2;
        v18 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v18;
        *a1 = v17;
        v19 = *(a2 + 3);
        v20 = *(a2 + 4);
        v21 = *(a2 + 5);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v20;
        *(a1 + 80) = v21;
        *(a1 + 48) = v19;
        break;
    }
  }

  *(a1 + 97) = *(a2 + 97);
  return a1;
}

uint64_t assignWithTake for NavigationRequest.SplitRequest(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of NavigationRequest.Action(result);
    result = v3;
    v4 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v4;
    *(v3 + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 48);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = v6;
  }

  *(result + 97) = *(a2 + 97);
  return result;
}

uint64_t getEnumTagSinglePayload for NavigationRequest.SplitRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 98))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 97);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationRequest.SplitRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 97) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for NavigationRequest.TargetedRequest(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    switch(*(a2 + 96))
    {
      case 0:
        v4 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v4;
        *(a1 + 96) = 0;
        goto LABEL_58;
      case 1:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = a2[4];
        *(a1 + 96) = 1;

        goto LABEL_58;
      case 2:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v9 = a2[5];
        *(a1 + 40) = v9;
        *(a1 + 48) = a2[6];
        v10 = **(v9 - 8);

        v10(a1 + 16, a2 + 2, v9);
        *(a1 + 56) = a2[7];
        *(a1 + 64) = a2[8];
        *(a1 + 96) = 2;
        break;
      case 3:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 96) = 3;

        break;
      case 4:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 4;
        goto LABEL_22;
      case 5:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 5;
        goto LABEL_22;
      case 6:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 96) = 6;

        goto LABEL_58;
      case 0xA:
        v12 = a2[3];
        *(a1 + 24) = v12;
        *(a1 + 32) = a2[4];
        (**(v12 - 8))(a1, a2);
        *(a1 + 40) = a2[5];
        *(a1 + 48) = a2[6];
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v8 = 10;
        goto LABEL_22;
      case 0xB:
        v16 = a2[3];
        *(a1 + 24) = v16;
        *(a1 + 32) = a2[4];
        (**(v16 - 8))(a1, a2);
        *(a1 + 96) = 11;
        break;
      case 0xC:
        *a1 = *a2;
        v15 = a2[4];

        if (v15)
        {
          *(a1 + 32) = v15;
          *(a1 + 40) = a2[5];
          (**(v15 - 8))(a1 + 8, a2 + 1, v15);
        }

        else
        {
          v35 = *(a2 + 1);
          v36 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v35;
          *(a1 + 24) = v36;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v37 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v37;
        v25 = 12;
        goto LABEL_57;
      case 0xD:
        *a1 = *a2;
        v6 = a2[4];

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = a2[5];
          (**(v6 - 8))(a1 + 8, a2 + 1, v6);
        }

        else
        {
          v26 = *(a2 + 1);
          v27 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v28 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v28;
        *(a1 + 88) = *(a2 + 88);
        v25 = 13;
        goto LABEL_57;
      case 0xE:
        *a1 = *a2;
        v11 = a2[4];

        if (v11)
        {
          *(a1 + 32) = v11;
          *(a1 + 40) = a2[5];
          (**(v11 - 8))(a1 + 8, a2 + 1, v11);
        }

        else
        {
          v29 = *(a2 + 1);
          v30 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 96) = 14;
        break;
      case 0x11:
        v7 = a2[3];
        *(a1 + 24) = v7;
        *(a1 + 32) = a2[4];
        (**(v7 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = a2[6];
        *(a1 + 56) = a2[7];
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v8 = 17;
LABEL_22:
        *(a1 + 96) = v8;

        goto LABEL_58;
      case 0x12:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v5 = a2[5];

        if (v5)
        {
          *(a1 + 40) = v5;
          *(a1 + 48) = a2[6];
          (**(v5 - 8))(a1 + 16, a2 + 2, v5);
        }

        else
        {
          v22 = *(a2 + 1);
          v23 = *(a2 + 2);
          *(a1 + 48) = a2[6];
          *(a1 + 16) = v22;
          *(a1 + 32) = v23;
        }

        if (a2[8] == 1)
        {
          *(a1 + 56) = *(a2 + 7);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = a2[8];
        }

        *(a1 + 72) = a2[9];
        v24 = a2[11];
        *(a1 + 80) = a2[10];
        *(a1 + 88) = v24;
        v25 = 18;
LABEL_57:
        *(a1 + 96) = v25;
LABEL_58:

        break;
      case 0x13:
        v13 = a2[3];
        if (v13)
        {
          *(a1 + 24) = v13;
          *(a1 + 32) = a2[4];
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v31 = *a2;
          v32 = *(a2 + 1);
          *(a1 + 32) = a2[4];
          *a1 = v31;
          *(a1 + 16) = v32;
        }

        if (a2[6] == 1)
        {
          *(a1 + 40) = *(a2 + 5);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = a2[6];
        }

        *(a1 + 56) = a2[7];
        *(a1 + 96) = 19;
        break;
      case 0x15:
        if (*a2)
        {
          v14 = a2[1];
          *a1 = *a2;
          *(a1 + 8) = v14;
        }

        else
        {
          *a1 = *a2;
        }

        v33 = a2[2];
        if (v33)
        {
          v34 = a2[3];
          *(a1 + 16) = v33;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = *(a2 + 1);
        }

        *(a1 + 96) = 21;
        break;
      default:
        v17 = *a2;
        v18 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v18;
        *a1 = v17;
        v19 = *(a2 + 3);
        v20 = *(a2 + 4);
        v21 = *(a2 + 5);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v20;
        *(a1 + 80) = v21;
        *(a1 + 48) = v19;
        break;
    }
  }

  v38 = *(a2 + 13);
  v39 = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v39;
  *(a1 + 104) = v38;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = a2[20];

  v40 = *(a2 + 21);
  v41 = *(a2 + 23);
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 184) = v41;
  *(a1 + 168) = v40;
  v42 = (a1 + 216);
  v43 = a2 + 27;
  if (*(a1 + 312) == 255)
  {
    switch(*(a2 + 312))
    {
      case 0:
LABEL_65:
        v49 = a2[28];
        *(a1 + 216) = a2[27];
        *(a1 + 224) = v49;
        *(a1 + 312) = 0;

        return a1;
      case 1:
LABEL_77:
        *(a1 + 216) = a2[27];
        *(a1 + 224) = a2[28];
        *(a1 + 232) = a2[29];
        *(a1 + 240) = a2[30];
        *(a1 + 248) = a2[31];
        *(a1 + 312) = 1;

        goto LABEL_85;
      case 2:
LABEL_76:
        *(a1 + 216) = a2[27];
        *(a1 + 224) = a2[28];
        v55 = a2[32];
        *(a1 + 256) = v55;
        *(a1 + 264) = a2[33];
        v56 = **(v55 - 8);

        v56(a1 + 232, a2 + 29, v55);
        *(a1 + 272) = a2[34];
        *(a1 + 280) = a2[35];
        v57 = 2;
        goto LABEL_121;
      case 3:
LABEL_81:
        *(a1 + 216) = a2[27];
        *(a1 + 224) = a2[28];
        *(a1 + 232) = a2[29];
        *(a1 + 240) = a2[30];
        *(a1 + 312) = 3;

        return a1;
      case 4:
LABEL_75:
        *(a1 + 216) = a2[27];
        *(a1 + 224) = a2[28];
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 233) = *(a2 + 233);
        v54 = 4;
        goto LABEL_83;
      case 5:
LABEL_74:
        *(a1 + 216) = a2[27];
        *(a1 + 224) = a2[28];
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 233) = *(a2 + 233);
        v54 = 5;
        goto LABEL_83;
      case 6:
LABEL_84:
        *(a1 + 216) = a2[27];
        *(a1 + 224) = a2[28];
        *(a1 + 232) = a2[29];
        *(a1 + 312) = 6;

LABEL_85:

        return a1;
      case 0xA:
LABEL_78:
        v58 = a2[30];
        *(a1 + 240) = v58;
        *(a1 + 248) = a2[31];
        (**(v58 - 8))(a1 + 216, a2 + 27);
        *(a1 + 256) = a2[32];
        *(a1 + 264) = a2[33];
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 273) = *(a2 + 273);
        v54 = 10;
        goto LABEL_83;
      case 0xB:
LABEL_86:
        v61 = a2[30];
        *(a1 + 240) = v61;
        *(a1 + 248) = a2[31];
        (**(v61 - 8))(a1 + 216, a2 + 27);
        v57 = 11;
        goto LABEL_121;
      case 0xC:
LABEL_70:
        *(a1 + 216) = a2[27];
        v52 = a2[31];

        if (v52)
        {
          *(a1 + 248) = v52;
          *(a1 + 256) = a2[32];
          (**(v52 - 8))(a1 + 224, a2 + 28, v52);
        }

        else
        {
          v74 = *(a2 + 14);
          v75 = *(a2 + 15);
          *(a1 + 256) = a2[32];
          *(a1 + 224) = v74;
          *(a1 + 240) = v75;
        }

        if (a2[34] == 1)
        {
          *(a1 + 264) = *(a2 + 33);
        }

        else
        {
          *(a1 + 264) = *(a2 + 66);
          *(a1 + 268) = *(a2 + 67);
          *(a1 + 272) = a2[34];
        }

        *(a1 + 280) = a2[35];
        v76 = a2[37];
        *(a1 + 288) = a2[36];
        *(a1 + 296) = v76;
        v73 = 12;
        goto LABEL_110;
      case 0xD:
LABEL_68:
        *(a1 + 216) = a2[27];
        v51 = a2[31];

        if (v51)
        {
          *(a1 + 248) = v51;
          *(a1 + 256) = a2[32];
          (**(v51 - 8))(a1 + 224, a2 + 28, v51);
        }

        else
        {
          v70 = *(a2 + 14);
          v71 = *(a2 + 15);
          *(a1 + 256) = a2[32];
          *(a1 + 224) = v70;
          *(a1 + 240) = v71;
        }

        if (a2[34] == 1)
        {
          *(a1 + 264) = *(a2 + 33);
        }

        else
        {
          *(a1 + 264) = *(a2 + 66);
          *(a1 + 268) = *(a2 + 67);
          *(a1 + 272) = a2[34];
        }

        *(a1 + 280) = a2[35];
        v72 = a2[37];
        *(a1 + 288) = a2[36];
        *(a1 + 296) = v72;
        *(a1 + 304) = *(a2 + 304);
        v73 = 13;
        goto LABEL_110;
      case 0xE:
LABEL_79:
        *(a1 + 216) = a2[27];
        v59 = a2[31];

        if (v59)
        {
          *(a1 + 248) = v59;
          *(a1 + 256) = a2[32];
          (**(v59 - 8))(a1 + 224, a2 + 28, v59);
        }

        else
        {
          v80 = *(a2 + 14);
          v81 = *(a2 + 15);
          *(a1 + 256) = a2[32];
          *(a1 + 224) = v80;
          *(a1 + 240) = v81;
        }

        if (a2[34] == 1)
        {
          *(a1 + 264) = *(a2 + 33);
        }

        else
        {
          *(a1 + 264) = *(a2 + 66);
          *(a1 + 268) = *(a2 + 67);
          *(a1 + 272) = a2[34];
        }

        *(a1 + 280) = a2[35];
        *(a1 + 288) = *(a2 + 288);
        v57 = 14;
        goto LABEL_121;
      case 0x11:
LABEL_82:
        v60 = a2[30];
        *(a1 + 240) = v60;
        *(a1 + 248) = a2[31];
        (**(v60 - 8))(a1 + 216, a2 + 27);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = a2[33];
        *(a1 + 272) = a2[34];
        *(a1 + 280) = *(a2 + 280);
        *(a1 + 281) = *(a2 + 281);
        v54 = 17;
LABEL_83:
        *(a1 + 312) = v54;

        return a1;
      case 0x12:
LABEL_72:
        *(a1 + 216) = a2[27];
        *(a1 + 224) = a2[28];
        v53 = a2[32];

        if (v53)
        {
          *(a1 + 256) = v53;
          *(a1 + 264) = a2[33];
          (**(v53 - 8))(a1 + 232, a2 + 29, v53);
        }

        else
        {
          v77 = *(a2 + 29);
          v78 = *(a2 + 31);
          *(a1 + 264) = a2[33];
          *(a1 + 248) = v78;
          *(a1 + 232) = v77;
        }

        if (a2[35] == 1)
        {
          *(a1 + 272) = *(a2 + 17);
        }

        else
        {
          *(a1 + 272) = *(a2 + 68);
          *(a1 + 276) = *(a2 + 69);
          *(a1 + 280) = a2[35];
        }

        *(a1 + 288) = a2[36];
        v79 = a2[38];
        *(a1 + 296) = a2[37];
        *(a1 + 304) = v79;
        v73 = 18;
LABEL_110:
        *(a1 + 312) = v73;

        return a1;
      case 0x13:
LABEL_66:
        v50 = a2[30];
        if (v50)
        {
          *(a1 + 240) = v50;
          *(a1 + 248) = a2[31];
          (**(v50 - 8))(a1 + 216, a2 + 27);
        }

        else
        {
          v68 = *v43;
          v69 = *(a2 + 29);
          *(a1 + 248) = a2[31];
          *v42 = v68;
          *(a1 + 232) = v69;
        }

        if (a2[33] == 1)
        {
          *(a1 + 256) = *(a2 + 16);
        }

        else
        {
          *(a1 + 256) = *(a2 + 64);
          *(a1 + 260) = *(a2 + 65);
          *(a1 + 264) = a2[33];
        }

        *(a1 + 272) = a2[34];
        v57 = 19;
        goto LABEL_121;
      case 0x15:
LABEL_87:
        if (*v43)
        {
          v62 = a2[28];
          *(a1 + 216) = *v43;
          *(a1 + 224) = v62;
        }

        else
        {
          *v42 = *v43;
        }

        v82 = a2[29];
        if (v82)
        {
          v83 = a2[30];
          *(a1 + 232) = v82;
          *(a1 + 240) = v83;
        }

        else
        {
          *(a1 + 232) = *(a2 + 29);
        }

        v57 = 21;
LABEL_121:
        *(a1 + 312) = v57;
        break;
      default:
LABEL_89:
        v63 = *v43;
        v64 = *(a2 + 31);
        *(a1 + 232) = *(a2 + 29);
        *(a1 + 248) = v64;
        *v42 = v63;
        v65 = *(a2 + 33);
        v66 = *(a2 + 35);
        v67 = *(a2 + 37);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 280) = v66;
        *(a1 + 296) = v67;
        *(a1 + 264) = v65;
        break;
    }
  }

  else if (*(a2 + 312) == 255)
  {
    outlined destroy of NavigationRequest.Action(a1 + 216);
    v45 = *(a2 + 29);
    v44 = *(a2 + 31);
    *v42 = *v43;
    *(a1 + 232) = v45;
    *(a1 + 248) = v44;
    v47 = *(a2 + 35);
    v46 = *(a2 + 37);
    v48 = *(a2 + 33);
    *(a1 + 312) = *(a2 + 312);
    *(a1 + 280) = v47;
    *(a1 + 296) = v46;
    *(a1 + 264) = v48;
  }

  else if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 216);
    switch(*(a2 + 312))
    {
      case 0:
        goto LABEL_65;
      case 1:
        goto LABEL_77;
      case 2:
        goto LABEL_76;
      case 3:
        goto LABEL_81;
      case 4:
        goto LABEL_75;
      case 5:
        goto LABEL_74;
      case 6:
        goto LABEL_84;
      case 0xA:
        goto LABEL_78;
      case 0xB:
        goto LABEL_86;
      case 0xC:
        goto LABEL_70;
      case 0xD:
        goto LABEL_68;
      case 0xE:
        goto LABEL_79;
      case 0x11:
        goto LABEL_82;
      case 0x12:
        goto LABEL_72;
      case 0x13:
        goto LABEL_66;
      case 0x15:
        goto LABEL_87;
      default:
        goto LABEL_89;
    }
  }

  return a1;
}

uint64_t assignWithTake for NavigationRequest.TargetedRequest(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    v4 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v4;
    *(a1 + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    v6 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  if (*(a1 + 312) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 312) == 255 || a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 216);
LABEL_7:
    v7 = *(a2 + 296);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = v7;
    *(a1 + 312) = *(a2 + 312);
    v8 = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = v8;
    v9 = *(a2 + 264);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = v9;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationRequest.TargetedRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 313))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for NavigationRequest.TargetedRequest(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 312) = 0;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 313) = 1;
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
      result = 0.0;
      *(a1 + 120) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 136) = 2 * -a2;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationRequest.SelectionUpdateTime and conformance NavigationRequest.SelectionUpdateTime()
{
  result = lazy protocol witness table cache variable for type NavigationRequest.SelectionUpdateTime and conformance NavigationRequest.SelectionUpdateTime;
  if (!lazy protocol witness table cache variable for type NavigationRequest.SelectionUpdateTime and conformance NavigationRequest.SelectionUpdateTime)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationRequest.SelectionUpdateTime, &type metadata for NavigationRequest.SelectionUpdateTime, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationRequest.SelectionUpdateTime and conformance NavigationRequest.SelectionUpdateTime);
  }

  return result;
}

uint64_t View.badge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x1FFFFFFFELL;
  }

  return BadgedView.init(badgeLabel:content:)(a1, 0, v5, 0, partial apply for closure #1 in View.badge(_:), a2, a3, a4);
}

uint64_t View.badge(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v9 = a3 & 1 | 0x8000000000000000;
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    v11 = a1;
  }

  else
  {
    v11 = 0;
    v9 = 0x1FFFFFFFELL;
  }

  MEMORY[0x1EEE9AC00](v11);
  return BadgedView.init(badgeLabel:content:)(v12, v13, v9, a4, partial apply for closure #2 in View.badge(_:), a5, a6, v14);
}

{
  if (a2)
  {
    v6 = a6;
    v7 = a5;

    v8 = Text.init(_:tableName:bundle:comment:)();
    a5 = v7;
    a6 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14 & 1;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v15 = 0;
    v13 = 0;
  }

  View.badge(_:)(v9, v11, v15, v13, a5, a6);

  return outlined consume of Text?(v9, v11, v15, v13);
}

uint64_t closure #1 in View.badge(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t View.badge<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in View.badge<A>(_:), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], v7, &v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = v17;
  View.badge(_:)(v14, v15, v16, v17, a2, a4);
  return outlined consume of Text?(v8, v9, v10, v11);
}

uint64_t implicit closure #1 in View.badge<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

void Scene.badge(_:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  Scene.badge(_:)();
}

void type metadata accessor for _PreferenceWritingModifier<BadgePreferenceKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<BadgePreferenceKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<BadgePreferenceKey>);
    }
  }
}

uint64_t ScalarDeceleration.iter(_:minValue:maxValue:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5)
{
  v6 = *(v5 + 56);
  if (v6 == 0.0)
  {
    if ((a2 & 1) == 0)
    {
      v7 = *(v5 + 8);
      if (v7 < *&a1 && *(v5 + 16) * *(v5 + 24) < *&a1 - v7 + *&a1 - v7)
      {
        v8 = (v5 + 80);
        if (*(v5 + 80))
        {
LABEL_7:
          *v8 = 1;
          goto LABEL_13;
        }

LABEL_6:
        v6 = *(v5 + 40);
        v9 = *(v5 + 48);
        *(v5 + 64) = *&a1;
        *(v5 + 56) = v6;
        *(v5 + 24) = v9;
        goto LABEL_7;
      }
    }

    if ((a4 & 1) == 0)
    {
      v10 = *(v5 + 8);
      if (v10 > *&a3 && *&a3 - v10 + *&a3 - v10 < *(v5 + 16) * *(v5 + 24))
      {
        v8 = (v5 + 80);
        a1 = a3;
        if (*(v5 + 80))
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_13:
  v11 = *v5;
  if (*v5 >= a5)
  {
    v13 = *(v5 + 16);
  }

  else
  {
    v12 = *(v5 + 8);
    v13 = *(v5 + 16);
    v14 = *(v5 + 32);
    do
    {
      v15 = v13 + v14 * 0.00416666667;
      v12 = v12 + v15 * 0.00833333333;
      v14 = v6 * (*(v5 + 64) - v12) - *(v5 + 24) * v15;
      v13 = v15 + v14 * 0.00416666667;
      v11 = v11 + 0.00833333333;
    }

    while (v11 < a5);
    *(v5 + 8) = v12;
    *(v5 + 16) = v13;
    *(v5 + 32) = v14;
    *v5 = v11;
  }

  if (fabs(v13) >= *(v5 + 72))
  {
    return 0;
  }

  if (v6 == 0.0)
  {
    *(v5 + 8) = round(*(v5 + 8));
    return 1;
  }

  v17 = *(v5 + 64);
  if (vabdd_f64(v17, *(v5 + 8)) >= 0.5)
  {
    return 0;
  }

  *(v5 + 8) = v17;
  *(v5 + 16) = 0;
  result = 1;
  *(v5 + 32) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for ScalarDeceleration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScalarDeceleration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

void specialized AccessibilityControlGroupViewModifier.body(content:)(char a1@<W0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  v4 = static AccessibilityChildBehavior.contain;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v7);
  type metadata accessor for MutableBox<AccessibilityAttachment>();
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x128uLL);
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v5 + 16, 0x4000000, 0x4000000);

  *a2 = a1 & 1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
}

uint64_t View.controlGroupStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ControlGroupStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

unint64_t instantiation function for generic protocol witness table for ControlGroupStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ControlGroupStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedControlGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedControlGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ResolvedControlGroup(uint64_t a1@<X8>)
{
  specialized AccessibilityControlGroupViewModifier.body(content:)(0, v4);
  v2 = v5;
  v3 = v6;
  *a1 = v4[0];
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ControlGroupStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v2 + 24))(v8);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v11 = *(v4 + 8);
  v11(v6, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v11)(v10, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type ControlGroupStyleModifier<AutomaticControlGroupStyle> and conformance ControlGroupStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type ControlGroupStyleModifier<AutomaticControlGroupStyle> and conformance ControlGroupStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleModifier<AutomaticControlGroupStyle> and conformance ControlGroupStyleModifier<A>)
  {
    type metadata accessor for ControlGroupStyleModifier<AutomaticControlGroupStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ControlGroupStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleModifier<AutomaticControlGroupStyle> and conformance ControlGroupStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for ControlGroupStyleModifier<AutomaticControlGroupStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ControlGroupStyleModifier<AutomaticControlGroupStyle>)
  {
    v2 = lazy protocol witness table accessor for type AutomaticControlGroupStyle and conformance AutomaticControlGroupStyle();
    v4 = type metadata accessor for ControlGroupStyleModifier(a1, &type metadata for AutomaticControlGroupStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ControlGroupStyleModifier<AutomaticControlGroupStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticControlGroupStyle and conformance AutomaticControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticControlGroupStyle and conformance AutomaticControlGroupStyle;
  if (!lazy protocol witness table cache variable for type AutomaticControlGroupStyle and conformance AutomaticControlGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomaticControlGroupStyle, &type metadata for AutomaticControlGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticControlGroupStyle and conformance AutomaticControlGroupStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ControlGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ControlGroupStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ControlGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ControlGroupStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, AccessibilityAttachmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>)
  {
    type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>(255, &lazy cache variable for type metadata for ControlGroup<ControlGroupStyleConfiguration.Content>, &type metadata for ControlGroupStyleConfiguration.Content, &protocol witness table for ControlGroupStyleConfiguration.Content, type metadata accessor for ControlGroup);
    type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>(255, &lazy cache variable for type metadata for AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>, &type metadata for EnabledLargeContentView, &protocol witness table for EnabledLargeContentView, type metadata accessor for AccessibilityLargeContentViewBehaviorModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>);
    }
  }
}

void type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t assignWithCopy for PrimitiveNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 40);
  v9 = v7 + 24;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 24);
  LODWORD(v18) = -1;
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  else
  {
    v19 = *(v15 + 24);
  }

  v20 = v19 + 1;
  v21 = *(v16 + 24);
  if (v21 < 0xFFFFFFFF)
  {
    v18 = *(v16 + 24);
  }

  v22 = v18 + 1;
  if (v21)
  {
    v23 = v22 >= 2;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v23;
  if (v17)
  {
    v25 = v20 > 1;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    if (!v24)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v24)
  {
    if (!v20)
    {
      v26 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
      if (!v22)
      {
        __swift_assign_boxed_opaque_existential_1(v26, ((v14 + v13) & 0xFFFFFFFFFFFFFFF8));
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_21:
    if (!v22)
    {
      *(v15 + 24) = v21;
      *(v15 + 32) = *(v16 + 32);
      (**(v21 - 8))((v14 + v12) & 0xFFFFFFFFFFFFFFF8, (v14 + v13) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!v20)
  {
    v26 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_26:
  v27 = *v16;
  v28 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v27;
  *(v15 + 16) = v28;
LABEL_27:
  v29 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v29 = *v30;
  *(v29 + 8) = *(v30 + 8);
  v31 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v31 != v32)
  {
    v33 = *(v31 + 17);
    if (v33 >= 2)
    {
      v33 = *v31 + 2;
    }

    if (v33 == 1)
    {
    }

    v34 = *(v32 + 17);
    if (v34 >= 2)
    {
      v34 = *v32 + 2;
    }

    if (v34 == 1)
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 16) = *(v32 + 16);
      *(v31 + 17) = 1;
    }

    else
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 17) = 0;
    }
  }

  v35 = (v31 + 25) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v32 + 25) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v35 + 8);
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  v38 = v37 - 1;
  v39 = *(v36 + 8);
  if (v39 >= 0xFFFFFFFF)
  {
    LODWORD(v39) = -1;
  }

  v40 = v39 - 1;
  if (v38 < 0)
  {
    if (v40 < 0)
    {
      swift_weakCopyAssign();
      *(v35 + 8) = *(v36 + 8);

      *(v35 + 16) = *(v36 + 16);

      goto LABEL_48;
    }

    swift_weakDestroy();

    goto LABEL_47;
  }

  if ((v40 & 0x80000000) == 0)
  {
LABEL_47:
    v41 = *v36;
    *(v35 + 16) = *(v36 + 16);
    *v35 = v41;
    goto LABEL_48;
  }

  swift_weakCopyInit();
  *(v35 + 8) = *(v36 + 8);
  *(v35 + 16) = *(v36 + 16);

LABEL_48:
  v42 = ((v35 + 31) & 0xFFFFFFFFFFFFFFF8);
  v43 = ((v36 + 31) & 0xFFFFFFFFFFFFFFF8);
  v44 = *v43;
  v45 = v43[2];
  v42[1] = v43[1];
  v42[2] = v45;
  *v42 = v44;
  v46 = (v42 + 55) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v43 + 55) & 0xFFFFFFFFFFFFFFF8;
  v48 = *v47;
  *(v46 + 16) = *(v47 + 16);
  *v46 = v48;
  v49 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v50 = v49 + v12;
  v51 = v49 + v13;
  *(v49 + v12) = *v51;

  *(v50 + 8) = *(v51 + 8);

  *(v50 + 16) = *(v51 + 16);
  *(v50 + 24) = *(v51 + 24);

  *(v50 + 32) = *(v51 + 32);

  *(v50 + 40) = *(v51 + 40);
  return a1;
}

uint64_t assignWithTake for PrimitiveNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 24);
  v9 = v7 + 40;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v15 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(((v14 + v12) & 0xFFFFFFFFFFFFFFF8));
  }

  v17 = *v16;
  v18 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v17;
  *(v15 + 16) = v18;
  v19 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v21 != v22)
  {
    v23 = *(v21 + 17);
    if (v23 >= 2)
    {
      v23 = *v21 + 2;
    }

    if (v23 == 1)
    {
    }

    v24 = *(v22 + 17);
    if (v24 >= 2)
    {
      v24 = *v22 + 2;
    }

    if (v24 == 1)
    {
      v25 = *v22;
      *(v21 + 16) = *(v22 + 16);
      *v21 = v25;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      *v21 = *v22;
    }

    *(v21 + 17) = v26;
  }

  v27 = (v21 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v27 + 8);
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  v30 = v29 - 1;
  v31 = *(v28 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  v32 = v31 - 1;
  if (v30 < 0)
  {
    if (v32 < 0)
    {
      swift_weakTakeAssign();
      *(v27 + 8) = *(v28 + 8);

      *(v27 + 16) = *(v28 + 16);

      goto LABEL_24;
    }

    swift_weakDestroy();

    goto LABEL_23;
  }

  if ((v32 & 0x80000000) == 0)
  {
LABEL_23:
    v33 = *v28;
    *(v27 + 16) = *(v28 + 16);
    *v27 = v33;
    goto LABEL_24;
  }

  swift_weakTakeInit();
  *(v27 + 8) = *(v28 + 8);
LABEL_24:
  v34 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v28 + 31) & 0xFFFFFFFFFFFFFFF8);
  v36 = *v35;
  v37 = v35[2];
  v34[1] = v35[1];
  v34[2] = v37;
  *v34 = v36;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v35 + 55) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;
  *(v38 + 16) = *(v39 + 16);
  *v38 = v40;
  v41 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v42 = v41 + v12;
  v43 = v41 + v13;
  *v42 = *v43;

  *(v42 + 8) = *(v43 + 8);

  *(v42 + 16) = *(v43 + 16);
  *(v42 + 24) = *(v43 + 24);

  *(v42 + 32) = *(v43 + 32);

  *(v42 + 40) = *(v43 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for PrimitiveNavigationLink(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = *(*(*(a3 + 16) - 8) + 64) + v10;
  v12 = ((((((((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 < a2 && *(a1 + (v11 & ~v10) + v12 + 44))
  {
    return v9 + *a1 + 1;
  }

  if (v5 == v9)
  {
    return (*(v4 + 48))();
  }

  v14 = (a1 + v11) & ~v10;
  if (v8 == v9)
  {
    return (*(v7 + 48))(v14, v8, v6);
  }

  v15 = *(v12 + v14 + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void storeEnumTagSinglePayload for PrimitiveNavigationLink(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  if (v10 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = v11 + v14;
  v16 = (v11 + v14) & ~v14;
  v17 = ((((((((((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v18 = v16 + v17 + 44;
  if (v13 >= a2)
  {
    if (v13 < a3)
    {
      a1[v18] = 0;
    }

    if (a2)
    {
      if (v7 == v13)
      {
        v20 = *(v6 + 56);

        v20();
      }

      else
      {
        v21 = &a1[v15] & ~v14;
        if (v10 == v13)
        {
          v22 = *(v9 + 56);

          v22(v21);
        }

        else
        {
          v23 = v17 + v21;
          if ((a2 & 0x80000000) != 0)
          {
            *(v23 + 16) = 0;
            *v23 = a2 & 0x7FFFFFFF;
            *(v23 + 8) = 0;
          }

          else
          {
            *(v23 + 8) = a2 - 1;
          }
        }
      }
    }
  }

  else
  {
    v19 = ~v13 + a2;
    bzero(a1, v16 + v17 + 44);
    *a1 = v19;
    if (v13 < a3)
    {
      a1[v18] = 1;
    }
  }
}

uint64_t assignWithCopy for NavigationDestinationPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v9 = *(v5 + 40) + 7;
  v6 = (v9 + a1) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v9 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v6 + 24);
  LODWORD(v9) = -1;
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  else
  {
    v10 = *(v6 + 24);
  }

  v11 = v10 + 1;
  v12 = *(v7 + 24);
  if (v12 < 0xFFFFFFFF)
  {
    v9 = *(v7 + 24);
  }

  v13 = v9 + 1;
  if (v12)
  {
    v14 = v13 >= 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = !v14;
  if (v8)
  {
    v16 = v11 > 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v15)
  {
    if (!v11)
    {
      v17 = v6;
      if (!v13)
      {
        __swift_assign_boxed_opaque_existential_1(v6, v7);
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_21:
    if (!v13)
    {
      *(v6 + 24) = v12;
      *(v6 + 32) = *(v7 + 32);
      (**(v12 - 8))(v6, v7);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!v11)
  {
    v17 = v6;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

LABEL_26:
  v18 = *v7;
  v19 = *(v7 + 16);
  *(v6 + 32) = *(v7 + 32);
  *v6 = v18;
  *(v6 + 16) = v19;
LABEL_27:
  v20 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  v22 = (v6 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v22 != v23)
  {
    v24 = *(v22 + 17);
    if (v24 >= 2)
    {
      v24 = *v22 + 2;
    }

    if (v24 == 1)
    {
    }

    v25 = *(v23 + 17);
    if (v25 >= 2)
    {
      v25 = *v23 + 2;
    }

    if (v25 == 1)
    {
      *v22 = *v23;
      *(v22 + 8) = *(v23 + 8);
      *(v22 + 16) = *(v23 + 16);
      *(v22 + 17) = 1;
    }

    else
    {
      *v22 = *v23;
      *(v22 + 8) = *(v23 + 8);
      *(v22 + 17) = 0;
    }
  }

  v26 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v23 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v26 + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  v29 = v28 - 1;
  v30 = *(v27 + 8);
  if (v30 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  v31 = v30 - 1;
  if (v29 < 0)
  {
    if (v31 < 0)
    {
      swift_weakCopyAssign();
      *(v26 + 8) = *(v27 + 8);

      *(v26 + 16) = *(v27 + 16);

      goto LABEL_48;
    }

    swift_weakDestroy();

    goto LABEL_47;
  }

  if ((v31 & 0x80000000) == 0)
  {
LABEL_47:
    v32 = *v27;
    *(v26 + 16) = *(v27 + 16);
    *v26 = v32;
    goto LABEL_48;
  }

  swift_weakCopyInit();
  *(v26 + 8) = *(v27 + 8);
  *(v26 + 16) = *(v27 + 16);

LABEL_48:
  v33 = ((v26 + 31) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = *v34;
  v36 = v34[2];
  v33[1] = v34[1];
  v33[2] = v36;
  *v33 = v35;
  v37 = (v33 + 55) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  *(v37 + 16) = *(v38 + 16);
  *v37 = v39;
  return a1;
}

uint64_t assignWithTake for NavigationDestinationPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  v11 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  v13 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v13 != v14)
  {
    v15 = *(v13 + 17);
    if (v15 >= 2)
    {
      v15 = *v13 + 2;
    }

    if (v15 == 1)
    {
    }

    v16 = *(v14 + 17);
    if (v16 >= 2)
    {
      v16 = *v14 + 2;
    }

    if (v16 == 1)
    {
      v17 = *v14;
      *(v13 + 16) = *(v14 + 16);
      *v13 = v17;
      v18 = 1;
    }

    else
    {
      v18 = 0;
      *v13 = *v14;
    }

    *(v13 + 17) = v18;
  }

  v19 = (v13 + 25) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v14 + 25) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v19 + 8);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  v22 = v21 - 1;
  v23 = *(v20 + 8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  v24 = v23 - 1;
  if (v22 < 0)
  {
    if (v24 < 0)
    {
      swift_weakTakeAssign();
      *(v19 + 8) = *(v20 + 8);

      *(v19 + 16) = *(v20 + 16);

      goto LABEL_24;
    }

    swift_weakDestroy();

    goto LABEL_23;
  }

  if ((v24 & 0x80000000) == 0)
  {
LABEL_23:
    v25 = *v20;
    *(v19 + 16) = *(v20 + 16);
    *v19 = v25;
    goto LABEL_24;
  }

  swift_weakTakeInit();
  *(v19 + 8) = *(v20 + 8);
LABEL_24:
  v26 = ((v19 + 31) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v20 + 31) & 0xFFFFFFFFFFFFFFF8);
  v28 = *v27;
  v29 = v27[2];
  v26[1] = v27[1];
  v26[2] = v29;
  *v26 = v28;
  v30 = (v26 + 55) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v27 + 55) & 0xFFFFFFFFFFFFFFF8;
  v32 = *v31;
  *(v30 + 16) = *(v31 + 16);
  *v30 = v32;
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationDestinationPayload(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) < 2)
    {
      LODWORD(v17) = 0;
    }

    if (v17 >= 2)
    {
      return (v17 - 1);
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for NavigationDestinationPayload(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v9) = 0;
      }

      else if (v13)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFD)
      {
        v20 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFD)
        {
          *(v20 + 32) = 0;
          result = 0.0;
          *v20 = 0u;
          *(v20 + 16) = 0u;
          *v20 = a2 - 2147483646;
        }

        else
        {
          *(v20 + 24) = a2 + 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v9) = v15;
    }

    else
    {
      *(a1 + v9) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v9) = v15;
  }

  return result;
}