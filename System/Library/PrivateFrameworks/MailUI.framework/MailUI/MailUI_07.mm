unint64_t sub_214B9FBC0()
{
  v2 = qword_280C7CE18;
  if (!qword_280C7CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36310, &qword_214CF1388);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B9FC48()
{
  v2 = qword_27CA36318;
  if (!qword_27CA36318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36310, &qword_214CF1388);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B9FCD0()
{
  v2 = qword_27CA36328;
  if (!qword_27CA36328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362C8, &qword_214CF1340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B9FD84()
{
  v2 = qword_27CA36338;
  if (!qword_27CA36338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362F0, &qword_214CF1360);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B9FE0C()
{
  v2 = qword_27CA36340;
  if (!qword_27CA36340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362F0, &qword_214CF1360);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B9FF18()
{
  v2 = qword_280C7CF28;
  if (!qword_280C7CF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362F0, &qword_214CF1360);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF28);
    return WitnessTable;
  }

  return v2;
}

void *sub_214B9FFA0(void *a1)
{
  v50 = type metadata accessor for GroupedSearchItems.InternalSection.Element(0);
  if (!(*(*(v50 - 8) + 48))(a1, 1))
  {
    MEMORY[0x277D82BD8](*a1);
    v47 = a1 + *(v50 + 20);
    type metadata accessor for SearchItem(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:

          v44 = &v47[*(type metadata accessor for SearchItem.Contact(0) + 24)];
          v2 = sub_214CCD2B4();
          (*(*(v2 - 8) + 8))(v44);

          break;
        case 2:
          v3 = sub_214CCD2B4();
          (*(*(v3 - 8) + 8))(v47);
          v43 = type metadata accessor for SearchItem.Photo(0);

          MEMORY[0x277D82BD8](*&v47[*(v43 + 28)]);

          break;
        case 3:
          v4 = sub_214CCD2B4();
          (*(*(v4 - 8) + 8))(v47);
          type metadata accessor for SearchItem.Location(0);

          break;
        case 4:
          v5 = sub_214CCD2B4();
          (*(*(v5 - 8) + 8))(v47);
          v42 = type metadata accessor for SearchItem.Document(0);

          v41 = &v47[*(v42 + 32)];
          v6 = sub_214CCD154();
          (*(*(v6 - 8) + 8))(v41);

          break;
        case 5:
          v7 = sub_214CCD2B4();
          (*(*(v7 - 8) + 8))(v47);
          v40 = type metadata accessor for SearchItem.LegacySuggested(0);
          MEMORY[0x277D82BD8](*&v47[*(v40 + 20)]);

          MEMORY[0x277D82BD8](*&v47[*(v40 + 32)]);
          break;
        case 6:

          v39 = type metadata accessor for SearchItem.Generic(0);
          v38 = &v47[v39[6]];
          v8 = sub_214CCD2B4();
          (*(*(v8 - 8) + 8))(v38);
          MEMORY[0x277D82BD8](*&v47[v39[7]]);
          MEMORY[0x277D82BD8](*&v47[v39[8]]);
          MEMORY[0x277D82BD8](*&v47[v39[9]]);

          break;
        case 7:

          v37 = type metadata accessor for SearchItem.Generic(0);
          v36 = &v47[v37[6]];
          v9 = sub_214CCD2B4();
          (*(*(v9 - 8) + 8))(v36);
          MEMORY[0x277D82BD8](*&v47[v37[7]]);
          MEMORY[0x277D82BD8](*&v47[v37[8]]);
          MEMORY[0x277D82BD8](*&v47[v37[9]]);

          break;
        case 8:
          v10 = sub_214CCD2B4();
          (*(*(v10 - 8) + 8))(v47);
          v35 = type metadata accessor for SearchItem.TopHit(0);
          MEMORY[0x277D82BD8](*&v47[*(v35 + 20)]);

          break;
        case 9:
          v11 = sub_214CCD2B4();
          (*(*(v11 - 8) + 8))(v47);
          v30 = type metadata accessor for SearchItem.InstantAnswer(0);

          v26 = &v47[v30[9]];
          v28 = sub_214CCCEB4();
          v27 = *(v28 - 8);
          v29 = *(v27 + 8);
          v29(v26);
          (v29)(&v47[v30[10]], v28);

          v31 = &v47[v30[12]];
          v32 = sub_214CCD154();
          v33 = *(v32 - 8);
          v34 = *(v33 + 48);
          if (!(v34)(v31, 1))
          {
            (*(v33 + 8))(v31, v32);
          }

          v22 = &v47[v30[13]];
          v23 = sub_214CCD2F4();
          v24 = *(v23 - 8);
          v25 = *(v24 + 48);
          if (!(v25)(v22, 1))
          {
            (*(v24 + 8))(v22, v23);
          }

          v21 = &v47[v30[14]];
          if (!v25())
          {
            (*(v24 + 8))(v21, v23);
          }

          v20 = &v47[v30[15]];
          if (!v34())
          {
            (*(v33 + 8))(v20, v32);
          }

          (v29)(&v47[v30[20]], v28);
          v19 = &v47[v30[21]];
          if (!(*(v27 + 48))())
          {
            (v29)(v19, v28);
          }

          v18 = &v47[v30[22]];
          if (!v25())
          {
            (*(v24 + 8))(v18, v23);
          }

          break;
        case 10:

          v17 = type metadata accessor for SearchItem.Link(0);
          v15 = &v47[*(v17 + 20)];
          v12 = sub_214CCD2B4();
          (*(*(v12 - 8) + 8))(v15);
          v16 = &v47[*(v17 + 24)];
          v13 = sub_214CCD154();
          (*(*(v13 - 8) + 8))(v16);

          break;
      }
    }

    else
    {

      v46 = type metadata accessor for SearchItem.Generic(0);
      v45 = &v47[v46[6]];
      v1 = sub_214CCD2B4();
      (*(*(v1 - 8) + 8))(v45);
      MEMORY[0x277D82BD8](*&v47[v46[7]]);
      MEMORY[0x277D82BD8](*&v47[v46[8]]);
      MEMORY[0x277D82BD8](*&v47[v46[9]]);
    }
  }

  return a1;
}

unint64_t sub_214BA0E0C()
{
  v2 = qword_280C7CAE8;
  if (!qword_280C7CAE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CAE8);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_214BA0E9C(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_214B9C35C(a2);
    type metadata accessor for SearchItem(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:
          *a2 = *a1;
          a2[2] = a1[2];
          v66 = type metadata accessor for SearchItem.Contact(0);
          v65 = a2 + *(v66 + 24);
          v64 = a1 + *(v66 + 24);
          v3 = sub_214CCD2B4();
          (*(*(v3 - 8) + 32))(v65, v64);
          *(a2 + *(v66 + 28)) = *(a1 + *(v66 + 28));
          swift_storeEnumTagMultiPayload();
          break;
        case 2:
          v4 = sub_214CCD2B4();
          (*(*(v4 - 8) + 32))(a2, a1);
          v63 = type metadata accessor for SearchItem.Photo(0);
          *(a2 + v63[5]) = *(a1 + v63[5]);
          *(a2 + v63[6]) = *(a1 + v63[6]);
          *(a2 + v63[7]) = *(a1 + v63[7]);
          *(a2 + v63[8]) = *(a1 + v63[8]);
          swift_storeEnumTagMultiPayload();
          break;
        case 3:
          v5 = sub_214CCD2B4();
          (*(*(v5 - 8) + 32))(a2, a1);
          v6 = type metadata accessor for SearchItem.Location(0);
          *(a2 + v6[5]) = *(a1 + v6[5]);
          *(a2 + v6[6]) = *(a1 + v6[6]);
          *(a2 + v6[7]) = *(a1 + v6[7]);
          swift_storeEnumTagMultiPayload();
          break;
        case 4:
          v7 = sub_214CCD2B4();
          (*(*(v7 - 8) + 32))(a2, a1);
          v62 = type metadata accessor for SearchItem.Document(0);
          *(a2 + v62[5]) = *(a1 + v62[5]);
          *(a2 + v62[6]) = *(a1 + v62[6]);
          *(a2 + v62[7]) = *(a1 + v62[7]);
          v61 = a2 + v62[8];
          v60 = a1 + v62[8];
          v8 = sub_214CCD154();
          (*(*(v8 - 8) + 32))(v61, v60);
          *(a2 + v62[9]) = *(a1 + v62[9]);
          swift_storeEnumTagMultiPayload();
          break;
        case 5:
          v9 = sub_214CCD2B4();
          (*(*(v9 - 8) + 32))(a2, a1);
          v59 = type metadata accessor for SearchItem.LegacySuggested(0);
          *(a2 + v59[5]) = *(a1 + v59[5]);
          *(a2 + v59[6]) = *(a1 + v59[6]);
          *(a2 + v59[7]) = *(a1 + v59[7]);
          *(a2 + v59[8]) = *(a1 + v59[8]);
          *(a2 + v59[9]) = *(a1 + v59[9]);
          swift_storeEnumTagMultiPayload();
          break;
        case 6:
          *a2 = *a1;
          a2[2] = a1[2];
          v58 = type metadata accessor for SearchItem.Generic(0);
          v57 = a2 + v58[6];
          v56 = a1 + v58[6];
          v10 = sub_214CCD2B4();
          (*(*(v10 - 8) + 32))(v57, v56);
          *(a2 + v58[7]) = *(a1 + v58[7]);
          *(a2 + v58[8]) = *(a1 + v58[8]);
          *(a2 + v58[9]) = *(a1 + v58[9]);
          *(a2 + v58[10]) = *(a1 + v58[10]);
          *(a2 + v58[11]) = *(a1 + v58[11]);
          *(a2 + v58[12]) = *(a1 + v58[12]);
          swift_storeEnumTagMultiPayload();
          break;
        case 7:
          *a2 = *a1;
          a2[2] = a1[2];
          v55 = type metadata accessor for SearchItem.Generic(0);
          v54 = a2 + v55[6];
          v53 = a1 + v55[6];
          v11 = sub_214CCD2B4();
          (*(*(v11 - 8) + 32))(v54, v53);
          *(a2 + v55[7]) = *(a1 + v55[7]);
          *(a2 + v55[8]) = *(a1 + v55[8]);
          *(a2 + v55[9]) = *(a1 + v55[9]);
          *(a2 + v55[10]) = *(a1 + v55[10]);
          *(a2 + v55[11]) = *(a1 + v55[11]);
          *(a2 + v55[12]) = *(a1 + v55[12]);
          swift_storeEnumTagMultiPayload();
          break;
        case 8:
          v12 = sub_214CCD2B4();
          (*(*(v12 - 8) + 32))(a2, a1);
          v13 = type metadata accessor for SearchItem.TopHit(0);
          *(a2 + *(v13 + 20)) = *(a1 + *(v13 + 20));
          *(a2 + *(v13 + 24)) = *(a1 + *(v13 + 24));
          swift_storeEnumTagMultiPayload();
          break;
        case 9:
          v14 = sub_214CCD2B4();
          (*(*(v14 - 8) + 32))(a2, a1);
          v47 = type metadata accessor for SearchItem.InstantAnswer(0);
          *(a2 + v47[5]) = *(a1 + v47[5]);
          *(a2 + v47[6]) = *(a1 + v47[6]);
          *(a2 + v47[7]) = *(a1 + v47[7]);
          *(a2 + v47[8]) = *(a1 + v47[8]);
          v43 = a2 + v47[9];
          v42 = a1 + v47[9];
          v45 = sub_214CCCEB4();
          v44 = *(v45 - 8);
          v46 = *(v44 + 32);
          v46(v43, v42);
          (v46)(a2 + v47[10], a1 + v47[10], v45);
          *(a2 + v47[11]) = *(a1 + v47[11]);
          __dst = a2 + v47[12];
          __src = a1 + v47[12];
          v50 = sub_214CCD154();
          v51 = *(v50 - 8);
          v52 = *(v51 + 48);
          if ((v52)(__src, 1))
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
            memcpy(__dst, __src, *(*(v15 - 8) + 64));
          }

          else
          {
            (*(v51 + 32))(__dst, __src, v50);
            (*(v51 + 56))(__dst, 0, 1, v50);
          }

          v37 = a2 + v47[13];
          v38 = a1 + v47[13];
          v39 = sub_214CCD2F4();
          v40 = *(v39 - 8);
          v41 = *(v40 + 48);
          if ((v41)(v38, 1))
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
            memcpy(v37, v38, *(*(v16 - 8) + 64));
          }

          else
          {
            (*(v40 + 32))(v37, v38, v39);
            (*(v40 + 56))(v37, 0, 1, v39);
          }

          v35 = a2 + v47[14];
          v36 = a1 + v47[14];
          if (v41())
          {
            v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
            memcpy(v35, v36, *(*(v17 - 8) + 64));
          }

          else
          {
            (*(v40 + 32))(v35, v36, v39);
            (*(v40 + 56))(v35, 0, 1, v39);
          }

          v33 = a2 + v47[15];
          v34 = a1 + v47[15];
          if (v52())
          {
            v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
            memcpy(v33, v34, *(*(v18 - 8) + 64));
          }

          else
          {
            (*(v51 + 32))(v33, v34, v50);
            (*(v51 + 56))(v33, 0, 1, v50);
          }

          *(a2 + v47[16]) = *(a1 + v47[16]);
          *(a2 + v47[17]) = *(a1 + v47[17]);
          *(a2 + v47[18]) = *(a1 + v47[18]);
          *(a2 + v47[19]) = *(a1 + v47[19]);
          (v46)(a2 + v47[20], a1 + v47[20], v45);
          v31 = a2 + v47[21];
          v32 = a1 + v47[21];
          if ((*(v44 + 48))())
          {
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
            memcpy(v31, v32, *(*(v19 - 8) + 64));
          }

          else
          {
            (v46)(v31, v32, v45);
            (*(v44 + 56))(v31, 0, 1, v45);
          }

          v29 = a2 + v47[22];
          v30 = a1 + v47[22];
          if (v41())
          {
            v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
            memcpy(v29, v30, *(*(v20 - 8) + 64));
          }

          else
          {
            (*(v40 + 32))(v29, v30, v39);
            (*(v40 + 56))(v29, 0, 1, v39);
          }

          *(a2 + v47[23]) = *(a1 + v47[23]);
          *(a2 + v47[24]) = *(a1 + v47[24]);
          *(a2 + v47[25]) = *(a1 + v47[25]);
          *(a2 + v47[26]) = *(a1 + v47[26]);
          swift_storeEnumTagMultiPayload();
          break;
        default:
          *a2 = *a1;
          v28 = type metadata accessor for SearchItem.Link(0);
          v25 = a2 + v28[5];
          v24 = a1 + v28[5];
          v21 = sub_214CCD2B4();
          (*(*(v21 - 8) + 32))(v25, v24);
          v27 = a2 + v28[6];
          v26 = a1 + v28[6];
          v22 = sub_214CCD154();
          (*(*(v22 - 8) + 32))(v27, v26);
          *(a2 + v28[7]) = *(a1 + v28[7]);
          *(a2 + v28[8]) = *(a1 + v28[8]);
          *(a2 + v28[9]) = *(a1 + v28[9]);
          swift_storeEnumTagMultiPayload();
          break;
      }
    }

    else
    {
      *a2 = *a1;
      a2[2] = a1[2];
      v69 = type metadata accessor for SearchItem.Generic(0);
      v68 = a2 + v69[6];
      v67 = a1 + v69[6];
      v2 = sub_214CCD2B4();
      (*(*(v2 - 8) + 32))(v68, v67);
      *(a2 + v69[7]) = *(a1 + v69[7]);
      *(a2 + v69[8]) = *(a1 + v69[8]);
      *(a2 + v69[9]) = *(a1 + v69[9]);
      *(a2 + v69[10]) = *(a1 + v69[10]);
      *(a2 + v69[11]) = *(a1 + v69[11]);
      *(a2 + v69[12]) = *(a1 + v69[12]);
      swift_storeEnumTagMultiPayload();
    }
  }

  return a2;
}

uint64_t sub_214BA2090(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214BA21A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_214BA2394(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214BA24AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_214BA270C(uint64_t a1)
{
  v4 = sub_214BA0E0C();
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for SearchItem(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_214BA27EC()
{
  v2 = qword_280C7DED8;
  if (!qword_280C7DED8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DED8);
    return WitnessTable;
  }

  return v2;
}

void *sub_214BA2864(void *a1)
{
  v49 = type metadata accessor for SearchItem(0);
  if (!(*(*(v49 - 8) + 48))(a1, 1))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:

          v44 = a1 + *(type metadata accessor for SearchItem.Contact(0) + 24);
          v2 = sub_214CCD2B4();
          (*(*(v2 - 8) + 8))(v44);

          break;
        case 2:
          v3 = sub_214CCD2B4();
          (*(*(v3 - 8) + 8))(a1);
          v43 = type metadata accessor for SearchItem.Photo(0);

          MEMORY[0x277D82BD8](*(a1 + *(v43 + 28)));

          break;
        case 3:
          v4 = sub_214CCD2B4();
          (*(*(v4 - 8) + 8))(a1);
          type metadata accessor for SearchItem.Location(0);

          break;
        case 4:
          v5 = sub_214CCD2B4();
          (*(*(v5 - 8) + 8))(a1);
          v42 = type metadata accessor for SearchItem.Document(0);

          v41 = a1 + *(v42 + 32);
          v6 = sub_214CCD154();
          (*(*(v6 - 8) + 8))(v41);

          break;
        case 5:
          v7 = sub_214CCD2B4();
          (*(*(v7 - 8) + 8))(a1);
          v40 = type metadata accessor for SearchItem.LegacySuggested(0);
          MEMORY[0x277D82BD8](*(a1 + *(v40 + 20)));

          MEMORY[0x277D82BD8](*(a1 + *(v40 + 32)));
          break;
        case 6:

          v39 = type metadata accessor for SearchItem.Generic(0);
          v38 = a1 + v39[6];
          v8 = sub_214CCD2B4();
          (*(*(v8 - 8) + 8))(v38);
          MEMORY[0x277D82BD8](*(a1 + v39[7]));
          MEMORY[0x277D82BD8](*(a1 + v39[8]));
          MEMORY[0x277D82BD8](*(a1 + v39[9]));

          break;
        case 7:

          v37 = type metadata accessor for SearchItem.Generic(0);
          v36 = a1 + v37[6];
          v9 = sub_214CCD2B4();
          (*(*(v9 - 8) + 8))(v36);
          MEMORY[0x277D82BD8](*(a1 + v37[7]));
          MEMORY[0x277D82BD8](*(a1 + v37[8]));
          MEMORY[0x277D82BD8](*(a1 + v37[9]));

          break;
        case 8:
          v10 = sub_214CCD2B4();
          (*(*(v10 - 8) + 8))(a1);
          v35 = type metadata accessor for SearchItem.TopHit(0);
          MEMORY[0x277D82BD8](*(a1 + *(v35 + 20)));

          break;
        case 9:
          v11 = sub_214CCD2B4();
          (*(*(v11 - 8) + 8))(a1);
          v30 = type metadata accessor for SearchItem.InstantAnswer(0);

          v26 = a1 + v30[9];
          v28 = sub_214CCCEB4();
          v27 = *(v28 - 8);
          v29 = *(v27 + 8);
          v29(v26);
          (v29)(a1 + v30[10], v28);

          v31 = a1 + v30[12];
          v32 = sub_214CCD154();
          v33 = *(v32 - 8);
          v34 = *(v33 + 48);
          if (!(v34)(v31, 1))
          {
            (*(v33 + 8))(v31, v32);
          }

          v22 = a1 + v30[13];
          v23 = sub_214CCD2F4();
          v24 = *(v23 - 8);
          v25 = *(v24 + 48);
          if (!(v25)(v22, 1))
          {
            (*(v24 + 8))(v22, v23);
          }

          v21 = a1 + v30[14];
          if (!v25())
          {
            (*(v24 + 8))(v21, v23);
          }

          v20 = a1 + v30[15];
          if (!v34())
          {
            (*(v33 + 8))(v20, v32);
          }

          (v29)(a1 + v30[20], v28);
          v19 = a1 + v30[21];
          if (!(*(v27 + 48))())
          {
            (v29)(v19, v28);
          }

          v18 = a1 + v30[22];
          if (!v25())
          {
            (*(v24 + 8))(v18, v23);
          }

          break;
        case 10:

          v17 = type metadata accessor for SearchItem.Link(0);
          v15 = a1 + *(v17 + 20);
          v12 = sub_214CCD2B4();
          (*(*(v12 - 8) + 8))(v15);
          v16 = a1 + *(v17 + 24);
          v13 = sub_214CCD154();
          (*(*(v13 - 8) + 8))(v16);

          break;
      }
    }

    else
    {

      v46 = type metadata accessor for SearchItem.Generic(0);
      v45 = a1 + v46[6];
      v1 = sub_214CCD2B4();
      (*(*(v1 - 8) + 8))(v45);
      MEMORY[0x277D82BD8](*(a1 + v46[7]));
      MEMORY[0x277D82BD8](*(a1 + v46[8]));
      MEMORY[0x277D82BD8](*(a1 + v46[9]));
    }
  }

  return a1;
}

uint64_t sub_214BA3648(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchItem(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        *a2 = *a1;
        *(a2 + 16) = *(a1 + 16);
        v66 = type metadata accessor for SearchItem.Contact(0);
        v65 = a2 + *(v66 + 24);
        v64 = a1 + *(v66 + 24);
        v3 = sub_214CCD2B4();
        (*(*(v3 - 8) + 32))(v65, v64);
        *(a2 + *(v66 + 28)) = *(a1 + *(v66 + 28));
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v4 = sub_214CCD2B4();
        (*(*(v4 - 8) + 32))(a2, a1);
        v63 = type metadata accessor for SearchItem.Photo(0);
        *(a2 + v63[5]) = *(a1 + v63[5]);
        *(a2 + v63[6]) = *(a1 + v63[6]);
        *(a2 + v63[7]) = *(a1 + v63[7]);
        *(a2 + v63[8]) = *(a1 + v63[8]);
        swift_storeEnumTagMultiPayload();
        break;
      case 3:
        v5 = sub_214CCD2B4();
        (*(*(v5 - 8) + 32))(a2, a1);
        v6 = type metadata accessor for SearchItem.Location(0);
        *(a2 + v6[5]) = *(a1 + v6[5]);
        *(a2 + v6[6]) = *(a1 + v6[6]);
        *(a2 + v6[7]) = *(a1 + v6[7]);
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v7 = sub_214CCD2B4();
        (*(*(v7 - 8) + 32))(a2, a1);
        v62 = type metadata accessor for SearchItem.Document(0);
        *(a2 + v62[5]) = *(a1 + v62[5]);
        *(a2 + v62[6]) = *(a1 + v62[6]);
        *(a2 + v62[7]) = *(a1 + v62[7]);
        v61 = a2 + v62[8];
        v60 = a1 + v62[8];
        v8 = sub_214CCD154();
        (*(*(v8 - 8) + 32))(v61, v60);
        *(a2 + v62[9]) = *(a1 + v62[9]);
        swift_storeEnumTagMultiPayload();
        break;
      case 5:
        v9 = sub_214CCD2B4();
        (*(*(v9 - 8) + 32))(a2, a1);
        v59 = type metadata accessor for SearchItem.LegacySuggested(0);
        *(a2 + v59[5]) = *(a1 + v59[5]);
        *(a2 + v59[6]) = *(a1 + v59[6]);
        *(a2 + v59[7]) = *(a1 + v59[7]);
        *(a2 + v59[8]) = *(a1 + v59[8]);
        *(a2 + v59[9]) = *(a1 + v59[9]);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        *a2 = *a1;
        *(a2 + 16) = *(a1 + 16);
        v58 = type metadata accessor for SearchItem.Generic(0);
        v57 = a2 + v58[6];
        v56 = a1 + v58[6];
        v10 = sub_214CCD2B4();
        (*(*(v10 - 8) + 32))(v57, v56);
        *(a2 + v58[7]) = *(a1 + v58[7]);
        *(a2 + v58[8]) = *(a1 + v58[8]);
        *(a2 + v58[9]) = *(a1 + v58[9]);
        *(a2 + v58[10]) = *(a1 + v58[10]);
        *(a2 + v58[11]) = *(a1 + v58[11]);
        *(a2 + v58[12]) = *(a1 + v58[12]);
        swift_storeEnumTagMultiPayload();
        break;
      case 7:
        *a2 = *a1;
        *(a2 + 16) = *(a1 + 16);
        v55 = type metadata accessor for SearchItem.Generic(0);
        v54 = a2 + v55[6];
        v53 = a1 + v55[6];
        v11 = sub_214CCD2B4();
        (*(*(v11 - 8) + 32))(v54, v53);
        *(a2 + v55[7]) = *(a1 + v55[7]);
        *(a2 + v55[8]) = *(a1 + v55[8]);
        *(a2 + v55[9]) = *(a1 + v55[9]);
        *(a2 + v55[10]) = *(a1 + v55[10]);
        *(a2 + v55[11]) = *(a1 + v55[11]);
        *(a2 + v55[12]) = *(a1 + v55[12]);
        swift_storeEnumTagMultiPayload();
        break;
      case 8:
        v12 = sub_214CCD2B4();
        (*(*(v12 - 8) + 32))(a2, a1);
        v13 = type metadata accessor for SearchItem.TopHit(0);
        *(a2 + *(v13 + 20)) = *(a1 + *(v13 + 20));
        *(a2 + *(v13 + 24)) = *(a1 + *(v13 + 24));
        swift_storeEnumTagMultiPayload();
        break;
      case 9:
        v14 = sub_214CCD2B4();
        (*(*(v14 - 8) + 32))(a2, a1);
        v47 = type metadata accessor for SearchItem.InstantAnswer(0);
        *(a2 + v47[5]) = *(a1 + v47[5]);
        *(a2 + v47[6]) = *(a1 + v47[6]);
        *(a2 + v47[7]) = *(a1 + v47[7]);
        *(a2 + v47[8]) = *(a1 + v47[8]);
        v43 = a2 + v47[9];
        v42 = a1 + v47[9];
        v45 = sub_214CCCEB4();
        v44 = *(v45 - 8);
        v46 = *(v44 + 32);
        (v46)(v43, v42);
        v46(a2 + v47[10], a1 + v47[10], v45);
        *(a2 + v47[11]) = *(a1 + v47[11]);
        __dst = (a2 + v47[12]);
        __src = (a1 + v47[12]);
        v50 = sub_214CCD154();
        v51 = *(v50 - 8);
        v52 = *(v51 + 48);
        if ((v52)(__src, 1))
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
          memcpy(__dst, __src, *(*(v15 - 8) + 64));
        }

        else
        {
          (*(v51 + 32))(__dst, __src, v50);
          (*(v51 + 56))(__dst, 0, 1, v50);
        }

        v37 = (a2 + v47[13]);
        v38 = (a1 + v47[13]);
        v39 = sub_214CCD2F4();
        v40 = *(v39 - 8);
        v41 = *(v40 + 48);
        if ((v41)(v38, 1))
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v37, v38, *(*(v16 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(v37, v38, v39);
          (*(v40 + 56))(v37, 0, 1, v39);
        }

        v35 = (a2 + v47[14]);
        v36 = (a1 + v47[14]);
        if (v41())
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v35, v36, *(*(v17 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(v35, v36, v39);
          (*(v40 + 56))(v35, 0, 1, v39);
        }

        v33 = (a2 + v47[15]);
        v34 = (a1 + v47[15]);
        if (v52())
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
          memcpy(v33, v34, *(*(v18 - 8) + 64));
        }

        else
        {
          (*(v51 + 32))(v33, v34, v50);
          (*(v51 + 56))(v33, 0, 1, v50);
        }

        *(a2 + v47[16]) = *(a1 + v47[16]);
        *(a2 + v47[17]) = *(a1 + v47[17]);
        *(a2 + v47[18]) = *(a1 + v47[18]);
        *(a2 + v47[19]) = *(a1 + v47[19]);
        v46(a2 + v47[20], a1 + v47[20], v45);
        v31 = (a2 + v47[21]);
        v32 = (a1 + v47[21]);
        if ((*(v44 + 48))())
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
          memcpy(v31, v32, *(*(v19 - 8) + 64));
        }

        else
        {
          v46(v31, v32, v45);
          (*(v44 + 56))(v31, 0, 1, v45);
        }

        v29 = (a2 + v47[22]);
        v30 = (a1 + v47[22]);
        if (v41())
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v29, v30, *(*(v20 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(v29, v30, v39);
          (*(v40 + 56))(v29, 0, 1, v39);
        }

        *(a2 + v47[23]) = *(a1 + v47[23]);
        *(a2 + v47[24]) = *(a1 + v47[24]);
        *(a2 + v47[25]) = *(a1 + v47[25]);
        *(a2 + v47[26]) = *(a1 + v47[26]);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        *a2 = *a1;
        v28 = type metadata accessor for SearchItem.Link(0);
        v25 = a2 + v28[5];
        v24 = a1 + v28[5];
        v21 = sub_214CCD2B4();
        (*(*(v21 - 8) + 32))(v25, v24);
        v27 = a2 + v28[6];
        v26 = a1 + v28[6];
        v22 = sub_214CCD154();
        (*(*(v22 - 8) + 32))(v27, v26);
        *(a2 + v28[7]) = *(a1 + v28[7]);
        *(a2 + v28[8]) = *(a1 + v28[8]);
        *(a2 + v28[9]) = *(a1 + v28[9]);
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v69 = type metadata accessor for SearchItem.Generic(0);
    v68 = a2 + v69[6];
    v67 = a1 + v69[6];
    v2 = sub_214CCD2B4();
    (*(*(v2 - 8) + 32))(v68, v67);
    *(a2 + v69[7]) = *(a1 + v69[7]);
    *(a2 + v69[8]) = *(a1 + v69[8]);
    *(a2 + v69[9]) = *(a1 + v69[9]);
    *(a2 + v69[10]) = *(a1 + v69[10]);
    *(a2 + v69[11]) = *(a1 + v69[11]);
    *(a2 + v69[12]) = *(a1 + v69[12]);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_214BA4824()
{
  v2 = qword_280C7DEE0;
  if (!qword_280C7DEE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DEE0);
    return WitnessTable;
  }

  return v2;
}

double sub_214BA489C()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA36358);
  __swift_project_value_buffer(v1, qword_27CA36358);
  MEMORY[0x277D82BE0](@"com.apple.MailUI");
  sub_214CCF564();
  sub_214CCF614("GroupedSearchItemSectionKind", 28, 1);
  sub_214CCDA64();
  *&result = MEMORY[0x277D82BD8](@"com.apple.MailUI").n128_u64[0];
  return result;
}

uint64_t sub_214BA4954()
{
  if (qword_27CA34018 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA36358);
}

id sub_214BA49C0()
{
  result = [objc_opt_self() mui_MailUIBundle];
  qword_280C7D088 = result;
  return result;
}

uint64_t *sub_214BA49FC()
{
  if (qword_280C7D080 != -1)
  {
    swift_once();
  }

  return &qword_280C7D088;
}

uint64_t GroupedSearchItems.Section.Kind.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    switch(result)
    {
      case 1:
        v2 = 1;
        break;
      case 2:
        v2 = 2;
        break;
      case 3:
        v2 = 3;
        break;
      case 4:
        v2 = 4;
        break;
      case 5:
        v2 = 5;
        break;
      case 6:
        v2 = 6;
        break;
      case 7:
        v2 = 7;
        break;
      case 8:
        v2 = 8;
        break;
      case 9:
        v2 = 9;
        break;
      case 10:
        v2 = 10;
        break;
      case 11:
        v2 = 11;
        break;
      case 12:
        v2 = 12;
        break;
      case 13:
        v2 = 13;
        break;
      default:
        *a2 = 14;
        return result;
    }
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void static GroupedSearchItems.Section.Kind.allCases.getter()
{
  sub_214CD03C4();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  v0[6] = 6;
  v0[7] = 7;
  v0[8] = 8;
  v0[9] = 9;
  v0[10] = 10;
  v0[11] = 11;
  v0[12] = 12;
  v0[13] = 13;
  sub_214A63280();
}

uint64_t GroupedSearchItems.Section.Kind.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      v2 = 1;
      break;
    case 2:
      v2 = 2;
      break;
    case 3:
      v2 = 3;
      break;
    case 4:
      v2 = 4;
      break;
    case 5:
      v2 = 5;
      break;
    case 6:
      v2 = 6;
      break;
    case 7:
      v2 = 7;
      break;
    case 8:
      v2 = 8;
      break;
    case 9:
      v2 = 9;
      break;
    case 0xA:
      v2 = 10;
      break;
    case 0xB:
      v2 = 11;
      break;
    case 0xC:
      v2 = 12;
      break;
    case 0xD:
      v2 = 13;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

uint64_t sub_214BA4E58@<X0>(uint64_t *a1@<X8>)
{
  result = GroupedSearchItems.Section.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t GroupedSearchItems.Section.Kind.title.getter()
{
  switch(*v0)
  {
    case 1:
      sub_214CCF614("Top Hits", 8, 1);
      v19 = sub_214BA49FC();
      v26 = *v19;
      *&v20 = MEMORY[0x277D82BE0](*v19).n128_u64[0];
      sub_214CCF614("List of top hit messages", 24, 1, v20);
      sub_214B1C228();
      v27 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v26);

      v46 = v27;
      break;
    case 2:
      sub_214CCF614("Instant Answers", 15, 1);
      v21 = sub_214BA49FC();
      v24 = *v21;
      *&v22 = MEMORY[0x277D82BE0](*v21).n128_u64[0];
      sub_214CCF614("List of instant answer messages", 31, 1, v22);
      sub_214B1C228();
      v25 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v24);

      v46 = v25;
      break;
    case 3:
      sub_214CCF614("Contacts", 8, 1);
      v3 = sub_214BA49FC();
      v42 = *v3;
      *&v4 = MEMORY[0x277D82BE0](*v3).n128_u64[0];
      sub_214CCF614("List of suggested contacts", 26, 1, v4);
      sub_214B1C228();
      v43 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v42);

      v46 = v43;
      break;
    case 4:
      sub_214CCF614("Photos", 6, 1);
      v15 = sub_214BA49FC();
      v30 = *v15;
      *&v16 = MEMORY[0x277D82BE0](*v15).n128_u64[0];
      sub_214CCF614("List of suggested photos", 24, 1, v16);
      sub_214B1C228();
      v31 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v30);

      v46 = v31;
      break;
    case 5:
      sub_214CCF614("Locations", 9, 1);
      v9 = sub_214BA49FC();
      v36 = *v9;
      *&v10 = MEMORY[0x277D82BE0](*v9).n128_u64[0];
      sub_214CCF614("List of addresses of physical places", 36, 1, v10);
      sub_214B1C228();
      v37 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v36);

      v46 = v37;
      break;
    case 6:
      v46 = 0;
      break;
    case 7:
      sub_214CCF614("Suggestions", 11, 1);
      v17 = sub_214BA49FC();
      v28 = *v17;
      *&v18 = MEMORY[0x277D82BE0](*v17).n128_u64[0];
      sub_214CCF614("List of suggestions", 19, 1, v18);
      sub_214B1C228();
      v29 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v28);

      v46 = v29;
      break;
    case 8:
      sub_214CCF614("Documents", 9, 1);
      v5 = sub_214BA49FC();
      v40 = *v5;
      *&v6 = MEMORY[0x277D82BE0](*v5).n128_u64[0];
      sub_214CCF614("Attachment Documents", 20, 1, v6);
      sub_214B1C228();
      v41 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v40);

      v46 = v41;
      break;
    case 9:
      sub_214CCF614("Links", 5, 1);
      v7 = sub_214BA49FC();
      v38 = *v7;
      *&v8 = MEMORY[0x277D82BE0](*v7).n128_u64[0];
      sub_214CCF614("URLs", 4, 1, v8);
      sub_214B1C228();
      v39 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v38);

      v46 = v39;
      break;
    case 0xA:
      v46 = 0;
      break;
    case 0xB:
      sub_214CCF614("Suggested Searches", 18, 1);
      v1 = sub_214BA49FC();
      v44 = *v1;
      *&v2 = MEMORY[0x277D82BE0](*v1).n128_u64[0];
      sub_214CCF614("List of suggested searches", 26, 1, v2);
      sub_214B1C228();
      v45 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v44);

      v46 = v45;
      break;
    case 0xC:
      sub_214CCF614("Mailboxes", 9, 1);
      v11 = sub_214BA49FC();
      v34 = *v11;
      *&v12 = MEMORY[0x277D82BE0](*v11).n128_u64[0];
      sub_214CCF614("List of suggested mailboxes", 27, 1, v12);
      sub_214B1C228();
      v35 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v34);

      v46 = v35;
      break;
    case 0xD:
      sub_214CCF614("Other", 5, 1);
      v13 = sub_214BA49FC();
      v32 = *v13;
      *&v14 = MEMORY[0x277D82BE0](*v13).n128_u64[0];
      sub_214CCF614("List of other suggested items", 29, 1, v14);
      sub_214B1C228();
      v33 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v32);

      v46 = v33;
      break;
    default:
      v46 = 0;
      break;
  }

  return v46;
}

unint64_t sub_214BA5A2C()
{
  v2 = qword_27CA36370;
  if (!qword_27CA36370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36378, &qword_214CF1668);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36370);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF2)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 13) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 242;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 14;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF2)
  {
    v5 = ((a3 + 13) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF2)
  {
    v4 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

id HelloSwift.init()()
{
  v4 = v0;
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x277D82BE0](v2);
  v4 = v2;
  MEMORY[0x277D82BD8](v2);
  return v2;
}

id HelloSwift.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IndexPath.mui_previous.getter(uint64_t a1)
{
  result = sub_214CCD354();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_214CD0444();
    v3 = sub_214CCD364();
    return MEMORY[0x21605B5F0](v4, v3);
  }

  return result;
}

uint64_t SearchItem.InstantAnswer.id.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_214CCD2B4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t type metadata accessor for SearchItem.InstantAnswer(uint64_t a1)
{
  v2 = qword_280C7E7C0;
  if (!qword_280C7E7C0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SearchItem.InstantAnswer.instantAnswerKind.setter(uint64_t a1)
{
  v2 = type metadata accessor for SearchItem.InstantAnswer(0);
  result = a1;
  *(v1 + *(v2 + 20)) = a1;
  return result;
}

uint64_t SearchItem.InstantAnswer.flightCarrierCode.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 24));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightCarrierCode.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.flightArrivalAirportCode.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 28));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightArrivalAirportCode.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.flightDepartureAirportCode.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 32));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightDepartureAirportCode.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 32));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.flightDepartureDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.InstantAnswer(0) + 36);
  v2 = sub_214CCCEB4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchItem.InstantAnswer.flightDepartureDateComponents.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCCEB4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.InstantAnswer(v8);
  (*(v10 + 40))(v1 + *(v4 + 36), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.InstantAnswer.flightArrivalDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.InstantAnswer(0) + 40);
  v2 = sub_214CCCEB4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchItem.InstantAnswer.flightArrivalDateComponents.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCCEB4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.InstantAnswer(v8);
  (*(v10 + 40))(v1 + *(v4 + 40), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.InstantAnswer.flightNumber.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 44));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightNumber.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 44));
  *v3 = a1;
  v3[1] = a2;
}

void *sub_214BA6CD4(const void *a1, void *a2)
{
  v6 = sub_214CCD154();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t SearchItem.InstantAnswer.flightCheckInUrl.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA6CD4(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer(0);
  sub_214BA6EC0(v7, (v1 + *(v3 + 48)));
  return sub_214B6807C(v8);
}

void *sub_214BA6EC0(const void *a1, void *a2)
{
  v7 = sub_214CCD154();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

void *sub_214BA7180(const void *a1, void *a2)
{
  v6 = sub_214CCD2F4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t SearchItem.InstantAnswer.flightDepartureTimeZone.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA7180(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer(0);
  sub_214BA736C(v7, (v1 + *(v3 + 52)));
  return sub_214BA7594(v8);
}

void *sub_214BA736C(const void *a1, void *a2)
{
  v7 = sub_214CCD2F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_214BA7594(uint64_t a1)
{
  v3 = sub_214CCD2F4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t SearchItem.InstantAnswer.flightArrivalTimeZone.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA7180(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer(0);
  sub_214BA736C(v7, (v1 + *(v3 + 56)));
  return sub_214BA7594(v8);
}

uint64_t SearchItem.InstantAnswer.flightBookingInfoUrl.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA6CD4(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer(0);
  sub_214BA6EC0(v7, (v1 + *(v3 + 60)));
  return sub_214B6807C(v8);
}

uint64_t SearchItem.InstantAnswer.flightCarrier.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 64));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightCarrier.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 64));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.flightConfirmationNumber.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 68));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightConfirmationNumber.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 68));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationId.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 72));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationId.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 72));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelUnderName.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 76));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelUnderName.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 76));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelCheckinDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.InstantAnswer(0) + 80);
  v2 = sub_214CCCEB4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchItem.InstantAnswer.hotelCheckinDateComponents.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCCEB4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.InstantAnswer(v8);
  (*(v10 + 40))(v1 + *(v4 + 80), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

void *sub_214BA8018(const void *a1, void *a2)
{
  v6 = sub_214CCCEB4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t SearchItem.InstantAnswer.hotelCheckoutDateComponents.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA8018(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer(0);
  sub_214BA8204(v7, (v1 + *(v3 + 84)));
  return sub_214BA842C(v8);
}

void *sub_214BA8204(const void *a1, void *a2)
{
  v7 = sub_214CCCEB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_214BA842C(uint64_t a1)
{
  v3 = sub_214CCCEB4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t SearchItem.InstantAnswer.hotelTimeZone.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA7180(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer(0);
  sub_214BA736C(v7, (v1 + *(v3 + 88)));
  return sub_214BA7594(v8);
}

uint64_t SearchItem.InstantAnswer.hotelReservationForName.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 92));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForName.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 92));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForTelephone.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 96));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForTelephone.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 96));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForAddress.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 100));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForAddress.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 100));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForAddressLocality.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 104));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForAddressLocality.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer(0) + 104));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.init(id:suggestion:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v230 = a3;
  v268 = a1;
  v278 = a2;
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
  v231 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v232 = &v94 - v231;
  v249 = 0;
  v256 = sub_214CCD154();
  v253 = *(v256 - 8);
  v251 = v256 - 8;
  v233 = (*(v253 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v256);
  v234 = &v94 - v233;
  v235 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v249);
  v236 = &v94 - v235;
  v237 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v238 = &v94 - v237;
  v265 = sub_214CCD2F4();
  v254 = *(v265 - 8);
  v255 = v265 - 8;
  v239 = (*(v254 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v265);
  v240 = &v94 - v239;
  v241 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v249);
  v242 = &v94 - v241;
  v243 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v244 = &v94 - v243;
  v245 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v246 = &v94 - v245;
  v261 = sub_214CCCEB4();
  v259 = *(v261 - 8);
  v260 = v261 - 8;
  v247 = (*(v259 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v249);
  v248 = &v94 - v247;
  v272 = sub_214CCD2B4();
  v269 = *(v272 - 8);
  v270 = v272 - 8;
  v250 = (*(v269 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v249);
  v271 = &v94 - v250;
  v274 = type metadata accessor for SearchItem.InstantAnswer(v10);
  v252 = (*(*(v274 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v274);
  v12 = v252;
  v13 = v253;
  v14 = &v94 - v252;
  v275 = &v94 - v252;
  v283 = &v94 - v252;
  v282 = v268;
  v281 = v15;
  v17 = (&v94 + v16[6] - v252);
  *v17 = 0;
  v17[1] = 0;
  v18 = (&v94 + v16[11] - v12);
  *v18 = 0;
  v18[1] = 0;
  v19 = v16[12];
  v258 = *(v13 + 56);
  v257 = v13 + 56;
  v264 = 1;
  v258(&v14[v19], 1, v11);
  v20 = v274[13];
  v267 = *(v254 + 56);
  v266 = v254 + 56;
  v267(v275 + v20, v264, v264, v265);
  v267(v275 + v274[14], v264, v264, v265);
  (v258)(v275 + v274[15], v264, v264, v256);
  v21 = v259;
  v22 = v261;
  v23 = v264;
  v24 = v274;
  v25 = v275;
  v26 = (v275 + v274[16]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v25 + v24[17]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v25 + v24[18]);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v25 + v24[19]);
  *v29 = 0;
  v29[1] = 0;
  v30 = v24[21];
  v262 = *(v21 + 56);
  v263 = v21 + 56;
  v262(v25 + v30, v23, v23, v22);
  v267(v275 + v274[22], v264, v264, v265);
  v31 = v268;
  v32 = v269;
  v33 = v271;
  v34 = v272;
  v35 = v274;
  v36 = v275;
  v37 = (v275 + v274[24]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v36 + v35[25]);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v36 + v35[26]);
  *v39 = 0;
  v39[1] = 0;
  (*(v32 + 16))(v33, v31, v34);
  (*(v269 + 32))(v275, v271, v272);
  v277 = 0x1FBE54000uLL;
  v273 = [v278 0x1FBE54536];
  v276 = [v273 instantAnswersKind];
  *&v40 = MEMORY[0x277D82BD8](v273).n128_u64[0];
  v41 = v277;
  v42 = v278;
  *(v275 + v274[5]) = v276;
  v279 = [v42 (v41 + 1334)];
  v280 = [v279 flightCarrierCode];
  if (v280)
  {
    v229 = v280;
    v224 = v280;
    v225 = sub_214CCF564();
    v226 = v43;
    MEMORY[0x277D82BD8](v224);
    v227 = v225;
    v228 = v226;
  }

  else
  {
    v227 = 0;
    v228 = 0;
  }

  v206 = v228;
  v205 = v227;
  MEMORY[0x277D82BD8](v279);
  v44 = v206;
  v45 = (v275 + v274[6]);
  *v45 = v205;
  v45[1] = v44;

  v221 = 0x1FBE54000uLL;
  v207 = [v278 0x1FBE54536];
  v210 = [v207 flightArrivalAirportCode];
  v208 = sub_214CCF564();
  v209 = v46;
  MEMORY[0x277D82BD8](v207);
  v47 = v209;
  v48 = v210;
  v49 = (v275 + v274[7]);
  *v49 = v208;
  v49[1] = v47;
  *&v50 = MEMORY[0x277D82BD8](v48).n128_u64[0];
  v211 = [v278 (v221 + 1334)];
  v214 = [v211 flightDepartureAirportCode];
  v212 = sub_214CCF564();
  v213 = v51;
  MEMORY[0x277D82BD8](v211);
  v52 = v213;
  v53 = v214;
  v54 = (v275 + v274[8]);
  *v54 = v212;
  v54[1] = v52;
  *&v55 = MEMORY[0x277D82BD8](v53).n128_u64[0];
  v215 = [v278 (v221 + 1334)];
  v216 = [v215 flightDepartureDateComponents];
  sub_214CCCEA4();
  v56 = MEMORY[0x277D82BD8](v215);
  v57 = v275 + v274[9];
  v219 = *(v259 + 32);
  v218 = v259 + 32;
  v219(v57, v248, v261, v56);
  *&v58 = MEMORY[0x277D82BD8](v216).n128_u64[0];
  v217 = [v278 (v221 + 1334)];
  v220 = [v217 flightArrivalDateComponents];
  sub_214CCCEA4();
  v59 = MEMORY[0x277D82BD8](v217);
  v219(v275 + v274[10], v248, v261, v59);
  *&v60 = MEMORY[0x277D82BD8](v220).n128_u64[0];
  v222 = [v278 (v221 + 1334)];
  v223 = [v222 flightDepartureTimeZone];
  if (v223)
  {
    v204 = v223;
    v203 = v223;
    sub_214CCD2E4();
    (*(v254 + 32))(v246, v240, v265);
    v267(v246, 0, 1, v265);
    MEMORY[0x277D82BD8](v203);
  }

  else
  {
    v267(v246, 1, 1, v265);
  }

  MEMORY[0x277D82BD8](v222);
  sub_214BA736C(v246, (v275 + v274[13]));
  v201 = [v278 instantAnswer];
  v202 = [v201 flightArrivalTimeZone];
  if (v202)
  {
    v200 = v202;
    v199 = v202;
    sub_214CCD2E4();
    (*(v254 + 32))(v244, v240, v265);
    v267(v244, 0, 1, v265);
    MEMORY[0x277D82BD8](v199);
  }

  else
  {
    v267(v244, 1, 1, v265);
  }

  MEMORY[0x277D82BD8](v201);
  sub_214BA736C(v244, (v275 + v274[14]));
  v197 = [v278 instantAnswer];
  v198 = [v197 flightCheckInUrl];
  if (v198)
  {
    v196 = v198;
    v195 = v198;
    sub_214CCD124();
    (*(v253 + 32))(v238, v234, v256);
    (v258)(v238, 0, 1, v256);
    MEMORY[0x277D82BD8](v195);
  }

  else
  {
    (v258)(v238, 1, 1, v256);
  }

  MEMORY[0x277D82BD8](v197);
  sub_214BA6EC0(v238, (v275 + v274[12]));
  v193 = [v278 instantAnswer];
  v194 = [v193 flightNumber];
  if (v194)
  {
    v192 = v194;
    v187 = v194;
    v188 = sub_214CCF564();
    v189 = v61;
    MEMORY[0x277D82BD8](v187);
    v190 = v188;
    v191 = v189;
  }

  else
  {
    v190 = 0;
    v191 = 0;
  }

  v184 = v191;
  v183 = v190;
  MEMORY[0x277D82BD8](v193);
  v62 = v184;
  v63 = (v275 + v274[11]);
  *v63 = v183;
  v63[1] = v62;

  v185 = [v278 instantAnswer];
  v186 = [v185 flightBookingInfoUrl];
  if (v186)
  {
    v182 = v186;
    v181 = v186;
    sub_214CCD124();
    (*(v253 + 32))(v236, v234, v256);
    (v258)(v236, 0, 1, v256);
    MEMORY[0x277D82BD8](v181);
  }

  else
  {
    (v258)(v236, 1, 1, v256);
  }

  MEMORY[0x277D82BD8](v185);
  sub_214BA6EC0(v236, (v275 + v274[15]));
  v179 = [v278 instantAnswer];
  v180 = [v179 flightCarrier];
  if (v180)
  {
    v178 = v180;
    v173 = v180;
    v174 = sub_214CCF564();
    v175 = v64;
    MEMORY[0x277D82BD8](v173);
    v176 = v174;
    v177 = v175;
  }

  else
  {
    v176 = 0;
    v177 = 0;
  }

  v170 = v177;
  v169 = v176;
  MEMORY[0x277D82BD8](v179);
  v65 = v170;
  v66 = (v275 + v274[16]);
  *v66 = v169;
  v66[1] = v65;

  v171 = [v278 instantAnswer];
  v172 = [v171 flightConfirmationNumber];
  if (v172)
  {
    v168 = v172;
    v163 = v172;
    v164 = sub_214CCF564();
    v165 = v67;
    MEMORY[0x277D82BD8](v163);
    v166 = v164;
    v167 = v165;
  }

  else
  {
    v166 = 0;
    v167 = 0;
  }

  v160 = v167;
  v159 = v166;
  MEMORY[0x277D82BD8](v171);
  v68 = v160;
  v69 = (v275 + v274[17]);
  *v69 = v159;
  v69[1] = v68;

  v161 = [v278 instantAnswer];
  v162 = [v161 hotelReservationId];
  if (v162)
  {
    v158 = v162;
    v153 = v162;
    v154 = sub_214CCF564();
    v155 = v70;
    MEMORY[0x277D82BD8](v153);
    v156 = v154;
    v157 = v155;
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  v150 = v157;
  v149 = v156;
  MEMORY[0x277D82BD8](v161);
  v71 = v150;
  v72 = (v275 + v274[18]);
  *v72 = v149;
  v72[1] = v71;

  v151 = [v278 instantAnswer];
  v152 = [v151 hotelUnderName];
  if (v152)
  {
    v148 = v152;
    v143 = v152;
    v144 = sub_214CCF564();
    v145 = v73;
    MEMORY[0x277D82BD8](v143);
    v146 = v144;
    v147 = v145;
  }

  else
  {
    v146 = 0;
    v147 = 0;
  }

  v137 = v147;
  v136 = v146;
  MEMORY[0x277D82BD8](v151);
  v74 = v137;
  v75 = (v275 + v274[19]);
  *v75 = v136;
  v75[1] = v74;

  v140 = 0x1FBE54000uLL;
  v138 = [v278 0x1FBE54536];
  v139 = [v138 hotelCheckinDateComponents];
  sub_214CCCEA4();
  v76 = MEMORY[0x277D82BD8](v138);
  v219(v275 + v274[20], v248, v261, v76);
  *&v77 = MEMORY[0x277D82BD8](v139).n128_u64[0];
  v141 = [v278 (v140 + 1334)];
  v142 = [v141 hotelCheckoutDateComponents];
  if (v142)
  {
    v135 = v142;
    v134 = v142;
    sub_214CCCEA4();
    (v219)(v232, v248, v261);
    v262(v232, 0, 1, v261);
    MEMORY[0x277D82BD8](v134);
  }

  else
  {
    v262(v232, 1, 1, v261);
  }

  MEMORY[0x277D82BD8](v141);
  sub_214BA8204(v232, (v275 + v274[21]));
  v132 = [v278 instantAnswer];
  v133 = [v132 hotelTimeZone];
  if (v133)
  {
    v131 = v133;
    v130 = v133;
    sub_214CCD2E4();
    (*(v254 + 32))(v242, v240, v265);
    v267(v242, 0, 1, v265);
    MEMORY[0x277D82BD8](v130);
  }

  else
  {
    v267(v242, 1, 1, v265);
  }

  MEMORY[0x277D82BD8](v132);
  sub_214BA736C(v242, (v275 + v274[22]));
  v127 = 0x1FBE54000uLL;
  v123 = [v278 0x1FBE54536];
  v126 = [v123 hotelReservationForName];
  v124 = sub_214CCF564();
  v125 = v78;
  MEMORY[0x277D82BD8](v123);
  v79 = v125;
  v80 = v126;
  v81 = (v275 + v274[23]);
  *v81 = v124;
  v81[1] = v79;
  *&v82 = MEMORY[0x277D82BD8](v80).n128_u64[0];
  v128 = [v278 (v127 + 1334)];
  v129 = [v128 hotelReservationForTelephone];
  if (v129)
  {
    v122 = v129;
    v117 = v129;
    v118 = sub_214CCF564();
    v119 = v83;
    MEMORY[0x277D82BD8](v117);
    v120 = v118;
    v121 = v119;
  }

  else
  {
    v120 = 0;
    v121 = 0;
  }

  v114 = v121;
  v113 = v120;
  MEMORY[0x277D82BD8](v128);
  v84 = v114;
  v85 = (v275 + v274[24]);
  *v85 = v113;
  v85[1] = v84;

  v115 = [v278 instantAnswer];
  v116 = [v115 hotelReservationForAddress];
  if (v116)
  {
    v112 = v116;
    v107 = v116;
    v108 = sub_214CCF564();
    v109 = v86;
    MEMORY[0x277D82BD8](v107);
    v110 = v108;
    v111 = v109;
  }

  else
  {
    v110 = 0;
    v111 = 0;
  }

  v104 = v111;
  v103 = v110;
  MEMORY[0x277D82BD8](v115);
  v87 = v104;
  v88 = (v275 + v274[25]);
  *v88 = v103;
  v88[1] = v87;

  v105 = [v278 instantAnswer];
  v106 = [v105 hotelReservationForAddressLocality];
  if (v106)
  {
    v102 = v106;
    v97 = v106;
    v98 = sub_214CCF564();
    v99 = v89;
    MEMORY[0x277D82BD8](v97);
    v100 = v98;
    v101 = v99;
  }

  else
  {
    v100 = 0;
    v101 = 0;
  }

  v96 = v101;
  v95 = v100;
  MEMORY[0x277D82BD8](v105);
  v90 = v96;
  v91 = (v275 + v274[26]);
  *v91 = v95;
  v91[1] = v90;

  sub_214BAA9D0(v275, v230);
  v92 = MEMORY[0x277D82BD8](v278);
  (*(v269 + 8))(v268, v272, v92);
  return sub_214BAB488(v275);
}

uint64_t sub_214BAA9D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v64 = type metadata accessor for SearchItem.InstantAnswer(0);
  *(a2 + v64[5]) = *(a1 + v64[5]);
  v3 = (a1 + v64[6]);
  v51 = (a2 + v64[6]);
  *v51 = *v3;
  v52 = v3[1];

  v51[1] = v52;
  v4 = v64[7];
  v53 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v54 = *(a1 + v4 + 8);

  *(v53 + 8) = v54;
  v5 = v64[8];
  v55 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v56 = *(a1 + v5 + 8);

  *(v55 + 8) = v56;
  v57 = v64[9];
  v59 = sub_214CCCEB4();
  v58 = *(v59 - 8);
  v60 = *(v58 + 16);
  v60(a2 + v57, a1 + v57);
  (v60)(a2 + v64[10], a1 + v64[10], v59);
  v6 = v64[11];
  v62 = a2 + v6;
  *(a2 + v6) = *(a1 + v6);
  v63 = *(a1 + v6 + 8);

  *(v62 + 8) = v63;
  v65 = v64[12];
  v67 = sub_214CCD154();
  v68 = *(v67 - 8);
  v69 = *(v68 + 48);
  if ((v69)(a1 + v65, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
    memcpy((a2 + v65), (a1 + v65), *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v68 + 16))();
    (*(v68 + 56))(a2 + v65, 0, 1, v67);
  }

  __dst = (a2 + v64[13]);
  __src = (a1 + v64[13]);
  v48 = sub_214CCD2F4();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if ((v50)(__src, 1))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
    memcpy(__dst, __src, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v49 + 16))(__dst, __src, v48);
    (*(v49 + 56))(__dst, 0, 1, v48);
  }

  v44 = (a2 + v64[14]);
  v45 = (a1 + v64[14]);
  if (v50())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
    memcpy(v44, v45, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v49 + 16))(v44, v45, v48);
    (*(v49 + 56))(v44, 0, 1, v48);
  }

  v42 = (a2 + v64[15]);
  v43 = (a1 + v64[15]);
  if (v69())
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
    memcpy(v42, v43, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v68 + 16))(v42, v43, v67);
    (*(v68 + 56))(v42, 0, 1, v67);
  }

  v11 = v64[16];
  v32 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v33 = *(a1 + v11 + 8);

  *(v32 + 8) = v33;
  v12 = v64[17];
  v34 = a2 + v12;
  *(a2 + v12) = *(a1 + v12);
  v35 = *(a1 + v12 + 8);

  *(v34 + 8) = v35;
  v13 = v64[18];
  v36 = a2 + v13;
  *(a2 + v13) = *(a1 + v13);
  v37 = *(a1 + v13 + 8);

  *(v36 + 8) = v37;
  v14 = v64[19];
  v38 = a2 + v14;
  *(a2 + v14) = *(a1 + v14);
  v39 = *(a1 + v14 + 8);

  *(v38 + 8) = v39;
  (v60)(a2 + v64[20], a1 + v64[20], v59);
  v40 = (a2 + v64[21]);
  v41 = (a1 + v64[21]);
  if ((*(v58 + 48))())
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
    memcpy(v40, v41, *(*(v15 - 8) + 64));
  }

  else
  {
    (v60)(v40, v41, v59);
    (*(v58 + 56))(v40, 0, 1, v59);
  }

  v30 = (a2 + v64[22]);
  v31 = (a1 + v64[22]);
  if (v50())
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
    memcpy(v30, v31, *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v49 + 16))(v30, v31, v48);
    (*(v49 + 56))(v30, 0, 1, v48);
  }

  v17 = v64[23];
  v22 = a2 + v17;
  *(a2 + v17) = *(a1 + v17);
  v23 = *(a1 + v17 + 8);

  *(v22 + 8) = v23;
  v18 = v64[24];
  v24 = a2 + v18;
  *(a2 + v18) = *(a1 + v18);
  v25 = *(a1 + v18 + 8);

  *(v24 + 8) = v25;
  v19 = v64[25];
  v26 = a2 + v19;
  *(a2 + v19) = *(a1 + v19);
  v27 = *(a1 + v19 + 8);

  *(v26 + 8) = v27;
  v20 = v64[26];
  v28 = a2 + v20;
  *(a2 + v20) = *(a1 + v20);
  v29 = *(a1 + v20 + 8);

  result = a2;
  *(v28 + 8) = v29;
  return result;
}

uint64_t sub_214BAB488(uint64_t a1)
{
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1);
  v15 = type metadata accessor for SearchItem.InstantAnswer(0);

  v11 = v15[9];
  v13 = sub_214CCCEB4();
  v12 = *(v13 - 8);
  v14 = *(v12 + 8);
  v14(a1 + v11);
  (v14)(a1 + v15[10], v13);

  v16 = v15[12];
  v18 = sub_214CCD154();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!(v20)(a1 + v16, 1))
  {
    (*(v19 + 8))(a1 + v16, v18);
  }

  v7 = a1 + v15[13];
  v8 = sub_214CCD2F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!(v10)(v7, 1))
  {
    (*(v9 + 8))(v7, v8);
  }

  v6 = a1 + v15[14];
  if (!v10())
  {
    (*(v9 + 8))(v6, v8);
  }

  v5 = a1 + v15[15];
  if (!v20())
  {
    (*(v19 + 8))(v5, v18);
  }

  (v14)(a1 + v15[20], v13);
  v4 = a1 + v15[21];
  if (!(*(v12 + 48))())
  {
    (v14)(v4, v13);
  }

  v3 = a1 + v15[22];
  if (!v10())
  {
    (*(v9 + 8))(v3, v8);
  }

  return a1;
}

uint64_t SearchItem.InstantAnswer.init(id:instantAnswerKind:flightCarrierCode:flightArrivalAirportCode:flightDepartureAirportCode:flightDepartureDateComponents:flightArrivalDateComponents:flightNumber:flightCheckInUrl:flightDepartureTimeZone:flightArrivalTimeZone:flightBookingInfoUrl:flightCarrier:flightConfirmationNumber:hotelReservationId:hotelUnderName:hotelCheckinDateComponents:hotelCheckoutDateComponents:hotelTimeZone:hotelReservationForName:hotelReservationForTelephone:hotelReservationForAddress:hotelReservationForAddressLocality:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, const void *a15, const void *a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, const void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v145 = a9;
  v174 = a1;
  v123 = a2;
  v124 = a3;
  v171 = a4;
  v125 = a5;
  v170 = a6;
  v126 = a7;
  v169 = a8;
  v165 = a10;
  v164 = a11;
  v127 = a12;
  v163 = a13;
  v162 = a14;
  v161 = a15;
  v160 = a16;
  v159 = a17;
  v129 = a18;
  v158 = a19;
  v130 = a20;
  v157 = a21;
  v131 = a22;
  v156 = a23;
  v132 = a24;
  v155 = a25;
  v154 = a26;
  v151 = a27;
  v150 = a28;
  v140 = a29;
  v149 = a30;
  v141 = a31;
  v148 = a32;
  v142 = a33;
  v147 = a34;
  v144 = a35;
  v146 = a36;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v208 = 0;
  v209 = 0;
  v206 = 0;
  v207 = 0;
  v204 = 0;
  v205 = 0;
  v203 = 0;
  v202 = 0;
  v200 = 0;
  v201 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v194 = 0;
  v195 = 0;
  v192 = 0;
  v193 = 0;
  v190 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v183 = 0;
  v184 = 0;
  v181 = 0;
  v182 = 0;
  v179 = 0;
  v180 = 0;
  v177 = 0;
  v178 = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
  v106 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v138 = &v106 - v106;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
  v107 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v139 = &v106 - v107;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
  v108 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v128 = &v106 - v108;
  v113 = 0;
  v166 = sub_214CCCEB4();
  v152 = *(v166 - 8);
  v153 = v166 - 8;
  v109 = (v152[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113);
  v135 = &v106 - v109;
  v175 = sub_214CCD2B4();
  v172 = *(v175 - 8);
  v173 = v175 - 8;
  v110 = (*(v172 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113);
  v122 = &v106 - v110;
  v143 = type metadata accessor for SearchItem.InstantAnswer(v39);
  v111 = (*(*(v143 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v174);
  v40 = &v106 - v111;
  v176 = &v106 - v111;
  v212 = &v106 - v111;
  v211 = v41;
  v210 = v42;
  v208 = v43;
  v209 = v44;
  v206 = v45;
  v207 = v46;
  v204 = v47;
  v205 = v48;
  v203 = v165;
  v202 = v164;
  v49 = v143;
  v200 = v127;
  v201 = a13;
  v199 = a14;
  v198 = a15;
  v197 = a16;
  v196 = a17;
  v194 = a18;
  v195 = a19;
  v192 = a20;
  v193 = a21;
  v190 = v131;
  v191 = v156;
  v188 = v132;
  v189 = v155;
  v187 = v154;
  v186 = v151;
  v185 = v150;
  v183 = v140;
  v184 = v149;
  v181 = v50;
  v182 = v51;
  v179 = v52;
  v180 = v53;
  v177 = v144;
  v178 = v146;
  v54 = (&v106 + v143[6] - v111);
  *v54 = 0;
  v54[1] = 0;
  v55 = &v40[v49[11]];
  *v55 = 0;
  *(v55 + 1) = 0;
  v112 = v49[12];
  v115 = sub_214CCD154();
  v56 = *(v115 - 8);
  v117 = *(v56 + 56);
  v116 = v56 + 56;
  v118 = 1;
  v117(v176 + v112, 1);
  v114 = v143[13];
  v119 = sub_214CCD2F4();
  v57 = *(v119 - 8);
  v121 = *(v57 + 56);
  v120 = v57 + 56;
  v121(v176 + v114, v118);
  (v121)(v176 + v143[14], v118, v118, v119);
  (v117)(v176 + v143[15], v118, v118, v115);
  v58 = v118;
  v59 = v143;
  v60 = v152;
  v61 = v166;
  v62 = v176;
  v63 = (v176 + v143[16]);
  *v63 = 0;
  v63[1] = 0;
  v64 = (v62 + v59[17]);
  *v64 = 0;
  v64[1] = 0;
  v65 = (v62 + v59[18]);
  *v65 = 0;
  v65[1] = 0;
  v66 = (v62 + v59[19]);
  *v66 = 0;
  v66[1] = 0;
  (v60[7])(v62 + v59[21], v58, v58, v61);
  (v121)(v176 + v143[22], v118, v118, v119);
  v67 = v122;
  v68 = v143;
  v69 = v172;
  v70 = v174;
  v71 = v175;
  v72 = v176;
  v73 = (v176 + v143[24]);
  *v73 = 0;
  v73[1] = 0;
  v74 = (v72 + v68[25]);
  *v74 = 0;
  v74[1] = 0;
  v75 = (v72 + v68[26]);
  *v75 = 0;
  v75[1] = 0;
  (*(v69 + 16))(v67, v70, v71);
  (*(v172 + 32))(v176, v122, v175);
  *(v176 + v143[5]) = v123;

  v76 = v171;
  v77 = (v176 + v143[6]);
  *v77 = v124;
  v77[1] = v76;

  v78 = v170;
  v79 = (v176 + v143[7]);
  *v79 = v125;
  v79[1] = v78;

  v80 = v135;
  v81 = v152;
  v82 = v165;
  v83 = v166;
  v84 = v169;
  v85 = (v176 + v143[8]);
  *v85 = v126;
  v85[1] = v84;
  v134 = v81[2];
  v133 = v81 + 2;
  v134(v80, v82, v83);
  v86 = v143[9];
  v137 = v152[4];
  v136 = v152 + 4;
  v137(v176 + v86, v135, v166);
  v134(v135, v164, v166);
  v137(v176 + v143[10], v135, v166);

  v87 = v163;
  v88 = (v176 + v143[11]);
  *v88 = v127;
  v88[1] = v87;

  sub_214BA6CD4(v162, v128);
  sub_214BA6EC0(v128, (v176 + v143[12]));
  sub_214BA7180(v161, v139);
  sub_214BA736C(v139, (v176 + v143[13]));
  sub_214BA7180(v160, v139);
  sub_214BA736C(v139, (v176 + v143[14]));
  sub_214BA6CD4(v159, v128);
  sub_214BA6EC0(v128, (v176 + v143[15]));

  v89 = v158;
  v90 = (v176 + v143[16]);
  *v90 = v129;
  v90[1] = v89;

  v91 = v157;
  v92 = (v176 + v143[17]);
  *v92 = v130;
  v92[1] = v91;

  v93 = v156;
  v94 = (v176 + v143[18]);
  *v94 = v131;
  v94[1] = v93;

  v95 = v155;
  v96 = (v176 + v143[19]);
  *v96 = v132;
  v96[1] = v95;

  v134(v135, v154, v166);
  v137(v176 + v143[20], v135, v166);
  sub_214BA8018(v151, v138);
  sub_214BA8204(v138, (v176 + v143[21]));
  sub_214BA7180(v150, v139);
  sub_214BA736C(v139, (v176 + v143[22]));

  v97 = v149;
  v98 = (v176 + v143[23]);
  *v98 = v140;
  v98[1] = v97;

  v99 = v148;
  v100 = (v176 + v143[24]);
  *v100 = v141;
  v100[1] = v99;

  v101 = v147;
  v102 = (v176 + v143[25]);
  *v102 = v142;
  v102[1] = v101;

  v103 = v146;
  v104 = (v176 + v143[26]);
  *v104 = v144;
  v104[1] = v103;

  sub_214BAA9D0(v176, v145);

  sub_214BA7594(v150);
  sub_214BA842C(v151);
  v168 = v152[1];
  v167 = v152 + 1;
  v168(v154, v166);

  sub_214B6807C(v159);
  sub_214BA7594(v160);
  sub_214BA7594(v161);
  sub_214B6807C(v162);

  v168(v164, v166);
  v168(v165, v166);

  (*(v172 + 8))(v174, v175);
  return sub_214BAB488(v176);
}

uint64_t static SearchItem.InstantAnswer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5[1] = a1;
  v9 = a2;
  v21 = 0;
  v20 = 0;
  v16 = sub_214CCD2B4();
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v7 = v12[8];
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v14 = v5 - v6;
  v8 = v6;
  v2 = MEMORY[0x28223BE20](v5 - v6);
  v15 = v5 - v8;
  v21 = v3;
  v20 = v9;
  v11 = v12[2];
  v10 = v12 + 2;
  v11(v2);
  (v11)(v14, v9, v16);
  v19 = sub_214CCD284();
  v18 = v12[1];
  v17 = v12 + 1;
  v18(v14, v16);
  v18(v15, v16);
  return v19 & 1;
}

uint64_t SearchItem.InstantAnswer.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v7 = v1;
  v14 = 0;
  v13 = 0;
  v12 = sub_214CCD2B4();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v11 = &v5 - v8;
  v14 = v6;
  v13 = v3;
  (*(v9 + 16))(v2);
  sub_214B5C87C();
  sub_214CD0554();
  return (*(v9 + 8))(v11, v12);
}

uint64_t SearchItem.InstantAnswer.hashValue.getter()
{
  type metadata accessor for SearchItem.InstantAnswer(0);
  sub_214BACA14();
  return sub_214CD0114();
}

unint64_t sub_214BACA14()
{
  v2 = qword_27CA36380;
  if (!qword_27CA36380)
  {
    type metadata accessor for SearchItem.InstantAnswer(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BACAF8()
{
  v2 = qword_27CA36388;
  if (!qword_27CA36388)
  {
    type metadata accessor for SearchItem.InstantAnswer(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BACBC8(uint64_t a1)
{
  v9 = sub_214CCD2B4();
  if (v1 <= 0x3F)
  {
    v9 = type metadata accessor for CSInstantAnswersKind(319);
    if (v2 <= 0x3F)
    {
      v9 = sub_214B5CC3C(319);
      if (v3 <= 0x3F)
      {
        v9 = sub_214CCCEB4();
        if (v4 <= 0x3F)
        {
          v9 = sub_214BACE7C(319);
          if (v5 <= 0x3F)
          {
            v9 = sub_214BACF18(319);
            if (v6 <= 0x3F)
            {
              v9 = sub_214BACFB4(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v9;
}

unint64_t sub_214BACE7C(uint64_t a1)
{
  v5 = qword_280C7EB00;
  if (!qword_280C7EB00)
  {
    sub_214CCD154();
    v4 = sub_214CCFF34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_280C7EB00);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_214BACF18(uint64_t a1)
{
  v5 = qword_280C7EAC8;
  if (!qword_280C7EAC8)
  {
    sub_214CCD2F4();
    v4 = sub_214CCFF34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_280C7EAC8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_214BACFB4(uint64_t a1)
{
  v5 = qword_280C7EB20;
  if (!qword_280C7EB20)
  {
    sub_214CCCEB4();
    v4 = sub_214CCFF34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_280C7EB20);
      return v2;
    }
  }

  return v5;
}

uint64_t ECEmailAddressConvertible.intentPerson.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v36 = 0;
  v37 = a1;
  v22 = 0;
  v20 = (*(*(sub_214CCCC64() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v21 = &v10 - v20;
  v23 = sub_214CCCC74();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v27 = (&v10 - v26);
  v29 = (*(*(sub_214CCCC94() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v28);
  v30 = &v10 - v29;
  v36 = v3;
  v31 = [v3 emailAddressValue];
  if (v31)
  {
    v18 = v31;
    v12 = v31;
    v13 = [v31 stringValue];
    v14 = sub_214CCF564();
    v15 = v4;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v32 = v16;
  v33 = v17;
  swift_unknownObjectRetain();
  if (v33)
  {
    v34 = v32;
    v35 = v33;
  }

  else
  {
    v11 = [v28 stringValue];
    v34 = sub_214CCF564();
    v35 = v5;
    MEMORY[0x277D82BD8](v11);
    if (v33)
    {
      sub_214A61B48(&v32);
    }
  }

  swift_unknownObjectRelease();
  v6 = v24;
  v7 = v27;
  v8 = v35;
  *v27 = v34;
  v7[1] = v8;
  (*(v6 + 104))();
  sub_214BAD354(v21);
  sub_214CCCCA4();
  return sub_214CCCCB4();
}

uint64_t sub_214BAD354@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CB9D48];
  v1 = sub_214CCCC64();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t String.intentPerson.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v14 = a1;
  v15 = a2;
  v23 = 0;
  v24 = 0;
  v11 = 0;
  v10 = (*(*(sub_214CCCC64() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v20 = &v9 - v10;
  v18 = sub_214CCCC74();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v19 = (&v9 - v12);
  v13 = (*(*(sub_214CCCC94() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v22 = &v9 - v13;
  v23 = v3;
  v24 = v4;

  v5 = v19;
  v6 = v15;
  v7 = v16;
  *v19 = v14;
  v5[1] = v6;
  (*(v7 + 104))();
  sub_214BAD354(v20);
  sub_214CCCCA4();
  return sub_214CCCCB4();
}

uint64_t CSPerson.intentPerson.getter@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v17 = 0;
  v15 = (*(*(sub_214CCCC64() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v9 - v15;
  v18 = sub_214CCCC74();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v22 = (&v9 - v21);
  v24 = (*(*(sub_214CCCC94() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v23);
  v25 = &v9 - v24;
  v36 = v2;
  v26 = [v2 handles];
  v27 = sub_214CCF7E4();
  v35 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  sub_214B50C54();
  sub_214CCFA74();
  v29 = v33;
  v30 = v34;
  if (v34)
  {
    v12 = v29;
    v13 = v30;
    v11 = v30;
    v10 = v29;
    v31 = v29;
    v32 = v30;

    MEMORY[0x277D82BD8](v26);

    v3 = v22;
    v4 = v19;
    v5 = v11;
    *v22 = v10;
    v3[1] = v5;
    (*(v4 + 104))();
    sub_214BAD354(v16);
    sub_214CCCCA4();
    sub_214CCCCB4();
    v6 = sub_214CCCCE4();
    (*(*(v6 - 8) + 56))(v14, 0, 1);
  }

  else
  {

    MEMORY[0x277D82BD8](v26);
    v8 = sub_214CCCCE4();
    return (*(*(v8 - 8) + 56))(v14, 1);
  }
}

uint64_t CSSearchableItem.toIntentPersons.getter()
{
  v23 = 0;
  v30 = v0;
  v24 = [v0 attributeSet];
  v25 = [v24 recipientEmailAddresses];
  if (v25)
  {
    v22 = v25;
    v19 = v25;
    v20 = sub_214CCF7E4();

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v28 = v21;
  if (v21)
  {
    v1 = v23;
    v10 = v28;

    sub_214A62278(&v28);

    v26 = v10;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;

    v13 = v6;
    MEMORY[0x28223BE20](KeyPath);
    v14 = v5;
    v5[2] = sub_214BADCC4;
    v5[3] = v2;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
    v16 = sub_214CCCCE4();
    sub_214B22E9C();
    v3 = sub_214CCF6F4();
    v17 = v1;
    v18 = v3;
    v7 = v3;

    sub_214A62278(&v26);
    v8 = v7;
    v9 = v17;
  }

  else
  {
    sub_214A62278(&v28);

    v8 = 0;
    v9 = v23;
  }

  v27 = v8;
  if (v8)
  {
    return v27;
  }

  v6[1] = 0;
  v6[2] = sub_214CCCCE4();
  v29 = sub_214CD03C4();
  if (v27)
  {
    sub_214A62278(&v27);
  }

  return v29;
}

uint64_t sub_214BADB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v11 = sub_214CCCCE4();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v10 = &v5 - v6;
  sub_214A61AD0(v3, &v13);
  v12 = v14;
  String.intentPerson.getter(v13, v14, v10);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t sub_214BADC54(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6[0] = a1;
  v6[1] = a2;
  swift_getAtKeyPath();
  sub_214A61B48(v6);
}

uint64_t sub_214BADCCC@<X0>(void *a1@<X0>, void (*a2)(void, void, double)@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v8 = a1;
  v9 = a2;
  v13 = sub_214CCCCE4();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v13);
  v10 = &v6 - v7;
  v9(*v8, v8[1], v4);
  (*(v11 + 32))(v14, v10, v13);
  return (*(v11 + 56))(v14, 0, 1, v13);
}

uint64_t CSSearchableItem.ccIntentPersons.getter()
{
  v19 = 0;
  v26 = v0;
  v20 = [v0 attributeSet];
  v22 = CSSearchableItemAttributeSet.additionalRecipientEmailAddresses.getter();
  v21 = v22;

  if (v22)
  {
    v18 = v21;
    v1 = v19;
    v23 = v21;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = v6;
    MEMORY[0x28223BE20](KeyPath);
    v13 = v5;
    v5[2] = sub_214BADCC4;
    v5[3] = v2;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
    v15 = sub_214CCCCE4();
    sub_214B22E9C();
    v3 = sub_214CCF6F4();
    v16 = v1;
    v17 = v3;
    v7 = v3;

    sub_214A62278(&v23);
    v8 = v7;
    v9 = v16;
  }

  else
  {
    v8 = 0;
    v9 = v19;
  }

  v24 = v8;
  if (v8)
  {
    return v24;
  }

  v6[1] = 0;
  v6[2] = sub_214CCCCE4();
  v25 = sub_214CD03C4();
  if (v24)
  {
    sub_214A62278(&v24);
  }

  return v25;
}

uint64_t CSSearchableItem.bccIntentPersons.getter()
{
  v19 = 0;
  v26 = v0;
  v20 = [v0 attributeSet];
  v22 = CSSearchableItemAttributeSet.hiddenAdditionalRecipientEmailAddresses.getter();
  v21 = v22;

  if (v22)
  {
    v18 = v21;
    v1 = v19;
    v23 = v21;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = v6;
    MEMORY[0x28223BE20](KeyPath);
    v13 = v5;
    v5[2] = sub_214BADCC4;
    v5[3] = v2;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
    v15 = sub_214CCCCE4();
    sub_214B22E9C();
    v3 = sub_214CCF6F4();
    v16 = v1;
    v17 = v3;
    v7 = v3;

    sub_214A62278(&v23);
    v8 = v7;
    v9 = v16;
  }

  else
  {
    v8 = 0;
    v9 = v19;
  }

  v24 = v8;
  if (v8)
  {
    return v24;
  }

  v6[1] = 0;
  v6[2] = sub_214CCCCE4();
  v25 = sub_214CD03C4();
  if (v24)
  {
    sub_214A62278(&v24);
  }

  return v25;
}

void CSSearchableItem.senderIntentPerson.getter(uint64_t a1@<X8>)
{
  v59 = a1;
  v100 = 0;
  v99 = 0;
  v95 = 0;
  v96 = 0;
  v92 = 0;
  v93 = 0;
  v85 = 0;
  v72 = 0;
  v60 = sub_214CCCC34();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v64 = (&v9 - v63);
  v65 = (*(*(sub_214CCCC64() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v66 = &v9 - v65;
  v67 = sub_214CCCC74();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v71 = (&v9 - v70);
  v73 = (*(*(sub_214CCCC94() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v74 = &v9 - v73;
  v76 = sub_214CCCCE4();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v75);
  v80 = &v9 - v79;
  v100 = &v9 - v79;
  v99 = v2;
  v81 = [v2 attributeSet];
  v82 = [v81 authors];
  if (v82)
  {
    v58 = v82;
    v55 = v82;
    sub_214BAEE14();
    v56 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v55);
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  v98 = v57;
  if (v57)
  {
    v50 = &v98;
    v52 = v98;

    sub_214A62278(v50);
    MEMORY[0x277D82BD8](v81);
    v84 = v52;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36390, &qword_214CF18B8);
    sub_214BAED8C();
    sub_214CCFA74();
    v53 = v83;

    v54 = v53;
  }

  else
  {
    sub_214A62278(&v98);
    MEMORY[0x277D82BD8](v81);
    v54 = 0;
  }

  v49 = v54;
  if (v54)
  {
    v48 = v49;
    v47 = v49;
    v85 = v49;
    CSPerson.intentPerson.getter(v59);
    MEMORY[0x277D82BD8](v47);
  }

  else
  {
    v45 = [v75 attributeSet];
    v46 = [v45 authorEmailAddresses];
    if (v46)
    {
      v44 = v46;
      v41 = v46;
      v42 = sub_214CCF7E4();
      MEMORY[0x277D82BD8](v41);
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v97 = v43;
    if (v43)
    {
      v34 = &v97;
      v36 = v97;

      sub_214A62278(v34);
      MEMORY[0x277D82BD8](v45);
      v88 = v36;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
      sub_214B50C54();
      sub_214CCFA74();
      v37 = v86;
      v38 = v87;

      v39 = v37;
      v40 = v38;
    }

    else
    {
      sub_214A62278(&v97);
      MEMORY[0x277D82BD8](v45);
      v39 = 0;
      v40 = 0;
    }

    v32 = v40;
    v33 = v39;
    if (v40)
    {
      v30 = v33;
      v31 = v32;
      v27 = v32;
      v26 = v33;
      v95 = v33;
      v96 = v32;

      v3 = v71;
      v4 = v27;
      v5 = v68;
      *v71 = v26;
      v3[1] = v4;
      (*(v5 + 104))();
      sub_214BAD354(v66);
      sub_214CCCCA4();
      sub_214CCCCB4();
      v28 = [v75 attributeSet];
      v29 = [v28 authorNames];
      if (v29)
      {
        v25 = v29;
        v22 = v29;
        v23 = sub_214CCF7E4();
        MEMORY[0x277D82BD8](v22);
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v94 = v24;
      if (v24)
      {
        v15 = &v94;
        v17 = v94;

        sub_214A62278(v15);
        MEMORY[0x277D82BD8](v28);
        v91 = v17;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
        sub_214B50C54();
        sub_214CCFA74();
        v18 = v89;
        v19 = v90;

        v20 = v18;
        v21 = v19;
      }

      else
      {
        sub_214A62278(&v94);
        MEMORY[0x277D82BD8](v28);
        v20 = 0;
        v21 = 0;
      }

      v13 = v21;
      v14 = v20;
      if (v21)
      {
        v11 = v14;
        v12 = v13;
        v10 = v13;
        v9 = v14;
        v92 = v14;
        v93 = v13;

        v6 = v64;
        v7 = v61;
        v8 = v10;
        *v64 = v9;
        v6[1] = v8;
        (*(v7 + 104))();
        sub_214CCCC54();
      }

      (*(v77 + 16))(v59, v80, v76);
      (*(v77 + 56))(v59, 0, 1, v76);
      (*(v77 + 8))(v80, v76);
    }

    else
    {
      (*(v77 + 56))(v59, 1, 1, v76);
    }
  }
}

unint64_t sub_214BAED8C()
{
  v2 = qword_27CA36398;
  if (!qword_27CA36398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36390, &qword_214CF18B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BAEE14()
{
  v2 = qword_27CA363A0;
  if (!qword_27CA363A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA363A0);
    return ObjCClassMetadata;
  }

  return v2;
}

double CSSearchableItem.mailMessageEntityID.getter()
{
  v19 = 0;
  v20 = 0;
  v23 = v0;
  v15 = [v0 domainIdentifier];
  if (v15)
  {
    v11 = sub_214CCF564();
    v12 = v1;
    MEMORY[0x277D82BD8](v15);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v9 = sub_214CCF614("com.apple.email.search-indexer", 30, 1);
  v10 = v2;

  v21[0] = v13;
  v21[1] = v14;
  *&v22 = v9;
  *(&v22 + 1) = v10;
  if (v14)
  {
    sub_214A61AD0(v21, &v18);
    if (*(&v22 + 1))
    {
      v17 = v18;
      v16 = v22;
      v7 = MEMORY[0x21605D8D0](v18, *(&v18 + 1), v22, *(&v22 + 1));
      sub_214A61B48(&v16);
      sub_214A61B48(&v17);
      sub_214A61B48(v21);
      v8 = v7;
      goto LABEL_10;
    }

    sub_214A61B48(&v18);
    goto LABEL_12;
  }

  if (*(&v22 + 1))
  {
LABEL_12:
    sub_214A76610(v21);
    v8 = 0;
    goto LABEL_10;
  }

  sub_214A61B48(v21);
  v8 = 1;
LABEL_10:

  if (v8)
  {
    v6 = sub_214CCD3C4();
  }

  else
  {
    v6 = sub_214CCD3D4();
  }

  v19 = v6;
  v20 = v3;
  [v0 attributeSet];
  v5 = [v0 uniqueIdentifier];
  sub_214CCF564();
  sub_214CCD3B4();
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t Array<A>.asIntentFiles.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  sub_214CCCBF4();
  sub_214B22E9C();
  return sub_214CCF6F4();
}

uint64_t sub_214BAF1E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v19 = a1;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA363A8, &qword_214CF18C8);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v13 = &v9 - v12;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
  v14 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v23 = &v9 - v14;
  v24 = sub_214CCD154();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v16 = *(v21 + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v17 = &v9 - v15;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v9 - v15);
  v20 = &v9 - v18;
  v27 = &v9 - v18;
  v4 = v19[1];
  v25 = *v19;
  v26 = v4;
  sub_214CCD144();
  if ((*(v21 + 48))(v23, 1, v24) == 1)
  {
    sub_214B6807C(v23);
    v5 = sub_214CCCBF4();
    return (*(*(v5 - 8) + 56))(v11, 1);
  }

  else
  {
    (*(v21 + 32))(v20, v23, v24);
    (*(v21 + 16))(v17, v20, v24);
    v9 = 0;
    v7 = *(*(sub_214CCD794() - 8) + 56);
    v10 = 1;
    v7(v13, 1);
    sub_214CCCBE4();
    v8 = sub_214CCCBF4();
    (*(*(v8 - 8) + 56))(v11, 0, v10);
    return (*(v21 + 8))(v20, v24);
  }
}

uint64_t SearchItem.LegacySuggested.id.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_214CCD2B4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t SearchItem.LegacySuggested.image.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.LegacySuggested(0) + 20));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t type metadata accessor for SearchItem.LegacySuggested(uint64_t a1)
{
  v2 = qword_280C7E6D8;
  if (!qword_280C7E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

double SearchItem.LegacySuggested.image.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for SearchItem.LegacySuggested(0) + 20));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t SearchItem.LegacySuggested.secondaryText.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.LegacySuggested(0) + 24));

  return v2;
}

uint64_t SearchItem.LegacySuggested.secondaryText.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.LegacySuggested(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.LegacySuggested.text.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.LegacySuggested(0) + 28));

  return v2;
}

uint64_t SearchItem.LegacySuggested.text.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.LegacySuggested(0) + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.LegacySuggested.tintColor.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.LegacySuggested(0) + 32));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double SearchItem.LegacySuggested.tintColor.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for SearchItem.LegacySuggested(0) + 32));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t SearchItem.LegacySuggested.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SearchItem.LegacySuggested(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SearchItem.LegacySuggested.kind.setter(char *a1)
{
  v3 = *a1;
  result = type metadata accessor for SearchItem.LegacySuggested(0);
  *(v1 + *(result + 36)) = v3;
  return result;
}

uint64_t SearchItem.LegacySuggested.init(id:image:secondaryText:text:tintColor:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a9;
  v51 = a1;
  v48 = a2;
  v40 = a3;
  v47 = a4;
  v41 = a5;
  v46 = a6;
  v45 = a7;
  v37 = a8;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v38 = 0;
  v52 = sub_214CCD2B4();
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v36 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v39 = &v35 - v36;
  v42 = type metadata accessor for SearchItem.LegacySuggested(v9);
  v10 = MEMORY[0x28223BE20](v39);
  v11 = v38;
  v12 = v42;
  v13 = v49;
  v53 = &v35 - v14;
  v62 = &v35 - v14;
  v61 = v15;
  v60 = v16;
  v58 = v17;
  v59 = v18;
  v56 = v19;
  v57 = v20;
  v55 = v21;
  v43 = *v22;
  v54 = v43;
  v23 = (&v35 + v42[6] - v14);
  *v23 = 0;
  v23[1] = 0;
  *(&v35 + v12[8] - v14) = v11;
  (*(v13 + 16))(v10);
  (*(v49 + 32))(v53, v39, v52);
  MEMORY[0x277D82BE0](v48);
  *(v53 + v42[5]) = v48;

  v24 = v47;
  v25 = (v53 + v42[6]);
  *v25 = v40;
  v25[1] = v24;

  v26 = v45;
  v27 = v46;
  v28 = (v53 + v42[7]);
  *v28 = v41;
  v28[1] = v27;
  MEMORY[0x277D82BE0](v26);
  v29 = (v53 + v42[8]);
  v30 = *v29;
  *v29 = v45;
  MEMORY[0x277D82BD8](v30);
  v31 = v44;
  v32 = v53;
  *(v53 + v42[9]) = v43;
  sub_214BB003C(v32, v31);
  MEMORY[0x277D82BD8](v45);

  v33 = MEMORY[0x277D82BD8](v48);
  (*(v49 + 8))(v51, v52, v33);
  return sub_214BB01BC(v53);
}

uint64_t sub_214BB003C(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v14 = type metadata accessor for SearchItem.LegacySuggested(0);
  v6 = v14[5];
  v7 = *(a1 + v6);
  MEMORY[0x277D82BE0](v7);
  *(a2 + v6) = v7;
  v3 = v14[6];
  v8 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v9 = *(a1 + v3 + 8);

  *(v8 + 8) = v9;
  v4 = v14[7];
  v10 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v11 = *(a1 + v4 + 8);

  *(v10 + 8) = v11;
  v12 = v14[8];
  v13 = *(a1 + v12);
  MEMORY[0x277D82BE0](v13);
  result = a2;
  *(a2 + v12) = v13;
  *(a2 + v14[9]) = *(a1 + v14[9]);
  return result;
}

uint64_t sub_214BB01BC(uint64_t a1)
{
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1);
  v3 = type metadata accessor for SearchItem.LegacySuggested(0);
  MEMORY[0x277D82BD8](*(a1 + *(v3 + 20)));

  MEMORY[0x277D82BD8](*(a1 + *(v3 + 32)));
  return a1;
}

BOOL static SearchItem.LegacySuggested.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v36 = a2;
  v60 = 0;
  v59 = 0;
  v43 = sub_214CCD2B4();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v34 = v39[8];
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v41 = &v8 - v33;
  v35 = v33;
  v2 = MEMORY[0x28223BE20](&v8 - v33);
  v42 = &v8 - v35;
  v60 = v3;
  v59 = v36;
  v38 = v39[2];
  v37 = v39 + 2;
  v38(v2);
  (v38)(v41, v36, v43);
  v46 = sub_214CCD284();
  v45 = v39[1];
  v44 = v39 + 1;
  v45(v41, v43);
  v45(v42, v43);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

  v27 = 0;
  sub_214A77084();
  v28 = type metadata accessor for SearchItem.LegacySuggested(v27);
  v30 = *(v32 + v28[5]);
  MEMORY[0x277D82BE0](v30);
  v29 = *(v36 + v28[5]);
  MEMORY[0x277D82BE0](v29);
  v31 = sub_214CCFD64();
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  v4 = (v32 + v28[6]);
  v24 = *v4;
  v25 = v4[1];

  v26 = *(v36 + v28[6]);

  v57[0] = v24;
  v57[1] = v25;
  v58 = v26;
  if (v25)
  {
    sub_214A61AD0(v57, &v49);
    if (*(&v58 + 1))
    {
      v21 = &v48;
      v48 = v49;
      v20 = &v47;
      v47 = v58;
      v22 = MEMORY[0x21605D8D0](v49, *(&v49 + 1), v58, *(&v58 + 1));
      sub_214A61B48(v20);
      sub_214A61B48(v21);
      sub_214A61B48(v57);
      v23 = v22;
      goto LABEL_9;
    }

    sub_214A61B48(&v49);
    goto LABEL_11;
  }

  if (*(&v58 + 1))
  {
LABEL_11:
    sub_214A76610(v57);
    v23 = 0;
    goto LABEL_9;
  }

  sub_214A61B48(v57);
  v23 = 1;
LABEL_9:
  v19 = v23;

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v5 = (v32 + v28[7]);
  v14 = *v5;
  v17 = v5[1];

  v6 = (v36 + v28[7]);
  v15 = *v6;
  v16 = v6[1];

  v18 = MEMORY[0x21605D8D0](v14, v17, v15, v16);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v12 = *(v32 + v28[8]);
  MEMORY[0x277D82BE0](v12);
  MEMORY[0x277D82BE0](v12);
  v13 = *(v36 + v28[8]);
  MEMORY[0x277D82BE0](v13);
  MEMORY[0x277D82BE0](v13);
  v55 = v12;
  v56 = v13;
  if (v12)
  {
    sub_214A671A8(&v55, &v52);
    if (v56)
    {
      v51 = v52;
      v50 = v56;
      sub_214A65CE0();
      v10 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
      sub_214A671E8(&v55);
      v11 = v10;
      goto LABEL_20;
    }

    MEMORY[0x277D82BD8](v52);
    goto LABEL_22;
  }

  if (v56)
  {
LABEL_22:
    sub_214A68120(&v55);
    v11 = 0;
    goto LABEL_20;
  }

  sub_214A671E8(&v55);
  v11 = 1;
LABEL_20:
  v9 = v11;
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v12);
  if (v9)
  {
    v54 = *(v32 + v28[9]);
    v53 = *(v36 + v28[9]);
    return static SearchItem.LegacySuggested.Kind.== infix(_:_:)(&v54, &v53);
  }

  else
  {
    return 0;
  }
}

BOOL static SearchItem.LegacySuggested.Kind.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t SearchItem.LegacySuggested.hash(into:)(uint64_t a1)
{
  v28 = a1;
  v2 = v1;
  v30 = v2;
  v39 = 0;
  v38 = 0;
  v16 = 0;
  v14 = sub_214CCD2B4();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14);
  v13 = &v10 - v10;
  v39 = a1;
  v38 = v5;
  (*(v11 + 16))(v4);
  sub_214B5C87C();
  sub_214CD0554();
  (*(v11 + 8))(v13, v14);
  v31 = type metadata accessor for SearchItem.LegacySuggested(v16);
  v15 = *(v30 + v31[5]);
  MEMORY[0x277D82BE0](v15);
  v18 = &v37;
  v37 = v15;
  v17 = sub_214A731BC();
  sub_214A74FE8();
  sub_214CD0554();
  MEMORY[0x277D82BD8](v37);
  v6 = (v30 + v31[6]);
  v19 = *v6;
  v20 = v6[1];

  v22 = v36;
  v36[0] = v19;
  v36[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0, &qword_214CF1CD0);
  sub_214A75068();
  sub_214CD0554();
  sub_214A61B48(v22);
  v7 = (v30 + v31[7]);
  v23 = *v7;
  v24 = v7[1];

  v25 = v35;
  v35[0] = v23;
  v35[1] = v24;
  sub_214CD0554();
  sub_214A61B48(v25);
  v26 = *(v30 + v31[8]);
  MEMORY[0x277D82BE0](v26);
  v29 = &v34;
  v34 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35300, &qword_214CEEE18);
  sub_214A75190();
  sub_214CD0554();
  sub_214A671E8(v29);
  v8 = *(v30 + v31[9]);
  v32 = &v33;
  v33 = v8;
  sub_214BB0E24();
  return sub_214CD0554();
}

unint64_t sub_214BB0E24()
{
  v2 = qword_27CA363B0;
  if (!qword_27CA363B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchItem.LegacySuggested.hashValue.getter()
{
  type metadata accessor for SearchItem.LegacySuggested(0);
  sub_214BB0EE8();
  return sub_214CD0114();
}

unint64_t sub_214BB0EE8()
{
  v2 = qword_27CA363B8;
  if (!qword_27CA363B8)
  {
    type metadata accessor for SearchItem.LegacySuggested(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB1130()
{
  v2 = qword_27CA363C0;
  if (!qword_27CA363C0)
  {
    type metadata accessor for SearchItem.LegacySuggested(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB11C8()
{
  v2 = qword_27CA363C8;
  if (!qword_27CA363C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB1294(uint64_t a1)
{
  v6 = sub_214CCD2B4();
  if (v1 <= 0x3F)
  {
    v6 = sub_214A731BC();
    if (v2 <= 0x3F)
    {
      v6 = sub_214B5CC3C(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_214B943D0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

uint64_t SearchItem.Link.senders.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t SearchItem.Link.senders.setter(uint64_t a1)
{

  *v1 = a1;
}

uint64_t SearchItem.Link.id.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = *(type metadata accessor for SearchItem.Link(0) + 20);
  v3 = sub_214CCD2B4();
  return (*(*(v3 - 8) + 16))(a1, v2 + v5);
}

uint64_t type metadata accessor for SearchItem.Link(uint64_t a1)
{
  v2 = qword_280C7E638;
  if (!qword_280C7E638)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SearchItem.Link.id.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCD2B4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.Link(v8);
  (*(v10 + 40))(v1 + *(v4 + 20), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.Link.url.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.Link(0) + 24);
  v2 = sub_214CCD154();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchItem.Link.url.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCD154();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.Link(v8);
  (*(v10 + 40))(v1 + *(v4 + 24), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.Link.title.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Link(0) + 28));

  return v2;
}

uint64_t SearchItem.Link.title.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Link(0) + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Link.richLinkID.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Link(0) + 32));

  return v2;
}

uint64_t SearchItem.Link.richLinkID.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Link(0) + 32));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Link.messageID.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Link(0) + 36));

  return v2;
}

uint64_t SearchItem.Link.messageID.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Link(0) + 36));
  *v3 = a1;
  v3[1] = a2;
}

char *SearchItem.Link.init(senders:id:url:title:richLinkID:messageID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = a9;
  v50 = a1;
  v48 = a2;
  v44 = a3;
  v34 = a4;
  v41 = a5;
  v35 = a6;
  v40 = a7;
  v37 = a8;
  v39 = a10;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v29 = 0;
  v45 = sub_214CCD154();
  v42 = *(v45 - 8);
  v43 = v45 - 8;
  v28 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v33 = &v28 - v28;
  v49 = sub_214CCD2B4();
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v30 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v32 = &v28 - v30;
  v36 = type metadata accessor for SearchItem.Link(v10);
  v31 = (*(*(v36 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v51 = &v28 - v31;
  v61 = &v28 - v31;
  v60 = v11;
  v59 = v12;
  v58 = v13;
  v56 = v14;
  v57 = v15;
  v54 = v16;
  v55 = v17;
  v52 = v18;
  v53 = v39;
  *v51 = 0;

  *v51 = v50;

  (*(v46 + 16))(v32, v48, v49);
  (*(v46 + 32))(&v51[v36[5]], v32, v49);
  (*(v42 + 16))(v33, v44, v45);
  (*(v42 + 32))(&v51[v36[6]], v33, v45);

  v19 = v41;
  v20 = &v51[v36[7]];
  *v20 = v34;
  *(v20 + 1) = v19;

  v21 = v40;
  v22 = &v51[v36[8]];
  *v22 = v35;
  *(v22 + 1) = v21;

  v23 = v51;
  v24 = v38;
  v25 = v39;
  v26 = &v51[v36[9]];
  *v26 = v37;
  *(v26 + 1) = v25;
  sub_214BB20E4(v23, v24);

  (*(v42 + 8))(v44, v45);
  (*(v46 + 8))(v48, v49);

  return sub_214BB22B4(v51);
}

char *sub_214BB20E4(char *a1, char *a2)
{
  v8 = *a1;

  *a2 = v8;
  v16 = type metadata accessor for SearchItem.Link(0);
  v9 = v16[5];
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(&a2[v9], &a1[v9]);
  v10 = v16[6];
  v3 = sub_214CCD154();
  (*(*(v3 - 8) + 16))(&a2[v10], &a1[v10]);
  v4 = v16[7];
  v11 = &a2[v4];
  *&a2[v4] = *&a1[v4];
  v12 = *&a1[v4 + 8];

  *(v11 + 1) = v12;
  v5 = v16[8];
  v14 = &a2[v5];
  *&a2[v5] = *&a1[v5];
  v15 = *&a1[v5 + 8];

  *(v14 + 1) = v15;
  v6 = v16[9];
  v18 = &a2[v6];
  *&a2[v6] = *&a1[v6];
  v19 = *&a1[v6 + 8];

  result = a2;
  *(v18 + 1) = v19;
  return result;
}

char *sub_214BB22B4(char *a1)
{

  v6 = type metadata accessor for SearchItem.Link(0);
  v4 = *(v6 + 20);
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(&a1[v4]);
  v5 = *(v6 + 24);
  v2 = sub_214CCD154();
  (*(*(v2 - 8) + 8))(&a1[v5]);

  return a1;
}

char *SearchItem.Link.init(suggestion:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v46 = a1;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v36 = 0;
  v34 = (*(*(sub_214CCD154() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v35 = &v13 - v34;
  v37 = (*(*(sub_214CCD2B4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v38 = &v13 - v37;
  v39 = type metadata accessor for SearchItem.Link(v2);
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v43 = &v13 - v42;
  v44 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v45 = &v13 - v44;
  v50 = &v13 - v44;
  v49 = v5;
  *&v6 = MEMORY[0x277D82BE0](v5).n128_u64[0];
  v47 = [v46 authors];
  if (v47)
  {
    v32 = v47;
    v29 = v47;
    v30 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v29);
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v27 = v31;
  MEMORY[0x277D82BD8](v46);
  *&v7 = MEMORY[0x277D82BE0](v46).n128_u64[0];
  v28 = [v46 authorEmailAddresses];
  if (v28)
  {
    v26 = v28;
    v23 = v28;
    v24 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v23);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v13 = v25;
  MEMORY[0x277D82BD8](v46);
  v18 = sub_214B65BF4(v27, v13);

  v48 = v18;
  sub_214CCD2A4();
  v22 = [v46 url];
  sub_214CCD124();
  v21 = [v46 title];
  v14 = sub_214CCF564();
  v15 = v8;
  v20 = [v46 richLinkID];
  v16 = sub_214CCF564();
  v17 = v9;
  v19 = [v46 messageID];
  v10 = sub_214CCF564();
  SearchItem.Link.init(senders:id:url:title:richLinkID:messageID:)(v18, v38, v35, v14, v15, v16, v17, v10, v43, v11);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  sub_214BB2898(v43, v45);
  sub_214BB20E4(v45, v33);
  (*(v40 + 56))(v33, 0, 1, v39);
  MEMORY[0x277D82BD8](v46);
  return sub_214BB22B4(v45);
}

__n128 sub_214BB2898(char *a1, char *a2)
{
  *a2 = *a1;
  v7 = type metadata accessor for SearchItem.Link(0);
  v5 = v7[5];
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(&a2[v5], &a1[v5]);
  v6 = v7[6];
  v3 = sub_214CCD154();
  (*(*(v3 - 8) + 32))(&a2[v6], &a1[v6]);
  *&a2[v7[7]] = *&a1[v7[7]];
  *&a2[v7[8]] = *&a1[v7[8]];
  result = *&a1[v7[9]];
  *&a2[v7[9]] = result;
  return result;
}

BOOL static SearchItem.Link.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v62 = a1;
  v70 = a2;
  v79 = 0;
  v78 = 0;
  v54 = 0;
  v55 = sub_214CCD154();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (v56[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v59 = &v17[-v58];
  v60 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v61 = &v17[-v60];
  v63 = sub_214CCD2B4();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (v64[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v67 = &v17[-v66];
  v68 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v69 = &v17[-v68];
  v79 = v6;
  v78 = v7;
  v71 = *v6;

  v72 = *v70;

  v76 = v71;
  v77 = v72;
  if (v71)
  {
    sub_214B1C04C(&v76, &v75);
    if (v77)
    {
      v50 = &v74;
      v74 = v75;
      v51 = &v76;
      v49 = &v73;
      v73 = v77;
      v48 = v75;
      v46 = v77;
      v47 = sub_214B63E30();
      sub_214B63E94();
      v52 = sub_214CCF8E4();
      sub_214A62278(v49);
      sub_214A62278(v50);
      sub_214A62278(v51);
      v53 = v52;
      goto LABEL_7;
    }

    sub_214A62278(&v75);
    goto LABEL_9;
  }

  if (v77)
  {
LABEL_9:
    sub_214B63DF8(&v76);
    v53 = 0;
    goto LABEL_7;
  }

  sub_214A62278(&v76);
  v53 = 1;
LABEL_7:
  v45 = v53;

  if (v45)
  {
    v39 = type metadata accessor for SearchItem.Link(0);
    v8 = v62 + v39[5];
    v41 = v64[2];
    v40 = v64 + 2;
    v41(v69, v8, v63);
    v41(v67, v70 + v39[5], v63);
    v44 = sub_214CCD284();
    v43 = v64[1];
    v42 = v64 + 1;
    v43(v67, v63);
    v43(v69, v63);
    if (v44)
    {
      v9 = v62 + v39[6];
      v35 = v56[2];
      v34 = v56 + 2;
      v35(v61, v9, v55);
      v35(v59, v70 + v39[6], v55);
      v38 = sub_214CCD114();
      v37 = v56[1];
      v36 = v56 + 1;
      v37(v59, v55);
      v37(v61, v55);
      if (v38)
      {
        v10 = (v62 + v39[7]);
        v29 = *v10;
        v32 = v10[1];

        v11 = (v70 + v39[7]);
        v30 = *v11;
        v31 = v11[1];

        v33 = MEMORY[0x21605D8D0](v29, v32, v30, v31);

        if (v33)
        {
          v12 = (v62 + v39[8]);
          v24 = *v12;
          v27 = v12[1];

          v13 = (v70 + v39[8]);
          v25 = *v13;
          v26 = v13[1];

          v28 = MEMORY[0x21605D8D0](v24, v27, v25, v26);

          if (v28)
          {
            v14 = (v62 + v39[9]);
            v19 = *v14;
            v22 = v14[1];

            v15 = (v70 + v39[9]);
            v20 = *v15;
            v21 = v15[1];

            v23 = MEMORY[0x21605D8D0](v19, v22, v20, v21);

            return (v23 & 1) != 0;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void SearchItem.Link.hash(into:)(uint64_t a1)
{
  v28 = a1;
  v2 = v1;
  v30 = v2;
  v42 = 0;
  v41 = 0;
  v14 = 0;
  v22 = sub_214CCD154();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v9 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v21 = &v8 - v9;
  v18 = sub_214CCD2B4();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v17 = &v8 - v10;
  v42 = a1;
  v41 = v4;
  v11 = *v4;

  v13 = &v40;
  v40 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359B0, &qword_214CEFDD8);
  sub_214B642F0();
  sub_214CD0554();
  sub_214A62278(v13);
  v31 = type metadata accessor for SearchItem.Link(v14);
  (*(v15 + 16))(v17, v30 + v31[5], v18);
  sub_214B5C87C();
  sub_214CD0554();
  (*(v15 + 8))(v17, v18);
  (*(v19 + 16))(v21, v30 + v31[6], v22);
  sub_214B644A0();
  sub_214CD0554();
  (*(v19 + 8))(v21, v22);
  v5 = (v30 + v31[7]);
  v23 = *v5;
  v24 = v5[1];

  v25 = v39;
  v39[0] = v23;
  v39[1] = v24;
  v34 = MEMORY[0x277D837D0];
  v35 = MEMORY[0x277D837E0];
  sub_214CD0554();
  sub_214A61B48(v25);
  v6 = (v30 + v31[8]);
  v26 = *v6;
  v27 = v6[1];

  v29 = v38;
  v38[0] = v26;
  v38[1] = v27;
  sub_214CD0554();
  sub_214A61B48(v29);
  v7 = (v30 + v31[9]);
  v32 = *v7;
  v33 = v7[1];

  v36 = v37;
  v37[0] = v32;
  v37[1] = v33;
  sub_214CD0554();
  sub_214A61B48(v36);
}

uint64_t SearchItem.Link.hashValue.getter()
{
  type metadata accessor for SearchItem.Link(0);
  sub_214BB35B8();
  return sub_214CD0114();
}

unint64_t sub_214BB35B8()
{
  v2 = qword_27CA363D0;
  if (!qword_27CA363D0)
  {
    type metadata accessor for SearchItem.Link(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB3698()
{
  v2 = qword_27CA363D8;
  if (!qword_27CA363D8)
  {
    type metadata accessor for SearchItem.Link(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB3784(uint64_t a1)
{
  v5 = sub_214B64884(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_214CCD2B4();
    if (v2 <= 0x3F)
    {
      v5 = sub_214CCD154();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

uint64_t SearchItem.Location.id.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_214CCD2B4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t SearchItem.Location.address.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Location(0) + 20));

  return v2;
}

uint64_t type metadata accessor for SearchItem.Location(uint64_t a1)
{
  v2 = qword_280C7E278;
  if (!qword_280C7E278)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SearchItem.Location.address.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Location(0) + 20));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Location.date.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Location(0) + 24));

  return v2;
}

uint64_t SearchItem.Location.date.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Location(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Location.senders.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Location(0) + 28));

  return v2;
}

uint64_t SearchItem.Location.senders.setter(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SearchItem.Location(0) + 28)) = a1;
}

uint64_t SearchItem.Location.init(id:address:date:senders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a7;
  v34 = a1;
  v24 = a2;
  v31 = a3;
  v25 = a4;
  v30 = a5;
  v29 = a6;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v23[1] = 0;
  v35 = sub_214CCD2B4();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v23[0] = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v26 = v23 - v23[0];
  v27 = type metadata accessor for SearchItem.Location(v7);
  MEMORY[0x28223BE20](v31);
  v8 = v27;
  v36 = v23 - v9;
  v43 = v23 - v9;
  v42 = v34;
  v40 = v10;
  v41 = v11;
  v38 = v12;
  v39 = v13;
  v37 = v14;
  v15 = (v23 + v27[5] - v9);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v23 + v8[6] - v9);
  *v16 = 0;
  v16[1] = 0;
  *(v23 + v8[7] - v9) = v17;

  v18 = v31;
  v19 = (v36 + v27[5]);
  *v19 = v24;
  v19[1] = v18;

  v20 = v30;
  v21 = (v36 + v27[6]);
  *v21 = v25;
  v21[1] = v20;

  (*(v32 + 16))(v26, v34, v35);
  (*(v32 + 32))(v36, v26, v35);

  *(v36 + v27[7]) = v29;

  sub_214BB40F4(v36, v28);

  (*(v32 + 8))(v34, v35);
  return sub_214BB4214(v36);
}

uint64_t sub_214BB40F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v11 = type metadata accessor for SearchItem.Location(0);
  v3 = (a1 + v11[5]);
  v6 = (a2 + v11[5]);
  *v6 = *v3;
  v7 = v3[1];

  v6[1] = v7;
  v4 = v11[6];
  v9 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v10 = *(a1 + v4 + 8);

  *(v9 + 8) = v10;
  v13 = v11[7];
  v14 = *(a1 + v13);

  result = a2;
  *(a2 + v13) = v14;
  return result;
}

uint64_t sub_214BB4214(uint64_t a1)
{
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for SearchItem.Location(0);

  return a1;
}

uint64_t SearchItem.Location.init(suggestion:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v49 = a1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v36 = 0;
  v34 = (*(*(sub_214CCD2B4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v35 = &v12 - v34;
  v37 = sub_214CCD254();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v41 = &v12 - v40;
  v42 = type metadata accessor for SearchItem.Location(v2);
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v46 = &v12 - v45;
  v47 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v48 = &v12 - v47;
  v55 = &v12 - v47;
  v54 = v5;
  *&v6 = MEMORY[0x277D82BE0](v5).n128_u64[0];
  v50 = [v49 authors];
  if (v50)
  {
    v32 = v50;
    v29 = v50;
    v30 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v29);
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v27 = v31;
  MEMORY[0x277D82BD8](v49);
  *&v7 = MEMORY[0x277D82BE0](v49).n128_u64[0];
  v28 = [v49 authorEmailAddresses];
  if (v28)
  {
    v26 = v28;
    v23 = v28;
    v24 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v23);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v13 = v25;
  MEMORY[0x277D82BD8](v49);
  v20 = sub_214B65BF4(v27, v13);

  v53 = v20;
  v15 = objc_opt_self();
  v14 = [v49 date];
  sub_214CCD224();
  v16 = sub_214CCD1C4();
  (*(v38 + 8))(v41, v37);
  *&v8 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v17 = [v15 localizedStringFromDate:v16 dateStyle:1 timeStyle:{0, v8}];
  MEMORY[0x277D82BD8](v16);
  v18 = sub_214CCF564();
  v19 = v9;
  v51 = v18;
  v52 = v9;
  MEMORY[0x277D82BD8](v17);
  sub_214CCD2A4();
  v22 = [v49 address];
  v21 = sub_214CCF564();
  SearchItem.Location.init(id:address:date:senders:)(v35, v21, v10, v18, v19, v20, v46);
  MEMORY[0x277D82BD8](v22);
  sub_214BB4808(v46, v48);
  sub_214BB40F4(v48, v33);
  (*(v43 + 56))(v33, 0, 1, v42);
  MEMORY[0x277D82BD8](v49);
  return sub_214BB4214(v48);
}

__n128 sub_214BB4808(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SearchItem.Location(0);
  *(a2 + v3[5]) = *(a1 + v3[5]);
  result = *(a1 + v3[6]);
  *(a2 + v3[6]) = result;
  *(a2 + v3[7]) = *(a1 + v3[7]);
  return result;
}

BOOL static SearchItem.Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v40 = a2;
  v67 = 0;
  v66 = 0;
  v47 = sub_214CCD2B4();
  v43 = *(v47 - 8);
  v44 = v47 - 8;
  v38 = v43[8];
  v37 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v45 = &v7 - v37;
  v39 = v37;
  v2 = MEMORY[0x28223BE20](&v7 - v37);
  v46 = &v7 - v39;
  v67 = v3;
  v66 = v40;
  v42 = v43[2];
  v41 = v43 + 2;
  v42(v2);
  (v42)(v45, v40, v47);
  v50 = sub_214CCD284();
  v49 = v43[1];
  v48 = v43 + 1;
  v49(v45, v47);
  v49(v46, v47);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

  v32 = type metadata accessor for SearchItem.Location(0);
  v4 = (v36 + v32[5]);
  v33 = *v4;
  v34 = v4[1];

  v35 = *(v40 + v32[5]);

  v64[0] = v33;
  v64[1] = v34;
  v65 = v35;
  if (v34)
  {
    sub_214A61AD0(v64, &v53);
    if (*(&v65 + 1))
    {
      v29 = &v52;
      v52 = v53;
      v28 = &v51;
      v51 = v65;
      v30 = MEMORY[0x21605D8D0](v53, *(&v53 + 1), v65, *(&v65 + 1));
      sub_214A61B48(v28);
      sub_214A61B48(v29);
      sub_214A61B48(v64);
      v31 = v30;
      goto LABEL_8;
    }

    sub_214A61B48(&v53);
    goto LABEL_10;
  }

  if (*(&v65 + 1))
  {
LABEL_10:
    sub_214A76610(v64);
    v31 = 0;
    goto LABEL_8;
  }

  sub_214A61B48(v64);
  v31 = 1;
LABEL_8:
  v27 = v31;

  if (v27)
  {
    v5 = (v36 + v32[6]);
    v24 = *v5;
    v25 = v5[1];

    v26 = *(v40 + v32[6]);

    v62[0] = v24;
    v62[1] = v25;
    v63 = v26;
    if (v25)
    {
      sub_214A61AD0(v62, &v56);
      if (*(&v63 + 1))
      {
        v21 = &v55;
        v55 = v56;
        v20 = &v54;
        v54 = v63;
        v22 = MEMORY[0x21605D8D0](v56, *(&v56 + 1), v63, *(&v63 + 1));
        sub_214A61B48(v20);
        sub_214A61B48(v21);
        sub_214A61B48(v62);
        v23 = v22;
        goto LABEL_18;
      }

      sub_214A61B48(&v56);
    }

    else if (!*(&v63 + 1))
    {
      sub_214A61B48(v62);
      v23 = 1;
LABEL_18:
      v19 = v23;

      if ((v19 & 1) == 0)
      {
        return 0;
      }

      v17 = *(v36 + v32[7]);

      v18 = *(v40 + v32[7]);

      v60 = v17;
      v61 = v18;
      if (v17)
      {
        sub_214B1C04C(&v60, &v59);
        if (v61)
        {
          v14 = &v58;
          v58 = v59;
          v13 = &v57;
          v57 = v61;
          v12 = v59;
          v10 = v61;
          v11 = sub_214B63E30();
          sub_214B63E94();
          v15 = sub_214CCF8E4();
          sub_214A62278(v13);
          sub_214A62278(v14);
          sub_214A62278(&v60);
          v16 = v15;
LABEL_28:
          v9 = v16;

          return (v9 & 1) != 0;
        }

        sub_214A62278(&v59);
      }

      else if (!v61)
      {
        sub_214A62278(&v60);
        v16 = 1;
        goto LABEL_28;
      }

      sub_214B63DF8(&v60);
      v16 = 0;
      goto LABEL_28;
    }

    sub_214A76610(v62);
    v23 = 0;
    goto LABEL_18;
  }

  return 0;
}

void SearchItem.Location.hash(into:)(uint64_t a1)
{
  v22 = a1;
  v2 = v1;
  v24 = v2;
  v33 = 0;
  v32 = 0;
  v14 = 0;
  v13 = sub_214CCD2B4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v13);
  v12 = &v8 - v9;
  v33 = a1;
  v32 = v5;
  (*(v10 + 16))(v4);
  sub_214B5C87C();
  sub_214CD0554();
  (*(v10 + 8))(v12, v13);
  v25 = type metadata accessor for SearchItem.Location(v14);
  v6 = (v24 + v25[5]);
  v15 = *v6;
  v16 = v6[1];

  v17 = v31;
  v31[0] = v15;
  v31[1] = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0, &qword_214CF1CD0);
  v21 = sub_214A75068();
  sub_214CD0554();
  sub_214A61B48(v17);
  v7 = (v24 + v25[6]);
  v18 = *v7;
  v19 = v7[1];

  v23 = v30;
  v30[0] = v18;
  v30[1] = v19;
  sub_214CD0554();
  sub_214A61B48(v23);
  v26 = *(v24 + v25[7]);

  v28 = &v29;
  v29 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359B0, &qword_214CEFDD8);
  sub_214B642F0();
  sub_214CD0554();
  sub_214A62278(v28);
}

uint64_t SearchItem.Location.hashValue.getter()
{
  type metadata accessor for SearchItem.Location(0);
  sub_214BB5358();
  return sub_214CD0114();
}

unint64_t sub_214BB5358()
{
  v2 = qword_27CA363E0;
  if (!qword_27CA363E0)
  {
    type metadata accessor for SearchItem.Location(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB5438()
{
  v2 = qword_27CA363E8;
  if (!qword_27CA363E8)
  {
    type metadata accessor for SearchItem.Location(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB5524(uint64_t a1)
{
  v5 = sub_214CCD2B4();
  if (v1 <= 0x3F)
  {
    v5 = sub_214B5CC3C(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_214B64884(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

uint64_t sub_214BB5688()
{
  v11 = 0;
  v3 = (*(*(sub_214CCFC34() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v10 = &v2 - v3;
  v4 = (*(*(sub_214CCFC24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v9 = &v2 - v4;
  v5 = (*(*(sub_214CCF254() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v8 = &v2 - v5;
  sub_214B51A38();
  v6 = sub_214CCF614("com.apple.mobilemail.locationsSnapshotter", 41, 1);
  v7 = v0;
  sub_214CCF244();
  sub_214BB5824();
  sub_214BB58C4(v10);
  result = sub_214CCFC64();
  qword_280C7DBC0 = result;
  return result;
}

uint64_t sub_214BB5824()
{
  sub_214BB87B8(0);
  sub_214CCFC24();
  sub_214BB89C4(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36410, &qword_214CF1C68);
  sub_214BB8A44();
  return sub_214CD0104();
}

uint64_t sub_214BB58C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85260];
  v1 = sub_214CCFC34();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t *sub_214BB5930()
{
  if (qword_280C7DBB8 != -1)
  {
    swift_once();
  }

  return &qword_280C7DBC0;
}

uint64_t sub_214BB5990()
{
  v0 = sub_214BB5930();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

id sub_214BB59FC()
{
  result = sub_214BB5A1C();
  qword_280C7DBD8 = result;
  return result;
}

id sub_214BB5A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359D8, &qword_214CEFF10);
  v2 = sub_214AF82CC();
  v0 = sub_214A731BC();
  v3 = sub_214BB5634(v2, v0);
  [v3 setCountLimit_];
  return v3;
}

uint64_t *sub_214BB5AA8()
{
  if (qword_280C7DBD0 != -1)
  {
    swift_once();
  }

  return &qword_280C7DBD8;
}

uint64_t sub_214BB5B08()
{
  v0 = sub_214BB5AA8();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

id sub_214BB5B40()
{
  result = sub_214BB5B60();
  qword_27CA363F0 = result;
  return result;
}

id sub_214BB5B60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359D8, &qword_214CEFF10);
  v2 = sub_214AF82CC();
  v0 = sub_214BB8960();
  v3 = sub_214BB5634(v2, v0);
  [v3 setCountLimit_];
  return v3;
}

uint64_t *sub_214BB5BEC()
{
  if (qword_27CA34028 != -1)
  {
    swift_once();
  }

  return &qword_27CA363F0;
}

uint64_t sub_214BB5C4C()
{
  v0 = sub_214BB5BEC();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_214BB5C84()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_280C7DB98);
  __swift_project_value_buffer(v1, qword_280C7DB98);
  return sub_214BB5CD0();
}

uint64_t sub_214BB5CF8()
{
  if (qword_280C7DB90 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_280C7DB98);
}

uint64_t static LocationSnapshotGenerator.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214BB5CF8();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static LocationSnapshotGenerator.getLocationFromAddress(address:)(uint64_t a1, uint64_t a2)
{
  v2[29] = a2;
  v2[28] = a1;
  v2[20] = v2;
  v2[18] = 0;
  v2[19] = 0;
  v2[21] = 0;
  v2[23] = 0;
  v2[24] = 0;
  v2[27] = 0;
  v2[18] = a1;
  v2[19] = a2;
  return MEMORY[0x2822009F8](sub_214BB5E20, 0);
}

uint64_t sub_214BB5E20()
{
  *(v0 + 160) = v0;
  v1 = sub_214BB5BEC();
  v10 = *v1;
  MEMORY[0x277D82BE0](*v1);

  v9 = sub_214CCF544();
  v11 = [v10 objectForKey_];
  MEMORY[0x277D82BD8](v9);

  v2 = MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    *(v8 + 216) = v11;
    v3 = *(*(v8 + 160) + 8);

    return v3(v2);
  }

  else
  {
    sub_214BB67A0();
    v7 = sub_214A61730();
    *(v8 + 240) = v7;
    *(v8 + 168) = v7;

    v6 = sub_214CCF544();
    *(v8 + 248) = v6;

    *(v8 + 16) = *(v8 + 160);
    *(v8 + 56) = v8 + 176;
    *(v8 + 24) = sub_214BB60D8;
    v5 = swift_continuation_init();
    *(v8 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA363F8, &qword_214CF1BF8);
    *(v8 + 112) = v5;
    *(v8 + 80) = MEMORY[0x277D85DD0];
    *(v8 + 88) = 1107296256;
    *(v8 + 92) = 0;
    *(v8 + 96) = sub_214BB6804;
    *(v8 + 104) = &block_descriptor_9;
    [v7 geocodeAddressString:v6 completionHandler:?];

    return MEMORY[0x282200938](v8 + 16);
  }
}

uint64_t sub_214BB60D8()
{
  v4 = *v0;
  v4[20] = *v0;
  v1 = v4[6];
  v4[32] = v1;
  if (v1)
  {
    v2 = sub_214BB64D8;
  }

  else
  {
    v2 = sub_214BB6230;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214BB6230()
{
  v1 = v0[31];
  v0[20] = v0;
  v14 = v0[22];
  MEMORY[0x277D82BD8](v1);
  v0[23] = v14;

  if (v14)
  {
    v13[25] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36400, &qword_214CF1C00);
    sub_214BB6938();
    sub_214CCFA74();
    v11 = v13[26];

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v9 = v13[30];
    v13[24] = v12;
    v2 = sub_214BB5BEC();
    v8 = *v2;
    MEMORY[0x277D82BE0](*v2);

    v7 = sub_214CCF544();
    [v8 setObject:v12 forKey:?];
    MEMORY[0x277D82BD8](v7);

    MEMORY[0x277D82BD8](v8);

    v3 = MEMORY[0x277D82BD8](v9);
    v10 = v12;
  }

  else
  {
    v6 = v13[30];

    v3 = MEMORY[0x277D82BD8](v6);
    v10 = 0;
  }

  v4 = *(v13[20] + 8);

  return v4(v10, v3);
}

uint64_t sub_214BB64D8(__n128 a1)
{
  v8 = v1[32];
  v7 = v1[31];
  v1[20] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v7);

  v1[23] = 0;

  v5 = *(v6 + 240);

  v2 = MEMORY[0x277D82BD8](v5);
  v3 = *(*(v6 + 160) + 8);

  return v3(0, v2);
}

unint64_t sub_214BB67A0()
{
  v2 = qword_280C7CD50;
  if (!qword_280C7CD50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD50);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214BB6804(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36400, &qword_214CF1C00);
    sub_214C01BE0(v10, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    sub_214BB8960();
    v11 = sub_214CCF7E4();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36400, &qword_214CF1C00);
    sub_214C01C44(v10, &v11, v3);
    MEMORY[0x277D82BD8](a2);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

unint64_t sub_214BB6938()
{
  v2 = qword_280C7CEB8;
  if (!qword_280C7CEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36400, &qword_214CF1C00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t static LocationSnapshotGenerator.generateThumbnail(address:)(uint64_t a1, uint64_t a2)
{
  v2[9] = a2;
  v2[8] = a1;
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return MEMORY[0x2822009F8](sub_214BB6A14, 0);
}

uint64_t sub_214BB6A14()
{
  *(v0 + 32) = v0;
  v1 = sub_214BB5AA8();
  v10 = *v1;
  MEMORY[0x277D82BE0](*v1);

  v9 = sub_214CCF544();
  v11 = [v10 objectForKey_];
  MEMORY[0x277D82BD8](v9);

  v2 = MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    v8[7] = v11;
    v3 = *(v8[4] + 8);

    return v3(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    v8[10] = v5;
    *v5 = v8[4];
    v5[1] = sub_214BB6BCC;
    v6 = v8[9];
    v7 = v8[8];

    return static LocationSnapshotGenerator.getLocationFromAddress(address:)(v7, v6);
  }
}

uint64_t sub_214BB6BCC(uint64_t a1)
{
  v7 = *v1;
  v7[4] = *v1;
  v8 = v7 + 4;
  v7[11] = a1;

  if (a1)
  {
    v7[5] = a1;
    v2 = swift_task_alloc();
    v7[12] = v2;
    *v2 = *v8;
    v2[1] = sub_214BB6DC4;
    v3 = v7[9];
    v4 = v7[8];

    return static LocationSnapshotGenerator.generateThumbnail(placemark:address:)(a1, v4, v3);
  }

  else
  {
    v6 = *(*v8 + 8);

    return v6(0);
  }
}

uint64_t sub_214BB6DC4(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 32) = *v1;
  *(v3 + 104) = a1;

  return MEMORY[0x2822009F8](sub_214BB6EE0, 0);
}

uint64_t sub_214BB6EE0()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[4] = v0;
  v0[6] = v1;
  v3 = MEMORY[0x277D82BD8](v2);
  v4 = v0[13];
  v5 = *(v0[4] + 8);

  return v5(v4, v3);
}

uint64_t static LocationSnapshotGenerator.generateThumbnail(placemark:address:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 288) = a3;
  *(v3 + 280) = a2;
  *(v3 + 272) = a1;
  *(v3 + 208) = v3;
  *(v3 + 216) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 264) = 0;
  v4 = sub_214CCDA74();
  *(v3 + 296) = v4;
  *(v3 + 304) = *(v4 - 8);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 216) = a1;
  *(v3 + 176) = a2;
  *(v3 + 184) = a3;

  return MEMORY[0x2822009F8](sub_214BB70EC, 0);
}

uint64_t sub_214BB70EC()
{
  v63 = v0;
  *(v0 + 208) = v0;
  v1 = sub_214BB5AA8();
  v53 = *v1;
  MEMORY[0x277D82BE0](*v1);

  v52 = sub_214CCF544();
  v54 = [v53 objectForKey_];
  MEMORY[0x277D82BD8](v52);

  *&v2 = MEMORY[0x277D82BD8](v53).n128_u64[0];
  if (v54)
  {
    *(v51 + 264) = v54;
    v50 = v54;
LABEL_14:

    v14 = *(*(v51 + 208) + 8);

    return v14(v50);
  }

  v49 = [*(v51 + 272) location];
  if (v49)
  {
    [v49 coordinate];
    v61 = v3;
    v62 = v4;
    v44 = v3;
    v45 = v4;
    MEMORY[0x277D82BD8](v49);
    v46 = v44;
    v47 = v45;
    v48 = 0;
  }

  else
  {
    v46 = 0.0;
    v47 = 0.0;
    v48 = 1;
  }

  if (v48)
  {
    v50 = 0;
    goto LABEL_14;
  }

  v30 = *(v51 + 312);
  v33 = *(v51 + 296);
  v35 = *(v51 + 288);
  v34 = *(v51 + 280);
  v32 = *(v51 + 304);
  *(v51 + 192) = v46;
  *(v51 + 200) = v47;
  v55 = MEMORY[0x21605EC90](v46, v47, 500.0);
  v25 = v5;
  v26 = v6;
  v27 = v7;
  *(v51 + 144) = v55;
  *(v51 + 152) = v5;
  *(v51 + 160) = v6;
  *(v51 + 168) = v7;
  sub_214BB84F0();
  v28 = sub_214A61730();
  *&v8 = MEMORY[0x277D82BE0](v28).n128_u64[0];
  *(v51 + 224) = v28;
  [v28 setMapType_];
  [v28 setRegion_];
  v29 = [objc_opt_self() setCustomFeatureAnnotationsForSnapshotOptions:v28 coordinate:0 title:{v46, v47}];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BE0](v29);
  v9 = *(v51 + 224);
  *(v51 + 224) = v29;
  MEMORY[0x277D82BD8](v9);
  [v29 setSize_];
  sub_214BB8554();
  v31 = sub_214BB85B8(v29);
  *(v51 + 320) = v31;
  *(v51 + 232) = v31;
  v10 = sub_214BB5CF8();
  (*(v32 + 16))(v30, v10, v33);

  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  oslog = sub_214CCDA54();
  v43 = sub_214CCFB94();
  v38 = swift_allocObject();
  *(v38 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_214B21C04;
  *(v37 + 24) = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_214A7E854;
  *(v40 + 24) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  sub_214CD03C4();
  v41 = v11;

  *v41 = sub_214A662DC;
  v41[1] = v38;

  v41[2] = sub_214A662DC;
  v41[3] = v39;

  v41[4] = sub_214A7E40C;
  v41[5] = v40;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v43))
  {
    buf = sub_214CCFF24();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v23 = sub_214A632C4(0, v21, v21);
    v24 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v56 = buf;
    v57 = v23;
    v58 = v24;
    sub_214A6627C(2, &v56);
    sub_214A6627C(1, &v56);
    v59 = sub_214A662DC;
    v60 = v38;
    sub_214A66290(&v59, &v56, &v57, &v58);
    v59 = sub_214A662DC;
    v60 = v39;
    sub_214A66290(&v59, &v56, &v57, &v58);
    v59 = sub_214A7E40C;
    v60 = v40;
    sub_214A66290(&v59, &v56, &v57, &v58);
    _os_log_impl(&dword_214A5E000, oslog, v43, "Generating a map snapshot for address:  %s", buf, 0xCu);
    sub_214A669DC(v23, 0, v21);
    sub_214A669DC(v24, 1, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();
  }

  else
  {
  }

  v17 = *(v51 + 312);
  v18 = *(v51 + 296);
  v16 = *(v51 + 304);
  v12 = MEMORY[0x277D82BD8](oslog);
  (*(v16 + 8))(v17, v18, v12);
  v13 = sub_214BB5930();
  v20 = *v13;
  *(v51 + 328) = *v13;
  MEMORY[0x277D82BE0](v20);
  *(v51 + 16) = *(v51 + 208);
  *(v51 + 56) = v51 + 240;
  *(v51 + 24) = sub_214BB7C60;
  v19 = swift_continuation_init();
  *(v51 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36408, &unk_214CF1C20);
  *(v51 + 112) = v19;
  *(v51 + 80) = MEMORY[0x277D85DD0];
  *(v51 + 88) = 1107296256;
  *(v51 + 92) = 0;
  *(v51 + 96) = sub_214BB85F8;
  *(v51 + 104) = &block_descriptor_18;
  [v31 startWithQueue:v20 completionHandler:?];

  return MEMORY[0x282200938](v51 + 16);
}

uint64_t sub_214BB7C60()
{
  v4 = *v0;
  v4[26] = *v0;
  v1 = v4[6];
  v4[42] = v1;
  if (v1)
  {
    v2 = sub_214BB8148;
  }

  else
  {
    v2 = sub_214BB7DB8;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214BB7DB8()
{
  v1 = v0[41];
  v0[26] = v0;
  v17 = v0[30];
  MEMORY[0x277D82BD8](v1);
  v0[31] = v17;
  *&v2 = MEMORY[0x277D82BE0](v17).n128_u64[0];
  if (v17)
  {
    v14 = [v17 image];
    MEMORY[0x277D82BD8](v17);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v12 = v16[40];
    v16[32] = v15;
    v3 = sub_214BB5AA8();
    v11 = *v3;
    MEMORY[0x277D82BE0](*v3);

    v10 = sub_214CCF544();
    [v11 setObject:v15 forKey:?];
    MEMORY[0x277D82BD8](v10);

    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v16[28]);
    v13 = v15;
  }

  else
  {
    v8 = v16[40];
    sub_214A731BC();
    MEMORY[0x277D82BE0](@"mappin.circle.fill");
    v4 = sub_214CCF564();
    v9 = sub_214B4D9C8(v4, v5);
    MEMORY[0x277D82BD8](@"mappin.circle.fill");
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v16[28]);
    v13 = v9;
  }

  v6 = *(v16[26] + 8);

  return v6(v13);
}

uint64_t sub_214BB8148(__n128 a1)
{
  v10 = v1[42];
  v9 = v1[41];
  v1[26] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v9);

  v1[31] = 0;
  MEMORY[0x277D82BE0](0);
  v6 = v8[40];
  sub_214A731BC();
  MEMORY[0x277D82BE0](@"mappin.circle.fill");
  v2 = sub_214CCF564();
  v7 = sub_214B4D9C8(v2, v3);
  MEMORY[0x277D82BD8](@"mappin.circle.fill");
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v8[28]);

  v4 = *(v8[26] + 8);

  return v4(v7);
}

unint64_t sub_214BB84F0()
{
  v2 = qword_280C7CA88;
  if (!qword_280C7CA88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CA88);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BB8554()
{
  v2 = qword_280C7CBE8;
  if (!qword_280C7CBE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CBE8);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214BB85F8(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_214BB88FC();
    sub_214C01BE0(v11, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_214CD0404();
      __break(1u);
    }

    v12 = v7;
    v3 = sub_214BB88FC();
    sub_214C01C44(v11, &v12, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

id sub_214BB8768(uint64_t a1)
{
  v4 = [v1 initWithOptions_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_214BB87B8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_214CCFC24();
      v1 = sub_214CCF834();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_214CCFC24();
    return v2;
  }

  return result;
}

unint64_t sub_214BB88FC()
{
  v2 = qword_280C7CD10;
  if (!qword_280C7CD10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD10);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BB8960()
{
  v2 = qword_280C7CD40;
  if (!qword_280C7CD40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD40);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BB89C4(double a1)
{
  v3 = qword_280C7CB38;
  if (!qword_280C7CB38)
  {
    sub_214CCFC24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CB38);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_214BB8A44()
{
  v2 = qword_280C7CE60;
  if (!qword_280C7CE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36410, &qword_214CF1C68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE60);
    return WitnessTable;
  }

  return v2;
}

uint64_t static NSString.mailUISubsystem.getter()
{
  v1 = *sub_214A61A70();

  return v1;
}

id sub_214BB8B10(uint64_t a1)
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static NSString.mailUISubsystem.getter();
  v2 = sub_214CCF544();

  return v2;
}

uint64_t static Logger.mailUISubsystem.getter()
{
  v1 = *sub_214A619A8();

  return v1;
}

uint64_t sub_214BB8BB4()
{
  result = sub_214CCF614("%", 1, 1);
  qword_27CA36418 = result;
  qword_27CA36420 = v1;
  return result;
}

uint64_t *sub_214BB8BF8()
{
  if (qword_27CA34038 != -1)
  {
    swift_once();
  }

  return &qword_27CA36418;
}

uint64_t static String.delimiter.getter()
{
  v1 = *sub_214BB8BF8();

  return v1;
}

uint64_t sub_214BB8C94(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v18 = 0;
  v19 = 0;
  v13 = sub_214CCCE64();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v14 = &v6 - v8;
  v18 = v2;
  v19 = v3;
  v16 = v2;
  v17 = v3;
  v4 = sub_214BB8BF8();
  v9 = *v4;
  v10 = v4[1];

  sub_214CCCE54();

  sub_214B075A0();
  v15 = sub_214CCFF74();
  (*(v11 + 8))(v14, v13);
  return v15;
}

uint64_t String.mailMessageID.getter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v9 = sub_214BB8C94(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  sub_214B50C54();
  sub_214CCFA74();

  v5 = v7;
  v6 = v8;

  if (v8)
  {
    v10 = v5;
    v11 = v6;
  }

  else
  {

    v10 = a1;
    v11 = a2;
  }

  return v10;
}

uint64_t String.uniqueIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v9 = sub_214BB8C94(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  sub_214BB8FF0();
  sub_214CCF434();

  v5 = v7;
  v6 = v8;

  if (v8)
  {
    v10 = v5;
    v11 = v6;
  }

  else
  {

    v10 = a1;
    v11 = a2;
  }

  return v10;
}

unint64_t sub_214BB8FF0()
{
  v2 = qword_280C7CED8;
  if (!qword_280C7CED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EC0, &unk_214CEF8F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CED8);
    return WitnessTable;
  }

  return v2;
}

uint64_t static String.encodeMessageID(using:)(void *a1)
{
  v20 = [a1 attributeSet];
  v21 = [v20 mailMessageID];
  if (v21)
  {
    v15 = sub_214CCF564();
    v16 = v1;
    MEMORY[0x277D82BD8](v21);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v20);
    v2 = sub_214BB8BF8();
    v8 = *v2;
    v9 = v2[1];

    v10 = MEMORY[0x21605D8B0](v17, v18, v8, v9);
    v12 = v3;

    v11 = [a1 uniqueIdentifier];
    v4 = sub_214CCF564();
    v13 = MEMORY[0x21605D8B0](v10, v12, v4);

    MEMORY[0x277D82BD8](v11);

    return v13;
  }

  else
  {
    v6 = [a1 uniqueIdentifier];
    v7 = sub_214CCF564();
    MEMORY[0x277D82BD8](v6);
    return v7;
  }
}

uint64_t static String.encodeMessageID<A>(using:)(void *a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v11 = v13;
  }

  else
  {
    swift_unknownObjectRelease();
    v11 = 0;
  }

  sub_214A69284();
  if (v11)
  {
    v5 = [v11 objectID];
    v6 = [v5 globalMessageID];
    MEMORY[0x277D82BD8](v5);
    v7 = sub_214BB94C0(v6);
    v8 = [v7 stringValue];
    v9 = sub_214CCF564();
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v11);
    return v9;
  }

  else
  {
    v2 = sub_214BB94C0([a1 conversationID]);
    v3 = [v2 stringValue];
    v4 = sub_214CCF564();
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
    return v4;
  }
}

uint64_t Array<A>.mailMessageQuery.getter(uint64_t a1)
{
  v48 = a1;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v49 = v61;
  v61[0] = 0;
  v61[1] = 0;
  v65 = 0;
  v66 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v42 = 0;
  v28 = sub_214CCD254();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (v29[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v32 = &v12 - v31;
  v66 = &v12 - v31;
  v33 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v34 = &v12 - v33;
  v65 = &v12 - v33;
  Comparator = type metadata accessor for MailMessageQueryComparator(v3);
  v36 = *(Comparator - 8);
  v37 = Comparator - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](Comparator);
  v39 = &v12 - v38;
  v40 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v41 = &v12 - v40;
  v64 = &v12 - v40;
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36428, &qword_214CF1C80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v44 = &v12 - v43;
  v63 = v6;
  type metadata accessor for CSQueryBuilder();
  v45 = CSQueryBuilder.__allocating_init()();
  v46 = sub_214B5E17C();

  v47 = sub_214B5E3B8();

  v62 = v47;

  v60 = v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36430, &qword_214CF1C88);
  sub_214BB9C20();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36440, &qword_214CF1C90);
    sub_214CD01B4();
    if ((*(v36 + 48))(v44, 1, Comparator) == 1)
    {
      break;
    }

    sub_214BB9CA8(v44, v41);
    sub_214BB9DC4(v41, v39);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v55 = *v39 & 1;
        sub_214B5E4E4(v55);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v7 = *v39;
        v21 = *(v39 + 1);
        v8 = *(v39 + 2);
        v20 = *(v39 + 3);
        v58 = v7;
        v59 = v21;
        v56 = v8;
        v57 = v20;
        sub_214B5E5F4(v7, v21, v8, v20);
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36448, &qword_214CF1C98);
        v15 = &v39[*(v9 + 48)];
        v17 = v29[4];
        v16 = v29 + 4;
        v17(v34);
        (v17)(v32, v15, v28);
        v65 = v34;
        v66 = v32;
        sub_214B5ECA8(v34, v32);

        v19 = v29[1];
        v18 = v29 + 1;
        v19(v32, v28);
        v19(v34, v28);
      }
    }

    else
    {
      v25 = *v39;
      v26 = *(v39 + 1);
      v53 = v25;
      v54 = v26;

      if (v26)
      {
        v23 = v25;
        v24 = v26;
        v22 = v26;
        v51 = v25;
        v52 = v26;
        sub_214B5EBB8(v25, v26);
      }
    }

    sub_214BB9F94(v41);
  }

  sub_214A62278(v61);
  v13 = sub_214B5F2E0();
  v14 = v10;

  return v13;
}

uint64_t type metadata accessor for MailMessageQueryComparator(uint64_t a1)
{
  v2 = qword_27CA36450;
  if (!qword_27CA36450)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_214BB9C20()
{
  v2 = qword_27CA36438;
  if (!qword_27CA36438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36430, &qword_214CF1C88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36438);
    return WitnessTable;
  }

  return v2;
}

char *sub_214BB9CA8(char *a1, char *a2)
{
  Comparator = type metadata accessor for MailMessageQueryComparator(0);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v4 = sub_214CCD254();
    v5 = *(*(v4 - 8) + 32);
    v5(a2, a1);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36448, &qword_214CF1C98);
    (v5)(&a2[*(v2 + 48)], &a1[*(v2 + 48)], v4);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(Comparator - 8) + 64));
  }

  return a2;
}

char *sub_214BB9DC4(char *a1, char *a2)
{
  Comparator = type metadata accessor for MailMessageQueryComparator(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a2 = *a1;
      v6 = *(a1 + 1);

      *(a2 + 1) = v6;
      *(a2 + 2) = *(a1 + 2);
      v7 = *(a1 + 3);

      *(a2 + 3) = v7;
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v4 = sub_214CCD254();
      v5 = *(*(v4 - 8) + 16);
      v5(a2, a1);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36448, &qword_214CF1C98);
      (v5)(&a2[*(v2 + 48)], &a1[*(v2 + 48)], v4);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(Comparator - 8) + 64));
    }
  }

  else
  {
    *a2 = *a1;
    v8 = *(a1 + 1);

    *(a2 + 1) = v8;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_214BB9F94(uint64_t a1)
{
  type metadata accessor for MailMessageQueryComparator(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v3 = sub_214CCD254();
      v4 = *(*(v3 - 8) + 8);
      v4(a1);
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36448, &qword_214CF1C98);
      (v4)(a1 + *(v1 + 48), v3);
    }
  }

  else
  {
  }

  return a1;
}

unint64_t sub_214BBA11C(uint64_t a1)
{
  v5 = sub_214B5CC3C(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_214BBA214(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_214BBA2CC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_214BBA214(uint64_t a1)
{
  v5 = qword_27CA36460;
  if (!qword_27CA36460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA352F0, &qword_214CF1CD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v5 = TupleTypeMetadata2;
    if (!v1)
    {
      v2 = TupleTypeMetadata2;
      atomic_store(TupleTypeMetadata2, &qword_27CA36460);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_214BBA2CC(uint64_t a1)
{
  v5 = qword_27CA36468;
  if (!qword_27CA36468)
  {
    sub_214CCD254();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v5 = TupleTypeMetadata2;
    if (!v1)
    {
      v2 = TupleTypeMetadata2;
      atomic_store(TupleTypeMetadata2, &qword_27CA36468);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_214BBA3A8()
{
  v2 = qword_27CA364A0;
  if (!qword_27CA364A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA364A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BBA424(uint64_t a1)
{
  sub_214BBA3A8();
  sub_214BBA46C();
  sub_214B035B8();
  return sub_214CD04B4();
}

unint64_t sub_214BBA46C()
{
  v2 = qword_27CA364A8;
  if (!qword_27CA364A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA364A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BBA4E8()
{
  result = sub_214CCF614("ManualSummaryErrorThirdPartyMessage", 35, 1);
  qword_27CA36470 = result;
  qword_27CA36478 = v1;
  return result;
}

uint64_t *sub_214BBA52C()
{
  if (qword_27CA34040 != -1)
  {
    swift_once();
  }

  return &qword_27CA36470;
}

uint64_t sub_214BBA58C()
{
  v1 = *sub_214BBA52C();

  return v1;
}

uint64_t sub_214BBA5C8()
{
  result = sub_214CCF614("ManualSummaryErrorRestrictedMessage", 35, 1);
  qword_27CA36480 = result;
  qword_27CA36488 = v1;
  return result;
}

uint64_t *sub_214BBA60C()
{
  if (qword_27CA34048 != -1)
  {
    swift_once();
  }

  return &qword_27CA36480;
}

uint64_t sub_214BBA66C()
{
  v1 = *sub_214BBA60C();

  return v1;
}

uint64_t ManualSummaryError.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v6 = 0;
      v7 = 0;
      v8 = 2;
      break;
    case 2:
      v6 = 1;
      v7 = 0;
      v8 = 2;
      break;
    case 3:
      v6 = 2;
      v7 = 0;
      v8 = 2;
      break;
    case 4:
      v6 = 3;
      v7 = 0;
      v8 = 2;
      break;
    case 5:
      v6 = 4;
      v7 = 0;
      v8 = 2;
      break;
    case 6:
      v6 = 5;
      v7 = 0;
      v8 = 2;
      break;
    case 7:
      v6 = 6;
      v7 = 0;
      v8 = 2;
      break;
    case 8:
      v6 = 7;
      v7 = 0;
      v8 = 2;
      break;
    case 9:
      v6 = sub_214CCF614("", 0, 1);
      v7 = v2;
      v8 = 0;
      break;
    case 10:
      v6 = 8;
      v7 = 0;
      v8 = 2;
      break;
    case 11:
      v6 = 9;
      v7 = 0;
      v8 = 2;
      break;
    case 12:
      v6 = 10;
      v7 = 0;
      v8 = 2;
      break;
    case 13:
      v6 = sub_214CCF614("", 0, 1);
      v7 = v3;
      v8 = 1;
      break;
    default:
      v6 = 11;
      v7 = 0;
      v8 = 2;
      break;
  }

  sub_214BBA960(&v6, a2);
  return sub_214BBAA18(&v6);
}

uint64_t sub_214BBA960(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  sub_214BBA9BC(*a1, v4, v5);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

double sub_214BBA9BC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 1)
  {
  }

  return result;
}

uint64_t sub_214BBAA50(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 1)
  {
  }

  return result;
}

void ManualSummaryError.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v28 = 0;
  v29 = 0;
  v39 = a1;
  v38 = [a1 code];
  ManualSummaryError.init(rawValue:)(v38, &v35);
  v21 = v35;
  v22 = v36;
  v23 = v37;
  if (v37 == 255)
  {
    MEMORY[0x277D82BD8](a1);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
    return;
  }

  v18 = v37;
  v32 = v35;
  v33 = v36;
  v34 = v37;
  sub_214BBA9BC(v35, v36, v37);
  if (v23 != 1)
  {
    sub_214BBAA50(v21, v22, v23);
    goto LABEL_15;
  }

  v15 = [a1 userInfo];
  sub_214CCF314();
  v2 = sub_214BBA52C();
  v16 = *v2;
  v17 = v2[1];

  v26[0] = v16;
  v26[1] = v17;
  sub_214CCF3D4();
  sub_214A61B48(v26);

  if (v27[3])
  {
    if (swift_dynamicCast())
    {
      v11 = v24;
      v12 = v25;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    MEMORY[0x277D82BD8](v15);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    MEMORY[0x277D82BD8](v15);
    sub_214A7D24C(v27);
    v13 = 0;
    v14 = 0;
  }

  if (!v14)
  {
LABEL_15:
    sub_214BBA9BC(v21, v22, v23);
    if (v23)
    {
      sub_214BBAA50(v21, v22, v23);
    }

    else
    {

      v8 = [a1 userInfo];
      sub_214CCF314();
      v3 = sub_214BBA60C();
      v9 = *v3;
      v10 = v3[1];

      v30[0] = v9;
      v30[1] = v10;
      sub_214CCF3D4();
      sub_214A61B48(v30);

      if (v31[3])
      {
        if (swift_dynamicCast())
        {
          v4 = v27[4];
          v5 = v27[5];
        }

        else
        {
          v4 = 0;
          v5 = 0;
        }

        MEMORY[0x277D82BD8](v8);
        v6 = v4;
        v7 = v5;
      }

      else
      {
        MEMORY[0x277D82BD8](v8);
        sub_214A7D24C(v31);
        v6 = 0;
        v7 = 0;
      }

      if (v7)
      {
        v28 = v6;
        v29 = v7;

        v40 = v6;
        v41 = v7;
        v42 = 0;

        goto LABEL_27;
      }
    }

    sub_214BBA9BC(v21, v22, v18);
    v40 = v21;
    v41 = v22;
    v42 = v18;
    goto LABEL_27;
  }

  v40 = v13;
  v41 = v14;
  v42 = 1;

LABEL_27:
  sub_214BBAA50(v21, v22, v18);
  sub_214BBA960(&v40, a2);
  MEMORY[0x277D82BD8](a1);
  sub_214BBAA18(&v40);
}

uint64_t ManualSummaryError.rawValue.getter()
{
  v3 = *v0;
  if (!*(v0 + 16))
  {
    return 9;
  }

  if (*(v0 + 16) == 1)
  {
    return 13;
  }

  if (v3 == 0)
  {
    return 1;
  }

  if (!(v3 ^ 1 | *(&v3 + 1)))
  {
    return 2;
  }

  if (!(v3 ^ 2 | *(&v3 + 1)))
  {
    return 3;
  }

  if (!(v3 ^ 3 | *(&v3 + 1)))
  {
    return 4;
  }

  if (!(v3 ^ 4 | *(&v3 + 1)))
  {
    return 5;
  }

  if (!(v3 ^ 5 | *(&v3 + 1)))
  {
    return 6;
  }

  if (!(v3 ^ 6 | *(&v3 + 1)))
  {
    return 7;
  }

  if (!(v3 ^ 7 | *(&v3 + 1)))
  {
    return 8;
  }

  if (!(v3 ^ 8 | *(&v3 + 1)))
  {
    return 10;
  }

  if (!(v3 ^ 9 | *(&v3 + 1)))
  {
    return 11;
  }

  if (v3 ^ 0xA | *(&v3 + 1))
  {
    return -1;
  }

  return 12;
}

uint64_t ManualSummaryError.thirdPartyMessage.getter()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  sub_214BBA9BC(*v0, v4, v5);
  if (v5 == 1)
  {
    return v3;
  }

  sub_214BBAA50(v3, v4, v5);
  return 0;
}

uint64_t ManualSummaryError.restrictedMessage.getter()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  sub_214BBA9BC(*v0, v4, v5);
  if (!v5)
  {
    return v3;
  }

  sub_214BBAA50(v3, v4, v5);
  return 0;
}

uint64_t ManualSummaryError.errorUserInfo.getter()
{
  v17 = *v0;
  v18 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E0, &unk_214CEEDF0);
      sub_214CD03C4();
      v12 = v1;
      v2 = sub_214BBA52C();
      sub_214A61AD0(v2, v12);

      v14 = MEMORY[0x277D837D0];
      v12[5] = MEMORY[0x277D837D0];
      v12[2] = v17;
      v12[3] = v18;
      v13 = *MEMORY[0x277CCA498];
      MEMORY[0x277D82BE0](*MEMORY[0x277CCA498]);
      v12[6] = sub_214CCF564();
      v12[7] = v3;

      v12[11] = v14;
      v12[8] = v17;
      v12[9] = v18;
      sub_214A63280();
      MEMORY[0x277D82BD8](v13);
      v15 = sub_214CCF344();

      return v15;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E0, &unk_214CEEDF0);
      sub_214CD03C4();
      return sub_214CCF344();
    }
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E0, &unk_214CEEDF0);
    sub_214CD03C4();
    v8 = v4;
    v5 = sub_214BBA60C();
    sub_214A61AD0(v5, v8);

    v10 = MEMORY[0x277D837D0];
    v8[5] = MEMORY[0x277D837D0];
    v8[2] = v17;
    v8[3] = v18;
    v9 = *MEMORY[0x277CCA498];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA498]);
    v8[6] = sub_214CCF564();
    v8[7] = v6;

    v8[11] = v10;
    v8[8] = v17;
    v8[9] = v18;
    sub_214A63280();
    MEMORY[0x277D82BD8](v9);
    v11 = sub_214CCF344();

    return v11;
  }
}

uint64_t sub_214BBB854()
{
  result = sub_214CCF614("com.apple.mail.manualsummaryerror", 33, 1);
  qword_27CA36490 = result;
  qword_27CA36498 = v1;
  return result;
}

uint64_t *sub_214BBB898()
{
  if (qword_27CA34050 != -1)
  {
    swift_once();
  }

  return &qword_27CA36490;
}

uint64_t static ManualSummaryError.errorDomain.getter()
{
  v1 = *sub_214BBB898();

  return v1;
}

uint64_t sub_214BBB950@<X0>(uint64_t *a1@<X8>)
{
  result = ManualSummaryError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_214BBBA14@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger;
  v2 = sub_214CCDA74();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_214BBBA88()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_originalContentMessageGenerator);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BBBAF0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_originalContentMessageGenerator);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214BBBBE0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_messages);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BBBC48(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_messages);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214BBBD38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_214BBBDA0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x277D82BD8](a1);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void (*sub_214BBBE38(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL, 56911);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC6MailUI23ManualSummaryController_sourceViewController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_214B520E8;
}

double sub_214BBBEE4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0, &qword_214CF1D08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v8 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x277D82BE0](v7);
  v11 = v7;
  v10 = v7;
  sub_214BBC098(v8);
  sub_214BC64F8(v8, v9);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

double sub_214BBBFC0(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0, &qword_214CF1D08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v9 = &v4 - v6;
  sub_214BBC0FC(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x277D82BE0](v8);
  v11 = v8;
  v10 = v8;
  sub_214BBC224(v9);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

double sub_214BBC098@<D0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryRequest);
  swift_beginAccess();
  sub_214BBC0FC(v3, a1);
  swift_endAccess();
  return result;
}

void *sub_214BBC0FC(const void *a1, void *a2)
{
  v6 = sub_214CCD874();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0, &qword_214CF1D08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214BBC224(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0, &qword_214CF1D08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_214BBC0FC(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryRequest);
  v7 = &v9;
  swift_beginAccess();
  sub_214BBC308(v5, v6);
  swift_endAccess();
  return sub_214BBC530(v8);
}

void *sub_214BBC308(const void *a1, void *a2)
{
  v7 = sub_214CCD874();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0, &qword_214CF1D08);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0, &qword_214CF1D08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_214BBC530(uint64_t a1)
{
  v3 = sub_214CCD874();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

double sub_214BBC644@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8, &unk_214CF1D10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v8 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x277D82BE0](v7);
  v11 = v7;
  v10 = v7;
  sub_214BBC7F8(v8);
  sub_214BC63D0(v8, v9);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

double sub_214BBC720(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8, &unk_214CF1D10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v9 = &v4 - v6;
  sub_214BBC85C(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x277D82BE0](v8);
  v11 = v8;
  v10 = v8;
  sub_214BBC984(v9);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

double sub_214BBC7F8@<D0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryResponse);
  swift_beginAccess();
  sub_214BBC85C(v3, a1);
  swift_endAccess();
  return result;
}

void *sub_214BBC85C(const void *a1, void *a2)
{
  v6 = sub_214CCD8D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8, &unk_214CF1D10);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214BBC984(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8, &unk_214CF1D10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_214BBC85C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryResponse);
  v7 = &v9;
  swift_beginAccess();
  sub_214BBCA68(v5, v6);
  swift_endAccess();
  return sub_214BBCC90(v8);
}

void *sub_214BBCA68(const void *a1, void *a2)
{
  v7 = sub_214CCD8D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8, &unk_214CF1D10);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8, &unk_214CF1D10);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_214BBCC90(uint64_t a1)
{
  v3 = sub_214CCD8D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

char *ManualSummaryController.init(messages:sourceViewController:)(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v14 = a1;
  v13 = a2;
  v8 = type metadata accessor for ManualSummaryController(0);
  static Logger.mailUILogger<A>(for:)(v8, v8);
  v5 = OBJC_IVAR____TtC6MailUI23ManualSummaryController_originalContentMessageGenerator;
  type metadata accessor for OriginalContentMessageGenerator(0);
  *v5 = OriginalContentMessageGenerator.__allocating_init()();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryRequest;
  v2 = sub_214CCD874();
  (*(*(v2 - 8) + 56))(&v15[v6], 1);
  v7 = OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryResponse;
  v3 = sub_214CCD8D4();
  (*(*(v3 - 8) + 56))(&v15[v7], 1);

  *&v15[OBJC_IVAR____TtC6MailUI23ManualSummaryController_messages] = a1;
  MEMORY[0x277D82BE0](a2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x277D82BD8](a2);
  swift_endAccess();
  v12.receiver = v15;
  v12.super_class = v8;
  v11 = objc_msgSendSuper2(&v12, sel_init);
  MEMORY[0x277D82BE0](v11);
  v15 = v11;
  MEMORY[0x277D82BD8](a2);

  MEMORY[0x277D82BD8](v15);
  return v11;
}

uint64_t type metadata accessor for ManualSummaryController(uint64_t a1)
{
  v2 = qword_280C7DBE0;
  if (!qword_280C7DBE0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_214BBD100(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v82 = a1;
  v72 = a2;
  v75 = a3;
  v80 = sub_214BBE188;
  v83 = sub_214BBE0B8;
  v85 = sub_214B26858;
  v88 = sub_214A7E5D4;
  v90 = sub_214A7E854;
  v93 = sub_214A66754;
  v95 = sub_214A66720;
  v97 = sub_214A66714;
  v101 = sub_214A664B8;
  v103 = sub_214A662DC;
  v105 = sub_214A662DC;
  v107 = sub_214A662E4;
  v109 = sub_214A662DC;
  v111 = sub_214A662DC;
  v113 = sub_214A7E40C;
  v115 = sub_214A662DC;
  v117 = sub_214A662DC;
  v120 = sub_214A66358;
  v68 = &unk_214CF1D38;
  v134 = 0;
  v132 = 0;
  v133 = 0;
  v131 = 0;
  v69 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0);
  v70 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v71 = v59 - v70;
  v73 = sub_214CCDA74();
  v76 = *(v73 - 8);
  v74 = v73 - 8;
  v4 = MEMORY[0x28223BE20](v82);
  v77 = v59 - v5;
  v134 = v6 & 1;
  v132 = v7;
  v133 = v75;
  v131 = v79;
  (*(v76 + 16))(v59 - v5, v79 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, v4);
  MEMORY[0x277D82BE0](v79);
  v78 = 24;
  v99 = 7;
  v8 = swift_allocObject();
  v9 = v79;
  v84 = v8;
  *(v8 + 16) = v79;
  MEMORY[0x277D82BE0](v9);
  v81 = swift_allocObject();
  *(v81 + 16) = v79;

  v98 = 32;
  v10 = swift_allocObject();
  v11 = v81;
  v89 = v10;
  *(v10 + 16) = v80;
  *(v10 + 24) = v11;

  v92 = 17;
  v94 = swift_allocObject();
  *(v94 + 16) = v82;
  v124 = sub_214CCDA54();
  v125 = sub_214CCFBB4();
  v104 = swift_allocObject();
  *(v104 + 16) = 0;
  v106 = swift_allocObject();
  v87 = 8;
  *(v106 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v84;
  v86 = v12;
  *(v12 + 16) = v83;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v86;
  v108 = v14;
  *(v14 + 16) = v85;
  *(v14 + 24) = v15;
  v110 = swift_allocObject();
  *(v110 + 16) = 32;
  v112 = swift_allocObject();
  *(v112 + 16) = v87;
  v16 = swift_allocObject();
  v17 = v89;
  v91 = v16;
  *(v16 + 16) = v88;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v91;
  v114 = v18;
  *(v18 + 16) = v90;
  *(v18 + 24) = v19;
  v116 = swift_allocObject();
  *(v116 + 16) = 0;
  v118 = swift_allocObject();
  *(v118 + 16) = 4;
  v20 = swift_allocObject();
  v21 = v94;
  v96 = v20;
  *(v20 + 16) = v93;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v96;
  v100 = v22;
  *(v22 + 16) = v95;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v100;
  v102 = v24;
  *(v24 + 16) = v97;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v102;
  v121 = v26;
  *(v26 + 16) = v101;
  *(v26 + 24) = v27;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v119 = sub_214CD03C4();
  v122 = v28;

  v29 = v104;
  v30 = v122;
  *v122 = v103;
  v30[1] = v29;

  v31 = v106;
  v32 = v122;
  v122[2] = v105;
  v32[3] = v31;

  v33 = v108;
  v34 = v122;
  v122[4] = v107;
  v34[5] = v33;

  v35 = v110;
  v36 = v122;
  v122[6] = v109;
  v36[7] = v35;

  v37 = v112;
  v38 = v122;
  v122[8] = v111;
  v38[9] = v37;

  v39 = v114;
  v40 = v122;
  v122[10] = v113;
  v40[11] = v39;

  v41 = v116;
  v42 = v122;
  v122[12] = v115;
  v42[13] = v41;

  v43 = v118;
  v44 = v122;
  v122[14] = v117;
  v44[15] = v43;

  v45 = v121;
  v46 = v122;
  v122[16] = v120;
  v46[17] = v45;
  sub_214A63280();

  if (os_log_type_enabled(v124, v125))
  {
    v47 = v69;
    v61 = sub_214CCFF24();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v62 = sub_214A632C4(0, v60, v60);
    v63 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v64 = &v130;
    v130 = v61;
    v65 = &v129;
    v129 = v62;
    v66 = &v128;
    v128 = v63;
    sub_214A6627C(2, &v130);
    sub_214A6627C(3, v64);
    v126 = v103;
    v127 = v104;
    sub_214A66290(&v126, v64, v65, v66);
    v67 = v47;
    if (v47)
    {

      __break(1u);
    }

    else
    {
      v126 = v105;
      v127 = v106;
      sub_214A66290(&v126, &v130, &v129, &v128);
      v59[7] = 0;
      v126 = v107;
      v127 = v108;
      sub_214A66290(&v126, &v130, &v129, &v128);
      v59[6] = 0;
      v126 = v109;
      v127 = v110;
      sub_214A66290(&v126, &v130, &v129, &v128);
      v59[5] = 0;
      v126 = v111;
      v127 = v112;
      sub_214A66290(&v126, &v130, &v129, &v128);
      v59[4] = 0;
      v126 = v113;
      v127 = v114;
      sub_214A66290(&v126, &v130, &v129, &v128);
      v59[3] = 0;
      v126 = v115;
      v127 = v116;
      sub_214A66290(&v126, &v130, &v129, &v128);
      v59[2] = 0;
      v126 = v117;
      v127 = v118;
      sub_214A66290(&v126, &v130, &v129, &v128);
      v59[1] = 0;
      v126 = v120;
      v127 = v121;
      sub_214A66290(&v126, &v130, &v129, &v128);
      _os_log_impl(&dword_214A5E000, v124, v125, "Attempting to manually summarize %ld message(s): %s, useExternalIntelligence: %{BOOL}d", v61, 0x1Cu);
      sub_214A669DC(v62, 0, v60);
      sub_214A669DC(v63, 1, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v48 = MEMORY[0x277D82BD8](v124);
  (*(v76 + 8))(v77, v73, v48);
  v59[0] = 0;
  v49 = sub_214CCF994();
  (*(*(v49 - 8) + 56))(v71, 1);
  MEMORY[0x277D82BE0](v79);

  v50 = swift_allocObject();
  v51 = v79;
  v52 = v72;
  v53 = v75;
  v54 = v82;
  v55 = v59[0];
  v56 = v71;
  v57 = v68;
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  *(v50 + 48) = v53;
  *(v50 + 56) = v54;
  sub_214B88C30(v55, v55, v56, v57, v50, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214BBE060()
{
  sub_214BBBBE0();
  sub_214B71394();
  v1 = sub_214CCF854();

  return v1;
}

void sub_214BBE0C0(uint64_t *a1@<X8>)
{
  v3 = sub_214BBBBE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36238, &qword_214CF0EC0);
  sub_214BC68D8();
  sub_214BC693C();
  v1 = sub_214CCF6F4();
  sub_214A62278(&v3);
  *a1 = v1;
}

id sub_214BBE190@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 searchableMessageID];
  *a2 = result;
  return result;
}

uint64_t sub_214BBE1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 33) = a7 & 1;
  *(v7 + 280) = a6;
  *(v7 + 272) = a5;
  *(v7 + 264) = a4;
  *(v7 + 112) = v7;
  *(v7 + 120) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 648) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 152) = 0;
  *(v7 + 656) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364D8, &qword_214CF1D60);
  *(v7 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8, &unk_214CF1D10);
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  v8 = sub_214CCD854();
  *(v7 + 312) = v8;
  *(v7 + 320) = *(v8 - 8);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0, &qword_214CF1D08);
  *(v7 + 344) = swift_task_alloc();
  v9 = sub_214CCD834();
  *(v7 + 352) = v9;
  *(v7 + 360) = *(v9 - 8);
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34250, &qword_214CE9DE0);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  v10 = sub_214CCD8D4();
  *(v7 + 416) = v10;
  v14 = *(v10 - 8);
  *(v7 + 424) = v14;
  *(v7 + 432) = *(v14 + 64);
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  v11 = sub_214CCDA74();
  *(v7 + 456) = v11;
  *(v7 + 464) = *(v11 - 8);
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = swift_task_alloc();
  *(v7 + 512) = swift_task_alloc();
  v12 = sub_214CCCF24();
  *(v7 + 520) = v12;
  *(v7 + 528) = *(v12 - 8);
  *(v7 + 536) = swift_task_alloc();
  *(v7 + 544) = swift_task_alloc();
  *(v7 + 552) = swift_task_alloc();
  *(v7 + 120) = a4;
  *(v7 + 64) = a5;
  *(v7 + 72) = a6;
  *(v7 + 648) = a7 & 1;

  return MEMORY[0x2822009F8](sub_214BBE754, 0);
}

uint64_t sub_214BBE754()
{
  v0[14] = v0;
  v0[70] = sub_214BBBA88();
  v4 = sub_214BBBBE0();
  v0[71] = v4;
  v1 = swift_task_alloc();
  *(v3 + 576) = v1;
  *v1 = *(v3 + 112);
  v1[1] = sub_214BBE844;

  return sub_214C814BC(v4, 1);
}

uint64_t sub_214BBE844(uint64_t a1)
{
  v5 = *v2;
  v5[14] = *v2;
  v5[73] = a1;
  v5[74] = v1;

  if (v1)
  {
    v3 = sub_214BC1C2C;
  }

  else
  {

    v3 = sub_214BBE9E4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_214BBE9E4()
{
  v36 = v0;
  v1 = v0[74];
  v2 = v0[73];
  v0[14] = v0;
  v0[17] = v2;
  v0[18] = v2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA381C0, &qword_214CF1F30);
  v31 = sub_214CCD9D4();
  v3 = sub_214BC6634();
  result = sub_214A6E4F4(sub_214BC36A8, 0, v30, v31, MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v32);
  v33 = result;
  v0[75] = result;
  if (!v1)
  {
    *(v29 + 152) = result;
    *(v29 + 160) = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364F8, &qword_214CF1F38);
    sub_214BC66BC();
    if (sub_214CCFA94())
    {
      (*(*(v29 + 464) + 16))(*(v29 + 480), *(v29 + 264) + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, *(v29 + 456));
      oslog = sub_214CCDA54();
      v22 = sub_214CCFBA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
      v24 = sub_214CD03C4();
      if (os_log_type_enabled(oslog, v22))
      {
        buf = sub_214CCFF24();
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
        v19 = sub_214A632C4(0, v17, v17);
        v20 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v29 + 168) = buf;
        *(v29 + 176) = v19;
        *(v29 + 184) = v20;
        sub_214A6627C(0, (v29 + 168));
        sub_214A6627C(0, (v29 + 168));
        *(v29 + 192) = v24;
        v21 = swift_task_alloc();
        v21[2] = v29 + 168;
        v21[3] = v29 + 176;
        v21[4] = v29 + 184;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
        sub_214A810E0();
        sub_214CCF764();

        _os_log_impl(&dword_214A5E000, oslog, v22, "Unable to generate summary: No summarizable messages", buf, 2u);
        sub_214A669DC(v19, 0, v17);
        sub_214A669DC(v20, 0, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();
      }

      v14 = *(v29 + 480);
      v15 = *(v29 + 456);
      v16 = *(v29 + 272);
      v13 = *(v29 + 464);
      v11 = MEMORY[0x277D82BD8](oslog);
      (*(v13 + 8))(v14, v15, v11);

      v34[0] = 2;
      v34[1] = 0;
      v35 = 2;
      v16(0, v34);

      v12 = *(*(v29 + 112) + 8);

      return v12();
    }

    else if ([objc_opt_self() preferenceEnabled_])
    {
      v5 = swift_task_alloc();
      *(v29 + 608) = v5;
      *v5 = *(v29 + 112);
      v5[1] = sub_214BBF32C;
      v6 = *(v29 + 552);

      return sub_214BC39E4(v6, 3.0);
    }

    else
    {
      v26 = *(v29 + 344);
      v25 = *(v29 + 336);
      v27 = *(v29 + 328);
      v28 = *(v29 + 33);

      sub_214BC38D4(v28 & 1, v25);
      sub_214CCD864();
      v7 = sub_214CCD874();
      (*(*(v7 - 8) + 56))(v26, 0, 1);
      sub_214BBC224(v26);
      sub_214CCD904();
      *(v29 + 624) = sub_214CCD8F4();
      sub_214BC38D4(v28 & 1, v27);
      v8 = swift_task_alloc();
      *(v29 + 632) = v8;
      *v8 = *(v29 + 112);
      v8[1] = sub_214BC01E8;
      v9 = *(v29 + 440);
      v10 = *(v29 + 328);

      return MEMORY[0x2821A2B38](v9, v33, v10);
    }
  }

  return result;
}

uint64_t sub_214BBF32C()
{
  v4 = *v1;
  *(v4 + 112) = *v1;
  *(v4 + 616) = v0;

  if (v0)
  {
    v2 = sub_214BC24E8;
  }

  else
  {
    v2 = sub_214BBF4A0;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214BBF4A0()
{
  v58 = v0;
  *(v0 + 112) = v0;
  if ([objc_opt_self() preferenceEnabled_] & 1) == 0 || (*(v53 + 33))
  {
    (*(*(v53 + 464) + 16))(*(v53 + 504), *(v53 + 264) + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, *(v53 + 456));
    log = sub_214CCDA54();
    v38 = sub_214CCFBB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
    v40 = sub_214CD03C4();
    if (!os_log_type_enabled(log, v38))
    {

      goto LABEL_16;
    }

    v4 = *(v53 + 616);
    v34 = sub_214CCFF24();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v35 = sub_214A632C4(0, v33, v33);
    v36 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v53 + 200) = v34;
    *(v53 + 208) = v35;
    *(v53 + 216) = v36;
    sub_214A6627C(0, (v53 + 200));
    sub_214A6627C(0, (v53 + 200));
    *(v53 + 224) = v40;
    v37 = swift_task_alloc();
    v37[2] = v53 + 200;
    v37[3] = v53 + 208;
    v37[4] = v53 + 216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
    sub_214A810E0();
    sub_214CCF764();
    if (!v4)
    {

      _os_log_impl(&dword_214A5E000, log, v38, "Received *fake* summary.", v34, 2u);
      sub_214A669DC(v35, 0, v33);
      sub_214A669DC(v36, 0, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

LABEL_16:
      v26 = *(v53 + 552);
      v27 = *(v53 + 544);
      v24 = *(v53 + 520);
      v10 = *(v53 + 504);
      v11 = *(v53 + 456);
      v31 = *(v53 + 448);
      v32 = *(v53 + 416);
      v16 = *(v53 + 408);
      v17 = *(v53 + 400);
      v18 = *(v53 + 392);
      v19 = *(v53 + 376);
      v15 = *(v53 + 352);
      v21 = *(v53 + 344);
      v20 = *(v53 + 336);
      v23 = *(v53 + 304);
      v28 = *(v53 + 33);
      v29 = *(v53 + 272);
      v12 = *(v53 + 528);
      v9 = *(v53 + 464);
      v22 = *(v53 + 424);
      v14 = *(v53 + 360);
      v5 = MEMORY[0x277D82BD8](log);
      (*(v9 + 8))(v10, v11, v5);
      v13 = *(v12 + 56);
      v13(v16, 1, 1, v24);
      v25 = *(v12 + 16);
      v25(v17, v26, v24);
      (v13)(v17);
      v13(v18, 1, 1, v24);
      (*(v14 + 104))(v19, *MEMORY[0x277D421E0], v15);
      sub_214CCD884();

      sub_214BC38D4(v28 & 1, v20);
      sub_214CCD864();
      v6 = sub_214CCD874();
      (*(*(v6 - 8) + 56))(v21, 0, 1);
      sub_214BBC224(v21);
      (*(v22 + 16))(v23, v31, v32);
      (*(v22 + 56))(v23, 0, 1, v32);
      sub_214BBC984(v23);

      sub_214BC6874();
      sub_214AF7FCC();
      v25(v27, v26, v24);
      v7 = sub_214CCFC84();
      v30 = sub_214BC36E4(v7, 0, v28 & 1);
      v54[0] = 0;
      v54[1] = 0;
      v55 = -1;
      v29(v30, v54);
      MEMORY[0x277D82BD8](v30);

      (*(v22 + 8))(v31, v32);
      goto LABEL_17;
    }
  }

  (*(*(v53 + 464) + 16))(*(v53 + 512), *(v53 + 264) + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, *(v53 + 456));
  oslog = sub_214CCDA54();
  v50 = sub_214CCFBB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v52 = sub_214CD03C4();
  if (os_log_type_enabled(oslog, v50))
  {
    v1 = *(v53 + 616);
    buf = sub_214CCFF24();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v47 = sub_214A632C4(0, v45, v45);
    v48 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v53 + 232) = buf;
    *(v53 + 240) = v47;
    *(v53 + 248) = v48;
    sub_214A6627C(0, (v53 + 232));
    sub_214A6627C(0, (v53 + 232));
    *(v53 + 256) = v52;
    v49 = swift_task_alloc();
    v49[2] = v53 + 232;
    v49[3] = v53 + 240;
    v49[4] = v53 + 248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
    sub_214A810E0();
    sub_214CCF764();
    if (v1)
    {
    }

    _os_log_impl(&dword_214A5E000, oslog, v50, "Simulating sensitive content error to trigger the external intelligence flow", buf, 2u);
    sub_214A669DC(v47, 0, v45);
    sub_214A669DC(v48, 0, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();
  }

  else
  {
  }

  v42 = *(v53 + 512);
  v43 = *(v53 + 456);
  v44 = *(v53 + 272);
  v41 = *(v53 + 464);
  v3 = MEMORY[0x277D82BD8](oslog);
  (*(v41 + 8))(v42, v43, v3);

  v56[0] = 5;
  v56[1] = 0;
  v57 = 2;
  v44(0, v56);

LABEL_17:
  (*(*(v53 + 528) + 8))(*(v53 + 552), *(v53 + 520));

  v8 = *(*(v53 + 112) + 8);

  return v8();
}

uint64_t sub_214BC01E8()
{
  v4 = *v1;
  v4[14] = *v1;
  v4[80] = v0;

  if (v0)
  {
    v2 = sub_214BC2DAC;
  }

  else
  {
    (*(v4[40] + 8))(v4[41], v4[39]);

    v2 = sub_214BC0394;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214BC0394()
{
  v126 = v0;
  v108 = *(v0 + 424);
  v110 = *(v0 + 416);
  v107 = *(v0 + 304);
  v109 = *(v0 + 296);
  *(v0 + 112) = v0;
  v106 = *(v108 + 16);
  v106();
  (*(v108 + 56))(v107, 0);
  sub_214BBC984(v107);
  v1 = sub_214BBC7F8(v109);
  if ((*(v108 + 48))(v109, 1, v110, v1))
  {
    sub_214BBCC90(*(v0 + 296));
    v105 = 2;
  }

  else
  {
    v103 = *(v0 + 448);
    v102 = *(v0 + 416);
    v100 = *(v0 + 296);
    v101 = *(v0 + 424);
    (v106)(v103);
    sub_214BBCC90(v100);
    v104 = sub_214CCD8B4();
    (*(v101 + 8))(v103, v102);
    v105 = v104;
  }

  if (v105 == 2)
  {
    v99 = 0;
  }

  else
  {
    v99 = v105;
  }

  v95 = *(v0 + 376);
  v94 = *(v0 + 368);
  v96 = *(v0 + 352);
  v93 = *(v0 + 360);
  *(v0 + 656) = (v99 ^ 1) & 1;
  sub_214CCD8C4();
  (*(v93 + 104))(v94, *MEMORY[0x277D421E0], v96);
  sub_214BC6744();
  v98 = sub_214CD03F4();
  v97 = *(v93 + 8);
  v97(v94, v96);
  v97(v95, v96);
  if (v98)
  {
    v92 = *(v0 + 520);
    v91 = *(v0 + 384);
    v90 = *(v0 + 528);
    sub_214CCD894();
    if ((*(v90 + 48))(v91, 1, v92) != 1)
    {
      v85 = *(v0 + 544);
      v83 = *(v0 + 536);
      v82 = *(v0 + 520);
      v81 = *(v0 + 528);
      (*(v81 + 32))();
      sub_214AF7FCC();
      v84 = *(v81 + 16);
      v84(v85, v83, v82);
      v86 = sub_214CCFC84();
      v87 = [v86 string];
      *(v0 + 80) = sub_214CCF564();
      *(v0 + 88) = v2;
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v87);
      v88 = [objc_opt_self() currentDevice];
      v89 = [v88 isInternal];
      MEMORY[0x277D82BD8](v88);
      if (v89)
      {
        v74 = objc_opt_self();

        v75 = sub_214CCF544();

        v76 = [v74 ec:v75 partiallyRedactedStringForSubjectOrSummary:?];
        MEMORY[0x277D82BD8](v75);
        v77 = sub_214CCF564();
        v78 = v3;
        v4 = MEMORY[0x277D82BD8](v76);
        v79 = v77;
        v80 = v78;
      }

      else
      {
        v69 = objc_opt_self();

        v70 = sub_214CCF544();

        v71 = [v69 fullyRedactedStringForString_];
        MEMORY[0x277D82BD8](v70);
        v72 = sub_214CCF564();
        v73 = v5;
        v4 = MEMORY[0x277D82BD8](v71);
        v79 = v72;
        v80 = v73;
      }

      v6 = *(v0 + 496);
      v7 = *(v0 + 464);
      v8 = *(v0 + 456);
      v9 = *(v0 + 264);
      *(v0 + 96) = v79;
      *(v0 + 104) = v80;
      (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, v8, v4);

      v61 = swift_allocObject();
      *(v61 + 16) = v79;
      *(v61 + 24) = v80;
      oslog = sub_214CCDA54();
      v68 = sub_214CCFBB4();
      v63 = swift_allocObject();
      *(v63 + 16) = 34;
      v64 = swift_allocObject();
      *(v64 + 16) = 8;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_214B21C04;
      *(v62 + 24) = v61;
      v65 = swift_allocObject();
      *(v65 + 16) = sub_214A7E854;
      *(v65 + 24) = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
      sub_214CD03C4();
      v66 = v10;

      *v66 = sub_214A662DC;
      v66[1] = v63;

      v66[2] = sub_214A662DC;
      v66[3] = v64;

      v66[4] = sub_214A7E40C;
      v66[5] = v65;
      sub_214A63280();

      if (os_log_type_enabled(oslog, v68))
      {
        v11 = *(v0 + 640);
        buf = sub_214CCFF24();
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
        v59 = sub_214A632C4(0, v57, v57);
        v60 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v121 = buf;
        v122 = v59;
        v123 = v60;
        sub_214A6627C(2, &v121);
        sub_214A6627C(1, &v121);
        v124 = sub_214A662DC;
        v125 = v63;
        sub_214A66290(&v124, &v121, &v122, &v123);
        if (v11)
        {
        }

        v124 = sub_214A662DC;
        v125 = v64;
        sub_214A66290(&v124, &v121, &v122, &v123);
        v124 = sub_214A7E40C;
        v125 = v65;
        sub_214A66290(&v124, &v121, &v122, &v123);
        _os_log_impl(&dword_214A5E000, oslog, v68, "Received summary: %{public}s", buf, 0xCu);
        sub_214A669DC(v59, 0, v57);
        sub_214A669DC(v60, 1, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();
      }

      else
      {
      }

      v50 = *(v0 + 544);
      v55 = *(v0 + 536);
      v56 = *(v0 + 520);
      v48 = *(v0 + 496);
      v49 = *(v0 + 456);
      v51 = *(v0 + 33);
      v52 = *(v0 + 272);
      v54 = *(v0 + 528);
      v47 = *(v0 + 464);
      v13 = MEMORY[0x277D82BD8](oslog);
      (*(v47 + 8))(v48, v49, v13);

      sub_214BC6874();
      v84(v50, v55, v56);
      v14 = sub_214CCFC84();
      v53 = sub_214BC36E4(v14, (v99 ^ 1) & 1, v51 & 1);
      v119[0] = 0;
      v119[1] = 0;
      v120 = -1;
      v52(v53, v119);
      MEMORY[0x277D82BD8](v53);

      (*(v54 + 8))(v55, v56);
      goto LABEL_25;
    }

    sub_214AF7F24(*(v0 + 384));
  }

  v37 = *(v0 + 448);
  v34 = *(v0 + 440);
  v38 = *(v0 + 416);
  v35 = *(v0 + 424);
  (*(*(v0 + 464) + 16))(*(v0 + 488), *(v0 + 264) + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, *(v0 + 456));
  (v106)(v37, v34, v38);
  v36 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v39 = swift_allocObject();
  (*(v35 + 32))(v39 + v36, v37, v38);
  log = sub_214CCDA54();
  v46 = sub_214CCFBA4();
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_214BC67C4;
  *(v40 + 24) = v39;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_214A7E854;
  *(v43 + 24) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  sub_214CD03C4();
  v44 = v15;

  *v44 = sub_214A662DC;
  v44[1] = v41;

  v44[2] = sub_214A662DC;
  v44[3] = v42;

  v44[4] = sub_214A7E40C;
  v44[5] = v43;
  sub_214A63280();

  if (os_log_type_enabled(log, v46))
  {
    v16 = *(v0 + 640);
    v31 = sub_214CCFF24();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v32 = sub_214A632C4(0, v30, v30);
    v33 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v114 = v31;
    v115 = v32;
    v116 = v33;
    sub_214A6627C(2, &v114);
    sub_214A6627C(1, &v114);
    v117 = sub_214A662DC;
    v118 = v41;
    sub_214A66290(&v117, &v114, &v115, &v116);
    if (v16)
    {
    }

    v117 = sub_214A662DC;
    v118 = v42;
    sub_214A66290(&v117, &v114, &v115, &v116);
    v117 = sub_214A7E40C;
    v118 = v43;
    sub_214A66290(&v117, &v114, &v115, &v116);
    _os_log_impl(&dword_214A5E000, log, v46, "Unable to generate summary: %s", v31, 0xCu);
    sub_214A669DC(v32, 0, v30);
    sub_214A669DC(v33, 1, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();
  }

  else
  {
  }

  v23 = *(v0 + 488);
  v24 = *(v0 + 456);
  v25 = *(v0 + 288);
  v26 = *(v0 + 272);
  v22 = *(v0 + 464);
  v17 = MEMORY[0x277D82BD8](log);
  (*(v22 + 8))(v23, v24, v17);
  sub_214CCD8A4();
  sub_214BC4C04(v25, &v111);
  sub_214BC586C(v25);
  v27 = v111;
  v28 = v112;
  v18 = v112;
  v19 = v113;
  v29 = v113;
  *(v0 + 16) = v111;
  *(v0 + 24) = v18;
  *(v0 + 32) = v19;

  v20 = sub_214BBA9BC(v27, v28, v29);
  *(v0 + 40) = v27;
  *(v0 + 48) = v28;
  *(v0 + 56) = v29;
  v26(0, v20);
  sub_214BC6828(v0 + 40);

  sub_214BBAA50(v27, v28, v29);
LABEL_25:
  (*(*(v0 + 424) + 8))(*(v0 + 440), *(v0 + 416));

  v21 = *(*(v0 + 112) + 8);

  return v21();
}

uint64_t sub_214BC1C2C()
{
  v37 = v0;
  v0[14] = v0;

  v20 = v0[74];
  v1 = v0[59];
  v17 = v0[58];
  v19 = v0[57];
  v18 = v0[33];
  v2 = v20;
  v0[16] = v20;
  (*(v17 + 16))(v1, v18 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, v19);
  v3 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  sub_214B1C228();

  oslog = sub_214CCDA54();
  v29 = sub_214CCFBA4();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214BC6620;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214BC6628;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_214B21624;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  sub_214CD03C4();
  v27 = v4;

  *v27 = sub_214A662DC;
  v27[1] = v24;

  v27[2] = sub_214A662DC;
  v27[3] = v25;

  v27[4] = sub_214B217B4;
  v27[5] = v26;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v29))
  {
    buf = sub_214CCFF24();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v14 = sub_214A632C4(1, v12, v12);
    v15 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = buf;
    v33 = v14;
    v34 = v15;
    sub_214A6627C(2, &v32);
    sub_214A6627C(1, &v32);
    v35 = sub_214A662DC;
    v36 = v24;
    sub_214A66290(&v35, &v32, &v33, &v34);
    v35 = sub_214A662DC;
    v36 = v25;
    sub_214A66290(&v35, &v32, &v33, &v34);
    v35 = sub_214B217B4;
    v36 = v26;
    sub_214A66290(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_214A5E000, oslog, v29, "Unable to generate summary for mail messages: %@", buf, 0xCu);
    sub_214A669DC(v14, 1, v12);
    sub_214A669DC(v15, 0, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();
  }

  else
  {
  }

  v9 = v16[59];
  v10 = v16[57];
  v11 = v16[34];
  v8 = v16[58];
  v5 = MEMORY[0x277D82BD8](oslog);
  (*(v8 + 8))(v9, v10, v5);

  v30[0] = 3;
  v30[1] = 0;
  v31 = 2;
  v11(0, v30);

  v6 = *(v16[14] + 8);

  return v6();
}

uint64_t sub_214BC24E8()
{
  v37 = v0;
  v0[14] = v0;

  v20 = v0[77];
  v1 = v0[59];
  v17 = v0[58];
  v19 = v0[57];
  v18 = v0[33];
  v2 = v20;
  v0[16] = v20;
  (*(v17 + 16))(v1, v18 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, v19);
  v3 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  sub_214B1C228();

  oslog = sub_214CCDA54();
  v29 = sub_214CCFBA4();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214BC6620;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214BC6628;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_214B21624;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  sub_214CD03C4();
  v27 = v4;

  *v27 = sub_214A662DC;
  v27[1] = v24;

  v27[2] = sub_214A662DC;
  v27[3] = v25;

  v27[4] = sub_214B217B4;
  v27[5] = v26;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v29))
  {
    buf = sub_214CCFF24();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v14 = sub_214A632C4(1, v12, v12);
    v15 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = buf;
    v33 = v14;
    v34 = v15;
    sub_214A6627C(2, &v32);
    sub_214A6627C(1, &v32);
    v35 = sub_214A662DC;
    v36 = v24;
    sub_214A66290(&v35, &v32, &v33, &v34);
    v35 = sub_214A662DC;
    v36 = v25;
    sub_214A66290(&v35, &v32, &v33, &v34);
    v35 = sub_214B217B4;
    v36 = v26;
    sub_214A66290(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_214A5E000, oslog, v29, "Unable to generate summary for mail messages: %@", buf, 0xCu);
    sub_214A669DC(v14, 1, v12);
    sub_214A669DC(v15, 0, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();
  }

  else
  {
  }

  v9 = v16[59];
  v10 = v16[57];
  v11 = v16[34];
  v8 = v16[58];
  v5 = MEMORY[0x277D82BD8](oslog);
  (*(v8 + 8))(v9, v10, v5);

  v30[0] = 3;
  v30[1] = 0;
  v31 = 2;
  v11(0, v30);

  v6 = *(v16[14] + 8);

  return v6();
}

uint64_t sub_214BC2DAC()
{
  v40 = v0;
  v1 = v0[41];
  v2 = v0[40];
  v3 = v0[39];
  v0[14] = v0;
  (*(v2 + 8))(v1, v3);

  v23 = v0[80];
  v4 = v0[59];
  v20 = v0[58];
  v22 = v0[57];
  v21 = v0[33];
  v5 = v23;
  v0[16] = v23;
  (*(v20 + 16))(v4, v21 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, v22);
  v6 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  sub_214B1C228();

  oslog = sub_214CCDA54();
  v32 = sub_214CCFBA4();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214BC6620;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_214BC6628;
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_214B21624;
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  sub_214CD03C4();
  v30 = v7;

  *v30 = sub_214A662DC;
  v30[1] = v27;

  v30[2] = sub_214A662DC;
  v30[3] = v28;

  v30[4] = sub_214B217B4;
  v30[5] = v29;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v32))
  {
    buf = sub_214CCFF24();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v17 = sub_214A632C4(1, v15, v15);
    v18 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v35 = buf;
    v36 = v17;
    v37 = v18;
    sub_214A6627C(2, &v35);
    sub_214A6627C(1, &v35);
    v38 = sub_214A662DC;
    v39 = v27;
    sub_214A66290(&v38, &v35, &v36, &v37);
    v38 = sub_214A662DC;
    v39 = v28;
    sub_214A66290(&v38, &v35, &v36, &v37);
    v38 = sub_214B217B4;
    v39 = v29;
    sub_214A66290(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_214A5E000, oslog, v32, "Unable to generate summary for mail messages: %@", buf, 0xCu);
    sub_214A669DC(v17, 1, v15);
    sub_214A669DC(v18, 0, MEMORY[0x277D84F70] + 8);
    sub_214CCFF04();
  }

  else
  {
  }

  v12 = v19[59];
  v13 = v19[57];
  v14 = v19[34];
  v11 = v19[58];
  v8 = MEMORY[0x277D82BD8](oslog);
  (*(v11 + 8))(v12, v13, v8);

  v33[0] = 3;
  v33[1] = 0;
  v34 = 2;
  v14(0, v33);

  v9 = *(v19[14] + 8);

  return v9();
}

uint64_t sub_214BC373C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364D8, &qword_214CF1D60);
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v6 = v2 - v5;
  sub_214CCD8A4();
  v7 = sub_214CCD924();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  if ((*(v8 + 48))(v6, 1) == 1)
  {
    sub_214BC586C(v6);
    v4 = 0;
  }

  else
  {
    v3 = sub_214CCD914();
    (*(v8 + 8))(v6, v7);
    v4 = v3;
  }

  v2[1] = &v10;
  v10 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38600, &qword_214CF1F40);
  return sub_214CCF5B4();
}

uint64_t sub_214BC38D4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v7 = (*(*(sub_214CCD964() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v11 = &v6 - v7;
  v12 = 1;
  v15 = v2 & 1;
  v14 = v3;
  v8 = sub_214CD03C4();
  sub_214CCD954();
  sub_214A63280();
  v9 = v4;
  sub_214BC55E0();
  sub_214CD0084();
  return sub_214CCD844();
}

uint64_t sub_214BC39E4(uint64_t a1, double a2)
{
  *(v3 + 56) = a2;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_214BC3A30, 0);
}

uint64_t sub_214BC3A30()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = v0;
  v5 = v1 * 1000000000.0;
  if (((COERCE_UNSIGNED_INT64(v1 * 1000000000.0) >> 52) & 0x7FF) == 0x7FF)
  {
    return sub_214CD01F4("Fatal error", 11, 2, "Double value cannot be converted to UInt64 because it is either infinite or NaN", 79, 2, "Swift/IntegerTypes.swift", 24, 2, 5923, 0);
  }

  if (v5 <= -1.0)
  {
    return sub_214CD01F4("Fatal error", 11, 2, "Double value cannot be converted to UInt64 because the result would be less than UInt64.min", 91, 2, "Swift/IntegerTypes.swift", 24, 2, 5926, 0);
  }

  if (v5 >= 1.84467441e19)
  {
    return sub_214CD01F4("Fatal error", 11, 2, "Double value cannot be converted to UInt64 because the result would be greater than UInt64.max", 94, 2, "Swift/IntegerTypes.swift", 24, 2, 5929, 0);
  }

  v4[5] = v5;
  v3 = swift_task_alloc();
  v4[8] = v3;
  *v3 = v4[2];
  v3[1] = sub_214BC3CD4;

  return MEMORY[0x282200480](v5);
}