void sub_1A478B248(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(v1 + 4);
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  [v7 setFill];

  [a1 fillRect_];
  [v5 setFill];
  [a1 fillRect_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v8 setAlignment_];
  [v8 setLineBreakMode_];
  sub_1A3C2A4D0(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v10 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemFontOfSize_];
  v14 = sub_1A3C52C70(0, &qword_1EB120610, 0x1E69DB878);
  *(inited + 40) = v13;
  v15 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  v16 = v15;
  v17 = [v6 whiteColor];
  v18 = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
  *(inited + 80) = v17;
  v19 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  *(inited + 144) = sub_1A3C52C70(0, &qword_1EB12FEF0, 0x1E69DB7C8);
  *(inited + 120) = v8;
  v20 = v19;
  v21 = v8;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A3C8BC40(0);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v23 = sub_1A524C634();
  type metadata accessor for Key(0);
  sub_1A3C29E4C(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
  v24 = sub_1A524C3D4();

  v25 = [v22 initWithString:v23 attributes:v24];

  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = v3;
  v26.size.height = v4;
  [v25 boundingRectWithSize:33 options:0 context:{CGRectGetWidth(v26), INFINITY}];
  PXRectWithSizeAlignedToRectEdges();
}

uint64_t sub_1A478B5F0(uint64_t a1)
{
  v2 = type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A478B64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A478B6B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v10 = sub_1A52414C4();
    v11 = sub_1A3C29E4C(a3, MEMORY[0x1E6969B50], a4);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_1A478B74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A478B7B0(uint64_t a1)
{
  sub_1A478B6B4(0, &qword_1EB141878, &qword_1EB12AF68, MEMORY[0x1E6969B78], MEMORY[0x1E69E6E40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A478B87C(uint64_t a1)
{
  result = sub_1A5241144();
  if (v2 <= 0x3F)
  {
    result = sub_1A3C52C70(319, &qword_1EB1205C0, 0x1E69DC888);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id PhotosDetailsDateTimeEditViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosDetailsDateTimeEditViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsDateTimeEditViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosDetailsDateTimeEditViewFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosDetailsDateTimeEditViewFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void _s12PhotosUICore0A30DetailsDateTimeEditViewFactoryC04dateeG10Controller6assets10completionSo06UIViewJ0CSo13PHFetchResultCySo7PHAssetCG_ySbctFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v4 = type metadata accessor for PhotosDetailsTimeEditView(0);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A5241534();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v31 = &v30 - v18;
  v19 = [a1 count];
  v34 = a1;
  if (v19 < 2)
  {
    v20 = [a1 objectAtIndexedSubscript_];
  }

  else
  {
    v20 = a1;
  }

  v21 = v20;
  v22 = sub_1A4954E30(v20, v19 > 1);
  [v22 fetchPropertySetsIfNeeded];
  v33 = v22;
  v23 = [v22 px_creationDate];
  if (v23)
  {
    v24 = v23;
    sub_1A52410F4();

    v25 = *(v13 + 32);
    v25(v11, v15, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v26 = v31;
    v25(v31, v11, v12);
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    v26 = v31;
    sub_1A5241134();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_1A3C42E70(v11, sub_1A3C41108);
    }
  }

  type metadata accessor for PhotosDetailsTimeEditViewModel(0);
  v27 = [v33 px_timeZone];
  v28 = v32;
  sub_1A5241524();

  v29 = v21;
  sub_1A4916BD4(v21, v19 > 1, v26, v28);
}

void sub_1A478BFAC(uint64_t a1, double a2)
{
  v5 = *(v2 + 16);
  v6 = objc_allocWithZone(PXChangeAssetDateAction);
  v7 = sub_1A5241514();
  v8 = [v6 initWithAssets:v5 dateOffset:v7 timeZone:a2];

  if (v8)
  {
    v10[4] = PXDisplayCollectionDetailedCountsMake;
    v10[5] = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3D6084C;
    v10[3] = &block_descriptor_13_9;
    v9 = _Block_copy(v10);
    [v8 executeWithUndoManager:a1 completionHandler:v9];
    _Block_release(v9);
  }
}

uint64_t sub_1A478C0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsTimeEditView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A478C128(uint64_t a1)
{
  if (!qword_1EB141898)
  {
    type metadata accessor for PhotosDetailsTimeEditView(255);
    sub_1A46475D4();
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141898);
    }
  }
}

void sub_1A478C18C(char a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = [v3 presentingViewController];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v5;
    *(v8 + 32) = a1 & 1;
    v10[4] = sub_1A478C2A0;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3C2E0D0;
    v10[3] = &block_descriptor_271;
    v9 = _Block_copy(v10);

    [v7 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A478C2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478C4E0(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47A23D4(v2 + *(a1 + 40), v11, sub_1A478C4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5248714();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1A478C514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A478C578@<X0>(uint64_t (*a1)(void, double)@<X0>, void (*a2)(uint64_t, char *, double)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0, v12);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  a2(v8, &v23 - v17, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = sub_1A524D254();
    v22 = sub_1A524A014();
    sub_1A5246DF4(v21, &dword_1A3C1C000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1A478C774(uint64_t a1, unsigned int *a2)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1A478C578(sub_1A3E71AC8, sub_1A3D61D44, MEMORY[0x1E69C2218], &v13 - v8);
  (*(v4 + 104))(v6, *a2, v3);
  v10 = sub_1A5242D04();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  return v10 & 1;
}

void sub_1A478C8F8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v37 - v7;
  *a2 = swift_getKeyPath();
  sub_1A4137EE8(0);
  swift_storeEnumTagMultiPayload();
  v8 = *((v5 & v4) + 0x58);
  v10 = type metadata accessor for LemonadeCollectionCustomizationView(0, v6, v8, v9);
  v11 = a2 + v10[9];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v10[10];
  *(a2 + v12) = swift_getKeyPath();
  sub_1A478C4E0(0);
  swift_storeEnumTagMultiPayload();
  v13 = v10[11];
  *(a2 + v13) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v14 = (a2 + v10[14]);
  v38 = 0;
  sub_1A524B694();
  v15 = v41;
  *v14 = v40;
  v14[1] = v15;
  v16 = (a2 + v10[15]);
  v38 = 0;
  sub_1A524B694();
  v17 = v41;
  *v16 = v40;
  v16[1] = v17;
  v18 = (a2 + v10[16]);
  v19 = sub_1A478CCB4(135.0, 135.0);
  v21 = v20;
  v23 = v22;
  v24 = v19;
  *v18 = v20;
  v18[1] = v22;
  v18[2] = v19;
  v25 = a2 + v10[17];

  *v25 = sub_1A5247C34() & 1;
  *(v25 + 1) = v26;
  v25[16] = v27 & 1;
  *(a2 + v10[12]) = a1;
  sub_1A524CC54();
  v28 = a1;
  v29 = sub_1A524CC44();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v28;
  v32 = v28;
  v33 = sub_1A524CC44();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v31;
  v34[4] = v32;
  sub_1A524B944();
  v40 = v21;
  v41 = v23;
  v42 = v24;
  sub_1A478C514(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
  sub_1A524B6A4();

  v35 = v38;
  v36 = v39;
  sub_1A524B974();
  MEMORY[0x1A5906C60]();
  (*(v8 + 400))(v35, v36, 0, v6, v8);
  sub_1A524B904();
}

uint64_t sub_1A478CCB4(double a1, double a2)
{
  type metadata accessor for CGSize(0);
  sub_1A524B694();
  return v3;
}

uint64_t sub_1A478CD18(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1A4407CE4(v3);
}

void sub_1A478CDF0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v178 = a2;
  v187 = type metadata accessor for LemonadeAnalyticsViewTimeTracker(0);
  MEMORY[0x1EEE9AC00](v187);
  v177 = (&v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v191 = a1;
  v183 = type metadata accessor for LemonadeCollectionCustomizationPhotosPickerModifier(0, v4, v5, v6);
  v176 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v175 = &v129 - v7;
  v8 = sub_1A5249E44();
  v173 = *(v8 - 8);
  v174 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v172 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = *(a1 - 8);
  v198 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v170 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v169 = &v129 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v197 = &v129 - v15;
  v196 = sub_1A524B974();
  v194 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v193 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v192 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v180 = &v129 - v20;
  v195 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v190 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478E5A8(255);
  sub_1A3C48C7C(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
  *&v247 = v23;
  sub_1A478FBCC(255);
  *(&v247 + 1) = v24;
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  *&v248 = sub_1A524DF24();
  sub_1A4790094(255);
  *(&v248 + 1) = v25;
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A5247D04();
  sub_1A479D500(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  sub_1A479012C(255);
  v26 = sub_1A5248804();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1A3E754D0();
  v241 = WitnessTable;
  v242 = v28;
  v29 = MEMORY[0x1E697E858];
  v30 = swift_getWitnessTable();
  v31 = sub_1A478EE38(&qword_1EB141B48, sub_1A479012C, MEMORY[0x1E697F940]);
  v239 = v30;
  v240 = v31;
  v188 = v29;
  v32 = swift_getWitnessTable();
  v147 = type metadata accessor for LemonadeCollectionCustomizationNavigationView(255, v26, v32, v33);
  v34 = sub_1A5248804();
  v148 = swift_getWitnessTable();
  v237 = v148;
  v238 = MEMORY[0x1E69805D0];
  v35 = swift_getWitnessTable();
  *&v247 = v34;
  v153 = v34;
  *(&v247 + 1) = v35;
  v36 = v35;
  v155 = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v162 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v154 = &v129 - v38;
  *&v247 = v34;
  *(&v247 + 1) = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v247 = OpaqueTypeMetadata2;
  v151 = OpaqueTypeMetadata2;
  v152 = OpaqueTypeConformance2;
  *(&v247 + 1) = OpaqueTypeConformance2;
  v182 = swift_getOpaqueTypeMetadata2();
  v168 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v185 = &v129 - v40;
  v200 = v5;
  v189 = v4;
  swift_getAssociatedTypeWitness();
  sub_1A439AF64(255);
  sub_1A5248804();
  v41 = sub_1A524DF24();
  *&v247 = OpaqueTypeMetadata2;
  *(&v247 + 1) = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = sub_1A478EE38(&qword_1EB141B60, sub_1A439AF64, MEMORY[0x1E6980A18]);
  v235 = AssociatedConformanceWitness;
  v236 = v44;
  v234 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v46 = v182;
  *&v247 = v182;
  *(&v247 + 1) = v41;
  v47 = v41;
  v144 = v41;
  v145 = v45;
  *&v248 = v42;
  v146 = v42;
  *(&v248 + 1) = v45;
  v48 = v45;
  v157 = swift_getOpaqueTypeMetadata2();
  v160 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v150 = &v129 - v49;
  v50 = sub_1A5248804();
  v167 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v184 = &v129 - v51;
  v158 = v50;
  v52 = sub_1A5248804();
  v171 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v186 = &v129 - v53;
  *&v247 = v46;
  *(&v247 + 1) = v47;
  *&v248 = v42;
  *(&v248 + 1) = v48;
  v54 = swift_getOpaqueTypeConformance2();
  v149 = v54;
  v55 = swift_getWitnessTable();
  v232 = v54;
  v233 = v55;
  v56 = swift_getWitnessTable();
  v156 = v56;
  v57 = sub_1A478EE38(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker, &unk_1A5362FD0);
  v230 = v56;
  v231 = v57;
  v165 = v52;
  v164 = swift_getWitnessTable();
  *&v247 = v52;
  *(&v247 + 1) = MEMORY[0x1E69E6370];
  *&v248 = v164;
  *(&v248 + 1) = MEMORY[0x1E69E6388];
  v166 = swift_getOpaqueTypeMetadata2();
  v163 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v159 = &v129 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v59);
  v161 = &v129 - v61;
  v62 = v190;
  v63 = v196;
  MEMORY[0x1A5906C60](v196, v60);
  v64 = v189;
  v65 = v200;
  v66 = (*(v200 + 96))(v189);
  v142 = v67;
  v143 = v66;
  v68 = *(v195 + 8);
  v195 += 8;
  v181 = v68;
  v68(v62, v64);
  v69 = v180;
  sub_1A524B924();
  v206 = v64;
  v207 = v65;
  swift_getKeyPath();
  sub_1A524B914();

  v194 = *(v194 + 8);
  (v194)(v69, v63);
  v140 = *(&v247 + 1);
  v141 = v247;
  v138 = *(&v248 + 1);
  v139 = v248;
  v70 = v201;
  v71 = v192;
  sub_1A524B924();
  v204 = v64;
  v72 = v200;
  v205 = v200;
  swift_getKeyPath();
  sub_1A524B914();

  (v194)(v71, v63);
  v136 = *(&v219 + 1);
  v137 = v219;
  v135 = v220;
  v73 = v70;
  v74 = v193;
  sub_1A524B924();
  v202 = v64;
  v203 = v72;
  v75 = v72;
  swift_getKeyPath();
  sub_1A524B914();

  (v194)(v74, v63);
  v133 = *(&v208 + 1);
  v134 = v208;
  v132 = v209;
  v76 = v191;
  sub_1A4407780(v246);
  v245[0] = v246[0];
  LOBYTE(v243) = 0;
  v77 = v64;
  v78 = v75;
  v131 = static LemonadeCollectionCustomizationViewModel.CustomizationType.== infix(_:_:)(v245, &v243);
  v79 = v199;
  v194 = *(v199 + 16);
  v192 = (v199 + 16);
  v80 = v197;
  (v194)(v197, v73, v76);
  v193 = *(v79 + 80);
  v81 = (v193 + 32) & ~v193;
  v188 = v81;
  v82 = swift_allocObject();
  v130 = v82;
  *(v82 + 16) = v77;
  *(v82 + 24) = v78;
  v83 = *(v79 + 32);
  v199 = v79 + 32;
  v83(v82 + v81, v80, v76);
  v84 = v83;
  v85 = v169;
  v86 = v201;
  v87 = v194;
  (v194)(v169, v201, v76);
  v88 = swift_allocObject();
  v129 = v88;
  *(v88 + 16) = v77;
  v89 = v200;
  *(v88 + 24) = v200;
  v84(v88 + v81, v85, v76);
  v90 = v170;
  v91 = v86;
  v92 = v76;
  v87(v170, v91, v76);
  v93 = v188;
  v94 = swift_allocObject();
  *(v94 + 16) = v189;
  *(v94 + 24) = v89;
  v84(v94 + v93, v90, v76);
  v179 = v84;
  *&v247 = v143;
  *(&v247 + 1) = v142;
  *&v248 = v141;
  *(&v248 + 1) = v140;
  *&v249 = v139;
  *(&v249 + 1) = v138;
  *&v250 = v137;
  *(&v250 + 1) = v136;
  LOBYTE(v251) = v135;
  *(&v251 + 1) = *v245;
  DWORD1(v251) = *&v245[3];
  *(&v251 + 1) = v134;
  *&v252 = v133;
  BYTE8(v252) = v132;
  BYTE9(v252) = v131;
  *(&v252 + 10) = v243;
  HIWORD(v252) = v244;
  *&v253 = sub_1A4790994;
  *(&v253 + 1) = v130;
  *&v254 = sub_1A4796D90;
  *(&v254 + 1) = v129;
  *&v255 = sub_1A4796EE0;
  *(&v255 + 1) = v94;
  v95 = v197;
  (v194)(v197, v201, v76);
  v96 = v93;
  v97 = swift_allocObject();
  v98 = v189;
  v99 = v200;
  *(v97 + 16) = v189;
  *(v97 + 24) = v99;
  v100 = v97 + v96;
  v101 = v92;
  v84(v100, v95, v92);
  v102 = swift_checkMetadataState();
  sub_1A524B134();

  v246[6] = v253;
  v246[7] = v254;
  v246[8] = v255;
  v246[2] = v249;
  v246[3] = v250;
  v246[5] = v252;
  v246[4] = v251;
  v246[1] = v248;
  v246[0] = v247;
  (*(*(v102 - 8) + 8))(v246, v102);
  v216 = v227;
  v217 = v228;
  v218 = v229;
  v212 = v223;
  v213 = v224;
  v214 = v225;
  v215 = v226;
  v208 = v219;
  v209 = v220;
  v210 = v221;
  v211 = v222;
  v103 = v172;
  sub_1A52497D4();
  v104 = swift_checkMetadataState();
  v105 = v154;
  sub_1A524AEC4();
  (*(v173 + 8))(v103, v174);
  v255 = v216;
  v256 = v217;
  v257 = v218;
  v251 = v212;
  v252 = v213;
  v254 = v215;
  v253 = v214;
  v247 = v208;
  v248 = v209;
  v250 = v211;
  v249 = v210;
  (*(*(v104 - 8) + 8))(&v247, v104);
  v106 = v151;
  sub_1A524AEF4();
  (*(v162 + 8))(v105, v106);
  v107 = v201;
  v108 = v190;
  MEMORY[0x1A5906C60](v196);
  v109 = v99;
  (*(v99 + 344))(v98, v99);
  v181(v108, v98);
  v110 = v197;
  (v194)(v197, v107, v101);
  v111 = v188;
  v112 = swift_allocObject();
  *(v112 + 16) = v98;
  *(v112 + 24) = v109;
  v179(v112 + v111, v110, v101);
  swift_checkMetadataState();
  v113 = v150;
  v114 = v182;
  v115 = v185;
  sub_1A524AFF4();

  (*(v168 + 8))(v115, v114);
  v116 = v180;
  v117 = v196;
  sub_1A524B924();
  v118 = v200;
  v119 = sub_1A3EFB548();
  v121 = v175;
  sub_1A3EFB57C(v119, v122, v120 & 0x1FF, v116, v98, v118, v175);
  v123 = v183;
  v124 = v157;
  MEMORY[0x1A5906490](v121, v157, v183, v149);
  (*(v176 + 8))(v121, v123);
  (*(v160 + 8))(v113, v124);
  *&v219 = 0;
  *(&v219 + 1) = 0xE000000000000000;
  sub_1A524E404();

  *&v219 = 0xD000000000000018;
  *(&v219 + 1) = 0x80000001A53EA970;
  v125 = v190;
  MEMORY[0x1A5906C60](v117);
  v126 = (*(v200 + 88))(v98, v200);
  v128 = v127;
  v181(v125, v98);
  MEMORY[0x1A5907B60](v126, v128);

  sub_1A47E2D44(v219, *(&v219 + 1), v177);
}

void sub_1A478E5A8(uint64_t a1)
{
  if (!qword_1EB1418A0)
  {
    sub_1A478E650(255);
    sub_1A478FB28(&qword_1EB141AA8, sub_1A478E650, sub_1A478FB98, MEMORY[0x1E6982090]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1418A0);
    }
  }
}

void sub_1A478E6FC(uint64_t a1)
{
  if (!qword_1EB1418C8)
  {
    sub_1A478E790(255);
    sub_1A478EE38(&qword_1EB141A80, sub_1A478E790, MEMORY[0x1E6981880]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1418C8);
    }
  }
}

void sub_1A478E790(uint64_t a1)
{
  if (!qword_1EB1418D0)
  {
    sub_1A478E824(255);
    sub_1A478EE38(&qword_1EB141A78, sub_1A478E824, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1418D0);
    }
  }
}

void sub_1A478E860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A478E98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A478EA58(uint64_t a1)
{
  if (!qword_1EB141908)
  {
    sub_1A478E98C(255, &qword_1EB141910, sub_1A478EB00, sub_1A478EE80, MEMORY[0x1E697F960]);
    sub_1A478EF38();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141908);
    }
  }
}

void sub_1A478EB3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A478EBA8(uint64_t a1)
{
  if (!qword_1EB141920)
  {
    sub_1A478EC48(255);
    sub_1A479D500(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141920);
    }
  }
}

unint64_t sub_1A478ECD8()
{
  result = qword_1EB141940;
  if (!qword_1EB141940)
  {
    sub_1A478EC90(255);
    sub_1A478ED88();
    sub_1A478EE38(&qword_1EB127830, sub_1A3EC18C4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141940);
  }

  return result;
}

unint64_t sub_1A478ED88()
{
  result = qword_1EB1281E0;
  if (!qword_1EB1281E0)
  {
    sub_1A3E33E34(255);
    sub_1A3E44BC8();
    sub_1A478EE38(&qword_1EB127800, sub_1A3D6D248, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1281E0);
  }

  return result;
}

uint64_t sub_1A478EE38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A478EEB4(uint64_t a1)
{
  if (!qword_1EB141958)
  {
    sub_1A479A5DC(255, &qword_1EB141960, sub_1A3E42C88, MEMORY[0x1E6981748]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141958);
    }
  }
}

unint64_t sub_1A478EF38()
{
  result = qword_1EB141968;
  if (!qword_1EB141968)
  {
    sub_1A478E98C(255, &qword_1EB141910, sub_1A478EB00, sub_1A478EE80, MEMORY[0x1E697F960]);
    sub_1A478F164(&qword_1EB141970, sub_1A478EB00, sub_1A478F078);
    sub_1A478FB28(&qword_1EB141990, sub_1A478EE80, sub_1A478F128, MEMORY[0x1E6982090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141968);
  }

  return result;
}

unint64_t sub_1A478F078()
{
  result = qword_1EB141978;
  if (!qword_1EB141978)
  {
    sub_1A478EBA8(255);
    sub_1A478EE38(&unk_1EB141980, sub_1A478EC48, MEMORY[0x1E6981880]);
    sub_1A3E754D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141978);
  }

  return result;
}

uint64_t sub_1A478F164(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A478F1E4()
{
  result = qword_1EB1419A0;
  if (!qword_1EB1419A0)
  {
    sub_1A479A5DC(255, &qword_1EB141960, sub_1A3E42C88, MEMORY[0x1E6981748]);
    sub_1A478EE38(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1419A0);
  }

  return result;
}

void sub_1A478F2EC(uint64_t a1)
{
  if (!qword_1EB1419B8)
  {
    sub_1A478F380(255);
    sub_1A478EE38(&qword_1EB141A70, sub_1A478F380, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1419B8);
    }
  }
}

void sub_1A478F3D4(uint64_t a1)
{
  if (!qword_1EB1419D0)
  {
    sub_1A478F468(255);
    sub_1A478EE38(&qword_1EB141A68, sub_1A478F468, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1419D0);
    }
  }
}

void sub_1A478F4F8(uint64_t a1)
{
  if (!qword_1EB1419F0)
  {
    sub_1A478E98C(255, &qword_1EB1419F8, sub_1A478F5A0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A478F7B8();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1419F0);
    }
  }
}

void sub_1A478F618(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A47A166C(255, a3, MEMORY[0x1E6981748], a4, MEMORY[0x1E697E830]);
    a5(255);
    v7 = sub_1A5248804();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A478F6AC(uint64_t a1)
{
  if (!qword_1EB141A18)
  {
    sub_1A478F728();
    v1 = sub_1A5249FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141A18);
    }
  }
}

unint64_t sub_1A478F728()
{
  result = qword_1EB141A20;
  if (!qword_1EB141A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141A20);
  }

  return result;
}

unint64_t sub_1A478F7B8()
{
  result = qword_1EB141A30;
  if (!qword_1EB141A30)
  {
    sub_1A478E98C(255, &qword_1EB1419F8, sub_1A478F5A0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A478F8AC();
    sub_1A478EE38(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141A30);
  }

  return result;
}

unint64_t sub_1A478F8AC()
{
  result = qword_1EB141A38;
  if (!qword_1EB141A38)
  {
    sub_1A478F5A0(255);
    sub_1A478F95C();
    sub_1A478EE38(&unk_1EB141A58, sub_1A478F77C, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141A38);
  }

  return result;
}

unint64_t sub_1A478F95C()
{
  result = qword_1EB141A40;
  if (!qword_1EB141A40)
  {
    sub_1A478F5E8(255);
    sub_1A478FA2C(&qword_1EB1285B8, &qword_1EB1285B0, MEMORY[0x1E697E048]);
    sub_1A478EE38(&qword_1EB141A50, sub_1A478F6AC, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141A40);
  }

  return result;
}

uint64_t sub_1A478FA2C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A47A166C(255, a2, MEMORY[0x1E6981748], a3, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A478FB28(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A478FBCC(uint64_t a1)
{
  if (!qword_1EB141AC0)
  {
    sub_1A478FC88(255);
    sub_1A478F164(&qword_1EB141B00, sub_1A478FC88, sub_1A478FF34);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141AC0);
    }
  }
}

void sub_1A478FCC4(uint64_t a1)
{
  if (!qword_1EB141AD0)
  {
    sub_1A478E98C(255, &qword_1EB141AD8, sub_1A478FD68, sub_1A3EBB1B4, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141AD0);
    }
  }
}

void sub_1A478FD68(uint64_t a1)
{
  if (!qword_1EB141AE0)
  {
    sub_1A478FDEC(255);
    sub_1A478FE54();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141AE0);
    }
  }
}

unint64_t sub_1A478FE54()
{
  result = qword_1EB141AF0;
  if (!qword_1EB141AF0)
  {
    sub_1A478FDEC(255);
    sub_1A478EE38(&qword_1EB12DBA0, type metadata accessor for LemonadeCollectionCustomizationTitleField, &protocol conformance descriptor for LemonadeCollectionCustomizationTitleField);
    sub_1A478EE38(&qword_1EB127830, sub_1A3EC18C4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141AF0);
  }

  return result;
}

unint64_t sub_1A478FF70()
{
  result = qword_1EB141B10;
  if (!qword_1EB141B10)
  {
    sub_1A478E98C(255, &qword_1EB141AD8, sub_1A478FD68, sub_1A3EBB1B4, MEMORY[0x1E697E830]);
    sub_1A478FDEC(255);
    sub_1A478FE54();
    swift_getOpaqueTypeConformance2();
    sub_1A478EE38(&qword_1EB1277A0, sub_1A3EBB1B4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141B10);
  }

  return result;
}

void sub_1A479012C(uint64_t a1)
{
  if (!qword_1EB141B30)
  {
    sub_1A47A166C(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A47901BC();
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141B30);
    }
  }
}

unint64_t sub_1A47901BC()
{
  result = qword_1EB141B40;
  if (!qword_1EB141B40)
  {
    sub_1A47A166C(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141B40);
  }

  return result;
}

uint64_t sub_1A4790278@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 224))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1A4790330@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 120))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A47903C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 728))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A4790450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a1;
  v40 = a5;
  v39 = type metadata accessor for LemonadeCollectionCustomizationView(0, a2, a3, a4);
  v7 = *(v39 - 8);
  v38 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v33 - v8;
  sub_1A478E5A8(255);
  sub_1A3C48C7C(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
  v46 = v9;
  sub_1A478FBCC(255);
  v47 = v10;
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  v48 = sub_1A524DF24();
  sub_1A4790094(255);
  v49 = v11;
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  v12 = sub_1A5247D04();
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  sub_1A479D500(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  v15 = sub_1A5248804();
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v41 = a2;
  v42 = a3;
  v19 = v36;
  v43 = v36;
  sub_1A524A044();
  sub_1A5247D14();
  v20 = v37;
  v21 = v19;
  v22 = v39;
  (*(v7 + 16))(v37, v21, v39);
  v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  (*(v7 + 32))(v24 + v23, v20, v22);
  WitnessTable = swift_getWitnessTable();
  v26 = sub_1A3E75420();
  sub_1A3E707DC(MEMORY[0x1E69E7DE0], sub_1A3F8D060, 0, sub_1A47A1D9C, v24, v12, MEMORY[0x1E69E7DE0], WitnessTable, v26);

  (*(v33 + 8))(v14, v12);
  v27 = sub_1A524B344();
  v28 = sub_1A5248874();
  v29 = sub_1A524A064();
  v46 = v27;
  v47 = v28;
  LOBYTE(v48) = v29;
  sub_1A524BC74();
  sub_1A47A166C(0, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
  v30 = sub_1A3E754D0();
  v44 = WitnessTable;
  v45 = v30;
  v31 = v34;
  swift_getWitnessTable();
  sub_1A47901BC();
  sub_1A524A8E4();

  return (*(v35 + 8))(v18, v31);
}

uint64_t sub_1A47909AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v262 = a4;
  sub_1A3C48C7C(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
  *v291 = v7;
  sub_1A478FBCC(255);
  *&v291[8] = v8;
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  *&v291[16] = sub_1A524DF24();
  sub_1A4790094(255);
  v292 = v9;
  swift_getTupleTypeMetadata();
  v10 = sub_1A524BE24();
  v260 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v247 = &v205 - v11;
  sub_1A47900D0(0);
  v240 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v241 = (&v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4790094(0);
  v242 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v246 = &v205 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v239 = &v205 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v245 = &v205 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v221 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v219 = &v205 - v21;
  v234 = v22;
  v23 = sub_1A5248804();
  v235 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v222 = &v205 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v220 = &v205 - v26;
  v255 = v27;
  v244 = sub_1A524DF24();
  v243 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v258 = &v205 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v256 = &v205 - v30;
  v251 = sub_1A524B974();
  v265 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  *&v226 = &v205 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  *&v225 = &v205 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v223 = &v205 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v250 = &v205 - v37;
  sub_1A478FDEC(0);
  v229 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v228 = &v205 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478FCC4(0);
  v230 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v231 = &v205 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478FC88(0);
  v252 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v232 = &v205 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478FBCC(0);
  v238 = v44;
  v237 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v236 = &v205 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v266 = &v205 - v47;
  v48 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v224 = &v205 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v248 = &v205 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v205 - v54;
  v261 = v10;
  v259 = sub_1A524DF24();
  v253 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v57 = &v205 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v270 = &v205 - v59;
  sub_1A478E5A8(0);
  v254 = v60;
  MEMORY[0x1EEE9AC00](v60);
  v257 = &v205 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v205 - v63;
  v65 = a3;
  v67 = type metadata accessor for LemonadeCollectionCustomizationView(0, a2, a3, v66);
  v68 = sub_1A47928A0(v67);
  v70 = v69;
  *v64 = sub_1A5249574();
  *(v64 + 1) = v68;
  v64[16] = v70 & 1;
  sub_1A47A22B8(0, &qword_1EB141F80, sub_1A478E650, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  v72 = *(v71 + 44);
  v269 = v64;
  v73 = a1;
  sub_1A4792908(a1, a2, v65, &v64[v72]);
  v271 = v67;
  v74 = v65;
  v75 = sub_1A524B974();
  v267 = v73;
  MEMORY[0x1A5906C60]();
  v76 = v65 + 592;
  v77 = *(v74 + 592);
  v268 = v74;
  LOBYTE(v68) = v77(a2, v74);
  v80 = *(v48 + 8);
  v79 = v48 + 8;
  v78 = v80;
  v81 = a2;
  v80(v55, a2);
  if (v68)
  {
    v233 = v76;
    v218 = v57;
    v82 = v271;
    v264 = v75;
    MEMORY[0x1A5906C60](v75);
    v83 = (*(v268 + 360))(a2);
    v84 = v55;
    v263 = v81;
    v249 = v79;
    v227 = v78;
    v78(v55, v81);
    if (v83)
    {
      v85 = v267;
      v86 = sub_1A478C774(v82, MEMORY[0x1E69C2210]);
      v87 = 0x4040000000000000;
      if (v86)
      {
        v87 = 0x4044000000000000;
      }

      v217 = v87;
      v88 = v85;
    }

    else
    {
      v217 = 0;
      v88 = v267;
    }

    v216 = v83 ^ 1;
    v93 = v264;
    MEMORY[0x1A5906C60](v264);
    v94 = v263;
    v95 = v268;
    LODWORD(v233) = v77(v263, v268);
    v214 = v84;
    v96 = v227;
    v227(v84, v94);
    MEMORY[0x1A5906C60](v93);
    v97 = (*(v95 + 664))(v94, v95);
    v96(v84, v94);
    v215 = *(v97 + 16);

    MEMORY[0x1A5906C60](v93);
    (*(v95 + 248))(&v280, v94, v95);
    v96(v84, v94);
    v213 = v280;
    v98 = v248;
    MEMORY[0x1A5906C60](v93);
    v212 = (*(v95 + 216))(v94, v95);
    v211 = v99;
    v96(v98, v94);
    v100 = v250;
    v101 = sub_1A524B924();
    MEMORY[0x1EEE9AC00](v101);
    *(&v205 - 2) = v94;
    *(&v205 - 1) = v95;
    swift_getKeyPath();
    v102 = v88;
    v103 = v251;
    sub_1A524B914();

    v105 = v265 + 8;
    v104 = *(v265 + 8);
    v104(v100, v103);
    v248 = v104;
    v210 = *v291;
    v209 = *&v291[16];
    v208 = v292;
    v106 = v223;
    v107 = sub_1A524B924();
    MEMORY[0x1EEE9AC00](v107);
    *(&v205 - 2) = v94;
    *(&v205 - 1) = v95;
    swift_getKeyPath();
    sub_1A524B914();

    v104(v106, v103);
    v223 = v277;
    v207 = v278;
    v108 = v225;
    v109 = v264;
    v110 = sub_1A524B924();
    MEMORY[0x1EEE9AC00](v110);
    *(&v205 - 2) = v94;
    *(&v205 - 1) = v95;
    swift_getKeyPath();
    sub_1A524B914();

    (v248)(v108, v103);
    v225 = v287;
    v206 = v288;
    v205 = v289;
    v111 = v226;
    v112 = sub_1A524B924();
    MEMORY[0x1EEE9AC00](v112);
    *(&v205 - 2) = v94;
    *(&v205 - 1) = v95;
    swift_getKeyPath();
    sub_1A524B914();

    v265 = v105;
    (v248)(v111, v103);
    v226 = v285;
    v113 = v286;
    v114 = v102;
    v115 = v224;
    MEMORY[0x1A5906C60](v109);
    v116 = v263;
    LOBYTE(v104) = (*(v95 + 192))(v263, v95);
    v117 = v227;
    v227(v115, v116);
    v118 = v228;
    *v228 = v213;
    v119 = v211;
    *(v118 + 8) = v212;
    *(v118 + 16) = v119;
    *(v118 + 24) = v210;
    v120 = v208;
    *(v118 + 40) = v209;
    *(v118 + 48) = v120;
    *(v118 + 56) = v223;
    v121 = v225;
    *(v118 + 64) = v207;
    *(v118 + 80) = v121;
    v122 = v205;
    *(v118 + 96) = v206;
    *(v118 + 104) = v122;
    *(v118 + 112) = v226;
    *(v118 + 128) = v113;
    *(v118 + 136) = (v104 & 1) == 0;
    v123 = *(type metadata accessor for LemonadeCollectionCustomizationTitleField(0) + 44);
    *(v118 + v123) = swift_getKeyPath();
    sub_1A3F31578(0);
    *&v226 = v124;
    swift_storeEnumTagMultiPayload();
    v125 = sub_1A524A0F4();
    KeyPath = swift_getKeyPath();
    v127 = (v118 + *(v229 + 36));
    *v127 = KeyPath;
    v127[1] = v125;
    sub_1A478FE54();
    v128 = v231;
    sub_1A524AF64();
    sub_1A479AE68(v118, sub_1A478FDEC);
    v129 = swift_getKeyPath();
    sub_1A478E98C(0, &qword_1EB141AD8, sub_1A478FD68, sub_1A3EBB1B4, MEMORY[0x1E697E830]);
    v131 = &v128[*(v130 + 36)];
    *v131 = v129;
    *(v131 + 1) = 1;
    v131[16] = 0;
    LOBYTE(v118) = sub_1A524A054();
    v132 = v271;
    sub_1A478C774(v271, MEMORY[0x1E69C21F8]);
    sub_1A5247BC4();
    v133 = &v128[*(v230 + 36)];
    *v133 = v118;
    v134 = v117;
    v135 = v214;
    *(v133 + 1) = v136;
    *(v133 + 2) = v137;
    *(v133 + 3) = v138;
    *(v133 + 4) = v139;
    v133[40] = 0;
    if (v233)
    {
      v140 = 1.0;
    }

    else
    {
      v140 = 0.0;
    }

    v141 = v128;
    v142 = v232;
    sub_1A479DC1C(v141, v232, sub_1A478FCC4);
    *(v142 + *(v252 + 36)) = v140;
    v143 = (v114 + *(v132 + 68));
    v144 = *v143;
    v145 = *(v143 + 1);
    LOBYTE(v143) = v143[16];
    v291[0] = v144;
    *&v291[8] = v145;
    v291[16] = v143;
    sub_1A47A166C(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
    sub_1A5247C24();
    v231 = sub_1A478F164(&qword_1EB141B00, sub_1A478FC88, sub_1A478FF34);
    sub_1A524B074();

    sub_1A47A0FA8(v142, sub_1A478FC88);
    v146 = v264;
    MEMORY[0x1A5906C60](v264);
    v147 = v263;
    v148 = (*(v95 + 696))(v263, v95);
    v149 = v147;
    v134(v135, v147);
    v150 = MEMORY[0x1E697E5D8];
    if (v148)
    {
      v151 = v271;
      MEMORY[0x1A5906C60](v146);
      v152 = v219;
      (*(v268 + 688))(v149, v268);
      v134(v135, v149);
      sub_1A524A054();
      sub_1A478C774(v151, MEMORY[0x1E69C21F8]);
      v153 = v234;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v155 = v222;
      sub_1A524B0D4();
      (*(v221 + 8))(v152, v153);
      v249 = AssociatedConformanceWitness;
      v272 = AssociatedConformanceWitness;
      v273 = MEMORY[0x1E697E5D8];
      v156 = v255;
      swift_getWitnessTable();
      v157 = v235;
      v158 = *(v235 + 16);
      v159 = v220;
      v158(v220, v155, v156);
      v160 = *(v157 + 8);
      v160(v155, v156);
      v158(v155, v159, v156);
      v160(v159, v156);
      v161 = v258;
      (*(v157 + 32))(v258, v155, v156);
      (*(v157 + 56))(v161, 0, 1, v156);
      v149 = v263;
    }

    else
    {
      v161 = v258;
      (*(v235 + 56))(v258, 1, 1, v255);
      v249 = swift_getAssociatedConformanceWitness();
      v283 = v249;
      v284 = v150;
      swift_getWitnessTable();
    }

    v162 = v243;
    v235 = *(v243 + 16);
    v163 = v244;
    (v235)(v256, v161, v244);
    v243 = *(v162 + 8);
    (v243)(v161, v163);
    v164 = v271;
    v165 = v250;
    v166 = sub_1A524B924();
    MEMORY[0x1EEE9AC00](v166);
    v167 = v268;
    *(&v205 - 2) = v149;
    *(&v205 - 1) = v167;
    swift_getKeyPath();
    v168 = v251;
    sub_1A524B914();

    (v248)(v165, v168);
    v169 = v241;
    *v241 = *v291;
    *(v169 + 8) = *&v291[8];
    v170 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
    *(v169 + 24) = 0u;
    *(v169 + 40) = 0u;
    *(v169 + 56) = 0u;
    *(v169 + 72) = 0;
    v171 = *(v170 + 28);
    *(v169 + v171) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v172 = *(v170 + 32);
    *(v169 + v172) = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v172) = sub_1A524A054();
    sub_1A478C774(v164, MEMORY[0x1E69C21F8]);
    sub_1A5247BC4();
    v173 = v169 + *(v240 + 36);
    *v173 = v172;
    *(v173 + 8) = v174;
    *(v173 + 16) = v175;
    *(v173 + 24) = v176;
    *(v173 + 32) = v177;
    *(v173 + 40) = 0;
    if ((v233 & (v215 != 0)) != 0)
    {
      v178 = 1.0;
    }

    else
    {
      v178 = 0.0;
    }

    v179 = v239;
    sub_1A47A1AD8(v169, v239, sub_1A47900D0);
    v180 = v242;
    *(v179 + *(v242 + 36)) = v178;
    v181 = v179;
    v182 = v245;
    sub_1A47A1AD8(v181, v245, sub_1A4790094);
    v280 = v217;
    v281 = 0;
    v282 = v216 & 1;
    *v291 = &v280;
    v183 = v237;
    v184 = v236;
    v185 = v238;
    (*(v237 + 16))(v236, v266, v238);
    *&v291[8] = v184;
    v186 = v161;
    v187 = v161;
    v188 = v256;
    (v235)(v187, v256, v163);
    *&v291[16] = v186;
    v189 = v246;
    sub_1A47A23D4(v182, v246, sub_1A4790094);
    v292 = v189;
    sub_1A3C48C7C(0, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    *&v287 = v190;
    *(&v287 + 1) = v185;
    v288 = v163;
    v289 = v180;
    v277 = sub_1A45D5530();
    *&v285 = v252;
    *(&v285 + 1) = v231;
    *&v278 = swift_getOpaqueTypeConformance2();
    v275 = v249;
    v276 = MEMORY[0x1E697E5D8];
    WitnessTable = swift_getWitnessTable();
    *(&v278 + 1) = swift_getWitnessTable();
    v279 = sub_1A478F164(&qword_1EB141F98, sub_1A4790094, sub_1A47A1E28);
    v191 = v247;
    sub_1A3DF4988(v291, 4uLL, &v287);
    sub_1A479AE68(v182, sub_1A4790094);
    v192 = v188;
    v193 = v243;
    (v243)(v192, v163);
    v194 = *(v183 + 8);
    v194(v266, v185);
    sub_1A479AE68(v189, sub_1A4790094);
    v193(v258, v163);
    v194(v184, v185);
    v195 = v260;
    v92 = v218;
    v196 = v261;
    (*(v260 + 32))(v218, v191, v261);
    (*(v195 + 56))(v92, 0, 1, v196);
    swift_getWitnessTable();
    v197 = v253;
    v90 = *(v253 + 16);
    v91 = v259;
    v90(v270, v92, v259);
    v268 = *(v197 + 8);
    (v268)(v92, v91);
  }

  else
  {
    (*(v260 + 56))(v57, 1, 1, v261);
    swift_getWitnessTable();
    v89 = v253;
    v90 = *(v253 + 16);
    v91 = v259;
    v90(v270, v57, v259);
    v268 = *(v89 + 8);
    (v268)(v57, v91);
    v92 = v57;
  }

  v198 = sub_1A47928A0(v271);
  v200 = v199;
  v201 = v257;
  sub_1A47A1014(v269, v257, sub_1A478E5A8);
  *v291 = v201;
  v202 = v270;
  v90(v92, v270, v91);
  *&v285 = v198;
  BYTE8(v285) = v200 & 1;
  *&v291[8] = v92;
  *&v291[16] = &v285;
  *&v287 = v254;
  *(&v287 + 1) = v91;
  v288 = MEMORY[0x1E6981840];
  v277 = sub_1A478EE38(&qword_1EB141F88, sub_1A478E5A8, MEMORY[0x1E6981870]);
  v290 = swift_getWitnessTable();
  *&v278 = swift_getWitnessTable();
  *(&v278 + 1) = MEMORY[0x1E6981838];
  sub_1A3DF4988(v291, 3uLL, &v287);
  v203 = v268;
  (v268)(v202, v91);
  sub_1A47A0FA8(v269, sub_1A478E5A8);
  v203(v92, v91);
  return sub_1A47A0FA8(v201, sub_1A478E5A8);
}

uint64_t sub_1A47928A0(uint64_t a1)
{
  if (sub_1A478C774(a1, MEMORY[0x1E69C2210]))
  {
    return 0;
  }

  if (sub_1A478C774(a1, MEMORY[0x1E69C21F8]))
  {
    return 0x4030000000000000;
  }

  return 0x4020000000000000;
}

uint64_t sub_1A4792908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v147 = a4;
  sub_1A478E684(0);
  v146 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v142 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v129 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1A5249544();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47A166C(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v14 = v13;
  v122 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v118 - v15;
  sub_1A478E98C(0, &unk_1EB141A90, sub_1A45AC794, sub_1A3EC18C4, MEMORY[0x1E697E830]);
  v126 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v118 - v17;
  sub_1A45AC870(0);
  v127 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478FAEC(0);
  v138 = v20;
  v137 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v131 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v118 - v23;
  sub_1A478FAB8(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v141 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v140 = &v118 - v27;
  sub_1A478E6C0(0);
  v135 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v118 - v31;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v133 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v118 - v37;
  v40 = type metadata accessor for LemonadeCollectionCustomizationView(0, a2, a3, v39);
  v134 = sub_1A524B974();
  MEMORY[0x1A5906C60]();
  v41 = *(a3 + 360);
  v144 = a3;
  v42 = a3;
  v43 = v146;
  v44 = v41(a2, v42);
  v45 = *(v33 + 8);
  v145 = a2;
  v136 = v33 + 8;
  v143 = v45;
  v45(v38, a2);
  v46 = v147;
  v47 = 1;
  if (v44)
  {
    v119 = v14;
    v120 = v8;
    *v32 = sub_1A5249574();
    *(v32 + 1) = 0;
    v32[16] = 1;
    sub_1A47A22B8(0, &unk_1EB141FB0, sub_1A478E790, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    v49 = &v32[*(v48 + 44)];
    *v49 = sub_1A524BC74();
    v49[1] = v50;
    sub_1A47A22B8(0, &qword_1EB141FC0, sub_1A478E824, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    v52 = v49 + *(v51 + 44);
    v53 = a1;
    v54 = a1;
    v55 = v144;
    sub_1A4793804(v53, v145, v144, v52);
    v56 = (v54 + *(v40 + 64));
    v58 = v56[1];
    v59 = v56[2];
    *&v151 = *v56;
    v57 = v151;
    *(&v151 + 1) = v58;
    *&v152 = v59;
    sub_1A478C514(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    *&v151 = v57;
    *(&v151 + 1) = v58;
    *&v152 = v59;
    sub_1A524B6A4();
    sub_1A524BC74();
    sub_1A52481F4();
    v60 = *(v135 + 9);
    v135 = v32;
    v61 = &v32[v60];
    v62 = v149;
    *v61 = v148;
    *(v61 + 1) = v62;
    *(v61 + 2) = v150;
    v118 = v54;
    v63 = v133;
    v64 = v134;
    MEMORY[0x1A5906C60](v134);
    v65 = v145;
    v66 = (*(v55 + 616))(v145, v55);
    v68 = v67;
    v143(v63, v65);
    if (v66)
    {
      MEMORY[0x1A5906C60](v64);
      v69 = v145;
      v70 = (*(v144 + 640))(v145);
      v72 = v71;
      v143(v38, v69);
      *&v151 = v70;
      *(&v151 + 1) = v72;
      v73 = swift_allocObject();
      v74 = v66;
      *(v73 + 16) = v66;
      *(v73 + 24) = v68;
      sub_1A3D5F9DC();
      v145 = v68;

      v75 = v121;
      sub_1A524B754();
      v76 = v123;
      sub_1A5249534();
      sub_1A3D6E520();
      sub_1A478EE38(&unk_1EB122DF0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
      v77 = v128;
      v78 = v119;
      v79 = v125;
      sub_1A524A934();
      (*(v124 + 8))(v76, v79);
      (*(v122 + 8))(v75, v78);
      sub_1A478E98C(0, &qword_1EB141AA0, sub_1A419A5C4, sub_1A3E744F4, MEMORY[0x1E697E830]);
      v81 = (v77 + *(v80 + 36));
      sub_1A3E744F4(0);
      sub_1A5248B14();
      *v81 = swift_getKeyPath();
      LODWORD(v81) = sub_1A5249A04();
      sub_1A45AC794(0);
      *(v77 + *(v82 + 36)) = v81;
      v83 = sub_1A524A154();
      v84 = v129;
      (*(*(v83 - 8) + 56))(v129, 1, 1, v83);
      v85 = sub_1A524A1B4();
      sub_1A479AE68(v84, sub_1A3E75D84);
      KeyPath = swift_getKeyPath();
      v87 = (v77 + *(v126 + 36));
      *v87 = KeyPath;
      v87[1] = v85;
      sub_1A524BC74();
      sub_1A5248AD4();
      v88 = v132;
      sub_1A3D1FDDC(v77, v132);
      v89 = (v88 + *(v127 + 36));
      v90 = v154;
      v91 = v156;
      v92 = v157;
      v89[4] = v155;
      v89[5] = v91;
      v89[6] = v92;
      v93 = v152;
      *v89 = v151;
      v89[1] = v93;
      v89[2] = v153;
      v89[3] = v90;
      sub_1A3C48C7C(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52FC9F0;
      LOBYTE(v77) = sub_1A524A094();
      *(inited + 32) = v77;
      v95 = sub_1A524A0B4();
      *(inited + 33) = v95;
      v96 = sub_1A524A0A4();
      sub_1A524A0A4();
      if (sub_1A524A0A4() != v77)
      {
        v96 = sub_1A524A0A4();
      }

      sub_1A524A0A4();
      v97 = sub_1A524A0A4();
      v43 = v146;
      v8 = v120;
      v98 = v140;
      v99 = v135;
      if (v97 != v95)
      {
        v96 = sub_1A524A0A4();
      }

      sub_1A5247BC4();
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v107 = v106;
      sub_1A3C784D4(v74, v145);
      v108 = v131;
      sub_1A479DC1C(v88, v131, sub_1A45AC870);
      v109 = v138;
      v110 = v108 + *(v138 + 36);
      *v110 = v96;
      *(v110 + 8) = v101;
      *(v110 + 16) = v103;
      *(v110 + 24) = v105;
      *(v110 + 32) = v107;
      *(v110 + 40) = 0;
      v111 = v108;
      v112 = v130;
      sub_1A479DC1C(v111, v130, sub_1A478FAEC);
      sub_1A479DC1C(v112, v98, sub_1A478FAEC);
      v47 = 0;
    }

    else
    {
      v43 = v146;
      v8 = v120;
      v98 = v140;
      v109 = v138;
      v99 = v135;
    }

    (*(v137 + 56))(v98, v47, 1, v109);
    v113 = v139;
    sub_1A47A23D4(v99, v139, sub_1A478E6C0);
    v114 = v141;
    sub_1A47A1014(v98, v141, sub_1A478FAB8);
    v115 = v142;
    sub_1A47A23D4(v113, v142, sub_1A478E6C0);
    sub_1A478E860(0, &qword_1EB1418B8, sub_1A478E6C0, sub_1A478FAB8);
    sub_1A47A1014(v114, v115 + *(v116 + 48), sub_1A478FAB8);
    sub_1A47A0FA8(v98, sub_1A478FAB8);
    sub_1A479AE68(v99, sub_1A478E6C0);
    sub_1A47A0FA8(v114, sub_1A478FAB8);
    sub_1A479AE68(v113, sub_1A478E6C0);
    v46 = v147;
    sub_1A479DC1C(v115, v147, sub_1A478E684);
    v47 = 0;
  }

  return (*(v8 + 56))(v46, v47, 1, v43);
}

uint64_t sub_1A4793804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v164 = a4;
  sub_1A478F2EC(0);
  v160 = *(v7 - 8);
  v161 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v153 = (v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A478F2B8(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v163 = v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v162 = v133 - v12;
  v158 = sub_1A5242DD4();
  v152 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v151 = v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E697F948];
  sub_1A478E98C(0, &unk_1EB141FC8, sub_1A478EA10, MEMORY[0x1E69C2288], MEMORY[0x1E697F948]);
  v157 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v154 = v133 - v16;
  v140 = sub_1A5243834();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v149 = v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478C514(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v150 = v133 - v19;
  v145 = sub_1A5243EC4();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v142 = v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4574000(0);
  v138 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v143 = v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478EA10(0);
  v156 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v141 = v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v146 = v133 - v26;
  sub_1A478E98C(0, &qword_1EB141FD8, type metadata accessor for LemonadeCollectionCustomizationKeyAsset, sub_1A478E944, v14);
  v171 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v168 = v133 - v28;
  v167 = type metadata accessor for LemonadeCollectionCustomizationKeyAsset(0);
  MEMORY[0x1EEE9AC00](v167);
  v30 = v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478E944(0);
  v165 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v155 = v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v159 = v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v166 = v133 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v148 = v133 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v147 = v133 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v133 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v133 - v46;
  sub_1A478E8DC(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v169 = v133 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = v133 - v51;
  v53 = a3;
  v55 = type metadata accessor for LemonadeCollectionCustomizationView(0, a2, a3, v54);
  v172 = sub_1A524B974();
  MEMORY[0x1A5906C60]();
  v56 = *(v53 + 368);
  v170 = v53;
  v57 = v56(a2, v53);
  v59 = *(v33 + 8);
  v58 = v33 + 8;
  v60 = v47;
  v61 = a2;
  v62 = a2;
  v63 = v59;
  v59(v60, v62);
  v173 = a1;
  if (v57)
  {
    v64 = (a1 + *(v55 + 64));
    v65 = *(v64 + 2);
    v175 = *v64;
    *&v176 = v65;
    sub_1A478C514(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v66 = v174;
    *v30 = v57;
    *(v30 + 8) = v66;
    v67 = *(v167 + 24);
    *&v30[v67] = swift_getKeyPath();
    sub_1A3F31578(0);
    swift_storeEnumTagMultiPayload();
    sub_1A47A23D4(v30, v168, type metadata accessor for LemonadeCollectionCustomizationKeyAsset);
    swift_storeEnumTagMultiPayload();
    sub_1A47A2068();
    sub_1A47A20C0();
    sub_1A5249744();
    sub_1A479AE68(v30, type metadata accessor for LemonadeCollectionCustomizationKeyAsset);
    v68 = v52;
    v69 = v172;
    v70 = v63;
    v71 = v170;
    goto LABEL_23;
  }

  v134 = v52;
  v72 = v172;
  MEMORY[0x1A5906C60](v172);
  v73 = v170;
  (*(v170 + 416))(&v174, v61, v170);
  v63(v44, v61);
  v137 = v55;
  v74 = v72;
  v75 = v63;
  v135 = v63;
  v133[1] = v58;
  v136 = v61;
  if (v174)
  {
    v76 = v148;
    MEMORY[0x1A5906C60](v74);
    v71 = v73;
    v77 = (*(v73 + 440))(v61, v73);
    v75(v76, v61);
    v78 = v158;
    if (v77)
    {
      if (!(v77 >> 62))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3D435C4();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v85 = v154;
    v86 = v152;
    v87 = v151;
    sub_1A524B344();
    sub_1A5242DE4();
    (*(v86 + 16))(v85, v87, v78);
    swift_storeEnumTagMultiPayload();
    sub_1A47A1ED8();
    sub_1A478EE38(&qword_1EB129130, MEMORY[0x1E69C2288], MEMORY[0x1E69C2280]);
    v88 = v155;
    sub_1A5249744();
    (*(v86 + 8))(v87, v78);
    v89 = v168;
    goto LABEL_22;
  }

  v79 = v147;
  MEMORY[0x1A5906C60](v74);
  v80 = (*(v73 + 440))(v61, v73);
  v63(v79, v61);
  v71 = v73;
  if (!v80)
  {
    v81 = v149;
    v82 = v150;
LABEL_18:
    if (sub_1A478C774(v137, MEMORY[0x1E69C2210]))
    {
      v90 = sub_1A52429A4();
      (*(*(v90 - 8) + 56))(v82, 1, 1, v90);
    }

    else
    {
      v91 = *MEMORY[0x1E69C2058];
      v92 = sub_1A52429A4();
      v93 = *(v92 - 8);
      (*(v93 + 104))(v82, v91, v92);
      (*(v93 + 56))(v82, 0, 1, v92);
    }

    v94 = v146;
    v95 = v145;
    v96 = v144;
    v97 = v143;
    v98 = v142;
    v175 = 0u;
    v176 = 0u;
    v177 = 1;
    (*(v139 + 104))(v81, *MEMORY[0x1E69C2678], v140);
    sub_1A5243ED4();
    v99 = (v97 + *(v138 + 36));
    v100 = v98;
    v101 = *(sub_1A5248A14() + 20);
    v102 = *MEMORY[0x1E697F468];
    v103 = sub_1A52494A4();
    (*(*(v103 - 8) + 104))(&v99[v101], v102, v103);
    __asm { FMOV            V0.2D, #18.0 }

    *v99 = _Q0;
    sub_1A3E42C88(0);
    *&v99[*(v109 + 36)] = 256;
    (*(v96 + 32))(v97, v100, v95);
    v110 = sub_1A524BC74();
    v112 = v111;
    v113 = v141;
    v114 = &v141[*(v156 + 36)];
    sub_1A4794B44(v173, v136, v71, v114);
    sub_1A478EA58(0);
    v116 = (v114 + *(v115 + 36));
    *v116 = v110;
    v116[1] = v112;
    sub_1A47A1AD8(v97, v113, sub_1A4574000);
    sub_1A47A1AD8(v113, v94, sub_1A478EA10);
    sub_1A47A23D4(v94, v154, sub_1A478EA10);
    swift_storeEnumTagMultiPayload();
    sub_1A47A1ED8();
    sub_1A478EE38(&qword_1EB129130, MEMORY[0x1E69C2288], MEMORY[0x1E69C2280]);
    v117 = v94;
    v88 = v155;
    sub_1A5249744();
    sub_1A479AE68(v117, sub_1A478EA10);
    v89 = v168;
LABEL_22:
    sub_1A47A23D4(v88, v89, sub_1A478E944);
    swift_storeEnumTagMultiPayload();
    sub_1A47A2068();
    sub_1A47A20C0();
    v118 = v134;
    sub_1A5249744();
    v119 = v88;
    v68 = v118;
    sub_1A479AE68(v119, sub_1A478E944);
    v69 = v172;
    v70 = v135;
    v61 = v136;
LABEL_23:
    v120 = v166;
    MEMORY[0x1A5906C60](v69);
    v121 = (*(v71 + 496))(v61, v71);
    v70(v120, v61);
    if (v121)
    {
      v122 = v159;
      MEMORY[0x1A5906C60](v69);
      v123 = (*(v71 + 704))(v61, v71);
      v70(v122, v61);
      v124 = 1;
      if (v123 >= 1)
      {
        v125 = sub_1A5249574();
        v126 = v153;
        *v153 = v125;
        *(v126 + 8) = 0;
        *(v126 + 16) = 1;
        sub_1A47A22B8(0, &unk_1EB142010, sub_1A478F380, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
        sub_1A47957FC(v173, v61, v71, v126 + *(v127 + 44));
        v128 = v162;
        sub_1A47A1AD8(v126, v162, sub_1A478F2EC);
        v124 = 0;
        v130 = v163;
        v129 = v164;
LABEL_28:
        (*(v160 + 56))(v128, v124, 1, v161);
        v131 = v169;
        sub_1A47A23D4(v68, v169, sub_1A478E8DC);
        sub_1A47A23D4(v128, v130, sub_1A478F2B8);
        sub_1A47A23D4(v131, v129, sub_1A478E8DC);
        sub_1A478E860(0, &qword_1EB1418E0, sub_1A478E8DC, sub_1A478F2B8);
        sub_1A47A23D4(v130, v129 + *(v132 + 48), sub_1A478F2B8);
        sub_1A479AE68(v128, sub_1A478F2B8);
        sub_1A479AE68(v68, sub_1A478E8DC);
        sub_1A479AE68(v130, sub_1A478F2B8);
        return sub_1A479AE68(v131, sub_1A478E8DC);
      }
    }

    else
    {
      v124 = 1;
    }

    v130 = v163;
    v129 = v164;
    v128 = v162;
    goto LABEL_28;
  }

  v81 = v149;
  v82 = v150;
  if (v80 >> 62)
  {
    result = sub_1A524E2B4();
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_17:

      goto LABEL_18;
    }
  }

  if ((v80 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0, v80);
    goto LABEL_17;
  }

  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v84 = *(v80 + 32);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1A4794B44(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a4;
  v7 = sub_1A5248714();
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - v10;
  v11 = sub_1A524B554();
  v102 = *(v11 - 8);
  v103 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479A5DC(0, &qword_1EB141960, sub_1A3E42C88, MEMORY[0x1E6981748]);
  v100 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v106 = (&v100 - v14);
  sub_1A478EEB4(0);
  v111 = *(v15 - 8);
  v112 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v100 - v18;
  sub_1A478E98C(0, &qword_1EB142020, sub_1A478EB00, sub_1A478EE80, MEMORY[0x1E697F948]);
  v118 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v100 - v20;
  v23 = type metadata accessor for LemonadeCollectionCustomizationView(0, a2, a3, v22);
  v115 = *(v23 - 8);
  v113 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v100 - v24;
  sub_1A478EE80(0);
  v119 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A524B974();
  v121 = a1;
  MEMORY[0x1A5906C60](v32);
  v33 = a3[55];
  v117 = a3;
  v34 = v33(a2, a3);
  v35 = *(v28 + 8);
  v116 = a2;
  v35(v31, a2);
  if (!v34)
  {
LABEL_15:
    v76 = sub_1A524BC74();
    v111 = v77;
    v112 = v76;
    v78 = sub_1A524B544();
    v79 = (v121 + *(v23 + 60));
    v80 = *v79;
    v81 = v79[1];
    *&v122 = v80;
    *(&v122 + 1) = v81;
    sub_1A3C48C7C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    sub_1A524BC74();
    sub_1A52481F4();
    LOBYTE(v133[0]) = 1;
    *&v150[6] = v122;
    *&v150[22] = v123;
    *&v150[38] = v124;
    v82 = sub_1A524B2B4();
    KeyPath = swift_getKeyPath();
    if (sub_1A478C774(v23, MEMORY[0x1E69C21F8]))
    {
      v84 = sub_1A524A0D4();
    }

    else
    {
      v84 = sub_1A524A134();
    }

    v85 = v84;
    v86 = swift_getKeyPath();
    *(v130 + 2) = *v150;
    *(&v130[1] + 2) = *&v150[16];
    *(&v130[2] + 2) = *&v150[32];
    v136 = *v150;
    v129 = v78;
    LOWORD(v130[0]) = 1;
    *&v130[3] = *&v150[46];
    *(&v130[3] + 1) = KeyPath;
    *&v131 = v82;
    *(&v131 + 1) = v86;
    v132 = v85;
    v133[0] = v78;
    v133[1] = 0;
    v134 = 1;
    v135 = 0;
    v137 = *&v150[16];
    *v138 = *&v150[32];
    *&v138[14] = *&v150[46];
    v139 = KeyPath;
    v140 = v82;
    v141 = v86;
    v142 = v85;
    sub_1A47A23D4(&v129, &v122, sub_1A478EC90);
    sub_1A479AE68(v133, sub_1A478EC90);
    v147 = v130[3];
    v148 = v131;
    v149 = v132;
    v143 = v129;
    v144 = v130[0];
    v145 = v130[1];
    v146 = v130[2];
    v88 = v114;
    v87 = v115;
    (*(v115 + 16))(v114, v121, v23);
    v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v90 = swift_allocObject();
    v91 = v117;
    *(v90 + 16) = v116;
    *(v90 + 24) = v91;
    (*(v87 + 32))(v90 + v89, v88, v23);
    sub_1A524BC74();
    sub_1A5248AD4();
    v92 = v111;
    *v21 = v112;
    *(v21 + 1) = v92;
    v93 = v148;
    *(v21 + 5) = v147;
    *(v21 + 6) = v93;
    v94 = v149;
    v95 = v144;
    *(v21 + 1) = v143;
    *(v21 + 2) = v95;
    v96 = v146;
    *(v21 + 3) = v145;
    *(v21 + 4) = v96;
    *(v21 + 14) = v94;
    *(v21 + 15) = sub_1A3F8D060;
    v97 = v124;
    *(v21 + 200) = v125;
    v98 = v127;
    *(v21 + 216) = v126;
    *(v21 + 232) = v98;
    *(v21 + 248) = v128;
    v99 = v123;
    *(v21 + 152) = v122;
    *(v21 + 168) = v99;
    *(v21 + 16) = 0;
    *(v21 + 17) = sub_1A47A2170;
    *(v21 + 18) = v90;
    *(v21 + 184) = v97;
    swift_storeEnumTagMultiPayload();
    sub_1A478EB00(0);
    sub_1A478F164(&qword_1EB141970, sub_1A478EB00, sub_1A478F078);
    sub_1A478FB28(&qword_1EB141990, sub_1A478EE80, sub_1A478F128, MEMORY[0x1E6982090]);
    sub_1A5249744();
    return;
  }

  v36 = v34;
  v37 = v34 & 0xFFFFFFFFFFFFFF8;
  if (v36 >> 62)
  {
    v74 = v36;
    v75 = sub_1A524E2B4();
    v36 = v74;
    if (v75)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (!*(v37 + 16))
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_4:
  if ((v36 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0, v36);
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = *(v37 + 16);

    if (!v38)
    {
      __break(1u);
      return;
    }
  }

  v39 = *sub_1A4758698();
  v40 = sub_1A524C634();
  v41 = [objc_opt_self() imageNamed:v40 inBundle:v39 compatibleWithTraitCollection:0];

  if (v41)
  {
    v117 = v41;
    sub_1A524B524();
    v43 = v101;
    v42 = v102;
    v44 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x1E6981630], v103);
    v45 = sub_1A524B5C4();

    (*(v42 + 8))(v43, v44);
    v46 = v106;
    v47 = v106 + *(v100 + 36);
    v48 = *(sub_1A5248A14() + 20);
    v49 = *MEMORY[0x1E697F468];
    v50 = sub_1A52494A4();
    (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
    __asm { FMOV            V0.2D, #18.0 }

    *v47 = _Q0;
    sub_1A3E42C88(0);
    *&v47[*(v56 + 36)] = 256;
    *v46 = v45;
    v57 = v107;
    sub_1A478C2E8(v23, v107);
    v59 = v108;
    v58 = v109;
    v60 = v110;
    (*(v109 + 104))(v108, *MEMORY[0x1E697E7D8], v110);
    LOBYTE(v49) = sub_1A5248704();
    v61 = *(v58 + 8);
    v61(v59, v60);
    v61(v57, v60);
    if (v49)
    {
      v62 = -1.0;
    }

    else
    {
      v62 = 1.0;
    }

    sub_1A524BE94();
    v64 = v63;
    v66 = v65;

    v67 = v46;
    v68 = v105;
    sub_1A47A2230(v67, v105);
    v69 = v112;
    v70 = v68 + *(v112 + 36);
    *v70 = v62;
    *(v70 + 8) = 0x3FF0000000000000;
    *(v70 + 16) = v64;
    *(v70 + 24) = v66;
    v71 = v68;
    v72 = v104;
    sub_1A47A1AD8(v71, v104, sub_1A478EEB4);
    sub_1A47A1AD8(v72, v27, sub_1A478EEB4);
    v73 = 0;
  }

  else
  {
    v73 = 1;
    v69 = v112;
  }

  (*(v111 + 56))(v27, v73, 1, v69);
  sub_1A47A23D4(v27, v21, sub_1A478EE80);
  swift_storeEnumTagMultiPayload();
  sub_1A478EB00(0);
  sub_1A478F164(&qword_1EB141970, sub_1A478EB00, sub_1A478F078);
  sub_1A478FB28(&qword_1EB141990, sub_1A478EE80, sub_1A478F128, MEMORY[0x1E6982090]);
  sub_1A5249744();
  sub_1A479AE68(v27, sub_1A478EE80);
}

uint64_t sub_1A47957FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A478F3D4(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  *v13 = sub_1A5249314();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1A47A22B8(0, &qword_1EB142028, sub_1A478F468, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A4795978(a1, a2, a3, v15, &v13[*(v14 + 44)]);
  sub_1A47A23D4(v13, v10, sub_1A478F3D4);
  *a4 = 0;
  *(a4 + 8) = 1;
  sub_1A478F3B4(0);
  sub_1A47A23D4(v10, a4 + *(v16 + 48), sub_1A478F3D4);
  sub_1A479AE68(v13, sub_1A478F3D4);
  return sub_1A479AE68(v10, sub_1A478F3D4);
}

uint64_t sub_1A4795978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v31 = a3;
  v32 = a5;
  v7 = type metadata accessor for LemonadeCollectionCustomizationView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  sub_1A478F4BC(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  (*(v8 + 16))(v10, a1, v7, v16);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = swift_allocObject();
  v21 = v31;
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  (*(v8 + 32))(v20 + v19, v10, v7);
  sub_1A478E98C(0, &qword_1EB1419F8, sub_1A478F5A0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  sub_1A478F7B8();
  sub_1A524B704();
  LOBYTE(v19) = sub_1A524A064();
  sub_1A5247BC4();
  v22 = &v18[*(v12 + 44)];
  *v22 = v19;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_1A47A23D4(v18, v14, sub_1A478F4BC);
  v27 = v32;
  *v32 = 0;
  *(v27 + 8) = 1;
  v28 = v27;
  sub_1A478F49C(0);
  sub_1A47A23D4(v14, v28 + *(v29 + 48), sub_1A478F4BC);
  sub_1A479AE68(v18, sub_1A478F4BC);
  return sub_1A479AE68(v14, sub_1A478F4BC);
}

double sub_1A4795C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeCollectionCustomizationView(0, v8, v9, v10);
  v11 = sub_1A524B974();
  MEMORY[0x1A5906C60](v11);
  v12 = (*(a3 + 168))(a2, a3);
  v13 = (*(v5 + 8))(v7, a2);
  v12(v13);

  return result;
}

uint64_t sub_1A4795D68@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_1A524B554();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478F5A0(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524B544();
  (*(v2 + 104))(v4, *MEMORY[0x1E6981630], v1);
  v8 = sub_1A524B5C4();

  (*(v2 + 8))(v4, v1);
  sub_1A524BC74();
  sub_1A52481F4();
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v14 = v26;
  v13 = v27;
  v15 = sub_1A524B434();
  LOBYTE(v19) = v10;
  v21 = v12;
  sub_1A5248554();
  *v7 = v8;
  *(v7 + 1) = v9;
  v7[16] = v10;
  *(v7 + 3) = v11;
  v7[32] = v12;
  *(v7 + 5) = v14;
  *(v7 + 6) = v13;
  *(v7 + 7) = v15;
  *(v7 + 8) = 0x3FF0000000000000;
  *(v7 + 36) = 256;
  v19 = sub_1A3C38BD4(0xD00000000000002DLL);
  v20 = v16;
  sub_1A478F8AC();
  sub_1A3D5F9DC();
  sub_1A524AC94();

  return sub_1A479AE68(v7, sub_1A478F5A0);
}

uint64_t sub_1A4795FEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 272))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A4796090@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 296))(*(a1 + a2 - 16));
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1A3C7146C;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_1A479611C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];
  if (*a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1A3E30F88;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(v5 + 304);
  v11 = sub_1A3D607F0(v6, v7);
  return v10(v9, v8, v4, v5, v11);
}

uint64_t sub_1A47961D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 320))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A4796220(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = *(v5 + 328);
  v8 = *a1;
  return v7(v6, v4, v5);
}

uint64_t sub_1A4796280@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, char a15)
{
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 136) = a15;
  v16 = *(type metadata accessor for LemonadeCollectionCustomizationTitleField(0) + 44);
  *(a9 + v16) = swift_getKeyPath();
  sub_1A3F31578(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4796318@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 664))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A47963BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = *v6;
  type metadata accessor for LemonadeCollectionCustomizationView(0, v8, v9, v9);
  sub_1A3C48C7C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A478C514(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A524B6A4();
  sub_1A524B974();
  MEMORY[0x1A5906C60]();
  (*(a4 + 400))(v7 * 0.5, v7 * 0.5, 0, a3, a4);
  return sub_1A524B904();
}

void sub_1A47965A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5248284();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5249234();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeCollectionCustomizationView(0, a2, a3, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524B974();
  MEMORY[0x1A5906C60](v19);
  v20 = (*(a3 + 752))(a2, a3);
  (*(v15 + 8))(v18, a2);
  if (v20)
  {
    (*(v12 + 16))(v14, a1, v11);
    v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;
    (*(v12 + 32))(v22 + v21, v14, v11);
    sub_1A524B974();
    MEMORY[0x1A5906C60]();
    (*(a3 + 784))(sub_1A4797A38, v22, a2, a3);
    sub_1A524B904();
    v23 = a1 + *(v11 + 36);
    v24 = *v23;
    if (*(v23 + 8) == 1)
    {
      v26 = v24;
    }

    else
    {

      v31 = sub_1A524D254();
      v32 = sub_1A524A014();
      sub_1A5246DF4(v31, &dword_1A3C1C000, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v33 = v42;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v24, 0);
      (*(v43 + 8))(v33, v44);
      v26 = v45;
      v24 = v45;
    }

    v25.value.super.isa = v24;
    LemonadeCollectionCustomizationViewModel.didComplete(undoManager:)(v25);
  }

  else
  {
    v27 = a1 + *(v11 + 36);
    v28 = *v27;
    if (*(v27 + 8) == 1)
    {
      v30 = v28;
    }

    else
    {

      v34 = sub_1A524D254();
      v35 = sub_1A524A014();
      sub_1A5246DF4(v34, &dword_1A3C1C000, v35, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v36 = v42;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v28, 0);
      (*(v43 + 8))(v36, v44);
      v30 = v45;
      v28 = v45;
    }

    v29.value.super.isa = v28;
    LemonadeCollectionCustomizationViewModel.didComplete(undoManager:)(v29);

    v37 = v39;
    sub_1A478C578(sub_1A4137EE8, sub_1A3E87388, MEMORY[0x1E697BF90], v39);
    sub_1A5248274();
    (*(v40 + 8))(v37, v41);
  }
}

uint64_t objectdestroy_18Tm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for LemonadeCollectionCustomizationView(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v8 = v4 + v7;
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5248284();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  sub_1A3D35BAC(*(v8 + v6[9]), *(v8 + v6[9] + 8));
  v10 = v6[10];
  sub_1A478C4E0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5248714();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  v12 = v6[11];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5242D14();
    (*(*(v13 - 8) + 8))(v8 + v12, v13);
  }

  else
  {
  }

  v14 = v8 + v6[13];

  v15 = sub_1A524B974();
  (*(*(v5 - 8) + 8))(v14 + *(v15 + 32), v5);

  return swift_deallocObject();
}

uint64_t sub_1A4796DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5248284();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeCollectionCustomizationView(0, a2, a3, v9);
  LemonadeCollectionCustomizationViewModel.didCancel()();
  sub_1A478C578(sub_1A4137EE8, sub_1A3E87388, MEMORY[0x1E697BF90], v8);
  sub_1A5248274();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A4796EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for LemonadeCollectionCustomizationView(0, v9, v10, v11);
  v13 = sub_1A524B974();
  MEMORY[0x1A5906C60](v13);
  v14 = (*(a3 + 352))(a2, a3);
  (*(v6 + 8))(v8, a2);
  v15 = (a1 + *(v12 + 68));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v15) = v15[16];
  v19[8] = v16;
  v20 = v17;
  v21 = v15;
  v19[7] = v14 & 1;
  sub_1A47A166C(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  return sub_1A5247C14();
}

uint64_t sub_1A4797094@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v50 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v40 - v6;
  sub_1A439AF64(255);
  v45 = AssociatedTypeWitness;
  v7 = sub_1A5248804();
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v40 - v10;
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1A524DF24();
  v49 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v40 - v17;
  type metadata accessor for LemonadeCollectionCustomizationView(0, a1, a2, v18);
  v19 = sub_1A524B974();
  MEMORY[0x1A5906C60]();
  v20 = (*(a2 + 840))(a1, a2);
  v21 = *(v11 + 8);
  v21(v14, a1);
  if (v20)
  {
    MEMORY[0x1A5906C60](v19);
    v22 = v40;
    (*(a2 + 848))(a1, a2);
    v21(v14, a1);
    swift_getKeyPath();
    v53 = 1;
    v23 = v45;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = v43;
    sub_1A524A964();

    (*(v41 + 8))(v22, v23);
    v26 = sub_1A478EE38(&qword_1EB141B60, sub_1A439AF64, MEMORY[0x1E6980A18]);
    v51 = AssociatedConformanceWitness;
    v52 = v26;
    swift_getWitnessTable();
    v27 = v47;
    v28 = *(v47 + 16);
    v29 = v42;
    v28(v42, v25, v7);
    v30 = *(v27 + 8);
    v30(v25, v7);
    v28(v25, v29, v7);
    v30(v29, v7);
    v31 = v46;
    (*(v27 + 32))(v46, v25, v7);
    (*(v27 + 56))(v31, 0, 1, v7);
  }

  else
  {
    v31 = v46;
    (*(v47 + 56))(v46, 1, 1, v7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = sub_1A478EE38(&qword_1EB141B60, sub_1A439AF64, MEMORY[0x1E6980A18]);
    v57 = AssociatedConformanceWitness;
    v58 = v32;
    swift_getWitnessTable();
  }

  v34 = v48;
  v33 = v49;
  v35 = *(v49 + 16);
  v36 = v44;
  v35(v48, v31, v44);
  v37 = *(v33 + 8);
  v37(v31, v36);
  v38 = sub_1A478EE38(&qword_1EB141B60, sub_1A439AF64, MEMORY[0x1E6980A18]);
  v55 = AssociatedConformanceWitness;
  v56 = v38;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v35(v50, v34, v36);
  return (v37)(v34, v36);
}

uint64_t sub_1A4797738(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LemonadeCollectionCustomizationView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_1A47977D8(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E87388(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A4797A94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  sub_1A5248464();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1A47A0B5C(255);
  v8 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = sub_1A478EE38(&qword_1EB141EF8, sub_1A47A0B5C, MEMORY[0x1E697C5E0]);
  swift_getOpaqueTypeMetadata2();
  v26 = OpaqueTypeMetadata2;
  v27 = v8;
  v28 = OpaqueTypeConformance2;
  v29 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = sub_1A5248834();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v23 = v5;
  v24 = v4;
  v25 = v2;
  sub_1A5248824();
  swift_getWitnessTable();
  v18 = *(v12 + 16);
  v18(v17, v14, v11);
  v19 = *(v12 + 8);
  v19(v14, v11);
  v18(v22, v17, v11);
  return (v19)(v17, v11);
}

void sub_1A4797D68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v36 = a4;
  v8 = sub_1A5249284();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v33 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v37 = a2;
  v38 = a3;
  v28 = a2;
  v29 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v37 = a2;
  v38 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24[4] = OpaqueTypeMetadata2;
  v37 = OpaqueTypeMetadata2;
  v38 = OpaqueTypeConformance2;
  v13 = OpaqueTypeConformance2;
  v24[5] = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeMetadata2();
  v24[7] = v14;
  v30 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v24[6] = v24 - v15;
  sub_1A47A0B5C(255);
  v17 = v16;
  v24[3] = v16;
  v37 = OpaqueTypeMetadata2;
  v38 = v13;
  v18 = swift_getOpaqueTypeConformance2();
  v26 = v18;
  v25 = sub_1A478EE38(&qword_1EB141EF8, sub_1A47A0B5C, MEMORY[0x1E697C5E0]);
  v37 = v14;
  v38 = v17;
  v39 = v18;
  v40 = v25;
  v27 = swift_getOpaqueTypeMetadata2();
  MEMORY[0x1EEE9AC00](v27);
  v24[1] = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v24[2] = v24 - v22;
  v24[0] = a1;
  (*(a1 + 96))(v21);
  v23 = *(a1 + 8);
  v37 = *a1;
  v38 = v23;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4798380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v52 = a2;
  sub_1A478E860(0, &unk_1EB141E90, sub_1A4136C04, sub_1A47A0BE4);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v42 - v7;
  sub_1A47A0BE4(0);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439FD3C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1A3F1E8D8(0);
  v16 = v15;
  v44 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4136C04(0, v17);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - v24;
  v54 = *(a1 + 48);
  v55 = *(a1 + 64);
  sub_1A3C48C7C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v53);
  if (v53 == 1)
  {
    v26 = sub_1A5249844();
    v42 = &v42;
    MEMORY[0x1EEE9AC00](v26);
    *(&v42 - 4) = v52;
    *(&v42 - 3) = a3;
    *(&v42 - 2) = a1;
    sub_1A3D6DF58(0);
    v43 = a1;
    sub_1A478EE38(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    sub_1A5247F24();
    v27 = sub_1A478EE38(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
    v28 = v45;
    MEMORY[0x1A5904CD0](v19, v16, v27);
    (*(v12 + 16))(v22, v28, v11);
    (*(v12 + 56))(v22, 0, 1, v11);
    *&v54 = v16;
    *(&v54 + 1) = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v22, v11, OpaqueTypeConformance2);
    v30 = v22;
    v31 = v43;
    sub_1A47A0FA8(v30, sub_1A4136C04);
    (*(v12 + 8))(v28, v11);
    (*(v44 + 8))(v19, v16);
  }

  else
  {
    (*(v12 + 56))(v22, 1, 1, v11);
    v32 = sub_1A478EE38(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
    *&v54 = v16;
    *(&v54 + 1) = v32;
    v33 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v22, v11, v33);
    sub_1A47A0FA8(v22, sub_1A4136C04);
    v31 = a1;
  }

  v34 = sub_1A5249854();
  MEMORY[0x1EEE9AC00](v34);
  *(&v42 - 4) = v52;
  *(&v42 - 3) = a3;
  *(&v42 - 2) = v31;
  sub_1A478E98C(0, &qword_1EB141EA8, sub_1A47A0C98, sub_1A47A0CE0, MEMORY[0x1E697F960]);
  sub_1A47A0D28();
  v35 = v46;
  sub_1A5247F24();
  v36 = v49;
  v37 = *(v50 + 48);
  sub_1A47A1014(v25, v49, sub_1A4136C04);
  v38 = v47;
  v39 = v36 + v37;
  v40 = v48;
  (*(v47 + 16))(v39, v35, v48);
  sub_1A52495D4();
  (*(v38 + 8))(v35, v40);
  return sub_1A47A0FA8(v25, sub_1A4136C04);
}

uint64_t sub_1A4798A8C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5247B34();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = a1[7];
  *(v9 + 128) = a1[6];
  *(v9 + 144) = v10;
  *(v9 + 160) = a1[8];
  v11 = a1[3];
  *(v9 + 64) = a1[2];
  *(v9 + 80) = v11;
  v12 = a1[5];
  *(v9 + 96) = a1[4];
  *(v9 + 112) = v12;
  v13 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v13;
  v15 = type metadata accessor for LemonadeCollectionCustomizationNavigationView(0, a2, a3, v14);
  (*(*(v15 - 8) + 16))(v17, a1, v15);
  return MEMORY[0x1A5906A80](v8, sub_1A47A1088, v9);
}

uint64_t sub_1A4798BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v58 = a2;
  v64 = a4;
  v5 = sub_1A5247B54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7E610(0);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47A0CE0(0);
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478E98C(0, &unk_1EB141F00, sub_1A47A0C98, sub_1A47A0CE0, MEMORY[0x1E697F948]);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v57 - v16;
  sub_1A478C514(0, &qword_1EB1249B0, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v57 - v19;
  sub_1A41278A0(0, v18);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47A0C98(0);
  v60 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 89))
  {
    v65[0] = sub_1A3C38BD4(0xD000000000000025);
    v65[1] = v28;
    sub_1A5247B44();
    (*(v6 + 56))(v20, 0, 1, v5);
    v29 = swift_allocObject();
    v30 = v58;
    v31 = v59;
    *(v29 + 16) = v58;
    *(v29 + 24) = v31;
    v32 = *(a1 + 112);
    *(v29 + 128) = *(a1 + 96);
    *(v29 + 144) = v32;
    *(v29 + 160) = *(a1 + 128);
    v33 = *(a1 + 48);
    *(v29 + 64) = *(a1 + 32);
    *(v29 + 80) = v33;
    v34 = *(a1 + 80);
    *(v29 + 96) = *(a1 + 64);
    *(v29 + 112) = v34;
    v35 = *(a1 + 16);
    *(v29 + 32) = *a1;
    *(v29 + 48) = v35;
    v37 = type metadata accessor for LemonadeCollectionCustomizationNavigationView(0, v30, v31, v36);
    (*(*(v37 - 8) + 16))(&v66, a1, v37);
    sub_1A3D5F9DC();
    sub_1A524B734();
    v66 = *(a1 + 72);
    v67 = *(a1 + 88);
    sub_1A3C48C7C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x1A5906C60](v65);
    v38 = v65[0];
    KeyPath = swift_getKeyPath();
    v40 = swift_allocObject();
    *(v40 + 16) = (v38 & 1) == 0;
    v41 = &v24[*(v22 + 36)];
    *v41 = KeyPath;
    v41[1] = sub_1A4312ED8;
    v41[2] = v40;
    sub_1A479ABF0(&qword_1EB141EE0, sub_1A41278A0, sub_1A3D6E520, sub_1A3E72758);
    sub_1A524AA94();
    sub_1A479AE68(v24, sub_1A41278A0);
    sub_1A47A23D4(v27, v62, sub_1A47A0C98);
    swift_storeEnumTagMultiPayload();
    sub_1A47A0DEC();
    sub_1A47A0EE0();
    sub_1A5249744();
    v42 = sub_1A47A0C98;
    v43 = v27;
  }

  else
  {
    sub_1A5247B44();
    v44 = swift_allocObject();
    v45 = v58;
    v46 = v59;
    *(v44 + 16) = v58;
    *(v44 + 24) = v46;
    v47 = *(a1 + 112);
    *(v44 + 128) = *(a1 + 96);
    *(v44 + 144) = v47;
    *(v44 + 160) = *(a1 + 128);
    v48 = *(a1 + 48);
    *(v44 + 64) = *(a1 + 32);
    *(v44 + 80) = v48;
    v49 = *(a1 + 80);
    *(v44 + 96) = *(a1 + 64);
    *(v44 + 112) = v49;
    v50 = *(a1 + 16);
    *(v44 + 32) = *a1;
    *(v44 + 48) = v50;
    v52 = type metadata accessor for LemonadeCollectionCustomizationNavigationView(0, v45, v46, v51);
    (*(*(v52 - 8) + 16))(&v66, a1, v52);
    MEMORY[0x1A5906A80](v8, sub_1A47A10B0, v44);
    v66 = *(a1 + 72);
    v67 = *(a1 + 88);
    sub_1A3C48C7C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x1A5906C60](v65);
    LOBYTE(v44) = v65[0];
    v53 = swift_getKeyPath();
    v54 = swift_allocObject();
    *(v54 + 16) = (v44 & 1) == 0;
    v55 = &v11[*(v57 + 36)];
    *v55 = v53;
    v55[1] = sub_1A3E07024;
    v55[2] = v54;
    sub_1A3E7E6E4();
    sub_1A524AA94();
    sub_1A479AE68(v11, sub_1A3E7E610);
    sub_1A47A23D4(v14, v62, sub_1A47A0CE0);
    swift_storeEnumTagMultiPayload();
    sub_1A47A0DEC();
    sub_1A47A0EE0();
    sub_1A5249744();
    v42 = sub_1A47A0CE0;
    v43 = v14;
  }

  return sub_1A479AE68(v43, v42);
}

uint64_t sub_1A4799448(__n128 a1)
{
  result = sub_1A524B374();
  qword_1EB1D2AE8 = result;
  return result;
}

uint64_t sub_1A4799468(uint64_t a1)
{
  result = sub_1A524B324();
  qword_1EB1D2AF8 = result;
  return result;
}

void sub_1A4799488(uint64_t a1@<X8>)
{
  v3 = sub_1A524B554();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5243454();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BC74();
  v34 = v12;
  v35 = v11;
  v13 = sub_1A524B414();
  KeyPath = swift_getKeyPath();
  v15 = *v1;
  (*(v8 + 104))(v10, *MEMORY[0x1E69C24B0], v7);
  v16 = v15;
  sub_1A524B534();
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
  v17 = sub_1A524B5C4();

  (*(v4 + 8))(v6, v3);
  v18 = sub_1A524BC74();
  v20 = v19;
  v36 = 1;
  LOBYTE(v10) = sub_1A524A064();
  sub_1A478E98C(0, &qword_1EB141F10, sub_1A47A1160, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v22 = (a1 + *(v21 + 36));
  v23 = *(sub_1A5248A14() + 20);
  v24 = *MEMORY[0x1E697F468];
  v25 = sub_1A52494A4();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #18.0 }

  *v22 = _Q0;
  sub_1A3E42C88(0);
  *&v22[*(v31 + 36)] = 256;
  v32 = v34;
  *a1 = v35;
  *(a1 + 8) = v32;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = v13;
  *(a1 + 32) = v17;
  *(a1 + 40) = 0;
  *(a1 + 48) = 257;
  *(a1 + 56) = v18;
  *(a1 + 64) = v20;
  *(a1 + 72) = 0;
  *(a1 + 74) = v10;
}

uint64_t LemonadeCollectionCustomizationTitleStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

double sub_1A4799814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    return sub_1A3D607F0(a3, a4);
  }

  return result;
}

double sub_1A4799870(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = a3;
  }

  return result;
}

uint64_t sub_1A47998BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31578(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCollectionCustomizationTitleField(0);
  sub_1A47A23D4(v1 + *(v10 + 44), v9, sub_1A3F31578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5247E04();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t LemonadeCollectionCustomizationTitleField.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A478E98C(0, &qword_1EB141B68, sub_1A4799F2C, type metadata accessor for LemonadeCollectionCustomizationAction, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  sub_1A4799F2C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v16 = *(v1 + 56);
    v15 = *(v1 + 64);
    v17 = v3;
    v36 = a1;
    v18 = *(v1 + 72);
    v19 = *(v1 + 80);
    v20 = *(v1 + 88);
    v31 = *(v1 + 96);
    v21 = v31;
    v32 = v20;
    v22 = *(v1 + 112);
    v30 = *(v1 + 104);
    v23 = v30;
    v25 = *(v1 + 128);
    v34 = *(v1 + 120);
    v24 = v34;
    v35 = v22;
    v33 = v25;
    *v5 = v16;
    v5[1] = v15;
    v5[2] = v18;
    v5[3] = v19;
    v5[4] = v20;
    v5[5] = v21;
    v5[6] = v23;
    v5[7] = v22;
    v5[8] = v24;
    v5[9] = v25;
    v26 = *(v17 + 28);
    *(v5 + v26) = swift_getKeyPath();
    sub_1A3F31578(0);
    swift_storeEnumTagMultiPayload();
    v27 = *(v17 + 32);
    *(v5 + v27) = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    sub_1A47A23D4(v5, v8, type metadata accessor for LemonadeCollectionCustomizationAction);
    swift_storeEnumTagMultiPayload();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  MEMORY[0x1EEE9AC00](v12);
  sub_1A478E98C(0, &qword_1EB141B78, sub_1A4799FD4, sub_1A479A354, MEMORY[0x1E697E830]);
  sub_1A479A8D0();
  sub_1A524BA44();
  (*(v11 + 16))(v8, v14, v10);
  swift_storeEnumTagMultiPayload();
  sub_1A479A84C();
  sub_1A478EE38(&qword_1EB141C78, type metadata accessor for LemonadeCollectionCustomizationAction, &protocol conformance descriptor for LemonadeCollectionCustomizationAction);
  sub_1A5249744();
  return (*(v11 + 8))(v14, v10);
}

void sub_1A4799F2C(uint64_t a1)
{
  if (!qword_1EB141B70)
  {
    sub_1A478E98C(255, &qword_1EB141B78, sub_1A4799FD4, sub_1A479A354, MEMORY[0x1E697E830]);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141B70);
    }
  }
}

void sub_1A479A01C(uint64_t a1)
{
  if (!qword_1EB141B88)
  {
    sub_1A478E98C(255, &qword_1EB141B90, sub_1A479A0EC, sub_1A3D6D248, MEMORY[0x1E697E830]);
    sub_1A3C48C7C(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141B88);
    }
  }
}

void sub_1A479A0EC(uint64_t a1)
{
  if (!qword_1EB141B98)
  {
    sub_1A478E98C(255, &qword_1EB141BA0, sub_1A479A1BC, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A3C48C7C(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141B98);
    }
  }
}

void sub_1A479A1BC(uint64_t a1)
{
  if (!qword_1EB141BA8)
  {
    sub_1A479A250(255);
    sub_1A47A166C(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141BA8);
    }
  }
}

void sub_1A479A2C8(uint64_t a1)
{
  if (!qword_1EB141BC0)
  {
    sub_1A47A166C(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141BC0);
    }
  }
}

void sub_1A479A354(uint64_t a1)
{
  if (!qword_1EB141BC8)
  {
    sub_1A479A3FC(255);
    sub_1A478FB28(&qword_1EB141C00, sub_1A479A3FC, sub_1A479A76C, MEMORY[0x1E6982090]);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141BC8);
    }
  }
}

void sub_1A479A478(uint64_t a1)
{
  if (!qword_1EB141BE0)
  {
    sub_1A478EB3C(255, &qword_1EB141BE8, sub_1A479A514, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A479A640();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141BE0);
    }
  }
}

void sub_1A479A514(uint64_t a1)
{
  if (!qword_1EB141BF0)
  {
    sub_1A478E98C(255, &qword_1EB1236A0, sub_1A429B9D8, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    sub_1A43D30E0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141BF0);
    }
  }
}

void sub_1A479A5DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A479A640()
{
  result = qword_1EB141BF8;
  if (!qword_1EB141BF8)
  {
    sub_1A478EB3C(255, &qword_1EB141BE8, sub_1A479A514, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A478E98C(255, &qword_1EB1236A0, sub_1A429B9D8, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    sub_1A43D30E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141BF8);
  }

  return result;
}

unint64_t sub_1A479A76C()
{
  result = qword_1EB141C08;
  if (!qword_1EB141C08)
  {
    sub_1A479A430(255);
    sub_1A478EE38(&qword_1EB141C10, sub_1A479A478, MEMORY[0x1E697D680]);
    sub_1A478EE38(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C08);
  }

  return result;
}

unint64_t sub_1A479A84C()
{
  result = qword_1EB141C18;
  if (!qword_1EB141C18)
  {
    sub_1A4799F2C(255);
    sub_1A479A8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C18);
  }

  return result;
}

unint64_t sub_1A479A8D0()
{
  result = qword_1EB141C20;
  if (!qword_1EB141C20)
  {
    sub_1A478E98C(255, &qword_1EB141B78, sub_1A4799FD4, sub_1A479A354, MEMORY[0x1E697E830]);
    sub_1A479A9C4();
    sub_1A478EE38(&qword_1EB141C70, sub_1A479A354, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C20);
  }

  return result;
}

unint64_t sub_1A479A9C4()
{
  result = qword_1EB141C28;
  if (!qword_1EB141C28)
  {
    sub_1A4799FD4(255);
    sub_1A479ABF0(&qword_1EB141C30, sub_1A479A01C, sub_1A479AAB8, sub_1A3E72758);
    sub_1A478EE38(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C28);
  }

  return result;
}

unint64_t sub_1A479AAB8()
{
  result = qword_1EB141C38;
  if (!qword_1EB141C38)
  {
    sub_1A478E98C(255, &qword_1EB141B90, sub_1A479A0EC, sub_1A3D6D248, MEMORY[0x1E697E830]);
    sub_1A479ABF0(&qword_1EB141C40, sub_1A479A0EC, sub_1A479AC7C, sub_1A3FF8FF4);
    sub_1A478EE38(&qword_1EB127800, sub_1A3D6D248, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C38);
  }

  return result;
}

uint64_t sub_1A479ABF0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A479AC7C()
{
  result = qword_1EB141C48;
  if (!qword_1EB141C48)
  {
    sub_1A478E98C(255, &qword_1EB141BA0, sub_1A479A1BC, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A479ABF0(&qword_1EB141C50, sub_1A479A1BC, sub_1A479ADB4, sub_1A3D6D4B0);
    sub_1A478EE38(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C48);
  }

  return result;
}

uint64_t sub_1A479AE68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A479AEC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v22 = sub_1A5247E04();
  MEMORY[0x1EEE9AC00](v22);
  v21[2] = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v21[0] = v21 - v5;
  sub_1A479A250(0);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A479A1BC(0);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v26 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E697E830];
  sub_1A478E98C(0, &qword_1EB141BA0, sub_1A479A1BC, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v21[1] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v25 = v21 - v11;
  sub_1A479A0EC(0);
  v24 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v28 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478E98C(0, &qword_1EB141B90, sub_1A479A0EC, sub_1A3D6D248, v9);
  v27 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v29 = v21 - v15;
  sub_1A479A01C(0);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v30 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4799FD4(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v32 = v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  v34 = *(a1 + 8);
  v35 = v20;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A479B83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeCollectionCustomizationTitleField(0);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A479A478(0);
  v7 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479A430(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  if (*(a1 + 136))
  {
    v19 = 1;
  }

  else
  {
    v29 = v7;
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v33 = *(a1 + 24);
    v34 = v20;
    v35 = v21;
    sub_1A3C48C7C(0, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
    MEMORY[0x1A5906C60](v32);
    if (v32[0] || v32[1] != 0xE000000000000000)
    {
      v28 = a2;
      v22 = sub_1A524EAB4();

      if (v22)
      {
        v19 = 1;
        a2 = v28;
      }

      else
      {
        sub_1A47A23D4(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeCollectionCustomizationTitleField);
        v23 = (*(v30 + 80) + 16) & ~*(v30 + 80);
        v24 = swift_allocObject();
        sub_1A47A1AD8(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for LemonadeCollectionCustomizationTitleField);
        sub_1A478EB3C(0, &qword_1EB141BE8, sub_1A479A514, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
        sub_1A479A640();
        sub_1A524B704();
        sub_1A478EE38(&qword_1EB141C10, sub_1A479A478, MEMORY[0x1E697D680]);
        v25 = v29;
        sub_1A524AA94();
        (*(v31 + 8))(v9, v25);
        *&v33 = sub_1A3C38BD4(0xD000000000000024);
        *(&v33 + 1) = v26;
        sub_1A3D5F9DC();
        sub_1A52487B4();

        sub_1A47A0FA8(v14, sub_1A479A430);
        a2 = v28;
        sub_1A479DC1C(v18, v28, sub_1A479A430);
        v19 = 0;
      }
    }

    else
    {

      v19 = 1;
    }
  }

  return (*(v12 + 56))(a2, v19, 1, v11, v16);
}

void sub_1A479BCE0(uint64_t a1@<X8>)
{
  sub_1A524B544();
  sub_1A524B324();
  swift_getKeyPath();
  sub_1A524A0F4();
  swift_getKeyPath();
  sub_1A478E98C(0, &qword_1EB1236A0, sub_1A429B9D8, sub_1A3EC18C4, MEMORY[0x1E697E830]);
  sub_1A43D30E0();
  sub_1A524AF64();

  v2 = sub_1A524A0B4();
  sub_1A5247BC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1A478EB3C(0, &qword_1EB141BE8, sub_1A479A514, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v12 = a1 + *(v11 + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
}

uint64_t sub_1A479BE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a6;
  v27 = a4;
  v28 = a11;
  v15 = sub_1A52411C4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v19 = sub_1A5241164();
  v21 = v20;
  result = (*(v16 + 8))(v18, v15);
  *a9 = v19;
  a9[1] = v21;
  a9[2] = a1;
  a9[3] = a2;
  v23 = v27;
  a9[4] = a3;
  a9[5] = v23;
  v24 = v30;
  a9[6] = v29;
  a9[7] = v24;
  v25 = v32;
  a9[8] = v31;
  a9[9] = v25;
  v26 = v28;
  a9[10] = a10;
  a9[11] = v26;
  return result;
}

uint64_t sub_1A479BFCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31578(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
  sub_1A47A23D4(v1 + *(v10 + 28), v9, sub_1A3F31578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5247E04();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A479C1C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E71AC8(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
  sub_1A3D61D44(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t LemonadeCollectionCustomizationAction.body.getter@<X0>(void *a1@<X8>)
{
  v43 = a1;
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  sub_1A479C76C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D8EC(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v40 - v19;
  sub_1A479C1C8(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C2210], v2);
  v20 = sub_1A5242D04();
  v21 = *(v3 + 8);
  v21(v5, v2);
  v21(v8, v2);
  if (v20)
  {
    v22 = 0x4024000000000000;
  }

  else
  {
    v22 = 0;
  }

  *v11 = sub_1A5249574();
  *(v11 + 1) = v22;
  v11[16] = 0;
  sub_1A47A22B8(0, &qword_1EB141E30, sub_1A479C814, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A479D934(v1, &v11[*(v23 + 44)]);
  v24 = &v17[*(v13 + 44)];
  v25 = *(sub_1A5248A14() + 20);
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1A52494A4();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #26.0 }

  *v24 = _Q0;
  sub_1A3E42C88(0);
  *&v24[*(v33 + 36)] = 256;
  sub_1A479DC1C(v11, v17, sub_1A479C76C);
  v34 = v41;
  sub_1A479DC1C(v17, v41, sub_1A479D8EC);
  v35 = v42;
  sub_1A47A1014(v34, v42, sub_1A479D8EC);
  v36 = v43;
  *v43 = 0x4030000000000000;
  *(v36 + 8) = 0;
  v37 = v36;
  sub_1A479DC84(0);
  sub_1A47A1014(v35, v37 + *(v38 + 48), sub_1A479D8EC);
  sub_1A47A0FA8(v34, sub_1A479D8EC);
  return sub_1A47A0FA8(v35, sub_1A479D8EC);
}

void sub_1A479C76C(uint64_t a1)
{
  if (!qword_1EB141C80)
  {
    sub_1A479C814(255);
    sub_1A478FB28(&qword_1EB141E18, sub_1A479C814, sub_1A479D8B8, MEMORY[0x1E69819D0]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141C80);
    }
  }
}

void sub_1A479C814(uint64_t a1)
{
  if (!qword_1EB141C88)
  {
    sub_1A3C48C7C(255, &qword_1EB141C90, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E62F8]);
    sub_1A479C8D0(255);
    sub_1A479D83C();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141C88);
    }
  }
}

void sub_1A479C90C(uint64_t a1)
{
  if (!qword_1EB141CA8)
  {
    sub_1A479C9A0(255);
    sub_1A478EE38(&unk_1EB141E00, sub_1A479C9A0, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141CA8);
    }
  }
}

void sub_1A479C9DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A478E860(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A479CA6C(uint64_t a1)
{
  if (!qword_1EB141CC8)
  {
    sub_1A479CB00(255);
    sub_1A47A166C(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141CC8);
    }
  }
}

void sub_1A479CB00(uint64_t a1)
{
  if (!qword_1EB141CD0)
  {
    sub_1A479CB94(255);
    sub_1A478EE38(&qword_1EB141DF8, sub_1A479CB94, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141CD0);
    }
  }
}

void sub_1A479CBC8(uint64_t a1)
{
  if (!qword_1EB141CE0)
  {
    sub_1A479CC5C(255);
    sub_1A479CD58(255);
    sub_1A479D100(255);
    sub_1A479D618(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB141CE0);
    }
  }
}

void sub_1A479CCC4(uint64_t a1)
{
  if (!qword_1EB141CF8)
  {
    sub_1A47A166C(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB141CF8);
    }
  }
}

void sub_1A479CE04(uint64_t a1)
{
  if (!qword_1EB141D20)
  {
    sub_1A478E98C(255, &qword_1EB141D28, sub_1A479CEA8, sub_1A3D6D248, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141D20);
    }
  }
}

void sub_1A479CEA8(uint64_t a1)
{
  if (!qword_1EB141D30)
  {
    sub_1A479A5DC(255, &qword_1EB141D38, sub_1A479CF6C, MEMORY[0x1E69817E8]);
    sub_1A479D500(255, &qword_1EB1289C0, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141D30);
    }
  }
}

void sub_1A479CF6C(uint64_t a1)
{
  if (!qword_1EB141D40)
  {
    sub_1A478F618(255, &qword_1EB141D48, &qword_1EB128580, MEMORY[0x1E697F578], sub_1A3E42C88);
    sub_1A479CFFC();
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141D40);
    }
  }
}

unint64_t sub_1A479CFFC()
{
  result = qword_1EB141D50;
  if (!qword_1EB141D50)
  {
    v1 = MEMORY[0x1E697F578];
    sub_1A478F618(255, &qword_1EB141D48, &qword_1EB128580, MEMORY[0x1E697F578], sub_1A3E42C88);
    sub_1A478FA2C(&qword_1EB128590, &qword_1EB128580, v1);
    sub_1A478EE38(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141D50);
  }

  return result;
}

void sub_1A479D1CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A479D24C(uint64_t a1)
{
  if (!qword_1EB141D70)
  {
    sub_1A479D2EC(255);
    sub_1A479D500(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141D70);
    }
  }
}

void sub_1A479D2EC(uint64_t a1)
{
  if (!qword_1EB141D78)
  {
    sub_1A479D380(255);
    sub_1A478EE38(&unk_1EB141D98, sub_1A479D380, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141D78);
    }
  }
}

void sub_1A479D3B4(uint64_t a1)
{
  if (!qword_1EB141D88)
  {
    sub_1A479D448(255);
    sub_1A3C48C7C(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB141D88);
    }
  }
}

void sub_1A479D448(uint64_t a1)
{
  if (!qword_1EB141D90)
  {
    sub_1A47A166C(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3C48C7C(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141D90);
    }
  }
}

void sub_1A479D500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A479D568()
{
  result = qword_1EB141DA8;
  if (!qword_1EB141DA8)
  {
    sub_1A479D24C(255);
    sub_1A478EE38(&unk_1EB141DB0, sub_1A479D2EC, MEMORY[0x1E69817F8]);
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141DA8);
  }

  return result;
}

void sub_1A479D64C(uint64_t a1)
{
  if (!qword_1EB141DC8)
  {
    sub_1A479D750(255);
    sub_1A52498E4();
    sub_1A478EE38(&qword_1EB141DE8, sub_1A479D750, MEMORY[0x1E697D680]);
    sub_1A478EE38(&qword_1EB141DF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141DC8);
    }
  }
}

void sub_1A479D750(uint64_t a1)
{
  if (!qword_1EB141DD0)
  {
    v1 = MEMORY[0x1E697E5E0];
    sub_1A47A166C(255, &qword_1EB141DD8, MEMORY[0x1E6981748], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A478FA2C(&qword_1EB141DE0, &qword_1EB141DD8, v1);
    v2 = sub_1A524B764();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB141DD0);
    }
  }
}

unint64_t sub_1A479D83C()
{
  result = qword_1EB141E10;
  if (!qword_1EB141E10)
  {
    sub_1A3C48C7C(255, &qword_1EB141C90, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141E10);
  }

  return result;
}

uint64_t sub_1A479D934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v24 = *a1;
  v25 = v8;
  v20 = v10;
  v26 = v10;
  sub_1A47A0464(0);
  v12 = v11;
  MEMORY[0x1A5906C60](&v23);
  v13 = *(v23 + 16);
  if (v13)
  {
    v19[0] = *(v23 + 96 * v13 - 64);
    v19[1] = v23;
    v19[2] = v8;
    v19[3] = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19[4] = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v21 = 0;
  v24 = v9;
  v25 = v8;
  v26 = v20;
  MEMORY[0x1A5906C60](&v23, v12);
  v22 = v23;
  swift_getKeyPath();
  sub_1A47A23D4(a1, v7, type metadata accessor for LemonadeCollectionCustomizationAction);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1A47A1AD8(v7, v15 + v14, type metadata accessor for LemonadeCollectionCustomizationAction);
  v16 = (v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = v21;
  *v16 = 0;
  v16[1] = v17;
  sub_1A3C48C7C(0, &qword_1EB141C90, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E62F8]);
  sub_1A479C8D0(0);
  sub_1A479D83C();
  sub_1A479D8B8();
  return sub_1A524B9B4();
}

uint64_t sub_1A479DC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A479DCA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1A479DD88@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a2;
  v33 = a5;
  v8 = sub_1A524B9A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D808(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  sub_1A479C90C(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  v24 = a1[3];
  v34[2] = a1[2];
  v34[3] = v24;
  v25 = a1[5];
  v34[4] = a1[4];
  v34[5] = v25;
  v26 = a1[1];
  v34[0] = *a1;
  v34[1] = v26;
  *v23 = sub_1A5249574();
  *(v23 + 1) = 0;
  v23[16] = 0;
  sub_1A47A22B8(0, &qword_1EB141F60, sub_1A479C9A0, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A479E104(v34, v32, &v23[*(v27 + 44)]);
  if (a4 && (v34[0] == __PAIR128__(a4, a3) || (sub_1A524EAB4() & 1) != 0))
  {
    v28 = 1;
  }

  else
  {
    sub_1A524B994();
    (*(v9 + 32))(v17, v11, v8);
    v28 = 0;
  }

  (*(v9 + 56))(v17, v28, 1, v8);
  sub_1A47A1014(v23, v20, sub_1A479C90C);
  sub_1A47A23D4(v17, v14, sub_1A479D808);
  v29 = v33;
  sub_1A47A1014(v20, v33, sub_1A479C90C);
  sub_1A478E860(0, &qword_1EB141CA0, sub_1A479C90C, sub_1A479D808);
  sub_1A47A23D4(v14, v29 + *(v30 + 48), sub_1A479D808);
  sub_1A479AE68(v17, sub_1A479D808);
  sub_1A47A0FA8(v23, sub_1A479C90C);
  sub_1A479AE68(v14, sub_1A479D808);
  return sub_1A47A0FA8(v20, sub_1A479C90C);
}

uint64_t sub_1A479E104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = sub_1A5247E04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v45 - v10;
  sub_1A479CB00(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479CA6C(0);
  v47 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v49 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v46 = v45 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v48 = v45 - v20;
  v21 = *(a1 + 24);
  if (v21)
  {
    v45[6] = a2;
    v22 = *(a1 + 16);
    v45[2] = sub_1A5249314();
    *&v66[0] = v22;
    *(&v66[0] + 1) = v21;
    sub_1A3D5F9DC();
    v45[9] = v5;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4779164(v66);
  *v14 = sub_1A5249314();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_1A47A22B8(0, &qword_1EB141F68, sub_1A479CB94, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A479E804(a1, a2, &v14[*(v23 + 44)]);
  sub_1A479BFCC(v11);
  (*(v6 + 104))(v8, *MEMORY[0x1E697DBB8], v5);
  v24 = sub_1A5247DF4();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v11, v5);
  if (v24)
  {
    v26 = sub_1A524B2E4();
  }

  else
  {
    v26 = sub_1A524B2A4();
  }

  v27 = v26;
  v28 = sub_1A524A064();
  v29 = v46;
  sub_1A479DC1C(v14, v46, sub_1A479CB00);
  v30 = v48;
  v31 = v29 + *(v47 + 36);
  *v31 = v27;
  *(v31 + 8) = v28;
  sub_1A479DC1C(v29, v30, sub_1A479CA6C);
  v58 = v66[7];
  v59 = v66[8];
  v60 = v66[9];
  v61 = v67;
  v55 = v66[4];
  v56 = v66[5];
  v57 = v66[6];
  v51 = v66[0];
  v52 = v66[1];
  v53 = v66[2];
  v54 = v66[3];
  v32 = v49;
  sub_1A47A1014(v30, v49, sub_1A479CA6C);
  v33 = v58;
  v62[8] = v59;
  v62[9] = v60;
  v34 = v55;
  v35 = v56;
  v62[4] = v55;
  v62[5] = v56;
  v36 = v57;
  v62[6] = v57;
  v62[7] = v58;
  v37 = v51;
  v38 = v52;
  v62[0] = v51;
  v62[1] = v52;
  v40 = v53;
  v39 = v54;
  v62[2] = v53;
  v62[3] = v54;
  v41 = v60;
  v42 = v50;
  *(v50 + 128) = v59;
  *(v42 + 144) = v41;
  *(v42 + 64) = v34;
  *(v42 + 80) = v35;
  *(v42 + 96) = v36;
  *(v42 + 112) = v33;
  *v42 = v37;
  *(v42 + 16) = v38;
  v63 = v61;
  *(v42 + 160) = v61;
  *(v42 + 32) = v40;
  *(v42 + 48) = v39;
  sub_1A478E860(0, &qword_1EB141CB8, sub_1A479CA38, sub_1A479CA6C);
  sub_1A47A1014(v32, v42 + *(v43 + 48), sub_1A479CA6C);
  sub_1A47A23D4(v62, v64, sub_1A479CA38);
  sub_1A47A0FA8(v30, sub_1A479CA6C);
  sub_1A47A0FA8(v32, sub_1A479CA6C);
  v64[8] = v59;
  v64[9] = v60;
  v65 = v61;
  v64[4] = v55;
  v64[5] = v56;
  v64[6] = v57;
  v64[7] = v58;
  v64[0] = v51;
  v64[1] = v52;
  v64[2] = v53;
  v64[3] = v54;
  return sub_1A479AE68(v64, sub_1A479CA38);
}

uint64_t sub_1A479E804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v147 = a2;
  v132 = a3;
  v4 = sub_1A52498E4();
  v123 = *(v4 - 8);
  v124 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v121 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D750(0);
  v122 = v6;
  v120 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D64C(0);
  v133 = *(v8 - 8);
  v134 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D618(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v137 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v113 - v13;
  sub_1A479D184(0);
  v128 = *(v14 - 8);
  v129 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v126 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D148(0);
  v127 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v130 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D100(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v135 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v113 - v21;
  v22 = sub_1A524B554();
  v116 = *(v22 - 8);
  v117 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A5243454();
  v114 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v113 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479CD8C(0);
  v125 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479CD58(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v131 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v145 = &v113 - v33;
  v34 = *(a1 + 40);
  if (v34)
  {
    *&v167 = *(a1 + 32);
    *(&v167 + 1) = v34;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v143 = 0;
  v144 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v138 = 0;
  v139 = 0;
  v35 = *(v147 + 64);
  v36 = 1;
  if (v35 && (v37 = *(v147 + 72), *&v167 = *(v147 + 56), *(&v167 + 1) = v35, *&v168 = v37, sub_1A47A0514(0), MEMORY[0x1A5906C60](&v153), (v38 = v153) != 0))
  {
    v114[13](v113, *MEMORY[0x1E69C24B0], v24);
    v114 = v38;
    sub_1A524B534();
    v39 = v115;
    v40 = v116;
    v41 = v117;
    (*(v116 + 104))(v115, *MEMORY[0x1E6981630], v117);
    v42 = sub_1A524B5C4();

    (*(v40 + 8))(v39, v41);
    sub_1A478F618(0, &qword_1EB141D48, &qword_1EB128580, MEMORY[0x1E697F578], sub_1A3E42C88);
    v44 = &v29[*(v43 + 36)];
    v45 = *(sub_1A5248A14() + 20);
    v46 = *MEMORY[0x1E697F468];
    v47 = sub_1A52494A4();
    (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
    __asm { FMOV            V0.2D, #10.0 }

    *v44 = _Q0;
    sub_1A3E42C88(0);
    *&v44[*(v53 + 36)] = 256;
    *v29 = v42;
    *(v29 + 1) = 0;
    *(v29 + 8) = 257;
    v54 = sub_1A524BC74();
    v56 = v55;
    sub_1A479CF6C(0);
    v58 = &v29[*(v57 + 36)];
    *v58 = v54;
    v58[1] = v56;
    sub_1A479CEA8(0);
    *&v29[*(v59 + 36)] = 0;
    v60 = sub_1A524B414();
    KeyPath = swift_getKeyPath();
    sub_1A478E98C(0, &qword_1EB141D28, sub_1A479CEA8, sub_1A3D6D248, MEMORY[0x1E697E830]);
    v63 = &v29[*(v62 + 36)];
    *v63 = KeyPath;
    v63[1] = v60;
    sub_1A524BC74();
    sub_1A52481F4();
    sub_1A479CE04(0);
    v65 = &v29[*(v64 + 36)];
    v66 = v165;
    *v65 = v164;
    *(v65 + 1) = v66;
    *(v65 + 2) = v166;
    LOBYTE(v60) = sub_1A524A064();
    sub_1A5247BC4();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    sub_1A479CDC8(0);
    v76 = &v29[*(v75 + 36)];
    *v76 = v60;
    *(v76 + 1) = v68;
    *(v76 + 2) = v70;
    *(v76 + 3) = v72;
    *(v76 + 4) = v74;
    v76[40] = 0;
    v77 = v125;
    v78 = &v29[*(v125 + 36)];
    *v78 = 0x3FF0000000000000;
    *(v78 + 4) = 256;
    v79 = v145;
    sub_1A47A1AD8(v29, v145, sub_1A479CD8C);
    v80 = 0;
  }

  else
  {
    v80 = 1;
    v79 = v145;
    v77 = v125;
  }

  (*(v27 + 56))(v79, v80, 1, v77);
  v81 = swift_allocObject();
  v82 = *(a1 + 48);
  v81[3] = *(a1 + 32);
  v81[4] = v82;
  v83 = *(a1 + 80);
  v81[5] = *(a1 + 64);
  v81[6] = v83;
  v84 = *(a1 + 16);
  v81[1] = *a1;
  v81[2] = v84;
  MEMORY[0x1EEE9AC00](v81);
  sub_1A404A04C(a1, &v167);
  sub_1A479D24C(0);
  sub_1A479D568();
  v85 = v126;
  sub_1A524B704();
  sub_1A524BC74();
  sub_1A5248AD4();
  v86 = v130;
  (*(v128 + 32))(v130, v85, v129);
  v87 = (v86 + *(v127 + 36));
  v88 = v172;
  v87[4] = v171;
  v87[5] = v88;
  v87[6] = v173;
  v89 = v168;
  *v87 = v167;
  v87[1] = v89;
  v90 = v170;
  v87[2] = v169;
  v87[3] = v90;
  sub_1A47A1A28();
  sub_1A524AA94();
  sub_1A479AE68(v86, sub_1A479D148);
  v91 = *(v147 + 32);
  if (!v91)
  {
    v93 = v136;
    goto LABEL_11;
  }

  v153 = *(v147 + 24);
  v154 = v91;
  v155 = *(v147 + 40);
  sub_1A47A04E0(0);
  MEMORY[0x1A5906C60](&v148);
  v92 = v148;
  v93 = v136;
  if (!v148)
  {
LABEL_11:
    v103 = v133;
    v102 = v134;
    goto LABEL_12;
  }

  v94 = *(&v148 + 1);
  v95 = swift_allocObject();
  *(v95 + 16) = v92;
  *(v95 + 24) = v94;
  v96 = MEMORY[0x1E697E5E0];
  sub_1A47A166C(0, &qword_1EB141DD8, MEMORY[0x1E6981748], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  sub_1A478FA2C(&qword_1EB141DE0, &qword_1EB141DD8, v96);

  v97 = v119;
  sub_1A524B704();
  v98 = v121;
  sub_1A52498D4();
  sub_1A478EE38(&qword_1EB141DE8, sub_1A479D750, MEMORY[0x1E697D680]);
  sub_1A478EE38(&qword_1EB141DF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v99 = v118;
  v100 = v122;
  v101 = v124;
  sub_1A524A934();

  (*(v123 + 8))(v98, v101);
  (*(v120 + 8))(v97, v100);
  v103 = v133;
  v102 = v134;
  (*(v133 + 32))(v93, v99, v134);
  v36 = 0;
LABEL_12:
  (*(v103 + 56))(v93, v36, 1, v102);
  v104 = v79;
  v105 = v131;
  sub_1A47A23D4(v104, v131, sub_1A479CD58);
  v106 = v135;
  sub_1A47A23D4(v146, v135, sub_1A479D100);
  v107 = v137;
  sub_1A47A1014(v93, v137, sub_1A479D618);
  *&v148 = v144;
  *(&v148 + 1) = v143;
  *&v149 = v140;
  *(&v149 + 1) = v142;
  v150 = v138;
  v151 = 0uLL;
  *&v152[0] = 0;
  *(&v152[0] + 1) = v141;
  *&v152[1] = 0;
  BYTE8(v152[1]) = v139;
  v108 = v132;
  v132[2] = v138;
  v108[3] = 0uLL;
  v108[4] = v152[0];
  *(v108 + 73) = *(v152 + 9);
  v109 = v149;
  *v108 = v148;
  v108[1] = v109;
  sub_1A479CBC8(0);
  v111 = v110;
  sub_1A47A23D4(v105, v108 + *(v110 + 48), sub_1A479CD58);
  sub_1A47A23D4(v106, v108 + *(v111 + 64), sub_1A479D100);
  sub_1A47A1014(v107, v108 + *(v111 + 80), sub_1A479D618);
  sub_1A47A23D4(&v148, &v153, sub_1A479CC5C);
  sub_1A47A0FA8(v93, sub_1A479D618);
  sub_1A479AE68(v146, sub_1A479D100);
  sub_1A479AE68(v145, sub_1A479CD58);
  sub_1A47A0FA8(v107, sub_1A479D618);
  sub_1A479AE68(v106, sub_1A479D100);
  sub_1A479AE68(v105, sub_1A479CD58);
  v153 = v144;
  v154 = v143;
  *&v155 = v140;
  *(&v155 + 1) = v142;
  v156 = v138;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v161 = v141;
  v162 = 0;
  v163 = v139;
  return sub_1A479AE68(&v153, sub_1A479CC5C);
}

void sub_1A479F800(uint64_t a1@<X8>)
{
  v2 = sub_1A524B544();
  v3 = sub_1A524A064();
  sub_1A5247BC4();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
}

void sub_1A479F884(uint64_t a1)
{
  sub_1A478C514(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1A47A0224(319);
    if (v3 <= 0x3F)
    {
      sub_1A478C514(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        sub_1A478C514(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v6 <= 0x3F)
        {
          type metadata accessor for LemonadeCollectionCustomizationViewModel(319, *(a1 + 16), *(a1 + 24), v5);
          if (v7 <= 0x3F)
          {
            sub_1A524B974();
            if (v8 <= 0x3F)
            {
              sub_1A3C48C7C(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
              if (v9 <= 0x3F)
              {
                sub_1A478C514(319, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
                if (v10 <= 0x3F)
                {
                  sub_1A47A166C(319, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
                  if (v11 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A479FACC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A5248284() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_1A5248714() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_1A5242D14() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v13 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (v13 >= 0)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v8 + 80) & 0xF8 | 7;
  v19 = v14 & 0xF8 | 7;
  v20 = v9 + v19 + 1;
  v21 = v11 + 8;
  v22 = v15 | 7;
  if (v17 >= a2)
  {
    goto LABEL_40;
  }

  v23 = ((((((((*(v12 + 64) - ((-17 - v15) | v15) - ((-9 - v22 - ((v21 + ((v20 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v18 + 17) & ~v18)) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) | v22) + 5) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v23 <= 3)
  {
    v24 = ((a2 - v17 + 255) >> 8) + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = *&a1[v23];
      if (!*&a1[v23])
      {
        goto LABEL_40;
      }
    }

    else
    {
      v27 = *&a1[v23];
      if (!v27)
      {
        goto LABEL_40;
      }
    }

LABEL_36:
    v29 = (v27 - 1) << (8 * v23);
    if (v23 <= 3)
    {
      v30 = *a1;
    }

    else
    {
      v29 = 0;
      v30 = *a1;
    }

    return v17 + (v30 | v29) + 1;
  }

  if (v26)
  {
    v27 = a1[v23];
    if (a1[v23])
    {
      goto LABEL_36;
    }
  }

LABEL_40:
  v31 = ((v21 + ((v20 + (((&a1[v7 + 8] & 0xFFFFFFFFFFFFFFF8) + v18 + 9) & ~v18)) & ~v19)) & 0xFFFFFFFFFFFFFFF8);
  if (v17 == 0x7FFFFFFF)
  {
    v32 = *v31;
    if (*v31 >= 0xFFFFFFFF)
    {
      LODWORD(v32) = -1;
    }

    return (v32 + 1);
  }

  else
  {
    v33 = *(v12 + 48);

    return v33((v15 + 8 + ((((v31 + v15 + 8) & ~v22) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  }
}

void sub_1A479FE1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1A5248284() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1A5248714() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_1A5242D14() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v12 + 80);
  v16 = *(v14 + 84);
  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  if (v16 >= 0)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v10 + 80) & 0xF8 | 7;
  v20 = v15 & 0xF8 | 7;
  v21 = v11 + v20 + 1;
  v22 = v13 + 8;
  v23 = (v13 + 8 + ((v21 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v19 + 17) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v14 + 80);
  v25 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v26 = v24 + 8;
  v27 = ((v24 + 16) & ~v24) + *(v14 + 64);
  v28 = ((((((((v27 + ((v24 + 8 + v23) & v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v18 >= a3)
  {
    v31 = 0;
    if (v18 >= a2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v28 <= 3)
    {
      v29 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v18 >= a2)
    {
LABEL_29:
      if (v31 > 1)
      {
        if (v31 != 2)
        {
          *&a1[v28] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_44;
        }

        *&a1[v28] = 0;
      }

      else if (v31)
      {
        a1[v28] = 0;
        if (!a2)
        {
          return;
        }

LABEL_44:
        v34 = ((v22 + ((v21 + (((&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8) + v19 + 9) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8);
        if (v18 == 0x7FFFFFFF)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v35 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v35 = (a2 - 1);
          }

          *v34 = v35;
        }

        else
        {
          v36 = (v34 + v26) & v25;
          if (v17 >= a2)
          {
            v40 = *(v14 + 56);

            v40((v26 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v24, a2);
          }

          else
          {
            if (v27 <= 3)
            {
              v37 = ~(-1 << (8 * v27));
            }

            else
            {
              v37 = -1;
            }

            if (v27)
            {
              v38 = v37 & (~v17 + a2);
              if (v27 <= 3)
              {
                v39 = v27;
              }

              else
              {
                v39 = 4;
              }

              bzero(((v34 + v26) & v25), v27);
              if (v39 > 2)
              {
                if (v39 == 3)
                {
                  *v36 = v38;
                  *(v36 + 2) = BYTE2(v38);
                }

                else
                {
                  *v36 = v38;
                }
              }

              else if (v39 == 1)
              {
                *v36 = v38;
              }

              else
              {
                *v36 = v38;
              }
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }
  }

  v32 = ~v18 + a2;
  bzero(a1, v28);
  if (v28 <= 3)
  {
    v33 = (v32 >> 8) + 1;
  }

  else
  {
    v33 = 1;
  }

  if (v28 <= 3)
  {
    *a1 = v32;
    if (v31 > 1)
    {
LABEL_39:
      if (v31 == 2)
      {
        *&a1[v28] = v33;
      }

      else
      {
        *&a1[v28] = v33;
      }

      return;
    }
  }

  else
  {
    *a1 = v32;
    if (v31 > 1)
    {
      goto LABEL_39;
    }
  }

  if (v31)
  {
    a1[v28] = v33;
  }
}

void sub_1A47A0224(uint64_t a1)
{
  if (!qword_1EB1246B0)
  {
    sub_1A3C4B7E8(255, &qword_1EB120AE8, &qword_1EB120AF0, 0x1E696AFC8);
    v1 = sub_1A5247E54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1246B0);
    }
  }
}

void sub_1A47A02CC(uint64_t a1)
{
  sub_1A3C48C7C(319, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A47A0464(319);
    if (v2 <= 0x3F)
    {
      sub_1A478C514(319, &qword_1EB141E48, sub_1A47A04E0, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A478C514(319, &qword_1EB141E58, sub_1A47A0514, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A478C514(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A47A0464(uint64_t a1)
{
  if (!qword_1EB141E40)
  {
    sub_1A3C48C7C(255, &qword_1EB141C90, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E62F8]);
    v1 = sub_1A524B974();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141E40);
    }
  }
}

void sub_1A47A0514(uint64_t a1)
{
  if (!qword_1EB141E60)
  {
    sub_1A3C4B7E8(255, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8);
    v1 = sub_1A524B974();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141E60);
    }
  }
}

uint64_t sub_1A47A0584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A47A05CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A47A065C(uint64_t a1)
{
  sub_1A47A0464(319);
  if (v1 <= 0x3F)
  {
    sub_1A478C514(319, &qword_1EB141E48, sub_1A47A04E0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A478C514(319, &qword_1EB141E58, sub_1A47A0514, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A478C514(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A478C514(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A47A07E8()
{
  result = qword_1EB141E68;
  if (!qword_1EB141E68)
  {
    sub_1A478E98C(255, &qword_1EB141E70, sub_1A4799F2C, type metadata accessor for LemonadeCollectionCustomizationAction, MEMORY[0x1E697F960]);
    sub_1A479A84C();
    sub_1A478EE38(&qword_1EB141C78, type metadata accessor for LemonadeCollectionCustomizationAction, &protocol conformance descriptor for LemonadeCollectionCustomizationAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141E68);
  }

  return result;
}

uint64_t sub_1A47A0910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A47A094C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1A47A0994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A47A0A20(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126630, 0x1E69DCAB8);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_1A478C514(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A47A0B5C(uint64_t a1)
{
  if (!qword_1EB141E88)
  {
    sub_1A478E860(255, &unk_1EB141E90, sub_1A4136C04, sub_1A47A0BE4);
    v1 = sub_1A52495C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141E88);
    }
  }
}

void sub_1A47A0BE4(uint64_t a1)
{
  if (!qword_1EB141EA0)
  {
    sub_1A478E98C(255, &qword_1EB141EA8, sub_1A47A0C98, sub_1A47A0CE0, MEMORY[0x1E697F960]);
    sub_1A47A0D28();
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141EA0);
    }
  }
}

unint64_t sub_1A47A0D28()
{
  result = qword_1EB141ED0;
  if (!qword_1EB141ED0)
  {
    sub_1A478E98C(255, &qword_1EB141EA8, sub_1A47A0C98, sub_1A47A0CE0, MEMORY[0x1E697F960]);
    sub_1A47A0DEC();
    sub_1A47A0EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141ED0);
  }

  return result;
}

unint64_t sub_1A47A0DEC()
{
  result = qword_1EB141ED8;
  if (!qword_1EB141ED8)
  {
    sub_1A47A0C98(255);
    sub_1A479ABF0(&qword_1EB141EE0, sub_1A41278A0, sub_1A3D6E520, sub_1A3E72758);
    sub_1A478EE38(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141ED8);
  }

  return result;
}

unint64_t sub_1A47A0EE0()
{
  result = qword_1EB141EE8;
  if (!qword_1EB141EE8)
  {
    sub_1A47A0CE0(255);
    sub_1A3E7E6E4();
    sub_1A478EE38(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141EE8);
  }

  return result;
}

uint64_t sub_1A47A0FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A47A1014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_97Tm()
{

  return swift_deallocObject();
}

void sub_1A47A1160(uint64_t a1)
{
  if (!qword_1EB141F18)
  {
    sub_1A47A11F4(255);
    sub_1A47A166C(255, &qword_1EB12CB28, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141F18);
    }
  }
}

void sub_1A47A11F4(uint64_t a1)
{
  if (!qword_1EB141F20)
  {
    sub_1A47A129C(255);
    sub_1A479ABF0(&qword_1EB141F48, sub_1A47A129C, sub_1A47A1438, sub_1A47A15DC);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141F20);
    }
  }
}

void sub_1A47A129C(uint64_t a1)
{
  if (!qword_1EB141F28)
  {
    sub_1A478E98C(255, &unk_1EB141F30, sub_1A41C4098, sub_1A47A1380, MEMORY[0x1E697E830]);
    sub_1A479D500(255, &qword_1EB1289C0, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141F28);
    }
  }
}

void sub_1A47A1380(uint64_t a1)
{
  if (!qword_1EB141F40)
  {
    v1 = MEMORY[0x1E697F578];
    sub_1A47A166C(255, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A478FA2C(&qword_1EB128590, &qword_1EB128580, v1);
    v2 = sub_1A5249724();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB141F40);
    }
  }
}

unint64_t sub_1A47A1438()
{
  result = qword_1EB141F50;
  if (!qword_1EB141F50)
  {
    sub_1A478E98C(255, &unk_1EB141F30, sub_1A41C4098, sub_1A47A1380, MEMORY[0x1E697E830]);
    sub_1A47A152C(v1);
    sub_1A478EE38(&qword_1EB141F58, sub_1A47A1380, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141F50);
  }

  return result;
}

unint64_t sub_1A47A152C(__n128 a1)
{
  result = qword_1EB1284B0;
  if (!qword_1EB1284B0)
  {
    sub_1A41C4098(255, a1);
    sub_1A3E43880();
    sub_1A478EE38(&qword_1EB127800, sub_1A3D6D248, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1284B0);
  }

  return result;
}

unint64_t sub_1A47A15DC()
{
  result = qword_1EB1289D0;
  if (!qword_1EB1289D0)
  {
    sub_1A479D500(255, &qword_1EB1289C0, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1289D0);
  }

  return result;
}

void sub_1A47A166C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A47A16C0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeCollectionCustomizationAction(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1A479DD88(a1, v2 + v6, v8, v9, a2);
}

void sub_1A47A1798()
{
  v3 = *(v2 + 16);
  sub_1A5249314();
  v7 = 1;
  v4 = *(v3 + 72);
  v5 = *(v3 + 64);
  v6 = v4;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A47A1A28()
{
  result = qword_1EB141F70;
  if (!qword_1EB141F70)
  {
    sub_1A479D148(255);
    sub_1A478EE38(&qword_1EB141F78, sub_1A479D184, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141F70);
  }

  return result;
}

uint64_t sub_1A47A1AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A47A1B40(uint64_t a1, uint64_t a2)
{
  sub_1A47A166C(0, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47A1BD0(uint64_t a1)
{
  sub_1A47A166C(0, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A47A1C58(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_1A478E98C(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A47A1CDC()
{
  type metadata accessor for LemonadeCollectionCustomizationTitleField(0);
  sub_1A3C48C7C(0, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  return sub_1A524B904();
}

uint64_t sub_1A47A1D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for LemonadeCollectionCustomizationView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1A47963BC(a1, v9, v6, v7);
}

unint64_t sub_1A47A1E28()
{
  result = qword_1EB141FA0;
  if (!qword_1EB141FA0)
  {
    sub_1A47900D0(255);
    sub_1A478EE38(&qword_1EB141C78, type metadata accessor for LemonadeCollectionCustomizationAction, &protocol conformance descriptor for LemonadeCollectionCustomizationAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141FA0);
  }

  return result;
}

unint64_t sub_1A47A1ED8()
{
  result = qword_1EB141FE0;
  if (!qword_1EB141FE0)
  {
    sub_1A478EA10(255);
    sub_1A47A1F88();
    sub_1A478EE38(&unk_1EB141FF8, sub_1A478EA58, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141FE0);
  }

  return result;
}

unint64_t sub_1A47A1F88()
{
  result = qword_1EB141FE8;
  if (!qword_1EB141FE8)
  {
    sub_1A4574000(255);
    sub_1A478EE38(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A478EE38(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141FE8);
  }

  return result;
}

unint64_t sub_1A47A2068()
{
  result = qword_1EB1D3020;
  if (!qword_1EB1D3020)
  {
    type metadata accessor for LemonadeCollectionCustomizationKeyAsset(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D3020);
  }

  return result;
}

unint64_t sub_1A47A20C0()
{
  result = qword_1EB142008;
  if (!qword_1EB142008)
  {
    sub_1A478E944(255);
    sub_1A47A1ED8();
    sub_1A478EE38(&qword_1EB129130, MEMORY[0x1E69C2288], MEMORY[0x1E69C2280]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142008);
  }

  return result;
}

uint64_t sub_1A47A2170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeCollectionCustomizationView(0, *(v4 + 16), *(v4 + 24), a4);
  sub_1A3C48C7C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A47A2230(uint64_t a1, uint64_t a2)
{
  sub_1A479A5DC(0, &qword_1EB141960, sub_1A3E42C88, MEMORY[0x1E6981748]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A47A22B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A47A233C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LemonadeCollectionCustomizationView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_1A47A23D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A47A243C()
{
  result = qword_1EB142030;
  if (!qword_1EB142030)
  {
    sub_1A478E98C(255, &qword_1EB141F10, sub_1A47A1160, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A47A2530();
    sub_1A478EE38(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142030);
  }

  return result;
}

unint64_t sub_1A47A2530()
{
  result = qword_1EB142038;
  if (!qword_1EB142038)
  {
    sub_1A47A1160(255);
    sub_1A478EE38(&qword_1EB142040, sub_1A47A11F4, MEMORY[0x1E6981880]);
    sub_1A3E004D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142038);
  }

  return result;
}

uint64_t sub_1A47A25E4()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1D3038);
  __swift_project_value_buffer(v6, qword_1EB1D3038);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static AddAssetsToAlbumIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1D3030 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1D3038);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A47A28D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D3030 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D3038);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A47A2994(uint64_t a1, double a2)
{
  if (qword_1EB1D3030 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D3038);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}

uint64_t static AddAssetsToAlbumIntent.parameterSummary.getter()
{
  sub_1A47A4C14(0, &qword_1EB142048, sub_1A47A2C84, &type metadata for AddAssetsToAlbumIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A47A4C14(0, &qword_1EB142058, sub_1A47A2C84, &type metadata for AddAssetsToAlbumIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A47A2C84();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A47A2CFC(0);
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A47A2D80(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A47A2C84()
{
  result = qword_1EB142050;
  if (!qword_1EB142050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142050);
  }

  return result;
}

void sub_1A47A2CFC(uint64_t a1)
{
  if (!qword_1EB142060)
  {
    sub_1A3F57E84(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142060);
    }
  }
}

void sub_1A47A2D80(uint64_t a1)
{
  if (!qword_1EB142068)
  {
    sub_1A47A4C14(255, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142068);
    }
  }
}

uint64_t AddAssetsToAlbumIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v38 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v37 = v29 - v4;
  v41 = sub_1A5240334();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = v29 - v9;
  v10 = sub_1A5240BA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A5240BB4();
  v32 = v16;
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v29[1] = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F57E84(0);
  v31 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v11 + 104);
  v30 = v10;
  v20(v13, v19, v10);
  v29[2] = v11 + 104;
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v13, v19, v10);
  v21 = v39;
  sub_1A5240BC4();
  v22 = *(v43 + 56);
  v43 += 56;
  v33 = v22;
  v22(v21, 0, 1, v16);
  *&v45 = 0;
  sub_1A5240174();
  v34 = *MEMORY[0x1E695A500];
  v23 = *(v44 + 104);
  v44 += 104;
  v35 = v23;
  v23(v40);
  sub_1A3F587A8();
  sub_1A3F58824();
  *v42 = sub_1A5240034();
  sub_1A47A4C14(0, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A1A0]);
  sub_1A524C5B4();
  sub_1A5241244();
  v24 = v30;
  v20(v13, v19, v30);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v13, v19, v24);
  v25 = v39;
  sub_1A5240BC4();
  v33(v25, 0, 1, v32);
  v26 = sub_1A523FDB4();
  v45 = 0u;
  v46 = 0u;
  v27 = *(*(v26 - 8) + 56);
  v27(v37, 1, 1, v26);
  v27(v38, 1, 1, v26);
  v35(v40, v34, v41);
  sub_1A3DB3554();
  result = sub_1A523FFB4();
  v42[1] = result;
  return result;
}

uint64_t AddAssetsToAlbumIntent.perform()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = *v1;
  sub_1A524CC54();
  *(v2 + 128) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 136) = v4;
  *(v2 + 144) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A47A3620, v4, v3);
}

uint64_t sub_1A47A3620()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  sub_1A523FF44();
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  AlbumEntity.albumType.getter((v0 + 184));

  *(v0 + 185) = *(v0 + 184);
  v7 = AlbumEntity.CollectionType.rawValue.getter();
  v9 = v8;
  *(v0 + 152) = v8;
  sub_1A523FF44();
  v10 = *(*(v0 + 96) + 16);

  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  sub_1A47A2C84();
  *v12 = v0;
  v12[1] = sub_1A47A37BC;
  v13 = *(v0 + 104);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v13, 0, 0, v7, v9, v10, 0, &unk_1A535FFC0);
}

uint64_t sub_1A47A37BC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1A47A3974;
  }

  else
  {
    v5 = sub_1A47A3910;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47A3910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47A3974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47A3A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  sub_1A524CC54();
  v3[16] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[17] = v5;
  v3[18] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A47A3ACC, v5, v4);
}

uint64_t sub_1A47A3ACC()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  sub_1A523FF44();
  v3 = *(v0 + 96);
  *(v0 + 152) = v3;
  sub_1A523FF44();
  v4 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v4;
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  sub_1A47A2C84();
  v5 = AppIntent.px_intentName.getter(&type metadata for AddAssetsToAlbumIntent);
  v7 = v6;
  *(v0 + 160) = v6;
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_1A47A3BEC;

  return sub_1A47A4294(v3, (v0 + 48), v5, v7);
}

uint64_t sub_1A47A3BEC()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1A47A3974;
  }

  else
  {
    v5 = sub_1A47A3DB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47A3DB0()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47A3E20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A47A3A30(a1, v5, v4);
}

uint64_t sub_1A47A3ECC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A47A4294(a1, a2, a3, a4);
}

void (*AddAssetsToAlbumIntent.assets.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

double sub_1A47A4040@<D0>(_OWORD *a1@<X8>)
{
  sub_1A523FF44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_1A47A407C(id *a1)
{
  v1 = *a1;

  sub_1A523FF54();

  return result;
}

void (*AddAssetsToAlbumIntent.album.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A47A41BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return AddAssetsToAlbumIntent.perform()(a1);
}

uint64_t sub_1A47A4258(uint64_t a1)
{
  v2 = sub_1A47A2C84();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A47A4294(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  v6 = sub_1A5246F24();
  *(v4 + 40) = v6;
  *(v4 + 48) = *(v6 - 8);
  *(v4 + 56) = swift_task_alloc();
  v7 = a2[1];
  *(v4 + 64) = *a2;
  *(v4 + 80) = v7;
  sub_1A524CC54();
  *(v4 + 96) = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  *(v4 + 104) = v9;
  *(v4 + 112) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A47A4398, v9, v8);
}

void sub_1A47A4398()
{
  v1 = v0;
  if (!(PXAppIntentsAssets(for:)(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47A4898()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A47A4A30;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A47A49B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47A49B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47A4A30()
{
  v1 = v0[15];
  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

unint64_t sub_1A47A4AAC()
{
  result = qword_1EB142070;
  if (!qword_1EB142070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142070);
  }

  return result;
}

unint64_t sub_1A47A4B04()
{
  result = qword_1EB142078;
  if (!qword_1EB142078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142078);
  }

  return result;
}

unint64_t sub_1A47A4B84()
{
  result = qword_1EB142080;
  if (!qword_1EB142080)
  {
    sub_1A47A4C14(255, &qword_1EB142088, sub_1A47A2C84, &type metadata for AddAssetsToAlbumIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142080);
  }

  return result;
}

void sub_1A47A4C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void (*sub_1A47A4C7C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3FC589C;
}

uint64_t sub_1A47A4D0C()
{
  swift_getKeyPath();
  (*(*v0 + 312))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A47A4D9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1A47A4DE8(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  v4 = *a1;
  return v3(v2);
}

void sub_1A47A4E40(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      sub_1A3D63AC0(0, v4);
      v6 = v5;
      v7 = sub_1A524DBF4();

      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 320))(v9);
}

uint64_t (*sub_1A47A4FF4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 312))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30PhotosViewHeaderAccessoryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47A5120();
  sub_1A52415F4();

  v4[7] = sub_1A47A4C7C(v4);
  return sub_1A47A5114;
}

unint64_t sub_1A47A5120()
{
  result = qword_1EB125EA8;
  if (!qword_1EB125EA8)
  {
    type metadata accessor for PhotosViewHeaderAccessoryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125EA8);
  }

  return result;
}

uint64_t type metadata accessor for PhotosViewHeaderAccessoryModel(uint64_t a1)
{
  result = qword_1EB172590;
  if (!qword_1EB172590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A47A51C4()
{
  swift_getKeyPath();
  (*(*v0 + 312))();

  swift_beginAccess();
  return v0[3];
}

uint64_t sub_1A47A5248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

double sub_1A47A52F0(uint64_t a1, char a2)
{
  swift_beginAccess();
  if ((*(v2 + 32) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 24);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 24) = *&a1;
    *(v2 + 32) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v2 + 320))(v7);

  return result;
}

void sub_1A47A541C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
}

uint64_t (*sub_1A47A5474(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 312))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30PhotosViewHeaderAccessoryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47A5120();
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4(v4);
  return sub_1A47A5594;
}

uint64_t sub_1A47A55A0()
{
  swift_getKeyPath();
  (*(*v0 + 312))();

  swift_beginAccess();
  return v0[5];
}

double sub_1A47A5624(uint64_t a1, char a2)
{
  swift_beginAccess();
  if ((*(v2 + 48) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 40);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&a1;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v2 + 320))(v7);

  return result;
}

void sub_1A47A5750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
}

uint64_t (*sub_1A47A57A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 312))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30PhotosViewHeaderAccessoryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47A5120();
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C(v4);
  return sub_1A47A58C8;
}

uint64_t sub_1A47A58D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 312))();

  swift_beginAccess();
  return sub_1A41810E4(v1 + 56, a1);
}

uint64_t sub_1A47A5A1C(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 320))();

  return sub_1A47A6220(a1, sub_1A4181148);
}

uint64_t sub_1A47A5AD8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  sub_1A47A6280(v1, v2 + 56);
  return swift_endAccess();
}

uint64_t (*sub_1A47A5B38(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 312))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30PhotosViewHeaderAccessoryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47A5120();
  sub_1A52415F4();

  v4[7] = sub_1A42664C8(v4);
  return sub_1A47A5C58;
}

uint64_t sub_1A47A5D44()
{
  MEMORY[0x1A590F020](v0 + 16);
  sub_1A47A6220(v0 + 56, sub_1A4181148);
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosViewHeaderAccessoryModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A47A5E04()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0x405E000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A47A5E88()
{
  v0 = sub_1A47A5F64();
  v1 = *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo17PXPhotosViewModelP33_3919CC01ADE8813F95BB3011C5F2686B14AssociatedData_headerAccessoryModel];

  if (!v1)
  {
    type metadata accessor for PhotosViewHeaderAccessoryModel(0);
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v1 + 24) = 0;
    *(v1 + 32) = 1;
    *(v1 + 40) = 0x405E000000000000;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0;
    sub_1A5241604();
    v2 = sub_1A47A5F64();
    *&v2[OBJC_IVAR____TtCE12PhotosUICoreCSo17PXPhotosViewModelP33_3919CC01ADE8813F95BB3011C5F2686B14AssociatedData_headerAccessoryModel] = v1;
  }

  return v1;
}

id sub_1A47A5F64()
{
  if (qword_1EB15A180 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB15A188;
  if (objc_getAssociatedObject(v0, qword_1EB15A188))
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_1A47A6220(v7, sub_1A3C35B84);
    goto LABEL_10;
  }

  _s14AssociatedDataCMa_10();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v2 = [objc_allocWithZone(_s14AssociatedDataCMa_10()) init];
    objc_setAssociatedObject(v0, v1, v2, 1);
    return v2;
  }

  return v4;
}

uint64_t sub_1A47A6094(uint64_t a1)
{
  result = sub_1A5241614();
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

id sub_1A47A6190(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s14AssociatedDataCMa_10();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A47A61F8()
{
  result = swift_slowAlloc();
  qword_1EB15A188 = result;
  return result;
}

uint64_t sub_1A47A6220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A47A6280(uint64_t a1, uint64_t a2)
{
  sub_1A4181148(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47A62E4(unsigned __int8 a1)
{
  v1 = a1;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524A274();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 == 2)
  {
    (*(v6 + 104))(v9, *MEMORY[0x1E6980EF8], v5, v7);
    v10 = sub_1A524A154();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_1A524A184();
    v11 = sub_1A524A1C4();
    sub_1A441183C(v4);
    (*(v6 + 8))(v9, v5);
    return v11;
  }

  else
  {

    return sub_1A524A0E4();
  }
}

uint64_t sub_1A47A64B0(uint64_t a1, __n128 a2)
{
  if (a1 == 2)
  {
    return sub_1A524B484();
  }

  else
  {
    return sub_1A524B3C4();
  }
}

unint64_t sub_1A47A64D4()
{
  result = qword_1EB142098;
  if (!qword_1EB142098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142098);
  }

  return result;
}

unint64_t sub_1A47A652C()
{
  result = qword_1EB1420A0;
  if (!qword_1EB1420A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1420A0);
  }

  return result;
}

id sub_1A47A6594()
{
  v0 = sub_1A52473D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for MapOptionsBlurredBackgroundView();
  v1 = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  if (MEMORY[0x1A590D320]())
  {
    v2 = v1;
    sub_1A52473C4();
    v4[3] = sub_1A52473E4();
    v4[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v4);
    sub_1A52473F4();
    sub_1A524DB24();
  }

  else
  {
    [v1 setAlpha_];
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

id sub_1A47A6698()
{
  v0 = sub_1A52473D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = [objc_opt_self() separatorColor];
  [v1 setBackgroundColor_];

  if (MEMORY[0x1A590D320]())
  {
    sub_1A52473C4();
    v4[3] = sub_1A52473E4();
    v4[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v4);
    sub_1A52473F4();
    sub_1A524DB24();
  }

  else
  {
    [v1 setAlpha_];
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

id sub_1A47A6958()
{
  v0 = sub_1A52473D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  if (MEMORY[0x1A590D320]())
  {
    v2 = v1;
    sub_1A52473C4();
    v7[3] = sub_1A52473E4();
    v7[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v7);
    sub_1A52473F4();
    sub_1A524DB24();
  }

  else
  {
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 clearColor];
    [v4 setBackgroundColor_];
  }

  [v1 setAlwaysBounceVertical_];
  [v1 setContentInsetAdjustmentBehavior_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

uint64_t sub_1A47A6ACC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A47A6B94(uint64_t *a1))(void **a1, char a2)
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
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_viewModel);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_delegate;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A47A6C3C;
}

void sub_1A47A6C3C(void **a1, char a2)
{
  v2 = *a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  free(v2);
}

uint64_t (*sub_1A47A6CFC(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_viewModel);
  *a1 = sub_1A4951D80();
  return sub_1A47A6D50;
}

void sub_1A47A6D74()
{
  v1 = v0;
  v12 = sub_1A5249F84();
  v9 = *(v12 - 8);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MapOptionsChooseMapView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8[2] = v8 - v5;
  v6 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerBlurredBackgroundView;
  *(v1 + v6) = sub_1A47A6594();
  v7 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerViewSeparator;
  *(v1 + v7) = sub_1A47A6698();
  sub_1A47A67D4();
}

void sub_1A47A72A0(uint64_t a1)
{
  if (!qword_1EB120888)
  {
    type metadata accessor for Key(255);
    sub_1A3C52C70(255, &qword_1EB12B160, 0x1E69E58C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120888);
    }
  }
}

void sub_1A47A7320(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3FDA25C();
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47A76C4(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MapOptionsChooseMapContainerViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_contentLayoutGuideTopConstraint];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerLabel];
    v4 = v2;
    [v3 frame];
    v6 = v5;
    [v3 frame];
    [v4 setConstant_];
  }
}

id sub_1A47A77B4()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  [result setPreservesSuperviewLayoutMargins_];

  v3 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollView];
  v4 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollViewContentView;
  [v3 addSubview_];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  [result addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  [result addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  [result addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  [result addSubview_];

  [*&v0[v4] addLayoutGuide_];
  v9 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_chooseMapViewController];
  result = [v9 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v11 = [objc_opt_self() clearColor];
  [v10 setBackgroundColor_];

  [v0 addChildViewController_];
  v12 = *&v0[v4];
  result = [v9 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = result;
  [v12 addSubview_];

  return [v9 didMoveToParentViewController_];
}

void sub_1A47A7A20()
{
  sub_1A3C2E3D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A5324BC0;
  v2 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollViewContentView;
  v3 = [*&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollViewContentView] topAnchor];
  v4 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [*&v0[v2] bottomAnchor];
  v8 = [v4 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*&v0[v2] leadingAnchor];
  v11 = [v4 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v2] trailingAnchor];
  v14 = [v4 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  v16 = [v4 topAnchor];
  v17 = [v0 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v1 + 64) = v20;
  v21 = [v4 leadingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v1 + 72) = v25;
  v26 = [v4 trailingAnchor];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v1 + 80) = v30;
  v31 = [v4 bottomAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v33 = v32;
  v34 = objc_opt_self();
  v35 = [v33 bottomAnchor];

  v36 = [v31 constraintEqualToAnchor_];
  *(v1 + 88) = v36;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v37 = sub_1A524CA14();

  [v34 activateConstraints_];

  v38 = [*&v0[v2] widthAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v40 = v39;
  v41 = [v39 widthAnchor];

  v42 = [v38 constraintEqualToAnchor_];
  LODWORD(v43) = 1132068864;
  [v42 setPriority_];
  v44 = [*&v0[v2] heightAnchor];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v46 = v45;
  v47 = [v45 heightAnchor];

  v48 = [v44 constraintLessThanOrEqualToAnchor_];
  LODWORD(v49) = 1132068864;
  [v48 setPriority_];
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1A52F9DE0;
  *(v50 + 32) = v42;
  *(v50 + 40) = v48;
  v51 = v42;
  v52 = v48;
  v53 = sub_1A524CA14();

  [v34 activateConstraints_];
}

void sub_1A47A8034()
{
  v1 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerLabel];
  v2 = [v1 trailingAnchor];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 layoutMarginsGuide];

  v6 = [v5 trailingAnchor];
  v7 = [v2 constraintEqualToAnchor:v6 constant:-40.0];

  LODWORD(v8) = 1144750080;
  [v7 setPriority_];
  sub_1A3C2E3D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A531C940;
  v10 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerBlurredBackgroundView];
  v11 = [v10 topAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v15;
  v16 = [v10 leadingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  v65 = v7;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v9 + 40) = v20;
  v21 = [v10 trailingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 trailingAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v9 + 48) = v26;
  v27 = [v10 bottomAnchor];
  v28 = [v1 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:18.0];

  *(v9 + 56) = v29;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v30 = sub_1A524CA14();

  [v24 activateConstraints_];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1A531C940;
  v32 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerViewSeparator];
  v33 = [v32 topAnchor];
  v34 = [v10 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v31 + 32) = v35;
  v36 = [v32 leadingAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v38 = v37;
  v39 = [v37 leadingAnchor];

  v40 = [v36 constraintEqualToAnchor_];
  *(v31 + 40) = v40;
  v41 = [v32 trailingAnchor];
  v42 = [v0 view];
  if (!v42)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v43 = v42;
  v44 = [v42 trailingAnchor];

  v45 = [v41 constraintEqualToAnchor_];
  *(v31 + 48) = v45;
  v46 = [v32 heightAnchor];
  v47 = [v0 px_screen];
  [v47 scale];
  v49 = v48;

  v50 = [v46 constraintEqualToConstant_];
  *(v31 + 56) = v50;
  v51 = sub_1A524CA14();

  [v24 activateConstraints_];

  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1A52FF960;
  v53 = [v1 topAnchor];
  v54 = [v0 view];
  if (!v54)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v55 = v54;
  v56 = [v54 topAnchor];

  v57 = [v53 constraintEqualToAnchor:v56 constant:19.0];
  *(v52 + 32) = v57;
  v58 = [v1 leadingAnchor];
  v59 = [v0 view];
  if (!v59)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v60 = v59;
  v61 = [v59 layoutMarginsGuide];

  v62 = [v61 leadingAnchor];
  v63 = [v58 constraintEqualToAnchor_];

  *(v52 + 40) = v63;
  *(v52 + 48) = v65;
  v64 = v65;
  v66 = sub_1A524CA14();

  [v24 activateConstraints_];
}

void sub_1A47A87C0()
{
  v1 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_contentLayoutGuide];
  v2 = [v1 topAnchor];
  v3 = [*&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollViewContentView] topAnchor];
  v4 = [v2 constraintEqualToAnchor_];

  v5 = [v1 trailingAnchor];
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 layoutMarginsGuide];

  v9 = [v8 trailingAnchor];
  v10 = [v5 constraintEqualToAnchor:v9 constant:-19.0];

  LODWORD(v11) = 1144750080;
  [v10 setPriority_];
  sub_1A3C2E3D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52FF960;
  *(v12 + 32) = v4;
  *(v12 + 40) = v10;
  v13 = v4;
  v14 = v10;
  v15 = [v1 leadingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v19 = [v17 layoutMarginsGuide];

  v20 = [v19 leadingAnchor];
  v21 = [v15 constraintEqualToAnchor_];

  *(v12 + 48) = v21;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v22 = sub_1A524CA14();

  [v18 activateConstraints_];

  v23 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_contentLayoutGuideTopConstraint];
  *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_contentLayoutGuideTopConstraint] = v13;
}

void sub_1A47A8AA8()
{
  v1 = [*&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_chooseMapViewController] view];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1A3C2E3D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A531C940;
  v4 = [v2 topAnchor];
  v5 = [*&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_contentLayoutGuide] bottomAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:25.0];

  *(v3 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v8 layoutMarginsGuide];

  v11 = [v10 leadingAnchor];
  v12 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v15 layoutMarginsGuide];

  v18 = [v17 trailingAnchor];
  v19 = [v13 constraintEqualToAnchor_];

  *(v3 + 48) = v19;
  v20 = [v2 bottomAnchor];
  v21 = [*&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollViewContentView] bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v3 + 56) = v22;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v23 = sub_1A524CA14();

  [v16 activateConstraints_];
}

id sub_1A47A8E3C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapOptionsChooseMapContainerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1A47A8FDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A47A947C(0);
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1A3C8BF74(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A47A90C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapOptionsChooseMapView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A47A912C(uint64_t a1)
{
  if (!qword_1EB1420F8)
  {
    type metadata accessor for MapOptionsChooseMapView(255);
    sub_1A47A91C0(&qword_1EB142100, type metadata accessor for MapOptionsChooseMapView, &unk_1A533319C);
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1420F8);
    }
  }
}

uint64_t sub_1A47A91C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A47A9208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A47A926C()
{
  result = qword_1EB142128;
  if (!qword_1EB142128)
  {
    sub_1A47A9208(255, &qword_1EB142120, MEMORY[0x1E697CC60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142128);
  }

  return result;
}

uint64_t sub_1A47A9318(uint64_t a1)
{
  v2 = type metadata accessor for MapOptionsChooseMapView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A47A9374()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerBlurredBackgroundView;
  *(v0 + v1) = sub_1A47A6594();
  v2 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerViewSeparator;
  *(v0 + v2) = sub_1A47A6698();
  sub_1A47A67D4();
}

void sub_1A47A947C(uint64_t a1)
{
  if (!qword_1EB1203F0)
  {
    type metadata accessor for Key(255);
    sub_1A3C52C70(255, &qword_1EB12B160, 0x1E69E58C0);
    sub_1A47A91C0(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1203F0);
    }
  }
}

__n128 sub_1A47A9538@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *a8 = a1;
  *(a8 + 8) = a4;
  result = *a5;
  v9 = *(a5 + 16);
  *(a8 + 32) = *a5;
  *(a8 + 48) = v9;
  *(a8 + 64) = *(a5 + 32);
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  return result;
}

uint64_t LemonadePhotosGridConfiguration.hash(into:)(uint64_t a1)
{
  sub_1A524DC04();
  v2 = *(v1 + 8);
  sub_1A524ECB4();
  if (v2)
  {
    v3 = v2;
    sub_1A524DC04();
  }

  return sub_1A524ECB4();
}

uint64_t LemonadePhotosGridConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A524DC04();
  v1 = *(v0 + 8);
  sub_1A524ECB4();
  if (v1)
  {
    v2 = v1;
    sub_1A524DC04();
  }

  sub_1A524ECB4();
  return sub_1A524ECE4();
}

uint64_t sub_1A47A967C(uint64_t a1)
{
  sub_1A524DC04();
  v2 = *(v1 + 8);
  sub_1A524ECB4();
  if (v2)
  {
    v3 = v2;
    sub_1A524DC04();
  }

  return sub_1A524ECB4();
}

uint64_t sub_1A47A96FC(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524DC04();
  v2 = *(v1 + 8);
  sub_1A524ECB4();
  if (v2)
  {
    v3 = v2;
    sub_1A524DC04();
  }

  sub_1A524ECB4();
  return sub_1A524ECE4();
}

id sub_1A47A9798(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 72);
  v6 = v5;
  ShouldReverseSortOrderInDetails = PHCollection.px_containerShouldReverseSortOrderInDetailsView.getter();
  v8 = sub_1A3C6E9EC();
  v9 = sub_1A3C5A374();
  v10 = sub_1A3C30368();
  v11 = sub_1A3C5A374();
  v12 = sub_1A3C5A374();
  v13 = sub_1A3C5A374();
  PhotosViewConfigurationContext.init(selectionCoordinator:loadingStatusManager:basePredicate:initialFilterPredicate:sortDescriptors:contentStartingPosition:noContentPlaceholderType:shouldReverseOrder:curationContext:isForSmartAlbumAllPhotosCollection:allowsSwipeToSelect:isVerySlowFetch:wantsNumberedSelectionStyle:startsInSelectMode:photosViewDelegate:pickerClientBundleIdentifier:)(v5, 0, 0, 0, 0, 2, v8, ShouldReverseSortOrderInDetails & 1, v38, 1, v9 & 1, v10 & 1, v11 & 1, v12 & 1, v13 & 1, 0, 0, 0);
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = *(a1 + 8);
    goto LABEL_11;
  }

  if ([v4 px_isImportHistoryCollection])
  {
    v16 = sub_1A4728C68(v4);
LABEL_10:
    v15 = v16;
    goto LABEL_11;
  }

  if ([v4 px_isAllLibraryDuplicatesSmartAlbum])
  {
    v17 = PXDeduplicationPhotosViewConfiguration(v4, v38[0], v39);
LABEL_7:
    v16 = v17;
    goto LABEL_10;
  }

  if ([v4 px_isRecoveredSmartAlbum])
  {
    v16 = sub_1A4728E00(v4);
    goto LABEL_10;
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = *(a1 + 24);

    v25 = v22(v24);
    v15 = PXPhotosViewConfigurationForAssetCollectionWithExistingAssetsFetchResult(v4, v25, 0, v38[0], v40);
    sub_1A3C784D4(v22, v23);
  }

  else
  {
    if (!a2 || (v26 = *(*(a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40)) == 0)
    {
      v17 = PXPhotosViewConfigurationForAssetCollectionWithReverseSortOrder(v4, 0, v39, v40, v38[0]);
      goto LABEL_7;
    }

    v27 = MEMORY[0x1E69E7D40];
    v28 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x258);
    v29 = v26;
    v30 = v28();
    v31 = v39;
    v32 = v40;
    v33 = v38[0];
    v34 = (*((*v27 & *v29) + 0x318))();
    v15 = PXPhotosViewConfigurationForImagePickerWithAssetCollection(v4, v30, v31, v32, v33, v34 & 1);
  }

LABEL_11:
  sub_1A3F1B4DC(a1 + 32, &v35, &qword_1EB128D10, &qword_1EB128D20, off_1E7721088);
  if (v36)
  {
    sub_1A3C34460(&v35, v37);
    sub_1A3C341C8(v37, &v35);
    v18 = v14;
    sub_1A524D864();
  }

  v19 = v14;
  sub_1A3EA8D18(&v35, &qword_1EB128D10, &qword_1EB128D20, off_1E7721088);
  v20 = [v15 photosAppConfiguration];
  [v20 setSearchQueryMatchInfo_];

  [v15 setContentStartingPosition_];
  sub_1A42EC8EC(v38);
  return v15;
}

id sub_1A47A9B44(void **a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a1;
  result = sub_1A472ED80(*a1);
  if (!result)
  {
    v8 = sub_1A47A9798(a1, a3);
    if (!a3 || !sub_1A4654080())
    {
      v17 = sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      v18 = sub_1A47AC3BC();
      v16[0] = v6;
      v15 = v5;
      v14 = 3;
      v13 = v6;
      PXPhotosViewConfiguration.adjustedForLemonadePhotosGrid(item:navigationType:navigationContext:initialPositionDetent:disallowedBehaviors:presentationEnvironment:)(v16, &v15, a3, &v14, 0, 0);
    }

    v17 = sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
    v18 = sub_1A47AC3BC();
    v16[0] = v6;
    v15 = 3;
    v9 = v6;
    v10 = _sSo25PXPhotosViewConfigurationC12PhotosUICoreE025adjustedForLemonadePickerD4Grid4item17navigationContext21initialPositionDetent19disallowedBehaviors23presentationEnvironmentAB0D12UIFoundation0D4Item_pSg_AC0h10NavigationM0CSgAC0h7DetailsB21ScrollDetentsProviderC0P10IdentifierOSgSo0abc7AllowedR0VSo014PXPresentationT0_pSgtF_0(v16, a3, &v15, 0);
    sub_1A3EA8D18(v16, &qword_1EB128C80, &qword_1EB128C90, off_1E77211B8);
    v11 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];
    v12 = [v9 localizedTitle];
    [v11 setTitle_];

    return v11;
  }

  return result;
}

void PXPhotosViewConfiguration.adjustedForLemonadePhotosGrid(item:navigationType:navigationContext:initialPositionDetent:disallowedBehaviors:presentationEnvironment:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a1;
  sub_1A5245BA4();
}

__n128 sub_1A47AB4A8@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v5;
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 88) = v4;
  *(a4 + 96) = a3;
  return result;
}

uint64_t sub_1A47AB50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47ACD20();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A47AB570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47ACD20();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A47AB5D4(uint64_t a1)
{
  sub_1A47ACD20();
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A47AB5FC(void *a1)
{
  v1 = PXSoftLinkedProtoPhotosViewBannerController(a1);

  return v1;
}

uint64_t sub_1A47AB780()
{
  v0 = PHObject.value.getter();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v1;
  if (v1)
  {
    if ([v1 px_isPrivacySensitiveAlbum] & 1) != 0 || objc_msgSend(v2, sel_px_isAllLibraryDuplicatesSmartAlbum) || (objc_msgSend(v2, sel_px_isDuplicatesAlbum) & 1) != 0 || (objc_msgSend(v2, sel_px_isImportHistoryCollection) & 1) != 0 || (objc_msgSend(v2, sel_px_isSharedLibrarySharingSuggestion))
    {
      v2 = 1;
    }

    else
    {
      v2 = [v2 px_isSharedLibrarySharingSuggestionsSmartAlbum];
    }
  }

  return v2;
}

uint64_t sub_1A47AB850(SEL *a1)
{
  v2 = PHObject.value.getter();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 *a1];

    return v4 ^ 1;
  }

  else
  {

    return 1;
  }
}

id sub_1A47AB8C0(SEL *a1)
{
  v2 = PHObject.value.getter();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 *a1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1A47ABAA4(void *a1)
{
  v1 = sub_1A47ABB84(a1);
  v2 = PHObject.value.getter();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = v3;
  if (v3)
  {
    if ([v3 px_isPrivacySensitiveAlbum] & 1) != 0 || (objc_msgSend(v4, sel_px_isAllLibraryDuplicatesSmartAlbum) & 1) != 0 || (objc_msgSend(v4, sel_px_isDuplicatesAlbum) & 1) != 0 || (objc_msgSend(v4, sel_px_isImportHistoryCollection) & 1) != 0 || (objc_msgSend(v4, sel_px_isSharedLibrarySharingSuggestion))
    {
      v4 = 1;
    }

    else
    {
      v4 = [v4 px_isSharedLibrarySharingSuggestionsSmartAlbum];
    }
  }

  return v4;
}

uint64_t sub_1A47ABB84(void *a1)
{
  v29 = a1[4];
  v28 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + 24);
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v24 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  v19 = *(v13 + 16);
  v25 = v20;
  v19(&v24 - v17, v16);
  v21 = (*(v13 + 88))(v18, a1);
  if (v21 == *off_1E7720FE8)
  {
    (*(v13 + 96))(v18, a1);
    (*(v9 + 32))(v11, v18, v8);
    sub_1A5246234();
  }

  if (v21 == *off_1E7720FF8)
  {
    (*(v13 + 96))(v18, a1);
    (*(v26 + 32))(v6, v18, v27);
    sub_1A5246234();
  }

  if (v21 == *off_1E7720FF0)
  {
    (*(v13 + 96))(v18, a1);
    (*(v28 + 32))(v3, v18, v29);
    sub_1A5246234();
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1A524E404();

  v30 = 0xD00000000000001ALL;
  v31 = 0x80000001A53BD470;
  (v19)(v24, v25, a1);
  v22 = sub_1A524C714();
  MEMORY[0x1A5907B60](v22);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A47AC004(void *a1, SEL *a2)
{
  v3 = sub_1A47ABB84(a1);
  v4 = PHObject.value.getter();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 *a2];

    return v6 ^ 1;
  }

  else
  {

    return 1;
  }
}

id sub_1A47AC080(void *a1, SEL *a2)
{
  v3 = sub_1A47ABB84(a1);
  v4 = PHObject.value.getter();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 *a2];
    v7 = v4;
    v4 = v3;
  }

  else
  {
    v6 = 0;
    v7 = v3;
  }

  return v6;
}

uint64_t sub_1A47AC200()
{
  sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
  sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1A524DC64();
  return sub_1A524D2E4();
}

uint64_t _s12PhotosUICore08LemonadeA17GridConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  if (sub_1A524DBF4())
  {
    v4 = a1[1];
    v5 = a2[1];
    if (v4)
    {
      if (v5)
      {
        sub_1A3C52C70(0, &qword_1EB126850, &off_1E7721830);
        v6 = v5;
        v7 = v4;
        v8 = sub_1A524DBF4();

        if (v8)
        {
          return (a1[2] != 0) ^ (a2[2] == 0);
        }
      }
    }

    else if (!v5)
    {
      return (a1[2] != 0) ^ (a2[2] == 0);
    }
  }

  return 0;
}

unint64_t sub_1A47AC3BC()
{
  result = qword_1EB1421A8;
  if (!qword_1EB1421A8)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0, 0x1E6978650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1421A8);
  }

  return result;
}

void *_sSo25PXPhotosViewConfigurationC12PhotosUICoreE025adjustedForLemonadePickerD4Grid4item17navigationContext21initialPositionDetent19disallowedBehaviors23presentationEnvironmentAB0D12UIFoundation0D4Item_pSg_AC0h10NavigationM0CSgAC0h7DetailsB21ScrollDetentsProviderC0P10IdentifierOSgSo0abc7AllowedR0VSo014PXPresentationT0_pSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  [v5 copy];
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &qword_1EB126850, &off_1E7721830);
  swift_dynamicCast();
  v9 = v27;
  if (a2)
  {
    v10 = *(*(a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
    if (v10)
    {
      v11 = MEMORY[0x1E69E7D40];
      v12 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x1F8);
      v13 = v10;
      if (v12())
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      v15 = [v27 setWantsNumberedSelectionStyle_];
      (*((*v11 & *v13) + 0x1E0))(v15);
      if (v16)
      {
        v17 = sub_1A524C634();
      }

      else
      {
        v17 = 0;
      }

      [v27 setPickerClientBundleIdentifier_];

      v18 = [v27 setDisableAutoPlaybackInOneUp_];
      (*((*v11 & *v13) + 0x210))(v30, v18);
      LOBYTE(v27) = v30[0];
      v25[0] = 1;
      if (static PickerMode.== infix(_:_:)(&v27, v25))
      {
        [v9 setWantsSingleRowScrollingLayout_];
        [v9 setSectionBodyStyle_];
        [v9 setContentMode_];
      }
    }
  }

  [v9 setStartsInSelectMode_];
  [v9 setLowMemoryMode_];
  [v9 setSectionBodyStyle_];
  [v9 setScrollIndicatorStyle_];
  [v9 setIgnoreFilterPredicateAssert_];
  [v9 setIgnoreFilterStateWhenNotFiltering_];
  [v9 setNavBarStyle_];
  sub_1A3F1B4DC(a1, v25, &qword_1EB128C80, &qword_1EB128C90, off_1E77211B8);
  if (!v26)
  {
    sub_1A3EA8D18(v25, &qword_1EB128C80, &qword_1EB128C90, off_1E77211B8);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    goto LABEL_19;
  }

  sub_1A3C34400(0, &qword_1EB128C90, off_1E77211B8);
  sub_1A3C34400(0, &qword_1EB12AD10, &protocol descriptor for LemonadePhotosGridItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_19;
  }

  if (!*(&v28 + 1))
  {
LABEL_19:
    sub_1A3EA8D18(&v27, &unk_1EB12D9E8, &qword_1EB12AD10, &protocol descriptor for LemonadePhotosGridItem);
    goto LABEL_20;
  }

  sub_1A3C34460(&v27, v30);
  v19 = v31;
  v20 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  if ((*(v20 + 64))(v19, v20))
  {
    [v9 setSectionBodyStyle_];
    __swift_destroy_boxed_opaque_existential_0(v30);
    goto LABEL_23;
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
LABEL_20:
  sub_1A3F1B4DC(a1, &v27, &qword_1EB128C80, &qword_1EB128C90, off_1E77211B8);
  if (*(&v28 + 1))
  {
    sub_1A3C34460(&v27, v30);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    sub_1A5246234();
  }

  sub_1A3EA8D18(&v27, &qword_1EB128C80, &qword_1EB128C90, off_1E77211B8);
  [v9 setSectionBodyStyle_];
LABEL_23:
  [v9 setAllowedBehaviors_];
  [v9 setAllowedBehaviors_];
  [v9 setAllowedBehaviors_];
  [v9 setAllowedBehaviors_];
  v22 = [v9 allowedBehaviors];
  v23 = -1;
  if ((v22 & a4) != 0)
  {
    v23 = ~a4;
  }

  [v9 setAllowedBehaviors_];
  return v9;
}

uint64_t sub_1A47ACB28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A47ACBC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

unint64_t sub_1A47ACC24()
{
  result = qword_1EB1421B0;
  if (!qword_1EB1421B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1421B0);
  }

  return result;
}

unint64_t sub_1A47ACC7C()
{
  result = qword_1EB12AD00;
  if (!qword_1EB12AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AD00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So13PHFetchResultCySo7PHAssetCGIego_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18PhotosUIFoundation0A20CollectionTitleModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1A47ACD20()
{
  result = qword_1EB1421B8;
  if (!qword_1EB1421B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1421B8);
  }

  return result;
}

uint64_t sub_1A47ACD8C()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1A47ACE0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

void sub_1A47ACEB4(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v4);
  }
}

uint64_t (*sub_1A47ACFB0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec, &unk_1A5360B70);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A47AD100;
}

uint64_t type metadata accessor for TimelineEngineSpec(uint64_t a1)
{
  result = qword_1EB1D3590;
  if (!qword_1EB1D3590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A47AD158()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47AD1DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A47AD3B4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec, &unk_1A5360B70);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4(v4);
  return sub_1A47AD504;
}

double sub_1A47AD510()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[4];
}

void sub_1A47AD634(double a1)
{
  swift_beginAccess();
  if (v1[4] == a1)
  {
    v1[4] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v4);
  }
}

uint64_t (*sub_1A47AD738(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec, &unk_1A5360B70);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8(v4);
  return sub_1A47AD888;
}

double sub_1A47AD894()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[5];
}

void sub_1A47AD9B8(double a1)
{
  swift_beginAccess();
  if (v1[5] == a1)
  {
    v1[5] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v4);
  }
}

uint64_t (*sub_1A47ADABC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec, &unk_1A5360B70);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C(v4);
  return sub_1A47ADC0C;
}

double sub_1A47ADC68()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[6];
}

void sub_1A47ADD8C(double a1)
{
  swift_beginAccess();
  if (v1[6] == a1)
  {
    v1[6] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v4);
  }
}

uint64_t (*sub_1A47ADE90(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec, &unk_1A5360B70);
  sub_1A52415F4();

  v4[7] = sub_1A47ADC18(v4);
  return sub_1A47ADFE0;
}

double sub_1A47ADFEC()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[7];
}

void sub_1A47AE110(double a1)
{
  swift_beginAccess();
  if (v1[7] == a1)
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v4);
  }
}

uint64_t (*sub_1A47AE214(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec, &unk_1A5360B70);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3FB4(v4);
  return sub_1A47AE364;
}

double sub_1A47AE370()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[8];
}

void sub_1A47AE494(double a1)
{
  swift_beginAccess();
  if (v1[8] == a1)
  {
    v1[8] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v4);
  }
}

uint64_t (*sub_1A47AE598(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec, &unk_1A5360B70);
  sub_1A52415F4();

  v4[7] = sub_1A45872A4(v4);
  return sub_1A47AE6E8;
}

double sub_1A47AE6F4()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[9];
}

void sub_1A47AE818(double a1)
{
  swift_beginAccess();
  if (v1[9] == a1)
  {
    v1[9] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v4);
  }
}

uint64_t (*sub_1A47AE91C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec, &unk_1A5360B70);
  sub_1A52415F4();

  v4[7] = sub_1A43E1604(v4);
  return sub_1A47AEA6C;
}

double sub_1A47AEA78()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[10];
}

void sub_1A47AEB9C(double a1)
{
  swift_beginAccess();
  if (v1[10] == a1)
  {
    v1[10] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v4);
  }
}

uint64_t (*sub_1A47AECA0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec, &unk_1A5360B70);
  sub_1A52415F4();

  v4[7] = sub_1A4587924(v4);
  return sub_1A47AEDF0;
}

double sub_1A47AEE4C()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[11];
}

void sub_1A47AEF70(double a1)
{
  swift_beginAccess();
  if (v1[11] == a1)
  {
    v1[11] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v4);
  }
}

uint64_t (*sub_1A47AF074(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec, &unk_1A5360B70);
  sub_1A52415F4();

  v4[7] = sub_1A47AEDFC(v4);
  return sub_1A47AF1C4;
}