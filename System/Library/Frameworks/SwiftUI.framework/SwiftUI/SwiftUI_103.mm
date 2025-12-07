_OWORD *initializeWithTake for DialogActionContext(_OWORD *a1, _OWORD *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[6];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for DialogActionContext.CancelType(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v69 = v10;
      v12 = v8[1];
      *v7 = *v8;
      v7[1] = v12;
      *(v7 + 32) = *(v8 + 32);
      *(v7 + 40) = *(v8 + 40);
      *(v7 + 56) = *(v8 + 56);
      v13 = v8[13];
      v7[12] = v8[12];
      v7[13] = v13;
      v7[14] = v8[14];
      *(v7 + 235) = *(v8 + 235);
      v14 = v8[9];
      v7[8] = v8[8];
      v7[9] = v14;
      v15 = v8[11];
      v7[10] = v8[10];
      v7[11] = v15;
      v16 = v8[5];
      v7[4] = v8[4];
      v7[5] = v16;
      v17 = v8[7];
      v7[6] = v8[6];
      v7[7] = v17;
      v18 = v8[17];
      v7[16] = v8[16];
      v7[17] = v18;
      v19 = v8[23];
      v7[22] = v8[22];
      v7[23] = v19;
      v7[24] = v8[24];
      *(v7 + 50) = *(v8 + 50);
      v20 = v8[19];
      v7[18] = v8[18];
      v7[19] = v20;
      v21 = v8[21];
      v7[20] = v8[20];
      v7[21] = v21;
      v22 = *(v8 + 456);
      *(v7 + 440) = *(v8 + 440);
      *(v7 + 456) = v22;
      *(v7 + 472) = *(v8 + 472);
      v23 = *(v8 + 424);
      *(v7 + 408) = *(v8 + 408);
      *(v7 + 424) = v23;
      v7[30] = v8[30];
      *(v7 + 489) = *(v8 + 489);
      v7[32] = v8[32];
      *(v7 + 528) = *(v8 + 528);
      memcpy(v7 + 536, v8 + 536, 0x130uLL);
      v24 = *(v8 + 856);
      *(v7 + 840) = *(v8 + 840);
      *(v7 + 856) = v24;
      *(v7 + 872) = *(v8 + 872);
      *(v7 + 111) = *(v8 + 111);
      *(v7 + 112) = *(v8 + 112);
      *(v7 + 904) = *(v8 + 904);
      *(v7 + 920) = *(v8 + 920);
      *(v7 + 117) = *(v8 + 117);
      *(v7 + 118) = *(v8 + 118);
      *(v7 + 952) = *(v8 + 952);
      *(v7 + 953) = *(v8 + 953);
      v25 = type metadata accessor for PlatformItemList.Item(0);
      v26 = v25[28];
      __dst = v7 + v26;
      v27 = v8 + v26;
      v28 = type metadata accessor for CommandOperation(0);
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v27, 1, v28))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(__dst, v27, *(*(v30 - 8) + 64));
      }

      else
      {
        *__dst = *v27;
        v34 = *(v28 + 20);
        v63 = &__dst[v34];
        v65 = &v27[v34];
        v35 = *&v27[v34 + 16];
        *v63 = *&v27[v34];
        *(v63 + 1) = v35;
        v61 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v36 = type metadata accessor for UUID();
        (*(*(v36 - 8) + 32))(&v63[v61], &v65[v61], v36);
        *&__dst[*(v28 + 24)] = *&v27[*(v28 + 24)];
        (*(v29 + 56))();
      }

      v10 = v69;
      *(v7 + v25[29]) = *(v8 + v25[29]);
      *(v7 + v25[30]) = *(v8 + v25[30]);
      *(v7 + v25[31]) = *(v8 + v25[31]);
      *(v7 + v25[32]) = *(v8 + v25[32]);
      *(v7 + v25[33]) = *(v8 + v25[33]);
      *(v7 + v25[34]) = *(v8 + v25[34]);
    }

    else
    {
      v31 = type metadata accessor for PlatformItemList.Item(0);
      v32 = *(v31 - 1);
      if ((*(v32 + 48))(v8, 1, v31))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
        memcpy(v7, v8, *(*(v33 - 8) + 64));
      }

      else
      {
        v66 = v32;
        v70 = v10;
        v37 = v8[1];
        *v7 = *v8;
        v7[1] = v37;
        *(v7 + 32) = *(v8 + 32);
        *(v7 + 40) = *(v8 + 40);
        *(v7 + 56) = *(v8 + 56);
        v38 = v8[13];
        v7[12] = v8[12];
        v7[13] = v38;
        v7[14] = v8[14];
        *(v7 + 235) = *(v8 + 235);
        v39 = v8[9];
        v7[8] = v8[8];
        v7[9] = v39;
        v40 = v8[11];
        v7[10] = v8[10];
        v7[11] = v40;
        v41 = v8[5];
        v7[4] = v8[4];
        v7[5] = v41;
        v42 = v8[7];
        v7[6] = v8[6];
        v7[7] = v42;
        v43 = v8[17];
        v7[16] = v8[16];
        v7[17] = v43;
        v44 = v8[23];
        v7[22] = v8[22];
        v7[23] = v44;
        v7[24] = v8[24];
        *(v7 + 50) = *(v8 + 50);
        v45 = v8[19];
        v7[18] = v8[18];
        v7[19] = v45;
        v46 = v8[21];
        v7[20] = v8[20];
        v7[21] = v46;
        v47 = *(v8 + 456);
        *(v7 + 440) = *(v8 + 440);
        *(v7 + 456) = v47;
        *(v7 + 472) = *(v8 + 472);
        v48 = *(v8 + 424);
        *(v7 + 408) = *(v8 + 408);
        *(v7 + 424) = v48;
        v7[30] = v8[30];
        *(v7 + 489) = *(v8 + 489);
        v7[32] = v8[32];
        *(v7 + 528) = *(v8 + 528);
        memcpy(v7 + 536, v8 + 536, 0x130uLL);
        v49 = *(v8 + 856);
        *(v7 + 840) = *(v8 + 840);
        *(v7 + 856) = v49;
        *(v7 + 872) = *(v8 + 872);
        *(v7 + 111) = *(v8 + 111);
        *(v7 + 112) = *(v8 + 112);
        *(v7 + 904) = *(v8 + 904);
        *(v7 + 920) = *(v8 + 920);
        *(v7 + 117) = *(v8 + 117);
        *(v7 + 118) = *(v8 + 118);
        *(v7 + 952) = *(v8 + 952);
        *(v7 + 953) = *(v8 + 953);
        v50 = v31[28];
        __dsta = v7 + v50;
        v51 = v8 + v50;
        v52 = type metadata accessor for CommandOperation(0);
        v53 = *(v52 - 8);
        if ((*(v53 + 48))(v51, 1, v52))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
          memcpy(__dsta, v51, *(*(v54 - 8) + 64));
        }

        else
        {
          *__dsta = *v51;
          v55 = *(v52 + 20);
          v62 = &__dsta[v55];
          v64 = &v51[v55];
          v56 = *&v51[v55 + 16];
          *v62 = *&v51[v55];
          *(v62 + 1) = v56;
          v60 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v57 = type metadata accessor for UUID();
          (*(*(v57 - 8) + 32))(&v62[v60], &v64[v60], v57);
          *&__dsta[*(v52 + 24)] = *&v51[*(v52 + 24)];
          (*(v53 + 56))();
        }

        v10 = v70;
        *(v7 + v31[29]) = *(v8 + v31[29]);
        *(v7 + v31[30]) = *(v8 + v31[30]);
        *(v7 + v31[31]) = *(v8 + v31[31]);
        *(v7 + v31[32]) = *(v8 + v31[32]);
        *(v7 + v31[33]) = *(v8 + v31[33]);
        *(v7 + v31[34]) = *(v8 + v31[34]);
        (*(v66 + 56))(v7, 0, 1, v31);
      }
    }

    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v58 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v58) = *(a2 + v58);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

void *assignWithTake for DialogActionContext(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v6 = a3[6];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for DialogActionContext.CancelType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (v12)
  {
    if (!v13)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v129 = a3;
        v14 = *(v8 + 1);
        *v7 = *v8;
        *(v7 + 1) = v14;
        v7[32] = v8[32];
        *(v7 + 40) = *(v8 + 40);
        v7[56] = v8[56];
        v15 = *(v8 + 13);
        *(v7 + 12) = *(v8 + 12);
        *(v7 + 13) = v15;
        *(v7 + 14) = *(v8 + 14);
        *(v7 + 235) = *(v8 + 235);
        v16 = *(v8 + 9);
        *(v7 + 8) = *(v8 + 8);
        *(v7 + 9) = v16;
        v17 = *(v8 + 11);
        *(v7 + 10) = *(v8 + 10);
        *(v7 + 11) = v17;
        v18 = *(v8 + 5);
        *(v7 + 4) = *(v8 + 4);
        *(v7 + 5) = v18;
        v19 = *(v8 + 7);
        *(v7 + 6) = *(v8 + 6);
        *(v7 + 7) = v19;
        v20 = *(v8 + 17);
        *(v7 + 16) = *(v8 + 16);
        *(v7 + 17) = v20;
        v21 = *(v8 + 23);
        *(v7 + 22) = *(v8 + 22);
        *(v7 + 23) = v21;
        *(v7 + 24) = *(v8 + 24);
        *(v7 + 50) = *(v8 + 50);
        v22 = *(v8 + 19);
        *(v7 + 18) = *(v8 + 18);
        *(v7 + 19) = v22;
        v23 = *(v8 + 21);
        *(v7 + 20) = *(v8 + 20);
        *(v7 + 21) = v23;
        v24 = *(v8 + 456);
        *(v7 + 440) = *(v8 + 440);
        *(v7 + 456) = v24;
        v7[472] = v8[472];
        v25 = *(v8 + 424);
        *(v7 + 408) = *(v8 + 408);
        *(v7 + 424) = v25;
        *(v7 + 30) = *(v8 + 30);
        *(v7 + 489) = *(v8 + 489);
        *(v7 + 32) = *(v8 + 32);
        v7[528] = v8[528];
        memcpy(v7 + 536, v8 + 536, 0x130uLL);
        v26 = *(v8 + 856);
        *(v7 + 840) = *(v8 + 840);
        *(v7 + 856) = v26;
        *(v7 + 872) = *(v8 + 872);
        *(v7 + 111) = *(v8 + 111);
        *(v7 + 112) = *(v8 + 112);
        *(v7 + 904) = *(v8 + 904);
        *(v7 + 920) = *(v8 + 920);
        *(v7 + 117) = *(v8 + 117);
        *(v7 + 118) = *(v8 + 118);
        v7[952] = v8[952];
        *(v7 + 953) = *(v8 + 953);
        v27 = type metadata accessor for PlatformItemList.Item(0);
        v28 = v27[28];
        __dst = &v7[v28];
        v29 = &v8[v28];
        v30 = type metadata accessor for CommandOperation(0);
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(v29, 1, v30))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
          memcpy(__dst, v29, *(*(v32 - 8) + 64));
        }

        else
        {
          *__dst = *v29;
          v56 = *(v30 + 20);
          v117 = &__dst[v56];
          v121 = &v29[v56];
          v57 = *&v29[v56 + 16];
          *v117 = *&v29[v56];
          *(v117 + 1) = v57;
          v114 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v58 = type metadata accessor for UUID();
          (*(*(v58 - 8) + 32))(&v117[v114], &v121[v114], v58);
          *&__dst[*(v30 + 24)] = *&v29[*(v30 + 24)];
          (*(v31 + 56))();
        }

        a3 = v129;
        v7[v27[29]] = v8[v27[29]];
        v7[v27[30]] = v8[v27[30]];
        v7[v27[31]] = v8[v27[31]];
        v7[v27[32]] = v8[v27[32]];
        v7[v27[33]] = v8[v27[33]];
        *&v7[v27[34]] = *&v8[v27[34]];
      }

      else
      {
        v54 = type metadata accessor for PlatformItemList.Item(0);
        __dsta = *(v54 - 1);
        if ((__dsta[6])(v8, 1, v54))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
          memcpy(v7, v8, *(*(v55 - 8) + 64));
        }

        else
        {
          v131 = a3;
          v61 = *(v8 + 1);
          *v7 = *v8;
          *(v7 + 1) = v61;
          v7[32] = v8[32];
          *(v7 + 40) = *(v8 + 40);
          v7[56] = v8[56];
          v62 = *(v8 + 13);
          *(v7 + 12) = *(v8 + 12);
          *(v7 + 13) = v62;
          *(v7 + 14) = *(v8 + 14);
          *(v7 + 235) = *(v8 + 235);
          v63 = *(v8 + 9);
          *(v7 + 8) = *(v8 + 8);
          *(v7 + 9) = v63;
          v64 = *(v8 + 11);
          *(v7 + 10) = *(v8 + 10);
          *(v7 + 11) = v64;
          v65 = *(v8 + 5);
          *(v7 + 4) = *(v8 + 4);
          *(v7 + 5) = v65;
          v66 = *(v8 + 7);
          *(v7 + 6) = *(v8 + 6);
          *(v7 + 7) = v66;
          v67 = *(v8 + 17);
          *(v7 + 16) = *(v8 + 16);
          *(v7 + 17) = v67;
          v68 = *(v8 + 23);
          *(v7 + 22) = *(v8 + 22);
          *(v7 + 23) = v68;
          *(v7 + 24) = *(v8 + 24);
          *(v7 + 50) = *(v8 + 50);
          v69 = *(v8 + 19);
          *(v7 + 18) = *(v8 + 18);
          *(v7 + 19) = v69;
          v70 = *(v8 + 21);
          *(v7 + 20) = *(v8 + 20);
          *(v7 + 21) = v70;
          v71 = *(v8 + 456);
          *(v7 + 440) = *(v8 + 440);
          *(v7 + 456) = v71;
          v7[472] = v8[472];
          v72 = *(v8 + 424);
          *(v7 + 408) = *(v8 + 408);
          *(v7 + 424) = v72;
          *(v7 + 30) = *(v8 + 30);
          *(v7 + 489) = *(v8 + 489);
          *(v7 + 32) = *(v8 + 32);
          v7[528] = v8[528];
          memcpy(v7 + 536, v8 + 536, 0x130uLL);
          v73 = *(v8 + 856);
          *(v7 + 840) = *(v8 + 840);
          *(v7 + 856) = v73;
          *(v7 + 872) = *(v8 + 872);
          *(v7 + 111) = *(v8 + 111);
          *(v7 + 112) = *(v8 + 112);
          *(v7 + 904) = *(v8 + 904);
          *(v7 + 920) = *(v8 + 920);
          *(v7 + 117) = *(v8 + 117);
          *(v7 + 118) = *(v8 + 118);
          v7[952] = v8[952];
          *(v7 + 953) = *(v8 + 953);
          v74 = v54[28];
          v122 = &v7[v74];
          v75 = &v8[v74];
          v76 = type metadata accessor for CommandOperation(0);
          v77 = *(v76 - 8);
          v118 = v75;
          if ((*(v77 + 48))(v75, 1, v76))
          {
            _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
            memcpy(v122, v75, *(*(v78 - 8) + 64));
          }

          else
          {
            *v122 = *v75;
            v102 = *(v76 + 20);
            v103 = &v122[v102];
            v115 = &v118[v102];
            v104 = *&v118[v102 + 16];
            *v103 = *&v118[v102];
            *(v103 + 1) = v104;
            v113 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v105 = type metadata accessor for UUID();
            (*(*(v105 - 8) + 32))(&v103[v113], &v115[v113], v105);
            *&v122[*(v76 + 24)] = *&v118[*(v76 + 24)];
            (*(v77 + 56))();
          }

          v7[v54[29]] = v8[v54[29]];
          v7[v54[30]] = v8[v54[30]];
          v7[v54[31]] = v8[v54[31]];
          v7[v54[32]] = v8[v54[32]];
          v7[v54[33]] = v8[v54[33]];
          *&v7[v54[34]] = *&v8[v54[34]];
          a3 = v131;
          __dsta[7](v7, 0, 1, v54);
        }
      }

      swift_storeEnumTagMultiPayload();
      (*(v10 + 56))(v7, 0, 1, v9);
      goto LABEL_28;
    }

LABEL_8:
    _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
    memcpy(v7, v8, *(*(v33 - 8) + 64));
    goto LABEL_28;
  }

  if (v13)
  {
    outlined destroy of DialogActionContext.CancelType(v7, type metadata accessor for DialogActionContext.CancelType);
    goto LABEL_8;
  }

  if (a1 != a2)
  {
    outlined destroy of DialogActionContext.CancelType(v7, type metadata accessor for DialogActionContext.CancelType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v130 = a3;
      v34 = *(v8 + 1);
      *v7 = *v8;
      *(v7 + 1) = v34;
      v7[32] = v8[32];
      *(v7 + 40) = *(v8 + 40);
      v7[56] = v8[56];
      v35 = *(v8 + 13);
      *(v7 + 12) = *(v8 + 12);
      *(v7 + 13) = v35;
      *(v7 + 14) = *(v8 + 14);
      *(v7 + 235) = *(v8 + 235);
      v36 = *(v8 + 9);
      *(v7 + 8) = *(v8 + 8);
      *(v7 + 9) = v36;
      v37 = *(v8 + 11);
      *(v7 + 10) = *(v8 + 10);
      *(v7 + 11) = v37;
      v38 = *(v8 + 5);
      *(v7 + 4) = *(v8 + 4);
      *(v7 + 5) = v38;
      v39 = *(v8 + 7);
      *(v7 + 6) = *(v8 + 6);
      *(v7 + 7) = v39;
      v40 = *(v8 + 17);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 17) = v40;
      v41 = *(v8 + 23);
      *(v7 + 22) = *(v8 + 22);
      *(v7 + 23) = v41;
      *(v7 + 24) = *(v8 + 24);
      *(v7 + 50) = *(v8 + 50);
      v42 = *(v8 + 19);
      *(v7 + 18) = *(v8 + 18);
      *(v7 + 19) = v42;
      v43 = *(v8 + 21);
      *(v7 + 20) = *(v8 + 20);
      *(v7 + 21) = v43;
      v44 = *(v8 + 456);
      *(v7 + 440) = *(v8 + 440);
      *(v7 + 456) = v44;
      v7[472] = v8[472];
      v45 = *(v8 + 424);
      *(v7 + 408) = *(v8 + 408);
      *(v7 + 424) = v45;
      *(v7 + 30) = *(v8 + 30);
      *(v7 + 489) = *(v8 + 489);
      *(v7 + 32) = *(v8 + 32);
      v7[528] = v8[528];
      memcpy(v7 + 536, v8 + 536, 0x130uLL);
      v46 = *(v8 + 856);
      *(v7 + 840) = *(v8 + 840);
      *(v7 + 856) = v46;
      *(v7 + 872) = *(v8 + 872);
      *(v7 + 111) = *(v8 + 111);
      *(v7 + 112) = *(v8 + 112);
      *(v7 + 904) = *(v8 + 904);
      *(v7 + 920) = *(v8 + 920);
      *(v7 + 117) = *(v8 + 117);
      *(v7 + 118) = *(v8 + 118);
      v7[952] = v8[952];
      *(v7 + 953) = *(v8 + 953);
      v47 = type metadata accessor for PlatformItemList.Item(0);
      v48 = v47[28];
      v49 = &v7[v48];
      v50 = &v8[v48];
      v51 = type metadata accessor for CommandOperation(0);
      v52 = *(v51 - 8);
      if ((*(v52 + 48))(v50, 1, v51))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v49, v50, *(*(v53 - 8) + 64));
      }

      else
      {
        *v49 = *v50;
        v79 = *(v51 + 20);
        __dstc = v49;
        v80 = &v49[v79];
        v123 = &v50[v79];
        v81 = *&v50[v79 + 16];
        *v80 = *&v50[v79];
        *(v80 + 1) = v81;
        v119 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v82 = type metadata accessor for UUID();
        (*(*(v82 - 8) + 32))(&v80[v119], &v123[v119], v82);
        *&__dstc[*(v51 + 24)] = *&v50[*(v51 + 24)];
        (*(v52 + 56))();
      }

      a3 = v130;
      v7[v47[29]] = v8[v47[29]];
      v7[v47[30]] = v8[v47[30]];
      v7[v47[31]] = v8[v47[31]];
      v7[v47[32]] = v8[v47[32]];
      v7[v47[33]] = v8[v47[33]];
      *&v7[v47[34]] = *&v8[v47[34]];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v59 = type metadata accessor for PlatformItemList.Item(0);
      __dstb = *(v59 - 1);
      if ((__dstb[6])(v8, 1, v59))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
        memcpy(v7, v8, *(*(v60 - 8) + 64));
      }

      else
      {
        v132 = a3;
        v83 = *(v8 + 1);
        *v7 = *v8;
        *(v7 + 1) = v83;
        v7[32] = v8[32];
        *(v7 + 40) = *(v8 + 40);
        v7[56] = v8[56];
        v84 = *(v8 + 13);
        *(v7 + 12) = *(v8 + 12);
        *(v7 + 13) = v84;
        *(v7 + 14) = *(v8 + 14);
        *(v7 + 235) = *(v8 + 235);
        v85 = *(v8 + 9);
        *(v7 + 8) = *(v8 + 8);
        *(v7 + 9) = v85;
        v86 = *(v8 + 11);
        *(v7 + 10) = *(v8 + 10);
        *(v7 + 11) = v86;
        v87 = *(v8 + 5);
        *(v7 + 4) = *(v8 + 4);
        *(v7 + 5) = v87;
        v88 = *(v8 + 7);
        *(v7 + 6) = *(v8 + 6);
        *(v7 + 7) = v88;
        v89 = *(v8 + 17);
        *(v7 + 16) = *(v8 + 16);
        *(v7 + 17) = v89;
        v90 = *(v8 + 23);
        *(v7 + 22) = *(v8 + 22);
        *(v7 + 23) = v90;
        *(v7 + 24) = *(v8 + 24);
        *(v7 + 50) = *(v8 + 50);
        v91 = *(v8 + 19);
        *(v7 + 18) = *(v8 + 18);
        *(v7 + 19) = v91;
        v92 = *(v8 + 21);
        *(v7 + 20) = *(v8 + 20);
        *(v7 + 21) = v92;
        v93 = *(v8 + 456);
        *(v7 + 440) = *(v8 + 440);
        *(v7 + 456) = v93;
        v7[472] = v8[472];
        v94 = *(v8 + 424);
        *(v7 + 408) = *(v8 + 408);
        *(v7 + 424) = v94;
        *(v7 + 30) = *(v8 + 30);
        *(v7 + 489) = *(v8 + 489);
        *(v7 + 32) = *(v8 + 32);
        v7[528] = v8[528];
        memcpy(v7 + 536, v8 + 536, 0x130uLL);
        v95 = *(v8 + 856);
        *(v7 + 840) = *(v8 + 840);
        *(v7 + 856) = v95;
        *(v7 + 872) = *(v8 + 872);
        *(v7 + 111) = *(v8 + 111);
        *(v7 + 112) = *(v8 + 112);
        *(v7 + 904) = *(v8 + 904);
        *(v7 + 920) = *(v8 + 920);
        *(v7 + 117) = *(v8 + 117);
        *(v7 + 118) = *(v8 + 118);
        v7[952] = v8[952];
        *(v7 + 953) = *(v8 + 953);
        v96 = v59[28];
        v97 = &v7[v96];
        v98 = &v8[v96];
        v99 = type metadata accessor for CommandOperation(0);
        v100 = *(v99 - 8);
        if ((*(v100 + 48))(v98, 1, v99))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
          memcpy(v97, v98, *(*(v101 - 8) + 64));
        }

        else
        {
          v124 = v97;
          *v97 = *v98;
          v109 = *(v99 + 20);
          v110 = &v97[v109];
          v120 = &v98[v109];
          v111 = *&v98[v109 + 16];
          *v110 = *&v98[v109];
          *(v110 + 1) = v111;
          v116 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v112 = type metadata accessor for UUID();
          (*(*(v112 - 8) + 32))(&v110[v116], &v120[v116], v112);
          *&v124[*(v99 + 24)] = *&v98[*(v99 + 24)];
          (*(v100 + 56))();
        }

        v7[v59[29]] = v8[v59[29]];
        v7[v59[30]] = v8[v59[30]];
        v7[v59[31]] = v8[v59[31]];
        v7[v59[32]] = v8[v59[32]];
        v7[v59[33]] = v8[v59[33]];
        *&v7[v59[34]] = *&v8[v59[34]];
        a3 = v132;
        __dstb[7](v7, 0, 1, v59);
      }

      swift_storeEnumTagMultiPayload();
    }
  }

LABEL_28:
  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  v106 = a3[9];
  v107 = *(a1 + v106);
  *(a1 + v106) = *(a2 + v106);

  return a1;
}

char *initializeBufferWithCopyOfBuffer for DialogActionContext.CancelType(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
      v8 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v8;
      a1[32] = *(a2 + 32);
      v9 = a2[6];
      *(a1 + 5) = a2[5];
      *(a1 + 6) = v9;
      a1[56] = *(a2 + 56);
      v10 = a2[24];
      v11 = v6;
      v12 = v7;

      if (v10 >> 1 == 4294967294)
      {
        v13 = *(a2 + 13);
        *(a1 + 12) = *(a2 + 12);
        *(a1 + 13) = v13;
        *(a1 + 14) = *(a2 + 14);
        *(a1 + 235) = *(a2 + 235);
        v14 = *(a2 + 9);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = v14;
        v15 = *(a2 + 11);
        *(a1 + 10) = *(a2 + 10);
        *(a1 + 11) = v15;
        v16 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v16;
        v17 = *(a2 + 7);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = v17;
        v18 = a2[33];
        if (v18)
        {
LABEL_5:
          *(a1 + 32) = a2[32];
          *(a1 + 33) = v18;
          v19 = a2[34];

          if (v19 >= 2)
          {
            v20 = v19;
          }

          *(a1 + 34) = v19;
          *(a1 + 70) = *(a2 + 70);
          a1[284] = *(a2 + 284);
          *(a1 + 285) = *(a2 + 285);
          v21 = a2[37];
          *(a1 + 36) = a2[36];
          *(a1 + 37) = v21;

LABEL_24:
          v52 = a2[42];
          if (v52 >> 2 == 0xFFFFFFFF)
          {
            v53 = *(a2 + 24);
            *(a1 + 23) = *(a2 + 23);
            *(a1 + 24) = v53;
            *(a1 + 50) = a2[50];
            v54 = *(a2 + 20);
            *(a1 + 19) = *(a2 + 19);
            *(a1 + 20) = v54;
            v55 = *(a2 + 22);
            *(a1 + 21) = *(a2 + 21);
            *(a1 + 22) = v55;
          }

          else
          {
            v56 = a2[38];
            v57 = a2[39];
            v58 = a2[40];
            v59 = a2[41];
            v60 = a2[43];
            v61 = a2[44];
            v62 = a2[45];
            v191 = a2[46];
            v195 = a2[47];
            v200 = a2[48];
            v205 = a2[49];
            __dstb = a2[50];
            outlined copy of PlatformItemList.Item.SystemItem(v56, v57, v58, v59, v52, v60, v61, v62, v191, v195, v200, v205, __dstb);
            *(a1 + 38) = v56;
            *(a1 + 39) = v57;
            *(a1 + 40) = v58;
            *(a1 + 41) = v59;
            *(a1 + 42) = v52;
            *(a1 + 43) = v60;
            *(a1 + 44) = v61;
            *(a1 + 45) = v62;
            *(a1 + 46) = v191;
            *(a1 + 47) = v195;
            *(a1 + 48) = v200;
            *(a1 + 49) = v205;
            *(a1 + 50) = __dstb;
          }

          v63 = a2[52];
          if (v63 == 1)
          {
            v64 = *(a2 + 57);
            *(a1 + 440) = *(a2 + 55);
            *(a1 + 456) = v64;
            a1[472] = *(a2 + 472);
            v65 = *(a2 + 53);
            *(a1 + 408) = *(a2 + 51);
            *(a1 + 424) = v65;
            goto LABEL_39;
          }

          *(a1 + 102) = *(a2 + 102);
          a1[412] = *(a2 + 412);
          if (v63)
          {
            v66 = a2[53];
            *(a1 + 52) = v63;
            *(a1 + 53) = v66;

            v67 = a2[54];
            if (v67)
            {
              goto LABEL_31;
            }
          }

          else
          {
            *(a1 + 26) = *(a2 + 26);
            v67 = a2[54];
            if (v67)
            {
LABEL_31:
              v68 = a2[55];
              *(a1 + 54) = v67;
              *(a1 + 55) = v68;

              v69 = a2[56];
              if (v69)
              {
LABEL_32:
                v70 = a2[57];
                *(a1 + 56) = v69;
                *(a1 + 57) = v70;

LABEL_38:
                *(a1 + 58) = a2[58];
                a1[472] = *(a2 + 472);
LABEL_39:
                v73 = a2[61];
                *(a1 + 60) = a2[60];
                *(a1 + 61) = v73;
                *(a1 + 62) = a2[62];
                a1[504] = *(a2 + 504);
                v74 = a2[64];

                if (v74)
                {
                  v75 = a2[65];
                  *(a1 + 64) = v74;
                  *(a1 + 65) = v75;
                }

                else
                {
                  *(a1 + 32) = *(a2 + 32);
                }

                a1[528] = *(a2 + 528);
                if (!a2[102])
                {
                  memcpy(a1 + 536, a2 + 67, 0x130uLL);
                  goto LABEL_54;
                }

                *(a1 + 67) = a2[67];
                *(a1 + 68) = a2[68];
                a1[552] = *(a2 + 552);
                *(a1 + 70) = a2[70];
                a1[568] = *(a2 + 568);
                *(a1 + 36) = *(a2 + 36);
                a1[592] = *(a2 + 592);
                v76 = a1 + 600;
                v77 = a2 + 75;
                v78 = a2[78];

                if (v78)
                {
                  if (v78 == 1)
                  {
                    v79 = *(a2 + 77);
                    *v76 = *v77;
                    *(a1 + 616) = v79;
                    *(a1 + 632) = *(a2 + 79);
LABEL_50:
                    *(a1 + 81) = a2[81];
                    a1[656] = *(a2 + 656);
                    v81 = a1 + 664;
                    v82 = a2 + 83;
                    v83 = a2[97];
                    if (v83 == 1)
                    {
                      v84 = *(a2 + 97);
                      *(a1 + 760) = *(a2 + 95);
                      *(a1 + 776) = v84;
                      *(a1 + 792) = *(a2 + 99);
                      a1[808] = *(a2 + 808);
                      v85 = *(a2 + 89);
                      *(a1 + 696) = *(a2 + 87);
                      *(a1 + 712) = v85;
                      v86 = *(a2 + 93);
                      *(a1 + 728) = *(a2 + 91);
                      *(a1 + 744) = v86;
                      v87 = *(a2 + 85);
                      *v81 = *v82;
                      *(a1 + 680) = v87;
                    }

                    else
                    {
                      *v81 = *v82;
                      a1[672] = *(a2 + 672);
                      *(a1 + 85) = a2[85];
                      a1[688] = *(a2 + 688);
                      *(a1 + 689) = *(a2 + 689);
                      a1[691] = *(a2 + 691);
                      a1[692] = *(a2 + 692);
                      *(a1 + 87) = a2[87];
                      v88 = *(a2 + 45);
                      *(a1 + 44) = *(a2 + 44);
                      *(a1 + 45) = v88;
                      *(a1 + 92) = a2[92];
                      *(a1 + 372) = *(a2 + 372);
                      *(a1 + 47) = *(a2 + 47);
                      a1[768] = *(a2 + 768);
                      *(a1 + 97) = v83;
                      *(a1 + 49) = *(a2 + 49);
                      *(a1 + 100) = a2[100];
                      a1[808] = *(a2 + 808);
                    }

                    *(a1 + 102) = a2[102];
                    *(a1 + 103) = a2[103];
                    *(a1 + 104) = a2[104];

LABEL_54:
                    v89 = a1 + 840;
                    v90 = a2 + 105;
                    v91 = a2[108];
                    if (v91)
                    {
                      if (v91 == 1)
                      {
                        v92 = *(a2 + 107);
                        *v89 = *v90;
                        *(a1 + 856) = v92;
                        *(a1 + 872) = *(a2 + 109);
                        *(a1 + 111) = a2[111];
LABEL_61:
                        v96 = a2[112];
                        *(a1 + 112) = v96;
                        *(a1 + 113) = a2[113];
                        *(a1 + 114) = a2[114];
                        *(a1 + 115) = a2[115];
                        *(a1 + 116) = a2[116];
                        *(a1 + 117) = a2[117];
                        *(a1 + 118) = a2[118];
                        *(a1 + 476) = *(a2 + 476);
                        a1[954] = *(a2 + 954);
                        v97 = type metadata accessor for PlatformItemList.Item(0);
                        v98 = v97[28];
                        __dst = &a1[v98];
                        v99 = a2 + v98;
                        v100 = type metadata accessor for CommandOperation(0);
                        v196 = *(v100 - 8);
                        v201 = *(v196 + 48);
                        v101 = v96;

                        if (v201(v99, 1, v100))
                        {
                          _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                          memcpy(__dst, v99, *(*(v102 - 8) + 64));
                        }

                        else
                        {
                          *__dst = *v99;
                          v103 = *(v100 + 20);
                          v104 = &__dst[v103];
                          v105 = &v99[v103];
                          v202 = v99;
                          v206 = v100;
                          v106 = *&v99[v103];
                          v107 = *(v105 + 1);
                          v108 = v105[16];
                          outlined copy of Text.Storage(v106, v107, v108);
                          *v104 = v106;
                          *(v104 + 1) = v107;
                          v104[16] = v108;
                          *(v104 + 3) = *(v105 + 3);
                          v109 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v110 = type metadata accessor for UUID();
                          v192 = *(*(v110 - 8) + 16);

                          v192(&v104[v109], &v105[v109], v110);
                          v111 = *(v206 + 24);
                          v112 = &__dst[v111];
                          v113 = &v202[v111];
                          if (*v113)
                          {
                            v114 = *(v113 + 1);
                            *v112 = *v113;
                            *(v112 + 1) = v114;
                          }

                          else
                          {
                            *v112 = *v113;
                          }

                          (*(v196 + 56))(__dst, 0, 1, v206);
                        }

                        a1[v97[29]] = *(a2 + v97[29]);
                        a1[v97[30]] = *(a2 + v97[30]);
                        a1[v97[31]] = *(a2 + v97[31]);
                        a1[v97[32]] = *(a2 + v97[32]);
                        a1[v97[33]] = *(a2 + v97[33]);
                        *&a1[v97[34]] = *(a2 + v97[34]);

                        goto LABEL_116;
                      }

                      *(a1 + 108) = v91;
                      *(a1 + 109) = a2[109];
                      (**(v91 - 1))(v89, v90);
                      v94 = a2[110];
                      if (!v94)
                      {
LABEL_60:
                        *(a1 + 55) = *(a2 + 55);
                        goto LABEL_61;
                      }
                    }

                    else
                    {
                      v93 = *(a2 + 107);
                      *v89 = *v90;
                      *(a1 + 856) = v93;
                      *(a1 + 109) = a2[109];
                      v94 = a2[110];
                      if (!v94)
                      {
                        goto LABEL_60;
                      }
                    }

                    v95 = a2[111];
                    *(a1 + 110) = v94;
                    *(a1 + 111) = v95;

                    goto LABEL_61;
                  }

                  *(a1 + 78) = v78;
                  *(a1 + 79) = a2[79];
                  (**(v78 - 1))(a1 + 600, a2 + 75, v78);
                }

                else
                {
                  v80 = *(a2 + 77);
                  *v76 = *v77;
                  *(a1 + 616) = v80;
                  *(a1 + 79) = a2[79];
                }

                *(a1 + 80) = a2[80];

                goto LABEL_50;
              }

LABEL_37:
              *(a1 + 28) = *(a2 + 28);
              goto LABEL_38;
            }
          }

          *(a1 + 27) = *(a2 + 27);
          v69 = a2[56];
          if (v69)
          {
            goto LABEL_32;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v26 = *(a2 + 72);
        if (v26 == 255)
        {
          *(a1 + 8) = a2[8];
          a1[72] = *(a2 + 72);
        }

        else
        {
          v27 = a2[8];
          outlined copy of GraphicsImage.Contents(v27, *(a2 + 72));
          *(a1 + 8) = v27;
          a1[72] = v26;
          v10 = a2[24];
        }

        *(a1 + 10) = a2[10];
        *(a1 + 88) = *(a2 + 11);
        a1[104] = *(a2 + 104);
        *(a1 + 108) = *(a2 + 108);
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 136) = *(a2 + 17);
        *(a1 + 152) = *(a2 + 19);
        *(a1 + 84) = *(a2 + 84);
        a1[170] = *(a2 + 170);
        a1[171] = *(a2 + 171);
        if (v10 >> 1 == 0xFFFFFFFF)
        {
          v44 = *(a2 + 12);
          *(a1 + 11) = *(a2 + 11);
          *(a1 + 12) = v44;
        }

        else
        {
          v45 = a2[22];
          v46 = a2[23];
          v47 = a2[25];
          outlined copy of AccessibilityImageLabel(v45, v46, v10, v47);
          *(a1 + 22) = v45;
          *(a1 + 23) = v46;
          *(a1 + 24) = v10;
          *(a1 + 25) = v47;
        }

        v48 = a2[27];
        *(a1 + 26) = a2[26];
        *(a1 + 27) = v48;
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 57) = *(a2 + 57);
        a1[232] = *(a2 + 232);
        v49 = a2[30];
        *(a1 + 30) = v49;
        *(a1 + 124) = *(a2 + 124);
        a1[250] = *(a2 + 250);
        swift_unknownObjectRetain();

        v50 = v49;
        v18 = a2[33];
        if (v18)
        {
          goto LABEL_5;
        }
      }

      v51 = *(a2 + 17);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 17) = v51;
      *(a1 + 18) = *(a2 + 18);
      goto LABEL_24;
    }

    v23 = type metadata accessor for PlatformItemList.Item(0);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(a2, 1, v23))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v25 - 8) + 64));
LABEL_116:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v28 = *a2;
    v29 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v29;
    v30 = a2[3];
    *(a1 + 2) = a2[2];
    *(a1 + 3) = v30;
    a1[32] = *(a2 + 32);
    v31 = a2[6];
    *(a1 + 5) = a2[5];
    *(a1 + 6) = v31;
    a1[56] = *(a2 + 56);
    v32 = a2[24];
    v33 = v28;
    v34 = v29;

    if (v32 >> 1 == 4294967294)
    {
      v35 = *(a2 + 13);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = v35;
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      v36 = *(a2 + 9);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = v36;
      v37 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v37;
      v38 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v38;
      v39 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v39;
      v40 = a2[33];
      if (v40)
      {
LABEL_15:
        *(a1 + 32) = a2[32];
        *(a1 + 33) = v40;
        v41 = a2[34];

        if (v41 >= 2)
        {
          v42 = v41;
        }

        *(a1 + 34) = v41;
        *(a1 + 70) = *(a2 + 70);
        a1[284] = *(a2 + 284);
        *(a1 + 285) = *(a2 + 285);
        v43 = a2[37];
        *(a1 + 36) = a2[36];
        *(a1 + 37) = v43;

LABEL_74:
        v123 = a2[42];
        v207 = v24;
        __dsta = v23;
        if (v123 >> 2 == 0xFFFFFFFF)
        {
          v124 = *(a2 + 24);
          *(a1 + 23) = *(a2 + 23);
          *(a1 + 24) = v124;
          *(a1 + 50) = a2[50];
          v125 = *(a2 + 20);
          *(a1 + 19) = *(a2 + 19);
          *(a1 + 20) = v125;
          v126 = *(a2 + 22);
          *(a1 + 21) = *(a2 + 21);
          *(a1 + 22) = v126;
        }

        else
        {
          v127 = a2[38];
          v128 = a2[39];
          v129 = a2[40];
          v130 = a2[41];
          v132 = a2[43];
          v131 = a2[44];
          v133 = a2[45];
          v188 = a2[46];
          v189 = a2[47];
          v193 = a2[48];
          v197 = a2[49];
          v203 = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v127, v128, v129, v130, v123, v132, v131, v133, v188, v189, v193, v197, v203);
          *(a1 + 38) = v127;
          *(a1 + 39) = v128;
          *(a1 + 40) = v129;
          *(a1 + 41) = v130;
          *(a1 + 42) = v123;
          *(a1 + 43) = v132;
          v23 = __dsta;
          *(a1 + 44) = v131;
          *(a1 + 45) = v133;
          *(a1 + 46) = v188;
          *(a1 + 47) = v189;
          *(a1 + 48) = v193;
          *(a1 + 49) = v197;
          *(a1 + 50) = v203;
        }

        v134 = a2[52];
        if (v134 == 1)
        {
          v135 = *(a2 + 57);
          *(a1 + 440) = *(a2 + 55);
          *(a1 + 456) = v135;
          a1[472] = *(a2 + 472);
          v136 = *(a2 + 53);
          *(a1 + 408) = *(a2 + 51);
          *(a1 + 424) = v136;
          goto LABEL_87;
        }

        *(a1 + 102) = *(a2 + 102);
        a1[412] = *(a2 + 412);
        if (v134)
        {
          v137 = a2[53];
          *(a1 + 52) = v134;
          *(a1 + 53) = v137;

          v138 = a2[54];
          if (v138)
          {
            goto LABEL_81;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v138 = a2[54];
          if (v138)
          {
LABEL_81:
            v139 = a2[55];
            *(a1 + 54) = v138;
            *(a1 + 55) = v139;

            v140 = a2[56];
            if (v140)
            {
LABEL_82:
              v141 = a2[57];
              *(a1 + 56) = v140;
              *(a1 + 57) = v141;

LABEL_86:
              *(a1 + 58) = a2[58];
              a1[472] = *(a2 + 472);
LABEL_87:
              v142 = a2[61];
              *(a1 + 60) = a2[60];
              *(a1 + 61) = v142;
              *(a1 + 62) = a2[62];
              a1[504] = *(a2 + 504);
              v143 = a2[64];

              if (v143)
              {
                v144 = a2[65];
                *(a1 + 64) = v143;
                *(a1 + 65) = v144;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              a1[528] = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 536, a2 + 67, 0x130uLL);
                goto LABEL_102;
              }

              *(a1 + 67) = a2[67];
              *(a1 + 68) = a2[68];
              a1[552] = *(a2 + 552);
              *(a1 + 70) = a2[70];
              a1[568] = *(a2 + 568);
              *(a1 + 36) = *(a2 + 36);
              a1[592] = *(a2 + 592);
              v145 = a1 + 600;
              v146 = a2 + 75;
              v147 = a2[78];

              if (v147)
              {
                if (v147 == 1)
                {
                  v148 = *(a2 + 77);
                  *v145 = *v146;
                  *(a1 + 616) = v148;
                  *(a1 + 632) = *(a2 + 79);
LABEL_98:
                  *(a1 + 81) = a2[81];
                  a1[656] = *(a2 + 656);
                  v150 = a1 + 664;
                  v151 = a2 + 83;
                  v152 = a2[97];
                  if (v152 == 1)
                  {
                    v153 = *(a2 + 97);
                    *(a1 + 760) = *(a2 + 95);
                    *(a1 + 776) = v153;
                    *(a1 + 792) = *(a2 + 99);
                    a1[808] = *(a2 + 808);
                    v154 = *(a2 + 89);
                    *(a1 + 696) = *(a2 + 87);
                    *(a1 + 712) = v154;
                    v155 = *(a2 + 93);
                    *(a1 + 728) = *(a2 + 91);
                    *(a1 + 744) = v155;
                    v156 = *(a2 + 85);
                    *v150 = *v151;
                    *(a1 + 680) = v156;
                  }

                  else
                  {
                    *v150 = *v151;
                    a1[672] = *(a2 + 672);
                    *(a1 + 85) = a2[85];
                    a1[688] = *(a2 + 688);
                    *(a1 + 689) = *(a2 + 689);
                    a1[691] = *(a2 + 691);
                    a1[692] = *(a2 + 692);
                    *(a1 + 87) = a2[87];
                    v157 = *(a2 + 45);
                    *(a1 + 44) = *(a2 + 44);
                    *(a1 + 45) = v157;
                    *(a1 + 92) = a2[92];
                    *(a1 + 372) = *(a2 + 372);
                    *(a1 + 47) = *(a2 + 47);
                    a1[768] = *(a2 + 768);
                    *(a1 + 97) = v152;
                    *(a1 + 49) = *(a2 + 49);
                    *(a1 + 100) = a2[100];
                    a1[808] = *(a2 + 808);
                  }

                  *(a1 + 102) = a2[102];
                  *(a1 + 103) = a2[103];
                  *(a1 + 104) = a2[104];

LABEL_102:
                  v158 = a1 + 840;
                  v159 = a2 + 105;
                  v160 = a2[108];
                  if (v160)
                  {
                    if (v160 == 1)
                    {
                      v161 = *(a2 + 107);
                      *v158 = *v159;
                      *(a1 + 856) = v161;
                      *(a1 + 872) = *(a2 + 109);
                      *(a1 + 111) = a2[111];
LABEL_109:
                      v165 = a2[112];
                      *(a1 + 112) = v165;
                      *(a1 + 113) = a2[113];
                      *(a1 + 114) = a2[114];
                      *(a1 + 115) = a2[115];
                      *(a1 + 116) = a2[116];
                      *(a1 + 117) = a2[117];
                      *(a1 + 118) = a2[118];
                      *(a1 + 476) = *(a2 + 476);
                      a1[954] = *(a2 + 954);
                      v166 = *(v23 + 112);
                      v204 = &a1[v166];
                      v167 = a2 + v166;
                      v168 = type metadata accessor for CommandOperation(0);
                      v194 = *(v168 - 8);
                      v198 = *(v194 + 48);
                      v169 = v165;
                      v170 = v167;

                      if (v198(v167, 1, v168))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(v204, v167, *(*(v171 - 8) + 64));
                        v172 = __dsta;
                      }

                      else
                      {
                        *v204 = *v167;
                        v173 = *(v168 + 20);
                        v174 = v168;
                        v175 = &v204[v173];
                        v176 = &v170[v173];
                        v199 = v170;
                        v177 = *&v170[v173];
                        v178 = *(v176 + 1);
                        v179 = v176[16];
                        outlined copy of Text.Storage(v177, v178, v179);
                        *v175 = v177;
                        *(v175 + 1) = v178;
                        v175[16] = v179;
                        *(v175 + 3) = *(v176 + 3);
                        v180 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v181 = type metadata accessor for UUID();
                        v190 = *(*(v181 - 8) + 16);

                        v190(&v175[v180], &v176[v180], v181);
                        v182 = *(v174 + 24);
                        v183 = &v204[v182];
                        v184 = &v199[v182];
                        if (*v184)
                        {
                          v185 = v184[1];
                          *v183 = *v184;
                          *(v183 + 1) = v185;
                        }

                        else
                        {
                          *v183 = *v184;
                        }

                        v172 = __dsta;
                        (*(v194 + 56))(v204, 0, 1, v174);
                      }

                      a1[v172[29]] = *(a2 + v172[29]);
                      a1[v172[30]] = *(a2 + v172[30]);
                      a1[v172[31]] = *(a2 + v172[31]);
                      a1[v172[32]] = *(a2 + v172[32]);
                      a1[v172[33]] = *(a2 + v172[33]);
                      *&a1[v172[34]] = *(a2 + v172[34]);
                      v186 = *(v207 + 56);

                      v186(a1, 0, 1, v172);
                      goto LABEL_116;
                    }

                    *(a1 + 108) = v160;
                    *(a1 + 109) = a2[109];
                    (**(v160 - 1))(v158, v159);
                    v163 = a2[110];
                    if (!v163)
                    {
LABEL_108:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_109;
                    }
                  }

                  else
                  {
                    v162 = *(a2 + 107);
                    *v158 = *v159;
                    *(a1 + 856) = v162;
                    *(a1 + 109) = a2[109];
                    v163 = a2[110];
                    if (!v163)
                    {
                      goto LABEL_108;
                    }
                  }

                  v164 = a2[111];
                  *(a1 + 110) = v163;
                  *(a1 + 111) = v164;

                  goto LABEL_109;
                }

                *(a1 + 78) = v147;
                *(a1 + 79) = a2[79];
                (**(v147 - 1))(a1 + 600, a2 + 75, v147);
              }

              else
              {
                v149 = *(a2 + 77);
                *v145 = *v146;
                *(a1 + 616) = v149;
                *(a1 + 79) = a2[79];
              }

              *(a1 + 80) = a2[80];

              goto LABEL_98;
            }

LABEL_85:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_86;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v140 = a2[56];
        if (v140)
        {
          goto LABEL_82;
        }

        goto LABEL_85;
      }
    }

    else
    {
      v71 = *(a2 + 72);
      if (v71 == 255)
      {
        *(a1 + 8) = a2[8];
        a1[72] = *(a2 + 72);
      }

      else
      {
        v72 = a2[8];
        outlined copy of GraphicsImage.Contents(v72, *(a2 + 72));
        *(a1 + 8) = v72;
        a1[72] = v71;
        v32 = a2[24];
      }

      *(a1 + 10) = a2[10];
      *(a1 + 88) = *(a2 + 11);
      a1[104] = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 136) = *(a2 + 17);
      *(a1 + 152) = *(a2 + 19);
      *(a1 + 84) = *(a2 + 84);
      a1[170] = *(a2 + 170);
      a1[171] = *(a2 + 171);
      if (v32 >> 1 == 0xFFFFFFFF)
      {
        v115 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v115;
      }

      else
      {
        v116 = a2[22];
        v117 = a2[23];
        v118 = a2[25];
        outlined copy of AccessibilityImageLabel(v116, v117, v32, v118);
        *(a1 + 22) = v116;
        *(a1 + 23) = v117;
        *(a1 + 24) = v32;
        *(a1 + 25) = v118;
      }

      v119 = a2[27];
      *(a1 + 26) = a2[26];
      *(a1 + 27) = v119;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 57) = *(a2 + 57);
      a1[232] = *(a2 + 232);
      v120 = a2[30];
      *(a1 + 30) = v120;
      *(a1 + 124) = *(a2 + 124);
      a1[250] = *(a2 + 250);
      swift_unknownObjectRetain();

      v121 = v120;
      v40 = a2[33];
      if (v40)
      {
        goto LABEL_15;
      }
    }

    v122 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v122;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_74;
  }

  v22 = *a2;
  *a1 = *a2;
  a1 = (v22 + ((v5 + 16) & ~v5));

  return a1;
}

double destroy for DialogActionContext.CancelType(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = *(a1 + 192);
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v5 = *(a1 + 72);
      if (v5 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 64), v5);
        v3 = *(a1 + 192);
        v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v4 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v3, *(a1 + 200));
      }

      swift_unknownObjectRelease();
    }

    if (*(a1 + 264))
    {

      v6 = *(a1 + 272);
      if (v6 >= 2)
      {
      }
    }

    v7 = *(a1 + 336);
    if (v7 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v7, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
    }

    v8 = *(a1 + 416);
    if (v8)
    {
      if (v8 == 1)
      {
        goto LABEL_21;
      }
    }

    if (*(a1 + 432))
    {
    }

    if (*(a1 + 448))
    {
    }

LABEL_21:

    if (*(a1 + 512))
    {
    }

    if (!*(a1 + 816))
    {
LABEL_31:
      v10 = *(a1 + 864);
      if (v10)
      {
        if (v10 == 1)
        {
LABEL_36:

          v11 = *(type metadata accessor for PlatformItemList.Item(0) + 112);
          goto LABEL_73;
        }

        __swift_destroy_boxed_opaque_existential_1((a1 + 840));
      }

      if (*(a1 + 880))
      {
      }

      goto LABEL_36;
    }

    v9 = *(a1 + 624);
    if (v9)
    {
      if (v9 == 1)
      {
LABEL_28:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_31;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 600));
    }

    goto LABEL_28;
  }

  v12 = type metadata accessor for PlatformItemList.Item(0);
  if ((*(*(v12 - 8) + 48))(a1, 1, v12))
  {
    return result;
  }

  v14 = *(a1 + 192);
  v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
  if ((v14 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v16 = *(a1 + 72);
    if (v16 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 64), v16);
      v14 = *(a1 + 192);
      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v15 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v14, *(a1 + 200));
    }

    swift_unknownObjectRelease();
  }

  if (*(a1 + 264))
  {

    v17 = *(a1 + 272);
    if (v17 >= 2)
    {
    }
  }

  v18 = *(a1 + 336);
  if (v18 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v18, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
  }

  v19 = *(a1 + 416);
  if (v19)
  {
    if (v19 == 1)
    {
      goto LABEL_57;
    }
  }

  if (*(a1 + 432))
  {
  }

  if (*(a1 + 448))
  {
  }

LABEL_57:

  if (*(a1 + 512))
  {
  }

  if (*(a1 + 816))
  {

    v20 = *(a1 + 624);
    if (v20)
    {
      if (v20 == 1)
      {
LABEL_64:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_67;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 600));
    }

    goto LABEL_64;
  }

LABEL_67:
  v21 = *(a1 + 864);
  if (!v21)
  {
    goto LABEL_70;
  }

  if (v21 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 840));
LABEL_70:
    if (*(a1 + 880))
    {
    }
  }

  v11 = *(v12 + 112);
LABEL_73:
  v22 = a1 + v11;
  v23 = type metadata accessor for CommandOperation(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = v22 + *(v23 + 20);
    outlined consume of Text.Storage(*v24, *(v24 + 8), *(v24 + 16));

    v25 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 8))(v24 + v25, v26);
    if (*(v22 + *(v23 + 24)))
    {
    }
  }

  return result;
}

void *initializeWithCopy for DialogActionContext.CancelType(void *a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    *a1 = *a2;
    a1[1] = v6;
    v7 = *(a2 + 24);
    a1[2] = *(a2 + 16);
    a1[3] = v7;
    *(a1 + 32) = *(a2 + 32);
    v8 = *(a2 + 48);
    a1[5] = *(a2 + 40);
    a1[6] = v8;
    *(a1 + 56) = *(a2 + 56);
    v9 = *(a2 + 192);
    v10 = v5;
    v11 = v6;

    if (v9 >> 1 == 4294967294)
    {
      v12 = *(a2 + 208);
      *(a1 + 12) = *(a2 + 192);
      *(a1 + 13) = v12;
      *(a1 + 14) = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      v13 = *(a2 + 144);
      *(a1 + 8) = *(a2 + 128);
      *(a1 + 9) = v13;
      v14 = *(a2 + 176);
      *(a1 + 10) = *(a2 + 160);
      *(a1 + 11) = v14;
      v15 = *(a2 + 80);
      *(a1 + 4) = *(a2 + 64);
      *(a1 + 5) = v15;
      v16 = *(a2 + 112);
      *(a1 + 6) = *(a2 + 96);
      *(a1 + 7) = v16;
      v17 = *(a2 + 264);
      if (v17)
      {
LABEL_4:
        a1[32] = *(a2 + 256);
        a1[33] = v17;
        v18 = *(a2 + 272);

        if (v18 >= 2)
        {
          v19 = v18;
        }

        a1[34] = v18;
        *(a1 + 70) = *(a2 + 280);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 285) = *(a2 + 285);
        v20 = *(a2 + 296);
        a1[36] = *(a2 + 288);
        a1[37] = v20;

LABEL_22:
        v50 = *(a2 + 336);
        if (v50 >> 2 == 0xFFFFFFFF)
        {
          v51 = *(a2 + 384);
          *(a1 + 23) = *(a2 + 368);
          *(a1 + 24) = v51;
          a1[50] = *(a2 + 400);
          v52 = *(a2 + 320);
          *(a1 + 19) = *(a2 + 304);
          *(a1 + 20) = v52;
          v53 = *(a2 + 352);
          *(a1 + 21) = *(a2 + 336);
          *(a1 + 22) = v53;
        }

        else
        {
          v54 = *(a2 + 304);
          v55 = *(a2 + 312);
          v56 = *(a2 + 320);
          v57 = *(a2 + 328);
          v58 = *(a2 + 344);
          v59 = *(a2 + 352);
          v60 = *(a2 + 360);
          v189 = *(a2 + 368);
          v193 = *(a2 + 376);
          v198 = *(a2 + 384);
          v203 = *(a2 + 392);
          __dstb = *(a2 + 400);
          outlined copy of PlatformItemList.Item.SystemItem(v54, v55, v56, v57, v50, v58, v59, v60, v189, v193, v198, v203, __dstb);
          a1[38] = v54;
          a1[39] = v55;
          a1[40] = v56;
          a1[41] = v57;
          a1[42] = v50;
          a1[43] = v58;
          a1[44] = v59;
          a1[45] = v60;
          a1[46] = v189;
          a1[47] = v193;
          a1[48] = v198;
          a1[49] = v203;
          a1[50] = __dstb;
        }

        v61 = *(a2 + 416);
        if (v61 == 1)
        {
          v62 = *(a2 + 456);
          *(a1 + 55) = *(a2 + 440);
          *(a1 + 57) = v62;
          *(a1 + 472) = *(a2 + 472);
          v63 = *(a2 + 424);
          *(a1 + 51) = *(a2 + 408);
          *(a1 + 53) = v63;
          goto LABEL_37;
        }

        *(a1 + 102) = *(a2 + 408);
        *(a1 + 412) = *(a2 + 412);
        if (v61)
        {
          v64 = *(a2 + 424);
          a1[52] = v61;
          a1[53] = v64;

          v65 = *(a2 + 432);
          if (v65)
          {
            goto LABEL_29;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 416);
          v65 = *(a2 + 432);
          if (v65)
          {
LABEL_29:
            v66 = *(a2 + 440);
            a1[54] = v65;
            a1[55] = v66;

            v67 = *(a2 + 448);
            if (v67)
            {
LABEL_30:
              v68 = *(a2 + 456);
              a1[56] = v67;
              a1[57] = v68;

LABEL_36:
              a1[58] = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
LABEL_37:
              v71 = *(a2 + 488);
              a1[60] = *(a2 + 480);
              a1[61] = v71;
              a1[62] = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              v72 = *(a2 + 512);

              if (v72)
              {
                v73 = *(a2 + 520);
                a1[64] = v72;
                a1[65] = v73;
              }

              else
              {
                *(a1 + 32) = *(a2 + 512);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!*(a2 + 816))
              {
                memcpy(a1 + 67, (a2 + 536), 0x130uLL);
                goto LABEL_52;
              }

              a1[67] = *(a2 + 536);
              a1[68] = *(a2 + 544);
              *(a1 + 552) = *(a2 + 552);
              a1[70] = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 36) = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              v74 = a1 + 75;
              v75 = (a2 + 600);
              v76 = *(a2 + 624);

              if (v76)
              {
                if (v76 == 1)
                {
                  v77 = *(a2 + 616);
                  *v74 = *v75;
                  *(a1 + 77) = v77;
                  *(a1 + 79) = *(a2 + 632);
LABEL_48:
                  a1[81] = *(a2 + 648);
                  *(a1 + 656) = *(a2 + 656);
                  v79 = a1 + 83;
                  v80 = (a2 + 664);
                  v81 = *(a2 + 776);
                  if (v81 == 1)
                  {
                    v82 = *(a2 + 776);
                    *(a1 + 95) = *(a2 + 760);
                    *(a1 + 97) = v82;
                    *(a1 + 99) = *(a2 + 792);
                    *(a1 + 808) = *(a2 + 808);
                    v83 = *(a2 + 712);
                    *(a1 + 87) = *(a2 + 696);
                    *(a1 + 89) = v83;
                    v84 = *(a2 + 744);
                    *(a1 + 91) = *(a2 + 728);
                    *(a1 + 93) = v84;
                    v85 = *(a2 + 680);
                    *v79 = *v80;
                    *(a1 + 85) = v85;
                  }

                  else
                  {
                    *v79 = *v80;
                    *(a1 + 672) = *(a2 + 672);
                    a1[85] = *(a2 + 680);
                    *(a1 + 688) = *(a2 + 688);
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    a1[87] = *(a2 + 696);
                    v86 = *(a2 + 720);
                    *(a1 + 44) = *(a2 + 704);
                    *(a1 + 45) = v86;
                    a1[92] = *(a2 + 736);
                    *(a1 + 372) = *(a2 + 744);
                    *(a1 + 47) = *(a2 + 752);
                    *(a1 + 768) = *(a2 + 768);
                    a1[97] = v81;
                    *(a1 + 49) = *(a2 + 784);
                    a1[100] = *(a2 + 800);
                    *(a1 + 808) = *(a2 + 808);
                  }

                  a1[102] = *(a2 + 816);
                  a1[103] = *(a2 + 824);
                  a1[104] = *(a2 + 832);

LABEL_52:
                  v87 = a1 + 105;
                  v88 = (a2 + 840);
                  v89 = *(a2 + 864);
                  if (v89)
                  {
                    if (v89 == 1)
                    {
                      v90 = *(a2 + 856);
                      *v87 = *v88;
                      *(a1 + 107) = v90;
                      *(a1 + 109) = *(a2 + 872);
                      a1[111] = *(a2 + 888);
LABEL_59:
                      v94 = *(a2 + 896);
                      a1[112] = v94;
                      a1[113] = *(a2 + 904);
                      a1[114] = *(a2 + 912);
                      a1[115] = *(a2 + 920);
                      a1[116] = *(a2 + 928);
                      a1[117] = *(a2 + 936);
                      a1[118] = *(a2 + 944);
                      *(a1 + 476) = *(a2 + 952);
                      *(a1 + 954) = *(a2 + 954);
                      v95 = type metadata accessor for PlatformItemList.Item(0);
                      v96 = v95[28];
                      __dst = a1 + v96;
                      v97 = (a2 + v96);
                      v98 = type metadata accessor for CommandOperation(0);
                      v194 = *(v98 - 8);
                      v199 = *(v194 + 48);
                      v99 = v94;

                      if (v199(v97, 1, v98))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v97, *(*(v100 - 8) + 64));
                      }

                      else
                      {
                        *__dst = *v97;
                        v101 = *(v98 + 20);
                        v102 = &__dst[v101];
                        v103 = &v97[v101];
                        v200 = v97;
                        v204 = v98;
                        v104 = *&v97[v101];
                        v105 = *(v103 + 1);
                        v106 = v103[16];
                        outlined copy of Text.Storage(v104, v105, v106);
                        *v102 = v104;
                        *(v102 + 1) = v105;
                        v102[16] = v106;
                        *(v102 + 3) = *(v103 + 3);
                        v107 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v108 = type metadata accessor for UUID();
                        v190 = *(*(v108 - 8) + 16);

                        v190(&v102[v107], &v103[v107], v108);
                        v109 = *(v204 + 24);
                        v110 = &__dst[v109];
                        v111 = &v200[v109];
                        if (*v111)
                        {
                          v112 = *(v111 + 1);
                          *v110 = *v111;
                          v110[1] = v112;
                        }

                        else
                        {
                          *v110 = *v111;
                        }

                        (*(v194 + 56))(__dst, 0, 1, v204);
                      }

                      *(a1 + v95[29]) = *(a2 + v95[29]);
                      *(a1 + v95[30]) = *(a2 + v95[30]);
                      *(a1 + v95[31]) = *(a2 + v95[31]);
                      *(a1 + v95[32]) = *(a2 + v95[32]);
                      *(a1 + v95[33]) = *(a2 + v95[33]);
                      *(a1 + v95[34]) = *(a2 + v95[34]);

                      goto LABEL_114;
                    }

                    a1[108] = v89;
                    a1[109] = *(a2 + 872);
                    (**(v89 - 8))(v87, v88);
                    v92 = *(a2 + 880);
                    if (!v92)
                    {
LABEL_58:
                      *(a1 + 55) = *(a2 + 880);
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    v91 = *(a2 + 856);
                    *v87 = *v88;
                    *(a1 + 107) = v91;
                    a1[109] = *(a2 + 872);
                    v92 = *(a2 + 880);
                    if (!v92)
                    {
                      goto LABEL_58;
                    }
                  }

                  v93 = *(a2 + 888);
                  a1[110] = v92;
                  a1[111] = v93;

                  goto LABEL_59;
                }

                a1[78] = v76;
                a1[79] = *(a2 + 632);
                (**(v76 - 8))(a1 + 75, a2 + 600, v76);
              }

              else
              {
                v78 = *(a2 + 616);
                *v74 = *v75;
                *(a1 + 77) = v78;
                a1[79] = *(a2 + 632);
              }

              a1[80] = *(a2 + 640);

              goto LABEL_48;
            }

LABEL_35:
            *(a1 + 28) = *(a2 + 448);
            goto LABEL_36;
          }
        }

        *(a1 + 27) = *(a2 + 432);
        v67 = *(a2 + 448);
        if (v67)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v24 = *(a2 + 72);
      if (v24 == 255)
      {
        a1[8] = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v25 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v25, *(a2 + 72));
        a1[8] = v25;
        *(a1 + 72) = v24;
        v9 = *(a2 + 192);
      }

      a1[10] = *(a2 + 80);
      *(a1 + 11) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 17) = *(a2 + 136);
      *(a1 + 19) = *(a2 + 152);
      *(a1 + 84) = *(a2 + 168);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      if (v9 >> 1 == 0xFFFFFFFF)
      {
        v42 = *(a2 + 192);
        *(a1 + 11) = *(a2 + 176);
        *(a1 + 12) = v42;
      }

      else
      {
        v43 = *(a2 + 176);
        v44 = *(a2 + 184);
        v45 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v43, v44, v9, v45);
        a1[22] = v43;
        a1[23] = v44;
        a1[24] = v9;
        a1[25] = v45;
      }

      v46 = *(a2 + 216);
      a1[26] = *(a2 + 208);
      a1[27] = v46;
      *(a1 + 112) = *(a2 + 224);
      *(a1 + 57) = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      v47 = *(a2 + 240);
      a1[30] = v47;
      *(a1 + 124) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v48 = v47;
      v17 = *(a2 + 264);
      if (v17)
      {
        goto LABEL_4;
      }
    }

    v49 = *(a2 + 272);
    *(a1 + 16) = *(a2 + 256);
    *(a1 + 17) = v49;
    *(a1 + 18) = *(a2 + 288);
    goto LABEL_22;
  }

  v21 = type metadata accessor for PlatformItemList.Item(0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(a2, 1, v21))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
    memcpy(a1, a2, *(*(v23 - 8) + 64));
    goto LABEL_114;
  }

  v26 = *a2;
  v27 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v27;
  v28 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v28;
  *(a1 + 32) = *(a2 + 32);
  v29 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v29;
  *(a1 + 56) = *(a2 + 56);
  v30 = *(a2 + 192);
  v31 = v26;
  v32 = v27;

  if (v30 >> 1 != 4294967294)
  {
    v69 = *(a2 + 72);
    if (v69 == 255)
    {
      a1[8] = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v70 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v70, *(a2 + 72));
      a1[8] = v70;
      *(a1 + 72) = v69;
      v30 = *(a2 + 192);
    }

    a1[10] = *(a2 + 80);
    *(a1 + 11) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 17) = *(a2 + 136);
    *(a1 + 19) = *(a2 + 152);
    *(a1 + 84) = *(a2 + 168);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v30 >> 1 == 0xFFFFFFFF)
    {
      v113 = *(a2 + 192);
      *(a1 + 11) = *(a2 + 176);
      *(a1 + 12) = v113;
    }

    else
    {
      v114 = *(a2 + 176);
      v115 = *(a2 + 184);
      v116 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v114, v115, v30, v116);
      a1[22] = v114;
      a1[23] = v115;
      a1[24] = v30;
      a1[25] = v116;
    }

    v117 = *(a2 + 216);
    a1[26] = *(a2 + 208);
    a1[27] = v117;
    *(a1 + 112) = *(a2 + 224);
    *(a1 + 57) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v118 = *(a2 + 240);
    a1[30] = v118;
    *(a1 + 124) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v119 = v118;
    v38 = *(a2 + 264);
    if (v38)
    {
      goto LABEL_13;
    }

LABEL_71:
    v120 = *(a2 + 272);
    *(a1 + 16) = *(a2 + 256);
    *(a1 + 17) = v120;
    *(a1 + 18) = *(a2 + 288);
    goto LABEL_72;
  }

  v33 = *(a2 + 208);
  *(a1 + 12) = *(a2 + 192);
  *(a1 + 13) = v33;
  *(a1 + 14) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v34 = *(a2 + 144);
  *(a1 + 8) = *(a2 + 128);
  *(a1 + 9) = v34;
  v35 = *(a2 + 176);
  *(a1 + 10) = *(a2 + 160);
  *(a1 + 11) = v35;
  v36 = *(a2 + 80);
  *(a1 + 4) = *(a2 + 64);
  *(a1 + 5) = v36;
  v37 = *(a2 + 112);
  *(a1 + 6) = *(a2 + 96);
  *(a1 + 7) = v37;
  v38 = *(a2 + 264);
  if (!v38)
  {
    goto LABEL_71;
  }

LABEL_13:
  a1[32] = *(a2 + 256);
  a1[33] = v38;
  v39 = *(a2 + 272);

  if (v39 >= 2)
  {
    v40 = v39;
  }

  a1[34] = v39;
  *(a1 + 70) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v41 = *(a2 + 296);
  a1[36] = *(a2 + 288);
  a1[37] = v41;

LABEL_72:
  v121 = *(a2 + 336);
  v205 = v22;
  __dsta = v21;
  if (v121 >> 2 == 0xFFFFFFFF)
  {
    v122 = *(a2 + 384);
    *(a1 + 23) = *(a2 + 368);
    *(a1 + 24) = v122;
    a1[50] = *(a2 + 400);
    v123 = *(a2 + 320);
    *(a1 + 19) = *(a2 + 304);
    *(a1 + 20) = v123;
    v124 = *(a2 + 352);
    *(a1 + 21) = *(a2 + 336);
    *(a1 + 22) = v124;
  }

  else
  {
    v125 = *(a2 + 304);
    v126 = *(a2 + 312);
    v127 = *(a2 + 320);
    v128 = *(a2 + 328);
    v130 = *(a2 + 344);
    v129 = *(a2 + 352);
    v131 = *(a2 + 360);
    v186 = *(a2 + 368);
    v187 = *(a2 + 376);
    v191 = *(a2 + 384);
    v195 = *(a2 + 392);
    v201 = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v125, v126, v127, v128, v121, v130, v129, v131, v186, v187, v191, v195, v201);
    a1[38] = v125;
    a1[39] = v126;
    a1[40] = v127;
    a1[41] = v128;
    a1[42] = v121;
    a1[43] = v130;
    v21 = __dsta;
    a1[44] = v129;
    a1[45] = v131;
    a1[46] = v186;
    a1[47] = v187;
    a1[48] = v191;
    a1[49] = v195;
    a1[50] = v201;
  }

  v132 = *(a2 + 416);
  if (v132 == 1)
  {
    v133 = *(a2 + 456);
    *(a1 + 55) = *(a2 + 440);
    *(a1 + 57) = v133;
    *(a1 + 472) = *(a2 + 472);
    v134 = *(a2 + 424);
    *(a1 + 51) = *(a2 + 408);
    *(a1 + 53) = v134;
    goto LABEL_85;
  }

  *(a1 + 102) = *(a2 + 408);
  *(a1 + 412) = *(a2 + 412);
  if (v132)
  {
    v135 = *(a2 + 424);
    a1[52] = v132;
    a1[53] = v135;

    v136 = *(a2 + 432);
    if (v136)
    {
      goto LABEL_79;
    }

LABEL_82:
    *(a1 + 27) = *(a2 + 432);
    v138 = *(a2 + 448);
    if (v138)
    {
      goto LABEL_80;
    }

LABEL_83:
    *(a1 + 28) = *(a2 + 448);
    goto LABEL_84;
  }

  *(a1 + 26) = *(a2 + 416);
  v136 = *(a2 + 432);
  if (!v136)
  {
    goto LABEL_82;
  }

LABEL_79:
  v137 = *(a2 + 440);
  a1[54] = v136;
  a1[55] = v137;

  v138 = *(a2 + 448);
  if (!v138)
  {
    goto LABEL_83;
  }

LABEL_80:
  v139 = *(a2 + 456);
  a1[56] = v138;
  a1[57] = v139;

LABEL_84:
  a1[58] = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_85:
  v140 = *(a2 + 488);
  a1[60] = *(a2 + 480);
  a1[61] = v140;
  a1[62] = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v141 = *(a2 + 512);

  if (v141)
  {
    v142 = *(a2 + 520);
    a1[64] = v141;
    a1[65] = v142;
  }

  else
  {
    *(a1 + 32) = *(a2 + 512);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!*(a2 + 816))
  {
    memcpy(a1 + 67, (a2 + 536), 0x130uLL);
    goto LABEL_100;
  }

  a1[67] = *(a2 + 536);
  a1[68] = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  a1[70] = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 36) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v143 = a1 + 75;
  v144 = (a2 + 600);
  v145 = *(a2 + 624);

  if (!v145)
  {
    v147 = *(a2 + 616);
    *v143 = *v144;
    *(a1 + 77) = v147;
    a1[79] = *(a2 + 632);
LABEL_95:
    a1[80] = *(a2 + 640);

    goto LABEL_96;
  }

  if (v145 != 1)
  {
    a1[78] = v145;
    a1[79] = *(a2 + 632);
    (**(v145 - 8))(a1 + 75, a2 + 600, v145);
    goto LABEL_95;
  }

  v146 = *(a2 + 616);
  *v143 = *v144;
  *(a1 + 77) = v146;
  *(a1 + 79) = *(a2 + 632);
LABEL_96:
  a1[81] = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v148 = a1 + 83;
  v149 = (a2 + 664);
  v150 = *(a2 + 776);
  if (v150 == 1)
  {
    v151 = *(a2 + 776);
    *(a1 + 95) = *(a2 + 760);
    *(a1 + 97) = v151;
    *(a1 + 99) = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    v152 = *(a2 + 712);
    *(a1 + 87) = *(a2 + 696);
    *(a1 + 89) = v152;
    v153 = *(a2 + 744);
    *(a1 + 91) = *(a2 + 728);
    *(a1 + 93) = v153;
    v154 = *(a2 + 680);
    *v148 = *v149;
    *(a1 + 85) = v154;
  }

  else
  {
    *v148 = *v149;
    *(a1 + 672) = *(a2 + 672);
    a1[85] = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    a1[87] = *(a2 + 696);
    v155 = *(a2 + 720);
    *(a1 + 44) = *(a2 + 704);
    *(a1 + 45) = v155;
    a1[92] = *(a2 + 736);
    *(a1 + 372) = *(a2 + 744);
    *(a1 + 47) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    a1[97] = v150;
    *(a1 + 49) = *(a2 + 784);
    a1[100] = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
  }

  a1[102] = *(a2 + 816);
  a1[103] = *(a2 + 824);
  a1[104] = *(a2 + 832);

LABEL_100:
  v156 = a1 + 105;
  v157 = (a2 + 840);
  v158 = *(a2 + 864);
  if (!v158)
  {
    v160 = *(a2 + 856);
    *v156 = *v157;
    *(a1 + 107) = v160;
    a1[109] = *(a2 + 872);
    v161 = *(a2 + 880);
    if (!v161)
    {
LABEL_106:
      *(a1 + 55) = *(a2 + 880);
      goto LABEL_107;
    }

LABEL_104:
    v162 = *(a2 + 888);
    a1[110] = v161;
    a1[111] = v162;

    goto LABEL_107;
  }

  if (v158 != 1)
  {
    a1[108] = v158;
    a1[109] = *(a2 + 872);
    (**(v158 - 8))(v156, v157);
    v161 = *(a2 + 880);
    if (!v161)
    {
      goto LABEL_106;
    }

    goto LABEL_104;
  }

  v159 = *(a2 + 856);
  *v156 = *v157;
  *(a1 + 107) = v159;
  *(a1 + 109) = *(a2 + 872);
  a1[111] = *(a2 + 888);
LABEL_107:
  v163 = *(a2 + 896);
  a1[112] = v163;
  a1[113] = *(a2 + 904);
  a1[114] = *(a2 + 912);
  a1[115] = *(a2 + 920);
  a1[116] = *(a2 + 928);
  a1[117] = *(a2 + 936);
  a1[118] = *(a2 + 944);
  *(a1 + 476) = *(a2 + 952);
  *(a1 + 954) = *(a2 + 954);
  v164 = *(v21 + 112);
  v202 = a1 + v164;
  v165 = (a2 + v164);
  v166 = type metadata accessor for CommandOperation(0);
  v192 = *(v166 - 8);
  v196 = *(v192 + 48);
  v167 = v163;
  v168 = v165;

  if (v196(v165, 1, v166))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
    memcpy(v202, v165, *(*(v169 - 8) + 64));
    v170 = __dsta;
  }

  else
  {
    *v202 = *v165;
    v171 = *(v166 + 20);
    v172 = v166;
    v173 = &v202[v171];
    v174 = &v168[v171];
    v197 = v168;
    v175 = *&v168[v171];
    v176 = *(v174 + 1);
    v177 = v174[16];
    outlined copy of Text.Storage(v175, v176, v177);
    *v173 = v175;
    *(v173 + 1) = v176;
    v173[16] = v177;
    *(v173 + 3) = *(v174 + 3);
    v178 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v179 = type metadata accessor for UUID();
    v188 = *(*(v179 - 8) + 16);

    v188(&v173[v178], &v174[v178], v179);
    v180 = *(v172 + 24);
    v181 = &v202[v180];
    v182 = &v197[v180];
    if (*v182)
    {
      v183 = v182[1];
      *v181 = *v182;
      v181[1] = v183;
    }

    else
    {
      *v181 = *v182;
    }

    v170 = __dsta;
    (*(v192 + 56))(v202, 0, 1, v172);
  }

  *(a1 + v170[29]) = *(a2 + v170[29]);
  *(a1 + v170[30]) = *(a2 + v170[30]);
  *(a1 + v170[31]) = *(a2 + v170[31]);
  *(a1 + v170[32]) = *(a2 + v170[32]);
  *(a1 + v170[33]) = *(a2 + v170[33]);
  *(a1 + v170[34]) = *(a2 + v170[34]);
  v184 = *(v205 + 56);

  v184(a1, 0, 1, v170);
LABEL_114:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for DialogActionContext.CancelType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of DialogActionContext.CancelType(a1, type metadata accessor for DialogActionContext.CancelType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      v6 = *(a2 + 8);
      *(a1 + 8) = v6;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      v7 = *(a2 + 192);
      v8 = v5;
      v9 = v6;

      if (v7 >> 1 == 4294967294)
      {
        v10 = *(a2 + 64);
        v11 = *(a2 + 80);
        v12 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v12;
        *(a1 + 64) = v10;
        *(a1 + 80) = v11;
        v13 = *(a2 + 128);
        v14 = *(a2 + 144);
        v15 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v15;
        *(a1 + 128) = v13;
        *(a1 + 144) = v14;
        v16 = *(a2 + 192);
        v17 = *(a2 + 208);
        v18 = *(a2 + 224);
        *(a1 + 235) = *(a2 + 235);
        *(a1 + 208) = v17;
        *(a1 + 224) = v18;
        *(a1 + 192) = v16;
        if (*(a2 + 264))
        {
LABEL_5:
          *(a1 + 256) = *(a2 + 256);
          *(a1 + 264) = *(a2 + 264);
          v19 = *(a2 + 272);

          if (v19 >= 2)
          {
            v20 = v19;
          }

          *(a1 + 272) = v19;
          v21 = *(a2 + 280);
          *(a1 + 284) = *(a2 + 284);
          *(a1 + 280) = v21;
          *(a1 + 285) = *(a2 + 285);
          *(a1 + 286) = *(a2 + 286);
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 296) = *(a2 + 296);

LABEL_23:
          v58 = *(a2 + 336);
          if (v58 >> 2 == 0xFFFFFFFF)
          {
            v59 = *(a2 + 304);
            v60 = *(a2 + 336);
            *(a1 + 320) = *(a2 + 320);
            *(a1 + 336) = v60;
            *(a1 + 304) = v59;
            v61 = *(a2 + 352);
            v62 = *(a2 + 368);
            v63 = *(a2 + 384);
            *(a1 + 400) = *(a2 + 400);
            *(a1 + 368) = v62;
            *(a1 + 384) = v63;
            *(a1 + 352) = v61;
          }

          else
          {
            v64 = *(a2 + 304);
            v65 = *(a2 + 312);
            v66 = *(a2 + 320);
            v67 = *(a2 + 328);
            v68 = *(a2 + 344);
            v69 = *(a2 + 352);
            v70 = *(a2 + 360);
            v230 = *(a2 + 368);
            v234 = *(a2 + 376);
            v240 = *(a2 + 384);
            v245 = *(a2 + 392);
            __dstb = *(a2 + 400);
            outlined copy of PlatformItemList.Item.SystemItem(v64, v65, v66, v67, v58, v68, v69, v70, v230, v234, v240, v245, __dstb);
            *(a1 + 304) = v64;
            *(a1 + 312) = v65;
            *(a1 + 320) = v66;
            *(a1 + 328) = v67;
            *(a1 + 336) = v58;
            *(a1 + 344) = v68;
            *(a1 + 352) = v69;
            *(a1 + 360) = v70;
            *(a1 + 368) = v230;
            *(a1 + 376) = v234;
            *(a1 + 384) = v240;
            *(a1 + 392) = v245;
            *(a1 + 400) = __dstb;
          }

          if (*(a2 + 416) == 1)
          {
            *(a1 + 408) = *(a2 + 408);
            v71 = *(a2 + 424);
            v72 = *(a2 + 440);
            v73 = *(a2 + 456);
            *(a1 + 472) = *(a2 + 472);
            *(a1 + 440) = v72;
            *(a1 + 456) = v73;
            *(a1 + 424) = v71;
            goto LABEL_38;
          }

          *(a1 + 408) = *(a2 + 408);
          *(a1 + 409) = *(a2 + 409);
          *(a1 + 410) = *(a2 + 410);
          *(a1 + 411) = *(a2 + 411);
          *(a1 + 412) = *(a2 + 412);
          v74 = *(a2 + 416);
          if (v74)
          {
            v75 = *(a2 + 424);
            *(a1 + 416) = v74;
            *(a1 + 424) = v75;

            v76 = *(a2 + 432);
            if (v76)
            {
              goto LABEL_30;
            }
          }

          else
          {
            *(a1 + 416) = *(a2 + 416);
            v76 = *(a2 + 432);
            if (v76)
            {
LABEL_30:
              v77 = *(a2 + 440);
              *(a1 + 432) = v76;
              *(a1 + 440) = v77;

              v78 = *(a2 + 448);
              if (v78)
              {
LABEL_31:
                v79 = *(a2 + 456);
                *(a1 + 448) = v78;
                *(a1 + 456) = v79;

LABEL_37:
                *(a1 + 464) = *(a2 + 464);
                *(a1 + 472) = *(a2 + 472);
LABEL_38:
                *(a1 + 480) = *(a2 + 480);
                *(a1 + 488) = *(a2 + 488);
                *(a1 + 496) = *(a2 + 496);
                *(a1 + 504) = *(a2 + 504);
                v82 = *(a2 + 512);

                if (v82)
                {
                  v83 = *(a2 + 520);
                  *(a1 + 512) = v82;
                  *(a1 + 520) = v83;
                }

                else
                {
                  *(a1 + 512) = *(a2 + 512);
                }

                *(a1 + 528) = *(a2 + 528);
                if (!*(a2 + 816))
                {
                  memcpy((a1 + 536), (a2 + 536), 0x130uLL);
                  goto LABEL_53;
                }

                *(a1 + 536) = *(a2 + 536);
                *(a1 + 544) = *(a2 + 544);
                *(a1 + 552) = *(a2 + 552);
                *(a1 + 560) = *(a2 + 560);
                *(a1 + 568) = *(a2 + 568);
                v84 = *(a2 + 576);
                *(a1 + 592) = *(a2 + 592);
                *(a1 + 576) = v84;
                v85 = (a1 + 600);
                v86 = (a2 + 600);
                v87 = *(a2 + 624);

                if (v87)
                {
                  if (v87 == 1)
                  {
                    v88 = *v86;
                    v89 = *(a2 + 632);
                    *(a1 + 616) = *(a2 + 616);
                    *(a1 + 632) = v89;
                    *v85 = v88;
LABEL_49:
                    v92 = *(a2 + 648);
                    *(a1 + 656) = *(a2 + 656);
                    *(a1 + 648) = v92;
                    v93 = (a1 + 664);
                    v94 = (a2 + 664);
                    if (*(a2 + 776) == 1)
                    {
                      v95 = *(a2 + 680);
                      *v93 = *v94;
                      *(a1 + 680) = v95;
                      v96 = *(a2 + 696);
                      v97 = *(a2 + 712);
                      v98 = *(a2 + 744);
                      *(a1 + 728) = *(a2 + 728);
                      *(a1 + 744) = v98;
                      *(a1 + 696) = v96;
                      *(a1 + 712) = v97;
                      v99 = *(a2 + 760);
                      v100 = *(a2 + 776);
                      v101 = *(a2 + 792);
                      *(a1 + 808) = *(a2 + 808);
                      *(a1 + 776) = v100;
                      *(a1 + 792) = v101;
                      *(a1 + 760) = v99;
                    }

                    else
                    {
                      v102 = *v94;
                      *(a1 + 672) = *(a2 + 672);
                      *v93 = v102;
                      v103 = *(a2 + 680);
                      *(a1 + 688) = *(a2 + 688);
                      *(a1 + 680) = v103;
                      *(a1 + 689) = *(a2 + 689);
                      *(a1 + 690) = *(a2 + 690);
                      *(a1 + 691) = *(a2 + 691);
                      *(a1 + 692) = *(a2 + 692);
                      *(a1 + 696) = *(a2 + 696);
                      *(a1 + 704) = *(a2 + 704);
                      *(a1 + 712) = *(a2 + 712);
                      *(a1 + 720) = *(a2 + 720);
                      *(a1 + 728) = *(a2 + 728);
                      *(a1 + 736) = *(a2 + 736);
                      *(a1 + 744) = *(a2 + 744);
                      *(a1 + 745) = *(a2 + 745);
                      *(a1 + 752) = *(a2 + 752);
                      *(a1 + 760) = *(a2 + 760);
                      *(a1 + 768) = *(a2 + 768);
                      *(a1 + 776) = *(a2 + 776);
                      v104 = *(a2 + 784);
                      *(a1 + 800) = *(a2 + 800);
                      *(a1 + 784) = v104;
                      *(a1 + 808) = *(a2 + 808);
                    }

                    *(a1 + 816) = *(a2 + 816);
                    *(a1 + 824) = *(a2 + 824);
                    *(a1 + 832) = *(a2 + 832);

LABEL_53:
                    v105 = (a1 + 840);
                    v106 = (a2 + 840);
                    v107 = *(a2 + 864);
                    if (v107)
                    {
                      if (v107 == 1)
                      {
                        v108 = *v106;
                        v109 = *(a2 + 856);
                        v110 = *(a2 + 872);
                        *(a1 + 888) = *(a2 + 888);
                        *(a1 + 856) = v109;
                        *(a1 + 872) = v110;
                        *v105 = v108;
LABEL_60:
                        v115 = *(a2 + 896);
                        *(a1 + 896) = v115;
                        *(a1 + 904) = *(a2 + 904);
                        *(a1 + 912) = *(a2 + 912);
                        *(a1 + 920) = *(a2 + 920);
                        *(a1 + 928) = *(a2 + 928);
                        *(a1 + 936) = *(a2 + 936);
                        *(a1 + 944) = *(a2 + 944);
                        *(a1 + 952) = *(a2 + 952);
                        *(a1 + 953) = *(a2 + 953);
                        *(a1 + 954) = *(a2 + 954);
                        v116 = type metadata accessor for PlatformItemList.Item(0);
                        v117 = v116[28];
                        __dst = (a1 + v117);
                        v118 = (a2 + v117);
                        v119 = type metadata accessor for CommandOperation(0);
                        v120 = *(v119 - 8);
                        v235 = v120[6];
                        v121 = v115;

                        if (v235(v118, 1, v119))
                        {
                          _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                          memcpy(__dst, v118, *(*(v122 - 8) + 64));
                        }

                        else
                        {
                          v236 = v118;
                          v241 = v120;
                          *__dst = *v118;
                          v123 = *(v119 + 20);
                          v124 = &__dst[v123];
                          v125 = &v118[v123];
                          v246 = v119;
                          v126 = *&v118[v123];
                          v127 = *(v125 + 1);
                          v128 = v125[16];
                          outlined copy of Text.Storage(v126, v127, v128);
                          *v124 = v126;
                          *(v124 + 1) = v127;
                          v124[16] = v128;
                          *(v124 + 3) = *(v125 + 3);
                          v129 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v130 = type metadata accessor for UUID();
                          v231 = *(*(v130 - 8) + 16);

                          v231(&v124[v129], &v125[v129], v130);
                          v131 = *(v246 + 24);
                          v132 = &__dst[v131];
                          v133 = &v236[v131];
                          if (*v133)
                          {
                            v134 = v133[1];
                            *v132 = *v133;
                            v132[1] = v134;
                          }

                          else
                          {
                            *v132 = *v133;
                          }

                          (*(v241 + 7))(__dst, 0, 1, v246);
                        }

                        *(a1 + v116[29]) = *(a2 + v116[29]);
                        *(a1 + v116[30]) = *(a2 + v116[30]);
                        *(a1 + v116[31]) = *(a2 + v116[31]);
                        *(a1 + v116[32]) = *(a2 + v116[32]);
                        *(a1 + v116[33]) = *(a2 + v116[33]);
                        *(a1 + v116[34]) = *(a2 + v116[34]);

                        goto LABEL_115;
                      }

                      *(a1 + 864) = v107;
                      *(a1 + 872) = *(a2 + 872);
                      (**(v107 - 8))(v105, v106);
                      v113 = *(a2 + 880);
                      if (!v113)
                      {
LABEL_59:
                        *(a1 + 880) = *(a2 + 880);
                        goto LABEL_60;
                      }
                    }

                    else
                    {
                      v111 = *v106;
                      v112 = *(a2 + 856);
                      *(a1 + 872) = *(a2 + 872);
                      *v105 = v111;
                      *(a1 + 856) = v112;
                      v113 = *(a2 + 880);
                      if (!v113)
                      {
                        goto LABEL_59;
                      }
                    }

                    v114 = *(a2 + 888);
                    *(a1 + 880) = v113;
                    *(a1 + 888) = v114;

                    goto LABEL_60;
                  }

                  *(a1 + 624) = v87;
                  *(a1 + 632) = *(a2 + 632);
                  (**(v87 - 8))(a1 + 600, a2 + 600, v87);
                }

                else
                {
                  v90 = *v86;
                  v91 = *(a2 + 616);
                  *(a1 + 632) = *(a2 + 632);
                  *v85 = v90;
                  *(a1 + 616) = v91;
                }

                *(a1 + 640) = *(a2 + 640);

                goto LABEL_49;
              }

LABEL_36:
              *(a1 + 448) = *(a2 + 448);
              goto LABEL_37;
            }
          }

          *(a1 + 432) = *(a2 + 432);
          v78 = *(a2 + 448);
          if (v78)
          {
            goto LABEL_31;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v25 = *(a2 + 72);
        if (v25 == 255)
        {
          v44 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v44;
        }

        else
        {
          v26 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v26, *(a2 + 72));
          *(a1 + 64) = v26;
          *(a1 + 72) = v25;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        v45 = *(a2 + 108);
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 108) = v45;
        v46 = *(a2 + 136);
        v47 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v47;
        *(a1 + 136) = v46;
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 171) = *(a2 + 171);
        v48 = *(a2 + 192);
        if (v48 >> 1 == 0xFFFFFFFF)
        {
          v49 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v49;
        }

        else
        {
          v50 = *(a2 + 176);
          v51 = *(a2 + 184);
          v52 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v50, v51, *(a2 + 192), v52);
          *(a1 + 176) = v50;
          *(a1 + 184) = v51;
          *(a1 + 192) = v48;
          *(a1 + 200) = v52;
        }

        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 225) = *(a2 + 225);
        v53 = *(a2 + 228);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 228) = v53;
        v54 = *(a2 + 240);
        *(a1 + 240) = v54;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 250) = *(a2 + 250);
        swift_unknownObjectRetain();

        v55 = v54;
        if (*(a2 + 264))
        {
          goto LABEL_5;
        }
      }

      v56 = *(a2 + 256);
      v57 = *(a2 + 288);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 288) = v57;
      *(a1 + 256) = v56;
      goto LABEL_23;
    }

    v22 = type metadata accessor for PlatformItemList.Item(0);
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(a2, 1, v22))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v24 - 8) + 64));
LABEL_115:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v244 = v23;
    v27 = *a2;
    *a1 = *a2;
    v28 = *(a2 + 8);
    *(a1 + 8) = v28;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    v29 = *(a2 + 192);
    v30 = v27;
    v31 = v28;

    if (v29 >> 1 == 4294967294)
    {
      v32 = *(a2 + 64);
      v33 = *(a2 + 80);
      v34 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v34;
      *(a1 + 64) = v32;
      *(a1 + 80) = v33;
      v35 = *(a2 + 128);
      v36 = *(a2 + 144);
      v37 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v37;
      *(a1 + 128) = v35;
      *(a1 + 144) = v36;
      v38 = *(a2 + 192);
      v39 = *(a2 + 208);
      v40 = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v39;
      *(a1 + 224) = v40;
      *(a1 + 192) = v38;
      if (*(a2 + 264))
      {
LABEL_14:
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        v41 = *(a2 + 272);

        if (v41 >= 2)
        {
          v42 = v41;
        }

        *(a1 + 272) = v41;
        v43 = *(a2 + 280);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 280) = v43;
        *(a1 + 285) = *(a2 + 285);
        *(a1 + 286) = *(a2 + 286);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = *(a2 + 296);

LABEL_73:
        v149 = *(a2 + 336);
        __dsta = v22;
        if (v149 >> 2 == 0xFFFFFFFF)
        {
          v150 = *(a2 + 304);
          v151 = *(a2 + 336);
          *(a1 + 320) = *(a2 + 320);
          *(a1 + 336) = v151;
          *(a1 + 304) = v150;
          v152 = *(a2 + 352);
          v153 = *(a2 + 368);
          v154 = *(a2 + 384);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 368) = v153;
          *(a1 + 384) = v154;
          *(a1 + 352) = v152;
        }

        else
        {
          v155 = *(a2 + 304);
          v156 = *(a2 + 312);
          v157 = *(a2 + 320);
          v158 = *(a2 + 328);
          v160 = *(a2 + 344);
          v159 = *(a2 + 352);
          v161 = *(a2 + 360);
          v227 = *(a2 + 368);
          v228 = *(a2 + 376);
          v232 = *(a2 + 384);
          v237 = *(a2 + 392);
          v242 = *(a2 + 400);
          outlined copy of PlatformItemList.Item.SystemItem(v155, v156, v157, v158, v149, v160, v159, v161, v227, v228, v232, v237, v242);
          *(a1 + 304) = v155;
          *(a1 + 312) = v156;
          *(a1 + 320) = v157;
          *(a1 + 328) = v158;
          *(a1 + 336) = v149;
          *(a1 + 344) = v160;
          v22 = __dsta;
          *(a1 + 352) = v159;
          *(a1 + 360) = v161;
          *(a1 + 368) = v227;
          *(a1 + 376) = v228;
          *(a1 + 384) = v232;
          *(a1 + 392) = v237;
          *(a1 + 400) = v242;
        }

        if (*(a2 + 416) == 1)
        {
          *(a1 + 408) = *(a2 + 408);
          v162 = *(a2 + 424);
          v163 = *(a2 + 440);
          v164 = *(a2 + 456);
          *(a1 + 472) = *(a2 + 472);
          *(a1 + 440) = v163;
          *(a1 + 456) = v164;
          *(a1 + 424) = v162;
          goto LABEL_86;
        }

        *(a1 + 408) = *(a2 + 408);
        *(a1 + 409) = *(a2 + 409);
        *(a1 + 410) = *(a2 + 410);
        *(a1 + 411) = *(a2 + 411);
        *(a1 + 412) = *(a2 + 412);
        v165 = *(a2 + 416);
        if (v165)
        {
          v166 = *(a2 + 424);
          *(a1 + 416) = v165;
          *(a1 + 424) = v166;

          v167 = *(a2 + 432);
          if (v167)
          {
            goto LABEL_80;
          }
        }

        else
        {
          *(a1 + 416) = *(a2 + 416);
          v167 = *(a2 + 432);
          if (v167)
          {
LABEL_80:
            v168 = *(a2 + 440);
            *(a1 + 432) = v167;
            *(a1 + 440) = v168;

            v169 = *(a2 + 448);
            if (v169)
            {
LABEL_81:
              v170 = *(a2 + 456);
              *(a1 + 448) = v169;
              *(a1 + 456) = v170;

LABEL_85:
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
LABEL_86:
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              v171 = *(a2 + 512);

              if (v171)
              {
                v172 = *(a2 + 520);
                *(a1 + 512) = v171;
                *(a1 + 520) = v172;
              }

              else
              {
                *(a1 + 512) = *(a2 + 512);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!*(a2 + 816))
              {
                memcpy((a1 + 536), (a2 + 536), 0x130uLL);
                goto LABEL_101;
              }

              *(a1 + 536) = *(a2 + 536);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              v173 = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 576) = v173;
              v174 = (a1 + 600);
              v175 = (a2 + 600);
              v176 = *(a2 + 624);

              if (v176)
              {
                if (v176 == 1)
                {
                  v177 = *v175;
                  v178 = *(a2 + 632);
                  *(a1 + 616) = *(a2 + 616);
                  *(a1 + 632) = v178;
                  *v174 = v177;
LABEL_97:
                  v181 = *(a2 + 648);
                  *(a1 + 656) = *(a2 + 656);
                  *(a1 + 648) = v181;
                  v182 = (a1 + 664);
                  v183 = (a2 + 664);
                  if (*(a2 + 776) == 1)
                  {
                    v184 = *(a2 + 680);
                    *v182 = *v183;
                    *(a1 + 680) = v184;
                    v185 = *(a2 + 696);
                    v186 = *(a2 + 712);
                    v187 = *(a2 + 744);
                    *(a1 + 728) = *(a2 + 728);
                    *(a1 + 744) = v187;
                    *(a1 + 696) = v185;
                    *(a1 + 712) = v186;
                    v188 = *(a2 + 760);
                    v189 = *(a2 + 776);
                    v190 = *(a2 + 792);
                    *(a1 + 808) = *(a2 + 808);
                    *(a1 + 776) = v189;
                    *(a1 + 792) = v190;
                    *(a1 + 760) = v188;
                  }

                  else
                  {
                    v191 = *v183;
                    *(a1 + 672) = *(a2 + 672);
                    *v182 = v191;
                    v192 = *(a2 + 680);
                    *(a1 + 688) = *(a2 + 688);
                    *(a1 + 680) = v192;
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 690) = *(a2 + 690);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    *(a1 + 696) = *(a2 + 696);
                    *(a1 + 704) = *(a2 + 704);
                    *(a1 + 712) = *(a2 + 712);
                    *(a1 + 720) = *(a2 + 720);
                    *(a1 + 728) = *(a2 + 728);
                    *(a1 + 736) = *(a2 + 736);
                    *(a1 + 744) = *(a2 + 744);
                    *(a1 + 745) = *(a2 + 745);
                    *(a1 + 752) = *(a2 + 752);
                    *(a1 + 760) = *(a2 + 760);
                    *(a1 + 768) = *(a2 + 768);
                    *(a1 + 776) = *(a2 + 776);
                    v193 = *(a2 + 784);
                    *(a1 + 800) = *(a2 + 800);
                    *(a1 + 784) = v193;
                    *(a1 + 808) = *(a2 + 808);
                  }

                  *(a1 + 816) = *(a2 + 816);
                  *(a1 + 824) = *(a2 + 824);
                  *(a1 + 832) = *(a2 + 832);

LABEL_101:
                  v194 = (a1 + 840);
                  v195 = (a2 + 840);
                  v196 = *(a2 + 864);
                  if (v196)
                  {
                    if (v196 == 1)
                    {
                      v197 = *v195;
                      v198 = *(a2 + 856);
                      v199 = *(a2 + 872);
                      *(a1 + 888) = *(a2 + 888);
                      *(a1 + 856) = v198;
                      *(a1 + 872) = v199;
                      *v194 = v197;
LABEL_108:
                      v204 = *(a2 + 896);
                      *(a1 + 896) = v204;
                      *(a1 + 904) = *(a2 + 904);
                      *(a1 + 912) = *(a2 + 912);
                      *(a1 + 920) = *(a2 + 920);
                      *(a1 + 928) = *(a2 + 928);
                      *(a1 + 936) = *(a2 + 936);
                      *(a1 + 944) = *(a2 + 944);
                      *(a1 + 952) = *(a2 + 952);
                      *(a1 + 953) = *(a2 + 953);
                      *(a1 + 954) = *(a2 + 954);
                      v205 = *(v22 + 112);
                      v243 = (a1 + v205);
                      v206 = (a2 + v205);
                      v207 = type metadata accessor for CommandOperation(0);
                      v233 = *(v207 - 8);
                      v238 = *(v233 + 48);
                      v208 = v204;
                      v209 = v206;

                      if (v238(v206, 1, v207))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(v243, v206, *(*(v210 - 8) + 64));
                        v211 = __dsta;
                      }

                      else
                      {
                        *v243 = *v206;
                        v212 = *(v207 + 20);
                        v213 = v207;
                        v214 = &v243[v212];
                        v215 = &v209[v212];
                        v239 = v209;
                        v216 = *&v209[v212];
                        v217 = *(v215 + 1);
                        v218 = v215[16];
                        outlined copy of Text.Storage(v216, v217, v218);
                        *v214 = v216;
                        *(v214 + 1) = v217;
                        v214[16] = v218;
                        *(v214 + 3) = *(v215 + 3);
                        v219 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v220 = type metadata accessor for UUID();
                        v229 = *(*(v220 - 8) + 16);

                        v229(&v214[v219], &v215[v219], v220);
                        v221 = *(v213 + 24);
                        v222 = &v243[v221];
                        v223 = &v239[v221];
                        if (*v223)
                        {
                          v224 = v223[1];
                          *v222 = *v223;
                          v222[1] = v224;
                        }

                        else
                        {
                          *v222 = *v223;
                        }

                        v211 = __dsta;
                        (*(v233 + 56))(v243, 0, 1, v213);
                      }

                      *(a1 + v211[29]) = *(a2 + v211[29]);
                      *(a1 + v211[30]) = *(a2 + v211[30]);
                      *(a1 + v211[31]) = *(a2 + v211[31]);
                      *(a1 + v211[32]) = *(a2 + v211[32]);
                      *(a1 + v211[33]) = *(a2 + v211[33]);
                      *(a1 + v211[34]) = *(a2 + v211[34]);
                      v225 = *(v244 + 56);

                      v225(a1, 0, 1, v211);
                      goto LABEL_115;
                    }

                    *(a1 + 864) = v196;
                    *(a1 + 872) = *(a2 + 872);
                    (**(v196 - 8))(v194, v195);
                    v202 = *(a2 + 880);
                    if (!v202)
                    {
LABEL_107:
                      *(a1 + 880) = *(a2 + 880);
                      goto LABEL_108;
                    }
                  }

                  else
                  {
                    v200 = *v195;
                    v201 = *(a2 + 856);
                    *(a1 + 872) = *(a2 + 872);
                    *v194 = v200;
                    *(a1 + 856) = v201;
                    v202 = *(a2 + 880);
                    if (!v202)
                    {
                      goto LABEL_107;
                    }
                  }

                  v203 = *(a2 + 888);
                  *(a1 + 880) = v202;
                  *(a1 + 888) = v203;

                  goto LABEL_108;
                }

                *(a1 + 624) = v176;
                *(a1 + 632) = *(a2 + 632);
                (**(v176 - 8))(a1 + 600, a2 + 600, v176);
              }

              else
              {
                v179 = *v175;
                v180 = *(a2 + 616);
                *(a1 + 632) = *(a2 + 632);
                *v174 = v179;
                *(a1 + 616) = v180;
              }

              *(a1 + 640) = *(a2 + 640);

              goto LABEL_97;
            }

LABEL_84:
            *(a1 + 448) = *(a2 + 448);
            goto LABEL_85;
          }
        }

        *(a1 + 432) = *(a2 + 432);
        v169 = *(a2 + 448);
        if (v169)
        {
          goto LABEL_81;
        }

        goto LABEL_84;
      }
    }

    else
    {
      v80 = *(a2 + 72);
      if (v80 == 255)
      {
        v135 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v135;
      }

      else
      {
        v81 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v81, *(a2 + 72));
        *(a1 + 64) = v81;
        *(a1 + 72) = v80;
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      v136 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v136;
      v137 = *(a2 + 136);
      v138 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v138;
      *(a1 + 136) = v137;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v139 = *(a2 + 192);
      if (v139 >> 1 == 0xFFFFFFFF)
      {
        v140 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v140;
      }

      else
      {
        v141 = *(a2 + 176);
        v142 = *(a2 + 184);
        v143 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v141, v142, *(a2 + 192), v143);
        *(a1 + 176) = v141;
        *(a1 + 184) = v142;
        *(a1 + 192) = v139;
        *(a1 + 200) = v143;
      }

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v144 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v144;
      v145 = *(a2 + 240);
      *(a1 + 240) = v145;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v146 = v145;
      if (*(a2 + 264))
      {
        goto LABEL_14;
      }
    }

    v147 = *(a2 + 256);
    v148 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v148;
    *(a1 + 256) = v147;
    goto LABEL_73;
  }

  return a1;
}

uint64_t initializeWithTake for DialogActionContext.CancelType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    v6 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v6;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 235) = *(a2 + 235);
    v7 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v7;
    v8 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v8;
    v9 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v9;
    v10 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v10;
    v11 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v11;
    v12 = *(a2 + 368);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 368) = v12;
    *(a1 + 384) = *(a2 + 384);
    *(a1 + 400) = *(a2 + 400);
    v13 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v13;
    v14 = *(a2 + 336);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 336) = v14;
    v15 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v15;
    *(a1 + 472) = *(a2 + 472);
    v16 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v16;
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 528) = *(a2 + 528);
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    v17 = *(a2 + 856);
    *(a1 + 840) = *(a2 + 840);
    *(a1 + 856) = v17;
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 888) = *(a2 + 888);
    *(a1 + 896) = *(a2 + 896);
    *(a1 + 904) = *(a2 + 904);
    *(a1 + 920) = *(a2 + 920);
    *(a1 + 936) = *(a2 + 936);
    *(a1 + 944) = *(a2 + 944);
    *(a1 + 952) = *(a2 + 952);
    *(a1 + 953) = *(a2 + 953);
    v18 = type metadata accessor for PlatformItemList.Item(0);
    v19 = v18[28];
    v20 = (a1 + v19);
    v21 = (a2 + v19);
    v22 = type metadata accessor for CommandOperation(0);
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v21, 1, v22))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
      memcpy(v20, v21, *(*(v24 - 8) + 64));
    }

    else
    {
      *v20 = *v21;
      v28 = *(v22 + 20);
      v29 = &v20[v28];
      v30 = &v21[v28];
      v31 = *&v21[v28 + 16];
      *v29 = *&v21[v28];
      *(v29 + 1) = v31;
      v32 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v33 = type metadata accessor for UUID();
      (*(*(v33 - 8) + 32))(&v29[v32], &v30[v32], v33);
      *&v20[*(v22 + 24)] = *&v21[*(v22 + 24)];
      (*(v23 + 56))(v20, 0, 1, v22);
    }

    *(a1 + v18[29]) = *(a2 + v18[29]);
    *(a1 + v18[30]) = *(a2 + v18[30]);
    *(a1 + v18[31]) = *(a2 + v18[31]);
    *(a1 + v18[32]) = *(a2 + v18[32]);
    *(a1 + v18[33]) = *(a2 + v18[33]);
    *(a1 + v18[34]) = *(a2 + v18[34]);
  }

  else
  {
    v25 = type metadata accessor for PlatformItemList.Item(0);
    v26 = *(v25 - 1);
    if ((*(v26 + 48))(a2, 1, v25))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v27 - 8) + 64));
    }

    else
    {
      v34 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v34;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v35 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v35;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      v36 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v36;
      v37 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v37;
      v38 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v38;
      v39 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v39;
      v40 = *(a2 + 272);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v40;
      v41 = *(a2 + 368);
      *(a1 + 352) = *(a2 + 352);
      *(a1 + 368) = v41;
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 400) = *(a2 + 400);
      v42 = *(a2 + 304);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 304) = v42;
      v43 = *(a2 + 336);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 336) = v43;
      v44 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v44;
      *(a1 + 472) = *(a2 + 472);
      v45 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v45;
      *(a1 + 480) = *(a2 + 480);
      *(a1 + 489) = *(a2 + 489);
      *(a1 + 512) = *(a2 + 512);
      *(a1 + 528) = *(a2 + 528);
      memcpy((a1 + 536), (a2 + 536), 0x130uLL);
      v46 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v46;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 888) = *(a2 + 888);
      *(a1 + 896) = *(a2 + 896);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 936) = *(a2 + 936);
      *(a1 + 944) = *(a2 + 944);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 953) = *(a2 + 953);
      v47 = v25[28];
      v48 = (a1 + v47);
      v49 = (a2 + v47);
      v50 = type metadata accessor for CommandOperation(0);
      v51 = *(v50 - 8);
      if ((*(v51 + 48))(v49, 1, v50))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v48, v49, *(*(v52 - 8) + 64));
      }

      else
      {
        *v48 = *v49;
        v53 = *(v50 + 20);
        v54 = &v48[v53];
        v61 = v26;
        v55 = &v49[v53];
        v56 = *&v49[v53 + 16];
        *v54 = *&v49[v53];
        *(v54 + 1) = v56;
        v57 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v58 = type metadata accessor for UUID();
        v59 = &v55[v57];
        v26 = v61;
        (*(*(v58 - 8) + 32))(&v54[v57], v59, v58);
        *&v48[*(v50 + 24)] = *&v49[*(v50 + 24)];
        (*(v51 + 56))(v48, 0, 1, v50);
      }

      *(a1 + v25[29]) = *(a2 + v25[29]);
      *(a1 + v25[30]) = *(a2 + v25[30]);
      *(a1 + v25[31]) = *(a2 + v25[31]);
      *(a1 + v25[32]) = *(a2 + v25[32]);
      *(a1 + v25[33]) = *(a2 + v25[33]);
      *(a1 + v25[34]) = *(a2 + v25[34]);
      (*(v26 + 56))(a1, 0, 1, v25);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for DialogActionContext.CancelType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of DialogActionContext.CancelType(a1, type metadata accessor for DialogActionContext.CancelType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v6 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v6;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      v7 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v7;
      v8 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v8;
      v9 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v9;
      v10 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v10;
      v11 = *(a2 + 272);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v11;
      v12 = *(a2 + 368);
      *(a1 + 352) = *(a2 + 352);
      *(a1 + 368) = v12;
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 400) = *(a2 + 400);
      v13 = *(a2 + 304);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 304) = v13;
      v14 = *(a2 + 336);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 336) = v14;
      v15 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v15;
      *(a1 + 472) = *(a2 + 472);
      v16 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v16;
      *(a1 + 480) = *(a2 + 480);
      *(a1 + 489) = *(a2 + 489);
      *(a1 + 512) = *(a2 + 512);
      *(a1 + 528) = *(a2 + 528);
      memcpy((a1 + 536), (a2 + 536), 0x130uLL);
      v17 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v17;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 888) = *(a2 + 888);
      *(a1 + 896) = *(a2 + 896);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 936) = *(a2 + 936);
      *(a1 + 944) = *(a2 + 944);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 953) = *(a2 + 953);
      v18 = type metadata accessor for PlatformItemList.Item(0);
      v19 = v18[28];
      v20 = (a1 + v19);
      v21 = (a2 + v19);
      v22 = type metadata accessor for CommandOperation(0);
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v21, 1, v22))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v20, v21, *(*(v24 - 8) + 64));
      }

      else
      {
        *v20 = *v21;
        v28 = *(v22 + 20);
        v29 = &v20[v28];
        v30 = &v21[v28];
        v31 = *&v21[v28 + 16];
        *v29 = *&v21[v28];
        *(v29 + 1) = v31;
        v32 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v33 = type metadata accessor for UUID();
        (*(*(v33 - 8) + 32))(&v29[v32], &v30[v32], v33);
        *&v20[*(v22 + 24)] = *&v21[*(v22 + 24)];
        (*(v23 + 56))(v20, 0, 1, v22);
      }

      *(a1 + v18[29]) = *(a2 + v18[29]);
      *(a1 + v18[30]) = *(a2 + v18[30]);
      *(a1 + v18[31]) = *(a2 + v18[31]);
      *(a1 + v18[32]) = *(a2 + v18[32]);
      *(a1 + v18[33]) = *(a2 + v18[33]);
      *(a1 + v18[34]) = *(a2 + v18[34]);
    }

    else
    {
      v25 = type metadata accessor for PlatformItemList.Item(0);
      v26 = *(v25 - 1);
      if ((*(v26 + 48))(a2, 1, v25))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
        memcpy(a1, a2, *(*(v27 - 8) + 64));
      }

      else
      {
        v34 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v34;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        v35 = *(a2 + 208);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 208) = v35;
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 235) = *(a2 + 235);
        v36 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v36;
        v37 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v37;
        v38 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v38;
        v39 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v39;
        v40 = *(a2 + 272);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 272) = v40;
        v41 = *(a2 + 368);
        *(a1 + 352) = *(a2 + 352);
        *(a1 + 368) = v41;
        *(a1 + 384) = *(a2 + 384);
        *(a1 + 400) = *(a2 + 400);
        v42 = *(a2 + 304);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 304) = v42;
        v43 = *(a2 + 336);
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 336) = v43;
        v44 = *(a2 + 456);
        *(a1 + 440) = *(a2 + 440);
        *(a1 + 456) = v44;
        *(a1 + 472) = *(a2 + 472);
        v45 = *(a2 + 424);
        *(a1 + 408) = *(a2 + 408);
        *(a1 + 424) = v45;
        *(a1 + 480) = *(a2 + 480);
        *(a1 + 489) = *(a2 + 489);
        *(a1 + 512) = *(a2 + 512);
        *(a1 + 528) = *(a2 + 528);
        memcpy((a1 + 536), (a2 + 536), 0x130uLL);
        v46 = *(a2 + 856);
        *(a1 + 840) = *(a2 + 840);
        *(a1 + 856) = v46;
        *(a1 + 872) = *(a2 + 872);
        *(a1 + 888) = *(a2 + 888);
        *(a1 + 896) = *(a2 + 896);
        *(a1 + 904) = *(a2 + 904);
        *(a1 + 920) = *(a2 + 920);
        *(a1 + 936) = *(a2 + 936);
        *(a1 + 944) = *(a2 + 944);
        *(a1 + 952) = *(a2 + 952);
        *(a1 + 953) = *(a2 + 953);
        v47 = v25[28];
        v48 = (a1 + v47);
        v49 = (a2 + v47);
        v50 = type metadata accessor for CommandOperation(0);
        v51 = *(v50 - 8);
        if ((*(v51 + 48))(v49, 1, v50))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
          memcpy(v48, v49, *(*(v52 - 8) + 64));
        }

        else
        {
          *v48 = *v49;
          v53 = *(v50 + 20);
          v54 = &v48[v53];
          v62 = v48;
          v55 = &v49[v53];
          v56 = *&v49[v53 + 16];
          *v54 = *&v49[v53];
          v54[1] = v56;
          v63 = v26;
          v57 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v58 = type metadata accessor for UUID();
          v59 = v54 + v57;
          v60 = &v55[v57];
          v26 = v63;
          (*(*(v58 - 8) + 32))(v59, v60, v58);
          *&v62[*(v50 + 24)] = *&v49[*(v50 + 24)];
          (*(v51 + 56))();
        }

        *(a1 + v25[29]) = *(a2 + v25[29]);
        *(a1 + v25[30]) = *(a2 + v25[30]);
        *(a1 + v25[31]) = *(a2 + v25[31]);
        *(a1 + v25[32]) = *(a2 + v25[32]);
        *(a1 + v25[33]) = *(a2 + v25[33]);
        *(a1 + v25[34]) = *(a2 + v25[34]);
        (*(v26 + 56))(a1, 0, 1, v25);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t DialogActionContext.init(visiting:presentationType:environment:actionDelegate:)@<X0>(char *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v170 = a4;
  v163 = a2;
  v189 = a2;
  _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v164 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v179 = &v148 - v11;
  v12 = type metadata accessor for PlatformItemList.Item(0);
  Description = v12[-1].Description;
  MEMORY[0x1EEE9AC00](v12);
  v165 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v148 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v148 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v148 - v19;
  type metadata accessor for (offset: Int, element: PlatformItemList.Item)(0);
  v21 = v20;
  v188 = v20[-1].Description;
  MEMORY[0x1EEE9AC00](v20);
  v171 = (&v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for (offset: Int, element: PlatformItemList.Item)?, type metadata accessor for (offset: Int, element: PlatformItemList.Item));
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = (&v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v187 = (&v148 - v27);
  _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v161 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v148 - v31);
  v33 = a3[1];
  *&v162 = *a3;
  *(&v162 + 1) = v33;
  v34 = type metadata accessor for DialogActionContext(0);
  v35 = v34[6];
  v36 = type metadata accessor for DialogActionContext.CancelType(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v169 = 1;
  v180 = v35;
  v181 = v36;
  v158 = v38;
  v159 = v37 + 56;
  (v38)(a5 + v35, 1, 1);
  v148 = v34[9];
  *(a5 + v148) = 0;
  *a5 = a1;
  v39 = MEMORY[0x1E69E7CC0];
  a5[1] = MEMORY[0x1E69E7CC0];
  v166 = a5 + 1;
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SiTt0g5Tf4g_n(v39);
  v167 = v34[7];
  *(a5 + v167) = v40;
  v41 = v34[8];
  v42 = a5;
  v160 = v41;
  *(a5 + v41) = v39;

  if (!v189)
  {
    static Semantics.v5.getter();
    v169 = isLinkedOnOrAfter(_:)() ^ 1;
  }

  v43 = *(Description + 7);
  v175 = v12;
  v176 = v32;
  v173 = v43;
  v174 = Description + 56;
  v43(v32, 1, 1, v12);
  v189 = 0;
  v44 = 0;
  v149 = 0;
  v45 = *(a1 + 2);
  v182 = (v188 + 48);
  v183 = (v188 + 56);
  v168 = MEMORY[0x1E69E7CC0];
  v184 = (v37 + 48);
  v185 = a5;
  v46 = &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?;
  v177 = v45;
  v178 = v25;
  while (1)
  {
    v47 = v187;
    if (v44 == v45)
    {
LABEL_5:
      v48 = 1;
      v188 = v45;
      goto LABEL_8;
    }

    while (1)
    {
      if (v44 >= *(a1 + 2))
      {
        __break(1u);
        goto LABEL_90;
      }

      v49 = v44 + 1;
      v50 = v171;
      v51 = &a1[((Description[80] + 32) & ~Description[80]) + *(Description + 9) * v44];
      Kind_low = SLODWORD(v21[3].Kind);
      *v171 = v44;
      outlined init with copy of PlatformItemList.Item(v51, v50 + Kind_low);
      outlined init with take of (offset: Int, element: PlatformItemList.Item)(v50, v25, type metadata accessor for (offset: Int, element: PlatformItemList.Item));
      v48 = 0;
      v188 = v49;
      v47 = v187;
LABEL_8:
      (*v183)(v25, v48, 1, v21);
      outlined init with take of (offset: Int, element: PlatformItemList.Item)?(v25, v47);
      if ((*v182)(v47, 1, v21) == 1)
      {

        LOBYTE(v46) = v163;
        v21 = v168;
        v53 = (v168 >> 62);
        v45 = v175;
        v12 = v176;
        v25 = Description;
        if (v163 != 1)
        {
          goto LABEL_63;
        }

        if (!v53)
        {
          if (!*((v168 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        }

LABEL_92:
        if (!__CocoaSet.count.getter())
        {
LABEL_62:
          v94 = static os_log_type_t.fault.getter();
          type metadata accessor for OS_os_log();
          v95 = static OS_os_log.default.getter();
          v96 = v94;
          v42 = v185;
          os_log(_:dso:log:_:_:)(v96, &dword_18BD4A000, v95, "A confirmation dialog was created without any actions. Confirmation dialogs should always provide users with an actionable choice. Consider using an alert if there is no action that can be taken in response to your presentation.", 228, 2, MEMORY[0x1E69E7CC0]);
        }

LABEL_63:
        if (!v53)
        {
          v97 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_65;
        }

LABEL_90:
        v97 = __CocoaSet.count.getter();
LABEL_65:
        v98 = v161;
        _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOcTm_0(v12, v161, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, _s7SwiftUI16CommandOperationVSgMaTm_1);
        if (v25[6](v98, 1, v45) == 1)
        {
          _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(v98, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
          if (v46 != 1 && !v97)
          {
            goto LABEL_68;
          }

          if (((v46 != 1) & (v189 ^ 1)) == 0)
          {
            if (v97)
            {
              v99 = static Text.System.cancel.getter();
              goto LABEL_74;
            }

LABEL_68:
            v99 = static Text.System.ok.getter();
LABEL_74:
            v108 = v99;
            v109 = v100;
            v110 = v101;
            v190 = v162;
            v220[0] = 0u;
            MEMORY[0x18D009CB0](&v209);
            v111 = Text.resolveString(in:with:idiom:)();
            v113 = v112;

            v114 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v115 = MEMORY[0x18D00C850](v111, v113);

            v116 = [v114 initWithString_];
            outlined consume of Text.Storage(v108, v109, v110 & 1);

            _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v209);
            v207 = 0u;
            v208 = 0u;
            v205 = 0u;
            v206 = 0u;
            v203 = 0u;
            v204 = 0u;
            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v197 = 0u;
            v198 = 0u;
            v195 = 0u;
            v196 = 0u;
            v193 = 0u;
            v194 = 0u;
            v191 = 0u;
            v192 = 0u;
            v190 = 0u;
            v117 = v150;
            v150[32] = 0;
            *(v117 + 24) = 0;
            *(v117 + 8) = 0u;
            *(v117 + 40) = -1;
            *(v117 + 56) = 1;
            v118 = v218;
            *(v117 + 192) = v217;
            *(v117 + 208) = v118;
            *(v117 + 224) = v219[0];
            *(v117 + 235) = *(v219 + 11);
            v119 = v214;
            *(v117 + 128) = v213;
            *(v117 + 144) = v119;
            v120 = v216;
            *(v117 + 160) = v215;
            *(v117 + 176) = v120;
            v121 = v210;
            *(v117 + 64) = v209;
            *(v117 + 80) = v121;
            v122 = v212;
            *(v117 + 96) = v211;
            *(v117 + 112) = v122;
            *(v117 + 304) = 0u;
            *(v117 + 320) = 0u;
            *(v117 + 272) = 0u;
            *(v117 + 288) = 0u;
            *(v117 + 256) = 0u;
            *(v117 + 336) = 0x3FFFFFFFCLL;
            *(v117 + 344) = 0u;
            *(v117 + 360) = 0u;
            *(v117 + 376) = 0u;
            *(v117 + 392) = 0u;
            *(v117 + 408) = 0;
            *(v117 + 416) = 1;
            *(v117 + 424) = 0u;
            *(v117 + 440) = 0u;
            *(v117 + 456) = 0u;
            *(v117 + 472) = 0;
            *(v117 + 480) = 0;
            *(v117 + 488) = 0u;
            *(v117 + 504) = 0;
            *(v117 + 512) = 0u;
            *(v117 + 528) = 4;
            *(v117 + 536) = 0u;
            *(v117 + 552) = 0u;
            *(v117 + 568) = 0u;
            *(v117 + 584) = 0u;
            *(v117 + 600) = 0u;
            *(v117 + 616) = 0u;
            *(v117 + 632) = 0u;
            *(v117 + 648) = 0u;
            *(v117 + 664) = 0u;
            *(v117 + 680) = 0u;
            *(v117 + 696) = 0u;
            *(v117 + 712) = 0u;
            *(v117 + 728) = 0u;
            *(v117 + 744) = 0u;
            *(v117 + 760) = 0u;
            *(v117 + 776) = 0u;
            *(v117 + 792) = 0u;
            *(v117 + 808) = 0u;
            *(v117 + 824) = 0u;
            *(v117 + 840) = 0u;
            *(v117 + 856) = 0;
            *(v117 + 864) = 1;
            *(v117 + 872) = 0u;
            *(v117 + 888) = 0u;
            *(v117 + 904) = 0u;
            *(v117 + 920) = 0u;
            *(v117 + 936) = 0u;
            *(v117 + 952) = 1283;
            *(v117 + 954) = 3;
            v123 = v175;
            v124 = SLODWORD(v175[7].Kind);
            v125 = type metadata accessor for CommandOperation(0);
            (*(*(v125 - 8) + 56))(v117 + v124, 1, 1, v125);
            *(v117 + v123[29]) = 0;
            *(v117 + v123[30]) = 0;
            *(v117 + v123[31]) = 2;
            *(v117 + v123[32]) = 0;
            *(v117 + v123[33]) = 0;
            v126 = v123[34];
            *v117 = v116;
            v127 = *(v117 + 208);
            v220[8] = *(v117 + 192);
            v220[9] = v127;
            v221[0] = *(v117 + 224);
            *(v221 + 11) = *(v117 + 235);
            v128 = *(v117 + 144);
            v220[4] = *(v117 + 128);
            v220[5] = v128;
            v129 = *(v117 + 176);
            v220[6] = *(v117 + 160);
            v220[7] = v129;
            v130 = *(v117 + 80);
            v220[0] = *(v117 + 64);
            v220[1] = v130;
            v131 = *(v117 + 112);
            v220[2] = *(v117 + 96);
            v220[3] = v131;
            outlined destroy of AnyAccessibilityValue?(v220, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
            v132 = v218;
            *(v117 + 192) = v217;
            *(v117 + 208) = v132;
            *(v117 + 224) = v219[0];
            *(v117 + 235) = *(v219 + 11);
            v133 = v214;
            *(v117 + 128) = v213;
            *(v117 + 144) = v133;
            v134 = v216;
            *(v117 + 160) = v215;
            *(v117 + 176) = v134;
            v135 = v210;
            *(v117 + 64) = v209;
            *(v117 + 80) = v135;
            v136 = v212;
            *(v117 + 96) = v211;
            *(v117 + 112) = v136;
            v137 = *(v117 + 456);
            v222[2] = *(v117 + 440);
            v222[3] = v137;
            v223 = *(v117 + 472);
            v138 = *(v117 + 424);
            v222[0] = *(v117 + 408);
            v222[1] = v138;
            outlined destroy of AnyAccessibilityValue?(v222, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
            *(v117 + 408) = 1;
            *(v117 + 409) = 0;
            *(v117 + 416) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
            *(v117 + 424) = 0u;
            *(v117 + 440) = 0u;
            *(v117 + 456) = 0u;
            *(v117 + 472) = 0;
            outlined assign with take of PlatformItemList.Item.Accessibility?(&v190, v117 + 536);
            *(v117 + v126) = 0;
            *(v117 + 48) = 0;
            if (v97)
            {
              v139 = 1;
            }

            else
            {
              v139 = 4;
            }

            *(v117 + 528) = v139;
            v42 = v185;
            v104 = v180;
            _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(v185 + v180, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
            outlined init with take of (offset: Int, element: PlatformItemList.Item)(v117, v42 + v104, type metadata accessor for PlatformItemList.Item);
            v105 = v181;
            swift_storeEnumTagMultiPayload();
            v158(v42 + v104, 0, 1, v105);
            v12 = v176;
LABEL_78:
            v140 = v164;
            _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOcTm_0(v42 + v104, v164, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType, _s7SwiftUI16CommandOperationVSgMaTm_1);
            v141 = (*v184)(v140, 1, v105);
            v45 = v165;
            if (v141 == 1)
            {
              _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(v12, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);

              v142 = &lazy cache variable for type metadata for DialogActionContext.CancelType?;
              v143 = type metadata accessor for DialogActionContext.CancelType;
              v144 = v140;
              return _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(v144, v142, v143);
            }

            if (swift_getEnumCaseMultiPayload() != 1)
            {
              _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(v12, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);

              return outlined destroy of DialogActionContext.CancelType(v140, type metadata accessor for DialogActionContext.CancelType);
            }

            outlined init with take of (offset: Int, element: PlatformItemList.Item)(v140, v45, type metadata accessor for PlatformItemList.Item);
            v145 = PlatformItemList.Item.alertAction(delegate:)(0);
            if (!v145)
            {
LABEL_84:

              outlined destroy of DialogActionContext.CancelType(v45, type metadata accessor for PlatformItemList.Item);
              v142 = &lazy cache variable for type metadata for PlatformItemList.Item?;
              v143 = type metadata accessor for PlatformItemList.Item;
              v144 = v12;
              return _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(v144, v142, v143);
            }

            v42 = v145;
            v146 = v166;
            MEMORY[0x18D00CC30]();
            if (*((*v146 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_83:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              goto LABEL_84;
            }

LABEL_95:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            goto LABEL_83;
          }

          v42 = v185;
          v104 = v180;
          v105 = v181;
          if (v46 == 2)
          {
            goto LABEL_78;
          }

          _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(v185 + v180, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
          v106 = v42 + v104;
          v107 = 1;
        }

        else
        {

          v102 = v98;
          v103 = v151;
          outlined init with take of (offset: Int, element: PlatformItemList.Item)(v102, v151, type metadata accessor for PlatformItemList.Item);
          v104 = v180;
          _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(v42 + v180, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
          outlined init with take of (offset: Int, element: PlatformItemList.Item)(v103, v42 + v104, type metadata accessor for PlatformItemList.Item);
          v105 = v181;
          swift_storeEnumTagMultiPayload();
          v106 = v42 + v104;
          v107 = 0;
        }

        v158(v106, v107, 1, v105);
        goto LABEL_78;
      }

      v53 = v46;
      v45 = a1;
      v25 = *v47;
      v12 = v21;
      v54 = v186;
      outlined init with take of (offset: Int, element: PlatformItemList.Item)(v47 + SLODWORD(v21[3].Kind), v186, type metadata accessor for PlatformItemList.Item);
      v189 |= *(v54 + 528) == 0;
      v55 = v179;
      _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOcTm_0(v42 + v180, v179, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType, _s7SwiftUI16CommandOperationVSgMaTm_1);
      v56 = (*v184)(v55, 1, v181);
      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(v55, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
      v57 = v56 == 1;
      v58 = v54;
      if (!v57 || *(v54 + 528) != 1)
      {
        break;
      }

      v59 = v176;
      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(v176, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      outlined init with copy of PlatformItemList.Item(v54, v59);
      v173(v59, 0, 1, v175);
      outlined destroy of DialogActionContext.CancelType(v54, type metadata accessor for PlatformItemList.Item);
      v42 = v185;
      v21 = v12;
      v45 = v177;
      v25 = v178;
      v47 = v187;
      v44 = v188;
      v46 = v53;
      if (v188 == v177)
      {
        goto LABEL_5;
      }
    }

    v21 = v12;
    v46 = v53;
    if ((v169 & 1) != 0 && *(v58 + 416) < 2uLL)
    {
      v42 = v185;
      goto LABEL_53;
    }

    v60 = PlatformItemList.Item.alertAction(delegate:)(v170);
    v42 = v185;
    if (!v60)
    {
      goto LABEL_53;
    }

    v61 = v60;
    v12 = v60;
    v62 = v166;
    MEMORY[0x18D00CC30]();
    if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = v185;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v168 = *(v42 + 8);
    v63 = v167;
    LODWORD(v157) = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v42 + v63);
    *&v190 = v64;
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    v66 = *(v64 + 16);
    v67 = (v65 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      __break(1u);
      goto LABEL_92;
    }

    v69 = v65;
    if (*(v64 + 24) >= v68)
    {
      if (v157)
      {
        v72 = v190;
        if ((v65 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v72 = v190;
        if ((v69 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

LABEL_28:
      *(*(v72 + 7) + 8 * v42) = v25;
      goto LABEL_32;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, v157);
    v70 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v69 & 1) != (v71 & 1))
    {
      break;
    }

    v42 = v70;
    v72 = v190;
    if (v69)
    {
      goto LABEL_28;
    }

LABEL_30:
    *&v72[8 * (v42 >> 6) + 64] |= 1 << v42;
    *(*(v72 + 6) + 8 * v42) = v12;
    *(*(v72 + 7) + 8 * v42) = v25;
    v73 = *(v72 + 2);
    v74 = __OFADD__(v73, 1);
    v75 = v73 + 1;
    if (v74)
    {
      __break(1u);
      goto LABEL_95;
    }

    *(v72 + 2) = v75;
LABEL_32:
    *(v185 + v167) = v72;
    v76 = *(v186 + 480);
    v77 = *(v186 + 488);
    v78 = *(v186 + 496);
    v79 = *(v186 + 504);
    if (one-time initialization token for defaultAction != -1)
    {
      v93 = *(v186 + 480);
      swift_once();
      v76 = v93;
    }

    if (!v77)
    {
      v80 = v61;
      a1 = v45;
      if (!qword_1ED57A6B8)
      {

        goto LABEL_50;
      }

LABEL_42:

      v42 = v185;
      goto LABEL_53;
    }

    if (!qword_1ED57A6B8)
    {
      a1 = v45;
      goto LABEL_42;
    }

    v157 = qword_1ED57A6C0;
    LODWORD(v156) = byte_1ED57A6C8;
    if (v76 == static KeyboardShortcut.defaultAction && v77 == qword_1ED57A6B8)
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_44;
    }

    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRetain_n();
    if ((v81 & 1) == 0)
    {
LABEL_47:
      swift_bridgeObjectRelease_n();
      a1 = v45;
LABEL_48:

      v42 = v185;
      goto LABEL_53;
    }

LABEL_44:
    if (v78 != v157)
    {
      goto LABEL_47;
    }

    v80 = v61;
    swift_bridgeObjectRelease_n();
    a1 = v45;
    if (v79 != v156)
    {
      goto LABEL_48;
    }

LABEL_50:
    v42 = v185;
    if (v149)
    {
    }

    else
    {
      *(v185 + v148) = v80;
      v149 = v80;
    }

LABEL_53:
    v82 = *(v186 + 352);
    v192 = *(v186 + 336);
    v193 = v82;
    v83 = *(v186 + 384);
    v194 = *(v186 + 368);
    v195 = v83;
    *&v196 = *(v186 + 400);
    v84 = *(v186 + 320);
    v190 = *(v186 + 304);
    v191 = v84;
    v85 = v192;
    if (v192 >> 2 != 0xFFFFFFFF && (v192 & 0xC000000000000000) == 0x4000000000000000)
    {
      v86 = *(&v190 + 1);
      v87 = v190;
      v154 = *(&v191 + 1);
      v155 = v191;
      v88 = *(&v192 + 1);
      v156 = *(&v193 + 1);
      v157 = v193;
      v152 = v195;
      v153 = v194;
      v89 = v196;
      v12 = &type metadata for PlatformItemList.Item.SystemItem;
      _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOcTm_0(&v190, v220, v46, &type metadata for PlatformItemList.Item.SystemItem, type metadata accessor for AnyAccessibilityValue?);
      v90 = v86;
      v42 = v185;
      v91 = outlined copy of PlatformItemList.Item.SystemItem(v87, v90, v155, v154, v85, v88, v157, v156, v153, *(&v153 + 1), v152, SBYTE8(v152), v89);
      v92 = v160;
      MEMORY[0x18D00CC30](v91);
      if (*((*(v42 + v92) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v42 + v92) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v42 = v185;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      outlined destroy of AnyAccessibilityValue?(&v190, v46, &type metadata for PlatformItemList.Item.SystemItem);
      a1 = v45;
    }

    outlined destroy of DialogActionContext.CancelType(v186, type metadata accessor for PlatformItemList.Item);
    v45 = v177;
    v25 = v178;
    v44 = v188;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id PlatformItemList.Item.alertAction(delegate:)(uint64_t a1)
{
  v3 = type metadata accessor for PlatformItemList.Item(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 336);
  if (v8 >> 2 != 0xFFFFFFFF && (v8 & 0xC000000000000000) == 0x4000000000000000)
  {
    return 0;
  }

  v10 = *v1;
  if (!*v1)
  {
    if (*(v1 + 528) == 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  if (a1)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = partial apply for closure #1 in PlatformItemList.Item.alertAction(delegate:);
  }

  else
  {
    outlined init with copy of PlatformItemList.Item(v1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    outlined init with take of (offset: Int, element: PlatformItemList.Item)(v7, v11 + v14, type metadata accessor for PlatformItemList.Item);
    v12 = partial apply for closure #2 in PlatformItemList.Item.alertAction(delegate:);
  }

  v15 = v12;
  if (*(v1 + 528) == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2 * (*(v1 + 528) == 0);
  }

  if (v10)
  {
    v17 = [v10 string];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v10 = MEMORY[0x18D00C850](v18, v20);
  }

  aBlock[4] = v15;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_33;
  v21 = _Block_copy(aBlock);

  v22 = [objc_opt_self() actionWithTitle:v10 style:v16 handler:v21];
  _Block_release(v21);

  v23 = *(v1 + 416);
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = *(v1 + 936) != 0;
    }

    else
    {
      v24 = *(v1 + 56);
    }
  }

  else
  {
    v24 = 0;
  }

  [v22 setEnabled_];
  v25 = v22;
  specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(v25, v1);

  return v25;
}

double closure #1 in PlatformItemList.Item.alertAction(delegate:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 80))(a1);
  }

  return result;
}

void closure #2 in PlatformItemList.Item.alertAction(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 416);
  if (v2 >= 2)
  {
    v3 = *(a2 + 424);

    v2(v4);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2, v3);
  }
}

void type metadata accessor for (offset: Int, element: PlatformItemList.Item)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: PlatformItemList.Item))
  {
    type metadata accessor for PlatformItemList.Item(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: PlatformItemList.Item));
    }
  }
}

uint64_t outlined init with take of (offset: Int, element: PlatformItemList.Item)?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for (offset: Int, element: PlatformItemList.Item)?, type metadata accessor for (offset: Int, element: PlatformItemList.Item));
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (offset: Int, element: PlatformItemList.Item)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DialogActionContext.CancelType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

void partial apply for closure #2 in PlatformItemList.Item.alertAction(delegate:)(uint64_t a1)
{
  v3 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #2 in PlatformItemList.Item.alertAction(delegate:)(a1, v4);
}

double closure #1 in SearchFieldConfigurationTokenFieldStyle.makeBody(configuration:)@<D0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for TokenFieldConfiguration(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = type metadata accessor for SearchAttributedString;
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E6981948];
  type metadata accessor for SearchFieldConfiguration.Data?(0, &lazy cache variable for type metadata for Binding<SearchAttributedString>, type metadata accessor for SearchAttributedString, MEMORY[0x1E6981948]);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  *&v36 = swift_getKeyPath();
  type metadata accessor for SearchFieldConfiguration.Data?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], v5);
  v11 = *(v10 + 32);
  v12 = *(v7 + 40);
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 16))(&v9[v12], &a1[v11], v13);
  type metadata accessor for WritableKeyPath<AttributedString, SearchAttributedString>(0);
  v14 = MEMORY[0x1E6982050];
  lazy protocol witness table accessor for type ViewInputFlagModifier<AllowSectionPickerLabels> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type WritableKeyPath<AttributedString, SearchAttributedString> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<AttributedString, SearchAttributedString>, MEMORY[0x1E6982050]);
  v15 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  v16 = *a1;
  *v9 = *a1;
  *(v9 + 1) = v15;
  *&v36 = swift_getKeyPath();
  swift_retain_n();
  v18 = SearchAttributedString.tokens.getter(v17);
  type metadata accessor for WritableKeyPath<SearchAttributedString, [AnyToken]>(0);
  lazy protocol witness table accessor for type ViewInputFlagModifier<AllowSectionPickerLabels> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type WritableKeyPath<SearchAttributedString, [AnyToken]> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<SearchAttributedString, [AnyToken]>, v14);
  v19 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  outlined destroy of Binding<AnyToken>(v9, &lazy cache variable for type metadata for Binding<SearchAttributedString>, v29, v5, type metadata accessor for SearchFieldConfiguration.Data?);
  v33 = v16;
  v34 = v19;
  v35 = v18;
  v20 = a1;
  v21 = v30;
  _s7SwiftUI23TokenFieldConfigurationVWOcTm_0(v20, v30, type metadata accessor for TokenFieldConfiguration);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  outlined init with take of TokenFieldConfiguration(v21, v23 + v22);
  type metadata accessor for Binding<[AnyToken]>(0);
  type metadata accessor for ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>(0);
  lazy protocol witness table accessor for type Binding<[AnyToken]> and conformance <A> Binding<A>();
  lazy protocol witness table accessor for type ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Binding<AnyToken> and conformance <A> Binding<A>();
  ForEach<>.init(_:content:)();
  v24 = v37;
  v25 = v32;
  *v32 = v36;
  v25[1] = v24;
  result = *&v38;
  v27 = v39;
  v25[2] = v38;
  v25[3] = v27;
  return result;
}

uint64_t key path setter for AttributedString.search : AttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchAttributedString(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  (*(v8 + 8))(a2, v7);
  _s7SwiftUI23TokenFieldConfigurationVWOcTm_0(a1, v6, type metadata accessor for SearchAttributedString);
  return (*(v8 + 32))(a2, v6, v7);
}

uint64_t implicit closure #1 in closure #1 in SearchFieldConfigurationTokenFieldStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1E6981948];
  outlined init with copy of Binding<AnyToken>(a1, v10, &lazy cache variable for type metadata for Binding<AnyToken>, &type metadata for AnyToken, MEMORY[0x1E6981948], type metadata accessor for [AnyToken]);
  outlined init with copy of Binding<AnyToken>(v10, v9, &lazy cache variable for type metadata for Binding<AnyToken>, &type metadata for AnyToken, v5, type metadata accessor for [AnyToken]);
  v6 = type metadata accessor for TokenFieldConfiguration(0);
  v7 = (*(a2 + *(v6 + 28)))(v9);
  outlined destroy of Binding<AnyToken>(v9, &lazy cache variable for type metadata for Binding<AnyToken>, &type metadata for AnyToken, v5, type metadata accessor for [AnyToken]);
  result = outlined destroy of Binding<AnyToken>(v10, &lazy cache variable for type metadata for Binding<AnyToken>, &type metadata for AnyToken, v5, type metadata accessor for [AnyToken]);
  *a3 = v7;
  a3[1] = closure #1 in View.forcePlatformItem();
  a3[2] = 0;
  return result;
}

uint64_t static SearchFieldConfigurationTokenFieldStyle.BodyView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v28 = a5;
  v59 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v55 = *(a2 + 32);
  v56 = v7;
  v9 = *(a2 + 48);
  v57 = *(a2 + 64);
  v10 = *(a2 + 16);
  v54[0] = *a2;
  v54[1] = v10;
  v50 = v55;
  v51 = v9;
  v52 = *(a2 + 64);
  v11 = *a1;
  v58 = *(a2 + 80);
  v53 = *(a2 + 80);
  v48 = v54[0];
  v49 = v8;
  outlined init with copy of _ViewInputs(v54, &v42);
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(2u);
  LODWORD(v42) = v11;
  type metadata accessor for SearchFieldConfigurationTokenFieldStyle.BodyView(255, a3, a4, v12);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for TokenFieldConfiguration(0) - 8) + 64))
  {
    closure #1 in static SearchFieldConfigurationTokenFieldStyle.BodyView._makeView(view:inputs:)(1, a3, a4, v13);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v31 = v11;
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #2 in static SearchFieldConfigurationTokenFieldStyle.BodyView._makeView(view:inputs:)(1, a3, a4, v15);
  }

  v16 = AGGraphCreateOffsetAttribute2();
  v38[2] = v50;
  v38[3] = v51;
  v38[4] = v52;
  v39 = v53;
  v38[0] = v48;
  v38[1] = v49;
  v44 = v50;
  v45 = v51;
  v46 = v52;
  LODWORD(v47[0]) = v53;
  v42 = v48;
  v43 = v49;
  v17 = PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(v16, &v42, 1, v40);
  v36 = v40[4];
  v37[0] = v41[0];
  *(v37 + 12) = *(v41 + 12);
  v32 = v40[0];
  v33 = v40[1];
  v34 = v40[2];
  v35 = v40[3];
  MEMORY[0x1EEE9AC00](v17);
  *&v42 = &type metadata for SearchTokenPlatformItemListFlags;
  *(&v42 + 1) = a3;
  *&v43 = &protocol witness table for SearchTokenPlatformItemListFlags;
  *(&v43 + 1) = a4;
  v18 = type metadata accessor for PlatformItemListGenerator(0, &v42);
  v26 = v18;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v18);
  outlined init with copy of _ViewInputs(v38, &v42);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v42, v40, v18);
  type metadata accessor for [AnyToken](0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v32, closure #1 in Attribute.init<A>(_:)partial apply, &v25, v18, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  v46 = v36;
  v47[0] = v37[0];
  *(v47 + 12) = *(v37 + 12);
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v22 = *(v19 + 8);
  v22(&v42, v18);
  v23 = v29;
  _ViewOutputs.init()();
  v29 = v56;
  v30 = DWORD2(v56);
  MEMORY[0x1EEE9AC00](v56);
  v26 = __PAIR64__(v23, OffsetAttribute2);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  v22(v40, v18);

  v34 = v50;
  v35 = v51;
  v36 = v52;
  LODWORD(v37[0]) = v53;
  v32 = v48;
  v33 = v49;
  return outlined destroy of _ViewInputs(&v32);
}

uint64_t closure #1 in static SearchFieldConfigurationTokenFieldStyle.BodyView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for SearchFieldConfigurationTokenFieldStyle.BodyView(0, a2, a3, a4);
  v5 = type metadata accessor for TokenFieldConfiguration(0);
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static SearchFieldConfigurationTokenFieldStyle.BodyView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SearchFieldConfigurationTokenFieldStyle.BodyView(0, a2, a3, a4);
  v7 = *(v6 + 36);
  v11[2] = v6;
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, partial apply for closure #1 in static PointerOffset.of(_:), v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t implicit closure #1 in static SearchFieldConfigurationTokenFieldStyle.BodyView._makeView(view:inputs:)(uint64_t a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchFieldConfiguration.Data?(0, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle.MakeConfiguration and conformance SearchFieldConfigurationTokenFieldStyle.MakeConfiguration();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SearchFieldConfigurationTokenFieldStyle.BodyView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfigurationTokenFieldStyle.BodyView<A>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t SearchFieldConfigurationTokenFieldStyle.MakeConfiguration.value.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E6968848];
  v5 = MEMORY[0x1E6981948];
  type metadata accessor for SearchFieldConfiguration.Data?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for TokenFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  _s7SwiftUI23TokenFieldConfigurationVWOcTm_0(Value, v11, type metadata accessor for TokenFieldConfiguration);
  outlined init with copy of Binding<AnyToken>(v11, v8, &lazy cache variable for type metadata for Binding<AttributedString>, v4, v5, type metadata accessor for SearchFieldConfiguration.Data?);
  outlined destroy of TokenFieldConfiguration(v11);
  result = AGGraphGetValue();
  v14 = result + *(v9 + 24);
  v15 = *(v14 + 24);
  if (v15)
  {
    v17 = *v14;
    v16 = *(v14 + 8);
    v18 = *(v14 + 16) & 1;
    outlined copy of Text.Storage(*v14, v16, *(v14 + 16) & 1);

    v19 = AGCreateWeakAttribute();
    outlined init with take of Binding<AttributedString>(v8, a2);
    v20 = type metadata accessor for SearchFieldConfiguration.Data(0);
    v21 = a2 + *(v20 + 20);
    *v21 = v17;
    *(v21 + 8) = v16;
    *(v21 + 16) = v18;
    *(v21 + 24) = v15;
    v22 = a2 + *(v20 + 24);
    *v22 = v19;
    *(v22 + 8) = 0;
    return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SearchFieldConfigurationTokenFieldStyle.MakeConfiguration@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchFieldConfiguration.Data?(0, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 1, 1, v3);
}

uint64_t protocol witness for TokenFieldStyle.makeBody(configuration:) in conformance SearchFieldConfigurationTokenFieldStyle@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TokenFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI23TokenFieldConfigurationVWOcTm_0(a1, v6, type metadata accessor for TokenFieldConfiguration);
  _s7SwiftUI23TokenFieldConfigurationVWOcTm_0(v6, a2, type metadata accessor for TokenFieldConfiguration);
  type metadata accessor for SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(0);
  closure #1 in SearchFieldConfigurationTokenFieldStyle.makeBody(configuration:)(a1, (a2 + *(v7 + 36)));
  return outlined destroy of TokenFieldConfiguration(v6);
}

void type metadata accessor for SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>)
  {
    type metadata accessor for ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>> and conformance <> ForEach<A, B, C>();
    v6 = type metadata accessor for SearchFieldConfigurationTokenFieldStyle.BodyView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>);
    }
  }
}

void type metadata accessor for ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>)
  {
    type metadata accessor for Binding<[AnyToken]>(255);
    type metadata accessor for ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>(255);
    lazy protocol witness table accessor for type Binding<[AnyToken]> and conformance <A> Binding<A>();
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>);
    }
  }
}

void type metadata accessor for Binding<[AnyToken]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<[AnyToken]>)
  {
    type metadata accessor for [AnyToken](255, &lazy cache variable for type metadata for [AnyToken], &type metadata for AnyToken, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<[AnyToken]>);
    }
  }
}

void type metadata accessor for ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for MergePlatformItemsView<AnyView>(255, &lazy cache variable for type metadata for MergePlatformItemsView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for MergePlatformItemsView);
    type metadata accessor for MergePlatformItemsView<AnyView>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Binding<[AnyToken]> and conformance <A> Binding<A>()
{
  result = lazy protocol witness table cache variable for type Binding<[AnyToken]> and conformance <A> Binding<A>;
  if (!lazy protocol witness table cache variable for type Binding<[AnyToken]> and conformance <A> Binding<A>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for Binding<[AnyToken]>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type [AnyToken] and conformance [A](&lazy protocol witness table cache variable for type [AnyToken] and conformance [A], MEMORY[0x1E69E6318]);
    v5[1] = lazy protocol witness table accessor for type [AnyToken] and conformance [A](&lazy protocol witness table cache variable for type [AnyToken] and conformance [A], MEMORY[0x1E69E6338]);
    result = swift_getWitnessTable(MEMORY[0x1E6981950], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Binding<[AnyToken]> and conformance <A> Binding<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AnyToken] and conformance [A](unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [AnyToken](255, &lazy cache variable for type metadata for [AnyToken], &type metadata for AnyToken, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>> and conformance <> ForEach<A, B, C>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E69819D0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for MergePlatformItemsView<A>;
    v5[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of TokenFieldConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for TokenFieldConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for SearchFieldConfiguration.Data?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ViewInputFlagModifier<AllowSectionPickerLabels>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<AllowSectionPickerLabels> and conformance ViewInputFlagModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for WritableKeyPath<SearchAttributedString, [AnyToken]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WritableKeyPath<SearchAttributedString, [AnyToken]>)
  {
    type metadata accessor for SearchAttributedString(255);
    type metadata accessor for [AnyToken](255, &lazy cache variable for type metadata for [AnyToken], &type metadata for AnyToken, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for WritableKeyPath();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WritableKeyPath<SearchAttributedString, [AnyToken]>);
    }
  }
}

uint64_t outlined destroy of Binding<AnyToken>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with take of TokenFieldConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenFieldConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #1 in closure #1 in SearchFieldConfigurationTokenFieldStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TokenFieldConfiguration(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return implicit closure #1 in closure #1 in SearchFieldConfigurationTokenFieldStyle.makeBody(configuration:)(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type Binding<AnyToken> and conformance <A> Binding<A>()
{
  result = lazy protocol witness table cache variable for type Binding<AnyToken> and conformance <A> Binding<A>;
  if (!lazy protocol witness table cache variable for type Binding<AnyToken> and conformance <A> Binding<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for [AnyToken](255, &lazy cache variable for type metadata for Binding<AnyToken>, &type metadata for AnyToken, MEMORY[0x1E6981948]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AnyToken and conformance AnyToken();
    result = swift_getWitnessTable(MEMORY[0x1E6981958], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Binding<AnyToken> and conformance <A> Binding<A>);
  }

  return result;
}

uint64_t _s7SwiftUI23TokenFieldConfigurationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata completion function for SearchFieldConfigurationTokenFieldStyle.BodyView(uint64_t a1)
{
  result = type metadata accessor for TokenFieldConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for SearchFieldConfigurationTokenFieldStyle.BodyView(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 80);
  if ((v11 | v8) > 7 || ((*(v10 + 80) | *(v7 + 80)) & 0x100000) != 0 || ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16 + v11) & ~v11) + *(v10 + 64) > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    v15 = (v14 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));
  }

  else
  {
    v35 = *(a3 + 16);
    v33 = v6;
    v36 = a2;
    v16 = (a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v17 += 15;
    *v16 = v18;
    v16 += 15;
    v19 = (v17 & 0xFFFFFFFFFFFFFFF8) + 8;
    *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v17 & 0xFFFFFFFFFFFFFFF8);
    v20 = (v16 & 0xFFFFFFFFFFFFFFF8) + 8;
    v21 = *(v7 + 16);

    v21(v20, v19, v33);
    v22 = (((a1 + 7) | 7) + v9) & 0xFFFFFFFFFFFFFFF8;
    v23 = (((a2 + 7) | 7) + v9) & 0xFFFFFFFFFFFFFFF8;
    if (*(v23 + 24) < 0xFFFFFFFFuLL)
    {
      v27 = *(v23 + 16);
      *v22 = *v23;
      *(v22 + 16) = v27;
    }

    else
    {
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      outlined copy of Text.Storage(*v23, v25, v26);
      *v22 = v24;
      *(v22 + 8) = v25;
      *(v22 + 16) = v26;
      *(v22 + 24) = *(v23 + 24);
    }

    v28 = ((v22 + 39) & 0xFFFFFFFFFFFFFFF8);
    v29 = ((v23 + 39) & 0xFFFFFFFFFFFFFFF8);
    v30 = v29[1];
    *v28 = *v29;
    v28[1] = v30;
    v15 = a1;
    v31 = *(v10 + 16);

    v34 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
    v31((a1 + (v34 | v11)) & ~v11, (v36 + (v34 | v11)) & ~v11, v35);
  }

  return v15;
}

uint64_t destroy for SearchFieldConfigurationTokenFieldStyle.BodyView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  (*(v5 + 8))((v6 + (((((v6 | 7) + a1) & ~(v6 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6, v4);
  v7 = *(v5 + 64) + ((v6 + 16) & ~v6) + 7;
  v8 = (v7 + (((v6 | 7) + a1) & ~(v6 | 7))) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = *(*(a2 + 16) - 8);
  v10 = *(v9 + 8);
  v11 = (a1 + *(v9 + 80) + (((v7 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v9 + 80);

  return v10(v11);
}

uint64_t initializeWithCopy for SearchFieldConfigurationTokenFieldStyle.BodyView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v9 = *(v6 + 80);
  v34 = a2;
  v10 = (((v9 | 7) + a2) & ~(v9 | 7));
  v11 = (((v9 | 7) + a1) & ~(v9 | 7));
  *v11 = *v10;
  v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = v12 + v9 + 8;
  v15 = v13 + v9 + 8;

  v7(v14 & ~v9, v15 & ~v9, v5);
  v16 = *(v8 + 48) + ((v9 + 16) & ~v9) + 7;
  v17 = (v16 + (((v9 | 7) + a1) & ~(v9 | 7))) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v10 + v16) & 0xFFFFFFFFFFFFFFF8;
  if (*(v18 + 24) < 0xFFFFFFFFuLL)
  {
    v22 = *(v18 + 16);
    *v17 = *v18;
    *(v17 + 16) = v22;
  }

  else
  {
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    outlined copy of Text.Storage(*v18, v20, v21);
    *v17 = v19;
    *(v17 + 8) = v20;
    *(v17 + 16) = v21;
    *(v17 + 24) = *(v18 + 24);
  }

  v23 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v18 + 39) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  v26 = *(a3 + 16);
  v27 = *(*(v26 - 8) + 16);
  v28 = *(*(v26 - 8) + 80);
  v29 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v28 + 16;
  v30 = v29 + a1;
  v31 = v29 + v34;

  v27(v30 & ~v28, v31 & ~v28, v26);
  return a1;
}

uint64_t assignWithCopy for SearchFieldConfigurationTokenFieldStyle.BodyView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (((v7 | 7) + a1) & ~(v7 | 7));
  v9 = (((v7 | 7) + a2) & ~(v7 | 7));
  *v8 = *v9;

  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;

  (*(v6 + 24))((v10 + v7 + 8) & ~v7, (v11 + v7 + 8) & ~v7, v5);
  v12 = *(v6 + 64) + ((v7 + 16) & ~v7) + 7;
  v13 = (v8 + v12) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v9 + v12) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 24);
  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    if (v15 >= 0xFFFFFFFF)
    {
      v22 = *v14;
      v23 = *(v14 + 8);
      v24 = *(v14 + 16);
      outlined copy of Text.Storage(*v14, v23, v24);
      *v13 = v22;
      *(v13 + 8) = v23;
      *(v13 + 16) = v24;
      *(v13 + 24) = *(v14 + 24);

      goto LABEL_8;
    }

LABEL_7:
    v25 = *(v14 + 16);
    *v13 = *v14;
    *(v13 + 16) = v25;
    goto LABEL_8;
  }

  if (v15 < 0xFFFFFFFF)
  {
    outlined consume of Text.Storage(*v13, *(v13 + 8), *(v13 + 16));

    goto LABEL_7;
  }

  v16 = *v14;
  v17 = *(v14 + 8);
  v18 = *(v14 + 16);
  outlined copy of Text.Storage(*v14, v17, v18);
  v19 = *v13;
  v20 = *(v13 + 8);
  v21 = *(v13 + 16);
  *v13 = v16;
  *(v13 + 8) = v17;
  *(v13 + 16) = v18;
  outlined consume of Text.Storage(v19, v20, v21);
  *(v13 + 24) = *(v14 + 24);

LABEL_8:
  v26 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
  v28 = v27[1];
  *v26 = *v27;
  v26[1] = v28;

  v29 = *(*(a3 + 16) - 8);
  v30 = *(v29 + 80);
  v31 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v30 + 16;
  (*(v29 + 24))((v31 + a1) & ~v30, (v31 + a2) & ~v30);
  return a1;
}

uint64_t initializeWithTake for SearchFieldConfigurationTokenFieldStyle.BodyView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v9 = v7 + 32;
  v10 = *(v7 + 80);
  v11 = (((v10 | 7) + a2) & ~(v10 | 7));
  v12 = (((v10 | 7) + a1) & ~(v10 | 7));
  *v12 = *v11;
  v13 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v8((v13 + v10 + 8) & ~v10, (v14 + v10 + 8) & ~v10, v6);
  v15 = *(v9 + 32) + ((v10 + 16) & ~v10) + 7;
  v16 = ((v15 + (((v10 | 7) + a1) & ~(v10 | 7))) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + (((v10 | 7) + a2) & ~(v10 | 7))) & 0xFFFFFFFFFFFFFFF8);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;
  *((v16 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = *(*(a3 + 16) - 8);
  v20 = *(v19 + 80);
  v21 = (((v15 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v20 + 16;
  (*(v19 + 32))((v21 + a1) & ~v20, (v21 + a2) & ~v20);
  return a1;
}

uint64_t assignWithTake for SearchFieldConfigurationTokenFieldStyle.BodyView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (((v8 | 7) + a2) & ~(v8 | 7));
  v10 = (((v8 | 7) + a1) & ~(v8 | 7));
  *v10 = *v9;

  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  (*(v7 + 40))((v11 + v8 + 8) & ~v8, (v12 + v8 + 8) & ~v8, v6);
  v13 = *(v7 + 64) + ((v8 + 16) & ~v8) + 7;
  v14 = (v13 + (((v8 | 7) + a1) & ~(v8 | 7))) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + (((v8 | 7) + a2) & ~(v8 | 7))) & 0xFFFFFFFFFFFFFFF8;
  if (*(v14 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v15 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

LABEL_5:
    v20 = *(v15 + 16);
    *v14 = *v15;
    *(v14 + 16) = v20;
    goto LABEL_6;
  }

  v16 = *(v15 + 16);
  v17 = *v14;
  v18 = *(v14 + 8);
  v19 = *(v14 + 16);
  *v14 = *v15;
  *(v14 + 16) = v16;
  outlined consume of Text.Storage(v17, v18, v19);
  *(v14 + 24) = *(v15 + 24);

LABEL_6:
  *((v14 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 39) & 0xFFFFFFFFFFFFFFF8);

  v21 = *(*(a3 + 16) - 8);
  v22 = *(v21 + 80);
  v23 = (((v13 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v22 + 16;
  (*(v21 + 40))((v23 + a1) & ~v22, (v23 + a2) & ~v22);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchFieldConfigurationTokenFieldStyle.BodyView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for AttributedString() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v14 + 16;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v17 = (v16 & ~v14) + *(v10 + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v15 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 < 2)
    {
LABEL_31:
      if (v9 >= v11)
      {
        v26 = ((((a1 + (v12 | 7)) & ~(v12 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v8 & 0x80000000) != 0)
        {
          v28 = *(v7 + 48);

          return v28((v26 + v12 + 8) & ~v12);
        }

        else
        {
          v27 = *v26;
          if (v27 >= 0xFFFFFFFF)
          {
            LODWORD(v27) = -1;
          }

          return (v27 + 1);
        }
      }

      else
      {
        v25 = *(v10 + 48);

        return v25((a1 + v16) & ~v14, v11);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_18:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = (v16 & ~v14) + *(v10 + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

void storeEnumTagSinglePayload for SearchFieldConfigurationTokenFieldStyle.BodyView(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for AttributedString() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((((v15 + ((v14 + 16) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = ((v18 + v16) & ~v16) + *(v12 + 64);
  if (a3 <= v17)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v17 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v17 < a2)
  {
    v21 = ~v17 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_53:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v19] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v20)
  {
    goto LABEL_33;
  }

  a1[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v11 >= v13)
  {
    if (v11 >= a2)
    {
      v28 = (((&a1[v14 | 7] & ~(v14 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v30 = *(v9 + 56);

        v30((v28 + v14 + 8) & ~v14, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v29 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v29 = (a2 - 1);
        }

        *v28 = v29;
      }
    }

    else if (v18)
    {
      v27 = ~v11 + a2;
      bzero(a1, v18);
      *a1 = v27;
    }
  }

  else
  {
    v26 = *(v12 + 56);

    v26(&a1[v18 + v16] & ~v16, a2, v13);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ViewInputFlagModifier<AllowSectionPickerLabels>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ViewInputFlagModifier<AllowSectionPickerLabels>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ViewInputFlagModifier<AllowSectionPickerLabels>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ViewInputFlagModifier<AllowSectionPickerLabels>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ViewInputFlagModifier<AllowSectionPickerLabels>>, type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, type metadata accessor for ViewInputFlagModifier<AllowSectionPickerLabels>, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<AllowSectionPickerLabels> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<AllowSectionPickerLabels> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<AllowSectionPickerLabels>, MEMORY[0x1E697FD30]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ViewInputFlagModifier<AllowSectionPickerLabels>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>)
  {
    type metadata accessor for ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>(255);
    type metadata accessor for MergePlatformItemsView<AnyView>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>);
    }
  }
}

void type metadata accessor for ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>)
  {
    type metadata accessor for SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(255);
    type metadata accessor for MergePlatformItemsView<AnyView>(255, &lazy cache variable for type metadata for PickerStyleWriter<SectionPickerStyle>, &type metadata for SectionPickerStyle, &protocol witness table for SectionPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>);
    }
  }
}

void type metadata accessor for MergePlatformItemsView<AnyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ViewInputFlagModifier<AllowSectionPickerLabels>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<AllowSectionPickerLabels>)
  {
    lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<AllowSectionPickerLabels>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>>(255);
    v4[0] = &protocol witness table for SearchFieldConfigurationTokenFieldStyle.BodyView<A>;
    v4[1] = &protocol witness table for PickerStyleWriter<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfigurationTokenFieldStyle.BodyView<ForEach<Binding<[AnyToken]>, AnyHashable, ModifiedContent<MergePlatformItemsView<AnyView>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for [AnyToken](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle.MakeConfiguration and conformance SearchFieldConfigurationTokenFieldStyle.MakeConfiguration()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfigurationTokenFieldStyle.MakeConfiguration and conformance SearchFieldConfigurationTokenFieldStyle.MakeConfiguration;
  if (!lazy protocol witness table cache variable for type SearchFieldConfigurationTokenFieldStyle.MakeConfiguration and conformance SearchFieldConfigurationTokenFieldStyle.MakeConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfigurationTokenFieldStyle.MakeConfiguration, &unk_1EFFC6190, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfigurationTokenFieldStyle.MakeConfiguration and conformance SearchFieldConfigurationTokenFieldStyle.MakeConfiguration);
  }

  return result;
}

uint64_t outlined init with copy of Binding<AnyToken>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void *initializeWithTake for ItemBoundNavigationDestinationModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  if ((*(v8 + 48))(v11 & ~v9, 1, v7))
  {
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v14);
  }

  else
  {
    (*(v8 + 32))(v10 & ~v9, v11 & ~v9, v7);
    v16 = *(v8 + 56);
    v15 = v8 + 56;
    v16(v10 & ~v9, 0, 1, v7);
    v12 = *(v15 + 28);
    v13 = *(v15 + 8);
  }

  v17 = v13 + ((v9 + 16) & ~v9);
  if (!v12)
  {
    ++v17;
  }

  v18 = ((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((a2 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t ItemBoundNavigationDestinationModifier.init(item:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for Optional();
  v16 = type metadata accessor for Binding();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  result = type metadata accessor for ItemBoundNavigationDestinationModifier(0, v19);
  v18 = (a8 + *(result + 52));
  *v18 = a2;
  v18[1] = a3;
  *(a8 + *(result + 56)) = 0;
  return result;
}

uint64_t ItemBoundNavigationDestinationModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v51 - v7;
  v8 = *(a1 + 24);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v9 = *(a1 + 32);
  v60 = v5;
  v10 = v9;
  v57 = v9;
  updated = type metadata accessor for UpdateViewDestinationRequestProcessor(0, FunctionTypeMetadata1, v5, v9);
  v68 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v65 = &v51 - v11;
  v55 = type metadata accessor for Binding();
  v12 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v14 = &v51 - v13;
  *&v15 = v5;
  *(&v15 + 1) = v8;
  v56 = *(a1 + 40);
  *&v16 = v10;
  *(&v16 + 1) = v56;
  v72[1] = v16;
  v72[0] = v15;
  v59 = type metadata accessor for BaseModifier(0, v72);
  v63 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v18 = &v51 - v17;
  v54 = type metadata accessor for ModifiedContent();
  v62 = *(v54 - 8);
  v19 = MEMORY[0x1EEE9AC00](v54);
  v52 = &v51 - v20;
  swift_getWitnessTable(protocol conformance descriptor for ItemBoundNavigationDestinationModifier<A, B>, a1, v19);
  v53 = type metadata accessor for _ViewModifier_Content();
  v21 = type metadata accessor for ModifiedContent();
  v64 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v61 = &v51 - v25;
  v26 = v55;
  (*(v12 + 16))(v14, v3, v55, v24);
  v27 = (v3 + *(a1 + 52));
  v29 = *v27;
  v28 = v27[1];
  swift_retain_n();
  v30 = Namespace.wrappedValue.getter();
  v31 = v18;
  v32 = v18;
  v33 = v14;
  v34 = v60;
  v35 = v57;
  BaseModifier.init(item:transform:id:)(v33, v29, v28, v30, v60, v8, v57, v56, v31);
  v36 = v66;
  MEMORY[0x18D00ACC0](v26);
  *&v72[0] = v29;
  *(&v72[0] + 1) = v28;
  v37 = Namespace.wrappedValue.getter();
  v38 = v65;
  UpdateViewDestinationRequestProcessor.init(presentationData:destination:linkID:)(v36, v72, v37, FunctionTypeMetadata1, v34, v35, v65);
  v39 = v52;
  v40 = updated;
  v41 = v59;
  MEMORY[0x18D003AC0](v38, v59, updated, &protocol witness table for BaseModifier<A, B>);
  (*(v68 + 8))(v38, v40);
  (*(v63 + 8))(v32, v41);
  v42 = v53;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v53);
  v44 = v51;
  v45 = v42;
  v46 = v54;
  MEMORY[0x18D00A570](v39, v45, v54, WitnessTable);
  (*(v62 + 8))(v39, v46);
  v71[0] = &protocol witness table for BaseModifier<A, B>;
  v71[1] = &protocol witness table for UpdateViewDestinationRequestProcessor<A, B>;
  v47 = swift_getWitnessTable(MEMORY[0x1E697E840], v46, v71);
  v70[0] = WitnessTable;
  v70[1] = v47;
  swift_getWitnessTable(MEMORY[0x1E697E858], v21, v70);
  v48 = v61;
  static ViewBuilder.buildExpression<A>(_:)();
  v49 = *(v64 + 8);
  v49(v44, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v49)(v48, v21);
}

uint64_t BaseModifier.init(item:transform:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = a7;
  v21[3] = a8;
  result = type metadata accessor for BaseModifier(0, v21);
  v20 = (a9 + *(result + 52));
  *v20 = a2;
  v20[1] = a3;
  *(a9 + *(result + 56)) = a4;
  return result;
}

uint64_t type metadata completion function for ItemBoundNavigationDestinationModifier(uint64_t a1)
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ItemBoundNavigationDestinationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v7 + 16;
  v10 = (v8 + 16) & ~v8;
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = *(v5 + 64) + 1;
  }

  v12 = v10 + v11;
  v13 = v7 & 0x100000;
  v14 = *a2;
  *a1 = *a2;
  if (v8 > 7 || v13 != 0 || ((((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & v9));
  }

  else
  {
    v17 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = *v17;
    v18 = v17 + 1;
    v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = v19;
    v21 = v20 + 1;
    v22 = *(v5 + 48);

    if (v22(v18, 1, v4))
    {
      memcpy(v21, v18, v11);
    }

    else
    {
      (*(v6 + 16))(v21, v18, v4);
      (*(v6 + 56))(v21, 0, 1, v4);
    }

    v23 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v25 = v24[1];
    *v23 = *v24;
    v23[1] = v25;
    *((v23 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t *initializeWithCopy for ItemBoundNavigationDestinationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  v12 = *(v8 + 48);

  if (v12(v11 & ~v9, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v15);
  }

  else
  {
    (*(v8 + 16))(v10 & ~v9, v11 & ~v9, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v10 & ~v9, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  v18 = v14 + ((v9 + 16) & ~v9);
  if (!v13)
  {
    ++v18;
  }

  v19 = ((a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;
  *((v19 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t *assignWithCopy for ItemBoundNavigationDestinationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;
  v7 = a1 + 15;

  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 & 0xFFFFFFFFFFFFFFF8) = *v6;

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8 + v8;
  v13 = v11 + 8 + v6;
  v14 = *(v10 + 48);
  LODWORD(v6) = v14(v12 & ~v11, 1, v9);
  v15 = v14(v13 & ~v11, 1, v9);
  if (v6)
  {
    if (v15)
    {
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
LABEL_6:
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 + 1;
      }

      memcpy((v12 & ~v11), (v13 & ~v11), v18);
      goto LABEL_12;
    }

    (*(v10 + 16))(v12 & ~v11, v13 & ~v11, v9);
    (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
  }

  else
  {
    if (v15)
    {
      (*(v10 + 8))(v12 & ~v11, v9);
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
      goto LABEL_6;
    }

    (*(v10 + 24))(v12 & ~v11, v13 & ~v11, v9);
  }

LABEL_12:
  v19 = *(v10 + 64) + ((v11 + 16) & ~v11);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((a2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;

  *((v20 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *assignWithTake for ItemBoundNavigationDestinationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 & 0xFFFFFFFFFFFFFFF8;
  *v7 = *(v6 & 0xFFFFFFFFFFFFFFF8);

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v7 + v11 + 8;
  v13 = v11 + 8 + v8;
  v14 = *(v10 + 48);
  LODWORD(v7) = v14(v12 & ~v11, 1, v9);
  v15 = v14(v13 & ~v11, 1, v9);
  if (v7)
  {
    if (v15)
    {
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
LABEL_6:
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 + 1;
      }

      memcpy((v12 & ~v11), (v13 & ~v11), v18);
      goto LABEL_12;
    }

    (*(v10 + 32))(v12 & ~v11, v13 & ~v11, v9);
    (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
  }

  else
  {
    if (v15)
    {
      (*(v10 + 8))(v12 & ~v11, v9);
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
      goto LABEL_6;
    }

    (*(v10 + 40))(v12 & ~v11, v13 & ~v11, v9);
  }

LABEL_12:
  v19 = *(v10 + 64) + ((v11 + 16) & ~v11);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = a2 + v19 + 7;
  v22 = (v21 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v20 = *(v21 & 0xFFFFFFFFFFFFFFF8);

  *((v20 + 23) & 0xFFFFFFFFFFFFFFF8) = *(v22 & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ItemBoundNavigationDestinationModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for ItemBoundNavigationDestinationModifier(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v19 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v25 = *(v6 + 56);
      v26 = a2 + 1;

      v25((v19 + v10 + 8) & ~v10, v26);
    }

    else
    {
      if (v11 <= 3)
      {
        v22 = ~(-1 << (8 * v11));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v22 & (~v8 + a2);
        if (v11 <= 3)
        {
          v24 = v11;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v11);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t static BaseModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t *), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *a1;
  v14 = *a2;
  v15 = *(a2 + 40);
  v47 = *(a2 + 24);
  v48 = v15;
  *v49 = *(a2 + 56);
  *&v49[12] = *(a2 + 68);
  v46 = *(a2 + 8);
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.getter();
  if (v43 == 1)
  {
    v43 = v14;
    v16 = *(a2 + 40);
    *&v44[16] = *(a2 + 24);
    *&v44[32] = v16;
    v45[0] = *(a2 + 56);
    *(v45 + 12) = *(a2 + 68);
    *v44 = *(a2 + 8);
    v17 = _ViewInputs.disableNavigationDestination.getter();
    if (v17)
    {
      _StringGuts.grow(_:)(429);
      MEMORY[0x18D00C9B0](0x1000000000000181, 0x800000018CD4AEF0);
      type metadata accessor for Optional();
      swift_getMetatypeMetadata();
      v39 = String.init<A>(describing:)();
      v40 = v18;
      v19 = String.init<A>(_:)();
      MEMORY[0x18D00C9B0](v19);

      MEMORY[0x18D00C9B0](0xD00000000000002ALL, 0x800000018CD4B080);
      MEMORY[0x18D009810](0, 0xE000000000000000);
    }

    MEMORY[0x1EEE9AC00](v17);
    v43 = a5;
    *v44 = a6;
    *&v44[8] = a7;
    *&v44[16] = a8;
    type metadata accessor for BaseModifier(255, &v43);
    type metadata accessor for _GraphValue();
    type metadata accessor for Optional();
    type metadata accessor for Binding();
    _GraphValue.subscript.getter();
    type metadata accessor for _GraphValue();
    v20 = _GraphValue.value.getter();
    v35 = v20;
    MEMORY[0x1EEE9AC00](v20);
    v43 = a5;
    *v44 = a6;
    *&v44[8] = a7;
    *&v44[16] = a8;
    type metadata accessor for BaseModifier.Transform(0, &v43);
    _GraphValue.subscript.getter();
    type metadata accessor for _GraphValue();
    v21 = _GraphValue.value.getter();
    v22 = v21;
    MEMORY[0x1EEE9AC00](v21);
    LODWORD(v43) = v36;
    _GraphValue.subscript.getter();
    v23 = v36;
    lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
    PropertyList.subscript.getter();
    v24 = v43;
    lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
    PropertyList.subscript.getter();
    v37 = v43;
    lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey();
    PropertyList.subscript.getter();
    v34 = v43;
    lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
    PropertyList.subscript.getter();
    v33 = v43;
    lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
    PropertyList.subscript.getter();
    v32 = v43;
    v43 = a5;
    *v44 = a6;
    *&v44[8] = a7;
    *&v44[16] = a8;
    v25 = type metadata accessor for BaseModifier.Presenter(0, &v43);
    v43 = __PAIR64__(v35, v22);
    *v44 = v24;
    *&v44[4] = v23;
    *&v26 = v37;
    *(&v26 + 1) = v34;
    *&v27 = v33;
    *(&v27 + 1) = v32;
    *&v44[8] = v26;
    *&v44[24] = v27;
    v39 = a5;
    v40 = a6;
    v41 = a7;
    v42 = a8;
    v28 = type metadata accessor for BaseModifier.Child(0, &v39);
    swift_getWitnessTable(protocol conformance descriptor for BaseModifier<A, B>.Child, v28);
    _GraphValue.init<A>(_:)();
    v43 = v14;
    *&v44[16] = v47;
    *&v44[32] = v48;
    v45[0] = *v49;
    *(v45 + 12) = *&v49[12];
    *v44 = v46;
    swift_getWitnessTable(protocol conformance descriptor for BaseModifier<A, B>.Presenter, v25);
    return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  }

  else
  {
    _StringGuts.grow(_:)(207);
    MEMORY[0x18D00C9B0](0xD0000000000000B7, 0x800000018CD4AE30);
    type metadata accessor for Optional();
    swift_getMetatypeMetadata();
    v30 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v30);

    MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD3EC50);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    v43 = v14;
    *&v44[16] = v47;
    *&v44[32] = v48;
    v45[0] = *v49;
    *(v45 + 12) = *&v49[12];
    *v44 = v46;
    return a3(v31, &v43);
  }
}

uint64_t closure #1 in static BaseModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v9[2] = type metadata accessor for BaseModifier(0, v11);
  type metadata accessor for Optional();
  v10 = type metadata accessor for Binding();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11[0];
}

uint64_t closure #2 in static BaseModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v10 = type metadata accessor for BaseModifier(0, &v17);
  v11 = *(v10 + 52);
  v15[2] = v10;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v16 = type metadata accessor for BaseModifier.Transform(0, &v17);
  v12 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v11, partial apply for closure #1 in static PointerOffset.of(_:), v15, v16, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  return v17;
}

uint64_t closure #3 in static BaseModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v6 = type metadata accessor for BaseModifier(0, v13);
  v7 = *(v6 + 56);
  v12[2] = v6;
  v8 = MEMORY[0x1E6981EA0];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t BaseModifier.Child.item.getter@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for Optional();
  v3 = type metadata accessor for Binding();
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

uint64_t BaseModifier.Child.stackKey.getter()
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

{
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

__int128 *BaseModifier.Child.listKey.getter@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
  }

  else
  {
    v5 = xmmword_18CD874C0;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

{
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
  }

  else
  {
    v5 = xmmword_18CD874C0;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double BaseModifier.Child.authority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyAccessibilityValue?(WeakValue, a1, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

{
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t BaseModifier.Child.requestKey.getter@<X0>(uint64_t *a1@<X8>)
{
  BaseModifier.Child.listKey.getter(&v11);
  result = BaseModifier.Child.stackKey.getter();
  v5 = v15;
  if ((v15 - 1) >= 2)
  {
    v9 = v12;
    v10 = v13;
    v8 = *(&v11 + 1);
    v7 = v11;
    v6 = v14 & 1 | 0x4000000000000000;
  }

  else
  {
    v6 = 0x1FFFFFFFELL;
    if ((v3 & 0xFE) == 6)
    {
      v7 = 0;
    }

    else
    {
      v7 = result;
    }

    if ((v3 & 0xFE) == 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v3;
    }

    if ((v3 & 0xFE) == 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v4;
    }

    v10 = 0;
    if ((v3 & 0xFE) != 6)
    {
      v6 = 0;
    }

    v5 = 0;
  }

  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v6;
  a1[5] = v5;
  return result;
}

uint64_t BaseModifier.Child.value.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[2];
  type metadata accessor for Optional();
  v5 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17[-v6 - 16];
  v8 = specialized BaseModifier.Child.transform.getter(a1);
  v10 = v9;

  BaseModifier.Child.item.getter(v7);
  v11 = *AGGraphGetValue();
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v12 = *AGGraphGetValue();
  v16 = xmmword_18CD633F0;
  v24 = xmmword_18CD633F0;
  v25 = v12;
  BaseModifier.Child.requestKey.getter(v26);
  BaseModifier.Child.authority.getter(v19);
  outlined init with copy of NavigationAuthority??(v19, v17);
  if (v18 == 2)
  {
    outlined destroy of NavigationAuthority??(v19);
    v20 = v16;
    v21 = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v17, &v20);
    outlined destroy of NavigationAuthority??(v19);
  }

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v14 = *WeakValue;
  }

  else
  {
    v14 = -1;
  }

  return BaseModifier.Presenter.init(transform:item:depth:selectionIdentifier:key:authority:navigationStateSeeds:)(v8, v10, v7, v11, v22, v26, &v20, v14, a2, v4, *(a1 + 3), a1[5]);
}

uint64_t BaseModifier.Presenter.init(transform:item:depth:selectionIdentifier:key:authority:navigationStateSeeds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v19 = type metadata accessor for BaseModifier.Presenter(0, &v28);
  v20 = v19[13];
  type metadata accessor for Optional();
  v21 = type metadata accessor for Binding();
  (*(*(v21 - 8) + 32))(&a9[v20], a3, v21);
  *&a9[v19[14]] = a4;
  v22 = &a9[v19[15]];
  v23 = a5[1];
  *v22 = *a5;
  *(v22 + 1) = v23;
  v24 = a5[3];
  *(v22 + 2) = a5[2];
  *(v22 + 3) = v24;
  v25 = &a9[v19[16]];
  v26 = a6[1];
  *v25 = *a6;
  *(v25 + 1) = v26;
  *(v25 + 2) = a6[2];
  result = outlined init with take of NavigationAuthority?(a7, &a9[v19[17]]);
  *&a9[v19[18]] = a8;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance BaseModifier<A, B>.Child@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for BaseModifier.Presenter(0, v6);
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t BaseModifier.Presenter.authorityIsPresenting.getter(int *a1)
{
  outlined init with copy of AnyAccessibilityValue?(v1 + a1[17], v36, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (*(&v36[0] + 1) == 1)
  {
    outlined destroy of NavigationAuthority?(v36);
  }

  else
  {
    outlined init with take of NavigationAuthority(v36, v38);
    v3 = v1 + a1[16];
    v4 = *(v3 + 32);
    if (v4 >> 1 != 0xFFFFFFFF)
    {
      v5 = *(v3 + 40);
      v6 = *(v3 + 16);
      v39[0] = *v3;
      v39[1] = v6;
      v40 = v4;
      v41 = v5;
      v7 = a1[15];
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        swift_beginAccess();
        v10 = v9[8];
        v33 = v9[7];
        v34 = v10;
        v35[0] = v9[9];
        *(v35 + 10) = *(v9 + 154);
        v11 = v9[4];
        v29 = v9[3];
        v30 = v11;
        v12 = v9[6];
        v31 = v9[5];
        v32 = v12;
        v13 = v9[2];
        v27 = v9[1];
        v28 = v13;
        outlined init with copy of AnyAccessibilityValue?(&v27, v25, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

        v36[6] = v33;
        v36[7] = v34;
        v37[0] = v35[0];
        *(v37 + 10) = *(v35 + 10);
        v36[2] = v29;
        v36[3] = v30;
        v36[4] = v31;
        v36[5] = v32;
        v36[0] = v27;
        v36[1] = v28;
        if (getEnumTag for AccessibilityActionCategory.Category(v36) != 1)
        {
          v22 = v33;
          v23 = v34;
          *v24 = v35[0];
          *&v24[10] = *(v35 + 10);
          v18 = v29;
          v19 = v30;
          v20 = v31;
          v21 = v32;
          v16 = v27;
          v17 = v28;
          v14 = NavigationState.isPresentingView(_:from:)((v1 + v7), v39);
          outlined destroy of NavigationAuthority(v38);
          v25[6] = v22;
          v25[7] = v23;
          v26[0] = *v24;
          *(v26 + 10) = *&v24[10];
          v25[2] = v18;
          v25[3] = v19;
          v25[4] = v20;
          v25[5] = v21;
          v25[0] = v16;
          v25[1] = v17;
          outlined destroy of NavigationState(v25);
          return v14 & 1;
        }
      }
    }

    outlined destroy of NavigationAuthority(v38);
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t BaseModifier.Presenter.request.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = type metadata accessor for Binding();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v49 - v8;
  v9 = *(a1 + 24);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v16 = &v49 - v15;
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  LOBYTE(v77[0]) = 17;
  v21 = *(a1 + 32);
  *&v22 = v5;
  v55 = v9;
  *(&v22 + 1) = v9;
  v61 = v22;
  v62 = v21;
  v53 = v21;
  v63 = v3;
  static Update.dispatchImmediately<A>(reason:_:)();
  v23 = BaseModifier.Presenter.authorityIsPresenting.getter(a1);
  v59 = v17;
  v24 = v17;
  v25 = v56;
  v26 = *(v24 + 16);
  v57 = v6;
  v26(v16, v20, v6);
  if ((*(v25 + 48))(v16, 1, v5) == 1)
  {
    if (v23)
    {
      v27 = *(a1 + 60);
      v28 = (v3 + *(a1 + 64));
      v30 = *v28;
      v29 = v28[1];
      v31 = v28[3];
      v58 = v28[2];
      v33 = v28[4];
      v32 = v28[5];
      outlined init with copy of NavigationLinkSelectionIdentifier(v3 + v27, v83);
      outlined init with copy of AnyAccessibilityValue?(v3 + *(a1 + 68), v82, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
      v77[0] = xmmword_18CD633F0;
      memset(&v77[1], 0, 144);
      v78 = 0x1FFFFFFFELL;
      v79 = 0;
      v81 = 0;
      v80 = 0;
      if (v33 >> 1 == 0xFFFFFFFF)
      {
        outlined destroy of NavigationLinkSelectionIdentifier(v83);
        (*(v59 + 8))(v20, v57);
        v31 = 0;
        v32 = 0;
        v75 = 0;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v33 = 0x1FFFFFFFELL;
        v70 = 0u;
        v71 = 0u;
      }

      else
      {
        outlined init with copy of NavigationLinkSelectionIdentifier(v83, &v64);
        LOBYTE(v70) = 19;
        v48 = Transaction.disablesAnimations.getter();
        outlined destroy of NavigationLinkSelectionIdentifier(v83);
        (*(v59 + 8))(v20, v57);
        *(&v70 + 1) = v30;
        *&v71 = v29;
        *(&v71 + 1) = v58;
        LOBYTE(v75) = v48 & 1;
      }

      v72 = v31;
      v73 = v33;
      v74 = v32;
      v76 = 0;
      _s7SwiftUI17NavigationRequestVSgWOdTm_0(&v64, &v77[1] + 8, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
      _s7SwiftUI17NavigationRequestVSgWOdTm_0(v82, v77, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
      return outlined init with take of UpdateViewDestinationRequest(v77, v60);
    }

    else
    {
      result = (*(v59 + 8))(v20, v57);
      v40 = v60;
      *(v60 + 128) = 0u;
      *(v40 + 144) = 0u;
      *(v40 + 96) = 0u;
      *(v40 + 112) = 0u;
      *(v40 + 64) = 0u;
      *(v40 + 80) = 0u;
      *(v40 + 32) = 0u;
      *(v40 + 48) = 0u;
      *v40 = 0u;
      *(v40 + 16) = 0u;
      *(v40 + 160) = 0x1FFFFFFFCLL;
      *(v40 + 168) = 0;
      *(v40 + 176) = 0;
      *(v40 + 184) = 0;
    }
  }

  else
  {
    v34 = v58;
    (*(v25 + 32))(v58, v16, v5);
    v35 = v54;
    (*v3)(v34);
    if (v23)
    {
      v36 = *(a1 + 60);
      v37 = (v3 + *(a1 + 64));
      v38 = v37[1];
      v64 = *v37;
      v65 = v38;
      v66 = v37[2];
      outlined init with copy of NavigationLinkSelectionIdentifier(v3 + v36, v77);
      outlined init with copy of AnyAccessibilityValue?(v3 + *(a1 + 68), v83, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
      UpdateViewDestinationRequest.init<A>(updateDestination:key:identifier:shouldTargetSourceColumn:navigationAuthority:)(v35, &v64, v77, 1, v83, v55, v60);
    }

    else
    {
      v41 = *(a1 + 52);
      v42 = v52;
      (*(v50 + 16))(v52, v3 + v41, v51);
      v43 = *(a1 + 60);
      v44 = (v3 + *(a1 + 64));
      v45 = v44[1];
      v64 = *v44;
      v65 = v45;
      v66 = v44[2];
      v46 = *(v3 + *(a1 + 56));
      outlined init with copy of NavigationLinkSelectionIdentifier(v3 + v43, v77);
      outlined init with copy of AnyAccessibilityValue?(v3 + *(a1 + 68), v83, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
      v47 = *(v3 + v41);

      UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)(v35, v42, &v64, v46, v77, v83, v47, v5, v60, v55, v53, *(&v53 + 1));
    }

    (*(v25 + 8))(v58, v5);
    return (*(v59 + 8))(v20, v57);
  }

  return result;
}

uint64_t closure #1 in BaseModifier.Presenter.request.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for BaseModifier.Presenter(0, v7);
  type metadata accessor for Optional();
  v5 = type metadata accessor for Binding();
  return MEMORY[0x18D00ACC0](v5);
}

uint64_t UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  v29[0] = xmmword_18CD633F0;
  memset(&v29[1], 0, 144);
  v30 = 0x1FFFFFFFELL;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (v19 >> 1 == 0xFFFFFFFF)
  {

    memset(v23, 0, sizeof(v23));
    v24 = 0;
    v25 = 0x1FFFFFFFELL;
    v27 = 0;
    v28 = 0;
    v26 = 0;
  }

  else
  {
    v22[0] = v17;
    v22[1] = v18;
    v22[2] = v19;
    closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)(v22, a1, a7, a4, a5, a2, a8, a10, v23, a11, a12);
  }

  _s7SwiftUI17NavigationRequestVSgWOdTm_0(v23, &v29[1] + 8, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
  _s7SwiftUI17NavigationRequestVSgWOdTm_0(a6, v29, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  outlined init with copy of UpdateViewDestinationRequest(v29, a9);
  outlined destroy of NavigationLinkSelectionIdentifier(a5);
  type metadata accessor for Optional();
  v20 = type metadata accessor for Binding();
  (*(*(v20 - 8) + 8))(a2, v20);
  (*(*(a10 - 8) + 8))(a1, a10);
  return outlined destroy of UpdateViewDestinationRequest(v29);
}

double BaseModifier.Presenter.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  outlined init with copy of NavigationLinkSelectionIdentifier(v3 + *(v7 + 60), v20);
  (*(v5 + 16))(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v8 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = *(a2 + 32);
  *(v9 + 1) = *(a2 + 16);
  *(v9 + 2) = v10;
  v11 = v20[1];
  *(v9 + 3) = v20[0];
  *(v9 + 4) = v11;
  v12 = v20[3];
  *(v9 + 5) = v20[2];
  *(v9 + 6) = v12;
  (*(v5 + 32))(&v9[v8], v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  swift_getWitnessTable(protocol conformance descriptor for BaseModifier<A, B>.Presenter, a2);
  v13 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v13);
  View.transformPreference<A>(_:_:)();

  v19 = v21;
  type metadata accessor for _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey>();
  v15 = type metadata accessor for ModifiedContent();
  updated = lazy protocol witness table accessor for type _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey> and conformance _PreferenceTransformModifier<A>();
  v18[0] = WitnessTable;
  v18[1] = updated;
  swift_getWitnessTable(MEMORY[0x1E697E858], v15, v18);
  static ViewBuilder.buildExpression<A>(_:)();

  v21 = v20[0];
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

uint64_t closure #1 in BaseModifier.Presenter.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of NavigationLinkSelectionIdentifier(a2, v14);
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v11 = type metadata accessor for BaseModifier.Presenter(0, v13);
  BaseModifier.Presenter.request.getter(v11, v13);
  return specialized Dictionary.subscript.setter(v13, v14);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance BaseModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for BaseModifier<A, B>, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

double closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v27 = a4;
  v28 = a5;
  v25 = a2;
  v26 = a3;
  v24 = a9;
  v23 = a10;
  type metadata accessor for Optional();
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v19 = a1[1];
  v29[0] = *a1;
  v29[1] = v19;
  v29[2] = a1[2];
  (*(v16 + 16))(&v23 - v17, a6, v15);
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = v23;
  *(v21 + 5) = a11;
  (*(v16 + 32))(&v21[v20], v18, v15);
  static NavigationRequest.programmaticallyPresentView<A>(_:from:transaction:depth:identifier:dismiss:)(v25, v29, v27, v28, partial apply for closure #1 in closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:), v21, a8, v24);

  return result;
}

uint64_t closure #1 in closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  (*(*(a2 - 8) + 56))(&v9 - v6, 1, 1, a2, v5);
  type metadata accessor for Binding();
  specialized Binding.wrappedValue.setter(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t type metadata completion function for BaseModifier.Presenter(uint64_t a1)
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double destroy for BaseModifier.Presenter(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (a1 + (v6 | 7) + 16) & ~(v6 | 7);

  v8 = v6 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!(*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    (*(v5 + 8))(v8 & ~v6, v4);
  }

  v10 = ((v6 + 16) & ~v6) + *(v5 + 64) + v7;
  if (!*(v5 + 84))
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  if (v11[6] != 1)
  {
  }

  v12 = *(((((v11 + 71) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  if (v12 - 1 < 0)
  {
    swift_weakDestroy();
  }

  return result;
}

void *initializeWithCopy for BaseModifier.Presenter(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (v8 | 7) + 16;
  v39 = a1;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v38 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v38;
  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = v11 + v8 + 8;
  v14 = v12 + v8 + 8;
  v15 = *(v6 + 48);

  if (v15(v14 & ~v8, 1, v5))
  {
    v16 = *(v7 + 84);
    v17 = *(v7 + 64);
    if (v16)
    {
      v18 = *(v7 + 64);
    }

    else
    {
      v18 = v17 + 1;
    }

    memcpy((v13 & ~v8), (v14 & ~v8), v18);
  }

  else
  {
    (*(v7 + 16))(v13 & ~v8, v14 & ~v8, v5);
    v20 = *(v7 + 56);
    v19 = v7 + 56;
    v20(v13 & ~v8, 0, 1, v5);
    v16 = *(v19 + 28);
    v17 = *(v19 + 8);
  }

  v21 = v17 + ((v8 + 16) & ~v8);
  if (!v16)
  {
    ++v21;
  }

  v22 = v10 + v21 + 7;
  v23 = ((v38 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 &= 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 24);
  if (v26)
  {
    *(v24 + 24) = v26;
    *(v24 + 32) = *(v25 + 32);
    (**(v26 - 8))(v24, v25);
  }

  else
  {
    v27 = *v25;
    v28 = *(v25 + 16);
    *(v24 + 32) = *(v25 + 32);
    *v24 = v27;
    *(v24 + 16) = v28;
  }

  if (*(v25 + 48) == 1)
  {
    *(v24 + 40) = *(v25 + 40);
  }

  else
  {
    *(v24 + 40) = *(v25 + 40);
    *(v24 + 44) = *(v25 + 44);
    *(v24 + 48) = *(v25 + 48);
  }

  *(v24 + 56) = *(v25 + 56);
  v29 = ((v24 + 71) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v25 + 71) & 0xFFFFFFFFFFFFFFF8);
  v31 = *v30;
  v32 = v30[2];
  v29[1] = v30[1];
  v29[2] = v32;
  *v29 = v31;
  v33 = (v29 + 55) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v34 + 8);
  if (v35 >= 0xFFFFFFFF)
  {
    LODWORD(v35) = -1;
  }

  if (v35 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v33 + 8) = *(v34 + 8);
    *(v33 + 16) = *(v34 + 16);
  }

  else
  {
    v36 = *v34;
    *(v33 + 16) = *(v34 + 16);
    *v33 = v36;
  }

  *((v33 + 27) & 0xFFFFFFFFFFFFFFF8) = *((v34 + 27) & 0xFFFFFFFFFFFFFFF8);
  return v39;
}

void *assignWithCopy for BaseModifier.Presenter(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + 16;
  v48 = a1;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((v4 + v10) & ~(v9 | 7));
  *v11 = *v12;

  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);

  v14 = v13 + v9 + 8;
  v15 = v9 + 8 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = *(v8 + 48);
  LODWORD(v4) = v16(v14 & ~v9, 1, v7);
  v17 = v16(v15 & ~v9, 1, v7);
  if (v4)
  {
    if (!v17)
    {
      (*(v8 + 16))(v14 & ~v9, v15 & ~v9, v7);
      (*(v8 + 56))(v14 & ~v9, 0, 1, v7);
      goto LABEL_12;
    }

    v18 = *(v8 + 84);
    v19 = *(v8 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v8 + 24))(v14 & ~v9, v15 & ~v9, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v14 & ~v9, v7);
    v18 = *(v8 + 84);
    v19 = *(v8 + 64);
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  memcpy((v14 & ~v9), (v15 & ~v9), v20);
LABEL_12:
  v21 = *(v8 + 64) + ((v9 + 16) & ~v9);
  if (!*(v8 + 84))
  {
    ++v21;
  }

  v22 = ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = v22 + 15;
  v25 = v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 24);
  if (*((v24 & 0xFFFFFFFFFFFFFFF8) + 24))
  {
    v28 = (v24 & 0xFFFFFFFFFFFFFFF8);
    if (v27)
    {
      __swift_assign_boxed_opaque_existential_1(v28, v26);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v28);
      v29 = *(v26 + 32);
      v30 = *(v26 + 16);
      *v25 = *v26;
      *(v25 + 16) = v30;
      *(v25 + 32) = v29;
    }
  }

  else if (v27)
  {
    *(v25 + 24) = v27;
    *(v25 + 32) = *(v26 + 32);
    (**(v27 - 8))(v25, v26);
  }

  else
  {
    v31 = *v26;
    v32 = *(v26 + 16);
    *(v25 + 32) = *(v26 + 32);
    *v25 = v31;
    *(v25 + 16) = v32;
  }

  v33 = *(v26 + 48);
  if (*(v25 + 48) == 1)
  {
    if (v33 != 1)
    {
      *(v25 + 40) = *(v26 + 40);
      *(v25 + 44) = *(v26 + 44);
      *(v25 + 48) = *(v26 + 48);

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v33 == 1)
  {
    outlined destroy of _ViewList_ID.Canonical(v25 + 40);
LABEL_26:
    *(v25 + 40) = *(v26 + 40);
    goto LABEL_28;
  }

  *(v25 + 40) = *(v26 + 40);
  *(v25 + 44) = *(v26 + 44);
  *(v25 + 48) = *(v26 + 48);

LABEL_28:
  *(v25 + 56) = *(v26 + 56);
  v34 = ((v25 + 71) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v26 + 71) & 0xFFFFFFFFFFFFFFF8);
  v36 = *v35;
  v37 = v35[2];
  v34[1] = v35[1];
  v34[2] = v37;
  *v34 = v36;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v35 + 55) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v38 + 8);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  v41 = v40 - 1;
  v42 = *(v39 + 8);
  if (v42 >= 0xFFFFFFFF)
  {
    LODWORD(v42) = -1;
  }

  v43 = v42 - 1;
  if (v41 < 0)
  {
    if (v43 < 0)
    {
      swift_weakCopyAssign();
      *(v38 + 8) = *(v39 + 8);

      *(v38 + 16) = *(v39 + 16);

      goto LABEL_38;
    }

    swift_weakDestroy();

    goto LABEL_37;
  }

  if ((v43 & 0x80000000) == 0)
  {
LABEL_37:
    v44 = *v39;
    *(v38 + 16) = *(v39 + 16);
    *v38 = v44;
    goto LABEL_38;
  }

  swift_weakCopyInit();
  *(v38 + 8) = *(v39 + 8);
  *(v38 + 16) = *(v39 + 16);

LABEL_38:
  v45 = ((v38 + 27) & 0xFFFFFFFFFFFFFFF8);
  v46 = ((v39 + 27) & 0xFFFFFFFFFFFFFFF8);
  *v45 = *v46;
  v45[1] = v46[1];
  return v48;
}

_OWORD *initializeWithTake for BaseModifier.Presenter(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v7 | 7) + 16;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = v11 + v7 + 8;
  v14 = v12 + v7 + 8;
  if ((*(v5 + 48))(v14 & ~v7, 1, v4))
  {
    v15 = *(v6 + 84);
    v16 = *(v6 + 64);
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy((v13 & ~v7), (v14 & ~v7), v17);
  }

  else
  {
    (*(v6 + 32))(v13 & ~v7, v14 & ~v7, v4);
    v19 = *(v6 + 56);
    v18 = v6 + 56;
    v19(v13 & ~v7, 0, 1, v4);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  v20 = v16 + ((v7 + 16) & ~v7);
  if (!v15)
  {
    ++v20;
  }

  v21 = ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[3];
  v23[2] = v24[2];
  v23[3] = v27;
  *v23 = v25;
  v23[1] = v26;
  v28 = ((v23 + 71) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v24 + 71) & 0xFFFFFFFFFFFFFFF8);
  v30 = *v29;
  v31 = v29[2];
  v28[1] = v29[1];
  v28[2] = v31;
  *v28 = v30;
  v32 = (v28 + 55) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v29 + 55) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v33 + 8);
  if (*(v33 + 8) >= 0xFFFFFFFFuLL)
  {
    v34 = -1;
  }

  if (v34 - 1 < 0)
  {
    v32 = swift_weakTakeInit();
    *(v32 + 8) = *(v33 + 8);
  }

  else
  {
    v35 = *v33;
    *(v32 + 16) = *(v33 + 16);
    *v32 = v35;
  }

  *((v32 + 27) & 0xFFFFFFFFFFFFFFF8) = *((v33 + 27) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_OWORD *assignWithTake for BaseModifier.Presenter(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 16;
  v43 = a1;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;

  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v14 = v12 + v8 + 8;
  v15 = v13 + v8 + 8;
  v16 = *(v7 + 48);
  LODWORD(v13) = v16(v14 & ~v8, 1, v6);
  v17 = v16(v15 & ~v8, 1, v6);
  if (v13)
  {
    if (!v17)
    {
      (*(v7 + 32))(v14 & ~v8, v15 & ~v8, v6);
      (*(v7 + 56))(v14 & ~v8, 0, 1, v6);
      goto LABEL_12;
    }

    v18 = *(v7 + 84);
    v19 = *(v7 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v7 + 40))(v14 & ~v8, v15 & ~v8, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v14 & ~v8, v6);
    v18 = *(v7 + 84);
    v19 = *(v7 + 64);
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  memcpy((v14 & ~v8), (v15 & ~v8), v20);
LABEL_12:
  v21 = *(v7 + 64) + ((v8 + 16) & ~v8);
  if (!*(v7 + 84))
  {
    ++v21;
  }

  v22 = v10 + v21 + 7;
  v23 = ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 &= 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  v24 = v22 + 15;
  v25 = v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*((v24 & 0xFFFFFFFFFFFFFFF8) + 24))
  {
    if (*(v26 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1((v24 & 0xFFFFFFFFFFFFFFF8));
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v24 & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v27 = *v26;
  v28 = *(v26 + 16);
  *(v25 + 32) = *(v26 + 32);
  *v25 = v27;
  *(v25 + 16) = v28;
  if (*(v25 + 48) == 1)
  {
    goto LABEL_21;
  }

  if (*(v26 + 48) == 1)
  {
    outlined destroy of _ViewList_ID.Canonical(v25 + 40);
LABEL_21:
    *(v25 + 40) = *(v26 + 40);
    goto LABEL_23;
  }

  *(v25 + 40) = *(v26 + 40);
  *(v25 + 44) = *(v26 + 44);
  *(v25 + 48) = *(v26 + 48);

LABEL_23:
  *(v25 + 56) = *(v26 + 56);
  v29 = ((v25 + 71) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v26 + 71) & 0xFFFFFFFFFFFFFFF8);
  v31 = *v30;
  v32 = v30[2];
  v29[1] = v30[1];
  v29[2] = v32;
  *v29 = v31;
  v33 = (v29 + 55) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v33 + 8);
  if (*(v33 + 8) >= 0xFFFFFFFFuLL)
  {
    v35 = -1;
  }

  v36 = v35 - 1;
  v37 = *(v34 + 8);
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  v38 = v37 - 1;
  if (v36 < 0)
  {
    if (v38 < 0)
    {
      swift_weakTakeAssign();
      *(v33 + 8) = *(v34 + 8);

      *(v33 + 16) = *(v34 + 16);

      goto LABEL_33;
    }

    swift_weakDestroy();

    goto LABEL_32;
  }

  if ((v38 & 0x80000000) == 0)
  {
LABEL_32:
    v39 = *v34;
    *(v33 + 16) = *(v34 + 16);
    *v33 = v39;
    goto LABEL_33;
  }

  swift_weakTakeInit();
  *(v33 + 8) = *(v34 + 8);
LABEL_33:
  v40 = ((v33 + 27) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v34 + 27) & 0xFFFFFFFFFFFFFFF8);
  *v40 = *v41;
  v40[1] = v41[1];
  return v43;
}

uint64_t getEnumTagSinglePayload for BaseModifier.Presenter(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = 5;
  }

  else
  {
    v10 = 6;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  if (v8 >= a2)
  {
    goto LABEL_36;
  }

  v12 = ((((((((((v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-17 - v9) | v11))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_36:
    if (v8 == 0x7FFFFFFF)
    {
      v21 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v22 = (*(v4 + 48))((v9 + ((((a1 + v11 + 16) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for BaseModifier.Presenter(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v6 + 80);
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v13;
  }

  v14 = ((v11 + 16) & ~v11) + v13;
  v15 = ((((((((((v14 + ((v11 + 16) & ~(v11 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 < a3)
  {
    v16 = a3 - v10;
    if (((((((((((v14 + ((v11 + 16) & ~(v11 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v5 = v18;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v10)
  {
    if (((((((((((v14 + ((v11 + 16) & ~(v11 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a2 - v10;
    }

    else
    {
      v19 = 1;
    }

    if (((((((((((v14 + ((v11 + 16) & ~(v11 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v20 = ~v10 + a2;
      v21 = a1;
      bzero(a1, v15);
      a1 = v21;
      *v21 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v15) = v19;
      }

      else
      {
        *(a1 + v15) = v19;
      }
    }

    else if (v5)
    {
      *(a1 + v15) = v19;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v15) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v5)
  {
    goto LABEL_41;
  }

  *(a1 + v15) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      a1[1] = 0;
    }

    else
    {
      *a1 = a2 - 1;
    }
  }

  else
  {
    v22 = (a1 + v12 + 16) & ~v12;
    if (v9 >= a2)
    {
      v26 = *(v6 + 56);
      v27 = a2 + 1;

      v26((v11 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11, v27);
    }

    else
    {
      if (v14 <= 3)
      {
        v23 = ~(-1 << (8 * v14));
      }

      else
      {
        v23 = -1;
      }

      if (v14)
      {
        v24 = v23 & (~v9 + a2);
        if (v14 <= 3)
        {
          v25 = v14;
        }

        else
        {
          v25 = 4;
        }

        bzero(((a1 + v12 + 16) & ~v12), v14);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            *(v22 + 2) = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }
}

uint64_t specialized BaseModifier.Child.transform.getter(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 16);
  v3[1] = v1;
  type metadata accessor for BaseModifier.Transform(0, v3);
  return *AGGraphGetValue();
}

uint64_t partial apply for closure #1 in BaseModifier.Presenter.body(content:)(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for BaseModifier.Presenter(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 112) & ~*(v7 + 80));

  return closure #1 in BaseModifier.Presenter.body(content:)(a1, (v1 + 6), v8, v3, v4, v5, v6);
}

void type metadata accessor for _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey>();
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<UpdateViewDestinationRequest.UpdateViewDestinationRequestKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for Optional();
  v2 = *(type metadata accessor for Binding() - 8);
  v3 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return closure #1 in closure #1 in UpdateViewDestinationRequest.init<A, B>(presentDestination:item:key:depth:selectionIdentifier:navigationAuthority:transaction:)(v3, v1);
}

uint64_t protocol witness for static Gesture._makeGesture(gesture:inputs:) in conformance HitTestingLayoutGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture();

  return MEMORY[0x1EEDDE2E8](a1, a2, a3, v6);
}

double closure #1 in View.hitTestingLayoutGesture()@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

void type metadata accessor for LayoutGestureModifier<HitTestingLayoutGesture>()
{
  if (!lazy cache variable for type metadata for LayoutGestureModifier<HitTestingLayoutGesture>)
  {
    v0 = type metadata accessor for LayoutGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutGestureModifier<HitTestingLayoutGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LayoutGestureModifier<HitTestingLayoutGesture> and conformance LayoutGestureModifier<A>()
{
  result = lazy protocol witness table cache variable for type LayoutGestureModifier<HitTestingLayoutGesture> and conformance LayoutGestureModifier<A>;
  if (!lazy protocol witness table cache variable for type LayoutGestureModifier<HitTestingLayoutGesture> and conformance LayoutGestureModifier<A>)
  {
    type metadata accessor for LayoutGestureModifier<HitTestingLayoutGesture>();
    result = swift_getWitnessTable(MEMORY[0x1E697FC68], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutGestureModifier<HitTestingLayoutGesture> and conformance LayoutGestureModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture()
{
  result = lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture;
  if (!lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HitTestingLayoutGesture, &unk_1EFFC63C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture;
  if (!lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HitTestingLayoutGesture, &unk_1EFFC63C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture;
  if (!lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HitTestingLayoutGesture, &unk_1EFFC63C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HitTestingLayoutGesture and conformance HitTestingLayoutGesture);
  }

  return result;
}

void specialized HitTestingLayoutGesture.updateEventBindings(_:proxy:)(void *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a1;
  v4 = v3 + 64;
  v51 = *a2;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v49 = v3;

  v9 = 0;
  v52 = v4;
  v47 = v2;
LABEL_6:
  while (v7)
  {
    v10 = v9;
LABEL_16:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(v49 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    outlined init with copy of _Benchmark(*(v49 + 56) + 40 * v14, &v68);
    *&v82 = v16;
    *(&v82 + 1) = v17;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v68, v83);
LABEL_17:
    v101 = v82;
    v102[0] = *v83;
    v102[1] = *&v83[16];
    v103 = *&v83[32];
    v18 = v82;
    if (!v82)
    {

      return;
    }

    v19 = *(&v101 + 1);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v102, v100);
    v20 = *v2;
    if (!*(*v2 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19), (v22 & 1) == 0))
    {
      v82 = 0u;
      memset(v83, 0, 24);
      goto LABEL_5;
    }

    v48 = v19;
    outlined init with copy of _Benchmark(*(v20 + 56) + 40 * v21, &v82);
    v23 = *&v83[8];
    if (*&v83[8])
    {
      v24 = *&v83[16];
      __swift_project_boxed_opaque_existential_1(&v82, *&v83[8]);
      (*(v24 + 24))(&v68, v23, v24);
      v25 = v68;
      v26 = MEMORY[0x1E6981E78];
      outlined destroy of LocationBasedSensoryFeedback?(&v82, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
      v50 = v25;
      if (v25)
      {
        outlined init with copy of _Benchmark(v100, v98);
        type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType, v26);
        v27 = MEMORY[0x1E697FA00];
        type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for HitTestableEventType, MEMORY[0x1E697FA00]);
        if (swift_dynamicCast())
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v96, v99);
          outlined init with copy of _Benchmark(v99, &v68);
          HitTestableEvent.init(_:)();
          __swift_destroy_boxed_opaque_existential_1(v99);
          v94[0] = v82;
          *(v95 + 9) = *&v83[25];
          v94[1] = *v83;
          v95[0] = *&v83[16];
          *&v83[25] = *(v95 + 9);
          HitTestableEvent.hitTestLocation.getter();
          v29 = v28;
          v31 = v30;
          *&v82 = v51;
          v32 = LayoutGestureChildProxy.endIndex.getter();
          if (v32 < 0)
          {
            goto LABEL_49;
          }

          v33 = v32;
          if (!v32)
          {
LABEL_28:
            __swift_destroy_boxed_opaque_existential_1(v100);

            goto LABEL_29;
          }

          v34 = 0;
          while (1)
          {
            *&v54 = v51;
            LayoutGestureChildProxy.subscript.getter();
            v90 = v78;
            v91 = v79;
            v92 = v80;
            v93 = v81;
            v86 = v74;
            v87 = v75;
            v88 = v76;
            v89 = v77;
            *&v83[16] = v70;
            *&v83[32] = v71;
            v84 = v72;
            v85 = v73;
            v82 = v68;
            *v83 = v69;
            *&v54 = v50;
            if (LayoutGestureChildProxy.Child.binds(_:)())
            {
              break;
            }

            ++v34;
            outlined destroy of LayoutGestureChildProxy.Child(&v82);
            if (v33 == v34)
            {
              goto LABEL_28;
            }
          }

          v78 = v90;
          v79 = v91;
          v80 = v92;
          v81 = v93;
          v74 = v86;
          v75 = v87;
          v76 = v88;
          v77 = v89;
          v70 = *&v83[16];
          v71 = *&v83[32];
          v72 = v84;
          v73 = v85;
          v68 = v82;
          v69 = *v83;
          if (LayoutGestureChildProxy.Child.containsGlobalLocation(_:)(__PAIR128__(v31, v29)))
          {
            __swift_destroy_boxed_opaque_existential_1(v100);

            outlined destroy of LayoutGestureChildProxy.Child(&v82);
LABEL_29:
            outlined destroy of HitTestableEvent(v94);
            v2 = v47;
            v4 = v52;
          }

          else
          {
            *&v68 = v51;
            v35 = LayoutGestureChildProxy.endIndex.getter();
            if (v35 < 0)
            {
              goto LABEL_50;
            }

            v36 = v35;
            v46 = v8;
            v37 = v51;
            if (v35)
            {
              v38 = v34 + 1;
              v39 = v35;
              while (v36 >= v39)
              {
                v40 = v39--;
                if (v38 != v40)
                {
                  v53[0] = v37;
                  LayoutGestureChildProxy.subscript.getter();
                  v41 = LayoutGestureChildProxy.Child.containsGlobalLocation(_:)(__PAIR128__(v31, v29));
                  v78 = v64;
                  v79 = v65;
                  v80 = v66;
                  v81 = v67;
                  v74 = v60;
                  v75 = v61;
                  v76 = v62;
                  v77 = v63;
                  v70 = v56;
                  v71 = v57;
                  v72 = v58;
                  v73 = v59;
                  v68 = v54;
                  v69 = v55;
                  outlined destroy of LayoutGestureChildProxy.Child(&v68);
                  if (v41)
                  {
                    v53[5] = v37;
                    v53[0] = v18;
                    v53[1] = v48;
                    LayoutGestureChildProxy.bindChild(index:event:id:)();
                    v42 = v54;
                    if (v54 != 1)
                    {
                      v43 = *(&v54 + 1);
                      outlined init with copy of _Benchmark(v100, &v54);

                      v45 = *(&v55 + 1);
                      v44 = v56;
                      __swift_mutable_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
                      v53[0] = v43;
                      (*(v44 + 32))(v53, v45, v44);
                      outlined init with copy of _Benchmark(&v54, v53);
                      v2 = v47;
                      specialized Dictionary.subscript.setter(v53, v18, v48);

                      outlined destroy of LayoutGestureChildProxy.Child(&v82);
                      outlined destroy of HitTestableEvent(v94);
                      outlined consume of EnvironmentValues?(v42, v43);
                      __swift_destroy_boxed_opaque_existential_1(v100);
                      __swift_destroy_boxed_opaque_existential_1(&v54);
                      v4 = v52;
                      v8 = v46;
                      goto LABEL_6;
                    }

                    v37 = v51;
                  }
                }

                if (!v39)
                {
                  goto LABEL_45;
                }
              }

              goto LABEL_48;
            }

LABEL_45:

            outlined destroy of LayoutGestureChildProxy.Child(&v82);
            outlined destroy of HitTestableEvent(v94);
            __swift_destroy_boxed_opaque_existential_1(v100);
            v8 = v46;
            v2 = v47;
            v4 = v52;
          }
        }

        else
        {

          v97 = 0;
          memset(v96, 0, sizeof(v96));
          outlined destroy of LocationBasedSensoryFeedback?(v96, &lazy cache variable for type metadata for HitTestableEventType?, &lazy cache variable for type metadata for HitTestableEventType, v27);
          __swift_destroy_boxed_opaque_existential_1(v100);
          v4 = v52;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v100);
        v4 = v52;
      }
    }

    else
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v100);
      outlined destroy of LocationBasedSensoryFeedback?(&v82, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
      v4 = v52;
    }
  }

  if (v8 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      memset(v83, 0, 40);
      v9 = v12;
      v82 = 0u;
      goto LABEL_17;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}